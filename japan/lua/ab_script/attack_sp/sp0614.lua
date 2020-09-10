--4019410:ベジータ_ギャリック砲
--sp_effect_a1_00230

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
SP_01=	155279	;--	冒頭
SP_02=	155280	;--	溜め〜ジャンプ
SP_03=	155281	;--	上昇〜構え・手前
SP_04=	155282	;--	上昇〜構え・奥
SP_05=	155283	;--	遠景・手前
SP_06=	155284	;--	遠景・奥
SP_07=	155285	;--	発射
SP_08=	155286	;--	迫る・手前
SP_09=	155287	;--	迫る・奥
SP_10=	155288	;--	爆発

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

--[[
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
]]--
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 冒頭
------------------------------------------------------
--はじめの準備
spep_0=4;
-- ** エフェクト等 ** --
boutou = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, boutou, 0, 0, 0 );
setEffMoveKey( spep_0 + 76, boutou, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, boutou, 1.0, 1.0 );
setEffScaleKey( spep_0 + 76, boutou, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, boutou, 0 );
setEffRotateKey( spep_0 + 76, boutou, 0 );
setEffAlphaKey( spep_0 + 0, boutou, 255 );
setEffAlphaKey( spep_0 + 76, boutou, 255 );
setEffAlphaKey( spep_0 + 77, boutou, 0 );
setEffAlphaKey( spep_0 + 78, boutou, 0 );


--敵の動き
setDisp( spep_0 + 0, 1, 1 );

changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 144.8, -328.2 , 0 );
--setMoveKey( spep_0-3 + 2, 1, 148.2, -330.3 , 0 );
setMoveKey( spep_0-3 + 4, 1, 151.5, -332.5 , 0 );
setMoveKey( spep_0-3 + 6, 1, 154.9, -334.6 , 0 );
setMoveKey( spep_0-3 + 8, 1, 158.2, -336.8 , 0 );
setMoveKey( spep_0-3 + 10, 1, 161.5, -339 , 0 );
setMoveKey( spep_0-3 + 12, 1, 164.8, -341.1 , 0 );
setMoveKey( spep_0-3 + 14, 1, 168.1, -343.3 , 0 );
setMoveKey( spep_0-3 + 16, 1, 171.3, -345.5 , 0 );
setMoveKey( spep_0-3 + 18, 1, 174.6, -347.7 , 0 );
setMoveKey( spep_0-3 + 20, 1, 177.8, -349.9 , 0 );
setMoveKey( spep_0-3 + 22, 1, 180.9, -352.1 , 0 );
setMoveKey( spep_0-3 + 24, 1, 184.1, -354.2 , 0 );
setMoveKey( spep_0-3 + 26, 1, 187.2, -356.4 , 0 );
setMoveKey( spep_0-3 + 28, 1, 190.3, -358.6 , 0 );
setMoveKey( spep_0-3 + 30, 1, 193.3, -360.8 , 0 );
setMoveKey( spep_0-3 + 32, 1, 196.3, -363.1 , 0 );
setMoveKey( spep_0-3 + 34, 1, 199.3, -365.3 , 0 );
setMoveKey( spep_0-3 + 36, 1, 202.3, -367.5 , 0 );
setMoveKey( spep_0-3 + 38, 1, 205.2, -369.7 , 0 );
setMoveKey( spep_0-3 + 40, 1, 208.2, -371.9 , 0 );
setMoveKey( spep_0-3 + 42, 1, 308.5, -610.7 , 0 );


setScaleKey( spep_0 + 0, 1, 2.33, 2.33 );
--setScaleKey( spep_0-3 + 2, 1, 2.34, 2.34 );
setScaleKey( spep_0-3 + 4, 1, 2.35, 2.35 );
setScaleKey( spep_0-3 + 6, 1, 2.36, 2.36 );
setScaleKey( spep_0-3 + 8, 1, 2.38, 2.38 );
setScaleKey( spep_0-3 + 10, 1, 2.39, 2.39 );
setScaleKey( spep_0-3 + 12, 1, 2.4, 2.4 );
setScaleKey( spep_0-3 + 14, 1, 2.41, 2.41 );
setScaleKey( spep_0-3 + 16, 1, 2.42, 2.42 );
setScaleKey( spep_0-3 + 18, 1, 2.43, 2.43 );
setScaleKey( spep_0-3 + 20, 1, 2.45, 2.45 );
setScaleKey( spep_0-3 + 22, 1, 2.46, 2.46 );
setScaleKey( spep_0-3 + 24, 1, 2.47, 2.47 );
setScaleKey( spep_0-3 + 26, 1, 2.48, 2.48 );
setScaleKey( spep_0-3 + 28, 1, 2.49, 2.49 );
setScaleKey( spep_0-3 + 30, 1, 2.5, 2.5 );
setScaleKey( spep_0-3 + 32, 1, 2.51, 2.51 );
setScaleKey( spep_0-3 + 34, 1, 2.53, 2.53 );
setScaleKey( spep_0-3 + 36, 1, 2.54, 2.54 );
setScaleKey( spep_0-3 + 38, 1, 2.55, 2.55 );
setScaleKey( spep_0-3 + 40, 1, 2.56, 2.56 );
setScaleKey( spep_0-3 + 42, 1, 3.34, 3.34 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );


--SE
SE0=playSe( spep_0 + 0, 8 );
SE1=playSe( spep_0 + 15, 1072 );
setSeVolume( spep_0 + 15, 1072, 112 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );


    pauseAll( SP_dodge, 67 );
    
   --敵の固定
   setMoveKey( SP_dodge + 9, 1, 308.5, -610.7 , 0 );
   setScaleKey( SP_dodge + 9, 1, 3.34, 3.34 );
   setRotateKey( SP_dodge + 9, 1, 0 );

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
setDisp( spep_0-3 + 78, 1, 0 );

setMoveKey( spep_0-3 + 44, 1, 410, -849.4 , 0 );
setMoveKey( spep_0-3 + 46, 1, 512.5, -1087.9 , 0 );
setMoveKey( spep_0-3 + 48, 1, 615.9, -1326.3 , 0 );
setMoveKey( spep_0-3 + 50, 1, 720.3, -1564.5 , 0 );
setMoveKey( spep_0-3 + 52, 1, 825.6, -1802.6 , 0 );
setMoveKey( spep_0-3 + 54, 1, 931.8, -2040.6 , 0 );
setMoveKey( spep_0-3 + 56, 1, 966.2, -2104.1 , 0 );
setMoveKey( spep_0-3 + 58, 1, 1000.7, -2167.7 , 0 );
setMoveKey( spep_0-3 + 60, 1, 1035.3, -2231.2 , 0 );
setMoveKey( spep_0-3 + 62, 1, 1070, -2294.7 , 0 );
setMoveKey( spep_0-3 + 64, 1, 1104.7, -2358.2 , 0 );
setMoveKey( spep_0-3 + 66, 1, 1139.4, -2421.7 , 0 );
setMoveKey( spep_0-3 + 68, 1, 1174.2, -2485.1 , 0 );
setMoveKey( spep_0-3 + 70, 1, 1209, -2548.6 , 0 );
setMoveKey( spep_0-3 + 72, 1, 1243.8, -2612.1 , 0 );
setMoveKey( spep_0-3 + 74, 1, 1278.6, -2675.6 , 0 );
setMoveKey( spep_0-3 + 76, 1, 1313.3, -2739.1 , 0 );
setMoveKey( spep_0-3 + 78, 1, 1348, -2802.6 , 0 );

setScaleKey( spep_0-3 + 44, 1, 4.11, 4.11 );
setScaleKey( spep_0-3 + 46, 1, 4.88, 4.88 );
setScaleKey( spep_0-3 + 48, 1, 5.66, 5.66 );
setScaleKey( spep_0-3 + 50, 1, 6.43, 6.43 );
setScaleKey( spep_0-3 + 52, 1, 7.2, 7.2 );
setScaleKey( spep_0-3 + 54, 1, 7.98, 7.98 );
setScaleKey( spep_0-3 + 56, 1, 8.19, 8.19 );
setScaleKey( spep_0-3 + 58, 1, 8.39, 8.39 );
setScaleKey( spep_0-3 + 60, 1, 8.6, 8.6 );
setScaleKey( spep_0-3 + 62, 1, 8.81, 8.81 );
setScaleKey( spep_0-3 + 64, 1, 9.02, 9.02 );
setScaleKey( spep_0-3 + 66, 1, 9.23, 9.23 );
setScaleKey( spep_0-3 + 68, 1, 9.44, 9.44 );
setScaleKey( spep_0-3 + 70, 1, 9.65, 9.65 );
setScaleKey( spep_0-3 + 72, 1, 9.85, 9.85 );
setScaleKey( spep_0-3 + 74, 1, 10.06, 10.06 );
setScaleKey( spep_0-3 + 76, 1, 10.27, 10.27 );
setScaleKey( spep_0-3 + 78, 1, 10.48, 10.48 );

setRotateKey( spep_0-3 + 78, 1, 0 );

-- ** エフェクト等 ** --
kakimozi1 = entryEffect( spep_0 -4 + 0, 155289, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 -4 + 0, kakimozi1, 0, 0, 0 );
setEffMoveKey( spep_0  + 488, kakimozi1, 0, 0, 0 );
setEffScaleKey( spep_0 -4 + 0, kakimozi1, 1.0, 1.0 );
setEffScaleKey( spep_0  + 488, kakimozi1, 1.0, 1.0 );
setEffRotateKey( spep_0 -4 + 0, kakimozi1, 0 );
setEffRotateKey( spep_0  + 488, kakimozi1, 0 );
setEffAlphaKey( spep_0 -4 + 0, kakimozi1, 255 );
setEffAlphaKey( spep_0  + 486, kakimozi1, 255 );
setEffAlphaKey( spep_0  + 487, kakimozi1, 255 );
setEffAlphaKey( spep_0  + 488, kakimozi1, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0 -3 + 44,  906, 32 +3, 0x100, -1, 0,  0, 0 );
setEffShake( spep_0 -3 + 44, shuchusen1, 32 +3, 20 );
setEffMoveKey( spep_0 -3 + 44, shuchusen1,  0, 0 , 0 );
setEffMoveKey( spep_0  + 76, shuchusen1,  0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 44, shuchusen1, 1.3, 2 );
setEffScaleKey( spep_0  + 76, shuchusen1, 1.3, 2 );

setEffRotateKey( spep_0 -3 + 44, shuchusen1, 180 );
setEffRotateKey( spep_0  + 76, shuchusen1, 180 );

