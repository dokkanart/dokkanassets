--1018190:クウラ_破壊光線

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
SP_01 = 154244; --立ちポーズで登場
SP_02 = 154245; --アップ、見上げて目から光線
SP_03_a = 154246; --光線命中（前面）
SP_03_b = 154247; --光線命中（背面）
SP_04_a = 154248; --敵、落下して川へ墜落（前面）
SP_04_b = 154249; --敵、落下して川へ墜落（背面）
SP_05 = 154250; --敵、滝の方へ流される
SP_06 = 154251; --飛び上がる
SP_07 = 154252; --奥から手前に飛んで移動
SP_08 = 154253; --滝底へ光線
SP_09 = 154254; --滝底で着弾して爆発
SP_10 = 154255; --滝近くで水しぶき
SP_11 = 154256; --クレーターが水で塞がれる


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
-- 立ちポーズで登場(86F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tachi = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); --立ちポーズで登場(ef_001)
setEffMoveKey( spep_0 + 0, tachi, 0, 0, 0 );
setEffMoveKey( spep_0 + 84, tachi, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tachi, 1.0, 1.0 );
setEffScaleKey( spep_0 + 84, tachi, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tachi, 0 );
setEffRotateKey( spep_0 + 84, tachi, 0 );
setEffAlphaKey( spep_0 + 0, tachi, 255 );
setEffAlphaKey( spep_0 + 84, tachi, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 84, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
playSe( spep_0 + 0, 1072 );
setSeVolume( spep_0 + 0, 1072, 120 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 84;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0 ); --カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 ); --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0, 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0, 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); --white fade
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );--white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

--------------------------------------
--アップ、見上げて目から光線(194F)
--------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 ); --アップ、見上げて目から光線(ef_002)
setEffMoveKey( spep_2 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_2 + 194, beam, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_2 + 194, beam, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam, 0 );
setEffRotateKey( spep_2 + 194, beam, 0 );
setEffAlphaKey( spep_2 + 0, beam, 255 );
setEffAlphaKey( spep_2 + 194, beam, 255 );

spep_x = spep_2 + 54;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5, 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5, 0 );

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


ctBee = entryEffectLife( spep_2 -3 + 162, 10024, 12, 0x100, -1, 0, -28.1, 276 ); --ビッ
setEffMoveKey( spep_2 -3 + 162, ctBee, -28.1, 276, 0 );
setEffMoveKey( spep_2 -3 + 164, ctBee, -2.6, 345.4, 0 );
setEffMoveKey( spep_2 -3 + 166, ctBee, -62.9, 363.8, 0 );
setEffMoveKey( spep_2 -3 + 168, ctBee, 8.5, 290.7, 0 );
setEffMoveKey( spep_2 -3 + 170, ctBee, -28.1, 363.8, 0 );
setEffMoveKey( spep_2 -3 + 172, ctBee, 12.1, 404, 0 );
setEffMoveKey( spep_2 -3 + 174, ctBee, 13.9, 405.7, 0 );

setEffScaleKey( spep_2 -3 + 162, ctBee, 0.81, 0.81 );
setEffScaleKey( spep_2 -3 + 164, ctBee, 1.27, 1.27 );
setEffScaleKey( spep_2 -3 + 166, ctBee, 1.74, 1.74 );
setEffScaleKey( spep_2 -3 + 168, ctBee, 1.83, 1.83 );
setEffScaleKey( spep_2 -3 + 170, ctBee, 1.92, 1.92 );
setEffScaleKey( spep_2 -3 + 172, ctBee, 2.01, 2.01 );
setEffScaleKey( spep_2 -3 + 174, ctBee, 2.1, 2.1 );

setEffRotateKey( spep_2 -3 + 162, ctBee, 0 );
setEffRotateKey( spep_2 -3 + 174, ctBee, 0 );

setEffAlphaKey( spep_2 -3 + 162, ctBee, 255 );
setEffAlphaKey( spep_2 -3 + 166, ctBee, 255 );
setEffAlphaKey( spep_2 -3 + 168, ctBee, 191 );
setEffAlphaKey( spep_2 -3 + 170, ctBee, 128 );
setEffAlphaKey( spep_2 -3 + 172, ctBee, 64 );
setEffAlphaKey( spep_2 -3 + 174, ctBee, 0 );

-- ** ホワイトフェード ** --
entryFade( spep_2 -3 + 156, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 ); --white fade

-- ** 音 ** --
playSe( spep_x + 16, 1018 );  --ごごご
SE0 = playSe( spep_2 + 158, 1177 );  --発射

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 194, 0, 0, 0, 0, 255 ); --黒 背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 180; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE0, 0 );

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

-- ** 次の準備 ** --
spep_3 = spep_2 + 192;

--------------------------------------
--光線命中(105F)
--------------------------------------
-- ** エフェクト等 ** --
beamhitf = entryEffect( spep_3 + 0, SP_03_a, 0x100, -1, 0, 0, 0 ); --光線命中（前面）(ef_003_a)
setEffMoveKey( spep_3 + 0, beamhitf, 0, 0, 0 );
setEffMoveKey( spep_3 + 105, beamhitf, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, beamhitf, 1.0, 1.0 );
setEffScaleKey( spep_3 + 105, beamhitf, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, beamhitf, 0 );
setEffRotateKey( spep_3 + 105, beamhitf, 0 );
setEffAlphaKey( spep_3 + 0, beamhitf, 255 );
setEffAlphaKey( spep_3 + 105, beamhitf, 255 );

beamhitb = entryEffect( spep_3 + 0, SP_03_b, 0x80, -1, 0, 0, 0 ); --光線命中（背面）(ef_003_b)
setEffMoveKey( spep_3 + 0, beamhitb, 0, 0, 0 );
setEffMoveKey( spep_3 + 105, beamhitb, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, beamhitb, 1.0, 1.0 );
setEffScaleKey( spep_3 + 105, beamhitb, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, beamhitb, 0 );
setEffRotateKey( spep_3 + 105, beamhitb, 0 );
setEffAlphaKey( spep_3 + 0, beamhitb, 255 );
setEffAlphaKey( spep_3 + 105, beamhitb, 255 );

-- ** 敵の動き ** --
setDisp( spep_3 -3 + 3, 1, 1 );
setDisp( spep_3 -3 + 106, 1, 0 );
changeAnime( spep_3 -3 + 3, 1, 102 );
changeAnime( spep_3 -3 + 62, 1, 118 );
changeAnime( spep_3 -3 + 72, 1, 107 );

--setMoveKey( spep_3 -3 + 0, 1, 57.6, 97.3 , 0 );
setMoveKey( spep_3 -3 + 3, 1, 69.5, 98.6, 0 );
setMoveKey( spep_3 -3 + 4, 1, 80.8, 99.8, 0 );
setMoveKey( spep_3 -3 + 6, 1, 91.2, 100.9, 0 );
setMoveKey( spep_3 -3 + 8, 1, 101, 101.9, 0 );
setMoveKey( spep_3 -3 + 10, 1, 110.1, 102.9, 0 );
setMoveKey( spep_3 -3 + 12, 1, 118.4, 103.7, 0 );
setMoveKey( spep_3 -3 + 14, 1, 126.2, 104.6, 0 );
setMoveKey( spep_3 -3 + 16, 1, 133.3, 105.3, 0 );
setMoveKey( spep_3 -3 + 18, 1, 139.8, 106, 0 );
setMoveKey( spep_3 -3 + 20, 1, 145.8, 106.6, 0 );
setMoveKey( spep_3 -3 + 22, 1, 151.2, 107.2, 0 );
setMoveKey( spep_3 -3 + 24, 1, 156.1, 107.7, 0 );
setMoveKey( spep_3 -3 + 26, 1, 160.5, 108.2, 0 );
setMoveKey( spep_3 -3 + 28, 1, 164.5, 108.6, 0 );
setMoveKey( spep_3 -3 + 30, 1, 168, 109, 0 );
setMoveKey( spep_3 -3 + 32, 1, 171.1, 109.3, 0 );
setMoveKey( spep_3 -3 + 34, 1, 173.8, 109.6, 0 );
setMoveKey( spep_3 -3 + 36, 1, 176.2, 109.9, 0 );
setMoveKey( spep_3 -3 + 38, 1, 178.2, 110.1, 0 );
setMoveKey( spep_3 -3 + 40, 1, 179.9, 110.2, 0 );
setMoveKey( spep_3 -3 + 42, 1, 181.3, 110.4, 0 );
setMoveKey( spep_3 -3 + 44, 1, 182.5, 110.5, 0 );
setMoveKey( spep_3 -3 + 46, 1, 183.4, 110.6, 0 );
setMoveKey( spep_3 -3 + 48, 1, 184.1, 110.7, 0 );
setMoveKey( spep_3 -3 + 50, 1, 184.7, 110.8, 0 );
setMoveKey( spep_3 -3 + 52, 1, 185.1, 110.8, 0 );
setMoveKey( spep_3 -3 + 54, 1, 185.3, 110.8, 0 );
setMoveKey( spep_3 -3 + 56, 1, 185.5, 110.8, 0 );
setMoveKey( spep_3 -3 + 58, 1, 185.6, 110.8, 0 );
setMoveKey( spep_3 -3 + 64, 1, 185.6, 110.8, 0 );
setMoveKey( spep_3 -3 + 66, 1, 194, 111.7, 0 );
setMoveKey( spep_3 -3 + 68, 1, 194, 121.7, 0 );
setMoveKey( spep_3 -3 + 71, 1, 194, 121.7, 0 );
setMoveKey( spep_3 -3 + 72, 1, 84.1, 56, 0 );
setMoveKey( spep_3 -3 + 74, 1, 63.1, 51.8, 0 );
setMoveKey( spep_3 -3 + 76, 1, 45.3, 48.2, 0 );
setMoveKey( spep_3 -3 + 78, 1, 30.4, 45.1, 0 );
setMoveKey( spep_3 -3 + 80, 1, 18, 42.6, 0 );
setMoveKey( spep_3 -3 + 82, 1, 7.9, 40.6, 0 );
setMoveKey( spep_3 -3 + 84, 1, -0.3, 38.9, 0 );
setMoveKey( spep_3 -3 + 86, 1, -6.8, 37.6, 0 );
setMoveKey( spep_3 -3 + 88, 1, -11.8, 36.5, 0 );
setMoveKey( spep_3 -3 + 90, 1, -15.7, 35.8, 0 );
setMoveKey( spep_3 -3 + 92, 1, -18.5, 35.2, 0 );
setMoveKey( spep_3 -3 + 94, 1, -20.6, 34.8, 0 );
setMoveKey( spep_3 -3 + 96, 1, -22, 34.5, 0 );
setMoveKey( spep_3 -3 + 98, 1, -22.9, 34.3, 0 );
setMoveKey( spep_3 -3 + 100, 1, -23.4, 34.2, 0 );
setMoveKey( spep_3 -3 + 102, 1, -23.7, 34.1, 0 );
setMoveKey( spep_3 -3 + 104, 1, -23.9, 34.1, 0 );
setMoveKey( spep_3 -3 + 106, 1, -24, 34.1, 0 );

