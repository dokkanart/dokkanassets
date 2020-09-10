--1020460:孫悟空&ベジータ(天使)_ライバル同士の共闘
--sp_effect_b1_00123

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
SP_01 = 155875;  --悟空ベジータが敵と対峙〜気弾溜め
SP_02 = 155876;  --悟空ベジータが敵と対峙〜気弾溜め
SP_03 = 155877;  --気弾を投げる〜フィニッシュ
SP_04 = 155878;  --気弾を投げる〜フィニッシュ

--敵側
SP_01r = 155879;  --敵用：悟空ベジータが敵と対峙〜気弾溜め
SP_02r = 155880;  --敵用：悟空ベジータが敵と対峙〜気弾溜め

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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

--[[setMoveKey(   0,   1,    0, -5000,   0);
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
setRotateKey( 6,   1,  0 );]]

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 悟空ベジータが敵と対峙〜気弾溜め(614F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --悟空ベジータが敵と対峙〜気弾溜めフロント(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 614, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 614, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 614, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 614, first_f, 255 );

first_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --悟空ベジータが敵と対峙〜気弾溜めバッグ(ef_002)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 614, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 614, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 614, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 614, first_b, 255 );

-- ** 書き文字エントリー ** --
ctbago = entryEffectLife( spep_0 -3 + 380,  10021, 28, 0x100, -1, 0, 135.7, 56.7 );  --バゴォッ
setEffMoveKey( spep_0 -3 + 380, ctbago, 135.7, 56.7 , 0 );
setEffMoveKey( spep_0 -3 + 382, ctbago, 106.2, 76.6 , 0 );
setEffMoveKey( spep_0 -3 + 384, ctbago, 79.1, 101.4 , 0 );
setEffMoveKey( spep_0 -3 + 386, ctbago, 43.1, 135.7 , 0 );
setEffMoveKey( spep_0 -3 + 388, ctbago, 23.4, 151.8 , 0 );
setEffMoveKey( spep_0 -3 + 390, ctbago, 12.5, 179.8 , 0 );
setEffMoveKey( spep_0 -3 + 392, ctbago, 0.2, 183.2 , 0 );
setEffMoveKey( spep_0 -3 + 394, ctbago, -10.3, 207.7 , 0 );
setEffMoveKey( spep_0 -3 + 396, ctbago, -11.5, 207.7 , 0 );
setEffMoveKey( spep_0 -3 + 398, ctbago, -25.9, 212.1 , 0 );
setEffMoveKey( spep_0 -3 + 400, ctbago, -22.2, 214.7 , 0 );
setEffMoveKey( spep_0 -3 + 402, ctbago, -25.9, 209.5 , 0 );
setEffMoveKey( spep_0 -3 + 404, ctbago, -24, 224.1 , 0 );
setEffMoveKey( spep_0 -3 + 406, ctbago, -28.7, 215.5 , 0 );
setEffMoveKey( spep_0 -3 + 408, ctbago, -34.7, 220.9 , 0 );

setEffScaleKey( spep_0 -3 + 380, ctbago, 1.05, 1.02 );
setEffScaleKey( spep_0 -3 + 382, ctbago, 1.17, 1.14 );
setEffScaleKey( spep_0 -3 + 384, ctbago, 1.29, 1.25 );
setEffScaleKey( spep_0 -3 + 386, ctbago, 2.11, 2.06 );
setEffScaleKey( spep_0 -3 + 388, ctbago, 2.3, 2.24 );
setEffScaleKey( spep_0 -3 + 390, ctbago, 2.46, 2.39 );
setEffScaleKey( spep_0 -3 + 392, ctbago, 2.6, 2.51 );
setEffScaleKey( spep_0 -3 + 394, ctbago, 2.7, 2.61 );
setEffScaleKey( spep_0 -3 + 396, ctbago, 2.77, 2.68 );
setEffScaleKey( spep_0 -3 + 398, ctbago, 2.82, 2.72 );
setEffScaleKey( spep_0 -3 + 400, ctbago, 2.83, 2.73 );
setEffScaleKey( spep_0 -3 + 402, ctbago, 2.84, 2.74 );
setEffScaleKey( spep_0 -3 + 404, ctbago, 2.87, 2.76 );
setEffScaleKey( spep_0 -3 + 406, ctbago, 2.91, 2.8 );
setEffScaleKey( spep_0 -3 + 408, ctbago, 2.97, 2.86 );

setEffRotateKey( spep_0 -3 + 380, ctbago, -15 );
setEffRotateKey( spep_0 -3 + 408, ctbago, -15 );

setEffAlphaKey( spep_0 -3 + 380, ctbago, 255 );
setEffAlphaKey( spep_0 -3 + 400, ctbago, 255 );
setEffAlphaKey( spep_0 -3 + 402, ctbago, 239 );
setEffAlphaKey( spep_0 -3 + 404, ctbago, 191 );
setEffAlphaKey( spep_0 -3 + 406, ctbago, 112 );
setEffAlphaKey( spep_0 -3 + 408, ctbago, 0 );


spep_x = spep_0 + 506;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50 +20, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, 50 +20, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50 +20, 515.5 , 0 );

setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );

setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 敵キャラクター1 ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 51, 1, 0 );
changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 115.1, -91.6 , 0 );
setMoveKey( spep_0 + 1, 1, 115.1, -91.6 , 0 );
setMoveKey( spep_0 + 2, 1, 114.1, -90.8 , 0 );
setMoveKey( spep_0 + 3, 1, 114.1, -90.8 , 0 );
setMoveKey( spep_0 + 4, 1, 113.1, -90 , 0 );
setMoveKey( spep_0 + 5, 1, 113.1, -90 , 0 );
setMoveKey( spep_0 + 6, 1, 112.2, -89.3 , 0 );
setMoveKey( spep_0 + 8, 1, 111.4, -88.6 , 0 );
setMoveKey( spep_0 + 10, 1, 110.5, -87.9 , 0 );
setMoveKey( spep_0 + 12, 1, 109.7, -87.2 , 0 );
setMoveKey( spep_0 + 14, 1, 108.9, -86.6 , 0 );
setMoveKey( spep_0 + 16, 1, 108.2, -86 , 0 );
setMoveKey( spep_0 + 18, 1, 107.5, -85.5 , 0 );
setMoveKey( spep_0 + 20, 1, 106.9, -85 , 0 );
setMoveKey( spep_0 + 22, 1, 106.3, -84.5 , 0 );
setMoveKey( spep_0 + 24, 1, 105.7, -84 , 0 );
setMoveKey( spep_0 + 26, 1, 105.2, -83.6 , 0 );
setMoveKey( spep_0 + 28, 1, 104.7, -83.2 , 0 );
setMoveKey( spep_0 + 30, 1, 104.3, -82.8 , 0 );
setMoveKey( spep_0 + 32, 1, 103.9, -82.5 , 0 );
setMoveKey( spep_0 + 34, 1, 103.5, -82.2 , 0 );
setMoveKey( spep_0 + 36, 1, 103.1, -81.9 , 0 );
setMoveKey( spep_0 + 38, 1, 102.9, -81.7 , 0 );
setMoveKey( spep_0 + 40, 1, 102.6, -81.5 , 0 );
setMoveKey( spep_0 + 42, 1, 102.4, -81.3 , 0 );
setMoveKey( spep_0 + 44, 1, 102.2, -81.2 , 0 );
setMoveKey( spep_0 + 46, 1, 102.1, -81 , 0 );
setMoveKey( spep_0 + 48, 1, 102, -81 , 0 );
setMoveKey( spep_0 + 50, 1, 101.9, -80.9 , 0 );
setMoveKey( spep_0 + 51, 1, 101.9, -80.9 , 0 );

