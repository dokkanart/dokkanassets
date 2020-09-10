--1020090:孫悟飯(青年期)_ゼットソードスラッシュ
--sp_effect_b2_00035

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
SP_01=	155686	;--	剣をキャッチ〜ポーズ
SP_02=	155687	;--	落下しつつ斬りつけ〜水平に斬りつける
SP_03=	155688	;--	同上
SP_04=	155691	;--	剣を振りきって土煙
SP_05=	155693	;--	顔のアップ

--エフェクト(てき)
SP_01x=	155686	;--	剣をキャッチ〜ポーズ	
SP_02x=	155689	;--	落下しつつ斬りつけ〜水平に斬りつける	(敵)
SP_03x=	155690	;--	同上	(敵)
SP_04x=	155692	;--	剣を振りきって土煙	(敵)
SP_05x=	155694	;--	顔のアップ	(敵)

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
-- 剣をキャッチ〜ポーズ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
pose = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, pose, 0, 0, 0 );
setEffMoveKey( spep_0 + 170, pose, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, pose, 1.0, 1.0 );
setEffScaleKey( spep_0 + 170, pose, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, pose, 0 );
setEffRotateKey( spep_0 + 170, pose, 0 );
setEffAlphaKey( spep_0 + 0, pose, 255 );
setEffAlphaKey( spep_0 + 170, pose, 255 );

--文字エントリー
ctga = entryEffectLife( spep_0-3 + 72,  10005, 14, 0x100, -1, 0, 88, 216 );--ガッ

setEffMoveKey( spep_0-3 + 72, ctga, 88, 216 , 0 );
setEffMoveKey( spep_0-3 + 74, ctga, 88, 275.9 , 0 );
setEffMoveKey( spep_0-3 + 76, ctga, 88, 335.8 , 0 );
setEffMoveKey( spep_0-3 + 82, ctga, 88, 335.8 , 0 );
setEffMoveKey( spep_0-3 + 84, ctga, 92, 341.8 , 0 );
setEffMoveKey( spep_0-3 + 86, ctga, 96.1, 347.8 , 0 );

setEffScaleKey( spep_0-3 + 72, ctga, 1.9, 1.9 );
setEffScaleKey( spep_0-3 + 74, ctga, 2.67, 2.67 );
setEffScaleKey( spep_0-3 + 76, ctga, 3.43, 3.43 );
setEffScaleKey( spep_0-3 + 82, ctga, 3.43, 3.43 );
setEffScaleKey( spep_0-3 + 84, ctga, 3.61, 3.61 );
setEffScaleKey( spep_0-3 + 86, ctga, 3.79, 3.79 );

setEffRotateKey( spep_0-3 + 72, ctga, 23.7 );
setEffRotateKey( spep_0-3 + 86, ctga, 23.7 );

setEffAlphaKey( spep_0-3 + 72, ctga, 255 );
setEffAlphaKey( spep_0-3 + 82, ctga, 255 );
setEffAlphaKey( spep_0-3 + 84, ctga, 128 );
setEffAlphaKey( spep_0-3 + 86, ctga, 0 );

--SE
playSe( spep_0 + 2, 1151 );--ソードくるくる
se_0063 = playSe( spep_0 + 4, 63 );--ソードくるくる
playSe( spep_0 + 4, 1003 );--ソードくるくる
playSe( spep_0 + 10, 1151 );--ソードくるくる
se_1003_1 = playSe( spep_0 + 12, 1003 );--ソードくるくる
setSeVolume( spep_0 + 12, 1003, 91 );
se_1151_1 = playSe( spep_0 + 20, 1151 );--ソードくるくる
playSe( spep_0 + 20, 1003 );--ソードくるくる
setSeVolume( spep_0 + 20, 1003, 85 );
playSe( spep_0 + 30, 1003 );--ソードくるくる
setSeVolume( spep_0 + 30, 1003, 93 );
playSe( spep_0 + 32, 1151 );--ソードくるくる

playSe( spep_0 + 38, 1003 );--ソードくるくる
setSeVolume( spep_0 + 38, 1003, 52 );
playSe( spep_0 + 48, 1003 );--ソードくるくる
setSeVolume( spep_0 + 48, 1003, 42 );
playSe( spep_0 + 56, 1003 );--ソードくるくる
setSeVolume( spep_0 + 56, 1003, 35 );
playSe( spep_0 + 72, 1006 );--ソードキャッチ
se_1192 = playSe( spep_0 + 72, 1192 );--ソードキャッチ
setSeVolume( spep_0 + 72, 1192, 209 );
playSe( spep_0 + 104, 44 );--カメラズームアウト

stopSe( spep_0 + 28, se_1003_1, 2);
stopSe( spep_0 + 28, se_1151_1, 4);
stopSe( spep_0 + 78, se_0063, 0 );
stopSe( spep_0 + 83, se_1192, 6 );


-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 174, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_0+158 , 0, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1=spep_0+170;

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

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1 + 80, 6, 12, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 落下しつつ斬りつけ〜水平に斬りつける
------------------------------------------------------

-- ** エフェクト等 ** --
slash_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, slash_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 420, slash_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, slash_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 420, slash_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, slash_f, 0 );
setEffRotateKey( spep_2 + 420, slash_f, 0 );
setEffAlphaKey( spep_2 + 0, slash_f, 255 );
setEffAlphaKey( spep_2 + 420, slash_f, 255 );

-- ** エフェクト等 ** --
slash_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, slash_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 420, slash_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, slash_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 420, slash_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, slash_b, 0 );
setEffRotateKey( spep_2 + 420, slash_b, 0 );
setEffAlphaKey( spep_2 + 0, slash_b, 255 );
setEffAlphaKey( spep_2 + 420, slash_b, 255 );

