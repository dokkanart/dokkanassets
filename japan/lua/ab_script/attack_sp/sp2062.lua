--1020460:孫悟空＆ベジータ(天使)_ベジータの誇りと悟空の怒り
--sp_effect_a2_00140

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
SP_01=	155926	;--	冒頭〜悟空パンチまで・手前
SP_02=	155927	;--	冒頭〜悟空パンチまで・奥
SP_03=	155928	;--	ベジータ気弾〜悟空構え
SP_04=	155929	;--	敵に着弾集まる・手前
SP_05=	155930	;--	敵に着弾集まる・奥
SP_06=	155931	;--	ベジータ腕閉じ〜悟空発射
SP_07=	155932	;--	爆発・手前
SP_08=	155933	;--	爆発・奥

--敵側
SP_01x=	155934	;--	冒頭〜悟空パンチまで・手前	(敵)
SP_02x=	155935	;--	冒頭〜悟空パンチまで・奥	(敵)
SP_03x=	155928	;--	ベジータ気弾〜悟空構え	
SP_04x=	155929	;--	敵に着弾集まる・手前	
SP_05x=	155930	;--	敵に着弾集まる・奥	
SP_06x=	155931	;--	ベジータ腕閉じ〜悟空発射	
SP_07x=	155932	;--	爆発・手前	
SP_08x=	155933	;--	爆発・奥	

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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 冒頭〜悟空パンチまで
------------------------------------------------------
spep_0=0;
-- ** エフェクト等 ** --
pannti_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  
setEffMoveKey( spep_0 + 0, pannti_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 426, pannti_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, pannti_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 426, pannti_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, pannti_f, 0 );
setEffRotateKey( spep_0 + 426, pannti_f, 0 );
setEffAlphaKey( spep_0 + 0, pannti_f, 255 );
setEffAlphaKey( spep_0 + 426, pannti_f, 255 );
setEffAlphaKey( spep_0 + 427, pannti_f, 0 );
setEffAlphaKey( spep_0 + 428, pannti_f, 0 );

-- ** エフェクト等 ** --
pannti_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  
setEffMoveKey( spep_0 + 0, pannti_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 426, pannti_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, pannti_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 426, pannti_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, pannti_b, 0 );
setEffRotateKey( spep_0 + 426, pannti_b, 0 );
setEffAlphaKey( spep_0 + 0, pannti_b, 255 );
setEffAlphaKey( spep_0 + 426, pannti_b, 255 );
setEffAlphaKey( spep_0 + 427, pannti_b, 0 );
setEffAlphaKey( spep_0 + 428, pannti_b, 0 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +12, 190006, 72, 0x100, -1, 0, 50, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +12,  ctgogo,  50,  510);
setEffMoveKey(  spep_0 +84,  ctgogo,  50,  510);

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
--顔カットイン
SE001 =playSe( spep_0 + 12 , 1018 );

--悟空押しのける
SE002 =playSe( spep_0 + 38 , 1007 );
setSeVolumeByWorkId( spep_0 + 38 , SE002 , 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 430, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 100; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE002, 0 );

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

--敵の動き
setDisp( spep_0-3 + 140, 1, 1);
setDisp( spep_0-1 + 228, 1, 0);

changeAnime( spep_0-3 + 140, 1, 108);

setMoveKey( spep_0-3 + 140, 1, 101.5, -11.2 , 0 );
setMoveKey( spep_0-3 + 142, 1, 77.1, -0.2 , 0 );
setMoveKey( spep_0-3 + 144, 1, 137.8, 10 , 0 );
setMoveKey( spep_0-3 + 146, 1, 128.9, -3.2 , 0 );
setMoveKey( spep_0-3 + 148, 1, 141.8, 18.3 , 0 );
setMoveKey( spep_0-3 + 150, 1, 130.3, -4.2 , 0 );
setMoveKey( spep_0-3 + 152, 1, 142.2, 17.3 , 0 );
setMoveKey( spep_0-3 + 154, 1, 123.6, 20.8 , 0 );
setMoveKey( spep_0-3 + 156, 1, 140.4, 16.2 , 0 );
setMoveKey( spep_0-3 + 158, 1, 136.6, 5.7 , 0 );
setMoveKey( spep_0-3 + 160, 1, 128.1, 11 , 0 );
setMoveKey( spep_0-3 + 162, 1, 106.6, 4.5 , 0 );
setMoveKey( spep_0-3 + 164, 1, 120, 16.3 , 0 );
setMoveKey( spep_0-3 + 166, 1, 115.9, 19.8 , 0 );
setMoveKey( spep_0-3 + 168, 1, 119.2, 12 , 0 );
setMoveKey( spep_0-3 + 170, 1, 115.2, 8.3 , 0 );
setMoveKey( spep_0-3 + 172, 1, 116.3, 11.7 , 0 );
setMoveKey( spep_0-3 + 174, 1, 112.6, 9.9 , 0 );
setMoveKey( spep_0-3 + 176, 1, 117.4, 11.5 , 0 );
setMoveKey( spep_0-3 + 178, 1, 113.6, 18.7 , 0 );
setMoveKey( spep_0-3 + 180, 1, 114.4, 11.2 , 0 );
setMoveKey( spep_0-3 + 182, 1, 156, 17.3 , 0 );
setMoveKey( spep_0-3 + 184, 1, 147.3, 11.5 , 0 );
setMoveKey( spep_0-3 + 186, 1, 138.7, 26.2 , 0 );
setMoveKey( spep_0-3 + 188, 1, 133.2, 9.2 , 0 );
setMoveKey( spep_0-3 + 190, 1, 142.9, 2.8 , 0 );
setMoveKey( spep_0-3 + 192, 1, 149.9, 12.9 , 0 );
setMoveKey( spep_0-3 + 194, 1, 138.6, 5.5 , 0 );
setMoveKey( spep_0-3 + 196, 1, 151.4, 7.2 , 0 );
setMoveKey( spep_0-3 + 198, 1, 149.8, 18.7 , 0 );
setMoveKey( spep_0-3 + 200, 1, 157, 13.5 , 0 );
setMoveKey( spep_0-3 + 202, 1, 153.3, 8.1 , 0 );
setMoveKey( spep_0-3 + 204, 1, 160.6, 13.8 , 0 );
setMoveKey( spep_0-3 + 206, 1, 153, 0.2 , 0 );
setMoveKey( spep_0-3 + 208, 1, 164.4, 14.1 , 0 );
setMoveKey( spep_0-3 + 210, 1, 152.6, 20 , 0 );
setMoveKey( spep_0-3 + 212, 1, 168.2, 14.4 , 0 );
setMoveKey( spep_0-3 + 214, 1, 162.3, 2.7 , 0 );
setMoveKey( spep_0-3 + 216, 1, 172.2, 14.7 , 0 );
setMoveKey( spep_0-3 + 218, 1, 162.2, 16.8 , 0 );
setMoveKey( spep_0-3 + 220, 1, 176.2, 15 , 0 );
setMoveKey( spep_0-3 + 222, 1, 168.1, 15.2 , 0 );
setMoveKey( spep_0-3 + 224, 1, 180.3, 15.3 , 0 );
setMoveKey( spep_0-3 + 226, 1, 172.2, 7.2 , 0 );
setMoveKey( spep_0-1 + 228, 1, 184.5, 15.6 , 0 );

a=0.3;

setScaleKey( spep_0-3 + 140, 1, 4.65+a, 4.65+a );
setScaleKey( spep_0-3 + 142, 1, 3.98+a, 3.98+a );
setScaleKey( spep_0-3 + 144, 1, 3.31+a, 3.31+a );
setScaleKey( spep_0-3 + 146, 1, 2.63+a, 2.63+a );
setScaleKey( spep_0-3 + 148, 1, 2.55+a, 2.55+a );
setScaleKey( spep_0-3 + 150, 1, 2.46+a, 2.46+a );
setScaleKey( spep_0-3 + 152, 1, 2.37+a, 2.37+a );
setScaleKey( spep_0-3 + 154, 1, 2.28+a, 2.28+a );
setScaleKey( spep_0-3 + 156, 1, 2.2+a, 2.2+a );
setScaleKey( spep_0-3 + 158, 1, 2.11+a, 2.11+a );
setScaleKey( spep_0-3 + 160, 1, 2.02+a, 2.02+a );
setScaleKey( spep_0-3 + 162, 1, 1.93+a, 1.93+a );
setScaleKey( spep_0-3 + 164, 1, 1.92+a, 1.92+a );
setScaleKey( spep_0-3 + 166, 1, 1.9+a, 1.9+a );
setScaleKey( spep_0-3 + 168, 1, 1.88+a, 1.88+a );
setScaleKey( spep_0-3 + 170, 1, 1.86+a, 1.86+a );
setScaleKey( spep_0-3 + 172, 1, 1.84+a, 1.84+a );
setScaleKey( spep_0-3 + 174, 1, 1.83+a, 1.83+a );
setScaleKey( spep_0-3 + 176, 1, 1.81+a, 1.81+a );
setScaleKey( spep_0-3 + 178, 1, 1.79+a, 1.79+a );
setScaleKey( spep_0-3 + 180, 1, 1.77+a, 1.77+a );
setScaleKey( spep_0-3 + 182, 1, 2.32+a, 2.32+a );
setScaleKey( spep_0-3 + 184, 1, 2.11+a, 2.11+a );
setScaleKey( spep_0-3 + 186, 1, 1.9+a, 1.9+a );
setScaleKey( spep_0-3 + 188, 1, 1.69+a, 1.69+a );
setScaleKey( spep_0-3 + 190, 1, 1.71+a, 1.71+a );
setScaleKey( spep_0-3 + 192, 1, 1.73+a, 1.73+a );
setScaleKey( spep_0-3 + 194, 1, 1.75+a, 1.75+a );
setScaleKey( spep_0-3 + 196, 1, 1.77+a, 1.77+a );
setScaleKey( spep_0-3 + 198, 1, 1.79+a, 1.79+a );
setScaleKey( spep_0-3 + 200, 1, 1.81+a, 1.81+a );
setScaleKey( spep_0-3 + 202, 1, 1.83+a, 1.83+a );
setScaleKey( spep_0-3 + 204, 1, 1.85+a, 1.85+a );
setScaleKey( spep_0-3 + 206, 1, 1.87+a, 1.87+a );
setScaleKey( spep_0-3 + 208, 1, 1.89+a, 1.89+a );
setScaleKey( spep_0-3 + 210, 1, 1.91+a, 1.91+a );
setScaleKey( spep_0-3 + 212, 1, 1.93+a, 1.93+a );
setScaleKey( spep_0-3 + 214, 1, 1.95+a, 1.95+a );
setScaleKey( spep_0-3 + 216, 1, 1.97+a, 1.97+a );
setScaleKey( spep_0-3 + 218, 1, 1.99+a, 1.99+a );
setScaleKey( spep_0-3 + 220, 1, 2.01+a, 2.01+a );
setScaleKey( spep_0-3 + 222, 1, 2.03+a, 2.03+a );
setScaleKey( spep_0-3 + 224, 1, 2.05+a, 2.05+a );
setScaleKey( spep_0-3 + 226, 1, 2.07+a, 2.07+a );
setScaleKey( spep_0-1 + 228, 1, 2.09+a, 2.09+a );

setRotateKey( spep_0-3 + 140, 1, 0 );
setRotateKey( spep_0-1 + 228, 1, 0 );

--敵の動き
setDisp( spep_0-3 + 376, 1, 1);
setDisp( spep_0-3 + 392, 1, 0);

changeAnime( spep_0-3 + 376, 1, 107);

setMoveKey( spep_0-3 + 376, 1, 92.9, -315.9 , 0 );
setMoveKey( spep_0-3 + 378, 1, 168.9, -421.5 , 0 );
setMoveKey( spep_0-3 + 380, 1, 224.9, -551.1 , 0 );
setMoveKey( spep_0-3 + 382, 1, 495.8, -942.7 , 0 );
setMoveKey( spep_0-3 + 384, 1, 738.7, -1318.3 , 0 );
setMoveKey( spep_0-3 + 386, 1, 1005.5, -1741.8 , 0 );
setMoveKey( spep_0-3 + 388, 1, 1256.2, -2161.3 , 0 );
setMoveKey( spep_0-3 + 390, 1, 1514.9, -2540.7 , 0 );
setMoveKey( spep_0-3 + 392, 1, 1761.5, -2944.1 , 0 );

setScaleKey( spep_0-3 + 376, 1, 1.28, 1.28 );
setScaleKey( spep_0-3 + 378, 1, 1.52, 1.52 );
setScaleKey( spep_0-3 + 380, 1, 1.76, 1.76 );
setScaleKey( spep_0-3 + 382, 1, 2.77, 2.77 );
setScaleKey( spep_0-3 + 384, 1, 3.77, 3.77 );
setScaleKey( spep_0-3 + 386, 1, 4.77, 4.77 );
setScaleKey( spep_0-3 + 388, 1, 5.78, 5.78 );
setScaleKey( spep_0-3 + 390, 1, 6.78, 6.78 );
setScaleKey( spep_0-3 + 392, 1, 7.78, 7.78 );

setRotateKey( spep_0-3 + 376, 1, 10.2 );
setRotateKey( spep_0-3 + 378, 1, 10.1 );
setRotateKey( spep_0-3 + 386, 1, 10.1 );
setRotateKey( spep_0-3 + 388, 1, 10.2 );
setRotateKey( spep_0-3 + 392, 1, 10.2 );

--文字エントリー
ctzun = entryEffectLife( spep_0-3 + 140,  10016, 14, 0x100, -1, 0, 14.3, 361.2 );--ズンッ
setEffShake( spep_0-3 + 140, ctzun, 14, 10 );
setEffMoveKey( spep_0-3 + 140, ctzun, 14.3, 361.2 , 0 );
setEffMoveKey( spep_0-3 + 142, ctzun, 14.5, 360.9 , 0 );
setEffMoveKey( spep_0-3 + 144, ctzun, 5.7, 367.6 , 0 );
setEffMoveKey( spep_0-3 + 146, ctzun, 14.9, 360.8 , 0 );
setEffMoveKey( spep_0-3 + 148, ctzun, 7.3, 366.3 , 0 );
setEffMoveKey( spep_0-3 + 150, ctzun, 14.7, 360.8 , 0 );
setEffMoveKey( spep_0-3 + 152, ctzun, 8.5, 365.3 , 0 );
setEffMoveKey( spep_0-3 + 154, ctzun, 9.2, 364.8 , 0 );

setEffScaleKey( spep_0-3 + 140, ctzun, 1.43, 1.43 );
setEffScaleKey( spep_0-3 + 142, ctzun, 4.17, 4.17 );
setEffScaleKey( spep_0-3 + 144, ctzun, 3.8, 3.8 );
setEffScaleKey( spep_0-3 + 146, ctzun, 3.42, 3.42 );
setEffScaleKey( spep_0-3 + 148, ctzun, 3.14, 3.14 );
setEffScaleKey( spep_0-3 + 150, ctzun, 2.86, 2.86 );
setEffScaleKey( spep_0-3 + 152, ctzun, 2.57, 2.57 );
setEffScaleKey( spep_0-3 + 154, ctzun, 2.29, 2.29 );

setEffRotateKey( spep_0-3 + 140, ctzun, -5.6 );
setEffRotateKey( spep_0-3 + 148, ctzun, -5.6 );
setEffRotateKey( spep_0-3 + 150, ctzun, -5.7 );
setEffRotateKey( spep_0-3 + 152, ctzun, -5.7 );
setEffRotateKey( spep_0-3 + 154, ctzun, -5.8 );

setEffAlphaKey( spep_0-3 + 140, ctzun, 255 );
setEffAlphaKey( spep_0-3 + 146, ctzun, 255 );
setEffAlphaKey( spep_0-3 + 148, ctzun, 239 );
setEffAlphaKey( spep_0-3 + 150, ctzun, 223 );
setEffAlphaKey( spep_0-3 + 152, ctzun, 207 );
setEffAlphaKey( spep_0-3 + 154, ctzun, 191 );

