--1019880:アルティメット孫悟飯_爆裂ラッシュ
--sp_effect_b4_00145

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
SP_01=	155414	;--	導入、前方突進	
SP_02=	155415	;--	ラッシュ_敵より前	
SP_03=	155416	;--	ラッシュ_敵より後ろ	
SP_04=	155417	;--	追いかけ→打ち下ろし_敵より前	
SP_05=	155418	;--	追いかけ→打ち下ろし_敵よ後ろ前	
SP_06=	155419	;--	敵地面落下→煙	

--エフェクト(てき)
SP_01x=	155414	;--	導入、前方突進	
SP_02x=	155420	;--	ラッシュ_敵より前	(敵)
SP_03x=	155416	;--	ラッシュ_敵より後ろ	
SP_04x=	155417	;--	追いかけ→打ち下ろし_敵より前	
SP_05x=	155421	;--	追いかけ→打ち下ろし_敵よ後ろ前	(敵)
SP_06x=	155419	;--	敵地面落下→煙	

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
-- 導入、前方突進
------------------------------------------------------
--はじめの準備
spep_0=0;


-- ** エフェクト等 ** --
rush = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_0 + 100, rush, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_0 + 100, rush, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, rush, 0 );
setEffRotateKey( spep_0 + 100, rush, 0 );
setEffAlphaKey( spep_0 + 0, rush, 255 );
setEffAlphaKey( spep_0 + 100, rush, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 86, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 + 0, shuchusen1, 86, 20 );
setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 86, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1, 1 );
setEffScaleKey( spep_0 + 86, shuchusen1, 1, 1 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 86, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 86, shuchusen1, 255 );

--SE
se_0009 = playSe( spep_0 + 10, 9 );
setSeVolume( spep_0 + 10, 9, 126 );
SE0=playSe( spep_0 + 12, 1018 );
setSeVolume( spep_0 + 12, 1018, 89 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 102, 0,  0, 0, 0, 180 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, se_0009, 0 );

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

-- ** 顔カットイン ** --
speff = entryEffect( spep_0  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +12, 190006, 72, 0x102, -1, 0, -34, 512);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +12,  ctgogo,  -34,  512);
setEffMoveKey(  spep_0 +84,  ctgogo,  -34,  512);

setEffAlphaKey( spep_0 +12, ctgogo, 0 );
setEffAlphaKey( spep_0 + 13, ctgogo, 255 );
setEffAlphaKey( spep_0 + 14, ctgogo, 255 );
setEffAlphaKey( spep_0 + 78, ctgogo, 255 );
setEffAlphaKey( spep_0 + 80, ctgogo, 191 );
setEffAlphaKey( spep_0 + 82, ctgogo, 112 );
setEffAlphaKey( spep_0 + 84, ctgogo, 64 );

setEffRotateKey(  spep_0 +12,  ctgogo,  0);
setEffRotateKey(  spep_0 +84,  ctgogo,  0);

setEffScaleKey(  spep_0 +12,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +74,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +84,  ctgogo, 1.07, 1.07 );

--SE
se_1072 = playSe( spep_0 + 52, 1072 );
se_0044 = playSe( spep_0 + 82, 44 );
setSeVolume( spep_0 + 82, 44, 68 );