--SE
se_11161 = playSe( spep_2 + 0, 1116 );--ジャンプ
SE0=playSe( spep_2 + 0, 1117 );--ジャンプ

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 24; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, se_11161, 0 );

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
speff = entryEffect( spep_2+228  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_2+228  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- 文字エントリー --
ctgogo = entryEffectLife( spep_2 +240, 190006, 72, 0x102, -1, 0, 100 -180, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_2 +240,  ctgogo,  100 -180,  510);
setEffMoveKey(  spep_2 +312,  ctgogo,  100 -180,  510);

setEffAlphaKey( spep_2 +240, ctgogo, 0 );
setEffAlphaKey( spep_2 + 241, ctgogo, 255 );
setEffAlphaKey( spep_2 + 242, ctgogo, 255 );
setEffAlphaKey( spep_2 + 306, ctgogo, 255 );
setEffAlphaKey( spep_2 + 308, ctgogo, 191 );
setEffAlphaKey( spep_2 + 310, ctgogo, 112 );
setEffAlphaKey( spep_2 + 312, ctgogo, 64 );

setEffRotateKey(  spep_2 +240,  ctgogo,  0);
setEffRotateKey(  spep_2 +312,  ctgogo,  0);

setEffScaleKey(  spep_2 +240,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 +302,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 +312,  ctgogo, 1.07, 1.07 );

--敵の動き
setDisp( spep_2-3 + 52, 1, 1);
setDisp( spep_2-1 + 128, 1, 0);

changeAnime( spep_2-3 + 52, 1, 108);
changeAnime( spep_2-3 + 54, 1, 106);

setMoveKey( spep_2-3 + 52, 1, 125.7, -29 , 0 );
setMoveKey( spep_2-3 + 53, 1, 125.7, -29 , 0 );

setMoveKey( spep_2-3 + 54, 1, 139.6, 12.8 , 0 );
setMoveKey( spep_2-3 + 56, 1, 140.6, 12.1 , 0 );
setMoveKey( spep_2-3 + 58, 1, 185.9, -18.3 , 0 );
setMoveKey( spep_2-3 + 60, 1, 201.2, 16.9 , 0 );
setMoveKey( spep_2-3 + 62, 1, 254.6, -8.8 , 0 );
setMoveKey( spep_2-3 + 64, 1, 262.4, 9.4 , 0 );
setMoveKey( spep_2-3 + 66, 1, 274.9, -3.3 , 0 );
setMoveKey( spep_2-3 + 68, 1, 266.8, -11.3 , 0 );
setMoveKey( spep_2-3 + 70, 1, 275.1, 0.9 , 0 );
setMoveKey( spep_2-3 + 72, 1, 430, 18.4 , 0 );
setMoveKey( spep_2-3 + 73, 1, 430, 18.4 , 0 );
setMoveKey( spep_2-3 + 74, 1, 156.4, -74.7 , 0 );
setMoveKey( spep_2-3 + 76, 1, 166.1, -78 , 0 );
setMoveKey( spep_2-3 + 78, 1, 174.2, -72.9 , 0 );
setMoveKey( spep_2-3 + 80, 1, 170.8, -74.7 , 0 );
setMoveKey( spep_2-3 + 82, 1, 181.6, -72.3 , 0 );
setMoveKey( spep_2-3 + 84, 1, 192.5, -74.6 , 0 );
setMoveKey( spep_2-3 + 86, 1, 200.6, -75.2 , 0 );
setMoveKey( spep_2-3 + 88, 1, 208.6, -68.6 , 0 );
setMoveKey( spep_2-3 + 90, 1, 213.4, -74.9 , 0 );
setMoveKey( spep_2-3 + 92, 1, 219.8, -76.9 , 0 );
setMoveKey( spep_2-3 + 94, 1, 231.4, -72.8 , 0 );
setMoveKey( spep_2-3 + 96, 1, 243.7, -68.8 , 0 );
setMoveKey( spep_2-3 + 98, 1, 246, -74.8 , 0 );
setMoveKey( spep_2-3 + 100, 1, 253.5, -77.1 , 0 );
setMoveKey( spep_2-3 + 102, 1, 260.1, -84.3 , 0 );
setMoveKey( spep_2-3 + 104, 1, 266.3, -73.5 , 0 );
setMoveKey( spep_2-3 + 106, 1, 278.5, -78.4 , 0 );
setMoveKey( spep_2-3 + 108, 1, 290.8, -83.5 , 0 );
setMoveKey( spep_2-3 + 110, 1, 283.4, -80.4 , 0 );
setMoveKey( spep_2-3 + 112, 1, 306.7, -86 , 0 );
setMoveKey( spep_2-3 + 114, 1, 301.2, -85.6 , 0 );
setMoveKey( spep_2-3 + 116, 1, 318.8, -76.7 , 0 );
setMoveKey( spep_2-3 + 118, 1, 323.4, -79.7 , 0 );
setMoveKey( spep_2-3 + 120, 1, 331.8, -83.1 , 0 );
setMoveKey( spep_2-3 + 122, 1, 343.1, -78.9 , 0 );
setMoveKey( spep_2-3 + 124, 1, 348.3, -79.6 , 0 );
setMoveKey( spep_2-3 + 126, 1, 353.3, -80.3 , 0 );
setMoveKey( spep_2-1 + 128, 1, 365.7, -76.3 , 0 );

a1 = 0.07;
setScaleKey( spep_2-3 + 52, 1, 1.25 +a1, 1.25 +a1 );
setScaleKey( spep_2-3 + 53, 1, 1.25 +a1, 1.25 +a1 );

setScaleKey( spep_2-3 + 54, 1, 1.25 +a1, 1.25 +a1 );
setScaleKey( spep_2-3 + 70, 1, 1.25 +a1, 1.25 +a1 );
setScaleKey( spep_2-3 + 72, 1, 1.79 +a1, 1.79 +a1 );
setScaleKey( spep_2-3 + 73, 1, 1.79 +a1, 1.79 +a1 );
setScaleKey( spep_2-3 + 74, 1, 0.55 +a1, 0.55 +a1 );
setScaleKey( spep_2-1 + 128, 1, 0.55 +a1, 0.55 +a1 );

setRotateKey( spep_2-3 + 52, 1, 7.8 );
setRotateKey( spep_2-3 + 53, 1, 7.8 );

setRotateKey( spep_2-3 + 54, 1, -31.2 );
setRotateKey( spep_2-3 + 56, 1, -31.2 );
setRotateKey( spep_2-3 + 58, 1, -20.5 );
setRotateKey( spep_2-3 + 60, 1, -17.2 );
setRotateKey( spep_2-3 + 62, 1, -15.1 );
setRotateKey( spep_2-3 + 64, 1, -13.7 );
setRotateKey( spep_2-3 + 66, 1, -12.8 );
setRotateKey( spep_2-3 + 68, 1, -12.3 );
setRotateKey( spep_2-3 + 70, 1, -12 );
setRotateKey( spep_2-3 + 72, 1, -11.9 );
setRotateKey( spep_2-3 + 73, 1, -11.9 );
setRotateKey( spep_2-3 + 74, 1, -10.9 );
setRotateKey( spep_2-3 + 76, 1, -10.8 );
setRotateKey( spep_2-3 + 78, 1, -10.7 );
setRotateKey( spep_2-3 + 80, 1, -10.6 );
setRotateKey( spep_2-3 + 82, 1, -10.5 );
setRotateKey( spep_2-3 + 84, 1, -10.4 );
setRotateKey( spep_2-3 + 86, 1, -10.3 );
setRotateKey( spep_2-3 + 88, 1, -10.2 );
setRotateKey( spep_2-3 + 90, 1, -10.1 );
setRotateKey( spep_2-3 + 92, 1, -9.9 );
setRotateKey( spep_2-3 + 94, 1, -9.8 );
setRotateKey( spep_2-3 + 96, 1, -9.7 );
setRotateKey( spep_2-3 + 98, 1, -9.6 );
setRotateKey( spep_2-3 + 100, 1, -9.5 );
setRotateKey( spep_2-3 + 102, 1, -9.4 );
setRotateKey( spep_2-3 + 104, 1, -9.3 );
setRotateKey( spep_2-3 + 106, 1, -9.2 );
setRotateKey( spep_2-3 + 108, 1, -9 );
setRotateKey( spep_2-3 + 110, 1, -8.9 );
setRotateKey( spep_2-3 + 112, 1, -8.8 );
setRotateKey( spep_2-3 + 114, 1, -8.7 );
setRotateKey( spep_2-3 + 116, 1, -8.6 );
setRotateKey( spep_2-3 + 118, 1, -8.5 );
setRotateKey( spep_2-3 + 120, 1, -8.4 );
setRotateKey( spep_2-3 + 122, 1, -8.3 );
setRotateKey( spep_2-3 + 124, 1, -8.2 );
setRotateKey( spep_2-3 + 126, 1, -8 );
setRotateKey( spep_2-1 + 128, 1, -7.9 );

--敵の動き
setDisp( spep_2-3 + 400, 1, 1);
setDisp( spep_2-1 + 402, 1, 0);

changeAnime( spep_2-3 + 400, 1, 106);

setMoveKey( spep_2-3 + 400, 1, 29.6, -113.9 , 0 );
setMoveKey( spep_2-1 + 402, 1, 29.6, -113.9 , 0 );

setScaleKey( spep_2-3 + 400, 1, 2.5, 2.5 );
setScaleKey( spep_2-1 + 402, 1, 2.5, 2.5 );

setRotateKey( spep_2-3 + 400, 1, -30 );
setRotateKey( spep_2-1 + 402, 1, -30 );

--敵の動き
setDisp( spep_2-3 + 406, 1, 1);
setDisp( spep_2-1 + 412, 1, 0);

changeAnime( spep_2-3 + 406, 1, 106);

setBlendColor(spep_2-3 + 406,1,2,0,0,0,1);

setMoveKey( spep_2-3 + 406, 1, 29.6, -113.9 , 0 );
setMoveKey( spep_2-3 + 408, 1, 74.7, -49.8 , 0 );
setMoveKey( spep_2-3 + 410, 1, 74.7, -23.2 , 0 );
setMoveKey( spep_2-1 + 412, 1, 74.7, 3.5 , 0 );

setScaleKey( spep_2-3 + 406, 1, 2.5, 2.5 );
setScaleKey( spep_2-3 + 408, 1, 4.49, 4.49 );
setScaleKey( spep_2-3 + 410, 1, 4.63, 4.63 );
setScaleKey( spep_2-1 + 412, 1, 4.77, 4.77 );

setRotateKey( spep_2-3 + 406, 1, -30 );
setRotateKey( spep_2-1 + 412, 1, -30 );


--SE
playSe( spep_2 + 32, 1003 );--斬る
playSe( spep_2 + 38, 1142 );--斬る
playSe( spep_2 + 38, 1141 );--斬る
setSeVolume( spep_2 + 38, 1141, 91 );
playSe( spep_2 + 38, 1061 );--斬る
setSeVolume( spep_2 + 38, 1061, 79 );
playSe( spep_2 + 44, 1032 );--斬る
setSeVolume( spep_2 + 44, 1032, 80 );
playSe( spep_2 + 50, 1031 );--斬る
setSeVolume( spep_2 + 50, 1031, 62 );
se_1168 = playSe( spep_2 + 50, 1168 );--砂煙
setSeVolume( spep_2 + 50, 1168, 0 );
setSeVolume( spep_2 + 50, 1168, 0 );
setSeVolume( spep_2 + 51, 1168, 1.1 );
setSeVolume( spep_2 + 52, 1168, 2.2 );
setSeVolume( spep_2 + 53, 1168, 3.3 );
setSeVolume( spep_2 + 54, 1168, 4.4 );
setSeVolume( spep_2 + 55, 1168, 5.5 );
setSeVolume( spep_2 + 56, 1168, 6.6 );
setSeVolume( spep_2 + 57, 1168, 7.7 );
setSeVolume( spep_2 + 58, 1168, 8.8 );
setSeVolume( spep_2 + 59, 1168, 9.9 );
setSeVolume( spep_2 + 60, 1168, 11 );
playSe( spep_2 + 56, 1002 );--砂煙
setSeVolume( spep_2 + 56, 1002, 52 );
playSe( spep_2 + 152, 1003 );--剣振りかぶる
se_1233 = playSe( spep_2 + 228, 1233 );--握り直す
playSe( spep_2 + 232, 1006 );--握り直す
setSeVolume( spep_2 + 232, 1006, 68 );
playSe( spep_2 + 240, 1018 );--顔カットイン
se_1183 = playSe( spep_2 + 294, 1183 );--斬りかかる
setSeVolume( spep_2 + 294, 1183, 0 );
setSeVolume( spep_2 + 324, 1183, 0 );
setSeVolume( spep_2 + 325, 1183, 9.09 );
setSeVolume( spep_2 + 326, 1183, 18.18 );
setSeVolume( spep_2 + 327, 1183, 27.27 );
setSeVolume( spep_2 + 328, 1183, 36.36 );
setSeVolume( spep_2 + 329, 1183, 45.45 );
setSeVolume( spep_2 + 330, 1183, 54.55 );
setSeVolume( spep_2 + 331, 1183, 63.64 );
setSeVolume( spep_2 + 332, 1183, 72.73 );
setSeVolume( spep_2 + 333, 1183, 81.82 );
setSeVolume( spep_2 + 334, 1183, 90.91 );
setSeVolume( spep_2 + 335, 1183, 100 );
--playSe( spep_2 + 298, 1175 );--余韻
--setSeVolume( spep_2 + 298, 1175, 0 );
se_0009 = playSe( spep_2 + 322, 9 );--斬りかかる
setSeVolume( spep_2 + 322, 9, 68 );
se_1116 = playSe( spep_2 + 322, 1116 );--斬りかかる
playSe( spep_2 + 322, 1182 );--斬りかかる
setSeVolume( spep_2 + 322, 1182, 0 );
setSeVolume( spep_2 + 323, 1182, 9.09 );
setSeVolume( spep_2 + 324, 1182, 18.18 );
setSeVolume( spep_2 + 325, 1182, 27.27 );
setSeVolume( spep_2 + 326, 1182, 36.36 );
setSeVolume( spep_2 + 327, 1182, 45.45 );
setSeVolume( spep_2 + 328, 1182, 54.55 );
setSeVolume( spep_2 + 329, 1182, 63.64 );
setSeVolume( spep_2 + 330, 1182, 72.73 );
setSeVolume( spep_2 + 331, 1182, 81.82 );
setSeVolume( spep_2 + 332, 1182, 90.91 );
setSeVolume( spep_2 + 333, 1182, 100 );
playSe( spep_2 + 394, 1004 );--ラスト斬り
playSe( spep_2 + 400, 1137 );--ラスト斬り
se_1126 = playSe( spep_2 + 400, 1126 );--ラスト斬り
setSeVolume( spep_2 + 400, 1126, 130 );
se_1172 = playSe( spep_2 + 404, 1172 );--ラスト斬り
setSeVolume( spep_2 + 404, 1172, 120 );
playSe( spep_2 + 404, 1026 );--ラスト斬り
setSeVolume( spep_2 + 404, 1026, 130 );

--[[
playSe( spep_2 + 406, 1032 );--ラスト斬り
setSeVolume( spep_2 + 406, 1032, 72 );
]]

playSe( spep_2 + 406, 1143 );--ラスト斬り
setSeVolume( spep_2 + 406, 1143, 130 );
--playSe( spep_2 + 408, 1168 );--余韻
--setSeVolume( spep_2 + 408, 1168, 0 );

--[[
playSe( spep_2 + 410, 1031 );--ラスト斬り
setSeVolume( spep_2 + 410, 1031, 79 );
]]

stopSe( spep_2 + 35, se_11161, 20 );
stopSe( spep_2 + 128, se_1168, 116 );
stopSe( spep_2 + 248, se_1233, 0 );
stopSe( spep_2 + 365, se_1183, 48 );
stopSe( spep_2 + 344, se_0009, 90 );
stopSe( spep_2 + 355, se_1116, 18 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 424, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_2+408 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 420;
------------------------------------------------------
-- 剣を振りきって土煙
------------------------------------------------------
-- ** エフェクト等 ** --
smoke = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, smoke, 0, 0, 0 );
setEffMoveKey( spep_3 + 96, smoke, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, smoke, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, smoke, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, smoke, 0 );
setEffRotateKey( spep_3 + 96, smoke, 0 );
setEffAlphaKey( spep_3 + 0, smoke, 255 );
setEffAlphaKey( spep_3 + 96, smoke, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_3-3 + 12,  10012, 14, 0x100, -1, 0, 35.9, 164.3 );--ズオッ

setEffMoveKey( spep_3-3 + 12, ctzuo, 35.9, 164.3 , 0 );
setEffMoveKey( spep_3-3 + 14, ctzuo, -4.2, 224.4 , 0 );
setEffMoveKey( spep_3-3 + 16, ctzuo, -44.3, 284.3 , 0 );
setEffMoveKey( spep_3-3 + 18, ctzuo, -49.7, 316.3 , 0 );
setEffMoveKey( spep_3-3 + 20, ctzuo, -55, 348.4 , 0 );
setEffMoveKey( spep_3-3 + 22, ctzuo, -60.4, 380.4 , 0 );
setEffMoveKey( spep_3-3 + 24, ctzuo, -80.4, 420.4 , 0 );
setEffMoveKey( spep_3-3 + 26, ctzuo, -100.4, 460.4 , 0 );

setEffScaleKey( spep_3-3 + 12, ctzuo, 1.91, 1.91 );
setEffScaleKey( spep_3-3 + 14, ctzuo, 2.63, 2.63 );
setEffScaleKey( spep_3-3 + 16, ctzuo, 3.36, 3.36 );
setEffScaleKey( spep_3-3 + 18, ctzuo, 3.51, 3.51 );
setEffScaleKey( spep_3-3 + 20, ctzuo, 3.66, 3.66 );
setEffScaleKey( spep_3-3 + 22, ctzuo, 3.81, 3.81 );
setEffScaleKey( spep_3-3 + 24, ctzuo, 4.04, 4.04 );
setEffScaleKey( spep_3-3 + 26, ctzuo, 4.27, 4.27 );

setEffRotateKey( spep_3-3 + 12, ctzuo, 0 );
setEffRotateKey( spep_3-3 + 26, ctzuo, 0 );

setEffAlphaKey( spep_3-3 + 12, ctzuo, 255 );
setEffAlphaKey( spep_3-3 + 22, ctzuo, 255 );
setEffAlphaKey( spep_3-3 + 24, ctzuo, 128 );
setEffAlphaKey( spep_3-3 + 26, ctzuo, 0 );

--SE
SEEX=playSe( spep_3+77, 1175 );--余韻
setStartTimeMs(SEEX,196);
setSeVolume( spep_3 + 77, 1175, 0 );--余韻
setSeVolume( spep_3 + 78, 1175, 1.78 );
setSeVolume( spep_3 + 79, 1175, 3.56 );
setSeVolume( spep_3 + 80, 1175, 5.33 );
setSeVolume( spep_3 + 81, 1175, 7.11 );
setSeVolume( spep_3 + 82, 1175, 8.89 );
setSeVolume( spep_3 + 83, 1175, 10.67 );
setSeVolume( spep_3 + 84, 1175, 12.44 );
setSeVolume( spep_3 + 85, 1175, 14.22 );
setSeVolume( spep_3 + 86, 1175, 16.00 );
setSeVolume( spep_3 + 87, 1175, 17.78 );
setSeVolume( spep_3 + 88, 1175, 19.56 );
setSeVolume( spep_3 + 89, 1175, 21.33 );
setSeVolume( spep_3 + 90, 1175, 23.11 );
setSeVolume( spep_3 + 91, 1175, 24.89 );
setSeVolume( spep_3 + 92, 1175, 26.67 );
setSeVolume( spep_3 + 93, 1175, 28.44 );
setSeVolume( spep_3 + 94, 1175, 30.22 );
setSeVolume( spep_3 + 95, 1175, 32.00 );

SEEX2=playSe( spep_3 + 18, 1168 );--余韻
setStartTimeMs(SEEX2,42);
setSeVolume( spep_3 + 18, 1168, 0 );--余韻
setSeVolume( spep_3 + 19, 1168, 0.69 );
setSeVolume( spep_3 + 20, 1168, 1.38 );
setSeVolume( spep_3 + 21, 1168, 2.07 );
setSeVolume( spep_3 + 22, 1168, 2.76 );
setSeVolume( spep_3 + 23, 1168, 3.45 );
setSeVolume( spep_3 + 24, 1168, 4.14 );
setSeVolume( spep_3 + 25, 1168, 4.83 );
setSeVolume( spep_3 + 26, 1168, 5.52 );
setSeVolume( spep_3 + 27, 1168, 6.21 );
setSeVolume( spep_3 + 28, 1168, 6.90 );
setSeVolume( spep_3 + 29, 1168, 7.60 );
setSeVolume( spep_3 + 30, 1168, 8.29 );
setSeVolume( spep_3 + 31, 1168, 8.98 );
setSeVolume( spep_3 + 32, 1168, 9.67 );
setSeVolume( spep_3 + 33, 1168, 10.36 );
setSeVolume( spep_3 + 34, 1168, 11.05 );
setSeVolume( spep_3 + 35, 1168, 11.74 );
setSeVolume( spep_3 + 36, 1168, 12.43 );
setSeVolume( spep_3 + 37, 1168, 13.12 );
setSeVolume( spep_3 + 38, 1168, 13.81 );
setSeVolume( spep_3 + 39, 1168, 14.50 );
setSeVolume( spep_3 + 40, 1168, 15.19 );
setSeVolume( spep_3 + 41, 1168, 15.88 );
setSeVolume( spep_3 + 42, 1168, 16.57 );
setSeVolume( spep_3 + 43, 1168, 17.26 );
setSeVolume( spep_3 + 44, 1168, 17.95 );
setSeVolume( spep_3 + 45, 1168, 18.64 );
setSeVolume( spep_3 + 46, 1168, 19.33 );
setSeVolume( spep_3 + 47, 1168, 20.02 );
setSeVolume( spep_3 + 48, 1168, 20.71 );
setSeVolume( spep_3 + 49, 1168, 21.40 );
setSeVolume( spep_3 + 50, 1168, 22.10 );
setSeVolume( spep_3 + 51, 1168, 22.79 );
setSeVolume( spep_3 + 52, 1168, 23.48 );
setSeVolume( spep_3 + 53, 1168, 24.17 );
setSeVolume( spep_3 + 54, 1168, 24.86 );
setSeVolume( spep_3 + 55, 1168, 25.55 );
setSeVolume( spep_3 + 56, 1168, 26.24 );
setSeVolume( spep_3 + 57, 1168, 26.93 );
setSeVolume( spep_3 + 58, 1168, 27.62 );
setSeVolume( spep_3 + 59, 1168, 28.31 );
setSeVolume( spep_3 + 60, 1168, 29 );


--playSe( spep_3 + 0, 1072 );--砂埃

se_1044 = playSe( spep_3 + 4, 1044 );--砂埃
setSeVolume( spep_3 + 4, 1044, 0 );
setSeVolume( spep_3 + 4, 1044, 0 );
setSeVolume( spep_3 + 5, 1044, 7.42 );
setSeVolume( spep_3 + 6, 1044, 14.84 );
setSeVolume( spep_3 + 7, 1044, 22.26 );
setSeVolume( spep_3 + 8, 1044, 29.68 );
setSeVolume( spep_3 + 9, 1044, 37.11 );
setSeVolume( spep_3 + 10, 1044, 44.53 );
setSeVolume( spep_3 + 11, 1044, 51.95 );
setSeVolume( spep_3 + 12, 1044, 59.37 );
setSeVolume( spep_3 + 13, 1044, 66.79 );
setSeVolume( spep_3 + 14, 1044, 74.21 );
setSeVolume( spep_3 + 15, 1044, 81.63 );
setSeVolume( spep_3 + 16, 1044, 89.05 );
setSeVolume( spep_3 + 17, 1044, 96.47 );
setSeVolume( spep_3 + 18, 1044, 103.89 );
setSeVolume( spep_3 + 19, 1044, 111.32 );
setSeVolume( spep_3 + 20, 1044, 118.74 );
setSeVolume( spep_3 + 21, 1044, 126.16 );
setSeVolume( spep_3 + 22, 1044, 133.58 );
setSeVolume( spep_3 + 23, 1044, 141 );

playSe( spep_3 + 4, 1024 );--砂埃
setSeVolume( spep_3 + 4, 1024, 0 );
setSeVolume( spep_3 + 7, 1024, 0 );
setSeVolume( spep_3 + 8, 1024, 1.81 );
setSeVolume( spep_3 + 9, 1024, 3.61 );
setSeVolume( spep_3 + 10, 1024, 5.42 );
setSeVolume( spep_3 + 11, 1024, 7.22 );
setSeVolume( spep_3 + 12, 1024, 9.03 );
setSeVolume( spep_3 + 13, 1024, 10.83 );
setSeVolume( spep_3 + 14, 1024, 12.64 );
setSeVolume( spep_3 + 15, 1024, 14.44 );
setSeVolume( spep_3 + 16, 1024, 16.25 );
setSeVolume( spep_3 + 17, 1024, 18.06 );
setSeVolume( spep_3 + 18, 1024, 19.86 );
setSeVolume( spep_3 + 19, 1024, 21.67 );
setSeVolume( spep_3 + 20, 1024, 23.47 );
setSeVolume( spep_3 + 21, 1024, 25.28 );
setSeVolume( spep_3 + 22, 1024, 27.08 );
setSeVolume( spep_3 + 23, 1024, 28.89 );
setSeVolume( spep_3 + 24, 1024, 30.69 );
setSeVolume( spep_3 + 25, 1024, 32.5 );
setSeVolume( spep_3 + 26, 1024, 34.31 );
setSeVolume( spep_3 + 27, 1024, 36.11 );
setSeVolume( spep_3 + 28, 1024, 37.92 );
setSeVolume( spep_3 + 29, 1024, 39.72 );
setSeVolume( spep_3 + 30, 1024, 41.53 );
setSeVolume( spep_3 + 31, 1024, 43.33 );
setSeVolume( spep_3 + 32, 1024, 45.14 );
setSeVolume( spep_3 + 33, 1024, 46.94 );
setSeVolume( spep_3 + 34, 1024, 48.75 );
setSeVolume( spep_3 + 35, 1024, 50.56 );
setSeVolume( spep_3 + 36, 1024, 52.36 );
setSeVolume( spep_3 + 37, 1024, 54.17 );
setSeVolume( spep_3 + 38, 1024, 55.97 );
setSeVolume( spep_3 + 39, 1024, 57.78 );
setSeVolume( spep_3 + 40, 1024, 59.58 );
setSeVolume( spep_3 + 41, 1024, 61.39 );
setSeVolume( spep_3 + 42, 1024, 63.19 );
setSeVolume( spep_3 + 43, 1024, 65 );


se_1213 = playSe( spep_3 + 4, 1213 );--砂埃
setSeVolume( spep_3 + 4, 1213, 0 );
setSeVolume( spep_3 + 5, 1213, 1.97 );
setSeVolume( spep_3 + 6, 1213, 3.95 );
setSeVolume( spep_3 + 7, 1213, 5.92 );
setSeVolume( spep_3 + 8, 1213, 7.89 );
setSeVolume( spep_3 + 9, 1213, 9.86 );
setSeVolume( spep_3 + 10, 1213, 11.84 );
setSeVolume( spep_3 + 11, 1213, 13.81 );
setSeVolume( spep_3 + 12, 1213, 15.78 );
setSeVolume( spep_3 + 13, 1213, 17.76 );
setSeVolume( spep_3 + 14, 1213, 19.73 );
setSeVolume( spep_3 + 15, 1213, 21.70 );
setSeVolume( spep_3 + 16, 1213, 23.68 );
setSeVolume( spep_3 + 17, 1213, 25.65 );
setSeVolume( spep_3 + 18, 1213, 27.62 );
setSeVolume( spep_3 + 19, 1213, 29.59 );
setSeVolume( spep_3 + 20, 1213, 31.57 );
setSeVolume( spep_3 + 21, 1213, 33.54 );
setSeVolume( spep_3 + 22, 1213, 35.51 );
setSeVolume( spep_3 + 23, 1213, 37.49 );
setSeVolume( spep_3 + 24, 1213, 39.46 );
setSeVolume( spep_3 + 25, 1213, 41.43 );
setSeVolume( spep_3 + 26, 1213, 43.41 );
setSeVolume( spep_3 + 27, 1213, 45.38 );
setSeVolume( spep_3 + 28, 1213, 47.35 );
setSeVolume( spep_3 + 29, 1213, 49.32 );
setSeVolume( spep_3 + 30, 1213, 51.3 );
setSeVolume( spep_3 + 31, 1213, 53.27 );
setSeVolume( spep_3 + 32, 1213, 55.24 );
setSeVolume( spep_3 + 33, 1213, 57.22 );
setSeVolume( spep_3 + 34, 1213, 59.19 );
setSeVolume( spep_3 + 35, 1213, 61.16 );
setSeVolume( spep_3 + 36, 1213, 63.14 );
setSeVolume( spep_3 + 37, 1213, 65.11 );
setSeVolume( spep_3 + 38, 1213, 67.08 );
setSeVolume( spep_3 + 39, 1213, 69.05 );
setSeVolume( spep_3 + 40, 1213, 71.03 );
setSeVolume( spep_3 + 41, 1213, 73 );

playSe( spep_3 + 12, 1182 );--砂埃
setSeVolume( spep_3 + 12, 1182, 0 );
setSeVolume( spep_3 + 13, 1182, 7.44 );
setSeVolume( spep_3 + 14, 1182, 14.88 );
setSeVolume( spep_3 + 15, 1182, 22.31 );
setSeVolume( spep_3 + 16, 1182, 29.75 );
setSeVolume( spep_3 + 17, 1182, 37.19 );
setSeVolume( spep_3 + 18, 1182, 44.63 );
setSeVolume( spep_3 + 19, 1182, 52.06 );
setSeVolume( spep_3 + 20, 1182, 59.5 );
setSeVolume( spep_3 + 21, 1182, 66.94 );
setSeVolume( spep_3 + 22, 1182, 74.38 );
setSeVolume( spep_3 + 23, 1182, 81.81 );
setSeVolume( spep_3 + 24, 1182, 89.25 );
setSeVolume( spep_3 + 25, 1182, 96.69 );
setSeVolume( spep_3 + 26, 1182, 104.13 );
setSeVolume( spep_3 + 27, 1182, 111.56 );
setSeVolume( spep_3 + 28, 1182, 119 );


stopSe( spep_3 + 2, se_1126, 44 );
stopSe( spep_3 + 14, se_1172, 36 );
stopSe( spep_3 + 40, se_1044, 61 );
stopSe( spep_3 + 51, se_1213, 49 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--敵の色を戻す
setBlendColor(spep_3+2 ,1,2,0,0,0,0);

-- ** 次の準備 ** --
spep_4 = spep_3 + 96;

------------------------------------------------------
-- 顔のアップ
------------------------------------------------------
-- ** エフェクト等 ** --
smoke = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, smoke, 0, 0, 0 );
setEffMoveKey( spep_4 + 144, smoke, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, smoke, 1.0, 1.0 );
setEffScaleKey( spep_4 + 144, smoke, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, smoke, 0 );
setEffRotateKey( spep_4 + 144, smoke, 0 );
setEffAlphaKey( spep_4 + 0, smoke, 255 );
setEffAlphaKey( spep_4 + 144, smoke, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 148, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 20 );
endPhase( spep_4 + 130 );
else 

------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 剣をキャッチ〜ポーズ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
pose = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, pose, 0, 0, 0 );
setEffMoveKey( spep_0 + 170, pose, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, pose, -1.0, 1.0 );
setEffScaleKey( spep_0 + 170, pose, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, pose, 0 );
setEffRotateKey( spep_0 + 170, pose, 0 );
setEffAlphaKey( spep_0 + 0, pose, 255 );
setEffAlphaKey( spep_0 + 170, pose, 255 );

