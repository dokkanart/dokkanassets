--1016970:トランクス(青年期)_バーニングアタック
--sp_effect_a1_00241

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
SP_01=	155494	;--	突進
SP_02=	155495	;--	格闘(バク天蹴り)
SP_03=	155496	;--	格闘(バク天蹴り)
SP_04=	155497	;--	格闘(バク天蹴り)
SP_05=	155498	;--	格闘(裏拳)
SP_06=	155499	;--	敵が地面に落下
SP_07=	155500	;--	気弾を溜める→発射
SP_08=	155501	;--	気弾が地面に迫る
SP_09=	155502	;--	爆発

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);

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
setAlphaKey( 0, 1, 255 );

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
-- 冒頭
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
dash = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, dash, 0, 0, 0 );
setEffMoveKey( spep_0 + 50, dash, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, dash, 1.0, 1.0 );
setEffScaleKey( spep_0 + 50, dash, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, dash, 0 );
setEffRotateKey( spep_0 + 50, dash, 0 );
setEffAlphaKey( spep_0 + 0, dash, 255 );
setEffAlphaKey( spep_0 + 50, dash, 255 );
setEffAlphaKey( spep_0 + 51, dash, 0 );
setEffAlphaKey( spep_0 + 52, dash, 0 );

--SE
SE0=playSe( spep_0 + 0, 9 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 52, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );

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
playSe( spep_0 + 36, 1109 );

-- ** 次の準備 ** --
spep_1=spep_0+50;
------------------------------------------------------
-- 格闘
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 70, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 70, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_f, 0 );
setEffRotateKey( spep_1 + 70, fighting_f, 0 );
setEffAlphaKey( spep_1 + 0, fighting_f, 255 );
setEffAlphaKey( spep_1 + 70, fighting_f, 255 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 70, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 70, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_b, 0 );
setEffRotateKey( spep_1 + 70, fighting_b, 0 );
setEffAlphaKey( spep_1 + 0, fighting_b, 255 );
setEffAlphaKey( spep_1 + 70, fighting_b, 255 );

-- ** エフェクト等 ** --
fighting_n = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_n, 0, 0, 0 );
setEffMoveKey( spep_1 + 70, fighting_n, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fighting_n, 1.0, 1.0 );
setEffScaleKey( spep_1 + 70, fighting_n, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_n, 0 );
setEffRotateKey( spep_1 + 70, fighting_n, 0 );
setEffAlphaKey( spep_1 + 0, fighting_n, 255 );
setEffAlphaKey( spep_1 + 70, fighting_n, 255 );


--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-3 + 46, 1, 0 );

changeAnime( spep_1-3 + 0, 1, 102 );
changeAnime( spep_1-3 + 32, 1, 107 );

setMoveKey( spep_1 + 0, 1, 113.1, -93.6 , 0 );
setMoveKey( spep_1-3 + 31, 1, 113.1, -93.6 , 0 );
setMoveKey( spep_1-3 + 32, 1, 12.2, -96 , 0 );
setMoveKey( spep_1-3 + 34, 1, 3.9, -127.9 , 0 );
setMoveKey( spep_1-3 + 36, 1, 19.1, -111.8 , 0 );
setMoveKey( spep_1-3 + 38, 1, 16.9, -168.1 , 0 );
setMoveKey( spep_1-3 + 40, 1, -16, -172.1 , 0 );
setMoveKey( spep_1-3 + 42, 1, -34.4, -237.7 , 0 );
setMoveKey( spep_1-3 + 44, 1, -54.9, -258.1 , 0 );
setMoveKey( spep_1-3 + 46, 1, -75.2, -306.4 , 0 );

setScaleKey( spep_1 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 31, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 32, 1, 0.8, 0.8 );
setScaleKey( spep_1-3 + 34, 1, 0.85, 0.85 );
setScaleKey( spep_1-3 + 36, 1, 0.97, 0.97 );
setScaleKey( spep_1-3 + 38, 1, 1.14, 1.14 );
setScaleKey( spep_1-3 + 40, 1, 1.36, 1.36 );
setScaleKey( spep_1-3 + 42, 1, 1.62, 1.62 );
setScaleKey( spep_1-3 + 44, 1, 1.92, 1.92 );
setScaleKey( spep_1-3 + 46, 1, 2.25, 2.25 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 46, 1, 0 );

--文字エントリー
ctbikkuri = entryEffectLife( spep_1-3 + 6,  10000, 16, 0x100, -1, 0, 186.9, 121.6 );
setEffShake( spep_1-3 + 6, ctbikkuri, 16, 10 );
setEffMoveKey( spep_1-3 + 6, ctbikkuri, 186.9, 121.6 , 0 );
setEffMoveKey( spep_1-3 + 8, ctbikkuri, 173.7, 121.5 , 0 );
setEffMoveKey( spep_1-3 + 10, ctbikkuri, 166.7, 121 , 0 );
setEffMoveKey( spep_1-3 + 12, ctbikkuri, 173.2, 128.4 , 0 );
setEffMoveKey( spep_1-3 + 14, ctbikkuri, 173.7, 121.5 , 0 );
setEffMoveKey( spep_1-3 + 16, ctbikkuri, 166.7, 121 , 0 );
setEffMoveKey( spep_1-3 + 18, ctbikkuri, 173.2, 128.4 , 0 );
setEffMoveKey( spep_1-3 + 20, ctbikkuri, 173.7, 121.5 , 0 );
setEffMoveKey( spep_1-3 + 22, ctbikkuri, 166.7, 121 , 0 );

setEffScaleKey( spep_1-3 + 6, ctbikkuri, 2.81, 2.81 );
setEffScaleKey( spep_1-3 + 8, ctbikkuri, 2.01, 2.01 );
setEffScaleKey( spep_1-3 + 22, ctbikkuri, 2.01, 2.01 );

setEffRotateKey( spep_1-3 + 6, ctbikkuri, 18 );
setEffRotateKey( spep_1-3 + 22, ctbikkuri, 18 );

