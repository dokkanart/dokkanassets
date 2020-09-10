--1019910:ジレン(フルパワー)_オメガヒート・マグネトロン
--sp_effect_b4_00150

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
SP_01=	155752	;--	構え〜殴り：手前
SP_02=	155753	;--	構え〜殴り：奥
SP_03=	155754	;--	腕溜め〜炎
SP_04=	155755	;--	ジャンプ〜ビーム〜爆発
SP_05=	155756	;--	KO

--エフェクト(てき)
SP_01x=	155752	;--	構え〜殴り：手前	
SP_02x=	155753	;--	構え〜殴り：奥	
SP_03x=	155757	;--	腕溜め〜炎	(敵)
SP_04x=	155758	;--	ジャンプ〜ビーム〜爆発	(敵)
SP_05x=	155759	;--	KO	(敵)

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
fighting_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 256, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 256, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, fighting_f, 0 );
setEffRotateKey( spep_0 + 256, fighting_f, 0 );
setEffAlphaKey( spep_0 + 0, fighting_f, 255 );
setEffAlphaKey( spep_0 + 256, fighting_f, 255 );
setEffAlphaKey( spep_0 + 257, fighting_f, 0 );
setEffAlphaKey( spep_0 + 258, fighting_f, 0 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 256, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 256, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, fighting_b, 0 );
setEffRotateKey( spep_0 + 256, fighting_b, 0 );
setEffAlphaKey( spep_0 + 0, fighting_b, 255 );
setEffAlphaKey( spep_0 + 256, fighting_b, 255 );
setEffAlphaKey( spep_0 + 257, fighting_b, 0 );
setEffAlphaKey( spep_0 + 258, fighting_b, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+6  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0+6  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +18, 190006, 72, 0x102, -1, 0, 0, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +18,  ctgogo,  0,  510);
setEffMoveKey(  spep_0 +90,  ctgogo,  0,  510);

setEffAlphaKey( spep_0 +18, ctgogo, 0 );
setEffAlphaKey( spep_0 + 19, ctgogo, 255 );
setEffAlphaKey( spep_0 + 20, ctgogo, 255 );
setEffAlphaKey( spep_0 + 84, ctgogo, 255 );
setEffAlphaKey( spep_0 + 86, ctgogo, 191 );
setEffAlphaKey( spep_0 + 88, ctgogo, 112 );
setEffAlphaKey( spep_0 + 90, ctgogo, 64 );

setEffRotateKey(  spep_0 +18,  ctgogo,  0);
setEffRotateKey(  spep_0 +90,  ctgogo,  0);

setEffScaleKey(  spep_0 +18,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +80,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +90,  ctgogo, 1.07, 1.07 );

--敵の動き
setDisp( spep_0-3 + 166, 1, 1);

changeAnime( spep_0-3 + 166, 1, 102);

setMoveKey( spep_0-3 + 166, 1, 112.3, -188.6 , 0 );
setMoveKey( spep_0-3 + 180, 1, 112.3, -188.6 , 0 );

setScaleKey( spep_0-3 + 166, 1, 2.54, 2.54 );
setScaleKey( spep_0-3 + 180, 1, 2.54, 2.54 );

setRotateKey( spep_0-3 + 166, 1, 0 );
setRotateKey( spep_0-3 + 180, 1, 0 );

--SE
se_1044 = playSe( spep_0 + 0, 1044 );--地響き
setSeVolume( spep_0 + 0, 1044, 54 );
playSe( spep_0 + 18, 1018 );--セリフカットイン
SE7=playSe( spep_0 + 52, 8 );--カメラズームアウト
playSe( spep_0 + 52, 1167 );--カメラズームアウト
setSeVolume( spep_0 + 52, 1167, 50 );
SE0=playSe( spep_0 + 58, 1160 );--後ろ連続爆発
setSeVolume( spep_0 + 58, 1160, 63 );
SE2=playSe( spep_0 + 68, 1023 );--後ろ連続爆発
setSeVolume( spep_0 + 86, 1023, 88 );
SE3=playSe( spep_0 + 86, 1023 );--後ろ連続爆発
SE4=playSe( spep_0 + 108, 1023 );--後ろ連続爆発
setSeVolume( spep_0 + 108, 1023, 60 );
SE5=playSe( spep_0 + 120, 1023 );--後ろ連続爆発
SE6=playSe( spep_0 + 146, 1245 );--瞬間移動
setSeVolume( spep_0 + 146, 1245, 76 );

stopSe( spep_0 + 100, SE7, 10 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 258, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 180; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
    stopSe( SP_dodge - 12, SE2, 0 );
    stopSe( SP_dodge - 12, SE3, 0 );
    stopSe( SP_dodge - 12, SE4, 0 );
    stopSe( SP_dodge - 12, SE5, 0 );
    stopSe( SP_dodge - 12, SE6, 0 );
    stopSe( SP_dodge - 12, se_1044, 0 );

    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    --敵座標の固定
    setMoveKey( SP_dodge + 9, 1, 112.3, -188.6 , 0 );
    setScaleKey( SP_dodge + 9, 1, 2.54, 2.54 );
    setRotateKey( SP_dodge + 9, 1, 0 );


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
setDisp( spep_0-3 + 206, 1, 0);

changeAnime( spep_0-3 + 200, 1, 107);

setMoveKey( spep_0-3 + 198, 1, 112.3, -188.6 , 0 );
setMoveKey( spep_0-3 + 199, 1, 112.3, -188.6 , 0 );

setMoveKey( spep_0-3 + 200, 1, -10.4, -343.8 , 0 );
setMoveKey( spep_0-3 + 202, 1, -93.8, -962.5 , 0 );
setMoveKey( spep_0-3 + 204, 1, -177.5, -1489.4 , 0 );
setMoveKey( spep_0-3 + 206, 1, -237, -1979.1 , 0 );

setScaleKey( spep_0-3 + 198, 1, 2.54, 2.54 );
setScaleKey( spep_0-3 + 199, 1, 2.54, 2.54 );

setScaleKey( spep_0-3 + 200, 1, 1.33, 1.33 );
setScaleKey( spep_0-3 + 202, 1, 1.39, 1.39 );
setScaleKey( spep_0-3 + 204, 1, 1.46, 1.46 );
setScaleKey( spep_0-3 + 206, 1, 1.53, 1.53 );

setRotateKey( spep_0-3 + 198, 1, 0 );
setRotateKey( spep_0-3 + 199, 1, 0 );

setRotateKey( spep_0-3 + 200, 1, 26.7 );
setRotateKey( spep_0-3 + 206, 1, 26.7 );

--文字エントリー
ctbago = entryEffectLife( spep_0-3 + 200,  10021, 30, 0x100, -1, 0, 133.6, 442.3 );--バゴォッ
setEffShake( spep_0-3 + 200, ctbago, 30, 10 );
setEffMoveKey( spep_0-3 + 200, ctbago, 133.6, 442.3 , 0 );
setEffMoveKey( spep_0-3 + 202, ctbago, 132.9, 441.9 , 0 );
setEffMoveKey( spep_0-3 + 204, ctbago, 133.6, 442.3 , 0 );
setEffMoveKey( spep_0-3 + 206, ctbago, 126.5, 465.7 , 0 );
setEffMoveKey( spep_0-3 + 208, ctbago, 133.6, 442.3 , 0 );
setEffMoveKey( spep_0-3 + 210, ctbago, 126.7, 465.1 , 0 );
setEffMoveKey( spep_0-3 + 212, ctbago, 133.6, 442.3 , 0 );
setEffMoveKey( spep_0-3 + 214, ctbago, 126.9, 464.5 , 0 );
setEffMoveKey( spep_0-3 + 216, ctbago, 133.6, 442.3 , 0 );
setEffMoveKey( spep_0-3 + 218, ctbago, 127.1, 464 , 0 );
setEffMoveKey( spep_0-3 + 220, ctbago, 133.7, 442.4 , 0 );
setEffMoveKey( spep_0-3 + 222, ctbago, 133.7, 442.4 , 0 );
setEffMoveKey( spep_0-3 + 224, ctbago, 127.3, 463.4 , 0 );
setEffMoveKey( spep_0-3 + 226, ctbago, 133.7, 442.4 , 0 );
setEffMoveKey( spep_0-3 + 230, ctbago, 127.3, 463.4 , 0 );

setEffScaleKey( spep_0-3 + 200, ctbago, 1.39, 1.39 );
setEffScaleKey( spep_0-3 + 202, ctbago, 3.85, 3.85 );
setEffScaleKey( spep_0-3 + 204, ctbago, 2.88, 2.88 );
setEffScaleKey( spep_0-3 + 206, ctbago, 2.84, 2.84 );
setEffScaleKey( spep_0-3 + 208, ctbago, 2.81, 2.81 );
setEffScaleKey( spep_0-3 + 210, ctbago, 2.77, 2.77 );
setEffScaleKey( spep_0-3 + 212, ctbago, 2.74, 2.74 );
setEffScaleKey( spep_0-3 + 214, ctbago, 2.7, 2.7 );
setEffScaleKey( spep_0-3 + 216, ctbago, 2.66, 2.66 );
setEffScaleKey( spep_0-3 + 218, ctbago, 2.63, 2.63 );
setEffScaleKey( spep_0-3 + 220, ctbago, 2.59, 2.59 );
setEffScaleKey( spep_0-3 + 222, ctbago, 2.56, 2.56 );
setEffScaleKey( spep_0-3 + 230, ctbago, 2.56, 2.56 );

setEffRotateKey( spep_0-3 + 200, ctbago, 18.8 );
setEffRotateKey( spep_0-3 + 230, ctbago, 18.8 );

setEffAlphaKey( spep_0-3 + 200, ctbago, 255 );
setEffAlphaKey( spep_0-3 + 222, ctbago, 255 );
setEffAlphaKey( spep_0-3 + 224, ctbago, 191 );
setEffAlphaKey( spep_0-3 + 226, ctbago, 128 );
setEffAlphaKey( spep_0-3 + 228, ctbago, 64 );
setEffAlphaKey( spep_0-3 + 230, ctbago, 0 );

--SE
playSe( spep_0 + 172, 1245 );--瞬間移動
playSe( spep_0 + 172, 1109 );--瞬間移動
setSeVolume( spep_0 + 172, 1109, 89 );
playSe( spep_0 + 192, 1004 );--重い一撃
playSe( spep_0 + 198, 1009 );--重い一撃
setSeVolume( spep_0 + 198, 1009, 92 );
playSe( spep_0 + 202, 1000 );--重い一撃
playSe( spep_0 + 204, 1187 );--重い一撃
playSe( spep_0 + 206, 1182 );--重い一撃
setSeVolume( spep_0 + 206, 1182, 133 );

stopSe( spep_0 + 174, se_1044, 0 );

-- ** 次の準備 ** --
spep_1=spep_0+256;

------------------------------------------------------
-- 腕溜め〜炎
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_1 + 230, tame, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_1 + 230, tame, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 230, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 230, tame, 255 );

