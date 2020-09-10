--魔人ベジータ_ファイナルフラッシュ

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
SP_01 = 154682; --溜め
SP_02 = 154683; --両手気弾
SP_03 = 154684; --両手気弾着弾・手前
SP_04 = 154685; --両手気弾着弾・奥
SP_05 = 154686; --ジャンプ〜気弾生成
SP_06 = 154687; --片手気弾発射
SP_07 = 154688; --片手気弾着弾
SP_08 = 154689; --構え〜発射
SP_09 = 154690; --爆発

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;
if( _IS_EXTRA_ATTACK_ == 0 ) then
 adjustAttackerLabel( 0, 205);
end

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
-- 溜め(126F)
------------------------------------------------------
spep_0 = 0;

x1 = 10;
-- ** エフェクト等 ** --
tame = entryEffectLife( spep_0 + 0, SP_01, 126 +x1, 0x100, -1, 0, 0, 0 );  --溜め(ef_001)
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 126 +x1, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 126 +x1, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 126 +x1, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 126 +x1, tame, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 128 +x1, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 30 -3 +x1, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 180 );  --white fade
entryFade( spep_0 + 126 -6 +x1, 4, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--オーラ
playSe( spep_0 + 0, 1036 );
playSe( spep_0 + 24, 1036 );
playSe( spep_0 + 48, 1036 );
playSe( spep_0 + 72, 1036 );
playSe( spep_0 + 96, 1036 );
playSe( spep_0 + 120, 1036 );

--電気ぱちぱち
playSe( spep_0 + 0, 1056 );
playSe( spep_0 + 63, 1056 );
SE0 = playSe( spep_0 + 111, 1056 );

--気溜め
playSe( spep_0 + 28 +x1, 9 );
setSeVolume( spep_0 + 28 +x1, 9, 90 );
playSe( spep_0 + 28 +x1, 1068 );
setSeVolume( spep_0 + 28 +x1, 1068, 90 );
SE1 = playSe( spep_0 + 28 +x1, 1044 );
setSeVolume( spep_0 + 28 +x1, 1044, 40 );
setSeVolume( spep_0 + 36 +x1, 1044, 80 );
setSeVolume( spep_0 + 48 +x1, 1044, 100 );
setSeVolume( spep_0 + 60 +x1, 1044, 150 );
setSeVolume( spep_0 + 74 +x1, 1044, 170 );
setSeVolume( spep_0 + 82 +x1, 1044, 200 );
setSeVolume( spep_0 + 93 +x1, 1044, 260 );

--画面切り替え
playSe( spep_0 + 104 +x1, 1072 );
setSeVolume( spep_0 + 104 +x1, 1072, 130 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 126 +x1;

------------------------------------------------------
-- 両手気弾(76F)
------------------------------------------------------

-- ** エフェクト等 ** --
kidan = entryEffectLife( spep_1 + 0, SP_02, 76, 0x100, -1, 0, 0, 0 );  --両手気弾(ef_002)
setEffMoveKey( spep_1 + 0, kidan, 0, 0 , 0 );
setEffMoveKey( spep_1 + 76, kidan, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kidan, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76, kidan, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kidan, 0 );
setEffRotateKey( spep_1 + 76, kidan, 0 );
setEffAlphaKey( spep_1 + 0, kidan, 255 );
setEffAlphaKey( spep_1 + 75, kidan, 255 );
setEffAlphaKey( spep_1 + 76, kidan, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 78, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--電気ぱちぱち
stopSe( spep_1 + 5, SE0, 0 );

--気溜め
setSeVolume( spep_1 + 4, 1044, 260 );
setSeVolume( spep_1 + 8, 1044, 200 );
setSeVolume( spep_1 + 12, 1044, 150 );
setSeVolume( spep_1 + 16, 1044, 100 );
setSeVolume( spep_1 + 18, 1044, 50 );
setSeVolume( spep_1 + 20, 1044, 0 );
stopSe( spep_1 + 20, SE1, 0 );

--連続気弾
SE2 = playSe( spep_1 + 20 -20, 1015 );
setSeVolume( spep_1 + 20 -20, 1015, 85 );
setSeVolume( spep_1 + 29 -20, 1015, 85 );
setSeVolume( spep_1 + 32 -20, 1015, 70 );
setSeVolume( spep_1 + 34 -20, 1015, 40 );
setSeVolume( spep_1 + 36 -20, 1015, 20 );
setSeVolume( spep_1 + 38 -20, 1015, 0 );
stopSe( spep_1 + 38 -20, SE2, 0 );

SE2a = playSe( spep_1 + 25 -20, 1016 );
SE2b = playSe( spep_1 + 31 -20, 1016 );
setSeVolume( spep_1 + 31 -20, 1016, 95 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 46; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe(SP_dodge - 12, SE1, 0 );
stopSe(SP_dodge - 12, SE2, 0 );
stopSe(SP_dodge - 12, SE2a, 0 );
stopSe(SP_dodge - 12, SE2b, 0 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
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

-- ** 音 ** --
--連続気弾
SE3 = playSe( spep_1 + 37 -20, 1015 );
setSeVolume( spep_1 + 37 -20, 1015, 100 );
setSeVolume( spep_1 + 50 -20, 1015, 100 );
setSeVolume( spep_1 + 54 -20, 1015, 85 );
setSeVolume( spep_1 + 58 -20, 1015, 60 );
setSeVolume( spep_1 + 60 -20, 1015, 30 );
setSeVolume( spep_1 + 65 -20, 1015, 0 );
stopSe( spep_1 + 65 -20, SE3, 0 );

playSe( spep_1 + 41 -20, 1016 );
setSeVolume( spep_1 + 41 -20, 1016, 90 );
playSe( spep_1 + 45 -20, 1016 );

SE4 = playSe( spep_1 + 49 -20, 1015 );
setSeVolume( spep_1 + 49 -20, 1015, 80 );
setSeVolume( spep_1 + 62 -20, 1015, 80 );
setSeVolume( spep_1 + 64 -20, 1015, 60 );
setSeVolume( spep_1 + 66 -20, 1015, 40 );
setSeVolume( spep_1 + 68 -20, 1015, 20 );
setSeVolume( spep_1 + 70 -20, 1015, 0 );
stopSe( spep_1 + 70 -20, SE4, 0 );

playSe( spep_1 + 54 -20, 1016 );
playSe( spep_1 + 60 -20, 1016 );
playSe( spep_1 + 65 -20, 1016 );
setSeVolume( spep_1 + 65 -20, 1016, 80 );

SE5 = playSe( spep_1 + 49 -20, 1015 );
setSeVolume( spep_1 + 49 -20, 1015, 80 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 76;

------------------------------------------------------
-- 両手気弾着弾(96F)
------------------------------------------------------
x = 10;
-- ** エフェクト等 ** --
hidan_f = entryEffectLife( spep_2 + 0, SP_03, 96 -x, 0x100, -1, 0, 0, 0 );  --両手気弾着弾(ef_003)
setEffMoveKey( spep_2 + 0, hidan_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96 -x, hidan_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hidan_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 96 -x, hidan_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hidan_f, 0 );
setEffRotateKey( spep_2 + 96 -x, hidan_f, 0 );
setEffAlphaKey( spep_2 + 0, hidan_f, 255 );
setEffAlphaKey( spep_2 + 96 -x, hidan_f, 255 );

hidan_b = entryEffectLife( spep_2 + 0, SP_04, 96 -x, 0x80, -1, 0, 0, 0 );  --両手気弾着弾(ef_004)
setEffMoveKey( spep_2 + 0, hidan_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96 -x, hidan_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hidan_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 96 -x, hidan_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hidan_b, 0 );
setEffRotateKey( spep_2 + 96 -x, hidan_b, 0 );
setEffAlphaKey( spep_2 + 0, hidan_b, 255 );
setEffAlphaKey( spep_2 + 96 -x, hidan_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 98 -x, 1, 0 );
changeAnime( spep_2 + 0, 1, 100 );
changeAnime( spep_2 -3 + 24, 1, 104 );
changeAnime( spep_2 -3 + 50, 1, 106 );
changeAnime( spep_2 -3 + 60, 1, 108 );
changeAnime( spep_2 -3 + 70, 1, 106 );

setMoveKey( spep_2 + 0, 1, 13.7, 36.2 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 13.3, 39.5 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 12.8, 42.9 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 12.4, 46.2 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 11.7, 48.9 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 11.2, 52.3 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 10.8, 55.6 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 10.3, 59 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 9.9, 62.4 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 9.4, 65.7 , 0 );
setMoveKey( spep_2 -3 + 23, 1, 8.9, 69.1 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 15.4, 85.8 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 9.8, 85.5 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 15.4, 88.1 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 4.5, 80.2 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 15.2, 89.9 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 9.6, 92.2 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 15.1, 91.6 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 6, 84 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 14.9, 93.4 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 7.9, 97.3 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 14.8, 95.2 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 5.9, 86.1 , 0 );
setMoveKey( spep_2 -3 + 49, 1, 14.6, 97 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 13.8, 124.7 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 17, 130.4 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 15.4, 132.8 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 20.2, 138.4 , 0 );
setMoveKey( spep_2 -3 + 59, 1, 20.2, 140.9 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 42.1, 131.6 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 42.9, 130.5 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 46.6, 136.2 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 45.5, 136.9 , 0 );
setMoveKey( spep_2 -3 + 69, 1, 50.9, 140.7 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 25.8, 155 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 28.2, 160.2 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 27.4, 160.4 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 29.7, 164 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 28.8, 162.6 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 31.1, 167.8 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 30.3, 167.9 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 32.6, 171.5 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 31.7, 170 , 0 );
--[[setMoveKey( spep_2 -3 + 88, 1, 34, 175.1 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 34.6, 176.8 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 32.2, 175.5 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 35.9, 180.3 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 33.5, 179 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 37.2, 183.9 , 0 );]]

setScaleKey( spep_2 + 0, 1, 1.69, 1.69 );
setScaleKey( spep_2 -3 + 4, 1, 1.63, 1.63 );
setScaleKey( spep_2 -3 + 6, 1, 1.57, 1.57 );
setScaleKey( spep_2 -3 + 8, 1, 1.51, 1.51 );
setScaleKey( spep_2 -3 + 10, 1, 1.46, 1.46 );
setScaleKey( spep_2 -3 + 12, 1, 1.4, 1.4 );
setScaleKey( spep_2 -3 + 14, 1, 1.34, 1.34 );
setScaleKey( spep_2 -3 + 16, 1, 1.28, 1.28 );
setScaleKey( spep_2 -3 + 18, 1, 1.22, 1.22 );
setScaleKey( spep_2 -3 + 20, 1, 1.16, 1.16 );
setScaleKey( spep_2 -3 + 23, 1, 1.1, 1.1 );
setScaleKey( spep_2 -3 + 24, 1, 1.13, 1.13 );
setScaleKey( spep_2 -3 + 26, 1, 1.12, 1.12 );
setScaleKey( spep_2 -3 + 28, 1, 1.11, 1.11 );
setScaleKey( spep_2 -3 + 30, 1, 1.11, 1.11 );
setScaleKey( spep_2 -3 + 32, 1, 1.1, 1.1 );
setScaleKey( spep_2 -3 + 34, 1, 1.1, 1.1 );
setScaleKey( spep_2 -3 + 36, 1, 1.09, 1.09 );
setScaleKey( spep_2 -3 + 38, 1, 1.09, 1.09 );
setScaleKey( spep_2 -3 + 40, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 42, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 44, 1, 1.07, 1.07 );
setScaleKey( spep_2 -3 + 46, 1, 1.07, 1.07 );
setScaleKey( spep_2 -3 + 49, 1, 1.06, 1.06 );
setScaleKey( spep_2 -3 + 50, 1, 1.07, 1.07 );
setScaleKey( spep_2 -3 + 52, 1, 1.06, 1.06 );
setScaleKey( spep_2 -3 + 54, 1, 1.06, 1.06 );
setScaleKey( spep_2 -3 + 56, 1, 1.05, 1.05 );
setScaleKey( spep_2 -3 + 59, 1, 1.04, 1.04 );
setScaleKey( spep_2 -3 + 60, 1, 1, 1 );
setScaleKey( spep_2 -3 + 62, 1, 1, 1 );
setScaleKey( spep_2 -3 + 64, 1, 0.99, 0.99 );
setScaleKey( spep_2 -3 + 66, 1, 0.98, 0.98 );
setScaleKey( spep_2 -3 + 69, 1, 0.98, 0.98 );
setScaleKey( spep_2 -3 + 70, 1, 1.01, 1.01 );
setScaleKey( spep_2 -3 + 72, 1, 1.01, 1.01 );
setScaleKey( spep_2 -3 + 74, 1, 1, 1 );
setScaleKey( spep_2 -3 + 76, 1, 1, 1 );
setScaleKey( spep_2 -3 + 78, 1, 0.99, 0.99 );
setScaleKey( spep_2 -3 + 80, 1, 0.99, 0.99 );
setScaleKey( spep_2 -3 + 82, 1, 0.98, 0.98 );
setScaleKey( spep_2 -3 + 84, 1, 0.98, 0.98 );
setScaleKey( spep_2 -3 + 86, 1, 0.97, 0.97 );
--[[setScaleKey( spep_2 -3 + 88, 1, 0.97, 0.97 );
setScaleKey( spep_2 -3 + 90, 1, 0.96, 0.96 );
setScaleKey( spep_2 -3 + 92, 1, 0.96, 0.96 );
setScaleKey( spep_2 -3 + 94, 1, 0.95, 0.95 );
setScaleKey( spep_2 -3 + 96, 1, 0.95, 0.95 );
setScaleKey( spep_2 -3 + 98, 1, 0.94, 0.94 );]]

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 23, 1, 0 );
setRotateKey( spep_2 -3 + 24, 1, -9.8 );
setRotateKey( spep_2 -3 + 49, 1, -9.8 );
setRotateKey( spep_2 -3 + 50, 1, -28.5 );
setRotateKey( spep_2 -3 + 59, 1, -28.5 );
setRotateKey( spep_2 -3 + 60, 1, -4.2 );
setRotateKey( spep_2 -3 + 62, 1, -4.4 );
setRotateKey( spep_2 -3 + 64, 1, -4.7 );
setRotateKey( spep_2 -3 + 66, 1, -4.9 );
setRotateKey( spep_2 -3 + 69, 1, -5.2 );
setRotateKey( spep_2 -3 + 70, 1, -28.5 );
setRotateKey( spep_2 -3 + 98 -x, 1, -28.5 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 98 -x, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--連続気弾
setSeVolume( spep_2 + 5 -20, 1015, 80 );
setSeVolume( spep_2 + 8 -20, 1015, 60 );
setSeVolume( spep_2 + 10 -20, 1015, 40 );
setSeVolume( spep_2 + 12 -20, 1015, 20 );
setSeVolume( spep_2 + 14 -20, 1015, 0 );
stopSe( spep_2 + 14 -20, SE5, 0 );

playSe( spep_2 + 1 -20, 1016 );

--弾道
playSe( spep_2 + 13 -20, 44 );
setSeVolume( spep_2 + 13 -20, 44, 90 );
playSe( spep_2 + 18 -20, 44 );

--連続気弾・爆発
playSe( spep_2 + 34 -20, 1002 );
playSe( spep_2 + 45 -20, 1025 );
playSe( spep_2 + 50 -20, 1023 );
playSe( spep_2 + 56 -20, 1002 );
setSeVolume( spep_2 + 56 -20, 1002, 90 );
playSe( spep_2 + 62 -20, 1023 );
setSeVolume( spep_2 + 62 -20, 1023, 80 );
playSe( spep_2 + 74 -20, 1068 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 96 -x;

------------------------------------------------------
-- ジャンプ〜気弾生成(146F)
------------------------------------------------------

-- ** エフェクト等 ** --
jump = entryEffectLife( spep_3 + 0, SP_05, 146, 0x100, -1, 0, 0, 0 );  --前方へ蹴り構え(ef_005)
setEffMoveKey( spep_3 + 0, jump, 0, 0 , 0 );
setEffMoveKey( spep_3 + 146, jump, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, jump, 1.0, 1.0 );
setEffScaleKey( spep_3 + 146, jump, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, jump, 0 );
setEffRotateKey( spep_3 + 146, jump, 0 );
setEffAlphaKey( spep_3 + 0, jump, 255 );
setEffAlphaKey( spep_3 + 145, jump, 255 );
setEffAlphaKey( spep_3 + 146, jump, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 148, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--ジャンプ
SE6 = playSe( spep_3 + 24 -20, 1109 );
stopSe( spep_3 + 35 -20, SE6, 8 );
playSe( spep_3 + 28 -20, 44 );

--気弾溜め
playSe( spep_3 + 76 -20, 1130 );
setSeVolume( spep_3 + 76 -20, 1130, 90 );
SE7 = playSe( spep_3 + 76 -20, 1154 );
setSeVolume( spep_3 + 76 -20, 1130, 90 );
SE8 = playSe( spep_3 + 76 -20, 1157 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 146;

------------------------------------------------------
-- 片手気弾発射(36F)
------------------------------------------------------

-- ** エフェクト等 ** --
katatekidan = entryEffectLife( spep_4 + 0, SP_06, 36, 0x100, -1, 0, 0, 0 );  --片手気弾発射(ef_006)
setEffMoveKey( spep_4 + 0, katatekidan, 0, 0 , 0 );
setEffMoveKey( spep_4 + 36, katatekidan, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, katatekidan, 1.0, 1.0 );
setEffScaleKey( spep_4 + 36, katatekidan, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, katatekidan, 0 );
setEffRotateKey( spep_4 + 36, katatekidan, 0 );
setEffAlphaKey( spep_4 + 0, katatekidan, 255 );
setEffAlphaKey( spep_4 + 36, katatekidan, 255 );

-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 38, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
--気弾溜め
stopSe( spep_4 + 28 -20, SE7, 0 );
stopSe( spep_4 + 52 -20, SE8, 0 );

--気弾発射
SE9 = playSe( spep_4 + 7 -20, 44 );
setSeVolume( spep_4 + 7 -20, 44, 90 );
stopSe( spep_4 + 28 -20, SE9, 0 );
SE10 = playSe( spep_4 + 25 -20, 1021 );
setSeVolume( spep_4 + 25 -20, 1021, 134 );
SE11 = playSe( spep_4 + 25 -20, 1133 );
setSeVolume( spep_4 + 25 -20, 1133, 60 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 36;

------------------------------------------------------
-- 片手気弾着弾(116F)
------------------------------------------------------

-- ** エフェクト等 ** --
tyakudan = entryEffectLife( spep_5 + 0, SP_07, 116, 0x100, -1, 0, 0, 0 );  --片手気弾着弾(ef_007)
setEffMoveKey( spep_5 + 0, tyakudan, 0, 0 , 0 );
setEffMoveKey( spep_5 + 116, tyakudan, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, tyakudan, 1.0, 1.0 );
setEffScaleKey( spep_5 + 116, tyakudan, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tyakudan, 0 );
setEffRotateKey( spep_5 + 116, tyakudan, 0 );
setEffAlphaKey( spep_5 + 0, tyakudan, 255 );
setEffAlphaKey( spep_5 + 116, tyakudan, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 118, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 66 -3, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--気弾発射
setSeVolume( spep_5 + 31 -20, 1021, 134 );
setSeVolume( spep_5 + 34 -20, 1021, 110 );
setSeVolume( spep_5 + 40 -20, 1021, 90 );
setSeVolume( spep_5 + 46 -20, 1021, 50 );
setSeVolume( spep_5 + 49 -20, 1021, 0 );
stopSe( spep_5 + 49 -20, SE10, 0 );

setSeVolume( spep_5 + 5 -20, 1133, 60 );
setSeVolume( spep_5 + 8 -20, 1133, 50 );
setSeVolume( spep_5 + 14 -20, 1133, 40 );
setSeVolume( spep_5 + 28 -20, 1133, 30 );
setSeVolume( spep_5 + 34 -20, 1133, 20 );
setSeVolume( spep_5 + 40 -20, 1133, 10 );
setSeVolume( spep_5 + 48 -20, 1133, 0 );
stopSe( spep_5 + 48 -20, SE11, 0 );

--気弾道
SE12 = playSe( spep_5 + 25 -20, 1171 );
setSeVolume( spep_5 + 25 -20, 1171, 0 );
setSeVolume( spep_5 + 33 -20, 1171, 0 );
setSeVolume( spep_5 + 34 -20, 1171, 50 );
setSeVolume( spep_5 + 35 -20, 1171, 100 );
setSeVolume( spep_5 + 42 -20, 1171, 100 );
setSeVolume( spep_5 + 50 -20, 1171, 80 );
setSeVolume( spep_5 + 56 -20, 1171, 70 );
setSeVolume( spep_5 + 60 -20, 1171, 56 );
setSeVolume( spep_5 + 66 -20, 1171, 52 );
setSeVolume( spep_5 + 72 -20, 1171, 40 );
setSeVolume( spep_5 + 76 -20, 1171, 20 );
setSeVolume( spep_5 + 81 -20, 1171, 0 );
stopSe( spep_5 + 81 -20, SE12, 0 );

--爆発
SE13 = playSe( spep_5 + 86 -20, 1159 );
setSeVolume( spep_5 + 86 -20, 1159, 80 );
stopSe( spep_5 + 116, SE13, 10 );
SE14 = playSe( spep_5 + 86 -20, 1011 );
stopSe( spep_5 + 116, SE14, 10 );
SE15 = playSe( spep_5 + 86 -20, 1023 );
setSeVolume( spep_5 + 86 -20, 1023, 90 );
stopSe( spep_5 + 116, SE15, 10 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 116;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_6 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_6 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_6 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_6 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_6 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_6 + 0, shuchusen, 0 );
setEffRotateKey( spep_6 + 90, shuchusen, 0 );

setEffAlphaKey( spep_6 + 0, shuchusen, 255 );
setEffAlphaKey( spep_6 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_6 + 0, SE_05 );

--溜め
SE16 = playSe( spep_6 + 53 -20, 1210 );
setSeVolume( spep_6 + 53 -20, 1210, 0 );

-- ** 次の準備 ** --
entryFade( spep_6 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_6 + 80, 6, 8, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_7 = spep_6 + 94;

------------------------------------------------------
-- 構え〜発射(186F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffect( spep_7 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --発射(ef_008)
setEffMoveKey( spep_7 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_7 + 186, hassha, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_7 + 186, hassha, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, hassha, 0 );
setEffRotateKey( spep_7 + 186, hassha, 0 );
setEffAlphaKey( spep_7 + 0, hassha, 255 );
setEffAlphaKey( spep_7 + 186, hassha, 255 );

spep_x = spep_7 + 42 -4;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_7 -3 + 130,  10012, 58, 0x100, -1, 0, 118.1, 255.2 );  --ズオッ
setEffMoveKey( spep_7 -3 + 130, ctzuo, 118.1, 255.2 , 0 );
setEffMoveKey( spep_7 -3 + 132, ctzuo, 122.5, 293.6 , 0 );
setEffMoveKey( spep_7 -3 + 134, ctzuo, 128.9, 309.9 , 0 );
setEffMoveKey( spep_7 -3 + 136, ctzuo, 123.5, 329.6 , 0 );
setEffMoveKey( spep_7 -3 + 138, ctzuo, 127, 308.4 , 0 );
setEffMoveKey( spep_7 -3 + 140, ctzuo, 122.7, 325.4 , 0 );
setEffMoveKey( spep_7 -3 + 142, ctzuo, 125.1, 307.1 , 0 );
setEffMoveKey( spep_7 -3 + 144, ctzuo, 122, 323.6 , 0 );
setEffMoveKey( spep_7 -3 + 146, ctzuo, 124.9, 307.7 , 0 );
setEffMoveKey( spep_7 -3 + 148, ctzuo, 121.8, 324.2 , 0 );
setEffMoveKey( spep_7 -3 + 150, ctzuo, 124.7, 308.2 , 0 );
setEffMoveKey( spep_7 -3 + 152, ctzuo, 121.5, 325 , 0 );
setEffMoveKey( spep_7 -3 + 154, ctzuo, 124.5, 308.9 , 0 );
setEffMoveKey( spep_7 -3 + 156, ctzuo, 121.3, 325.6 , 0 );
setEffMoveKey( spep_7 -3 + 158, ctzuo, 124.5, 309.5 , 0 );
setEffMoveKey( spep_7 -3 + 160, ctzuo, 121.1, 326.3 , 0 );
setEffMoveKey( spep_7 -3 + 162, ctzuo, 124.2, 310.1 , 0 );
setEffMoveKey( spep_7 -3 + 164, ctzuo, 120.9, 327 , 0 );
setEffMoveKey( spep_7 -3 + 166, ctzuo, 124, 310.7 , 0 );
setEffMoveKey( spep_7 -3 + 168, ctzuo, 120.6, 327.6 , 0 );
setEffMoveKey( spep_7 -3 + 170, ctzuo, 124, 311.2 , 0 );
setEffMoveKey( spep_7 -3 + 172, ctzuo, 120.4, 328.3 , 0 );
setEffMoveKey( spep_7 -3 + 174, ctzuo, 123.7, 311.9 , 0 );
setEffMoveKey( spep_7 -3 + 176, ctzuo, 120.3, 329 , 0 );
setEffMoveKey( spep_7 -3 + 178, ctzuo, 123.5, 312.5 , 0 );
setEffMoveKey( spep_7 -3 + 180, ctzuo, 119.9, 329.7 , 0 );
setEffMoveKey( spep_7 -3 + 182, ctzuo, 123.5, 313.1 , 0 );
setEffMoveKey( spep_7 -3 + 184, ctzuo, 119.7, 330.3 , 0 );
setEffMoveKey( spep_7 -3 + 186, ctzuo, 123.2, 313.7 , 0 );
setEffMoveKey( spep_7 -3 + 188, ctzuo, 119.6, 331 , 0 );

setEffScaleKey( spep_7 -3 + 130, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_7 -3 + 132, ctzuo, 1.84, 1.84 );
setEffScaleKey( spep_7 -3 + 134, ctzuo, 3.31, 3.31 );
setEffScaleKey( spep_7 -3 + 136, ctzuo, 3.07, 3.07 );
setEffScaleKey( spep_7 -3 + 138, ctzuo, 2.87, 2.87 );
setEffScaleKey( spep_7 -3 + 140, ctzuo, 2.63, 2.63 );
setEffScaleKey( spep_7 -3 + 142, ctzuo, 2.42, 2.42 );
setEffScaleKey( spep_7 -3 + 148, ctzuo, 2.42, 2.42 );
setEffScaleKey( spep_7 -3 + 150, ctzuo, 2.46, 2.46 );
setEffScaleKey( spep_7 -3 + 158, ctzuo, 2.46, 2.46 );
setEffScaleKey( spep_7 -3 + 160, ctzuo, 2.49, 2.49 );
setEffScaleKey( spep_7 -3 + 168, ctzuo, 2.49, 2.49 );
setEffScaleKey( spep_7 -3 + 170, ctzuo, 2.52, 2.52 );
setEffScaleKey( spep_7 -3 + 178, ctzuo, 2.52, 2.52 );
setEffScaleKey( spep_7 -3 + 180, ctzuo, 2.56, 2.56 );
setEffScaleKey( spep_7 -3 + 188, ctzuo, 2.56, 2.56 );

setEffRotateKey( spep_7 -3 + 130, ctzuo, 36.7 );
setEffRotateKey( spep_7 -3 + 132, ctzuo, 30.4 );
setEffRotateKey( spep_7 -3 + 134, ctzuo, 24 );
setEffRotateKey( spep_7 -3 + 136, ctzuo, 24.6 );
setEffRotateKey( spep_7 -3 + 138, ctzuo, 25.1 );
setEffRotateKey( spep_7 -3 + 140, ctzuo, 25.7 );
setEffRotateKey( spep_7 -3 + 142, ctzuo, 26.3 );
setEffRotateKey( spep_7 -3 + 144, ctzuo, 26.2 );
setEffRotateKey( spep_7 -3 + 146, ctzuo, 26.1 );
setEffRotateKey( spep_7 -3 + 148, ctzuo, 26.1 );
setEffRotateKey( spep_7 -3 + 150, ctzuo, 26 );
setEffRotateKey( spep_7 -3 + 152, ctzuo, 25.9 );
setEffRotateKey( spep_7 -3 + 154, ctzuo, 25.9 );
setEffRotateKey( spep_7 -3 + 156, ctzuo, 25.8 );
setEffRotateKey( spep_7 -3 + 158, ctzuo, 25.7 );
setEffRotateKey( spep_7 -3 + 160, ctzuo, 25.7 );
setEffRotateKey( spep_7 -3 + 162, ctzuo, 25.6 );
setEffRotateKey( spep_7 -3 + 164, ctzuo, 25.5 );
setEffRotateKey( spep_7 -3 + 166, ctzuo, 25.5 );
setEffRotateKey( spep_7 -3 + 168, ctzuo, 25.4 );
setEffRotateKey( spep_7 -3 + 170, ctzuo, 25.3 );
setEffRotateKey( spep_7 -3 + 172, ctzuo, 25.3 );
setEffRotateKey( spep_7 -3 + 174, ctzuo, 25.2 );
setEffRotateKey( spep_7 -3 + 176, ctzuo, 25.1 );
setEffRotateKey( spep_7 -3 + 178, ctzuo, 25.1 );
setEffRotateKey( spep_7 -3 + 180, ctzuo, 25 );
setEffRotateKey( spep_7 -3 + 182, ctzuo, 24.9 );
setEffRotateKey( spep_7 -3 + 184, ctzuo, 24.9 );
setEffRotateKey( spep_7 -3 + 186, ctzuo, 24.8 );
setEffRotateKey( spep_7 -3 + 188, ctzuo, 24.7 );

setEffAlphaKey( spep_7 -3 + 130, ctzuo, 255 );
setEffAlphaKey( spep_7 -3 + 188, ctzuo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 188, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_7 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 180 );  --white fade
entryFade( spep_7 + 130 -3, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b,  255 );  --white fade

-- ** 音 ** --
--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

--溜め
setSeVolume( spep_7 + 21 -20, 1210, 0 );
setSeVolume( spep_7 + 24 -20, 1210, 10 );
setSeVolume( spep_7 + 30 -20, 1210, 30 );
setSeVolume( spep_7 + 36 -20, 1210, 60 );
setSeVolume( spep_7 + 40 -20, 1210, 90 );
setSeVolume( spep_7 + 42 -20, 1210, 100 );
stopSe( spep_7 + 156 -20, SE16, 0 );

playSe( spep_7 + 20 -20, 1036 ); 
playSe( spep_7 + 22 -20, 1037 ); 
playSe( spep_7 + 44 -20, 1036 ); 
playSe( spep_7 + 68 -20, 1036 ); 
playSe( spep_7 + 92 -20, 1036 ); 
playSe( spep_7 + 116 -20, 1036 ); 
SE17 = playSe( spep_7 + 140 -20, 1036 ); 
stopSe( spep_7 + 151 -20, SE17, 0 );

--発射
playSe( spep_7 + 147 -20, 1022 ); 
setSeVolume( spep_7 + 147 -20, 1022, 130 );
SE18 = playSe( spep_7 + 147 -20, 1213 ); 
setSeVolume( spep_7 + 156 -20, 1213, 0 );
setSeVolume( spep_7 + 147 -20, 1213, 0 );
setSeVolume( spep_7 + 150 -20, 1213, 20 );
setSeVolume( spep_7 + 154 -20, 1213, 40 );
setSeVolume( spep_7 + 162 -20, 1213, 60 );
setSeVolume( spep_7 + 168 -20, 1213, 70 );
setSeVolume( spep_7 + 170 -20, 1213, 80 );
setSeVolume( spep_7 + 175 -20, 1213, 90 );

SE19 = playSe( spep_7 + 149 -20, 1205 ); 
setSeVolume( spep_7 + 149 -20, 1205, 80 );

-- ** 次の準備 ** --
spep_8 = spep_7 + 186 -2;

------------------------------------------------------
-- 爆発(186F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish = entryEffect( spep_8 + 0, SP_09, 0x100, -1, 0, 0, 0 );  --爆発(ef_009)
setEffMoveKey( spep_8 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_8 + 186, finish, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_8 + 186, finish, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, finish, 0 );
setEffRotateKey( spep_8 + 186, finish, 0 );
setEffAlphaKey( spep_8 + 0, finish, 255 );
setEffAlphaKey( spep_8 + 186, finish, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 188, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_8 + 60 -3, 0, 2, 12, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--発射
setSeVolume( spep_8 + 99 -20, 1213, 0 );
stopSe( spep_8 + 99 -20, SE18, 0 );

setSeVolume( spep_8 + 2 -20, 1205, 80 );
setSeVolume( spep_8 + 10 -20, 1205, 70 );
setSeVolume( spep_8 + 16 -20, 1205, 66 );
setSeVolume( spep_8 + 20 -20, 1205, 58 );
setSeVolume( spep_8 + 28 -20, 1205, 50 );
setSeVolume( spep_8 + 36 -20, 1205, 46 );
setSeVolume( spep_8 + 42 -20, 1205, 42 );
setSeVolume( spep_8 + 50 -20, 1205, 38 );
setSeVolume( spep_8 + 56 -20, 1205, 30 );
setSeVolume( spep_8 + 60 -20, 1205, 24 );
setSeVolume( spep_8 + 66 -20, 1205, 18 );
setSeVolume( spep_8 + 70 -20, 1205, 10 );
setSeVolume( spep_8 + 77 -20, 1205, 0 );
stopSe( spep_8 + 77 -20, SE19, 0 );

--爆発
playSe( spep_8 + 87 -20, 1024 ); 
playSe( spep_8 + 87 -20, 1159 ); 
setSeVolume( spep_8 + 87 -20, 1159, 96 );
playSe( spep_8 + 87 -20, 1023 ); 

-- ** ダメージ表示 ** --
dealDamage( spep_8 + 60 );
endPhase( spep_8 + 184 -10 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 溜め(126F)
------------------------------------------------------
spep_0 = 0;

x1 = 10;
-- ** エフェクト等 ** --
tame = entryEffectLife( spep_0 + 0, SP_01, 126 +x1, 0x100, -1, 0, 0, 0 );  --溜め(ef_001)
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 126 +x1, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 126 +x1, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 126 +x1, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 126 +x1, tame, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 128 +x1, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 30 -3 +x1, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 180 );  --white fade
entryFade( spep_0 + 126 -6 +x1, 4, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--オーラ
playSe( spep_0 + 0, 1036 );
playSe( spep_0 + 24, 1036 );
playSe( spep_0 + 48, 1036 );
playSe( spep_0 + 72, 1036 );
playSe( spep_0 + 96, 1036 );
playSe( spep_0 + 120, 1036 );

--電気ぱちぱち
playSe( spep_0 + 0, 1056 );
playSe( spep_0 + 63, 1056 );
SE0 = playSe( spep_0 + 111, 1056 );

--気溜め
playSe( spep_0 + 28 +x1, 9 );
setSeVolume( spep_0 + 28 +x1, 9, 90 );
playSe( spep_0 + 28 +x1, 1068 );
setSeVolume( spep_0 + 28 +x1, 1068, 90 );
SE1 = playSe( spep_0 + 28 +x1, 1044 );
setSeVolume( spep_0 + 28 +x1, 1044, 40 );
setSeVolume( spep_0 + 36 +x1, 1044, 80 );
setSeVolume( spep_0 + 48 +x1, 1044, 100 );
setSeVolume( spep_0 + 60 +x1, 1044, 150 );
setSeVolume( spep_0 + 74 +x1, 1044, 170 );
setSeVolume( spep_0 + 82 +x1, 1044, 200 );
setSeVolume( spep_0 + 93 +x1, 1044, 260 );

--画面切り替え
playSe( spep_0 + 104 +x1, 1072 );
setSeVolume( spep_0 + 104 +x1, 1072, 130 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 126 +x1;

------------------------------------------------------
-- 両手気弾(76F)
------------------------------------------------------

-- ** エフェクト等 ** --
kidan = entryEffectLife( spep_1 + 0, SP_02, 76, 0x100, -1, 0, 0, 0 );  --両手気弾(ef_002)
setEffMoveKey( spep_1 + 0, kidan, 0, 0 , 0 );
setEffMoveKey( spep_1 + 76, kidan, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kidan, -1.0, 1.0 );
setEffScaleKey( spep_1 + 76, kidan, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kidan, 0 );
setEffRotateKey( spep_1 + 76, kidan, 0 );
setEffAlphaKey( spep_1 + 0, kidan, 255 );
setEffAlphaKey( spep_1 + 75, kidan, 255 );
setEffAlphaKey( spep_1 + 76, kidan, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 78, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--電気ぱちぱち
stopSe( spep_1 + 5, SE0, 0 );

--気溜め
setSeVolume( spep_1 + 4, 1044, 260 );
setSeVolume( spep_1 + 8, 1044, 200 );
setSeVolume( spep_1 + 12, 1044, 150 );
setSeVolume( spep_1 + 16, 1044, 100 );
setSeVolume( spep_1 + 18, 1044, 50 );
setSeVolume( spep_1 + 20, 1044, 0 );
stopSe( spep_1 + 20, SE1, 0 );

--連続気弾
SE2 = playSe( spep_1 + 20 -20, 1015 );
setSeVolume( spep_1 + 20 -20, 1015, 85 );
setSeVolume( spep_1 + 29 -20, 1015, 85 );
setSeVolume( spep_1 + 32 -20, 1015, 70 );
setSeVolume( spep_1 + 34 -20, 1015, 40 );
setSeVolume( spep_1 + 36 -20, 1015, 20 );
setSeVolume( spep_1 + 38 -20, 1015, 0 );
stopSe( spep_1 + 38 -20, SE2, 0 );

SE2a = playSe( spep_1 + 25 -20, 1016 );
SE2b = playSe( spep_1 + 31 -20, 1016 );
setSeVolume( spep_1 + 31 -20, 1016, 95 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 46; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe(SP_dodge - 12, SE1, 0 );
stopSe(SP_dodge - 12, SE2, 0 );
stopSe(SP_dodge - 12, SE2a, 0 );
stopSe(SP_dodge - 12, SE2b, 0 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
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

-- ** 音 ** --
--連続気弾
SE3 = playSe( spep_1 + 37 -20, 1015 );
setSeVolume( spep_1 + 37 -20, 1015, 100 );
setSeVolume( spep_1 + 50 -20, 1015, 100 );
setSeVolume( spep_1 + 54 -20, 1015, 85 );
setSeVolume( spep_1 + 58 -20, 1015, 60 );
setSeVolume( spep_1 + 60 -20, 1015, 30 );
setSeVolume( spep_1 + 65 -20, 1015, 0 );
stopSe( spep_1 + 65 -20, SE3, 0 );

playSe( spep_1 + 41 -20, 1016 );
setSeVolume( spep_1 + 41 -20, 1016, 90 );
playSe( spep_1 + 45 -20, 1016 );

SE4 = playSe( spep_1 + 49 -20, 1015 );
setSeVolume( spep_1 + 49 -20, 1015, 80 );
setSeVolume( spep_1 + 62 -20, 1015, 80 );
setSeVolume( spep_1 + 64 -20, 1015, 60 );
setSeVolume( spep_1 + 66 -20, 1015, 40 );
setSeVolume( spep_1 + 68 -20, 1015, 20 );
setSeVolume( spep_1 + 70 -20, 1015, 0 );
stopSe( spep_1 + 70 -20, SE4, 0 );

playSe( spep_1 + 54 -20, 1016 );
playSe( spep_1 + 60 -20, 1016 );
playSe( spep_1 + 65 -20, 1016 );
setSeVolume( spep_1 + 65 -20, 1016, 80 );

SE5 = playSe( spep_1 + 49 -20, 1015 );
setSeVolume( spep_1 + 49 -20, 1015, 80 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 76;

------------------------------------------------------
-- 両手気弾着弾(96F)
------------------------------------------------------
x = 10;
-- ** エフェクト等 ** --
hidan_f = entryEffectLife( spep_2 + 0, SP_03, 96 -x, 0x100, -1, 0, 0, 0 );  --両手気弾着弾(ef_003)
setEffMoveKey( spep_2 + 0, hidan_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96 -x, hidan_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hidan_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 96 -x, hidan_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hidan_f, 0 );
setEffRotateKey( spep_2 + 96 -x, hidan_f, 0 );
setEffAlphaKey( spep_2 + 0, hidan_f, 255 );
setEffAlphaKey( spep_2 + 96 -x, hidan_f, 255 );

hidan_b = entryEffectLife( spep_2 + 0, SP_04, 96 -x, 0x80, -1, 0, 0, 0 );  --両手気弾着弾(ef_004)
setEffMoveKey( spep_2 + 0, hidan_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96 -x, hidan_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hidan_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 96 -x, hidan_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hidan_b, 0 );
setEffRotateKey( spep_2 + 96 -x, hidan_b, 0 );
setEffAlphaKey( spep_2 + 0, hidan_b, 255 );
setEffAlphaKey( spep_2 + 96 -x, hidan_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 98 -x, 1, 0 );
changeAnime( spep_2 + 0, 1, 100 );
changeAnime( spep_2 -3 + 24, 1, 104 );
changeAnime( spep_2 -3 + 50, 1, 106 );
changeAnime( spep_2 -3 + 60, 1, 108 );
changeAnime( spep_2 -3 + 70, 1, 106 );

setMoveKey( spep_2 + 0, 1, 13.7, 36.2 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 13.3, 39.5 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 12.8, 42.9 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 12.4, 46.2 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 11.7, 48.9 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 11.2, 52.3 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 10.8, 55.6 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 10.3, 59 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 9.9, 62.4 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 9.4, 65.7 , 0 );
setMoveKey( spep_2 -3 + 23, 1, 8.9, 69.1 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 15.4, 85.8 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 9.8, 85.5 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 15.4, 88.1 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 4.5, 80.2 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 15.2, 89.9 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 9.6, 92.2 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 15.1, 91.6 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 6, 84 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 14.9, 93.4 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 7.9, 97.3 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 14.8, 95.2 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 5.9, 86.1 , 0 );
setMoveKey( spep_2 -3 + 49, 1, 14.6, 97 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 13.8, 124.7 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 17, 130.4 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 15.4, 132.8 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 20.2, 138.4 , 0 );
setMoveKey( spep_2 -3 + 59, 1, 20.2, 140.9 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 42.1, 131.6 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 42.9, 130.5 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 46.6, 136.2 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 45.5, 136.9 , 0 );
setMoveKey( spep_2 -3 + 69, 1, 50.9, 140.7 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 25.8, 155 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 28.2, 160.2 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 27.4, 160.4 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 29.7, 164 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 28.8, 162.6 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 31.1, 167.8 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 30.3, 167.9 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 32.6, 171.5 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 31.7, 170 , 0 );
--[[setMoveKey( spep_2 -3 + 88, 1, 34, 175.1 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 34.6, 176.8 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 32.2, 175.5 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 35.9, 180.3 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 33.5, 179 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 37.2, 183.9 , 0 );]]

setScaleKey( spep_2 + 0, 1, 1.69, 1.69 );
setScaleKey( spep_2 -3 + 4, 1, 1.63, 1.63 );
setScaleKey( spep_2 -3 + 6, 1, 1.57, 1.57 );
setScaleKey( spep_2 -3 + 8, 1, 1.51, 1.51 );
setScaleKey( spep_2 -3 + 10, 1, 1.46, 1.46 );
setScaleKey( spep_2 -3 + 12, 1, 1.4, 1.4 );
setScaleKey( spep_2 -3 + 14, 1, 1.34, 1.34 );
setScaleKey( spep_2 -3 + 16, 1, 1.28, 1.28 );
setScaleKey( spep_2 -3 + 18, 1, 1.22, 1.22 );
setScaleKey( spep_2 -3 + 20, 1, 1.16, 1.16 );
setScaleKey( spep_2 -3 + 23, 1, 1.1, 1.1 );
setScaleKey( spep_2 -3 + 24, 1, 1.13, 1.13 );
setScaleKey( spep_2 -3 + 26, 1, 1.12, 1.12 );
setScaleKey( spep_2 -3 + 28, 1, 1.11, 1.11 );
setScaleKey( spep_2 -3 + 30, 1, 1.11, 1.11 );
setScaleKey( spep_2 -3 + 32, 1, 1.1, 1.1 );
setScaleKey( spep_2 -3 + 34, 1, 1.1, 1.1 );
setScaleKey( spep_2 -3 + 36, 1, 1.09, 1.09 );
setScaleKey( spep_2 -3 + 38, 1, 1.09, 1.09 );
setScaleKey( spep_2 -3 + 40, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 42, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 44, 1, 1.07, 1.07 );
setScaleKey( spep_2 -3 + 46, 1, 1.07, 1.07 );
setScaleKey( spep_2 -3 + 49, 1, 1.06, 1.06 );
setScaleKey( spep_2 -3 + 50, 1, 1.07, 1.07 );
setScaleKey( spep_2 -3 + 52, 1, 1.06, 1.06 );
setScaleKey( spep_2 -3 + 54, 1, 1.06, 1.06 );
setScaleKey( spep_2 -3 + 56, 1, 1.05, 1.05 );
setScaleKey( spep_2 -3 + 59, 1, 1.04, 1.04 );
setScaleKey( spep_2 -3 + 60, 1, 1, 1 );
setScaleKey( spep_2 -3 + 62, 1, 1, 1 );
setScaleKey( spep_2 -3 + 64, 1, 0.99, 0.99 );
setScaleKey( spep_2 -3 + 66, 1, 0.98, 0.98 );
setScaleKey( spep_2 -3 + 69, 1, 0.98, 0.98 );
setScaleKey( spep_2 -3 + 70, 1, 1.01, 1.01 );
setScaleKey( spep_2 -3 + 72, 1, 1.01, 1.01 );
setScaleKey( spep_2 -3 + 74, 1, 1, 1 );
setScaleKey( spep_2 -3 + 76, 1, 1, 1 );
setScaleKey( spep_2 -3 + 78, 1, 0.99, 0.99 );
setScaleKey( spep_2 -3 + 80, 1, 0.99, 0.99 );
setScaleKey( spep_2 -3 + 82, 1, 0.98, 0.98 );
setScaleKey( spep_2 -3 + 84, 1, 0.98, 0.98 );
setScaleKey( spep_2 -3 + 86, 1, 0.97, 0.97 );
--[[setScaleKey( spep_2 -3 + 88, 1, 0.97, 0.97 );
setScaleKey( spep_2 -3 + 90, 1, 0.96, 0.96 );
setScaleKey( spep_2 -3 + 92, 1, 0.96, 0.96 );
setScaleKey( spep_2 -3 + 94, 1, 0.95, 0.95 );
setScaleKey( spep_2 -3 + 96, 1, 0.95, 0.95 );
setScaleKey( spep_2 -3 + 98, 1, 0.94, 0.94 );]]

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 23, 1, 0 );
setRotateKey( spep_2 -3 + 24, 1, -9.8 );
setRotateKey( spep_2 -3 + 49, 1, -9.8 );
setRotateKey( spep_2 -3 + 50, 1, -28.5 );
setRotateKey( spep_2 -3 + 59, 1, -28.5 );
setRotateKey( spep_2 -3 + 60, 1, -4.2 );
setRotateKey( spep_2 -3 + 62, 1, -4.4 );
setRotateKey( spep_2 -3 + 64, 1, -4.7 );
setRotateKey( spep_2 -3 + 66, 1, -4.9 );
setRotateKey( spep_2 -3 + 69, 1, -5.2 );
setRotateKey( spep_2 -3 + 70, 1, -28.5 );
setRotateKey( spep_2 -3 + 98 -x, 1, -28.5 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 98 -x, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--連続気弾
setSeVolume( spep_2 + 5 -20, 1015, 80 );
setSeVolume( spep_2 + 8 -20, 1015, 60 );
setSeVolume( spep_2 + 10 -20, 1015, 40 );
setSeVolume( spep_2 + 12 -20, 1015, 20 );
setSeVolume( spep_2 + 14 -20, 1015, 0 );
stopSe( spep_2 + 14 -20, SE5, 0 );

playSe( spep_2 + 1 -20, 1016 );

--弾道
playSe( spep_2 + 13 -20, 44 );
setSeVolume( spep_2 + 13 -20, 44, 90 );
playSe( spep_2 + 18 -20, 44 );

--連続気弾・爆発
playSe( spep_2 + 34 -20, 1002 );
playSe( spep_2 + 45 -20, 1025 );
playSe( spep_2 + 50 -20, 1023 );
playSe( spep_2 + 56 -20, 1002 );
setSeVolume( spep_2 + 56 -20, 1002, 90 );
playSe( spep_2 + 62 -20, 1023 );
setSeVolume( spep_2 + 62 -20, 1023, 80 );
playSe( spep_2 + 74 -20, 1068 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 96 -x;

------------------------------------------------------
-- ジャンプ〜気弾生成(146F)
------------------------------------------------------

-- ** エフェクト等 ** --
jump = entryEffectLife( spep_3 + 0, SP_05, 146, 0x100, -1, 0, 0, 0 );  --前方へ蹴り構え(ef_005)
setEffMoveKey( spep_3 + 0, jump, 0, 0 , 0 );
setEffMoveKey( spep_3 + 146, jump, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, jump, -1.0, 1.0 );
setEffScaleKey( spep_3 + 146, jump, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, jump, 0 );
setEffRotateKey( spep_3 + 146, jump, 0 );
setEffAlphaKey( spep_3 + 0, jump, 255 );
setEffAlphaKey( spep_3 + 145, jump, 255 );
setEffAlphaKey( spep_3 + 146, jump, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 148, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--ジャンプ
SE6 = playSe( spep_3 + 24 -20, 1109 );
stopSe( spep_3 + 35 -20, SE6, 8 );
playSe( spep_3 + 28 -20, 44 );

--気弾溜め
playSe( spep_3 + 76 -20, 1130 );
setSeVolume( spep_3 + 76 -20, 1130, 90 );
SE7 = playSe( spep_3 + 76 -20, 1154 );
setSeVolume( spep_3 + 76 -20, 1130, 90 );
SE8 = playSe( spep_3 + 76 -20, 1157 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 146;

------------------------------------------------------
-- 片手気弾発射(36F)
------------------------------------------------------

-- ** エフェクト等 ** --
katatekidan = entryEffectLife( spep_4 + 0, SP_06, 36, 0x100, -1, 0, 0, 0 );  --片手気弾発射(ef_006)
setEffMoveKey( spep_4 + 0, katatekidan, 0, 0 , 0 );
setEffMoveKey( spep_4 + 36, katatekidan, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, katatekidan, -1.0, 1.0 );
setEffScaleKey( spep_4 + 36, katatekidan, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, katatekidan, 0 );
setEffRotateKey( spep_4 + 36, katatekidan, 0 );
setEffAlphaKey( spep_4 + 0, katatekidan, 255 );
setEffAlphaKey( spep_4 + 36, katatekidan, 255 );

-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 38, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
--気弾溜め
stopSe( spep_4 + 28 -20, SE7, 0 );
stopSe( spep_4 + 52 -20, SE8, 0 );

--気弾発射
SE9 = playSe( spep_4 + 7 -20, 44 );
setSeVolume( spep_4 + 7 -20, 44, 90 );
stopSe( spep_4 + 28 -20, SE9, 0 );
SE10 = playSe( spep_4 + 25 -20, 1021 );
setSeVolume( spep_4 + 25 -20, 1021, 134 );
SE11 = playSe( spep_4 + 25 -20, 1133 );
setSeVolume( spep_4 + 25 -20, 1133, 60 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 36;

------------------------------------------------------
-- 片手気弾着弾(116F)
------------------------------------------------------

-- ** エフェクト等 ** --
tyakudan = entryEffectLife( spep_5 + 0, SP_07, 116, 0x100, -1, 0, 0, 0 );  --片手気弾着弾(ef_007)
setEffMoveKey( spep_5 + 0, tyakudan, 0, 0 , 0 );
setEffMoveKey( spep_5 + 116, tyakudan, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, tyakudan, -1.0, 1.0 );
setEffScaleKey( spep_5 + 116, tyakudan, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tyakudan, 0 );
setEffRotateKey( spep_5 + 116, tyakudan, 0 );
setEffAlphaKey( spep_5 + 0, tyakudan, 255 );
setEffAlphaKey( spep_5 + 116, tyakudan, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 118, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 66 -3, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--気弾発射
setSeVolume( spep_5 + 31 -20, 1021, 134 );
setSeVolume( spep_5 + 34 -20, 1021, 110 );
setSeVolume( spep_5 + 40 -20, 1021, 90 );
setSeVolume( spep_5 + 46 -20, 1021, 50 );
setSeVolume( spep_5 + 49 -20, 1021, 0 );
stopSe( spep_5 + 49 -20, SE10, 0 );

setSeVolume( spep_5 + 5 -20, 1133, 60 );
setSeVolume( spep_5 + 8 -20, 1133, 50 );
setSeVolume( spep_5 + 14 -20, 1133, 40 );
setSeVolume( spep_5 + 28 -20, 1133, 30 );
setSeVolume( spep_5 + 34 -20, 1133, 20 );
setSeVolume( spep_5 + 40 -20, 1133, 10 );
setSeVolume( spep_5 + 48 -20, 1133, 0 );
stopSe( spep_5 + 48 -20, SE11, 0 );

--気弾道
SE12 = playSe( spep_5 + 25 -20, 1171 );
setSeVolume( spep_5 + 25 -20, 1171, 0 );
setSeVolume( spep_5 + 33 -20, 1171, 0 );
setSeVolume( spep_5 + 34 -20, 1171, 50 );
setSeVolume( spep_5 + 35 -20, 1171, 100 );
setSeVolume( spep_5 + 42 -20, 1171, 100 );
setSeVolume( spep_5 + 50 -20, 1171, 80 );
setSeVolume( spep_5 + 56 -20, 1171, 70 );
setSeVolume( spep_5 + 60 -20, 1171, 56 );
setSeVolume( spep_5 + 66 -20, 1171, 52 );
setSeVolume( spep_5 + 72 -20, 1171, 40 );
setSeVolume( spep_5 + 76 -20, 1171, 20 );
setSeVolume( spep_5 + 81 -20, 1171, 0 );
stopSe( spep_5 + 81 -20, SE12, 0 );

--爆発
SE13 = playSe( spep_5 + 86 -20, 1159 );
setSeVolume( spep_5 + 86 -20, 1159, 80 );
stopSe( spep_5 + 116, SE13, 10 );
SE14 = playSe( spep_5 + 86 -20, 1011 );
stopSe( spep_5 + 116, SE14, 10 );
SE15 = playSe( spep_5 + 86 -20, 1023 );
setSeVolume( spep_5 + 86 -20, 1023, 90 );
stopSe( spep_5 + 116, SE15, 10 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 116;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_6 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_6 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_6 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_6 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_6 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_6 + 0, shuchusen, 0 );
setEffRotateKey( spep_6 + 90, shuchusen, 0 );

setEffAlphaKey( spep_6 + 0, shuchusen, 255 );
setEffAlphaKey( spep_6 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_6 + 0, SE_05 );

--溜め
SE16 = playSe( spep_6 + 53 -20, 1210 );
setSeVolume( spep_6 + 53 -20, 1210, 0 );

-- ** 次の準備 ** --
entryFade( spep_6 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_6 + 80, 6, 8, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_7 = spep_6 + 94;

------------------------------------------------------
-- 構え〜発射(186F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffect( spep_7 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --発射(ef_008)
setEffMoveKey( spep_7 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_7 + 186, hassha, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_7 + 186, hassha, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, hassha, 0 );
setEffRotateKey( spep_7 + 186, hassha, 0 );
setEffAlphaKey( spep_7 + 0, hassha, 255 );
setEffAlphaKey( spep_7 + 186, hassha, 255 );

spep_x = spep_7 + 42 -4;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_7 -3 + 130,  10012, 58, 0x100, -1, 0, 118.1, 255.2 );  --ズオッ
setEffMoveKey( spep_7 -3 + 130, ctzuo, 118.1, 255.2 , 0 );
setEffMoveKey( spep_7 -3 + 132, ctzuo, 122.5, 293.6 , 0 );
setEffMoveKey( spep_7 -3 + 134, ctzuo, 128.9, 309.9 , 0 );
setEffMoveKey( spep_7 -3 + 136, ctzuo, 123.5, 329.6 , 0 );
setEffMoveKey( spep_7 -3 + 138, ctzuo, 127, 308.4 , 0 );
setEffMoveKey( spep_7 -3 + 140, ctzuo, 122.7, 325.4 , 0 );
setEffMoveKey( spep_7 -3 + 142, ctzuo, 125.1, 307.1 , 0 );
setEffMoveKey( spep_7 -3 + 144, ctzuo, 122, 323.6 , 0 );
setEffMoveKey( spep_7 -3 + 146, ctzuo, 124.9, 307.7 , 0 );
setEffMoveKey( spep_7 -3 + 148, ctzuo, 121.8, 324.2 , 0 );
setEffMoveKey( spep_7 -3 + 150, ctzuo, 124.7, 308.2 , 0 );
setEffMoveKey( spep_7 -3 + 152, ctzuo, 121.5, 325 , 0 );
setEffMoveKey( spep_7 -3 + 154, ctzuo, 124.5, 308.9 , 0 );
setEffMoveKey( spep_7 -3 + 156, ctzuo, 121.3, 325.6 , 0 );
setEffMoveKey( spep_7 -3 + 158, ctzuo, 124.5, 309.5 , 0 );
setEffMoveKey( spep_7 -3 + 160, ctzuo, 121.1, 326.3 , 0 );
setEffMoveKey( spep_7 -3 + 162, ctzuo, 124.2, 310.1 , 0 );
setEffMoveKey( spep_7 -3 + 164, ctzuo, 120.9, 327 , 0 );
setEffMoveKey( spep_7 -3 + 166, ctzuo, 124, 310.7 , 0 );
setEffMoveKey( spep_7 -3 + 168, ctzuo, 120.6, 327.6 , 0 );
setEffMoveKey( spep_7 -3 + 170, ctzuo, 124, 311.2 , 0 );
setEffMoveKey( spep_7 -3 + 172, ctzuo, 120.4, 328.3 , 0 );
setEffMoveKey( spep_7 -3 + 174, ctzuo, 123.7, 311.9 , 0 );
setEffMoveKey( spep_7 -3 + 176, ctzuo, 120.3, 329 , 0 );
setEffMoveKey( spep_7 -3 + 178, ctzuo, 123.5, 312.5 , 0 );
setEffMoveKey( spep_7 -3 + 180, ctzuo, 119.9, 329.7 , 0 );
setEffMoveKey( spep_7 -3 + 182, ctzuo, 123.5, 313.1 , 0 );
setEffMoveKey( spep_7 -3 + 184, ctzuo, 119.7, 330.3 , 0 );
setEffMoveKey( spep_7 -3 + 186, ctzuo, 123.2, 313.7 , 0 );
setEffMoveKey( spep_7 -3 + 188, ctzuo, 119.6, 331 , 0 );

setEffScaleKey( spep_7 -3 + 130, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_7 -3 + 132, ctzuo, 1.84, 1.84 );
setEffScaleKey( spep_7 -3 + 134, ctzuo, 3.31, 3.31 );
setEffScaleKey( spep_7 -3 + 136, ctzuo, 3.07, 3.07 );
setEffScaleKey( spep_7 -3 + 138, ctzuo, 2.87, 2.87 );
setEffScaleKey( spep_7 -3 + 140, ctzuo, 2.63, 2.63 );
setEffScaleKey( spep_7 -3 + 142, ctzuo, 2.42, 2.42 );
setEffScaleKey( spep_7 -3 + 148, ctzuo, 2.42, 2.42 );
setEffScaleKey( spep_7 -3 + 150, ctzuo, 2.46, 2.46 );
setEffScaleKey( spep_7 -3 + 158, ctzuo, 2.46, 2.46 );
setEffScaleKey( spep_7 -3 + 160, ctzuo, 2.49, 2.49 );
setEffScaleKey( spep_7 -3 + 168, ctzuo, 2.49, 2.49 );
setEffScaleKey( spep_7 -3 + 170, ctzuo, 2.52, 2.52 );
setEffScaleKey( spep_7 -3 + 178, ctzuo, 2.52, 2.52 );
setEffScaleKey( spep_7 -3 + 180, ctzuo, 2.56, 2.56 );
setEffScaleKey( spep_7 -3 + 188, ctzuo, 2.56, 2.56 );

setEffRotateKey( spep_7 -3 + 130, ctzuo, 36.7 );
setEffRotateKey( spep_7 -3 + 132, ctzuo, 30.4 );
setEffRotateKey( spep_7 -3 + 134, ctzuo, 24 );
setEffRotateKey( spep_7 -3 + 136, ctzuo, 24.6 );
setEffRotateKey( spep_7 -3 + 138, ctzuo, 25.1 );
setEffRotateKey( spep_7 -3 + 140, ctzuo, 25.7 );
setEffRotateKey( spep_7 -3 + 142, ctzuo, 26.3 );
setEffRotateKey( spep_7 -3 + 144, ctzuo, 26.2 );
setEffRotateKey( spep_7 -3 + 146, ctzuo, 26.1 );
setEffRotateKey( spep_7 -3 + 148, ctzuo, 26.1 );
setEffRotateKey( spep_7 -3 + 150, ctzuo, 26 );
setEffRotateKey( spep_7 -3 + 152, ctzuo, 25.9 );
setEffRotateKey( spep_7 -3 + 154, ctzuo, 25.9 );
setEffRotateKey( spep_7 -3 + 156, ctzuo, 25.8 );
setEffRotateKey( spep_7 -3 + 158, ctzuo, 25.7 );
setEffRotateKey( spep_7 -3 + 160, ctzuo, 25.7 );
setEffRotateKey( spep_7 -3 + 162, ctzuo, 25.6 );
setEffRotateKey( spep_7 -3 + 164, ctzuo, 25.5 );
setEffRotateKey( spep_7 -3 + 166, ctzuo, 25.5 );
setEffRotateKey( spep_7 -3 + 168, ctzuo, 25.4 );
setEffRotateKey( spep_7 -3 + 170, ctzuo, 25.3 );
setEffRotateKey( spep_7 -3 + 172, ctzuo, 25.3 );
setEffRotateKey( spep_7 -3 + 174, ctzuo, 25.2 );
setEffRotateKey( spep_7 -3 + 176, ctzuo, 25.1 );
setEffRotateKey( spep_7 -3 + 178, ctzuo, 25.1 );
setEffRotateKey( spep_7 -3 + 180, ctzuo, 25 );
setEffRotateKey( spep_7 -3 + 182, ctzuo, 24.9 );
setEffRotateKey( spep_7 -3 + 184, ctzuo, 24.9 );
setEffRotateKey( spep_7 -3 + 186, ctzuo, 24.8 );
setEffRotateKey( spep_7 -3 + 188, ctzuo, 24.7 );

setEffAlphaKey( spep_7 -3 + 130, ctzuo, 255 );
setEffAlphaKey( spep_7 -3 + 188, ctzuo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 188, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_7 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 180 );  --white fade
entryFade( spep_7 + 130 -3, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b,  255 );  --white fade

-- ** 音 ** --
--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

--溜め
setSeVolume( spep_7 + 21 -20, 1210, 0 );
setSeVolume( spep_7 + 24 -20, 1210, 10 );
setSeVolume( spep_7 + 30 -20, 1210, 30 );
setSeVolume( spep_7 + 36 -20, 1210, 60 );
setSeVolume( spep_7 + 40 -20, 1210, 90 );
setSeVolume( spep_7 + 42 -20, 1210, 100 );
stopSe( spep_7 + 156 -20, SE16, 0 );

playSe( spep_7 + 20 -20, 1036 ); 
playSe( spep_7 + 22 -20, 1037 ); 
playSe( spep_7 + 44 -20, 1036 ); 
playSe( spep_7 + 68 -20, 1036 ); 
playSe( spep_7 + 92 -20, 1036 ); 
playSe( spep_7 + 116 -20, 1036 ); 
SE17 = playSe( spep_7 + 140 -20, 1036 ); 
stopSe( spep_7 + 151 -20, SE17, 0 );

--発射
playSe( spep_7 + 147 -20, 1022 ); 
setSeVolume( spep_7 + 147 -20, 1022, 130 );
SE18 = playSe( spep_7 + 147 -20, 1213 ); 
setSeVolume( spep_7 + 156 -20, 1213, 0 );
setSeVolume( spep_7 + 147 -20, 1213, 0 );
setSeVolume( spep_7 + 150 -20, 1213, 20 );
setSeVolume( spep_7 + 154 -20, 1213, 40 );
setSeVolume( spep_7 + 162 -20, 1213, 60 );
setSeVolume( spep_7 + 168 -20, 1213, 70 );
setSeVolume( spep_7 + 170 -20, 1213, 80 );
setSeVolume( spep_7 + 175 -20, 1213, 90 );

SE19 = playSe( spep_7 + 149 -20, 1205 ); 
setSeVolume( spep_7 + 149 -20, 1205, 80 );

-- ** 次の準備 ** --
spep_8 = spep_7 + 186 -2;

------------------------------------------------------
-- 爆発(186F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish = entryEffect( spep_8 + 0, SP_09, 0x100, -1, 0, 0, 0 );  --爆発(ef_009)
setEffMoveKey( spep_8 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_8 + 186, finish, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_8 + 186, finish, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, finish, 0 );
setEffRotateKey( spep_8 + 186, finish, 0 );
setEffAlphaKey( spep_8 + 0, finish, 255 );
setEffAlphaKey( spep_8 + 186, finish, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 188, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_8 + 60 -3, 0, 2, 12, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--発射
setSeVolume( spep_8 + 99 -20, 1213, 0 );
stopSe( spep_8 + 99 -20, SE18, 0 );

setSeVolume( spep_8 + 2 -20, 1205, 80 );
setSeVolume( spep_8 + 10 -20, 1205, 70 );
setSeVolume( spep_8 + 16 -20, 1205, 66 );
setSeVolume( spep_8 + 20 -20, 1205, 58 );
setSeVolume( spep_8 + 28 -20, 1205, 50 );
setSeVolume( spep_8 + 36 -20, 1205, 46 );
setSeVolume( spep_8 + 42 -20, 1205, 42 );
setSeVolume( spep_8 + 50 -20, 1205, 38 );
setSeVolume( spep_8 + 56 -20, 1205, 30 );
setSeVolume( spep_8 + 60 -20, 1205, 24 );
setSeVolume( spep_8 + 66 -20, 1205, 18 );
setSeVolume( spep_8 + 70 -20, 1205, 10 );
setSeVolume( spep_8 + 77 -20, 1205, 0 );
stopSe( spep_8 + 77 -20, SE19, 0 );

--爆発
playSe( spep_8 + 87 -20, 1024 ); 
playSe( spep_8 + 87 -20, 1159 ); 
setSeVolume( spep_8 + 87 -20, 1159, 96 );
playSe( spep_8 + 87 -20, 1023 ); 

-- ** ダメージ表示 ** --
dealDamage( spep_8 + 60 );
endPhase( spep_8 + 184 -10 );

end