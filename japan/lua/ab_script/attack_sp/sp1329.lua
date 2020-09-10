--1017560:セルジュニア_セルジュニアの地獄
--sp_effect_a1_00185

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
SP_01=	154048	;--	登場
SP_02=	154049	;--	５回攻撃
SP_03=	154055	;--	５回攻撃
SP_04=	154050	;--	敵は地面に激突
SP_05=	154051	;--	気功波溜め
SP_06=	154052	;--	気功波発射
SP_07=	154053	;--	気功波が地上に着弾
SP_08=	154054	;--	遠方で爆発

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
-- 手前突進
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
lush = entryEffect( spep_0 + 0, SP_01,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, lush, 0, 0 , 0 );
setEffMoveKey( spep_0 + 146, lush, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, lush, 1.0, 1.0 );
setEffScaleKey( spep_0 + 146, lush, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, lush, 0 );
setEffRotateKey( spep_0 + 146, lush, 0 );
setEffAlphaKey( spep_0 + 0, lush, 255 );
setEffAlphaKey( spep_0 + 146, lush, 255 );

-- ** 音 ** --
playSe( spep_0 , 1109 );  --ダッシュ
playSe( spep_0+10 , 1109 );  --ダッシュ
playSe( spep_0+20 , 1109 );  --ダッシュ
playSe( spep_0+30 , 1109 );  --ダッシュ
--SE0=playSe( spep_0+40 , 1109 );  --ダッシュ

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    
    pauseAll( SP_dodge, 67 );
    
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

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 +30 , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 +30 , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_0 +42, 190006, 72, 0x100, -1, 0, 0, 540);    -- ゴゴゴゴ

setEffMoveKey(  spep_0 +42,  ctgogo,  0,  540);
setEffMoveKey(  spep_0 +114,  ctgogo,  0,  540);

setEffAlphaKey( spep_0 +42, ctgogo, 0 );
setEffAlphaKey( spep_0 + 43, ctgogo, 255 );
setEffAlphaKey( spep_0 + 44, ctgogo, 255 );
setEffAlphaKey( spep_0 + 106, ctgogo, 255 );
setEffAlphaKey( spep_0 + 108, ctgogo, 255 );
setEffAlphaKey( spep_0 + 110, ctgogo, 191 );
setEffAlphaKey( spep_0 + 112, ctgogo, 128 );
setEffAlphaKey( spep_0 + 114, ctgogo, 64 );

setEffRotateKey(  spep_0 +42,  ctgogo,  0);
setEffRotateKey(  spep_0 +114,  ctgogo,  0);

setEffScaleKey(  spep_0 +42,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +104,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +114,  ctgogo, 1.07, 1.07 );

--SE
playSe( spep_0 + 42, 1018 );  --ごごご
--playSe( spep_0 + 124, 1072 );  --ダッシュ
playSe( spep_0 + 130,  1016);  --セルジュニア移動
playSe( spep_0 + 140,  1016);
playSe( spep_0 + 144,  1016);

--次の準備
spep_1=spep_0+146;

------------------------------------------------------
-- ５回攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
attack_f = entryEffect( spep_1 + 0, SP_02,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 224, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 224, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, attack_f, 0 );
setEffRotateKey( spep_1 + 224, attack_f, 0 );
setEffAlphaKey( spep_1 + 0, attack_f, 255 );
setEffAlphaKey( spep_1 + 224, attack_f, 255 );

-- ** エフェクト等 ** --
attack_b = entryEffect( spep_1 + 0, SP_03,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 224, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 224, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, attack_b, 0 );
setEffRotateKey( spep_1 + 224, attack_b, 0 );
setEffAlphaKey( spep_1 + 0, attack_b, 255 );
setEffAlphaKey( spep_1 + 224, attack_b, 255 );

--流線
ryusen1 = entryEffectLife( spep_1  + 0,  914, 18-3, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1  + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 18, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_1  + 0, ryusen1, 2, 1 );
setEffScaleKey( spep_1 -3 + 18, ryusen1, 2, 1 );

setEffRotateKey( spep_1  + 0, ryusen1, 0 );
setEffRotateKey( spep_1 -3 + 18, ryusen1, 0 );

setEffAlphaKey( spep_1  + 0, ryusen1, 101 );
setEffAlphaKey( spep_1 -3 + 18, ryusen1, 101 );

--流線
ryusen2 = entryEffectLife( spep_1 -3 + 36,  914, 12, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 -3 + 36, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 48, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 36, ryusen2, 2, 1 );
setEffScaleKey( spep_1 -3 + 48, ryusen2, 2, 1 );

setEffRotateKey( spep_1 -3 + 36, ryusen2, 0 );
setEffRotateKey( spep_1 -3 + 48, ryusen2, 0 );

setEffAlphaKey( spep_1 -3 + 36, ryusen2, 101 );
setEffAlphaKey( spep_1 -3 + 48, ryusen2, 101 );

--流線
ryusen3 = entryEffectLife( spep_1 -3 + 68,  914, 6, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 68, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 74, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 68, ryusen3, 2, 1 );
setEffScaleKey( spep_1 -3 + 74, ryusen3, 2, 1 );

setEffRotateKey( spep_1 -3 + 68, ryusen3, -86 );
setEffRotateKey( spep_1 -3 + 74, ryusen3, -86 );

setEffAlphaKey( spep_1 -3 + 68, ryusen3, 101 );
setEffAlphaKey( spep_1 -3 + 74, ryusen3, 101 );

--流線
ryusen4 = entryEffectLife( spep_1 -3 + 86,  914, 36,0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 86, ryusen4, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 122, ryusen4, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 86, ryusen4, 2, 1 );
setEffScaleKey( spep_1 -3 + 122, ryusen4, 2, 1 );

setEffRotateKey( spep_1 -3 + 86, ryusen4, -86 );
setEffRotateKey( spep_1 -3 + 122, ryusen4, -86 );

setEffAlphaKey( spep_1 -3 + 86, ryusen4, 101 );
setEffAlphaKey( spep_1 -3 + 122, ryusen4, 101 );

--文字エントリー
ctga1 = entryEffectLife( spep_1 -3 + 22,  10005, 12, 0x100, -1, 0, 100.1, 163.9 );--ガッ

setEffMoveKey( spep_1 -3 + 22, ctga1, 100.1, 163.9 , 0 );
setEffMoveKey( spep_1 -3 + 24, ctga1, 110.1, 194 , 0 );
setEffMoveKey( spep_1 -3 + 26, ctga1, 120.2, 223.9 , 0 );
setEffMoveKey( spep_1 -3 + 28, ctga1, 120.2, 223.9 , 0 );
setEffMoveKey( spep_1 -3 + 30, ctga1, 123.5, 225.8 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctga1, 126.9, 227.7 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctga1, 130.3, 229.6 , 0 );

d=1.2;

setEffScaleKey( spep_1 -3 + 22, ctga1, 0.46 , 0.46  );
setEffScaleKey( spep_1 -3 + 24, ctga1, 0.81 , 0.81  );
setEffScaleKey( spep_1 -3 + 26, ctga1, 1.16 , 1.16  );
setEffScaleKey( spep_1 -3 + 28, ctga1, 1.16 +d, 1.16 +d );
setEffScaleKey( spep_1 -3 + 30, ctga1, 1.18 +d, 1.18 +d );
setEffScaleKey( spep_1 -3 + 32, ctga1, 1.2 +d, 1.2 +d );
setEffScaleKey( spep_1 -3 + 34, ctga1, 1.22 +d, 1.22 +d );

setEffRotateKey( spep_1 -3 + 22, ctga1, 14.7 );
setEffRotateKey( spep_1 -3 + 34, ctga1, 14.7 );

setEffAlphaKey( spep_1 -3 + 22, ctga1, 255 );
setEffAlphaKey( spep_1 -3 + 28, ctga1, 255 );
setEffAlphaKey( spep_1 -3 + 30, ctga1, 170 );
setEffAlphaKey( spep_1 -3 + 32, ctga1, 85 );
setEffAlphaKey( spep_1 -3 + 34, ctga1, 0 );

--文字エントリー
ctdon = entryEffectLife( spep_1 -3 + 78,  10019, 12, 0x100, -1, 0, 73.3, 33.9 );--ドンッ

setEffMoveKey( spep_1 -3 + 78, ctdon, 73.3, 33.9 , 0 );
setEffMoveKey( spep_1 -3 + 80, ctdon, 67.8, 38.5 , 0 );
setEffMoveKey( spep_1 -3 + 82, ctdon, 62.1, 42.9 , 0 );
setEffMoveKey( spep_1 -3 + 90, ctdon, 62.1, 42.9 , 0 );

setEffScaleKey( spep_1 -3 + 78, ctdon, 0.46 , 0.46 );
setEffScaleKey( spep_1 -3 + 80, ctdon, 1.09 , 1.09 );
setEffScaleKey( spep_1 -3 + 82, ctdon, 1.73 , 1.73 );
setEffScaleKey( spep_1 -3 + 84, ctdon, 1.73 , 1.73 );
setEffScaleKey( spep_1 -3 + 86, ctdon, 1.79 , 1.79 );
setEffScaleKey( spep_1 -3 + 88, ctdon, 1.85, 1.85 );
setEffScaleKey( spep_1 -3 + 90, ctdon, 1.91, 1.91 );


setEffRotateKey( spep_1 -3 + 78, ctdon, 10.7 );
setEffRotateKey( spep_1 -3 + 90, ctdon, 10.7 );

setEffAlphaKey( spep_1 -3 + 78, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 84, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 86, ctdon, 170 );
setEffAlphaKey( spep_1 -3 + 88, ctdon, 85 );
setEffAlphaKey( spep_1 -3 + 90, ctdon, 0 );

--文字エントリー
ctbikuri = entryEffectLife( spep_1 -3 + 78,  10000, 12, 0x100, -1, 0, 125.1, 26 );--!!

setEffMoveKey( spep_1 -3 + 78, ctbikuri, 125.1, 26 , 0 );
setEffMoveKey( spep_1 -3 + 80, ctbikuri, 181.5, 25 , 0 );
setEffMoveKey( spep_1 -3 + 82, ctbikuri, 237.8, 24.2 , 0 );
setEffMoveKey( spep_1 -3 + 84, ctbikuri, 237.8, 24.2 , 0 );
setEffMoveKey( spep_1 -3 + 86, ctbikuri, 249.5, 27.6 , 0 );
setEffMoveKey( spep_1 -3 + 88, ctbikuri, 261.1, 31 , 0 );
setEffMoveKey( spep_1 -3 + 90, ctbikuri, 272.7, 34.4 , 0 );

setEffScaleKey( spep_1 -3 + 78, ctbikuri, 0.69, 0.69 );
setEffScaleKey( spep_1 -3 + 80, ctbikuri, 1.65, 1.65 );
setEffScaleKey( spep_1 -3 + 82, ctbikuri, 2.61, 2.61 );
setEffScaleKey( spep_1 -3 + 84, ctbikuri, 2.61, 2.61 );
setEffScaleKey( spep_1 -3 + 86, ctbikuri, 2.93, 2.93 );
setEffScaleKey( spep_1 -3 + 88, ctbikuri, 3.25, 3.25 );
setEffScaleKey( spep_1 -3 + 90, ctbikuri, 3.57, 3.57 );

setEffRotateKey( spep_1 -3 + 78, ctbikuri, 32.5 );
setEffRotateKey( spep_1 -3 + 90, ctbikuri, 32.5 );

setEffAlphaKey( spep_1 -3 + 78, ctbikuri, 255 );
setEffAlphaKey( spep_1 -3 + 84, ctbikuri, 255 );
setEffAlphaKey( spep_1 -3 + 86, ctbikuri, 170 );
setEffAlphaKey( spep_1 -3 + 88, ctbikuri, 85 );
setEffAlphaKey( spep_1 -3 + 90, ctbikuri, 0 );


--文字エントリー
ctga2 = entryEffectLife( spep_1 -3 + 128,  10005, 10, 0x100, -1, 0, -40.9, 221.9 );--ガッ

setEffMoveKey( spep_1 -3 + 128, ctga2, -40.9, 221.9 , 0 );
setEffMoveKey( spep_1 -3 + 130, ctga2, -45.4, 233.8 , 0 );
setEffMoveKey( spep_1 -3 + 132, ctga2, -49.9, 245.8 , 0 );
setEffMoveKey( spep_1 -3 + 134, ctga2, -49.9, 245.8 , 0 );
setEffMoveKey( spep_1 -3 + 136, ctga2, -54.8, 255.8 , 0 );
setEffMoveKey( spep_1 -3 + 138, ctga2, -59.8, 265.8 , 0 );

g=0.5;

setEffScaleKey( spep_1 -3 + 128, ctga2, 0.43, 0.43 );
setEffScaleKey( spep_1 -3 + 130, ctga2, 0.56, 0.56 );
setEffScaleKey( spep_1 -3 + 132, ctga2, 0.68, 0.68 );
setEffScaleKey( spep_1 -3 + 134, ctga2, 0.68+g, 0.68+g );
setEffScaleKey( spep_1 -3 + 136, ctga2, 0.73+g, 0.73+g );
setEffScaleKey( spep_1 -3 + 138, ctga2, 0.77+g, 0.77+g );


setEffRotateKey( spep_1 -3 + 128, ctga2, -14.2 );
setEffRotateKey( spep_1 -3 + 138, ctga2, -14.2 );

