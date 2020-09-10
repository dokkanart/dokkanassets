--1019960:ブルマ(少女期)_孫くんやっつけて！
--sp_effect_b1_00108

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
SP_01=	155257	;--	カプセル取り出し〜バイク出現
SP_02=	155258	;--	バイクに乗る
SP_03=	155259	;--	手前に走り出す〜ジャンプ
SP_04=	155260	;--	手前に走り出す〜ジャンプ
SP_05=	155261	;--	悟空落下〜如意棒で叩く
SP_06=	155262	;--	悟空落下〜如意棒で叩く
SP_07=	155264	;--	ブルマ＆悟空着地＆敵落下
SP_08=	155266	;--	ブルマ＆悟空着地＆敵落下

--味方側
SP_01x=	155257	;--	カプセル取り出し〜バイク出現
SP_02x=	155258	;--	バイクに乗る
SP_03x=	155259	;--	手前に走り出す〜ジャンプ
SP_04x=	155260	;--	手前に走り出す〜ジャンプ
SP_05x=	155261	;--	悟空落下〜如意棒で叩く
SP_06x=	155263	;--	悟空落下〜如意棒で叩く
SP_07x=	155265	;--	ブルマ＆悟空着地＆敵落下
SP_08x=	155266	;--	ブルマ＆悟空着地＆敵落下

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

setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);

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

--adjustAttackerLabel( 0, 205);
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- カメラ寄り→突進
------------------------------------------------------
-- ** はじめの準備 ** --
spep_0 = 0;
-- ** エフェクト等 ** --
Kapsel = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, Kapsel, 0, 0, 0 );
setEffMoveKey( spep_0 + 264, Kapsel, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, Kapsel, 1.0, 1.0 );
setEffScaleKey( spep_0 + 264, Kapsel, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, Kapsel, 0 );
setEffRotateKey( spep_0 + 264, Kapsel, 0 );
setEffAlphaKey( spep_0 + 0, Kapsel, 255 );
setEffAlphaKey( spep_0 + 264, Kapsel, 255 );

--SE
se_0021 = playSe( spep_0 + 2, 21 );
setSeVolume( spep_0 + 2, 21, 79 );
playSe( spep_0 + 4, 27 );
setSeVolume( spep_0 + 4, 27, 63 );
se_1041 = playSe( spep_0 + 4, 1041 );
playSe( spep_0 + 65, 1117 );
setSeVolume( spep_0 + 65, 1117, 79 );
playSe( spep_0 + 149, 1014 );
setSeVolume( spep_0 + 149, 1014, 89 );
playSe( spep_0 + 149, 1114 );
playSe( spep_0 + 149, 1190 );
setSeVolume( spep_0 + 149, 1190, 79 );
playSe( spep_0 + 160, 10 );
setSeVolume( spep_0 + 160, 10, 0 );
setSeVolume( spep_0 + 164, 10, 0 );
setSeVolume( spep_0 + 165, 10, 4.62 );
setSeVolume( spep_0 + 166, 10, 9.23 );
setSeVolume( spep_0 + 167, 10, 13.85 );
setSeVolume( spep_0 + 168, 10, 18.46 );
setSeVolume( spep_0 + 169, 10, 23.08 );
setSeVolume( spep_0 + 170, 10, 27.69 );
setSeVolume( spep_0 + 171, 10, 32.31 );
setSeVolume( spep_0 + 172, 10, 36.92 );
setSeVolume( spep_0 + 173, 10, 41.54 );
setSeVolume( spep_0 + 174, 10, 46.15 );
setSeVolume( spep_0 + 175, 10, 50.77 );
setSeVolume( spep_0 + 176, 10, 55.38 );
setSeVolume( spep_0 + 177, 10, 60 );
playSe( spep_0 + 187, 8 );
setSeVolume( spep_0 + 187, 8, 0 );
setSeVolume( spep_0 + 187, 8, 0 );
setSeVolume( spep_0 + 188, 8, 3 );
setSeVolume( spep_0 + 189, 8, 6 );
setSeVolume( spep_0 + 190, 8, 9 );
setSeVolume( spep_0 + 191, 8, 12 );
setSeVolume( spep_0 + 192, 8, 15 );
setSeVolume( spep_0 + 193, 8, 18 );
setSeVolume( spep_0 + 194, 8, 21 );
setSeVolume( spep_0 + 195, 8, 24 );
setSeVolume( spep_0 + 196, 8, 27 );
setSeVolume( spep_0 + 197, 8, 30 );
setSeVolume( spep_0 + 198, 8, 33 );
setSeVolume( spep_0 + 199, 8, 36 );
setSeVolume( spep_0 + 200, 8, 39 );
setSeVolume( spep_0 + 201, 8, 42 );
setSeVolume( spep_0 + 202, 8, 45 );
setSeVolume( spep_0 + 203, 8, 48 );
setSeVolume( spep_0 + 204, 8, 51 );
setSeVolume( spep_0 + 205, 8, 54 );
setSeVolume( spep_0 + 206, 8, 57 );
setSeVolume( spep_0 + 207, 8, 60 );
setSeVolume( spep_0 + 208, 8, 63 );
se_1150 = playSe( spep_0 + 263, 1150); 
setSeVolume( spep_0 + 263, 1150, 0 );

stopSe( spep_0 + 11, se_0021, 0 );
stopSe( spep_0 + 10, se_1041, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 168, 0, 0, 0, 0, 255 ); --黒 背景