--白
entryFade( spep_0+92 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--はじめの準備
spep_1=spep_0+100;
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

stopSe( spep_1 + 0, se_0009, 0 );
stopSe( spep_1 + 0, se_1072, 0 );
stopSe( spep_1 + 0, se_0044, 0 );

--白フェード
entryFade( spep_1 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- ラッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 190, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 190, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_f, 0 );
setEffRotateKey( spep_2 + 190, fighting_f, 0 );
setEffAlphaKey( spep_2 + 0, fighting_f, 255 );
setEffAlphaKey( spep_2 + 190, fighting_f, 255 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 190, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 190, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_b, 0 );
setEffRotateKey( spep_2 + 190, fighting_b, 0 );
setEffAlphaKey( spep_2 + 0, fighting_b, 255 );
setEffAlphaKey( spep_2 + 190, fighting_b, 255 );

--敵の動き
setDisp( spep_2-3 + 22, 1, 1);
setDisp( spep_2-3 + 188, 1, 0);
changeAnime( spep_2-3 + 22, 1, 100);
changeAnime( spep_2-3 + 50, 1, 108);
changeAnime( spep_2-3 + 76, 1, 106);
changeAnime( spep_2-3 + 106, 1, 108);
changeAnime( spep_2-3 + 148, 1, 105);


setMoveKey( spep_2-3 + 22, 1, 1567, 66.6 , 0 );
setMoveKey( spep_2-3 + 24, 1, 1426.1, 67 , 0 );
setMoveKey( spep_2-3 + 26, 1, 1280.7, 67.5 , 0 );
setMoveKey( spep_2-3 + 28, 1, 1131.5, 67.8 , 0 );
setMoveKey( spep_2-3 + 30, 1, 979.1, 68.2 , 0 );
setMoveKey( spep_2-3 + 32, 1, 824.1, 68.7 , 0 );
setMoveKey( spep_2-3 + 34, 1, 667.4, 69.2 , 0 );
setMoveKey( spep_2-3 + 36, 1, 509.6, 69.5 , 0 );
setMoveKey( spep_2-3 + 38, 1, 351.4, 69.9 , 0 );
setMoveKey( spep_2-3 + 40, 1, 304.2, 70 , 0 );
setMoveKey( spep_2-3 + 42, 1, 252.6, 69.9 , 0 );
setMoveKey( spep_2-3 + 44, 1, 196.6, 70 , 0 );
setMoveKey( spep_2-3 + 46, 1, 136.1, 70 , 0 );
setMoveKey( spep_2-3 + 48, 1, 71.4, 69.9 , 0 );
setMoveKey( spep_2-3 + 49, 1, 71.4, 69.9 , 0 );

setMoveKey( spep_2-3 + 50, 1, 82.2, 87.3 , 0 );
setMoveKey( spep_2-3 + 52, 1, 93.7, 97.3 , 0 );
setMoveKey( spep_2-3 + 54, 1, 75.2, 77.3 , 0 );
setMoveKey( spep_2-3 + 56, 1, 96.7, 97.3 , 0 );
setMoveKey( spep_2-3 + 58, 1, 88.2, 87.3 , 0 );
setMoveKey( spep_2-3 + 60, 1, 89.7, 87.3 , 0 );
setMoveKey( spep_2-3 + 62, 1, 91.2, 87.3 , 0 );
setMoveKey( spep_2-3 + 64, 1, 92.7, 87.3 , 0 );
setMoveKey( spep_2-3 + 66, 1, 94.2, 87.3 , 0 );
setMoveKey( spep_2-3 + 68, 1, 95.7, 87.3 , 0 );
setMoveKey( spep_2-3 + 70, 1, 97.2, 87.3 , 0 );
setMoveKey( spep_2-3 + 72, 1, 98.7, 87.3 , 0 );
setMoveKey( spep_2-3 + 74, 1, 100.2, 87.3 , 0 );
setMoveKey( spep_2-3 + 75, 1, 100.2, 87.3 , 0 );

setMoveKey( spep_2-3 + 76, 1, 63.1, 101 , 0 );
setMoveKey( spep_2-3 + 78, 1, 51.1, 79.8 , 0 );
setMoveKey( spep_2-3 + 80, 1, 79.1, 98.6 , 0 );
setMoveKey( spep_2-3 + 82, 1, 66.6, 88.6 , 0 );
setMoveKey( spep_2-3 + 84, 1, 64.1, 88.6 , 0 );
setMoveKey( spep_2-3 + 86, 1, 61.6, 88.6 , 0 );
setMoveKey( spep_2-3 + 88, 1, 59.1, 88.6 , 0 );
setMoveKey( spep_2-3 + 90, 1, 56.6, 88.6 , 0 );
setMoveKey( spep_2-3 + 92, 1, 54.1, 88.6 , 0 );
setMoveKey( spep_2-3 + 94, 1, 51.7, 88.6 , 0 );
setMoveKey( spep_2-3 + 96, 1, 49.2, 88.6 , 0 );
setMoveKey( spep_2-3 + 98, 1, 46.7, 88.6 , 0 );
setMoveKey( spep_2-3 + 100, 1, 44.2, 88.6 , 0 );
setMoveKey( spep_2-3 + 102, 1, 41.7, 88.6 , 0 );
setMoveKey( spep_2-3 + 104, 1, 39.2, 88.6 , 0 );
setMoveKey( spep_2-3 + 105, 1, 39.2, 88.6 , 0 );

setMoveKey( spep_2-3 + 106, 1, 49.1, 124.5 , 0 );
setMoveKey( spep_2-3 + 108, 1, 30.1, 105.2 , 0 );
setMoveKey( spep_2-3 + 110, 1, 51, 125.8 , 0 );
setMoveKey( spep_2-3 + 112, 1, 42, 116.5 , 0 );
setMoveKey( spep_2-3 + 114, 1, 53, 127.2 , 0 );
setMoveKey( spep_2-3 + 116, 1, 33.9, 107.8 , 0 );
setMoveKey( spep_2-3 + 118, 1, 54.9, 128.5 , 0 );
setMoveKey( spep_2-3 + 120, 1, 45.8, 119.1 , 0 );
setMoveKey( spep_2-3 + 122, 1, 46.8, 119.8 , 0 );
setMoveKey( spep_2-3 + 124, 1, 47.7, 120.5 , 0 );
setMoveKey( spep_2-3 + 126, 1, 48.7, 121.1 , 0 );
setMoveKey( spep_2-3 + 128, 1, 49.7, 121.8 , 0 );
setMoveKey( spep_2-3 + 130, 1, 50.6, 122.5 , 0 );
setMoveKey( spep_2-3 + 132, 1, 51.6, 123.1 , 0 );
setMoveKey( spep_2-3 + 134, 1, 52.5, 123.8 , 0 );
setMoveKey( spep_2-3 + 136, 1, 53.5, 124.5 , 0 );
setMoveKey( spep_2-3 + 138, 1, 54.4, 125.1 , 0 );
setMoveKey( spep_2-3 + 140, 1, 55.4, 125.8 , 0 );
setMoveKey( spep_2-3 + 142, 1, 56.4, 126.5 , 0 );
setMoveKey( spep_2-3 + 144, 1, 57.3, 127.1 , 0 );
setMoveKey( spep_2-3 + 146, 1, 58.3, 127.8 , 0 );
setMoveKey( spep_2-3 + 147, 1, 58.3, 127.8 , 0 );

setMoveKey( spep_2-3 + 148, 1, 84.4, 132.1 , 0 );
setMoveKey( spep_2-3 + 150, 1, 98.8, 148.3 , 0 );
setMoveKey( spep_2-3 + 152, 1, 83.4, 134.6 , 0 );
setMoveKey( spep_2-3 + 154, 1, 108, 161 , 0 );
setMoveKey( spep_2-3 + 156, 1, 102.8, 157.4 , 0 );
setMoveKey( spep_2-3 + 158, 1, 117.6, 173.8 , 0 );
setMoveKey( spep_2-3 + 160, 1, 102.5, 160.2 , 0 );
setMoveKey( spep_2-3 + 162, 1, 127.5, 186.4 , 0 );
setMoveKey( spep_2-3 + 164, 1, 122.5, 182.4 , 0 );
setMoveKey( spep_2-3 + 166, 1, 137.7, 198.2 , 0 );
setMoveKey( spep_2-3 + 168, 1, 123, 183.7 , 0 );
setMoveKey( spep_2-3 + 170, 1, 148.4, 208.8 , 0 );
setMoveKey( spep_2-3 + 172, 1, 144.1, 203.4 , 0 );
setMoveKey( spep_2-3 + 174, 1, 159.9, 217.6 , 0 );
setMoveKey( spep_2-3 + 176, 1, 146.1, 201.1 , 0 );
setMoveKey( spep_2-3 + 178, 1, 172.8, 224.1 , 0 );
setMoveKey( spep_2-3 + 180, 1, 170.1, 216.7 , 0 );
setMoveKey( spep_2-3 + 182, 1, 188.2, 229.2 , 0 );
setMoveKey( spep_2-3 + 184, 1, 187, 221.8 , 0 );
setMoveKey( spep_2-3 + 186, 1, 206.7, 235 , 0 );
setMoveKey( spep_2-3 + 188, 1, 202.3, 227.3 , 0 );

setScaleKey( spep_2-3 + 22, 1, 1.92, 1.92 );
setScaleKey( spep_2-3 + 24, 1, 1.85, 1.85 );
setScaleKey( spep_2-3 + 26, 1, 1.78, 1.78 );
setScaleKey( spep_2-3 + 28, 1, 1.71, 1.71 );
setScaleKey( spep_2-3 + 30, 1, 1.64, 1.64 );
setScaleKey( spep_2-3 + 32, 1, 1.58, 1.57 );
setScaleKey( spep_2-3 + 34, 1, 1.51, 1.51 );
setScaleKey( spep_2-3 + 36, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 38, 1, 1.37, 1.37 );
setScaleKey( spep_2-3 + 40, 1, 1.38, 1.38 );
setScaleKey( spep_2-3 + 42, 1, 1.38, 1.38 );
setScaleKey( spep_2-3 + 44, 1, 1.39, 1.39 );
setScaleKey( spep_2-3 + 46, 1, 1.39, 1.39 );
setScaleKey( spep_2-3 + 48, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 49, 1, 1.4, 1.4 );

setScaleKey( spep_2-3 + 50, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 75, 1, 1.4, 1.4 );

setScaleKey( spep_2-3 + 76, 1, 1.38, 1.38 );
setScaleKey( spep_2-3 + 105, 1, 1.38, 1.38 );

setScaleKey( spep_2-3 + 106, 1, 1.3, 1.3 );
setScaleKey( spep_2-3 + 147, 1, 1.3, 1.3 );

setScaleKey( spep_2-3 + 148, 1, 1.25, 1.25 );
setScaleKey( spep_2-3 + 150, 1, 1.2, 1.2 );
setScaleKey( spep_2-3 + 152, 1, 1.16, 1.16 );
setScaleKey( spep_2-3 + 154, 1, 1.11, 1.11 );
setScaleKey( spep_2-3 + 156, 1, 1.06, 1.06 );
setScaleKey( spep_2-3 + 158, 1, 1.01, 1.01 );
setScaleKey( spep_2-3 + 160, 1, 0.96, 0.96 );
setScaleKey( spep_2-3 + 162, 1, 0.91, 0.91 );
setScaleKey( spep_2-3 + 164, 1, 0.86, 0.86 );
setScaleKey( spep_2-3 + 166, 1, 0.81, 0.81 );
setScaleKey( spep_2-3 + 168, 1, 0.76, 0.76 );
setScaleKey( spep_2-3 + 170, 1, 0.71, 0.71 );
setScaleKey( spep_2-3 + 172, 1, 0.66, 0.66 );
setScaleKey( spep_2-3 + 174, 1, 0.61, 0.61 );
setScaleKey( spep_2-3 + 176, 1, 0.56, 0.56 );
setScaleKey( spep_2-3 + 178, 1, 0.51, 0.51 );
setScaleKey( spep_2-3 + 180, 1, 0.46, 0.46 );
setScaleKey( spep_2-3 + 182, 1, 0.4, 0.4 );
setScaleKey( spep_2-3 + 184, 1, 0.34, 0.34 );
setScaleKey( spep_2-3 + 186, 1, 0.27, 0.27 );
setScaleKey( spep_2-3 + 188, 1, 0.19, 0.19 );

setRotateKey( spep_2-3 + 22, 1, 0 );
setRotateKey( spep_2-3 + 75, 1, 0 );

setRotateKey( spep_2-3 + 76, 1, -39.9 );
setRotateKey( spep_2-3 + 78, 1, -40 );
setRotateKey( spep_2-3 + 80, 1, -40.1 );
setRotateKey( spep_2-3 + 82, 1, -39.8 );
setRotateKey( spep_2-3 + 84, 1, -39.5 );
setRotateKey( spep_2-3 + 86, 1, -39.2 );
setRotateKey( spep_2-3 + 88, 1, -38.9 );
setRotateKey( spep_2-3 + 90, 1, -38.5 );
setRotateKey( spep_2-3 + 92, 1, -38.2 );
setRotateKey( spep_2-3 + 94, 1, -37.9 );
setRotateKey( spep_2-3 + 96, 1, -37.6 );
setRotateKey( spep_2-3 + 98, 1, -37.3 );
setRotateKey( spep_2-3 + 100, 1, -37 );
setRotateKey( spep_2-3 + 102, 1, -36.7 );
setRotateKey( spep_2-3 + 104, 1, -36.4 );
setRotateKey( spep_2-3 + 105, 1, -36.4 );

setRotateKey( spep_2-3 + 106, 1, -5 );
setRotateKey( spep_2-3 + 147, 1, -5 );

setRotateKey( spep_2-3 + 148, 1, 21.8 );
setRotateKey( spep_2-3 + 188, 1, 21.8 );

--集中線
shuchusen2 = entryEffectLife( spep_2-3 + 50,  906, 12, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 50, shuchusen2, 12, 20 );
setEffMoveKey( spep_2-3 + 50, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 62, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 50, shuchusen2, 1, 1 );
setEffScaleKey( spep_2-3 + 62, shuchusen2, 1, 1 );

setEffRotateKey( spep_2-3 + 50, shuchusen2, 0 );
setEffRotateKey( spep_2-3 + 62, shuchusen2, 0 );

setEffAlphaKey( spep_2-3 + 50, shuchusen2, 255 );
setEffAlphaKey( spep_2-3 + 62, shuchusen2, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_2-3 + 76,  906, 14, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 76, shuchusen3, 14, 20 );
setEffMoveKey( spep_2-3 + 76, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 90, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 76, shuchusen3, 1, 1 );
setEffScaleKey( spep_2-3 + 90, shuchusen3, 1, 1 );

setEffRotateKey( spep_2-3 + 76, shuchusen3, 0 );
setEffRotateKey( spep_2-3 + 90, shuchusen3, 0 );

setEffAlphaKey( spep_2-3 + 76, shuchusen3, 255 );
setEffAlphaKey( spep_2-3 + 90, shuchusen3, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_2-3 + 106,  906, 16, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 106, shuchusen4, 16, 20 );
setEffMoveKey( spep_2-3 + 106, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 122, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 106, shuchusen4, 1, 1 );
setEffScaleKey( spep_2-3 + 122, shuchusen4, 1, 1 );

setEffRotateKey( spep_2-3 + 106, shuchusen4, 0 );
setEffRotateKey( spep_2-3 + 122, shuchusen4, 0 );

setEffAlphaKey( spep_2-3 + 106, shuchusen4, 255 );
setEffAlphaKey( spep_2-3 + 122, shuchusen4, 255 );

--集中線
shuchusen5 = entryEffectLife( spep_2-3 + 150,  906, 26, 0x100, -1, 0, 213, 0 );
setEffShake( spep_2-3 + 150, shuchusen5, 26, 20 );
setEffMoveKey( spep_2-3 + 150, shuchusen5, 213, 0 , 0 );
setEffMoveKey( spep_2-3 + 176, shuchusen5, 213, 0 , 0 );

setEffScaleKey( spep_2-3 + 150, shuchusen5, 2, 2 );
setEffScaleKey( spep_2-3 + 176, shuchusen5, 2, 2 );

setEffRotateKey( spep_2-3 + 150, shuchusen5, 0 );
setEffRotateKey( spep_2-3 + 176, shuchusen5, 0 );

setEffAlphaKey( spep_2-3 + 150, shuchusen5, 255 );
setEffAlphaKey( spep_2-3 + 176, shuchusen5, 255 );

--文字エントリー
ctga = entryEffectLife( spep_2-3 + 50,  10005, 12, 0x100, -1, 0, -28.2, 294.2 );--ガッ
setEffShake( spep_2-3 + 50, ctga, 12, 10 );
setEffMoveKey( spep_2-3 + 50, ctga, -28.2, 294.2 , 0 );
setEffMoveKey( spep_2-3 + 52, ctga, -18.5, 296.2 , 0 );
setEffMoveKey( spep_2-3 + 54, ctga, -28.2, 294.2 , 0 );
setEffMoveKey( spep_2-3 + 56, ctga, -18.5, 296.2 , 0 );
setEffMoveKey( spep_2-3 + 58, ctga, -28.2, 294.2 , 0 );
setEffMoveKey( spep_2-3 + 60, ctga, -18.5, 296.2 , 0 );
setEffMoveKey( spep_2-3 + 62, ctga, -28.2, 294.2 , 0 );

setEffScaleKey( spep_2-3 + 50, ctga, 1.24, 1.24 );
setEffScaleKey( spep_2-3 + 62, ctga, 1.24, 1.24 );

setEffRotateKey( spep_2-3 + 50, ctga, 15 );
setEffRotateKey( spep_2-3 + 62, ctga, 15 );

setEffAlphaKey( spep_2-3 + 50, ctga, 255 );
setEffAlphaKey( spep_2-3 + 62, ctga, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_2-3 + 76,  10020, 14, 0x100, -1, 0, 62.3, 301.6 );--バキッ
setEffShake( spep_2-3 + 76, ctbaki, 14, 10 );
setEffMoveKey( spep_2-3 + 76, ctbaki, 62.3, 301.6 , 0 );
setEffMoveKey( spep_2-3 + 78, ctbaki, 75.6, 314.9 , 0 );
setEffMoveKey( spep_2-3 + 80, ctbaki, 62.3, 301.6 , 0 );
setEffMoveKey( spep_2-3 + 82, ctbaki, 75.6, 314.9 , 0 );
setEffMoveKey( spep_2-3 + 84, ctbaki, 62.3, 301.6 , 0 );
setEffMoveKey( spep_2-3 + 86, ctbaki, 75.6, 314.9 , 0 );
setEffMoveKey( spep_2-3 + 88, ctbaki, 62.3, 301.6 , 0 );
setEffMoveKey( spep_2-3 + 90, ctbaki, 75.6, 314.9 , 0 );

setEffScaleKey( spep_2-3 + 76, ctbaki, 1.46, 1.46 );
setEffScaleKey( spep_2-3 + 90, ctbaki, 1.46, 1.46 );

setEffRotateKey( spep_2-3 + 76, ctbaki, 0 );
setEffRotateKey( spep_2-3 + 90, ctbaki, 0 );

setEffAlphaKey( spep_2-3 + 76, ctbaki, 255 );
setEffAlphaKey( spep_2-3 + 90, ctbaki, 255 );

--文字エントリー
ctga2 = entryEffectLife( spep_2-3 + 106,  10005, 16, 0x100, -1, 0, -30.5, 268.1 );--ガッ
setEffShake( spep_2-3 + 106, ctga2, 16, 10 );
setEffMoveKey( spep_2-3 + 106, ctga2, -30.5, 268.1 , 0 );
setEffMoveKey( spep_2-3 + 108, ctga2, -20.8, 278.5 , 0 );
setEffMoveKey( spep_2-3 + 110, ctga2, -30.5, 268.1 , 0 );
setEffMoveKey( spep_2-3 + 112, ctga2, -20.8, 278.5 , 0 );
setEffMoveKey( spep_2-3 + 114, ctga2, -30.5, 268.1 , 0 );
setEffMoveKey( spep_2-3 + 116, ctga2, -20.8, 278.5 , 0 );
setEffMoveKey( spep_2-3 + 118, ctga2, -30.5, 268.1 , 0 );
setEffMoveKey( spep_2-3 + 120, ctga2, -20.8, 278.5 , 0 );
setEffMoveKey( spep_2-3 + 122, ctga2, -30.5, 268.1 , 0 );

setEffScaleKey( spep_2-3 + 106, ctga2, 1.76, 1.76 );
setEffScaleKey( spep_2-3 + 122, ctga2, 1.76, 1.76 );

setEffRotateKey( spep_2-3 + 106, ctga2, -20.4 );
setEffRotateKey( spep_2-3 + 122, ctga2, -20.4 );

setEffAlphaKey( spep_2-3 + 106, ctga2, 255 );
setEffAlphaKey( spep_2-3 + 122, ctga2, 255 );

--文字エントリー
ctbago = entryEffectLife( spep_2-3 + 150,  10021, 26, 0x100, -1, 0, -128.7, 318.5 );--バゴォッ
setEffShake( spep_2-3 + 150, ctbago, 26, 10 );
setEffMoveKey( spep_2-3 + 150, ctbago, -128.7, 318.5 , 0 );
setEffMoveKey( spep_2-3 + 176, ctbago, -128.7, 318.5 , 0 );

setEffScaleKey( spep_2-3 + 150, ctbago, 2.03, 2.03 );
setEffScaleKey( spep_2-3 + 152, ctbago, 2.23, 2.23 );
setEffScaleKey( spep_2-3 + 154, ctbago, 2.03, 2.03 );
setEffScaleKey( spep_2-3 + 156, ctbago, 2.23, 2.23 );
setEffScaleKey( spep_2-3 + 158, ctbago, 2.03, 2.03 );
setEffScaleKey( spep_2-3 + 160, ctbago, 2.23, 2.23 );
setEffScaleKey( spep_2-3 + 162, ctbago, 2.03, 2.03 );
setEffScaleKey( spep_2-3 + 164, ctbago, 2.23, 2.23 );
setEffScaleKey( spep_2-3 + 166, ctbago, 2.03, 2.03 );
setEffScaleKey( spep_2-3 + 168, ctbago, 2.23, 2.23 );
setEffScaleKey( spep_2-3 + 170, ctbago, 2.03, 2.03 );
setEffScaleKey( spep_2-3 + 172, ctbago, 2.23, 2.23 );
setEffScaleKey( spep_2-3 + 174, ctbago, 2.03, 2.03 );
setEffScaleKey( spep_2-3 + 176, ctbago, 2.23, 2.23 );

setEffRotateKey( spep_2-3 + 150, ctbago, -28 );
setEffRotateKey( spep_2-3 + 176, ctbago, -28 );

setEffAlphaKey( spep_2-3 + 150, ctbago, 255 );
setEffAlphaKey( spep_2-3 + 176, ctbago, 255 );

--SE
se_1182 = playSe( spep_2 + 6, 1182 );
se_1183 = playSe( spep_2 + 6, 1183 );
playSe( spep_2 + 42, 1189 );
playSe( spep_2 + 47, 1010 );
playSe( spep_2 + 47, 1000 );
playSe( spep_2 + 77, 1000 );
playSe( spep_2 + 77, 1010 );
playSe( spep_2 + 107, 1009 );
playSe( spep_2 + 107, 1012 );
playSe( spep_2 + 111, 1000 );
playSe( spep_2 + 152, 1003 );
setSeVolume( spep_2 + 152, 1003, 82 );
playSe( spep_2 + 152, 1072 );
playSe( spep_2 + 156, 1010 );
playSe( spep_2 + 158, 1001 );
setSeVolume( spep_2 + 158, 1001, 75 );
se_11831 = playSe( spep_2 + 158, 1183 );
setSeVolume( spep_2 + 158, 1183, 75 );
playSe( spep_2 + 162, 1110 );

stopSe( spep_2 + 52, se_1182, 0 );
stopSe( spep_2 + 52, se_1183, 0 );

--白
entryFade( spep_2+46 , 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2+72 , 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2+102 , 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2+144 , 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2+182 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 192, 0,  0, 0, 0, 180 ); --くろ 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 190;

------------------------------------------------------
-- 追いかけ→打ち下ろし
------------------------------------------------------

-- ** エフェクト等 ** --
fighting2_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, fighting2_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 90, fighting2_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, fighting2_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 90, fighting2_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fighting2_f, 0 );
setEffRotateKey( spep_3 + 90, fighting2_f, 0 );
setEffAlphaKey( spep_3 + 0, fighting2_f, 255 );
setEffAlphaKey( spep_3 + 90, fighting2_f, 255 );