setEffAlphaKey( spep_1 -3 + 128, ctga2, 255 );
setEffAlphaKey( spep_1 -3 + 134, ctga2, 255 );
setEffAlphaKey( spep_1 -3 + 136, ctga2, 128 );
setEffAlphaKey( spep_1 -3 + 138, ctga2, 0 );

--文字エントリー
ctga3 = entryEffectLife( spep_1 -3 + 148,  10005, 10, 0x100, -1, 0, 31, 183 );

setEffMoveKey( spep_1 -3 + 148, ctga3, 31, 183 , 0 );
setEffMoveKey( spep_1 -3 + 150, ctga3, 49.2, 201.3 , 0 );
setEffMoveKey( spep_1 -3 + 152, ctga3, 67.4, 219.6 , 0 );
setEffMoveKey( spep_1 -3 + 154, ctga3, 67.4, 219.6 , 0 );
setEffMoveKey( spep_1 -3 + 156, ctga3, 98.7, 238.3 , 0 );
setEffMoveKey( spep_1 -3 + 158, ctga3, 130, 256.9 , 0 );

setEffScaleKey( spep_1 -3 + 148, ctga3, 0.52, 0.52 );
setEffScaleKey( spep_1 -3 + 150, ctga3, 0.61, 0.61 );
setEffScaleKey( spep_1 -3 + 152, ctga3, 0.7, 0.7 );
setEffScaleKey( spep_1 -3 + 154, ctga3, 0.7+g, 0.7+g );
setEffScaleKey( spep_1 -3 + 156, ctga3, 0.75+g, 0.75+g );
setEffScaleKey( spep_1 -3 + 158, ctga3, 0.8+g, 0.8+g );

setEffRotateKey( spep_1 -3 + 148, ctga3, 24.5 );
setEffRotateKey( spep_1 -3 + 150, ctga3, 24.4 );
setEffRotateKey( spep_1 -3 + 152, ctga3, 24.3 );
setEffRotateKey( spep_1 -3 + 154, ctga3, 24.3 );
setEffRotateKey( spep_1 -3 + 156, ctga3, 24.4 );
setEffRotateKey( spep_1 -3 + 158, ctga3, 24.5 );

setEffAlphaKey( spep_1 -3 + 148, ctga3, 255 );
setEffAlphaKey( spep_1 -3 + 154, ctga3, 255 );
setEffAlphaKey( spep_1 -3 + 156, ctga3, 128 );
setEffAlphaKey( spep_1 -3 + 158, ctga3, 0 );

ctbaki = entryEffectLife( spep_1 -3 + 186,  10020, 12, 0x100, -1, 0, -109.1, 158.6 );--バキッ

setEffMoveKey( spep_1 -3 + 186, ctbaki, -109.1, 158.6 , 0 );
setEffMoveKey( spep_1 -3 + 188, ctbaki, -113.9, 159.9 , 0 );
setEffMoveKey( spep_1 -3 + 190, ctbaki, -104.5, 157.4 , 0 );
setEffMoveKey( spep_1 -3 + 192, ctbaki, -110.7, 163.8 , 0 );
setEffMoveKey( spep_1 -3 + 194, ctbaki, -99.6, 156.3 , 0 );
setEffMoveKey( spep_1 -3 + 196, ctbaki, -112.5, 155.9 , 0 );
setEffMoveKey( spep_1 -3 + 198, ctbaki, -113.1, 155.1 , 0 );

setEffScaleKey( spep_1 -3 + 186, ctbaki, 0.75, 0.75 );
setEffScaleKey( spep_1 -3 + 188, ctbaki, 1.11, 1.11 );
setEffScaleKey( spep_1 -3 + 190, ctbaki, 1.47, 1.47 );
setEffScaleKey( spep_1 -3 + 192, ctbaki, 1.47, 1.47 );
setEffScaleKey( spep_1 -3 + 194, ctbaki, 2.04, 2.04 );
setEffScaleKey( spep_1 -3 + 196, ctbaki, 2.62, 2.62 );
setEffScaleKey( spep_1 -3 + 198, ctbaki, 3.19, 3.19 );

setEffRotateKey( spep_1 -3 + 186, ctbaki, 5.7 );
setEffRotateKey( spep_1 -3 + 198, ctbaki, 5.7 );

setEffAlphaKey( spep_1 -3 + 186, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 192, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 194, ctbaki, 170 );
setEffAlphaKey( spep_1 -3 + 196, ctbaki, 85 );
setEffAlphaKey( spep_1 -3 + 198, ctbaki, 0 );



--敵の動き
setDisp( spep_1  + 0, 1, 1 );
setDisp( spep_1  + 208, 1, 0 );

changeAnime( spep_1  + 0, 1, 100 );
changeAnime( spep_1 -3 + 6, 1, 104 );
changeAnime( spep_1 -3 + 22, 1, 106 );
changeAnime( spep_1 -3 + 70, 1, 104 );
changeAnime( spep_1 -3 + 74, 1, 108 );
changeAnime( spep_1 -3 + 126, 1, 106 );
changeAnime( spep_1 -3 + 148, 1, 108 );
changeAnime( spep_1 -3 + 184, 1, 107 );

a=120;
b=50;

setMoveKey( spep_1  + 0, 1, 300+b, -123.2+a , 0 );
--setMoveKey( spep_1 -3 + 2, 1, 151.4, -123.2 , 0 );
setMoveKey( spep_1 -3 + 5, 1, 117+b, -123.2+a , 0 );
setMoveKey( spep_1 -3 + 6, 1, 114.7+b, -123.2+a , 0 );
setMoveKey( spep_1 -3 + 8, 1, 105.4+b, -123.2+a , 0 );
setMoveKey( spep_1 -3 + 10, 1, 96.1+b, -123.2+a , 0 );
setMoveKey( spep_1 -3 + 12, 1, 86.7+b, -123.2+a , 0 );
setMoveKey( spep_1 -3 + 14, 1, 77.4+b, -123.2+a , 0 );
setMoveKey( spep_1 -3 + 16, 1, 68+b, -123.2+a , 0 );
setMoveKey( spep_1 -3 + 18, 1, 58.7+b, -123.2+a , 0 );
setMoveKey( spep_1 -3 + 21, 1, 49.3+b, -123.2+a , 0 );
setMoveKey( spep_1 -3 + 22, 1, 53.5+b -20, -103.5+a , 0 );
setMoveKey( spep_1 -3 + 32, 1, 53.5+b -20, -103.5+a , 0 );
setMoveKey( spep_1 -3 + 34, 1, 100.5+b -20, -103.5+a , 0 );
setMoveKey( spep_1 -3 + 36, 1, 129+b, -103.5+a , 0 );
setMoveKey( spep_1 -3 + 38, 1, 143.6+b, -103.5+a , 0 );
setMoveKey( spep_1 -3 + 40, 1, 149+b, -103.5+a , 0 );
setMoveKey( spep_1 -3 + 42, 1, 149.8+b, -103.5+a , 0 );
setMoveKey( spep_1 -3 + 44, 1, 141.2+b, -102.9+a , 0 );
setMoveKey( spep_1 -3 + 46, 1, 132.7+b, -102.3+a , 0 );
setMoveKey( spep_1 -3 + 48, 1, 124.1+b, -101.7+a , 0 );
setMoveKey( spep_1 -3 + 50, 1, 115.5+b, -101.3+a , 0 );
setMoveKey( spep_1 -3 + 52, 1, 106.9+b, -100.9+a , 0 );
setMoveKey( spep_1 -3 + 54, 1, 98.2+b, -100.5+a , 0 );
setMoveKey( spep_1 -3 + 56, 1, 89.6+b, -100.2+a , 0 );
setMoveKey( spep_1 -3 + 58, 1, 81+b, -100+a , 0 );
setMoveKey( spep_1 -3 + 60, 1, 72.3+b, -99.8+a , 0 );
setMoveKey( spep_1 -3 + 62, 1, 63.7+b, -99.7+a , 0 );
setMoveKey( spep_1 -3 + 64, 1, 55+b, -99.7+a , 0 );
setMoveKey( spep_1 -3 + 66, 1, 46.3+b, -99.7+a , 0 );
setMoveKey( spep_1 -3 + 69, 1, 37.7+b, -99.8+a , 0 );
setMoveKey( spep_1 -3 + 70, 1, 27.6+b, -95.9+a , 0 );
setMoveKey( spep_1 -3 + 73, 1, 27.6+b, -95.9+a , 0 );
setMoveKey( spep_1 -3 + 74, 1, 30+b, -86.9+a , 0 );
setMoveKey( spep_1 -3 + 82, 1, 30+b, -86.9+a , 0 );
setMoveKey( spep_1 -3 + 84, 1, 35.6+b, 31.8+a , 0 );
setMoveKey( spep_1 -3 + 86, 1, 39.4+b, 97.1+a , 0 );
setMoveKey( spep_1 -3 + 88, 1, 41.6+b, 130.3+a , 0 );
setMoveKey( spep_1 -3 + 90, 1, 42.7+b, 145.1+a , 0 );
setMoveKey( spep_1 -3 + 92, 1, 43.1+b, 150.6+a , 0 );
setMoveKey( spep_1 -3 + 94, 1, 43.2+b, 152.1+a , 0 );
setMoveKey( spep_1 -3 + 96, 1, 43.2+b, 152.4+a , 0 );
setMoveKey( spep_1 -3 + 98, 1, 43.2+b, 152.4+a , 0 );
setMoveKey( spep_1 -3 + 100, 1, 43.1+b, 151.2+a , 0 );
setMoveKey( spep_1 -3 + 102, 1, 42.7+b, 147.6+a , 0 );
setMoveKey( spep_1 -3 + 104, 1, 42.1+b, 141.6+a , 0 );
setMoveKey( spep_1 -3 + 106, 1, 41.3+b, 133.3+a , 0 );
setMoveKey( spep_1 -3 + 108, 1, 40.2+b, 122.6+a , 0 );
setMoveKey( spep_1 -3 + 110, 1, 38.8+b, 109.4+a , 0 );
setMoveKey( spep_1 -3 + 112, 1, 37.3+b, 93.9+a , 0 );
setMoveKey( spep_1 -3 + 114, 1, 35.5+b, 76+a , 0 );
setMoveKey( spep_1 -3 + 116, 1, 33.4+b, 55.8+a , 0 );
setMoveKey( spep_1 -3 + 118, 1, 31.1+b, 33.1+a , 0 );
setMoveKey( spep_1 -3 + 120, 1, 28.6+b, 8.1+a , 0 );
setMoveKey( spep_1 -3 + 122, 1, 25.8+b, -19.3+a , 0 );
setMoveKey( spep_1 -3 + 125, 1, 22.8+b, -49.1+a , 0 );
setMoveKey( spep_1 -1 + 126, 1, 19.5, -81.3+a +75 , 0 );
setMoveKey( spep_1 -1 + 128, 1, 10.9, -44.3+a +75, 0 );
setMoveKey( spep_1 -1 + 130, 1, 10.9, -44.3+a +75 , 0 );
setMoveKey( spep_1 -1 + 132, 1, 5.4, -38.8+a +75 , 0 );
setMoveKey( spep_1 -1 + 134, 1, 5.4, -49.7+a +75 , 0 );
setMoveKey( spep_1 -1 + 136, 1, 21.8, -38.8+a +75 , 0 );
setMoveKey( spep_1 -1 + 138, 1, -6.7, -42+a +75 , 0 );
setMoveKey( spep_1 -1 + 140, 1, -12.6, -41.5+a +75 , 0 );
setMoveKey( spep_1 -1 + 142, 1, -18.5, -41.1+a +75 , 0 );
setMoveKey( spep_1 -1 + 144, 1, -24.4, -40.8+a +75 , 0 );
setMoveKey( spep_1 -1 + 147, 1, -30.4, -40.7+a +75 , 0 );
setMoveKey( spep_1 -1 + 148, 1, -24.7, -41.7+a +75 , 0 );
setMoveKey( spep_1 -3 + 150, 1, -24.7, -41.7+a +75 , 0 );
setMoveKey( spep_1 -3 + 152, 1, -19.3, -36.3+a +75 , 0 );
setMoveKey( spep_1 -3 + 154, 1, -30.2, -36.3+a +75 , 0 );
setMoveKey( spep_1 -3 + 156, 1, -24.7, -47.2+a +75 , 0 );
setMoveKey( spep_1 -3 + 158, 1, -15.6, -23.4+a +75 , 0 );
setMoveKey( spep_1 -3 + 160, 1, -13.5, -19.5+a +75 , 0 );
setMoveKey( spep_1 -3 + 162, 1, -12.2, -16.8+a +75 , 0 );
setMoveKey( spep_1 -3 + 164, 1, -11.2, -14.9+a +75 , 0 );
setMoveKey( spep_1 -3 + 166, 1, -10.6, -13.5+a +75 , 0 );
setMoveKey( spep_1 -3 + 168, 1, -10.1, -12.5+a +75 , 0 );
setMoveKey( spep_1 -3 + 170, 1, -9.7, -11.8+a +75 , 0 );
setMoveKey( spep_1 -3 + 172, 1, -9.5, -11.3+a +75 , 0 );
setMoveKey( spep_1 -3 + 174, 1, -9.3, -11+a +75 , 0 );
setMoveKey( spep_1 -3 + 176, 1, -9.2, -10.7+a +75 , 0 );
setMoveKey( spep_1 -3 + 178, 1, -9.1, -10.6+a +75 , 0 );
setMoveKey( spep_1 -3 + 180, 1, -9.1, -10.5+a +75 , 0 );
setMoveKey( spep_1 -3 + 183, 1, -9.1, -10.3+a +75 , 0 );
setMoveKey( spep_1 -3 + 184, 1, -22.5, -36+a+75 , 0 );
setMoveKey( spep_1 -3 + 192, 1, -22.5, -36.1+a+75 , 0 );
--setMoveKey( spep_1 -3 + 194, 1, -18.9, -42.8+a+75 , 0 );
--setMoveKey( spep_1 -3 + 196, 1, -8.2, -62.8 +75, 0 );
--setMoveKey( spep_1 -3 + 198, 1, 9.7, -96 +75, 0 );
--setMoveKey( spep_1 -3 + 200, 1, 34.5, -142 +75, 0 );
--setMoveKey( spep_1 -3 + 202, 1, 66.1, -200.5 +75, 0 );
--setMoveKey( spep_1 -3 + 204, 1, 104.2, -270.9 +75, 0 );
--setMoveKey( spep_1 -3 + 206, 1, 148.4, -352.6 +75, 0 );
setMoveKey( spep_1  + 208, 1, 198.2, -445.1  , 0 );

