--4020140:キビト神_真激烈神王砲
--sp_effect_a1_00248

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
SP_01=	155723	;--	ゆびを指す
SP_02=	155724	;--	格闘
SP_03=	155726	;--	格闘
SP_04=	155727	;--	溜めて発射
SP_05=	155729	;--	爆発

--エフェクト(てき)
SP_01x=	155723	;--	ゆびを指す	
SP_02x=	155725	;--	格闘	(敵)
SP_03x=	155726	;--	格闘	
SP_04x=	155728	;--	溜めて発射	(敵)
SP_05x=	155729	;--	爆発	

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
-- ゆびを指す
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
finger = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, finger, 0, 0, 0 );
setEffMoveKey( spep_0 + 86, finger, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, finger, 1.0, 1.0 );
setEffScaleKey( spep_0 + 86, finger, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, finger, 0 );
setEffRotateKey( spep_0 + 86, finger, 0 );
setEffAlphaKey( spep_0 + 0, finger, 255 );
setEffAlphaKey( spep_0 + 86, finger, 255 );

--SE
playSe( spep_0 + 18, 1003 );--指差し
setSeVolume( spep_0 + 18, 1003, 74 );
se_1006 = playSe( spep_0 + 22, 1006 );--指差し
setSeVolume( spep_0 + 22, 1006, 62 );
SE0=playSe( spep_0 + 22, 1062 );--指差し
setPitch( spep_0 + 22, SE0, 450 );

stopSe( spep_0 + 31, se_1006, 5 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 88, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_1=spep_0+86;
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

--白フェード
entryFade( spep_1 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 格闘
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 186, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 186, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_f, 0 );
setEffRotateKey( spep_2 + 186, fighting_f, 0 );
setEffAlphaKey( spep_2 + 0, fighting_f, 255 );
setEffAlphaKey( spep_2 + 186, fighting_f, 255 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 186, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 186, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_b, 0 );
setEffRotateKey( spep_2 + 186, fighting_b, 0 );
setEffAlphaKey( spep_2 + 0, fighting_b, 255 );
setEffAlphaKey( spep_2 + 186, fighting_b, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );

changeAnime( spep_2 + 0, 1, 104 );

setMoveKey( spep_2 + 0, 1, 1488.7, -1.6 , 0 );
--setMoveKey( spep_2-3 + 2, 1, 1391.6, -1.7 , 0 );
setMoveKey( spep_2-3 + 4, 1, 1294.6, -1.7 , 0 );
setMoveKey( spep_2-3 + 6, 1, 1197.4, -1.7 , 0 );
setMoveKey( spep_2-3 + 8, 1, 1100.4, -1.7 , 0 );
setMoveKey( spep_2-3 + 10, 1, 1003.3, -1.7 , 0 );
setMoveKey( spep_2-3 + 12, 1, 906.3, -1.7 , 0 );
setMoveKey( spep_2-3 + 14, 1, 809.2, -1.7 , 0 );
setMoveKey( spep_2-3 + 16, 1, 712.1, -1.7 , 0 );
setMoveKey( spep_2-3 + 18, 1, 615.1, -1.7 , 0 );
setMoveKey( spep_2-3 + 20, 1, 518, -1.7 , 0 );
setMoveKey( spep_2-3 + 22, 1, 420.9, -1.7 , 0 );
setMoveKey( spep_2-3 + 24, 1, 323.9, -1.7 , 0 );

setScaleKey( spep_2 + 0, 1, 1.5, 1.5 );

setRotateKey( spep_2 + 0, 1, 0 );

--SE
SE1=playSe( spep_2 + 0, 9 );--ダッシュ

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 140, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 22; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE1, 0 );

    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
     
    --敵の固定
    setDisp( SP_dodge+ 9, 1, 0 );
    setMoveKey( SP_dodge+ 9, 1, 323.9, -1.7 , 0 );    
    setScaleKey( SP_dodge+ 9, 1, 1.5, 1.5 );
    setRotateKey( SP_dodge+ 9, 1, 0 );

    
    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--敵の動き
setDisp( spep_2-1 + 136, 1, 0 );


changeAnime( spep_2-3 + 38, 1, 106 );
changeAnime( spep_2-3 + 96, 1, 108 );

