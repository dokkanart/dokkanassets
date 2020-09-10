--4017190:超サイヤ人孫悟空_超メテオスマッシュ
--sp_effect_b1_00076

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
SP_01=	153599	;--	気合い砲
SP_02=	153600	;--	気合い砲　奥
SP_03=	153601	;--	ラッシュ
SP_04=	153602	;--	ラッシュ　奥
SP_05=	153603	;--	被弾
SP_06=	153604	;--	被弾　奥
SP_07=  153613  ;--KO

--敵側
SP_01r=  153607  ;-- 気合い砲
SP_02r=  153608  ;-- 気合い砲　奥
SP_03r=  153609  ;-- ラッシュ
SP_04r=  153610  ;-- ラッシュ　奥
SP_05r=  153611  ;-- 被弾
SP_06r=  153612  ;-- 被弾　奥
SP_07r=  153614  ;--KO

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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- ぐるっと回るシーン
------------------------------------------------------
--はじめの準備
spep_0 = 0;

-- ** エフェクト等 ** --
tame_b = entryEffectLife( spep_0 + 0, SP_01,  200 ,0x80, -1, 0, 0, 0 );  
setEffMoveKey( spep_0 + 0, tame_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 200, tame_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 200, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_b, 0 );
setEffRotateKey( spep_0 + 200, tame_b, 0 );
setEffAlphaKey( spep_0 + 0, tame_b, 255 );
setEffAlphaKey( spep_0 + 200, tame_b, 255 );

-- ** エフェクト等 ** --
tame_f = entryEffectLife( spep_0 + 0, SP_02,  200 ,0x100, -1, 0, 0, 0 );  
setEffMoveKey( spep_0 + 0, tame_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 200, tame_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 200, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_f, 0 );
setEffRotateKey( spep_0 + 200, tame_f, 0 );
setEffAlphaKey( spep_0 + 0, tame_f, 255 );
setEffAlphaKey( spep_0 + 198, tame_f, 255); 
setEffAlphaKey( spep_0 + 199, tame_f, 255); 
setEffAlphaKey( spep_0 + 200, tame_f, 0 );

--敵の動き
setDisp(spep_0 ,1,1);
setDisp(spep_0 +200,1,0);

changeAnime(spep_0 ,1,102);
changeAnime(spep_0 -3+110,1,117);
changeAnime(spep_0 -3+158,1,5);

setMoveKey( spep_0  + 0, 1, 203.5, -95.1 , 0 );
setMoveKey( spep_0  + 1, 1, 203.5, -95.1 , 0 );
setMoveKey( spep_0  + 2, 1, 203.5, -95.1 , 0 );
setMoveKey( spep_0  + 3, 1, 203.5, -95.1 , 0 );
setMoveKey( spep_0  + 4, 1, 203.5, -95.1 , 0 );
setMoveKey( spep_0  + 5, 1, 203.5, -95.1 , 0 );

setScaleKey( spep_0  + 0, 1, 2.6, 2.6 );
setScaleKey( spep_0  + 1, 1, 2.6, 2.6 );
setScaleKey( spep_0  + 2, 1, 2.6, 2.6 );
setScaleKey( spep_0  + 3, 1, 2.6, 2.6 );
setScaleKey( spep_0  + 4, 1, 2.6, 2.6 );
setScaleKey( spep_0  + 5, 1, 2.6, 2.6 );

setRotateKey( spep_0  + 0, 1, 2.8 );
setRotateKey( spep_0  + 1, 1, 2.8 );
setRotateKey( spep_0  + 2, 1, 2.8 );
setRotateKey( spep_0  + 3, 1, 2.8 );
setRotateKey( spep_0  + 4, 1, 2.8 );
setRotateKey( spep_0  + 5, 1, 2.8 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える

--    stopSe( SP_dodge - 12, SE0, 0 );
--    stopSe( SP_dodge - 12, SE1, 0 );

    playSe( SP_dodge - 12, 1042 );
    
    pauseAll( SP_dodge, 67 );
    
    
    -- ** 敵キャラクター ** --
--    changeAnime( SP_dodge + 0, 1, 100 );  --待機正面向き
    
    setMoveKey( SP_dodge + 0, 1, 203.5, -95.1 , 0 );
    setMoveKey( SP_dodge + 10, 1, 203.5, -95.1 , 0 );
    
    setScaleKey( SP_dodge + 0, 1, 2.6, 2.6 );
    setScaleKey( SP_dodge + 10, 1, 2.6, 2.6 );
    
    setRotateKey( SP_dodge + 0, 1, 2.8 );
    setRotateKey( SP_dodge + 10, 1, 2.8 );
    
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


setMoveKey( spep_0 -3 + 78, 1, 203.5, -95.1 , 0 );
setMoveKey( spep_0 -3 + 80, 1, 204.9, -95 , 0 );
setMoveKey( spep_0 -3 + 82, 1, 209.4, -94.7 , 0 );
setMoveKey( spep_0 -3 + 84, 1, 216.9, -94.3 , 0 );
setMoveKey( spep_0 -3 + 86, 1, 227.9, -93.6 , 0 );
setMoveKey( spep_0 -3 + 88, 1, 242.4, -92.7 , 0 );
setMoveKey( spep_0 -3 + 90, 1, 260.9, -91.5 , 0 );
setMoveKey( spep_0 -3 + 92, 1, 283.8, -90.1 , 0 );
setMoveKey( spep_0 -3 + 94, 1, 311.5, -88.4 , 0 );
setMoveKey( spep_0 -3 + 96, 1, 344.7, -86.3 , 0 );
setMoveKey( spep_0 -3 + 98, 1, 384.3, -83.9 , 0 );
setMoveKey( spep_0 -3 + 100, 1, 431.5, -81 , 0 );
setMoveKey( spep_0 -3 + 102, 1, 488.1, -77.5 , 0 );
setMoveKey( spep_0 -3 + 104, 1, 556.5, -73.2 , 0 );
setMoveKey( spep_0 -3 + 106, 1, 641.1, -68 , 0 );
setMoveKey( spep_0 -3 + 108, 1, 750, -61.4 , 0 );
setMoveKey( spep_0 -3 + 110, 1, 577.9, 48.6 , 0 );
setMoveKey( spep_0 -3 + 112, 1, 572.9, 48.6 , 0 );
setMoveKey( spep_0 -3 + 114, 1, 567.9, 48.6 , 0 );
setMoveKey( spep_0 -3 + 116, 1, 562.9, 48.6 , 0 );
setMoveKey( spep_0 -3 + 118, 1, 557.9, 48.5 , 0 );
setMoveKey( spep_0 -3 + 120, 1, 390.7, 48.6 , 0 );
setMoveKey( spep_0 -3 + 122, 1, 331.6, 48.6 , 0 );
setMoveKey( spep_0 -3 + 124, 1, 299.6, 48.6 , 0 );
setMoveKey( spep_0 -3 + 126, 1, 278.9, 48.6 , 0 );
setMoveKey( spep_0 -3 + 128, 1, 264.5, 48.6 , 0 );
setMoveKey( spep_0 -3 + 130, 1, 253.9, 48.6 , 0 );
setMoveKey( spep_0 -3 + 132, 1, 245.9, 48.6 , 0 );
setMoveKey( spep_0 -3 + 134, 1, 240, 48.6 , 0 );
setMoveKey( spep_0 -3 + 136, 1, 235.4, 48.6 , 0 );
setMoveKey( spep_0 -3 + 138, 1, 232, 48.6 , 0 );
setMoveKey( spep_0 -3 + 140, 1, 229.5, 48.6 , 0 );
setMoveKey( spep_0 -3 + 142, 1, 227.8, 48.6 , 0 );
setMoveKey( spep_0 -3 + 144, 1, 226.6, 48.6 , 0 );
setMoveKey( spep_0 -3 + 146, 1, 226, 48.6 , 0 );
setMoveKey( spep_0 -3 + 148, 1, 225.8, 48.6 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 225.8, 48.6 , 0 );
setMoveKey( spep_0 -3 + 158, 1, 225.9, 48.6 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 240.2, 45.7 , 0 );
setMoveKey( spep_0 -3 + 162, 1, 245.1, 44.7 , 0 );
setMoveKey( spep_0 -3 + 164, 1, 248.3, 44 , 0 );
setMoveKey( spep_0 -3 + 166, 1, 250.8, 43.5 , 0 );
setMoveKey( spep_0 -3 + 168, 1, 252.7, 43.1 , 0 );
setMoveKey( spep_0 -3 + 170, 1, 254.3, 42.8 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 255.6, 42.5 , 0 );
setMoveKey( spep_0 -3 + 174, 1, 256.7, 42.3 , 0 );
setMoveKey( spep_0 -3 + 176, 1, 257.6, 42.1 , 0 );
setMoveKey( spep_0 -3 + 178, 1, 258.3, 42 , 0 );
setMoveKey( spep_0 -3 + 180, 1, 259, 41.8 , 0 );
setMoveKey( spep_0 -3 + 182, 1, 259.5, 41.7 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 259.9, 41.6 , 0 );
setMoveKey( spep_0 -3 + 186, 1, 260.2, 41.6 , 0 );
setMoveKey( spep_0 -3 + 188, 1, 260.5, 41.5 , 0 );
setMoveKey( spep_0 -3 + 190, 1, 260.7, 41.5 , 0 );
setMoveKey( spep_0 -3 + 192, 1, 260.8, 41.4 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 260.9, 41.4 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 260.9, 41.4 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 261, 41.4 , 0 );
setMoveKey( spep_0  + 200, 1, 260.9, 41.4 , 0 );


setScaleKey( spep_0 -3 + 86, 1, 2.6, 2.6 );
setScaleKey( spep_0 -3 + 88, 1, 2.59, 2.59 );
setScaleKey( spep_0 -3 + 90, 1, 2.59, 2.59 );
setScaleKey( spep_0 -3 + 92, 1, 2.58, 2.58 );
setScaleKey( spep_0 -3 + 94, 1, 2.57, 2.57 );
setScaleKey( spep_0 -3 + 96, 1, 2.56, 2.56 );
setScaleKey( spep_0 -3 + 98, 1, 2.53, 2.53 );
setScaleKey( spep_0 -3 + 100, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 102, 1, 2.45, 2.45 );
setScaleKey( spep_0 -3 + 104, 1, 2.38, 2.38 );
setScaleKey( spep_0 -3 + 106, 1, 2.28, 2.28 );
setScaleKey( spep_0 -3 + 108, 1, 1.94, 1.94 );
setScaleKey( spep_0 -3 + 110, 1, 0.7, 0.7 );
setScaleKey( spep_0 -3 + 112, 1, 0.69, 0.69 );
setScaleKey( spep_0 -3 + 114, 1, 0.68, 0.68 );
setScaleKey( spep_0 -3 + 116, 1, 0.66, 0.66 );
setScaleKey( spep_0 -3 + 118, 1, 0.65, 0.65 );
setScaleKey( spep_0 -3 + 120, 1, 0.64, 0.64 );
setScaleKey( spep_0 -3 + 156, 1, 0.64, 0.64 );
setScaleKey( spep_0 -3 + 158, 1, 0.5, 0.5 );
setScaleKey( spep_0 -3 + 160, 1, 0.36, 0.36 );
setScaleKey( spep_0 -3 + 162, 1, 0.32, 0.32 );
setScaleKey( spep_0 -3 + 164, 1, 0.29, 0.29 );
setScaleKey( spep_0 -3 + 166, 1, 0.27, 0.27 );
setScaleKey( spep_0 -3 + 168, 1, 0.25, 0.25 );
setScaleKey( spep_0 -3 + 170, 1, 0.23, 0.23 );
setScaleKey( spep_0 -3 + 172, 1, 0.22, 0.22 );
setScaleKey( spep_0 -3 + 174, 1, 0.21, 0.21 );
setScaleKey( spep_0 -3 + 176, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 178, 1, 0.19, 0.19 );
setScaleKey( spep_0 -3 + 180, 1, 0.19, 0.19 );
setScaleKey( spep_0 -3 + 182, 1, 0.18, 0.18 );
setScaleKey( spep_0 -3 + 186, 1, 0.18, 0.18 );
setScaleKey( spep_0 -3 + 188, 1, 0.17, 0.17 );
setScaleKey( spep_0  + 200, 1, 0.17, 0.17 );


setRotateKey( spep_0 -3 + 78, 1, 2.8 );
setRotateKey( spep_0 -3 + 80, 1, 3 );
setRotateKey( spep_0 -3 + 82, 1, 3.1 );
setRotateKey( spep_0 -3 + 84, 1, 3.3 );
setRotateKey( spep_0 -3 + 86, 1, 3.4 );
setRotateKey( spep_0 -3 + 88, 1, 3.5 );
setRotateKey( spep_0 -3 + 90, 1, 3.7 );
setRotateKey( spep_0 -3 + 92, 1, 3.8 );
setRotateKey( spep_0 -3 + 94, 1, 4 );
setRotateKey( spep_0 -3 + 96, 1, 4.1 );
setRotateKey( spep_0 -3 + 98, 1, 4.3 );
setRotateKey( spep_0 -3 + 100, 1, 4.4 );
setRotateKey( spep_0 -3 + 102, 1, 4.6 );
setRotateKey( spep_0 -3 + 104, 1, 4.7 );
setRotateKey( spep_0 -3 + 106, 1, 4.9 );
setRotateKey( spep_0 -3 + 108, 1, 5 );
setRotateKey( spep_0 -3 + 110, 1, 0 );
setRotateKey( spep_0 -3 + 156, 1, 0 );
setRotateKey( spep_0 -3 + 158, 1, 25.8 );
setRotateKey( spep_0  + 200, 1, 25.8 );


-- ** 顔カットイン ** --
speff = entryEffect( spep_0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 12,  190006, 72, 0x100, -1, 0, -109.9, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 12, ctgogo, 72, 10 );
 
setEffMoveKey( spep_0 + 12, ctgogo, -109.9, 512.8 , 0 );
setEffMoveKey( spep_0 + 84, ctgogo, -109.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 12, ctgogo, 0.84, 0.84 );
setEffScaleKey( spep_0 + 76, ctgogo, 0.84, 0.84 );
setEffScaleKey( spep_0 + 78, ctgogo, 1.2, 1.2 );
setEffScaleKey( spep_0 + 80, ctgogo, 1.3, 1.3 );
setEffScaleKey( spep_0 + 82, ctgogo, 1.66, 1.66 );
setEffScaleKey( spep_0 + 84, ctgogo, 2.02, 2.02 );
 
setEffRotateKey( spep_0 + 12, ctgogo, 0 );
setEffRotateKey( spep_0 + 84, ctgogo, 0 );

setEffAlphaKey( spep_0 + 12, ctgogo, 0 );
setEffAlphaKey( spep_0 + 13, ctgogo, 255 );
setEffAlphaKey( spep_0 + 14, ctgogo, 255 );
setEffAlphaKey( spep_0 + 84, ctgogo, 255 );
]]
--SE
playSe( spep_0 + 12, SE_04 );  --ゴゴゴ
playSe( spep_0 + 156, 1014 );  --敵を飛ばす