setEffAlphaKey( spep_0 -3 + 44, shuchusen1, 27 );
setEffAlphaKey( spep_0 -3 + 46, shuchusen1, 55 );
setEffAlphaKey( spep_0 -3 + 48, shuchusen1, 82 );
setEffAlphaKey( spep_0 -3 + 50, shuchusen1, 109 );
setEffAlphaKey( spep_0 -3 + 52, shuchusen1, 137 );
setEffAlphaKey( spep_0 -3 + 54, shuchusen1, 164 );
setEffAlphaKey( spep_0 -3 + 56, shuchusen1, 191 );
setEffAlphaKey( spep_0  + 74, shuchusen1, 191 );
setEffAlphaKey( spep_0  + 75, shuchusen1, 191 );
setEffAlphaKey( spep_0  + 76, shuchusen1, 0 );

--SE
playSe( spep_0 + 27, 44 );
setSeVolume( spep_0 + 27, 44, 0 );
setSeVolume( spep_0 + 35, 44, 9.88 );
setSeVolume( spep_0 + 36, 44, 19.75 );
setSeVolume( spep_0 + 37, 44, 29.63 );
setSeVolume( spep_0 + 38, 44, 39.50 );
setSeVolume( spep_0 + 39, 44, 49.38 );
setSeVolume( spep_0 + 40, 44, 59.25 );
setSeVolume( spep_0 + 41, 44, 69.13 );
setSeVolume( spep_0 + 42, 44, 79 );

-- ** くろ背景 ** --
entryFadeBg( 0 , 0, 90, 0,  255, 255, 255, 255 ); --くろ 背景

-- ** しろ背景 ** --
entryFade(   0, 0, 4, 4,  255, 255, 255, 255 ); --くろ 背景

--次の準備
spep_1=spep_0+76;

------------------------------------------------------
-- 冒頭溜め〜ジャンプ
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_1 +  0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 +  0, tame, 0, 0, 0 );
setEffMoveKey( spep_1 + 216, tame, 0, 0, 0 );
setEffScaleKey( spep_1 +  0, tame, 1.0, 1.0 );
setEffScaleKey( spep_1 + 216, tame, 1.0, 1.0 );
setEffRotateKey( spep_1 +  0, tame, 0 );
setEffRotateKey( spep_1 + 216, tame, 0 );
setEffAlphaKey( spep_1 +  0, tame, 255 );
setEffAlphaKey( spep_1 + 216, tame, 255 );
setEffAlphaKey( spep_1 + 217, tame, 0 );
setEffAlphaKey( spep_1 + 218, tame, 0 );

-- ** エフェクト等 ** --
kamae_f = entryEffect( spep_1 + 197, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 197, kamae_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 416, kamae_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 197, kamae_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 416, kamae_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 197, kamae_f, 0 );
setEffRotateKey( spep_1 + 416, kamae_f, 0 );
setEffAlphaKey( spep_1 + 197, kamae_f, 255 );
setEffAlphaKey( spep_1 + 416, kamae_f, 255 );
setEffAlphaKey( spep_1 + 417, kamae_f, 0 );
setEffAlphaKey( spep_1 + 418, kamae_f, 0 );

-- ** エフェクト等 ** --
kamae_b = entryEffect( spep_1 + 197, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 197, kamae_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 416, kamae_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 197, kamae_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 416, kamae_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 197, kamae_b, 0 );
setEffRotateKey( spep_1 + 416, kamae_b, 0 );
setEffAlphaKey( spep_1 + 197, kamae_b, 255 );
setEffAlphaKey( spep_1 + 416, kamae_b, 255 );
setEffAlphaKey( spep_1 + 417, kamae_b, 0 );
setEffAlphaKey( spep_1 + 418, kamae_b, 0 );


--集中線
shuchusen2 = entryEffectLife( spep_1-81 + 90,  906, 138, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-81 + 90, shuchusen2, 138, 20 );
setEffMoveKey( spep_1-81 + 90, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1-81 + 228, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1-81 + 90, shuchusen2, 2.3, 2.42 );
setEffScaleKey( spep_1-81 + 228, shuchusen2, 2.3, 2.42 );

setEffRotateKey( spep_1-81 + 90, shuchusen2, 0 );
setEffRotateKey( spep_1-81 + 228, shuchusen2, 0 );

setEffAlphaKey( spep_1-81 + 90, shuchusen2, 17 );
setEffAlphaKey( spep_1-81 + 92, shuchusen2, 35 );
setEffAlphaKey( spep_1-81 + 94, shuchusen2, 52 );
setEffAlphaKey( spep_1-81 + 96, shuchusen2, 70 );
setEffAlphaKey( spep_1-81 + 98, shuchusen2, 87 );
setEffAlphaKey( spep_1-81 + 100, shuchusen2, 104 );
setEffAlphaKey( spep_1-81 + 102, shuchusen2, 122 );
setEffAlphaKey( spep_1-81 + 104, shuchusen2, 139 );
setEffAlphaKey( spep_1-81 + 106, shuchusen2, 156 );
setEffAlphaKey( spep_1-81 + 108, shuchusen2, 174 );
setEffAlphaKey( spep_1-81 + 110, shuchusen2, 191 );
setEffAlphaKey( spep_1-81 + 227, shuchusen2, 191 );
setEffAlphaKey( spep_1-81 + 228, shuchusen2, 0 );

--敵の動き
setDisp( spep_1-3 + 200, 1, 1 );
setDisp( spep_1-3 + 230, 1, 0 );

changeAnime( spep_1-3 + 200, 1, 18 );

--setMoveKey( spep_1-4 + 200, 1, -264.5, 460.5 , 0 );
setMoveKey( spep_1-4 + 201, 1, -264.5, 460.5 , 0 );
setMoveKey( spep_1-4 + 202, 1, -260.3, 325.9 , 0 );
setMoveKey( spep_1-4 + 203, 1, -260.3, 325.9 , 0 );
setMoveKey( spep_1-4 + 204, 1, -256.1, 196.1 , 0 );
setMoveKey( spep_1-4 + 205, 1, -256.1, 196.1 , 0 );
setMoveKey( spep_1-4 + 206, 1, -252.2, 70.9 , 0 );
setMoveKey( spep_1-4 + 207, 1, -252.2, 70.9 , 0 );
setMoveKey( spep_1-4 + 208, 1, -248.3, -49.4 , 0 );
setMoveKey( spep_1-4 + 209, 1, -248.3, -49.4 , 0 );
setMoveKey( spep_1-4 + 210, 1, -244.7, -165.1 , 0 );
setMoveKey( spep_1-4 + 211, 1, -244.7, -165.1 , 0 );
setMoveKey( spep_1-4 + 212, 1, -241.1, -276 , 0 );
setMoveKey( spep_1-4 + 213, 1, -241.1, -276 , 0 );
setMoveKey( spep_1-4 + 214, 1, -237.8, -382.2 , 0 );
setMoveKey( spep_1-4 + 215, 1, -237.8, -382.2 , 0 );
setMoveKey( spep_1-4 + 216, 1, -234.5, -483.7 , 0 );
setMoveKey( spep_1-4 + 217, 1, -234.5, -483.7 , 0 );
setMoveKey( spep_1-4 + 218, 1, -231.5, -580.4 , 0 );
setMoveKey( spep_1-4 + 219, 1, -231.5, -580.4 , 0 );
setMoveKey( spep_1-4 + 220, 1, -228.6, -672.4 , 0 );
setMoveKey( spep_1-4 + 221, 1, -228.6, -672.4 , 0 );
setMoveKey( spep_1-4 + 222, 1, -225.8, -759.6 , 0 );
setMoveKey( spep_1-4 + 223, 1, -225.8, -759.6 , 0 );
setMoveKey( spep_1-4 + 224, 1, -223.2, -842.1 , 0 );
setMoveKey( spep_1-4 + 225, 1, -223.2, -842.1 , 0 );
setMoveKey( spep_1-4 + 226, 1, -220.7, -919.9 , 0 );
setMoveKey( spep_1-4 + 227, 1, -220.7, -919.9 , 0 );
setMoveKey( spep_1-4 + 228, 1, -218.4, -993 , 0 );
setMoveKey( spep_1-4 + 229, 1, -218.4, -993 , 0 );
setMoveKey( spep_1-3 + 230, 1, -216.2, -1061.3 , 0 );

--setScaleKey( spep_1-4 + 200, 1, 4.49, 4.49 );
setScaleKey( spep_1-4 + 201, 1, 4.49, 4.49 );
setScaleKey( spep_1-4 + 202, 1, 4.45, 4.45 );
setScaleKey( spep_1-4 + 203, 1, 4.45, 4.45 );
setScaleKey( spep_1-4 + 204, 1, 4.41, 4.41 );
setScaleKey( spep_1-4 + 205, 1, 4.41, 4.41 );
setScaleKey( spep_1-4 + 206, 1, 4.37, 4.37 );
setScaleKey( spep_1-4 + 207, 1, 4.37, 4.37 );
setScaleKey( spep_1-4 + 208, 1, 4.33, 4.33 );
setScaleKey( spep_1-4 + 209, 1, 4.33, 4.33 );
setScaleKey( spep_1-4 + 210, 1, 4.29, 4.29 );
setScaleKey( spep_1-4 + 211, 1, 4.29, 4.29 );
setScaleKey( spep_1-4 + 212, 1, 4.25, 4.25 );
setScaleKey( spep_1-4 + 213, 1, 4.25, 4.25 );
setScaleKey( spep_1-4 + 214, 1, 4.22, 4.22 );
setScaleKey( spep_1-4 + 215, 1, 4.22, 4.22 );
setScaleKey( spep_1-4 + 216, 1, 4.18, 4.18 );
setScaleKey( spep_1-4 + 217, 1, 4.18, 4.18 );
setScaleKey( spep_1-4 + 218, 1, 4.15, 4.15 );
setScaleKey( spep_1-4 + 219, 1, 4.15, 4.15 );
setScaleKey( spep_1-4 + 220, 1, 4.12, 4.12 );
setScaleKey( spep_1-4 + 221, 1, 4.12, 4.12 );
setScaleKey( spep_1-4 + 222, 1, 4.09, 4.09 );
setScaleKey( spep_1-4 + 223, 1, 4.09, 4.09 );
setScaleKey( spep_1-4 + 224, 1, 4.07, 4.07 );
setScaleKey( spep_1-4 + 225, 1, 4.07, 4.07 );
setScaleKey( spep_1-4 + 226, 1, 4.04, 4.04 );
setScaleKey( spep_1-4 + 227, 1, 4.04, 4.04 );
setScaleKey( spep_1-4 + 228, 1, 4.02, 4.02 );
setScaleKey( spep_1-4 + 229, 1, 4.02, 4.02 );
setScaleKey( spep_1-3 + 230, 1, 3.99, 3.99 );

setRotateKey( spep_1-3 + 200, 1, -30.6 );
setRotateKey( spep_1-3 + 230, 1, -30.6 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_1+50  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_1+50  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_1 +62, 190006, 72, 0x100, -1, 0, 100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_1 +62,  ctgogo,  100,  510);
setEffMoveKey(  spep_1 +134,  ctgogo,  100,  510);