setEffAlphaKey( spep_1-3 + 6, ctbikkuri, 255 );
setEffAlphaKey( spep_1-3 + 22, ctbikkuri, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_1-1 + 32,  10020, 20, 0x100, -1, 0, 244.8, 124.5 );
setEffShake( spep_1-1 + 32, ctbaki, 20, 20 );
setEffMoveKey( spep_1-1 + 32, ctbaki, 244.8, 124.5 , 0 );
setEffMoveKey( spep_1-1 + 34, ctbaki, 219.5, 95.4 , 0 );
setEffMoveKey( spep_1-1 + 36, ctbaki, 240.8, 149.4 , 0 );
setEffMoveKey( spep_1-1 + 38, ctbaki, 266.9, 108.5 , 0 );
setEffMoveKey( spep_1-1 + 40, ctbaki, 246.9, 136.4 , 0 );
setEffMoveKey( spep_1-1 + 42, ctbaki, 231.6, 100.8 , 0 );
setEffMoveKey( spep_1-1 + 44, ctbaki, 221.5, 156.4 , 0 );
setEffMoveKey( spep_1-1 + 46, ctbaki, 236.5, 116.9 , 0 );
setEffMoveKey( spep_1-1 + 48, ctbaki, 237.5, 133.7 , 0 );
setEffMoveKey( spep_1-1 + 52, ctbaki, 238.6, 150.4 , 0 );
--setEffMoveKey( spep_1-1 + 52, ctbaki, 51, 646.5 , 0 );
--setEffMoveKey( spep_1-1 + 54, ctbaki, 51.2, 646.8 , 0 );

a=0.1;

setEffScaleKey( spep_1-1 + 32, ctbaki, 0.93 +a, 0.93+a );
setEffScaleKey( spep_1-1 + 34, ctbaki, 1.04+a, 1.04+a );
setEffScaleKey( spep_1-1 + 36, ctbaki, 1.44+a, 1.44+a );
setEffScaleKey( spep_1-1 + 38, ctbaki, 1.26+a, 1.26+a );
setEffScaleKey( spep_1-1 + 40, ctbaki, 1.26+a, 1.26+a );
setEffScaleKey( spep_1-1 + 42, ctbaki, 1.2+a, 1.2+a );
setEffScaleKey( spep_1-1 + 44, ctbaki, 1.26+a, 1.26+a );
setEffScaleKey( spep_1-1 + 46, ctbaki, 1.27+a, 1.27+a );
setEffScaleKey( spep_1-1 + 48, ctbaki, 1.27+a, 1.27+a );
setEffScaleKey( spep_1-1 + 50, ctbaki, 1.28+a, 1.28+a );
setEffScaleKey( spep_1-1 + 52, ctbaki, 1.28+a, 1.28+a );
--setEffScaleKey( spep_1-1 + 54, ctbaki, 1.29, 1.29 );

setEffRotateKey( spep_1-1 + 32, ctbaki, 15.9 );
--setEffRotateKey( spep_1-1 + 34, ctbaki, 11.3 );
setEffRotateKey( spep_1-1 + 36, ctbaki, 26.3 );
setEffRotateKey( spep_1-1 + 38, ctbaki, 21 );
setEffRotateKey( spep_1-1 + 40, ctbaki, 31.2 );
setEffRotateKey( spep_1-1 + 42, ctbaki, 23.6 );
setEffRotateKey( spep_1-1 + 50, ctbaki, 23.6 );
setEffRotateKey( spep_1-1 + 52, ctbaki, 23.5 );
--setEffRotateKey( spep_1-1 + 54, ctbaki, 23.6 );

setEffAlphaKey( spep_1-1 + 32, ctbaki, 255 );
setEffAlphaKey( spep_1-1 + 44, ctbaki, 255 );
setEffAlphaKey( spep_1-1 + 46, ctbaki, 198 );
setEffAlphaKey( spep_1-1 + 48, ctbaki, 142 );
setEffAlphaKey( spep_1-1 + 50, ctbaki, 85 );
setEffAlphaKey( spep_1-1 + 52, ctbaki, 0 );