setMoveKey( spep_2-3 + 26, 1, 226.8, -1.7 , 0 );
setMoveKey( spep_2-3 + 28, 1, 129.7, -1.7 , 0 );
setMoveKey( spep_2-3 + 37, 1, 129.7, -1.7 , 0 );
setMoveKey( spep_2-3 + 38, 1, 125.5, 12.6 , 0 );
setMoveKey( spep_2-3 + 40, 1, 123.9, 12.9 , 0 );
setMoveKey( spep_2-3 + 42, 1, 130.4, 17 , 0 );
setMoveKey( spep_2-3 + 44, 1, 127.9, 12.2 , 0 );
setMoveKey( spep_2-3 + 46, 1, 132.2, 14.3 , 0 );
setMoveKey( spep_2-3 + 48, 1, 129.3, 12.2 , 0 );
setMoveKey( spep_2-3 + 50, 1, 130.5, 16.9 , 0 );
setMoveKey( spep_2-3 + 52, 1, 131.5, 13.8 , 0 );
setMoveKey( spep_2-3 + 54, 1, 132.5, 10.7 , 0 );
setMoveKey( spep_2-3 + 56, 1, 130.1, 13.3 , 0 );
setMoveKey( spep_2-3 + 58, 1, 135.2, 8.8 , 0 );
setMoveKey( spep_2-3 + 60, 1, 133, 13.5 , 0 );
setMoveKey( spep_2-3 + 62, 1, 130.4, 12.3 , 0 );
setMoveKey( spep_2-3 + 64, 1, 133.9, 15.6 , 0 );
setMoveKey( spep_2-3 + 66, 1, 135.9, 17.6 , 0 );
setMoveKey( spep_2-3 + 68, 1, 135.6, 13.9 , 0 );
setMoveKey( spep_2-3 + 70, 1, 139.1, 14.4 , 0 );
setMoveKey( spep_2-3 + 72, 1, 139.2, 15 , 0 );
setMoveKey( spep_2-3 + 74, 1, 137.7, 15.4 , 0 );
setMoveKey( spep_2-3 + 76, 1, 138.8, 18.3 , 0 );
setMoveKey( spep_2-3 + 78, 1, 135.2, 17.8 , 0 );
setMoveKey( spep_2-3 + 80, 1, 136.3, 17.7 , 0 );
setMoveKey( spep_2-3 + 82, 1, 134.3, 14.9 , 0 );
setMoveKey( spep_2-3 + 84, 1, 135.6, 15 , 0 );
setMoveKey( spep_2-3 + 86, 1, 137.8, 18.1 , 0 );
setMoveKey( spep_2-3 + 88, 1, 140, 15.5 , 0 );
setMoveKey( spep_2-3 + 90, 1, 140, 17.9 , 0 );
setMoveKey( spep_2-3 + 92, 1, 138.6, 16.8 , 0 );
setMoveKey( spep_2-3 + 95, 1, 141.6, 18.7 , 0 );
setMoveKey( spep_2-3 + 96, 1, 211.2, -67.6 , 0 );
setMoveKey( spep_2-3 + 98, 1, 387, -119.8 , 0 );
setMoveKey( spep_2-3 + 100, 1, 526.4, -173.6 , 0 );
setMoveKey( spep_2-3 + 102, 1, 724, -226.8 , 0 );
setMoveKey( spep_2-3 + 104, 1, 913, -285.4 , 0 );
setMoveKey( spep_2-3 + 106, 1, 1090.9, -340 , 0 );
setMoveKey( spep_2-3 + 108, 1, 1268.7, -394.7 , 0 );
setMoveKey( spep_2-3 + 110, 1, 1442.2, -452.7 , 0 );
setMoveKey( spep_2-3 + 112, 1, 1440.1, -454.9 , 0 );
setMoveKey( spep_2-3 + 114, 1, 1439.5, -454.2 , 0 );
setMoveKey( spep_2-3 + 116, 1, 1438.9, -453.6 , 0 );
setMoveKey( spep_2-3 + 118, 1, 1439.4, -455.4 , 0 );
setMoveKey( spep_2-3 + 120, 1, 1440, -457.2 , 0 );
setMoveKey( spep_2-3 + 122, 1, 1439.8, -454.5 , 0 );
setMoveKey( spep_2-3 + 124, 1, 1439.7, -451.9 , 0 );
setMoveKey( spep_2-3 + 126, 1, 1438.7, -453.4 , 0 );
setMoveKey( spep_2-3 + 128, 1, 1437.8, -454.9 , 0 );
setMoveKey( spep_2-3 + 130, 1, 1438.9, -453.5 , 0 );
setMoveKey( spep_2-3 + 132, 1, 1440.1, -452 , 0 );
setMoveKey( spep_2-3 + 134, 1, 1439.1, -452.6 , 0 );
setMoveKey( spep_2-3 + 136, 1, 1438.2, -453.2 , 0 );
setMoveKey( spep_2-1 + 136, 1, 1437.3, -453.9 , 0 );


setScaleKey( spep_2-3 + 40, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 42, 1, 1.51, 1.51 );
setScaleKey( spep_2-3 + 46, 1, 1.51, 1.51 );
setScaleKey( spep_2-3 + 48, 1, 1.52, 1.52 );
setScaleKey( spep_2-3 + 54, 1, 1.52, 1.52 );
setScaleKey( spep_2-3 + 56, 1, 1.53, 1.53 );
setScaleKey( spep_2-3 + 62, 1, 1.53, 1.53 );
setScaleKey( spep_2-3 + 64, 1, 1.54, 1.54 );
setScaleKey( spep_2-3 + 70, 1, 1.54, 1.54 );
setScaleKey( spep_2-3 + 72, 1, 1.55, 1.55 );
setScaleKey( spep_2-3 + 78, 1, 1.55, 1.55 );
setScaleKey( spep_2-3 + 80, 1, 1.56, 1.56 );
setScaleKey( spep_2-3 + 86, 1, 1.56, 1.56 );
setScaleKey( spep_2-3 + 88, 1, 1.57, 1.57 );
setScaleKey( spep_2-3 + 95, 1, 1.57, 1.57 );
setScaleKey( spep_2-3 + 96, 1, 1.53, 1.53 );
setScaleKey( spep_2-3 + 98, 1, 1.47, 1.47 );
setScaleKey( spep_2-3 + 100, 1, 1.42, 1.42 );
setScaleKey( spep_2-3 + 102, 1, 1.46, 1.46 );
setScaleKey( spep_2-3 + 104, 1, 1.5, 1.5 );
setScaleKey( spep_2-1 + 136, 1, 1.5, 1.5 );