--文字エントリー
ctga = entryEffectLife( spep_0-3 + 72,  10005, 14, 0x100, -1, 0, -88, 216 );--ガッ

setEffMoveKey( spep_0-3 + 72, ctga, -88, 216 , 0 );
setEffMoveKey( spep_0-3 + 74, ctga, -88, 275.9 , 0 );
setEffMoveKey( spep_0-3 + 76, ctga, -88, 335.8 , 0 );
setEffMoveKey( spep_0-3 + 82, ctga, -88, 335.8 , 0 );
setEffMoveKey( spep_0-3 + 84, ctga, -92, 341.8 , 0 );
setEffMoveKey( spep_0-3 + 86, ctga, -96.1, 347.8 , 0 );

setEffScaleKey( spep_0-3 + 72, ctga, 1.9, 1.9 );
setEffScaleKey( spep_0-3 + 74, ctga, 2.67, 2.67 );
setEffScaleKey( spep_0-3 + 76, ctga, 3.43, 3.43 );
setEffScaleKey( spep_0-3 + 82, ctga, 3.43, 3.43 );
setEffScaleKey( spep_0-3 + 84, ctga, 3.61, 3.61 );
setEffScaleKey( spep_0-3 + 86, ctga, 3.79, 3.79 );

setEffRotateKey( spep_0-3 + 72, ctga, -23.7 );
setEffRotateKey( spep_0-3 + 86, ctga, -23.7 );

