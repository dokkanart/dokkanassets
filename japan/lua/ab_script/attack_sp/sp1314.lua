--ランチ_マシンガン

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
SP_01 = 153852; --アイドリング～横ダッシュ
SP_02 = 153872; --背景
SP_03 = 153853; --敵に近づく～蹴り飛ばし
SP_04 = 153854; --背景
SP_05 = 153855; --銃を構える
SP_06 = 153856; --乱射する
SP_07 = 153857; --ヒット
SP_08 = 153858; --背景
SP_09 = 153873; --背景

--敵側
SP_01r = 153868; --アイドリング〜横ダッシュ
SP_03r = 153869; --的に近づく〜蹴り飛ばし
SP_05r = 153870; --銃を構える
SP_06r = 153871; --乱射する

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
-- アイドリング～横ダッシュ(52F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
idlingf = entryEffectLife( spep_0 + 0, SP_01, 50, 0x100, -1, 0, 0, 0 );  --アイドリング～横ダッシュ(ef_001)
setEffMoveKey( spep_0 + 0, idlingf, 0, 0, 0 );
setEffMoveKey( spep_0 + 50, idlingf, 0, 0, 0 );

setEffScaleKey( spep_0 + 0, idlingf, 1.0, 1.0 );
setEffScaleKey( spep_0 + 50, idlingf, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, idlingf, 0 );
setEffRotateKey( spep_0 + 50, idlingf, 0 );

setEffAlphaKey( spep_0 + 0, idlingf, 255 );
setEffAlphaKey( spep_0 + 50, idlingf, 255 );

idlingb = entryEffectLife( spep_0 + 0, SP_02, 50, 0x80, -1, 0, 0, 0 );  --背景(ef_002)
setEffMoveKey( spep_0 + 0, idlingb, 0, 0, 0 );
setEffMoveKey( spep_0 + 50, idlingb, 0, 0, 0 );

setEffScaleKey( spep_0 + 0, idlingb, 1.0, 1.0 );
setEffScaleKey( spep_0 + 50, idlingb, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, idlingb, 0 );
setEffRotateKey( spep_0 + 50, idlingb, 0 );

setEffAlphaKey( spep_0 + 0, idlingb, 255 );
setEffAlphaKey( spep_0 + 50, idlingb, 255 );

-- ** 流線** --
ryusen1 = entryEffectLife( spep_0 + 30, 914, 20, 0x80, -1, 0, -284.6, 0 );
setEffMoveKey( spep_0 + 30, ryusen1, -284.6, 0, 0 );
setEffMoveKey( spep_0 + 32, ryusen1, -567.5, 0, 0 );
setEffMoveKey( spep_0 + 34, ryusen1, -850.4, 0, 0 );
setEffMoveKey( spep_0 + 40, ryusen1, -850.4, 0, 0 );

setEffScaleKey( spep_0 + 30, ryusen1, 3.33, 2.49 );
setEffScaleKey( spep_0 + 40, ryusen1, 3.33, 2.49 );

setEffRotateKey( spep_0 + 30, ryusen1, 0 );
setEffRotateKey( spep_0 + 40, ryusen1, 0 );

setEffAlphaKey( spep_0 + 30, ryusen1, 64 );
setEffAlphaKey( spep_0 + 32, ryusen1, 128 );
setEffAlphaKey( spep_0 + 34, ryusen1, 191 );
setEffAlphaKey( spep_0 + 40, ryusen1, 222 );

-- ** 音 ** --
playSe( spep_0 + 15, 4 );  --ダッシュ

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 52, 0, 0, 0, 0, 255 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

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

-- ** 流線** --
setEffMoveKey( spep_0 + 41, ryusen1, -1133.3, 0, 0 );
setEffMoveKey( spep_0 + 44, ryusen1, -1416.1, 0, 0 );
setEffMoveKey( spep_0 + 46, ryusen1, -1.7, 0, 0 );
setEffMoveKey( spep_0 + 48, ryusen1, -284.6, 0, 0 );
setEffMoveKey( spep_0 + 50, ryusen1, -567.5, 0, 0 );

setEffScaleKey( spep_0 + 41, ryusen1, 3.33, 2.49 );
setEffScaleKey( spep_0 + 50, ryusen1, 3.33, 2.49 );

setEffRotateKey( spep_0 + 41, ryusen1, 0 );
setEffRotateKey( spep_0 + 50, ryusen1, 0 );

setEffAlphaKey( spep_0 + 41, ryusen1, 228 );
setEffAlphaKey( spep_0 + 50, ryusen1, 255 );

-- ** 白フェード ** --
entryFade( spep_0 + 42, 6, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 52;

------------------------------------------------------
-- 敵に近づく～蹴り飛ばし(144F)
------------------------------------------------------

-- ** エフェクト等 ** --
kickf = entryEffectLife( spep_1 + 0, SP_03, 142, 0x100, -1, 0, 0, 0 );  --敵に近づく～蹴り飛ばし(ef_003)
setEffMoveKey( spep_1 + 0, kickf, 0, 0, 0 );
setEffMoveKey( spep_1 + 142, kickf, 0, 0, 0 );

setEffScaleKey( spep_1 + 0, kickf, 1.0, 1.0 );
setEffScaleKey( spep_1 + 142, kickf, 1.0, 1.0 );

setEffRotateKey( spep_1 + 0, kickf, 0 );
setEffRotateKey( spep_1 + 142, kickf, 0 );

setEffAlphaKey( spep_1 + 0, kickf, 255 );
setEffAlphaKey( spep_1 + 142, kickf, 255 );

kickb = entryEffectLife( spep_1 + 0, SP_04, 142, 0x80, -1, 0, 0, 0 );  --背景(ef_004)
setEffMoveKey( spep_1 + 0, kickb, 0, 0, 0 );
setEffMoveKey( spep_1 + 142, kickb, 0, 0, 0 );

setEffScaleKey( spep_1 + 0, kickb, 1.0, 1.0 );
setEffScaleKey( spep_1 + 142, kickb, 1.0, 1.0 );

setEffRotateKey( spep_1 + 0, kickb, 0 );
setEffRotateKey( spep_1 + 142, kickb, 0 );

setEffAlphaKey( spep_1 + 0, kickb, 255 );
setEffAlphaKey( spep_1 + 142, kickb, 255 );

-- ** 敵の動き ** --
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1 + 17, 1, 106 );
changeAnime( spep_1 + 89, 1, 108 );

setMoveKey( spep_1 + 0, 1, 13.9, 14 , 0 );
setMoveKey( spep_1 + 16, 1, 13.9, 14 , 0 );
setMoveKey( spep_1 + 17, 1, 2, 32.7 , 0 );
setMoveKey( spep_1 + 19, 1, -35.4, 32.1 , 0 );
setMoveKey( spep_1 + 21, 1, 28.5, 65 , 0 );
setMoveKey( spep_1 + 23, 1, -27.2, 55.3 , 0 );
setMoveKey( spep_1 + 25, 1, 16.6, 54.9 , 0 );
setMoveKey( spep_1 + 27, 1, 9.4, 109.3 , 0 );
setMoveKey( spep_1 + 29, 1, 160.8, 289 , 0 );
setMoveKey( spep_1 + 31, 1, 215.7, 307.1 , 0 );
setMoveKey( spep_1 + 33, 1, 222.1, 310.5 , 0 );
setMoveKey( spep_1 + 35, 1, 228.5, 312.3 , 0 );
setMoveKey( spep_1 + 37, 1, 234.4, 313.9 , 0 );
setMoveKey( spep_1 + 39, 1, 269, 333.4 , 0 );
setMoveKey( spep_1 + 41, 1, 290.4, 345.5 , 0 );
setMoveKey( spep_1 + 43, 1, 303.7, 353.1 , 0 );
setMoveKey( spep_1 + 45, 1, 312.9, 358.2 , 0 );
setMoveKey( spep_1 + 47, 1, 319.3, 361.9 , 0 );
setMoveKey( spep_1 + 49, 1, 323.6, 364.3 , 0 );
setMoveKey( spep_1 + 51, 1, 326.1, 365.7 , 0 );
setMoveKey( spep_1 + 53, 1, 326.9, 366 , 0 );
setMoveKey( spep_1 + 55, 1, 329.1, 366.4 , 0 );
setMoveKey( spep_1 + 57, 1, 332.3, 367 , 0 );
setMoveKey( spep_1 + 59, 1, 336.4, 367.9 , 0 );
setMoveKey( spep_1 + 61, 1, 341.3, 368.8 , 0 );
setMoveKey( spep_1 + 63, 1, 347.8, 370.1 , 0 );
setMoveKey( spep_1 + 65, 1, 339.5, 363.8 , 0 );
setMoveKey( spep_1 + 67, 1, 331.2, 357.5 , 0 );
setMoveKey( spep_1 + 69, 1, 322.9, 351.2 , 0 );
setMoveKey( spep_1 + 71, 1, 305, 337.1 , 0 );
setMoveKey( spep_1 + 73, 1, 287.1, 322.9 , 0 );
setMoveKey( spep_1 + 75, 1, 269.2, 308.8 , 0 );
setMoveKey( spep_1 + 77, 1, 251.2, 294.7 , 0 );
setMoveKey( spep_1 + 79, 1, 235.4, 278.9 , 0 );
setMoveKey( spep_1 + 81, 1, 215.4, 258.9 , 0 );
setMoveKey( spep_1 + 83, 1, 186.6, 230.2 , 0 );
setMoveKey( spep_1 + 85, 1, 150.3, 194.1 , 0 );
setMoveKey( spep_1 + 88, 1, 94.3, 138.2 , 0 );
setMoveKey( spep_1 + 89, 1, 108.6, 71.2 , 0 );
setMoveKey( spep_1 + 91, 1, 136.7, 46.3 , 0 );
setMoveKey( spep_1 + 93, 1, 102.7, 58.1 , 0 );
setMoveKey( spep_1 + 95, 1, 113.6, 71.2 , 0 );
setMoveKey( spep_1 + 97, 1, 145.1, 43.1 , 0 );
setMoveKey( spep_1 + 99, 1, 106.6, 56.4 , 0 );
setMoveKey( spep_1 + 101, 1, 118.7, 71.2 , 0 );
setMoveKey( spep_1 + 103, 1, 205, 71.1 , 0 );
setMoveKey( spep_1 + 105, 1, 291.4, 71.1 , 0 );
setMoveKey( spep_1 + 107, 1, 377.7, 71.1 , 0 );
setMoveKey( spep_1 + 109, 1, 464.1, 71.1 , 0 );
setMoveKey( spep_1 + 111, 1, 550.4, 71.1 , 0 );
setMoveKey( spep_1 + 113, 1, 636.8, 71.1 , 0 );
setMoveKey( spep_1 + 115, 1, 723.1, 71.1 , 0 );
setMoveKey( spep_1 + 117, 1, 809.5, 71.1 , 0 );
setMoveKey( spep_1 + 119, 1, 895.8, 71.1 , 0 );
setMoveKey( spep_1 + 121, 1, 982.2, 71.1 , 0 );
setMoveKey( spep_1 + 123, 1, 1068.6, 71.1 , 0 );
setMoveKey( spep_1 + 125, 1, 1154.9, 71.1 , 0 );
setMoveKey( spep_1 + 127, 1, 1241.3, 71.1 , 0 );
setMoveKey( spep_1 + 129, 1, 1327.6, 71.1 , 0 );
setMoveKey( spep_1 + 131, 1, 1414, 71.1 , 0 );
setMoveKey( spep_1 + 133, 1, 1500.3, 71.1 , 0 );
setMoveKey( spep_1 + 135, 1, 1586.7, 71.1 , 0 );
setMoveKey( spep_1 + 137, 1, 1673, 71.1 , 0 );
setMoveKey( spep_1 + 139, 1, 1759.4, 71.1 , 0 );
setMoveKey( spep_1 + 141, 1, 1845.8, 71.1 , 0 );
setMoveKey( spep_1 + 142, 1, 1845.8, 71.1 , 0 );

setScaleKey( spep_1 + 0, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 16, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 17, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 19, 1, 1.37, 1.37 );
setScaleKey( spep_1 + 21, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 23, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 25, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 27, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 29, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 31, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 33, 1, 1.4, 1.4 );
setScaleKey( spep_1 + 35, 1, 1.4, 1.4 );
setScaleKey( spep_1 + 37, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 39, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 41, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 43, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 45, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 47, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 59, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 61, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 77, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 79, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 81, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 83, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 85, 1, 1.4, 1.4 );
setScaleKey( spep_1 + 88, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 89, 1, 1.4, 1.4 );
setScaleKey( spep_1 + 91, 1, 1.46, 1.46 );
setScaleKey( spep_1 + 93, 1, 1.52, 1.52 );
setScaleKey( spep_1 + 95, 1, 1.58, 1.58 );
setScaleKey( spep_1 + 101, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 142, 1, 1.47, 1.47 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 16, 1, 0 );
setRotateKey( spep_1 + 17, 1, -70 );
setRotateKey( spep_1 + 19, 1, -64.9 );
setRotateKey( spep_1 + 21, 1, -59.9 );
setRotateKey( spep_1 + 23, 1, -54.7 );
setRotateKey( spep_1 + 25, 1, -48.9 );
setRotateKey( spep_1 + 27, 1, -42.9 );
setRotateKey( spep_1 + 29, 1, -37 );
setRotateKey( spep_1 + 31, 1, -35.9 );
setRotateKey( spep_1 + 33, 1, -35.1 );
setRotateKey( spep_1 + 35, 1, -34.8 );
setRotateKey( spep_1 + 37, 1, -34.5 );
setRotateKey( spep_1 + 39, 1, -29.4 );
setRotateKey( spep_1 + 41, 1, -26.2 );
setRotateKey( spep_1 + 43, 1, -24.2 );
setRotateKey( spep_1 + 45, 1, -22.9 );
setRotateKey( spep_1 + 47, 1, -21.9 );
setRotateKey( spep_1 + 49, 1, -21.3 );
setRotateKey( spep_1 + 51, 1, -20.9 );
setRotateKey( spep_1 + 53, 1, -20.8 );
setRotateKey( spep_1 + 55, 1, -20.5 );
setRotateKey( spep_1 + 57, 1, -19.9 );
setRotateKey( spep_1 + 59, 1, -19.3 );
setRotateKey( spep_1 + 61, 1, -18.5 );
setRotateKey( spep_1 + 63, 1, -17.5 );
setRotateKey( spep_1 + 65, 1, -16.9 );
setRotateKey( spep_1 + 67, 1, -16.4 );
setRotateKey( spep_1 + 69, 1, -15.8 );
setRotateKey( spep_1 + 71, 1, -14.9 );
setRotateKey( spep_1 + 73, 1, -14.1 );
setRotateKey( spep_1 + 75, 1, -13.2 );
setRotateKey( spep_1 + 77, 1, -12.3 );
setRotateKey( spep_1 + 79, 1, -12.4 );
setRotateKey( spep_1 + 81, 1, -12.5 );
setRotateKey( spep_1 + 83, 1, -12.5 );
setRotateKey( spep_1 + 85, 1, -12.6 );
setRotateKey( spep_1 + 88, 1, -12.8 );
setRotateKey( spep_1 + 101, 1, -16.3 );
setRotateKey( spep_1 + 103, 1, -15 );
setRotateKey( spep_1 + 105, 1, -13.7 );
setRotateKey( spep_1 + 107, 1, -12.4 );
setRotateKey( spep_1 + 109, 1, -11.1 );
setRotateKey( spep_1 + 111, 1, -9.8 );
setRotateKey( spep_1 + 113, 1, -8.5 );
setRotateKey( spep_1 + 115, 1, -7.2 );
setRotateKey( spep_1 + 117, 1, -5.9 );
setRotateKey( spep_1 + 119, 1, -4.6 );
setRotateKey( spep_1 + 121, 1, -3.3 );
setRotateKey( spep_1 + 123, 1, -2 );
setRotateKey( spep_1 + 125, 1, -0.7 );
setRotateKey( spep_1 + 127, 1, 0.6 );
setRotateKey( spep_1 + 129, 1, 1.9 );
setRotateKey( spep_1 + 131, 1, 3.2 );
setRotateKey( spep_1 + 133, 1, 4.5 );
setRotateKey( spep_1 + 135, 1, 5.8 );
setRotateKey( spep_1 + 137, 1, 7.1 );
setRotateKey( spep_1 + 139, 1, 8.4 );
setRotateKey( spep_1 + 141, 1, 9.7 );
setRotateKey( spep_1 + 142, 1, 9.7 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1 + 17, 906, 20, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 17, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 37, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 17, shuchusen1, 1.5, 1.5 );
setEffScaleKey( spep_1 + 37, shuchusen1, 1.5, 1.5 );

setEffRotateKey( spep_1 + 17, shuchusen1, 180 );
setEffRotateKey( spep_1 + 19, shuchusen1, 0 );
setEffRotateKey( spep_1 + 21, shuchusen1, 180 );
setEffRotateKey( spep_1 + 23, shuchusen1, 0 );
setEffRotateKey( spep_1 + 25, shuchusen1, 180 );
setEffRotateKey( spep_1 + 27, shuchusen1, 0 );
setEffRotateKey( spep_1 + 29, shuchusen1, 180 );
setEffRotateKey( spep_1 + 31, shuchusen1, 0 );
setEffRotateKey( spep_1 + 33, shuchusen1, 180 );
setEffRotateKey( spep_1 + 35, shuchusen1, 0 );
setEffRotateKey( spep_1 + 37, shuchusen1, 180 );

setEffAlphaKey( spep_1 + 17, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 37, shuchusen1, 255 );

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_1 + 64, 914, 78, 0x80, -1, 0, -171, 0 );
setEffMoveKey( spep_1 + 64, ryusen2, -171, 0, 0 );
setEffMoveKey( spep_1 + 66, ryusen2, -341, 0, 0 );
setEffMoveKey( spep_1 + 68, ryusen2, -511, 0, 0 );
setEffMoveKey( spep_1 + 70, ryusen2, -681, 0, 0 );
setEffMoveKey( spep_1 + 72, ryusen2, -851, 0, 0 );
setEffMoveKey( spep_1 + 74, ryusen2, -1, 0, 0 );
setEffMoveKey( spep_1 + 76, ryusen2, -171, 0, 0 );
setEffMoveKey( spep_1 + 78, ryusen2, -341, 0, 0 );
setEffMoveKey( spep_1 + 80, ryusen2, -511, 0, 0 );
setEffMoveKey( spep_1 + 82, ryusen2, -681, 0, 0 );
setEffMoveKey( spep_1 + 84, ryusen2, -851, 0, 0 );
setEffMoveKey( spep_1 + 86, ryusen2, -1, 0, 0 );
setEffMoveKey( spep_1 + 88, ryusen2, -171, 0, 0 );
setEffMoveKey( spep_1 + 90, ryusen2, -341, 0, 0 );
setEffMoveKey( spep_1 + 92, ryusen2, -511, 0, 0 );
setEffMoveKey( spep_1 + 94, ryusen2, -681, 0, 0 );
setEffMoveKey( spep_1 + 96, ryusen2, -851, 0, 0 );
setEffMoveKey( spep_1 + 98, ryusen2, -1, 0, 0 );
setEffMoveKey( spep_1 + 100, ryusen2, -171, 0, 0 );
setEffMoveKey( spep_1 + 102, ryusen2, -341, 0, 0 );
setEffMoveKey( spep_1 + 104, ryusen2, -511, 0, 0 );
setEffMoveKey( spep_1 + 106, ryusen2, -681, 0, 0 );
setEffMoveKey( spep_1 + 108, ryusen2, -851, 0, 0 );
setEffMoveKey( spep_1 + 110, ryusen2, -1, 0, 0 );
setEffMoveKey( spep_1 + 112, ryusen2, -171, 0, 0 );
setEffMoveKey( spep_1 + 114, ryusen2, -341, 0, 0 );
setEffMoveKey( spep_1 + 116, ryusen2, -511, 0, 0 );
setEffMoveKey( spep_1 + 118, ryusen2, -681, 0, 0 );
setEffMoveKey( spep_1 + 120, ryusen2, -851, 0, 0 );
setEffMoveKey( spep_1 + 122, ryusen2, -1, 0, 0 );
setEffMoveKey( spep_1 + 124, ryusen2, -171, 0, 0 );
setEffMoveKey( spep_1 + 126, ryusen2, -341, 0, 0 );
setEffMoveKey( spep_1 + 128, ryusen2, -511, 0, 0 );
setEffMoveKey( spep_1 + 130, ryusen2, -681, 0, 0 );
setEffMoveKey( spep_1 + 132, ryusen2, -851, 0, 0 );
setEffMoveKey( spep_1 + 134, ryusen2, -1, 0, 0 );
setEffMoveKey( spep_1 + 136, ryusen2, -171, 0, 0 );
setEffMoveKey( spep_1 + 138, ryusen2, -341, 0, 0 );
setEffMoveKey( spep_1 + 140, ryusen2, -511, 0, 0 );
setEffMoveKey( spep_1 + 142, ryusen2, -681, 0, 0 );