c=0.6;
e=0.4;

setScaleKey( spep_1  + 0, 1, 0.74+c, 0.74+c );
setScaleKey( spep_1 -3 + 183, 1, 0.74+c, 0.74+c );
setScaleKey( spep_1 -3 + 184, 1, 0.31+e, 0.31+e );
setScaleKey( spep_1 -3 + 192, 1, 0.31+e, 0.31+e );
setScaleKey( spep_1 -3 + 194, 1, 0.32+e, 0.32+e );
setScaleKey( spep_1 -3 + 196, 1, 0.36+e, 0.36+e );
setScaleKey( spep_1 -3 + 198, 1, 0.44+e, 0.44+e );
setScaleKey( spep_1 -3 + 200, 1, 0.54+e, 0.54+e );
setScaleKey( spep_1 -3 + 202, 1, 0.66+e, 0.66+e );
setScaleKey( spep_1 -3 + 204, 1, 0.82+e, 0.82+e );
setScaleKey( spep_1 -3 + 206, 1, 1.01+e, 1.01+e );
setScaleKey( spep_1  + 208, 1, 1.22+e, 1.22+e );

setRotateKey( spep_1  + 0, 1, 0 );
setRotateKey( spep_1 -3 + 21, 1, 0 );
setRotateKey( spep_1 -3 + 22, 1, -29.7 );
setRotateKey( spep_1 -3 + 42, 1, -29.7 );
setRotateKey( spep_1 -3 + 44, 1, -31.5 );
setRotateKey( spep_1 -3 + 46, 1, -33.2 );
setRotateKey( spep_1 -3 + 48, 1, -35 );
setRotateKey( spep_1 -3 + 50, 1, -36.7 );
setRotateKey( spep_1 -3 + 52, 1, -38.5 );
setRotateKey( spep_1 -3 + 54, 1, -40.3 );
setRotateKey( spep_1 -3 + 56, 1, -42 );
setRotateKey( spep_1 -3 + 58, 1, -43.8 );
setRotateKey( spep_1 -3 + 60, 1, -45.6 );
setRotateKey( spep_1 -3 + 62, 1, -47.3 );
setRotateKey( spep_1 -3 + 64, 1, -49.1 );
setRotateKey( spep_1 -3 + 66, 1, -50.8 );
setRotateKey( spep_1 -3 + 69, 1, -52.6 );
setRotateKey( spep_1 -3 + 70, 1, 0 );
setRotateKey( spep_1 -3 + 73, 1, 0 );
setRotateKey( spep_1 -3 + 74, 1, -55.4 );
setRotateKey( spep_1 -3 + 82, 1, -55.4 );
setRotateKey( spep_1 -3 + 84, 1, -69.9 );
setRotateKey( spep_1 -3 + 86, 1, -78.1 );
setRotateKey( spep_1 -3 + 88, 1, -82.3 );
setRotateKey( spep_1 -3 + 90, 1, -84.2 );
setRotateKey( spep_1 -3 + 92, 1, -84.9 );
setRotateKey( spep_1 -3 + 94, 1, -85.1 );
setRotateKey( spep_1 -3 + 104, 1, -85.1 );
setRotateKey( spep_1 -3 + 106, 1, -85.2 );
setRotateKey( spep_1 -3 + 110, 1, -85.2 );
setRotateKey( spep_1 -3 + 112, 1, -85.3 );
setRotateKey( spep_1 -3 + 114, 1, -85.3 );
setRotateKey( spep_1 -3 + 116, 1, -85.4 );
setRotateKey( spep_1 -3 + 118, 1, -85.5 );
setRotateKey( spep_1 -3 + 120, 1, -85.5 );
setRotateKey( spep_1 -3 + 122, 1, -85.6 );
setRotateKey( spep_1 -3 + 125, 1, -85.7 );
setRotateKey( spep_1 -3 + 126, 1, -85.8 );
setRotateKey( spep_1 -3 + 127, 1, -85.8 );
setRotateKey( spep_1 -3 + 128, 1, -30.6 );
setRotateKey( spep_1 -3 + 136, 1, -30.6 );
setRotateKey( spep_1 -3 + 138, 1, -37.8 );
setRotateKey( spep_1 -3 + 140, 1, -40.2 );
setRotateKey( spep_1 -3 + 142, 1, -42.5 );
setRotateKey( spep_1 -3 + 144, 1, -44.9 );
setRotateKey( spep_1 -3 + 147, 1, -47.3 );
setRotateKey( spep_1 -3 + 148, 1, -39.4 );
setRotateKey( spep_1 -3 + 183, 1, -39.4 );
setRotateKey( spep_1 -3 + 184, 1, 26.8 );
setRotateKey( spep_1 -3 + 192, 1, 26.8 );
setRotateKey( spep_1 -3 + 194, 1, 26.6 );
setRotateKey( spep_1 -3 + 196, 1, 25.9 );
setRotateKey( spep_1 -3 + 198, 1, 24.7 );
setRotateKey( spep_1 -3 + 200, 1, 23.2 );
setRotateKey( spep_1 -3 + 202, 1, 21.1 );
setRotateKey( spep_1 -3 + 204, 1, 18.6 );
setRotateKey( spep_1 -3 + 206, 1, 15.6 );
setRotateKey( spep_1  + 208, 1, 12.2 );

-- ** 音 ** --
playSe( spep_1 + 22 -3,  1000);
SE1 = playSe( spep_1 + 58 -3,  63);
stopSe( spep_1 + 78,  SE1,  0);
playSe( spep_1 -3 + 78,  1009);
playSe( spep_1 -3 + 128,  1010);
playSe( spep_1 -3 + 148,  1001);
playSe( spep_1 -3 + 152,  43);  --瞬間移動
playSe( spep_1 -3 + 186,  1011);

--白フェード
entryFade( spep_1 + 72, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 180, 0, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+224;

------------------------------------------------------
-- 敵は地面に激突
------------------------------------------------------

-- ** エフェクト等 ** --
clash = entryEffect( spep_2 + 0, SP_04,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, clash, 0, 0 , 0 );
setEffMoveKey( spep_2 + 86, clash, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, clash, 1.0, 1.0 );
setEffScaleKey( spep_2 + 86, clash, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, clash, 0 );
setEffRotateKey( spep_2 + 86, clash, 0 );
setEffAlphaKey( spep_2 + 0, clash, 255 );
setEffAlphaKey( spep_2 + 86, clash, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 +  19, 1, 0 );
changeAnime( spep_2 + 0, 1, 5 );

setMoveKey( spep_2 + 0, 1, -14.5, -190.3 , 0 );
setMoveKey( spep_2 + 2, 1, -12.2, -154.5 , 0 );
setMoveKey( spep_2 + 4, 1, -10.2, -122.5 , 0 );
setMoveKey( spep_2 + 6, 1, -8.4, -94.2 , 0 );
setMoveKey( spep_2 + 8, 1, -6.8, -69.6 , 0 );
setMoveKey( spep_2 + 10, 1, -5.4, -48.9 , 0 );
setMoveKey( spep_2 + 12, 1, -4.4, -31.9 , 0 );
setMoveKey( spep_2 + 14, 1, -3.5, -18.6 , 0 );
setMoveKey( spep_2 + 16, 1, -2.9, -9.2 , 0 );
setMoveKey( spep_2 + 18, 1, -2.5, -3.5 , 0 );
setMoveKey( spep_2 + 20, 1, -2.4, -1.6 , 0 );

setScaleKey( spep_2 + 0, 1, 3.73, 3.73 );
setScaleKey( spep_2 + 2, 1, 3.07, 3.07 );
setScaleKey( spep_2 + 4, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 6, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 8, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 10, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 12, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 14, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 16, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 18, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 20, 1, 0.27, 0.27 );

setRotateKey( spep_2 + 0, 1, -25 );
setRotateKey( spep_2 + 2, 1, -20.2 );
setRotateKey( spep_2 + 4, 1, -16 );
setRotateKey( spep_2 + 6, 1, -12.2 );
setRotateKey( spep_2 + 8, 1, -9 );
setRotateKey( spep_2 + 10, 1, -6.2 );
setRotateKey( spep_2 + 12, 1, -4 );
setRotateKey( spep_2 + 14, 1, -2.3 );
setRotateKey( spep_2 + 16, 1, -1 );
setRotateKey( spep_2 + 18, 1, -0.2 );
setRotateKey( spep_2 + 20, 1, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_2 + 0,  906, 28, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 +28, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen1, 1.34, 1.21 );
setEffScaleKey( spep_2 + 28, shuchusen1, 1.34, 1.21 );

setEffRotateKey( spep_2 + 0, shuchusen1, 180 );
setEffRotateKey( spep_2 + 28, shuchusen1, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 28, shuchusen1, 255 );

--文字エントリー
ctdogon = entryEffectLife( spep_2 -2 + 20,  10018, 26, 0x100, -1, 0, -6.9, 114.9 );--ドゴォンッ

setEffMoveKey( spep_2 -2 + 20, ctdogon, -6.9, 114.9 , 0 );
setEffMoveKey( spep_2 -2 + 22, ctdogon, -11.7, 139.4 , 0 );
setEffMoveKey( spep_2 -2 + 24, ctdogon, -3.2, 158.6 , 0 );
setEffMoveKey( spep_2 -2 + 26, ctdogon, -8, 187.8 , 0 );
setEffMoveKey( spep_2 -2 + 28, ctdogon, -2.3, 203.2 , 0 );
setEffMoveKey( spep_2 -2 + 30, ctdogon, -2.3, 203.2 , 0 );
setEffMoveKey( spep_2 -2 + 32, ctdogon, -8.1, 216 , 0 );
setEffMoveKey( spep_2 -2 + 34, ctdogon, 0.6, 212.3 , 0 );
setEffMoveKey( spep_2 -2 + 36, ctdogon, -9.7, 218.7 , 0 );
setEffMoveKey( spep_2 -2 + 38, ctdogon, -2.8, 229.3 , 0 );
setEffMoveKey( spep_2 -2 + 40, ctdogon, -4.9, 223.1 , 0 );
setEffMoveKey( spep_2 -2 + 42, ctdogon, -5.9, 241.3 , 0 );
setEffMoveKey( spep_2 -2 + 44, ctdogon, -2.9, 236.5 , 0 );
setEffMoveKey( spep_2 -2 + 46, ctdogon, -2.7, 241.4 , 0 );

setEffScaleKey( spep_2 -2 + 20, ctdogon, 1.3, 1.3 );
setEffScaleKey( spep_2 -2 + 22, ctdogon, 1.49, 1.49 );
setEffScaleKey( spep_2 -2 + 24, ctdogon, 1.68, 1.68 );
setEffScaleKey( spep_2 -2 + 26, ctdogon, 1.88, 1.88 );
setEffScaleKey( spep_2 -2 + 28, ctdogon, 2.07, 2.07 );
setEffScaleKey( spep_2 -2 + 30, ctdogon, 2.07, 2.07 );
setEffScaleKey( spep_2 -2 + 32, ctdogon, 2.15, 2.15 );
setEffScaleKey( spep_2 -2 + 34, ctdogon, 2.23, 2.23 );
setEffScaleKey( spep_2 -2 + 36, ctdogon, 2.31, 2.31 );
setEffScaleKey( spep_2 -2 + 38, ctdogon, 2.39, 2.39 );
setEffScaleKey( spep_2 -2 + 40, ctdogon, 2.47, 2.47 );
setEffScaleKey( spep_2 -2 + 42, ctdogon, 2.54, 2.54 );
setEffScaleKey( spep_2 -2 + 44, ctdogon, 2.62, 2.62 );
setEffScaleKey( spep_2 -2 + 46, ctdogon, 2.7, 2.7 );

setEffRotateKey( spep_2 -2 + 20, ctdogon, -14.8 );
setEffRotateKey( spep_2 -2 + 46, ctdogon, -14.8 );

setEffAlphaKey( spep_2 -2 + 20, ctdogon, 255 );
setEffAlphaKey( spep_2 -2 + 30, ctdogon, 255 );
setEffAlphaKey( spep_2 -2 + 32, ctdogon, 223 );
setEffAlphaKey( spep_2 -2 + 34, ctdogon, 191 );
setEffAlphaKey( spep_2 -2 + 36, ctdogon, 159 );
setEffAlphaKey( spep_2 -2 + 38, ctdogon, 128 );
setEffAlphaKey( spep_2 -2 + 40, ctdogon, 96 );
setEffAlphaKey( spep_2 -2 + 42, ctdogon, 64 );
setEffAlphaKey( spep_2 -2 + 44, ctdogon, 32 );
setEffAlphaKey( spep_2 -2 + 46, ctdogon, 0 );

playSe( spep_2 -2 +20,  1023);  --地面激突

--次の準備
spep_3=spep_2+86;

------------------------------------------------------
-- 気功波溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_3 + 0, SP_05,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, tame, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_3 + 90, tame, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 90, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 90, tame, 255 );
setEffAlphaKey( spep_3 + 91, tame, 0 );
setEffAlphaKey( spep_3 + 92, tame, 0 );

