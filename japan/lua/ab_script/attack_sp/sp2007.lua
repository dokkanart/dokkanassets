--超サイヤ人2ケフラ_ギガンティックブレイカー

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
SP_01 = 155503;  --気弾を飛ばして攻撃〜気溜め
SP_02 = 155504;  --気弾を飛ばして攻撃〜気溜め
SP_03 = 155505;  --腕に気を溜めて突進〜フィニッシュ
SP_04 = 155506;  --腕に気を溜めて突進〜フィニッシュ

--敵側
SP_01x = 155507;  --気弾を飛ばして攻撃〜気溜め
SP_02x = 155508;  --気弾を飛ばして攻撃〜気溜め
SP_03x = 155509;  --腕に気を溜めて突進〜フィニッシュ
SP_04x = 155510;  --腕に気を溜めて突進〜フィニッシュ

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
-- 気弾を飛ばして攻撃〜気溜め(596F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --気弾を飛ばして攻撃〜気溜め(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 596, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 596, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 596, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 596, first_f, 255 );

first_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --気弾を飛ばして攻撃〜気溜め(ef_002)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 596, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 596, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 596, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 596, first_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 70, 1, 0 );
changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 290.8, -143.5 , 0 );
setMoveKey( spep_0 -3 + 4, 1, 295.1, -143.5 , 0 );
setMoveKey( spep_0 -3 + 5, 1, 295.1, -143.5 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 299.1, -143.5 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 299.1, -143.5 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 302.9, -143.5 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 302.9, -143.5 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 306.6, -143.5 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 310.2, -143.5 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 313.6, -143.5 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 316.9, -143.5 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 320.1, -143.5 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 323.2, -143.5 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 326.2, -143.5 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 329.1, -143.5 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 331.8, -143.5 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 334.4, -143.5 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 336.9, -143.5 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 339.2, -143.5 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 341.4, -143.5 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 343.4, -143.5 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 345.2, -143.5 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 346.8, -143.5 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 348.2, -143.5 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 349.4, -143.5 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 350.3, -143.5 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 350.9, -143.5 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 351.1, -143.5 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 355, -143.7 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 367.7, -144.4 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 390.3, -145.6 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 425.2, -147.5 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 475.3, -150.1 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 545.5, -153.8 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 645.1, -159.1 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 797.2, -167.3 , 0 );
setMoveKey( spep_0 -3 + 69, 1, 1184.8, -187.8 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 1222.8, -200.8 , 0 );

setScaleKey( spep_0 + 0, 1, 3.75, 3.75 );
setScaleKey( spep_0 + 1, 1, 3.75, 3.75 );
setScaleKey( spep_0 + 2, 1, 3.75, 3.75 );
setScaleKey( spep_0 + 3, 1, 3.75, 3.75 );
setScaleKey( spep_0 + 4, 1, 3.75, 3.75 );
setScaleKey( spep_0 + 5, 1, 3.75, 3.75 );
setScaleKey( spep_0 + 6, 1, 3.75, 3.75 );
setScaleKey( spep_0 -3 + 50, 1, 3.75, 3.75 );
setScaleKey( spep_0 -3 + 52, 1, 3.77, 3.77 );
setScaleKey( spep_0 -3 + 54, 1, 3.82, 3.82 );
setScaleKey( spep_0 -3 + 56, 1, 3.93, 3.93 );
setScaleKey( spep_0 -3 + 58, 1, 4.08, 4.08 );
setScaleKey( spep_0 -3 + 60, 1, 4.31, 4.31 );
setScaleKey( spep_0 -3 + 62, 1, 4.62, 4.62 );
setScaleKey( spep_0 -3 + 64, 1, 5.07, 5.07 );
setScaleKey( spep_0 -3 + 66, 1, 5.76, 5.76 );
setScaleKey( spep_0 -3 + 69, 1, 7.5, 7.5 );
setScaleKey( spep_0 -3 + 70, 1, 7.5, 7.5 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 70, 1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 212, 1, 1 );
changeAnime( spep_0 -3 + 212, 1, 117 );