--SE
se_11161 = playSe( spep_1 + 0, 1116 );--腕振り上げる
playSe( spep_1 + 6, 1232 );--腕振り上げる
se_1146 = playSe( spep_1 + 12, 1146 );--握りしめる
setSeVolume( spep_1 + 12, 1146, 0 );
setSeVolume( spep_1 + 48, 1146, 0 );
setSeVolume( spep_1 + 49, 1146, 25 );
setSeVolume( spep_1 + 50, 1146, 50 );
setSeVolume( spep_1 + 51, 1146, 75 );
setSeVolume( spep_1 + 52, 1146, 100 );
playSe( spep_1 + 38, 1233 );--握りしめる
setSeVolume( spep_1 + 38, 1233, 58 );
playSe( spep_1 + 46, 1012 );--握りしめる
playSe( spep_1 + 48, 1026 );--握りしめる
playSe( spep_1 + 50, 1006 );--握りしめる
setSeVolume( spep_1 + 50, 1006, 112 );
se_1158 = playSe( spep_1 + 84, 1158 );--腕を大きく振りかぶって
setSeVolume( spep_1 + 84, 1158, 26 );
playSe( spep_1 + 84, 1182 );--腕を大きく振りかぶって
setSeVolume( spep_1 + 84, 1182, 0 );
setSeVolume( spep_1 + 85, 1182, 10 );
setSeVolume( spep_1 + 86, 1182, 20 );
setSeVolume( spep_1 + 87, 1182, 30 );
setSeVolume( spep_1 + 88, 1182, 40 );
setSeVolume( spep_1 + 89, 1182, 50 );
setSeVolume( spep_1 + 90, 1182, 60 );
setSeVolume( spep_1 + 91, 1182, 70 );
setSeVolume( spep_1 + 92, 1182, 80 );
setSeVolume( spep_1 + 93, 1182, 90 );
setSeVolume( spep_1 + 94, 1182, 100 );
playSe( spep_1 + 84, 44 );--腕を大きく振りかぶって
setSeVolume( spep_1 + 84, 44, 75 );
playSe( spep_1 + 166, 1004 );--炎撒き散らす
playSe( spep_1 + 166, 1027 );--炎撒き散らす
setSeVolume( spep_1 + 166, 1027, 72 );
se_1022 = playSe( spep_1 + 166, 1022 );--炎撒き散らす
playSe( spep_1 + 170, 1182 );--炎撒き散らす
setSeVolume( spep_1 + 170, 1182, 0 );
setSeVolume( spep_1 + 171, 1182, 10 );
setSeVolume( spep_1 + 172, 1182, 20 );
setSeVolume( spep_1 + 173, 1182, 30 );
setSeVolume( spep_1 + 174, 1182, 40 );
setSeVolume( spep_1 + 175, 1182, 50 );
setSeVolume( spep_1 + 176, 1182, 60 );
setSeVolume( spep_1 + 177, 1182, 70 );
setSeVolume( spep_1 + 178, 1182, 80 );
setSeVolume( spep_1 + 179, 1182, 90 );
setSeVolume( spep_1 + 180, 1182, 100 );
se_1067 = playSe( spep_1 + 170, 1067 );--炎撒き散らす
se_1268 = playSe( spep_1 + 170, 1268 );--炎撒き散らす
setSeVolume( spep_1 + 170, 1268, 251 );
se_1044 = playSe( spep_1 + 170, 1044 );--炎撒き散らす
setSeVolume( spep_1 + 170, 1044, 77 );
se_1023 = playSe( spep_1 + 182, 1023 );--炎撒き散らす
setSeVolume( spep_1 + 182, 1023, 80 );
se_1023 = playSe( spep_1 + 201, 1023 );--炎撒き散らす
setSeVolume( spep_1 + 201, 1023, 89 );

stopSe( spep_1 + 33, se_11161, 17 );
stopSe( spep_1 + 74, se_1146, 43 );
stopSe( spep_1 + 170, se_1158, 0 );
stopSe( spep_1 + 190, se_1022, 30 );
stopSe( spep_1 + 223, se_1067, 14 );
stopSe( spep_1 + 201, se_1023, 0 );