-- ** 音 ** --
SE2 = playSe( spep_3 + 0,  17);  --かめはめ波
stopSe( spep_3 + 60,  SE2,  10);
playSe( spep_3 + 70,  1036);  --魔閃光
playSe( spep_3 + 80,  1036);  --魔閃光

--背景
entryFadeBg( spep_3, 0, 90, 0, 10, 10, 10, 255);       -- ベース暗め　背景

--白フェード
entryFade( spep_3+82, 4,  6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_4=spep_3+90;

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

--白フェード
entryFade( spep_4 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;

------------------------------------------------------
-- 気功波発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_5 + 0, SP_06,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_5 + 114, beam, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_5 + 114, beam, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam, 0 );
setEffRotateKey( spep_5 + 114, beam, 0 );
setEffAlphaKey( spep_5 + 0, beam, 255 );
setEffAlphaKey( spep_5 + 114, beam, 255 );

--文字エントリー
ctzuo1 = entryEffectLife( spep_5 -3 + 30,  10012, 66, 0x100, -1, 0, -24.8, -270.2 );--ズオッ

setEffMoveKey( spep_5 -3 + 30, ctzuo1, -24.8, -270.2 , 0 );
setEffMoveKey( spep_5 -3 + 32, ctzuo1, -7.5, -287.1 , 0 );
setEffMoveKey( spep_5 -3 + 34, ctzuo1, -22, -272.1 , 0 );
setEffMoveKey( spep_5 -3 + 36, ctzuo1, -22, -272.1 , 0 );
setEffMoveKey( spep_5 -3 + 38, ctzuo1, -1.8, -292.2 , 0 );
setEffMoveKey( spep_5 -3 + 40, ctzuo1, -22.3, -271.8 , 0 );
setEffMoveKey( spep_5 -3 + 42, ctzuo1, -1.6, -292.5 , 0 );
setEffMoveKey( spep_5 -3 + 44, ctzuo1, -1.4, -292.7 , 0 );

f=2.2;

setEffScaleKey( spep_5 -3 + 30, ctzuo1, 0.59+f, 0.59+f );
setEffScaleKey( spep_5 -3 + 32, ctzuo1, 0.8+f, 0.8+f );
setEffScaleKey( spep_5 -3 + 34, ctzuo1, 1+f, 1+f );
setEffScaleKey( spep_5 -3 + 36, ctzuo1, 1+f, 1+f );
setEffScaleKey( spep_5 -3 + 38, ctzuo1, 1.02+f, 1.02+f );
setEffScaleKey( spep_5 -3 + 40, ctzuo1, 1.03+f, 1.03+f );
setEffScaleKey( spep_5 -3 + 42, ctzuo1, 1.05+f, 1.05+f );
setEffScaleKey( spep_5 -3 + 44, ctzuo1, 1.06+f, 1.06+f );

setEffRotateKey( spep_5 -3 + 30, ctzuo1, 30 );
setEffRotateKey( spep_5 -3 + 44, ctzuo1, 30 );

setEffAlphaKey( spep_5 -3 + 30, ctzuo1, 255 );
setEffAlphaKey( spep_5 -3 + 36, ctzuo1, 255 );
setEffAlphaKey( spep_5 -3 + 38, ctzuo1, 191 );
setEffAlphaKey( spep_5 -3 + 40, ctzuo1, 128 );
setEffAlphaKey( spep_5 -3 + 42, ctzuo1, 64 );
setEffAlphaKey( spep_5 -3 + 44, ctzuo1, 0 );

--文字エントリー
ctzuo2 = entryEffectLife( spep_5 -3 + 82,  10012, 14, 0x100, -1, 0, -24.8, -270.2 );

setEffMoveKey( spep_5 -3 + 82, ctzuo2, -24.8, -270.2 , 0 );
setEffMoveKey( spep_5 -3 + 84, ctzuo2, -7.5, -287.1 , 0 );
setEffMoveKey( spep_5 -3 + 86, ctzuo2, -22, -272.1 , 0 );
setEffMoveKey( spep_5 -3 + 88, ctzuo2, -22, -272.1 , 0 );
setEffMoveKey( spep_5 -3 + 90, ctzuo2, -1.8, -292.2 , 0 );
setEffMoveKey( spep_5 -3 + 92, ctzuo2, -22.3, -271.8 , 0 );
setEffMoveKey( spep_5 -3 + 94, ctzuo2, -1.6, -292.5 , 0 );
setEffMoveKey( spep_5 -3 + 96, ctzuo2, -1.4, -292.7 , 0 );

setEffScaleKey( spep_5 -3 + 82, ctzuo2, 0.59+f, 0.59+f );
setEffScaleKey( spep_5 -3 + 84, ctzuo2, 0.8+f, 0.8+f );
setEffScaleKey( spep_5 -3 + 86, ctzuo2, 1+f, 1+f );
setEffScaleKey( spep_5 -3 + 88, ctzuo2, 1+f, 1+f );
setEffScaleKey( spep_5 -3 + 90, ctzuo2, 1.02+f, 1.02+f );
setEffScaleKey( spep_5 -3 + 92, ctzuo2, 1.03+f, 1.03+f );
setEffScaleKey( spep_5 -3 + 94, ctzuo2, 1.05+f, 1.05+f );
setEffScaleKey( spep_5 -3 + 96, ctzuo2, 1.06+f, 1.06+f );

setEffRotateKey( spep_5 -3 + 82, ctzuo2, 25 );
setEffRotateKey( spep_5 -3 + 96, ctzuo2, 25 );

-- ** 音 ** --
--playSe( spep_5 + 0,  1035);  --溜め
playSe( spep_5 + 20,  1021);  --かめはめ波
--playSe( spep_5 + 54,  1035);  --溜め
playSe( spep_5 + 72,  1022);  --魔閃光

--白フェード
entryFade( spep_5+22, 0,  4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_5+76, 0,  4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 114;

------------------------------------------------------
-- 気功波が地上に着弾
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_6 + 0, SP_07,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_6 + 48, hit, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_6 + 48, hit, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit, 0 );
setEffRotateKey( spep_6 + 48, hit, 0 );
setEffAlphaKey( spep_6 + 0, hit, 255 );
setEffAlphaKey( spep_6 + 48, hit, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_6 + 0,  906, 46, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_6 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen2, 1.59, 1.59 );
setEffScaleKey( spep_6 + 46, shuchusen2, 1.59, 1.59 );

setEffRotateKey( spep_6 + 0, shuchusen2, 174.6 );
setEffRotateKey( spep_6 + 46, shuchusen2, 174.6 );

setEffAlphaKey( spep_6 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_6 + 46, shuchusen2, 255 );

-- ** 音 ** --
playSe( spep_6 +38,  1068);  

-- ** 次の準備 ** --
spep_7 = spep_6 + 42;

------------------------------------------------------
-- ギャン
-----------------------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffect( spep_7 + 0, 190014,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_7 + 60, gyan, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_7 + 60, gyan, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, gyan, 0 );
setEffRotateKey( spep_7 + 60, gyan, 0 );
setEffAlphaKey( spep_7 + 0, gyan, 255 );
setEffAlphaKey( spep_7 + 60, gyan, 255 );

ctgyan = entryEffectLife( spep_7 + 0,  10006, 58, 0x100, -1, 0, 7.1, 306.8 );--ギャンッ

setEffMoveKey( spep_7 + 0, ctgyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_7 + 58, ctgyan, 7.1, 306.8 , 0 );

a=2.7;

setEffScaleKey( spep_7 + 0, ctgyan, 0.6 + a, 0.6 + a );
setEffScaleKey( spep_7 + 2, ctgyan, 0.7 + a, 0.7 + a );
setEffScaleKey( spep_7 + 4, ctgyan, 0.8 + a, 0.8 + a );
setEffScaleKey( spep_7 + 6, ctgyan, 0.9 + a, 0.9 + a );
setEffScaleKey( spep_7 + 8, ctgyan, 1 + a, 1 + a );
setEffScaleKey( spep_7 + 10, ctgyan, 1.01 + a, 1.01 + a );
setEffScaleKey( spep_7 + 12, ctgyan, 1.02 + a, 1.02 + a );
setEffScaleKey( spep_7 + 14, ctgyan, 1.02 + a, 1.02 + a );
setEffScaleKey( spep_7 + 16, ctgyan, 1.03 + a, 1.03 + a );
setEffScaleKey( spep_7 + 18, ctgyan, 1.04 + a, 1.04 + a );
setEffScaleKey( spep_7 + 20, ctgyan, 1.05 + a, 1.05 + a );
setEffScaleKey( spep_7 + 22, ctgyan, 1.06 + a, 1.06 + a );
setEffScaleKey( spep_7 + 24, ctgyan, 1.06 + a, 1.06 + a );
setEffScaleKey( spep_7 + 26, ctgyan, 1.07 + a, 1.07 + a );
setEffScaleKey( spep_7 + 28, ctgyan, 1.08 + a, 1.08 + a );
setEffScaleKey( spep_7 + 30, ctgyan, 1.09 + a, 1.09 + a );
setEffScaleKey( spep_7 + 32, ctgyan, 1.1 + a, 1.1 + a );
setEffScaleKey( spep_7 + 34, ctgyan, 1.1 + a, 1.1 + a );
setEffScaleKey( spep_7 + 36, ctgyan, 1.11 + a, 1.11 + a );
setEffScaleKey( spep_7 + 38, ctgyan, 1.12 + a, 1.12 + a );
setEffScaleKey( spep_7 + 40, ctgyan, 1.13 + a, 1.13 + a );
setEffScaleKey( spep_7 + 42, ctgyan, 1.14 + a, 1.14 + a );
setEffScaleKey( spep_7 + 44, ctgyan, 1.14 + a, 1.14 + a );
setEffScaleKey( spep_7 + 46, ctgyan, 1.15 + a, 1.15 + a );
setEffScaleKey( spep_7 + 48, ctgyan, 1.16 + a, 1.16 + a );
setEffScaleKey( spep_7 + 50, ctgyan, 1.17 + a, 1.17 + a );
setEffScaleKey( spep_7 + 52, ctgyan, 1.17 + a, 1.17 + a );
setEffScaleKey( spep_7 + 54, ctgyan, 1.18 + a, 1.18 + a );
setEffScaleKey( spep_7 + 56, ctgyan, 1.19 + a, 1.19 + a );
setEffScaleKey( spep_7 + 58, ctgyan, 1.2 + a, 1.2 + a );

setEffRotateKey( spep_7 + 0, ctgyan, 0 );
setEffRotateKey( spep_7 + 58, ctgyan, 0 );

setEffAlphaKey( spep_7 + 0, ctgyan, 255 );
setEffAlphaKey( spep_7 + 58, ctgyan, 255 );

--白フェード
entryFade( spep_7 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_7, 1023 ); --爆発

--次の準備
spep_8 =spep_7+60;

------------------------------------------------------
-- 遠方で爆発
------------------------------------------------------

-- ** エフェクト等 ** --
hit = entryEffect( spep_8 + 0, SP_08,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_8 + 180, hit, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, hit, 1.02, 1.02 );
setEffScaleKey( spep_8 + 180, hit, 1.02, 1.02 );
setEffRotateKey( spep_8 + 0, hit, 0 );
setEffRotateKey( spep_8 + 180, hit, 0 );
setEffAlphaKey( spep_8 + 0, hit, 255 );
setEffAlphaKey( spep_8 + 180, hit, 255 );

ctgogogo2 = entryEffectLife( spep_8 -3 + 16,  190006, 158, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_8 -3 + 16, ctgogogo2, 0, -30 , 0 );
setEffMoveKey( spep_8 -3 + 174, ctgogogo2, 0, 80 , 0 );

setEffScaleKey( spep_8 -3 + 16, ctgogogo2, 0.78, 0.78 );
setEffScaleKey( spep_8 -3 + 176, ctgogogo2, 1.28, 1.28 );

setEffRotateKey( spep_8 -3 + 16, ctgogogo2, 0 );
setEffRotateKey( spep_8 -3 + 176, ctgogogo2, 0 );

setEffAlphaKey( spep_8 -3 + 16, ctgogogo2, 255 );
setEffAlphaKey( spep_8 -3 + 166, ctgogogo2, 255 );
setEffAlphaKey( spep_8 -3 + 168, ctgogogo2, 204 );
setEffAlphaKey( spep_8 -3 + 170, ctgogogo2, 153 );
setEffAlphaKey( spep_8 -3 + 172, ctgogogo2, 102 );
setEffAlphaKey( spep_8 -3 + 174, ctgogogo2, 51 );
setEffAlphaKey( spep_8 -3 + 176, ctgogogo2, 0 );

-- ** 音 ** --
playSe( spep_8,  1024);

-- ** ダメージ表示 ** --
dealDamage(spep_8 + 10);
endPhase( spep_8 + 176 );

else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 手前突進
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
lush = entryEffect( spep_0 + 0, SP_01,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, lush, 0, 0 , 0 );
setEffMoveKey( spep_0 + 146, lush, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, lush, 1.0, 1.0 );
setEffScaleKey( spep_0 + 146, lush, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, lush, 0 );
setEffRotateKey( spep_0 + 146, lush, 0 );
setEffAlphaKey( spep_0 + 0, lush, 255 );
setEffAlphaKey( spep_0 + 146, lush, 255 );

-- ** 音 ** --
playSe( spep_0 , 1109 );  --ダッシュ
playSe( spep_0+10 , 1109 );  --ダッシュ
playSe( spep_0+20 , 1109 );  --ダッシュ
playSe( spep_0+30 , 1109 );  --ダッシュ

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    
    pauseAll( SP_dodge, 67 );
    
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

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 +30 , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 +30 , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_0 +42, 190006, 72, 0x100, -1, 0, 0, 540);    -- ゴゴゴゴ