--次の準備
spep_1=spep_0+200;
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

-- ** 次の準備 ** --
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 瞬間移動
------------------------------------------------------
-- ** エフェクト等 ** --
tame_b = entryEffectLife( spep_2 + 0, SP_04,  380 ,0x80, -1, 0, 0, 0 );  
setEffMoveKey( spep_2 + 0, tame_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 380, tame_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 380, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame_b, 0 );
setEffRotateKey( spep_2 + 380, tame_b, 0 );
setEffAlphaKey( spep_2 + 0, tame_b, 255 );
setEffAlphaKey( spep_2 + 380, tame_b, 255 );

-- ** エフェクト等 ** --
tame_f = entryEffectLife( spep_2 + 0, SP_03,  380 ,0x100, -1, 0, 0, 0 );  
setEffMoveKey( spep_2 + 0, tame_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 380, tame_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 380, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame_f, 0 );
setEffRotateKey( spep_2 + 380, tame_f, 0 );
setEffAlphaKey( spep_2 + 0, tame_f, 255 );
setEffAlphaKey( spep_2 + 380, tame_f, 255 );

--敵の動き
setDisp(spep_2 -3 +60 ,1,1);
setDisp(spep_2 -3 +380,1,0);

changeAnime(spep_2 -3+60 ,1,108);
changeAnime(spep_2 -3+78 ,1,106);
changeAnime(spep_2 -3+100 ,1,107);
changeAnime(spep_2 -3+108 ,1,106);
changeAnime(spep_2 -3+110 ,1,5);
changeAnime(spep_2 -3+190 ,1,106);
changeAnime(spep_2 -3+220 ,1,5);
changeAnime(spep_2 -3+280 ,1,106);

setMoveKey( spep_2 -3 + 60, 1, 32.5, 48.5 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 41.5, 48.5 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 50.5, 48.5 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 59.5, 48.5 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 68.5, 48.5 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 77.5, 48.5 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 86.5, 48.5 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 95.5, 48.5 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 126.8, 60.4 , 0 );

setMoveKey( spep_2 -3 + 78, 1, 182.6, 46.1 , 0 );--106
setMoveKey( spep_2 -3 + 80, 1, 392, 56 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 443, 46.5 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 568.3, 55.7 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 643.9, 45.7 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 746.3, 49.2 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 786.1, 47.9 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 856.5, 46.4 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 882.4, 53.2 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 907.3, 48.5 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 914.5, 48.5 , 0 );
setMoveKey( spep_2 -3 + 99, 1, 914.5, 48.5 , 0 );
setMoveKey( spep_2 -3 + 100, 1, -349.6, -938.2 , 0 );--107
setMoveKey( spep_2 -3 + 102, 1, -333.7, -906.2 , 0 );
setMoveKey( spep_2 -3 + 104, 1, -285.7, -810.2 , 0 );
setMoveKey( spep_2 -3 + 106, 1, -205.9, -650.3 , 0 );
setMoveKey( spep_2 -3 + 107, 1, -312.5, -378.4 , 0 );--106
setMoveKey( spep_2 -3 + 108, 1, -312.5, -378.4 , 0 );--106
setMoveKey( spep_2 -3 + 109, 1, -312.5, -378.4 , 0 );--106
setMoveKey( spep_2 -3 + 110, 1, -43.6, -54.6 , 0 );--5
setMoveKey( spep_2 -3 + 112, 1, 107.1, 136.4 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 146.5, 186.2 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 170.5, 216.7 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 187.3, 237.9 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 199.8, 253.7 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 209.6, 266.1 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 217.4, 276 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 223.7, 284 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 228.9, 290.6 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 233.3, 296.1 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 236.9, 300.7 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 240, 304.6 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 242.6, 308 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 244.9, 310.8 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 246.8, 313.2 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 248.4, 315.2 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 249.8, 317 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 250.8, 318.5 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 251.8, 319.7 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 252.7, 320.8 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 253.4, 321.8 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 254, 322.5 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 254.6, 323.2 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 255, 323.7 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 255.4, 324.2 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 255.7, 324.6 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 255.9, 324.9 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 256.1, 325.1 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 256.3, 325.3 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 256.4, 325.5 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 256.5, 325.6 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 256.5, 325.7 , 0 );
setMoveKey( spep_2 -3 + 176, 1, 256.6, 325.8 , 0 );
setMoveKey( spep_2 -3 + 178, 1, 256.6, 325.8 , 0 );
setMoveKey( spep_2 -3 + 180, 1, 256.7, 325.8 , 0 );
setMoveKey( spep_2 -3 + 182, 1, 256.7, 325.9 , 0 );
setMoveKey( spep_2 -3 + 186, 1, 256.7, 325.9 , 0 );
setMoveKey( spep_2 -3 + 188, 1, 256.7, 325.8 , 0 );

setMoveKey( spep_2 -3 + 190, 1, -56.3, -290.1 , 0 );--106
setMoveKey( spep_2 -3 + 192, 1, -36.1, -85.4 , 0 );
setMoveKey( spep_2 -3 + 194, 1, -54.6, -250.4 , 0 );
setMoveKey( spep_2 -3 + 196, 1, -62.7, -98.3 , 0 );
setMoveKey( spep_2 -3 + 198, 1, 129.8, 157.8 , 0 );
setMoveKey( spep_2 -3 + 200, 1, 166.3, 156.6 , 0 );
setMoveKey( spep_2 -3 + 202, 1, 250.7, 247.1 , 0 );
setMoveKey( spep_2 -3 + 204, 1, 551.8, 556.3 , 0 );
setMoveKey( spep_2 -3 + 206, 1, 768.2, 762.1 , 0 );
setMoveKey( spep_2 -3 + 208, 1, 874.6, 885.6 , 0 );
setMoveKey( spep_2 -3 + 210, 1, 945.7, 949.7 , 0 );
setMoveKey( spep_2 -3 + 219, 1, 945.7, 949.7 , 0 );
setMoveKey( spep_2 -3 + 220, 1, -417.5, -438.9 , 0 );--5
setMoveKey( spep_2 -3 + 222, 1, -161.7, -111.1 , 0 );
setMoveKey( spep_2 -3 + 224, 1, -77.3, -2.9 , 0 );
setMoveKey( spep_2 -3 + 226, 1, -21.1, 69.1 , 0 );
setMoveKey( spep_2 -3 + 228, 1, 20.5, 122.5 , 0 );
setMoveKey( spep_2 -3 + 230, 1, 52.8, 163.8 , 0 );
setMoveKey( spep_2 -3 + 232, 1, 78.4, 196.6 , 0 );
setMoveKey( spep_2 -3 + 234, 1, 99, 223 , 0 );
setMoveKey( spep_2 -3 + 236, 1, 115.7, 244.4 , 0 );
setMoveKey( spep_2 -3 + 238, 1, 129.1, 261.6 , 0 );
setMoveKey( spep_2 -3 + 240, 1, 139.9, 275.4 , 0 );
setMoveKey( spep_2 -3 + 242, 1, 148.3, 286.2 , 0 );
setMoveKey( spep_2 -3 + 244, 1, 154.9, 294.6 , 0 );
setMoveKey( spep_2 -3 + 246, 1, 159.8, 300.9 , 0 );
setMoveKey( spep_2 -3 + 248, 1, 163.3, 305.3 , 0 );
setMoveKey( spep_2 -3 + 250, 1, 165.5, 308.2 , 0 );
setMoveKey( spep_2 -3 + 252, 1, 166.8, 309.9 , 0 );
setMoveKey( spep_2 -3 + 254, 1, 167.3, 310.6 , 0 );
setMoveKey( spep_2 -3 + 256, 1, 167.4, 310.6 , 0 );
setMoveKey( spep_2 -3 + 309, 1, 167.4, 310.6 , 0 );
setMoveKey( spep_2 -3 + 310, 1, -90.6, -30.4 , 0 );
setMoveKey( spep_2 -3 + 312, 1, -84, -30.5 , 0 );
setMoveKey( spep_2 -3 + 314, 1, -57.6, -30.5 , 0 );
setMoveKey( spep_2 -3 + 316, 1, -48.1, -30.5 , 0 );
setMoveKey( spep_2 -3 + 318, 1, -31, -30.5 , 0 );
setMoveKey( spep_2 -3 + 320, 1, -28.2, -30.6 , 0 );
setMoveKey( spep_2 -3 + 322, 1, 0, -30.6 , 0 );
setMoveKey( spep_2 -3 + 324, 1, -3.6, -30.6 , 0 );
setMoveKey( spep_2 -3 + 326, 1, 22.3, -30.6 , 0 );
setMoveKey( spep_2 -3 + 328, 1, 16.1, -30.6 , 0 );
setMoveKey( spep_2 -3 + 330, 1, 35.5, -30.6 , 0 );
setMoveKey( spep_2 -3 + 332, 1, 41.9, -30.7 , 0 );
setMoveKey( spep_2 -3 + 334, 1, 44.3, -30.7 , 0 );
setMoveKey( spep_2 -3 + 336, 1, 58.9, -30.7 , 0 );
setMoveKey( spep_2 -3 + 338, 1, 55.7, -30.7 , 0 );
setMoveKey( spep_2 -3 + 340, 1, 65.4, -30.7 , 0 );
setMoveKey( spep_2 -3 + 342, 1, 65.6, -30.7 , 0 );
setMoveKey( spep_2 -3 + 344, 1, 60.5, -30.7 , 0 );
setMoveKey( spep_2 -3 + 346, 1, 78.9, -30.7 , 0 );
setMoveKey( spep_2 -3 + 348, 1, 65.9, -30.7 , 0 );
setMoveKey( spep_2 -3 + 350, 1, 107.8, -42.1 , 0 );