--setScaleKey( spep_3 -3 + 0, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 3, 1, 2.05, 2.05 );
setScaleKey( spep_3 -3 + 4, 1, 2.12, 2.12 );
setScaleKey( spep_3 -3 + 6, 1, 2.18, 2.18 );
setScaleKey( spep_3 -3 + 8, 1, 2.23, 2.23 );
setScaleKey( spep_3 -3 + 10, 1, 2.28, 2.28 );
setScaleKey( spep_3 -3 + 12, 1, 2.33, 2.33 );
setScaleKey( spep_3 -3 + 14, 1, 2.38, 2.38 );
setScaleKey( spep_3 -3 + 16, 1, 2.42, 2.42 );
setScaleKey( spep_3 -3 + 18, 1, 2.46, 2.46 );
setScaleKey( spep_3 -3 + 20, 1, 2.49, 2.49 );
setScaleKey( spep_3 -3 + 22, 1, 2.52, 2.52 );
setScaleKey( spep_3 -3 + 24, 1, 2.55, 2.55 );
setScaleKey( spep_3 -3 + 26, 1, 2.57, 2.57 );
setScaleKey( spep_3 -3 + 28, 1, 2.6, 2.6 );
setScaleKey( spep_3 -3 + 30, 1, 2.62, 2.62 );
setScaleKey( spep_3 -3 + 32, 1, 2.64, 2.64 );
setScaleKey( spep_3 -3 + 34, 1, 2.65, 2.65 );
setScaleKey( spep_3 -3 + 36, 1, 2.66, 2.66 );
setScaleKey( spep_3 -3 + 38, 1, 2.68, 2.68 );
setScaleKey( spep_3 -3 + 40, 1, 2.69, 2.69 );
setScaleKey( spep_3 -3 + 42, 1, 2.69, 2.69 );
setScaleKey( spep_3 -3 + 44, 1, 2.7, 2.7 );
setScaleKey( spep_3 -3 + 46, 1, 2.71, 2.71 );
setScaleKey( spep_3 -3 + 50, 1, 2.71, 2.71 );
setScaleKey( spep_3 -3 + 52, 1, 2.72, 2.72 );
setScaleKey( spep_3 -3 + 64, 1, 2.72, 2.72 );
setScaleKey( spep_3 -3 + 66, 1, 2.77, 2.77 );
setScaleKey( spep_3 -3 + 71, 1, 2.77, 2.77 );
setScaleKey( spep_3 -3 + 72, 1, 0.81, 0.81 );
setScaleKey( spep_3 -3 + 74, 1, 0.87, 0.87 );
setScaleKey( spep_3 -3 + 76, 1, 0.92, 0.92 );
setScaleKey( spep_3 -3 + 78, 1, 0.97, 0.97 );
setScaleKey( spep_3 -3 + 80, 1, 1, 1 );
setScaleKey( spep_3 -3 + 82, 1, 1.03, 1.03 );
setScaleKey( spep_3 -3 + 84, 1, 1.06, 1.06 );
setScaleKey( spep_3 -3 + 86, 1, 1.08, 1.08 );
setScaleKey( spep_3 -3 + 88, 1, 1.09, 1.09 );
setScaleKey( spep_3 -3 + 90, 1, 1.1, 1.1 );
setScaleKey( spep_3 -3 + 92, 1, 1.11, 1.11 );
setScaleKey( spep_3 -3 + 94, 1, 1.12, 1.12 );
setScaleKey( spep_3 -3 + 96, 1, 1.12, 1.12 );
setScaleKey( spep_3 -3 + 98, 1, 1.13, 1.13 );
setScaleKey( spep_3 -3 + 106, 1, 1.13, 1.13 );

setRotateKey( spep_3 -3 + 3, 1, -4.5 );
setRotateKey( spep_3 -3 + 71, 1, -4.5 );
setRotateKey( spep_3 -3 + 72, 1, -31 );
setRotateKey( spep_3 -3 + 74, 1, -28.2 );
setRotateKey( spep_3 -3 + 76, 1, -25.9 );
setRotateKey( spep_3 -3 + 78, 1, -23.9 );
setRotateKey( spep_3 -3 + 80, 1, -22.3 );
setRotateKey( spep_3 -3 + 82, 1, -21 );
setRotateKey( spep_3 -3 + 84, 1, -19.9 );
setRotateKey( spep_3 -3 + 86, 1, -19 );
setRotateKey( spep_3 -3 + 88, 1, -18.4 );
setRotateKey( spep_3 -3 + 90, 1, -17.9 );
setRotateKey( spep_3 -3 + 92, 1, -17.5 );
setRotateKey( spep_3 -3 + 94, 1, -17.2 );
setRotateKey( spep_3 -3 + 96, 1, -17 );
setRotateKey( spep_3 -3 + 98, 1, -16.9 );
setRotateKey( spep_3 -3 + 100, 1, -16.9 );
setRotateKey( spep_3 -3 + 102, 1, -16.8 );
setRotateKey( spep_3 -3 + 106, 1, -16.8 );

-- ** ホワイトフェード ** --
entryFade( spep_3 -3 + 64, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 ); --white fade
entryFade( spep_3 -3 + 70, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 ); --white fade

-- ** 音 ** --
stopSe( spep_3 + 66, SE0, 0 );
playSe( spep_3 + 66, 1162 );  --着弾

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 105, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 104;

------------------------------------------------------
-- 敵、落下して川へ墜落(52F)
------------------------------------------------------

-- ** エフェクト等 ** --
rakkaf = entryEffect( spep_4 + 0, SP_04_a, 0x100, -1, 0, 0, 0 ); --敵、落下して川へ墜落（前面）(ef_004_a)
setEffMoveKey( spep_4 + 0, rakkaf, 0, 0, 0 );
setEffMoveKey( spep_4 + 52, rakkaf, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, rakkaf, 1.0, 1.0 );
setEffScaleKey( spep_4 + 52, rakkaf, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, rakkaf, 0 );
setEffRotateKey( spep_4 + 52, rakkaf, 0 );
setEffAlphaKey( spep_4 + 0, rakkaf, 255 );
setEffAlphaKey( spep_4 + 52, rakkaf, 255 );

rakkab = entryEffect( spep_4 + 0, SP_04_b, 0x80, -1, 0, 0, 0 ); --敵、落下して川へ墜落（背面）(ef_004_b)
setEffMoveKey( spep_4 + 0, rakkab, 0, 0, 0 );
setEffMoveKey( spep_4 + 52, rakkab, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, rakkab, 1.0, 1.0 );
setEffScaleKey( spep_4 + 52, rakkab, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, rakkab, 0 );
setEffRotateKey( spep_4 + 52, rakkab, 0 );
setEffAlphaKey( spep_4 + 0, rakkab, 255 );
setEffAlphaKey( spep_4 + 52, rakkab, 255 );

-- ** 敵の動き ** --
setDisp( spep_4 -3 + 3, 1, 1 );
setDisp( spep_4 -3 + 22, 1, 0 );
changeAnime( spep_4 -3 + 3, 1, 108 );

--setMoveKey( spep_4 -3 + 0, 1, -277.8, 532, 0 );
setMoveKey( spep_4 -3 + 3, 1, -276.8, 526.9, 0 );
setMoveKey( spep_4 -3 + 4, 1, -273.7, 511.5, 0 );
setMoveKey( spep_4 -3 + 6, 1, -268.6, 485.9, 0 );
setMoveKey( spep_4 -3 + 8, 1, -261.4, 450, 0 );
setMoveKey( spep_4 -3 + 10, 1, -252.2, 403.9, 0 );
setMoveKey( spep_4 -3 + 12, 1, -240.9, 347.5, 0 );
setMoveKey( spep_4 -3 + 14, 1, -227.6, 280.9, 0 );
setMoveKey( spep_4 -3 + 16, 1, -212.2, 204.1, 0 );
setMoveKey( spep_4 -3 + 18, 1, -194.8, 116.9, 0 );
setMoveKey( spep_4 -3 + 20, 1, -175.3, 19.6, 0 );
setMoveKey( spep_4 -3 + 22, 1, -153.8, -88, 0 );

setScaleKey( spep_4 -3 + 3, 1, 0.23, 0.23 );
setScaleKey( spep_4 -3 + 22, 1, 0.23, 0.23 );

