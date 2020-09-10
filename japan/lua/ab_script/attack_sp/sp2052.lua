--1020080:孫悟飯(青年期)_ゼットソードスラッシュ
--sp_effect_b2_00034

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
SP_01=	155682	;--	剣をキャッチ〜ポーズ
SP_02=	155683	;--	落下しつつ斬りつける
SP_03=	155684	;--	敵の画面突っ込み手前ガラス
SP_04=	155685	;--	敵の画面突っ込み奥背景

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
setEffMoveKey( spep_0 + 190, pose, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, pose, 1.0, 1.0 );
setEffScaleKey( spep_0 + 190, pose, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, pose, 0 );
setEffRotateKey( spep_0 + 190, pose, 0 );
setEffAlphaKey( spep_0 + 0, pose, 255 );
setEffAlphaKey( spep_0 + 190, pose, 255 );

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

-- ** 顔カットイン ** --
speff = entryEffect( spep_0+92  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0+92  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +104, 190006, 72, 0x102, -1, 0, 100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +104,  ctgogo,  100,  510);
setEffMoveKey(  spep_0 +176,  ctgogo,  100,  510);

setEffAlphaKey( spep_0 +104, ctgogo, 0 );
setEffAlphaKey( spep_0 + 105, ctgogo, 255 );
setEffAlphaKey( spep_0 + 106, ctgogo, 255 );
setEffAlphaKey( spep_0 + 170, ctgogo, 255 );
setEffAlphaKey( spep_0 + 172, ctgogo, 191 );
setEffAlphaKey( spep_0 + 174, ctgogo, 112 );
setEffAlphaKey( spep_0 + 176, ctgogo, 64 );

setEffRotateKey(  spep_0 +104,  ctgogo,  0);
setEffRotateKey(  spep_0 +176,  ctgogo,  0);

setEffScaleKey(  spep_0 +104,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +166,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +176,  ctgogo, 1.07, 1.07 );

--SE
playSe( spep_0 + 2, 1151 );--ソードくるくる
se_0063 = playSe( spep_0 + 4, 63 );--ソードくるくる
playSe( spep_0 + 4, 1003 );--ソードくるくる
playSe( spep_0 + 10, 1151 );--ソードくるくる
playSe( spep_0 + 12, 1003 );--ソードくるくる
setSeVolume( spep_0 + 12, 1003, 91 );
playSe( spep_0 + 20, 1151 );--ソードくるくる
setSeVolume( spep_0 + 20, 1003, 85 );
playSe( spep_0 + 20, 1003 );--ソードくるくる
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
setSeVolume( spep_0 + 83, 1192, 209.00 );
setSeVolume( spep_0 + 84, 1192, 174.17 );
setSeVolume( spep_0 + 85, 1192, 139.33 );
setSeVolume( spep_0 + 86, 1192, 104.50 );
setSeVolume( spep_0 + 87, 1192, 69.67 );
setSeVolume( spep_0 + 88, 1192, 34.83 );
setSeVolume( spep_0 + 89, 1192, 0.00 );
playSe( spep_0 + 104, 44 );--カメラズームアウト
playSe( spep_0 + 104, 1018 );--顔カットイン

stopSe( spep_0 + 78, se_0063, 0 );
stopSe( spep_0 + 89, se_1192, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 174, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_0+180 , 0, 12, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1=spep_0+190;
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
-- 落下しつつ斬りつける
------------------------------------------------------
-- ** エフェクト等 ** --
slash = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, slash, 0, 0, 0 );
setEffMoveKey( spep_2 + 60, slash, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, slash, 1.0, 1.0 );
setEffScaleKey( spep_2 + 60, slash, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, slash, 0 );
setEffRotateKey( spep_2 + 60, slash, 0 );
setEffAlphaKey( spep_2 + 0, slash, 255 );
setEffAlphaKey( spep_2 + 60, slash, 255 );



--SE
se_1116 = playSe( spep_2 + 0, 1116 );--ジャンプ
SE0=playSe( spep_2 + 0, 1117 );--ジャンプ

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 64, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 24; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, se_1116, 0 );

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

stopSe( spep_2 + 35, se_1116, 20 );

--白フェード
entryFade( spep_2 + 54, 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 60;

------------------------------------------------------
-- ガ
------------------------------------------------------
--敵の動き
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 107 );
setMoveKey( spep_3 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_3 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_3 + 0, 1, 0.35, 0.35 );
--setScaleKey( spep_3 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_3 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_3 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_3 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_3 + 0, 1, 105 );
setRotateKey( spep_3 -3 + 4, 1, 240 );
setRotateKey( spep_3 -3 + 6, 1, 405 );
setRotateKey( spep_3 -3 + 8, 1, 600 );
setRotateKey( spep_3 -3 + 10, 1, 825 );
setRotateKey( spep_3 -3 + 12, 1, 1080 );
setRotateKey( spep_3 + 100, 1, 1080 );