setEffScaleKey( spep_1 + 64, ryusen2, 3, 1 );
setEffScaleKey( spep_1 + 142, ryusen2, 3, 1 );

setEffRotateKey( spep_1 + 64, ryusen2, 0 );
setEffRotateKey( spep_1 + 142, ryusen2, 0 );

setEffAlphaKey( spep_1 + 64, ryusen2, 128 );
setEffAlphaKey( spep_1 + 66, ryusen2, 255 );
setEffAlphaKey( spep_1 + 142, ryusen2, 255 );

ryusen3 = entryEffectLife( spep_1 + 64, 914, 78, 0x80, -1, 0, 681, 0 );
setEffMoveKey( spep_1 + 64, ryusen3, 681, 0 , 0 );
setEffMoveKey( spep_1 + 66, ryusen3, 511, 0 , 0 );
setEffMoveKey( spep_1 + 68, ryusen3, 341, 0 , 0 );
setEffMoveKey( spep_1 + 70, ryusen3, 171, 0 , 0 );
setEffMoveKey( spep_1 + 72, ryusen3, 1, 0 , 0 );
setEffMoveKey( spep_1 + 74, ryusen3, 851, 0 , 0 );
setEffMoveKey( spep_1 + 76, ryusen3, 681, 0 , 0 );
setEffMoveKey( spep_1 + 78, ryusen3, 511, 0 , 0 );
setEffMoveKey( spep_1 + 80, ryusen3, 341, 0 , 0 );
setEffMoveKey( spep_1 + 82, ryusen3, 171, 0 , 0 );
setEffMoveKey( spep_1 + 84, ryusen3, 1, 0 , 0 );
setEffMoveKey( spep_1 + 86, ryusen3, 851, 0 , 0 );
setEffMoveKey( spep_1 + 88, ryusen3, 681, 0 , 0 );
setEffMoveKey( spep_1 + 90, ryusen3, 511, 0 , 0 );
setEffMoveKey( spep_1 + 92, ryusen3, 341, 0 , 0 );
setEffMoveKey( spep_1 + 94, ryusen3, 171, 0 , 0 );
setEffMoveKey( spep_1 + 96, ryusen3, 1, 0 , 0 );
setEffMoveKey( spep_1 + 98, ryusen3, 851, 0 , 0 );
setEffMoveKey( spep_1 + 100, ryusen3, 681, 0 , 0 );
setEffMoveKey( spep_1 + 102, ryusen3, 511, 0 , 0 );
setEffMoveKey( spep_1 + 104, ryusen3, 341, 0 , 0 );
setEffMoveKey( spep_1 + 106, ryusen3, 171, 0 , 0 );
setEffMoveKey( spep_1 + 108, ryusen3, 1, 0 , 0 );
setEffMoveKey( spep_1 + 110, ryusen3, 851, 0 , 0 );
setEffMoveKey( spep_1 + 112, ryusen3, 681, 0 , 0 );
setEffMoveKey( spep_1 + 114, ryusen3, 511, 0 , 0 );
setEffMoveKey( spep_1 + 116, ryusen3, 341, 0 , 0 );
setEffMoveKey( spep_1 + 118, ryusen3, 171, 0 , 0 );
setEffMoveKey( spep_1 + 120, ryusen3, 1, 0 , 0 );
setEffMoveKey( spep_1 + 122, ryusen3, 851, 0 , 0 );
setEffMoveKey( spep_1 + 124, ryusen3, 681, 0 , 0 );
setEffMoveKey( spep_1 + 126, ryusen3, 511, 0 , 0 );
setEffMoveKey( spep_1 + 128, ryusen3, 341, 0 , 0 );
setEffMoveKey( spep_1 + 130, ryusen3, 171, 0 , 0 );
setEffMoveKey( spep_1 + 132, ryusen3, 1, 0 , 0 );
setEffMoveKey( spep_1 + 134, ryusen3, 851, 0 , 0 );
setEffMoveKey( spep_1 + 136, ryusen3, 681, 0 , 0 );
setEffMoveKey( spep_1 + 138, ryusen3, 511, 0 , 0 );
setEffMoveKey( spep_1 + 140, ryusen3, 341, 0 , 0 );
setEffMoveKey( spep_1 + 142, ryusen3, 171, 0 , 0 );

setEffScaleKey( spep_1 + 64, ryusen3, 3, 1 );
setEffScaleKey( spep_1 + 142, ryusen3, 3, 1 );

setEffRotateKey( spep_1 + 64, ryusen3, 0 );
setEffRotateKey( spep_1 + 142, ryusen3, 0 );

setEffAlphaKey( spep_1 + 64, ryusen3, 128 );
setEffAlphaKey( spep_1 + 66, ryusen3, 255 );
setEffAlphaKey( spep_1 + 142, ryusen3, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_1 + 17, 10005, 20, 0x100, -1, 0, 71, 292.2 ); --ガッ
setEffMoveKey( spep_1 + 17, ctga, 71, 292.2 , 0 );
setEffMoveKey( spep_1 + 19, ctga, 66.5, 298.9 , 0 );
setEffMoveKey( spep_1 + 21, ctga, 72.7, 287.9 , 0 );
setEffMoveKey( spep_1 + 23, ctga, 72.7, 287.9 , 0 );
setEffMoveKey( spep_1 + 25, ctga, 65.9, 299.2 , 0 );
setEffMoveKey( spep_1 + 27, ctga, 72.7, 287.9 , 0 );
setEffMoveKey( spep_1 + 29, ctga, 72.7, 287.9 , 0 );
setEffMoveKey( spep_1 + 31, ctga, 65.9, 299.2 , 0 );
setEffMoveKey( spep_1 + 33, ctga, 72.7, 287.9 , 0 );
setEffMoveKey( spep_1 + 37, ctga, 72.7, 287.9 , 0 );

setEffScaleKey( spep_1 + 17, ctga, 0.74, 0.74 );
setEffScaleKey( spep_1 + 19, ctga, 1.04, 1.04 );
setEffScaleKey( spep_1 + 21, ctga, 1.35, 1.35 );
setEffScaleKey( spep_1 + 37, ctga, 1.35, 1.35 );

setEffRotateKey( spep_1 + 17, ctga, -7 );
setEffRotateKey( spep_1 + 37, ctga, -7 );

setEffAlphaKey( spep_1 + 17, ctga, 255 );
setEffAlphaKey( spep_1 + 33, ctga, 255 );
setEffAlphaKey( spep_1 + 35, ctga, 128 );
setEffAlphaKey( spep_1 + 37, ctga, 0 );

ctbaki = entryEffectLife( spep_1 + 91, 10020, 18, 0x100, -1, 0, 30.5, 284.6 ); --バキッ
setEffMoveKey( spep_1 + 91, ctbaki, 30.5, 284.6 , 0 );
setEffMoveKey( spep_1 + 93, ctbaki, 34.8, 274.3 , 0 );
setEffMoveKey( spep_1 + 95, ctbaki, 35.2, 272.9 , 0 );
setEffMoveKey( spep_1 + 97, ctbaki, 29.8, 285.2 , 0 );
setEffMoveKey( spep_1 + 99, ctbaki, 35.2, 272.9 , 0 );
setEffMoveKey( spep_1 + 101, ctbaki, 35.2, 272.9 , 0 );
setEffMoveKey( spep_1 + 103, ctbaki, 29.8, 285.2 , 0 );
setEffMoveKey( spep_1 + 105, ctbaki, 35.2, 272.9 , 0 );
setEffMoveKey( spep_1 + 107, ctbaki, 29.8, 285.2 , 0 );
setEffMoveKey( spep_1 + 109, ctbaki, 29.8, 285.2 , 0 );

setEffScaleKey( spep_1 + 91, ctbaki, 1, 1 );
setEffScaleKey( spep_1 + 93, ctbaki, 1.19, 1.19 );
setEffScaleKey( spep_1 + 95, ctbaki, 1.37, 1.37 );
setEffScaleKey( spep_1 + 109, ctbaki, 1.37, 1.37 );

setEffRotateKey( spep_1 + 91, ctbaki, 0 );
setEffRotateKey( spep_1 + 109, ctbaki, 0 );

setEffAlphaKey( spep_1 + 91, ctbaki, 255 );
setEffAlphaKey( spep_1 + 105, ctbaki, 255 );
setEffAlphaKey( spep_1 + 107, ctbaki, 128 );
setEffAlphaKey( spep_1 + 109, ctbaki, 0 );

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_1 + 134, 6, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 144, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_1 + 22, 1001 );  --パンチ
playSe( spep_1 + 58, 1003 );  --パンチ
playSe( spep_1 + 95, 1010 );  --キック

-- ** 次の準備 ** --
spep_2 = spep_1 + 144;

------------------------------------------------------
-- 銃を構える(98F)
------------------------------------------------------

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_2 + 0, SP_05, 96, 0x80, -1, 0, 0, 0 );  --銃を構える(ef_005)
setEffMoveKey( spep_2 + 0, kamae, 0, 0, 0 );
setEffMoveKey( spep_2 + 96, kamae, 0, 0, 0 );

setEffScaleKey( spep_2 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_2 + 96, kamae, 1.0, 1.0 );

setEffRotateKey( spep_2 + 0, kamae, 0 );
setEffRotateKey( spep_2 + 96, kamae, 0 );

setEffAlphaKey( spep_2 + 0, kamae, 255 );
setEffAlphaKey( spep_2 + 96, kamae, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_2 + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_2 + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 0, 906, 96, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0, 0 );
setEffMoveKey( spep_2 + 96, shuchusen2, 0, 0, 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.5, 1.5 );
setEffScaleKey( spep_2 + 96, shuchusen2, 1.5, 1.5 );