setEffMoveKey(  spep_0 +42,  ctgogo,  0,  540);
setEffMoveKey(  spep_0 +114,  ctgogo,  0,  540);

setEffAlphaKey( spep_0 +42, ctgogo, 0 );
setEffAlphaKey( spep_0 + 43, ctgogo, 255 );
setEffAlphaKey( spep_0 + 44, ctgogo, 255 );
setEffAlphaKey( spep_0 + 106, ctgogo, 255 );
setEffAlphaKey( spep_0 + 108, ctgogo, 255 );
setEffAlphaKey( spep_0 + 110, ctgogo, 191 );
setEffAlphaKey( spep_0 + 112, ctgogo, 128 );
setEffAlphaKey( spep_0 + 114, ctgogo, 64 );

setEffRotateKey(  spep_0 +42,  ctgogo,  0);
setEffRotateKey(  spep_0 +114,  ctgogo,  0);

setEffScaleKey(  spep_0 +42,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +104,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +114,  ctgogo, -1.07, 1.07 );

--SE
playSe( spep_0 + 42, 1018 );  --ごごご
--playSe( spep_0 + 124, 1072 );  --ダッシュ
playSe( spep_0 + 130,  1016);  --セルジュニア移動
playSe( spep_0 + 140,  1016);
playSe( spep_0 + 144,  1016);

--次の準備
spep_1=spep_0+146;

------------------------------------------------------
-- ５回攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
attack_f = entryEffect( spep_1 + 0, SP_02,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 224, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 224, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, attack_f, 0 );
setEffRotateKey( spep_1 + 224, attack_f, 0 );
setEffAlphaKey( spep_1 + 0, attack_f, 255 );
setEffAlphaKey( spep_1 + 224, attack_f, 255 );

-- ** エフェクト等 ** --
attack_b = entryEffect( spep_1 + 0, SP_03,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 224, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 224, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, attack_b, 0 );
setEffRotateKey( spep_1 + 224, attack_b, 0 );
setEffAlphaKey( spep_1 + 0, attack_b, 255 );
setEffAlphaKey( spep_1 + 224, attack_b, 255 );

--流線
ryusen1 = entryEffectLife( spep_1  + 0,  914, 18-3, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1  + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 18, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_1  + 0, ryusen1, 2, 1 );
setEffScaleKey( spep_1 -3 + 18, ryusen1, 2, 1 );

setEffRotateKey( spep_1  + 0, ryusen1, 0 );
setEffRotateKey( spep_1 -3 + 18, ryusen1, 0 );

setEffAlphaKey( spep_1  + 0, ryusen1, 101 );
setEffAlphaKey( spep_1 -3 + 18, ryusen1, 101 );

--流線
ryusen2 = entryEffectLife( spep_1 -3 + 36,  914, 12, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 -3 + 36, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 48, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 36, ryusen2, 2, 1 );
setEffScaleKey( spep_1 -3 + 48, ryusen2, 2, 1 );

setEffRotateKey( spep_1 -3 + 36, ryusen2, 0 );
setEffRotateKey( spep_1 -3 + 48, ryusen2, 0 );

setEffAlphaKey( spep_1 -3 + 36, ryusen2, 101 );
setEffAlphaKey( spep_1 -3 + 48, ryusen2, 101 );

--流線
ryusen3 = entryEffectLife( spep_1 -3 + 68,  914, 6, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 68, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 74, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 68, ryusen3, 2, 1 );
setEffScaleKey( spep_1 -3 + 74, ryusen3, 2, 1 );

setEffRotateKey( spep_1 -3 + 68, ryusen3, -86 );
setEffRotateKey( spep_1 -3 + 74, ryusen3, -86 );

setEffAlphaKey( spep_1 -3 + 68, ryusen3, 101 );
setEffAlphaKey( spep_1 -3 + 74, ryusen3, 101 );

--流線
ryusen4 = entryEffectLife( spep_1 -3 + 86,  914, 36,0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 86, ryusen4, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 122, ryusen4, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 86, ryusen4, 2, 1 );
setEffScaleKey( spep_1 -3 + 122, ryusen4, 2, 1 );

setEffRotateKey( spep_1 -3 + 86, ryusen4, -86 );
setEffRotateKey( spep_1 -3 + 122, ryusen4, -86 );

setEffAlphaKey( spep_1 -3 + 86, ryusen4, 101 );
setEffAlphaKey( spep_1 -3 + 122, ryusen4, 101 );

--文字エントリー
ctga1 = entryEffectLife( spep_1 -3 + 22,  10005, 12, 0x100, -1, 0, 100.1, 163.9 );--ガッ

setEffMoveKey( spep_1 -3 + 22, ctga1, 100.1, 163.9 , 0 );
setEffMoveKey( spep_1 -3 + 24, ctga1, 110.1, 194 , 0 );
setEffMoveKey( spep_1 -3 + 26, ctga1, 120.2, 223.9 , 0 );
setEffMoveKey( spep_1 -3 + 28, ctga1, 120.2, 223.9 , 0 );
setEffMoveKey( spep_1 -3 + 30, ctga1, 123.5, 225.8 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctga1, 126.9, 227.7 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctga1, 130.3, 229.6 , 0 );

d=1.2;

setEffScaleKey( spep_1 -3 + 22, ctga1, 0.46 , 0.46  );
setEffScaleKey( spep_1 -3 + 24, ctga1, 0.81 , 0.81  );
setEffScaleKey( spep_1 -3 + 26, ctga1, 1.16 , 1.16  );
setEffScaleKey( spep_1 -3 + 28, ctga1, 1.16 +d, 1.16 +d );
setEffScaleKey( spep_1 -3 + 30, ctga1, 1.18 +d, 1.18 +d );
setEffScaleKey( spep_1 -3 + 32, ctga1, 1.2 +d, 1.2 +d );
setEffScaleKey( spep_1 -3 + 34, ctga1, 1.22 +d, 1.22 +d );

setEffRotateKey( spep_1 -3 + 22, ctga1, 14.7 );
setEffRotateKey( spep_1 -3 + 34, ctga1, 14.7 );

setEffAlphaKey( spep_1 -3 + 22, ctga1, 255 );
setEffAlphaKey( spep_1 -3 + 28, ctga1, 255 );
setEffAlphaKey( spep_1 -3 + 30, ctga1, 170 );
setEffAlphaKey( spep_1 -3 + 32, ctga1, 85 );
setEffAlphaKey( spep_1 -3 + 34, ctga1, 0 );

--文字エントリー
ctdon = entryEffectLife( spep_1 -3 + 78,  10019, 12, 0x100, -1, 0, 73.3, 33.9 );--ドンッ

setEffMoveKey( spep_1 -3 + 78, ctdon, 73.3, 33.9 , 0 );
setEffMoveKey( spep_1 -3 + 80, ctdon, 67.8, 38.5 , 0 );
setEffMoveKey( spep_1 -3 + 82, ctdon, 62.1, 42.9 , 0 );
setEffMoveKey( spep_1 -3 + 90, ctdon, 62.1, 42.9 , 0 );

setEffScaleKey( spep_1 -3 + 78, ctdon, 0.46 , 0.46 );
setEffScaleKey( spep_1 -3 + 80, ctdon, 1.09 , 1.09 );
setEffScaleKey( spep_1 -3 + 82, ctdon, 1.73 , 1.73 );
setEffScaleKey( spep_1 -3 + 84, ctdon, 1.73 , 1.73 );
setEffScaleKey( spep_1 -3 + 86, ctdon, 1.79 , 1.79 );
setEffScaleKey( spep_1 -3 + 88, ctdon, 1.85, 1.85 );
setEffScaleKey( spep_1 -3 + 90, ctdon, 1.91, 1.91 );


setEffRotateKey( spep_1 -3 + 78, ctdon, 10.7 );
setEffRotateKey( spep_1 -3 + 90, ctdon, 10.7 );

setEffAlphaKey( spep_1 -3 + 78, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 84, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 86, ctdon, 170 );
setEffAlphaKey( spep_1 -3 + 88, ctdon, 85 );
setEffAlphaKey( spep_1 -3 + 90, ctdon, 0 );


h=120;

--文字エントリー
ctbikuri = entryEffectLife( spep_1 -3 + 78,  10000, 12, 0x100, -1, 0, 125.1-h, 26 );--!!

setEffMoveKey( spep_1 -3 + 78, ctbikuri, 125.1-h, 26 , 0 );
setEffMoveKey( spep_1 -3 + 80, ctbikuri, 181.5-h-100, 25 , 0 );
setEffMoveKey( spep_1 -3 + 82, ctbikuri, 237.8-h-200, 24.2 , 0 );
setEffMoveKey( spep_1 -3 + 84, ctbikuri, 237.8-h-200, 24.2 , 0 );
setEffMoveKey( spep_1 -3 + 86, ctbikuri, 249.5-h-220, 27.6 , 0 );
setEffMoveKey( spep_1 -3 + 88, ctbikuri, 261.1-h-240, 31 , 0 );
setEffMoveKey( spep_1 -3 + 90, ctbikuri, 272.7-h-250, 34.4 , 0 );

setEffScaleKey( spep_1 -3 + 78, ctbikuri, 0.69, 0.69 );
setEffScaleKey( spep_1 -3 + 80, ctbikuri, 1.65, 1.65 );
setEffScaleKey( spep_1 -3 + 82, ctbikuri, 2.61, 2.61 );
setEffScaleKey( spep_1 -3 + 84, ctbikuri, 2.61, 2.61 );
setEffScaleKey( spep_1 -3 + 86, ctbikuri, 2.93, 2.93 );
setEffScaleKey( spep_1 -3 + 88, ctbikuri, 3.25, 3.25 );
setEffScaleKey( spep_1 -3 + 90, ctbikuri, 3.57, 3.57 );

setEffRotateKey( spep_1 -3 + 78, ctbikuri, -32.5 );
setEffRotateKey( spep_1 -3 + 90, ctbikuri, -32.5 );

setEffAlphaKey( spep_1 -3 + 78, ctbikuri, 255 );
setEffAlphaKey( spep_1 -3 + 84, ctbikuri, 255 );
setEffAlphaKey( spep_1 -3 + 86, ctbikuri, 170 );
setEffAlphaKey( spep_1 -3 + 88, ctbikuri, 85 );
setEffAlphaKey( spep_1 -3 + 90, ctbikuri, 0 );


--文字エントリー
ctga2 = entryEffectLife( spep_1 -3 + 128,  10005, 10, 0x100, -1, 0, -40.9, 221.9 );--ガッ

setEffMoveKey( spep_1 -3 + 128, ctga2, -40.9, 221.9 , 0 );
setEffMoveKey( spep_1 -3 + 130, ctga2, -45.4, 233.8 , 0 );
setEffMoveKey( spep_1 -3 + 132, ctga2, -49.9, 245.8 , 0 );
setEffMoveKey( spep_1 -3 + 134, ctga2, -49.9, 245.8 , 0 );
setEffMoveKey( spep_1 -3 + 136, ctga2, -54.8, 255.8 , 0 );
setEffMoveKey( spep_1 -3 + 138, ctga2, -59.8, 265.8 , 0 );

g=0.5;

setEffScaleKey( spep_1 -3 + 128, ctga2, 0.43, 0.43 );
setEffScaleKey( spep_1 -3 + 130, ctga2, 0.56, 0.56 );
setEffScaleKey( spep_1 -3 + 132, ctga2, 0.68, 0.68 );
setEffScaleKey( spep_1 -3 + 134, ctga2, 0.68+g, 0.68+g );
setEffScaleKey( spep_1 -3 + 136, ctga2, 0.73+g, 0.73+g );
setEffScaleKey( spep_1 -3 + 138, ctga2, 0.77+g, 0.77+g );


setEffRotateKey( spep_1 -3 + 128, ctga2, -14.2 );
setEffRotateKey( spep_1 -3 + 138, ctga2, -14.2 );

setEffAlphaKey( spep_1 -3 + 128, ctga2, 255 );
setEffAlphaKey( spep_1 -3 + 134, ctga2, 255 );
setEffAlphaKey( spep_1 -3 + 136, ctga2, 128 );
setEffAlphaKey( spep_1 -3 + 138, ctga2, 0 );