-- ** エフェクト等 ** --
fighting2_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, fighting2_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 90, fighting2_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, fighting2_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 90, fighting2_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fighting2_b, 0 );
setEffRotateKey( spep_3 + 90, fighting2_b, 0 );
setEffAlphaKey( spep_3 + 0, fighting2_b, 255 );
setEffAlphaKey( spep_3 + 90, fighting2_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-2 + 41, 1, 0 );

changeAnime( spep_3 + 0, 1, 108 );

setMoveKey( spep_3 + 0, 1, 441.8, -847.7 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 339, -641 , 0 );
setMoveKey( spep_3-3 + 4, 1, 228.3, -468.2 , 0 );
setMoveKey( spep_3-3 + 6, 1, 156.5, -323.2 , 0 );
setMoveKey( spep_3-3 + 8, 1, 92, -231.2 , 0 );
setMoveKey( spep_3-3 + 10, 1, 75.1, -183.1 , 0 );
setMoveKey( spep_3-3 + 12, 1, 44, -150.1 , 0 );
setMoveKey( spep_3-3 + 14, 1, 30.9, -108.3 , 0 );
setMoveKey( spep_3-3 + 16, 1, 3.4, -81.3 , 0 );
setMoveKey( spep_3-3 + 18, 1, -6.5, -45.2 , 0 );
setMoveKey( spep_3-3 + 20, 1, -30.7, -23.8 , 0 );
setMoveKey( spep_3-3 + 22, 1, -37.4, 7.2 , 0 );
setMoveKey( spep_3-3 + 24, 1, -58.7, 23.7 , 0 );
setMoveKey( spep_3-3 + 26, 1, -62.7, 50 , 0 );
setMoveKey( spep_3-3 + 28, 1, -81.4, 62.1 , 0 );
setMoveKey( spep_3-3 + 30, 1, -82.9, 84.1 , 0 );
setMoveKey( spep_3-3 + 32, 1, -99.2, 92.2 , 0 );
setMoveKey( spep_3-3 + 34, 1, -98.4, 110.4 , 0 );
setMoveKey( spep_3-3 + 36, 1, -112.6, 114.8 , 0 );
setMoveKey( spep_3-3 + 38, 1, -109.7, 129.5 , 0 );
setMoveKey( spep_3-2 + 41, 1, -113.8, 136.7 , 0 );

setScaleKey( spep_3 + 0, 1, 2.8, 2.8 );
setScaleKey( spep_3-2 + 41, 1, 2.8, 2.8 );

setRotateKey( spep_3 + 0, 1, -29.8 );
setRotateKey( spep_3-2 + 41, 1, -29.8 );

--敵の動き
setDisp( spep_3-3 + 46, 1, 1 );
setDisp( spep_3-3 + 88, 1, 0 );

changeAnime( spep_3-3 + 62, 1, 107 );

setMoveKey( spep_3-3 + 46, 1, 499.9, -954.8 , 0 );
setMoveKey( spep_3-3 + 48, 1, 461.7, -857.2 , 0 );
setMoveKey( spep_3-3 + 50, 1, 413.6, -738.1 , 0 );
setMoveKey( spep_3-3 + 52, 1, 355.5, -597.5 , 0 );
setMoveKey( spep_3-3 + 54, 1, 287.6, -435.4 , 0 );
setMoveKey( spep_3-3 + 56, 1, 209.7, -251.9 , 0 );
setMoveKey( spep_3-3 + 58, 1, 121.9, -46.9 , 0 );
setMoveKey( spep_3-3 + 60, 1, 24.2, 179.6 , 0 );
setMoveKey( spep_3-3 + 61, 1, 24.2, 179.6 , 0 );

setMoveKey( spep_3-3 + 62, 1, 6.1, 22.7 , 0 );
setMoveKey( spep_3-3 + 64, 1, 28.3, -91.6 , 0 );
setMoveKey( spep_3-3 + 66, 1, 119.9, -261.5 , 0 );
setMoveKey( spep_3-3 + 68, 1, 172.5, -393.8 , 0 );
setMoveKey( spep_3-3 + 70, 1, 222.7, -475.1 , 0 );
setMoveKey( spep_3-3 + 72, 1, 251.9, -534.7 , 0 );
setMoveKey( spep_3-3 + 74, 1, 272.7, -576.7 , 0 );
setMoveKey( spep_3-3 + 76, 1, 288.8, -609.1 , 0 );
setMoveKey( spep_3-3 + 78, 1, 303.1, -638 , 0 );
setMoveKey( spep_3-3 + 80, 1, 317.7, -668.2 , 0 );
setMoveKey( spep_3-3 + 82, 1, 334.4, -703 , 0 );
setMoveKey( spep_3-3 + 84, 1, 354.4, -745.6 , 0 );
setMoveKey( spep_3-3 + 86, 1, 378.9, -798 , 0 );
setMoveKey( spep_3-3 + 88, 1, 408.7, -862 , 0 );

setScaleKey( spep_3-3 + 46, 1, 4.86, 4.85 );
setScaleKey( spep_3-3 + 48, 1, 4.67, 4.67 );
setScaleKey( spep_3-3 + 50, 1, 4.43, 4.43 );
setScaleKey( spep_3-3 + 52, 1, 4.14, 4.14 );
setScaleKey( spep_3-3 + 54, 1, 3.78, 3.78 );
setScaleKey( spep_3-3 + 56, 1, 3.37, 3.37 );
setScaleKey( spep_3-3 + 58, 1, 2.9, 2.9 );
setScaleKey( spep_3-3 + 60, 1, 2.38, 2.38 );
setScaleKey( spep_3-3 + 61, 1, 2.38, 2.38 );