--setRotateKey( spep_4 -3 + 0, 1, 105.5 );
setRotateKey( spep_4 -3 + 3, 1, 105.5 );
setRotateKey( spep_4 -3 + 4, 1, 105.4 );
setRotateKey( spep_4 -3 + 6, 1, 105.2 );
setRotateKey( spep_4 -3 + 8, 1, 104.9 );
setRotateKey( spep_4 -3 + 10, 1, 104.6 );
setRotateKey( spep_4 -3 + 12, 1, 104.2 );
setRotateKey( spep_4 -3 + 14, 1, 103.7 );
setRotateKey( spep_4 -3 + 16, 1, 103.1 );
setRotateKey( spep_4 -3 + 18, 1, 102.5 );
setRotateKey( spep_4 -3 + 20, 1, 101.8 );
setRotateKey( spep_4 -3 + 22, 1, 101 );

-- ** 音 ** --
playSe( spep_4 + 16, 1163 );  --川に落ちる
setSeVolume( spep_4 + 24, 1163, 120 );

SE1 = playSe( spep_4 + 0, 1164 );  --川流れる
setSeVolume( spep_4 + 0, 1164, 100 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 52, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 52;

------------------------------------------------------
-- 敵、滝の方へ流される(54F)
------------------------------------------------------

-- ** エフェクト等 ** --
taki = entryEffect( spep_5 + 0, SP_05, 0x100, -1, 0, 0, 0 ); --敵、滝の方へ流される(ef_005)
setEffMoveKey( spep_5 + 0, taki, 0, 0, 0 );
setEffMoveKey( spep_5 + 54, taki, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, taki, 1.0, 1.0 );
setEffScaleKey( spep_5 + 54, taki, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, taki, 0 );
setEffRotateKey( spep_5 + 54, taki, 0 );
setEffAlphaKey( spep_5 + 0, taki, 255 );
setEffAlphaKey( spep_5 + 54, taki, 255 );

-- ** 敵の動き ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 55, 1, 0 );
changeAnime( spep_5 + 0, 1, 107 );

--setMoveKey( spep_5 -3 + 0, 1, -159.9, -280, 0 );
setMoveKey( spep_5 -3 + 3, 1, -141.4, -258.6, 0 );
setMoveKey( spep_5 -3 + 4, 1, -123.3, -237.8, 0 );
setMoveKey( spep_5 -3 + 6, 1, -105.6, -217.6, 0 );
setMoveKey( spep_5 -3 + 8, 1, -88.4, -197.8, 0 );
setMoveKey( spep_5 -3 + 10, 1, -71.6, -178.4, 0 );
setMoveKey( spep_5 -3 + 12, 1, -55.1, -159.5, 0 );
setMoveKey( spep_5 -3 + 14, 1, -39, -141, 0 );
setMoveKey( spep_5 -3 + 16, 1, -23.2, -122.9, 0 );
setMoveKey( spep_5 -3 + 18, 1, -7.8, -105.1, 0 );
setMoveKey( spep_5 -3 + 20, 1, 7.4, -87.7, 0 );
setMoveKey( spep_5 -3 + 22, 1, 22.2, -70.7, 0 );
setMoveKey( spep_5 -3 + 24, 1, 36.7, -53.9, 0 );
setMoveKey( spep_5 -3 + 26, 1, 51, -37.5, 0 );
setMoveKey( spep_5 -3 + 28, 1, 65, -21.5, 0 );
setMoveKey( spep_5 -3 + 30, 1, 78.7, -5.7, 0 );
setMoveKey( spep_5 -3 + 32, 1, 92.1, 9.7, 0 );
setMoveKey( spep_5 -3 + 34, 1, 105.3, 24.9,  0 );
setMoveKey( spep_5 -3 + 36, 1, 118.2, 39.7, 0 );
setMoveKey( spep_5 -3 + 38, 1, 130.8, 54.2, 0 );
setMoveKey( spep_5 -3 + 40, 1, 143.1, 68.4, 0 );
setMoveKey( spep_5 -3 + 42, 1, 155.2, 82.2, 0 );
setMoveKey( spep_5 -3 + 44, 1, 166.9, 95.7, 0 );
setMoveKey( spep_5 -3 + 46, 1, 178.4, 108.9, 0 );
setMoveKey( spep_5 -3 + 48, 1, 189.6, 121.7, 0 );
setMoveKey( spep_5 -3 + 50, 1, 200.4, 134.2, 0 );
setMoveKey( spep_5 -3 + 52, 1, 210.9, 146.2, 0 );
setMoveKey( spep_5 -3 + 54, 1, 221, 157.9, 0 );
setMoveKey( spep_5 -3 + 56, 1, 230.8, 169.1, 0 );
setMoveKey( spep_5 -3 + 57, 1, 240, 179.9, 0 );

--setScaleKey( spep_5 -3 + 0, 1, 0.8, 0.8 );
setScaleKey( spep_5 -3 + 3, 1, 0.85, 0.85 );
setScaleKey( spep_5 -3 + 4, 1, 0.91, 0.91 );
setScaleKey( spep_5 -3 + 6, 1, 0.96, 0.96 );
setScaleKey( spep_5 -3 + 8, 1, 1.01, 1.01 );
setScaleKey( spep_5 -3 + 10, 1, 1.06, 1.06 );
setScaleKey( spep_5 -3 + 12, 1, 1.11, 1.11 );
setScaleKey( spep_5 -3 + 14, 1, 1.16, 1.16 );
setScaleKey( spep_5 -3 + 16, 1, 1.21, 1.21 );
setScaleKey( spep_5 -3 + 18, 1, 1.26, 1.26 );
setScaleKey( spep_5 -3 + 20, 1, 1.3, 1.3 );
setScaleKey( spep_5 -3 + 22, 1, 1.35, 1.35 );
setScaleKey( spep_5 -3 + 24, 1, 1.39, 1.39 );
setScaleKey( spep_5 -3 + 26, 1, 1.43, 1.43 );
setScaleKey( spep_5 -3 + 28, 1, 1.47, 1.47 );
setScaleKey( spep_5 -3 + 30, 1, 1.52, 1.52 );
setScaleKey( spep_5 -3 + 32, 1, 1.56, 1.56 );
setScaleKey( spep_5 -3 + 34, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 36, 1, 1.63, 1.63 );
setScaleKey( spep_5 -3 + 38, 1, 1.67, 1.67 );
setScaleKey( spep_5 -3 + 40, 1, 1.71, 1.71 );
setScaleKey( spep_5 -3 + 42, 1, 1.74, 1.74 );
setScaleKey( spep_5 -3 + 44, 1, 1.78, 1.78 );
setScaleKey( spep_5 -3 + 46, 1, 1.81, 1.81 );
setScaleKey( spep_5 -3 + 48, 1, 1.85, 1.85 );
setScaleKey( spep_5 -3 + 50, 1, 1.88, 1.88 );
setScaleKey( spep_5 -3 + 52, 1, 1.91, 1.91 );
setScaleKey( spep_5 -3 + 54, 1, 1.94, 1.94 );
setScaleKey( spep_5 -3 + 56, 1, 1.97, 1.97 );
setScaleKey( spep_5 -3 + 57, 1, 2, 2 );