setRotateKey( spep_2-3 + 37, 1, 0 );
setRotateKey( spep_2-3 + 38, 1, -44 );
setRotateKey( spep_2-3 + 40, 1, -43.8 );
setRotateKey( spep_2-3 + 42, 1, -43.6 );
setRotateKey( spep_2-3 + 44, 1, -43.4 );
setRotateKey( spep_2-3 + 46, 1, -43.2 );
setRotateKey( spep_2-3 + 48, 1, -43 );
setRotateKey( spep_2-3 + 50, 1, -42.8 );
setRotateKey( spep_2-3 + 52, 1, -42.6 );
setRotateKey( spep_2-3 + 54, 1, -42.3 );
setRotateKey( spep_2-3 + 56, 1, -42.1 );
setRotateKey( spep_2-3 + 58, 1, -41.9 );
setRotateKey( spep_2-3 + 60, 1, -41.7 );
setRotateKey( spep_2-3 + 62, 1, -41.5 );
setRotateKey( spep_2-3 + 64, 1, -41.3 );
setRotateKey( spep_2-3 + 66, 1, -41.1 );
setRotateKey( spep_2-3 + 68, 1, -40.9 );
setRotateKey( spep_2-3 + 70, 1, -40.7 );
setRotateKey( spep_2-3 + 72, 1, -40.5 );
setRotateKey( spep_2-3 + 74, 1, -40.3 );
setRotateKey( spep_2-3 + 76, 1, -40.1 );
setRotateKey( spep_2-3 + 78, 1, -39.9 );
setRotateKey( spep_2-3 + 80, 1, -39.7 );
setRotateKey( spep_2-3 + 82, 1, -39.4 );
setRotateKey( spep_2-3 + 84, 1, -39.2 );
setRotateKey( spep_2-3 + 86, 1, -39 );
setRotateKey( spep_2-3 + 88, 1, -38.8 );
setRotateKey( spep_2-3 + 90, 1, -38.6 );
setRotateKey( spep_2-3 + 92, 1, -38.4 );
setRotateKey( spep_2-3 + 95, 1, -38.2 );
setRotateKey( spep_2-3 + 96, 1, 0 );
setRotateKey( spep_2-1 + 136, 1, 0 );

--SE
se_1200 = playSe( spep_2 + 16, 1200 );--びりびり拘束
setSeVolume( spep_2 + 16, 1200, 0 );
setSeVolume( spep_2 + 35, 1200, 0 );
setSeVolume( spep_2 + 36, 1200, 12.71 );
setSeVolume( spep_2 + 37, 1200, 25.43 );
setSeVolume( spep_2 + 38, 1200, 38.14 );
setSeVolume( spep_2 + 39, 1200, 50.86 );
setSeVolume( spep_2 + 40, 1200, 63.57 );
setSeVolume( spep_2 + 41, 1200, 76.29 );
setSeVolume( spep_2 + 42, 1200, 89.00 );
setSeVolume( spep_2 + 43, 1200, 101.71 );
setSeVolume( spep_2 + 44, 1200, 114.43 );
setSeVolume( spep_2 + 45, 1200, 127.14 );
setSeVolume( spep_2 + 46, 1200, 139.86 );
setSeVolume( spep_2 + 47, 1200, 152.57 );
setSeVolume( spep_2 + 48, 1200, 165.29 );
setSeVolume( spep_2 + 49, 1200, 178 );
se_1147 = playSe( spep_2 + 38, 1147 );--びりびり拘束
setSeVolume( spep_2 + 38, 1147, 50 );
playSe( spep_2 + 44, 1003 );--びりびり拘束
playSe( spep_2 + 92, 1027 );--吹き飛ばし