setEffRotateKey( spep_2 + 0, shuchusen2, 180 );
setEffRotateKey( spep_2 + 2, shuchusen2, 0 );
setEffRotateKey( spep_2 + 4, shuchusen2, 180 );
setEffRotateKey( spep_2 + 6, shuchusen2, 0 );
setEffRotateKey( spep_2 + 8, shuchusen2, 180 );
setEffRotateKey( spep_2 + 10, shuchusen2, 0 );
setEffRotateKey( spep_2 + 12, shuchusen2, 180 );
setEffRotateKey( spep_2 + 14, shuchusen2, 0 );
setEffRotateKey( spep_2 + 16, shuchusen2, 180 );
setEffRotateKey( spep_2 + 18, shuchusen2, 0 );
setEffRotateKey( spep_2 + 20, shuchusen2, 180 );
setEffRotateKey( spep_2 + 22, shuchusen2, 0 );
setEffRotateKey( spep_2 + 24, shuchusen2, 180 );
setEffRotateKey( spep_2 + 26, shuchusen2, 0 );
setEffRotateKey( spep_2 + 28, shuchusen2, 180 );
setEffRotateKey( spep_2 + 30, shuchusen2, 0 );
setEffRotateKey( spep_2 + 32, shuchusen2, 180 );
setEffRotateKey( spep_2 + 34, shuchusen2, 0 );
setEffRotateKey( spep_2 + 36, shuchusen2, 180 );
setEffRotateKey( spep_2 + 38, shuchusen2, 0 );
setEffRotateKey( spep_2 + 40, shuchusen2, 180 );
setEffRotateKey( spep_2 + 42, shuchusen2, 0 );
setEffRotateKey( spep_2 + 44, shuchusen2, 180 );
setEffRotateKey( spep_2 + 46, shuchusen2, 0 );
setEffRotateKey( spep_2 + 48, shuchusen2, 180 );
setEffRotateKey( spep_2 + 50, shuchusen2, 0 );
setEffRotateKey( spep_2 + 52, shuchusen2, 180 );
setEffRotateKey( spep_2 + 54, shuchusen2, 0 );
setEffRotateKey( spep_2 + 56, shuchusen2, 180 );
setEffRotateKey( spep_2 + 58, shuchusen2, 0 );
setEffRotateKey( spep_2 + 60, shuchusen2, 180 );
setEffRotateKey( spep_2 + 62, shuchusen2, 0 );
setEffRotateKey( spep_2 + 64, shuchusen2, 180 );
setEffRotateKey( spep_2 + 66, shuchusen2, 0 );
setEffRotateKey( spep_2 + 68, shuchusen2, 180 );
setEffRotateKey( spep_2 + 70, shuchusen2, 0 );
setEffRotateKey( spep_2 + 72, shuchusen2, 180 );
setEffRotateKey( spep_2 + 74, shuchusen2, 0 );
setEffRotateKey( spep_2 + 76, shuchusen2, 180 );
setEffRotateKey( spep_2 + 78, shuchusen2, 0 );
setEffRotateKey( spep_2 + 80, shuchusen2, 180 );
setEffRotateKey( spep_2 + 82, shuchusen2, 0 );
setEffRotateKey( spep_2 + 84, shuchusen2, 180 );
setEffRotateKey( spep_2 + 86, shuchusen2, 0 );
setEffRotateKey( spep_2 + 88, shuchusen2, 180 );
setEffRotateKey( spep_2 + 90, shuchusen2, 0 );
setEffRotateKey( spep_2 + 92, shuchusen2, 180 );
setEffRotateKey( spep_2 + 94, shuchusen2, 0 );
setEffRotateKey( spep_2 + 96, shuchusen2, 180 );

setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 96, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 96, shuchusen2, 255 );

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_2 + 16,  190006, 70, 0x100, -1, 0, -63.8, 517.8 ); --ゴゴゴ
setEffShake( spep_2 + 16, ctgogo, 70, 10 );

setEffMoveKey( spep_2 + 16, ctgogo, -123.8, 512.8 , 0 );
setEffMoveKey( spep_2 + 86, ctgogo, -123.8, 512.8 , 0 );

setEffScaleKey( spep_2 + 16, ctgogo, 0.75, 0.75 );
setEffScaleKey( spep_2 + 86, ctgogo, 0.75, 0.75 );

setEffRotateKey( spep_2 + 16, ctgogo, 0 );
setEffRotateKey( spep_2 + 86, ctgogo, 0 );

setEffAlphaKey( spep_2 + 16, ctgogo, 255 );
setEffAlphaKey( spep_2 + 86, ctgogo, 255 );

-- ** 敵の動き ** --
setDisp( spep_2 + 0, 1, 0 );

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_2 + 80, 8, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 98, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_2 + 18, SE_04 ); --顔カットイン

-- ** 次の準備 ** --
spep_3 = spep_2 + 98;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_3 + 0, 1507, 90, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen3, 88, 20 );

setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0, 0 );
setEffMoveKey( spep_3 + 90, shuchusen3, 0,0, 0 );

setEffScaleKey( spep_3 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen3, 0 );
setEffRotateKey( spep_3 + 90, shuchusen3, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen3, 255 );

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3 + 76, 10, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 ); --カットイン

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
-- 乱射する(108F)
------------------------------------------------------

-- ** エフェクト等 ** --
ransha = entryEffectLife( spep_4 + 0, SP_06, 106, 0x80, -1, 0, 0, 0 );  --乱射する(ef_006)
setEffMoveKey( spep_4 + 0, ransha, 0, 0, 0 );
setEffMoveKey( spep_4 + 106, ransha, 0, 0, 0 );

setEffScaleKey( spep_4 + 0, ransha, 1.0, 1.0 );
setEffScaleKey( spep_4 + 106, ransha, 1.0, 1.0 );

setEffRotateKey( spep_4 + 0, ransha, 0 );
setEffRotateKey( spep_4 + 106, ransha, 0 );

setEffAlphaKey( spep_4 + 0, ransha, 255 );
setEffAlphaKey( spep_4 + 106, ransha, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 0, 906, 106, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 106, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen4, 1.5, 1.5 );
setEffScaleKey( spep_4 + 106, shuchusen4, 1.5, 1.5 );

setEffRotateKey( spep_4 + 0, shuchusen4, 180 );
setEffRotateKey( spep_4 + 2, shuchusen4, 0 );
setEffRotateKey( spep_4 + 4, shuchusen4, 180 );
setEffRotateKey( spep_4 + 6, shuchusen4, 0 );
setEffRotateKey( spep_4 + 8, shuchusen4, 180 );
setEffRotateKey( spep_4 + 10, shuchusen4, 0 );
setEffRotateKey( spep_4 + 12, shuchusen4, 180 );
setEffRotateKey( spep_4 + 14, shuchusen4, 0 );
setEffRotateKey( spep_4 + 16, shuchusen4, 180 );
setEffRotateKey( spep_4 + 18, shuchusen4, 0 );
setEffRotateKey( spep_4 + 20, shuchusen4, 180 );
setEffRotateKey( spep_4 + 22, shuchusen4, 0 );
setEffRotateKey( spep_4 + 24, shuchusen4, 180 );
setEffRotateKey( spep_4 + 26, shuchusen4, 0 );
setEffRotateKey( spep_4 + 28, shuchusen4, 180 );
setEffRotateKey( spep_4 + 30, shuchusen4, 0 );
setEffRotateKey( spep_4 + 32, shuchusen4, 180 );
setEffRotateKey( spep_4 + 34, shuchusen4, 0 );
setEffRotateKey( spep_4 + 36, shuchusen4, 180 );
setEffRotateKey( spep_4 + 38, shuchusen4, 0 );
setEffRotateKey( spep_4 + 40, shuchusen4, 180 );
setEffRotateKey( spep_4 + 42, shuchusen4, 0 );
setEffRotateKey( spep_4 + 44, shuchusen4, 180 );
setEffRotateKey( spep_4 + 46, shuchusen4, 0 );
setEffRotateKey( spep_4 + 48, shuchusen4, 180 );
setEffRotateKey( spep_4 + 50, shuchusen4, 0 );
setEffRotateKey( spep_4 + 52, shuchusen4, 180 );
setEffRotateKey( spep_4 + 54, shuchusen4, 0 );
setEffRotateKey( spep_4 + 56, shuchusen4, 180 );
setEffRotateKey( spep_4 + 58, shuchusen4, 0 );
setEffRotateKey( spep_4 + 60, shuchusen4, 180 );
setEffRotateKey( spep_4 + 62, shuchusen4, 0 );
setEffRotateKey( spep_4 + 64, shuchusen4, 180 );
setEffRotateKey( spep_4 + 66, shuchusen4, 0 );
setEffRotateKey( spep_4 + 68, shuchusen4, 180 );
setEffRotateKey( spep_4 + 70, shuchusen4, 0 );
setEffRotateKey( spep_4 + 72, shuchusen4, 180 );
setEffRotateKey( spep_4 + 74, shuchusen4, 0 );
setEffRotateKey( spep_4 + 76, shuchusen4, 180 );
setEffRotateKey( spep_4 + 78, shuchusen4, 0 );
setEffRotateKey( spep_4 + 80, shuchusen4, 180 );
setEffRotateKey( spep_4 + 82, shuchusen4, 0 );
setEffRotateKey( spep_4 + 84, shuchusen4, 180 );
setEffRotateKey( spep_4 + 86, shuchusen4, 0 );
setEffRotateKey( spep_4 + 88, shuchusen4, 180 );
setEffRotateKey( spep_4 + 90, shuchusen4, 0 );
setEffRotateKey( spep_4 + 92, shuchusen4, 180 );
setEffRotateKey( spep_4 + 94, shuchusen4, 0 );
setEffRotateKey( spep_4 + 96, shuchusen4, 180 );
setEffRotateKey( spep_4 + 98, shuchusen4, 0 );
setEffRotateKey( spep_4 + 100, shuchusen4, 180 );
setEffRotateKey( spep_4 + 102, shuchusen4, 0 );
setEffRotateKey( spep_4 + 104, shuchusen4, 180 );
setEffRotateKey( spep_4 + 106, shuchusen4, 0 );

setEffRotateKey( spep_4 + 0, shuchusen4, 0 );
setEffRotateKey( spep_4 + 106, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 106, shuchusen4, 255 );

-- ** 書き文字エントリー ** --
ctgaga = entryEffectLife( spep_4 + 0, 10002, 106, 0x100, -1, 0, 77.3, 245.6 ); --ガガガッ
setEffShake( spep_4 + 4, ctgaga, 102, 25 );

setEffMoveKey( spep_4 + 0, ctgaga, 77.3, 245.6 , 0 );
setEffMoveKey( spep_4 + 2, ctgaga, 110.9, 236.7 , 0 );
setEffMoveKey( spep_4 + 4, ctgaga, 126.5, 245.8 , 0 );
setEffMoveKey( spep_4 + 6, ctgaga, 142.5, 229.8 , 0 );
setEffMoveKey( spep_4 + 106, ctgaga, 142.5, 229.8 , 0 );

setEffScaleKey( spep_4 + 0, ctgaga, 0.15, 0.15 );
setEffScaleKey( spep_4 + 2, ctgaga, 0.69, 0.69 );
setEffScaleKey( spep_4 + 4, ctgaga, 2.5, 2.5 );
setEffScaleKey( spep_4 + 106, ctgaga, 2.5, 2.5 );

setEffRotateKey( spep_4 + 0, ctgaga, 24.4 );
setEffRotateKey( spep_4 + 106, ctgaga, 24.4 );