--次の準備
spep_1 = spep_0+264;
------------------------------------------------------
-- バイクに乗る
------------------------------------------------------
-- ** エフェクト等 ** --
bike = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, bike, 0, 0, 0 );
setEffMoveKey( spep_1 + 100, bike, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, bike, 1.0, 1.0 );
setEffScaleKey( spep_1 + 100, bike, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, bike, 0 );
setEffRotateKey( spep_1 + 100, bike, 0 );
setEffAlphaKey( spep_1 + 0, bike, 255 );
setEffAlphaKey( spep_1 + 100, bike, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_1+16 , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_1+16  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
playSe( spep_1 + 19, 1013 );
setSeVolume( spep_1 + 19, 1013, 63 );
playSe( spep_1 + 28, 1018 );
setSeVolume( spep_1 + 24, 1150, 0.00 );
setSeVolume( spep_1 + 25, 1150, 17.75 );
setSeVolume( spep_1 + 26, 1150, 35.50 );
setSeVolume( spep_1 + 27, 1150, 53.25 );
setSeVolume( spep_1 + 28, 1150, 71.00 );


stopSe( spep_1 + 37, se_1150, 2 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 102, 0, 0, 0, 0, 255 ); --黒 背景

--白フェード
entryFade( spep_1 + 92, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2 = spep_1+100;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

--白フェード
entryFade( spep_2 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
------------------------------------------------------
-- 手前に走り出す〜ジャンプ
------------------------------------------------------
-- ** エフェクト等 ** --
jump_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, jump_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 234, jump_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, jump_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 234, jump_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, jump_f, 0 );
setEffRotateKey( spep_3 + 234, jump_f, 0 );
setEffAlphaKey( spep_3 + 0, jump_f, 255 );
setEffAlphaKey( spep_3 + 234, jump_f, 255 );
setEffAlphaKey( spep_3 + 235, jump_f, 0 );
setEffAlphaKey( spep_3 + 236, jump_f, 0 );

-- ** エフェクト等 ** --
jump_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, jump_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 234, jump_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, jump_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 234, jump_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, jump_b, 0 );
setEffRotateKey( spep_3 + 234, jump_b, 0 );
setEffAlphaKey( spep_3 + 0, jump_b, 255 );
setEffAlphaKey( spep_3 + 234, jump_b, 255 );
setEffAlphaKey( spep_3 + 235, jump_b, 0 );
setEffAlphaKey( spep_3 + 236, jump_b, 0 );

--SE
SE1=playSe( spep_3-16 + 16, 1106 );
SE2=playSe( spep_3-16 + 23, 1108 );
SE3=playSe( spep_3-16 + 34, 1106 );
SE4=playSe( spep_3-16 + 34, 1189 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 +50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE1, 0 );
    stopSe( SP_dodge - 12, SE2, 0 );
    stopSe( SP_dodge - 12, SE3, 0 );
    stopSe( SP_dodge - 12, SE4, 0 );

    pauseAll( SP_dodge, 67 );
    

    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,-1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );   -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100, -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);

    --敵の固定
    --setMoveKey( SP_dodge + 32, 1, 52.3, 0.3 , 0 );
    --setScaleKey( SP_dodge + 32, 1, 1.41, 1.41 );
    --setRotateKey( SP_dodge + 32, 1, 2.5 );
    
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    setMoveKey( SP_dodge + 10,   0,-2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--文字エントリー
ctgyururu = entryEffectLife( spep_3-3 + 60,  10030, 46, 0x100, -1, 0, -107, 141.9 );

setEffMoveKey( spep_3-3 + 60, ctgyururu, -107, 141.9 , 0 );
setEffMoveKey( spep_3-3 + 62, ctgyururu, -89.5, 161.9 , 0 );
setEffMoveKey( spep_3-3 + 64, ctgyururu, -72, 181.9 , 0 );
setEffMoveKey( spep_3-3 + 66, ctgyururu, -54.5, 201.9 , 0 );
setEffMoveKey( spep_3-3 + 68, ctgyururu, -37, 221.9 , 0 );
setEffMoveKey( spep_3-3 + 70, ctgyururu, -35.6, 222.4 , 0 );
setEffMoveKey( spep_3-3 + 72, ctgyururu, -34.3, 222.8 , 0 );
setEffMoveKey( spep_3-3 + 74, ctgyururu, -33, 223.3 , 0 );
setEffMoveKey( spep_3-3 + 76, ctgyururu, -31.7, 223.7 , 0 );
setEffMoveKey( spep_3-3 + 78, ctgyururu, -30.4, 224.1 , 0 );
setEffMoveKey( spep_3-3 + 80, ctgyururu, -29.1, 224.6 , 0 );
setEffMoveKey( spep_3-3 + 82, ctgyururu, -27.8, 225 , 0 );
setEffMoveKey( spep_3-3 + 84, ctgyururu, -26.5, 225.4 , 0 );
setEffMoveKey( spep_3-3 + 86, ctgyururu, -25.1, 225.9 , 0 );
setEffMoveKey( spep_3-3 + 88, ctgyururu, -23.8, 226.3 , 0 );
setEffMoveKey( spep_3-3 + 90, ctgyururu, -22.5, 226.8 , 0 );
setEffMoveKey( spep_3-3 + 92, ctgyururu, -21.2, 227.2 , 0 );
setEffMoveKey( spep_3-3 + 94, ctgyururu, -19.9, 227.6 , 0 );
setEffMoveKey( spep_3-3 + 96, ctgyururu, -18.6, 228.1 , 0 );
setEffMoveKey( spep_3-3 + 98, ctgyururu, -17.3, 228.5 , 0 );
setEffMoveKey( spep_3-3 + 100, ctgyururu, -16, 228.9 , 0 );
setEffMoveKey( spep_3-3 + 102, ctgyururu, -11.3, 234.6 , 0 );
setEffMoveKey( spep_3-3 + 104, ctgyururu, -6.6, 240.3 , 0 );
setEffMoveKey( spep_3-3 + 106, ctgyururu, -2, 245.9 , 0 );

setEffScaleKey( spep_3-3 + 60, ctgyururu, 1, 1 );
setEffScaleKey( spep_3-3 + 62, ctgyururu, 1.07, 1.07 );
setEffScaleKey( spep_3-3 + 64, ctgyururu, 1.14, 1.14 );
setEffScaleKey( spep_3-3 + 66, ctgyururu, 1.21, 1.21 );
setEffScaleKey( spep_3-3 + 68, ctgyururu, 1.27, 1.27 );
setEffScaleKey( spep_3-3 + 70, ctgyururu, 1.29, 1.29 );
setEffScaleKey( spep_3-3 + 72, ctgyururu, 1.3, 1.3 );
setEffScaleKey( spep_3-3 + 74, ctgyururu, 1.31, 1.31 );
setEffScaleKey( spep_3-3 + 76, ctgyururu, 1.32, 1.32 );
setEffScaleKey( spep_3-3 + 78, ctgyururu, 1.33, 1.33 );
setEffScaleKey( spep_3-3 + 80, ctgyururu, 1.34, 1.34 );
setEffScaleKey( spep_3-3 + 82, ctgyururu, 1.35, 1.35 );
setEffScaleKey( spep_3-3 + 84, ctgyururu, 1.36, 1.36 );
setEffScaleKey( spep_3-3 + 86, ctgyururu, 1.37, 1.37 );
setEffScaleKey( spep_3-3 + 88, ctgyururu, 1.38, 1.38 );
setEffScaleKey( spep_3-3 + 90, ctgyururu, 1.39, 1.39 );
setEffScaleKey( spep_3-3 + 92, ctgyururu, 1.4, 1.4 );
setEffScaleKey( spep_3-3 + 94, ctgyururu, 1.41, 1.41 );
setEffScaleKey( spep_3-3 + 96, ctgyururu, 1.42, 1.42 );
setEffScaleKey( spep_3-3 + 98, ctgyururu, 1.43, 1.43 );
setEffScaleKey( spep_3-3 + 100, ctgyururu, 1.44, 1.44 );
setEffScaleKey( spep_3-3 + 102, ctgyururu, 1.52, 1.52 );
setEffScaleKey( spep_3-3 + 104, ctgyururu, 1.6, 1.6 );
setEffScaleKey( spep_3-3 + 106, ctgyururu, 1.67, 1.67 );

setEffRotateKey( spep_3-3 + 60, ctgyururu, 0 );
setEffRotateKey( spep_3-3 + 106, ctgyururu, 0 );

setEffAlphaKey( spep_3-3 + 60, ctgyururu, 255 );
setEffAlphaKey( spep_3-3 + 100, ctgyururu, 255 );
setEffAlphaKey( spep_3-3 + 102, ctgyururu, 170 );
setEffAlphaKey( spep_3-3 + 104, ctgyururu, 85 );
setEffAlphaKey( spep_3-3 + 106, ctgyururu, 0 );

--文字エントリー
gyun = entryEffectLife( spep_3-3 + 110,  10007, 18, 0x100, -1, 0, -18, 82.9 );

setEffMoveKey( spep_3-3 + 110, gyun, -18, 82.9 , 0 );
setEffMoveKey( spep_3-3 + 112, gyun, 26.1, 128.9 , 0 );
setEffMoveKey( spep_3-3 + 114, gyun, 70.3, 174.9 , 0 );
setEffMoveKey( spep_3-3 + 116, gyun, 74.5, 184.9 , 0 );
setEffMoveKey( spep_3-3 + 118, gyun, 78.8, 194.9 , 0 );
setEffMoveKey( spep_3-3 + 120, gyun, 83, 204.9 , 0 );
setEffMoveKey( spep_3-3 + 122, gyun, 87.3, 214.9 , 0 );
setEffMoveKey( spep_3-3 + 124, gyun, 90.6, 218.2 , 0 );
setEffMoveKey( spep_3-3 + 126, gyun, 93.9, 221.5 , 0 );
setEffMoveKey( spep_3-3 + 128, gyun, 97.2, 224.8 , 0 );

setEffScaleKey( spep_3-3 + 110, gyun, 1, 1 );
setEffScaleKey( spep_3-3 + 112, gyun, 1.55, 1.55 );
setEffScaleKey( spep_3-3 + 114, gyun, 2.09, 2.09 );
setEffScaleKey( spep_3-3 + 116, gyun, 2.15, 2.15 );
setEffScaleKey( spep_3-3 + 118, gyun, 2.21, 2.21 );
setEffScaleKey( spep_3-3 + 120, gyun, 2.27, 2.27 );
setEffScaleKey( spep_3-3 + 122, gyun, 2.32, 2.32 );
setEffScaleKey( spep_3-3 + 124, gyun, 2.38, 2.38 );
setEffScaleKey( spep_3-3 + 126, gyun, 2.43, 2.43 );
setEffScaleKey( spep_3-3 + 128, gyun, 2.48, 2.48 );

setEffRotateKey( spep_3-3 + 110, gyun, 12.2 );
setEffRotateKey( spep_3-3 + 128, gyun, 12.2 );

setEffAlphaKey( spep_3-3 + 110, gyun, 255 );
setEffAlphaKey( spep_3-3 + 122, gyun, 255 );
setEffAlphaKey( spep_3-3 + 124, gyun, 170 );
setEffAlphaKey( spep_3-3 + 126, gyun, 85 );
setEffAlphaKey( spep_3-3 + 128, gyun, 0 );

--文字エントリー
ctdogyu = entryEffectLife( spep_3-3 + 152,  10029, 24, 0x100, -1, 0, -112.9, -98 );
setEffMoveKey( spep_3-3 + 152, ctdogyu, -112.9, -98 , 0 );
setEffMoveKey( spep_3-3 + 154, ctdogyu, -67, -100.7 , 0 );
setEffMoveKey( spep_3-3 + 156, ctdogyu, -21, -103.4 , 0 );
setEffMoveKey( spep_3-3 + 158, ctdogyu, 25, -106.1 , 0 );
setEffMoveKey( spep_3-3 + 160, ctdogyu, 31.6, -106.1 , 0 );
setEffMoveKey( spep_3-3 + 162, ctdogyu, 38.3, -106.1 , 0 );
setEffMoveKey( spep_3-3 + 164, ctdogyu, 45, -106.1 , 0 );
setEffMoveKey( spep_3-3 + 166, ctdogyu, 51.6, -106.1 , 0 );
setEffMoveKey( spep_3-3 + 168, ctdogyu, 58.3, -106.1 , 0 );
setEffMoveKey( spep_3-3 + 170, ctdogyu, 64.9, -106.1 , 0 );
setEffMoveKey( spep_3-3 + 172, ctdogyu, 74.6, -105.1 , 0 );
setEffMoveKey( spep_3-3 + 174, ctdogyu, 84.3, -104.1 , 0 );
setEffMoveKey( spep_3-3 + 176, ctdogyu, 94, -103.1 , 0 );

setEffScaleKey( spep_3-3 + 152, ctdogyu, 1, 1 );
setEffScaleKey( spep_3-3 + 154, ctdogyu, 1.39, 1.39 );
setEffScaleKey( spep_3-3 + 156, ctdogyu, 1.78, 1.78 );
setEffScaleKey( spep_3-3 + 158, ctdogyu, 2.17, 2.17 );
setEffScaleKey( spep_3-3 + 160, ctdogyu, 2.3, 2.3 );
setEffScaleKey( spep_3-3 + 162, ctdogyu, 2.44, 2.44 );
setEffScaleKey( spep_3-3 + 164, ctdogyu, 2.57, 2.57 );
setEffScaleKey( spep_3-3 + 166, ctdogyu, 2.71, 2.71 );
setEffScaleKey( spep_3-3 + 168, ctdogyu, 2.84, 2.84 );
setEffScaleKey( spep_3-3 + 170, ctdogyu, 2.98, 2.98 );
setEffScaleKey( spep_3-3 + 172, ctdogyu, 3.11, 3.11 );
setEffScaleKey( spep_3-3 + 174, ctdogyu, 3.24, 3.24 );
setEffScaleKey( spep_3-3 + 176, ctdogyu, 3.38, 3.38 );

setEffRotateKey( spep_3-3 + 152, ctdogyu, 0 );
setEffRotateKey( spep_3-3 + 176, ctdogyu, 0 );

setEffAlphaKey( spep_3-3 + 152, ctdogyu, 255 );
setEffAlphaKey( spep_3-3 + 170, ctdogyu, 255 );
setEffAlphaKey( spep_3-3 + 172, ctdogyu, 170 );
setEffAlphaKey( spep_3-3 + 174, ctdogyu, 85 );
setEffAlphaKey( spep_3-3 + 176, ctdogyu, 0 );

--SE
se_1007 = playSe( spep_3-16 + 53, 1007 );
setSeVolume( spep_3-16 + 53, 1007, 18 );
playSe( spep_3 + 66, 1190 );
setSeVolume( spep_3 + 66, 1190, 0 );
setSeVolume( spep_3 + 74, 1190, 0 );
setSeVolume( spep_3 + 75, 1190, 7.89 );
setSeVolume( spep_3 + 76, 1190, 15.78 );
setSeVolume( spep_3 + 77, 1190, 23.67 );
setSeVolume( spep_3 + 78, 1190, 31.56 );
setSeVolume( spep_3 + 79, 1190, 39.44 );
setSeVolume( spep_3 + 80, 1190, 47.33 );
setSeVolume( spep_3 + 81, 1190, 55.22 );
setSeVolume( spep_3 + 82, 1190, 63.11 );
setSeVolume( spep_3 + 83, 1190, 71 );
playSe( spep_3 + 71, 1261 );
setSeVolume( spep_3 + 71, 1261, 200 );
se_1035 = playSe( spep_3 + 76, 1035 );
se_0009 = playSe( spep_3 + 76, 9 );
setSeVolume( spep_3 + 76, 9, 0 );
setSeVolume( spep_3 + 76, 9, 0 );
setSeVolume( spep_3 + 77, 9, 10 );
setSeVolume( spep_3 + 78, 9, 20 );
setSeVolume( spep_3 + 79, 9, 30 );
setSeVolume( spep_3 + 80, 9, 40 );
setSeVolume( spep_3 + 81, 9, 50 );
setSeVolume( spep_3 + 82, 9, 60 );
setSeVolume( spep_3 + 83, 9, 70 );
setSeVolume( spep_3 + 84, 9, 80 );
setSeVolume( spep_3 + 85, 9, 90 );
setSeVolume( spep_3 + 86, 9, 100 );
se_1186 = playSe( spep_3 + 77, 1186 );
setSeVolume( spep_3 + 77, 1186, 178 );
playSe( spep_3 + 122, 1261 );
setSeVolume( spep_3 + 122, 1261, 141 );
playSe( spep_3 + 126, 9 );
setSeVolume( spep_3 + 126, 9, 89 );
playSe( spep_3 + 126, 20 );
setSeVolume( spep_3 + 126, 20, 79 );
se_1183 = playSe( spep_3 + 149, 1183 );
se_1182 = playSe( spep_3 + 162, 1182 );
se_1167 = playSe( spep_3 + 162, 1167 );
setSeVolume( spep_3 + 162, 1167, 40 );
se_10351 = playSe( spep_3 + 162, 1035 );
setSeVolume( spep_3 + 162, 1035, 0 );
setSeVolume( spep_3 + 162, 1035, 0 );
setSeVolume( spep_3 + 163, 1035, 7.69 );
setSeVolume( spep_3 + 164, 1035, 15.38 );
setSeVolume( spep_3 + 165, 1035, 23.08 );
setSeVolume( spep_3 + 166, 1035, 30.77 );
setSeVolume( spep_3 + 167, 1035, 38.46 );
setSeVolume( spep_3 + 168, 1035, 46.15 );
setSeVolume( spep_3 + 169, 1035, 53.85 );
setSeVolume( spep_3 + 170, 1035, 61.54 );
setSeVolume( spep_3 + 171, 1035, 69.23 );
setSeVolume( spep_3 + 172, 1035, 76.92 );
setSeVolume( spep_3 + 173, 1035, 84.62 );
setSeVolume( spep_3 + 174, 1035, 92.31 );
setSeVolume( spep_3 + 175, 1035, 100 );
se_11821 = playSe( spep_3 + 162, 1182 );
setSeVolume( spep_3 + 162, 1182, 63 );
se_0063 = playSe( spep_3 + 180, 63 );
se_1019 = playSe( spep_3 + 204, 1019 );
setSeVolume( spep_3 + 204, 1019, 40 );
playSe( spep_3-16 + 232, 1189 );
setSeVolume( spep_3-16 + 232, 1189, 224 );

stopSe( spep_3 + 56, se_1007, 5 );
stopSe( spep_3 + 104, se_1035, 23 );
stopSe( spep_3 + 99, se_0009, 23 );
stopSe( spep_3 + 114, se_1186, 0 );
stopSe( spep_3 + 214, se_1183, 43 );
stopSe( spep_3 + 171, se_1182, 43 );
stopSe( spep_3 + 192, se_1167, 28 );
stopSe( spep_3 + 190, se_10351, 40 );
stopSe( spep_3 + 171, se_11821, 13 );


-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 238, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 234;
------------------------------------------------------
-- 悟空落下〜如意棒で叩く
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 176, hit_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 176, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_f, 0 );
setEffRotateKey( spep_4 + 176, hit_f, 0 );
setEffAlphaKey( spep_4 + 0, hit_f, 255 );
setEffAlphaKey( spep_4 + 174, hit_f, 255 );
setEffAlphaKey( spep_4 + 175, hit_f, 255 );
setEffAlphaKey( spep_4 + 176, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 176, hit_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 176, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_b, 0 );
setEffRotateKey( spep_4 + 176, hit_b, 0 );
setEffAlphaKey( spep_4 + 0, hit_b, 255 );
setEffAlphaKey( spep_4 + 174, hit_b, 255 );
setEffAlphaKey( spep_4 + 175, hit_b, 255 );
setEffAlphaKey( spep_4 + 176, hit_b, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_4-3 + 142,  10020, 24, 0x100, -1, 0, -52, 321.9 );
setEffShake( spep_4-3 + 142, ctbaki, 24, 10 );
setEffMoveKey( spep_4-3 + 142, ctbaki, -52, 321.9 , 0 );
setEffMoveKey( spep_4-3 + 144, ctbaki, -62, 321.9 , 0 );
setEffMoveKey( spep_4-3 + 146, ctbaki, -42, 331.9 , 0 );
setEffMoveKey( spep_4-3 + 148, ctbaki, -42, 311.9 , 0 );
setEffMoveKey( spep_4-3 + 150, ctbaki, -52, 321.9 , 0 );
setEffMoveKey( spep_4-3 + 152, ctbaki, -62, 321.9 , 0 );
setEffMoveKey( spep_4-3 + 154, ctbaki, -42, 331.9 , 0 );
setEffMoveKey( spep_4-3 + 156, ctbaki, -42, 311.9 , 0 );
setEffMoveKey( spep_4-3 + 158, ctbaki, -52, 321.9 , 0 );
setEffMoveKey( spep_4-3 + 160, ctbaki, -42, 331.9 , 0 );
setEffMoveKey( spep_4-3 + 162, ctbaki, -41.5, 311.5 , 0 );
setEffMoveKey( spep_4-3 + 164, ctbaki, -52, 321.9 , 0 );
setEffMoveKey( spep_4-3 + 166, ctbaki, -52, 321.9 , 0 );