setMoveKey( spep_0 -3 + 212, 1, 203.8, -167.2 , 0 );
setScaleKey( spep_0 -3 + 212, 1, 0.7, 0.7 );
setRotateKey( spep_0 -3 + 212, 1, 0 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 598, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--入り
playSe( spep_0 + 0, 8 );

--オーラ
playSe( spep_0 + 0, 1036 );
setSeVolume( spep_0 + 0, 1036, 56 );
playSe( spep_0 + 0, 1147 );
setSeVolume( spep_0 + 0, 1147, 35 );
playSe( spep_0 + 24, 1036 );
setSeVolume( spep_0 + 24, 1036, 56 );
playSe( spep_0 + 48, 1036 );
setSeVolume( spep_0 + 48, 1036, 56 );
playSe( spep_0 + 72, 1036 );
setSeVolume( spep_0 + 72, 1036, 56 );
playSe( spep_0 + 96, 1036 );
setSeVolume( spep_0 + 96, 1036, 25 );
playSe( spep_0 + 120, 1036 );
setSeVolume( spep_0 + 120, 1036, 25 );
playSe( spep_0 + 144, 1036 );
setSeVolume( spep_0 + 144, 1036, 25 );
playSe( spep_0 + 168, 1036 );
setSeVolume( spep_0 + 168, 1036, 25 );
playSe( spep_0 + 192, 1036 );
setSeVolume( spep_0 + 192, 1036, 25 );
SE000 = playSe( spep_0 + 206, 1148 );
setSeVolume( spep_0 + 206, 1148, 35 );
playSe( spep_0 + 216, 1036 );
setSeVolume( spep_0 + 216, 1036, 25 );
playSe( spep_0 + 240, 1036 );
setSeVolume( spep_0 + 240, 1036, 25 );
playSe( spep_0 + 264, 1036 );
setSeVolume( spep_0 + 264, 1036, 25 );
playSe( spep_0 + 288, 1036 );
setSeVolume( spep_0 + 288, 1036, 25 );
playSe( spep_0 + 312, 1036 );
setSeVolume( spep_0 + 312, 1036, 25 );

--手を後ろにする
playSe( spep_0 + 38, 1072 );
setSeVolume( spep_0 + 38, 1072, 112 );
playSe( spep_0 + 81, 1003 );

--気弾発生１
SE0 = playSe( spep_0 + 109, 1252 );
setSeVolume( spep_0 + 109, 1252, 178 );
stopSe( spep_0 + 168, SE0, 0 );

SE1 = playSe( spep_0 + 109, 1262 );
setSeVolume( spep_0 + 109, 1262, 79 );
setSeVolume( spep_0 + 120, 1262, 79 );
setSeVolume( spep_0 + 124, 1262, 58 );
setSeVolume( spep_0 + 128, 1262, 51 );
setSeVolume( spep_0 + 132, 1262, 46 );
setSeVolume( spep_0 + 136, 1262, 42 );
setSeVolume( spep_0 + 140, 1262, 38 );
setSeVolume( spep_0 + 144, 1262, 34 );
setSeVolume( spep_0 + 148, 1262, 27 );
setSeVolume( spep_0 + 152, 1262, 22 );
setSeVolume( spep_0 + 156, 1262, 14 );
setSeVolume( spep_0 + 160, 1262, 9 );
setSeVolume( spep_0 + 164, 1262, 3 );
setSeVolume( spep_0 + 166, 1262, 0 );
stopSe( spep_0 + 166, SE1, 0 );

playSe( spep_0 + 113, 1253 );
setSeVolume( spep_0 + 113, 1253, 126 );

--気弾発生２
SE2 = playSe( spep_0 + 168, 1252 );
setSeVolume( spep_0 + 168, 1252, 178 );
stopSe( spep_0 + 318, SE2, 0 );

playSe( spep_0 + 168, 1253 );
setSeVolume( spep_0 + 168, 1253, 126 );

SE3 = playSe( spep_0 + 168, 1262 );
stopSe( spep_0 + 181, SE3, 34 );

--手を上にあげる
SE4 = playSe( spep_0 + 228, 1199 );
stopSe( spep_0 + 298, SE4, 0 );

--気弾発射
SE5 = playSe( spep_0 + 313, 1004 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 330; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE5, 0 );
stopSe( SP_dodge - 12, SE000, 0 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
setMoveKey( SP_dodge + 0, 1, 203.8, -167.2 , 0 );
setMoveKey( SP_dodge + 10, 1, 203.8, -167.2 , 0 );
setScaleKey( SP_dodge + 0, 1, 0.7, 0.7 );
setScaleKey( SP_dodge + 10, 1, 0.7, 0.7 );
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

spep_x = spep_0 + 516;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 0 -150, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, 0 -150, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 0 -150, 515.5 , 0 );

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

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 422, 1, 0 );
changeAnime( spep_0 -3 + 342, 1, 104 );
changeAnime( spep_0 -3 + 360, 1, 106 );

setMoveKey( spep_0 -3 + 341, 1, 203.8, -167.2 , 0 );
setMoveKey( spep_0 -3 + 342, 1, -40, -1.7 , 0 );
setMoveKey( spep_0 -3 + 344, 1, 11.2, -1.6 , 0 );
setMoveKey( spep_0 -3 + 346, 1, 24.9, -1.6 , 0 );
setMoveKey( spep_0 -3 + 348, 1, 32.3, -1.6 , 0 );
setMoveKey( spep_0 -3 + 350, 1, 36.6, -1.6 , 0 );
setMoveKey( spep_0 -3 + 352, 1, 38.9, -1.6 , 0 );
setMoveKey( spep_0 -3 + 354, 1, 39.8, -1.6 , 0 );
setMoveKey( spep_0 -3 + 356, 1, 40, -1.7 , 0 );
setMoveKey( spep_0 -3 + 359, 1, 40, -1.7 , 0 );
setMoveKey( spep_0 -3 + 360, 1, -20, 26.4 , 0 );
setMoveKey( spep_0 -3 + 362, 1, -23.7, 28.4 , 0 );
setMoveKey( spep_0 -3 + 364, 1, -27, 41.9 , 0 );
setMoveKey( spep_0 -3 + 366, 1, -25.8, 31.4 , 0 );
setMoveKey( spep_0 -3 + 368, 1, -20.4, 32.6 , 0 );
setMoveKey( spep_0 -3 + 370, 1, -22.6, 21.9 , 0 );
setMoveKey( spep_0 -3 + 372, 1, -28.2, 34.7 , 0 );
setMoveKey( spep_0 -3 + 374, 1, -29.3, 35.1 , 0 );
setMoveKey( spep_0 -3 + 376, 1, -33.7, 27.5 , 0 );
setMoveKey( spep_0 -3 + 378, 1, 35.5, 72.7 , 0 );
setMoveKey( spep_0 -3 + 380, 1, 42.8, 80.9 , 0 );
setMoveKey( spep_0 -3 + 382, 1, 50.1, 81 , 0 );
setMoveKey( spep_0 -3 + 384, 1, 65.9, 58 , 0 );
setMoveKey( spep_0 -3 + 386, 1, 101.3, 83.2 , 0 );
setMoveKey( spep_0 -3 + 388, 1, 193.9, 65.3 , 0 );
setMoveKey( spep_0 -3 + 390, 1, 338.1, 88.3 , 0 );
setMoveKey( spep_0 -3 + 392, 1, 473, 70.7 , 0 );
setMoveKey( spep_0 -3 + 394, 1, 576.9, 85.1 , 0 );
setMoveKey( spep_0 -3 + 396, 1, 635.8, 82.4 , 0 );
setMoveKey( spep_0 -3 + 398, 1, 680.9, 103 , 0 );
setMoveKey( spep_0 -3 + 400, 1, 712.3, 82.9 , 0 );
setMoveKey( spep_0 -3 + 402, 1, 738.5, 95.6 , 0 );
setMoveKey( spep_0 -3 + 404, 1, 754.5, 79.8 , 0 );
setMoveKey( spep_0 -3 + 406, 1, 766.2, 97 , 0 );
setMoveKey( spep_0 -3 + 408, 1, 778.6, 92.3 , 0 );
setMoveKey( spep_0 -3 + 410, 1, 784.1, 104.1 , 0 );
setMoveKey( spep_0 -3 + 412, 1, 784, 86.1 , 0 );
setMoveKey( spep_0 -3 + 414, 1, 791.1, 91.4 , 0 );
setMoveKey( spep_0 -3 + 416, 1, 791.8, 79.9 , 0 );
setMoveKey( spep_0 -3 + 418, 1, 791.6, 101.5 , 0 );
setMoveKey( spep_0 -3 + 420, 1, 794.4, 87.9 , 0 );
setMoveKey( spep_0 -3 + 422, 1, 794.4, 87.9 , 0 );