--SE
playSe( spep_1 + 26, 1189 );
playSe( spep_1 + 32, 1010 );
playSe( spep_1 + 34, 1110 );
playSe( spep_1 + 61, 1109 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 72, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1+62 , 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2=spep_1+70;
------------------------------------------------------
-- 格闘(裏拳)
------------------------------------------------------
-- ** エフェクト等 ** --
backhander = entryEffect( spep_2 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, backhander, 0, 0, 0 );
setEffMoveKey( spep_2 + 56, backhander, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, backhander, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, backhander, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, backhander, 0 );
setEffRotateKey( spep_2 + 56, backhander, 0 );
setEffAlphaKey( spep_2 + 0, backhander, 255 );
setEffAlphaKey( spep_2 + 56, backhander, 255 );
setEffAlphaKey( spep_2 + 57, backhander, 0 );
setEffAlphaKey( spep_2 + 58, backhander, 0 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2-3 + 58, 1, 0 );

changeAnime( spep_2 + 0, 1, 108 );
changeAnime( spep_2-3 + 22, 1, 107 );

setMoveKey( spep_2 + 0, 1, -471.1, -446.7 , 0 );
--setMoveKey( spep_2-3 + 2, 1, -363.3, -341.7 , 0 );
setMoveKey( spep_2-3 + 4, 1, -293.9, -267.9 , 0 );
setMoveKey( spep_2-3 + 6, 1, -239, -215.7 , 0 );
setMoveKey( spep_2-3 + 8, 1, -195.2, -167.9 , 0 );
setMoveKey( spep_2-3 + 10, 1, -155.1, -127.8 , 0 );
setMoveKey( spep_2-3 + 12, 1, -121.6, -94.5 , 0 );
setMoveKey( spep_2-3 + 14, 1, -89.9, -60.6 , 0 );
setMoveKey( spep_2-3 + 16, 1, -62, -17 , 0 );
setMoveKey( spep_2-3 + 18, 1, -33.8, -2.3 , 0 );
setMoveKey( spep_2-3 + 21, 1, 68.3, 129.3 , 0 );
setMoveKey( spep_2-3 + 22, 1, 90.8, 110.7 , 0 );
setMoveKey( spep_2-3 + 24, 1, 67.3, 122.6 , 0 );
setMoveKey( spep_2-3 + 26, 1, 91.8, 107.5 , 0 );
setMoveKey( spep_2-3 + 28, 1, 40.9, 91.4 , 0 );
setMoveKey( spep_2-3 + 30, 1, -27.2, -27.3 , 0 );
setMoveKey( spep_2-3 + 32, 1, -174.2, -207.4 , 0 );
setMoveKey( spep_2-3 + 34, 1, -389, -491 , 0 );
setMoveKey( spep_2-3 + 36, 1, -715.1, -917.3 , 0 );
setMoveKey( spep_2-3 + 38, 1, -1097.5, -1427.2 , 0 );
setMoveKey( spep_2-3 + 40, 1, -1093.5, -1428.8 , 0 );
setMoveKey( spep_2-3 + 42, 1, -1096.9, -1430 , 0 );
setMoveKey( spep_2-3 + 44, 1, -1100.3, -1431.3 , 0 );
setMoveKey( spep_2-3 + 46, 1, -1099.9, -1431.2 , 0 );
setMoveKey( spep_2-3 + 48, 1, -1099.5, -1431.1 , 0 );
setMoveKey( spep_2-3 + 50, 1, -1101.6, -1432.5 , 0 );
setMoveKey( spep_2-3 + 52, 1, -1103.8, -1433.9 , 0 );
setMoveKey( spep_2-3 + 54, 1, -1102.2, -1433.9 , 0 );
setMoveKey( spep_2-3 + 56, 1, -1100.7, -1433.9 , 0 );
setMoveKey( spep_2-3 + 58, 1, -1104, -1436.5 , 0 );

setScaleKey( spep_2 + 0, 1, 2.5, 2.5 );
--setScaleKey( spep_2-3 + 2, 1, 2.26, 2.26 );
setScaleKey( spep_2-3 + 4, 1, 2.11, 2.11 );
setScaleKey( spep_2-3 + 6, 1, 2.01, 2.01 );
setScaleKey( spep_2-3 + 8, 1, 1.93, 1.93 );
setScaleKey( spep_2-3 + 10, 1, 1.88, 1.88 );
setScaleKey( spep_2-3 + 12, 1, 1.84, 1.84 );
setScaleKey( spep_2-3 + 14, 1, 1.82, 1.82 );
setScaleKey( spep_2-3 + 16, 1, 1.82, 1.82 );
setScaleKey( spep_2-3 + 18, 1, 1.84, 1.84 );
setScaleKey( spep_2-3 + 21, 1, 1.68, 1.68 );
setScaleKey( spep_2-3 + 22, 1, 0.57, 0.57 );
setScaleKey( spep_2-3 + 24, 1, 0.57, 0.57 );
setScaleKey( spep_2-3 + 26, 1, 0.58, 0.58 );
setScaleKey( spep_2-3 + 28, 1, 0.66, 0.66 );
setScaleKey( spep_2-3 + 30, 1, 0.88, 0.88 );
setScaleKey( spep_2-3 + 32, 1, 1.29, 1.29 );
setScaleKey( spep_2-3 + 34, 1, 1.92, 1.92 );
setScaleKey( spep_2-3 + 36, 1, 2.83, 2.83 );
setScaleKey( spep_2-3 + 38, 1, 3.93, 3.93 );
setScaleKey( spep_2-3 + 40, 1, 3.93, 3.93 );
setScaleKey( spep_2-3 + 42, 1, 3.94, 3.94 );
setScaleKey( spep_2-3 + 46, 1, 3.94, 3.94 );
setScaleKey( spep_2-3 + 48, 1, 3.95, 3.95 );
setScaleKey( spep_2-3 + 54, 1, 3.95, 3.95 );
setScaleKey( spep_2-3 + 56, 1, 3.96, 3.96 );
setScaleKey( spep_2-3 + 58, 1, 3.96, 3.96 );

setRotateKey( spep_2 + 0, 1, -15 );
setRotateKey( spep_2-3 + 21, 1, -15 );
setRotateKey( spep_2-3 + 22, 1, -140 );
setRotateKey( spep_2-3 + 58, 1, -140 );

--SE
playSe( spep_2 + 22, 1189 );
playSe( spep_2 + 26, 1009 );
playSe( spep_2 + 28, 1110 );
playSe( spep_2 + 31, 1000 );
se_1183 = playSe( spep_2 + 50, 1183 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_3=spep_2+56;
------------------------------------------------------
--敵が地面に落下
------------------------------------------------------
-- ** エフェクト等 ** --
falling = entryEffect( spep_3 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, falling, 0, 0, 0 );
setEffMoveKey( spep_3 + 60, falling, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, falling, 1.0, 1.0 );
setEffScaleKey( spep_3 + 60, falling, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, falling, 0 );
setEffRotateKey( spep_3 + 60, falling, 0 );
setEffAlphaKey( spep_3 + 0, falling, 255 );
setEffAlphaKey( spep_3 + 60, falling, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-2 + 21, 1, 0 );

changeAnime( spep_3 + 0, 1, 105 );

setMoveKey( spep_3 + 0, 1, -103.5, -191.4 , 0 );
--setMoveKey( spep_3-3 + 2, 1, -70.9, -131.4 , 0 );
setMoveKey( spep_3-3 + 4, 1, -52.4, -97.3 , 0 );
setMoveKey( spep_3-3 + 6, 1, -39.3, -73.2 , 0 );
setMoveKey( spep_3-3 + 8, 1, -29.3, -54.8 , 0 );
setMoveKey( spep_3-3 + 10, 1, -21.5, -40.5 , 0 );
setMoveKey( spep_3-3 + 12, 1, -15.3, -29 , 0 );
setMoveKey( spep_3-3 + 14, 1, -10.3, -19.9 , 0 );
setMoveKey( spep_3-3 + 16, 1, -6.4, -12.7 , 0 );
setMoveKey( spep_3-3 + 18, 1, -3.4, -7.1 , 0 );
setMoveKey( spep_3-2 + 21, 1, -1.1, -2.9 , 0 );

setScaleKey( spep_3 + 0, 1, 9.18, 9.18 );
--setScaleKey( spep_3-3 + 2, 1, 6.35, 6.35 );
setScaleKey( spep_3-3 + 4, 1, 4.74, 4.74 );
setScaleKey( spep_3-3 + 6, 1, 3.6, 3.6 );
setScaleKey( spep_3-3 + 8, 1, 2.74, 2.74 );
setScaleKey( spep_3-3 + 10, 1, 2.06, 2.06 );
setScaleKey( spep_3-3 + 12, 1, 1.52, 1.52 );
setScaleKey( spep_3-3 + 14, 1, 1.09, 1.09 );
setScaleKey( spep_3-3 + 16, 1, 0.75, 0.75 );
setScaleKey( spep_3-3 + 18, 1, 0.48, 0.48 );
setScaleKey( spep_3-2 + 21, 1, 0.29, 0.29 );

setRotateKey( spep_3 + 0, 1, 171 );
--setRotateKey( spep_3-3 + 2, 1, 171.1 );
setRotateKey( spep_3-3 + 12, 1, 171.1 );
setRotateKey( spep_3-3 + 14, 1, 171.2 );
setRotateKey( spep_3-2 + 21, 1, 171.2 );

--SE
se_1023 = playSe( spep_3 + 22, 1023 );
setSeVolume( spep_3 + 22, 1023, 84 );
se_1011 = playSe( spep_3 + 23, 1011 );
setSeVolume( spep_3 + 23, 1011, 83 );

stopSe( spep_3 + 26, se_1183, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 62, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_3+52 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4=spep_3+60;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
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

stopSe( spep_4 + 3, se_1023, 0 );
stopSe( spep_4 + 3, se_1011, 0 );

--白フェード
entryFade( spep_4 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;
------------------------------------------------------
--気弾を溜める→発射
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_5 + 130, tame, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_5 + 130, tame, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tame, 0 );
setEffRotateKey( spep_5 + 130, tame, 0 );
setEffAlphaKey( spep_5 + 0, tame, 255 );
setEffAlphaKey( spep_5 + 130, tame, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_5 -12 + 4,  906, 74+10, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5-12 + 0, shuchusen1, 74+10, 20 );
setEffMoveKey( spep_5-12 + 4, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_5 + 78-2, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_5-12 + 4, shuchusen1, 1.53, 1.53 );
setEffScaleKey( spep_5 + 78-2, shuchusen1, 1.53, 1.53 );

setEffRotateKey( spep_5-12 + 4, shuchusen1, 0 );
setEffRotateKey( spep_5 + 78-2, shuchusen1, 0 );

setEffAlphaKey( spep_5-12 + 4, shuchusen1, 0 );
setEffAlphaKey( spep_5 + 3, shuchusen1, 0 );
setEffAlphaKey( spep_5 + 4, shuchusen1, 255 );
setEffAlphaKey( spep_5 + 78-2, shuchusen1, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_5 -12+6  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_5 -12+6  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_5 -12 +18, 190006, 72, 0x100, -1, 0, 100 -210, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_5 -12 +18,  ctgogo,  100 -210,  510);
setEffMoveKey(  spep_5 -12 +90,  ctgogo,  100 -210,  510);

setEffAlphaKey( spep_5 -12 +18, ctgogo, 0 );
setEffAlphaKey( spep_5 -12 + 19, ctgogo, 255 );
setEffAlphaKey( spep_5 -12 + 20, ctgogo, 255 );
setEffAlphaKey( spep_5 -12 + 84, ctgogo, 255 );
setEffAlphaKey( spep_5 -12 + 86, ctgogo, 191 );
setEffAlphaKey( spep_5 -12 + 88, ctgogo, 112 );
setEffAlphaKey( spep_5 -12 + 90, ctgogo, 64 );

setEffRotateKey(  spep_5 -12 +18,  ctgogo,  0);
setEffRotateKey(  spep_5 -12 +90,  ctgogo,  0);

setEffScaleKey(  spep_5 -12 +18,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_5 -12 +80,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_5 -12 +90,  ctgogo, 1.07, 1.07 );
--SE
playSe( spep_5 + 6, 1018 );
playSe( spep_5 + 2, 1018 );
playSe( spep_5 + 2, 49 );
se_1037 = playSe( spep_5 + 5, 1037 );
playSe( spep_5 + 81, 1027 );
setSeVolume( spep_5 + 81, 1027, 79 );
playSe( spep_5 + 81, 1145 );
setSeVolume( spep_5 + 81, 1145, 86 );

stopSe( spep_5 + 93, se_1037, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 132, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_5 + 122, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 130;
------------------------------------------------------
--気弾が地面に迫る
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, hit, 0, 0, 0 );
setEffMoveKey( spep_6 + 40, hit, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_6 + 40, hit, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit, 0 );
setEffRotateKey( spep_6 + 40, hit, 0 );
setEffAlphaKey( spep_6 + 0, hit, 255 );
setEffAlphaKey( spep_6 + 40, hit, 255 );

--SE
playSe( spep_6, 1021 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 42, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_6 + 32, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 40;
------------------------------------------------------
--爆発
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_7 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, explosion, 0, 0, 0 );
setEffMoveKey( spep_7 + 120, explosion, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_7 + 120, explosion, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, explosion, 0 );
setEffRotateKey( spep_7 + 120, explosion, 0 );
setEffAlphaKey( spep_7 + 0, explosion, 255 );
setEffAlphaKey( spep_7 + 120, explosion, 255 );

--SE
playSe( spep_7 + 2, 1023 );
setSeVolume( spep_7 + 2, 1023, 89 );
playSe( spep_7 + 2, 1159 );
setSeVolume( spep_7 + 2, 1159, 71 );
playSe( spep_7 + 4, 1168 );
setSeVolume( spep_7 + 4, 1168, 39 );

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 10 );
endPhase( spep_7 + 110 );
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 冒頭
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
dash = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, dash, 0, 0, 0 );
setEffMoveKey( spep_0 + 50, dash, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, dash, -1.0, 1.0 );
setEffScaleKey( spep_0 + 50, dash, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, dash, 0 );
setEffRotateKey( spep_0 + 50, dash, 0 );
setEffAlphaKey( spep_0 + 0, dash, 255 );
setEffAlphaKey( spep_0 + 50, dash, 255 );
setEffAlphaKey( spep_0 + 51, dash, 0 );
setEffAlphaKey( spep_0 + 52, dash, 0 );

--SE
SE0=playSe( spep_0 + 0, 9 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 52, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );

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
playSe( spep_0 + 36, 1109 );

-- ** 次の準備 ** --
spep_1=spep_0+50;
------------------------------------------------------
-- 格闘
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 70, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 70, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_f, 0 );
setEffRotateKey( spep_1 + 70, fighting_f, 0 );
setEffAlphaKey( spep_1 + 0, fighting_f, 255 );
setEffAlphaKey( spep_1 + 70, fighting_f, 255 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 70, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 70, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_b, 0 );
setEffRotateKey( spep_1 + 70, fighting_b, 0 );
setEffAlphaKey( spep_1 + 0, fighting_b, 255 );
setEffAlphaKey( spep_1 + 70, fighting_b, 255 );

