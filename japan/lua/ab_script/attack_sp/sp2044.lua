--魔人ブウ(アルティメット悟飯吸収)_破壊光弾

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
SP_01 = 155936;  --構え〜敵が岩に激突
SP_02 = 155937;  --構え〜敵が岩に激突
SP_03 = 155938;  --気溜め〜光弾をかかげる
SP_04 = 155939;  --投げる〜着弾
SP_05 = 155940;  --投げる〜着弾

--敵側
SP_01x = 155941;  --構え〜敵が岩に激突
SP_03x = 155942;  --気溜め〜光弾をかかげる
SP_04x = 155943;  --投げる〜着弾

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
-- 構え〜敵が岩に激突(470F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 472, 0x100, -1, 0, 0, 0 );  --構え〜敵が岩に激突(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 472, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 472, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 472, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 472, first_f, 255 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 472, 0x80, -1, 0, 0, 0 );  --構え〜敵が岩に激突(ef_002)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 472, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 472, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 472, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 472, first_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 40, 1, 0 );
changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 535.1, 273.9 , 0 );
setMoveKey( spep_0 -3 + 4, 1, 481.7, 251.2 , 0 );
setMoveKey( spep_0 -3 + 5, 1, 481.7, 251.2 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 433.2, 230.5 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 433.2, 230.5 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 393.1, 213.4 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 393.1, 213.4 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 361.3, 199.8 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 336.3, 189.2 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 316.3, 180.6 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 300, 173.7 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 286.4, 167.9 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 274.8, 162.9 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 263.9, 158.3 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 253.3, 153.8 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 242.7, 149.3 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 232.3, 144.8 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 221.9, 140.4 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 211.6, 136 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 201.4, 131.6 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 191.1, 127.3 , 0 );
setMoveKey( spep_0 -3 + 39, 1, 181, 123 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 181, 123 , 0 );

setScaleKey( spep_0 + 0, 1, 2.81, 2.81 );
setScaleKey( spep_0 -3 + 4, 1, 2.65, 2.65 );
setScaleKey( spep_0 -3 + 5, 1, 2.65, 2.65 );
setScaleKey( spep_0 -3 + 6, 1, 2.51, 2.51 );
setScaleKey( spep_0 -3 + 7, 1, 2.51, 2.51 );
setScaleKey( spep_0 -3 + 8, 1, 2.39, 2.39 );
setScaleKey( spep_0 -3 + 9, 1, 2.39, 2.39 );
setScaleKey( spep_0 -3 + 10, 1, 2.29, 2.29 );
setScaleKey( spep_0 -3 + 12, 1, 2.22, 2.22 );
setScaleKey( spep_0 -3 + 14, 1, 2.16, 2.16 );
setScaleKey( spep_0 -3 + 16, 1, 2.11, 2.11 );
setScaleKey( spep_0 -3 + 18, 1, 2.07, 2.07 );
setScaleKey( spep_0 -3 + 20, 1, 2.04, 2.04 );
setScaleKey( spep_0 -3 + 22, 1, 2.01, 2.01 );
setScaleKey( spep_0 -3 + 24, 1, 1.98, 1.98 );
setScaleKey( spep_0 -3 + 26, 1, 1.94, 1.94 );
setScaleKey( spep_0 -3 + 28, 1, 1.91, 1.91 );
setScaleKey( spep_0 -3 + 30, 1, 1.88, 1.88 );
setScaleKey( spep_0 -3 + 32, 1, 1.85, 1.85 );
setScaleKey( spep_0 -3 + 34, 1, 1.82, 1.82 );
setScaleKey( spep_0 -3 + 36, 1, 1.79, 1.79 );
setScaleKey( spep_0 -3 + 39, 1, 1.76, 1.76 );
setScaleKey( spep_0 -3 + 40, 1, 1.76, 1.76 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 40, 1, 0 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 472, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--入り
SE001 = playSe( spep_0 + 0, 44 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 79 );
setPitch( spep_0 + 0, SE001, -600 );
setTimeStretch( SE001, 0.6, 10, 1 );

--腕ひく
SE002 = playSe( spep_0 + 46, 1004 );
setPitch( spep_0 + 46, SE002, -600 );
setTimeStretch( SE002, 0.83, 10, 1 );

--顔アップ
SE003 = playSe( spep_0 + 64, 1072 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 80; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE001, 0 );
stopSe( SP_dodge - 12, SE002, 0 );
stopSe( SP_dodge - 12, SE003, 0 );

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

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 134, 1, 1 );
setDisp( spep_0 -3 + 178, 1, 0 );
setDisp( spep_0 -3 + 188, 1, 1 );
setDisp( spep_0 -3 + 194, 1, 0 );
setDisp( spep_0 -3 + 200, 1, 1 );
setDisp( spep_0 -3 + 204, 1, 0 );
setDisp( spep_0 -3 + 208, 1, 1 );
setDisp( spep_0 -3 + 280, 1, 0 );
setDisp( spep_0 -3 + 312, 1, 1 );
setDisp( spep_0 -3 + 348, 1, 0 );
setDisp( spep_0 -3 + 360, 1, 1 );
setDisp( spep_0 -3 + 388, 1, 0 );
changeAnime( spep_0 -3 + 134, 1, 107 );
changeAnime( spep_0 -3 + 200, 1, 108 );
changeAnime( spep_0 -3 + 254, 1, 106 );
changeAnime( spep_0 -3 + 312, 1, 107 );
changeAnime( spep_0 -3 + 360, 1, 5 );

e1 = 110;
setMoveKey( spep_0 -3 + 134, 1, -12.5, -143 +e1 , 0 );  --殴られる
setMoveKey( spep_0 -3 + 136, 1, 1.1, -115.7 +e1 , 0 );
setMoveKey( spep_0 -3 + 138, 1, 27.7, -125.7 +e1 , 0 );
setMoveKey( spep_0 -3 + 140, 1, 15.4, -125.5 +e1 , 0 );
setMoveKey( spep_0 -3 + 142, 1, 47.1, -106.5 +e1 , 0 );
setMoveKey( spep_0 -3 + 144, 1, 48.8, -102.3 +e1 , 0 );
setMoveKey( spep_0 -3 + 146, 1, 73.5, -97.6 +e1 , 0 );
setMoveKey( spep_0 -3 + 148, 1, 78.1, -88.8 +e1 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 101.1, -79.4 +e1 , 0 );
setMoveKey( spep_0 -3 + 152, 1, 94.2, -73.9 +e1 , 0 );
setMoveKey( spep_0 -3 + 154, 1, 121.5, -66.3 +e1 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 124.1, -52.8 +e1 , 0 );
setMoveKey( spep_0 -3 + 158, 1, 129.6, -58.4 +e1 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 114.9, -46.3 +e1 , 0 );
setMoveKey( spep_0 -3 + 162, 1, 131.9, -44.5 +e1 , 0 );
setMoveKey( spep_0 -3 + 164, 1, 139.8, -61.5 +e1 , 0 );
setMoveKey( spep_0 -3 + 166, 1, 151.3, -62 +e1 , 0 );
setMoveKey( spep_0 -3 + 168, 1, 148.7, -38.5 +e1 , 0 );
setMoveKey( spep_0 -3 + 170, 1, 138.9, -57.3 +e1 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 155.6, -46.2 +e1 , 0 );
setMoveKey( spep_0 -3 + 174, 1, 152.3, -55.4 +e1 , 0 );
setMoveKey( spep_0 -3 + 176, 1, 164.3, -55.8 +e1 , 0 );
setMoveKey( spep_0 -3 + 178, 1, 164.3, -55.8 +e1 , 0 );
setMoveKey( spep_0 -3 + 188, 1, 461.8, 131.1 +e1 , 0 );
setMoveKey( spep_0 -3 + 192, 1, 461.8, 131.1 +e1 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 461.8, 131.1 +e1 , 0 );
setMoveKey( spep_0 -3 + 200, 1, 183.5, 135 , 0 );  --蹴られる
setMoveKey( spep_0 -3 + 204, 1, 183.5, 135 , 0 );
setMoveKey( spep_0 -3 + 208, 1, 183.5, 135 , 0 );
setMoveKey( spep_0 -3 + 210, 1, 183.5, 135 , 0 );
setMoveKey( spep_0 -3 + 212, 1, 187.5, 203 , 0 );
setMoveKey( spep_0 -3 + 214, 1, 183.5, 141 , 0 );
setMoveKey( spep_0 -3 + 216, 1, 187.5, 203 , 0 );
setMoveKey( spep_0 -3 + 218, 1, 183.5, 141 , 0 );
setMoveKey( spep_0 -3 + 220, 1, 183.5, 143 , 0 );
setMoveKey( spep_0 -3 + 222, 1, 185.5, 203 , 0 );
setMoveKey( spep_0 -3 + 223, 1, 185.5, 203 , 0 );
setMoveKey( spep_0 -3 + 224, 1, 219.9, -159.2 , 0 );
setMoveKey( spep_0 -3 + 226, 1, 208.8, -160.4 , 0 );
setMoveKey( spep_0 -3 + 228, 1, 197.6, -161.5 , 0 );
setMoveKey( spep_0 -3 + 230, 1, 186.6, -162.6 , 0 );
setMoveKey( spep_0 -3 + 232, 1, 175.4, -163.8 , 0 );
setMoveKey( spep_0 -3 + 234, 1, 164.3, -164.9 , 0 );
setMoveKey( spep_0 -3 + 236, 1, 153.2, -166.1 , 0 );
setMoveKey( spep_0 -3 + 238, 1, 142.1, -167.2 , 0 );
setMoveKey( spep_0 -3 + 240, 1, 131, -168.4 , 0 );
setMoveKey( spep_0 -3 + 242, 1, 119.9, -169.5 , 0 );
setMoveKey( spep_0 -3 + 244, 1, 108.8, -170.7 , 0 );
setMoveKey( spep_0 -3 + 246, 1, 97.7, -171.8 , 0 );
setMoveKey( spep_0 -3 + 248, 1, 86.5, -173 , 0 );
setMoveKey( spep_0 -3 + 250, 1, 75.4, -174.1 , 0 );
setMoveKey( spep_0 -3 + 252, 1, 64.3, -175.3 , 0 );
setMoveKey( spep_0 -3 + 253, 1, 64.3, -175.3 , 0 );
setMoveKey( spep_0 -3 + 254, 1, -157.3, -307.2 , 0 );  --背中殴られる
setMoveKey( spep_0 -3 + 256, 1, -157.4, -311.2 , 0 );
setMoveKey( spep_0 -3 + 258, 1, -177.4, -331.2 , 0 );
setMoveKey( spep_0 -3 + 260, 1, -157.4, -311.2 , 0 );
setMoveKey( spep_0 -3 + 262, 1, -177.4, -331.2 , 0 );
setMoveKey( spep_0 -3 + 264, 1, -157.4, -311.2 , 0 );
setMoveKey( spep_0 -3 + 266, 1, -157.4, -311.2 , 0 );
setMoveKey( spep_0 -3 + 268, 1, -177.4, -331.2 , 0 );
setMoveKey( spep_0 -3 + 270, 1, -157.4, -311.2 , 0 );
setMoveKey( spep_0 -3 + 272, 1, -177.4, -331.2 , 0 );
setMoveKey( spep_0 -3 + 274, 1, -157.4, -311.2 , 0 );
setMoveKey( spep_0 -3 + 276, 1, -157.4, -311.2 , 0 );
setMoveKey( spep_0 -3 + 278, 1, -177.4, -331.2 , 0 );
setMoveKey( spep_0 -3 + 280, 1, -177.4, -331.2 , 0 );
setMoveKey( spep_0 -3 + 312, 1, 121.1, 96.2 , 0 );  --蹴られる
setMoveKey( spep_0 -3 + 314, 1, 110.4, 85.2 , 0 );
setMoveKey( spep_0 -3 + 316, 1, 106.2, 74.1 , 0 );
setMoveKey( spep_0 -3 + 318, 1, 101.5, 84.3 , 0 );
setMoveKey( spep_0 -3 + 320, 1, 97, 59.4 , 0 );
setMoveKey( spep_0 -3 + 322, 1, 85.9, 55.9 , 0 );
setMoveKey( spep_0 -3 + 324, 1, 84, 54 , 0 );
setMoveKey( spep_0 -3 + 326, 1, 76.1, 55.2 , 0 );
setMoveKey( spep_0 -3 + 328, 1, 71.7, 43.4 , 0 );
setMoveKey( spep_0 -3 + 330, 1, 58.9, 41.5 , 0 );
setMoveKey( spep_0 -3 + 332, 1, 75.2, 40.6 , 0 );
setMoveKey( spep_0 -3 + 334, 1, 61.5, 32.6 , 0 );
setMoveKey( spep_0 -3 + 336, 1, 63.4, 37.6 , 0 );
setMoveKey( spep_0 -3 + 338, 1, 68.5, 37.5 , 0 );
setMoveKey( spep_0 -3 + 340, 1, 71.8, 28.1 , 0 );
setMoveKey( spep_0 -3 + 342, 1, 70.5, 34.1 , 0 );
setMoveKey( spep_0 -3 + 344, 1, 74.6, 42.2 , 0 );
setMoveKey( spep_0 -3 + 346, 1, 74.8, 39 , 0 );
setMoveKey( spep_0 -3 + 348, 1, 74.8, 39 , 0 );
setMoveKey( spep_0 -3 + 360, 1, -379, 560.4 , 0 );  --吹っ飛ぶ
setMoveKey( spep_0 -3 + 362, 1, -36.4, 258 , 0 );
setMoveKey( spep_0 -3 + 364, 1, 62.6, 170.6 , 0 );
setMoveKey( spep_0 -3 + 366, 1, 105.5, 132.7 , 0 );
setMoveKey( spep_0 -3 + 368, 1, 120.3, 119.7 , 0 );
setMoveKey( spep_0 -3 + 370, 1, 130, 111.1 , 0 );
setMoveKey( spep_0 -3 + 372, 1, 137.4, 104.6 , 0 );
setMoveKey( spep_0 -3 + 374, 1, 143.2, 99.4 , 0 );
setMoveKey( spep_0 -3 + 376, 1, 148, 95.2 , 0 );
setMoveKey( spep_0 -3 + 378, 1, 151.8, 91.8 , 0 );
setMoveKey( spep_0 -3 + 380, 1, 154.8, 89.2 , 0 );
setMoveKey( spep_0 -3 + 382, 1, 157, 87.3 , 0 );
setMoveKey( spep_0 -3 + 384, 1, 158.4, 86.1 , 0 );
setMoveKey( spep_0 -3 + 386, 1, 158.8, 85.7 , 0 );
setMoveKey( spep_0 -3 + 388, 1, 158.8, 85.7 , 0 );