--文字エントリー
ctdogagaga = entryEffectLife( spep_0-3 + 160,  10017, 68+1, 0x100, -1, 0, 14.7, 326.3 );--ドガガガッ
setEffShake( spep_0-3 + 160, ctdogagaga, 68+1, 10 );
setEffMoveKey( spep_0-3 + 160, ctdogagaga, 14.7, 326.3 , 0 );
setEffMoveKey( spep_0-3 + 162, ctdogagaga, 2.9, 326.3 , 0 );
setEffMoveKey( spep_0-3 + 164, ctdogagaga, -0.1, 305.1 , 0 );
setEffMoveKey( spep_0-3 + 166, ctdogagaga, 1.8, 321.2 , 0 );
setEffMoveKey( spep_0-3 + 168, ctdogagaga, 13, 315.1 , 0 );
setEffMoveKey( spep_0-3 + 170, ctdogagaga, 19.6, 320.2 , 0 );
setEffMoveKey( spep_0-3 + 172, ctdogagaga, 15.7, 329.4 , 0 );
setEffMoveKey( spep_0-3 + 174, ctdogagaga, 19.6, 320.2 , 0 );
setEffMoveKey( spep_0-3 + 176, ctdogagaga, 15.7, 329.5 , 0 );
setEffMoveKey( spep_0-3 + 178, ctdogagaga, 19.6, 320.2 , 0 );
setEffMoveKey( spep_0-3 + 180, ctdogagaga, 15.7, 329.6 , 0 );
setEffMoveKey( spep_0-3 + 182, ctdogagaga, 19.6, 320.2 , 0 );
setEffMoveKey( spep_0-3 + 184, ctdogagaga, 15.6, 329.7 , 0 );
setEffMoveKey( spep_0-3 + 186, ctdogagaga, 19.6, 320.3 , 0 );
setEffMoveKey( spep_0-3 + 188, ctdogagaga, 15.6, 329.8 , 0 );
setEffMoveKey( spep_0-3 + 190, ctdogagaga, 19.6, 320.3 , 0 );
setEffMoveKey( spep_0-3 + 192, ctdogagaga, 15.5, 329.9 , 0 );
setEffMoveKey( spep_0-3 + 194, ctdogagaga, 19.6, 320.3 , 0 );
setEffMoveKey( spep_0-3 + 196, ctdogagaga, 15.5, 330 , 0 );
setEffMoveKey( spep_0-3 + 198, ctdogagaga, 19.6, 320.3 , 0 );
setEffMoveKey( spep_0-3 + 200, ctdogagaga, 15.5, 330.1 , 0 );
setEffMoveKey( spep_0-3 + 202, ctdogagaga, 19.6, 320.3 , 0 );
setEffMoveKey( spep_0-3 + 204, ctdogagaga, 15.4, 330.2 , 0 );
setEffMoveKey( spep_0-3 + 206, ctdogagaga, 19.6, 320.3 , 0 );
setEffMoveKey( spep_0-3 + 208, ctdogagaga, 15.4, 330.4 , 0 );
setEffMoveKey( spep_0-3 + 210, ctdogagaga, 19.6, 320.3 , 0 );
setEffMoveKey( spep_0-3 + 212, ctdogagaga, 15.4, 330.5 , 0 );
setEffMoveKey( spep_0-3 + 214, ctdogagaga, 19.6, 320.3 , 0 );
setEffMoveKey( spep_0-3 + 216, ctdogagaga, 15.3, 330.6 , 0 );
setEffMoveKey( spep_0-3 + 218, ctdogagaga, 19.6, 320.4 , 0 );
setEffMoveKey( spep_0-3 + 220, ctdogagaga, 15.3, 330.7 , 0 );
setEffMoveKey( spep_0-3 + 222, ctdogagaga, 19.6, 320.4 , 0 );
setEffMoveKey( spep_0-3 + 224, ctdogagaga, 15.3, 330.8 , 0 );
setEffMoveKey( spep_0-3 + 226, ctdogagaga, 19.6, 320.4 , 0 );
setEffMoveKey( spep_0-2 + 228, ctdogagaga, 15.2, 330.9 , 0 );

setEffScaleKey( spep_0-3 + 160, ctdogagaga, 2.35, 2.35 );
setEffScaleKey( spep_0-3 + 162, ctdogagaga, 2.72, 2.72 );
setEffScaleKey( spep_0-3 + 164, ctdogagaga, 3.09, 3.09 );
setEffScaleKey( spep_0-3 + 166, ctdogagaga, 2.83, 2.83 );
setEffScaleKey( spep_0-3 + 168, ctdogagaga, 2.58, 2.58 );
setEffScaleKey( spep_0-3 + 170, ctdogagaga, 2.32, 2.32 );
setEffScaleKey( spep_0-3 + 172, ctdogagaga, 2.33, 2.33 );
setEffScaleKey( spep_0-3 + 174, ctdogagaga, 2.35, 2.35 );
setEffScaleKey( spep_0-3 + 176, ctdogagaga, 2.36, 2.36 );
setEffScaleKey( spep_0-3 + 178, ctdogagaga, 2.37, 2.37 );
setEffScaleKey( spep_0-3 + 180, ctdogagaga, 2.38, 2.38 );
setEffScaleKey( spep_0-3 + 182, ctdogagaga, 2.4, 2.4 );
setEffScaleKey( spep_0-3 + 184, ctdogagaga, 2.41, 2.41 );
setEffScaleKey( spep_0-3 + 186, ctdogagaga, 2.42, 2.42 );
setEffScaleKey( spep_0-3 + 188, ctdogagaga, 2.43, 2.43 );
setEffScaleKey( spep_0-3 + 190, ctdogagaga, 2.45, 2.45 );
setEffScaleKey( spep_0-3 + 192, ctdogagaga, 2.46, 2.46 );
setEffScaleKey( spep_0-3 + 194, ctdogagaga, 2.47, 2.47 );
setEffScaleKey( spep_0-3 + 196, ctdogagaga, 2.48, 2.48 );
setEffScaleKey( spep_0-3 + 198, ctdogagaga, 2.5, 2.5 );
setEffScaleKey( spep_0-3 + 200, ctdogagaga, 2.51, 2.51 );
setEffScaleKey( spep_0-3 + 202, ctdogagaga, 2.52, 2.52 );
setEffScaleKey( spep_0-3 + 204, ctdogagaga, 2.53, 2.53 );
setEffScaleKey( spep_0-3 + 206, ctdogagaga, 2.55, 2.55 );
setEffScaleKey( spep_0-3 + 208, ctdogagaga, 2.56, 2.56 );
setEffScaleKey( spep_0-3 + 210, ctdogagaga, 2.57, 2.57 );
setEffScaleKey( spep_0-3 + 212, ctdogagaga, 2.58, 2.58 );
setEffScaleKey( spep_0-3 + 214, ctdogagaga, 2.6, 2.6 );
setEffScaleKey( spep_0-3 + 216, ctdogagaga, 2.61, 2.61 );
setEffScaleKey( spep_0-3 + 218, ctdogagaga, 2.62, 2.62 );
setEffScaleKey( spep_0-3 + 220, ctdogagaga, 2.63, 2.63 );
setEffScaleKey( spep_0-3 + 222, ctdogagaga, 2.65, 2.65 );
setEffScaleKey( spep_0-3 + 224, ctdogagaga, 2.66, 2.66 );
setEffScaleKey( spep_0-3 + 226, ctdogagaga, 2.67, 2.67 );
setEffScaleKey( spep_0-2 + 228, ctdogagaga, 2.68, 2.68 );

setEffRotateKey( spep_0-3 + 160, ctdogagaga, 22.4 );
setEffRotateKey( spep_0-2 + 228, ctdogagaga, 22.4 );

setEffAlphaKey( spep_0-3 + 160, ctdogagaga, 255 );
setEffAlphaKey( spep_0-2 + 228, ctdogagaga, 255 );

--文字エントリー
ctbago = entryEffectLife( spep_0-3 + 376,  10021, 32, 0x100, -1, 0, 165.4, 327.6 );--バゴォッ
setEffShake( spep_0-3 + 376, ctbago, 32, 10 );
setEffMoveKey( spep_0-3 + 376, ctbago, 165.4, 327.6 , 0 );
setEffMoveKey( spep_0-3 + 378, ctbago, 164.6, 327.1 , 0 );
setEffMoveKey( spep_0-3 + 380, ctbago, 165.4, 327.5 , 0 );
setEffMoveKey( spep_0-3 + 382, ctbago, 159.1, 354.1 , 0 );
setEffMoveKey( spep_0-3 + 384, ctbago, 165.4, 327.6 , 0 );
setEffMoveKey( spep_0-3 + 386, ctbago, 159.3, 353.5 , 0 );
setEffMoveKey( spep_0-3 + 388, ctbago, 165.5, 327.6 , 0 );
setEffMoveKey( spep_0-3 + 390, ctbago, 159.5, 353 , 0 );
setEffMoveKey( spep_0-3 + 392, ctbago, 165.5, 327.6 , 0 );
setEffMoveKey( spep_0-3 + 394, ctbago, 159.7, 352.4 , 0 );
setEffMoveKey( spep_0-3 + 396, ctbago, 165.6, 327.7 , 0 );
setEffMoveKey( spep_0-3 + 398, ctbago, 159.9, 351.8 , 0 );
setEffMoveKey( spep_0-3 + 400, ctbago, 165.6, 327.7 , 0 );
setEffMoveKey( spep_0-3 + 402, ctbago, 160.3, 350.3 , 0 );
setEffMoveKey( spep_0-3 + 404, ctbago, 165.6, 327.8 , 0 );
setEffMoveKey( spep_0-3 + 406, ctbago, 161, 347.7 , 0 );
setEffMoveKey( spep_0-3 + 408, ctbago, 161.4, 346.4 , 0 );

setEffScaleKey( spep_0-3 + 376, ctbago, 1.55, 1.55 );
setEffScaleKey( spep_0-3 + 378, ctbago, 4.28, 4.28 );
setEffScaleKey( spep_0-3 + 380, ctbago, 3.21, 3.21 );
setEffScaleKey( spep_0-3 + 382, ctbago, 3.17, 3.17 );
setEffScaleKey( spep_0-3 + 384, ctbago, 3.13, 3.13 );
setEffScaleKey( spep_0-3 + 386, ctbago, 3.1, 3.1 );
setEffScaleKey( spep_0-3 + 388, ctbago, 3.06, 3.06 );
setEffScaleKey( spep_0-3 + 390, ctbago, 3.03, 3.03 );
setEffScaleKey( spep_0-3 + 392, ctbago, 2.99, 2.99 );
setEffScaleKey( spep_0-3 + 394, ctbago, 2.96, 2.96 );
setEffScaleKey( spep_0-3 + 396, ctbago, 2.92, 2.92 );
setEffScaleKey( spep_0-3 + 398, ctbago, 2.88, 2.88 );
setEffScaleKey( spep_0-3 + 400, ctbago, 2.85, 2.85 );
setEffScaleKey( spep_0-3 + 402, ctbago, 2.69, 2.69 );
setEffScaleKey( spep_0-3 + 404, ctbago, 2.53, 2.53 );
setEffScaleKey( spep_0-3 + 406, ctbago, 2.37, 2.37 );
setEffScaleKey( spep_0-3 + 408, ctbago, 2.2, 2.2 );

setEffRotateKey( spep_0-3 + 376, ctbago, 22.3 );
setEffRotateKey( spep_0-3 + 408, ctbago, 22.3 );

setEffAlphaKey( spep_0-3 + 376, ctbago, 255 );
setEffAlphaKey( spep_0-3 + 400, ctbago, 255 );
setEffAlphaKey( spep_0-3 + 402, ctbago, 191 );
setEffAlphaKey( spep_0-3 + 404, ctbago, 128 );
setEffAlphaKey( spep_0-3 + 406, ctbago, 64 );
setEffAlphaKey( spep_0-3 + 408, ctbago, 0 );

--SE
--ベジータ前方ダッシュ
SE003 =playSe( spep_0 + 100 , 1182 );
SE004 =playSe( spep_0 + 100 , 1183 );
stopSe( spep_0 + 148, SE004, 12);
SE005 =playSe( spep_0 + 100 , 9 );
stopSe( spep_0 + 150, SE005, 8);

--横構図ラッシュ
SE006 =playSe( spep_0 -6 + 148 , 1025 );
setSeVolumeByWorkId( spep_0 -6 + 148 , SE006 , 50 );
stopSe( spep_0 -6 + 168, SE006, 14);
SE007 =playSe( spep_0 -6 + 148 , 1187 );
setSeVolumeByWorkId( spep_0 -6 + 148 , SE007 , 66 );
SE008 =playSe( spep_0 -6 + 150 , 1110 );
setSeVolumeByWorkId( spep_0 -6 + 150 , SE008 , 61 );
SE009 =playSe( spep_0 -6 + 162 , 1000 );
setSeVolumeByWorkId( spep_0 -6 + 162 , SE009 , 75 );
SE010 =playSe( spep_0 -6 + 162 , 1009 );
setSeVolumeByWorkId( spep_0 -6 + 162 , SE010 , 56 );
SE011 =playSe( spep_0 -6 + 164 , 1110 );
setSeVolumeByWorkId( spep_0 -6 + 164 , SE011 , 60 );
SE012 =playSe( spep_0 -6 + 172 , 1000 );
setSeVolumeByWorkId( spep_0 -6 + 172 , SE012 , 70 );
SE013 =playSe( spep_0 -6 + 174 , 1010 );
setSeVolumeByWorkId( spep_0 -6 + 174 , SE013 , 67 );
SE014 =playSe( spep_0 -6 + 174 , 1110 );
setSeVolumeByWorkId( spep_0 -6 + 174 , SE014 , 56 );
SE015 =playSe( spep_0 -6 + 180 , 1000 );
setSeVolumeByWorkId( spep_0 -6 + 180 , SE015 , 64 );
SE016 =playSe( spep_0 -6 + 180 , 1110 );
setSeVolumeByWorkId( spep_0 -6 + 180 , SE016 , 64 );
SE017 =playSe( spep_0 -6 + 180 , 1009 );
setSeVolumeByWorkId( spep_0 -6 + 180 , SE017 , 56 );
SE018 =playSe( spep_0 -6 + 188 , 1001 );
setSeVolumeByWorkId( spep_0 -6 + 188 , SE018 , 61 );
SE019 =playSe( spep_0 -6 + 188 , 1010 );
setSeVolumeByWorkId( spep_0 -6 + 188 , SE019 , 60 );
SE020 =playSe( spep_0 -6 + 188 , 1110 );
setSeVolumeByWorkId( spep_0 -6 + 188 , SE020 , 58 );
SE021 =playSe( spep_0 -6 + 194 , 1001 );
setSeVolumeByWorkId( spep_0 -6 + 194 , SE021 , 58 );
SE022 =playSe( spep_0 -6 + 194 , 1009 );
setSeVolumeByWorkId( spep_0 -6 + 194 , SE022 , 51 );
SE023 =playSe( spep_0 -6 + 198 , 1110 );
setSeVolumeByWorkId( spep_0 -6 + 198 , SE023 , 42 );
SE024 =playSe( spep_0 -6 + 202 , 1001 );
setSeVolumeByWorkId( spep_0 -6 + 202 , SE024 , 52 );
SE025 =playSe( spep_0 -6 + 202 , 1010 );
setSeVolumeByWorkId( spep_0 -6 + 202 , SE025 , 68 );
SE026 =playSe( spep_0 -6 + 204 , 1110 );
setSeVolumeByWorkId( spep_0 -6 + 204 , SE026 , 44 );
SE027 =playSe( spep_0 -6 + 220 , 1000 );
setSeVolumeByWorkId( spep_0 -6 + 220 , SE027 , 60 );
SE028 =playSe( spep_0 -6 + 222 , 1010 );
setSeVolumeByWorkId( spep_0 -6 + 222 , SE028 , 53 );
SE029 =playSe( spep_0 -6 + 224 , 1110 );
setSeVolumeByWorkId( spep_0 -6 + 224 , SE029 , 50 );