setMoveKey( spep_2 -3 + 352, 1, 279.4, -33.3 , 0 );
setMoveKey( spep_2 -3 + 354, 1, 272.7, -29.4 , 0 );
setMoveKey( spep_2 -3 + 356, 1, 287.7, -34.3 , 0 );
setMoveKey( spep_2 -3 + 358, 1, 277.3, -19.9 , 0 );
setMoveKey( spep_2 -3 + 360, 1, 252.5, -19.7 , 0 );
setMoveKey( spep_2 -3 + 362, 1, 286.3, -19.2 , 0 );
setMoveKey( spep_2 -3 + 364, 1, 279.8, -29.6 , 0 );
setMoveKey( spep_2 -3 + 366, 1, 291.5, -12.8 , 0 );
setMoveKey( spep_2 -3 + 368, 1, 276.8, -25.1 , 0 );
setMoveKey( spep_2 -3 + 370, 1, 293.3, -12 , 0 );
setMoveKey( spep_2 -3 + 372, 1, 411.3, -25.5 , 0 );
setMoveKey( spep_2 -3 + 374, 1, 536.7, -19.9 , 0 );
setMoveKey( spep_2 -3 + 376, 1, 660.9, -19.9 , 0 );
setMoveKey( spep_2 -3 + 378, 1, 785.1, -19.9 , 0 );
setMoveKey( spep_2 -3 + 380, 1, 909.3, -19.9 , 0 );



setScaleKey( spep_2 -3 + 60, 1, 2.25, 2.25 );
setScaleKey( spep_2 -3 + 74, 1, 2.25, 2.25 );
setScaleKey( spep_2 -3 + 75, 1, 2.25, 2.25 );
setScaleKey( spep_2 -3 + 76, 1, 2.86, 2.86 );

setScaleKey( spep_2 -3 + 78, 1, 2.25, 2.25 );
setScaleKey( spep_2 -3 + 80, 1, 2.59, 2.59 );
setScaleKey( spep_2 -3 + 82, 1, 2.25, 2.25 );

setScaleKey( spep_2 -3 + 100, 1, 3.73, 3.73 );
setScaleKey( spep_2 -3 + 102, 1, 3.63, 3.63 );
setScaleKey( spep_2 -3 + 104, 1, 3.35, 3.35 );
setScaleKey( spep_2 -3 + 106, 1, 2.89, 2.89 );
setScaleKey( spep_2 -3 + 107, 1, 6.63, 6.63 );
setScaleKey( spep_2 -3 + 108, 1, 6.63, 6.63 );
setScaleKey( spep_2 -3 + 109, 1, 6.63, 6.63 );
setScaleKey( spep_2 -3 + 110, 1, 4.04, 4.04 );
setScaleKey( spep_2 -3 + 112, 1, 2.07, 2.07 );
setScaleKey( spep_2 -3 + 114, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 116, 1, 1.24, 1.24 );
setScaleKey( spep_2 -3 + 118, 1, 1.02, 1.02 );
setScaleKey( spep_2 -3 + 120, 1, 0.86, 0.86 );
setScaleKey( spep_2 -3 + 122, 1, 0.73, 0.73 );
setScaleKey( spep_2 -3 + 124, 1, 0.63, 0.63 );
setScaleKey( spep_2 -3 + 126, 1, 0.55, 0.55 );
setScaleKey( spep_2 -3 + 128, 1, 0.48, 0.48 );
setScaleKey( spep_2 -3 + 130, 1, 0.42, 0.42 );
setScaleKey( spep_2 -3 + 132, 1, 0.38, 0.38 );
setScaleKey( spep_2 -3 + 134, 1, 0.34, 0.34 );
setScaleKey( spep_2 -3 + 136, 1, 0.3, 0.3 );
setScaleKey( spep_2 -3 + 138, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 140, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 142, 1, 0.23, 0.23 );
setScaleKey( spep_2 -3 + 144, 1, 0.21, 0.21 );
setScaleKey( spep_2 -3 + 146, 1, 0.19, 0.19 );
setScaleKey( spep_2 -3 + 148, 1, 0.18, 0.18 );
setScaleKey( spep_2 -3 + 150, 1, 0.17, 0.17 );
setScaleKey( spep_2 -3 + 152, 1, 0.16, 0.16 );
setScaleKey( spep_2 -3 + 154, 1, 0.15, 0.15 );
setScaleKey( spep_2 -3 + 156, 1, 0.14, 0.14 );
setScaleKey( spep_2 -3 + 158, 1, 0.14, 0.14 );
setScaleKey( spep_2 -3 + 160, 1, 0.13, 0.13 );
setScaleKey( spep_2 -3 + 164, 1, 0.13, 0.13 );
setScaleKey( spep_2 -3 + 166, 1, 0.12, 0.12 );
setScaleKey( spep_2 -3 + 189, 1, 0.12, 0.12 );

setScaleKey( spep_2 -3 + 190, 1, 7.15, 7.15 );
setScaleKey( spep_2 -3 + 192, 1, 4.39, 4.39 );
setScaleKey( spep_2 -3 + 194, 1, 5.83, 5.83 );
setScaleKey( spep_2 -3 + 196, 1, 3.53, 3.53 );
setScaleKey( spep_2 -3 + 198, 1, 2.53, 2.53 );
setScaleKey( spep_2 -3 + 219, 1, 2.53, 2.53 );

setScaleKey( spep_2 -3 + 220, 1, 7.63, 7.63 );
setScaleKey( spep_2 -3 + 222, 1, 4.43, 4.43 );
setScaleKey( spep_2 -3 + 224, 1, 3.38, 3.38 );
setScaleKey( spep_2 -3 + 226, 1, 2.68, 2.68 );
setScaleKey( spep_2 -3 + 228, 1, 2.16, 2.16 );
setScaleKey( spep_2 -3 + 230, 1, 1.75, 1.75 );
setScaleKey( spep_2 -3 + 232, 1, 1.43, 1.43 );
setScaleKey( spep_2 -3 + 234, 1, 1.17, 1.17 );
setScaleKey( spep_2 -3 + 236, 1, 0.97, 0.97 );
setScaleKey( spep_2 -3 + 238, 1, 0.8, 0.8 );
setScaleKey( spep_2 -3 + 240, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 242, 1, 0.56, 0.56 );
setScaleKey( spep_2 -3 + 244, 1, 0.48, 0.48 );
setScaleKey( spep_2 -3 + 246, 1, 0.42, 0.42 );
setScaleKey( spep_2 -3 + 248, 1, 0.37, 0.37 );
setScaleKey( spep_2 -3 + 250, 1, 0.34, 0.34 );
setScaleKey( spep_2 -3 + 252, 1, 0.33, 0.33 );
setScaleKey( spep_2 -3 + 254, 1, 0.32, 0.32 );
setScaleKey( spep_2 -3 + 309, 1, 0.32, 0.32 );
setScaleKey( spep_2 -3 + 310, 1, 2.53, 2.53 );
setScaleKey( spep_2 -3 + 312, 1, 2.55, 2.55 );
setScaleKey( spep_2 -3 + 314, 1, 2.57, 2.57 );
setScaleKey( spep_2 -3 + 316, 1, 2.59, 2.59 );
setScaleKey( spep_2 -3 + 318, 1, 2.61, 2.61 );
setScaleKey( spep_2 -3 + 320, 1, 2.62, 2.62 );
setScaleKey( spep_2 -3 + 322, 1, 2.64, 2.64 );
setScaleKey( spep_2 -3 + 324, 1, 2.66, 2.66 );
setScaleKey( spep_2 -3 + 326, 1, 2.67, 2.67 );
setScaleKey( spep_2 -3 + 328, 1, 2.68, 2.68 );
setScaleKey( spep_2 -3 + 330, 1, 2.69, 2.69 );
setScaleKey( spep_2 -3 + 332, 1, 2.7, 2.7 );
setScaleKey( spep_2 -3 + 334, 1, 2.71, 2.71 );
setScaleKey( spep_2 -3 + 336, 1, 2.72, 2.72 );
setScaleKey( spep_2 -3 + 338, 1, 2.73, 2.73 );
setScaleKey( spep_2 -3 + 340, 1, 2.74, 2.74 );
setScaleKey( spep_2 -3 + 344, 1, 2.74, 2.74 );
setScaleKey( spep_2 -3 + 346, 1, 2.75, 2.75 );
setScaleKey( spep_2 -3 + 348, 1, 2.75, 2.75 );
setScaleKey( spep_2 -3 + 350, 1, 3.77, 3.77 );

setScaleKey( spep_2 -3 + 352, 1, 3.02, 3.02 );
setScaleKey( spep_2 -3 + 354, 1, 3.45, 3.45 );
setScaleKey( spep_2 -3 + 356, 1, 2.91, 2.91 );
setScaleKey( spep_2 -3 + 358, 1, 2.78, 2.78 );
setScaleKey( spep_2 -3 + 360, 1, 2.79, 2.79 );
setScaleKey( spep_2 -3 + 362, 1, 2.79, 2.79 );
setScaleKey( spep_2 -3 + 364, 1, 2.8, 2.8 );
setScaleKey( spep_2 -3 + 368, 1, 2.8, 2.8 );
setScaleKey( spep_2 -3 + 370, 1, 2.81, 2.81 );
setScaleKey( spep_2 -3 + 372, 1, 2.85, 2.85 );
setScaleKey( spep_2 -3 + 374, 1, 2.89, 2.89 );
setScaleKey( spep_2 -3 + 376, 1, 2.93, 2.93 );
setScaleKey( spep_2 -3 + 378, 1, 2.97, 2.97 );
setScaleKey( spep_2 -3 + 380, 1, 3.01, 3.01 );



setRotateKey( spep_2 -3 + 60, 1, 0 );
setRotateKey( spep_2 -3 + 76, 1, 0 );
setRotateKey( spep_2 -3 + 78, 1, -23.2 );
setRotateKey( spep_2 -3 + 82, 1, -23.2 );

setRotateKey( spep_2 -3 + 100, 1, -100 );
setRotateKey( spep_2 -3 + 106, 1, -100 );
setRotateKey( spep_2 -3 + 107, 1, -39.9 );
setRotateKey( spep_2 -3 + 108, 1, -39.9 );
setRotateKey( spep_2 -3 + 109, 1, -39.9 );
setRotateKey( spep_2 -3 + 110, 1, 31.4 );
setRotateKey( spep_2 -3 + 112, 1, 31.3 );
setRotateKey( spep_2 -3 + 189, 1, 31.3 );
setRotateKey( spep_2 -3 + 190, 1, -55.8 );
setRotateKey( spep_2 -3 + 196, 1, -55.8 );
setRotateKey( spep_2 -3 + 198, 1, -33.7 );
setRotateKey( spep_2 -3 + 200, 1, -31.8 );
setRotateKey( spep_2 -3 + 202, 1, -28.2 );
setRotateKey( spep_2 -3 + 204, 1, -12.9 );
setRotateKey( spep_2 -3 + 206, 1, -2.8 );
setRotateKey( spep_2 -3 + 208, 1, 2.7 );
setRotateKey( spep_2 -3 + 210, 1, 6 );
setRotateKey( spep_2 -3 + 219, 1, 6 );
setRotateKey( spep_2 -3 + 220, 1, 52.5 );
setRotateKey( spep_2 -3 + 224, 1, 52.5 );
setRotateKey( spep_2 -3 + 226, 1, 52.4 );
setRotateKey( spep_2 -3 + 309, 1, 52.4 );

setRotateKey( spep_2 -3 + 310, 1, 141.4 );
setRotateKey( spep_2 -3 + 312, 1, 140.2 );
setRotateKey( spep_2 -3 + 314, 1, 139 );
setRotateKey( spep_2 -3 + 316, 1, 137.8 );
setRotateKey( spep_2 -3 + 318, 1, 136.8 );
setRotateKey( spep_2 -3 + 320, 1, 135.8 );
setRotateKey( spep_2 -3 + 322, 1, 134.9 );
setRotateKey( spep_2 -3 + 324, 1, 134 );
setRotateKey( spep_2 -3 + 326, 1, 133.2 );
setRotateKey( spep_2 -3 + 328, 1, 132.5 );
setRotateKey( spep_2 -3 + 330, 1, 131.8 );
setRotateKey( spep_2 -3 + 332, 1, 131.2 );
setRotateKey( spep_2 -3 + 334, 1, 130.6 );
setRotateKey( spep_2 -3 + 336, 1, 130.2 );
setRotateKey( spep_2 -3 + 338, 1, 129.8 );
setRotateKey( spep_2 -3 + 340, 1, 129.4 );
setRotateKey( spep_2 -3 + 342, 1, 129.1 );
setRotateKey( spep_2 -3 + 344, 1, 128.9 );
setRotateKey( spep_2 -3 + 346, 1, 128.7 );
setRotateKey( spep_2 -3 + 348, 1, 128.6 );
setRotateKey( spep_2 -3 + 353, 1, 128.6 );