stopSe( spep_2 + 94, se_1200, 0 );
stopSe( spep_2 + 94, se_1147, 0 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 136;
------------------------------------------------------
-- 溜めて発射
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_3 + 190, tame, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_3 + 190, tame, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 190, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 190, tame, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_3+2  , 1504, 0x101, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_3+2  , 1505, 0x101, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- 文字エントリー --
ctgogo = entryEffectLife( spep_3 +14, 190006, 72, 0x102, -1, 0, 100 -180, 510, 1200);-- ゴゴゴゴ

setEffMoveKey(  spep_3 +14,  ctgogo,  100 -180,  510);
setEffMoveKey(  spep_3 +86,  ctgogo,  100 -180,  510);

setEffAlphaKey( spep_3 +14, ctgogo, 0 );
setEffAlphaKey( spep_3 + 15, ctgogo, 255 );
setEffAlphaKey( spep_3 + 16, ctgogo, 255 );
setEffAlphaKey( spep_3 + 80, ctgogo, 255 );
setEffAlphaKey( spep_3 + 82, ctgogo, 191 );
setEffAlphaKey( spep_3 + 84, ctgogo, 112 );
setEffAlphaKey( spep_3 + 86, ctgogo, 64 );

setEffRotateKey(  spep_3 +14,  ctgogo,  0);
setEffRotateKey(  spep_3 +86,  ctgogo,  0);

setEffScaleKey(  spep_3 +14,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_3 +76,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_3 +86,  ctgogo, 1.07, 1.07 );

--集中線
shuchusenX = entryEffectLife( spep_3 + 14,  906, 72, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 14, shuchusenX, 72, 20 );
setEffMoveKey( spep_3 + 14, shuchusenX, 0, 0 , 0 );
setEffMoveKey( spep_3 + 86, shuchusenX, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusenX, 1.6, 1.6 );
setEffScaleKey( spep_3 + 86, shuchusenX, 1.6, 1.6 );

setEffRotateKey( spep_3 + 14, shuchusenX, 0 );
setEffRotateKey( spep_3 + 86, shuchusenX, 0 );

setEffAlphaKey( spep_3 + 14, shuchusenX, 255 );
setEffAlphaKey( spep_3 + 86, shuchusenX, 255 );

-- ** ホワイトフェード ** --
entryFade( spep_3 + 182, 4, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255);

--SE
playSe( spep_3 + 14, 1018 );--顔カットイン
playSe( spep_3 + 24, 1144 );--気弾溜め
setSeVolume( spep_3 + 24, 1144, 87 );
playSe( spep_3 + 24, 1154 );--気弾溜め
setSeVolume( spep_3 + 24, 1154, 150 );
playSe( spep_3 + 148, 1022 );--気弾発射
setSeVolume( spep_3 + 148, 1022, 84 );
se_1146 = playSe( spep_3 + 148, 1146 );--気弾発射
setSeVolume( spep_3 + 148, 1146, 83 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 192, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 190;
------------------------------------------------------
-- ギャン(58F)
------------------------------------------------------

-- ** エフェクト等 ** --
gyan = entryEffectLife( spep_4 + 0, 190000, 58, 0x80, -1, 0, 0, 0 ); --ギャン(ef_005)
setEffMoveKey( spep_4 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_4 + 58, gyan, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_4 + 58, gyan, 1.0, 1.0 );
setEffAlphaKey( spep_4 + 0, gyan, 255 );
setEffAlphaKey( spep_4 + 58, gyan, 255 );
setEffRotateKey( spep_4 + 0, gyan, 0 );
setEffRotateKey( spep_4 + 58, gyan, 0 );

-- 書き文字エントリー --
ctgyan = entryEffectLife( spep_4 + 0,  10006, 58, 0x100, -1, 0, 15.1, 298.8 ); --ギャン
--setEffMoveKey( spep_4 + 0, ctgyan, 12.6, 286.8 , 0 );
setEffMoveKey( spep_4 + 0, ctgyan, 15.1, 298.8 , 0 );
setEffMoveKey( spep_4 + 58, ctgyan, 15.1, 298.8 , 0 );

setEffScaleKey( spep_4 + 0, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_4 + 2, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_4 + 4, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_4 + 6, ctgyan, 3.5, 3.5 );
--[[setEffScaleKey( spep_4 + 8, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_4 -3 + 10, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_4 -3 + 12, ctgyan, 3.3, 3.3 );
setEffScaleKey( spep_4 -3 + 14, ctgyan, 2.42, 2.42 );
setEffScaleKey( spep_4 -3 + 16, ctgyan, 2.43, 2.43 );
setEffScaleKey( spep_4 -3 + 18, ctgyan, 2.44, 2.44 );
setEffScaleKey( spep_4 -3 + 20, ctgyan, 2.45, 2.45 );
setEffScaleKey( spep_4 -3 + 22, ctgyan, 2.46, 2.46 );
setEffScaleKey( spep_4 -3 + 24, ctgyan, 2.46, 2.46 );
setEffScaleKey( spep_4 -3 + 26, ctgyan, 2.47, 2.47 );
setEffScaleKey( spep_4 -3 + 28, ctgyan, 2.48, 2.48 );
setEffScaleKey( spep_4 -3 + 30, ctgyan, 2.49, 2.49 );
setEffScaleKey( spep_4 -3 + 32, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_4 -3 + 34, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_4 -3 + 36, ctgyan, 2.51, 2.51 );
setEffScaleKey( spep_4 -3 + 38, ctgyan, 2.52, 2.52 );
setEffScaleKey( spep_4 -3 + 40, ctgyan, 2.53, 2.53 );
setEffScaleKey( spep_4 -3 + 42, ctgyan, 2.53, 2.53 );
setEffScaleKey( spep_4 -3 + 44, ctgyan, 2.54, 2.54 );
setEffScaleKey( spep_4 -3 + 46, ctgyan, 2.55, 2.55 );
setEffScaleKey( spep_4 -3 + 48, ctgyan, 2.56, 2.56 );
setEffScaleKey( spep_4 -3 + 50, ctgyan, 2.57, 2.57 );
setEffScaleKey( spep_4 -3 + 52, ctgyan, 2.57, 2.57 );
setEffScaleKey( spep_4 -3 + 54, ctgyan, 2.58, 2.58 );
setEffScaleKey( spep_4 -3 + 56, ctgyan, 2.59, 2.59 );
setEffScaleKey( spep_4 -3 + 58, ctgyan, 2.6, 2.6 );
setEffScaleKey( spep_4 + 57, ctgyan, 3.8, 3.8 );]]
setEffScaleKey( spep_4 + 58, ctgyan, 4.0, 4.0 );

setEffRotateKey( spep_4 + 0, ctgyan, 0 );
setEffRotateKey( spep_4 + 58, ctgyan, 0 );

setEffAlphaKey( spep_4 + 0, ctgyan, 255 );
setEffAlphaKey( spep_4 + 58, ctgyan, 255 );

-- ** 音 ** --
playSe( spep_4 + 8, 1023 );--ギャン
stopSe( spep_4 + 17, se_1146, 58 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ホワイトフェード ** --
entryFade( spep_4 + 18, 39, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);

-- ** 次の準備 ** --
spep_5 = spep_4 + 58;
------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_5 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, explosion, 0, 0, 0 );
setEffMoveKey( spep_5 + 130, explosion, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_5 + 130, explosion, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, explosion, 0 );
setEffRotateKey( spep_5 + 130, explosion, 0 );
setEffAlphaKey( spep_5 + 0, explosion, 255 );
setEffAlphaKey( spep_5 + 130, explosion, 255 );

--SE
playSe( spep_5 + 0, 1067 );--爆発
playSe( spep_5 + 6, 1159 );--爆発

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 130, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_5 +10 );
endPhase( spep_5 + 120 );
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- ゆびを指す
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
finger = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, finger, 0, 0, 0 );
setEffMoveKey( spep_0 + 86, finger, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, finger, -1.0, 1.0 );
setEffScaleKey( spep_0 + 86, finger, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, finger, 0 );
setEffRotateKey( spep_0 + 86, finger, 0 );
setEffAlphaKey( spep_0 + 0, finger, 255 );
setEffAlphaKey( spep_0 + 86, finger, 255 );