setScaleKey( spep_3-3 + 62, 1, 1.04, 1.04 );
setScaleKey( spep_3-3 + 64, 1, 1.23, 1.23 );
setScaleKey( spep_3-3 + 66, 1, 1.32, 1.32 );
setScaleKey( spep_3-3 + 68, 1, 1.36, 1.36 );
setScaleKey( spep_3-3 + 70, 1, 1.38, 1.38 );
setScaleKey( spep_3-3 + 72, 1, 1.38, 1.38 );
setScaleKey( spep_3-3 + 74, 1, 1.37, 1.37 );
setScaleKey( spep_3-3 + 76, 1, 1.37, 1.37 );
setScaleKey( spep_3-3 + 78, 1, 1.36, 1.36 );
setScaleKey( spep_3-3 + 80, 1, 1.37, 1.37 );
setScaleKey( spep_3-3 + 82, 1, 1.38, 1.38 );
setScaleKey( spep_3-3 + 84, 1, 1.41, 1.41 );
setScaleKey( spep_3-3 + 86, 1, 1.45, 1.45 );
setScaleKey( spep_3-3 + 88, 1, 1.5, 1.5 );

setRotateKey( spep_3-3 + 46, 1, -30 );
setRotateKey( spep_3-3 + 48, 1, -30 );
setRotateKey( spep_3-3 + 50, 1, -29.9 );
setRotateKey( spep_3-3 + 56, 1, -29.9 );
setRotateKey( spep_3-3 + 58, 1, -29.8 );
setRotateKey( spep_3-3 + 61, 1, -29.8 );

setRotateKey( spep_3-3 + 62, 1, 0 );
setRotateKey( spep_3-3 + 88, 1, 0 );

--集中線
shuchusen6 = entryEffectLife( spep_3-3 + 62,  906, 26, 0x100, -1, 0, -115.2, 213.5 );
setEffShake( spep_3-3 + 62, shuchusen6, 26, 20 );
setEffMoveKey( spep_3-3 + 62, shuchusen6, -115.2, 213.5 , 0 );
setEffMoveKey( spep_3-3 + 88, shuchusen6, -115.2, 213.5 , 0 );

setEffScaleKey( spep_3-3 + 62, shuchusen6, 2.5, 2.5 );
setEffScaleKey( spep_3-3 + 88, shuchusen6, 2.5, 2.5 );

setEffRotateKey( spep_3-3 + 62, shuchusen6, 0 );
setEffRotateKey( spep_3-3 + 88, shuchusen6, 0 );

setEffAlphaKey( spep_3-3 + 62, shuchusen6, 255 );
setEffAlphaKey( spep_3-3 + 88, shuchusen6, 255 );


--文字エントリー
ctdogon = entryEffectLife( spep_3-3 + 62,  10018, 26, 0x100, -1, 0, -78, 19.3 );--ドゴォンッ
setEffShake( spep_3-3 + 62, ctdogon, 26, 10 );
setEffMoveKey( spep_3-3 + 62, ctdogon, -78, 19.3 , 0 );
setEffMoveKey( spep_3-3 + 64, ctdogon, -82.2, -22.2 , 0 );
setEffMoveKey( spep_3-3 + 66, ctdogon, -70, -73.5 , 0 );
setEffMoveKey( spep_3-3 + 68, ctdogon, -79.9, -75.5 , 0 );
setEffMoveKey( spep_3-3 + 70, ctdogon, -69.9, -66.9 , 0 );
setEffMoveKey( spep_3-3 + 72, ctdogon, -65.4, -81.2 , 0 );
setEffMoveKey( spep_3-3 + 74, ctdogon, -67.4, -66.4 , 0 );
setEffMoveKey( spep_3-3 + 76, ctdogon, -57.4, -77.1 , 0 );
setEffMoveKey( spep_3-3 + 78, ctdogon, -62.1, -73.5 , 0 );
setEffMoveKey( spep_3-3 + 80, ctdogon, -48.6, -76.1 , 0 );
setEffMoveKey( spep_3-3 + 82, ctdogon, -57.5, -78.2 , 0 );
setEffMoveKey( spep_3-3 + 84, ctdogon, -35.4, -100.3 , 0 );
setEffMoveKey( spep_3-3 + 86, ctdogon, -50.8, -114.9 , 0 );
setEffMoveKey( spep_3-3 + 88, ctdogon, -47.9, -127.3 , 0 );

setEffScaleKey( spep_3-3 + 62, ctdogon, 0.65, 0.65 );
setEffScaleKey( spep_3-3 + 64, ctdogon, 1.77, 1.77 );
setEffScaleKey( spep_3-3 + 66, ctdogon, 2.9, 2.9 );
setEffScaleKey( spep_3-3 + 68, ctdogon, 2.93, 2.93 );
setEffScaleKey( spep_3-3 + 70, ctdogon, 2.96, 2.96 );
setEffScaleKey( spep_3-3 + 72, ctdogon, 3, 3 );
setEffScaleKey( spep_3-3 + 74, ctdogon, 3.03, 3.03 );
setEffScaleKey( spep_3-3 + 76, ctdogon, 3.07, 3.07 );
setEffScaleKey( spep_3-3 + 78, ctdogon, 3.1, 3.1 );
setEffScaleKey( spep_3-3 + 80, ctdogon, 3.13, 3.13 );
setEffScaleKey( spep_3-3 + 82, ctdogon, 3.56, 3.56 );
setEffScaleKey( spep_3-3 + 84, ctdogon, 3.99, 3.99 );
setEffScaleKey( spep_3-3 + 86, ctdogon, 4.42, 4.42 );
setEffScaleKey( spep_3-3 + 88, ctdogon, 4.85, 4.85 );

setEffRotateKey( spep_3-3 + 62, ctdogon, -30 );
setEffRotateKey( spep_3-3 + 64, ctdogon, -30 );
setEffRotateKey( spep_3-3 + 66, ctdogon, -29.9 );
setEffRotateKey( spep_3-3 + 70, ctdogon, -29.9 );
setEffRotateKey( spep_3-3 + 72, ctdogon, -30 );
setEffRotateKey( spep_3-3 + 88, ctdogon, -30 );

setEffAlphaKey( spep_3-3 + 62, ctdogon, 255 );
setEffAlphaKey( spep_3-3 + 80, ctdogon, 255 );
setEffAlphaKey( spep_3-3 + 82, ctdogon, 191 );
setEffAlphaKey( spep_3-3 + 84, ctdogon, 128 );
setEffAlphaKey( spep_3-3 + 86, ctdogon, 64 );
setEffAlphaKey( spep_3-3 + 88, ctdogon, 0 );

--SE
se_1109 = playSe( spep_3 + 8, 1109 );
setSeVolume( spep_3 + 8, 1109, 52 );
se_0044 = playSe( spep_3 + 12, 44 );
playSe( spep_3 + 60, 1004 );
playSe( spep_3 + 60, 1009 );
playSe( spep_3 + 63, 1187 );

stopSe( spep_3 + 60, se_11831, 0 );
stopSe( spep_3 + 16, se_1109, 19 );
stopSe( spep_3 + 34, se_0044, 22 );

--白
entryFade( spep_3+58 , 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3+82 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 92, 0,  0, 0, 0, 180 ); --くろ 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 90;

------------------------------------------------------
-- 敵地面落下→煙
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_4 + 120, finish, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_4 + 120, finish, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish, 0 );
setEffRotateKey( spep_4 + 120, finish, 0 );
setEffAlphaKey( spep_4 + 0, finish, 255 );
setEffAlphaKey( spep_4 + 120, finish, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-1 + 28, 1, 0 );
changeAnime( spep_4 + 0, 1, 105 );

setMoveKey( spep_4 + 0, 1, 138.1, 991.4 , 0 );
setMoveKey( spep_4 + 2, 1, 127.8, 900 , 0 );
setMoveKey( spep_4 + 4, 1, 117.5, 808.8 , 0 );
setMoveKey( spep_4 + 6, 1, 107.2, 717.6 , 0 );
setMoveKey( spep_4 + 8, 1, 96.9, 626.5 , 0 );
setMoveKey( spep_4 + 10, 1, 86.7, 535.4 , 0 );
setMoveKey( spep_4 + 12, 1, 76.5, 444.4 , 0 );
setMoveKey( spep_4 + 14, 1, 66.3, 353.5 , 0 );
setMoveKey( spep_4 + 16, 1, 56.3, 262.5 , 0 );
setMoveKey( spep_4 + 18, 1, 46.3, 171.5 , 0 );
setMoveKey( spep_4 + 20, 1, 36.3, 80.4 , 0 );
setMoveKey( spep_4 + 22, 1, 26.4, -10.7 , 0 );
setMoveKey( spep_4 + 24, 1, 16.5, -101.9 , 0 );
setMoveKey( spep_4 + 26, 1, 6.5, -193.2 , 0 );
setMoveKey( spep_4-1 + 28, 1, -3.5, -284.5 , 0 );

setScaleKey( spep_4 + 0, 1, 3.5, 3.5 );
setScaleKey( spep_4 + 2, 1, 3.26, 3.26 );
setScaleKey( spep_4 + 4, 1, 3.03, 3.03 );
setScaleKey( spep_4 + 6, 1, 2.79, 2.79 );
setScaleKey( spep_4 + 8, 1, 2.56, 2.56 );
setScaleKey( spep_4 + 10, 1, 2.32, 2.32 );
setScaleKey( spep_4 + 12, 1, 2.08, 2.08 );
setScaleKey( spep_4 + 14, 1, 1.85, 1.85 );
setScaleKey( spep_4 + 16, 1, 1.61, 1.61 );
setScaleKey( spep_4 + 18, 1, 1.38, 1.38 );
setScaleKey( spep_4 + 20, 1, 1.14, 1.14 );
setScaleKey( spep_4 + 22, 1, 0.91, 0.91 );
setScaleKey( spep_4 + 24, 1, 0.67, 0.67 );
setScaleKey( spep_4 + 26, 1, 0.44, 0.44 );
setScaleKey( spep_4-1 + 28, 1, 0.2, 0.2 );

setRotateKey( spep_4 + 0, 1, 5 );
setRotateKey( spep_4 + 2, 1, 14.9 );
setRotateKey( spep_4 + 4, 1, 24.8 );
setRotateKey( spep_4 + 6, 1, 34.7 );
setRotateKey( spep_4 + 8, 1, 44.7 );
setRotateKey( spep_4 + 10, 1, 54.6 );
setRotateKey( spep_4 + 12, 1, 64.5 );
setRotateKey( spep_4 + 14, 1, 74.4 );
setRotateKey( spep_4 + 16, 1, 84.3 );
setRotateKey( spep_4 + 18, 1, 94.2 );
setRotateKey( spep_4 + 20, 1, 104.1 );
setRotateKey( spep_4 + 22, 1, 114.1 );
setRotateKey( spep_4 + 24, 1, 124 );
setRotateKey( spep_4 + 26, 1, 133.9 );
setRotateKey( spep_4-1 + 28, 1, 143.8 );

