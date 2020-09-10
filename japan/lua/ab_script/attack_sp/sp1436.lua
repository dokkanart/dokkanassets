--超サイヤ人3ゴテンクス_ブレーン・クラッシュ・ハンマー

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
SP_01 = 155343;  --突進〜ラッシュ〜気溜め
SP_02 = 155344;  --突進〜ラッシュ〜気溜め
SP_03 = 155345;  --気弾発射〜爆発フィニッシュ
SP_04 = 155346;  --気弾発射〜爆発フィニッシュ

--敵側
SP_01x = 155347;  --突進〜ラッシュ〜気溜め
SP_02x = 155348;  --突進〜ラッシュ〜気溜め
SP_03x = 155349;  --気弾発射〜爆発フィニッシュ
SP_04x = 155350;  --気弾発射〜爆発フィニッシュ

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 突進〜ラッシュ〜気溜め(396F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --突進〜ラッシュ〜気溜め(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 396, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 396, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 396, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 396, first_f, 255 );

first_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --突進〜ラッシュ〜気溜め(ef_002)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 396, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 396, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 396, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 396, first_b, 255 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 398, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
--入り
SE0 = playSe( spep_0 + 0, 8 );

--ダッシュ
SE1 = playSe( spep_0 + 39, 9 );
SE2 = playSe( spep_0 + 39, 1182 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 70; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE0, 0 );
stopSe( SP_dodge - 12, SE1, 0 );
stopSe( SP_dodge - 12, SE2, 0 );

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

spep_x = spep_0 + 306;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9 -10, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9 -10, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9 -10, 515.5 , 0 );

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

ctex = entryEffectLife( spep_0 -3 + 120,  10001, 16, 0x100, -1, 0, 143.5, 318.7 );  --！？マーク
setEffMoveKey( spep_0 -3 + 120, ctex, 143.5, 318.7 , 0 );
setEffMoveKey( spep_0 -3 + 122, ctex, 113.8, 452.9 , 0 );
setEffMoveKey( spep_0 -3 + 124, ctex, 114.8, 445 , 0 );
setEffMoveKey( spep_0 -3 + 126, ctex, 117.7, 421.2 , 0 );
setEffMoveKey( spep_0 -3 + 128, ctex, 122.6, 381.4 , 0 );
setEffMoveKey( spep_0 -3 + 134, ctex, 122.6, 381.4 , 0 );
setEffMoveKey( spep_0 -3 + 136, ctex, 145.5, 316.9 , 0 );

setEffScaleKey( spep_0 -3 + 120, ctex, 2.23, 2.55 );
setEffScaleKey( spep_0 -3 + 122, ctex, 4.58, 5.25 );
setEffScaleKey( spep_0 -3 + 124, ctex, 4.5, 5.16 );
setEffScaleKey( spep_0 -3 + 126, ctex, 4.27, 4.89 );
setEffScaleKey( spep_0 -3 + 128, ctex, 3.89, 4.45 );
setEffScaleKey( spep_0 -3 + 134, ctex, 3.89, 4.45 );
setEffScaleKey( spep_0 -3 + 136, ctex, 2.47, 2.82 );

setEffRotateKey( spep_0 -3 + 120, ctex, 20 );
setEffRotateKey( spep_0 -3 + 136, ctex, 20 );

setEffAlphaKey( spep_0 -3 + 120, ctex, 255 );
setEffAlphaKey( spep_0 -3 + 134, ctex, 255 );
setEffAlphaKey( spep_0 -3 + 136, ctex, 82 );

ctdoga = entryEffectLife( spep_0 -3 + 188,  10017, 58, 0x100, -1, 0, 19.6, 340 );  --ドガガガ
setEffMoveKey( spep_0 -3 + 188, ctdoga, 19.6, 340 , 0 );
setEffMoveKey( spep_0 -3 + 190, ctdoga, 4.7, 321 , 0 );
setEffMoveKey( spep_0 -3 + 192, ctdoga, 25, 334.5 , 0 );
setEffMoveKey( spep_0 -3 + 194, ctdoga, 1.4, 331 , 0 );
setEffMoveKey( spep_0 -3 + 196, ctdoga, 23.1, 331.1 , 0 );
setEffMoveKey( spep_0 -3 + 198, ctdoga, 5.7, 336.1 , 0 );
setEffMoveKey( spep_0 -3 + 200, ctdoga, 15.3, 326.5 , 0 );
setEffMoveKey( spep_0 -3 + 202, ctdoga, 13.1, 335.6 , 0 );
setEffMoveKey( spep_0 -3 + 204, ctdoga, 7.1, 339.5 , 0 );
setEffMoveKey( spep_0 -3 + 206, ctdoga, 26, 340.3 , 0 );
setEffMoveKey( spep_0 -3 + 208, ctdoga, 5, 337.5 , 0 );
setEffMoveKey( spep_0 -3 + 210, ctdoga, 15.3, 329.9 , 0 );
setEffMoveKey( spep_0 -3 + 212, ctdoga, -0.2, 339.7 , 0 );
setEffMoveKey( spep_0 -3 + 214, ctdoga, 18, 327 , 0 );
setEffMoveKey( spep_0 -3 + 216, ctdoga, 3.7, 341.5 , 0 );
setEffMoveKey( spep_0 -3 + 218, ctdoga, 18.6, 338.6 , 0 );
setEffMoveKey( spep_0 -3 + 220, ctdoga, 6.9, 346.3 , 0 );
setEffMoveKey( spep_0 -3 + 222, ctdoga, 15.6, 335 , 0 );
setEffMoveKey( spep_0 -3 + 224, ctdoga, 15, 348.7 , 0 );
setEffMoveKey( spep_0 -3 + 226, ctdoga, 8.7, 334.2 , 0 );
setEffMoveKey( spep_0 -3 + 228, ctdoga, 13.5, 351 , 0 );
setEffMoveKey( spep_0 -3 + 230, ctdoga, -0.3, 333.1 , 0 );
setEffMoveKey( spep_0 -3 + 232, ctdoga, 20.5, 347 , 0 );
setEffMoveKey( spep_0 -3 + 234, ctdoga, 2.2, 339.7 , 0 );
setEffMoveKey( spep_0 -3 + 236, ctdoga, 18.7, 347.9 , 0 );
setEffMoveKey( spep_0 -3 + 238, ctdoga, 6.1, 334.1 , 0 );
setEffMoveKey( spep_0 -3 + 240, ctdoga, 14.5, 353.7 , 0 );
setEffMoveKey( spep_0 -3 + 242, ctdoga, -6.9, 338 , 0 );
setEffMoveKey( spep_0 -3 + 244, ctdoga, 5.6, 358 , 0 );
setEffMoveKey( spep_0 -3 + 246, ctdoga, -2, 363.5 , 0 );

setEffScaleKey( spep_0 -3 + 188, ctdoga, 2.87, 2.91 );
setEffScaleKey( spep_0 -3 + 240, ctdoga, 2.87, 2.91 );
setEffScaleKey( spep_0 -3 + 242, ctdoga, 2.92, 2.98 );
setEffScaleKey( spep_0 -3 + 244, ctdoga, 2.98, 3.04 );
setEffScaleKey( spep_0 -3 + 246, ctdoga, 3.04, 3.1 );

setEffRotateKey( spep_0 -3 + 188, ctdoga, 5 );
setEffRotateKey( spep_0 -3 + 246, ctdoga, 5 );

setEffAlphaKey( spep_0 -3 + 188, ctdoga, 255 );
setEffAlphaKey( spep_0 -3 + 240, ctdoga, 255 );
setEffAlphaKey( spep_0 -3 + 242, ctdoga, 170 );
setEffAlphaKey( spep_0 -3 + 244, ctdoga, 85 );
setEffAlphaKey( spep_0 -3 + 246, ctdoga, 0 );

ctga = entryEffectLife( spep_0 -3 + 268,  10005, 20, 0x100, -1, 0, 89.3, 217.7 );  --ガッ
setEffMoveKey( spep_0 -3 + 268, ctga, 89.3, 217.7 , 0 );
setEffMoveKey( spep_0 -3 + 270, ctga, 70.2, 237.8 , 0 );
setEffMoveKey( spep_0 -3 + 272, ctga, 72.4, 252 , 0 );
setEffMoveKey( spep_0 -3 + 274, ctga, 58.5, 259 , 0 );
setEffMoveKey( spep_0 -3 + 276, ctga, 67.7, 263.5 , 0 );
setEffMoveKey( spep_0 -3 + 278, ctga, 54, 268.2 , 0 );
setEffMoveKey( spep_0 -3 + 280, ctga, 57.8, 267.7 , 0 );
setEffMoveKey( spep_0 -3 + 282, ctga, 49, 266.8 , 0 );
setEffMoveKey( spep_0 -3 + 284, ctga, 55.7, 280.7 , 0 );
setEffMoveKey( spep_0 -3 + 286, ctga, 36.8, 290.1 , 0 );
setEffMoveKey( spep_0 -3 + 288, ctga, 34.6, 293.3 , 0 );

setEffScaleKey( spep_0 -3 + 268, ctga, 1.05, 1.03 );
setEffScaleKey( spep_0 -3 + 270, ctga, 1.5, 1.47 );
setEffScaleKey( spep_0 -3 + 272, ctga, 1.72, 1.68 );
setEffScaleKey( spep_0 -3 + 274, ctga, 1.87, 1.82 );
setEffScaleKey( spep_0 -3 + 276, ctga, 1.96, 1.91 );
setEffScaleKey( spep_0 -3 + 278, ctga, 2.01, 1.96 );
setEffScaleKey( spep_0 -3 + 280, ctga, 2.03, 1.98 );
setEffScaleKey( spep_0 -3 + 282, ctga, 2.09, 2.04 );
setEffScaleKey( spep_0 -3 + 284, ctga, 2.29, 2.23 );
setEffScaleKey( spep_0 -3 + 286, ctga, 2.48, 2.42 );
setEffScaleKey( spep_0 -3 + 288, ctga, 2.54, 2.48 );

setEffRotateKey( spep_0 -3 + 268, ctga, -15 );
setEffRotateKey( spep_0 -3 + 288, ctga, -15 );

setEffAlphaKey( spep_0 -3 + 268, ctga, 255 );
setEffAlphaKey( spep_0 -3 + 280, ctga, 255 );
setEffAlphaKey( spep_0 -3 + 282, ctga, 223 );
setEffAlphaKey( spep_0 -3 + 284, ctga, 128 );
setEffAlphaKey( spep_0 -3 + 286, ctga, 32 );
setEffAlphaKey( spep_0 -3 + 288, ctga, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 102, 1, 1 );
setDisp( spep_0 -3 + 306, 1, 0 );
changeAnime( spep_0 -3 + 102, 1, 100 );
changeAnime( spep_0 -3 + 120, 1, 102 );
changeAnime( spep_0 -3 + 152, 1, 7 );
changeAnime( spep_0 -3 + 168, 1, 107 );
changeAnime( spep_0 -3 + 188, 1, 106 );
changeAnime( spep_0 -3 + 190, 1, 108 );
changeAnime( spep_0 -3 + 192, 1, 106 );
changeAnime( spep_0 -3 + 196, 1, 108 );
changeAnime( spep_0 -3 + 202, 1, 106 );
changeAnime( spep_0 -3 + 204, 1, 108 );
changeAnime( spep_0 -3 + 206, 1, 106 );
changeAnime( spep_0 -3 + 212, 1, 108 );
changeAnime( spep_0 -3 + 214, 1, 106 );
changeAnime( spep_0 -3 + 218, 1, 108 );
changeAnime( spep_0 -3 + 220, 1, 106 );
changeAnime( spep_0 -3 + 222, 1, 108 );
changeAnime( spep_0 -3 + 226, 1, 106 );
changeAnime( spep_0 -3 + 234, 1, 108 );
changeAnime( spep_0 -3 + 236, 1, 106 );
changeAnime( spep_0 -3 + 238, 1, 108 );
changeAnime( spep_0 -3 + 240, 1, 106 );
changeAnime( spep_0 -3 + 268, 1, 108 );