--白フェード
entryFade( spep_1+42 , 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1+226 , 0, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 238, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_2=spep_1+230;

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

stopSe( spep_2 + 4, se_1268, 0 );
stopSe( spep_2 + 4, se_1044, 0 );
stopSe( spep_2 + 4, se_1023, 0 );

--白フェード
entryFade( spep_2 + 80, 4, 12, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
------------------------------------------------------
-- ジャンプ〜ビーム〜爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_3 + 440, finish, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_3 + 440, finish, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish, 0 );
setEffRotateKey( spep_3 + 440, finish, 0 );
setEffAlphaKey( spep_3 + 0, finish, 255 );
setEffAlphaKey( spep_3 + 440, finish, 255 );

-- ** エフェクト等 ** --
ctvuo = entryEffect( spep_3-3 + 158,  155799,  0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3-3 + 158, ctvuo, 0, 0 , 0 );
setEffMoveKey( spep_3-12 + 258, ctvuo, 0, 0 , 0 );

setEffScaleKey( spep_3-3 + 158, ctvuo, 1, 1 );
setEffScaleKey( spep_3-12 + 258, ctvuo, 1, 1 );

setEffRotateKey( spep_3-3 + 158, ctvuo, 0 );
setEffRotateKey( spep_3-12 + 258, ctvuo, 0 );

setEffAlphaKey( spep_3-3 + 158, ctvuo, 255 );
setEffAlphaKey( spep_3-12 + 258, ctvuo, 255 );
setEffAlphaKey( spep_3-12+ 259, ctvuo, 0 );
setEffAlphaKey( spep_3-12+ 260, ctvuo, 0 );

--K.O.演出
KO = entryEffect( spep_3 + 428, SP_05, 0x100, -1, 0, 0, 0 );  --KO演出(ef_005)
setEffMoveKey( spep_3 + 428, KO, 0, 0 , 0 );
setEffMoveKey( spep_3 + 488, KO, 0, 0 , 0 );
setEffScaleKey( spep_3 + 428, KO, 1.0 +0.05, 1.0 +0.05 );
setEffScaleKey( spep_3 + 488, KO, 1.0 +0.05, 1.0 +0.05 );
setEffRotateKey( spep_3 + 428, KO, 0 );
setEffRotateKey( spep_3 + 488, KO, 0 );
setEffAlphaKey( spep_3 + 428, KO, 255 );
setEffAlphaKey( spep_3 + 488, KO, 255 );

--SE
se_1116 = playSe( spep_3 + 0, 1116 );--ジャンプ
playSe( spep_3 + 0, 1245 );--ジャンプ
setSeVolume( spep_3 + 0, 1245, 53 );
playSe( spep_3 + 6, 8 );--ジャンプ
playSe( spep_3 + 18, 1182 );--ジャンプ
setSeVolume( spep_3 + 18, 1182, 0 );
setSeVolume( spep_3 + 21, 1182, 0 );
setSeVolume( spep_3 + 22, 1182, 4.86 );
setSeVolume( spep_3 + 23, 1182, 9.71 );
setSeVolume( spep_3 + 24, 1182, 14.57 );
setSeVolume( spep_3 + 25, 1182, 19.43 );
setSeVolume( spep_3 + 26, 1182, 24.29 );
setSeVolume( spep_3 + 27, 1182, 29.14 );
setSeVolume( spep_3 + 28, 1182, 34 );
setSeVolume( spep_3 + 29, 1182, 38.86 );
setSeVolume( spep_3 + 30, 1182, 43.71 );
setSeVolume( spep_3 + 31, 1182, 48.57 );
setSeVolume( spep_3 + 32, 1182, 53.43 );
setSeVolume( spep_3 + 33, 1182, 58.29 );
setSeVolume( spep_3 + 34, 1182, 63.14 );
setSeVolume( spep_3 + 35, 1182, 68 );
se_1255 = playSe( spep_3 + 60, 1255 );--気弾溜め
se_1191 = playSe( spep_3 + 60, 1191 );--気弾溜め
setSeVolume( spep_3 + 60, 1191, 178 );
setSeVolume( spep_3 +125,1191,178);
setSeVolume( spep_3 +126,1191,174.4);
setSeVolume( spep_3 +127,1191,170.8);
setSeVolume( spep_3 +128,1191,167.2);
setSeVolume( spep_3 +129,1191,163.6);
setSeVolume( spep_3 +130,1191,160);
setSeVolume( spep_3 +131,1191,156.4);
setSeVolume( spep_3 +132,1191,152.8);
setSeVolume( spep_3 +133,1191,149.2);
setSeVolume( spep_3 +134,1191,145.6);
setSeVolume( spep_3 +135,1191,142);
setSeVolume( spep_3 +136,1191,138.4);
setSeVolume( spep_3 +137,1191,134.8);
setSeVolume( spep_3 +138,1191,131.2);
setSeVolume( spep_3 +139,1191,127.6);
setSeVolume( spep_3 +140,1191,124);
setSeVolume( spep_3 +141,1191,120.4);
setSeVolume( spep_3 +142,1191,116.8);
setSeVolume( spep_3 +143,1191,113.2);
setSeVolume( spep_3 +144,1191,109.6);
setSeVolume( spep_3 +145,1191,106);
setSeVolume( spep_3 +146,1191,102.4);
setSeVolume( spep_3 +147,1191,98.8);
setSeVolume( spep_3 +148,1191,95.2);
setSeVolume( spep_3 +149,1191,91.6);
setSeVolume( spep_3 +150,1191,88);
setSeVolume( spep_3 +151,1191,84.4);
setSeVolume( spep_3 +152,1191,80.8);
setSeVolume( spep_3 +153,1191,77.2);
setSeVolume( spep_3 +154,1191,73.6);
setSeVolume( spep_3 +155,1191,70.0);
setSeVolume( spep_3 +156,1191,66.4);
setSeVolume( spep_3 +157,1191,62.8);
setSeVolume( spep_3 +158,1191,59.2);
setSeVolume( spep_3 +159,1191,55.6);
setSeVolume( spep_3 +160,1191,52);
setSeVolume( spep_3 +161,1191,48.4);
setSeVolume( spep_3 +162,1191,44.8);
setSeVolume( spep_3 +163,1191,41.2);
setSeVolume( spep_3 +164,1191,37.6);
setSeVolume( spep_3 +165,1191,34.0);
setSeVolume( spep_3 +166,1191,30.4);
setSeVolume( spep_3 +167,1191,26.8);
setSeVolume( spep_3 +168,1191,23.2);
setSeVolume( spep_3 +169,1191,19.6);
setSeVolume( spep_3 +170,1191,16);
setSeVolume( spep_3 +171,1191,12.4);
setSeVolume( spep_3 +172,1191,8.8);
setSeVolume( spep_3 +173,1191,5.2);
setSeVolume( spep_3 +174,1191,1.6);
setSeVolume( spep_3 +175,1191,0);
playSe( spep_3 + 60, 1154 );--気弾溜め
playSe( spep_3 + 62, 1122 );--気弾溜め
setSeVolume( spep_3 + 62, 1122, 71 );
se_1222 = playSe( spep_3 + 90, 1222 );--気弾溜め
setSeVolume( spep_3 + 90, 1222, 68 );
setSeVolume( spep_3 +132,1222,68);
setSeVolume( spep_3 +133,1222,65.8);
setSeVolume( spep_3 +134,1222,63.6);
setSeVolume( spep_3 +135,1222,61.4);
setSeVolume( spep_3 +136,1222,59.2);
setSeVolume( spep_3 +137,1222,57);
setSeVolume( spep_3 +138,1222,54.8);
setSeVolume( spep_3 +139,1222,52.6);
setSeVolume( spep_3 +140,1222,50.4);
setSeVolume( spep_3 +141,1222,48.2);
setSeVolume( spep_3 +142,1222,46);
setSeVolume( spep_3 +143,1222,43.8);
setSeVolume( spep_3 +144,1222,41.6);
setSeVolume( spep_3 +145,1222,39.4);
setSeVolume( spep_3 +146,1222,37.2);
setSeVolume( spep_3 +147,1222,35);
setSeVolume( spep_3 +148,1222,32.8);
setSeVolume( spep_3 +149,1222,30.6);
setSeVolume( spep_3 +150,1222,28.4);
setSeVolume( spep_3 +151,1222,26.2);
setSeVolume( spep_3 +152,1222,24);
setSeVolume( spep_3 +153,1222,21.8);
setSeVolume( spep_3 +154,1222,19.6);
setSeVolume( spep_3 +155,1222,17.4);
setSeVolume( spep_3 +156,1222,15.2);
setSeVolume( spep_3 +157,1222,13);
setSeVolume( spep_3 +158,1222,10.8);
setSeVolume( spep_3 +159,1222,8.59);
setSeVolume( spep_3 +160,1222,6.39);
setSeVolume( spep_3 +161,1222,4.19);
setSeVolume( spep_3 +162,1222,0);
playSe( spep_3 + 108, 1004 );--振りかぶる
se_1193 = playSe( spep_3 + 112, 1193 );--気弾道
setSeVolume( spep_3 + 112, 1193, 0 );
setSeVolume( spep_3 + 247, 1193, 12.5 );
setSeVolume( spep_3 + 248, 1193, 25 );
setSeVolume( spep_3 + 249, 1193, 37.5 );
setSeVolume( spep_3 + 250, 1193, 50 );
setSeVolume( spep_3 + 251, 1193, 62.5 );
setSeVolume( spep_3 + 252, 1193, 75 );
setSeVolume( spep_3 + 253, 1193, 87.5 );
setSeVolume( spep_3 + 254, 1193, 100 );
playSe( spep_3 + 156, 1213 );--気弾発射
setSeVolume( spep_3 + 156, 1213, 52 );
playSe( spep_3 + 156, 1252 );--気弾発射
setSeVolume( spep_3 + 156, 1252, 86 );
playSe( spep_3 + 156, 1027 );--気弾発射
setSeVolume( spep_3 + 156, 1027, 62 );
playSe( spep_3 + 156, 1258 );--気弾発射
setSeVolume( spep_3 + 156, 1258, 68 );
se_1254 = playSe( spep_3 + 160, 1254 );--気弾発射
setSeVolume( spep_3 + 160, 1254, 55 );
setSeVolume( spep_3 +210,1254,55);
setSeVolume( spep_3 +211,1254,53.1);
setSeVolume( spep_3 +212,1254,51.2);
setSeVolume( spep_3 +213,1254,49.3);
setSeVolume( spep_3 +214,1254,47.4);
setSeVolume( spep_3 +215,1254,45.5);
setSeVolume( spep_3 +216,1254,43.6);
setSeVolume( spep_3 +217,1254,41.7);
setSeVolume( spep_3 +218,1254,39.8);
setSeVolume( spep_3 +219,1254,37.9);
setSeVolume( spep_3 +220,1254,36);
setSeVolume( spep_3 +221,1254,34.1);
setSeVolume( spep_3 +222,1254,32.2);
setSeVolume( spep_3 +223,1254,30.3);
setSeVolume( spep_3 +224,1254,28.4);
setSeVolume( spep_3 +225,1254,26.5);
setSeVolume( spep_3 +226,1254,24.6);
setSeVolume( spep_3 +227,1254,22.7);
setSeVolume( spep_3 +228,1254,20.8);
setSeVolume( spep_3 +229,1254,18.9);
setSeVolume( spep_3 +230,1254,17);
setSeVolume( spep_3 +231,1254,15.1);
setSeVolume( spep_3 +232,1254,13.2);
setSeVolume( spep_3 +233,1254,11.3);
setSeVolume( spep_3 +234,1254,9.4);
setSeVolume( spep_3 +235,1254,7.5);
setSeVolume( spep_3 +236,1254,5.6);
setSeVolume( spep_3 +237,1254,3.7);
setSeVolume( spep_3 +238,1254,0);
se_1212 = playSe( spep_3 + 224, 1212 );--気弾道
setSeVolume( spep_3 + 224, 1212, 0 );
setSeVolume( spep_3 + 243, 1212, 0 );
setSeVolume( spep_3 + 244, 1212, 1.59 );
setSeVolume( spep_3 + 245, 1212, 3.19 );
setSeVolume( spep_3 + 246, 1212, 4.78 );
setSeVolume( spep_3 + 247, 1212, 6.38 );
setSeVolume( spep_3 + 248, 1212, 7.97 );
setSeVolume( spep_3 + 249, 1212, 9.56 );
setSeVolume( spep_3 + 250, 1212, 11.16 );
setSeVolume( spep_3 + 251, 1212, 12.75 );
setSeVolume( spep_3 + 252, 1212, 14.34 );
setSeVolume( spep_3 + 253, 1212, 15.94 );
setSeVolume( spep_3 + 254, 1212, 17.53 );
setSeVolume( spep_3 + 255, 1212, 19.13 );
setSeVolume( spep_3 + 256, 1212, 20.72 );
setSeVolume( spep_3 + 257, 1212, 22.31 );
setSeVolume( spep_3 + 258, 1212, 23.91 );
setSeVolume( spep_3 + 259, 1212, 25.50 );
setSeVolume( spep_3 + 260, 1212, 27.09 );
setSeVolume( spep_3 + 261, 1212, 28.69 );
setSeVolume( spep_3 + 262, 1212, 30.28 );
setSeVolume( spep_3 + 263, 1212, 31.88 );
setSeVolume( spep_3 + 264, 1212, 33.47 );
setSeVolume( spep_3 + 265, 1212, 35.06 );
setSeVolume( spep_3 + 266, 1212, 36.66 );
setSeVolume( spep_3 + 267, 1212, 38.25 );
setSeVolume( spep_3 + 268, 1212, 39.84 );
setSeVolume( spep_3 + 269, 1212, 41.44 );
setSeVolume( spep_3 + 270, 1212, 43.03 );
setSeVolume( spep_3 + 271, 1212, 44.63 );
setSeVolume( spep_3 + 272, 1212, 46.22 );
setSeVolume( spep_3 + 273, 1212, 47.81 );
setSeVolume( spep_3 + 274, 1212, 49.41 );
setSeVolume( spep_3 + 275, 1212, 51 );
setSeVolume( spep_3 +320,1212,51);
setSeVolume( spep_3 +321,1212,49.3);
setSeVolume( spep_3 +322,1212,47.6);
setSeVolume( spep_3 +323,1212,45.9);
setSeVolume( spep_3 +324,1212,44.2);
setSeVolume( spep_3 +325,1212,42.5);
setSeVolume( spep_3 +326,1212,40.8);
setSeVolume( spep_3 +327,1212,39.1);
setSeVolume( spep_3 +328,1212,37.4);
setSeVolume( spep_3 +329,1212,35.7);
setSeVolume( spep_3 +330,1212,34);
setSeVolume( spep_3 +331,1212,32.3);
setSeVolume( spep_3 +332,1212,30.6);
setSeVolume( spep_3 +333,1212,28.9);
setSeVolume( spep_3 +334,1212,27.2);
setSeVolume( spep_3 +335,1212,25.5);
setSeVolume( spep_3 +336,1212,23.8);
setSeVolume( spep_3 +337,1212,22.1);
setSeVolume( spep_3 +338,1212,20.4);
setSeVolume( spep_3 +339,1212,18.7);
setSeVolume( spep_3 +340,1212,17);
setSeVolume( spep_3 +341,1212,15.3);
setSeVolume( spep_3 +342,1212,13.6);
setSeVolume( spep_3 +343,1212,11.9);
setSeVolume( spep_3 +344,1212,10.2);
setSeVolume( spep_3 +345,1212,8.49);
setSeVolume( spep_3 +346,1212,6.79);
setSeVolume( spep_3 +347,1212,5.09);
setSeVolume( spep_3 +348,1212,3.39);
setSeVolume( spep_3 +349,1212,1.69);
setSeVolume( spep_3 +350,1212,0);

se_1215 = playSe( spep_3 + 224, 1215 );--気弾道
playSe( spep_3 + 250, 1021 );--気弾道
playSe( spep_3 + 324, 1159 );--ラスト爆発
setSeVolume( spep_3 + 324, 1159, 79 );
playSe( spep_3 + 330, 1067 );--ラスト爆発
setSeVolume( spep_3 + 330, 1067, 88 );
playSe( spep_3 + 338, 1023 );--ラスト爆発
setSeVolume( spep_3 + 338, 1023, 88 );
playSe( spep_3 + 346, 1188 );--ラスト爆発
setSeVolume( spep_3 + 346, 1188, 78 );
playSe( spep_3 + 366, 1068 );--ラスト爆発
setSeVolume( spep_3 + 366, 1068, 78 );


stopSe( spep_3 + 19, se_1116, 28 );
stopSe( spep_3 + 85, se_1255, 29 );
stopSe( spep_3 + 175, se_1191, 0 );
stopSe( spep_3 + 162, se_1222, 0 );
stopSe( spep_3 + 328, se_1193, 49 )
stopSe( spep_3 + 238, se_1254, 0 );
stopSe( spep_3 + 350, se_1212, 0 );
stopSe( spep_3 + 325, se_1215, 0 );

--白フェード
entryFade( spep_3 + 312, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 430, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_3 + 330 );
entryFade( spep_3 +426, 2,  4, 2, 0, 0, 0, 255);             -- black fade

endPhase( spep_3 + 430 );
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
fighting_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 256, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, fighting_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 256, fighting_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, fighting_f, 0 );
setEffRotateKey( spep_0 + 256, fighting_f, 0 );
setEffAlphaKey( spep_0 + 0, fighting_f, 255 );
setEffAlphaKey( spep_0 + 256, fighting_f, 255 );
setEffAlphaKey( spep_0 + 257, fighting_f, 0 );
setEffAlphaKey( spep_0 + 258, fighting_f, 0 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 256, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, fighting_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 256, fighting_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, fighting_b, 0 );
setEffRotateKey( spep_0 + 256, fighting_b, 0 );
setEffAlphaKey( spep_0 + 0, fighting_b, 255 );
setEffAlphaKey( spep_0 + 256, fighting_b, 255 );
setEffAlphaKey( spep_0 + 257, fighting_b, 0 );
setEffAlphaKey( spep_0 + 258, fighting_b, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+6  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0+6  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +18, 190006, 72, 0x102, -1, 0, 0, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +18,  ctgogo,  0,  510);
setEffMoveKey(  spep_0 +90,  ctgogo,  0,  510);