setEffAlphaKey( spep_0-3 + 72, ctga, 255 );
setEffAlphaKey( spep_0-3 + 82, ctga, 255 );
setEffAlphaKey( spep_0-3 + 84, ctga, 128 );
setEffAlphaKey( spep_0-3 + 86, ctga, 0 );

--SE
playSe( spep_0 + 2, 1151 );--ソードくるくる
se_0063 = playSe( spep_0 + 4, 63 );--ソードくるくる
playSe( spep_0 + 4, 1003 );--ソードくるくる
playSe( spep_0 + 10, 1151 );--ソードくるくる
se_1003_1 = playSe( spep_0 + 12, 1003 );--ソードくるくる
setSeVolume( spep_0 + 12, 1003, 91 );
se_1151_1 = playSe( spep_0 + 20, 1151 );--ソードくるくる
playSe( spep_0 + 20, 1003 );--ソードくるくる
setSeVolume( spep_0 + 20, 1003, 85 );
playSe( spep_0 + 30, 1003 );--ソードくるくる
setSeVolume( spep_0 + 30, 1003, 93 );
playSe( spep_0 + 32, 1151 );--ソードくるくる

playSe( spep_0 + 38, 1003 );--ソードくるくる
setSeVolume( spep_0 + 38, 1003, 52 );
playSe( spep_0 + 48, 1003 );--ソードくるくる
setSeVolume( spep_0 + 48, 1003, 42 );
playSe( spep_0 + 56, 1003 );--ソードくるくる
setSeVolume( spep_0 + 56, 1003, 35 );
playSe( spep_0 + 72, 1006 );--ソードキャッチ
se_1192 = playSe( spep_0 + 72, 1192 );--ソードキャッチ
setSeVolume( spep_0 + 72, 1192, 209 );
playSe( spep_0 + 104, 44 );--カメラズームアウト