--正面構図ラッシュ
SE030 =playSe( spep_0 -2 + 230 , 1000 );
SE031 =playSe( spep_0 -2  + 230 , 1009 );
setSeVolumeByWorkId( spep_0 -2 + 230 , SE031 , 87 );
SE032 =playSe( spep_0 -2 + 232 , 1110 );
setSeVolumeByWorkId( spep_0 -2 + 232 , SE032 , 84 );
SE033 =playSe( spep_0 -2 + 234 , 1009 );
SE034 =playSe( spep_0 -2 + 236 , 1110 );
SE035 =playSe( spep_0 -2 + 236 , 1187 );
setSeVolumeByWorkId( spep_0 -2 + 236 , SE035 , 79 );
stopSe( spep_0 -2 + 243, SE035, 15);
SE036 =playSe( spep_0 -2 + 240 , 1110 );
setSeVolumeByWorkId( spep_0 -2 + 240 , SE036 , 115 );
SE037 =playSe( spep_0 -2 + 248 , 1182 );
stopSe( spep_0 -2 + 258, SE037, 4);
SE038 =playSe( spep_0 -2 + 248 , 1009 );
setSeVolumeByWorkId( spep_0 -2 + 248 , SE038 , 72 );
SE039 =playSe( spep_0 -2 + 250 , 1110 );
setSeVolumeByWorkId( spep_0 -2 + 250 , SE039 , 87 );
SE040 =playSe( spep_0 -2 + 250 , 1187 );
setSeVolumeByWorkId( spep_0 -2 + 250 , SE040 , 89 );
stopSe( spep_0 -2 + 258, SE040, 14);
SE041 =playSe( spep_0 -2 + 256 , 1110 );
setSeVolumeByWorkId( spep_0 -2 + 256 , SE041 , 110 );
SE042 =playSe( spep_0 -2 + 264 , 1182 );
stopSe( spep_0 -2 + 274, SE042, 4);
SE043 =playSe( spep_0 -2 + 264 , 1009 );
SE044 =playSe( spep_0 -2 + 264 , 1187 );
setSeVolumeByWorkId( spep_0 -2 + 264 , SE044 , 85 );
stopSe( spep_0 -2 + 270, SE044, 16);
SE045 =playSe( spep_0 -2 + 266 , 1110 );
SE046 =playSe( spep_0 -2 + 272 , 1110 );
setSeVolumeByWorkId( spep_0 -2 + 272 , SE046 , 122 );
SE047 =playSe( spep_0 -2 + 274 , 1187 );
setSeVolumeByWorkId( spep_0 -2 + 274 , SE047 , 86 );
stopSe( spep_0 -2 + 280, SE047, 16);
SE048 =playSe( spep_0 -2 + 286 , 1182 );
stopSe( spep_0 -2 + 296, SE048, 4);
SE049 =playSe( spep_0 -2 + 286 , 1009 );
SE050 =playSe( spep_0 -2 + 288 , 1110 );
SE051 =playSe( spep_0 -2 + 292 , 1110 );
setSeVolumeByWorkId( spep_0 -2 + 292 , SE051 , 114 );
SE052 =playSe( spep_0 -2 + 298 , 1182 );
stopSe( spep_0 -2 + 308, SE052, 4);
SE053 =playSe( spep_0 -2 + 298 , 1009 );
SE054 =playSe( spep_0 -2 + 298 , 1110 );
SE055 =playSe( spep_0 -2 + 298 , 1187 );
setSeVolumeByWorkId( spep_0 -2 + 298 , SE055 , 85 );
stopSe( spep_0 -2 + 306, SE055, 14);
SE056 =playSe( spep_0 -2 + 304 , 1009 );
SE057 =playSe( spep_0 -2 + 306 , 1110 );
SE058 =playSe( spep_0 -2 + 306 , 1187 );
stopSe( spep_0 -2 + 314, SE058, 14);

--悟空飛んでくる
SE059 =playSe( spep_0 -6 + 318 , 1182 );
SE060 =playSe( spep_0 -6 + 318 , 9 );
SE061 =playSe( spep_0 -6 + 318 , 1183 );
stopSe( spep_0 -6 + 380 , SE061, 0);

--悟空パンチ
SE062 =playSe( spep_0 -6 + 372 , 1003 );
SE063 =playSe( spep_0 -6 + 374 , 1120 );

--白フェード
entryFade( spep_0+136 , 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0+418 , 0, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 426;
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
entryFade( spep_1 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- ベジータ気弾〜悟空構え
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  
setEffMoveKey( spep_2 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 132, tame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 132, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 132, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 132, tame, 255 );
setEffAlphaKey( spep_2 + 133, tame, 0 );
setEffAlphaKey( spep_2 + 134, tame, 0 );

--SE
--連続気弾１
SE065 =playSe( spep_2 +10 + 0 , 1016 );
SE066 =playSe( spep_2 +10 + 0 , 1027 );
setSeVolumeByWorkId( spep_2 +10 + 0 , SE066 , 47 );
setTimeStretch( SE066, 0.67, 10, 1 );
SE067 =playSe( spep_2 +10 + 0 , 1155 );
SE068 =playSe( spep_2 +10 + 6 , 1015 );
setSeVolumeByWorkId( spep_2 +10 + 6 , SE068 , 89 );

--連続気弾２
SE069 =playSe( spep_2 +10 + 16 , 1016 );
SE070 =playSe( spep_2 +10 + 16 , 1027 );
setSeVolumeByWorkId( spep_2 +10 + 16 , SE070 , 60 );
setTimeStretch( SE070, 0.67, 10, 1 );
SE071 =playSe( spep_2 +10 + 16 , 1155 );
SE072 =playSe( spep_2 +10 + 22 , 1015 );

--連続気弾３
SE073 =playSe( spep_2 +10 + 28 , 1016 );
SE074 =playSe( spep_2 +10 + 28 , 1027 );
setSeVolumeByWorkId( spep_2 +10 + 28 , SE074 , 47 );
setTimeStretch( SE074, 0.67, 10, 1 );
SE075 =playSe( spep_2 +10 + 28 , 1155 );
setSeVolumeByWorkId( spep_2 +10 + 28 , SE075 , 79 );
SE076 =playSe( spep_2 +10 + 32 , 1015 );

--連続気弾４
SE078 =playSe( spep_2 +10 + 44 , 1016 );
SE079 =playSe( spep_2 +10 + 44 , 1027 );
setSeVolumeByWorkId( spep_2 +10 + 44 , SE079 , 74 );
setTimeStretch( SE079, 1.25, 10, 1 );
SE080 =playSe( spep_2 +10 + 44 , 1155 );

--悟空かめはめ波溜め
SE081 =playSe( spep_2 +20 + 78 , 1209 );
stopSe( spep_2 +20 + 122, SE081, 18);
SE082 =playSe( spep_2 +20 + 78 , 1210 );
setTimeStretch( SE082, 0.63, 10, 1 );
stopSe( spep_2 +20 + 128, SE082, 8);
-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 140, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 132;
------------------------------------------------------
-- 敵に着弾集まる
------------------------------------------------------
-- ** エフェクト等 ** --
kidan_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 );  
setEffMoveKey( spep_3 + 0, kidan_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 70, kidan_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kidan_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 70, kidan_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kidan_f, 0 );
setEffRotateKey( spep_3 + 70, kidan_f, 0 );
setEffAlphaKey( spep_3 + 0, kidan_f, 255 );
setEffAlphaKey( spep_3 + 70, kidan_f, 255 );
setEffAlphaKey( spep_3 + 71, kidan_f, 0 );
setEffAlphaKey( spep_3 + 72, kidan_f, 0 );

-- ** エフェクト等 ** --
kidan_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 );  
setEffMoveKey( spep_3 + 0, kidan_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 70, kidan_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kidan_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 70, kidan_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kidan_b, 0 );
setEffRotateKey( spep_3 + 70, kidan_b, 0 );
setEffAlphaKey( spep_3 + 0, kidan_b, 255 );
setEffAlphaKey( spep_3 + 70, kidan_b, 255 );
setEffAlphaKey( spep_3 + 71, kidan_b, 0 );
setEffAlphaKey( spep_3 + 72, kidan_b, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 70, 1, 0 );

changeAnime( spep_3 + 0, 1, 105 );

setMoveKey( spep_3 + 0, 1, -1110.8, -1692.1 , 0 );
setMoveKey( spep_3 + 2, 1, -928.7, -1405.8 , 0 );
setMoveKey( spep_3 + 4, 1, -750.2, -1125.3 , 0 );
setMoveKey( spep_3 + 6, 1, -575.1, -850.6 , 0 );
setMoveKey( spep_3 + 8, 1, -403.6, -581.7 , 0 );
setMoveKey( spep_3 + 10, 1, -235.4, -318.5 , 0 );
setMoveKey( spep_3 + 12, 1, -70.7, -61.1 , 0 );
setMoveKey( spep_3 + 14, 1, -67.5, -60.4 , 0 );
setMoveKey( spep_3 + 16, 1, -64.4, -59.6 , 0 );
setMoveKey( spep_3 + 18, 1, -61.1, -58.9 , 0 );
setMoveKey( spep_3 + 20, 1, -58, -58.2 , 0 );
setMoveKey( spep_3 + 22, 1, -54.8, -57.5 , 0 );
setMoveKey( spep_3 + 24, 1, -51.8, -57 , 0 );
setMoveKey( spep_3 + 26, 1, -48.7, -56.4 , 0 );
setMoveKey( spep_3 + 28, 1, -45.6, -55.9 , 0 );
setMoveKey( spep_3 + 30, 1, -42.5, -55.3 , 0 );
setMoveKey( spep_3 + 32, 1, -39.5, -54.8 , 0 );
setMoveKey( spep_3 + 34, 1, -36.4, -54.3 , 0 );
setMoveKey( spep_3 + 36, 1, -33.4, -53.8 , 0 );
setMoveKey( spep_3 + 38, 1, -30.5, -53.6 , 0 );
setMoveKey( spep_3 + 40, 1, -27.5, -53.1 , 0 );
setMoveKey( spep_3 + 42, 1, -24.5, -52.8 , 0 );
setMoveKey( spep_3 + 44, 1, -21.6, -52.5 , 0 );
setMoveKey( spep_3 + 46, 1, -18.6, -52.2 , 0 );
setMoveKey( spep_3 + 48, 1, -15.8, -51.9 , 0 );
setMoveKey( spep_3 + 50, 1, -12.9, -51.7 , 0 );
setMoveKey( spep_3 + 52, 1, -10, -51.6 , 0 );
setMoveKey( spep_3 + 54, 1, -7.2, -51.3 , 0 );
setMoveKey( spep_3 + 56, 1, -4.4, -51.2 , 0 );
setMoveKey( spep_3 + 58, 1, -1.5, -51 , 0 );
setMoveKey( spep_3 + 60, 1, 1.3, -51 , 0 );
setMoveKey( spep_3 + 62, 1, 4, -50.9 , 0 );
setMoveKey( spep_3 + 64, 1, 6.8, -50.8 , 0 );
setMoveKey( spep_3 + 66, 1, 9.5, -50.7 , 0 );
setMoveKey( spep_3 + 68, 1, 12.2, -50.9 , 0 );
setMoveKey( spep_3 + 70, 1, 14.9, -50.9 , 0 );

setScaleKey( spep_3 + 0, 1, 26.39+a, 26.39+a );
setScaleKey( spep_3 + 2, 1, 21.94+a, 21.94+a );
setScaleKey( spep_3 + 4, 1, 17.57+a, 17.57+a );
setScaleKey( spep_3 + 6, 1, 13.29+a, 13.29+a );
setScaleKey( spep_3 + 8, 1, 9.1+a, 9.1+a );
setScaleKey( spep_3 + 10, 1, 5+a, 5+a );
setScaleKey( spep_3 + 12, 1, 0.98+a, 0.98+a );
setScaleKey( spep_3 + 14, 1, 0.95+a, 0.95+a );
setScaleKey( spep_3 + 16, 1, 0.92+a, 0.92+a );
setScaleKey( spep_3 + 18, 1, 0.89+a, 0.89+a );
setScaleKey( spep_3 + 20, 1, 0.86+a, 0.86+a );
setScaleKey( spep_3 + 22, 1, 0.83+a, 0.83+a );
setScaleKey( spep_3 + 24, 1, 0.8+a, 0.8+a );
setScaleKey( spep_3 + 26, 1, 0.77+a, 0.77+a );
setScaleKey( spep_3 + 28, 1, 0.74+a, 0.74+a );
setScaleKey( spep_3 + 30, 1, 0.71+a, 0.71+a );
setScaleKey( spep_3 + 32, 1, 0.69+a, 0.69+a );
setScaleKey( spep_3 + 34, 1, 0.66+a, 0.66+a );
setScaleKey( spep_3 + 36, 1, 0.63+a, 0.63+a );
setScaleKey( spep_3 + 38, 1, 0.61+a, 0.61+a );
setScaleKey( spep_3 + 40, 1, 0.58+a, 0.58+a );
setScaleKey( spep_3 + 42, 1, 0.56+a, 0.56+a );
setScaleKey( spep_3 + 44, 1, 0.53+a, 0.53+a );
setScaleKey( spep_3 + 46, 1, 0.51+a, 0.51+a );
setScaleKey( spep_3 + 48, 1, 0.48+a, 0.48+a );
setScaleKey( spep_3 + 50, 1, 0.46+a, 0.46+a );
setScaleKey( spep_3 + 52, 1, 0.44+a, 0.44+a );
setScaleKey( spep_3 + 54, 1, 0.41+a, 0.41+a );
setScaleKey( spep_3 + 56, 1, 0.39+a, 0.39+a );
setScaleKey( spep_3 + 58, 1, 0.37+a, 0.37+a );
setScaleKey( spep_3 + 60, 1, 0.35+a, 0.35+a );
setScaleKey( spep_3 + 62, 1, 0.33+a, 0.33+a );
setScaleKey( spep_3 + 64, 1, 0.31+a, 0.31+a );
setScaleKey( spep_3 + 66, 1, 0.29+a, 0.29+a );
setScaleKey( spep_3 + 68, 1, 0.27+a, 0.27+a );
setScaleKey( spep_3 + 70, 1, 0.25+a, 0.25+a );


setRotateKey( spep_3 + 0, 1, 33.5 );
setRotateKey( spep_3 + 2, 1, 33.5 );
setRotateKey( spep_3 + 4, 1, 33.4 );
setRotateKey( spep_3 + 54, 1, 33.4 );
setRotateKey( spep_3 + 56, 1, 33.5 );
setRotateKey( spep_3 + 70, 1, 33.5 );

--気弾広がる
SE083 =playSe( spep_3 + 0 , 1016 );
setSeVolumeByWorkId( spep_3 + 0 , SE083 , 62 );
SE084 =playSe( spep_3 + 0 , 1155 );
setSeVolumeByWorkId( spep_3 + 0 , SE084 , 72 );
SE085 =playSe( spep_3 + 6 , 1015 );
SE086 =playSe( spep_3 + 10 , 1016 );
setSeVolumeByWorkId( spep_3 + 10 , SE086 , 63 );
SE087 =playSe( spep_3 + 10 , 1155 );
setSeVolumeByWorkId( spep_3 + 10 , SE087 , 63 );
SE088 =playSe( spep_3 + 16 , 1015 );
SE089 =playSe( spep_3 + 20 , 1016 );
setSeVolumeByWorkId( spep_3 + 20 , SE089 , 60 );
SE090 =playSe( spep_3 + 20 , 1155 );
setSeVolumeByWorkId( spep_3 + 20 , SE090 , 79 );
SE091 =playSe( spep_3 + 24 , 1015 );
SE092 =playSe( spep_3 + 30 , 1016 );
setSeVolumeByWorkId( spep_3 + 30 , SE092 , 44 );
SE093 =playSe( spep_3 + 30 , 1155 );
setSeVolumeByWorkId( spep_3 + 30 , SE093 , 60 );
SE094 =playSe( spep_3 + 36 , 1016 );
setSeVolumeByWorkId( spep_3 + 36 , SE094 , 74 );
SE095 =playSe( spep_3 + 36 , 1155 );
setSeVolumeByWorkId( spep_3 + 36 , SE095 , 79 );
SE096 =playSe( spep_3 + 36 , 1202 );
setSeVolumeByWorkId( spep_3 + 36 , SE096 , 80 );
SE097 =playSe( spep_3 + 40 , 1015 );
setSeVolumeByWorkId( spep_3 + 40 , SE097 , 79 );
SE098 =playSe( spep_3 + 46 , 1016 );
setSeVolumeByWorkId( spep_3 + 46 , SE098 , 67 );
SE099 =playSe( spep_3 + 46 , 1155 );
setSeVolumeByWorkId( spep_3 + 46 , SE099 , 74 );
SE100 =playSe( spep_3 + 50 , 1015 );
setSeVolumeByWorkId( spep_3 + 50 , SE100 , 81 );
SE101 =playSe( spep_3 + 54 , 1016 );
setSeVolumeByWorkId( spep_3 + 54 , SE101 , 73 );
SE102 =playSe( spep_3 + 54 , 1155 );
setSeVolumeByWorkId( spep_3 + 54 , SE102 , 79 );
SE103 =playSe( spep_3 + 60 , 1015 );
setSeVolumeByWorkId( spep_3 + 60 , SE103 , 78 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 74, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 70;
------------------------------------------------------
-- ベジータ腕閉じ〜悟空発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 );  
setEffMoveKey( spep_4 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_4 + 148, beam, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_4 + 148, beam, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam, 0 );
setEffRotateKey( spep_4 + 148, beam, 0 );
setEffAlphaKey( spep_4 + 0, beam, 255 );
setEffAlphaKey( spep_4 + 146, beam, 255 );
setEffAlphaKey( spep_4 + 147, beam, 255 );
setEffAlphaKey( spep_4 + 148, beam, 0 );