setRotateKey( spep_2 -3 + 354, 1, 122.3 );
setRotateKey( spep_2 -3 + 356, 1, 121.6 );
setRotateKey( spep_2 -3 + 358, 1, 121 );
setRotateKey( spep_2 -3 + 360, 1, 120.5 );
setRotateKey( spep_2 -3 + 362, 1, 120.1 );
setRotateKey( spep_2 -3 + 364, 1, 119.7 );
setRotateKey( spep_2 -3 + 366, 1, 119.5 );
setRotateKey( spep_2 -3 + 368, 1, 119.3 );
setRotateKey( spep_2 -3 + 380, 1, 119.3 );


--SE
playSe( spep_2, SE_04 );  --ゴゴゴ
playSe( spep_2+30, 43 );  --瞬間移動
playSe( spep_2+70, 1009 );  --タックル
playSe( spep_2+106,44 );  --飛んでいく音
playSe( spep_2+130,SE_04 );  --飛んでいく音
playSe( spep_2+196,1010 );  --パンチ
playSe( spep_2+219,8 );  --飛んでいく音
playSe( spep_2+256,9 );  --飛んでいく音
playSe( spep_2+348,1011 );  --飛んでいく音

--次の準備
spep_3=spep_2+380;

------------------------------------------------------
-- かめはめ波
------------------------------------------------------
k = 10;
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_05,  0x100, -1, 0, 0, 0 );  -- ぐるっと回るシーン
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 350 -k, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 350 -k, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 350 -k, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 350 -k, finish_f, 255 );
setEffAlphaKey( spep_3 + 351 -k, finish_f, 0 );
setEffAlphaKey( spep_3 + 352 -k, finish_f, 0 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_3 + 0, SP_06,  0x80, -1, 0, 0, 0 );  -- ぐるっと回るシーン
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 350 -k, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 350 -k, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 350 -k, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 350 -k, finish_b, 255 );

--  ** KO  **  --
ko = entryEffectLife( spep_3 + 350 -k, SP_07, 20,  0x100, -1, 0, 0, 0 );  -- ぐるっと回るシーン
setEffMoveKey( spep_3 + 350 -k, ko, 0, 0 , 0 );
setEffMoveKey( spep_3 + 370 -k, ko, 0, 0 , 0 );
setEffScaleKey( spep_3 + 350 -k, ko, 1.0, 1.0 );
setEffScaleKey( spep_3 + 370 -k, ko, 1.0, 1.0 );
setEffRotateKey( spep_3 + 350 -k, ko, 0 );
setEffRotateKey( spep_3 + 370 -k, ko, 0 );
setEffAlphaKey( spep_3 + 350 -k, ko, 255 );
setEffAlphaKey( spep_3 + 370 -k, ko, 255 );


--敵の動き
setDisp(spep_3  ,1,1);
setDisp(spep_3  +66,1,0);
setDisp(spep_3 -3 +150,1,1);
setDisp(spep_3 -3 +188,1,0);

changeAnime(spep_3  ,1,5);
changeAnime(spep_3 -3+150 ,1,107);

setMoveKey( spep_3  + 0, 1, -20.7, -830 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, -15.3, -431.2 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -13, -262.3 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -11.3, -137.2 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -10, -37.6 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -8.9, 43.8 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -7.9, 110.6 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -7.2, 165 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -6.6, 208.4 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -6.2, 241.7 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -5.8, 265.6 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -5.6, 280.8 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -5.5, 292 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -5.4, 301.7 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -5.2, 310.3 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -5.1, 318.3 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -5, 325.8 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -4.9, 332.8 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -4.8, 339.3 , 0 );
setMoveKey( spep_3 -3 + 38, 1, -4.8, 345.6 , 0 );
setMoveKey( spep_3 -3 + 40, 1, -4.7, 351.5 , 0 );
setMoveKey( spep_3 -3 + 42, 1, -4.6, 357.1 , 0 );
setMoveKey( spep_3 -3 + 44, 1, -4.5, 362.4 , 0 );
setMoveKey( spep_3 -3 + 46, 1, -4.5, 367.4 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -4.4, 372.2 , 0 );
setMoveKey( spep_3 -3 + 50, 1, -4.5, 374.5 , 0 );
setMoveKey( spep_3 -3 + 52, 1, -5.4, 390.7 , 0 );
setMoveKey( spep_3 -3 + 54, 1, -7.7, 414.7 , 0 );
setMoveKey( spep_3 -3 + 56, 1, -11.9, 452.5 , 0 );
setMoveKey( spep_3 -3 + 58, 1, -18.5, 510 , 0 );
setMoveKey( spep_3 -3 + 60, 1, -28.4, 600.9 , 0 );
setMoveKey( spep_3 -3 + 62, 1, -42.9, 733.3 , 0 );
setMoveKey( spep_3 -3 + 64, 1, -64.7, 924.4 , 0 );
setMoveKey( spep_3 -3 + 66, 1, -100.7, 1250.2 , 0 );
setMoveKey( spep_3 -3 + 68, 1, -223.1, 2322.3 , 0 );
setMoveKey( spep_3 -3 + 150, 1, 1704.1, 1144 , 0 );
setMoveKey( spep_3 -3 + 152, 1, 1690.1, 1135.2 , 0 );
setMoveKey( spep_3 -3 + 154, 1, 1667.9, 1118.7 , 0 );
setMoveKey( spep_3 -3 + 156, 1, 1615.1, 1076.2 , 0 );
setMoveKey( spep_3 -3 + 158, 1, 1491.9, 984 , 0 );
setMoveKey( spep_3 -3 + 160, 1, 1247.7, 800.6 , 0 );
setMoveKey( spep_3 -3 + 162, 1, 868.4, 516.1 , 0 );
setMoveKey( spep_3 -3 + 164, 1, 607.9, 318.3 , 0 );
setMoveKey( spep_3 -3 + 166, 1, 458.4, 197.5 , 0 );
setMoveKey( spep_3 -3 + 168, 1, 383, 138.6 , 0 );
setMoveKey( spep_3 -3 + 170, 1, 299.6, 68.4 , 0 );
setMoveKey( spep_3 -3 + 172, 1, 241.2, 20.1 , 0 );
setMoveKey( spep_3 -3 + 174, 1, 219.4, 7.2 , 0 );
setMoveKey( spep_3 -3 + 176, 1, 174.9, -32.2 , 0 );
setMoveKey( spep_3 -3 + 178, 1, 158.4, -43.7 , 0 );
setMoveKey( spep_3 -3 + 180, 1, 137.2, -63.3 , 0 );
setMoveKey( spep_3 -3 + 182, 1, 134.3, -62.5 , 0 );
setMoveKey( spep_3 -3 + 184, 1, 127.6, -69.7 , 0 );
setMoveKey( spep_3 -3 + 186, 1, 127.4, -71.8 , 0 );
setMoveKey( spep_3 -3 + 188, 1, 132.7, -63.1 , 0 );

setScaleKey( spep_3  + 0, 1, 5.2, 5.2 );
--setScaleKey( spep_3 -3 + 2, 1, 3.62, 3.62 );
setScaleKey( spep_3 -3 + 4, 1, 2.95, 2.95 );
setScaleKey( spep_3 -3 + 6, 1, 2.45, 2.45 );
setScaleKey( spep_3 -3 + 8, 1, 2.06, 2.06 );
setScaleKey( spep_3 -3 + 10, 1, 1.73, 1.73 );
setScaleKey( spep_3 -3 + 12, 1, 1.47, 1.47 );
setScaleKey( spep_3 -3 + 14, 1, 1.25, 1.25 );
setScaleKey( spep_3 -3 + 16, 1, 1.08, 1.08 );
setScaleKey( spep_3 -3 + 18, 1, 0.95, 0.95 );
setScaleKey( spep_3 -3 + 20, 1, 0.85, 0.85 );
setScaleKey( spep_3 -3 + 22, 1, 0.79, 0.79 );
setScaleKey( spep_3 -3 + 24, 1, 0.75, 0.75 );
setScaleKey( spep_3 -3 + 26, 1, 0.71, 0.71 );
setScaleKey( spep_3 -3 + 28, 1, 0.67, 0.67 );
setScaleKey( spep_3 -3 + 30, 1, 0.64, 0.64 );
setScaleKey( spep_3 -3 + 32, 1, 0.61, 0.61 );
setScaleKey( spep_3 -3 + 34, 1, 0.59, 0.59 );
setScaleKey( spep_3 -3 + 36, 1, 0.56, 0.56 );
setScaleKey( spep_3 -3 + 38, 1, 0.53, 0.53 );
setScaleKey( spep_3 -3 + 40, 1, 0.51, 0.51 );
setScaleKey( spep_3 -3 + 42, 1, 0.49, 0.49 );
setScaleKey( spep_3 -3 + 44, 1, 0.47, 0.47 );
setScaleKey( spep_3 -3 + 46, 1, 0.45, 0.45 );
setScaleKey( spep_3 -3 + 48, 1, 0.43, 0.43 );
setScaleKey( spep_3 -3 + 50, 1, 0.41, 0.41 );
setScaleKey( spep_3 -3 + 52, 1, 0.4, 0.4 );
setScaleKey( spep_3 -3 + 54, 1, 0.4, 0.4 );
setScaleKey( spep_3 -3 + 56, 1, 0.42, 0.42 );
setScaleKey( spep_3 -3 + 58, 1, 0.43, 0.43 );
setScaleKey( spep_3 -3 + 60, 1, 0.48, 0.48 );
setScaleKey( spep_3 -3 + 62, 1, 0.55, 0.55 );
setScaleKey( spep_3 -3 + 64, 1, 0.67, 0.67 );
setScaleKey( spep_3 -3 + 66, 1, 0.85, 0.85 );
setScaleKey( spep_3 -3 + 68, 1, 1.51, 1.51 );
setScaleKey( spep_3 -3 + 150, 1, 1.28, 1.28 );
setScaleKey( spep_3 -3 + 152, 1, 1.26, 1.26 );
setScaleKey( spep_3 -3 + 154, 1, 1.24, 1.24 );
setScaleKey( spep_3 -3 + 156, 1, 1.22, 1.22 );
setScaleKey( spep_3 -3 + 158, 1, 1.13, 1.13 );
setScaleKey( spep_3 -3 + 160, 1, 0.97, 0.97 );
setScaleKey( spep_3 -3 + 162, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 164, 1, 0.54, 0.54 );
setScaleKey( spep_3 -3 + 166, 1, 0.46, 0.46 );
setScaleKey( spep_3 -3 + 168, 1, 0.38, 0.38 );
setScaleKey( spep_3 -3 + 170, 1, 0.36, 0.36 );
setScaleKey( spep_3 -3 + 172, 1, 0.34, 0.34 );
setScaleKey( spep_3 -3 + 174, 1, 0.28, 0.28 );
setScaleKey( spep_3 -3 + 176, 1, 0.29, 0.29 );
setScaleKey( spep_3 -3 + 178, 1, 0.27, 0.27 );
setScaleKey( spep_3 -3 + 180, 1, 0.28, 0.28 );
setScaleKey( spep_3 -3 + 182, 1, 0.25, 0.25 );
setScaleKey( spep_3 -3 + 184, 1, 0.26, 0.26 );
setScaleKey( spep_3 -3 + 186, 1, 0.27, 0.27 );
setScaleKey( spep_3 -3 + 188, 1, 0.24, 0.24 );

setRotateKey( spep_3  + 0, 1, 26.8 );
setRotateKey( spep_3 -3 + 68, 1, 26.8 );
setRotateKey( spep_3 -3 + 150, 1, -84.3 );
setRotateKey( spep_3 -3 + 158, 1, -84.3 );
setRotateKey( spep_3 -3 + 160, 1, -84.2 );
setRotateKey( spep_3 -3 + 162, 1, -84.2 );
setRotateKey( spep_3 -3 + 164, 1, -84.1 );
setRotateKey( spep_3 -3 + 188, 1, -84.1 );