-- ** エフェクト等 ** --
fighting_n = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_n, 0, 0, 0 );
setEffMoveKey( spep_1 + 70, fighting_n, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fighting_n, 1.0, 1.0 );
setEffScaleKey( spep_1 + 70, fighting_n, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_n, 0 );
setEffRotateKey( spep_1 + 70, fighting_n, 0 );
setEffAlphaKey( spep_1 + 0, fighting_n, 255 );
setEffAlphaKey( spep_1 + 70, fighting_n, 255 );


--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-3 + 46, 1, 0 );

changeAnime( spep_1-3 + 0, 1, 102 );
changeAnime( spep_1-3 + 32, 1, 107 );

setMoveKey( spep_1 + 0, 1, 113.1, -93.6 , 0 );
setMoveKey( spep_1-3 + 31, 1, 113.1, -93.6 , 0 );
setMoveKey( spep_1-3 + 32, 1, 12.2, -96 , 0 );
setMoveKey( spep_1-3 + 34, 1, 3.9, -127.9 , 0 );
setMoveKey( spep_1-3 + 36, 1, 19.1, -111.8 , 0 );
setMoveKey( spep_1-3 + 38, 1, 16.9, -168.1 , 0 );
setMoveKey( spep_1-3 + 40, 1, -16, -172.1 , 0 );
setMoveKey( spep_1-3 + 42, 1, -34.4, -237.7 , 0 );
setMoveKey( spep_1-3 + 44, 1, -54.9, -258.1 , 0 );
setMoveKey( spep_1-3 + 46, 1, -75.2, -306.4 , 0 );