--文字エントリー
ctba = entryEffectLife( spep_4-3 + 46,  10022, 34+1, 0x100, -1, 0, 20.3, 418.6 );--バッ
setEffShake( spep_4-3 + 46, ctba, 34+1, 10 );
setEffMoveKey( spep_4-3 + 46, ctba, 20.3, 418.6 , 0 );
setEffMoveKey( spep_4-3 + 48, ctba, 20.3, 418.6 , 0 );
setEffMoveKey( spep_4-3 + 50, ctba, 10.8, 427.7 , 0 );
setEffMoveKey( spep_4-3 + 52, ctba, 20.3, 418.6 , 0 );
setEffMoveKey( spep_4-3 + 54, ctba, 12.5, 426.1 , 0 );
setEffMoveKey( spep_4-3 + 56, ctba, 13.3, 425.3 , 0 );
setEffMoveKey( spep_4-3 + 58, ctba, 20.3, 418.6 , 0 );
setEffMoveKey( spep_4-3 + 60, ctba, 13.4, 425.2 , 0 );
setEffMoveKey( spep_4-3 + 62, ctba, 20.3, 418.6 , 0 );
setEffMoveKey( spep_4-3 + 64, ctba, 13.4, 425.2 , 0 );
setEffMoveKey( spep_4-3 + 66, ctba, 20.3, 418.6 , 0 );
setEffMoveKey( spep_4-3 + 68, ctba, 13.5, 425.1 , 0 );
setEffMoveKey( spep_4-3 + 70, ctba, 20.3, 418.6 , 0 );
setEffMoveKey( spep_4-3 + 72, ctba, 13.5, 425.1 , 0 );
setEffMoveKey( spep_4-3 + 74, ctba, 20.3, 418.6 , 0 );
setEffMoveKey( spep_4-3 + 76, ctba, 13.6, 425 , 0 );
setEffMoveKey( spep_4-2 + 80, ctba, 20.3, 418.6 , 0 );

setEffScaleKey( spep_4-3 + 46, ctba, 0.75, 0.75 );
setEffScaleKey( spep_4-3 + 48, ctba, 3.11, 3.11 );
setEffScaleKey( spep_4-3 + 50, ctba, 2.86, 2.86 );
setEffScaleKey( spep_4-3 + 52, ctba, 2.6, 2.6 );
setEffScaleKey( spep_4-3 + 54, ctba, 2.35, 2.35 );
setEffScaleKey( spep_4-3 + 56, ctba, 2.1, 2.1 );
setEffScaleKey( spep_4-3 + 58, ctba, 2.09, 2.09 );
setEffScaleKey( spep_4-3 + 60, ctba, 2.08, 2.08 );
setEffScaleKey( spep_4-3 + 62, ctba, 2.07, 2.07 );
setEffScaleKey( spep_4-3 + 64, ctba, 2.07, 2.07 );
setEffScaleKey( spep_4-3 + 66, ctba, 2.06, 2.06 );
setEffScaleKey( spep_4-3 + 68, ctba, 2.05, 2.05 );
setEffScaleKey( spep_4-3 + 70, ctba, 2.04, 2.04 );
setEffScaleKey( spep_4-3 + 72, ctba, 2.04, 2.04 );
setEffScaleKey( spep_4-3 + 74, ctba, 2.03, 2.03 );
setEffScaleKey( spep_4-3 + 76, ctba, 2.02, 2.02 );
setEffScaleKey( spep_4-2 + 80, ctba, 2.01, 2.01 );

setEffRotateKey( spep_4-3 + 46, ctba, -5.7 );
setEffRotateKey( spep_4-3 + 62, ctba, -5.7 );
setEffRotateKey( spep_4-3 + 64, ctba, -5.6 );
setEffRotateKey( spep_4-2 + 80, ctba, -5.6 );

setEffAlphaKey( spep_4-3 + 46, ctba, 255 );
setEffAlphaKey( spep_4-2 + 80, ctba, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_4-3 + 110,  10012, 32, 0x100, -1, 0, -72.6, 346.9 );--ズオッ
setEffShake( spep_4-3 + 110, ctzuo, 32, 10 );
setEffMoveKey( spep_4-3 + 110, ctzuo, -72.6, 346.9 , 0 );
setEffMoveKey( spep_4-3 + 112, ctzuo, -57.2, 393.9 , 0 );
setEffMoveKey( spep_4-3 + 114, ctzuo, -69.4, 439.8 , 0 );
setEffMoveKey( spep_4-3 + 116, ctzuo, -46.9, 437.8 , 0 );
setEffMoveKey( spep_4-3 + 118, ctzuo, -69.4, 439.8 , 0 );
setEffMoveKey( spep_4-3 + 120, ctzuo, -46.9, 437.8 , 0 );
setEffMoveKey( spep_4-3 + 122, ctzuo, -69.4, 439.8 , 0 );
setEffMoveKey( spep_4-3 + 124, ctzuo, -46.9, 437.8 , 0 );
setEffMoveKey( spep_4-3 + 126, ctzuo, -69.4, 439.8 , 0 );
setEffMoveKey( spep_4-3 + 128, ctzuo, -46.9, 437.8 , 0 );
setEffMoveKey( spep_4-3 + 130, ctzuo, -69.4, 439.8 , 0 );
setEffMoveKey( spep_4-3 + 132, ctzuo, -46.9, 437.8 , 0 );
setEffMoveKey( spep_4-3 + 134, ctzuo, -67.8, 437.2 , 0 );
setEffMoveKey( spep_4-3 + 136, ctzuo, -30.3, 431.4 , 0 );
setEffMoveKey( spep_4-3 + 138, ctzuo, -64.8, 432.2 , 0 );
setEffMoveKey( spep_4-3 + 140, ctzuo, -13.7, 425.2 , 0 );
setEffMoveKey( spep_4-3 + 142, ctzuo, -5.5, 422 , 0 );

setEffScaleKey( spep_4-3 + 110, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_4-3 + 112, ctzuo, 1.54, 1.54 );
setEffScaleKey( spep_4-3 + 114, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_4-3 + 132, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_4-3 + 134, ctzuo, 3.55, 3.55 );
setEffScaleKey( spep_4-3 + 136, ctzuo, 4.37, 4.37 );
setEffScaleKey( spep_4-3 + 138, ctzuo, 5.19, 5.19 );
setEffScaleKey( spep_4-3 + 140, ctzuo, 6.01, 6.01 );
setEffScaleKey( spep_4-3 + 142, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_4-3 + 110, ctzuo, -30.1 );
setEffRotateKey( spep_4-3 + 112, ctzuo, -21.4 );
setEffRotateKey( spep_4-3 + 114, ctzuo, -12.5 );
setEffRotateKey( spep_4-3 + 142, ctzuo, -12.5 );

setEffAlphaKey( spep_4-3 + 110, ctzuo, 255 );
setEffAlphaKey( spep_4-3 + 132, ctzuo, 255 );
setEffAlphaKey( spep_4-3 + 134, ctzuo, 204 );
setEffAlphaKey( spep_4-3 + 136, ctzuo, 153 );
setEffAlphaKey( spep_4-3 + 138, ctzuo, 102 );
setEffAlphaKey( spep_4-3 + 140, ctzuo, 51 );
setEffAlphaKey( spep_4-3 + 142, ctzuo, 0 );

--SE
--悟空かめはめ波溜め続き
SE077 =playSe( spep_4 -14 + 96 , 1210 );
setSeVolumeByWorkId( spep_4 -14 + 96 , SE077 , 0 );
setStartTimeMs( SE077,  3900 );

setSeVolumeByWorkId( spep_4 -14 + 96 , SE077 , 11 );
setSeVolumeByWorkId( spep_4 -14 + 97 , SE077 , 22 );
setSeVolumeByWorkId( spep_4 -14 + 98 , SE077 , 33);
setSeVolumeByWorkId( spep_4 -14 + 99 , SE077 , 44 );
setSeVolumeByWorkId( spep_4 -14 + 100 , SE077 , 55 );
setSeVolumeByWorkId( spep_4 -14 + 101 , SE077 , 66 );
setSeVolumeByWorkId( spep_4 -14 + 102 , SE077 , 77 );
setSeVolumeByWorkId( spep_4 -14 + 103 , SE077 , 88 );
setSeVolumeByWorkId( spep_4 -14 + 104 , SE077 , 100 );
stopSe( spep_4 -14 + 136, SE077, 4);

--ベジータ気弾爆発させる
SE104 =playSe( spep_4-14 + 14 , 1147 );
setSeVolumeByWorkId( spep_4-14 + 14 , SE104 , 80 );
stopSe( spep_4-14 + 106, SE104, 10);

--ベジータフレームイン
SE105 =playSe( spep_4-14 + 20 , 1004 );

--ベジータ気弾爆発させる
SE106 =playSe( spep_4-14 + 46 , 1243 );
stopSe( spep_4-14 + 96, SE106, 14);
SE107 =playSe( spep_4-14 + 58 , 1231 );
setSeVolumeByWorkId( spep_4-14 + 58 , SE107 , 162 );
SE108 =playSe( spep_4-14 + 62 , 1003 );
SE109 =playSe( spep_4-14 + 64 , 1007 );
setSeVolumeByWorkId( spep_4-14 + 64 , SE109 , 79 );

--かめはめ波発射
SE110 =playSe( spep_4 + 112 , 1027 );
SE111 =playSe( spep_4 + 112 , 1022 );
setSeVolumeByWorkId( spep_4 + 112 , SE110 , 60 );
SE112 =playSe( spep_4 + 112 , 1133 );
setSeVolumeByWorkId( spep_4 + 112 , SE111 , 114 );
SE113 =playSe( spep_4 + 112 , 1177 );
setSeVolumeByWorkId( spep_4 + 112 , SE112 , 69 );

--白フェード
entryFade( spep_4+106 , 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 159, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 148;


------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 );  
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 178, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 178, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 178, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 178, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 );  
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 178, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 178, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 178, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 178, finish_b, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 64, 1, 1 );

changeAnime( spep_5 + 0, 1, 105 );

setMoveKey( spep_5 + 0, 1, 15.4, -24.6 , 0 );
setMoveKey( spep_5 + 2, 1, 17.8, -27.9 , 0 );
setMoveKey( spep_5 + 4, 1, 20.1, -31.1 , 0 );
setMoveKey( spep_5 + 6, 1, 22.4, -34.3 , 0 );
setMoveKey( spep_5 + 8, 1, 24.7, -37.6 , 0 );
setMoveKey( spep_5 + 10, 1, 26.9, -40.9 , 0 );
setMoveKey( spep_5 + 12, 1, 29.1, -44.2 , 0 );
setMoveKey( spep_5 + 14, 1, 31.2, -47.5 , 0 );
setMoveKey( spep_5 + 16, 1, 33.4, -50.8 , 0 );
setMoveKey( spep_5 + 18, 1, 29.9, -74.4 , 0 );
setMoveKey( spep_5 + 20, 1, 34.4, -50 , 0 );
setMoveKey( spep_5 + 22, 1, 14.8, -53.5 , 0 );
setMoveKey( spep_5 + 24, 1, 35.3, -49.1 , 0 );
setMoveKey( spep_5 + 26, 1, 31.8, -56.7 , 0 );
setMoveKey( spep_5 + 28, 1, 36.2, -48.3 , 0 );
setMoveKey( spep_5 + 30, 1, 16.7, -23.9 , 0 );
setMoveKey( spep_5 + 32, 1, 37.1, -47.5 , 0 );
setMoveKey( spep_5 + 34, 1, 33.6, -67.1 , 0 );
setMoveKey( spep_5 + 36, 1, 38.1, -46.7 , 0 );
setMoveKey( spep_5 + 38, 1, 18.5, -54.3 , 0 );
setMoveKey( spep_5 + 40, 1, 39, -45.9 , 0 );
setMoveKey( spep_5 + 42, 1, 35.5, -61.4 , 0 );
setMoveKey( spep_5 + 44, 1, 39.9, -45 , 0 );
setMoveKey( spep_5 + 46, 1, 32.4, -36.6 , 0 );
setMoveKey( spep_5 + 48, 1, 40.9, -44.2 , 0 );
setMoveKey( spep_5 + 50, 1, 41.3, -43.8 , 0 );
setMoveKey( spep_5 + 52, 1, 41.8, -43.4 , 0 );
setMoveKey( spep_5 + 54, 1, 42.2, -43 , 0 );
setMoveKey( spep_5 + 56, 1, 42.7, -42.6 , 0 );
setMoveKey( spep_5 + 58, 1, 43.2, -42.2 , 0 );
setMoveKey( spep_5 + 60, 1, 43.6, -41.8 , 0 );
setMoveKey( spep_5 + 62, 1, 44.1, -41.4 , 0 );
setMoveKey( spep_5 + 64, 1, 44.6, -40.9 , 0 );

setScaleKey( spep_5 + 0, 1, 0.92+a, 0.92+a );
setScaleKey( spep_5 + 2, 1, 0.89+a, 0.89+a );
setScaleKey( spep_5 + 4, 1, 0.87+a, 0.87+a );
setScaleKey( spep_5 + 6, 1, 0.84+a, 0.84+a );
setScaleKey( spep_5 + 8, 1, 0.81+a, 0.81+a );
setScaleKey( spep_5 + 10, 1, 0.79+a, 0.79+a );
setScaleKey( spep_5 + 12, 1, 0.76+a, 0.76+a );
setScaleKey( spep_5 + 14, 1, 0.74+a, 0.74+a );
setScaleKey( spep_5 + 16, 1, 0.72+a, 0.72+a );
setScaleKey( spep_5 + 18, 1, 0.71+a, 0.71+a );
setScaleKey( spep_5 + 20, 1, 0.7+a, 0.7+a );
setScaleKey( spep_5 + 22, 1, 0.7+a, 0.7+a );
setScaleKey( spep_5 + 24, 1, 0.69+a, 0.69+a );
setScaleKey( spep_5 + 26, 1, 0.68+a, 0.68+a );
setScaleKey( spep_5 + 28, 1, 0.68+a, 0.68+a );
setScaleKey( spep_5 + 30, 1, 0.67+a, 0.67+a );
setScaleKey( spep_5 + 32, 1, 0.66+a, 0.66+a );
setScaleKey( spep_5 + 34, 1, 0.66+a, 0.66+a );
setScaleKey( spep_5 + 36, 1, 0.65+a, 0.65+a );
setScaleKey( spep_5 + 38, 1, 0.64+a, 0.64+a );
setScaleKey( spep_5 + 40, 1, 0.64+a, 0.64+a );
setScaleKey( spep_5 + 42, 1, 0.63+a, 0.63+a );
setScaleKey( spep_5 + 44, 1, 0.63+a, 0.63+a );
setScaleKey( spep_5 + 46, 1, 0.62+a, 0.62+a );
setScaleKey( spep_5 + 48, 1, 0.61+a, 0.61+a );
setScaleKey( spep_5 + 50, 1, 0.61+a, 0.61+a );
setScaleKey( spep_5 + 52, 1, 0.6+a, 0.6+a );
setScaleKey( spep_5 + 54, 1, 0.59+a, 0.59+a );
setScaleKey( spep_5 + 56, 1, 0.59+a, 0.59+a );
setScaleKey( spep_5 + 58, 1, 0.58+a, 0.58+a );
setScaleKey( spep_5 + 60, 1, 0.57+a, 0.57+a );
setScaleKey( spep_5 + 62, 1, 0.57+a, 0.57+a );
setScaleKey( spep_5 + 64, 1, 0.56+a, 0.56+a );

setRotateKey( spep_5 + 0, 1, 33.5 );
setRotateKey( spep_5 + 64, 1, 33.5 );

--SE
--ベジータ気弾爆発
SE114 =playSe( spep_5 + 14 , 1023 );
setSeVolumeByWorkId( spep_5 + 14 , SE114 , 132 );
setTimeStretch( SE114, 0.51, 10, 1 );
SE115 =playSe( spep_5 + 22 , 1023 );
setSeVolumeByWorkId( spep_5 + 22 , SE115 , 168 );
setTimeStretch( SE115, 0.51, 10, 1 );
SE118 =playSe( spep_5 + 32 , 1024 );
setSeVolumeByWorkId( spep_5 + 32 , SE118 , 111 );