setEffAlphaKey( spep_1 +62, ctgogo, 0 );
setEffAlphaKey( spep_1 + 63, ctgogo, 255 );
setEffAlphaKey( spep_1 + 64, ctgogo, 255 );
setEffAlphaKey( spep_1 + 120, ctgogo, 255 );
setEffAlphaKey( spep_1 + 122, ctgogo, 191 );
setEffAlphaKey( spep_1 + 124, ctgogo, 112 );
setEffAlphaKey( spep_1 + 134, ctgogo, 64 );

setEffRotateKey(  spep_1 +62,  ctgogo,  0);
setEffRotateKey(  spep_1 +134,  ctgogo,  0);

setEffScaleKey(  spep_1 +62,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_1 +124,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_1 +134,  ctgogo, 1.07, 1.07 );

--SE
playSe( spep_1 + 62, 1018 );
playSe( spep_1 + 7, 1182 );
setSeVolume( spep_1 + 7, 1182, 79 );
se_1044 = playSe( spep_1 + 8, 1044 );
playSe( spep_1 + 8, 1016 );
setSeVolume( spep_1 + 8, 1016, 63 );
playSe( spep_1 + 8, 1155 );
setSeVolume( spep_1 + 8, 1155, 63 );
playSe( spep_1 + 15, 49 );
setSeVolume( spep_1 + 15, 49, 126 );
playSe( spep_1 + 23, 1016 );
setSeVolume( spep_1 + 23, 1016, 56 );
playSe( spep_1 + 30, 49 );
playSe( spep_1 + 39, 1016 );
setSeVolume( spep_1 + 39, 1016, 71 );
playSe( spep_1 + 45, 49 );
playSe( spep_1 + 47, 49 );
playSe( spep_1 + 56, 1016 );
setSeVolume( spep_1 + 56, 1016, 63 );
playSe( spep_1 + 68, 1230 );
setSeVolume( spep_1 + 68, 1230, 89 );
playSe( spep_1 + 74, 1035 );
setSeVolume( spep_1 + 74, 1035, 112 );
playSe( spep_1 + 74, 1024 );
setSeVolume( spep_1 + 74, 1024, 89 );
playSe( spep_1 + 176, 1182 );
playSe( spep_1 + 176, 1207 );
setSeVolume( spep_1 + 176, 1207, 0 );
setSeVolume( spep_1 + 178, 1207, 0 );
setSeVolume( spep_1 + 179, 1207, 8 );
setSeVolume( spep_1 + 180, 1207, 16 );
setSeVolume( spep_1 + 181, 1207, 24 );
setSeVolume( spep_1 + 182, 1207, 32 );
setSeVolume( spep_1 + 183, 1207, 40 );
setSeVolume( spep_1 + 184, 1207, 48 );
setSeVolume( spep_1 + 185, 1207, 56 );
playSe( spep_1 + 176, 1231 );
playSe( spep_1 + 176, 1045 );
playSe( spep_1 + 179, 1054 );
se_1183 = playSe( spep_1 + 197, 1183 );
setSeVolume( spep_1 + 197, 1183, 126 );
playSe( spep_1 + 266, 1042 );
setSeVolume( spep_1 + 266, 1042, 71 );
se_1243 = playSe( spep_1 + 314, 1243 );
se_1227 = playSe( spep_1 + 314, 1227 );
setSeVolume( spep_1 + 314, 1227, 63 );
se_1176 = playSe( spep_1 + 314, 1176 );
se_1161 = playSe( spep_1 + 314, 1161 );
setSeVolume( spep_1 + 314, 1161, 56 );
se_1211 = playSe( spep_1 + 334, 1211 );
setSeVolume( spep_1 + 334, 1211, 63 );
playSe( spep_1 + 353, 1003 );
se_1147 = playSe( spep_1 + 356, 1147 );
setSeVolume( spep_1 + 356, 1147, 63 );
se_1168 = playSe( spep_1 + 362, 1168 );
setSeVolume( spep_1 + 362, 1168, 0 );
se_1148 = playSe( spep_1 + 398, 1148 );
setSeVolume( spep_1 + 398, 1148, 79 );

stopSe( spep_1 + 74, se_1044, 0 );
stopSe( spep_1 + 316, se_1183, 18 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 420, 0,  255, 255, 255, 255 ); --くろ 背景

--次の準備
spep_2=spep_1+412;
------------------------------------------------------
-- 遠景
------------------------------------------------------
-- ** エフェクト等 ** --
tame2_f = entryEffect( spep_2 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame2_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 80, tame2_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tame2_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 80, tame2_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame2_f, 0 );
setEffRotateKey( spep_2 + 80, tame2_f, 0 );
setEffAlphaKey( spep_2 + 0, tame2_f, 255 );
setEffAlphaKey( spep_2 + 80, tame2_f, 255 );

-- ** エフェクト等 ** --
tame2_b = entryEffect( spep_2 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame2_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 80, tame2_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tame2_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 80, tame2_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame2_b, 0 );
setEffRotateKey( spep_2 + 80, tame2_b, 0 );
setEffAlphaKey( spep_2 + 0, tame2_b, 255 );
setEffAlphaKey( spep_2 + 80, tame2_b, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 78, 1, 0  );

changeAnime( spep_2 + 0, 1, 18 );

setMoveKey( spep_2 + 0, 1, -10.3, -237 , 0 );
setMoveKey( spep_2 + 2, 1, -12.4, -243.4 , 0 );
setMoveKey( spep_2 + 4, 1, -10.4, -237.9 , 0 );
setMoveKey( spep_2 + 6, 1, -14.4, -240.4 , 0 );
setMoveKey( spep_2 + 8, 1, -10.4, -238.8 , 0 );
setMoveKey( spep_2 + 10, 1, -12.4, -243.2 , 0 );
setMoveKey( spep_2 + 12, 1, -10.4, -239.7 , 0 );
setMoveKey( spep_2 + 14, 1, -14.5, -242.1 , 0 );
setMoveKey( spep_2 + 16, 1, -10.5, -240.5 , 0 );
setMoveKey( spep_2 + 18, 1, -12.5, -242.9 , 0 );
setMoveKey( spep_2 + 20, 1, -10.5, -241.3 , 0 );
setMoveKey( spep_2 + 22, 1, -12.5, -243.7 , 0 );
setMoveKey( spep_2 + 24, 1, -10.6, -242.1 , 0 );
setMoveKey( spep_2 + 26, 1, -12.6, -242.5 , 0 );
setMoveKey( spep_2 + 28, 1, -10.6, -242.9 , 0 );
setMoveKey( spep_2 + 30, 1, -10.6, -245.2 , 0 );
setMoveKey( spep_2 + 32, 1, -10.6, -243.6 , 0 );
setMoveKey( spep_2 + 34, 1, -14.6, -247.9 , 0 );
setMoveKey( spep_2 + 36, 1, -10.6, -244.3 , 0 );
setMoveKey( spep_2 + 38, 1, -14.7, -246.6 , 0 );
setMoveKey( spep_2 + 40, 1, -10.7, -244.9 , 0 );
setMoveKey( spep_2 + 42, 1, -12.7, -249.2 , 0 );
setMoveKey( spep_2 + 44, 1, -10.7, -245.5 , 0 );
setMoveKey( spep_2 + 46, 1, -12.7, -247.8 , 0 );
setMoveKey( spep_2 + 48, 1, -10.7, -246.1 , 0 );
setMoveKey( spep_2 + 50, 1, -14.7, -248.4 , 0 );
setMoveKey( spep_2 + 52, 1, -10.8, -246.7 , 0 );
setMoveKey( spep_2 + 54, 1, -12.8, -250.9 , 0 );
setMoveKey( spep_2 + 56, 1, -10.8, -247.2 , 0 );
setMoveKey( spep_2 + 58, 1, -12.8, -249.4 , 0 );
setMoveKey( spep_2 + 60, 1, -12.8, -249.7 , 0 );
setMoveKey( spep_2 + 62, 1, -14.8, -257.9 , 0 );
setMoveKey( spep_2 + 64, 1, -12.8, -250.1 , 0 );
setMoveKey( spep_2 + 66, 1, -16.8, -252.3 , 0 );
setMoveKey( spep_2 + 68, 1, -12.8, -250.5 , 0 );
setMoveKey( spep_2 + 70, 1, -14.8, -256.7 , 0 );
setMoveKey( spep_2 + 72, 1, -12.9, -250.9 , 0 );
setMoveKey( spep_2 + 74, 1, -16.9, -253.1 , 0 );
setMoveKey( spep_2 + 76, 1, -12.9, -251.3 , 0 );
setMoveKey( spep_2 + 78, 1, -14.9, -255.4 , 0 );

setScaleKey( spep_2 + 0, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 8, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 10, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 28, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 30, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 54, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 56, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 78, 1, 0.62, 0.62 );

setRotateKey( spep_2 + 0, 1, -13.3 );
setRotateKey( spep_2 + 78, 1, -13.3 );

--SE
se_1214 = playSe( spep_2 + 6, 1214 );
se_1044 = playSe( spep_2 + 6, 1044 );
setSeVolume( spep_2 + 6, 1044, 63 );
setSeVolume( spep_2 + 20, 1168, 0 );
setSeVolume( spep_2 + 21, 1168, 50 );
setSeVolume( spep_2 + 22, 1168, 100 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 82, 0,  255, 255, 255, 255 ); --くろ 背景

--白フェード
entryFade( spep_2 + 72, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3=spep_2+80;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );
stopSe( spep_3 + 5, se_1243, 0 );
stopSe( spep_3 + 5, se_1227, 0 );
stopSe( spep_3 + 5, se_1176, 0 );
stopSe( spep_3 + 5, se_1161, 0 );
stopSe( spep_3 + 5, se_1211, 0 );
stopSe( spep_3 + 5, se_1147, 0 );
stopSe( spep_3 + 5, se_1168, 0 );
stopSe( spep_3 + 5, se_1148, 0 );
stopSe( spep_3 + 5, se_1214, 0 );
stopSe( spep_3 + 5, se_1044, 0 );


--白フェード
entryFade( spep_3 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;
------------------------------------------------------
-- 発射
------------------------------------------------------
-- ** エフェクト等 ** --
hassya = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hassya, 0, 0, 0 );
setEffMoveKey( spep_4 + 96, hassya, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hassya, 1.0, 1.0 );
setEffScaleKey( spep_4 + 96, hassya, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hassya, 0 );
setEffRotateKey( spep_4 + 96, hassya, 0 );
setEffAlphaKey( spep_4 + 0, hassya, 255 );
setEffAlphaKey( spep_4 + 96, hassya, 255 );
setEffAlphaKey( spep_4 + 97, hassya, 0 );
setEffAlphaKey( spep_4 + 98, hassya, 0 );

