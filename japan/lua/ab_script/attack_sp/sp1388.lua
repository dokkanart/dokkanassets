--超サイヤ人ゴッドSSゴジータ_スターダストフォール

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
SP_01 = 154774; --溜め〜パンチ・手前
SP_02 = 154775; --溜め〜パンチ・奥
SP_03 = 154776; --接近〜連打〜追撃・手前
SP_04 = 154777; --接近〜連打〜追撃・奥
SP_05 = 154778; --構え、発射
SP_06 = 154779; --着弾・手前
SP_07 = 154780; --着弾・奥
--書き文字
ct_01 = 154783; --バギィッ
ct_02 = 154784; --ガガッ、ドガァッ
ct_03 = 154785; --ボウッ

--敵側
SP_01x = 154781; --溜め〜パンチ・手前
SP_05x = 154782; --構え、発射
--書き文字
ct_01x = 154786; --バギィッ
ct_03x = 154787; --ボウッ

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
-- 溜め〜パンチ(182F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tame_f = entryEffectLife( spep_0 + 0, SP_01, 182, 0x100, -1, 0, 0, 0 );  --溜め〜パンチ・手前(ef_001)
setEffMoveKey( spep_0 + 0, tame_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 182, tame_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 182, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_f, 0 );
setEffRotateKey( spep_0 + 182, tame_f, 0 );
setEffAlphaKey( spep_0 + 0, tame_f, 255 );
setEffAlphaKey( spep_0 + 181, tame_f, 255 );
setEffAlphaKey( spep_0 + 182, tame_f, 0 );

tame_b = entryEffectLife( spep_0 + 0, SP_02, 182, 0x80, -1, 0, 0, 0 );  --溜め〜パンチ・奥(ef_002)
setEffMoveKey( spep_0 + 0, tame_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 182, tame_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 182, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_b, 0 );
setEffRotateKey( spep_0 + 182, tame_b, 0 );
setEffAlphaKey( spep_0 + 0, tame_b, 255 );
setEffAlphaKey( spep_0 + 181, tame_b, 255 );
setEffAlphaKey( spep_0 + 182, tame_b, 0 );

spep_x = spep_0 + 4;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctbagi = entryEffect( spep_0 + 0, ct_01, 0x100, -1, 0, 0, 0 );  --バギィ
setEffMoveKey( spep_0 + 0, ctbagi, 0, 0 , 0 );
setEffMoveKey( spep_0 + 182, ctbagi, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, ctbagi, 1.0, 1.0 );
setEffScaleKey( spep_0 + 182, ctbagi, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, ctbagi, 0 );
setEffRotateKey( spep_0 + 182, ctbagi, 0 );
setEffAlphaKey( spep_0 + 0, ctbagi, 255 );
setEffAlphaKey( spep_0 + 182, ctbagi, 255 );

ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9 +70, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9 +70, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9 +70, 515.5 , 0 );

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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 184, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

--気溜め
playSe( spep_0 + 4, 1035 );
setSeVolume( spep_0 + 4, 1035, 110 );
playSe( spep_0 + 4, 1024 );
setSeVolume( spep_0 + 4, 1024, 89 );
playSe( spep_0 + 4, 9 );
setSeVolume( spep_0 + 4, 9, 99 );

--前方ダッシュ
SE0 = playSe( spep_0 + 75, 1121 );
setSeVolume( spep_0 + 75, 1121, 0 );
setSeVolume( spep_0 + 90, 1121, 0 );
setSeVolume( spep_0 + 92, 1121, 70 );
setSeVolume( spep_0 + 94, 1121, 136 );
setSeVolume( spep_0 + 139, 1121, 0 );
stopSe( spep_0 + 139, SE0, 0 );

SE1 = playSe( spep_0 + 87, 44 );
setSeVolume( spep_0 + 87, 44, 99 );

SE2 = playSe( spep_0 + 93, 1182 );
setSeVolume( spep_0 + 93, 1182, 224 );
setSeVolume( spep_0 + 104, 1182, 224 );
setSeVolume( spep_0 + 112, 1182, 100 );

SE3 = playSe( spep_0 + 93, 1190 );
setSeVolume( spep_0 + 111, 1190, 100 );
setSeVolume( spep_0 + 116, 1190, 90 );
setSeVolume( spep_0 + 118, 1190, 80 );
setSeVolume( spep_0 + 120, 1190, 70 );
setSeVolume( spep_0 + 122, 1190, 60 );
setSeVolume( spep_0 + 124, 1190, 50 );
setSeVolume( spep_0 + 126, 1190, 30 );
setSeVolume( spep_0 + 128, 1190, 0 );
stopSe( spep_0 + 128, SE3, 0 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 106; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe(SP_dodge - 12, SE0, 0 );
stopSe(SP_dodge - 12, SE1, 0 );
stopSe(SP_dodge - 12, SE2, 0 );
stopSe(SP_dodge - 12, SE3, 0 );

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

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 128, 1, 1 );
changeAnime( spep_0 -3 + 128, 1, 104 );
changeAnime( spep_0 -3 + 130, 1, 107 );
changeAnime( spep_0 -3 + 160, 1, 108 );
changeAnime( spep_0 -3 + 170, 1, 106 );

setMoveKey( spep_0 -3 + 128, 1, 254.3, -206.5 , 0 );
setMoveKey( spep_0 -3 + 129, 1, 254.3, -206.5 , 0 );
setMoveKey( spep_0 -3 + 130, 1, 149.1, -216.7 , 0 );
setMoveKey( spep_0 -3 + 132, 1, 149.1, -217 , 0 );
setMoveKey( spep_0 -3 + 134, 1, 149.1, -217.3 , 0 );
setMoveKey( spep_0 -3 + 136, 1, 151.7, -217.5 , 0 );
setMoveKey( spep_0 -3 + 138, 1, 156.9, -212.6 , 0 );
setMoveKey( spep_0 -3 + 140, 1, 156.9, -205.1 , 0 );
setMoveKey( spep_0 -3 + 142, 1, 156.9, -205.4 , 0 );
setMoveKey( spep_0 -3 + 144, 1, 151.7, -197.9 , 0 );
setMoveKey( spep_0 -3 + 146, 1, 154.3, -218.9 , 0 );
setMoveKey( spep_0 -3 + 148, 1, 169.9, -240 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 133.5, -227.3 , 0 );
setMoveKey( spep_0 -3 + 152, 1, 159.5, -222.4 , 0 );
setMoveKey( spep_0 -3 + 154, 1, 169.9, -220.1 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 169.9, -220.3 , 0 );
setMoveKey( spep_0 -3 + 158, 1, 169.9, -225.8 , 0 );
setMoveKey( spep_0 -3 + 159, 1, 169.9, -225.8 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 297, -232.4 , 0 );
setMoveKey( spep_0 -3 + 162, 1, 237.6, -131.3 , 0 );
setMoveKey( spep_0 -3 + 164, 1, 220.9, -103.1 , 0 );
setMoveKey( spep_0 -3 + 166, 1, 211.1, -86.4 , 0 );
setMoveKey( spep_0 -3 + 168, 1, 230.7, -54.7 , 0 );
setMoveKey( spep_0 -3 + 169, 1, 230.7, -54.7 , 0 );
setMoveKey( spep_0 -3 + 170, 1, 226.4, -47.4 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 213.1, -34.7 , 0 );
setMoveKey( spep_0 -3 + 174, 1, 211.2, -31.4 , 0 );
setMoveKey( spep_0 -3 + 176, 1, 210, -29.4 , 0 );
setMoveKey( spep_0 -3 + 178, 1, 219.7, -23 , 0 );
setMoveKey( spep_0 -3 + 180, 1, 203.8, -32.8 , 0 );
setMoveKey( spep_0 -3 + 182, 1, 203.7, -32.6 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 203.6, -53.4 , 0 );

setScaleKey( spep_0 -3 + 128, 1, 4.26, 4.26 );
setScaleKey( spep_0 -3 + 129, 1, 4.26, 4.26 );
setScaleKey( spep_0 -3 + 130, 1, 1.65, 1.65 );
setScaleKey( spep_0 -3 + 159, 1, 1.65, 1.65 );
setScaleKey( spep_0 -3 + 160, 1, 3, 3 );
setScaleKey( spep_0 -3 + 162, 1, 1.86, 1.86 );
setScaleKey( spep_0 -3 + 164, 1, 1.53, 1.53 );
setScaleKey( spep_0 -3 + 166, 1, 1.35, 1.35 );
setScaleKey( spep_0 -3 + 168, 1, 1.22, 1.22 );
setScaleKey( spep_0 -3 + 169, 1, 1.22, 1.22 );
setScaleKey( spep_0 -3 + 170, 1, 1.14, 1.14 );
setScaleKey( spep_0 -3 + 172, 1, 1.08, 1.08 );
setScaleKey( spep_0 -3 + 174, 1, 1.05, 1.05 );
setScaleKey( spep_0 -3 + 176, 1, 1.02, 1.02 );
setScaleKey( spep_0 -3 + 178, 1, 1.01, 1.01 );
setScaleKey( spep_0 -3 + 180, 1, 1, 1 );
setScaleKey( spep_0 -3 + 184, 1, 1, 1 );

setRotateKey( spep_0 -3 + 128, 1, 0 );
setRotateKey( spep_0 -3 + 129, 1, 0 );
setRotateKey( spep_0 -3 + 130, 1, -112.5 );
setRotateKey( spep_0 -3 + 132, 1, -112.4 );
setRotateKey( spep_0 -3 + 134, 1, -112.4 );
setRotateKey( spep_0 -3 + 136, 1, -112.3 );
setRotateKey( spep_0 -3 + 138, 1, -112.3 );
setRotateKey( spep_0 -3 + 140, 1, -112.2 );
setRotateKey( spep_0 -3 + 142, 1, -112.2 );
setRotateKey( spep_0 -3 + 144, 1, -112.1 );
setRotateKey( spep_0 -3 + 146, 1, -112.1 );
setRotateKey( spep_0 -3 + 148, 1, -112 );
setRotateKey( spep_0 -3 + 150, 1, -112 );
setRotateKey( spep_0 -3 + 152, 1, -111.9 );
setRotateKey( spep_0 -3 + 154, 1, -111.9 );
setRotateKey( spep_0 -3 + 156, 1, -111.8 );
setRotateKey( spep_0 -3 + 159, 1, -111.8 );
setRotateKey( spep_0 -3 + 160, 1, -11.5 );
setRotateKey( spep_0 -3 + 162, 1, -25.5 );
setRotateKey( spep_0 -3 + 164, 1, -29.4 );
setRotateKey( spep_0 -3 + 166, 1, -31.8 );
setRotateKey( spep_0 -3 + 168, 1, -8.6 );
setRotateKey( spep_0 -3 + 169, 1, -8.6 );
setRotateKey( spep_0 -3 + 170, 1, -34.3 );
setRotateKey( spep_0 -3 + 172, 1, -35 );
setRotateKey( spep_0 -3 + 174, 1, -35.4 );
setRotateKey( spep_0 -3 + 176, 1, -35.7 );
setRotateKey( spep_0 -3 + 178, 1, -35.9 );
setRotateKey( spep_0 -3 + 180, 1, -35.9 );
setRotateKey( spep_0 -3 + 182, 1, -36 );
setRotateKey( spep_0 -3 + 184, 1, -36 );

-- ** 音 ** --
--初撃パンチ
SE4 = playSe( spep_0 + 93, 1126 );
setSeVolume( spep_0 + 93, 1126, 0 );
setSeVolume( spep_0 + 126, 1126, 0 );
setSeVolume( spep_0 + 128, 1126, 10 );
setSeVolume( spep_0 + 130, 1126, 18 );
setSeVolume( spep_0 + 132, 1126, 26 );
setSeVolume( spep_0 + 159, 1126, 26 );
setSeVolume( spep_0 + 170, 1126, 10 );

playSe( spep_0 + 112, 1189 );
setSeVolume( spep_0 + 112, 1189, 122 );

playSe( spep_0 + 113, 22 );
setSeVolume( spep_0 + 113, 22, 0 );
setSeVolume( spep_0 + 126, 22, 0 );
setSeVolume( spep_0 + 128, 22, 30 );
setSeVolume( spep_0 + 130, 22, 60 );
setSeVolume( spep_0 + 131, 22, 89 );

playSe( spep_0 + 118, 1120 );
setSeVolume( spep_0 + 118, 1120, 50 );