--かめはめ波弾道
SE116 =playSe( spep_5 + 24 , 1146 );
setSeVolumeByWorkId( spep_5 + 24 , SE116 , 0 );
SE117 =playSe( spep_5 + 24 , 1179 );

--ラスト爆発
SE119 =playSe( spep_5 + 68 , 1159 );
SE120 =playSe( spep_5 + 72 , 1188 );
SE121 =playSe( spep_5 + 114 , 1024 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 170, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 74 );
endPhase( spep_5 + 168 );

else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 冒頭〜悟空パンチまで
------------------------------------------------------
spep_0=0;
-- ** エフェクト等 ** --
pannti_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 );  
setEffMoveKey( spep_0 + 0, pannti_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 426, pannti_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, pannti_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 426, pannti_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, pannti_f, 0 );
setEffRotateKey( spep_0 + 426, pannti_f, 0 );
setEffAlphaKey( spep_0 + 0, pannti_f, 255 );
setEffAlphaKey( spep_0 + 426, pannti_f, 255 );
setEffAlphaKey( spep_0 + 427, pannti_f, 0 );
setEffAlphaKey( spep_0 + 428, pannti_f, 0 );

-- ** エフェクト等 ** --
pannti_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 );  
setEffMoveKey( spep_0 + 0, pannti_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 426, pannti_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, pannti_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 426, pannti_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, pannti_b, 0 );
setEffRotateKey( spep_0 + 426, pannti_b, 0 );
setEffAlphaKey( spep_0 + 0, pannti_b, 255 );
setEffAlphaKey( spep_0 + 426, pannti_b, 255 );
setEffAlphaKey( spep_0 + 427, pannti_b, 0 );
setEffAlphaKey( spep_0 + 428, pannti_b, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +12, 190006, 72, 0x100, -1, 0, 50, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +12,  ctgogo,  50,  510);
setEffMoveKey(  spep_0 +84,  ctgogo,  50,  510);

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
--顔カットイン
SE001 =playSe( spep_0 + 12 , 1018 );

--悟空押しのける
SE002 =playSe( spep_0 + 38 , 1007 );
setSeVolumeByWorkId( spep_0 + 38 , SE002 , 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 430, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 100; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE002, 0 );

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

--敵の動き
setDisp( spep_0-3 + 140, 1, 1);
setDisp( spep_0-1 + 228, 1, 0);

changeAnime( spep_0-3 + 140, 1, 108);

setMoveKey( spep_0-3 + 140, 1, 101.5, -11.2 , 0 );
setMoveKey( spep_0-3 + 142, 1, 77.1, -0.2 , 0 );
setMoveKey( spep_0-3 + 144, 1, 137.8, 10 , 0 );
setMoveKey( spep_0-3 + 146, 1, 128.9, -3.2 , 0 );
setMoveKey( spep_0-3 + 148, 1, 141.8, 18.3 , 0 );
setMoveKey( spep_0-3 + 150, 1, 130.3, -4.2 , 0 );
setMoveKey( spep_0-3 + 152, 1, 142.2, 17.3 , 0 );
setMoveKey( spep_0-3 + 154, 1, 123.6, 20.8 , 0 );
setMoveKey( spep_0-3 + 156, 1, 140.4, 16.2 , 0 );
setMoveKey( spep_0-3 + 158, 1, 136.6, 5.7 , 0 );
setMoveKey( spep_0-3 + 160, 1, 128.1, 11 , 0 );
setMoveKey( spep_0-3 + 162, 1, 106.6, 4.5 , 0 );
setMoveKey( spep_0-3 + 164, 1, 120, 16.3 , 0 );
setMoveKey( spep_0-3 + 166, 1, 115.9, 19.8 , 0 );
setMoveKey( spep_0-3 + 168, 1, 119.2, 12 , 0 );
setMoveKey( spep_0-3 + 170, 1, 115.2, 8.3 , 0 );
setMoveKey( spep_0-3 + 172, 1, 116.3, 11.7 , 0 );
setMoveKey( spep_0-3 + 174, 1, 112.6, 9.9 , 0 );
setMoveKey( spep_0-3 + 176, 1, 117.4, 11.5 , 0 );
setMoveKey( spep_0-3 + 178, 1, 113.6, 18.7 , 0 );
setMoveKey( spep_0-3 + 180, 1, 114.4, 11.2 , 0 );
setMoveKey( spep_0-3 + 182, 1, 156, 17.3 , 0 );
setMoveKey( spep_0-3 + 184, 1, 147.3, 11.5 , 0 );
setMoveKey( spep_0-3 + 186, 1, 138.7, 26.2 , 0 );
setMoveKey( spep_0-3 + 188, 1, 133.2, 9.2 , 0 );
setMoveKey( spep_0-3 + 190, 1, 142.9, 2.8 , 0 );
setMoveKey( spep_0-3 + 192, 1, 149.9, 12.9 , 0 );
setMoveKey( spep_0-3 + 194, 1, 138.6, 5.5 , 0 );
setMoveKey( spep_0-3 + 196, 1, 151.4, 7.2 , 0 );
setMoveKey( spep_0-3 + 198, 1, 149.8, 18.7 , 0 );
setMoveKey( spep_0-3 + 200, 1, 157, 13.5 , 0 );
setMoveKey( spep_0-3 + 202, 1, 153.3, 8.1 , 0 );
setMoveKey( spep_0-3 + 204, 1, 160.6, 13.8 , 0 );
setMoveKey( spep_0-3 + 206, 1, 153, 0.2 , 0 );
setMoveKey( spep_0-3 + 208, 1, 164.4, 14.1 , 0 );
setMoveKey( spep_0-3 + 210, 1, 152.6, 20 , 0 );
setMoveKey( spep_0-3 + 212, 1, 168.2, 14.4 , 0 );
setMoveKey( spep_0-3 + 214, 1, 162.3, 2.7 , 0 );
setMoveKey( spep_0-3 + 216, 1, 172.2, 14.7 , 0 );
setMoveKey( spep_0-3 + 218, 1, 162.2, 16.8 , 0 );
setMoveKey( spep_0-3 + 220, 1, 176.2, 15 , 0 );
setMoveKey( spep_0-3 + 222, 1, 168.1, 15.2 , 0 );
setMoveKey( spep_0-3 + 224, 1, 180.3, 15.3 , 0 );
setMoveKey( spep_0-3 + 226, 1, 172.2, 7.2 , 0 );
setMoveKey( spep_0-1 + 228, 1, 184.5, 15.6 , 0 );


a=0.3;

setScaleKey( spep_0-3 + 140, 1, 4.65+a, 4.65+a );
setScaleKey( spep_0-3 + 142, 1, 3.98+a, 3.98+a );
setScaleKey( spep_0-3 + 144, 1, 3.31+a, 3.31+a );
setScaleKey( spep_0-3 + 146, 1, 2.63+a, 2.63+a );
setScaleKey( spep_0-3 + 148, 1, 2.55+a, 2.55+a );
setScaleKey( spep_0-3 + 150, 1, 2.46+a, 2.46+a );
setScaleKey( spep_0-3 + 152, 1, 2.37+a, 2.37+a );
setScaleKey( spep_0-3 + 154, 1, 2.28+a, 2.28+a );
setScaleKey( spep_0-3 + 156, 1, 2.2+a, 2.2+a );
setScaleKey( spep_0-3 + 158, 1, 2.11+a, 2.11+a );
setScaleKey( spep_0-3 + 160, 1, 2.02+a, 2.02+a );
setScaleKey( spep_0-3 + 162, 1, 1.93+a, 1.93+a );
setScaleKey( spep_0-3 + 164, 1, 1.92+a, 1.92+a );
setScaleKey( spep_0-3 + 166, 1, 1.9+a, 1.9+a );
setScaleKey( spep_0-3 + 168, 1, 1.88+a, 1.88+a );
setScaleKey( spep_0-3 + 170, 1, 1.86+a, 1.86+a );
setScaleKey( spep_0-3 + 172, 1, 1.84+a, 1.84+a );
setScaleKey( spep_0-3 + 174, 1, 1.83+a, 1.83+a );
setScaleKey( spep_0-3 + 176, 1, 1.81+a, 1.81+a );
setScaleKey( spep_0-3 + 178, 1, 1.79+a, 1.79+a );
setScaleKey( spep_0-3 + 180, 1, 1.77+a, 1.77+a );
setScaleKey( spep_0-3 + 182, 1, 2.32+a, 2.32+a );
setScaleKey( spep_0-3 + 184, 1, 2.11+a, 2.11+a );
setScaleKey( spep_0-3 + 186, 1, 1.9+a, 1.9+a );
setScaleKey( spep_0-3 + 188, 1, 1.69+a, 1.69+a );
setScaleKey( spep_0-3 + 190, 1, 1.71+a, 1.71+a );
setScaleKey( spep_0-3 + 192, 1, 1.73+a, 1.73+a );
setScaleKey( spep_0-3 + 194, 1, 1.75+a, 1.75+a );
setScaleKey( spep_0-3 + 196, 1, 1.77+a, 1.77+a );
setScaleKey( spep_0-3 + 198, 1, 1.79+a, 1.79+a );
setScaleKey( spep_0-3 + 200, 1, 1.81+a, 1.81+a );
setScaleKey( spep_0-3 + 202, 1, 1.83+a, 1.83+a );
setScaleKey( spep_0-3 + 204, 1, 1.85+a, 1.85+a );
setScaleKey( spep_0-3 + 206, 1, 1.87+a, 1.87+a );
setScaleKey( spep_0-3 + 208, 1, 1.89+a, 1.89+a );
setScaleKey( spep_0-3 + 210, 1, 1.91+a, 1.91+a );
setScaleKey( spep_0-3 + 212, 1, 1.93+a, 1.93+a );
setScaleKey( spep_0-3 + 214, 1, 1.95+a, 1.95+a );
setScaleKey( spep_0-3 + 216, 1, 1.97+a, 1.97+a );
setScaleKey( spep_0-3 + 218, 1, 1.99+a, 1.99+a );
setScaleKey( spep_0-3 + 220, 1, 2.01+a, 2.01+a );
setScaleKey( spep_0-3 + 222, 1, 2.03+a, 2.03+a );
setScaleKey( spep_0-3 + 224, 1, 2.05+a, 2.05+a );
setScaleKey( spep_0-3 + 226, 1, 2.07+a, 2.07+a );
setScaleKey( spep_0-1 + 228, 1, 2.09+a, 2.09+a );

setRotateKey( spep_0-3 + 140, 1, 0 );
setRotateKey( spep_0-1 + 228, 1, 0 );

--敵の動き
setDisp( spep_0-3 + 376, 1, 1);
setDisp( spep_0-3 + 392, 1, 0);

changeAnime( spep_0-3 + 376, 1, 107);

setMoveKey( spep_0-3 + 376, 1, 92.9, -315.9 , 0 );
setMoveKey( spep_0-3 + 378, 1, 168.9, -421.5 , 0 );
setMoveKey( spep_0-3 + 380, 1, 224.9, -551.1 , 0 );
setMoveKey( spep_0-3 + 382, 1, 495.8, -942.7 , 0 );
setMoveKey( spep_0-3 + 384, 1, 738.7, -1318.3 , 0 );
setMoveKey( spep_0-3 + 386, 1, 1005.5, -1741.8 , 0 );
setMoveKey( spep_0-3 + 388, 1, 1256.2, -2161.3 , 0 );
setMoveKey( spep_0-3 + 390, 1, 1514.9, -2540.7 , 0 );
setMoveKey( spep_0-3 + 392, 1, 1761.5, -2944.1 , 0 );

setScaleKey( spep_0-3 + 376, 1, 1.28, 1.28 );
setScaleKey( spep_0-3 + 378, 1, 1.52, 1.52 );
setScaleKey( spep_0-3 + 380, 1, 1.76, 1.76 );
setScaleKey( spep_0-3 + 382, 1, 2.77, 2.77 );
setScaleKey( spep_0-3 + 384, 1, 3.77, 3.77 );
setScaleKey( spep_0-3 + 386, 1, 4.77, 4.77 );
setScaleKey( spep_0-3 + 388, 1, 5.78, 5.78 );
setScaleKey( spep_0-3 + 390, 1, 6.78, 6.78 );
setScaleKey( spep_0-3 + 392, 1, 7.78, 7.78 );

setRotateKey( spep_0-3 + 376, 1, 10.2 );
setRotateKey( spep_0-3 + 378, 1, 10.1 );
setRotateKey( spep_0-3 + 386, 1, 10.1 );
setRotateKey( spep_0-3 + 388, 1, 10.2 );
setRotateKey( spep_0-3 + 392, 1, 10.2 );

--文字エントリー
ctzun = entryEffectLife( spep_0-3 + 140,  10016, 14, 0x100, -1, 0, 14.3, 361.2 );--ズンッ
setEffShake( spep_0-3 + 140, ctzun, 14, 10 );
setEffMoveKey( spep_0-3 + 140, ctzun, 14.3, 361.2 , 0 );
setEffMoveKey( spep_0-3 + 142, ctzun, 14.5, 360.9 , 0 );
setEffMoveKey( spep_0-3 + 144, ctzun, 5.7, 367.6 , 0 );
setEffMoveKey( spep_0-3 + 146, ctzun, 14.9, 360.8 , 0 );
setEffMoveKey( spep_0-3 + 148, ctzun, 7.3, 366.3 , 0 );
setEffMoveKey( spep_0-3 + 150, ctzun, 14.7, 360.8 , 0 );
setEffMoveKey( spep_0-3 + 152, ctzun, 8.5, 365.3 , 0 );
setEffMoveKey( spep_0-3 + 154, ctzun, 9.2, 364.8 , 0 );

setEffScaleKey( spep_0-3 + 140, ctzun, 1.43, 1.43 );
setEffScaleKey( spep_0-3 + 142, ctzun, 4.17, 4.17 );
setEffScaleKey( spep_0-3 + 144, ctzun, 3.8, 3.8 );
setEffScaleKey( spep_0-3 + 146, ctzun, 3.42, 3.42 );
setEffScaleKey( spep_0-3 + 148, ctzun, 3.14, 3.14 );
setEffScaleKey( spep_0-3 + 150, ctzun, 2.86, 2.86 );
setEffScaleKey( spep_0-3 + 152, ctzun, 2.57, 2.57 );
setEffScaleKey( spep_0-3 + 154, ctzun, 2.29, 2.29 );

setEffRotateKey( spep_0-3 + 140, ctzun, -5.6 );
setEffRotateKey( spep_0-3 + 148, ctzun, -5.6 );
setEffRotateKey( spep_0-3 + 150, ctzun, -5.7 );
setEffRotateKey( spep_0-3 + 152, ctzun, -5.7 );
setEffRotateKey( spep_0-3 + 154, ctzun, -5.8 );

setEffAlphaKey( spep_0-3 + 140, ctzun, 255 );
setEffAlphaKey( spep_0-3 + 146, ctzun, 255 );
setEffAlphaKey( spep_0-3 + 148, ctzun, 239 );
setEffAlphaKey( spep_0-3 + 150, ctzun, 223 );
setEffAlphaKey( spep_0-3 + 152, ctzun, 207 );
setEffAlphaKey( spep_0-3 + 154, ctzun, 191 );