--SE
playSe( spep_3, 44 );  --近く
SE1=playSe( spep_3+68 ,55 );  --ため
stopSe(spep_3+108,SE1,10);
playSe( spep_3+118 ,1022 );  --うつ
playSe( spep_3+180 ,1023 );  --巻き込まれる

entryFadeBg(spep_3,  0,  360,  0,  0,  0,  0,  255);  --黒背景

-- ダメージ表示
dealDamage(spep_3+168);
entryFade( spep_3+342 -k, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(spep_3 + 352 -k);
else 


------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- ぐるっと回るシーン
------------------------------------------------------
--はじめの準備
spep_0 = 0;

-- ** エフェクト等 ** --
tame_b = entryEffectLife( spep_0 + 0, SP_01r,  200 ,0x80, -1, 0, 0, 0 );  
setEffMoveKey( spep_0 + 0, tame_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 200, tame_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 200, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_b, 0 );
setEffRotateKey( spep_0 + 200, tame_b, 0 );
setEffAlphaKey( spep_0 + 0, tame_b, 255 );
setEffAlphaKey( spep_0 + 200, tame_b, 255 );

-- ** エフェクト等 ** --
tame_f = entryEffectLife( spep_0 + 0, SP_02r,  200 ,0x100, -1, 0, 0, 0 );  
setEffMoveKey( spep_0 + 0, tame_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 200, tame_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 200, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_f, 0 );
setEffRotateKey( spep_0 + 200, tame_f, 0 );
setEffAlphaKey( spep_0 + 0, tame_f, 255 );
setEffAlphaKey( spep_0 + 198, tame_f, 255); 
setEffAlphaKey( spep_0 + 199, tame_f, 255); 
setEffAlphaKey( spep_0 + 200, tame_f, 0 );

--敵の動き
setDisp(spep_0 ,1,1);
setDisp(spep_0 +200,1,0);

changeAnime(spep_0 ,1,102);
changeAnime(spep_0 -3+110,1,117);
changeAnime(spep_0 -3+158,1,5);

setMoveKey( spep_0  + 0, 1, 203.5, -95.1 , 0 );
setMoveKey( spep_0  + 1, 1, 203.5, -95.1 , 0 );
setMoveKey( spep_0  + 2, 1, 203.5, -95.1 , 0 );
setMoveKey( spep_0  + 3, 1, 203.5, -95.1 , 0 );
setMoveKey( spep_0  + 4, 1, 203.5, -95.1 , 0 );
setMoveKey( spep_0  + 5, 1, 203.5, -95.1 , 0 );

setScaleKey( spep_0  + 0, 1, 2.6, 2.6 );
setScaleKey( spep_0  + 1, 1, 2.6, 2.6 );
setScaleKey( spep_0  + 2, 1, 2.6, 2.6 );
setScaleKey( spep_0  + 3, 1, 2.6, 2.6 );
setScaleKey( spep_0  + 4, 1, 2.6, 2.6 );
setScaleKey( spep_0  + 5, 1, 2.6, 2.6 );

setRotateKey( spep_0  + 0, 1, 2.8 );
setRotateKey( spep_0  + 1, 1, 2.8 );
setRotateKey( spep_0  + 2, 1, 2.8 );
setRotateKey( spep_0  + 3, 1, 2.8 );
setRotateKey( spep_0  + 4, 1, 2.8 );
setRotateKey( spep_0  + 5, 1, 2.8 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える

--    stopSe( SP_dodge - 12, SE0, 0 );
--    stopSe( SP_dodge - 12, SE1, 0 );

    playSe( SP_dodge - 12, 1042 );
    
    pauseAll( SP_dodge, 67 );
    
    
    -- ** 敵キャラクター ** --
--    changeAnime( SP_dodge + 0, 1, 100 );  --待機正面向き
    
    setMoveKey( SP_dodge + 0, 1, 203.5, -95.1 , 0 );
    setMoveKey( SP_dodge + 10, 1, 203.5, -95.1 , 0 );
    
    setScaleKey( SP_dodge + 0, 1, 2.6, 2.6 );
    setScaleKey( SP_dodge + 10, 1, 2.6, 2.6 );
    
    setRotateKey( SP_dodge + 0, 1, 2.8 );
    setRotateKey( SP_dodge + 10, 1, 2.8 );
    
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


setMoveKey( spep_0 -3 + 78, 1, 203.5, -95.1 , 0 );
setMoveKey( spep_0 -3 + 80, 1, 204.9, -95 , 0 );
setMoveKey( spep_0 -3 + 82, 1, 209.4, -94.7 , 0 );
setMoveKey( spep_0 -3 + 84, 1, 216.9, -94.3 , 0 );
setMoveKey( spep_0 -3 + 86, 1, 227.9, -93.6 , 0 );
setMoveKey( spep_0 -3 + 88, 1, 242.4, -92.7 , 0 );
setMoveKey( spep_0 -3 + 90, 1, 260.9, -91.5 , 0 );
setMoveKey( spep_0 -3 + 92, 1, 283.8, -90.1 , 0 );
setMoveKey( spep_0 -3 + 94, 1, 311.5, -88.4 , 0 );
setMoveKey( spep_0 -3 + 96, 1, 344.7, -86.3 , 0 );
setMoveKey( spep_0 -3 + 98, 1, 384.3, -83.9 , 0 );
setMoveKey( spep_0 -3 + 100, 1, 431.5, -81 , 0 );
setMoveKey( spep_0 -3 + 102, 1, 488.1, -77.5 , 0 );
setMoveKey( spep_0 -3 + 104, 1, 556.5, -73.2 , 0 );
setMoveKey( spep_0 -3 + 106, 1, 641.1, -68 , 0 );
setMoveKey( spep_0 -3 + 108, 1, 750, -61.4 , 0 );
setMoveKey( spep_0 -3 + 110, 1, 577.9, 48.6 , 0 );
setMoveKey( spep_0 -3 + 112, 1, 572.9, 48.6 , 0 );
setMoveKey( spep_0 -3 + 114, 1, 567.9, 48.6 , 0 );
setMoveKey( spep_0 -3 + 116, 1, 562.9, 48.6 , 0 );
setMoveKey( spep_0 -3 + 118, 1, 557.9, 48.5 , 0 );
setMoveKey( spep_0 -3 + 120, 1, 390.7, 48.6 , 0 );
setMoveKey( spep_0 -3 + 122, 1, 331.6, 48.6 , 0 );
setMoveKey( spep_0 -3 + 124, 1, 299.6, 48.6 , 0 );
setMoveKey( spep_0 -3 + 126, 1, 278.9, 48.6 , 0 );
setMoveKey( spep_0 -3 + 128, 1, 264.5, 48.6 , 0 );
setMoveKey( spep_0 -3 + 130, 1, 253.9, 48.6 , 0 );
setMoveKey( spep_0 -3 + 132, 1, 245.9, 48.6 , 0 );
setMoveKey( spep_0 -3 + 134, 1, 240, 48.6 , 0 );
setMoveKey( spep_0 -3 + 136, 1, 235.4, 48.6 , 0 );
setMoveKey( spep_0 -3 + 138, 1, 232, 48.6 , 0 );
setMoveKey( spep_0 -3 + 140, 1, 229.5, 48.6 , 0 );
setMoveKey( spep_0 -3 + 142, 1, 227.8, 48.6 , 0 );
setMoveKey( spep_0 -3 + 144, 1, 226.6, 48.6 , 0 );
setMoveKey( spep_0 -3 + 146, 1, 226, 48.6 , 0 );
setMoveKey( spep_0 -3 + 148, 1, 225.8, 48.6 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 225.8, 48.6 , 0 );
setMoveKey( spep_0 -3 + 158, 1, 225.9, 48.6 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 240.2, 45.7 , 0 );
setMoveKey( spep_0 -3 + 162, 1, 245.1, 44.7 , 0 );
setMoveKey( spep_0 -3 + 164, 1, 248.3, 44 , 0 );
setMoveKey( spep_0 -3 + 166, 1, 250.8, 43.5 , 0 );
setMoveKey( spep_0 -3 + 168, 1, 252.7, 43.1 , 0 );
setMoveKey( spep_0 -3 + 170, 1, 254.3, 42.8 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 255.6, 42.5 , 0 );
setMoveKey( spep_0 -3 + 174, 1, 256.7, 42.3 , 0 );
setMoveKey( spep_0 -3 + 176, 1, 257.6, 42.1 , 0 );
setMoveKey( spep_0 -3 + 178, 1, 258.3, 42 , 0 );
setMoveKey( spep_0 -3 + 180, 1, 259, 41.8 , 0 );
setMoveKey( spep_0 -3 + 182, 1, 259.5, 41.7 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 259.9, 41.6 , 0 );
setMoveKey( spep_0 -3 + 186, 1, 260.2, 41.6 , 0 );
setMoveKey( spep_0 -3 + 188, 1, 260.5, 41.5 , 0 );
setMoveKey( spep_0 -3 + 190, 1, 260.7, 41.5 , 0 );
setMoveKey( spep_0 -3 + 192, 1, 260.8, 41.4 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 260.9, 41.4 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 260.9, 41.4 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 261, 41.4 , 0 );
setMoveKey( spep_0  + 200, 1, 260.9, 41.4 , 0 );


setScaleKey( spep_0 -3 + 86, 1, 2.6, 2.6 );
setScaleKey( spep_0 -3 + 88, 1, 2.59, 2.59 );
setScaleKey( spep_0 -3 + 90, 1, 2.59, 2.59 );
setScaleKey( spep_0 -3 + 92, 1, 2.58, 2.58 );
setScaleKey( spep_0 -3 + 94, 1, 2.57, 2.57 );
setScaleKey( spep_0 -3 + 96, 1, 2.56, 2.56 );
setScaleKey( spep_0 -3 + 98, 1, 2.53, 2.53 );
setScaleKey( spep_0 -3 + 100, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 102, 1, 2.45, 2.45 );
setScaleKey( spep_0 -3 + 104, 1, 2.38, 2.38 );
setScaleKey( spep_0 -3 + 106, 1, 2.28, 2.28 );
setScaleKey( spep_0 -3 + 108, 1, 1.94, 1.94 );
setScaleKey( spep_0 -3 + 110, 1, 0.7, 0.7 );
setScaleKey( spep_0 -3 + 112, 1, 0.69, 0.69 );
setScaleKey( spep_0 -3 + 114, 1, 0.68, 0.68 );
setScaleKey( spep_0 -3 + 116, 1, 0.66, 0.66 );
setScaleKey( spep_0 -3 + 118, 1, 0.65, 0.65 );
setScaleKey( spep_0 -3 + 120, 1, 0.64, 0.64 );
setScaleKey( spep_0 -3 + 156, 1, 0.64, 0.64 );
setScaleKey( spep_0 -3 + 158, 1, 0.5, 0.5 );
setScaleKey( spep_0 -3 + 160, 1, 0.36, 0.36 );
setScaleKey( spep_0 -3 + 162, 1, 0.32, 0.32 );
setScaleKey( spep_0 -3 + 164, 1, 0.29, 0.29 );
setScaleKey( spep_0 -3 + 166, 1, 0.27, 0.27 );
setScaleKey( spep_0 -3 + 168, 1, 0.25, 0.25 );
setScaleKey( spep_0 -3 + 170, 1, 0.23, 0.23 );
setScaleKey( spep_0 -3 + 172, 1, 0.22, 0.22 );
setScaleKey( spep_0 -3 + 174, 1, 0.21, 0.21 );
setScaleKey( spep_0 -3 + 176, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 178, 1, 0.19, 0.19 );
setScaleKey( spep_0 -3 + 180, 1, 0.19, 0.19 );
setScaleKey( spep_0 -3 + 182, 1, 0.18, 0.18 );
setScaleKey( spep_0 -3 + 186, 1, 0.18, 0.18 );
setScaleKey( spep_0 -3 + 188, 1, 0.17, 0.17 );
setScaleKey( spep_0  + 200, 1, 0.17, 0.17 );


setRotateKey( spep_0 -3 + 78, 1, 2.8 );
setRotateKey( spep_0 -3 + 80, 1, 3 );
setRotateKey( spep_0 -3 + 82, 1, 3.1 );
setRotateKey( spep_0 -3 + 84, 1, 3.3 );
setRotateKey( spep_0 -3 + 86, 1, 3.4 );
setRotateKey( spep_0 -3 + 88, 1, 3.5 );
setRotateKey( spep_0 -3 + 90, 1, 3.7 );
setRotateKey( spep_0 -3 + 92, 1, 3.8 );
setRotateKey( spep_0 -3 + 94, 1, 4 );
setRotateKey( spep_0 -3 + 96, 1, 4.1 );
setRotateKey( spep_0 -3 + 98, 1, 4.3 );
setRotateKey( spep_0 -3 + 100, 1, 4.4 );
setRotateKey( spep_0 -3 + 102, 1, 4.6 );
setRotateKey( spep_0 -3 + 104, 1, 4.7 );
setRotateKey( spep_0 -3 + 106, 1, 4.9 );
setRotateKey( spep_0 -3 + 108, 1, 5 );
setRotateKey( spep_0 -3 + 110, 1, 0 );
setRotateKey( spep_0 -3 + 156, 1, 0 );
setRotateKey( spep_0 -3 + 158, 1, 25.8 );
setRotateKey( spep_0  + 200, 1, 25.8 );


-- ** 顔カットイン ** --
--speff = entryEffect( spep_0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 12,  190006, 72, 0x100, -1, 0, -109.9, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 12, ctgogo, 72, 10 );
 
setEffMoveKey( spep_0 + 12, ctgogo, -109.9, 512.8 , 0 );
setEffMoveKey( spep_0 + 84, ctgogo, -109.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 12, ctgogo, -0.84, 0.84 );
setEffScaleKey( spep_0 + 76, ctgogo, -0.84, 0.84 );
setEffScaleKey( spep_0 + 78, ctgogo, -1.2, 1.2 );
setEffScaleKey( spep_0 + 80, ctgogo, -1.3, 1.3 );
setEffScaleKey( spep_0 + 82, ctgogo, -1.66, 1.66 );
setEffScaleKey( spep_0 + 84, ctgogo, -2.02, 2.02 );
 
setEffRotateKey( spep_0 + 12, ctgogo, 0 );
setEffRotateKey( spep_0 + 84, ctgogo, 0 );

setEffAlphaKey( spep_0 + 12, ctgogo, 0 );
setEffAlphaKey( spep_0 + 13, ctgogo, 255 );
setEffAlphaKey( spep_0 + 14, ctgogo, 255 );
setEffAlphaKey( spep_0 + 84, ctgogo, 255 );
]]