setEffScaleKey( spep_4-3 + 142, ctbaki, 2.68, 2.68 );
setEffScaleKey( spep_4-3 + 160, ctbaki, 2.68, 2.68 );
setEffScaleKey( spep_4-3 + 162, ctbaki, 2.81, 2.81 );
setEffScaleKey( spep_4-3 + 164, ctbaki, 2.93, 2.93 );
setEffScaleKey( spep_4-3 + 166, ctbaki, 3.05, 3.05 );

setEffRotateKey( spep_4-3 + 142, ctbaki, 0 );
setEffRotateKey( spep_4-3 + 166, ctbaki, 0 );

setEffAlphaKey( spep_4-3 + 142, ctbaki, 255 );
setEffAlphaKey( spep_4-3 + 160, ctbaki, 255 );
setEffAlphaKey( spep_4-3 + 162, ctbaki, 170 );
setEffAlphaKey( spep_4-3 + 164, ctbaki, 85 );
setEffAlphaKey( spep_4-3 + 166, ctbaki, 0 );

--文字エントリー
ctbikkuri = entryEffectLife( spep_4-3 + 142,  10000, 24, 0x100, -1, 0, 256, 367.2 );
setEffShake( spep_4-3 + 142, ctbikkuri, 24, 10 );
setEffMoveKey( spep_4-3 + 142, ctbikkuri, 256, 367.2 , 0 );
setEffMoveKey( spep_4-3 + 144, ctbikkuri, 235.3, 350.8 , 0 );
setEffMoveKey( spep_4-3 + 146, ctbikkuri, 290, 367.8 , 0 );
setEffMoveKey( spep_4-3 + 148, ctbikkuri, 271.8, 380.5 , 0 );
setEffMoveKey( spep_4-3 + 150, ctbikkuri, 256, 367.2 , 0 );
setEffMoveKey( spep_4-3 + 152, ctbikkuri, 235.3, 350.8 , 0 );
setEffMoveKey( spep_4-3 + 154, ctbikkuri, 290, 367.8 , 0 );
setEffMoveKey( spep_4-3 + 156, ctbikkuri, 271.8, 380.5 , 0 );
setEffMoveKey( spep_4-3 + 158, ctbikkuri, 256, 367.2 , 0 );
setEffMoveKey( spep_4-3 + 160, ctbikkuri, 235.3, 350.8 , 0 );
setEffMoveKey( spep_4-3 + 162, ctbikkuri, 292.9, 368.5 , 0 );
setEffMoveKey( spep_4-3 + 164, ctbikkuri, 276.6, 382.5 , 0 );
setEffMoveKey( spep_4-3 + 166, ctbikkuri, 279, 383.5 , 0 );

setEffScaleKey( spep_4-3 + 142, ctbikkuri, 3.54, 3.54 );
setEffScaleKey( spep_4-3 + 160, ctbikkuri, 3.54, 3.54 );
setEffScaleKey( spep_4-3 + 162, ctbikkuri, 3.64, 3.64 );
setEffScaleKey( spep_4-3 + 164, ctbikkuri, 3.73, 3.73 );
setEffScaleKey( spep_4-3 + 166, ctbikkuri, 3.82, 3.82 );

setEffRotateKey( spep_4-3 + 142, ctbikkuri, 13 );
setEffRotateKey( spep_4-3 + 166, ctbikkuri, 13 );

setEffAlphaKey( spep_4-3 + 142, ctbikkuri, 255 );
setEffAlphaKey( spep_4-3 + 160, ctbikkuri, 255 );
setEffAlphaKey( spep_4-3 + 162, ctbikkuri, 170 );
setEffAlphaKey( spep_4-3 + 164, ctbikkuri, 85 );
setEffAlphaKey( spep_4-3 + 166, ctbikkuri, 0 );

--敵の動き
setDisp( spep_4-3 + 104, 1, 1);
setDisp( spep_4 + 176, 1, 0);
changeAnime( spep_4-3 + 104, 1, 102);
changeAnime( spep_4-3 + 114, 1, 100);
changeAnime( spep_4-3 + 134, 1, 5);
changeAnime( spep_4-3 + 142, 1, 107);


setMoveKey( spep_4-3 + 104, 1, 642, 344.1 , 0 );
setMoveKey( spep_4-3 + 106, 1, 534, 303 , 0 );
setMoveKey( spep_4-3 + 108, 1, 426.1, 261.9 , 0 );
setMoveKey( spep_4-3 + 110, 1, 318.2, 220.9 , 0 );
setMoveKey( spep_4-3 + 112, 1, 210.2, 179.8 , 0 );
setMoveKey( spep_4-3 + 113, 1, 210.2, 179.8 , 0 );

