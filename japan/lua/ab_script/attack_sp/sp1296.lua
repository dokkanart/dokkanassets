--シーラス(融合体)_乱舞・裂煌

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
SP_01 = 153660 --前方突撃
SP_02 = 153661 --加速〜敵に接近
SP_03 = 153662 --二連撃
SP_04 = 153663 --セリフカットイン
SP_05 = 153664 --フィニッシュ
SP_06 = 153670 --フィニッシュ背景

--敵側
SP_01r = 153665 --前方突撃
SP_02r = 153666 --加速〜敵に接近
SP_03r = 153667 --二連撃
SP_04r = 153668 --セリフカットイン
SP_05r = 153669 --フィニッシュ

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
-- 前方突撃(56F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
dash = entryEffectLife( spep_0 + 0, SP_01, 56, 0x100, -1, 0, 0, 0 );  --前方突撃(ef_001)
setEffMoveKey( spep_0 + 0, dash, 0, 0 , 0 );
setEffMoveKey( spep_0 + 56, dash, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, dash, 1.0, 1.0 );
setEffScaleKey( spep_0 + 56, dash, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, dash, 0 );
setEffRotateKey( spep_0 + 56, dash, 0 );
setEffAlphaKey( spep_0 + 0, dash, 255 );
setEffAlphaKey( spep_0 + 55, dash, 255 );
setEffAlphaKey( spep_0 + 56, dash, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 56, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** 音 ** --
playSe( spep_0 + 2, 9 );  --突進

-- ** 次の準備 ** --
spep_1 = spep_0 + 56;

------------------------------------------------------
-- 加速〜敵に接近(48F)
------------------------------------------------------

-- ** エフェクト等 ** --
kasoku = entryEffectLife( spep_1 + 0, SP_02, 48, 0x100, -1, 0, 0, 0 );  --加速〜敵に接近(ef_002)
setEffMoveKey( spep_1 + 0, kasoku, 0, 0 , 0 );
setEffMoveKey( spep_1 + 48, kasoku, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kasoku, 1.0, 1.0 );
setEffScaleKey( spep_1 + 48, kasoku, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kasoku, 0 );
setEffRotateKey( spep_1 + 48, kasoku, 0 );
setEffAlphaKey( spep_1 + 0, kasoku, 255 );
setEffAlphaKey( spep_1 + 48, kasoku, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 100 );

setMoveKey( spep_1 + 0, 1, 460.8, 21 , 0 );
setMoveKey( spep_1 + 2, 1, 348.2, 21.1 , 0 );
setMoveKey( spep_1 + 4, 1, 297.4, 21.1 , 0 );
setMoveKey( spep_1 + 6, 1, 261.9, 21.1 , 0 );
setMoveKey( spep_1 + 8, 1, 234.4, 21.1 , 0 );
setMoveKey( spep_1 + 10, 1, 212.2, 21.1 , 0 );
setMoveKey( spep_1 + 12, 1, 193.6, 21.1 , 0 );
setMoveKey( spep_1 + 14, 1, 177.9, 21.1 , 0 );
setMoveKey( spep_1 + 16, 1, 164.3, 21.1 , 0 );
setMoveKey( spep_1 + 18, 1, 152.6, 21.1 , 0 );
setMoveKey( spep_1 + 20, 1, 142.3, 21.1 , 0 );
setMoveKey( spep_1 + 22, 1, 133.3, 21.1 , 0 );
setMoveKey( spep_1 + 24, 1, 125.4, 21.1 , 0 );
setMoveKey( spep_1 + 26, 1, 118.4, 21.1 , 0 );
setMoveKey( spep_1 + 28, 1, 112.3, 21.1 , 0 );

setScaleKey( spep_1 + 0, 1, 0.05, 0.05 );
setScaleKey( spep_1 + 2, 1, 0.09, 0.09 );
setScaleKey( spep_1 + 4, 1, 0.11, 0.11 );
setScaleKey( spep_1 + 6, 1, 0.13, 0.13 );
setScaleKey( spep_1 + 8, 1, 0.14, 0.14 );
setScaleKey( spep_1 + 10, 1, 0.15, 0.15 );
setScaleKey( spep_1 + 12, 1, 0.16, 0.16 );
setScaleKey( spep_1 + 14, 1, 0.16, 0.16 );
setScaleKey( spep_1 + 16, 1, 0.17, 0.17 );
setScaleKey( spep_1 + 18, 1, 0.17, 0.17 );
setScaleKey( spep_1 + 20, 1, 0.18, 0.18 );
setScaleKey( spep_1 + 26, 1, 0.18, 0.18 );
setScaleKey( spep_1 + 28, 1, 0.19, 0.19 );

setRotateKey( spep_1 + 0, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 48, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** 音 ** --
SE1 = playSe( spep_1 + 2, 1072 );  --迫る

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE1, 0 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
setDisp( SP_dodge + 0, 1, 0 );

setMoveKey( SP_dodge + 0, 1, 106.9, 21.1 , 0 );
setMoveKey( SP_dodge + 2, 1, 102.2, 21.1 , 0 );
setMoveKey( SP_dodge + 4, 1, 98, 21.1 , 0 );
setMoveKey( SP_dodge + 6, 1, 94.4, 21.1 , 0 );
setMoveKey( SP_dodge + 8, 1, 91.3, 21.1 , 0 );
setMoveKey( SP_dodge + 10, 1, 88.6, 21.1 , 0 );

setScaleKey( SP_dodge + 0, 1, 0.19, 0.19 );
setScaleKey( SP_dodge + 10, 1, 0.19, 0.19 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

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
-- 回避しなかった場合
------------------------------------------------------

-- ** 敵キャラクター ** --
setDisp( spep_1 + 46, 1, 0 );

setMoveKey( spep_1 + 30, 1, 106.9, 21.1 , 0 );
setMoveKey( spep_1 + 32, 1, 102.2, 21.1 , 0 );
setMoveKey( spep_1 + 34, 1, 98, 21.1 , 0 );
setMoveKey( spep_1 + 36, 1, 94.4, 21.1 , 0 );
setMoveKey( spep_1 + 38, 1, 91.3, 21.1 , 0 );
setMoveKey( spep_1 + 40, 1, 88.6, 21.1 , 0 );
setMoveKey( spep_1 + 42, 1, 86.3, 21.1 , 0 );
setMoveKey( spep_1 + 44, 1, 84.4, 21.1 , 0 );
setMoveKey( spep_1 + 46, 1, 82.8, 21.1 , 0 );

setScaleKey( spep_1 + 36, 1, 0.19, 0.19 );
setScaleKey( spep_1 + 38, 1, 0.2, 0.2 );
setScaleKey( spep_1 + 46, 1, 0.2, 0.2 );

setRotateKey( spep_1 + 46, 1, 0 );

-- ** 白フェード ** --
entryFade( spep_1 + 44, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 48;

------------------------------------------------------
-- 二連撃(156F)
------------------------------------------------------

-- ** エフェクト等 ** --
attack = entryEffectLife( spep_2 + 0, SP_03, 156, 0x100, -1, 0, 0, 0 );  --二連撃(ef_003)
setEffMoveKey( spep_2 + 0, attack, 0, 0 , 0 );
setEffMoveKey( spep_2 + 156, attack, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack, 1.0, 1.0 );
setEffScaleKey( spep_2 + 156, attack, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack, 0 );
setEffRotateKey( spep_2 + 156, attack, 0 );
setEffAlphaKey( spep_2 + 0, attack, 255 );
setEffAlphaKey( spep_2 + 156, attack, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 156, 1, 0 );
changeAnime( spep_2 + 0, 1, 100 );
changeAnime( spep_2 -3 + 66, 1, 108 );
changeAnime( spep_2 -3 + 108, 1, 106 );

setMoveKey( spep_2 + 0, 1, 430.3, 139.1 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 349.2, 121.9 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 324.5, 116.6 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 304, 112.3 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 286.4, 108.5 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 271.2, 105.3 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 257.7, 102.4 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 245.8, 99.9 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 235.1, 97.6 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 225.5, 95.6 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 216.8, 93.7 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 209, 92.1 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 202, 90.6 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 195.7, 89.2 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 190.1, 88 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 185, 86.9 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 180.4, 86 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 176.4, 85.1 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 172.8, 84.4 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 169.7, 83.7 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 166.9, 83.1 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 164.6, 82.6 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 162.6, 82.2 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 161, 81.8 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 159.7, 81.6 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 158.7, 81.4 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 158, 81.2 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 157.6, 81.1 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 157.5, 81.1 , 0 );
setMoveKey( spep_2 -3 + 65, 1, 157.5, 81.1 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 220.8, 123.3 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 220.8, 123.3 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 168.5, 97.1 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 173.7, 94.4 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 165.6, 96.6 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 170.6, 91.3 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 168.5, 98.5 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 170.9, 90.6 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 168.3, 97.9 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 173.8, 91.9 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 167.9, 97.2 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 172.4, 94 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 167.1, 98.3 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 171, 92.5 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 170.2, 98.2 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 173.1, 91.6 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 166.4, 94.1 , 0 );
setMoveKey( spep_2 -3 + 107, 1, 166.4, 94.1 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 184.2, 162.4 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 179.5, 164 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 144.7, 123.2 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 137.3, 124.8 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 145.4, 124.5 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 136.3, 125.6 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 143.4, 123.5 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 138.2, 125.7 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 143.5, 122.4 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 139.1, 127.4 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 144.9, 124.8 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 148.4, 123.9 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 142, 123.2 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 148.5, 124 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 142.9, 128 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 147.6, 124.3 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 147.8, 124.4 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 148, 124.5 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 148.3, 124.6 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 148.6, 124.8 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 149.2, 125 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 150, 125.3 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 151.2, 125.9 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 153.6, 126.9 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 159.6, 129.5 , 0 );
setMoveKey( spep_2 + 156, 1, 168.4, 133.2 , 0 );

setScaleKey( spep_2 + 0, 1, 0.5, 0.5 );
setScaleKey( spep_2 -3 + 4, 1, 0.63, 0.63 );
setScaleKey( spep_2 -3 + 6, 1, 0.69, 0.69 );
setScaleKey( spep_2 -3 + 8, 1, 0.73, 0.73 );
setScaleKey( spep_2 -3 + 10, 1, 0.76, 0.76 );
setScaleKey( spep_2 -3 + 12, 1, 0.79, 0.79 );
setScaleKey( spep_2 -3 + 14, 1, 0.82, 0.82 );
setScaleKey( spep_2 -3 + 16, 1, 0.84, 0.84 );
setScaleKey( spep_2 -3 + 18, 1, 0.86, 0.86 );
setScaleKey( spep_2 -3 + 20, 1, 0.88, 0.88 );
setScaleKey( spep_2 -3 + 22, 1, 0.89, 0.89 );
setScaleKey( spep_2 -3 + 24, 1, 0.91, 0.91 );
setScaleKey( spep_2 -3 + 26, 1, 0.92, 0.92 );
setScaleKey( spep_2 -3 + 28, 1, 0.93, 0.93 );
setScaleKey( spep_2 -3 + 30, 1, 0.94, 0.94 );
setScaleKey( spep_2 -3 + 32, 1, 0.95, 0.95 );
setScaleKey( spep_2 -3 + 34, 1, 0.96, 0.96 );
setScaleKey( spep_2 -3 + 36, 1, 0.97, 0.97 );
setScaleKey( spep_2 -3 + 38, 1, 0.97, 0.97 );
setScaleKey( spep_2 -3 + 40, 1, 0.98, 0.98 );
setScaleKey( spep_2 -3 + 42, 1, 0.98, 0.98 );
setScaleKey( spep_2 -3 + 44, 1, 0.99, 0.99 );
setScaleKey( spep_2 -3 + 48, 1, 0.99, 0.99 );
setScaleKey( spep_2 -3 + 50, 1, 1, 1 );
setScaleKey( spep_2 -3 + 65, 1, 1, 1 );
setScaleKey( spep_2 -3 + 66, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 68, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 70, 1, 1, 1 );
setScaleKey( spep_2 -3 + 107, 1, 1, 1 );
setScaleKey( spep_2 -3 + 108, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 110, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 112, 1, 1, 1 );
setScaleKey( spep_2 -3 + 146, 1, 1, 1 );
setScaleKey( spep_2 -3 + 148, 1, 0.99, 0.99 );
setScaleKey( spep_2 -3 + 154, 1, 0.99, 0.99 );
setScaleKey( spep_2 -3 + 156, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 156, 1, 0.95, 0.95 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 65, 1, 0 );
setRotateKey( spep_2 -3 + 66, 1, -12 );
setRotateKey( spep_2 -3 + 107, 1, -12 );
setRotateKey( spep_2 -3 + 108, 1, -40 );
setRotateKey( spep_2 -3 + 120, 1, -40 );
setRotateKey( spep_2 -3 + 122, 1, -40.1 );
setRotateKey( spep_2 -3 + 154, 1, -40.1 );
setRotateKey( spep_2 -3 + 156, 1, -40 );
setRotateKey( spep_2 + 156, 1, -40 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 156, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_2 + 150, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_2 + 0, 8);  --迫る
setSeVolume( spep_2 + 0, 8, 60 );
playSe( spep_2 + 64, 1061);  --斬撃音
playSe( spep_2 + 106, 1061);  --斬撃音

-- ** 次の準備 ** --
spep_3 = spep_2 + 156;

------------------------------------------------------
-- セリフカットイン(96F)
------------------------------------------------------

-- ** エフェクト等 ** --
cutin = entryEffectLife( spep_3 + 0, SP_04, 96, 0x100, -1, 0, 0, 0 );  --セリフカットイン(ef_004)
setEffMoveKey( spep_3 + 0, cutin, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, cutin, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, cutin, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, cutin, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, cutin, 0 );
setEffRotateKey( spep_3 + 96, cutin, 0 );
setEffAlphaKey( spep_3 + 0, cutin, 255 );
setEffAlphaKey( spep_3 + 96, cutin, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_3 + 0 +2, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_3 + 0 +2, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_3 + 16 +2,  190006, 68, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_3 + 16 +2, ctgogo, 68, 10 );

setEffMoveKey( spep_3 + 16 +2, ctgogo, -9.9, 515.5 , 0 );
setEffMoveKey( spep_3 + 84 +2, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_3 + 16 +2, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_3 + 76 +2, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_3 + 78 +2, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_3 + 80 +2, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_3 + 82 +2, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_3 + 84 +2, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_3 + 16 +2, ctgogo, 0 );
setEffRotateKey( spep_3 + 84 +2, ctgogo, 0 );

setEffAlphaKey( spep_3 + 16 +2, ctgogo, 255 );
setEffAlphaKey( spep_3 + 84 +2, ctgogo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 88, 8, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_3 + 0, 8 );  --槍構え
playSe( spep_3 + 16, SE_04 );  --ゴゴゴ

-- ** 次の準備 ** --
spep_4 = spep_3 + 96;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen1, 90, 20 );

setEffMoveKey( spep_4 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen1, 0 );
setEffRotateKey( spep_4 + 90, shuchusen1, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen1, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_4 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_5 = spep_4 + 94;

------------------------------------------------------
-- フィニッシュ(186F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish = entryEffect( spep_5 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --フィニッシュ(ef_005)
setEffMoveKey( spep_5 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_5 + 186, finish, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_5 + 186, finish, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish, 0 );
setEffRotateKey( spep_5 + 186, finish, 0 );
setEffAlphaKey( spep_5 + 0, finish, 255 );
setEffAlphaKey( spep_5 + 186, finish, 255 );

finish_b = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --フィニッシュ背景(ef_006)
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 186, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 186, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 186, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 186, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 106 );
changeAnime( spep_5 -3 + 58, 1, 108 );

setMoveKey( spep_5 + 0, 1, -1.7, -261.5 , 0 );
setMoveKey( spep_5 -3 + 4, 1, 105.2, -245.4 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 135.4, -240.8 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 151.4, -238.4 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 161.6, -236.9 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 168.5, -235.9 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 173.3, -235.1 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 176.8, -234.6 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 179.3, -234.2 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 181.3, -233.9 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 183, -233.7 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 184.4, -233.5 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 185.8, -233.2 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 187.3, -233.1 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 187.3, -233.1 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 187.3, -232.9 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 187.3, -232.5 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 187.3, -231.8 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 187.3, -230.6 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 187.3, -228.5 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 187.3, -224.7 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 187.3, -217.7 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 187.4, -202.7 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 187.5, -158.3 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 187.7, -58.8 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 187.7, -27.6 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 187.8, -21.8 , 0 );
setMoveKey( spep_5 -3 + 57, 1, 187.8, -20.9 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 187.6, -20.7 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 187.6, -20.7 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 184.3, -18.5 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 194, -20.3 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 182.7, -20.8 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 193.3, -21.1 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 181.7, -19.5 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 191.3, -18.1 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 182.6, -22.3 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 191.9, -20.4 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 183.8, -21.8 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 191.8, -20.4 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 182.5, -22.2 , 0 );
setMoveKey( spep_5 -3 + 98, 1, 191.5, -20 , 0 );
setMoveKey( spep_5 -3 + 100, 1, 184.5, -18.9 , 0 );
setMoveKey( spep_5 -3 + 102, 1, 190, -23.3 , 0 );
setMoveKey( spep_5 -3 + 104, 1, 186.9, -17.2 , 0 );
setMoveKey( spep_5 -3 + 106, 1, 189.5, -22.6 , 0 );
setMoveKey( spep_5 -3 + 108, 1, 184.2, -21.5 , 0 );
setMoveKey( spep_5 -3 + 110, 1, 192.5, -21.5 , 0 );
setMoveKey( spep_5 -3 + 112, 1, 184.5, -19.1 , 0 );
setMoveKey( spep_5 -3 + 114, 1, 192, -22.2 , 0 );
setMoveKey( spep_5 -3 + 116, 1, 184.9, -19.5 , 0 );
setMoveKey( spep_5 -3 + 118, 1, 190.1, -21.5 , 0 );
setMoveKey( spep_5 -3 + 120, 1, 186.2, -17.8 , 0 );
setMoveKey( spep_5 -3 + 122, 1, 187.8, -23 , 0 );
setMoveKey( spep_5 -3 + 124, 1, 185.3, -18.6 , 0 );
setMoveKey( spep_5 -3 + 126, 1, 189.6, -21.9 , 0 );
setMoveKey( spep_5 -3 + 128, 1, 185, -21.9 , 0 );
setMoveKey( spep_5 -3 + 130, 1, 191.4, -22.1 , 0 );
setMoveKey( spep_5 -3 + 132, 1, 185, -20.7 , 0 );
setMoveKey( spep_5 -3 + 134, 1, 191.1, -19.7 , 0 );
setMoveKey( spep_5 -3 + 136, 1, 186.8, -22.5 , 0 );
setMoveKey( spep_5 -3 + 138, 1, 188.1, -17.8 , 0 );
setMoveKey( spep_5 -3 + 140, 1, 188.9, -24 , 0 );
setMoveKey( spep_5 -3 + 142, 1, 188.8, -18.9 , 0 );
setMoveKey( spep_5 -3 + 144, 1, 185.2, -21 , 0 );
setMoveKey( spep_5 -3 + 146, 1, 189.6, -20.3 , 0 );
setMoveKey( spep_5 -3 + 148, 1, 185.2, -20.4 , 0 );
setMoveKey( spep_5 -3 + 150, 1, 189.6, -21 , 0 );
setMoveKey( spep_5 -3 + 152, 1, 186.1, -20 , 0 );
setMoveKey( spep_5 -3 + 154, 1, 190.1, -20.2 , 0 );
setMoveKey( spep_5 -3 + 156, 1, 186.8, -22.3 , 0 );
setMoveKey( spep_5 -3 + 158, 1, 190.1, -19.9 , 0 );
setMoveKey( spep_5 -3 + 160, 1, 186.3, -23.1 , 0 );
setMoveKey( spep_5 -3 + 162, 1, 187.5, -18.9 , 0 );
setMoveKey( spep_5 -3 + 164, 1, 186, -22 , 0 );
setMoveKey( spep_5 -3 + 166, 1, 189.5, -21.3 , 0 );
setMoveKey( spep_5 -3 + 168, 1, 187, -19.4 , 0 );
setMoveKey( spep_5 -3 + 170, 1, 190.2, -21.2 , 0 );
setMoveKey( spep_5 -3 + 172, 1, 185.9, -20 , 0 );
setMoveKey( spep_5 -3 + 174, 1, 189.9, -20.1 , 0 );
setMoveKey( spep_5 -3 + 176, 1, 186.6, -21.4 , 0 );
setMoveKey( spep_5 -3 + 178, 1, 189.5, -21 , 0 );
setMoveKey( spep_5 -3 + 180, 1, 185.8, -19.7 , 0 );
setMoveKey( spep_5 -3 + 182, 1, 189, -20.9 , 0 );
setMoveKey( spep_5 -3 + 184, 1, 186.2, -20.9 , 0 );
setMoveKey( spep_5 -3 + 186, 1, 189.3, -20.8 , 0 );
setMoveKey( spep_5 + 186, 1, 186.6, -19.8 , 0 );

setScaleKey( spep_5 + 0, 1, 0.7, 0.7 );
setScaleKey( spep_5 -3 + 4, 1, 0.76, 0.76 );
setScaleKey( spep_5 -3 + 6, 1, 0.77, 0.77 );
setScaleKey( spep_5 -3 + 8, 1, 0.78, 0.78 );
setScaleKey( spep_5 -3 + 10, 1, 0.79, 0.79 );
setScaleKey( spep_5 -3 + 16, 1, 0.79, 0.79 );
setScaleKey( spep_5 -3 + 18, 1, 0.8, 0.8 );
setScaleKey( spep_5 -3 + 36, 1, 0.8, 0.8 );
setScaleKey( spep_5 -3 + 38, 1, 0.79, 0.79 );
setScaleKey( spep_5 -3 + 40, 1, 0.79, 0.79 );
setScaleKey( spep_5 -3 + 42, 1, 0.78, 0.78 );
setScaleKey( spep_5 -3 + 44, 1, 0.77, 0.77 );
setScaleKey( spep_5 -3 + 46, 1, 0.74, 0.74 );
setScaleKey( spep_5 -3 + 48, 1, 0.66, 0.66 );
setScaleKey( spep_5 -3 + 50, 1, 0.47, 0.47 );
setScaleKey( spep_5 -3 + 52, 1, 0.41, 0.41 );
setScaleKey( spep_5 -3 + 54, 1, 0.4, 0.4 );
setScaleKey( spep_5 + 186, 1, 0.4, 0.4 );

setRotateKey( spep_5 + 0, 1, -20 );
setRotateKey( spep_5 -3 + 4, 1, -19.9 );
setRotateKey( spep_5 -3 + 12, 1, -19.9 );
setRotateKey( spep_5 -3 + 14, 1, -19.8 );
setRotateKey( spep_5 -3 + 44, 1, -19.8 );
setRotateKey( spep_5 -3 + 46, 1, -19.9 );
setRotateKey( spep_5 -3 + 48, 1, -19.9 );
setRotateKey( spep_5 -3 + 50, 1, -20 );
setRotateKey( spep_5 -3 + 57, 1, -20 );
setRotateKey( spep_5 -3 + 58, 1, 0 );
setRotateKey( spep_5 + 186, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 24, 0, 0, 0, 0, 200 );  --黒　背景
entryFadeBg( spep_5 + 0, 26, 160, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_5 + 48, 1026 );  --斬撃音
setSeVolume( spep_5 + 48, 1026, 110 );
playSe( spep_5 + 50, 1109 );  --斬撃音
playSe( spep_5 + 80, 1024 );  --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 80 );
entryFade( spep_5 + 176, 4, 16, 10, 8, 8, 8, 255 ); -- black fade
endPhase( spep_5 + 186 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 前方突撃(56F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
dash = entryEffectLife( spep_0 + 0, SP_01r, 56, 0x100, -1, 0, 0, 0 );  --前方突撃(ef_001)
setEffMoveKey( spep_0 + 0, dash, 0, 0 , 0 );
setEffMoveKey( spep_0 + 56, dash, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, dash, 1.0, 1.0 );
setEffScaleKey( spep_0 + 56, dash, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, dash, 0 );
setEffRotateKey( spep_0 + 56, dash, 0 );
setEffAlphaKey( spep_0 + 0, dash, 255 );
setEffAlphaKey( spep_0 + 55, dash, 255 );
setEffAlphaKey( spep_0 + 56, dash, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 56, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** 音 ** --
playSe( spep_0 + 2, 9 );  --突進

-- ** 次の準備 ** --
spep_1 = spep_0 + 56;

------------------------------------------------------
-- 加速〜敵に接近(48F)
------------------------------------------------------

-- ** エフェクト等 ** --
kasoku = entryEffectLife( spep_1 + 0, SP_02r, 48, 0x100, -1, 0, 0, 0 );  --加速〜敵に接近(ef_002)
setEffMoveKey( spep_1 + 0, kasoku, 0, 0 , 0 );
setEffMoveKey( spep_1 + 48, kasoku, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kasoku, 1.0, 1.0 );
setEffScaleKey( spep_1 + 48, kasoku, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kasoku, 0 );
setEffRotateKey( spep_1 + 48, kasoku, 0 );
setEffAlphaKey( spep_1 + 0, kasoku, 255 );
setEffAlphaKey( spep_1 + 48, kasoku, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 100 );

setMoveKey( spep_1 + 0, 1, 460.8, 21 , 0 );
setMoveKey( spep_1 + 2, 1, 348.2, 21.1 , 0 );
setMoveKey( spep_1 + 4, 1, 297.4, 21.1 , 0 );
setMoveKey( spep_1 + 6, 1, 261.9, 21.1 , 0 );
setMoveKey( spep_1 + 8, 1, 234.4, 21.1 , 0 );
setMoveKey( spep_1 + 10, 1, 212.2, 21.1 , 0 );
setMoveKey( spep_1 + 12, 1, 193.6, 21.1 , 0 );
setMoveKey( spep_1 + 14, 1, 177.9, 21.1 , 0 );
setMoveKey( spep_1 + 16, 1, 164.3, 21.1 , 0 );
setMoveKey( spep_1 + 18, 1, 152.6, 21.1 , 0 );
setMoveKey( spep_1 + 20, 1, 142.3, 21.1 , 0 );
setMoveKey( spep_1 + 22, 1, 133.3, 21.1 , 0 );
setMoveKey( spep_1 + 24, 1, 125.4, 21.1 , 0 );
setMoveKey( spep_1 + 26, 1, 118.4, 21.1 , 0 );
setMoveKey( spep_1 + 28, 1, 112.3, 21.1 , 0 );

setScaleKey( spep_1 + 0, 1, 0.05, 0.05 );
setScaleKey( spep_1 + 2, 1, 0.09, 0.09 );
setScaleKey( spep_1 + 4, 1, 0.11, 0.11 );
setScaleKey( spep_1 + 6, 1, 0.13, 0.13 );
setScaleKey( spep_1 + 8, 1, 0.14, 0.14 );
setScaleKey( spep_1 + 10, 1, 0.15, 0.15 );
setScaleKey( spep_1 + 12, 1, 0.16, 0.16 );
setScaleKey( spep_1 + 14, 1, 0.16, 0.16 );
setScaleKey( spep_1 + 16, 1, 0.17, 0.17 );
setScaleKey( spep_1 + 18, 1, 0.17, 0.17 );
setScaleKey( spep_1 + 20, 1, 0.18, 0.18 );
setScaleKey( spep_1 + 26, 1, 0.18, 0.18 );
setScaleKey( spep_1 + 28, 1, 0.19, 0.19 );

setRotateKey( spep_1 + 0, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 48, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** 音 ** --
SE1 = playSe( spep_1 + 2, 1072 );  --迫る

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE1, 0 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
setDisp( SP_dodge + 0, 1, 0 );

setMoveKey( SP_dodge + 0, 1, 106.9, 21.1 , 0 );
setMoveKey( SP_dodge + 2, 1, 102.2, 21.1 , 0 );
setMoveKey( SP_dodge + 4, 1, 98, 21.1 , 0 );
setMoveKey( SP_dodge + 6, 1, 94.4, 21.1 , 0 );
setMoveKey( SP_dodge + 8, 1, 91.3, 21.1 , 0 );
setMoveKey( SP_dodge + 10, 1, 88.6, 21.1 , 0 );

setScaleKey( SP_dodge + 0, 1, 0.19, 0.19 );
setScaleKey( SP_dodge + 10, 1, 0.19, 0.19 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

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
-- 回避しなかった場合
------------------------------------------------------

-- ** 敵キャラクター ** --
setDisp( spep_1 + 46, 1, 0 );

setMoveKey( spep_1 + 30, 1, 106.9, 21.1 , 0 );
setMoveKey( spep_1 + 32, 1, 102.2, 21.1 , 0 );
setMoveKey( spep_1 + 34, 1, 98, 21.1 , 0 );
setMoveKey( spep_1 + 36, 1, 94.4, 21.1 , 0 );
setMoveKey( spep_1 + 38, 1, 91.3, 21.1 , 0 );
setMoveKey( spep_1 + 40, 1, 88.6, 21.1 , 0 );
setMoveKey( spep_1 + 42, 1, 86.3, 21.1 , 0 );
setMoveKey( spep_1 + 44, 1, 84.4, 21.1 , 0 );
setMoveKey( spep_1 + 46, 1, 82.8, 21.1 , 0 );

setScaleKey( spep_1 + 36, 1, 0.19, 0.19 );
setScaleKey( spep_1 + 38, 1, 0.2, 0.2 );
setScaleKey( spep_1 + 46, 1, 0.2, 0.2 );

setRotateKey( spep_1 + 46, 1, 0 );

-- ** 白フェード ** --
entryFade( spep_1 + 44, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 48;

------------------------------------------------------
-- 二連撃(156F)
------------------------------------------------------

-- ** エフェクト等 ** --
attack = entryEffectLife( spep_2 + 0, SP_03r, 156, 0x100, -1, 0, 0, 0 );  --二連撃(ef_003)
setEffMoveKey( spep_2 + 0, attack, 0, 0 , 0 );
setEffMoveKey( spep_2 + 156, attack, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack, 1.0, 1.0 );
setEffScaleKey( spep_2 + 156, attack, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack, 0 );
setEffRotateKey( spep_2 + 156, attack, 0 );
setEffAlphaKey( spep_2 + 0, attack, 255 );
setEffAlphaKey( spep_2 + 156, attack, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 156, 1, 0 );
changeAnime( spep_2 + 0, 1, 100 );
changeAnime( spep_2 -3 + 66, 1, 108 );
changeAnime( spep_2 -3 + 108, 1, 106 );

setMoveKey( spep_2 + 0, 1, 430.3, 139.1 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 349.2, 121.9 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 324.5, 116.6 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 304, 112.3 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 286.4, 108.5 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 271.2, 105.3 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 257.7, 102.4 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 245.8, 99.9 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 235.1, 97.6 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 225.5, 95.6 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 216.8, 93.7 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 209, 92.1 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 202, 90.6 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 195.7, 89.2 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 190.1, 88 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 185, 86.9 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 180.4, 86 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 176.4, 85.1 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 172.8, 84.4 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 169.7, 83.7 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 166.9, 83.1 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 164.6, 82.6 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 162.6, 82.2 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 161, 81.8 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 159.7, 81.6 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 158.7, 81.4 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 158, 81.2 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 157.6, 81.1 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 157.5, 81.1 , 0 );
setMoveKey( spep_2 -3 + 65, 1, 157.5, 81.1 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 220.8, 123.3 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 220.8, 123.3 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 168.5, 97.1 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 173.7, 94.4 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 165.6, 96.6 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 170.6, 91.3 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 168.5, 98.5 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 170.9, 90.6 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 168.3, 97.9 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 173.8, 91.9 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 167.9, 97.2 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 172.4, 94 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 167.1, 98.3 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 171, 92.5 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 170.2, 98.2 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 173.1, 91.6 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 166.4, 94.1 , 0 );
setMoveKey( spep_2 -3 + 107, 1, 166.4, 94.1 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 184.2, 162.4 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 179.5, 164 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 144.7, 123.2 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 137.3, 124.8 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 145.4, 124.5 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 136.3, 125.6 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 143.4, 123.5 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 138.2, 125.7 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 143.5, 122.4 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 139.1, 127.4 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 144.9, 124.8 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 148.4, 123.9 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 142, 123.2 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 148.5, 124 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 142.9, 128 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 147.6, 124.3 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 147.8, 124.4 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 148, 124.5 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 148.3, 124.6 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 148.6, 124.8 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 149.2, 125 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 150, 125.3 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 151.2, 125.9 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 153.6, 126.9 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 159.6, 129.5 , 0 );
setMoveKey( spep_2 + 156, 1, 168.4, 133.2 , 0 );

setScaleKey( spep_2 + 0, 1, 0.5, 0.5 );
setScaleKey( spep_2 -3 + 4, 1, 0.63, 0.63 );
setScaleKey( spep_2 -3 + 6, 1, 0.69, 0.69 );
setScaleKey( spep_2 -3 + 8, 1, 0.73, 0.73 );
setScaleKey( spep_2 -3 + 10, 1, 0.76, 0.76 );
setScaleKey( spep_2 -3 + 12, 1, 0.79, 0.79 );
setScaleKey( spep_2 -3 + 14, 1, 0.82, 0.82 );
setScaleKey( spep_2 -3 + 16, 1, 0.84, 0.84 );
setScaleKey( spep_2 -3 + 18, 1, 0.86, 0.86 );
setScaleKey( spep_2 -3 + 20, 1, 0.88, 0.88 );
setScaleKey( spep_2 -3 + 22, 1, 0.89, 0.89 );
setScaleKey( spep_2 -3 + 24, 1, 0.91, 0.91 );
setScaleKey( spep_2 -3 + 26, 1, 0.92, 0.92 );
setScaleKey( spep_2 -3 + 28, 1, 0.93, 0.93 );
setScaleKey( spep_2 -3 + 30, 1, 0.94, 0.94 );
setScaleKey( spep_2 -3 + 32, 1, 0.95, 0.95 );
setScaleKey( spep_2 -3 + 34, 1, 0.96, 0.96 );
setScaleKey( spep_2 -3 + 36, 1, 0.97, 0.97 );
setScaleKey( spep_2 -3 + 38, 1, 0.97, 0.97 );
setScaleKey( spep_2 -3 + 40, 1, 0.98, 0.98 );
setScaleKey( spep_2 -3 + 42, 1, 0.98, 0.98 );
setScaleKey( spep_2 -3 + 44, 1, 0.99, 0.99 );
setScaleKey( spep_2 -3 + 48, 1, 0.99, 0.99 );
setScaleKey( spep_2 -3 + 50, 1, 1, 1 );
setScaleKey( spep_2 -3 + 65, 1, 1, 1 );
setScaleKey( spep_2 -3 + 66, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 68, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 70, 1, 1, 1 );
setScaleKey( spep_2 -3 + 107, 1, 1, 1 );
setScaleKey( spep_2 -3 + 108, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 110, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 112, 1, 1, 1 );
setScaleKey( spep_2 -3 + 146, 1, 1, 1 );
setScaleKey( spep_2 -3 + 148, 1, 0.99, 0.99 );
setScaleKey( spep_2 -3 + 154, 1, 0.99, 0.99 );
setScaleKey( spep_2 -3 + 156, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 156, 1, 0.95, 0.95 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 65, 1, 0 );
setRotateKey( spep_2 -3 + 66, 1, -12 );
setRotateKey( spep_2 -3 + 107, 1, -12 );
setRotateKey( spep_2 -3 + 108, 1, -40 );
setRotateKey( spep_2 -3 + 120, 1, -40 );
setRotateKey( spep_2 -3 + 122, 1, -40.1 );
setRotateKey( spep_2 -3 + 154, 1, -40.1 );
setRotateKey( spep_2 -3 + 156, 1, -40 );
setRotateKey( spep_2 + 156, 1, -40 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 156, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_2 + 150, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_2 + 0, 8);  --迫る
setSeVolume( spep_2 + 0, 8, 60 );	
playSe( spep_2 + 64, 1061);  --斬撃音
playSe( spep_2 + 106, 1061);  --斬撃音

-- ** 次の準備 ** --
spep_3 = spep_2 + 156;

------------------------------------------------------
-- セリフカットイン(96F)
------------------------------------------------------

-- ** エフェクト等 ** --
cutin = entryEffectLife( spep_3 + 0, SP_04r, 96, 0x100, -1, 0, 0, 0 );  --セリフカットイン(ef_004)
setEffMoveKey( spep_3 + 0, cutin, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, cutin, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, cutin, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, cutin, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, cutin, 0 );
setEffRotateKey( spep_3 + 96, cutin, 0 );
setEffAlphaKey( spep_3 + 0, cutin, 255 );
setEffAlphaKey( spep_3 + 96, cutin, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_3 + 0 +2, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_3 + 0 +2, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_3 + 16 +2,  190006, 68, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_3 + 16 +2, ctgogo, 68, 10 );

setEffMoveKey( spep_3 + 16 +2, ctgogo, -9.9, 515.5 , 0 );
setEffMoveKey( spep_3 + 84 +2, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_3 + 16 +2, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_3 + 76 +2, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_3 + 78 +2, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_3 + 80 +2, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_3 + 82 +2, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_3 + 84 +2, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_3 + 16 +2, ctgogo, 0 );
setEffRotateKey( spep_3 + 84 +2, ctgogo, 0 );

setEffAlphaKey( spep_3 + 16 +2, ctgogo, 255 );
setEffAlphaKey( spep_3 + 84 +2, ctgogo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 88, 8, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_3 + 0, 8 );  --槍構え
playSe( spep_3 + 16, SE_04 );  --ゴゴゴ

-- ** 次の準備 ** --
spep_4 = spep_3 + 96;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen1, 90, 20 );

setEffMoveKey( spep_4 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen1, 0 );
setEffRotateKey( spep_4 + 90, shuchusen1, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen1, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_4 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_5 = spep_4 + 94;

------------------------------------------------------
-- フィニッシュ(186F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish = entryEffect( spep_5 + 0, SP_05r, 0x100, -1, 0, 0, 0 );  --フィニッシュ(ef_005)
setEffMoveKey( spep_5 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_5 + 186, finish, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_5 + 186, finish, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish, 0 );
setEffRotateKey( spep_5 + 186, finish, 0 );
setEffAlphaKey( spep_5 + 0, finish, 255 );
setEffAlphaKey( spep_5 + 186, finish, 255 );

finish_b = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --フィニッシュ背景(ef_006)
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 186, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 186, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 186, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 186, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 106 );
changeAnime( spep_5 -3 + 58, 1, 108 );

setMoveKey( spep_5 + 0, 1, -1.7, -261.5 , 0 );
setMoveKey( spep_5 -3 + 4, 1, 105.2, -245.4 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 135.4, -240.8 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 151.4, -238.4 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 161.6, -236.9 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 168.5, -235.9 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 173.3, -235.1 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 176.8, -234.6 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 179.3, -234.2 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 181.3, -233.9 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 183, -233.7 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 184.4, -233.5 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 185.8, -233.2 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 187.3, -233.1 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 187.3, -233.1 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 187.3, -232.9 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 187.3, -232.5 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 187.3, -231.8 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 187.3, -230.6 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 187.3, -228.5 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 187.3, -224.7 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 187.3, -217.7 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 187.4, -202.7 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 187.5, -158.3 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 187.7, -58.8 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 187.7, -27.6 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 187.8, -21.8 , 0 );
setMoveKey( spep_5 -3 + 57, 1, 187.8, -20.9 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 187.6, -20.7 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 187.6, -20.7 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 184.3, -18.5 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 194, -20.3 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 182.7, -20.8 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 193.3, -21.1 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 181.7, -19.5 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 191.3, -18.1 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 182.6, -22.3 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 191.9, -20.4 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 183.8, -21.8 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 191.8, -20.4 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 182.5, -22.2 , 0 );
setMoveKey( spep_5 -3 + 98, 1, 191.5, -20 , 0 );
setMoveKey( spep_5 -3 + 100, 1, 184.5, -18.9 , 0 );
setMoveKey( spep_5 -3 + 102, 1, 190, -23.3 , 0 );
setMoveKey( spep_5 -3 + 104, 1, 186.9, -17.2 , 0 );
setMoveKey( spep_5 -3 + 106, 1, 189.5, -22.6 , 0 );
setMoveKey( spep_5 -3 + 108, 1, 184.2, -21.5 , 0 );
setMoveKey( spep_5 -3 + 110, 1, 192.5, -21.5 , 0 );
setMoveKey( spep_5 -3 + 112, 1, 184.5, -19.1 , 0 );
setMoveKey( spep_5 -3 + 114, 1, 192, -22.2 , 0 );
setMoveKey( spep_5 -3 + 116, 1, 184.9, -19.5 , 0 );
setMoveKey( spep_5 -3 + 118, 1, 190.1, -21.5 , 0 );
setMoveKey( spep_5 -3 + 120, 1, 186.2, -17.8 , 0 );
setMoveKey( spep_5 -3 + 122, 1, 187.8, -23 , 0 );
setMoveKey( spep_5 -3 + 124, 1, 185.3, -18.6 , 0 );
setMoveKey( spep_5 -3 + 126, 1, 189.6, -21.9 , 0 );
setMoveKey( spep_5 -3 + 128, 1, 185, -21.9 , 0 );
setMoveKey( spep_5 -3 + 130, 1, 191.4, -22.1 , 0 );
setMoveKey( spep_5 -3 + 132, 1, 185, -20.7 , 0 );
setMoveKey( spep_5 -3 + 134, 1, 191.1, -19.7 , 0 );
setMoveKey( spep_5 -3 + 136, 1, 186.8, -22.5 , 0 );
setMoveKey( spep_5 -3 + 138, 1, 188.1, -17.8 , 0 );
setMoveKey( spep_5 -3 + 140, 1, 188.9, -24 , 0 );
setMoveKey( spep_5 -3 + 142, 1, 188.8, -18.9 , 0 );
setMoveKey( spep_5 -3 + 144, 1, 185.2, -21 , 0 );
setMoveKey( spep_5 -3 + 146, 1, 189.6, -20.3 , 0 );
setMoveKey( spep_5 -3 + 148, 1, 185.2, -20.4 , 0 );
setMoveKey( spep_5 -3 + 150, 1, 189.6, -21 , 0 );
setMoveKey( spep_5 -3 + 152, 1, 186.1, -20 , 0 );
setMoveKey( spep_5 -3 + 154, 1, 190.1, -20.2 , 0 );
setMoveKey( spep_5 -3 + 156, 1, 186.8, -22.3 , 0 );
setMoveKey( spep_5 -3 + 158, 1, 190.1, -19.9 , 0 );
setMoveKey( spep_5 -3 + 160, 1, 186.3, -23.1 , 0 );
setMoveKey( spep_5 -3 + 162, 1, 187.5, -18.9 , 0 );
setMoveKey( spep_5 -3 + 164, 1, 186, -22 , 0 );
setMoveKey( spep_5 -3 + 166, 1, 189.5, -21.3 , 0 );
setMoveKey( spep_5 -3 + 168, 1, 187, -19.4 , 0 );
setMoveKey( spep_5 -3 + 170, 1, 190.2, -21.2 , 0 );
setMoveKey( spep_5 -3 + 172, 1, 185.9, -20 , 0 );
setMoveKey( spep_5 -3 + 174, 1, 189.9, -20.1 , 0 );
setMoveKey( spep_5 -3 + 176, 1, 186.6, -21.4 , 0 );
setMoveKey( spep_5 -3 + 178, 1, 189.5, -21 , 0 );
setMoveKey( spep_5 -3 + 180, 1, 185.8, -19.7 , 0 );
setMoveKey( spep_5 -3 + 182, 1, 189, -20.9 , 0 );
setMoveKey( spep_5 -3 + 184, 1, 186.2, -20.9 , 0 );
setMoveKey( spep_5 -3 + 186, 1, 189.3, -20.8 , 0 );
setMoveKey( spep_5 + 186, 1, 186.6, -19.8 , 0 );

setScaleKey( spep_5 + 0, 1, 0.7, 0.7 );
setScaleKey( spep_5 -3 + 4, 1, 0.76, 0.76 );
setScaleKey( spep_5 -3 + 6, 1, 0.77, 0.77 );
setScaleKey( spep_5 -3 + 8, 1, 0.78, 0.78 );
setScaleKey( spep_5 -3 + 10, 1, 0.79, 0.79 );
setScaleKey( spep_5 -3 + 16, 1, 0.79, 0.79 );
setScaleKey( spep_5 -3 + 18, 1, 0.8, 0.8 );
setScaleKey( spep_5 -3 + 36, 1, 0.8, 0.8 );
setScaleKey( spep_5 -3 + 38, 1, 0.79, 0.79 );
setScaleKey( spep_5 -3 + 40, 1, 0.79, 0.79 );
setScaleKey( spep_5 -3 + 42, 1, 0.78, 0.78 );
setScaleKey( spep_5 -3 + 44, 1, 0.77, 0.77 );
setScaleKey( spep_5 -3 + 46, 1, 0.74, 0.74 );
setScaleKey( spep_5 -3 + 48, 1, 0.66, 0.66 );
setScaleKey( spep_5 -3 + 50, 1, 0.47, 0.47 );
setScaleKey( spep_5 -3 + 52, 1, 0.41, 0.41 );
setScaleKey( spep_5 -3 + 54, 1, 0.4, 0.4 );
setScaleKey( spep_5 + 186, 1, 0.4, 0.4 );

setRotateKey( spep_5 + 0, 1, -20 );
setRotateKey( spep_5 -3 + 4, 1, -19.9 );
setRotateKey( spep_5 -3 + 12, 1, -19.9 );
setRotateKey( spep_5 -3 + 14, 1, -19.8 );
setRotateKey( spep_5 -3 + 44, 1, -19.8 );
setRotateKey( spep_5 -3 + 46, 1, -19.9 );
setRotateKey( spep_5 -3 + 48, 1, -19.9 );
setRotateKey( spep_5 -3 + 50, 1, -20 );
setRotateKey( spep_5 -3 + 57, 1, -20 );
setRotateKey( spep_5 -3 + 58, 1, 0 );
setRotateKey( spep_5 + 186, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 24, 0, 0, 0, 0, 200 );  --黒　背景
entryFadeBg( spep_5 + 0, 26, 160, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_5 + 48, 1026 );  --斬撃音
setSeVolume( spep_5 + 48, 1026, 110 );
playSe( spep_5 + 50, 1109 );  --斬撃音
playSe( spep_5 + 80, 1024 );  --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 80 );
entryFade( spep_5 + 176, 4, 16, 10, 8, 8, 8, 255 ); -- black fade
endPhase( spep_5 + 186 );

end