a = 0.4;
setScaleKey( spep_0 -3 + 134, 1, 2.07 +a, 2.07 +a );  --殴られる
setScaleKey( spep_0 -3 + 136, 1, 2.08 +a, 2.08 +a );
setScaleKey( spep_0 -3 + 138, 1, 2.1 +a, 2.1 +a );
setScaleKey( spep_0 -3 + 140, 1, 2.11 +a, 2.11 +a );
setScaleKey( spep_0 -3 + 142, 1, 2.12 +a, 2.12 +a );
setScaleKey( spep_0 -3 + 144, 1, 2.13 +a, 2.13 +a );
setScaleKey( spep_0 -3 + 146, 1, 2.15 +a, 2.15 +a );
setScaleKey( spep_0 -3 + 148, 1, 2.16 +a, 2.16 +a );
setScaleKey( spep_0 -3 + 150, 1, 2.17 +a, 2.17 +a );
setScaleKey( spep_0 -3 + 152, 1, 2.17 +a, 2.17 +a );
setScaleKey( spep_0 -3 + 154, 1, 2.18 +a, 2.18 +a );
setScaleKey( spep_0 -3 + 156, 1, 2.19 +a, 2.19 +a );
setScaleKey( spep_0 -3 + 158, 1, 2.2 +a, 2.2 +a );
setScaleKey( spep_0 -3 + 160, 1, 2.2 +a, 2.2 +a );
setScaleKey( spep_0 -3 + 162, 1, 2.21 +a, 2.21 +a );
setScaleKey( spep_0 -3 + 164, 1, 2.21 +a, 2.21 +a );
setScaleKey( spep_0 -3 + 166, 1, 2.22 +a, 2.22 +a );
setScaleKey( spep_0 -3 + 170, 1, 2.22 +a, 2.22 +a );
setScaleKey( spep_0 -3 + 172, 1, 2.23 +a, 2.23 +a );
setScaleKey( spep_0 -3 + 176, 1, 2.23 +a, 2.23 +a );
setScaleKey( spep_0 -3 + 177, 1, 2.23 +a, 2.23 +a );
setScaleKey( spep_0 -3 + 188, 1, 1.78 +a, 1.78 +a );
setScaleKey( spep_0 -3 + 192, 1, 1.78 +a, 1.78 +a );
setScaleKey( spep_0 -3 + 193, 1, 1.78 +a, 1.78 +a );
a2 = 0.2;
setScaleKey( spep_0 -3 + 200, 1, 2.95 +a2, 2.95 +a2 );  --蹴られる
setScaleKey( spep_0 -3 + 204, 1, 2.95 +a2, 2.95 +a2 );
setScaleKey( spep_0 -3 + 208, 1, 2.95 +a2, 2.95 +a2 );
setScaleKey( spep_0 -3 + 222, 1, 2.95 +a2, 2.95 +a2 );
setScaleKey( spep_0 -3 + 223, 1, 2.95 +a2, 2.95 +a2 );
setScaleKey( spep_0 -3 + 224, 1, 4.53 +a2, 4.53 +a2 );
setScaleKey( spep_0 -3 + 226, 1, 4.47 +a2, 4.47 +a2 );
setScaleKey( spep_0 -3 + 228, 1, 4.41 +a2, 4.41 +a2 );
setScaleKey( spep_0 -3 + 230, 1, 4.35 +a2, 4.35 +a2 );
setScaleKey( spep_0 -3 + 232, 1, 4.28 +a2, 4.28 +a2 );
setScaleKey( spep_0 -3 + 234, 1, 4.22 +a2, 4.22 +a2 );
setScaleKey( spep_0 -3 + 236, 1, 4.16 +a2, 4.16 +a2 );
setScaleKey( spep_0 -3 + 238, 1, 4.1 +a2, 4.1 +a2 );
setScaleKey( spep_0 -3 + 240, 1, 4.03 +a2, 4.03 +a2 );
setScaleKey( spep_0 -3 + 242, 1, 3.97 +a2, 3.97 +a2 );
setScaleKey( spep_0 -3 + 244, 1, 3.91 +a2, 3.91 +a2 );
setScaleKey( spep_0 -3 + 246, 1, 3.85 +a2, 3.85 +a2 );
setScaleKey( spep_0 -3 + 248, 1, 3.79 +a2, 3.79 +a2 );
setScaleKey( spep_0 -3 + 250, 1, 3.72 +a2, 3.72 +a2 );
setScaleKey( spep_0 -3 + 252, 1, 3.66 +a2, 3.66 +a2 );
setScaleKey( spep_0 -3 + 253, 1, 3.66 +a2, 3.66 +a2 );
a1 = 0.3;
setScaleKey( spep_0 -3 + 254, 1, 3.8 +a1, 3.8 +a1 );  --背中殴られる
setScaleKey( spep_0 -3 + 278, 1, 3.8 +a1, 3.8 +a1 );
setScaleKey( spep_0 -3 + 312, 1, 1.35, 1.35 );  --蹴られる
setScaleKey( spep_0 -3 + 314, 1, 1.36, 1.36 );
setScaleKey( spep_0 -3 + 316, 1, 1.38, 1.38 );
setScaleKey( spep_0 -3 + 318, 1, 1.39, 1.39 );
setScaleKey( spep_0 -3 + 320, 1, 1.39, 1.39 );
setScaleKey( spep_0 -3 + 322, 1, 1.4, 1.4 );
setScaleKey( spep_0 -3 + 324, 1, 1.41, 1.41 );
setScaleKey( spep_0 -3 + 326, 1, 1.41, 1.41 );
setScaleKey( spep_0 -3 + 328, 1, 1.42, 1.42 );
setScaleKey( spep_0 -3 + 332, 1, 1.42, 1.42 );
setScaleKey( spep_0 -3 + 334, 1, 1.43, 1.43 );
setScaleKey( spep_0 -3 + 348, 1, 1.43, 1.43 );
setScaleKey( spep_0 -3 + 360, 1, 3.02, 3.02 );  --吹っ飛ぶ
setScaleKey( spep_0 -3 + 362, 1, 1.17, 1.17 );
setScaleKey( spep_0 -3 + 364, 1, 0.63, 0.63 );
setScaleKey( spep_0 -3 + 366, 1, 0.4, 0.4 );
setScaleKey( spep_0 -3 + 368, 1, 0.32, 0.32 );
setScaleKey( spep_0 -3 + 370, 1, 0.26, 0.26 );
setScaleKey( spep_0 -3 + 372, 1, 0.22, 0.22 );
setScaleKey( spep_0 -3 + 374, 1, 0.19, 0.19 );
setScaleKey( spep_0 -3 + 376, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 378, 1, 0.15, 0.15 );
setScaleKey( spep_0 -3 + 380, 1, 0.13, 0.13 );
setScaleKey( spep_0 -3 + 382, 1, 0.12, 0.12 );
setScaleKey( spep_0 -3 + 384, 1, 0.11, 0.11 );
setScaleKey( spep_0 -3 + 388, 1, 0.11, 0.11 );

d1 = 40;
setRotateKey( spep_0 -3 + 134, 1, -65.4 +d1 );  --殴られる
setRotateKey( spep_0 -3 + 136, 1, -66.1 +d1 );
setRotateKey( spep_0 -3 + 138, 1, -66.7 +d1 );
setRotateKey( spep_0 -3 + 140, 1, -67.2 +d1 );
setRotateKey( spep_0 -3 + 142, 1, -67.8 +d1 );
setRotateKey( spep_0 -3 + 144, 1, -68.3 +d1 );
setRotateKey( spep_0 -3 + 146, 1, -68.8 +d1 );
setRotateKey( spep_0 -3 + 148, 1, -69.2 +d1 );
setRotateKey( spep_0 -3 + 150, 1, -69.6 +d1 );
setRotateKey( spep_0 -3 + 152, 1, -70 +d1 );
setRotateKey( spep_0 -3 + 154, 1, -70.4 +d1 );
setRotateKey( spep_0 -3 + 156, 1, -70.7 +d1 );
setRotateKey( spep_0 -3 + 158, 1, -71 +d1 );
setRotateKey( spep_0 -3 + 160, 1, -71.2 +d1 );
setRotateKey( spep_0 -3 + 162, 1, -71.5 +d1 );
setRotateKey( spep_0 -3 + 164, 1, -71.7 +d1 );
setRotateKey( spep_0 -3 + 166, 1, -71.8 +d1 );
setRotateKey( spep_0 -3 + 168, 1, -72 +d1 );
setRotateKey( spep_0 -3 + 170, 1, -72.1 +d1 );
setRotateKey( spep_0 -3 + 172, 1, -72.2 +d1 );
setRotateKey( spep_0 -3 + 176, 1, -72.2 +d1 );
setRotateKey( spep_0 -3 + 177, 1, -72.2 +d1 );
setRotateKey( spep_0 -3 + 188, 1, -95.7 +d1 );
setRotateKey( spep_0 -3 + 192, 1, -95.7 +d1 );
setRotateKey( spep_0 -3 + 193, 1, -95.7 +d1 );
setRotateKey( spep_0 -3 + 200, 1, -55.2 );  --蹴られる
setRotateKey( spep_0 -3 + 204, 1, -55.2 );
setRotateKey( spep_0 -3 + 208, 1, -55.2 );
setRotateKey( spep_0 -3 + 222, 1, -55.2 );
setRotateKey( spep_0 -3 + 223, 1, -55.2 );
setRotateKey( spep_0 -3 + 224, 1, -75.5 );
setRotateKey( spep_0 -3 + 226, 1, -75.8 );
setRotateKey( spep_0 -3 + 228, 1, -76.1 );
setRotateKey( spep_0 -3 + 230, 1, -76.5 );
setRotateKey( spep_0 -3 + 232, 1, -76.8 );
setRotateKey( spep_0 -3 + 234, 1, -77.2 );
setRotateKey( spep_0 -3 + 236, 1, -77.5 );
setRotateKey( spep_0 -3 + 238, 1, -77.8 );
setRotateKey( spep_0 -3 + 240, 1, -78.2 );
setRotateKey( spep_0 -3 + 242, 1, -78.5 );
setRotateKey( spep_0 -3 + 244, 1, -78.9 );
setRotateKey( spep_0 -3 + 246, 1, -79.2 );
setRotateKey( spep_0 -3 + 248, 1, -79.5 );
setRotateKey( spep_0 -3 + 250, 1, -79.9 );
setRotateKey( spep_0 -3 + 252, 1, -80.2 );
setRotateKey( spep_0 -3 + 253, 1, -80.2 );
setRotateKey( spep_0 -3 + 254, 1, -122.2 );
setRotateKey( spep_0 -3 + 278, 1, -122.2 );
setRotateKey( spep_0 -3 + 312, 1, -61.8 );
setRotateKey( spep_0 -3 + 314, 1, -60.2 );
setRotateKey( spep_0 -3 + 316, 1, -58.8 );
setRotateKey( spep_0 -3 + 318, 1, -57.5 );
setRotateKey( spep_0 -3 + 320, 1, -56.4 );
setRotateKey( spep_0 -3 + 322, 1, -55.5 );
setRotateKey( spep_0 -3 + 324, 1, -54.7 );
setRotateKey( spep_0 -3 + 326, 1, -54.1 );
setRotateKey( spep_0 -3 + 328, 1, -53.5 );
setRotateKey( spep_0 -3 + 330, 1, -53.1 );
setRotateKey( spep_0 -3 + 332, 1, -52.8 );
setRotateKey( spep_0 -3 + 334, 1, -52.5 );
setRotateKey( spep_0 -3 + 336, 1, -52.3 );
setRotateKey( spep_0 -3 + 338, 1, -52.2 );
setRotateKey( spep_0 -3 + 340, 1, -52.1 );
setRotateKey( spep_0 -3 + 348, 1, -52.1 );
setRotateKey( spep_0 -3 + 360, 1, 124.4 );
setRotateKey( spep_0 -3 + 362, 1, 102 );
setRotateKey( spep_0 -3 + 364, 1, 95.5 );
setRotateKey( spep_0 -3 + 366, 1, 92.7 );
setRotateKey( spep_0 -3 + 368, 1, 91.7 );
setRotateKey( spep_0 -3 + 370, 1, 91.1 );
setRotateKey( spep_0 -3 + 372, 1, 90.6 );
setRotateKey( spep_0 -3 + 374, 1, 90.2 );
setRotateKey( spep_0 -3 + 376, 1, 89.9 );
setRotateKey( spep_0 -3 + 378, 1, 89.6 );
setRotateKey( spep_0 -3 + 380, 1, 89.5 );
setRotateKey( spep_0 -3 + 382, 1, 89.3 );
setRotateKey( spep_0 -3 + 384, 1, 89.2 );
setRotateKey( spep_0 -3 + 388, 1, 89.2 );