setEffAlphaKey( spep_4 + 0, ctgaga, 255 );
setEffAlphaKey( spep_4 + 106, ctgaga, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 88, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_4 + 98, 6, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
-- ** 音 ** --
SE_1149_1 = playSe( spep_4 + 0, 1149 ); --マシンガン
stopSe(spep_4 + 106, SE_1149_1, 2 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 108;

------------------------------------------------------
-- ヒット(78F)
------------------------------------------------------

-- ** エフェクト等 ** --
hitf = entryEffectLife( spep_5 + 0, SP_07, 76, 0x100, -1, 0, -500, 70 );  --ヒット(ef_007)
setEffMoveKey( spep_5 + 0, hitf, -550, 70, 0 );
setEffMoveKey( spep_5 + 76, hitf, -550, 70, 0 );

setEffScaleKey( spep_5 + 0, hitf, 1.0, 1.0 );
setEffScaleKey( spep_5 + 76, hitf, 1.0, 1.0 );

setEffRotateKey( spep_5 + 0, hitf, 0 );
setEffRotateKey( spep_5 + 76, hitf, 0 );

setEffAlphaKey( spep_5 + 0, hitf, 255 );
setEffAlphaKey( spep_5 + 76, hitf, 255 );

hitb = entryEffectLife( spep_5 + 0, SP_08, 76, 0x80, -1, 0, 0, 0 );  --背景(ef_008)
setEffMoveKey( spep_5 + 0, hitb, 0, 0, 0 );
setEffMoveKey( spep_5 + 76, hitb, 0, 0, 0 );

setEffScaleKey( spep_5 + 0, hitb, 1.0, 1.0 );
setEffScaleKey( spep_5 + 76, hitb, 1.0, 1.0 );

setEffRotateKey( spep_5 + 0, hitb, 0 );
setEffRotateKey( spep_5 + 76, hitb, 0 );

setEffAlphaKey( spep_5 + 0, hitb, 255 );
setEffAlphaKey( spep_5 + 76, hitb, 255 );

-- ** 流線 ** --
ryusen4 = entryEffectLife( spep_5 + 0, 921, 76, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_5 + 0, ryusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 76, ryusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, ryusen4, 1, 1 );
setEffScaleKey( spep_5 + 76, ryusen4, 1, 1 );

setEffRotateKey( spep_5 + 0, ryusen4, 0 );
setEffRotateKey( spep_5 + 76, ryusen4, 0 );

setEffAlphaKey( spep_5 + 0, ryusen4, 255 );
setEffAlphaKey( spep_5 + 76, ryusen4, 255 );

-- ** 敵の動き ** --
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 108 );
changeAnime( spep_5 + 34, 1, 106 );

setMoveKey( spep_5 + 0, 1, 14.4, 11.6 , 0 );
setMoveKey( spep_5 + 2, 1, 29.5, 22.1 , 0 );
setMoveKey( spep_5 + 4, 1, 26.6, 16.5 , 0 );
setMoveKey( spep_5 + 6, 1, 39.7, 23 , 0 );
setMoveKey( spep_5 + 8, 1, 36.8, 17.5 , 0 );
setMoveKey( spep_5 + 10, 1, 49.9, 24 , 0 );
setMoveKey( spep_5 + 12, 1, 47, 18.5 , 0 );
setMoveKey( spep_5 + 14, 1, 60.1, 25 , 0 );
setMoveKey( spep_5 + 16, 1, 57.2, 19.5 , 0 );
setMoveKey( spep_5 + 18, 1, 70.3, 26 , 0 );
setMoveKey( spep_5 + 20, 1, 67.4, 20.5 , 0 );
setMoveKey( spep_5 + 22, 1, 80.5, 27 , 0 );
setMoveKey( spep_5 + 24, 1, 77.7, 21.5 , 0 );
setMoveKey( spep_5 + 26, 1, 90.8, 28 , 0 );
setMoveKey( spep_5 + 28, 1, 87.9, 22.5 , 0 );
setMoveKey( spep_5 + 30, 1, 101.1, 29.1 , 0 );
setMoveKey( spep_5 + 33, 1, 98.2, 23.6 , 0 );
setMoveKey( spep_5 + 34, 1, 101.5, 45 , 0 );
setMoveKey( spep_5 + 36, 1, 94.7, 38.9 , 0 );
setMoveKey( spep_5 + 38, 1, 106.5, 44.5 , 0 );
setMoveKey( spep_5 + 40, 1, 104.8, 37.7 , 0 );
setMoveKey( spep_5 + 42, 1, 121.6, 42.7 , 0 );
setMoveKey( spep_5 + 44, 1, 124.9, 35.4 , 0 );
setMoveKey( spep_5 + 46, 1, 146.7, 39.8 , 0 );
setMoveKey( spep_5 + 48, 1, 155, 31.9 , 0 );
setMoveKey( spep_5 + 50, 1, 181.9, 35.8 , 0 );
setMoveKey( spep_5 + 52, 1, 195.2, 27.3 , 0 );
setMoveKey( spep_5 + 54, 1, 227.1, 30.6 , 0 );
setMoveKey( spep_5 + 56, 1, 245.5, 21.5 , 0 );
setMoveKey( spep_5 + 58, 1, 282.4, 24.2 , 0 );
setMoveKey( spep_5 + 60, 1, 305.8, 14.6 , 0 );
setMoveKey( spep_5 + 62, 1, 347.8, 16.7 , 0 );
setMoveKey( spep_5 + 64, 1, 376.3, 6.5 , 0 );
setMoveKey( spep_5 + 66, 1, 423.3, 8 , 0 );
setMoveKey( spep_5 + 68, 1, 456.8, -2.8 , 0 );
setMoveKey( spep_5 + 70, 1, 508.9, -1.9 , 0 );
setMoveKey( spep_5 + 72, 1, 547.5, -13.3 , 0 );
setMoveKey( spep_5 + 74, 1, 555.5, -7.3 , 0 );
setMoveKey( spep_5 + 76, 1, 547.5, -13.3 , 0 );

setScaleKey( spep_5 + 0, 1, 1.7, 1.7 );
setScaleKey( spep_5 + 34, 1, 1.7, 1.7 );
setScaleKey( spep_5 + 36, 1, 1.69, 1.69 );
setScaleKey( spep_5 + 38, 1, 1.69, 1.69 );
setScaleKey( spep_5 + 40, 1, 1.67, 1.67 );
setScaleKey( spep_5 + 42, 1, 1.65, 1.65 );
setScaleKey( spep_5 + 44, 1, 1.63, 1.63 );
setScaleKey( spep_5 + 46, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 48, 1, 1.56, 1.56 );
setScaleKey( spep_5 + 50, 1, 1.52, 1.52 );
setScaleKey( spep_5 + 52, 1, 1.48, 1.48 );
setScaleKey( spep_5 + 54, 1, 1.42, 1.42 );
setScaleKey( spep_5 + 56, 1, 1.37, 1.37 );
setScaleKey( spep_5 + 58, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 60, 1, 1.24, 1.24 );
setScaleKey( spep_5 + 62, 1, 1.16, 1.16 );
setScaleKey( spep_5 + 64, 1, 1.08, 1.08 );
setScaleKey( spep_5 + 66, 1, 1, 1 );
setScaleKey( spep_5 + 68, 1, 0.91, 0.91 );
setScaleKey( spep_5 + 70, 1, 0.81, 0.81 );
setScaleKey( spep_5 + 72, 1, 0.71, 0.71 );
setScaleKey( spep_5 + 76, 1, 0.71, 0.71 );

setRotateKey( spep_5 + 0, 1, -4.3 );
setRotateKey( spep_5 + 2, 1, -3.3 );
setRotateKey( spep_5 + 4, 1, -2.4 );
setRotateKey( spep_5 + 6, 1, -1.4 );
setRotateKey( spep_5 + 8, 1, -0.4 );
setRotateKey( spep_5 + 10, 1, 0.6 );
setRotateKey( spep_5 + 12, 1, 1.6 );
setRotateKey( spep_5 + 14, 1, 2.6 );
setRotateKey( spep_5 + 16, 1, 3.5 );
setRotateKey( spep_5 + 18, 1, 4.5 );
setRotateKey( spep_5 + 20, 1, 5.5 );
setRotateKey( spep_5 + 22, 1, 6.5 );
setRotateKey( spep_5 + 24, 1, 7.5 );
setRotateKey( spep_5 + 26, 1, 8.5 );
setRotateKey( spep_5 + 28, 1, 9.4 );
setRotateKey( spep_5 + 30, 1, 10.4 );
setRotateKey( spep_5 + 33, 1, 11.4 );
setRotateKey( spep_5 + 34, 1, -49.9 );
setRotateKey( spep_5 + 36, 1, -49.8 );
setRotateKey( spep_5 + 38, 1, -49.3 );
setRotateKey( spep_5 + 40, 1, -48.5 );
setRotateKey( spep_5 + 42, 1, -47.4 );
setRotateKey( spep_5 + 44, 1, -46 );
setRotateKey( spep_5 + 46, 1, -44.3 );
setRotateKey( spep_5 + 48, 1, -42.3 );
setRotateKey( spep_5 + 50, 1, -40 );
setRotateKey( spep_5 + 52, 1, -37.3 );
setRotateKey( spep_5 + 54, 1, -34.4 );
setRotateKey( spep_5 + 56, 1, -31.1 );
setRotateKey( spep_5 + 58, 1, -27.5 );
setRotateKey( spep_5 + 60, 1, -23.7 );
setRotateKey( spep_5 + 62, 1, -19.5 );
setRotateKey( spep_5 + 64, 1, -15 );
setRotateKey( spep_5 + 66, 1, -10.1 );
setRotateKey( spep_5 + 68, 1, -5 );
setRotateKey( spep_5 + 70, 1, 0.4 );
setRotateKey( spep_5 + 72, 1, 6.2 );
setRotateKey( spep_5 + 76, 1, 6.2 );

-- ** 書き文字エントリー ** --
ctdoga = entryEffectLife( spep_5 + 0, 10017, 76, 0x100, -1, 0, 84.6, 345.6 ); --ドガガガッ
setEffMoveKey( spep_5 + 0, ctdoga, 84.6, 345.6 , 0 );
setEffMoveKey( spep_5 + 2, ctdoga, 65.4, 332.8 , 0 );
setEffMoveKey( spep_5 + 4, ctdoga, 84.6, 345.6 , 0 );
setEffMoveKey( spep_5 + 6, ctdoga, 65.4, 332.8 , 0 );
setEffMoveKey( spep_5 + 8, ctdoga, 84.6, 345.6 , 0 );
setEffMoveKey( spep_5 + 10, ctdoga, 65.4, 332.8 , 0 );
setEffMoveKey( spep_5 + 12, ctdoga, 84.6, 345.6 , 0 );
setEffMoveKey( spep_5 + 14, ctdoga, 65.4, 332.8 , 0 );
setEffMoveKey( spep_5 + 16, ctdoga, 84.6, 345.6 , 0 );
setEffMoveKey( spep_5 + 18, ctdoga, 65.4, 332.8 , 0 );
setEffMoveKey( spep_5 + 20, ctdoga, 84.6, 345.6 , 0 );
setEffMoveKey( spep_5 + 22, ctdoga, 65.4, 332.8 , 0 );
setEffMoveKey( spep_5 + 24, ctdoga, 84.6, 345.6 , 0 );
setEffMoveKey( spep_5 + 26, ctdoga, 65.4, 332.8 , 0 );
setEffMoveKey( spep_5 + 28, ctdoga, 84.6, 345.6 , 0 );
setEffMoveKey( spep_5 + 30, ctdoga, 65.4, 332.8 , 0 );
setEffMoveKey( spep_5 + 32, ctdoga, 84.6, 345.6 , 0 );
setEffMoveKey( spep_5 + 34, ctdoga, 65.4, 332.8 , 0 );
setEffMoveKey( spep_5 + 36, ctdoga, 84.6, 345.6 , 0 );
setEffMoveKey( spep_5 + 38, ctdoga, 65.4, 332.8 , 0 );
setEffMoveKey( spep_5 + 40, ctdoga, 84.6, 345.6 , 0 );
setEffMoveKey( spep_5 + 42, ctdoga, 65.4, 332.8 , 0 );
setEffMoveKey( spep_5 + 44, ctdoga, 84.6, 345.6 , 0 );
setEffMoveKey( spep_5 + 46, ctdoga, 65.4, 332.8 , 0 );
setEffMoveKey( spep_5 + 48, ctdoga, 84.6, 345.6 , 0 );
setEffMoveKey( spep_5 + 50, ctdoga, 65.4, 332.8 , 0 );
setEffMoveKey( spep_5 + 52, ctdoga, 84.6, 345.6 , 0 );
setEffMoveKey( spep_5 + 54, ctdoga, 65.4, 332.8 , 0 );
setEffMoveKey( spep_5 + 56, ctdoga, 84.6, 345.6 , 0 );
setEffMoveKey( spep_5 + 58, ctdoga, 65.4, 332.8 , 0 );
setEffMoveKey( spep_5 + 60, ctdoga, 84.6, 345.6 , 0 );
setEffMoveKey( spep_5 + 62, ctdoga, 65.4, 332.8 , 0 );
setEffMoveKey( spep_5 + 64, ctdoga, 84.6, 345.6 , 0 );
setEffMoveKey( spep_5 + 66, ctdoga, 65.4, 332.8 , 0 );
setEffMoveKey( spep_5 + 68, ctdoga, 84.6, 345.6 , 0 );
setEffMoveKey( spep_5 + 70, ctdoga, 65.4, 332.8 , 0 );
setEffMoveKey( spep_5 + 72, ctdoga, 84.6, 345.6 , 0 );
setEffMoveKey( spep_5 + 74, ctdoga, 65.4, 332.8 , 0 );
setEffMoveKey( spep_5 + 76, ctdoga, 84.6, 345.6 , 0 );

setEffScaleKey( spep_5 + 0, ctdoga, 2.5, 2.5 );
setEffScaleKey( spep_5 + 76, ctdoga, 2.5, 2.5 );

setEffRotateKey( spep_5 + 0, ctdoga, 46.7 );
setEffRotateKey( spep_5 + 76, ctdoga, 46.7 );

setEffAlphaKey( spep_5 + 0, ctdoga, 255 );
setEffAlphaKey( spep_5 + 76, ctdoga, 255 );

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_5 + 50, 16, 12, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 76, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 音 ** --
SE_1149_2 = playSe( spep_5 + 0, 1149 ); --マシンガン
stopSe(spep_5 + 68, SE_1149_2, 15 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 78;

------------------------------------------------------
-- 敵吹っ飛びシーン(112F)
------------------------------------------------------
-- ** エフェクト等 ** --
hitf = entryEffectLife( spep_6 + 0, SP_09, 112, 0x80, -1, 0, 0, 0 );  --背景(ef_009)
setEffMoveKey( spep_6 + 0, hitf, 0, 0, 0 );
setEffMoveKey( spep_6 + 112, hitf, 0, 0, 0 );

setEffScaleKey( spep_6 + 0, hitf, 1.0, 1.0 );
setEffScaleKey( spep_6 + 112, hitf, 1.0, 1.0 );

setEffRotateKey( spep_6 + 0, hitf, 0 );
setEffRotateKey( spep_6 + 112, hitf, 0 );

setEffAlphaKey( spep_6 + 0, hitf, 255 );
setEffAlphaKey( spep_6 + 112, hitf, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_6 + 2, 1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_6 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_6 + 112, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_6 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_6 + 112, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_6 + 2, hibiware, 0 );
setEffRotateKey( spep_6 + 112, hibiware, 0 );

setEffAlphaKey( spep_6 + 2, hibiware, 0 );
setEffAlphaKey( spep_6 + 13, hibiware, 0 );
setEffAlphaKey( spep_6 + 14, hibiware, 255 );
setEffAlphaKey( spep_6 + 112, hibiware, 255 );

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_6 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 14, shuchusen6, 32, 25 );

setEffMoveKey( spep_6 + 14, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen6, 1, 1 );
setEffScaleKey( spep_6 + 46, shuchusen6, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen6, 0 );
setEffRotateKey( spep_6 + 46, shuchusen6, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen6, 255 );
setEffAlphaKey( spep_6 + 28, shuchusen6, 255 );
setEffAlphaKey( spep_6 + 30, shuchusen6, 252 );
setEffAlphaKey( spep_6 + 32, shuchusen6, 242 );
setEffAlphaKey( spep_6 + 34, shuchusen6, 227 );
setEffAlphaKey( spep_6 + 36, shuchusen6, 205 );
setEffAlphaKey( spep_6 + 38, shuchusen6, 176 );
setEffAlphaKey( spep_6 + 40, shuchusen6, 142 );
setEffAlphaKey( spep_6 + 42, shuchusen6, 101 );
setEffAlphaKey( spep_6 + 44, shuchusen6, 54 );
setEffAlphaKey( spep_6 + 46, shuchusen6, 0 );

shuchusen7 = entryEffectLife( spep_6 + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_6 + 14, shuchusen7, 0, 0 , 0 );
setEffMoveKey( spep_6 + 112, shuchusen7, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen7, 1, 1 );
setEffScaleKey( spep_6 + 112, shuchusen7, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen7, 0 );
setEffRotateKey( spep_6 + 112, shuchusen7, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen7, 255 );
setEffAlphaKey( spep_6 + 112, shuchusen7, 255 );

-- ** 書き文字エントリー ** --
ctga2 = entryEffectLife( spep_6 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_6 + 14, ctga2, 14, 20 );

setEffMoveKey( spep_6 + 14, ctga2, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 28, ctga2, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 112, ctga2, 3.9, 316.1 , 0 );

setEffScaleKey( spep_6 + 14, ctga2, 3.2, 3.2 );
setEffScaleKey( spep_6 + 112, ctga2, 3.2, 3.2 );

setEffRotateKey( spep_6 + 14, ctga2, -10.9 );
setEffRotateKey( spep_6 + 15, ctga2, -10.9 );
setEffRotateKey( spep_6 + 16, ctga2, -14.9 );
setEffRotateKey( spep_6 + 17, ctga2, -14.9 );
setEffRotateKey( spep_6 + 18, ctga2, -10.9 );
setEffRotateKey( spep_6 + 19, ctga2, -10.9 );
setEffRotateKey( spep_6 + 20, ctga2, -14.9 );
setEffRotateKey( spep_6 + 21, ctga2, -14.9 );
setEffRotateKey( spep_6 + 22, ctga2, -10.9 );
setEffRotateKey( spep_6 + 23, ctga2, -10.9 );
setEffRotateKey( spep_6 + 24, ctga2, -14.9 );
setEffRotateKey( spep_6 + 25, ctga2, -14.9 );
setEffRotateKey( spep_6 + 26, ctga2, -10.9 );
setEffRotateKey( spep_6 + 27, ctga2, -10.9 );
setEffRotateKey( spep_6 + 28, ctga2, -14.9 );
setEffRotateKey( spep_6 + 112, ctga2, -14.9 );

setEffAlphaKey( spep_6 + 14, ctga2, 255 );
setEffAlphaKey( spep_6 + 112, ctga2, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
changeAnime( spep_6 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_6 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_6 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_6 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_6 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_6 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_6 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_6 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_6 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_6 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_6 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_6 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_6 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_6 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_6 + 122, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_6 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_6 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_6 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_6 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_6 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_6 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 122, 1, 1.6, 1.6 );

setRotateKey( spep_6 + 0, 1, -40 );
setRotateKey( spep_6 + 1, 1, -40 );
setRotateKey( spep_6 + 2, 1, 80 );
setRotateKey( spep_6 + 3, 1, 80 );
setRotateKey( spep_6 + 4, 1, 200 );
setRotateKey( spep_6 + 5, 1, 200 );
setRotateKey( spep_6 + 6, 1, 360 );
setRotateKey( spep_6 + 7, 1, 360 );
setRotateKey( spep_6 + 8, 1, 558 );
setRotateKey( spep_6 + 9, 1, 558 );
setRotateKey( spep_6 + 10, 1, 425 );
setRotateKey( spep_6 + 11, 1, 425 );
setRotateKey( spep_6 + 12, 1, -40 );
setRotateKey( spep_6 + 122, 1, -40 );

-- ** 音 ** --
playSe( spep_6 + 14, SE_11 );  --割れる音


-- ** ダメージ表示 ** --
dealDamage( spep_6 + 10 );
endPhase( spep_6 + 112 );

else


------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- アイドリング～横ダッシュ(52F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
idlingf = entryEffectLife( spep_0 + 0, SP_01r, 50, 0x100, -1, 0, 0, 0 );  --アイドリング～横ダッシュ(ef_001)
setEffMoveKey( spep_0 + 0, idlingf, 0, 0, 0 );
setEffMoveKey( spep_0 + 50, idlingf, 0, 0, 0 );

setEffScaleKey( spep_0 + 0, idlingf, 1.0, 1.0 );
setEffScaleKey( spep_0 + 50, idlingf, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, idlingf, 0 );
setEffRotateKey( spep_0 + 50, idlingf, 0 );

setEffAlphaKey( spep_0 + 0, idlingf, 255 );
setEffAlphaKey( spep_0 + 50, idlingf, 255 );

idlingb = entryEffectLife( spep_0 + 0, SP_02, 50, 0x80, -1, 0, 0, 0 );  --背景(ef_002)
setEffMoveKey( spep_0 + 0, idlingb, 0, 0, 0 );
setEffMoveKey( spep_0 + 50, idlingb, 0, 0, 0 );

setEffScaleKey( spep_0 + 0, idlingb, 1.0, 1.0 );
setEffScaleKey( spep_0 + 50, idlingb, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, idlingb, 0 );
setEffRotateKey( spep_0 + 50, idlingb, 0 );

setEffAlphaKey( spep_0 + 0, idlingb, 255 );
setEffAlphaKey( spep_0 + 50, idlingb, 255 );

-- ** 流線** --
ryusen1 = entryEffectLife( spep_0 + 30, 914, 20, 0x80, -1, 0, -284.6, 0 );
setEffMoveKey( spep_0 + 30, ryusen1, -284.6, 0, 0 );
setEffMoveKey( spep_0 + 32, ryusen1, -567.5, 0, 0 );
setEffMoveKey( spep_0 + 34, ryusen1, -850.4, 0, 0 );
setEffMoveKey( spep_0 + 40, ryusen1, -850.4, 0, 0 );

setEffScaleKey( spep_0 + 30, ryusen1, 3.33, 2.49 );
setEffScaleKey( spep_0 + 40, ryusen1, 3.33, 2.49 );

setEffRotateKey( spep_0 + 30, ryusen1, 0 );
setEffRotateKey( spep_0 + 40, ryusen1, 0 );

setEffAlphaKey( spep_0 + 30, ryusen1, 64 );
setEffAlphaKey( spep_0 + 32, ryusen1, 128 );
setEffAlphaKey( spep_0 + 34, ryusen1, 191 );
setEffAlphaKey( spep_0 + 40, ryusen1, 222 );

-- ** 音 ** --
playSe( spep_0 + 15, 4 );  --ダッシュ

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 52, 0, 0, 0, 0, 255 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

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

-- ** 流線** --
setEffMoveKey( spep_0 + 41, ryusen1, -1133.3, 0, 0 );
setEffMoveKey( spep_0 + 44, ryusen1, -1416.1, 0, 0 );
setEffMoveKey( spep_0 + 46, ryusen1, -1.7, 0, 0 );
setEffMoveKey( spep_0 + 48, ryusen1, -284.6, 0, 0 );
setEffMoveKey( spep_0 + 50, ryusen1, -567.5, 0, 0 );

setEffScaleKey( spep_0 + 41, ryusen1, 3.33, 2.49 );
setEffScaleKey( spep_0 + 50, ryusen1, 3.33, 2.49 );

setEffRotateKey( spep_0 + 41, ryusen1, 0 );
setEffRotateKey( spep_0 + 50, ryusen1, 0 );

setEffAlphaKey( spep_0 + 41, ryusen1, 228 );
setEffAlphaKey( spep_0 + 50, ryusen1, 255 );

-- ** 白フェード ** --
entryFade( spep_0 + 42, 6, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 52;

------------------------------------------------------
-- 敵に近づく～蹴り飛ばし(144F)
------------------------------------------------------

-- ** エフェクト等 ** --
kickf = entryEffectLife( spep_1 + 0, SP_03r, 142, 0x100, -1, 0, 0, 0 );  --敵に近づく～蹴り飛ばし(ef_003)
setEffMoveKey( spep_1 + 0, kickf, 0, 0, 0 );
setEffMoveKey( spep_1 + 142, kickf, 0, 0, 0 );

setEffScaleKey( spep_1 + 0, kickf, 1.0, 1.0 );
setEffScaleKey( spep_1 + 142, kickf, 1.0, 1.0 );

setEffRotateKey( spep_1 + 0, kickf, 0 );
setEffRotateKey( spep_1 + 142, kickf, 0 );

setEffAlphaKey( spep_1 + 0, kickf, 255 );
setEffAlphaKey( spep_1 + 142, kickf, 255 );

kickb = entryEffectLife( spep_1 + 0, SP_04, 142, 0x80, -1, 0, 0, 0 );  --背景(ef_004)
setEffMoveKey( spep_1 + 0, kickb, 0, 0, 0 );
setEffMoveKey( spep_1 + 142, kickb, 0, 0, 0 );

setEffScaleKey( spep_1 + 0, kickb, 1.0, 1.0 );
setEffScaleKey( spep_1 + 142, kickb, 1.0, 1.0 );

setEffRotateKey( spep_1 + 0, kickb, 0 );
setEffRotateKey( spep_1 + 142, kickb, 0 );

setEffAlphaKey( spep_1 + 0, kickb, 255 );
setEffAlphaKey( spep_1 + 142, kickb, 255 );

-- ** 敵の動き ** --
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1 + 17, 1, 106 );
changeAnime( spep_1 + 89, 1, 108 );

setMoveKey( spep_1 + 0, 1, 13.9, 14 , 0 );
setMoveKey( spep_1 + 16, 1, 13.9, 14 , 0 );
setMoveKey( spep_1 + 17, 1, 2, 32.7 , 0 );
setMoveKey( spep_1 + 19, 1, -35.4, 32.1 , 0 );
setMoveKey( spep_1 + 21, 1, 28.5, 65 , 0 );
setMoveKey( spep_1 + 23, 1, -27.2, 55.3 , 0 );
setMoveKey( spep_1 + 25, 1, 16.6, 54.9 , 0 );
setMoveKey( spep_1 + 27, 1, 9.4, 109.3 , 0 );
setMoveKey( spep_1 + 29, 1, 160.8, 289 , 0 );
setMoveKey( spep_1 + 31, 1, 215.7, 307.1 , 0 );
setMoveKey( spep_1 + 33, 1, 222.1, 310.5 , 0 );
setMoveKey( spep_1 + 35, 1, 228.5, 312.3 , 0 );
setMoveKey( spep_1 + 37, 1, 234.4, 313.9 , 0 );
setMoveKey( spep_1 + 39, 1, 269, 333.4 , 0 );
setMoveKey( spep_1 + 41, 1, 290.4, 345.5 , 0 );
setMoveKey( spep_1 + 43, 1, 303.7, 353.1 , 0 );
setMoveKey( spep_1 + 45, 1, 312.9, 358.2 , 0 );
setMoveKey( spep_1 + 47, 1, 319.3, 361.9 , 0 );
setMoveKey( spep_1 + 49, 1, 323.6, 364.3 , 0 );
setMoveKey( spep_1 + 51, 1, 326.1, 365.7 , 0 );
setMoveKey( spep_1 + 53, 1, 326.9, 366 , 0 );
setMoveKey( spep_1 + 55, 1, 329.1, 366.4 , 0 );
setMoveKey( spep_1 + 57, 1, 332.3, 367 , 0 );
setMoveKey( spep_1 + 59, 1, 336.4, 367.9 , 0 );
setMoveKey( spep_1 + 61, 1, 341.3, 368.8 , 0 );
setMoveKey( spep_1 + 63, 1, 347.8, 370.1 , 0 );
setMoveKey( spep_1 + 65, 1, 339.5, 363.8 , 0 );
setMoveKey( spep_1 + 67, 1, 331.2, 357.5 , 0 );
setMoveKey( spep_1 + 69, 1, 322.9, 351.2 , 0 );
setMoveKey( spep_1 + 71, 1, 305, 337.1 , 0 );
setMoveKey( spep_1 + 73, 1, 287.1, 322.9 , 0 );
setMoveKey( spep_1 + 75, 1, 269.2, 308.8 , 0 );
setMoveKey( spep_1 + 77, 1, 251.2, 294.7 , 0 );
setMoveKey( spep_1 + 79, 1, 235.4, 278.9 , 0 );
setMoveKey( spep_1 + 81, 1, 215.4, 258.9 , 0 );
setMoveKey( spep_1 + 83, 1, 186.6, 230.2 , 0 );
setMoveKey( spep_1 + 85, 1, 150.3, 194.1 , 0 );
setMoveKey( spep_1 + 88, 1, 94.3, 138.2 , 0 );
setMoveKey( spep_1 + 89, 1, 108.6, 71.2 , 0 );
setMoveKey( spep_1 + 91, 1, 136.7, 46.3 , 0 );
setMoveKey( spep_1 + 93, 1, 102.7, 58.1 , 0 );
setMoveKey( spep_1 + 95, 1, 113.6, 71.2 , 0 );
setMoveKey( spep_1 + 97, 1, 145.1, 43.1 , 0 );
setMoveKey( spep_1 + 99, 1, 106.6, 56.4 , 0 );
setMoveKey( spep_1 + 101, 1, 118.7, 71.2 , 0 );
setMoveKey( spep_1 + 103, 1, 205, 71.1 , 0 );
setMoveKey( spep_1 + 105, 1, 291.4, 71.1 , 0 );
setMoveKey( spep_1 + 107, 1, 377.7, 71.1 , 0 );
setMoveKey( spep_1 + 109, 1, 464.1, 71.1 , 0 );
setMoveKey( spep_1 + 111, 1, 550.4, 71.1 , 0 );
setMoveKey( spep_1 + 113, 1, 636.8, 71.1 , 0 );
setMoveKey( spep_1 + 115, 1, 723.1, 71.1 , 0 );
setMoveKey( spep_1 + 117, 1, 809.5, 71.1 , 0 );
setMoveKey( spep_1 + 119, 1, 895.8, 71.1 , 0 );
setMoveKey( spep_1 + 121, 1, 982.2, 71.1 , 0 );
setMoveKey( spep_1 + 123, 1, 1068.6, 71.1 , 0 );
setMoveKey( spep_1 + 125, 1, 1154.9, 71.1 , 0 );
setMoveKey( spep_1 + 127, 1, 1241.3, 71.1 , 0 );
setMoveKey( spep_1 + 129, 1, 1327.6, 71.1 , 0 );
setMoveKey( spep_1 + 131, 1, 1414, 71.1 , 0 );
setMoveKey( spep_1 + 133, 1, 1500.3, 71.1 , 0 );
setMoveKey( spep_1 + 135, 1, 1586.7, 71.1 , 0 );
setMoveKey( spep_1 + 137, 1, 1673, 71.1 , 0 );
setMoveKey( spep_1 + 139, 1, 1759.4, 71.1 , 0 );
setMoveKey( spep_1 + 141, 1, 1845.8, 71.1 , 0 );
setMoveKey( spep_1 + 142, 1, 1845.8, 71.1 , 0 );

setScaleKey( spep_1 + 0, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 16, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 17, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 19, 1, 1.37, 1.37 );
setScaleKey( spep_1 + 21, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 23, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 25, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 27, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 29, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 31, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 33, 1, 1.4, 1.4 );
setScaleKey( spep_1 + 35, 1, 1.4, 1.4 );
setScaleKey( spep_1 + 37, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 39, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 41, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 43, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 45, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 47, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 59, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 61, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 77, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 79, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 81, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 83, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 85, 1, 1.4, 1.4 );
setScaleKey( spep_1 + 88, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 89, 1, 1.4, 1.4 );
setScaleKey( spep_1 + 91, 1, 1.46, 1.46 );
setScaleKey( spep_1 + 93, 1, 1.52, 1.52 );
setScaleKey( spep_1 + 95, 1, 1.58, 1.58 );
setScaleKey( spep_1 + 101, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 142, 1, 1.47, 1.47 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 16, 1, 0 );
setRotateKey( spep_1 + 17, 1, -70 );
setRotateKey( spep_1 + 19, 1, -64.9 );
setRotateKey( spep_1 + 21, 1, -59.9 );
setRotateKey( spep_1 + 23, 1, -54.7 );
setRotateKey( spep_1 + 25, 1, -48.9 );
setRotateKey( spep_1 + 27, 1, -42.9 );
setRotateKey( spep_1 + 29, 1, -37 );
setRotateKey( spep_1 + 31, 1, -35.9 );
setRotateKey( spep_1 + 33, 1, -35.1 );
setRotateKey( spep_1 + 35, 1, -34.8 );
setRotateKey( spep_1 + 37, 1, -34.5 );
setRotateKey( spep_1 + 39, 1, -29.4 );
setRotateKey( spep_1 + 41, 1, -26.2 );
setRotateKey( spep_1 + 43, 1, -24.2 );
setRotateKey( spep_1 + 45, 1, -22.9 );
setRotateKey( spep_1 + 47, 1, -21.9 );
setRotateKey( spep_1 + 49, 1, -21.3 );
setRotateKey( spep_1 + 51, 1, -20.9 );
setRotateKey( spep_1 + 53, 1, -20.8 );
setRotateKey( spep_1 + 55, 1, -20.5 );
setRotateKey( spep_1 + 57, 1, -19.9 );
setRotateKey( spep_1 + 59, 1, -19.3 );
setRotateKey( spep_1 + 61, 1, -18.5 );
setRotateKey( spep_1 + 63, 1, -17.5 );
setRotateKey( spep_1 + 65, 1, -16.9 );
setRotateKey( spep_1 + 67, 1, -16.4 );
setRotateKey( spep_1 + 69, 1, -15.8 );
setRotateKey( spep_1 + 71, 1, -14.9 );
setRotateKey( spep_1 + 73, 1, -14.1 );
setRotateKey( spep_1 + 75, 1, -13.2 );
setRotateKey( spep_1 + 77, 1, -12.3 );
setRotateKey( spep_1 + 79, 1, -12.4 );
setRotateKey( spep_1 + 81, 1, -12.5 );
setRotateKey( spep_1 + 83, 1, -12.5 );
setRotateKey( spep_1 + 85, 1, -12.6 );
setRotateKey( spep_1 + 88, 1, -12.8 );
setRotateKey( spep_1 + 101, 1, -16.3 );
setRotateKey( spep_1 + 103, 1, -15 );
setRotateKey( spep_1 + 105, 1, -13.7 );
setRotateKey( spep_1 + 107, 1, -12.4 );
setRotateKey( spep_1 + 109, 1, -11.1 );
setRotateKey( spep_1 + 111, 1, -9.8 );
setRotateKey( spep_1 + 113, 1, -8.5 );
setRotateKey( spep_1 + 115, 1, -7.2 );
setRotateKey( spep_1 + 117, 1, -5.9 );
setRotateKey( spep_1 + 119, 1, -4.6 );
setRotateKey( spep_1 + 121, 1, -3.3 );
setRotateKey( spep_1 + 123, 1, -2 );
setRotateKey( spep_1 + 125, 1, -0.7 );
setRotateKey( spep_1 + 127, 1, 0.6 );
setRotateKey( spep_1 + 129, 1, 1.9 );
setRotateKey( spep_1 + 131, 1, 3.2 );
setRotateKey( spep_1 + 133, 1, 4.5 );
setRotateKey( spep_1 + 135, 1, 5.8 );
setRotateKey( spep_1 + 137, 1, 7.1 );
setRotateKey( spep_1 + 139, 1, 8.4 );
setRotateKey( spep_1 + 141, 1, 9.7 );
setRotateKey( spep_1 + 142, 1, 9.7 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1 + 17, 906, 20, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 17, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 37, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 17, shuchusen1, 1.5, 1.5 );
setEffScaleKey( spep_1 + 37, shuchusen1, 1.5, 1.5 );

setEffRotateKey( spep_1 + 17, shuchusen1, 180 );
setEffRotateKey( spep_1 + 19, shuchusen1, 0 );
setEffRotateKey( spep_1 + 21, shuchusen1, 180 );
setEffRotateKey( spep_1 + 23, shuchusen1, 0 );
setEffRotateKey( spep_1 + 25, shuchusen1, 180 );
setEffRotateKey( spep_1 + 27, shuchusen1, 0 );
setEffRotateKey( spep_1 + 29, shuchusen1, 180 );
setEffRotateKey( spep_1 + 31, shuchusen1, 0 );
setEffRotateKey( spep_1 + 33, shuchusen1, 180 );
setEffRotateKey( spep_1 + 35, shuchusen1, 0 );
setEffRotateKey( spep_1 + 37, shuchusen1, 180 );

setEffAlphaKey( spep_1 + 17, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 37, shuchusen1, 255 );

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_1 + 64, 914, 78, 0x80, -1, 0, -171, 0 );
setEffMoveKey( spep_1 + 64, ryusen2, -171, 0, 0 );
setEffMoveKey( spep_1 + 66, ryusen2, -341, 0, 0 );
setEffMoveKey( spep_1 + 68, ryusen2, -511, 0, 0 );
setEffMoveKey( spep_1 + 70, ryusen2, -681, 0, 0 );
setEffMoveKey( spep_1 + 72, ryusen2, -851, 0, 0 );
setEffMoveKey( spep_1 + 74, ryusen2, -1, 0, 0 );
setEffMoveKey( spep_1 + 76, ryusen2, -171, 0, 0 );
setEffMoveKey( spep_1 + 78, ryusen2, -341, 0, 0 );
setEffMoveKey( spep_1 + 80, ryusen2, -511, 0, 0 );
setEffMoveKey( spep_1 + 82, ryusen2, -681, 0, 0 );
setEffMoveKey( spep_1 + 84, ryusen2, -851, 0, 0 );
setEffMoveKey( spep_1 + 86, ryusen2, -1, 0, 0 );
setEffMoveKey( spep_1 + 88, ryusen2, -171, 0, 0 );
setEffMoveKey( spep_1 + 90, ryusen2, -341, 0, 0 );
setEffMoveKey( spep_1 + 92, ryusen2, -511, 0, 0 );
setEffMoveKey( spep_1 + 94, ryusen2, -681, 0, 0 );
setEffMoveKey( spep_1 + 96, ryusen2, -851, 0, 0 );
setEffMoveKey( spep_1 + 98, ryusen2, -1, 0, 0 );
setEffMoveKey( spep_1 + 100, ryusen2, -171, 0, 0 );
setEffMoveKey( spep_1 + 102, ryusen2, -341, 0, 0 );
setEffMoveKey( spep_1 + 104, ryusen2, -511, 0, 0 );
setEffMoveKey( spep_1 + 106, ryusen2, -681, 0, 0 );
setEffMoveKey( spep_1 + 108, ryusen2, -851, 0, 0 );
setEffMoveKey( spep_1 + 110, ryusen2, -1, 0, 0 );
setEffMoveKey( spep_1 + 112, ryusen2, -171, 0, 0 );
setEffMoveKey( spep_1 + 114, ryusen2, -341, 0, 0 );
setEffMoveKey( spep_1 + 116, ryusen2, -511, 0, 0 );
setEffMoveKey( spep_1 + 118, ryusen2, -681, 0, 0 );
setEffMoveKey( spep_1 + 120, ryusen2, -851, 0, 0 );
setEffMoveKey( spep_1 + 122, ryusen2, -1, 0, 0 );
setEffMoveKey( spep_1 + 124, ryusen2, -171, 0, 0 );
setEffMoveKey( spep_1 + 126, ryusen2, -341, 0, 0 );
setEffMoveKey( spep_1 + 128, ryusen2, -511, 0, 0 );
setEffMoveKey( spep_1 + 130, ryusen2, -681, 0, 0 );
setEffMoveKey( spep_1 + 132, ryusen2, -851, 0, 0 );
setEffMoveKey( spep_1 + 134, ryusen2, -1, 0, 0 );
setEffMoveKey( spep_1 + 136, ryusen2, -171, 0, 0 );
setEffMoveKey( spep_1 + 138, ryusen2, -341, 0, 0 );
setEffMoveKey( spep_1 + 140, ryusen2, -511, 0, 0 );
setEffMoveKey( spep_1 + 142, ryusen2, -681, 0, 0 );

setEffScaleKey( spep_1 + 64, ryusen2, 3, 1 );
setEffScaleKey( spep_1 + 142, ryusen2, 3, 1 );

setEffRotateKey( spep_1 + 64, ryusen2, 0 );
setEffRotateKey( spep_1 + 142, ryusen2, 0 );

setEffAlphaKey( spep_1 + 64, ryusen2, 128 );
setEffAlphaKey( spep_1 + 66, ryusen2, 255 );
setEffAlphaKey( spep_1 + 142, ryusen2, 255 );

ryusen3 = entryEffectLife( spep_1 + 64, 914, 78, 0x80, -1, 0, 681, 0 );
setEffMoveKey( spep_1 + 64, ryusen3, 681, 0 , 0 );
setEffMoveKey( spep_1 + 66, ryusen3, 511, 0 , 0 );
setEffMoveKey( spep_1 + 68, ryusen3, 341, 0 , 0 );
setEffMoveKey( spep_1 + 70, ryusen3, 171, 0 , 0 );
setEffMoveKey( spep_1 + 72, ryusen3, 1, 0 , 0 );
setEffMoveKey( spep_1 + 74, ryusen3, 851, 0 , 0 );
setEffMoveKey( spep_1 + 76, ryusen3, 681, 0 , 0 );
setEffMoveKey( spep_1 + 78, ryusen3, 511, 0 , 0 );
setEffMoveKey( spep_1 + 80, ryusen3, 341, 0 , 0 );
setEffMoveKey( spep_1 + 82, ryusen3, 171, 0 , 0 );
setEffMoveKey( spep_1 + 84, ryusen3, 1, 0 , 0 );
setEffMoveKey( spep_1 + 86, ryusen3, 851, 0 , 0 );
setEffMoveKey( spep_1 + 88, ryusen3, 681, 0 , 0 );
setEffMoveKey( spep_1 + 90, ryusen3, 511, 0 , 0 );
setEffMoveKey( spep_1 + 92, ryusen3, 341, 0 , 0 );
setEffMoveKey( spep_1 + 94, ryusen3, 171, 0 , 0 );
setEffMoveKey( spep_1 + 96, ryusen3, 1, 0 , 0 );
setEffMoveKey( spep_1 + 98, ryusen3, 851, 0 , 0 );
setEffMoveKey( spep_1 + 100, ryusen3, 681, 0 , 0 );
setEffMoveKey( spep_1 + 102, ryusen3, 511, 0 , 0 );
setEffMoveKey( spep_1 + 104, ryusen3, 341, 0 , 0 );
setEffMoveKey( spep_1 + 106, ryusen3, 171, 0 , 0 );
setEffMoveKey( spep_1 + 108, ryusen3, 1, 0 , 0 );
setEffMoveKey( spep_1 + 110, ryusen3, 851, 0 , 0 );
setEffMoveKey( spep_1 + 112, ryusen3, 681, 0 , 0 );
setEffMoveKey( spep_1 + 114, ryusen3, 511, 0 , 0 );
setEffMoveKey( spep_1 + 116, ryusen3, 341, 0 , 0 );
setEffMoveKey( spep_1 + 118, ryusen3, 171, 0 , 0 );
setEffMoveKey( spep_1 + 120, ryusen3, 1, 0 , 0 );
setEffMoveKey( spep_1 + 122, ryusen3, 851, 0 , 0 );
setEffMoveKey( spep_1 + 124, ryusen3, 681, 0 , 0 );
setEffMoveKey( spep_1 + 126, ryusen3, 511, 0 , 0 );
setEffMoveKey( spep_1 + 128, ryusen3, 341, 0 , 0 );
setEffMoveKey( spep_1 + 130, ryusen3, 171, 0 , 0 );
setEffMoveKey( spep_1 + 132, ryusen3, 1, 0 , 0 );
setEffMoveKey( spep_1 + 134, ryusen3, 851, 0 , 0 );
setEffMoveKey( spep_1 + 136, ryusen3, 681, 0 , 0 );
setEffMoveKey( spep_1 + 138, ryusen3, 511, 0 , 0 );
setEffMoveKey( spep_1 + 140, ryusen3, 341, 0 , 0 );
setEffMoveKey( spep_1 + 142, ryusen3, 171, 0 , 0 );

setEffScaleKey( spep_1 + 64, ryusen3, 3, 1 );
setEffScaleKey( spep_1 + 142, ryusen3, 3, 1 );

setEffRotateKey( spep_1 + 64, ryusen3, 0 );
setEffRotateKey( spep_1 + 142, ryusen3, 0 );

setEffAlphaKey( spep_1 + 64, ryusen3, 128 );
setEffAlphaKey( spep_1 + 66, ryusen3, 255 );
setEffAlphaKey( spep_1 + 142, ryusen3, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_1 + 17, 10005, 20, 0x100, -1, 0, 71, 292.2 ); --ガッ
setEffMoveKey( spep_1 + 17, ctga, 71, 292.2 , 0 );
setEffMoveKey( spep_1 + 19, ctga, 66.5, 298.9 , 0 );
setEffMoveKey( spep_1 + 21, ctga, 72.7, 287.9 , 0 );
setEffMoveKey( spep_1 + 23, ctga, 72.7, 287.9 , 0 );
setEffMoveKey( spep_1 + 25, ctga, 65.9, 299.2 , 0 );
setEffMoveKey( spep_1 + 27, ctga, 72.7, 287.9 , 0 );
setEffMoveKey( spep_1 + 29, ctga, 72.7, 287.9 , 0 );
setEffMoveKey( spep_1 + 31, ctga, 65.9, 299.2 , 0 );
setEffMoveKey( spep_1 + 33, ctga, 72.7, 287.9 , 0 );
setEffMoveKey( spep_1 + 37, ctga, 72.7, 287.9 , 0 );

setEffScaleKey( spep_1 + 17, ctga, 0.74, 0.74 );
setEffScaleKey( spep_1 + 19, ctga, 1.04, 1.04 );
setEffScaleKey( spep_1 + 21, ctga, 1.35, 1.35 );
setEffScaleKey( spep_1 + 37, ctga, 1.35, 1.35 );

setEffRotateKey( spep_1 + 17, ctga, -7 );
setEffRotateKey( spep_1 + 37, ctga, -7 );

setEffAlphaKey( spep_1 + 17, ctga, 255 );
setEffAlphaKey( spep_1 + 33, ctga, 255 );
setEffAlphaKey( spep_1 + 35, ctga, 128 );
setEffAlphaKey( spep_1 + 37, ctga, 0 );

ctbaki = entryEffectLife( spep_1 + 91, 10020, 18, 0x100, -1, 0, 30.5, 284.6 ); --バキッ
setEffMoveKey( spep_1 + 91, ctbaki, 30.5, 284.6 , 0 );
setEffMoveKey( spep_1 + 93, ctbaki, 34.8, 274.3 , 0 );
setEffMoveKey( spep_1 + 95, ctbaki, 35.2, 272.9 , 0 );
setEffMoveKey( spep_1 + 97, ctbaki, 29.8, 285.2 , 0 );
setEffMoveKey( spep_1 + 99, ctbaki, 35.2, 272.9 , 0 );
setEffMoveKey( spep_1 + 101, ctbaki, 35.2, 272.9 , 0 );
setEffMoveKey( spep_1 + 103, ctbaki, 29.8, 285.2 , 0 );
setEffMoveKey( spep_1 + 105, ctbaki, 35.2, 272.9 , 0 );
setEffMoveKey( spep_1 + 107, ctbaki, 29.8, 285.2 , 0 );
setEffMoveKey( spep_1 + 109, ctbaki, 29.8, 285.2 , 0 );

setEffScaleKey( spep_1 + 91, ctbaki, 1, 1 );
setEffScaleKey( spep_1 + 93, ctbaki, 1.19, 1.19 );
setEffScaleKey( spep_1 + 95, ctbaki, 1.37, 1.37 );
setEffScaleKey( spep_1 + 109, ctbaki, 1.37, 1.37 );

setEffRotateKey( spep_1 + 91, ctbaki, 0 );
setEffRotateKey( spep_1 + 109, ctbaki, 0 );

setEffAlphaKey( spep_1 + 91, ctbaki, 255 );
setEffAlphaKey( spep_1 + 105, ctbaki, 255 );
setEffAlphaKey( spep_1 + 107, ctbaki, 128 );
setEffAlphaKey( spep_1 + 109, ctbaki, 0 );

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_1 + 134, 6, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 144, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_1 + 22, 1001 );  --パンチ
playSe( spep_1 + 58, 1003 );  --パンチ
playSe( spep_1 + 95, 1010 );  --キック

-- ** 次の準備 ** --
spep_2 = spep_1 + 144;

------------------------------------------------------
-- 銃を構える(98F)
------------------------------------------------------

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_2 + 0, SP_05r, 96, 0x80, -1, 0, 0, 0 );  --銃を構える(ef_005)
setEffMoveKey( spep_2 + 0, kamae, 0, 0, 0 );
setEffMoveKey( spep_2 + 96, kamae, 0, 0, 0 );

