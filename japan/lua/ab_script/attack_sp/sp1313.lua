--超トランクス_バスターキャノン

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
SP_01 = 153792; --アイドリング
SP_02 = 153793; --連撃～蹴り飛ばし
SP_03 = 153794; --敵に近づいて振り上げる
SP_04 = 153795; --打ち落とす～敵が斜め下に落ちる
SP_05 = 153796; --敵落下
SP_06 = 153797; --気溜め
SP_07 = 153798; --発射
SP_08 = 153799; --爆発


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
-- アイドリング(78F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
idling = entryEffectLife( spep_0 + 0, SP_01, 77, 0x80, -1, 0, 0, 0 );  --アイドリング(ef_001)
setEffMoveKey( spep_0 + 0, idling, 0, 0, 0 );
setEffMoveKey( spep_0 + 77, idling, 0, 0, 0 );

setEffScaleKey( spep_0 + 0, idling, 1.0, 1.0 );
setEffScaleKey( spep_0 + 77, idling, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, idling, 0 );
setEffRotateKey( spep_0 + 77, idling, 0 );

setEffAlphaKey( spep_0 + 0, idling, 255 );
setEffAlphaKey( spep_0 + 77, idling, 255 );

-- ** 敵の動き ** --
changeAnime( spep_0 + 0, 1, 100 );
setDisp( spep_0 + 0, 1, 1 );

setMoveKey( spep_0 + 0, 1, 196.7, 230.1 , 0 );
setMoveKey( spep_0 + 2, 1, 201.4, 229.1 , 0 );
setMoveKey( spep_0 + 4, 1, 206, 228.2 , 0 );
setMoveKey( spep_0 + 6, 1, 210.4, 227.3 , 0 );
setMoveKey( spep_0 + 8, 1, 214.6, 226.4 , 0 );
setMoveKey( spep_0 + 10, 1, 218.7, 225.6 , 0 );
setMoveKey( spep_0 + 12, 1, 222.6, 224.8 , 0 );
setMoveKey( spep_0 + 14, 1, 226.3, 224 , 0 );
setMoveKey( spep_0 + 16, 1, 229.8, 223.3 , 0 );
setMoveKey( spep_0 + 18, 1, 233.1, 222.6 , 0 );
setMoveKey( spep_0 + 20, 1, 236.1, 222 , 0 );
setMoveKey( spep_0 + 22, 1, 239, 221.4 , 0 );
setMoveKey( spep_0 + 24, 1, 241.5, 220.9 , 0 );
setMoveKey( spep_0 + 26, 1, 244, 220.4 , 0 );
setMoveKey( spep_0 + 28, 1, 246.4, 219.9 , 0 );
setMoveKey( spep_0 + 30, 1, 248.6, 219.5 , 0 );
setMoveKey( spep_0 + 32, 1, 250.8, 219 , 0 );
setMoveKey( spep_0 + 34, 1, 252.9, 218.6 , 0 );
setMoveKey( spep_0 + 36, 1, 254.8, 218.2 , 0 );
setMoveKey( spep_0 + 38, 1, 256.6, 217.9 , 0 );
setMoveKey( spep_0 + 40, 1, 258.2, 217.5 , 0 );
setMoveKey( spep_0 + 42, 1, 259.7, 217.2 , 0 );
setMoveKey( spep_0 + 44, 1, 261, 216.9 , 0 );
setMoveKey( spep_0 + 46, 1, 262.2, 216.7 , 0 );
setMoveKey( spep_0 + 48, 1, 263.3, 216.5 , 0 );
setMoveKey( spep_0 + 50, 1, 264.3, 216.3 , 0 );
setMoveKey( spep_0 + 52, 1, 265.1, 216.1 , 0 );
setMoveKey( spep_0 + 54, 1, 265.8, 216 , 0 );
setMoveKey( spep_0 + 56, 1, 266.7, 216 , 0 );
setMoveKey( spep_0 + 77, 1, 266.7, 216 , 0 );

setScaleKey( spep_0 + 0, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 2, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 4, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 6, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 8, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 12, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 14, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 18, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 20, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 24, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 26, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 30, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 32, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 34, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 36, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 40, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 42, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 46, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 48, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 52, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 54, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 77, 1, 0.78, 0.78 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 77, 1, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0, 906, 78, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0, 0 );
setEffMoveKey( spep_0 + 78, shuchusen1, 0, 0, 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.25, 1.25 );
setEffScaleKey( spep_0 + 2, shuchusen1, 1.25, 1.25 );
setEffScaleKey( spep_0 + 4, shuchusen1, 1.24, 1.24 );
setEffScaleKey( spep_0 + 6, shuchusen1, 1.24, 1.24 );
setEffScaleKey( spep_0 + 8, shuchusen1, 1.23, 1.23 );
setEffScaleKey( spep_0 + 12, shuchusen1, 1.23, 1.23 );
setEffScaleKey( spep_0 + 14, shuchusen1, 1.22, 1.22 );
setEffScaleKey( spep_0 + 18, shuchusen1, 1.22, 1.22 );
setEffScaleKey( spep_0 + 20, shuchusen1, 1.21, 1.21 );
setEffScaleKey( spep_0 + 22, shuchusen1, 1.21, 1.21 );
setEffScaleKey( spep_0 + 24, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_0 + 28, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_0 + 30, shuchusen1, 1.19, 1.19 );
setEffScaleKey( spep_0 + 32, shuchusen1, 1.19, 1.19 );
setEffScaleKey( spep_0 + 34, shuchusen1, 1.18, 1.18 );
setEffScaleKey( spep_0 + 38, shuchusen1, 1.18, 1.18 );
setEffScaleKey( spep_0 + 40, shuchusen1, 1.17, 1.17 );
setEffScaleKey( spep_0 + 44, shuchusen1, 1.17, 1.17 );
setEffScaleKey( spep_0 + 46, shuchusen1, 1.16, 1.16 );
setEffScaleKey( spep_0 + 48, shuchusen1, 1.16, 1.16 );
setEffScaleKey( spep_0 + 50, shuchusen1, 1.15, 1.15 );
setEffScaleKey( spep_0 + 54, shuchusen1, 1.15, 1.15 );
setEffScaleKey( spep_0 + 56, shuchusen1, 1.14, 1.14 );
setEffScaleKey( spep_0 + 58, shuchusen1, 1.14, 1.14 );
setEffScaleKey( spep_0 + 60, shuchusen1, 1.13, 1.13 );
setEffScaleKey( spep_0 + 64, shuchusen1, 1.13, 1.13 );
setEffScaleKey( spep_0 + 66, shuchusen1, 1.12, 1.12 );
setEffScaleKey( spep_0 + 70, shuchusen1, 1.12, 1.12 );
setEffScaleKey( spep_0 + 72, shuchusen1, 1.11, 1.11 );
setEffScaleKey( spep_0 + 74, shuchusen1, 1.11, 1.11 );
setEffScaleKey( spep_0 + 76, shuchusen1, 1.1, 1.1 );
setEffScaleKey( spep_0 + 78, shuchusen1, 1.1, 1.1 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 2, shuchusen1, 180 );
setEffRotateKey( spep_0 + 4, shuchusen1, 0 );
setEffRotateKey( spep_0 + 6, shuchusen1, 180 );
setEffRotateKey( spep_0 + 8, shuchusen1, 0 );
setEffRotateKey( spep_0 + 10, shuchusen1, 180 );
setEffRotateKey( spep_0 + 12, shuchusen1, 0 );
setEffRotateKey( spep_0 + 14, shuchusen1, 180 );
setEffRotateKey( spep_0 + 16, shuchusen1, 0 );
setEffRotateKey( spep_0 + 18, shuchusen1, 180 );
setEffRotateKey( spep_0 + 20, shuchusen1, 0 );
setEffRotateKey( spep_0 + 22, shuchusen1, 180 );
setEffRotateKey( spep_0 + 24, shuchusen1, 0 );
setEffRotateKey( spep_0 + 26, shuchusen1, 180 );
setEffRotateKey( spep_0 + 28, shuchusen1, 0 );
setEffRotateKey( spep_0 + 30, shuchusen1, 180 );
setEffRotateKey( spep_0 + 32, shuchusen1, 0 );
setEffRotateKey( spep_0 + 34, shuchusen1, 180 );
setEffRotateKey( spep_0 + 36, shuchusen1, 0 );
setEffRotateKey( spep_0 + 38, shuchusen1, 180 );
setEffRotateKey( spep_0 + 40, shuchusen1, 0 );
setEffRotateKey( spep_0 + 42, shuchusen1, 180 );
setEffRotateKey( spep_0 + 44, shuchusen1, 0 );
setEffRotateKey( spep_0 + 46, shuchusen1, 180 );
setEffRotateKey( spep_0 + 48, shuchusen1, 0 );
setEffRotateKey( spep_0 + 50, shuchusen1, 180 );
setEffRotateKey( spep_0 + 52, shuchusen1, 0 );
setEffRotateKey( spep_0 + 54, shuchusen1, 180 );
setEffRotateKey( spep_0 + 56, shuchusen1, 0 );
setEffRotateKey( spep_0 + 58, shuchusen1, 180 );
setEffRotateKey( spep_0 + 60, shuchusen1, 0 );
setEffRotateKey( spep_0 + 62, shuchusen1, 180 );
setEffRotateKey( spep_0 + 64, shuchusen1, 0 );
setEffRotateKey( spep_0 + 66, shuchusen1, 180 );
setEffRotateKey( spep_0 + 68, shuchusen1, 0 );
setEffRotateKey( spep_0 + 70, shuchusen1, 180 );
setEffRotateKey( spep_0 + 72, shuchusen1, 0 );
setEffRotateKey( spep_0 + 74, shuchusen1, 180 );
setEffRotateKey( spep_0 + 76, shuchusen1, 0 );
setEffRotateKey( spep_0 + 78, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 135 );
setEffAlphaKey( spep_0 + 78, shuchusen1, 135 );

-- ** 白フェード ** --
entryFade( spep_0 + 70, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 78, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 音 ** --
playSe( spep_0 + 10, 04 );  --ダッシュ
playSe( spep_0 + 55, 1018 );  --ダッシュ

-- ** 次の準備 ** --
spep_1 = spep_0 + 78;

------------------------------------------------------
-- 連撃～蹴り飛ばし(134F)
------------------------------------------------------

-- ** エフェクト等 ** --
rush = entryEffectLife( spep_1 + 0, SP_02, 134, 0x100, -1, 0, 0, 0 );  --連撃～蹴り飛ばし(ef_002)
setEffMoveKey( spep_1 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_1 + 134, rush, 0, 0, 0 );

setEffScaleKey( spep_1 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_1 + 134, rush, 1.0, 1.0 );

setEffRotateKey( spep_1 + 0, rush, 0 );
setEffRotateKey( spep_1 + 134, rush, 0 );

setEffAlphaKey( spep_1 + 0, rush, 255 );
setEffAlphaKey( spep_1 + 134, rush, 255 );

-- ** 敵の動き ** --
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 101 );

setMoveKey( spep_1 + 0, 1, 99.2, 97.6 , 0 );
setMoveKey( spep_1 + 1, 1, 95.2, 96.4 , 0 );
setMoveKey( spep_1 + 3, 1, 91.2, 95.3 , 0 );
setMoveKey( spep_1 + 5, 1, 87.2, 94.1 , 0 );
setMoveKey( spep_1 + 7, 1, 83.2, 93 , 0 );
setMoveKey( spep_1 + 9, 1, 79.2, 91.9 , 0 );
setMoveKey( spep_1 + 11, 1, 75.2, 90.7 , 0 );
setMoveKey( spep_1 + 13, 1, 71.2, 89.6 , 0 );
setMoveKey( spep_1 + 15, 1, 67.2, 88.4 , 0 );

setScaleKey( spep_1 + 0, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 15, 1, 1.32, 1.32 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 15, 1, 0 );

-- ** 流線** --
ryusen1 = entryEffectLife( spep_1 + 0, 914, 133, 0x80, -1, 0, -1476.3, -335.7 );
setEffMoveKey( spep_1 + 0, ryusen1, -1476.3, -335.7 , 0 );
setEffMoveKey( spep_1 + 2, ryusen1, 61.1, 65.4 , 0 );
setEffMoveKey( spep_1 + 4, ryusen1, -246.4, -14.8 , 0 );
setEffMoveKey( spep_1 + 6, ryusen1, -553.9, -95 , 0 );
setEffMoveKey( spep_1 + 8, ryusen1, -861.4, -175.3 , 0 );
setEffMoveKey( spep_1 + 10, ryusen1, -1168.8, -255.5 , 0 );
setEffMoveKey( spep_1 + 12, ryusen1, -1476.3, -335.7 , 0 );
setEffMoveKey( spep_1 + 15, ryusen1, 61.1, 65.4 , 0 );

setEffScaleKey( spep_1 + 0, ryusen1, 3.74, 1.32 );
setEffScaleKey( spep_1 + 15, ryusen1, 3.74, 1.32 );

setEffRotateKey( spep_1 + 0, ryusen1, -14.6 );
setEffRotateKey( spep_1 + 15, ryusen1, -14.6 );

setEffAlphaKey( spep_1 + 0, ryusen1, 255 );
setEffAlphaKey( spep_1 + 15, ryusen1, 255 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 16; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
setMoveKey( SP_dodge + 0, 1, 67.2, 88.4 , 0 );
setMoveKey( SP_dodge + 10, 1, 67.2, 88.4 , 0 );

setScaleKey( SP_dodge + 0, 1, 1.32, 1.32 );
setScaleKey( SP_dodge + 10, 1, 1.32, 1.32 );

setRotateKey( SP_dodge + 0, 1, -3.2 );
setRotateKey( SP_dodge + 10, 1, -3.2 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end

------------------------------------------------------

-- ** 敵の動き ** --
changeAnime( spep_1 + 27, 1, 108 );
changeAnime( spep_1 + 61, 1, 106 );
changeAnime( spep_1 + 97, 1, 108 );

setMoveKey( spep_1 + 17, 1, 63.2, 87.3 , 0 );
setMoveKey( spep_1 + 19, 1, 59.2, 86.1 , 0 );
setMoveKey( spep_1 + 21, 1, 55.2, 85 , 0 );
setMoveKey( spep_1 + 23, 1, 51.2, 83.9 , 0 );
setMoveKey( spep_1 + 26, 1, 47.2, 82.7 , 0 );
setMoveKey( spep_1 + 27, 1, 13.4, 77.1 , 0 );
setMoveKey( spep_1 + 29, 1, 30.5, 107.9 , 0 );
setMoveKey( spep_1 + 31, 1, 29, 74.3 , 0 );
setMoveKey( spep_1 + 33, 1, 16.7, 80.4 , 0 );
setMoveKey( spep_1 + 35, 1, 33.9, 111.2 , 0 );
setMoveKey( spep_1 + 37, 1, 32.3, 77.6 , 0 );
setMoveKey( spep_1 + 39, 1, 20, 83.7 , 0 );
setMoveKey( spep_1 + 41, 1, 37.2, 114.5 , 0 );
setMoveKey( spep_1 + 43, 1, 35.7, 80.9 , 0 );
setMoveKey( spep_1 + 45, 1, 23.4, 87 , 0 );
setMoveKey( spep_1 + 47, 1, 53.4, 89.2 , 0 );
setMoveKey( spep_1 + 49, 1, 41.3, 53.7 , 0 );
setMoveKey( spep_1 + 51, 1, 32, 63.1 , 0 );
setMoveKey( spep_1 + 53, 1, 62.1, 87.6 , 0 );
setMoveKey( spep_1 + 55, 1, 49.8, 52.1 , 0 );
setMoveKey( spep_1 + 57, 1, 40.5, 61.6 , 0 );
setMoveKey( spep_1 + 60, 1, 70.7, 86 , 0 );
setMoveKey( spep_1 + 61, 1, 49.1, 64.9 , 0 );
setMoveKey( spep_1 + 63, 1, 63.6, 66.8 , 0 );
setMoveKey( spep_1 + 65, 1, 85, 119.9 , 0 );
setMoveKey( spep_1 + 67, 1, 128.2, 111.5 , 0 );
setMoveKey( spep_1 + 69, 1, 174.1, 145.4 , 0 );
setMoveKey( spep_1 + 71, 1, 160.5, 157 , 0 );
setMoveKey( spep_1 + 73, 1, 188.1, 151.6 , 0 );
setMoveKey( spep_1 + 75, 1, 179.3, 157.7 , 0 );
setMoveKey( spep_1 + 77, 1, 170.5, 163.8 , 0 );
setMoveKey( spep_1 + 79, 1, 164.7, 155.2 , 0 );
setMoveKey( spep_1 + 81, 1, 158.9, 146.5 , 0 );
setMoveKey( spep_1 + 83, 1, 153.1, 137.9 , 0 );
setMoveKey( spep_1 + 85, 1, 147.3, 129.3 , 0 );
setMoveKey( spep_1 + 87, 1, 141.5, 120.7 , 0 );
setMoveKey( spep_1 + 89, 1, 135.7, 112.1 , 0 );
setMoveKey( spep_1 + 91, 1, 129.8, 103.4 , 0 );
setMoveKey( spep_1 + 93, 1, 124, 94.8 , 0 );
setMoveKey( spep_1 + 96, 1, 118.2, 86.2 , 0 );
setMoveKey( spep_1 + 97, 1, 120.8, -83.4 , 0 );
setMoveKey( spep_1 + 99, 1, 49.6, -139.1 , 0 );
setMoveKey( spep_1 + 101, 1, 84.2, -122 , 0 );
setMoveKey( spep_1 + 103, 1, 260.7, -432.2 , 0 );
setMoveKey( spep_1 + 105, 1, 260.8, -477.1 , 0 );
setMoveKey( spep_1 + 107, 1, 325.4, -545.4 , 0 );
setMoveKey( spep_1 + 109, 1, 322.3, -593.7 , 0 );
setMoveKey( spep_1 + 111, 1, 360.8, -630.6 , 0 );
setMoveKey( spep_1 + 113, 1, 426.1, -697.8 , 0 );
setMoveKey( spep_1 + 115, 1, 422.9, -747.3 , 0 );
setMoveKey( spep_1 + 117, 1, 460.9, -784.1 , 0 );
setMoveKey( spep_1 + 119, 1, 526.7, -850.2 , 0 );
setMoveKey( spep_1 + 121, 1, 523.4, -901 , 0 );
setMoveKey( spep_1 + 123, 1, 560.9, -937.6 , 0 );
setMoveKey( spep_1 + 125, 1, 627.2, -1002.5 , 0 );
setMoveKey( spep_1 + 127, 1, 623.9, -1054.6 , 0 );
setMoveKey( spep_1 + 129, 1, 660.9, -1091 , 0 );
setMoveKey( spep_1 + 131, 1, 727.8, -1154.8 , 0 );
setMoveKey( spep_1 + 134, 1, 727.8, -1154.8 , 0 );

setScaleKey( spep_1 + 26, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 27, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 45, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 47, 1, 1.48, 1.48 );
setScaleKey( spep_1 + 49, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 60, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 61, 1, 1.27, 1.27 );
setScaleKey( spep_1 + 63, 1, 1.26, 1.26 );
setScaleKey( spep_1 + 67, 1, 1.26, 1.26 );
setScaleKey( spep_1 + 69, 1, 1.21, 1.21 );
setScaleKey( spep_1 + 71, 1, 1.22, 1.22 );
setScaleKey( spep_1 + 73, 1, 1.28, 1.28 );
setScaleKey( spep_1 + 75, 1, 1.27, 1.27 );
setScaleKey( spep_1 + 79, 1, 1.27, 1.27 );
setScaleKey( spep_1 + 81, 1, 1.28, 1.28 );
setScaleKey( spep_1 + 83, 1, 1.29, 1.29 );
setScaleKey( spep_1 + 85, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 87, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 89, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 91, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 93, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 96, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 97, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 99, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 101, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 103, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 105, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 117, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 119, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 131, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 134, 1, 1.44, 1.44 );

setRotateKey( spep_1 + 26, 1, 0 );
setRotateKey( spep_1 + 27, 1, -31.1 );
setRotateKey( spep_1 + 45, 1, -31.1 );
setRotateKey( spep_1 + 47, 1, -12.3 );
setRotateKey( spep_1 + 49, 1, -12.2 );
setRotateKey( spep_1 + 51, 1, -12.2 );
setRotateKey( spep_1 + 53, 1, -12.1 );
setRotateKey( spep_1 + 55, 1, -12 );
setRotateKey( spep_1 + 57, 1, -11.9 );
setRotateKey( spep_1 + 60, 1, -11.8 );
setRotateKey( spep_1 + 61, 1, -54.2 );
setRotateKey( spep_1 + 63, 1, -51.5 );
setRotateKey( spep_1 + 65, 1, -48.9 );
setRotateKey( spep_1 + 67, 1, -46.2 );
setRotateKey( spep_1 + 69, 1, -27 );
setRotateKey( spep_1 + 71, 1, -26.3 );
setRotateKey( spep_1 + 73, 1, -25.5 );
setRotateKey( spep_1 + 75, 1, -25.2 );
setRotateKey( spep_1 + 77, 1, -24.8 );
setRotateKey( spep_1 + 79, 1, -24 );
setRotateKey( spep_1 + 81, 1, -23.1 );
setRotateKey( spep_1 + 83, 1, -22.3 );
setRotateKey( spep_1 + 85, 1, -21.4 );
setRotateKey( spep_1 + 87, 1, -20.6 );
setRotateKey( spep_1 + 79, 1, -19.8 );
setRotateKey( spep_1 + 91, 1, -18.9 );
setRotateKey( spep_1 + 93, 1, -18.1 );
setRotateKey( spep_1 + 96, 1, -17.3 );
setRotateKey( spep_1 + 97, 1, 50.7 );
setRotateKey( spep_1 + 99, 1, 56.4 );
setRotateKey( spep_1 + 101, 1, 58.9 );
setRotateKey( spep_1 + 103, 1, 59.7 );
setRotateKey( spep_1 + 105, 1, 59.9 );
setRotateKey( spep_1 + 107, 1, 59.2 );
setRotateKey( spep_1 + 109, 1, 58.5 );
setRotateKey( spep_1 + 111, 1, 57.9 );
setRotateKey( spep_1 + 113, 1, 57.2 );
setRotateKey( spep_1 + 115, 1, 56.5 );
setRotateKey( spep_1 + 117, 1, 55.8 );
setRotateKey( spep_1 + 119, 1, 55.1 );
setRotateKey( spep_1 + 121, 1, 54.5 );
setRotateKey( spep_1 + 123, 1, 53.8 );
setRotateKey( spep_1 + 125, 1, 53.1 );
setRotateKey( spep_1 + 127, 1, 52.4 );
setRotateKey( spep_1 + 129, 1, 51.7 );
setRotateKey( spep_1 + 131, 1, 51.1 );
setRotateKey( spep_1 + 134, 1, 51.1 );

-- ** 流線** --
setEffMoveKey( spep_1 + 16, ryusen1, -246.4, -14.8 , 0 );
setEffMoveKey( spep_1 + 18, ryusen1, -553.9, -95 , 0 );
setEffMoveKey( spep_1 + 20, ryusen1, -861.4, -175.3 , 0 );
setEffMoveKey( spep_1 + 22, ryusen1, -1168.8, -255.5 , 0 );
setEffMoveKey( spep_1 + 24, ryusen1, -1476.3, -335.7 , 0 );
setEffMoveKey( spep_1 + 26, ryusen1, 61.1, 65.4 , 0 );
setEffMoveKey( spep_1 + 28, ryusen1, -246.4, -14.8 , 0 );
setEffMoveKey( spep_1 + 30, ryusen1, -553.9, -95 , 0 );
setEffMoveKey( spep_1 + 32, ryusen1, -861.4, -175.3 , 0 );
setEffMoveKey( spep_1 + 34, ryusen1, -1168.8, -255.5 , 0 );
setEffMoveKey( spep_1 + 36, ryusen1, -1476.3, -335.7 , 0 );
setEffMoveKey( spep_1 + 38, ryusen1, 61.1, 65.4 , 0 );
setEffMoveKey( spep_1 + 40, ryusen1, -246.4, -14.8 , 0 );
setEffMoveKey( spep_1 + 42, ryusen1, -553.9, -95 , 0 );
setEffMoveKey( spep_1 + 44, ryusen1, -861.4, -175.3 , 0 );
setEffMoveKey( spep_1 + 46, ryusen1, -1168.8, -255.5 , 0 );
setEffMoveKey( spep_1 + 48, ryusen1, -1476.3, -335.7 , 0 );
setEffMoveKey( spep_1 + 50, ryusen1, 61.1, 65.4 , 0 );
setEffMoveKey( spep_1 + 52, ryusen1, -246.4, -14.8 , 0 );
setEffMoveKey( spep_1 + 54, ryusen1, -553.9, -95 , 0 );
setEffMoveKey( spep_1 + 56, ryusen1, -861.4, -175.3 , 0 );
setEffMoveKey( spep_1 + 58, ryusen1, -1168.8, -255.5 , 0 );
setEffMoveKey( spep_1 + 60, ryusen1, -1476.3, -335.7 , 0 );
setEffMoveKey( spep_1 + 62, ryusen1, 61.1, 65.4 , 0 );
setEffMoveKey( spep_1 + 64, ryusen1, -246.4, -14.8 , 0 );
setEffMoveKey( spep_1 + 66, ryusen1, -553.9, -95 , 0 );
setEffMoveKey( spep_1 + 68, ryusen1, -861.4, -175.3 , 0 );
setEffMoveKey( spep_1 + 70, ryusen1, -1168.8, -255.5 , 0 );
setEffMoveKey( spep_1 + 72, ryusen1, -1476.3, -335.7 , 0 );
setEffMoveKey( spep_1 + 75, ryusen1, -246.4, -14.8 , 0 );

setEffMoveKey( spep_1 + 101, ryusen1, -155.3, 664.5 , 0 );
setEffMoveKey( spep_1 + 106, ryusen1, -155.3, 664.5 , 0 );
setEffMoveKey( spep_1 + 108, ryusen1, -264.1, 963.1 , 0 );
setEffMoveKey( spep_1 + 110, ryusen1, -372.9, 1261.6 , 0 );
setEffMoveKey( spep_1 + 112, ryusen1, -481.7, 1560.2 , 0 );
setEffMoveKey( spep_1 + 114, ryusen1, 62.3, 67.4 , 0 );
setEffMoveKey( spep_1 + 116, ryusen1, -46.5, 366 , 0 );
setEffMoveKey( spep_1 + 118, ryusen1, -155.3, 664.5 , 0 );
setEffMoveKey( spep_1 + 120, ryusen1, -264.1, 963.1 , 0 );
setEffMoveKey( spep_1 + 122, ryusen1, -372.9, 1261.6 , 0 );
setEffMoveKey( spep_1 + 124, ryusen1, -481.7, 1560.2 , 0 );
setEffMoveKey( spep_1 + 126, ryusen1, 62.3, 67.4 , 0 );
setEffMoveKey( spep_1 + 128, ryusen1, -46.5, 366 , 0 );
setEffMoveKey( spep_1 + 130, ryusen1, -155.3, 664.5 , 0 );
setEffMoveKey( spep_1 + 132, ryusen1, -264.1, 963.1 , 0 );
setEffMoveKey( spep_1 + 133, ryusen1, -372.9, 1261.6 , 0 );

setEffScaleKey( spep_1 + 16, ryusen1, 3.74, 1.32 );
setEffScaleKey( spep_1 + 133, ryusen1, 3.74, 1.32 );

setEffRotateKey( spep_1 + 16, ryusen1, -14.6 );
setEffRotateKey( spep_1 + 75, ryusen1, -14.6 );

setEffRotateKey( spep_1 + 100, ryusen1, -14.6 );
setEffRotateKey( spep_1 + 101, ryusen1, 70 );
setEffRotateKey( spep_1 + 133, ryusen1, 70 );

setEffAlphaKey( spep_1 + 16, ryusen1, 255 );
setEffAlphaKey( spep_1 + 71, ryusen1, 255 );
setEffAlphaKey( spep_1 + 73, ryusen1, 128 );
setEffAlphaKey( spep_1 + 75, ryusen1, 0 );

setEffAlphaKey( spep_1 + 102, ryusen1, 0 );
setEffAlphaKey( spep_1 + 103, ryusen1, 255 );
setEffAlphaKey( spep_1 + 133, ryusen1, 255 );

-- ** 書き文字エントリー ** --
czdogaga = entryEffectLife( spep_1 + 27, 10017, 48, 0x100, -1, 0, -26.1, 309.5 ); --ドガガガッ
setEffMoveKey( spep_1 + 27, czdogaga, -26.1, 309.5 , 0 );
setEffMoveKey( spep_1 + 29, czdogaga, -21.4, 315.5 , 0 );
setEffMoveKey( spep_1 + 31, czdogaga, -20.2, 316.9 , 0 );
setEffMoveKey( spep_1 + 33, czdogaga, -28.2, 306.3 , 0 );
setEffMoveKey( spep_1 + 35, czdogaga, -20.2, 316.9 , 0 );
setEffMoveKey( spep_1 + 37, czdogaga, -20.2, 316.9 , 0 );
setEffMoveKey( spep_1 + 39, czdogaga, -28.2, 306.3 , 0 );
setEffMoveKey( spep_1 + 41, czdogaga, -20.2, 316.9 , 0 );
setEffMoveKey( spep_1 + 43, czdogaga, -20.2, 316.9 , 0 );
setEffMoveKey( spep_1 + 45, czdogaga, -28.2, 306.3 , 0 );
setEffMoveKey( spep_1 + 47, czdogaga, -20.2, 316.9 , 0 );
setEffMoveKey( spep_1 + 49, czdogaga, -20.2, 316.9 , 0 );
setEffMoveKey( spep_1 + 51, czdogaga, -28.2, 306.3 , 0 );
setEffMoveKey( spep_1 + 53, czdogaga, -20.2, 316.9 , 0 );
setEffMoveKey( spep_1 + 55, czdogaga, -20.2, 316.9 , 0 );
setEffMoveKey( spep_1 + 57, czdogaga, -28.2, 306.3 , 0 );
setEffMoveKey( spep_1 + 59, czdogaga, -20.2, 316.9 , 0 );
setEffMoveKey( spep_1 + 61, czdogaga, -20.2, 316.9 , 0 );
setEffMoveKey( spep_1 + 63, czdogaga, -28.2, 306.3 , 0 );
setEffMoveKey( spep_1 + 65, czdogaga, -20.2, 316.9 , 0 );
setEffMoveKey( spep_1 + 67, czdogaga, -20.2, 316.9 , 0 );
setEffMoveKey( spep_1 + 69, czdogaga, -28.2, 306.3 , 0 );
setEffMoveKey( spep_1 + 71, czdogaga, -20.2, 316.9 , 0 );
setEffMoveKey( spep_1 + 75, czdogaga, -20.2, 316.9 , 0 );

setEffScaleKey( spep_1 + 27, czdogaga, 0.9, 0.9 );
setEffScaleKey( spep_1 + 29, czdogaga, 1.48, 1.48 );
setEffScaleKey( spep_1 + 31, czdogaga, 2.06, 2.06 );
setEffScaleKey( spep_1 + 75, czdogaga, 2.06, 2.06 );

setEffRotateKey( spep_1 + 27, czdogaga, -1.5 );
setEffRotateKey( spep_1 + 75, czdogaga, -1.5 );

setEffAlphaKey( spep_1 + 27, czdogaga, 255 );
setEffAlphaKey( spep_1 + 71, czdogaga, 255 );
setEffAlphaKey( spep_1 + 73, czdogaga, 128 );
setEffAlphaKey( spep_1 + 75, czdogaga, 0 );

czbaki = entryEffectLife( spep_1 + 97, 10020, 16, 0x100, -1, 0, -130.5, 354.4 ); --バキッ
setEffMoveKey( spep_1 + 97, czbaki, -130.5, 354.4 , 0 );
setEffMoveKey( spep_1 + 99, czbaki, -135.5, 364.7 , 0 );
setEffMoveKey( spep_1 + 101, czbaki, -127.3, 364.9 , 0 );
setEffMoveKey( spep_1 + 103, czbaki, -133.9, 393.1 , 0 );
setEffMoveKey( spep_1 + 105, czbaki, -138.8, 380 , 0 );
setEffMoveKey( spep_1 + 107, czbaki, -127.3, 364.9 , 0 );
setEffMoveKey( spep_1 + 109, czbaki, -133.9, 393.1 , 0 );
setEffMoveKey( spep_1 + 111, czbaki, -138.8, 380 , 0 );
setEffMoveKey( spep_1 + 113, czbaki, -138.8, 380 , 0 );

setEffScaleKey( spep_1 + 97, czbaki, 0.74, 0.74 );
setEffScaleKey( spep_1 + 99, czbaki, 1.34, 1.34 );
setEffScaleKey( spep_1 + 101, czbaki, 1.93, 1.93 );
setEffScaleKey( spep_1 + 113, czbaki, 1.93, 1.93 );

setEffRotateKey( spep_1 + 97, czbaki, -13.2 );
setEffRotateKey( spep_1 + 113, czbaki, -13.2 );

setEffAlphaKey( spep_1 + 97, czbaki, 255 );
setEffAlphaKey( spep_1 + 109, czbaki, 255 );
setEffAlphaKey( spep_1 + 111, czbaki, 128 );
setEffAlphaKey( spep_1 + 113, czbaki, 0 );

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_1 + 122, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 134, 0, 0, 0, 0, 180 );  --薄い黒　背景
entryFadeBg( spep_1 + 97, 0, 6, 0, 0, 0, 0, 255 );  --黒　背景
-- ** 音 ** --
playSe( spep_1 + 22, 1001 );  --パンチ
playSe( spep_1 + 34, 1006 );  --パンチ
playSe( spep_1 + 46, 1000 );  --キック
playSe( spep_1 + 58, 1009 );  --キック
playSe( spep_1 + 95, 1010 );  --キック

-- ** 次の準備 ** --
spep_2 = spep_1 + 134;

------------------------------------------------------
-- 敵に近づいて振り上げる(56F)
------------------------------------------------------

-- ** エフェクト等 ** --
huriage = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --敵に近づいて振り上げる(ef_003)
setEffMoveKey( spep_2 + 0, huriage, 0, 0, 0 );
setEffMoveKey( spep_2 + 56, huriage, 0, 0, 0 );

setEffScaleKey( spep_2 + 0, huriage, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, huriage, 1.0, 1.0 );

setEffRotateKey( spep_2 + 0, huriage, 0 );
setEffRotateKey( spep_2 + 56, huriage, 0 );

setEffAlphaKey( spep_2 + 0, huriage, 255 );
setEffAlphaKey( spep_2 + 56, huriage, 255 );

-- ** 敵の動き ** --
setDisp( spep_2 + 0, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 56, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 音 ** --
playSe( spep_2 + 0, 44 ); --ダッシュ

-- ** 次の準備 ** --
spep_3 = spep_2 + 56;

------------------------------------------------------
-- 打ち落とす～敵が斜め下に落ちる(40F)
------------------------------------------------------

-- ** エフェクト等 ** --
uchiotoshi = entryEffectLife( spep_3 + 2, SP_04, 38, 0x100, -1, 0, 0, 0 );  --打ち落とす～敵が斜め下に落ちる(ef_004)
setEffMoveKey( spep_3 + 2, uchiotoshi, 0, 0, 0 );
setEffMoveKey( spep_3 + 40, uchiotoshi, 0, 0, 0 );

setEffScaleKey( spep_3 + 2, uchiotoshi, 1.0, 1.0 );
setEffScaleKey( spep_3 + 40, uchiotoshi, 1.0, 1.0 );

setEffRotateKey( spep_3 + 2, uchiotoshi, 0 );
setEffRotateKey( spep_3 + 40, uchiotoshi, 0 );

setEffAlphaKey( spep_3 + 2, uchiotoshi, 255 );
setEffAlphaKey( spep_3 + 40, uchiotoshi, 255 );

-- ** 敵の動き ** --
setDisp( spep_3 + 9, 1, 1 );
changeAnime( spep_3 + 9, 1, 106 );

setMoveKey( spep_3 + 9, 1, 9, -23.9 , 0 );
setMoveKey( spep_3 + 11, 1, 62.1, -8.8 , 0 );
setMoveKey( spep_3 + 13, 1, 23, -69.5 , 0 );
setMoveKey( spep_3 + 15, 1, 107.2, -298.5 , 0 );
setMoveKey( spep_3 + 17, 1, 111.5, -369.6 , 0 );
setMoveKey( spep_3 + 19, 1, 139.3, -493.6 , 0 );
setMoveKey( spep_3 + 21, 1, 126.7, -556.4 , 0 );
setMoveKey( spep_3 + 23, 1, 149.8, -612.2 , 0 );
setMoveKey( spep_3 + 25, 1, 191.9, -722.9 , 0 );
setMoveKey( spep_3 + 27, 1, 180.5, -783.2 , 0 );
setMoveKey( spep_3 + 29, 1, 205.2, -839.4 , 0 );
setMoveKey( spep_3 + 31, 1, 244.2, -952 , 0 );
setMoveKey( spep_3 + 33, 1, 234.2, -1009.7 , 0 );
setMoveKey( spep_3 + 35, 1, 260.6, -1066.7 , 0 );
setMoveKey( spep_3 + 40, 1, 296.4, -1180.9 , 0 );

setScaleKey( spep_3 + 9, 1, 1.43, 1.43 );
setScaleKey( spep_3 + 40, 1, 1.43, 1.43 );

setRotateKey( spep_3 + 9, 1, 68.1 );
setRotateKey( spep_3 + 11, 1, 63.2 );
setRotateKey( spep_3 + 13, 1, 72.4 );
setRotateKey( spep_3 + 15, 1, 95.6 );
setRotateKey( spep_3 + 17, 1, 97.2 );
setRotateKey( spep_3 + 19, 1, 98.8 );
setRotateKey( spep_3 + 21, 1, 100.5 );
setRotateKey( spep_3 + 23, 1, 102.1 );
setRotateKey( spep_3 + 25, 1, 103.7 );
setRotateKey( spep_3 + 27, 1, 105.4 );
setRotateKey( spep_3 + 29, 1, 107 );
setRotateKey( spep_3 + 31, 1, 108.6 );
setRotateKey( spep_3 + 33, 1, 110.3 );
setRotateKey( spep_3 + 35, 1, 111.9 );
setRotateKey( spep_3 + 40, 1, 113.5 );

setEffAlphaKey( spep_3 + 9, 1, 255 );
setEffAlphaKey( spep_3 + 40, 1, 255 );

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_3 + 9, 914, 31, 0x80, -1, 0, -194, 1135.4 );
setEffMoveKey( spep_3 + 9, ryusen2, -194, 1135.4 , 0 );
setEffMoveKey( spep_3 + 12, ryusen2, 62.5, 67.3 , 0 );
setEffMoveKey( spep_3 + 14, ryusen2, 11.2, 380.9 , 0 );
setEffMoveKey( spep_3 + 16, ryusen2, -40.1, 694.6 , 0 );
setEffMoveKey( spep_3 + 18, ryusen2, -91.4, 1008.2 , 0 );
setEffMoveKey( spep_3 + 20, ryusen2, -142.7, 1321.8 , 0 );
setEffMoveKey( spep_3 + 22, ryusen2, -194, 1135.4 , 0 );
setEffMoveKey( spep_3 + 24, ryusen2, 62.5, 67.3 , 0 );
setEffMoveKey( spep_3 + 26, ryusen2, 11.2, 380.9 , 0 );
setEffMoveKey( spep_3 + 28, ryusen2, -40.1, 694.6 , 0 );
setEffMoveKey( spep_3 + 30, ryusen2, -91.4, 1008.2 , 0 );
setEffMoveKey( spep_3 + 32, ryusen2, -142.7, 1321.8 , 0 );
setEffMoveKey( spep_3 + 34, ryusen2, -194, 1135.4 , 0 );
setEffMoveKey( spep_3 + 36, ryusen2, 62.5, 67.3 , 0 );
setEffMoveKey( spep_3 + 40, ryusen2, 11.2, 380.9 , 0 );

setEffScaleKey( spep_3 + 9, ryusen2, 3.74, 1.32 );
setEffScaleKey( spep_3 + 40, ryusen2, 3.74, 1.32 );

setEffRotateKey( spep_3 + 9, ryusen2, 80.7 );
setEffRotateKey( spep_3 + 40, ryusen2, 80.7 );

setEffAlphaKey( spep_3 + 9, ryusen2, 255 );
setEffAlphaKey( spep_3 + 40, ryusen2, 255 );

-- ** 書き文字エントリー ** --
ctbago = entryEffectLife( spep_3 + 9, 10021, 18, 0x100, -1, 0, 191.1, 324.2 ); --バゴォッ
setEffMoveKey( spep_3 + 9, ctbago, 191.1, 324.2 , 0 );
setEffMoveKey( spep_3 + 11, ctbago, 187, 329.5 , 0 );
setEffMoveKey( spep_3 + 13, ctbago, 209.1, 350.1 , 0 );
setEffMoveKey( spep_3 + 15, ctbago, 194.3, 316 , 0 );
setEffMoveKey( spep_3 + 17, ctbago, 186.9, 328.4 , 0 );
setEffMoveKey( spep_3 + 19, ctbago, 209.1, 350.1 , 0 );
setEffMoveKey( spep_3 + 21, ctbago, 194.3, 316 , 0 );
setEffMoveKey( spep_3 + 23, ctbago, 186.9, 328.4 , 0 );
setEffMoveKey( spep_3 + 24, ctbago, 209.1, 350.1 , 0 );
setEffMoveKey( spep_3 + 27, ctbago, 209.1, 350.1 , 0 );

setEffScaleKey( spep_3 + 9, ctbago, 1.05, 1.05 );
setEffScaleKey( spep_3 + 11, ctbago, 1.54, 1.54 );
setEffScaleKey( spep_3 + 13, ctbago, 2.04, 2.04 );
setEffScaleKey( spep_3 + 27, ctbago, 2.04, 2.04 );

setEffRotateKey( spep_3 + 8, ctbago, 14 );
setEffRotateKey( spep_3 + 27, ctbago, 14 );

setEffAlphaKey( spep_3 + 9, ctbago, 255 );
setEffAlphaKey( spep_3 + 23, ctbago, 255 );
setEffAlphaKey( spep_3 + 25, ctbago, 128 );
setEffAlphaKey( spep_3 + 27, ctbago, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 9, 0, 0, 0, 0, 255 );  --黒　背景
entryFadeBg( spep_3 + 0, 0, 41, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_3 + 33, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
-- ** 音 ** --
playSe( spep_3 + 0, 1012 );  --撃ち落とし
playSe( spep_3 + 1, 1010 );  --撃ち落とし

-- ** 次の準備 ** --
spep_4 = spep_3 + 41;

------------------------------------------------------
-- 敵落下(88F)
------------------------------------------------------

-- ** エフェクト等 ** --
rakka = entryEffectLife( spep_4 + 0, SP_05, 88, 0x80, -1, 0, 0, 0 );  --敵落下(ef_005)
setEffMoveKey( spep_4 + 0, rakka, 0, 0, 0 );
setEffMoveKey( spep_4 + 88, rakka, 0, 0, 0 );

setEffScaleKey( spep_4 + 0, rakka, 1.0, 1.0 );
setEffScaleKey( spep_4 + 88, rakka, 1.0, 1.0 );

setEffRotateKey( spep_4 + 0, rakka, 0 );
setEffRotateKey( spep_4 + 88, rakka, 0 );

setEffAlphaKey( spep_4 + 0, rakka, 255 );
setEffAlphaKey( spep_4 + 88, rakka, 255 );

-- ** 敵の動き ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 25, 1, 0 );
changeAnime( spep_4 + 0, 1, 105 );

setMoveKey( spep_4 + 0, 1, 69.1, -59 , 0 );
setMoveKey( spep_4 + 2, 1, 59.8, -70.1 , 0 );
setMoveKey( spep_4 + 4, 1, 51.6, -79.8 , 0 );
setMoveKey( spep_4 + 6, 1, 44.4, -88.4 , 0 );
setMoveKey( spep_4 + 8, 1, 38.2, -95.8 , 0 );
setMoveKey( spep_4 + 10, 1, 32.9, -102.1 , 0 );
setMoveKey( spep_4 + 12, 1, 28.6, -107.2 , 0 );
setMoveKey( spep_4 + 14, 1, 25.2, -111.2 , 0 );
setMoveKey( spep_4 + 16, 1, 22.6, -114.4 , 0 );
setMoveKey( spep_4 + 18, 1, 20.4, -117 , 0 );
setMoveKey( spep_4 + 20, 1, 18.7, -119 , 0 );
setMoveKey( spep_4 + 22, 1, 17.3, -120.6 , 0 );
setMoveKey( spep_4 + 24, 1, 16.5, -121.7 , 0 );
setMoveKey( spep_4 + 25, 1, 16.2, -121.9 , 0 );

setScaleKey( spep_4 + 0, 1, 5.21, 5.21 );
setScaleKey( spep_4 + 2, 1, 4.37, 4.37 );
setScaleKey( spep_4 + 4, 1, 3.63, 3.63 );
setScaleKey( spep_4 + 6, 1, 2.99, 2.99 );
setScaleKey( spep_4 + 8, 1, 2.43, 2.43 );
setScaleKey( spep_4 + 10, 1, 1.96, 1.96 );
setScaleKey( spep_4 + 12, 1, 1.57, 1.57 );
setScaleKey( spep_4 + 14, 1, 1.27, 1.27 );
setScaleKey( spep_4 + 16, 1, 1.03, 1.03 );
setScaleKey( spep_4 + 18, 1, 0.83, 0.83 );
setScaleKey( spep_4 + 20, 1, 0.68, 0.68 );
setScaleKey( spep_4 + 22, 1, 0.56, 0.56 );
setScaleKey( spep_4 + 24, 1, 0.48, 0.48 );
setScaleKey( spep_4 + 25, 1, 0.45, 0.45 );

setRotateKey( spep_4 + 0, 1, -7.5 );
setRotateKey( spep_4 + 1, 1, -7.5 );
setRotateKey( spep_4 + 25, 1, -7.5 );

-- ** 書き文字エントリー ** --
ctdogon = entryEffectLife( spep_4 + 25, 10018, 49, 0x100, -1, 0, -87.8, 234.3 ); --ドゴォンッ
setEffMoveKey( spep_4 + 25, ctdogon, -87.8, 234.3 , 0 );
setEffMoveKey( spep_4 + 28, ctdogon, -87.1, 232.4 , 0 );
setEffMoveKey( spep_4 + 30, ctdogon, -84.9, 231.1 , 0 );
setEffMoveKey( spep_4 + 32, ctdogon, -88.9, 230.9 , 0 );
setEffMoveKey( spep_4 + 34, ctdogon, -85.8, 231.2 , 0 );
setEffMoveKey( spep_4 + 36, ctdogon, -87.4, 231.8 , 0 );
setEffMoveKey( spep_4 + 38, ctdogon, -86.1, 231.7 , 0 );
setEffMoveKey( spep_4 + 40, ctdogon, -88.2, 231.7 , 0 );
setEffMoveKey( spep_4 + 42, ctdogon, -86.1, 231.7 , 0 );
setEffMoveKey( spep_4 + 44, ctdogon, -88.2, 231.7 , 0 );
setEffMoveKey( spep_4 + 46, ctdogon, -86.1, 231.7 , 0 );
setEffMoveKey( spep_4 + 48, ctdogon, -88.2, 231.7 , 0 );
setEffMoveKey( spep_4 + 50, ctdogon, -86.1, 231.7 , 0 );
setEffMoveKey( spep_4 + 52, ctdogon, -88.2, 231.7 , 0 );
setEffMoveKey( spep_4 + 54, ctdogon, -86.1, 231.7 , 0 );
setEffMoveKey( spep_4 + 56, ctdogon, -88.2, 231.7 , 0 );
setEffMoveKey( spep_4 + 58, ctdogon, -86.1, 231.7 , 0 );
setEffMoveKey( spep_4 + 60, ctdogon, -88.2, 231.7 , 0 );
setEffMoveKey( spep_4 + 62, ctdogon, -86.1, 231.7 , 0 );
setEffMoveKey( spep_4 + 64, ctdogon, -88.2, 231.7 , 0 );
setEffMoveKey( spep_4 + 66, ctdogon, -86.1, 231.7 , 0 );
setEffMoveKey( spep_4 + 68, ctdogon, -88.2, 231.7 , 0 );
setEffMoveKey( spep_4 + 70, ctdogon, -86.1, 231.7 , 0 );
setEffMoveKey( spep_4 + 72, ctdogon, -88.2, 231.7 , 0 );
setEffMoveKey( spep_4 + 74, ctdogon, -86.1, 231.7 , 0 );

setEffScaleKey( spep_4 + 25, ctdogon, 1.06, 1.06 );
setEffScaleKey( spep_4 + 28, ctdogon, 2.28, 2.28 );
setEffScaleKey( spep_4 + 30, ctdogon, 2.89, 2.89 );
setEffScaleKey( spep_4 + 32, ctdogon, 2.75, 2.75 );
setEffScaleKey( spep_4 + 34, ctdogon, 2.61, 2.61 );
setEffScaleKey( spep_4 + 36, ctdogon, 2.47, 2.47 );
setEffScaleKey( spep_4 + 38, ctdogon, 2.34, 2.34 );
setEffScaleKey( spep_4 + 74, ctdogon, 2.34, 2.34 );

setEffRotateKey( spep_4 + 25, ctdogon, -32.7 );
setEffRotateKey( spep_4 + 28, ctdogon, -46.1 );
setEffRotateKey( spep_4 + 30, ctdogon, -38.7 );
setEffRotateKey( spep_4 + 32, ctdogon, -24.1 );
setEffRotateKey( spep_4 + 34, ctdogon, -32.9 );
setEffRotateKey( spep_4 + 36, ctdogon, -43.6 );
setEffRotateKey( spep_4 + 38, ctdogon, -32.7 );
setEffRotateKey( spep_4 + 74, ctdogon, -32.7 );

setEffAlphaKey( spep_4 + 25, ctdogon, 255 );
setEffAlphaKey( spep_4 + 60, ctdogon, 255 );
setEffAlphaKey( spep_4 + 62, ctdogon, 219 );
setEffAlphaKey( spep_4 + 64, ctdogon, 182 );
setEffAlphaKey( spep_4 + 66, ctdogon, 146 );
setEffAlphaKey( spep_4 + 68, ctdogon, 109 );
setEffAlphaKey( spep_4 + 70, ctdogon, 73 );
setEffAlphaKey( spep_4 + 72, ctdogon, 36 );
setEffAlphaKey( spep_4 + 74, ctdogon, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 88, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_4 + 78, 6, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
-- ** 音 ** --
SE_1121_1 = playSe( spep_4 + 0, 1121 );  --敵落下
stopSe( spep_4 + 15, SE_1121_1, 20 );
playSe( spep_4 + 30, 1023);--爆発 

-- ** 次の準備 ** --
spep_5 = spep_4 + 88;

------------------------------------------------------
-- 気溜め(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_5 + 0, SP_06, 100, 0x100, -1, 0, 0, 0 );  --気溜め(ef_006)
setEffMoveKey( spep_5 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_5 + 100, tame, 0, 0, 0 );

setEffScaleKey( spep_5 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, tame, 1.0, 1.0 );

setEffRotateKey( spep_5 + 0, tame, 0 );
setEffRotateKey( spep_5 + 100, tame, 0 );

setEffAlphaKey( spep_5 + 0, tame, 255 );
setEffAlphaKey( spep_5 + 100, tame, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_5 + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_5 + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_5 + 16,  190006, 70, 0x100, -1, 20, -0, 515.5 ); --ゴゴゴ
setEffShake( spep_5 + 16, ctgogo, 70, 10 );

setEffMoveKey( spep_5 + 16, ctgogo, 55, 521.8 , 0 );
setEffMoveKey( spep_5 + 86, ctgogo, 55, 515.5 , 0 );

setEffScaleKey( spep_5 + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_5 + 86, ctgogo, 0.7, 0.7 );

setEffRotateKey( spep_5 + 16, ctgogo, 0 );
setEffRotateKey( spep_5 + 86, ctgogo, 0 );

setEffAlphaKey( spep_5 + 16, ctgogo, 255 );
setEffAlphaKey( spep_5 + 86, ctgogo, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_5 + 0, 906, 100, 0x100, -1, 0, 255.6, 0 );
setEffMoveKey( spep_5 + 0, shuchusen2, 0, 0, 0 );
setEffMoveKey( spep_5 + 100, shuchusen2, 0, 0, 0 );

setEffScaleKey( spep_5 + 0, shuchusen2, 1.2, 1.2 );
setEffScaleKey( spep_5 + 100, shuchusen2, 1.2, 1.2 );

setEffRotateKey( spep_5 + 0, shuchusen2, 0 );
setEffRotateKey( spep_5 + 2, shuchusen2, 180 );
setEffRotateKey( spep_5 + 4, shuchusen2, 0 );
setEffRotateKey( spep_5 + 6, shuchusen2, 180 );
setEffRotateKey( spep_5 + 8, shuchusen2, 0 );
setEffRotateKey( spep_5 + 10, shuchusen2, 180 );
setEffRotateKey( spep_5 + 12, shuchusen2, 0 );
setEffRotateKey( spep_5 + 14, shuchusen2, 180 );
setEffRotateKey( spep_5 + 16, shuchusen2, 0 );
setEffRotateKey( spep_5 + 18, shuchusen2, 180 );
setEffRotateKey( spep_5 + 20, shuchusen2, 0 );
setEffRotateKey( spep_5 + 22, shuchusen2, 180 );
setEffRotateKey( spep_5 + 24, shuchusen2, 0 );
setEffRotateKey( spep_5 + 26, shuchusen2, 180 );
setEffRotateKey( spep_5 + 28, shuchusen2, 0 );
setEffRotateKey( spep_5 + 30, shuchusen2, 180 );
setEffRotateKey( spep_5 + 32, shuchusen2, 0 );
setEffRotateKey( spep_5 + 34, shuchusen2, 180 );
setEffRotateKey( spep_5 + 36, shuchusen2, 0 );
setEffRotateKey( spep_5 + 38, shuchusen2, 180 );
setEffRotateKey( spep_5 + 40, shuchusen2, 0 );
setEffRotateKey( spep_5 + 42, shuchusen2, 180 );
setEffRotateKey( spep_5 + 44, shuchusen2, 0 );
setEffRotateKey( spep_5 + 46, shuchusen2, 180 );
setEffRotateKey( spep_5 + 48, shuchusen2, 0 );
setEffRotateKey( spep_5 + 50, shuchusen2, 180 );
setEffRotateKey( spep_5 + 52, shuchusen2, 0 );
setEffRotateKey( spep_5 + 54, shuchusen2, 180 );
setEffRotateKey( spep_5 + 56, shuchusen2, 0 );
setEffRotateKey( spep_5 + 58, shuchusen2, 180 );
setEffRotateKey( spep_5 + 60, shuchusen2, 0 );
setEffRotateKey( spep_5 + 62, shuchusen2, 180 );
setEffRotateKey( spep_5 + 64, shuchusen2, 0 );
setEffRotateKey( spep_5 + 66, shuchusen2, 180 );
setEffRotateKey( spep_5 + 68, shuchusen2, 0 );
setEffRotateKey( spep_5 + 70, shuchusen2, 180 );
setEffRotateKey( spep_5 + 72, shuchusen2, 0 );
setEffRotateKey( spep_5 + 74, shuchusen2, 180 );
setEffRotateKey( spep_5 + 76, shuchusen2, 0 );
setEffRotateKey( spep_5 + 78, shuchusen2, 180 );
setEffRotateKey( spep_5 + 80, shuchusen2, 0 );
setEffRotateKey( spep_5 + 82, shuchusen2, 180 );
setEffRotateKey( spep_5 + 84, shuchusen2, 0 );
setEffRotateKey( spep_5 + 86, shuchusen2, 180 );
setEffRotateKey( spep_5 + 88, shuchusen2, 0 );
setEffRotateKey( spep_5 + 90, shuchusen2, 180 );
setEffRotateKey( spep_5 + 92, shuchusen2, 0 );
setEffRotateKey( spep_5 + 94, shuchusen2, 180 );
setEffRotateKey( spep_5 + 96, shuchusen2, 0 );
setEffRotateKey( spep_5 + 98, shuchusen2, 180 );
setEffRotateKey( spep_5 + 100, shuchusen2, 0 );

setEffRotateKey( spep_5 + 0, shuchusen2, 0 );
setEffRotateKey( spep_5 + 100, shuchusen2, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen2, 135 );
setEffAlphaKey( spep_5 + 100, shuchusen2, 135 );

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_5 + 88, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 100, 0, 0, 0, 0, 180 );  --薄い黒　背景
entryFadeBg( spep_5 + 22, 8, 70, 0, 0, 0, 0, 255 );  --黒フェード　背景

-- ** 音 ** --
playSe( spep_5 + 18, SE_04 );  --カットイン

-- ** 次の準備 ** --
spep_6 = spep_5 + 100;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
--[[speff2 = entryEffectLife( spep_6 + 0, 1507, 90, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え]]

-- ** 極限用に調整 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_6, SE_05);
speff = entryEffect( spep_6, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_6, SE_05);
speff = entryEffect( spep_6, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_6, SE_05);
speff = entryEffect( spep_6, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_6 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen3, 88, 20 );

setEffMoveKey( spep_6 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_6 + 90, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_6 + 90, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_6 + 0, shuchusen3, 0 );
setEffRotateKey( spep_6 + 90, shuchusen3, 0 );

setEffAlphaKey( spep_6 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_6 + 90, shuchusen3, 255 );

-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_6 + 76, 10, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
--playSe( spep_6 + 0, SE_05 ); --カットイン

-- ** 次の準備 ** --
spep_7 = spep_6 + 94;

------------------------------------------------------
-- 発射(72F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_7 + 0, SP_07, 72, 0x100, -1, 0, 0, 0 );  --発射(ef_007)
setEffMoveKey( spep_7 + 0, hassha, 0, 0, 0 );
setEffMoveKey( spep_7 + 72, hassha, 0, 0, 0 );

setEffScaleKey( spep_7 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_7 + 72, hassha, 1.0, 1.0 );

setEffRotateKey( spep_7 + 0, hassha, 0 );
setEffRotateKey( spep_7 + 72, hassha, 0 );

setEffAlphaKey( spep_7 + 0, hassha, 255 );
setEffAlphaKey( spep_7 + 72, hassha, 255 );

-- ** 流線 ** --
ryusen3 = entryEffectLife( spep_7 + 0, 921, 72, 0x80, -1, 0, -32.6, -7 );
setEffMoveKey( spep_7 + 0, ryusen3, -32.6, -7 , 0 );
setEffMoveKey( spep_7 + 72, ryusen3, -32.6, -7 , 0 );

setEffScaleKey( spep_7 + 0, ryusen3, 1.51, 1.15 );
setEffScaleKey( spep_7 + 72, ryusen3, 1.51, 1.15 );

setEffRotateKey( spep_7 + 0, ryusen3, -115.3 );
setEffRotateKey( spep_7 + 72, ryusen3, -115.3 );

setEffAlphaKey( spep_7 + 0, ryusen3, 255 );
setEffAlphaKey( spep_7 + 72, ryusen3, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 72, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_7 + 60, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_7 + 5, 1022); --発射

-- ** 次の準備 ** --
spep_8 = spep_7 + 72;

------------------------------------------------------
-- 爆発(115F)
------------------------------------------------------

-- ** エフェクト等 ** --
bakuha = entryEffect( spep_8 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --爆発(ef_008)
setEffMoveKey( spep_8 + 0, bakuha, 0, 0, 0 );
setEffMoveKey( spep_8 + 115, bakuha, 0, 0, 0 );

setEffScaleKey( spep_8 + 0, bakuha, 1.0, 1.0 );
setEffScaleKey( spep_8 + 115, bakuha, 1.0, 1.0 );

setEffRotateKey( spep_8 + 0, bakuha, 0 );
setEffRotateKey( spep_8 + 115, bakuha, 0 );

setEffAlphaKey( spep_8 + 0, bakuha, 255 );
setEffAlphaKey( spep_8 + 115, bakuha, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_8 + 0, 906, 113, 0x100, -1, 0, 366.6, 0 );
setEffMoveKey( spep_8 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_8 + 113, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_8 + 0, shuchusen3, 2.5, 2.5 );
setEffScaleKey( spep_8 + 113, shuchusen3, 2.5, 2.5 );

setEffRotateKey( spep_8 + 0, shuchusen3, 180 );
setEffRotateKey( spep_8 + 2, shuchusen3, 0 );
setEffRotateKey( spep_8 + 4, shuchusen3, 180 );
setEffRotateKey( spep_8 + 6, shuchusen3, 0 );
setEffRotateKey( spep_8 + 8, shuchusen3, 180 );
setEffRotateKey( spep_8 + 10, shuchusen3, 0 );
setEffRotateKey( spep_8 + 12, shuchusen3, 180 );
setEffRotateKey( spep_8 + 14, shuchusen3, 0 );
setEffRotateKey( spep_8 + 16, shuchusen3, 180 );
setEffRotateKey( spep_8 + 18, shuchusen3, 0 );
setEffRotateKey( spep_8 + 20, shuchusen3, 180 );
setEffRotateKey( spep_8 + 22, shuchusen3, 0 );
setEffRotateKey( spep_8 + 24, shuchusen3, 180 );
setEffRotateKey( spep_8 + 26, shuchusen3, 0 );
setEffRotateKey( spep_8 + 28, shuchusen3, 180 );
setEffRotateKey( spep_8 + 30, shuchusen3, 0 );
setEffRotateKey( spep_8 + 32, shuchusen3, 180 );
setEffRotateKey( spep_8 + 34, shuchusen3, 0 );
setEffRotateKey( spep_8 + 36, shuchusen3, 180 );
setEffRotateKey( spep_8 + 38, shuchusen3, 0 );
setEffRotateKey( spep_8 + 40, shuchusen3, 180 );
setEffRotateKey( spep_8 + 42, shuchusen3, 0 );
setEffRotateKey( spep_8 + 44, shuchusen3, 180 );
setEffRotateKey( spep_8 + 46, shuchusen3, 0 );
setEffRotateKey( spep_8 + 48, shuchusen3, 180 );
setEffRotateKey( spep_8 + 50, shuchusen3, 0 );
setEffRotateKey( spep_8 + 52, shuchusen3, 180 );
setEffRotateKey( spep_8 + 54, shuchusen3, 0 );
setEffRotateKey( spep_8 + 56, shuchusen3, 180 );
setEffRotateKey( spep_8 + 58, shuchusen3, 0 );
setEffRotateKey( spep_8 + 60, shuchusen3, 180 );
setEffRotateKey( spep_8 + 62, shuchusen3, 0 );
setEffRotateKey( spep_8 + 64, shuchusen3, 180 );
setEffRotateKey( spep_8 + 66, shuchusen3, 0 );
setEffRotateKey( spep_8 + 68, shuchusen3, 180 );
setEffRotateKey( spep_8 + 70, shuchusen3, 0 );
setEffRotateKey( spep_8 + 72, shuchusen3, 180 );
setEffRotateKey( spep_8 + 74, shuchusen3, 0 );
setEffRotateKey( spep_8 + 76, shuchusen3, 180 );
setEffRotateKey( spep_8 + 78, shuchusen3, 0 );
setEffRotateKey( spep_8 + 80, shuchusen3, 180 );
setEffRotateKey( spep_8 + 82, shuchusen3, 0 );
setEffRotateKey( spep_8 + 84, shuchusen3, 180 );
setEffRotateKey( spep_8 + 86, shuchusen3, 0 );
setEffRotateKey( spep_8 + 88, shuchusen3, 180 );
setEffRotateKey( spep_8 + 90, shuchusen3, 0 );
setEffRotateKey( spep_8 + 92, shuchusen3, 180 );
setEffRotateKey( spep_8 + 94, shuchusen3, 0 );
setEffRotateKey( spep_8 + 96, shuchusen3, 180 );
setEffRotateKey( spep_8 + 98, shuchusen3, 0 );
setEffRotateKey( spep_8 + 100, shuchusen3, 180 );
setEffRotateKey( spep_8 + 102, shuchusen3, 0 );
setEffRotateKey( spep_8 + 104, shuchusen3, 180 );
setEffRotateKey( spep_8 + 106, shuchusen3, 0 );
setEffRotateKey( spep_8 + 108, shuchusen3, 180 );
setEffRotateKey( spep_8 + 110, shuchusen3, 0 );
setEffRotateKey( spep_8 + 112, shuchusen3, 180 );
setEffRotateKey( spep_8 + 113, shuchusen3, 0 );

setEffRotateKey( spep_8 + 0, shuchusen3, 0 );
setEffRotateKey( spep_8 + 113, shuchusen3, 0 );

setEffAlphaKey( spep_8 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_8 + 113, shuchusen3, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 116, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_8 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_8 + 35, 1024) --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_8 + 39 -12 );
endPhase( spep_8 + 110 );

else

------------------------------------------------------
-- アイドリング(78F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
idling = entryEffectLife( spep_0 + 0, SP_01, 77, 0x80, -1, 0, 0, 0 );  --アイドリング(ef_001)
setEffMoveKey( spep_0 + 0, idling, 0, 0, 0 );
setEffMoveKey( spep_0 + 77, idling, 0, 0, 0 );

setEffScaleKey( spep_0 + 0, idling, 1.0, 1.0 );
setEffScaleKey( spep_0 + 77, idling, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, idling, 0 );
setEffRotateKey( spep_0 + 77, idling, 0 );

setEffAlphaKey( spep_0 + 0, idling, 255 );
setEffAlphaKey( spep_0 + 77, idling, 255 );

-- ** 敵の動き ** --
changeAnime( spep_0 + 0, 1, 100 );
setDisp( spep_0 + 0, 1, 1 );

setMoveKey( spep_0 + 0, 1, 196.7, 230.1 , 0 );
setMoveKey( spep_0 + 2, 1, 201.4, 229.1 , 0 );
setMoveKey( spep_0 + 4, 1, 206, 228.2 , 0 );
setMoveKey( spep_0 + 6, 1, 210.4, 227.3 , 0 );
setMoveKey( spep_0 + 8, 1, 214.6, 226.4 , 0 );
setMoveKey( spep_0 + 10, 1, 218.7, 225.6 , 0 );
setMoveKey( spep_0 + 12, 1, 222.6, 224.8 , 0 );
setMoveKey( spep_0 + 14, 1, 226.3, 224 , 0 );
setMoveKey( spep_0 + 16, 1, 229.8, 223.3 , 0 );
setMoveKey( spep_0 + 18, 1, 233.1, 222.6 , 0 );
setMoveKey( spep_0 + 20, 1, 236.1, 222 , 0 );
setMoveKey( spep_0 + 22, 1, 239, 221.4 , 0 );
setMoveKey( spep_0 + 24, 1, 241.5, 220.9 , 0 );
setMoveKey( spep_0 + 26, 1, 244, 220.4 , 0 );
setMoveKey( spep_0 + 28, 1, 246.4, 219.9 , 0 );
setMoveKey( spep_0 + 30, 1, 248.6, 219.5 , 0 );
setMoveKey( spep_0 + 32, 1, 250.8, 219 , 0 );
setMoveKey( spep_0 + 34, 1, 252.9, 218.6 , 0 );
setMoveKey( spep_0 + 36, 1, 254.8, 218.2 , 0 );
setMoveKey( spep_0 + 38, 1, 256.6, 217.9 , 0 );
setMoveKey( spep_0 + 40, 1, 258.2, 217.5 , 0 );
setMoveKey( spep_0 + 42, 1, 259.7, 217.2 , 0 );
setMoveKey( spep_0 + 44, 1, 261, 216.9 , 0 );
setMoveKey( spep_0 + 46, 1, 262.2, 216.7 , 0 );
setMoveKey( spep_0 + 48, 1, 263.3, 216.5 , 0 );
setMoveKey( spep_0 + 50, 1, 264.3, 216.3 , 0 );
setMoveKey( spep_0 + 52, 1, 265.1, 216.1 , 0 );
setMoveKey( spep_0 + 54, 1, 265.8, 216 , 0 );
setMoveKey( spep_0 + 56, 1, 266.7, 216 , 0 );
setMoveKey( spep_0 + 77, 1, 266.7, 216 , 0 );

setScaleKey( spep_0 + 0, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 2, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 4, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 6, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 8, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 12, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 14, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 18, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 20, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 24, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 26, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 30, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 32, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 34, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 36, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 40, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 42, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 46, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 48, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 52, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 54, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 77, 1, 0.78, 0.78 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 77, 1, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0, 906, 78, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0, 0 );
setEffMoveKey( spep_0 + 78, shuchusen1, 0, 0, 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.25, 1.25 );
setEffScaleKey( spep_0 + 2, shuchusen1, 1.25, 1.25 );
setEffScaleKey( spep_0 + 4, shuchusen1, 1.24, 1.24 );
setEffScaleKey( spep_0 + 6, shuchusen1, 1.24, 1.24 );
setEffScaleKey( spep_0 + 8, shuchusen1, 1.23, 1.23 );
setEffScaleKey( spep_0 + 12, shuchusen1, 1.23, 1.23 );
setEffScaleKey( spep_0 + 14, shuchusen1, 1.22, 1.22 );
setEffScaleKey( spep_0 + 18, shuchusen1, 1.22, 1.22 );
setEffScaleKey( spep_0 + 20, shuchusen1, 1.21, 1.21 );
setEffScaleKey( spep_0 + 22, shuchusen1, 1.21, 1.21 );
setEffScaleKey( spep_0 + 24, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_0 + 28, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_0 + 30, shuchusen1, 1.19, 1.19 );
setEffScaleKey( spep_0 + 32, shuchusen1, 1.19, 1.19 );
setEffScaleKey( spep_0 + 34, shuchusen1, 1.18, 1.18 );
setEffScaleKey( spep_0 + 38, shuchusen1, 1.18, 1.18 );
setEffScaleKey( spep_0 + 40, shuchusen1, 1.17, 1.17 );
setEffScaleKey( spep_0 + 44, shuchusen1, 1.17, 1.17 );
setEffScaleKey( spep_0 + 46, shuchusen1, 1.16, 1.16 );
setEffScaleKey( spep_0 + 48, shuchusen1, 1.16, 1.16 );
setEffScaleKey( spep_0 + 50, shuchusen1, 1.15, 1.15 );
setEffScaleKey( spep_0 + 54, shuchusen1, 1.15, 1.15 );
setEffScaleKey( spep_0 + 56, shuchusen1, 1.14, 1.14 );
setEffScaleKey( spep_0 + 58, shuchusen1, 1.14, 1.14 );
setEffScaleKey( spep_0 + 60, shuchusen1, 1.13, 1.13 );
setEffScaleKey( spep_0 + 64, shuchusen1, 1.13, 1.13 );
setEffScaleKey( spep_0 + 66, shuchusen1, 1.12, 1.12 );
setEffScaleKey( spep_0 + 70, shuchusen1, 1.12, 1.12 );
setEffScaleKey( spep_0 + 72, shuchusen1, 1.11, 1.11 );
setEffScaleKey( spep_0 + 74, shuchusen1, 1.11, 1.11 );
setEffScaleKey( spep_0 + 76, shuchusen1, 1.1, 1.1 );
setEffScaleKey( spep_0 + 78, shuchusen1, 1.1, 1.1 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 2, shuchusen1, 180 );
setEffRotateKey( spep_0 + 4, shuchusen1, 0 );
setEffRotateKey( spep_0 + 6, shuchusen1, 180 );
setEffRotateKey( spep_0 + 8, shuchusen1, 0 );
setEffRotateKey( spep_0 + 10, shuchusen1, 180 );
setEffRotateKey( spep_0 + 12, shuchusen1, 0 );
setEffRotateKey( spep_0 + 14, shuchusen1, 180 );
setEffRotateKey( spep_0 + 16, shuchusen1, 0 );
setEffRotateKey( spep_0 + 18, shuchusen1, 180 );
setEffRotateKey( spep_0 + 20, shuchusen1, 0 );
setEffRotateKey( spep_0 + 22, shuchusen1, 180 );
setEffRotateKey( spep_0 + 24, shuchusen1, 0 );
setEffRotateKey( spep_0 + 26, shuchusen1, 180 );
setEffRotateKey( spep_0 + 28, shuchusen1, 0 );
setEffRotateKey( spep_0 + 30, shuchusen1, 180 );
setEffRotateKey( spep_0 + 32, shuchusen1, 0 );
setEffRotateKey( spep_0 + 34, shuchusen1, 180 );
setEffRotateKey( spep_0 + 36, shuchusen1, 0 );
setEffRotateKey( spep_0 + 38, shuchusen1, 180 );
setEffRotateKey( spep_0 + 40, shuchusen1, 0 );
setEffRotateKey( spep_0 + 42, shuchusen1, 180 );
setEffRotateKey( spep_0 + 44, shuchusen1, 0 );
setEffRotateKey( spep_0 + 46, shuchusen1, 180 );
setEffRotateKey( spep_0 + 48, shuchusen1, 0 );
setEffRotateKey( spep_0 + 50, shuchusen1, 180 );
setEffRotateKey( spep_0 + 52, shuchusen1, 0 );
setEffRotateKey( spep_0 + 54, shuchusen1, 180 );
setEffRotateKey( spep_0 + 56, shuchusen1, 0 );
setEffRotateKey( spep_0 + 58, shuchusen1, 180 );
setEffRotateKey( spep_0 + 60, shuchusen1, 0 );
setEffRotateKey( spep_0 + 62, shuchusen1, 180 );
setEffRotateKey( spep_0 + 64, shuchusen1, 0 );
setEffRotateKey( spep_0 + 66, shuchusen1, 180 );
setEffRotateKey( spep_0 + 68, shuchusen1, 0 );
setEffRotateKey( spep_0 + 70, shuchusen1, 180 );
setEffRotateKey( spep_0 + 72, shuchusen1, 0 );
setEffRotateKey( spep_0 + 74, shuchusen1, 180 );
setEffRotateKey( spep_0 + 76, shuchusen1, 0 );
setEffRotateKey( spep_0 + 78, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 135 );
setEffAlphaKey( spep_0 + 78, shuchusen1, 135 );

-- ** 白フェード ** --
entryFade( spep_0 + 70, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 78, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 音 ** --
playSe( spep_0 + 60, 1003 );  --ダッシュ

-- ** 次の準備 ** --
spep_1 = spep_0 + 78;

------------------------------------------------------
-- 連撃～蹴り飛ばし(134F)
------------------------------------------------------

-- ** エフェクト等 ** --
rush = entryEffectLife( spep_1 + 0, SP_02, 134, 0x100, -1, 0, 0, 0 );  --連撃～蹴り飛ばし(ef_002)
setEffMoveKey( spep_1 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_1 + 134, rush, 0, 0, 0 );

setEffScaleKey( spep_1 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_1 + 134, rush, 1.0, 1.0 );

setEffRotateKey( spep_1 + 0, rush, 0 );
setEffRotateKey( spep_1 + 134, rush, 0 );

setEffAlphaKey( spep_1 + 0, rush, 255 );
setEffAlphaKey( spep_1 + 134, rush, 255 );

-- ** 敵の動き ** --
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 101 );

setMoveKey( spep_1 + 0, 1, 99.2, 97.6 , 0 );
setMoveKey( spep_1 + 1, 1, 95.2, 96.4 , 0 );
setMoveKey( spep_1 + 3, 1, 91.2, 95.3 , 0 );
setMoveKey( spep_1 + 5, 1, 87.2, 94.1 , 0 );
setMoveKey( spep_1 + 7, 1, 83.2, 93 , 0 );
setMoveKey( spep_1 + 9, 1, 79.2, 91.9 , 0 );
setMoveKey( spep_1 + 11, 1, 75.2, 90.7 , 0 );
setMoveKey( spep_1 + 13, 1, 71.2, 89.6 , 0 );
setMoveKey( spep_1 + 15, 1, 67.2, 88.4 , 0 );

setScaleKey( spep_1 + 0, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 15, 1, 1.32, 1.32 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 15, 1, 0 );

-- ** 流線** --
ryusen1 = entryEffectLife( spep_1 + 0, 914, 133, 0x80, -1, 0, -1476.3, -335.7 );
setEffMoveKey( spep_1 + 0, ryusen1, -1476.3, -335.7 , 0 );
setEffMoveKey( spep_1 + 2, ryusen1, 61.1, 65.4 , 0 );
setEffMoveKey( spep_1 + 4, ryusen1, -246.4, -14.8 , 0 );
setEffMoveKey( spep_1 + 6, ryusen1, -553.9, -95 , 0 );
setEffMoveKey( spep_1 + 8, ryusen1, -861.4, -175.3 , 0 );
setEffMoveKey( spep_1 + 10, ryusen1, -1168.8, -255.5 , 0 );
setEffMoveKey( spep_1 + 12, ryusen1, -1476.3, -335.7 , 0 );
setEffMoveKey( spep_1 + 15, ryusen1, 61.1, 65.4 , 0 );

setEffScaleKey( spep_1 + 0, ryusen1, 3.74, 1.32 );
setEffScaleKey( spep_1 + 15, ryusen1, 3.74, 1.32 );

setEffRotateKey( spep_1 + 0, ryusen1, -14.6 );
setEffRotateKey( spep_1 + 15, ryusen1, -14.6 );

setEffAlphaKey( spep_1 + 0, ryusen1, 255 );
setEffAlphaKey( spep_1 + 15, ryusen1, 255 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 16; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
setMoveKey( SP_dodge + 0, 1, 67.2, 88.4 , 0 );
setMoveKey( SP_dodge + 10, 1, 67.2, 88.4 , 0 );

setScaleKey( SP_dodge + 0, 1, 1.32, 1.32 );
setScaleKey( SP_dodge + 10, 1, 1.32, 1.32 );

setRotateKey( SP_dodge + 0, 1, -3.2 );
setRotateKey( SP_dodge + 10, 1, -3.2 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end

------------------------------------------------------

-- ** 敵の動き ** --
changeAnime( spep_1 + 27, 1, 108 );
changeAnime( spep_1 + 61, 1, 106 );
changeAnime( spep_1 + 97, 1, 108 );

setMoveKey( spep_1 + 17, 1, 63.2, 87.3 , 0 );
setMoveKey( spep_1 + 19, 1, 59.2, 86.1 , 0 );
setMoveKey( spep_1 + 21, 1, 55.2, 85 , 0 );
setMoveKey( spep_1 + 23, 1, 51.2, 83.9 , 0 );
setMoveKey( spep_1 + 26, 1, 47.2, 82.7 , 0 );
setMoveKey( spep_1 + 27, 1, 13.4, 77.1 , 0 );
setMoveKey( spep_1 + 29, 1, 30.5, 107.9 , 0 );
setMoveKey( spep_1 + 31, 1, 29, 74.3 , 0 );
setMoveKey( spep_1 + 33, 1, 16.7, 80.4 , 0 );
setMoveKey( spep_1 + 35, 1, 33.9, 111.2 , 0 );
setMoveKey( spep_1 + 37, 1, 32.3, 77.6 , 0 );
setMoveKey( spep_1 + 39, 1, 20, 83.7 , 0 );
setMoveKey( spep_1 + 41, 1, 37.2, 114.5 , 0 );
setMoveKey( spep_1 + 43, 1, 35.7, 80.9 , 0 );
setMoveKey( spep_1 + 45, 1, 23.4, 87 , 0 );
setMoveKey( spep_1 + 47, 1, 53.4, 89.2 , 0 );
setMoveKey( spep_1 + 49, 1, 41.3, 53.7 , 0 );
setMoveKey( spep_1 + 51, 1, 32, 63.1 , 0 );
setMoveKey( spep_1 + 53, 1, 62.1, 87.6 , 0 );
setMoveKey( spep_1 + 55, 1, 49.8, 52.1 , 0 );
setMoveKey( spep_1 + 57, 1, 40.5, 61.6 , 0 );
setMoveKey( spep_1 + 60, 1, 70.7, 86 , 0 );
setMoveKey( spep_1 + 61, 1, 49.1, 64.9 , 0 );
setMoveKey( spep_1 + 63, 1, 63.6, 66.8 , 0 );
setMoveKey( spep_1 + 65, 1, 85, 119.9 , 0 );
setMoveKey( spep_1 + 67, 1, 128.2, 111.5 , 0 );
setMoveKey( spep_1 + 69, 1, 174.1, 145.4 , 0 );
setMoveKey( spep_1 + 71, 1, 160.5, 157 , 0 );
setMoveKey( spep_1 + 73, 1, 188.1, 151.6 , 0 );
setMoveKey( spep_1 + 75, 1, 179.3, 157.7 , 0 );
setMoveKey( spep_1 + 77, 1, 170.5, 163.8 , 0 );
setMoveKey( spep_1 + 79, 1, 164.7, 155.2 , 0 );
setMoveKey( spep_1 + 81, 1, 158.9, 146.5 , 0 );
setMoveKey( spep_1 + 83, 1, 153.1, 137.9 , 0 );
setMoveKey( spep_1 + 85, 1, 147.3, 129.3 , 0 );
setMoveKey( spep_1 + 87, 1, 141.5, 120.7 , 0 );
setMoveKey( spep_1 + 89, 1, 135.7, 112.1 , 0 );
setMoveKey( spep_1 + 91, 1, 129.8, 103.4 , 0 );
setMoveKey( spep_1 + 93, 1, 124, 94.8 , 0 );
setMoveKey( spep_1 + 96, 1, 118.2, 86.2 , 0 );
setMoveKey( spep_1 + 97, 1, 120.8, -83.4 , 0 );
setMoveKey( spep_1 + 99, 1, 49.6, -139.1 , 0 );
setMoveKey( spep_1 + 101, 1, 84.2, -122 , 0 );
setMoveKey( spep_1 + 103, 1, 260.7, -432.2 , 0 );
setMoveKey( spep_1 + 105, 1, 260.8, -477.1 , 0 );
setMoveKey( spep_1 + 107, 1, 325.4, -545.4 , 0 );
setMoveKey( spep_1 + 109, 1, 322.3, -593.7 , 0 );
setMoveKey( spep_1 + 111, 1, 360.8, -630.6 , 0 );
setMoveKey( spep_1 + 113, 1, 426.1, -697.8 , 0 );
setMoveKey( spep_1 + 115, 1, 422.9, -747.3 , 0 );
setMoveKey( spep_1 + 117, 1, 460.9, -784.1 , 0 );
setMoveKey( spep_1 + 119, 1, 526.7, -850.2 , 0 );
setMoveKey( spep_1 + 121, 1, 523.4, -901 , 0 );
setMoveKey( spep_1 + 123, 1, 560.9, -937.6 , 0 );
setMoveKey( spep_1 + 125, 1, 627.2, -1002.5 , 0 );
setMoveKey( spep_1 + 127, 1, 623.9, -1054.6 , 0 );
setMoveKey( spep_1 + 129, 1, 660.9, -1091 , 0 );
setMoveKey( spep_1 + 131, 1, 727.8, -1154.8 , 0 );
setMoveKey( spep_1 + 134, 1, 727.8, -1154.8 , 0 );

setScaleKey( spep_1 + 26, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 27, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 45, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 47, 1, 1.48, 1.48 );
setScaleKey( spep_1 + 49, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 60, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 61, 1, 1.27, 1.27 );
setScaleKey( spep_1 + 63, 1, 1.26, 1.26 );
setScaleKey( spep_1 + 67, 1, 1.26, 1.26 );
setScaleKey( spep_1 + 69, 1, 1.21, 1.21 );
setScaleKey( spep_1 + 71, 1, 1.22, 1.22 );
setScaleKey( spep_1 + 73, 1, 1.28, 1.28 );
setScaleKey( spep_1 + 75, 1, 1.27, 1.27 );
setScaleKey( spep_1 + 79, 1, 1.27, 1.27 );
setScaleKey( spep_1 + 81, 1, 1.28, 1.28 );
setScaleKey( spep_1 + 83, 1, 1.29, 1.29 );
setScaleKey( spep_1 + 85, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 87, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 89, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 91, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 93, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 96, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 97, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 99, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 101, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 103, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 105, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 117, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 119, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 131, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 134, 1, 1.44, 1.44 );

setRotateKey( spep_1 + 26, 1, 0 );
setRotateKey( spep_1 + 27, 1, -31.1 );
setRotateKey( spep_1 + 45, 1, -31.1 );
setRotateKey( spep_1 + 47, 1, -12.3 );
setRotateKey( spep_1 + 49, 1, -12.2 );
setRotateKey( spep_1 + 51, 1, -12.2 );
setRotateKey( spep_1 + 53, 1, -12.1 );
setRotateKey( spep_1 + 55, 1, -12 );
setRotateKey( spep_1 + 57, 1, -11.9 );
setRotateKey( spep_1 + 60, 1, -11.8 );
setRotateKey( spep_1 + 61, 1, -54.2 );
setRotateKey( spep_1 + 63, 1, -51.5 );
setRotateKey( spep_1 + 65, 1, -48.9 );
setRotateKey( spep_1 + 67, 1, -46.2 );
setRotateKey( spep_1 + 69, 1, -27 );
setRotateKey( spep_1 + 71, 1, -26.3 );
setRotateKey( spep_1 + 73, 1, -25.5 );
setRotateKey( spep_1 + 75, 1, -25.2 );
setRotateKey( spep_1 + 77, 1, -24.8 );
setRotateKey( spep_1 + 79, 1, -24 );
setRotateKey( spep_1 + 81, 1, -23.1 );
setRotateKey( spep_1 + 83, 1, -22.3 );
setRotateKey( spep_1 + 85, 1, -21.4 );
setRotateKey( spep_1 + 87, 1, -20.6 );
setRotateKey( spep_1 + 79, 1, -19.8 );
setRotateKey( spep_1 + 91, 1, -18.9 );
setRotateKey( spep_1 + 93, 1, -18.1 );
setRotateKey( spep_1 + 96, 1, -17.3 );
setRotateKey( spep_1 + 97, 1, 50.7 );
setRotateKey( spep_1 + 99, 1, 56.4 );
setRotateKey( spep_1 + 101, 1, 58.9 );
setRotateKey( spep_1 + 103, 1, 59.7 );
setRotateKey( spep_1 + 105, 1, 59.9 );
setRotateKey( spep_1 + 107, 1, 59.2 );
setRotateKey( spep_1 + 109, 1, 58.5 );
setRotateKey( spep_1 + 111, 1, 57.9 );
setRotateKey( spep_1 + 113, 1, 57.2 );
setRotateKey( spep_1 + 115, 1, 56.5 );
setRotateKey( spep_1 + 117, 1, 55.8 );
setRotateKey( spep_1 + 119, 1, 55.1 );
setRotateKey( spep_1 + 121, 1, 54.5 );
setRotateKey( spep_1 + 123, 1, 53.8 );
setRotateKey( spep_1 + 125, 1, 53.1 );
setRotateKey( spep_1 + 127, 1, 52.4 );
setRotateKey( spep_1 + 129, 1, 51.7 );
setRotateKey( spep_1 + 131, 1, 51.1 );
setRotateKey( spep_1 + 134, 1, 51.1 );

-- ** 流線** --
setEffMoveKey( spep_1 + 16, ryusen1, -246.4, -14.8 , 0 );
setEffMoveKey( spep_1 + 18, ryusen1, -553.9, -95 , 0 );
setEffMoveKey( spep_1 + 20, ryusen1, -861.4, -175.3 , 0 );
setEffMoveKey( spep_1 + 22, ryusen1, -1168.8, -255.5 , 0 );
setEffMoveKey( spep_1 + 24, ryusen1, -1476.3, -335.7 , 0 );
setEffMoveKey( spep_1 + 26, ryusen1, 61.1, 65.4 , 0 );
setEffMoveKey( spep_1 + 28, ryusen1, -246.4, -14.8 , 0 );
setEffMoveKey( spep_1 + 30, ryusen1, -553.9, -95 , 0 );
setEffMoveKey( spep_1 + 32, ryusen1, -861.4, -175.3 , 0 );
setEffMoveKey( spep_1 + 34, ryusen1, -1168.8, -255.5 , 0 );
setEffMoveKey( spep_1 + 36, ryusen1, -1476.3, -335.7 , 0 );
setEffMoveKey( spep_1 + 38, ryusen1, 61.1, 65.4 , 0 );
setEffMoveKey( spep_1 + 40, ryusen1, -246.4, -14.8 , 0 );
setEffMoveKey( spep_1 + 42, ryusen1, -553.9, -95 , 0 );
setEffMoveKey( spep_1 + 44, ryusen1, -861.4, -175.3 , 0 );
setEffMoveKey( spep_1 + 46, ryusen1, -1168.8, -255.5 , 0 );
setEffMoveKey( spep_1 + 48, ryusen1, -1476.3, -335.7 , 0 );
setEffMoveKey( spep_1 + 50, ryusen1, 61.1, 65.4 , 0 );
setEffMoveKey( spep_1 + 52, ryusen1, -246.4, -14.8 , 0 );
setEffMoveKey( spep_1 + 54, ryusen1, -553.9, -95 , 0 );
setEffMoveKey( spep_1 + 56, ryusen1, -861.4, -175.3 , 0 );
setEffMoveKey( spep_1 + 58, ryusen1, -1168.8, -255.5 , 0 );
setEffMoveKey( spep_1 + 60, ryusen1, -1476.3, -335.7 , 0 );
setEffMoveKey( spep_1 + 62, ryusen1, 61.1, 65.4 , 0 );
setEffMoveKey( spep_1 + 64, ryusen1, -246.4, -14.8 , 0 );
setEffMoveKey( spep_1 + 66, ryusen1, -553.9, -95 , 0 );
setEffMoveKey( spep_1 + 68, ryusen1, -861.4, -175.3 , 0 );
setEffMoveKey( spep_1 + 70, ryusen1, -1168.8, -255.5 , 0 );
setEffMoveKey( spep_1 + 72, ryusen1, -1476.3, -335.7 , 0 );
setEffMoveKey( spep_1 + 75, ryusen1, -246.4, -14.8 , 0 );

setEffMoveKey( spep_1 + 101, ryusen1, -155.3, 664.5 , 0 );
setEffMoveKey( spep_1 + 106, ryusen1, -155.3, 664.5 , 0 );
setEffMoveKey( spep_1 + 108, ryusen1, -264.1, 963.1 , 0 );
setEffMoveKey( spep_1 + 110, ryusen1, -372.9, 1261.6 , 0 );
setEffMoveKey( spep_1 + 112, ryusen1, -481.7, 1560.2 , 0 );
setEffMoveKey( spep_1 + 114, ryusen1, 62.3, 67.4 , 0 );
setEffMoveKey( spep_1 + 116, ryusen1, -46.5, 366 , 0 );
setEffMoveKey( spep_1 + 118, ryusen1, -155.3, 664.5 , 0 );
setEffMoveKey( spep_1 + 120, ryusen1, -264.1, 963.1 , 0 );
setEffMoveKey( spep_1 + 122, ryusen1, -372.9, 1261.6 , 0 );
setEffMoveKey( spep_1 + 124, ryusen1, -481.7, 1560.2 , 0 );
setEffMoveKey( spep_1 + 126, ryusen1, 62.3, 67.4 , 0 );
setEffMoveKey( spep_1 + 128, ryusen1, -46.5, 366 , 0 );
setEffMoveKey( spep_1 + 130, ryusen1, -155.3, 664.5 , 0 );
setEffMoveKey( spep_1 + 132, ryusen1, -264.1, 963.1 , 0 );
setEffMoveKey( spep_1 + 133, ryusen1, -372.9, 1261.6 , 0 );

setEffScaleKey( spep_1 + 16, ryusen1, 3.74, 1.32 );
setEffScaleKey( spep_1 + 133, ryusen1, 3.74, 1.32 );

setEffRotateKey( spep_1 + 16, ryusen1, -14.6 );
setEffRotateKey( spep_1 + 75, ryusen1, -14.6 );

setEffRotateKey( spep_1 + 100, ryusen1, -14.6 );
setEffRotateKey( spep_1 + 101, ryusen1, 70 );
setEffRotateKey( spep_1 + 133, ryusen1, 70 );

setEffAlphaKey( spep_1 + 16, ryusen1, 255 );
setEffAlphaKey( spep_1 + 71, ryusen1, 255 );
setEffAlphaKey( spep_1 + 73, ryusen1, 128 );
setEffAlphaKey( spep_1 + 75, ryusen1, 0 );

setEffAlphaKey( spep_1 + 102, ryusen1, 0 );
setEffAlphaKey( spep_1 + 103, ryusen1, 255 );
setEffAlphaKey( spep_1 + 133, ryusen1, 255 );

-- ** 書き文字エントリー ** --
czdogaga = entryEffectLife( spep_1 + 27, 10017, 48, 0x100, -1, 0, -26.1, 309.5 ); --ドガガガッ
setEffMoveKey( spep_1 + 27, czdogaga, -26.1, 309.5 , 0 );
setEffMoveKey( spep_1 + 29, czdogaga, -21.4, 315.5 , 0 );
setEffMoveKey( spep_1 + 31, czdogaga, -20.2, 316.9 , 0 );
setEffMoveKey( spep_1 + 33, czdogaga, -28.2, 306.3 , 0 );
setEffMoveKey( spep_1 + 35, czdogaga, -20.2, 316.9 , 0 );
setEffMoveKey( spep_1 + 37, czdogaga, -20.2, 316.9 , 0 );
setEffMoveKey( spep_1 + 39, czdogaga, -28.2, 306.3 , 0 );
setEffMoveKey( spep_1 + 41, czdogaga, -20.2, 316.9 , 0 );
setEffMoveKey( spep_1 + 43, czdogaga, -20.2, 316.9 , 0 );
setEffMoveKey( spep_1 + 45, czdogaga, -28.2, 306.3 , 0 );
setEffMoveKey( spep_1 + 47, czdogaga, -20.2, 316.9 , 0 );
setEffMoveKey( spep_1 + 49, czdogaga, -20.2, 316.9 , 0 );
setEffMoveKey( spep_1 + 51, czdogaga, -28.2, 306.3 , 0 );
setEffMoveKey( spep_1 + 53, czdogaga, -20.2, 316.9 , 0 );
setEffMoveKey( spep_1 + 55, czdogaga, -20.2, 316.9 , 0 );
setEffMoveKey( spep_1 + 57, czdogaga, -28.2, 306.3 , 0 );
setEffMoveKey( spep_1 + 59, czdogaga, -20.2, 316.9 , 0 );
setEffMoveKey( spep_1 + 61, czdogaga, -20.2, 316.9 , 0 );
setEffMoveKey( spep_1 + 63, czdogaga, -28.2, 306.3 , 0 );
setEffMoveKey( spep_1 + 65, czdogaga, -20.2, 316.9 , 0 );
setEffMoveKey( spep_1 + 67, czdogaga, -20.2, 316.9 , 0 );
setEffMoveKey( spep_1 + 69, czdogaga, -28.2, 306.3 , 0 );
setEffMoveKey( spep_1 + 71, czdogaga, -20.2, 316.9 , 0 );
setEffMoveKey( spep_1 + 75, czdogaga, -20.2, 316.9 , 0 );

setEffScaleKey( spep_1 + 27, czdogaga, 0.9, 0.9 );
setEffScaleKey( spep_1 + 29, czdogaga, 1.48, 1.48 );
setEffScaleKey( spep_1 + 31, czdogaga, 2.06, 2.06 );
setEffScaleKey( spep_1 + 75, czdogaga, 2.06, 2.06 );

setEffRotateKey( spep_1 + 27, czdogaga, -1.5 );
setEffRotateKey( spep_1 + 75, czdogaga, -1.5 );

setEffAlphaKey( spep_1 + 27, czdogaga, 255 );
setEffAlphaKey( spep_1 + 71, czdogaga, 255 );
setEffAlphaKey( spep_1 + 73, czdogaga, 128 );
setEffAlphaKey( spep_1 + 75, czdogaga, 0 );

czbaki = entryEffectLife( spep_1 + 97, 10020, 16, 0x100, -1, 0, -130.5, 354.4 ); --バキッ
setEffMoveKey( spep_1 + 97, czbaki, -130.5, 354.4 , 0 );
setEffMoveKey( spep_1 + 99, czbaki, -135.5, 364.7 , 0 );
setEffMoveKey( spep_1 + 101, czbaki, -127.3, 364.9 , 0 );
setEffMoveKey( spep_1 + 103, czbaki, -133.9, 393.1 , 0 );
setEffMoveKey( spep_1 + 105, czbaki, -138.8, 380 , 0 );
setEffMoveKey( spep_1 + 107, czbaki, -127.3, 364.9 , 0 );
setEffMoveKey( spep_1 + 109, czbaki, -133.9, 393.1 , 0 );
setEffMoveKey( spep_1 + 111, czbaki, -138.8, 380 , 0 );
setEffMoveKey( spep_1 + 113, czbaki, -138.8, 380 , 0 );

setEffScaleKey( spep_1 + 97, czbaki, 0.74, 0.74 );
setEffScaleKey( spep_1 + 99, czbaki, 1.34, 1.34 );
setEffScaleKey( spep_1 + 101, czbaki, 1.93, 1.93 );
setEffScaleKey( spep_1 + 113, czbaki, 1.93, 1.93 );

setEffRotateKey( spep_1 + 97, czbaki, -13.2 );
setEffRotateKey( spep_1 + 113, czbaki, -13.2 );

setEffAlphaKey( spep_1 + 97, czbaki, 255 );
setEffAlphaKey( spep_1 + 109, czbaki, 255 );
setEffAlphaKey( spep_1 + 111, czbaki, 128 );
setEffAlphaKey( spep_1 + 113, czbaki, 0 );

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_1 + 122, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 134, 0, 0, 0, 0, 180 );  --薄い黒　背景
entryFadeBg( spep_1 + 97, 0, 6, 0, 0, 0, 0, 255 );  --黒　背景
-- ** 音 ** --
playSe( spep_1 + 22, 1001 );  --パンチ
playSe( spep_1 + 34, 1006 );  --パンチ
playSe( spep_1 + 46, 1000 );  --キック
playSe( spep_1 + 58, 1009 );  --キック
playSe( spep_1 + 95, 1010 );  --キック

-- ** 次の準備 ** --
spep_2 = spep_1 + 134;

------------------------------------------------------
-- 敵に近づいて振り上げる(56F)
------------------------------------------------------

-- ** エフェクト等 ** --
huriage = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --敵に近づいて振り上げる(ef_003)
setEffMoveKey( spep_2 + 0, huriage, 0, 0, 0 );
setEffMoveKey( spep_2 + 56, huriage, 0, 0, 0 );

setEffScaleKey( spep_2 + 0, huriage, -1.0, 1.0 );
setEffScaleKey( spep_2 + 56, huriage, -1.0, 1.0 );

setEffRotateKey( spep_2 + 0, huriage, 0 );
setEffRotateKey( spep_2 + 56, huriage, 0 );

setEffAlphaKey( spep_2 + 0, huriage, 255 );
setEffAlphaKey( spep_2 + 56, huriage, 255 );

-- ** 敵の動き ** --
setDisp( spep_2 + 0, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 56, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 音 ** --
playSe( spep_2 + 0, 44 ); --ダッシュ

-- ** 次の準備 ** --
spep_3 = spep_2 + 56;

------------------------------------------------------
-- 打ち落とす～敵が斜め下に落ちる(40F)
------------------------------------------------------

-- ** エフェクト等 ** --
uchiotoshi = entryEffectLife( spep_3 + 2, SP_04, 38, 0x100, -1, 0, 0, 0 );  --打ち落とす～敵が斜め下に落ちる(ef_004)
setEffMoveKey( spep_3 + 2, uchiotoshi, 0, 0, 0 );
setEffMoveKey( spep_3 + 40, uchiotoshi, 0, 0, 0 );

setEffScaleKey( spep_3 + 2, uchiotoshi, 1.0, 1.0 );
setEffScaleKey( spep_3 + 40, uchiotoshi, 1.0, 1.0 );

setEffRotateKey( spep_3 + 2, uchiotoshi, 0 );
setEffRotateKey( spep_3 + 40, uchiotoshi, 0 );

setEffAlphaKey( spep_3 + 2, uchiotoshi, 255 );
setEffAlphaKey( spep_3 + 40, uchiotoshi, 255 );

-- ** 敵の動き ** --
setDisp( spep_3 + 9, 1, 1 );
changeAnime( spep_3 + 9, 1, 106 );

setMoveKey( spep_3 + 9, 1, 9, -23.9 , 0 );
setMoveKey( spep_3 + 11, 1, 62.1, -8.8 , 0 );
setMoveKey( spep_3 + 13, 1, 23, -69.5 , 0 );
setMoveKey( spep_3 + 15, 1, 107.2, -298.5 , 0 );
setMoveKey( spep_3 + 17, 1, 111.5, -369.6 , 0 );
setMoveKey( spep_3 + 19, 1, 139.3, -493.6 , 0 );
setMoveKey( spep_3 + 21, 1, 126.7, -556.4 , 0 );
setMoveKey( spep_3 + 23, 1, 149.8, -612.2 , 0 );
setMoveKey( spep_3 + 25, 1, 191.9, -722.9 , 0 );
setMoveKey( spep_3 + 27, 1, 180.5, -783.2 , 0 );
setMoveKey( spep_3 + 29, 1, 205.2, -839.4 , 0 );
setMoveKey( spep_3 + 31, 1, 244.2, -952 , 0 );
setMoveKey( spep_3 + 33, 1, 234.2, -1009.7 , 0 );
setMoveKey( spep_3 + 35, 1, 260.6, -1066.7 , 0 );
setMoveKey( spep_3 + 40, 1, 296.4, -1180.9 , 0 );

setScaleKey( spep_3 + 9, 1, 1.43, 1.43 );
setScaleKey( spep_3 + 40, 1, 1.43, 1.43 );

setRotateKey( spep_3 + 9, 1, 68.1 );
setRotateKey( spep_3 + 11, 1, 63.2 );
setRotateKey( spep_3 + 13, 1, 72.4 );
setRotateKey( spep_3 + 15, 1, 95.6 );
setRotateKey( spep_3 + 17, 1, 97.2 );
setRotateKey( spep_3 + 19, 1, 98.8 );
setRotateKey( spep_3 + 21, 1, 100.5 );
setRotateKey( spep_3 + 23, 1, 102.1 );
setRotateKey( spep_3 + 25, 1, 103.7 );
setRotateKey( spep_3 + 27, 1, 105.4 );
setRotateKey( spep_3 + 29, 1, 107 );
setRotateKey( spep_3 + 31, 1, 108.6 );
setRotateKey( spep_3 + 33, 1, 110.3 );
setRotateKey( spep_3 + 35, 1, 111.9 );
setRotateKey( spep_3 + 40, 1, 113.5 );

setEffAlphaKey( spep_3 + 9, 1, 255 );
setEffAlphaKey( spep_3 + 40, 1, 255 );

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_3 + 9, 914, 31, 0x80, -1, 0, -194, 1135.4 );
setEffMoveKey( spep_3 + 9, ryusen2, -194, 1135.4 , 0 );
setEffMoveKey( spep_3 + 12, ryusen2, 62.5, 67.3 , 0 );
setEffMoveKey( spep_3 + 14, ryusen2, 11.2, 380.9 , 0 );
setEffMoveKey( spep_3 + 16, ryusen2, -40.1, 694.6 , 0 );
setEffMoveKey( spep_3 + 18, ryusen2, -91.4, 1008.2 , 0 );
setEffMoveKey( spep_3 + 20, ryusen2, -142.7, 1321.8 , 0 );
setEffMoveKey( spep_3 + 22, ryusen2, -194, 1135.4 , 0 );
setEffMoveKey( spep_3 + 24, ryusen2, 62.5, 67.3 , 0 );
setEffMoveKey( spep_3 + 26, ryusen2, 11.2, 380.9 , 0 );
setEffMoveKey( spep_3 + 28, ryusen2, -40.1, 694.6 , 0 );
setEffMoveKey( spep_3 + 30, ryusen2, -91.4, 1008.2 , 0 );
setEffMoveKey( spep_3 + 32, ryusen2, -142.7, 1321.8 , 0 );
setEffMoveKey( spep_3 + 34, ryusen2, -194, 1135.4 , 0 );
setEffMoveKey( spep_3 + 36, ryusen2, 62.5, 67.3 , 0 );
setEffMoveKey( spep_3 + 40, ryusen2, 11.2, 380.9 , 0 );

setEffScaleKey( spep_3 + 9, ryusen2, 3.74, 1.32 );
setEffScaleKey( spep_3 + 40, ryusen2, 3.74, 1.32 );

setEffRotateKey( spep_3 + 9, ryusen2, 80.7 );
setEffRotateKey( spep_3 + 40, ryusen2, 80.7 );

setEffAlphaKey( spep_3 + 9, ryusen2, 255 );
setEffAlphaKey( spep_3 + 40, ryusen2, 255 );

-- ** 書き文字エントリー ** --
ctbago = entryEffectLife( spep_3 + 9, 10021, 18, 0x100, -1, 0, 191.1, 324.2 ); --バゴォッ
setEffMoveKey( spep_3 + 9, ctbago, 191.1, 324.2 , 0 );
setEffMoveKey( spep_3 + 11, ctbago, 187, 329.5 , 0 );
setEffMoveKey( spep_3 + 13, ctbago, 209.1, 350.1 , 0 );
setEffMoveKey( spep_3 + 15, ctbago, 194.3, 316 , 0 );
setEffMoveKey( spep_3 + 17, ctbago, 186.9, 328.4 , 0 );
setEffMoveKey( spep_3 + 19, ctbago, 209.1, 350.1 , 0 );
setEffMoveKey( spep_3 + 21, ctbago, 194.3, 316 , 0 );
setEffMoveKey( spep_3 + 23, ctbago, 186.9, 328.4 , 0 );
setEffMoveKey( spep_3 + 24, ctbago, 209.1, 350.1 , 0 );
setEffMoveKey( spep_3 + 27, ctbago, 209.1, 350.1 , 0 );

setEffScaleKey( spep_3 + 9, ctbago, 1.05, 1.05 );
setEffScaleKey( spep_3 + 11, ctbago, 1.54, 1.54 );
setEffScaleKey( spep_3 + 13, ctbago, 2.04, 2.04 );
setEffScaleKey( spep_3 + 27, ctbago, 2.04, 2.04 );

setEffRotateKey( spep_3 + 8, ctbago, 14 );
setEffRotateKey( spep_3 + 27, ctbago, 14 );

setEffAlphaKey( spep_3 + 9, ctbago, 255 );
setEffAlphaKey( spep_3 + 23, ctbago, 255 );
setEffAlphaKey( spep_3 + 25, ctbago, 128 );
setEffAlphaKey( spep_3 + 27, ctbago, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 9, 0, 0, 0, 0, 255 );  --黒　背景
entryFadeBg( spep_3 + 0, 0, 41, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_3 + 33, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
-- ** 音 ** --
playSe( spep_3 + 0, 1012 );  --撃ち落とし
playSe( spep_3 + 1, 1010 );  --撃ち落とし

-- ** 次の準備 ** --
spep_4 = spep_3 + 41;

------------------------------------------------------
-- 敵落下(88F)
------------------------------------------------------

-- ** エフェクト等 ** --
rakka = entryEffectLife( spep_4 + 0, SP_05, 88, 0x80, -1, 0, 0, 0 );  --敵落下(ef_005)
setEffMoveKey( spep_4 + 0, rakka, 0, 0, 0 );
setEffMoveKey( spep_4 + 88, rakka, 0, 0, 0 );

setEffScaleKey( spep_4 + 0, rakka, 1.0, 1.0 );
setEffScaleKey( spep_4 + 88, rakka, 1.0, 1.0 );

setEffRotateKey( spep_4 + 0, rakka, 0 );
setEffRotateKey( spep_4 + 88, rakka, 0 );

setEffAlphaKey( spep_4 + 0, rakka, 255 );
setEffAlphaKey( spep_4 + 88, rakka, 255 );

-- ** 敵の動き ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 25, 1, 0 );
changeAnime( spep_4 + 0, 1, 105 );

setMoveKey( spep_4 + 0, 1, 69.1, -59 , 0 );
setMoveKey( spep_4 + 2, 1, 59.8, -70.1 , 0 );
setMoveKey( spep_4 + 4, 1, 51.6, -79.8 , 0 );
setMoveKey( spep_4 + 6, 1, 44.4, -88.4 , 0 );
setMoveKey( spep_4 + 8, 1, 38.2, -95.8 , 0 );
setMoveKey( spep_4 + 10, 1, 32.9, -102.1 , 0 );
setMoveKey( spep_4 + 12, 1, 28.6, -107.2 , 0 );
setMoveKey( spep_4 + 14, 1, 25.2, -111.2 , 0 );
setMoveKey( spep_4 + 16, 1, 22.6, -114.4 , 0 );
setMoveKey( spep_4 + 18, 1, 20.4, -117 , 0 );
setMoveKey( spep_4 + 20, 1, 18.7, -119 , 0 );
setMoveKey( spep_4 + 22, 1, 17.3, -120.6 , 0 );
setMoveKey( spep_4 + 24, 1, 16.5, -121.7 , 0 );
setMoveKey( spep_4 + 25, 1, 16.2, -121.9 , 0 );

setScaleKey( spep_4 + 0, 1, 5.21, 5.21 );
setScaleKey( spep_4 + 2, 1, 4.37, 4.37 );
setScaleKey( spep_4 + 4, 1, 3.63, 3.63 );
setScaleKey( spep_4 + 6, 1, 2.99, 2.99 );
setScaleKey( spep_4 + 8, 1, 2.43, 2.43 );
setScaleKey( spep_4 + 10, 1, 1.96, 1.96 );
setScaleKey( spep_4 + 12, 1, 1.57, 1.57 );
setScaleKey( spep_4 + 14, 1, 1.27, 1.27 );
setScaleKey( spep_4 + 16, 1, 1.03, 1.03 );
setScaleKey( spep_4 + 18, 1, 0.83, 0.83 );
setScaleKey( spep_4 + 20, 1, 0.68, 0.68 );
setScaleKey( spep_4 + 22, 1, 0.56, 0.56 );
setScaleKey( spep_4 + 24, 1, 0.48, 0.48 );
setScaleKey( spep_4 + 25, 1, 0.45, 0.45 );

setRotateKey( spep_4 + 0, 1, -7.5 );
setRotateKey( spep_4 + 1, 1, -7.5 );
setRotateKey( spep_4 + 25, 1, -7.5 );

-- ** 書き文字エントリー ** --
ctdogon = entryEffectLife( spep_4 + 25, 10018, 49, 0x100, -1, 0, -87.8, 234.3 ); --ドゴォンッ
setEffMoveKey( spep_4 + 25, ctdogon, -87.8, 234.3 , 0 );
setEffMoveKey( spep_4 + 28, ctdogon, -87.1, 232.4 , 0 );
setEffMoveKey( spep_4 + 30, ctdogon, -84.9, 231.1 , 0 );
setEffMoveKey( spep_4 + 32, ctdogon, -88.9, 230.9 , 0 );
setEffMoveKey( spep_4 + 34, ctdogon, -85.8, 231.2 , 0 );
setEffMoveKey( spep_4 + 36, ctdogon, -87.4, 231.8 , 0 );
setEffMoveKey( spep_4 + 38, ctdogon, -86.1, 231.7 , 0 );
setEffMoveKey( spep_4 + 40, ctdogon, -88.2, 231.7 , 0 );
setEffMoveKey( spep_4 + 42, ctdogon, -86.1, 231.7 , 0 );
setEffMoveKey( spep_4 + 44, ctdogon, -88.2, 231.7 , 0 );
setEffMoveKey( spep_4 + 46, ctdogon, -86.1, 231.7 , 0 );
setEffMoveKey( spep_4 + 48, ctdogon, -88.2, 231.7 , 0 );
setEffMoveKey( spep_4 + 50, ctdogon, -86.1, 231.7 , 0 );
setEffMoveKey( spep_4 + 52, ctdogon, -88.2, 231.7 , 0 );
setEffMoveKey( spep_4 + 54, ctdogon, -86.1, 231.7 , 0 );
setEffMoveKey( spep_4 + 56, ctdogon, -88.2, 231.7 , 0 );
setEffMoveKey( spep_4 + 58, ctdogon, -86.1, 231.7 , 0 );
setEffMoveKey( spep_4 + 60, ctdogon, -88.2, 231.7 , 0 );
setEffMoveKey( spep_4 + 62, ctdogon, -86.1, 231.7 , 0 );
setEffMoveKey( spep_4 + 64, ctdogon, -88.2, 231.7 , 0 );
setEffMoveKey( spep_4 + 66, ctdogon, -86.1, 231.7 , 0 );
setEffMoveKey( spep_4 + 68, ctdogon, -88.2, 231.7 , 0 );
setEffMoveKey( spep_4 + 70, ctdogon, -86.1, 231.7 , 0 );
setEffMoveKey( spep_4 + 72, ctdogon, -88.2, 231.7 , 0 );
setEffMoveKey( spep_4 + 74, ctdogon, -86.1, 231.7 , 0 );

setEffScaleKey( spep_4 + 25, ctdogon, 1.06, 1.06 );
setEffScaleKey( spep_4 + 28, ctdogon, 2.28, 2.28 );
setEffScaleKey( spep_4 + 30, ctdogon, 2.89, 2.89 );
setEffScaleKey( spep_4 + 32, ctdogon, 2.75, 2.75 );
setEffScaleKey( spep_4 + 34, ctdogon, 2.61, 2.61 );
setEffScaleKey( spep_4 + 36, ctdogon, 2.47, 2.47 );
setEffScaleKey( spep_4 + 38, ctdogon, 2.34, 2.34 );
setEffScaleKey( spep_4 + 74, ctdogon, 2.34, 2.34 );

setEffRotateKey( spep_4 + 25, ctdogon, -32.7 );
setEffRotateKey( spep_4 + 28, ctdogon, -46.1 );
setEffRotateKey( spep_4 + 30, ctdogon, -38.7 );
setEffRotateKey( spep_4 + 32, ctdogon, -24.1 );
setEffRotateKey( spep_4 + 34, ctdogon, -32.9 );
setEffRotateKey( spep_4 + 36, ctdogon, -43.6 );
setEffRotateKey( spep_4 + 38, ctdogon, -32.7 );
setEffRotateKey( spep_4 + 74, ctdogon, -32.7 );

setEffAlphaKey( spep_4 + 25, ctdogon, 255 );
setEffAlphaKey( spep_4 + 60, ctdogon, 255 );
setEffAlphaKey( spep_4 + 62, ctdogon, 219 );
setEffAlphaKey( spep_4 + 64, ctdogon, 182 );
setEffAlphaKey( spep_4 + 66, ctdogon, 146 );
setEffAlphaKey( spep_4 + 68, ctdogon, 109 );
setEffAlphaKey( spep_4 + 70, ctdogon, 73 );
setEffAlphaKey( spep_4 + 72, ctdogon, 36 );
setEffAlphaKey( spep_4 + 74, ctdogon, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 88, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_4 + 78, 6, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
-- ** 音 ** --
SE_1121_1 = playSe( spep_4 + 0, 1121 );  --敵落下
stopSe( spep_4 + 15, SE_1121_1, 20 );
playSe( spep_4 + 30, 1023);--爆発 

-- ** 次の準備 ** --
spep_5 = spep_4 + 88;

------------------------------------------------------
-- 気溜め(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_5 + 0, SP_06, 100, 0x100, -1, 0, 0, 0 );  --気溜め(ef_006)
setEffMoveKey( spep_5 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_5 + 100, tame, 0, 0, 0 );

setEffScaleKey( spep_5 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, tame, 1.0, 1.0 );

setEffRotateKey( spep_5 + 0, tame, 0 );
setEffRotateKey( spep_5 + 100, tame, 0 );

setEffAlphaKey( spep_5 + 0, tame, 255 );
setEffAlphaKey( spep_5 + 100, tame, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_5 + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_5 + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_5 + 16,  190006, 70, 0x100, -1, 20, -0, 515.5 ); --ゴゴゴ
setEffShake( spep_5 + 16, ctgogo, 70, 10 );

setEffMoveKey( spep_5 + 16, ctgogo, 55, 521.8 , 0 );
setEffMoveKey( spep_5 + 86, ctgogo, 55, 515.5 , 0 );

setEffScaleKey( spep_5 + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_5 + 86, ctgogo, -0.7, 0.7 );

setEffRotateKey( spep_5 + 16, ctgogo, 0 );
setEffRotateKey( spep_5 + 86, ctgogo, 0 );

setEffAlphaKey( spep_5 + 16, ctgogo, 255 );
setEffAlphaKey( spep_5 + 86, ctgogo, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_5 + 0, 906, 100, 0x100, -1, 0, 255.6, 0 );
setEffMoveKey( spep_5 + 0, shuchusen2, 0, 0, 0 );
setEffMoveKey( spep_5 + 100, shuchusen2, 0, 0, 0 );

setEffScaleKey( spep_5 + 0, shuchusen2, 1.2, 1.2 );
setEffScaleKey( spep_5 + 100, shuchusen2, 1.2, 1.2 );

setEffRotateKey( spep_5 + 0, shuchusen2, 0 );
setEffRotateKey( spep_5 + 2, shuchusen2, 180 );
setEffRotateKey( spep_5 + 4, shuchusen2, 0 );
setEffRotateKey( spep_5 + 6, shuchusen2, 180 );
setEffRotateKey( spep_5 + 8, shuchusen2, 0 );
setEffRotateKey( spep_5 + 10, shuchusen2, 180 );
setEffRotateKey( spep_5 + 12, shuchusen2, 0 );
setEffRotateKey( spep_5 + 14, shuchusen2, 180 );
setEffRotateKey( spep_5 + 16, shuchusen2, 0 );
setEffRotateKey( spep_5 + 18, shuchusen2, 180 );
setEffRotateKey( spep_5 + 20, shuchusen2, 0 );
setEffRotateKey( spep_5 + 22, shuchusen2, 180 );
setEffRotateKey( spep_5 + 24, shuchusen2, 0 );
setEffRotateKey( spep_5 + 26, shuchusen2, 180 );
setEffRotateKey( spep_5 + 28, shuchusen2, 0 );
setEffRotateKey( spep_5 + 30, shuchusen2, 180 );
setEffRotateKey( spep_5 + 32, shuchusen2, 0 );
setEffRotateKey( spep_5 + 34, shuchusen2, 180 );
setEffRotateKey( spep_5 + 36, shuchusen2, 0 );
setEffRotateKey( spep_5 + 38, shuchusen2, 180 );
setEffRotateKey( spep_5 + 40, shuchusen2, 0 );
setEffRotateKey( spep_5 + 42, shuchusen2, 180 );
setEffRotateKey( spep_5 + 44, shuchusen2, 0 );
setEffRotateKey( spep_5 + 46, shuchusen2, 180 );
setEffRotateKey( spep_5 + 48, shuchusen2, 0 );
setEffRotateKey( spep_5 + 50, shuchusen2, 180 );
setEffRotateKey( spep_5 + 52, shuchusen2, 0 );
setEffRotateKey( spep_5 + 54, shuchusen2, 180 );
setEffRotateKey( spep_5 + 56, shuchusen2, 0 );
setEffRotateKey( spep_5 + 58, shuchusen2, 180 );
setEffRotateKey( spep_5 + 60, shuchusen2, 0 );
setEffRotateKey( spep_5 + 62, shuchusen2, 180 );
setEffRotateKey( spep_5 + 64, shuchusen2, 0 );
setEffRotateKey( spep_5 + 66, shuchusen2, 180 );
setEffRotateKey( spep_5 + 68, shuchusen2, 0 );
setEffRotateKey( spep_5 + 70, shuchusen2, 180 );
setEffRotateKey( spep_5 + 72, shuchusen2, 0 );
setEffRotateKey( spep_5 + 74, shuchusen2, 180 );
setEffRotateKey( spep_5 + 76, shuchusen2, 0 );
setEffRotateKey( spep_5 + 78, shuchusen2, 180 );
setEffRotateKey( spep_5 + 80, shuchusen2, 0 );
setEffRotateKey( spep_5 + 82, shuchusen2, 180 );
setEffRotateKey( spep_5 + 84, shuchusen2, 0 );
setEffRotateKey( spep_5 + 86, shuchusen2, 180 );
setEffRotateKey( spep_5 + 88, shuchusen2, 0 );
setEffRotateKey( spep_5 + 90, shuchusen2, 180 );
setEffRotateKey( spep_5 + 92, shuchusen2, 0 );
setEffRotateKey( spep_5 + 94, shuchusen2, 180 );
setEffRotateKey( spep_5 + 96, shuchusen2, 0 );
setEffRotateKey( spep_5 + 98, shuchusen2, 180 );
setEffRotateKey( spep_5 + 100, shuchusen2, 0 );

setEffRotateKey( spep_5 + 0, shuchusen2, 0 );
setEffRotateKey( spep_5 + 100, shuchusen2, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen2, 135 );
setEffAlphaKey( spep_5 + 100, shuchusen2, 135 );

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_5 + 88, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 100, 0, 0, 0, 0, 180 );  --薄い黒　背景
entryFadeBg( spep_5 + 22, 8, 70, 0, 0, 0, 0, 255 );  --黒フェード　背景

-- ** 音 ** --
playSe( spep_5 + 18, SE_04 );  --カットイン

-- ** 次の準備 ** --
spep_6 = spep_5 + 100;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
--[[speff2 = entryEffectLife( spep_6 + 0, 1507, 90, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え]]

-- ** 極限用に調整 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_6, SE_05);
speff = entryEffect( spep_6, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_6, SE_05);
speff = entryEffect( spep_6, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_6, SE_05);
speff = entryEffect( spep_6, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_6 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen3, 88, 20 );

setEffMoveKey( spep_6 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_6 + 90, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_6 + 90, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_6 + 0, shuchusen3, 0 );
setEffRotateKey( spep_6 + 90, shuchusen3, 0 );

setEffAlphaKey( spep_6 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_6 + 90, shuchusen3, 255 );

-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_6 + 76, 10, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
--playSe( spep_6 + 0, SE_05 ); --カットイン

-- ** 次の準備 ** --
spep_7 = spep_6 + 94;

------------------------------------------------------
-- 発射(72F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_7 + 0, SP_07, 72, 0x100, -1, 0, 0, 0 );  --発射(ef_007)
setEffMoveKey( spep_7 + 0, hassha, 0, 0, 0 );
setEffMoveKey( spep_7 + 72, hassha, 0, 0, 0 );

setEffScaleKey( spep_7 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_7 + 72, hassha, 1.0, 1.0 );

setEffRotateKey( spep_7 + 0, hassha, 0 );
setEffRotateKey( spep_7 + 72, hassha, 0 );

setEffAlphaKey( spep_7 + 0, hassha, 255 );
setEffAlphaKey( spep_7 + 72, hassha, 255 );

-- ** 流線 ** --
ryusen3 = entryEffectLife( spep_7 + 0, 921, 72, 0x80, -1, 0, -32.6, -7 );
setEffMoveKey( spep_7 + 0, ryusen3, -32.6, -7 , 0 );
setEffMoveKey( spep_7 + 72, ryusen3, -32.6, -7 , 0 );

setEffScaleKey( spep_7 + 0, ryusen3, 1.51, 1.15 );
setEffScaleKey( spep_7 + 72, ryusen3, 1.51, 1.15 );

setEffRotateKey( spep_7 + 0, ryusen3, -115.3 );
setEffRotateKey( spep_7 + 72, ryusen3, -115.3 );

setEffAlphaKey( spep_7 + 0, ryusen3, 255 );
setEffAlphaKey( spep_7 + 72, ryusen3, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 72, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_7 + 60, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_7 + 5, 1022); --発射

-- ** 次の準備 ** --
spep_8 = spep_7 + 72;

------------------------------------------------------
-- 爆発(115F)
------------------------------------------------------

-- ** エフェクト等 ** --
bakuha = entryEffect( spep_8 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --爆発(ef_008)
setEffMoveKey( spep_8 + 0, bakuha, 0, 0, 0 );
setEffMoveKey( spep_8 + 115, bakuha, 0, 0, 0 );

setEffScaleKey( spep_8 + 0, bakuha, 1.0, 1.0 );
setEffScaleKey( spep_8 + 115, bakuha, 1.0, 1.0 );

setEffRotateKey( spep_8 + 0, bakuha, 0 );
setEffRotateKey( spep_8 + 115, bakuha, 0 );

setEffAlphaKey( spep_8 + 0, bakuha, 255 );
setEffAlphaKey( spep_8 + 115, bakuha, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_8 + 0, 906, 113, 0x100, -1, 0, 366.6, 0 );
setEffMoveKey( spep_8 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_8 + 113, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_8 + 0, shuchusen3, 2.5, 2.5 );
setEffScaleKey( spep_8 + 113, shuchusen3, 2.5, 2.5 );

setEffRotateKey( spep_8 + 0, shuchusen3, 180 );
setEffRotateKey( spep_8 + 2, shuchusen3, 0 );
setEffRotateKey( spep_8 + 4, shuchusen3, 180 );
setEffRotateKey( spep_8 + 6, shuchusen3, 0 );
setEffRotateKey( spep_8 + 8, shuchusen3, 180 );
setEffRotateKey( spep_8 + 10, shuchusen3, 0 );
setEffRotateKey( spep_8 + 12, shuchusen3, 180 );
setEffRotateKey( spep_8 + 14, shuchusen3, 0 );
setEffRotateKey( spep_8 + 16, shuchusen3, 180 );
setEffRotateKey( spep_8 + 18, shuchusen3, 0 );
setEffRotateKey( spep_8 + 20, shuchusen3, 180 );
setEffRotateKey( spep_8 + 22, shuchusen3, 0 );
setEffRotateKey( spep_8 + 24, shuchusen3, 180 );
setEffRotateKey( spep_8 + 26, shuchusen3, 0 );
setEffRotateKey( spep_8 + 28, shuchusen3, 180 );
setEffRotateKey( spep_8 + 30, shuchusen3, 0 );
setEffRotateKey( spep_8 + 32, shuchusen3, 180 );
setEffRotateKey( spep_8 + 34, shuchusen3, 0 );
setEffRotateKey( spep_8 + 36, shuchusen3, 180 );
setEffRotateKey( spep_8 + 38, shuchusen3, 0 );
setEffRotateKey( spep_8 + 40, shuchusen3, 180 );
setEffRotateKey( spep_8 + 42, shuchusen3, 0 );
setEffRotateKey( spep_8 + 44, shuchusen3, 180 );
setEffRotateKey( spep_8 + 46, shuchusen3, 0 );
setEffRotateKey( spep_8 + 48, shuchusen3, 180 );
setEffRotateKey( spep_8 + 50, shuchusen3, 0 );
setEffRotateKey( spep_8 + 52, shuchusen3, 180 );
setEffRotateKey( spep_8 + 54, shuchusen3, 0 );
setEffRotateKey( spep_8 + 56, shuchusen3, 180 );
setEffRotateKey( spep_8 + 58, shuchusen3, 0 );
setEffRotateKey( spep_8 + 60, shuchusen3, 180 );
setEffRotateKey( spep_8 + 62, shuchusen3, 0 );
setEffRotateKey( spep_8 + 64, shuchusen3, 180 );
setEffRotateKey( spep_8 + 66, shuchusen3, 0 );
setEffRotateKey( spep_8 + 68, shuchusen3, 180 );
setEffRotateKey( spep_8 + 70, shuchusen3, 0 );
setEffRotateKey( spep_8 + 72, shuchusen3, 180 );
setEffRotateKey( spep_8 + 74, shuchusen3, 0 );
setEffRotateKey( spep_8 + 76, shuchusen3, 180 );
setEffRotateKey( spep_8 + 78, shuchusen3, 0 );
setEffRotateKey( spep_8 + 80, shuchusen3, 180 );
setEffRotateKey( spep_8 + 82, shuchusen3, 0 );
setEffRotateKey( spep_8 + 84, shuchusen3, 180 );
setEffRotateKey( spep_8 + 86, shuchusen3, 0 );
setEffRotateKey( spep_8 + 88, shuchusen3, 180 );
setEffRotateKey( spep_8 + 90, shuchusen3, 0 );
setEffRotateKey( spep_8 + 92, shuchusen3, 180 );
setEffRotateKey( spep_8 + 94, shuchusen3, 0 );
setEffRotateKey( spep_8 + 96, shuchusen3, 180 );
setEffRotateKey( spep_8 + 98, shuchusen3, 0 );
setEffRotateKey( spep_8 + 100, shuchusen3, 180 );
setEffRotateKey( spep_8 + 102, shuchusen3, 0 );
setEffRotateKey( spep_8 + 104, shuchusen3, 180 );
setEffRotateKey( spep_8 + 106, shuchusen3, 0 );
setEffRotateKey( spep_8 + 108, shuchusen3, 180 );
setEffRotateKey( spep_8 + 110, shuchusen3, 0 );
setEffRotateKey( spep_8 + 112, shuchusen3, 180 );
setEffRotateKey( spep_8 + 113, shuchusen3, 0 );

setEffRotateKey( spep_8 + 0, shuchusen3, 0 );
setEffRotateKey( spep_8 + 113, shuchusen3, 0 );

setEffAlphaKey( spep_8 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_8 + 113, shuchusen3, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 116, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_8 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_8 + 35, 1024) --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_8 + 39 -12 );
endPhase( spep_8 + 110 );

end