setMoveKey( spep_4-3 + 114, 1, 149.9, 120 , 0 );
setMoveKey( spep_4-3 + 116, 1, 149.8, 120.4 , 0 );
setMoveKey( spep_4-3 + 118, 1, 149.7, 120.7 , 0 );
setMoveKey( spep_4-3 + 120, 1, 149.6, 121 , 0 );
setMoveKey( spep_4-3 + 122, 1, 149.5, 121.4 , 0 );
setMoveKey( spep_4-3 + 124, 1, 149.4, 121.7 , 0 );
setMoveKey( spep_4-3 + 126, 1, 149.4, 122 , 0 );
setMoveKey( spep_4-3 + 128, 1, 149.3, 122.3 , 0 );
setMoveKey( spep_4-3 + 130, 1, 149.2, 122.6 , 0 );
setMoveKey( spep_4-3 + 132, 1, 149.1, 122.9 , 0 );
setMoveKey( spep_4-3 + 133, 1, 149.1, 122.9 , 0 );

setMoveKey( spep_4-3 + 134, 1, 144.4, 144.1 , 0 );
setMoveKey( spep_4-3 + 136, 1, 144.2, 144.1 , 0 );
setMoveKey( spep_4-3 + 138, 1, 144.1, 144 , 0 );
setMoveKey( spep_4-3 + 140, 1, 143.9, 144 , 0 );
setMoveKey( spep_4-3 + 141, 1, 143.9, 144 , 0 );

setMoveKey( spep_4-3 + 142, 1, -214.1, 9.5 , 0 );
setMoveKey( spep_4-3 + 144, 1, -214.2, 9.4 , 0 );
setMoveKey( spep_4-3 + 146, 1, -212.2, 11.4 , 0 );
setMoveKey( spep_4-3 + 148, 1, -173.2, -30.6 , 0 );
setMoveKey( spep_4-3 + 150, 1, -204.6, 5.1 , 0 );
setMoveKey( spep_4-3 + 152, 1, -216.7, 78 , 0 );
setMoveKey( spep_4-3 + 154, 1, -190.3, 9.7 , 0 );
setMoveKey( spep_4-3 + 156, 1, -194.4, 10.8 , 0 );
setMoveKey( spep_4-3 + 158, 1, -208.7, -21.9 , 0 );
setMoveKey( spep_4-3 + 160, 1, -227.7, 29.4 , 0 );
setMoveKey( spep_4-3 + 162, 1, -213.3, 8.1 , 0 );
setMoveKey( spep_4-3 + 164, 1, -244.4, 3 , 0 );
setMoveKey( spep_4-3 + 166, 1, -241.5, 26.1 , 0 );
setMoveKey( spep_4-3 + 168, 1, -235.4, 21.8 , 0 );
setMoveKey( spep_4-3 + 170, 1, -208.9, 10 , 0 );
setMoveKey( spep_4-3 + 172, 1, -214.6, 9.7 , 0 );
setMoveKey( spep_4-3 + 174, 1, -209, 11.6 , 0 );
setMoveKey( spep_4-3 + 176, 1, -216.4, 16.3 , 0 );
setMoveKey( spep_4 + 176, 1, -212.7, 9.5 , 0 );

setScaleKey( spep_4-3 + 104, 1, 4.39, 4.39 );
setScaleKey( spep_4-3 + 106, 1, 3.74, 3.74 );
setScaleKey( spep_4-3 + 108, 1, 3.09, 3.09 );
setScaleKey( spep_4-3 + 110, 1, 2.44, 2.44 );
setScaleKey( spep_4-3 + 112, 1, 1.78, 1.78 );
setScaleKey( spep_4-3 + 113, 1, 1.78, 1.78 );

setScaleKey( spep_4-3 + 114, 1, 1.2, 1.2 );
setScaleKey( spep_4-3 + 118, 1, 1.2, 1.2 );
setScaleKey( spep_4-3 + 120, 1, 1.21, 1.21 );
setScaleKey( spep_4-3 + 122, 1, 1.21, 1.21 );
setScaleKey( spep_4-3 + 124, 1, 1.22, 1.22 );
setScaleKey( spep_4-3 + 126, 1, 1.22, 1.22 );
setScaleKey( spep_4-3 + 128, 1, 1.23, 1.23 );
setScaleKey( spep_4-3 + 133, 1, 1.23, 1.23 );

setScaleKey( spep_4-3 + 134, 1, 1.29, 1.29 );
setScaleKey( spep_4-3 + 141, 1, 1.29, 1.29 );

setScaleKey( spep_4-3 + 142, 1, 2.02, 2.02 );
setScaleKey( spep_4 + 176, 1, 2.02, 2.02 );

setRotateKey( spep_4-3 + 104, 1, 0 );
setRotateKey( spep_4-3 + 113, 1, 0 );

setRotateKey( spep_4-3 + 114, 1, 0 );
setRotateKey( spep_4-3 + 118, 1, 0 );
setRotateKey( spep_4-3 + 120, 1, 0.1 );
setRotateKey( spep_4-3 + 126, 1, 0.1 );
setRotateKey( spep_4-3 + 128, 1, 0.2 );
setRotateKey( spep_4-3 + 133, 1, 0.2 );

setRotateKey( spep_4-3 + 134, 1, 68.2 );
setRotateKey( spep_4-3 + 141, 1, 68.2 );

setRotateKey( spep_4-3 + 142, 1, -11.4 );
setRotateKey( spep_4 + 176, 1, -11.4 );

--SE
playSe( spep_4 -16 + 37, 1189 );
playSe( spep_4 -16 + 41, 1151 );
playSe( spep_4 -16 + 63, 1152 );
playSe( spep_4 -16 + 88, 1003 );
playSe( spep_4 -16 + 106, 1189 );
setSeVolume( spep_4 -16 + 106, 1189, 79 );
se_1116 = playSe( spep_4 -16 + 110, 1116 );
playSe( spep_4 -16 + 150, 1012 );
playSe( spep_4 -16 + 152, 1120 );

stopSe( spep_4 + 5, se_0063, 15 );
stopSe( spep_4 + 117, se_1019, 18 );
stopSe( spep_4 + 134, se_1116, 38 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 178, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 176;
------------------------------------------------------
-- ブルマ＆悟空着地＆敵落下
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 220, finish_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 220, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 220, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 220, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 220, finish_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 220, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 220, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 220, finish_b, 255 );

--敵の動き
setDisp( spep_5-3 + 100, 1, 1);
setDisp( spep_5-3 + 158, 1, 0);
changeAnime( spep_5-3 + 100, 1, 6);

setMoveKey( spep_5-3 + 110, 1, 211.8, 713.8 , 0 );
setMoveKey( spep_5-3 + 112, 1, 211.8, 681.3 , 0 );
setMoveKey( spep_5-3 + 114, 1, 211.8, 648.8 , 0 );
setMoveKey( spep_5-3 + 116, 1, 211.8, 616.3 , 0 );
setMoveKey( spep_5-3 + 118, 1, 211.8, 583.8 , 0 );
setMoveKey( spep_5-3 + 120, 1, 211.8, 551.3 , 0 );
setMoveKey( spep_5-3 + 122, 1, 211.8, 518.8 , 0 );
setMoveKey( spep_5-3 + 124, 1, 211.8, 486.3 , 0 );
setMoveKey( spep_5-3 + 126, 1, 211.8, 453.8 , 0 );
setMoveKey( spep_5-3 + 128, 1, 211.8, 421.3 , 0 );
setMoveKey( spep_5-3 + 130, 1, 211.8, 388.8 , 0 );
setMoveKey( spep_5-3 + 132, 1, 211.8, 356.3 , 0 );
setMoveKey( spep_5-3 + 134, 1, 211.8, 323.8 , 0 );
setMoveKey( spep_5-3 + 136, 1, 211.8, 291.3 , 0 );
setMoveKey( spep_5-3 + 138, 1, 211.8, 258.8 , 0 );
setMoveKey( spep_5-3 + 140, 1, 211.8, 226.3 , 0 );
setMoveKey( spep_5-3 + 142, 1, 211.8, 193.8 , 0 );
setMoveKey( spep_5-3 + 144, 1, 211.8, 161.3 , 0 );
setMoveKey( spep_5-3 + 146, 1, 211.8, 128.8 , 0 );
setMoveKey( spep_5-3 + 148, 1, 211.8, 96.3 , 0 );
setMoveKey( spep_5-3 + 150, 1, 211.8, 63.8 , 0 );
setMoveKey( spep_5-3 + 152, 1, 211.8, 31.3 , 0 );
setMoveKey( spep_5-3 + 154, 1, 211.8, -1.2 , 0 );
setMoveKey( spep_5-3 + 156, 1, 211.8, -33.7 , 0 );
setMoveKey( spep_5-3 + 158, 1, 211.8, -66.2 , 0 );

setScaleKey( spep_5-3 + 110, 1, 0.18, 0.18 );
setScaleKey( spep_5-3 + 158, 1, 0.18, 0.18 );

setRotateKey( spep_5-3 + 110, 1, -119.5 );
setRotateKey( spep_5-3 + 158, 1, -119.5 );

--SE
playSe( spep_5 + 15, 1208 );
setSeVolume( spep_5 + 15, 1208, 40 );
playSe( spep_5 + 19, 1192 );
playSe( spep_5 + 22, 1006 );
setSeVolume( spep_5 + 22, 1006, 89 );
playSe( spep_5 + 52, 1192 );
se_11823 = playSe( spep_5 + 52, 1182 );
setSeVolume( spep_5 + 52, 1182, 79 );
se_0044 = playSe( spep_5 -16 + 91, 44 );
setSeVolume( spep_5 -16 + 91, 44, 0 );
setSeVolume( spep_5 -16 + 92, 44, 4.31 );
setSeVolume( spep_5 -16 + 93, 44, 8.62 );
setSeVolume( spep_5 -16 + 94, 44, 12.92 );
setSeVolume( spep_5 -16 + 95, 44, 17.23 );
setSeVolume( spep_5 -16 + 96, 44, 21.54 );
setSeVolume( spep_5 -16 + 97, 44, 25.85 );
setSeVolume( spep_5 -16 + 98, 44, 30.15 );
setSeVolume( spep_5 -16 + 99, 44, 34.46 );
setSeVolume( spep_5 -16 + 100, 44, 38.77 );
setSeVolume( spep_5 -16 + 101, 44, 43.08 );
setSeVolume( spep_5 -16 + 102, 44, 47.38 );
setSeVolume( spep_5 -16 + 103, 44, 51.69 );
setSeVolume( spep_5 -16 + 104, 44, 56 );
playSe( spep_5 -16 + 123, 1013 );
setSeVolume( spep_5 -16 + 123, 1013, 18 );
playSe( spep_5 -16 + 124, 1106 );
setSeVolume( spep_5 -16 + 124, 1106, 158 );
playSe( spep_5 -16 + 125, 1108 );
setSeVolume( spep_5 -16 + 125, 1108, 158 );
playSe( spep_5 -16 + 176, 1159 );
setSeVolume( spep_5 + 176, 1159, 56 );