setEffScaleKey( spep_2 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_2 + 96, kamae, 1.0, 1.0 );

setEffRotateKey( spep_2 + 0, kamae, 0 );
setEffRotateKey( spep_2 + 96, kamae, 0 );

setEffAlphaKey( spep_2 + 0, kamae, 255 );
setEffAlphaKey( spep_2 + 96, kamae, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_2 + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_2 + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 0, 906, 96, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0, 0 );
setEffMoveKey( spep_2 + 96, shuchusen2, 0, 0, 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.5, 1.5 );
setEffScaleKey( spep_2 + 96, shuchusen2, 1.5, 1.5 );

setEffRotateKey( spep_2 + 0, shuchusen2, 180 );
setEffRotateKey( spep_2 + 2, shuchusen2, 0 );
setEffRotateKey( spep_2 + 4, shuchusen2, 180 );
setEffRotateKey( spep_2 + 6, shuchusen2, 0 );
setEffRotateKey( spep_2 + 8, shuchusen2, 180 );
setEffRotateKey( spep_2 + 10, shuchusen2, 0 );
setEffRotateKey( spep_2 + 12, shuchusen2, 180 );
setEffRotateKey( spep_2 + 14, shuchusen2, 0 );
setEffRotateKey( spep_2 + 16, shuchusen2, 180 );
setEffRotateKey( spep_2 + 18, shuchusen2, 0 );
setEffRotateKey( spep_2 + 20, shuchusen2, 180 );
setEffRotateKey( spep_2 + 22, shuchusen2, 0 );
setEffRotateKey( spep_2 + 24, shuchusen2, 180 );
setEffRotateKey( spep_2 + 26, shuchusen2, 0 );
setEffRotateKey( spep_2 + 28, shuchusen2, 180 );
setEffRotateKey( spep_2 + 30, shuchusen2, 0 );
setEffRotateKey( spep_2 + 32, shuchusen2, 180 );
setEffRotateKey( spep_2 + 34, shuchusen2, 0 );
setEffRotateKey( spep_2 + 36, shuchusen2, 180 );
setEffRotateKey( spep_2 + 38, shuchusen2, 0 );
setEffRotateKey( spep_2 + 40, shuchusen2, 180 );
setEffRotateKey( spep_2 + 42, shuchusen2, 0 );
setEffRotateKey( spep_2 + 44, shuchusen2, 180 );
setEffRotateKey( spep_2 + 46, shuchusen2, 0 );
setEffRotateKey( spep_2 + 48, shuchusen2, 180 );
setEffRotateKey( spep_2 + 50, shuchusen2, 0 );
setEffRotateKey( spep_2 + 52, shuchusen2, 180 );
setEffRotateKey( spep_2 + 54, shuchusen2, 0 );
setEffRotateKey( spep_2 + 56, shuchusen2, 180 );
setEffRotateKey( spep_2 + 58, shuchusen2, 0 );
setEffRotateKey( spep_2 + 60, shuchusen2, 180 );
setEffRotateKey( spep_2 + 62, shuchusen2, 0 );
setEffRotateKey( spep_2 + 64, shuchusen2, 180 );
setEffRotateKey( spep_2 + 66, shuchusen2, 0 );
setEffRotateKey( spep_2 + 68, shuchusen2, 180 );
setEffRotateKey( spep_2 + 70, shuchusen2, 0 );
setEffRotateKey( spep_2 + 72, shuchusen2, 180 );
setEffRotateKey( spep_2 + 74, shuchusen2, 0 );
setEffRotateKey( spep_2 + 76, shuchusen2, 180 );
setEffRotateKey( spep_2 + 78, shuchusen2, 0 );
setEffRotateKey( spep_2 + 80, shuchusen2, 180 );
setEffRotateKey( spep_2 + 82, shuchusen2, 0 );
setEffRotateKey( spep_2 + 84, shuchusen2, 180 );
setEffRotateKey( spep_2 + 86, shuchusen2, 0 );
setEffRotateKey( spep_2 + 88, shuchusen2, 180 );
setEffRotateKey( spep_2 + 90, shuchusen2, 0 );
setEffRotateKey( spep_2 + 92, shuchusen2, 180 );
setEffRotateKey( spep_2 + 94, shuchusen2, 0 );
setEffRotateKey( spep_2 + 96, shuchusen2, 180 );

setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 96, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 96, shuchusen2, 255 );

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_2 + 16,  190006, 70, 0x100, -1, 0, -63.8, 517.8 ); --ゴゴゴ
setEffShake( spep_2 + 16, ctgogo, 70, 10 );

setEffMoveKey( spep_2 + 16, ctgogo, -123.8, 512.8 , 0 );
setEffMoveKey( spep_2 + 86, ctgogo, -123.8, 512.8 , 0 );

setEffScaleKey( spep_2 + 16, ctgogo, -0.75, 0.75 );
setEffScaleKey( spep_2 + 86, ctgogo, -0.75, 0.75 );

setEffRotateKey( spep_2 + 16, ctgogo, 0 );
setEffRotateKey( spep_2 + 86, ctgogo, 0 );

setEffAlphaKey( spep_2 + 16, ctgogo, 255 );
setEffAlphaKey( spep_2 + 86, ctgogo, 255 );

-- ** 敵の動き ** --
setDisp( spep_2 + 0, 1, 0 );

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_2 + 80, 8, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 98, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_2 + 18, SE_04 ); --顔カットイン

-- ** 次の準備 ** --
spep_3 = spep_2 + 98;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_3 + 0, 1507, 90, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen3, 88, 20 );

setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0, 0 );
setEffMoveKey( spep_3 + 90, shuchusen3, 0,0, 0 );