--SE
playSe( spep_0 + 18, 1003 );--指差し
setSeVolume( spep_0 + 18, 1003, 74 );
se_1006 = playSe( spep_0 + 22, 1006 );--指差し
setSeVolume( spep_0 + 22, 1006, 62 );
SE0=playSe( spep_0 + 22, 1062 );--指差し
setPitch( spep_0 + 22, SE0, 450 );

stopSe( spep_0 + 31, se_1006, 5 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 88, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_1=spep_0+86;
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

--白フェード
entryFade( spep_1 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 格闘
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 186, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fighting_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 186, fighting_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_f, 0 );
setEffRotateKey( spep_2 + 186, fighting_f, 0 );
setEffAlphaKey( spep_2 + 0, fighting_f, 255 );
setEffAlphaKey( spep_2 + 186, fighting_f, 255 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_2 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 186, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 186, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_b, 0 );
setEffRotateKey( spep_2 + 186, fighting_b, 0 );
setEffAlphaKey( spep_2 + 0, fighting_b, 255 );
setEffAlphaKey( spep_2 + 186, fighting_b, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );

changeAnime( spep_2 + 0, 1, 104 );

setMoveKey( spep_2 + 0, 1, 1488.7, -1.6 , 0 );
--setMoveKey( spep_2-3 + 2, 1, 1391.6, -1.7 , 0 );
setMoveKey( spep_2-3 + 4, 1, 1294.6, -1.7 , 0 );
setMoveKey( spep_2-3 + 6, 1, 1197.4, -1.7 , 0 );
setMoveKey( spep_2-3 + 8, 1, 1100.4, -1.7 , 0 );
setMoveKey( spep_2-3 + 10, 1, 1003.3, -1.7 , 0 );
setMoveKey( spep_2-3 + 12, 1, 906.3, -1.7 , 0 );
setMoveKey( spep_2-3 + 14, 1, 809.2, -1.7 , 0 );
setMoveKey( spep_2-3 + 16, 1, 712.1, -1.7 , 0 );
setMoveKey( spep_2-3 + 18, 1, 615.1, -1.7 , 0 );
setMoveKey( spep_2-3 + 20, 1, 518, -1.7 , 0 );
setMoveKey( spep_2-3 + 22, 1, 420.9, -1.7 , 0 );
setMoveKey( spep_2-3 + 24, 1, 323.9, -1.7 , 0 );

setScaleKey( spep_2 + 0, 1, 1.5, 1.5 );

setRotateKey( spep_2 + 0, 1, 0 );

--SE
SE1=playSe( spep_2 + 0, 9 );--ダッシュ

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 140, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 22; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE1, 0 );

    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
     
    --敵の固定
    setDisp( SP_dodge+ 9, 1, 0 );
    setMoveKey( SP_dodge+ 9, 1, 323.9, -1.7 , 0 );    
    setScaleKey( SP_dodge+ 9, 1, 1.5, 1.5 );
    setRotateKey( SP_dodge+ 9, 1, 0 );

    
    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--敵の動き
setDisp( spep_2-1 + 136, 1, 0 );


changeAnime( spep_2-3 + 38, 1, 106 );
changeAnime( spep_2-3 + 96, 1, 108 );