--文字エントリー
ctga3 = entryEffectLife( spep_1 -3 + 148,  10005, 10, 0x100, -1, 0, 31, 183 );

setEffMoveKey( spep_1 -3 + 148, ctga3, 31, 183 , 0 );
setEffMoveKey( spep_1 -3 + 150, ctga3, 49.2, 201.3 , 0 );
setEffMoveKey( spep_1 -3 + 152, ctga3, 67.4, 219.6 , 0 );
setEffMoveKey( spep_1 -3 + 154, ctga3, 67.4, 219.6 , 0 );
setEffMoveKey( spep_1 -3 + 156, ctga3, 98.7, 238.3 , 0 );
setEffMoveKey( spep_1 -3 + 158, ctga3, 130, 256.9 , 0 );

setEffScaleKey( spep_1 -3 + 148, ctga3, 0.52, 0.52 );
setEffScaleKey( spep_1 -3 + 150, ctga3, 0.61, 0.61 );
setEffScaleKey( spep_1 -3 + 152, ctga3, 0.7, 0.7 );
setEffScaleKey( spep_1 -3 + 154, ctga3, 0.7+g, 0.7+g );
setEffScaleKey( spep_1 -3 + 156, ctga3, 0.75+g, 0.75+g );
setEffScaleKey( spep_1 -3 + 158, ctga3, 0.8+g, 0.8+g );

setEffRotateKey( spep_1 -3 + 148, ctga3, 24.5 );
setEffRotateKey( spep_1 -3 + 150, ctga3, 24.4 );
setEffRotateKey( spep_1 -3 + 152, ctga3, 24.3 );
setEffRotateKey( spep_1 -3 + 154, ctga3, 24.3 );
setEffRotateKey( spep_1 -3 + 156, ctga3, 24.4 );
setEffRotateKey( spep_1 -3 + 158, ctga3, 24.5 );

setEffAlphaKey( spep_1 -3 + 148, ctga3, 255 );
setEffAlphaKey( spep_1 -3 + 154, ctga3, 255 );
setEffAlphaKey( spep_1 -3 + 156, ctga3, 128 );
setEffAlphaKey( spep_1 -3 + 158, ctga3, 0 );

ctbaki = entryEffectLife( spep_1 -3 + 186,  10020, 12, 0x100, -1, 0, -109.1, 158.6 );--バキッ

setEffMoveKey( spep_1 -3 + 186, ctbaki, -109.1, 158.6 , 0 );
setEffMoveKey( spep_1 -3 + 188, ctbaki, -113.9, 159.9 , 0 );
setEffMoveKey( spep_1 -3 + 190, ctbaki, -104.5, 157.4 , 0 );
setEffMoveKey( spep_1 -3 + 192, ctbaki, -110.7, 163.8 , 0 );
setEffMoveKey( spep_1 -3 + 194, ctbaki, -99.6, 156.3 , 0 );
setEffMoveKey( spep_1 -3 + 196, ctbaki, -112.5, 155.9 , 0 );
setEffMoveKey( spep_1 -3 + 198, ctbaki, -113.1, 155.1 , 0 );

setEffScaleKey( spep_1 -3 + 186, ctbaki, 0.75, 0.75 );
setEffScaleKey( spep_1 -3 + 188, ctbaki, 1.11, 1.11 );
setEffScaleKey( spep_1 -3 + 190, ctbaki, 1.47, 1.47 );
setEffScaleKey( spep_1 -3 + 192, ctbaki, 1.47, 1.47 );
setEffScaleKey( spep_1 -3 + 194, ctbaki, 2.04, 2.04 );
setEffScaleKey( spep_1 -3 + 196, ctbaki, 2.62, 2.62 );
setEffScaleKey( spep_1 -3 + 198, ctbaki, 3.19, 3.19 );

setEffRotateKey( spep_1 -3 + 186, ctbaki, 5.7 );
setEffRotateKey( spep_1 -3 + 198, ctbaki, 5.7 );

setEffAlphaKey( spep_1 -3 + 186, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 192, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 194, ctbaki, 170 );
setEffAlphaKey( spep_1 -3 + 196, ctbaki, 85 );
setEffAlphaKey( spep_1 -3 + 198, ctbaki, 0 );



--敵の動き
setDisp( spep_1  + 0, 1, 1 );
setDisp( spep_1  + 208, 1, 0 );

changeAnime( spep_1  + 0, 1, 100 );
changeAnime( spep_1 -3 + 6, 1, 104 );
changeAnime( spep_1 -3 + 22, 1, 106 );
changeAnime( spep_1 -3 + 70, 1, 104 );
changeAnime( spep_1 -3 + 74, 1, 108 );
changeAnime( spep_1 -3 + 126, 1, 106 );
changeAnime( spep_1 -3 + 148, 1, 108 );
changeAnime( spep_1 -3 + 184, 1, 107 );

a=120;
b=50;

setMoveKey( spep_1  + 0, 1, 300+b, -123.2+a , 0 );
--setMoveKey( spep_1 -3 + 2, 1, 151.4, -123.2 , 0 );
setMoveKey( spep_1 -3 + 5, 1, 117+b, -123.2+a , 0 );
setMoveKey( spep_1 -3 + 6, 1, 114.7+b, -123.2+a , 0 );
setMoveKey( spep_1 -3 + 8, 1, 105.4+b, -123.2+a , 0 );
setMoveKey( spep_1 -3 + 10, 1, 96.1+b, -123.2+a , 0 );
setMoveKey( spep_1 -3 + 12, 1, 86.7+b, -123.2+a , 0 );
setMoveKey( spep_1 -3 + 14, 1, 77.4+b, -123.2+a , 0 );
setMoveKey( spep_1 -3 + 16, 1, 68+b, -123.2+a , 0 );
setMoveKey( spep_1 -3 + 18, 1, 58.7+b, -123.2+a , 0 );
setMoveKey( spep_1 -3 + 21, 1, 49.3+b, -123.2+a , 0 );
setMoveKey( spep_1 -3 + 22, 1, 53.5+b -20, -103.5+a , 0 );
setMoveKey( spep_1 -3 + 32, 1, 53.5+b -20, -103.5+a , 0 );
setMoveKey( spep_1 -3 + 34, 1, 100.5+b -20, -103.5+a , 0 );
setMoveKey( spep_1 -3 + 38, 1, 143.6+b, -103.5+a , 0 );
setMoveKey( spep_1 -3 + 40, 1, 149+b, -103.5+a , 0 );
setMoveKey( spep_1 -3 + 42, 1, 149.8+b, -103.5+a , 0 );
setMoveKey( spep_1 -3 + 44, 1, 141.2+b, -102.9+a , 0 );
setMoveKey( spep_1 -3 + 46, 1, 132.7+b, -102.3+a , 0 );
setMoveKey( spep_1 -3 + 48, 1, 124.1+b, -101.7+a , 0 );
setMoveKey( spep_1 -3 + 50, 1, 115.5+b, -101.3+a , 0 );
setMoveKey( spep_1 -3 + 52, 1, 106.9+b, -100.9+a , 0 );
setMoveKey( spep_1 -3 + 54, 1, 98.2+b, -100.5+a , 0 );
setMoveKey( spep_1 -3 + 56, 1, 89.6+b, -100.2+a , 0 );
setMoveKey( spep_1 -3 + 58, 1, 81+b, -100+a , 0 );
setMoveKey( spep_1 -3 + 60, 1, 72.3+b, -99.8+a , 0 );
setMoveKey( spep_1 -3 + 62, 1, 63.7+b, -99.7+a , 0 );
setMoveKey( spep_1 -3 + 64, 1, 55+b, -99.7+a , 0 );
setMoveKey( spep_1 -3 + 66, 1, 46.3+b, -99.7+a , 0 );
setMoveKey( spep_1 -3 + 69, 1, 37.7+b, -99.8+a , 0 );
setMoveKey( spep_1 -3 + 70, 1, 27.6+b, -95.9+a , 0 );
setMoveKey( spep_1 -3 + 73, 1, 27.6+b, -95.9+a , 0 );
setMoveKey( spep_1 -3 + 74, 1, 30+b, -86.9+a , 0 );
setMoveKey( spep_1 -3 + 82, 1, 30+b, -86.9+a , 0 );
setMoveKey( spep_1 -3 + 84, 1, 35.6+b, 31.8+a , 0 );
setMoveKey( spep_1 -3 + 86, 1, 39.4+b, 97.1+a , 0 );
setMoveKey( spep_1 -3 + 88, 1, 41.6+b, 130.3+a , 0 );
setMoveKey( spep_1 -3 + 90, 1, 42.7+b, 145.1+a , 0 );
setMoveKey( spep_1 -3 + 92, 1, 43.1+b, 150.6+a , 0 );
setMoveKey( spep_1 -3 + 94, 1, 43.2+b, 152.1+a , 0 );
setMoveKey( spep_1 -3 + 96, 1, 43.2+b, 152.4+a , 0 );
setMoveKey( spep_1 -3 + 98, 1, 43.2+b, 152.4+a , 0 );
setMoveKey( spep_1 -3 + 100, 1, 43.1+b, 151.2+a , 0 );
setMoveKey( spep_1 -3 + 102, 1, 42.7+b, 147.6+a , 0 );
setMoveKey( spep_1 -3 + 104, 1, 42.1+b, 141.6+a , 0 );
setMoveKey( spep_1 -3 + 106, 1, 41.3+b, 133.3+a , 0 );
setMoveKey( spep_1 -3 + 108, 1, 40.2+b, 122.6+a , 0 );
setMoveKey( spep_1 -3 + 110, 1, 38.8+b, 109.4+a , 0 );
setMoveKey( spep_1 -3 + 112, 1, 37.3+b, 93.9+a , 0 );
setMoveKey( spep_1 -3 + 114, 1, 35.5+b, 76+a , 0 );
setMoveKey( spep_1 -3 + 116, 1, 33.4+b, 55.8+a , 0 );
setMoveKey( spep_1 -3 + 118, 1, 31.1+b, 33.1+a , 0 );
setMoveKey( spep_1 -3 + 120, 1, 28.6+b, 8.1+a , 0 );
setMoveKey( spep_1 -3 + 122, 1, 25.8+b, -19.3+a , 0 );
setMoveKey( spep_1 -3 + 125, 1, 22.8+b, -49.1+a , 0 );
setMoveKey( spep_1 -1 + 126, 1, 19.5, -81.3+a +75 , 0 );
setMoveKey( spep_1 -1 + 128, 1, 10.9, -44.3+a +75, 0 );
setMoveKey( spep_1 -1 + 130, 1, 10.9, -44.3+a +75 , 0 );
setMoveKey( spep_1 -1 + 132, 1, 5.4, -38.8+a +75 , 0 );
setMoveKey( spep_1 -1 + 134, 1, 5.4, -49.7+a +75 , 0 );
setMoveKey( spep_1 -1 + 136, 1, 21.8, -38.8+a +75 , 0 );
setMoveKey( spep_1 -1 + 138, 1, -6.7, -42+a +75 , 0 );
setMoveKey( spep_1 -1 + 140, 1, -12.6, -41.5+a +75 , 0 );
setMoveKey( spep_1 -1 + 142, 1, -18.5, -41.1+a +75 , 0 );
setMoveKey( spep_1 -1 + 144, 1, -24.4, -40.8+a +75 , 0 );
setMoveKey( spep_1 -1 + 147, 1, -30.4, -40.7+a +75 , 0 );
setMoveKey( spep_1 -1 + 148, 1, -24.7, -41.7+a +75 , 0 );
setMoveKey( spep_1 -3 + 150, 1, -24.7, -41.7+a +75 , 0 );
setMoveKey( spep_1 -3 + 152, 1, -19.3, -36.3+a +75 , 0 );
setMoveKey( spep_1 -3 + 154, 1, -30.2, -36.3+a +75 , 0 );
setMoveKey( spep_1 -3 + 156, 1, -24.7, -47.2+a +75 , 0 );
setMoveKey( spep_1 -3 + 158, 1, -15.6, -23.4+a +75 , 0 );
setMoveKey( spep_1 -3 + 160, 1, -13.5, -19.5+a +75 , 0 );
setMoveKey( spep_1 -3 + 162, 1, -12.2, -16.8+a +75 , 0 );
setMoveKey( spep_1 -3 + 164, 1, -11.2, -14.9+a +75 , 0 );
setMoveKey( spep_1 -3 + 166, 1, -10.6, -13.5+a +75 , 0 );
setMoveKey( spep_1 -3 + 168, 1, -10.1, -12.5+a +75 , 0 );
setMoveKey( spep_1 -3 + 170, 1, -9.7, -11.8+a +75 , 0 );
setMoveKey( spep_1 -3 + 172, 1, -9.5, -11.3+a +75 , 0 );
setMoveKey( spep_1 -3 + 174, 1, -9.3, -11+a +75 , 0 );
setMoveKey( spep_1 -3 + 176, 1, -9.2, -10.7+a +75 , 0 );
setMoveKey( spep_1 -3 + 178, 1, -9.1, -10.6+a +75 , 0 );
setMoveKey( spep_1 -3 + 180, 1, -9.1, -10.5+a +75 , 0 );
setMoveKey( spep_1 -3 + 183, 1, -9.1, -10.3+a +75 , 0 );
setMoveKey( spep_1 -3 + 184, 1, -22.5, -36+a+75 , 0 );
setMoveKey( spep_1 -3 + 192, 1, -22.5, -36.1+a+75 , 0 );
--setMoveKey( spep_1 -3 + 194, 1, -18.9, -42.8+a+75 , 0 );
--setMoveKey( spep_1 -3 + 196, 1, -8.2, -62.8 +75, 0 );
--setMoveKey( spep_1 -3 + 198, 1, 9.7, -96 +75, 0 );
--setMoveKey( spep_1 -3 + 200, 1, 34.5, -142 +75, 0 );
--setMoveKey( spep_1 -3 + 202, 1, 66.1, -200.5 +75, 0 );
--setMoveKey( spep_1 -3 + 204, 1, 104.2, -270.9 +75, 0 );
--setMoveKey( spep_1 -3 + 206, 1, 148.4, -352.6 +75, 0 );
setMoveKey( spep_1  + 208, 1, 198.2, -445.1  , 0 );