-- ** 音 ** --
--顔アップ
SE004 = playSe( spep_0 + 74, 1182 );
setSeVolumeByWorkId( spep_0 + 74, SE004, 0 );
setSeVolumeByWorkId( spep_0 + 77, SE004, 5 );
setSeVolumeByWorkId( spep_0 + 80, SE004, 24 );
setSeVolumeByWorkId( spep_0 + 82, SE004, 42 );
setSeVolumeByWorkId( spep_0 + 84, SE004, 56 );
setSeVolumeByWorkId( spep_0 + 85, SE004, 79 );

SE005 = playSe( spep_0 + 74, 1116 );
setSeVolumeByWorkId( spep_0 + 74, SE005, 71 );
stopSe( spep_0 + 98, SE005, 21 );

--腕振りかぶる
SE006 = playSe( spep_0 + 110, 1188 );
setSeVolumeByWorkId( spep_0 + 110, SE006, 0 );
setSeVolumeByWorkId( spep_0 + 116, SE006, 5 );
setSeVolumeByWorkId( spep_0 + 118, SE006, 14 );
setSeVolumeByWorkId( spep_0 + 120, SE006, 32 );
setSeVolumeByWorkId( spep_0 + 122, SE006, 57 );
setSeVolumeByWorkId( spep_0 + 123, SE006, 71 );
stopSe( spep_0 + 138, SE006, 12 );

SE007 = playSe( spep_0 + 114, 1117 );
setSeVolumeByWorkId( spep_0 + 114, SE007, 260 );
setPitch( spep_0 + 114, SE007, -1000 );
setTimeStretch( SE007, 0.33, 10, 1 );
stopSe( spep_0 + 126, SE007, 6 );

--パンチ
SE008 = playSe( spep_0 + 134, 1009 );
SE009 = playSe( spep_0 + 134, 1000 );
SE010 = playSe( spep_0 + 138, 1110 );

--キック
SE011 = playSe( spep_0 + 192, 1004 );
SE012 = playSe( spep_0 + 204, 1010 );
setSeVolumeByWorkId( spep_0 + 204, SE012, 120 );
SE013 = playSe( spep_0 + 206, 1190 );
setPitch( spep_0 + 206, SE013, -500 );
setTimeStretch( SE013, 0.6, 10, 1 );
SE014 = playSe( spep_0 + 208, 1110 );
setSeVolumeByWorkId( spep_0 + 208, SE014, 92 );

--叩きつけ
SE015 = playSe( spep_0 + 252, 1189 );
setSeVolumeByWorkId( spep_0 + 252, SE015, 69 );

SE016 = playSe( spep_0 + 258, 1159 );
setSeVolumeByWorkId( spep_0 + 258, SE016, 66 );
stopSe( spep_0 + 270, SE016, 24 );

SE017 = playSe( spep_0 + 258, 1182 );
setSeVolumeByWorkId( spep_0 + 258, SE017, 178 );
stopSe( spep_0 + 264, SE017, 3 );

SE018 = playSe( spep_0 + 258, 1187 );
setSeVolumeByWorkId( spep_0 + 258, SE018, 87 );
SE019 = playSe( spep_0 + 258, 20 );
setSeVolumeByWorkId( spep_0 + 258, SE019, 74 );

--蹴り上げ
SE020 = playSe( spep_0 + 304, 1123 );
SE021 = playSe( spep_0 + 308, 1110 );

--敵飛んでいく
SE022 = playSe( spep_0 + 352, 1183 );
stopSe( spep_0 + 404 +10, SE022, 0 );

SE023 = playSe( spep_0 + 352, 1121 );
setSeVolumeByWorkId( spep_0 + 352, SE023, 32 );
stopSe( spep_0 + 404 +10, SE023, 0 );

--岩にぶつかる
SE024 = playSe( spep_0 + 403, 1159 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 470;

------------------------------------------------------
-- 気溜め〜光弾をかかげる(306F)
------------------------------------------------------

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_1 + 0, SP_03, 306, 0x100, -1, 0, 0, 0 );  --気溜め〜光弾をかかげる(ef_003)
setEffMoveKey( spep_1 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_1 + 306, tame, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_1 + 306, tame, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 306, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 306, tame, 255 );

spep_x = spep_1 + 220;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9 +60, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9 +60, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9 +60, 515.5 , 0 );

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