setRotateKey( spep_5 -3 + 3, 1, -70 );
setRotateKey( spep_5 -3 + 57, 1, -70 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 54, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
setSeVolume( spep_5 + 0, 1164, 120 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 52;

------------------------------------------------------
-- 飛び上がる(46F)
------------------------------------------------------
-- ** エフェクト等 ** --
jump = entryEffect( spep_6 + 0, SP_06, 0x80, -1, 0, 0, 0 ); --飛び上がる(ef_006)
setEffMoveKey( spep_6 + 0, jump, 0, 0, 0 );
setEffMoveKey( spep_6 + 46, jump, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, jump, 1.0, 1.0 );
setEffScaleKey( spep_6 + 46, jump, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, jump, 0 );
setEffRotateKey( spep_6 + 46, jump, 0 );
setEffAlphaKey( spep_6 + 0, jump, 255 );
setEffAlphaKey( spep_6 + 46, jump, 255 );

-- ** 書き文字エントリー ** --
ctdon = entryEffectLife( spep_6 -3 + 26, 10019, 12, 0x100, -1, 0, 3.1, 206 ); --ドンッ
setEffMoveKey( spep_6 -3 + 26, ctdon, 3.1, 206, 0 );
setEffMoveKey( spep_6 -3 + 28, ctdon, 9.1, 274.3, 0 );
setEffMoveKey( spep_6 -3 + 30, ctdon, 15, 342.7, 0 );
setEffMoveKey( spep_6 -3 + 32, ctdon, 15, 346.5, 0 );
setEffMoveKey( spep_6 -3 + 34, ctdon, 15, 350.2, 0 );
setEffMoveKey( spep_6 -3 + 36, ctdon, 15, 354, 0 );
setEffMoveKey( spep_6 -3 + 38, ctdon, 15.1, 357.8, 0 );

setEffScaleKey( spep_6 -3 + 26, ctdon, 1.85, 1.85 );
setEffScaleKey( spep_6 -3 + 28, ctdon, 2.28, 2.28 );
setEffScaleKey( spep_6 -3 + 30, ctdon, 2.7, 2.7 );
setEffScaleKey( spep_6 -3 + 32, ctdon, 2.77, 2.77 );
setEffScaleKey( spep_6 -3 + 34, ctdon, 2.84, 2.84 );
setEffScaleKey( spep_6 -3 + 36, ctdon, 2.91, 2.91 );
setEffScaleKey( spep_6 -3 + 38, ctdon, 2.98, 2.98 );

setEffRotateKey( spep_6 -3 + 26, ctdon, 0 );
setEffRotateKey( spep_6 -3 + 38, ctdon, 0 );

setEffAlphaKey( spep_6 -3 + 26, ctdon, 255 );
setEffAlphaKey( spep_6 -3 + 30, ctdon, 255 );
setEffAlphaKey( spep_6 -3 + 32, ctdon, 191 );
setEffAlphaKey( spep_6 -3 + 34, ctdon, 128 );
setEffAlphaKey( spep_6 -3 + 36, ctdon, 64 );
setEffAlphaKey( spep_6 -3 + 38, ctdon, 0 );

-- ** 音 ** --
playSe( spep_6 + 26, 1012 );  --飛び上がる
playSe( spep_6 + 26, 1018 );  --飛び上がる
playSe( spep_6 + 26, 44 );  --飛び上がる
setSeVolume( spep_6 + 26, 1018, 70 );
setSeVolume( spep_6 + 26, 44, 83 );

setSeVolume( spep_6 + 0, 1164, 90 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 46, 0, 0, 0, 0, 225); --黒フェード

-- ** 次の準備 ** --
spep_7 = spep_6 + 44;

------------------------------------------------------
-- 奥から手前に飛んで移動(48F)
------------------------------------------------------
-- ** エフェクト等 ** --
ido = entryEffect( spep_7 + 0, SP_07, 0x80, -1, 0, 0, 0 ); --奥から手前に飛んで移動(ef_007)
setEffMoveKey( spep_7 + 0, ido, 0, 0, 0 );
setEffMoveKey( spep_7 + 48, ido, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, ido, 1.0, 1.0 );
setEffScaleKey( spep_7 + 48, ido, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, ido, 0 );
setEffRotateKey( spep_7 + 48, ido, 0 );
setEffAlphaKey( spep_7 + 0, ido, 255 );
setEffAlphaKey( spep_7 + 48, ido, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_7 + 40, 906, 8, 0x100, -1, 0, 0, 0 );
setEffShake( spep_7 + 40, shuchusen1, 8, 20 );
setEffMoveKey( spep_7 + 40, shuchusen1, 0, 0, 0 );
setEffMoveKey( spep_7 + 48, shuchusen1, 0, 0, 0 );

setEffScaleKey( spep_7 + 40, shuchusen1, 1, 1 );
setEffScaleKey( spep_7 + 48, shuchusen1, 1, 1 );

setEffRotateKey( spep_7 + 40, shuchusen1, 180 );
setEffRotateKey( spep_7 + 48, shuchusen1, 180 );

setEffAlphaKey( spep_7 + 40, shuchusen1, 255 );
setEffAlphaKey( spep_7 + 48, shuchusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 48, 0, 0, 0, 0, 225); --黒フェード

-- ** 音 ** --
playSe( spep_7 + 0, 8 );  --向かう

-- ** 次の準備 ** --
spep_8 = spep_7 + 46;

------------------------------------------------------
-- 滝底へ光線(54F)
------------------------------------------------------
-- ** エフェクト等 ** --
hassha = entryEffect( spep_8 + 0, SP_08, 0x100, -1, 0, 0, 0 ); --滝底へ光線(ef_008)
setEffMoveKey( spep_8 + 0, hassha, 0, 0, 0 );
setEffMoveKey( spep_8 + 54, hassha, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_8 + 54, hassha, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, hassha, 0 );
setEffRotateKey( spep_8 + 54, hassha, 0 );
setEffAlphaKey( spep_8 + 0, hassha, 255 );
setEffAlphaKey( spep_8 + 54, hassha, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_8 + 32, 10012, 24, 0x100, -1, 0, -10, 258.9 ); --ズオッ
setEffMoveKey( spep_8 + 32, ctzuo, -10, 258.9, 0 );
setEffMoveKey( spep_8 + 34, ctzuo, 3.2, 277.4, 0 );
setEffMoveKey( spep_8 + 36, ctzuo, -12.1, 324.4, 0 );
setEffMoveKey( spep_8 + 38, ctzuo, -13.2, 357.1, 0 );
setEffMoveKey( spep_8 + 40, ctzuo, 5.5, 338.4, 0 );
setEffMoveKey( spep_8 + 42, ctzuo, -13.2, 357.1, 0 );
setEffMoveKey( spep_8 + 44, ctzuo, 5.5, 338.4, 0 );
setEffMoveKey( spep_8 + 46, ctzuo, -13.2, 357.1, 0 );
setEffMoveKey( spep_8 + 48, ctzuo, 5.5, 338.4, 0 );
setEffMoveKey( spep_8 + 50, ctzuo, -13.2, 357.1, 0 );
setEffMoveKey( spep_8 + 52, ctzuo, 5.5, 338.4, 0 );
setEffMoveKey( spep_8 + 54, ctzuo, -13.2, 357.1, 0 );
setEffMoveKey( spep_8 + 56, ctzuo, 5.5, 338.4, 0 );

setEffScaleKey( spep_8 + 32, ctzuo, 2.6, 2.6 );
setEffScaleKey( spep_8 + 34, ctzuo, 2.71, 2.71 );
setEffScaleKey( spep_8 + 36, ctzuo, 2.82, 2.82 );
setEffScaleKey( spep_8 + 38, ctzuo, 2.93, 2.93 );
setEffScaleKey( spep_8 + 56, ctzuo, 2.93, 2.93 );

setEffRotateKey( spep_8 + 32, ctzuo, 20 );
setEffRotateKey( spep_8 + 56, ctzuo, 20 );

setEffAlphaKey( spep_8 + 32, ctzuo, 255 );
setEffAlphaKey( spep_8 + 56, ctzuo, 255 );

-- ** ホワイトフェード ** --
entryFade( spep_8 -3 + 20, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 ); --white fade
entryFade( spep_8 -3 + 22, 0, 2, 0, 180, 180, 180, 255 ); --white fade
entryFade( spep_8 -3 + 30, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 ); --white fade
entryFade( spep_8 -3 + 34, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 100 ); --white fade
entryFade( spep_8 -3 + 38, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 77 ); --white fade
entryFade( spep_8 -3 + 42, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 140 ); --white fade
entryFade( spep_8 -3 + 48, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 128 ); --white fade
entryFade( spep_8 -3 + 50, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 51 ); --white fade
entryFade( spep_8 -3 + 52, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 90 ); --white fade
entryFade( spep_8 -3 + 56, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 51 ); --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 54, 0, 0, 0, 0, 225); --黒フェード

-- ** 音 ** --
playSe( spep_8 + 30, 1178 );  --発射
playSe( spep_8 + 34, 1179 );  --発射２

-- ** 次の準備 ** --
spep_9 = spep_8 + 52;

------------------------------------------------------
-- 滝底で着弾して爆発(56F)
------------------------------------------------------
-- ** エフェクト等 ** --
takizoko = entryEffect( spep_9 + 0, SP_09, 0x100, -1, 0, 0, 0 ); --滝底で着弾して爆発(ef_009)
setEffMoveKey( spep_9 + 0, takizoko, 0, 0, 0 );
setEffMoveKey( spep_9 + 56, takizoko, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, takizoko, 1.0, 1.0 );
setEffScaleKey( spep_9 + 56, takizoko, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, takizoko, 0 );
setEffRotateKey( spep_9 + 56, takizoko, 0 );
setEffAlphaKey( spep_9 + 0, takizoko, 255 );
setEffAlphaKey( spep_9 + 56, takizoko, 255 );

-- ** ホワイトフェード ** --
entryFade( spep_9 -3 + 2, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 31 ); --white fade
entryFade( spep_9 -3 + 6, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 31 ); --white fade
entryFade( spep_9 -3 + 10, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 31 ); --white fade
entryFade( spep_9 -3 + 14, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 31 ); --white fade
entryFade( spep_9 -3 + 18, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 31 ); --white fade
entryFade( spep_9 -3 + 22, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 31 ); --white fade
entryFade( spep_9 -3 + 24, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 ); --white fade
entryFade( spep_9 -3 + 30, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 31 ); --white fade
entryFade( spep_9 -3 + 34, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 31 ); --white fade
entryFade( spep_9 -3 + 38, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 31 ); --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 56, 0, 0, 0, 0, 225); --黒フェード

-- ** 音 ** --
playSe( spep_9 + 28, 1023 );  --着弾

-- ** 次の準備 ** --
spep_10 = spep_9 + 56;

------------------------------------------------------
-- 滝近くで水しぶき(70F)
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_10 + 0, SP_10, 0x100, -1, 0, 0, 0 ); --滝近くで水しぶき(ef_010)
setEffMoveKey( spep_10 + 0, hit, 0, 0, 0 );
setEffMoveKey( spep_10 + 66, hit, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_10 + 66, hit, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, hit, 0 );
setEffRotateKey( spep_10 + 66, hit, 0 );
setEffAlphaKey( spep_10 + 0, hit, 255 );
setEffAlphaKey( spep_10 + 66, hit, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 66, 0, 0, 0, 0, 225); --黒フェード

-- ** 音 ** --
SE2 = playSe( spep_10 + 4, 1165 );  --水ぶわー

-- ** 次の準備 ** --
spep_11 = spep_10 + 66;

------------------------------------------------------
-- クレーターが水で塞がれる(118F)
------------------------------------------------------
-- ** エフェクト等 ** --
crater = entryEffect( spep_11 + 0, SP_11, 0x100, -1, 0, 0, 0 ); --クレーターが水で塞がれる(ef_011)
setEffMoveKey( spep_11 + 0, crater, 0, 0, 0 );
setEffMoveKey( spep_11 +118, crater, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, crater, 1.0, 1.0 );
setEffScaleKey( spep_11 + 118, crater, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, crater, 0 );
setEffRotateKey( spep_11 + 118, crater, 0 );
setEffAlphaKey( spep_11 + 0, crater, 255 );
setEffAlphaKey( spep_11 + 118, crater, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_11 + 0, 0, 118, 0, 0, 0, 0, 225); --黒フェード