setMoveKey( spep_2-3 + 26, 1, 226.8, -1.7 , 0 );
setMoveKey( spep_2-3 + 28, 1, 129.7, -1.7 , 0 );
setMoveKey( spep_2-3 + 37, 1, 129.7, -1.7 , 0 );
setMoveKey( spep_2-3 + 38, 1, 125.5, 12.6 , 0 );
setMoveKey( spep_2-3 + 40, 1, 123.9, 12.9 , 0 );
setMoveKey( spep_2-3 + 42, 1, 130.4, 17 , 0 );
setMoveKey( spep_2-3 + 44, 1, 127.9, 12.2 , 0 );
setMoveKey( spep_2-3 + 46, 1, 132.2, 14.3 , 0 );
setMoveKey( spep_2-3 + 48, 1, 129.3, 12.2 , 0 );
setMoveKey( spep_2-3 + 50, 1, 130.5, 16.9 , 0 );
setMoveKey( spep_2-3 + 52, 1, 131.5, 13.8 , 0 );
setMoveKey( spep_2-3 + 54, 1, 132.5, 10.7 , 0 );
setMoveKey( spep_2-3 + 56, 1, 130.1, 13.3 , 0 );
setMoveKey( spep_2-3 + 58, 1, 135.2, 8.8 , 0 );
setMoveKey( spep_2-3 + 60, 1, 133, 13.5 , 0 );
setMoveKey( spep_2-3 + 62, 1, 130.4, 12.3 , 0 );
setMoveKey( spep_2-3 + 64, 1, 133.9, 15.6 , 0 );
setMoveKey( spep_2-3 + 66, 1, 135.9, 17.6 , 0 );
setMoveKey( spep_2-3 + 68, 1, 135.6, 13.9 , 0 );
setMoveKey( spep_2-3 + 70, 1, 139.1, 14.4 , 0 );
setMoveKey( spep_2-3 + 72, 1, 139.2, 15 , 0 );
setMoveKey( spep_2-3 + 74, 1, 137.7, 15.4 , 0 );
setMoveKey( spep_2-3 + 76, 1, 138.8, 18.3 , 0 );
setMoveKey( spep_2-3 + 78, 1, 135.2, 17.8 , 0 );
setMoveKey( spep_2-3 + 80, 1, 136.3, 17.7 , 0 );
setMoveKey( spep_2-3 + 82, 1, 134.3, 14.9 , 0 );
setMoveKey( spep_2-3 + 84, 1, 135.6, 15 , 0 );
setMoveKey( spep_2-3 + 86, 1, 137.8, 18.1 , 0 );
setMoveKey( spep_2-3 + 88, 1, 140, 15.5 , 0 );
setMoveKey( spep_2-3 + 90, 1, 140, 17.9 , 0 );
setMoveKey( spep_2-3 + 92, 1, 138.6, 16.8 , 0 );
setMoveKey( spep_2-3 + 95, 1, 141.6, 18.7 , 0 );
setMoveKey( spep_2-3 + 96, 1, 211.2, -67.6 , 0 );
setMoveKey( spep_2-3 + 98, 1, 387, -119.8 , 0 );
setMoveKey( spep_2-3 + 100, 1, 526.4, -173.6 , 0 );
setMoveKey( spep_2-3 + 102, 1, 724, -226.8 , 0 );
setMoveKey( spep_2-3 + 104, 1, 913, -285.4 , 0 );
setMoveKey( spep_2-3 + 106, 1, 1090.9, -340 , 0 );
setMoveKey( spep_2-3 + 108, 1, 1268.7, -394.7 , 0 );
setMoveKey( spep_2-3 + 110, 1, 1442.2, -452.7 , 0 );
setMoveKey( spep_2-3 + 112, 1, 1440.1, -454.9 , 0 );
setMoveKey( spep_2-3 + 114, 1, 1439.5, -454.2 , 0 );
setMoveKey( spep_2-3 + 116, 1, 1438.9, -453.6 , 0 );
setMoveKey( spep_2-3 + 118, 1, 1439.4, -455.4 , 0 );
setMoveKey( spep_2-3 + 120, 1, 1440, -457.2 , 0 );
setMoveKey( spep_2-3 + 122, 1, 1439.8, -454.5 , 0 );
setMoveKey( spep_2-3 + 124, 1, 1439.7, -451.9 , 0 );
setMoveKey( spep_2-3 + 126, 1, 1438.7, -453.4 , 0 );
setMoveKey( spep_2-3 + 128, 1, 1437.8, -454.9 , 0 );
setMoveKey( spep_2-3 + 130, 1, 1438.9, -453.5 , 0 );
setMoveKey( spep_2-3 + 132, 1, 1440.1, -452 , 0 );
setMoveKey( spep_2-3 + 134, 1, 1439.1, -452.6 , 0 );
setMoveKey( spep_2-3 + 136, 1, 1438.2, -453.2 , 0 );
setMoveKey( spep_2-1 + 136, 1, 1437.3, -453.9 , 0 );


setScaleKey( spep_2-3 + 40, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 42, 1, 1.51, 1.51 );
setScaleKey( spep_2-3 + 46, 1, 1.51, 1.51 );
setScaleKey( spep_2-3 + 48, 1, 1.52, 1.52 );
setScaleKey( spep_2-3 + 54, 1, 1.52, 1.52 );
setScaleKey( spep_2-3 + 56, 1, 1.53, 1.53 );
setScaleKey( spep_2-3 + 62, 1, 1.53, 1.53 );
setScaleKey( spep_2-3 + 64, 1, 1.54, 1.54 );
setScaleKey( spep_2-3 + 70, 1, 1.54, 1.54 );
setScaleKey( spep_2-3 + 72, 1, 1.55, 1.55 );
setScaleKey( spep_2-3 + 78, 1, 1.55, 1.55 );
setScaleKey( spep_2-3 + 80, 1, 1.56, 1.56 );
setScaleKey( spep_2-3 + 86, 1, 1.56, 1.56 );
setScaleKey( spep_2-3 + 88, 1, 1.57, 1.57 );
setScaleKey( spep_2-3 + 95, 1, 1.57, 1.57 );
setScaleKey( spep_2-3 + 96, 1, 1.53, 1.53 );
setScaleKey( spep_2-3 + 98, 1, 1.47, 1.47 );
setScaleKey( spep_2-3 + 100, 1, 1.42, 1.42 );
setScaleKey( spep_2-3 + 102, 1, 1.46, 1.46 );
setScaleKey( spep_2-3 + 104, 1, 1.5, 1.5 );
setScaleKey( spep_2-1 + 136, 1, 1.5, 1.5 );