-- ** エフェクト等 ** --
kakimozi2 = entryEffect( spep_4 + 0, 155290, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kakimozi2, 0, 0, 0 );
setEffMoveKey( spep_4 + 360, kakimozi2, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kakimozi2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 360, kakimozi2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kakimozi2, 0 );
setEffRotateKey( spep_4 + 360, kakimozi2, 0 );
setEffAlphaKey( spep_4 + 0, kakimozi2, 255 );
setEffAlphaKey( spep_4 + 360, kakimozi2, 255 );

--SE
playSe( spep_4 + 22, 1003 );
setSeVolume( spep_4 + 22, 1003, 63 );
playSe( spep_4 + 30, 1205 );
setSeVolume( spep_4 + 30, 1205, 56 );
playSe( spep_4 + 30, 1213 );
setSeVolume( spep_4 + 30, 1213, 56 );
playSe( spep_4 + 30, 1177 );
setSeVolume( spep_4 + 30, 1177, 71 );
playSe( spep_4 + 30, 1027 );
setSeVolume( spep_4 + 30, 1027, 79 );
playSe( spep_4 + 30, 1146 );
se_1211 = playSe( spep_4 + 43, 1211 );
se_1215 = playSe( spep_4 + 51, 1215 );
setSeVolume( spep_4 + 51, 1215, 0 );
setSeVolume( spep_4 + 77, 1215, 0 );
setSeVolume( spep_4 + 78, 1215, 2.47 );
setSeVolume( spep_4 + 79, 1215, 4.94 );
setSeVolume( spep_4 + 80, 1215, 7.41 );
setSeVolume( spep_4 + 81, 1215, 9.88 );
setSeVolume( spep_4 + 82, 1215, 12.34 );
setSeVolume( spep_4 + 83, 1215, 14.81 );
setSeVolume( spep_4 + 84, 1215, 17.28 );
setSeVolume( spep_4 + 85, 1215, 19.75 );
setSeVolume( spep_4 + 86, 1215, 22.22 );
setSeVolume( spep_4 + 87, 1215, 24.69 );
setSeVolume( spep_4 + 88, 1215, 27.16 );
setSeVolume( spep_4 + 89, 1215, 29.63 );
setSeVolume( spep_4 + 90, 1215, 32.09 );
setSeVolume( spep_4 + 91, 1215, 34.56 );
setSeVolume( spep_4 + 92, 1215, 37.03 );
setSeVolume( spep_4 + 93, 1215, 39.5 );
setSeVolume( spep_4 + 94, 1215, 41.97 );
setSeVolume( spep_4 + 95, 1215, 44.44 );
setSeVolume( spep_4 + 96, 1215, 46.91 );
setSeVolume( spep_4 + 97, 1215, 49.38 );
setSeVolume( spep_4 + 98, 1215, 51.84 );
setSeVolume( spep_4 + 99, 1215, 54.31 );
setSeVolume( spep_4 + 100, 1215, 56.78 );
setSeVolume( spep_4 + 101, 1215, 59.25 );
setSeVolume( spep_4 + 102, 1215, 61.72 );
setSeVolume( spep_4 + 103, 1215, 64.19 );
setSeVolume( spep_4 + 104, 1215, 66.66 );
setSeVolume( spep_4 + 105, 1215, 69.13 );
setSeVolume( spep_4 + 106, 1215, 71.59 );
setSeVolume( spep_4 + 107, 1215, 74.06 );
setSeVolume( spep_4 + 108, 1215, 76.53 );
setSeVolume( spep_4 + 109, 1215, 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 100, 0,  255, 255, 255, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 96;
------------------------------------------------------
-- 迫る
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 60, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 60, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 60, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 60, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_5 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 60, hit_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 60, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 60, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 60, hit_b, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_5 + 0,  906, 60, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 0, shuchusen3, 60, 20 );
setEffMoveKey( spep_5 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_5 + 60, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen3, 1.21, 1.84 );
setEffScaleKey( spep_5 + 60, shuchusen3, 1.21, 1.84 );

setEffRotateKey( spep_5 + 0, shuchusen3, 0 );
setEffRotateKey( spep_5 + 60, shuchusen3, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen3, 204 );
setEffAlphaKey( spep_5 + 60, shuchusen3, 204 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 58, 1, 0 );

changeAnime( spep_5 + 0, 1, 18 );

setMoveKey( spep_5 + 0, 1, -10.9, -329.4 , 0 );
setMoveKey( spep_5 + 2, 1, -11.3, -323.3 , 0 );
setMoveKey( spep_5 + 4, 1, -11.6, -317.1 , 0 );
setMoveKey( spep_5 + 6, 1, -11.9, -311 , 0 );
setMoveKey( spep_5 + 8, 1, -12.3, -304.9 , 0 );
setMoveKey( spep_5 + 10, 1, -12.6, -298.8 , 0 );
setMoveKey( spep_5 + 12, 1, -12.9, -292.7 , 0 );
setMoveKey( spep_5 + 14, 1, -13.2, -286.6 , 0 );
setMoveKey( spep_5 + 16, 1, -13.6, -280.5 , 0 );
setMoveKey( spep_5 + 18, 1, -13.9, -274.3 , 0 );
setMoveKey( spep_5 + 20, 1, -14.2, -268.2 , 0 );
setMoveKey( spep_5 + 22, 1, -14.6, -262.1 , 0 );
setMoveKey( spep_5 + 24, 1, -14.9, -256 , 0 );
setMoveKey( spep_5 + 26, 1, -15.2, -249.8 , 0 );
setMoveKey( spep_5 + 28, 1, -15.6, -243.7 , 0 );
setMoveKey( spep_5 + 30, 1, -15.9, -237.6 , 0 );
setMoveKey( spep_5 + 32, 1, -16.2, -231.5 , 0 );
setMoveKey( spep_5 + 34, 1, -16.6, -225.3 , 0 );
setMoveKey( spep_5 + 36, 1, -17.2, -221.9 , 0 );
setMoveKey( spep_5 + 38, 1, -17.8, -218.4 , 0 );
setMoveKey( spep_5 + 40, 1, -18.4, -214.8 , 0 );
setMoveKey( spep_5 + 42, 1, -19, -211.4 , 0 );
setMoveKey( spep_5 + 44, 1, -19.7, -207.9 , 0 );
setMoveKey( spep_5 + 46, 1, -20.3, -204.4 , 0 );
setMoveKey( spep_5 + 48, 1, -20.9, -200.9 , 0 );
setMoveKey( spep_5 + 50, 1, -21.5, -197.4 , 0 );
setMoveKey( spep_5 + 52, 1, -22.1, -193.9 , 0 );
setMoveKey( spep_5 + 54, 1, -22.8, -190.5 , 0 );
setMoveKey( spep_5 + 56, 1, -23.4, -187 , 0 );
setMoveKey( spep_5 + 58, 1, -24.1, -183.5 , 0 );

setScaleKey( spep_5 + 0, 1, 0.62, 0.62 );
setScaleKey( spep_5 + 2, 1, 0.64, 0.64 );
setScaleKey( spep_5 + 4, 1, 0.66, 0.66 );
setScaleKey( spep_5 + 6, 1, 0.68, 0.68 );
setScaleKey( spep_5 + 8, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 10, 1, 0.72, 0.72 );
setScaleKey( spep_5 + 12, 1, 0.73, 0.73 );
setScaleKey( spep_5 + 14, 1, 0.75, 0.75 );
setScaleKey( spep_5 + 16, 1, 0.77, 0.77 );
setScaleKey( spep_5 + 18, 1, 0.79, 0.79 );
setScaleKey( spep_5 + 20, 1, 0.81, 0.81 );
setScaleKey( spep_5 + 22, 1, 0.83, 0.83 );
setScaleKey( spep_5 + 24, 1, 0.85, 0.85 );
setScaleKey( spep_5 + 26, 1, 0.87, 0.87 );
setScaleKey( spep_5 + 28, 1, 0.89, 0.89 );
setScaleKey( spep_5 + 30, 1, 0.9, 0.9 );
setScaleKey( spep_5 + 32, 1, 0.92, 0.92 );
setScaleKey( spep_5 + 34, 1, 0.94, 0.94 );
setScaleKey( spep_5 + 36, 1, 0.98, 0.98 );
setScaleKey( spep_5 + 38, 1, 1.01, 1.01 );
setScaleKey( spep_5 + 40, 1, 1.05, 1.05 );
setScaleKey( spep_5 + 42, 1, 1.08, 1.08 );
setScaleKey( spep_5 + 44, 1, 1.12, 1.12 );
setScaleKey( spep_5 + 46, 1, 1.15, 1.15 );
setScaleKey( spep_5 + 48, 1, 1.19, 1.19 );
setScaleKey( spep_5 + 50, 1, 1.23, 1.23 );
setScaleKey( spep_5 + 52, 1, 1.26, 1.26 );
setScaleKey( spep_5 + 54, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 56, 1, 1.33, 1.33 );
setScaleKey( spep_5 + 58, 1, 1.37, 1.37 );

setRotateKey( spep_5 + 0, 1, -13.3 );
setRotateKey( spep_5 + 58, 1, -13.3 );

--SE
playSe( spep_5 + 12, 1021 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 62, 0,  255, 255, 255, 255 ); --くろ 背景

--白フェード
entryFade( spep_5 + 52, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 60;
------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_6 + 160, finish, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish, 1.1, 1.1 );
setEffScaleKey( spep_6 + 160, finish, 1.1, 1.1 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 160, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 160, finish, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_6 + 0,  906, 152, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 0, shuchusen4, 152, 20 );
setEffMoveKey( spep_6 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_6 + 152, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen4, 1.21, 1.84 );
setEffScaleKey( spep_6 + 152, shuchusen4, 1.21, 1.84 );

setEffRotateKey( spep_6 + 0, shuchusen4, 0.3 );
setEffRotateKey( spep_6 + 152, shuchusen4, 0.3 );

setEffAlphaKey( spep_6 + 0, shuchusen4, 204 );
setEffAlphaKey( spep_6 + 146, shuchusen4, 204 );
setEffAlphaKey( spep_6 + 148, shuchusen4, 136 );
setEffAlphaKey( spep_6 + 150, shuchusen4, 68 );
setEffAlphaKey( spep_6 + 152, shuchusen4, 0 );