stopSe( spep_5 + 63, se_11823, 19 );
stopSe( spep_5 + 110, se_0044, 20 );

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 110 );
endPhase( spep_5 + 210 );
else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- カメラ寄り→突進
------------------------------------------------------
-- ** はじめの準備 ** --
spep_0 = 0;

-- ** エフェクト等 ** --
Kapsel = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, Kapsel, 0, 0, 0 );
setEffMoveKey( spep_0 + 264, Kapsel, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, Kapsel, -1.0, 1.0 );
setEffScaleKey( spep_0 + 264, Kapsel, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, Kapsel, 0 );
setEffRotateKey( spep_0 + 264, Kapsel, 0 );
setEffAlphaKey( spep_0 + 0, Kapsel, 255 );
setEffAlphaKey( spep_0 + 264, Kapsel, 255 );

--SE
se_0021 = playSe( spep_0 + 2, 21 );
setSeVolume( spep_0 + 2, 21, 79 );
playSe( spep_0 + 4, 27 );
setSeVolume( spep_0 + 4, 27, 63 );
se_1041 = playSe( spep_0 + 4, 1041 );
playSe( spep_0 + 65, 1117 );
setSeVolume( spep_0 + 65, 1117, 79 );
playSe( spep_0 + 149, 1014 );
setSeVolume( spep_0 + 149, 1014, 89 );
playSe( spep_0 + 149, 1114 );
playSe( spep_0 + 149, 1190 );
setSeVolume( spep_0 + 149, 1190, 79 );
playSe( spep_0 + 160, 10 );
setSeVolume( spep_0 + 160, 10, 0 );
setSeVolume( spep_0 + 164, 10, 0 );
setSeVolume( spep_0 + 165, 10, 4.62 );
setSeVolume( spep_0 + 166, 10, 9.23 );
setSeVolume( spep_0 + 167, 10, 13.85 );
setSeVolume( spep_0 + 168, 10, 18.46 );
setSeVolume( spep_0 + 169, 10, 23.08 );
setSeVolume( spep_0 + 170, 10, 27.69 );
setSeVolume( spep_0 + 171, 10, 32.31 );
setSeVolume( spep_0 + 172, 10, 36.92 );
setSeVolume( spep_0 + 173, 10, 41.54 );
setSeVolume( spep_0 + 174, 10, 46.15 );
setSeVolume( spep_0 + 175, 10, 50.77 );
setSeVolume( spep_0 + 176, 10, 55.38 );
setSeVolume( spep_0 + 177, 10, 60 );
playSe( spep_0 + 187, 8 );
setSeVolume( spep_0 + 187, 8, 0 );
setSeVolume( spep_0 + 187, 8, 0 );
setSeVolume( spep_0 + 188, 8, 3 );
setSeVolume( spep_0 + 189, 8, 6 );
setSeVolume( spep_0 + 190, 8, 9 );
setSeVolume( spep_0 + 191, 8, 12 );
setSeVolume( spep_0 + 192, 8, 15 );
setSeVolume( spep_0 + 193, 8, 18 );
setSeVolume( spep_0 + 194, 8, 21 );
setSeVolume( spep_0 + 195, 8, 24 );
setSeVolume( spep_0 + 196, 8, 27 );
setSeVolume( spep_0 + 197, 8, 30 );
setSeVolume( spep_0 + 198, 8, 33 );
setSeVolume( spep_0 + 199, 8, 36 );
setSeVolume( spep_0 + 200, 8, 39 );
setSeVolume( spep_0 + 201, 8, 42 );
setSeVolume( spep_0 + 202, 8, 45 );
setSeVolume( spep_0 + 203, 8, 48 );
setSeVolume( spep_0 + 204, 8, 51 );
setSeVolume( spep_0 + 205, 8, 54 );
setSeVolume( spep_0 + 206, 8, 57 );
setSeVolume( spep_0 + 207, 8, 60 );
setSeVolume( spep_0 + 208, 8, 63 );
se_1150 = playSe( spep_0 + 263, 1150); 
setSeVolume( spep_0 + 263, 1150, 0 );

stopSe( spep_0 + 11, se_0021, 0 );
stopSe( spep_0 + 10, se_1041, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 168, 0, 0, 0, 0, 255 ); --黒 背景

