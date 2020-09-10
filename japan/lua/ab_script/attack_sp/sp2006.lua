--ケフラ_ギガンティッククラッシュ

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
SP_01 = 155516;  --立ち〜背中パンチ
SP_02 = 155517;  --立ち〜背中パンチ
SP_03 = 155518;  --正面突進〜敵を画面奥へ飛ばす
SP_04 = 155519;  --正面突進〜敵を画面奥へ飛ばす
SP_05 = 155520;  --敵が画面衝突
SP_06 = 155521;  --敵が画面衝突

--敵側

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
-- 立ち〜背中パンチ(398F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --立ち〜背中パンチ(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 398, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 398, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 398, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 398, first_f, 255 );

first_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --立ち〜背中パンチ(ef_002)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 398, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 398, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 398, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 398, first_b, 255 );

spep_x = spep_0 + 0;
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

ctgogo1 = entryEffectLife( spep_0 -3 + 94,  190006, 48, 0x100, -1, 0, 0, 308.7 +30 );  --ゴゴゴ
setEffShake( spep_0 -3 + 98, ctgogo1, 44, 10 );

setEffMoveKey( spep_0 -3 + 94, ctgogo1, 0, 308.7 + 30 , 0 );
setEffMoveKey( spep_0 -3 + 96, ctgogo1, 0, 337.3 + 30 , 0 );
setEffMoveKey( spep_0 -3 + 98, ctgogo1, 0, 355.1 + 30 , 0 );
setEffMoveKey( spep_0 -3 + 142, ctgogo1, 0, 355.1 + 30 , 0 );

setEffScaleKey( spep_0 -3 + 94, ctgogo1, 0.62 +0.5, 0.62 +0.5 );
setEffScaleKey( spep_0 -3 + 96, ctgogo1, 0.68 +0.5, 0.68 +0.5 );
setEffScaleKey( spep_0 -3 + 98, ctgogo1, 0.74 +0.5, 0.74 +0.5 );
setEffScaleKey( spep_0 -3 + 142, ctgogo1, 0.74 +0.5, 0.74 +0.5 );

setEffRotateKey( spep_0 -3 + 94, ctgogo1, 0 );
setEffRotateKey( spep_0 -3 + 142, ctgogo1, 0 );

setEffAlphaKey( spep_0 -3 + 94, ctgogo1, 255 );
setEffAlphaKey( spep_0 -3 + 142, ctgogo1, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 118, 1, 1 );
changeAnime( spep_0 -3 + 118, 1, 118 );
changeAnime( spep_0 -3 + 186, 1, 117 );

setMoveKey( spep_0 -3 + 118, 1, 1439.2, -80.6 , 0 );
setMoveKey( spep_0 -3 + 120, 1, 1439.4, -82.1 , 0 );
setMoveKey( spep_0 -3 + 122, 1, 1434.6, -77 , 0 );
setMoveKey( spep_0 -3 + 124, 1, 1438.5, -82 , 0 );
setMoveKey( spep_0 -3 + 126, 1, 1426.9, -78.8 , 0 );
setMoveKey( spep_0 -3 + 128, 1, 1427.6, -89.5 , 0 );
setMoveKey( spep_0 -3 + 130, 1, 1417.7, -86.4 , 0 );
setMoveKey( spep_0 -3 + 132, 1, 1390.7, -80.7 , 0 );
setMoveKey( spep_0 -3 + 134, 1, 1383.2, -77 , 0 );
setMoveKey( spep_0 -3 + 136, 1, 1354.1, -81.7 , 0 );
setMoveKey( spep_0 -3 + 138, 1, 1321.6, -78.4 , 0 );
setMoveKey( spep_0 -3 + 140, 1, 1284.2, -93.2 , 0 );
setMoveKey( spep_0 -3 + 142, 1, 1239.6, -94.6 , 0 );
setMoveKey( spep_0 -3 + 144, 1, 1176.9, -92.3 , 0 );
setMoveKey( spep_0 -3 + 146, 1, 1107.9, -102.5 , 0 );
setMoveKey( spep_0 -3 + 148, 1, 1032.7, -111.8 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 947.5, -110.2 , 0 );
setMoveKey( spep_0 -3 + 152, 1, 850.1, -119.4 , 0 );
setMoveKey( spep_0 -3 + 154, 1, 743, -125.7 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 610.5, -134.7 , 0 );
setMoveKey( spep_0 -3 + 158, 1, 474.5, -144.6 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 480, -136.6 , 0 );
setMoveKey( spep_0 -3 + 162, 1, 477.6, -136.6 , 0 );
setMoveKey( spep_0 -3 + 164, 1, 481.9, -140.9 , 0 );
setMoveKey( spep_0 -3 + 166, 1, 477.5, -136.3 , 0 );
setMoveKey( spep_0 -3 + 168, 1, 476.7, -136.4 , 0 );
setMoveKey( spep_0 -3 + 170, 1, 486.9, -136.3 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 479.9, -140 , 0 );
setMoveKey( spep_0 -3 + 174, 1, 475.4, -139.1 , 0 );
setMoveKey( spep_0 -3 + 176, 1, 483.3, -139.6 , 0 );
setMoveKey( spep_0 -3 + 178, 1, 478.8, -137.4 , 0 );
setMoveKey( spep_0 -3 + 180, 1, 475, -135 , 0 );
setMoveKey( spep_0 -3 + 182, 1, 474.6, -131.3 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 480.2, -139.7 , 0 );
setMoveKey( spep_0 -3 + 185, 1, 480.2, -139.7 , 0 );
setMoveKey( spep_0 -3 + 186, 1, 302.1, -142.4 , 0 );
setMoveKey( spep_0 -3 + 188, 1, 297.3, -140.8 , 0 );

setScaleKey( spep_0 -3 + 118, 1, 7.27, 7.27 );
setScaleKey( spep_0 -3 + 120, 1, 7.27, 7.27 );
setScaleKey( spep_0 -3 + 122, 1, 7.26, 7.26 );
setScaleKey( spep_0 -3 + 124, 1, 7.26, 7.26 );
setScaleKey( spep_0 -3 + 126, 1, 7.24, 7.24 );
setScaleKey( spep_0 -3 + 128, 1, 7.22, 7.22 );
setScaleKey( spep_0 -3 + 130, 1, 7.19, 7.19 );
setScaleKey( spep_0 -3 + 132, 1, 7.14, 7.14 );
setScaleKey( spep_0 -3 + 134, 1, 7.08, 7.08 );
setScaleKey( spep_0 -3 + 136, 1, 7, 7 );
setScaleKey( spep_0 -3 + 138, 1, 6.89, 6.89 );
setScaleKey( spep_0 -3 + 140, 1, 6.77, 6.77 );
setScaleKey( spep_0 -3 + 142, 1, 6.62, 6.62 );
setScaleKey( spep_0 -3 + 144, 1, 6.45, 6.45 );
setScaleKey( spep_0 -3 + 146, 1, 6.25, 6.25 );
setScaleKey( spep_0 -3 + 148, 1, 6.01, 6.01 );
setScaleKey( spep_0 -3 + 150, 1, 5.75, 5.75 );
setScaleKey( spep_0 -3 + 152, 1, 5.44, 5.44 );
setScaleKey( spep_0 -3 + 154, 1, 5.1, 5.1 );
setScaleKey( spep_0 -3 + 156, 1, 4.72, 4.72 );
setScaleKey( spep_0 -3 + 158, 1, 4.3, 4.3 );
setScaleKey( spep_0 -3 + 185, 1, 4.3, 4.3 );
setScaleKey( spep_0 -3 + 186, 1, 0.24, 0.24 );