setMoveKey( spep_0 -3 + 102, 1, 209.8, -132.1 , 0 );
setMoveKey( spep_0 -3 + 119, 1, 209.8, -132.1 , 0 );
setMoveKey( spep_0 -3 + 120, 1, 209.8, -132.1 , 0 );
setMoveKey( spep_0 -3 + 136, 1, 209.8, -132.1 , 0 );
setMoveKey( spep_0 -3 + 138, 1, 210.9, -142.1 , 0 );
setMoveKey( spep_0 -3 + 140, 1, 214.3, -172.2 , 0 );
setMoveKey( spep_0 -3 + 142, 1, 219.8, -222.4 , 0 );
setMoveKey( spep_0 -3 + 144, 1, 227.1, -287.6 , 0 );
setMoveKey( spep_0 -3 + 146, 1, 232.7, -337.7 , 0 );
setMoveKey( spep_0 -3 + 148, 1, 236.1, -367.8 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 237.2, -377.8 , 0 );
setMoveKey( spep_0 -3 + 151, 1, 237.2, -377.8 , 0 );
setMoveKey( spep_0 -3 + 152, 1, -145.8, -487.6 , 0 );
setMoveKey( spep_0 -3 + 154, 1, -116.9, -517.6 , 0 );
setMoveKey( spep_0 -3 + 156, 1, -147.6, -517.5 , 0 );
setMoveKey( spep_0 -3 + 158, 1, -144, -497.5 , 0 );
setMoveKey( spep_0 -3 + 160, 1, -146.2, -497.4 , 0 );
setMoveKey( spep_0 -3 + 162, 1, -143, -497.5 , 0 );
setMoveKey( spep_0 -3 + 164, 1, -135, -497.6 , 0 );
setMoveKey( spep_0 -3 + 166, 1, -131.8, -497.6 , 0 );
setMoveKey( spep_0 -3 + 167, 1, -131.8, -497.6 , 0 );
setMoveKey( spep_0 -3 + 168, 1, 302.6, -412.5 , 0 );
setMoveKey( spep_0 -3 + 170, 1, 287.1, -424.9 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 326.2, -402.5 , 0 );
setMoveKey( spep_0 -3 + 174, 1, 332, -430.1 , 0 );
setMoveKey( spep_0 -3 + 176, 1, 359.7, -419.6 , 0 );
setMoveKey( spep_0 -3 + 178, 1, 374.5, -419.3 , 0 );
setMoveKey( spep_0 -3 + 180, 1, 386.7, -419.3 , 0 );
setMoveKey( spep_0 -3 + 182, 1, 397.2, -420 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 410.4, -422.8 , 0 );
setMoveKey( spep_0 -3 + 186, 1, 500.1, -453.9 , 0 );
setMoveKey( spep_0 -3 + 187, 1, 500.1, -453.9 , 0 );
setMoveKey( spep_0 -3 + 188, 1, 74.1, 48.7 , 0 );
setMoveKey( spep_0 -3 + 189, 1, 74.1, 48.7 , 0 );
setMoveKey( spep_0 -3 + 190, 1, 130.4, -9.4 , 0 );
setMoveKey( spep_0 -3 + 191, 1, 130.4, -9.4 , 0 );
setMoveKey( spep_0 -3 + 192, 1, 87.4, 25.5 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 85.1, 21.8 , 0 );
setMoveKey( spep_0 -3 + 195, 1, 85.1, 21.8 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 144.9, 26.5 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 145.1, 22.8 , 0 );
setMoveKey( spep_0 -3 + 200, 1, 146.9, 27.3 , 0 );
setMoveKey( spep_0 -3 + 201, 1, 146.9, 27.3 , 0 );
setMoveKey( spep_0 -3 + 202, 1, 71.8, 47.8 , 0 );
setMoveKey( spep_0 -3 + 203, 1, 71.8, 47.8 , 0 );
setMoveKey( spep_0 -3 + 204, 1, 134.1, -6 , 0 );
setMoveKey( spep_0 -3 + 205, 1, 134.1, -6 , 0 );
setMoveKey( spep_0 -3 + 206, 1, 83.9, 24.6 , 0 );
setMoveKey( spep_0 -3 + 208, 1, 88.5, 25.1 , 0 );
setMoveKey( spep_0 -3 + 210, 1, 72.4, 47.9 , 0 );
setMoveKey( spep_0 -3 + 211, 1, 72.4, 47.9 , 0 );
setMoveKey( spep_0 -3 + 212, 1, 134.1, -7.3 , 0 );
setMoveKey( spep_0 -3 + 213, 1, 134.1, -7.3 , 0 );
setMoveKey( spep_0 -3 + 214, 1, 83.9, 24.7 , 0 );
setMoveKey( spep_0 -3 + 216, 1, 88.5, 24.2 , 0 );
setMoveKey( spep_0 -3 + 217, 1, 88.5, 24.2 , 0 );
setMoveKey( spep_0 -3 + 218, 1, 131.3, -6.1 , 0 );
setMoveKey( spep_0 -3 + 219, 1, 131.3, -6.1 , 0 );
setMoveKey( spep_0 -3 + 220, 1, 87.8, 24.1 , 0 );
setMoveKey( spep_0 -3 + 221, 1, 87.8, 24.1 , 0 );
setMoveKey( spep_0 -3 + 222, 1, 130.3, -7.1 , 0 );
setMoveKey( spep_0 -3 + 224, 1, 133.7, -8.1 , 0 );
setMoveKey( spep_0 -3 + 225, 1, 133.7, -8.1 , 0 );
setMoveKey( spep_0 -3 + 226, 1, 83.7, 26.2 , 0 );
setMoveKey( spep_0 -3 + 228, 1, 74, 46.5 , 0 );
setMoveKey( spep_0 -3 + 230, 1, 74.8, 50.1 , 0 );
setMoveKey( spep_0 -3 + 232, 1, 85.5, 22.5 , 0 );
setMoveKey( spep_0 -3 + 233, 1, 85.5, 22.5 , 0 );
setMoveKey( spep_0 -3 + 234, 1, 134.3, -5.6 , 0 );
setMoveKey( spep_0 -3 + 235, 1, 134.3, -5.6 , 0 );
setMoveKey( spep_0 -3 + 236, 1, 72.9, 47.7 , 0 );
setMoveKey( spep_0 -3 + 237, 1, 72.9, 47.7 , 0 );
setMoveKey( spep_0 -3 + 238, 1, 76.1, 49.7 , 0 );
setMoveKey( spep_0 -3 + 239, 1, 76.1, 49.7 , 0 );
setMoveKey( spep_0 -3 + 240, 1, 71.8, 48.3 , 0 );
setMoveKey( spep_0 -3 + 242, 1, 76.2, 33.7 , 0 );
setMoveKey( spep_0 -3 + 244, 1, 74, 22.3 , 0 );
setMoveKey( spep_0 -3 + 246, 1, 73.9, 11.1 , 0 );
setMoveKey( spep_0 -3 + 248, 1, 73.9, 1.1 , 0 );
setMoveKey( spep_0 -3 + 250, 1, 73.8, -7.5 , 0 );
setMoveKey( spep_0 -3 + 252, 1, 73.8, -14.7 , 0 );
setMoveKey( spep_0 -3 + 254, 1, 73.8, -20.7 , 0 );
setMoveKey( spep_0 -3 + 256, 1, 73.8, -25.3 , 0 );
setMoveKey( spep_0 -3 + 258, 1, 73.7, -28.6 , 0 );
setMoveKey( spep_0 -3 + 260, 1, 73.7, -30.6 , 0 );
setMoveKey( spep_0 -3 + 262, 1, 73.7, -31.3 , 0 );
setMoveKey( spep_0 -3 + 267, 1, 73.7, -31.3 , 0 );
setMoveKey( spep_0 -3 + 268, 1, 112.7, -79.5 , 0 );
setMoveKey( spep_0 -3 + 270, 1, 141.3, -104 , 0 );
setMoveKey( spep_0 -3 + 272, 1, 167.9, -117.3 , 0 );
setMoveKey( spep_0 -3 + 274, 1, 166.2, -107.2 , 0 );
setMoveKey( spep_0 -3 + 276, 1, 193.1, -137.6 , 0 );
setMoveKey( spep_0 -3 + 278, 1, 245, -189.1 , 0 );
setMoveKey( spep_0 -3 + 280, 1, 353.2, -302.1 , 0 );
setMoveKey( spep_0 -3 + 282, 1, 476.3, -437.2 , 0 );
setMoveKey( spep_0 -3 + 284, 1, 596.1, -563.8 , 0 );
setMoveKey( spep_0 -3 + 286, 1, 695, -665.9 , 0 );
setMoveKey( spep_0 -3 + 288, 1, 765.5, -741.4 , 0 );
setMoveKey( spep_0 -3 + 290, 1, 815.4, -793.9 , 0 );
setMoveKey( spep_0 -3 + 292, 1, 850.4, -831 , 0 );
setMoveKey( spep_0 -3 + 294, 1, 876.4, -858.5 , 0 );
setMoveKey( spep_0 -3 + 296, 1, 896.5, -879.8 , 0 );
setMoveKey( spep_0 -3 + 298, 1, 912.6, -896.9 , 0 );
setMoveKey( spep_0 -3 + 300, 1, 926, -911 , 0 );
setMoveKey( spep_0 -3 + 302, 1, 937.3, -923.1 , 0 );
setMoveKey( spep_0 -3 + 304, 1, 947.3, -933.6 , 0 );
setMoveKey( spep_0 -3 + 306, 1, 956.1, -942.9 , 0 );

setScaleKey( spep_0 -3 + 102, 1, 4, 4 );
setScaleKey( spep_0 -3 + 119, 1, 4, 4 );
setScaleKey( spep_0 -3 + 120, 1, 4, 4 );
setScaleKey( spep_0 -3 + 136, 1, 4, 4 );
setScaleKey( spep_0 -3 + 138, 1, 4.08, 4.08 );
setScaleKey( spep_0 -3 + 140, 1, 4.33, 4.33 );
setScaleKey( spep_0 -3 + 142, 1, 4.73, 4.73 );
setScaleKey( spep_0 -3 + 144, 1, 5.27, 5.27 );
setScaleKey( spep_0 -3 + 146, 1, 5.67, 5.67 );
setScaleKey( spep_0 -3 + 148, 1, 5.92, 5.92 );
setScaleKey( spep_0 -3 + 150, 1, 6, 6 );
setScaleKey( spep_0 -3 + 151, 1, 6, 6 );
setScaleKey( spep_0 -3 + 152, 1, 2.6, 2.6 );
setScaleKey( spep_0 -3 + 167, 1, 2.6, 2.6 );
setScaleKey( spep_0 -3 + 168, 1, 2.6, 2.6 );
setScaleKey( spep_0 -3 + 170, 1, 2.68, 2.68 );
setScaleKey( spep_0 -3 + 172, 1, 2.76, 2.76 );
setScaleKey( spep_0 -3 + 174, 1, 2.82, 2.82 );
setScaleKey( spep_0 -3 + 176, 1, 2.88, 2.88 );
setScaleKey( spep_0 -3 + 178, 1, 2.92, 2.92 );
setScaleKey( spep_0 -3 + 180, 1, 2.96, 2.96 );
setScaleKey( spep_0 -3 + 182, 1, 2.98, 2.98 );
setScaleKey( spep_0 -3 + 184, 1, 3.03, 3.03 );
setScaleKey( spep_0 -3 + 186, 1, 3.3, 3.3 );
setScaleKey( spep_0 -3 + 187, 1, 3.3, 3.3 );
setScaleKey( spep_0 -3 + 188, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 189, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 190, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 191, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 192, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 194, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 195, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 196, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 200, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 201, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 202, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 203, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 204, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 205, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 206, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 210, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 211, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 212, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 213, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 214, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 216, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 217, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 218, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 219, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 220, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 221, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 222, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 224, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 225, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 226, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 232, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 233, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 234, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 235, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 236, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 237, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 238, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 239, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 240, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 267, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 268, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 306, 1, 2.5, 2.5 );

setRotateKey( spep_0 -3 + 102, 1, 0 );
setRotateKey( spep_0 -3 + 119, 1, 0 );
setRotateKey( spep_0 -3 + 120, 1, 0 );
setRotateKey( spep_0 -3 + 136, 1, 0 );
setRotateKey( spep_0 -3 + 138, 1, 0.4 );
setRotateKey( spep_0 -3 + 140, 1, 1.6 );
setRotateKey( spep_0 -3 + 142, 1, 3.7 );
setRotateKey( spep_0 -3 + 144, 1, 6.3 );
setRotateKey( spep_0 -3 + 146, 1, 8.4 );
setRotateKey( spep_0 -3 + 148, 1, 9.6 );
setRotateKey( spep_0 -3 + 150, 1, 10 );
setRotateKey( spep_0 -3 + 151, 1, 10 );
setRotateKey( spep_0 -3 + 152, 1, 50 );
setRotateKey( spep_0 -3 + 154, 1, 47.8 );
setRotateKey( spep_0 -3 + 156, 1, 46.3 );
setRotateKey( spep_0 -3 + 158, 1, 45.3 );
setRotateKey( spep_0 -3 + 160, 1, 45 );
setRotateKey( spep_0 -3 + 162, 1, 46.1 );
setRotateKey( spep_0 -3 + 164, 1, 48.9 );
setRotateKey( spep_0 -3 + 166, 1, 50 );
setRotateKey( spep_0 -3 + 167, 1, 50 );
setRotateKey( spep_0 -3 + 168, 1, -60 );
setRotateKey( spep_0 -3 + 170, 1, -61.3 );
setRotateKey( spep_0 -3 + 172, 1, -62.4 );
setRotateKey( spep_0 -3 + 174, 1, -63.3 );
setRotateKey( spep_0 -3 + 176, 1, -64.1 );
setRotateKey( spep_0 -3 + 178, 1, -64.8 );
setRotateKey( spep_0 -3 + 180, 1, -65.3 );
setRotateKey( spep_0 -3 + 182, 1, -65.7 );
setRotateKey( spep_0 -3 + 184, 1, -65.9 );
setRotateKey( spep_0 -3 + 186, 1, -66 );
setRotateKey( spep_0 -3 + 187, 1, -66 );
setRotateKey( spep_0 -3 + 188, 1, -47.4 );
setRotateKey( spep_0 -3 + 189, 1, -47.4 );
setRotateKey( spep_0 -3 + 190, 1, 20 );
setRotateKey( spep_0 -3 + 191, 1, 20 );
setRotateKey( spep_0 -3 + 192, 1, -30 );
setRotateKey( spep_0 -3 + 194, 1, -30 );
setRotateKey( spep_0 -3 + 195, 1, -30 );
setRotateKey( spep_0 -3 + 196, 1, 10 );
setRotateKey( spep_0 -3 + 200, 1, 10 );
setRotateKey( spep_0 -3 + 201, 1, 10 );
setRotateKey( spep_0 -3 + 202, 1, -47.4 );
setRotateKey( spep_0 -3 + 203, 1, -47.4 );
setRotateKey( spep_0 -3 + 204, 1, 20 );
setRotateKey( spep_0 -3 + 205, 1, 20 );
setRotateKey( spep_0 -3 + 206, 1, -30 );
setRotateKey( spep_0 -3 + 208, 1, -30 );
setRotateKey( spep_0 -3 + 210, 1, -47.4 );
setRotateKey( spep_0 -3 + 211, 1, -47.4 );
setRotateKey( spep_0 -3 + 212, 1, 20 );
setRotateKey( spep_0 -3 + 213, 1, 20 );
setRotateKey( spep_0 -3 + 214, 1, -30 );
setRotateKey( spep_0 -3 + 216, 1, -30 );
setRotateKey( spep_0 -3 + 217, 1, -30 );
setRotateKey( spep_0 -3 + 218, 1, 20 );
setRotateKey( spep_0 -3 + 219, 1, 20 );
setRotateKey( spep_0 -3 + 220, 1, -30 );
setRotateKey( spep_0 -3 + 221, 1, -30 );
setRotateKey( spep_0 -3 + 222, 1, 20 );
setRotateKey( spep_0 -3 + 224, 1, 20 );
setRotateKey( spep_0 -3 + 225, 1, 20 );
setRotateKey( spep_0 -3 + 226, 1, -30 );
setRotateKey( spep_0 -3 + 228, 1, -47.4 );
setRotateKey( spep_0 -3 + 230, 1, -47.4 );
setRotateKey( spep_0 -3 + 232, 1, -30 );
setRotateKey( spep_0 -3 + 233, 1, -30 );
setRotateKey( spep_0 -3 + 234, 1, 20 );
setRotateKey( spep_0 -3 + 235, 1, 20 );
setRotateKey( spep_0 -3 + 236, 1, -47.4 );
setRotateKey( spep_0 -3 + 237, 1, -47.4 );
setRotateKey( spep_0 -3 + 238, 1, -47.4 );
setRotateKey( spep_0 -3 + 239, 1, -47.4 );
setRotateKey( spep_0 -3 + 240, 1, -31.7 );
setRotateKey( spep_0 -3 + 242, 1, -29.7 );
setRotateKey( spep_0 -3 + 244, 1, -27.8 );
setRotateKey( spep_0 -3 + 246, 1, -26.2 );
setRotateKey( spep_0 -3 + 248, 1, -24.7 );
setRotateKey( spep_0 -3 + 250, 1, -23.5 );
setRotateKey( spep_0 -3 + 252, 1, -22.4 );
setRotateKey( spep_0 -3 + 254, 1, -21.5 );
setRotateKey( spep_0 -3 + 256, 1, -20.9 );
setRotateKey( spep_0 -3 + 258, 1, -20.4 );
setRotateKey( spep_0 -3 + 260, 1, -20.1 );
setRotateKey( spep_0 -3 + 262, 1, -20 );
setRotateKey( spep_0 -3 + 267, 1, -20 );
setRotateKey( spep_0 -3 + 268, 1, 40 );
setRotateKey( spep_0 -3 + 270, 1, 40 );
setRotateKey( spep_0 -3 + 272, 1, 40.1 );
setRotateKey( spep_0 -3 + 280, 1, 40.1 );
setRotateKey( spep_0 -3 + 282, 1, 40 );
setRotateKey( spep_0 -3 + 306, 1, 40 );