--次の準備
spep_1 = spep_0+264;
------------------------------------------------------
-- バイクに乗る
------------------------------------------------------
-- ** エフェクト等 ** --
bike = entryEffect( spep_1 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, bike, 0, 0, 0 );
setEffMoveKey( spep_1 + 100, bike, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, bike, -1.0, 1.0 );
setEffScaleKey( spep_1 + 100, bike, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, bike, 0 );
setEffRotateKey( spep_1 + 100, bike, 0 );
setEffAlphaKey( spep_1 + 0, bike, 255 );
setEffAlphaKey( spep_1 + 100, bike, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_1+16 , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_1+16  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
playSe( spep_1 + 19, 1013 );
setSeVolume( spep_1 + 19, 1013, 63 );
playSe( spep_1 + 28, 1018 );
setSeVolume( spep_1 + 24, 1150, 0.00 );
setSeVolume( spep_1 + 25, 1150, 17.75 );
setSeVolume( spep_1 + 26, 1150, 35.50 );
setSeVolume( spep_1 + 27, 1150, 53.25 );
setSeVolume( spep_1 + 28, 1150, 71.00 );


stopSe( spep_1 + 37, se_1150, 2 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 102, 0, 0, 0, 0, 255 ); --黒 背景

--白フェード
entryFade( spep_1 + 92, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2 = spep_1+100;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

--白フェード
entryFade( spep_2 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 手前に走り出す〜ジャンプ
------------------------------------------------------
-- ** エフェクト等 ** --
jump_f = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, jump_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 234, jump_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, jump_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 234, jump_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, jump_f, 0 );
setEffRotateKey( spep_3 + 234, jump_f, 0 );
setEffAlphaKey( spep_3 + 0, jump_f, 255 );
setEffAlphaKey( spep_3 + 234, jump_f, 255 );
setEffAlphaKey( spep_3 + 235, jump_f, 0 );
setEffAlphaKey( spep_3 + 236, jump_f, 0 );

-- ** エフェクト等 ** --
jump_b = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, jump_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 234, jump_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, jump_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 234, jump_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, jump_b, 0 );
setEffRotateKey( spep_3 + 234, jump_b, 0 );
setEffAlphaKey( spep_3 + 0, jump_b, 255 );
setEffAlphaKey( spep_3 + 234, jump_b, 255 );
setEffAlphaKey( spep_3 + 235, jump_b, 0 );
setEffAlphaKey( spep_3 + 236, jump_b, 0 );

--SE
SE1=playSe( spep_3-16 + 16, 1106 );
SE2=playSe( spep_3-16 + 23, 1108 );
SE3=playSe( spep_3-16 + 34, 1106 );
SE4=playSe( spep_3-16 + 34, 1189 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 +50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE1, 0 );
    stopSe( SP_dodge - 12, SE2, 0 );
    stopSe( SP_dodge - 12, SE3, 0 );
    stopSe( SP_dodge - 12, SE4, 0 );

    pauseAll( SP_dodge, 67 );
    

    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,-1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );   -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100, -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);

    --敵の固定
    --setMoveKey( SP_dodge + 32, 1, 52.3, 0.3 , 0 );
    --setScaleKey( SP_dodge + 32, 1, 1.41, 1.41 );
    --setRotateKey( SP_dodge + 32, 1, 2.5 );
    
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    setMoveKey( SP_dodge + 10,   0,-2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--文字エントリー
ctgyururu = entryEffectLife( spep_3-3 + 60,  10030, 46, 0x100, -1, 0, 107, 141.9 );

setEffMoveKey( spep_3-3 + 60, ctgyururu, 107, 141.9 , 0 );
setEffMoveKey( spep_3-3 + 62, ctgyururu, 89.5, 161.9 , 0 );
setEffMoveKey( spep_3-3 + 64, ctgyururu, 72, 181.9 , 0 );
setEffMoveKey( spep_3-3 + 66, ctgyururu, 54.5, 201.9 , 0 );
setEffMoveKey( spep_3-3 + 68, ctgyururu, 37, 221.9 , 0 );
setEffMoveKey( spep_3-3 + 70, ctgyururu, 35.6, 222.4 , 0 );
setEffMoveKey( spep_3-3 + 72, ctgyururu, 34.3, 222.8 , 0 );
setEffMoveKey( spep_3-3 + 74, ctgyururu, 33, 223.3 , 0 );
setEffMoveKey( spep_3-3 + 76, ctgyururu, 31.7, 223.7 , 0 );
setEffMoveKey( spep_3-3 + 78, ctgyururu, 30.4, 224.1 , 0 );
setEffMoveKey( spep_3-3 + 80, ctgyururu, 29.1, 224.6 , 0 );
setEffMoveKey( spep_3-3 + 82, ctgyururu, 27.8, 225 , 0 );
setEffMoveKey( spep_3-3 + 84, ctgyururu, 26.5, 225.4 , 0 );
setEffMoveKey( spep_3-3 + 86, ctgyururu, 25.1, 225.9 , 0 );
setEffMoveKey( spep_3-3 + 88, ctgyururu, 23.8, 226.3 , 0 );
setEffMoveKey( spep_3-3 + 90, ctgyururu, 22.5, 226.8 , 0 );
setEffMoveKey( spep_3-3 + 92, ctgyururu, 21.2, 227.2 , 0 );
setEffMoveKey( spep_3-3 + 94, ctgyururu, 19.9, 227.6 , 0 );
setEffMoveKey( spep_3-3 + 96, ctgyururu, 18.6, 228.1 , 0 );
setEffMoveKey( spep_3-3 + 98, ctgyururu, 17.3, 228.5 , 0 );
setEffMoveKey( spep_3-3 + 100, ctgyururu, 16, 228.9 , 0 );
setEffMoveKey( spep_3-3 + 102, ctgyururu, 11.3, 234.6 , 0 );
setEffMoveKey( spep_3-3 + 104, ctgyururu, 6.6, 240.3 , 0 );
setEffMoveKey( spep_3-3 + 106, ctgyururu, 2, 245.9 , 0 );

setEffScaleKey( spep_3-3 + 60, ctgyururu, 1, 1 );
setEffScaleKey( spep_3-3 + 62, ctgyururu, 1.07, 1.07 );
setEffScaleKey( spep_3-3 + 64, ctgyururu, 1.14, 1.14 );
setEffScaleKey( spep_3-3 + 66, ctgyururu, 1.21, 1.21 );
setEffScaleKey( spep_3-3 + 68, ctgyururu, 1.27, 1.27 );
setEffScaleKey( spep_3-3 + 70, ctgyururu, 1.29, 1.29 );
setEffScaleKey( spep_3-3 + 72, ctgyururu, 1.3, 1.3 );
setEffScaleKey( spep_3-3 + 74, ctgyururu, 1.31, 1.31 );
setEffScaleKey( spep_3-3 + 76, ctgyururu, 1.32, 1.32 );
setEffScaleKey( spep_3-3 + 78, ctgyururu, 1.33, 1.33 );
setEffScaleKey( spep_3-3 + 80, ctgyururu, 1.34, 1.34 );
setEffScaleKey( spep_3-3 + 82, ctgyururu, 1.35, 1.35 );
setEffScaleKey( spep_3-3 + 84, ctgyururu, 1.36, 1.36 );
setEffScaleKey( spep_3-3 + 86, ctgyururu, 1.37, 1.37 );
setEffScaleKey( spep_3-3 + 88, ctgyururu, 1.38, 1.38 );
setEffScaleKey( spep_3-3 + 90, ctgyururu, 1.39, 1.39 );
setEffScaleKey( spep_3-3 + 92, ctgyururu, 1.4, 1.4 );
setEffScaleKey( spep_3-3 + 94, ctgyururu, 1.41, 1.41 );
setEffScaleKey( spep_3-3 + 96, ctgyururu, 1.42, 1.42 );
setEffScaleKey( spep_3-3 + 98, ctgyururu, 1.43, 1.43 );
setEffScaleKey( spep_3-3 + 100, ctgyururu, 1.44, 1.44 );
setEffScaleKey( spep_3-3 + 102, ctgyururu, 1.52, 1.52 );
setEffScaleKey( spep_3-3 + 104, ctgyururu, 1.6, 1.6 );
setEffScaleKey( spep_3-3 + 106, ctgyururu, 1.67, 1.67 );

setEffRotateKey( spep_3-3 + 60, ctgyururu, 0 );
setEffRotateKey( spep_3-3 + 106, ctgyururu, 0 );

setEffAlphaKey( spep_3-3 + 60, ctgyururu, 255 );
setEffAlphaKey( spep_3-3 + 100, ctgyururu, 255 );
setEffAlphaKey( spep_3-3 + 102, ctgyururu, 170 );
setEffAlphaKey( spep_3-3 + 104, ctgyururu, 85 );
setEffAlphaKey( spep_3-3 + 106, ctgyururu, 0 );

--文字エントリー
gyun = entryEffectLife( spep_3-3 + 110,  10007, 18, 0x100, -1, 0, 18, 82.9 );

setEffMoveKey( spep_3-3 + 110, gyun, 18, 82.9 , 0 );
setEffMoveKey( spep_3-3 + 112, gyun, -26.1, 128.9 , 0 );
setEffMoveKey( spep_3-3 + 114, gyun, -70.3, 174.9 , 0 );
setEffMoveKey( spep_3-3 + 116, gyun, -74.5, 184.9 , 0 );
setEffMoveKey( spep_3-3 + 118, gyun, -78.8, 194.9 , 0 );
setEffMoveKey( spep_3-3 + 120, gyun, -83, 204.9 , 0 );
setEffMoveKey( spep_3-3 + 122, gyun, -87.3, 214.9 , 0 );
setEffMoveKey( spep_3-3 + 124, gyun, -90.6, 218.2 , 0 );
setEffMoveKey( spep_3-3 + 126, gyun, -93.9, 221.5 , 0 );
setEffMoveKey( spep_3-3 + 128, gyun, -97.2, 224.8 , 0 );

setEffScaleKey( spep_3-3 + 110, gyun, 1, 1 );
setEffScaleKey( spep_3-3 + 112, gyun, 1.55, 1.55 );
setEffScaleKey( spep_3-3 + 114, gyun, 2.09, 2.09 );
setEffScaleKey( spep_3-3 + 116, gyun, 2.15, 2.15 );
setEffScaleKey( spep_3-3 + 118, gyun, 2.21, 2.21 );
setEffScaleKey( spep_3-3 + 120, gyun, 2.27, 2.27 );
setEffScaleKey( spep_3-3 + 122, gyun, 2.32, 2.32 );
setEffScaleKey( spep_3-3 + 124, gyun, 2.38, 2.38 );
setEffScaleKey( spep_3-3 + 126, gyun, 2.43, 2.43 );
setEffScaleKey( spep_3-3 + 128, gyun, 2.48, 2.48 );

setEffRotateKey( spep_3-3 + 110, gyun, -12.2 );
setEffRotateKey( spep_3-3 + 128, gyun, -12.2 );

setEffAlphaKey( spep_3-3 + 110, gyun, 255 );
setEffAlphaKey( spep_3-3 + 122, gyun, 255 );
setEffAlphaKey( spep_3-3 + 124, gyun, 170 );
setEffAlphaKey( spep_3-3 + 126, gyun, 85 );
setEffAlphaKey( spep_3-3 + 128, gyun, 0 );

--文字エントリー
ctdogyu = entryEffectLife( spep_3-3 + 152,  10029, 24, 0x100, -1, 0, 112.9, -98 );
setEffMoveKey( spep_3-3 + 152, ctdogyu, 112.9, -98 , 0 );
setEffMoveKey( spep_3-3 + 154, ctdogyu, 67, -100.7 , 0 );
setEffMoveKey( spep_3-3 + 156, ctdogyu, 21, -103.4 , 0 );
setEffMoveKey( spep_3-3 + 158, ctdogyu, -25, -106.1 , 0 );
setEffMoveKey( spep_3-3 + 160, ctdogyu, -31.6, -106.1 , 0 );
setEffMoveKey( spep_3-3 + 162, ctdogyu, -38.3, -106.1 , 0 );
setEffMoveKey( spep_3-3 + 164, ctdogyu, -45, -106.1 , 0 );
setEffMoveKey( spep_3-3 + 166, ctdogyu, -51.6, -106.1 , 0 );
setEffMoveKey( spep_3-3 + 168, ctdogyu, -58.3, -106.1 , 0 );
setEffMoveKey( spep_3-3 + 170, ctdogyu, -64.9, -106.1 , 0 );
setEffMoveKey( spep_3-3 + 172, ctdogyu, -74.6, -105.1 , 0 );
setEffMoveKey( spep_3-3 + 174, ctdogyu, -84.3, -104.1 , 0 );
setEffMoveKey( spep_3-3 + 176, ctdogyu, -94, -103.1 , 0 );

setEffScaleKey( spep_3-3 + 152, ctdogyu, 1, 1 );
setEffScaleKey( spep_3-3 + 154, ctdogyu, 1.39, 1.39 );
setEffScaleKey( spep_3-3 + 156, ctdogyu, 1.78, 1.78 );
setEffScaleKey( spep_3-3 + 158, ctdogyu, 2.17, 2.17 );
setEffScaleKey( spep_3-3 + 160, ctdogyu, 2.3, 2.3 );
setEffScaleKey( spep_3-3 + 162, ctdogyu, 2.44, 2.44 );
setEffScaleKey( spep_3-3 + 164, ctdogyu, 2.57, 2.57 );
setEffScaleKey( spep_3-3 + 166, ctdogyu, 2.71, 2.71 );
setEffScaleKey( spep_3-3 + 168, ctdogyu, 2.84, 2.84 );
setEffScaleKey( spep_3-3 + 170, ctdogyu, 2.98, 2.98 );
setEffScaleKey( spep_3-3 + 172, ctdogyu, 3.11, 3.11 );
setEffScaleKey( spep_3-3 + 174, ctdogyu, 3.24, 3.24 );
setEffScaleKey( spep_3-3 + 176, ctdogyu, 3.38, 3.38 );

setEffRotateKey( spep_3-3 + 152, ctdogyu, 0 );
setEffRotateKey( spep_3-3 + 176, ctdogyu, 0 );

setEffAlphaKey( spep_3-3 + 152, ctdogyu, 255 );
setEffAlphaKey( spep_3-3 + 170, ctdogyu, 255 );
setEffAlphaKey( spep_3-3 + 172, ctdogyu, 170 );
setEffAlphaKey( spep_3-3 + 174, ctdogyu, 85 );
setEffAlphaKey( spep_3-3 + 176, ctdogyu, 0 );

--SE
se_1007 = playSe( spep_3-16 + 53, 1007 );
setSeVolume( spep_3-16 + 53, 1007, 18 );
playSe( spep_3 + 66, 1190 );
setSeVolume( spep_3 + 66, 1190, 0 );
setSeVolume( spep_3 + 74, 1190, 0 );
setSeVolume( spep_3 + 75, 1190, 7.89 );
setSeVolume( spep_3 + 76, 1190, 15.78 );
setSeVolume( spep_3 + 77, 1190, 23.67 );
setSeVolume( spep_3 + 78, 1190, 31.56 );
setSeVolume( spep_3 + 79, 1190, 39.44 );
setSeVolume( spep_3 + 80, 1190, 47.33 );
setSeVolume( spep_3 + 81, 1190, 55.22 );
setSeVolume( spep_3 + 82, 1190, 63.11 );
setSeVolume( spep_3 + 83, 1190, 71 );
playSe( spep_3 + 71, 1261 );
setSeVolume( spep_3 + 71, 1261, 200 );
se_1035 = playSe( spep_3 + 76, 1035 );
se_0009 = playSe( spep_3 + 76, 9 );
setSeVolume( spep_3 + 76, 9, 0 );
setSeVolume( spep_3 + 76, 9, 0 );
setSeVolume( spep_3 + 77, 9, 10 );
setSeVolume( spep_3 + 78, 9, 20 );
setSeVolume( spep_3 + 79, 9, 30 );
setSeVolume( spep_3 + 80, 9, 40 );
setSeVolume( spep_3 + 81, 9, 50 );
setSeVolume( spep_3 + 82, 9, 60 );
setSeVolume( spep_3 + 83, 9, 70 );
setSeVolume( spep_3 + 84, 9, 80 );
setSeVolume( spep_3 + 85, 9, 90 );
setSeVolume( spep_3 + 86, 9, 100 );
se_1186 = playSe( spep_3 + 77, 1186 );
setSeVolume( spep_3 + 77, 1186, 178 );
playSe( spep_3 + 122, 1261 );
setSeVolume( spep_3 + 122, 1261, 141 );
playSe( spep_3 + 126, 9 );
setSeVolume( spep_3 + 126, 9, 89 );
playSe( spep_3 + 126, 20 );
setSeVolume( spep_3 + 126, 20, 79 );
se_1183 = playSe( spep_3 + 149, 1183 );
se_1182 = playSe( spep_3 + 162, 1182 );
se_1167 = playSe( spep_3 + 162, 1167 );
setSeVolume( spep_3 + 162, 1167, 40 );
se_10351 = playSe( spep_3 + 162, 1035 );
setSeVolume( spep_3 + 162, 1035, 0 );
setSeVolume( spep_3 + 162, 1035, 0 );
setSeVolume( spep_3 + 163, 1035, 7.69 );
setSeVolume( spep_3 + 164, 1035, 15.38 );
setSeVolume( spep_3 + 165, 1035, 23.08 );
setSeVolume( spep_3 + 166, 1035, 30.77 );
setSeVolume( spep_3 + 167, 1035, 38.46 );
setSeVolume( spep_3 + 168, 1035, 46.15 );
setSeVolume( spep_3 + 169, 1035, 53.85 );
setSeVolume( spep_3 + 170, 1035, 61.54 );
setSeVolume( spep_3 + 171, 1035, 69.23 );
setSeVolume( spep_3 + 172, 1035, 76.92 );
setSeVolume( spep_3 + 173, 1035, 84.62 );
setSeVolume( spep_3 + 174, 1035, 92.31 );
setSeVolume( spep_3 + 175, 1035, 100 );
se_11821 = playSe( spep_3 + 162, 1182 );
setSeVolume( spep_3 + 162, 1182, 63 );
se_0063 = playSe( spep_3 + 180, 63 );
se_1019 = playSe( spep_3 + 204, 1019 );
setSeVolume( spep_3 + 204, 1019, 40 );
playSe( spep_3-16 + 232, 1189 );
setSeVolume( spep_3-16 + 232, 1189, 224 );

stopSe( spep_3 + 56, se_1007, 5 );
stopSe( spep_3 + 104, se_1035, 23 );
stopSe( spep_3 + 99, se_0009, 23 );
stopSe( spep_3 + 114, se_1186, 0 );
stopSe( spep_3 + 214, se_1183, 43 );
stopSe( spep_3 + 171, se_1182, 43 );
stopSe( spep_3 + 192, se_1167, 28 );
stopSe( spep_3 + 190, se_10351, 40 );
stopSe( spep_3 + 171, se_11821, 13 );


-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 238, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 234;
------------------------------------------------------
-- 悟空落下〜如意棒で叩く
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 176, hit_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 176, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_f, 0 );
setEffRotateKey( spep_4 + 176, hit_f, 0 );
setEffAlphaKey( spep_4 + 0, hit_f, 255 );
setEffAlphaKey( spep_4 + 174, hit_f, 255 );
setEffAlphaKey( spep_4 + 175, hit_f, 255 );
setEffAlphaKey( spep_4 + 176, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_4 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 176, hit_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 176, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_b, 0 );
setEffRotateKey( spep_4 + 176, hit_b, 0 );
setEffAlphaKey( spep_4 + 0, hit_b, 255 );
setEffAlphaKey( spep_4 + 174, hit_b, 255 );
setEffAlphaKey( spep_4 + 175, hit_b, 255 );
setEffAlphaKey( spep_4 + 176, hit_b, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_4-3 + 142,  10020, 24, 0x100, -1, 0, 52, 321.9 );
setEffShake( spep_4-3 + 142, ctbaki, 24, 10 );
setEffMoveKey( spep_4-3 + 142, ctbaki, 52, 321.9 , 0 );
setEffMoveKey( spep_4-3 + 144, ctbaki, 62, 321.9 , 0 );
setEffMoveKey( spep_4-3 + 146, ctbaki, 42, 331.9 , 0 );
setEffMoveKey( spep_4-3 + 148, ctbaki, 42, 311.9 , 0 );
setEffMoveKey( spep_4-3 + 150, ctbaki, 52, 321.9 , 0 );
setEffMoveKey( spep_4-3 + 152, ctbaki, 62, 321.9 , 0 );
setEffMoveKey( spep_4-3 + 154, ctbaki, 42, 331.9 , 0 );
setEffMoveKey( spep_4-3 + 156, ctbaki, 42, 311.9 , 0 );
setEffMoveKey( spep_4-3 + 158, ctbaki, 52, 321.9 , 0 );
setEffMoveKey( spep_4-3 + 160, ctbaki, 42, 331.9 , 0 );
setEffMoveKey( spep_4-3 + 162, ctbaki, 41.5, 311.5 , 0 );
setEffMoveKey( spep_4-3 + 164, ctbaki, 52, 321.9 , 0 );
setEffMoveKey( spep_4-3 + 166, ctbaki, 52, 321.9 , 0 );