setScaleKey( spep_1 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 31, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 32, 1, 0.8, 0.8 );
setScaleKey( spep_1-3 + 34, 1, 0.85, 0.85 );
setScaleKey( spep_1-3 + 36, 1, 0.97, 0.97 );
setScaleKey( spep_1-3 + 38, 1, 1.14, 1.14 );
setScaleKey( spep_1-3 + 40, 1, 1.36, 1.36 );
setScaleKey( spep_1-3 + 42, 1, 1.62, 1.62 );
setScaleKey( spep_1-3 + 44, 1, 1.92, 1.92 );
setScaleKey( spep_1-3 + 46, 1, 2.25, 2.25 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 46, 1, 0 );

--文字エントリー
ctbikkuri = entryEffectLife( spep_1-3 + 6,  10000, 16, 0x100, -1, 0, 186.9, 121.6 );
setEffShake( spep_1-3 + 6, ctbikkuri, 16, 10 );
setEffMoveKey( spep_1-3 + 6, ctbikkuri, 186.9, 121.6 , 0 );
setEffMoveKey( spep_1-3 + 8, ctbikkuri, 173.7, 121.5 , 0 );
setEffMoveKey( spep_1-3 + 10, ctbikkuri, 166.7, 121 , 0 );
setEffMoveKey( spep_1-3 + 12, ctbikkuri, 173.2, 128.4 , 0 );
setEffMoveKey( spep_1-3 + 14, ctbikkuri, 173.7, 121.5 , 0 );
setEffMoveKey( spep_1-3 + 16, ctbikkuri, 166.7, 121 , 0 );
setEffMoveKey( spep_1-3 + 18, ctbikkuri, 173.2, 128.4 , 0 );
setEffMoveKey( spep_1-3 + 20, ctbikkuri, 173.7, 121.5 , 0 );
setEffMoveKey( spep_1-3 + 22, ctbikkuri, 166.7, 121 , 0 );

setEffScaleKey( spep_1-3 + 6, ctbikkuri, 2.81, 2.81 );
setEffScaleKey( spep_1-3 + 8, ctbikkuri, 2.01, 2.01 );
setEffScaleKey( spep_1-3 + 22, ctbikkuri, 2.01, 2.01 );

setEffRotateKey( spep_1-3 + 6, ctbikkuri, 18 );
setEffRotateKey( spep_1-3 + 22, ctbikkuri, 18 );