--SE
playSe( spep_6 + 13, 1182 );
playSe( spep_6 + 13, 1159 );
playSe( spep_6 + 13, 1024 );
setSeVolume( spep_6 + 13, 1024, 79 );
playSe( spep_6 + 42, 1023 );
setSeVolume( spep_6 + 42, 1023, 79 );
playSe( spep_6 + 58, 1160 );
setSeVolume( spep_6 + 58, 1160, 89 );
stopSe( spep_6 + 27, se_1211, 0 );
stopSe( spep_6 + 13, se_1215, 0 );

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 10 );
endPhase( spep_6 + 150 );
else 
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 冒頭
------------------------------------------------------
--はじめの準備
spep_0=4;
-- ** エフェクト等 ** --
boutou = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, boutou, 0, 0, 0 );
setEffMoveKey( spep_0 + 76, boutou, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, boutou, 1.0, 1.0 );
setEffScaleKey( spep_0 + 76, boutou, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, boutou, 0 );
setEffRotateKey( spep_0 + 76, boutou, 0 );
setEffAlphaKey( spep_0 + 0, boutou, 255 );
setEffAlphaKey( spep_0 + 76, boutou, 255 );
setEffAlphaKey( spep_0 + 77, boutou, 0 );
setEffAlphaKey( spep_0 + 78, boutou, 0 );


--敵の動き
setDisp( spep_0 + 0, 1, 1 );

changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 144.8, -328.2 , 0 );
--setMoveKey( spep_0-3 + 2, 1, 148.2, -330.3 , 0 );
setMoveKey( spep_0-3 + 4, 1, 151.5, -332.5 , 0 );
setMoveKey( spep_0-3 + 6, 1, 154.9, -334.6 , 0 );
setMoveKey( spep_0-3 + 8, 1, 158.2, -336.8 , 0 );
setMoveKey( spep_0-3 + 10, 1, 161.5, -339 , 0 );
setMoveKey( spep_0-3 + 12, 1, 164.8, -341.1 , 0 );
setMoveKey( spep_0-3 + 14, 1, 168.1, -343.3 , 0 );
setMoveKey( spep_0-3 + 16, 1, 171.3, -345.5 , 0 );
setMoveKey( spep_0-3 + 18, 1, 174.6, -347.7 , 0 );
setMoveKey( spep_0-3 + 20, 1, 177.8, -349.9 , 0 );
setMoveKey( spep_0-3 + 22, 1, 180.9, -352.1 , 0 );
setMoveKey( spep_0-3 + 24, 1, 184.1, -354.2 , 0 );
setMoveKey( spep_0-3 + 26, 1, 187.2, -356.4 , 0 );
setMoveKey( spep_0-3 + 28, 1, 190.3, -358.6 , 0 );
setMoveKey( spep_0-3 + 30, 1, 193.3, -360.8 , 0 );
setMoveKey( spep_0-3 + 32, 1, 196.3, -363.1 , 0 );
setMoveKey( spep_0-3 + 34, 1, 199.3, -365.3 , 0 );
setMoveKey( spep_0-3 + 36, 1, 202.3, -367.5 , 0 );
setMoveKey( spep_0-3 + 38, 1, 205.2, -369.7 , 0 );
setMoveKey( spep_0-3 + 40, 1, 208.2, -371.9 , 0 );
setMoveKey( spep_0-3 + 42, 1, 308.5, -610.7 , 0 );


setScaleKey( spep_0 + 0, 1, 2.33, 2.33 );
--setScaleKey( spep_0-3 + 2, 1, 2.34, 2.34 );
setScaleKey( spep_0-3 + 4, 1, 2.35, 2.35 );
setScaleKey( spep_0-3 + 6, 1, 2.36, 2.36 );
setScaleKey( spep_0-3 + 8, 1, 2.38, 2.38 );
setScaleKey( spep_0-3 + 10, 1, 2.39, 2.39 );
setScaleKey( spep_0-3 + 12, 1, 2.4, 2.4 );
setScaleKey( spep_0-3 + 14, 1, 2.41, 2.41 );
setScaleKey( spep_0-3 + 16, 1, 2.42, 2.42 );
setScaleKey( spep_0-3 + 18, 1, 2.43, 2.43 );
setScaleKey( spep_0-3 + 20, 1, 2.45, 2.45 );
setScaleKey( spep_0-3 + 22, 1, 2.46, 2.46 );
setScaleKey( spep_0-3 + 24, 1, 2.47, 2.47 );
setScaleKey( spep_0-3 + 26, 1, 2.48, 2.48 );
setScaleKey( spep_0-3 + 28, 1, 2.49, 2.49 );
setScaleKey( spep_0-3 + 30, 1, 2.5, 2.5 );
setScaleKey( spep_0-3 + 32, 1, 2.51, 2.51 );
setScaleKey( spep_0-3 + 34, 1, 2.53, 2.53 );
setScaleKey( spep_0-3 + 36, 1, 2.54, 2.54 );
setScaleKey( spep_0-3 + 38, 1, 2.55, 2.55 );
setScaleKey( spep_0-3 + 40, 1, 2.56, 2.56 );
setScaleKey( spep_0-3 + 42, 1, 3.34, 3.34 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );


--SE
SE0=playSe( spep_0 + 0, 8 );
SE1=playSe( spep_0 + 15, 1072 );
setSeVolume( spep_0 + 15, 1072, 112 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );


    pauseAll( SP_dodge, 67 );
    
   --敵の固定
   setMoveKey( SP_dodge + 9, 1, 308.5, -610.7 , 0 );
   setScaleKey( SP_dodge + 9, 1, 3.34, 3.34 );
   setRotateKey( SP_dodge + 9, 1, 0 );

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
setDisp( spep_0-3 + 78, 1, 0 );

setMoveKey( spep_0-3 + 44, 1, 410, -849.4 , 0 );
setMoveKey( spep_0-3 + 46, 1, 512.5, -1087.9 , 0 );
setMoveKey( spep_0-3 + 48, 1, 615.9, -1326.3 , 0 );
setMoveKey( spep_0-3 + 50, 1, 720.3, -1564.5 , 0 );
setMoveKey( spep_0-3 + 52, 1, 825.6, -1802.6 , 0 );
setMoveKey( spep_0-3 + 54, 1, 931.8, -2040.6 , 0 );
setMoveKey( spep_0-3 + 56, 1, 966.2, -2104.1 , 0 );
setMoveKey( spep_0-3 + 58, 1, 1000.7, -2167.7 , 0 );
setMoveKey( spep_0-3 + 60, 1, 1035.3, -2231.2 , 0 );
setMoveKey( spep_0-3 + 62, 1, 1070, -2294.7 , 0 );
setMoveKey( spep_0-3 + 64, 1, 1104.7, -2358.2 , 0 );
setMoveKey( spep_0-3 + 66, 1, 1139.4, -2421.7 , 0 );
setMoveKey( spep_0-3 + 68, 1, 1174.2, -2485.1 , 0 );
setMoveKey( spep_0-3 + 70, 1, 1209, -2548.6 , 0 );
setMoveKey( spep_0-3 + 72, 1, 1243.8, -2612.1 , 0 );
setMoveKey( spep_0-3 + 74, 1, 1278.6, -2675.6 , 0 );
setMoveKey( spep_0-3 + 76, 1, 1313.3, -2739.1 , 0 );
setMoveKey( spep_0-3 + 78, 1, 1348, -2802.6 , 0 );

setScaleKey( spep_0-3 + 44, 1, 4.11, 4.11 );
setScaleKey( spep_0-3 + 46, 1, 4.88, 4.88 );
setScaleKey( spep_0-3 + 48, 1, 5.66, 5.66 );
setScaleKey( spep_0-3 + 50, 1, 6.43, 6.43 );
setScaleKey( spep_0-3 + 52, 1, 7.2, 7.2 );
setScaleKey( spep_0-3 + 54, 1, 7.98, 7.98 );
setScaleKey( spep_0-3 + 56, 1, 8.19, 8.19 );
setScaleKey( spep_0-3 + 58, 1, 8.39, 8.39 );
setScaleKey( spep_0-3 + 60, 1, 8.6, 8.6 );
setScaleKey( spep_0-3 + 62, 1, 8.81, 8.81 );
setScaleKey( spep_0-3 + 64, 1, 9.02, 9.02 );
setScaleKey( spep_0-3 + 66, 1, 9.23, 9.23 );
setScaleKey( spep_0-3 + 68, 1, 9.44, 9.44 );
setScaleKey( spep_0-3 + 70, 1, 9.65, 9.65 );
setScaleKey( spep_0-3 + 72, 1, 9.85, 9.85 );
setScaleKey( spep_0-3 + 74, 1, 10.06, 10.06 );
setScaleKey( spep_0-3 + 76, 1, 10.27, 10.27 );
setScaleKey( spep_0-3 + 78, 1, 10.48, 10.48 );

setRotateKey( spep_0-3 + 78, 1, 0 );

-- ** エフェクト等 ** --
kakimozi1 = entryEffect( spep_0 -4 + 0, 155291, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 -4 + 0, kakimozi1, 0, 0, 0 );
setEffMoveKey( spep_0  + 488, kakimozi1, 0, 0, 0 );
setEffScaleKey( spep_0 -4 + 0, kakimozi1, -1.0, 1.0 );
setEffScaleKey( spep_0  + 488, kakimozi1, -1.0, 1.0 );
setEffRotateKey( spep_0 -4 + 0, kakimozi1, 0 );
setEffRotateKey( spep_0  + 488, kakimozi1, 0 );
setEffAlphaKey( spep_0 -4 + 0, kakimozi1, 255 );
setEffAlphaKey( spep_0  + 486, kakimozi1, 255 );
setEffAlphaKey( spep_0  + 487, kakimozi1, 255 );
setEffAlphaKey( spep_0  + 488, kakimozi1, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0 -3 + 44,  906, 32 +3, 0x100, -1, 0,  0, 0 );
setEffShake( spep_0 -3 + 44, shuchusen1, 32 +3, 20 );
setEffMoveKey( spep_0 -3 + 44, shuchusen1,  0, 0 , 0 );
setEffMoveKey( spep_0  + 76, shuchusen1,  0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 44, shuchusen1, 1.3, 2 );
setEffScaleKey( spep_0  + 76, shuchusen1, 1.3, 2 );

setEffRotateKey( spep_0 -3 + 44, shuchusen1, 180 );
setEffRotateKey( spep_0  + 76, shuchusen1, 180 );

setEffAlphaKey( spep_0 -3 + 44, shuchusen1, 27 );
setEffAlphaKey( spep_0 -3 + 46, shuchusen1, 55 );
setEffAlphaKey( spep_0 -3 + 48, shuchusen1, 82 );
setEffAlphaKey( spep_0 -3 + 50, shuchusen1, 109 );
setEffAlphaKey( spep_0 -3 + 52, shuchusen1, 137 );
setEffAlphaKey( spep_0 -3 + 54, shuchusen1, 164 );
setEffAlphaKey( spep_0 -3 + 56, shuchusen1, 191 );
setEffAlphaKey( spep_0  + 74, shuchusen1, 191 );
setEffAlphaKey( spep_0  + 75, shuchusen1, 191 );
setEffAlphaKey( spep_0  + 76, shuchusen1, 0 );