--文字エントリー
ctdogagaga = entryEffectLife( spep_0-3 + 160,  10017, 68+1, 0x100, -1, 0, 14.7, 326.3 );--ドガガガッ
setEffShake( spep_0-3 + 160, ctdogagaga, 68+1, 10 );
setEffMoveKey( spep_0-3 + 160, ctdogagaga, 14.7, 326.3 , 0 );
setEffMoveKey( spep_0-3 + 162, ctdogagaga, 2.9, 326.3 , 0 );
setEffMoveKey( spep_0-3 + 164, ctdogagaga, -0.1, 305.1 , 0 );
setEffMoveKey( spep_0-3 + 166, ctdogagaga, 1.8, 321.2 , 0 );
setEffMoveKey( spep_0-3 + 168, ctdogagaga, 13, 315.1 , 0 );
setEffMoveKey( spep_0-3 + 170, ctdogagaga, 19.6, 320.2 , 0 );
setEffMoveKey( spep_0-3 + 172, ctdogagaga, 15.7, 329.4 , 0 );
setEffMoveKey( spep_0-3 + 174, ctdogagaga, 19.6, 320.2 , 0 );
setEffMoveKey( spep_0-3 + 176, ctdogagaga, 15.7, 329.5 , 0 );
setEffMoveKey( spep_0-3 + 178, ctdogagaga, 19.6, 320.2 , 0 );
setEffMoveKey( spep_0-3 + 180, ctdogagaga, 15.7, 329.6 , 0 );
setEffMoveKey( spep_0-3 + 182, ctdogagaga, 19.6, 320.2 , 0 );
setEffMoveKey( spep_0-3 + 184, ctdogagaga, 15.6, 329.7 , 0 );
setEffMoveKey( spep_0-3 + 186, ctdogagaga, 19.6, 320.3 , 0 );
setEffMoveKey( spep_0-3 + 188, ctdogagaga, 15.6, 329.8 , 0 );
setEffMoveKey( spep_0-3 + 190, ctdogagaga, 19.6, 320.3 , 0 );
setEffMoveKey( spep_0-3 + 192, ctdogagaga, 15.5, 329.9 , 0 );
setEffMoveKey( spep_0-3 + 194, ctdogagaga, 19.6, 320.3 , 0 );
setEffMoveKey( spep_0-3 + 196, ctdogagaga, 15.5, 330 , 0 );
setEffMoveKey( spep_0-3 + 198, ctdogagaga, 19.6, 320.3 , 0 );
setEffMoveKey( spep_0-3 + 200, ctdogagaga, 15.5, 330.1 , 0 );
setEffMoveKey( spep_0-3 + 202, ctdogagaga, 19.6, 320.3 , 0 );
setEffMoveKey( spep_0-3 + 204, ctdogagaga, 15.4, 330.2 , 0 );
setEffMoveKey( spep_0-3 + 206, ctdogagaga, 19.6, 320.3 , 0 );
setEffMoveKey( spep_0-3 + 208, ctdogagaga, 15.4, 330.4 , 0 );
setEffMoveKey( spep_0-3 + 210, ctdogagaga, 19.6, 320.3 , 0 );
setEffMoveKey( spep_0-3 + 212, ctdogagaga, 15.4, 330.5 , 0 );
setEffMoveKey( spep_0-3 + 214, ctdogagaga, 19.6, 320.3 , 0 );
setEffMoveKey( spep_0-3 + 216, ctdogagaga, 15.3, 330.6 , 0 );
setEffMoveKey( spep_0-3 + 218, ctdogagaga, 19.6, 320.4 , 0 );
setEffMoveKey( spep_0-3 + 220, ctdogagaga, 15.3, 330.7 , 0 );
setEffMoveKey( spep_0-3 + 222, ctdogagaga, 19.6, 320.4 , 0 );
setEffMoveKey( spep_0-3 + 224, ctdogagaga, 15.3, 330.8 , 0 );
setEffMoveKey( spep_0-3 + 226, ctdogagaga, 19.6, 320.4 , 0 );
setEffMoveKey( spep_0-2 + 228, ctdogagaga, 15.2, 330.9 , 0 );

setEffScaleKey( spep_0-3 + 160, ctdogagaga, 2.35, 2.35 );
setEffScaleKey( spep_0-3 + 162, ctdogagaga, 2.72, 2.72 );
setEffScaleKey( spep_0-3 + 164, ctdogagaga, 3.09, 3.09 );
setEffScaleKey( spep_0-3 + 166, ctdogagaga, 2.83, 2.83 );
setEffScaleKey( spep_0-3 + 168, ctdogagaga, 2.58, 2.58 );
setEffScaleKey( spep_0-3 + 170, ctdogagaga, 2.32, 2.32 );
setEffScaleKey( spep_0-3 + 172, ctdogagaga, 2.33, 2.33 );
setEffScaleKey( spep_0-3 + 174, ctdogagaga, 2.35, 2.35 );
setEffScaleKey( spep_0-3 + 176, ctdogagaga, 2.36, 2.36 );
setEffScaleKey( spep_0-3 + 178, ctdogagaga, 2.37, 2.37 );
setEffScaleKey( spep_0-3 + 180, ctdogagaga, 2.38, 2.38 );
setEffScaleKey( spep_0-3 + 182, ctdogagaga, 2.4, 2.4 );
setEffScaleKey( spep_0-3 + 184, ctdogagaga, 2.41, 2.41 );
setEffScaleKey( spep_0-3 + 186, ctdogagaga, 2.42, 2.42 );
setEffScaleKey( spep_0-3 + 188, ctdogagaga, 2.43, 2.43 );
setEffScaleKey( spep_0-3 + 190, ctdogagaga, 2.45, 2.45 );
setEffScaleKey( spep_0-3 + 192, ctdogagaga, 2.46, 2.46 );
setEffScaleKey( spep_0-3 + 194, ctdogagaga, 2.47, 2.47 );
setEffScaleKey( spep_0-3 + 196, ctdogagaga, 2.48, 2.48 );
setEffScaleKey( spep_0-3 + 198, ctdogagaga, 2.5, 2.5 );
setEffScaleKey( spep_0-3 + 200, ctdogagaga, 2.51, 2.51 );
setEffScaleKey( spep_0-3 + 202, ctdogagaga, 2.52, 2.52 );
setEffScaleKey( spep_0-3 + 204, ctdogagaga, 2.53, 2.53 );
setEffScaleKey( spep_0-3 + 206, ctdogagaga, 2.55, 2.55 );
setEffScaleKey( spep_0-3 + 208, ctdogagaga, 2.56, 2.56 );
setEffScaleKey( spep_0-3 + 210, ctdogagaga, 2.57, 2.57 );
setEffScaleKey( spep_0-3 + 212, ctdogagaga, 2.58, 2.58 );
setEffScaleKey( spep_0-3 + 214, ctdogagaga, 2.6, 2.6 );
setEffScaleKey( spep_0-3 + 216, ctdogagaga, 2.61, 2.61 );
setEffScaleKey( spep_0-3 + 218, ctdogagaga, 2.62, 2.62 );
setEffScaleKey( spep_0-3 + 220, ctdogagaga, 2.63, 2.63 );
setEffScaleKey( spep_0-3 + 222, ctdogagaga, 2.65, 2.65 );
setEffScaleKey( spep_0-3 + 224, ctdogagaga, 2.66, 2.66 );
setEffScaleKey( spep_0-3 + 226, ctdogagaga, 2.67, 2.67 );
setEffScaleKey( spep_0-2 + 228, ctdogagaga, 2.68, 2.68 );

setEffRotateKey( spep_0-3 + 160, ctdogagaga, -2.4 );
setEffRotateKey( spep_0-2 + 228, ctdogagaga, -2.4 );

setEffAlphaKey( spep_0-3 + 160, ctdogagaga, 255 );
setEffAlphaKey( spep_0-2 + 228, ctdogagaga, 255 );

--文字エントリー
ctbago = entryEffectLife( spep_0-3 + 376,  10021, 32, 0x100, -1, 0, 165.4, 327.6 );--バゴォッ
setEffShake( spep_0-3 + 376, ctbago, 32, 10 );
setEffMoveKey( spep_0-3 + 376, ctbago, 165.4, 327.6 , 0 );
setEffMoveKey( spep_0-3 + 378, ctbago, 164.6, 327.1 , 0 );
setEffMoveKey( spep_0-3 + 380, ctbago, 165.4, 327.5 , 0 );
setEffMoveKey( spep_0-3 + 382, ctbago, 159.1, 354.1 , 0 );
setEffMoveKey( spep_0-3 + 384, ctbago, 165.4, 327.6 , 0 );
setEffMoveKey( spep_0-3 + 386, ctbago, 159.3, 353.5 , 0 );
setEffMoveKey( spep_0-3 + 388, ctbago, 165.5, 327.6 , 0 );
setEffMoveKey( spep_0-3 + 390, ctbago, 159.5, 353 , 0 );
setEffMoveKey( spep_0-3 + 392, ctbago, 165.5, 327.6 , 0 );
setEffMoveKey( spep_0-3 + 394, ctbago, 159.7, 352.4 , 0 );
setEffMoveKey( spep_0-3 + 396, ctbago, 165.6, 327.7 , 0 );
setEffMoveKey( spep_0-3 + 398, ctbago, 159.9, 351.8 , 0 );
setEffMoveKey( spep_0-3 + 400, ctbago, 165.6, 327.7 , 0 );
setEffMoveKey( spep_0-3 + 402, ctbago, 160.3, 350.3 , 0 );
setEffMoveKey( spep_0-3 + 404, ctbago, 165.6, 327.8 , 0 );
setEffMoveKey( spep_0-3 + 406, ctbago, 161, 347.7 , 0 );
setEffMoveKey( spep_0-3 + 408, ctbago, 161.4, 346.4 , 0 );

setEffScaleKey( spep_0-3 + 376, ctbago, 1.55, 1.55 );
setEffScaleKey( spep_0-3 + 378, ctbago, 4.28, 4.28 );
setEffScaleKey( spep_0-3 + 380, ctbago, 3.21, 3.21 );
setEffScaleKey( spep_0-3 + 382, ctbago, 3.17, 3.17 );
setEffScaleKey( spep_0-3 + 384, ctbago, 3.13, 3.13 );
setEffScaleKey( spep_0-3 + 386, ctbago, 3.1, 3.1 );
setEffScaleKey( spep_0-3 + 388, ctbago, 3.06, 3.06 );
setEffScaleKey( spep_0-3 + 390, ctbago, 3.03, 3.03 );
setEffScaleKey( spep_0-3 + 392, ctbago, 2.99, 2.99 );
setEffScaleKey( spep_0-3 + 394, ctbago, 2.96, 2.96 );
setEffScaleKey( spep_0-3 + 396, ctbago, 2.92, 2.92 );
setEffScaleKey( spep_0-3 + 398, ctbago, 2.88, 2.88 );
setEffScaleKey( spep_0-3 + 400, ctbago, 2.85, 2.85 );
setEffScaleKey( spep_0-3 + 402, ctbago, 2.69, 2.69 );
setEffScaleKey( spep_0-3 + 404, ctbago, 2.53, 2.53 );
setEffScaleKey( spep_0-3 + 406, ctbago, 2.37, 2.37 );
setEffScaleKey( spep_0-3 + 408, ctbago, 2.2, 2.2 );

setEffRotateKey( spep_0-3 + 376, ctbago, 22.3 );
setEffRotateKey( spep_0-3 + 408, ctbago, 22.3 );

setEffAlphaKey( spep_0-3 + 376, ctbago, 255 );
setEffAlphaKey( spep_0-3 + 400, ctbago, 255 );
setEffAlphaKey( spep_0-3 + 402, ctbago, 191 );
setEffAlphaKey( spep_0-3 + 404, ctbago, 128 );
setEffAlphaKey( spep_0-3 + 406, ctbago, 64 );
setEffAlphaKey( spep_0-3 + 408, ctbago, 0 );

--SE
--ベジータ前方ダッシュ
SE003 =playSe( spep_0 + 100 , 1182 );
SE004 =playSe( spep_0 + 100 , 1183 );
stopSe( spep_0 + 148, SE004, 12);
SE005 =playSe( spep_0 + 100 , 9 );
stopSe( spep_0 + 150, SE005, 8);

--横構図ラッシュ
SE006 =playSe( spep_0 -6 + 148 , 1025 );
setSeVolumeByWorkId( spep_0 -6 + 148 , SE006 , 50 );
stopSe( spep_0 -6 + 168, SE006, 14);
SE007 =playSe( spep_0 -6 + 148 , 1187 );
setSeVolumeByWorkId( spep_0 -6 + 148 , SE007 , 66 );
SE008 =playSe( spep_0 -6 + 150 , 1110 );
setSeVolumeByWorkId( spep_0 -6 + 150 , SE008 , 61 );
SE009 =playSe( spep_0 -6 + 162 , 1000 );
setSeVolumeByWorkId( spep_0 -6 + 162 , SE009 , 75 );
SE010 =playSe( spep_0 -6 + 162 , 1009 );
setSeVolumeByWorkId( spep_0 -6 + 162 , SE010 , 56 );
SE011 =playSe( spep_0 -6 + 164 , 1110 );
setSeVolumeByWorkId( spep_0 -6 + 164 , SE011 , 60 );
SE012 =playSe( spep_0 -6 + 172 , 1000 );
setSeVolumeByWorkId( spep_0 -6 + 172 , SE012 , 70 );
SE013 =playSe( spep_0 -6 + 174 , 1010 );
setSeVolumeByWorkId( spep_0 -6 + 174 , SE013 , 67 );
SE014 =playSe( spep_0 -6 + 174 , 1110 );
setSeVolumeByWorkId( spep_0 -6 + 174 , SE014 , 56 );
SE015 =playSe( spep_0 -6 + 180 , 1000 );
setSeVolumeByWorkId( spep_0 -6 + 180 , SE015 , 64 );
SE016 =playSe( spep_0 -6 + 180 , 1110 );
setSeVolumeByWorkId( spep_0 -6 + 180 , SE016 , 64 );
SE017 =playSe( spep_0 -6 + 180 , 1009 );
setSeVolumeByWorkId( spep_0 -6 + 180 , SE017 , 56 );
SE018 =playSe( spep_0 -6 + 188 , 1001 );
setSeVolumeByWorkId( spep_0 -6 + 188 , SE018 , 61 );
SE019 =playSe( spep_0 -6 + 188 , 1010 );
setSeVolumeByWorkId( spep_0 -6 + 188 , SE019 , 60 );
SE020 =playSe( spep_0 -6 + 188 , 1110 );
setSeVolumeByWorkId( spep_0 -6 + 188 , SE020 , 58 );
SE021 =playSe( spep_0 -6 + 194 , 1001 );
setSeVolumeByWorkId( spep_0 -6 + 194 , SE021 , 58 );
SE022 =playSe( spep_0 -6 + 194 , 1009 );
setSeVolumeByWorkId( spep_0 -6 + 194 , SE022 , 51 );
SE023 =playSe( spep_0 -6 + 198 , 1110 );
setSeVolumeByWorkId( spep_0 -6 + 198 , SE023 , 42 );
SE024 =playSe( spep_0 -6 + 202 , 1001 );
setSeVolumeByWorkId( spep_0 -6 + 202 , SE024 , 52 );
SE025 =playSe( spep_0 -6 + 202 , 1010 );
setSeVolumeByWorkId( spep_0 -6 + 202 , SE025 , 68 );
SE026 =playSe( spep_0 -6 + 204 , 1110 );
setSeVolumeByWorkId( spep_0 -6 + 204 , SE026 , 44 );
SE027 =playSe( spep_0 -6 + 220 , 1000 );
setSeVolumeByWorkId( spep_0 -6 + 220 , SE027 , 60 );
SE028 =playSe( spep_0 -6 + 222 , 1010 );
setSeVolumeByWorkId( spep_0 -6 + 222 , SE028 , 53 );
SE029 =playSe( spep_0 -6 + 224 , 1110 );
setSeVolumeByWorkId( spep_0 -6 + 224 , SE029 , 50 );