-- ** エフェクト等 ** --
bg = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_3 + 100, bg, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, bg, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, bg, 0 );
setEffRotateKey( spep_3 + 100, bg, 0 );
setEffAlphaKey( spep_3 + 0, bg, 255 );
setEffAlphaKey( spep_3 + 100, bg, 255 );
--[[
-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_3 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_3 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_3 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_3 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_3 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_3 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_3 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_3 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_3 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_3 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_3 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_3 + 112, bakuhatsu, 255 );
]]

-- ** 集中線 ** --
shuchusenga = entryEffectLife( spep_3 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 14, shuchusenga, 32, 25 );

setEffMoveKey( spep_3 + 14, shuchusenga, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, shuchusenga, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusenga, 1, 1 );
setEffScaleKey( spep_3 + 46, shuchusenga, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusenga, 0 );
setEffRotateKey( spep_3 + 46, shuchusenga, 0 );

setEffAlphaKey( spep_3 + 14, shuchusenga, 255 );
setEffAlphaKey( spep_3 + 28, shuchusenga, 255 );
setEffAlphaKey( spep_3 + 30, shuchusenga, 252 );
setEffAlphaKey( spep_3 + 32, shuchusenga, 242 );
setEffAlphaKey( spep_3 + 34, shuchusenga, 227 );
setEffAlphaKey( spep_3 + 36, shuchusenga, 205 );
setEffAlphaKey( spep_3 + 38, shuchusenga, 176 );
setEffAlphaKey( spep_3 + 40, shuchusenga, 142 );
setEffAlphaKey( spep_3 + 42, shuchusenga, 101 );
setEffAlphaKey( spep_3 + 44, shuchusenga, 54 );
setEffAlphaKey( spep_3 + 46, shuchusenga, 0 );

shuchusenga2 = entryEffectLife( spep_3 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_3 + 14, shuchusenga2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, shuchusenga2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusenga2, 1, 1 );
setEffScaleKey( spep_3 + 100, shuchusenga2, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusenga2, 0 );
setEffRotateKey( spep_3 + 100, shuchusenga2, 0 );

setEffAlphaKey( spep_3 + 14, shuchusenga2, 255 );
setEffAlphaKey( spep_3 + 100, shuchusenga2, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_3 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_3 + 14, ctga, 14, 20 );

setEffMoveKey( spep_3 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_3 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_3 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_3 + 14, ctga, -10.9 );
setEffRotateKey( spep_3 + 15, ctga, -10.9 );
setEffRotateKey( spep_3 + 16, ctga, -14.9 );
setEffRotateKey( spep_3 + 17, ctga, -14.9 );
setEffRotateKey( spep_3 + 18, ctga, -10.9 );
setEffRotateKey( spep_3 + 19, ctga, -10.9 );
setEffRotateKey( spep_3 + 20, ctga, -14.9 );
setEffRotateKey( spep_3 + 21, ctga, -14.9 );
setEffRotateKey( spep_3 + 22, ctga, -10.9 );
setEffRotateKey( spep_3 + 23, ctga, -10.9 );
setEffRotateKey( spep_3 + 24, ctga, -14.9 );
setEffRotateKey( spep_3 + 25, ctga, -14.9 );
setEffRotateKey( spep_3 + 26, ctga, -10.9 );
setEffRotateKey( spep_3 + 27, ctga, -10.9 );
setEffRotateKey( spep_3 + 28, ctga, -14.9 );
setEffRotateKey( spep_3 + 100, ctga, -14.9 );

setEffAlphaKey( spep_3 + 14, ctga, 255 );
setEffAlphaKey( spep_3 + 100, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_3 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_3 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_3 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_3 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_3 + 2, hibiware, 0 );
setEffRotateKey( spep_3 + 100, hibiware, 0 );

setEffAlphaKey( spep_3 + 2, hibiware, 0 );
setEffAlphaKey( spep_3 + 13, hibiware, 0 );
setEffAlphaKey( spep_3 + 14, hibiware, 255 );
setEffAlphaKey( spep_3 + 100, hibiware, 255 );

