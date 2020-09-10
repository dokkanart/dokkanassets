--ピッコロ大魔王_爆烈魔光砲

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
SP_01 = 155159; --ビーム発射〜敵にヒット
SP_02 = 155160; --ビーム発射〜敵にヒット
SP_03 = 155163; --敵が地面に激突
SP_04 = 155164; --気だめ〜ガッツポーズ
SP_05 = 155165; --気弾投げ〜着弾

--敵側
SP_01x = 155161; --ビーム発射〜敵にヒット
SP_02x = 155162; --ビーム発射〜敵にヒット
SP_05x = 155166; --気弾投げ〜着弾

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
-- ビーム発射〜敵にヒット(164F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
beam_f = entryEffectLife( spep_0 + 0, SP_01, 164, 0x100, -1, 0, 0, 0 );  --ビーム発射〜敵にヒット(ef_001)
setEffMoveKey( spep_0 + 0, beam_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 164, beam_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 164, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, beam_f, 0 );
setEffRotateKey( spep_0 + 164, beam_f, 0 );
setEffAlphaKey( spep_0 + 0, beam_f, 255 );
setEffAlphaKey( spep_0 + 163, beam_f, 255 );
setEffAlphaKey( spep_0 + 164, beam_f, 0 );

beam_b = entryEffectLife( spep_0 + 0, SP_02, 164, 0x80, -1, 0, 0, 0 );  --ビーム発射〜敵にヒット(ef_002)
setEffMoveKey( spep_0 + 0, beam_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 164, beam_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 164, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, beam_b, 0 );
setEffRotateKey( spep_0 + 164, beam_b, 0 );
setEffAlphaKey( spep_0 + 0, beam_b, 255 );
setEffAlphaKey( spep_0 + 163, beam_b, 255 );
setEffAlphaKey( spep_0 + 164, beam_b, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 166, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--目が光る
SE0 = playSe( spep_0 + 0, 1152 );
setSeVolume( spep_0 + 0, 1152, 0 );
setSeVolume( spep_0 + 12, 1152, 10 );
setSeVolume( spep_0 + 16, 1152, 36 );
setSeVolume( spep_0 + 20, 1152, 64 );
setSeVolume( spep_0 + 22, 1152, 89 );

SE1 = playSe( spep_0 + 14, 1154 );
setSeVolume( spep_0 + 14, 1154, 79 );
setSeVolume( spep_0 + 23, 1154, 79 );
setSeVolume( spep_0 + 34, 1154, 62 );
setSeVolume( spep_0 + 42, 1154, 46 );
setSeVolume( spep_0 + 50, 1154, 24 );
setSeVolume( spep_0 + 57, 1154, 0 );
stopSe( spep_0 + 57, SE1, 0 );

--目からビーム
SE2 = playSe( spep_0 + 38, 1134 );
setSeVolume( spep_0 + 38, 1154, 0 );
setSeVolume( spep_0 + 46, 1154, 10 );
setSeVolume( spep_0 + 47, 1154, 32 );
SE3 = playSe( spep_0 + 49, 1032 );
setSeVolume( spep_0 + 49, 1032, 40 );
SE4 = playSe( spep_0 + 51, 1177 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 68; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE0, 0 );
stopSe( SP_dodge - 12, SE1, 0 );
stopSe( SP_dodge - 12, SE2, 0 );
stopSe( SP_dodge - 12, SE3, 0 );
stopSe( SP_dodge - 12, SE4, 0 );

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

-- ** 書き文字エントリー ** --
ctbon = entryEffectLife( spep_0 -3 + 128,  10027, 16, 0x100, -1, 0, 12, 101.5 );  --ボンッ
setEffMoveKey( spep_0 -3 + 128, ctbon, 12, 101.5 , 0 );
setEffMoveKey( spep_0 -3 + 130, ctbon, 22, 161.5 , 0 );
setEffMoveKey( spep_0 -3 + 132, ctbon, 32, 221.5 , 0 );
setEffMoveKey( spep_0 -3 + 140, ctbon, 32, 221.5 , 0 );
setEffMoveKey( spep_0 -3 + 142, ctbon, 32, 231.5 , 0 );
setEffMoveKey( spep_0 -3 + 144, ctbon, 32, 241.4 , 0 );

setEffScaleKey( spep_0 -3 + 128, ctbon, 1, 1 );
setEffScaleKey( spep_0 -3 + 130, ctbon, 1.63, 1.63 );
setEffScaleKey( spep_0 -3 + 132, ctbon, 2.25, 2.25 );
setEffScaleKey( spep_0 -3 + 140, ctbon, 2.25, 2.25 );
setEffScaleKey( spep_0 -3 + 142, ctbon, 2.42, 2.42 );
setEffScaleKey( spep_0 -3 + 144, ctbon, 2.6, 2.6 );

setEffRotateKey( spep_0 -3 + 128, ctbon, 0 );
setEffRotateKey( spep_0 -3 + 144, ctbon, 0 );

setEffAlphaKey( spep_0 -3 + 128, ctbon, 255 );
setEffAlphaKey( spep_0 -3 + 140, ctbon, 255 );
setEffAlphaKey( spep_0 -3 + 142, ctbon, 128 );
setEffAlphaKey( spep_0 -3 + 144, ctbon, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 108, 1, 1 );
setDisp( spep_0 -3 + 166, 1, 0 );
changeAnime( spep_0 -3 + 108, 1, 104 );
changeAnime( spep_0 -3 + 128, 1, 108 );

setMoveKey( spep_0 -3 + 108, 1, -208, 147.4 , 0 );
setMoveKey( spep_0 -3 + 110, 1, -147.1, 82.4 , 0 );
setMoveKey( spep_0 -3 + 112, 1, -87.4, 19.6 , 0 );
setMoveKey( spep_0 -3 + 114, 1, -43.6, -26.5 , 0 );
setMoveKey( spep_0 -3 + 116, 1, -13.4, -58.3 , 0 );
setMoveKey( spep_0 -3 + 118, 1, 7.1, -79.9 , 0 );
setMoveKey( spep_0 -3 + 120, 1, 20.9, -94.4 , 0 );
setMoveKey( spep_0 -3 + 122, 1, 29.8, -103.9 , 0 );
setMoveKey( spep_0 -3 + 124, 1, 35.4, -109.7 , 0 );
setMoveKey( spep_0 -3 + 126, 1, 38.2, -112.7 , 0 );
setMoveKey( spep_0 -3 + 127, 1, 38.2, -112.7 , 0 );
setMoveKey( spep_0 -3 + 128, 1, 83.4, -128 , 0 );
setMoveKey( spep_0 -3 + 130, 1, 97.4, -137.6 , 0 );
setMoveKey( spep_0 -3 + 132, 1, 100.3, -135.6 , 0 );
setMoveKey( spep_0 -3 + 134, 1, 92, -151.9 , 0 );
setMoveKey( spep_0 -3 + 136, 1, 103.8, -137.9 , 0 );
setMoveKey( spep_0 -3 + 138, 1, 98.3, -127.1 , 0 );
setMoveKey( spep_0 -3 + 140, 1, 103.2, -127.7 , 0 );
setMoveKey( spep_0 -3 + 142, 1, 104.7, -140.6 , 0 );
setMoveKey( spep_0 -3 + 144, 1, 104.8, -142.2 , 0 );
setMoveKey( spep_0 -3 + 146, 1, 100.8, -139.7 , 0 );
setMoveKey( spep_0 -3 + 148, 1, 52.7, -125.2 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 296.7, -355 , 0 );
setMoveKey( spep_0 -3 + 152, 1, 587.5, -614.3 , 0 );
setMoveKey( spep_0 -3 + 154, 1, 752, -770.7 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 856.1, -871.6 , 0 );
setMoveKey( spep_0 -3 + 158, 1, 923.2, -932.5 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 961.8, -968.6 , 0 );
setMoveKey( spep_0 -3 + 162, 1, 981.3, -988.4 , 0 );
setMoveKey( spep_0 -3 + 164, 1, 992, -998.2 , 0 );
setMoveKey( spep_0 -3 + 166, 1, 996.3, -1001.6 , 0 );

setScaleKey( spep_0 -3 + 108, 1, 2.06, 2.06 );
setScaleKey( spep_0 -3 + 127, 1, 2.06, 2.06 );
setScaleKey( spep_0 -3 + 128, 1, 2.06, 2.06 );
setScaleKey( spep_0 -3 + 166, 1, 2.06, 2.06 );

setRotateKey( spep_0 -3 + 108, 1, 29.2 );
setRotateKey( spep_0 -3 + 110, 1, 31.6 );
setRotateKey( spep_0 -3 + 112, 1, 33.6 );
setRotateKey( spep_0 -3 + 114, 1, 35.1 );
setRotateKey( spep_0 -3 + 116, 1, 36.1 );
setRotateKey( spep_0 -3 + 118, 1, 36.8 );
setRotateKey( spep_0 -3 + 120, 1, 37.3 );
setRotateKey( spep_0 -3 + 122, 1, 37.6 );
setRotateKey( spep_0 -3 + 124, 1, 37.8 );
setRotateKey( spep_0 -3 + 126, 1, 37.9 );
setRotateKey( spep_0 -3 + 127, 1, 37.9 );
setRotateKey( spep_0 -3 + 128, 1, 37.9 );
setRotateKey( spep_0 -3 + 166, 1, 37.9 );

-- ** 音 ** --
--目からビーム
stopSe( spep_0 + 138, SE4, 0 );

--敵に当たる
playSe( spep_0 + 132, 1023 );
playSe( spep_0 + 132, 1025 );
setSeVolume( spep_0 + 132, 1025, 63 );

--敵が飛んでいく
SE5 = playSe( spep_0 + 162, 1121 );
setSeVolume( spep_0 + 162, 1121, 56 );
SE6 = playSe( spep_0 + 163, 1183 );

--腕を振り上げる
playSe( spep_0 + 138, 1168 );
setSeVolume( spep_0 + 138, 1168, 0 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 164;

------------------------------------------------------
-- 敵が地面に激突(86F)
------------------------------------------------------

-- ** エフェクト等 ** --
jimen = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --敵が地面に激突(ef_003)
setEffMoveKey( spep_1 + 0, jimen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, jimen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, jimen, 1.0, 1.0 );
setEffScaleKey( spep_1 + 86, jimen, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, jimen, 0 );
setEffRotateKey( spep_1 + 86, jimen, 0 );
setEffAlphaKey( spep_1 + 0, jimen, 255 );
setEffAlphaKey( spep_1 + 86, jimen, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 28, 1, 0 );
changeAnime( spep_1 + 0, 1, 105 );

setMoveKey( spep_1 + 0, 1, 31.7, -202.7 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 21.8, -139 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 15.5, -98.1 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 11, -69.6 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 9.5, -69.5 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 8.2, -69.5 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 7.1, -69.5 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 6.2, -69.5 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 5.5, -69.4 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 4.8, -69.4 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 4.4, -69.4 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 4.1, -69.4 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 3.9, -69.4 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 3.9, -69.4 , 0 );

setScaleKey( spep_1 + 0, 1, 3.93, 3.93 );
setScaleKey( spep_1 -3 + 4, 1, 2.48, 2.48 );
setScaleKey( spep_1 -3 + 6, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 8, 1, 0.89, 0.89 );
setScaleKey( spep_1 -3 + 10, 1, 0.77, 0.77 );
setScaleKey( spep_1 -3 + 12, 1, 0.67, 0.67 );
setScaleKey( spep_1 -3 + 14, 1, 0.58, 0.58 );
setScaleKey( spep_1 -3 + 16, 1, 0.5, 0.5 );
setScaleKey( spep_1 -3 + 18, 1, 0.44, 0.44 );
setScaleKey( spep_1 -3 + 20, 1, 0.39, 0.39 );
setScaleKey( spep_1 -3 + 22, 1, 0.35, 0.35 );
setScaleKey( spep_1 -3 + 24, 1, 0.33, 0.33 );
setScaleKey( spep_1 -3 + 26, 1, 0.32, 0.32 );
setScaleKey( spep_1 -3 + 28, 1, 0.32, 0.32 );

setRotateKey( spep_1 + 0, 1, 9.7 );
setRotateKey( spep_1 -3 + 4, 1, 9.6 );
setRotateKey( spep_1 -3 + 12, 1, 9.6 );
setRotateKey( spep_1 -3 + 14, 1, 9.7 );
setRotateKey( spep_1 -3 + 28, 1, 9.7 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 88, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--敵が飛んでいく
stopSe( spep_1 + 58, SE5, 0 );
stopSe( spep_1 + 58, SE6, 0 );

--地面に衝突
playSe( spep_1 + 35, 1159 );
setSeVolume( spep_1 + 35, 1159, 79 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 86;

------------------------------------------------------
-- 気だめ〜ガッツポーズ(336F)
------------------------------------------------------

-- ** エフェクト等 ** --
kidame = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --気だめ〜ガッツポーズ(ef_004)
setEffMoveKey( spep_2 + 0, kidame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 336, kidame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kidame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 336, kidame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kidame, 0 );
setEffRotateKey( spep_2 + 336, kidame, 0 );
setEffAlphaKey( spep_2 + 0, kidame, 255 );
setEffAlphaKey( spep_2 + 336, kidame, 255 );

spep_x = spep_2 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 9.2 -30, 385.2); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, 9.2 -30, 385.2 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 9.2 -30, 385.2 , 0 );

setEffScaleKey( spep_x + 16, ctgogo, 1.00 +0.3, 1.00 +0.3 );
setEffScaleKey( spep_x + 84, ctgogo, 1.00 +0.3, 1.00 +0.3 );

setEffRotateKey( spep_x + 16, ctgogo, 12.5 );
setEffRotateKey( spep_x + 84, ctgogo, 12.5 );

setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 76, ctgogo, 255 );
setEffAlphaKey( spep_x + 78, ctgogo, 191 );
setEffAlphaKey( spep_x + 80, ctgogo, 128 );
setEffAlphaKey( spep_x + 82, ctgogo, 64 );
setEffAlphaKey( spep_x + 84, ctgogo, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 338, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

--腕を振り上げる
setSeVolume( spep_2 + 14, 1168, 10 );
setSeVolume( spep_2 + 16, 1168, 38 );
setSeVolume( spep_2 + 18, 1168, 79 );

playSe( spep_2 + 11, 1190 );
setSeVolume( spep_2 + 11, 1190, 10 );
setSeVolume( spep_2 + 14, 1190, 48 );
setSeVolume( spep_2 + 16, 1190, 71 );

playSe( spep_2 + 15, 1007 );
playSe( spep_2 + 20, 1041 );
setSeVolume( spep_2 + 20, 1041, 50 );
playSe( spep_2 + 23, 1013 );
playSe( spep_2 + 28, 1007 );
setSeVolume( spep_2 + 28, 1007, 50 );

--目が光る
SE7 = playSe( spep_2 + 62, 1222 );
setSeVolume( spep_2 + 62, 1222, 0 );
setSeVolume( spep_2 + 109, 1222, 10 );
setSeVolume( spep_2 + 112, 1222, 48 );
setSeVolume( spep_2 + 114, 1222, 89 );
setSeVolume( spep_2 + 139, 1222, 89 );
setSeVolume( spep_2 + 144, 1222, 68 );
setSeVolume( spep_2 + 152, 1222, 56 );
setSeVolume( spep_2 + 158, 1222, 42 );
setSeVolume( spep_2 + 162, 1222, 28 );
setSeVolume( spep_2 + 170, 1222, 12 );
setSeVolume( spep_2 + 178, 1222, 0 );
stopSe( spep_2 + 178, SE7, 0 );

playSe( spep_2 + 99, 1026 );
setSeVolume( spep_2 + 99, 1026, 56 );

--腕を横に
SE8 = playSe( spep_2 + 82, 1116 );
stopSe( spep_2 + 91, SE8, 24 );
playSe( spep_2 + 74, 1004 );

--オーラ出る
playSe( spep_2 + 157, 1131 );
setSeVolume( spep_2 + 157, 1131, 79 );
playSe( spep_2 + 166, 1035 );
setSeVolume( spep_2 + 166, 1035, 71 );
SE9 = playSe( spep_2 + 166, 1214 );
stopSe( spep_2 + 280, SE9, 0 );

--ビリビリ
SE10 = playSe( spep_2 + 255, 1230 );
stopSe( spep_2 + 296, SE10, 20 );
playSe( spep_2 + 255, 1231 );
setSeVolume( spep_2 + 255, 1231, 141 );
playSe( spep_2 + 255, 1038 );
SE11 = playSe( spep_2 + 277, 1147 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 336;

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

--ビリビリ
stopSe( spep_3 + 5, SE11, 0 );

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_4 = spep_3 + 94;

------------------------------------------------------
-- 気弾投げ〜着弾(326F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --気弾投げ〜着弾(ef_005)
setEffMoveKey( spep_4 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_4 + 326, finish, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_4 + 326, finish, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish, 0 );
setEffRotateKey( spep_4 + 326, finish, 0 );
setEffAlphaKey( spep_4 + 0, finish, 255 );
setEffAlphaKey( spep_4 + 326, finish, 255 );

-- ** 書き文字エントリー ** --
ctgyua = entryEffectLife( spep_4 -3 + 60,  10032, 18, 0x100, -1, 0, -114.2, 249.8 );  --ギュアア
setEffMoveKey( spep_4 -3 + 60, ctgyua, -114.2, 249.8 , 0 );
setEffMoveKey( spep_4 -3 + 62, ctgyua, -55.1, 311.7 , 0 );
setEffMoveKey( spep_4 -3 + 64, ctgyua, 4.1, 373.7 , 0 );
setEffMoveKey( spep_4 -3 + 66, ctgyua, 16.1, 381.8 , 0 );
setEffMoveKey( spep_4 -3 + 68, ctgyua, 28.1, 389.8 , 0 );
setEffMoveKey( spep_4 -3 + 70, ctgyua, 40.1, 397.8 , 0 );
setEffMoveKey( spep_4 -3 + 72, ctgyua, 52.1, 405.8 , 0 );
setEffMoveKey( spep_4 -3 + 74, ctgyua, 64.1, 413.8 , 0 );
setEffMoveKey( spep_4 -3 + 76, ctgyua, 73.1, 423.8 , 0 );
setEffMoveKey( spep_4 -3 + 78, ctgyua, 82.1, 433.8 , 0 );

setEffScaleKey( spep_4 -3 + 60, ctgyua, 2.61, 2.61 );
setEffScaleKey( spep_4 -3 + 62, ctgyua, 3.59, 3.59 );
setEffScaleKey( spep_4 -3 + 64, ctgyua, 4.57, 4.57 );
setEffScaleKey( spep_4 -3 + 66, ctgyua, 4.64, 4.64 );
setEffScaleKey( spep_4 -3 + 68, ctgyua, 4.7, 4.7 );
setEffScaleKey( spep_4 -3 + 70, ctgyua, 4.77, 4.77 );
setEffScaleKey( spep_4 -3 + 72, ctgyua, 4.83, 4.83 );
setEffScaleKey( spep_4 -3 + 74, ctgyua, 4.9, 4.9 );
setEffScaleKey( spep_4 -3 + 76, ctgyua, 5, 5 );
setEffScaleKey( spep_4 -3 + 78, ctgyua, 5.1, 5.1 );

setEffRotateKey( spep_4 -3 + 60, ctgyua, 0 );
setEffRotateKey( spep_4 -3 + 78, ctgyua, 0 );

setEffAlphaKey( spep_4 -3 + 60, ctgyua, 255 );
setEffAlphaKey( spep_4 -3 + 74, ctgyua, 255 );
setEffAlphaKey( spep_4 -3 + 76, ctgyua, 128 );
setEffAlphaKey( spep_4 -3 + 78, ctgyua, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 326, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--振りかぶる
SE12 = playSe( spep_4 + 1, 1116 );
stopSe( spep_4 + 26, SE12, 15 );

playSe( spep_4 + 1, 1182 );
setSeVolume( spep_4 + 1, 1182, 10 );
setSeVolume( spep_4 + 2, 1182, 32 );
setSeVolume( spep_4 + 4, 1182, 56 );
setSeVolume( spep_4 + 8, 1182, 88 );
setSeVolume( spep_4 + 12, 1182, 100 );

playSe( spep_4 + 11, 1004 );
setSeVolume( spep_4 + 11, 1004, 71 );

--気弾発射
playSe( spep_4 + 56, 1046 );
playSe( spep_4 + 57, 1146 );

--爆発
playSe( spep_4 + 116, 1017 );
setSeVolume( spep_4 + 116, 1017, 63 );
playSe( spep_4 + 133, 1033 );
setSeVolume( spep_4 + 133, 1033, 71 );

playSe( spep_4 + 147, 1024 );
playSe( spep_4 + 207, 1159 );

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 220 );
endPhase( spep_4 + 324 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- ビーム発射〜敵にヒット(164F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
beam_f = entryEffectLife( spep_0 + 0, SP_01x, 164, 0x100, -1, 0, 0, 0 );  --ビーム発射〜敵にヒット(ef_001)
setEffMoveKey( spep_0 + 0, beam_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 164, beam_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 164, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, beam_f, 0 );
setEffRotateKey( spep_0 + 164, beam_f, 0 );
setEffAlphaKey( spep_0 + 0, beam_f, 255 );
setEffAlphaKey( spep_0 + 163, beam_f, 255 );
setEffAlphaKey( spep_0 + 164, beam_f, 0 );

beam_b = entryEffectLife( spep_0 + 0, SP_02x, 164, 0x80, -1, 0, 0, 0 );  --ビーム発射〜敵にヒット(ef_002)
setEffMoveKey( spep_0 + 0, beam_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 164, beam_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 164, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, beam_b, 0 );
setEffRotateKey( spep_0 + 164, beam_b, 0 );
setEffAlphaKey( spep_0 + 0, beam_b, 255 );
setEffAlphaKey( spep_0 + 163, beam_b, 255 );
setEffAlphaKey( spep_0 + 164, beam_b, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 166, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--目が光る
SE0 = playSe( spep_0 + 0, 1152 );
setSeVolume( spep_0 + 0, 1152, 0 );
setSeVolume( spep_0 + 12, 1152, 10 );
setSeVolume( spep_0 + 16, 1152, 36 );
setSeVolume( spep_0 + 20, 1152, 64 );
setSeVolume( spep_0 + 22, 1152, 89 );

SE1 = playSe( spep_0 + 14, 1154 );
setSeVolume( spep_0 + 14, 1154, 79 );
setSeVolume( spep_0 + 23, 1154, 79 );
setSeVolume( spep_0 + 34, 1154, 62 );
setSeVolume( spep_0 + 42, 1154, 46 );
setSeVolume( spep_0 + 50, 1154, 24 );
setSeVolume( spep_0 + 57, 1154, 0 );
stopSe( spep_0 + 57, SE1, 0 );

--目からビーム
SE2 = playSe( spep_0 + 38, 1134 );
setSeVolume( spep_0 + 38, 1154, 0 );
setSeVolume( spep_0 + 46, 1154, 10 );
setSeVolume( spep_0 + 47, 1154, 32 );
SE3 = playSe( spep_0 + 49, 1032 );
setSeVolume( spep_0 + 49, 1032, 40 );
SE4 = playSe( spep_0 + 51, 1177 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 68; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE0, 0 );
stopSe( SP_dodge - 12, SE1, 0 );
stopSe( SP_dodge - 12, SE2, 0 );
stopSe( SP_dodge - 12, SE3, 0 );
stopSe( SP_dodge - 12, SE4, 0 );

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

-- ** 書き文字エントリー ** --
ctbon = entryEffectLife( spep_0 -3 + 128,  10027, 16, 0x100, -1, 0, 12, 101.5 );  --ボンッ
setEffMoveKey( spep_0 -3 + 128, ctbon, 12, 101.5 , 0 );
setEffMoveKey( spep_0 -3 + 130, ctbon, 22, 161.5 , 0 );
setEffMoveKey( spep_0 -3 + 132, ctbon, 32, 221.5 , 0 );
setEffMoveKey( spep_0 -3 + 140, ctbon, 32, 221.5 , 0 );
setEffMoveKey( spep_0 -3 + 142, ctbon, 32, 231.5 , 0 );
setEffMoveKey( spep_0 -3 + 144, ctbon, 32, 241.4 , 0 );

setEffScaleKey( spep_0 -3 + 128, ctbon, 1, 1 );
setEffScaleKey( spep_0 -3 + 130, ctbon, 1.63, 1.63 );
setEffScaleKey( spep_0 -3 + 132, ctbon, 2.25, 2.25 );
setEffScaleKey( spep_0 -3 + 140, ctbon, 2.25, 2.25 );
setEffScaleKey( spep_0 -3 + 142, ctbon, 2.42, 2.42 );
setEffScaleKey( spep_0 -3 + 144, ctbon, 2.6, 2.6 );

setEffRotateKey( spep_0 -3 + 128, ctbon, 0 );
setEffRotateKey( spep_0 -3 + 144, ctbon, 0 );

setEffAlphaKey( spep_0 -3 + 128, ctbon, 255 );
setEffAlphaKey( spep_0 -3 + 140, ctbon, 255 );
setEffAlphaKey( spep_0 -3 + 142, ctbon, 128 );
setEffAlphaKey( spep_0 -3 + 144, ctbon, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 108, 1, 1 );
setDisp( spep_0 -3 + 166, 1, 0 );
changeAnime( spep_0 -3 + 108, 1, 104 );
changeAnime( spep_0 -3 + 128, 1, 108 );

setMoveKey( spep_0 -3 + 108, 1, -208, 147.4 , 0 );
setMoveKey( spep_0 -3 + 110, 1, -147.1, 82.4 , 0 );
setMoveKey( spep_0 -3 + 112, 1, -87.4, 19.6 , 0 );
setMoveKey( spep_0 -3 + 114, 1, -43.6, -26.5 , 0 );
setMoveKey( spep_0 -3 + 116, 1, -13.4, -58.3 , 0 );
setMoveKey( spep_0 -3 + 118, 1, 7.1, -79.9 , 0 );
setMoveKey( spep_0 -3 + 120, 1, 20.9, -94.4 , 0 );
setMoveKey( spep_0 -3 + 122, 1, 29.8, -103.9 , 0 );
setMoveKey( spep_0 -3 + 124, 1, 35.4, -109.7 , 0 );
setMoveKey( spep_0 -3 + 126, 1, 38.2, -112.7 , 0 );
setMoveKey( spep_0 -3 + 127, 1, 38.2, -112.7 , 0 );
setMoveKey( spep_0 -3 + 128, 1, 83.4, -128 , 0 );
setMoveKey( spep_0 -3 + 130, 1, 97.4, -137.6 , 0 );
setMoveKey( spep_0 -3 + 132, 1, 100.3, -135.6 , 0 );
setMoveKey( spep_0 -3 + 134, 1, 92, -151.9 , 0 );
setMoveKey( spep_0 -3 + 136, 1, 103.8, -137.9 , 0 );
setMoveKey( spep_0 -3 + 138, 1, 98.3, -127.1 , 0 );
setMoveKey( spep_0 -3 + 140, 1, 103.2, -127.7 , 0 );
setMoveKey( spep_0 -3 + 142, 1, 104.7, -140.6 , 0 );
setMoveKey( spep_0 -3 + 144, 1, 104.8, -142.2 , 0 );
setMoveKey( spep_0 -3 + 146, 1, 100.8, -139.7 , 0 );
setMoveKey( spep_0 -3 + 148, 1, 52.7, -125.2 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 296.7, -355 , 0 );
setMoveKey( spep_0 -3 + 152, 1, 587.5, -614.3 , 0 );
setMoveKey( spep_0 -3 + 154, 1, 752, -770.7 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 856.1, -871.6 , 0 );
setMoveKey( spep_0 -3 + 158, 1, 923.2, -932.5 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 961.8, -968.6 , 0 );
setMoveKey( spep_0 -3 + 162, 1, 981.3, -988.4 , 0 );
setMoveKey( spep_0 -3 + 164, 1, 992, -998.2 , 0 );
setMoveKey( spep_0 -3 + 166, 1, 996.3, -1001.6 , 0 );

setScaleKey( spep_0 -3 + 108, 1, 2.06, 2.06 );
setScaleKey( spep_0 -3 + 127, 1, 2.06, 2.06 );
setScaleKey( spep_0 -3 + 128, 1, 2.06, 2.06 );
setScaleKey( spep_0 -3 + 166, 1, 2.06, 2.06 );

setRotateKey( spep_0 -3 + 108, 1, 29.2 );
setRotateKey( spep_0 -3 + 110, 1, 31.6 );
setRotateKey( spep_0 -3 + 112, 1, 33.6 );
setRotateKey( spep_0 -3 + 114, 1, 35.1 );
setRotateKey( spep_0 -3 + 116, 1, 36.1 );
setRotateKey( spep_0 -3 + 118, 1, 36.8 );
setRotateKey( spep_0 -3 + 120, 1, 37.3 );
setRotateKey( spep_0 -3 + 122, 1, 37.6 );
setRotateKey( spep_0 -3 + 124, 1, 37.8 );
setRotateKey( spep_0 -3 + 126, 1, 37.9 );
setRotateKey( spep_0 -3 + 127, 1, 37.9 );
setRotateKey( spep_0 -3 + 128, 1, 37.9 );
setRotateKey( spep_0 -3 + 166, 1, 37.9 );

-- ** 音 ** --
--目からビーム
stopSe( spep_0 + 138, SE4, 0 );

--敵に当たる
playSe( spep_0 + 132, 1023 );
playSe( spep_0 + 132, 1025 );
setSeVolume( spep_0 + 132, 1025, 63 );

--敵が飛んでいく
SE5 = playSe( spep_0 + 162, 1121 );
setSeVolume( spep_0 + 162, 1121, 56 );
SE6 = playSe( spep_0 + 163, 1183 );

--腕を振り上げる
playSe( spep_0 + 138, 1168 );
setSeVolume( spep_0 + 138, 1168, 0 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 164;

------------------------------------------------------
-- 敵が地面に激突(86F)
------------------------------------------------------

-- ** エフェクト等 ** --
jimen = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --敵が地面に激突(ef_003)
setEffMoveKey( spep_1 + 0, jimen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, jimen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, jimen, -1.0, 1.0 );
setEffScaleKey( spep_1 + 86, jimen, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, jimen, 0 );
setEffRotateKey( spep_1 + 86, jimen, 0 );
setEffAlphaKey( spep_1 + 0, jimen, 255 );
setEffAlphaKey( spep_1 + 86, jimen, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 28, 1, 0 );
changeAnime( spep_1 + 0, 1, 105 );

setMoveKey( spep_1 + 0, 1, 31.7, -202.7 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 21.8, -139 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 15.5, -98.1 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 11, -69.6 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 9.5, -69.5 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 8.2, -69.5 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 7.1, -69.5 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 6.2, -69.5 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 5.5, -69.4 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 4.8, -69.4 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 4.4, -69.4 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 4.1, -69.4 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 3.9, -69.4 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 3.9, -69.4 , 0 );

setScaleKey( spep_1 + 0, 1, 3.93, 3.93 );
setScaleKey( spep_1 -3 + 4, 1, 2.48, 2.48 );
setScaleKey( spep_1 -3 + 6, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 8, 1, 0.89, 0.89 );
setScaleKey( spep_1 -3 + 10, 1, 0.77, 0.77 );
setScaleKey( spep_1 -3 + 12, 1, 0.67, 0.67 );
setScaleKey( spep_1 -3 + 14, 1, 0.58, 0.58 );
setScaleKey( spep_1 -3 + 16, 1, 0.5, 0.5 );
setScaleKey( spep_1 -3 + 18, 1, 0.44, 0.44 );
setScaleKey( spep_1 -3 + 20, 1, 0.39, 0.39 );
setScaleKey( spep_1 -3 + 22, 1, 0.35, 0.35 );
setScaleKey( spep_1 -3 + 24, 1, 0.33, 0.33 );
setScaleKey( spep_1 -3 + 26, 1, 0.32, 0.32 );
setScaleKey( spep_1 -3 + 28, 1, 0.32, 0.32 );

setRotateKey( spep_1 + 0, 1, 9.7 );
setRotateKey( spep_1 -3 + 4, 1, 9.6 );
setRotateKey( spep_1 -3 + 12, 1, 9.6 );
setRotateKey( spep_1 -3 + 14, 1, 9.7 );
setRotateKey( spep_1 -3 + 28, 1, 9.7 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 88, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--敵が飛んでいく
stopSe( spep_1 + 58, SE5, 0 );
stopSe( spep_1 + 58, SE6, 0 );

--地面に衝突
playSe( spep_1 + 35, 1159 );
setSeVolume( spep_1 + 35, 1159, 79 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 86;

------------------------------------------------------
-- 気だめ〜ガッツポーズ(336F)
------------------------------------------------------

-- ** エフェクト等 ** --
kidame = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --気だめ〜ガッツポーズ(ef_004)
setEffMoveKey( spep_2 + 0, kidame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 336, kidame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kidame, -1.0, 1.0 );
setEffScaleKey( spep_2 + 336, kidame, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kidame, 0 );
setEffRotateKey( spep_2 + 336, kidame, 0 );
setEffAlphaKey( spep_2 + 0, kidame, 255 );
setEffAlphaKey( spep_2 + 336, kidame, 255 );

spep_x = spep_2 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 9.2 -30, 385.2); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, 9.2 -30, 385.2 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 9.2 -30, 385.2 , 0 );

setEffScaleKey( spep_x + 16, ctgogo, -1.00 -0.3, 1.00 +0.3 );
setEffScaleKey( spep_x + 84, ctgogo, -1.00 -0.3, 1.00 +0.3 );

setEffRotateKey( spep_x + 16, ctgogo, -12.5 );
setEffRotateKey( spep_x + 84, ctgogo, -12.5 );

setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 76, ctgogo, 255 );
setEffAlphaKey( spep_x + 78, ctgogo, 191 );
setEffAlphaKey( spep_x + 80, ctgogo, 128 );
setEffAlphaKey( spep_x + 82, ctgogo, 64 );
setEffAlphaKey( spep_x + 84, ctgogo, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 338, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

--腕を振り上げる
setSeVolume( spep_2 + 14, 1168, 10 );
setSeVolume( spep_2 + 16, 1168, 38 );
setSeVolume( spep_2 + 18, 1168, 79 );

playSe( spep_2 + 11, 1190 );
setSeVolume( spep_2 + 11, 1190, 10 );
setSeVolume( spep_2 + 14, 1190, 48 );
setSeVolume( spep_2 + 16, 1190, 71 );

playSe( spep_2 + 15, 1007 );
playSe( spep_2 + 20, 1041 );
setSeVolume( spep_2 + 20, 1041, 50 );
playSe( spep_2 + 23, 1013 );
playSe( spep_2 + 28, 1007 );
setSeVolume( spep_2 + 28, 1007, 50 );

--目が光る
SE7 = playSe( spep_2 + 62, 1222 );
setSeVolume( spep_2 + 62, 1222, 0 );
setSeVolume( spep_2 + 109, 1222, 10 );
setSeVolume( spep_2 + 112, 1222, 48 );
setSeVolume( spep_2 + 114, 1222, 89 );
setSeVolume( spep_2 + 139, 1222, 89 );
setSeVolume( spep_2 + 144, 1222, 68 );
setSeVolume( spep_2 + 152, 1222, 56 );
setSeVolume( spep_2 + 158, 1222, 42 );
setSeVolume( spep_2 + 162, 1222, 28 );
setSeVolume( spep_2 + 170, 1222, 12 );
setSeVolume( spep_2 + 178, 1222, 0 );
stopSe( spep_2 + 178, SE7, 0 );

playSe( spep_2 + 99, 1026 );
setSeVolume( spep_2 + 99, 1026, 56 );

--腕を横に
SE8 = playSe( spep_2 + 82, 1116 );
stopSe( spep_2 + 91, SE8, 24 );
playSe( spep_2 + 74, 1004 );

--オーラ出る
playSe( spep_2 + 157, 1131 );
setSeVolume( spep_2 + 157, 1131, 79 );
playSe( spep_2 + 166, 1035 );
setSeVolume( spep_2 + 166, 1035, 71 );
SE9 = playSe( spep_2 + 166, 1214 );
stopSe( spep_2 + 280, SE9, 0 );

--ビリビリ
SE10 = playSe( spep_2 + 255, 1230 );
stopSe( spep_2 + 296, SE10, 20 );
playSe( spep_2 + 255, 1231 );
setSeVolume( spep_2 + 255, 1231, 141 );
playSe( spep_2 + 255, 1038 );
SE11 = playSe( spep_2 + 277, 1147 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 336;

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

--ビリビリ
stopSe( spep_3 + 5, SE11, 0 );

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_4 = spep_3 + 94;

------------------------------------------------------
-- 気弾投げ〜着弾(326F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 );  --気弾投げ〜着弾(ef_005)
setEffMoveKey( spep_4 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_4 + 326, finish, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_4 + 326, finish, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish, 0 );
setEffRotateKey( spep_4 + 326, finish, 0 );
setEffAlphaKey( spep_4 + 0, finish, 255 );
setEffAlphaKey( spep_4 + 326, finish, 255 );

-- ** 書き文字エントリー ** --
ctgyua = entryEffectLife( spep_4 -3 + 60,  10032, 18, 0x100, -1, 0, -114.2, 249.8 );  --ギュアア
setEffMoveKey( spep_4 -3 + 60, ctgyua, -114.2, 249.8 , 0 );
setEffMoveKey( spep_4 -3 + 62, ctgyua, -55.1, 311.7 , 0 );
setEffMoveKey( spep_4 -3 + 64, ctgyua, 4.1, 373.7 , 0 );
setEffMoveKey( spep_4 -3 + 66, ctgyua, 16.1, 381.8 , 0 );
setEffMoveKey( spep_4 -3 + 68, ctgyua, 28.1, 389.8 , 0 );
setEffMoveKey( spep_4 -3 + 70, ctgyua, 40.1, 397.8 , 0 );
setEffMoveKey( spep_4 -3 + 72, ctgyua, 52.1, 405.8 , 0 );
setEffMoveKey( spep_4 -3 + 74, ctgyua, 64.1, 413.8 , 0 );
setEffMoveKey( spep_4 -3 + 76, ctgyua, 73.1, 423.8 , 0 );
setEffMoveKey( spep_4 -3 + 78, ctgyua, 82.1, 433.8 , 0 );

setEffScaleKey( spep_4 -3 + 60, ctgyua, 2.61, 2.61 );
setEffScaleKey( spep_4 -3 + 62, ctgyua, 3.59, 3.59 );
setEffScaleKey( spep_4 -3 + 64, ctgyua, 4.57, 4.57 );
setEffScaleKey( spep_4 -3 + 66, ctgyua, 4.64, 4.64 );
setEffScaleKey( spep_4 -3 + 68, ctgyua, 4.7, 4.7 );
setEffScaleKey( spep_4 -3 + 70, ctgyua, 4.77, 4.77 );
setEffScaleKey( spep_4 -3 + 72, ctgyua, 4.83, 4.83 );
setEffScaleKey( spep_4 -3 + 74, ctgyua, 4.9, 4.9 );
setEffScaleKey( spep_4 -3 + 76, ctgyua, 5, 5 );
setEffScaleKey( spep_4 -3 + 78, ctgyua, 5.1, 5.1 );

setEffRotateKey( spep_4 -3 + 60, ctgyua, 0 );
setEffRotateKey( spep_4 -3 + 78, ctgyua, 0 );

setEffAlphaKey( spep_4 -3 + 60, ctgyua, 255 );
setEffAlphaKey( spep_4 -3 + 74, ctgyua, 255 );
setEffAlphaKey( spep_4 -3 + 76, ctgyua, 128 );
setEffAlphaKey( spep_4 -3 + 78, ctgyua, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 326, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--振りかぶる
SE12 = playSe( spep_4 + 1, 1116 );
stopSe( spep_4 + 26, SE12, 15 );

playSe( spep_4 + 1, 1182 );
setSeVolume( spep_4 + 1, 1182, 10 );
setSeVolume( spep_4 + 2, 1182, 32 );
setSeVolume( spep_4 + 4, 1182, 56 );
setSeVolume( spep_4 + 8, 1182, 88 );
setSeVolume( spep_4 + 12, 1182, 100 );

playSe( spep_4 + 11, 1004 );
setSeVolume( spep_4 + 11, 1004, 71 );

--気弾発射
playSe( spep_4 + 56, 1046 );
playSe( spep_4 + 57, 1146 );

--爆発
playSe( spep_4 + 116, 1017 );
setSeVolume( spep_4 + 116, 1017, 63 );
playSe( spep_4 + 133, 1033 );
setSeVolume( spep_4 + 133, 1033, 71 );

playSe( spep_4 + 147, 1024 );
playSe( spep_4 + 207, 1159 );

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 220 );
endPhase( spep_4 + 324 );

end