-- ** 音 ** --
setSeVolume( spep_11 + 4, 1165, 80 );
playSe( spep_11 + 0, 1166 );  --水塞がれる
stopSe( spep_11 + 116, SE1, 0 );
stopSe( spep_11 + 116, SE2, 0 );

-- ** ダメージ表示 ** --
dealDamage( spep_11 + 6 );
endPhase( spep_11 + 106  );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 立ちポーズで登場(86F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tachi = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); --立ちポーズで登場(ef_001)
setEffMoveKey( spep_0 + 0, tachi, 0, 0, 0 );
setEffMoveKey( spep_0 + 84, tachi, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tachi, -1.0, 1.0 );
setEffScaleKey( spep_0 + 84, tachi, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tachi, 0 );
setEffRotateKey( spep_0 + 84, tachi, 0 );
setEffAlphaKey( spep_0 + 0, tachi, 255 );
setEffAlphaKey( spep_0 + 84, tachi, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 84, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
playSe( spep_0 + 0, 1072 );
setSeVolume( spep_0 + 0, 1072, 120 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 84;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0 ); --カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 ); --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0, 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0, 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); --white fade
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );--white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

--------------------------------------
--アップ、見上げて目から光線(194F)
--------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 ); --アップ、見上げて目から光線(ef_002)
setEffMoveKey( spep_2 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_2 + 194, beam, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_2 + 194, beam, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam, 0 );
setEffRotateKey( spep_2 + 194, beam, 0 );
setEffAlphaKey( spep_2 + 0, beam, 255 );
setEffAlphaKey( spep_2 + 194, beam, 255 );

spep_x = spep_2 + 54;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9, 515.5, 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9, 515.5, 0 );

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

ctBee = entryEffectLife( spep_2 -3 + 162, 10024, 12, 0x100, -1, 0, -28.1, 276 ); --ビッ
setEffMoveKey( spep_2 -3 + 162, ctBee, -28.1, 276, 0 );
setEffMoveKey( spep_2 -3 + 164, ctBee, -2.6, 345.4, 0 );
setEffMoveKey( spep_2 -3 + 166, ctBee, -62.9, 363.8, 0 );
setEffMoveKey( spep_2 -3 + 168, ctBee, 8.5, 290.7, 0 );
setEffMoveKey( spep_2 -3 + 170, ctBee, -28.1, 363.8, 0 );
setEffMoveKey( spep_2 -3 + 172, ctBee, 12.1, 404, 0 );
setEffMoveKey( spep_2 -3 + 174, ctBee, 13.9, 405.7, 0 );

setEffScaleKey( spep_2 -3 + 162, ctBee, 0.81, 0.81 );
setEffScaleKey( spep_2 -3 + 164, ctBee, 1.27, 1.27 );
setEffScaleKey( spep_2 -3 + 166, ctBee, 1.74, 1.74 );
setEffScaleKey( spep_2 -3 + 168, ctBee, 1.83, 1.83 );
setEffScaleKey( spep_2 -3 + 170, ctBee, 1.92, 1.92 );
setEffScaleKey( spep_2 -3 + 172, ctBee, 2.01, 2.01 );
setEffScaleKey( spep_2 -3 + 174, ctBee, 2.1, 2.1 );

setEffRotateKey( spep_2 -3 + 162, ctBee, 0 );
setEffRotateKey( spep_2 -3 + 174, ctBee, 0 );

setEffAlphaKey( spep_2 -3 + 162, ctBee, 255 );
setEffAlphaKey( spep_2 -3 + 166, ctBee, 255 );
setEffAlphaKey( spep_2 -3 + 168, ctBee, 191 );
setEffAlphaKey( spep_2 -3 + 170, ctBee, 128 );
setEffAlphaKey( spep_2 -3 + 172, ctBee, 64 );
setEffAlphaKey( spep_2 -3 + 174, ctBee, 0 );

-- ** ホワイトフェード ** --
entryFade( spep_2 -3 + 156, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 ); --white fade

-- ** 音 ** --
playSe( spep_x + 16, 1018 );  --ごごご
SE0 = playSe( spep_2 + 158, 1177 );  --発射

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 194, 0, 0, 0, 0, 255 ); --黒 背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 180; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE0, 0 );

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

-- ** 次の準備 ** --
spep_3 = spep_2 + 192;

--------------------------------------
--光線命中(105F)
--------------------------------------
-- ** エフェクト等 ** --
beamhitf = entryEffect( spep_3 + 0, SP_03_a, 0x100, -1, 0, 0, 0 ); --光線命中（前面）(ef_003_a)
setEffMoveKey( spep_3 + 0, beamhitf, 0, 0, 0 );
setEffMoveKey( spep_3 + 105, beamhitf, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, beamhitf, 1.0, 1.0 );
setEffScaleKey( spep_3 + 105, beamhitf, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, beamhitf, 0 );
setEffRotateKey( spep_3 + 105, beamhitf, 0 );
setEffAlphaKey( spep_3 + 0, beamhitf, 255 );
setEffAlphaKey( spep_3 + 105, beamhitf, 255 );

beamhitb = entryEffect( spep_3 + 0, SP_03_b, 0x80, -1, 0, 0, 0 ); --光線命中（背面）(ef_003_b)
setEffMoveKey( spep_3 + 0, beamhitb, 0, 0, 0 );
setEffMoveKey( spep_3 + 105, beamhitb, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, beamhitb, 1.0, 1.0 );
setEffScaleKey( spep_3 + 105, beamhitb, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, beamhitb, 0 );
setEffRotateKey( spep_3 + 105, beamhitb, 0 );
setEffAlphaKey( spep_3 + 0, beamhitb, 255 );
setEffAlphaKey( spep_3 + 105, beamhitb, 255 );

-- ** 敵の動き ** --
setDisp( spep_3 -3 + 3, 1, 1 );
setDisp( spep_3 -3 + 106, 1, 0 );
changeAnime( spep_3 -3 + 3, 1, 102 );
changeAnime( spep_3 -3 + 62, 1, 118 );
changeAnime( spep_3 -3 + 72, 1, 107 );

--setMoveKey( spep_3 -3 + 0, 1, 57.6, 97.3 , 0 );
setMoveKey( spep_3 -3 + 3, 1, 69.5, 98.6, 0 );
setMoveKey( spep_3 -3 + 4, 1, 80.8, 99.8, 0 );
setMoveKey( spep_3 -3 + 6, 1, 91.2, 100.9, 0 );
setMoveKey( spep_3 -3 + 8, 1, 101, 101.9, 0 );
setMoveKey( spep_3 -3 + 10, 1, 110.1, 102.9, 0 );
setMoveKey( spep_3 -3 + 12, 1, 118.4, 103.7, 0 );
setMoveKey( spep_3 -3 + 14, 1, 126.2, 104.6, 0 );
setMoveKey( spep_3 -3 + 16, 1, 133.3, 105.3, 0 );
setMoveKey( spep_3 -3 + 18, 1, 139.8, 106, 0 );
setMoveKey( spep_3 -3 + 20, 1, 145.8, 106.6, 0 );
setMoveKey( spep_3 -3 + 22, 1, 151.2, 107.2, 0 );
setMoveKey( spep_3 -3 + 24, 1, 156.1, 107.7, 0 );
setMoveKey( spep_3 -3 + 26, 1, 160.5, 108.2, 0 );
setMoveKey( spep_3 -3 + 28, 1, 164.5, 108.6, 0 );
setMoveKey( spep_3 -3 + 30, 1, 168, 109, 0 );
setMoveKey( spep_3 -3 + 32, 1, 171.1, 109.3, 0 );
setMoveKey( spep_3 -3 + 34, 1, 173.8, 109.6, 0 );
setMoveKey( spep_3 -3 + 36, 1, 176.2, 109.9, 0 );
setMoveKey( spep_3 -3 + 38, 1, 178.2, 110.1, 0 );
setMoveKey( spep_3 -3 + 40, 1, 179.9, 110.2, 0 );
setMoveKey( spep_3 -3 + 42, 1, 181.3, 110.4, 0 );
setMoveKey( spep_3 -3 + 44, 1, 182.5, 110.5, 0 );
setMoveKey( spep_3 -3 + 46, 1, 183.4, 110.6, 0 );
setMoveKey( spep_3 -3 + 48, 1, 184.1, 110.7, 0 );
setMoveKey( spep_3 -3 + 50, 1, 184.7, 110.8, 0 );
setMoveKey( spep_3 -3 + 52, 1, 185.1, 110.8, 0 );
setMoveKey( spep_3 -3 + 54, 1, 185.3, 110.8, 0 );
setMoveKey( spep_3 -3 + 56, 1, 185.5, 110.8, 0 );
setMoveKey( spep_3 -3 + 58, 1, 185.6, 110.8, 0 );
setMoveKey( spep_3 -3 + 64, 1, 185.6, 110.8, 0 );
setMoveKey( spep_3 -3 + 66, 1, 194, 111.7, 0 );
setMoveKey( spep_3 -3 + 68, 1, 194, 121.7, 0 );
setMoveKey( spep_3 -3 + 71, 1, 194, 121.7, 0 );
setMoveKey( spep_3 -3 + 72, 1, 84.1, 56, 0 );
setMoveKey( spep_3 -3 + 74, 1, 63.1, 51.8, 0 );
setMoveKey( spep_3 -3 + 76, 1, 45.3, 48.2, 0 );
setMoveKey( spep_3 -3 + 78, 1, 30.4, 45.1, 0 );
setMoveKey( spep_3 -3 + 80, 1, 18, 42.6, 0 );
setMoveKey( spep_3 -3 + 82, 1, 7.9, 40.6, 0 );
setMoveKey( spep_3 -3 + 84, 1, -0.3, 38.9, 0 );
setMoveKey( spep_3 -3 + 86, 1, -6.8, 37.6, 0 );
setMoveKey( spep_3 -3 + 88, 1, -11.8, 36.5, 0 );
setMoveKey( spep_3 -3 + 90, 1, -15.7, 35.8, 0 );
setMoveKey( spep_3 -3 + 92, 1, -18.5, 35.2, 0 );
setMoveKey( spep_3 -3 + 94, 1, -20.6, 34.8, 0 );
setMoveKey( spep_3 -3 + 96, 1, -22, 34.5, 0 );
setMoveKey( spep_3 -3 + 98, 1, -22.9, 34.3, 0 );
setMoveKey( spep_3 -3 + 100, 1, -23.4, 34.2, 0 );
setMoveKey( spep_3 -3 + 102, 1, -23.7, 34.1, 0 );
setMoveKey( spep_3 -3 + 104, 1, -23.9, 34.1, 0 );
setMoveKey( spep_3 -3 + 106, 1, -24, 34.1, 0 );