-- ** 音 ** --
--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

--ダッシュ
playSe( spep_0 + 61, 1072 );

--瞬間移動
playSe( spep_0 + 102, 1109 );

--キック
SE4 = playSe( spep_0 + 141, 1188 );
setSeVolume( spep_0 + 141, 1188, 0 );
setSeVolume( spep_0 + 167, 1188, 10 );
setSeVolume( spep_0 + 168, 1188, 46 );
setSeVolume( spep_0 + 169, 1188, 71 );
setSeVolume( spep_0 + 186, 1188, 71 );
setSeVolume( spep_0 + 190, 1188, 58 );
setSeVolume( spep_0 + 194, 1188, 52 );
setSeVolume( spep_0 + 198, 1188, 46 );
setSeVolume( spep_0 + 202, 1188, 40 );
setSeVolume( spep_0 + 208, 1188, 36 );
setSeVolume( spep_0 + 212, 1188, 32 );
setSeVolume( spep_0 + 216, 1188, 28 );
setSeVolume( spep_0 + 220, 1188, 22 );
setSeVolume( spep_0 + 224, 1188, 17 );
setSeVolume( spep_0 + 228, 1188, 14 );
setSeVolume( spep_0 + 230, 1188, 6 );
setSeVolume( spep_0 + 232, 1188, 0 );
stopSe( spep_0 + 232, SE4, 0 );

playSe( spep_0 + 146, 1003 );

SE5 = playSe( spep_0 + 152, 1182 );
setSeVolume( spep_0 + 152, 1182, 158 );
setSeVolume( spep_0 + 158, 1182, 158 );
setSeVolume( spep_0 + 162, 1182, 102 );
setSeVolume( spep_0 + 168, 1182, 64 );
setSeVolume( spep_0 + 170, 1182, 28 );
setSeVolume( spep_0 + 173, 1182, 0 );
stopSe( spep_0 + 173, SE5, 0 );

playSe( spep_0 + 152, 1010 );
playSe( spep_0 + 154, 1110 );

SE6 = playSe( spep_0 + 170, 1190 );
setSeVolume( spep_0 + 170, 1190, 89 );
setSeVolume( spep_0 + 184, 1190, 89 );
setSeVolume( spep_0 + 188, 1190, 68 );
setSeVolume( spep_0 + 192, 1190, 52 );
setSeVolume( spep_0 + 196, 1190, 36 );
setSeVolume( spep_0 + 200, 1190, 22 );
setSeVolume( spep_0 + 204, 1190, 10 );
setSeVolume( spep_0 + 206, 1190, 0 );
stopSe( spep_0 + 206, SE6, 0 );

SE7 = playSe( spep_0 + 170, 1187 );
setSeVolume( spep_0 + 170, 1187, 79 );
setSeVolume( spep_0 + 186, 1187, 79 );
setSeVolume( spep_0 + 190, 1187, 70 );
setSeVolume( spep_0 + 196, 1187, 62 );
setSeVolume( spep_0 + 200, 1187, 56 );
setSeVolume( spep_0 + 206, 1187, 48 );
setSeVolume( spep_0 + 210, 1187, 38 );
setSeVolume( spep_0 + 214, 1187, 24 );
setSeVolume( spep_0 + 218, 1187, 18 );
setSeVolume( spep_0 + 220, 1187, 8 );
setSeVolume( spep_0 + 222, 1187, 0 );
stopSe( spep_0 + 222, SE7, 0 );

--パンチ
playSe( spep_0 + 189, 1006 );
playSe( spep_0 + 191, 1000 );
playSe( spep_0 + 197, 1012 );
setSeVolume( spep_0 + 197, 1012, 89 );
playSe( spep_0 + 199, 1000 );
setSeVolume( spep_0 + 199, 1000, 79 );
playSe( spep_0 + 207, 1000 );
setSeVolume( spep_0 + 207, 1000, 112 );
playSe( spep_0 + 209, 1007 );
playSe( spep_0 + 215, 1000 );
playSe( spep_0 + 216, 1006 );
playSe( spep_0 + 223, 1000 );
setSeVolume( spep_0 + 223, 1000, 112 );
playSe( spep_0 + 224, 1006 );
setSeVolume( spep_0 + 224, 1006, 89 );
playSe( spep_0 + 230, 1013 );
setSeVolume( spep_0 + 230, 1013, 79 );
playSe( spep_0 + 231, 1000 );
setSeVolume( spep_0 + 231, 1000, 126 );
playSe( spep_0 + 237, 1013 );
playSe( spep_0 + 238, 1000 );

--ライダーキック
playSe( spep_0 + 265, 1004 );
playSe( spep_0 + 272, 1120 );