setEffAlphaKey( spep_0 +18, ctgogo, 0 );
setEffAlphaKey( spep_0 + 19, ctgogo, 255 );
setEffAlphaKey( spep_0 + 20, ctgogo, 255 );
setEffAlphaKey( spep_0 + 84, ctgogo, 255 );
setEffAlphaKey( spep_0 + 86, ctgogo, 191 );
setEffAlphaKey( spep_0 + 88, ctgogo, 112 );
setEffAlphaKey( spep_0 + 90, ctgogo, 64 );

setEffRotateKey(  spep_0 +18,  ctgogo,  0);
setEffRotateKey(  spep_0 +90,  ctgogo,  0);

setEffScaleKey(  spep_0 +18,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +80,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +90,  ctgogo, -1.07, 1.07 );

--敵の動き
setDisp( spep_0-3 + 166, 1, 1);

changeAnime( spep_0-3 + 166, 1, 2);

setMoveKey( spep_0-3 + 166, 1, -112.3, -188.6 , 0 );
setMoveKey( spep_0-3 + 180, 1, -112.3, -188.6 , 0 );

setScaleKey( spep_0-3 + 166, 1, 2.54, 2.54 );
setScaleKey( spep_0-3 + 180, 1, 2.54, 2.54 );

setRotateKey( spep_0-3 + 166, 1, 0 );
setRotateKey( spep_0-3 + 180, 1, 0 );