setScaleKey( spep_0 -3 + 341, 1, 0.7, 0.7 );
setScaleKey( spep_0 -3 + 342, 1, 2, 2 );
setScaleKey( spep_0 -3 + 359, 1, 2, 2 );
setScaleKey( spep_0 -3 + 360, 1, 2, 2 );
setScaleKey( spep_0 -3 + 422, 1, 2, 2 );

setRotateKey( spep_0 -3 + 341, 1, 0 );
setRotateKey( spep_0 -3 + 342, 1, 0 );
setRotateKey( spep_0 -3 + 359, 1, 0 );
setRotateKey( spep_0 -3 + 360, 1, -67 );
setRotateKey( spep_0 -3 + 362, 1, -66.1 );
setRotateKey( spep_0 -3 + 364, 1, -65.4 );
setRotateKey( spep_0 -3 + 366, 1, -64.7 );
setRotateKey( spep_0 -3 + 368, 1, -64.2 );
setRotateKey( spep_0 -3 + 370, 1, -63.8 );
setRotateKey( spep_0 -3 + 372, 1, -63.5 );
setRotateKey( spep_0 -3 + 374, 1, -63.3 );
setRotateKey( spep_0 -3 + 376, 1, -63.3 );
setRotateKey( spep_0 -3 + 378, 1, -29 );
setRotateKey( spep_0 -3 + 380, 1, -28.9 );
setRotateKey( spep_0 -3 + 382, 1, -28.6 );
setRotateKey( spep_0 -3 + 384, 1, -27.9 );
setRotateKey( spep_0 -3 + 386, 1, -26.4 );
setRotateKey( spep_0 -3 + 388, 1, -22.8 );
setRotateKey( spep_0 -3 + 390, 1, -16.7 );
setRotateKey( spep_0 -3 + 392, 1, -11.2 );
setRotateKey( spep_0 -3 + 394, 1, -7.1 );
setRotateKey( spep_0 -3 + 396, 1, -4.3 );
setRotateKey( spep_0 -3 + 398, 1, -2.5 );
setRotateKey( spep_0 -3 + 400, 1, -1.2 );
setRotateKey( spep_0 -3 + 402, 1, -0.3 );
setRotateKey( spep_0 -3 + 404, 1, 0.4 );
setRotateKey( spep_0 -3 + 406, 1, 0.9 );
setRotateKey( spep_0 -3 + 408, 1, 1.2 );
setRotateKey( spep_0 -3 + 410, 1, 1.5 );
setRotateKey( spep_0 -3 + 412, 1, 1.7 );
setRotateKey( spep_0 -3 + 414, 1, 1.8 );
setRotateKey( spep_0 -3 + 416, 1, 1.9 );
setRotateKey( spep_0 -3 + 418, 1, 2 );
setRotateKey( spep_0 -3 + 422, 1, 2 );

-- ** 音 ** --
--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

--気弾発射
playSe( spep_0 + 318, 1003 );
playSe( spep_0 + 325, 1027 );
playSe( spep_0 + 325, 1021 );
playSe( spep_0 + 330, 1016 );
playSe( spep_0 + 340, 1016 );
playSe( spep_0 + 351, 1016 );
playSe( spep_0 + 359, 1016 );

--爆発
playSe( spep_0 + 357, 1023 );
playSe( spep_0 + 369, 1025 );
SE6 = playSe( spep_0 + 380, 1067 );
stopSe( spep_0 + 427, SE6, 35 );

--気弾貯め
SE7 = playSe( spep_0 + 412, 1147 );
setSeVolume( spep_0 + 412, 1147, 63 );
SE8 = playSe( spep_0 + 423, 1252 );
setSeVolume( spep_0 + 423, 1252, 178 );
SE9 = playSe( spep_0 + 423, 1253 );
setSeVolume( spep_0 + 423, 1253, 63 );
stopSe( spep_0 + 458, SE9, 0 );

playSe( spep_0 + 458, 1253 );
setSeVolume( spep_0 + 458, 1253, 188 );

