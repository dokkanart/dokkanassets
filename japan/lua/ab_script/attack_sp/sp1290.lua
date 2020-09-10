--1017020:ゴワス&ザマス_神裂斬
--sp_effect_a6_00015

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
SP_01=  153357  ;-- 敵が向かってくる
SP_02=  153359  ;-- 敵を吹き飛ばす
SP_03=  153361  ;-- ザマスが気刃を出す
SP_04=  153362  ;-- ゴワスがザマスを止める
SP_05=  153364  ;-- カットイン
SP_06=  153366  ;-- ザマスが暴走
SP_07=  153368  ;-- 右手を振りかざす
SP_08=  153370  ;-- 斬撃EF
SP_09=  153371  ;-- フィニッシュ

--敵側
SP_01x= 153358  ;-- 敵が向かってくる    (敵)
SP_02x= 153360  ;-- 敵を吹き飛ばす (敵)
SP_03x= 153361  ;-- ザマスが気刃を出す   
SP_04x= 153363  ;-- ゴワスがザマスを止める (敵)
SP_05x= 153365  ;-- カットイン   (敵)
SP_06x= 153367  ;-- ザマスが暴走  (敵)
SP_07x= 153369  ;-- 右手を振りかざす    (敵)
SP_08x= 153370  ;-- 斬撃EF    
SP_09x= 153372  ;-- フィニッシュ  (敵)

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

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 溜め〜発射(148F)
------------------------------------------------------
--スタート
spep_0=0;

-- ** エフェクト等 ** --
rush = entryEffect( spep_0 + 0, SP_01,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, rush, 0, 0 , 0 );
setEffMoveKey( spep_0 + 46, rush, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_0 + 46, rush, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, rush, 0 );
setEffRotateKey( spep_0 + 46, rush, 0 );
setEffAlphaKey( spep_0 + 0, rush, 255 );
setEffAlphaKey( spep_0 + 44, rush, 255 );
setEffAlphaKey( spep_0 + 45, rush, 255 );
setEffAlphaKey( spep_0 + 46, rush, 0 );

--流線
ryusen1 = entryEffectLife( spep_0 + 0,  921, 46, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 46, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, ryusen1, 1.44, 1.31 );
setEffScaleKey( spep_0 + 46, ryusen1, 1.44, 1.31 );

setEffRotateKey( spep_0 + 0, ryusen1, -22.7 );
setEffRotateKey( spep_0 + 46, ryusen1, -22.7 );

setEffAlphaKey( spep_0 + 0, ryusen1, 255 );
setEffAlphaKey( spep_0 + 44, ryusen1, 255 );
setEffAlphaKey( spep_0 + 45, ryusen1, 255 );
setEffAlphaKey( spep_0 + 46, ryusen1, 0 );

--文字エントリー
ctbikuri = entryEffectLife( spep_0 -3 + 28,  10000, 21, 0x100, -1, 0, -229.1, 256.3 );--!!
setEffMoveKey( spep_0 -3 + 28, ctbikuri, -229.1, 256.3 , 0 );
setEffMoveKey( spep_0 -3 + 30, ctbikuri, -232.7, 260.8 , 0 );
setEffMoveKey( spep_0 -3 + 32, ctbikuri, -240.3, 259.3 , 0 );
setEffMoveKey( spep_0 -3 + 34, ctbikuri, -240.1, 263.7 , 0 );
setEffMoveKey( spep_0 -3 + 36, ctbikuri, -238.2, 263.1 , 0 );
setEffMoveKey( spep_0 -3 + 38, ctbikuri, -237.5, 265.7 , 0 );
setEffMoveKey( spep_0 -3 + 40, ctbikuri, -240.9, 261.4 , 0 );
setEffMoveKey( spep_0 -3 + 42, ctbikuri, -240.9, 265.3 , 0 );
setEffMoveKey( spep_0 -3 + 44, ctbikuri, -239.2, 264.9 , 0 );
setEffMoveKey( spep_0  + 46, ctbikuri, -238.4, 266.8 , 0 );

setEffScaleKey( spep_0 -3 + 28, ctbikuri, 0.53, 0.53 );
setEffScaleKey( spep_0 -3 + 30, ctbikuri, 0.95, 0.95 );
setEffScaleKey( spep_0 -3 + 32, ctbikuri, 1.38, 1.38 );
setEffScaleKey( spep_0 -3 + 34, ctbikuri, 1.33, 1.33 );
setEffScaleKey( spep_0 -3 + 36, ctbikuri, 1.29, 1.29 );
setEffScaleKey( spep_0 -3 + 38, ctbikuri, 1.24, 1.24 );
setEffScaleKey( spep_0 -3 + 40, ctbikuri, 1.2, 1.2 );
setEffScaleKey( spep_0 -3 + 42, ctbikuri, 1.16, 1.16 );
setEffScaleKey( spep_0  + 46, ctbikuri, 1.11, 1.11 );

setEffRotateKey( spep_0 -3 + 28, ctbikuri, -21.3 );
setEffRotateKey( spep_0 -3 + 30, ctbikuri, -21.5 );
setEffRotateKey( spep_0  + 46, ctbikuri, -21.5 );

setEffAlphaKey( spep_0 -3 + 28, ctbikuri, 255 );
setEffAlphaKey( spep_0 -3 + 42, ctbikuri, 255 );
setEffAlphaKey( spep_0 -3 + 44, ctbikuri, 170 );
setEffAlphaKey( spep_0 -3 + 46, ctbikuri, 85 );
setEffAlphaKey( spep_0  + 46, ctbikuri, 0 );


--敵の動き
setDisp(spep_0 + 18 ,1,1);

changeAnime(spep_0 + 18 ,1,103);

setMoveKey( spep_0 + 18, 1, 434.9, 229.9 , 0 );
setMoveKey( spep_0 + 20, 1, 394.8, 216.8 , 0 );
setMoveKey( spep_0 + 22, 1, 357.5, 204.5 , 0 );
setMoveKey( spep_0 + 24, 1, 323, 193.2 , 0 );
setMoveKey( spep_0 + 26, 1, 291.2, 182.8 , 0 );
setMoveKey( spep_0 + 28, 1, 262.2, 173.2 , 0 );
setMoveKey( spep_0 + 30, 1, 235.9, 164.6 , 0 );
setMoveKey( spep_0 + 32, 1, 212.4, 156.9 , 0 );
setMoveKey( spep_0 + 34, 1, 191.7, 150.1 , 0 );
setMoveKey( spep_0 + 36, 1, 173.7, 144.2 , 0 );


a=0.2;

setScaleKey( spep_0 + 18, 1, 0.84 + a , 0.84 + a  );
setScaleKey( spep_0 + 20, 1, 0.88 + a , 0.88 + a  );
setScaleKey( spep_0 + 22, 1, 0.91 + a , 0.91 + a  );
setScaleKey( spep_0 + 24, 1, 0.94 + a , 0.94 + a  );
setScaleKey( spep_0 + 26, 1, 0.97 + a , 0.97 + a  );
setScaleKey( spep_0 + 28, 1, 1 + a , 1 + a  );
setScaleKey( spep_0 + 30, 1, 1.03 + a , 1.03 + a  );
setScaleKey( spep_0 + 32, 1, 1.05 + a , 1.05 + a  );
setScaleKey( spep_0 + 34, 1, 1.07 + a , 1.07 + a  );
setScaleKey( spep_0 + 36, 1, 1.08 + a , 1.08 + a  );

setRotateKey( spep_0 + 18, 1, 0 );
setRotateKey( spep_0 + 36, 1, 0 );

--SE
SE0=playSe(  spep_0+18,  44);  --敵ダッシュ

--背景黒
entryFadeBg(  spep_0,  0,  46,  0,  0,  0,  0,  200);  --黒背景
   
---------------------------------------------------------------------------
-- 回避
---------------------------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 36; --エンドフェイズのフレーム数を置き換える

    stopSe( SP_dodge - 12, SE0, 0 );

    playSe( SP_dodge - 12, 1042 );
    
    pauseAll( SP_dodge, 67 );
    
    -- ** 敵キャラクター ** --
    
    setMoveKey( SP_dodge + 8, 1, 173.7, 144.2 , 0 );
    setMoveKey( SP_dodge + 9, 1, 173.7, 144.2 , 0 );
    setMoveKey( SP_dodge + 10, 1, 173.7, 144.2 , 0 );
    
    setScaleKey( SP_dodge + 8, 1, 1.28  , 1.28  );
    setScaleKey( SP_dodge + 9, 1, 1.28  , 1.28 );
    setScaleKey( SP_dodge + 10, 1, 1.28  , 1.28 );
    
    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );

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
    
    
---------------------------------------------------------------------------
-- 回避しなかった場合
---------------------------------------------------------------------------

setMoveKey( spep_0 + 38, 1, 158.5, 139.2 , 0 );
setMoveKey( spep_0 + 40, 1, 146.1, 135.2 , 0 );
setMoveKey( spep_0 + 42, 1, 136.4, 132 , 0 );
setMoveKey( spep_0 + 44, 1, 129.5, 129.7 , 0 );
setMoveKey( spep_0 + 45, 1, 125.4, 128.4 , 0 );
--setMoveKey( spep_0 + 49, 1, 124, 127.9 , 0 );

setScaleKey( spep_0 + 38, 1, 1.1 + a , 1.1 + a  );
setScaleKey( spep_0 + 40, 1, 1.11 + a , 1.11 + a  );
setScaleKey( spep_0 + 42, 1, 1.12 + a , 1.12 + a  );
setScaleKey( spep_0 + 45, 1, 1.12 + a , 1.12 + a  );
--setScaleKey( spep_0 + 49, 1, 1.13 + a , 1.13 + a  );