--SE
playSe( spep_0 + 27, 44 );
setSeVolume( spep_0 + 27, 44, 0 );
setSeVolume( spep_0 + 35, 44, 9.88 );
setSeVolume( spep_0 + 36, 44, 19.75 );
setSeVolume( spep_0 + 37, 44, 29.63 );
setSeVolume( spep_0 + 38, 44, 39.50 );
setSeVolume( spep_0 + 39, 44, 49.38 );
setSeVolume( spep_0 + 40, 44, 59.25 );
setSeVolume( spep_0 + 41, 44, 69.13 );
setSeVolume( spep_0 + 42, 44, 79 );

-- ** くろ背景 ** --
entryFadeBg( 0 , 0, 90, 0,  255, 255, 255, 255 ); --くろ 背景

-- ** しろ背景 ** --
entryFade(   0, 0, 4, 4,  255, 255, 255, 255 ); --くろ 背景

--次の準備
spep_1=spep_0+76;


------------------------------------------------------
-- 冒頭溜め〜ジャンプ
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_1 +  0, 155367, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 +  0, tame, 0, 0, 0 );
setEffMoveKey( spep_1 + 216, tame, 0, 0, 0 );
setEffScaleKey( spep_1 +  0, tame, 1.0, 1.0 );
setEffScaleKey( spep_1 + 216, tame, 1.0, 1.0 );
setEffRotateKey( spep_1 +  0, tame, 0 );
setEffRotateKey( spep_1 + 216, tame, 0 );
setEffAlphaKey( spep_1 +  0, tame, 255 );
setEffAlphaKey( spep_1 + 216, tame, 255 );
setEffAlphaKey( spep_1 + 217, tame, 0 );
setEffAlphaKey( spep_1 + 218, tame, 0 );

-- ** エフェクト等 ** --
kamae_f = entryEffect( spep_1 + 197, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 197, kamae_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 416, kamae_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 197, kamae_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 416, kamae_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 197, kamae_f, 0 );
setEffRotateKey( spep_1 + 416, kamae_f, 0 );
setEffAlphaKey( spep_1 + 197, kamae_f, 255 );
setEffAlphaKey( spep_1 + 416, kamae_f, 255 );
setEffAlphaKey( spep_1 + 417, kamae_f, 0 );
setEffAlphaKey( spep_1 + 418, kamae_f, 0 );

-- ** エフェクト等 ** --
kamae_b = entryEffect( spep_1 + 197, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 197, kamae_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 416, kamae_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 197, kamae_b, -1.0, 1.0 );
setEffScaleKey( spep_1 + 416, kamae_b, -1.0, 1.0 );
setEffRotateKey( spep_1 + 197, kamae_b, 0 );
setEffRotateKey( spep_1 + 416, kamae_b, 0 );
setEffAlphaKey( spep_1 + 197, kamae_b, 255 );
setEffAlphaKey( spep_1 + 416, kamae_b, 255 );
setEffAlphaKey( spep_1 + 417, kamae_b, 0 );
setEffAlphaKey( spep_1 + 418, kamae_b, 0 );


--集中線
shuchusen2 = entryEffectLife( spep_1-81 + 90,  906, 138, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-81 + 90, shuchusen2, 138, 20 );
setEffMoveKey( spep_1-81 + 90, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1-81 + 228, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1-81 + 90, shuchusen2, 2.3, 2.42 );
setEffScaleKey( spep_1-81 + 228, shuchusen2, 2.3, 2.42 );

setEffRotateKey( spep_1-81 + 90, shuchusen2, 0 );
setEffRotateKey( spep_1-81 + 228, shuchusen2, 0 );

setEffAlphaKey( spep_1-81 + 90, shuchusen2, 17 );
setEffAlphaKey( spep_1-81 + 92, shuchusen2, 35 );
setEffAlphaKey( spep_1-81 + 94, shuchusen2, 52 );
setEffAlphaKey( spep_1-81 + 96, shuchusen2, 70 );
setEffAlphaKey( spep_1-81 + 98, shuchusen2, 87 );
setEffAlphaKey( spep_1-81 + 100, shuchusen2, 104 );
setEffAlphaKey( spep_1-81 + 102, shuchusen2, 122 );
setEffAlphaKey( spep_1-81 + 104, shuchusen2, 139 );
setEffAlphaKey( spep_1-81 + 106, shuchusen2, 156 );
setEffAlphaKey( spep_1-81 + 108, shuchusen2, 174 );
setEffAlphaKey( spep_1-81 + 110, shuchusen2, 191 );
setEffAlphaKey( spep_1-81 + 227, shuchusen2, 191 );
setEffAlphaKey( spep_1-81 + 228, shuchusen2, 0 );

--敵の動き
setDisp( spep_1-3 + 200, 1, 1 );
setDisp( spep_1-3 + 230, 1, 0 );

changeAnime( spep_1-3 + 200, 1, 118 );

--setMoveKey( spep_1-4 + 200, 1, 264.5, 460.5 , 0 );
setMoveKey( spep_1-4 + 201, 1, 264.5, 460.5 , 0 );
setMoveKey( spep_1-4 + 202, 1, 260.3, 325.9 , 0 );
setMoveKey( spep_1-4 + 203, 1, 260.3, 325.9 , 0 );
setMoveKey( spep_1-4 + 204, 1, 256.1, 196.1 , 0 );
setMoveKey( spep_1-4 + 205, 1, 256.1, 196.1 , 0 );
setMoveKey( spep_1-4 + 206, 1, 252.2, 70.9 , 0 );
setMoveKey( spep_1-4 + 207, 1, 252.2, 70.9 , 0 );
setMoveKey( spep_1-4 + 208, 1, 248.3, -49.4 , 0 );
setMoveKey( spep_1-4 + 209, 1, 248.3, -49.4 , 0 );
setMoveKey( spep_1-4 + 210, 1, 244.7, -165.1 , 0 );
setMoveKey( spep_1-4 + 211, 1, 244.7, -165.1 , 0 );
setMoveKey( spep_1-4 + 212, 1, 241.1, -276 , 0 );
setMoveKey( spep_1-4 + 213, 1, 241.1, -276 , 0 );
setMoveKey( spep_1-4 + 214, 1, 237.8, -382.2 , 0 );
setMoveKey( spep_1-4 + 215, 1, 237.8, -382.2 , 0 );
setMoveKey( spep_1-4 + 216, 1, 234.5, -483.7 , 0 );
setMoveKey( spep_1-4 + 217, 1, 234.5, -483.7 , 0 );
setMoveKey( spep_1-4 + 218, 1, 231.5, -580.4 , 0 );
setMoveKey( spep_1-4 + 219, 1, 231.5, -580.4 , 0 );
setMoveKey( spep_1-4 + 220, 1, 228.6, -672.4 , 0 );
setMoveKey( spep_1-4 + 221, 1, 228.6, -672.4 , 0 );
setMoveKey( spep_1-4 + 222, 1, 225.8, -759.6 , 0 );
setMoveKey( spep_1-4 + 223, 1, 225.8, -759.6 , 0 );
setMoveKey( spep_1-4 + 224, 1, 223.2, -842.1 , 0 );
setMoveKey( spep_1-4 + 225, 1, 223.2, -842.1 , 0 );
setMoveKey( spep_1-4 + 226, 1, 220.7, -919.9 , 0 );
setMoveKey( spep_1-4 + 227, 1, 220.7, -919.9 , 0 );
setMoveKey( spep_1-4 + 228, 1, 218.4, -993 , 0 );
setMoveKey( spep_1-4 + 229, 1, 218.4, -993 , 0 );
setMoveKey( spep_1-3 + 230, 1, 216.2, -1061.3 , 0 );

--setScaleKey( spep_1-4 + 200, 1, 4.49, 4.49 );
setScaleKey( spep_1-4 + 201, 1, 4.49, 4.49 );
setScaleKey( spep_1-4 + 202, 1, 4.45, 4.45 );
setScaleKey( spep_1-4 + 203, 1, 4.45, 4.45 );
setScaleKey( spep_1-4 + 204, 1, 4.41, 4.41 );
setScaleKey( spep_1-4 + 205, 1, 4.41, 4.41 );
setScaleKey( spep_1-4 + 206, 1, 4.37, 4.37 );
setScaleKey( spep_1-4 + 207, 1, 4.37, 4.37 );
setScaleKey( spep_1-4 + 208, 1, 4.33, 4.33 );
setScaleKey( spep_1-4 + 209, 1, 4.33, 4.33 );
setScaleKey( spep_1-4 + 210, 1, 4.29, 4.29 );
setScaleKey( spep_1-4 + 211, 1, 4.29, 4.29 );
setScaleKey( spep_1-4 + 212, 1, 4.25, 4.25 );
setScaleKey( spep_1-4 + 213, 1, 4.25, 4.25 );
setScaleKey( spep_1-4 + 214, 1, 4.22, 4.22 );
setScaleKey( spep_1-4 + 215, 1, 4.22, 4.22 );
setScaleKey( spep_1-4 + 216, 1, 4.18, 4.18 );
setScaleKey( spep_1-4 + 217, 1, 4.18, 4.18 );
setScaleKey( spep_1-4 + 218, 1, 4.15, 4.15 );
setScaleKey( spep_1-4 + 219, 1, 4.15, 4.15 );
setScaleKey( spep_1-4 + 220, 1, 4.12, 4.12 );
setScaleKey( spep_1-4 + 221, 1, 4.12, 4.12 );
setScaleKey( spep_1-4 + 222, 1, 4.09, 4.09 );
setScaleKey( spep_1-4 + 223, 1, 4.09, 4.09 );
setScaleKey( spep_1-4 + 224, 1, 4.07, 4.07 );
setScaleKey( spep_1-4 + 225, 1, 4.07, 4.07 );
setScaleKey( spep_1-4 + 226, 1, 4.04, 4.04 );
setScaleKey( spep_1-4 + 227, 1, 4.04, 4.04 );
setScaleKey( spep_1-4 + 228, 1, 4.02, 4.02 );
setScaleKey( spep_1-4 + 229, 1, 4.02, 4.02 );
setScaleKey( spep_1-3 + 230, 1, 3.99, 3.99 );

setRotateKey( spep_1-3 + 200, 1, 30.6 );
setRotateKey( spep_1-3 + 230, 1, 30.6 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_1+50  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_1+50  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_1 +62, 190006, 72, 0x100, -1, 0, 80, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_1 +62,  ctgogo,  80,  510);
setEffMoveKey(  spep_1 +134,  ctgogo,  80,  510);