setEffScaleKey( spep_4-3 + 142, ctbaki, 2.68, 2.68 );
setEffScaleKey( spep_4-3 + 160, ctbaki, 2.68, 2.68 );
setEffScaleKey( spep_4-3 + 162, ctbaki, 2.81, 2.81 );
setEffScaleKey( spep_4-3 + 164, ctbaki, 2.93, 2.93 );
setEffScaleKey( spep_4-3 + 166, ctbaki, 3.05, 3.05 );

setEffRotateKey( spep_4-3 + 142, ctbaki, 0 );
setEffRotateKey( spep_4-3 + 166, ctbaki, 0 );

setEffAlphaKey( spep_4-3 + 142, ctbaki, 255 );
setEffAlphaKey( spep_4-3 + 160, ctbaki, 255 );
setEffAlphaKey( spep_4-3 + 162, ctbaki, 170 );
setEffAlphaKey( spep_4-3 + 164, ctbaki, 85 );
setEffAlphaKey( spep_4-3 + 166, ctbaki, 0 );

--文字エントリー
ctbikkuri = entryEffectLife( spep_4-3 + 142,  10000, 24, 0x100, -1, 0, -256, 367.2 );
setEffShake( spep_4-3 + 142, ctbikkuri, 24, 10 );
setEffMoveKey( spep_4-3 + 142, ctbikkuri, -256, 367.2 , 0 );
setEffMoveKey( spep_4-3 + 144, ctbikkuri, -235.3, 350.8 , 0 );
setEffMoveKey( spep_4-3 + 146, ctbikkuri, -290, 367.8 , 0 );
setEffMoveKey( spep_4-3 + 148, ctbikkuri, -271.8, 380.5 , 0 );
setEffMoveKey( spep_4-3 + 150, ctbikkuri, -256, 367.2 , 0 );
setEffMoveKey( spep_4-3 + 152, ctbikkuri, -235.3, 350.8 , 0 );
setEffMoveKey( spep_4-3 + 154, ctbikkuri, -290, 367.8 , 0 );
setEffMoveKey( spep_4-3 + 156, ctbikkuri, -271.8, 380.5 , 0 );
setEffMoveKey( spep_4-3 + 158, ctbikkuri, -256, 367.2 , 0 );
setEffMoveKey( spep_4-3 + 160, ctbikkuri, -235.3, 350.8 , 0 );
setEffMoveKey( spep_4-3 + 162, ctbikkuri, -292.9, 368.5 , 0 );
setEffMoveKey( spep_4-3 + 164, ctbikkuri, -276.6, 382.5 , 0 );
setEffMoveKey( spep_4-3 + 166, ctbikkuri, -279, 383.5 , 0 );

setEffScaleKey( spep_4-3 + 142, ctbikkuri, 3.54, 3.54 );
setEffScaleKey( spep_4-3 + 160, ctbikkuri, 3.54, 3.54 );
setEffScaleKey( spep_4-3 + 162, ctbikkuri, 3.64, 3.64 );
setEffScaleKey( spep_4-3 + 164, ctbikkuri, 3.73, 3.73 );
setEffScaleKey( spep_4-3 + 166, ctbikkuri, 3.82, 3.82 );

setEffRotateKey( spep_4-3 + 142, ctbikkuri, -13 );
setEffRotateKey( spep_4-3 + 166, ctbikkuri, -13 );

setEffAlphaKey( spep_4-3 + 142, ctbikkuri, 255 );
setEffAlphaKey( spep_4-3 + 160, ctbikkuri, 255 );
setEffAlphaKey( spep_4-3 + 162, ctbikkuri, 170 );
setEffAlphaKey( spep_4-3 + 164, ctbikkuri, 85 );
setEffAlphaKey( spep_4-3 + 166, ctbikkuri, 0 );

--敵の動き
setDisp( spep_4-3 + 104, 1, 1);
setDisp( spep_4 + 176, 1, 0);
changeAnime( spep_4-3 + 104, 1, 102);
changeAnime( spep_4-3 + 114, 1, 100);
changeAnime( spep_4-3 + 134, 1, 5);
changeAnime( spep_4-3 + 142, 1, 107);


setMoveKey( spep_4-3 + 104, 1, 642, 344.1 , 0 );
setMoveKey( spep_4-3 + 106, 1, 534, 303 , 0 );
setMoveKey( spep_4-3 + 108, 1, 426.1, 261.9 , 0 );
setMoveKey( spep_4-3 + 110, 1, 318.2, 220.9 , 0 );
setMoveKey( spep_4-3 + 112, 1, 210.2, 179.8 , 0 );
setMoveKey( spep_4-3 + 113, 1, 210.2, 179.8 , 0 );

setMoveKey( spep_4-3 + 114, 1, 149.9, 120 , 0 );
setMoveKey( spep_4-3 + 116, 1, 149.8, 120.4 , 0 );
setMoveKey( spep_4-3 + 118, 1, 149.7, 120.7 , 0 );
setMoveKey( spep_4-3 + 120, 1, 149.6, 121 , 0 );
setMoveKey( spep_4-3 + 122, 1, 149.5, 121.4 , 0 );
setMoveKey( spep_4-3 + 124, 1, 149.4, 121.7 , 0 );
setMoveKey( spep_4-3 + 126, 1, 149.4, 122 , 0 );
setMoveKey( spep_4-3 + 128, 1, 149.3, 122.3 , 0 );
setMoveKey( spep_4-3 + 130, 1, 149.2, 122.6 , 0 );
setMoveKey( spep_4-3 + 132, 1, 149.1, 122.9 , 0 );
setMoveKey( spep_4-3 + 133, 1, 149.1, 122.9 , 0 );