--SE
playSe( spep_0 + 12, SE_04 );  --ゴゴゴ
playSe( spep_0 + 156, 1014 );  --敵を飛ばす






--次の準備
spep_1=spep_0+200;
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

-- ** 次の準備 ** --
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 瞬間移動
------------------------------------------------------
-- ** エフェクト等 ** --
tame_b = entryEffectLife( spep_2 + 0, SP_04r,  380 ,0x80, -1, 0, 0, 0 );  
setEffMoveKey( spep_2 + 0, tame_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 380, tame_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 380, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame_b, 0 );
setEffRotateKey( spep_2 + 380, tame_b, 0 );
setEffAlphaKey( spep_2 + 0, tame_b, 255 );
setEffAlphaKey( spep_2 + 380, tame_b, 255 );

-- ** エフェクト等 ** --
tame_f = entryEffectLife( spep_2 + 0, SP_03r,  380 ,0x100, -1, 0, 0, 0 );  
setEffMoveKey( spep_2 + 0, tame_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 380, tame_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 380, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame_f, 0 );
setEffRotateKey( spep_2 + 380, tame_f, 0 );
setEffAlphaKey( spep_2 + 0, tame_f, 255 );
setEffAlphaKey( spep_2 + 380, tame_f, 255 );

--敵の動き
setDisp(spep_2 -3 +60 ,1,1);
setDisp(spep_2 -3 +380,1,0);

changeAnime(spep_2 -3+60 ,1,108);
changeAnime(spep_2 -3+78 ,1,106);
changeAnime(spep_2 -3+100 ,1,107);
changeAnime(spep_2 -3+108 ,1,106);
changeAnime(spep_2 -3+110 ,1,5);
changeAnime(spep_2 -3+190 ,1,106);
changeAnime(spep_2 -3+220 ,1,5);
changeAnime(spep_2 -3+280 ,1,106);

setMoveKey( spep_2 -3 + 60, 1, 32.5, 48.5 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 41.5, 48.5 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 50.5, 48.5 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 59.5, 48.5 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 68.5, 48.5 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 77.5, 48.5 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 86.5, 48.5 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 95.5, 48.5 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 126.8, 60.4 , 0 );

setMoveKey( spep_2 -3 + 78, 1, 182.6, 46.1 , 0 );--106
setMoveKey( spep_2 -3 + 80, 1, 392, 56 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 443, 46.5 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 568.3, 55.7 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 643.9, 45.7 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 746.3, 49.2 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 786.1, 47.9 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 856.5, 46.4 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 882.4, 53.2 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 907.3, 48.5 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 914.5, 48.5 , 0 );
setMoveKey( spep_2 -3 + 99, 1, 914.5, 48.5 , 0 );
setMoveKey( spep_2 -3 + 100, 1, -349.6, -938.2 , 0 );--107
setMoveKey( spep_2 -3 + 102, 1, -333.7, -906.2 , 0 );
setMoveKey( spep_2 -3 + 104, 1, -285.7, -810.2 , 0 );
setMoveKey( spep_2 -3 + 106, 1, -205.9, -650.3 , 0 );
setMoveKey( spep_2 -3 + 107, 1, -312.5, -378.4 , 0 );--106
setMoveKey( spep_2 -3 + 108, 1, -312.5, -378.4 , 0 );--106
setMoveKey( spep_2 -3 + 109, 1, -312.5, -378.4 , 0 );--106
setMoveKey( spep_2 -3 + 110, 1, -43.6, -54.6 , 0 );--5
setMoveKey( spep_2 -3 + 112, 1, 107.1, 136.4 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 146.5, 186.2 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 170.5, 216.7 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 187.3, 237.9 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 199.8, 253.7 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 209.6, 266.1 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 217.4, 276 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 223.7, 284 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 228.9, 290.6 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 233.3, 296.1 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 236.9, 300.7 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 240, 304.6 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 242.6, 308 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 244.9, 310.8 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 246.8, 313.2 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 248.4, 315.2 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 249.8, 317 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 250.8, 318.5 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 251.8, 319.7 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 252.7, 320.8 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 253.4, 321.8 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 254, 322.5 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 254.6, 323.2 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 255, 323.7 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 255.4, 324.2 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 255.7, 324.6 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 255.9, 324.9 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 256.1, 325.1 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 256.3, 325.3 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 256.4, 325.5 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 256.5, 325.6 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 256.5, 325.7 , 0 );
setMoveKey( spep_2 -3 + 176, 1, 256.6, 325.8 , 0 );
setMoveKey( spep_2 -3 + 178, 1, 256.6, 325.8 , 0 );
setMoveKey( spep_2 -3 + 180, 1, 256.7, 325.8 , 0 );
setMoveKey( spep_2 -3 + 182, 1, 256.7, 325.9 , 0 );
setMoveKey( spep_2 -3 + 186, 1, 256.7, 325.9 , 0 );
setMoveKey( spep_2 -3 + 188, 1, 256.7, 325.8 , 0 );

setMoveKey( spep_2 -3 + 190, 1, -56.3, -290.1 , 0 );--106
setMoveKey( spep_2 -3 + 192, 1, -36.1, -85.4 , 0 );
setMoveKey( spep_2 -3 + 194, 1, -54.6, -250.4 , 0 );
setMoveKey( spep_2 -3 + 196, 1, -62.7, -98.3 , 0 );
setMoveKey( spep_2 -3 + 198, 1, 129.8, 157.8 , 0 );
setMoveKey( spep_2 -3 + 200, 1, 166.3, 156.6 , 0 );
setMoveKey( spep_2 -3 + 202, 1, 250.7, 247.1 , 0 );
setMoveKey( spep_2 -3 + 204, 1, 551.8, 556.3 , 0 );
setMoveKey( spep_2 -3 + 206, 1, 768.2, 762.1 , 0 );
setMoveKey( spep_2 -3 + 208, 1, 874.6, 885.6 , 0 );
setMoveKey( spep_2 -3 + 210, 1, 945.7, 949.7 , 0 );
setMoveKey( spep_2 -3 + 219, 1, 945.7, 949.7 , 0 );
setMoveKey( spep_2 -3 + 220, 1, -417.5, -438.9 , 0 );--5
setMoveKey( spep_2 -3 + 222, 1, -161.7, -111.1 , 0 );
setMoveKey( spep_2 -3 + 224, 1, -77.3, -2.9 , 0 );
setMoveKey( spep_2 -3 + 226, 1, -21.1, 69.1 , 0 );
setMoveKey( spep_2 -3 + 228, 1, 20.5, 122.5 , 0 );
setMoveKey( spep_2 -3 + 230, 1, 52.8, 163.8 , 0 );
setMoveKey( spep_2 -3 + 232, 1, 78.4, 196.6 , 0 );
setMoveKey( spep_2 -3 + 234, 1, 99, 223 , 0 );
setMoveKey( spep_2 -3 + 236, 1, 115.7, 244.4 , 0 );
setMoveKey( spep_2 -3 + 238, 1, 129.1, 261.6 , 0 );
setMoveKey( spep_2 -3 + 240, 1, 139.9, 275.4 , 0 );
setMoveKey( spep_2 -3 + 242, 1, 148.3, 286.2 , 0 );
setMoveKey( spep_2 -3 + 244, 1, 154.9, 294.6 , 0 );
setMoveKey( spep_2 -3 + 246, 1, 159.8, 300.9 , 0 );
setMoveKey( spep_2 -3 + 248, 1, 163.3, 305.3 , 0 );
setMoveKey( spep_2 -3 + 250, 1, 165.5, 308.2 , 0 );
setMoveKey( spep_2 -3 + 252, 1, 166.8, 309.9 , 0 );
setMoveKey( spep_2 -3 + 254, 1, 167.3, 310.6 , 0 );
setMoveKey( spep_2 -3 + 256, 1, 167.4, 310.6 , 0 );
setMoveKey( spep_2 -3 + 309, 1, 167.4, 310.6 , 0 );
setMoveKey( spep_2 -3 + 310, 1, -90.6, -30.4 , 0 );
setMoveKey( spep_2 -3 + 312, 1, -84, -30.5 , 0 );
setMoveKey( spep_2 -3 + 314, 1, -57.6, -30.5 , 0 );
setMoveKey( spep_2 -3 + 316, 1, -48.1, -30.5 , 0 );
setMoveKey( spep_2 -3 + 318, 1, -31, -30.5 , 0 );
setMoveKey( spep_2 -3 + 320, 1, -28.2, -30.6 , 0 );
setMoveKey( spep_2 -3 + 322, 1, 0, -30.6 , 0 );
setMoveKey( spep_2 -3 + 324, 1, -3.6, -30.6 , 0 );
setMoveKey( spep_2 -3 + 326, 1, 22.3, -30.6 , 0 );
setMoveKey( spep_2 -3 + 328, 1, 16.1, -30.6 , 0 );
setMoveKey( spep_2 -3 + 330, 1, 35.5, -30.6 , 0 );
setMoveKey( spep_2 -3 + 332, 1, 41.9, -30.7 , 0 );
setMoveKey( spep_2 -3 + 334, 1, 44.3, -30.7 , 0 );
setMoveKey( spep_2 -3 + 336, 1, 58.9, -30.7 , 0 );
setMoveKey( spep_2 -3 + 338, 1, 55.7, -30.7 , 0 );
setMoveKey( spep_2 -3 + 340, 1, 65.4, -30.7 , 0 );
setMoveKey( spep_2 -3 + 342, 1, 65.6, -30.7 , 0 );
setMoveKey( spep_2 -3 + 344, 1, 60.5, -30.7 , 0 );
setMoveKey( spep_2 -3 + 346, 1, 78.9, -30.7 , 0 );
setMoveKey( spep_2 -3 + 348, 1, 65.9, -30.7 , 0 );
setMoveKey( spep_2 -3 + 350, 1, 107.8, -42.1 , 0 );