--SE
--playSe( spep_3 + 0, 1023 );--爆発
playSe( spep_3 + 14, 1054 );--ガッ
setSeVolume( spep_3 + 14, 1054, 112 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_3 +10 );
endPhase( spep_3 + 98 );
else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 剣をキャッチ〜ポーズ
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
pose = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, pose, 0, 0, 0 );
setEffMoveKey( spep_0 + 190, pose, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, pose, -1.0, 1.0 );
setEffScaleKey( spep_0 + 190, pose, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, pose, 0 );
setEffRotateKey( spep_0 + 190, pose, 0 );
setEffAlphaKey( spep_0 + 0, pose, 255 );
setEffAlphaKey( spep_0 + 190, pose, 255 );

--文字エントリー
ctga = entryEffectLife( spep_0-3 + 72,  10005, 14, 0x100, -1, 0, 88, 216 );--ガッ

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

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0-6+92  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0-6+92  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +104, 190006, 72, 0x102, -1, 0, 100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +104,  ctgogo,  100,  510);
setEffMoveKey(  spep_0 +176,  ctgogo,  100,  510);

setEffAlphaKey( spep_0 +104, ctgogo, 0 );
setEffAlphaKey( spep_0 + 105, ctgogo, 255 );
setEffAlphaKey( spep_0 + 106, ctgogo, 255 );
setEffAlphaKey( spep_0 + 170, ctgogo, 255 );
setEffAlphaKey( spep_0 + 172, ctgogo, 191 );
setEffAlphaKey( spep_0 + 174, ctgogo, 112 );
setEffAlphaKey( spep_0 + 176, ctgogo, 64 );

setEffRotateKey(  spep_0 +104,  ctgogo,  0);
setEffRotateKey(  spep_0 +176,  ctgogo,  0);

setEffScaleKey(  spep_0 +104,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +166,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +176,  ctgogo, -1.07, 1.07 );

--SE
playSe( spep_0 + 2, 1151 );--ソードくるくる
se_0063 = playSe( spep_0 + 4, 63 );--ソードくるくる
playSe( spep_0 + 4, 1003 );--ソードくるくる
playSe( spep_0 + 10, 1151 );--ソードくるくる
playSe( spep_0 + 12, 1003 );--ソードくるくる
setSeVolume( spep_0 + 12, 1003, 91 );
playSe( spep_0 + 20, 1151 );--ソードくるくる
setSeVolume( spep_0 + 20, 1003, 85 );
playSe( spep_0 + 20, 1003 );--ソードくるくる
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
setSeVolume( spep_0 + 83, 1192, 209.00 );
setSeVolume( spep_0 + 84, 1192, 174.17 );
setSeVolume( spep_0 + 85, 1192, 139.33 );
setSeVolume( spep_0 + 86, 1192, 104.50 );
setSeVolume( spep_0 + 87, 1192, 69.67 );
setSeVolume( spep_0 + 88, 1192, 34.83 );
setSeVolume( spep_0 + 89, 1192, 0.00 );
playSe( spep_0 + 104, 44 );--カメラズームアウト
playSe( spep_0 + 104, 1018 );--顔カットイン

stopSe( spep_0 + 78, se_0063, 0 );
stopSe( spep_0 + 89, se_1192, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 174, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_0+180 , 0, 12, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1=spep_0+190;
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
-- 落下しつつ斬りつける
------------------------------------------------------
-- ** エフェクト等 ** --
slash = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, slash, 0, 0, 0 );
setEffMoveKey( spep_2 + 60, slash, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, slash, -1.0, 1.0 );
setEffScaleKey( spep_2 + 60, slash, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, slash, 0 );
setEffRotateKey( spep_2 + 60, slash, 0 );
setEffAlphaKey( spep_2 + 0, slash, 255 );
setEffAlphaKey( spep_2 + 60, slash, 255 );
--SE
se_1116 = playSe( spep_2 + 0, 1116 );--ジャンプ
SE0=playSe( spep_2 + 0, 1117 );--ジャンプ

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 64, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 24; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, se_1116, 0 );

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

stopSe( spep_2 + 35, se_1116, 20 );



--白フェード
entryFade( spep_2 + 54, 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 60;

------------------------------------------------------
-- ガ
------------------------------------------------------
--敵の動き
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 107 );
setMoveKey( spep_3 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_3 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_3 + 0, 1, 0.35, 0.35 );
--setScaleKey( spep_3 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_3 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_3 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_3 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_3 + 0, 1, 105 );
setRotateKey( spep_3 -3 + 4, 1, 240 );
setRotateKey( spep_3 -3 + 6, 1, 405 );
setRotateKey( spep_3 -3 + 8, 1, 600 );
setRotateKey( spep_3 -3 + 10, 1, 825 );
setRotateKey( spep_3 -3 + 12, 1, 1080 );
setRotateKey( spep_3 + 100, 1, 1080 );