--SE
se_1121 = playSe( spep_4 + 6, 1121 );
setSeVolume( spep_4 + 6, 1121, 63 );
playSe( spep_4 + 34, 1011 );
playSe( spep_4 + 34, 1159 );
setSeVolume( spep_4 + 34, 1159, 86 );

stopSe( spep_4 + 39, se_1121, 0 );

--白
entryFade( spep_4+26 , 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 30 );
endPhase( spep_4 + 110 );
else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 導入、前方突進
------------------------------------------------------
--はじめの準備
spep_0=0;


-- ** エフェクト等 ** --
rush = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_0 + 100, rush, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, rush, -1.0, 1.0 );
setEffScaleKey( spep_0 + 100, rush, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, rush, 0 );
setEffRotateKey( spep_0 + 100, rush, 0 );
setEffAlphaKey( spep_0 + 0, rush, 255 );
setEffAlphaKey( spep_0 + 100, rush, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 86, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 + 0, shuchusen1, 86, 20 );
setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 86, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1, 1 );
setEffScaleKey( spep_0 + 86, shuchusen1, 1, 1 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 86, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 86, shuchusen1, 255 );

--SE
se_0009 = playSe( spep_0 + 10, 9 );
setSeVolume( spep_0 + 10, 9, 126 );
SE0=playSe( spep_0 + 12, 1018 );
setSeVolume( spep_0 + 12, 1018, 89 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 102, 0,  0, 0, 0, 180 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, se_0009, 0 );

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

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +12, 190006, 72, 0x102, -1, 0, 100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +12,  ctgogo,  100,  510);
setEffMoveKey(  spep_0 +84,  ctgogo,  100,  510);

setEffAlphaKey( spep_0 +12, ctgogo, 0 );
setEffAlphaKey( spep_0 + 13, ctgogo, 255 );
setEffAlphaKey( spep_0 + 14, ctgogo, 255 );
setEffAlphaKey( spep_0 + 78, ctgogo, 255 );
setEffAlphaKey( spep_0 + 80, ctgogo, 191 );
setEffAlphaKey( spep_0 + 82, ctgogo, 112 );
setEffAlphaKey( spep_0 + 84, ctgogo, 64 );

setEffRotateKey(  spep_0 +12,  ctgogo,  0);
setEffRotateKey(  spep_0 +84,  ctgogo,  0);

setEffScaleKey(  spep_0 +12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +74,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +84,  ctgogo, -1.07, 1.07 );

--SE
se_1072 = playSe( spep_0 + 52, 1072 );
se_0044 = playSe( spep_0 + 82, 44 );
setSeVolume( spep_0 + 82, 44, 68 );