-- ** 背景 ** --
entryFadeBg( spep_1 + 0, 0, 306, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

--岩にぶつかる
stopSe( spep_1 + 25, SE024, 43 );

--気を溜める
SE025 = playSe( spep_1 + 3, 1226 );
setSeVolumeByWorkId( spep_1 + 3, SE025, 0 );
setSeVolumeByWorkId( spep_1 + 8, SE025, 2 );
setSeVolumeByWorkId( spep_1 + 12, SE025, 4 );
setSeVolumeByWorkId( spep_1 + 16, SE025, 6 );
setSeVolumeByWorkId( spep_1 + 20, SE025, 8 );
setSeVolumeByWorkId( spep_1 + 24, SE025, 10 );
setSeVolumeByWorkId( spep_1 + 28, SE025, 11 );
setSeVolumeByWorkId( spep_1 + 32, SE025, 13 );
setSeVolumeByWorkId( spep_1 + 36, SE025, 15 );
setSeVolumeByWorkId( spep_1 + 40, SE025, 16 );
setSeVolumeByWorkId( spep_1 + 44, SE025, 17 );
setSeVolumeByWorkId( spep_1 + 48, SE025, 19 );
setSeVolumeByWorkId( spep_1 + 52, SE025, 20 );
setSeVolumeByWorkId( spep_1 + 56, SE025, 21 );
setSeVolumeByWorkId( spep_1 + 60, SE025, 22 );
setSeVolumeByWorkId( spep_1 + 64, SE025, 23 );
setSeVolumeByWorkId( spep_1 + 68, SE025, 24 );
setSeVolumeByWorkId( spep_1 + 72, SE025, 25 );
setSeVolumeByWorkId( spep_1 + 76, SE025, 26 );
setSeVolumeByWorkId( spep_1 + 80, SE025, 27 );
setSeVolumeByWorkId( spep_1 + 84, SE025, 28 );
setSeVolumeByWorkId( spep_1 + 88, SE025, 29 );
setSeVolumeByWorkId( spep_1 + 92, SE025, 30 );
setSeVolumeByWorkId( spep_1 + 96, SE025, 31 );
setSeVolumeByWorkId( spep_1 + 100, SE025, 33 );
setSeVolumeByWorkId( spep_1 + 104, SE025, 34 );
setSeVolumeByWorkId( spep_1 + 108, SE025, 36 );
setSeVolumeByWorkId( spep_1 + 112, SE025, 38 );
setSeVolumeByWorkId( spep_1 + 116, SE025, 40 );
setSeVolumeByWorkId( spep_1 + 120, SE025, 41 );
setSeVolumeByWorkId( spep_1 + 124, SE025, 43 );
setSeVolumeByWorkId( spep_1 + 128, SE025, 45 );
setSeVolumeByWorkId( spep_1 + 132, SE025, 47 );
setSeVolumeByWorkId( spep_1 + 136, SE025, 49 );
setSeVolumeByWorkId( spep_1 + 140, SE025, 52 );
setSeVolumeByWorkId( spep_1 + 144, SE025, 56 );
setSeVolumeByWorkId( spep_1 + 148, SE025, 58 );
setSeVolumeByWorkId( spep_1 + 152, SE025, 60 );
setSeVolumeByWorkId( spep_1 + 156, SE025, 63 );
setSeVolumeByWorkId( spep_1 + 161, SE025, 68 );
setSeVolumeByWorkId( spep_1 + 162, SE025, 70 );
setSeVolumeByWorkId( spep_1 + 166, SE025, 74 );
setSeVolumeByWorkId( spep_1 + 170, SE025, 79 );
setSeVolumeByWorkId( spep_1 + 174, SE025, 82 );
setSeVolumeByWorkId( spep_1 + 178, SE025, 86 );
setSeVolumeByWorkId( spep_1 + 182, SE025, 92 );
setSeVolumeByWorkId( spep_1 + 186, SE025, 98 );
setSeVolumeByWorkId( spep_1 + 190, SE025, 112 );
setSeVolumeByWorkId( spep_1 + 191, SE025, 120 );

--稲妻走る
SE026 = playSe( spep_1 + 4, 1147 );
setSeVolumeByWorkId( spep_1 + 4, SE026, 48 );
stopSe( spep_1 + 112, SE026, 0 );

--気を溜める
SE027 = playSe( spep_1 + 56, 1227 );
setPitch( spep_1 + 56, SE027, -800 );
setTimeStretch( SE027, 0.47, 10, 1 );

--気が弾ける
SE028 = playSe( spep_1 + 102, 1191 );
setPitch( spep_1 + 102, SE028, -800 );
setTimeStretch( SE028, 0.47, 10, 1 );
stopSe( spep_1 + 141, SE028, 44 );

SE029 = playSe( spep_1 + 104, 1128 );
--setSeVolumeByWorkId( spep_1 + 104, SE029, 32 );
setSeVolumeByWorkId( spep_1 + 104, SE029, 0 );
setSeVolumeByWorkId( spep_1 + 105, SE029, 1.4 );
setSeVolumeByWorkId( spep_1 + 106, SE029, 2.8 );
setSeVolumeByWorkId( spep_1 + 107, SE029, 4.2 );
setSeVolumeByWorkId( spep_1 + 108, SE029, 5.6 );
setSeVolumeByWorkId( spep_1 + 109, SE029, 7 );
setSeVolumeByWorkId( spep_1 + 110, SE029, 8.4 );
setSeVolumeByWorkId( spep_1 + 111, SE029, 9.8 );
setSeVolumeByWorkId( spep_1 + 112, SE029, 11.2 );
setSeVolumeByWorkId( spep_1 + 113, SE029, 12.6 );
setSeVolumeByWorkId( spep_1 + 114, SE029, 14 );
setSeVolumeByWorkId( spep_1 + 115, SE029, 15.4 );
setSeVolumeByWorkId( spep_1 + 116, SE029, 16.8 );
setSeVolumeByWorkId( spep_1 + 117, SE029, 18.2 );
setSeVolumeByWorkId( spep_1 + 118, SE029, 19.6 );
setSeVolumeByWorkId( spep_1 + 119, SE029, 21 );
setSeVolumeByWorkId( spep_1 + 120, SE029, 22.4 );
setSeVolumeByWorkId( spep_1 + 121, SE029, 23.8 );
setSeVolumeByWorkId( spep_1 + 122, SE029, 25.2 );
setSeVolumeByWorkId( spep_1 + 123, SE029, 26.6 );
setSeVolumeByWorkId( spep_1 + 124, SE029, 28 );
setSeVolumeByWorkId( spep_1 + 125, SE029, 29.4 );
setSeVolumeByWorkId( spep_1 + 126, SE029, 30.8 );
setSeVolumeByWorkId( spep_1 + 160, SE029, 31.6 );
setSeVolumeByWorkId( spep_1 + 161, SE029, 31 );
setSeVolumeByWorkId( spep_1 + 162, SE029, 30.4 );
setSeVolumeByWorkId( spep_1 + 163, SE029, 29.8 );
setSeVolumeByWorkId( spep_1 + 164, SE029, 29.2 );
setSeVolumeByWorkId( spep_1 + 165, SE029, 28.6 );
setSeVolumeByWorkId( spep_1 + 166, SE029, 28 );
setSeVolumeByWorkId( spep_1 + 167, SE029, 27.4 );
setSeVolumeByWorkId( spep_1 + 168, SE029, 26.8 );
setSeVolumeByWorkId( spep_1 + 169, SE029, 26.2 );
setSeVolumeByWorkId( spep_1 + 170, SE029, 25.6 );
setSeVolumeByWorkId( spep_1 + 171, SE029, 25 );
setSeVolumeByWorkId( spep_1 + 172, SE029, 24.4 );
setSeVolumeByWorkId( spep_1 + 173, SE029, 23.8 );
setSeVolumeByWorkId( spep_1 + 174, SE029, 23.2 );
setSeVolumeByWorkId( spep_1 + 175, SE029, 22.6 );
setSeVolumeByWorkId( spep_1 + 176, SE029, 22 );
setSeVolumeByWorkId( spep_1 + 177, SE029, 21.4 );
setSeVolumeByWorkId( spep_1 + 178, SE029, 20.8 );
setSeVolumeByWorkId( spep_1 + 179, SE029, 20.2 );
setSeVolumeByWorkId( spep_1 + 180, SE029, 19.6 );
setSeVolumeByWorkId( spep_1 + 181, SE029, 19 );
setSeVolumeByWorkId( spep_1 + 182, SE029, 18.4 );
setSeVolumeByWorkId( spep_1 + 183, SE029, 17.8 );
setSeVolumeByWorkId( spep_1 + 184, SE029, 17.2 );
setSeVolumeByWorkId( spep_1 + 185, SE029, 16.6 );
setSeVolumeByWorkId( spep_1 + 186, SE029, 16 );
setSeVolumeByWorkId( spep_1 + 187, SE029, 15.4 );
setSeVolumeByWorkId( spep_1 + 188, SE029, 14.8 );
setSeVolumeByWorkId( spep_1 + 189, SE029, 14.2 );
setSeVolumeByWorkId( spep_1 + 190, SE029, 13.6 );
setSeVolumeByWorkId( spep_1 + 191, SE029, 13 );
setSeVolumeByWorkId( spep_1 + 192, SE029, 12.4 );
setSeVolumeByWorkId( spep_1 + 193, SE029, 11.8 );
setSeVolumeByWorkId( spep_1 + 194, SE029, 11.2 );
setSeVolumeByWorkId( spep_1 + 195, SE029, 10.6 );
setSeVolumeByWorkId( spep_1 + 196, SE029, 10 );
setSeVolumeByWorkId( spep_1 + 197, SE029, 9.4 );
setSeVolumeByWorkId( spep_1 + 198, SE029, 8.8 );
setSeVolumeByWorkId( spep_1 + 199, SE029, 8.2 );
setSeVolumeByWorkId( spep_1 + 200, SE029, 7.6 );
setSeVolumeByWorkId( spep_1 + 201, SE029, 7 );
setSeVolumeByWorkId( spep_1 + 202, SE029, 6.4 );
setSeVolumeByWorkId( spep_1 + 203, SE029, 5.8 );
setSeVolumeByWorkId( spep_1 + 204, SE029, 5.2 );
setSeVolumeByWorkId( spep_1 + 205, SE029, 4.6 );
setSeVolumeByWorkId( spep_1 + 206, SE029, 4 );
setSeVolumeByWorkId( spep_1 + 207, SE029, 3.4 );
setSeVolumeByWorkId( spep_1 + 208, SE029, 2.8 );
setSeVolumeByWorkId( spep_1 + 209, SE029, 2.2 );
setSeVolumeByWorkId( spep_1 + 210, SE029, 0 );
setPitch( spep_1 + 104, SE029, -600 );
setTimeStretch( SE029, 0.3, 10, 1 );
setStartTimeMs( SE029,  567 );

SE030 = playSe( spep_1 + 104, 1184 );
stopSe( spep_1 + 120, SE030, 79 );

--気弾手の上で溜める
SE031 = playSe( spep_1 + 150, 1240 );
setSeVolumeByWorkId( spep_1 + 150, SE031, 0 );
setSeVolumeByWorkId( spep_1 + 154, SE031, 11 );
setSeVolumeByWorkId( spep_1 + 158, SE031, 28 );
setSeVolumeByWorkId( spep_1 + 162, SE031, 42 );
setSeVolumeByWorkId( spep_1 + 166, SE031, 57 );
setSeVolumeByWorkId( spep_1 + 170, SE031, 86 );
setSeVolumeByWorkId( spep_1 + 174, SE031, 112 );
setSeVolumeByWorkId( spep_1 + 177, SE031, 126 );
setStartTimeMs( SE031,  2533 );
setPitch( spep_1 + 150, SE031, -400 );
setTimeStretch( SE031, 0.61, 10, 1 );

SE032 = playSe( spep_1 + 184, 1148 );
setSeVolumeByWorkId( spep_1 + 184, SE032, 50 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 304;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
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

--気を溜める
stopSe( spep_2 + 14, SE025, 0 );
stopSe( spep_2 + 14, SE027, 0 );

--気弾手の上で溜める
stopSe( spep_2 + 8, SE031, 0 );
stopSe( spep_2 + 14, SE032, 0 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_3 = spep_2 + 94;

------------------------------------------------------
-- 投げる〜着弾(256F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --投げる〜着弾(ef_004)
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 256, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 256, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 256, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 256, finish_f, 255 );

finish_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --投げる〜着弾(ef_005)
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 256, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 256, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 256, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 256, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 106, 1, 1 );
setDisp( spep_3 -3 + 230, 1, 0 );
changeAnime( spep_3 -3 + 106, 1, 108 );

setBlendColor( spep_3 -3 + 106, 1, 3, 0.94, 0.67, 0.97, 1.0 );
setBlendColor( spep_3 -3 + 230, 1, 3, 0.94, 0.67, 0.97, 1.0 );
setBlendColor( spep_3 -3 + 231, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_3 -3 + 232, 1, 3, 0, 0, 0, 0 );

setMoveKey( spep_3 -3 + 106, 1, 12.6, -167.2 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 13.5, -169.6 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 14.5, -172 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 15.4, -174.4 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 31.5, -162.6 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 18.4, -158.9 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 19.2, -167.6 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 28.8, -183.7 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 1.5, -169.9 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 17.3, -174.4 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 20.8, -174.9 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 17.6, -178.3 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 23.8, -184.6 , 0 );
setMoveKey( spep_3 -3 + 132, 1, 38.2, -183 , 0 );
setMoveKey( spep_3 -3 + 134, 1, 20.8, -197.2 , 0 );
setMoveKey( spep_3 -3 + 136, 1, 29.7, -179.8 , 0 );
setMoveKey( spep_3 -3 + 138, 1, 18, -170.9 , 0 );
setMoveKey( spep_3 -3 + 140, 1, 21.1, -194.2 , 0 );
setMoveKey( spep_3 -3 + 142, 1, 41.4, -182.9 , 0 );
setMoveKey( spep_3 -3 + 144, 1, 30.5, -198.2 , 0 );
setMoveKey( spep_3 -3 + 146, 1, 20.4, -206.8 , 0 );
setMoveKey( spep_3 -3 + 148, 1, 35.7, -195.6 , 0 );
setMoveKey( spep_3 -3 + 150, 1, 28.1, -199.4 , 0 );
setMoveKey( spep_3 -3 + 152, 1, 28.2, -202.6 , 0 );
setMoveKey( spep_3 -3 + 154, 1, 34.7, -183 , 0 );
setMoveKey( spep_3 -3 + 156, 1, 42.7, -190.3 , 0 );
setMoveKey( spep_3 -3 + 158, 1, 31.5, -193 , 0 );
setMoveKey( spep_3 -3 + 160, 1, 41, -198.2 , 0 );
setMoveKey( spep_3 -3 + 162, 1, 33, -195.2 , 0 );
setMoveKey( spep_3 -3 + 164, 1, 29, -202.4 , 0 );
setMoveKey( spep_3 -3 + 166, 1, 25.4, -200.2 , 0 );
setMoveKey( spep_3 -3 + 168, 1, 21.2, -189.6 , 0 );
setMoveKey( spep_3 -3 + 170, 1, 46, -207.5 , 0 );
setMoveKey( spep_3 -3 + 172, 1, 34, -184.7 , 0 );
setMoveKey( spep_3 -3 + 174, 1, 32.3, -190.5 , 0 );
setMoveKey( spep_3 -3 + 176, 1, 26.5, -200.7 , 0 );
setMoveKey( spep_3 -3 + 178, 1, 31, -197.7 , 0 );
setMoveKey( spep_3 -3 + 180, 1, 38, -197.2 , 0 );
setMoveKey( spep_3 -3 + 182, 1, 26.6, -205.9 , 0 );
setMoveKey( spep_3 -3 + 184, 1, 32.4, -206.6 , 0 );
setMoveKey( spep_3 -3 + 186, 1, 29.1, -200.9 , 0 );
setMoveKey( spep_3 -3 + 188, 1, 30.6, -198.2 , 0 );
setMoveKey( spep_3 -3 + 190, 1, 32.3, -196.1 , 0 );
setMoveKey( spep_3 -3 + 192, 1, 31.8, -197.7 , 0 );
setMoveKey( spep_3 -3 + 194, 1, 37.4, -186.6 , 0 );
setMoveKey( spep_3 -3 + 196, 1, 21.9, -212.3 , 0 );
setMoveKey( spep_3 -3 + 198, 1, 33.8, -204.8 , 0 );
setMoveKey( spep_3 -3 + 200, 1, 35.7, -178.5 , 0 );
setMoveKey( spep_3 -3 + 202, 1, 45.3, -207.8 , 0 );
setMoveKey( spep_3 -3 + 204, 1, 20.6, -195.7 , 0 );
setMoveKey( spep_3 -3 + 206, 1, 32.1, -197.1 , 0 );
setMoveKey( spep_3 -3 + 208, 1, 32.5, -196 , 0 );
setMoveKey( spep_3 -3 + 210, 1, 12.9, -192.4 , 0 );
setMoveKey( spep_3 -3 + 212, 1, 37, -181.1 , 0 );
setMoveKey( spep_3 -3 + 214, 1, 48.9, -201.1 , 0 );
setMoveKey( spep_3 -3 + 216, 1, 20, -189.4 , 0 );
setMoveKey( spep_3 -3 + 218, 1, 29.3, -203.6 , 0 );
setMoveKey( spep_3 -3 + 220, 1, 34.8, -193.8 , 0 );
setMoveKey( spep_3 -3 + 222, 1, 35.5, -196.3 , 0 );
setMoveKey( spep_3 -3 + 224, 1, 31.8, -196.2 , 0 );
setMoveKey( spep_3 -3 + 226, 1, 31.8, -193.3 , 0 );
setMoveKey( spep_3 -3 + 228, 1, 46.9, -188.3 , 0 );
setMoveKey( spep_3 -3 + 230, 1, 23.8, -186.2 , 0 );

b1 = 0.4;
setScaleKey( spep_3 -3 + 106, 1, 1.14 +b1, 1.14 +b1 );
setScaleKey( spep_3 -3 + 108, 1, 1.15 +b1, 1.15 +b1 );
setScaleKey( spep_3 -3 + 110, 1, 1.16 +b1, 1.16 +b1 );
setScaleKey( spep_3 -3 + 112, 1, 1.17 +b1, 1.17 +b1 );
setScaleKey( spep_3 -3 + 114, 1, 1.18 +b1, 1.18 +b1 );
setScaleKey( spep_3 -3 + 116, 1, 1.18 +b1, 1.18 +b1 );
setScaleKey( spep_3 -3 + 118, 1, 1.19 +b1, 1.19 +b1 );
setScaleKey( spep_3 -3 + 120, 1, 1.2 +b1, 1.2 +b1 );
setScaleKey( spep_3 -3 + 122, 1, 1.21 +b1, 1.21 +b1 );
setScaleKey( spep_3 -3 + 124, 1, 1.22 +b1, 1.22 +b1 );
setScaleKey( spep_3 -3 + 126, 1, 1.23 +b1, 1.23 +b1 );
setScaleKey( spep_3 -3 + 128, 1, 1.24 +b1, 1.24 +b1 );
setScaleKey( spep_3 -3 + 130, 1, 1.25 +b1, 1.25 +b1 );
setScaleKey( spep_3 -3 + 132, 1, 1.25 +b1, 1.25 +b1 );
setScaleKey( spep_3 -3 + 134, 1, 1.26 +b1, 1.26 +b1 );
setScaleKey( spep_3 -3 + 136, 1, 1.27 +b1, 1.27 +b1 );
setScaleKey( spep_3 -3 + 138, 1, 1.28 +b1, 1.28 +b1 );
setScaleKey( spep_3 -3 + 140, 1, 1.29 +b1, 1.29 +b1 );
setScaleKey( spep_3 -3 + 142, 1, 1.3 +b1, 1.3 +b1 );
setScaleKey( spep_3 -3 + 144, 1, 1.31 +b1, 1.31 +b1 );
setScaleKey( spep_3 -3 + 146, 1, 1.32 +b1, 1.32 +b1 );
setScaleKey( spep_3 -3 + 230, 1, 1.32 +b1, 1.32 +b1 );

setRotateKey( spep_3 -3 + 106, 1, 64.3 );
setRotateKey( spep_3 -3 + 230, 1, 64.3 );

-- ** 音 ** --
--気弾発射前溜め
SE033 = playSe( spep_3 + 0, 1226 );
stopSe( spep_3 + 23, SE033, 14 +10 );

--[[SE034 = playSe( spep_3 + 0, 1227 );
setPitch( spep_3 + 0, SE034, -800 );
setTimeStretch( SE034, 0.47, 10, 1 );
stopSe( spep_3 + 24, SE034, 12 +10 );

SE035 = playSe( spep_3 + 0, 1240 );
setSeVolumeByWorkId( spep_3 + 0, SE035, 126 );
setPitch( spep_3 + 0, SE035, -400 );
setTimeStretch( SE035, 0.61, 10, 1 );
stopSe( spep_3 + 24, SE035, 12 +10 );]]

SE036 = playSe( spep_3 + 0, 1148 );
setSeVolumeByWorkId( spep_3 + 0, SE036, 33 );

--気弾発射
SE037 = playSe( spep_3 + 16, 1240 );
setSeVolumeByWorkId( spep_3 + 16, SE037, 0 );
setSeVolumeByWorkId( spep_3 + 18, SE037, 31 );
setSeVolumeByWorkId( spep_3 + 20, SE037, 54 );
setSeVolumeByWorkId( spep_3 + 22, SE037, 84 );
setSeVolumeByWorkId( spep_3 + 24, SE037, 100 );
setSeVolumeByWorkId( spep_3 + 25, SE037, 130 );
setStartTimeMs( SE037,  2700 );
setPitch( spep_3 + 16, SE037, -400 );
setTimeStretch( SE037, 1.47, 10, 1 );
stopSe( spep_3 + 120, SE037, 29 );

SE038 = playSe( spep_3 + 18, 1027 );
setSeVolumeByWorkId( spep_3 + 18, SE038, 63 );
setTimeStretch( SE038, 1.67, 10, 1 );

SE039 = playSe( spep_3 + 18, 1021 );
setSeVolumeByWorkId( spep_3 + 18, SE039, 71 );
setTimeStretch( SE039, 1.25, 10, 1 );

SE040 = playSe( spep_3 + 18, 1193 );
setSeVolumeByWorkId( spep_3 + 18, SE040, 95 );
stopSe( spep_3 + 116, SE040, 29 );

SE041 = playSe( spep_3 + 18, 1278 );
setSeVolumeByWorkId( spep_3 + 18, SE041, 78 );
setTimeStretch( SE041, 0.5, 10, 1 );

SE042 = playSe( spep_3 + 18, 1266 );
setSeVolumeByWorkId( spep_3 + 18, SE042, 47 );
setTimeStretch( SE042, 0.5, 10, 1 );

--爆発
SE043 = playSe( spep_3 + 110, 1159 );
setSeVolumeByWorkId( spep_3 + 110, SE043, 86 );
SE044 = playSe( spep_3 + 112, 1067 );
setSeVolumeByWorkId( spep_3 + 112, SE044, 77 );
SE045 = playSe( spep_3 + 116, 1188 );
setSeVolumeByWorkId( spep_3 + 116, SE045, 83 );
SE046 = playSe( spep_3 + 128, 1044 );
setSeVolumeByWorkId( spep_3 + 128, SE046, 100 );
stopSe( spep_3 + 254, SE046, 0 );

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 256, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 144 );
endPhase( spep_3 + 254 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 構え〜敵が岩に激突(470F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01x, 472, 0x100, -1, 0, 0, 0 );  --構え〜敵が岩に激突(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 472, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 472, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 472, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 472, first_f, 255 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 472, 0x80, -1, 0, 0, 0 );  --構え〜敵が岩に激突(ef_002)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 472, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 472, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 472, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 472, first_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 40, 1, 0 );
changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 535.1, 273.9 , 0 );
setMoveKey( spep_0 -3 + 4, 1, 481.7, 251.2 , 0 );
setMoveKey( spep_0 -3 + 5, 1, 481.7, 251.2 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 433.2, 230.5 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 433.2, 230.5 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 393.1, 213.4 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 393.1, 213.4 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 361.3, 199.8 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 336.3, 189.2 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 316.3, 180.6 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 300, 173.7 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 286.4, 167.9 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 274.8, 162.9 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 263.9, 158.3 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 253.3, 153.8 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 242.7, 149.3 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 232.3, 144.8 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 221.9, 140.4 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 211.6, 136 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 201.4, 131.6 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 191.1, 127.3 , 0 );
setMoveKey( spep_0 -3 + 39, 1, 181, 123 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 181, 123 , 0 );

