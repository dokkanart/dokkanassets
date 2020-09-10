--ピッコロ大魔王(老)_魔撃閃

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
SP_01 = 155145; --導入：ピッコロカメラ回転後
SP_02 = 155146; --導入：ピッコロカメラ回転前
SP_03 = 155147; --背後回り込み；ヒットエフェクト
SP_04 = 155148; --背後回り込み：背景、ピッコロ
SP_05 = 155149; --空中：ヒットエフェクト、ピッコロ
SP_06 = 155150; --空中：背景、ピッコロ
SP_07 = 155151; --蹴りシーン
SP_08 = 155152; --ラスト：背景

--敵側
SP_02x = 155153; --導入：ピッコロカメラ回転前
SP_03x = 155154; --背後回り込み；ヒットエフェクト
SP_04x = 155155; --背後回り込み：背景、ピッコロ
SP_05x = 155156; --空中：ヒットエフェクト、ピッコロ
SP_06x = 155157; --空中：背景、ピッコロ
SP_07x = 155158; --蹴りシーン

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
-- 導入(136F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
start_f = entryEffectLife( spep_0 + 46 -3, SP_01, 82, 0x100, -1, 0, 0, 0 ,1000 );  --導入：ピッコロカメラ回転後(ef_001)
setEffMoveKey( spep_0 + 46 -3, start_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 128 -3, start_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 46 -3, start_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 128 -3, start_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 46 -3, start_f, 0 );
setEffRotateKey( spep_0 + 128 -3, start_f, 0 );
setEffAlphaKey( spep_0 + 46 -3, start_f, 255 );
setEffAlphaKey( spep_0 + 128 -3, start_f, 255 );

start_b = entryEffectLife( spep_0 + 0, SP_02, 136, 0x80, -1, 0, 0, 0 );  --導入：ピッコロカメラ回転前(ef_001)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 136, start_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 136, start_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, start_b, 0 );
setEffRotateKey( spep_0 + 136, start_b, 0 );
setEffAlphaKey( spep_0 + 0, start_b, 255 );
setEffAlphaKey( spep_0 + 135, start_b, 255 );
setEffAlphaKey( spep_0 + 136, start_b, 0 );

spep_x = spep_0 + 10;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 4000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 5000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9 +130, 515.5, 6000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9 +130, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9 +130, 515.5 , 0 );

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
setDisp( spep_0 + 0, 1, 1 );
changeAnime( spep_0 + 0, 1, 102 );
changeAnime( spep_0 -3 + 46, 1, 100 );

setMoveKey( spep_0 + 0, 1, 126.8, -162.9 , 0 );
setMoveKey( spep_0 -3 + 4, 1, 133.9, -165.1 , 0 );
setMoveKey( spep_0 -3 + 5, 1, 133.9, -165.1 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 141, -167.3 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 141, -167.3 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 148, -169.5 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 148, -169.5 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 155.1, -171.7 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 162.2, -173.9 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 169.2, -176.1 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 176.3, -178.3 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 183.4, -180.6 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 257.2, -189.3 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 338.4, -197.6 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 426.8, -205.7 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 522.5, -213.4 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 625.5, -220.8 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 735.8, -227.8 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 853.3, -234.5 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 978.1, -240.8 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 1110.2, -246.9 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 1249.6, -252.5 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 1396.3, -257.9 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 1546.2, -270.9 , 0 );
setMoveKey( spep_0 -3 + 45, 1, 1711.5, -267.6 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 1444.5, 134.6 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 1325, 126.6 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 1201.8, 107 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 1090.9, 103.7 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 976.4, 88.9 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 874.1, 82.3 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 768.1, 64.1 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 674.4, 62.3 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 577, 44.9 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 492, 43.8 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 407.2, 35.1 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 326.7, 26.7 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 250.5, 18.7 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 178.7, 11.1 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 111.1, 3.8 , 0 );

setScaleKey( spep_0 + 0, 1, 3.42, 3.42 );
setScaleKey( spep_0 -3 + 4, 1, 3.47, 3.47 );
setScaleKey( spep_0 -3 + 5, 1, 3.47, 3.47 );
setScaleKey( spep_0 -3 + 6, 1, 3.53, 3.53 );
setScaleKey( spep_0 -3 + 7, 1, 3.53, 3.53 );
setScaleKey( spep_0 -3 + 8, 1, 3.58, 3.58 );
setScaleKey( spep_0 -3 + 9, 1, 3.58, 3.58 );
setScaleKey( spep_0 -3 + 10, 1, 3.64, 3.64 );
setScaleKey( spep_0 -3 + 12, 1, 3.7, 3.7 );
setScaleKey( spep_0 -3 + 14, 1, 3.75, 3.75 );
setScaleKey( spep_0 -3 + 16, 1, 3.81, 3.81 );
setScaleKey( spep_0 -3 + 18, 1, 3.86, 3.86 );
setScaleKey( spep_0 -3 + 20, 1, 4.2, 4.2 );
setScaleKey( spep_0 -3 + 22, 1, 4.55, 4.55 );
setScaleKey( spep_0 -3 + 24, 1, 4.89, 4.89 );
setScaleKey( spep_0 -3 + 26, 1, 5.24, 5.24 );
setScaleKey( spep_0 -3 + 28, 1, 5.58, 5.58 );
setScaleKey( spep_0 -3 + 30, 1, 5.94, 5.94 );
setScaleKey( spep_0 -3 + 32, 1, 6.29, 6.29 );
setScaleKey( spep_0 -3 + 34, 1, 6.65, 6.65 );
setScaleKey( spep_0 -3 + 36, 1, 7, 7 );
setScaleKey( spep_0 -3 + 38, 1, 7.36, 7.36 );
setScaleKey( spep_0 -3 + 40, 1, 7.73, 7.73 );
setScaleKey( spep_0 -3 + 42, 1, 8.09, 8.09 );
setScaleKey( spep_0 -3 + 45, 1, 8.46, 8.46 );
setScaleKey( spep_0 -3 + 46, 1, 2.1, 2.1 );
setScaleKey( spep_0 -3 + 48, 1, 2.05, 2.05 );
setScaleKey( spep_0 -3 + 50, 1, 2, 2 );
setScaleKey( spep_0 -3 + 52, 1, 1.94, 1.94 );
setScaleKey( spep_0 -3 + 54, 1, 1.89, 1.89 );
setScaleKey( spep_0 -3 + 56, 1, 1.84, 1.84 );
setScaleKey( spep_0 -3 + 58, 1, 1.79, 1.79 );
setScaleKey( spep_0 -3 + 60, 1, 1.73, 1.73 );
setScaleKey( spep_0 -3 + 62, 1, 1.68, 1.68 );
setScaleKey( spep_0 -3 + 64, 1, 1.63, 1.63 );
setScaleKey( spep_0 -3 + 66, 1, 1.58, 1.58 );
setScaleKey( spep_0 -3 + 68, 1, 1.52, 1.52 );
setScaleKey( spep_0 -3 + 70, 1, 1.47, 1.47 );
setScaleKey( spep_0 -3 + 72, 1, 1.42, 1.42 );
setScaleKey( spep_0 -3 + 74, 1, 1.37, 1.37 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 138, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
--ゴゴゴ
SE0 = playSe( spep_x + 16, 1018 ); 

--入り
playSe( spep_0 + 0, 8 ); 

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 110; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE0, 0 );

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
setMoveKey( spep_0 + 135, 1, 111.1, 3.8 , 0 );
setScaleKey( spep_0 + 135, 1, 1.37, 1.37 );
setRotateKey( spep_0 + 135, 1, 0 );