setScaleKey( spep_0 + 0, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 1, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 2, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 3, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 4, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 5, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 6, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 8, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 10, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 14, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 16, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 22, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 24, 1, 2.76, 2.76 );
setScaleKey( spep_0 + 34, 1, 2.76, 2.76 );
setScaleKey( spep_0 + 36, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 51, 1, 2.75, 2.75 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 51, 1, 0 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 614, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--入り
playSe( spep_0 + 0, 8 );
setSeVolume( spep_0 + 0, 8, 56 );

--悟空飛んでくる1
SE00 = playSe( spep_0 + 60, 1003 );
setSeVolume( spep_0 + 60, 1003, 42 );
setPitch( spep_0 + 60, SE00, -700 );
setTimeStretch( SE00, 0.53, 10, 1 );

--悟空飛んでくる2
playSe( spep_0 + 86, 44 );
setSeVolume( spep_0 + 86, 44, 100 );

--空飛んでくる3
SE01 = playSe( spep_0 + 86, 1109 );
stopSe( spep_0 + 93, SE01, 5 );

--ベジータ飛んでくる1
SE02 =  playSe( spep_0 + 112, 1003 );
setSeVolume( spep_0 + 112, 1003, 43 );
setPitch( spep_0 + 112, SE02, -600 );
setTimeStretch( SE02, 0.6, 10, 1 );

--ベジータ飛んでくる2
SE03 = playSe( spep_0 + 142, 44 );
setSeVolume( spep_0 + 142, 44, 100 );
setPitch( spep_0 + 142, SE03, -200 );
setTimeStretch( SE03, 0.87, 10, 1 );

--ベジータ飛んでくる3
SE04 = playSe( spep_0 + 142, 1109 );
setSeVolume( spep_0 + 142, 1109, 100 );
stopSe( spep_0 + 149, SE04, 5 );

--悟空膝蹴り1
SE05 = playSe( spep_0 + 180, 9 );
setSeVolume( spep_0 + 180, 9, 0 );
setSeVolume( spep_0 + 197, 9, 100 );
stopSe( spep_0 + 212, SE05, 17 );
setPitch( spep_0 + 180, SE05, -400 );
setTimeStretch( SE05, 0.49, 10, 1 );


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 192; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

stopSe( SP_dodge - 12, SE05, 0 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
setMoveKey( SP_dodge + 0, 1, 297.3, -140.8 , 0 );
setMoveKey( SP_dodge  + 2, 1, 292.4, -139.2 , 0 );
setMoveKey( SP_dodge  + 4, 1, 308.3, -140.5 , 0 );
setMoveKey( SP_dodge  + 6, 1, 305.8, -154.7 , 0 );
setMoveKey( SP_dodge  + 8, 1, 298.8, -137 , 0 );
setMoveKey( SP_dodge  + 10, 1, 314, -142.2 , 0 );

setScaleKey( SP_dodge + 0, 1, 0.24, 0.24 );
setScaleKey( SP_dodge + 10, 1, 0.24, 0.24 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

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

-- ** 敵キャラクター2 ** --
setDisp( spep_0 -3 + 210, 1, 1 );
setDisp( spep_0 -3 + 296, 1, 0 );
changeAnime( spep_0 -3 + 210, 1, 8 );
changeAnime( spep_0 -3 + 266, 1, 6 );

b1 = 17;
b2 = 98;
setMoveKey( spep_0 -3 + 210, 1, 21.2 -b2, -37.1 -b1 , 0 );
setMoveKey( spep_0 -3 + 212, 1, -3.7 -b2, -14.9 -b1 , 0 );
setMoveKey( spep_0 -3 + 214, 1, -12.7 -b2, -6.8 -b1 , 0 );
setMoveKey( spep_0 -3 + 216, 1, -19.2 -b2, -1 -b1 , 0 );
setMoveKey( spep_0 -3 + 218, 1, -24.3 -b2, 3.5 -b1 , 0 );
setMoveKey( spep_0 -3 + 220, 1, -28.6 -b2, 7.3 -b1 , 0 );
setMoveKey( spep_0 -3 + 222, 1, -32.2 -b2, 10.6 -b1 , 0 );
setMoveKey( spep_0 -3 + 224, 1, -35.4 -b2, 13.4 -b1 , 0 );
setMoveKey( spep_0 -3 + 226, 1, -38.2 -b2, 15.9 -b1 , 0 );
setMoveKey( spep_0 -3 + 228, 1, -40.7 -b2, 18.1 -b1 , 0 );
setMoveKey( spep_0 -3 + 230, 1, -42.9 -b2, 20.1 -b1 , 0 );
setMoveKey( spep_0 -3 + 232, 1, -44.9 -b2, 21.9 -b1 , 0 );
setMoveKey( spep_0 -3 + 234, 1, -46.7 -b2, 23.5 -b1 , 0 );
setMoveKey( spep_0 -3 + 236, 1, -48.3 -b2, 25 -b1 , 0 );
setMoveKey( spep_0 -3 + 238, 1, -49.8 -b2, 26.3 -b1 , 0 );
setMoveKey( spep_0 -3 + 240, 1, -51.1 -b2, 27.5 -b1 , 0 );
setMoveKey( spep_0 -3 + 242, 1, -52.3 -b2, 28.6 -b1 , 0 );
setMoveKey( spep_0 -3 + 244, 1, -53.4 -b2, 29.5 -b1 , 0 );
setMoveKey( spep_0 -3 + 246, 1, -54.4 -b2, 30.4 -b1 , 0 );
setMoveKey( spep_0 -3 + 248, 1, -55.3 -b2, 31.2 -b1 , 0 );
setMoveKey( spep_0 -3 + 250, 1, -56.1 -b2, 31.9 -b1 , 0 );
setMoveKey( spep_0 -3 + 252, 1, -56.8 -b2, 32.5 -b1 , 0 );
setMoveKey( spep_0 -3 + 254, 1, -57.3 -b2, 33 -b1 , 0 );
setMoveKey( spep_0 -3 + 256, 1, -57.9 -b2, 33.5 -b1 , 0 );
setMoveKey( spep_0 -3 + 258, 1, -58.3 -b2, 33.8 -b1 , 0 );
setMoveKey( spep_0 -3 + 260, 1, -58.6 -b2, 34.1 -b1 , 0 );
setMoveKey( spep_0 -3 + 262, 1, -58.8 -b2, 34.4 -b1 , 0 );
setMoveKey( spep_0 -3 + 264, 1, -58.9 -b2, 34.4 -b1 , 0 );
setMoveKey( spep_0 -3 + 265, 1, -58.9 -b2, 34.4 -b1 , 0 );
setMoveKey( spep_0 -3 + 266, 1, -63.6, 57.8 , 0 );  --仰け反り
setMoveKey( spep_0 -3 + 268, 1, -159.1, 136.9 , 0 );
setMoveKey( spep_0 -3 + 270, 1, -190.8, 161.9 , 0 );
setMoveKey( spep_0 -3 + 272, 1, -254.1, 214.4 , 0 );
setMoveKey( spep_0 -3 + 274, 1, -312.4, 262.7 , 0 );
setMoveKey( spep_0 -3 + 276, 1, -365.6, 306.7 , 0 );
setMoveKey( spep_0 -3 + 278, 1, -413.7, 346.6 , 0 );
setMoveKey( spep_0 -3 + 280, 1, -456.8, 382.3 , 0 );
setMoveKey( spep_0 -3 + 282, 1, -494.8, 413.8 , 0 );
setMoveKey( spep_0 -3 + 284, 1, -527.7, 441 , 0 );
setMoveKey( spep_0 -3 + 286, 1, -555.6, 464.1 , 0 );
setMoveKey( spep_0 -3 + 288, 1, -578.4, 483 , 0 );
setMoveKey( spep_0 -3 + 290, 1, -596.1, 497.7 , 0 );
setMoveKey( spep_0 -3 + 292, 1, -608.8, 508.2 , 0 );
setMoveKey( spep_0 -3 + 294, 1, -616.4, 514.5 , 0 );
setMoveKey( spep_0 -3 + 296, 1, -618.9, 516.6 , 0 );

a1 = 0.6;
setScaleKey( spep_0 -3 + 210, 1, 1.5 +a1, 1.5 +a1 );
setScaleKey( spep_0 -3 + 265, 1, 1.5 +a1, 1.5 +a1 );
a1x = 0.48;
setScaleKey( spep_0 -3 + 266, 1, 1.95 +a1x, 1.95 +a1x );
setScaleKey( spep_0 -3 + 268, 1, 1.95 +a1x, 1.95 +a1x );
setScaleKey( spep_0 -3 + 270, 1, 1.5 +a1x, 1.5 +a1x );
setScaleKey( spep_0 -3 + 296, 1, 1.5 +a1x, 1.5 +a1x );

setRotateKey( spep_0 -3 + 210, 1, 20 );
setRotateKey( spep_0 -3 + 266, 1, 30 );
setRotateKey( spep_0 -3 + 268, 1, 26.1 );
setRotateKey( spep_0 -3 + 270, 1, 22.5 );
setRotateKey( spep_0 -3 + 272, 1, 19.2 );
setRotateKey( spep_0 -3 + 274, 1, 16.1 );
setRotateKey( spep_0 -3 + 276, 1, 13.3 );
setRotateKey( spep_0 -3 + 278, 1, 10.8 );
setRotateKey( spep_0 -3 + 280, 1, 8.5 );
setRotateKey( spep_0 -3 + 282, 1, 6.5 );
setRotateKey( spep_0 -3 + 284, 1, 4.8 );
setRotateKey( spep_0 -3 + 286, 1, 3.3 );
setRotateKey( spep_0 -3 + 288, 1, 2.1 );
setRotateKey( spep_0 -3 + 290, 1, 1.2 );
setRotateKey( spep_0 -3 + 292, 1, 0.5 );
setRotateKey( spep_0 -3 + 294, 1, 0.1 );
setRotateKey( spep_0 -3 + 296, 1, 0 );

-- ** 敵キャラクター3 ** --
setDisp( spep_0 -3 + 368, 1, 1 );
setDisp( spep_0 -3 + 420, 1, 0 );
changeAnime( spep_0 -3 + 368, 1, 107 );
changeAnime( spep_0 -3 + 374, 1, 106 );

c1 = 600;
setMoveKey( spep_0 -3 + 368, 1, 23.9, -675.8 +c1, 0 );  --顔アップ
setMoveKey( spep_0 -3 + 370, 1, 23.9, -675.8 +c1 , 0 );
setMoveKey( spep_0 -3 + 372, 1, 151.9, -675.8 +c1 , 0 );
setMoveKey( spep_0 -3 + 373, 1, 151.9, -675.8 +c1 , 0 );
setMoveKey( spep_0 -3 + 374, 1, -4.4, -131.2 , 0 );  --仰け反り
setMoveKey( spep_0 -3 + 376, 1, 2.6, -131.2 , 0 );
setMoveKey( spep_0 -3 + 378, 1, -318.5, -719.9 , 0 );
setMoveKey( spep_0 -3 + 380, 1, -216, -534.5 , 0 );
setMoveKey( spep_0 -3 + 382, 1, -155.6, -426.3 , 0 );
setMoveKey( spep_0 -3 + 384, 1, -112.8, -349.8 , 0 );
setMoveKey( spep_0 -3 + 386, 1, -80.6, -291.6 , 0 );
setMoveKey( spep_0 -3 + 388, 1, -55.2, -245.5 , 0 );
setMoveKey( spep_0 -3 + 390, 1, -34.9, -208.1 , 0 );
setMoveKey( spep_0 -3 + 392, 1, 136.7, -176.8 , 0 );
setMoveKey( spep_0 -3 + 394, 1, 154.7, -152.2 , 0 );
setMoveKey( spep_0 -3 + 396, 1, 196.7, -132.6 , 0 );
setMoveKey( spep_0 -3 + 398, 1, 256.7, -117.4 , 0 );
setMoveKey( spep_0 -3 + 400, 1, 347.6, -106.2 , 0 );
setMoveKey( spep_0 -3 + 402, 1, 511.2, -100.9 , 0 );
setMoveKey( spep_0 -3 + 404, 1, 672.9, -97.5 , 0 );
setMoveKey( spep_0 -3 + 406, 1, 811.8, -94.9 , 0 );
setMoveKey( spep_0 -3 + 408, 1, 926.7, -92.9 , 0 );
setMoveKey( spep_0 -3 + 410, 1, 1017.2, -91.3 , 0 );
setMoveKey( spep_0 -3 + 412, 1, 1083.5, -89.8 , 0 );
setMoveKey( spep_0 -3 + 414, 1, 1126.8, -88.5 , 0 );
setMoveKey( spep_0 -3 + 416, 1, 1148.8, -87.3 , 0 );
setMoveKey( spep_0 -3 + 418, 1, 1150.8, -86.2 , 0 );
setMoveKey( spep_0 -3 + 420, 1, 1147.4, -85.7 , 0 );

a2x = 0.34;
a3x = 0.2;
setScaleKey( spep_0 -3 + 368, 1, 5 +a2x, 5 +a2x );
setScaleKey( spep_0 -3 + 373, 1, 5 +a2x, 5 +a2x );
setScaleKey( spep_0 -3 + 374, 1, 6 +a2x, 6 +a2x );
setScaleKey( spep_0 -3 + 376, 1, 6 +a2x, 6 +a2x );
setScaleKey( spep_0 -3 + 377, 1, 6 +a2x, 6 +a2x );
setScaleKey( spep_0 -3 + 378, 1, 12, 12 );
setScaleKey( spep_0 -3 + 379, 1, 12, 12 );
setScaleKey( spep_0 -3 + 380, 1, 9.22 +a3x, 9.22 +a3x );
setScaleKey( spep_0 -3 + 381, 1, 9.22 +a3x, 9.22 +a3x );
setScaleKey( spep_0 -3 + 382, 1, 7.6 +a2x, 7.6 +a2x );
setScaleKey( spep_0 -3 + 384, 1, 6.45 +a2x, 6.45 +a2x );
setScaleKey( spep_0 -3 + 386, 1, 5.58 +a2x, 5.58 +a2x );
setScaleKey( spep_0 -3 + 388, 1, 4.89 +a2x, 4.89 +a2x );
setScaleKey( spep_0 -3 + 390, 1, 4.33 +a2x, 4.33 +a2x );
setScaleKey( spep_0 -3 + 392, 1, 3.54 +a2x, 3.54 +a2x );
setScaleKey( spep_0 -3 + 394, 1, 3.19 +a2x, 3.19 +a2x );
setScaleKey( spep_0 -3 + 396, 1, 2.89 +a2x, 2.89 +a2x );
setScaleKey( spep_0 -3 + 398, 1, 2.64 +a2x, 2.64 +a2x );
setScaleKey( spep_0 -3 + 400, 1, 2.43 +a2x, 2.43 +a2x );
setScaleKey( spep_0 -3 + 402, 1, 2.25 +a2x, 2.25 +a2x );
setScaleKey( spep_0 -3 + 404, 1, 2.11 +a2x, 2.11 +a2x );
setScaleKey( spep_0 -3 + 406, 1, 1.99 +a2x, 1.99 +a2x );
setScaleKey( spep_0 -3 + 408, 1, 1.89 +a2x, 1.89 +a2x );
setScaleKey( spep_0 -3 + 410, 1, 1.81 +a2x, 1.81 +a2x );
setScaleKey( spep_0 -3 + 412, 1, 1.75 +a2x, 1.75 +a2x );
setScaleKey( spep_0 -3 + 414, 1, 1.7 +a2x, 1.7 +a2x );
setScaleKey( spep_0 -3 + 416, 1, 1.67 +a2x, 1.67 +a2x );
setScaleKey( spep_0 -3 + 418, 1, 1.66 +a2x, 1.66 +a2x );
setScaleKey( spep_0 -3 + 420, 1, 1.65 +a2x, 1.65 +a2x );

setRotateKey( spep_0 -3 + 368, 1, -90 );
setRotateKey( spep_0 -3 + 373, 1, -90 );
setRotateKey( spep_0 -3 + 374, 1, -30 );
setRotateKey( spep_0 -3 + 390, 1, -30 );
setRotateKey( spep_0 -3 + 392, 1, -20 );
setRotateKey( spep_0 -3 + 394, 1, -19.3 );
setRotateKey( spep_0 -3 + 396, 1, -17.7 );
setRotateKey( spep_0 -3 + 398, 1, -15.2 );
setRotateKey( spep_0 -3 + 400, 1, -11.2 );
setRotateKey( spep_0 -3 + 402, 1, -3.6 );
setRotateKey( spep_0 -3 + 404, 1, 4.8 );
setRotateKey( spep_0 -3 + 406, 1, 13 );
setRotateKey( spep_0 -3 + 408, 1, 20.5 );
setRotateKey( spep_0 -3 + 410, 1, 26.9 );
setRotateKey( spep_0 -3 + 412, 1, 32.2 );
setRotateKey( spep_0 -3 + 414, 1, 36 );
setRotateKey( spep_0 -3 + 416, 1, 38.2 );
setRotateKey( spep_0 -3 + 418, 1, 39 );
setRotateKey( spep_0 -3 + 420, 1, 39 );

-- ** 音 ** --
--悟空膝蹴り2
playSe( spep_0 + 194, 1004 );

--悟空膝蹴り3
SE06 = playSe( spep_0 + 204, 1060 );
setSeVolume( spep_0 + 204, 1060, 100 );
stopSe( spep_0 + 221, SE06, 21 );

--悟空膝蹴り1
playSe( spep_0 + 204, 1009 );	
--悟空膝蹴り2
playSe( spep_0 + 208, 1110 );
setSeVolume( spep_0 + 208, 1110, 74 );
--悟空蹴り上げ3
playSe( spep_0 + 260, 1003 );
setSeVolume( spep_0 + 260, 1003, 69 );
--悟空蹴り上げ4
playSe( spep_0 + 266, 1010 );
--悟空蹴り上げ5
playSe( spep_0 + 268, 1110 );
--悟空蹴り上げ6
playSe( spep_0 + 270, 1001 );
setSeVolume( spep_0 + 270, 1001, 67 );

--ベジータ突っ込んでくる1
playSe( spep_0 + 284, 1072 );

--ベジータ突っ込んでくる2
SE07 = playSe( spep_0 + 294, 1183 );
setSeVolume( spep_0 + 294, 1183, 56 );
stopSe( spep_0 + 380, SE07, 0 );

--ベジータ突っ込んでくる3
SE08 = playSe( spep_0 + 310, 9 );
stopSe( spep_0 + 380, SE08, 0 );

--ベジータパンチ1
playSe( spep_0 + 364, 1003 );
--ベジータパンチ2
playSe( spep_0 + 374, 1009 );
--ベジータパンチ3
playSe( spep_0 + 376, 1000 );
setSeVolume( spep_0 + 376, 1000, 72 );
--ベジータパンチ4
playSe( spep_0 + 376, 1187 );
setSeVolume( spep_0 + 376, 1187, 77 );
--ベジータパンチ5
playSe( spep_0 + 376, 1017 );
setSeVolume( spep_0 + 376, 1017, 93 );
--ベジータパンチ6
SE09 = playSe( spep_0 + 380, 1109 );
setSeVolume( spep_0 + 380, 1109, 82 );
stopSe( spep_0 + 395, SE09, 17 );

--悟空かけよる
playSe( spep_0 + 432, 1048 );
setSeVolume( spep_0 + 432, 1048, 78 );

--二人振り向く
playSe( spep_0 + 482, 1003 );
setSeVolume( spep_0 + 482, 1003, 24 );

--ベジータ気弾溜める
playSe( spep_0 + 512, 1276 );

--顔カットイン
playSe( spep_0 + 518, 1018 );

--二人気弾溜め背景1
SE10 = playSe( spep_0 + 518, 1265 );
stopSe( spep_0 + 622, SE10, 0 );
--二人気弾溜め背景	
playSe( spep_0 + 518, 1179 );
setSeVolume( spep_0 + 518, 1179, 46 );

--ベジータ気弾溜める
playSe( spep_0 + 528, 1130 );
setSeVolume( spep_0 + 528, 1130, 38 );

--悟空気弾溜める
SE11 = playSe( spep_0 + 556, 1276 );
stopSe( spep_0 + 614, SE11, 0 );

--ベジータ手をあげる
playSe( spep_0 + 558, 1004 );
setSeVolume( spep_0 + 558, 1004, 71 );

--悟空気弾溜める
SE12 = playSe( spep_0 + 568, 1130 );
setSeVolume( spep_0 + 568, 1130, 40 );
stopSe( spep_0 + 614, SE12, 0 );

--悟空てをあげる
SE13 = playSe( spep_0 + 590, 1004 );
setSeVolume( spep_0 + 590, 1004, 54 );
setPitch( spep_0 + 590, SE13, 200 );
setTimeStretch( SE13, 1.13, 10, 1 );


-- ** 次の準備 ** --
spep_1 = spep_0 + 614;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
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
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

--------------------------------------
--気弾を投げる〜フィニッシュ(224F)
--------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --気弾を投げる〜フィニッシュ(フロント)(ef_003)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 224, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 224, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 224, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 224, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --気弾を投げる〜フィニッシュ(バッグ)(ef_004)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 224, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 224, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 224, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 224, finish_b, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_2 -3 + 18,  10012, 20, 0x100, -1, 0, -17.5, -81.6 );  --ズオッ
setEffMoveKey( spep_2 -3 + 18, ctzuo, -17.5, -81.6 , 0 );
setEffMoveKey( spep_2 -3 + 20, ctzuo, -17.5, -128.5 , 0 );
setEffMoveKey( spep_2 -3 + 22, ctzuo, -17.5, -175.2 , 0 );
setEffMoveKey( spep_2 -3 + 24, ctzuo, -24.3, -201.2 , 0 );
setEffMoveKey( spep_2 -3 + 26, ctzuo, -29.5, -221.5 , 0 );
setEffMoveKey( spep_2 -3 + 28, ctzuo, -31.2, -234 , 0 );
setEffMoveKey( spep_2 -3 + 30, ctzuo, -32.4, -242.7 , 0 );
setEffMoveKey( spep_2 -3 + 32, ctzuo, -33.2, -248.6 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctzuo, -33.7, -252.3 , 0 );
setEffMoveKey( spep_2 -3 + 36, ctzuo, -34, -254.3 , 0 );
setEffMoveKey( spep_2 -3 + 38, ctzuo, -34.3, -255.2 , 0 );

setEffScaleKey( spep_2 -3 + 18, ctzuo, 1, 1 );
setEffScaleKey( spep_2 -3 + 20, ctzuo, 2, 2 );
setEffScaleKey( spep_2 -3 + 22, ctzuo, 3, 3 );
setEffScaleKey( spep_2 -3 + 24, ctzuo, 3.49, 3.49 );
setEffScaleKey( spep_2 -3 + 26, ctzuo, 3.87, 3.87 );
setEffScaleKey( spep_2 -3 + 28, ctzuo, 4.11, 4.11 );
setEffScaleKey( spep_2 -3 + 30, ctzuo, 4.27, 4.27 );
setEffScaleKey( spep_2 -3 + 32, ctzuo, 4.38, 4.38 );
setEffScaleKey( spep_2 -3 + 34, ctzuo, 4.45, 4.45 );
setEffScaleKey( spep_2 -3 + 36, ctzuo, 4.49, 4.49 );
setEffScaleKey( spep_2 -3 + 38, ctzuo, 4.5, 4.5 );

setEffRotateKey( spep_2 -3 + 18, ctzuo, 0 );
setEffRotateKey( spep_2 -3 + 38, ctzuo, 0 );

setEffAlphaKey( spep_2 -3 + 18, ctzuo, 255 );
setEffAlphaKey( spep_2 -3 + 26, ctzuo, 255 );
setEffAlphaKey( spep_2 -3 + 28, ctzuo, 160 );
setEffAlphaKey( spep_2 -3 + 30, ctzuo, 93 );
setEffAlphaKey( spep_2 -3 + 32, ctzuo, 48 );
setEffAlphaKey( spep_2 -3 + 34, ctzuo, 20 );
setEffAlphaKey( spep_2 -3 + 36, ctzuo, 5 );
setEffAlphaKey( spep_2 -3 + 38, ctzuo, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 48, 1, 1 );
setDisp( spep_2 -3 + 96, 1, 0 );
changeAnime( spep_2 -3 + 48, 1, 105 );

setMoveKey( spep_2 -3 + 48, 1, 17.4, -1.5 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 9.6, 19.4 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 9.4, 23.6 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 6.7, 30 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 6, 30.7 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 5.5, 34.8 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 5.1, 34.8 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 3.7, 36.7 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 4.6, 37.5 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 3.2, 37.8 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 3.4, 39.5 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 3.7, 38.9 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 2.3, 40.4 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 3.5, 40 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 2.4, 40.7 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 2.9, 40.1 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 3.1, 41.8 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 2.4, 40.7 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 3.1, 41.9 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 2, 41.5 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 2.9, 40.8 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 2.4, 42.4 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 3.2, 41.4 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 2, 41.8 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 2, 41.8 , 0 );

a2 = 0.35;
setScaleKey( spep_2 -3 + 48, 1, 1 +a2, 1 +a2 );
setScaleKey( spep_2 -3 + 50, 1, 0.68 +a2, 0.68 +a2 );
setScaleKey( spep_2 -3 + 52, 1, 0.57 +a2, 0.57 +a2 );
setScaleKey( spep_2 -3 + 54, 1, 0.51 +a2, 0.51 +a2 );
setScaleKey( spep_2 -3 + 56, 1, 0.46 +a2, 0.46 +a2 );
setScaleKey( spep_2 -3 + 58, 1, 0.43 +a2, 0.43 +a2 );
setScaleKey( spep_2 -3 + 60, 1, 0.41 +a2, 0.41 +a2 );
setScaleKey( spep_2 -3 + 62, 1, 0.39 +a2, 0.39 +a2 );
setScaleKey( spep_2 -3 + 64, 1, 0.37 +a2, 0.37 +a2 );
setScaleKey( spep_2 -3 + 66, 1, 0.36 +a2, 0.36 +a2 );
setScaleKey( spep_2 -3 + 68, 1, 0.35 +a2, 0.35 +a2 );
setScaleKey( spep_2 -3 + 70, 1, 0.34 +a2, 0.34 +a2 );
setScaleKey( spep_2 -3 + 72, 1, 0.33 +a2, 0.33 +a2 );
setScaleKey( spep_2 -3 + 74, 1, 0.33 +a2, 0.33 +a2 );
setScaleKey( spep_2 -3 + 76, 1, 0.32 +a2, 0.32 +a2 );
setScaleKey( spep_2 -3 + 78, 1, 0.32 +a2, 0.32 +a2 );
setScaleKey( spep_2 -3 + 80, 1, 0.31 +a2, 0.31 +a2 );
setScaleKey( spep_2 -3 + 88, 1, 0.31 +a2, 0.31 +a2 );
setScaleKey( spep_2 -3 + 90, 1, 0.3 +a2, 0.3 +a2 );
setScaleKey( spep_2 -3 + 96, 1, 0.3 +a2, 0.3 +a2 );

setRotateKey( spep_2 -3 + 48, 1, 0 );
setRotateKey( spep_2 -3 + 96, 1, 0 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 224, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--二人気弾発射1
playSe( spep_2 + 16, 1027 );
setSeVolume( spep_2 + 16, 1027, 63 );
--二人気弾発射2
playSe( spep_2 + 16, 1133 );
setSeVolume( spep_2 + 16, 1133, 126 );
--二人気弾発射3
playSe( spep_2 + 24, 1236 );
setSeVolume( spep_2 + 24, 1236, 100 );

--二人気弾発射4
SE14 = playSe( spep_2 + 24, 1212 );
setSeVolume( spep_2 + 24, 1212, 49 );
stopSe( spep_2 + 24, SE14, 38 );

--爆発1
playSe( spep_2 + 92, 1024 );
setSeVolume( spep_2 + 92, 1024, 89 );
--爆発2
playSe( spep_2 + 96, 1159 );
--爆発3
playSe( spep_2 + 100, 1188 );
setSeVolume( spep_2 + 100, 1188, 88 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 102 );
endPhase( spep_2 + 202 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 悟空ベジータが敵と対峙〜気弾溜め(614F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0 );  --悟空ベジータが敵と対峙〜気弾溜めフロント(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 614, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 614, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 614, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 614, first_f, 255 );

first_b = entryEffect( spep_0 + 0, SP_02r, 0x80, -1, 0, 0, 0 );  --悟空ベジータが敵と対峙〜気弾溜めバッグ(ef_002)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 614, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 614, first_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 614, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 614, first_b, 255 );

-- ** 書き文字エントリー ** --
ctbago = entryEffectLife( spep_0 -3 + 380,  10021, 28, 0x100, -1, 0, 135.7, 56.7 );  --バゴォッ
setEffMoveKey( spep_0 -3 + 380, ctbago, 135.7, 56.7 , 0 );
setEffMoveKey( spep_0 -3 + 382, ctbago, 106.2, 76.6 , 0 );
setEffMoveKey( spep_0 -3 + 384, ctbago, 79.1, 101.4 , 0 );
setEffMoveKey( spep_0 -3 + 386, ctbago, 43.1, 135.7 , 0 );
setEffMoveKey( spep_0 -3 + 388, ctbago, 23.4, 151.8 , 0 );
setEffMoveKey( spep_0 -3 + 390, ctbago, 12.5, 179.8 , 0 );
setEffMoveKey( spep_0 -3 + 392, ctbago, 0.2, 183.2 , 0 );
setEffMoveKey( spep_0 -3 + 394, ctbago, -10.3, 207.7 , 0 );
setEffMoveKey( spep_0 -3 + 396, ctbago, -11.5, 207.7 , 0 );
setEffMoveKey( spep_0 -3 + 398, ctbago, -25.9, 212.1 , 0 );
setEffMoveKey( spep_0 -3 + 400, ctbago, -22.2, 214.7 , 0 );
setEffMoveKey( spep_0 -3 + 402, ctbago, -25.9, 209.5 , 0 );
setEffMoveKey( spep_0 -3 + 404, ctbago, -24, 224.1 , 0 );
setEffMoveKey( spep_0 -3 + 406, ctbago, -28.7, 215.5 , 0 );
setEffMoveKey( spep_0 -3 + 408, ctbago, -34.7, 220.9 , 0 );

setEffScaleKey( spep_0 -3 + 380, ctbago, 1.05, 1.02 );
setEffScaleKey( spep_0 -3 + 382, ctbago, 1.17, 1.14 );
setEffScaleKey( spep_0 -3 + 384, ctbago, 1.29, 1.25 );
setEffScaleKey( spep_0 -3 + 386, ctbago, 2.11, 2.06 );
setEffScaleKey( spep_0 -3 + 388, ctbago, 2.3, 2.24 );
setEffScaleKey( spep_0 -3 + 390, ctbago, 2.46, 2.39 );
setEffScaleKey( spep_0 -3 + 392, ctbago, 2.6, 2.51 );
setEffScaleKey( spep_0 -3 + 394, ctbago, 2.7, 2.61 );
setEffScaleKey( spep_0 -3 + 396, ctbago, 2.77, 2.68 );
setEffScaleKey( spep_0 -3 + 398, ctbago, 2.82, 2.72 );
setEffScaleKey( spep_0 -3 + 400, ctbago, 2.83, 2.73 );
setEffScaleKey( spep_0 -3 + 402, ctbago, 2.84, 2.74 );
setEffScaleKey( spep_0 -3 + 404, ctbago, 2.87, 2.76 );
setEffScaleKey( spep_0 -3 + 406, ctbago, 2.91, 2.8 );
setEffScaleKey( spep_0 -3 + 408, ctbago, 2.97, 2.86 );

setEffRotateKey( spep_0 -3 + 380, ctbago, -15 );
setEffRotateKey( spep_0 -3 + 408, ctbago, -15 );

setEffAlphaKey( spep_0 -3 + 380, ctbago, 255 );
setEffAlphaKey( spep_0 -3 + 400, ctbago, 255 );
setEffAlphaKey( spep_0 -3 + 402, ctbago, 239 );
setEffAlphaKey( spep_0 -3 + 404, ctbago, 191 );
setEffAlphaKey( spep_0 -3 + 406, ctbago, 112 );
setEffAlphaKey( spep_0 -3 + 408, ctbago, 0 );


spep_x = spep_0 + 506;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50 +20, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, 50 +20, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50 +20, 515.5 , 0 );

setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );

setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 敵キャラクター1 ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 51, 1, 0 );
changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 115.1, -91.6 , 0 );
setMoveKey( spep_0 + 1, 1, 115.1, -91.6 , 0 );
setMoveKey( spep_0 + 2, 1, 114.1, -90.8 , 0 );
setMoveKey( spep_0 + 3, 1, 114.1, -90.8 , 0 );
setMoveKey( spep_0 + 4, 1, 113.1, -90 , 0 );
setMoveKey( spep_0 + 5, 1, 113.1, -90 , 0 );
setMoveKey( spep_0 + 6, 1, 112.2, -89.3 , 0 );
setMoveKey( spep_0 + 8, 1, 111.4, -88.6 , 0 );
setMoveKey( spep_0 + 10, 1, 110.5, -87.9 , 0 );
setMoveKey( spep_0 + 12, 1, 109.7, -87.2 , 0 );
setMoveKey( spep_0 + 14, 1, 108.9, -86.6 , 0 );
setMoveKey( spep_0 + 16, 1, 108.2, -86 , 0 );
setMoveKey( spep_0 + 18, 1, 107.5, -85.5 , 0 );
setMoveKey( spep_0 + 20, 1, 106.9, -85 , 0 );
setMoveKey( spep_0 + 22, 1, 106.3, -84.5 , 0 );
setMoveKey( spep_0 + 24, 1, 105.7, -84 , 0 );
setMoveKey( spep_0 + 26, 1, 105.2, -83.6 , 0 );
setMoveKey( spep_0 + 28, 1, 104.7, -83.2 , 0 );
setMoveKey( spep_0 + 30, 1, 104.3, -82.8 , 0 );
setMoveKey( spep_0 + 32, 1, 103.9, -82.5 , 0 );
setMoveKey( spep_0 + 34, 1, 103.5, -82.2 , 0 );
setMoveKey( spep_0 + 36, 1, 103.1, -81.9 , 0 );
setMoveKey( spep_0 + 38, 1, 102.9, -81.7 , 0 );
setMoveKey( spep_0 + 40, 1, 102.6, -81.5 , 0 );
setMoveKey( spep_0 + 42, 1, 102.4, -81.3 , 0 );
setMoveKey( spep_0 + 44, 1, 102.2, -81.2 , 0 );
setMoveKey( spep_0 + 46, 1, 102.1, -81 , 0 );
setMoveKey( spep_0 + 48, 1, 102, -81 , 0 );
setMoveKey( spep_0 + 50, 1, 101.9, -80.9 , 0 );
setMoveKey( spep_0 + 51, 1, 101.9, -80.9 , 0 );