--SE

se_1044 = playSe( spep_0 + 0, 1044 );--地響き
setSeVolume( spep_0 + 0, 1044, 54 );
playSe( spep_0 + 18, 1018 );--セリフカットイン
SE7=playSe( spep_0 + 52, 8 );--カメラズームアウト
playSe( spep_0 + 52, 1167 );--カメラズームアウト
setSeVolume( spep_0 + 52, 1167, 50 );
SE0=playSe( spep_0 + 58, 1160 );--後ろ連続爆発
setSeVolume( spep_0 + 58, 1160, 63 );
SE2=playSe( spep_0 + 68, 1023 );--後ろ連続爆発
setSeVolume( spep_0 + 86, 1023, 88 );
SE3=playSe( spep_0 + 86, 1023 );--後ろ連続爆発
SE4=playSe( spep_0 + 108, 1023 );--後ろ連続爆発
setSeVolume( spep_0 + 108, 1023, 60 );
SE5=playSe( spep_0 + 120, 1023 );--後ろ連続爆発
SE6=playSe( spep_0 + 146, 1245 );--瞬間移動
setSeVolume( spep_0 + 146, 1245, 76 );

stopSe( spep_0 + 100, SE7, 10 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 258, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 180; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
    stopSe( SP_dodge - 12, SE2, 0 );
    stopSe( SP_dodge - 12, SE3, 0 );
    stopSe( SP_dodge - 12, SE4, 0 );
    stopSe( SP_dodge - 12, SE5, 0 );
    stopSe( SP_dodge - 12, SE6, 0 );
    stopSe( SP_dodge - 12, se_1044, 0 );

    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    --敵座標の固定
    setMoveKey( SP_dodge + 9, 1, 112.3, -188.6 , 0 );
    setScaleKey( SP_dodge + 9, 1, 2.54, 2.54 );
    setRotateKey( SP_dodge + 9, 1, 0 );


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
setDisp( spep_0-3 + 206, 1, 0);

changeAnime( spep_0-3 + 200, 1, 7);

setMoveKey( spep_0-3 + 198, 1, -112.3, -188.6 , 0 );
setMoveKey( spep_0-3 + 199, 1, -112.3, -188.6 , 0 );

setMoveKey( spep_0-3 + 200, 1, 10.4, -343.8 , 0 );
setMoveKey( spep_0-3 + 202, 1, 93.8, -962.5 , 0 );
setMoveKey( spep_0-3 + 204, 1, 177.5, -1489.4 , 0 );
setMoveKey( spep_0-3 + 206, 1, 237, -1979.1 , 0 );

setScaleKey( spep_0-3 + 198, 1, 2.54, 2.54 );
setScaleKey( spep_0-3 + 199, 1, 2.54, 2.54 );

setScaleKey( spep_0-3 + 200, 1, 1.33, 1.33 );
setScaleKey( spep_0-3 + 202, 1, 1.39, 1.39 );
setScaleKey( spep_0-3 + 204, 1, 1.46, 1.46 );
setScaleKey( spep_0-3 + 206, 1, 1.53, 1.53 );

setRotateKey( spep_0-3 + 198, 1, 0 );
setRotateKey( spep_0-3 + 199, 1, 0 );

setRotateKey( spep_0-3 + 200, 1, -26.7 );
setRotateKey( spep_0-3 + 206, 1, -26.7 );

--文字エントリー
ctbago = entryEffectLife( spep_0-3 + 200,  10021, 30, 0x100, -1, 0, -133.6, 442.3 );--バゴォッ
setEffShake( spep_0-3 + 200, ctbago, 30, 10 );
setEffMoveKey( spep_0-3 + 200, ctbago, -133.6, 442.3 , 0 );
setEffMoveKey( spep_0-3 + 202, ctbago, -132.9, 441.9 , 0 );
setEffMoveKey( spep_0-3 + 204, ctbago, -133.6, 442.3 , 0 );
setEffMoveKey( spep_0-3 + 206, ctbago, -126.5, 465.7 , 0 );
setEffMoveKey( spep_0-3 + 208, ctbago, -133.6, 442.3 , 0 );
setEffMoveKey( spep_0-3 + 210, ctbago, -126.7, 465.1 , 0 );
setEffMoveKey( spep_0-3 + 212, ctbago, -133.6, 442.3 , 0 );
setEffMoveKey( spep_0-3 + 214, ctbago, -126.9, 464.5 , 0 );
setEffMoveKey( spep_0-3 + 216, ctbago, -133.6, 442.3 , 0 );
setEffMoveKey( spep_0-3 + 218, ctbago, -127.1, 464 , 0 );
setEffMoveKey( spep_0-3 + 220, ctbago, -133.7, 442.4 , 0 );
setEffMoveKey( spep_0-3 + 222, ctbago, -133.7, 442.4 , 0 );
setEffMoveKey( spep_0-3 + 224, ctbago, -127.3, 463.4 , 0 );
setEffMoveKey( spep_0-3 + 226, ctbago, -133.7, 442.4 , 0 );
setEffMoveKey( spep_0-3 + 230, ctbago, -127.3, 463.4 , 0 );

setEffScaleKey( spep_0-3 + 200, ctbago, 1.39, 1.39 );
setEffScaleKey( spep_0-3 + 202, ctbago, 3.85, 3.85 );
setEffScaleKey( spep_0-3 + 204, ctbago, 2.88, 2.88 );
setEffScaleKey( spep_0-3 + 206, ctbago, 2.84, 2.84 );
setEffScaleKey( spep_0-3 + 208, ctbago, 2.81, 2.81 );
setEffScaleKey( spep_0-3 + 210, ctbago, 2.77, 2.77 );
setEffScaleKey( spep_0-3 + 212, ctbago, 2.74, 2.74 );
setEffScaleKey( spep_0-3 + 214, ctbago, 2.7, 2.7 );
setEffScaleKey( spep_0-3 + 216, ctbago, 2.66, 2.66 );
setEffScaleKey( spep_0-3 + 218, ctbago, 2.63, 2.63 );
setEffScaleKey( spep_0-3 + 220, ctbago, 2.59, 2.59 );
setEffScaleKey( spep_0-3 + 222, ctbago, 2.56, 2.56 );
setEffScaleKey( spep_0-3 + 230, ctbago, 2.56, 2.56 );

setEffRotateKey( spep_0-3 + 200, ctbago, -18.8 );
setEffRotateKey( spep_0-3 + 230, ctbago, -18.8 );

setEffAlphaKey( spep_0-3 + 200, ctbago, 255 );
setEffAlphaKey( spep_0-3 + 222, ctbago, 255 );
setEffAlphaKey( spep_0-3 + 224, ctbago, 191 );
setEffAlphaKey( spep_0-3 + 226, ctbago, 128 );
setEffAlphaKey( spep_0-3 + 228, ctbago, 64 );
setEffAlphaKey( spep_0-3 + 230, ctbago, 0 );

--SE
playSe( spep_0 + 172, 1245 );--瞬間移動
playSe( spep_0 + 172, 1109 );--瞬間移動
setSeVolume( spep_0 + 172, 1109, 89 );
playSe( spep_0 + 192, 1004 );--重い一撃
playSe( spep_0 + 198, 1009 );--重い一撃
setSeVolume( spep_0 + 198, 1009, 92 );
playSe( spep_0 + 202, 1000 );--重い一撃
playSe( spep_0 + 204, 1187 );--重い一撃
playSe( spep_0 + 206, 1182 );--重い一撃
setSeVolume( spep_0 + 206, 1182, 133 );

stopSe( spep_0 + 174, se_1044, 0 );

-- ** 次の準備 ** --
spep_1=spep_0+256;
------------------------------------------------------
-- 腕溜め〜炎
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_1 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_1 + 230, tame, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_1 + 230, tame, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 230, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 230, tame, 255 );