--正面構図ラッシュ
SE030 =playSe( spep_0 -2 + 230 , 1000 );
SE031 =playSe( spep_0 -2  + 230 , 1009 );
setSeVolumeByWorkId( spep_0 -2 + 230 , SE031 , 87 );
SE032 =playSe( spep_0 -2 + 232 , 1110 );
setSeVolumeByWorkId( spep_0 -2 + 232 , SE032 , 84 );
SE033 =playSe( spep_0 -2 + 234 , 1009 );
SE034 =playSe( spep_0 -2 + 236 , 1110 );
SE035 =playSe( spep_0 -2 + 236 , 1187 );
setSeVolumeByWorkId( spep_0 -2 + 236 , SE035 , 79 );
stopSe( spep_0 -2 + 243, SE035, 15);
SE036 =playSe( spep_0 -2 + 240 , 1110 );
setSeVolumeByWorkId( spep_0 -2 + 240 , SE036 , 115 );
SE037 =playSe( spep_0 -2 + 248 , 1182 );
stopSe( spep_0 -2 + 258, SE037, 4);
SE038 =playSe( spep_0 -2 + 248 , 1009 );
setSeVolumeByWorkId( spep_0 -2 + 248 , SE038 , 72 );
SE039 =playSe( spep_0 -2 + 250 , 1110 );
setSeVolumeByWorkId( spep_0 -2 + 250 , SE039 , 87 );
SE040 =playSe( spep_0 -2 + 250 , 1187 );
setSeVolumeByWorkId( spep_0 -2 + 250 , SE040 , 89 );
stopSe( spep_0 -2 + 258, SE040, 14);
SE041 =playSe( spep_0 -2 + 256 , 1110 );
setSeVolumeByWorkId( spep_0 -2 + 256 , SE041 , 110 );
SE042 =playSe( spep_0 -2 + 264 , 1182 );
stopSe( spep_0 -2 + 274, SE042, 4);
SE043 =playSe( spep_0 -2 + 264 , 1009 );
SE044 =playSe( spep_0 -2 + 264 , 1187 );
setSeVolumeByWorkId( spep_0 -2 + 264 , SE044 , 85 );
stopSe( spep_0 -2 + 270, SE044, 16);
SE045 =playSe( spep_0 -2 + 266 , 1110 );
SE046 =playSe( spep_0 -2 + 272 , 1110 );
setSeVolumeByWorkId( spep_0 -2 + 272 , SE046 , 122 );
SE047 =playSe( spep_0 -2 + 274 , 1187 );
setSeVolumeByWorkId( spep_0 -2 + 274 , SE047 , 86 );
stopSe( spep_0 -2 + 280, SE047, 16);
SE048 =playSe( spep_0 -2 + 286 , 1182 );
stopSe( spep_0 -2 + 296, SE048, 4);
SE049 =playSe( spep_0 -2 + 286 , 1009 );
SE050 =playSe( spep_0 -2 + 288 , 1110 );
SE051 =playSe( spep_0 -2 + 292 , 1110 );
setSeVolumeByWorkId( spep_0 -2 + 292 , SE051 , 114 );
SE052 =playSe( spep_0 -2 + 298 , 1182 );
stopSe( spep_0 -2 + 308, SE052, 4);
SE053 =playSe( spep_0 -2 + 298 , 1009 );
SE054 =playSe( spep_0 -2 + 298 , 1110 );
SE055 =playSe( spep_0 -2 + 298 , 1187 );
setSeVolumeByWorkId( spep_0 -2 + 298 , SE055 , 85 );
stopSe( spep_0 -2 + 306, SE055, 14);
SE056 =playSe( spep_0 -2 + 304 , 1009 );
SE057 =playSe( spep_0 -2 + 306 , 1110 );
SE058 =playSe( spep_0 -2 + 306 , 1187 );
stopSe( spep_0 -2 + 314, SE058, 14);

--悟空飛んでくる
SE059 =playSe( spep_0 -6 + 318 , 1182 );
SE060 =playSe( spep_0 -6 + 318 , 9 );
SE061 =playSe( spep_0 -6 + 318 , 1183 );
stopSe( spep_0 -6 + 380 , SE061, 0);

--悟空パンチ
SE062 =playSe( spep_0 -6 + 372 , 1003 );
SE063 =playSe( spep_0 -6 + 374 , 1120 );

--白フェード
entryFade( spep_0+136 , 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0+418 , 0, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 426;
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
entryFade( spep_1 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- ベジータ気弾〜悟空構え
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 );  
setEffMoveKey( spep_2 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 132, tame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_2 + 132, tame, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 132, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 132, tame, 255 );
setEffAlphaKey( spep_2 + 133, tame, 0 );
setEffAlphaKey( spep_2 + 134, tame, 0 );

--SE
--連続気弾１
SE065 =playSe( spep_2 +10 + 0 , 1016 );
SE066 =playSe( spep_2 +10 + 0 , 1027 );
setSeVolumeByWorkId( spep_2 +10 + 0 , SE066 , 47 );
setTimeStretch( SE066, 0.67, 10, 1 );
SE067 =playSe( spep_2 +10 + 0 , 1155 );
SE068 =playSe( spep_2 +10 + 6 , 1015 );
setSeVolumeByWorkId( spep_2 +10 + 6 , SE068 , 89 );

--連続気弾２
SE069 =playSe( spep_2 +10 + 16 , 1016 );
SE070 =playSe( spep_2 +10 + 16 , 1027 );
setSeVolumeByWorkId( spep_2 +10 + 16 , SE070 , 60 );
setTimeStretch( SE070, 0.67, 10, 1 );
SE071 =playSe( spep_2 +10 + 16 , 1155 );
SE072 =playSe( spep_2 +10 + 22 , 1015 );

--連続気弾３
SE073 =playSe( spep_2 +10 + 28 , 1016 );
SE074 =playSe( spep_2 +10 + 28 , 1027 );
setSeVolumeByWorkId( spep_2 +10 + 28 , SE074 , 47 );
setTimeStretch( SE074, 0.67, 10, 1 );
SE075 =playSe( spep_2 +10 + 28 , 1155 );
setSeVolumeByWorkId( spep_2 +10 + 28 , SE075 , 79 );
SE076 =playSe( spep_2 +10 + 32 , 1015 );

--連続気弾４
SE078 =playSe( spep_2 +10 + 44 , 1016 );
SE079 =playSe( spep_2 +10 + 44 , 1027 );
setSeVolumeByWorkId( spep_2 +10 + 44 , SE079 , 74 );
setTimeStretch( SE079, 1.25, 10, 1 );
SE080 =playSe( spep_2 +10 + 44 , 1155 );

--悟空かめはめ波溜め
SE081 =playSe( spep_2 +20 + 78 , 1209 );
stopSe( spep_2 +20 + 122, SE081, 18);
SE082 =playSe( spep_2 +20 + 78 , 1210 );
setTimeStretch( SE082, 0.63, 10, 1 );
stopSe( spep_2 +20 + 128, SE082, 8);
-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 140, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 132;
------------------------------------------------------
-- 敵に着弾集まる
------------------------------------------------------
-- ** エフェクト等 ** --
kidan_f = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 );  
setEffMoveKey( spep_3 + 0, kidan_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 70, kidan_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kidan_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 70, kidan_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kidan_f, 0 );
setEffRotateKey( spep_3 + 70, kidan_f, 0 );
setEffAlphaKey( spep_3 + 0, kidan_f, 255 );
setEffAlphaKey( spep_3 + 70, kidan_f, 255 );
setEffAlphaKey( spep_3 + 71, kidan_f, 0 );
setEffAlphaKey( spep_3 + 72, kidan_f, 0 );

-- ** エフェクト等 ** --
kidan_b = entryEffect( spep_3 + 0, SP_05x, 0x80, -1, 0, 0, 0 );  
setEffMoveKey( spep_3 + 0, kidan_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 70, kidan_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kidan_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 70, kidan_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kidan_b, 0 );
setEffRotateKey( spep_3 + 70, kidan_b, 0 );
setEffAlphaKey( spep_3 + 0, kidan_b, 255 );
setEffAlphaKey( spep_3 + 70, kidan_b, 255 );
setEffAlphaKey( spep_3 + 71, kidan_b, 0 );
setEffAlphaKey( spep_3 + 72, kidan_b, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 70, 1, 0 );

changeAnime( spep_3 + 0, 1, 5 );

setMoveKey( spep_3 + 0, 1, 1110.8, -1692.1 , 0 );
setMoveKey( spep_3 + 2, 1, 928.7, -1405.8 , 0 );
setMoveKey( spep_3 + 4, 1, 750.2, -1125.3 , 0 );
setMoveKey( spep_3 + 6, 1, 575.1, -850.6 , 0 );
setMoveKey( spep_3 + 8, 1, 403.6, -581.7 , 0 );
setMoveKey( spep_3 + 10, 1, 235.4, -318.5 , 0 );
setMoveKey( spep_3 + 12, 1, 70.7, -61.1 , 0 );
setMoveKey( spep_3 + 14, 1, 67.5, -60.4 , 0 );
setMoveKey( spep_3 + 16, 1, 64.4, -59.6 , 0 );
setMoveKey( spep_3 + 18, 1, 61.1, -58.9 , 0 );
setMoveKey( spep_3 + 20, 1, 58, -58.2 , 0 );
setMoveKey( spep_3 + 22, 1, 54.8, -57.5 , 0 );
setMoveKey( spep_3 + 24, 1, 51.8, -57 , 0 );
setMoveKey( spep_3 + 26, 1, 48.7, -56.4 , 0 );
setMoveKey( spep_3 + 28, 1, 45.6, -55.9 , 0 );
setMoveKey( spep_3 + 30, 1, 42.5, -55.3 , 0 );
setMoveKey( spep_3 + 32, 1, 39.5, -54.8 , 0 );
setMoveKey( spep_3 + 34, 1, 36.4, -54.3 , 0 );
setMoveKey( spep_3 + 36, 1, 33.4, -53.8 , 0 );
setMoveKey( spep_3 + 38, 1, 30.5, -53.6 , 0 );
setMoveKey( spep_3 + 40, 1, 27.5, -53.1 , 0 );
setMoveKey( spep_3 + 42, 1, 24.5, -52.8 , 0 );
setMoveKey( spep_3 + 44, 1, 21.6, -52.5 , 0 );
setMoveKey( spep_3 + 46, 1, 18.6, -52.2 , 0 );
setMoveKey( spep_3 + 48, 1, 15.8, -51.9 , 0 );
setMoveKey( spep_3 + 50, 1, 12.9, -51.7 , 0 );
setMoveKey( spep_3 + 52, 1, 10, -51.6 , 0 );
setMoveKey( spep_3 + 54, 1, 7.2, -51.3 , 0 );
setMoveKey( spep_3 + 56, 1, 4.4, -51.2 , 0 );
setMoveKey( spep_3 + 58, 1, 1.5, -51 , 0 );
setMoveKey( spep_3 + 60, 1, -1.3, -51 , 0 );
setMoveKey( spep_3 + 62, 1, -4, -50.9 , 0 );
setMoveKey( spep_3 + 64, 1, -6.8, -50.8 , 0 );
setMoveKey( spep_3 + 66, 1, -9.5, -50.7 , 0 );
setMoveKey( spep_3 + 68, 1, -12.2, -50.9 , 0 );
setMoveKey( spep_3 + 70, 1, -14.9, -50.9 , 0 );

setScaleKey( spep_3 + 0, 1, 26.39+a, 26.39+a );
setScaleKey( spep_3 + 2, 1, 21.94+a, 21.94+a );
setScaleKey( spep_3 + 4, 1, 17.57+a, 17.57+a );
setScaleKey( spep_3 + 6, 1, 13.29+a, 13.29+a );
setScaleKey( spep_3 + 8, 1, 9.1+a, 9.1+a );
setScaleKey( spep_3 + 10, 1, 5+a, 5+a );
setScaleKey( spep_3 + 12, 1, 0.98+a, 0.98+a );
setScaleKey( spep_3 + 14, 1, 0.95+a, 0.95+a );
setScaleKey( spep_3 + 16, 1, 0.92+a, 0.92+a );
setScaleKey( spep_3 + 18, 1, 0.89+a, 0.89+a );
setScaleKey( spep_3 + 20, 1, 0.86+a, 0.86+a );
setScaleKey( spep_3 + 22, 1, 0.83+a, 0.83+a );
setScaleKey( spep_3 + 24, 1, 0.8+a, 0.8+a );
setScaleKey( spep_3 + 26, 1, 0.77+a, 0.77+a );
setScaleKey( spep_3 + 28, 1, 0.74+a, 0.74+a );
setScaleKey( spep_3 + 30, 1, 0.71+a, 0.71+a );
setScaleKey( spep_3 + 32, 1, 0.69+a, 0.69+a );
setScaleKey( spep_3 + 34, 1, 0.66+a, 0.66+a );
setScaleKey( spep_3 + 36, 1, 0.63+a, 0.63+a );
setScaleKey( spep_3 + 38, 1, 0.61+a, 0.61+a );
setScaleKey( spep_3 + 40, 1, 0.58+a, 0.58+a );
setScaleKey( spep_3 + 42, 1, 0.56+a, 0.56+a );
setScaleKey( spep_3 + 44, 1, 0.53+a, 0.53+a );
setScaleKey( spep_3 + 46, 1, 0.51+a, 0.51+a );
setScaleKey( spep_3 + 48, 1, 0.48+a, 0.48+a );
setScaleKey( spep_3 + 50, 1, 0.46+a, 0.46+a );
setScaleKey( spep_3 + 52, 1, 0.44+a, 0.44+a );
setScaleKey( spep_3 + 54, 1, 0.41+a, 0.41+a );
setScaleKey( spep_3 + 56, 1, 0.39+a, 0.39+a );
setScaleKey( spep_3 + 58, 1, 0.37+a, 0.37+a );
setScaleKey( spep_3 + 60, 1, 0.35+a, 0.35+a );
setScaleKey( spep_3 + 62, 1, 0.33+a, 0.33+a );
setScaleKey( spep_3 + 64, 1, 0.31+a, 0.31+a );
setScaleKey( spep_3 + 66, 1, 0.29+a, 0.29+a );
setScaleKey( spep_3 + 68, 1, 0.27+a, 0.27+a );
setScaleKey( spep_3 + 70, 1, 0.25+a, 0.25+a );


setRotateKey( spep_3 + 0, 1, -33.5 );
setRotateKey( spep_3 + 2, 1, -33.5 );
setRotateKey( spep_3 + 4, 1, -33.4 );
setRotateKey( spep_3 + 54, 1, -33.4 );
setRotateKey( spep_3 + 56, 1, -33.5 );
setRotateKey( spep_3 + 70, 1, -33.5 );

--気弾広がる
SE083 =playSe( spep_3 + 0 , 1016 );
setSeVolumeByWorkId( spep_3 + 0 , SE083 , 62 );
SE084 =playSe( spep_3 + 0 , 1155 );
setSeVolumeByWorkId( spep_3 + 0 , SE084 , 72 );
SE085 =playSe( spep_3 + 6 , 1015 );
SE086 =playSe( spep_3 + 10 , 1016 );
setSeVolumeByWorkId( spep_3 + 10 , SE086 , 63 );
SE087 =playSe( spep_3 + 10 , 1155 );
setSeVolumeByWorkId( spep_3 + 10 , SE087 , 63 );
SE088 =playSe( spep_3 + 16 , 1015 );
SE089 =playSe( spep_3 + 20 , 1016 );
setSeVolumeByWorkId( spep_3 + 20 , SE089 , 60 );
SE090 =playSe( spep_3 + 20 , 1155 );
setSeVolumeByWorkId( spep_3 + 20 , SE090 , 79 );
SE091 =playSe( spep_3 + 24 , 1015 );
SE092 =playSe( spep_3 + 30 , 1016 );
setSeVolumeByWorkId( spep_3 + 30 , SE092 , 44 );
SE093 =playSe( spep_3 + 30 , 1155 );
setSeVolumeByWorkId( spep_3 + 30 , SE093 , 60 );
SE094 =playSe( spep_3 + 36 , 1016 );
setSeVolumeByWorkId( spep_3 + 36 , SE094 , 74 );
SE095 =playSe( spep_3 + 36 , 1155 );
setSeVolumeByWorkId( spep_3 + 36 , SE095 , 79 );
SE096 =playSe( spep_3 + 36 , 1202 );
setSeVolumeByWorkId( spep_3 + 36 , SE096 , 80 );
SE097 =playSe( spep_3 + 40 , 1015 );
setSeVolumeByWorkId( spep_3 + 40 , SE097 , 79 );
SE098 =playSe( spep_3 + 46 , 1016 );
setSeVolumeByWorkId( spep_3 + 46 , SE098 , 67 );
SE099 =playSe( spep_3 + 46 , 1155 );
setSeVolumeByWorkId( spep_3 + 46 , SE099 , 74 );
SE100 =playSe( spep_3 + 50 , 1015 );
setSeVolumeByWorkId( spep_3 + 50 , SE100 , 81 );
SE101 =playSe( spep_3 + 54 , 1016 );
setSeVolumeByWorkId( spep_3 + 54 , SE101 , 73 );
SE102 =playSe( spep_3 + 54 , 1155 );
setSeVolumeByWorkId( spep_3 + 54 , SE102 , 79 );
SE103 =playSe( spep_3 + 60 , 1015 );
setSeVolumeByWorkId( spep_3 + 60 , SE103 , 78 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 74, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 70;
------------------------------------------------------
-- ベジータ腕閉じ〜悟空発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_4 + 0, SP_06x, 0x100, -1, 0, 0, 0 );  
setEffMoveKey( spep_4 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_4 + 148, beam, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, beam, -1.0, 1.0 );
setEffScaleKey( spep_4 + 148, beam, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam, 0 );
setEffRotateKey( spep_4 + 148, beam, 0 );
setEffAlphaKey( spep_4 + 0, beam, 255 );
setEffAlphaKey( spep_4 + 146, beam, 255 );
setEffAlphaKey( spep_4 + 147, beam, 255 );
setEffAlphaKey( spep_4 + 148, beam, 0 );

