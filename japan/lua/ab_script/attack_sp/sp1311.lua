--1017350:セル(第一形態)_絶命弾
--sp_effect_a1_00174

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

--エフェクト
SP_01=	153800	;--	登場から着地
SP_02=	153801	;--	気ダメ
SP_03=	153802	;--	敵が爆風に曝される：手前
SP_04=	153803	;--	敵が爆風に曝される：奥
SP_05=	153804	;--	岩崩壊から手前ダッシュ
SP_06=	153805	;--	パンチから掴み：手前
SP_07=	153806	;--	パンチから掴み：奥
SP_08=	153807	;--	顔アップ
SP_09=	153808	;--	気放射：手前
SP_10=	153809	;--	気放射：奥

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
-- 登場から着地
------------------------------------------------------
--はじめの準備
spep_0= 0;

-- ** エフェクト等 ** --
landing = entryEffect( spep_0 + 0, SP_01,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, landing, 0, 0 , 0 );
setEffMoveKey( spep_0 + 248, landing, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, landing, 1.0, 1.0 );
setEffScaleKey( spep_0 + 248, landing, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, landing, 0 );
setEffRotateKey( spep_0 + 248, landing, 0 );
setEffAlphaKey( spep_0 + 0, landing, 255 );
setEffAlphaKey( spep_0 + 248, landing, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0 -3 + 50,  906, 88, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 -3 + 50, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 138, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 50, shuchusen1, 1.1, 1.1 );
setEffScaleKey( spep_0 -3 + 138, shuchusen1, 1.1, 1.1 );

setEffRotateKey( spep_0 -3 + 50, shuchusen1, 180 );
setEffRotateKey( spep_0 -3 + 138, shuchusen1, 180 );

setEffAlphaKey( spep_0 -3 + 50, shuchusen1, 255 );
setEffAlphaKey( spep_0 -3 + 138, shuchusen1, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_0-3 + 208,  906, 40 +3, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0-3 + 208, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_0 + 248, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 208, shuchusen2, 1.1, 1.1 );
setEffScaleKey( spep_0 + 248, shuchusen2, 1.1, 1.1 );

setEffRotateKey( spep_0-3 + 208, shuchusen2, 180 );
setEffRotateKey( spep_0 + 248, shuchusen2, 180 );

setEffAlphaKey( spep_0-3 + 208, shuchusen2, 255 );
setEffAlphaKey( spep_0 + 247, shuchusen2, 255 );
setEffAlphaKey( spep_0 + 248, shuchusen2, 0 );

--SE
playSe( spep_0 + 28,  1135);  --セルの足音
playSe( spep_0 + 50, 8);--カメラの移動音
playSe( spep_0 + 150, 1007);--飛び降りの音
playSe( spep_0 + 186, 1012);--着地
playSe( spep_0 + 204, 1072);--カメラの移動音