setRotateKey( spep_2-3 + 37, 1, 0 );
setRotateKey( spep_2-3 + 38, 1, -44 );
setRotateKey( spep_2-3 + 40, 1, -43.8 );
setRotateKey( spep_2-3 + 42, 1, -43.6 );
setRotateKey( spep_2-3 + 44, 1, -43.4 );
setRotateKey( spep_2-3 + 46, 1, -43.2 );
setRotateKey( spep_2-3 + 48, 1, -43 );
setRotateKey( spep_2-3 + 50, 1, -42.8 );
setRotateKey( spep_2-3 + 52, 1, -42.6 );
setRotateKey( spep_2-3 + 54, 1, -42.3 );
setRotateKey( spep_2-3 + 56, 1, -42.1 );
setRotateKey( spep_2-3 + 58, 1, -41.9 );
setRotateKey( spep_2-3 + 60, 1, -41.7 );
setRotateKey( spep_2-3 + 62, 1, -41.5 );
setRotateKey( spep_2-3 + 64, 1, -41.3 );
setRotateKey( spep_2-3 + 66, 1, -41.1 );
setRotateKey( spep_2-3 + 68, 1, -40.9 );
setRotateKey( spep_2-3 + 70, 1, -40.7 );
setRotateKey( spep_2-3 + 72, 1, -40.5 );
setRotateKey( spep_2-3 + 74, 1, -40.3 );
setRotateKey( spep_2-3 + 76, 1, -40.1 );
setRotateKey( spep_2-3 + 78, 1, -39.9 );
setRotateKey( spep_2-3 + 80, 1, -39.7 );
setRotateKey( spep_2-3 + 82, 1, -39.4 );
setRotateKey( spep_2-3 + 84, 1, -39.2 );
setRotateKey( spep_2-3 + 86, 1, -39 );
setRotateKey( spep_2-3 + 88, 1, -38.8 );
setRotateKey( spep_2-3 + 90, 1, -38.6 );
setRotateKey( spep_2-3 + 92, 1, -38.4 );
setRotateKey( spep_2-3 + 95, 1, -38.2 );
setRotateKey( spep_2-3 + 96, 1, 0 );
setRotateKey( spep_2-1 + 136, 1, 0 );

--SE
se_1200 = playSe( spep_2 + 16, 1200 );--びりびり拘束
setSeVolume( spep_2 + 16, 1200, 0 );
setSeVolume( spep_2 + 35, 1200, 0 );
setSeVolume( spep_2 + 36, 1200, 12.71 );
setSeVolume( spep_2 + 37, 1200, 25.43 );
setSeVolume( spep_2 + 38, 1200, 38.14 );
setSeVolume( spep_2 + 39, 1200, 50.86 );
setSeVolume( spep_2 + 40, 1200, 63.57 );
setSeVolume( spep_2 + 41, 1200, 76.29 );
setSeVolume( spep_2 + 42, 1200, 89.00 );
setSeVolume( spep_2 + 43, 1200, 101.71 );
setSeVolume( spep_2 + 44, 1200, 114.43 );
setSeVolume( spep_2 + 45, 1200, 127.14 );
setSeVolume( spep_2 + 46, 1200, 139.86 );
setSeVolume( spep_2 + 47, 1200, 152.57 );
setSeVolume( spep_2 + 48, 1200, 165.29 );
setSeVolume( spep_2 + 49, 1200, 178 );
se_1147 = playSe( spep_2 + 38, 1147 );--びりびり拘束
setSeVolume( spep_2 + 38, 1147, 50 );
playSe( spep_2 + 44, 1003 );--びりびり拘束
playSe( spep_2 + 92, 1027 );--吹き飛ばし