SE10 = playSe( spep_0 + 458, 1262 );
setSeVolume( spep_0 + 458, 1262, 63 );
setSeVolume( spep_0 + 514, 1262, 63 );
setSeVolume( spep_0 + 518, 1262, 59 );
setSeVolume( spep_0 + 522, 1262, 46 );
setSeVolume( spep_0 + 526, 1262, 41 );
setSeVolume( spep_0 + 530, 1262, 37 );
setSeVolume( spep_0 + 534, 1262, 32 );
setSeVolume( spep_0 + 538, 1262, 25 );
setSeVolume( spep_0 + 542, 1262, 19 );
setSeVolume( spep_0 + 546, 1262, 12 );
setSeVolume( spep_0 + 550, 1262, 7 );
setSeVolume( spep_0 + 554, 1262, 3 );
setSeVolume( spep_0 + 558, 1262, 0 );
stopSe( spep_0 + 558, SE10, 0 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 596;

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

--気弾貯め
stopSe( spep_1 + 2, SE7, 0 );
stopSe( spep_1 + 2, SE8, 0 );

--オーラ
playSe( spep_1 + 89, 1036 );
setSeVolume( spep_1 + 89, 1036, 56 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;

------------------------------------------------------
-- 腕に気を溜めて突進〜フィニッシュ(414F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --腕に気を溜めて突進〜フィニッシュ(ef_003)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 414, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 414, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 414, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 414, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --腕に気を溜めて突進〜フィニッシュ(ef_004)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 414, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 414, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 414, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 414, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 216, 1, 1 );
setDisp( spep_2 -3 + 286, 1, 0 );
changeAnime( spep_2 -3 + 216, 1, 106 );
changeAnime( spep_2 -3 + 220, 1, 108 );

setMoveKey( spep_2 -3 + 216, 1, 24.5, -13.7 , 0 );
setMoveKey( spep_2 -3 + 218, 1, 104.6, -13.7 , 0 );
setMoveKey( spep_2 -3 + 219, 1, 104.6, -13.7 , 0 );
setMoveKey( spep_2 -3 + 220, 1, 162.7, -24.2 , 0 );
setMoveKey( spep_2 -3 + 222, 1, 156.3, -19.1 , 0 );
setMoveKey( spep_2 -3 + 224, 1, 136.9, -19.7 , 0 );
setMoveKey( spep_2 -3 + 226, 1, 173.1, -19.9 , 0 );
setMoveKey( spep_2 -3 + 228, 1, 230.3, -20.9 , 0 );
setMoveKey( spep_2 -3 + 230, 1, 226.2, -25.2 , 0 );
setMoveKey( spep_2 -3 + 232, 1, 191.2, -14.5 , 0 );
setMoveKey( spep_2 -3 + 234, 1, 215.9, -31.1 , 0 );
setMoveKey( spep_2 -3 + 236, 1, 194.6, -9.9 , 0 );
setMoveKey( spep_2 -3 + 238, 1, 202.5, -33 , 0 );
setMoveKey( spep_2 -3 + 240, 1, 209.3, -13.2 , 0 );
setMoveKey( spep_2 -3 + 242, 1, 201.7, -25.8 , 0 );
setMoveKey( spep_2 -3 + 244, 1, 211.1, -16.8 , 0 );
setMoveKey( spep_2 -3 + 246, 1, 209, -19.7 , 0 );
setMoveKey( spep_2 -3 + 248, 1, 209.1, -16.7 , 0 );
setMoveKey( spep_2 -3 + 250, 1, 216.2, -19.3 , 0 );
setMoveKey( spep_2 -3 + 252, 1, 210.1, -16.6 , 0 );
setMoveKey( spep_2 -3 + 254, 1, 218.8, -19.2 , 0 );
setMoveKey( spep_2 -3 + 256, 1, 213.7, -21.6 , 0 );
setMoveKey( spep_2 -3 + 258, 1, 216.9, -14.5 , 0 );
setMoveKey( spep_2 -3 + 260, 1, 216.4, -23.4 , 0 );
setMoveKey( spep_2 -3 + 262, 1, 217.1, -14.6 , 0 );
setMoveKey( spep_2 -3 + 264, 1, 216, -23.5 , 0 );
setMoveKey( spep_2 -3 + 266, 1, 212.6, -16.6 , 0 );
setMoveKey( spep_2 -3 + 268, 1, 209.5, -20.9 , 0 );
setMoveKey( spep_2 -3 + 270, 1, 193.6, -14.2 , 0 );
setMoveKey( spep_2 -3 + 272, 1, 188, -16.5 , 0 );
setMoveKey( spep_2 -3 + 274, 1, 175.1, -6.4 , 0 );
setMoveKey( spep_2 -3 + 276, 1, 159.1, -9.1 , 0 );
setMoveKey( spep_2 -3 + 278, 1, 159.1, -3.2 , 0 );
setMoveKey( spep_2 -3 + 280, 1, 155.2, 4.6 , 0 );
setMoveKey( spep_2 -3 + 282, 1, 179.7, 4.7 , 0 );
setMoveKey( spep_2 -3 + 284, 1, 329.4, 16.7 , 0 );
setMoveKey( spep_2 -3 + 286, 1, 329.4, 16.7 , 0 );

setScaleKey( spep_2 -3 + 216, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 219, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 220, 1, 2.86, 2.86 );
setScaleKey( spep_2 -3 + 222, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 226, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 228, 1, 2.86, 2.86 );
setScaleKey( spep_2 -3 + 230, 1, 2.64, 2.64 );
setScaleKey( spep_2 -3 + 232, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 264, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 266, 1, 2.19, 2.19 );
setScaleKey( spep_2 -3 + 268, 1, 2.14, 2.14 );
setScaleKey( spep_2 -3 + 270, 1, 2.07, 2.07 );
setScaleKey( spep_2 -3 + 272, 1, 1.97, 1.97 );
setScaleKey( spep_2 -3 + 274, 1, 1.85, 1.85 );
setScaleKey( spep_2 -3 + 276, 1, 1.69, 1.69 );
setScaleKey( spep_2 -3 + 278, 1, 1.51, 1.51 );
setScaleKey( spep_2 -3 + 280, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 282, 1, 1.06, 1.06 );
setScaleKey( spep_2 -3 + 284, 1, 0.79, 0.79 );
setScaleKey( spep_2 -3 + 286, 1, 0.79, 0.79 );

setRotateKey( spep_2 -3 + 216, 1, 0 );
setRotateKey( spep_2 -3 + 219, 1, 0 );
setRotateKey( spep_2 -3 + 220, 1, 0 );
setRotateKey( spep_2 -3 + 286, 1, 0 );

-- ** 音 ** --
--オーラ
playSe( spep_2 + 3, 1147 );
setSeVolume( spep_2 + 3, 1147, 32 );
playSe( spep_2 + 19, 1036 );
setSeVolume( spep_2 + 19, 1036, 56 );
playSe( spep_2 + 43, 1036 );
setSeVolume( spep_2 + 43, 1036, 56 );
playSe( spep_2 + 67, 1036 );
setSeVolume( spep_2 + 67, 1036, 56 );
playSe( spep_2 + 91, 1036 );
setSeVolume( spep_2 + 91, 1036, 56 );

--気弾ぐるぐる
playSe( spep_2 + 12, 1254 );
setSeVolume( spep_2 + 12, 1254, 79 );
SE11 = playSe( spep_2 + 49, 1255 );
setSeVolume( spep_2 + 49, 1255, 158 );
stopSe( spep_2 + 231, SE11, 0 );

--ダッシュ
playSe( spep_2 + 118, 1182 );
setSeVolume( spep_2 + 118, 1182, 126 );
playSe( spep_2 + 118, 9 );
playSe( spep_2 + 118, 1067 );
setSeVolume( spep_2 + 118, 1067, 59 );
SE12 = playSe( spep_2 + 118, 1183 );
stopSe( spep_2 + 224, SE12, 0 );

--ヒット
playSe( spep_2 + 174, 1072 );
SE13 = playSe( spep_2 + 181, 20 );
stopSe( spep_2 + 181, SE13, 26 );
playSe( spep_2 + 209, 1179 );
playSe( spep_2 + 209, 1068 );

--爆発
playSe( spep_2 + 277, 1187 );
playSe( spep_2 + 277, 1168 );
setSeVolume( spep_2 + 277, 1168, 60 );
playSe( spep_2 + 299, 1023 );
playSe( spep_2 + 299, 1011 );
playSe( spep_2 + 299, 1033 );
playSe( spep_2 + 303, 1044 );
setSeVolume( spep_2 + 303, 1044, 71 );
playSe( spep_2 + 325, 1159 );
setSeVolume( spep_2 + 325, 1159, 72 );
SE14 = playSe( spep_2 + 332, 1188 );
setSeVolume( spep_2 + 332, 1188, 112 );
setSeVolume( spep_2 + 338, 1188, 112 );
setSeVolume( spep_2 + 340, 1188, 110 );
setSeVolume( spep_2 + 342, 1188, 106 );
setSeVolume( spep_2 + 344, 1188, 102 );
setSeVolume( spep_2 + 348, 1188, 100 );
stopSe( spep_2 + 348, SE14, 13 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 414, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 292 );
endPhase( spep_2 + 412 -2 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気弾を飛ばして攻撃〜気溜め(596F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 );  --気弾を飛ばして攻撃〜気溜め(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 596, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 596, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 596, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 596, first_f, 255 );

first_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 );  --気弾を飛ばして攻撃〜気溜め(ef_002)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 596, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 596, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 596, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 596, first_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 70, 1, 0 );
changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 290.8, -143.5 , 0 );
setMoveKey( spep_0 -3 + 4, 1, 295.1, -143.5 , 0 );
setMoveKey( spep_0 -3 + 5, 1, 295.1, -143.5 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 299.1, -143.5 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 299.1, -143.5 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 302.9, -143.5 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 302.9, -143.5 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 306.6, -143.5 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 310.2, -143.5 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 313.6, -143.5 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 316.9, -143.5 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 320.1, -143.5 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 323.2, -143.5 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 326.2, -143.5 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 329.1, -143.5 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 331.8, -143.5 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 334.4, -143.5 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 336.9, -143.5 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 339.2, -143.5 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 341.4, -143.5 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 343.4, -143.5 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 345.2, -143.5 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 346.8, -143.5 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 348.2, -143.5 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 349.4, -143.5 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 350.3, -143.5 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 350.9, -143.5 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 351.1, -143.5 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 355, -143.7 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 367.7, -144.4 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 390.3, -145.6 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 425.2, -147.5 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 475.3, -150.1 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 545.5, -153.8 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 645.1, -159.1 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 797.2, -167.3 , 0 );
setMoveKey( spep_0 -3 + 69, 1, 1184.8, -187.8 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 1222.8, -200.8 , 0 );

