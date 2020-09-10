--超サイヤ人2孫悟飯(少年期)_親子かめはめ波

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
SP_01 = 153900; --構え
SP_02 = 153901; --発射
SP_03 = 153902; --悟空ズッ
SP_04 = 153903; --セリフ
SP_05 = 153904; --ダメージ
SP_06 = 153905; --KO
SP_07 = 154038; --ダメージ　奥

--敵側
SP_04x = 154047; --セリフシーン敵側
SP_05x = 153906; --ダメージ敵側

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
-- 構え(396F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_0 + 0, SP_01, 394, 0x100, -1, 0, 0, 0 );  --構え(ef_001)
setEffMoveKey( spep_0 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_0 + 394, kamae, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_0 + 394, kamae, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kamae, 0 );
setEffRotateKey( spep_0 + 394, kamae, 0 );
setEffAlphaKey( spep_0 + 0, kamae, 255 );
setEffAlphaKey( spep_0 + 392, kamae, 255 );
setEffAlphaKey( spep_0 + 393, kamae, 255 );
setEffAlphaKey( spep_0 + 394, kamae, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 393946, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_0 + 0, 44 );  --土煙上がる
setSeVolume( spep_0 + 0, 44, 80 );
playSe( spep_0 + 26, 9 );  --土煙上がる
playSe( spep_0 + 66, 1035 );  --煙が舞う
SE1 = playSe( spep_0 + 76, 55 );  --気溜め
setSeVolume( spep_0 + 76, 55, 80 );
playSe( spep_0 + 140, 1147 );  --パチパチ
playSe( spep_0 + 260, 1072 );  --手元アップ
setSeVolume( spep_0 + 260, 1072, 180 );
playSe( spep_0 + 352, 20 );  --土煙上がる
setSeVolume( spep_0 + 352, 20, 80 );
playSe( spep_0 + 352, 9 );  --土煙上がる
setSeVolume( spep_0 + 352, 9, 110 );
playSe( spep_0 + 352, 50 );  --土煙上がる
setSeVolume( spep_0 + 352, 50, 60 );
playSe( spep_0 + 156, 1007 );  --手を上にあげる
setSeVolume( spep_0 + 156, 1007, 60 );
playSe( spep_0 + 190, 1013 );  --手を下にする
setSeVolume( spep_0 + 190, 1013, 60 );
playSe( spep_0 + 222, 1007 );  --手を戻す
setSeVolume( spep_0 + 222, 1007, 60 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 394;

------------------------------------------------------
-- 発射(118F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_1 + 0, SP_02, 116, 0x100, -1, 0, 0, 0 );  --発射(ef_002)
setEffMoveKey( spep_1 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_1 + 116, hassha, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_1 + 116, hassha, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hassha, 0 );
setEffRotateKey( spep_1 + 116, hassha, 0 );
setEffAlphaKey( spep_1 + 0, hassha, 255 );
setEffAlphaKey( spep_1 + 114, hassha, 255 );
setEffAlphaKey( spep_1 + 115, hassha, 255 );
setEffAlphaKey( spep_1 + 116, hassha, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 116, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
stopSe( spep_1 + 36, SE1, 16 );
playSe( spep_1 + 38, 1022 );  --発射

-- ** 次の準備 ** --
spep_2 = spep_1 + 116;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 66; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

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

------------------------------------------------------
-- 悟空ズッ(76F)
------------------------------------------------------

-- ** エフェクト等 ** --
gokuu = entryEffectLife( spep_2 + 0, SP_03, 80, 0x100, -1, 0, 0, 0 );  --悟空ズッ(ef_003)
setEffMoveKey( spep_2 + 0, gokuu, 0, 0 , 0 );
setEffMoveKey( spep_2 + 80, gokuu, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, gokuu, 1.0, 1.0 );
setEffScaleKey( spep_2 + 80, gokuu, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, gokuu, 0 );
setEffRotateKey( spep_2 + 80, gokuu, 0 );
setEffAlphaKey( spep_2 + 0, gokuu, 255 );
setEffAlphaKey( spep_2 + 80, gokuu, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_2 + 76, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_2 + 0, 8 );  --シーン開始時
setSeVolume( spep_2 + 0, 8, 150 );
playSe( spep_2 + 40, 1072 );  --ズッ
setSeVolume( spep_2 + 40, 1072, 130 );
--playSe( spep_2 + 40, 13 );  --悟空色つく
--setSeVolume( spep_2 + 40, 13, 90 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 80;

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

-- ** 次の準備 ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_4 = spep_3 + 94;

------------------------------------------------------
-- セリフ(188F)
------------------------------------------------------

-- ** エフェクト等 ** --
serifu = entryEffectLife( spep_4 + 0, SP_04, 186, 0x100, -1, 0, 0, 0 );  --セリフ(ef_004)
setEffMoveKey( spep_4 + 0, serifu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 186, serifu, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, serifu, 1.0, 1.0 );
setEffScaleKey( spep_4 + 186, serifu, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, serifu, 0 );
setEffRotateKey( spep_4 + 186, serifu, 0 );
setEffAlphaKey( spep_4 + 0, serifu, 255 );
setEffAlphaKey( spep_4 + 184, serifu, 255 );
setEffAlphaKey( spep_4 + 185, serifu, 255 );
setEffAlphaKey( spep_4 + 186, serifu, 0 );

-- ** 音 ** --
playSe( spep_4 + 0, 1021 );  --冒頭
setSeVolume( spep_4 + 0, 1021, 90 );
playSe( spep_4 + 80, 1021 );  --手を前に
playSe( spep_4 + 86, 1022 );  --手を前に
playSe( spep_4 + 96, 1137 );  --手を前に
setSeVolume( spep_4 + 96, 1137, 65 );
playSe( spep_4 + 110, 1125 );  --うあー
setSeVolume( spep_4 + 110, 1125, 90 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 186, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 186;

------------------------------------------------------
-- ダメージ(266F)
------------------------------------------------------

-- ** エフェクト等 ** --
damage = entryEffect( spep_5 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --ダメージ(ef_005)
setEffMoveKey( spep_5 + 0, damage, 0, 0 , 0 );
setEffMoveKey( spep_5 + 266 + 6, damage, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, damage, 1.0, 1.0 );
setEffScaleKey( spep_5 + 266 + 6, damage, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, damage, 0 );
setEffRotateKey( spep_5 + 266 + 6, damage, 0 );
setEffAlphaKey( spep_5 + 0, damage, 255 );
setEffAlphaKey( spep_5 + 266 + 6, damage, 255 );

damage_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --ダメージ(ef_007)
setEffMoveKey( spep_5 + 0, damage_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 266 + 6, damage_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, damage_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 266 + 6, damage_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, damage_b, 0 );
setEffRotateKey( spep_5 + 266 + 6, damage_b, 0 );
setEffAlphaKey( spep_5 + 0, damage_b, 255 );
setEffAlphaKey( spep_5 + 266 + 6, damage_b, 255 );

ko = entryEffect( spep_5 + 266 + 6, SP_06, 0x100, -1, 0, 0, 0 );  --KO(ef_006)
setEffMoveKey( spep_5 + 266 + 6, ko, 0, 0 , 0 );
setEffMoveKey( spep_5 + 336 + 6, ko, 0, 0 , 0 );
setEffScaleKey( spep_5 + 266 + 6, ko, 1.0, 1.0 );
setEffScaleKey( spep_5 + 336 + 6, ko, 1.0, 1.0 );
setEffRotateKey( spep_5 + 266 + 6, ko, 0 );
setEffRotateKey( spep_5 + 336 + 6, ko, 0 );
setEffAlphaKey( spep_5 + 266 + 6, ko, 255 );
setEffAlphaKey( spep_5 + 336 + 6, ko, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 -3 + 88, 1, 1 );
setDisp( spep_5 + 150, 1, 0 );
changeAnime( spep_5 + 0, 1, 5 );

setMoveKey( spep_5 -3 + 88, 1, -38.5, 3.6 , 0 );
setMoveKey( spep_5 -3 + 90, 1, -36.7, -1.6 , 0 );
setMoveKey( spep_5 -3 + 92, 1, -35.1, -6.7 , 0 );
setMoveKey( spep_5 -3 + 94, 1, -33.5, -11.5 , 0 );
setMoveKey( spep_5 -3 + 96, 1, -31.9, -16.2 , 0 );
setMoveKey( spep_5 -3 + 98, 1, -30.4, -20.7 , 0 );
setMoveKey( spep_5 -3 + 100, 1, -29, -25 , 0 );
setMoveKey( spep_5 -3 + 102, 1, -27.6, -29.1 , 0 );
setMoveKey( spep_5 -3 + 104, 1, -26.3, -33 , 0 );
setMoveKey( spep_5 -3 + 106, 1, -25, -36.8 , 0 );
setMoveKey( spep_5 -3 + 108, 1, -23.9, -40.4 , 0 );
setMoveKey( spep_5 -3 + 110, 1, -22.7, -43.8 , 0 );
setMoveKey( spep_5 -3 + 112, 1, -21.7, -47 , 0 );
setMoveKey( spep_5 -3 + 114, 1, -20.7, -50 , 0 );
setMoveKey( spep_5 -3 + 116, 1, -19.7, -52.8 , 0 );
setMoveKey( spep_5 -3 + 118, 1, -18.8, -55.5 , 0 );
setMoveKey( spep_5 -3 + 120, 1, -18, -57.9 , 0 );
setMoveKey( spep_5 -3 + 122, 1, -17.2, -60.2 , 0 );
setMoveKey( spep_5 -3 + 124, 1, -16.5, -62.3 , 0 );
setMoveKey( spep_5 -3 + 126, 1, -15.9, -64.3 , 0 );
setMoveKey( spep_5 -3 + 128, 1, -15.3, -66 , 0 );
setMoveKey( spep_5 -3 + 130, 1, -14.8, -67.5 , 0 );
setMoveKey( spep_5 -3 + 132, 1, -14.3, -68.9 , 0 );
setMoveKey( spep_5 -3 + 134, 1, -13.9, -70.1 , 0 );
setMoveKey( spep_5 -3 + 136, 1, -13.6, -71.1 , 0 );
setMoveKey( spep_5 -3 + 138, 1, -13.3, -71.9 , 0 );
setMoveKey( spep_5 -3 + 140, 1, -13.1, -72.6 , 0 );
setMoveKey( spep_5 -3 + 142, 1, -13, -73 , 0 );
setMoveKey( spep_5 -3 + 144, 1, -12.9, -73.3 , 0 );
setMoveKey( spep_5 -3 + 146, 1, -12.9, -73.4 , 0 );
setMoveKey( spep_5 + 150, 1, -12.9, -73.4 , 0 );

setScaleKey( spep_5 -3 + 88, 1, 4.31, 4.31 );
setScaleKey( spep_5 -3 + 90, 1, 4.12, 4.12 );
setScaleKey( spep_5 -3 + 92, 1, 3.93, 3.93 );
setScaleKey( spep_5 -3 + 94, 1, 3.75, 3.75 );
setScaleKey( spep_5 -3 + 96, 1, 3.57, 3.57 );
setScaleKey( spep_5 -3 + 98, 1, 3.41, 3.41 );
setScaleKey( spep_5 -3 + 100, 1, 3.25, 3.25 );
setScaleKey( spep_5 -3 + 102, 1, 3.09, 3.09 );
setScaleKey( spep_5 -3 + 104, 1, 2.95, 2.95 );
setScaleKey( spep_5 -3 + 106, 1, 2.81, 2.81 );
setScaleKey( spep_5 -3 + 108, 1, 2.67, 2.67 );
setScaleKey( spep_5 -3 + 110, 1, 2.55, 2.55 );
setScaleKey( spep_5 -3 + 112, 1, 2.43, 2.43 );
setScaleKey( spep_5 -3 + 114, 1, 2.31, 2.31 );
setScaleKey( spep_5 -3 + 116, 1, 2.21, 2.21 );
setScaleKey( spep_5 -3 + 118, 1, 2.11, 2.11 );
setScaleKey( spep_5 -3 + 120, 1, 2.02, 2.02 );
setScaleKey( spep_5 -3 + 122, 1, 1.93, 1.93 );
setScaleKey( spep_5 -3 + 124, 1, 1.85, 1.85 );
setScaleKey( spep_5 -3 + 126, 1, 1.78, 1.78 );
setScaleKey( spep_5 -3 + 128, 1, 1.72, 1.72 );
setScaleKey( spep_5 -3 + 130, 1, 1.66, 1.66 );
setScaleKey( spep_5 -3 + 132, 1, 1.61, 1.61 );
setScaleKey( spep_5 -3 + 134, 1, 1.56, 1.56 );
setScaleKey( spep_5 -3 + 136, 1, 1.53, 1.53 );
setScaleKey( spep_5 -3 + 138, 1, 1.49, 1.49 );
setScaleKey( spep_5 -3 + 140, 1, 1.47, 1.47 );
setScaleKey( spep_5 -3 + 142, 1, 1.45, 1.45 );
setScaleKey( spep_5 -3 + 144, 1, 1.44, 1.44 );
setScaleKey( spep_5 + 150, 1, 1.44, 1.44 );

setRotateKey( spep_5 -3 + 88, 1, 0 );
setRotateKey( spep_5 + 150, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 266, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
setSeVolume( spep_5 + 88, 1125, 70 );
setSeVolume( spep_5 + 150, 1125, 30 );
setSeVolume( spep_5 + 190, 1125, 10 );
SE2 = playSe( spep_5 + 0, 1124 );  --かめはめ波
stopSe( spep_5 + 80, SE2, 20 );
SE3 = playSe( spep_5 + 0, 1131 );  --ドゥッ
setSeVolume( spep_5 + 0, 1131, 80 );
stopSe( spep_5 + 80, SE3, 20 );
playSe( spep_5 + 88, 1023 );  --被弾
playSe( spep_5 + 150, 1019 );  --ビーム伸びる
playSe( spep_5 + 190, 1019 );  --ビーム伸びる
playSe( spep_5 + 150, 1122 );  --ビーム伸びる
setSeVolume( spep_5 + 150, 1122, 70 );
setSeVolume( spep_5 + 180, 1122, 55 );
setSeVolume( spep_5 + 210, 1122, 25 );
setSeVolume( spep_5 + 230, 1122, 20 );

-- ** ダメージ表示 ** --
hideKoScreen();  --黒フィルター削除
dealDamage( spep_5 + 148 );
entryFade( spep_5 + 264 + 6, 2, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255);             -- black fade
endPhase( spep_5 + 268 + 6);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 構え(396F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_0 + 0, SP_01, 394, 0x100, -1, 0, 0, 0 );  --構え(ef_001)
setEffMoveKey( spep_0 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_0 + 394, kamae, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kamae, -1.0, 1.0 );
setEffScaleKey( spep_0 + 394, kamae, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kamae, 0 );
setEffRotateKey( spep_0 + 394, kamae, 0 );
setEffAlphaKey( spep_0 + 0, kamae, 255 );
setEffAlphaKey( spep_0 + 392, kamae, 255 );
setEffAlphaKey( spep_0 + 393, kamae, 255 );
setEffAlphaKey( spep_0 + 394, kamae, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 393946, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_0 + 0, 44 );  --土煙上がる
setSeVolume( spep_0 + 0, 44, 80 );
playSe( spep_0 + 26, 9 );  --土煙上がる
playSe( spep_0 + 66, 1035 );  --煙が舞う
SE1 = playSe( spep_0 + 76, 55 );  --気溜め
setSeVolume( spep_0 + 76, 55, 80 );
playSe( spep_0 + 140, 1147 );  --パチパチ
playSe( spep_0 + 260, 1072 );  --手元アップ
setSeVolume( spep_0 + 260, 1072, 180 );
playSe( spep_0 + 352, 20 );  --土煙上がる
setSeVolume( spep_0 + 352, 20, 80 );
playSe( spep_0 + 352, 9 );  --土煙上がる
setSeVolume( spep_0 + 352, 9, 110 );
playSe( spep_0 + 352, 50 );  --土煙上がる
setSeVolume( spep_0 + 352, 50, 60 );
playSe( spep_0 + 156, 1007 );  --手を上にあげる
setSeVolume( spep_0 + 156, 1007, 60 );
playSe( spep_0 + 190, 1013 );  --手を下にする
setSeVolume( spep_0 + 190, 1013, 60 );
playSe( spep_0 + 222, 1007 );  --手を戻す
setSeVolume( spep_0 + 222, 1007, 60 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 394;

------------------------------------------------------
-- 発射(118F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_1 + 0, SP_02, 116, 0x100, -1, 0, 0, 0 );  --発射(ef_002)
setEffMoveKey( spep_1 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_1 + 116, hassha, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, hassha, -1.0, 1.0 );
setEffScaleKey( spep_1 + 116, hassha, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hassha, 0 );
setEffRotateKey( spep_1 + 116, hassha, 0 );
setEffAlphaKey( spep_1 + 0, hassha, 255 );
setEffAlphaKey( spep_1 + 114, hassha, 255 );
setEffAlphaKey( spep_1 + 115, hassha, 255 );
setEffAlphaKey( spep_1 + 116, hassha, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 116, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
stopSe( spep_1 + 36, SE1, 16 );
playSe( spep_1 + 38, 1022 );  --発射

-- ** 次の準備 ** --
spep_2 = spep_1 + 116;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 66; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

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

------------------------------------------------------
-- 悟空ズッ(76F)
------------------------------------------------------

-- ** エフェクト等 ** --
gokuu = entryEffectLife( spep_2 + 0, SP_03, 80, 0x100, -1, 0, 0, 0 );  --悟空ズッ(ef_003)
setEffMoveKey( spep_2 + 0, gokuu, 0, 0 , 0 );
setEffMoveKey( spep_2 + 80, gokuu, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, gokuu, -1.0, 1.0 );
setEffScaleKey( spep_2 + 80, gokuu, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, gokuu, 0 );
setEffRotateKey( spep_2 + 80, gokuu, 0 );
setEffAlphaKey( spep_2 + 0, gokuu, 255 );
setEffAlphaKey( spep_2 + 80, gokuu, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_2 + 76, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_2 + 0, 8 );  --シーン開始時
setSeVolume( spep_2 + 0, 8, 150 );
playSe( spep_2 + 40, 1072 );  --ズッ
setSeVolume( spep_2 + 40, 1072, 130 );
--playSe( spep_2 + 40, 13 );  --悟空色つく
--setSeVolume( spep_2 + 40, 13, 90 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 80;

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

-- ** 次の準備 ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_4 = spep_3 + 94;

------------------------------------------------------
-- セリフ(188F)
------------------------------------------------------

-- ** エフェクト等 ** --
serifu = entryEffectLife( spep_4 + 0, SP_04x, 186, 0x100, -1, 0, 0, 0 );  --セリフ(ef_004)
setEffMoveKey( spep_4 + 0, serifu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 186, serifu, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, serifu, -1.0, 1.0 );
setEffScaleKey( spep_4 + 186, serifu, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, serifu, 0 );
setEffRotateKey( spep_4 + 186, serifu, 0 );
setEffAlphaKey( spep_4 + 0, serifu, 255 );
setEffAlphaKey( spep_4 + 184, serifu, 255 );
setEffAlphaKey( spep_4 + 185, serifu, 255 );
setEffAlphaKey( spep_4 + 186, serifu, 0 );

-- ** 音 ** --
playSe( spep_4 + 0, 1021 );  --冒頭
setSeVolume( spep_4 + 0, 1021, 90 );
playSe( spep_4 + 80, 1021 );  --手を前に
playSe( spep_4 + 86, 1022 );  --手を前に
playSe( spep_4 + 96, 1137 );  --手を前に
setSeVolume( spep_4 + 96, 1137, 65 );
playSe( spep_4 + 110, 1125 );  --うあー
setSeVolume( spep_4 + 110, 1125, 90 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 186, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 186;

------------------------------------------------------
-- ダメージ(266F)
------------------------------------------------------

-- ** エフェクト等 ** --
damage = entryEffect( spep_5 + 0, SP_05x, 0x100, -1, 0, 0, 0 );  --ダメージ(ef_005)
setEffMoveKey( spep_5 + 0, damage, 0, 0 , 0 );
setEffMoveKey( spep_5 + 266 + 6, damage, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, damage, 1.0, 1.0 );
setEffScaleKey( spep_5 + 266 + 6, damage, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, damage, 0 );
setEffRotateKey( spep_5 + 266 + 6, damage, 0 );
setEffAlphaKey( spep_5 + 0, damage, 255 );
setEffAlphaKey( spep_5 + 266 + 6, damage, 255 );

damage_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --ダメージ(ef_007)
setEffMoveKey( spep_5 + 0, damage_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 266 + 6, damage_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, damage_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 266 + 6, damage_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, damage_b, 0 );
setEffRotateKey( spep_5 + 266 + 6, damage_b, 0 );
setEffAlphaKey( spep_5 + 0, damage_b, 255 );
setEffAlphaKey( spep_5 + 266 + 6, damage_b, 255 );

ko = entryEffect( spep_5 + 266 + 6, SP_06, 0x100, -1, 0, 0, 0 );  --KO(ef_006)
setEffMoveKey( spep_5 + 266 + 6, ko, 0, 0 , 0 );
setEffMoveKey( spep_5 + 336 + 6, ko, 0, 0 , 0 );
setEffScaleKey( spep_5 + 266 + 6, ko, -1.0, 1.0 );
setEffScaleKey( spep_5 + 336 + 6, ko, -1.0, 1.0 );
setEffRotateKey( spep_5 + 266 + 6, ko, 0 );
setEffRotateKey( spep_5 + 336 + 6, ko, 0 );
setEffAlphaKey( spep_5 + 266 + 6, ko, 255 );
setEffAlphaKey( spep_5 + 336 + 6, ko, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 -3 + 88, 1, 1 );
setDisp( spep_5 + 150, 1, 0 );
changeAnime( spep_5 + 0, 1, 5 );

setMoveKey( spep_5 -3 + 88, 1, -38.5, 3.6 , 0 );
setMoveKey( spep_5 -3 + 90, 1, -36.7, -1.6 , 0 );
setMoveKey( spep_5 -3 + 92, 1, -35.1, -6.7 , 0 );
setMoveKey( spep_5 -3 + 94, 1, -33.5, -11.5 , 0 );
setMoveKey( spep_5 -3 + 96, 1, -31.9, -16.2 , 0 );
setMoveKey( spep_5 -3 + 98, 1, -30.4, -20.7 , 0 );
setMoveKey( spep_5 -3 + 100, 1, -29, -25 , 0 );
setMoveKey( spep_5 -3 + 102, 1, -27.6, -29.1 , 0 );
setMoveKey( spep_5 -3 + 104, 1, -26.3, -33 , 0 );
setMoveKey( spep_5 -3 + 106, 1, -25, -36.8 , 0 );
setMoveKey( spep_5 -3 + 108, 1, -23.9, -40.4 , 0 );
setMoveKey( spep_5 -3 + 110, 1, -22.7, -43.8 , 0 );
setMoveKey( spep_5 -3 + 112, 1, -21.7, -47 , 0 );
setMoveKey( spep_5 -3 + 114, 1, -20.7, -50 , 0 );
setMoveKey( spep_5 -3 + 116, 1, -19.7, -52.8 , 0 );
setMoveKey( spep_5 -3 + 118, 1, -18.8, -55.5 , 0 );
setMoveKey( spep_5 -3 + 120, 1, -18, -57.9 , 0 );
setMoveKey( spep_5 -3 + 122, 1, -17.2, -60.2 , 0 );
setMoveKey( spep_5 -3 + 124, 1, -16.5, -62.3 , 0 );
setMoveKey( spep_5 -3 + 126, 1, -15.9, -64.3 , 0 );
setMoveKey( spep_5 -3 + 128, 1, -15.3, -66 , 0 );
setMoveKey( spep_5 -3 + 130, 1, -14.8, -67.5 , 0 );
setMoveKey( spep_5 -3 + 132, 1, -14.3, -68.9 , 0 );
setMoveKey( spep_5 -3 + 134, 1, -13.9, -70.1 , 0 );
setMoveKey( spep_5 -3 + 136, 1, -13.6, -71.1 , 0 );
setMoveKey( spep_5 -3 + 138, 1, -13.3, -71.9 , 0 );
setMoveKey( spep_5 -3 + 140, 1, -13.1, -72.6 , 0 );
setMoveKey( spep_5 -3 + 142, 1, -13, -73 , 0 );
setMoveKey( spep_5 -3 + 144, 1, -12.9, -73.3 , 0 );
setMoveKey( spep_5 -3 + 146, 1, -12.9, -73.4 , 0 );
setMoveKey( spep_5 + 150, 1, -12.9, -73.4 , 0 );

setScaleKey( spep_5 -3 + 88, 1, 4.31, 4.31 );
setScaleKey( spep_5 -3 + 90, 1, 4.12, 4.12 );
setScaleKey( spep_5 -3 + 92, 1, 3.93, 3.93 );
setScaleKey( spep_5 -3 + 94, 1, 3.75, 3.75 );
setScaleKey( spep_5 -3 + 96, 1, 3.57, 3.57 );
setScaleKey( spep_5 -3 + 98, 1, 3.41, 3.41 );
setScaleKey( spep_5 -3 + 100, 1, 3.25, 3.25 );
setScaleKey( spep_5 -3 + 102, 1, 3.09, 3.09 );
setScaleKey( spep_5 -3 + 104, 1, 2.95, 2.95 );
setScaleKey( spep_5 -3 + 106, 1, 2.81, 2.81 );
setScaleKey( spep_5 -3 + 108, 1, 2.67, 2.67 );
setScaleKey( spep_5 -3 + 110, 1, 2.55, 2.55 );
setScaleKey( spep_5 -3 + 112, 1, 2.43, 2.43 );
setScaleKey( spep_5 -3 + 114, 1, 2.31, 2.31 );
setScaleKey( spep_5 -3 + 116, 1, 2.21, 2.21 );
setScaleKey( spep_5 -3 + 118, 1, 2.11, 2.11 );
setScaleKey( spep_5 -3 + 120, 1, 2.02, 2.02 );
setScaleKey( spep_5 -3 + 122, 1, 1.93, 1.93 );
setScaleKey( spep_5 -3 + 124, 1, 1.85, 1.85 );
setScaleKey( spep_5 -3 + 126, 1, 1.78, 1.78 );
setScaleKey( spep_5 -3 + 128, 1, 1.72, 1.72 );
setScaleKey( spep_5 -3 + 130, 1, 1.66, 1.66 );
setScaleKey( spep_5 -3 + 132, 1, 1.61, 1.61 );
setScaleKey( spep_5 -3 + 134, 1, 1.56, 1.56 );
setScaleKey( spep_5 -3 + 136, 1, 1.53, 1.53 );
setScaleKey( spep_5 -3 + 138, 1, 1.49, 1.49 );
setScaleKey( spep_5 -3 + 140, 1, 1.47, 1.47 );
setScaleKey( spep_5 -3 + 142, 1, 1.45, 1.45 );
setScaleKey( spep_5 -3 + 144, 1, 1.44, 1.44 );
setScaleKey( spep_5 + 150, 1, 1.44, 1.44 );

setRotateKey( spep_5 -3 + 88, 1, 0 );
setRotateKey( spep_5 + 150, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 266, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
setSeVolume( spep_5 + 88, 1125, 70 );
setSeVolume( spep_5 + 150, 1125, 30 );
setSeVolume( spep_5 + 190, 1125, 10 );
SE2 = playSe( spep_5 + 0, 1124 );  --かめはめ波
stopSe( spep_5 + 80, SE2, 20 );
SE3 = playSe( spep_5 + 0, 1131 );  --ドゥッ
setSeVolume( spep_5 + 0, 1131, 80 );
stopSe( spep_5 + 80, SE3, 20 );
playSe( spep_5 + 88, 1023 );  --被弾
playSe( spep_5 + 150, 1019 );  --ビーム伸びる
playSe( spep_5 + 190, 1019 );  --ビーム伸びる
playSe( spep_5 + 150, 1122 );  --ビーム伸びる
setSeVolume( spep_5 + 150, 1122, 70 );
setSeVolume( spep_5 + 180, 1122, 55 );
setSeVolume( spep_5 + 210, 1122, 25 );
setSeVolume( spep_5 + 230, 1122, 20 );

-- ** ダメージ表示 ** --
hideKoScreen();  --黒フィルター削除
dealDamage( spep_5 + 148 );
entryFade( spep_5 +264 + 6, 2, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255);             -- black fade
endPhase( spep_5 + 268 + 6 );

end