setRotateKey( spep_0 + 45, 1, 0 );

--SE
playSe(  spep_0+24,  43);  -- 瞬間移動

--次の準備
spep_1=spep_0+46;


------------------------------------------------------
--敵をはじき返す
------------------------------------------------------
-- ** エフェクト等 ** --
fly = entryEffect( spep_1 + 0, SP_02,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fly, 0, 0 , 0 );
setEffMoveKey( spep_1 + 180, fly, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, fly, 1.0, 1.0 );
setEffScaleKey( spep_1 + 180, fly, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fly, 0 );
setEffRotateKey( spep_1 + 180, fly, 0 );
setEffAlphaKey( spep_1 + 0, fly, 255 );
setEffAlphaKey( spep_1 + 180, fly, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_1 + 0,  906, 116, 0x80, -1, -100, 0, 0 );

setEffMoveKey( spep_1 + 0, shuchusen1, -100, 0 , 0 );
setEffMoveKey( spep_1 + 116, shuchusen1, -100, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen1, 1.15, 1.08 );
setEffScaleKey( spep_1 + 116, shuchusen1, 1.15, 1.08 );

setEffRotateKey( spep_1 + 0, shuchusen1, 180 );
setEffRotateKey( spep_1 + 116, shuchusen1, 180 );

setEffAlphaKey( spep_1 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 116, shuchusen1, 255 );


--流線
ryusen2 = entryEffectLife( spep_1 -3 + 120,  921, 38, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 120, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 158, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 120, ryusen2, 1.44, 1.31 );
setEffScaleKey( spep_1 -3 + 158, ryusen2, 1.44, 1.31 );

setEffRotateKey( spep_1 -3 + 120, ryusen2, -22.7 );
setEffRotateKey( spep_1 -3 + 158, ryusen2, -22.7 );

setEffAlphaKey( spep_1 -3 + 120, ryusen2, 255 );
setEffAlphaKey( spep_1 -3 + 158, ryusen2, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_1 + 156,  906, 24, 0x100, -1, 0, -167, 0 );

setEffMoveKey( spep_1 + 156, shuchusen2, 167, 0 , 0 );
setEffMoveKey( spep_1 + 180, shuchusen2, 167, 0 , 0 );

setEffScaleKey( spep_1 + 156, shuchusen2, 1.31, 1.03 );
setEffScaleKey( spep_1 + 180, shuchusen2, 1.31, 1.03 );

setEffRotateKey( spep_1 + 156, shuchusen2, 180 );
setEffRotateKey( spep_1 + 180, shuchusen2, 180 );

setEffAlphaKey( spep_1 + 156, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 180, shuchusen2, 255 );

--敵の動き
setDisp( spep_1 + 106, 1, 0 );
setDisp( spep_1 + 117, 1, 1 );
setDisp( spep_1 + 118, 1, 1 );
setDisp( spep_1 + 180, 1, 0 );

changeAnime( spep_1 + 0, 1, 118 );
changeAnime( spep_1 -3 + 20, 1, 111 );
changeAnime( spep_1 -3 + 96, 1, 107 );
changeAnime( spep_1 -3 + 120, 1, 106 );
changeAnime( spep_1 -3 + 154, 1, 117 );

setMoveKey( spep_1  + 0, 1, 243, 2.7 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 243, 2.7 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 193.2, 9.4 , 0 );
setMoveKey( spep_1 -3 + 19, 1, 137.4, 17 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 135.5, 26.5 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 135.5, 26.4 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 135.5, 26.2 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 133.2, 26.1 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 136.5, 59.2 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 140.9, 22.6 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 136.6, 50.8 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 132.5, 20.2 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 135.7, 34.9 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 139.2, 19.8 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 137.6, 23.5 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 136, 27.1 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 136.1, 19.3 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 136.2, 24.8 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 136.3, 21.8 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 136.4, 23.8 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 136.5, 21.8 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 136.6, 24.8 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 136.7, 21.8 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 136.8, 24.8 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 136.9, 21.8 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 137, 24.8 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 137.1, 21.8 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 137.2, 24.8 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 137.3, 21.8 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 137.4, 24.8 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 137.5, 21.8 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 137.6, 24.8 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 137.7, 21.8 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 137.4, 24.8 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 137.1, 21.8 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 136.7, 24.8 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 136.4, 21.8 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 136.5, 24.8 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 129.7, 21.8 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 140.8, 63.3 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 146, -17.6 , 0 );
setMoveKey( spep_1 -3 + 95, 1, 176, 60.3 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 175, 27 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 208.3, 104.5 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 249, 68 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 307.4, 133.6 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 389.7, 127 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 486.9, 199.5 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 602.2, 211.3 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 735.9, 289.5 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 888.1, 319 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 888.1, 344.1 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 888.1, 319.8 , 0 );
setMoveKey( spep_1 -3 + 119, 1, 888.1, 341.6 , 0 );
setMoveKey( spep_1 -3 + 120, 1, -490.6, -186.2 , 0 );
setMoveKey( spep_1 -3 + 122, 1, -405, -140.9 , 0 );
setMoveKey( spep_1 -3 + 124, 1, -335.9, -128.2 , 0 );
setMoveKey( spep_1 -3 + 126, 1, -278.5, -97.5 , 0 );
setMoveKey( spep_1 -3 + 128, 1, -229.9, -87 , 0 );
setMoveKey( spep_1 -3 + 130, 1, -188.1, -67.1 , 0 );
setMoveKey( spep_1 -3 + 132, 1, -151.9, -60 , 0 );
setMoveKey( spep_1 -3 + 134, 1, -120.3, -43.6 , 0 );
setMoveKey( spep_1 -3 + 136, 1, -92.6, -38.7 , 0 );
setMoveKey( spep_1 -3 + 138, 1, -68.1, -25 , 0 );
setMoveKey( spep_1 -3 + 140, 1, -46.5, -22.2 , 0 );
setMoveKey( spep_1 -3 + 142, 1, -27.4, -10.4 , 0 );
setMoveKey( spep_1 -3 + 144, 1, -10.5, -8.3 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 4.6, 0.1 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 17.8, 2.8 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 29.5, 9 , 0 );
setMoveKey( spep_1 -3 + 153, 1, 39.9, 10.7 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 150.7, 9.4 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 156.6, 10.6 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 162.1, 15.2 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 166.1, 15.4 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 170.5, 19.4 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 173.6, 19.1 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 176.7, 22.5 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 179.1, 21.7 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 181.1, 24.6 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 182.4, 23.5 , 0 );
setMoveKey( spep_1 -3 + 174, 1, 183.4, 26.2 , 0 );
setMoveKey( spep_1 -3 + 176, 1, 184.6, 25.7 , 0 );
setMoveKey( spep_1 -3 + 178, 1, 184.8, 25 , 0 );
setMoveKey( spep_1 -3 + 180, 1, 184.8, 25 , 0 );

b=0.5;
c=0.4;

setScaleKey( spep_1  + 0, 1, 1.2 +b, 1.2+b );
setScaleKey( spep_1 -3 + 14, 1, 1.2+b, 1.2+b );
setScaleKey( spep_1 -3 + 16, 1, 1.1+b, 1.1+b );
setScaleKey( spep_1 -3 + 19, 1, 0.98+b, 0.98+b );
setScaleKey( spep_1 -3 + 20, 1, 1.12+c, 1.12+c );
setScaleKey( spep_1 -3 + 54, 1, 1.12+c, 1.12+c );
setScaleKey( spep_1 -3 + 56, 1, 1.11+c, 1.11+c );
setScaleKey( spep_1 -3 + 82, 1, 1.11+c, 1.11+c );
setScaleKey( spep_1 -3 + 84, 1, 1.12+c, 1.12+c );
setScaleKey( spep_1 -3 + 90, 1, 1.12+c, 1.12+c );
setScaleKey( spep_1 -3 + 92, 1, 1.21+c, 1.21+c );
setScaleKey( spep_1 -3 + 95, 1, 1.29+c, 1.29+c );
setScaleKey( spep_1 -3 + 96, 1, 0.77-a, 0.77-a );
setScaleKey( spep_1 -3 + 98, 1, 0.82-a, 0.82-a );
setScaleKey( spep_1 -3 + 100, 1, 0.89-a, 0.89-a );
setScaleKey( spep_1 -3 + 102, 1, 1-a, 1-a );
setScaleKey( spep_1 -3 + 104, 1, 1.13-a, 1.13-a );
setScaleKey( spep_1 -3 + 106, 1, 1.3-a, 1.3-a );
setScaleKey( spep_1 -3 + 108, 1, 1.49-a, 1.49-a );
setScaleKey( spep_1 -3 + 110, 1, 1.72, 1.72 );
setScaleKey( spep_1 -3 + 112, 1, 1.97, 1.97 );
setScaleKey( spep_1 -3 + 119, 1, 1.97, 1.97 );
setScaleKey( spep_1 -3 + 120, 1, 3.35, 3.35 );
setScaleKey( spep_1 -3 + 122, 1, 3.05, 3.05 );
setScaleKey( spep_1 -3 + 124, 1, 2.8, 2.8 );
setScaleKey( spep_1 -3 + 126, 1, 2.6, 2.6 );
setScaleKey( spep_1 -3 + 128, 1, 2.43, 2.43 );
setScaleKey( spep_1 -3 + 130, 1, 2.28, 2.28 );
setScaleKey( spep_1 -3 + 132, 1, 2.15, 2.15 );
setScaleKey( spep_1 -3 + 134, 1, 2.04, 2.04 );
setScaleKey( spep_1 -3 + 136, 1, 1.94, 1.94 );
setScaleKey( spep_1 -3 + 138, 1, 1.85, 1.85 );
setScaleKey( spep_1 -3 + 140, 1, 1.78, 1.78 );
setScaleKey( spep_1 -3 + 142, 1, 1.71, 1.71 );
setScaleKey( spep_1 -3 + 144, 1, 1.65, 1.65 );
setScaleKey( spep_1 -3 + 146, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 148, 1, 1.55, 1.55 );
setScaleKey( spep_1 -3 + 150, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 153, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 154, 1, 1.21, 1.21 );
setScaleKey( spep_1 -3 + 156, 1, 1.19, 1.19 );
setScaleKey( spep_1 -3 + 158, 1, 1.17, 1.17 );
setScaleKey( spep_1 -3 + 160, 1, 1.15, 1.15 );
setScaleKey( spep_1 -3 + 162, 1, 1.14, 1.14 );
setScaleKey( spep_1 -3 + 164, 1, 1.12, 1.12 );
setScaleKey( spep_1 -3 + 166, 1, 1.11, 1.11 );
setScaleKey( spep_1 -3 + 168, 1, 1.1, 1.1 );
setScaleKey( spep_1 -3 + 170, 1, 1.1, 1.1 );
setScaleKey( spep_1 -3 + 172, 1, 1.09, 1.09 );
setScaleKey( spep_1 -3 + 174, 1, 1.08, 1.08 );
setScaleKey( spep_1 -3 + 176, 1, 1.08, 1.08 );
setScaleKey( spep_1 -3 + 178, 1, 1.07, 1.07 );
setScaleKey( spep_1  + 180, 1, 1.07, 1.07 );