setScaleKey( spep_0 + 0, 1, 3.75, 3.75 );
setScaleKey( spep_0 + 1, 1, 3.75, 3.75 );
setScaleKey( spep_0 + 2, 1, 3.75, 3.75 );
setScaleKey( spep_0 + 3, 1, 3.75, 3.75 );
setScaleKey( spep_0 + 4, 1, 3.75, 3.75 );
setScaleKey( spep_0 + 5, 1, 3.75, 3.75 );
setScaleKey( spep_0 + 6, 1, 3.75, 3.75 );
setScaleKey( spep_0 -3 + 50, 1, 3.75, 3.75 );
setScaleKey( spep_0 -3 + 52, 1, 3.77, 3.77 );
setScaleKey( spep_0 -3 + 54, 1, 3.82, 3.82 );
setScaleKey( spep_0 -3 + 56, 1, 3.93, 3.93 );
setScaleKey( spep_0 -3 + 58, 1, 4.08, 4.08 );
setScaleKey( spep_0 -3 + 60, 1, 4.31, 4.31 );
setScaleKey( spep_0 -3 + 62, 1, 4.62, 4.62 );
setScaleKey( spep_0 -3 + 64, 1, 5.07, 5.07 );
setScaleKey( spep_0 -3 + 66, 1, 5.76, 5.76 );
setScaleKey( spep_0 -3 + 69, 1, 7.5, 7.5 );
setScaleKey( spep_0 -3 + 70, 1, 7.5, 7.5 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 70, 1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 212, 1, 1 );
changeAnime( spep_0 -3 + 212, 1, 117 );

setMoveKey( spep_0 -3 + 212, 1, 203.8, -167.2 , 0 );
setScaleKey( spep_0 -3 + 212, 1, 0.7, 0.7 );
setRotateKey( spep_0 -3 + 212, 1, 0 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 598, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--入り
playSe( spep_0 + 0, 8 );

--オーラ
playSe( spep_0 + 0, 1036 );
setSeVolume( spep_0 + 0, 1036, 56 );
playSe( spep_0 + 0, 1147 );
setSeVolume( spep_0 + 0, 1147, 35 );
playSe( spep_0 + 24, 1036 );
setSeVolume( spep_0 + 24, 1036, 56 );
playSe( spep_0 + 48, 1036 );
setSeVolume( spep_0 + 48, 1036, 56 );
playSe( spep_0 + 72, 1036 );
setSeVolume( spep_0 + 72, 1036, 56 );
playSe( spep_0 + 96, 1036 );
setSeVolume( spep_0 + 96, 1036, 25 );
playSe( spep_0 + 120, 1036 );
setSeVolume( spep_0 + 120, 1036, 25 );
playSe( spep_0 + 144, 1036 );
setSeVolume( spep_0 + 144, 1036, 25 );
playSe( spep_0 + 168, 1036 );
setSeVolume( spep_0 + 168, 1036, 25 );
playSe( spep_0 + 192, 1036 );
setSeVolume( spep_0 + 192, 1036, 25 );
SE000 = playSe( spep_0 + 206, 1148 );
setSeVolume( spep_0 + 206, 1148, 35 );
playSe( spep_0 + 216, 1036 );
setSeVolume( spep_0 + 216, 1036, 25 );
playSe( spep_0 + 240, 1036 );
setSeVolume( spep_0 + 240, 1036, 25 );
playSe( spep_0 + 264, 1036 );
setSeVolume( spep_0 + 264, 1036, 25 );
playSe( spep_0 + 288, 1036 );
setSeVolume( spep_0 + 288, 1036, 25 );
playSe( spep_0 + 312, 1036 );
setSeVolume( spep_0 + 312, 1036, 25 );

--手を後ろにする
playSe( spep_0 + 38, 1072 );
setSeVolume( spep_0 + 38, 1072, 112 );
playSe( spep_0 + 81, 1003 );

--気弾発生１
SE0 = playSe( spep_0 + 109, 1252 );
setSeVolume( spep_0 + 109, 1252, 178 );
stopSe( spep_0 + 168, SE0, 0 );

SE1 = playSe( spep_0 + 109, 1262 );
setSeVolume( spep_0 + 109, 1262, 79 );
setSeVolume( spep_0 + 120, 1262, 79 );
setSeVolume( spep_0 + 124, 1262, 58 );
setSeVolume( spep_0 + 128, 1262, 51 );
setSeVolume( spep_0 + 132, 1262, 46 );
setSeVolume( spep_0 + 136, 1262, 42 );
setSeVolume( spep_0 + 140, 1262, 38 );
setSeVolume( spep_0 + 144, 1262, 34 );
setSeVolume( spep_0 + 148, 1262, 27 );
setSeVolume( spep_0 + 152, 1262, 22 );
setSeVolume( spep_0 + 156, 1262, 14 );
setSeVolume( spep_0 + 160, 1262, 9 );
setSeVolume( spep_0 + 164, 1262, 3 );
setSeVolume( spep_0 + 166, 1262, 0 );
stopSe( spep_0 + 166, SE1, 0 );

playSe( spep_0 + 113, 1253 );
setSeVolume( spep_0 + 113, 1253, 126 );

--気弾発生２
SE2 = playSe( spep_0 + 168, 1252 );
setSeVolume( spep_0 + 168, 1252, 178 );
stopSe( spep_0 + 318, SE2, 0 );

playSe( spep_0 + 168, 1253 );
setSeVolume( spep_0 + 168, 1253, 126 );

SE3 = playSe( spep_0 + 168, 1262 );
stopSe( spep_0 + 181, SE3, 34 );

--手を上にあげる
SE4 = playSe( spep_0 + 228, 1199 );
stopSe( spep_0 + 298, SE4, 0 );

--気弾発射
SE5 = playSe( spep_0 + 313, 1004 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 330; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE5, 0 );
stopSe( SP_dodge - 12, SE000, 0 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
setMoveKey( SP_dodge + 0, 1, 203.8, -167.2 , 0 );
setMoveKey( SP_dodge + 10, 1, 203.8, -167.2 , 0 );
setScaleKey( SP_dodge + 0, 1, 0.7, 0.7 );
setScaleKey( SP_dodge + 10, 1, 0.7, 0.7 );
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

spep_x = spep_0 + 516;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );

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

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 422, 1, 0 );
changeAnime( spep_0 -3 + 342, 1, 104 );
changeAnime( spep_0 -3 + 360, 1, 106 );