--文字エントリー
ctba = entryEffectLife( spep_4-3 + 46,  10022, 34+1, 0x100, -1, 0, -20.3, 418.6 );--バッ
setEffShake( spep_4-3 + 46, ctba, 34+1, 10 );
setEffMoveKey( spep_4-3 + 46, ctba, -20.3, 418.6 , 0 );
setEffMoveKey( spep_4-3 + 48, ctba, -20.3, 418.6 , 0 );
setEffMoveKey( spep_4-3 + 50, ctba, -10.8, 427.7 , 0 );
setEffMoveKey( spep_4-3 + 52, ctba, -20.3, 418.6 , 0 );
setEffMoveKey( spep_4-3 + 54, ctba, -12.5, 426.1 , 0 );
setEffMoveKey( spep_4-3 + 56, ctba, -13.3, 425.3 , 0 );
setEffMoveKey( spep_4-3 + 58, ctba, -20.3, 418.6 , 0 );
setEffMoveKey( spep_4-3 + 60, ctba, -13.4, 425.2 , 0 );
setEffMoveKey( spep_4-3 + 62, ctba, -20.3, 418.6 , 0 );
setEffMoveKey( spep_4-3 + 64, ctba, -13.4, 425.2 , 0 );
setEffMoveKey( spep_4-3 + 66, ctba, -20.3, 418.6 , 0 );
setEffMoveKey( spep_4-3 + 68, ctba, -13.5, 425.1 , 0 );
setEffMoveKey( spep_4-3 + 70, ctba, -20.3, 418.6 , 0 );
setEffMoveKey( spep_4-3 + 72, ctba, -13.5, 425.1 , 0 );
setEffMoveKey( spep_4-3 + 74, ctba, -20.3, 418.6 , 0 );
setEffMoveKey( spep_4-3 + 76, ctba, -13.6, 425 , 0 );
setEffMoveKey( spep_4-2 + 80, ctba, -20.3, 418.6 , 0 );

setEffScaleKey( spep_4-3 + 46, ctba, 0.75, 0.75 );
setEffScaleKey( spep_4-3 + 48, ctba, 3.11, 3.11 );
setEffScaleKey( spep_4-3 + 50, ctba, 2.86, 2.86 );
setEffScaleKey( spep_4-3 + 52, ctba, 2.6, 2.6 );
setEffScaleKey( spep_4-3 + 54, ctba, 2.35, 2.35 );
setEffScaleKey( spep_4-3 + 56, ctba, 2.1, 2.1 );
setEffScaleKey( spep_4-3 + 58, ctba, 2.09, 2.09 );
setEffScaleKey( spep_4-3 + 60, ctba, 2.08, 2.08 );
setEffScaleKey( spep_4-3 + 62, ctba, 2.07, 2.07 );
setEffScaleKey( spep_4-3 + 64, ctba, 2.07, 2.07 );
setEffScaleKey( spep_4-3 + 66, ctba, 2.06, 2.06 );
setEffScaleKey( spep_4-3 + 68, ctba, 2.05, 2.05 );
setEffScaleKey( spep_4-3 + 70, ctba, 2.04, 2.04 );
setEffScaleKey( spep_4-3 + 72, ctba, 2.04, 2.04 );
setEffScaleKey( spep_4-3 + 74, ctba, 2.03, 2.03 );
setEffScaleKey( spep_4-3 + 76, ctba, 2.02, 2.02 );
setEffScaleKey( spep_4-2 + 80, ctba, 2.01, 2.01 );

setEffRotateKey( spep_4-3 + 46, ctba, 5.7 );
setEffRotateKey( spep_4-3 + 62, ctba, 5.7 );
setEffRotateKey( spep_4-3 + 64, ctba, 5.6 );
setEffRotateKey( spep_4-2 + 80, ctba, 5.6 );

setEffAlphaKey( spep_4-3 + 46, ctba, 255 );
setEffAlphaKey( spep_4-2 + 80, ctba, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_4-3 + 110,  10012, 32, 0x100, -1, 0, 72.6, 346.9 );--ズオッ
setEffShake( spep_4-3 + 110, ctzuo, 32, 10 );
setEffMoveKey( spep_4-3 + 110, ctzuo, 72.6, 346.9 , 0 );
setEffMoveKey( spep_4-3 + 112, ctzuo, 57.2, 393.9 , 0 );
setEffMoveKey( spep_4-3 + 114, ctzuo, 69.4, 439.8 , 0 );
setEffMoveKey( spep_4-3 + 116, ctzuo, 46.9, 437.8 , 0 );
setEffMoveKey( spep_4-3 + 118, ctzuo, 69.4, 439.8 , 0 );
setEffMoveKey( spep_4-3 + 120, ctzuo, 46.9, 437.8 , 0 );
setEffMoveKey( spep_4-3 + 122, ctzuo, 69.4, 439.8 , 0 );
setEffMoveKey( spep_4-3 + 124, ctzuo, 46.9, 437.8 , 0 );
setEffMoveKey( spep_4-3 + 126, ctzuo, 69.4, 439.8 , 0 );
setEffMoveKey( spep_4-3 + 128, ctzuo, 46.9, 437.8 , 0 );
setEffMoveKey( spep_4-3 + 130, ctzuo, 69.4, 439.8 , 0 );
setEffMoveKey( spep_4-3 + 132, ctzuo, 46.9, 437.8 , 0 );
setEffMoveKey( spep_4-3 + 134, ctzuo, 67.8, 437.2 , 0 );
setEffMoveKey( spep_4-3 + 136, ctzuo, 30.3, 431.4 , 0 );
setEffMoveKey( spep_4-3 + 138, ctzuo, 64.8, 432.2 , 0 );
setEffMoveKey( spep_4-3 + 140, ctzuo, 13.7, 425.2 , 0 );
setEffMoveKey( spep_4-3 + 142, ctzuo, 5.5, 422 , 0 );

setEffScaleKey( spep_4-3 + 110, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_4-3 + 112, ctzuo, 1.54, 1.54 );
setEffScaleKey( spep_4-3 + 114, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_4-3 + 132, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_4-3 + 134, ctzuo, 3.55, 3.55 );
setEffScaleKey( spep_4-3 + 136, ctzuo, 4.37, 4.37 );
setEffScaleKey( spep_4-3 + 138, ctzuo, 5.19, 5.19 );
setEffScaleKey( spep_4-3 + 140, ctzuo, 6.01, 6.01 );
setEffScaleKey( spep_4-3 + 142, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_4-3 + 110, ctzuo, 30.1 );
setEffRotateKey( spep_4-3 + 112, ctzuo, 21.4 );
setEffRotateKey( spep_4-3 + 114, ctzuo, 12.5 );
setEffRotateKey( spep_4-3 + 142, ctzuo, 12.5 );

setEffAlphaKey( spep_4-3 + 110, ctzuo, 255 );
setEffAlphaKey( spep_4-3 + 132, ctzuo, 255 );
setEffAlphaKey( spep_4-3 + 134, ctzuo, 204 );
setEffAlphaKey( spep_4-3 + 136, ctzuo, 153 );
setEffAlphaKey( spep_4-3 + 138, ctzuo, 102 );
setEffAlphaKey( spep_4-3 + 140, ctzuo, 51 );
setEffAlphaKey( spep_4-3 + 142, ctzuo, 0 );

--SE
--悟空かめはめ波溜め続き
SE077 =playSe( spep_4 -14 + 96 , 1210 );
setSeVolumeByWorkId( spep_4 -14 + 96 , SE077 , 0 );
setStartTimeMs( SE077,  3900 );

setSeVolumeByWorkId( spep_4 -14 + 96 , SE077 , 11 );
setSeVolumeByWorkId( spep_4 -14 + 97 , SE077 , 22 );
setSeVolumeByWorkId( spep_4 -14 + 98 , SE077 , 33);
setSeVolumeByWorkId( spep_4 -14 + 99 , SE077 , 44 );
setSeVolumeByWorkId( spep_4 -14 + 100 , SE077 , 55 );
setSeVolumeByWorkId( spep_4 -14 + 101 , SE077 , 66 );
setSeVolumeByWorkId( spep_4 -14 + 102 , SE077 , 77 );
setSeVolumeByWorkId( spep_4 -14 + 103 , SE077 , 88 );
setSeVolumeByWorkId( spep_4 -14 + 104 , SE077 , 100 );
stopSe( spep_4 -14 + 136, SE077, 4);

--ベジータ気弾爆発させる
SE104 =playSe( spep_4-14 + 14 , 1147 );
setSeVolumeByWorkId( spep_4-14 + 14 , SE104 , 80 );
stopSe( spep_4-14 + 106, SE104, 10);

--ベジータフレームイン
SE105 =playSe( spep_4-14 + 20 , 1004 );

--ベジータ気弾爆発させる
SE106 =playSe( spep_4-14 + 46 , 1243 );
stopSe( spep_4-14 + 96, SE106, 14);
SE107 =playSe( spep_4-14 + 58 , 1231 );
setSeVolumeByWorkId( spep_4-14 + 58 , SE107 , 162 );
SE108 =playSe( spep_4-14 + 62 , 1003 );
SE109 =playSe( spep_4-14 + 64 , 1007 );
setSeVolumeByWorkId( spep_4-14 + 64 , SE109 , 79 );

--かめはめ波発射
SE110 =playSe( spep_4 + 112 , 1027 );
SE111 =playSe( spep_4 + 112 , 1022 );
setSeVolumeByWorkId( spep_4 + 112 , SE110 , 60 );
SE112 =playSe( spep_4 + 112 , 1133 );
setSeVolumeByWorkId( spep_4 + 112 , SE111 , 114 );
SE113 =playSe( spep_4 + 112 , 1177 );
setSeVolumeByWorkId( spep_4 + 112 , SE112 , 69 );

--白フェード
entryFade( spep_4+106 , 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 159, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 148;


------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_07x, 0x100, -1, 0, 0, 0 );  
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 178, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 178, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 178, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 178, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_5 + 0, SP_08x, 0x80, -1, 0, 0, 0 );  
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 178, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_5 + 178, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 178, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 178, finish_b, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 64, 1, 1 );

changeAnime( spep_5 + 0, 1, 5 );

setMoveKey( spep_5 + 0, 1, -15.4, -24.6 , 0 );
setMoveKey( spep_5 + 2, 1, -17.8, -27.9 , 0 );
setMoveKey( spep_5 + 4, 1, -20.1, -31.1 , 0 );
setMoveKey( spep_5 + 6, 1, -22.4, -34.3 , 0 );
setMoveKey( spep_5 + 8, 1, -24.7, -37.6 , 0 );
setMoveKey( spep_5 + 10, 1, -26.9, -40.9 , 0 );
setMoveKey( spep_5 + 12, 1, -29.1, -44.2 , 0 );
setMoveKey( spep_5 + 14, 1, -31.2, -47.5 , 0 );
setMoveKey( spep_5 + 16, 1, -33.4, -50.8 , 0 );
setMoveKey( spep_5 + 18, 1, -29.9, -74.4 , 0 );
setMoveKey( spep_5 + 20, 1, -34.4, -50 , 0 );
setMoveKey( spep_5 + 22, 1, -14.8, -53.5 , 0 );
setMoveKey( spep_5 + 24, 1, -35.3, -49.1 , 0 );
setMoveKey( spep_5 + 26, 1, -31.8, -56.7 , 0 );
setMoveKey( spep_5 + 28, 1, -36.2, -48.3 , 0 );
setMoveKey( spep_5 + 30, 1, -16.7, -23.9 , 0 );
setMoveKey( spep_5 + 32, 1, -37.1, -47.5 , 0 );
setMoveKey( spep_5 + 34, 1, -33.6, -67.1 , 0 );
setMoveKey( spep_5 + 36, 1, -38.1, -46.7 , 0 );
setMoveKey( spep_5 + 38, 1, -18.5, -54.3 , 0 );
setMoveKey( spep_5 + 40, 1, -39, -45.9 , 0 );
setMoveKey( spep_5 + 42, 1, -35.5, -61.4 , 0 );
setMoveKey( spep_5 + 44, 1, -39.9, -45 , 0 );
setMoveKey( spep_5 + 46, 1, -32.4, -36.6 , 0 );
setMoveKey( spep_5 + 48, 1, -40.9, -44.2 , 0 );
setMoveKey( spep_5 + 50, 1, -41.3, -43.8 , 0 );
setMoveKey( spep_5 + 52, 1, -41.8, -43.4 , 0 );
setMoveKey( spep_5 + 54, 1, -42.2, -43 , 0 );
setMoveKey( spep_5 + 56, 1, -42.7, -42.6 , 0 );
setMoveKey( spep_5 + 58, 1, -43.2, -42.2 , 0 );
setMoveKey( spep_5 + 60, 1, -43.6, -41.8 , 0 );
setMoveKey( spep_5 + 62, 1, -44.1, -41.4 , 0 );
setMoveKey( spep_5 + 64, 1, -44.6, -40.9 , 0 );

setScaleKey( spep_5 + 0, 1, 0.92+a, 0.92+a );
setScaleKey( spep_5 + 2, 1, 0.89+a, 0.89+a );
setScaleKey( spep_5 + 4, 1, 0.87+a, 0.87+a );
setScaleKey( spep_5 + 6, 1, 0.84+a, 0.84+a );
setScaleKey( spep_5 + 8, 1, 0.81+a, 0.81+a );
setScaleKey( spep_5 + 10, 1, 0.79+a, 0.79+a );
setScaleKey( spep_5 + 12, 1, 0.76+a, 0.76+a );
setScaleKey( spep_5 + 14, 1, 0.74+a, 0.74+a );
setScaleKey( spep_5 + 16, 1, 0.72+a, 0.72+a );
setScaleKey( spep_5 + 18, 1, 0.71+a, 0.71+a );
setScaleKey( spep_5 + 20, 1, 0.7+a, 0.7+a );
setScaleKey( spep_5 + 22, 1, 0.7+a, 0.7+a );
setScaleKey( spep_5 + 24, 1, 0.69+a, 0.69+a );
setScaleKey( spep_5 + 26, 1, 0.68+a, 0.68+a );
setScaleKey( spep_5 + 28, 1, 0.68+a, 0.68+a );
setScaleKey( spep_5 + 30, 1, 0.67+a, 0.67+a );
setScaleKey( spep_5 + 32, 1, 0.66+a, 0.66+a );
setScaleKey( spep_5 + 34, 1, 0.66+a, 0.66+a );
setScaleKey( spep_5 + 36, 1, 0.65+a, 0.65+a );
setScaleKey( spep_5 + 38, 1, 0.64+a, 0.64+a );
setScaleKey( spep_5 + 40, 1, 0.64+a, 0.64+a );
setScaleKey( spep_5 + 42, 1, 0.63+a, 0.63+a );
setScaleKey( spep_5 + 44, 1, 0.63+a, 0.63+a );
setScaleKey( spep_5 + 46, 1, 0.62+a, 0.62+a );
setScaleKey( spep_5 + 48, 1, 0.61+a, 0.61+a );
setScaleKey( spep_5 + 50, 1, 0.61+a, 0.61+a );
setScaleKey( spep_5 + 52, 1, 0.6+a, 0.6+a );
setScaleKey( spep_5 + 54, 1, 0.59+a, 0.59+a );
setScaleKey( spep_5 + 56, 1, 0.59+a, 0.59+a );
setScaleKey( spep_5 + 58, 1, 0.58+a, 0.58+a );
setScaleKey( spep_5 + 60, 1, 0.57+a, 0.57+a );
setScaleKey( spep_5 + 62, 1, 0.57+a, 0.57+a );
setScaleKey( spep_5 + 64, 1, 0.56+a, 0.56+a );

setRotateKey( spep_5 + 0, 1, -33.5 );
setRotateKey( spep_5 + 64, 1, -33.5 );

--SE
--ベジータ気弾爆発
SE114 =playSe( spep_5 + 14 , 1023 );
setSeVolumeByWorkId( spep_5 + 14 , SE114 , 132 );
setTimeStretch( SE114, 0.51, 10, 1 );
SE115 =playSe( spep_5 + 22 , 1023 );
setSeVolumeByWorkId( spep_5 + 22 , SE115 , 168 );
setTimeStretch( SE115, 0.51, 10, 1 );
SE118 =playSe( spep_5 + 32 , 1024 );
setSeVolumeByWorkId( spep_5 + 32 , SE118 , 111 );

--かめはめ波弾道
SE116 =playSe( spep_5 + 24 , 1146 );
setSeVolumeByWorkId( spep_5 + 24 , SE116 , 0 );
SE117 =playSe( spep_5 + 24 , 1179 );

--ラスト爆発
SE119 =playSe( spep_5 + 68 , 1159 );
SE120 =playSe( spep_5 + 72 , 1188 );
SE121 =playSe( spep_5 + 114 , 1024 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 170, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 74 );
endPhase( spep_5 + 168 );

end