c=0.6;
e=0.4;

setScaleKey( spep_1  + 0, 1, 0.74+c, 0.74+c );
setScaleKey( spep_1 -3 + 183, 1, 0.74+c, 0.74+c );
setScaleKey( spep_1 -3 + 184, 1, 0.31+e, 0.31+e );
setScaleKey( spep_1 -3 + 192, 1, 0.31+e, 0.31+e );
setScaleKey( spep_1 -3 + 194, 1, 0.32+e, 0.32+e );
setScaleKey( spep_1 -3 + 196, 1, 0.36+e, 0.36+e );
setScaleKey( spep_1 -3 + 198, 1, 0.44+e, 0.44+e );
setScaleKey( spep_1 -3 + 200, 1, 0.54+e, 0.54+e );
setScaleKey( spep_1 -3 + 202, 1, 0.66+e, 0.66+e );
setScaleKey( spep_1 -3 + 204, 1, 0.82+e, 0.82+e );
setScaleKey( spep_1 -3 + 206, 1, 1.01+e, 1.01+e );
setScaleKey( spep_1  + 208, 1, 1.22+e, 1.22+e );

setRotateKey( spep_1  + 0, 1, 0 );
setRotateKey( spep_1 -3 + 21, 1, 0 );
setRotateKey( spep_1 -3 + 22, 1, -29.7 );
setRotateKey( spep_1 -3 + 42, 1, -29.7 );
setRotateKey( spep_1 -3 + 44, 1, -31.5 );
setRotateKey( spep_1 -3 + 46, 1, -33.2 );
setRotateKey( spep_1 -3 + 48, 1, -35 );
setRotateKey( spep_1 -3 + 50, 1, -36.7 );
setRotateKey( spep_1 -3 + 52, 1, -38.5 );
setRotateKey( spep_1 -3 + 54, 1, -40.3 );
setRotateKey( spep_1 -3 + 56, 1, -42 );
setRotateKey( spep_1 -3 + 58, 1, -43.8 );
setRotateKey( spep_1 -3 + 60, 1, -45.6 );
setRotateKey( spep_1 -3 + 62, 1, -47.3 );
setRotateKey( spep_1 -3 + 64, 1, -49.1 );
setRotateKey( spep_1 -3 + 66, 1, -50.8 );
setRotateKey( spep_1 -3 + 69, 1, -52.6 );
setRotateKey( spep_1 -3 + 70, 1, 0 );
setRotateKey( spep_1 -3 + 73, 1, 0 );
setRotateKey( spep_1 -3 + 74, 1, -55.4 );
setRotateKey( spep_1 -3 + 82, 1, -55.4 );
setRotateKey( spep_1 -3 + 84, 1, -69.9 );
setRotateKey( spep_1 -3 + 86, 1, -78.1 );
setRotateKey( spep_1 -3 + 88, 1, -82.3 );
setRotateKey( spep_1 -3 + 90, 1, -84.2 );
setRotateKey( spep_1 -3 + 92, 1, -84.9 );
setRotateKey( spep_1 -3 + 94, 1, -85.1 );
setRotateKey( spep_1 -3 + 104, 1, -85.1 );
setRotateKey( spep_1 -3 + 106, 1, -85.2 );
setRotateKey( spep_1 -3 + 110, 1, -85.2 );
setRotateKey( spep_1 -3 + 112, 1, -85.3 );
setRotateKey( spep_1 -3 + 114, 1, -85.3 );
setRotateKey( spep_1 -3 + 116, 1, -85.4 );
setRotateKey( spep_1 -3 + 118, 1, -85.5 );
setRotateKey( spep_1 -3 + 120, 1, -85.5 );
setRotateKey( spep_1 -3 + 122, 1, -85.6 );
setRotateKey( spep_1 -3 + 125, 1, -85.7 );
setRotateKey( spep_1 -3 + 126, 1, -85.8 );
setRotateKey( spep_1 -3 + 127, 1, -85.8 );
setRotateKey( spep_1 -3 + 128, 1, -30.6 );
setRotateKey( spep_1 -3 + 136, 1, -30.6 );
setRotateKey( spep_1 -3 + 138, 1, -37.8 );
setRotateKey( spep_1 -3 + 140, 1, -40.2 );
setRotateKey( spep_1 -3 + 142, 1, -42.5 );
setRotateKey( spep_1 -3 + 144, 1, -44.9 );
setRotateKey( spep_1 -3 + 147, 1, -47.3 );
setRotateKey( spep_1 -3 + 148, 1, -39.4 );
setRotateKey( spep_1 -3 + 183, 1, -39.4 );
setRotateKey( spep_1 -3 + 184, 1, 26.8 );
setRotateKey( spep_1 -3 + 192, 1, 26.8 );
setRotateKey( spep_1 -3 + 194, 1, 26.6 );
setRotateKey( spep_1 -3 + 196, 1, 25.9 );
setRotateKey( spep_1 -3 + 198, 1, 24.7 );
setRotateKey( spep_1 -3 + 200, 1, 23.2 );
setRotateKey( spep_1 -3 + 202, 1, 21.1 );
setRotateKey( spep_1 -3 + 204, 1, 18.6 );
setRotateKey( spep_1 -3 + 206, 1, 15.6 );
setRotateKey( spep_1  + 208, 1, 12.2 );

--白フェード
entryFade( spep_1 + 72, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 180, 0, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_1 + 22 -3,  1000);
SE1 = playSe( spep_1 + 58 -3,  63);
stopSe( spep_1 + 78,  SE1,  0);
playSe( spep_1 -3 + 78,  1009);
playSe( spep_1 -3 + 128,  1010);
playSe( spep_1 -3 + 148,  1001);
playSe( spep_1 -3 + 152,  43);  --瞬間移動
playSe( spep_1 -3 + 186,  1011);

--次の準備
spep_2=spep_1+224;

------------------------------------------------------
-- 敵は地面に激突
------------------------------------------------------

-- ** エフェクト等 ** --
clash = entryEffect( spep_2 + 0, SP_04,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, clash, 0, 0 , 0 );
setEffMoveKey( spep_2 + 86, clash, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, clash, 1.0, 1.0 );
setEffScaleKey( spep_2 + 86, clash, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, clash, 0 );
setEffRotateKey( spep_2 + 86, clash, 0 );
setEffAlphaKey( spep_2 + 0, clash, 255 );
setEffAlphaKey( spep_2 + 86, clash, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 +  19, 1, 0 );
changeAnime( spep_2 + 0, 1, 5 );

setMoveKey( spep_2 + 0, 1, -14.5, -190.3 , 0 );
setMoveKey( spep_2 + 2, 1, -12.2, -154.5 , 0 );
setMoveKey( spep_2 + 4, 1, -10.2, -122.5 , 0 );
setMoveKey( spep_2 + 6, 1, -8.4, -94.2 , 0 );
setMoveKey( spep_2 + 8, 1, -6.8, -69.6 , 0 );
setMoveKey( spep_2 + 10, 1, -5.4, -48.9 , 0 );
setMoveKey( spep_2 + 12, 1, -4.4, -31.9 , 0 );
setMoveKey( spep_2 + 14, 1, -3.5, -18.6 , 0 );
setMoveKey( spep_2 + 16, 1, -2.9, -9.2 , 0 );
setMoveKey( spep_2 + 18, 1, -2.5, -3.5 , 0 );
setMoveKey( spep_2 + 20, 1, -2.4, -1.6 , 0 );

setScaleKey( spep_2 + 0, 1, 3.73, 3.73 );
setScaleKey( spep_2 + 2, 1, 3.07, 3.07 );
setScaleKey( spep_2 + 4, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 6, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 8, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 10, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 12, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 14, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 16, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 18, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 20, 1, 0.27, 0.27 );

setRotateKey( spep_2 + 0, 1, -25 );
setRotateKey( spep_2 + 2, 1, -20.2 );
setRotateKey( spep_2 + 4, 1, -16 );
setRotateKey( spep_2 + 6, 1, -12.2 );
setRotateKey( spep_2 + 8, 1, -9 );
setRotateKey( spep_2 + 10, 1, -6.2 );
setRotateKey( spep_2 + 12, 1, -4 );
setRotateKey( spep_2 + 14, 1, -2.3 );
setRotateKey( spep_2 + 16, 1, -1 );
setRotateKey( spep_2 + 18, 1, -0.2 );
setRotateKey( spep_2 + 20, 1, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_2 + 0,  906, 28, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 +28, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen1, 1.34, 1.21 );
setEffScaleKey( spep_2 + 28, shuchusen1, 1.34, 1.21 );

setEffRotateKey( spep_2 + 0, shuchusen1, 180 );
setEffRotateKey( spep_2 + 28, shuchusen1, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 28, shuchusen1, 255 );

--文字エントリー
ctdogon = entryEffectLife( spep_2 -2 + 20,  10018, 26, 0x100, -1, 0, -6.9, 114.9 );--ドゴォンッ

setEffMoveKey( spep_2 -2 + 20, ctdogon, -6.9, 114.9 , 0 );
setEffMoveKey( spep_2 -2 + 22, ctdogon, -11.7, 139.4 , 0 );
setEffMoveKey( spep_2 -2 + 24, ctdogon, -3.2, 158.6 , 0 );
setEffMoveKey( spep_2 -2 + 26, ctdogon, -8, 187.8 , 0 );
setEffMoveKey( spep_2 -2 + 28, ctdogon, -2.3, 203.2 , 0 );
setEffMoveKey( spep_2 -2 + 30, ctdogon, -2.3, 203.2 , 0 );
setEffMoveKey( spep_2 -2 + 32, ctdogon, -8.1, 216 , 0 );
setEffMoveKey( spep_2 -2 + 34, ctdogon, 0.6, 212.3 , 0 );
setEffMoveKey( spep_2 -2 + 36, ctdogon, -9.7, 218.7 , 0 );
setEffMoveKey( spep_2 -2 + 38, ctdogon, -2.8, 229.3 , 0 );
setEffMoveKey( spep_2 -2 + 40, ctdogon, -4.9, 223.1 , 0 );
setEffMoveKey( spep_2 -2 + 42, ctdogon, -5.9, 241.3 , 0 );
setEffMoveKey( spep_2 -2 + 44, ctdogon, -2.9, 236.5 , 0 );
setEffMoveKey( spep_2 -2 + 46, ctdogon, -2.7, 241.4 , 0 );

setEffScaleKey( spep_2 -2 + 20, ctdogon, 1.3, 1.3 );
setEffScaleKey( spep_2 -2 + 22, ctdogon, 1.49, 1.49 );
setEffScaleKey( spep_2 -2 + 24, ctdogon, 1.68, 1.68 );
setEffScaleKey( spep_2 -2 + 26, ctdogon, 1.88, 1.88 );
setEffScaleKey( spep_2 -2 + 28, ctdogon, 2.07, 2.07 );
setEffScaleKey( spep_2 -2 + 30, ctdogon, 2.07, 2.07 );
setEffScaleKey( spep_2 -2 + 32, ctdogon, 2.15, 2.15 );
setEffScaleKey( spep_2 -2 + 34, ctdogon, 2.23, 2.23 );
setEffScaleKey( spep_2 -2 + 36, ctdogon, 2.31, 2.31 );
setEffScaleKey( spep_2 -2 + 38, ctdogon, 2.39, 2.39 );
setEffScaleKey( spep_2 -2 + 40, ctdogon, 2.47, 2.47 );
setEffScaleKey( spep_2 -2 + 42, ctdogon, 2.54, 2.54 );
setEffScaleKey( spep_2 -2 + 44, ctdogon, 2.62, 2.62 );
setEffScaleKey( spep_2 -2 + 46, ctdogon, 2.7, 2.7 );

setEffRotateKey( spep_2 -2 + 20, ctdogon, -14.8 );
setEffRotateKey( spep_2 -2 + 46, ctdogon, -14.8 );

setEffAlphaKey( spep_2 -2 + 20, ctdogon, 255 );
setEffAlphaKey( spep_2 -2 + 30, ctdogon, 255 );
setEffAlphaKey( spep_2 -2 + 32, ctdogon, 223 );
setEffAlphaKey( spep_2 -2 + 34, ctdogon, 191 );
setEffAlphaKey( spep_2 -2 + 36, ctdogon, 159 );
setEffAlphaKey( spep_2 -2 + 38, ctdogon, 128 );
setEffAlphaKey( spep_2 -2 + 40, ctdogon, 96 );
setEffAlphaKey( spep_2 -2 + 42, ctdogon, 64 );
setEffAlphaKey( spep_2 -2 + 44, ctdogon, 32 );
setEffAlphaKey( spep_2 -2 + 46, ctdogon, 0 );