setEffAlphaKey( spep_1-3 + 6, ctbikkuri, 255 );
setEffAlphaKey( spep_1-3 + 22, ctbikkuri, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_1-1 + 32,  10020, 20, 0x100, -1, 0, 244.8, 124.5 );
setEffShake( spep_1-1 + 32, ctbaki, 20, 20 );
setEffMoveKey( spep_1-1 + 32, ctbaki, 244.8, 124.5 , 0 );
setEffMoveKey( spep_1-1 + 34, ctbaki, 219.5, 95.4 , 0 );
setEffMoveKey( spep_1-1 + 36, ctbaki, 240.8, 149.4 , 0 );
setEffMoveKey( spep_1-1 + 38, ctbaki, 266.9, 108.5 , 0 );
setEffMoveKey( spep_1-1 + 40, ctbaki, 246.9, 136.4 , 0 );
setEffMoveKey( spep_1-1 + 42, ctbaki, 231.6, 100.8 , 0 );
setEffMoveKey( spep_1-1 + 44, ctbaki, 221.5, 156.4 , 0 );
setEffMoveKey( spep_1-1 + 46, ctbaki, 236.5, 116.9 , 0 );
setEffMoveKey( spep_1-1 + 48, ctbaki, 237.5, 133.7 , 0 );
setEffMoveKey( spep_1-1 + 52, ctbaki, 238.6, 150.4 , 0 );
--setEffMoveKey( spep_1-1 + 52, ctbaki, 51, 646.5 , 0 );
--setEffMoveKey( spep_1-1 + 54, ctbaki, 51.2, 646.8 , 0 );

a=0.1;

setEffScaleKey( spep_1-1 + 32, ctbaki, 0.93 +a, 0.93+a );
setEffScaleKey( spep_1-1 + 34, ctbaki, 1.04+a, 1.04+a );
setEffScaleKey( spep_1-1 + 36, ctbaki, 1.44+a, 1.44+a );
setEffScaleKey( spep_1-1 + 38, ctbaki, 1.26+a, 1.26+a );
setEffScaleKey( spep_1-1 + 40, ctbaki, 1.26+a, 1.26+a );
setEffScaleKey( spep_1-1 + 42, ctbaki, 1.2+a, 1.2+a );
setEffScaleKey( spep_1-1 + 44, ctbaki, 1.26+a, 1.26+a );
setEffScaleKey( spep_1-1 + 46, ctbaki, 1.27+a, 1.27+a );
setEffScaleKey( spep_1-1 + 48, ctbaki, 1.27+a, 1.27+a );
setEffScaleKey( spep_1-1 + 50, ctbaki, 1.28+a, 1.28+a );
setEffScaleKey( spep_1-1 + 52, ctbaki, 1.28+a, 1.28+a );
--setEffScaleKey( spep_1-1 + 54, ctbaki, 1.29, 1.29 );

setEffRotateKey( spep_1-1 + 32, ctbaki, -15.9 );
--setEffRotateKey( spep_1-1 + 34, ctbaki, 11.3 );
setEffRotateKey( spep_1-1 + 36, ctbaki, -26.3 );
setEffRotateKey( spep_1-1 + 38, ctbaki, -21 );
setEffRotateKey( spep_1-1 + 40, ctbaki, -31.2 );
setEffRotateKey( spep_1-1 + 42, ctbaki, -23.6 );
setEffRotateKey( spep_1-1 + 50, ctbaki, -23.6 );
setEffRotateKey( spep_1-1 + 52, ctbaki, -23.5 );
--setEffRotateKey( spep_1-1 + 54, ctbaki, 23.6 );

setEffAlphaKey( spep_1-1 + 32, ctbaki, 255 );
setEffAlphaKey( spep_1-1 + 44, ctbaki, 255 );
setEffAlphaKey( spep_1-1 + 46, ctbaki, 198 );
setEffAlphaKey( spep_1-1 + 48, ctbaki, 142 );
setEffAlphaKey( spep_1-1 + 50, ctbaki, 85 );
setEffAlphaKey( spep_1-1 + 52, ctbaki, 0 );

