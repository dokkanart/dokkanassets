--1019340:ビルス_破壊神の裁き
--sp_effect_a2_00130

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
SP_01=	155080	;--	前半　奥
SP_02=	155081	;--	前半　手前
SP_03=	155082	;--	後半　奥
SP_04=	155083	;--	後半　手前
SP_05=	155084	;--	KO

--エフェクト(敵)
SP_01x=	155085	;--	前半　奥	(敵)
SP_02x=	155081	;--	前半　手前	
SP_03x=	155086	;--	後半　奥	(敵)
SP_04x=	155083	;--	後半　手前	
SP_05x=	155084	;--	KO	

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

if( _IS_EXTRA_ATTACK_ == 0 ) then
 adjustAttackerLabel( 0, 205);
end

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
-- 前半
------------------------------------------------------
-- ** はじめの準備 ** --
spep_0 = 0;

-- ** エフェクト等 ** --
mae_f = entryEffect( spep_0 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, mae_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 310, mae_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, mae_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 310, mae_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, mae_f, 0 );
setEffRotateKey( spep_0 + 310, mae_f, 0 );
setEffAlphaKey( spep_0 + 0, mae_f, 255 );
setEffAlphaKey( spep_0 + 310, mae_f, 255 );
setEffAlphaKey( spep_0 + 311, mae_f, 0 );
setEffAlphaKey( spep_0 + 312, mae_f, 0 );

-- ** エフェクト等 ** --
mae_b = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, mae_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 310, mae_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, mae_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 310, mae_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, mae_b, 0 );
setEffRotateKey( spep_0 + 310, mae_b, 0 );
setEffAlphaKey( spep_0 + 0, mae_b, 255 );
setEffAlphaKey( spep_0 + 310, mae_b, 255 );
setEffAlphaKey( spep_0 + 311, mae_b, 0 );
setEffAlphaKey( spep_0 + 312, mae_b, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );

changeAnime( spep_0 + 0, 1, 102 );

setBlendColor(spep_0 ,1,5,0.7,0.7,0.7,0.29);

setMoveKey( spep_0 + 0, 1, 127.8, -51.7 , 0 );
--setMoveKey( spep_0-3 + 2, 1, 127.8, -55.3 , 0 );
setMoveKey( spep_0-3 + 4, 1, 127.8, -59 , 0 );
setMoveKey( spep_0-3 + 6, 1, 127.8, -62.6 , 0 );
setMoveKey( spep_0-3 + 8, 1, 127.8, -66.2 , 0 );
setMoveKey( spep_0-3 + 10, 1, 127.8, -69.9 , 0 );
setMoveKey( spep_0-3 + 12, 1, 127.8, -73.5 , 0 );
setMoveKey( spep_0-3 + 14, 1, 127.8, -77.1 , 0 );
setMoveKey( spep_0-3 + 16, 1, 127.8, -80.8 , 0 );
setMoveKey( spep_0-3 + 18, 1, 127.8, -84.4 , 0 );
setMoveKey( spep_0-3 + 20, 1, 127.8, -88.1 , 0 );
setMoveKey( spep_0-3 + 22, 1, 127.8, -91.7 , 0 );
setMoveKey( spep_0-3 + 24, 1, 127.8, -95.3 , 0 );
setMoveKey( spep_0-3 + 26, 1, 127.8, -99 , 0 );
setMoveKey( spep_0-3 + 28, 1, 127.8, -102.6 , 0 );
setMoveKey( spep_0-3 + 30, 1, 127.8, -106.2 , 0 );
setMoveKey( spep_0-3 + 32, 1, 127.8, -109.9 , 0 );
setMoveKey( spep_0-3 + 34, 1, 127.8, -113.5 , 0 );
setMoveKey( spep_0-3 + 36, 1, 127.8, -117.1 , 0 );
setMoveKey( spep_0-3 + 38, 1, 127.8, -120.8 , 0 );
setMoveKey( spep_0-3 + 40, 1, 127.8, -124.4 , 0 );
setMoveKey( spep_0-3 + 42, 1, 127.8, -128 , 0 );


setScaleKey( spep_0 + 0, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 1, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 2, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 3, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 4, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 5, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 40, 1, 0.95, 0.95 );

setRotateKey( spep_0 + 0, 1, 23.9 );
setRotateKey( spep_0 + 1, 1, 23.9 );
setRotateKey( spep_0 + 2, 1, 23.9 );
setRotateKey( spep_0 + 3, 1, 23.9 );
setRotateKey( spep_0 + 4, 1, 23.9 );
setRotateKey( spep_0 + 5, 1, 23.9 );
setRotateKey( spep_0 + 40, 1, 23.9 );