-- ** 黒背景 ** --
entryFadeBg( spep_0 , 0, 250 , 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_1 = spep_0 + 248;

------------------------------------------------------
-- 気ダメ
------------------------------------------------------

-- ** エフェクト等 ** --
teme = entryEffect( spep_1 + 0, SP_02,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, teme, 0, 0 , 0 );
setEffMoveKey( spep_1 + 176, teme, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, teme, 1.0, 1.0 );
setEffScaleKey( spep_1 + 176, teme, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, teme, 0 );
setEffRotateKey( spep_1 + 176, teme, 0 );
setEffAlphaKey( spep_1 + 0, teme, 255 );
setEffAlphaKey( spep_1 + 176, teme, 255 );

--SE
SE0=playSe( spep_1, 1037);--ため
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    
    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
     --敵の情報
     


    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--文字エントリー
ctzuo = entryEffectLife( spep_1 -3 + 120,  10012, 38, 0x100, -1, 0, -9.9, 19.9 );

setEffMoveKey( spep_1 -3 + 120, ctzuo, -9.9, 19.9 , 0 );
setEffMoveKey( spep_1 -3 + 122, ctzuo, -64.3, 92.3 , 0 );
setEffMoveKey( spep_1 -3 + 124, ctzuo, -115.3, 167.7 , 0 );
setEffMoveKey( spep_1 -3 + 126, ctzuo, -172.6, 237.9 , 0 );
setEffMoveKey( spep_1 -3 + 128, ctzuo, -168.7, 242.5 , 0 );
setEffMoveKey( spep_1 -3 + 130, ctzuo, -173.7, 242.6 , 0 );
setEffMoveKey( spep_1 -3 + 132, ctzuo, -168.8, 245.2 , 0 );
setEffMoveKey( spep_1 -3 + 134, ctzuo, -172, 242.3 , 0 );
setEffMoveKey( spep_1 -3 + 136, ctzuo, -173.1, 247 , 0 );
setEffMoveKey( spep_1 -3 + 138, ctzuo, -169.9, 244.9 , 0 );
setEffMoveKey( spep_1 -3 + 140, ctzuo, -175.3, 247.9 , 0 );
setEffMoveKey( spep_1 -3 + 142, ctzuo, -171.8, 248.1 , 0 );
setEffMoveKey( spep_1 -3 + 144, ctzuo, -175, 247.9 , 0 );
setEffMoveKey( spep_1 -3 + 146, ctzuo, -172.8, 248.8 , 0 );
setEffMoveKey( spep_1 -3 + 148, ctzuo, -177.8, 247.7 , 0 );
setEffMoveKey( spep_1 -3 + 150, ctzuo, -173.1, 250.7 , 0 );
setEffMoveKey( spep_1 -3 + 152, ctzuo, -178, 248.9 , 0 );
setEffMoveKey( spep_1 -3 + 154, ctzuo, -172.2, 249.6 , 0 );
setEffMoveKey( spep_1 -3 + 156, ctzuo, -175.2, 244.6 , 0 );
setEffMoveKey( spep_1 -3 + 158, ctzuo, -177.9, 242.6 , 0 );

a=1.8;

setEffScaleKey( spep_1 -3 + 120, ctzuo, 0.1 , 0.1  );
setEffScaleKey( spep_1 -3 + 122, ctzuo, 0.32 , 0.32  );
setEffScaleKey( spep_1 -3 + 124, ctzuo, 0.53 , 0.53  );
setEffScaleKey( spep_1 -3 + 126, ctzuo, 0.75 + a, 0.75 + a );
setEffScaleKey( spep_1 -3 + 128, ctzuo, 0.75 + a, 0.75 + a );
setEffScaleKey( spep_1 -3 + 130, ctzuo, 0.76 + a, 0.76 + a );
setEffScaleKey( spep_1 -3 + 132, ctzuo, 0.76 + a, 0.76 + a );
setEffScaleKey( spep_1 -3 + 134, ctzuo, 0.77 + a, 0.77 + a );
setEffScaleKey( spep_1 -3 + 136, ctzuo, 0.77 + a, 0.77 + a );
setEffScaleKey( spep_1 -3 + 138, ctzuo, 0.78 + a, 0.78 + a );
setEffScaleKey( spep_1 -3 + 140, ctzuo, 0.78 + a, 0.78 + a );
setEffScaleKey( spep_1 -3 + 142, ctzuo, 0.79 + a, 0.79 + a );
setEffScaleKey( spep_1 -3 + 144, ctzuo, 0.79 + a, 0.79 + a );
setEffScaleKey( spep_1 -3 + 146, ctzuo, 0.8 + a, 0.8 + a );
setEffScaleKey( spep_1 -3 + 148, ctzuo, 0.8 + a, 0.8 + a );
setEffScaleKey( spep_1 -3 + 150, ctzuo, 0.81 + a, 0.81 + a );
setEffScaleKey( spep_1 -3 + 152, ctzuo, 0.82 + a, 0.82 + a );
setEffScaleKey( spep_1 -3 + 154, ctzuo, 0.83 + a, 0.83 + a );
setEffScaleKey( spep_1 -3 + 156, ctzuo, 0.84 + a, 0.84 + a );
setEffScaleKey( spep_1 -3 + 158, ctzuo, 0.85 + a, 0.85 + a );

setEffRotateKey( spep_1 -3 + 120, ctzuo, -30 );
setEffRotateKey( spep_1 -3 + 158, ctzuo, -30 );

setEffAlphaKey( spep_1 -3 + 120, ctzuo, 255 );
setEffAlphaKey( spep_1 -3 + 148, ctzuo, 255 );
setEffAlphaKey( spep_1 -3 + 150, ctzuo, 209 );
setEffAlphaKey( spep_1 -3 + 152, ctzuo, 163 );
setEffAlphaKey( spep_1 -3 + 154, ctzuo, 118 );
setEffAlphaKey( spep_1 -3 + 156, ctzuo, 72 );
setEffAlphaKey( spep_1 -3 + 158, ctzuo, 26 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 , 0, 190 , 0, 0, 0, 0, 255 );  --黒　背景

--SE
stopSe( spep_1 +106, SE0, 10 );
playSe( spep_1 + 116, 1024);--放出


--次の準備
spep_2 = spep_1 + 176;

------------------------------------------------------
-- 敵が爆風に曝される
------------------------------------------------------
-- ** エフェクト等 ** --
blast_f = entryEffect( spep_2 + 0, SP_03,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, blast_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, blast_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, blast_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, blast_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, blast_f, 0 );
setEffRotateKey( spep_2 + 56, blast_f, 0 );
setEffAlphaKey( spep_2 + 0, blast_f, 255 );
setEffAlphaKey( spep_2 + 56, blast_f, 255 );

-- ** エフェクト等 ** --
blast_b = entryEffect( spep_2 + 0, SP_04,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, blast_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, blast_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, blast_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, blast_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, blast_b, 0 );
setEffRotateKey( spep_2 + 56, blast_b, 0 );
setEffAlphaKey( spep_2 + 0, blast_b, 255 );
setEffAlphaKey( spep_2 + 56, blast_b, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 56, 1, 0 );
changeAnime( spep_2 + 0, 1, 104 );

setMoveKey( spep_2 + 0, 1, -81.9, -71.8 , 0 );
setMoveKey( spep_2 + 2, 1, -73.8, -73.5 , 0 );
setMoveKey( spep_2 + 4, 1, -65.7, -75.2 , 0 );
setMoveKey( spep_2 + 6, 1, -60.3, -74 , 0 );
setMoveKey( spep_2 + 8, 1, -54.9, -72.8 , 0 );
setMoveKey( spep_2 + 10, 1, -44.2, -73.3 , 0 );
setMoveKey( spep_2 + 12, 1, -33.5, -73.9 , 0 );
setMoveKey( spep_2 + 14, 1, -28.4, -74.3 , 0 );
setMoveKey( spep_2 + 16, 1, -23.3, -74.7 , 0 );
setMoveKey( spep_2 + 18, 1, -14.6, -73.2 , 0 );
setMoveKey( spep_2 + 20, 1, -6, -71.8 , 0 );
setMoveKey( spep_2 + 22, 1, 2.1, -73.5 , 0 );
setMoveKey( spep_2 + 24, 1, 10.2, -75.2 , 0 );
setMoveKey( spep_2 + 26, 1, 15.6, -74 , 0 );
setMoveKey( spep_2 + 28, 1, 20.9, -72.8 , 0 );
setMoveKey( spep_2 + 30, 1, 31.7, -73.4 , 0 );
setMoveKey( spep_2 + 32, 1, 42.4, -73.9 , 0 );
setMoveKey( spep_2 + 34, 1, 47.5, -74.3 , 0 );
setMoveKey( spep_2 + 36, 1, 52.6, -74.7 , 0 );
setMoveKey( spep_2 + 38, 1, 61.2, -73.3 , 0 );
setMoveKey( spep_2 + 40, 1, 69.9, -71.8 , 0 );
setMoveKey( spep_2 + 42, 1, 78, -73.5 , 0 );
setMoveKey( spep_2 + 44, 1, 86.1, -75.2 , 0 );
setMoveKey( spep_2 + 46, 1, 91.4, -74.1 , 0 );
setMoveKey( spep_2 + 48, 1, 96.8, -72.9 , 0 );
setMoveKey( spep_2 + 50, 1, 107.5, -73.4 , 0 );
setMoveKey( spep_2 + 52, 1, 118.3, -74 , 0 );
setMoveKey( spep_2 + 54, 1, 123.3, -74.3 , 0 );
setMoveKey( spep_2 + 56, 1, 128.4, -74.7 , 0 );
--setMoveKey( spep_2 + 58, 1, 137.1, -73.3 , 0 );

setScaleKey( spep_2 + 0, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 56, 1, 1.6, 1.6 );

setRotateKey( spep_2 + 0, 1, 9.8 );
setRotateKey( spep_2 + 56, 1, 9.8 );

--SE
SE1=playSe( spep_2, 1044);--時揺れ


-- ** 黒背景 ** --
entryFadeBg( spep_2 , 0, 70 , 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_3 = spep_2 + 56;

------------------------------------------------------
-- 岩崩壊から手前ダッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
dash = entryEffect( spep_3 + 0, SP_05,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, dash, 0, 0 , 0 );
setEffMoveKey( spep_3 + 94, dash, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, dash, 1.0, 1.0 );
setEffScaleKey( spep_3 + 94, dash, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, dash, 0 );
setEffRotateKey( spep_3 + 94, dash, 0 );
setEffAlphaKey( spep_3 + 0, dash, 255 );
setEffAlphaKey( spep_3 + 94, dash, 255 );


--文字エントリー
ctba = entryEffectLife( spep_3 -3 + 70,  10022, 26, 0x100, -1, 0, -12.5, 30 );
--setEffMoveKey( spep_3 -3 + 68, ctba, -12.5, 30 , 0 );
setEffMoveKey( spep_3 -3 + 70, ctba, -31.9, 88.1 , 0 );
setEffMoveKey( spep_3 -3 + 72, ctba, -30.3, 143.2 , 0 );
setEffMoveKey( spep_3 -3 + 74, ctba, -57.3, 215.9 , 0 );
setEffMoveKey( spep_3 -3 + 76, ctba, -34.6, 203.6 , 0 );
setEffMoveKey( spep_3 -3 + 78, ctba, -60.6, 205.6 , 0 );
setEffMoveKey( spep_3 -3 + 80, ctba, -49.8, 224.6 , 0 );
setEffMoveKey( spep_3 -3 + 82, ctba, -51.2, 203.5 , 0 );
setEffMoveKey( spep_3 -3 + 84, ctba, -61.2, 234.1 , 0 );
setEffMoveKey( spep_3 -3 + 86, ctba, -52.7, 219.3 , 0 );
setEffMoveKey( spep_3 -3 + 88, ctba, -68.2, 230.4 , 0 );
setEffMoveKey( spep_3 -3 + 90, ctba, -60.8, 223.3 , 0 );
setEffMoveKey( spep_3 -3 + 92, ctba, -61.7, 241.4 , 0 );
setEffMoveKey( spep_3 -3 + 94, ctba, -65.6, 229.2 , 0 );
setEffMoveKey( spep_3 -3 + 96, ctba, -67.3, 232.8 , 0 );

--setEffScaleKey( spep_3 -3 + 68, ctba, 0.06, 0.06 );
setEffScaleKey( spep_3 -3 + 70, ctba, 0.83, 0.83 );
setEffScaleKey( spep_3 -3 + 72, ctba, 1.6, 1.6 );
setEffScaleKey( spep_3 -3 + 74, ctba, 2.37, 2.37 );
setEffScaleKey( spep_3 -3 + 76, ctba, 2.38, 2.38 );
setEffScaleKey( spep_3 -3 + 78, ctba, 2.39, 2.39 );
setEffScaleKey( spep_3 -3 + 80, ctba, 2.4, 2.4 );
setEffScaleKey( spep_3 -3 + 82, ctba, 2.41, 2.41 );
setEffScaleKey( spep_3 -3 + 84, ctba, 2.42, 2.42 );
setEffScaleKey( spep_3 -3 + 86, ctba, 2.43, 2.43 );
setEffScaleKey( spep_3 -3 + 88, ctba, 2.44, 2.44 );
setEffScaleKey( spep_3 -3 + 90, ctba, 2.46, 2.46 );
setEffScaleKey( spep_3 -3 + 92, ctba, 2.47, 2.47 );
setEffScaleKey( spep_3 -3 + 94, ctba, 2.48, 2.48 );
setEffScaleKey( spep_3 -3 + 96, ctba, 2.49, 2.49 );

setEffRotateKey( spep_3 -3 + 70, ctba, 0 );
setEffRotateKey( spep_3 -3 + 96, ctba, 0 );

setEffAlphaKey( spep_3 -3 + 70, ctba, 255 );
setEffAlphaKey( spep_3 -3 + 88, ctba, 255 );
setEffAlphaKey( spep_3 -3 + 90, ctba, 191 );
setEffAlphaKey( spep_3 -3 + 92, ctba, 128 );
setEffAlphaKey( spep_3 -3 + 94, ctba, 64 );
setEffAlphaKey( spep_3 -3 + 96, ctba, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_3 -3 + 70,  906, 26, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 -3 + 70, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 -3 + 96, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 -3 + 70, shuchusen3, 1.1, 1.1 );
setEffScaleKey( spep_3 -3 + 96, shuchusen3, 1.1, 1.1 );

setEffRotateKey( spep_3 -3 + 70, shuchusen3, 180 );
setEffRotateKey( spep_3 -3 + 96, shuchusen3, 180 );

setEffAlphaKey( spep_3 -3 + 70, shuchusen3, 255 );
setEffAlphaKey( spep_3 -3 + 96, shuchusen3, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 , 0, 110 , 0, 0, 0, 0, 255 );  --黒　背景

--SE
playSe( spep_3 +68, 9);--ダッシュ
stopSe( spep_3 + 88, SE1, 10 );

--次の準備
spep_4 = spep_3 + 94;

------------------------------------------------------
-- パンチから掴み
------------------------------------------------------
-- ** エフェクト等 ** --
catch_f = entryEffect( spep_4 + 0, SP_06,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, catch_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 136, catch_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, catch_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 136, catch_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, catch_f, 0 );
setEffRotateKey( spep_4 + 136, catch_f, 0 );
setEffAlphaKey( spep_4 + 0, catch_f, 255 );
setEffAlphaKey( spep_4 + 136, catch_f, 255 );

-- ** エフェクト等 ** --
catch_b = entryEffect( spep_4 + 0, SP_07,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, catch_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 136, catch_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, catch_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 136, catch_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, catch_b, 0 );
setEffRotateKey( spep_4 + 136, catch_b, 0 );
setEffAlphaKey( spep_4 + 0, catch_b, 255 );
setEffAlphaKey( spep_4 + 136, catch_b, 255 );

--敵の動き
setDisp( spep_4 -3 + 18, 1, 1 );
setDisp( spep_4  + 136, 1, 0 );
changeAnime( spep_4 -3 + 18, 1, 104 );
changeAnime( spep_4 -3 + 50, 1, 106 );

x = 30;
setMoveKey( spep_4 -3 + 18, 1, 519.8, -80 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 448.6, -83.2 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 391.6, -85.8 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 343, -88 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 300.4, -89.9 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 262.6, -91.6 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 228.9, -93.2 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 198.9, -94.5 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 172.2, -95.7 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 148.9, -96.8 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 128.7, -97.7 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 111.8, -98.5 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 98.3, -99.1 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 88.2, -99.5 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 81.9, -99.8 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 79.8, -100 , 0 );
setMoveKey( spep_4 -3 + 49, 1, 79.8, -100 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 23.8, -89.8 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 21.5, -78.1 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 22.6, -80.4 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 23.7, -82.6 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 23.5, -79.4 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 23.2, -76.1 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 24, -77 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 24.8, -77.9 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 24.9, -76 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 25, -74.2 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 25.4, -73.7 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 25.9, -73.3 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 26.4, -72.8 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 26.8, -72.3 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 27.3, -71.8 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 175.7, -91.6 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 257.1, -100.7 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 310.3, -106.1 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 335.3, -107.7 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 304.1, -108.3 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 272.9, -109 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 241.7, -109.6 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 210.5, -110.2 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 179.3, -110.9 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 148.1, -111.5 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 116.9, -112.1 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 9.8 +x, -124 , 0 );
setMoveKey( spep_4 -3 + 103, 1, 9.8 +x, -124 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 30 +x, 0 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 30.8 +x, 0 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 40.4 +x, 0 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 35.6 +x, 0 , 0 );
setMoveKey( spep_4  + 136, 1, 30.8 +x, 0 , 0 );

setScaleKey( spep_4 -3 + 18, 1, 1.2, 1.2 );
setScaleKey( spep_4 -3 + 20, 1, 1.26, 1.26 );
setScaleKey( spep_4 -3 + 22, 1, 1.32, 1.32 );
setScaleKey( spep_4 -3 + 24, 1, 1.36, 1.36 );
setScaleKey( spep_4 -3 + 26, 1, 1.4, 1.4 );
setScaleKey( spep_4 -3 + 28, 1, 1.43, 1.43 );
setScaleKey( spep_4 -3 + 30, 1, 1.46, 1.46 );
setScaleKey( spep_4 -3 + 32, 1, 1.49, 1.49 );
setScaleKey( spep_4 -3 + 34, 1, 1.52, 1.52 );
setScaleKey( spep_4 -3 + 36, 1, 1.54, 1.54 );
setScaleKey( spep_4 -3 + 38, 1, 1.56, 1.56 );
setScaleKey( spep_4 -3 + 40, 1, 1.57, 1.57 );
setScaleKey( spep_4 -3 + 42, 1, 1.58, 1.58 );
setScaleKey( spep_4 -3 + 44, 1, 1.59, 1.59 );
setScaleKey( spep_4 -3 + 46, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 49, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 50, 1, 2.72, 2.72 );
setScaleKey( spep_4 -3 + 52, 1, 2.38, 2.38 );
setScaleKey( spep_4 -3 + 54, 1, 2.46, 2.46 );
setScaleKey( spep_4 -3 + 56, 1, 2.55, 2.55 );
setScaleKey( spep_4 -3 + 58, 1, 2.46, 2.46 );
setScaleKey( spep_4 -3 + 60, 1, 2.38, 2.38 );
setScaleKey( spep_4 -3 + 62, 1, 2.42, 2.42 );
setScaleKey( spep_4 -3 + 64, 1, 2.46, 2.46 );
setScaleKey( spep_4 -3 + 66, 1, 2.42, 2.42 );
setScaleKey( spep_4 -3 + 68, 1, 2.38, 2.38 );
setScaleKey( spep_4 -3 + 78, 1, 2.38, 2.38 );
setScaleKey( spep_4 -3 + 80, 1, 2.35, 2.35 );
setScaleKey( spep_4 -3 + 82, 1, 2.1, 2.1 );
setScaleKey( spep_4 -3 + 84, 1, 1.85, 1.85 );
setScaleKey( spep_4 -3 + 86, 1, 1.61, 1.61 );
setScaleKey( spep_4 -3 + 94, 1, 1.61, 1.61 );
setScaleKey( spep_4 -3 + 96, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 100, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 102, 1, 1.76, 1.76 );
setScaleKey( spep_4 -3 + 103, 1, 1.76, 1.76 );
setScaleKey( spep_4 -3 + 104, 1, 1.92, 1.92 );
setScaleKey( spep_4 -3 + 106, 1, 1.76, 1.76 );
setScaleKey( spep_4 -3 + 108, 1, 1.84, 1.84 );
setScaleKey( spep_4 -3 + 110, 1, 1.8, 1.8 );
setScaleKey( spep_4  + 136, 1, 1.76, 1.76 );

setRotateKey( spep_4 -3 + 18, 1, 0 );
setRotateKey( spep_4 -3 + 49, 1, 0 );
setRotateKey( spep_4 -3 + 50, 1, -35.1 );
setRotateKey( spep_4 -3 + 52, 1, -34.8 );
setRotateKey( spep_4 -3 + 54, 1, -34.5 );
setRotateKey( spep_4 -3 + 56, 1, -34.2 );
setRotateKey( spep_4 -3 + 58, 1, -34 );
setRotateKey( spep_4 -3 + 60, 1, -33.7 );
setRotateKey( spep_4 -3 + 62, 1, -33.4 );
setRotateKey( spep_4 -3 + 64, 1, -33.1 );
setRotateKey( spep_4 -3 + 66, 1, -32.8 );
setRotateKey( spep_4 -3 + 68, 1, -32.5 );
setRotateKey( spep_4 -3 + 70, 1, -32.2 );
setRotateKey( spep_4 -3 + 72, 1, -32 );
setRotateKey( spep_4 -3 + 74, 1, -31.7 );
setRotateKey( spep_4 -3 + 76, 1, -31.4 );
setRotateKey( spep_4 -3 + 78, 1, -31.1 );
setRotateKey( spep_4 -3 + 80, 1, -27.4 );
setRotateKey( spep_4 -3 + 82, 1, -23.7 );
setRotateKey( spep_4 -3 + 84, 1, -20 );
setRotateKey( spep_4 -3 + 86, 1, -16.3 );
setRotateKey( spep_4 -3 + 88, 1, -16.1 );
setRotateKey( spep_4 -3 + 90, 1, -16 );
setRotateKey( spep_4 -3 + 92, 1, -15.8 );
setRotateKey( spep_4 -3 + 94, 1, -15.6 );
setRotateKey( spep_4 -3 + 96, 1, -15.5 );
setRotateKey( spep_4 -3 + 98, 1, -15.3 );
setRotateKey( spep_4 -3 + 100, 1, -15.2 );
setRotateKey( spep_4 -3 + 102, 1, -15 );
setRotateKey( spep_4 -3 + 102, 1, -15 );
setRotateKey( spep_4 -3 + 104, 1, -60 );
setRotateKey( spep_4  + 136, 1, -60 );

--文字エントリー
ctbaki = entryEffectLife( spep_4 - 3 + 50,  10020, 38, 0x100, -1, 0, 7.5, 8.7 );

setEffMoveKey( spep_4 - 3 + 50, ctbaki, 7.5, 8.7 , 0 );
setEffMoveKey( spep_4 - 3 + 52, ctbaki, 30.7, -41.8 , 0 );
setEffMoveKey( spep_4 - 3 + 54, ctbaki, 64.8, -94 , 0 );
setEffMoveKey( spep_4 - 3 + 56, ctbaki, 84.4, -137.3 , 0 );
setEffMoveKey( spep_4 - 3 + 58, ctbaki, 96.6, -145.4 , 0 );
setEffMoveKey( spep_4 - 3 + 60, ctbaki, 84.6, -146.3 , 0 );
setEffMoveKey( spep_4 - 3 + 62, ctbaki, 90.8, -138.8 , 0 );
setEffMoveKey( spep_4 - 3 + 64, ctbaki, 91.1, -151.3 , 0 );
setEffMoveKey( spep_4 - 3 + 66, ctbaki, 87, -137.9 , 0 );
setEffMoveKey( spep_4 - 3 + 68, ctbaki, 92.1, -147.2 , 0 );
setEffMoveKey( spep_4 - 3 + 70, ctbaki, 85.3, -143.6 , 0 );
setEffMoveKey( spep_4 - 3 + 72, ctbaki, 89.9, -149.1 , 0 );
setEffMoveKey( spep_4 - 3 + 74, ctbaki, 90.3, -142 , 0 );
setEffMoveKey( spep_4 - 3 + 76, ctbaki, 89.3, -150 , 0 );
setEffMoveKey( spep_4 - 3 + 78, ctbaki, 85.9, -141.5 , 0 );
setEffMoveKey( spep_4 - 3 + 80, ctbaki, 90.2, -150.1 , 0 );
setEffMoveKey( spep_4 - 3 + 82, ctbaki, 89.2, -147.6 , 0 );
setEffMoveKey( spep_4 - 3 + 84, ctbaki, 96, -154.8 , 0 );
setEffMoveKey( spep_4 - 3 + 86, ctbaki, 95.8, -152.3 , 0 );
setEffMoveKey( spep_4 - 3 + 88, ctbaki, 100.5, -157.4 , 0 );

setEffScaleKey( spep_4 - 3 + 50, ctbaki, 0.1, 0.1 );
setEffScaleKey( spep_4 - 3 + 52, ctbaki, 0.73, 0.73 );
setEffScaleKey( spep_4 - 3 + 54, ctbaki, 1.37, 1.37 );
setEffScaleKey( spep_4 - 3 + 56, ctbaki, 2, 2 );
setEffScaleKey( spep_4 - 3 + 58, ctbaki, 2.01, 2.01 );
setEffScaleKey( spep_4 - 3 + 60, ctbaki, 2.02, 2.02 );
setEffScaleKey( spep_4 - 3 + 62, ctbaki, 2.03, 2.03 );
setEffScaleKey( spep_4 - 3 + 64, ctbaki, 2.04, 2.04 );
setEffScaleKey( spep_4 - 3 + 66, ctbaki, 2.05, 2.05 );
setEffScaleKey( spep_4 - 3 + 68, ctbaki, 2.05, 2.05 );
setEffScaleKey( spep_4 - 3 + 70, ctbaki, 2.06, 2.06 );
setEffScaleKey( spep_4 - 3 + 72, ctbaki, 2.07, 2.07 );
setEffScaleKey( spep_4 - 3 + 74, ctbaki, 2.08, 2.08 );
setEffScaleKey( spep_4 - 3 + 76, ctbaki, 2.09, 2.09 );
setEffScaleKey( spep_4 - 3 + 78, ctbaki, 2.1, 2.1 );
setEffScaleKey( spep_4 - 3 + 80, ctbaki, 2.12, 2.12 );
setEffScaleKey( spep_4 - 3 + 82, ctbaki, 2.14, 2.14 );
setEffScaleKey( spep_4 - 3 + 84, ctbaki, 2.16, 2.16 );
setEffScaleKey( spep_4 - 3 + 86, ctbaki, 2.18, 2.18 );
setEffScaleKey( spep_4 - 3 + 88, ctbaki, 2.2, 2.2 );

setEffRotateKey( spep_4 - 3 + 50, ctbaki, 0 );
setEffRotateKey( spep_4 - 3 + 88, ctbaki, 0 );

setEffAlphaKey( spep_4 - 3 + 50, ctbaki, 255 );
setEffAlphaKey( spep_4 - 3 + 78, ctbaki, 255 );
setEffAlphaKey( spep_4 - 3 + 80, ctbaki, 209 );
setEffAlphaKey( spep_4 - 3 + 82, ctbaki, 163 );
setEffAlphaKey( spep_4 - 3 + 84, ctbaki, 118 );
setEffAlphaKey( spep_4 - 3 + 86, ctbaki, 72 );
setEffAlphaKey( spep_4 - 3 + 88, ctbaki, 26 );

--文字エントリー
ctga = entryEffectLife( spep_4 - 3 + 104,  10005, 34, 0x100, -1, 0, -63.4, 169.8 );

setEffMoveKey( spep_4 - 3 + 104, ctga, -63.4, 169.8 , 0 );
setEffMoveKey( spep_4 - 3 + 106, ctga, -75.8, 213.7 , 0 );
setEffMoveKey( spep_4 - 3 + 108, ctga, -85.8, 248.8 , 0 );
setEffMoveKey( spep_4 - 3 + 110, ctga, -93.9, 278.3 , 0 );
setEffMoveKey( spep_4 - 3 + 112, ctga, -94.4, 279.9 , 0 );
setEffMoveKey( spep_4 - 3 + 114, ctga, -94.9, 281.3 , 0 );
setEffMoveKey( spep_4 - 3 + 116, ctga, -95.3, 282.5 , 0 );
setEffMoveKey( spep_4 - 3 + 118, ctga, -95.7, 283.6 , 0 );
setEffMoveKey( spep_4 - 3 + 120, ctga, -96, 284.6 , 0 );
setEffMoveKey( spep_4 - 3 + 122, ctga, -96.2, 285.5 , 0 );
setEffMoveKey( spep_4 - 3 + 124, ctga, -96.5, 286.2 , 0 );
setEffMoveKey( spep_4 - 3 + 126, ctga, -96.7, 286.9 , 0 );
setEffMoveKey( spep_4 - 3 + 128, ctga, -96.9, 287.5 , 0 );
setEffMoveKey( spep_4 - 3 + 130, ctga, -97.3, 288.2 , 0 );
setEffMoveKey( spep_4 - 3 + 132, ctga, -97.8, 289.4 , 0 );
setEffMoveKey( spep_4 - 3 + 134, ctga, -98.4, 290.6 , 0 );
setEffMoveKey( spep_4 - 3 + 136, ctga, -98.8, 291.7 , 0 );
setEffMoveKey( spep_4 - 3 + 138, ctga, -99, 293.1 , 0 );

b=1;

setEffScaleKey( spep_4 - 3 + 104, ctga, 0.1 + b, 0.1 + b );
setEffScaleKey( spep_4 - 3 + 106, ctga, 0.47 + b, 0.47 + b );
setEffScaleKey( spep_4 - 3 + 108, ctga, 0.76 + b, 0.76 + b );
setEffScaleKey( spep_4 - 3 + 110, ctga, 1 + b, 1 + b );
setEffScaleKey( spep_4 - 3 + 112, ctga, 1.02 + b, 1.02 + b );
setEffScaleKey( spep_4 - 3 + 114, ctga, 1.03 + b, 1.03 + b );
setEffScaleKey( spep_4 - 3 + 116, ctga, 1.04 + b, 1.04 + b );
setEffScaleKey( spep_4 - 3 + 118, ctga, 1.06 + b, 1.06 + b );
setEffScaleKey( spep_4 - 3 + 120, ctga, 1.06 + b, 1.06 + b );
setEffScaleKey( spep_4 - 3 + 122, ctga, 1.07 + b, 1.07 + b );
setEffScaleKey( spep_4 - 3 + 124, ctga, 1.08 + b, 1.08 + b );
setEffScaleKey( spep_4 - 3 + 126, ctga, 1.09 + b, 1.09 + b );
setEffScaleKey( spep_4 - 3 + 128, ctga, 1.09 + b, 1.09 + b );
setEffScaleKey( spep_4 - 3 + 130, ctga, 1.1 + b, 1.1 + b );
setEffScaleKey( spep_4 - 3 + 132, ctga, 1.12 + b, 1.12 + b );
setEffScaleKey( spep_4 - 3 + 134, ctga, 1.13 + b, 1.13 + b );
setEffScaleKey( spep_4 - 3 + 136, ctga, 1.14 + b, 1.14 + b );
setEffScaleKey( spep_4 - 3 + 138, ctga, 1.15 + b, 1.15 + b );

setEffRotateKey( spep_4 - 3 + 104, ctga, -20 );
setEffRotateKey( spep_4 - 3 + 138, ctga, -20 );

setEffAlphaKey( spep_4 - 3 + 104, ctga, 255 );
setEffAlphaKey( spep_4 - 3 + 130, ctga, 255 );
setEffAlphaKey( spep_4 - 3 + 132, ctga, 186 );
setEffAlphaKey( spep_4 - 3 + 134, ctga, 126 );
setEffAlphaKey( spep_4 - 3 + 136, ctga, 73 );
setEffAlphaKey( spep_4 - 3 + 138, ctga, 26 );

--集中線
shuchusen4 = entryEffectLife( spep_4 -3 + 50,  906, 28, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 -3 + 50, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 -3 + 78, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 -3 + 50, shuchusen4, 1, 1 );
setEffScaleKey( spep_4 -3 + 78, shuchusen4, 1, 1 );

setEffRotateKey( spep_4 -3 + 50, shuchusen4, 0 );
setEffRotateKey( spep_4 -3 + 78, shuchusen4, 0 );

setEffAlphaKey( spep_4 -3 + 50, shuchusen4, 255 );
setEffAlphaKey( spep_4 -3 + 78, shuchusen4, 255 );

--集中線
shuchusen5 = entryEffectLife( spep_4 -3 + 102,  906, 36, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 -3 + 102, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_4 -3 + 138, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_4 -3 + 102, shuchusen5, 1, 1 );
setEffScaleKey( spep_4 -3 + 138, shuchusen5, 1, 1 );

setEffRotateKey( spep_4 -3 + 102, shuchusen5, 0 );
setEffRotateKey( spep_4 -3 + 138, shuchusen5, 0 );

setEffAlphaKey( spep_4 -3 + 102, shuchusen5, 255 );
setEffAlphaKey( spep_4 -3 + 138, shuchusen5, 255 );

--SE
playSe( spep_4 +48, 1010);--パンチ
playSe( spep_4 +102, 1012);--掴む

-- ** 黒背景 ** --
entryFadeBg( spep_4 , 0, 150 , 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_5 = spep_4 + 136;

------------------------------------------------------
-- 顔アップ
------------------------------------------------------
-- ** エフェクト等 ** --
face = entryEffect( spep_5 + 0, SP_08,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, face, 0, 0 , 0 );
setEffMoveKey( spep_5 + 116, face, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, face, 1.0, 1.0 );
setEffScaleKey( spep_5 + 116, face, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, face, 0 );
setEffRotateKey( spep_5 + 116, face, 0 );
setEffAlphaKey( spep_5 + 0, face, 255 );
setEffAlphaKey( spep_5 + 116, face, 255 );

--集中線
shuchusen6 = entryEffectLife( spep_5 + 0,  906, 116, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_5 + 116, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen6, 1, 1 );
setEffScaleKey( spep_5 + 116, shuchusen6, 1, 1 );

setEffRotateKey( spep_5 + 0, shuchusen6, 0 );
setEffRotateKey( spep_5 + 116, shuchusen6, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen6, 255 );
setEffAlphaKey( spep_5 + 116, shuchusen6, 255 );

--***カットイン***
--speff = entryEffect(  spep_5  +22,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff3 = entryEffect(  spep_5  +22,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff3, 4, 5);                           -- セリフ差し替え

--SE

SE2=playSe( spep_5 , 15);--ため
stopSe( spep_5 +36, SE2, 0 );
playSe( spep_5 + 38, 1018);--ゴゴゴ

--白フェード
entryFade( spep_5 + 104, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_6 = spep_5 + 116;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_6 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_6 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_6 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_6 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_6 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_6 + 0, shuchusen, 0 );
setEffRotateKey( spep_6 + 90, shuchusen, 0 );

setEffAlphaKey( spep_6 + 0, shuchusen, 255 );
setEffAlphaKey( spep_6 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_6 + 0, SE_05 );

--白フェード
entryFade( spep_6 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 94;

------------------------------------------------------
-- 気放射
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_7 + 0, SP_09,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 240, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 240, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_f, 0 );
setEffRotateKey( spep_7 + 240, finish_f, 0 );
setEffAlphaKey( spep_7 + 0, finish_f, 255 );
setEffAlphaKey( spep_7 + 240, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_7 + 0, SP_10,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 240, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 240, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_b, 0 );
setEffRotateKey( spep_7 + 240, finish_b, 0 );
setEffAlphaKey( spep_7 + 0, finish_b, 255 );
setEffAlphaKey( spep_7 + 240, finish_b, 255 );

--敵の動き
setDisp( spep_7  + 0, 1, 1 );
changeAnime( spep_7  + 0, 1, 106 );

setMoveKey( spep_7 -3 + 0, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 2, 1, 15.6 +x, -65 , 0 );
setMoveKey( spep_7 -3 + 4, 1, 4.3 +x, -82.2 , 0 );
setMoveKey( spep_7 -3 + 6, 1, 13.8 +x, -58.2 , 0 );
setMoveKey( spep_7 -3 + 8, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 10, 1, 4.4 +x, -61.4 , 0 );
setMoveKey( spep_7 -3 + 12, 1, 15.6 +x, -65 , 0 );
setMoveKey( spep_7 -3 + 14, 1, 3.7 +x, -72 , 0 );
setMoveKey( spep_7 -3 + 16, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 18, 1, 9.9 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 20, 1, 4.3 +x, -61.4 , 0 );
setMoveKey( spep_7 -3 + 22, 1, 14.5 +x, -60.6 , 0 );
setMoveKey( spep_7 -3 + 24, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 26, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 28, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 30, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 32, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 34, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 36, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 38, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 40, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 42, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 44, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 46, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 48, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 50, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 52, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 54, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 56, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 58, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 60, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 62, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 64, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 66, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 68, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 70, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 72, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 74, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 76, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 78, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 80, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 82, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 84, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 86, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 88, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 90, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 92, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 94, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 96, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 98, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 100, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 102, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 104, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 106, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 108, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 110, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 112, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 114, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 116, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 118, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 120, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 122, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 124, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 126, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 128, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 130, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 132, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 134, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 136, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 138, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 140, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 142, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 144, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 146, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 148, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 150, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 152, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 154, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 156, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 158, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 160, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 162, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 164, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 166, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 168, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 170, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 172, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 174, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 176, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 178, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 180, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 182, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 184, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 186, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 188, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 190, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 192, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 194, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 196, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 198, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 200, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 202, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 204, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 206, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 208, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 210, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 212, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 214, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 216, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 218, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 220, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 222, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 224, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 226, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 228, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 230, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 232, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 234, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 236, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7  + 238, 1, 9.6 +x, -66.9 , 0 );

setScaleKey( spep_7 -3 + 0, 1, 1.8, 1.8 );
setScaleKey( spep_7 -3 + 2, 1, 1.98, 1.98 );
setScaleKey( spep_7 -3 + 4, 1, 2.16, 2.16 );
setScaleKey( spep_7 -3 + 6, 1, 1.98, 1.98 );
setScaleKey( spep_7 -3 + 8, 1, 1.8, 1.8 );
setScaleKey( spep_7 -3 + 10, 1, 1.89, 1.89 );
setScaleKey( spep_7 -3 + 12, 1, 1.98, 1.98 );
setScaleKey( spep_7 -3 + 14, 1, 1.89, 1.89 );
setScaleKey( spep_7 -3 + 16, 1, 1.8, 1.8 );
setScaleKey( spep_7 -3 + 18, 1, 1.84, 1.84 );
setScaleKey( spep_7 -3 + 20, 1, 1.89, 1.89 );
setScaleKey( spep_7 -3 + 22, 1, 1.84, 1.84 );
setScaleKey( spep_7 -3 + 24, 1, 1.8, 1.8 );
setScaleKey( spep_7  + 238, 1, 1.8, 1.8 );

setRotateKey( spep_7 -3 + 0, 1, -60.1 );
setRotateKey( spep_7  + 238, 1, -60.1 );

--集中線
shuchusen7 = entryEffectLife( spep_7 + 0,  906, 238, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_7 + 0, shuchusen7, 0, 0 , 0 );
setEffMoveKey( spep_7 + 238, shuchusen7, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen7, 1.1, 1.1 );
setEffScaleKey( spep_7 + 238, shuchusen7, 1.1, 1.1 );

setEffRotateKey( spep_7 + 0, shuchusen7, 180 );
setEffRotateKey( spep_7 + 238, shuchusen7, 180 );

setEffAlphaKey( spep_7 + 0, shuchusen7, 255 );
setEffAlphaKey( spep_7 + 238, shuchusen7, 255 );

--文字エントリー

ctdon = entryEffectLife( spep_7 -3 + 10,  10019, 48, 0x100, -1, 0, 47.5, -40.1 );

setEffMoveKey( spep_7 -3 + 10, ctdon, 47.5, -40.1 , 0 );
setEffMoveKey( spep_7 -3 + 12, ctdon, 16.7, -116.1 , 0 );
setEffMoveKey( spep_7 -3 + 14, ctdon, 1.9, -194.4 , 0 );
setEffMoveKey( spep_7 -3 + 16, ctdon, -34.5, -259.5 , 0 );
setEffMoveKey( spep_7 -3 + 18, ctdon, -17, -273.2 , 0 );
setEffMoveKey( spep_7 -3 + 20, ctdon, -35.9, -276 , 0 );
setEffMoveKey( spep_7 -3 + 22, ctdon, -27.3, -266.2 , 0 );
setEffMoveKey( spep_7 -3 + 24, ctdon, -27.8, -286.3 , 0 );
setEffMoveKey( spep_7 -3 + 26, ctdon, -34.8, -267.9 , 0 );
setEffMoveKey( spep_7 -3 + 28, ctdon, -27.9, -283.2 , 0 );
setEffMoveKey( spep_7 -3 + 30, ctdon, -38.9, -279.4 , 0 );
setEffMoveKey( spep_7 -3 + 32, ctdon, -32.9, -289 , 0 );
setEffMoveKey( spep_7 -3 + 34, ctdon, -33.1, -279.9 , 0 );
setEffMoveKey( spep_7 -3 + 36, ctdon, -35.5, -293.3 , 0 );
setEffMoveKey( spep_7 -3 + 38, ctdon, -41.3, -282.2 , 0 );
setEffMoveKey( spep_7 -3 + 40, ctdon, -38.8, -292.4 , 0 );
setEffMoveKey( spep_7 -3 + 42, ctdon, -44, -286.5 , 0 );
setEffMoveKey( spep_7 -3 + 44, ctdon, -38.1, -294.6 , 0 );
setEffMoveKey( spep_7 -3 + 46, ctdon, -42.1, -288.6 , 0 );
setEffMoveKey( spep_7 -3 + 48, ctdon, -39.2, -293.6 , 0 );
setEffMoveKey( spep_7 -3 + 50, ctdon, -44.5, -294.1 , 0 );
setEffMoveKey( spep_7 -3 + 52, ctdon, -41, -294.7 , 0 );
setEffMoveKey( spep_7 -3 + 54, ctdon, -46.3, -296 , 0 );
setEffMoveKey( spep_7 -3 + 56, ctdon, -44, -296.5 , 0 );
setEffMoveKey( spep_7 -3 + 58, ctdon, -47.2, -296.8 , 0 );

setEffScaleKey( spep_7 -3 + 10, ctdon, 0.1, 0.1 );
setEffScaleKey( spep_7 -3 + 12, ctdon, 1.07, 1.07 );
setEffScaleKey( spep_7 -3 + 14, ctdon, 2.03, 2.03 );
setEffScaleKey( spep_7 -3 + 16, ctdon, 3, 3 );
setEffScaleKey( spep_7 -3 + 18, ctdon, 3.01, 3.01 );
setEffScaleKey( spep_7 -3 + 20, ctdon, 3.02, 3.02 );
setEffScaleKey( spep_7 -3 + 22, ctdon, 3.03, 3.03 );
setEffScaleKey( spep_7 -3 + 24, ctdon, 3.04, 3.04 );
setEffScaleKey( spep_7 -3 + 26, ctdon, 3.05, 3.05 );
setEffScaleKey( spep_7 -3 + 28, ctdon, 3.05, 3.05 );
setEffScaleKey( spep_7 -3 + 30, ctdon, 3.06, 3.06 );
setEffScaleKey( spep_7 -3 + 32, ctdon, 3.07, 3.07 );
setEffScaleKey( spep_7 -3 + 34, ctdon, 3.08, 3.08 );
setEffScaleKey( spep_7 -3 + 36, ctdon, 3.09, 3.09 );
setEffScaleKey( spep_7 -3 + 38, ctdon, 3.1, 3.1 );
setEffScaleKey( spep_7 -3 + 40, ctdon, 3.11, 3.11 );
setEffScaleKey( spep_7 -3 + 42, ctdon, 3.12, 3.12 );
setEffScaleKey( spep_7 -3 + 44, ctdon, 3.13, 3.13 );
setEffScaleKey( spep_7 -3 + 46, ctdon, 3.14, 3.14 );
setEffScaleKey( spep_7 -3 + 48, ctdon, 3.15, 3.15 );
setEffScaleKey( spep_7 -3 + 50, ctdon, 3.16, 3.16 );
setEffScaleKey( spep_7 -3 + 52, ctdon, 3.17, 3.17 );
setEffScaleKey( spep_7 -3 + 54, ctdon, 3.18, 3.18 );
setEffScaleKey( spep_7 -3 + 56, ctdon, 3.19, 3.19 );
setEffScaleKey( spep_7 -3 + 58, ctdon, 3.2, 3.2 );

setEffRotateKey( spep_7 -3 + 10, ctdon, 0 );
setEffRotateKey( spep_7 -3 + 58, ctdon, 0 );

setEffAlphaKey( spep_7 -3 + 10, ctdon, 255 );
setEffAlphaKey( spep_7 -3 + 38, ctdon, 255 );
setEffAlphaKey( spep_7 -3 + 40, ctdon, 232 );
setEffAlphaKey( spep_7 -3 + 42, ctdon, 209 );
setEffAlphaKey( spep_7 -3 + 44, ctdon, 186 );
setEffAlphaKey( spep_7 -3 + 46, ctdon, 163 );
setEffAlphaKey( spep_7 -3 + 48, ctdon, 141 );
setEffAlphaKey( spep_7 -3 + 50, ctdon, 118 );
setEffAlphaKey( spep_7 -3 + 52, ctdon, 95 );
setEffAlphaKey( spep_7 -3 + 54, ctdon, 72 );
setEffAlphaKey( spep_7 -3 + 56, ctdon, 49 );
setEffAlphaKey( spep_7 -3 + 58, ctdon, 26 );

--SE
playSe( spep_7 +8, 1022);--ビーム

--SE3=playSe( spep_7 +20, 1044);--地割れ
--stopSe( spep_7 +220, SE3, 0 );

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 8 );
endPhase( spep_7 + 220 );

else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 登場から着地
------------------------------------------------------
--はじめの準備
spep_0= 0;

-- ** エフェクト等 ** --
landing = entryEffect( spep_0 + 0, SP_01,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, landing, 0, 0 , 0 );
setEffMoveKey( spep_0 + 248, landing, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, landing, -1.0, 1.0 );
setEffScaleKey( spep_0 + 248, landing, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, landing, 0 );
setEffRotateKey( spep_0 + 248, landing, 0 );
setEffAlphaKey( spep_0 + 0, landing, 255 );
setEffAlphaKey( spep_0 + 248, landing, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0 -3 + 50,  906, 88, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 -3 + 50, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 138, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 50, shuchusen1, 1.1, 1.1 );
setEffScaleKey( spep_0 -3 + 138, shuchusen1, 1.1, 1.1 );

setEffRotateKey( spep_0 -3 + 50, shuchusen1, 180 );
setEffRotateKey( spep_0 -3 + 138, shuchusen1, 180 );

setEffAlphaKey( spep_0 -3 + 50, shuchusen1, 255 );
setEffAlphaKey( spep_0 -3 + 138, shuchusen1, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_0-3 + 208,  906, 40 +3, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0-3 + 208, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_0 + 248, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 208, shuchusen2, 1.1, 1.1 );
setEffScaleKey( spep_0 + 248, shuchusen2, 1.1, 1.1 );

setEffRotateKey( spep_0-3 + 208, shuchusen2, 180 );
setEffRotateKey( spep_0 + 248, shuchusen2, 180 );

setEffAlphaKey( spep_0-3 + 208, shuchusen2, 255 );
setEffAlphaKey( spep_0 + 247, shuchusen2, 255 );
setEffAlphaKey( spep_0 + 248, shuchusen2, 0 );

--SE
playSe( spep_0 + 28,  1135);  --セルの足音
playSe( spep_0 + 50, 8);--カメラの移動音
playSe( spep_0 + 150, 1007);--飛び降りの音
playSe( spep_0 + 186, 1012);--着地
playSe( spep_0 + 204, 1072);--カメラの移動音

-- ** 黒背景 ** --
entryFadeBg( spep_0 , 0, 250 , 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_1 = spep_0 + 248;

------------------------------------------------------
-- 気ダメ
------------------------------------------------------

-- ** エフェクト等 ** --
teme = entryEffect( spep_1 + 0, SP_02,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, teme, 0, 0 , 0 );
setEffMoveKey( spep_1 + 176, teme, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, teme, -1.0, 1.0 );
setEffScaleKey( spep_1 + 176, teme, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, teme, 0 );
setEffRotateKey( spep_1 + 176, teme, 0 );
setEffAlphaKey( spep_1 + 0, teme, 255 );
setEffAlphaKey( spep_1 + 176, teme, 255 );

--SE
SE0=playSe( spep_1, 1037);--ため
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    
    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
     --敵の情報
     


    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--文字エントリー
ctzuo = entryEffectLife( spep_1 -3 + 120,  10012, 38, 0x100, -1, 0, -9.9, 19.9 );

setEffMoveKey( spep_1 -3 + 120, ctzuo, -9.9, 19.9 , 0 );
setEffMoveKey( spep_1 -3 + 122, ctzuo, -64.3, 92.3 , 0 );
setEffMoveKey( spep_1 -3 + 124, ctzuo, -115.3, 167.7 , 0 );
setEffMoveKey( spep_1 -3 + 126, ctzuo, -172.6, 237.9 , 0 );
setEffMoveKey( spep_1 -3 + 128, ctzuo, -168.7, 242.5 , 0 );
setEffMoveKey( spep_1 -3 + 130, ctzuo, -173.7, 242.6 , 0 );
setEffMoveKey( spep_1 -3 + 132, ctzuo, -168.8, 245.2 , 0 );
setEffMoveKey( spep_1 -3 + 134, ctzuo, -172, 242.3 , 0 );
setEffMoveKey( spep_1 -3 + 136, ctzuo, -173.1, 247 , 0 );
setEffMoveKey( spep_1 -3 + 138, ctzuo, -169.9, 244.9 , 0 );
setEffMoveKey( spep_1 -3 + 140, ctzuo, -175.3, 247.9 , 0 );
setEffMoveKey( spep_1 -3 + 142, ctzuo, -171.8, 248.1 , 0 );
setEffMoveKey( spep_1 -3 + 144, ctzuo, -175, 247.9 , 0 );
setEffMoveKey( spep_1 -3 + 146, ctzuo, -172.8, 248.8 , 0 );
setEffMoveKey( spep_1 -3 + 148, ctzuo, -177.8, 247.7 , 0 );
setEffMoveKey( spep_1 -3 + 150, ctzuo, -173.1, 250.7 , 0 );
setEffMoveKey( spep_1 -3 + 152, ctzuo, -178, 248.9 , 0 );
setEffMoveKey( spep_1 -3 + 154, ctzuo, -172.2, 249.6 , 0 );
setEffMoveKey( spep_1 -3 + 156, ctzuo, -175.2, 244.6 , 0 );
setEffMoveKey( spep_1 -3 + 158, ctzuo, -177.9, 242.6 , 0 );

a=1.8;

setEffScaleKey( spep_1 -3 + 120, ctzuo, 0.1 , 0.1  );
setEffScaleKey( spep_1 -3 + 122, ctzuo, 0.32 , 0.32  );
setEffScaleKey( spep_1 -3 + 124, ctzuo, 0.53 , 0.53  );
setEffScaleKey( spep_1 -3 + 126, ctzuo, 0.75 + a, 0.75 + a );
setEffScaleKey( spep_1 -3 + 128, ctzuo, 0.75 + a, 0.75 + a );
setEffScaleKey( spep_1 -3 + 130, ctzuo, 0.76 + a, 0.76 + a );
setEffScaleKey( spep_1 -3 + 132, ctzuo, 0.76 + a, 0.76 + a );
setEffScaleKey( spep_1 -3 + 134, ctzuo, 0.77 + a, 0.77 + a );
setEffScaleKey( spep_1 -3 + 136, ctzuo, 0.77 + a, 0.77 + a );
setEffScaleKey( spep_1 -3 + 138, ctzuo, 0.78 + a, 0.78 + a );
setEffScaleKey( spep_1 -3 + 140, ctzuo, 0.78 + a, 0.78 + a );
setEffScaleKey( spep_1 -3 + 142, ctzuo, 0.79 + a, 0.79 + a );
setEffScaleKey( spep_1 -3 + 144, ctzuo, 0.79 + a, 0.79 + a );
setEffScaleKey( spep_1 -3 + 146, ctzuo, 0.8 + a, 0.8 + a );
setEffScaleKey( spep_1 -3 + 148, ctzuo, 0.8 + a, 0.8 + a );
setEffScaleKey( spep_1 -3 + 150, ctzuo, 0.81 + a, 0.81 + a );
setEffScaleKey( spep_1 -3 + 152, ctzuo, 0.82 + a, 0.82 + a );
setEffScaleKey( spep_1 -3 + 154, ctzuo, 0.83 + a, 0.83 + a );
setEffScaleKey( spep_1 -3 + 156, ctzuo, 0.84 + a, 0.84 + a );
setEffScaleKey( spep_1 -3 + 158, ctzuo, 0.85 + a, 0.85 + a );

setEffRotateKey( spep_1 -3 + 120, ctzuo, -30 );
setEffRotateKey( spep_1 -3 + 158, ctzuo, -30 );

setEffAlphaKey( spep_1 -3 + 120, ctzuo, 255 );
setEffAlphaKey( spep_1 -3 + 148, ctzuo, 255 );
setEffAlphaKey( spep_1 -3 + 150, ctzuo, 209 );
setEffAlphaKey( spep_1 -3 + 152, ctzuo, 163 );
setEffAlphaKey( spep_1 -3 + 154, ctzuo, 118 );
setEffAlphaKey( spep_1 -3 + 156, ctzuo, 72 );
setEffAlphaKey( spep_1 -3 + 158, ctzuo, 26 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 , 0, 190 , 0, 0, 0, 0, 255 );  --黒　背景

--SE
stopSe( spep_1 +106, SE0, 10 );
playSe( spep_1 + 116, 1024);--放出


--次の準備
spep_2 = spep_1 + 176;

------------------------------------------------------
-- 敵が爆風に曝される
------------------------------------------------------
-- ** エフェクト等 ** --
blast_f = entryEffect( spep_2 + 0, SP_03,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, blast_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, blast_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, blast_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, blast_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, blast_f, 0 );
setEffRotateKey( spep_2 + 56, blast_f, 0 );
setEffAlphaKey( spep_2 + 0, blast_f, 255 );
setEffAlphaKey( spep_2 + 56, blast_f, 255 );

-- ** エフェクト等 ** --
blast_b = entryEffect( spep_2 + 0, SP_04,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, blast_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, blast_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, blast_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, blast_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, blast_b, 0 );
setEffRotateKey( spep_2 + 56, blast_b, 0 );
setEffAlphaKey( spep_2 + 0, blast_b, 255 );
setEffAlphaKey( spep_2 + 56, blast_b, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 56, 1, 0 );
changeAnime( spep_2 + 0, 1, 104 );

setMoveKey( spep_2 + 0, 1, -81.9, -71.8 , 0 );
setMoveKey( spep_2 + 2, 1, -73.8, -73.5 , 0 );
setMoveKey( spep_2 + 4, 1, -65.7, -75.2 , 0 );
setMoveKey( spep_2 + 6, 1, -60.3, -74 , 0 );
setMoveKey( spep_2 + 8, 1, -54.9, -72.8 , 0 );
setMoveKey( spep_2 + 10, 1, -44.2, -73.3 , 0 );
setMoveKey( spep_2 + 12, 1, -33.5, -73.9 , 0 );
setMoveKey( spep_2 + 14, 1, -28.4, -74.3 , 0 );
setMoveKey( spep_2 + 16, 1, -23.3, -74.7 , 0 );
setMoveKey( spep_2 + 18, 1, -14.6, -73.2 , 0 );
setMoveKey( spep_2 + 20, 1, -6, -71.8 , 0 );
setMoveKey( spep_2 + 22, 1, 2.1, -73.5 , 0 );
setMoveKey( spep_2 + 24, 1, 10.2, -75.2 , 0 );
setMoveKey( spep_2 + 26, 1, 15.6, -74 , 0 );
setMoveKey( spep_2 + 28, 1, 20.9, -72.8 , 0 );
setMoveKey( spep_2 + 30, 1, 31.7, -73.4 , 0 );
setMoveKey( spep_2 + 32, 1, 42.4, -73.9 , 0 );
setMoveKey( spep_2 + 34, 1, 47.5, -74.3 , 0 );
setMoveKey( spep_2 + 36, 1, 52.6, -74.7 , 0 );
setMoveKey( spep_2 + 38, 1, 61.2, -73.3 , 0 );
setMoveKey( spep_2 + 40, 1, 69.9, -71.8 , 0 );
setMoveKey( spep_2 + 42, 1, 78, -73.5 , 0 );
setMoveKey( spep_2 + 44, 1, 86.1, -75.2 , 0 );
setMoveKey( spep_2 + 46, 1, 91.4, -74.1 , 0 );
setMoveKey( spep_2 + 48, 1, 96.8, -72.9 , 0 );
setMoveKey( spep_2 + 50, 1, 107.5, -73.4 , 0 );
setMoveKey( spep_2 + 52, 1, 118.3, -74 , 0 );
setMoveKey( spep_2 + 54, 1, 123.3, -74.3 , 0 );
setMoveKey( spep_2 + 56, 1, 128.4, -74.7 , 0 );
--setMoveKey( spep_2 + 58, 1, 137.1, -73.3 , 0 );

setScaleKey( spep_2 + 0, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 56, 1, 1.6, 1.6 );

setRotateKey( spep_2 + 0, 1, 9.8 );
setRotateKey( spep_2 + 56, 1, 9.8 );

--SE
SE1=playSe( spep_2, 1044);--時揺れ


-- ** 黒背景 ** --
entryFadeBg( spep_2 , 0, 70 , 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_3 = spep_2 + 56;

------------------------------------------------------
-- 岩崩壊から手前ダッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
dash = entryEffect( spep_3 + 0, SP_05,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, dash, 0, 0 , 0 );
setEffMoveKey( spep_3 + 94, dash, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, dash, -1.0, 1.0 );
setEffScaleKey( spep_3 + 94, dash, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, dash, 0 );
setEffRotateKey( spep_3 + 94, dash, 0 );
setEffAlphaKey( spep_3 + 0, dash, 255 );
setEffAlphaKey( spep_3 + 94, dash, 255 );


--文字エントリー
ctba = entryEffectLife( spep_3 -3 + 70,  10022, 26, 0x100, -1, 0, -12.5, 30 );
--setEffMoveKey( spep_3 -3 + 68, ctba, -12.5, 30 , 0 );
setEffMoveKey( spep_3 -3 + 70, ctba, -31.9, 88.1 , 0 );
setEffMoveKey( spep_3 -3 + 72, ctba, -30.3, 143.2 , 0 );
setEffMoveKey( spep_3 -3 + 74, ctba, -57.3, 215.9 , 0 );
setEffMoveKey( spep_3 -3 + 76, ctba, -34.6, 203.6 , 0 );
setEffMoveKey( spep_3 -3 + 78, ctba, -60.6, 205.6 , 0 );
setEffMoveKey( spep_3 -3 + 80, ctba, -49.8, 224.6 , 0 );
setEffMoveKey( spep_3 -3 + 82, ctba, -51.2, 203.5 , 0 );
setEffMoveKey( spep_3 -3 + 84, ctba, -61.2, 234.1 , 0 );
setEffMoveKey( spep_3 -3 + 86, ctba, -52.7, 219.3 , 0 );
setEffMoveKey( spep_3 -3 + 88, ctba, -68.2, 230.4 , 0 );
setEffMoveKey( spep_3 -3 + 90, ctba, -60.8, 223.3 , 0 );
setEffMoveKey( spep_3 -3 + 92, ctba, -61.7, 241.4 , 0 );
setEffMoveKey( spep_3 -3 + 94, ctba, -65.6, 229.2 , 0 );
setEffMoveKey( spep_3 -3 + 96, ctba, -67.3, 232.8 , 0 );

--setEffScaleKey( spep_3 -3 + 68, ctba, 0.06, 0.06 );
setEffScaleKey( spep_3 -3 + 70, ctba, 0.83, 0.83 );
setEffScaleKey( spep_3 -3 + 72, ctba, 1.6, 1.6 );
setEffScaleKey( spep_3 -3 + 74, ctba, 2.37, 2.37 );
setEffScaleKey( spep_3 -3 + 76, ctba, 2.38, 2.38 );
setEffScaleKey( spep_3 -3 + 78, ctba, 2.39, 2.39 );
setEffScaleKey( spep_3 -3 + 80, ctba, 2.4, 2.4 );
setEffScaleKey( spep_3 -3 + 82, ctba, 2.41, 2.41 );
setEffScaleKey( spep_3 -3 + 84, ctba, 2.42, 2.42 );
setEffScaleKey( spep_3 -3 + 86, ctba, 2.43, 2.43 );
setEffScaleKey( spep_3 -3 + 88, ctba, 2.44, 2.44 );
setEffScaleKey( spep_3 -3 + 90, ctba, 2.46, 2.46 );
setEffScaleKey( spep_3 -3 + 92, ctba, 2.47, 2.47 );
setEffScaleKey( spep_3 -3 + 94, ctba, 2.48, 2.48 );
setEffScaleKey( spep_3 -3 + 96, ctba, 2.49, 2.49 );

setEffRotateKey( spep_3 -3 + 70, ctba, 0 );
setEffRotateKey( spep_3 -3 + 96, ctba, 0 );

setEffAlphaKey( spep_3 -3 + 70, ctba, 255 );
setEffAlphaKey( spep_3 -3 + 88, ctba, 255 );
setEffAlphaKey( spep_3 -3 + 90, ctba, 191 );
setEffAlphaKey( spep_3 -3 + 92, ctba, 128 );
setEffAlphaKey( spep_3 -3 + 94, ctba, 64 );
setEffAlphaKey( spep_3 -3 + 96, ctba, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_3 -3 + 70,  906, 26, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 -3 + 70, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 -3 + 96, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 -3 + 70, shuchusen3, 1.1, 1.1 );
setEffScaleKey( spep_3 -3 + 96, shuchusen3, 1.1, 1.1 );

setEffRotateKey( spep_3 -3 + 70, shuchusen3, 180 );
setEffRotateKey( spep_3 -3 + 96, shuchusen3, 180 );

setEffAlphaKey( spep_3 -3 + 70, shuchusen3, 255 );
setEffAlphaKey( spep_3 -3 + 96, shuchusen3, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 , 0, 110 , 0, 0, 0, 0, 255 );  --黒　背景

--SE
playSe( spep_3 +68, 9);--ダッシュ
stopSe( spep_3 + 88, SE1, 10 );

--次の準備
spep_4 = spep_3 + 94;

------------------------------------------------------
-- パンチから掴み
------------------------------------------------------
-- ** エフェクト等 ** --
catch_f = entryEffect( spep_4 + 0, SP_06,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, catch_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 136, catch_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, catch_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 136, catch_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, catch_f, 0 );
setEffRotateKey( spep_4 + 136, catch_f, 0 );
setEffAlphaKey( spep_4 + 0, catch_f, 255 );
setEffAlphaKey( spep_4 + 136, catch_f, 255 );

-- ** エフェクト等 ** --
catch_b = entryEffect( spep_4 + 0, SP_07,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, catch_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 136, catch_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, catch_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 136, catch_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, catch_b, 0 );
setEffRotateKey( spep_4 + 136, catch_b, 0 );
setEffAlphaKey( spep_4 + 0, catch_b, 255 );
setEffAlphaKey( spep_4 + 136, catch_b, 255 );

--敵の動き
setDisp( spep_4 -3 + 18, 1, 1 );
setDisp( spep_4  + 136, 1, 0 );
changeAnime( spep_4 -3 + 18, 1, 104 );
changeAnime( spep_4 -3 + 50, 1, 106 );

x = 30;
setMoveKey( spep_4 -3 + 18, 1, 519.8, -80 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 448.6, -83.2 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 391.6, -85.8 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 343, -88 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 300.4, -89.9 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 262.6, -91.6 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 228.9, -93.2 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 198.9, -94.5 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 172.2, -95.7 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 148.9, -96.8 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 128.7, -97.7 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 111.8, -98.5 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 98.3, -99.1 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 88.2, -99.5 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 81.9, -99.8 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 79.8, -100 , 0 );
setMoveKey( spep_4 -3 + 49, 1, 79.8, -100 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 23.8, -89.8 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 21.5, -78.1 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 22.6, -80.4 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 23.7, -82.6 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 23.5, -79.4 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 23.2, -76.1 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 24, -77 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 24.8, -77.9 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 24.9, -76 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 25, -74.2 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 25.4, -73.7 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 25.9, -73.3 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 26.4, -72.8 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 26.8, -72.3 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 27.3, -71.8 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 175.7, -91.6 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 257.1, -100.7 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 310.3, -106.1 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 335.3, -107.7 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 304.1, -108.3 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 272.9, -109 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 241.7, -109.6 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 210.5, -110.2 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 179.3, -110.9 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 148.1, -111.5 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 116.9, -112.1 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 9.8 +x, -124 , 0 );
setMoveKey( spep_4 -3 + 103, 1, 9.8 +x, -124 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 30 +x, 0 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 30.8 +x, 0 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 40.4 +x, 0 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 35.6 +x, 0 , 0 );
setMoveKey( spep_4  + 136, 1, 30.8 +x, 0 , 0 );

setScaleKey( spep_4 -3 + 18, 1, 1.2, 1.2 );
setScaleKey( spep_4 -3 + 20, 1, 1.26, 1.26 );
setScaleKey( spep_4 -3 + 22, 1, 1.32, 1.32 );
setScaleKey( spep_4 -3 + 24, 1, 1.36, 1.36 );
setScaleKey( spep_4 -3 + 26, 1, 1.4, 1.4 );
setScaleKey( spep_4 -3 + 28, 1, 1.43, 1.43 );
setScaleKey( spep_4 -3 + 30, 1, 1.46, 1.46 );
setScaleKey( spep_4 -3 + 32, 1, 1.49, 1.49 );
setScaleKey( spep_4 -3 + 34, 1, 1.52, 1.52 );
setScaleKey( spep_4 -3 + 36, 1, 1.54, 1.54 );
setScaleKey( spep_4 -3 + 38, 1, 1.56, 1.56 );
setScaleKey( spep_4 -3 + 40, 1, 1.57, 1.57 );
setScaleKey( spep_4 -3 + 42, 1, 1.58, 1.58 );
setScaleKey( spep_4 -3 + 44, 1, 1.59, 1.59 );
setScaleKey( spep_4 -3 + 46, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 49, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 50, 1, 2.72, 2.72 );
setScaleKey( spep_4 -3 + 52, 1, 2.38, 2.38 );
setScaleKey( spep_4 -3 + 54, 1, 2.46, 2.46 );
setScaleKey( spep_4 -3 + 56, 1, 2.55, 2.55 );
setScaleKey( spep_4 -3 + 58, 1, 2.46, 2.46 );
setScaleKey( spep_4 -3 + 60, 1, 2.38, 2.38 );
setScaleKey( spep_4 -3 + 62, 1, 2.42, 2.42 );
setScaleKey( spep_4 -3 + 64, 1, 2.46, 2.46 );
setScaleKey( spep_4 -3 + 66, 1, 2.42, 2.42 );
setScaleKey( spep_4 -3 + 68, 1, 2.38, 2.38 );
setScaleKey( spep_4 -3 + 78, 1, 2.38, 2.38 );
setScaleKey( spep_4 -3 + 80, 1, 2.35, 2.35 );
setScaleKey( spep_4 -3 + 82, 1, 2.1, 2.1 );
setScaleKey( spep_4 -3 + 84, 1, 1.85, 1.85 );
setScaleKey( spep_4 -3 + 86, 1, 1.61, 1.61 );
setScaleKey( spep_4 -3 + 94, 1, 1.61, 1.61 );
setScaleKey( spep_4 -3 + 96, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 100, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 102, 1, 1.76, 1.76 );
setScaleKey( spep_4 -3 + 103, 1, 1.76, 1.76 );
setScaleKey( spep_4 -3 + 104, 1, 1.92, 1.92 );
setScaleKey( spep_4 -3 + 106, 1, 1.76, 1.76 );
setScaleKey( spep_4 -3 + 108, 1, 1.84, 1.84 );
setScaleKey( spep_4 -3 + 110, 1, 1.8, 1.8 );
setScaleKey( spep_4  + 136, 1, 1.76, 1.76 );

setRotateKey( spep_4 -3 + 18, 1, 0 );
setRotateKey( spep_4 -3 + 49, 1, 0 );
setRotateKey( spep_4 -3 + 50, 1, -35.1 );
setRotateKey( spep_4 -3 + 52, 1, -34.8 );
setRotateKey( spep_4 -3 + 54, 1, -34.5 );
setRotateKey( spep_4 -3 + 56, 1, -34.2 );
setRotateKey( spep_4 -3 + 58, 1, -34 );
setRotateKey( spep_4 -3 + 60, 1, -33.7 );
setRotateKey( spep_4 -3 + 62, 1, -33.4 );
setRotateKey( spep_4 -3 + 64, 1, -33.1 );
setRotateKey( spep_4 -3 + 66, 1, -32.8 );
setRotateKey( spep_4 -3 + 68, 1, -32.5 );
setRotateKey( spep_4 -3 + 70, 1, -32.2 );
setRotateKey( spep_4 -3 + 72, 1, -32 );
setRotateKey( spep_4 -3 + 74, 1, -31.7 );
setRotateKey( spep_4 -3 + 76, 1, -31.4 );
setRotateKey( spep_4 -3 + 78, 1, -31.1 );
setRotateKey( spep_4 -3 + 80, 1, -27.4 );
setRotateKey( spep_4 -3 + 82, 1, -23.7 );
setRotateKey( spep_4 -3 + 84, 1, -20 );
setRotateKey( spep_4 -3 + 86, 1, -16.3 );
setRotateKey( spep_4 -3 + 88, 1, -16.1 );
setRotateKey( spep_4 -3 + 90, 1, -16 );
setRotateKey( spep_4 -3 + 92, 1, -15.8 );
setRotateKey( spep_4 -3 + 94, 1, -15.6 );
setRotateKey( spep_4 -3 + 96, 1, -15.5 );
setRotateKey( spep_4 -3 + 98, 1, -15.3 );
setRotateKey( spep_4 -3 + 100, 1, -15.2 );
setRotateKey( spep_4 -3 + 102, 1, -15 );
setRotateKey( spep_4 -3 + 102, 1, -15 );
setRotateKey( spep_4 -3 + 104, 1, -60 );
setRotateKey( spep_4  + 136, 1, -60 );

--文字エントリー
ctbaki = entryEffectLife( spep_4 - 3 + 50,  10020, 38, 0x100, -1, 0, 7.5, 8.7 );

setEffMoveKey( spep_4 - 3 + 50, ctbaki, 7.5, 8.7 , 0 );
setEffMoveKey( spep_4 - 3 + 52, ctbaki, 30.7, -41.8 , 0 );
setEffMoveKey( spep_4 - 3 + 54, ctbaki, 64.8, -94 , 0 );
setEffMoveKey( spep_4 - 3 + 56, ctbaki, 84.4, -137.3 , 0 );
setEffMoveKey( spep_4 - 3 + 58, ctbaki, 96.6, -145.4 , 0 );
setEffMoveKey( spep_4 - 3 + 60, ctbaki, 84.6, -146.3 , 0 );
setEffMoveKey( spep_4 - 3 + 62, ctbaki, 90.8, -138.8 , 0 );
setEffMoveKey( spep_4 - 3 + 64, ctbaki, 91.1, -151.3 , 0 );
setEffMoveKey( spep_4 - 3 + 66, ctbaki, 87, -137.9 , 0 );
setEffMoveKey( spep_4 - 3 + 68, ctbaki, 92.1, -147.2 , 0 );
setEffMoveKey( spep_4 - 3 + 70, ctbaki, 85.3, -143.6 , 0 );
setEffMoveKey( spep_4 - 3 + 72, ctbaki, 89.9, -149.1 , 0 );
setEffMoveKey( spep_4 - 3 + 74, ctbaki, 90.3, -142 , 0 );
setEffMoveKey( spep_4 - 3 + 76, ctbaki, 89.3, -150 , 0 );
setEffMoveKey( spep_4 - 3 + 78, ctbaki, 85.9, -141.5 , 0 );
setEffMoveKey( spep_4 - 3 + 80, ctbaki, 90.2, -150.1 , 0 );
setEffMoveKey( spep_4 - 3 + 82, ctbaki, 89.2, -147.6 , 0 );
setEffMoveKey( spep_4 - 3 + 84, ctbaki, 96, -154.8 , 0 );
setEffMoveKey( spep_4 - 3 + 86, ctbaki, 95.8, -152.3 , 0 );
setEffMoveKey( spep_4 - 3 + 88, ctbaki, 100.5, -157.4 , 0 );

setEffScaleKey( spep_4 - 3 + 50, ctbaki, 0.1, 0.1 );
setEffScaleKey( spep_4 - 3 + 52, ctbaki, 0.73, 0.73 );
setEffScaleKey( spep_4 - 3 + 54, ctbaki, 1.37, 1.37 );
setEffScaleKey( spep_4 - 3 + 56, ctbaki, 2, 2 );
setEffScaleKey( spep_4 - 3 + 58, ctbaki, 2.01, 2.01 );
setEffScaleKey( spep_4 - 3 + 60, ctbaki, 2.02, 2.02 );
setEffScaleKey( spep_4 - 3 + 62, ctbaki, 2.03, 2.03 );
setEffScaleKey( spep_4 - 3 + 64, ctbaki, 2.04, 2.04 );
setEffScaleKey( spep_4 - 3 + 66, ctbaki, 2.05, 2.05 );
setEffScaleKey( spep_4 - 3 + 68, ctbaki, 2.05, 2.05 );
setEffScaleKey( spep_4 - 3 + 70, ctbaki, 2.06, 2.06 );
setEffScaleKey( spep_4 - 3 + 72, ctbaki, 2.07, 2.07 );
setEffScaleKey( spep_4 - 3 + 74, ctbaki, 2.08, 2.08 );
setEffScaleKey( spep_4 - 3 + 76, ctbaki, 2.09, 2.09 );
setEffScaleKey( spep_4 - 3 + 78, ctbaki, 2.1, 2.1 );
setEffScaleKey( spep_4 - 3 + 80, ctbaki, 2.12, 2.12 );
setEffScaleKey( spep_4 - 3 + 82, ctbaki, 2.14, 2.14 );
setEffScaleKey( spep_4 - 3 + 84, ctbaki, 2.16, 2.16 );
setEffScaleKey( spep_4 - 3 + 86, ctbaki, 2.18, 2.18 );
setEffScaleKey( spep_4 - 3 + 88, ctbaki, 2.2, 2.2 );

setEffRotateKey( spep_4 - 3 + 50, ctbaki, 0 );
setEffRotateKey( spep_4 - 3 + 88, ctbaki, 0 );

setEffAlphaKey( spep_4 - 3 + 50, ctbaki, 255 );
setEffAlphaKey( spep_4 - 3 + 78, ctbaki, 255 );
setEffAlphaKey( spep_4 - 3 + 80, ctbaki, 209 );
setEffAlphaKey( spep_4 - 3 + 82, ctbaki, 163 );
setEffAlphaKey( spep_4 - 3 + 84, ctbaki, 118 );
setEffAlphaKey( spep_4 - 3 + 86, ctbaki, 72 );
setEffAlphaKey( spep_4 - 3 + 88, ctbaki, 26 );

--文字エントリー
ctga = entryEffectLife( spep_4 - 3 + 104,  10005, 34, 0x100, -1, 0, -63.4, 169.8 );

setEffMoveKey( spep_4 - 3 + 104, ctga, -63.4, 169.8 , 0 );
setEffMoveKey( spep_4 - 3 + 106, ctga, -75.8, 213.7 , 0 );
setEffMoveKey( spep_4 - 3 + 108, ctga, -85.8, 248.8 , 0 );
setEffMoveKey( spep_4 - 3 + 110, ctga, -93.9, 278.3 , 0 );
setEffMoveKey( spep_4 - 3 + 112, ctga, -94.4, 279.9 , 0 );
setEffMoveKey( spep_4 - 3 + 114, ctga, -94.9, 281.3 , 0 );
setEffMoveKey( spep_4 - 3 + 116, ctga, -95.3, 282.5 , 0 );
setEffMoveKey( spep_4 - 3 + 118, ctga, -95.7, 283.6 , 0 );
setEffMoveKey( spep_4 - 3 + 120, ctga, -96, 284.6 , 0 );
setEffMoveKey( spep_4 - 3 + 122, ctga, -96.2, 285.5 , 0 );
setEffMoveKey( spep_4 - 3 + 124, ctga, -96.5, 286.2 , 0 );
setEffMoveKey( spep_4 - 3 + 126, ctga, -96.7, 286.9 , 0 );
setEffMoveKey( spep_4 - 3 + 128, ctga, -96.9, 287.5 , 0 );
setEffMoveKey( spep_4 - 3 + 130, ctga, -97.3, 288.2 , 0 );
setEffMoveKey( spep_4 - 3 + 132, ctga, -97.8, 289.4 , 0 );
setEffMoveKey( spep_4 - 3 + 134, ctga, -98.4, 290.6 , 0 );
setEffMoveKey( spep_4 - 3 + 136, ctga, -98.8, 291.7 , 0 );
setEffMoveKey( spep_4 - 3 + 138, ctga, -99, 293.1 , 0 );

b=1;

setEffScaleKey( spep_4 - 3 + 104, ctga, 0.1 + b, 0.1 + b );
setEffScaleKey( spep_4 - 3 + 106, ctga, 0.47 + b, 0.47 + b );
setEffScaleKey( spep_4 - 3 + 108, ctga, 0.76 + b, 0.76 + b );
setEffScaleKey( spep_4 - 3 + 110, ctga, 1 + b, 1 + b );
setEffScaleKey( spep_4 - 3 + 112, ctga, 1.02 + b, 1.02 + b );
setEffScaleKey( spep_4 - 3 + 114, ctga, 1.03 + b, 1.03 + b );
setEffScaleKey( spep_4 - 3 + 116, ctga, 1.04 + b, 1.04 + b );
setEffScaleKey( spep_4 - 3 + 118, ctga, 1.06 + b, 1.06 + b );
setEffScaleKey( spep_4 - 3 + 120, ctga, 1.06 + b, 1.06 + b );
setEffScaleKey( spep_4 - 3 + 122, ctga, 1.07 + b, 1.07 + b );
setEffScaleKey( spep_4 - 3 + 124, ctga, 1.08 + b, 1.08 + b );
setEffScaleKey( spep_4 - 3 + 126, ctga, 1.09 + b, 1.09 + b );
setEffScaleKey( spep_4 - 3 + 128, ctga, 1.09 + b, 1.09 + b );
setEffScaleKey( spep_4 - 3 + 130, ctga, 1.1 + b, 1.1 + b );
setEffScaleKey( spep_4 - 3 + 132, ctga, 1.12 + b, 1.12 + b );
setEffScaleKey( spep_4 - 3 + 134, ctga, 1.13 + b, 1.13 + b );
setEffScaleKey( spep_4 - 3 + 136, ctga, 1.14 + b, 1.14 + b );
setEffScaleKey( spep_4 - 3 + 138, ctga, 1.15 + b, 1.15 + b );

setEffRotateKey( spep_4 - 3 + 104, ctga, -20 );
setEffRotateKey( spep_4 - 3 + 138, ctga, -20 );

setEffAlphaKey( spep_4 - 3 + 104, ctga, 255 );
setEffAlphaKey( spep_4 - 3 + 130, ctga, 255 );
setEffAlphaKey( spep_4 - 3 + 132, ctga, 186 );
setEffAlphaKey( spep_4 - 3 + 134, ctga, 126 );
setEffAlphaKey( spep_4 - 3 + 136, ctga, 73 );
setEffAlphaKey( spep_4 - 3 + 138, ctga, 26 );

--集中線
shuchusen4 = entryEffectLife( spep_4 -3 + 50,  906, 28, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 -3 + 50, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 -3 + 78, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 -3 + 50, shuchusen4, 1, 1 );
setEffScaleKey( spep_4 -3 + 78, shuchusen4, 1, 1 );

setEffRotateKey( spep_4 -3 + 50, shuchusen4, 0 );
setEffRotateKey( spep_4 -3 + 78, shuchusen4, 0 );

setEffAlphaKey( spep_4 -3 + 50, shuchusen4, 255 );
setEffAlphaKey( spep_4 -3 + 78, shuchusen4, 255 );

--集中線
shuchusen5 = entryEffectLife( spep_4 -3 + 102,  906, 36, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 -3 + 102, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_4 -3 + 138, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_4 -3 + 102, shuchusen5, 1, 1 );
setEffScaleKey( spep_4 -3 + 138, shuchusen5, 1, 1 );

setEffRotateKey( spep_4 -3 + 102, shuchusen5, 0 );
setEffRotateKey( spep_4 -3 + 138, shuchusen5, 0 );

setEffAlphaKey( spep_4 -3 + 102, shuchusen5, 255 );
setEffAlphaKey( spep_4 -3 + 138, shuchusen5, 255 );

--SE
playSe( spep_4 +48, 1010);--パンチ
playSe( spep_4 +102, 1012);--掴む

-- ** 黒背景 ** --
entryFadeBg( spep_4 , 0, 150 , 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_5 = spep_4 + 136;

------------------------------------------------------
-- 顔アップ
------------------------------------------------------
-- ** エフェクト等 ** --
face = entryEffect( spep_5 + 0, SP_08,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, face, 0, 0 , 0 );
setEffMoveKey( spep_5 + 116, face, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, face, 1.0, 1.0 );
setEffScaleKey( spep_5 + 116, face, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, face, 0 );
setEffRotateKey( spep_5 + 116, face, 0 );
setEffAlphaKey( spep_5 + 0, face, 255 );
setEffAlphaKey( spep_5 + 116, face, 255 );

--集中線
shuchusen6 = entryEffectLife( spep_5 + 0,  906, 116, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_5 + 116, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen6, 1, 1 );
setEffScaleKey( spep_5 + 116, shuchusen6, 1, 1 );

setEffRotateKey( spep_5 + 0, shuchusen6, 0 );
setEffRotateKey( spep_5 + 116, shuchusen6, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen6, 255 );
setEffAlphaKey( spep_5 + 116, shuchusen6, 255 );

--***カットイン***
--speff = entryEffect(  spep_5  +22,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff3 = entryEffect(  spep_5  +22,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff3, 4, 5);                           -- セリフ差し替え

--SE

SE2=playSe( spep_5 , 15);--ため
stopSe( spep_5 +36, SE2, 0 );
playSe( spep_5 + 38, 1018);--ゴゴゴ

--白フェード
entryFade( spep_5 + 104, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_6 = spep_5 + 116;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_6 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_6 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_6 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_6 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_6 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_6 + 0, shuchusen, 0 );
setEffRotateKey( spep_6 + 90, shuchusen, 0 );

setEffAlphaKey( spep_6 + 0, shuchusen, 255 );
setEffAlphaKey( spep_6 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_6 + 0, SE_05 );

--白フェード
entryFade( spep_6 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 94;

------------------------------------------------------
-- 気放射
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_7 + 0, SP_09,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 240, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 240, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_f, 0 );
setEffRotateKey( spep_7 + 240, finish_f, 0 );
setEffAlphaKey( spep_7 + 0, finish_f, 255 );
setEffAlphaKey( spep_7 + 240, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_7 + 0, SP_10,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 240, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 240, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_b, 0 );
setEffRotateKey( spep_7 + 240, finish_b, 0 );
setEffAlphaKey( spep_7 + 0, finish_b, 255 );
setEffAlphaKey( spep_7 + 240, finish_b, 255 );

--敵の動き
setDisp( spep_7  + 0, 1, 1 );
changeAnime( spep_7  + 0, 1, 106 );

setMoveKey( spep_7 -3 + 0, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 2, 1, 15.6 +x, -65 , 0 );
setMoveKey( spep_7 -3 + 4, 1, 4.3 +x, -82.2 , 0 );
setMoveKey( spep_7 -3 + 6, 1, 13.8 +x, -58.2 , 0 );
setMoveKey( spep_7 -3 + 8, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 10, 1, 4.4 +x, -61.4 , 0 );
setMoveKey( spep_7 -3 + 12, 1, 15.6 +x, -65 , 0 );
setMoveKey( spep_7 -3 + 14, 1, 3.7 +x, -72 , 0 );
setMoveKey( spep_7 -3 + 16, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 18, 1, 9.9 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 20, 1, 4.3 +x, -61.4 , 0 );
setMoveKey( spep_7 -3 + 22, 1, 14.5 +x, -60.6 , 0 );
setMoveKey( spep_7 -3 + 24, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 26, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 28, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 30, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 32, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 34, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 36, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 38, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 40, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 42, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 44, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 46, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 48, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 50, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 52, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 54, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 56, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 58, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 60, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 62, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 64, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 66, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 68, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 70, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 72, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 74, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 76, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 78, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 80, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 82, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 84, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 86, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 88, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 90, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 92, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 94, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 96, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 98, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 100, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 102, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 104, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 106, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 108, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 110, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 112, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 114, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 116, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 118, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 120, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 122, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 124, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 126, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 128, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 130, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 132, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 134, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 136, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 138, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 140, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 142, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 144, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 146, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 148, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 150, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 152, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 154, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 156, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 158, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 160, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 162, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 164, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 166, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 168, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 170, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 172, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 174, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 176, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 178, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 180, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 182, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 184, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 186, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 188, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 190, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 192, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 194, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 196, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 198, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 200, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 202, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 204, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 206, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 208, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 210, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 212, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 214, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 216, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 218, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 220, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 222, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 224, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 226, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7 -3 + 228, 1, 9.6 +x, -66.9 , 0 );
setMoveKey( spep_7 -3 + 230, 1, 4.1 +x, -58.5 , 0 );
setMoveKey( spep_7 -3 + 232, 1, 14.1 +x, -59.1 , 0 );
setMoveKey( spep_7 -3 + 234, 1, 3.5 +x, -68.5 , 0 );
setMoveKey( spep_7 -3 + 236, 1, 12.5 +x, -53 , 0 );
setMoveKey( spep_7  + 238, 1, 9.6 +x, -66.9 , 0 );

setScaleKey( spep_7 -3 + 0, 1, 1.8, 1.8 );
setScaleKey( spep_7 -3 + 2, 1, 1.98, 1.98 );
setScaleKey( spep_7 -3 + 4, 1, 2.16, 2.16 );
setScaleKey( spep_7 -3 + 6, 1, 1.98, 1.98 );
setScaleKey( spep_7 -3 + 8, 1, 1.8, 1.8 );
setScaleKey( spep_7 -3 + 10, 1, 1.89, 1.89 );
setScaleKey( spep_7 -3 + 12, 1, 1.98, 1.98 );
setScaleKey( spep_7 -3 + 14, 1, 1.89, 1.89 );
setScaleKey( spep_7 -3 + 16, 1, 1.8, 1.8 );
setScaleKey( spep_7 -3 + 18, 1, 1.84, 1.84 );
setScaleKey( spep_7 -3 + 20, 1, 1.89, 1.89 );
setScaleKey( spep_7 -3 + 22, 1, 1.84, 1.84 );
setScaleKey( spep_7 -3 + 24, 1, 1.8, 1.8 );
setScaleKey( spep_7  + 238, 1, 1.8, 1.8 );

setRotateKey( spep_7 -3 + 0, 1, -60.1 );
setRotateKey( spep_7  + 238, 1, -60.1 );

--集中線
shuchusen7 = entryEffectLife( spep_7 + 0,  906, 238, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_7 + 0, shuchusen7, 0, 0 , 0 );
setEffMoveKey( spep_7 + 238, shuchusen7, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen7, 1.1, 1.1 );
setEffScaleKey( spep_7 + 238, shuchusen7, 1.1, 1.1 );

setEffRotateKey( spep_7 + 0, shuchusen7, 180 );
setEffRotateKey( spep_7 + 238, shuchusen7, 180 );

setEffAlphaKey( spep_7 + 0, shuchusen7, 255 );
setEffAlphaKey( spep_7 + 238, shuchusen7, 255 );

--文字エントリー

ctdon = entryEffectLife( spep_7 -3 + 10,  10019, 48, 0x100, -1, 0, 47.5, -40.1 );

setEffMoveKey( spep_7 -3 + 10, ctdon, 47.5, -40.1 , 0 );
setEffMoveKey( spep_7 -3 + 12, ctdon, 16.7, -116.1 , 0 );
setEffMoveKey( spep_7 -3 + 14, ctdon, 1.9, -194.4 , 0 );
setEffMoveKey( spep_7 -3 + 16, ctdon, -34.5, -259.5 , 0 );
setEffMoveKey( spep_7 -3 + 18, ctdon, -17, -273.2 , 0 );
setEffMoveKey( spep_7 -3 + 20, ctdon, -35.9, -276 , 0 );
setEffMoveKey( spep_7 -3 + 22, ctdon, -27.3, -266.2 , 0 );
setEffMoveKey( spep_7 -3 + 24, ctdon, -27.8, -286.3 , 0 );
setEffMoveKey( spep_7 -3 + 26, ctdon, -34.8, -267.9 , 0 );
setEffMoveKey( spep_7 -3 + 28, ctdon, -27.9, -283.2 , 0 );
setEffMoveKey( spep_7 -3 + 30, ctdon, -38.9, -279.4 , 0 );
setEffMoveKey( spep_7 -3 + 32, ctdon, -32.9, -289 , 0 );
setEffMoveKey( spep_7 -3 + 34, ctdon, -33.1, -279.9 , 0 );
setEffMoveKey( spep_7 -3 + 36, ctdon, -35.5, -293.3 , 0 );
setEffMoveKey( spep_7 -3 + 38, ctdon, -41.3, -282.2 , 0 );
setEffMoveKey( spep_7 -3 + 40, ctdon, -38.8, -292.4 , 0 );
setEffMoveKey( spep_7 -3 + 42, ctdon, -44, -286.5 , 0 );
setEffMoveKey( spep_7 -3 + 44, ctdon, -38.1, -294.6 , 0 );
setEffMoveKey( spep_7 -3 + 46, ctdon, -42.1, -288.6 , 0 );
setEffMoveKey( spep_7 -3 + 48, ctdon, -39.2, -293.6 , 0 );
setEffMoveKey( spep_7 -3 + 50, ctdon, -44.5, -294.1 , 0 );
setEffMoveKey( spep_7 -3 + 52, ctdon, -41, -294.7 , 0 );
setEffMoveKey( spep_7 -3 + 54, ctdon, -46.3, -296 , 0 );
setEffMoveKey( spep_7 -3 + 56, ctdon, -44, -296.5 , 0 );
setEffMoveKey( spep_7 -3 + 58, ctdon, -47.2, -296.8 , 0 );

setEffScaleKey( spep_7 -3 + 10, ctdon, 0.1, 0.1 );
setEffScaleKey( spep_7 -3 + 12, ctdon, 1.07, 1.07 );
setEffScaleKey( spep_7 -3 + 14, ctdon, 2.03, 2.03 );
setEffScaleKey( spep_7 -3 + 16, ctdon, 3, 3 );
setEffScaleKey( spep_7 -3 + 18, ctdon, 3.01, 3.01 );
setEffScaleKey( spep_7 -3 + 20, ctdon, 3.02, 3.02 );
setEffScaleKey( spep_7 -3 + 22, ctdon, 3.03, 3.03 );
setEffScaleKey( spep_7 -3 + 24, ctdon, 3.04, 3.04 );
setEffScaleKey( spep_7 -3 + 26, ctdon, 3.05, 3.05 );
setEffScaleKey( spep_7 -3 + 28, ctdon, 3.05, 3.05 );
setEffScaleKey( spep_7 -3 + 30, ctdon, 3.06, 3.06 );
setEffScaleKey( spep_7 -3 + 32, ctdon, 3.07, 3.07 );
setEffScaleKey( spep_7 -3 + 34, ctdon, 3.08, 3.08 );
setEffScaleKey( spep_7 -3 + 36, ctdon, 3.09, 3.09 );
setEffScaleKey( spep_7 -3 + 38, ctdon, 3.1, 3.1 );
setEffScaleKey( spep_7 -3 + 40, ctdon, 3.11, 3.11 );
setEffScaleKey( spep_7 -3 + 42, ctdon, 3.12, 3.12 );
setEffScaleKey( spep_7 -3 + 44, ctdon, 3.13, 3.13 );
setEffScaleKey( spep_7 -3 + 46, ctdon, 3.14, 3.14 );
setEffScaleKey( spep_7 -3 + 48, ctdon, 3.15, 3.15 );
setEffScaleKey( spep_7 -3 + 50, ctdon, 3.16, 3.16 );
setEffScaleKey( spep_7 -3 + 52, ctdon, 3.17, 3.17 );
setEffScaleKey( spep_7 -3 + 54, ctdon, 3.18, 3.18 );
setEffScaleKey( spep_7 -3 + 56, ctdon, 3.19, 3.19 );
setEffScaleKey( spep_7 -3 + 58, ctdon, 3.2, 3.2 );

setEffRotateKey( spep_7 -3 + 10, ctdon, 0 );
setEffRotateKey( spep_7 -3 + 58, ctdon, 0 );

setEffAlphaKey( spep_7 -3 + 10, ctdon, 255 );
setEffAlphaKey( spep_7 -3 + 38, ctdon, 255 );
setEffAlphaKey( spep_7 -3 + 40, ctdon, 232 );
setEffAlphaKey( spep_7 -3 + 42, ctdon, 209 );
setEffAlphaKey( spep_7 -3 + 44, ctdon, 186 );
setEffAlphaKey( spep_7 -3 + 46, ctdon, 163 );
setEffAlphaKey( spep_7 -3 + 48, ctdon, 141 );
setEffAlphaKey( spep_7 -3 + 50, ctdon, 118 );
setEffAlphaKey( spep_7 -3 + 52, ctdon, 95 );
setEffAlphaKey( spep_7 -3 + 54, ctdon, 72 );
setEffAlphaKey( spep_7 -3 + 56, ctdon, 49 );
setEffAlphaKey( spep_7 -3 + 58, ctdon, 26 );

--SE
playSe( spep_7 +8, 1022);--ビーム
--SE3=playSe( spep_7 +20, 1044);--地割れ
--stopSe( spep_7 +220, SE3, 0 );

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 8 );
endPhase( spep_7 + 220 );

end