setRotateKey( spep_1  + 0, 1, 0.3 );
setRotateKey( spep_1 -3 + 14, 1, 0.3 );
setRotateKey( spep_1 -3 + 16, 1, 7.3 );
setRotateKey( spep_1 -3 + 19, 1, 5.1 );

setRotateKey( spep_1 -3 + 20, 1, -20.7 );
setRotateKey( spep_1 -3 + 90, 1, -20.7 );
setRotateKey( spep_1 -3 + 92, 1, -20.4 );
setRotateKey( spep_1 -3 + 95, 1, -20 );
--setRotateKey( spep_1 -3 + 96, 1, -15.2 );

setRotateKey( spep_1 -3 + 96, 1, -60 );
setRotateKey( spep_1 -3 + 118, 1, -60 );
--setRotateKey( spep_1 -3 + 100, 1, -14.5 );
--setRotateKey( spep_1 -3 + 102, 1, -13.9 );
--setRotateKey( spep_1 -3 + 104, 1, -13.2 );
--setRotateKey( spep_1 -3 + 106, 1, -12.2 );
--setRotateKey( spep_1 -3 + 108, 1, -11.1 );
--setRotateKey( spep_1 -3 + 110, 1, -10.2 );
--setRotateKey( spep_1 -3 + 112, 1, -11.6 );
--setRotateKey( spep_1 -3 + 120, 1, -11.6 );

setRotateKey( spep_1 -3 + 120, 1, 1.4 );
setRotateKey( spep_1 -3 + 124, 1, 1.2 );
setRotateKey( spep_1 -3 + 126, 1, 1 );
setRotateKey( spep_1 -3 + 128, 1, 0.9 );
setRotateKey( spep_1 -3 + 130, 1, 0.8 );
setRotateKey( spep_1 -3 + 132, 1, 0.7 );
setRotateKey( spep_1 -3 + 134, 1, 0.6 );
setRotateKey( spep_1 -3 + 136, 1, 0.5 );
setRotateKey( spep_1 -3 + 138, 1, 0.5 );
setRotateKey( spep_1 -3 + 140, 1, 0.4 );
setRotateKey( spep_1 -3 + 142, 1, 0.4 );
setRotateKey( spep_1 -3 + 144, 1, 0.3 );
setRotateKey( spep_1 -3 + 146, 1, 0.3 );
setRotateKey( spep_1 -3 + 148, 1, 0.2 );
setRotateKey( spep_1 -3 + 154, 1, 0.2 );
setRotateKey( spep_1 -3 + 156, 1, 0.1 );
setRotateKey( spep_1 -3 + 172, 1, 0.1 );
setRotateKey( spep_1 -3 + 174, 1, 0 );
setRotateKey( spep_1 +180, 1, 0 );

--SE
playSe(  spep_1+18,  1002);  -- パンチが弾かれる
playSe(  spep_1+94,  1011);  -- 敵をはじきかえす
playSe(  spep_1+118,  44);  -- 敵をはじきかえす

--白フェード
entryFade( spep_1+172, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--背景黒
entryFadeBg(  spep_1,  0,  180,  0,  0,  0,  0,  200);  --黒背景

--次の準備
spep_2=spep_1+180;

------------------------------------------------------
-- 剣を出す
------------------------------------------------------


-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_03,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 76, tame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 76, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 76, tame, 255 );


--SE
SE1=playSe(  spep_2+2,  17);  -- 剣ができる
--stopSe( spep_2+78, SE1, 0 );

--背景黒
entryFadeBg(  spep_2,  0,  77,  0,  0,  0,  0,  255);  --黒背景

--次の準備
spep_3=spep_2+76;

------------------------------------------------------
-- ザマスの肩に手を抑える
------------------------------------------------------

-- ** エフェクト等 ** --
stop = entryEffect( spep_3 + 0, SP_04,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, stop, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, stop, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, stop, 1.0, 1.0 );
setEffScaleKey( spep_3 + 46, stop, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, stop, 0 );
setEffRotateKey( spep_3 + 46, stop, 0 );
setEffAlphaKey( spep_3 + 0, stop, 255 );
setEffAlphaKey( spep_3 + 46, stop, 255 );

--文字エントリー
ctbikkuri2 = entryEffectLife( spep_3 -3 + 6,  10000, 18, 0x100, -1, 0, -135.9, 187.2 );--!!
setEffMoveKey( spep_3 -3 + 6, ctbikkuri2, -135.9, 187.2 , 0 );
setEffMoveKey( spep_3 -3 + 8, ctbikkuri2, -141.7, 192.9 , 0 );
setEffMoveKey( spep_3 -3 + 10, ctbikkuri2, -151.3, 193.3 , 0 );
setEffMoveKey( spep_3 -3 + 12, ctbikkuri2, -151.3, 198.1 , 0 );
setEffMoveKey( spep_3 -3 + 14, ctbikkuri2, -149.7, 198 , 0 );
setEffMoveKey( spep_3 -3 + 16, ctbikkuri2, -149.4, 200.8 , 0 );
setEffMoveKey( spep_3 -3 + 18, ctbikkuri2, -152.3, 196.5 , 0 );
setEffMoveKey( spep_3 -3 + 20, ctbikkuri2, -152, 199.7 , 0 );
setEffMoveKey( spep_3 -3 + 22, ctbikkuri2, -150.2, 198.9 , 0 );
setEffMoveKey( spep_3 -3 + 24, ctbikkuri2, -149.4, 200.8 , 0 );

d=0.8;
setEffScaleKey( spep_3 -3 + 6, ctbikkuri2, 0.1 +d, 0.1 +d );
setEffScaleKey( spep_3 -3 + 8, ctbikkuri2, 0.74 +d, 0.74 +d );
setEffScaleKey( spep_3 -3 + 10, ctbikkuri2, 1.38 +d, 1.38 +d );
setEffScaleKey( spep_3 -3 + 12, ctbikkuri2, 1.29 +d, 1.29 +d );
setEffScaleKey( spep_3 -3 + 14, ctbikkuri2, 1.2 +d, 1.2 +d );
setEffScaleKey( spep_3 -3 + 16, ctbikkuri2, 1.11 +d, 1.11 +d );
setEffScaleKey( spep_3 -3 + 24, ctbikkuri2, 1.11 +d, 1.11 +d );

setEffRotateKey( spep_3 -3 + 6, ctbikkuri2, -21.3 );
setEffRotateKey( spep_3 -3 + 8, ctbikkuri2, -21.5 );
setEffRotateKey( spep_3 -3 + 24, ctbikkuri2, -21.5 );

setEffAlphaKey( spep_3 -3 + 6, ctbikkuri2, 255 );
setEffAlphaKey( spep_3 -3 + 24, ctbikkuri2, 255 )

playSe(  spep_3+20,  1007);  -- 剣ができる

--背景黒
entryFadeBg(  spep_3,  0,  46,  0,  0,  0,  0,  200);  --黒背景

--次の準備
spep_4=spep_3+46;
------------------------------------------------------
-- カットイン
------------------------------------------------------
-- ** エフェクト等 ** --
cut = entryEffect( spep_4 + 0, SP_05,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, cut, 0, 0 , 0 );
setEffMoveKey( spep_4 + 96, cut, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, cut, 1.0, 1.0 );
setEffScaleKey( spep_4 + 96, cut, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, cut, 0 );
setEffRotateKey( spep_4 + 96, cut, 0 );
setEffAlphaKey( spep_4 + 0, cut, 255 );
setEffAlphaKey( spep_4 + 96, cut, 255 );