--setScaleKey( spep_3 -3 + 0, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 3, 1, 2.05, 2.05 );
setScaleKey( spep_3 -3 + 4, 1, 2.12, 2.12 );
setScaleKey( spep_3 -3 + 6, 1, 2.18, 2.18 );
setScaleKey( spep_3 -3 + 8, 1, 2.23, 2.23 );
setScaleKey( spep_3 -3 + 10, 1, 2.28, 2.28 );
setScaleKey( spep_3 -3 + 12, 1, 2.33, 2.33 );
setScaleKey( spep_3 -3 + 14, 1, 2.38, 2.38 );
setScaleKey( spep_3 -3 + 16, 1, 2.42, 2.42 );
setScaleKey( spep_3 -3 + 18, 1, 2.46, 2.46 );
setScaleKey( spep_3 -3 + 20, 1, 2.49, 2.49 );
setScaleKey( spep_3 -3 + 22, 1, 2.52, 2.52 );
setScaleKey( spep_3 -3 + 24, 1, 2.55, 2.55 );
setScaleKey( spep_3 -3 + 26, 1, 2.57, 2.57 );
setScaleKey( spep_3 -3 + 28, 1, 2.6, 2.6 );
setScaleKey( spep_3 -3 + 30, 1, 2.62, 2.62 );
setScaleKey( spep_3 -3 + 32, 1, 2.64, 2.64 );
setScaleKey( spep_3 -3 + 34, 1, 2.65, 2.65 );
setScaleKey( spep_3 -3 + 36, 1, 2.66, 2.66 );
setScaleKey( spep_3 -3 + 38, 1, 2.68, 2.68 );
setScaleKey( spep_3 -3 + 40, 1, 2.69, 2.69 );
setScaleKey( spep_3 -3 + 42, 1, 2.69, 2.69 );
setScaleKey( spep_3 -3 + 44, 1, 2.7, 2.7 );
setScaleKey( spep_3 -3 + 46, 1, 2.71, 2.71 );
setScaleKey( spep_3 -3 + 50, 1, 2.71, 2.71 );
setScaleKey( spep_3 -3 + 52, 1, 2.72, 2.72 );
setScaleKey( spep_3 -3 + 64, 1, 2.72, 2.72 );
setScaleKey( spep_3 -3 + 66, 1, 2.77, 2.77 );
setScaleKey( spep_3 -3 + 71, 1, 2.77, 2.77 );
setScaleKey( spep_3 -3 + 72, 1, 0.81, 0.81 );
setScaleKey( spep_3 -3 + 74, 1, 0.87, 0.87 );
setScaleKey( spep_3 -3 + 76, 1, 0.92, 0.92 );
setScaleKey( spep_3 -3 + 78, 1, 0.97, 0.97 );
setScaleKey( spep_3 -3 + 80, 1, 1, 1 );
setScaleKey( spep_3 -3 + 82, 1, 1.03, 1.03 );
setScaleKey( spep_3 -3 + 84, 1, 1.06, 1.06 );
setScaleKey( spep_3 -3 + 86, 1, 1.08, 1.08 );
setScaleKey( spep_3 -3 + 88, 1, 1.09, 1.09 );
setScaleKey( spep_3 -3 + 90, 1, 1.1, 1.1 );
setScaleKey( spep_3 -3 + 92, 1, 1.11, 1.11 );
setScaleKey( spep_3 -3 + 94, 1, 1.12, 1.12 );
setScaleKey( spep_3 -3 + 96, 1, 1.12, 1.12 );
setScaleKey( spep_3 -3 + 98, 1, 1.13, 1.13 );
setScaleKey( spep_3 -3 + 106, 1, 1.13, 1.13 );

setRotateKey( spep_3 -3 + 3, 1, -4.5 );
setRotateKey( spep_3 -3 + 71, 1, -4.5 );
setRotateKey( spep_3 -3 + 72, 1, -31 );
setRotateKey( spep_3 -3 + 74, 1, -28.2 );
setRotateKey( spep_3 -3 + 76, 1, -25.9 );
setRotateKey( spep_3 -3 + 78, 1, -23.9 );
setRotateKey( spep_3 -3 + 80, 1, -22.3 );
setRotateKey( spep_3 -3 + 82, 1, -21 );
setRotateKey( spep_3 -3 + 84, 1, -19.9 );
setRotateKey( spep_3 -3 + 86, 1, -19 );
setRotateKey( spep_3 -3 + 88, 1, -18.4 );
setRotateKey( spep_3 -3 + 90, 1, -17.9 );
setRotateKey( spep_3 -3 + 92, 1, -17.5 );
setRotateKey( spep_3 -3 + 94, 1, -17.2 );
setRotateKey( spep_3 -3 + 96, 1, -17 );
setRotateKey( spep_3 -3 + 98, 1, -16.9 );
setRotateKey( spep_3 -3 + 100, 1, -16.9 );
setRotateKey( spep_3 -3 + 102, 1, -16.8 );
setRotateKey( spep_3 -3 + 106, 1, -16.8 );

-- ** ホワイトフェード ** --
entryFade( spep_3 -3 + 64, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 ); --white fade
entryFade( spep_3 -3 + 70, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 ); --white fade

-- ** 音 ** --
stopSe( spep_3 + 66, SE0, 0 );
playSe( spep_3 + 66, 1162 );  --着弾

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 105, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 104;

------------------------------------------------------
-- 敵、落下して川へ墜落(52F)
------------------------------------------------------

-- ** エフェクト等 ** --
rakkaf = entryEffect( spep_4 + 0, SP_04_a, 0x100, -1, 0, 0, 0 ); --敵、落下して川へ墜落（前面）(ef_004_a)
setEffMoveKey( spep_4 + 0, rakkaf, 0, 0, 0 );
setEffMoveKey( spep_4 + 52, rakkaf, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, rakkaf, 1.0, 1.0 );
setEffScaleKey( spep_4 + 52, rakkaf, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, rakkaf, 0 );
setEffRotateKey( spep_4 + 52, rakkaf, 0 );
setEffAlphaKey( spep_4 + 0, rakkaf, 255 );
setEffAlphaKey( spep_4 + 52, rakkaf, 255 );

rakkab = entryEffect( spep_4 + 0, SP_04_b, 0x80, -1, 0, 0, 0 ); --敵、落下して川へ墜落（背面）(ef_004_b)
setEffMoveKey( spep_4 + 0, rakkab, 0, 0, 0 );
setEffMoveKey( spep_4 + 52, rakkab, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, rakkab, 1.0, 1.0 );
setEffScaleKey( spep_4 + 52, rakkab, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, rakkab, 0 );
setEffRotateKey( spep_4 + 52, rakkab, 0 );
setEffAlphaKey( spep_4 + 0, rakkab, 255 );
setEffAlphaKey( spep_4 + 52, rakkab, 255 );

-- ** 敵の動き ** --
setDisp( spep_4 -3 + 3, 1, 1 );
setDisp( spep_4 -3 + 22, 1, 0 );
changeAnime( spep_4 -3 + 3, 1, 108 );

--setMoveKey( spep_4 -3 + 0, 1, -277.8, 532, 0 );
setMoveKey( spep_4 -3 + 3, 1, -276.8, 526.9, 0 );
setMoveKey( spep_4 -3 + 4, 1, -273.7, 511.5, 0 );
setMoveKey( spep_4 -3 + 6, 1, -268.6, 485.9, 0 );
setMoveKey( spep_4 -3 + 8, 1, -261.4, 450, 0 );
setMoveKey( spep_4 -3 + 10, 1, -252.2, 403.9, 0 );
setMoveKey( spep_4 -3 + 12, 1, -240.9, 347.5, 0 );
setMoveKey( spep_4 -3 + 14, 1, -227.6, 280.9, 0 );
setMoveKey( spep_4 -3 + 16, 1, -212.2, 204.1, 0 );
setMoveKey( spep_4 -3 + 18, 1, -194.8, 116.9, 0 );
setMoveKey( spep_4 -3 + 20, 1, -175.3, 19.6, 0 );
setMoveKey( spep_4 -3 + 22, 1, -153.8, -88, 0 );

setScaleKey( spep_4 -3 + 3, 1, 0.23, 0.23 );
setScaleKey( spep_4 -3 + 22, 1, 0.23, 0.23 );

--setRotateKey( spep_4 -3 + 0, 1, 105.5 );
setRotateKey( spep_4 -3 + 3, 1, 105.5 );
setRotateKey( spep_4 -3 + 4, 1, 105.4 );
setRotateKey( spep_4 -3 + 6, 1, 105.2 );
setRotateKey( spep_4 -3 + 8, 1, 104.9 );
setRotateKey( spep_4 -3 + 10, 1, 104.6 );
setRotateKey( spep_4 -3 + 12, 1, 104.2 );
setRotateKey( spep_4 -3 + 14, 1, 103.7 );
setRotateKey( spep_4 -3 + 16, 1, 103.1 );
setRotateKey( spep_4 -3 + 18, 1, 102.5 );
setRotateKey( spep_4 -3 + 20, 1, 101.8 );
setRotateKey( spep_4 -3 + 22, 1, 101 );