setMoveKey( spep_2 -3 + 352, 1, 279.4, -33.3 , 0 );
setMoveKey( spep_2 -3 + 354, 1, 272.7, -29.4 , 0 );
setMoveKey( spep_2 -3 + 356, 1, 287.7, -34.3 , 0 );
setMoveKey( spep_2 -3 + 358, 1, 277.3, -19.9 , 0 );
setMoveKey( spep_2 -3 + 360, 1, 252.5, -19.7 , 0 );
setMoveKey( spep_2 -3 + 362, 1, 286.3, -19.2 , 0 );
setMoveKey( spep_2 -3 + 364, 1, 279.8, -29.6 , 0 );
setMoveKey( spep_2 -3 + 366, 1, 291.5, -12.8 , 0 );
setMoveKey( spep_2 -3 + 368, 1, 276.8, -25.1 , 0 );
setMoveKey( spep_2 -3 + 370, 1, 293.3, -12 , 0 );
setMoveKey( spep_2 -3 + 372, 1, 411.3, -25.5 , 0 );
setMoveKey( spep_2 -3 + 374, 1, 536.7, -19.9 , 0 );
setMoveKey( spep_2 -3 + 376, 1, 660.9, -19.9 , 0 );
setMoveKey( spep_2 -3 + 378, 1, 785.1, -19.9 , 0 );
setMoveKey( spep_2 -3 + 380, 1, 909.3, -19.9 , 0 );



setScaleKey( spep_2 -3 + 60, 1, 2.25, 2.25 );
setScaleKey( spep_2 -3 + 74, 1, 2.25, 2.25 );
setScaleKey( spep_2 -3 + 75, 1, 2.25, 2.25 );
setScaleKey( spep_2 -3 + 76, 1, 2.86, 2.86 );

setScaleKey( spep_2 -3 + 78, 1, 2.25, 2.25 );
setScaleKey( spep_2 -3 + 80, 1, 2.59, 2.59 );
setScaleKey( spep_2 -3 + 82, 1, 2.25, 2.25 );

setScaleKey( spep_2 -3 + 100, 1, 3.73, 3.73 );
setScaleKey( spep_2 -3 + 102, 1, 3.63, 3.63 );
setScaleKey( spep_2 -3 + 104, 1, 3.35, 3.35 );
setScaleKey( spep_2 -3 + 106, 1, 2.89, 2.89 );
setScaleKey( spep_2 -3 + 107, 1, 6.63, 6.63 );
setScaleKey( spep_2 -3 + 108, 1, 6.63, 6.63 );
setScaleKey( spep_2 -3 + 109, 1, 6.63, 6.63 );
setScaleKey( spep_2 -3 + 110, 1, 4.04, 4.04 );
setScaleKey( spep_2 -3 + 112, 1, 2.07, 2.07 );
setScaleKey( spep_2 -3 + 114, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 116, 1, 1.24, 1.24 );
setScaleKey( spep_2 -3 + 118, 1, 1.02, 1.02 );
setScaleKey( spep_2 -3 + 120, 1, 0.86, 0.86 );
setScaleKey( spep_2 -3 + 122, 1, 0.73, 0.73 );
setScaleKey( spep_2 -3 + 124, 1, 0.63, 0.63 );
setScaleKey( spep_2 -3 + 126, 1, 0.55, 0.55 );
setScaleKey( spep_2 -3 + 128, 1, 0.48, 0.48 );
setScaleKey( spep_2 -3 + 130, 1, 0.42, 0.42 );
setScaleKey( spep_2 -3 + 132, 1, 0.38, 0.38 );
setScaleKey( spep_2 -3 + 134, 1, 0.34, 0.34 );
setScaleKey( spep_2 -3 + 136, 1, 0.3, 0.3 );
setScaleKey( spep_2 -3 + 138, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 140, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 142, 1, 0.23, 0.23 );
setScaleKey( spep_2 -3 + 144, 1, 0.21, 0.21 );
setScaleKey( spep_2 -3 + 146, 1, 0.19, 0.19 );
setScaleKey( spep_2 -3 + 148, 1, 0.18, 0.18 );
setScaleKey( spep_2 -3 + 150, 1, 0.17, 0.17 );
setScaleKey( spep_2 -3 + 152, 1, 0.16, 0.16 );
setScaleKey( spep_2 -3 + 154, 1, 0.15, 0.15 );
setScaleKey( spep_2 -3 + 156, 1, 0.14, 0.14 );
setScaleKey( spep_2 -3 + 158, 1, 0.14, 0.14 );
setScaleKey( spep_2 -3 + 160, 1, 0.13, 0.13 );
setScaleKey( spep_2 -3 + 164, 1, 0.13, 0.13 );
setScaleKey( spep_2 -3 + 166, 1, 0.12, 0.12 );
setScaleKey( spep_2 -3 + 189, 1, 0.12, 0.12 );

setScaleKey( spep_2 -3 + 190, 1, 7.15, 7.15 );
setScaleKey( spep_2 -3 + 192, 1, 4.39, 4.39 );
setScaleKey( spep_2 -3 + 194, 1, 5.83, 5.83 );
setScaleKey( spep_2 -3 + 196, 1, 3.53, 3.53 );
setScaleKey( spep_2 -3 + 198, 1, 2.53, 2.53 );
setScaleKey( spep_2 -3 + 219, 1, 2.53, 2.53 );

setScaleKey( spep_2 -3 + 220, 1, 7.63, 7.63 );
setScaleKey( spep_2 -3 + 222, 1, 4.43, 4.43 );
setScaleKey( spep_2 -3 + 224, 1, 3.38, 3.38 );
setScaleKey( spep_2 -3 + 226, 1, 2.68, 2.68 );
setScaleKey( spep_2 -3 + 228, 1, 2.16, 2.16 );
setScaleKey( spep_2 -3 + 230, 1, 1.75, 1.75 );
setScaleKey( spep_2 -3 + 232, 1, 1.43, 1.43 );
setScaleKey( spep_2 -3 + 234, 1, 1.17, 1.17 );
setScaleKey( spep_2 -3 + 236, 1, 0.97, 0.97 );
setScaleKey( spep_2 -3 + 238, 1, 0.8, 0.8 );
setScaleKey( spep_2 -3 + 240, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 242, 1, 0.56, 0.56 );
setScaleKey( spep_2 -3 + 244, 1, 0.48, 0.48 );
setScaleKey( spep_2 -3 + 246, 1, 0.42, 0.42 );
setScaleKey( spep_2 -3 + 248, 1, 0.37, 0.37 );
setScaleKey( spep_2 -3 + 250, 1, 0.34, 0.34 );
setScaleKey( spep_2 -3 + 252, 1, 0.33, 0.33 );
setScaleKey( spep_2 -3 + 254, 1, 0.32, 0.32 );
setScaleKey( spep_2 -3 + 309, 1, 0.32, 0.32 );
setScaleKey( spep_2 -3 + 310, 1, 2.53, 2.53 );
setScaleKey( spep_2 -3 + 312, 1, 2.55, 2.55 );
setScaleKey( spep_2 -3 + 314, 1, 2.57, 2.57 );
setScaleKey( spep_2 -3 + 316, 1, 2.59, 2.59 );
setScaleKey( spep_2 -3 + 318, 1, 2.61, 2.61 );
setScaleKey( spep_2 -3 + 320, 1, 2.62, 2.62 );
setScaleKey( spep_2 -3 + 322, 1, 2.64, 2.64 );
setScaleKey( spep_2 -3 + 324, 1, 2.66, 2.66 );
setScaleKey( spep_2 -3 + 326, 1, 2.67, 2.67 );
setScaleKey( spep_2 -3 + 328, 1, 2.68, 2.68 );
setScaleKey( spep_2 -3 + 330, 1, 2.69, 2.69 );
setScaleKey( spep_2 -3 + 332, 1, 2.7, 2.7 );
setScaleKey( spep_2 -3 + 334, 1, 2.71, 2.71 );
setScaleKey( spep_2 -3 + 336, 1, 2.72, 2.72 );
setScaleKey( spep_2 -3 + 338, 1, 2.73, 2.73 );
setScaleKey( spep_2 -3 + 340, 1, 2.74, 2.74 );
setScaleKey( spep_2 -3 + 344, 1, 2.74, 2.74 );
setScaleKey( spep_2 -3 + 346, 1, 2.75, 2.75 );
setScaleKey( spep_2 -3 + 348, 1, 2.75, 2.75 );
setScaleKey( spep_2 -3 + 350, 1, 3.77, 3.77 );

setScaleKey( spep_2 -3 + 352, 1, 3.02, 3.02 );
setScaleKey( spep_2 -3 + 354, 1, 3.45, 3.45 );
setScaleKey( spep_2 -3 + 356, 1, 2.91, 2.91 );
setScaleKey( spep_2 -3 + 358, 1, 2.78, 2.78 );
setScaleKey( spep_2 -3 + 360, 1, 2.79, 2.79 );
setScaleKey( spep_2 -3 + 362, 1, 2.79, 2.79 );
setScaleKey( spep_2 -3 + 364, 1, 2.8, 2.8 );
setScaleKey( spep_2 -3 + 368, 1, 2.8, 2.8 );
setScaleKey( spep_2 -3 + 370, 1, 2.81, 2.81 );
setScaleKey( spep_2 -3 + 372, 1, 2.85, 2.85 );
setScaleKey( spep_2 -3 + 374, 1, 2.89, 2.89 );
setScaleKey( spep_2 -3 + 376, 1, 2.93, 2.93 );
setScaleKey( spep_2 -3 + 378, 1, 2.97, 2.97 );
setScaleKey( spep_2 -3 + 380, 1, 3.01, 3.01 );



setRotateKey( spep_2 -3 + 60, 1, 0 );
setRotateKey( spep_2 -3 + 76, 1, 0 );
setRotateKey( spep_2 -3 + 78, 1, -23.2 );
setRotateKey( spep_2 -3 + 82, 1, -23.2 );

setRotateKey( spep_2 -3 + 100, 1, -100 );
setRotateKey( spep_2 -3 + 106, 1, -100 );
setRotateKey( spep_2 -3 + 107, 1, -39.9 );
setRotateKey( spep_2 -3 + 108, 1, -39.9 );
setRotateKey( spep_2 -3 + 109, 1, -39.9 );
setRotateKey( spep_2 -3 + 110, 1, 31.4 );
setRotateKey( spep_2 -3 + 112, 1, 31.3 );
setRotateKey( spep_2 -3 + 189, 1, 31.3 );
setRotateKey( spep_2 -3 + 190, 1, -55.8 );
setRotateKey( spep_2 -3 + 196, 1, -55.8 );
setRotateKey( spep_2 -3 + 198, 1, -33.7 );
setRotateKey( spep_2 -3 + 200, 1, -31.8 );
setRotateKey( spep_2 -3 + 202, 1, -28.2 );
setRotateKey( spep_2 -3 + 204, 1, -12.9 );
setRotateKey( spep_2 -3 + 206, 1, -2.8 );
setRotateKey( spep_2 -3 + 208, 1, 2.7 );
setRotateKey( spep_2 -3 + 210, 1, 6 );
setRotateKey( spep_2 -3 + 219, 1, 6 );
setRotateKey( spep_2 -3 + 220, 1, 52.5 );
setRotateKey( spep_2 -3 + 224, 1, 52.5 );
setRotateKey( spep_2 -3 + 226, 1, 52.4 );
setRotateKey( spep_2 -3 + 309, 1, 52.4 );

setRotateKey( spep_2 -3 + 310, 1, 141.4 );
setRotateKey( spep_2 -3 + 312, 1, 140.2 );
setRotateKey( spep_2 -3 + 314, 1, 139 );
setRotateKey( spep_2 -3 + 316, 1, 137.8 );
setRotateKey( spep_2 -3 + 318, 1, 136.8 );
setRotateKey( spep_2 -3 + 320, 1, 135.8 );
setRotateKey( spep_2 -3 + 322, 1, 134.9 );
setRotateKey( spep_2 -3 + 324, 1, 134 );
setRotateKey( spep_2 -3 + 326, 1, 133.2 );
setRotateKey( spep_2 -3 + 328, 1, 132.5 );
setRotateKey( spep_2 -3 + 330, 1, 131.8 );
setRotateKey( spep_2 -3 + 332, 1, 131.2 );
setRotateKey( spep_2 -3 + 334, 1, 130.6 );
setRotateKey( spep_2 -3 + 336, 1, 130.2 );
setRotateKey( spep_2 -3 + 338, 1, 129.8 );
setRotateKey( spep_2 -3 + 340, 1, 129.4 );
setRotateKey( spep_2 -3 + 342, 1, 129.1 );
setRotateKey( spep_2 -3 + 344, 1, 128.9 );
setRotateKey( spep_2 -3 + 346, 1, 128.7 );
setRotateKey( spep_2 -3 + 348, 1, 128.6 );
setRotateKey( spep_2 -3 + 353, 1, 128.6 );