setEffAlphaKey( spep_1 +62, ctgogo, 0 );
setEffAlphaKey( spep_1 + 63, ctgogo, 255 );
setEffAlphaKey( spep_1 + 64, ctgogo, 255 );
setEffAlphaKey( spep_1 + 120, ctgogo, 255 );
setEffAlphaKey( spep_1 + 122, ctgogo, 191 );
setEffAlphaKey( spep_1 + 124, ctgogo, 112 );
setEffAlphaKey( spep_1 + 134, ctgogo, 64 );

setEffRotateKey(  spep_1 +62,  ctgogo,  0);
setEffRotateKey(  spep_1 +134,  ctgogo,  0);

setEffScaleKey(  spep_1 +62,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_1 +124,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_1 +134,  ctgogo, -1.07, 1.07 );

--SE
playSe( spep_1 + 62, 1018 );
playSe( spep_1 + 7, 1182 );
setSeVolume( spep_1 + 7, 1182, 79 );
se_1044 = playSe( spep_1 + 8, 1044 );
playSe( spep_1 + 8, 1016 );
setSeVolume( spep_1 + 8, 1016, 63 );
playSe( spep_1 + 8, 1155 );
setSeVolume( spep_1 + 8, 1155, 63 );
playSe( spep_1 + 15, 49 );
setSeVolume( spep_1 + 15, 49, 126 );
playSe( spep_1 + 23, 1016 );
setSeVolume( spep_1 + 23, 1016, 56 );
playSe( spep_1 + 30, 49 );
playSe( spep_1 + 39, 1016 );
setSeVolume( spep_1 + 39, 1016, 71 );
playSe( spep_1 + 45, 49 );
playSe( spep_1 + 47, 49 );
playSe( spep_1 + 56, 1016 );
setSeVolume( spep_1 + 56, 1016, 63 );
playSe( spep_1 + 68, 1230 );
setSeVolume( spep_1 + 68, 1230, 89 );
playSe( spep_1 + 74, 1035 );
setSeVolume( spep_1 + 74, 1035, 112 );
playSe( spep_1 + 74, 1024 );
setSeVolume( spep_1 + 74, 1024, 89 );
playSe( spep_1 + 176, 1182 );
playSe( spep_1 + 176, 1207 );
setSeVolume( spep_1 + 176, 1207, 0 );
setSeVolume( spep_1 + 178, 1207, 0 );
setSeVolume( spep_1 + 179, 1207, 8 );
setSeVolume( spep_1 + 180, 1207, 16 );
setSeVolume( spep_1 + 181, 1207, 24 );
setSeVolume( spep_1 + 182, 1207, 32 );
setSeVolume( spep_1 + 183, 1207, 40 );
setSeVolume( spep_1 + 184, 1207, 48 );
setSeVolume( spep_1 + 185, 1207, 56 );
playSe( spep_1 + 176, 1231 );
playSe( spep_1 + 176, 1045 );
playSe( spep_1 + 179, 1054 );
se_1183 = playSe( spep_1 + 197, 1183 );
setSeVolume( spep_1 + 197, 1183, 126 );
playSe( spep_1 + 266, 1042 );
setSeVolume( spep_1 + 266, 1042, 71 );
se_1243 = playSe( spep_1 + 314, 1243 );
se_1227 = playSe( spep_1 + 314, 1227 );
setSeVolume( spep_1 + 314, 1227, 63 );
se_1176 = playSe( spep_1 + 314, 1176 );
se_1161 = playSe( spep_1 + 314, 1161 );
setSeVolume( spep_1 + 314, 1161, 56 );
se_1211 = playSe( spep_1 + 334, 1211 );
setSeVolume( spep_1 + 334, 1211, 63 );
playSe( spep_1 + 353, 1003 );
se_1147 = playSe( spep_1 + 356, 1147 );
setSeVolume( spep_1 + 356, 1147, 63 );
se_1168 = playSe( spep_1 + 362, 1168 );
setSeVolume( spep_1 + 362, 1168, 0 );
se_1148 = playSe( spep_1 + 398, 1148 );
setSeVolume( spep_1 + 398, 1148, 79 );

stopSe( spep_1 + 74, se_1044, 0 );
stopSe( spep_1 + 316, se_1183, 18 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 420, 0,  255, 255, 255, 255 ); --くろ 背景

--次の準備
spep_2=spep_1+412;
------------------------------------------------------
-- 遠景
------------------------------------------------------
-- ** エフェクト等 ** --
tame2_f = entryEffect( spep_2 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame2_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 80, tame2_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tame2_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 80, tame2_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame2_f, 0 );
setEffRotateKey( spep_2 + 80, tame2_f, 0 );
setEffAlphaKey( spep_2 + 0, tame2_f, 255 );
setEffAlphaKey( spep_2 + 80, tame2_f, 255 );

-- ** エフェクト等 ** --
tame2_b = entryEffect( spep_2 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame2_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 80, tame2_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tame2_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 80, tame2_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame2_b, 0 );
setEffRotateKey( spep_2 + 80, tame2_b, 0 );
setEffAlphaKey( spep_2 + 0, tame2_b, 255 );
setEffAlphaKey( spep_2 + 80, tame2_b, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 78, 1, 0  );

changeAnime( spep_2 + 0, 1, 118 );

setMoveKey( spep_2 + 0, 1, 10.3, -237 , 0 );
setMoveKey( spep_2 + 2, 1, 12.4, -243.4 , 0 );
setMoveKey( spep_2 + 4, 1, 10.4, -237.9 , 0 );
setMoveKey( spep_2 + 6, 1, 14.4, -240.4 , 0 );
setMoveKey( spep_2 + 8, 1, 10.4, -238.8 , 0 );
setMoveKey( spep_2 + 10, 1, 12.4, -243.2 , 0 );
setMoveKey( spep_2 + 12, 1, 10.4, -239.7 , 0 );
setMoveKey( spep_2 + 14, 1, 14.5, -242.1 , 0 );
setMoveKey( spep_2 + 16, 1, 10.5, -240.5 , 0 );
setMoveKey( spep_2 + 18, 1, 12.5, -242.9 , 0 );
setMoveKey( spep_2 + 20, 1, 10.5, -241.3 , 0 );
setMoveKey( spep_2 + 22, 1, 12.5, -243.7 , 0 );
setMoveKey( spep_2 + 24, 1, 10.6, -242.1 , 0 );
setMoveKey( spep_2 + 26, 1, 12.6, -242.5 , 0 );
setMoveKey( spep_2 + 28, 1, 10.6, -242.9 , 0 );
setMoveKey( spep_2 + 30, 1, 10.6, -245.2 , 0 );
setMoveKey( spep_2 + 32, 1, 10.6, -243.6 , 0 );
setMoveKey( spep_2 + 34, 1, 14.6, -247.9 , 0 );
setMoveKey( spep_2 + 36, 1, 10.6, -244.3 , 0 );
setMoveKey( spep_2 + 38, 1, 14.7, -246.6 , 0 );
setMoveKey( spep_2 + 40, 1, 10.7, -244.9 , 0 );
setMoveKey( spep_2 + 42, 1, 12.7, -249.2 , 0 );
setMoveKey( spep_2 + 44, 1, 10.7, -245.5 , 0 );
setMoveKey( spep_2 + 46, 1, 12.7, -247.8 , 0 );
setMoveKey( spep_2 + 48, 1, 10.7, -246.1 , 0 );
setMoveKey( spep_2 + 50, 1, 14.7, -248.4 , 0 );
setMoveKey( spep_2 + 52, 1, 10.8, -246.7 , 0 );
setMoveKey( spep_2 + 54, 1, 12.8, -250.9 , 0 );
setMoveKey( spep_2 + 56, 1, 10.8, -247.2 , 0 );
setMoveKey( spep_2 + 58, 1, 12.8, -249.4 , 0 );
setMoveKey( spep_2 + 60, 1, 12.8, -249.7 , 0 );
setMoveKey( spep_2 + 62, 1, 14.8, -257.9 , 0 );
setMoveKey( spep_2 + 64, 1, 12.8, -250.1 , 0 );
setMoveKey( spep_2 + 66, 1, 16.8, -252.3 , 0 );
setMoveKey( spep_2 + 68, 1, 12.8, -250.5 , 0 );
setMoveKey( spep_2 + 70, 1, 14.8, -256.7 , 0 );
setMoveKey( spep_2 + 72, 1, 12.9, -250.9 , 0 );
setMoveKey( spep_2 + 74, 1, 16.9, -253.1 , 0 );
setMoveKey( spep_2 + 76, 1, 12.9, -251.3 , 0 );
setMoveKey( spep_2 + 78, 1, 14.9, -255.4 , 0 );

setScaleKey( spep_2 + 0, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 8, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 10, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 28, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 30, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 54, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 56, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 78, 1, 0.62, 0.62 );

setRotateKey( spep_2 + 0, 1, 13.3 );
setRotateKey( spep_2 + 78, 1, 13.3 );

--SE
se_1214 = playSe( spep_2 + 6, 1214 );
se_1044 = playSe( spep_2 + 6, 1044 );
setSeVolume( spep_2 + 6, 1044, 63 );
setSeVolume( spep_2 + 20, 1168, 0 );
setSeVolume( spep_2 + 21, 1168, 50 );
setSeVolume( spep_2 + 22, 1168, 100 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 82, 0,  255, 255, 255, 255 ); --くろ 背景

--白フェード
entryFade( spep_2 + 72, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3=spep_2+80;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );
stopSe( spep_3 + 5, se_1243, 0 );
stopSe( spep_3 + 5, se_1227, 0 );
stopSe( spep_3 + 5, se_1176, 0 );
stopSe( spep_3 + 5, se_1161, 0 );
stopSe( spep_3 + 5, se_1211, 0 );
stopSe( spep_3 + 5, se_1147, 0 );
stopSe( spep_3 + 5, se_1168, 0 );
stopSe( spep_3 + 5, se_1148, 0 );
stopSe( spep_3 + 5, se_1214, 0 );
stopSe( spep_3 + 5, se_1044, 0 );


--白フェード
entryFade( spep_3 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;
------------------------------------------------------
-- 発射
------------------------------------------------------
-- ** エフェクト等 ** --
hassya = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hassya, 0, 0, 0 );
setEffMoveKey( spep_4 + 96, hassya, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hassya, -1.0, 1.0 );
setEffScaleKey( spep_4 + 96, hassya, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hassya, 0 );
setEffRotateKey( spep_4 + 96, hassya, 0 );
setEffAlphaKey( spep_4 + 0, hassya, 255 );
setEffAlphaKey( spep_4 + 96, hassya, 255 );
setEffAlphaKey( spep_4 + 97, hassya, 0 );
setEffAlphaKey( spep_4 + 98, hassya, 0 );