setRotateKey( spep_0 -3 + 118, 1, 0 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 400, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

--気溜め
playSe( spep_0 + 100, 1035 );
setSeVolume( spep_0 + 100, 1035, 126 );
playSe( spep_0 + 100, 1011 );
playSe( spep_0 + 100, 1254 );
setSeVolume( spep_0 + 100, 1254, 32 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 186; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

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

-- ** 書き文字エントリー ** --
ctgyun = entryEffectLife( spep_0 -3 + 190,  10007, 12, 0x100, -1, 0, -10.2, 326.9 );  --ギュン
setEffMoveKey( spep_0 -3 + 190, ctgyun, -10.2, 326.9 , 0 );
setEffMoveKey( spep_0 -3 + 198, ctgyun, -10.2, 326.9 , 0 );
setEffMoveKey( spep_0 -3 + 200, ctgyun, -12.2, 328.9 , 0 );
setEffMoveKey( spep_0 -3 + 202, ctgyun, -14.2, 330.9 , 0 );

setEffScaleKey( spep_0 -3 + 190, ctgyun, 2.44, 2.44 );
setEffScaleKey( spep_0 -3 + 192, ctgyun, 3.1, 3.1 );
setEffScaleKey( spep_0 -3 + 198, ctgyun, 3.1, 3.1 );
setEffScaleKey( spep_0 -3 + 200, ctgyun, 3.23, 3.23 );
setEffScaleKey( spep_0 -3 + 202, ctgyun, 3.35, 3.35 );

setEffRotateKey( spep_0 -3 + 190, ctgyun, 16.9 );
setEffRotateKey( spep_0 -3 + 202, ctgyun, 16.9 );

setEffAlphaKey( spep_0 -3 + 190, ctgyun, 255 );
setEffAlphaKey( spep_0 -3 + 198, ctgyun, 255 );
setEffAlphaKey( spep_0 -3 + 200, ctgyun, 191 );
setEffAlphaKey( spep_0 -3 + 202, ctgyun, 128 );

ctex = entryEffectLife( spep_0 -3 + 266,  10000, 14, 0x100, -1, 0, -146.2, 225.8 );  --!!
setEffMoveKey( spep_0 -3 + 266, ctex, -146.2, 225.8 , 0 );
setEffMoveKey( spep_0 -3 + 268, ctex, -131.9, 273.8 , 0 );
setEffMoveKey( spep_0 -3 + 280, ctex, -131.9, 273.8 , 0 );

setEffScaleKey( spep_0 -3 + 266, ctex, 2.51 +0.3, 2.51 +0.3 );
setEffScaleKey( spep_0 -3 + 280, ctex, 3.66 +0.3, 3.66 +0.3 );

setEffRotateKey( spep_0 -3 + 266, ctex, 17.5 );
setEffRotateKey( spep_0 -3 + 280, ctex, 15 );

setEffAlphaKey( spep_0 -3 + 266, ctex, 255 );
setEffAlphaKey( spep_0 -3 + 280, ctex, 255 );

ctsyun1 = entryEffectLife( spep_0 -3 + 286,  10011, 8, 0x100, -1, 0, 95.9, 146 );  --シュン
setEffMoveKey( spep_0 -3 + 286, ctsyun1, 95.9, 146 , 0 );
setEffMoveKey( spep_0 -3 + 288, ctsyun1, 115.9, 160.1 , 0 );
setEffMoveKey( spep_0 -3 + 294, ctsyun1, 115.9, 160.1 , 0 );

setEffScaleKey( spep_0 -3 + 286, ctsyun1, 1.39, 1.39 );
setEffScaleKey( spep_0 -3 + 288, ctsyun1, 1.88, 1.88 );
setEffScaleKey( spep_0 -3 + 294, ctsyun1, 1.88, 1.88 );

setEffRotateKey( spep_0 -3 + 286, ctsyun1, 0 );
setEffRotateKey( spep_0 -3 + 294, ctsyun1, 0 );

setEffAlphaKey( spep_0 -3 + 286, ctsyun1, 255 );
setEffAlphaKey( spep_0 -3 + 292, ctsyun1, 255 );
setEffAlphaKey( spep_0 -3 + 294, ctsyun1, 128 );

ctsyun2 = entryEffectLife( spep_0 -3 + 306,  10011, 8, 0x100, -1, 0, -184.1, 336 );  --シュン
setEffMoveKey( spep_0 -3 + 306, ctsyun2, -184.1, 336 , 0 );
setEffMoveKey( spep_0 -3 + 308, ctsyun2, -164.1, 350.1 , 0 );
setEffMoveKey( spep_0 -3 + 314, ctsyun2, -164.1, 350.1 , 0 );

setEffScaleKey( spep_0 -3 + 306, ctsyun2, 1.39, 1.39 );
setEffScaleKey( spep_0 -3 + 308, ctsyun2, 1.88, 1.88 );
setEffScaleKey( spep_0 -3 + 314, ctsyun2, 1.88, 1.88 );

setEffRotateKey( spep_0 -3 + 306, ctsyun2, 0 );
setEffRotateKey( spep_0 -3 + 314, ctsyun2, 0 );

setEffAlphaKey( spep_0 -3 + 306, ctsyun2, 255 );
setEffAlphaKey( spep_0 -3 + 312, ctsyun2, 255 );
setEffAlphaKey( spep_0 -3 + 314, ctsyun2, 128 );

ctdon = entryEffectLife( spep_0 -3 + 340,  10019, 14, 0x100, -1, 0, -0.2, 318.9 );  --ドン
setEffMoveKey( spep_0 -3 + 340, ctdon, -0.2, 318.9 , 0 );
setEffMoveKey( spep_0 -3 + 342, ctdon, -1.1, 354.8 , 0 );
setEffMoveKey( spep_0 -3 + 350, ctdon, -1.1, 354.8 , 0 );
setEffMoveKey( spep_0 -3 + 352, ctdon, -1.1, 361.3 , 0 );
setEffMoveKey( spep_0 -3 + 354, ctdon, -1.1, 367.8 , 0 );

setEffScaleKey( spep_0 -3 + 340, ctdon, 1.97, 1.97 );
setEffScaleKey( spep_0 -3 + 342, ctdon, 2.75, 2.75 );
setEffScaleKey( spep_0 -3 + 350, ctdon, 2.75, 2.75 );
setEffScaleKey( spep_0 -3 + 352, ctdon, 2.95, 2.95 );
setEffScaleKey( spep_0 -3 + 354, ctdon, 3.15, 3.15 );

setEffRotateKey( spep_0 -3 + 340, ctdon, 0 );
setEffRotateKey( spep_0 -3 + 354, ctdon, 0 );

setEffAlphaKey( spep_0 -3 + 340, ctdon, 255 );
setEffAlphaKey( spep_0 -3 + 350, ctdon, 255 );
setEffAlphaKey( spep_0 -3 + 352, ctdon, 128 );
setEffAlphaKey( spep_0 -3 + 354, ctdon, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 350, 1, 0 );
setDisp( spep_0 -3 + 362, 1, 1 );
setDisp( spep_0 -3 + 372, 1, 0 );
changeAnime( spep_0 -3 + 232, 1, 101 );
changeAnime( spep_0 -3 + 302, 1, 0 );
changeAnime( spep_0 -3 + 336, 1, 18 );
changeAnime( spep_0 -3 + 348, 1, 2 );
changeAnime( spep_0 -3 + 362, 1, 6 );

setMoveKey( spep_0 -3 + 190, 1, 292.4, -139.2 , 0 );
setMoveKey( spep_0 -3 + 192, 1, 308.3, -140.5 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 305.8, -154.7 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 298.8, -137 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 314, -142.2 , 0 );
setMoveKey( spep_0 -3 + 200, 1, 302.7, -135.2 , 0 );
setMoveKey( spep_0 -3 + 202, 1, 298.3, -138 , 0 );
setMoveKey( spep_0 -3 + 204, 1, 308, -140.1 , 0 );
setMoveKey( spep_0 -3 + 206, 1, 295.9, -147.5 , 0 );
setMoveKey( spep_0 -3 + 208, 1, 305.2, -139.8 , 0 );
setMoveKey( spep_0 -3 + 210, 1, 301.3, -149.9 , 0 );
setMoveKey( spep_0 -3 + 212, 1, 307.1, -143.9 , 0 );
setMoveKey( spep_0 -3 + 214, 1, 312.6, -130.5 , 0 );
setMoveKey( spep_0 -3 + 216, 1, 315.8, -148.7 , 0 );
setMoveKey( spep_0 -3 + 218, 1, 302.3, -147 , 0 );
setMoveKey( spep_0 -3 + 220, 1, 314.5, -134.2 , 0 );
setMoveKey( spep_0 -3 + 222, 1, 295, -134.5 , 0 );
setMoveKey( spep_0 -3 + 224, 1, 316.3, -135.1 , 0 );
setMoveKey( spep_0 -3 + 226, 1, 311.9, -139.3 , 0 );
setMoveKey( spep_0 -3 + 228, 1, 303.7, -135.5 , 0 );
setMoveKey( spep_0 -3 + 230, 1, 316.1, -134.3 , 0 );
setMoveKey( spep_0 -3 + 231, 1, 316.1, -134.3 , 0 );
setMoveKey( spep_0 -3 + 232, 1, -378.2, -17.6 , 0 );
setMoveKey( spep_0 -3 + 234, 1, -266.7, -32 , 0 );
setMoveKey( spep_0 -3 + 236, 1, -205.5, -40 , 0 );
setMoveKey( spep_0 -3 + 238, 1, -176.4, -43.8 , 0 );
setMoveKey( spep_0 -3 + 240, 1, -165.5, -45.3 , 0 );
setMoveKey( spep_0 -3 + 242, 1, -163.1, -45.8 , 0 );
setMoveKey( spep_0 -3 + 244, 1, -162.9, -46 , 0 );
setMoveKey( spep_0 -3 + 246, 1, -162.8, -46.2 , 0 );
setMoveKey( spep_0 -3 + 248, 1, -162.8, -46.3 , 0 );
setMoveKey( spep_0 -3 + 250, 1, -162.8, -46.5 , 0 );
setMoveKey( spep_0 -3 + 252, 1, -162.8, -46.6 , 0 );
setMoveKey( spep_0 -3 + 254, 1, -162.8, -46.8 , 0 );
setMoveKey( spep_0 -3 + 256, 1, -162.8, -46.9 , 0 );
setMoveKey( spep_0 -3 + 258, 1, -162.8, -47.1 , 0 );
setMoveKey( spep_0 -3 + 260, 1, -161.5, -41.7 , 0 );
setMoveKey( spep_0 -3 + 262, 1, -163.3, -52.8 , 0 );
setMoveKey( spep_0 -3 + 264, 1, -170.4, -41.5 , 0 );
setMoveKey( spep_0 -3 + 266, 1, -170.9, -45.7 , 0 );
setMoveKey( spep_0 -3 + 268, 1, -160.7, -57.6 , 0 );
setMoveKey( spep_0 -3 + 270, 1, -157, -60.8 , 0 );
setMoveKey( spep_0 -3 + 272, 1, -161.5, -47.2 , 0 );
setMoveKey( spep_0 -3 + 274, 1, -151.2, -36.3 , 0 );
setMoveKey( spep_0 -3 + 296, 1, -151.2, -36.3 , 0 );
setMoveKey( spep_0 -3 + 298, 1, -5.6, -77.9 , 0 );
setMoveKey( spep_0 -3 + 300, 1, 48.1, -93.3 , 0 );
setMoveKey( spep_0 -3 + 301, 1, 48.1, -93.3 , 0 );
setMoveKey( spep_0 -3 + 302, 1, 55.8, -95.5 , 0 );
setMoveKey( spep_0 -3 + 335, 1, 55.8, -95.5 , 0 );
setMoveKey( spep_0 -3 + 336, 1, 133.1, -27.4 , 0 );
setMoveKey( spep_0 -3 + 338, 1, 143, -27.4 , 0 );
setMoveKey( spep_0 -3 + 340, 1, 169.4, -27.4 , 0 );
setMoveKey( spep_0 -3 + 342, 1, 142.6, -7.3 , 0 );
setMoveKey( spep_0 -3 + 344, 1, 142.9, -29.4 , 0 );
setMoveKey( spep_0 -3 + 346, 1, 163.2, -9.3 , 0 );
setMoveKey( spep_0 -3 + 347, 1, 163.2, -9.3 , 0 );
setMoveKey( spep_0 -3 + 348, 1, 497.3, -60.5 , 0 );
setMoveKey( spep_0 -3 + 350, 1, 497.3, -60.5 , 0 );
setMoveKey( spep_0 -3 + 362, 1, 165.9, -22.5 , 0 );
setMoveKey( spep_0 -3 + 364, 1, 309.3, 22.2 , 0 );
setMoveKey( spep_0 -3 + 366, 1, 454.4, 63.2 , 0 );
setMoveKey( spep_0 -3 + 368, 1, 591.1, 106.1 , 0 );
setMoveKey( spep_0 -3 + 370, 1, 732.3, 149.3 , 0 );
setMoveKey( spep_0 -3 + 372, 1, 932.3, 167.3 , 0 );

setScaleKey( spep_0 -3 + 231, 1, 0.24, 0.24 );
setScaleKey( spep_0 -3 + 232, 1, 2.21, 2.21 );
setScaleKey( spep_0 -3 + 234, 1, 1.9, 1.9 );
setScaleKey( spep_0 -3 + 236, 1, 1.73, 1.73 );
setScaleKey( spep_0 -3 + 238, 1, 1.66, 1.66 );
setScaleKey( spep_0 -3 + 240, 1, 1.63, 1.63 );
setScaleKey( spep_0 -3 + 242, 1, 1.62, 1.62 );
setScaleKey( spep_0 -3 + 296, 1, 1.62, 1.62 );
setScaleKey( spep_0 -3 + 298, 1, 2.08, 2.08 );
setScaleKey( spep_0 -3 + 300, 1, 2.25, 2.25 );
setScaleKey( spep_0 -3 + 301, 1, 2.25, 2.25 );
setScaleKey( spep_0 -3 + 302, 1, 2.28, 2.28 );
setScaleKey( spep_0 -3 + 335, 1, 2.28, 2.28 );
setScaleKey( spep_0 -3 + 336, 1, 8.77, 9.53 );
setScaleKey( spep_0 -3 + 338, 1, 8.77, 9.53 );
setScaleKey( spep_0 -3 + 340, 1, 9.53, 9.53 );
setScaleKey( spep_0 -3 + 347, 1, 9.53, 9.53 );
setScaleKey( spep_0 -3 + 348, 1, 8.55, 10.26 );
setScaleKey( spep_0 -3 + 350, 1, 8.55, 10.26 );
setScaleKey( spep_0 -3 + 362, 1, 1.45, 1.45 );
setScaleKey( spep_0 -3 + 364, 1, 1.41, 1.41 );
setScaleKey( spep_0 -3 + 366, 1, 1.37, 1.37 );
setScaleKey( spep_0 -3 + 368, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 370, 1, 1.31, 1.31 );
setScaleKey( spep_0 -3 + 372, 1, 1.31, 1.31 );

setRotateKey( spep_0 -3 + 350, 1, 0 );
setRotateKey( spep_0 -3 + 362, 1, 81.1 );
setRotateKey( spep_0 -3 + 364, 1, 88.6 );
setRotateKey( spep_0 -3 + 366, 1, 96.1 );
setRotateKey( spep_0 -3 + 368, 1, 103.6 );
setRotateKey( spep_0 -3 + 370, 1, 111.1 );
setRotateKey( spep_0 -3 + 372, 1, 111.1 );

-- ** 音 ** --
--敵が向かっていく
SE0 = playSe( spep_0 + 188, 1118 );
stopSe( spep_0 + 216, SE0, 38 );
playSe( spep_0 + 188, 1182 );

--止まる
playSe( spep_0 + 225, 1190 );
setSeVolume( spep_0 + 225, 1190, 0 );
setSeVolume( spep_0 + 244, 1190, 11 );
setSeVolume( spep_0 + 246, 1190, 42 );
setSeVolume( spep_0 + 248, 1190, 78 );
setSeVolume( spep_0 + 250, 1190, 100 );
playSe( spep_0 + 244, 1192 );
setSeVolume( spep_0 + 244, 1192, 251 );
SE1 = playSe( spep_0 + 244, 1117 );
stopSe( spep_0 + 244, SE1, 26 );

--瞬間移動
playSe( spep_0 + 288, 1109 );

--パンチ
playSe( spep_0 + 336, 1003 );
playSe( spep_0 + 342, 1110 );
SE2 = playSe( spep_0 + 342, 1182 );
setSeVolume( spep_0 + 342, 1182, 141 );
setSeVolume( spep_0 + 350, 1182, 141 );
setSeVolume( spep_0 + 354, 1182, 98 );
setSeVolume( spep_0 + 358, 1182, 34 );
setSeVolume( spep_0 + 362, 1182, 0 );
stopSe( spep_0 + 362, SE2, 0 );
playSe( spep_0 + 344, 1187 );
setSeVolume( spep_0 + 344, 1187, 73 );
playSe( spep_0 + 344, 1010 );
playSe( spep_0 + 344, 1072 );
setSeVolume( spep_0 + 344, 1072, 71 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 398;

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

--ダッシュ
playSe( spep_1 + 88, 1182 );
playSe( spep_1 + 88, 9 );
SE3 = playSe( spep_1 + 88, 1167 );
setSeVolume( spep_1 + 88, 1167, 28 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;

------------------------------------------------------
-- 正面突進〜敵を画面奥へ飛ばす(216F)
------------------------------------------------------

-- ** エフェクト等 ** --
attack_f = entryEffectLife( spep_2 + 0, SP_03, 216, 0x100, -1, 0, 0, 0 );  --正面突進〜敵を画面奥へ飛ばす(ef_003)
setEffMoveKey( spep_2 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 216, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 216, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack_f, 0 );
setEffRotateKey( spep_2 + 216, attack_f, 0 );
setEffAlphaKey( spep_2 + 0, attack_f, 255 );
setEffAlphaKey( spep_2 + 215, attack_f, 255 );
setEffAlphaKey( spep_2 + 216, attack_f, 0 );

attack_b = entryEffectLife( spep_2 + 0, SP_04, 216, 0x80, -1, 0, 0, 0 );  --正面突進〜敵を画面奥へ飛ばす(ef_004)
setEffMoveKey( spep_2 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 216, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 216, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack_b, 0 );
setEffRotateKey( spep_2 + 216, attack_b, 0 );
setEffAlphaKey( spep_2 + 0, attack_b, 255 );
setEffAlphaKey( spep_2 + 215, attack_b, 255 );
setEffAlphaKey( spep_2 + 216, attack_b, 0 );

-- ** 書き文字エントリー ** --
ctdogon = entryEffectLife( spep_2 -3 + 42,  10018, 22, 0x100, -1, 0, -1.2, 291.9 );  --ドゴン
setEffMoveKey( spep_2 -3 + 42, ctdogon, -1.2, 291.9 , 0 );
setEffMoveKey( spep_2 -3 + 44, ctdogon, -3.7, 343.4 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctdogon, -6.3, 394.9 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctdogon, -6.1, 397.8 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctdogon, -6, 400.6 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctdogon, -5.8, 403.5 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctdogon, -5.6, 406.3 , 0 );
setEffMoveKey( spep_2 -3 + 56, ctdogon, -5.5, 409.2 , 0 );
setEffMoveKey( spep_2 -3 + 58, ctdogon, -5.3, 412 , 0 );
setEffMoveKey( spep_2 -3 + 60, ctdogon, -3.7, 425 , 0 );
setEffMoveKey( spep_2 -3 + 62, ctdogon, -2, 438 , 0 );
setEffMoveKey( spep_2 -3 + 64, ctdogon, -0.3, 450.9 , 0 );

setEffScaleKey( spep_2 -3 + 42, ctdogon, 2.33, 2.33 );
setEffScaleKey( spep_2 -3 + 44, ctdogon, 3.1, 3.1 );
setEffScaleKey( spep_2 -3 + 46, ctdogon, 3.87, 3.87 );
setEffScaleKey( spep_2 -3 + 48, ctdogon, 3.92, 3.92 );
setEffScaleKey( spep_2 -3 + 50, ctdogon, 3.96, 3.96 );
setEffScaleKey( spep_2 -3 + 52, ctdogon, 4.01, 4.01 );
setEffScaleKey( spep_2 -3 + 54, ctdogon, 4.05, 4.05 );
setEffScaleKey( spep_2 -3 + 56, ctdogon, 4.1, 4.1 );
setEffScaleKey( spep_2 -3 + 58, ctdogon, 4.14, 4.14 );
setEffScaleKey( spep_2 -3 + 60, ctdogon, 4.17, 4.17 );
setEffScaleKey( spep_2 -3 + 62, ctdogon, 4.2, 4.2 );
setEffScaleKey( spep_2 -3 + 64, ctdogon, 4.22, 4.22 );

setEffRotateKey( spep_2 -3 + 42, ctdogon, -5.2 );
setEffRotateKey( spep_2 -3 + 64, ctdogon, -5.2 );

setEffAlphaKey( spep_2 -3 + 42, ctdogon, 255 );
setEffAlphaKey( spep_2 -3 + 58, ctdogon, 255 );
setEffAlphaKey( spep_2 -3 + 60, ctdogon, 213 );
setEffAlphaKey( spep_2 -3 + 62, ctdogon, 170 );
setEffAlphaKey( spep_2 -3 + 64, ctdogon, 128 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 46, 1, 1 );
setDisp( spep_2 -3 + 130, 1, 0 );
setDisp( spep_2 -3 + 156, 1, 1 );
changeAnime( spep_2 -3 + 46, 1, 107 );
changeAnime( spep_2 -3 + 88, 1, 106 );
changeAnime( spep_2 -3 + 156, 1, 5 );

setMoveKey( spep_2 -3 + 46, 1, 97.9-90, 107.8-150 , 0 );
setMoveKey( spep_2 -3 + 59, 1, 97.9-90, 107.8-150 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 57.9-90, 107.8-150 , 0 );
setMoveKey( spep_2 -3 + 61, 1, 57.9-90, 107.8-150 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 158-90, 107.8-150 , 0 );
setMoveKey( spep_2 -3 + 63, 1, 158-90, 107.8-150 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 138-90, 107.8-150 , 0 );
setMoveKey( spep_2 -3 + 65, 1, 138-90, 107.8-150 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 118-90, 107.8-150 , 0 );
setMoveKey( spep_2 -3 + 67, 1, 118-90, 107.8-150 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 138-90, 107.8-150 , 0 );
setMoveKey( spep_2 -3 + 69, 1, 138-90, 107.8-150 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 178-90, 67.8-150 , 0 );
setMoveKey( spep_2 -3 + 71, 1, 178-90, 67.8-150 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 158-90, 107.8-150 , 0 );
setMoveKey( spep_2 -3 + 73, 1, 158-90, 107.8-150 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 138-90, 87.8-150 , 0 );
setMoveKey( spep_2 -3 + 75, 1, 138-90, 87.8-150 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 178-90, 107.8-150 , 0 );
setMoveKey( spep_2 -3 + 77, 1, 178-90, 107.8-150 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 218-90, 67.8-150 , 0 );
setMoveKey( spep_2 -3 + 79, 1, 218-90, 67.8-150 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 218-90, 107.8-150 , 0 );
setMoveKey( spep_2 -3 + 81, 1, 218-90, 107.8-150 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 229.5-90, 87.8-150 , 0 );
setMoveKey( spep_2 -3 + 83, 1, 229.5-90, 87.8-150 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 241-90, 67.8-150 , 0 );
setMoveKey( spep_2 -3 + 85, 1, 241-90, 67.8-150 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 149.5-90, 87.8-150 , 0 );
setMoveKey( spep_2 -3 + 87, 1, 149.5-90, 87.8-150 , 0 );


setMoveKey( spep_2 -3 + 88, 1, -65.9, 202 , 0 );
setMoveKey( spep_2 -3 + 90, 1, -59.2, 203.8 , 0 );
setMoveKey( spep_2 -3 + 92, 1, -52.8, 205.5 , 0 );
setMoveKey( spep_2 -3 + 94, 1, -46.8, 207.1 , 0 );
setMoveKey( spep_2 -3 + 96, 1, -41.1, 208.6 , 0 );
setMoveKey( spep_2 -3 + 98, 1, -35.8, 210 , 0 );
setMoveKey( spep_2 -3 + 100, 1, -30.8, 211.3 , 0 );
setMoveKey( spep_2 -3 + 102, 1, -26.1, 212.5 , 0 );
setMoveKey( spep_2 -3 + 104, 1, -21.8, 213.6 , 0 );
setMoveKey( spep_2 -3 + 106, 1, -17.8, 214.7 , 0 );
setMoveKey( spep_2 -3 + 108, 1, -14.2, 215.6 , 0 );
setMoveKey( spep_2 -3 + 110, 1, -10.9, 216.5 , 0 );
setMoveKey( spep_2 -3 + 112, 1, -8, 217.3 , 0 );
setMoveKey( spep_2 -3 + 114, 1, -5.4, 217.9 , 0 );
setMoveKey( spep_2 -3 + 116, 1, -3.2, 218.5 , 0 );
setMoveKey( spep_2 -3 + 118, 1, -1.3, 219 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 0.3, 219.4 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 1.5, 219.7 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 2.4, 220 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 2.9, 220.1 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 3.1, 220.1 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 3.1, 220.1 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 178.1, 2.1 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 241.5, -10 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 258.2, -13.2 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 265.3, -14.5 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 268.4, -15.1 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 270.3, -15.5 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 271.6, -15.7 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 272.6, -15.9 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 273.4, -16.1 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 274, -16.2 , 0 );
setMoveKey( spep_2 -3 + 176, 1, 274.6, -16.3 , 0 );
setMoveKey( spep_2 -3 + 178, 1, 275.1, -16.4 , 0 );
setMoveKey( spep_2 -3 + 180, 1, 275.5, -16.5 , 0 );
setMoveKey( spep_2 -3 + 182, 1, 275.9, -16.5 , 0 );
setMoveKey( spep_2 -3 + 184, 1, 276.3, -16.6 , 0 );
setMoveKey( spep_2 -3 + 186, 1, 276.7, -16.7 , 0 );
setMoveKey( spep_2 -3 + 188, 1, 277.1, -16.8 , 0 );
setMoveKey( spep_2 -3 + 190, 1, 277.5, -16.8 , 0 );
setMoveKey( spep_2 -3 + 192, 1, 277.9, -16.9 , 0 );
setMoveKey( spep_2 -3 + 194, 1, 278.4, -17 , 0 );
setMoveKey( spep_2 -3 + 196, 1, 278.8, -17.1 , 0 );
setMoveKey( spep_2 -3 + 198, 1, 279.2, -17.2 , 0 );
setMoveKey( spep_2 -3 + 200, 1, 279.6, -17.2 , 0 );
setMoveKey( spep_2 -3 + 202, 1, 279.9, -17.3 , 0 );
setMoveKey( spep_2 -3 + 204, 1, 280.2, -17.4 , 0 );
setMoveKey( spep_2 -3 + 206, 1, 280.5, -17.4 , 0 );
setMoveKey( spep_2 -3 + 208, 1, 280.7, -17.5 , 0 );
setMoveKey( spep_2 -3 + 210, 1, 281, -17.5 , 0 );
setMoveKey( spep_2 -3 + 212, 1, 281.3, -17.6 , 0 );
setMoveKey( spep_2 -3 + 214, 1, 281.7, -17.6 , 0 );
setMoveKey( spep_2 -3 + 216, 1, 282, -17.7 , 0 );
setMoveKey( spep_2 -3 + 218, 1, 282.3, -17.7 , 0 );

setScaleKey( spep_2 -3 + 46, 1, 3, 3 );
setScaleKey( spep_2 -3 + 87, 1, 3, 3 );
setScaleKey( spep_2 -3 + 88, 1, 1.93, 1.93 );
setScaleKey( spep_2 -3 + 130, 1, 1.93, 1.93 );
setScaleKey( spep_2 -3 + 156, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 158, 1, 0.69, 0.69 );
setScaleKey( spep_2 -3 + 160, 1, 0.46, 0.46 );
setScaleKey( spep_2 -3 + 162, 1, 0.36, 0.36 );
setScaleKey( spep_2 -3 + 164, 1, 0.32, 0.32 );
setScaleKey( spep_2 -3 + 166, 1, 0.29, 0.29 );
setScaleKey( spep_2 -3 + 168, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 170, 1, 0.26, 0.26 );
setScaleKey( spep_2 -3 + 172, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 174, 1, 0.24, 0.24 );
setScaleKey( spep_2 -3 + 176, 1, 0.23, 0.23 );
setScaleKey( spep_2 -3 + 178, 1, 0.23, 0.23 );
setScaleKey( spep_2 -3 + 180, 1, 0.22, 0.22 );
setScaleKey( spep_2 -3 + 182, 1, 0.22, 0.22 );
setScaleKey( spep_2 -3 + 184, 1, 0.21, 0.21 );
setScaleKey( spep_2 -3 + 186, 1, 0.21, 0.21 );
setScaleKey( spep_2 -3 + 188, 1, 0.2, 0.2 );
setScaleKey( spep_2 -3 + 190, 1, 0.19, 0.19 );
setScaleKey( spep_2 -3 + 192, 1, 0.19, 0.19 );
setScaleKey( spep_2 -3 + 194, 1, 0.18, 0.18 );
setScaleKey( spep_2 -3 + 196, 1, 0.18, 0.18 );
setScaleKey( spep_2 -3 + 198, 1, 0.17, 0.17 );
setScaleKey( spep_2 -3 + 200, 1, 0.17, 0.17 );
setScaleKey( spep_2 -3 + 202, 1, 0.16, 0.16 );
setScaleKey( spep_2 -3 + 204, 1, 0.16, 0.16 );
setScaleKey( spep_2 -3 + 206, 1, 0.15, 0.15 );
setScaleKey( spep_2 -3 + 210, 1, 0.15, 0.15 );
setScaleKey( spep_2 -3 + 212, 1, 0.14, 0.14 );
setScaleKey( spep_2 -3 + 214, 1, 0.14, 0.14 );
setScaleKey( spep_2 -3 + 216, 1, 0.13, 0.13 );
setScaleKey( spep_2 -3 + 218, 1, 0.13, 0.13 );

setRotateKey( spep_2 -3 + 46, 1, -44 );
setRotateKey( spep_2 -3 + 59, 1, -44 );
setRotateKey( spep_2 -3 + 60, 1, -32 );
setRotateKey( spep_2 -3 + 87, 1, -32 );


setRotateKey( spep_2 -3 + 88, 1, 17 );
setRotateKey( spep_2 -3 + 90, 1, 18.6 );
setRotateKey( spep_2 -3 + 92, 1, 20.1 );
setRotateKey( spep_2 -3 + 94, 1, 21.6 );
setRotateKey( spep_2 -3 + 96, 1, 23 );
setRotateKey( spep_2 -3 + 98, 1, 24.3 );
setRotateKey( spep_2 -3 + 100, 1, 25.5 );
setRotateKey( spep_2 -3 + 102, 1, 26.6 );
setRotateKey( spep_2 -3 + 104, 1, 27.7 );
setRotateKey( spep_2 -3 + 106, 1, 28.6 );
setRotateKey( spep_2 -3 + 108, 1, 29.5 );
setRotateKey( spep_2 -3 + 110, 1, 30.3 );
setRotateKey( spep_2 -3 + 112, 1, 31 );
setRotateKey( spep_2 -3 + 114, 1, 31.6 );
setRotateKey( spep_2 -3 + 116, 1, 32.2 );
setRotateKey( spep_2 -3 + 118, 1, 32.6 );
setRotateKey( spep_2 -3 + 120, 1, 33 );
setRotateKey( spep_2 -3 + 122, 1, 33.3 );
setRotateKey( spep_2 -3 + 124, 1, 33.5 );
setRotateKey( spep_2 -3 + 126, 1, 33.6 );
setRotateKey( spep_2 -3 + 128, 1, 33.7 );
setRotateKey( spep_2 -3 + 130, 1, 33.7 );
setRotateKey( spep_2 -3 + 156, 1, 110.1 );
setRotateKey( spep_2 -3 + 158, 1, 118.3 );
setRotateKey( spep_2 -3 + 160, 1, 120.5 );
setRotateKey( spep_2 -3 + 162, 1, 121.4 );
setRotateKey( spep_2 -3 + 164, 1, 121.8 );
setRotateKey( spep_2 -3 + 166, 1, 122 );
setRotateKey( spep_2 -3 + 168, 1, 122.2 );
setRotateKey( spep_2 -3 + 170, 1, 122.3 );
setRotateKey( spep_2 -3 + 172, 1, 122.4 );
setRotateKey( spep_2 -3 + 174, 1, 122.5 );
setRotateKey( spep_2 -3 + 176, 1, 122.6 );
setRotateKey( spep_2 -3 + 178, 1, 122.7 );
setRotateKey( spep_2 -3 + 180, 1, 122.7 );
setRotateKey( spep_2 -3 + 182, 1, 122.8 );
setRotateKey( spep_2 -3 + 184, 1, 122.8 );
setRotateKey( spep_2 -3 + 186, 1, 122.9 );
setRotateKey( spep_2 -3 + 188, 1, 122.9 );
setRotateKey( spep_2 -3 + 190, 1, 123 );
setRotateKey( spep_2 -3 + 192, 1, 123 );
setRotateKey( spep_2 -3 + 194, 1, 123.1 );
setRotateKey( spep_2 -3 + 196, 1, 123.1 );
setRotateKey( spep_2 -3 + 198, 1, 123.2 );
setRotateKey( spep_2 -3 + 200, 1, 123.2 );
setRotateKey( spep_2 -3 + 202, 1, 123.3 );
setRotateKey( spep_2 -3 + 204, 1, 123.3 );
setRotateKey( spep_2 -3 + 206, 1, 123.4 );
setRotateKey( spep_2 -3 + 210, 1, 123.4 );
setRotateKey( spep_2 -3 + 212, 1, 123.5 );
setRotateKey( spep_2 -3 + 214, 1, 123.5 );
setRotateKey( spep_2 -3 + 216, 1, 123.6 );
setRotateKey( spep_2 -3 + 218, 1, 123.6 );

-- ** 音 ** --
--ダッシュ
setSeVolume( spep_2 + 21, 1167, 28 );
setSeVolume( spep_2 + 24, 1167, 21 );
setSeVolume( spep_2 + 28, 1167, 14 );
setSeVolume( spep_2 + 32, 1167, 6 );
setSeVolume( spep_2 + 37, 1167, 0 );
stopSe( spep_2 + 37, SE3, 0 );

--パンチ
playSe( spep_2 + 32, 1003 );
playSe( spep_2 + 38, 1009 );
playSe( spep_2 + 38, 1120 );
playSe( spep_2 + 46, 1190 );
setSeVolume( spep_2 + 46, 1190, 0 );
setSeVolume( spep_2 + 52, 1190, 3 );
setSeVolume( spep_2 + 54, 1190, 15 );
setSeVolume( spep_2 + 56, 1190, 23 );
setSeVolume( spep_2 + 58, 1190, 36 );
setSeVolume( spep_2 + 60, 1190, 42 );
setSeVolume( spep_2 + 62, 1190, 49 );
setSeVolume( spep_2 + 64, 1190, 54 );
setSeVolume( spep_2 + 66, 1190, 68 );
setSeVolume( spep_2 + 69, 1190, 79 );

--顔アップ
SE4 = playSe( spep_2 + 122, 1116 );
stopSe( spep_2 + 143, SE4, 28 );

--敵が吹っ飛ぶ
playSe( spep_2 + 158, 1027 );
SE5 = playSe( spep_2 + 158, 1258 );
setSeVolume( spep_2 + 158, 1258, 50 );
SE6 = playSe( spep_2 + 158, 1183 );
setSeVolume( spep_2 + 158, 1183, 126 );
playSe( spep_2 + 158, 1188 );
setSeVolume( spep_2 + 158, 1188, 63 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 218, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 216;

------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 100, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 100, finish_f, 255 );

finish_b = entryEffect( spep_3 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --敵が画面衝突(ef_006)(背景)
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 100, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 100, finish_b, 255 );

-- ** 敵キャラクター ** --
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
setScaleKey( spep_3 -3 + 4, 1, 0.51, 0.51 );
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


-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_3 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_3 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_3 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_3 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_3 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_3 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_3 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_3 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_3 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_3 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_3 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_3 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_3 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_3 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_3 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_3 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_3 + 100, shuchusen_bl, 255 );

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

-- ** 音 ** --
--敵が吹っ飛ぶ
stopSe( spep_3 + 16, SE5, 0 );
stopSe( spep_3 + 16, SE6, 0 );

--ガッ
playSe( spep_3 + 8, 1054 );
setSeVolume( spep_3 + 8, 1054, 126 );
playSe( spep_3 + 8, 1023 );
setSeVolume( spep_3 + 8, 1023, 76 );

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 100, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 10 );
endPhase( spep_3 + 98 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 立ち〜背中パンチ(398F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --立ち〜背中パンチ(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 398, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 398, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 398, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 398, first_f, 255 );

first_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --立ち〜背中パンチ(ef_002)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 398, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 398, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 398, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 398, first_b, 255 );

spep_x = spep_0 + 0;
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

ctgogo1 = entryEffectLife( spep_0 -3 + 94,  190006, 48, 0x100, -1, 0, 0, 308.7 +30 );  --ゴゴゴ
setEffShake( spep_0 -3 + 98, ctgogo1, 44, 10 );

setEffMoveKey( spep_0 -3 + 94, ctgogo1, 0, 308.7 + 30 , 0 );
setEffMoveKey( spep_0 -3 + 96, ctgogo1, 0, 337.3 + 30 , 0 );
setEffMoveKey( spep_0 -3 + 98, ctgogo1, 0, 355.1 + 30 , 0 );
setEffMoveKey( spep_0 -3 + 142, ctgogo1, 0, 355.1 + 30 , 0 );

setEffScaleKey( spep_0 -3 + 94, ctgogo1, -0.62 -0.5, 0.62 +0.5 );
setEffScaleKey( spep_0 -3 + 96, ctgogo1, -0.68 -0.5, 0.68 +0.5 );
setEffScaleKey( spep_0 -3 + 98, ctgogo1, -0.74 -0.5, 0.74 +0.5 );
setEffScaleKey( spep_0 -3 + 142, ctgogo1, -0.74 -0.5, 0.74 +0.5 );

setEffRotateKey( spep_0 -3 + 94, ctgogo1, 0 );
setEffRotateKey( spep_0 -3 + 142, ctgogo1, 0 );

setEffAlphaKey( spep_0 -3 + 94, ctgogo1, 255 );
setEffAlphaKey( spep_0 -3 + 142, ctgogo1, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 118, 1, 1 );
changeAnime( spep_0 -3 + 118, 1, 118 );
changeAnime( spep_0 -3 + 186, 1, 117 );

setMoveKey( spep_0 -3 + 118, 1, 1439.2, -80.6 , 0 );
setMoveKey( spep_0 -3 + 120, 1, 1439.4, -82.1 , 0 );
setMoveKey( spep_0 -3 + 122, 1, 1434.6, -77 , 0 );
setMoveKey( spep_0 -3 + 124, 1, 1438.5, -82 , 0 );
setMoveKey( spep_0 -3 + 126, 1, 1426.9, -78.8 , 0 );
setMoveKey( spep_0 -3 + 128, 1, 1427.6, -89.5 , 0 );
setMoveKey( spep_0 -3 + 130, 1, 1417.7, -86.4 , 0 );
setMoveKey( spep_0 -3 + 132, 1, 1390.7, -80.7 , 0 );
setMoveKey( spep_0 -3 + 134, 1, 1383.2, -77 , 0 );
setMoveKey( spep_0 -3 + 136, 1, 1354.1, -81.7 , 0 );
setMoveKey( spep_0 -3 + 138, 1, 1321.6, -78.4 , 0 );
setMoveKey( spep_0 -3 + 140, 1, 1284.2, -93.2 , 0 );
setMoveKey( spep_0 -3 + 142, 1, 1239.6, -94.6 , 0 );
setMoveKey( spep_0 -3 + 144, 1, 1176.9, -92.3 , 0 );
setMoveKey( spep_0 -3 + 146, 1, 1107.9, -102.5 , 0 );
setMoveKey( spep_0 -3 + 148, 1, 1032.7, -111.8 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 947.5, -110.2 , 0 );
setMoveKey( spep_0 -3 + 152, 1, 850.1, -119.4 , 0 );
setMoveKey( spep_0 -3 + 154, 1, 743, -125.7 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 610.5, -134.7 , 0 );
setMoveKey( spep_0 -3 + 158, 1, 474.5, -144.6 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 480, -136.6 , 0 );
setMoveKey( spep_0 -3 + 162, 1, 477.6, -136.6 , 0 );
setMoveKey( spep_0 -3 + 164, 1, 481.9, -140.9 , 0 );
setMoveKey( spep_0 -3 + 166, 1, 477.5, -136.3 , 0 );
setMoveKey( spep_0 -3 + 168, 1, 476.7, -136.4 , 0 );
setMoveKey( spep_0 -3 + 170, 1, 486.9, -136.3 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 479.9, -140 , 0 );
setMoveKey( spep_0 -3 + 174, 1, 475.4, -139.1 , 0 );
setMoveKey( spep_0 -3 + 176, 1, 483.3, -139.6 , 0 );
setMoveKey( spep_0 -3 + 178, 1, 478.8, -137.4 , 0 );
setMoveKey( spep_0 -3 + 180, 1, 475, -135 , 0 );
setMoveKey( spep_0 -3 + 182, 1, 474.6, -131.3 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 480.2, -139.7 , 0 );
setMoveKey( spep_0 -3 + 185, 1, 480.2, -139.7 , 0 );
setMoveKey( spep_0 -3 + 186, 1, 302.1, -142.4 , 0 );
setMoveKey( spep_0 -3 + 188, 1, 297.3, -140.8 , 0 );

setScaleKey( spep_0 -3 + 118, 1, 7.27, 7.27 );
setScaleKey( spep_0 -3 + 120, 1, 7.27, 7.27 );
setScaleKey( spep_0 -3 + 122, 1, 7.26, 7.26 );
setScaleKey( spep_0 -3 + 124, 1, 7.26, 7.26 );
setScaleKey( spep_0 -3 + 126, 1, 7.24, 7.24 );
setScaleKey( spep_0 -3 + 128, 1, 7.22, 7.22 );
setScaleKey( spep_0 -3 + 130, 1, 7.19, 7.19 );
setScaleKey( spep_0 -3 + 132, 1, 7.14, 7.14 );
setScaleKey( spep_0 -3 + 134, 1, 7.08, 7.08 );
setScaleKey( spep_0 -3 + 136, 1, 7, 7 );
setScaleKey( spep_0 -3 + 138, 1, 6.89, 6.89 );
setScaleKey( spep_0 -3 + 140, 1, 6.77, 6.77 );
setScaleKey( spep_0 -3 + 142, 1, 6.62, 6.62 );
setScaleKey( spep_0 -3 + 144, 1, 6.45, 6.45 );
setScaleKey( spep_0 -3 + 146, 1, 6.25, 6.25 );
setScaleKey( spep_0 -3 + 148, 1, 6.01, 6.01 );
setScaleKey( spep_0 -3 + 150, 1, 5.75, 5.75 );
setScaleKey( spep_0 -3 + 152, 1, 5.44, 5.44 );
setScaleKey( spep_0 -3 + 154, 1, 5.1, 5.1 );
setScaleKey( spep_0 -3 + 156, 1, 4.72, 4.72 );
setScaleKey( spep_0 -3 + 158, 1, 4.3, 4.3 );
setScaleKey( spep_0 -3 + 185, 1, 4.3, 4.3 );
setScaleKey( spep_0 -3 + 186, 1, 0.24, 0.24 );

setRotateKey( spep_0 -3 + 118, 1, 0 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 400, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

--気溜め
playSe( spep_0 + 100, 1035 );
setSeVolume( spep_0 + 100, 1035, 126 );
playSe( spep_0 + 100, 1011 );
playSe( spep_0 + 100, 1254 );
setSeVolume( spep_0 + 100, 1254, 32 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 186; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

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

-- ** 書き文字エントリー ** --
ctgyun = entryEffectLife( spep_0 -3 + 190,  10007, 12, 0x100, -1, 0, -10.2, 326.9 );  --ギュン
setEffMoveKey( spep_0 -3 + 190, ctgyun, -10.2, 326.9 , 0 );
setEffMoveKey( spep_0 -3 + 198, ctgyun, -10.2, 326.9 , 0 );
setEffMoveKey( spep_0 -3 + 200, ctgyun, -12.2, 328.9 , 0 );
setEffMoveKey( spep_0 -3 + 202, ctgyun, -14.2, 330.9 , 0 );

setEffScaleKey( spep_0 -3 + 190, ctgyun, 2.44, 2.44 );
setEffScaleKey( spep_0 -3 + 192, ctgyun, 3.1, 3.1 );
setEffScaleKey( spep_0 -3 + 198, ctgyun, 3.1, 3.1 );
setEffScaleKey( spep_0 -3 + 200, ctgyun, 3.23, 3.23 );
setEffScaleKey( spep_0 -3 + 202, ctgyun, 3.35, 3.35 );

setEffRotateKey( spep_0 -3 + 190, ctgyun, 16.9 );
setEffRotateKey( spep_0 -3 + 202, ctgyun, 16.9 );

setEffAlphaKey( spep_0 -3 + 190, ctgyun, 255 );
setEffAlphaKey( spep_0 -3 + 198, ctgyun, 255 );
setEffAlphaKey( spep_0 -3 + 200, ctgyun, 191 );
setEffAlphaKey( spep_0 -3 + 202, ctgyun, 128 );

ctex = entryEffectLife( spep_0 -3 + 266,  10000, 14, 0x100, -1, 0, -146.2, 225.8 );  --!!
setEffMoveKey( spep_0 -3 + 266, ctex, -146.2, 225.8 , 0 );
setEffMoveKey( spep_0 -3 + 268, ctex, -131.9, 273.8 , 0 );
setEffMoveKey( spep_0 -3 + 280, ctex, -131.9, 273.8 , 0 );

setEffScaleKey( spep_0 -3 + 266, ctex, 2.51 +0.3, 2.51 +0.3 );
setEffScaleKey( spep_0 -3 + 268, ctex, 3.66 +0.3, 3.66 +0.3 );
setEffScaleKey( spep_0 -3 + 280, ctex, 3.66 +0.3, 3.66 +0.3 );

setEffRotateKey( spep_0 -3 + 266, ctex, 17.5 );
setEffRotateKey( spep_0 -3 + 268, ctex, 15 );
setEffRotateKey( spep_0 -3 + 280, ctex, 15 );

setEffAlphaKey( spep_0 -3 + 266, ctex, 255 );
setEffAlphaKey( spep_0 -3 + 280, ctex, 255 );

ctsyun1 = entryEffectLife( spep_0 -3 + 286,  10011, 8, 0x100, -1, 0, 95.9, 146 );  --シュン
setEffMoveKey( spep_0 -3 + 286, ctsyun1, 95.9, 146 , 0 );
setEffMoveKey( spep_0 -3 + 288, ctsyun1, 115.9, 160.1 , 0 );
setEffMoveKey( spep_0 -3 + 294, ctsyun1, 115.9, 160.1 , 0 );

setEffScaleKey( spep_0 -3 + 286, ctsyun1, 1.39, 1.39 );
setEffScaleKey( spep_0 -3 + 288, ctsyun1, 1.88, 1.88 );
setEffScaleKey( spep_0 -3 + 294, ctsyun1, 1.88, 1.88 );

setEffRotateKey( spep_0 -3 + 286, ctsyun1, 0 );
setEffRotateKey( spep_0 -3 + 294, ctsyun1, 0 );

setEffAlphaKey( spep_0 -3 + 286, ctsyun1, 255 );
setEffAlphaKey( spep_0 -3 + 292, ctsyun1, 255 );
setEffAlphaKey( spep_0 -3 + 294, ctsyun1, 128 );

ctsyun2 = entryEffectLife( spep_0 -3 + 306,  10011, 8, 0x100, -1, 0, -184.1, 336 );  --シュン
setEffMoveKey( spep_0 -3 + 306, ctsyun2, -184.1, 336 , 0 );
setEffMoveKey( spep_0 -3 + 308, ctsyun2, -164.1, 350.1 , 0 );
setEffMoveKey( spep_0 -3 + 314, ctsyun2, -164.1, 350.1 , 0 );

setEffScaleKey( spep_0 -3 + 306, ctsyun2, 1.39, 1.39 );
setEffScaleKey( spep_0 -3 + 308, ctsyun2, 1.88, 1.88 );
setEffScaleKey( spep_0 -3 + 314, ctsyun2, 1.88, 1.88 );

setEffRotateKey( spep_0 -3 + 306, ctsyun2, 0 );
setEffRotateKey( spep_0 -3 + 314, ctsyun2, 0 );

setEffAlphaKey( spep_0 -3 + 306, ctsyun2, 255 );
setEffAlphaKey( spep_0 -3 + 312, ctsyun2, 255 );
setEffAlphaKey( spep_0 -3 + 314, ctsyun2, 128 );

ctdon = entryEffectLife( spep_0 -3 + 340,  10019, 14, 0x100, -1, 0, -0.2, 318.9 );  --ドン
setEffMoveKey( spep_0 -3 + 340, ctdon, -0.2, 318.9 , 0 );
setEffMoveKey( spep_0 -3 + 342, ctdon, -1.1, 354.8 , 0 );
setEffMoveKey( spep_0 -3 + 350, ctdon, -1.1, 354.8 , 0 );
setEffMoveKey( spep_0 -3 + 352, ctdon, -1.1, 361.3 , 0 );
setEffMoveKey( spep_0 -3 + 354, ctdon, -1.1, 367.8 , 0 );

setEffScaleKey( spep_0 -3 + 340, ctdon, 1.97, 1.97 );
setEffScaleKey( spep_0 -3 + 342, ctdon, 2.75, 2.75 );
setEffScaleKey( spep_0 -3 + 350, ctdon, 2.75, 2.75 );
setEffScaleKey( spep_0 -3 + 352, ctdon, 2.95, 2.95 );
setEffScaleKey( spep_0 -3 + 354, ctdon, 3.15, 3.15 );

setEffRotateKey( spep_0 -3 + 340, ctdon, 0 );
setEffRotateKey( spep_0 -3 + 354, ctdon, 0 );

setEffAlphaKey( spep_0 -3 + 340, ctdon, 255 );
setEffAlphaKey( spep_0 -3 + 350, ctdon, 255 );
setEffAlphaKey( spep_0 -3 + 352, ctdon, 128 );
setEffAlphaKey( spep_0 -3 + 354, ctdon, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 350, 1, 0 );
setDisp( spep_0 -3 + 362, 1, 1 );
setDisp( spep_0 -3 + 372, 1, 0 );
changeAnime( spep_0 -3 + 232, 1, 101 );
changeAnime( spep_0 -3 + 302, 1, 0 );
changeAnime( spep_0 -3 + 336, 1, 18 );
changeAnime( spep_0 -3 + 348, 1, 2 );
changeAnime( spep_0 -3 + 362, 1, 6 );

setMoveKey( spep_0 -3 + 190, 1, 292.4, -139.2 , 0 );
setMoveKey( spep_0 -3 + 192, 1, 308.3, -140.5 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 305.8, -154.7 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 298.8, -137 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 314, -142.2 , 0 );
setMoveKey( spep_0 -3 + 200, 1, 302.7, -135.2 , 0 );
setMoveKey( spep_0 -3 + 202, 1, 298.3, -138 , 0 );
setMoveKey( spep_0 -3 + 204, 1, 308, -140.1 , 0 );
setMoveKey( spep_0 -3 + 206, 1, 295.9, -147.5 , 0 );
setMoveKey( spep_0 -3 + 208, 1, 305.2, -139.8 , 0 );
setMoveKey( spep_0 -3 + 210, 1, 301.3, -149.9 , 0 );
setMoveKey( spep_0 -3 + 212, 1, 307.1, -143.9 , 0 );
setMoveKey( spep_0 -3 + 214, 1, 312.6, -130.5 , 0 );
setMoveKey( spep_0 -3 + 216, 1, 315.8, -148.7 , 0 );
setMoveKey( spep_0 -3 + 218, 1, 302.3, -147 , 0 );
setMoveKey( spep_0 -3 + 220, 1, 314.5, -134.2 , 0 );
setMoveKey( spep_0 -3 + 222, 1, 295, -134.5 , 0 );
setMoveKey( spep_0 -3 + 224, 1, 316.3, -135.1 , 0 );
setMoveKey( spep_0 -3 + 226, 1, 311.9, -139.3 , 0 );
setMoveKey( spep_0 -3 + 228, 1, 303.7, -135.5 , 0 );
setMoveKey( spep_0 -3 + 230, 1, 316.1, -134.3 , 0 );
setMoveKey( spep_0 -3 + 231, 1, 316.1, -134.3 , 0 );
setMoveKey( spep_0 -3 + 232, 1, -378.2, -17.6 , 0 );
setMoveKey( spep_0 -3 + 234, 1, -266.7, -32 , 0 );
setMoveKey( spep_0 -3 + 236, 1, -205.5, -40 , 0 );
setMoveKey( spep_0 -3 + 238, 1, -176.4, -43.8 , 0 );
setMoveKey( spep_0 -3 + 240, 1, -165.5, -45.3 , 0 );
setMoveKey( spep_0 -3 + 242, 1, -163.1, -45.8 , 0 );
setMoveKey( spep_0 -3 + 244, 1, -162.9, -46 , 0 );
setMoveKey( spep_0 -3 + 246, 1, -162.8, -46.2 , 0 );
setMoveKey( spep_0 -3 + 248, 1, -162.8, -46.3 , 0 );
setMoveKey( spep_0 -3 + 250, 1, -162.8, -46.5 , 0 );
setMoveKey( spep_0 -3 + 252, 1, -162.8, -46.6 , 0 );
setMoveKey( spep_0 -3 + 254, 1, -162.8, -46.8 , 0 );
setMoveKey( spep_0 -3 + 256, 1, -162.8, -46.9 , 0 );
setMoveKey( spep_0 -3 + 258, 1, -162.8, -47.1 , 0 );
setMoveKey( spep_0 -3 + 260, 1, -161.5, -41.7 , 0 );
setMoveKey( spep_0 -3 + 262, 1, -163.3, -52.8 , 0 );
setMoveKey( spep_0 -3 + 264, 1, -170.4, -41.5 , 0 );
setMoveKey( spep_0 -3 + 266, 1, -170.9, -45.7 , 0 );
setMoveKey( spep_0 -3 + 268, 1, -160.7, -57.6 , 0 );
setMoveKey( spep_0 -3 + 270, 1, -157, -60.8 , 0 );
setMoveKey( spep_0 -3 + 272, 1, -161.5, -47.2 , 0 );
setMoveKey( spep_0 -3 + 274, 1, -151.2, -36.3 , 0 );
setMoveKey( spep_0 -3 + 296, 1, -151.2, -36.3 , 0 );
setMoveKey( spep_0 -3 + 298, 1, -5.6, -77.9 , 0 );
setMoveKey( spep_0 -3 + 300, 1, 48.1, -93.3 , 0 );
setMoveKey( spep_0 -3 + 301, 1, 48.1, -93.3 , 0 );
setMoveKey( spep_0 -3 + 302, 1, 55.8, -95.5 , 0 );
setMoveKey( spep_0 -3 + 335, 1, 55.8, -95.5 , 0 );
setMoveKey( spep_0 -3 + 336, 1, 133.1, -27.4 , 0 );
setMoveKey( spep_0 -3 + 338, 1, 143, -27.4 , 0 );
setMoveKey( spep_0 -3 + 340, 1, 169.4, -27.4 , 0 );
setMoveKey( spep_0 -3 + 342, 1, 142.6, -7.3 , 0 );
setMoveKey( spep_0 -3 + 344, 1, 142.9, -29.4 , 0 );
setMoveKey( spep_0 -3 + 346, 1, 163.2, -9.3 , 0 );
setMoveKey( spep_0 -3 + 347, 1, 163.2, -9.3 , 0 );
setMoveKey( spep_0 -3 + 348, 1, 497.3, -60.5 , 0 );
setMoveKey( spep_0 -3 + 350, 1, 497.3, -60.5 , 0 );
setMoveKey( spep_0 -3 + 362, 1, 165.9, -22.5 , 0 );
setMoveKey( spep_0 -3 + 364, 1, 309.3, 22.2 , 0 );
setMoveKey( spep_0 -3 + 366, 1, 454.4, 63.2 , 0 );
setMoveKey( spep_0 -3 + 368, 1, 591.1, 106.1 , 0 );
setMoveKey( spep_0 -3 + 370, 1, 732.3, 149.3 , 0 );
setMoveKey( spep_0 -3 + 372, 1, 932.3, 167.3 , 0 );

setScaleKey( spep_0 -3 + 231, 1, 0.24, 0.24 );
setScaleKey( spep_0 -3 + 232, 1, 2.21, 2.21 );
setScaleKey( spep_0 -3 + 234, 1, 1.9, 1.9 );
setScaleKey( spep_0 -3 + 236, 1, 1.73, 1.73 );
setScaleKey( spep_0 -3 + 238, 1, 1.66, 1.66 );
setScaleKey( spep_0 -3 + 240, 1, 1.63, 1.63 );
setScaleKey( spep_0 -3 + 242, 1, 1.62, 1.62 );
setScaleKey( spep_0 -3 + 296, 1, 1.62, 1.62 );
setScaleKey( spep_0 -3 + 298, 1, 2.08, 2.08 );
setScaleKey( spep_0 -3 + 300, 1, 2.25, 2.25 );
setScaleKey( spep_0 -3 + 301, 1, 2.25, 2.25 );
setScaleKey( spep_0 -3 + 302, 1, 2.28, 2.28 );
setScaleKey( spep_0 -3 + 335, 1, 2.28, 2.28 );
setScaleKey( spep_0 -3 + 336, 1, 8.77, 9.53 );
setScaleKey( spep_0 -3 + 338, 1, 8.77, 9.53 );
setScaleKey( spep_0 -3 + 340, 1, 9.53, 9.53 );
setScaleKey( spep_0 -3 + 347, 1, 9.53, 9.53 );
setScaleKey( spep_0 -3 + 348, 1, 8.55, 10.26 );
setScaleKey( spep_0 -3 + 350, 1, 8.55, 10.26 );
setScaleKey( spep_0 -3 + 362, 1, 1.45, 1.45 );
setScaleKey( spep_0 -3 + 364, 1, 1.41, 1.41 );
setScaleKey( spep_0 -3 + 366, 1, 1.37, 1.37 );
setScaleKey( spep_0 -3 + 368, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 370, 1, 1.31, 1.31 );
setScaleKey( spep_0 -3 + 372, 1, 1.31, 1.31 );

setRotateKey( spep_0 -3 + 350, 1, 0 );
setRotateKey( spep_0 -3 + 362, 1, 81.1 );
setRotateKey( spep_0 -3 + 364, 1, 88.6 );
setRotateKey( spep_0 -3 + 366, 1, 96.1 );
setRotateKey( spep_0 -3 + 368, 1, 103.6 );
setRotateKey( spep_0 -3 + 370, 1, 111.1 );
setRotateKey( spep_0 -3 + 372, 1, 111.1 );

-- ** 音 ** --
--敵が向かっていく
SE0 = playSe( spep_0 + 188, 1118 );
stopSe( spep_0 + 216, SE0, 38 );
playSe( spep_0 + 188, 1182 );

--止まる
playSe( spep_0 + 225, 1190 );
setSeVolume( spep_0 + 225, 1190, 0 );
setSeVolume( spep_0 + 244, 1190, 11 );
setSeVolume( spep_0 + 246, 1190, 42 );
setSeVolume( spep_0 + 248, 1190, 78 );
setSeVolume( spep_0 + 250, 1190, 100 );
playSe( spep_0 + 244, 1192 );
setSeVolume( spep_0 + 244, 1192, 251 );
SE1 = playSe( spep_0 + 244, 1117 );
stopSe( spep_0 + 244, SE1, 26 );

--瞬間移動
playSe( spep_0 + 288, 1109 );

--パンチ
playSe( spep_0 + 336, 1003 );
playSe( spep_0 + 342, 1110 );
SE2 = playSe( spep_0 + 342, 1182 );
setSeVolume( spep_0 + 342, 1182, 141 );
setSeVolume( spep_0 + 350, 1182, 141 );
setSeVolume( spep_0 + 354, 1182, 98 );
setSeVolume( spep_0 + 358, 1182, 34 );
setSeVolume( spep_0 + 362, 1182, 0 );
stopSe( spep_0 + 362, SE2, 0 );
playSe( spep_0 + 344, 1187 );
setSeVolume( spep_0 + 344, 1187, 73 );
playSe( spep_0 + 344, 1010 );
playSe( spep_0 + 344, 1072 );
setSeVolume( spep_0 + 344, 1072, 71 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 398;

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

--ダッシュ
playSe( spep_1 + 88, 1182 );
playSe( spep_1 + 88, 9 );
SE3 = playSe( spep_1 + 88, 1167 );
setSeVolume( spep_1 + 88, 1167, 28 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;

------------------------------------------------------
-- 正面突進〜敵を画面奥へ飛ばす(216F)
------------------------------------------------------

-- ** エフェクト等 ** --
attack_f = entryEffectLife( spep_2 + 0, SP_03, 216, 0x100, -1, 0, 0, 0 );  --正面突進〜敵を画面奥へ飛ばす(ef_003)
setEffMoveKey( spep_2 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 216, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 216, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack_f, 0 );
setEffRotateKey( spep_2 + 216, attack_f, 0 );
setEffAlphaKey( spep_2 + 0, attack_f, 255 );
setEffAlphaKey( spep_2 + 215, attack_f, 255 );
setEffAlphaKey( spep_2 + 216, attack_f, 0 );

attack_b = entryEffectLife( spep_2 + 0, SP_04, 216, 0x80, -1, 0, 0, 0 );  --正面突進〜敵を画面奥へ飛ばす(ef_004)
setEffMoveKey( spep_2 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 216, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 216, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack_b, 0 );
setEffRotateKey( spep_2 + 216, attack_b, 0 );
setEffAlphaKey( spep_2 + 0, attack_b, 255 );
setEffAlphaKey( spep_2 + 215, attack_b, 255 );
setEffAlphaKey( spep_2 + 216, attack_b, 0 );

-- ** 書き文字エントリー ** --
ctdogon = entryEffectLife( spep_2 -3 + 42,  10018, 22, 0x100, -1, 0, -1.2, 291.9 );  --ドゴン
setEffMoveKey( spep_2 -3 + 42, ctdogon, -1.2, 291.9 , 0 );
setEffMoveKey( spep_2 -3 + 44, ctdogon, -3.7, 343.4 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctdogon, -6.3, 394.9 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctdogon, -6.1, 397.8 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctdogon, -6, 400.6 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctdogon, -5.8, 403.5 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctdogon, -5.6, 406.3 , 0 );
setEffMoveKey( spep_2 -3 + 56, ctdogon, -5.5, 409.2 , 0 );
setEffMoveKey( spep_2 -3 + 58, ctdogon, -5.3, 412 , 0 );
setEffMoveKey( spep_2 -3 + 60, ctdogon, -3.7, 425 , 0 );
setEffMoveKey( spep_2 -3 + 62, ctdogon, -2, 438 , 0 );
setEffMoveKey( spep_2 -3 + 64, ctdogon, -0.3, 450.9 , 0 );

setEffScaleKey( spep_2 -3 + 42, ctdogon, 2.33, 2.33 );
setEffScaleKey( spep_2 -3 + 44, ctdogon, 3.1, 3.1 );
setEffScaleKey( spep_2 -3 + 46, ctdogon, 3.87, 3.87 );
setEffScaleKey( spep_2 -3 + 48, ctdogon, 3.92, 3.92 );
setEffScaleKey( spep_2 -3 + 50, ctdogon, 3.96, 3.96 );
setEffScaleKey( spep_2 -3 + 52, ctdogon, 4.01, 4.01 );
setEffScaleKey( spep_2 -3 + 54, ctdogon, 4.05, 4.05 );
setEffScaleKey( spep_2 -3 + 56, ctdogon, 4.1, 4.1 );
setEffScaleKey( spep_2 -3 + 58, ctdogon, 4.14, 4.14 );
setEffScaleKey( spep_2 -3 + 60, ctdogon, 4.17, 4.17 );
setEffScaleKey( spep_2 -3 + 62, ctdogon, 4.2, 4.2 );
setEffScaleKey( spep_2 -3 + 64, ctdogon, 4.22, 4.22 );

setEffRotateKey( spep_2 -3 + 42, ctdogon, -5.2 );
setEffRotateKey( spep_2 -3 + 64, ctdogon, -5.2 );

setEffAlphaKey( spep_2 -3 + 42, ctdogon, 255 );
setEffAlphaKey( spep_2 -3 + 58, ctdogon, 255 );
setEffAlphaKey( spep_2 -3 + 60, ctdogon, 213 );
setEffAlphaKey( spep_2 -3 + 62, ctdogon, 170 );
setEffAlphaKey( spep_2 -3 + 64, ctdogon, 128 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 46, 1, 1 );
setDisp( spep_2 -3 + 130, 1, 0 );
setDisp( spep_2 -3 + 156, 1, 1 );
changeAnime( spep_2 -3 + 46, 1, 107 );
changeAnime( spep_2 -3 + 88, 1, 106 );
changeAnime( spep_2 -3 + 156, 1, 5 );

setMoveKey( spep_2 -3 + 46, 1, 97.9-90, 107.8-150 , 0 );
setMoveKey( spep_2 -3 + 59, 1, 97.9-90, 107.8-150 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 57.9-90, 107.8-150 , 0 );
setMoveKey( spep_2 -3 + 61, 1, 57.9-90, 107.8-150 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 158-90, 107.8-150 , 0 );
setMoveKey( spep_2 -3 + 63, 1, 158-90, 107.8-150 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 138-90, 107.8-150 , 0 );
setMoveKey( spep_2 -3 + 65, 1, 138-90, 107.8-150 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 118-90, 107.8-150 , 0 );
setMoveKey( spep_2 -3 + 67, 1, 118-90, 107.8-150 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 138-90, 107.8-150 , 0 );
setMoveKey( spep_2 -3 + 69, 1, 138-90, 107.8-150 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 178-90, 67.8-150 , 0 );
setMoveKey( spep_2 -3 + 71, 1, 178-90, 67.8-150 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 158-90, 107.8-150 , 0 );
setMoveKey( spep_2 -3 + 73, 1, 158-90, 107.8-150 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 138-90, 87.8-150 , 0 );
setMoveKey( spep_2 -3 + 75, 1, 138-90, 87.8-150 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 178-90, 107.8-150 , 0 );
setMoveKey( spep_2 -3 + 77, 1, 178-90, 107.8-150 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 218-90, 67.8-150 , 0 );
setMoveKey( spep_2 -3 + 79, 1, 218-90, 67.8-150 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 218-90, 107.8-150 , 0 );
setMoveKey( spep_2 -3 + 81, 1, 218-90, 107.8-150 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 229.5-90, 87.8-150 , 0 );
setMoveKey( spep_2 -3 + 83, 1, 229.5-90, 87.8-150 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 241-90, 67.8-150 , 0 );
setMoveKey( spep_2 -3 + 85, 1, 241-90, 67.8-150 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 149.5-90, 87.8-150 , 0 );
setMoveKey( spep_2 -3 + 87, 1, 149.5-90, 87.8-150 , 0 );


setMoveKey( spep_2 -3 + 88, 1, -65.9, 202 , 0 );
setMoveKey( spep_2 -3 + 90, 1, -59.2, 203.8 , 0 );
setMoveKey( spep_2 -3 + 92, 1, -52.8, 205.5 , 0 );
setMoveKey( spep_2 -3 + 94, 1, -46.8, 207.1 , 0 );
setMoveKey( spep_2 -3 + 96, 1, -41.1, 208.6 , 0 );
setMoveKey( spep_2 -3 + 98, 1, -35.8, 210 , 0 );
setMoveKey( spep_2 -3 + 100, 1, -30.8, 211.3 , 0 );
setMoveKey( spep_2 -3 + 102, 1, -26.1, 212.5 , 0 );
setMoveKey( spep_2 -3 + 104, 1, -21.8, 213.6 , 0 );
setMoveKey( spep_2 -3 + 106, 1, -17.8, 214.7 , 0 );
setMoveKey( spep_2 -3 + 108, 1, -14.2, 215.6 , 0 );
setMoveKey( spep_2 -3 + 110, 1, -10.9, 216.5 , 0 );
setMoveKey( spep_2 -3 + 112, 1, -8, 217.3 , 0 );
setMoveKey( spep_2 -3 + 114, 1, -5.4, 217.9 , 0 );
setMoveKey( spep_2 -3 + 116, 1, -3.2, 218.5 , 0 );
setMoveKey( spep_2 -3 + 118, 1, -1.3, 219 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 0.3, 219.4 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 1.5, 219.7 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 2.4, 220 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 2.9, 220.1 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 3.1, 220.1 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 3.1, 220.1 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 178.1, 2.1 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 241.5, -10 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 258.2, -13.2 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 265.3, -14.5 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 268.4, -15.1 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 270.3, -15.5 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 271.6, -15.7 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 272.6, -15.9 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 273.4, -16.1 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 274, -16.2 , 0 );
setMoveKey( spep_2 -3 + 176, 1, 274.6, -16.3 , 0 );
setMoveKey( spep_2 -3 + 178, 1, 275.1, -16.4 , 0 );
setMoveKey( spep_2 -3 + 180, 1, 275.5, -16.5 , 0 );
setMoveKey( spep_2 -3 + 182, 1, 275.9, -16.5 , 0 );
setMoveKey( spep_2 -3 + 184, 1, 276.3, -16.6 , 0 );
setMoveKey( spep_2 -3 + 186, 1, 276.7, -16.7 , 0 );
setMoveKey( spep_2 -3 + 188, 1, 277.1, -16.8 , 0 );
setMoveKey( spep_2 -3 + 190, 1, 277.5, -16.8 , 0 );
setMoveKey( spep_2 -3 + 192, 1, 277.9, -16.9 , 0 );
setMoveKey( spep_2 -3 + 194, 1, 278.4, -17 , 0 );
setMoveKey( spep_2 -3 + 196, 1, 278.8, -17.1 , 0 );
setMoveKey( spep_2 -3 + 198, 1, 279.2, -17.2 , 0 );
setMoveKey( spep_2 -3 + 200, 1, 279.6, -17.2 , 0 );
setMoveKey( spep_2 -3 + 202, 1, 279.9, -17.3 , 0 );
setMoveKey( spep_2 -3 + 204, 1, 280.2, -17.4 , 0 );
setMoveKey( spep_2 -3 + 206, 1, 280.5, -17.4 , 0 );
setMoveKey( spep_2 -3 + 208, 1, 280.7, -17.5 , 0 );
setMoveKey( spep_2 -3 + 210, 1, 281, -17.5 , 0 );
setMoveKey( spep_2 -3 + 212, 1, 281.3, -17.6 , 0 );
setMoveKey( spep_2 -3 + 214, 1, 281.7, -17.6 , 0 );
setMoveKey( spep_2 -3 + 216, 1, 282, -17.7 , 0 );
setMoveKey( spep_2 -3 + 218, 1, 282.3, -17.7 , 0 );

setScaleKey( spep_2 -3 + 46, 1, 3, 3 );
setScaleKey( spep_2 -3 + 87, 1, 3, 3 );
setScaleKey( spep_2 -3 + 88, 1, 1.93, 1.93 );
setScaleKey( spep_2 -3 + 130, 1, 1.93, 1.93 );
setScaleKey( spep_2 -3 + 156, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 158, 1, 0.69, 0.69 );
setScaleKey( spep_2 -3 + 160, 1, 0.46, 0.46 );
setScaleKey( spep_2 -3 + 162, 1, 0.36, 0.36 );
setScaleKey( spep_2 -3 + 164, 1, 0.32, 0.32 );
setScaleKey( spep_2 -3 + 166, 1, 0.29, 0.29 );
setScaleKey( spep_2 -3 + 168, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 170, 1, 0.26, 0.26 );
setScaleKey( spep_2 -3 + 172, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 174, 1, 0.24, 0.24 );
setScaleKey( spep_2 -3 + 176, 1, 0.23, 0.23 );
setScaleKey( spep_2 -3 + 178, 1, 0.23, 0.23 );
setScaleKey( spep_2 -3 + 180, 1, 0.22, 0.22 );
setScaleKey( spep_2 -3 + 182, 1, 0.22, 0.22 );
setScaleKey( spep_2 -3 + 184, 1, 0.21, 0.21 );
setScaleKey( spep_2 -3 + 186, 1, 0.21, 0.21 );
setScaleKey( spep_2 -3 + 188, 1, 0.2, 0.2 );
setScaleKey( spep_2 -3 + 190, 1, 0.19, 0.19 );
setScaleKey( spep_2 -3 + 192, 1, 0.19, 0.19 );
setScaleKey( spep_2 -3 + 194, 1, 0.18, 0.18 );
setScaleKey( spep_2 -3 + 196, 1, 0.18, 0.18 );
setScaleKey( spep_2 -3 + 198, 1, 0.17, 0.17 );
setScaleKey( spep_2 -3 + 200, 1, 0.17, 0.17 );
setScaleKey( spep_2 -3 + 202, 1, 0.16, 0.16 );
setScaleKey( spep_2 -3 + 204, 1, 0.16, 0.16 );
setScaleKey( spep_2 -3 + 206, 1, 0.15, 0.15 );
setScaleKey( spep_2 -3 + 210, 1, 0.15, 0.15 );
setScaleKey( spep_2 -3 + 212, 1, 0.14, 0.14 );
setScaleKey( spep_2 -3 + 214, 1, 0.14, 0.14 );
setScaleKey( spep_2 -3 + 216, 1, 0.13, 0.13 );
setScaleKey( spep_2 -3 + 218, 1, 0.13, 0.13 );

setRotateKey( spep_2 -3 + 46, 1, -44 );
setRotateKey( spep_2 -3 + 59, 1, -44 );
setRotateKey( spep_2 -3 + 60, 1, -32 );
setRotateKey( spep_2 -3 + 87, 1, -32 );


setRotateKey( spep_2 -3 + 88, 1, 17 );
setRotateKey( spep_2 -3 + 90, 1, 18.6 );
setRotateKey( spep_2 -3 + 92, 1, 20.1 );
setRotateKey( spep_2 -3 + 94, 1, 21.6 );
setRotateKey( spep_2 -3 + 96, 1, 23 );
setRotateKey( spep_2 -3 + 98, 1, 24.3 );
setRotateKey( spep_2 -3 + 100, 1, 25.5 );
setRotateKey( spep_2 -3 + 102, 1, 26.6 );
setRotateKey( spep_2 -3 + 104, 1, 27.7 );
setRotateKey( spep_2 -3 + 106, 1, 28.6 );
setRotateKey( spep_2 -3 + 108, 1, 29.5 );
setRotateKey( spep_2 -3 + 110, 1, 30.3 );
setRotateKey( spep_2 -3 + 112, 1, 31 );
setRotateKey( spep_2 -3 + 114, 1, 31.6 );
setRotateKey( spep_2 -3 + 116, 1, 32.2 );
setRotateKey( spep_2 -3 + 118, 1, 32.6 );
setRotateKey( spep_2 -3 + 120, 1, 33 );
setRotateKey( spep_2 -3 + 122, 1, 33.3 );
setRotateKey( spep_2 -3 + 124, 1, 33.5 );
setRotateKey( spep_2 -3 + 126, 1, 33.6 );
setRotateKey( spep_2 -3 + 128, 1, 33.7 );
setRotateKey( spep_2 -3 + 130, 1, 33.7 );
setRotateKey( spep_2 -3 + 156, 1, 110.1 );
setRotateKey( spep_2 -3 + 158, 1, 118.3 );
setRotateKey( spep_2 -3 + 160, 1, 120.5 );
setRotateKey( spep_2 -3 + 162, 1, 121.4 );
setRotateKey( spep_2 -3 + 164, 1, 121.8 );
setRotateKey( spep_2 -3 + 166, 1, 122 );
setRotateKey( spep_2 -3 + 168, 1, 122.2 );
setRotateKey( spep_2 -3 + 170, 1, 122.3 );
setRotateKey( spep_2 -3 + 172, 1, 122.4 );
setRotateKey( spep_2 -3 + 174, 1, 122.5 );
setRotateKey( spep_2 -3 + 176, 1, 122.6 );
setRotateKey( spep_2 -3 + 178, 1, 122.7 );
setRotateKey( spep_2 -3 + 180, 1, 122.7 );
setRotateKey( spep_2 -3 + 182, 1, 122.8 );
setRotateKey( spep_2 -3 + 184, 1, 122.8 );
setRotateKey( spep_2 -3 + 186, 1, 122.9 );
setRotateKey( spep_2 -3 + 188, 1, 122.9 );
setRotateKey( spep_2 -3 + 190, 1, 123 );
setRotateKey( spep_2 -3 + 192, 1, 123 );
setRotateKey( spep_2 -3 + 194, 1, 123.1 );
setRotateKey( spep_2 -3 + 196, 1, 123.1 );
setRotateKey( spep_2 -3 + 198, 1, 123.2 );
setRotateKey( spep_2 -3 + 200, 1, 123.2 );
setRotateKey( spep_2 -3 + 202, 1, 123.3 );
setRotateKey( spep_2 -3 + 204, 1, 123.3 );
setRotateKey( spep_2 -3 + 206, 1, 123.4 );
setRotateKey( spep_2 -3 + 210, 1, 123.4 );
setRotateKey( spep_2 -3 + 212, 1, 123.5 );
setRotateKey( spep_2 -3 + 214, 1, 123.5 );
setRotateKey( spep_2 -3 + 216, 1, 123.6 );
setRotateKey( spep_2 -3 + 218, 1, 123.6 );

-- ** 音 ** --
--ダッシュ
setSeVolume( spep_2 + 21, 1167, 28 );
setSeVolume( spep_2 + 24, 1167, 21 );
setSeVolume( spep_2 + 28, 1167, 14 );
setSeVolume( spep_2 + 32, 1167, 6 );
setSeVolume( spep_2 + 37, 1167, 0 );
stopSe( spep_2 + 37, SE3, 0 );

--パンチ
playSe( spep_2 + 32, 1003 );
playSe( spep_2 + 38, 1009 );
playSe( spep_2 + 38, 1120 );
playSe( spep_2 + 46, 1190 );
setSeVolume( spep_2 + 46, 1190, 0 );
setSeVolume( spep_2 + 52, 1190, 3 );
setSeVolume( spep_2 + 54, 1190, 15 );
setSeVolume( spep_2 + 56, 1190, 23 );
setSeVolume( spep_2 + 58, 1190, 36 );
setSeVolume( spep_2 + 60, 1190, 42 );
setSeVolume( spep_2 + 62, 1190, 49 );
setSeVolume( spep_2 + 64, 1190, 54 );
setSeVolume( spep_2 + 66, 1190, 68 );
setSeVolume( spep_2 + 69, 1190, 79 );

--顔アップ
SE4 = playSe( spep_2 + 122, 1116 );
stopSe( spep_2 + 143, SE4, 28 );

--敵が吹っ飛ぶ
playSe( spep_2 + 158, 1027 );
SE5 = playSe( spep_2 + 158, 1258 );
setSeVolume( spep_2 + 158, 1258, 50 );
SE6 = playSe( spep_2 + 158, 1183 );
setSeVolume( spep_2 + 158, 1183, 126 );
playSe( spep_2 + 158, 1188 );
setSeVolume( spep_2 + 158, 1188, 63 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 218, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 216;

------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 100, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 100, finish_f, 255 );

finish_b = entryEffect( spep_3 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --敵が画面衝突(ef_006)(背景)
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 100, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 100, finish_b, 255 );

-- ** 敵キャラクター ** --
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
setScaleKey( spep_3 -3 + 4, 1, 0.51, 0.51 );
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


-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_3 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_3 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_3 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_3 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_3 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_3 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_3 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_3 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_3 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_3 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_3 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_3 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_3 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_3 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_3 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_3 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_3 + 100, shuchusen_bl, 255 );

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

-- ** 音 ** --
--敵が吹っ飛ぶ
stopSe( spep_3 + 16, SE5, 0 );
stopSe( spep_3 + 16, SE6, 0 );

--ガッ
playSe( spep_3 + 8, 1054 );
setSeVolume( spep_3 + 8, 1054, 126 );
playSe( spep_3 + 8, 1023 );
setSeVolume( spep_3 + 8, 1023, 76 );

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 100, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 10 );
endPhase( spep_3 + 98 );

end