setMoveKey( spep_0 -3 + 341, 1, 203.8, -167.2 , 0 );
setMoveKey( spep_0 -3 + 342, 1, -40, -1.7 , 0 );
setMoveKey( spep_0 -3 + 344, 1, 11.2, -1.6 , 0 );
setMoveKey( spep_0 -3 + 346, 1, 24.9, -1.6 , 0 );
setMoveKey( spep_0 -3 + 348, 1, 32.3, -1.6 , 0 );
setMoveKey( spep_0 -3 + 350, 1, 36.6, -1.6 , 0 );
setMoveKey( spep_0 -3 + 352, 1, 38.9, -1.6 , 0 );
setMoveKey( spep_0 -3 + 354, 1, 39.8, -1.6 , 0 );
setMoveKey( spep_0 -3 + 356, 1, 40, -1.7 , 0 );
setMoveKey( spep_0 -3 + 359, 1, 40, -1.7 , 0 );
setMoveKey( spep_0 -3 + 360, 1, -20, 26.4 , 0 );
setMoveKey( spep_0 -3 + 362, 1, -23.7, 28.4 , 0 );
setMoveKey( spep_0 -3 + 364, 1, -27, 41.9 , 0 );
setMoveKey( spep_0 -3 + 366, 1, -25.8, 31.4 , 0 );
setMoveKey( spep_0 -3 + 368, 1, -20.4, 32.6 , 0 );
setMoveKey( spep_0 -3 + 370, 1, -22.6, 21.9 , 0 );
setMoveKey( spep_0 -3 + 372, 1, -28.2, 34.7 , 0 );
setMoveKey( spep_0 -3 + 374, 1, -29.3, 35.1 , 0 );
setMoveKey( spep_0 -3 + 376, 1, -33.7, 27.5 , 0 );
setMoveKey( spep_0 -3 + 378, 1, 35.5, 72.7 , 0 );
setMoveKey( spep_0 -3 + 380, 1, 42.8, 80.9 , 0 );
setMoveKey( spep_0 -3 + 382, 1, 50.1, 81 , 0 );
setMoveKey( spep_0 -3 + 384, 1, 65.9, 58 , 0 );
setMoveKey( spep_0 -3 + 386, 1, 101.3, 83.2 , 0 );
setMoveKey( spep_0 -3 + 388, 1, 193.9, 65.3 , 0 );
setMoveKey( spep_0 -3 + 390, 1, 338.1, 88.3 , 0 );
setMoveKey( spep_0 -3 + 392, 1, 473, 70.7 , 0 );
setMoveKey( spep_0 -3 + 394, 1, 576.9, 85.1 , 0 );
setMoveKey( spep_0 -3 + 396, 1, 635.8, 82.4 , 0 );
setMoveKey( spep_0 -3 + 398, 1, 680.9, 103 , 0 );
setMoveKey( spep_0 -3 + 400, 1, 712.3, 82.9 , 0 );
setMoveKey( spep_0 -3 + 402, 1, 738.5, 95.6 , 0 );
setMoveKey( spep_0 -3 + 404, 1, 754.5, 79.8 , 0 );
setMoveKey( spep_0 -3 + 406, 1, 766.2, 97 , 0 );
setMoveKey( spep_0 -3 + 408, 1, 778.6, 92.3 , 0 );
setMoveKey( spep_0 -3 + 410, 1, 784.1, 104.1 , 0 );
setMoveKey( spep_0 -3 + 412, 1, 784, 86.1 , 0 );
setMoveKey( spep_0 -3 + 414, 1, 791.1, 91.4 , 0 );
setMoveKey( spep_0 -3 + 416, 1, 791.8, 79.9 , 0 );
setMoveKey( spep_0 -3 + 418, 1, 791.6, 101.5 , 0 );
setMoveKey( spep_0 -3 + 420, 1, 794.4, 87.9 , 0 );
setMoveKey( spep_0 -3 + 422, 1, 794.4, 87.9 , 0 );

setScaleKey( spep_0 -3 + 341, 1, 0.7, 0.7 );
setScaleKey( spep_0 -3 + 342, 1, 2, 2 );
setScaleKey( spep_0 -3 + 359, 1, 2, 2 );
setScaleKey( spep_0 -3 + 360, 1, 2, 2 );
setScaleKey( spep_0 -3 + 422, 1, 2, 2 );