setScaleKey( spep_0 + 0, 1, 2.81, 2.81 );
setScaleKey( spep_0 -3 + 4, 1, 2.65, 2.65 );
setScaleKey( spep_0 -3 + 5, 1, 2.65, 2.65 );
setScaleKey( spep_0 -3 + 6, 1, 2.51, 2.51 );
setScaleKey( spep_0 -3 + 7, 1, 2.51, 2.51 );
setScaleKey( spep_0 -3 + 8, 1, 2.39, 2.39 );
setScaleKey( spep_0 -3 + 9, 1, 2.39, 2.39 );
setScaleKey( spep_0 -3 + 10, 1, 2.29, 2.29 );
setScaleKey( spep_0 -3 + 12, 1, 2.22, 2.22 );
setScaleKey( spep_0 -3 + 14, 1, 2.16, 2.16 );
setScaleKey( spep_0 -3 + 16, 1, 2.11, 2.11 );
setScaleKey( spep_0 -3 + 18, 1, 2.07, 2.07 );
setScaleKey( spep_0 -3 + 20, 1, 2.04, 2.04 );
setScaleKey( spep_0 -3 + 22, 1, 2.01, 2.01 );
setScaleKey( spep_0 -3 + 24, 1, 1.98, 1.98 );
setScaleKey( spep_0 -3 + 26, 1, 1.94, 1.94 );
setScaleKey( spep_0 -3 + 28, 1, 1.91, 1.91 );
setScaleKey( spep_0 -3 + 30, 1, 1.88, 1.88 );
setScaleKey( spep_0 -3 + 32, 1, 1.85, 1.85 );
setScaleKey( spep_0 -3 + 34, 1, 1.82, 1.82 );
setScaleKey( spep_0 -3 + 36, 1, 1.79, 1.79 );
setScaleKey( spep_0 -3 + 39, 1, 1.76, 1.76 );
setScaleKey( spep_0 -3 + 40, 1, 1.76, 1.76 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 40, 1, 0 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 472, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--入り
SE001 = playSe( spep_0 + 0, 44 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 79 );
setPitch( spep_0 + 0, SE001, -600 );
setTimeStretch( SE001, 0.6, 10, 1 );

--腕ひく
SE002 = playSe( spep_0 + 46, 1004 );
setPitch( spep_0 + 46, SE002, -600 );
setTimeStretch( SE002, 0.83, 10, 1 );

--顔アップ
SE003 = playSe( spep_0 + 64, 1072 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 80; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE001, 0 );
stopSe( SP_dodge - 12, SE002, 0 );
stopSe( SP_dodge - 12, SE003, 0 );

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

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 134, 1, 1 );
setDisp( spep_0 -3 + 178, 1, 0 );
setDisp( spep_0 -3 + 188, 1, 1 );
setDisp( spep_0 -3 + 194, 1, 0 );
setDisp( spep_0 -3 + 200, 1, 1 );
setDisp( spep_0 -3 + 204, 1, 0 );
setDisp( spep_0 -3 + 208, 1, 1 );
setDisp( spep_0 -3 + 280, 1, 0 );
setDisp( spep_0 -3 + 312, 1, 1 );
setDisp( spep_0 -3 + 348, 1, 0 );
setDisp( spep_0 -3 + 360, 1, 1 );
setDisp( spep_0 -3 + 388, 1, 0 );
changeAnime( spep_0 -3 + 134, 1, 107 );
changeAnime( spep_0 -3 + 200, 1, 108 );
changeAnime( spep_0 -3 + 254, 1, 106 );
changeAnime( spep_0 -3 + 312, 1, 107 );
changeAnime( spep_0 -3 + 360, 1, 5 );

e1 = 110;
setMoveKey( spep_0 -3 + 134, 1, -12.5, -143 +e1 , 0 );  --殴られる
setMoveKey( spep_0 -3 + 136, 1, 1.1, -115.7 +e1 , 0 );
setMoveKey( spep_0 -3 + 138, 1, 27.7, -125.7 +e1 , 0 );
setMoveKey( spep_0 -3 + 140, 1, 15.4, -125.5 +e1 , 0 );
setMoveKey( spep_0 -3 + 142, 1, 47.1, -106.5 +e1 , 0 );
setMoveKey( spep_0 -3 + 144, 1, 48.8, -102.3 +e1 , 0 );
setMoveKey( spep_0 -3 + 146, 1, 73.5, -97.6 +e1 , 0 );
setMoveKey( spep_0 -3 + 148, 1, 78.1, -88.8 +e1 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 101.1, -79.4 +e1 , 0 );
setMoveKey( spep_0 -3 + 152, 1, 94.2, -73.9 +e1 , 0 );
setMoveKey( spep_0 -3 + 154, 1, 121.5, -66.3 +e1 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 124.1, -52.8 +e1 , 0 );
setMoveKey( spep_0 -3 + 158, 1, 129.6, -58.4 +e1 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 114.9, -46.3 +e1 , 0 );
setMoveKey( spep_0 -3 + 162, 1, 131.9, -44.5 +e1 , 0 );
setMoveKey( spep_0 -3 + 164, 1, 139.8, -61.5 +e1 , 0 );
setMoveKey( spep_0 -3 + 166, 1, 151.3, -62 +e1 , 0 );
setMoveKey( spep_0 -3 + 168, 1, 148.7, -38.5 +e1 , 0 );
setMoveKey( spep_0 -3 + 170, 1, 138.9, -57.3 +e1 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 155.6, -46.2 +e1 , 0 );
setMoveKey( spep_0 -3 + 174, 1, 152.3, -55.4 +e1 , 0 );
setMoveKey( spep_0 -3 + 176, 1, 164.3, -55.8 +e1 , 0 );
setMoveKey( spep_0 -3 + 178, 1, 164.3, -55.8 +e1 , 0 );
setMoveKey( spep_0 -3 + 188, 1, 461.8, 131.1 +e1 , 0 );
setMoveKey( spep_0 -3 + 192, 1, 461.8, 131.1 +e1 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 461.8, 131.1 +e1 , 0 );
setMoveKey( spep_0 -3 + 200, 1, 183.5, 135 , 0 );  --蹴られる
setMoveKey( spep_0 -3 + 204, 1, 183.5, 135 , 0 );
setMoveKey( spep_0 -3 + 208, 1, 183.5, 135 , 0 );
setMoveKey( spep_0 -3 + 210, 1, 183.5, 135 , 0 );
setMoveKey( spep_0 -3 + 212, 1, 187.5, 203 , 0 );
setMoveKey( spep_0 -3 + 214, 1, 183.5, 141 , 0 );
setMoveKey( spep_0 -3 + 216, 1, 187.5, 203 , 0 );
setMoveKey( spep_0 -3 + 218, 1, 183.5, 141 , 0 );
setMoveKey( spep_0 -3 + 220, 1, 183.5, 143 , 0 );
setMoveKey( spep_0 -3 + 222, 1, 185.5, 203 , 0 );
setMoveKey( spep_0 -3 + 223, 1, 185.5, 203 , 0 );
setMoveKey( spep_0 -3 + 224, 1, 219.9, -159.2 , 0 );
setMoveKey( spep_0 -3 + 226, 1, 208.8, -160.4 , 0 );
setMoveKey( spep_0 -3 + 228, 1, 197.6, -161.5 , 0 );
setMoveKey( spep_0 -3 + 230, 1, 186.6, -162.6 , 0 );
setMoveKey( spep_0 -3 + 232, 1, 175.4, -163.8 , 0 );
setMoveKey( spep_0 -3 + 234, 1, 164.3, -164.9 , 0 );
setMoveKey( spep_0 -3 + 236, 1, 153.2, -166.1 , 0 );
setMoveKey( spep_0 -3 + 238, 1, 142.1, -167.2 , 0 );
setMoveKey( spep_0 -3 + 240, 1, 131, -168.4 , 0 );
setMoveKey( spep_0 -3 + 242, 1, 119.9, -169.5 , 0 );
setMoveKey( spep_0 -3 + 244, 1, 108.8, -170.7 , 0 );
setMoveKey( spep_0 -3 + 246, 1, 97.7, -171.8 , 0 );
setMoveKey( spep_0 -3 + 248, 1, 86.5, -173 , 0 );
setMoveKey( spep_0 -3 + 250, 1, 75.4, -174.1 , 0 );
setMoveKey( spep_0 -3 + 252, 1, 64.3, -175.3 , 0 );
setMoveKey( spep_0 -3 + 253, 1, 64.3, -175.3 , 0 );
setMoveKey( spep_0 -3 + 254, 1, -157.3, -307.2 , 0 );  --背中殴られる
setMoveKey( spep_0 -3 + 256, 1, -157.4, -311.2 , 0 );
setMoveKey( spep_0 -3 + 258, 1, -177.4, -331.2 , 0 );
setMoveKey( spep_0 -3 + 260, 1, -157.4, -311.2 , 0 );
setMoveKey( spep_0 -3 + 262, 1, -177.4, -331.2 , 0 );
setMoveKey( spep_0 -3 + 264, 1, -157.4, -311.2 , 0 );
setMoveKey( spep_0 -3 + 266, 1, -157.4, -311.2 , 0 );
setMoveKey( spep_0 -3 + 268, 1, -177.4, -331.2 , 0 );
setMoveKey( spep_0 -3 + 270, 1, -157.4, -311.2 , 0 );
setMoveKey( spep_0 -3 + 272, 1, -177.4, -331.2 , 0 );
setMoveKey( spep_0 -3 + 274, 1, -157.4, -311.2 , 0 );
setMoveKey( spep_0 -3 + 276, 1, -157.4, -311.2 , 0 );
setMoveKey( spep_0 -3 + 278, 1, -177.4, -331.2 , 0 );
setMoveKey( spep_0 -3 + 280, 1, -177.4, -331.2 , 0 );
setMoveKey( spep_0 -3 + 312, 1, 121.1, 96.2 , 0 );  --蹴られる
setMoveKey( spep_0 -3 + 314, 1, 110.4, 85.2 , 0 );
setMoveKey( spep_0 -3 + 316, 1, 106.2, 74.1 , 0 );
setMoveKey( spep_0 -3 + 318, 1, 101.5, 84.3 , 0 );
setMoveKey( spep_0 -3 + 320, 1, 97, 59.4 , 0 );
setMoveKey( spep_0 -3 + 322, 1, 85.9, 55.9 , 0 );
setMoveKey( spep_0 -3 + 324, 1, 84, 54 , 0 );
setMoveKey( spep_0 -3 + 326, 1, 76.1, 55.2 , 0 );
setMoveKey( spep_0 -3 + 328, 1, 71.7, 43.4 , 0 );
setMoveKey( spep_0 -3 + 330, 1, 58.9, 41.5 , 0 );
setMoveKey( spep_0 -3 + 332, 1, 75.2, 40.6 , 0 );
setMoveKey( spep_0 -3 + 334, 1, 61.5, 32.6 , 0 );
setMoveKey( spep_0 -3 + 336, 1, 63.4, 37.6 , 0 );
setMoveKey( spep_0 -3 + 338, 1, 68.5, 37.5 , 0 );
setMoveKey( spep_0 -3 + 340, 1, 71.8, 28.1 , 0 );
setMoveKey( spep_0 -3 + 342, 1, 70.5, 34.1 , 0 );
setMoveKey( spep_0 -3 + 344, 1, 74.6, 42.2 , 0 );
setMoveKey( spep_0 -3 + 346, 1, 74.8, 39 , 0 );
setMoveKey( spep_0 -3 + 348, 1, 74.8, 39 , 0 );
setMoveKey( spep_0 -3 + 360, 1, -379, 560.4 , 0 );  --吹っ飛ぶ
setMoveKey( spep_0 -3 + 362, 1, -36.4, 258 , 0 );
setMoveKey( spep_0 -3 + 364, 1, 62.6, 170.6 , 0 );
setMoveKey( spep_0 -3 + 366, 1, 105.5, 132.7 , 0 );
setMoveKey( spep_0 -3 + 368, 1, 120.3, 119.7 , 0 );
setMoveKey( spep_0 -3 + 370, 1, 130, 111.1 , 0 );
setMoveKey( spep_0 -3 + 372, 1, 137.4, 104.6 , 0 );
setMoveKey( spep_0 -3 + 374, 1, 143.2, 99.4 , 0 );
setMoveKey( spep_0 -3 + 376, 1, 148, 95.2 , 0 );
setMoveKey( spep_0 -3 + 378, 1, 151.8, 91.8 , 0 );
setMoveKey( spep_0 -3 + 380, 1, 154.8, 89.2 , 0 );
setMoveKey( spep_0 -3 + 382, 1, 157, 87.3 , 0 );
setMoveKey( spep_0 -3 + 384, 1, 158.4, 86.1 , 0 );
setMoveKey( spep_0 -3 + 386, 1, 158.8, 85.7 , 0 );
setMoveKey( spep_0 -3 + 388, 1, 158.8, 85.7 , 0 );