-- ** 白フェード ** --
entryFade( spep_0 + 136 -14, 8, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
--ダッシュ
playSe( spep_0 + 102, 44 ); 
playSe( spep_0 + 102, 1182 ); 
setSeVolume( spep_0 + 102, 1182, 71 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 136;

------------------------------------------------------
-- 背後(102F)
------------------------------------------------------

-- ** エフェクト等 ** --
haigo_f = entryEffectLife( spep_1 + 0, SP_03, 50 -3, 0x100, -1, 0, 0, 0 );  --背後回り込み；ヒットエフェクト(ef_002)
setEffMoveKey( spep_1 + 0, haigo_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 50 -3, haigo_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, haigo_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 50 -3, haigo_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, haigo_f, 0 );
setEffRotateKey( spep_1 + 50 -3, haigo_f, 0 );
setEffAlphaKey( spep_1 + 0, haigo_f, 255 );
setEffAlphaKey( spep_1 + 50 -3, haigo_f, 255 );

haigo_b = entryEffectLife( spep_1 + 0, SP_04, 102, 0x80, -1, 0, 0, 0 );  --背後回り込み：背景、ピッコロ(ef_003)
setEffMoveKey( spep_1 + 0, haigo_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 102, haigo_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, haigo_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 102, haigo_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, haigo_b, 0 );
setEffRotateKey( spep_1 + 102, haigo_b, 0 );
setEffAlphaKey( spep_1 + 0, haigo_b, 255 );
setEffAlphaKey( spep_1 + 101, haigo_b, 255 );
setEffAlphaKey( spep_1 + 102, haigo_b, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1 + 22 -3, 906, 40, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 22 -3, shuchusen1, 40, 20 );

setEffMoveKey( spep_1 + 22 -3, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 62 -3, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 22 -3, shuchusen1, 1.3, 1.3 );
setEffScaleKey( spep_1 + 62 -3, shuchusen1, 1.3, 1.3 );

setEffRotateKey( spep_1 + 22 -3, shuchusen1, 0 );
setEffRotateKey( spep_1 + 62 -3, shuchusen1, 0 );

setEffAlphaKey( spep_1 + 22 -3, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 62 -3, shuchusen1, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_1 -3 + 40,  10005, 8, 0x100, -1, 0, 106.9, 246.8 );  --ガッ
setEffMoveKey( spep_1 -3 + 40, ctga, 106.9, 246.8 , 0 );
setEffMoveKey( spep_1 -3 + 42, ctga, 90.1, 289.5 , 0 );
setEffMoveKey( spep_1 -3 + 44, ctga, 73.3, 332.5 , 0 );
setEffMoveKey( spep_1 -3 + 46, ctga, 22.6, 355.2 , 0 );
setEffMoveKey( spep_1 -3 + 48, ctga, -28.2, 377.8 , 0 );

setEffScaleKey( spep_1 -3 + 40, ctga, 0.4 +0.2, 0.4 +0.2 );
setEffScaleKey( spep_1 -3 + 42, ctga, 0.73 +0.3, 0.73 +0.3 );
setEffScaleKey( spep_1 -3 + 44, ctga, 1.06 +0.6, 1.06 +0.6 );
setEffScaleKey( spep_1 -3 + 46, ctga, 1.13 +0.7, 1.13 +0.7 );
setEffScaleKey( spep_1 -3 + 48, ctga, 1.2 +0.7, 1.2 +0.7 );

setEffRotateKey( spep_1 -3 + 40, ctga, -24.8 +10 );
setEffRotateKey( spep_1 -3 + 42, ctga, -24.9 +10 );
setEffRotateKey( spep_1 -3 + 44, ctga, -25 +10 );
setEffRotateKey( spep_1 -3 + 46, ctga, -24.9 +10 );
setEffRotateKey( spep_1 -3 + 48, ctga, -24.8 +10 );

setEffAlphaKey( spep_1 -3 + 40, ctga, 255 );
setEffAlphaKey( spep_1 -3 + 44, ctga, 255 );
setEffAlphaKey( spep_1 -3 + 46, ctga, 128 );
setEffAlphaKey( spep_1 -3 + 48, ctga, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 60, 1, 0 );
changeAnime( spep_1 + 0, 1, 100 );
changeAnime( spep_1 -3 + 18, 1, 4 );
changeAnime( spep_1 -3 + 40, 1, 6 );

setMoveKey( spep_1 + 0, 1, 34.7, -97 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 31, -97 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 27.3, -97 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 23.7, -97 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 20, -97 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 16.3, -97.1 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 12.6, -97.1 , 0 );
setMoveKey( spep_1 -3 + 17, 1, 9, -97.1 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 5.4, -97 , 0 );
setMoveKey( spep_1 -3 + 39, 1, 5.4, -97 , 0 );
setMoveKey( spep_1 -3 + 40, 1, -39.4, 26.3 , 0 );
setMoveKey( spep_1 -3 + 42, 1, -134.2, 225.4 , 0 );
setMoveKey( spep_1 -3 + 44, 1, -229.5, 401.8 , 0 );
setMoveKey( spep_1 -3 + 46, 1, -322.7, 595.3 , 0 );
setMoveKey( spep_1 -3 + 48, 1, -423.9, 780.8 , 0 );
setMoveKey( spep_1 -3 + 50, 1, -517.1, 974.4 , 0 );
setMoveKey( spep_1 -3 + 52, 1, -618.4, 1159.9 , 0 );
setMoveKey( spep_1 -3 + 54, 1, -711.6, 1353.4 , 0 );
setMoveKey( spep_1 -3 + 56, 1, -715.6, 1349.4 , 0 );
setMoveKey( spep_1 -3 + 58, 1, -711.6, 1353.4 , 0 );
setMoveKey( spep_1 -3 + 60, 1, -720.6, 1383.4 , 0 );

setScaleKey( spep_1 + 0, 1, 2.08, 2.08 );
setScaleKey( spep_1 -3 + 39, 1, 2.08, 2.08 );
setScaleKey( spep_1 -3 + 40, 1, 2.24, 2.24 );
setScaleKey( spep_1 -3 + 42, 1, 2.16, 2.16 );
setScaleKey( spep_1 -3 + 44, 1, 2.08, 2.08 );
setScaleKey( spep_1 -3 + 60, 1, 2.08, 2.08 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 39, 1, 0 );
setRotateKey( spep_1 -3 + 40, 1, 30 );
setRotateKey( spep_1 -3 + 42, 1, 28.6 );
setRotateKey( spep_1 -3 + 44, 1, 27.1 );
setRotateKey( spep_1 -3 + 46, 1, 25.7 );
setRotateKey( spep_1 -3 + 48, 1, 24.3 );
setRotateKey( spep_1 -3 + 50, 1, 22.9 );
setRotateKey( spep_1 -3 + 52, 1, 21.4 );
setRotateKey( spep_1 -3 + 54, 1, 20 );
setRotateKey( spep_1 -3 + 60, 1, 20 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 104, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--瞬間移動
playSe( spep_1 + 12, 43 ); 

--蹴り上げ
playSe( spep_1 + 50, 1010 ); 
playSe( spep_1 + 55, 1007 ); 

--着地
playSe( spep_1 + 80, 1106 ); 
setSeVolume( spep_1 + 80, 1106, 158 );
playSe( spep_1 + 81, 1108 ); 
setSeVolume( spep_1 + 81, 1108, 141 );

--飛び上がり
SE1 = playSe( spep_1 + 95, 1109 ); 

-- ** 次の準備 ** --
spep_2 = spep_1 + 102;

------------------------------------------------------
-- 空中(126F)
------------------------------------------------------

-- ** エフェクト等 ** --
kutyu_f = entryEffect( spep_2 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --空中：ヒットエフェクト、ピッコロ(ef_005)
setEffMoveKey( spep_2 + 0, kutyu_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 78 -3, kutyu_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kutyu_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 78 -3, kutyu_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kutyu_f, 0 );
setEffRotateKey( spep_2 + 78 -3, kutyu_f, 0 );
setEffAlphaKey( spep_2 + 0, kutyu_f, 255 );
setEffAlphaKey( spep_2 + 78 -3, kutyu_f, 255 );

kutyu_f = entryEffect( spep_2 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --空中：背景、ピッコロ(ef_006)
setEffMoveKey( spep_2 + 0, kutyu_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 126, kutyu_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kutyu_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 126, kutyu_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kutyu_f, 0 );
setEffRotateKey( spep_2 + 126, kutyu_f, 0 );
setEffAlphaKey( spep_2 + 0, kutyu_f, 255 );
setEffAlphaKey( spep_2 + 126, kutyu_f, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 42 -3, 906, 84 +3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 42 -3, shuchusen2, 84 +3, 20 );

setEffMoveKey( spep_2 + 42 -3, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 126, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 42 -3, shuchusen2, 1.3, 1.3 );
setEffScaleKey( spep_2 + 126, shuchusen2, 1.3, 1.3 );

setEffRotateKey( spep_2 + 42 -3, shuchusen2, 0 );
setEffRotateKey( spep_2 + 126, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 42 -3, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 126, shuchusen2, 255 );

-- ** 書き文字エントリー ** --
ctdon = entryEffectLife( spep_2 -3 + 46,  10019, 10, 0x100, -1, 0, -51.1, 251.3 );  --ドンッ
setEffMoveKey( spep_2 -3 + 46, ctdon, -51.1, 251.3 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctdon, -57.6, 242 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctdon, -67, 208.8 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctdon, -87.2, 193.5 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctdon, -102.9, 191.6 , 0 );
setEffMoveKey( spep_2 -3 + 56, ctdon, -124.2, 179.9 , 0 );

setEffScaleKey( spep_2 -3 + 46, ctdon, 2.36, 2.36 );
setEffScaleKey( spep_2 -3 + 48, ctdon, 2.33, 2.33 );
setEffScaleKey( spep_2 -3 + 50, ctdon, 2.31, 2.31 );
setEffScaleKey( spep_2 -3 + 52, ctdon, 2.28, 2.28 );
setEffScaleKey( spep_2 -3 + 54, ctdon, 2.89, 2.89 );
setEffScaleKey( spep_2 -3 + 56, ctdon, 3.5, 3.5 );

setEffRotateKey( spep_2 -3 + 46, ctdon, -10 );
setEffRotateKey( spep_2 -3 + 56, ctdon, -10 );

setEffAlphaKey( spep_2 -3 + 46, ctdon, 255 );
setEffAlphaKey( spep_2 -3 + 52, ctdon, 255 );
setEffAlphaKey( spep_2 -3 + 54, ctdon, 128 );
setEffAlphaKey( spep_2 -3 + 56, ctdon, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 128, 1, 0 );
changeAnime( spep_2 + 0, 1, 6 );
changeAnime( spep_2 -3 + 44, 1, 8 );

setMoveKey( spep_2 + 0, 1, 625.4, -936.6 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 576.5, -859.5 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 525.9, -779.7 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 473.6, -697.3 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 419.4, -612.2 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 363.6, -524.4 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 305.9, -434 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 246.5, -340.9 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 185.4, -245.1 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 122.5, -146.7 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 57.9, -45.6 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 49.7, -38.1 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 41.3, -30.5 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 32.7, -22.6 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 23.9, -14.5 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 14.8, -6.1 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 5.6, 2.4 , 0 );
setMoveKey( spep_2 -3 + 36, 1, -3.8, 11.2 , 0 );
setMoveKey( spep_2 -3 + 38, 1, -13.4, 20.2 , 0 );
setMoveKey( spep_2 -3 + 40, 1, -22.8, 29.4 , 0 );
setMoveKey( spep_2 -3 + 43, 1, -32.2, 38.7 , 0 );
setMoveKey( spep_2 -3 + 44, 1, -77.6, -236 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 43.3, -138.1 , 0 );
setMoveKey( spep_2 -3 + 48, 1, -71.3, -161.4 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 46.7, -105.8 , 0 );
setMoveKey( spep_2 -3 + 52, 1, -71.3, -172.1 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 46.7, -116.6 , 0 );
setMoveKey( spep_2 -3 + 56, 1, -22.1, -161.2 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -18.1, -162.6 , 0 );
setMoveKey( spep_2 -3 + 60, 1, -23, -153.1 , 0 );
setMoveKey( spep_2 -3 + 62, 1, -19.9, -135.7 , 0 );
setMoveKey( spep_2 -3 + 64, 1, -24.8, -126.2 , 0 );
setMoveKey( spep_2 -3 + 66, 1, -21.6, -108.8 , 0 );
setMoveKey( spep_2 -3 + 68, 1, -26.5, -99.3 , 0 );
setMoveKey( spep_2 -3 + 70, 1, -23.4, -81.8 , 0 );
setMoveKey( spep_2 -3 + 72, 1, -28.3, -72.4 , 0 );
setMoveKey( spep_2 -3 + 74, 1, -25.1, -54.9 , 0 );
setMoveKey( spep_2 -3 + 76, 1, -30, -45.5 , 0 );
setMoveKey( spep_2 -3 + 78, 1, -26.9, -28 , 0 );
setMoveKey( spep_2 -3 + 80, 1, -30.9, -43.1 , 0 );
setMoveKey( spep_2 -3 + 82, 1, -26.9, -50.1 , 0 );
setMoveKey( spep_2 -3 + 84, 1, -30.9, -65.2 , 0 );
setMoveKey( spep_2 -3 + 86, 1, -26.9, -72.2 , 0 );
setMoveKey( spep_2 -3 + 88, 1, -30.9, -87.2 , 0 );
setMoveKey( spep_2 -3 + 90, 1, -26.9, -94.3 , 0 );
setMoveKey( spep_2 -3 + 92, 1, -30.9, -109.3 , 0 );
setMoveKey( spep_2 -3 + 94, 1, -26.9, -116.4 , 0 );
setMoveKey( spep_2 -3 + 96, 1, -30.9, -131.4 , 0 );
setMoveKey( spep_2 -3 + 98, 1, -26.9, -138.4 , 0 );
setMoveKey( spep_2 -3 + 100, 1, -26.9, -149.5 , 0 );
setMoveKey( spep_2 -3 + 102, 1, -26.9, -160.5 , 0 );
setMoveKey( spep_2 -3 + 104, 1, -26.9, -171.6 , 0 );
setMoveKey( spep_2 -3 + 106, 1, -26.9, -182.6 , 0 );
setMoveKey( spep_2 -3 + 108, 1, -26.9, -193.6 , 0 );
setMoveKey( spep_2 -3 + 110, 1, -26.9, -204.7 , 0 );
setMoveKey( spep_2 -3 + 112, 1, -26.9, -215.7 , 0 );
setMoveKey( spep_2 -3 + 114, 1, -26.9, -226.8 , 0 );
setMoveKey( spep_2 -3 + 116, 1, -26.9, -237.8 , 0 );
setMoveKey( spep_2 -3 + 118, 1, -26.9, -248.8 , 0 );
setMoveKey( spep_2 -3 + 120, 1, -26.9, -259.9 , 0 );
setMoveKey( spep_2 -3 + 122, 1, -26.9, -270.9 , 0 );
setMoveKey( spep_2 -3 + 124, 1, -26.9, -282 , 0 );
setMoveKey( spep_2 -3 + 126, 1, -26.9, -293 , 0 );
setMoveKey( spep_2 -3 + 128, 1, -26.9, -304 , 0 );

setScaleKey( spep_2 + 0, 1, 1.62, 1.62 );
setScaleKey( spep_2 -3 + 4, 1, 1.65, 1.65 );
setScaleKey( spep_2 -3 + 6, 1, 1.67, 1.67 );
setScaleKey( spep_2 -3 + 8, 1, 1.7, 1.7 );
setScaleKey( spep_2 -3 + 10, 1, 1.72, 1.72 );
setScaleKey( spep_2 -3 + 12, 1, 1.75, 1.74 );
setScaleKey( spep_2 -3 + 14, 1, 1.77, 1.77 );
setScaleKey( spep_2 -3 + 16, 1, 1.8, 1.79 );
setScaleKey( spep_2 -3 + 18, 1, 1.82, 1.82 );
setScaleKey( spep_2 -3 + 20, 1, 1.85, 1.84 );
setScaleKey( spep_2 -3 + 22, 1, 1.88, 1.86 );
setScaleKey( spep_2 -3 + 24, 1, 1.9, 1.89 );
setScaleKey( spep_2 -3 + 26, 1, 1.93, 1.91 );
setScaleKey( spep_2 -3 + 28, 1, 1.95, 1.94 );
setScaleKey( spep_2 -3 + 30, 1, 1.98, 1.96 );
setScaleKey( spep_2 -3 + 32, 1, 2, 1.98 );
setScaleKey( spep_2 -3 + 34, 1, 2.02, 2.01 );
setScaleKey( spep_2 -3 + 36, 1, 2.04, 2.04 );
setScaleKey( spep_2 -3 + 38, 1, 2.06, 2.06 );
setScaleKey( spep_2 -3 + 40, 1, 2.07, 2.07 );
setScaleKey( spep_2 -3 + 43, 1, 2.08, 2.08 );
setScaleKey( spep_2 -3 + 44, 1, 2.32, 2.32 );
setScaleKey( spep_2 -3 + 46, 1, 2.21, 2.21 );
setScaleKey( spep_2 -3 + 48, 1, 2.08, 2.08 );
setScaleKey( spep_2 -3 + 128, 1, 2.08, 2.08 );

setRotateKey( spep_2 + 0, 1, 19.5 );
setRotateKey( spep_2 -3 + 4, 1, 19.1 );
setRotateKey( spep_2 -3 + 6, 1, 18.6 );
setRotateKey( spep_2 -3 + 8, 1, 18.2 );
setRotateKey( spep_2 -3 + 10, 1, 17.7 );
setRotateKey( spep_2 -3 + 12, 1, 17.3 );
setRotateKey( spep_2 -3 + 14, 1, 16.8 );
setRotateKey( spep_2 -3 + 16, 1, 16.4 );
setRotateKey( spep_2 -3 + 18, 1, 15.9 );
setRotateKey( spep_2 -3 + 20, 1, 15.5 );
setRotateKey( spep_2 -3 + 22, 1, 15 );
setRotateKey( spep_2 -3 + 24, 1, 14.5 );
setRotateKey( spep_2 -3 + 26, 1, 14 );
setRotateKey( spep_2 -3 + 28, 1, 13.5 );
setRotateKey( spep_2 -3 + 30, 1, 13 );
setRotateKey( spep_2 -3 + 32, 1, 12.5 );
setRotateKey( spep_2 -3 + 34, 1, 12 );
setRotateKey( spep_2 -3 + 36, 1, 11.5 );
setRotateKey( spep_2 -3 + 38, 1, 11 );
setRotateKey( spep_2 -3 + 40, 1, 10.5 );
setRotateKey( spep_2 -3 + 43, 1, 10 );
setRotateKey( spep_2 -3 + 44, 1, -75 );
setRotateKey( spep_2 -3 + 128, 1, -75 );

-- ** 白フェード ** --
entryFade( spep_2 + 42 -3, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白
entryFade( spep_2 + 126 -8, 6, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --白

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 128, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--飛び上がり
stopSe( spep_2 + 2, SE1, 7 );
SE2 = playSe( spep_2 + 1, 44 ); 
stopSe( spep_2 + 20, SE2, 21 );
playSe( spep_2 + 46, 1004 ); 

--叩きつけ
playSe( spep_2 + 57, 1187 ); 
setSeVolume( spep_2 + 57, 1187, 79 );
playSe( spep_2 + 60, 1001 ); 
setSeVolume( spep_2 + 60, 1001, 71 );

--敵が落ちる
SE3 = playSe( spep_2 + 86, 1183 ); 
setSeVolume( spep_2 + 86, 1183, 79 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 126;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

--敵が落ちる
stopSe( spep_3 + 6, SE3, 0 );

--カメラ引く
playSe( spep_3 + 75, 1072 ); 
setSeVolume( spep_3 + 75, 1072, 0 );
setSeVolume( spep_3 + 89, 1072, 10 );
setSeVolume( spep_3 + 94, 1072, 30 );

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_4 = spep_3 + 94;

------------------------------------------------------
-- 蹴りシーン(126F)
------------------------------------------------------

-- ** エフェクト等 ** --
kick = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --蹴りシーン(ef_007)
setEffMoveKey( spep_4 + 0, kick, 0, 0 , 0 );
setEffMoveKey( spep_4 + 126, kick, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kick, 1.0, 1.0 );
setEffScaleKey( spep_4 + 126, kick, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick, 0 );
setEffRotateKey( spep_4 + 126, kick, 0 );
setEffAlphaKey( spep_4 + 0, kick, 255 );
setEffAlphaKey( spep_4 + 126, kick, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_4 + 78 -3, 906, 48 +3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 78 -3, shuchusen3, 48 +3, 20 );

setEffMoveKey( spep_4 + 78 -3, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 126, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 78 -3, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_4 + 126, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_4 + 78 -3, shuchusen3, 0 );
setEffRotateKey( spep_4 + 126, shuchusen3, 0 );

setEffAlphaKey( spep_4 + 78 -3, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 126, shuchusen3, 255 );

-- ** 書き文字エントリー ** --
ctdogon = entryEffectLife( spep_4 -3 + 76,  10018, 16, 0x100, -1, 0, -175.1, 243.8 );  --ドゴン
setEffMoveKey( spep_4 -3 + 76, ctdogon, -175.1, 243.8 , 0 );
setEffMoveKey( spep_4 -3 + 78, ctdogon, -143.4, 280.2 , 0 );
setEffMoveKey( spep_4 -3 + 80, ctdogon, -117.8, 296.7 , 0 );
setEffMoveKey( spep_4 -3 + 82, ctdogon, -90.7, 309.8 , 0 );
setEffMoveKey( spep_4 -3 + 84, ctdogon, -65.3, 326.5 , 0 );
setEffMoveKey( spep_4 -3 + 86, ctdogon, -25.3, 316.5 , 0 );
setEffMoveKey( spep_4 -3 + 88, ctdogon, 12.6, 311 , 0 );
setEffMoveKey( spep_4 -3 + 90, ctdogon, 52.8, 300.4 , 0 );
setEffMoveKey( spep_4 -3 + 92, ctdogon, 91.9, 292.4 , 0 );

setEffScaleKey( spep_4 -3 + 76, ctdogon, 1.02, 1.02 );
setEffScaleKey( spep_4 -3 + 78, ctdogon, 2, 2 );
setEffScaleKey( spep_4 -3 + 80, ctdogon, 2.17, 2.17 );
setEffScaleKey( spep_4 -3 + 82, ctdogon, 2.33, 2.33 );
setEffScaleKey( spep_4 -3 + 84, ctdogon, 2.5, 2.5 );
setEffScaleKey( spep_4 -3 + 86, ctdogon, 2.88, 2.88 );
setEffScaleKey( spep_4 -3 + 88, ctdogon, 3.25, 3.25 );
setEffScaleKey( spep_4 -3 + 90, ctdogon, 3.63, 3.63 );
setEffScaleKey( spep_4 -3 + 92, ctdogon, 4, 4 );

setEffRotateKey( spep_4 -3 + 76, ctdogon, 30 );
setEffRotateKey( spep_4 -3 + 92, ctdogon, 30 );

setEffAlphaKey( spep_4 -3 + 76, ctdogon, 128 );
setEffAlphaKey( spep_4 -3 + 78, ctdogon, 255 );
setEffAlphaKey( spep_4 -3 + 84, ctdogon, 255 );
setEffAlphaKey( spep_4 -3 + 86, ctdogon, 191 );
setEffAlphaKey( spep_4 -3 + 88, ctdogon, 128 );
setEffAlphaKey( spep_4 -3 + 90, ctdogon, 64 );
setEffAlphaKey( spep_4 -3 + 92, ctdogon, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 18, 1, 1 );
setDisp( spep_4 -3 + 112, 1, 0 );
changeAnime( spep_4 -3 + 18, 1, 8 );
changeAnime( spep_4 -3 + 44, 1, 6 );
changeAnime( spep_4 -3 + 78, 1, 107 );

setMoveKey( spep_4 -3 + 18, 1, 559.5, 1154.1 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 533.1, 1097.7 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 495, 1014.9 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 447, 909.9 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 391.2, 787.4 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 330, 652.8 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 285.4, 550.5 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 232.8, 429.6 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 172.1, 290.1 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 103.3, 132 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 26.3, -44.7 , 0 );
setMoveKey( spep_4 -3 + 40, 1, -58.7, -240 , 0 );
setMoveKey( spep_4 -3 + 42, 1, -151.8, -453.9 , 0 );
setMoveKey( spep_4 -3 + 43, 1, -151.8, -453.9 , 0 );
setMoveKey( spep_4 -3 + 44, 1, -181.4, -455.6 , 0 );
setMoveKey( spep_4 -3 + 46, 1, -79.5, -351.6 , 0 );
setMoveKey( spep_4 -3 + 48, 1, -162.3, -430.2 , 0 );
setMoveKey( spep_4 -3 + 50, 1, -60.4, -326.2 , 0 );
setMoveKey( spep_4 -3 + 52, 1, -143.3, -404.9 , 0 );
setMoveKey( spep_4 -3 + 54, 1, -41.4, -300.9 , 0 );
setMoveKey( spep_4 -3 + 56, 1, -116.1, -362.5 , 0 );
setMoveKey( spep_4 -3 + 58, 1, -92.3, -344.3 , 0 );
setMoveKey( spep_4 -3 + 60, 1, -78.7, -327.7 , 0 );
setMoveKey( spep_4 -3 + 62, 1, -69.2, -315 , 0 );
setMoveKey( spep_4 -3 + 64, 1, -59.7, -302.3 , 0 );
setMoveKey( spep_4 -3 + 66, 1, -50.2, -289.6 , 0 );
setMoveKey( spep_4 -3 + 68, 1, -40.7, -277 , 0 );
setMoveKey( spep_4 -3 + 70, 1, -31.1, -264.3 , 0 );
setMoveKey( spep_4 -3 + 72, 1, -21.6, -251.6 , 0 );
setMoveKey( spep_4 -3 + 74, 1, -12.1, -238.9 , 0 );
setMoveKey( spep_4 -3 + 76, 1, -2.6, -226.3 , 0 );
setMoveKey( spep_4 -3 + 77, 1, -2.6, -226.3 , 0 );
setMoveKey( spep_4 -3 + 78, 1, -105.4, -270.9 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 94.6, -159.3 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 103.1, -231.7 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 289.6, -122.9 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 284.7, -198 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 457.9, -91.8 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 532, -78.4 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 599.4, -66.2 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 660.2, -55.4 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 714.2, -46 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 761.6, -37.8 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 802.3, -31 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 836.3, -25.5 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 863.6, -21.4 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 884.2, -18.5 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 898.2, -17 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 905.4, -16.8 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 915.4, -15.8 , 0 );

setScaleKey( spep_4 -3 + 18, 1, 4.59, 4.59 );
setScaleKey( spep_4 -3 + 20, 1, 4.39, 4.39 );
setScaleKey( spep_4 -3 + 22, 1, 4.18, 4.18 );
setScaleKey( spep_4 -3 + 24, 1, 3.94, 3.94 );
setScaleKey( spep_4 -3 + 26, 1, 3.68, 3.68 );
setScaleKey( spep_4 -3 + 28, 1, 3.4, 3.4 );
setScaleKey( spep_4 -3 + 43, 1, 3.4, 3.4 );
setScaleKey( spep_4 -3 + 44, 1, 3.3, 3.3 );
setScaleKey( spep_4 -3 + 46, 1, 3.31, 3.31 );
setScaleKey( spep_4 -3 + 48, 1, 3.33, 3.33 );
setScaleKey( spep_4 -3 + 50, 1, 3.34, 3.34 );
setScaleKey( spep_4 -3 + 52, 1, 3.35, 3.35 );
setScaleKey( spep_4 -3 + 54, 1, 3.36, 3.36 );
setScaleKey( spep_4 -3 + 56, 1, 3.38, 3.38 );
setScaleKey( spep_4 -3 + 58, 1, 3.39, 3.39 );
setScaleKey( spep_4 -3 + 60, 1, 3.4, 3.4 );
setScaleKey( spep_4 -3 + 62, 1, 3.41, 3.41 );
setScaleKey( spep_4 -3 + 64, 1, 3.43, 3.43 );
setScaleKey( spep_4 -3 + 66, 1, 3.44, 3.44 );
setScaleKey( spep_4 -3 + 68, 1, 3.45, 3.45 );
setScaleKey( spep_4 -3 + 70, 1, 3.46, 3.46 );
setScaleKey( spep_4 -3 + 72, 1, 3.48, 3.48 );
setScaleKey( spep_4 -3 + 74, 1, 3.49, 3.49 );
setScaleKey( spep_4 -3 + 76, 1, 3.5, 3.5 );
setScaleKey( spep_4 -3 + 77, 1, 3.5, 3.5 );
setScaleKey( spep_4 -3 + 78, 1, 1.2, 1.2 );
setScaleKey( spep_4 -3 + 80, 1, 1.54, 1.54 );
setScaleKey( spep_4 -3 + 82, 1, 1.86, 1.86 );
setScaleKey( spep_4 -3 + 84, 1, 2.15, 2.15 );
setScaleKey( spep_4 -3 + 86, 1, 2.42, 2.42 );
setScaleKey( spep_4 -3 + 88, 1, 2.68, 2.68 );
setScaleKey( spep_4 -3 + 90, 1, 2.91, 2.91 );
setScaleKey( spep_4 -3 + 92, 1, 3.11, 3.11 );
setScaleKey( spep_4 -3 + 94, 1, 3.3, 3.3 );
setScaleKey( spep_4 -3 + 96, 1, 3.46, 3.46 );
setScaleKey( spep_4 -3 + 98, 1, 3.61, 3.61 );
setScaleKey( spep_4 -3 + 100, 1, 3.73, 3.73 );
setScaleKey( spep_4 -3 + 102, 1, 3.83, 3.83 );
setScaleKey( spep_4 -3 + 104, 1, 3.9, 3.9 );
setScaleKey( spep_4 -3 + 106, 1, 3.96, 3.96 );
setScaleKey( spep_4 -3 + 108, 1, 3.99, 3.99 );
setScaleKey( spep_4 -3 + 110, 1, 4, 4 );
setScaleKey( spep_4 -3 + 112, 1, 4, 4 );

setRotateKey( spep_4 -3 + 18, 1, -60.4 );
setRotateKey( spep_4 -3 + 43, 1, -60.4 );
setRotateKey( spep_4 -3 + 44, 1, -9.3 );
setRotateKey( spep_4 -3 + 46, 1, -8.5 );
setRotateKey( spep_4 -3 + 48, 1, -7.7 );
setRotateKey( spep_4 -3 + 50, 1, -7 );
setRotateKey( spep_4 -3 + 52, 1, -6.2 );
setRotateKey( spep_4 -3 + 54, 1, -5.4 );
setRotateKey( spep_4 -3 + 56, 1, -4.6 );
setRotateKey( spep_4 -3 + 58, 1, -3.8 );
setRotateKey( spep_4 -3 + 60, 1, -3.1 );
setRotateKey( spep_4 -3 + 62, 1, -2.3 );
setRotateKey( spep_4 -3 + 64, 1, -1.5 );
setRotateKey( spep_4 -3 + 66, 1, -0.7 );
setRotateKey( spep_4 -3 + 68, 1, 0.1 );
setRotateKey( spep_4 -3 + 70, 1, 0.9 );
setRotateKey( spep_4 -3 + 72, 1, 1.6 );
setRotateKey( spep_4 -3 + 74, 1, 2.4 );
setRotateKey( spep_4 -3 + 76, 1, 3.2 );
setRotateKey( spep_4 -3 + 77, 1, 3.2 );
setRotateKey( spep_4 -3 + 78, 1, 24.8 );
setRotateKey( spep_4 -3 + 80, 1, 13.4 );
setRotateKey( spep_4 -3 + 82, 1, 2.8 );
setRotateKey( spep_4 -3 + 84, 1, -7.1 );
setRotateKey( spep_4 -3 + 86, 1, -16.3 );
setRotateKey( spep_4 -3 + 88, 1, -24.8 );
setRotateKey( spep_4 -3 + 90, 1, -32.5 );
setRotateKey( spep_4 -3 + 92, 1, -39.5 );
setRotateKey( spep_4 -3 + 94, 1, -45.7 );
setRotateKey( spep_4 -3 + 96, 1, -51.2 );
setRotateKey( spep_4 -3 + 98, 1, -56 );
setRotateKey( spep_4 -3 + 100, 1, -60 );
setRotateKey( spep_4 -3 + 102, 1, -63.3 );
setRotateKey( spep_4 -3 + 104, 1, -65.9 );
setRotateKey( spep_4 -3 + 106, 1, -67.7 );
setRotateKey( spep_4 -3 + 108, 1, -68.8 );
setRotateKey( spep_4 -3 + 110, 1, -69.2 );
setRotateKey( spep_4 -3 + 112, 1, -69.2 );

-- ** 白フェード ** --
entryFade( spep_4 + 76 -3, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白
entryFade( spep_4 + 126 -8, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 128, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
--カメラ引く
setSeVolume( spep_4 + 0, 1072, 65 );
setSeVolume( spep_4 + 4, 1072, 100 );

--地面に叩きつけられる
SE4 = playSe( spep_4 + 37, 1033 ); 
stopSe( spep_4 + 59, SE4, 30 );
playSe( spep_4 + 40, 1012 );
playSe( spep_4 + 45, 1006 );
setSeVolume( spep_4 + 45, 1006, 71 );

--蹴り上げる
playSe( spep_4 + 75, 1004 );
setSeVolume( spep_4 + 75, 1004, 63 );
playSe( spep_4 + 80, 1010 );
playSe( spep_4 + 81, 1123 );
setSeVolume( spep_4 + 81, 1123, 56 );
SE5 = playSe( spep_4 + 82, 1182 );
setSeVolume( spep_4 + 82, 1182, 178 );
setSeVolume( spep_4 + 91, 1182, 178 );
setSeVolume( spep_4 + 94, 1182, 62 );
setSeVolume( spep_4 + 98, 1182, 0 );
stopSe( spep_4 + 98, SE5, 0 );
playSe( spep_4 + 85, 1007 );
setSeVolume( spep_4 + 85, 1007, 79 );
playSe( spep_4 + 88, 1110 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 126;

------------------------------------------------------
-- フィニッシュ(236F)
------------------------------------------------------

-- ** エフェクト等 ** --
bg = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_5 + 100, bg, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, bg, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, bg, 0 );
setEffRotateKey( spep_5 + 100, bg, 0 );
setEffAlphaKey( spep_5 + 0, bg, 255 );
setEffAlphaKey( spep_5 + 100, bg, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, -3.8, -32.1 , 0 );
setMoveKey( spep_5 + 2, 1, -3.7, -56.6 , 0 );
setMoveKey( spep_5 + 4, 1, -3.4, -88.1 , 0 );
setMoveKey( spep_5 + 6, 1, -3.1, -126.6 , 0 );
setMoveKey( spep_5 + 8, 1, -2.8, -172.1 +10 , 0 );
setMoveKey( spep_5 + 10, 1, -2.4, -224.6 +20 , 0 );
setMoveKey( spep_5 + 12, 1, -1.9, -284.1 +20 , 0 );
setMoveKey( spep_5 + 110, 1, -1.9, -284.1 +20 , 0 );

y=0.4;
setScaleKey( spep_5 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
--setScaleKey( spep_5 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 12, 1, 1.5-y, 1.5-y );
setScaleKey( spep_5 + 14, 1, 1.6-y, 1.6-y );
setScaleKey( spep_5 + 16, 1, 1.5-y, 1.5-y );
setScaleKey( spep_5 + 18, 1, 1.6-y, 1.6-y );
setScaleKey( spep_5 + 20, 1, 1.5-y, 1.5-y );
setScaleKey( spep_5 + 22, 1, 1.6-y, 1.6-y );
setScaleKey( spep_5 + 24, 1, 1.5-y, 1.5-y );
setScaleKey( spep_5 + 26, 1, 1.6-y, 1.6-y );
setScaleKey( spep_5 + 110, 1, 1.6-y, 1.6-y );

z=30;
setRotateKey( spep_5 + 0, 1, 0-z );
setRotateKey( spep_5 + 2, 1, 105-z );
setRotateKey( spep_5 + 4, 1, 240-z );
setRotateKey( spep_5 + 6, 1, 405-z );
setRotateKey( spep_5 + 8, 1, 600-z );
setRotateKey( spep_5 + 10, 1, 825-z );
setRotateKey( spep_5 + 12, 1, 1080-z );
setRotateKey( spep_5 + 110, 1, 1080-z );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_5 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_5 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen4, 0 );
setEffRotateKey( spep_5 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_5 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_5 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_5 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_5 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_5 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_5 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_5 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_5 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_5 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_5 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_5 + 100, shuchusen5, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen5, 0 );
setEffRotateKey( spep_5 + 100, shuchusen5, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_5 + 100, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga1 = entryEffectLife( spep_5 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 14, ctga1, 14, 20 );

setEffMoveKey( spep_5 + 14, ctga1, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctga1, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 100, ctga1, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctga1, 3.2, 3.2 );
setEffScaleKey( spep_5 + 100, ctga1, 3.2, 3.2 );

setEffRotateKey( spep_5 + 14, ctga1, -10.9 );
setEffRotateKey( spep_5 + 15, ctga1, -10.9 );
setEffRotateKey( spep_5 + 16, ctga1, -14.9 );
setEffRotateKey( spep_5 + 17, ctga1, -14.9 );
setEffRotateKey( spep_5 + 18, ctga1, -10.9 );
setEffRotateKey( spep_5 + 19, ctga1, -10.9 );
setEffRotateKey( spep_5 + 20, ctga1, -14.9 );
setEffRotateKey( spep_5 + 21, ctga1, -14.9 );
setEffRotateKey( spep_5 + 22, ctga1, -10.9 );
setEffRotateKey( spep_5 + 23, ctga1, -10.9 );
setEffRotateKey( spep_5 + 24, ctga1, -14.9 );
setEffRotateKey( spep_5 + 25, ctga1, -14.9 );
setEffRotateKey( spep_5 + 26, ctga1, -10.9 );
setEffRotateKey( spep_5 + 27, ctga1, -10.9 );
setEffRotateKey( spep_5 + 28, ctga1, -14.9 );
setEffRotateKey( spep_5 + 100, ctga1, -14.9 );

setEffAlphaKey( spep_5 + 14, ctga1, 255 );
setEffAlphaKey( spep_5 + 100, ctga1, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_5 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_5 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_5 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_5 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_5 + 2, hibiware, 0 );
setEffRotateKey( spep_5 + 100, hibiware, 0 );

setEffAlphaKey( spep_5 + 2, hibiware, 0 );
setEffAlphaKey( spep_5 + 13, hibiware, 0 );
setEffAlphaKey( spep_5 + 14, hibiware, 255 );
setEffAlphaKey( spep_5 + 100, hibiware, 255 );

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --白

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 128, 0, 0, 0, 0, 255 );  --白　背景

-- ** 音 ** --
playSe( spep_5 + 14, 1054 );

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 0 );
endPhase( spep_5 + 98 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 導入(136F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
start_f = entryEffectLife( spep_0 + 46 -3, SP_01, 82, 0x100, -1, 0, 0, 0 ,1000 );  --導入：ピッコロカメラ回転後(ef_001)
setEffMoveKey( spep_0 + 46 -3, start_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 128 -3, start_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 46 -3, start_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 128 -3, start_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 46 -3, start_f, 0 );
setEffRotateKey( spep_0 + 128 -3, start_f, 0 );
setEffAlphaKey( spep_0 + 46 -3, start_f, 255 );
setEffAlphaKey( spep_0 + 128 -3, start_f, 255 );

start_b = entryEffectLife( spep_0 + 0, SP_02x, 136, 0x80, -1, 0, 0, 0 );  --導入：ピッコロカメラ回転前(ef_001)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 136, start_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 136, start_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, start_b, 0 );
setEffRotateKey( spep_0 + 136, start_b, 0 );
setEffAlphaKey( spep_0 + 0, start_b, 255 );
setEffAlphaKey( spep_0 + 135, start_b, 255 );
setEffAlphaKey( spep_0 + 136, start_b, 0 );

spep_x = spep_0 + 10;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 4000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 5000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9, 515.5, 6000 ); --ゴゴゴ
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
setDisp( spep_0 + 0, 1, 1 );
changeAnime( spep_0 + 0, 1, 102 );
changeAnime( spep_0 -3 + 46, 1, 100 );

setMoveKey( spep_0 + 0, 1, 126.8, -162.9 , 0 );
setMoveKey( spep_0 -3 + 4, 1, 133.9, -165.1 , 0 );
setMoveKey( spep_0 -3 + 5, 1, 133.9, -165.1 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 141, -167.3 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 141, -167.3 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 148, -169.5 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 148, -169.5 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 155.1, -171.7 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 162.2, -173.9 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 169.2, -176.1 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 176.3, -178.3 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 183.4, -180.6 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 257.2, -189.3 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 338.4, -197.6 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 426.8, -205.7 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 522.5, -213.4 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 625.5, -220.8 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 735.8, -227.8 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 853.3, -234.5 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 978.1, -240.8 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 1110.2, -246.9 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 1249.6, -252.5 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 1396.3, -257.9 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 1546.2, -270.9 , 0 );
setMoveKey( spep_0 -3 + 45, 1, 1711.5, -267.6 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 1444.5, 134.6 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 1325, 126.6 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 1201.8, 107 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 1090.9, 103.7 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 976.4, 88.9 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 874.1, 82.3 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 768.1, 64.1 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 674.4, 62.3 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 577, 44.9 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 492, 43.8 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 407.2, 35.1 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 326.7, 26.7 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 250.5, 18.7 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 178.7, 11.1 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 111.1, 3.8 , 0 );

setScaleKey( spep_0 + 0, 1, 3.42, 3.42 );
setScaleKey( spep_0 -3 + 4, 1, 3.47, 3.47 );
setScaleKey( spep_0 -3 + 5, 1, 3.47, 3.47 );
setScaleKey( spep_0 -3 + 6, 1, 3.53, 3.53 );
setScaleKey( spep_0 -3 + 7, 1, 3.53, 3.53 );
setScaleKey( spep_0 -3 + 8, 1, 3.58, 3.58 );
setScaleKey( spep_0 -3 + 9, 1, 3.58, 3.58 );
setScaleKey( spep_0 -3 + 10, 1, 3.64, 3.64 );
setScaleKey( spep_0 -3 + 12, 1, 3.7, 3.7 );
setScaleKey( spep_0 -3 + 14, 1, 3.75, 3.75 );
setScaleKey( spep_0 -3 + 16, 1, 3.81, 3.81 );
setScaleKey( spep_0 -3 + 18, 1, 3.86, 3.86 );
setScaleKey( spep_0 -3 + 20, 1, 4.2, 4.2 );
setScaleKey( spep_0 -3 + 22, 1, 4.55, 4.55 );
setScaleKey( spep_0 -3 + 24, 1, 4.89, 4.89 );
setScaleKey( spep_0 -3 + 26, 1, 5.24, 5.24 );
setScaleKey( spep_0 -3 + 28, 1, 5.58, 5.58 );
setScaleKey( spep_0 -3 + 30, 1, 5.94, 5.94 );
setScaleKey( spep_0 -3 + 32, 1, 6.29, 6.29 );
setScaleKey( spep_0 -3 + 34, 1, 6.65, 6.65 );
setScaleKey( spep_0 -3 + 36, 1, 7, 7 );
setScaleKey( spep_0 -3 + 38, 1, 7.36, 7.36 );
setScaleKey( spep_0 -3 + 40, 1, 7.73, 7.73 );
setScaleKey( spep_0 -3 + 42, 1, 8.09, 8.09 );
setScaleKey( spep_0 -3 + 45, 1, 8.46, 8.46 );
setScaleKey( spep_0 -3 + 46, 1, 2.1, 2.1 );
setScaleKey( spep_0 -3 + 48, 1, 2.05, 2.05 );
setScaleKey( spep_0 -3 + 50, 1, 2, 2 );
setScaleKey( spep_0 -3 + 52, 1, 1.94, 1.94 );
setScaleKey( spep_0 -3 + 54, 1, 1.89, 1.89 );
setScaleKey( spep_0 -3 + 56, 1, 1.84, 1.84 );
setScaleKey( spep_0 -3 + 58, 1, 1.79, 1.79 );
setScaleKey( spep_0 -3 + 60, 1, 1.73, 1.73 );
setScaleKey( spep_0 -3 + 62, 1, 1.68, 1.68 );
setScaleKey( spep_0 -3 + 64, 1, 1.63, 1.63 );
setScaleKey( spep_0 -3 + 66, 1, 1.58, 1.58 );
setScaleKey( spep_0 -3 + 68, 1, 1.52, 1.52 );
setScaleKey( spep_0 -3 + 70, 1, 1.47, 1.47 );
setScaleKey( spep_0 -3 + 72, 1, 1.42, 1.42 );
setScaleKey( spep_0 -3 + 74, 1, 1.37, 1.37 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 138, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
--ゴゴゴ
SE0 = playSe( spep_x + 16, 1018 ); 

--入り
playSe( spep_0 + 0, 8 ); 

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 110; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE0, 0 );

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
setMoveKey( spep_0 + 135, 1, 111.1, 3.8 , 0 );
setScaleKey( spep_0 + 135, 1, 1.37, 1.37 );
setRotateKey( spep_0 + 135, 1, 0 );

-- ** 白フェード ** --
entryFade( spep_0 + 136 -14, 8, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
--ダッシュ
playSe( spep_0 + 102, 44 ); 
playSe( spep_0 + 102, 1182 ); 
setSeVolume( spep_0 + 102, 1182, 71 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 136;

------------------------------------------------------
-- 背後(102F)
------------------------------------------------------

-- ** エフェクト等 ** --
haigo_f = entryEffectLife( spep_1 + 0, SP_03x, 50 -3, 0x100, -1, 0, 0, 0 );  --背後回り込み；ヒットエフェクト(ef_002)
setEffMoveKey( spep_1 + 0, haigo_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 50 -3, haigo_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, haigo_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 50 -3, haigo_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, haigo_f, 0 );
setEffRotateKey( spep_1 + 50 -3, haigo_f, 0 );
setEffAlphaKey( spep_1 + 0, haigo_f, 255 );
setEffAlphaKey( spep_1 + 50 -3, haigo_f, 255 );

haigo_b = entryEffectLife( spep_1 + 0, SP_04x, 102, 0x80, -1, 0, 0, 0 );  --背後回り込み：背景、ピッコロ(ef_003)
setEffMoveKey( spep_1 + 0, haigo_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 102, haigo_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, haigo_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 102, haigo_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, haigo_b, 0 );
setEffRotateKey( spep_1 + 102, haigo_b, 0 );
setEffAlphaKey( spep_1 + 0, haigo_b, 255 );
setEffAlphaKey( spep_1 + 101, haigo_b, 255 );
setEffAlphaKey( spep_1 + 102, haigo_b, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1 + 22 -3, 906, 40, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 22 -3, shuchusen1, 40, 20 );

setEffMoveKey( spep_1 + 22 -3, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 62 -3, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 22 -3, shuchusen1, 1.3, 1.3 );
setEffScaleKey( spep_1 + 62 -3, shuchusen1, 1.3, 1.3 );

setEffRotateKey( spep_1 + 22 -3, shuchusen1, 0 );
setEffRotateKey( spep_1 + 62 -3, shuchusen1, 0 );

setEffAlphaKey( spep_1 + 22 -3, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 62 -3, shuchusen1, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_1 -3 + 40,  10005, 8, 0x100, -1, 0, 106.9, 246.8 );  --ガッ
setEffMoveKey( spep_1 -3 + 40, ctga, 106.9, 246.8 , 0 );
setEffMoveKey( spep_1 -3 + 42, ctga, 90.1, 289.5 , 0 );
setEffMoveKey( spep_1 -3 + 44, ctga, 73.3, 332.5 , 0 );
setEffMoveKey( spep_1 -3 + 46, ctga, 22.6, 355.2 , 0 );
setEffMoveKey( spep_1 -3 + 48, ctga, -28.2, 377.8 , 0 );

setEffScaleKey( spep_1 -3 + 40, ctga, 0.4 +0.2, 0.4 +0.2 );
setEffScaleKey( spep_1 -3 + 42, ctga, 0.73 +0.3, 0.73 +0.3 );
setEffScaleKey( spep_1 -3 + 44, ctga, 1.06 +0.6, 1.06 +0.6 );
setEffScaleKey( spep_1 -3 + 46, ctga, 1.13 +0.7, 1.13 +0.7 );
setEffScaleKey( spep_1 -3 + 48, ctga, 1.2 +0.7, 1.2 +0.7 );

setEffRotateKey( spep_1 -3 + 40, ctga, -24.8 +10 );
setEffRotateKey( spep_1 -3 + 42, ctga, -24.9 +10 );
setEffRotateKey( spep_1 -3 + 44, ctga, -25 +10 );
setEffRotateKey( spep_1 -3 + 46, ctga, -24.9 +10 );
setEffRotateKey( spep_1 -3 + 48, ctga, -24.8 +10 );

setEffAlphaKey( spep_1 -3 + 40, ctga, 255 );
setEffAlphaKey( spep_1 -3 + 44, ctga, 255 );
setEffAlphaKey( spep_1 -3 + 46, ctga, 128 );
setEffAlphaKey( spep_1 -3 + 48, ctga, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 60, 1, 0 );
changeAnime( spep_1 + 0, 1, 100 );
changeAnime( spep_1 -3 + 18, 1, 4 );
changeAnime( spep_1 -3 + 40, 1, 6 );

setMoveKey( spep_1 + 0, 1, 34.7, -97 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 31, -97 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 27.3, -97 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 23.7, -97 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 20, -97 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 16.3, -97.1 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 12.6, -97.1 , 0 );
setMoveKey( spep_1 -3 + 17, 1, 9, -97.1 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 5.4, -97 , 0 );
setMoveKey( spep_1 -3 + 39, 1, 5.4, -97 , 0 );
setMoveKey( spep_1 -3 + 40, 1, -39.4, 26.3 , 0 );
setMoveKey( spep_1 -3 + 42, 1, -134.2, 225.4 , 0 );
setMoveKey( spep_1 -3 + 44, 1, -229.5, 401.8 , 0 );
setMoveKey( spep_1 -3 + 46, 1, -322.7, 595.3 , 0 );
setMoveKey( spep_1 -3 + 48, 1, -423.9, 780.8 , 0 );
setMoveKey( spep_1 -3 + 50, 1, -517.1, 974.4 , 0 );
setMoveKey( spep_1 -3 + 52, 1, -618.4, 1159.9 , 0 );
setMoveKey( spep_1 -3 + 54, 1, -711.6, 1353.4 , 0 );
setMoveKey( spep_1 -3 + 56, 1, -715.6, 1349.4 , 0 );
setMoveKey( spep_1 -3 + 58, 1, -711.6, 1353.4 , 0 );
setMoveKey( spep_1 -3 + 60, 1, -720.6, 1383.4 , 0 );

setScaleKey( spep_1 + 0, 1, 2.08, 2.08 );
setScaleKey( spep_1 -3 + 39, 1, 2.08, 2.08 );
setScaleKey( spep_1 -3 + 40, 1, 2.24, 2.24 );
setScaleKey( spep_1 -3 + 42, 1, 2.16, 2.16 );
setScaleKey( spep_1 -3 + 44, 1, 2.08, 2.08 );
setScaleKey( spep_1 -3 + 60, 1, 2.08, 2.08 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 39, 1, 0 );
setRotateKey( spep_1 -3 + 40, 1, 30 );
setRotateKey( spep_1 -3 + 42, 1, 28.6 );
setRotateKey( spep_1 -3 + 44, 1, 27.1 );
setRotateKey( spep_1 -3 + 46, 1, 25.7 );
setRotateKey( spep_1 -3 + 48, 1, 24.3 );
setRotateKey( spep_1 -3 + 50, 1, 22.9 );
setRotateKey( spep_1 -3 + 52, 1, 21.4 );
setRotateKey( spep_1 -3 + 54, 1, 20 );
setRotateKey( spep_1 -3 + 60, 1, 20 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 104, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--瞬間移動
playSe( spep_1 + 12, 43 ); 

--蹴り上げ
playSe( spep_1 + 50, 1010 ); 
playSe( spep_1 + 55, 1007 ); 

--着地
playSe( spep_1 + 80, 1106 ); 
setSeVolume( spep_1 + 80, 1106, 158 );
playSe( spep_1 + 81, 1108 ); 
setSeVolume( spep_1 + 81, 1108, 141 );

--飛び上がり
SE1 = playSe( spep_1 + 95, 1109 ); 

-- ** 次の準備 ** --
spep_2 = spep_1 + 102;

------------------------------------------------------
-- 空中(126F)
------------------------------------------------------

-- ** エフェクト等 ** --
kutyu_f = entryEffect( spep_2 + 0, SP_05x, 0x100, -1, 0, 0, 0 );  --空中：ヒットエフェクト、ピッコロ(ef_005)
setEffMoveKey( spep_2 + 0, kutyu_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 78 -3, kutyu_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kutyu_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 78 -3, kutyu_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kutyu_f, 0 );
setEffRotateKey( spep_2 + 78 -3, kutyu_f, 0 );
setEffAlphaKey( spep_2 + 0, kutyu_f, 255 );
setEffAlphaKey( spep_2 + 78 -3, kutyu_f, 255 );

kutyu_f = entryEffect( spep_2 + 0, SP_06x, 0x80, -1, 0, 0, 0 );  --空中：背景、ピッコロ(ef_006)
setEffMoveKey( spep_2 + 0, kutyu_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 126, kutyu_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kutyu_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 126, kutyu_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kutyu_f, 0 );
setEffRotateKey( spep_2 + 126, kutyu_f, 0 );
setEffAlphaKey( spep_2 + 0, kutyu_f, 255 );
setEffAlphaKey( spep_2 + 126, kutyu_f, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 42 -3, 906, 84 +3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 42 -3, shuchusen2, 84 +3, 20 );

setEffMoveKey( spep_2 + 42 -3, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 126, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 42 -3, shuchusen2, 1.3, 1.3 );
setEffScaleKey( spep_2 + 126, shuchusen2, 1.3, 1.3 );

setEffRotateKey( spep_2 + 42 -3, shuchusen2, 0 );
setEffRotateKey( spep_2 + 126, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 42 -3, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 126, shuchusen2, 255 );

-- ** 書き文字エントリー ** --
ctdon = entryEffectLife( spep_2 -3 + 46,  10019, 10, 0x100, -1, 0, -51.1, 251.3 );  --ドンッ
setEffMoveKey( spep_2 -3 + 46, ctdon, -51.1, 251.3 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctdon, -57.6, 242 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctdon, -67, 208.8 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctdon, -87.2, 193.5 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctdon, -102.9, 191.6 , 0 );
setEffMoveKey( spep_2 -3 + 56, ctdon, -124.2, 179.9 , 0 );

setEffScaleKey( spep_2 -3 + 46, ctdon, 2.36, 2.36 );
setEffScaleKey( spep_2 -3 + 48, ctdon, 2.33, 2.33 );
setEffScaleKey( spep_2 -3 + 50, ctdon, 2.31, 2.31 );
setEffScaleKey( spep_2 -3 + 52, ctdon, 2.28, 2.28 );
setEffScaleKey( spep_2 -3 + 54, ctdon, 2.89, 2.89 );
setEffScaleKey( spep_2 -3 + 56, ctdon, 3.5, 3.5 );

setEffRotateKey( spep_2 -3 + 46, ctdon, -10 );
setEffRotateKey( spep_2 -3 + 56, ctdon, -10 );

setEffAlphaKey( spep_2 -3 + 46, ctdon, 255 );
setEffAlphaKey( spep_2 -3 + 52, ctdon, 255 );
setEffAlphaKey( spep_2 -3 + 54, ctdon, 128 );
setEffAlphaKey( spep_2 -3 + 56, ctdon, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 128, 1, 0 );
changeAnime( spep_2 + 0, 1, 6 );
changeAnime( spep_2 -3 + 44, 1, 8 );

setMoveKey( spep_2 + 0, 1, 625.4, -936.6 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 576.5, -859.5 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 525.9, -779.7 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 473.6, -697.3 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 419.4, -612.2 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 363.6, -524.4 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 305.9, -434 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 246.5, -340.9 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 185.4, -245.1 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 122.5, -146.7 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 57.9, -45.6 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 49.7, -38.1 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 41.3, -30.5 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 32.7, -22.6 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 23.9, -14.5 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 14.8, -6.1 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 5.6, 2.4 , 0 );
setMoveKey( spep_2 -3 + 36, 1, -3.8, 11.2 , 0 );
setMoveKey( spep_2 -3 + 38, 1, -13.4, 20.2 , 0 );
setMoveKey( spep_2 -3 + 40, 1, -22.8, 29.4 , 0 );
setMoveKey( spep_2 -3 + 43, 1, -32.2, 38.7 , 0 );
setMoveKey( spep_2 -3 + 44, 1, -77.6, -236 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 43.3, -138.1 , 0 );
setMoveKey( spep_2 -3 + 48, 1, -71.3, -161.4 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 46.7, -105.8 , 0 );
setMoveKey( spep_2 -3 + 52, 1, -71.3, -172.1 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 46.7, -116.6 , 0 );
setMoveKey( spep_2 -3 + 56, 1, -22.1, -161.2 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -18.1, -162.6 , 0 );
setMoveKey( spep_2 -3 + 60, 1, -23, -153.1 , 0 );
setMoveKey( spep_2 -3 + 62, 1, -19.9, -135.7 , 0 );
setMoveKey( spep_2 -3 + 64, 1, -24.8, -126.2 , 0 );
setMoveKey( spep_2 -3 + 66, 1, -21.6, -108.8 , 0 );
setMoveKey( spep_2 -3 + 68, 1, -26.5, -99.3 , 0 );
setMoveKey( spep_2 -3 + 70, 1, -23.4, -81.8 , 0 );
setMoveKey( spep_2 -3 + 72, 1, -28.3, -72.4 , 0 );
setMoveKey( spep_2 -3 + 74, 1, -25.1, -54.9 , 0 );
setMoveKey( spep_2 -3 + 76, 1, -30, -45.5 , 0 );
setMoveKey( spep_2 -3 + 78, 1, -26.9, -28 , 0 );
setMoveKey( spep_2 -3 + 80, 1, -30.9, -43.1 , 0 );
setMoveKey( spep_2 -3 + 82, 1, -26.9, -50.1 , 0 );
setMoveKey( spep_2 -3 + 84, 1, -30.9, -65.2 , 0 );
setMoveKey( spep_2 -3 + 86, 1, -26.9, -72.2 , 0 );
setMoveKey( spep_2 -3 + 88, 1, -30.9, -87.2 , 0 );
setMoveKey( spep_2 -3 + 90, 1, -26.9, -94.3 , 0 );
setMoveKey( spep_2 -3 + 92, 1, -30.9, -109.3 , 0 );
setMoveKey( spep_2 -3 + 94, 1, -26.9, -116.4 , 0 );
setMoveKey( spep_2 -3 + 96, 1, -30.9, -131.4 , 0 );
setMoveKey( spep_2 -3 + 98, 1, -26.9, -138.4 , 0 );
setMoveKey( spep_2 -3 + 100, 1, -26.9, -149.5 , 0 );
setMoveKey( spep_2 -3 + 102, 1, -26.9, -160.5 , 0 );
setMoveKey( spep_2 -3 + 104, 1, -26.9, -171.6 , 0 );
setMoveKey( spep_2 -3 + 106, 1, -26.9, -182.6 , 0 );
setMoveKey( spep_2 -3 + 108, 1, -26.9, -193.6 , 0 );
setMoveKey( spep_2 -3 + 110, 1, -26.9, -204.7 , 0 );
setMoveKey( spep_2 -3 + 112, 1, -26.9, -215.7 , 0 );
setMoveKey( spep_2 -3 + 114, 1, -26.9, -226.8 , 0 );
setMoveKey( spep_2 -3 + 116, 1, -26.9, -237.8 , 0 );
setMoveKey( spep_2 -3 + 118, 1, -26.9, -248.8 , 0 );
setMoveKey( spep_2 -3 + 120, 1, -26.9, -259.9 , 0 );
setMoveKey( spep_2 -3 + 122, 1, -26.9, -270.9 , 0 );
setMoveKey( spep_2 -3 + 124, 1, -26.9, -282 , 0 );
setMoveKey( spep_2 -3 + 126, 1, -26.9, -293 , 0 );
setMoveKey( spep_2 -3 + 128, 1, -26.9, -304 , 0 );

setScaleKey( spep_2 + 0, 1, 1.62, 1.62 );
setScaleKey( spep_2 -3 + 4, 1, 1.65, 1.65 );
setScaleKey( spep_2 -3 + 6, 1, 1.67, 1.67 );
setScaleKey( spep_2 -3 + 8, 1, 1.7, 1.7 );
setScaleKey( spep_2 -3 + 10, 1, 1.72, 1.72 );
setScaleKey( spep_2 -3 + 12, 1, 1.75, 1.74 );
setScaleKey( spep_2 -3 + 14, 1, 1.77, 1.77 );
setScaleKey( spep_2 -3 + 16, 1, 1.8, 1.79 );
setScaleKey( spep_2 -3 + 18, 1, 1.82, 1.82 );
setScaleKey( spep_2 -3 + 20, 1, 1.85, 1.84 );
setScaleKey( spep_2 -3 + 22, 1, 1.88, 1.86 );
setScaleKey( spep_2 -3 + 24, 1, 1.9, 1.89 );
setScaleKey( spep_2 -3 + 26, 1, 1.93, 1.91 );
setScaleKey( spep_2 -3 + 28, 1, 1.95, 1.94 );
setScaleKey( spep_2 -3 + 30, 1, 1.98, 1.96 );
setScaleKey( spep_2 -3 + 32, 1, 2, 1.98 );
setScaleKey( spep_2 -3 + 34, 1, 2.02, 2.01 );
setScaleKey( spep_2 -3 + 36, 1, 2.04, 2.04 );
setScaleKey( spep_2 -3 + 38, 1, 2.06, 2.06 );
setScaleKey( spep_2 -3 + 40, 1, 2.07, 2.07 );
setScaleKey( spep_2 -3 + 43, 1, 2.08, 2.08 );
setScaleKey( spep_2 -3 + 44, 1, 2.32, 2.32 );
setScaleKey( spep_2 -3 + 46, 1, 2.21, 2.21 );
setScaleKey( spep_2 -3 + 48, 1, 2.08, 2.08 );
setScaleKey( spep_2 -3 + 128, 1, 2.08, 2.08 );

setRotateKey( spep_2 + 0, 1, 19.5 );
setRotateKey( spep_2 -3 + 4, 1, 19.1 );
setRotateKey( spep_2 -3 + 6, 1, 18.6 );
setRotateKey( spep_2 -3 + 8, 1, 18.2 );
setRotateKey( spep_2 -3 + 10, 1, 17.7 );
setRotateKey( spep_2 -3 + 12, 1, 17.3 );
setRotateKey( spep_2 -3 + 14, 1, 16.8 );
setRotateKey( spep_2 -3 + 16, 1, 16.4 );
setRotateKey( spep_2 -3 + 18, 1, 15.9 );
setRotateKey( spep_2 -3 + 20, 1, 15.5 );
setRotateKey( spep_2 -3 + 22, 1, 15 );
setRotateKey( spep_2 -3 + 24, 1, 14.5 );
setRotateKey( spep_2 -3 + 26, 1, 14 );
setRotateKey( spep_2 -3 + 28, 1, 13.5 );
setRotateKey( spep_2 -3 + 30, 1, 13 );
setRotateKey( spep_2 -3 + 32, 1, 12.5 );
setRotateKey( spep_2 -3 + 34, 1, 12 );
setRotateKey( spep_2 -3 + 36, 1, 11.5 );
setRotateKey( spep_2 -3 + 38, 1, 11 );
setRotateKey( spep_2 -3 + 40, 1, 10.5 );
setRotateKey( spep_2 -3 + 43, 1, 10 );
setRotateKey( spep_2 -3 + 44, 1, -75 );
setRotateKey( spep_2 -3 + 128, 1, -75 );

-- ** 白フェード ** --
entryFade( spep_2 + 42 -3, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白
entryFade( spep_2 + 126 -8, 6, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --白

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 128, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--飛び上がり
stopSe( spep_2 + 2, SE1, 7 );
SE2 = playSe( spep_2 + 1, 44 ); 
stopSe( spep_2 + 20, SE2, 21 );
playSe( spep_2 + 46, 1004 ); 

--叩きつけ
playSe( spep_2 + 57, 1187 ); 
setSeVolume( spep_2 + 57, 1187, 79 );
playSe( spep_2 + 60, 1001 ); 
setSeVolume( spep_2 + 60, 1001, 71 );

--敵が落ちる
SE3 = playSe( spep_2 + 86, 1183 ); 
setSeVolume( spep_2 + 86, 1183, 79 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 126;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

--敵が落ちる
stopSe( spep_3 + 6, SE3, 0 );

--カメラ引く
playSe( spep_3 + 75, 1072 ); 
setSeVolume( spep_3 + 75, 1072, 0 );
setSeVolume( spep_3 + 89, 1072, 10 );
setSeVolume( spep_3 + 94, 1072, 30 );

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_4 = spep_3 + 94;

------------------------------------------------------
-- 蹴りシーン(126F)
------------------------------------------------------

-- ** エフェクト等 ** --
kick = entryEffect( spep_4 + 0, SP_07x, 0x80, -1, 0, 0, 0 );  --蹴りシーン(ef_007)
setEffMoveKey( spep_4 + 0, kick, 0, 0 , 0 );
setEffMoveKey( spep_4 + 126, kick, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kick, 1.0, 1.0 );
setEffScaleKey( spep_4 + 126, kick, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick, 0 );
setEffRotateKey( spep_4 + 126, kick, 0 );
setEffAlphaKey( spep_4 + 0, kick, 255 );
setEffAlphaKey( spep_4 + 126, kick, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_4 + 78 -3, 906, 48 +3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 78 -3, shuchusen3, 48 +3, 20 );

setEffMoveKey( spep_4 + 78 -3, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 126, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 78 -3, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_4 + 126, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_4 + 78 -3, shuchusen3, 0 );
setEffRotateKey( spep_4 + 126, shuchusen3, 0 );

setEffAlphaKey( spep_4 + 78 -3, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 126, shuchusen3, 255 );

-- ** 書き文字エントリー ** --
ctdogon = entryEffectLife( spep_4 -3 + 76,  10018, 16, 0x100, -1, 0, -175.1, 243.8 );  --ドゴン
setEffMoveKey( spep_4 -3 + 76, ctdogon, -175.1, 243.8 , 0 );
setEffMoveKey( spep_4 -3 + 78, ctdogon, -143.4, 280.2 , 0 );
setEffMoveKey( spep_4 -3 + 80, ctdogon, -117.8, 296.7 , 0 );
setEffMoveKey( spep_4 -3 + 82, ctdogon, -90.7, 309.8 , 0 );
setEffMoveKey( spep_4 -3 + 84, ctdogon, -65.3, 326.5 , 0 );
setEffMoveKey( spep_4 -3 + 86, ctdogon, -25.3, 316.5 , 0 );
setEffMoveKey( spep_4 -3 + 88, ctdogon, 12.6, 311 , 0 );
setEffMoveKey( spep_4 -3 + 90, ctdogon, 52.8, 300.4 , 0 );
setEffMoveKey( spep_4 -3 + 92, ctdogon, 91.9, 292.4 , 0 );

setEffScaleKey( spep_4 -3 + 76, ctdogon, 1.02, 1.02 );
setEffScaleKey( spep_4 -3 + 78, ctdogon, 2, 2 );
setEffScaleKey( spep_4 -3 + 80, ctdogon, 2.17, 2.17 );
setEffScaleKey( spep_4 -3 + 82, ctdogon, 2.33, 2.33 );
setEffScaleKey( spep_4 -3 + 84, ctdogon, 2.5, 2.5 );
setEffScaleKey( spep_4 -3 + 86, ctdogon, 2.88, 2.88 );
setEffScaleKey( spep_4 -3 + 88, ctdogon, 3.25, 3.25 );
setEffScaleKey( spep_4 -3 + 90, ctdogon, 3.63, 3.63 );
setEffScaleKey( spep_4 -3 + 92, ctdogon, 4, 4 );

setEffRotateKey( spep_4 -3 + 76, ctdogon, 30 );
setEffRotateKey( spep_4 -3 + 92, ctdogon, 30 );

setEffAlphaKey( spep_4 -3 + 76, ctdogon, 128 );
setEffAlphaKey( spep_4 -3 + 78, ctdogon, 255 );
setEffAlphaKey( spep_4 -3 + 84, ctdogon, 255 );
setEffAlphaKey( spep_4 -3 + 86, ctdogon, 191 );
setEffAlphaKey( spep_4 -3 + 88, ctdogon, 128 );
setEffAlphaKey( spep_4 -3 + 90, ctdogon, 64 );
setEffAlphaKey( spep_4 -3 + 92, ctdogon, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 18, 1, 1 );
setDisp( spep_4 -3 + 112, 1, 0 );
changeAnime( spep_4 -3 + 18, 1, 8 );
changeAnime( spep_4 -3 + 44, 1, 6 );
changeAnime( spep_4 -3 + 78, 1, 107 );

setMoveKey( spep_4 -3 + 18, 1, 559.5, 1154.1 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 533.1, 1097.7 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 495, 1014.9 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 447, 909.9 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 391.2, 787.4 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 330, 652.8 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 285.4, 550.5 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 232.8, 429.6 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 172.1, 290.1 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 103.3, 132 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 26.3, -44.7 , 0 );
setMoveKey( spep_4 -3 + 40, 1, -58.7, -240 , 0 );
setMoveKey( spep_4 -3 + 42, 1, -151.8, -453.9 , 0 );
setMoveKey( spep_4 -3 + 43, 1, -151.8, -453.9 , 0 );
setMoveKey( spep_4 -3 + 44, 1, -181.4, -455.6 , 0 );
setMoveKey( spep_4 -3 + 46, 1, -79.5, -351.6 , 0 );
setMoveKey( spep_4 -3 + 48, 1, -162.3, -430.2 , 0 );
setMoveKey( spep_4 -3 + 50, 1, -60.4, -326.2 , 0 );
setMoveKey( spep_4 -3 + 52, 1, -143.3, -404.9 , 0 );
setMoveKey( spep_4 -3 + 54, 1, -41.4, -300.9 , 0 );
setMoveKey( spep_4 -3 + 56, 1, -116.1, -362.5 , 0 );
setMoveKey( spep_4 -3 + 58, 1, -92.3, -344.3 , 0 );
setMoveKey( spep_4 -3 + 60, 1, -78.7, -327.7 , 0 );
setMoveKey( spep_4 -3 + 62, 1, -69.2, -315 , 0 );
setMoveKey( spep_4 -3 + 64, 1, -59.7, -302.3 , 0 );
setMoveKey( spep_4 -3 + 66, 1, -50.2, -289.6 , 0 );
setMoveKey( spep_4 -3 + 68, 1, -40.7, -277 , 0 );
setMoveKey( spep_4 -3 + 70, 1, -31.1, -264.3 , 0 );
setMoveKey( spep_4 -3 + 72, 1, -21.6, -251.6 , 0 );
setMoveKey( spep_4 -3 + 74, 1, -12.1, -238.9 , 0 );
setMoveKey( spep_4 -3 + 76, 1, -2.6, -226.3 , 0 );
setMoveKey( spep_4 -3 + 77, 1, -2.6, -226.3 , 0 );
setMoveKey( spep_4 -3 + 78, 1, -105.4, -270.9 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 94.6, -159.3 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 103.1, -231.7 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 289.6, -122.9 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 284.7, -198 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 457.9, -91.8 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 532, -78.4 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 599.4, -66.2 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 660.2, -55.4 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 714.2, -46 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 761.6, -37.8 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 802.3, -31 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 836.3, -25.5 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 863.6, -21.4 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 884.2, -18.5 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 898.2, -17 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 905.4, -16.8 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 915.4, -15.8 , 0 );

setScaleKey( spep_4 -3 + 18, 1, 4.59, 4.59 );
setScaleKey( spep_4 -3 + 20, 1, 4.39, 4.39 );
setScaleKey( spep_4 -3 + 22, 1, 4.18, 4.18 );
setScaleKey( spep_4 -3 + 24, 1, 3.94, 3.94 );
setScaleKey( spep_4 -3 + 26, 1, 3.68, 3.68 );
setScaleKey( spep_4 -3 + 28, 1, 3.4, 3.4 );
setScaleKey( spep_4 -3 + 43, 1, 3.4, 3.4 );
setScaleKey( spep_4 -3 + 44, 1, 3.3, 3.3 );
setScaleKey( spep_4 -3 + 46, 1, 3.31, 3.31 );
setScaleKey( spep_4 -3 + 48, 1, 3.33, 3.33 );
setScaleKey( spep_4 -3 + 50, 1, 3.34, 3.34 );
setScaleKey( spep_4 -3 + 52, 1, 3.35, 3.35 );
setScaleKey( spep_4 -3 + 54, 1, 3.36, 3.36 );
setScaleKey( spep_4 -3 + 56, 1, 3.38, 3.38 );
setScaleKey( spep_4 -3 + 58, 1, 3.39, 3.39 );
setScaleKey( spep_4 -3 + 60, 1, 3.4, 3.4 );
setScaleKey( spep_4 -3 + 62, 1, 3.41, 3.41 );
setScaleKey( spep_4 -3 + 64, 1, 3.43, 3.43 );
setScaleKey( spep_4 -3 + 66, 1, 3.44, 3.44 );
setScaleKey( spep_4 -3 + 68, 1, 3.45, 3.45 );
setScaleKey( spep_4 -3 + 70, 1, 3.46, 3.46 );
setScaleKey( spep_4 -3 + 72, 1, 3.48, 3.48 );
setScaleKey( spep_4 -3 + 74, 1, 3.49, 3.49 );
setScaleKey( spep_4 -3 + 76, 1, 3.5, 3.5 );
setScaleKey( spep_4 -3 + 77, 1, 3.5, 3.5 );
setScaleKey( spep_4 -3 + 78, 1, 1.2, 1.2 );
setScaleKey( spep_4 -3 + 80, 1, 1.54, 1.54 );
setScaleKey( spep_4 -3 + 82, 1, 1.86, 1.86 );
setScaleKey( spep_4 -3 + 84, 1, 2.15, 2.15 );
setScaleKey( spep_4 -3 + 86, 1, 2.42, 2.42 );
setScaleKey( spep_4 -3 + 88, 1, 2.68, 2.68 );
setScaleKey( spep_4 -3 + 90, 1, 2.91, 2.91 );
setScaleKey( spep_4 -3 + 92, 1, 3.11, 3.11 );
setScaleKey( spep_4 -3 + 94, 1, 3.3, 3.3 );
setScaleKey( spep_4 -3 + 96, 1, 3.46, 3.46 );
setScaleKey( spep_4 -3 + 98, 1, 3.61, 3.61 );
setScaleKey( spep_4 -3 + 100, 1, 3.73, 3.73 );
setScaleKey( spep_4 -3 + 102, 1, 3.83, 3.83 );
setScaleKey( spep_4 -3 + 104, 1, 3.9, 3.9 );
setScaleKey( spep_4 -3 + 106, 1, 3.96, 3.96 );
setScaleKey( spep_4 -3 + 108, 1, 3.99, 3.99 );
setScaleKey( spep_4 -3 + 110, 1, 4, 4 );
setScaleKey( spep_4 -3 + 112, 1, 4, 4 );

setRotateKey( spep_4 -3 + 18, 1, -60.4 );
setRotateKey( spep_4 -3 + 43, 1, -60.4 );
setRotateKey( spep_4 -3 + 44, 1, -9.3 );
setRotateKey( spep_4 -3 + 46, 1, -8.5 );
setRotateKey( spep_4 -3 + 48, 1, -7.7 );
setRotateKey( spep_4 -3 + 50, 1, -7 );
setRotateKey( spep_4 -3 + 52, 1, -6.2 );
setRotateKey( spep_4 -3 + 54, 1, -5.4 );
setRotateKey( spep_4 -3 + 56, 1, -4.6 );
setRotateKey( spep_4 -3 + 58, 1, -3.8 );
setRotateKey( spep_4 -3 + 60, 1, -3.1 );
setRotateKey( spep_4 -3 + 62, 1, -2.3 );
setRotateKey( spep_4 -3 + 64, 1, -1.5 );
setRotateKey( spep_4 -3 + 66, 1, -0.7 );
setRotateKey( spep_4 -3 + 68, 1, 0.1 );
setRotateKey( spep_4 -3 + 70, 1, 0.9 );
setRotateKey( spep_4 -3 + 72, 1, 1.6 );
setRotateKey( spep_4 -3 + 74, 1, 2.4 );
setRotateKey( spep_4 -3 + 76, 1, 3.2 );
setRotateKey( spep_4 -3 + 77, 1, 3.2 );
setRotateKey( spep_4 -3 + 78, 1, 24.8 );
setRotateKey( spep_4 -3 + 80, 1, 13.4 );
setRotateKey( spep_4 -3 + 82, 1, 2.8 );
setRotateKey( spep_4 -3 + 84, 1, -7.1 );
setRotateKey( spep_4 -3 + 86, 1, -16.3 );
setRotateKey( spep_4 -3 + 88, 1, -24.8 );
setRotateKey( spep_4 -3 + 90, 1, -32.5 );
setRotateKey( spep_4 -3 + 92, 1, -39.5 );
setRotateKey( spep_4 -3 + 94, 1, -45.7 );
setRotateKey( spep_4 -3 + 96, 1, -51.2 );
setRotateKey( spep_4 -3 + 98, 1, -56 );
setRotateKey( spep_4 -3 + 100, 1, -60 );
setRotateKey( spep_4 -3 + 102, 1, -63.3 );
setRotateKey( spep_4 -3 + 104, 1, -65.9 );
setRotateKey( spep_4 -3 + 106, 1, -67.7 );
setRotateKey( spep_4 -3 + 108, 1, -68.8 );
setRotateKey( spep_4 -3 + 110, 1, -69.2 );
setRotateKey( spep_4 -3 + 112, 1, -69.2 );

-- ** 白フェード ** --
entryFade( spep_4 + 76 -3, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白
entryFade( spep_4 + 126 -8, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 128, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
--カメラ引く
setSeVolume( spep_4 + 0, 1072, 65 );
setSeVolume( spep_4 + 4, 1072, 100 );

--地面に叩きつけられる
SE4 = playSe( spep_4 + 37, 1033 ); 
stopSe( spep_4 + 59, SE4, 30 );
playSe( spep_4 + 40, 1012 );
playSe( spep_4 + 45, 1006 );
setSeVolume( spep_4 + 45, 1006, 71 );

--蹴り上げる
playSe( spep_4 + 75, 1004 );
setSeVolume( spep_4 + 75, 1004, 63 );
playSe( spep_4 + 80, 1010 );
playSe( spep_4 + 81, 1123 );
setSeVolume( spep_4 + 81, 1123, 56 );
SE5 = playSe( spep_4 + 82, 1182 );
setSeVolume( spep_4 + 82, 1182, 178 );
setSeVolume( spep_4 + 91, 1182, 178 );
setSeVolume( spep_4 + 94, 1182, 62 );
setSeVolume( spep_4 + 98, 1182, 0 );
stopSe( spep_4 + 98, SE5, 0 );
playSe( spep_4 + 85, 1007 );
setSeVolume( spep_4 + 85, 1007, 79 );
playSe( spep_4 + 88, 1110 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 126;

------------------------------------------------------
-- フィニッシュ(236F)
------------------------------------------------------

-- ** エフェクト等 ** --
bg = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_5 + 100, bg, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, bg, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, bg, 0 );
setEffRotateKey( spep_5 + 100, bg, 0 );
setEffAlphaKey( spep_5 + 0, bg, 255 );
setEffAlphaKey( spep_5 + 100, bg, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, -3.8, -32.1 , 0 );
setMoveKey( spep_5 + 2, 1, -3.7, -56.6 , 0 );
setMoveKey( spep_5 + 4, 1, -3.4, -88.1 , 0 );
setMoveKey( spep_5 + 6, 1, -3.1, -126.6 , 0 );
setMoveKey( spep_5 + 8, 1, -2.8, -172.1 +10 , 0 );
setMoveKey( spep_5 + 10, 1, -2.4, -224.6 +20 , 0 );
setMoveKey( spep_5 + 12, 1, -1.9, -284.1 +20 , 0 );
setMoveKey( spep_5 + 110, 1, -1.9, -284.1 +20 , 0 );

y=0.4;
setScaleKey( spep_5 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
--setScaleKey( spep_5 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 12, 1, 1.5-y, 1.5-y );
setScaleKey( spep_5 + 14, 1, 1.6-y, 1.6-y );
setScaleKey( spep_5 + 16, 1, 1.5-y, 1.5-y );
setScaleKey( spep_5 + 18, 1, 1.6-y, 1.6-y );
setScaleKey( spep_5 + 20, 1, 1.5-y, 1.5-y );
setScaleKey( spep_5 + 22, 1, 1.6-y, 1.6-y );
setScaleKey( spep_5 + 24, 1, 1.5-y, 1.5-y );
setScaleKey( spep_5 + 26, 1, 1.6-y, 1.6-y );
setScaleKey( spep_5 + 110, 1, 1.6-y, 1.6-y );

z=30;
setRotateKey( spep_5 + 0, 1, 0-z );
setRotateKey( spep_5 + 2, 1, 105-z );
setRotateKey( spep_5 + 4, 1, 240-z );
setRotateKey( spep_5 + 6, 1, 405-z );
setRotateKey( spep_5 + 8, 1, 600-z );
setRotateKey( spep_5 + 10, 1, 825-z );
setRotateKey( spep_5 + 12, 1, 1080-z );
setRotateKey( spep_5 + 110, 1, 1080-z );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_5 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_5 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen4, 0 );
setEffRotateKey( spep_5 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_5 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_5 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_5 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_5 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_5 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_5 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_5 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_5 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_5 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_5 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_5 + 100, shuchusen5, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen5, 0 );
setEffRotateKey( spep_5 + 100, shuchusen5, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_5 + 100, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga1 = entryEffectLife( spep_5 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 14, ctga1, 14, 20 );

setEffMoveKey( spep_5 + 14, ctga1, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctga1, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 100, ctga1, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctga1, 3.2, 3.2 );
setEffScaleKey( spep_5 + 100, ctga1, 3.2, 3.2 );

setEffRotateKey( spep_5 + 14, ctga1, -10.9 );
setEffRotateKey( spep_5 + 15, ctga1, -10.9 );
setEffRotateKey( spep_5 + 16, ctga1, -14.9 );
setEffRotateKey( spep_5 + 17, ctga1, -14.9 );
setEffRotateKey( spep_5 + 18, ctga1, -10.9 );
setEffRotateKey( spep_5 + 19, ctga1, -10.9 );
setEffRotateKey( spep_5 + 20, ctga1, -14.9 );
setEffRotateKey( spep_5 + 21, ctga1, -14.9 );
setEffRotateKey( spep_5 + 22, ctga1, -10.9 );
setEffRotateKey( spep_5 + 23, ctga1, -10.9 );
setEffRotateKey( spep_5 + 24, ctga1, -14.9 );
setEffRotateKey( spep_5 + 25, ctga1, -14.9 );
setEffRotateKey( spep_5 + 26, ctga1, -10.9 );
setEffRotateKey( spep_5 + 27, ctga1, -10.9 );
setEffRotateKey( spep_5 + 28, ctga1, -14.9 );
setEffRotateKey( spep_5 + 100, ctga1, -14.9 );

setEffAlphaKey( spep_5 + 14, ctga1, 255 );
setEffAlphaKey( spep_5 + 100, ctga1, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_5 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_5 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_5 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_5 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_5 + 2, hibiware, 0 );
setEffRotateKey( spep_5 + 100, hibiware, 0 );

setEffAlphaKey( spep_5 + 2, hibiware, 0 );
setEffAlphaKey( spep_5 + 13, hibiware, 0 );
setEffAlphaKey( spep_5 + 14, hibiware, 255 );
setEffAlphaKey( spep_5 + 100, hibiware, 255 );

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --白

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 128, 0, 0, 0, 0, 255 );  --白　背景

-- ** 音 ** --
playSe( spep_5 + 14, 1054 );

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 0 );
endPhase( spep_5 + 98 );

end