--白
entryFade( spep_0+92 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--はじめの準備
spep_1=spep_0+100;
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

stopSe( spep_1 + 0, se_0009, 0 );
stopSe( spep_1 + 0, se_1072, 0 );
stopSe( spep_1 + 0, se_0044, 0 );

--白フェード
entryFade( spep_1 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- ラッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 190, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 190, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_f, 0 );
setEffRotateKey( spep_2 + 190, fighting_f, 0 );
setEffAlphaKey( spep_2 + 0, fighting_f, 255 );
setEffAlphaKey( spep_2 + 190, fighting_f, 255 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_2 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 190, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 190, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_b, 0 );
setEffRotateKey( spep_2 + 190, fighting_b, 0 );
setEffAlphaKey( spep_2 + 0, fighting_b, 255 );
setEffAlphaKey( spep_2 + 190, fighting_b, 255 );

--敵の動き
setDisp( spep_2-3 + 22, 1, 1);
setDisp( spep_2-3 + 188, 1, 0);
changeAnime( spep_2-3 + 22, 1, 100);
changeAnime( spep_2-3 + 50, 1, 108);
changeAnime( spep_2-3 + 76, 1, 106);
changeAnime( spep_2-3 + 106, 1, 108);
changeAnime( spep_2-3 + 148, 1, 105);


setMoveKey( spep_2-3 + 22, 1, 1567, 66.6 , 0 );
setMoveKey( spep_2-3 + 24, 1, 1426.1, 67 , 0 );
setMoveKey( spep_2-3 + 26, 1, 1280.7, 67.5 , 0 );
setMoveKey( spep_2-3 + 28, 1, 1131.5, 67.8 , 0 );
setMoveKey( spep_2-3 + 30, 1, 979.1, 68.2 , 0 );
setMoveKey( spep_2-3 + 32, 1, 824.1, 68.7 , 0 );
setMoveKey( spep_2-3 + 34, 1, 667.4, 69.2 , 0 );
setMoveKey( spep_2-3 + 36, 1, 509.6, 69.5 , 0 );
setMoveKey( spep_2-3 + 38, 1, 351.4, 69.9 , 0 );
setMoveKey( spep_2-3 + 40, 1, 304.2, 70 , 0 );
setMoveKey( spep_2-3 + 42, 1, 252.6, 69.9 , 0 );
setMoveKey( spep_2-3 + 44, 1, 196.6, 70 , 0 );
setMoveKey( spep_2-3 + 46, 1, 136.1, 70 , 0 );
setMoveKey( spep_2-3 + 48, 1, 71.4, 69.9 , 0 );
setMoveKey( spep_2-3 + 49, 1, 71.4, 69.9 , 0 );

setMoveKey( spep_2-3 + 50, 1, 82.2, 87.3 , 0 );
setMoveKey( spep_2-3 + 52, 1, 93.7, 97.3 , 0 );
setMoveKey( spep_2-3 + 54, 1, 75.2, 77.3 , 0 );
setMoveKey( spep_2-3 + 56, 1, 96.7, 97.3 , 0 );
setMoveKey( spep_2-3 + 58, 1, 88.2, 87.3 , 0 );
setMoveKey( spep_2-3 + 60, 1, 89.7, 87.3 , 0 );
setMoveKey( spep_2-3 + 62, 1, 91.2, 87.3 , 0 );
setMoveKey( spep_2-3 + 64, 1, 92.7, 87.3 , 0 );
setMoveKey( spep_2-3 + 66, 1, 94.2, 87.3 , 0 );
setMoveKey( spep_2-3 + 68, 1, 95.7, 87.3 , 0 );
setMoveKey( spep_2-3 + 70, 1, 97.2, 87.3 , 0 );
setMoveKey( spep_2-3 + 72, 1, 98.7, 87.3 , 0 );
setMoveKey( spep_2-3 + 74, 1, 100.2, 87.3 , 0 );
setMoveKey( spep_2-3 + 75, 1, 100.2, 87.3 , 0 );

setMoveKey( spep_2-3 + 76, 1, 63.1, 101 , 0 );
setMoveKey( spep_2-3 + 78, 1, 51.1, 79.8 , 0 );
setMoveKey( spep_2-3 + 80, 1, 79.1, 98.6 , 0 );
setMoveKey( spep_2-3 + 82, 1, 66.6, 88.6 , 0 );
setMoveKey( spep_2-3 + 84, 1, 64.1, 88.6 , 0 );
setMoveKey( spep_2-3 + 86, 1, 61.6, 88.6 , 0 );
setMoveKey( spep_2-3 + 88, 1, 59.1, 88.6 , 0 );
setMoveKey( spep_2-3 + 90, 1, 56.6, 88.6 , 0 );
setMoveKey( spep_2-3 + 92, 1, 54.1, 88.6 , 0 );
setMoveKey( spep_2-3 + 94, 1, 51.7, 88.6 , 0 );
setMoveKey( spep_2-3 + 96, 1, 49.2, 88.6 , 0 );
setMoveKey( spep_2-3 + 98, 1, 46.7, 88.6 , 0 );
setMoveKey( spep_2-3 + 100, 1, 44.2, 88.6 , 0 );
setMoveKey( spep_2-3 + 102, 1, 41.7, 88.6 , 0 );
setMoveKey( spep_2-3 + 104, 1, 39.2, 88.6 , 0 );
setMoveKey( spep_2-3 + 105, 1, 39.2, 88.6 , 0 );

setMoveKey( spep_2-3 + 106, 1, 49.1, 124.5 , 0 );
setMoveKey( spep_2-3 + 108, 1, 30.1, 105.2 , 0 );
setMoveKey( spep_2-3 + 110, 1, 51, 125.8 , 0 );
setMoveKey( spep_2-3 + 112, 1, 42, 116.5 , 0 );
setMoveKey( spep_2-3 + 114, 1, 53, 127.2 , 0 );
setMoveKey( spep_2-3 + 116, 1, 33.9, 107.8 , 0 );
setMoveKey( spep_2-3 + 118, 1, 54.9, 128.5 , 0 );
setMoveKey( spep_2-3 + 120, 1, 45.8, 119.1 , 0 );
setMoveKey( spep_2-3 + 122, 1, 46.8, 119.8 , 0 );
setMoveKey( spep_2-3 + 124, 1, 47.7, 120.5 , 0 );
setMoveKey( spep_2-3 + 126, 1, 48.7, 121.1 , 0 );
setMoveKey( spep_2-3 + 128, 1, 49.7, 121.8 , 0 );
setMoveKey( spep_2-3 + 130, 1, 50.6, 122.5 , 0 );
setMoveKey( spep_2-3 + 132, 1, 51.6, 123.1 , 0 );
setMoveKey( spep_2-3 + 134, 1, 52.5, 123.8 , 0 );
setMoveKey( spep_2-3 + 136, 1, 53.5, 124.5 , 0 );
setMoveKey( spep_2-3 + 138, 1, 54.4, 125.1 , 0 );
setMoveKey( spep_2-3 + 140, 1, 55.4, 125.8 , 0 );
setMoveKey( spep_2-3 + 142, 1, 56.4, 126.5 , 0 );
setMoveKey( spep_2-3 + 144, 1, 57.3, 127.1 , 0 );
setMoveKey( spep_2-3 + 146, 1, 58.3, 127.8 , 0 );
setMoveKey( spep_2-3 + 147, 1, 58.3, 127.8 , 0 );

setMoveKey( spep_2-3 + 148, 1, 84.4, 132.1 , 0 );
setMoveKey( spep_2-3 + 150, 1, 98.8, 148.3 , 0 );
setMoveKey( spep_2-3 + 152, 1, 83.4, 134.6 , 0 );
setMoveKey( spep_2-3 + 154, 1, 108, 161 , 0 );
setMoveKey( spep_2-3 + 156, 1, 102.8, 157.4 , 0 );
setMoveKey( spep_2-3 + 158, 1, 117.6, 173.8 , 0 );
setMoveKey( spep_2-3 + 160, 1, 102.5, 160.2 , 0 );
setMoveKey( spep_2-3 + 162, 1, 127.5, 186.4 , 0 );
setMoveKey( spep_2-3 + 164, 1, 122.5, 182.4 , 0 );
setMoveKey( spep_2-3 + 166, 1, 137.7, 198.2 , 0 );
setMoveKey( spep_2-3 + 168, 1, 123, 183.7 , 0 );
setMoveKey( spep_2-3 + 170, 1, 148.4, 208.8 , 0 );
setMoveKey( spep_2-3 + 172, 1, 144.1, 203.4 , 0 );
setMoveKey( spep_2-3 + 174, 1, 159.9, 217.6 , 0 );
setMoveKey( spep_2-3 + 176, 1, 146.1, 201.1 , 0 );
setMoveKey( spep_2-3 + 178, 1, 172.8, 224.1 , 0 );
setMoveKey( spep_2-3 + 180, 1, 170.1, 216.7 , 0 );
setMoveKey( spep_2-3 + 182, 1, 188.2, 229.2 , 0 );
setMoveKey( spep_2-3 + 184, 1, 187, 221.8 , 0 );
setMoveKey( spep_2-3 + 186, 1, 206.7, 235 , 0 );
setMoveKey( spep_2-3 + 188, 1, 202.3, 227.3 , 0 );

setScaleKey( spep_2-3 + 22, 1, 1.92, 1.92 );
setScaleKey( spep_2-3 + 24, 1, 1.85, 1.85 );
setScaleKey( spep_2-3 + 26, 1, 1.78, 1.78 );
setScaleKey( spep_2-3 + 28, 1, 1.71, 1.71 );
setScaleKey( spep_2-3 + 30, 1, 1.64, 1.64 );
setScaleKey( spep_2-3 + 32, 1, 1.58, 1.57 );
setScaleKey( spep_2-3 + 34, 1, 1.51, 1.51 );
setScaleKey( spep_2-3 + 36, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 38, 1, 1.37, 1.37 );
setScaleKey( spep_2-3 + 40, 1, 1.38, 1.38 );
setScaleKey( spep_2-3 + 42, 1, 1.38, 1.38 );
setScaleKey( spep_2-3 + 44, 1, 1.39, 1.39 );
setScaleKey( spep_2-3 + 46, 1, 1.39, 1.39 );
setScaleKey( spep_2-3 + 48, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 49, 1, 1.4, 1.4 );

setScaleKey( spep_2-3 + 50, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 75, 1, 1.4, 1.4 );

setScaleKey( spep_2-3 + 76, 1, 1.38, 1.38 );
setScaleKey( spep_2-3 + 105, 1, 1.38, 1.38 );

setScaleKey( spep_2-3 + 106, 1, 1.3, 1.3 );
setScaleKey( spep_2-3 + 147, 1, 1.3, 1.3 );

setScaleKey( spep_2-3 + 148, 1, 1.25, 1.25 );
setScaleKey( spep_2-3 + 150, 1, 1.2, 1.2 );
setScaleKey( spep_2-3 + 152, 1, 1.16, 1.16 );
setScaleKey( spep_2-3 + 154, 1, 1.11, 1.11 );
setScaleKey( spep_2-3 + 156, 1, 1.06, 1.06 );
setScaleKey( spep_2-3 + 158, 1, 1.01, 1.01 );
setScaleKey( spep_2-3 + 160, 1, 0.96, 0.96 );
setScaleKey( spep_2-3 + 162, 1, 0.91, 0.91 );
setScaleKey( spep_2-3 + 164, 1, 0.86, 0.86 );
setScaleKey( spep_2-3 + 166, 1, 0.81, 0.81 );
setScaleKey( spep_2-3 + 168, 1, 0.76, 0.76 );
setScaleKey( spep_2-3 + 170, 1, 0.71, 0.71 );
setScaleKey( spep_2-3 + 172, 1, 0.66, 0.66 );
setScaleKey( spep_2-3 + 174, 1, 0.61, 0.61 );
setScaleKey( spep_2-3 + 176, 1, 0.56, 0.56 );
setScaleKey( spep_2-3 + 178, 1, 0.51, 0.51 );
setScaleKey( spep_2-3 + 180, 1, 0.46, 0.46 );
setScaleKey( spep_2-3 + 182, 1, 0.4, 0.4 );
setScaleKey( spep_2-3 + 184, 1, 0.34, 0.34 );
setScaleKey( spep_2-3 + 186, 1, 0.27, 0.27 );
setScaleKey( spep_2-3 + 188, 1, 0.19, 0.19 );

setRotateKey( spep_2-3 + 22, 1, 0 );
setRotateKey( spep_2-3 + 75, 1, 0 );

setRotateKey( spep_2-3 + 76, 1, -39.9 );
setRotateKey( spep_2-3 + 78, 1, -40 );
setRotateKey( spep_2-3 + 80, 1, -40.1 );
setRotateKey( spep_2-3 + 82, 1, -39.8 );
setRotateKey( spep_2-3 + 84, 1, -39.5 );
setRotateKey( spep_2-3 + 86, 1, -39.2 );
setRotateKey( spep_2-3 + 88, 1, -38.9 );
setRotateKey( spep_2-3 + 90, 1, -38.5 );
setRotateKey( spep_2-3 + 92, 1, -38.2 );
setRotateKey( spep_2-3 + 94, 1, -37.9 );
setRotateKey( spep_2-3 + 96, 1, -37.6 );
setRotateKey( spep_2-3 + 98, 1, -37.3 );
setRotateKey( spep_2-3 + 100, 1, -37 );
setRotateKey( spep_2-3 + 102, 1, -36.7 );
setRotateKey( spep_2-3 + 104, 1, -36.4 );
setRotateKey( spep_2-3 + 105, 1, -36.4 );

setRotateKey( spep_2-3 + 106, 1, -5 );
setRotateKey( spep_2-3 + 147, 1, -5 );

setRotateKey( spep_2-3 + 148, 1, 21.8 );
setRotateKey( spep_2-3 + 188, 1, 21.8 );

--集中線
shuchusen2 = entryEffectLife( spep_2-3 + 50,  906, 12, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 50, shuchusen2, 12, 20 );
setEffMoveKey( spep_2-3 + 50, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 62, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 50, shuchusen2, 1, 1 );
setEffScaleKey( spep_2-3 + 62, shuchusen2, 1, 1 );

setEffRotateKey( spep_2-3 + 50, shuchusen2, 0 );
setEffRotateKey( spep_2-3 + 62, shuchusen2, 0 );

setEffAlphaKey( spep_2-3 + 50, shuchusen2, 255 );
setEffAlphaKey( spep_2-3 + 62, shuchusen2, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_2-3 + 76,  906, 14, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 76, shuchusen3, 14, 20 );
setEffMoveKey( spep_2-3 + 76, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 90, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 76, shuchusen3, 1, 1 );
setEffScaleKey( spep_2-3 + 90, shuchusen3, 1, 1 );

setEffRotateKey( spep_2-3 + 76, shuchusen3, 0 );
setEffRotateKey( spep_2-3 + 90, shuchusen3, 0 );

setEffAlphaKey( spep_2-3 + 76, shuchusen3, 255 );
setEffAlphaKey( spep_2-3 + 90, shuchusen3, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_2-3 + 106,  906, 16, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 106, shuchusen4, 16, 20 );
setEffMoveKey( spep_2-3 + 106, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 122, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 106, shuchusen4, 1, 1 );
setEffScaleKey( spep_2-3 + 122, shuchusen4, 1, 1 );

setEffRotateKey( spep_2-3 + 106, shuchusen4, 0 );
setEffRotateKey( spep_2-3 + 122, shuchusen4, 0 );

setEffAlphaKey( spep_2-3 + 106, shuchusen4, 255 );
setEffAlphaKey( spep_2-3 + 122, shuchusen4, 255 );

--集中線
shuchusen5 = entryEffectLife( spep_2-3 + 150,  906, 26, 0x100, -1, 0, 213, 0 );
setEffShake( spep_2-3 + 150, shuchusen5, 26, 20 );
setEffMoveKey( spep_2-3 + 150, shuchusen5, 213, 0 , 0 );
setEffMoveKey( spep_2-3 + 176, shuchusen5, 213, 0 , 0 );

setEffScaleKey( spep_2-3 + 150, shuchusen5, 2, 2 );
setEffScaleKey( spep_2-3 + 176, shuchusen5, 2, 2 );

setEffRotateKey( spep_2-3 + 150, shuchusen5, 0 );
setEffRotateKey( spep_2-3 + 176, shuchusen5, 0 );

setEffAlphaKey( spep_2-3 + 150, shuchusen5, 255 );
setEffAlphaKey( spep_2-3 + 176, shuchusen5, 255 );

--文字エントリー
ctga = entryEffectLife( spep_2-3 + 50,  10005, 12, 0x100, -1, 0, -28.2, 294.2 );--ガッ
setEffShake( spep_2-3 + 50, ctga, 12, 10 );
setEffMoveKey( spep_2-3 + 50, ctga, -28.2, 294.2 , 0 );
setEffMoveKey( spep_2-3 + 52, ctga, -18.5, 296.2 , 0 );
setEffMoveKey( spep_2-3 + 54, ctga, -28.2, 294.2 , 0 );
setEffMoveKey( spep_2-3 + 56, ctga, -18.5, 296.2 , 0 );
setEffMoveKey( spep_2-3 + 58, ctga, -28.2, 294.2 , 0 );
setEffMoveKey( spep_2-3 + 60, ctga, -18.5, 296.2 , 0 );
setEffMoveKey( spep_2-3 + 62, ctga, -28.2, 294.2 , 0 );

setEffScaleKey( spep_2-3 + 50, ctga, 1.24, 1.24 );
setEffScaleKey( spep_2-3 + 62, ctga, 1.24, 1.24 );

setEffRotateKey( spep_2-3 + 50, ctga, 15 );
setEffRotateKey( spep_2-3 + 62, ctga, 15 );

setEffAlphaKey( spep_2-3 + 50, ctga, 255 );
setEffAlphaKey( spep_2-3 + 62, ctga, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_2-3 + 76,  10020, 14, 0x100, -1, 0, 62.3, 301.6 );--バキッ
setEffShake( spep_2-3 + 76, ctbaki, 14, 10 );
setEffMoveKey( spep_2-3 + 76, ctbaki, 62.3, 301.6 , 0 );
setEffMoveKey( spep_2-3 + 78, ctbaki, 75.6, 314.9 , 0 );
setEffMoveKey( spep_2-3 + 80, ctbaki, 62.3, 301.6 , 0 );
setEffMoveKey( spep_2-3 + 82, ctbaki, 75.6, 314.9 , 0 );
setEffMoveKey( spep_2-3 + 84, ctbaki, 62.3, 301.6 , 0 );
setEffMoveKey( spep_2-3 + 86, ctbaki, 75.6, 314.9 , 0 );
setEffMoveKey( spep_2-3 + 88, ctbaki, 62.3, 301.6 , 0 );
setEffMoveKey( spep_2-3 + 90, ctbaki, 75.6, 314.9 , 0 );

setEffScaleKey( spep_2-3 + 76, ctbaki, 1.46, 1.46 );
setEffScaleKey( spep_2-3 + 90, ctbaki, 1.46, 1.46 );

setEffRotateKey( spep_2-3 + 76, ctbaki, 0 );
setEffRotateKey( spep_2-3 + 90, ctbaki, 0 );

setEffAlphaKey( spep_2-3 + 76, ctbaki, 255 );
setEffAlphaKey( spep_2-3 + 90, ctbaki, 255 );

--文字エントリー
ctga2 = entryEffectLife( spep_2-3 + 106,  10005, 16, 0x100, -1, 0, -30.5, 268.1 );--ガッ
setEffShake( spep_2-3 + 106, ctga2, 16, 10 );
setEffMoveKey( spep_2-3 + 106, ctga2, -30.5, 268.1 , 0 );
setEffMoveKey( spep_2-3 + 108, ctga2, -20.8, 278.5 , 0 );
setEffMoveKey( spep_2-3 + 110, ctga2, -30.5, 268.1 , 0 );
setEffMoveKey( spep_2-3 + 112, ctga2, -20.8, 278.5 , 0 );
setEffMoveKey( spep_2-3 + 114, ctga2, -30.5, 268.1 , 0 );
setEffMoveKey( spep_2-3 + 116, ctga2, -20.8, 278.5 , 0 );
setEffMoveKey( spep_2-3 + 118, ctga2, -30.5, 268.1 , 0 );
setEffMoveKey( spep_2-3 + 120, ctga2, -20.8, 278.5 , 0 );
setEffMoveKey( spep_2-3 + 122, ctga2, -30.5, 268.1 , 0 );

setEffScaleKey( spep_2-3 + 106, ctga2, 1.76, 1.76 );
setEffScaleKey( spep_2-3 + 122, ctga2, 1.76, 1.76 );

setEffRotateKey( spep_2-3 + 106, ctga2, -20.4 );
setEffRotateKey( spep_2-3 + 122, ctga2, -20.4 );

setEffAlphaKey( spep_2-3 + 106, ctga2, 255 );
setEffAlphaKey( spep_2-3 + 122, ctga2, 255 );

--文字エントリー
ctbago = entryEffectLife( spep_2-3 + 150,  10021, 26, 0x100, -1, 0, -128.7, 318.5 );--バゴォッ
setEffShake( spep_2-3 + 150, ctbago, 26, 10 );
setEffMoveKey( spep_2-3 + 150, ctbago, -128.7, 318.5 , 0 );
setEffMoveKey( spep_2-3 + 176, ctbago, -128.7, 318.5 , 0 );

setEffScaleKey( spep_2-3 + 150, ctbago, 2.03, 2.03 );
setEffScaleKey( spep_2-3 + 152, ctbago, 2.23, 2.23 );
setEffScaleKey( spep_2-3 + 154, ctbago, 2.03, 2.03 );
setEffScaleKey( spep_2-3 + 156, ctbago, 2.23, 2.23 );
setEffScaleKey( spep_2-3 + 158, ctbago, 2.03, 2.03 );
setEffScaleKey( spep_2-3 + 160, ctbago, 2.23, 2.23 );
setEffScaleKey( spep_2-3 + 162, ctbago, 2.03, 2.03 );
setEffScaleKey( spep_2-3 + 164, ctbago, 2.23, 2.23 );
setEffScaleKey( spep_2-3 + 166, ctbago, 2.03, 2.03 );
setEffScaleKey( spep_2-3 + 168, ctbago, 2.23, 2.23 );
setEffScaleKey( spep_2-3 + 170, ctbago, 2.03, 2.03 );
setEffScaleKey( spep_2-3 + 172, ctbago, 2.23, 2.23 );
setEffScaleKey( spep_2-3 + 174, ctbago, 2.03, 2.03 );
setEffScaleKey( spep_2-3 + 176, ctbago, 2.23, 2.23 );

setEffRotateKey( spep_2-3 + 150, ctbago, -28 );
setEffRotateKey( spep_2-3 + 176, ctbago, -28 );

setEffAlphaKey( spep_2-3 + 150, ctbago, 255 );
setEffAlphaKey( spep_2-3 + 176, ctbago, 255 );

--SE
se_1182 = playSe( spep_2 + 6, 1182 );
se_1183 = playSe( spep_2 + 6, 1183 );
playSe( spep_2 + 42, 1189 );
playSe( spep_2 + 47, 1010 );
playSe( spep_2 + 47, 1000 );
playSe( spep_2 + 77, 1000 );
playSe( spep_2 + 77, 1010 );
playSe( spep_2 + 107, 1009 );
playSe( spep_2 + 107, 1012 );
playSe( spep_2 + 111, 1000 );
playSe( spep_2 + 152, 1003 );
setSeVolume( spep_2 + 152, 1003, 82 );
playSe( spep_2 + 152, 1072 );
playSe( spep_2 + 156, 1010 );
playSe( spep_2 + 158, 1001 );
setSeVolume( spep_2 + 158, 1001, 75 );
se_11831 = playSe( spep_2 + 158, 1183 );
setSeVolume( spep_2 + 158, 1183, 75 );
playSe( spep_2 + 162, 1110 );

stopSe( spep_2 + 52, se_1182, 0 );
stopSe( spep_2 + 52, se_1183, 0 );

--白
entryFade( spep_2+46 , 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2+72 , 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2+102 , 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2+144 , 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2+182 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 192, 0,  0, 0, 0, 180 ); --くろ 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 190;

------------------------------------------------------
-- 追いかけ→打ち下ろし
------------------------------------------------------

-- ** エフェクト等 ** --
fighting2_f = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, fighting2_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 90, fighting2_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, fighting2_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 90, fighting2_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fighting2_f, 0 );
setEffRotateKey( spep_3 + 90, fighting2_f, 0 );
setEffAlphaKey( spep_3 + 0, fighting2_f, 255 );
setEffAlphaKey( spep_3 + 90, fighting2_f, 255 );