setScaleKey( spep_0 + 0, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 1, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 2, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 3, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 4, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 5, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 6, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 8, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 10, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 14, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 16, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 22, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 24, 1, 2.76, 2.76 );
setScaleKey( spep_0 + 34, 1, 2.76, 2.76 );
setScaleKey( spep_0 + 36, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 51, 1, 2.75, 2.75 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 51, 1, 0 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 614, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--入り
playSe( spep_0 + 0, 8 );
setSeVolume( spep_0 + 0, 8, 56 );

--悟空飛んでくる1
SE00 = playSe( spep_0 + 60, 1003 );
setSeVolume( spep_0 + 60, 1003, 42 );
setPitch( spep_0 + 60, SE00, -700 );
setTimeStretch( SE00, 0.53, 10, 1 );

--悟空飛んでくる2
playSe( spep_0 + 86, 44 );
setSeVolume( spep_0 + 86, 44, 100 );

--空飛んでくる3
SE01 = playSe( spep_0 + 86, 1109 );
stopSe( spep_0 + 93, SE01, 5 );

--ベジータ飛んでくる1
SE02 =  playSe( spep_0 + 112, 1003 );
setSeVolume( spep_0 + 112, 1003, 43 );
setPitch( spep_0 + 112, SE02, -600 );
setTimeStretch( SE02, 0.6, 10, 1 );

--ベジータ飛んでくる2
SE03 = playSe( spep_0 + 142, 44 );
setSeVolume( spep_0 + 142, 44, 100 );
setPitch( spep_0 + 142, SE03, -200 );
setTimeStretch( SE03, 0.87, 10, 1 );

--ベジータ飛んでくる3
SE04 = playSe( spep_0 + 142, 1109 );
setSeVolume( spep_0 + 142, 1109, 100 );
stopSe( spep_0 + 149, SE04, 5 );

--悟空膝蹴り1
SE05 = playSe( spep_0 + 180, 9 );
setSeVolume( spep_0 + 180, 9, 0 );
setSeVolume( spep_0 + 197, 9, 100 );
stopSe( spep_0 + 212, SE05, 17 );
setPitch( spep_0 + 180, SE05, -400 );
setTimeStretch( SE05, 0.49, 10, 1 );


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 192; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

stopSe( SP_dodge - 12, SE05, 0 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
setMoveKey( SP_dodge + 0, 1, 297.3, -140.8 , 0 );
setMoveKey( SP_dodge  + 2, 1, 292.4, -139.2 , 0 );
setMoveKey( SP_dodge  + 4, 1, 308.3, -140.5 , 0 );
setMoveKey( SP_dodge  + 6, 1, 305.8, -154.7 , 0 );
setMoveKey( SP_dodge  + 8, 1, 298.8, -137 , 0 );
setMoveKey( SP_dodge  + 10, 1, 314, -142.2 , 0 );

setScaleKey( SP_dodge + 0, 1, 0.24, 0.24 );
setScaleKey( SP_dodge + 10, 1, 0.24, 0.24 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

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

-- ** 敵キャラクター2 ** --
setDisp( spep_0 -3 + 210, 1, 1 );
setDisp( spep_0 -3 + 296, 1, 0 );
changeAnime( spep_0 -3 + 210, 1, 108 );
changeAnime( spep_0 -3 + 266, 1, 106 );

b1 = 17;
b2 = 98;
setMoveKey( spep_0 -3 + 210, 1, -21.2 +b2, -37.1 -b1 , 0 );
setMoveKey( spep_0 -3 + 212, 1, 3.7 +b2, -14.9 -b1 , 0 );
setMoveKey( spep_0 -3 + 214, 1, 12.7 +b2, -6.8 -b1 , 0 );
setMoveKey( spep_0 -3 + 216, 1, 19.2 +b2, -1 -b1 , 0 );
setMoveKey( spep_0 -3 + 218, 1, 24.3 +b2, 3.5 -b1 , 0 );
setMoveKey( spep_0 -3 + 220, 1, 28.6 +b2, 7.3 -b1 , 0 );
setMoveKey( spep_0 -3 + 222, 1, 32.2 +b2, 10.6 -b1 , 0 );
setMoveKey( spep_0 -3 + 224, 1, 35.4 +b2, 13.4 -b1 , 0 );
setMoveKey( spep_0 -3 + 226, 1, 38.2 +b2, 15.9 -b1 , 0 );
setMoveKey( spep_0 -3 + 228, 1, 40.7 +b2, 18.1 -b1 , 0 );
setMoveKey( spep_0 -3 + 230, 1, 42.9 +b2, 20.1 -b1 , 0 );
setMoveKey( spep_0 -3 + 232, 1, 44.9 +b2, 21.9 -b1 , 0 );
setMoveKey( spep_0 -3 + 234, 1, 46.7 +b2, 23.5 -b1 , 0 );
setMoveKey( spep_0 -3 + 236, 1, 48.3 +b2, 25 -b1 , 0 );
setMoveKey( spep_0 -3 + 238, 1, 49.8 +b2, 26.3 -b1 , 0 );
setMoveKey( spep_0 -3 + 240, 1, 51.1 +b2, 27.5 -b1 , 0 );
setMoveKey( spep_0 -3 + 242, 1, 52.3 +b2, 28.6 -b1 , 0 );
setMoveKey( spep_0 -3 + 244, 1, 53.4 +b2, 29.5 -b1 , 0 );
setMoveKey( spep_0 -3 + 246, 1, 54.4 +b2, 30.4 -b1 , 0 );
setMoveKey( spep_0 -3 + 248, 1, 55.3 +b2, 31.2 -b1 , 0 );
setMoveKey( spep_0 -3 + 250, 1, 56.1 +b2, 31.9 -b1 , 0 );
setMoveKey( spep_0 -3 + 252, 1, 56.8 +b2, 32.5 -b1 , 0 );
setMoveKey( spep_0 -3 + 254, 1, 57.3 +b2, 33 -b1 , 0 );
setMoveKey( spep_0 -3 + 256, 1, 57.9 +b2, 33.5 -b1 , 0 );
setMoveKey( spep_0 -3 + 258, 1, 58.3 +b2, 33.8 -b1 , 0 );
setMoveKey( spep_0 -3 + 260, 1, 58.6 +b2, 34.1 -b1 , 0 );
setMoveKey( spep_0 -3 + 262, 1, 58.8 +b2, 34.4 -b1 , 0 );
setMoveKey( spep_0 -3 + 264, 1, 58.9 +b2, 34.4 -b1 , 0 );
setMoveKey( spep_0 -3 + 265, 1, 58.9 +b2, 34.4 -b1 , 0 );
setMoveKey( spep_0 -3 + 266, 1, 63.6, 57.8 , 0 );  --仰け反り
setMoveKey( spep_0 -3 + 268, 1, 159.1, 136.9 , 0 );
setMoveKey( spep_0 -3 + 270, 1, 190.8, 161.9 , 0 );
setMoveKey( spep_0 -3 + 272, 1, 254.1, 214.4 , 0 );
setMoveKey( spep_0 -3 + 274, 1, 312.4, 262.7 , 0 );
setMoveKey( spep_0 -3 + 276, 1, 365.6, 306.7 , 0 );
setMoveKey( spep_0 -3 + 278, 1, 413.7, 346.6 , 0 );
setMoveKey( spep_0 -3 + 280, 1, 456.8, 382.3 , 0 );
setMoveKey( spep_0 -3 + 282, 1, 494.8, 413.8 , 0 );
setMoveKey( spep_0 -3 + 284, 1, 527.7, 441 , 0 );
setMoveKey( spep_0 -3 + 286, 1, 555.6, 464.1 , 0 );
setMoveKey( spep_0 -3 + 288, 1, 578.4, 483 , 0 );
setMoveKey( spep_0 -3 + 290, 1, 596.1, 497.7 , 0 );
setMoveKey( spep_0 -3 + 292, 1, 608.8, 508.2 , 0 );
setMoveKey( spep_0 -3 + 294, 1, 616.4, 514.5 , 0 );
setMoveKey( spep_0 -3 + 296, 1, 618.9, 516.6 , 0 );

a1 = 0.6;
setScaleKey( spep_0 -3 + 210, 1, 1.5 +a1, 1.5 +a1 );
setScaleKey( spep_0 -3 + 265, 1, 1.5 +a1, 1.5 +a1 );
a1x = 0.48;
setScaleKey( spep_0 -3 + 266, 1, 1.95 +a1x, 1.95 +a1x );
setScaleKey( spep_0 -3 + 268, 1, 1.95 +a1x, 1.95 +a1x );
setScaleKey( spep_0 -3 + 270, 1, 1.5 +a1x, 1.5 +a1x );
setScaleKey( spep_0 -3 + 296, 1, 1.5 +a1x, 1.5 +a1x );

setRotateKey( spep_0 -3 + 210, 1, -20 );
setRotateKey( spep_0 -3 + 266, 1, -30 );
setRotateKey( spep_0 -3 + 268, 1, -26.1 );
setRotateKey( spep_0 -3 + 270, 1, -22.5 );
setRotateKey( spep_0 -3 + 272, 1, -19.2 );
setRotateKey( spep_0 -3 + 274, 1, -16.1 );
setRotateKey( spep_0 -3 + 276, 1, -13.3 );
setRotateKey( spep_0 -3 + 278, 1, -10.8 );
setRotateKey( spep_0 -3 + 280, 1, -8.5 );
setRotateKey( spep_0 -3 + 282, 1, -6.5 );
setRotateKey( spep_0 -3 + 284, 1, -4.8 );
setRotateKey( spep_0 -3 + 286, 1, -3.3 );
setRotateKey( spep_0 -3 + 288, 1, -2.1 );
setRotateKey( spep_0 -3 + 290, 1, -1.2 );
setRotateKey( spep_0 -3 + 292, 1, -0.5 );
setRotateKey( spep_0 -3 + 294, 1, -0.1 );
setRotateKey( spep_0 -3 + 296, 1, -0 );

-- ** 敵キャラクター3 ** --
setDisp( spep_0 -3 + 368, 1, 1 );
setDisp( spep_0 -3 + 420, 1, 0 );
changeAnime( spep_0 -3 + 368, 1, 7 );
changeAnime( spep_0 -3 + 374, 1, 6 );

c1 = 600;
setMoveKey( spep_0 -3 + 368, 1, -23.9, -675.8 +c1 , 0 );
setMoveKey( spep_0 -3 + 370, 1, -23.9, -675.8 +c1 , 0 );
setMoveKey( spep_0 -3 + 372, 1, -151.9, -675.8 +c1 , 0 );
setMoveKey( spep_0 -3 + 373, 1, -151.9, -675.8 +c1 , 0 );
setMoveKey( spep_0 -3 + 374, 1, 4.4, -131.2 , 0 );  --仰け反り
setMoveKey( spep_0 -3 + 376, 1, -2.6, -131.2 , 0 );
setMoveKey( spep_0 -3 + 378, 1, 318.5, -719.9 , 0 );
setMoveKey( spep_0 -3 + 380, 1, 216, -534.5 , 0 );
setMoveKey( spep_0 -3 + 382, 1, 155.6, -426.3 , 0 );
setMoveKey( spep_0 -3 + 384, 1, 112.8, -349.8 , 0 );
setMoveKey( spep_0 -3 + 386, 1, 80.6, -291.6 , 0 );
setMoveKey( spep_0 -3 + 388, 1, 55.2, -245.5 , 0 );
setMoveKey( spep_0 -3 + 390, 1, 34.9, -208.1 , 0 );
setMoveKey( spep_0 -3 + 392, 1, -136.7, -176.8 , 0 );
setMoveKey( spep_0 -3 + 394, 1, -154.7, -152.2 , 0 );
setMoveKey( spep_0 -3 + 396, 1, -196.7, -132.6 , 0 );
setMoveKey( spep_0 -3 + 398, 1, -256.7, -117.4 , 0 );
setMoveKey( spep_0 -3 + 400, 1, -347.6, -106.2 , 0 );
setMoveKey( spep_0 -3 + 402, 1, -511.2, -100.9 , 0 );
setMoveKey( spep_0 -3 + 404, 1, -672.9, -97.5 , 0 );
setMoveKey( spep_0 -3 + 406, 1, -811.8, -94.9 , 0 );
setMoveKey( spep_0 -3 + 408, 1, -926.7, -92.9 , 0 );
setMoveKey( spep_0 -3 + 410, 1, -1017.2, -91.3 , 0 );
setMoveKey( spep_0 -3 + 412, 1, -1083.5, -89.8 , 0 );
setMoveKey( spep_0 -3 + 414, 1, -1126.8, -88.5 , 0 );
setMoveKey( spep_0 -3 + 416, 1, -1148.8, -87.3 , 0 );
setMoveKey( spep_0 -3 + 418, 1, -1150.8, -86.2 , 0 );
setMoveKey( spep_0 -3 + 420, 1, -1147.4, -85.7 , 0 );

a2x = 0.34;
a3x = 0.2;
setScaleKey( spep_0 -3 + 368, 1, 5 +a2x, 5 +a2x );
setScaleKey( spep_0 -3 + 373, 1, 5 +a2x, 5 +a2x );
setScaleKey( spep_0 -3 + 374, 1, 6 +a2x, 6 +a2x );
setScaleKey( spep_0 -3 + 376, 1, 6 +a2x, 6 +a2x );
setScaleKey( spep_0 -3 + 377, 1, 6 +a2x, 6 +a2x );
setScaleKey( spep_0 -3 + 378, 1, 12, 12 );
setScaleKey( spep_0 -3 + 379, 1, 12, 12 );
setScaleKey( spep_0 -3 + 380, 1, 9.22 +a3x, 9.22 +a3x );
setScaleKey( spep_0 -3 + 381, 1, 9.22 +a3x, 9.22 +a3x );
setScaleKey( spep_0 -3 + 382, 1, 7.6 +a2x, 7.6 +a2x );
setScaleKey( spep_0 -3 + 384, 1, 6.45 +a2x, 6.45 +a2x );
setScaleKey( spep_0 -3 + 386, 1, 5.58 +a2x, 5.58 +a2x );
setScaleKey( spep_0 -3 + 388, 1, 4.89 +a2x, 4.89 +a2x );
setScaleKey( spep_0 -3 + 390, 1, 4.33 +a2x, 4.33 +a2x );
setScaleKey( spep_0 -3 + 392, 1, 3.54 +a2x, 3.54 +a2x );
setScaleKey( spep_0 -3 + 394, 1, 3.19 +a2x, 3.19 +a2x );
setScaleKey( spep_0 -3 + 396, 1, 2.89 +a2x, 2.89 +a2x );
setScaleKey( spep_0 -3 + 398, 1, 2.64 +a2x, 2.64 +a2x );
setScaleKey( spep_0 -3 + 400, 1, 2.43 +a2x, 2.43 +a2x );
setScaleKey( spep_0 -3 + 402, 1, 2.25 +a2x, 2.25 +a2x );
setScaleKey( spep_0 -3 + 404, 1, 2.11 +a2x, 2.11 +a2x );
setScaleKey( spep_0 -3 + 406, 1, 1.99 +a2x, 1.99 +a2x );
setScaleKey( spep_0 -3 + 408, 1, 1.89 +a2x, 1.89 +a2x );
setScaleKey( spep_0 -3 + 410, 1, 1.81 +a2x, 1.81 +a2x );
setScaleKey( spep_0 -3 + 412, 1, 1.75 +a2x, 1.75 +a2x );
setScaleKey( spep_0 -3 + 414, 1, 1.7 +a2x, 1.7 +a2x );
setScaleKey( spep_0 -3 + 416, 1, 1.67 +a2x, 1.67 +a2x );
setScaleKey( spep_0 -3 + 418, 1, 1.66 +a2x, 1.66 +a2x );
setScaleKey( spep_0 -3 + 420, 1, 1.65 +a2x, 1.65 +a2x );

setRotateKey( spep_0 -3 + 368, 1, 90 );
setRotateKey( spep_0 -3 + 373, 1, 90 );
setRotateKey( spep_0 -3 + 374, 1, 30 );
setRotateKey( spep_0 -3 + 390, 1, 30 );
setRotateKey( spep_0 -3 + 392, 1, 20 );
setRotateKey( spep_0 -3 + 394, 1, 19.3 );
setRotateKey( spep_0 -3 + 396, 1, 17.7 );
setRotateKey( spep_0 -3 + 398, 1, 15.2 );
setRotateKey( spep_0 -3 + 400, 1, 11.2 );
setRotateKey( spep_0 -3 + 402, 1, 3.6 );
setRotateKey( spep_0 -3 + 404, 1, -4.8 );
setRotateKey( spep_0 -3 + 406, 1, -13 );
setRotateKey( spep_0 -3 + 408, 1, -20.5 );
setRotateKey( spep_0 -3 + 410, 1, -26.9 );
setRotateKey( spep_0 -3 + 412, 1, -32.2 );
setRotateKey( spep_0 -3 + 414, 1, -36 );
setRotateKey( spep_0 -3 + 416, 1, -38.2 );
setRotateKey( spep_0 -3 + 418, 1, -39 );
setRotateKey( spep_0 -3 + 420, 1, -39 );

-- ** 音 ** --
--悟空膝蹴り2
playSe( spep_0 + 194, 1004 );

--悟空膝蹴り3
SE06 = playSe( spep_0 + 204, 1060 );
setSeVolume( spep_0 + 204, 1060, 100 );
stopSe( spep_0 + 221, SE06, 21 );

--悟空膝蹴り1
playSe( spep_0 + 204, 1009 );	
--悟空膝蹴り2
playSe( spep_0 + 208, 1110 );
setSeVolume( spep_0 + 208, 1110, 74 );
--悟空蹴り上げ3
playSe( spep_0 + 260, 1003 );
setSeVolume( spep_0 + 260, 1003, 69 );
--悟空蹴り上げ4
playSe( spep_0 + 266, 1010 );
--悟空蹴り上げ5
playSe( spep_0 + 268, 1110 );
--悟空蹴り上げ6
playSe( spep_0 + 270, 1001 );
setSeVolume( spep_0 + 270, 1001, 67 );

--ベジータ突っ込んでくる1
playSe( spep_0 + 284, 1072 );

--ベジータ突っ込んでくる2
SE07 = playSe( spep_0 + 294, 1183 );
setSeVolume( spep_0 + 294, 1183, 56 );
stopSe( spep_0 + 380, SE07, 0 );

--ベジータ突っ込んでくる3
SE08 = playSe( spep_0 + 310, 9 );
stopSe( spep_0 + 380, SE08, 0 );

--ベジータパンチ1
playSe( spep_0 + 364, 1003 );
--ベジータパンチ2
playSe( spep_0 + 374, 1009 );
--ベジータパンチ3
playSe( spep_0 + 376, 1000 );
setSeVolume( spep_0 + 376, 1000, 72 );
--ベジータパンチ4
playSe( spep_0 + 376, 1187 );
setSeVolume( spep_0 + 376, 1187, 77 );
--ベジータパンチ5
playSe( spep_0 + 376, 1017 );
setSeVolume( spep_0 + 376, 1017, 93 );
--ベジータパンチ6
SE09 = playSe( spep_0 + 380, 1109 );
setSeVolume( spep_0 + 380, 1109, 82 );
stopSe( spep_0 + 395, SE09, 17 );

--悟空かけよる
playSe( spep_0 + 432, 1048 );
setSeVolume( spep_0 + 432, 1048, 78 );

--二人振り向く
playSe( spep_0 + 482, 1003 );
setSeVolume( spep_0 + 482, 1003, 24 );

--ベジータ気弾溜める
playSe( spep_0 + 512, 1276 );

--顔カットイン
playSe( spep_0 + 518, 1018 );

--二人気弾溜め背景1
SE10 = playSe( spep_0 + 518, 1265 );
stopSe( spep_0 + 622, SE10, 0 );
--二人気弾溜め背景	
playSe( spep_0 + 518, 1179 );
setSeVolume( spep_0 + 518, 1179, 46 );

--ベジータ気弾溜める
playSe( spep_0 + 528, 1130 );
setSeVolume( spep_0 + 528, 1130, 38 );

--悟空気弾溜める
SE11 = playSe( spep_0 + 556, 1276 );
stopSe( spep_0 + 614, SE11, 0 );

--ベジータ手をあげる
playSe( spep_0 + 558, 1004 );
setSeVolume( spep_0 + 558, 1004, 71 );

--悟空気弾溜める
SE12 = playSe( spep_0 + 568, 1130 );
setSeVolume( spep_0 + 568, 1130, 40 );
stopSe( spep_0 + 614, SE12, 0 );

--悟空てをあげる
SE13 = playSe( spep_0 + 590, 1004 );
setSeVolume( spep_0 + 590, 1004, 54 );
setPitch( spep_0 + 590, SE13, 200 );
setTimeStretch( SE13, 1.13, 10, 1 );



-- ** 次の準備 ** --
spep_1 = spep_0 + 614;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
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
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

--------------------------------------
--気弾を投げる〜フィニッシュ(224F)
--------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --気弾を投げる〜フィニッシュ(フロント)(ef_003)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 224, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 224, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 224, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 224, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --気弾を投げる〜フィニッシュ(バッグ)(ef_004)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 224, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 224, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 224, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 224, finish_b, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_2 -3 + 18,  10012, 20, 0x100, -1, 0, -17.5, -81.6 );  --ズオッ
setEffMoveKey( spep_2 -3 + 18, ctzuo, -17.5, -81.6 , 0 );
setEffMoveKey( spep_2 -3 + 20, ctzuo, -17.5, -128.5 , 0 );
setEffMoveKey( spep_2 -3 + 22, ctzuo, -17.5, -175.2 , 0 );
setEffMoveKey( spep_2 -3 + 24, ctzuo, -24.3, -201.2 , 0 );
setEffMoveKey( spep_2 -3 + 26, ctzuo, -29.5, -221.5 , 0 );
setEffMoveKey( spep_2 -3 + 28, ctzuo, -31.2, -234 , 0 );
setEffMoveKey( spep_2 -3 + 30, ctzuo, -32.4, -242.7 , 0 );
setEffMoveKey( spep_2 -3 + 32, ctzuo, -33.2, -248.6 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctzuo, -33.7, -252.3 , 0 );
setEffMoveKey( spep_2 -3 + 36, ctzuo, -34, -254.3 , 0 );
setEffMoveKey( spep_2 -3 + 38, ctzuo, -34.3, -255.2 , 0 );

setEffScaleKey( spep_2 -3 + 18, ctzuo, 1, 1 );
setEffScaleKey( spep_2 -3 + 20, ctzuo, 2, 2 );
setEffScaleKey( spep_2 -3 + 22, ctzuo, 3, 3 );
setEffScaleKey( spep_2 -3 + 24, ctzuo, 3.49, 3.49 );
setEffScaleKey( spep_2 -3 + 26, ctzuo, 3.87, 3.87 );
setEffScaleKey( spep_2 -3 + 28, ctzuo, 4.11, 4.11 );
setEffScaleKey( spep_2 -3 + 30, ctzuo, 4.27, 4.27 );
setEffScaleKey( spep_2 -3 + 32, ctzuo, 4.38, 4.38 );
setEffScaleKey( spep_2 -3 + 34, ctzuo, 4.45, 4.45 );
setEffScaleKey( spep_2 -3 + 36, ctzuo, 4.49, 4.49 );
setEffScaleKey( spep_2 -3 + 38, ctzuo, 4.5, 4.5 );

setEffRotateKey( spep_2 -3 + 18, ctzuo, 0 );
setEffRotateKey( spep_2 -3 + 38, ctzuo, 0 );

setEffAlphaKey( spep_2 -3 + 18, ctzuo, 255 );
setEffAlphaKey( spep_2 -3 + 26, ctzuo, 255 );
setEffAlphaKey( spep_2 -3 + 28, ctzuo, 160 );
setEffAlphaKey( spep_2 -3 + 30, ctzuo, 93 );
setEffAlphaKey( spep_2 -3 + 32, ctzuo, 48 );
setEffAlphaKey( spep_2 -3 + 34, ctzuo, 20 );
setEffAlphaKey( spep_2 -3 + 36, ctzuo, 5 );
setEffAlphaKey( spep_2 -3 + 38, ctzuo, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 48, 1, 1 );
setDisp( spep_2 -3 + 96, 1, 0 );
changeAnime( spep_2 -3 + 48, 1, 5 );

setMoveKey( spep_2 -3 + 48, 1, 17.4, -1.5 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 9.6, 19.4 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 9.4, 23.6 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 6.7, 30 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 6, 30.7 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 5.5, 34.8 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 5.1, 34.8 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 3.7, 36.7 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 4.6, 37.5 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 3.2, 37.8 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 3.4, 39.5 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 3.7, 38.9 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 2.3, 40.4 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 3.5, 40 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 2.4, 40.7 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 2.9, 40.1 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 3.1, 41.8 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 2.4, 40.7 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 3.1, 41.9 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 2, 41.5 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 2.9, 40.8 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 2.4, 42.4 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 3.2, 41.4 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 2, 41.8 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 2, 41.8 , 0 );

a2 = 0.35;
setScaleKey( spep_2 -3 + 48, 1, 1 +a2, 1 +a2 );
setScaleKey( spep_2 -3 + 50, 1, 0.68 +a2, 0.68 +a2 );
setScaleKey( spep_2 -3 + 52, 1, 0.57 +a2, 0.57 +a2 );
setScaleKey( spep_2 -3 + 54, 1, 0.51 +a2, 0.51 +a2 );
setScaleKey( spep_2 -3 + 56, 1, 0.46 +a2, 0.46 +a2 );
setScaleKey( spep_2 -3 + 58, 1, 0.43 +a2, 0.43 +a2 );
setScaleKey( spep_2 -3 + 60, 1, 0.41 +a2, 0.41 +a2 );
setScaleKey( spep_2 -3 + 62, 1, 0.39 +a2, 0.39 +a2 );
setScaleKey( spep_2 -3 + 64, 1, 0.37 +a2, 0.37 +a2 );
setScaleKey( spep_2 -3 + 66, 1, 0.36 +a2, 0.36 +a2 );
setScaleKey( spep_2 -3 + 68, 1, 0.35 +a2, 0.35 +a2 );
setScaleKey( spep_2 -3 + 70, 1, 0.34 +a2, 0.34 +a2 );
setScaleKey( spep_2 -3 + 72, 1, 0.33 +a2, 0.33 +a2 );
setScaleKey( spep_2 -3 + 74, 1, 0.33 +a2, 0.33 +a2 );
setScaleKey( spep_2 -3 + 76, 1, 0.32 +a2, 0.32 +a2 );
setScaleKey( spep_2 -3 + 78, 1, 0.32 +a2, 0.32 +a2 );
setScaleKey( spep_2 -3 + 80, 1, 0.31 +a2, 0.31 +a2 );
setScaleKey( spep_2 -3 + 88, 1, 0.31 +a2, 0.31 +a2 );
setScaleKey( spep_2 -3 + 90, 1, 0.3 +a2, 0.3 +a2 );
setScaleKey( spep_2 -3 + 96, 1, 0.3 +a2, 0.3 +a2 );

setRotateKey( spep_2 -3 + 48, 1, 0 );
setRotateKey( spep_2 -3 + 96, 1, 0 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 224, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--二人気弾発射1
playSe( spep_2 + 16, 1027 );
setSeVolume( spep_2 + 16, 1027, 63 );
--二人気弾発射2
playSe( spep_2 + 16, 1133 );
setSeVolume( spep_2 + 16, 1133, 126 );
--二人気弾発射3
playSe( spep_2 + 24, 1236 );
setSeVolume( spep_2 + 24, 1236, 100 );

--二人気弾発射4
SE14 = playSe( spep_2 + 24, 1212 );
setSeVolume( spep_2 + 24, 1212, 49 );
stopSe( spep_2 + 24, SE14, 38 );

--爆発1
playSe( spep_2 + 92, 1024 );
setSeVolume( spep_2 + 92, 1024, 89 );
--爆発2
playSe( spep_2 + 96, 1159 );
--爆発3
playSe( spep_2 + 100, 1188 );
setSeVolume( spep_2 + 100, 1188, 88 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 102 );
endPhase( spep_2 + 202 );

end