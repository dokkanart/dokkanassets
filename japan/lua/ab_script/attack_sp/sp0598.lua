--ベルガモ(巨大化)_ウルフガングペネトレーター

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
SP_01 = 154464; --溜め
SP_02 = 154465; --発射
SP_03 = 154467; --発射　流線
--SP_04 = 190001; --ギャン
SP_04 = 190002; --ギャン
SP_05 = 3099; --フィニッシュ

--敵側
SP_02x = 154466; --発射

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
-- 溜め(186F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_0 + 0, SP_01, 186, 0x80, -1, 0, 0, 0 );  --溜め(ef_001)
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 186, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 186, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 186, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 186, tame, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0, 906, 186, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 186, 20 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 186, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.4, 1.4 );
setEffScaleKey( spep_0 + 147 -3, shuchusen1, 1.4, 1.4 );
setEffScaleKey( spep_0 + 148 -3, shuchusen1, 2.3, 2.3 );
setEffScaleKey( spep_0 + 186, shuchusen1, 2.3, 2.3 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 186, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 83 -3, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 84 -3, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 186, shuchusen1, 255 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9, 515.5 , 0 );

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
changeAnime( spep_0 + 0, 1, 118 );
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 90, 1, 0 );

setMoveKey( spep_0 + 0, 1, 225.9, 71.9 , 0 );
setMoveKey( spep_0 -3 + 4, 1, 224.4, 70 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 224.8, 72.1 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 227.3, 72.2 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 225.8, 70.3 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 226.3, 72.3 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 228.7, 72.4 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 227.2, 70.5 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 227.7, 72.6 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 230.2, 72.7 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 228.6, 70.7 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 228.9, 73 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 231.6, 73.1 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 229.9, 71 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 230.3, 73.3 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 233, 73.3 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 231.3, 71.2 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 231.8, 73.5 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 234.4, 73.6 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 232.7, 71.5 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 233.1, 73.8 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 235.8, 73.9 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 234.1, 71.8 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 234.5, 74.1 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 237.2, 74.2 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 235.4, 72.1 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 236, 74.3 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 238.6, 74.4 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 236.9, 72.3 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 237.3, 74.6 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 240.1, 74.7 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 238.3, 72.6 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 238.6, 75 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 241.5, 75.1 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 239.5, 72.8 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 240, 75.2 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 242.9, 75.3 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 241, 73 , 0 );
setMoveKey( spep_0 -3 + 78, 1, 241.4, 75.5 , 0 );
setMoveKey( spep_0 -3 + 80, 1, 244.3, 75.6 , 0 );
setMoveKey( spep_0 -3 + 82, 1, 242.4, 73.3 , 0 );
setMoveKey( spep_0 -3 + 84, 1, 242.8, 75.8 , 0 );
setMoveKey( spep_0 -3 + 86, 1, 405.2, 104.9 , 0 );
setMoveKey( spep_0 -3 + 88, 1, 559.7, 128.5 , 0 );
setMoveKey( spep_0 -3 + 90, 1, 717.9, 162.9 , 0 );
setMoveKey( spep_0 -3 + 92, 1, 885, 191.9 , 0 );
setMoveKey( spep_0 -3 + 94, 1, 1035, 211 , 0 );
setMoveKey( spep_0 + 94, 1, 1035, 211 , 0 );

setScaleKey( spep_0 + 0, 1, 1, 1 );
setScaleKey( spep_0 -3 + 4, 1, 1.01, 1.01 );
setScaleKey( spep_0 -3 + 6, 1, 1.01, 1.01 );
setScaleKey( spep_0 -3 + 8, 1, 1.02, 1.02 );
setScaleKey( spep_0 -3 + 10, 1, 1.02, 1.02 );
setScaleKey( spep_0 -3 + 12, 1, 1.03, 1.03 );
setScaleKey( spep_0 -3 + 14, 1, 1.03, 1.03 );
setScaleKey( spep_0 -3 + 16, 1, 1.04, 1.04 );
setScaleKey( spep_0 -3 + 18, 1, 1.04, 1.04 );
setScaleKey( spep_0 -3 + 20, 1, 1.05, 1.05 );
setScaleKey( spep_0 -3 + 22, 1, 1.05, 1.05 );
setScaleKey( spep_0 -3 + 24, 1, 1.06, 1.06 );
setScaleKey( spep_0 -3 + 26, 1, 1.06, 1.06 );
setScaleKey( spep_0 -3 + 28, 1, 1.07, 1.07 );
setScaleKey( spep_0 -3 + 30, 1, 1.07, 1.07 );
setScaleKey( spep_0 -3 + 32, 1, 1.08, 1.08 );
setScaleKey( spep_0 -3 + 34, 1, 1.08, 1.08 );
setScaleKey( spep_0 -3 + 36, 1, 1.09, 1.09 );
setScaleKey( spep_0 -3 + 38, 1, 1.09, 1.09 );
setScaleKey( spep_0 -3 + 40, 1, 1.1, 1.1 );
setScaleKey( spep_0 -3 + 42, 1, 1.1, 1.1 );
setScaleKey( spep_0 -3 + 44, 1, 1.11, 1.11 );
setScaleKey( spep_0 -3 + 48, 1, 1.11, 1.11 );
setScaleKey( spep_0 -3 + 50, 1, 1.12, 1.12 );
setScaleKey( spep_0 -3 + 52, 1, 1.12, 1.12 );
setScaleKey( spep_0 -3 + 54, 1, 1.13, 1.13 );
setScaleKey( spep_0 -3 + 56, 1, 1.13, 1.13 );
setScaleKey( spep_0 -3 + 58, 1, 1.14, 1.14 );
setScaleKey( spep_0 -3 + 60, 1, 1.14, 1.14 );
setScaleKey( spep_0 -3 + 62, 1, 1.15, 1.15 );
setScaleKey( spep_0 -3 + 64, 1, 1.15, 1.15 );
setScaleKey( spep_0 -3 + 66, 1, 1.16, 1.16 );
setScaleKey( spep_0 -3 + 68, 1, 1.16, 1.16 );
setScaleKey( spep_0 -3 + 70, 1, 1.17, 1.17 );
setScaleKey( spep_0 -3 + 72, 1, 1.17, 1.17 );
setScaleKey( spep_0 -3 + 74, 1, 1.18, 1.18 );
setScaleKey( spep_0 -3 + 76, 1, 1.18, 1.18 );
setScaleKey( spep_0 -3 + 78, 1, 1.19, 1.19 );
setScaleKey( spep_0 -3 + 80, 1, 1.19, 1.19 );
setScaleKey( spep_0 -3 + 82, 1, 1.2, 1.2 );
setScaleKey( spep_0 -3 + 84, 1, 1.2, 1.2 );
setScaleKey( spep_0 -3 + 86, 1, 1.96, 1.96 );
setScaleKey( spep_0 -3 + 88, 1, 2.72, 2.72 );
setScaleKey( spep_0 -3 + 90, 1, 3.48, 3.48 );
setScaleKey( spep_0 -3 + 92, 1, 4.24, 4.24 );
setScaleKey( spep_0 -3 + 94, 1, 5, 5 );
setScaleKey( spep_0 + 94, 1, 5, 5 );