setEffScaleKey( spep_3 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen3, 0 );
setEffRotateKey( spep_3 + 90, shuchusen3, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen3, 255 );

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3 + 76, 10, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 ); --カットイン

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
-- 乱射する(108F)
------------------------------------------------------

-- ** エフェクト等 ** --
ransha = entryEffectLife( spep_4 + 0, SP_06r, 106, 0x80, -1, 0, 0, 0 );  --乱射する(ef_006)
setEffMoveKey( spep_4 + 0, ransha, 0, 0, 0 );
setEffMoveKey( spep_4 + 106, ransha, 0, 0, 0 );

setEffScaleKey( spep_4 + 0, ransha, 1.0, 1.0 );
setEffScaleKey( spep_4 + 106, ransha, 1.0, 1.0 );

setEffRotateKey( spep_4 + 0, ransha, 0 );
setEffRotateKey( spep_4 + 106, ransha, 0 );

setEffAlphaKey( spep_4 + 0, ransha, 255 );
setEffAlphaKey( spep_4 + 106, ransha, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 0, 906, 106, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 106, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen4, 1.5, 1.5 );
setEffScaleKey( spep_4 + 106, shuchusen4, 1.5, 1.5 );

setEffRotateKey( spep_4 + 0, shuchusen4, 180 );
setEffRotateKey( spep_4 + 2, shuchusen4, 0 );
setEffRotateKey( spep_4 + 4, shuchusen4, 180 );
setEffRotateKey( spep_4 + 6, shuchusen4, 0 );
setEffRotateKey( spep_4 + 8, shuchusen4, 180 );
setEffRotateKey( spep_4 + 10, shuchusen4, 0 );
setEffRotateKey( spep_4 + 12, shuchusen4, 180 );
setEffRotateKey( spep_4 + 14, shuchusen4, 0 );
setEffRotateKey( spep_4 + 16, shuchusen4, 180 );
setEffRotateKey( spep_4 + 18, shuchusen4, 0 );
setEffRotateKey( spep_4 + 20, shuchusen4, 180 );
setEffRotateKey( spep_4 + 22, shuchusen4, 0 );
setEffRotateKey( spep_4 + 24, shuchusen4, 180 );
setEffRotateKey( spep_4 + 26, shuchusen4, 0 );
setEffRotateKey( spep_4 + 28, shuchusen4, 180 );
setEffRotateKey( spep_4 + 30, shuchusen4, 0 );
setEffRotateKey( spep_4 + 32, shuchusen4, 180 );
setEffRotateKey( spep_4 + 34, shuchusen4, 0 );
setEffRotateKey( spep_4 + 36, shuchusen4, 180 );
setEffRotateKey( spep_4 + 38, shuchusen4, 0 );
setEffRotateKey( spep_4 + 40, shuchusen4, 180 );
setEffRotateKey( spep_4 + 42, shuchusen4, 0 );
setEffRotateKey( spep_4 + 44, shuchusen4, 180 );
setEffRotateKey( spep_4 + 46, shuchusen4, 0 );
setEffRotateKey( spep_4 + 48, shuchusen4, 180 );
setEffRotateKey( spep_4 + 50, shuchusen4, 0 );
setEffRotateKey( spep_4 + 52, shuchusen4, 180 );
setEffRotateKey( spep_4 + 54, shuchusen4, 0 );
setEffRotateKey( spep_4 + 56, shuchusen4, 180 );
setEffRotateKey( spep_4 + 58, shuchusen4, 0 );
setEffRotateKey( spep_4 + 60, shuchusen4, 180 );
setEffRotateKey( spep_4 + 62, shuchusen4, 0 );
setEffRotateKey( spep_4 + 64, shuchusen4, 180 );
setEffRotateKey( spep_4 + 66, shuchusen4, 0 );
setEffRotateKey( spep_4 + 68, shuchusen4, 180 );
setEffRotateKey( spep_4 + 70, shuchusen4, 0 );
setEffRotateKey( spep_4 + 72, shuchusen4, 180 );
setEffRotateKey( spep_4 + 74, shuchusen4, 0 );
setEffRotateKey( spep_4 + 76, shuchusen4, 180 );
setEffRotateKey( spep_4 + 78, shuchusen4, 0 );
setEffRotateKey( spep_4 + 80, shuchusen4, 180 );
setEffRotateKey( spep_4 + 82, shuchusen4, 0 );
setEffRotateKey( spep_4 + 84, shuchusen4, 180 );
setEffRotateKey( spep_4 + 86, shuchusen4, 0 );
setEffRotateKey( spep_4 + 88, shuchusen4, 180 );
setEffRotateKey( spep_4 + 90, shuchusen4, 0 );
setEffRotateKey( spep_4 + 92, shuchusen4, 180 );
setEffRotateKey( spep_4 + 94, shuchusen4, 0 );
setEffRotateKey( spep_4 + 96, shuchusen4, 180 );
setEffRotateKey( spep_4 + 98, shuchusen4, 0 );
setEffRotateKey( spep_4 + 100, shuchusen4, 180 );
setEffRotateKey( spep_4 + 102, shuchusen4, 0 );
setEffRotateKey( spep_4 + 104, shuchusen4, 180 );
setEffRotateKey( spep_4 + 106, shuchusen4, 0 );

setEffRotateKey( spep_4 + 0, shuchusen4, 0 );
setEffRotateKey( spep_4 + 106, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 106, shuchusen4, 255 );

-- ** 書き文字エントリー ** --
ctgaga = entryEffectLife( spep_4 + 0, 10002, 106, 0x100, -1, 0, 77.3, 245.6 ); --ガガガッ
setEffShake( spep_4 + 4, ctgaga, 102, 25 );

setEffMoveKey( spep_4 + 0, ctgaga, 77.3, 245.6 , 0 );
setEffMoveKey( spep_4 + 2, ctgaga, 110.9, 236.7 , 0 );
setEffMoveKey( spep_4 + 4, ctgaga, 126.5, 245.8 , 0 );
setEffMoveKey( spep_4 + 6, ctgaga, 142.5, 229.8 , 0 );
setEffMoveKey( spep_4 + 106, ctgaga, 142.5, 229.8 , 0 );

setEffScaleKey( spep_4 + 0, ctgaga, 0.15, 0.15 );
setEffScaleKey( spep_4 + 2, ctgaga, 0.69, 0.69 );
setEffScaleKey( spep_4 + 4, ctgaga, 2.5, 2.5 );
setEffScaleKey( spep_4 + 106, ctgaga, 2.5, 2.5 );

setEffRotateKey( spep_4 + 0, ctgaga, 24.4 );
setEffRotateKey( spep_4 + 106, ctgaga, 24.4 );