--SE
playSe( spep_1 + 26, 1189 );
playSe( spep_1 + 32, 1010 );
playSe( spep_1 + 34, 1110 );
playSe( spep_1 + 61, 1109 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 72, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1+62 , 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2=spep_1+70;
------------------------------------------------------
-- 格闘(裏拳)
------------------------------------------------------
-- ** エフェクト等 ** --
backhander = entryEffect( spep_2 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, backhander, 0, 0, 0 );
setEffMoveKey( spep_2 + 56, backhander, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, backhander, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, backhander, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, backhander, 0 );
setEffRotateKey( spep_2 + 56, backhander, 0 );
setEffAlphaKey( spep_2 + 0, backhander, 255 );
setEffAlphaKey( spep_2 + 56, backhander, 255 );
setEffAlphaKey( spep_2 + 57, backhander, 0 );
setEffAlphaKey( spep_2 + 58, backhander, 0 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2-3 + 58, 1, 0 );

changeAnime( spep_2 + 0, 1, 108 );
changeAnime( spep_2-3 + 22, 1, 107 );

setMoveKey( spep_2 + 0, 1, -471.1, -446.7 , 0 );
--setMoveKey( spep_2-3 + 2, 1, -363.3, -341.7 , 0 );
setMoveKey( spep_2-3 + 4, 1, -293.9, -267.9 , 0 );
setMoveKey( spep_2-3 + 6, 1, -239, -215.7 , 0 );
setMoveKey( spep_2-3 + 8, 1, -195.2, -167.9 , 0 );
setMoveKey( spep_2-3 + 10, 1, -155.1, -127.8 , 0 );
setMoveKey( spep_2-3 + 12, 1, -121.6, -94.5 , 0 );
setMoveKey( spep_2-3 + 14, 1, -89.9, -60.6 , 0 );
setMoveKey( spep_2-3 + 16, 1, -62, -17 , 0 );
setMoveKey( spep_2-3 + 18, 1, -33.8, -2.3 , 0 );
setMoveKey( spep_2-3 + 21, 1, 68.3, 129.3 , 0 );
setMoveKey( spep_2-3 + 22, 1, 90.8, 110.7 , 0 );
setMoveKey( spep_2-3 + 24, 1, 67.3, 122.6 , 0 );
setMoveKey( spep_2-3 + 26, 1, 91.8, 107.5 , 0 );
setMoveKey( spep_2-3 + 28, 1, 40.9, 91.4 , 0 );
setMoveKey( spep_2-3 + 30, 1, -27.2, -27.3 , 0 );
setMoveKey( spep_2-3 + 32, 1, -174.2, -207.4 , 0 );
setMoveKey( spep_2-3 + 34, 1, -389, -491 , 0 );
setMoveKey( spep_2-3 + 36, 1, -715.1, -917.3 , 0 );
setMoveKey( spep_2-3 + 38, 1, -1097.5, -1427.2 , 0 );
setMoveKey( spep_2-3 + 40, 1, -1093.5, -1428.8 , 0 );
setMoveKey( spep_2-3 + 42, 1, -1096.9, -1430 , 0 );
setMoveKey( spep_2-3 + 44, 1, -1100.3, -1431.3 , 0 );
setMoveKey( spep_2-3 + 46, 1, -1099.9, -1431.2 , 0 );
setMoveKey( spep_2-3 + 48, 1, -1099.5, -1431.1 , 0 );
setMoveKey( spep_2-3 + 50, 1, -1101.6, -1432.5 , 0 );
setMoveKey( spep_2-3 + 52, 1, -1103.8, -1433.9 , 0 );
setMoveKey( spep_2-3 + 54, 1, -1102.2, -1433.9 , 0 );
setMoveKey( spep_2-3 + 56, 1, -1100.7, -1433.9 , 0 );
setMoveKey( spep_2-3 + 58, 1, -1104, -1436.5 , 0 );

setScaleKey( spep_2 + 0, 1, 2.5, 2.5 );
--setScaleKey( spep_2-3 + 2, 1, 2.26, 2.26 );
setScaleKey( spep_2-3 + 4, 1, 2.11, 2.11 );
setScaleKey( spep_2-3 + 6, 1, 2.01, 2.01 );
setScaleKey( spep_2-3 + 8, 1, 1.93, 1.93 );
setScaleKey( spep_2-3 + 10, 1, 1.88, 1.88 );
setScaleKey( spep_2-3 + 12, 1, 1.84, 1.84 );
setScaleKey( spep_2-3 + 14, 1, 1.82, 1.82 );
setScaleKey( spep_2-3 + 16, 1, 1.82, 1.82 );
setScaleKey( spep_2-3 + 18, 1, 1.84, 1.84 );
setScaleKey( spep_2-3 + 21, 1, 1.68, 1.68 );
setScaleKey( spep_2-3 + 22, 1, 0.57, 0.57 );
setScaleKey( spep_2-3 + 24, 1, 0.57, 0.57 );
setScaleKey( spep_2-3 + 26, 1, 0.58, 0.58 );
setScaleKey( spep_2-3 + 28, 1, 0.66, 0.66 );
setScaleKey( spep_2-3 + 30, 1, 0.88, 0.88 );
setScaleKey( spep_2-3 + 32, 1, 1.29, 1.29 );
setScaleKey( spep_2-3 + 34, 1, 1.92, 1.92 );
setScaleKey( spep_2-3 + 36, 1, 2.83, 2.83 );
setScaleKey( spep_2-3 + 38, 1, 3.93, 3.93 );
setScaleKey( spep_2-3 + 40, 1, 3.93, 3.93 );
setScaleKey( spep_2-3 + 42, 1, 3.94, 3.94 );
setScaleKey( spep_2-3 + 46, 1, 3.94, 3.94 );
setScaleKey( spep_2-3 + 48, 1, 3.95, 3.95 );
setScaleKey( spep_2-3 + 54, 1, 3.95, 3.95 );
setScaleKey( spep_2-3 + 56, 1, 3.96, 3.96 );
setScaleKey( spep_2-3 + 58, 1, 3.96, 3.96 );

setRotateKey( spep_2 + 0, 1, -15 );
setRotateKey( spep_2-3 + 21, 1, -15 );
setRotateKey( spep_2-3 + 22, 1, -140 );
setRotateKey( spep_2-3 + 58, 1, -140 );

--SE
playSe( spep_2 + 22, 1189 );
playSe( spep_2 + 26, 1009 );
playSe( spep_2 + 28, 1110 );
playSe( spep_2 + 31, 1000 );
se_1183 = playSe( spep_2 + 50, 1183 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_3=spep_2+56;
------------------------------------------------------
--敵が地面に落下
------------------------------------------------------
-- ** エフェクト等 ** --
falling = entryEffect( spep_3 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, falling, 0, 0, 0 );
setEffMoveKey( spep_3 + 60, falling, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, falling, 1.0, 1.0 );
setEffScaleKey( spep_3 + 60, falling, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, falling, 0 );
setEffRotateKey( spep_3 + 60, falling, 0 );
setEffAlphaKey( spep_3 + 0, falling, 255 );
setEffAlphaKey( spep_3 + 60, falling, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-2 + 21, 1, 0 );

changeAnime( spep_3 + 0, 1, 105 );

setMoveKey( spep_3 + 0, 1, -103.5, -191.4 , 0 );
--setMoveKey( spep_3-3 + 2, 1, -70.9, -131.4 , 0 );
setMoveKey( spep_3-3 + 4, 1, -52.4, -97.3 , 0 );
setMoveKey( spep_3-3 + 6, 1, -39.3, -73.2 , 0 );
setMoveKey( spep_3-3 + 8, 1, -29.3, -54.8 , 0 );
setMoveKey( spep_3-3 + 10, 1, -21.5, -40.5 , 0 );
setMoveKey( spep_3-3 + 12, 1, -15.3, -29 , 0 );
setMoveKey( spep_3-3 + 14, 1, -10.3, -19.9 , 0 );
setMoveKey( spep_3-3 + 16, 1, -6.4, -12.7 , 0 );
setMoveKey( spep_3-3 + 18, 1, -3.4, -7.1 , 0 );
setMoveKey( spep_3-2 + 21, 1, -1.1, -2.9 , 0 );

setScaleKey( spep_3 + 0, 1, 9.18, 9.18 );
--setScaleKey( spep_3-3 + 2, 1, 6.35, 6.35 );
setScaleKey( spep_3-3 + 4, 1, 4.74, 4.74 );
setScaleKey( spep_3-3 + 6, 1, 3.6, 3.6 );
setScaleKey( spep_3-3 + 8, 1, 2.74, 2.74 );
setScaleKey( spep_3-3 + 10, 1, 2.06, 2.06 );
setScaleKey( spep_3-3 + 12, 1, 1.52, 1.52 );
setScaleKey( spep_3-3 + 14, 1, 1.09, 1.09 );
setScaleKey( spep_3-3 + 16, 1, 0.75, 0.75 );
setScaleKey( spep_3-3 + 18, 1, 0.48, 0.48 );
setScaleKey( spep_3-2 + 21, 1, 0.29, 0.29 );

setRotateKey( spep_3 + 0, 1, 171 );
--setRotateKey( spep_3-3 + 2, 1, 171.1 );
setRotateKey( spep_3-3 + 12, 1, 171.1 );
setRotateKey( spep_3-3 + 14, 1, 171.2 );
setRotateKey( spep_3-2 + 21, 1, 171.2 );

--SE
se_1023 = playSe( spep_3 + 22, 1023 );
setSeVolume( spep_3 + 22, 1023, 84 );
se_1011 = playSe( spep_3 + 23, 1011 );
setSeVolume( spep_3 + 23, 1011, 83 );

stopSe( spep_3 + 26, se_1183, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 62, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_3+52 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4=spep_3+60;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
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

stopSe( spep_4 + 3, se_1023, 0 );
stopSe( spep_4 + 3, se_1011, 0 );

--白フェード
entryFade( spep_4 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;
------------------------------------------------------
--気弾を溜める→発射
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_5 + 130, tame, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_5 + 130, tame, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tame, 0 );
setEffRotateKey( spep_5 + 130, tame, 0 );
setEffAlphaKey( spep_5 + 0, tame, 255 );
setEffAlphaKey( spep_5 + 130, tame, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_5 + 4,  906, 74-2, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 0, shuchusen1, 74-2, 20 );
setEffMoveKey( spep_5 + 4, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_5 + 78-2, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_5 + 4, shuchusen1, 1.53, 1.53 );
setEffScaleKey( spep_5 + 78-2, shuchusen1, 1.53, 1.53 );

setEffRotateKey( spep_5 + 4, shuchusen1, 0 );
setEffRotateKey( spep_5 + 78-2, shuchusen1, 0 );

setEffAlphaKey( spep_5 + 4, shuchusen1, 255 );
setEffAlphaKey( spep_5 + 78-2, shuchusen1, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_5+6  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_5+6  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_5 -12 +18, 190006, 72, 0x100, -1, 0, 100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_5 -12 +18,  ctgogo,  100,  510);
setEffMoveKey(  spep_5 -12 +90,  ctgogo,  100,  510);

setEffAlphaKey( spep_5 -12 +18, ctgogo, 0 );
setEffAlphaKey( spep_5 -12 + 19, ctgogo, 255 );
setEffAlphaKey( spep_5 -12 + 20, ctgogo, 255 );
setEffAlphaKey( spep_5 -12 + 84, ctgogo, 255 );
setEffAlphaKey( spep_5 -12 + 86, ctgogo, 191 );
setEffAlphaKey( spep_5 -12 + 88, ctgogo, 112 );
setEffAlphaKey( spep_5 -12 + 90, ctgogo, 64 );

setEffRotateKey(  spep_5 -12 +18,  ctgogo,  0);
setEffRotateKey(  spep_5 -12 +90,  ctgogo,  0);

setEffScaleKey(  spep_5 -12 +18,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_5 -12 +80,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_5 -12 +90,  ctgogo, -1.07, 1.07 );
--SE
playSe( spep_5 + 6, 1018 );
playSe( spep_5 + 2, 1018 );
playSe( spep_5 + 2, 49 );
se_1037 = playSe( spep_5 + 5, 1037 );
playSe( spep_5 + 81, 1027 );
setSeVolume( spep_5 + 81, 1027, 79 );
playSe( spep_5 + 81, 1145 );
setSeVolume( spep_5 + 81, 1145, 86 );

stopSe( spep_5 + 93, se_1037, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 132, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_5 + 122, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 130;
------------------------------------------------------
--気弾が地面に迫る
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, hit, 0, 0, 0 );
setEffMoveKey( spep_6 + 40, hit, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_6 + 40, hit, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit, 0 );
setEffRotateKey( spep_6 + 40, hit, 0 );
setEffAlphaKey( spep_6 + 0, hit, 255 );
setEffAlphaKey( spep_6 + 40, hit, 255 );

--SE
playSe( spep_6, 1021 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 42, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_6 + 32, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 40;
------------------------------------------------------
--爆発
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_7 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, explosion, 0, 0, 0 );
setEffMoveKey( spep_7 + 120, explosion, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_7 + 120, explosion, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, explosion, 0 );
setEffRotateKey( spep_7 + 120, explosion, 0 );
setEffAlphaKey( spep_7 + 0, explosion, 255 );
setEffAlphaKey( spep_7 + 120, explosion, 255 );

--SE
playSe( spep_7 + 2, 1023 );
setSeVolume( spep_7 + 2, 1023, 89 );
playSe( spep_7 + 2, 1159 );
setSeVolume( spep_7 + 2, 1159, 71 );
playSe( spep_7 + 4, 1168 );
setSeVolume( spep_7 + 4, 1168, 39 );

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 10 );
endPhase( spep_7 + 110 );
end