setRotateKey( spep_2 -3 + 354, 1, 122.3 );
setRotateKey( spep_2 -3 + 356, 1, 121.6 );
setRotateKey( spep_2 -3 + 358, 1, 121 );
setRotateKey( spep_2 -3 + 360, 1, 120.5 );
setRotateKey( spep_2 -3 + 362, 1, 120.1 );
setRotateKey( spep_2 -3 + 364, 1, 119.7 );
setRotateKey( spep_2 -3 + 366, 1, 119.5 );
setRotateKey( spep_2 -3 + 368, 1, 119.3 );
setRotateKey( spep_2 -3 + 380, 1, 119.3 );


--SE
playSe( spep_2, SE_04 );  --ゴゴゴ
playSe( spep_2+30, 43 );  --瞬間移動
playSe( spep_2+70, 1009 );  --タックル
playSe( spep_2+106,44 );  --飛んでいく音
playSe( spep_2+130,SE_04 );  --飛んでいく音
playSe( spep_2+196,1010 );  --パンチ
playSe( spep_2+219,8 );  --飛んでいく音
playSe( spep_2+256,9 );  --飛んでいく音
playSe( spep_2+348,1011 );  --飛んでいく音

--次の準備
spep_3=spep_2+380;

------------------------------------------------------
-- かめはめ波
------------------------------------------------------
k = 10;
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_05r,  0x100, -1, 0, 0, 0 );  -- ぐるっと回るシーン
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 350 -k, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 350 -k, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 350 -k, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 350 -k, finish_f, 255 );
setEffAlphaKey( spep_3 + 351 -k, finish_f, 0 );
setEffAlphaKey( spep_3 + 352 -k, finish_f, 0 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_3 + 0, SP_06r,  0x80, -1, 0, 0, 0 );  -- ぐるっと回るシーン
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 350 -k, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 350 -k, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 350 -k, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 350 -k, finish_b, 255 );

--  ** KO  **  --
ko = entryEffectLife( spep_3 + 350 -k, SP_07r, 20,  0x100, -1, 0, 0, 0 );  -- ぐるっと回るシーン
setEffMoveKey( spep_3 + 350 -k, ko, 0, 0 , 0 );
setEffMoveKey( spep_3 + 370 -k, ko, 0, 0 , 0 );
setEffScaleKey( spep_3 + 350 -k, ko, 1.0, 1.0 );
setEffScaleKey( spep_3 + 370 -k, ko, 1.0, 1.0 );
setEffRotateKey( spep_3 + 350 -k, ko, 0 );
setEffRotateKey( spep_3 + 370 -k, ko, 0 );
setEffAlphaKey( spep_3 + 350 -k, ko, 255 );
setEffAlphaKey( spep_3 + 370 -k, ko, 255 );

--敵の動き
setDisp(spep_3  ,1,1);
setDisp(spep_3  +66,1,0);
setDisp(spep_3 -3 +150,1,1);
setDisp(spep_3 -3 +188,1,0);

changeAnime(spep_3  ,1,5);
changeAnime(spep_3 -3+150 ,1,107);

setMoveKey( spep_3  + 0, 1, -20.7, -830 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, -15.3, -431.2 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -13, -262.3 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -11.3, -137.2 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -10, -37.6 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -8.9, 43.8 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -7.9, 110.6 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -7.2, 165 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -6.6, 208.4 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -6.2, 241.7 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -5.8, 265.6 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -5.6, 280.8 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -5.5, 292 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -5.4, 301.7 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -5.2, 310.3 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -5.1, 318.3 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -5, 325.8 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -4.9, 332.8 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -4.8, 339.3 , 0 );
setMoveKey( spep_3 -3 + 38, 1, -4.8, 345.6 , 0 );
setMoveKey( spep_3 -3 + 40, 1, -4.7, 351.5 , 0 );
setMoveKey( spep_3 -3 + 42, 1, -4.6, 357.1 , 0 );
setMoveKey( spep_3 -3 + 44, 1, -4.5, 362.4 , 0 );
setMoveKey( spep_3 -3 + 46, 1, -4.5, 367.4 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -4.4, 372.2 , 0 );
setMoveKey( spep_3 -3 + 50, 1, -4.5, 374.5 , 0 );
setMoveKey( spep_3 -3 + 52, 1, -5.4, 390.7 , 0 );
setMoveKey( spep_3 -3 + 54, 1, -7.7, 414.7 , 0 );
setMoveKey( spep_3 -3 + 56, 1, -11.9, 452.5 , 0 );
setMoveKey( spep_3 -3 + 58, 1, -18.5, 510 , 0 );
setMoveKey( spep_3 -3 + 60, 1, -28.4, 600.9 , 0 );
setMoveKey( spep_3 -3 + 62, 1, -42.9, 733.3 , 0 );
setMoveKey( spep_3 -3 + 64, 1, -64.7, 924.4 , 0 );
setMoveKey( spep_3 -3 + 66, 1, -100.7, 1250.2 , 0 );
setMoveKey( spep_3 -3 + 68, 1, -223.1, 2322.3 , 0 );
setMoveKey( spep_3 -3 + 150, 1, 1704.1, 1144 , 0 );
setMoveKey( spep_3 -3 + 152, 1, 1690.1, 1135.2 , 0 );
setMoveKey( spep_3 -3 + 154, 1, 1667.9, 1118.7 , 0 );
setMoveKey( spep_3 -3 + 156, 1, 1615.1, 1076.2 , 0 );
setMoveKey( spep_3 -3 + 158, 1, 1491.9, 984 , 0 );
setMoveKey( spep_3 -3 + 160, 1, 1247.7, 800.6 , 0 );
setMoveKey( spep_3 -3 + 162, 1, 868.4, 516.1 , 0 );
setMoveKey( spep_3 -3 + 164, 1, 607.9, 318.3 , 0 );
setMoveKey( spep_3 -3 + 166, 1, 458.4, 197.5 , 0 );
setMoveKey( spep_3 -3 + 168, 1, 383, 138.6 , 0 );
setMoveKey( spep_3 -3 + 170, 1, 299.6, 68.4 , 0 );
setMoveKey( spep_3 -3 + 172, 1, 241.2, 20.1 , 0 );
setMoveKey( spep_3 -3 + 174, 1, 219.4, 7.2 , 0 );
setMoveKey( spep_3 -3 + 176, 1, 174.9, -32.2 , 0 );
setMoveKey( spep_3 -3 + 178, 1, 158.4, -43.7 , 0 );
setMoveKey( spep_3 -3 + 180, 1, 137.2, -63.3 , 0 );
setMoveKey( spep_3 -3 + 182, 1, 134.3, -62.5 , 0 );
setMoveKey( spep_3 -3 + 184, 1, 127.6, -69.7 , 0 );
setMoveKey( spep_3 -3 + 186, 1, 127.4, -71.8 , 0 );
setMoveKey( spep_3 -3 + 188, 1, 132.7, -63.1 , 0 );

setScaleKey( spep_3  + 0, 1, 5.2, 5.2 );
--setScaleKey( spep_3 -3 + 2, 1, 3.62, 3.62 );
setScaleKey( spep_3 -3 + 4, 1, 2.95, 2.95 );
setScaleKey( spep_3 -3 + 6, 1, 2.45, 2.45 );
setScaleKey( spep_3 -3 + 8, 1, 2.06, 2.06 );
setScaleKey( spep_3 -3 + 10, 1, 1.73, 1.73 );
setScaleKey( spep_3 -3 + 12, 1, 1.47, 1.47 );
setScaleKey( spep_3 -3 + 14, 1, 1.25, 1.25 );
setScaleKey( spep_3 -3 + 16, 1, 1.08, 1.08 );
setScaleKey( spep_3 -3 + 18, 1, 0.95, 0.95 );
setScaleKey( spep_3 -3 + 20, 1, 0.85, 0.85 );
setScaleKey( spep_3 -3 + 22, 1, 0.79, 0.79 );
setScaleKey( spep_3 -3 + 24, 1, 0.75, 0.75 );
setScaleKey( spep_3 -3 + 26, 1, 0.71, 0.71 );
setScaleKey( spep_3 -3 + 28, 1, 0.67, 0.67 );
setScaleKey( spep_3 -3 + 30, 1, 0.64, 0.64 );
setScaleKey( spep_3 -3 + 32, 1, 0.61, 0.61 );
setScaleKey( spep_3 -3 + 34, 1, 0.59, 0.59 );
setScaleKey( spep_3 -3 + 36, 1, 0.56, 0.56 );
setScaleKey( spep_3 -3 + 38, 1, 0.53, 0.53 );
setScaleKey( spep_3 -3 + 40, 1, 0.51, 0.51 );
setScaleKey( spep_3 -3 + 42, 1, 0.49, 0.49 );
setScaleKey( spep_3 -3 + 44, 1, 0.47, 0.47 );
setScaleKey( spep_3 -3 + 46, 1, 0.45, 0.45 );
setScaleKey( spep_3 -3 + 48, 1, 0.43, 0.43 );
setScaleKey( spep_3 -3 + 50, 1, 0.41, 0.41 );
setScaleKey( spep_3 -3 + 52, 1, 0.4, 0.4 );
setScaleKey( spep_3 -3 + 54, 1, 0.4, 0.4 );
setScaleKey( spep_3 -3 + 56, 1, 0.42, 0.42 );
setScaleKey( spep_3 -3 + 58, 1, 0.43, 0.43 );
setScaleKey( spep_3 -3 + 60, 1, 0.48, 0.48 );
setScaleKey( spep_3 -3 + 62, 1, 0.55, 0.55 );
setScaleKey( spep_3 -3 + 64, 1, 0.67, 0.67 );
setScaleKey( spep_3 -3 + 66, 1, 0.85, 0.85 );
setScaleKey( spep_3 -3 + 68, 1, 1.51, 1.51 );
setScaleKey( spep_3 -3 + 150, 1, 1.28, 1.28 );
setScaleKey( spep_3 -3 + 152, 1, 1.26, 1.26 );
setScaleKey( spep_3 -3 + 154, 1, 1.24, 1.24 );
setScaleKey( spep_3 -3 + 156, 1, 1.22, 1.22 );
setScaleKey( spep_3 -3 + 158, 1, 1.13, 1.13 );
setScaleKey( spep_3 -3 + 160, 1, 0.97, 0.97 );
setScaleKey( spep_3 -3 + 162, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 164, 1, 0.54, 0.54 );
setScaleKey( spep_3 -3 + 166, 1, 0.46, 0.46 );
setScaleKey( spep_3 -3 + 168, 1, 0.38, 0.38 );
setScaleKey( spep_3 -3 + 170, 1, 0.36, 0.36 );
setScaleKey( spep_3 -3 + 172, 1, 0.34, 0.34 );
setScaleKey( spep_3 -3 + 174, 1, 0.28, 0.28 );
setScaleKey( spep_3 -3 + 176, 1, 0.29, 0.29 );
setScaleKey( spep_3 -3 + 178, 1, 0.27, 0.27 );
setScaleKey( spep_3 -3 + 180, 1, 0.28, 0.28 );
setScaleKey( spep_3 -3 + 182, 1, 0.25, 0.25 );
setScaleKey( spep_3 -3 + 184, 1, 0.26, 0.26 );
setScaleKey( spep_3 -3 + 186, 1, 0.27, 0.27 );
setScaleKey( spep_3 -3 + 188, 1, 0.24, 0.24 );

setRotateKey( spep_3  + 0, 1, 26.8 );
setRotateKey( spep_3 -3 + 68, 1, 26.8 );
setRotateKey( spep_3 -3 + 150, 1, -84.3 );
setRotateKey( spep_3 -3 + 158, 1, -84.3 );
setRotateKey( spep_3 -3 + 160, 1, -84.2 );
setRotateKey( spep_3 -3 + 162, 1, -84.2 );
setRotateKey( spep_3 -3 + 164, 1, -84.1 );
setRotateKey( spep_3 -3 + 188, 1, -84.1 );

--SE
playSe( spep_3, 44 );  --近く
SE1=playSe( spep_3+78 ,55 );  --ため
stopSe(spep_3+108,SE1,10);
playSe( spep_3+118 ,1022 );  --うつ
playSe( spep_3+180 ,1023 );  --巻き込まれる

entryFadeBg(spep_3,  0,  360,  0,  0,  0,  0,  255);  --黒背景

-- ダメージ表示
dealDamage(spep_3+168);
entryFade( spep_3+342 -k, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(spep_3 + 352 -k);
end