a = 0.4;
setScaleKey( spep_0 -3 + 134, 1, 2.07 +a, 2.07 +a );
setScaleKey( spep_0 -3 + 136, 1, 2.08 +a, 2.08 +a );
setScaleKey( spep_0 -3 + 138, 1, 2.1 +a, 2.1 +a );
setScaleKey( spep_0 -3 + 140, 1, 2.11 +a, 2.11 +a );
setScaleKey( spep_0 -3 + 142, 1, 2.12 +a, 2.12 +a );
setScaleKey( spep_0 -3 + 144, 1, 2.13 +a, 2.13 +a );
setScaleKey( spep_0 -3 + 146, 1, 2.15 +a, 2.15 +a );
setScaleKey( spep_0 -3 + 148, 1, 2.16 +a, 2.16 +a );
setScaleKey( spep_0 -3 + 150, 1, 2.17 +a, 2.17 +a );
setScaleKey( spep_0 -3 + 152, 1, 2.17 +a, 2.17 +a );
setScaleKey( spep_0 -3 + 154, 1, 2.18 +a, 2.18 +a );
setScaleKey( spep_0 -3 + 156, 1, 2.19 +a, 2.19 +a );
setScaleKey( spep_0 -3 + 158, 1, 2.2 +a, 2.2 +a );
setScaleKey( spep_0 -3 + 160, 1, 2.2 +a, 2.2 +a );
setScaleKey( spep_0 -3 + 162, 1, 2.21 +a, 2.21 +a );
setScaleKey( spep_0 -3 + 164, 1, 2.21 +a, 2.21 +a );
setScaleKey( spep_0 -3 + 166, 1, 2.22 +a, 2.22 +a );
setScaleKey( spep_0 -3 + 170, 1, 2.22 +a, 2.22 +a );
setScaleKey( spep_0 -3 + 172, 1, 2.23 +a, 2.23 +a );
setScaleKey( spep_0 -3 + 176, 1, 2.23 +a, 2.23 +a );
setScaleKey( spep_0 -3 + 177, 1, 2.23 +a, 2.23 +a );
setScaleKey( spep_0 -3 + 188, 1, 1.78 +a, 1.78 +a );
setScaleKey( spep_0 -3 + 192, 1, 1.78 +a, 1.78 +a );
setScaleKey( spep_0 -3 + 193, 1, 1.78 +a, 1.78 +a );
a2 = 0.2;
setScaleKey( spep_0 -3 + 200, 1, 2.95 +a2, 2.95 +a2 );
setScaleKey( spep_0 -3 + 204, 1, 2.95 +a2, 2.95 +a2 );
setScaleKey( spep_0 -3 + 208, 1, 2.95 +a2, 2.95 +a2 );
setScaleKey( spep_0 -3 + 222, 1, 2.95 +a2, 2.95 +a2 );
setScaleKey( spep_0 -3 + 223, 1, 2.95 +a2, 2.95 +a2 );
setScaleKey( spep_0 -3 + 224, 1, 4.53 +a2, 4.53 +a2 );
setScaleKey( spep_0 -3 + 226, 1, 4.47 +a2, 4.47 +a2 );
setScaleKey( spep_0 -3 + 228, 1, 4.41 +a2, 4.41 +a2 );
setScaleKey( spep_0 -3 + 230, 1, 4.35 +a2, 4.35 +a2 );
setScaleKey( spep_0 -3 + 232, 1, 4.28 +a2, 4.28 +a2 );
setScaleKey( spep_0 -3 + 234, 1, 4.22 +a2, 4.22 +a2 );
setScaleKey( spep_0 -3 + 236, 1, 4.16 +a2, 4.16 +a2 );
setScaleKey( spep_0 -3 + 238, 1, 4.1 +a2, 4.1 +a2 );
setScaleKey( spep_0 -3 + 240, 1, 4.03 +a2, 4.03 +a2 );
setScaleKey( spep_0 -3 + 242, 1, 3.97 +a2, 3.97 +a2 );
setScaleKey( spep_0 -3 + 244, 1, 3.91 +a2, 3.91 +a2 );
setScaleKey( spep_0 -3 + 246, 1, 3.85 +a2, 3.85 +a2 );
setScaleKey( spep_0 -3 + 248, 1, 3.79 +a2, 3.79 +a2 );
setScaleKey( spep_0 -3 + 250, 1, 3.72 +a2, 3.72 +a2 );
setScaleKey( spep_0 -3 + 252, 1, 3.66 +a2, 3.66 +a2 );
setScaleKey( spep_0 -3 + 253, 1, 3.66 +a2, 3.66 +a2 );
a1 = 0.3;
setScaleKey( spep_0 -3 + 254, 1, 3.8 +a1, 3.8 +a1 );
setScaleKey( spep_0 -3 + 278, 1, 3.8 +a1, 3.8 +a1 );
setScaleKey( spep_0 -3 + 312, 1, 1.35, 1.35 );
setScaleKey( spep_0 -3 + 314, 1, 1.36, 1.36 );
setScaleKey( spep_0 -3 + 316, 1, 1.38, 1.38 );
setScaleKey( spep_0 -3 + 318, 1, 1.39, 1.39 );
setScaleKey( spep_0 -3 + 320, 1, 1.39, 1.39 );
setScaleKey( spep_0 -3 + 322, 1, 1.4, 1.4 );
setScaleKey( spep_0 -3 + 324, 1, 1.41, 1.41 );
setScaleKey( spep_0 -3 + 326, 1, 1.41, 1.41 );
setScaleKey( spep_0 -3 + 328, 1, 1.42, 1.42 );
setScaleKey( spep_0 -3 + 332, 1, 1.42, 1.42 );
setScaleKey( spep_0 -3 + 334, 1, 1.43, 1.43 );
setScaleKey( spep_0 -3 + 348, 1, 1.43, 1.43 );
setScaleKey( spep_0 -3 + 360, 1, 3.02, 3.02 );
setScaleKey( spep_0 -3 + 362, 1, 1.17, 1.17 );
setScaleKey( spep_0 -3 + 364, 1, 0.63, 0.63 );
setScaleKey( spep_0 -3 + 366, 1, 0.4, 0.4 );
setScaleKey( spep_0 -3 + 368, 1, 0.32, 0.32 );
setScaleKey( spep_0 -3 + 370, 1, 0.26, 0.26 );
setScaleKey( spep_0 -3 + 372, 1, 0.22, 0.22 );
setScaleKey( spep_0 -3 + 374, 1, 0.19, 0.19 );
setScaleKey( spep_0 -3 + 376, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 378, 1, 0.15, 0.15 );
setScaleKey( spep_0 -3 + 380, 1, 0.13, 0.13 );
setScaleKey( spep_0 -3 + 382, 1, 0.12, 0.12 );
setScaleKey( spep_0 -3 + 384, 1, 0.11, 0.11 );
setScaleKey( spep_0 -3 + 388, 1, 0.11, 0.11 );

d1 = 40;
setRotateKey( spep_0 -3 + 134, 1, -65.4 +d1 );
setRotateKey( spep_0 -3 + 136, 1, -66.1 +d1 );
setRotateKey( spep_0 -3 + 138, 1, -66.7 +d1 );
setRotateKey( spep_0 -3 + 140, 1, -67.2 +d1 );
setRotateKey( spep_0 -3 + 142, 1, -67.8 +d1 );
setRotateKey( spep_0 -3 + 144, 1, -68.3 +d1 );
setRotateKey( spep_0 -3 + 146, 1, -68.8 +d1 );
setRotateKey( spep_0 -3 + 148, 1, -69.2 +d1 );
setRotateKey( spep_0 -3 + 150, 1, -69.6 +d1 );
setRotateKey( spep_0 -3 + 152, 1, -70 +d1 );
setRotateKey( spep_0 -3 + 154, 1, -70.4 +d1 );
setRotateKey( spep_0 -3 + 156, 1, -70.7 +d1 );
setRotateKey( spep_0 -3 + 158, 1, -71 +d1 );
setRotateKey( spep_0 -3 + 160, 1, -71.2 +d1 );
setRotateKey( spep_0 -3 + 162, 1, -71.5 +d1 );
setRotateKey( spep_0 -3 + 164, 1, -71.7 +d1 );
setRotateKey( spep_0 -3 + 166, 1, -71.8 +d1 );
setRotateKey( spep_0 -3 + 168, 1, -72 +d1 );
setRotateKey( spep_0 -3 + 170, 1, -72.1 +d1 );
setRotateKey( spep_0 -3 + 172, 1, -72.2 +d1 );
setRotateKey( spep_0 -3 + 176, 1, -72.2 +d1 );
setRotateKey( spep_0 -3 + 177, 1, -72.2 +d1 );
setRotateKey( spep_0 -3 + 188, 1, -95.7 +d1 );
setRotateKey( spep_0 -3 + 192, 1, -95.7 +d1 );
setRotateKey( spep_0 -3 + 193, 1, -95.7 +d1 );
setRotateKey( spep_0 -3 + 200, 1, -55.2 );
setRotateKey( spep_0 -3 + 204, 1, -55.2 );
setRotateKey( spep_0 -3 + 208, 1, -55.2 );
setRotateKey( spep_0 -3 + 222, 1, -55.2 );
setRotateKey( spep_0 -3 + 223, 1, -55.2 );
setRotateKey( spep_0 -3 + 224, 1, -75.5 );
setRotateKey( spep_0 -3 + 226, 1, -75.8 );
setRotateKey( spep_0 -3 + 228, 1, -76.1 );
setRotateKey( spep_0 -3 + 230, 1, -76.5 );
setRotateKey( spep_0 -3 + 232, 1, -76.8 );
setRotateKey( spep_0 -3 + 234, 1, -77.2 );
setRotateKey( spep_0 -3 + 236, 1, -77.5 );
setRotateKey( spep_0 -3 + 238, 1, -77.8 );
setRotateKey( spep_0 -3 + 240, 1, -78.2 );
setRotateKey( spep_0 -3 + 242, 1, -78.5 );
setRotateKey( spep_0 -3 + 244, 1, -78.9 );
setRotateKey( spep_0 -3 + 246, 1, -79.2 );
setRotateKey( spep_0 -3 + 248, 1, -79.5 );
setRotateKey( spep_0 -3 + 250, 1, -79.9 );
setRotateKey( spep_0 -3 + 252, 1, -80.2 );
setRotateKey( spep_0 -3 + 253, 1, -80.2 );
setRotateKey( spep_0 -3 + 254, 1, -122.2 );
setRotateKey( spep_0 -3 + 278, 1, -122.2 );
setRotateKey( spep_0 -3 + 312, 1, -61.8 );
setRotateKey( spep_0 -3 + 314, 1, -60.2 );
setRotateKey( spep_0 -3 + 316, 1, -58.8 );
setRotateKey( spep_0 -3 + 318, 1, -57.5 );
setRotateKey( spep_0 -3 + 320, 1, -56.4 );
setRotateKey( spep_0 -3 + 322, 1, -55.5 );
setRotateKey( spep_0 -3 + 324, 1, -54.7 );
setRotateKey( spep_0 -3 + 326, 1, -54.1 );
setRotateKey( spep_0 -3 + 328, 1, -53.5 );
setRotateKey( spep_0 -3 + 330, 1, -53.1 );
setRotateKey( spep_0 -3 + 332, 1, -52.8 );
setRotateKey( spep_0 -3 + 334, 1, -52.5 );
setRotateKey( spep_0 -3 + 336, 1, -52.3 );
setRotateKey( spep_0 -3 + 338, 1, -52.2 );
setRotateKey( spep_0 -3 + 340, 1, -52.1 );
setRotateKey( spep_0 -3 + 348, 1, -52.1 );
setRotateKey( spep_0 -3 + 360, 1, 124.4 );
setRotateKey( spep_0 -3 + 362, 1, 102 );
setRotateKey( spep_0 -3 + 364, 1, 95.5 );
setRotateKey( spep_0 -3 + 366, 1, 92.7 );
setRotateKey( spep_0 -3 + 368, 1, 91.7 );
setRotateKey( spep_0 -3 + 370, 1, 91.1 );
setRotateKey( spep_0 -3 + 372, 1, 90.6 );
setRotateKey( spep_0 -3 + 374, 1, 90.2 );
setRotateKey( spep_0 -3 + 376, 1, 89.9 );
setRotateKey( spep_0 -3 + 378, 1, 89.6 );
setRotateKey( spep_0 -3 + 380, 1, 89.5 );
setRotateKey( spep_0 -3 + 382, 1, 89.3 );
setRotateKey( spep_0 -3 + 384, 1, 89.2 );
setRotateKey( spep_0 -3 + 388, 1, 89.2 );

-- ** 音 ** --
--顔アップ
SE004 = playSe( spep_0 + 74, 1182 );
setSeVolumeByWorkId( spep_0 + 74, SE004, 0 );
setSeVolumeByWorkId( spep_0 + 77, SE004, 5 );
setSeVolumeByWorkId( spep_0 + 80, SE004, 24 );
setSeVolumeByWorkId( spep_0 + 82, SE004, 42 );
setSeVolumeByWorkId( spep_0 + 84, SE004, 56 );
setSeVolumeByWorkId( spep_0 + 85, SE004, 79 );