stopSe( spep_2 + 94, se_1200, 0 );
stopSe( spep_2 + 94, se_1147, 0 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 136;
------------------------------------------------------
-- 溜めて発射
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_3 + 190, tame, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_3 + 190, tame, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 190, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 190, tame, 255 );
setEffAlphaKey( spep_3 + 191, tame, 0 );
setEffAlphaKey( spep_3 + 192, tame, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_3+2  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_3+2  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- 文字エントリー --
ctgogo = entryEffectLife( spep_3 +14, 190006, 72, 0x102, -1, 0, 100, 510, 1200);-- ゴゴゴゴ

setEffMoveKey(  spep_3 +14,  ctgogo,  100,  510);
setEffMoveKey(  spep_3 +86,  ctgogo,  100,  510);

setEffAlphaKey( spep_3 +14, ctgogo, 0 );
setEffAlphaKey( spep_3 + 15, ctgogo, 255 );
setEffAlphaKey( spep_3 + 16, ctgogo, 255 );
setEffAlphaKey( spep_3 + 80, ctgogo, 255 );
setEffAlphaKey( spep_3 + 82, ctgogo, 191 );
setEffAlphaKey( spep_3 + 84, ctgogo, 112 );
setEffAlphaKey( spep_3 + 86, ctgogo, 64 );

setEffRotateKey(  spep_3 +14,  ctgogo,  0);
setEffRotateKey(  spep_3 +86,  ctgogo,  0);

setEffScaleKey(  spep_3 +14,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_3 +76,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_3 +86,  ctgogo, -1.07, 1.07 );

--集中線
shuchusenX = entryEffectLife( spep_3 + 14,  906, 72, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 14, shuchusenX, 72, 20 );
setEffMoveKey( spep_3 + 14, shuchusenX, 0, 0 , 0 );
setEffMoveKey( spep_3 + 86, shuchusenX, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusenX, 1.6, 1.6 );
setEffScaleKey( spep_3 + 86, shuchusenX, 1.6, 1.6 );

setEffRotateKey( spep_3 + 14, shuchusenX, 0 );
setEffRotateKey( spep_3 + 86, shuchusenX, 0 );

setEffAlphaKey( spep_3 + 14, shuchusenX, 255 );
setEffAlphaKey( spep_3 + 86, shuchusenX, 255 );

-- ** ホワイトフェード ** --
entryFade( spep_3 + 182, 4, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255);

--SE
playSe( spep_3 + 14, 1018 );--顔カットイン
playSe( spep_3 + 24, 1144 );--気弾溜め
setSeVolume( spep_3 + 24, 1144, 87 );
playSe( spep_3 + 24, 1154 );--気弾溜め
setSeVolume( spep_3 + 24, 1154, 150 );
playSe( spep_3 + 148, 1022 );--気弾発射
setSeVolume( spep_3 + 148, 1022, 84 );
se_1146 = playSe( spep_3 + 148, 1146 );--気弾発射
setSeVolume( spep_3 + 148, 1146, 83 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 192, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 190;
------------------------------------------------------
-- ギャン(58F)
------------------------------------------------------

-- ** エフェクト等 ** --
gyan = entryEffectLife( spep_4 + 0, 190000, 58, 0x80, -1, 0, 0, 0 ); --ギャン(ef_005)
setEffMoveKey( spep_4 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_4 + 58, gyan, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_4 + 58, gyan, 1.0, 1.0 );
setEffAlphaKey( spep_4 + 0, gyan, 255 );
setEffAlphaKey( spep_4 + 58, gyan, 255 );
setEffRotateKey( spep_4 + 0, gyan, 0 );
setEffRotateKey( spep_4 + 58, gyan, 0 );

-- 書き文字エントリー --
ctgyan = entryEffectLife( spep_4 + 0,  10006, 58, 0x100, -1, 0, 15.1, 298.8 ); --ギャン
--setEffMoveKey( spep_4 + 0, ctgyan, 12.6, 286.8 , 0 );
setEffMoveKey( spep_4 + 0, ctgyan, 15.1, 298.8 , 0 );
setEffMoveKey( spep_4 + 58, ctgyan, 15.1, 298.8 , 0 );

setEffScaleKey( spep_4 + 0, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_4 + 2, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_4 + 4, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_4 + 6, ctgyan, 3.5, 3.5 );
--[[setEffScaleKey( spep_4 + 8, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_4 -3 + 10, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_4 -3 + 12, ctgyan, 3.3, 3.3 );
setEffScaleKey( spep_4 -3 + 14, ctgyan, 2.42, 2.42 );
setEffScaleKey( spep_4 -3 + 16, ctgyan, 2.43, 2.43 );
setEffScaleKey( spep_4 -3 + 18, ctgyan, 2.44, 2.44 );
setEffScaleKey( spep_4 -3 + 20, ctgyan, 2.45, 2.45 );
setEffScaleKey( spep_4 -3 + 22, ctgyan, 2.46, 2.46 );
setEffScaleKey( spep_4 -3 + 24, ctgyan, 2.46, 2.46 );
setEffScaleKey( spep_4 -3 + 26, ctgyan, 2.47, 2.47 );
setEffScaleKey( spep_4 -3 + 28, ctgyan, 2.48, 2.48 );
setEffScaleKey( spep_4 -3 + 30, ctgyan, 2.49, 2.49 );
setEffScaleKey( spep_4 -3 + 32, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_4 -3 + 34, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_4 -3 + 36, ctgyan, 2.51, 2.51 );
setEffScaleKey( spep_4 -3 + 38, ctgyan, 2.52, 2.52 );
setEffScaleKey( spep_4 -3 + 40, ctgyan, 2.53, 2.53 );
setEffScaleKey( spep_4 -3 + 42, ctgyan, 2.53, 2.53 );
setEffScaleKey( spep_4 -3 + 44, ctgyan, 2.54, 2.54 );
setEffScaleKey( spep_4 -3 + 46, ctgyan, 2.55, 2.55 );
setEffScaleKey( spep_4 -3 + 48, ctgyan, 2.56, 2.56 );
setEffScaleKey( spep_4 -3 + 50, ctgyan, 2.57, 2.57 );
setEffScaleKey( spep_4 -3 + 52, ctgyan, 2.57, 2.57 );
setEffScaleKey( spep_4 -3 + 54, ctgyan, 2.58, 2.58 );
setEffScaleKey( spep_4 -3 + 56, ctgyan, 2.59, 2.59 );
setEffScaleKey( spep_4 -3 + 58, ctgyan, 2.6, 2.6 );
setEffScaleKey( spep_4 + 57, ctgyan, 3.8, 3.8 );]]
setEffScaleKey( spep_4 + 58, ctgyan, 4.0, 4.0 );

setEffRotateKey( spep_4 + 0, ctgyan, 0 );
setEffRotateKey( spep_4 + 58, ctgyan, 0 );

setEffAlphaKey( spep_4 + 0, ctgyan, 255 );
setEffAlphaKey( spep_4 + 58, ctgyan, 255 );

-- ** 音 ** --
playSe( spep_4 + 8, 1023 );--ギャン
stopSe( spep_4 + 17, se_1146, 58 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ホワイトフェード ** --
entryFade( spep_4 + 18, 39, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);

-- ** 次の準備 ** --
spep_5 = spep_4 + 58;
------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_5 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, explosion, 0, 0, 0 );
setEffMoveKey( spep_5 + 130, explosion, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_5 + 130, explosion, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, explosion, 0 );
setEffRotateKey( spep_5 + 130, explosion, 0 );
setEffAlphaKey( spep_5 + 0, explosion, 255 );
setEffAlphaKey( spep_5 + 130, explosion, 255 );

--SE
playSe( spep_5 + 0, 1067 );--爆発
playSe( spep_5 + 6, 1159 );--爆発

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 130, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_5 +10 );
endPhase( spep_5 + 120 );
end