-- ** エフェクト等 ** --
fighting2_b = entryEffect( spep_3 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, fighting2_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 90, fighting2_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, fighting2_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 90, fighting2_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fighting2_b, 0 );
setEffRotateKey( spep_3 + 90, fighting2_b, 0 );
setEffAlphaKey( spep_3 + 0, fighting2_b, 255 );
setEffAlphaKey( spep_3 + 90, fighting2_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-2 + 41, 1, 0 );

changeAnime( spep_3 + 0, 1, 108 );

setMoveKey( spep_3 + 0, 1, 441.8, -847.7 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 339, -641 , 0 );
setMoveKey( spep_3-3 + 4, 1, 228.3, -468.2 , 0 );
setMoveKey( spep_3-3 + 6, 1, 156.5, -323.2 , 0 );
setMoveKey( spep_3-3 + 8, 1, 92, -231.2 , 0 );
setMoveKey( spep_3-3 + 10, 1, 75.1, -183.1 , 0 );
setMoveKey( spep_3-3 + 12, 1, 44, -150.1 , 0 );
setMoveKey( spep_3-3 + 14, 1, 30.9, -108.3 , 0 );
setMoveKey( spep_3-3 + 16, 1, 3.4, -81.3 , 0 );
setMoveKey( spep_3-3 + 18, 1, -6.5, -45.2 , 0 );
setMoveKey( spep_3-3 + 20, 1, -30.7, -23.8 , 0 );
setMoveKey( spep_3-3 + 22, 1, -37.4, 7.2 , 0 );
setMoveKey( spep_3-3 + 24, 1, -58.7, 23.7 , 0 );
setMoveKey( spep_3-3 + 26, 1, -62.7, 50 , 0 );
setMoveKey( spep_3-3 + 28, 1, -81.4, 62.1 , 0 );
setMoveKey( spep_3-3 + 30, 1, -82.9, 84.1 , 0 );
setMoveKey( spep_3-3 + 32, 1, -99.2, 92.2 , 0 );
setMoveKey( spep_3-3 + 34, 1, -98.4, 110.4 , 0 );
setMoveKey( spep_3-3 + 36, 1, -112.6, 114.8 , 0 );
setMoveKey( spep_3-3 + 38, 1, -109.7, 129.5 , 0 );
setMoveKey( spep_3-2 + 41, 1, -113.8, 136.7 , 0 );

setScaleKey( spep_3 + 0, 1, 2.8, 2.8 );
setScaleKey( spep_3-2 + 41, 1, 2.8, 2.8 );

setRotateKey( spep_3 + 0, 1, -29.8 );
setRotateKey( spep_3-2 + 41, 1, -29.8 );

--敵の動き
setDisp( spep_3-3 + 46, 1, 1 );
setDisp( spep_3-3 + 88, 1, 0 );

changeAnime( spep_3-3 + 62, 1, 107 );

setMoveKey( spep_3-3 + 46, 1, 499.9, -954.8 , 0 );
setMoveKey( spep_3-3 + 48, 1, 461.7, -857.2 , 0 );
setMoveKey( spep_3-3 + 50, 1, 413.6, -738.1 , 0 );
setMoveKey( spep_3-3 + 52, 1, 355.5, -597.5 , 0 );
setMoveKey( spep_3-3 + 54, 1, 287.6, -435.4 , 0 );
setMoveKey( spep_3-3 + 56, 1, 209.7, -251.9 , 0 );
setMoveKey( spep_3-3 + 58, 1, 121.9, -46.9 , 0 );
setMoveKey( spep_3-3 + 60, 1, 24.2, 179.6 , 0 );
setMoveKey( spep_3-3 + 61, 1, 24.2, 179.6 , 0 );

setMoveKey( spep_3-3 + 62, 1, 6.1, 22.7 , 0 );
setMoveKey( spep_3-3 + 64, 1, 28.3, -91.6 , 0 );
setMoveKey( spep_3-3 + 66, 1, 119.9, -261.5 , 0 );
setMoveKey( spep_3-3 + 68, 1, 172.5, -393.8 , 0 );
setMoveKey( spep_3-3 + 70, 1, 222.7, -475.1 , 0 );
setMoveKey( spep_3-3 + 72, 1, 251.9, -534.7 , 0 );
setMoveKey( spep_3-3 + 74, 1, 272.7, -576.7 , 0 );
setMoveKey( spep_3-3 + 76, 1, 288.8, -609.1 , 0 );
setMoveKey( spep_3-3 + 78, 1, 303.1, -638 , 0 );
setMoveKey( spep_3-3 + 80, 1, 317.7, -668.2 , 0 );
setMoveKey( spep_3-3 + 82, 1, 334.4, -703 , 0 );
setMoveKey( spep_3-3 + 84, 1, 354.4, -745.6 , 0 );
setMoveKey( spep_3-3 + 86, 1, 378.9, -798 , 0 );
setMoveKey( spep_3-3 + 88, 1, 408.7, -862 , 0 );

setScaleKey( spep_3-3 + 46, 1, 4.86, 4.85 );
setScaleKey( spep_3-3 + 48, 1, 4.67, 4.67 );
setScaleKey( spep_3-3 + 50, 1, 4.43, 4.43 );
setScaleKey( spep_3-3 + 52, 1, 4.14, 4.14 );
setScaleKey( spep_3-3 + 54, 1, 3.78, 3.78 );
setScaleKey( spep_3-3 + 56, 1, 3.37, 3.37 );
setScaleKey( spep_3-3 + 58, 1, 2.9, 2.9 );
setScaleKey( spep_3-3 + 60, 1, 2.38, 2.38 );
setScaleKey( spep_3-3 + 61, 1, 2.38, 2.38 );