setRotateKey( spep_0 -3 + 0, 1, 0 );
setRotateKey( spep_0 + 94, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 188, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 180, 8,  2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
--気溜め
playSe( spep_0 + 0, 1036 );
setSeVolume( spep_0 + 0, 1036, 75 );
playSe( spep_0 + 24, 1036 );
setSeVolume( spep_0 + 24, 1036, 75 );
playSe( spep_0 + 48, 1036 );
setSeVolume( spep_0 + 48, 1036, 75 );
playSe( spep_0 + 72, 1036 );
setSeVolume( spep_0 + 72, 1036, 75 );
playSe( spep_0 + 96, 1036 );
setSeVolume( spep_0 + 96, 1036, 75 );
SE0 = playSe( spep_0 + 120, 1036 );
setSeVolume( spep_0 + 120, 1036, 75 );

playSe( spep_0 + 80, 1072 );  --カメラズーム

playSe( spep_x + 16, 1018 );  --ゴゴゴ

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 142; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe(SP_dodge - 12, SE0, 0 );

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
--気溜め
playSe( spep_0 + 144, 1036 );
setSeVolume( spep_0 + 144, 1036, 75 );
SE1x = playSe( spep_0 + 144, 1037 );  --気溜め
SE1 = playSe( spep_0 + 168, 1036 );
setSeVolume( spep_0 + 168, 1036, 75 );
stopSe(spep_0 + 186, SE1x, 0 );
stopSe(spep_0 + 186, SE1, 0 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 186;

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

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 82, 6, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;

------------------------------------------------------
-- 発射(116F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha_f = entryEffectLife( spep_2 + 0, SP_02, 116, 0x100, -1, 0, 0, 0 );  --発射(ef_002)
setEffMoveKey( spep_2 + 0, hassha_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 116, hassha_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hassha_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 116, hassha_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hassha_f, 0 );
setEffRotateKey( spep_2 + 116, hassha_f, 0 );
setEffAlphaKey( spep_2 + 0, hassha_f, 255 );
setEffAlphaKey( spep_2 + 116, hassha_f, 255 );

hassha_b = entryEffectLife( spep_2 + 0, SP_03, 116, 0x80, -1, 0, 0, 0 );  --発射(ef_003)
setEffMoveKey( spep_2 + 0, hassha_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 116, hassha_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hassha_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 116, hassha_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hassha_b, 0 );
setEffRotateKey( spep_2 + 116, hassha_b, 0 );
setEffAlphaKey( spep_2 + 0, hassha_b, 255 );
setEffAlphaKey( spep_2 + 116, hassha_b, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 0, 906, 30 -3, 0x100, -1, 0, 60, 30 );  --集中線
setEffShake( spep_2 + 0, shuchusen2, 30 -3, 20 );

setEffMoveKey( spep_2 + 0, shuchusen2, 60, 30 , 0 );
setEffMoveKey( spep_2 + 30 -3, shuchusen2, 60, 30 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 30 -3, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 30 -3, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 30 -3, shuchusen2, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_2 -3 + 12,  10012, 36, 0x100, -1, 0, -38.1, 132.3 );  --ズオッ
setEffMoveKey( spep_2 -3 + 12, ctzuo, -38.1, 132.3 , 0 );
setEffMoveKey( spep_2 -3 + 14, ctzuo, -62.1, 174.7 , 0 );
setEffMoveKey( spep_2 -3 + 16, ctzuo, -86.3, 207.8 , 0 );
setEffMoveKey( spep_2 -3 + 18, ctzuo, -110, 256.2 , 0 );
setEffMoveKey( spep_2 -3 + 20, ctzuo, -111.2, 247 , 0 );
setEffMoveKey( spep_2 -3 + 22, ctzuo, -111.8, 259.2 , 0 );
setEffMoveKey( spep_2 -3 + 24, ctzuo, -113, 249.7 , 0 );
setEffMoveKey( spep_2 -3 + 26, ctzuo, -113.5, 262.1 , 0 );
setEffMoveKey( spep_2 -3 + 28, ctzuo, -114.8, 252.5 , 0 );
setEffMoveKey( spep_2 -3 + 30, ctzuo, -115.3, 265.2 , 0 );
setEffMoveKey( spep_2 -3 + 32, ctzuo, -116.5, 255.2 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctzuo, -117, 268.1 , 0 );
setEffMoveKey( spep_2 -3 + 36, ctzuo, -118.3, 258.1 , 0 );
setEffMoveKey( spep_2 -3 + 38, ctzuo, -118.8, 271.1 , 0 );
setEffMoveKey( spep_2 -3 + 40, ctzuo, -120, 260.8 , 0 );
setEffMoveKey( spep_2 -3 + 42, ctzuo, -120.5, 274 , 0 );
setEffMoveKey( spep_2 -3 + 44, ctzuo, -121.8, 263.6 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctzuo, -122.3, 277.1 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctzuo, -123.2, 278.6 , 0 );

setEffScaleKey( spep_2 -3 + 12, ctzuo, 0.38, 0.38 );
setEffScaleKey( spep_2 -3 + 14, ctzuo, 1.02, 1.02 );
setEffScaleKey( spep_2 -3 + 16, ctzuo, 1.66, 1.66 );
setEffScaleKey( spep_2 -3 + 18, ctzuo, 2.3, 2.3 );
setEffScaleKey( spep_2 -3 + 20, ctzuo, 2.33, 2.33 );
setEffScaleKey( spep_2 -3 + 22, ctzuo, 2.35, 2.35 );
setEffScaleKey( spep_2 -3 + 24, ctzuo, 2.37, 2.37 );
setEffScaleKey( spep_2 -3 + 26, ctzuo, 2.4, 2.4 );
setEffScaleKey( spep_2 -3 + 28, ctzuo, 2.42, 2.42 );
setEffScaleKey( spep_2 -3 + 30, ctzuo, 2.44, 2.44 );
setEffScaleKey( spep_2 -3 + 32, ctzuo, 2.47, 2.47 );
setEffScaleKey( spep_2 -3 + 34, ctzuo, 2.49, 2.49 );
setEffScaleKey( spep_2 -3 + 36, ctzuo, 2.51, 2.51 );
setEffScaleKey( spep_2 -3 + 38, ctzuo, 2.54, 2.54 );
setEffScaleKey( spep_2 -3 + 40, ctzuo, 2.56, 2.56 );
setEffScaleKey( spep_2 -3 + 42, ctzuo, 2.58, 2.58 );
setEffScaleKey( spep_2 -3 + 44, ctzuo, 2.61, 2.61 );
setEffScaleKey( spep_2 -3 + 46, ctzuo, 2.63, 2.63 );
setEffScaleKey( spep_2 -3 + 48, ctzuo, 2.65, 2.65 );

setEffRotateKey( spep_2 -3 + 12, ctzuo, -38.4 );
setEffRotateKey( spep_2 -3 + 14, ctzuo, -38.5 );
setEffRotateKey( spep_2 -3 + 48, ctzuo, -38.5 );

setEffAlphaKey( spep_2 -3 + 12, ctzuo, 255 );
setEffAlphaKey( spep_2 -3 + 40, ctzuo, 255 );
setEffAlphaKey( spep_2 -3 + 42, ctzuo, 191 );
setEffAlphaKey( spep_2 -3 + 44, ctzuo, 128 );
setEffAlphaKey( spep_2 -3 + 46, ctzuo, 64 );
setEffAlphaKey( spep_2 -3 + 48, ctzuo, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 68, 1, 1 );
setDisp( spep_2 + 116, 1, 0 );
changeAnime( spep_2 -3 + 68, 1, 104 );

setMoveKey( spep_2 -3 + 68, 1, 276.2, 487.5 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 272.4, 481.5 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 268.6, 475.6 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 264.8, 469.6 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 261.1, 463.7 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 257.3, 457.7 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 253.5, 451.8 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 249.7, 445.8 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 245.9, 439.8 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 242.1, 433.9 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 238.3, 427.9 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 234.6, 421.9 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 232.3, 418.9 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 230, 415.9 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 227.7, 413 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 225.4, 409.9 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 223.1, 406.9 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 220.8, 404 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 218.6, 400.9 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 216.3, 397.9 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 214, 394.9 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 211.7, 391.9 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 209.4, 388.9 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 207.1, 386 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 204.8, 382.9 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 202.6, 379.9 , 0 );
setMoveKey( spep_2 + 116, 1, 202.6, 379.9 , 0 );

setScaleKey( spep_2 -3 + 68, 1, 0.1, 0.1 );
setScaleKey( spep_2 -3 + 70, 1, 0.14, 0.14 );
setScaleKey( spep_2 -3 + 72, 1, 0.19, 0.19 );
setScaleKey( spep_2 -3 + 74, 1, 0.24, 0.24 );
setScaleKey( spep_2 -3 + 76, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 78, 1, 0.33, 0.33 );
setScaleKey( spep_2 -3 + 80, 1, 0.37, 0.37 );
setScaleKey( spep_2 -3 + 82, 1, 0.42, 0.42 );
setScaleKey( spep_2 -3 + 84, 1, 0.46, 0.46 );
setScaleKey( spep_2 -3 + 86, 1, 0.51, 0.51 );
setScaleKey( spep_2 -3 + 88, 1, 0.56, 0.56 );
setScaleKey( spep_2 -3 + 90, 1, 0.6, 0.6 );
setScaleKey( spep_2 -3 + 92, 1, 0.63, 0.63 );
setScaleKey( spep_2 -3 + 94, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 96, 1, 0.69, 0.69 );
setScaleKey( spep_2 -3 + 98, 1, 0.71, 0.71 );
setScaleKey( spep_2 -3 + 100, 1, 0.74, 0.74 );
setScaleKey( spep_2 -3 + 102, 1, 0.77, 0.77 );
setScaleKey( spep_2 -3 + 104, 1, 0.8, 0.8 );
setScaleKey( spep_2 -3 + 106, 1, 0.83, 0.83 );
setScaleKey( spep_2 -3 + 108, 1, 0.86, 0.86 );
setScaleKey( spep_2 -3 + 110, 1, 0.89, 0.89 );
setScaleKey( spep_2 -3 + 112, 1, 0.91, 0.91 );
setScaleKey( spep_2 -3 + 114, 1, 0.94, 0.94 );
setScaleKey( spep_2 -3 + 116, 1, 0.97, 0.97 );
setScaleKey( spep_2 -3 + 118, 1, 1, 1 );
setScaleKey( spep_2 + 116, 1, 1, 1 );

setRotateKey( spep_2 -3 + 68, 1, -34.9 );
setRotateKey( spep_2 -3 + 70, 1, -35 );
setRotateKey( spep_2 + 116, 1, -35 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 118, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_2 + 116 -2, 2, 0, 0, fcolor_r, fcolor_g, fcolor_b, 180 );  --white fade

-- ** 音 ** --
SE2 = playSe( spep_2 + 11, 1161 );  --発射
setSeVolume( spep_2 + 11, 1161, 60 );
setSeVolume( spep_2 + 115, 1161, 60 );
setSeVolume( spep_2 + 130, 1161, 30 );
setSeVolume( spep_2 + 142, 1161, 0 );
stopSe( spep_2 + 142, SE2, 0 );

SE3 = playSe( spep_2 + 11, 1022 );  --発射
setSeVolume( spep_2 + 11, 1022, 100 );
setSeVolume( spep_2 + 115, 1022, 100 );
setSeVolume( spep_2 + 130, 1022, 50 );
setSeVolume( spep_2 + 142, 1022, 0 );
stopSe( spep_2 + 142, SE3, 0 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 116;

------------------------------------------------------
-- ギャン(56F)
------------------------------------------------------

-- ** エフェクト等 ** --
gyan = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --ギャン(ef_004)
setEffMoveKey( spep_3 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, gyan, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, gyan, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, gyan, 0 );
setEffRotateKey( spep_3 + 56, gyan, 0 );
setEffAlphaKey( spep_3 + 0, gyan, 255 );
setEffAlphaKey( spep_3 + 56, gyan, 255 );

-- ** 書き文字エントリー ** --
ctGyan = entryEffectLife( spep_3 + 0, 10006, 56, 0x100, -1, 0, 7.1, 316.8 ); --ギャンッ
setEffMoveKey( spep_3 + 0, ctGyan, 7.1, 316.8 , 0 );
setEffMoveKey( spep_3 + 56, ctGyan, 7.1, 316.8 , 0 );

setEffScaleKey( spep_3 + 0, ctGyan, 2, 2 );
setEffScaleKey( spep_3 + 10, ctGyan, 3.8, 3.8 );
setEffScaleKey( spep_3 + 56, ctGyan, 4.5, 4.5 );

setEffRotateKey( spep_3 + 0, ctGyan, 0 );
setEffRotateKey( spep_3 + 56, ctGyan, 0 );

setEffAlphaKey( spep_3 + 0, ctGyan, 255 );
setEffAlphaKey( spep_3 + 56, ctGyan, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 58, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_3 + 20, 34, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_3 + 0, 1023 );  --ギャン

-- ** 次の準備 ** --
spep_4 = spep_3 + 56;

------------------------------------------------------
-- フィニッシュ(136F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --フィニッシュ(ef_004)
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 138, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 138, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 138, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 138, finish_f, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 136, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_3 + 46, 1146 );  --気弾爆発
setSeVolume( spep_3 + 46, 1146, 0 );
setSeVolume( spep_4 + 4, 1146, 0 );
setSeVolume( spep_4 + 6, 1146, 15 );
setSeVolume( spep_4 + 8, 1146, 30 );
setSeVolume( spep_4 + 10, 1146, 40 );
setSeVolume( spep_4 + 13, 1146, 50 );
setSeVolume( spep_4 + 16, 1146, 70 );
setSeVolume( spep_4 + 134, 1146, 166 );

playSe( spep_4 + 6, 1024 );  --気弾爆発
setSeVolume( spep_4 + 13, 1024, 140 );

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 20 );
endPhase( spep_4 + 134 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 溜め(186F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_0 + 0, SP_01, 186, 0x80, -1, 0, 0, 0 );  --溜め(ef_001)
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 186, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 186, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 186, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 186, tame, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0, 906, 186, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 186, 20 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 186, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.4, 1.4 );
setEffScaleKey( spep_0 + 147 -3, shuchusen1, 1.4, 1.4 );
setEffScaleKey( spep_0 + 148 -3, shuchusen1, 2.3, 2.3 );
setEffScaleKey( spep_0 + 186, shuchusen1, 2.3, 2.3 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 186, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 83 -3, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 84 -3, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 186, shuchusen1, 255 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9, 515.5 , 0 );

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
changeAnime( spep_0 + 0, 1, 18 );
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 90, 1, 0 );

setMoveKey( spep_0 + 0, 1, -225.9, 71.9 , 0 );
setMoveKey( spep_0 -3 + 4, 1, -224.4, 70 , 0 );
setMoveKey( spep_0 -3 + 6, 1, -224.8, 72.1 , 0 );
setMoveKey( spep_0 -3 + 8, 1, -227.3, 72.2 , 0 );
setMoveKey( spep_0 -3 + 10, 1, -225.8, 70.3 , 0 );
setMoveKey( spep_0 -3 + 12, 1, -226.3, 72.3 , 0 );
setMoveKey( spep_0 -3 + 14, 1, -228.7, 72.4 , 0 );
setMoveKey( spep_0 -3 + 16, 1, -227.2, 70.5 , 0 );
setMoveKey( spep_0 -3 + 18, 1, -227.7, 72.6 , 0 );
setMoveKey( spep_0 -3 + 20, 1, -230.2, 72.7 , 0 );
setMoveKey( spep_0 -3 + 22, 1, -228.6, 70.7 , 0 );
setMoveKey( spep_0 -3 + 24, 1, -228.9, 73 , 0 );
setMoveKey( spep_0 -3 + 26, 1, -231.6, 73.1 , 0 );
setMoveKey( spep_0 -3 + 28, 1, -229.9, 71 , 0 );
setMoveKey( spep_0 -3 + 30, 1, -230.3, 73.3 , 0 );
setMoveKey( spep_0 -3 + 32, 1, -233, 73.3 , 0 );
setMoveKey( spep_0 -3 + 34, 1, -231.3, 71.2 , 0 );
setMoveKey( spep_0 -3 + 36, 1, -231.8, 73.5 , 0 );
setMoveKey( spep_0 -3 + 38, 1, -234.4, 73.6 , 0 );
setMoveKey( spep_0 -3 + 40, 1, -232.7, 71.5 , 0 );
setMoveKey( spep_0 -3 + 42, 1, -233.1, 73.8 , 0 );
setMoveKey( spep_0 -3 + 44, 1, -235.8, 73.9 , 0 );
setMoveKey( spep_0 -3 + 46, 1, -234.1, 71.8 , 0 );
setMoveKey( spep_0 -3 + 48, 1, -234.5, 74.1 , 0 );
setMoveKey( spep_0 -3 + 50, 1, -237.2, 74.2 , 0 );
setMoveKey( spep_0 -3 + 52, 1, -235.4, 72.1 , 0 );
setMoveKey( spep_0 -3 + 54, 1, -236, 74.3 , 0 );
setMoveKey( spep_0 -3 + 56, 1, -238.6, 74.4 , 0 );
setMoveKey( spep_0 -3 + 58, 1, -236.9, 72.3 , 0 );
setMoveKey( spep_0 -3 + 60, 1, -237.3, 74.6 , 0 );
setMoveKey( spep_0 -3 + 62, 1, -240.1, 74.7 , 0 );
setMoveKey( spep_0 -3 + 64, 1, -238.3, 72.6 , 0 );
setMoveKey( spep_0 -3 + 66, 1, -238.6, 75 , 0 );
setMoveKey( spep_0 -3 + 68, 1, -241.5, 75.1 , 0 );
setMoveKey( spep_0 -3 + 70, 1, -239.5, 72.8 , 0 );
setMoveKey( spep_0 -3 + 72, 1, -240, 75.2 , 0 );
setMoveKey( spep_0 -3 + 74, 1, -242.9, 75.3 , 0 );
setMoveKey( spep_0 -3 + 76, 1, -241, 73 , 0 );
setMoveKey( spep_0 -3 + 78, 1, -241.4, 75.5 , 0 );
setMoveKey( spep_0 -3 + 80, 1, -244.3, 75.6 , 0 );
setMoveKey( spep_0 -3 + 82, 1, -242.4, 73.3 , 0 );
setMoveKey( spep_0 -3 + 84, 1, -242.8, 75.8 , 0 );
setMoveKey( spep_0 -3 + 86, 1, -405.2, 104.9 , 0 );
setMoveKey( spep_0 -3 + 88, 1, -559.7, 128.5 , 0 );
setMoveKey( spep_0 -3 + 90, 1, -717.9, 162.9 , 0 );
setMoveKey( spep_0 -3 + 92, 1, -885, 191.9 , 0 );
setMoveKey( spep_0 -3 + 94, 1, -1035, 211 , 0 );
setMoveKey( spep_0 + 94, 1, -1035, 211 , 0 );

setScaleKey( spep_0 + 0, 1, 1, 1 );
setScaleKey( spep_0 -3 + 4, 1, 1.01, 1.01 );
setScaleKey( spep_0 -3 + 6, 1, 1.01, 1.01 );
setScaleKey( spep_0 -3 + 8, 1, 1.02, 1.02 );
setScaleKey( spep_0 -3 + 10, 1, 1.02, 1.02 );
setScaleKey( spep_0 -3 + 12, 1, 1.03, 1.03 );
setScaleKey( spep_0 -3 + 14, 1, 1.03, 1.03 );
setScaleKey( spep_0 -3 + 16, 1, 1.04, 1.04 );
setScaleKey( spep_0 -3 + 18, 1, 1.04, 1.04 );
setScaleKey( spep_0 -3 + 20, 1, 1.05, 1.05 );
setScaleKey( spep_0 -3 + 22, 1, 1.05, 1.05 );
setScaleKey( spep_0 -3 + 24, 1, 1.06, 1.06 );
setScaleKey( spep_0 -3 + 26, 1, 1.06, 1.06 );
setScaleKey( spep_0 -3 + 28, 1, 1.07, 1.07 );
setScaleKey( spep_0 -3 + 30, 1, 1.07, 1.07 );
setScaleKey( spep_0 -3 + 32, 1, 1.08, 1.08 );
setScaleKey( spep_0 -3 + 34, 1, 1.08, 1.08 );
setScaleKey( spep_0 -3 + 36, 1, 1.09, 1.09 );
setScaleKey( spep_0 -3 + 38, 1, 1.09, 1.09 );
setScaleKey( spep_0 -3 + 40, 1, 1.1, 1.1 );
setScaleKey( spep_0 -3 + 42, 1, 1.1, 1.1 );
setScaleKey( spep_0 -3 + 44, 1, 1.11, 1.11 );
setScaleKey( spep_0 -3 + 48, 1, 1.11, 1.11 );
setScaleKey( spep_0 -3 + 50, 1, 1.12, 1.12 );
setScaleKey( spep_0 -3 + 52, 1, 1.12, 1.12 );
setScaleKey( spep_0 -3 + 54, 1, 1.13, 1.13 );
setScaleKey( spep_0 -3 + 56, 1, 1.13, 1.13 );
setScaleKey( spep_0 -3 + 58, 1, 1.14, 1.14 );
setScaleKey( spep_0 -3 + 60, 1, 1.14, 1.14 );
setScaleKey( spep_0 -3 + 62, 1, 1.15, 1.15 );
setScaleKey( spep_0 -3 + 64, 1, 1.15, 1.15 );
setScaleKey( spep_0 -3 + 66, 1, 1.16, 1.16 );
setScaleKey( spep_0 -3 + 68, 1, 1.16, 1.16 );
setScaleKey( spep_0 -3 + 70, 1, 1.17, 1.17 );
setScaleKey( spep_0 -3 + 72, 1, 1.17, 1.17 );
setScaleKey( spep_0 -3 + 74, 1, 1.18, 1.18 );
setScaleKey( spep_0 -3 + 76, 1, 1.18, 1.18 );
setScaleKey( spep_0 -3 + 78, 1, 1.19, 1.19 );
setScaleKey( spep_0 -3 + 80, 1, 1.19, 1.19 );
setScaleKey( spep_0 -3 + 82, 1, 1.2, 1.2 );
setScaleKey( spep_0 -3 + 84, 1, 1.2, 1.2 );
setScaleKey( spep_0 -3 + 86, 1, 1.96, 1.96 );
setScaleKey( spep_0 -3 + 88, 1, 2.72, 2.72 );
setScaleKey( spep_0 -3 + 90, 1, 3.48, 3.48 );
setScaleKey( spep_0 -3 + 92, 1, 4.24, 4.24 );
setScaleKey( spep_0 -3 + 94, 1, 5, 5 );
setScaleKey( spep_0 + 94, 1, 5, 5 );

setRotateKey( spep_0 -3 + 0, 1, 0 );
setRotateKey( spep_0 + 94, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 188, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 180, 8,  2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
--気溜め
playSe( spep_0 + 0, 1036 );
setSeVolume( spep_0 + 0, 1036, 75 );
playSe( spep_0 + 24, 1036 );
setSeVolume( spep_0 + 24, 1036, 75 );
playSe( spep_0 + 48, 1036 );
setSeVolume( spep_0 + 48, 1036, 75 );
playSe( spep_0 + 72, 1036 );
setSeVolume( spep_0 + 72, 1036, 75 );
playSe( spep_0 + 96, 1036 );
setSeVolume( spep_0 + 96, 1036, 75 );
SE0 = playSe( spep_0 + 120, 1036 );
setSeVolume( spep_0 + 120, 1036, 75 );

playSe( spep_0 + 80, 1072 );  --カメラズーム

playSe( spep_x + 16, 1018 );  --ゴゴゴ

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 142; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe(SP_dodge - 12, SE0, 0 );

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
--気溜め
playSe( spep_0 + 144, 1036 );
setSeVolume( spep_0 + 144, 1036, 75 );
SE1x = playSe( spep_0 + 144, 1037 );  --気溜め
SE1 = playSe( spep_0 + 168, 1036 );
setSeVolume( spep_0 + 168, 1036, 75 );
stopSe(spep_0 + 186, SE1x, 0 );
stopSe(spep_0 + 186, SE1, 0 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 186;

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

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 82, 6, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;

------------------------------------------------------
-- 発射(116F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha_f = entryEffectLife( spep_2 + 0, SP_02x, 116, 0x100, -1, 0, 0, 0 );  --発射(ef_002)
setEffMoveKey( spep_2 + 0, hassha_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 116, hassha_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hassha_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 116, hassha_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hassha_f, 0 );
setEffRotateKey( spep_2 + 116, hassha_f, 0 );
setEffAlphaKey( spep_2 + 0, hassha_f, 255 );
setEffAlphaKey( spep_2 + 116, hassha_f, 255 );

hassha_b = entryEffectLife( spep_2 + 0, SP_03, 116, 0x80, -1, 0, 0, 0 );  --発射(ef_003)
setEffMoveKey( spep_2 + 0, hassha_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 116, hassha_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hassha_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 116, hassha_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hassha_b, 0 );
setEffRotateKey( spep_2 + 116, hassha_b, 0 );
setEffAlphaKey( spep_2 + 0, hassha_b, 255 );
setEffAlphaKey( spep_2 + 116, hassha_b, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 0, 906, 30 -3, 0x100, -1, 0, 60, 30 );  --集中線
setEffShake( spep_2 + 0, shuchusen2, 30 -3, 20 );

setEffMoveKey( spep_2 + 0, shuchusen2, 60, 30 , 0 );
setEffMoveKey( spep_2 + 30 -3, shuchusen2, 60, 30 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 30 -3, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 30 -3, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 30 -3, shuchusen2, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_2 -3 + 12,  10012, 36, 0x100, -1, 0, -38.1, 132.3 );  --ズオッ
setEffMoveKey( spep_2 -3 + 12, ctzuo, -38.1, 132.3 , 0 );
setEffMoveKey( spep_2 -3 + 14, ctzuo, -62.1, 174.7 , 0 );
setEffMoveKey( spep_2 -3 + 16, ctzuo, -86.3, 207.8 , 0 );
setEffMoveKey( spep_2 -3 + 18, ctzuo, -110, 256.2 , 0 );
setEffMoveKey( spep_2 -3 + 20, ctzuo, -111.2, 247 , 0 );
setEffMoveKey( spep_2 -3 + 22, ctzuo, -111.8, 259.2 , 0 );
setEffMoveKey( spep_2 -3 + 24, ctzuo, -113, 249.7 , 0 );
setEffMoveKey( spep_2 -3 + 26, ctzuo, -113.5, 262.1 , 0 );
setEffMoveKey( spep_2 -3 + 28, ctzuo, -114.8, 252.5 , 0 );
setEffMoveKey( spep_2 -3 + 30, ctzuo, -115.3, 265.2 , 0 );
setEffMoveKey( spep_2 -3 + 32, ctzuo, -116.5, 255.2 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctzuo, -117, 268.1 , 0 );
setEffMoveKey( spep_2 -3 + 36, ctzuo, -118.3, 258.1 , 0 );
setEffMoveKey( spep_2 -3 + 38, ctzuo, -118.8, 271.1 , 0 );
setEffMoveKey( spep_2 -3 + 40, ctzuo, -120, 260.8 , 0 );
setEffMoveKey( spep_2 -3 + 42, ctzuo, -120.5, 274 , 0 );
setEffMoveKey( spep_2 -3 + 44, ctzuo, -121.8, 263.6 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctzuo, -122.3, 277.1 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctzuo, -123.2, 278.6 , 0 );

setEffScaleKey( spep_2 -3 + 12, ctzuo, 0.38, 0.38 );
setEffScaleKey( spep_2 -3 + 14, ctzuo, 1.02, 1.02 );
setEffScaleKey( spep_2 -3 + 16, ctzuo, 1.66, 1.66 );
setEffScaleKey( spep_2 -3 + 18, ctzuo, 2.3, 2.3 );
setEffScaleKey( spep_2 -3 + 20, ctzuo, 2.33, 2.33 );
setEffScaleKey( spep_2 -3 + 22, ctzuo, 2.35, 2.35 );
setEffScaleKey( spep_2 -3 + 24, ctzuo, 2.37, 2.37 );
setEffScaleKey( spep_2 -3 + 26, ctzuo, 2.4, 2.4 );
setEffScaleKey( spep_2 -3 + 28, ctzuo, 2.42, 2.42 );
setEffScaleKey( spep_2 -3 + 30, ctzuo, 2.44, 2.44 );
setEffScaleKey( spep_2 -3 + 32, ctzuo, 2.47, 2.47 );
setEffScaleKey( spep_2 -3 + 34, ctzuo, 2.49, 2.49 );
setEffScaleKey( spep_2 -3 + 36, ctzuo, 2.51, 2.51 );
setEffScaleKey( spep_2 -3 + 38, ctzuo, 2.54, 2.54 );
setEffScaleKey( spep_2 -3 + 40, ctzuo, 2.56, 2.56 );
setEffScaleKey( spep_2 -3 + 42, ctzuo, 2.58, 2.58 );
setEffScaleKey( spep_2 -3 + 44, ctzuo, 2.61, 2.61 );
setEffScaleKey( spep_2 -3 + 46, ctzuo, 2.63, 2.63 );
setEffScaleKey( spep_2 -3 + 48, ctzuo, 2.65, 2.65 );

setEffRotateKey( spep_2 -3 + 12, ctzuo, -38.4 );
setEffRotateKey( spep_2 -3 + 14, ctzuo, -38.5 );
setEffRotateKey( spep_2 -3 + 48, ctzuo, -38.5 );

setEffAlphaKey( spep_2 -3 + 12, ctzuo, 255 );
setEffAlphaKey( spep_2 -3 + 40, ctzuo, 255 );
setEffAlphaKey( spep_2 -3 + 42, ctzuo, 191 );
setEffAlphaKey( spep_2 -3 + 44, ctzuo, 128 );
setEffAlphaKey( spep_2 -3 + 46, ctzuo, 64 );
setEffAlphaKey( spep_2 -3 + 48, ctzuo, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 68, 1, 1 );
setDisp( spep_2 + 116, 1, 0 );
changeAnime( spep_2 -3 + 68, 1, 104 );

setMoveKey( spep_2 -3 + 68, 1, 276.2, 487.5 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 272.4, 481.5 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 268.6, 475.6 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 264.8, 469.6 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 261.1, 463.7 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 257.3, 457.7 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 253.5, 451.8 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 249.7, 445.8 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 245.9, 439.8 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 242.1, 433.9 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 238.3, 427.9 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 234.6, 421.9 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 232.3, 418.9 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 230, 415.9 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 227.7, 413 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 225.4, 409.9 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 223.1, 406.9 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 220.8, 404 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 218.6, 400.9 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 216.3, 397.9 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 214, 394.9 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 211.7, 391.9 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 209.4, 388.9 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 207.1, 386 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 204.8, 382.9 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 202.6, 379.9 , 0 );
setMoveKey( spep_2 + 116, 1, 202.6, 379.9 , 0 );

setScaleKey( spep_2 -3 + 68, 1, 0.1, 0.1 );
setScaleKey( spep_2 -3 + 70, 1, 0.14, 0.14 );
setScaleKey( spep_2 -3 + 72, 1, 0.19, 0.19 );
setScaleKey( spep_2 -3 + 74, 1, 0.24, 0.24 );
setScaleKey( spep_2 -3 + 76, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 78, 1, 0.33, 0.33 );
setScaleKey( spep_2 -3 + 80, 1, 0.37, 0.37 );
setScaleKey( spep_2 -3 + 82, 1, 0.42, 0.42 );
setScaleKey( spep_2 -3 + 84, 1, 0.46, 0.46 );
setScaleKey( spep_2 -3 + 86, 1, 0.51, 0.51 );
setScaleKey( spep_2 -3 + 88, 1, 0.56, 0.56 );
setScaleKey( spep_2 -3 + 90, 1, 0.6, 0.6 );
setScaleKey( spep_2 -3 + 92, 1, 0.63, 0.63 );
setScaleKey( spep_2 -3 + 94, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 96, 1, 0.69, 0.69 );
setScaleKey( spep_2 -3 + 98, 1, 0.71, 0.71 );
setScaleKey( spep_2 -3 + 100, 1, 0.74, 0.74 );
setScaleKey( spep_2 -3 + 102, 1, 0.77, 0.77 );
setScaleKey( spep_2 -3 + 104, 1, 0.8, 0.8 );
setScaleKey( spep_2 -3 + 106, 1, 0.83, 0.83 );
setScaleKey( spep_2 -3 + 108, 1, 0.86, 0.86 );
setScaleKey( spep_2 -3 + 110, 1, 0.89, 0.89 );
setScaleKey( spep_2 -3 + 112, 1, 0.91, 0.91 );
setScaleKey( spep_2 -3 + 114, 1, 0.94, 0.94 );
setScaleKey( spep_2 -3 + 116, 1, 0.97, 0.97 );
setScaleKey( spep_2 -3 + 118, 1, 1, 1 );
setScaleKey( spep_2 + 116, 1, 1, 1 );

setRotateKey( spep_2 -3 + 68, 1, -34.9 );
setRotateKey( spep_2 -3 + 70, 1, -35 );
setRotateKey( spep_2 + 116, 1, -35 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 118, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_2 + 116 -2, 2, 0, 0, fcolor_r, fcolor_g, fcolor_b, 180 );  --white fade

-- ** 音 ** --
SE2 = playSe( spep_2 + 11, 1161 );  --発射
setSeVolume( spep_2 + 11, 1161, 60 );
setSeVolume( spep_2 + 115, 1161, 60 );
setSeVolume( spep_2 + 130, 1161, 30 );
setSeVolume( spep_2 + 142, 1161, 0 );
stopSe( spep_2 + 142, SE2, 0 );

SE3 = playSe( spep_2 + 11, 1022 );  --発射
setSeVolume( spep_2 + 11, 1022, 100 );
setSeVolume( spep_2 + 115, 1022, 100 );
setSeVolume( spep_2 + 130, 1022, 50 );
setSeVolume( spep_2 + 142, 1022, 0 );
stopSe( spep_2 + 142, SE3, 0 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 116;

------------------------------------------------------
-- ギャン(56F)
------------------------------------------------------

-- ** エフェクト等 ** --
gyan = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --ギャン(ef_004)
setEffMoveKey( spep_3 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, gyan, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, gyan, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, gyan, 0 );
setEffRotateKey( spep_3 + 56, gyan, 0 );
setEffAlphaKey( spep_3 + 0, gyan, 255 );
setEffAlphaKey( spep_3 + 56, gyan, 255 );

-- ** 書き文字エントリー ** --
ctGyan = entryEffectLife( spep_3 + 0, 10006, 56, 0x100, -1, 0, 7.1, 316.8 ); --ギャンッ
setEffMoveKey( spep_3 + 0, ctGyan, 7.1, 316.8 , 0 );
setEffMoveKey( spep_3 + 56, ctGyan, 7.1, 316.8 , 0 );

setEffScaleKey( spep_3 + 0, ctGyan, 2, 2 );
setEffScaleKey( spep_3 + 10, ctGyan, 3.8, 3.8 );
setEffScaleKey( spep_3 + 56, ctGyan, 4.5, 4.5 );

setEffRotateKey( spep_3 + 0, ctGyan, 0 );
setEffRotateKey( spep_3 + 56, ctGyan, 0 );

setEffAlphaKey( spep_3 + 0, ctGyan, 255 );
setEffAlphaKey( spep_3 + 56, ctGyan, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 58, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_3 + 20, 34, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_3 + 0, 1023 );  --ギャン

-- ** 次の準備 ** --
spep_4 = spep_3 + 56;

------------------------------------------------------
-- フィニッシュ(136F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --フィニッシュ(ef_004)
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 138, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 138, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 138, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 138, finish_f, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 136, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_3 + 46, 1146 );  --気弾爆発
setSeVolume( spep_3 + 46, 1146, 0 );
setSeVolume( spep_4 + 4, 1146, 0 );
setSeVolume( spep_4 + 6, 1146, 15 );
setSeVolume( spep_4 + 8, 1146, 30 );
setSeVolume( spep_4 + 10, 1146, 35 );
setSeVolume( spep_4 + 13, 1146, 40 );
setSeVolume( spep_4 + 16, 1146, 70 );
setSeVolume( spep_4 + 134, 1146, 150 );

playSe( spep_4 + 6, 1024 );  --気弾爆発
setSeVolume( spep_4 + 6, 1024, 150 );

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 20 );
endPhase( spep_4 + 134 );

end