-- ** 音 ** --
playSe( spep_4 + 16, 1163 );  --川に落ちる
setSeVolume( spep_4 + 24, 1163, 120 );

SE1 = playSe( spep_4 + 0, 1164 );  --川流れる
setSeVolume( spep_4 + 0, 1164, 100 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 52, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 52;

------------------------------------------------------
-- 敵、滝の方へ流される(54F)
------------------------------------------------------

-- ** エフェクト等 ** --
taki = entryEffect( spep_5 + 0, SP_05, 0x100, -1, 0, 0, 0 ); --敵、滝の方へ流される(ef_005)
setEffMoveKey( spep_5 + 0, taki, 0, 0, 0 );
setEffMoveKey( spep_5 + 54, taki, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, taki, 1.0, 1.0 );
setEffScaleKey( spep_5 + 54, taki, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, taki, 0 );
setEffRotateKey( spep_5 + 54, taki, 0 );
setEffAlphaKey( spep_5 + 0, taki, 255 );
setEffAlphaKey( spep_5 + 54, taki, 255 );

-- ** 敵の動き ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 55, 1, 0 );
changeAnime( spep_5 + 0, 1, 107 );

--setMoveKey( spep_5 -3 + 0, 1, -159.9, -280, 0 );
setMoveKey( spep_5 -3 + 3, 1, -141.4, -258.6, 0 );
setMoveKey( spep_5 -3 + 4, 1, -123.3, -237.8, 0 );
setMoveKey( spep_5 -3 + 6, 1, -105.6, -217.6, 0 );
setMoveKey( spep_5 -3 + 8, 1, -88.4, -197.8, 0 );
setMoveKey( spep_5 -3 + 10, 1, -71.6, -178.4, 0 );
setMoveKey( spep_5 -3 + 12, 1, -55.1, -159.5, 0 );
setMoveKey( spep_5 -3 + 14, 1, -39, -141, 0 );
setMoveKey( spep_5 -3 + 16, 1, -23.2, -122.9, 0 );
setMoveKey( spep_5 -3 + 18, 1, -7.8, -105.1, 0 );
setMoveKey( spep_5 -3 + 20, 1, 7.4, -87.7, 0 );
setMoveKey( spep_5 -3 + 22, 1, 22.2, -70.7, 0 );
setMoveKey( spep_5 -3 + 24, 1, 36.7, -53.9, 0 );
setMoveKey( spep_5 -3 + 26, 1, 51, -37.5, 0 );
setMoveKey( spep_5 -3 + 28, 1, 65, -21.5, 0 );
setMoveKey( spep_5 -3 + 30, 1, 78.7, -5.7, 0 );
setMoveKey( spep_5 -3 + 32, 1, 92.1, 9.7, 0 );
setMoveKey( spep_5 -3 + 34, 1, 105.3, 24.9,  0 );
setMoveKey( spep_5 -3 + 36, 1, 118.2, 39.7, 0 );
setMoveKey( spep_5 -3 + 38, 1, 130.8, 54.2, 0 );
setMoveKey( spep_5 -3 + 40, 1, 143.1, 68.4, 0 );
setMoveKey( spep_5 -3 + 42, 1, 155.2, 82.2, 0 );
setMoveKey( spep_5 -3 + 44, 1, 166.9, 95.7, 0 );
setMoveKey( spep_5 -3 + 46, 1, 178.4, 108.9, 0 );
setMoveKey( spep_5 -3 + 48, 1, 189.6, 121.7, 0 );
setMoveKey( spep_5 -3 + 50, 1, 200.4, 134.2, 0 );
setMoveKey( spep_5 -3 + 52, 1, 210.9, 146.2, 0 );
setMoveKey( spep_5 -3 + 54, 1, 221, 157.9, 0 );
setMoveKey( spep_5 -3 + 56, 1, 230.8, 169.1, 0 );
setMoveKey( spep_5 -3 + 57, 1, 240, 179.9, 0 );

--setScaleKey( spep_5 -3 + 0, 1, 0.8, 0.8 );
setScaleKey( spep_5 -3 + 3, 1, 0.85, 0.85 );
setScaleKey( spep_5 -3 + 4, 1, 0.91, 0.91 );
setScaleKey( spep_5 -3 + 6, 1, 0.96, 0.96 );
setScaleKey( spep_5 -3 + 8, 1, 1.01, 1.01 );
setScaleKey( spep_5 -3 + 10, 1, 1.06, 1.06 );
setScaleKey( spep_5 -3 + 12, 1, 1.11, 1.11 );
setScaleKey( spep_5 -3 + 14, 1, 1.16, 1.16 );
setScaleKey( spep_5 -3 + 16, 1, 1.21, 1.21 );
setScaleKey( spep_5 -3 + 18, 1, 1.26, 1.26 );
setScaleKey( spep_5 -3 + 20, 1, 1.3, 1.3 );
setScaleKey( spep_5 -3 + 22, 1, 1.35, 1.35 );
setScaleKey( spep_5 -3 + 24, 1, 1.39, 1.39 );
setScaleKey( spep_5 -3 + 26, 1, 1.43, 1.43 );
setScaleKey( spep_5 -3 + 28, 1, 1.47, 1.47 );
setScaleKey( spep_5 -3 + 30, 1, 1.52, 1.52 );
setScaleKey( spep_5 -3 + 32, 1, 1.56, 1.56 );
setScaleKey( spep_5 -3 + 34, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 36, 1, 1.63, 1.63 );
setScaleKey( spep_5 -3 + 38, 1, 1.67, 1.67 );
setScaleKey( spep_5 -3 + 40, 1, 1.71, 1.71 );
setScaleKey( spep_5 -3 + 42, 1, 1.74, 1.74 );
setScaleKey( spep_5 -3 + 44, 1, 1.78, 1.78 );
setScaleKey( spep_5 -3 + 46, 1, 1.81, 1.81 );
setScaleKey( spep_5 -3 + 48, 1, 1.85, 1.85 );
setScaleKey( spep_5 -3 + 50, 1, 1.88, 1.88 );
setScaleKey( spep_5 -3 + 52, 1, 1.91, 1.91 );
setScaleKey( spep_5 -3 + 54, 1, 1.94, 1.94 );
setScaleKey( spep_5 -3 + 56, 1, 1.97, 1.97 );
setScaleKey( spep_5 -3 + 57, 1, 2, 2 );