--SE
se_11161 = playSe( spep_1 + 0, 1116 );--腕振り上げる
playSe( spep_1 + 6, 1232 );--腕振り上げる
se_1146 = playSe( spep_1 + 12, 1146 );--握りしめる
setSeVolume( spep_1 + 12, 1146, 0 );
setSeVolume( spep_1 + 48, 1146, 0 );
setSeVolume( spep_1 + 49, 1146, 25 );
setSeVolume( spep_1 + 50, 1146, 50 );
setSeVolume( spep_1 + 51, 1146, 75 );
setSeVolume( spep_1 + 52, 1146, 100 );
playSe( spep_1 + 38, 1233 );--握りしめる
setSeVolume( spep_1 + 38, 1233, 58 );
playSe( spep_1 + 46, 1012 );--握りしめる
playSe( spep_1 + 48, 1026 );--握りしめる
playSe( spep_1 + 50, 1006 );--握りしめる
setSeVolume( spep_1 + 50, 1006, 112 );
se_1158 = playSe( spep_1 + 84, 1158 );--腕を大きく振りかぶって
setSeVolume( spep_1 + 84, 1158, 26 );
playSe( spep_1 + 84, 1182 );--腕を大きく振りかぶって
setSeVolume( spep_1 + 84, 1182, 0 );
setSeVolume( spep_1 + 85, 1182, 10 );
setSeVolume( spep_1 + 86, 1182, 20 );
setSeVolume( spep_1 + 87, 1182, 30 );
setSeVolume( spep_1 + 88, 1182, 40 );
setSeVolume( spep_1 + 89, 1182, 50 );
setSeVolume( spep_1 + 90, 1182, 60 );
setSeVolume( spep_1 + 91, 1182, 70 );
setSeVolume( spep_1 + 92, 1182, 80 );
setSeVolume( spep_1 + 93, 1182, 90 );
setSeVolume( spep_1 + 94, 1182, 100 );
playSe( spep_1 + 84, 44 );--腕を大きく振りかぶって
setSeVolume( spep_1 + 84, 44, 75 );
playSe( spep_1 + 166, 1004 );--炎撒き散らす
playSe( spep_1 + 166, 1027 );--炎撒き散らす
setSeVolume( spep_1 + 166, 1027, 72 );
se_1022 = playSe( spep_1 + 166, 1022 );--炎撒き散らす
playSe( spep_1 + 170, 1182 );--炎撒き散らす
setSeVolume( spep_1 + 170, 1182, 0 );
setSeVolume( spep_1 + 171, 1182, 10 );
setSeVolume( spep_1 + 172, 1182, 20 );
setSeVolume( spep_1 + 173, 1182, 30 );
setSeVolume( spep_1 + 174, 1182, 40 );
setSeVolume( spep_1 + 175, 1182, 50 );
setSeVolume( spep_1 + 176, 1182, 60 );
setSeVolume( spep_1 + 177, 1182, 70 );
setSeVolume( spep_1 + 178, 1182, 80 );
setSeVolume( spep_1 + 179, 1182, 90 );
setSeVolume( spep_1 + 180, 1182, 100 );
se_1067 = playSe( spep_1 + 170, 1067 );--炎撒き散らす
se_1268 = playSe( spep_1 + 170, 1268 );--炎撒き散らす
setSeVolume( spep_1 + 170, 1268, 251 );
se_1044 = playSe( spep_1 + 170, 1044 );--炎撒き散らす
setSeVolume( spep_1 + 170, 1044, 77 );
se_1023 = playSe( spep_1 + 182, 1023 );--炎撒き散らす
setSeVolume( spep_1 + 182, 1023, 80 );
se_1023 = playSe( spep_1 + 201, 1023 );--炎撒き散らす
setSeVolume( spep_1 + 201, 1023, 89 );

stopSe( spep_1 + 33, se_11161, 17 );
stopSe( spep_1 + 74, se_1146, 43 );
stopSe( spep_1 + 170, se_1158, 0 );
stopSe( spep_1 + 190, se_1022, 30 );
stopSe( spep_1 + 223, se_1067, 14 );
stopSe( spep_1 + 201, se_1023, 0 );