playSe( spep_2 -2 +20,  1023);  --地面激突

--次の準備
spep_3=spep_2+86;

------------------------------------------------------
-- 気功波溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_3 + 0, SP_05,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, tame, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_3 + 90, tame, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 90, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 90, tame, 255 );
setEffAlphaKey( spep_3 + 91, tame, 0 );
setEffAlphaKey( spep_3 + 92, tame, 0 );

--背景
entryFadeBg( spep_3, 0, 90, 0, 10, 10, 10, 255);       -- ベース暗め　背景

--白フェード
entryFade( spep_3+82, 4,  6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
SE2 = playSe( spep_3 + 0,  17);  --かめはめ波
stopSe( spep_3 + 60,  SE2,  10);
playSe( spep_3 + 70,  1036);  --魔閃光
playSe( spep_3 + 80,  1036);  --魔閃光

--次の準備
spep_4=spep_3+90;

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

--白フェード
entryFade( spep_4 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;

------------------------------------------------------
-- 気功波発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_5 + 0, SP_06,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_5 + 114, beam, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, beam, -1.0, 1.0 );
setEffScaleKey( spep_5 + 114, beam, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam, 0 );
setEffRotateKey( spep_5 + 114, beam, 0 );
setEffAlphaKey( spep_5 + 0, beam, 255 );
setEffAlphaKey( spep_5 + 114, beam, 255 );

--文字エントリー
ctzuo1 = entryEffectLife( spep_5 -3 + 30,  10012, 66, 0x100, -1, 0, -24.8, -270.2 );--ズオッ

setEffMoveKey( spep_5 -3 + 30, ctzuo1, -24.8, -270.2 , 0 );
setEffMoveKey( spep_5 -3 + 32, ctzuo1, -7.5, -287.1 , 0 );
setEffMoveKey( spep_5 -3 + 34, ctzuo1, -22, -272.1 , 0 );
setEffMoveKey( spep_5 -3 + 36, ctzuo1, -22, -272.1 , 0 );
setEffMoveKey( spep_5 -3 + 38, ctzuo1, -1.8, -292.2 , 0 );
setEffMoveKey( spep_5 -3 + 40, ctzuo1, -22.3, -271.8 , 0 );
setEffMoveKey( spep_5 -3 + 42, ctzuo1, -1.6, -292.5 , 0 );
setEffMoveKey( spep_5 -3 + 44, ctzuo1, -1.4, -292.7 , 0 );

f=2.2;

setEffScaleKey( spep_5 -3 + 30, ctzuo1, 0.59+f, 0.59+f );
setEffScaleKey( spep_5 -3 + 32, ctzuo1, 0.8+f, 0.8+f );
setEffScaleKey( spep_5 -3 + 34, ctzuo1, 1+f, 1+f );
setEffScaleKey( spep_5 -3 + 36, ctzuo1, 1+f, 1+f );
setEffScaleKey( spep_5 -3 + 38, ctzuo1, 1.02+f, 1.02+f );
setEffScaleKey( spep_5 -3 + 40, ctzuo1, 1.03+f, 1.03+f );
setEffScaleKey( spep_5 -3 + 42, ctzuo1, 1.05+f, 1.05+f );
setEffScaleKey( spep_5 -3 + 44, ctzuo1, 1.06+f, 1.06+f );

setEffRotateKey( spep_5 -3 + 30, ctzuo1, 30 );
setEffRotateKey( spep_5 -3 + 44, ctzuo1, 30 );

setEffAlphaKey( spep_5 -3 + 30, ctzuo1, 255 );
setEffAlphaKey( spep_5 -3 + 36, ctzuo1, 255 );
setEffAlphaKey( spep_5 -3 + 38, ctzuo1, 191 );
setEffAlphaKey( spep_5 -3 + 40, ctzuo1, 128 );
setEffAlphaKey( spep_5 -3 + 42, ctzuo1, 64 );
setEffAlphaKey( spep_5 -3 + 44, ctzuo1, 0 );

--文字エントリー
ctzuo2 = entryEffectLife( spep_5 -3 + 82,  10012, 14, 0x100, -1, 0, -24.8, -270.2 );

setEffMoveKey( spep_5 -3 + 82, ctzuo2, -24.8, -270.2 , 0 );
setEffMoveKey( spep_5 -3 + 84, ctzuo2, -7.5, -287.1 , 0 );
setEffMoveKey( spep_5 -3 + 86, ctzuo2, -22, -272.1 , 0 );
setEffMoveKey( spep_5 -3 + 88, ctzuo2, -22, -272.1 , 0 );
setEffMoveKey( spep_5 -3 + 90, ctzuo2, -1.8, -292.2 , 0 );
setEffMoveKey( spep_5 -3 + 92, ctzuo2, -22.3, -271.8 , 0 );
setEffMoveKey( spep_5 -3 + 94, ctzuo2, -1.6, -292.5 , 0 );
setEffMoveKey( spep_5 -3 + 96, ctzuo2, -1.4, -292.7 , 0 );

setEffScaleKey( spep_5 -3 + 82, ctzuo2, 0.59+f, 0.59+f );
setEffScaleKey( spep_5 -3 + 84, ctzuo2, 0.8+f, 0.8+f );
setEffScaleKey( spep_5 -3 + 86, ctzuo2, 1+f, 1+f );
setEffScaleKey( spep_5 -3 + 88, ctzuo2, 1+f, 1+f );
setEffScaleKey( spep_5 -3 + 90, ctzuo2, 1.02+f, 1.02+f );
setEffScaleKey( spep_5 -3 + 92, ctzuo2, 1.03+f, 1.03+f );
setEffScaleKey( spep_5 -3 + 94, ctzuo2, 1.05+f, 1.05+f );
setEffScaleKey( spep_5 -3 + 96, ctzuo2, 1.06+f, 1.06+f );

setEffRotateKey( spep_5 -3 + 82, ctzuo2, 25 );
setEffRotateKey( spep_5 -3 + 96, ctzuo2, 25 );

--白フェード
entryFade( spep_5+22, 0,  4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_5+76, 0,  4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
--playSe( spep_5 + 0,  1035);  --溜め
playSe( spep_5 + 20,  1021);  --かめはめ波
--playSe( spep_5 + 54,  1035);  --溜め
playSe( spep_5 + 72,  1022);  --魔閃光

-- ** 次の準備 ** --
spep_6 = spep_5 + 114;

------------------------------------------------------
-- 気功波が地上に着弾
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_6 + 0, SP_07,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_6 + 48, hit, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, hit, -1.0, 1.0 );
setEffScaleKey( spep_6 + 48, hit, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit, 0 );
setEffRotateKey( spep_6 + 48, hit, 0 );
setEffAlphaKey( spep_6 + 0, hit, 255 );
setEffAlphaKey( spep_6 + 48, hit, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_6 + 0,  906, 46, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_6 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen2, 1.59, 1.59 );
setEffScaleKey( spep_6 + 46, shuchusen2, 1.59, 1.59 );

setEffRotateKey( spep_6 + 0, shuchusen2, 174.6 );
setEffRotateKey( spep_6 + 46, shuchusen2, 174.6 );

setEffAlphaKey( spep_6 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_6 + 46, shuchusen2, 255 );

-- ** 音 ** --
playSe( spep_6 +38,  1068);  

-- ** 次の準備 ** --
spep_7 = spep_6 + 42;

------------------------------------------------------
-- ギャン
-----------------------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffect( spep_7 + 0, 190014,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_7 + 60, gyan, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_7 + 60, gyan, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, gyan, 0 );
setEffRotateKey( spep_7 + 60, gyan, 0 );
setEffAlphaKey( spep_7 + 0, gyan, 255 );
setEffAlphaKey( spep_7 + 60, gyan, 255 );

ctgyan = entryEffectLife( spep_7 + 0,  10006, 58, 0x100, -1, 0, 7.1, 306.8 );--ギャンッ

setEffMoveKey( spep_7 + 0, ctgyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_7 + 58, ctgyan, 7.1, 306.8 , 0 );

a=2.7;

setEffScaleKey( spep_7 + 0, ctgyan, 0.6 + a, 0.6 + a );
setEffScaleKey( spep_7 + 2, ctgyan, 0.7 + a, 0.7 + a );
setEffScaleKey( spep_7 + 4, ctgyan, 0.8 + a, 0.8 + a );
setEffScaleKey( spep_7 + 6, ctgyan, 0.9 + a, 0.9 + a );
setEffScaleKey( spep_7 + 8, ctgyan, 1 + a, 1 + a );
setEffScaleKey( spep_7 + 10, ctgyan, 1.01 + a, 1.01 + a );
setEffScaleKey( spep_7 + 12, ctgyan, 1.02 + a, 1.02 + a );
setEffScaleKey( spep_7 + 14, ctgyan, 1.02 + a, 1.02 + a );
setEffScaleKey( spep_7 + 16, ctgyan, 1.03 + a, 1.03 + a );
setEffScaleKey( spep_7 + 18, ctgyan, 1.04 + a, 1.04 + a );
setEffScaleKey( spep_7 + 20, ctgyan, 1.05 + a, 1.05 + a );
setEffScaleKey( spep_7 + 22, ctgyan, 1.06 + a, 1.06 + a );
setEffScaleKey( spep_7 + 24, ctgyan, 1.06 + a, 1.06 + a );
setEffScaleKey( spep_7 + 26, ctgyan, 1.07 + a, 1.07 + a );
setEffScaleKey( spep_7 + 28, ctgyan, 1.08 + a, 1.08 + a );
setEffScaleKey( spep_7 + 30, ctgyan, 1.09 + a, 1.09 + a );
setEffScaleKey( spep_7 + 32, ctgyan, 1.1 + a, 1.1 + a );
setEffScaleKey( spep_7 + 34, ctgyan, 1.1 + a, 1.1 + a );
setEffScaleKey( spep_7 + 36, ctgyan, 1.11 + a, 1.11 + a );
setEffScaleKey( spep_7 + 38, ctgyan, 1.12 + a, 1.12 + a );
setEffScaleKey( spep_7 + 40, ctgyan, 1.13 + a, 1.13 + a );
setEffScaleKey( spep_7 + 42, ctgyan, 1.14 + a, 1.14 + a );
setEffScaleKey( spep_7 + 44, ctgyan, 1.14 + a, 1.14 + a );
setEffScaleKey( spep_7 + 46, ctgyan, 1.15 + a, 1.15 + a );
setEffScaleKey( spep_7 + 48, ctgyan, 1.16 + a, 1.16 + a );
setEffScaleKey( spep_7 + 50, ctgyan, 1.17 + a, 1.17 + a );
setEffScaleKey( spep_7 + 52, ctgyan, 1.17 + a, 1.17 + a );
setEffScaleKey( spep_7 + 54, ctgyan, 1.18 + a, 1.18 + a );
setEffScaleKey( spep_7 + 56, ctgyan, 1.19 + a, 1.19 + a );
setEffScaleKey( spep_7 + 58, ctgyan, 1.2 + a, 1.2 + a );

setEffRotateKey( spep_7 + 0, ctgyan, 0 );
setEffRotateKey( spep_7 + 58, ctgyan, 0 );

setEffAlphaKey( spep_7 + 0, ctgyan, 255 );
setEffAlphaKey( spep_7 + 58, ctgyan, 255 );

--白フェード
entryFade( spep_7 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_7, 1023 ); --爆発

--次の準備
spep_8 =spep_7+60;

------------------------------------------------------
-- 遠方で爆発
------------------------------------------------------

-- ** エフェクト等 ** --
hit = entryEffect( spep_8 + 0, SP_08,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_8 + 180, hit, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, hit, -1.02, 1.02 );
setEffScaleKey( spep_8 + 180, hit, -1.02, 1.02 );
setEffRotateKey( spep_8 + 0, hit, 0 );
setEffRotateKey( spep_8 + 180, hit, 0 );
setEffAlphaKey( spep_8 + 0, hit, 255 );
setEffAlphaKey( spep_8 + 180, hit, 255 );

ctgogogo2 = entryEffectLife( spep_8 -3 + 16,  190006, 158, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_8 -3 + 16, ctgogogo2, 0, -30 , 0 );
setEffMoveKey( spep_8 -3 + 174, ctgogogo2, 0, 80 , 0 );

setEffScaleKey( spep_8 -3 + 16, ctgogogo2, -0.78, 0.78 );
setEffScaleKey( spep_8 -3 + 176, ctgogogo2, -1.28, 1.28 );

setEffRotateKey( spep_8 -3 + 16, ctgogogo2, 0 );
setEffRotateKey( spep_8 -3 + 176, ctgogogo2, 0 );

setEffAlphaKey( spep_8 -3 + 16, ctgogogo2, 255 );
setEffAlphaKey( spep_8 -3 + 166, ctgogogo2, 255 );
setEffAlphaKey( spep_8 -3 + 168, ctgogogo2, 204 );
setEffAlphaKey( spep_8 -3 + 170, ctgogogo2, 153 );
setEffAlphaKey( spep_8 -3 + 172, ctgogogo2, 102 );
setEffAlphaKey( spep_8 -3 + 174, ctgogogo2, 51 );
setEffAlphaKey( spep_8 -3 + 176, ctgogogo2, 0 );

-- ** 音 ** --
playSe( spep_8,  1024);

-- ** ダメージ表示 ** --
dealDamage(spep_8 + 10);
endPhase( spep_8 + 176 );

end