--SE
se_1019 = playSe( spep_0 + 0, 1019 );
setSeVolume( spep_0 + 0, 1019, 32 );
se_1175 = playSe( spep_0 + 0, 1175 );
setSeVolume( spep_0 + 0, 1175, 35 );
SE0=playSe( spep_0 + 0, 1182 );
setSeVolume( spep_0 + 0, 1182, 0 );
setSeVolume( spep_0 + 3, 1182, 0 );
setSeVolume( spep_0 + 4, 1182, 4.55 );
setSeVolume( spep_0 + 5, 1182, 9.09 );
setSeVolume( spep_0 + 6, 1182, 13.64 );
setSeVolume( spep_0 + 7, 1182, 18.18 );
setSeVolume( spep_0 + 8, 1182, 22.73 );
setSeVolume( spep_0 + 9, 1182, 27.27 );
setSeVolume( spep_0 + 10, 1182, 31.82 );
setSeVolume( spep_0 + 11, 1182, 36.36 );
setSeVolume( spep_0 + 12, 1182, 40.91 );
setSeVolume( spep_0 + 13, 1182, 45.45 );
setSeVolume( spep_0 + 14, 1182, 50.00 );
setSeVolume( spep_0 + 15, 1182, 54.55 );
setSeVolume( spep_0 + 16, 1182, 59.09 );
setSeVolume( spep_0 + 17, 1182, 63.64 );
setSeVolume( spep_0 + 18, 1182, 68.18 );
setSeVolume( spep_0 + 19, 1182, 72.73 );
setSeVolume( spep_0 + 20, 1182, 77.27 );
setSeVolume( spep_0 + 21, 1182, 81.82 );
setSeVolume( spep_0 + 22, 1182, 86.36 );
setSeVolume( spep_0 + 23, 1182, 90.91 );
setSeVolume( spep_0 + 24, 1182, 95.45 );
setSeVolume( spep_0 + 25, 1182, 100 );
se_1164 = playSe( spep_0 + 0, 1164 );
setSeVolume( spep_0 + 0, 1164, 50 );
SE1=playSe( spep_0 + 9, 20 );
setSeVolume( spep_0 + 9, 20, 0 );
setSeVolume( spep_0 + 10, 20, 0 );
setSeVolume( spep_0 + 11, 20, 6.67 );
setSeVolume( spep_0 + 12, 20, 13.33 );
setSeVolume( spep_0 + 13, 20, 20 );
setSeVolume( spep_0 + 14, 20, 26.67 );
setSeVolume( spep_0 + 15, 20, 33.33 );
setSeVolume( spep_0 + 16, 20, 40.00 );
setSeVolume( spep_0 + 17, 20, 46.67 );
setSeVolume( spep_0 + 18, 20, 53.33 );
setSeVolume( spep_0 + 19, 20, 60 );
setSeVolume( spep_0 + 20, 20, 66.67 );
setSeVolume( spep_0 + 21, 20, 73.33 );
setSeVolume( spep_0 + 22, 20, 80);
setSeVolume( spep_0 + 23, 20, 86.67 );
setSeVolume( spep_0 + 24, 20, 93.33 );
setSeVolume( spep_0 + 25, 20, 100 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 312, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    pauseAll( SP_dodge, 67 );
    stopSe( SP_dodge, se_1019, 0 );
    stopSe( SP_dodge, se_1175, 0 );
    stopSe( SP_dodge, SE0, 0 );
    stopSe( SP_dodge, SE1, 0 );

    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    --敵の固定
    setDisp( SP_dodge + 9, 1, 0 );
    setBlendColor(SP_dodge + 9,1,5,0,0,0,0);
    setMoveKey( SP_dodge + 9, 1, 127.8, -128 , 0 );
    setScaleKey( SP_dodge + 9, 1, 0.95, 0.95 );
    setRotateKey( SP_dodge + 9, 1, 23.9 );

    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--敵のうごき
setDisp( spep_0 -1 + 132, 1, 0 );

setBlendColor(spep_0-1 + 132,1,5,0,0,0,0);

setMoveKey( spep_0-3 + 44, 1, 127.8, -131.7 , 0 );
setMoveKey( spep_0-3 + 46, 1, 127.8, -135.3 , 0 );
setMoveKey( spep_0-3 + 48, 1, 127.8, -139 , 0 );
setMoveKey( spep_0-3 + 50, 1, 127.8, -142.6 , 0 );
setMoveKey( spep_0-3 + 52, 1, 127.8, -146.2 , 0 );
setMoveKey( spep_0-3 + 54, 1, 127.8, -149.9 , 0 );
setMoveKey( spep_0-3 + 56, 1, 127.8, -153.5 , 0 );
setMoveKey( spep_0-3 + 58, 1, 127.8, -157.1 , 0 );
setMoveKey( spep_0-3 + 60, 1, 127.8, -160.8 , 0 );
setMoveKey( spep_0-3 + 62, 1, 127.8, -164.4 , 0 );
setMoveKey( spep_0-3 + 64, 1, 127.8, -168 , 0 );
setMoveKey( spep_0-3 + 66, 1, 127.8, -171.7 , 0 );
setMoveKey( spep_0-3 + 68, 1, 127.8, -175.3 , 0 );
setMoveKey( spep_0-3 + 70, 1, 127.8, -179 , 0 );
setMoveKey( spep_0-3 + 72, 1, 127.8, -182.6 , 0 );
setMoveKey( spep_0-3 + 74, 1, 127.8, -186.2 , 0 );
setMoveKey( spep_0-3 + 76, 1, 127.8, -189.9 , 0 );
setMoveKey( spep_0-3 + 78, 1, 127.8, -193.5 , 0 );
setMoveKey( spep_0-3 + 80, 1, 127.8, -197.1 , 0 );
setMoveKey( spep_0-3 + 82, 1, 127.8, -200.8 , 0 );
setMoveKey( spep_0-3 + 84, 1, 127.8, -204.4 , 0 );
setMoveKey( spep_0-3 + 86, 1, 127.8, -208 , 0 );
setMoveKey( spep_0-3 + 88, 1, 127.8, -211.7 , 0 );
setMoveKey( spep_0-3 + 90, 1, 127.8, -215.3 , 0 );
setMoveKey( spep_0-3 + 92, 1, 127.8, -218.9 , 0 );
setMoveKey( spep_0-3 + 94, 1, 127.8, -222.6 , 0 );
setMoveKey( spep_0-3 + 96, 1, 127.8, -226.2 , 0 );
setMoveKey( spep_0-3 + 98, 1, 127.8, -229.9 , 0 );
setMoveKey( spep_0-3 + 100, 1, 127.8, -233.5 , 0 );
setMoveKey( spep_0-3 + 102, 1, 127.8, -237.1 , 0 );
setMoveKey( spep_0-3 + 104, 1, 127.8, -240.8 , 0 );
setMoveKey( spep_0-3 + 106, 1, 127.8, -244.4 , 0 );
setMoveKey( spep_0-3 + 108, 1, 127.8, -248 , 0 );
setMoveKey( spep_0-3 + 110, 1, 127.7, -251.7 , 0 );
setMoveKey( spep_0-3 + 112, 1, 127.7, -255.3 , 0 );
setMoveKey( spep_0-3 + 114, 1, 127.7, -258.9 , 0 );
setMoveKey( spep_0-3 + 116, 1, 127.7, -262.6 , 0 );
setMoveKey( spep_0-3 + 118, 1, 127.7, -266.2 , 0 );
setMoveKey( spep_0-3 + 120, 1, 127.7, -269.9 , 0 );
setMoveKey( spep_0-3 + 122, 1, 127.7, -273.5 , 0 );
setMoveKey( spep_0-3 + 124, 1, 127.7, -277.1 , 0 );
setMoveKey( spep_0-3 + 126, 1, 127.7, -280.8 , 0 );
setMoveKey( spep_0-3 + 128, 1, 127.7, -284.4 , 0 );
setMoveKey( spep_0-3 + 130, 1, 127.7, -288 , 0 );
setMoveKey( spep_0-1 + 132, 1, 127.7, -291.7 , 0 );

setScaleKey( spep_0-1 + 132, 1, 0.95, 0.95 );

setRotateKey( spep_0-3 + 88, 1, 23.9 );
setRotateKey( spep_0-3 + 90, 1, 23.8 );
setRotateKey( spep_0-1 + 132, 1, 23.8 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 230 -12  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 230 -12  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE

se_1191 = playSe( spep_0 + 106, 1191 );
setSeVolume( spep_0 + 106, 1191, 0 );
setSeVolume( spep_0 + 158, 1191, 0 );
setSeVolume( spep_0 + 159, 1191, 3.23 );
setSeVolume( spep_0 + 160, 1191, 6.45 );
setSeVolume( spep_0 + 161, 1191, 9.68 );
setSeVolume( spep_0 + 162, 1191, 12.9 );
setSeVolume( spep_0 + 163, 1191, 16.13 );
setSeVolume( spep_0 + 164, 1191, 19.35 );
setSeVolume( spep_0 + 165, 1191, 22.58 );
setSeVolume( spep_0 + 166, 1191, 25.81 );
setSeVolume( spep_0 + 167, 1191, 29.03 );
setSeVolume( spep_0 + 168, 1191, 32.26 );
setSeVolume( spep_0 + 169, 1191, 35.48 );
setSeVolume( spep_0 + 170, 1191, 38.71 );
setSeVolume( spep_0 + 171, 1191, 41.94 );
setSeVolume( spep_0 + 172, 1191, 45.16 );
setSeVolume( spep_0 + 173, 1191, 48.39 );
setSeVolume( spep_0 + 174, 1191, 51.61 );
setSeVolume( spep_0 + 175, 1191, 54.84 );
setSeVolume( spep_0 + 176, 1191, 58.06 );
setSeVolume( spep_0 + 177, 1191, 61.29 );
setSeVolume( spep_0 + 178, 1191, 64.52 );
setSeVolume( spep_0 + 179, 1191, 67.74 );
setSeVolume( spep_0 + 180, 1191, 70.97 );
setSeVolume( spep_0 + 181, 1191, 74.19 );
setSeVolume( spep_0 + 182, 1191, 77.42 );
setSeVolume( spep_0 + 183, 1191, 80.65 );
setSeVolume( spep_0 + 184, 1191, 83.87 );
setSeVolume( spep_0 + 185, 1191, 87.1 );
setSeVolume( spep_0 + 186, 1191, 90.32 );
setSeVolume( spep_0 + 187, 1191, 93.55 );
setSeVolume( spep_0 + 188, 1191, 96.77 );
setSeVolume( spep_0 + 189, 1191, 100 );
se_1222 = playSe( spep_0 + 142, 1222 );
se_1158 = playSe( spep_0 + 142, 1158 );
setSeVolume( spep_0 + 142, 1158, 50 );
se_1161 = playSe( spep_0 + 142, 1161 );
setSeVolume( spep_0 + 142, 1161, 79 );
playSe( spep_0 + 150, 49 );
playSe( spep_0 + 230, 1018 );
playSe( spep_0 + 235, 1224 );
setSeVolume( spep_0 + 235, 1224, 50 );
playSe( spep_0 + 256, 1225 );

stopSe( spep_0 + 140, se_1019, 0 );
stopSe( spep_0 + 134, se_1175, 32 );
stopSe( spep_0 + 150, se_1164, 0 );
stopSe( spep_0 + 249, se_1191, 0 );
stopSe( spep_0 + 174, se_1222, 43 );
stopSe( spep_0 + 239, se_1158, 26 );
stopSe( spep_0 + 166, se_1161, 77 );

--次の準備
spep_1 = spep_0+310;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 84, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 84, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 84, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 84, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 84, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 82, shuchusen, 255 );
setEffAlphaKey( spep_1 + 83, shuchusen, 255 );
setEffAlphaKey( spep_1 + 84, shuchusen, 0 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

--白フェード
--entryFade( spep_1 + 80, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 84;

------------------------------------------------------
-- 後半
------------------------------------------------------
-- ** エフェクト等 ** --
usiro_f = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, usiro_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 640, usiro_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, usiro_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 640, usiro_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, usiro_f, 0 );
setEffRotateKey( spep_2 + 640, usiro_f, 0 );
setEffAlphaKey( spep_2 + 0, usiro_f, 255 );
setEffAlphaKey( spep_2 + 640, usiro_f, 255 );
setEffAlphaKey( spep_2 + 641, usiro_f, 0 );
setEffAlphaKey( spep_2 + 642, usiro_f, 0 );

-- ** エフェクト等 ** --
usiro_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, usiro_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 640, usiro_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, usiro_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 640, usiro_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, usiro_b, 0 );
setEffRotateKey( spep_2 + 660, usiro_b, 0 );
setEffAlphaKey( spep_2 + 0, usiro_b, 255 );
setEffAlphaKey( spep_2 + 640, usiro_b, 255 );
setEffAlphaKey( spep_2 + 641, usiro_b, 0 );
setEffAlphaKey( spep_2 + 642, usiro_b, 0 );

--敵の動き
setDisp( spep_2-3 + 46, 1, 1 );
setDisp( spep_2-1 + 218, 1, 0 );

changeAnime( spep_2-3 + 46, 1, 118 );

setBlendColor(spep_2-3 + 148,1,2,1,0.4,0,0.55);
setBlendColor(spep_2-1 + 218,1,5,0,0,0,0);

setGaussBlurKey(spep_2-3 + 148, 1,  0.002 );
setGaussBlurKey(spep_2-1 + 218, 1,  0.002 );

setMoveKey( spep_2-3 + 46, 1, 58.2, -14.2 , 0 );
setMoveKey( spep_2-3 + 146, 1, 58.2, -14.2 , 0 );
setMoveKey( spep_2-3 + 147, 1, 58.2, -14.2 , 0 );
setMoveKey( spep_2-3 + 148, 1, 132.4, -74.3 , 0 );
setMoveKey( spep_2-3 + 150, 1, 132.7, -74.5 , 0 );
setMoveKey( spep_2-3 + 152, 1, 133, -74.7 , 0 );
setMoveKey( spep_2-3 + 154, 1, 133.3, -75 , 0 );
setMoveKey( spep_2-3 + 156, 1, 133.6, -75.2 , 0 );
setMoveKey( spep_2-3 + 158, 1, 133.9, -75.5 , 0 );
setMoveKey( spep_2-3 + 160, 1, 134.2, -75.7 , 0 );
setMoveKey( spep_2-3 + 162, 1, 134.5, -76 , 0 );
setMoveKey( spep_2-3 + 164, 1, 134.9, -76.2 , 0 );
setMoveKey( spep_2-3 + 166, 1, 135.2, -76.4 , 0 );
setMoveKey( spep_2-3 + 168, 1, 135.5, -76.7 , 0 );
setMoveKey( spep_2-3 + 170, 1, 135.8, -76.9 , 0 );
setMoveKey( spep_2-3 + 172, 1, 136.1, -77.2 , 0 );
setMoveKey( spep_2-3 + 174, 1, 136.4, -77.4 , 0 );
setMoveKey( spep_2-3 + 176, 1, 136.7, -77.6 , 0 );
setMoveKey( spep_2-3 + 178, 1, 137, -77.9 , 0 );
setMoveKey( spep_2-3 + 180, 1, 137.3, -78.1 , 0 );
setMoveKey( spep_2-3 + 182, 1, 137.6, -78.4 , 0 );
setMoveKey( spep_2-3 + 184, 1, 137.9, -78.6 , 0 );
setMoveKey( spep_2-3 + 186, 1, 138.2, -78.8 , 0 );
setMoveKey( spep_2-3 + 188, 1, 138.5, -79.1 , 0 );
setMoveKey( spep_2-3 + 190, 1, 138.8, -79.3 , 0 );
setMoveKey( spep_2-3 + 192, 1, 139.1, -79.6 , 0 );
setMoveKey( spep_2-3 + 194, 1, 139.4, -79.8 , 0 );
setMoveKey( spep_2-3 + 196, 1, 139.7, -80.1 , 0 );
setMoveKey( spep_2-3 + 198, 1, 140, -80.3 , 0 );
setMoveKey( spep_2-3 + 200, 1, 140.3, -80.5 , 0 );
setMoveKey( spep_2-3 + 202, 1, 140.6, -80.8 , 0 );
setMoveKey( spep_2-3 + 204, 1, 140.9, -81 , 0 );
setMoveKey( spep_2-3 + 206, 1, 141.2, -81.3 , 0 );
setMoveKey( spep_2-3 + 208, 1, 141.5, -81.5 , 0 );
setMoveKey( spep_2-3 + 210, 1, 141.8, -81.7 , 0 );
setMoveKey( spep_2-3 + 212, 1, 142.1, -82 , 0 );
setMoveKey( spep_2-1 + 218, 1, 142.4, -82.2 , 0 );

setScaleKey( spep_2-3 + 46, 1, 0.14, 0.14 );
setScaleKey( spep_2-3 + 146, 1, 0.14, 0.14 );
setScaleKey( spep_2-3 + 147, 1, 0.14, 0.14 );
setScaleKey( spep_2-3 + 148, 1, 0.53, 0.53 );
--setScaleKey( spep_2-3 + 164, 1, 0.53, 0.53 );
--setScaleKey( spep_2-3 + 166, 1, 0.54, 0.54 );
--setScaleKey( spep_2-3 + 208, 1, 0.54, 0.54 );
setScaleKey( spep_2-3 + 210, 1, 0.55, 0.55 );
setScaleKey( spep_2-1 + 218, 1, 0.55, 0.55 );

setRotateKey( spep_2-3 + 46, 1, 28.5 );
setRotateKey( spep_2 -1+ 218, 1, 28.5 );

--文字エントリー
ctdogyu = entryEffectLife( spep_2-3 + 486,  10029, 16, 0x100, -1, 0, -105.1, 239.4 );--ドギュッ

setEffMoveKey( spep_2-3 + 486, ctdogyu, -105.1, 239.4 , 0 );
setEffMoveKey( spep_2-3 + 488, ctdogyu, -105.3, 276.3 , 0 );
setEffMoveKey( spep_2-3 + 490, ctdogyu, -95.7, 288.3 , 0 );
setEffMoveKey( spep_2-3 + 492, ctdogyu, -104.1, 297.2 , 0 );
setEffMoveKey( spep_2-3 + 494, ctdogyu, -88, 308.4 , 0 );
setEffMoveKey( spep_2-3 + 496, ctdogyu, -95.3, 303.7 , 0 );
setEffMoveKey( spep_2-3 + 498, ctdogyu, -104.4, 310.8 , 0 );
setEffMoveKey( spep_2-3 + 500, ctdogyu, -87.3, 321.3 , 0 );
setEffMoveKey( spep_2-3 + 502, ctdogyu, -87.2, 322.7 , 0 );

setEffScaleKey( spep_2-3 + 486, ctdogyu, 1, 1 );
setEffScaleKey( spep_2-3 + 488, ctdogyu, 1.7, 1.7 );
setEffScaleKey( spep_2-3 + 490, ctdogyu, 1.93, 1.93 );
setEffScaleKey( spep_2-3 + 492, ctdogyu, 2.02, 2.02 );
setEffScaleKey( spep_2-3 + 494, ctdogyu, 2.08, 2.08 );
setEffScaleKey( spep_2-3 + 496, ctdogyu, 2.09, 2.09 );
setEffScaleKey( spep_2-3 + 498, ctdogyu, 2.16, 2.16 );
setEffScaleKey( spep_2-3 + 500, ctdogyu, 2.21, 2.21 );
setEffScaleKey( spep_2-3 + 502, ctdogyu, 2.22, 2.22 );

setEffRotateKey( spep_2-3 + 486, ctdogyu, -16.2 );
setEffRotateKey( spep_2-3 + 502, ctdogyu, -16.2 );

setEffAlphaKey( spep_2-3 + 486, ctdogyu, 255 );
setEffAlphaKey( spep_2-3 + 496, ctdogyu, 255 );
setEffAlphaKey( spep_2-3 + 498, ctdogyu, 113 );
setEffAlphaKey( spep_2-3 + 500, ctdogyu, 28 );
setEffAlphaKey( spep_2-3 + 502, ctdogyu, 0 );

-- ** エフェクト等 ** --
KO = entryEffect( spep_2 + 608, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 608, KO, 0, 0, 0 );
setEffMoveKey( spep_2 + 696, KO, 0, 0, 0 );
setEffScaleKey( spep_2 + 608, KO, 1.0, 1.0 );
setEffScaleKey( spep_2 + 696, KO, 1.0, 1.0 );
setEffRotateKey( spep_2 + 608, KO, 0 );
setEffRotateKey( spep_2 + 696, KO, 0 );
setEffAlphaKey( spep_2 + 608, KO, 255 );
setEffAlphaKey( spep_2 + 696, KO, 255 );

--SE
se_1193 = playSe( spep_2 + 0, 1193 );
setSeVolume( spep_2 + 0, 1193, 0 );
setSeVolume( spep_2 + 29, 1193, 0);
setSeVolume( spep_2 + 30, 1193, 8 );
setSeVolume( spep_2 + 31, 1193, 16 );
setSeVolume( spep_2 + 32, 1193, 24 );
setSeVolume( spep_2 + 33, 1193, 32 );
setSeVolume( spep_2 + 34, 1193, 40 );
playSe( spep_2 + 15, 1027 );
setSeVolume( spep_2 + 15, 1027, 79 );
playSe( spep_2 + 15, 1145 );
setSeVolume( spep_2 + 15, 1145, 63 );
playSe( spep_2 + 16, 1016 );
playSe( spep_2 + 28, 1015 );
setSeVolume( spep_2 + 28, 1015, 50 );
se_1044 = playSe( spep_2 + 42, 1044 );
setSeVolume( spep_2 + 42, 1044, 50 );
setSeVolume( spep_2 + 151, 1044, 50 );
setSeVolume( spep_2 + 152, 1044, 65 );
setSeVolume( spep_2 + 153, 1044, 80 );
setSeVolume( spep_2 + 154, 1044, 95 );
setSeVolume( spep_2 + 155, 1044, 110 );
setSeVolume( spep_2 + 156, 1044, 125 );
setSeVolume( spep_2 + 157, 1044, 140 );
setSeVolume( spep_2 + 158, 1044, 155 );
setSeVolume( spep_2 + 159, 1044, 170 );
setSeVolume( spep_2 + 160, 1044, 185 );
setSeVolume( spep_2 + 161, 1044, 200 );
setSeVolume( spep_2 + 232, 1044, 200 );
setSeVolume( spep_2 + 233, 1044, 176.62 );
setSeVolume( spep_2 + 234, 1044, 153.25 );
setSeVolume( spep_2 + 235, 1044, 129.87 );
setSeVolume( spep_2 + 236, 1044, 106.5 );
setSeVolume( spep_2 + 237, 1044, 83.75 );
setSeVolume( spep_2 + 238, 1044, 59.75 );
setSeVolume( spep_2 + 239, 1044, 36.37 );
setSeVolume( spep_2 + 240, 1044, 13 );
se_1177 = playSe( spep_2 + 111, 1177 );
setSeVolume( spep_2 + 111, 1177, 0 );
setSeVolume( spep_2 + 137, 1177, 0 );
setSeVolume( spep_2 + 138, 1177, 11.45 );
setSeVolume( spep_2 + 139, 1177, 22.91 );
setSeVolume( spep_2 + 140, 1177, 34.36 );
setSeVolume( spep_2 + 141, 1177, 45.82 );
setSeVolume( spep_2 + 142, 1177, 57.27 );
setSeVolume( spep_2 + 143, 1177, 68.73 );
setSeVolume( spep_2 + 144, 1177, 80.18 );
setSeVolume( spep_2 + 145, 1177, 91.64 );
setSeVolume( spep_2 + 146, 1177, 103.09 );
setSeVolume( spep_2 + 147, 1177, 114.55 );
setSeVolume( spep_2 + 148, 1177, 126 );
playSe( spep_2 + 196, 1072 );
setSeVolume( spep_2 + 196, 1072, 126 );
playSe( spep_2 + 204, 1204 );
setSeVolume( spep_2 + 204, 1204, 0 );
setSeVolume( spep_2 + 294, 1204, 100 );
setSeVolume( spep_2 + 295, 1204, 200 );
playSe( spep_2 + 213, 1011 );
setSeVolume( spep_2 + 213, 1011, 0 );
setSeVolume( spep_2 + 214, 1011, 0 );
setSeVolume( spep_2 + 215, 1011, 4.05 );
setSeVolume( spep_2 + 216, 1011, 8.09 );
setSeVolume( spep_2 + 217, 1011, 12.14 );
setSeVolume( spep_2 + 218, 1011, 16.18 );
setSeVolume( spep_2 + 219, 1011, 20.23 );
setSeVolume( spep_2 + 220, 1011, 24.27 );
setSeVolume( spep_2 + 221, 1011, 28.32 );
setSeVolume( spep_2 + 222, 1011, 32.36 );
setSeVolume( spep_2 + 223, 1011, 36.41 );
setSeVolume( spep_2 + 224, 1011, 40.45 );
setSeVolume( spep_2 + 225, 1011, 44.5 );
setSeVolume( spep_2 + 226, 1011, 48.55 );
setSeVolume( spep_2 + 227, 1011, 52.59 );
setSeVolume( spep_2 + 228, 1011, 56.64 );
setSeVolume( spep_2 + 229, 1011, 60.68 );
setSeVolume( spep_2 + 230, 1011, 64.73 );
setSeVolume( spep_2 + 231, 1011, 68.77 );
setSeVolume( spep_2 + 232, 1011, 72.82 );
setSeVolume( spep_2 + 233, 1011, 76.86 );
setSeVolume( spep_2 + 234, 1011, 80.91 );
setSeVolume( spep_2 + 235, 1011, 84.95 );
setSeVolume( spep_2 + 236, 1011, 89 );
playSe( spep_2 + 232, 1003 );
se_1191 = playSe( spep_2 + 295, 1191 );
se_1158 = playSe( spep_2 + 295, 1158 );
setSeVolume( spep_2 + 295, 1158, 63 );
playSe( spep_2 + 295, 1209 );
setSeVolume( spep_2 + 295, 1209, 63 );
playSe( spep_2 + 425, 1022 );
setSeVolume( spep_2 + 425, 1022, 79 );
playSe( spep_2 + 426, 1021 );
setSeVolume( spep_2 + 426, 1021, 89 );
playSe( spep_2 + 426, 1027 );
setSeVolume( spep_2 + 426, 1027, 79 );
playSe( spep_2 + 426, 1026 );
setSeVolume( spep_2 + 426, 1026, 89 );
playSe( spep_2 + 433, 1213 );
setSeVolume( spep_2 + 433, 1213, 32 );
playSe( spep_2 + 488, 1014 );
playSe( spep_2 + 491, 1023 );
playSe( spep_2 + 565, 1024 );
playSe( spep_2 + 567, 1159 );
playSe( spep_2 + 567, 1182 );
playSe( spep_2 + 579, 1023 );
setSeVolume( spep_2 + 579, 1023, 79 );

stopSe( spep_2 + 226, se_1193, 28 );
stopSe( spep_2 + 316, se_1044, 0 );
stopSe( spep_2 + 230, se_1177, 46 );
stopSe( spep_2 + 433, se_1191, 0 );
stopSe( spep_2 + 433, se_1158, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 612, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ダメージ表示 ** --
hideKoScreen();  --黒フィルター削除
dealDamage( spep_2 + 484 );
entryFade( spep_2 +606, 2,  4, 2, 255, 255, 255, 255); 
endPhase( spep_2 + 610 );

else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 前半
------------------------------------------------------
-- ** はじめの準備 ** --
spep_0 = 0;

-- ** エフェクト等 ** --
mae_f = entryEffect( spep_0 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, mae_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 310, mae_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, mae_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 310, mae_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, mae_f, 0 );
setEffRotateKey( spep_0 + 310, mae_f, 0 );
setEffAlphaKey( spep_0 + 0, mae_f, 255 );
setEffAlphaKey( spep_0 + 310, mae_f, 255 );
setEffAlphaKey( spep_0 + 311, mae_f, 0 );
setEffAlphaKey( spep_0 + 312, mae_f, 0 );

-- ** エフェクト等 ** --
mae_b = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, mae_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 310, mae_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, mae_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 310, mae_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, mae_b, 0 );
setEffRotateKey( spep_0 + 310, mae_b, 0 );
setEffAlphaKey( spep_0 + 0, mae_b, 255 );
setEffAlphaKey( spep_0 + 310, mae_b, 255 );
setEffAlphaKey( spep_0 + 311, mae_b, 0 );
setEffAlphaKey( spep_0 + 312, mae_b, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );

changeAnime( spep_0 + 0, 1, 102 );

setBlendColor(spep_0 ,1,5,0.7,0.7,0.7,0.29);

setMoveKey( spep_0 + 0, 1, 127.8, -51.7 , 0 );
--setMoveKey( spep_0-3 + 2, 1, 127.8, -55.3 , 0 );
setMoveKey( spep_0-3 + 4, 1, 127.8, -59 , 0 );
setMoveKey( spep_0-3 + 6, 1, 127.8, -62.6 , 0 );
setMoveKey( spep_0-3 + 8, 1, 127.8, -66.2 , 0 );
setMoveKey( spep_0-3 + 10, 1, 127.8, -69.9 , 0 );
setMoveKey( spep_0-3 + 12, 1, 127.8, -73.5 , 0 );
setMoveKey( spep_0-3 + 14, 1, 127.8, -77.1 , 0 );
setMoveKey( spep_0-3 + 16, 1, 127.8, -80.8 , 0 );
setMoveKey( spep_0-3 + 18, 1, 127.8, -84.4 , 0 );
setMoveKey( spep_0-3 + 20, 1, 127.8, -88.1 , 0 );
setMoveKey( spep_0-3 + 22, 1, 127.8, -91.7 , 0 );
setMoveKey( spep_0-3 + 24, 1, 127.8, -95.3 , 0 );
setMoveKey( spep_0-3 + 26, 1, 127.8, -99 , 0 );
setMoveKey( spep_0-3 + 28, 1, 127.8, -102.6 , 0 );
setMoveKey( spep_0-3 + 30, 1, 127.8, -106.2 , 0 );
setMoveKey( spep_0-3 + 32, 1, 127.8, -109.9 , 0 );
setMoveKey( spep_0-3 + 34, 1, 127.8, -113.5 , 0 );
setMoveKey( spep_0-3 + 36, 1, 127.8, -117.1 , 0 );
setMoveKey( spep_0-3 + 38, 1, 127.8, -120.8 , 0 );
setMoveKey( spep_0-3 + 40, 1, 127.8, -124.4 , 0 );
setMoveKey( spep_0-3 + 42, 1, 127.8, -128 , 0 );


setScaleKey( spep_0 + 0, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 1, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 2, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 3, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 4, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 5, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 40, 1, 0.95, 0.95 );

setRotateKey( spep_0 + 0, 1, 23.9 );
setRotateKey( spep_0 + 1, 1, 23.9 );
setRotateKey( spep_0 + 2, 1, 23.9 );
setRotateKey( spep_0 + 3, 1, 23.9 );
setRotateKey( spep_0 + 4, 1, 23.9 );
setRotateKey( spep_0 + 5, 1, 23.9 );
setRotateKey( spep_0 + 40, 1, 23.9 );

--SE
se_1019 = playSe( spep_0 + 0, 1019 );
setSeVolume( spep_0 + 0, 1019, 32 );
se_1175 = playSe( spep_0 + 0, 1175 );
setSeVolume( spep_0 + 0, 1175, 35 );
SE0=playSe( spep_0 + 0, 1182 );
setSeVolume( spep_0 + 0, 1182, 0 );
setSeVolume( spep_0 + 3, 1182, 0 );
setSeVolume( spep_0 + 4, 1182, 4.55 );
setSeVolume( spep_0 + 5, 1182, 9.09 );
setSeVolume( spep_0 + 6, 1182, 13.64 );
setSeVolume( spep_0 + 7, 1182, 18.18 );
setSeVolume( spep_0 + 8, 1182, 22.73 );
setSeVolume( spep_0 + 9, 1182, 27.27 );
setSeVolume( spep_0 + 10, 1182, 31.82 );
setSeVolume( spep_0 + 11, 1182, 36.36 );
setSeVolume( spep_0 + 12, 1182, 40.91 );
setSeVolume( spep_0 + 13, 1182, 45.45 );
setSeVolume( spep_0 + 14, 1182, 50.00 );
setSeVolume( spep_0 + 15, 1182, 54.55 );
setSeVolume( spep_0 + 16, 1182, 59.09 );
setSeVolume( spep_0 + 17, 1182, 63.64 );
setSeVolume( spep_0 + 18, 1182, 68.18 );
setSeVolume( spep_0 + 19, 1182, 72.73 );
setSeVolume( spep_0 + 20, 1182, 77.27 );
setSeVolume( spep_0 + 21, 1182, 81.82 );
setSeVolume( spep_0 + 22, 1182, 86.36 );
setSeVolume( spep_0 + 23, 1182, 90.91 );
setSeVolume( spep_0 + 24, 1182, 95.45 );
setSeVolume( spep_0 + 25, 1182, 100 );
se_1164 = playSe( spep_0 + 0, 1164 );
setSeVolume( spep_0 + 0, 1164, 50 );
SE1=playSe( spep_0 + 9, 20 );
setSeVolume( spep_0 + 9, 20, 0 );
setSeVolume( spep_0 + 10, 20, 0 );
setSeVolume( spep_0 + 11, 20, 6.67 );
setSeVolume( spep_0 + 12, 20, 13.33 );
setSeVolume( spep_0 + 13, 20, 20 );
setSeVolume( spep_0 + 14, 20, 26.67 );
setSeVolume( spep_0 + 15, 20, 33.33 );
setSeVolume( spep_0 + 16, 20, 40.00 );
setSeVolume( spep_0 + 17, 20, 46.67 );
setSeVolume( spep_0 + 18, 20, 53.33 );
setSeVolume( spep_0 + 19, 20, 60 );
setSeVolume( spep_0 + 20, 20, 66.67 );
setSeVolume( spep_0 + 21, 20, 73.33 );
setSeVolume( spep_0 + 22, 20, 80);
setSeVolume( spep_0 + 23, 20, 86.67 );
setSeVolume( spep_0 + 24, 20, 93.33 );
setSeVolume( spep_0 + 25, 20, 100 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 312, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    pauseAll( SP_dodge, 67 );
    stopSe( SP_dodge, se_1019, 0 );
    stopSe( SP_dodge, se_1175, 0 );
    stopSe( SP_dodge, SE0, 0 );
    stopSe( SP_dodge, SE1, 0 );

    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    --敵の固定
    setDisp( SP_dodge + 9, 1, 0 );
    setBlendColor(SP_dodge + 9,1,5,0,0,0,0);
    setMoveKey( SP_dodge + 9, 1, 127.8, -128 , 0 );
    setScaleKey( SP_dodge + 9, 1, 0.95, 0.95 );
    setRotateKey( SP_dodge + 9, 1, 23.9 );

    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--敵のうごき
setDisp( spep_0 -1 + 132, 1, 0 );

setBlendColor(spep_0-1 + 132,1,5,0,0,0,0);

setMoveKey( spep_0-3 + 44, 1, 127.8, -131.7 , 0 );
setMoveKey( spep_0-3 + 46, 1, 127.8, -135.3 , 0 );
setMoveKey( spep_0-3 + 48, 1, 127.8, -139 , 0 );
setMoveKey( spep_0-3 + 50, 1, 127.8, -142.6 , 0 );
setMoveKey( spep_0-3 + 52, 1, 127.8, -146.2 , 0 );
setMoveKey( spep_0-3 + 54, 1, 127.8, -149.9 , 0 );
setMoveKey( spep_0-3 + 56, 1, 127.8, -153.5 , 0 );
setMoveKey( spep_0-3 + 58, 1, 127.8, -157.1 , 0 );
setMoveKey( spep_0-3 + 60, 1, 127.8, -160.8 , 0 );
setMoveKey( spep_0-3 + 62, 1, 127.8, -164.4 , 0 );
setMoveKey( spep_0-3 + 64, 1, 127.8, -168 , 0 );
setMoveKey( spep_0-3 + 66, 1, 127.8, -171.7 , 0 );
setMoveKey( spep_0-3 + 68, 1, 127.8, -175.3 , 0 );
setMoveKey( spep_0-3 + 70, 1, 127.8, -179 , 0 );
setMoveKey( spep_0-3 + 72, 1, 127.8, -182.6 , 0 );
setMoveKey( spep_0-3 + 74, 1, 127.8, -186.2 , 0 );
setMoveKey( spep_0-3 + 76, 1, 127.8, -189.9 , 0 );
setMoveKey( spep_0-3 + 78, 1, 127.8, -193.5 , 0 );
setMoveKey( spep_0-3 + 80, 1, 127.8, -197.1 , 0 );
setMoveKey( spep_0-3 + 82, 1, 127.8, -200.8 , 0 );
setMoveKey( spep_0-3 + 84, 1, 127.8, -204.4 , 0 );
setMoveKey( spep_0-3 + 86, 1, 127.8, -208 , 0 );
setMoveKey( spep_0-3 + 88, 1, 127.8, -211.7 , 0 );
setMoveKey( spep_0-3 + 90, 1, 127.8, -215.3 , 0 );
setMoveKey( spep_0-3 + 92, 1, 127.8, -218.9 , 0 );
setMoveKey( spep_0-3 + 94, 1, 127.8, -222.6 , 0 );
setMoveKey( spep_0-3 + 96, 1, 127.8, -226.2 , 0 );
setMoveKey( spep_0-3 + 98, 1, 127.8, -229.9 , 0 );
setMoveKey( spep_0-3 + 100, 1, 127.8, -233.5 , 0 );
setMoveKey( spep_0-3 + 102, 1, 127.8, -237.1 , 0 );
setMoveKey( spep_0-3 + 104, 1, 127.8, -240.8 , 0 );
setMoveKey( spep_0-3 + 106, 1, 127.8, -244.4 , 0 );
setMoveKey( spep_0-3 + 108, 1, 127.8, -248 , 0 );
setMoveKey( spep_0-3 + 110, 1, 127.7, -251.7 , 0 );
setMoveKey( spep_0-3 + 112, 1, 127.7, -255.3 , 0 );
setMoveKey( spep_0-3 + 114, 1, 127.7, -258.9 , 0 );
setMoveKey( spep_0-3 + 116, 1, 127.7, -262.6 , 0 );
setMoveKey( spep_0-3 + 118, 1, 127.7, -266.2 , 0 );
setMoveKey( spep_0-3 + 120, 1, 127.7, -269.9 , 0 );
setMoveKey( spep_0-3 + 122, 1, 127.7, -273.5 , 0 );
setMoveKey( spep_0-3 + 124, 1, 127.7, -277.1 , 0 );
setMoveKey( spep_0-3 + 126, 1, 127.7, -280.8 , 0 );
setMoveKey( spep_0-3 + 128, 1, 127.7, -284.4 , 0 );
setMoveKey( spep_0-3 + 130, 1, 127.7, -288 , 0 );
setMoveKey( spep_0-1 + 132, 1, 127.7, -291.7 , 0 );

setScaleKey( spep_0-1 + 132, 1, 0.95, 0.95 );

setRotateKey( spep_0-3 + 88, 1, 23.9 );
setRotateKey( spep_0-3 + 90, 1, 23.8 );
setRotateKey( spep_0-1 + 132, 1, 23.8 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 230 -12  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 230 -12  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE

se_1191 = playSe( spep_0 + 106, 1191 );
setSeVolume( spep_0 + 106, 1191, 0 );
setSeVolume( spep_0 + 158, 1191, 0 );
setSeVolume( spep_0 + 159, 1191, 3.23 );
setSeVolume( spep_0 + 160, 1191, 6.45 );
setSeVolume( spep_0 + 161, 1191, 9.68 );
setSeVolume( spep_0 + 162, 1191, 12.9 );
setSeVolume( spep_0 + 163, 1191, 16.13 );
setSeVolume( spep_0 + 164, 1191, 19.35 );
setSeVolume( spep_0 + 165, 1191, 22.58 );
setSeVolume( spep_0 + 166, 1191, 25.81 );
setSeVolume( spep_0 + 167, 1191, 29.03 );
setSeVolume( spep_0 + 168, 1191, 32.26 );
setSeVolume( spep_0 + 169, 1191, 35.48 );
setSeVolume( spep_0 + 170, 1191, 38.71 );
setSeVolume( spep_0 + 171, 1191, 41.94 );
setSeVolume( spep_0 + 172, 1191, 45.16 );
setSeVolume( spep_0 + 173, 1191, 48.39 );
setSeVolume( spep_0 + 174, 1191, 51.61 );
setSeVolume( spep_0 + 175, 1191, 54.84 );
setSeVolume( spep_0 + 176, 1191, 58.06 );
setSeVolume( spep_0 + 177, 1191, 61.29 );
setSeVolume( spep_0 + 178, 1191, 64.52 );
setSeVolume( spep_0 + 179, 1191, 67.74 );
setSeVolume( spep_0 + 180, 1191, 70.97 );
setSeVolume( spep_0 + 181, 1191, 74.19 );
setSeVolume( spep_0 + 182, 1191, 77.42 );
setSeVolume( spep_0 + 183, 1191, 80.65 );
setSeVolume( spep_0 + 184, 1191, 83.87 );
setSeVolume( spep_0 + 185, 1191, 87.1 );
setSeVolume( spep_0 + 186, 1191, 90.32 );
setSeVolume( spep_0 + 187, 1191, 93.55 );
setSeVolume( spep_0 + 188, 1191, 96.77 );
setSeVolume( spep_0 + 189, 1191, 100 );
se_1222 = playSe( spep_0 + 142, 1222 );
se_1158 = playSe( spep_0 + 142, 1158 );
setSeVolume( spep_0 + 142, 1158, 50 );
se_1161 = playSe( spep_0 + 142, 1161 );
setSeVolume( spep_0 + 142, 1161, 79 );
playSe( spep_0 + 150, 49 );
playSe( spep_0 + 230, 1018 );
playSe( spep_0 + 235, 1224 );
setSeVolume( spep_0 + 235, 1224, 50 );
playSe( spep_0 + 256, 1225 );

stopSe( spep_0 + 140, se_1019, 0 );
stopSe( spep_0 + 134, se_1175, 32 );
stopSe( spep_0 + 150, se_1164, 0 );
stopSe( spep_0 + 249, se_1191, 0 );
stopSe( spep_0 + 174, se_1222, 43 );
stopSe( spep_0 + 239, se_1158, 26 );
stopSe( spep_0 + 166, se_1161, 77 );

--次の準備
spep_1 = spep_0+310;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 84, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 84, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 84, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 84, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 84, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 82, shuchusen, 255 );
setEffAlphaKey( spep_1 + 83, shuchusen, 255 );
setEffAlphaKey( spep_1 + 84, shuchusen, 0 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

--白フェード
--entryFade( spep_1 + 80, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 84;

------------------------------------------------------
-- 後半
------------------------------------------------------
-- ** エフェクト等 ** --
usiro_f = entryEffect( spep_2 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, usiro_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 640, usiro_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, usiro_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 640, usiro_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, usiro_f, 0 );
setEffRotateKey( spep_2 + 640, usiro_f, 0 );
setEffAlphaKey( spep_2 + 0, usiro_f, 255 );
setEffAlphaKey( spep_2 + 640, usiro_f, 255 );
setEffAlphaKey( spep_2 + 641, usiro_f, 0 );
setEffAlphaKey( spep_2 + 642, usiro_f, 0 );

-- ** エフェクト等 ** --
usiro_b = entryEffect( spep_2 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, usiro_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 640, usiro_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, usiro_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 640, usiro_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, usiro_b, 0 );
setEffRotateKey( spep_2 + 660, usiro_b, 0 );
setEffAlphaKey( spep_2 + 0, usiro_b, 255 );
setEffAlphaKey( spep_2 + 640, usiro_b, 255 );
setEffAlphaKey( spep_2 + 641, usiro_b, 0 );
setEffAlphaKey( spep_2 + 642, usiro_b, 0 );

--敵の動き
setDisp( spep_2-3 + 46, 1, 1 );
setDisp( spep_2-1 + 218, 1, 0 );

changeAnime( spep_2-3 + 46, 1, 118 );

setBlendColor(spep_2-3 + 148,1,2,1,0.4,0,0.55);
setBlendColor(spep_2-1 + 218,1,5,0,0,0,0);

setGaussBlurKey(spep_2-3 + 148, 1,  0.002 );
setGaussBlurKey(spep_2-1 + 218, 1,  0.002 );

setMoveKey( spep_2-3 + 46, 1, 58.2, -14.2 , 0 );
setMoveKey( spep_2-3 + 146, 1, 58.2, -14.2 , 0 );
setMoveKey( spep_2-3 + 147, 1, 58.2, -14.2 , 0 );
setMoveKey( spep_2-3 + 148, 1, 132.4, -74.3 , 0 );
setMoveKey( spep_2-3 + 150, 1, 132.7, -74.5 , 0 );
setMoveKey( spep_2-3 + 152, 1, 133, -74.7 , 0 );
setMoveKey( spep_2-3 + 154, 1, 133.3, -75 , 0 );
setMoveKey( spep_2-3 + 156, 1, 133.6, -75.2 , 0 );
setMoveKey( spep_2-3 + 158, 1, 133.9, -75.5 , 0 );
setMoveKey( spep_2-3 + 160, 1, 134.2, -75.7 , 0 );
setMoveKey( spep_2-3 + 162, 1, 134.5, -76 , 0 );
setMoveKey( spep_2-3 + 164, 1, 134.9, -76.2 , 0 );
setMoveKey( spep_2-3 + 166, 1, 135.2, -76.4 , 0 );
setMoveKey( spep_2-3 + 168, 1, 135.5, -76.7 , 0 );
setMoveKey( spep_2-3 + 170, 1, 135.8, -76.9 , 0 );
setMoveKey( spep_2-3 + 172, 1, 136.1, -77.2 , 0 );
setMoveKey( spep_2-3 + 174, 1, 136.4, -77.4 , 0 );
setMoveKey( spep_2-3 + 176, 1, 136.7, -77.6 , 0 );
setMoveKey( spep_2-3 + 178, 1, 137, -77.9 , 0 );
setMoveKey( spep_2-3 + 180, 1, 137.3, -78.1 , 0 );
setMoveKey( spep_2-3 + 182, 1, 137.6, -78.4 , 0 );
setMoveKey( spep_2-3 + 184, 1, 137.9, -78.6 , 0 );
setMoveKey( spep_2-3 + 186, 1, 138.2, -78.8 , 0 );
setMoveKey( spep_2-3 + 188, 1, 138.5, -79.1 , 0 );
setMoveKey( spep_2-3 + 190, 1, 138.8, -79.3 , 0 );
setMoveKey( spep_2-3 + 192, 1, 139.1, -79.6 , 0 );
setMoveKey( spep_2-3 + 194, 1, 139.4, -79.8 , 0 );
setMoveKey( spep_2-3 + 196, 1, 139.7, -80.1 , 0 );
setMoveKey( spep_2-3 + 198, 1, 140, -80.3 , 0 );
setMoveKey( spep_2-3 + 200, 1, 140.3, -80.5 , 0 );
setMoveKey( spep_2-3 + 202, 1, 140.6, -80.8 , 0 );
setMoveKey( spep_2-3 + 204, 1, 140.9, -81 , 0 );
setMoveKey( spep_2-3 + 206, 1, 141.2, -81.3 , 0 );
setMoveKey( spep_2-3 + 208, 1, 141.5, -81.5 , 0 );
setMoveKey( spep_2-3 + 210, 1, 141.8, -81.7 , 0 );
setMoveKey( spep_2-3 + 212, 1, 142.1, -82 , 0 );
setMoveKey( spep_2-1 + 218, 1, 142.4, -82.2 , 0 );

setScaleKey( spep_2-3 + 46, 1, 0.14, 0.14 );
setScaleKey( spep_2-3 + 146, 1, 0.14, 0.14 );
setScaleKey( spep_2-3 + 147, 1, 0.14, 0.14 );
setScaleKey( spep_2-3 + 148, 1, 0.53, 0.53 );
--setScaleKey( spep_2-3 + 164, 1, 0.53, 0.53 );
--setScaleKey( spep_2-3 + 166, 1, 0.54, 0.54 );
--setScaleKey( spep_2-3 + 208, 1, 0.54, 0.54 );
setScaleKey( spep_2-3 + 210, 1, 0.55, 0.55 );
setScaleKey( spep_2-1 + 218, 1, 0.55, 0.55 );

setRotateKey( spep_2-3 + 46, 1, 28.5 );
setRotateKey( spep_2 -1+ 218, 1, 28.5 );

--文字エントリー
ctdogyu = entryEffectLife( spep_2-3 + 486,  10029, 16, 0x100, -1, 0, -105.1, 239.4 );--ドギュッ

setEffMoveKey( spep_2-3 + 486, ctdogyu, -105.1, 239.4 , 0 );
setEffMoveKey( spep_2-3 + 488, ctdogyu, -105.3, 276.3 , 0 );
setEffMoveKey( spep_2-3 + 490, ctdogyu, -95.7, 288.3 , 0 );
setEffMoveKey( spep_2-3 + 492, ctdogyu, -104.1, 297.2 , 0 );
setEffMoveKey( spep_2-3 + 494, ctdogyu, -88, 308.4 , 0 );
setEffMoveKey( spep_2-3 + 496, ctdogyu, -95.3, 303.7 , 0 );
setEffMoveKey( spep_2-3 + 498, ctdogyu, -104.4, 310.8 , 0 );
setEffMoveKey( spep_2-3 + 500, ctdogyu, -87.3, 321.3 , 0 );
setEffMoveKey( spep_2-3 + 502, ctdogyu, -87.2, 322.7 , 0 );

setEffScaleKey( spep_2-3 + 486, ctdogyu, 1, 1 );
setEffScaleKey( spep_2-3 + 488, ctdogyu, 1.7, 1.7 );
setEffScaleKey( spep_2-3 + 490, ctdogyu, 1.93, 1.93 );
setEffScaleKey( spep_2-3 + 492, ctdogyu, 2.02, 2.02 );
setEffScaleKey( spep_2-3 + 494, ctdogyu, 2.08, 2.08 );
setEffScaleKey( spep_2-3 + 496, ctdogyu, 2.09, 2.09 );
setEffScaleKey( spep_2-3 + 498, ctdogyu, 2.16, 2.16 );
setEffScaleKey( spep_2-3 + 500, ctdogyu, 2.21, 2.21 );
setEffScaleKey( spep_2-3 + 502, ctdogyu, 2.22, 2.22 );

setEffRotateKey( spep_2-3 + 486, ctdogyu, -16.2 );
setEffRotateKey( spep_2-3 + 502, ctdogyu, -16.2 );

setEffAlphaKey( spep_2-3 + 486, ctdogyu, 255 );
setEffAlphaKey( spep_2-3 + 496, ctdogyu, 255 );
setEffAlphaKey( spep_2-3 + 498, ctdogyu, 113 );
setEffAlphaKey( spep_2-3 + 500, ctdogyu, 28 );
setEffAlphaKey( spep_2-3 + 502, ctdogyu, 0 );

-- ** エフェクト等 ** --
KO = entryEffect( spep_2 + 608, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 608, KO, 0, 0, 0 );
setEffMoveKey( spep_2 + 696, KO, 0, 0, 0 );
setEffScaleKey( spep_2 + 608, KO, -1.0, 1.0 );
setEffScaleKey( spep_2 + 696, KO, -1.0, 1.0 );
setEffRotateKey( spep_2 + 608, KO, 0 );
setEffRotateKey( spep_2 + 696, KO, 0 );
setEffAlphaKey( spep_2 + 608, KO, 255 );
setEffAlphaKey( spep_2 + 696, KO, 255 );

--SE
se_1193 = playSe( spep_2 + 0, 1193 );
setSeVolume( spep_2 + 0, 1193, 0 );
setSeVolume( spep_2 + 29, 1193, 0);
setSeVolume( spep_2 + 30, 1193, 8 );
setSeVolume( spep_2 + 31, 1193, 16 );
setSeVolume( spep_2 + 32, 1193, 24 );
setSeVolume( spep_2 + 33, 1193, 32 );
setSeVolume( spep_2 + 34, 1193, 40 );
playSe( spep_2 + 15, 1027 );
setSeVolume( spep_2 + 15, 1027, 79 );
playSe( spep_2 + 15, 1145 );
setSeVolume( spep_2 + 15, 1145, 63 );
playSe( spep_2 + 16, 1016 );
playSe( spep_2 + 28, 1015 );
setSeVolume( spep_2 + 28, 1015, 50 );
se_1044 = playSe( spep_2 + 42, 1044 );
setSeVolume( spep_2 + 42, 1044, 50 );
setSeVolume( spep_2 + 151, 1044, 50 );
setSeVolume( spep_2 + 152, 1044, 65 );
setSeVolume( spep_2 + 153, 1044, 80 );
setSeVolume( spep_2 + 154, 1044, 95 );
setSeVolume( spep_2 + 155, 1044, 110 );
setSeVolume( spep_2 + 156, 1044, 125 );
setSeVolume( spep_2 + 157, 1044, 140 );
setSeVolume( spep_2 + 158, 1044, 155 );
setSeVolume( spep_2 + 159, 1044, 170 );
setSeVolume( spep_2 + 160, 1044, 185 );
setSeVolume( spep_2 + 161, 1044, 200 );
setSeVolume( spep_2 + 232, 1044, 200 );
setSeVolume( spep_2 + 233, 1044, 176.62 );
setSeVolume( spep_2 + 234, 1044, 153.25 );
setSeVolume( spep_2 + 235, 1044, 129.87 );
setSeVolume( spep_2 + 236, 1044, 106.5 );
setSeVolume( spep_2 + 237, 1044, 83.75 );
setSeVolume( spep_2 + 238, 1044, 59.75 );
setSeVolume( spep_2 + 239, 1044, 36.37 );
setSeVolume( spep_2 + 240, 1044, 13 );
se_1177 = playSe( spep_2 + 111, 1177 );
setSeVolume( spep_2 + 111, 1177, 0 );
setSeVolume( spep_2 + 137, 1177, 0 );
setSeVolume( spep_2 + 138, 1177, 11.45 );
setSeVolume( spep_2 + 139, 1177, 22.91 );
setSeVolume( spep_2 + 140, 1177, 34.36 );
setSeVolume( spep_2 + 141, 1177, 45.82 );
setSeVolume( spep_2 + 142, 1177, 57.27 );
setSeVolume( spep_2 + 143, 1177, 68.73 );
setSeVolume( spep_2 + 144, 1177, 80.18 );
setSeVolume( spep_2 + 145, 1177, 91.64 );
setSeVolume( spep_2 + 146, 1177, 103.09 );
setSeVolume( spep_2 + 147, 1177, 114.55 );
setSeVolume( spep_2 + 148, 1177, 126 );
playSe( spep_2 + 196, 1072 );
setSeVolume( spep_2 + 196, 1072, 126 );
playSe( spep_2 + 204, 1204 );
setSeVolume( spep_2 + 204, 1204, 0 );
setSeVolume( spep_2 + 294, 1204, 100 );
setSeVolume( spep_2 + 295, 1204, 200 );
playSe( spep_2 + 213, 1011 );
setSeVolume( spep_2 + 213, 1011, 0 );
setSeVolume( spep_2 + 214, 1011, 0 );
setSeVolume( spep_2 + 215, 1011, 4.05 );
setSeVolume( spep_2 + 216, 1011, 8.09 );
setSeVolume( spep_2 + 217, 1011, 12.14 );
setSeVolume( spep_2 + 218, 1011, 16.18 );
setSeVolume( spep_2 + 219, 1011, 20.23 );
setSeVolume( spep_2 + 220, 1011, 24.27 );
setSeVolume( spep_2 + 221, 1011, 28.32 );
setSeVolume( spep_2 + 222, 1011, 32.36 );
setSeVolume( spep_2 + 223, 1011, 36.41 );
setSeVolume( spep_2 + 224, 1011, 40.45 );
setSeVolume( spep_2 + 225, 1011, 44.5 );
setSeVolume( spep_2 + 226, 1011, 48.55 );
setSeVolume( spep_2 + 227, 1011, 52.59 );
setSeVolume( spep_2 + 228, 1011, 56.64 );
setSeVolume( spep_2 + 229, 1011, 60.68 );
setSeVolume( spep_2 + 230, 1011, 64.73 );
setSeVolume( spep_2 + 231, 1011, 68.77 );
setSeVolume( spep_2 + 232, 1011, 72.82 );
setSeVolume( spep_2 + 233, 1011, 76.86 );
setSeVolume( spep_2 + 234, 1011, 80.91 );
setSeVolume( spep_2 + 235, 1011, 84.95 );
setSeVolume( spep_2 + 236, 1011, 89 );
playSe( spep_2 + 232, 1003 );
se_1191 = playSe( spep_2 + 295, 1191 );
se_1158 = playSe( spep_2 + 295, 1158 );
setSeVolume( spep_2 + 295, 1158, 63 );
playSe( spep_2 + 295, 1209 );
setSeVolume( spep_2 + 295, 1209, 63 );
playSe( spep_2 + 425, 1022 );
setSeVolume( spep_2 + 425, 1022, 79 );
playSe( spep_2 + 426, 1021 );
setSeVolume( spep_2 + 426, 1021, 89 );
playSe( spep_2 + 426, 1027 );
setSeVolume( spep_2 + 426, 1027, 79 );
playSe( spep_2 + 426, 1026 );
setSeVolume( spep_2 + 426, 1026, 89 );
playSe( spep_2 + 433, 1213 );
setSeVolume( spep_2 + 433, 1213, 32 );
playSe( spep_2 + 488, 1014 );
playSe( spep_2 + 491, 1023 );
playSe( spep_2 + 565, 1024 );
playSe( spep_2 + 567, 1159 );
playSe( spep_2 + 567, 1182 );
playSe( spep_2 + 579, 1023 );
setSeVolume( spep_2 + 579, 1023, 79 );

stopSe( spep_2 + 226, se_1193, 28 );
stopSe( spep_2 + 316, se_1044, 0 );
stopSe( spep_2 + 230, se_1177, 46 );
stopSe( spep_2 + 433, se_1191, 0 );
stopSe( spep_2 + 433, se_1158, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 612, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ダメージ表示 ** --
hideKoScreen();  --黒フィルター削除
dealDamage( spep_2 + 484 );
entryFade( spep_2 +606, 2,  4, 2, 255, 255, 255, 255); 
endPhase( spep_2 + 610 );


end