--白フェード
entryFade( spep_1+42 , 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1+226 , 0, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 238, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_2=spep_1+230;

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

stopSe( spep_2 + 4, se_1268, 0 );
stopSe( spep_2 + 4, se_1044, 0 );
stopSe( spep_2 + 4, se_1023, 0 );

--白フェード
entryFade( spep_2 + 80, 4, 12, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
------------------------------------------------------
-- ジャンプ〜ビーム〜爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_3 + 440, finish, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_3 + 440, finish, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish, 0 );
setEffRotateKey( spep_3 + 440, finish, 0 );
setEffAlphaKey( spep_3 + 0, finish, 255 );
setEffAlphaKey( spep_3 + 440, finish, 255 );

-- ** エフェクト等 ** --
ctvuo = entryEffect( spep_3-3 + 158,  155800,  0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3-3 + 158, ctvuo, 0, 0 , 0 );
setEffMoveKey( spep_3-12 + 258, ctvuo, 0, 0 , 0 );

setEffScaleKey( spep_3-3 + 158, ctvuo, -1, 1 );
setEffScaleKey( spep_3-12 + 258, ctvuo, -1, 1 );

setEffRotateKey( spep_3-3 + 158, ctvuo, 0 );
setEffRotateKey( spep_3-12 + 258, ctvuo, 0 );

setEffAlphaKey( spep_3-3 + 158, ctvuo, 255 );
setEffAlphaKey( spep_3-12 + 258, ctvuo, 255 );
setEffAlphaKey( spep_3-12+ 259, ctvuo, 0 );
setEffAlphaKey( spep_3-12+ 260, ctvuo, 0 );

--K.O.演出
KO = entryEffect( spep_3 + 428, SP_05x, 0x100, -1, 0, 0, 0 );  --KO演出(ef_005)
setEffMoveKey( spep_3 + 428, KO, 0, 0 , 0 );
setEffMoveKey( spep_3 + 488, KO, 0, 0 , 0 );
setEffScaleKey( spep_3 + 428, KO, 1.0 +0.05, 1.0 +0.05 );
setEffScaleKey( spep_3 + 488, KO, 1.0 +0.05, 1.0 +0.05 );
setEffRotateKey( spep_3 + 428, KO, 0 );
setEffRotateKey( spep_3 + 488, KO, 0 );
setEffAlphaKey( spep_3 + 428, KO, 255 );
setEffAlphaKey( spep_3 + 488, KO, 255 );

--SE
se_1116 = playSe( spep_3 + 0, 1116 );--ジャンプ
playSe( spep_3 + 0, 1245 );--ジャンプ
setSeVolume( spep_3 + 0, 1245, 53 );
playSe( spep_3 + 6, 8 );--ジャンプ
playSe( spep_3 + 18, 1182 );--ジャンプ
setSeVolume( spep_3 + 18, 1182, 0 );
setSeVolume( spep_3 + 21, 1182, 0 );
setSeVolume( spep_3 + 22, 1182, 4.86 );
setSeVolume( spep_3 + 23, 1182, 9.71 );
setSeVolume( spep_3 + 24, 1182, 14.57 );
setSeVolume( spep_3 + 25, 1182, 19.43 );
setSeVolume( spep_3 + 26, 1182, 24.29 );
setSeVolume( spep_3 + 27, 1182, 29.14 );
setSeVolume( spep_3 + 28, 1182, 34 );
setSeVolume( spep_3 + 29, 1182, 38.86 );
setSeVolume( spep_3 + 30, 1182, 43.71 );
setSeVolume( spep_3 + 31, 1182, 48.57 );
setSeVolume( spep_3 + 32, 1182, 53.43 );
setSeVolume( spep_3 + 33, 1182, 58.29 );
setSeVolume( spep_3 + 34, 1182, 63.14 );
setSeVolume( spep_3 + 35, 1182, 68 );
se_1255 = playSe( spep_3 + 60, 1255 );--気弾溜め
se_1191 = playSe( spep_3 + 60, 1191 );--気弾溜め
setSeVolume( spep_3 + 60, 1191, 178 );
setSeVolume( spep_3 +125,1191,178);
setSeVolume( spep_3 +126,1191,174.4);
setSeVolume( spep_3 +127,1191,170.8);
setSeVolume( spep_3 +128,1191,167.2);
setSeVolume( spep_3 +129,1191,163.6);
setSeVolume( spep_3 +130,1191,160);
setSeVolume( spep_3 +131,1191,156.4);
setSeVolume( spep_3 +132,1191,152.8);
setSeVolume( spep_3 +133,1191,149.2);
setSeVolume( spep_3 +134,1191,145.6);
setSeVolume( spep_3 +135,1191,142);
setSeVolume( spep_3 +136,1191,138.4);
setSeVolume( spep_3 +137,1191,134.8);
setSeVolume( spep_3 +138,1191,131.2);
setSeVolume( spep_3 +139,1191,127.6);
setSeVolume( spep_3 +140,1191,124);
setSeVolume( spep_3 +141,1191,120.4);
setSeVolume( spep_3 +142,1191,116.8);
setSeVolume( spep_3 +143,1191,113.2);
setSeVolume( spep_3 +144,1191,109.6);
setSeVolume( spep_3 +145,1191,106);
setSeVolume( spep_3 +146,1191,102.4);
setSeVolume( spep_3 +147,1191,98.8);
setSeVolume( spep_3 +148,1191,95.2);
setSeVolume( spep_3 +149,1191,91.6);
setSeVolume( spep_3 +150,1191,88);
setSeVolume( spep_3 +151,1191,84.4);
setSeVolume( spep_3 +152,1191,80.8);
setSeVolume( spep_3 +153,1191,77.2);
setSeVolume( spep_3 +154,1191,73.6);
setSeVolume( spep_3 +155,1191,70.0);
setSeVolume( spep_3 +156,1191,66.4);
setSeVolume( spep_3 +157,1191,62.8);
setSeVolume( spep_3 +158,1191,59.2);
setSeVolume( spep_3 +159,1191,55.6);
setSeVolume( spep_3 +160,1191,52);
setSeVolume( spep_3 +161,1191,48.4);
setSeVolume( spep_3 +162,1191,44.8);
setSeVolume( spep_3 +163,1191,41.2);
setSeVolume( spep_3 +164,1191,37.6);
setSeVolume( spep_3 +165,1191,34.0);
setSeVolume( spep_3 +166,1191,30.4);
setSeVolume( spep_3 +167,1191,26.8);
setSeVolume( spep_3 +168,1191,23.2);
setSeVolume( spep_3 +169,1191,19.6);
setSeVolume( spep_3 +170,1191,16);
setSeVolume( spep_3 +171,1191,12.4);
setSeVolume( spep_3 +172,1191,8.8);
setSeVolume( spep_3 +173,1191,5.2);
setSeVolume( spep_3 +174,1191,1.6);
setSeVolume( spep_3 +175,1191,0);
playSe( spep_3 + 60, 1154 );--気弾溜め
playSe( spep_3 + 62, 1122 );--気弾溜め
setSeVolume( spep_3 + 62, 1122, 71 );
se_1222 = playSe( spep_3 + 90, 1222 );--気弾溜め
setSeVolume( spep_3 + 90, 1222, 68 );
setSeVolume( spep_3 +132,1222,68);
setSeVolume( spep_3 +133,1222,65.8);
setSeVolume( spep_3 +134,1222,63.6);
setSeVolume( spep_3 +135,1222,61.4);
setSeVolume( spep_3 +136,1222,59.2);
setSeVolume( spep_3 +137,1222,57);
setSeVolume( spep_3 +138,1222,54.8);
setSeVolume( spep_3 +139,1222,52.6);
setSeVolume( spep_3 +140,1222,50.4);
setSeVolume( spep_3 +141,1222,48.2);
setSeVolume( spep_3 +142,1222,46);
setSeVolume( spep_3 +143,1222,43.8);
setSeVolume( spep_3 +144,1222,41.6);
setSeVolume( spep_3 +145,1222,39.4);
setSeVolume( spep_3 +146,1222,37.2);
setSeVolume( spep_3 +147,1222,35);
setSeVolume( spep_3 +148,1222,32.8);
setSeVolume( spep_3 +149,1222,30.6);
setSeVolume( spep_3 +150,1222,28.4);
setSeVolume( spep_3 +151,1222,26.2);
setSeVolume( spep_3 +152,1222,24);
setSeVolume( spep_3 +153,1222,21.8);
setSeVolume( spep_3 +154,1222,19.6);
setSeVolume( spep_3 +155,1222,17.4);
setSeVolume( spep_3 +156,1222,15.2);
setSeVolume( spep_3 +157,1222,13);
setSeVolume( spep_3 +158,1222,10.8);
setSeVolume( spep_3 +159,1222,8.59);
setSeVolume( spep_3 +160,1222,6.39);
setSeVolume( spep_3 +161,1222,4.19);
setSeVolume( spep_3 +162,1222,0);
playSe( spep_3 + 108, 1004 );--振りかぶる
se_1193 = playSe( spep_3 + 112, 1193 );--気弾道
setSeVolume( spep_3 + 112, 1193, 0 );
setSeVolume( spep_3 + 247, 1193, 12.5 );
setSeVolume( spep_3 + 248, 1193, 25 );
setSeVolume( spep_3 + 249, 1193, 37.5 );
setSeVolume( spep_3 + 250, 1193, 50 );
setSeVolume( spep_3 + 251, 1193, 62.5 );
setSeVolume( spep_3 + 252, 1193, 75 );
setSeVolume( spep_3 + 253, 1193, 87.5 );
setSeVolume( spep_3 + 254, 1193, 100 );
playSe( spep_3 + 156, 1213 );--気弾発射
setSeVolume( spep_3 + 156, 1213, 52 );
playSe( spep_3 + 156, 1252 );--気弾発射
setSeVolume( spep_3 + 156, 1252, 86 );
playSe( spep_3 + 156, 1027 );--気弾発射
setSeVolume( spep_3 + 156, 1027, 62 );
playSe( spep_3 + 156, 1258 );--気弾発射
setSeVolume( spep_3 + 156, 1258, 68 );
se_1254 = playSe( spep_3 + 160, 1254 );--気弾発射
setSeVolume( spep_3 + 160, 1254, 55 );
setSeVolume( spep_3 +210,1254,55);
setSeVolume( spep_3 +211,1254,53.1);
setSeVolume( spep_3 +212,1254,51.2);
setSeVolume( spep_3 +213,1254,49.3);
setSeVolume( spep_3 +214,1254,47.4);
setSeVolume( spep_3 +215,1254,45.5);
setSeVolume( spep_3 +216,1254,43.6);
setSeVolume( spep_3 +217,1254,41.7);
setSeVolume( spep_3 +218,1254,39.8);
setSeVolume( spep_3 +219,1254,37.9);
setSeVolume( spep_3 +220,1254,36);
setSeVolume( spep_3 +221,1254,34.1);
setSeVolume( spep_3 +222,1254,32.2);
setSeVolume( spep_3 +223,1254,30.3);
setSeVolume( spep_3 +224,1254,28.4);
setSeVolume( spep_3 +225,1254,26.5);
setSeVolume( spep_3 +226,1254,24.6);
setSeVolume( spep_3 +227,1254,22.7);
setSeVolume( spep_3 +228,1254,20.8);
setSeVolume( spep_3 +229,1254,18.9);
setSeVolume( spep_3 +230,1254,17);
setSeVolume( spep_3 +231,1254,15.1);
setSeVolume( spep_3 +232,1254,13.2);
setSeVolume( spep_3 +233,1254,11.3);
setSeVolume( spep_3 +234,1254,9.4);
setSeVolume( spep_3 +235,1254,7.5);
setSeVolume( spep_3 +236,1254,5.6);
setSeVolume( spep_3 +237,1254,3.7);
setSeVolume( spep_3 +238,1254,0);
se_1212 = playSe( spep_3 + 224, 1212 );--気弾道
setSeVolume( spep_3 + 224, 1212, 0 );
setSeVolume( spep_3 + 243, 1212, 0 );
setSeVolume( spep_3 + 244, 1212, 1.59 );
setSeVolume( spep_3 + 245, 1212, 3.19 );
setSeVolume( spep_3 + 246, 1212, 4.78 );
setSeVolume( spep_3 + 247, 1212, 6.38 );
setSeVolume( spep_3 + 248, 1212, 7.97 );
setSeVolume( spep_3 + 249, 1212, 9.56 );
setSeVolume( spep_3 + 250, 1212, 11.16 );
setSeVolume( spep_3 + 251, 1212, 12.75 );
setSeVolume( spep_3 + 252, 1212, 14.34 );
setSeVolume( spep_3 + 253, 1212, 15.94 );
setSeVolume( spep_3 + 254, 1212, 17.53 );
setSeVolume( spep_3 + 255, 1212, 19.13 );
setSeVolume( spep_3 + 256, 1212, 20.72 );
setSeVolume( spep_3 + 257, 1212, 22.31 );
setSeVolume( spep_3 + 258, 1212, 23.91 );
setSeVolume( spep_3 + 259, 1212, 25.50 );
setSeVolume( spep_3 + 260, 1212, 27.09 );
setSeVolume( spep_3 + 261, 1212, 28.69 );
setSeVolume( spep_3 + 262, 1212, 30.28 );
setSeVolume( spep_3 + 263, 1212, 31.88 );
setSeVolume( spep_3 + 264, 1212, 33.47 );
setSeVolume( spep_3 + 265, 1212, 35.06 );
setSeVolume( spep_3 + 266, 1212, 36.66 );
setSeVolume( spep_3 + 267, 1212, 38.25 );
setSeVolume( spep_3 + 268, 1212, 39.84 );
setSeVolume( spep_3 + 269, 1212, 41.44 );
setSeVolume( spep_3 + 270, 1212, 43.03 );
setSeVolume( spep_3 + 271, 1212, 44.63 );
setSeVolume( spep_3 + 272, 1212, 46.22 );
setSeVolume( spep_3 + 273, 1212, 47.81 );
setSeVolume( spep_3 + 274, 1212, 49.41 );
setSeVolume( spep_3 + 275, 1212, 51 );
setSeVolume( spep_3 +320,1212,51);
setSeVolume( spep_3 +321,1212,49.3);
setSeVolume( spep_3 +322,1212,47.6);
setSeVolume( spep_3 +323,1212,45.9);
setSeVolume( spep_3 +324,1212,44.2);
setSeVolume( spep_3 +325,1212,42.5);
setSeVolume( spep_3 +326,1212,40.8);
setSeVolume( spep_3 +327,1212,39.1);
setSeVolume( spep_3 +328,1212,37.4);
setSeVolume( spep_3 +329,1212,35.7);
setSeVolume( spep_3 +330,1212,34);
setSeVolume( spep_3 +331,1212,32.3);
setSeVolume( spep_3 +332,1212,30.6);
setSeVolume( spep_3 +333,1212,28.9);
setSeVolume( spep_3 +334,1212,27.2);
setSeVolume( spep_3 +335,1212,25.5);
setSeVolume( spep_3 +336,1212,23.8);
setSeVolume( spep_3 +337,1212,22.1);
setSeVolume( spep_3 +338,1212,20.4);
setSeVolume( spep_3 +339,1212,18.7);
setSeVolume( spep_3 +340,1212,17);
setSeVolume( spep_3 +341,1212,15.3);
setSeVolume( spep_3 +342,1212,13.6);
setSeVolume( spep_3 +343,1212,11.9);
setSeVolume( spep_3 +344,1212,10.2);
setSeVolume( spep_3 +345,1212,8.49);
setSeVolume( spep_3 +346,1212,6.79);
setSeVolume( spep_3 +347,1212,5.09);
setSeVolume( spep_3 +348,1212,3.39);
setSeVolume( spep_3 +349,1212,1.69);
setSeVolume( spep_3 +350,1212,0);

se_1215 = playSe( spep_3 + 224, 1215 );--気弾道
playSe( spep_3 + 250, 1021 );--気弾道
playSe( spep_3 + 324, 1159 );--ラスト爆発
setSeVolume( spep_3 + 324, 1159, 79 );
playSe( spep_3 + 330, 1067 );--ラスト爆発
setSeVolume( spep_3 + 330, 1067, 88 );
playSe( spep_3 + 338, 1023 );--ラスト爆発
setSeVolume( spep_3 + 338, 1023, 88 );
playSe( spep_3 + 346, 1188 );--ラスト爆発
setSeVolume( spep_3 + 346, 1188, 78 );
playSe( spep_3 + 366, 1068 );--ラスト爆発
setSeVolume( spep_3 + 366, 1068, 78 );


stopSe( spep_3 + 19, se_1116, 28 );
stopSe( spep_3 + 85, se_1255, 29 );
stopSe( spep_3 + 175, se_1191, 0 );
stopSe( spep_3 + 162, se_1222, 0 );
stopSe( spep_3 + 328, se_1193, 49 )
stopSe( spep_3 + 238, se_1254, 0 );
stopSe( spep_3 + 350, se_1212, 0 );
stopSe( spep_3 + 325, se_1215, 0 );

--白フェード
entryFade( spep_3 + 312, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 430, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_3 + 330 );
entryFade( spep_3 +426, 2,  4, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_3 + 430 );
end