setEffAlphaKey( spep_4 + 0, ctgaga, 255 );
setEffAlphaKey( spep_4 + 106, ctgaga, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 88, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_4 + 98, 6, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
-- ** 音 ** --
SE_1149_1 = playSe( spep_4 + 0, 1149 ); --マシンガン
stopSe(spep_4 + 106, SE_1149_1, 2 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 108;

------------------------------------------------------
-- ヒット(78F)
------------------------------------------------------

-- ** エフェクト等 ** --
hitf = entryEffectLife( spep_5 + 0, SP_07, 76, 0x100, -1, 0, -550, 70 );  --ヒット(ef_007)
setEffMoveKey( spep_5 + 0, hitf, -550, 70, 0 );
setEffMoveKey( spep_5 + 76, hitf, -550, 70, 0 );

setEffScaleKey( spep_5 + 0, hitf, 1.0, 1.0 );
setEffScaleKey( spep_5 + 76, hitf, 1.0, 1.0 );

setEffRotateKey( spep_5 + 0, hitf, 0 );
setEffRotateKey( spep_5 + 76, hitf, 0 );

setEffAlphaKey( spep_5 + 0, hitf, 255 );
setEffAlphaKey( spep_5 + 76, hitf, 255 );

hitb = entryEffectLife( spep_5 + 0, SP_08, 76, 0x80, -1, 0, 0, 0 );  --背景(ef_008)
setEffMoveKey( spep_5 + 0, hitb, 0, 0, 0 );
setEffMoveKey( spep_5 + 76, hitb, 0, 0, 0 );

setEffScaleKey( spep_5 + 0, hitb, 1.0, 1.0 );
setEffScaleKey( spep_5 + 76, hitb, 1.0, 1.0 );

setEffRotateKey( spep_5 + 0, hitb, 0 );
setEffRotateKey( spep_5 + 76, hitb, 0 );

setEffAlphaKey( spep_5 + 0, hitb, 255 );
setEffAlphaKey( spep_5 + 76, hitb, 255 );

-- ** 流線 ** --
ryusen4 = entryEffectLife( spep_5 + 0, 921, 76, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_5 + 0, ryusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 76, ryusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, ryusen4, 1, 1 );
setEffScaleKey( spep_5 + 76, ryusen4, 1, 1 );

setEffRotateKey( spep_5 + 0, ryusen4, 0 );
setEffRotateKey( spep_5 + 76, ryusen4, 0 );

setEffAlphaKey( spep_5 + 0, ryusen4, 255 );
setEffAlphaKey( spep_5 + 76, ryusen4, 255 );

-- ** 敵の動き ** --
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 108 );
changeAnime( spep_5 + 34, 1, 106 );

setMoveKey( spep_5 + 0, 1, 14.4, 11.6 , 0 );
setMoveKey( spep_5 + 2, 1, 29.5, 22.1 , 0 );
setMoveKey( spep_5 + 4, 1, 26.6, 16.5 , 0 );
setMoveKey( spep_5 + 6, 1, 39.7, 23 , 0 );
setMoveKey( spep_5 + 8, 1, 36.8, 17.5 , 0 );
setMoveKey( spep_5 + 10, 1, 49.9, 24 , 0 );
setMoveKey( spep_5 + 12, 1, 47, 18.5 , 0 );
setMoveKey( spep_5 + 14, 1, 60.1, 25 , 0 );
setMoveKey( spep_5 + 16, 1, 57.2, 19.5 , 0 );
setMoveKey( spep_5 + 18, 1, 70.3, 26 , 0 );
setMoveKey( spep_5 + 20, 1, 67.4, 20.5 , 0 );
setMoveKey( spep_5 + 22, 1, 80.5, 27 , 0 );
setMoveKey( spep_5 + 24, 1, 77.7, 21.5 , 0 );
setMoveKey( spep_5 + 26, 1, 90.8, 28 , 0 );
setMoveKey( spep_5 + 28, 1, 87.9, 22.5 , 0 );
setMoveKey( spep_5 + 30, 1, 101.1, 29.1 , 0 );
setMoveKey( spep_5 + 33, 1, 98.2, 23.6 , 0 );
setMoveKey( spep_5 + 34, 1, 101.5, 45 , 0 );
setMoveKey( spep_5 + 36, 1, 94.7, 38.9 , 0 );
setMoveKey( spep_5 + 38, 1, 106.5, 44.5 , 0 );
setMoveKey( spep_5 + 40, 1, 104.8, 37.7 , 0 );
setMoveKey( spep_5 + 42, 1, 121.6, 42.7 , 0 );
setMoveKey( spep_5 + 44, 1, 124.9, 35.4 , 0 );
setMoveKey( spep_5 + 46, 1, 146.7, 39.8 , 0 );
setMoveKey( spep_5 + 48, 1, 155, 31.9 , 0 );
setMoveKey( spep_5 + 50, 1, 181.9, 35.8 , 0 );
setMoveKey( spep_5 + 52, 1, 195.2, 27.3 , 0 );
setMoveKey( spep_5 + 54, 1, 227.1, 30.6 , 0 );
setMoveKey( spep_5 + 56, 1, 245.5, 21.5 , 0 );
setMoveKey( spep_5 + 58, 1, 282.4, 24.2 , 0 );
setMoveKey( spep_5 + 60, 1, 305.8, 14.6 , 0 );
setMoveKey( spep_5 + 62, 1, 347.8, 16.7 , 0 );
setMoveKey( spep_5 + 64, 1, 376.3, 6.5 , 0 );
setMoveKey( spep_5 + 66, 1, 423.3, 8 , 0 );
setMoveKey( spep_5 + 68, 1, 456.8, -2.8 , 0 );
setMoveKey( spep_5 + 70, 1, 508.9, -1.9 , 0 );
setMoveKey( spep_5 + 72, 1, 547.5, -13.3 , 0 );
setMoveKey( spep_5 + 74, 1, 555.5, -7.3 , 0 );
setMoveKey( spep_5 + 76, 1, 547.5, -13.3 , 0 );

setScaleKey( spep_5 + 0, 1, 1.7, 1.7 );
setScaleKey( spep_5 + 34, 1, 1.7, 1.7 );
setScaleKey( spep_5 + 36, 1, 1.69, 1.69 );
setScaleKey( spep_5 + 38, 1, 1.69, 1.69 );
setScaleKey( spep_5 + 40, 1, 1.67, 1.67 );
setScaleKey( spep_5 + 42, 1, 1.65, 1.65 );
setScaleKey( spep_5 + 44, 1, 1.63, 1.63 );
setScaleKey( spep_5 + 46, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 48, 1, 1.56, 1.56 );
setScaleKey( spep_5 + 50, 1, 1.52, 1.52 );
setScaleKey( spep_5 + 52, 1, 1.48, 1.48 );
setScaleKey( spep_5 + 54, 1, 1.42, 1.42 );
setScaleKey( spep_5 + 56, 1, 1.37, 1.37 );
setScaleKey( spep_5 + 58, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 60, 1, 1.24, 1.24 );
setScaleKey( spep_5 + 62, 1, 1.16, 1.16 );
setScaleKey( spep_5 + 64, 1, 1.08, 1.08 );
setScaleKey( spep_5 + 66, 1, 1, 1 );
setScaleKey( spep_5 + 68, 1, 0.91, 0.91 );
setScaleKey( spep_5 + 70, 1, 0.81, 0.81 );
setScaleKey( spep_5 + 72, 1, 0.71, 0.71 );
setScaleKey( spep_5 + 76, 1, 0.71, 0.71 );

setRotateKey( spep_5 + 0, 1, -4.3 );
setRotateKey( spep_5 + 2, 1, -3.3 );
setRotateKey( spep_5 + 4, 1, -2.4 );
setRotateKey( spep_5 + 6, 1, -1.4 );
setRotateKey( spep_5 + 8, 1, -0.4 );
setRotateKey( spep_5 + 10, 1, 0.6 );
setRotateKey( spep_5 + 12, 1, 1.6 );
setRotateKey( spep_5 + 14, 1, 2.6 );
setRotateKey( spep_5 + 16, 1, 3.5 );
setRotateKey( spep_5 + 18, 1, 4.5 );
setRotateKey( spep_5 + 20, 1, 5.5 );
setRotateKey( spep_5 + 22, 1, 6.5 );
setRotateKey( spep_5 + 24, 1, 7.5 );
setRotateKey( spep_5 + 26, 1, 8.5 );
setRotateKey( spep_5 + 28, 1, 9.4 );
setRotateKey( spep_5 + 30, 1, 10.4 );
setRotateKey( spep_5 + 33, 1, 11.4 );
setRotateKey( spep_5 + 34, 1, -49.9 );
setRotateKey( spep_5 + 36, 1, -49.8 );
setRotateKey( spep_5 + 38, 1, -49.3 );
setRotateKey( spep_5 + 40, 1, -48.5 );
setRotateKey( spep_5 + 42, 1, -47.4 );
setRotateKey( spep_5 + 44, 1, -46 );
setRotateKey( spep_5 + 46, 1, -44.3 );
setRotateKey( spep_5 + 48, 1, -42.3 );
setRotateKey( spep_5 + 50, 1, -40 );
setRotateKey( spep_5 + 52, 1, -37.3 );
setRotateKey( spep_5 + 54, 1, -34.4 );
setRotateKey( spep_5 + 56, 1, -31.1 );
setRotateKey( spep_5 + 58, 1, -27.5 );
setRotateKey( spep_5 + 60, 1, -23.7 );
setRotateKey( spep_5 + 62, 1, -19.5 );
setRotateKey( spep_5 + 64, 1, -15 );
setRotateKey( spep_5 + 66, 1, -10.1 );
setRotateKey( spep_5 + 68, 1, -5 );
setRotateKey( spep_5 + 70, 1, 0.4 );
setRotateKey( spep_5 + 72, 1, 6.2 );
setRotateKey( spep_5 + 76, 1, 6.2 );

-- ** 書き文字エントリー ** --
ctdoga = entryEffectLife( spep_5 + 0, 10017, 76, 0x100, -1, 0, 84.6, 345.6 ); --ドガガガッ
setEffMoveKey( spep_5 + 0, ctdoga, 84.6, 345.6 , 0 );
setEffMoveKey( spep_5 + 2, ctdoga, 65.4, 332.8 , 0 );
setEffMoveKey( spep_5 + 4, ctdoga, 84.6, 345.6 , 0 );
setEffMoveKey( spep_5 + 6, ctdoga, 65.4, 332.8 , 0 );
setEffMoveKey( spep_5 + 8, ctdoga, 84.6, 345.6 , 0 );
setEffMoveKey( spep_5 + 10, ctdoga, 65.4, 332.8 , 0 );
setEffMoveKey( spep_5 + 12, ctdoga, 84.6, 345.6 , 0 );
setEffMoveKey( spep_5 + 14, ctdoga, 65.4, 332.8 , 0 );
setEffMoveKey( spep_5 + 16, ctdoga, 84.6, 345.6 , 0 );
setEffMoveKey( spep_5 + 18, ctdoga, 65.4, 332.8 , 0 );
setEffMoveKey( spep_5 + 20, ctdoga, 84.6, 345.6 , 0 );
setEffMoveKey( spep_5 + 22, ctdoga, 65.4, 332.8 , 0 );
setEffMoveKey( spep_5 + 24, ctdoga, 84.6, 345.6 , 0 );
setEffMoveKey( spep_5 + 26, ctdoga, 65.4, 332.8 , 0 );
setEffMoveKey( spep_5 + 28, ctdoga, 84.6, 345.6 , 0 );
setEffMoveKey( spep_5 + 30, ctdoga, 65.4, 332.8 , 0 );
setEffMoveKey( spep_5 + 32, ctdoga, 84.6, 345.6 , 0 );
setEffMoveKey( spep_5 + 34, ctdoga, 65.4, 332.8 , 0 );
setEffMoveKey( spep_5 + 36, ctdoga, 84.6, 345.6 , 0 );
setEffMoveKey( spep_5 + 38, ctdoga, 65.4, 332.8 , 0 );
setEffMoveKey( spep_5 + 40, ctdoga, 84.6, 345.6 , 0 );
setEffMoveKey( spep_5 + 42, ctdoga, 65.4, 332.8 , 0 );
setEffMoveKey( spep_5 + 44, ctdoga, 84.6, 345.6 , 0 );
setEffMoveKey( spep_5 + 46, ctdoga, 65.4, 332.8 , 0 );
setEffMoveKey( spep_5 + 48, ctdoga, 84.6, 345.6 , 0 );
setEffMoveKey( spep_5 + 50, ctdoga, 65.4, 332.8 , 0 );
setEffMoveKey( spep_5 + 52, ctdoga, 84.6, 345.6 , 0 );
setEffMoveKey( spep_5 + 54, ctdoga, 65.4, 332.8 , 0 );
setEffMoveKey( spep_5 + 56, ctdoga, 84.6, 345.6 , 0 );
setEffMoveKey( spep_5 + 58, ctdoga, 65.4, 332.8 , 0 );
setEffMoveKey( spep_5 + 60, ctdoga, 84.6, 345.6 , 0 );
setEffMoveKey( spep_5 + 62, ctdoga, 65.4, 332.8 , 0 );
setEffMoveKey( spep_5 + 64, ctdoga, 84.6, 345.6 , 0 );
setEffMoveKey( spep_5 + 66, ctdoga, 65.4, 332.8 , 0 );
setEffMoveKey( spep_5 + 68, ctdoga, 84.6, 345.6 , 0 );
setEffMoveKey( spep_5 + 70, ctdoga, 65.4, 332.8 , 0 );
setEffMoveKey( spep_5 + 72, ctdoga, 84.6, 345.6 , 0 );
setEffMoveKey( spep_5 + 74, ctdoga, 65.4, 332.8 , 0 );
setEffMoveKey( spep_5 + 76, ctdoga, 84.6, 345.6 , 0 );

setEffScaleKey( spep_5 + 0, ctdoga, 2.5, 2.5 );
setEffScaleKey( spep_5 + 76, ctdoga, 2.5, 2.5 );

setEffRotateKey( spep_5 + 0, ctdoga, 16.7 );
setEffRotateKey( spep_5 + 76, ctdoga, 16.7 );

setEffAlphaKey( spep_5 + 0, ctdoga, 255 );
setEffAlphaKey( spep_5 + 76, ctdoga, 255 );

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_5 + 50, 16, 12, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 76, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 音 ** --
SE_1149_2 = playSe( spep_5 + 0, 1149 ); --マシンガン
stopSe(spep_5 + 68, SE_1149_2, 15 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 78;

------------------------------------------------------
-- 敵吹っ飛びシーン(112F)
------------------------------------------------------
-- ** エフェクト等 ** --
hitf = entryEffectLife( spep_6 + 0, SP_09, 112, 0x80, -1, 0, 0, 0 );  --背景(ef_009)
setEffMoveKey( spep_6 + 0, hitf, 0, 0, 0 );
setEffMoveKey( spep_6 + 112, hitf, 0, 0, 0 );

setEffScaleKey( spep_6 + 0, hitf, 1.0, 1.0 );
setEffScaleKey( spep_6 + 112, hitf, 1.0, 1.0 );

setEffRotateKey( spep_6 + 0, hitf, 0 );
setEffRotateKey( spep_6 + 112, hitf, 0 );

setEffAlphaKey( spep_6 + 0, hitf, 255 );
setEffAlphaKey( spep_6 + 112, hitf, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_6 + 2, 1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_6 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_6 + 112, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_6 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_6 + 112, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_6 + 2, hibiware, 0 );
setEffRotateKey( spep_6 + 112, hibiware, 0 );

setEffAlphaKey( spep_6 + 2, hibiware, 0 );
setEffAlphaKey( spep_6 + 13, hibiware, 0 );
setEffAlphaKey( spep_6 + 14, hibiware, 255 );
setEffAlphaKey( spep_6 + 112, hibiware, 255 );

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_6 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 14, shuchusen6, 32, 25 );

setEffMoveKey( spep_6 + 14, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen6, 1, 1 );
setEffScaleKey( spep_6 + 46, shuchusen6, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen6, 0 );
setEffRotateKey( spep_6 + 46, shuchusen6, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen6, 255 );
setEffAlphaKey( spep_6 + 28, shuchusen6, 255 );
setEffAlphaKey( spep_6 + 30, shuchusen6, 252 );
setEffAlphaKey( spep_6 + 32, shuchusen6, 242 );
setEffAlphaKey( spep_6 + 34, shuchusen6, 227 );
setEffAlphaKey( spep_6 + 36, shuchusen6, 205 );
setEffAlphaKey( spep_6 + 38, shuchusen6, 176 );
setEffAlphaKey( spep_6 + 40, shuchusen6, 142 );
setEffAlphaKey( spep_6 + 42, shuchusen6, 101 );
setEffAlphaKey( spep_6 + 44, shuchusen6, 54 );
setEffAlphaKey( spep_6 + 46, shuchusen6, 0 );

shuchusen7 = entryEffectLife( spep_6 + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_6 + 14, shuchusen7, 0, 0 , 0 );
setEffMoveKey( spep_6 + 112, shuchusen7, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen7, 1, 1 );
setEffScaleKey( spep_6 + 112, shuchusen7, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen7, 0 );
setEffRotateKey( spep_6 + 112, shuchusen7, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen7, 255 );
setEffAlphaKey( spep_6 + 112, shuchusen7, 255 );

-- ** 書き文字エントリー ** --
ctga2 = entryEffectLife( spep_6 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_6 + 14, ctga2, 14, 20 );

setEffMoveKey( spep_6 + 14, ctga2, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 28, ctga2, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 112, ctga2, 3.9, 316.1 , 0 );

setEffScaleKey( spep_6 + 14, ctga2, 3.2, 3.2 );
setEffScaleKey( spep_6 + 112, ctga2, 3.2, 3.2 );

setEffRotateKey( spep_6 + 14, ctga2, -10.9 );
setEffRotateKey( spep_6 + 15, ctga2, -10.9 );
setEffRotateKey( spep_6 + 16, ctga2, -14.9 );
setEffRotateKey( spep_6 + 17, ctga2, -14.9 );
setEffRotateKey( spep_6 + 18, ctga2, -10.9 );
setEffRotateKey( spep_6 + 19, ctga2, -10.9 );
setEffRotateKey( spep_6 + 20, ctga2, -14.9 );
setEffRotateKey( spep_6 + 21, ctga2, -14.9 );
setEffRotateKey( spep_6 + 22, ctga2, -10.9 );
setEffRotateKey( spep_6 + 23, ctga2, -10.9 );
setEffRotateKey( spep_6 + 24, ctga2, -14.9 );
setEffRotateKey( spep_6 + 25, ctga2, -14.9 );
setEffRotateKey( spep_6 + 26, ctga2, -10.9 );
setEffRotateKey( spep_6 + 27, ctga2, -10.9 );
setEffRotateKey( spep_6 + 28, ctga2, -14.9 );
setEffRotateKey( spep_6 + 112, ctga2, -14.9 );

setEffAlphaKey( spep_6 + 14, ctga2, 255 );
setEffAlphaKey( spep_6 + 112, ctga2, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
changeAnime( spep_6 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_6 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_6 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_6 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_6 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_6 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_6 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_6 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_6 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_6 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_6 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_6 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_6 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_6 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_6 + 122, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_6 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_6 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_6 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_6 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_6 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_6 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 122, 1, 1.6, 1.6 );

setRotateKey( spep_6 + 0, 1, -40 );
setRotateKey( spep_6 + 1, 1, -40 );
setRotateKey( spep_6 + 2, 1, 80 );
setRotateKey( spep_6 + 3, 1, 80 );
setRotateKey( spep_6 + 4, 1, 200 );
setRotateKey( spep_6 + 5, 1, 200 );
setRotateKey( spep_6 + 6, 1, 360 );
setRotateKey( spep_6 + 7, 1, 360 );
setRotateKey( spep_6 + 8, 1, 558 );
setRotateKey( spep_6 + 9, 1, 558 );
setRotateKey( spep_6 + 10, 1, 425 );
setRotateKey( spep_6 + 11, 1, 425 );
setRotateKey( spep_6 + 12, 1, -40 );
setRotateKey( spep_6 + 122, 1, -40 );

-- ** 音 ** --
playSe( spep_6 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 10 );
endPhase( spep_6 + 112 );

end