setMoveKey( spep_4-3 + 134, 1, 144.4, 144.1 , 0 );
setMoveKey( spep_4-3 + 136, 1, 144.2, 144.1 , 0 );
setMoveKey( spep_4-3 + 138, 1, 144.1, 144 , 0 );
setMoveKey( spep_4-3 + 140, 1, 143.9, 144 , 0 );
setMoveKey( spep_4-3 + 141, 1, 143.9, 144 , 0 );

setMoveKey( spep_4-3 + 142, 1, -214.1, 9.5 , 0 );
setMoveKey( spep_4-3 + 144, 1, -214.2, 9.4 , 0 );
setMoveKey( spep_4-3 + 146, 1, -212.2, 11.4 , 0 );
setMoveKey( spep_4-3 + 148, 1, -173.2, -30.6 , 0 );
setMoveKey( spep_4-3 + 150, 1, -204.6, 5.1 , 0 );
setMoveKey( spep_4-3 + 152, 1, -216.7, 78 , 0 );
setMoveKey( spep_4-3 + 154, 1, -190.3, 9.7 , 0 );
setMoveKey( spep_4-3 + 156, 1, -194.4, 10.8 , 0 );
setMoveKey( spep_4-3 + 158, 1, -208.7, -21.9 , 0 );
setMoveKey( spep_4-3 + 160, 1, -227.7, 29.4 , 0 );
setMoveKey( spep_4-3 + 162, 1, -213.3, 8.1 , 0 );
setMoveKey( spep_4-3 + 164, 1, -244.4, 3 , 0 );
setMoveKey( spep_4-3 + 166, 1, -241.5, 26.1 , 0 );
setMoveKey( spep_4-3 + 168, 1, -235.4, 21.8 , 0 );
setMoveKey( spep_4-3 + 170, 1, -208.9, 10 , 0 );
setMoveKey( spep_4-3 + 172, 1, -214.6, 9.7 , 0 );
setMoveKey( spep_4-3 + 174, 1, -209, 11.6 , 0 );
setMoveKey( spep_4-3 + 176, 1, -216.4, 16.3 , 0 );
setMoveKey( spep_4 + 176, 1, -212.7, 9.5 , 0 );

setScaleKey( spep_4-3 + 104, 1, 4.39, 4.39 );
setScaleKey( spep_4-3 + 106, 1, 3.74, 3.74 );
setScaleKey( spep_4-3 + 108, 1, 3.09, 3.09 );
setScaleKey( spep_4-3 + 110, 1, 2.44, 2.44 );
setScaleKey( spep_4-3 + 112, 1, 1.78, 1.78 );
setScaleKey( spep_4-3 + 113, 1, 1.78, 1.78 );

setScaleKey( spep_4-3 + 114, 1, 1.2, 1.2 );
setScaleKey( spep_4-3 + 118, 1, 1.2, 1.2 );
setScaleKey( spep_4-3 + 120, 1, 1.21, 1.21 );
setScaleKey( spep_4-3 + 122, 1, 1.21, 1.21 );
setScaleKey( spep_4-3 + 124, 1, 1.22, 1.22 );
setScaleKey( spep_4-3 + 126, 1, 1.22, 1.22 );
setScaleKey( spep_4-3 + 128, 1, 1.23, 1.23 );
setScaleKey( spep_4-3 + 133, 1, 1.23, 1.23 );

setScaleKey( spep_4-3 + 134, 1, 1.29, 1.29 );
setScaleKey( spep_4-3 + 141, 1, 1.29, 1.29 );

setScaleKey( spep_4-3 + 142, 1, 2.02, 2.02 );
setScaleKey( spep_4 + 176, 1, 2.02, 2.02 );

setRotateKey( spep_4-3 + 104, 1, 0 );
setRotateKey( spep_4-3 + 113, 1, 0 );

setRotateKey( spep_4-3 + 114, 1, 0 );
setRotateKey( spep_4-3 + 118, 1, 0 );
setRotateKey( spep_4-3 + 120, 1, 0.1 );
setRotateKey( spep_4-3 + 126, 1, 0.1 );
setRotateKey( spep_4-3 + 128, 1, 0.2 );
setRotateKey( spep_4-3 + 133, 1, 0.2 );

setRotateKey( spep_4-3 + 134, 1, 68.2 );
setRotateKey( spep_4-3 + 141, 1, 68.2 );

setRotateKey( spep_4-3 + 142, 1, -11.4 );
setRotateKey( spep_4 + 176, 1, -11.4 );

--SE
playSe( spep_4 -16 + 37, 1189 );
playSe( spep_4 -16 + 41, 1151 );
playSe( spep_4 -16 + 63, 1152 );
playSe( spep_4 -16 + 88, 1003 );
playSe( spep_4 -16 + 106, 1189 );
setSeVolume( spep_4 -16 + 106, 1189, 79 );
se_1116 = playSe( spep_4 -16 + 110, 1116 );
playSe( spep_4 -16 + 150, 1012 );
playSe( spep_4 -16 + 152, 1120 );

stopSe( spep_4 + 5, se_0063, 15 );
stopSe( spep_4 + 117, se_1019, 18 );
stopSe( spep_4 + 134, se_1116, 38 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 178, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 176;
------------------------------------------------------
-- ブルマ＆悟空着地＆敵落下
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 220, finish_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 220, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 220, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 220, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_5 + 0, SP_08x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 220, finish_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 220, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 220, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 220, finish_b, 255 );

--敵の動き
setDisp( spep_5-3 + 100, 1, 1);
setDisp( spep_5-3 + 158, 1, 0);
changeAnime( spep_5-3 + 100, 1, 6);

setMoveKey( spep_5-3 + 110, 1, 211.8, 713.8 , 0 );
setMoveKey( spep_5-3 + 112, 1, 211.8, 681.3 , 0 );
setMoveKey( spep_5-3 + 114, 1, 211.8, 648.8 , 0 );
setMoveKey( spep_5-3 + 116, 1, 211.8, 616.3 , 0 );
setMoveKey( spep_5-3 + 118, 1, 211.8, 583.8 , 0 );
setMoveKey( spep_5-3 + 120, 1, 211.8, 551.3 , 0 );
setMoveKey( spep_5-3 + 122, 1, 211.8, 518.8 , 0 );
setMoveKey( spep_5-3 + 124, 1, 211.8, 486.3 , 0 );
setMoveKey( spep_5-3 + 126, 1, 211.8, 453.8 , 0 );
setMoveKey( spep_5-3 + 128, 1, 211.8, 421.3 , 0 );
setMoveKey( spep_5-3 + 130, 1, 211.8, 388.8 , 0 );
setMoveKey( spep_5-3 + 132, 1, 211.8, 356.3 , 0 );
setMoveKey( spep_5-3 + 134, 1, 211.8, 323.8 , 0 );
setMoveKey( spep_5-3 + 136, 1, 211.8, 291.3 , 0 );
setMoveKey( spep_5-3 + 138, 1, 211.8, 258.8 , 0 );
setMoveKey( spep_5-3 + 140, 1, 211.8, 226.3 , 0 );
setMoveKey( spep_5-3 + 142, 1, 211.8, 193.8 , 0 );
setMoveKey( spep_5-3 + 144, 1, 211.8, 161.3 , 0 );
setMoveKey( spep_5-3 + 146, 1, 211.8, 128.8 , 0 );
setMoveKey( spep_5-3 + 148, 1, 211.8, 96.3 , 0 );
setMoveKey( spep_5-3 + 150, 1, 211.8, 63.8 , 0 );
setMoveKey( spep_5-3 + 152, 1, 211.8, 31.3 , 0 );
setMoveKey( spep_5-3 + 154, 1, 211.8, -1.2 , 0 );
setMoveKey( spep_5-3 + 156, 1, 211.8, -33.7 , 0 );
setMoveKey( spep_5-3 + 158, 1, 211.8, -66.2 , 0 );

setScaleKey( spep_5-3 + 110, 1, 0.18, 0.18 );
setScaleKey( spep_5-3 + 158, 1, 0.18, 0.18 );

setRotateKey( spep_5-3 + 110, 1, -119.5 );
setRotateKey( spep_5-3 + 158, 1, -119.5 );

--SE
playSe( spep_5 + 15, 1208 );
setSeVolume( spep_5 + 15, 1208, 40 );
playSe( spep_5 + 19, 1192 );
playSe( spep_5 + 22, 1006 );
setSeVolume( spep_5 + 22, 1006, 89 );
playSe( spep_5 + 52, 1192 );
se_11823 = playSe( spep_5 + 52, 1182 );
setSeVolume( spep_5 + 52, 1182, 79 );
se_0044 = playSe( spep_5 -16 + 91, 44 );
setSeVolume( spep_5 -16 + 91, 44, 0 );
setSeVolume( spep_5 -16 + 92, 44, 4.31 );
setSeVolume( spep_5 -16 + 93, 44, 8.62 );
setSeVolume( spep_5 -16 + 94, 44, 12.92 );
setSeVolume( spep_5 -16 + 95, 44, 17.23 );
setSeVolume( spep_5 -16 + 96, 44, 21.54 );
setSeVolume( spep_5 -16 + 97, 44, 25.85 );
setSeVolume( spep_5 -16 + 98, 44, 30.15 );
setSeVolume( spep_5 -16 + 99, 44, 34.46 );
setSeVolume( spep_5 -16 + 100, 44, 38.77 );
setSeVolume( spep_5 -16 + 101, 44, 43.08 );
setSeVolume( spep_5 -16 + 102, 44, 47.38 );
setSeVolume( spep_5 -16 + 103, 44, 51.69 );
setSeVolume( spep_5 -16 + 104, 44, 56 );
playSe( spep_5 -16 + 123, 1013 );
setSeVolume( spep_5 -16 + 123, 1013, 18 );
playSe( spep_5 -16 + 124, 1106 );
setSeVolume( spep_5 -16 + 124, 1106, 158 );
playSe( spep_5 -16 + 125, 1108 );
setSeVolume( spep_5 -16 + 125, 1108, 158 );
playSe( spep_5 -16 + 176, 1159 );
setSeVolume( spep_5 + 176, 1159, 56 );

stopSe( spep_5 + 63, se_11823, 19 );
stopSe( spep_5 + 110, se_0044, 20 );

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 110 );
endPhase( spep_5 + 210 );
end