--集中線
shuchusenx = entryEffectLife( spep_4 + 0,  906, 152, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, shuchusenx, 0, 0 , 0 );
setEffMoveKey( spep_4 + 152, shuchusenx, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusenx, 1, 1 );
setEffScaleKey( spep_4 + 152, shuchusenx, 1, 1 );

setEffRotateKey( spep_4 + 0, shuchusenx, 180 );
setEffRotateKey( spep_4 + 96, shuchusenx, 180 );

setEffAlphaKey( spep_4 + 0, shuchusenx, 255 );
setEffAlphaKey( spep_4 + 152, shuchusenx, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_4+10, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_4 +10, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_4  + 22,  190006, 72, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ

setEffShake( spep_4  + 22, ctgogo, 72, 10 );
 
setEffMoveKey( spep_4  + 22, ctgogo, -9.9, 512.8 , 0 );
setEffMoveKey( spep_4  + 94, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_4  + 22, ctgogo, 0.84, 0.84 );
setEffScaleKey( spep_4  + 86, ctgogo, 0.84, 0.84 );
setEffScaleKey( spep_4  + 88, ctgogo, 1.2, 1.2 );
setEffScaleKey( spep_4  + 90, ctgogo, 1.3, 1.3 );
setEffScaleKey( spep_4  + 92, ctgogo, 1.66, 1.66 );
setEffScaleKey( spep_4  + 94, ctgogo, 2.02, 2.02 );
 
setEffRotateKey( spep_4  + 22, ctgogo, 0 );
setEffRotateKey( spep_4  + 94, ctgogo, 0 );

setEffAlphaKey( spep_4  + 22, ctgogo, 0 );
setEffAlphaKey( spep_4  + 23, ctgogo, 255 );
setEffAlphaKey( spep_4  + 24, ctgogo, 255 );
setEffAlphaKey( spep_4  + 94, ctgogo, 255 );

--SE
playSe( spep_4 + 22, SE_04 );  --ゴゴゴ

--背景黒
entryFadeBg(  spep_4,  0,  96,  0,  0,  0,  0,  200);  --黒背景

--次の準備
spep_5=spep_4+96;

------------------------------------------------------
-- 手を振りほどく
------------------------------------------------------
-- ** エフェクト等 ** --
dash = entryEffect( spep_5 + 0, SP_06,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, dash, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, dash, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, dash, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, dash, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, dash, 0 );
setEffRotateKey( spep_5 + 56, dash, 0 );
setEffAlphaKey( spep_5 + 0, dash, 255 );
setEffAlphaKey( spep_5 + 56, dash, 255 );

--SE
playSe(  spep_5+18,  1007);  -- 手を振りほどく

--白フェード
entryFade( spep_5+48, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--背景黒
entryFadeBg(  spep_5,  0,  56,  0,  0,  0,  0,  200);  --黒背景

--次の準備
spep_6=spep_5+56;
------------------------------------------------------
-- 手をあげる
------------------------------------------------------
-- ** エフェクト等 ** --
raise_hand = entryEffect( spep_6 + 0, SP_07,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, raise_hand, 0, 0 , 0 );
setEffMoveKey( spep_6 + 86, raise_hand, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, raise_hand, 1.0, 1.0 );
setEffScaleKey( spep_6 + 86, raise_hand, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, raise_hand, 0 );
setEffRotateKey( spep_6 + 86, raise_hand, 0 );
setEffAlphaKey( spep_6 + 0, raise_hand, 255 );
setEffAlphaKey( spep_6 + 86, raise_hand, 255 );

--流線
ryusen3 = entryEffectLife( spep_6 + 0,  921, 86, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_6 + 0, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_6 + 86, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, ryusen3, 1.44, 1.31 );
setEffScaleKey( spep_6 + 86, ryusen3, 1.44, 1.31 );

setEffRotateKey( spep_6 + 0, ryusen3, -22.7 );
setEffRotateKey( spep_6 + 86, ryusen3, -22.7 );

setEffAlphaKey( spep_6 + 0, ryusen3, 255 );
setEffAlphaKey( spep_6 + 86, ryusen3, 255 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 86, 1, 0 );
changeAnime( spep_6 + 0, 1, 104 );

setShakeChara(spep_6 + 0,1,86,2);

setMoveKey( spep_6 + 0, 1, 166.1, 130.2 , 0 );
setMoveKey( spep_6 + 86, 1, 166.1, 130.2 , 0 );

setScaleKey( spep_6 + 0, 1, 1.26, 1.26 );
setScaleKey( spep_6 + 86, 1, 1.26, 1.26 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6 + 86, 1, 0 );

--SE
SE1=playSe(  spep_6+14,  63);  -- 剣ができる
stopSe( spep_6+84, SE1, 0 );

--背景黒
entryFadeBg(  spep_6,  0,  86,  0,  0,  0,  0,  200);  --黒背景

--白フェード
entryFade( spep_6+78, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_7=spep_6+86;

--------------------------------------
--カードカットイン
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_7 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_7 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_7 + 0, shuchusen3, 90, 20 );

setEffMoveKey( spep_7 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_7 + 90, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_7 + 90, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_7 + 0, shuchusen3, 0 );
setEffRotateKey( spep_7 + 90, shuchusen3, 0 );

setEffAlphaKey( spep_7 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_7 + 90, shuchusen3, 255 );

-- ** 音 ** --
playSe( spep_7 + 0, SE_05 );

-- ** エフェクト等 ** --
entryFade(spep_7+82,4,10,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_8 = spep_7 + 90;

--------------------------------------
--斬撃
--------------------------------------
-- ** エフェクト等 ** --
zangeki = entryEffect( spep_8 + 0, SP_08,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, zangeki, 0, 0 , 0 );
setEffMoveKey( spep_8 + 50, zangeki, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, zangeki, 1.0, 1.0 );
setEffScaleKey( spep_8 + 50, zangeki, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, zangeki, 0 );
setEffRotateKey( spep_8 + 50, zangeki, 0 );
setEffAlphaKey( spep_8 + 0, zangeki, 255 );
setEffAlphaKey( spep_8 + 50, zangeki, 255 );

-- ** 音 ** --
playSe( spep_8 + 6, 1032 );
 
--背景黒
entryFadeBg(  spep_8,  0,  50,  0,  0,  0,  0,  255);  --黒背景

--次の準備
spep_9 = spep_8 + 50;
--------------------------------------
--終わり
--------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_9 + 0, SP_09,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_9 + 240, finish, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_9 + 240, finish, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish, 0 );
setEffRotateKey( spep_9 + 240, finish, 0 );
setEffAlphaKey( spep_9 + 0, finish, 255 );
setEffAlphaKey( spep_9 + 240, finish, 255 );

--敵の動き
setDisp( spep_9  + 0, 1, 1 );

changeAnime( spep_9  + 0, 1, 106 );

setMoveKey( spep_9  + 0, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 30, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 32, 1, 24.1, 155.6 , 0 );
setMoveKey( spep_9 -3 + 34, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 36, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 38, 1, 24.3, 155.3 , 0 );
setMoveKey( spep_9 -3 + 40, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 42, 1, 23.7, 155 , 0 );
setMoveKey( spep_9 -3 + 44, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 46, 1, 24.8, 154.6 , 0 );
setMoveKey( spep_9 -3 + 48, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 50, 1, 23.1, 154.3 , 0 );
setMoveKey( spep_9 -3 + 52, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 54, 1, 25.4, 154 , 0 );
setMoveKey( spep_9 -3 + 56, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 58, 1, 22.5, 153.7 , 0 );
setMoveKey( spep_9 -3 + 60, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 62, 1, 26.2, 153.3 , 0 );
setMoveKey( spep_9 -3 + 64, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 66, 1, 21.9, 152.9 , 0 );
setMoveKey( spep_9 -3 + 68, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 70, 1, 26.7, 152.7 , 0 );
setMoveKey( spep_9 -3 + 72, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 74, 1, 21.3, 152.3 , 0 );
setMoveKey( spep_9 -3 + 76, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 78, 1, 27.5, 152 , 0 );
setMoveKey( spep_9 -3 + 80, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 82, 1, 20.5, 151.7 , 0 );
setMoveKey( spep_9 -3 + 84, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 86, 1, 28.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 88, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 90, 1, 20.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 92, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 94, 1, 28.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 96, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 98, 1, 20.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 100, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 102, 1, 28.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 104, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 106, 1, 20.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 108, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 110, 1, 28.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 112, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 114, 1, 20.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 116, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 118, 1, 28.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 120, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 122, 1, 20.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 124, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 126, 1, 28.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 128, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 130, 1, 20.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 132, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 134, 1, 28.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 136, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 138, 1, 20.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 140, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 142, 1, 28.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 144, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 146, 1, 20.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 148, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 150, 1, 28.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 152, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 154, 1, 20.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 156, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 158, 1, 28.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 160, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 162, 1, 20.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 164, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 166, 1, 28.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 168, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 170, 1, 20.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 172, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 174, 1, 28.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 176, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 178, 1, 20.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 180, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 182, 1, 28.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 184, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 186, 1, 20.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 188, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 190, 1, 28.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 192, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 194, 1, 20.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 196, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 198, 1, 28.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 200, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 202, 1, 20.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 204, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 206, 1, 28.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 208, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 210, 1, 20.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 212, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 214, 1, 28.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 216, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 218, 1, 20.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 220, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 222, 1, 28.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 224, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 226, 1, 20.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 228, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 230, 1, 28.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 232, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 234, 1, 20.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 236, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9  + 238, 1, 28.1, 151.7 , 0 );

setScaleKey( spep_9  + 0, 1, 1.47, 1.47 );
setScaleKey( spep_9 + 238, 1, 1.47, 1.47 );

setRotateKey( spep_9  + 0, 1, -73 );
setRotateKey( spep_9  + 238, 1, -73 );

-- ** 音 ** --
playSe( spep_9 , 8 );
SE2=playSe( spep_9+20 , 15 );
stopSe( spep_9+78, SE2, 0 );
playSe( spep_9 + 80, 1024 );
 
--背景黒
entryFadeBg(  spep_9,  0,  240,  0,  0,  0,  0,  200);  --黒背景

dealDamage(spep_9+16);
entryFade( spep_9+220, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_9 + 230 );
else 

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 溜め〜発射(148F)
------------------------------------------------------
--スタート
spep_0=0;

-- ** エフェクト等 ** --
rush = entryEffect( spep_0 + 0, SP_01x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, rush, 0, 0 , 0 );
setEffMoveKey( spep_0 + 46, rush, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_0 + 46, rush, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, rush, 0 );
setEffRotateKey( spep_0 + 46, rush, 0 );
setEffAlphaKey( spep_0 + 0, rush, 255 );
setEffAlphaKey( spep_0 + 44, rush, 255 );
setEffAlphaKey( spep_0 + 45, rush, 255 );
setEffAlphaKey( spep_0 + 46, rush, 0 );

--流線
ryusen1 = entryEffectLife( spep_0 + 0,  921, 46, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 46, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, ryusen1, 1.44, 1.31 );
setEffScaleKey( spep_0 + 46, ryusen1, 1.44, 1.31 );

setEffRotateKey( spep_0 + 0, ryusen1, -22.7 );
setEffRotateKey( spep_0 + 46, ryusen1, -22.7 );

setEffAlphaKey( spep_0 + 0, ryusen1, 255 );
setEffAlphaKey( spep_0 + 44, ryusen1, 255 );
setEffAlphaKey( spep_0 + 45, ryusen1, 255 );
setEffAlphaKey( spep_0 + 46, ryusen1, 0 );

--文字エントリー
ctbikuri = entryEffectLife( spep_0 -3 + 28,  10000, 21, 0x100, -1, 0, -229.1, 256.3 );--!!
setEffMoveKey( spep_0 -3 + 28, ctbikuri, -229.1, 256.3 , 0 );
setEffMoveKey( spep_0 -3 + 30, ctbikuri, -232.7, 260.8 , 0 );
setEffMoveKey( spep_0 -3 + 32, ctbikuri, -240.3, 259.3 , 0 );
setEffMoveKey( spep_0 -3 + 34, ctbikuri, -240.1, 263.7 , 0 );
setEffMoveKey( spep_0 -3 + 36, ctbikuri, -238.2, 263.1 , 0 );
setEffMoveKey( spep_0 -3 + 38, ctbikuri, -237.5, 265.7 , 0 );
setEffMoveKey( spep_0 -3 + 40, ctbikuri, -240.9, 261.4 , 0 );
setEffMoveKey( spep_0 -3 + 42, ctbikuri, -240.9, 265.3 , 0 );
setEffMoveKey( spep_0 -3 + 44, ctbikuri, -239.2, 264.9 , 0 );
setEffMoveKey( spep_0  + 46, ctbikuri, -238.4, 266.8 , 0 );

setEffScaleKey( spep_0 -3 + 28, ctbikuri, 0.53, 0.53 );
setEffScaleKey( spep_0 -3 + 30, ctbikuri, 0.95, 0.95 );
setEffScaleKey( spep_0 -3 + 32, ctbikuri, 1.38, 1.38 );
setEffScaleKey( spep_0 -3 + 34, ctbikuri, 1.33, 1.33 );
setEffScaleKey( spep_0 -3 + 36, ctbikuri, 1.29, 1.29 );
setEffScaleKey( spep_0 -3 + 38, ctbikuri, 1.24, 1.24 );
setEffScaleKey( spep_0 -3 + 40, ctbikuri, 1.2, 1.2 );
setEffScaleKey( spep_0 -3 + 42, ctbikuri, 1.16, 1.16 );
setEffScaleKey( spep_0  + 46, ctbikuri, 1.11, 1.11 );

setEffRotateKey( spep_0 -3 + 28, ctbikuri, -21.3 );
setEffRotateKey( spep_0 -3 + 30, ctbikuri, -21.5 );
setEffRotateKey( spep_0  + 46, ctbikuri, -21.5 );

setEffAlphaKey( spep_0 -3 + 28, ctbikuri, 255 );
setEffAlphaKey( spep_0 -3 + 42, ctbikuri, 255 );
setEffAlphaKey( spep_0 -3 + 44, ctbikuri, 170 );
setEffAlphaKey( spep_0 -3 + 46, ctbikuri, 85 );
setEffAlphaKey( spep_0  + 46, ctbikuri, 0 );


--敵の動き
setDisp(spep_0 + 18 ,1,1);

changeAnime(spep_0 + 18 ,1,103);

setMoveKey( spep_0 + 18, 1, 434.9, 229.9 , 0 );
setMoveKey( spep_0 + 20, 1, 394.8, 216.8 , 0 );
setMoveKey( spep_0 + 22, 1, 357.5, 204.5 , 0 );
setMoveKey( spep_0 + 24, 1, 323, 193.2 , 0 );
setMoveKey( spep_0 + 26, 1, 291.2, 182.8 , 0 );
setMoveKey( spep_0 + 28, 1, 262.2, 173.2 , 0 );
setMoveKey( spep_0 + 30, 1, 235.9, 164.6 , 0 );
setMoveKey( spep_0 + 32, 1, 212.4, 156.9 , 0 );
setMoveKey( spep_0 + 34, 1, 191.7, 150.1 , 0 );
setMoveKey( spep_0 + 36, 1, 173.7, 144.2 , 0 );


a=0.2;

setScaleKey( spep_0 + 18, 1, 0.84 + a , 0.84 + a  );
setScaleKey( spep_0 + 20, 1, 0.88 + a , 0.88 + a  );
setScaleKey( spep_0 + 22, 1, 0.91 + a , 0.91 + a  );
setScaleKey( spep_0 + 24, 1, 0.94 + a , 0.94 + a  );
setScaleKey( spep_0 + 26, 1, 0.97 + a , 0.97 + a  );
setScaleKey( spep_0 + 28, 1, 1 + a , 1 + a  );
setScaleKey( spep_0 + 30, 1, 1.03 + a , 1.03 + a  );
setScaleKey( spep_0 + 32, 1, 1.05 + a , 1.05 + a  );
setScaleKey( spep_0 + 34, 1, 1.07 + a , 1.07 + a  );
setScaleKey( spep_0 + 36, 1, 1.08 + a , 1.08 + a  );

setRotateKey( spep_0 + 18, 1, 0 );
setRotateKey( spep_0 + 36, 1, 0 );

--SE
SE0=playSe(  spep_0+18,  44);  --敵ダッシュ

--背景黒
entryFadeBg(  spep_0,  0,  46,  0,  0,  0,  0,  200);  --黒背景
   
---------------------------------------------------------------------------
-- 回避
---------------------------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 36; --エンドフェイズのフレーム数を置き換える

    stopSe( SP_dodge - 12, SE0, 0 );

    playSe( SP_dodge - 12, 1042 );
    
    pauseAll( SP_dodge, 67 );
    
    -- ** 敵キャラクター ** --
    
    setMoveKey( SP_dodge + 8, 1, 173.7, 144.2 , 0 );
    setMoveKey( SP_dodge + 9, 1, 173.7, 144.2 , 0 );
    setMoveKey( SP_dodge + 10, 1, 173.7, 144.2 , 0 );
    
    setScaleKey( SP_dodge + 8, 1, 1.28  , 1.28  );
    setScaleKey( SP_dodge + 9, 1, 1.28  , 1.28 );
    setScaleKey( SP_dodge + 10, 1, 1.28  , 1.28 );
    
    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );

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
    
    
---------------------------------------------------------------------------
-- 回避しなかった場合
---------------------------------------------------------------------------

setMoveKey( spep_0 + 38, 1, 158.5, 139.2 , 0 );
setMoveKey( spep_0 + 40, 1, 146.1, 135.2 , 0 );
setMoveKey( spep_0 + 42, 1, 136.4, 132 , 0 );
setMoveKey( spep_0 + 44, 1, 129.5, 129.7 , 0 );
setMoveKey( spep_0 + 45, 1, 125.4, 128.4 , 0 );
--setMoveKey( spep_0 + 49, 1, 124, 127.9 , 0 );

setScaleKey( spep_0 + 38, 1, 1.1 + a , 1.1 + a  );
setScaleKey( spep_0 + 40, 1, 1.11 + a , 1.11 + a  );
setScaleKey( spep_0 + 42, 1, 1.12 + a , 1.12 + a  );
setScaleKey( spep_0 + 45, 1, 1.12 + a , 1.12 + a  );
--setScaleKey( spep_0 + 49, 1, 1.13 + a , 1.13 + a  );

setRotateKey( spep_0 + 45, 1, 0 );

--SE
playSe(  spep_0+24,  43);  -- 瞬間移動

--次の準備
spep_1=spep_0+46;


------------------------------------------------------
--敵をはじき返す
------------------------------------------------------
-- ** エフェクト等 ** --
fly = entryEffect( spep_1 + 0, SP_02x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fly, 0, 0 , 0 );
setEffMoveKey( spep_1 + 180, fly, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, fly, 1.0, 1.0 );
setEffScaleKey( spep_1 + 180, fly, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fly, 0 );
setEffRotateKey( spep_1 + 180, fly, 0 );
setEffAlphaKey( spep_1 + 0, fly, 255 );
setEffAlphaKey( spep_1 + 180, fly, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_1 + 0,  906, 116, 0x80, -1, -100, 0, 0 );

setEffMoveKey( spep_1 + 0, shuchusen1, -100, 0 , 0 );
setEffMoveKey( spep_1 + 116, shuchusen1, -100, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen1, 1.15, 1.08 );
setEffScaleKey( spep_1 + 116, shuchusen1, 1.15, 1.08 );

setEffRotateKey( spep_1 + 0, shuchusen1, 180 );
setEffRotateKey( spep_1 + 116, shuchusen1, 180 );

setEffAlphaKey( spep_1 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 116, shuchusen1, 255 );

--流線
ryusen2 = entryEffectLife( spep_1 -3 + 120,  921, 38, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 120, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 158, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 120, ryusen2, 1.44, 1.31 );
setEffScaleKey( spep_1 -3 + 158, ryusen2, 1.44, 1.31 );

setEffRotateKey( spep_1 -3 + 120, ryusen2, -22.7 );
setEffRotateKey( spep_1 -3 + 158, ryusen2, -22.7 );

setEffAlphaKey( spep_1 -3 + 120, ryusen2, 255 );
setEffAlphaKey( spep_1 -3 + 158, ryusen2, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_1 + 156,  906, 24, 0x100, -1, 0, -167, 0 );

setEffMoveKey( spep_1 + 156, shuchusen2, 167, 0 , 0 );
setEffMoveKey( spep_1 + 180, shuchusen2, 167, 0 , 0 );

setEffScaleKey( spep_1 + 156, shuchusen2, 1.31, 1.03 );
setEffScaleKey( spep_1 + 180, shuchusen2, 1.31, 1.03 );

setEffRotateKey( spep_1 + 156, shuchusen2, 180 );
setEffRotateKey( spep_1 + 180, shuchusen2, 180 );

setEffAlphaKey( spep_1 + 156, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 180, shuchusen2, 255 );

--敵の動き
setDisp( spep_1 + 106, 1, 0 );
setDisp( spep_1 + 117, 1, 1 );
setDisp( spep_1 + 118, 1, 1 );
setDisp( spep_1 + 180, 1, 0 );

changeAnime( spep_1 + 0, 1, 118 );
changeAnime( spep_1 -3 + 20, 1, 111 );
changeAnime( spep_1 -3 + 96, 1, 107 );
changeAnime( spep_1 -3 + 120, 1, 106 );
changeAnime( spep_1 -3 + 154, 1, 117 );

setMoveKey( spep_1  + 0, 1, 243, 2.7 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 243, 2.7 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 193.2, 9.4 , 0 );
setMoveKey( spep_1 -3 + 19, 1, 137.4, 17 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 135.5, 26.5 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 135.5, 26.4 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 135.5, 26.2 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 133.2, 26.1 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 136.5, 59.2 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 140.9, 22.6 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 136.6, 50.8 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 132.5, 20.2 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 135.7, 34.9 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 139.2, 19.8 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 137.6, 23.5 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 136, 27.1 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 136.1, 19.3 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 136.2, 24.8 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 136.3, 21.8 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 136.4, 23.8 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 136.5, 21.8 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 136.6, 24.8 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 136.7, 21.8 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 136.8, 24.8 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 136.9, 21.8 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 137, 24.8 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 137.1, 21.8 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 137.2, 24.8 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 137.3, 21.8 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 137.4, 24.8 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 137.5, 21.8 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 137.6, 24.8 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 137.7, 21.8 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 137.4, 24.8 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 137.1, 21.8 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 136.7, 24.8 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 136.4, 21.8 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 136.5, 24.8 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 129.7, 21.8 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 140.8, 63.3 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 146, -17.6 , 0 );
setMoveKey( spep_1 -3 + 95, 1, 176, 60.3 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 175, 27 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 208.3, 104.5 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 249, 68 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 307.4, 133.6 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 389.7, 127 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 486.9, 199.5 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 602.2, 211.3 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 735.9, 289.5 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 888.1, 319 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 888.1, 344.1 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 888.1, 319.8 , 0 );
setMoveKey( spep_1 -3 + 119, 1, 888.1, 341.6 , 0 );
setMoveKey( spep_1 -3 + 120, 1, -490.6, -186.2 , 0 );
setMoveKey( spep_1 -3 + 122, 1, -405, -140.9 , 0 );
setMoveKey( spep_1 -3 + 124, 1, -335.9, -128.2 , 0 );
setMoveKey( spep_1 -3 + 126, 1, -278.5, -97.5 , 0 );
setMoveKey( spep_1 -3 + 128, 1, -229.9, -87 , 0 );
setMoveKey( spep_1 -3 + 130, 1, -188.1, -67.1 , 0 );
setMoveKey( spep_1 -3 + 132, 1, -151.9, -60 , 0 );
setMoveKey( spep_1 -3 + 134, 1, -120.3, -43.6 , 0 );
setMoveKey( spep_1 -3 + 136, 1, -92.6, -38.7 , 0 );
setMoveKey( spep_1 -3 + 138, 1, -68.1, -25 , 0 );
setMoveKey( spep_1 -3 + 140, 1, -46.5, -22.2 , 0 );
setMoveKey( spep_1 -3 + 142, 1, -27.4, -10.4 , 0 );
setMoveKey( spep_1 -3 + 144, 1, -10.5, -8.3 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 4.6, 0.1 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 17.8, 2.8 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 29.5, 9 , 0 );
setMoveKey( spep_1 -3 + 153, 1, 39.9, 10.7 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 150.7, 9.4 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 156.6, 10.6 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 162.1, 15.2 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 166.1, 15.4 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 170.5, 19.4 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 173.6, 19.1 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 176.7, 22.5 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 179.1, 21.7 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 181.1, 24.6 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 182.4, 23.5 , 0 );
setMoveKey( spep_1 -3 + 174, 1, 183.4, 26.2 , 0 );
setMoveKey( spep_1 -3 + 176, 1, 184.6, 25.7 , 0 );
setMoveKey( spep_1 -3 + 178, 1, 184.8, 25 , 0 );
setMoveKey( spep_1 -3 + 180, 1, 184.8, 25 , 0 );

b=0.5;
c=0.4;

setScaleKey( spep_1  + 0, 1, 1.2 +b, 1.2+b );
setScaleKey( spep_1 -3 + 14, 1, 1.2+b, 1.2+b );
setScaleKey( spep_1 -3 + 16, 1, 1.1+b, 1.1+b );
setScaleKey( spep_1 -3 + 19, 1, 0.98+b, 0.98+b );
setScaleKey( spep_1 -3 + 20, 1, 1.12+c, 1.12+c );
setScaleKey( spep_1 -3 + 54, 1, 1.12+c, 1.12+c );
setScaleKey( spep_1 -3 + 56, 1, 1.11+c, 1.11+c );
setScaleKey( spep_1 -3 + 82, 1, 1.11+c, 1.11+c );
setScaleKey( spep_1 -3 + 84, 1, 1.12+c, 1.12+c );
setScaleKey( spep_1 -3 + 90, 1, 1.12+c, 1.12+c );
setScaleKey( spep_1 -3 + 92, 1, 1.21+c, 1.21+c );
setScaleKey( spep_1 -3 + 95, 1, 1.29+c, 1.29+c );
setScaleKey( spep_1 -3 + 96, 1, 0.77-a, 0.77-a );
setScaleKey( spep_1 -3 + 98, 1, 0.82-a, 0.82-a );
setScaleKey( spep_1 -3 + 100, 1, 0.89-a, 0.89-a );
setScaleKey( spep_1 -3 + 102, 1, 1-a, 1-a );
setScaleKey( spep_1 -3 + 104, 1, 1.13-a, 1.13-a );
setScaleKey( spep_1 -3 + 106, 1, 1.3-a, 1.3-a );
setScaleKey( spep_1 -3 + 108, 1, 1.49-a, 1.49-a );
setScaleKey( spep_1 -3 + 110, 1, 1.72, 1.72 );
setScaleKey( spep_1 -3 + 112, 1, 1.97, 1.97 );
setScaleKey( spep_1 -3 + 119, 1, 1.97, 1.97 );
setScaleKey( spep_1 -3 + 120, 1, 3.35, 3.35 );
setScaleKey( spep_1 -3 + 122, 1, 3.05, 3.05 );
setScaleKey( spep_1 -3 + 124, 1, 2.8, 2.8 );
setScaleKey( spep_1 -3 + 126, 1, 2.6, 2.6 );
setScaleKey( spep_1 -3 + 128, 1, 2.43, 2.43 );
setScaleKey( spep_1 -3 + 130, 1, 2.28, 2.28 );
setScaleKey( spep_1 -3 + 132, 1, 2.15, 2.15 );
setScaleKey( spep_1 -3 + 134, 1, 2.04, 2.04 );
setScaleKey( spep_1 -3 + 136, 1, 1.94, 1.94 );
setScaleKey( spep_1 -3 + 138, 1, 1.85, 1.85 );
setScaleKey( spep_1 -3 + 140, 1, 1.78, 1.78 );
setScaleKey( spep_1 -3 + 142, 1, 1.71, 1.71 );
setScaleKey( spep_1 -3 + 144, 1, 1.65, 1.65 );
setScaleKey( spep_1 -3 + 146, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 148, 1, 1.55, 1.55 );
setScaleKey( spep_1 -3 + 150, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 153, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 154, 1, 1.21, 1.21 );
setScaleKey( spep_1 -3 + 156, 1, 1.19, 1.19 );
setScaleKey( spep_1 -3 + 158, 1, 1.17, 1.17 );
setScaleKey( spep_1 -3 + 160, 1, 1.15, 1.15 );
setScaleKey( spep_1 -3 + 162, 1, 1.14, 1.14 );
setScaleKey( spep_1 -3 + 164, 1, 1.12, 1.12 );
setScaleKey( spep_1 -3 + 166, 1, 1.11, 1.11 );
setScaleKey( spep_1 -3 + 168, 1, 1.1, 1.1 );
setScaleKey( spep_1 -3 + 170, 1, 1.1, 1.1 );
setScaleKey( spep_1 -3 + 172, 1, 1.09, 1.09 );
setScaleKey( spep_1 -3 + 174, 1, 1.08, 1.08 );
setScaleKey( spep_1 -3 + 176, 1, 1.08, 1.08 );
setScaleKey( spep_1 -3 + 178, 1, 1.07, 1.07 );
setScaleKey( spep_1  + 180, 1, 1.07, 1.07 );

setRotateKey( spep_1  + 0, 1, 0.3 );
setRotateKey( spep_1 -3 + 14, 1, 0.3 );
setRotateKey( spep_1 -3 + 16, 1, 7.3 );
setRotateKey( spep_1 -3 + 19, 1, 5.1 );

setRotateKey( spep_1 -3 + 20, 1, -20.7 );
setRotateKey( spep_1 -3 + 90, 1, -20.7 );
setRotateKey( spep_1 -3 + 92, 1, -20.4 );
setRotateKey( spep_1 -3 + 95, 1, -20 );
--setRotateKey( spep_1 -3 + 96, 1, -15.2 );

setRotateKey( spep_1 -3 + 96, 1, -60 );
setRotateKey( spep_1 -3 + 118, 1, -60 );
--setRotateKey( spep_1 -3 + 100, 1, -14.5 );
--setRotateKey( spep_1 -3 + 102, 1, -13.9 );
--setRotateKey( spep_1 -3 + 104, 1, -13.2 );
--setRotateKey( spep_1 -3 + 106, 1, -12.2 );
--setRotateKey( spep_1 -3 + 108, 1, -11.1 );
--setRotateKey( spep_1 -3 + 110, 1, -10.2 );
--setRotateKey( spep_1 -3 + 112, 1, -11.6 );
--setRotateKey( spep_1 -3 + 120, 1, -11.6 );

setRotateKey( spep_1 -3 + 120, 1, 1.4 );
setRotateKey( spep_1 -3 + 124, 1, 1.2 );
setRotateKey( spep_1 -3 + 126, 1, 1 );
setRotateKey( spep_1 -3 + 128, 1, 0.9 );
setRotateKey( spep_1 -3 + 130, 1, 0.8 );
setRotateKey( spep_1 -3 + 132, 1, 0.7 );
setRotateKey( spep_1 -3 + 134, 1, 0.6 );
setRotateKey( spep_1 -3 + 136, 1, 0.5 );
setRotateKey( spep_1 -3 + 138, 1, 0.5 );
setRotateKey( spep_1 -3 + 140, 1, 0.4 );
setRotateKey( spep_1 -3 + 142, 1, 0.4 );
setRotateKey( spep_1 -3 + 144, 1, 0.3 );
setRotateKey( spep_1 -3 + 146, 1, 0.3 );
setRotateKey( spep_1 -3 + 148, 1, 0.2 );
setRotateKey( spep_1 -3 + 154, 1, 0.2 );
setRotateKey( spep_1 -3 + 156, 1, 0.1 );
setRotateKey( spep_1 -3 + 172, 1, 0.1 );
setRotateKey( spep_1 -3 + 174, 1, 0 );
setRotateKey( spep_1 +180, 1, 0 );

--SE
playSe(  spep_1+18,  1002);  -- パンチが弾かれる
playSe(  spep_1+94,  1011);  -- 敵をはじきかえす
playSe(  spep_1+118,  44);  -- 敵をはじきかえす

--白フェード
entryFade( spep_1+172, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--背景黒
entryFadeBg(  spep_1,  0,  180,  0,  0,  0,  0,  200);  --黒背景

--次の準備
spep_2=spep_1+180;

------------------------------------------------------
-- 剣を出す
------------------------------------------------------


-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_03x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 76, tame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_2 + 76, tame, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 76, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 76, tame, 255 );


--SE
SE1=playSe(  spep_2+2,  17);  -- 剣ができる
--stopSe( spep_2+78, SE1, 0 );

--背景黒
entryFadeBg( spep_2, 0, 77, 0, 0, 0, 0, 255); --黒背景

--次の準備
spep_3=spep_2+76;

------------------------------------------------------
-- ザマスの肩に手を抑える
------------------------------------------------------

-- ** エフェクト等 ** --
stop = entryEffect( spep_3 + 0, SP_04x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, stop, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, stop, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, stop, 1.0, 1.0 );
setEffScaleKey( spep_3 + 46, stop, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, stop, 0 );
setEffRotateKey( spep_3 + 46, stop, 0 );
setEffAlphaKey( spep_3 + 0, stop, 255 );
setEffAlphaKey( spep_3 + 46, stop, 255 );

--文字エントリー
ctbikkuri2 = entryEffectLife( spep_3 -3 + 6,  10000, 18, 0x100, -1, 0, -135.9, 187.2 );--!!
setEffMoveKey( spep_3 -3 + 6, ctbikkuri2, -135.9, 187.2 , 0 );
setEffMoveKey( spep_3 -3 + 8, ctbikkuri2, -141.7, 192.9 , 0 );
setEffMoveKey( spep_3 -3 + 10, ctbikkuri2, -151.3, 193.3 , 0 );
setEffMoveKey( spep_3 -3 + 12, ctbikkuri2, -151.3, 198.1 , 0 );
setEffMoveKey( spep_3 -3 + 14, ctbikkuri2, -149.7, 198 , 0 );
setEffMoveKey( spep_3 -3 + 16, ctbikkuri2, -149.4, 200.8 , 0 );
setEffMoveKey( spep_3 -3 + 18, ctbikkuri2, -152.3, 196.5 , 0 );
setEffMoveKey( spep_3 -3 + 20, ctbikkuri2, -152, 199.7 , 0 );
setEffMoveKey( spep_3 -3 + 22, ctbikkuri2, -150.2, 198.9 , 0 );
setEffMoveKey( spep_3 -3 + 24, ctbikkuri2, -149.4, 200.8 , 0 );

d=0.8;
setEffScaleKey( spep_3 -3 + 6, ctbikkuri2, 0.1 +d, 0.1 +d );
setEffScaleKey( spep_3 -3 + 8, ctbikkuri2, 0.74 +d, 0.74 +d );
setEffScaleKey( spep_3 -3 + 10, ctbikkuri2, 1.38 +d, 1.38 +d );
setEffScaleKey( spep_3 -3 + 12, ctbikkuri2, 1.29 +d, 1.29 +d );
setEffScaleKey( spep_3 -3 + 14, ctbikkuri2, 1.2 +d, 1.2 +d );
setEffScaleKey( spep_3 -3 + 16, ctbikkuri2, 1.11 +d, 1.11 +d );
setEffScaleKey( spep_3 -3 + 24, ctbikkuri2, 1.11 +d, 1.11 +d );

setEffRotateKey( spep_3 -3 + 6, ctbikkuri2, -21.3 );
setEffRotateKey( spep_3 -3 + 8, ctbikkuri2, -21.5 );
setEffRotateKey( spep_3 -3 + 24, ctbikkuri2, -21.5 );

setEffAlphaKey( spep_3 -3 + 6, ctbikkuri2, 255 );
setEffAlphaKey( spep_3 -3 + 24, ctbikkuri2, 255 )

playSe(  spep_3+20,  1007);  -- 剣ができる

--背景黒
entryFadeBg( spep_3, 0, 46, 0, 0, 0, 0, 200); --黒背景

--次の準備
spep_4=spep_3+46;
------------------------------------------------------
-- カットイン
------------------------------------------------------
-- ** エフェクト等 ** --
cut = entryEffect( spep_4 + 0, SP_05x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, cut, 0, 0 , 0 );
setEffMoveKey( spep_4 + 96, cut, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, cut, 1.0, 1.0 );
setEffScaleKey( spep_4 + 96, cut, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, cut, 0 );
setEffRotateKey( spep_4 + 96, cut, 0 );
setEffAlphaKey( spep_4 + 0, cut, 255 );
setEffAlphaKey( spep_4 + 96, cut, 255 );

--集中線
shuchusenx = entryEffectLife( spep_4 + 0,  906, 152, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, shuchusenx, 0, 0 , 0 );
setEffMoveKey( spep_4 + 152, shuchusenx, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusenx, 1, 1 );
setEffScaleKey( spep_4 + 152, shuchusenx, 1, 1 );

setEffRotateKey( spep_4 + 0, shuchusenx, 180 );
setEffRotateKey( spep_4 + 96, shuchusenx, 180 );

setEffAlphaKey( spep_4 + 0, shuchusenx, 255 );
setEffAlphaKey( spep_4 + 152, shuchusenx, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_4+10, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_4 +10, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_4  + 22,  190006, 72, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ

setEffShake( spep_4  + 22, ctgogo, 72, 10 );
 
setEffMoveKey( spep_4  + 22, ctgogo, -9.9, 512.8 , 0 );
setEffMoveKey( spep_4  + 94, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_4  + 22, ctgogo, -0.84, 0.84 );
setEffScaleKey( spep_4  + 86, ctgogo, -0.84, 0.84 );
setEffScaleKey( spep_4  + 88, ctgogo, -1.2, 1.2 );
setEffScaleKey( spep_4  + 90, ctgogo, -1.3, 1.3 );
setEffScaleKey( spep_4  + 92, ctgogo, -1.66, 1.66 );
setEffScaleKey( spep_4  + 94, ctgogo, -2.02, 2.02 );
 
setEffRotateKey( spep_4  + 22, ctgogo, 0 );
setEffRotateKey( spep_4  + 94, ctgogo, 0 );

setEffAlphaKey( spep_4  + 22, ctgogo, 0 );
setEffAlphaKey( spep_4  + 23, ctgogo, 255 );
setEffAlphaKey( spep_4  + 24, ctgogo, 255 );
setEffAlphaKey( spep_4  + 94, ctgogo, 255 );

--SE
playSe( spep_4 + 22, SE_04 );  --ゴゴゴ

--背景黒
entryFadeBg(  spep_4,  0,  96,  0,  0,  0,  0,  200);  --黒背景

--次の準備
spep_5=spep_4+96;

------------------------------------------------------
-- 手を振りほどく
------------------------------------------------------
-- ** エフェクト等 ** --
dash = entryEffect( spep_5 + 0, SP_06x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, dash, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, dash, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, dash, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, dash, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, dash, 0 );
setEffRotateKey( spep_5 + 56, dash, 0 );
setEffAlphaKey( spep_5 + 0, dash, 255 );
setEffAlphaKey( spep_5 + 56, dash, 255 );

--SE
playSe(  spep_5+18,  1007);  -- 手を振りほどく

--白フェード
entryFade( spep_5+48, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--背景黒
entryFadeBg(  spep_5,  0,  56,  0,  0,  0,  0,  200);  --黒背景

--次の準備
spep_6=spep_5+56;
------------------------------------------------------
-- 手をあげる
------------------------------------------------------
-- ** エフェクト等 ** --
raise_hand = entryEffect( spep_6 + 0, SP_07x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, raise_hand, 0, 0 , 0 );
setEffMoveKey( spep_6 + 86, raise_hand, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, raise_hand, 1.0, 1.0 );
setEffScaleKey( spep_6 + 86, raise_hand, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, raise_hand, 0 );
setEffRotateKey( spep_6 + 86, raise_hand, 0 );
setEffAlphaKey( spep_6 + 0, raise_hand, 255 );
setEffAlphaKey( spep_6 + 86, raise_hand, 255 );

--流線
ryusen3 = entryEffectLife( spep_6 + 0,  921, 86, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_6 + 0, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_6 + 86, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, ryusen3, 1.44, 1.31 );
setEffScaleKey( spep_6 + 86, ryusen3, 1.44, 1.31 );

setEffRotateKey( spep_6 + 0, ryusen3, -22.7 );
setEffRotateKey( spep_6 + 86, ryusen3, -22.7 );

setEffAlphaKey( spep_6 + 0, ryusen3, 255 );
setEffAlphaKey( spep_6 + 86, ryusen3, 255 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 86, 1, 0 );
changeAnime( spep_6 + 0, 1, 104 );

setShakeChara(spep_6 + 0,1,86,2);

setMoveKey( spep_6 + 0, 1, 166.1, 130.2 , 0 );
setMoveKey( spep_6 + 86, 1, 166.1, 130.2 , 0 );

setScaleKey( spep_6 + 0, 1, 1.26, 1.26 );
setScaleKey( spep_6 + 86, 1, 1.26, 1.26 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6 + 86, 1, 0 );

--SE
SE1=playSe(  spep_6+14,  15);  -- 剣ができる
stopSe( spep_6+84, SE1, 0 );

--背景黒
entryFadeBg(  spep_6,  0,  86,  0,  0,  0,  0,  200);  --黒背景

--白フェード
entryFade( spep_6+78, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_7=spep_6+86;

--------------------------------------
--カードカットイン
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_7 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_7 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_7 + 0, shuchusen3, 90, 20 );

setEffMoveKey( spep_7 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_7 + 90, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_7 + 90, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_7 + 0, shuchusen3, 0 );
setEffRotateKey( spep_7 + 90, shuchusen3, 0 );

setEffAlphaKey( spep_7 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_7 + 90, shuchusen3, 255 );

-- ** 音 ** --
playSe( spep_7 + 0, SE_05 );

-- ** エフェクト等 ** --
entryFade(spep_7+82,4,10,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_8 = spep_7 + 90;

--------------------------------------
--斬撃
--------------------------------------
-- ** エフェクト等 ** --
zangeki = entryEffect( spep_8 + 0, SP_08x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, zangeki, 0, 0 , 0 );
setEffMoveKey( spep_8 + 50, zangeki, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, zangeki, 1.0, 1.0 );
setEffScaleKey( spep_8 + 50, zangeki, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, zangeki, 0 );
setEffRotateKey( spep_8 + 50, zangeki, 0 );
setEffAlphaKey( spep_8 + 0, zangeki, 255 );
setEffAlphaKey( spep_8 + 50, zangeki, 255 );

-- ** 音 ** --
playSe( spep_8 + 6, 1032 );
 
--背景黒
entryFadeBg(  spep_8,  0,  50,  0,  0,  0,  0,  255);  --黒背景

--次の準備
spep_9 = spep_8 + 50;
--------------------------------------
--終わり
--------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_9 + 0, SP_09x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_9 + 240, finish, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_9 + 240, finish, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish, 0 );
setEffRotateKey( spep_9 + 240, finish, 0 );
setEffAlphaKey( spep_9 + 0, finish, 255 );
setEffAlphaKey( spep_9 + 240, finish, 255 );

--敵の動き
setDisp( spep_9  + 0, 1, 1 );

changeAnime( spep_9  + 0, 1, 106 );

setMoveKey( spep_9  + 0, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 30, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 32, 1, 24.1, 155.6 , 0 );
setMoveKey( spep_9 -3 + 34, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 36, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 38, 1, 24.3, 155.3 , 0 );
setMoveKey( spep_9 -3 + 40, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 42, 1, 23.7, 155 , 0 );
setMoveKey( spep_9 -3 + 44, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 46, 1, 24.8, 154.6 , 0 );
setMoveKey( spep_9 -3 + 48, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 50, 1, 23.1, 154.3 , 0 );
setMoveKey( spep_9 -3 + 52, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 54, 1, 25.4, 154 , 0 );
setMoveKey( spep_9 -3 + 56, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 58, 1, 22.5, 153.7 , 0 );
setMoveKey( spep_9 -3 + 60, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 62, 1, 26.2, 153.3 , 0 );
setMoveKey( spep_9 -3 + 64, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 66, 1, 21.9, 152.9 , 0 );
setMoveKey( spep_9 -3 + 68, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 70, 1, 26.7, 152.7 , 0 );
setMoveKey( spep_9 -3 + 72, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 74, 1, 21.3, 152.3 , 0 );
setMoveKey( spep_9 -3 + 76, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 78, 1, 27.5, 152 , 0 );
setMoveKey( spep_9 -3 + 80, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 82, 1, 20.5, 151.7 , 0 );
setMoveKey( spep_9 -3 + 84, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 86, 1, 28.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 88, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 90, 1, 20.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 92, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 94, 1, 28.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 96, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 98, 1, 20.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 100, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 102, 1, 28.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 104, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 106, 1, 20.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 108, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 110, 1, 28.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 112, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 114, 1, 20.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 116, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 118, 1, 28.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 120, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 122, 1, 20.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 124, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 126, 1, 28.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 128, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 130, 1, 20.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 132, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 134, 1, 28.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 136, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 138, 1, 20.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 140, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 142, 1, 28.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 144, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 146, 1, 20.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 148, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 150, 1, 28.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 152, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 154, 1, 20.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 156, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 158, 1, 28.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 160, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 162, 1, 20.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 164, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 166, 1, 28.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 168, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 170, 1, 20.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 172, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 174, 1, 28.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 176, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 178, 1, 20.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 180, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 182, 1, 28.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 184, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 186, 1, 20.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 188, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 190, 1, 28.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 192, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 194, 1, 20.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 196, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 198, 1, 28.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 200, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 202, 1, 20.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 204, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 206, 1, 28.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 208, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 210, 1, 20.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 212, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 214, 1, 28.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 216, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 218, 1, 20.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 220, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 222, 1, 28.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 224, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 226, 1, 20.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 228, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 230, 1, 28.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 232, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9 -3 + 234, 1, 20.1, 151.7 , 0 );
setMoveKey( spep_9 -3 + 236, 1, 24.1, 155.7 , 0 );
setMoveKey( spep_9  + 238, 1, 28.1, 151.7 , 0 );

setScaleKey( spep_9  + 0, 1, 1.47, 1.47 );
setScaleKey( spep_9 + 238, 1, 1.47, 1.47 );

setRotateKey( spep_9  + 0, 1, -73 );
setRotateKey( spep_9  + 238, 1, -73 );

-- ** 音 ** --
playSe( spep_9 , 8 );
SE2=playSe( spep_9+20 , 15 );
stopSe( spep_9+78, SE2, 0 );
playSe( spep_9 + 80, 1024 );
 
--背景黒
entryFadeBg(  spep_9,  0,  240,  0,  0,  0,  0,  200);  --黒背景

dealDamage(spep_9+16);
entryFade( spep_9+220, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_9 + 230 );
end