-- ** エフェクト等 ** --
bg = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_3 + 100, bg, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, bg, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, bg, 0 );
setEffRotateKey( spep_3 + 100, bg, 0 );
setEffAlphaKey( spep_3 + 0, bg, 255 );
setEffAlphaKey( spep_3 + 100, bg, 255 );
--[[
-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_3 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_3 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_3 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_3 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_3 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_3 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_3 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_3 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_3 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_3 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_3 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_3 + 112, bakuhatsu, 255 );
]]

-- ** 集中線 ** --
shuchusenga = entryEffectLife( spep_3 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 14, shuchusenga, 32, 25 );

setEffMoveKey( spep_3 + 14, shuchusenga, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, shuchusenga, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusenga, 1, 1 );
setEffScaleKey( spep_3 + 46, shuchusenga, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusenga, 0 );
setEffRotateKey( spep_3 + 46, shuchusenga, 0 );

setEffAlphaKey( spep_3 + 14, shuchusenga, 255 );
setEffAlphaKey( spep_3 + 28, shuchusenga, 255 );
setEffAlphaKey( spep_3 + 30, shuchusenga, 252 );
setEffAlphaKey( spep_3 + 32, shuchusenga, 242 );
setEffAlphaKey( spep_3 + 34, shuchusenga, 227 );
setEffAlphaKey( spep_3 + 36, shuchusenga, 205 );
setEffAlphaKey( spep_3 + 38, shuchusenga, 176 );
setEffAlphaKey( spep_3 + 40, shuchusenga, 142 );
setEffAlphaKey( spep_3 + 42, shuchusenga, 101 );
setEffAlphaKey( spep_3 + 44, shuchusenga, 54 );
setEffAlphaKey( spep_3 + 46, shuchusenga, 0 );

shuchusenga2 = entryEffectLife( spep_3 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_3 + 14, shuchusenga2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, shuchusenga2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusenga2, 1, 1 );
setEffScaleKey( spep_3 + 100, shuchusenga2, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusenga2, 0 );
setEffRotateKey( spep_3 + 100, shuchusenga2, 0 );

setEffAlphaKey( spep_3 + 14, shuchusenga2, 255 );
setEffAlphaKey( spep_3 + 100, shuchusenga2, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_3 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_3 + 14, ctga, 14, 20 );

setEffMoveKey( spep_3 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_3 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_3 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_3 + 14, ctga, -10.9 );
setEffRotateKey( spep_3 + 15, ctga, -10.9 );
setEffRotateKey( spep_3 + 16, ctga, -14.9 );
setEffRotateKey( spep_3 + 17, ctga, -14.9 );
setEffRotateKey( spep_3 + 18, ctga, -10.9 );
setEffRotateKey( spep_3 + 19, ctga, -10.9 );
setEffRotateKey( spep_3 + 20, ctga, -14.9 );
setEffRotateKey( spep_3 + 21, ctga, -14.9 );
setEffRotateKey( spep_3 + 22, ctga, -10.9 );
setEffRotateKey( spep_3 + 23, ctga, -10.9 );
setEffRotateKey( spep_3 + 24, ctga, -14.9 );
setEffRotateKey( spep_3 + 25, ctga, -14.9 );
setEffRotateKey( spep_3 + 26, ctga, -10.9 );
setEffRotateKey( spep_3 + 27, ctga, -10.9 );
setEffRotateKey( spep_3 + 28, ctga, -14.9 );
setEffRotateKey( spep_3 + 100, ctga, -14.9 );

setEffAlphaKey( spep_3 + 14, ctga, 255 );
setEffAlphaKey( spep_3 + 100, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_3 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_3 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_3 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_3 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_3 + 2, hibiware, 0 );
setEffRotateKey( spep_3 + 100, hibiware, 0 );

setEffAlphaKey( spep_3 + 2, hibiware, 0 );
setEffAlphaKey( spep_3 + 13, hibiware, 0 );
setEffAlphaKey( spep_3 + 14, hibiware, 255 );
setEffAlphaKey( spep_3 + 100, hibiware, 255 );

--SE
--playSe( spep_3 + 0, 1023 );--爆発
playSe( spep_3 + 14, 1054 );--ガッ
setSeVolume( spep_3 + 14, 1054, 112 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_3 +10 );
endPhase( spep_3 + 98 );
end