SE005 = playSe( spep_0 + 74, 1116 );
setSeVolumeByWorkId( spep_0 + 74, SE005, 71 );
stopSe( spep_0 + 98, SE005, 21 );

--腕振りかぶる
SE006 = playSe( spep_0 + 110, 1188 );
setSeVolumeByWorkId( spep_0 + 110, SE006, 0 );
setSeVolumeByWorkId( spep_0 + 116, SE006, 5 );
setSeVolumeByWorkId( spep_0 + 118, SE006, 14 );
setSeVolumeByWorkId( spep_0 + 120, SE006, 32 );
setSeVolumeByWorkId( spep_0 + 122, SE006, 57 );
setSeVolumeByWorkId( spep_0 + 123, SE006, 71 );
stopSe( spep_0 + 138, SE006, 12 );

SE007 = playSe( spep_0 + 114, 1117 );
setSeVolumeByWorkId( spep_0 + 114, SE007, 260 );
setPitch( spep_0 + 114, SE007, -1000 );
setTimeStretch( SE007, 0.33, 10, 1 );
stopSe( spep_0 + 126, SE007, 6 );

--パンチ
SE008 = playSe( spep_0 + 134, 1009 );
SE009 = playSe( spep_0 + 134, 1000 );
SE010 = playSe( spep_0 + 138, 1110 );

--キック
SE011 = playSe( spep_0 + 192, 1004 );
SE012 = playSe( spep_0 + 204, 1010 );
setSeVolumeByWorkId( spep_0 + 204, SE012, 120 );
SE013 = playSe( spep_0 + 206, 1190 );
setPitch( spep_0 + 206, SE013, -500 );
setTimeStretch( SE013, 0.6, 10, 1 );
SE014 = playSe( spep_0 + 208, 1110 );
setSeVolumeByWorkId( spep_0 + 208, SE014, 92 );

--叩きつけ
SE015 = playSe( spep_0 + 252, 1189 );
setSeVolumeByWorkId( spep_0 + 252, SE015, 69 );

SE016 = playSe( spep_0 + 258, 1159 );
setSeVolumeByWorkId( spep_0 + 258, SE016, 66 );
stopSe( spep_0 + 270, SE016, 24 );

SE017 = playSe( spep_0 + 258, 1182 );
setSeVolumeByWorkId( spep_0 + 258, SE017, 178 );
stopSe( spep_0 + 264, SE017, 3 );

SE018 = playSe( spep_0 + 258, 1187 );
setSeVolumeByWorkId( spep_0 + 258, SE018, 87 );
SE019 = playSe( spep_0 + 258, 20 );
setSeVolumeByWorkId( spep_0 + 258, SE019, 74 );

--蹴り上げ
SE020 = playSe( spep_0 + 304, 1123 );
SE021 = playSe( spep_0 + 308, 1110 );

--敵飛んでいく
SE022 = playSe( spep_0 + 352, 1183 );
stopSe( spep_0 + 404 +10, SE022, 0 );

SE023 = playSe( spep_0 + 352, 1121 );
setSeVolumeByWorkId( spep_0 + 352, SE023, 32 );
stopSe( spep_0 + 404 +10, SE023, 0 );

--岩にぶつかる
SE024 = playSe( spep_0 + 403, 1159 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 470;

------------------------------------------------------
-- 気溜め〜光弾をかかげる(306F)
------------------------------------------------------

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_1 + 0, SP_03x, 306, 0x100, -1, 0, 0, 0 );  --気溜め〜光弾をかかげる(ef_003)
setEffMoveKey( spep_1 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_1 + 306, tame, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_1 + 306, tame, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 306, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 306, tame, 255 );

spep_x = spep_1 + 220;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9 +60, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9 +60, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9 +60, 515.5 , 0 );

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