--気溜め
playSe( spep_0 + 341, 1035 );
setSeVolume( spep_0 + 341, 1035, 89 );
playSe( spep_0 + 341, 1024 );
setSeVolume( spep_0 + 341, 1024, 79 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 396;

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

--ポーズ
playSe( spep_1 + 86, 1003 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;

------------------------------------------------------
-- 気弾発射〜爆発フィニッシュ(576F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --気弾発射〜爆発フィニッシュ(ef_003)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 576, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 576, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 576, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 576, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --気弾発射〜爆発フィニッシュ(ef_004)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 576, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 576, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 576, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 576, finish_b, 255 );

-- ** 書き文字エントリー ** --
ctzun = entryEffectLife( spep_2 -3 + 188,  10016, 24, 0x100, -1, 0, 124.7, 226.7 );  --ズンッ
setEffMoveKey( spep_2 -3 + 188, ctzun, 124.7, 226.7 , 0 );
setEffMoveKey( spep_2 -3 + 190, ctzun, 122, 227.7 , 0 );
setEffMoveKey( spep_2 -3 + 192, ctzun, 125.3, 228.6 , 0 );
setEffMoveKey( spep_2 -3 + 194, ctzun, 122.9, 232.5 , 0 );
setEffMoveKey( spep_2 -3 + 196, ctzun, 127.7, 238 , 0 );
setEffMoveKey( spep_2 -3 + 198, ctzun, 126.4, 250.4 , 0 );
setEffMoveKey( spep_2 -3 + 200, ctzun, 139.5, 284.8 , 0 );
setEffMoveKey( spep_2 -3 + 202, ctzun, 139.8, 307.6 , 0 );
setEffMoveKey( spep_2 -3 + 204, ctzun, 150.7, 316.7 , 0 );
setEffMoveKey( spep_2 -3 + 206, ctzun, 145.1, 325 , 0 );
setEffMoveKey( spep_2 -3 + 208, ctzun, 154.4, 327.7 , 0 );
setEffMoveKey( spep_2 -3 + 210, ctzun, 147.2, 331.9 , 0 );
setEffMoveKey( spep_2 -3 + 212, ctzun, 147.6, 332.3 , 0 );

setEffScaleKey( spep_2 -3 + 188, ctzun, 1.02, 1.02 );
setEffScaleKey( spep_2 -3 + 190, ctzun, 1.03, 1.03 );
setEffScaleKey( spep_2 -3 + 192, ctzun, 1.06, 1.07 );
setEffScaleKey( spep_2 -3 + 194, ctzun, 1.13, 1.14 );
setEffScaleKey( spep_2 -3 + 196, ctzun, 1.27, 1.27 );
setEffScaleKey( spep_2 -3 + 198, ctzun, 1.52, 1.53 );
setEffScaleKey( spep_2 -3 + 200, ctzun, 2.29, 2.3 );
setEffScaleKey( spep_2 -3 + 202, ctzun, 2.59, 2.61 );
setEffScaleKey( spep_2 -3 + 204, ctzun, 2.74, 2.76 );
setEffScaleKey( spep_2 -3 + 206, ctzun, 2.84, 2.86 );
setEffScaleKey( spep_2 -3 + 208, ctzun, 2.9, 2.92 );
setEffScaleKey( spep_2 -3 + 210, ctzun, 2.94, 2.96 );
setEffScaleKey( spep_2 -3 + 212, ctzun, 2.95, 2.97 );

setEffRotateKey( spep_2 -3 + 188, ctzun, -30 );
setEffRotateKey( spep_2 -3 + 212, ctzun, -30 );

setEffAlphaKey( spep_2 -3 + 188, ctzun, 255 );
setEffAlphaKey( spep_2 -3 + 200, ctzun, 255 );
setEffAlphaKey( spep_2 -3 + 202, ctzun, 137 );
setEffAlphaKey( spep_2 -3 + 204, ctzun, 80 );
setEffAlphaKey( spep_2 -3 + 206, ctzun, 43 );
setEffAlphaKey( spep_2 -3 + 208, ctzun, 19 );
setEffAlphaKey( spep_2 -3 + 210, ctzun, 5 );
setEffAlphaKey( spep_2 -3 + 212, ctzun, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 138, 1, 1 );
setDisp( spep_2 -3 + 316, 1, 0 );
setDisp( spep_2 -3 + 458, 1, 1 );
setDisp( spep_2 -3 + 460, 1, 0 );
changeAnime( spep_2 -3 + 138, 1, 106 );
changeAnime( spep_2 -3 + 186, 1, 108 );
changeAnime( spep_2 -3 + 458, 1, 106 );

setMoveKey( spep_2 -3 + 138, 1, 188.4, -79.1 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 195.7, -90.8 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 197.1, -94 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 201.4, -97.6 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 199.9, -100.7 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 202.7, -99.8 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 202, -103.5 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 205.1, -103.8 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 203, -103.9 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 205.5, -104.7 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 203.2, -105.3 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 206.4, -106 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 204.2, -105.6 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 206.5, -107.8 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 205, -105.9 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 206.5, -108.2 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 205.4, -106.2 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 207.5, -108.3 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 205.5, -107.1 , 0 );
setMoveKey( spep_2 -3 + 176, 1, 207.1, -107.8 , 0 );
setMoveKey( spep_2 -3 + 178, 1, 205, -107.8 , 0 );
setMoveKey( spep_2 -3 + 180, 1, 207.3, -106.4 , 0 );
setMoveKey( spep_2 -3 + 182, 1, 205, -108.2 , 0 );
setMoveKey( spep_2 -3 + 184, 1, 207.4, -106.7 , 0 );
setMoveKey( spep_2 -3 + 185, 1, 207.4, -106.7 , 0 );
setMoveKey( spep_2 -3 + 186, 1, 206.8, -107.3 , 0 );
setMoveKey( spep_2 -3 + 188, 1, 206.2, -107.9 , 0 );
setMoveKey( spep_2 -3 + 190, 1, 204.9, -105.8 , 0 );
setMoveKey( spep_2 -3 + 192, 1, 206.2, -109.5 , 0 );
setMoveKey( spep_2 -3 + 194, 1, 205.7, -106.1 , 0 );
setMoveKey( spep_2 -3 + 196, 1, 205.5, -110.5 , 0 );
setMoveKey( spep_2 -3 + 198, 1, 207.9, -105.7 , 0 );
setMoveKey( spep_2 -3 + 200, 1, 205.6, -110 , 0 );
setMoveKey( spep_2 -3 + 202, 1, 204.7, -109.4 , 0 );
setMoveKey( spep_2 -3 + 204, 1, 203.4, -117.3 , 0 );
setMoveKey( spep_2 -3 + 206, 1, 199.9, -116.7 , 0 );
setMoveKey( spep_2 -3 + 208, 1, 196.4, -122.1 , 0 );
setMoveKey( spep_2 -3 + 210, 1, 198.5, -121.8 , 0 );
setMoveKey( spep_2 -3 + 212, 1, 195.8, -127 , 0 );
setMoveKey( spep_2 -3 + 214, 1, 194, -125.2 , 0 );
setMoveKey( spep_2 -3 + 216, 1, 194, -130.8 , 0 );
setMoveKey( spep_2 -3 + 218, 1, 192.2, -128 , 0 );
setMoveKey( spep_2 -3 + 220, 1, 191.6, -132.7 , 0 );
setMoveKey( spep_2 -3 + 222, 1, 191.2, -129.8 , 0 );
setMoveKey( spep_2 -3 + 224, 1, 192.1, -134.1 , 0 );
setMoveKey( spep_2 -3 + 237, 1, 192.1, -134.1 , 0 );
setMoveKey( spep_2 -3 + 238, 1, 49, 26.8 , 0 );
setMoveKey( spep_2 -3 + 240, 1, 51.6, 25.4 , 0 );
setMoveKey( spep_2 -3 + 242, 1, 49.1, 27.4 , 0 );
setMoveKey( spep_2 -3 + 244, 1, 51, 24.7 , 0 );
setMoveKey( spep_2 -3 + 246, 1, 50.5, 27.7 , 0 );
setMoveKey( spep_2 -3 + 248, 1, 49, 25.4 , 0 );
setMoveKey( spep_2 -3 + 250, 1, 50.4, 25 , 0 );
setMoveKey( spep_2 -3 + 252, 1, 49.6, 27 , 0 );
setMoveKey( spep_2 -3 + 254, 1, 51.3, 25.7 , 0 );
setMoveKey( spep_2 -3 + 256, 1, 49.5, 27 , 0 );
setMoveKey( spep_2 -3 + 258, 1, 51.7, 25.5 , 0 );
setMoveKey( spep_2 -3 + 260, 1, 48.6, 26.5 , 0 );
setMoveKey( spep_2 -3 + 262, 1, 51.2, 26 , 0 );
setMoveKey( spep_2 -3 + 264, 1, 48.8, 25 , 0 );
setMoveKey( spep_2 -3 + 266, 1, 51.7, 26.7 , 0 );
setMoveKey( spep_2 -3 + 268, 1, 48.3, 25.8 , 0 );
setMoveKey( spep_2 -3 + 270, 1, 51.3, 27 , 0 );
setMoveKey( spep_2 -3 + 272, 1, 49.8, 24.2 , 0 );
setMoveKey( spep_2 -3 + 274, 1, 50.3, 27.5 , 0 );
setMoveKey( spep_2 -3 + 276, 1, 51, 25.1 , 0 );
setMoveKey( spep_2 -3 + 278, 1, 50.2, 27.2 , 0 );
setMoveKey( spep_2 -3 + 280, 1, 49.6, 24.2 , 0 );
setMoveKey( spep_2 -3 + 282, 1, 51.7, 26.4 , 0 );
setMoveKey( spep_2 -3 + 284, 1, 48.8, 25.2 , 0 );
setMoveKey( spep_2 -3 + 286, 1, 51.1, 27.7 , 0 );
setMoveKey( spep_2 -3 + 288, 1, 50.6, 24.9 , 0 );
setMoveKey( spep_2 -3 + 290, 1, 48.7, 26.5 , 0 );
setMoveKey( spep_2 -3 + 292, 1, 51.5, 25.7 , 0 );
setMoveKey( spep_2 -3 + 294, 1, 49, 26.8 , 0 );
setMoveKey( spep_2 -3 + 296, 1, 50.4, 24.5 , 0 );
setMoveKey( spep_2 -3 + 298, 1, 50, 27.1 , 0 );
setMoveKey( spep_2 -3 + 300, 1, 51.2, 24.9 , 0 );
setMoveKey( spep_2 -3 + 302, 1, 49.2, 26.7 , 0 );
setMoveKey( spep_2 -3 + 304, 1, 47.4, 27.2 , 0 );
setMoveKey( spep_2 -3 + 306, 1, 50, 25.1 , 0 );
setMoveKey( spep_2 -3 + 308, 1, 47.3, 27.8 , 0 );
setMoveKey( spep_2 -3 + 310, 1, 47.3, 26.7 , 0 );
setMoveKey( spep_2 -3 + 312, 1, 51.1, 27 , 0 );
setMoveKey( spep_2 -3 + 314, 1, 49.7, 25.1 , 0 );
setMoveKey( spep_2 -3 + 316, 1, 49.7, 25.1 , 0 );
setMoveKey( spep_2 -3 + 458, 1, 70.9, 109.9 , 0 );
setMoveKey( spep_2 -3 + 460, 1, 70.9, 109.9 , 0 );

setScaleKey( spep_2 -3 + 138, 1, 0.5, 0.5 );
setScaleKey( spep_2 -3 + 185, 1, 0.5, 0.5 );
setScaleKey( spep_2 -3 + 186, 1, 0.5, 0.5 );
setScaleKey( spep_2 -3 + 237, 1, 0.5, 0.5 );
setScaleKey( spep_2 -3 + 238, 1, 2, 2 );
setScaleKey( spep_2 -3 + 316, 1, 2, 2 );
setScaleKey( spep_2 -3 + 458, 1, 0.8, 0.8 );
setScaleKey( spep_2 -3 + 460, 1, 0.8, 0.8 );

setRotateKey( spep_2 -3 + 138, 1, -25 );
setRotateKey( spep_2 -3 + 140, 1, -23 );
setRotateKey( spep_2 -3 + 142, 1, -22.3 );
setRotateKey( spep_2 -3 + 144, 1, -21.8 );
setRotateKey( spep_2 -3 + 146, 1, -21.4 );
setRotateKey( spep_2 -3 + 148, 1, -21.2 );
setRotateKey( spep_2 -3 + 150, 1, -20.9 );
setRotateKey( spep_2 -3 + 152, 1, -20.8 );
setRotateKey( spep_2 -3 + 154, 1, -20.6 );
setRotateKey( spep_2 -3 + 156, 1, -20.5 );
setRotateKey( spep_2 -3 + 158, 1, -20.4 );
setRotateKey( spep_2 -3 + 160, 1, -20.3 );
setRotateKey( spep_2 -3 + 162, 1, -20.2 );
setRotateKey( spep_2 -3 + 164, 1, -20.2 );
setRotateKey( spep_2 -3 + 166, 1, -20.1 );
setRotateKey( spep_2 -3 + 168, 1, -20.1 );
setRotateKey( spep_2 -3 + 170, 1, -20 );
setRotateKey( spep_2 -3 + 185, 1, -20 );
setRotateKey( spep_2 -3 + 186, 1, -20 );
setRotateKey( spep_2 -3 + 237, 1, -20 );
setRotateKey( spep_2 -3 + 238, 1, -10 );
setRotateKey( spep_2 -3 + 316, 1, -10 );
setRotateKey( spep_2 -3 + 458, 1, -25 );
setRotateKey( spep_2 -3 + 460, 1, -25 );

setBlendColor( spep_2 -3 + 458, 1, 2, 0, 0, 0, 1.0 );
setBlendColor( spep_2 -3 + 460, 1, 2, 0, 0, 0, 1.0 );
setBlendColor( spep_2 -3 + 462, 1, 2, 0, 0, 0, 0.0 );

-- ** 音 ** --
--気弾溜め
SE8 = playSe( spep_2 + 24, 1191 );
stopSe( spep_2 + 56, SE8, 20 );

SE9 = playSe( spep_2 + 24, 1184 );
stopSe( spep_2 + 53, SE9, 24 );

--気弾発射
playSe( spep_2 + 55, 1027 );

SE10 = playSe( spep_2 + 57, 1213 );
setSeVolume( spep_2 + 57, 1213, 50 );
setSeVolume( spep_2 + 176, 1213, 50 );
setSeVolume( spep_2 + 180, 1213, 42 );
setSeVolume( spep_2 + 184, 1213, 38 );
setSeVolume( spep_2 + 188, 1213, 34 );
setSeVolume( spep_2 + 192, 1213, 28 );
setSeVolume( spep_2 + 196, 1213, 22 );
setSeVolume( spep_2 + 200, 1213, 16 );
setSeVolume( spep_2 + 204, 1213, 10 );
setSeVolume( spep_2 + 208, 1213, 6 );
setSeVolume( spep_2 + 210, 1213, 0 );
stopSe( spep_2 + 53, SE10, 0 );

SE11 = playSe( spep_2 + 91, 1146 );
setSeVolume( spep_2 + 91, 1146, 71 );
setSeVolume( spep_2 + 132, 1146, 71 );
setSeVolume( spep_2 + 138, 1146, 64 );
setSeVolume( spep_2 + 142, 1146, 56 );
setSeVolume( spep_2 + 150, 1146, 50 );
setSeVolume( spep_2 + 154, 1146, 46 );
setSeVolume( spep_2 + 162, 1146, 40 );
setSeVolume( spep_2 + 168, 1146, 36 );
setSeVolume( spep_2 + 172, 1146, 32 );
setSeVolume( spep_2 + 178, 1146, 26 );
setSeVolume( spep_2 + 184, 1146, 22 );
setSeVolume( spep_2 + 188, 1146, 20 );
setSeVolume( spep_2 + 192, 1146, 16 );
setSeVolume( spep_2 + 196, 1146, 10 );
setSeVolume( spep_2 + 200, 1146, 4 );
setSeVolume( spep_2 + 203, 1146, 0 );
stopSe( spep_2 + 203, SE11, 0 );

SE12 = playSe( spep_2 + 91, 1161 );
setSeVolume( spep_2 + 91, 1161, 79 );
setSeVolume( spep_2 + 185, 1161, 79 );
setSeVolume( spep_2 + 188, 1161, 72 );
setSeVolume( spep_2 + 190, 1161, 68 );
setSeVolume( spep_2 + 194, 1161, 64 );
setSeVolume( spep_2 + 198, 1161, 60 );
setSeVolume( spep_2 + 200, 1161, 56 );
setSeVolume( spep_2 + 204, 1161, 50 );
setSeVolume( spep_2 + 208, 1161, 42 );
setSeVolume( spep_2 + 212, 1161, 36 );
setSeVolume( spep_2 + 216, 1161, 28 );
setSeVolume( spep_2 + 220, 1161, 22 );
setSeVolume( spep_2 + 224, 1161, 14 );
setSeVolume( spep_2 + 226, 1161, 8 );
setSeVolume( spep_2 + 228, 1146, 0 );
stopSe( spep_2 + 228, SE12, 0 );

--敵切り裂く
SE13 = playSe( spep_2 + 181, 1121 );
setSeVolume( spep_2 + 181, 1121, 0 );
setSeVolume( spep_2 + 231, 1121, 10 );
setSeVolume( spep_2 + 234, 1121, 35 );
setSeVolume( spep_2 + 236, 1121, 58 );
setSeVolume( spep_2 + 238, 1121, 79 );
setSeVolume( spep_2 + 312, 1121, 79 );
setSeVolume( spep_2 + 318, 1121, 72 );
setSeVolume( spep_2 + 322, 1121, 64 );
setSeVolume( spep_2 + 326, 1121, 58 );
setSeVolume( spep_2 + 330, 1121, 50 );
setSeVolume( spep_2 + 334, 1121, 42 );
setSeVolume( spep_2 + 338, 1121, 36 );
setSeVolume( spep_2 + 342, 1121, 25 );
setSeVolume( spep_2 + 346, 1121, 14 );
setSeVolume( spep_2 + 350, 1121, 8 );
setSeVolume( spep_2 + 352, 1121, 4 );
setSeVolume( spep_2 + 354, 1121, 0 );
stopSe( spep_2 + 354, SE13, 0 );

SE15 = playSe( spep_2 + 189, 1242 );
setSeVolume( spep_2 + 189, 1242, 0 );
setSeVolume( spep_2 + 233, 1242, 10 );
setSeVolume( spep_2 + 240, 1242, 178 );
setSeVolume( spep_2 + 309, 1242, 178 );
setSeVolume( spep_2 + 312, 1242, 122 );
setSeVolume( spep_2 + 318, 1242, 104 );
setSeVolume( spep_2 + 324, 1242, 82 );
setSeVolume( spep_2 + 328, 1242, 54 );
setSeVolume( spep_2 + 332, 1242, 28 );
setSeVolume( spep_2 + 336, 1242, 14 );
setSeVolume( spep_2 + 340, 1242, 8 );
setSeVolume( spep_2 + 343, 1242, 0 );
stopSe( spep_2 + 343, SE15, 0 );

playSe( spep_2 + 234, 1142 );
setSeVolume( spep_2 + 234, 1142, 56 );

playSe( spep_2 + 234, 1162 );
setSeVolume( spep_2 + 234, 1162, 79 );

--気弾ヒット
SE14 = playSe( spep_2 + 183, 1223 );
setSeVolume( spep_2 + 183, 1223, 45 );
setSeVolume( spep_2 + 228, 1223, 45 );
setSeVolume( spep_2 + 230, 1223, 45 );
setSeVolume( spep_2 + 234, 1223, 45 );
setSeVolume( spep_2 + 238, 1223, 45 );
setSeVolume( spep_2 + 242, 1223, 45 );
setSeVolume( spep_2 + 248, 1223, 45 );
setSeVolume( spep_2 + 252, 1223, 45 );
setSeVolume( spep_2 + 256, 1223, 45 );
setSeVolume( spep_2 + 260, 1223, 45 );
setSeVolume( spep_2 + 264, 1223, 45 );
setSeVolume( spep_2 + 270, 1223, 45 );
setSeVolume( spep_2 + 276, 1223, 0 );
stopSe( spep_2 + 276, SE14, 0 );

playSe( spep_2 + 189, 1011 );
playSe( spep_2 + 194, 1025 );
playSe( spep_2 + 194, 1023 );

--両手気弾溜め
playSe( spep_2 + 338, 1131 );
playSe( spep_2 + 361, 1022 );
setSeVolume( spep_2 + 361, 1022, 89 );
playSe( spep_2 + 361, 1145 );

SE16 = playSe( spep_2 + 361, 1212 );
setSeVolume( spep_2 + 361, 1212, 40 );
setSeVolume( spep_2 + 456, 1212, 40 );
setSeVolume( spep_2 + 460, 1212, 36 );
setSeVolume( spep_2 + 464, 1212, 32 );
setSeVolume( spep_2 + 472, 1212, 28 );
setSeVolume( spep_2 + 478, 1212, 24 );
setSeVolume( spep_2 + 482, 1212, 20 );
setSeVolume( spep_2 + 486, 1212, 16 );
setSeVolume( spep_2 + 490, 1212, 12 );
setSeVolume( spep_2 + 494, 1212, 8 );
setSeVolume( spep_2 + 499, 1212, 0 );

--爆発
playSe( spep_2 + 457, 1024 );
setSeVolume( spep_2 + 457, 1024, 89 );
playSe( spep_2 + 457, 1159 );
setSeVolume( spep_2 + 457, 1159, 89 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 128, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 458 );
endPhase( spep_2 + 574 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 突進〜ラッシュ〜気溜め(396F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 );  --突進〜ラッシュ〜気溜め(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 396, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 396, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 396, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 396, first_f, 255 );

first_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 );  --突進〜ラッシュ〜気溜め(ef_002)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 396, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 396, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 396, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 396, first_b, 255 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 398, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
--入り
SE0 = playSe( spep_0 + 0, 8 );

--ダッシュ
SE1 = playSe( spep_0 + 39, 9 );
SE2 = playSe( spep_0 + 39, 1182 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 70; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE0, 0 );
stopSe( SP_dodge - 12, SE1, 0 );
stopSe( SP_dodge - 12, SE2, 0 );

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

spep_x = spep_0 + 306;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9 -10, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9 -10, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9 -10, 515.5 , 0 );

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

ctex = entryEffectLife( spep_0 -3 + 120,  10001, 16, 0x100, -1, 0, 143.5, 318.7 );  --！？マーク
setEffMoveKey( spep_0 -3 + 120, ctex, 143.5, 318.7 , 0 );
setEffMoveKey( spep_0 -3 + 122, ctex, 113.8, 452.9 , 0 );
setEffMoveKey( spep_0 -3 + 124, ctex, 114.8, 445 , 0 );
setEffMoveKey( spep_0 -3 + 126, ctex, 117.7, 421.2 , 0 );
setEffMoveKey( spep_0 -3 + 128, ctex, 122.6, 381.4 , 0 );
setEffMoveKey( spep_0 -3 + 134, ctex, 122.6, 381.4 , 0 );
setEffMoveKey( spep_0 -3 + 136, ctex, 145.5, 316.9 , 0 );

setEffScaleKey( spep_0 -3 + 120, ctex, 2.23, 2.55 );
setEffScaleKey( spep_0 -3 + 122, ctex, 4.58, 5.25 );
setEffScaleKey( spep_0 -3 + 124, ctex, 4.5, 5.16 );
setEffScaleKey( spep_0 -3 + 126, ctex, 4.27, 4.89 );
setEffScaleKey( spep_0 -3 + 128, ctex, 3.89, 4.45 );
setEffScaleKey( spep_0 -3 + 134, ctex, 3.89, 4.45 );
setEffScaleKey( spep_0 -3 + 136, ctex, 2.47, 2.82 );

setEffRotateKey( spep_0 -3 + 120, ctex, 20 );
setEffRotateKey( spep_0 -3 + 136, ctex, 20 );

setEffAlphaKey( spep_0 -3 + 120, ctex, 255 );
setEffAlphaKey( spep_0 -3 + 134, ctex, 255 );
setEffAlphaKey( spep_0 -3 + 136, ctex, 82 );

ctdoga = entryEffectLife( spep_0 -3 + 188,  10017, 58, 0x100, -1, 0, 19.6, 340 );  --ドガガガ
setEffMoveKey( spep_0 -3 + 188, ctdoga, 19.6, 340 , 0 );
setEffMoveKey( spep_0 -3 + 190, ctdoga, 4.7, 321 , 0 );
setEffMoveKey( spep_0 -3 + 192, ctdoga, 25, 334.5 , 0 );
setEffMoveKey( spep_0 -3 + 194, ctdoga, 1.4, 331 , 0 );
setEffMoveKey( spep_0 -3 + 196, ctdoga, 23.1, 331.1 , 0 );
setEffMoveKey( spep_0 -3 + 198, ctdoga, 5.7, 336.1 , 0 );
setEffMoveKey( spep_0 -3 + 200, ctdoga, 15.3, 326.5 , 0 );
setEffMoveKey( spep_0 -3 + 202, ctdoga, 13.1, 335.6 , 0 );
setEffMoveKey( spep_0 -3 + 204, ctdoga, 7.1, 339.5 , 0 );
setEffMoveKey( spep_0 -3 + 206, ctdoga, 26, 340.3 , 0 );
setEffMoveKey( spep_0 -3 + 208, ctdoga, 5, 337.5 , 0 );
setEffMoveKey( spep_0 -3 + 210, ctdoga, 15.3, 329.9 , 0 );
setEffMoveKey( spep_0 -3 + 212, ctdoga, -0.2, 339.7 , 0 );
setEffMoveKey( spep_0 -3 + 214, ctdoga, 18, 327 , 0 );
setEffMoveKey( spep_0 -3 + 216, ctdoga, 3.7, 341.5 , 0 );
setEffMoveKey( spep_0 -3 + 218, ctdoga, 18.6, 338.6 , 0 );
setEffMoveKey( spep_0 -3 + 220, ctdoga, 6.9, 346.3 , 0 );
setEffMoveKey( spep_0 -3 + 222, ctdoga, 15.6, 335 , 0 );
setEffMoveKey( spep_0 -3 + 224, ctdoga, 15, 348.7 , 0 );
setEffMoveKey( spep_0 -3 + 226, ctdoga, 8.7, 334.2 , 0 );
setEffMoveKey( spep_0 -3 + 228, ctdoga, 13.5, 351 , 0 );
setEffMoveKey( spep_0 -3 + 230, ctdoga, -0.3, 333.1 , 0 );
setEffMoveKey( spep_0 -3 + 232, ctdoga, 20.5, 347 , 0 );
setEffMoveKey( spep_0 -3 + 234, ctdoga, 2.2, 339.7 , 0 );
setEffMoveKey( spep_0 -3 + 236, ctdoga, 18.7, 347.9 , 0 );
setEffMoveKey( spep_0 -3 + 238, ctdoga, 6.1, 334.1 , 0 );
setEffMoveKey( spep_0 -3 + 240, ctdoga, 14.5, 353.7 , 0 );
setEffMoveKey( spep_0 -3 + 242, ctdoga, -6.9, 338 , 0 );
setEffMoveKey( spep_0 -3 + 244, ctdoga, 5.6, 358 , 0 );
setEffMoveKey( spep_0 -3 + 246, ctdoga, -2, 363.5 , 0 );

setEffScaleKey( spep_0 -3 + 188, ctdoga, 2.87, 2.91 );
setEffScaleKey( spep_0 -3 + 240, ctdoga, 2.87, 2.91 );
setEffScaleKey( spep_0 -3 + 242, ctdoga, 2.92, 2.98 );
setEffScaleKey( spep_0 -3 + 244, ctdoga, 2.98, 3.04 );
setEffScaleKey( spep_0 -3 + 246, ctdoga, 3.04, 3.1 );

setEffRotateKey( spep_0 -3 + 188, ctdoga, 5 );
setEffRotateKey( spep_0 -3 + 246, ctdoga, 5 );

setEffAlphaKey( spep_0 -3 + 188, ctdoga, 255 );
setEffAlphaKey( spep_0 -3 + 240, ctdoga, 255 );
setEffAlphaKey( spep_0 -3 + 242, ctdoga, 170 );
setEffAlphaKey( spep_0 -3 + 244, ctdoga, 85 );
setEffAlphaKey( spep_0 -3 + 246, ctdoga, 0 );

ctga = entryEffectLife( spep_0 -3 + 268,  10005, 20, 0x100, -1, 0, 89.3, 217.7 );  --ガッ
setEffMoveKey( spep_0 -3 + 268, ctga, 89.3, 217.7 , 0 );
setEffMoveKey( spep_0 -3 + 270, ctga, 70.2, 237.8 , 0 );
setEffMoveKey( spep_0 -3 + 272, ctga, 72.4, 252 , 0 );
setEffMoveKey( spep_0 -3 + 274, ctga, 58.5, 259 , 0 );
setEffMoveKey( spep_0 -3 + 276, ctga, 67.7, 263.5 , 0 );
setEffMoveKey( spep_0 -3 + 278, ctga, 54, 268.2 , 0 );
setEffMoveKey( spep_0 -3 + 280, ctga, 57.8, 267.7 , 0 );
setEffMoveKey( spep_0 -3 + 282, ctga, 49, 266.8 , 0 );
setEffMoveKey( spep_0 -3 + 284, ctga, 55.7, 280.7 , 0 );
setEffMoveKey( spep_0 -3 + 286, ctga, 36.8, 290.1 , 0 );
setEffMoveKey( spep_0 -3 + 288, ctga, 34.6, 293.3 , 0 );

setEffScaleKey( spep_0 -3 + 268, ctga, 1.05, 1.03 );
setEffScaleKey( spep_0 -3 + 270, ctga, 1.5, 1.47 );
setEffScaleKey( spep_0 -3 + 272, ctga, 1.72, 1.68 );
setEffScaleKey( spep_0 -3 + 274, ctga, 1.87, 1.82 );
setEffScaleKey( spep_0 -3 + 276, ctga, 1.96, 1.91 );
setEffScaleKey( spep_0 -3 + 278, ctga, 2.01, 1.96 );
setEffScaleKey( spep_0 -3 + 280, ctga, 2.03, 1.98 );
setEffScaleKey( spep_0 -3 + 282, ctga, 2.09, 2.04 );
setEffScaleKey( spep_0 -3 + 284, ctga, 2.29, 2.23 );
setEffScaleKey( spep_0 -3 + 286, ctga, 2.48, 2.42 );
setEffScaleKey( spep_0 -3 + 288, ctga, 2.54, 2.48 );

setEffRotateKey( spep_0 -3 + 268, ctga, -15 );
setEffRotateKey( spep_0 -3 + 288, ctga, -15 );

setEffAlphaKey( spep_0 -3 + 268, ctga, 255 );
setEffAlphaKey( spep_0 -3 + 280, ctga, 255 );
setEffAlphaKey( spep_0 -3 + 282, ctga, 223 );
setEffAlphaKey( spep_0 -3 + 284, ctga, 128 );
setEffAlphaKey( spep_0 -3 + 286, ctga, 32 );
setEffAlphaKey( spep_0 -3 + 288, ctga, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 102, 1, 1 );
setDisp( spep_0 -3 + 306, 1, 0 );
changeAnime( spep_0 -3 + 102, 1, 100 );
changeAnime( spep_0 -3 + 120, 1, 102 );
changeAnime( spep_0 -3 + 152, 1, 7 );
changeAnime( spep_0 -3 + 168, 1, 107 );
changeAnime( spep_0 -3 + 188, 1, 106 );
changeAnime( spep_0 -3 + 190, 1, 108 );
changeAnime( spep_0 -3 + 192, 1, 106 );
changeAnime( spep_0 -3 + 196, 1, 108 );
changeAnime( spep_0 -3 + 202, 1, 106 );
changeAnime( spep_0 -3 + 204, 1, 108 );
changeAnime( spep_0 -3 + 206, 1, 106 );
changeAnime( spep_0 -3 + 212, 1, 108 );
changeAnime( spep_0 -3 + 214, 1, 106 );
changeAnime( spep_0 -3 + 218, 1, 108 );
changeAnime( spep_0 -3 + 220, 1, 106 );
changeAnime( spep_0 -3 + 222, 1, 108 );
changeAnime( spep_0 -3 + 226, 1, 106 );
changeAnime( spep_0 -3 + 234, 1, 108 );
changeAnime( spep_0 -3 + 236, 1, 106 );
changeAnime( spep_0 -3 + 238, 1, 108 );
changeAnime( spep_0 -3 + 240, 1, 106 );
changeAnime( spep_0 -3 + 268, 1, 108 );

setMoveKey( spep_0 -3 + 102, 1, 209.8, -132.1 , 0 );
setMoveKey( spep_0 -3 + 119, 1, 209.8, -132.1 , 0 );
setMoveKey( spep_0 -3 + 120, 1, 209.8, -132.1 , 0 );
setMoveKey( spep_0 -3 + 136, 1, 209.8, -132.1 , 0 );
setMoveKey( spep_0 -3 + 138, 1, 210.9, -142.1 , 0 );
setMoveKey( spep_0 -3 + 140, 1, 214.3, -172.2 , 0 );
setMoveKey( spep_0 -3 + 142, 1, 219.8, -222.4 , 0 );
setMoveKey( spep_0 -3 + 144, 1, 227.1, -287.6 , 0 );
setMoveKey( spep_0 -3 + 146, 1, 232.7, -337.7 , 0 );
setMoveKey( spep_0 -3 + 148, 1, 236.1, -367.8 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 237.2, -377.8 , 0 );
setMoveKey( spep_0 -3 + 151, 1, 237.2, -377.8 , 0 );
setMoveKey( spep_0 -3 + 152, 1, -145.8, -487.6 , 0 );
setMoveKey( spep_0 -3 + 154, 1, -116.9, -517.6 , 0 );
setMoveKey( spep_0 -3 + 156, 1, -147.6, -517.5 , 0 );
setMoveKey( spep_0 -3 + 158, 1, -144, -497.5 , 0 );
setMoveKey( spep_0 -3 + 160, 1, -146.2, -497.4 , 0 );
setMoveKey( spep_0 -3 + 162, 1, -143, -497.5 , 0 );
setMoveKey( spep_0 -3 + 164, 1, -135, -497.6 , 0 );
setMoveKey( spep_0 -3 + 166, 1, -131.8, -497.6 , 0 );
setMoveKey( spep_0 -3 + 167, 1, -131.8, -497.6 , 0 );
setMoveKey( spep_0 -3 + 168, 1, 302.6, -412.5 , 0 );
setMoveKey( spep_0 -3 + 170, 1, 287.1, -424.9 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 326.2, -402.5 , 0 );
setMoveKey( spep_0 -3 + 174, 1, 332, -430.1 , 0 );
setMoveKey( spep_0 -3 + 176, 1, 359.7, -419.6 , 0 );
setMoveKey( spep_0 -3 + 178, 1, 374.5, -419.3 , 0 );
setMoveKey( spep_0 -3 + 180, 1, 386.7, -419.3 , 0 );
setMoveKey( spep_0 -3 + 182, 1, 397.2, -420 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 410.4, -422.8 , 0 );
setMoveKey( spep_0 -3 + 186, 1, 500.1, -453.9 , 0 );
setMoveKey( spep_0 -3 + 187, 1, 500.1, -453.9 , 0 );
setMoveKey( spep_0 -3 + 188, 1, 74.1, 48.7 , 0 );
setMoveKey( spep_0 -3 + 189, 1, 74.1, 48.7 , 0 );
setMoveKey( spep_0 -3 + 190, 1, 130.4, -9.4 , 0 );
setMoveKey( spep_0 -3 + 191, 1, 130.4, -9.4 , 0 );
setMoveKey( spep_0 -3 + 192, 1, 87.4, 25.5 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 85.1, 21.8 , 0 );
setMoveKey( spep_0 -3 + 195, 1, 85.1, 21.8 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 144.9, 26.5 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 145.1, 22.8 , 0 );
setMoveKey( spep_0 -3 + 200, 1, 146.9, 27.3 , 0 );
setMoveKey( spep_0 -3 + 201, 1, 146.9, 27.3 , 0 );
setMoveKey( spep_0 -3 + 202, 1, 71.8, 47.8 , 0 );
setMoveKey( spep_0 -3 + 203, 1, 71.8, 47.8 , 0 );
setMoveKey( spep_0 -3 + 204, 1, 134.1, -6 , 0 );
setMoveKey( spep_0 -3 + 205, 1, 134.1, -6 , 0 );
setMoveKey( spep_0 -3 + 206, 1, 83.9, 24.6 , 0 );
setMoveKey( spep_0 -3 + 208, 1, 88.5, 25.1 , 0 );
setMoveKey( spep_0 -3 + 210, 1, 72.4, 47.9 , 0 );
setMoveKey( spep_0 -3 + 211, 1, 72.4, 47.9 , 0 );
setMoveKey( spep_0 -3 + 212, 1, 134.1, -7.3 , 0 );
setMoveKey( spep_0 -3 + 213, 1, 134.1, -7.3 , 0 );
setMoveKey( spep_0 -3 + 214, 1, 83.9, 24.7 , 0 );
setMoveKey( spep_0 -3 + 216, 1, 88.5, 24.2 , 0 );
setMoveKey( spep_0 -3 + 217, 1, 88.5, 24.2 , 0 );
setMoveKey( spep_0 -3 + 218, 1, 131.3, -6.1 , 0 );
setMoveKey( spep_0 -3 + 219, 1, 131.3, -6.1 , 0 );
setMoveKey( spep_0 -3 + 220, 1, 87.8, 24.1 , 0 );
setMoveKey( spep_0 -3 + 221, 1, 87.8, 24.1 , 0 );
setMoveKey( spep_0 -3 + 222, 1, 130.3, -7.1 , 0 );
setMoveKey( spep_0 -3 + 224, 1, 133.7, -8.1 , 0 );
setMoveKey( spep_0 -3 + 225, 1, 133.7, -8.1 , 0 );
setMoveKey( spep_0 -3 + 226, 1, 83.7, 26.2 , 0 );
setMoveKey( spep_0 -3 + 228, 1, 74, 46.5 , 0 );
setMoveKey( spep_0 -3 + 230, 1, 74.8, 50.1 , 0 );
setMoveKey( spep_0 -3 + 232, 1, 85.5, 22.5 , 0 );
setMoveKey( spep_0 -3 + 233, 1, 85.5, 22.5 , 0 );
setMoveKey( spep_0 -3 + 234, 1, 134.3, -5.6 , 0 );
setMoveKey( spep_0 -3 + 235, 1, 134.3, -5.6 , 0 );
setMoveKey( spep_0 -3 + 236, 1, 72.9, 47.7 , 0 );
setMoveKey( spep_0 -3 + 237, 1, 72.9, 47.7 , 0 );
setMoveKey( spep_0 -3 + 238, 1, 76.1, 49.7 , 0 );
setMoveKey( spep_0 -3 + 239, 1, 76.1, 49.7 , 0 );
setMoveKey( spep_0 -3 + 240, 1, 71.8, 48.3 , 0 );
setMoveKey( spep_0 -3 + 242, 1, 76.2, 33.7 , 0 );
setMoveKey( spep_0 -3 + 244, 1, 74, 22.3 , 0 );
setMoveKey( spep_0 -3 + 246, 1, 73.9, 11.1 , 0 );
setMoveKey( spep_0 -3 + 248, 1, 73.9, 1.1 , 0 );
setMoveKey( spep_0 -3 + 250, 1, 73.8, -7.5 , 0 );
setMoveKey( spep_0 -3 + 252, 1, 73.8, -14.7 , 0 );
setMoveKey( spep_0 -3 + 254, 1, 73.8, -20.7 , 0 );
setMoveKey( spep_0 -3 + 256, 1, 73.8, -25.3 , 0 );
setMoveKey( spep_0 -3 + 258, 1, 73.7, -28.6 , 0 );
setMoveKey( spep_0 -3 + 260, 1, 73.7, -30.6 , 0 );
setMoveKey( spep_0 -3 + 262, 1, 73.7, -31.3 , 0 );
setMoveKey( spep_0 -3 + 267, 1, 73.7, -31.3 , 0 );
setMoveKey( spep_0 -3 + 268, 1, 112.7, -79.5 , 0 );
setMoveKey( spep_0 -3 + 270, 1, 141.3, -104 , 0 );
setMoveKey( spep_0 -3 + 272, 1, 167.9, -117.3 , 0 );
setMoveKey( spep_0 -3 + 274, 1, 166.2, -107.2 , 0 );
setMoveKey( spep_0 -3 + 276, 1, 193.1, -137.6 , 0 );
setMoveKey( spep_0 -3 + 278, 1, 245, -189.1 , 0 );
setMoveKey( spep_0 -3 + 280, 1, 353.2, -302.1 , 0 );
setMoveKey( spep_0 -3 + 282, 1, 476.3, -437.2 , 0 );
setMoveKey( spep_0 -3 + 284, 1, 596.1, -563.8 , 0 );
setMoveKey( spep_0 -3 + 286, 1, 695, -665.9 , 0 );
setMoveKey( spep_0 -3 + 288, 1, 765.5, -741.4 , 0 );
setMoveKey( spep_0 -3 + 290, 1, 815.4, -793.9 , 0 );
setMoveKey( spep_0 -3 + 292, 1, 850.4, -831 , 0 );
setMoveKey( spep_0 -3 + 294, 1, 876.4, -858.5 , 0 );
setMoveKey( spep_0 -3 + 296, 1, 896.5, -879.8 , 0 );
setMoveKey( spep_0 -3 + 298, 1, 912.6, -896.9 , 0 );
setMoveKey( spep_0 -3 + 300, 1, 926, -911 , 0 );
setMoveKey( spep_0 -3 + 302, 1, 937.3, -923.1 , 0 );
setMoveKey( spep_0 -3 + 304, 1, 947.3, -933.6 , 0 );
setMoveKey( spep_0 -3 + 306, 1, 956.1, -942.9 , 0 );

setScaleKey( spep_0 -3 + 102, 1, 4, 4 );
setScaleKey( spep_0 -3 + 119, 1, 4, 4 );
setScaleKey( spep_0 -3 + 120, 1, 4, 4 );
setScaleKey( spep_0 -3 + 136, 1, 4, 4 );
setScaleKey( spep_0 -3 + 138, 1, 4.08, 4.08 );
setScaleKey( spep_0 -3 + 140, 1, 4.33, 4.33 );
setScaleKey( spep_0 -3 + 142, 1, 4.73, 4.73 );
setScaleKey( spep_0 -3 + 144, 1, 5.27, 5.27 );
setScaleKey( spep_0 -3 + 146, 1, 5.67, 5.67 );
setScaleKey( spep_0 -3 + 148, 1, 5.92, 5.92 );
setScaleKey( spep_0 -3 + 150, 1, 6, 6 );
setScaleKey( spep_0 -3 + 151, 1, 6, 6 );
setScaleKey( spep_0 -3 + 152, 1, 2.6, 2.6 );
setScaleKey( spep_0 -3 + 167, 1, 2.6, 2.6 );
setScaleKey( spep_0 -3 + 168, 1, 2.6, 2.6 );
setScaleKey( spep_0 -3 + 170, 1, 2.68, 2.68 );
setScaleKey( spep_0 -3 + 172, 1, 2.76, 2.76 );
setScaleKey( spep_0 -3 + 174, 1, 2.82, 2.82 );
setScaleKey( spep_0 -3 + 176, 1, 2.88, 2.88 );
setScaleKey( spep_0 -3 + 178, 1, 2.92, 2.92 );
setScaleKey( spep_0 -3 + 180, 1, 2.96, 2.96 );
setScaleKey( spep_0 -3 + 182, 1, 2.98, 2.98 );
setScaleKey( spep_0 -3 + 184, 1, 3.03, 3.03 );
setScaleKey( spep_0 -3 + 186, 1, 3.3, 3.3 );
setScaleKey( spep_0 -3 + 187, 1, 3.3, 3.3 );
setScaleKey( spep_0 -3 + 188, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 189, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 190, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 191, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 192, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 194, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 195, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 196, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 200, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 201, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 202, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 203, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 204, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 205, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 206, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 210, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 211, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 212, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 213, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 214, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 216, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 217, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 218, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 219, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 220, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 221, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 222, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 224, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 225, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 226, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 232, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 233, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 234, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 235, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 236, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 237, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 238, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 239, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 240, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 267, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 268, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 306, 1, 2.5, 2.5 );

setRotateKey( spep_0 -3 + 102, 1, 0 );
setRotateKey( spep_0 -3 + 119, 1, 0 );
setRotateKey( spep_0 -3 + 120, 1, 0 );
setRotateKey( spep_0 -3 + 136, 1, 0 );
setRotateKey( spep_0 -3 + 138, 1, 0.4 );
setRotateKey( spep_0 -3 + 140, 1, 1.6 );
setRotateKey( spep_0 -3 + 142, 1, 3.7 );
setRotateKey( spep_0 -3 + 144, 1, 6.3 );
setRotateKey( spep_0 -3 + 146, 1, 8.4 );
setRotateKey( spep_0 -3 + 148, 1, 9.6 );
setRotateKey( spep_0 -3 + 150, 1, 10 );
setRotateKey( spep_0 -3 + 151, 1, 10 );
setRotateKey( spep_0 -3 + 152, 1, 50 );
setRotateKey( spep_0 -3 + 154, 1, 47.8 );
setRotateKey( spep_0 -3 + 156, 1, 46.3 );
setRotateKey( spep_0 -3 + 158, 1, 45.3 );
setRotateKey( spep_0 -3 + 160, 1, 45 );
setRotateKey( spep_0 -3 + 162, 1, 46.1 );
setRotateKey( spep_0 -3 + 164, 1, 48.9 );
setRotateKey( spep_0 -3 + 166, 1, 50 );
setRotateKey( spep_0 -3 + 167, 1, 50 );
setRotateKey( spep_0 -3 + 168, 1, -60 );
setRotateKey( spep_0 -3 + 170, 1, -61.3 );
setRotateKey( spep_0 -3 + 172, 1, -62.4 );
setRotateKey( spep_0 -3 + 174, 1, -63.3 );
setRotateKey( spep_0 -3 + 176, 1, -64.1 );
setRotateKey( spep_0 -3 + 178, 1, -64.8 );
setRotateKey( spep_0 -3 + 180, 1, -65.3 );
setRotateKey( spep_0 -3 + 182, 1, -65.7 );
setRotateKey( spep_0 -3 + 184, 1, -65.9 );
setRotateKey( spep_0 -3 + 186, 1, -66 );
setRotateKey( spep_0 -3 + 187, 1, -66 );
setRotateKey( spep_0 -3 + 188, 1, -47.4 );
setRotateKey( spep_0 -3 + 189, 1, -47.4 );
setRotateKey( spep_0 -3 + 190, 1, 20 );
setRotateKey( spep_0 -3 + 191, 1, 20 );
setRotateKey( spep_0 -3 + 192, 1, -30 );
setRotateKey( spep_0 -3 + 194, 1, -30 );
setRotateKey( spep_0 -3 + 195, 1, -30 );
setRotateKey( spep_0 -3 + 196, 1, 10 );
setRotateKey( spep_0 -3 + 200, 1, 10 );
setRotateKey( spep_0 -3 + 201, 1, 10 );
setRotateKey( spep_0 -3 + 202, 1, -47.4 );
setRotateKey( spep_0 -3 + 203, 1, -47.4 );
setRotateKey( spep_0 -3 + 204, 1, 20 );
setRotateKey( spep_0 -3 + 205, 1, 20 );
setRotateKey( spep_0 -3 + 206, 1, -30 );
setRotateKey( spep_0 -3 + 208, 1, -30 );
setRotateKey( spep_0 -3 + 210, 1, -47.4 );
setRotateKey( spep_0 -3 + 211, 1, -47.4 );
setRotateKey( spep_0 -3 + 212, 1, 20 );
setRotateKey( spep_0 -3 + 213, 1, 20 );
setRotateKey( spep_0 -3 + 214, 1, -30 );
setRotateKey( spep_0 -3 + 216, 1, -30 );
setRotateKey( spep_0 -3 + 217, 1, -30 );
setRotateKey( spep_0 -3 + 218, 1, 20 );
setRotateKey( spep_0 -3 + 219, 1, 20 );
setRotateKey( spep_0 -3 + 220, 1, -30 );
setRotateKey( spep_0 -3 + 221, 1, -30 );
setRotateKey( spep_0 -3 + 222, 1, 20 );
setRotateKey( spep_0 -3 + 224, 1, 20 );
setRotateKey( spep_0 -3 + 225, 1, 20 );
setRotateKey( spep_0 -3 + 226, 1, -30 );
setRotateKey( spep_0 -3 + 228, 1, -47.4 );
setRotateKey( spep_0 -3 + 230, 1, -47.4 );
setRotateKey( spep_0 -3 + 232, 1, -30 );
setRotateKey( spep_0 -3 + 233, 1, -30 );
setRotateKey( spep_0 -3 + 234, 1, 20 );
setRotateKey( spep_0 -3 + 235, 1, 20 );
setRotateKey( spep_0 -3 + 236, 1, -47.4 );
setRotateKey( spep_0 -3 + 237, 1, -47.4 );
setRotateKey( spep_0 -3 + 238, 1, -47.4 );
setRotateKey( spep_0 -3 + 239, 1, -47.4 );
setRotateKey( spep_0 -3 + 240, 1, -31.7 );
setRotateKey( spep_0 -3 + 242, 1, -29.7 );
setRotateKey( spep_0 -3 + 244, 1, -27.8 );
setRotateKey( spep_0 -3 + 246, 1, -26.2 );
setRotateKey( spep_0 -3 + 248, 1, -24.7 );
setRotateKey( spep_0 -3 + 250, 1, -23.5 );
setRotateKey( spep_0 -3 + 252, 1, -22.4 );
setRotateKey( spep_0 -3 + 254, 1, -21.5 );
setRotateKey( spep_0 -3 + 256, 1, -20.9 );
setRotateKey( spep_0 -3 + 258, 1, -20.4 );
setRotateKey( spep_0 -3 + 260, 1, -20.1 );
setRotateKey( spep_0 -3 + 262, 1, -20 );
setRotateKey( spep_0 -3 + 267, 1, -20 );
setRotateKey( spep_0 -3 + 268, 1, 40 );
setRotateKey( spep_0 -3 + 270, 1, 40 );
setRotateKey( spep_0 -3 + 272, 1, 40.1 );
setRotateKey( spep_0 -3 + 280, 1, 40.1 );
setRotateKey( spep_0 -3 + 282, 1, 40 );
setRotateKey( spep_0 -3 + 306, 1, 40 );

-- ** 音 ** --
--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

--ダッシュ
playSe( spep_0 + 61, 1072 );

--瞬間移動
playSe( spep_0 + 102, 1109 );

--キック
SE4 = playSe( spep_0 + 141, 1188 );
setSeVolume( spep_0 + 141, 1188, 0 );
setSeVolume( spep_0 + 167, 1188, 10 );
setSeVolume( spep_0 + 168, 1188, 46 );
setSeVolume( spep_0 + 169, 1188, 71 );
setSeVolume( spep_0 + 186, 1188, 71 );
setSeVolume( spep_0 + 190, 1188, 58 );
setSeVolume( spep_0 + 194, 1188, 52 );
setSeVolume( spep_0 + 198, 1188, 46 );
setSeVolume( spep_0 + 202, 1188, 40 );
setSeVolume( spep_0 + 208, 1188, 36 );
setSeVolume( spep_0 + 212, 1188, 32 );
setSeVolume( spep_0 + 216, 1188, 28 );
setSeVolume( spep_0 + 220, 1188, 22 );
setSeVolume( spep_0 + 224, 1188, 17 );
setSeVolume( spep_0 + 228, 1188, 14 );
setSeVolume( spep_0 + 230, 1188, 6 );
setSeVolume( spep_0 + 232, 1188, 0 );
stopSe( spep_0 + 232, SE4, 0 );

playSe( spep_0 + 146, 1003 );

SE5 = playSe( spep_0 + 152, 1182 );
setSeVolume( spep_0 + 152, 1182, 158 );
setSeVolume( spep_0 + 158, 1182, 158 );
setSeVolume( spep_0 + 162, 1182, 102 );
setSeVolume( spep_0 + 168, 1182, 64 );
setSeVolume( spep_0 + 170, 1182, 28 );
setSeVolume( spep_0 + 173, 1182, 0 );
stopSe( spep_0 + 173, SE5, 0 );

playSe( spep_0 + 152, 1010 );
playSe( spep_0 + 154, 1110 );

SE6 = playSe( spep_0 + 170, 1190 );
setSeVolume( spep_0 + 170, 1190, 89 );
setSeVolume( spep_0 + 184, 1190, 89 );
setSeVolume( spep_0 + 188, 1190, 68 );
setSeVolume( spep_0 + 192, 1190, 52 );
setSeVolume( spep_0 + 196, 1190, 36 );
setSeVolume( spep_0 + 200, 1190, 22 );
setSeVolume( spep_0 + 204, 1190, 10 );
setSeVolume( spep_0 + 206, 1190, 0 );
stopSe( spep_0 + 206, SE6, 0 );

SE7 = playSe( spep_0 + 170, 1187 );
setSeVolume( spep_0 + 170, 1187, 79 );
setSeVolume( spep_0 + 186, 1187, 79 );
setSeVolume( spep_0 + 190, 1187, 70 );
setSeVolume( spep_0 + 196, 1187, 62 );
setSeVolume( spep_0 + 200, 1187, 56 );
setSeVolume( spep_0 + 206, 1187, 48 );
setSeVolume( spep_0 + 210, 1187, 38 );
setSeVolume( spep_0 + 214, 1187, 24 );
setSeVolume( spep_0 + 218, 1187, 18 );
setSeVolume( spep_0 + 220, 1187, 8 );
setSeVolume( spep_0 + 222, 1187, 0 );
stopSe( spep_0 + 222, SE7, 0 );

--パンチ
playSe( spep_0 + 189, 1006 );
playSe( spep_0 + 191, 1000 );
playSe( spep_0 + 197, 1012 );
setSeVolume( spep_0 + 197, 1012, 89 );
playSe( spep_0 + 199, 1000 );
setSeVolume( spep_0 + 199, 1000, 79 );
playSe( spep_0 + 207, 1000 );
setSeVolume( spep_0 + 207, 1000, 112 );
playSe( spep_0 + 209, 1007 );
playSe( spep_0 + 215, 1000 );
playSe( spep_0 + 216, 1006 );
playSe( spep_0 + 223, 1000 );
setSeVolume( spep_0 + 223, 1000, 112 );
playSe( spep_0 + 224, 1006 );
setSeVolume( spep_0 + 224, 1006, 89 );
playSe( spep_0 + 230, 1013 );
setSeVolume( spep_0 + 230, 1013, 79 );
playSe( spep_0 + 231, 1000 );
setSeVolume( spep_0 + 231, 1000, 126 );
playSe( spep_0 + 237, 1013 );
playSe( spep_0 + 238, 1000 );

--ライダーキック
playSe( spep_0 + 265, 1004 );
playSe( spep_0 + 272, 1120 );

--気溜め
playSe( spep_0 + 341, 1035 );
setSeVolume( spep_0 + 341, 1035, 89 );
playSe( spep_0 + 341, 1024 );
setSeVolume( spep_0 + 341, 1024, 79 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 396;

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

--ポーズ
playSe( spep_1 + 86, 1003 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;

------------------------------------------------------
-- 気弾発射〜爆発フィニッシュ(576F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 );  --気弾発射〜爆発フィニッシュ(ef_003)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 576, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 576, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 576, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 576, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_04x, 0x80, -1, 0, 0, 0 );  --気弾発射〜爆発フィニッシュ(ef_004)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 576, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 576, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 576, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 576, finish_b, 255 );

-- ** 書き文字エントリー ** --
ctzun = entryEffectLife( spep_2 -3 + 188,  10016, 24, 0x100, -1, 0, 124.7, 226.7 );  --ズンッ
setEffMoveKey( spep_2 -3 + 188, ctzun, 124.7, 226.7 , 0 );
setEffMoveKey( spep_2 -3 + 190, ctzun, 122, 227.7 , 0 );
setEffMoveKey( spep_2 -3 + 192, ctzun, 125.3, 228.6 , 0 );
setEffMoveKey( spep_2 -3 + 194, ctzun, 122.9, 232.5 , 0 );
setEffMoveKey( spep_2 -3 + 196, ctzun, 127.7, 238 , 0 );
setEffMoveKey( spep_2 -3 + 198, ctzun, 126.4, 250.4 , 0 );
setEffMoveKey( spep_2 -3 + 200, ctzun, 139.5, 284.8 , 0 );
setEffMoveKey( spep_2 -3 + 202, ctzun, 139.8, 307.6 , 0 );
setEffMoveKey( spep_2 -3 + 204, ctzun, 150.7, 316.7 , 0 );
setEffMoveKey( spep_2 -3 + 206, ctzun, 145.1, 325 , 0 );
setEffMoveKey( spep_2 -3 + 208, ctzun, 154.4, 327.7 , 0 );
setEffMoveKey( spep_2 -3 + 210, ctzun, 147.2, 331.9 , 0 );
setEffMoveKey( spep_2 -3 + 212, ctzun, 147.6, 332.3 , 0 );

setEffScaleKey( spep_2 -3 + 188, ctzun, 1.02, 1.02 );
setEffScaleKey( spep_2 -3 + 190, ctzun, 1.03, 1.03 );
setEffScaleKey( spep_2 -3 + 192, ctzun, 1.06, 1.07 );
setEffScaleKey( spep_2 -3 + 194, ctzun, 1.13, 1.14 );
setEffScaleKey( spep_2 -3 + 196, ctzun, 1.27, 1.27 );
setEffScaleKey( spep_2 -3 + 198, ctzun, 1.52, 1.53 );
setEffScaleKey( spep_2 -3 + 200, ctzun, 2.29, 2.3 );
setEffScaleKey( spep_2 -3 + 202, ctzun, 2.59, 2.61 );
setEffScaleKey( spep_2 -3 + 204, ctzun, 2.74, 2.76 );
setEffScaleKey( spep_2 -3 + 206, ctzun, 2.84, 2.86 );
setEffScaleKey( spep_2 -3 + 208, ctzun, 2.9, 2.92 );
setEffScaleKey( spep_2 -3 + 210, ctzun, 2.94, 2.96 );
setEffScaleKey( spep_2 -3 + 212, ctzun, 2.95, 2.97 );

setEffRotateKey( spep_2 -3 + 188, ctzun, -30 );
setEffRotateKey( spep_2 -3 + 212, ctzun, -30 );

setEffAlphaKey( spep_2 -3 + 188, ctzun, 255 );
setEffAlphaKey( spep_2 -3 + 200, ctzun, 255 );
setEffAlphaKey( spep_2 -3 + 202, ctzun, 137 );
setEffAlphaKey( spep_2 -3 + 204, ctzun, 80 );
setEffAlphaKey( spep_2 -3 + 206, ctzun, 43 );
setEffAlphaKey( spep_2 -3 + 208, ctzun, 19 );
setEffAlphaKey( spep_2 -3 + 210, ctzun, 5 );
setEffAlphaKey( spep_2 -3 + 212, ctzun, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 138, 1, 1 );
setDisp( spep_2 -3 + 316, 1, 0 );
setDisp( spep_2 -3 + 458, 1, 1 );
setDisp( spep_2 -3 + 460, 1, 0 );
changeAnime( spep_2 -3 + 138, 1, 106 );
changeAnime( spep_2 -3 + 186, 1, 108 );
changeAnime( spep_2 -3 + 458, 1, 106 );

setMoveKey( spep_2 -3 + 138, 1, 188.4, -79.1 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 195.7, -90.8 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 197.1, -94 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 201.4, -97.6 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 199.9, -100.7 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 202.7, -99.8 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 202, -103.5 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 205.1, -103.8 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 203, -103.9 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 205.5, -104.7 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 203.2, -105.3 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 206.4, -106 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 204.2, -105.6 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 206.5, -107.8 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 205, -105.9 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 206.5, -108.2 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 205.4, -106.2 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 207.5, -108.3 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 205.5, -107.1 , 0 );
setMoveKey( spep_2 -3 + 176, 1, 207.1, -107.8 , 0 );
setMoveKey( spep_2 -3 + 178, 1, 205, -107.8 , 0 );
setMoveKey( spep_2 -3 + 180, 1, 207.3, -106.4 , 0 );
setMoveKey( spep_2 -3 + 182, 1, 205, -108.2 , 0 );
setMoveKey( spep_2 -3 + 184, 1, 207.4, -106.7 , 0 );
setMoveKey( spep_2 -3 + 185, 1, 207.4, -106.7 , 0 );
setMoveKey( spep_2 -3 + 186, 1, 206.8, -107.3 , 0 );
setMoveKey( spep_2 -3 + 188, 1, 206.2, -107.9 , 0 );
setMoveKey( spep_2 -3 + 190, 1, 204.9, -105.8 , 0 );
setMoveKey( spep_2 -3 + 192, 1, 206.2, -109.5 , 0 );
setMoveKey( spep_2 -3 + 194, 1, 205.7, -106.1 , 0 );
setMoveKey( spep_2 -3 + 196, 1, 205.5, -110.5 , 0 );
setMoveKey( spep_2 -3 + 198, 1, 207.9, -105.7 , 0 );
setMoveKey( spep_2 -3 + 200, 1, 205.6, -110 , 0 );
setMoveKey( spep_2 -3 + 202, 1, 204.7, -109.4 , 0 );
setMoveKey( spep_2 -3 + 204, 1, 203.4, -117.3 , 0 );
setMoveKey( spep_2 -3 + 206, 1, 199.9, -116.7 , 0 );
setMoveKey( spep_2 -3 + 208, 1, 196.4, -122.1 , 0 );
setMoveKey( spep_2 -3 + 210, 1, 198.5, -121.8 , 0 );
setMoveKey( spep_2 -3 + 212, 1, 195.8, -127 , 0 );
setMoveKey( spep_2 -3 + 214, 1, 194, -125.2 , 0 );
setMoveKey( spep_2 -3 + 216, 1, 194, -130.8 , 0 );
setMoveKey( spep_2 -3 + 218, 1, 192.2, -128 , 0 );
setMoveKey( spep_2 -3 + 220, 1, 191.6, -132.7 , 0 );
setMoveKey( spep_2 -3 + 222, 1, 191.2, -129.8 , 0 );
setMoveKey( spep_2 -3 + 224, 1, 192.1, -134.1 , 0 );
setMoveKey( spep_2 -3 + 237, 1, 192.1, -134.1 , 0 );
setMoveKey( spep_2 -3 + 238, 1, 49, 26.8 , 0 );
setMoveKey( spep_2 -3 + 240, 1, 51.6, 25.4 , 0 );
setMoveKey( spep_2 -3 + 242, 1, 49.1, 27.4 , 0 );
setMoveKey( spep_2 -3 + 244, 1, 51, 24.7 , 0 );
setMoveKey( spep_2 -3 + 246, 1, 50.5, 27.7 , 0 );
setMoveKey( spep_2 -3 + 248, 1, 49, 25.4 , 0 );
setMoveKey( spep_2 -3 + 250, 1, 50.4, 25 , 0 );
setMoveKey( spep_2 -3 + 252, 1, 49.6, 27 , 0 );
setMoveKey( spep_2 -3 + 254, 1, 51.3, 25.7 , 0 );
setMoveKey( spep_2 -3 + 256, 1, 49.5, 27 , 0 );
setMoveKey( spep_2 -3 + 258, 1, 51.7, 25.5 , 0 );
setMoveKey( spep_2 -3 + 260, 1, 48.6, 26.5 , 0 );
setMoveKey( spep_2 -3 + 262, 1, 51.2, 26 , 0 );
setMoveKey( spep_2 -3 + 264, 1, 48.8, 25 , 0 );
setMoveKey( spep_2 -3 + 266, 1, 51.7, 26.7 , 0 );
setMoveKey( spep_2 -3 + 268, 1, 48.3, 25.8 , 0 );
setMoveKey( spep_2 -3 + 270, 1, 51.3, 27 , 0 );
setMoveKey( spep_2 -3 + 272, 1, 49.8, 24.2 , 0 );
setMoveKey( spep_2 -3 + 274, 1, 50.3, 27.5 , 0 );
setMoveKey( spep_2 -3 + 276, 1, 51, 25.1 , 0 );
setMoveKey( spep_2 -3 + 278, 1, 50.2, 27.2 , 0 );
setMoveKey( spep_2 -3 + 280, 1, 49.6, 24.2 , 0 );
setMoveKey( spep_2 -3 + 282, 1, 51.7, 26.4 , 0 );
setMoveKey( spep_2 -3 + 284, 1, 48.8, 25.2 , 0 );
setMoveKey( spep_2 -3 + 286, 1, 51.1, 27.7 , 0 );
setMoveKey( spep_2 -3 + 288, 1, 50.6, 24.9 , 0 );
setMoveKey( spep_2 -3 + 290, 1, 48.7, 26.5 , 0 );
setMoveKey( spep_2 -3 + 292, 1, 51.5, 25.7 , 0 );
setMoveKey( spep_2 -3 + 294, 1, 49, 26.8 , 0 );
setMoveKey( spep_2 -3 + 296, 1, 50.4, 24.5 , 0 );
setMoveKey( spep_2 -3 + 298, 1, 50, 27.1 , 0 );
setMoveKey( spep_2 -3 + 300, 1, 51.2, 24.9 , 0 );
setMoveKey( spep_2 -3 + 302, 1, 49.2, 26.7 , 0 );
setMoveKey( spep_2 -3 + 304, 1, 47.4, 27.2 , 0 );
setMoveKey( spep_2 -3 + 306, 1, 50, 25.1 , 0 );
setMoveKey( spep_2 -3 + 308, 1, 47.3, 27.8 , 0 );
setMoveKey( spep_2 -3 + 310, 1, 47.3, 26.7 , 0 );
setMoveKey( spep_2 -3 + 312, 1, 51.1, 27 , 0 );
setMoveKey( spep_2 -3 + 314, 1, 49.7, 25.1 , 0 );
setMoveKey( spep_2 -3 + 316, 1, 49.7, 25.1 , 0 );
setMoveKey( spep_2 -3 + 458, 1, 70.9, 109.9 , 0 );
setMoveKey( spep_2 -3 + 460, 1, 70.9, 109.9 , 0 );

setScaleKey( spep_2 -3 + 138, 1, 0.5, 0.5 );
setScaleKey( spep_2 -3 + 185, 1, 0.5, 0.5 );
setScaleKey( spep_2 -3 + 186, 1, 0.5, 0.5 );
setScaleKey( spep_2 -3 + 237, 1, 0.5, 0.5 );
setScaleKey( spep_2 -3 + 238, 1, 2, 2 );
setScaleKey( spep_2 -3 + 316, 1, 2, 2 );
setScaleKey( spep_2 -3 + 458, 1, 0.8, 0.8 );
setScaleKey( spep_2 -3 + 460, 1, 0.8, 0.8 );

setRotateKey( spep_2 -3 + 138, 1, -25 );
setRotateKey( spep_2 -3 + 140, 1, -23 );
setRotateKey( spep_2 -3 + 142, 1, -22.3 );
setRotateKey( spep_2 -3 + 144, 1, -21.8 );
setRotateKey( spep_2 -3 + 146, 1, -21.4 );
setRotateKey( spep_2 -3 + 148, 1, -21.2 );
setRotateKey( spep_2 -3 + 150, 1, -20.9 );
setRotateKey( spep_2 -3 + 152, 1, -20.8 );
setRotateKey( spep_2 -3 + 154, 1, -20.6 );
setRotateKey( spep_2 -3 + 156, 1, -20.5 );
setRotateKey( spep_2 -3 + 158, 1, -20.4 );
setRotateKey( spep_2 -3 + 160, 1, -20.3 );
setRotateKey( spep_2 -3 + 162, 1, -20.2 );
setRotateKey( spep_2 -3 + 164, 1, -20.2 );
setRotateKey( spep_2 -3 + 166, 1, -20.1 );
setRotateKey( spep_2 -3 + 168, 1, -20.1 );
setRotateKey( spep_2 -3 + 170, 1, -20 );
setRotateKey( spep_2 -3 + 185, 1, -20 );
setRotateKey( spep_2 -3 + 186, 1, -20 );
setRotateKey( spep_2 -3 + 237, 1, -20 );
setRotateKey( spep_2 -3 + 238, 1, -10 );
setRotateKey( spep_2 -3 + 316, 1, -10 );
setRotateKey( spep_2 -3 + 458, 1, -25 );
setRotateKey( spep_2 -3 + 460, 1, -25 );

setBlendColor( spep_2 -3 + 458, 1, 2, 0, 0, 0, 1.0 );
setBlendColor( spep_2 -3 + 460, 1, 2, 0, 0, 0, 1.0 );
setBlendColor( spep_2 -3 + 462, 1, 2, 0, 0, 0, 0.0 );

-- ** 音 ** --
--気弾溜め
SE8 = playSe( spep_2 + 24, 1191 );
stopSe( spep_2 + 56, SE8, 20 );

SE9 = playSe( spep_2 + 24, 1184 );
stopSe( spep_2 + 53, SE9, 24 );

--気弾発射
playSe( spep_2 + 55, 1027 );

SE10 = playSe( spep_2 + 57, 1213 );
setSeVolume( spep_2 + 57, 1213, 50 );
setSeVolume( spep_2 + 176, 1213, 50 );
setSeVolume( spep_2 + 180, 1213, 42 );
setSeVolume( spep_2 + 184, 1213, 38 );
setSeVolume( spep_2 + 188, 1213, 34 );
setSeVolume( spep_2 + 192, 1213, 28 );
setSeVolume( spep_2 + 196, 1213, 22 );
setSeVolume( spep_2 + 200, 1213, 16 );
setSeVolume( spep_2 + 204, 1213, 10 );
setSeVolume( spep_2 + 208, 1213, 6 );
setSeVolume( spep_2 + 210, 1213, 0 );
stopSe( spep_2 + 53, SE10, 0 );

SE11 = playSe( spep_2 + 91, 1146 );
setSeVolume( spep_2 + 91, 1146, 71 );
setSeVolume( spep_2 + 132, 1146, 71 );
setSeVolume( spep_2 + 138, 1146, 64 );
setSeVolume( spep_2 + 142, 1146, 56 );
setSeVolume( spep_2 + 150, 1146, 50 );
setSeVolume( spep_2 + 154, 1146, 46 );
setSeVolume( spep_2 + 162, 1146, 40 );
setSeVolume( spep_2 + 168, 1146, 36 );
setSeVolume( spep_2 + 172, 1146, 32 );
setSeVolume( spep_2 + 178, 1146, 26 );
setSeVolume( spep_2 + 184, 1146, 22 );
setSeVolume( spep_2 + 188, 1146, 20 );
setSeVolume( spep_2 + 192, 1146, 16 );
setSeVolume( spep_2 + 196, 1146, 10 );
setSeVolume( spep_2 + 200, 1146, 4 );
setSeVolume( spep_2 + 203, 1146, 0 );
stopSe( spep_2 + 203, SE11, 0 );

SE12 = playSe( spep_2 + 91, 1161 );
setSeVolume( spep_2 + 91, 1161, 79 );
setSeVolume( spep_2 + 185, 1161, 79 );
setSeVolume( spep_2 + 188, 1161, 72 );
setSeVolume( spep_2 + 190, 1161, 68 );
setSeVolume( spep_2 + 194, 1161, 64 );
setSeVolume( spep_2 + 198, 1161, 60 );
setSeVolume( spep_2 + 200, 1161, 56 );
setSeVolume( spep_2 + 204, 1161, 50 );
setSeVolume( spep_2 + 208, 1161, 42 );
setSeVolume( spep_2 + 212, 1161, 36 );
setSeVolume( spep_2 + 216, 1161, 28 );
setSeVolume( spep_2 + 220, 1161, 22 );
setSeVolume( spep_2 + 224, 1161, 14 );
setSeVolume( spep_2 + 226, 1161, 8 );
setSeVolume( spep_2 + 228, 1146, 0 );
stopSe( spep_2 + 228, SE12, 0 );

--敵切り裂く
SE13 = playSe( spep_2 + 181, 1121 );
setSeVolume( spep_2 + 181, 1121, 0 );
setSeVolume( spep_2 + 231, 1121, 10 );
setSeVolume( spep_2 + 234, 1121, 35 );
setSeVolume( spep_2 + 236, 1121, 58 );
setSeVolume( spep_2 + 238, 1121, 79 );
setSeVolume( spep_2 + 312, 1121, 79 );
setSeVolume( spep_2 + 318, 1121, 72 );
setSeVolume( spep_2 + 322, 1121, 64 );
setSeVolume( spep_2 + 326, 1121, 58 );
setSeVolume( spep_2 + 330, 1121, 50 );
setSeVolume( spep_2 + 334, 1121, 42 );
setSeVolume( spep_2 + 338, 1121, 36 );
setSeVolume( spep_2 + 342, 1121, 25 );
setSeVolume( spep_2 + 346, 1121, 14 );
setSeVolume( spep_2 + 350, 1121, 8 );
setSeVolume( spep_2 + 352, 1121, 4 );
setSeVolume( spep_2 + 354, 1121, 0 );
stopSe( spep_2 + 354, SE13, 0 );

SE15 = playSe( spep_2 + 189, 1242 );
setSeVolume( spep_2 + 189, 1242, 0 );
setSeVolume( spep_2 + 233, 1242, 10 );
setSeVolume( spep_2 + 240, 1242, 178 );
setSeVolume( spep_2 + 309, 1242, 178 );
setSeVolume( spep_2 + 312, 1242, 122 );
setSeVolume( spep_2 + 318, 1242, 104 );
setSeVolume( spep_2 + 324, 1242, 82 );
setSeVolume( spep_2 + 328, 1242, 54 );
setSeVolume( spep_2 + 332, 1242, 28 );
setSeVolume( spep_2 + 336, 1242, 14 );
setSeVolume( spep_2 + 340, 1242, 8 );
setSeVolume( spep_2 + 343, 1242, 0 );
stopSe( spep_2 + 343, SE15, 0 );

playSe( spep_2 + 234, 1142 );
setSeVolume( spep_2 + 234, 1142, 56 );

playSe( spep_2 + 234, 1162 );
setSeVolume( spep_2 + 234, 1162, 79 );

--気弾ヒット
SE14 = playSe( spep_2 + 183, 1223 );
setSeVolume( spep_2 + 183, 1223, 45 );
setSeVolume( spep_2 + 228, 1223, 45 );
setSeVolume( spep_2 + 230, 1223, 45 );
setSeVolume( spep_2 + 234, 1223, 45 );
setSeVolume( spep_2 + 238, 1223, 45 );
setSeVolume( spep_2 + 242, 1223, 45 );
setSeVolume( spep_2 + 248, 1223, 45 );
setSeVolume( spep_2 + 252, 1223, 45 );
setSeVolume( spep_2 + 256, 1223, 45 );
setSeVolume( spep_2 + 260, 1223, 45 );
setSeVolume( spep_2 + 264, 1223, 45 );
setSeVolume( spep_2 + 270, 1223, 45 );
setSeVolume( spep_2 + 276, 1223, 0 );
stopSe( spep_2 + 276, SE14, 0 );

playSe( spep_2 + 189, 1011 );
playSe( spep_2 + 194, 1025 );
playSe( spep_2 + 194, 1023 );

--両手気弾溜め
playSe( spep_2 + 338, 1131 );
playSe( spep_2 + 361, 1022 );
setSeVolume( spep_2 + 361, 1022, 89 );
playSe( spep_2 + 361, 1145 );

SE16 = playSe( spep_2 + 361, 1212 );
setSeVolume( spep_2 + 361, 1212, 40 );
setSeVolume( spep_2 + 456, 1212, 40 );
setSeVolume( spep_2 + 460, 1212, 36 );
setSeVolume( spep_2 + 464, 1212, 32 );
setSeVolume( spep_2 + 472, 1212, 28 );
setSeVolume( spep_2 + 478, 1212, 24 );
setSeVolume( spep_2 + 482, 1212, 20 );
setSeVolume( spep_2 + 486, 1212, 16 );
setSeVolume( spep_2 + 490, 1212, 12 );
setSeVolume( spep_2 + 494, 1212, 8 );
setSeVolume( spep_2 + 499, 1212, 0 );

--爆発
playSe( spep_2 + 457, 1024 );
setSeVolume( spep_2 + 457, 1024, 89 );
playSe( spep_2 + 457, 1159 );
setSeVolume( spep_2 + 457, 1159, 89 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 128, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 458 );
endPhase( spep_2 + 574 );
end