setRotateKey( spep_0 -3 + 341, 1, 0 );
setRotateKey( spep_0 -3 + 342, 1, 0 );
setRotateKey( spep_0 -3 + 359, 1, 0 );
setRotateKey( spep_0 -3 + 360, 1, -67 );
setRotateKey( spep_0 -3 + 362, 1, -66.1 );
setRotateKey( spep_0 -3 + 364, 1, -65.4 );
setRotateKey( spep_0 -3 + 366, 1, -64.7 );
setRotateKey( spep_0 -3 + 368, 1, -64.2 );
setRotateKey( spep_0 -3 + 370, 1, -63.8 );
setRotateKey( spep_0 -3 + 372, 1, -63.5 );
setRotateKey( spep_0 -3 + 374, 1, -63.3 );
setRotateKey( spep_0 -3 + 376, 1, -63.3 );
setRotateKey( spep_0 -3 + 378, 1, -29 );
setRotateKey( spep_0 -3 + 380, 1, -28.9 );
setRotateKey( spep_0 -3 + 382, 1, -28.6 );
setRotateKey( spep_0 -3 + 384, 1, -27.9 );
setRotateKey( spep_0 -3 + 386, 1, -26.4 );
setRotateKey( spep_0 -3 + 388, 1, -22.8 );
setRotateKey( spep_0 -3 + 390, 1, -16.7 );
setRotateKey( spep_0 -3 + 392, 1, -11.2 );
setRotateKey( spep_0 -3 + 394, 1, -7.1 );
setRotateKey( spep_0 -3 + 396, 1, -4.3 );
setRotateKey( spep_0 -3 + 398, 1, -2.5 );
setRotateKey( spep_0 -3 + 400, 1, -1.2 );
setRotateKey( spep_0 -3 + 402, 1, -0.3 );
setRotateKey( spep_0 -3 + 404, 1, 0.4 );
setRotateKey( spep_0 -3 + 406, 1, 0.9 );
setRotateKey( spep_0 -3 + 408, 1, 1.2 );
setRotateKey( spep_0 -3 + 410, 1, 1.5 );
setRotateKey( spep_0 -3 + 412, 1, 1.7 );
setRotateKey( spep_0 -3 + 414, 1, 1.8 );
setRotateKey( spep_0 -3 + 416, 1, 1.9 );
setRotateKey( spep_0 -3 + 418, 1, 2 );
setRotateKey( spep_0 -3 + 422, 1, 2 );

-- ** 音 ** --
--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

--気弾発射
playSe( spep_0 + 318, 1003 );
playSe( spep_0 + 325, 1027 );
playSe( spep_0 + 325, 1021 );
playSe( spep_0 + 330, 1016 );
playSe( spep_0 + 340, 1016 );
playSe( spep_0 + 351, 1016 );
playSe( spep_0 + 359, 1016 );

--爆発
playSe( spep_0 + 357, 1023 );
playSe( spep_0 + 369, 1025 );
SE6 = playSe( spep_0 + 380, 1067 );
stopSe( spep_0 + 427, SE6, 35 );

--気弾貯め
SE7 = playSe( spep_0 + 412, 1147 );
setSeVolume( spep_0 + 412, 1147, 63 );
SE8 = playSe( spep_0 + 423, 1252 );
setSeVolume( spep_0 + 423, 1252, 178 );
SE9 = playSe( spep_0 + 423, 1253 );
setSeVolume( spep_0 + 423, 1253, 63 );
stopSe( spep_0 + 458, SE9, 0 );

playSe( spep_0 + 458, 1253 );
setSeVolume( spep_0 + 458, 1253, 188 );

SE10 = playSe( spep_0 + 458, 1262 );
setSeVolume( spep_0 + 458, 1262, 63 );
setSeVolume( spep_0 + 514, 1262, 63 );
setSeVolume( spep_0 + 518, 1262, 59 );
setSeVolume( spep_0 + 522, 1262, 46 );
setSeVolume( spep_0 + 526, 1262, 41 );
setSeVolume( spep_0 + 530, 1262, 37 );
setSeVolume( spep_0 + 534, 1262, 32 );
setSeVolume( spep_0 + 538, 1262, 25 );
setSeVolume( spep_0 + 542, 1262, 19 );
setSeVolume( spep_0 + 546, 1262, 12 );
setSeVolume( spep_0 + 550, 1262, 7 );
setSeVolume( spep_0 + 554, 1262, 3 );
setSeVolume( spep_0 + 558, 1262, 0 );
stopSe( spep_0 + 558, SE10, 0 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 596;

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

--気弾貯め
stopSe( spep_1 + 2, SE7, 0 );
stopSe( spep_1 + 2, SE8, 0 );

--オーラ
playSe( spep_1 + 89, 1036 );
setSeVolume( spep_1 + 89, 1036, 56 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;

------------------------------------------------------
-- 腕に気を溜めて突進〜フィニッシュ(414F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 );  --腕に気を溜めて突進〜フィニッシュ(ef_003)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 414, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 414, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 414, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 414, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_04x, 0x80, -1, 0, 0, 0 );  --腕に気を溜めて突進〜フィニッシュ(ef_004)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 414, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 414, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 414, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 414, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 216, 1, 1 );
setDisp( spep_2 -3 + 286, 1, 0 );
changeAnime( spep_2 -3 + 216, 1, 106 );
changeAnime( spep_2 -3 + 220, 1, 108 );