-- ** エフェクト等 ** --
kakimozi2 = entryEffect( spep_4 + 0, 155290, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kakimozi2, 0, 0, 0 );
setEffMoveKey( spep_4 + 360, kakimozi2, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kakimozi2, -1.0, 1.0 );
setEffScaleKey( spep_4 + 360, kakimozi2, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kakimozi2, 0 );
setEffRotateKey( spep_4 + 360, kakimozi2, 0 );
setEffAlphaKey( spep_4 + 0, kakimozi2, 255 );
setEffAlphaKey( spep_4 + 360, kakimozi2, 255 );

--SE
playSe( spep_4 + 22, 1003 );
setSeVolume( spep_4 + 22, 1003, 63 );
playSe( spep_4 + 30, 1205 );
setSeVolume( spep_4 + 30, 1205, 56 );
playSe( spep_4 + 30, 1213 );
setSeVolume( spep_4 + 30, 1213, 56 );
playSe( spep_4 + 30, 1177 );
setSeVolume( spep_4 + 30, 1177, 71 );
playSe( spep_4 + 30, 1027 );
setSeVolume( spep_4 + 30, 1027, 79 );
playSe( spep_4 + 30, 1146 );
se_1211 = playSe( spep_4 + 43, 1211 );
se_1215 = playSe( spep_4 + 51, 1215 );
setSeVolume( spep_4 + 51, 1215, 0 );
setSeVolume( spep_4 + 77, 1215, 0 );
setSeVolume( spep_4 + 78, 1215, 2.47 );
setSeVolume( spep_4 + 79, 1215, 4.94 );
setSeVolume( spep_4 + 80, 1215, 7.41 );
setSeVolume( spep_4 + 81, 1215, 9.88 );
setSeVolume( spep_4 + 82, 1215, 12.34 );
setSeVolume( spep_4 + 83, 1215, 14.81 );
setSeVolume( spep_4 + 84, 1215, 17.28 );
setSeVolume( spep_4 + 85, 1215, 19.75 );
setSeVolume( spep_4 + 86, 1215, 22.22 );
setSeVolume( spep_4 + 87, 1215, 24.69 );
setSeVolume( spep_4 + 88, 1215, 27.16 );
setSeVolume( spep_4 + 89, 1215, 29.63 );
setSeVolume( spep_4 + 90, 1215, 32.09 );
setSeVolume( spep_4 + 91, 1215, 34.56 );
setSeVolume( spep_4 + 92, 1215, 37.03 );
setSeVolume( spep_4 + 93, 1215, 39.5 );
setSeVolume( spep_4 + 94, 1215, 41.97 );
setSeVolume( spep_4 + 95, 1215, 44.44 );
setSeVolume( spep_4 + 96, 1215, 46.91 );
setSeVolume( spep_4 + 97, 1215, 49.38 );
setSeVolume( spep_4 + 98, 1215, 51.84 );
setSeVolume( spep_4 + 99, 1215, 54.31 );
setSeVolume( spep_4 + 100, 1215, 56.78 );
setSeVolume( spep_4 + 101, 1215, 59.25 );
setSeVolume( spep_4 + 102, 1215, 61.72 );
setSeVolume( spep_4 + 103, 1215, 64.19 );
setSeVolume( spep_4 + 104, 1215, 66.66 );
setSeVolume( spep_4 + 105, 1215, 69.13 );
setSeVolume( spep_4 + 106, 1215, 71.59 );
setSeVolume( spep_4 + 107, 1215, 74.06 );
setSeVolume( spep_4 + 108, 1215, 76.53 );
setSeVolume( spep_4 + 109, 1215, 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 100, 0,  255, 255, 255, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 96;
------------------------------------------------------
-- 迫る
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 60, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 60, hit_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 60, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 60, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_5 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 60, hit_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_b, -1.0, 1.0 );
setEffScaleKey( spep_5 + 60, hit_b, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 60, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 60, hit_b, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_5 + 0,  906, 60, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 0, shuchusen3, 60, 20 );
setEffMoveKey( spep_5 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_5 + 60, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen3, 1.21, 1.84 );
setEffScaleKey( spep_5 + 60, shuchusen3, 1.21, 1.84 );

setEffRotateKey( spep_5 + 0, shuchusen3, 0 );
setEffRotateKey( spep_5 + 60, shuchusen3, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen3, 204 );
setEffAlphaKey( spep_5 + 60, shuchusen3, 204 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 58, 1, 0 );

changeAnime( spep_5 + 0, 1, 118 );

setMoveKey( spep_5 + 0, 1, 10.9, -329.4 , 0 );
setMoveKey( spep_5 + 2, 1, 11.3, -323.3 , 0 );
setMoveKey( spep_5 + 4, 1, 11.6, -317.1 , 0 );
setMoveKey( spep_5 + 6, 1, 11.9, -311 , 0 );
setMoveKey( spep_5 + 8, 1, 12.3, -304.9 , 0 );
setMoveKey( spep_5 + 10, 1, 12.6, -298.8 , 0 );
setMoveKey( spep_5 + 12, 1, 12.9, -292.7 , 0 );
setMoveKey( spep_5 + 14, 1, 13.2, -286.6 , 0 );
setMoveKey( spep_5 + 16, 1, 13.6, -280.5 , 0 );
setMoveKey( spep_5 + 18, 1, 13.9, -274.3 , 0 );
setMoveKey( spep_5 + 20, 1, 14.2, -268.2 , 0 );
setMoveKey( spep_5 + 22, 1, 14.6, -262.1 , 0 );
setMoveKey( spep_5 + 24, 1, 14.9, -256 , 0 );
setMoveKey( spep_5 + 26, 1, 15.2, -249.8 , 0 );
setMoveKey( spep_5 + 28, 1, 15.6, -243.7 , 0 );
setMoveKey( spep_5 + 30, 1, 15.9, -237.6 , 0 );
setMoveKey( spep_5 + 32, 1, 16.2, -231.5 , 0 );
setMoveKey( spep_5 + 34, 1, 16.6, -225.3 , 0 );
setMoveKey( spep_5 + 36, 1, 17.2, -221.9 , 0 );
setMoveKey( spep_5 + 38, 1, 17.8, -218.4 , 0 );
setMoveKey( spep_5 + 40, 1, 18.4, -214.8 , 0 );
setMoveKey( spep_5 + 42, 1, 19, -211.4 , 0 );
setMoveKey( spep_5 + 44, 1, 19.7, -207.9 , 0 );
setMoveKey( spep_5 + 46, 1, 20.3, -204.4 , 0 );
setMoveKey( spep_5 + 48, 1, 20.9, -200.9 , 0 );
setMoveKey( spep_5 + 50, 1, 21.5, -197.4 , 0 );
setMoveKey( spep_5 + 52, 1, 22.1, -193.9 , 0 );
setMoveKey( spep_5 + 54, 1, 22.8, -190.5 , 0 );
setMoveKey( spep_5 + 56, 1, 23.4, -187 , 0 );
setMoveKey( spep_5 + 58, 1, 24.1, -183.5 , 0 );

setScaleKey( spep_5 + 0, 1, 0.62, 0.62 );
setScaleKey( spep_5 + 2, 1, 0.64, 0.64 );
setScaleKey( spep_5 + 4, 1, 0.66, 0.66 );
setScaleKey( spep_5 + 6, 1, 0.68, 0.68 );
setScaleKey( spep_5 + 8, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 10, 1, 0.72, 0.72 );
setScaleKey( spep_5 + 12, 1, 0.73, 0.73 );
setScaleKey( spep_5 + 14, 1, 0.75, 0.75 );
setScaleKey( spep_5 + 16, 1, 0.77, 0.77 );
setScaleKey( spep_5 + 18, 1, 0.79, 0.79 );
setScaleKey( spep_5 + 20, 1, 0.81, 0.81 );
setScaleKey( spep_5 + 22, 1, 0.83, 0.83 );
setScaleKey( spep_5 + 24, 1, 0.85, 0.85 );
setScaleKey( spep_5 + 26, 1, 0.87, 0.87 );
setScaleKey( spep_5 + 28, 1, 0.89, 0.89 );
setScaleKey( spep_5 + 30, 1, 0.9, 0.9 );
setScaleKey( spep_5 + 32, 1, 0.92, 0.92 );
setScaleKey( spep_5 + 34, 1, 0.94, 0.94 );
setScaleKey( spep_5 + 36, 1, 0.98, 0.98 );
setScaleKey( spep_5 + 38, 1, 1.01, 1.01 );
setScaleKey( spep_5 + 40, 1, 1.05, 1.05 );
setScaleKey( spep_5 + 42, 1, 1.08, 1.08 );
setScaleKey( spep_5 + 44, 1, 1.12, 1.12 );
setScaleKey( spep_5 + 46, 1, 1.15, 1.15 );
setScaleKey( spep_5 + 48, 1, 1.19, 1.19 );
setScaleKey( spep_5 + 50, 1, 1.23, 1.23 );
setScaleKey( spep_5 + 52, 1, 1.26, 1.26 );
setScaleKey( spep_5 + 54, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 56, 1, 1.33, 1.33 );
setScaleKey( spep_5 + 58, 1, 1.37, 1.37 );

setRotateKey( spep_5 + 0, 1, 13.3 );
setRotateKey( spep_5 + 58, 1, 13.3 );

--SE
playSe( spep_5 + 12, 1021 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 62, 0,  255, 255, 255, 255 ); --くろ 背景

--白フェード
entryFade( spep_5 + 52, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 60;
------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_6 + 160, finish, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish, -1.1, 1.1 );
setEffScaleKey( spep_6 + 160, finish, -1.1, 1.1 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 160, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 160, finish, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_6 + 0,  906, 152, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 0, shuchusen4, 152, 20 );
setEffMoveKey( spep_6 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_6 + 152, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen4, 1.21, 1.84 );
setEffScaleKey( spep_6 + 152, shuchusen4, 1.21, 1.84 );

setEffRotateKey( spep_6 + 0, shuchusen4, 0.3 );
setEffRotateKey( spep_6 + 152, shuchusen4, 0.3 );

setEffAlphaKey( spep_6 + 0, shuchusen4, 204 );
setEffAlphaKey( spep_6 + 146, shuchusen4, 204 );
setEffAlphaKey( spep_6 + 148, shuchusen4, 136 );
setEffAlphaKey( spep_6 + 150, shuchusen4, 68 );
setEffAlphaKey( spep_6 + 152, shuchusen4, 0 );

--SE
playSe( spep_6 + 13, 1182 );
playSe( spep_6 + 13, 1159 );
playSe( spep_6 + 13, 1024 );
setSeVolume( spep_6 + 13, 1024, 79 );
playSe( spep_6 + 42, 1023 );
setSeVolume( spep_6 + 42, 1023, 79 );
playSe( spep_6 + 58, 1160 );
setSeVolume( spep_6 + 58, 1160, 89 );
stopSe( spep_6 + 27, se_1211, 0 );
stopSe( spep_6 + 13, se_1215, 0 );

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 10 );
endPhase( spep_6 + 150 );
end