setScaleKey( spep_3-3 + 62, 1, 1.04, 1.04 );
setScaleKey( spep_3-3 + 64, 1, 1.23, 1.23 );
setScaleKey( spep_3-3 + 66, 1, 1.32, 1.32 );
setScaleKey( spep_3-3 + 68, 1, 1.36, 1.36 );
setScaleKey( spep_3-3 + 70, 1, 1.38, 1.38 );
setScaleKey( spep_3-3 + 72, 1, 1.38, 1.38 );
setScaleKey( spep_3-3 + 74, 1, 1.37, 1.37 );
setScaleKey( spep_3-3 + 76, 1, 1.37, 1.37 );
setScaleKey( spep_3-3 + 78, 1, 1.36, 1.36 );
setScaleKey( spep_3-3 + 80, 1, 1.37, 1.37 );
setScaleKey( spep_3-3 + 82, 1, 1.38, 1.38 );
setScaleKey( spep_3-3 + 84, 1, 1.41, 1.41 );
setScaleKey( spep_3-3 + 86, 1, 1.45, 1.45 );
setScaleKey( spep_3-3 + 88, 1, 1.5, 1.5 );

setRotateKey( spep_3-3 + 46, 1, -30 );
setRotateKey( spep_3-3 + 48, 1, -30 );
setRotateKey( spep_3-3 + 50, 1, -29.9 );
setRotateKey( spep_3-3 + 56, 1, -29.9 );
setRotateKey( spep_3-3 + 58, 1, -29.8 );
setRotateKey( spep_3-3 + 61, 1, -29.8 );

setRotateKey( spep_3-3 + 62, 1, 0 );
setRotateKey( spep_3-3 + 88, 1, 0 );

--集中線
shuchusen6 = entryEffectLife( spep_3-3 + 62,  906, 26, 0x100, -1, 0, -115.2, 213.5 );
setEffShake( spep_3-3 + 62, shuchusen6, 26, 20 );
setEffMoveKey( spep_3-3 + 62, shuchusen6, -115.2, 213.5 , 0 );
setEffMoveKey( spep_3-3 + 88, shuchusen6, -115.2, 213.5 , 0 );

setEffScaleKey( spep_3-3 + 62, shuchusen6, 2.5, 2.5 );
setEffScaleKey( spep_3-3 + 88, shuchusen6, 2.5, 2.5 );

setEffRotateKey( spep_3-3 + 62, shuchusen6, 0 );
setEffRotateKey( spep_3-3 + 88, shuchusen6, 0 );

setEffAlphaKey( spep_3-3 + 62, shuchusen6, 255 );
setEffAlphaKey( spep_3-3 + 88, shuchusen6, 255 );


--文字エントリー
ctdogon = entryEffectLife( spep_3-3 + 62,  10018, 26, 0x100, -1, 0, -78, 19.3 );--ドゴォンッ
setEffShake( spep_3-3 + 62, ctdogon, 26, 10 );
setEffMoveKey( spep_3-3 + 62, ctdogon, -78, 19.3 , 0 );
setEffMoveKey( spep_3-3 + 64, ctdogon, -82.2, -22.2 , 0 );
setEffMoveKey( spep_3-3 + 66, ctdogon, -70, -73.5 , 0 );
setEffMoveKey( spep_3-3 + 68, ctdogon, -79.9, -75.5 , 0 );
setEffMoveKey( spep_3-3 + 70, ctdogon, -69.9, -66.9 , 0 );
setEffMoveKey( spep_3-3 + 72, ctdogon, -65.4, -81.2 , 0 );
setEffMoveKey( spep_3-3 + 74, ctdogon, -67.4, -66.4 , 0 );
setEffMoveKey( spep_3-3 + 76, ctdogon, -57.4, -77.1 , 0 );
setEffMoveKey( spep_3-3 + 78, ctdogon, -62.1, -73.5 , 0 );
setEffMoveKey( spep_3-3 + 80, ctdogon, -48.6, -76.1 , 0 );
setEffMoveKey( spep_3-3 + 82, ctdogon, -57.5, -78.2 , 0 );
setEffMoveKey( spep_3-3 + 84, ctdogon, -35.4, -100.3 , 0 );
setEffMoveKey( spep_3-3 + 86, ctdogon, -50.8, -114.9 , 0 );
setEffMoveKey( spep_3-3 + 88, ctdogon, -47.9, -127.3 , 0 );

setEffScaleKey( spep_3-3 + 62, ctdogon, 0.65, 0.65 );
setEffScaleKey( spep_3-3 + 64, ctdogon, 1.77, 1.77 );
setEffScaleKey( spep_3-3 + 66, ctdogon, 2.9, 2.9 );
setEffScaleKey( spep_3-3 + 68, ctdogon, 2.93, 2.93 );
setEffScaleKey( spep_3-3 + 70, ctdogon, 2.96, 2.96 );
setEffScaleKey( spep_3-3 + 72, ctdogon, 3, 3 );
setEffScaleKey( spep_3-3 + 74, ctdogon, 3.03, 3.03 );
setEffScaleKey( spep_3-3 + 76, ctdogon, 3.07, 3.07 );
setEffScaleKey( spep_3-3 + 78, ctdogon, 3.1, 3.1 );
setEffScaleKey( spep_3-3 + 80, ctdogon, 3.13, 3.13 );
setEffScaleKey( spep_3-3 + 82, ctdogon, 3.56, 3.56 );
setEffScaleKey( spep_3-3 + 84, ctdogon, 3.99, 3.99 );
setEffScaleKey( spep_3-3 + 86, ctdogon, 4.42, 4.42 );
setEffScaleKey( spep_3-3 + 88, ctdogon, 4.85, 4.85 );

setEffRotateKey( spep_3-3 + 62, ctdogon, -30 );
setEffRotateKey( spep_3-3 + 64, ctdogon, -30 );
setEffRotateKey( spep_3-3 + 66, ctdogon, -29.9 );
setEffRotateKey( spep_3-3 + 70, ctdogon, -29.9 );
setEffRotateKey( spep_3-3 + 72, ctdogon, -30 );
setEffRotateKey( spep_3-3 + 88, ctdogon, -30 );

setEffAlphaKey( spep_3-3 + 62, ctdogon, 255 );
setEffAlphaKey( spep_3-3 + 80, ctdogon, 255 );
setEffAlphaKey( spep_3-3 + 82, ctdogon, 191 );
setEffAlphaKey( spep_3-3 + 84, ctdogon, 128 );
setEffAlphaKey( spep_3-3 + 86, ctdogon, 64 );
setEffAlphaKey( spep_3-3 + 88, ctdogon, 0 );

--SE
se_1109 = playSe( spep_3 + 8, 1109 );
setSeVolume( spep_3 + 8, 1109, 52 );
se_0044 = playSe( spep_3 + 12, 44 );
playSe( spep_3 + 60, 1004 );
playSe( spep_3 + 60, 1009 );
playSe( spep_3 + 63, 1187 );

stopSe( spep_3 + 60, se_11831, 0 );
stopSe( spep_3 + 16, se_1109, 19 );
stopSe( spep_3 + 34, se_0044, 22 );

--白
entryFade( spep_3+58 , 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3+82 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 92, 0,  0, 0, 0, 180 ); --くろ 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 90;

------------------------------------------------------
-- 敵地面落下→煙
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_4 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_4 + 120, finish, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_4 + 120, finish, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish, 0 );
setEffRotateKey( spep_4 + 120, finish, 0 );
setEffAlphaKey( spep_4 + 0, finish, 255 );
setEffAlphaKey( spep_4 + 120, finish, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-1 + 28, 1, 0 );
changeAnime( spep_4 + 0, 1, 105 );

setMoveKey( spep_4 + 0, 1, 138.1, 991.4 , 0 );
setMoveKey( spep_4 + 2, 1, 127.8, 900 , 0 );
setMoveKey( spep_4 + 4, 1, 117.5, 808.8 , 0 );
setMoveKey( spep_4 + 6, 1, 107.2, 717.6 , 0 );
setMoveKey( spep_4 + 8, 1, 96.9, 626.5 , 0 );
setMoveKey( spep_4 + 10, 1, 86.7, 535.4 , 0 );
setMoveKey( spep_4 + 12, 1, 76.5, 444.4 , 0 );
setMoveKey( spep_4 + 14, 1, 66.3, 353.5 , 0 );
setMoveKey( spep_4 + 16, 1, 56.3, 262.5 , 0 );
setMoveKey( spep_4 + 18, 1, 46.3, 171.5 , 0 );
setMoveKey( spep_4 + 20, 1, 36.3, 80.4 , 0 );
setMoveKey( spep_4 + 22, 1, 26.4, -10.7 , 0 );
setMoveKey( spep_4 + 24, 1, 16.5, -101.9 , 0 );
setMoveKey( spep_4 + 26, 1, 6.5, -193.2 , 0 );
setMoveKey( spep_4-1 + 28, 1, -3.5, -284.5 , 0 );

setScaleKey( spep_4 + 0, 1, 3.5, 3.5 );
setScaleKey( spep_4 + 2, 1, 3.26, 3.26 );
setScaleKey( spep_4 + 4, 1, 3.03, 3.03 );
setScaleKey( spep_4 + 6, 1, 2.79, 2.79 );
setScaleKey( spep_4 + 8, 1, 2.56, 2.56 );
setScaleKey( spep_4 + 10, 1, 2.32, 2.32 );
setScaleKey( spep_4 + 12, 1, 2.08, 2.08 );
setScaleKey( spep_4 + 14, 1, 1.85, 1.85 );
setScaleKey( spep_4 + 16, 1, 1.61, 1.61 );
setScaleKey( spep_4 + 18, 1, 1.38, 1.38 );
setScaleKey( spep_4 + 20, 1, 1.14, 1.14 );
setScaleKey( spep_4 + 22, 1, 0.91, 0.91 );
setScaleKey( spep_4 + 24, 1, 0.67, 0.67 );
setScaleKey( spep_4 + 26, 1, 0.44, 0.44 );
setScaleKey( spep_4-1 + 28, 1, 0.2, 0.2 );

setRotateKey( spep_4 + 0, 1, 5 );
setRotateKey( spep_4 + 2, 1, 14.9 );
setRotateKey( spep_4 + 4, 1, 24.8 );
setRotateKey( spep_4 + 6, 1, 34.7 );
setRotateKey( spep_4 + 8, 1, 44.7 );
setRotateKey( spep_4 + 10, 1, 54.6 );
setRotateKey( spep_4 + 12, 1, 64.5 );
setRotateKey( spep_4 + 14, 1, 74.4 );
setRotateKey( spep_4 + 16, 1, 84.3 );
setRotateKey( spep_4 + 18, 1, 94.2 );
setRotateKey( spep_4 + 20, 1, 104.1 );
setRotateKey( spep_4 + 22, 1, 114.1 );
setRotateKey( spep_4 + 24, 1, 124 );
setRotateKey( spep_4 + 26, 1, 133.9 );
setRotateKey( spep_4-1 + 28, 1, 143.8 );

--SE
se_1121 = playSe( spep_4 + 6, 1121 );
setSeVolume( spep_4 + 6, 1121, 63 );
playSe( spep_4 + 34, 1011 );
playSe( spep_4 + 34, 1159 );
setSeVolume( spep_4 + 34, 1159, 86 );

stopSe( spep_4 + 39, se_1121, 0 );

--白
entryFade( spep_4+26 , 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 30 );
endPhase( spep_4 + 110 );
end