SE5 = playSe( spep_0 + 118, 1190 );
setSeVolume( spep_0 + 118, 1190, 122 );
setSeVolume( spep_0 + 136, 1190, 122 );
setSeVolume( spep_0 + 150, 1190, 100 );
setSeVolume( spep_0 + 160, 1190, 70 );
setSeVolume( spep_0 + 170, 1190, 30 );
setSeVolume( spep_0 + 182, 1190, 10 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 182;

------------------------------------------------------
-- 接近〜連打〜追撃(308F)
------------------------------------------------------

-- ** エフェクト等 ** --
attack_f = entryEffectLife( spep_1 + 0, SP_03, 308, 0x100, -1, 0, 0, 0, 100 );  --接近〜連打〜追撃・手前(ef_003)
setEffMoveKey( spep_1 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 308, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 308, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, attack_f, 0 );
setEffRotateKey( spep_1 + 308, attack_f, 0 );
setEffAlphaKey( spep_1 + 0, attack_f, 255 );
setEffAlphaKey( spep_1 + 308, attack_f, 255 );

attack_b = entryEffectLife( spep_1 + 0, SP_04, 308, 0x80, -1, 0, 0, 0 );  --接近〜連打〜追撃・奥(ef_004)
setEffMoveKey( spep_1 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 308, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 308, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, attack_b, 0 );
setEffRotateKey( spep_1 + 308, attack_b, 0 );
setEffAlphaKey( spep_1 + 0, attack_b, 255 );
setEffAlphaKey( spep_1 + 308, attack_b, 255 );

-- ** 書き文字エントリー ** --
ctdoga = entryEffect( spep_1 + 0 -6, ct_02, 0x100, -1, 0, 0, 0, 110 );  --ガガッ、ドガァ
setEffMoveKey( spep_1 + 0 -6, ctdoga, 0, 0 , 0 );
setEffMoveKey( spep_1 + 308 -6, ctdoga, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0 -6, ctdoga, 1.0, 1.0 );
setEffScaleKey( spep_1 + 308 -6, ctdoga, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0 -6, ctdoga, 0 );
setEffRotateKey( spep_1 + 308 -6, ctdoga, 0 );
setEffAlphaKey( spep_1 + 0 -6, ctdoga, 255 );
setEffAlphaKey( spep_1 + 308 -6, ctdoga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 190, 1, 0 );
setDisp( spep_1 -3 + 208, 1, 1 );
setDisp( spep_1 -3 + 270, 1, 0 );
changeAnime( spep_1 + 0, 1, 107 );
changeAnime( spep_1 -3 + 30, 1, 108 );
changeAnime( spep_1 -3 + 40, 1, 106 );
changeAnime( spep_1 -3 + 64, 1, 108 );
changeAnime( spep_1 -3 + 84, 1, 105 );
changeAnime( spep_1 -3 + 152, 1, 108 );
changeAnime( spep_1 -3 + 170, 1, 107 );
changeAnime( spep_1 -3 + 208, 1, 106 );
changeAnime( spep_1 -3 + 250, 1, 108 );

setMoveKey( spep_1 + 0, 1, -19.8, -308.7 , 0 );
setMoveKey( spep_1 -3 + 4, 1, -17.8, -307.2 , 0 );
setMoveKey( spep_1 -3 + 6, 1, -14.5, -304.8 , 0 );
setMoveKey( spep_1 -3 + 8, 1, -9.8, -317 , 0 );
setMoveKey( spep_1 -3 + 10, 1, -3.8, -312.6 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 11.3, -273.4 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 17.4, -282.6 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 26.1, -276.3 , 0 );
setMoveKey( spep_1 -3 + 18, 1, -5.5, -252.7 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 26.5, -263.9 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 41.5, -244.9 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 39.7, -250.2 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 41.7, -248.7 , 0 );
setMoveKey( spep_1 -3 + 29, 1, 42.3, -248.3 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 45.1, 21 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 43.4, 19.3 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 38.4, 14.3 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 33.3, 9.2 , 0 );
setMoveKey( spep_1 -3 + 39, 1, 31.6, 7.5 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 61.6, 103.6 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 56, 49.4 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 58.2, 47.2 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 60.4, 45 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 31.4, 19.4 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 33.6, 17.2 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 35.8, -11 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 51, 72.6 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 53.2, 70.4 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 55.4, 99.7 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 57.6, 97.5 , 0 );
setMoveKey( spep_1 -3 + 63, 1, 59.8, 116.3 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 179.6, 115.3 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 184.9, 122.5 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 217.6, 127.2 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 244.6, 131.2 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 241.6, 98.1 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 268.5, 110 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 273.6, 110.8 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 255.1, 111.1 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 277.1, 111.3 , 0 );
setMoveKey( spep_1 -3 + 83, 1, 277.3, 111.3 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 277.3, 111.3 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 276.9, 111.6 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 309.6, 83.1 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 307.7, 84.7 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 304.7, 87.4 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 300.3, 91.3 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 294, 96.9 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 285.6, 104.2 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 274.9, 113.7 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 264.2, 123.1 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 255.9, 130.5 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 249.6, 136 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 245.1, 140 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 242, 142.6 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 240.2, 144.2 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 239.3, 145.1 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 238.9, 145.4 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 238.9, 145.4 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 238.7, 145.1 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 238.4, 144.8 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 238.2, 144.4 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 237.9, 144.1 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 237.6, 143.7 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 237.3, 143.3 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 237, 142.9 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 236.7, 142.4 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 236.3, 142 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 236, 141.5 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 235.6, 141 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 235.2, 140.4 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 234.8, 139.9 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 234.4, 139.3 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 234, 138.8 , 0 );
setMoveKey( spep_1 -3 + 151, 1, 233.5, 138.2 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 233.1, 137.8 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 233.1, 137.3 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 233.1, 135.5 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 233.1, 131.9 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 233.1, 126 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 233.1, 116.5 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 233, 102.3 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 233, 86.4 , 0 );
setMoveKey( spep_1 -3 + 169, 1, 233, 80.7 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 78.5, 3.4 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 51.2, -2.7 , 0 );
setMoveKey( spep_1 -3 + 174, 1, 118.5, -19.2 , 0 );
setMoveKey( spep_1 -3 + 176, 1, 91.3, -45.9 , 0 );
setMoveKey( spep_1 -3 + 178, 1, 110.3, -36.5 , 0 );
setMoveKey( spep_1 -3 + 180, 1, 110.5, -35 , 0 );
setMoveKey( spep_1 -3 + 182, 1, 94.1, -32.9 , 0 );
setMoveKey( spep_1 -3 + 184, 1, 94.6, -29.6 , 0 );
setMoveKey( spep_1 -3 + 186, 1, 95.4, -24.4 , 0 );
setMoveKey( spep_1 -3 + 189, 1, 97.4, -11.7 , 0 );
setMoveKey( spep_1 -3 + 190, 1, 97.4, -11.7 , 0 );
setMoveKey( spep_1 -3 + 208, 1, 226.9, 3.7 , 0 );
setMoveKey( spep_1 -3 + 210, 1, 226.8, 3.4 , 0 );
setMoveKey( spep_1 -3 + 212, 1, 230, -2.5 , 0 );
setMoveKey( spep_1 -3 + 214, 1, 227.8, -7.8 , 0 );
setMoveKey( spep_1 -3 + 216, 1, 223.4, -18.2 , 0 );
setMoveKey( spep_1 -3 + 218, 1, 216.3, -35.2 , 0 );
setMoveKey( spep_1 -3 + 220, 1, 209.2, -52.3 , 0 );
setMoveKey( spep_1 -3 + 222, 1, 204.9, -62.6 , 0 );
setMoveKey( spep_1 -3 + 224, 1, 202.7, -68 , 0 );
setMoveKey( spep_1 -3 + 226, 1, 201.9, -69.9 , 0 );
setMoveKey( spep_1 -3 + 228, 1, 201.7, -70.2 , 0 );
setMoveKey( spep_1 -3 + 230, 1, 172.7, -100.4 , 0 );
setMoveKey( spep_1 -3 + 232, 1, 169.9, -99.3 , 0 );
setMoveKey( spep_1 -3 + 234, 1, 165.2, -97.5 , 0 );
setMoveKey( spep_1 -3 + 236, 1, 158.5, -95 , 0 );
setMoveKey( spep_1 -3 + 238, 1, 149.8, -91.6 , 0 );
setMoveKey( spep_1 -3 + 240, 1, 138.8, -87.4 , 0 );
setMoveKey( spep_1 -3 + 242, 1, 124.9, -82.1 , 0 );
setMoveKey( spep_1 -3 + 244, 1, 107.5, -75.4 , 0 );
setMoveKey( spep_1 -3 + 246, 1, 85.2, -66.9 , 0 );
setMoveKey( spep_1 -3 + 248, 1, 54.3, -55 , 0 );
setMoveKey( spep_1 -3 + 249, 1, 54.3, -55 , 0 );
setMoveKey( spep_1 -3 + 250, 1, -67.1, -32.3 , 0 );
setMoveKey( spep_1 -3 + 252, 1, -73.4, -61.7 , 0 );
setMoveKey( spep_1 -3 + 254, 1, -46.1, -19.7 , 0 );
setMoveKey( spep_1 -3 + 256, 1, -67.1, -44.9 , 0 );
setMoveKey( spep_1 -3 + 258, 1, -8.3, -9.2 , 0 );
setMoveKey( spep_1 -3 + 260, 1, -8.3, -9.2 , 0 );
setMoveKey( spep_1 -3 + 262, 1, -23, -26 , 0 );
setMoveKey( spep_1 -3 + 264, 1, -45.3, -173.9 , 0 );
setMoveKey( spep_1 -3 + 266, 1, -59.9, -238.3 , 0 );
setMoveKey( spep_1 -3 + 268, 1, -103.7, -368.7 , 0 );
setMoveKey( spep_1 -3 + 270, 1, -103.7, -368.7 , 0 );

setScaleKey( spep_1 + 0, 1, 2.4, 2.4 );
setScaleKey( spep_1 -3 + 4, 1, 2.39, 2.39 );
setScaleKey( spep_1 -3 + 6, 1, 2.39, 2.39 );
setScaleKey( spep_1 -3 + 8, 1, 2.38, 2.38 );
setScaleKey( spep_1 -3 + 10, 1, 2.37, 2.37 );
setScaleKey( spep_1 -3 + 12, 1, 2.36, 2.36 );
setScaleKey( spep_1 -3 + 14, 1, 2.35, 2.35 );
setScaleKey( spep_1 -3 + 16, 1, 2.34, 2.34 );
setScaleKey( spep_1 -3 + 18, 1, 2.33, 2.33 );
setScaleKey( spep_1 -3 + 20, 1, 2.32, 2.32 );
setScaleKey( spep_1 -3 + 22, 1, 2.31, 2.31 );
setScaleKey( spep_1 -3 + 24, 1, 2.3, 2.3 );
setScaleKey( spep_1 -3 + 29, 1, 2.3, 2.3 );
setScaleKey( spep_1 -3 + 30, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 64, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 66, 1, 1.14, 1.14 );
setScaleKey( spep_1 -3 + 68, 1, 0.8, 0.8 );
setScaleKey( spep_1 -3 + 70, 1, 0.52, 0.52 );
setScaleKey( spep_1 -3 + 72, 1, 0.34, 0.34 );
setScaleKey( spep_1 -3 + 74, 1, 0.23, 0.23 );
setScaleKey( spep_1 -3 + 76, 1, 0.18, 0.18 );
setScaleKey( spep_1 -3 + 78, 1, 0.15, 0.15 );
setScaleKey( spep_1 -3 + 80, 1, 0.14, 0.14 );
setScaleKey( spep_1 -3 + 88, 1, 0.14, 0.14 );
setScaleKey( spep_1 -3 + 90, 1, 0.15, 0.15 );
setScaleKey( spep_1 -3 + 92, 1, 0.15, 0.15 );
setScaleKey( spep_1 -3 + 94, 1, 0.16, 0.16 );
setScaleKey( spep_1 -3 + 96, 1, 0.17, 0.17 );
setScaleKey( spep_1 -3 + 98, 1, 0.19, 0.19 );
setScaleKey( spep_1 -3 + 100, 1, 0.21, 0.21 );
setScaleKey( spep_1 -3 + 102, 1, 0.23, 0.23 );
setScaleKey( spep_1 -3 + 104, 1, 0.25, 0.25 );
setScaleKey( spep_1 -3 + 106, 1, 0.26, 0.26 );
setScaleKey( spep_1 -3 + 108, 1, 0.27, 0.27 );
setScaleKey( spep_1 -3 + 110, 1, 0.27, 0.27 );
setScaleKey( spep_1 -3 + 112, 1, 0.28, 0.28 );
setScaleKey( spep_1 -3 + 120, 1, 0.28, 0.28 );
setScaleKey( spep_1 -3 + 122, 1, 0.29, 0.29 );
setScaleKey( spep_1 -3 + 124, 1, 0.29, 0.29 );
setScaleKey( spep_1 -3 + 126, 1, 0.3, 0.3 );
setScaleKey( spep_1 -3 + 130, 1, 0.3, 0.3 );
setScaleKey( spep_1 -3 + 132, 1, 0.31, 0.31 );
setScaleKey( spep_1 -3 + 134, 1, 0.31, 0.31 );
setScaleKey( spep_1 -3 + 136, 1, 0.32, 0.32 );
setScaleKey( spep_1 -3 + 138, 1, 0.32, 0.32 );
setScaleKey( spep_1 -3 + 140, 1, 0.33, 0.33 );
setScaleKey( spep_1 -3 + 142, 1, 0.34, 0.34 );
setScaleKey( spep_1 -3 + 144, 1, 0.34, 0.34 );
setScaleKey( spep_1 -3 + 146, 1, 0.35, 0.35 );
setScaleKey( spep_1 -3 + 148, 1, 0.35, 0.35 );
setScaleKey( spep_1 -3 + 151, 1, 0.36, 0.36 );
setScaleKey( spep_1 -3 + 152, 1, 0.37, 0.37 );
setScaleKey( spep_1 -3 + 154, 1, 0.37, 0.37 );
setScaleKey( spep_1 -3 + 156, 1, 0.39, 0.39 );
setScaleKey( spep_1 -3 + 158, 1, 0.43, 0.43 );
setScaleKey( spep_1 -3 + 160, 1, 0.5, 0.5 );
setScaleKey( spep_1 -3 + 162, 1, 0.6, 0.6 );
setScaleKey( spep_1 -3 + 164, 1, 0.76, 0.76 );
setScaleKey( spep_1 -3 + 166, 1, 0.93, 0.93 );
setScaleKey( spep_1 -3 + 169, 1, 1, 1 );
setScaleKey( spep_1 -3 + 170, 1, 0.75, 0.75 );
setScaleKey( spep_1 -3 + 178, 1, 0.75, 0.75 );
setScaleKey( spep_1 -3 + 180, 1, 0.74, 0.74 );
setScaleKey( spep_1 -3 + 182, 1, 0.74, 0.74 );
setScaleKey( spep_1 -3 + 184, 1, 0.73, 0.73 );
setScaleKey( spep_1 -3 + 186, 1, 0.72, 0.72 );
setScaleKey( spep_1 -3 + 189, 1, 0.7, 0.7 );
setScaleKey( spep_1 -3 + 190, 1, 0.7, 0.7 );
setScaleKey( spep_1 -3 + 208, 1, 0.27, 0.27 );
setScaleKey( spep_1 -3 + 214, 1, 0.27, 0.27 );
setScaleKey( spep_1 -3 + 216, 1, 0.26, 0.26 );
setScaleKey( spep_1 -3 + 220, 1, 0.26, 0.26 );
setScaleKey( spep_1 -3 + 222, 1, 0.25, 0.25 );
setScaleKey( spep_1 -3 + 228, 1, 0.25, 0.25 );
setScaleKey( spep_1 -3 + 230, 1, 0.33, 0.33 );
setScaleKey( spep_1 -3 + 232, 1, 0.35, 0.35 );
setScaleKey( spep_1 -3 + 234, 1, 0.38, 0.38 );
setScaleKey( spep_1 -3 + 236, 1, 0.43, 0.43 );
setScaleKey( spep_1 -3 + 238, 1, 0.49, 0.49 );
setScaleKey( spep_1 -3 + 240, 1, 0.56, 0.56 );
setScaleKey( spep_1 -3 + 242, 1, 0.65, 0.65 );
setScaleKey( spep_1 -3 + 244, 1, 0.77, 0.77 );
setScaleKey( spep_1 -3 + 246, 1, 0.92, 0.92 );
setScaleKey( spep_1 -3 + 248, 1, 1.13, 1.13 );
setScaleKey( spep_1 -3 + 249, 1, 1.13, 1.13 );
setScaleKey( spep_1 -3 + 250, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 262, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 264, 1, 2, 2 );
setScaleKey( spep_1 -3 + 266, 1, 2.13, 2.13 );
setScaleKey( spep_1 -3 + 268, 1, 2.5, 2.5 );
setScaleKey( spep_1 -3 + 270, 1, 2.5, 2.5 );

setRotateKey( spep_1 + 0, 1, -94.8 );
setRotateKey( spep_1 -3 + 4, 1, -94.7 );
setRotateKey( spep_1 -3 + 6, 1, -94.6 );
setRotateKey( spep_1 -3 + 8, 1, -94.4 );
setRotateKey( spep_1 -3 + 10, 1, -94.2 );
setRotateKey( spep_1 -3 + 12, 1, -94 );
setRotateKey( spep_1 -3 + 14, 1, -93.6 );
setRotateKey( spep_1 -3 + 16, 1, -93.3 );
setRotateKey( spep_1 -3 + 18, 1, -93.1 );
setRotateKey( spep_1 -3 + 20, 1, -92.9 );
setRotateKey( spep_1 -3 + 22, 1, -92.7 );
setRotateKey( spep_1 -3 + 24, 1, -92.6 );
setRotateKey( spep_1 -3 + 26, 1, -92.5 );
setRotateKey( spep_1 -3 + 29, 1, -92.5 );
setRotateKey( spep_1 -3 + 30, 1, -13.5 );
setRotateKey( spep_1 -3 + 39, 1, -13.5 );
setRotateKey( spep_1 -3 + 40, 1, -37.9 );
setRotateKey( spep_1 -3 + 42, 1, -37.2 );
setRotateKey( spep_1 -3 + 44, 1, -36.5 );
setRotateKey( spep_1 -3 + 46, 1, -35.9 );
setRotateKey( spep_1 -3 + 48, 1, -35.2 );
setRotateKey( spep_1 -3 + 50, 1, -34.5 );
setRotateKey( spep_1 -3 + 52, 1, -33.8 );
setRotateKey( spep_1 -3 + 54, 1, -33.1 );
setRotateKey( spep_1 -3 + 56, 1, -32.4 );
setRotateKey( spep_1 -3 + 58, 1, -31.8 );
setRotateKey( spep_1 -3 + 60, 1, -31.1 );
setRotateKey( spep_1 -3 + 63, 1, -30.4 );
setRotateKey( spep_1 -3 + 64, 1, 0 );
setRotateKey( spep_1 -3 + 66, 1, 8.5 );
setRotateKey( spep_1 -3 + 68, 1, 16.4 );
setRotateKey( spep_1 -3 + 70, 1, 23 );
setRotateKey( spep_1 -3 + 72, 1, 27.4 );
setRotateKey( spep_1 -3 + 74, 1, 29.8 );
setRotateKey( spep_1 -3 + 76, 1, 31.1 );
setRotateKey( spep_1 -3 + 78, 1, 31.7 );
setRotateKey( spep_1 -3 + 80, 1, 31.9 );
setRotateKey( spep_1 -3 + 83, 1, 32 );
setRotateKey( spep_1 -3 + 90, 1, 32 );
setRotateKey( spep_1 -3 + 92, 1, 31.9 );
setRotateKey( spep_1 -3 + 94, 1, 31.9 );
setRotateKey( spep_1 -3 + 96, 1, 31.8 );
setRotateKey( spep_1 -3 + 98, 1, 31.8 );
setRotateKey( spep_1 -3 + 100, 1, 31.7 );
setRotateKey( spep_1 -3 + 102, 1, 31.5 );
setRotateKey( spep_1 -3 + 104, 1, 31.5 );
setRotateKey( spep_1 -3 + 106, 1, 31.4 );
setRotateKey( spep_1 -3 + 108, 1, 31.4 );
setRotateKey( spep_1 -3 + 110, 1, 31.3 );
setRotateKey( spep_1 -3 + 118, 1, 31.3 );
setRotateKey( spep_1 -3 + 120, 1, 29.5 );
setRotateKey( spep_1 -3 + 122, 1, 27.7 );
setRotateKey( spep_1 -3 + 124, 1, 25.7 );
setRotateKey( spep_1 -3 + 126, 1, 23.6 );
setRotateKey( spep_1 -3 + 128, 1, 21.5 );
setRotateKey( spep_1 -3 + 130, 1, 19.1 );
setRotateKey( spep_1 -3 + 132, 1, 16.7 );
setRotateKey( spep_1 -3 + 134, 1, 14.2 );
setRotateKey( spep_1 -3 + 136, 1, 11.5 );
setRotateKey( spep_1 -3 + 138, 1, 8.7 );
setRotateKey( spep_1 -3 + 140, 1, 5.8 );
setRotateKey( spep_1 -3 + 142, 1, 2.8 );
setRotateKey( spep_1 -3 + 144, 1, -0.3 );
setRotateKey( spep_1 -3 + 146, 1, -3.5 );
setRotateKey( spep_1 -3 + 148, 1, -6.9 );
setRotateKey( spep_1 -3 + 151, 1, -10.3 );
setRotateKey( spep_1 -3 + 152, 1, -13.9 );
setRotateKey( spep_1 -3 + 154, 1, -13.9 );
setRotateKey( spep_1 -3 + 156, 1, -13.6 );
setRotateKey( spep_1 -3 + 158, 1, -13.2 );
setRotateKey( spep_1 -3 + 160, 1, -12.5 );
setRotateKey( spep_1 -3 + 162, 1, -11.3 );
setRotateKey( spep_1 -3 + 164, 1, -9.6 );
setRotateKey( spep_1 -3 + 166, 1, -7.6 );
setRotateKey( spep_1 -3 + 169, 1, -6.9 );
setRotateKey( spep_1 -3 + 170, 1, -93.3 );
setRotateKey( spep_1 -3 + 172, 1, -93.3 );
setRotateKey( spep_1 -3 + 174, 1, -93.4 );
setRotateKey( spep_1 -3 + 176, 1, -93.6 );
setRotateKey( spep_1 -3 + 178, 1, -93.8 );
setRotateKey( spep_1 -3 + 180, 1, -94.2 );
setRotateKey( spep_1 -3 + 182, 1, -94.8 );
setRotateKey( spep_1 -3 + 184, 1, -95.7 );
setRotateKey( spep_1 -3 + 186, 1, -97.2 );
setRotateKey( spep_1 -3 + 189, 1, -100.8 );
setRotateKey( spep_1 -3 + 190, 1, -100.8 );
setRotateKey( spep_1 -3 + 208, 1, 0 );
setRotateKey( spep_1 -3 + 210, 1, -0.1 );
setRotateKey( spep_1 -3 + 212, 1, -0.7 );
setRotateKey( spep_1 -3 + 214, 1, -2.3 );
setRotateKey( spep_1 -3 + 216, 1, -5.5 );
setRotateKey( spep_1 -3 + 218, 1, -10.6 );
setRotateKey( spep_1 -3 + 220, 1, -15.8 );
setRotateKey( spep_1 -3 + 222, 1, -19 );
setRotateKey( spep_1 -3 + 224, 1, -20.6 );
setRotateKey( spep_1 -3 + 226, 1, -21.2 );
setRotateKey( spep_1 -3 + 228, 1, -21.3 );
setRotateKey( spep_1 -3 + 230, 1, -22.8 );
setRotateKey( spep_1 -3 + 232, 1, -23.2 );
setRotateKey( spep_1 -3 + 234, 1, -23.8 );
setRotateKey( spep_1 -3 + 236, 1, -24.6 );
setRotateKey( spep_1 -3 + 238, 1, -25.7 );
setRotateKey( spep_1 -3 + 240, 1, -27.2 );
setRotateKey( spep_1 -3 + 242, 1, -28.9 );
setRotateKey( spep_1 -3 + 244, 1, -31.2 );
setRotateKey( spep_1 -3 + 246, 1, -34 );
setRotateKey( spep_1 -3 + 248, 1, -38 );
setRotateKey( spep_1 -3 + 249, 1, -38 );
setRotateKey( spep_1 -3 + 250, 1, -45 );
setRotateKey( spep_1 -3 + 262, 1, -45 );
setRotateKey( spep_1 -3 + 264, 1, -70.2 );
setRotateKey( spep_1 -3 + 270, 1, -70.2 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 310, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--初撃パンチ
setSeVolume( spep_1 + 75, 1126, 0 );
stopSe( spep_1 + 75, SE4, 0 );

setSeVolume( spep_1 + 15, 1190, 0 );
stopSe( spep_1 + 15, SE5, 0 );

--瞬間移動
playSe( spep_1 + 6, 1109 );

--パンチ１
playSe( spep_1 + 29, 1208 );
setSeVolume( spep_1 + 29, 1208, 73 );
playSe( spep_1 + 33, 1189 );
SE6 = playSe( spep_1 + 39, 1010 );
stopSe( spep_1 + 51, SE6, 12 );
SE7 = playSe( spep_1 + 39, 1182 );
setSeVolume( spep_1 + 39, 1182, 151 );
setSeVolume( spep_1 + 56, 1182, 151 );
setSeVolume( spep_1 + 58, 1182, 90 );
setSeVolume( spep_1 + 60, 1182, 60 );
setSeVolume( spep_1 + 64, 1182, 30 );
setSeVolume( spep_1 +  67, 1182, 0 );
stopSe( spep_1 + 67, SE7, 0 );

--パンチ２
playSe( spep_1 + 68, 1187 );
playSe( spep_1 + 68, 1190 );

--敵が飛んでいく
SE8 = playSe( spep_1 + 96, 1183 );
setSeVolume( spep_1 +  96, 1183, 90 );
setSeVolume( spep_1 +  147, 1183, 90 );
setSeVolume( spep_1 +  150, 1183, 70 );
setSeVolume( spep_1 +  154, 1183, 50 );
setSeVolume( spep_1 +  160, 1183, 20 );
setSeVolume( spep_1 +  163, 1183, 0 );
stopSe( spep_1 + 163, SE8, 0 );

SE9 = playSe( spep_1 + 96, 1121 );
setSeVolume( spep_1 +  96, 1121, 90 );
setSeVolume( spep_1 +  153, 1121, 90 );
setSeVolume( spep_1 +  158, 1121, 80 );
setSeVolume( spep_1 +  162, 1121, 60 );
setSeVolume( spep_1 +  168, 1121, 40 );
setSeVolume( spep_1 +  172, 1121, 20 );
setSeVolume( spep_1 +  178, 1121, 0 );
stopSe( spep_1 + 178, SE9, 0 );

--パンチ３
playSe( spep_1 + 156, 1208 );
setSeVolume( spep_1 +  156, 1208, 90 );
playSe( spep_1 + 160, 1189 );
SE10 = playSe( spep_1 + 166, 1010 );
stopSe( spep_1 + 178, SE10, 8 );
SE11 = playSe( spep_1 + 166, 1182 );
stopSe( spep_1 + 183, SE11, 5 );

--パンチ４
playSe( spep_1 + 185, 1189 );
playSe( spep_1 + 189, 1010 );
SE12 = playSe( spep_1 + 191, 1010 );
stopSe( spep_1 + 203, SE12, 12 );
SE13 = playSe( spep_1 + 191, 1182 );
stopSe( spep_1 + 208, SE13, 11 );

--敵に近づく
SE14 = playSe( spep_1 + 211, 1182 );
setSeVolume( spep_1 +  211, 1182, 251 );
setSeVolume( spep_1 +  219, 1182, 251 );
setSeVolume( spep_1 +  220, 1182, 136 );
setSeVolume( spep_1 +  224, 1182, 130 );
setSeVolume( spep_1 +  230, 1182, 122 );
setSeVolume( spep_1 +  234, 1182, 116 );
setSeVolume( spep_1 +  238, 1182, 110 );
setSeVolume( spep_1 +  242, 1182, 100 );
setSeVolume( spep_1 +  246, 1182, 70 );
setSeVolume( spep_1 +  250, 1182, 50 );
setSeVolume( spep_1 +  254, 1182, 30 );
setSeVolume( spep_1 +  258, 1182, 10 );
setSeVolume( spep_1 +  260, 1182, 0 );
stopSe( spep_1 + 260, SE14, 0 );

SE15 = playSe( spep_1 + 211, 1183 );
setSeVolume( spep_1 +  211, 1183, 168 );
setSeVolume( spep_1 +  251, 1183, 168 );
setSeVolume( spep_1 +  254, 1183, 80 );
setSeVolume( spep_1 +  256, 1183, 40 );
setSeVolume( spep_1 +  258, 1183, 0 );
stopSe( spep_1 + 258, SE15, 0 );

--叩き落とし
playSe( spep_1 + 247, 1014 );
setSeVolume( spep_1 +  247, 1014, 81 );
playSe( spep_1 + 249, 1187 );
setSeVolume( spep_1 +  249, 1187, 81 );
playSe( spep_1 + 249, 1159 );
setSeVolume( spep_1 +  249, 1159, 81 );

--気弾溜め
SE16 = playSe( spep_1 + 266, 1204 );
setSeVolume( spep_1 +  266, 1204, 0 );
SE17 = playSe( spep_1 + 297, 1191 );
setSeVolume( spep_1 +  297, 1191, 0 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 308;

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

--気弾溜め
setSeVolume( spep_2 +  91, 1204, 0 );
setSeVolume( spep_2 +  94, 1204, 10 );

setSeVolume( spep_2 +  88, 1191, 0 );
setSeVolume( spep_2 +  94, 1191, 10 );

SE18 = playSe( spep_2 + 36, 1215 );
setSeVolume( spep_2 +  36, 1215, 0 );
setSeVolume( spep_2 +  87, 1215, 0 );
setSeVolume( spep_2 +  90, 1215, 50 );
setSeVolume( spep_2 +  91, 1215, 122 );

SE19 = playSe( spep_2 + 83, 1144 );
setSeVolume( spep_2 +  83, 1144, 38 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_3 = spep_2 + 94;

------------------------------------------------------
-- 構え、発射(88F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_3 + 0, SP_05, 88, 0x100, -1, 0, 0, 0 );  --構え、発射(ef_005)
setEffMoveKey( spep_3 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_3 + 88, hassha, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_3 + 88, hassha, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hassha, 0 );
setEffRotateKey( spep_3 + 88, hassha, 0 );
setEffAlphaKey( spep_3 + 0, hassha, 255 );
setEffAlphaKey( spep_3 + 87, hassha, 255 );
setEffAlphaKey( spep_3 + 88, hassha, 0 );

-- ** 書き文字エントリー ** --
ctbou = entryEffect( spep_3 + 0, ct_03, 0x100, -1, 0, 0, 0 );  --ボウッ
setEffMoveKey( spep_3 + 0, ctbou, 0, 0 , 0 );
setEffMoveKey( spep_3 + 88, ctbou, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, ctbou, 1.0, 1.0 );
setEffScaleKey( spep_3 + 88, ctbou, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, ctbou, 0 );
setEffRotateKey( spep_3 + 88, ctbou, 0 );
setEffAlphaKey( spep_3 + 0, ctbou, 255 );
setEffAlphaKey( spep_3 + 88, ctbou, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--気弾溜め
setSeVolume( spep_3 +  0, 1204, 50 );
setSeVolume( spep_3 +  3, 1204, 80 );
setSeVolume( spep_3 +  5, 1204, 122 );
stopSe( spep_3 + 81, SE16, 0 );

setSeVolume( spep_3 +  0, 1191, 50 );
setSeVolume( spep_3 +  3, 1191, 70 );
setSeVolume( spep_3 +  5, 1191, 110 );
stopSe( spep_3 + 81, SE17, 0 );

stopSe( spep_3 + 81, SE18, 0 );
stopSe( spep_3 + 81, SE19, 0 );

SE20 = playSe( spep_3 + 24, 17 );
stopSe( spep_3 + 81, SE20, 0 );

--気弾発射
playSe( spep_3 + 64, 1027 );
setSeVolume( spep_3 +  64, 1027, 89 );
playSe( spep_3 + 64, 1145 );
setSeVolume( spep_3 +  64, 1145, 81 );
playSe( spep_3 + 71, 1177 );
setSeVolume( spep_3 +  71, 1177, 73 );

--スターダストフォール
playSe( spep_3 + 84, 1016 );
setSeVolume( spep_3 +  84, 1016, 66 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 88;

------------------------------------------------------
-- 着弾(124F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --着弾・手前(ef_006)
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 124, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 124, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 124, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 124, finish_f, 255 );

finish_b = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --着弾・奥(ef_007)
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 124, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 124, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 124, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 124, finish_b, 255 );

-- **  敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 108 );
changeAnime( spep_4 -3 + 44, 1, 106 );
changeAnime( spep_4 -3 + 78, 1, 105 );

setMoveKey( spep_4 + 0, 1, 134.1, -116.2 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 163.2, -53.1 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 169.9, -42.3 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 187, -65.6 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 214.7, -24.8 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 229.9, -44 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 200.3, 13.9 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 194.8, 0.3 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 189, 16.9 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 168.7, -25.5 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 197.6, -10.3 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 156, -10.9 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -65.4, 60.4 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -140.5, 55.9 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -121.1, 43.7 , 0 );
setMoveKey( spep_4 -3 + 32, 1, -131.4, 64.7 , 0 );
setMoveKey( spep_4 -3 + 34, 1, -74.7, 61.6 , 0 );
setMoveKey( spep_4 -3 + 36, 1, -93.5, 93.7 , 0 );
setMoveKey( spep_4 -3 + 38, 1, -190.6, 172.4 , 0 );
setMoveKey( spep_4 -3 + 40, 1, -191.7, 178.2 , 0 );
setMoveKey( spep_4 -3 + 43, 1, -192.5, 182.1 , 0 );
setMoveKey( spep_4 -3 + 44, 1, -174.4, 158.1 , 0 );
setMoveKey( spep_4 -3 + 46, 1, -173.7, 183.5 , 0 );
setMoveKey( spep_4 -3 + 48, 1, -160.2, 168.2 , 0 );
setMoveKey( spep_4 -3 + 50, 1, -130.2, 186.9 , 0 );
setMoveKey( spep_4 -3 + 52, 1, -142.8, 155.3 , 0 );
setMoveKey( spep_4 -3 + 54, 1, -164, 179 , 0 );
setMoveKey( spep_4 -3 + 56, 1, -122.9, 153.7 , 0 );
setMoveKey( spep_4 -3 + 58, 1, -88.6, 139 , 0 );
setMoveKey( spep_4 -3 + 60, 1, -83.4, 135.5 , 0 );
setMoveKey( spep_4 -3 + 62, 1, -13.4, 87.8 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 52.8, -26.2 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 118, -68.2 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 98, -82.3 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 127.5, -111.1 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 139.8, -89.4 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 170.8, -80 , 0 );
setMoveKey( spep_4 -3 + 77, 1, 191.2, -125.2 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 178.8, -111.7 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 197.3, -93 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 212.1, -111.3 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 197.3, -96.1 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 193.6, -103.2 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 178.7, -80.3 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 174.8, -89.1 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 178.6, -82.5 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 178.5, -65.6 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 165.6, -76.6 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 163.6, -75 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 213.5, -91.5 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 178, -70.1 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 161.2, -78.8 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 196.1, -99.3 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 200.1, -76.4 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 197.7, -82.7 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 203.2, -71.4 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 214.1, -94.3 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 208.6, -86.1 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 208.6, -85.6 , 0 );
setMoveKey( spep_4 -3 + 120, 1, 208.4, -85.1 , 0 );
setMoveKey( spep_4 -3 + 122, 1, 208.4, -109.8 , 0 );
setMoveKey( spep_4 -3 + 124, 1, 208.4, -84.6 , 0 );
setMoveKey( spep_4 -3 + 126, 1, 208.1, -84.4 , 0 );

setScaleKey( spep_4 -3 + 0, 1, 2.48, 2.48 );
setScaleKey( spep_4 -3 + 2, 1, 2.45, 2.45 );
setScaleKey( spep_4 -3 + 4, 1, 2.36, 2.36 );
setScaleKey( spep_4 -3 + 6, 1, 2.21, 2.21 );
setScaleKey( spep_4 -3 + 8, 1, 2.06, 2.06 );
setScaleKey( spep_4 -3 + 10, 1, 1.97, 1.97 );
setScaleKey( spep_4 -3 + 12, 1, 1.94, 1.94 );
setScaleKey( spep_4 -3 + 14, 1, 1.93, 1.93 );
setScaleKey( spep_4 -3 + 16, 1, 1.92, 1.92 );
setScaleKey( spep_4 -3 + 18, 1, 1.91, 1.91 );
setScaleKey( spep_4 -3 + 20, 1, 1.88, 1.88 );
setScaleKey( spep_4 -3 + 22, 1, 1.83, 1.83 );
setScaleKey( spep_4 -3 + 24, 1, 1.67, 1.67 );
setScaleKey( spep_4 -3 + 26, 1, 1.26, 1.26 );
setScaleKey( spep_4 -3 + 28, 1, 1.03, 1.03 );
setScaleKey( spep_4 -3 + 30, 1, 0.94, 0.94 );
setScaleKey( spep_4 -3 + 32, 1, 0.89, 0.89 );
setScaleKey( spep_4 -3 + 34, 1, 0.84, 0.84 );
setScaleKey( spep_4 -3 + 36, 1, 0.81, 0.81 );
setScaleKey( spep_4 -3 + 38, 1, 0.79, 0.79 );
setScaleKey( spep_4 -3 + 40, 1, 0.78, 0.78 );
setScaleKey( spep_4 -3 + 43, 1, 0.77, 0.77 );
setScaleKey( spep_4 -3 + 44, 1, 0.76, 0.76 );
setScaleKey( spep_4 -3 + 50, 1, 0.76, 0.76 );
setScaleKey( spep_4 -3 + 52, 1, 0.75, 0.75 );
setScaleKey( spep_4 -3 + 54, 1, 0.75, 0.75 );
setScaleKey( spep_4 -3 + 56, 1, 0.73, 0.73 );
setScaleKey( spep_4 -3 + 58, 1, 0.72, 0.72 );
setScaleKey( spep_4 -3 + 60, 1, 0.71, 0.71 );
setScaleKey( spep_4 -3 + 62, 1, 0.68, 0.68 );
setScaleKey( spep_4 -3 + 64, 1, 0.62, 0.62 );
setScaleKey( spep_4 -3 + 66, 1, 0.57, 0.57 );
setScaleKey( spep_4 -3 + 68, 1, 0.55, 0.55 );
setScaleKey( spep_4 -3 + 70, 1, 0.54, 0.54 );
setScaleKey( spep_4 -3 + 72, 1, 0.5, 0.5 );
setScaleKey( spep_4 -3 + 74, 1, 0.45, 0.45 );
setScaleKey( spep_4 -3 + 77, 1, 0.41, 0.41 );
setScaleKey( spep_4 -3 + 78, 1, 0.37, 0.37 );
setScaleKey( spep_4 -3 + 80, 1, 0.38, 0.38 );
setScaleKey( spep_4 -3 + 82, 1, 0.38, 0.38 );
setScaleKey( spep_4 -3 + 84, 1, 0.39, 0.39 );
setScaleKey( spep_4 -3 + 86, 1, 0.41, 0.41 );
setScaleKey( spep_4 -3 + 88, 1, 0.42, 0.42 );
setScaleKey( spep_4 -3 + 90, 1, 0.44, 0.44 );
setScaleKey( spep_4 -3 + 92, 1, 0.48, 0.48 );
setScaleKey( spep_4 -3 + 94, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 96, 1, 0.54, 0.54 );
setScaleKey( spep_4 -3 + 98, 1, 0.59, 0.59 );
setScaleKey( spep_4 -3 + 100, 1, 0.67, 0.67 );
setScaleKey( spep_4 -3 + 102, 1, 0.77, 0.77 );
setScaleKey( spep_4 -3 + 104, 1, 0.89, 0.89 );
setScaleKey( spep_4 -3 + 106, 1, 1.04, 1.04 );
setScaleKey( spep_4 -3 + 108, 1, 1.16, 1.16 );
setScaleKey( spep_4 -3 + 110, 1, 1.23, 1.23 );
setScaleKey( spep_4 -3 + 112, 1, 1.29, 1.29 );
setScaleKey( spep_4 -3 + 114, 1, 1.33, 1.33 );
setScaleKey( spep_4 -3 + 116, 1, 1.36, 1.36 );
setScaleKey( spep_4 -3 + 118, 1, 1.37, 1.37 );
setScaleKey( spep_4 -3 + 120, 1, 1.39, 1.39 );
setScaleKey( spep_4 -3 + 122, 1, 1.39, 1.39 );
setScaleKey( spep_4 -3 + 124, 1, 1.4, 1.4 );
setScaleKey( spep_4 -3 + 126, 1, 1.4, 1.4 );

setRotateKey( spep_4 -3 + 0, 1, -20.5 );
setRotateKey( spep_4 -3 + 2, 1, -50.7 );
setRotateKey( spep_4 -3 + 4, 1, -56.3 );
setRotateKey( spep_4 -3 + 6, 1, -65.4 );
setRotateKey( spep_4 -3 + 8, 1, -74.6 );
setRotateKey( spep_4 -3 + 10, 1, -80.2 );
setRotateKey( spep_4 -3 + 12, 1, -82 );
setRotateKey( spep_4 -3 + 14, 1, -99.1 );
setRotateKey( spep_4 -3 + 16, 1, -98.9 );
setRotateKey( spep_4 -3 + 18, 1, -98.7 );
setRotateKey( spep_4 -3 + 20, 1, -98.3 );
setRotateKey( spep_4 -3 + 22, 1, -97.6 );
setRotateKey( spep_4 -3 + 24, 1, -95.6 );
setRotateKey( spep_4 -3 + 26, 1, -90.2 );
setRotateKey( spep_4 -3 + 28, 1, -49.4 );
setRotateKey( spep_4 -3 + 30, 1, -35.9 );
setRotateKey( spep_4 -3 + 32, 1, -30.5 );
setRotateKey( spep_4 -3 + 34, 1, -26.5 );
setRotateKey( spep_4 -3 + 36, 1, -23.6 );
setRotateKey( spep_4 -3 + 38, 1, -21.5 );
setRotateKey( spep_4 -3 + 40, 1, -20 );
setRotateKey( spep_4 -3 + 43, 1, -9.1 );
setRotateKey( spep_4 -3 + 44, 1, -34.1 );
setRotateKey( spep_4 -3 + 46, 1, -21.5 );
setRotateKey( spep_4 -3 + 48, 1, -21.4 );
setRotateKey( spep_4 -3 + 50, 1, -21 );
setRotateKey( spep_4 -3 + 52, 1, -20.6 );
setRotateKey( spep_4 -3 + 54, 1, -19.9 );
setRotateKey( spep_4 -3 + 56, 1, -19 );
setRotateKey( spep_4 -3 + 58, 1, -17.8 );
setRotateKey( spep_4 -3 + 60, 1, -15.9 );
setRotateKey( spep_4 -3 + 62, 1, -11.9 );
setRotateKey( spep_4 -3 + 64, 1, -3.8 );
setRotateKey( spep_4 -3 + 66, 1, 1.3 );
setRotateKey( spep_4 -3 + 68, 1, 4 );
setRotateKey( spep_4 -3 + 70, 1, 4.9 );
setRotateKey( spep_4 -3 + 72, 1, 17.7 );
setRotateKey( spep_4 -3 + 74, 1, 30.4 );
setRotateKey( spep_4 -3 + 77, 1, 38 );
setRotateKey( spep_4 -3 + 78, 1, 32.5 );
setRotateKey( spep_4 -3 + 80, 1, 32.3 );
setRotateKey( spep_4 -3 + 82, 1, 32.2 );
setRotateKey( spep_4 -3 + 84, 1, 31.9 );
setRotateKey( spep_4 -3 + 86, 1, 31.6 );
setRotateKey( spep_4 -3 + 88, 1, 31.3 );
setRotateKey( spep_4 -3 + 90, 1, 30.8 );
setRotateKey( spep_4 -3 + 92, 1, 30.2 );
setRotateKey( spep_4 -3 + 94, 1, 29.5 );
setRotateKey( spep_4 -3 + 96, 1, 28.6 );
setRotateKey( spep_4 -3 + 98, 1, 27.4 );
setRotateKey( spep_4 -3 + 100, 1, 25.9 );
setRotateKey( spep_4 -3 + 102, 1, 23.9 );
setRotateKey( spep_4 -3 + 104, 1, 21.1 );
setRotateKey( spep_4 -3 + 106, 1, 18 );
setRotateKey( spep_4 -3 + 108, 1, 15.5 );
setRotateKey( spep_4 -3 + 110, 1, 13.7 );
setRotateKey( spep_4 -3 + 112, 1, 12.5 );
setRotateKey( spep_4 -3 + 114, 1, 11.6 );
setRotateKey( spep_4 -3 + 116, 1, 11 );
setRotateKey( spep_4 -3 + 118, 1, 10.6 );
setRotateKey( spep_4 -3 + 120, 1, 10.3 );
setRotateKey( spep_4 -3 + 122, 1, 10.1 );
setRotateKey( spep_4 -3 + 124, 1, 10 );
setRotateKey( spep_4 -3 + 126, 1, 10 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 126, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--スターダストフォール
playSe( spep_4 + 0, 1016 );
setSeVolume( spep_4 +  0, 1016, 45 );
playSe( spep_4 + 2, 1016 );
setSeVolume( spep_4 +  2, 1016, 60 );
playSe( spep_4 + 4, 1016 );
setSeVolume( spep_4 +  4, 1016, 73 );
playSe( spep_4 + 8, 1016 );
setSeVolume( spep_4 +  8, 1016, 66 );
playSe( spep_4 + 12, 1016 );
setSeVolume( spep_4 +  12, 1016, 42 );
playSe( spep_4 + 14, 1016 );
setSeVolume( spep_4 +  14, 1016, 55 );
playSe( spep_4 + 16, 1016 );
setSeVolume( spep_4 +  16, 1016, 66 );
playSe( spep_4 + 20, 1016 );
setSeVolume( spep_4 +  20, 1016, 50 );
playSe( spep_4 + 24, 1016 );
setSeVolume( spep_4 +  24, 1016, 81 );
playSe( spep_4 + 26, 1016 );
setSeVolume( spep_4 +  26, 1016, 81 );
playSe( spep_4 + 28, 1016 );
setSeVolume( spep_4 +  28, 1016, 35 );
playSe( spep_4 + 32, 1016 );
setSeVolume( spep_4 +  32, 1016, 66 );
playSe( spep_4 + 36, 1016 );
setSeVolume( spep_4 +  36, 1016, 50 );
playSe( spep_4 + 38, 1016 );
setSeVolume( spep_4 +  38, 1016, 66 );
playSe( spep_4 + 40, 1016 );
setSeVolume( spep_4 +  40, 1016, 50 );
playSe( spep_4 + 44, 1016 );
setSeVolume( spep_4 +  44, 1016, 45 );
playSe( spep_4 + 48, 1016 );
setSeVolume( spep_4 +  48, 1016, 60 );
playSe( spep_4 + 50, 1016 );
setSeVolume( spep_4 +  50, 1016, 81 );
playSe( spep_4 + 52, 1016 );
setSeVolume( spep_4 +  52, 1016, 73 );
playSe( spep_4 + 56, 1016 );
setSeVolume( spep_4 +  56, 1016, 66 );
playSe( spep_4 + 60, 1016 );
setSeVolume( spep_4 +  60, 1016, 50 );
playSe( spep_4 + 62, 1016 );
setSeVolume( spep_4 +  62, 1016, 60 );
playSe( spep_4 + 64, 1016 );
setSeVolume( spep_4 +  64, 1016, 81 );
playSe( spep_4 + 68, 1016 );
setSeVolume( spep_4 +  68, 1016, 38 );
playSe( spep_4 + 72, 1016 );
setSeVolume( spep_4 +  72, 1016, 73 );
playSe( spep_4 + 74, 1016 );
setSeVolume( spep_4 +  74, 1016, 55 );
playSe( spep_4 + 76, 1016 );
setSeVolume( spep_4 +  76, 1016, 35 );
playSe( spep_4 + 80, 1016 );
setSeVolume( spep_4 +  80, 1016, 66 );
playSe( spep_4 + 84, 1016 );
setSeVolume( spep_4 +  84, 1016, 42 );
playSe( spep_4 + 86, 1016 );
setSeVolume( spep_4 +  86, 1016, 73 );
playSe( spep_4 + 88, 1016 );
setSeVolume( spep_4 +  88, 1016, 55 );
playSe( spep_4 + 92, 1016 );
setSeVolume( spep_4 +  92, 1016, 35 );
playSe( spep_4 + 96, 1016 );
setSeVolume( spep_4 +  96, 1016, 81 );
playSe( spep_4 + 98, 1016 );
setSeVolume( spep_4 +  98, 1016, 60 );
playSe( spep_4 + 100, 1016 );
setSeVolume( spep_4 +  100, 1016, 66 );
playSe( spep_4 + 104, 1016 );
setSeVolume( spep_4 +  104, 1016, 73 );
playSe( spep_4 + 108, 1016 );
setSeVolume( spep_4 +  108, 1016, 42 );
playSe( spep_4 + 110, 1016 );
setSeVolume( spep_4 +  110, 1016, 55 );
playSe( spep_4 + 112, 1016 );
setSeVolume( spep_4 +  112, 1016, 89 );
playSe( spep_4 + 116, 1016 );
setSeVolume( spep_4 +  116, 1016, 60 );

--爆発
SE21 = playSe( spep_4 + 9, 1023 );
setSeVolume( spep_4 +  9, 1023, 110 );
stopSe( spep_4 + 73, SE21, 0 );
SE22 = playSe( spep_4 + 37, 1159 );
setSeVolume( spep_4 +  37, 1159, 73 );
setSeVolume( spep_4 +  63, 1159, 73 );
setSeVolume( spep_4 +  68, 1159, 60 );
setSeVolume( spep_4 +  74, 1159, 54 );
setSeVolume( spep_4 +  82, 1159, 42 );
setSeVolume( spep_4 +  90, 1159, 38 );
setSeVolume( spep_4 +  98, 1159, 20 );
setSeVolume( spep_4 +  106, 1159, 10 );
setSeVolume( spep_4 +  113, 1159, 0 );
stopSe( spep_4 + 113, SE22, 0 );
SE23 = playSe( spep_4 + 67, 1023 );
stopSe( spep_4 + 82, SE23, 36 );

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 8 );
endPhase( spep_4 + 122 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 溜め〜パンチ(182F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tame_f = entryEffectLife( spep_0 + 0, SP_01x, 182, 0x100, -1, 0, 0, 0 );  --溜め〜パンチ・手前(ef_001)
setEffMoveKey( spep_0 + 0, tame_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 182, tame_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 182, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_f, 0 );
setEffRotateKey( spep_0 + 182, tame_f, 0 );
setEffAlphaKey( spep_0 + 0, tame_f, 255 );
setEffAlphaKey( spep_0 + 181, tame_f, 255 );
setEffAlphaKey( spep_0 + 182, tame_f, 0 );

tame_b = entryEffectLife( spep_0 + 0, SP_02, 182, 0x80, -1, 0, 0, 0 );  --溜め〜パンチ・奥(ef_002)
setEffMoveKey( spep_0 + 0, tame_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 182, tame_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 182, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_b, 0 );
setEffRotateKey( spep_0 + 182, tame_b, 0 );
setEffAlphaKey( spep_0 + 0, tame_b, 255 );
setEffAlphaKey( spep_0 + 181, tame_b, 255 );
setEffAlphaKey( spep_0 + 182, tame_b, 0 );

spep_x = spep_0 + 4;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctbagi = entryEffect( spep_0 + 0, ct_01x, 0x100, -1, 0, 0, 0 );  --バギィ
setEffMoveKey( spep_0 + 0, ctbagi, 0, 0 , 0 );
setEffMoveKey( spep_0 + 182, ctbagi, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, ctbagi, -1.0, 1.0 );
setEffScaleKey( spep_0 + 182, ctbagi, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, ctbagi, 0 );
setEffRotateKey( spep_0 + 182, ctbagi, 0 );
setEffAlphaKey( spep_0 + 0, ctbagi, 255 );
setEffAlphaKey( spep_0 + 182, ctbagi, 255 );

ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9 +70, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9 +70, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9 +70, 515.5 , 0 );

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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 184, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

--気溜め
playSe( spep_0 + 4, 1035 );
setSeVolume( spep_0 + 4, 1035, 110 );
playSe( spep_0 + 4, 1024 );
setSeVolume( spep_0 + 4, 1024, 89 );
playSe( spep_0 + 4, 9 );
setSeVolume( spep_0 + 4, 9, 99 );

--前方ダッシュ
SE0 = playSe( spep_0 + 75, 1121 );
setSeVolume( spep_0 + 75, 1121, 0 );
setSeVolume( spep_0 + 90, 1121, 0 );
setSeVolume( spep_0 + 92, 1121, 70 );
setSeVolume( spep_0 + 94, 1121, 136 );
setSeVolume( spep_0 + 139, 1121, 0 );
stopSe( spep_0 + 139, SE0, 0 );

SE1 = playSe( spep_0 + 87, 44 );
setSeVolume( spep_0 + 87, 44, 99 );

SE2 = playSe( spep_0 + 93, 1182 );
setSeVolume( spep_0 + 93, 1182, 224 );
setSeVolume( spep_0 + 104, 1182, 224 );
setSeVolume( spep_0 + 112, 1182, 100 );

SE3 = playSe( spep_0 + 93, 1190 );
setSeVolume( spep_0 + 111, 1190, 100 );
setSeVolume( spep_0 + 116, 1190, 90 );
setSeVolume( spep_0 + 118, 1190, 80 );
setSeVolume( spep_0 + 120, 1190, 70 );
setSeVolume( spep_0 + 122, 1190, 60 );
setSeVolume( spep_0 + 124, 1190, 50 );
setSeVolume( spep_0 + 126, 1190, 30 );
setSeVolume( spep_0 + 128, 1190, 0 );
stopSe( spep_0 + 128, SE3, 0 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 106; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe(SP_dodge - 12, SE0, 0 );
stopSe(SP_dodge - 12, SE1, 0 );
stopSe(SP_dodge - 12, SE2, 0 );
stopSe(SP_dodge - 12, SE3, 0 );

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

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 128, 1, 1 );
changeAnime( spep_0 -3 + 128, 1, 104 );
changeAnime( spep_0 -3 + 130, 1, 107 );
changeAnime( spep_0 -3 + 160, 1, 108 );
changeAnime( spep_0 -3 + 170, 1, 106 );

setMoveKey( spep_0 -3 + 128, 1, 254.3, -206.5 , 0 );
setMoveKey( spep_0 -3 + 129, 1, 254.3, -206.5 , 0 );
setMoveKey( spep_0 -3 + 130, 1, 149.1, -216.7 , 0 );
setMoveKey( spep_0 -3 + 132, 1, 149.1, -217 , 0 );
setMoveKey( spep_0 -3 + 134, 1, 149.1, -217.3 , 0 );
setMoveKey( spep_0 -3 + 136, 1, 151.7, -217.5 , 0 );
setMoveKey( spep_0 -3 + 138, 1, 156.9, -212.6 , 0 );
setMoveKey( spep_0 -3 + 140, 1, 156.9, -205.1 , 0 );
setMoveKey( spep_0 -3 + 142, 1, 156.9, -205.4 , 0 );
setMoveKey( spep_0 -3 + 144, 1, 151.7, -197.9 , 0 );
setMoveKey( spep_0 -3 + 146, 1, 154.3, -218.9 , 0 );
setMoveKey( spep_0 -3 + 148, 1, 169.9, -240 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 133.5, -227.3 , 0 );
setMoveKey( spep_0 -3 + 152, 1, 159.5, -222.4 , 0 );
setMoveKey( spep_0 -3 + 154, 1, 169.9, -220.1 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 169.9, -220.3 , 0 );
setMoveKey( spep_0 -3 + 158, 1, 169.9, -225.8 , 0 );
setMoveKey( spep_0 -3 + 159, 1, 169.9, -225.8 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 297, -232.4 , 0 );
setMoveKey( spep_0 -3 + 162, 1, 237.6, -131.3 , 0 );
setMoveKey( spep_0 -3 + 164, 1, 220.9, -103.1 , 0 );
setMoveKey( spep_0 -3 + 166, 1, 211.1, -86.4 , 0 );
setMoveKey( spep_0 -3 + 168, 1, 230.7, -54.7 , 0 );
setMoveKey( spep_0 -3 + 169, 1, 230.7, -54.7 , 0 );
setMoveKey( spep_0 -3 + 170, 1, 226.4, -47.4 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 213.1, -34.7 , 0 );
setMoveKey( spep_0 -3 + 174, 1, 211.2, -31.4 , 0 );
setMoveKey( spep_0 -3 + 176, 1, 210, -29.4 , 0 );
setMoveKey( spep_0 -3 + 178, 1, 219.7, -23 , 0 );
setMoveKey( spep_0 -3 + 180, 1, 203.8, -32.8 , 0 );
setMoveKey( spep_0 -3 + 182, 1, 203.7, -32.6 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 203.6, -53.4 , 0 );

setScaleKey( spep_0 -3 + 128, 1, 4.26, 4.26 );
setScaleKey( spep_0 -3 + 129, 1, 4.26, 4.26 );
setScaleKey( spep_0 -3 + 130, 1, 1.65, 1.65 );
setScaleKey( spep_0 -3 + 159, 1, 1.65, 1.65 );
setScaleKey( spep_0 -3 + 160, 1, 3, 3 );
setScaleKey( spep_0 -3 + 162, 1, 1.86, 1.86 );
setScaleKey( spep_0 -3 + 164, 1, 1.53, 1.53 );
setScaleKey( spep_0 -3 + 166, 1, 1.35, 1.35 );
setScaleKey( spep_0 -3 + 168, 1, 1.22, 1.22 );
setScaleKey( spep_0 -3 + 169, 1, 1.22, 1.22 );
setScaleKey( spep_0 -3 + 170, 1, 1.14, 1.14 );
setScaleKey( spep_0 -3 + 172, 1, 1.08, 1.08 );
setScaleKey( spep_0 -3 + 174, 1, 1.05, 1.05 );
setScaleKey( spep_0 -3 + 176, 1, 1.02, 1.02 );
setScaleKey( spep_0 -3 + 178, 1, 1.01, 1.01 );
setScaleKey( spep_0 -3 + 180, 1, 1, 1 );
setScaleKey( spep_0 -3 + 184, 1, 1, 1 );

setRotateKey( spep_0 -3 + 128, 1, 0 );
setRotateKey( spep_0 -3 + 129, 1, 0 );
setRotateKey( spep_0 -3 + 130, 1, -112.5 );
setRotateKey( spep_0 -3 + 132, 1, -112.4 );
setRotateKey( spep_0 -3 + 134, 1, -112.4 );
setRotateKey( spep_0 -3 + 136, 1, -112.3 );
setRotateKey( spep_0 -3 + 138, 1, -112.3 );
setRotateKey( spep_0 -3 + 140, 1, -112.2 );
setRotateKey( spep_0 -3 + 142, 1, -112.2 );
setRotateKey( spep_0 -3 + 144, 1, -112.1 );
setRotateKey( spep_0 -3 + 146, 1, -112.1 );
setRotateKey( spep_0 -3 + 148, 1, -112 );
setRotateKey( spep_0 -3 + 150, 1, -112 );
setRotateKey( spep_0 -3 + 152, 1, -111.9 );
setRotateKey( spep_0 -3 + 154, 1, -111.9 );
setRotateKey( spep_0 -3 + 156, 1, -111.8 );
setRotateKey( spep_0 -3 + 159, 1, -111.8 );
setRotateKey( spep_0 -3 + 160, 1, -11.5 );
setRotateKey( spep_0 -3 + 162, 1, -25.5 );
setRotateKey( spep_0 -3 + 164, 1, -29.4 );
setRotateKey( spep_0 -3 + 166, 1, -31.8 );
setRotateKey( spep_0 -3 + 168, 1, -8.6 );
setRotateKey( spep_0 -3 + 169, 1, -8.6 );
setRotateKey( spep_0 -3 + 170, 1, -34.3 );
setRotateKey( spep_0 -3 + 172, 1, -35 );
setRotateKey( spep_0 -3 + 174, 1, -35.4 );
setRotateKey( spep_0 -3 + 176, 1, -35.7 );
setRotateKey( spep_0 -3 + 178, 1, -35.9 );
setRotateKey( spep_0 -3 + 180, 1, -35.9 );
setRotateKey( spep_0 -3 + 182, 1, -36 );
setRotateKey( spep_0 -3 + 184, 1, -36 );

-- ** 音 ** --
--初撃パンチ
SE4 = playSe( spep_0 + 93, 1126 );
setSeVolume( spep_0 + 93, 1126, 0 );
setSeVolume( spep_0 + 126, 1126, 0 );
setSeVolume( spep_0 + 128, 1126, 10 );
setSeVolume( spep_0 + 130, 1126, 18 );
setSeVolume( spep_0 + 132, 1126, 26 );
setSeVolume( spep_0 + 159, 1126, 26 );
setSeVolume( spep_0 + 170, 1126, 10 );

playSe( spep_0 + 112, 1189 );
setSeVolume( spep_0 + 112, 1189, 122 );

playSe( spep_0 + 113, 22 );
setSeVolume( spep_0 + 113, 22, 0 );
setSeVolume( spep_0 + 126, 22, 0 );
setSeVolume( spep_0 + 128, 22, 30 );
setSeVolume( spep_0 + 130, 22, 60 );
setSeVolume( spep_0 + 131, 22, 89 );

playSe( spep_0 + 118, 1120 );
setSeVolume( spep_0 + 118, 1120, 50 );

SE5 = playSe( spep_0 + 118, 1190 );
setSeVolume( spep_0 + 118, 1190, 122 );
setSeVolume( spep_0 + 136, 1190, 122 );
setSeVolume( spep_0 + 150, 1190, 100 );
setSeVolume( spep_0 + 160, 1190, 70 );
setSeVolume( spep_0 + 170, 1190, 30 );
setSeVolume( spep_0 + 182, 1190, 10 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 182;

------------------------------------------------------
-- 接近〜連打〜追撃(308F)
------------------------------------------------------

-- ** エフェクト等 ** --
attack_f = entryEffectLife( spep_1 + 0, SP_03, 308, 0x100, -1, 0, 0, 0, 100 );  --接近〜連打〜追撃・手前(ef_003)
setEffMoveKey( spep_1 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 308, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, attack_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 308, attack_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, attack_f, 0 );
setEffRotateKey( spep_1 + 308, attack_f, 0 );
setEffAlphaKey( spep_1 + 0, attack_f, 255 );
setEffAlphaKey( spep_1 + 308, attack_f, 255 );

attack_b = entryEffectLife( spep_1 + 0, SP_04, 308, 0x80, -1, 0, 0, 0 );  --接近〜連打〜追撃・奥(ef_004)
setEffMoveKey( spep_1 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 308, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, attack_b, -1.0, 1.0 );
setEffScaleKey( spep_1 + 308, attack_b, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, attack_b, 0 );
setEffRotateKey( spep_1 + 308, attack_b, 0 );
setEffAlphaKey( spep_1 + 0, attack_b, 255 );
setEffAlphaKey( spep_1 + 308, attack_b, 255 );

-- ** 書き文字エントリー ** --
ctdoga = entryEffect( spep_1 + 0 -6, ct_02, 0x100, -1, 0, 0, 0, 110 );  --ガガッ、ドガァ
setEffMoveKey( spep_1 + 0 -6, ctdoga, 0, 0 , 0 );
setEffMoveKey( spep_1 + 308 -6, ctdoga, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0 -6, ctdoga, -1.0, 1.0 );
setEffScaleKey( spep_1 + 308 -6, ctdoga, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0 -6, ctdoga, 0 );
setEffRotateKey( spep_1 + 308 -6, ctdoga, 0 );
setEffAlphaKey( spep_1 + 0 -6, ctdoga, 255 );
setEffAlphaKey( spep_1 + 308 -6, ctdoga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 190, 1, 0 );
setDisp( spep_1 -3 + 208, 1, 1 );
setDisp( spep_1 -3 + 270, 1, 0 );
changeAnime( spep_1 + 0, 1, 7 );
changeAnime( spep_1 -3 + 30, 1, 8 );
changeAnime( spep_1 -3 + 40, 1, 6 );
changeAnime( spep_1 -3 + 64, 1, 8 );
changeAnime( spep_1 -3 + 84, 1, 5 );
changeAnime( spep_1 -3 + 152, 1, 8 );
changeAnime( spep_1 -3 + 170, 1, 7 );
changeAnime( spep_1 -3 + 208, 1, 6 );
changeAnime( spep_1 -3 + 250, 1, 8 );

setMoveKey( spep_1 + 0, 1, 19.8, -308.7 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 17.8, -307.2 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 14.5, -304.8 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 9.8, -317 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 3.8, -312.6 , 0 );
setMoveKey( spep_1 -3 + 12, 1, -11.3, -273.4 , 0 );
setMoveKey( spep_1 -3 + 14, 1, -17.4, -282.6 , 0 );
setMoveKey( spep_1 -3 + 16, 1, -26.1, -276.3 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 5.5, -252.7 , 0 );
setMoveKey( spep_1 -3 + 20, 1, -26.5, -263.9 , 0 );
setMoveKey( spep_1 -3 + 22, 1, -41.5, -244.9 , 0 );
setMoveKey( spep_1 -3 + 24, 1, -39.7, -250.2 , 0 );
setMoveKey( spep_1 -3 + 26, 1, -41.7, -248.7 , 0 );
setMoveKey( spep_1 -3 + 29, 1, -42.3, -248.3 , 0 );
setMoveKey( spep_1 -3 + 30, 1, -45.1, 21 , 0 );
setMoveKey( spep_1 -3 + 32, 1, -43.4, 19.3 , 0 );
setMoveKey( spep_1 -3 + 34, 1, -38.4, 14.3 , 0 );
setMoveKey( spep_1 -3 + 36, 1, -33.3, 9.2 , 0 );
setMoveKey( spep_1 -3 + 39, 1, -31.6, 7.5 , 0 );
setMoveKey( spep_1 -3 + 40, 1, -61.6, 103.6 , 0 );
setMoveKey( spep_1 -3 + 42, 1, -56, 49.4 , 0 );
setMoveKey( spep_1 -3 + 44, 1, -58.2, 47.2 , 0 );
setMoveKey( spep_1 -3 + 46, 1, -60.4, 45 , 0 );
setMoveKey( spep_1 -3 + 48, 1, -31.4, 19.4 , 0 );
setMoveKey( spep_1 -3 + 50, 1, -33.6, 17.2 , 0 );
setMoveKey( spep_1 -3 + 52, 1, -35.8, -11 , 0 );
setMoveKey( spep_1 -3 + 54, 1, -51, 72.6 , 0 );
setMoveKey( spep_1 -3 + 56, 1, -53.2, 70.4 , 0 );
setMoveKey( spep_1 -3 + 58, 1, -55.4, 99.7 , 0 );
setMoveKey( spep_1 -3 + 60, 1, -57.6, 97.5 , 0 );
setMoveKey( spep_1 -3 + 63, 1, -59.8, 116.3 , 0 );
setMoveKey( spep_1 -3 + 64, 1, -179.6, 115.3 , 0 );
setMoveKey( spep_1 -3 + 66, 1, -184.9, 122.5 , 0 );
setMoveKey( spep_1 -3 + 68, 1, -217.6, 127.2 , 0 );
setMoveKey( spep_1 -3 + 70, 1, -244.6, 131.2 , 0 );
setMoveKey( spep_1 -3 + 72, 1, -241.6, 98.1 , 0 );
setMoveKey( spep_1 -3 + 74, 1, -268.5, 110 , 0 );
setMoveKey( spep_1 -3 + 76, 1, -273.6, 110.8 , 0 );
setMoveKey( spep_1 -3 + 78, 1, -255.1, 111.1 , 0 );
setMoveKey( spep_1 -3 + 80, 1, -277.1, 111.3 , 0 );
setMoveKey( spep_1 -3 + 83, 1, -277.3, 111.3 , 0 );
setMoveKey( spep_1 -3 + 84, 1, -277.3, 111.3 , 0 );
setMoveKey( spep_1 -3 + 86, 1, -276.9, 111.6 , 0 );
setMoveKey( spep_1 -3 + 88, 1, -309.6, 83.1 , 0 );
setMoveKey( spep_1 -3 + 90, 1, -307.7, 84.7 , 0 );
setMoveKey( spep_1 -3 + 92, 1, -304.7, 87.4 , 0 );
setMoveKey( spep_1 -3 + 94, 1, -300.3, 91.3 , 0 );
setMoveKey( spep_1 -3 + 96, 1, -294, 96.9 , 0 );
setMoveKey( spep_1 -3 + 98, 1, -285.6, 104.2 , 0 );
setMoveKey( spep_1 -3 + 100, 1, -274.9, 113.7 , 0 );
setMoveKey( spep_1 -3 + 102, 1, -264.2, 123.1 , 0 );
setMoveKey( spep_1 -3 + 104, 1, -255.9, 130.5 , 0 );
setMoveKey( spep_1 -3 + 106, 1, -249.6, 136 , 0 );
setMoveKey( spep_1 -3 + 108, 1, -245.1, 140 , 0 );
setMoveKey( spep_1 -3 + 110, 1, -242, 142.6 , 0 );
setMoveKey( spep_1 -3 + 112, 1, -240.2, 144.2 , 0 );
setMoveKey( spep_1 -3 + 114, 1, -239.3, 145.1 , 0 );
setMoveKey( spep_1 -3 + 116, 1, -238.9, 145.4 , 0 );
setMoveKey( spep_1 -3 + 118, 1, -238.9, 145.4 , 0 );
setMoveKey( spep_1 -3 + 120, 1, -238.7, 145.1 , 0 );
setMoveKey( spep_1 -3 + 122, 1, -238.4, 144.8 , 0 );
setMoveKey( spep_1 -3 + 124, 1, -238.2, 144.4 , 0 );
setMoveKey( spep_1 -3 + 126, 1, -237.9, 144.1 , 0 );
setMoveKey( spep_1 -3 + 128, 1, -237.6, 143.7 , 0 );
setMoveKey( spep_1 -3 + 130, 1, -237.3, 143.3 , 0 );
setMoveKey( spep_1 -3 + 132, 1, -237, 142.9 , 0 );
setMoveKey( spep_1 -3 + 134, 1, -236.7, 142.4 , 0 );
setMoveKey( spep_1 -3 + 136, 1, -236.3, 142 , 0 );
setMoveKey( spep_1 -3 + 138, 1, -236, 141.5 , 0 );
setMoveKey( spep_1 -3 + 140, 1, -235.6, 141 , 0 );
setMoveKey( spep_1 -3 + 142, 1, -235.2, 140.4 , 0 );
setMoveKey( spep_1 -3 + 144, 1, -234.8, 139.9 , 0 );
setMoveKey( spep_1 -3 + 146, 1, -234.4, 139.3 , 0 );
setMoveKey( spep_1 -3 + 148, 1, -234, 138.8 , 0 );
setMoveKey( spep_1 -3 + 151, 1, -233.5, 138.2 , 0 );
setMoveKey( spep_1 -3 + 152, 1, -233.1, 137.8 , 0 );
setMoveKey( spep_1 -3 + 154, 1, -233.1, 137.3 , 0 );
setMoveKey( spep_1 -3 + 156, 1, -233.1, 135.5 , 0 );
setMoveKey( spep_1 -3 + 158, 1, -233.1, 131.9 , 0 );
setMoveKey( spep_1 -3 + 160, 1, -233.1, 126 , 0 );
setMoveKey( spep_1 -3 + 162, 1, -233.1, 116.5 , 0 );
setMoveKey( spep_1 -3 + 164, 1, -233, 102.3 , 0 );
setMoveKey( spep_1 -3 + 166, 1, -233, 86.4 , 0 );
setMoveKey( spep_1 -3 + 169, 1, -233, 80.7 , 0 );
setMoveKey( spep_1 -3 + 170, 1, -78.5, 3.4 , 0 );
setMoveKey( spep_1 -3 + 172, 1, -51.2, -2.7 , 0 );
setMoveKey( spep_1 -3 + 174, 1, -118.5, -19.2 , 0 );
setMoveKey( spep_1 -3 + 176, 1, -91.3, -45.9 , 0 );
setMoveKey( spep_1 -3 + 178, 1, -110.3, -36.5 , 0 );
setMoveKey( spep_1 -3 + 180, 1, -110.5, -35 , 0 );
setMoveKey( spep_1 -3 + 182, 1, -94.1, -32.9 , 0 );
setMoveKey( spep_1 -3 + 184, 1, -94.6, -29.6 , 0 );
setMoveKey( spep_1 -3 + 186, 1, -95.4, -24.4 , 0 );
setMoveKey( spep_1 -3 + 189, 1, -97.4, -11.7 , 0 );
setMoveKey( spep_1 -3 + 190, 1, -97.4, -11.7 , 0 );
setMoveKey( spep_1 -3 + 208, 1, -226.9, 3.7 , 0 );
setMoveKey( spep_1 -3 + 210, 1, -226.8, 3.4 , 0 );
setMoveKey( spep_1 -3 + 212, 1, -230, -2.5 , 0 );
setMoveKey( spep_1 -3 + 214, 1, -227.8, -7.8 , 0 );
setMoveKey( spep_1 -3 + 216, 1, -223.4, -18.2 , 0 );
setMoveKey( spep_1 -3 + 218, 1, -216.3, -35.2 , 0 );
setMoveKey( spep_1 -3 + 220, 1, -209.2, -52.3 , 0 );
setMoveKey( spep_1 -3 + 222, 1, -204.9, -62.6 , 0 );
setMoveKey( spep_1 -3 + 224, 1, -202.7, -68 , 0 );
setMoveKey( spep_1 -3 + 226, 1, -201.9, -69.9 , 0 );
setMoveKey( spep_1 -3 + 228, 1, -201.7, -70.2 , 0 );
setMoveKey( spep_1 -3 + 230, 1, -172.7, -100.4 , 0 );
setMoveKey( spep_1 -3 + 232, 1, -169.9, -99.3 , 0 );
setMoveKey( spep_1 -3 + 234, 1, -165.2, -97.5 , 0 );
setMoveKey( spep_1 -3 + 236, 1, -158.5, -95 , 0 );
setMoveKey( spep_1 -3 + 238, 1, -149.8, -91.6 , 0 );
setMoveKey( spep_1 -3 + 240, 1, -138.8, -87.4 , 0 );
setMoveKey( spep_1 -3 + 242, 1, -124.9, -82.1 , 0 );
setMoveKey( spep_1 -3 + 244, 1, -107.5, -75.4 , 0 );
setMoveKey( spep_1 -3 + 246, 1, -85.2, -66.9 , 0 );
setMoveKey( spep_1 -3 + 248, 1, -54.3, -55 , 0 );
setMoveKey( spep_1 -3 + 249, 1, -54.3, -55 , 0 );
setMoveKey( spep_1 -3 + 250, 1, 67.1, -32.3 , 0 );
setMoveKey( spep_1 -3 + 252, 1, 73.4, -61.7 , 0 );
setMoveKey( spep_1 -3 + 254, 1, 46.1, -19.7 , 0 );
setMoveKey( spep_1 -3 + 256, 1, 67.1, -44.9 , 0 );
setMoveKey( spep_1 -3 + 258, 1, 8.3, -9.2 , 0 );
setMoveKey( spep_1 -3 + 260, 1, 8.3, -9.2 , 0 );
setMoveKey( spep_1 -3 + 262, 1, 23, -26 , 0 );
setMoveKey( spep_1 -3 + 264, 1, 45.3, -173.9 , 0 );
setMoveKey( spep_1 -3 + 266, 1, 59.9, -238.3 , 0 );
setMoveKey( spep_1 -3 + 268, 1, 103.7, -368.7 , 0 );
setMoveKey( spep_1 -3 + 270, 1, 103.7, -368.7 , 0 );

setScaleKey( spep_1 + 0, 1, 2.4, 2.4 );
setScaleKey( spep_1 -3 + 4, 1, 2.39, 2.39 );
setScaleKey( spep_1 -3 + 6, 1, 2.39, 2.39 );
setScaleKey( spep_1 -3 + 8, 1, 2.38, 2.38 );
setScaleKey( spep_1 -3 + 10, 1, 2.37, 2.37 );
setScaleKey( spep_1 -3 + 12, 1, 2.36, 2.36 );
setScaleKey( spep_1 -3 + 14, 1, 2.35, 2.35 );
setScaleKey( spep_1 -3 + 16, 1, 2.34, 2.34 );
setScaleKey( spep_1 -3 + 18, 1, 2.33, 2.33 );
setScaleKey( spep_1 -3 + 20, 1, 2.32, 2.32 );
setScaleKey( spep_1 -3 + 22, 1, 2.31, 2.31 );
setScaleKey( spep_1 -3 + 24, 1, 2.3, 2.3 );
setScaleKey( spep_1 -3 + 29, 1, 2.3, 2.3 );
setScaleKey( spep_1 -3 + 30, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 64, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 66, 1, 1.14, 1.14 );
setScaleKey( spep_1 -3 + 68, 1, 0.8, 0.8 );
setScaleKey( spep_1 -3 + 70, 1, 0.52, 0.52 );
setScaleKey( spep_1 -3 + 72, 1, 0.34, 0.34 );
setScaleKey( spep_1 -3 + 74, 1, 0.23, 0.23 );
setScaleKey( spep_1 -3 + 76, 1, 0.18, 0.18 );
setScaleKey( spep_1 -3 + 78, 1, 0.15, 0.15 );
setScaleKey( spep_1 -3 + 80, 1, 0.14, 0.14 );
setScaleKey( spep_1 -3 + 88, 1, 0.14, 0.14 );
setScaleKey( spep_1 -3 + 90, 1, 0.15, 0.15 );
setScaleKey( spep_1 -3 + 92, 1, 0.15, 0.15 );
setScaleKey( spep_1 -3 + 94, 1, 0.16, 0.16 );
setScaleKey( spep_1 -3 + 96, 1, 0.17, 0.17 );
setScaleKey( spep_1 -3 + 98, 1, 0.19, 0.19 );
setScaleKey( spep_1 -3 + 100, 1, 0.21, 0.21 );
setScaleKey( spep_1 -3 + 102, 1, 0.23, 0.23 );
setScaleKey( spep_1 -3 + 104, 1, 0.25, 0.25 );
setScaleKey( spep_1 -3 + 106, 1, 0.26, 0.26 );
setScaleKey( spep_1 -3 + 108, 1, 0.27, 0.27 );
setScaleKey( spep_1 -3 + 110, 1, 0.27, 0.27 );
setScaleKey( spep_1 -3 + 112, 1, 0.28, 0.28 );
setScaleKey( spep_1 -3 + 120, 1, 0.28, 0.28 );
setScaleKey( spep_1 -3 + 122, 1, 0.29, 0.29 );
setScaleKey( spep_1 -3 + 124, 1, 0.29, 0.29 );
setScaleKey( spep_1 -3 + 126, 1, 0.3, 0.3 );
setScaleKey( spep_1 -3 + 130, 1, 0.3, 0.3 );
setScaleKey( spep_1 -3 + 132, 1, 0.31, 0.31 );
setScaleKey( spep_1 -3 + 134, 1, 0.31, 0.31 );
setScaleKey( spep_1 -3 + 136, 1, 0.32, 0.32 );
setScaleKey( spep_1 -3 + 138, 1, 0.32, 0.32 );
setScaleKey( spep_1 -3 + 140, 1, 0.33, 0.33 );
setScaleKey( spep_1 -3 + 142, 1, 0.34, 0.34 );
setScaleKey( spep_1 -3 + 144, 1, 0.34, 0.34 );
setScaleKey( spep_1 -3 + 146, 1, 0.35, 0.35 );
setScaleKey( spep_1 -3 + 148, 1, 0.35, 0.35 );
setScaleKey( spep_1 -3 + 151, 1, 0.36, 0.36 );
setScaleKey( spep_1 -3 + 152, 1, 0.37, 0.37 );
setScaleKey( spep_1 -3 + 154, 1, 0.37, 0.37 );
setScaleKey( spep_1 -3 + 156, 1, 0.39, 0.39 );
setScaleKey( spep_1 -3 + 158, 1, 0.43, 0.43 );
setScaleKey( spep_1 -3 + 160, 1, 0.5, 0.5 );
setScaleKey( spep_1 -3 + 162, 1, 0.6, 0.6 );
setScaleKey( spep_1 -3 + 164, 1, 0.76, 0.76 );
setScaleKey( spep_1 -3 + 166, 1, 0.93, 0.93 );
setScaleKey( spep_1 -3 + 169, 1, 1, 1 );
setScaleKey( spep_1 -3 + 170, 1, 0.75, 0.75 );
setScaleKey( spep_1 -3 + 178, 1, 0.75, 0.75 );
setScaleKey( spep_1 -3 + 180, 1, 0.74, 0.74 );
setScaleKey( spep_1 -3 + 182, 1, 0.74, 0.74 );
setScaleKey( spep_1 -3 + 184, 1, 0.73, 0.73 );
setScaleKey( spep_1 -3 + 186, 1, 0.72, 0.72 );
setScaleKey( spep_1 -3 + 189, 1, 0.7, 0.7 );
setScaleKey( spep_1 -3 + 190, 1, 0.7, 0.7 );
setScaleKey( spep_1 -3 + 208, 1, 0.27, 0.27 );
setScaleKey( spep_1 -3 + 214, 1, 0.27, 0.27 );
setScaleKey( spep_1 -3 + 216, 1, 0.26, 0.26 );
setScaleKey( spep_1 -3 + 220, 1, 0.26, 0.26 );
setScaleKey( spep_1 -3 + 222, 1, 0.25, 0.25 );
setScaleKey( spep_1 -3 + 228, 1, 0.25, 0.25 );
setScaleKey( spep_1 -3 + 230, 1, 0.33, 0.33 );
setScaleKey( spep_1 -3 + 232, 1, 0.35, 0.35 );
setScaleKey( spep_1 -3 + 234, 1, 0.38, 0.38 );
setScaleKey( spep_1 -3 + 236, 1, 0.43, 0.43 );
setScaleKey( spep_1 -3 + 238, 1, 0.49, 0.49 );
setScaleKey( spep_1 -3 + 240, 1, 0.56, 0.56 );
setScaleKey( spep_1 -3 + 242, 1, 0.65, 0.65 );
setScaleKey( spep_1 -3 + 244, 1, 0.77, 0.77 );
setScaleKey( spep_1 -3 + 246, 1, 0.92, 0.92 );
setScaleKey( spep_1 -3 + 248, 1, 1.13, 1.13 );
setScaleKey( spep_1 -3 + 249, 1, 1.13, 1.13 );
setScaleKey( spep_1 -3 + 250, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 262, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 264, 1, 2, 2 );
setScaleKey( spep_1 -3 + 266, 1, 2.13, 2.13 );
setScaleKey( spep_1 -3 + 268, 1, 2.5, 2.5 );
setScaleKey( spep_1 -3 + 270, 1, 2.5, 2.5 );

setRotateKey( spep_1 + 0, 1, 94.8 );
setRotateKey( spep_1 -3 + 4, 1, 94.7 );
setRotateKey( spep_1 -3 + 6, 1, 94.6 );
setRotateKey( spep_1 -3 + 8, 1, 94.4 );
setRotateKey( spep_1 -3 + 10, 1, 94.2 );
setRotateKey( spep_1 -3 + 12, 1, 94 );
setRotateKey( spep_1 -3 + 14, 1, 93.6 );
setRotateKey( spep_1 -3 + 16, 1, 93.3 );
setRotateKey( spep_1 -3 + 18, 1, 93.1 );
setRotateKey( spep_1 -3 + 20, 1, 92.9 );
setRotateKey( spep_1 -3 + 22, 1, 92.7 );
setRotateKey( spep_1 -3 + 24, 1, 92.6 );
setRotateKey( spep_1 -3 + 26, 1, 92.5 );
setRotateKey( spep_1 -3 + 29, 1, 92.5 );
setRotateKey( spep_1 -3 + 30, 1, 13.5 );
setRotateKey( spep_1 -3 + 39, 1, 13.5 );
setRotateKey( spep_1 -3 + 40, 1, 37.9 );
setRotateKey( spep_1 -3 + 42, 1, 37.2 );
setRotateKey( spep_1 -3 + 44, 1, 36.5 );
setRotateKey( spep_1 -3 + 46, 1, 35.9 );
setRotateKey( spep_1 -3 + 48, 1, 35.2 );
setRotateKey( spep_1 -3 + 50, 1, 34.5 );
setRotateKey( spep_1 -3 + 52, 1, 33.8 );
setRotateKey( spep_1 -3 + 54, 1, 33.1 );
setRotateKey( spep_1 -3 + 56, 1, 32.4 );
setRotateKey( spep_1 -3 + 58, 1, 31.8 );
setRotateKey( spep_1 -3 + 60, 1, 31.1 );
setRotateKey( spep_1 -3 + 63, 1, 30.4 );
setRotateKey( spep_1 -3 + 64, 1, 0 );
setRotateKey( spep_1 -3 + 66, 1, -8.5 );
setRotateKey( spep_1 -3 + 68, 1, -16.4 );
setRotateKey( spep_1 -3 + 70, 1, -23 );
setRotateKey( spep_1 -3 + 72, 1, -27.4 );
setRotateKey( spep_1 -3 + 74, 1, -29.8 );
setRotateKey( spep_1 -3 + 76, 1, -31.1 );
setRotateKey( spep_1 -3 + 78, 1, -31.7 );
setRotateKey( spep_1 -3 + 80, 1, -31.9 );
setRotateKey( spep_1 -3 + 83, 1, -32 );
setRotateKey( spep_1 -3 + 90, 1, -32 );
setRotateKey( spep_1 -3 + 92, 1, -31.9 );
setRotateKey( spep_1 -3 + 94, 1, -31.9 );
setRotateKey( spep_1 -3 + 96, 1, -31.8 );
setRotateKey( spep_1 -3 + 98, 1, -31.8 );
setRotateKey( spep_1 -3 + 100, 1, -31.7 );
setRotateKey( spep_1 -3 + 102, 1, -31.5 );
setRotateKey( spep_1 -3 + 104, 1, -31.5 );
setRotateKey( spep_1 -3 + 106, 1, -31.4 );
setRotateKey( spep_1 -3 + 108, 1, -31.4 );
setRotateKey( spep_1 -3 + 110, 1, -31.3 );
setRotateKey( spep_1 -3 + 118, 1, -31.3 );
setRotateKey( spep_1 -3 + 120, 1, -29.5 );
setRotateKey( spep_1 -3 + 122, 1, -27.7 );
setRotateKey( spep_1 -3 + 124, 1, -25.7 );
setRotateKey( spep_1 -3 + 126, 1, -23.6 );
setRotateKey( spep_1 -3 + 128, 1, -21.5 );
setRotateKey( spep_1 -3 + 130, 1, -19.1 );
setRotateKey( spep_1 -3 + 132, 1, -16.7 );
setRotateKey( spep_1 -3 + 134, 1, -14.2 );
setRotateKey( spep_1 -3 + 136, 1, -11.5 );
setRotateKey( spep_1 -3 + 138, 1, -8.7 );
setRotateKey( spep_1 -3 + 140, 1, -5.8 );
setRotateKey( spep_1 -3 + 142, 1, -2.8 );
setRotateKey( spep_1 -3 + 144, 1, 0.3 );
setRotateKey( spep_1 -3 + 146, 1, 3.5 );
setRotateKey( spep_1 -3 + 148, 1, 6.9 );
setRotateKey( spep_1 -3 + 151, 1, 10.3 );
setRotateKey( spep_1 -3 + 152, 1, 13.9 );
setRotateKey( spep_1 -3 + 154, 1, 13.9 );
setRotateKey( spep_1 -3 + 156, 1, 13.6 );
setRotateKey( spep_1 -3 + 158, 1, 13.2 );
setRotateKey( spep_1 -3 + 160, 1, 12.5 );
setRotateKey( spep_1 -3 + 162, 1, 11.3 );
setRotateKey( spep_1 -3 + 164, 1, 9.6 );
setRotateKey( spep_1 -3 + 166, 1, 7.6 );
setRotateKey( spep_1 -3 + 169, 1, 6.9 );
setRotateKey( spep_1 -3 + 170, 1, 93.3 );
setRotateKey( spep_1 -3 + 172, 1, 93.3 );
setRotateKey( spep_1 -3 + 174, 1, 93.4 );
setRotateKey( spep_1 -3 + 176, 1, 93.6 );
setRotateKey( spep_1 -3 + 178, 1, 93.8 );
setRotateKey( spep_1 -3 + 180, 1, 94.2 );
setRotateKey( spep_1 -3 + 182, 1, 94.8 );
setRotateKey( spep_1 -3 + 184, 1, 95.7 );
setRotateKey( spep_1 -3 + 186, 1, 97.2 );
setRotateKey( spep_1 -3 + 189, 1, 100.8 );
setRotateKey( spep_1 -3 + 190, 1, 100.8 );
setRotateKey( spep_1 -3 + 208, 1, 0 );
setRotateKey( spep_1 -3 + 210, 1, 0.1 );
setRotateKey( spep_1 -3 + 212, 1, 0.7 );
setRotateKey( spep_1 -3 + 214, 1, 2.3 );
setRotateKey( spep_1 -3 + 216, 1, 5.5 );
setRotateKey( spep_1 -3 + 218, 1, 10.6 );
setRotateKey( spep_1 -3 + 220, 1, 15.8 );
setRotateKey( spep_1 -3 + 222, 1, 19 );
setRotateKey( spep_1 -3 + 224, 1, 20.6 );
setRotateKey( spep_1 -3 + 226, 1, 21.2 );
setRotateKey( spep_1 -3 + 228, 1, 21.3 );
setRotateKey( spep_1 -3 + 230, 1, 22.8 );
setRotateKey( spep_1 -3 + 232, 1, 23.2 );
setRotateKey( spep_1 -3 + 234, 1, 23.8 );
setRotateKey( spep_1 -3 + 236, 1, 24.6 );
setRotateKey( spep_1 -3 + 238, 1, 25.7 );
setRotateKey( spep_1 -3 + 240, 1, 27.2 );
setRotateKey( spep_1 -3 + 242, 1, 28.9 );
setRotateKey( spep_1 -3 + 244, 1, 31.2 );
setRotateKey( spep_1 -3 + 246, 1, 34 );
setRotateKey( spep_1 -3 + 248, 1, 38 );
setRotateKey( spep_1 -3 + 249, 1, 38 );
setRotateKey( spep_1 -3 + 250, 1, 45 );
setRotateKey( spep_1 -3 + 262, 1, 45 );
setRotateKey( spep_1 -3 + 264, 1, 70.2 );
setRotateKey( spep_1 -3 + 270, 1, 70.2 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 310, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--初撃パンチ
setSeVolume( spep_1 + 75, 1126, 0 );
stopSe( spep_1 + 75, SE4, 0 );

setSeVolume( spep_1 + 15, 1190, 0 );
stopSe( spep_1 + 15, SE5, 0 );

--瞬間移動
playSe( spep_1 + 6, 1109 );

--パンチ１
playSe( spep_1 + 29, 1208 );
setSeVolume( spep_1 + 29, 1208, 73 );
playSe( spep_1 + 33, 1189 );
SE6 = playSe( spep_1 + 39, 1010 );
stopSe( spep_1 + 51, SE6, 12 );
SE7 = playSe( spep_1 + 39, 1182 );
setSeVolume( spep_1 + 39, 1182, 151 );
setSeVolume( spep_1 + 56, 1182, 151 );
setSeVolume( spep_1 + 58, 1182, 90 );
setSeVolume( spep_1 + 60, 1182, 60 );
setSeVolume( spep_1 + 64, 1182, 30 );
setSeVolume( spep_1 +  67, 1182, 0 );
stopSe( spep_1 + 67, SE7, 0 );

--パンチ２
playSe( spep_1 + 68, 1187 );
playSe( spep_1 + 68, 1190 );

--敵が飛んでいく
SE8 = playSe( spep_1 + 96, 1183 );
setSeVolume( spep_1 +  96, 1183, 90 );
setSeVolume( spep_1 +  147, 1183, 90 );
setSeVolume( spep_1 +  150, 1183, 70 );
setSeVolume( spep_1 +  154, 1183, 50 );
setSeVolume( spep_1 +  160, 1183, 20 );
setSeVolume( spep_1 +  163, 1183, 0 );
stopSe( spep_1 + 163, SE8, 0 );

SE9 = playSe( spep_1 + 96, 1121 );
setSeVolume( spep_1 +  96, 1121, 90 );
setSeVolume( spep_1 +  153, 1121, 90 );
setSeVolume( spep_1 +  158, 1121, 80 );
setSeVolume( spep_1 +  162, 1121, 60 );
setSeVolume( spep_1 +  168, 1121, 40 );
setSeVolume( spep_1 +  172, 1121, 20 );
setSeVolume( spep_1 +  178, 1121, 0 );
stopSe( spep_1 + 178, SE9, 0 );

--パンチ３
playSe( spep_1 + 156, 1208 );
setSeVolume( spep_1 +  156, 1208, 90 );
playSe( spep_1 + 160, 1189 );
SE10 = playSe( spep_1 + 166, 1010 );
stopSe( spep_1 + 178, SE10, 8 );
SE11 = playSe( spep_1 + 166, 1182 );
stopSe( spep_1 + 183, SE11, 5 );

--パンチ４
playSe( spep_1 + 185, 1189 );
playSe( spep_1 + 189, 1010 );
SE12 = playSe( spep_1 + 191, 1010 );
stopSe( spep_1 + 203, SE12, 12 );
SE13 = playSe( spep_1 + 191, 1182 );
stopSe( spep_1 + 208, SE13, 11 );

--敵に近づく
SE14 = playSe( spep_1 + 211, 1182 );
setSeVolume( spep_1 +  211, 1182, 251 );
setSeVolume( spep_1 +  219, 1182, 251 );
setSeVolume( spep_1 +  220, 1182, 136 );
setSeVolume( spep_1 +  224, 1182, 130 );
setSeVolume( spep_1 +  230, 1182, 122 );
setSeVolume( spep_1 +  234, 1182, 116 );
setSeVolume( spep_1 +  238, 1182, 110 );
setSeVolume( spep_1 +  242, 1182, 100 );
setSeVolume( spep_1 +  246, 1182, 70 );
setSeVolume( spep_1 +  250, 1182, 50 );
setSeVolume( spep_1 +  254, 1182, 30 );
setSeVolume( spep_1 +  258, 1182, 10 );
setSeVolume( spep_1 +  260, 1182, 0 );
stopSe( spep_1 + 260, SE14, 0 );

SE15 = playSe( spep_1 + 211, 1183 );
setSeVolume( spep_1 +  211, 1183, 168 );
setSeVolume( spep_1 +  251, 1183, 168 );
setSeVolume( spep_1 +  254, 1183, 80 );
setSeVolume( spep_1 +  256, 1183, 40 );
setSeVolume( spep_1 +  258, 1183, 0 );
stopSe( spep_1 + 258, SE15, 0 );

--叩き落とし
playSe( spep_1 + 247, 1014 );
setSeVolume( spep_1 +  247, 1014, 81 );
playSe( spep_1 + 249, 1187 );
setSeVolume( spep_1 +  249, 1187, 81 );
playSe( spep_1 + 249, 1159 );
setSeVolume( spep_1 +  249, 1159, 81 );

--気弾溜め
SE16 = playSe( spep_1 + 266, 1204 );
setSeVolume( spep_1 +  266, 1204, 0 );
SE17 = playSe( spep_1 + 297, 1191 );
setSeVolume( spep_1 +  297, 1191, 0 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 308;

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

--気弾溜め
setSeVolume( spep_2 +  91, 1204, 0 );
setSeVolume( spep_2 +  94, 1204, 10 );

setSeVolume( spep_2 +  88, 1191, 0 );
setSeVolume( spep_2 +  94, 1191, 10 );

SE18 = playSe( spep_2 + 36, 1215 );
setSeVolume( spep_2 +  36, 1215, 0 );
setSeVolume( spep_2 +  87, 1215, 0 );
setSeVolume( spep_2 +  90, 1215, 50 );
setSeVolume( spep_2 +  91, 1215, 122 );

SE19 = playSe( spep_2 + 83, 1144 );
setSeVolume( spep_2 +  83, 1144, 38 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_3 = spep_2 + 94;

------------------------------------------------------
-- 構え、発射(88F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_3 + 0, SP_05x, 88, 0x100, -1, 0, 0, 0 );  --構え、発射(ef_005)
setEffMoveKey( spep_3 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_3 + 88, hassha, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_3 + 88, hassha, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hassha, 0 );
setEffRotateKey( spep_3 + 88, hassha, 0 );
setEffAlphaKey( spep_3 + 0, hassha, 255 );
setEffAlphaKey( spep_3 + 87, hassha, 255 );
setEffAlphaKey( spep_3 + 88, hassha, 0 );

-- ** 書き文字エントリー ** --
ctbou = entryEffect( spep_3 + 0, ct_03x, 0x100, -1, 0, 0, 0 );  --ボウッ
setEffMoveKey( spep_3 + 0, ctbou, 0, 0 , 0 );
setEffMoveKey( spep_3 + 88, ctbou, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, ctbou, -1.0, 1.0 );
setEffScaleKey( spep_3 + 88, ctbou, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, ctbou, 0 );
setEffRotateKey( spep_3 + 88, ctbou, 0 );
setEffAlphaKey( spep_3 + 0, ctbou, 255 );
setEffAlphaKey( spep_3 + 88, ctbou, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--気弾溜め
setSeVolume( spep_3 +  0, 1204, 50 );
setSeVolume( spep_3 +  3, 1204, 80 );
setSeVolume( spep_3 +  5, 1204, 122 );
stopSe( spep_3 + 81, SE16, 0 );

setSeVolume( spep_3 +  0, 1191, 50 );
setSeVolume( spep_3 +  3, 1191, 70 );
setSeVolume( spep_3 +  5, 1191, 110 );
stopSe( spep_3 + 81, SE17, 0 );

stopSe( spep_3 + 81, SE18, 0 );
stopSe( spep_3 + 81, SE19, 0 );

SE20 = playSe( spep_3 + 24, 17 );
stopSe( spep_3 + 81, SE20, 0 );

--気弾発射
playSe( spep_3 + 64, 1027 );
setSeVolume( spep_3 +  64, 1027, 89 );
playSe( spep_3 + 64, 1145 );
setSeVolume( spep_3 +  64, 1145, 81 );
playSe( spep_3 + 71, 1177 );
setSeVolume( spep_3 +  71, 1177, 73 );

--スターダストフォール
playSe( spep_3 + 84, 1016 );
setSeVolume( spep_3 +  84, 1016, 66 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 88;

------------------------------------------------------
-- 着弾(124F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --着弾・手前(ef_006)
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 124, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 124, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 124, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 124, finish_f, 255 );

finish_b = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --着弾・奥(ef_007)
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 124, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 124, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 124, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 124, finish_b, 255 );

-- **  敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 108 );
changeAnime( spep_4 -3 + 44, 1, 106 );
changeAnime( spep_4 -3 + 78, 1, 105 );

setMoveKey( spep_4 + 0, 1, 134.1, -116.2 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 163.2, -53.1 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 169.9, -42.3 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 187, -65.6 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 214.7, -24.8 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 229.9, -44 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 200.3, 13.9 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 194.8, 0.3 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 189, 16.9 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 168.7, -25.5 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 197.6, -10.3 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 156, -10.9 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -65.4, 60.4 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -140.5, 55.9 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -121.1, 43.7 , 0 );
setMoveKey( spep_4 -3 + 32, 1, -131.4, 64.7 , 0 );
setMoveKey( spep_4 -3 + 34, 1, -74.7, 61.6 , 0 );
setMoveKey( spep_4 -3 + 36, 1, -93.5, 93.7 , 0 );
setMoveKey( spep_4 -3 + 38, 1, -190.6, 172.4 , 0 );
setMoveKey( spep_4 -3 + 40, 1, -191.7, 178.2 , 0 );
setMoveKey( spep_4 -3 + 43, 1, -192.5, 182.1 , 0 );
setMoveKey( spep_4 -3 + 44, 1, -174.4, 158.1 , 0 );
setMoveKey( spep_4 -3 + 46, 1, -173.7, 183.5 , 0 );
setMoveKey( spep_4 -3 + 48, 1, -160.2, 168.2 , 0 );
setMoveKey( spep_4 -3 + 50, 1, -130.2, 186.9 , 0 );
setMoveKey( spep_4 -3 + 52, 1, -142.8, 155.3 , 0 );
setMoveKey( spep_4 -3 + 54, 1, -164, 179 , 0 );
setMoveKey( spep_4 -3 + 56, 1, -122.9, 153.7 , 0 );
setMoveKey( spep_4 -3 + 58, 1, -88.6, 139 , 0 );
setMoveKey( spep_4 -3 + 60, 1, -83.4, 135.5 , 0 );
setMoveKey( spep_4 -3 + 62, 1, -13.4, 87.8 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 52.8, -26.2 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 118, -68.2 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 98, -82.3 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 127.5, -111.1 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 139.8, -89.4 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 170.8, -80 , 0 );
setMoveKey( spep_4 -3 + 77, 1, 191.2, -125.2 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 178.8, -111.7 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 197.3, -93 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 212.1, -111.3 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 197.3, -96.1 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 193.6, -103.2 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 178.7, -80.3 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 174.8, -89.1 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 178.6, -82.5 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 178.5, -65.6 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 165.6, -76.6 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 163.6, -75 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 213.5, -91.5 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 178, -70.1 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 161.2, -78.8 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 196.1, -99.3 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 200.1, -76.4 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 197.7, -82.7 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 203.2, -71.4 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 214.1, -94.3 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 208.6, -86.1 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 208.6, -85.6 , 0 );
setMoveKey( spep_4 -3 + 120, 1, 208.4, -85.1 , 0 );
setMoveKey( spep_4 -3 + 122, 1, 208.4, -109.8 , 0 );
setMoveKey( spep_4 -3 + 124, 1, 208.4, -84.6 , 0 );
setMoveKey( spep_4 -3 + 126, 1, 208.1, -84.4 , 0 );

setScaleKey( spep_4 -3 + 0, 1, 2.48, 2.48 );
setScaleKey( spep_4 -3 + 2, 1, 2.45, 2.45 );
setScaleKey( spep_4 -3 + 4, 1, 2.36, 2.36 );
setScaleKey( spep_4 -3 + 6, 1, 2.21, 2.21 );
setScaleKey( spep_4 -3 + 8, 1, 2.06, 2.06 );
setScaleKey( spep_4 -3 + 10, 1, 1.97, 1.97 );
setScaleKey( spep_4 -3 + 12, 1, 1.94, 1.94 );
setScaleKey( spep_4 -3 + 14, 1, 1.93, 1.93 );
setScaleKey( spep_4 -3 + 16, 1, 1.92, 1.92 );
setScaleKey( spep_4 -3 + 18, 1, 1.91, 1.91 );
setScaleKey( spep_4 -3 + 20, 1, 1.88, 1.88 );
setScaleKey( spep_4 -3 + 22, 1, 1.83, 1.83 );
setScaleKey( spep_4 -3 + 24, 1, 1.67, 1.67 );
setScaleKey( spep_4 -3 + 26, 1, 1.26, 1.26 );
setScaleKey( spep_4 -3 + 28, 1, 1.03, 1.03 );
setScaleKey( spep_4 -3 + 30, 1, 0.94, 0.94 );
setScaleKey( spep_4 -3 + 32, 1, 0.89, 0.89 );
setScaleKey( spep_4 -3 + 34, 1, 0.84, 0.84 );
setScaleKey( spep_4 -3 + 36, 1, 0.81, 0.81 );
setScaleKey( spep_4 -3 + 38, 1, 0.79, 0.79 );
setScaleKey( spep_4 -3 + 40, 1, 0.78, 0.78 );
setScaleKey( spep_4 -3 + 43, 1, 0.77, 0.77 );
setScaleKey( spep_4 -3 + 44, 1, 0.76, 0.76 );
setScaleKey( spep_4 -3 + 50, 1, 0.76, 0.76 );
setScaleKey( spep_4 -3 + 52, 1, 0.75, 0.75 );
setScaleKey( spep_4 -3 + 54, 1, 0.75, 0.75 );
setScaleKey( spep_4 -3 + 56, 1, 0.73, 0.73 );
setScaleKey( spep_4 -3 + 58, 1, 0.72, 0.72 );
setScaleKey( spep_4 -3 + 60, 1, 0.71, 0.71 );
setScaleKey( spep_4 -3 + 62, 1, 0.68, 0.68 );
setScaleKey( spep_4 -3 + 64, 1, 0.62, 0.62 );
setScaleKey( spep_4 -3 + 66, 1, 0.57, 0.57 );
setScaleKey( spep_4 -3 + 68, 1, 0.55, 0.55 );
setScaleKey( spep_4 -3 + 70, 1, 0.54, 0.54 );
setScaleKey( spep_4 -3 + 72, 1, 0.5, 0.5 );
setScaleKey( spep_4 -3 + 74, 1, 0.45, 0.45 );
setScaleKey( spep_4 -3 + 77, 1, 0.41, 0.41 );
setScaleKey( spep_4 -3 + 78, 1, 0.37, 0.37 );
setScaleKey( spep_4 -3 + 80, 1, 0.38, 0.38 );
setScaleKey( spep_4 -3 + 82, 1, 0.38, 0.38 );
setScaleKey( spep_4 -3 + 84, 1, 0.39, 0.39 );
setScaleKey( spep_4 -3 + 86, 1, 0.41, 0.41 );
setScaleKey( spep_4 -3 + 88, 1, 0.42, 0.42 );
setScaleKey( spep_4 -3 + 90, 1, 0.44, 0.44 );
setScaleKey( spep_4 -3 + 92, 1, 0.48, 0.48 );
setScaleKey( spep_4 -3 + 94, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 96, 1, 0.54, 0.54 );
setScaleKey( spep_4 -3 + 98, 1, 0.59, 0.59 );
setScaleKey( spep_4 -3 + 100, 1, 0.67, 0.67 );
setScaleKey( spep_4 -3 + 102, 1, 0.77, 0.77 );
setScaleKey( spep_4 -3 + 104, 1, 0.89, 0.89 );
setScaleKey( spep_4 -3 + 106, 1, 1.04, 1.04 );
setScaleKey( spep_4 -3 + 108, 1, 1.16, 1.16 );
setScaleKey( spep_4 -3 + 110, 1, 1.23, 1.23 );
setScaleKey( spep_4 -3 + 112, 1, 1.29, 1.29 );
setScaleKey( spep_4 -3 + 114, 1, 1.33, 1.33 );
setScaleKey( spep_4 -3 + 116, 1, 1.36, 1.36 );
setScaleKey( spep_4 -3 + 118, 1, 1.37, 1.37 );
setScaleKey( spep_4 -3 + 120, 1, 1.39, 1.39 );
setScaleKey( spep_4 -3 + 122, 1, 1.39, 1.39 );
setScaleKey( spep_4 -3 + 124, 1, 1.4, 1.4 );
setScaleKey( spep_4 -3 + 126, 1, 1.4, 1.4 );

setRotateKey( spep_4 -3 + 0, 1, -20.5 );
setRotateKey( spep_4 -3 + 2, 1, -50.7 );
setRotateKey( spep_4 -3 + 4, 1, -56.3 );
setRotateKey( spep_4 -3 + 6, 1, -65.4 );
setRotateKey( spep_4 -3 + 8, 1, -74.6 );
setRotateKey( spep_4 -3 + 10, 1, -80.2 );
setRotateKey( spep_4 -3 + 12, 1, -82 );
setRotateKey( spep_4 -3 + 14, 1, -99.1 );
setRotateKey( spep_4 -3 + 16, 1, -98.9 );
setRotateKey( spep_4 -3 + 18, 1, -98.7 );
setRotateKey( spep_4 -3 + 20, 1, -98.3 );
setRotateKey( spep_4 -3 + 22, 1, -97.6 );
setRotateKey( spep_4 -3 + 24, 1, -95.6 );
setRotateKey( spep_4 -3 + 26, 1, -90.2 );
setRotateKey( spep_4 -3 + 28, 1, -49.4 );
setRotateKey( spep_4 -3 + 30, 1, -35.9 );
setRotateKey( spep_4 -3 + 32, 1, -30.5 );
setRotateKey( spep_4 -3 + 34, 1, -26.5 );
setRotateKey( spep_4 -3 + 36, 1, -23.6 );
setRotateKey( spep_4 -3 + 38, 1, -21.5 );
setRotateKey( spep_4 -3 + 40, 1, -20 );
setRotateKey( spep_4 -3 + 43, 1, -9.1 );
setRotateKey( spep_4 -3 + 44, 1, -34.1 );
setRotateKey( spep_4 -3 + 46, 1, -21.5 );
setRotateKey( spep_4 -3 + 48, 1, -21.4 );
setRotateKey( spep_4 -3 + 50, 1, -21 );
setRotateKey( spep_4 -3 + 52, 1, -20.6 );
setRotateKey( spep_4 -3 + 54, 1, -19.9 );
setRotateKey( spep_4 -3 + 56, 1, -19 );
setRotateKey( spep_4 -3 + 58, 1, -17.8 );
setRotateKey( spep_4 -3 + 60, 1, -15.9 );
setRotateKey( spep_4 -3 + 62, 1, -11.9 );
setRotateKey( spep_4 -3 + 64, 1, -3.8 );
setRotateKey( spep_4 -3 + 66, 1, 1.3 );
setRotateKey( spep_4 -3 + 68, 1, 4 );
setRotateKey( spep_4 -3 + 70, 1, 4.9 );
setRotateKey( spep_4 -3 + 72, 1, 17.7 );
setRotateKey( spep_4 -3 + 74, 1, 30.4 );
setRotateKey( spep_4 -3 + 77, 1, 38 );
setRotateKey( spep_4 -3 + 78, 1, 32.5 );
setRotateKey( spep_4 -3 + 80, 1, 32.3 );
setRotateKey( spep_4 -3 + 82, 1, 32.2 );
setRotateKey( spep_4 -3 + 84, 1, 31.9 );
setRotateKey( spep_4 -3 + 86, 1, 31.6 );
setRotateKey( spep_4 -3 + 88, 1, 31.3 );
setRotateKey( spep_4 -3 + 90, 1, 30.8 );
setRotateKey( spep_4 -3 + 92, 1, 30.2 );
setRotateKey( spep_4 -3 + 94, 1, 29.5 );
setRotateKey( spep_4 -3 + 96, 1, 28.6 );
setRotateKey( spep_4 -3 + 98, 1, 27.4 );
setRotateKey( spep_4 -3 + 100, 1, 25.9 );
setRotateKey( spep_4 -3 + 102, 1, 23.9 );
setRotateKey( spep_4 -3 + 104, 1, 21.1 );
setRotateKey( spep_4 -3 + 106, 1, 18 );
setRotateKey( spep_4 -3 + 108, 1, 15.5 );
setRotateKey( spep_4 -3 + 110, 1, 13.7 );
setRotateKey( spep_4 -3 + 112, 1, 12.5 );
setRotateKey( spep_4 -3 + 114, 1, 11.6 );
setRotateKey( spep_4 -3 + 116, 1, 11 );
setRotateKey( spep_4 -3 + 118, 1, 10.6 );
setRotateKey( spep_4 -3 + 120, 1, 10.3 );
setRotateKey( spep_4 -3 + 122, 1, 10.1 );
setRotateKey( spep_4 -3 + 124, 1, 10 );
setRotateKey( spep_4 -3 + 126, 1, 10 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 126, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--スターダストフォール
playSe( spep_4 + 0, 1016 );
setSeVolume( spep_4 +  0, 1016, 45 );
playSe( spep_4 + 2, 1016 );
setSeVolume( spep_4 +  2, 1016, 60 );
playSe( spep_4 + 4, 1016 );
setSeVolume( spep_4 +  4, 1016, 73 );
playSe( spep_4 + 8, 1016 );
setSeVolume( spep_4 +  8, 1016, 66 );
playSe( spep_4 + 12, 1016 );
setSeVolume( spep_4 +  12, 1016, 42 );
playSe( spep_4 + 14, 1016 );
setSeVolume( spep_4 +  14, 1016, 55 );
playSe( spep_4 + 16, 1016 );
setSeVolume( spep_4 +  16, 1016, 66 );
playSe( spep_4 + 20, 1016 );
setSeVolume( spep_4 +  20, 1016, 50 );
playSe( spep_4 + 24, 1016 );
setSeVolume( spep_4 +  24, 1016, 81 );
playSe( spep_4 + 26, 1016 );
setSeVolume( spep_4 +  26, 1016, 81 );
playSe( spep_4 + 28, 1016 );
setSeVolume( spep_4 +  28, 1016, 35 );
playSe( spep_4 + 32, 1016 );
setSeVolume( spep_4 +  32, 1016, 66 );
playSe( spep_4 + 36, 1016 );
setSeVolume( spep_4 +  36, 1016, 50 );
playSe( spep_4 + 38, 1016 );
setSeVolume( spep_4 +  38, 1016, 66 );
playSe( spep_4 + 40, 1016 );
setSeVolume( spep_4 +  40, 1016, 50 );
playSe( spep_4 + 44, 1016 );
setSeVolume( spep_4 +  44, 1016, 45 );
playSe( spep_4 + 48, 1016 );
setSeVolume( spep_4 +  48, 1016, 60 );
playSe( spep_4 + 50, 1016 );
setSeVolume( spep_4 +  50, 1016, 81 );
playSe( spep_4 + 52, 1016 );
setSeVolume( spep_4 +  52, 1016, 73 );
playSe( spep_4 + 56, 1016 );
setSeVolume( spep_4 +  56, 1016, 66 );
playSe( spep_4 + 60, 1016 );
setSeVolume( spep_4 +  60, 1016, 50 );
playSe( spep_4 + 62, 1016 );
setSeVolume( spep_4 +  62, 1016, 60 );
playSe( spep_4 + 64, 1016 );
setSeVolume( spep_4 +  64, 1016, 81 );
playSe( spep_4 + 68, 1016 );
setSeVolume( spep_4 +  68, 1016, 38 );
playSe( spep_4 + 72, 1016 );
setSeVolume( spep_4 +  72, 1016, 73 );
playSe( spep_4 + 74, 1016 );
setSeVolume( spep_4 +  74, 1016, 55 );
playSe( spep_4 + 76, 1016 );
setSeVolume( spep_4 +  76, 1016, 35 );
playSe( spep_4 + 80, 1016 );
setSeVolume( spep_4 +  80, 1016, 66 );
playSe( spep_4 + 84, 1016 );
setSeVolume( spep_4 +  84, 1016, 42 );
playSe( spep_4 + 86, 1016 );
setSeVolume( spep_4 +  86, 1016, 73 );
playSe( spep_4 + 88, 1016 );
setSeVolume( spep_4 +  88, 1016, 55 );
playSe( spep_4 + 92, 1016 );
setSeVolume( spep_4 +  92, 1016, 35 );
playSe( spep_4 + 96, 1016 );
setSeVolume( spep_4 +  96, 1016, 81 );
playSe( spep_4 + 98, 1016 );
setSeVolume( spep_4 +  98, 1016, 60 );
playSe( spep_4 + 100, 1016 );
setSeVolume( spep_4 +  100, 1016, 66 );
playSe( spep_4 + 104, 1016 );
setSeVolume( spep_4 +  104, 1016, 73 );
playSe( spep_4 + 108, 1016 );
setSeVolume( spep_4 +  108, 1016, 42 );
playSe( spep_4 + 110, 1016 );
setSeVolume( spep_4 +  110, 1016, 55 );
playSe( spep_4 + 112, 1016 );
setSeVolume( spep_4 +  112, 1016, 89 );
playSe( spep_4 + 116, 1016 );
setSeVolume( spep_4 +  116, 1016, 60 );

--爆発
SE21 = playSe( spep_4 + 9, 1023 );
setSeVolume( spep_4 +  9, 1023, 110 );
stopSe( spep_4 + 73, SE21, 0 );
SE22 = playSe( spep_4 + 37, 1159 );
setSeVolume( spep_4 +  37, 1159, 73 );
setSeVolume( spep_4 +  63, 1159, 73 );
setSeVolume( spep_4 +  68, 1159, 60 );
setSeVolume( spep_4 +  74, 1159, 54 );
setSeVolume( spep_4 +  82, 1159, 42 );
setSeVolume( spep_4 +  90, 1159, 38 );
setSeVolume( spep_4 +  98, 1159, 20 );
setSeVolume( spep_4 +  106, 1159, 10 );
setSeVolume( spep_4 +  113, 1159, 0 );
stopSe( spep_4 + 113, SE22, 0 );
SE23 = playSe( spep_4 + 67, 1023 );
stopSe( spep_4 + 82, SE23, 36 );

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 8 );
endPhase( spep_4 + 122 );

end