-- ** 背景 ** --
entryFadeBg( spep_1 + 0, 0, 306, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

--岩にぶつかる
stopSe( spep_1 + 25, SE024, 43 );

--気を溜める
SE025 = playSe( spep_1 + 3, 1226 );
setSeVolumeByWorkId( spep_1 + 3, SE025, 0 );
setSeVolumeByWorkId( spep_1 + 8, SE025, 2 );
setSeVolumeByWorkId( spep_1 + 12, SE025, 4 );
setSeVolumeByWorkId( spep_1 + 16, SE025, 6 );
setSeVolumeByWorkId( spep_1 + 20, SE025, 8 );
setSeVolumeByWorkId( spep_1 + 24, SE025, 10 );
setSeVolumeByWorkId( spep_1 + 28, SE025, 11 );
setSeVolumeByWorkId( spep_1 + 32, SE025, 13 );
setSeVolumeByWorkId( spep_1 + 36, SE025, 15 );
setSeVolumeByWorkId( spep_1 + 40, SE025, 16 );
setSeVolumeByWorkId( spep_1 + 44, SE025, 17 );
setSeVolumeByWorkId( spep_1 + 48, SE025, 19 );
setSeVolumeByWorkId( spep_1 + 52, SE025, 20 );
setSeVolumeByWorkId( spep_1 + 56, SE025, 21 );
setSeVolumeByWorkId( spep_1 + 60, SE025, 22 );
setSeVolumeByWorkId( spep_1 + 64, SE025, 23 );
setSeVolumeByWorkId( spep_1 + 68, SE025, 24 );
setSeVolumeByWorkId( spep_1 + 72, SE025, 25 );
setSeVolumeByWorkId( spep_1 + 76, SE025, 26 );
setSeVolumeByWorkId( spep_1 + 80, SE025, 27 );
setSeVolumeByWorkId( spep_1 + 84, SE025, 28 );
setSeVolumeByWorkId( spep_1 + 88, SE025, 29 );
setSeVolumeByWorkId( spep_1 + 92, SE025, 30 );
setSeVolumeByWorkId( spep_1 + 96, SE025, 31 );
setSeVolumeByWorkId( spep_1 + 100, SE025, 33 );
setSeVolumeByWorkId( spep_1 + 104, SE025, 34 );
setSeVolumeByWorkId( spep_1 + 108, SE025, 36 );
setSeVolumeByWorkId( spep_1 + 112, SE025, 38 );
setSeVolumeByWorkId( spep_1 + 116, SE025, 40 );
setSeVolumeByWorkId( spep_1 + 120, SE025, 41 );
setSeVolumeByWorkId( spep_1 + 124, SE025, 43 );
setSeVolumeByWorkId( spep_1 + 128, SE025, 45 );
setSeVolumeByWorkId( spep_1 + 132, SE025, 47 );
setSeVolumeByWorkId( spep_1 + 136, SE025, 49 );
setSeVolumeByWorkId( spep_1 + 140, SE025, 52 );
setSeVolumeByWorkId( spep_1 + 144, SE025, 56 );
setSeVolumeByWorkId( spep_1 + 148, SE025, 58 );
setSeVolumeByWorkId( spep_1 + 152, SE025, 60 );
setSeVolumeByWorkId( spep_1 + 156, SE025, 63 );
setSeVolumeByWorkId( spep_1 + 161, SE025, 68 );
setSeVolumeByWorkId( spep_1 + 162, SE025, 70 );
setSeVolumeByWorkId( spep_1 + 166, SE025, 74 );
setSeVolumeByWorkId( spep_1 + 170, SE025, 79 );
setSeVolumeByWorkId( spep_1 + 174, SE025, 82 );
setSeVolumeByWorkId( spep_1 + 178, SE025, 86 );
setSeVolumeByWorkId( spep_1 + 182, SE025, 92 );
setSeVolumeByWorkId( spep_1 + 186, SE025, 98 );
setSeVolumeByWorkId( spep_1 + 190, SE025, 112 );
setSeVolumeByWorkId( spep_1 + 191, SE025, 120 );

--稲妻走る
SE026 = playSe( spep_1 + 4, 1147 );
setSeVolumeByWorkId( spep_1 + 4, SE026, 48 );
stopSe( spep_1 + 112, SE026, 0 );

--気を溜める
SE027 = playSe( spep_1 + 56, 1227 );
setPitch( spep_1 + 56, SE027, -800 );
setTimeStretch( SE027, 0.47, 10, 1 );

--気が弾ける
SE028 = playSe( spep_1 + 102, 1191 );
setPitch( spep_1 + 102, SE028, -800 );
setTimeStretch( SE028, 0.47, 10, 1 );
stopSe( spep_1 + 141, SE028, 44 );

SE029 = playSe( spep_1 + 104, 1128 );
--setSeVolumeByWorkId( spep_1 + 104, SE029, 32 );
setSeVolumeByWorkId( spep_1 + 104, SE029, 0 );
setSeVolumeByWorkId( spep_1 + 105, SE029, 1.4 );
setSeVolumeByWorkId( spep_1 + 106, SE029, 2.8 );
setSeVolumeByWorkId( spep_1 + 107, SE029, 4.2 );
setSeVolumeByWorkId( spep_1 + 108, SE029, 5.6 );
setSeVolumeByWorkId( spep_1 + 109, SE029, 7 );
setSeVolumeByWorkId( spep_1 + 110, SE029, 8.4 );
setSeVolumeByWorkId( spep_1 + 111, SE029, 9.8 );
setSeVolumeByWorkId( spep_1 + 112, SE029, 11.2 );
setSeVolumeByWorkId( spep_1 + 113, SE029, 12.6 );
setSeVolumeByWorkId( spep_1 + 114, SE029, 14 );
setSeVolumeByWorkId( spep_1 + 115, SE029, 15.4 );
setSeVolumeByWorkId( spep_1 + 116, SE029, 16.8 );
setSeVolumeByWorkId( spep_1 + 117, SE029, 18.2 );
setSeVolumeByWorkId( spep_1 + 118, SE029, 19.6 );
setSeVolumeByWorkId( spep_1 + 119, SE029, 21 );
setSeVolumeByWorkId( spep_1 + 120, SE029, 22.4 );
setSeVolumeByWorkId( spep_1 + 121, SE029, 23.8 );
setSeVolumeByWorkId( spep_1 + 122, SE029, 25.2 );
setSeVolumeByWorkId( spep_1 + 123, SE029, 26.6 );
setSeVolumeByWorkId( spep_1 + 124, SE029, 28 );
setSeVolumeByWorkId( spep_1 + 125, SE029, 29.4 );
setSeVolumeByWorkId( spep_1 + 126, SE029, 30.8 );
setSeVolumeByWorkId( spep_1 + 160, SE029, 31.6 );
setSeVolumeByWorkId( spep_1 + 161, SE029, 31 );
setSeVolumeByWorkId( spep_1 + 162, SE029, 30.4 );
setSeVolumeByWorkId( spep_1 + 163, SE029, 29.8 );
setSeVolumeByWorkId( spep_1 + 164, SE029, 29.2 );
setSeVolumeByWorkId( spep_1 + 165, SE029, 28.6 );
setSeVolumeByWorkId( spep_1 + 166, SE029, 28 );
setSeVolumeByWorkId( spep_1 + 167, SE029, 27.4 );
setSeVolumeByWorkId( spep_1 + 168, SE029, 26.8 );
setSeVolumeByWorkId( spep_1 + 169, SE029, 26.2 );
setSeVolumeByWorkId( spep_1 + 170, SE029, 25.6 );
setSeVolumeByWorkId( spep_1 + 171, SE029, 25 );
setSeVolumeByWorkId( spep_1 + 172, SE029, 24.4 );
setSeVolumeByWorkId( spep_1 + 173, SE029, 23.8 );
setSeVolumeByWorkId( spep_1 + 174, SE029, 23.2 );
setSeVolumeByWorkId( spep_1 + 175, SE029, 22.6 );
setSeVolumeByWorkId( spep_1 + 176, SE029, 22 );
setSeVolumeByWorkId( spep_1 + 177, SE029, 21.4 );
setSeVolumeByWorkId( spep_1 + 178, SE029, 20.8 );
setSeVolumeByWorkId( spep_1 + 179, SE029, 20.2 );
setSeVolumeByWorkId( spep_1 + 180, SE029, 19.6 );
setSeVolumeByWorkId( spep_1 + 181, SE029, 19 );
setSeVolumeByWorkId( spep_1 + 182, SE029, 18.4 );
setSeVolumeByWorkId( spep_1 + 183, SE029, 17.8 );
setSeVolumeByWorkId( spep_1 + 184, SE029, 17.2 );
setSeVolumeByWorkId( spep_1 + 185, SE029, 16.6 );
setSeVolumeByWorkId( spep_1 + 186, SE029, 16 );
setSeVolumeByWorkId( spep_1 + 187, SE029, 15.4 );
setSeVolumeByWorkId( spep_1 + 188, SE029, 14.8 );
setSeVolumeByWorkId( spep_1 + 189, SE029, 14.2 );
setSeVolumeByWorkId( spep_1 + 190, SE029, 13.6 );
setSeVolumeByWorkId( spep_1 + 191, SE029, 13 );
setSeVolumeByWorkId( spep_1 + 192, SE029, 12.4 );
setSeVolumeByWorkId( spep_1 + 193, SE029, 11.8 );
setSeVolumeByWorkId( spep_1 + 194, SE029, 11.2 );
setSeVolumeByWorkId( spep_1 + 195, SE029, 10.6 );
setSeVolumeByWorkId( spep_1 + 196, SE029, 10 );
setSeVolumeByWorkId( spep_1 + 197, SE029, 9.4 );
setSeVolumeByWorkId( spep_1 + 198, SE029, 8.8 );
setSeVolumeByWorkId( spep_1 + 199, SE029, 8.2 );
setSeVolumeByWorkId( spep_1 + 200, SE029, 7.6 );
setSeVolumeByWorkId( spep_1 + 201, SE029, 7 );
setSeVolumeByWorkId( spep_1 + 202, SE029, 6.4 );
setSeVolumeByWorkId( spep_1 + 203, SE029, 5.8 );
setSeVolumeByWorkId( spep_1 + 204, SE029, 5.2 );
setSeVolumeByWorkId( spep_1 + 205, SE029, 4.6 );
setSeVolumeByWorkId( spep_1 + 206, SE029, 4 );
setSeVolumeByWorkId( spep_1 + 207, SE029, 3.4 );
setSeVolumeByWorkId( spep_1 + 208, SE029, 2.8 );
setSeVolumeByWorkId( spep_1 + 209, SE029, 2.2 );
setSeVolumeByWorkId( spep_1 + 210, SE029, 0 );
setPitch( spep_1 + 104, SE029, -600 );
setTimeStretch( SE029, 0.3, 10, 1 );
setStartTimeMs( SE029,  567 );

SE030 = playSe( spep_1 + 104, 1184 );
stopSe( spep_1 + 120, SE030, 79 );

--気弾手の上で溜める
SE031 = playSe( spep_1 + 150, 1240 );
setSeVolumeByWorkId( spep_1 + 150, SE031, 0 );
setSeVolumeByWorkId( spep_1 + 154, SE031, 11 );
setSeVolumeByWorkId( spep_1 + 158, SE031, 28 );
setSeVolumeByWorkId( spep_1 + 162, SE031, 42 );
setSeVolumeByWorkId( spep_1 + 166, SE031, 57 );
setSeVolumeByWorkId( spep_1 + 170, SE031, 86 );
setSeVolumeByWorkId( spep_1 + 174, SE031, 112 );
setSeVolumeByWorkId( spep_1 + 177, SE031, 126 );
setStartTimeMs( SE031,  2533 );
setPitch( spep_1 + 150, SE031, -400 );
setTimeStretch( SE031, 0.61, 10, 1 );

SE032 = playSe( spep_1 + 184, 1148 );
setSeVolumeByWorkId( spep_1 + 184, SE032, 50 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 304;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
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

--気を溜める
stopSe( spep_2 + 14, SE025, 0 );
stopSe( spep_2 + 14, SE027, 0 );

--気弾手の上で溜める
stopSe( spep_2 + 8, SE031, 0 );
stopSe( spep_2 + 14, SE032, 0 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_3 = spep_2 + 94;

------------------------------------------------------
-- 投げる〜着弾(256F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 );  --投げる〜着弾(ef_004)
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 256, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 256, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 256, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 256, finish_f, 255 );

finish_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --投げる〜着弾(ef_005)
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 256, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 256, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 256, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 256, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 106, 1, 1 );
setDisp( spep_3 -3 + 230, 1, 0 );
changeAnime( spep_3 -3 + 106, 1, 108 );

setBlendColor( spep_3 -3 + 106, 1, 3, 0.94, 0.67, 0.97, 1.0 );
setBlendColor( spep_3 -3 + 230, 1, 3, 0.94, 0.67, 0.97, 1.0 );
setBlendColor( spep_3 -3 + 231, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_3 -3 + 232, 1, 3, 0, 0, 0, 0 );

setMoveKey( spep_3 -3 + 106, 1, 12.6, -167.2 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 13.5, -169.6 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 14.5, -172 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 15.4, -174.4 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 31.5, -162.6 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 18.4, -158.9 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 19.2, -167.6 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 28.8, -183.7 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 1.5, -169.9 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 17.3, -174.4 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 20.8, -174.9 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 17.6, -178.3 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 23.8, -184.6 , 0 );
setMoveKey( spep_3 -3 + 132, 1, 38.2, -183 , 0 );
setMoveKey( spep_3 -3 + 134, 1, 20.8, -197.2 , 0 );
setMoveKey( spep_3 -3 + 136, 1, 29.7, -179.8 , 0 );
setMoveKey( spep_3 -3 + 138, 1, 18, -170.9 , 0 );
setMoveKey( spep_3 -3 + 140, 1, 21.1, -194.2 , 0 );
setMoveKey( spep_3 -3 + 142, 1, 41.4, -182.9 , 0 );
setMoveKey( spep_3 -3 + 144, 1, 30.5, -198.2 , 0 );
setMoveKey( spep_3 -3 + 146, 1, 20.4, -206.8 , 0 );
setMoveKey( spep_3 -3 + 148, 1, 35.7, -195.6 , 0 );
setMoveKey( spep_3 -3 + 150, 1, 28.1, -199.4 , 0 );
setMoveKey( spep_3 -3 + 152, 1, 28.2, -202.6 , 0 );
setMoveKey( spep_3 -3 + 154, 1, 34.7, -183 , 0 );
setMoveKey( spep_3 -3 + 156, 1, 42.7, -190.3 , 0 );
setMoveKey( spep_3 -3 + 158, 1, 31.5, -193 , 0 );
setMoveKey( spep_3 -3 + 160, 1, 41, -198.2 , 0 );
setMoveKey( spep_3 -3 + 162, 1, 33, -195.2 , 0 );
setMoveKey( spep_3 -3 + 164, 1, 29, -202.4 , 0 );
setMoveKey( spep_3 -3 + 166, 1, 25.4, -200.2 , 0 );
setMoveKey( spep_3 -3 + 168, 1, 21.2, -189.6 , 0 );
setMoveKey( spep_3 -3 + 170, 1, 46, -207.5 , 0 );
setMoveKey( spep_3 -3 + 172, 1, 34, -184.7 , 0 );
setMoveKey( spep_3 -3 + 174, 1, 32.3, -190.5 , 0 );
setMoveKey( spep_3 -3 + 176, 1, 26.5, -200.7 , 0 );
setMoveKey( spep_3 -3 + 178, 1, 31, -197.7 , 0 );
setMoveKey( spep_3 -3 + 180, 1, 38, -197.2 , 0 );
setMoveKey( spep_3 -3 + 182, 1, 26.6, -205.9 , 0 );
setMoveKey( spep_3 -3 + 184, 1, 32.4, -206.6 , 0 );
setMoveKey( spep_3 -3 + 186, 1, 29.1, -200.9 , 0 );
setMoveKey( spep_3 -3 + 188, 1, 30.6, -198.2 , 0 );
setMoveKey( spep_3 -3 + 190, 1, 32.3, -196.1 , 0 );
setMoveKey( spep_3 -3 + 192, 1, 31.8, -197.7 , 0 );
setMoveKey( spep_3 -3 + 194, 1, 37.4, -186.6 , 0 );
setMoveKey( spep_3 -3 + 196, 1, 21.9, -212.3 , 0 );
setMoveKey( spep_3 -3 + 198, 1, 33.8, -204.8 , 0 );
setMoveKey( spep_3 -3 + 200, 1, 35.7, -178.5 , 0 );
setMoveKey( spep_3 -3 + 202, 1, 45.3, -207.8 , 0 );
setMoveKey( spep_3 -3 + 204, 1, 20.6, -195.7 , 0 );
setMoveKey( spep_3 -3 + 206, 1, 32.1, -197.1 , 0 );
setMoveKey( spep_3 -3 + 208, 1, 32.5, -196 , 0 );
setMoveKey( spep_3 -3 + 210, 1, 12.9, -192.4 , 0 );
setMoveKey( spep_3 -3 + 212, 1, 37, -181.1 , 0 );
setMoveKey( spep_3 -3 + 214, 1, 48.9, -201.1 , 0 );
setMoveKey( spep_3 -3 + 216, 1, 20, -189.4 , 0 );
setMoveKey( spep_3 -3 + 218, 1, 29.3, -203.6 , 0 );
setMoveKey( spep_3 -3 + 220, 1, 34.8, -193.8 , 0 );
setMoveKey( spep_3 -3 + 222, 1, 35.5, -196.3 , 0 );
setMoveKey( spep_3 -3 + 224, 1, 31.8, -196.2 , 0 );
setMoveKey( spep_3 -3 + 226, 1, 31.8, -193.3 , 0 );
setMoveKey( spep_3 -3 + 228, 1, 46.9, -188.3 , 0 );
setMoveKey( spep_3 -3 + 230, 1, 23.8, -186.2 , 0 );

b1 = 0.4;
setScaleKey( spep_3 -3 + 106, 1, 1.14 +b1, 1.14 +b1 );
setScaleKey( spep_3 -3 + 108, 1, 1.15 +b1, 1.15 +b1 );
setScaleKey( spep_3 -3 + 110, 1, 1.16 +b1, 1.16 +b1 );
setScaleKey( spep_3 -3 + 112, 1, 1.17 +b1, 1.17 +b1 );
setScaleKey( spep_3 -3 + 114, 1, 1.18 +b1, 1.18 +b1 );
setScaleKey( spep_3 -3 + 116, 1, 1.18 +b1, 1.18 +b1 );
setScaleKey( spep_3 -3 + 118, 1, 1.19 +b1, 1.19 +b1 );
setScaleKey( spep_3 -3 + 120, 1, 1.2 +b1, 1.2 +b1 );
setScaleKey( spep_3 -3 + 122, 1, 1.21 +b1, 1.21 +b1 );
setScaleKey( spep_3 -3 + 124, 1, 1.22 +b1, 1.22 +b1 );
setScaleKey( spep_3 -3 + 126, 1, 1.23 +b1, 1.23 +b1 );
setScaleKey( spep_3 -3 + 128, 1, 1.24 +b1, 1.24 +b1 );
setScaleKey( spep_3 -3 + 130, 1, 1.25 +b1, 1.25 +b1 );
setScaleKey( spep_3 -3 + 132, 1, 1.25 +b1, 1.25 +b1 );
setScaleKey( spep_3 -3 + 134, 1, 1.26 +b1, 1.26 +b1 );
setScaleKey( spep_3 -3 + 136, 1, 1.27 +b1, 1.27 +b1 );
setScaleKey( spep_3 -3 + 138, 1, 1.28 +b1, 1.28 +b1 );
setScaleKey( spep_3 -3 + 140, 1, 1.29 +b1, 1.29 +b1 );
setScaleKey( spep_3 -3 + 142, 1, 1.3 +b1, 1.3 +b1 );
setScaleKey( spep_3 -3 + 144, 1, 1.31 +b1, 1.31 +b1 );
setScaleKey( spep_3 -3 + 146, 1, 1.32 +b1, 1.32 +b1 );
setScaleKey( spep_3 -3 + 230, 1, 1.32 +b1, 1.32 +b1 );

setRotateKey( spep_3 -3 + 106, 1, 64.3 );
setRotateKey( spep_3 -3 + 230, 1, 64.3 );

-- ** 音 ** --
--気弾発射前溜め
SE033 = playSe( spep_3 + 0, 1226 );
stopSe( spep_3 + 23, SE033, 14 +10 );

--[[SE034 = playSe( spep_3 + 0, 1227 );
setPitch( spep_3 + 0, SE034, -800 );
setTimeStretch( SE034, 0.47, 10, 1 );
stopSe( spep_3 + 24, SE034, 12 +10 );

SE035 = playSe( spep_3 + 0, 1240 );
setSeVolumeByWorkId( spep_3 + 0, SE035, 126 );
setPitch( spep_3 + 0, SE035, -400 );
setTimeStretch( SE035, 0.61, 10, 1 );
stopSe( spep_3 + 24, SE035, 12 +10 );]]

SE036 = playSe( spep_3 + 0, 1148 );
setSeVolumeByWorkId( spep_3 + 0, SE036, 33 );

--気弾発射
SE037 = playSe( spep_3 + 16, 1240 );
setSeVolumeByWorkId( spep_3 + 16, SE037, 0 );
setSeVolumeByWorkId( spep_3 + 18, SE037, 31 );
setSeVolumeByWorkId( spep_3 + 20, SE037, 54 );
setSeVolumeByWorkId( spep_3 + 22, SE037, 84 );
setSeVolumeByWorkId( spep_3 + 24, SE037, 100 );
setSeVolumeByWorkId( spep_3 + 25, SE037, 130 );
setStartTimeMs( SE037,  2700 );
setPitch( spep_3 + 16, SE037, -400 );
setTimeStretch( SE037, 1.47, 10, 1 );
stopSe( spep_3 + 120, SE037, 29 );

SE038 = playSe( spep_3 + 18, 1027 );
setSeVolumeByWorkId( spep_3 + 18, SE038, 63 );
setTimeStretch( SE038, 1.67, 10, 1 );

SE039 = playSe( spep_3 + 18, 1021 );
setSeVolumeByWorkId( spep_3 + 18, SE039, 71 );
setTimeStretch( SE039, 1.25, 10, 1 );

SE040 = playSe( spep_3 + 18, 1193 );
setSeVolumeByWorkId( spep_3 + 18, SE040, 95 );
stopSe( spep_3 + 116, SE040, 29 );

SE041 = playSe( spep_3 + 18, 1278 );
setSeVolumeByWorkId( spep_3 + 18, SE041, 78 );
setTimeStretch( SE041, 0.5, 10, 1 );

SE042 = playSe( spep_3 + 18, 1266 );
setSeVolumeByWorkId( spep_3 + 18, SE042, 47 );
setTimeStretch( SE042, 0.5, 10, 1 );

--爆発
SE043 = playSe( spep_3 + 110, 1159 );
setSeVolumeByWorkId( spep_3 + 110, SE043, 86 );
SE044 = playSe( spep_3 + 112, 1067 );
setSeVolumeByWorkId( spep_3 + 112, SE044, 77 );
SE045 = playSe( spep_3 + 116, 1188 );
setSeVolumeByWorkId( spep_3 + 116, SE045, 83 );
SE046 = playSe( spep_3 + 128, 1044 );
setSeVolumeByWorkId( spep_3 + 128, SE046, 100 );
stopSe( spep_3 + 254, SE046, 0 );

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 256, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 144 );
endPhase( spep_3 + 254 );

end