stopSe( spep_0 + 28, se_1003_1, 2);
stopSe( spep_0 + 28, se_1151_1, 4);
stopSe( spep_0 + 78, se_0063, 0 );
stopSe( spep_0 + 83, se_1192, 6 );


-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 174, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_0+158 , 0, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1=spep_0+170;

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

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1 + 80, 6, 12, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 落下しつつ斬りつけ〜水平に斬りつける
------------------------------------------------------

-- ** エフェクト等 ** --
slash_f = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, slash_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 420, slash_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, slash_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 420, slash_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, slash_f, 0 );
setEffRotateKey( spep_2 + 420, slash_f, 0 );
setEffAlphaKey( spep_2 + 0, slash_f, 255 );
setEffAlphaKey( spep_2 + 420, slash_f, 255 );

-- ** エフェクト等 ** --
slash_b = entryEffect( spep_2 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, slash_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 420, slash_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, slash_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 420, slash_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, slash_b, 0 );
setEffRotateKey( spep_2 + 420, slash_b, 0 );
setEffAlphaKey( spep_2 + 0, slash_b, 255 );
setEffAlphaKey( spep_2 + 420, slash_b, 255 );

--SE
se_11161 = playSe( spep_2 + 0, 1116 );--ジャンプ
SE0=playSe( spep_2 + 0, 1117 );--ジャンプ

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 24; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, se_11161, 0 );

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
--speff = entryEffect( spep_2+228  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_2+228  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- 文字エントリー --
ctgogo = entryEffectLife( spep_2 +240, 190006, 72, 0x102, -1, 0, 100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_2 +240,  ctgogo,  100,  510);
setEffMoveKey(  spep_2 +312,  ctgogo,  100,  510);

setEffAlphaKey( spep_2 +240, ctgogo, 0 );
setEffAlphaKey( spep_2 + 241, ctgogo, 255 );
setEffAlphaKey( spep_2 + 242, ctgogo, 255 );
setEffAlphaKey( spep_2 + 306, ctgogo, 255 );
setEffAlphaKey( spep_2 + 308, ctgogo, 191 );
setEffAlphaKey( spep_2 + 310, ctgogo, 112 );
setEffAlphaKey( spep_2 + 312, ctgogo, 64 );

setEffRotateKey(  spep_2 +240,  ctgogo,  0);
setEffRotateKey(  spep_2 +312,  ctgogo,  0);

setEffScaleKey(  spep_2 +240,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 +302,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 +312,  ctgogo, -1.07, 1.07 );

--敵の動き
setDisp( spep_2-3 + 52, 1, 1);
setDisp( spep_2-1 + 128, 1, 0);

changeAnime( spep_2-3 + 52, 1, 108);
changeAnime( spep_2-3 + 54, 1, 106);

setMoveKey( spep_2-3 + 52, 1, 125.7, -29 , 0 );
setMoveKey( spep_2-3 + 53, 1, 125.7, -29 , 0 );

setMoveKey( spep_2-3 + 54, 1, 139.6, 12.8 , 0 );
setMoveKey( spep_2-3 + 56, 1, 140.6, 12.1 , 0 );
setMoveKey( spep_2-3 + 58, 1, 185.9, -18.3 , 0 );
setMoveKey( spep_2-3 + 60, 1, 201.2, 16.9 , 0 );
setMoveKey( spep_2-3 + 62, 1, 254.6, -8.8 , 0 );
setMoveKey( spep_2-3 + 64, 1, 262.4, 9.4 , 0 );
setMoveKey( spep_2-3 + 66, 1, 274.9, -3.3 , 0 );
setMoveKey( spep_2-3 + 68, 1, 266.8, -11.3 , 0 );
setMoveKey( spep_2-3 + 70, 1, 275.1, 0.9 , 0 );
setMoveKey( spep_2-3 + 72, 1, 430, 18.4 , 0 );
setMoveKey( spep_2-3 + 73, 1, 430, 18.4 , 0 );
setMoveKey( spep_2-3 + 74, 1, 156.4, -74.7 , 0 );
setMoveKey( spep_2-3 + 76, 1, 166.1, -78 , 0 );
setMoveKey( spep_2-3 + 78, 1, 174.2, -72.9 , 0 );
setMoveKey( spep_2-3 + 80, 1, 170.8, -74.7 , 0 );
setMoveKey( spep_2-3 + 82, 1, 181.6, -72.3 , 0 );
setMoveKey( spep_2-3 + 84, 1, 192.5, -74.6 , 0 );
setMoveKey( spep_2-3 + 86, 1, 200.6, -75.2 , 0 );
setMoveKey( spep_2-3 + 88, 1, 208.6, -68.6 , 0 );
setMoveKey( spep_2-3 + 90, 1, 213.4, -74.9 , 0 );
setMoveKey( spep_2-3 + 92, 1, 219.8, -76.9 , 0 );
setMoveKey( spep_2-3 + 94, 1, 231.4, -72.8 , 0 );
setMoveKey( spep_2-3 + 96, 1, 243.7, -68.8 , 0 );
setMoveKey( spep_2-3 + 98, 1, 246, -74.8 , 0 );
setMoveKey( spep_2-3 + 100, 1, 253.5, -77.1 , 0 );
setMoveKey( spep_2-3 + 102, 1, 260.1, -84.3 , 0 );
setMoveKey( spep_2-3 + 104, 1, 266.3, -73.5 , 0 );
setMoveKey( spep_2-3 + 106, 1, 278.5, -78.4 , 0 );
setMoveKey( spep_2-3 + 108, 1, 290.8, -83.5 , 0 );
setMoveKey( spep_2-3 + 110, 1, 283.4, -80.4 , 0 );
setMoveKey( spep_2-3 + 112, 1, 306.7, -86 , 0 );
setMoveKey( spep_2-3 + 114, 1, 301.2, -85.6 , 0 );
setMoveKey( spep_2-3 + 116, 1, 318.8, -76.7 , 0 );
setMoveKey( spep_2-3 + 118, 1, 323.4, -79.7 , 0 );
setMoveKey( spep_2-3 + 120, 1, 331.8, -83.1 , 0 );
setMoveKey( spep_2-3 + 122, 1, 343.1, -78.9 , 0 );
setMoveKey( spep_2-3 + 124, 1, 348.3, -79.6 , 0 );
setMoveKey( spep_2-3 + 126, 1, 353.3, -80.3 , 0 );
setMoveKey( spep_2-1 + 128, 1, 365.7, -76.3 , 0 );

a1 = 0.07;
setScaleKey( spep_2-3 + 52, 1, 1.25 +a1, 1.25 +a1 );
setScaleKey( spep_2-3 + 53, 1, 1.25 +a1, 1.25 +a1 );

setScaleKey( spep_2-3 + 54, 1, 1.25 +a1, 1.25 +a1 );
setScaleKey( spep_2-3 + 70, 1, 1.25 +a1, 1.25 +a1 );
setScaleKey( spep_2-3 + 72, 1, 1.79 +a1, 1.79 +a1 );
setScaleKey( spep_2-3 + 73, 1, 1.79 +a1, 1.79 +a1 );
setScaleKey( spep_2-3 + 74, 1, 0.55 +a1, 0.55 +a1 );
setScaleKey( spep_2-1 + 128, 1, 0.55 +a1, 0.55 +a1 );

setRotateKey( spep_2-3 + 52, 1, 7.8 );
setRotateKey( spep_2-3 + 53, 1, 7.8 );

setRotateKey( spep_2-3 + 54, 1, -31.2 );
setRotateKey( spep_2-3 + 56, 1, -31.2 );
setRotateKey( spep_2-3 + 58, 1, -20.5 );
setRotateKey( spep_2-3 + 60, 1, -17.2 );
setRotateKey( spep_2-3 + 62, 1, -15.1 );
setRotateKey( spep_2-3 + 64, 1, -13.7 );
setRotateKey( spep_2-3 + 66, 1, -12.8 );
setRotateKey( spep_2-3 + 68, 1, -12.3 );
setRotateKey( spep_2-3 + 70, 1, -12 );
setRotateKey( spep_2-3 + 72, 1, -11.9 );
setRotateKey( spep_2-3 + 73, 1, -11.9 );
setRotateKey( spep_2-3 + 74, 1, -10.9 );
setRotateKey( spep_2-3 + 76, 1, -10.8 );
setRotateKey( spep_2-3 + 78, 1, -10.7 );
setRotateKey( spep_2-3 + 80, 1, -10.6 );
setRotateKey( spep_2-3 + 82, 1, -10.5 );
setRotateKey( spep_2-3 + 84, 1, -10.4 );
setRotateKey( spep_2-3 + 86, 1, -10.3 );
setRotateKey( spep_2-3 + 88, 1, -10.2 );
setRotateKey( spep_2-3 + 90, 1, -10.1 );
setRotateKey( spep_2-3 + 92, 1, -9.9 );
setRotateKey( spep_2-3 + 94, 1, -9.8 );
setRotateKey( spep_2-3 + 96, 1, -9.7 );
setRotateKey( spep_2-3 + 98, 1, -9.6 );
setRotateKey( spep_2-3 + 100, 1, -9.5 );
setRotateKey( spep_2-3 + 102, 1, -9.4 );
setRotateKey( spep_2-3 + 104, 1, -9.3 );
setRotateKey( spep_2-3 + 106, 1, -9.2 );
setRotateKey( spep_2-3 + 108, 1, -9 );
setRotateKey( spep_2-3 + 110, 1, -8.9 );
setRotateKey( spep_2-3 + 112, 1, -8.8 );
setRotateKey( spep_2-3 + 114, 1, -8.7 );
setRotateKey( spep_2-3 + 116, 1, -8.6 );
setRotateKey( spep_2-3 + 118, 1, -8.5 );
setRotateKey( spep_2-3 + 120, 1, -8.4 );
setRotateKey( spep_2-3 + 122, 1, -8.3 );
setRotateKey( spep_2-3 + 124, 1, -8.2 );
setRotateKey( spep_2-3 + 126, 1, -8 );
setRotateKey( spep_2-1 + 128, 1, -7.9 );

--敵の動き
setDisp( spep_2-3 + 400, 1, 1);
setDisp( spep_2-1 + 402, 1, 0);

changeAnime( spep_2-3 + 400, 1, 106);

setMoveKey( spep_2-3 + 400, 1, 29.6, -113.9 , 0 );
setMoveKey( spep_2-1 + 402, 1, 29.6, -113.9 , 0 );

setScaleKey( spep_2-3 + 400, 1, 2.5, 2.5 );
setScaleKey( spep_2-1 + 402, 1, 2.5, 2.5 );

setRotateKey( spep_2-3 + 400, 1, -30 );
setRotateKey( spep_2-1 + 402, 1, -30 );

--敵の動き
setDisp( spep_2-3 + 406, 1, 1);
setDisp( spep_2-1 + 412, 1, 0);

changeAnime( spep_2-3 + 406, 1, 106);

setBlendColor(spep_2-3 + 406,1,2,0,0,0,1);

setMoveKey( spep_2-3 + 406, 1, 29.6, -113.9 , 0 );
setMoveKey( spep_2-3 + 408, 1, 74.7, -49.8 , 0 );
setMoveKey( spep_2-3 + 410, 1, 74.7, -23.2 , 0 );
setMoveKey( spep_2-1 + 412, 1, 74.7, 3.5 , 0 );

setScaleKey( spep_2-3 + 406, 1, 2.5, 2.5 );
setScaleKey( spep_2-3 + 408, 1, 4.49, 4.49 );
setScaleKey( spep_2-3 + 410, 1, 4.63, 4.63 );
setScaleKey( spep_2-1 + 412, 1, 4.77, 4.77 );

setRotateKey( spep_2-3 + 406, 1, -30 );
setRotateKey( spep_2-1 + 412, 1, -30 );


--SE
playSe( spep_2 + 32, 1003 );--斬る
playSe( spep_2 + 38, 1142 );--斬る
playSe( spep_2 + 38, 1141 );--斬る
setSeVolume( spep_2 + 38, 1141, 91 );
playSe( spep_2 + 38, 1061 );--斬る
setSeVolume( spep_2 + 38, 1061, 79 );
playSe( spep_2 + 44, 1032 );--斬る
setSeVolume( spep_2 + 44, 1032, 80 );
playSe( spep_2 + 50, 1031 );--斬る
setSeVolume( spep_2 + 50, 1031, 62 );
se_1168 = playSe( spep_2 + 50, 1168 );--砂煙
setSeVolume( spep_2 + 50, 1168, 0 );
setSeVolume( spep_2 + 50, 1168, 0 );
setSeVolume( spep_2 + 51, 1168, 1.1 );
setSeVolume( spep_2 + 52, 1168, 2.2 );
setSeVolume( spep_2 + 53, 1168, 3.3 );
setSeVolume( spep_2 + 54, 1168, 4.4 );
setSeVolume( spep_2 + 55, 1168, 5.5 );
setSeVolume( spep_2 + 56, 1168, 6.6 );
setSeVolume( spep_2 + 57, 1168, 7.7 );
setSeVolume( spep_2 + 58, 1168, 8.8 );
setSeVolume( spep_2 + 59, 1168, 9.9 );
setSeVolume( spep_2 + 60, 1168, 11 );
playSe( spep_2 + 56, 1002 );--砂煙
setSeVolume( spep_2 + 56, 1002, 52 );
playSe( spep_2 + 152, 1003 );--剣振りかぶる
se_1233 = playSe( spep_2 + 228, 1233 );--握り直す
playSe( spep_2 + 232, 1006 );--握り直す
setSeVolume( spep_2 + 232, 1006, 68 );
playSe( spep_2 + 240, 1018 );--顔カットイン
se_1183 = playSe( spep_2 + 294, 1183 );--斬りかかる
setSeVolume( spep_2 + 294, 1183, 0 );
setSeVolume( spep_2 + 324, 1183, 0 );
setSeVolume( spep_2 + 325, 1183, 9.09 );
setSeVolume( spep_2 + 326, 1183, 18.18 );
setSeVolume( spep_2 + 327, 1183, 27.27 );
setSeVolume( spep_2 + 328, 1183, 36.36 );
setSeVolume( spep_2 + 329, 1183, 45.45 );
setSeVolume( spep_2 + 330, 1183, 54.55 );
setSeVolume( spep_2 + 331, 1183, 63.64 );
setSeVolume( spep_2 + 332, 1183, 72.73 );
setSeVolume( spep_2 + 333, 1183, 81.82 );
setSeVolume( spep_2 + 334, 1183, 90.91 );
setSeVolume( spep_2 + 335, 1183, 100 );
--playSe( spep_2 + 298, 1175 );--余韻
--setSeVolume( spep_2 + 298, 1175, 0 );
se_0009 = playSe( spep_2 + 322, 9 );--斬りかかる
setSeVolume( spep_2 + 322, 9, 68 );
se_1116 = playSe( spep_2 + 322, 1116 );--斬りかかる
playSe( spep_2 + 322, 1182 );--斬りかかる
setSeVolume( spep_2 + 322, 1182, 0 );
setSeVolume( spep_2 + 323, 1182, 9.09 );
setSeVolume( spep_2 + 324, 1182, 18.18 );
setSeVolume( spep_2 + 325, 1182, 27.27 );
setSeVolume( spep_2 + 326, 1182, 36.36 );
setSeVolume( spep_2 + 327, 1182, 45.45 );
setSeVolume( spep_2 + 328, 1182, 54.55 );
setSeVolume( spep_2 + 329, 1182, 63.64 );
setSeVolume( spep_2 + 330, 1182, 72.73 );
setSeVolume( spep_2 + 331, 1182, 81.82 );
setSeVolume( spep_2 + 332, 1182, 90.91 );
setSeVolume( spep_2 + 333, 1182, 100 );
playSe( spep_2 + 394, 1004 );--ラスト斬り
playSe( spep_2 + 400, 1137 );--ラスト斬り
se_1126 = playSe( spep_2 + 400, 1126 );--ラスト斬り
setSeVolume( spep_2 + 400, 1126, 130 );
se_1172 = playSe( spep_2 + 404, 1172 );--ラスト斬り
setSeVolume( spep_2 + 404, 1172, 120 );
playSe( spep_2 + 404, 1026 );--ラスト斬り
setSeVolume( spep_2 + 404, 1026, 130 );

--[[
playSe( spep_2 + 406, 1032 );--ラスト斬り
setSeVolume( spep_2 + 406, 1032, 72 );
]]

playSe( spep_2 + 406, 1143 );--ラスト斬り
setSeVolume( spep_2 + 406, 1143, 130 );
--playSe( spep_2 + 408, 1168 );--余韻
--setSeVolume( spep_2 + 408, 1168, 0 );

--[[
playSe( spep_2 + 410, 1031 );--ラスト斬り
setSeVolume( spep_2 + 410, 1031, 79 );
]]

stopSe( spep_2 + 35, se_11161, 20 );
stopSe( spep_2 + 128, se_1168, 116 );
stopSe( spep_2 + 248, se_1233, 0 );
stopSe( spep_2 + 365, se_1183, 48 );
stopSe( spep_2 + 344, se_0009, 90 );
stopSe( spep_2 + 355, se_1116, 18 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 424, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_2+408 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 420;
------------------------------------------------------
-- 剣を振りきって土煙
------------------------------------------------------
-- ** エフェクト等 ** --
smoke = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, smoke, 0, 0, 0 );
setEffMoveKey( spep_3 + 96, smoke, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, smoke, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, smoke, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, smoke, 0 );
setEffRotateKey( spep_3 + 96, smoke, 0 );
setEffAlphaKey( spep_3 + 0, smoke, 255 );
setEffAlphaKey( spep_3 + 96, smoke, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_3-3 + 12,  10012, 14, 0x100, -1, 0, 35.9, 164.3 );--ズオッ

setEffMoveKey( spep_3-3 + 12, ctzuo, 35.9, 164.3 , 0 );
setEffMoveKey( spep_3-3 + 14, ctzuo, -4.2, 224.4 , 0 );
setEffMoveKey( spep_3-3 + 16, ctzuo, -44.3, 284.3 , 0 );
setEffMoveKey( spep_3-3 + 18, ctzuo, -49.7, 316.3 , 0 );
setEffMoveKey( spep_3-3 + 20, ctzuo, -55, 348.4 , 0 );
setEffMoveKey( spep_3-3 + 22, ctzuo, -60.4, 380.4 , 0 );
setEffMoveKey( spep_3-3 + 24, ctzuo, -80.4, 420.4 , 0 );
setEffMoveKey( spep_3-3 + 26, ctzuo, -100.4, 460.4 , 0 );

setEffScaleKey( spep_3-3 + 12, ctzuo, 1.91, 1.91 );
setEffScaleKey( spep_3-3 + 14, ctzuo, 2.63, 2.63 );
setEffScaleKey( spep_3-3 + 16, ctzuo, 3.36, 3.36 );
setEffScaleKey( spep_3-3 + 18, ctzuo, 3.51, 3.51 );
setEffScaleKey( spep_3-3 + 20, ctzuo, 3.66, 3.66 );
setEffScaleKey( spep_3-3 + 22, ctzuo, 3.81, 3.81 );
setEffScaleKey( spep_3-3 + 24, ctzuo, 4.04, 4.04 );
setEffScaleKey( spep_3-3 + 26, ctzuo, 4.27, 4.27 );

setEffRotateKey( spep_3-3 + 12, ctzuo, 0 );
setEffRotateKey( spep_3-3 + 26, ctzuo, 0 );

setEffAlphaKey( spep_3-3 + 12, ctzuo, 255 );
setEffAlphaKey( spep_3-3 + 22, ctzuo, 255 );
setEffAlphaKey( spep_3-3 + 24, ctzuo, 128 );
setEffAlphaKey( spep_3-3 + 26, ctzuo, 0 );

--SE
SEEX=playSe( spep_3+77, 1175 );--余韻
setStartTimeMs(SEEX,196);
setSeVolume( spep_3 + 77, 1175, 0 );--余韻
setSeVolume( spep_3 + 78, 1175, 1.78 );
setSeVolume( spep_3 + 79, 1175, 3.56 );
setSeVolume( spep_3 + 80, 1175, 5.33 );
setSeVolume( spep_3 + 81, 1175, 7.11 );
setSeVolume( spep_3 + 82, 1175, 8.89 );
setSeVolume( spep_3 + 83, 1175, 10.67 );
setSeVolume( spep_3 + 84, 1175, 12.44 );
setSeVolume( spep_3 + 85, 1175, 14.22 );
setSeVolume( spep_3 + 86, 1175, 16.00 );
setSeVolume( spep_3 + 87, 1175, 17.78 );
setSeVolume( spep_3 + 88, 1175, 19.56 );
setSeVolume( spep_3 + 89, 1175, 21.33 );
setSeVolume( spep_3 + 90, 1175, 23.11 );
setSeVolume( spep_3 + 91, 1175, 24.89 );
setSeVolume( spep_3 + 92, 1175, 26.67 );
setSeVolume( spep_3 + 93, 1175, 28.44 );
setSeVolume( spep_3 + 94, 1175, 30.22 );
setSeVolume( spep_3 + 95, 1175, 32.00 );

SEEX2=playSe( spep_3 + 18, 1168 );--余韻
setStartTimeMs(SEEX2,42);
setSeVolume( spep_3 + 18, 1168, 0 );--余韻
setSeVolume( spep_3 + 19, 1168, 0.69 );
setSeVolume( spep_3 + 20, 1168, 1.38 );
setSeVolume( spep_3 + 21, 1168, 2.07 );
setSeVolume( spep_3 + 22, 1168, 2.76 );
setSeVolume( spep_3 + 23, 1168, 3.45 );
setSeVolume( spep_3 + 24, 1168, 4.14 );
setSeVolume( spep_3 + 25, 1168, 4.83 );
setSeVolume( spep_3 + 26, 1168, 5.52 );
setSeVolume( spep_3 + 27, 1168, 6.21 );
setSeVolume( spep_3 + 28, 1168, 6.90 );
setSeVolume( spep_3 + 29, 1168, 7.60 );
setSeVolume( spep_3 + 30, 1168, 8.29 );
setSeVolume( spep_3 + 31, 1168, 8.98 );
setSeVolume( spep_3 + 32, 1168, 9.67 );
setSeVolume( spep_3 + 33, 1168, 10.36 );
setSeVolume( spep_3 + 34, 1168, 11.05 );
setSeVolume( spep_3 + 35, 1168, 11.74 );
setSeVolume( spep_3 + 36, 1168, 12.43 );
setSeVolume( spep_3 + 37, 1168, 13.12 );
setSeVolume( spep_3 + 38, 1168, 13.81 );
setSeVolume( spep_3 + 39, 1168, 14.50 );
setSeVolume( spep_3 + 40, 1168, 15.19 );
setSeVolume( spep_3 + 41, 1168, 15.88 );
setSeVolume( spep_3 + 42, 1168, 16.57 );
setSeVolume( spep_3 + 43, 1168, 17.26 );
setSeVolume( spep_3 + 44, 1168, 17.95 );
setSeVolume( spep_3 + 45, 1168, 18.64 );
setSeVolume( spep_3 + 46, 1168, 19.33 );
setSeVolume( spep_3 + 47, 1168, 20.02 );
setSeVolume( spep_3 + 48, 1168, 20.71 );
setSeVolume( spep_3 + 49, 1168, 21.40 );
setSeVolume( spep_3 + 50, 1168, 22.10 );
setSeVolume( spep_3 + 51, 1168, 22.79 );
setSeVolume( spep_3 + 52, 1168, 23.48 );
setSeVolume( spep_3 + 53, 1168, 24.17 );
setSeVolume( spep_3 + 54, 1168, 24.86 );
setSeVolume( spep_3 + 55, 1168, 25.55 );
setSeVolume( spep_3 + 56, 1168, 26.24 );
setSeVolume( spep_3 + 57, 1168, 26.93 );
setSeVolume( spep_3 + 58, 1168, 27.62 );
setSeVolume( spep_3 + 59, 1168, 28.31 );
setSeVolume( spep_3 + 60, 1168, 29 );


--playSe( spep_3 + 0, 1072 );--砂埃

se_1044 = playSe( spep_3 + 4, 1044 );--砂埃
setSeVolume( spep_3 + 4, 1044, 0 );
setSeVolume( spep_3 + 4, 1044, 0 );
setSeVolume( spep_3 + 5, 1044, 7.42 );
setSeVolume( spep_3 + 6, 1044, 14.84 );
setSeVolume( spep_3 + 7, 1044, 22.26 );
setSeVolume( spep_3 + 8, 1044, 29.68 );
setSeVolume( spep_3 + 9, 1044, 37.11 );
setSeVolume( spep_3 + 10, 1044, 44.53 );
setSeVolume( spep_3 + 11, 1044, 51.95 );
setSeVolume( spep_3 + 12, 1044, 59.37 );
setSeVolume( spep_3 + 13, 1044, 66.79 );
setSeVolume( spep_3 + 14, 1044, 74.21 );
setSeVolume( spep_3 + 15, 1044, 81.63 );
setSeVolume( spep_3 + 16, 1044, 89.05 );
setSeVolume( spep_3 + 17, 1044, 96.47 );
setSeVolume( spep_3 + 18, 1044, 103.89 );
setSeVolume( spep_3 + 19, 1044, 111.32 );
setSeVolume( spep_3 + 20, 1044, 118.74 );
setSeVolume( spep_3 + 21, 1044, 126.16 );
setSeVolume( spep_3 + 22, 1044, 133.58 );
setSeVolume( spep_3 + 23, 1044, 141 );

playSe( spep_3 + 4, 1024 );--砂埃
setSeVolume( spep_3 + 4, 1024, 0 );
setSeVolume( spep_3 + 7, 1024, 0 );
setSeVolume( spep_3 + 8, 1024, 1.81 );
setSeVolume( spep_3 + 9, 1024, 3.61 );
setSeVolume( spep_3 + 10, 1024, 5.42 );
setSeVolume( spep_3 + 11, 1024, 7.22 );
setSeVolume( spep_3 + 12, 1024, 9.03 );
setSeVolume( spep_3 + 13, 1024, 10.83 );
setSeVolume( spep_3 + 14, 1024, 12.64 );
setSeVolume( spep_3 + 15, 1024, 14.44 );
setSeVolume( spep_3 + 16, 1024, 16.25 );
setSeVolume( spep_3 + 17, 1024, 18.06 );
setSeVolume( spep_3 + 18, 1024, 19.86 );
setSeVolume( spep_3 + 19, 1024, 21.67 );
setSeVolume( spep_3 + 20, 1024, 23.47 );
setSeVolume( spep_3 + 21, 1024, 25.28 );
setSeVolume( spep_3 + 22, 1024, 27.08 );
setSeVolume( spep_3 + 23, 1024, 28.89 );
setSeVolume( spep_3 + 24, 1024, 30.69 );
setSeVolume( spep_3 + 25, 1024, 32.5 );
setSeVolume( spep_3 + 26, 1024, 34.31 );
setSeVolume( spep_3 + 27, 1024, 36.11 );
setSeVolume( spep_3 + 28, 1024, 37.92 );
setSeVolume( spep_3 + 29, 1024, 39.72 );
setSeVolume( spep_3 + 30, 1024, 41.53 );
setSeVolume( spep_3 + 31, 1024, 43.33 );
setSeVolume( spep_3 + 32, 1024, 45.14 );
setSeVolume( spep_3 + 33, 1024, 46.94 );
setSeVolume( spep_3 + 34, 1024, 48.75 );
setSeVolume( spep_3 + 35, 1024, 50.56 );
setSeVolume( spep_3 + 36, 1024, 52.36 );
setSeVolume( spep_3 + 37, 1024, 54.17 );
setSeVolume( spep_3 + 38, 1024, 55.97 );
setSeVolume( spep_3 + 39, 1024, 57.78 );
setSeVolume( spep_3 + 40, 1024, 59.58 );
setSeVolume( spep_3 + 41, 1024, 61.39 );
setSeVolume( spep_3 + 42, 1024, 63.19 );
setSeVolume( spep_3 + 43, 1024, 65 );


se_1213 = playSe( spep_3 + 4, 1213 );--砂埃
setSeVolume( spep_3 + 4, 1213, 0 );
setSeVolume( spep_3 + 5, 1213, 1.97 );
setSeVolume( spep_3 + 6, 1213, 3.95 );
setSeVolume( spep_3 + 7, 1213, 5.92 );
setSeVolume( spep_3 + 8, 1213, 7.89 );
setSeVolume( spep_3 + 9, 1213, 9.86 );
setSeVolume( spep_3 + 10, 1213, 11.84 );
setSeVolume( spep_3 + 11, 1213, 13.81 );
setSeVolume( spep_3 + 12, 1213, 15.78 );
setSeVolume( spep_3 + 13, 1213, 17.76 );
setSeVolume( spep_3 + 14, 1213, 19.73 );
setSeVolume( spep_3 + 15, 1213, 21.70 );
setSeVolume( spep_3 + 16, 1213, 23.68 );
setSeVolume( spep_3 + 17, 1213, 25.65 );
setSeVolume( spep_3 + 18, 1213, 27.62 );
setSeVolume( spep_3 + 19, 1213, 29.59 );
setSeVolume( spep_3 + 20, 1213, 31.57 );
setSeVolume( spep_3 + 21, 1213, 33.54 );
setSeVolume( spep_3 + 22, 1213, 35.51 );
setSeVolume( spep_3 + 23, 1213, 37.49 );
setSeVolume( spep_3 + 24, 1213, 39.46 );
setSeVolume( spep_3 + 25, 1213, 41.43 );
setSeVolume( spep_3 + 26, 1213, 43.41 );
setSeVolume( spep_3 + 27, 1213, 45.38 );
setSeVolume( spep_3 + 28, 1213, 47.35 );
setSeVolume( spep_3 + 29, 1213, 49.32 );
setSeVolume( spep_3 + 30, 1213, 51.3 );
setSeVolume( spep_3 + 31, 1213, 53.27 );
setSeVolume( spep_3 + 32, 1213, 55.24 );
setSeVolume( spep_3 + 33, 1213, 57.22 );
setSeVolume( spep_3 + 34, 1213, 59.19 );
setSeVolume( spep_3 + 35, 1213, 61.16 );
setSeVolume( spep_3 + 36, 1213, 63.14 );
setSeVolume( spep_3 + 37, 1213, 65.11 );
setSeVolume( spep_3 + 38, 1213, 67.08 );
setSeVolume( spep_3 + 39, 1213, 69.05 );
setSeVolume( spep_3 + 40, 1213, 71.03 );
setSeVolume( spep_3 + 41, 1213, 73 );

playSe( spep_3 + 12, 1182 );--砂埃
setSeVolume( spep_3 + 12, 1182, 0 );
setSeVolume( spep_3 + 13, 1182, 7.44 );
setSeVolume( spep_3 + 14, 1182, 14.88 );
setSeVolume( spep_3 + 15, 1182, 22.31 );
setSeVolume( spep_3 + 16, 1182, 29.75 );
setSeVolume( spep_3 + 17, 1182, 37.19 );
setSeVolume( spep_3 + 18, 1182, 44.63 );
setSeVolume( spep_3 + 19, 1182, 52.06 );
setSeVolume( spep_3 + 20, 1182, 59.5 );
setSeVolume( spep_3 + 21, 1182, 66.94 );
setSeVolume( spep_3 + 22, 1182, 74.38 );
setSeVolume( spep_3 + 23, 1182, 81.81 );
setSeVolume( spep_3 + 24, 1182, 89.25 );
setSeVolume( spep_3 + 25, 1182, 96.69 );
setSeVolume( spep_3 + 26, 1182, 104.13 );
setSeVolume( spep_3 + 27, 1182, 111.56 );
setSeVolume( spep_3 + 28, 1182, 119 );


stopSe( spep_3 + 2, se_1126, 44 );
stopSe( spep_3 + 14, se_1172, 36 );
stopSe( spep_3 + 40, se_1044, 61 );
stopSe( spep_3 + 51, se_1213, 49 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--敵の色を戻す
setBlendColor(spep_3+2 ,1,2,0,0,0,0);

-- ** 次の準備 ** --
spep_4 = spep_3 + 96;

------------------------------------------------------
-- 顔のアップ
------------------------------------------------------
-- ** エフェクト等 ** --
smoke = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, smoke, 0, 0, 0 );
setEffMoveKey( spep_4 + 144, smoke, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, smoke, 1.0, 1.0 );
setEffScaleKey( spep_4 + 144, smoke, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, smoke, 0 );
setEffRotateKey( spep_4 + 144, smoke, 0 );
setEffAlphaKey( spep_4 + 0, smoke, 255 );
setEffAlphaKey( spep_4 + 144, smoke, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 148, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 20 );
endPhase( spep_4 + 130 );

end