setMoveKey( spep_2 -3 + 216, 1, 24.5, -13.7 , 0 );
setMoveKey( spep_2 -3 + 218, 1, 104.6, -13.7 , 0 );
setMoveKey( spep_2 -3 + 219, 1, 104.6, -13.7 , 0 );
setMoveKey( spep_2 -3 + 220, 1, 162.7, -24.2 , 0 );
setMoveKey( spep_2 -3 + 222, 1, 156.3, -19.1 , 0 );
setMoveKey( spep_2 -3 + 224, 1, 136.9, -19.7 , 0 );
setMoveKey( spep_2 -3 + 226, 1, 173.1, -19.9 , 0 );
setMoveKey( spep_2 -3 + 228, 1, 230.3, -20.9 , 0 );
setMoveKey( spep_2 -3 + 230, 1, 226.2, -25.2 , 0 );
setMoveKey( spep_2 -3 + 232, 1, 191.2, -14.5 , 0 );
setMoveKey( spep_2 -3 + 234, 1, 215.9, -31.1 , 0 );
setMoveKey( spep_2 -3 + 236, 1, 194.6, -9.9 , 0 );
setMoveKey( spep_2 -3 + 238, 1, 202.5, -33 , 0 );
setMoveKey( spep_2 -3 + 240, 1, 209.3, -13.2 , 0 );
setMoveKey( spep_2 -3 + 242, 1, 201.7, -25.8 , 0 );
setMoveKey( spep_2 -3 + 244, 1, 211.1, -16.8 , 0 );
setMoveKey( spep_2 -3 + 246, 1, 209, -19.7 , 0 );
setMoveKey( spep_2 -3 + 248, 1, 209.1, -16.7 , 0 );
setMoveKey( spep_2 -3 + 250, 1, 216.2, -19.3 , 0 );
setMoveKey( spep_2 -3 + 252, 1, 210.1, -16.6 , 0 );
setMoveKey( spep_2 -3 + 254, 1, 218.8, -19.2 , 0 );
setMoveKey( spep_2 -3 + 256, 1, 213.7, -21.6 , 0 );
setMoveKey( spep_2 -3 + 258, 1, 216.9, -14.5 , 0 );
setMoveKey( spep_2 -3 + 260, 1, 216.4, -23.4 , 0 );
setMoveKey( spep_2 -3 + 262, 1, 217.1, -14.6 , 0 );
setMoveKey( spep_2 -3 + 264, 1, 216, -23.5 , 0 );
setMoveKey( spep_2 -3 + 266, 1, 212.6, -16.6 , 0 );
setMoveKey( spep_2 -3 + 268, 1, 209.5, -20.9 , 0 );
setMoveKey( spep_2 -3 + 270, 1, 193.6, -14.2 , 0 );
setMoveKey( spep_2 -3 + 272, 1, 188, -16.5 , 0 );
setMoveKey( spep_2 -3 + 274, 1, 175.1, -6.4 , 0 );
setMoveKey( spep_2 -3 + 276, 1, 159.1, -9.1 , 0 );
setMoveKey( spep_2 -3 + 278, 1, 159.1, -3.2 , 0 );
setMoveKey( spep_2 -3 + 280, 1, 155.2, 4.6 , 0 );
setMoveKey( spep_2 -3 + 282, 1, 179.7, 4.7 , 0 );
setMoveKey( spep_2 -3 + 284, 1, 329.4, 16.7 , 0 );
setMoveKey( spep_2 -3 + 286, 1, 329.4, 16.7 , 0 );

setScaleKey( spep_2 -3 + 216, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 219, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 220, 1, 2.86, 2.86 );
setScaleKey( spep_2 -3 + 222, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 226, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 228, 1, 2.86, 2.86 );
setScaleKey( spep_2 -3 + 230, 1, 2.64, 2.64 );
setScaleKey( spep_2 -3 + 232, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 264, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 266, 1, 2.19, 2.19 );
setScaleKey( spep_2 -3 + 268, 1, 2.14, 2.14 );
setScaleKey( spep_2 -3 + 270, 1, 2.07, 2.07 );
setScaleKey( spep_2 -3 + 272, 1, 1.97, 1.97 );
setScaleKey( spep_2 -3 + 274, 1, 1.85, 1.85 );
setScaleKey( spep_2 -3 + 276, 1, 1.69, 1.69 );
setScaleKey( spep_2 -3 + 278, 1, 1.51, 1.51 );
setScaleKey( spep_2 -3 + 280, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 282, 1, 1.06, 1.06 );
setScaleKey( spep_2 -3 + 284, 1, 0.79, 0.79 );
setScaleKey( spep_2 -3 + 286, 1, 0.79, 0.79 );

setRotateKey( spep_2 -3 + 216, 1, 0 );
setRotateKey( spep_2 -3 + 219, 1, 0 );
setRotateKey( spep_2 -3 + 220, 1, 0 );
setRotateKey( spep_2 -3 + 286, 1, 0 );

-- ** 音 ** --
--オーラ
playSe( spep_2 + 3, 1147 );
setSeVolume( spep_2 + 3, 1147, 32 );
playSe( spep_2 + 19, 1036 );
setSeVolume( spep_2 + 19, 1036, 56 );
playSe( spep_2 + 43, 1036 );
setSeVolume( spep_2 + 43, 1036, 56 );
playSe( spep_2 + 67, 1036 );
setSeVolume( spep_2 + 67, 1036, 56 );
playSe( spep_2 + 91, 1036 );
setSeVolume( spep_2 + 91, 1036, 56 );

--気弾ぐるぐる
playSe( spep_2 + 12, 1254 );
setSeVolume( spep_2 + 12, 1254, 79 );
SE11 = playSe( spep_2 + 49, 1255 );
setSeVolume( spep_2 + 49, 1255, 158 );
stopSe( spep_2 + 231, SE11, 0 );

--ダッシュ
playSe( spep_2 + 118, 1182 );
setSeVolume( spep_2 + 118, 1182, 126 );
playSe( spep_2 + 118, 9 );
playSe( spep_2 + 118, 1067 );
setSeVolume( spep_2 + 118, 1067, 59 );
SE12 = playSe( spep_2 + 118, 1183 );
stopSe( spep_2 + 224, SE12, 0 );

--ヒット
playSe( spep_2 + 174, 1072 );
SE13 = playSe( spep_2 + 181, 20 );
stopSe( spep_2 + 181, SE13, 26 );
playSe( spep_2 + 209, 1179 );
playSe( spep_2 + 209, 1068 );

--爆発
playSe( spep_2 + 277, 1187 );
playSe( spep_2 + 277, 1168 );
setSeVolume( spep_2 + 277, 1168, 60 );
playSe( spep_2 + 299, 1023 );
playSe( spep_2 + 299, 1011 );
playSe( spep_2 + 299, 1033 );
playSe( spep_2 + 303, 1044 );
setSeVolume( spep_2 + 303, 1044, 71 );
playSe( spep_2 + 325, 1159 );
setSeVolume( spep_2 + 325, 1159, 72 );
SE14 = playSe( spep_2 + 332, 1188 );
setSeVolume( spep_2 + 332, 1188, 112 );
setSeVolume( spep_2 + 338, 1188, 112 );
setSeVolume( spep_2 + 340, 1188, 110 );
setSeVolume( spep_2 + 342, 1188, 106 );
setSeVolume( spep_2 + 344, 1188, 102 );
setSeVolume( spep_2 + 348, 1188, 100 );
stopSe( spep_2 + 348, SE14, 13 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 414, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 292 );
endPhase( spep_2 + 412 -2 );

end