setRotateKey( spep_5 -3 + 3, 1, -70 );
setRotateKey( spep_5 -3 + 57, 1, -70 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 54, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
setSeVolume( spep_5 + 0, 1164, 120 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 52;

------------------------------------------------------
-- 飛び上がる(46F)
------------------------------------------------------
-- ** エフェクト等 ** --
jump = entryEffect( spep_6 + 0, SP_06, 0x80, -1, 0, 0, 0 ); --飛び上がる(ef_006)
setEffMoveKey( spep_6 + 0, jump, 0, 0, 0 );
setEffMoveKey( spep_6 + 46, jump, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, jump, 1.0, 1.0 );
setEffScaleKey( spep_6 + 46, jump, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, jump, 0 );
setEffRotateKey( spep_6 + 46, jump, 0 );
setEffAlphaKey( spep_6 + 0, jump, 255 );
setEffAlphaKey( spep_6 + 46, jump, 255 );

-- ** 書き文字エントリー ** --
ctdon = entryEffectLife( spep_6 -3 + 26, 10019, 12, 0x100, -1, 0, 3.1, 206 ); --ドンッ
setEffMoveKey( spep_6 -3 + 26, ctdon, 3.1, 206, 0 );
setEffMoveKey( spep_6 -3 + 28, ctdon, 9.1, 274.3, 0 );
setEffMoveKey( spep_6 -3 + 30, ctdon, 15, 342.7, 0 );
setEffMoveKey( spep_6 -3 + 32, ctdon, 15, 346.5, 0 );
setEffMoveKey( spep_6 -3 + 34, ctdon, 15, 350.2, 0 );
setEffMoveKey( spep_6 -3 + 36, ctdon, 15, 354, 0 );
setEffMoveKey( spep_6 -3 + 38, ctdon, 15.1, 357.8, 0 );

setEffScaleKey( spep_6 -3 + 26, ctdon, 1.85, 1.85 );
setEffScaleKey( spep_6 -3 + 28, ctdon, 2.28, 2.28 );
setEffScaleKey( spep_6 -3 + 30, ctdon, 2.7, 2.7 );
setEffScaleKey( spep_6 -3 + 32, ctdon, 2.77, 2.77 );
setEffScaleKey( spep_6 -3 + 34, ctdon, 2.84, 2.84 );
setEffScaleKey( spep_6 -3 + 36, ctdon, 2.91, 2.91 );
setEffScaleKey( spep_6 -3 + 38, ctdon, 2.98, 2.98 );

setEffRotateKey( spep_6 -3 + 26, ctdon, -30 );
setEffRotateKey( spep_6 -3 + 38, ctdon, -30 );

setEffAlphaKey( spep_6 -3 + 26, ctdon, 255 );
setEffAlphaKey( spep_6 -3 + 30, ctdon, 255 );
setEffAlphaKey( spep_6 -3 + 32, ctdon, 191 );
setEffAlphaKey( spep_6 -3 + 34, ctdon, 128 );
setEffAlphaKey( spep_6 -3 + 36, ctdon, 64 );
setEffAlphaKey( spep_6 -3 + 38, ctdon, 0 );

-- ** 音 ** --
playSe( spep_6 + 26, 1012 );  --飛び上がる
playSe( spep_6 + 26, 1018 );  --飛び上がる
playSe( spep_6 + 26, 44 );  --飛び上がる
setSeVolume( spep_6 + 26, 1018, 70 );
setSeVolume( spep_6 + 26, 44, 83 );

setSeVolume( spep_6 + 0, 1164, 90 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 46, 0, 0, 0, 0, 225); --黒フェード

-- ** 次の準備 ** --
spep_7 = spep_6 + 44;

------------------------------------------------------
-- 奥から手前に飛んで移動(48F)
------------------------------------------------------
-- ** エフェクト等 ** --
ido = entryEffect( spep_7 + 0, SP_07, 0x80, -1, 0, 0, 0 ); --奥から手前に飛んで移動(ef_007)
setEffMoveKey( spep_7 + 0, ido, 0, 0, 0 );
setEffMoveKey( spep_7 + 48, ido, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, ido, 1.0, 1.0 );
setEffScaleKey( spep_7 + 48, ido, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, ido, 0 );
setEffRotateKey( spep_7 + 48, ido, 0 );
setEffAlphaKey( spep_7 + 0, ido, 255 );
setEffAlphaKey( spep_7 + 48, ido, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_7 + 40, 906, 8, 0x100, -1, 0, 0, 0 );
setEffShake( spep_7 + 40, shuchusen1, 8, 20 );
setEffMoveKey( spep_7 + 40, shuchusen1, 0, 0, 0 );
setEffMoveKey( spep_7 + 48, shuchusen1, 0, 0, 0 );

setEffScaleKey( spep_7 + 40, shuchusen1, 1, 1 );
setEffScaleKey( spep_7 + 48, shuchusen1, 1, 1 );

setEffRotateKey( spep_7 + 40, shuchusen1, 180 );
setEffRotateKey( spep_7 + 48, shuchusen1, 180 );

setEffAlphaKey( spep_7 + 40, shuchusen1, 255 );
setEffAlphaKey( spep_7 + 48, shuchusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 48, 0, 0, 0, 0, 225); --黒フェード

-- ** 音 ** --
playSe( spep_7 + 0, 8 );  --向かう

-- ** 次の準備 ** --
spep_8 = spep_7 + 46;

------------------------------------------------------
-- 滝底へ光線(54F)
------------------------------------------------------
-- ** エフェクト等 ** --
hassha = entryEffect( spep_8 + 0, SP_08, 0x100, -1, 0, 0, 0 ); --滝底へ光線(ef_008)
setEffMoveKey( spep_8 + 0, hassha, 0, 0, 0 );
setEffMoveKey( spep_8 + 54, hassha, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_8 + 54, hassha, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, hassha, 0 );
setEffRotateKey( spep_8 + 54, hassha, 0 );
setEffAlphaKey( spep_8 + 0, hassha, 255 );
setEffAlphaKey( spep_8 + 54, hassha, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_8 + 32, 10012, 24, 0x100, -1, 0, -10, 258.9 ); --ズオッ
setEffMoveKey( spep_8 + 32, ctzuo, -10, 258.9, 0 );
setEffMoveKey( spep_8 + 34, ctzuo, 3.2, 277.4, 0 );
setEffMoveKey( spep_8 + 36, ctzuo, -12.1, 324.4, 0 );
setEffMoveKey( spep_8 + 38, ctzuo, -13.2, 357.1, 0 );
setEffMoveKey( spep_8 + 40, ctzuo, 5.5, 338.4, 0 );
setEffMoveKey( spep_8 + 42, ctzuo, -13.2, 357.1, 0 );
setEffMoveKey( spep_8 + 44, ctzuo, 5.5, 338.4, 0 );
setEffMoveKey( spep_8 + 46, ctzuo, -13.2, 357.1, 0 );
setEffMoveKey( spep_8 + 48, ctzuo, 5.5, 338.4, 0 );
setEffMoveKey( spep_8 + 50, ctzuo, -13.2, 357.1, 0 );
setEffMoveKey( spep_8 + 52, ctzuo, 5.5, 338.4, 0 );
setEffMoveKey( spep_8 + 54, ctzuo, -13.2, 357.1, 0 );
setEffMoveKey( spep_8 + 56, ctzuo, 5.5, 338.4, 0 );

setEffScaleKey( spep_8 + 32, ctzuo, 2.6, 2.6 );
setEffScaleKey( spep_8 + 34, ctzuo, 2.71, 2.71 );
setEffScaleKey( spep_8 + 36, ctzuo, 2.82, 2.82 );
setEffScaleKey( spep_8 + 38, ctzuo, 2.93, 2.93 );
setEffScaleKey( spep_8 + 56, ctzuo, 2.93, 2.93 );

setEffRotateKey( spep_8 + 32, ctzuo, 20 );
setEffRotateKey( spep_8 + 56, ctzuo, 20 );

setEffAlphaKey( spep_8 + 32, ctzuo, 255 );
setEffAlphaKey( spep_8 + 56, ctzuo, 255 );

-- ** ホワイトフェード ** --
entryFade( spep_8 -3 + 20, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 ); --white fade
entryFade( spep_8 -3 + 22, 0, 2, 0, 180, 180, 180, 255 ); --white fade
entryFade( spep_8 -3 + 30, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 ); --white fade
entryFade( spep_8 -3 + 34, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 100 ); --white fade
entryFade( spep_8 -3 + 38, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 77 ); --white fade
entryFade( spep_8 -3 + 42, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 140 ); --white fade
entryFade( spep_8 -3 + 48, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 128 ); --white fade
entryFade( spep_8 -3 + 50, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 51 ); --white fade
entryFade( spep_8 -3 + 52, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 90 ); --white fade
entryFade( spep_8 -3 + 56, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 51 ); --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 54, 0, 0, 0, 0, 225); --黒フェード

-- ** 音 ** --
playSe( spep_8 + 30, 1178 );  --発射
playSe( spep_8 + 34, 1179 );  --発射２

-- ** 次の準備 ** --
spep_9 = spep_8 + 52;

------------------------------------------------------
-- 滝底で着弾して爆発(56F)
------------------------------------------------------
-- ** エフェクト等 ** --
takizoko = entryEffect( spep_9 + 0, SP_09, 0x100, -1, 0, 0, 0 ); --滝底で着弾して爆発(ef_009)
setEffMoveKey( spep_9 + 0, takizoko, 0, 0, 0 );
setEffMoveKey( spep_9 + 56, takizoko, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, takizoko, 1.0, 1.0 );
setEffScaleKey( spep_9 + 56, takizoko, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, takizoko, 0 );
setEffRotateKey( spep_9 + 56, takizoko, 0 );
setEffAlphaKey( spep_9 + 0, takizoko, 255 );
setEffAlphaKey( spep_9 + 56, takizoko, 255 );

-- ** ホワイトフェード ** --
entryFade( spep_9 -3 + 2, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 31 ); --white fade
entryFade( spep_9 -3 + 6, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 31 ); --white fade
entryFade( spep_9 -3 + 10, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 31 ); --white fade
entryFade( spep_9 -3 + 14, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 31 ); --white fade
entryFade( spep_9 -3 + 18, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 31 ); --white fade
entryFade( spep_9 -3 + 22, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 31 ); --white fade
entryFade( spep_9 -3 + 24, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 ); --white fade
entryFade( spep_9 -3 + 30, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 31 ); --white fade
entryFade( spep_9 -3 + 34, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 31 ); --white fade
entryFade( spep_9 -3 + 38, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 31 ); --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 56, 0, 0, 0, 0, 225); --黒フェード

-- ** 音 ** --
playSe( spep_9 + 28, 1023 );  --着弾

-- ** 次の準備 ** --
spep_10 = spep_9 + 56;

------------------------------------------------------
-- 滝近くで水しぶき(66F)
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_10 + 0, SP_10, 0x100, -1, 0, 0, 0 ); --滝近くで水しぶき(ef_010)
setEffMoveKey( spep_10 + 0, hit, 0, 0, 0 );
setEffMoveKey( spep_10 + 66, hit, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_10 + 66, hit, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, hit, 0 );
setEffRotateKey( spep_10 + 66, hit, 0 );
setEffAlphaKey( spep_10 + 0, hit, 255 );
setEffAlphaKey( spep_10 + 66, hit, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 66, 0, 0, 0, 0, 225); --黒フェード

-- ** 音 ** --
SE2 = playSe( spep_10 + 4, 1165 );  --水ぶわー

-- ** 次の準備 ** --
spep_11 = spep_10 + 66;

------------------------------------------------------
-- クレーターが水で塞がれる(118F)
------------------------------------------------------
-- ** エフェクト等 ** --
crater = entryEffect( spep_11 + 0, SP_11, 0x100, -1, 0, 0, 0 ); --クレーターが水で塞がれる(ef_011)
setEffMoveKey( spep_11 + 0, crater, 0, 0, 0 );
setEffMoveKey( spep_11 +118, crater, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, crater, 1.0, 1.0 );
setEffScaleKey( spep_11 + 118, crater, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, crater, 0 );
setEffRotateKey( spep_11 + 118, crater, 0 );
setEffAlphaKey( spep_11 + 0, crater, 255 );
setEffAlphaKey( spep_11 + 118, crater, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_11 + 0, 0, 118, 0, 0, 0, 0, 225); --黒フェード

-- ** 音 ** --
setSeVolume( spep_11 + 4, 1165, 80 );
playSe( spep_11 + 0, 1166 );  --水塞がれる
stopSe( spep_11 + 116, SE1, 0 );
stopSe( spep_11 + 116, SE2, 0 );

-- ** ダメージ表示 ** --
dealDamage( spep_11 + 6 );
endPhase( spep_11 + 106  );

end