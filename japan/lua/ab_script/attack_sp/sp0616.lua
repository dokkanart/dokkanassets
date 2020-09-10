--超サイヤ人ゴッド孫悟空_ゴッドシューティング

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
SP_01 = 155434;  --構え
SP_02 = 155435;  --発射
SP_03 = 155436;  --被弾・手前
SP_04 = 155437;  --被弾・奥
SP_05 = 155438;  --ナビ
SP_06 = 155439;  --追撃・手前
SP_07 = 155440;  --追撃・奥
SP_08 = 155441;  --爆発背景

--敵側
SP_01x = 155442;  --構え
SP_02x = 155443;  --発射
SP_03x = 155436;  --被弾・手前
SP_04x = 155437;  --被弾・奥
SP_05x = 155438;  --ナビ
SP_06x = 155439;  --追撃・手前
SP_07x = 155440;  --追撃・奥
SP_08x = 155441;  --爆発背景

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
-- 構え〜カットイン(140F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_0 + 0, SP_01, 140, 0x100, -1, 0, 0, 0 );  --構え(ef_001)

setEffMoveKey( spep_0 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_0 + 140, kamae, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_0 + 140, kamae, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, kamae, 0 );
setEffRotateKey( spep_0 + 140, kamae, 0 );

setEffAlphaKey( spep_0 + 0, kamae, 255 );
setEffAlphaKey( spep_0 + 136, kamae, 255 );
setEffAlphaKey( spep_0 + 137, kamae, 0 );
setEffAlphaKey( spep_0 + 138, kamae, 0 );
setEffAlphaKey( spep_0 + 139, kamae, 0 );
setEffAlphaKey( spep_0 + 140, kamae, 0 );


spep_x = spep_0 + 42;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9 +80, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9 +80, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9 +80, 515.5 , 0 );

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


-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 -3  + 50,  906, 72, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 -3 + 50, shuchusen1, 72, 20 );

setEffMoveKey( spep_0 -3  + 50, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 -3  + 122, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 - 3 + 50, shuchusen1, 1.15, 1.5 );
setEffScaleKey( spep_0 - 3 + 122, shuchusen1, 1.15, 1.5 );

setEffRotateKey( spep_0 - 3 + 50, shuchusen1, 0 );
setEffRotateKey( spep_0 - 3 + 122, shuchusen1, 0 );

setEffAlphaKey( spep_0 - 3 + 50, shuchusen1, 64 );
setEffAlphaKey( spep_0 - 3 + 52, shuchusen1, 128 );
setEffAlphaKey( spep_0 - 3 + 54, shuchusen1, 191 );
setEffAlphaKey( spep_0 - 3 + 122, shuchusen1, 191 );

-- ** SE ** --
playSe( spep_0 + 0, 44);  --入り
setSeVolume( spep_0 + 0, 44, 100);

playSe( spep_0 + 36, 1007); --腕上げ
setSeVolume( spep_0 + 36, 1007, 70.8);

playSe( spep_0 + 38, 1003);
setSeVolume( spep_0 + 38, 1003, 63.1);

playSe( spep_0 + 46, 1018);  --顔カットイン
setSeVolume( spep_0 + 46, 1018, 100);


-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 140, 0, 0, 0, 0, 255 );  --黒　背景


-- ** 次の準備 ** --
spep_1 = spep_0 + 136;

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

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 発射(110F)
------------------------------------------------------
hassha = entryEffectLife( spep_2 + 0, SP_02, 110 -2, 0x80, -1, 0, 0, 0 );  --発射(ef_002)

setEffMoveKey( spep_2 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_2 + 110 -2, hassha, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_2 + 110 -2, hassha, 1.0, 1.0 );

setEffRotateKey( spep_2 + 0, hassha, 0 );
setEffRotateKey( spep_2 + 110 -2, hassha, 0 );

setEffAlphaKey( spep_2 + 0, hassha, 255 );
setEffAlphaKey( spep_2 + 106 -2, hassha, 255 );
setEffAlphaKey( spep_2 + 107 -2, hassha, 0 );
setEffAlphaKey( spep_2 + 108 -2, hassha, 0 );
setEffAlphaKey( spep_2 + 109 -2, hassha, 0 );
setEffAlphaKey( spep_2 + 110 -2, hassha, 0 );

-- ** SE ** --
playSe( spep_2 + 14, 1016);
playSe( spep_2 + 14, 1256);
playSe( spep_2 + 38, 1016);
playSe( spep_2 + 38, 1256);
setSeVolume( spep_2 + 14, 1016, 100);
setSeVolume( spep_2 + 14, 1256, 100);
setSeVolume( spep_2 + 38, 1016, 100);
setSeVolume( spep_2 + 38, 1256, 100);

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 110, 0, 0, 0, 0, 255 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 68; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
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

-- ** SE ** --
playSe( spep_2 + 57, 1016);
playSe( spep_2 + 57, 1256);
setSeVolume( spep_2 + 57, 1016, 100);
setSeVolume( spep_2 + 57, 1256, 100);

playSe( spep_2 + 70, 1016);
playSe( spep_2 + 70, 1256);
playSe( spep_2 + 88, 1016);
playSe( spep_2 + 88, 1256);
setSeVolume( spep_2 + 70, 1016, 100);
setSeVolume( spep_2 + 70, 1256, 100);
setSeVolume( spep_2 + 88, 1016, 100);
setSeVolume( spep_2 + 88, 1256, 100);

-- ** 次の準備 ** --
spep_3 = spep_2 + 106 -2;

------------------------------------------------------
-- 被弾(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
hidan_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --被弾_前(ef_003)

setEffMoveKey( spep_3 + 0, hidan_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, hidan_f, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, hidan_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, hidan_f, 1.0, 1.0 );

setEffRotateKey( spep_3 + 0, hidan_f, 0 );
setEffRotateKey( spep_3 + 100, hidan_f, 0 );

setEffAlphaKey( spep_3 + 0, hidan_f, 255 );
setEffAlphaKey( spep_3 + 98, hidan_f, 255 );
setEffAlphaKey( spep_3 + 99, hidan_f, 0 );
setEffAlphaKey( spep_3 + 100, hidan_f, 0 );

hidan_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --被弾_後ろ(ef_004)

setEffMoveKey( spep_3 + 0, hidan_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, hidan_b, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, hidan_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, hidan_b, 1.0, 1.0 );

setEffRotateKey( spep_3 + 0, hidan_b, 0 );
setEffRotateKey( spep_3 + 100, hidan_b, 0 );

setEffAlphaKey( spep_3 + 0, hidan_b, 255 );
setEffAlphaKey( spep_3 + 98, hidan_b, 255 );
setEffAlphaKey( spep_3 + 99, hidan_b, 0 );
setEffAlphaKey( spep_3 + 100, hidan_b, 0 );

-- ** 敵の動き ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 90, 1, 0 ); --消す
changeAnime( spep_3 - 3 + 0, 1, 100 );
changeAnime( spep_3 - 3 + 10, 1, 104 );
changeAnime( spep_3 - 3 + 28, 1, 108 );
changeAnime( spep_3 - 3 + 49, 1, 106 );
changeAnime( spep_3 - 3 + 78, 1, 108 );

setMoveKey( spep_3 - 3 + 0, 1, -78.7, -4 , 0 );
setMoveKey( spep_3 - 3 + 2, 1, -67.7, -4.1 , 0 );
setMoveKey( spep_3 - 3 + 4, 1, -56.6, -4.1 , 0 );
setMoveKey( spep_3 - 3 + 6, 1, -56.3, -3.8 , 0 );
setMoveKey( spep_3 - 3 + 9, 1, -45.2, -3.9 , 0 );
setMoveKey( spep_3 - 3 + 10, 1, -34.1, 1.8 , 0 );
setMoveKey( spep_3 - 3 + 12, 1, -33.8, 2.1 , 0 );
setMoveKey( spep_3 - 3 + 14, 1, -22.8, 2 , 0 );
setMoveKey( spep_3 - 3 + 16, 1, -11.7, 1.9 , 0 );
setMoveKey( spep_3 - 3 + 18, 1, -9.6, 1.8 , 0 );
setMoveKey( spep_3 - 3 + 20, 1, -7.5, 1.8 , 0 );
setMoveKey( spep_3 - 3 + 22, 1, -5.5, 1.7 , 0 );
setMoveKey( spep_3 - 3 + 24, 1, -3.4, 1.7 , 0 );
setMoveKey( spep_3 - 3 + 27, 1, -12, 2 , 0 );
setMoveKey( spep_3 - 3 + 28, 1, 21.7, 4.3 , 0 );
setMoveKey( spep_3 - 3 + 30, 1, 23.1, -3.7 , 0 );
setMoveKey( spep_3 - 3 + 32, 1, 28.4, 4.2 , 0 );
setMoveKey( spep_3 - 3 + 34, 1, 29.8, 0.2 , 0 );
setMoveKey( spep_3 - 3 + 36, 1, 35.2, 4.1 , 0 );
setMoveKey( spep_3 - 3 + 38, 1, 34.5, 2.1 , 0 );
setMoveKey( spep_3 - 3 + 40, 1, 41.9, 4 , 0 );
setMoveKey( spep_3 - 3 + 42, 1, 32.1, 6.3 , 0 );
setMoveKey( spep_3 - 3 + 44, 1, 37.4, 4.3 , 0 );
setMoveKey( spep_3 - 3 + 47, 1, 38.8, 0.2 , 0 );
setMoveKey( spep_3 - 3 + 49, 1, 49.1, 35.1 , 0 );
setMoveKey( spep_3 - 3 + 60, 1, 57.9, 34.8 , 0 );
setMoveKey( spep_3 - 3 + 62, 1, 57.3, 36.8 , 0 );
setMoveKey( spep_3 - 3 + 64, 1, 64.6, 34.7 , 0 );
setMoveKey( spep_3 - 3 + 67, 1, 66, 30.7 , 0 );
setMoveKey( spep_3 - 3 + 78, 1, 91.3, 0.2 , 0 );
setMoveKey( spep_3 - 3 + 80, 1, 96.8, 4.2 , 0 );
setMoveKey( spep_3 - 3 + 83, 1, 96.3, 2.1 , 0 );
setMoveKey( spep_3 - 3 + 93, 1, 96.3, 2.1 , 0 );

setScaleKey( spep_3 - 3 + 0, 1, 1.51, 1.51 );
setScaleKey( spep_3 - 3 + 2, 1, 1.49, 1.49 );
setScaleKey( spep_3 - 3 + 4, 1, 1.48, 1.48 );
setScaleKey( spep_3 - 3 + 6, 1, 1.45, 1.45 );
setScaleKey( spep_3 - 3 + 9, 1, 1.44, 1.44 );
setScaleKey( spep_3 - 3 + 14, 1, 1.48, 1.48 );
setScaleKey( spep_3 - 3 + 16, 1, 1.47, 1.47 );
setScaleKey( spep_3 - 3 + 24, 1, 1.47, 1.47 );
setScaleKey( spep_3 - 3 + 27, 1, 1.45, 1.45 );
setScaleKey( spep_3 - 3 + 28, 1, 1.47, 1.47 );
setScaleKey( spep_3 - 3 + 40, 1, 1.47, 1.47 );
setScaleKey( spep_3 - 3 + 42, 1, 1.46, 1.46 );
setScaleKey( spep_3 - 3 + 47, 1, 1.46, 1.46 );
setScaleKey( spep_3 - 3 + 49, 1, 1.45, 1.45 );
setScaleKey( spep_3 - 3 + 60, 1, 1.44, 1.44 );
setScaleKey( spep_3 - 3 + 67, 1, 1.44, 1.44 );
setScaleKey( spep_3 - 3 + 78, 1, 1.43, 1.43 );
setScaleKey( spep_3 - 3 + 83, 1, 1.43, 1.43 );
setScaleKey( spep_3 - 3 + 93, 1, 1.43, 1.43 );

setRotateKey( spep_3 - 3 + 0, 1, 0 );
setRotateKey( spep_3 - 3 + 48, 1, 0 );
setRotateKey( spep_3 - 3 + 49, 1, -22.8 );
setRotateKey( spep_3 - 3 + 77, 1, -22.8 );
setRotateKey( spep_3 - 3 + 78, 1, 0 );
setRotateKey( spep_3 - 3 + 93, 1, 0 );

-- ** SE ** --
playSe( spep_3 + 0, 1257);
playSe( spep_3 + 10, 1257);
playSe( spep_3 + 23, 1011);
playSe( spep_3 + 32, 1017);
playSe( spep_3 + 46, 1025);
playSe( spep_3 + 59, 1023);
playSe( spep_3 + 69, 1025);
playSe( spep_3 + 96, 1016);
playSe( spep_3 + 96, 1256);
setSeVolume( spep_3 + 0, 1257, 100);
setSeVolume( spep_3 + 10, 1257, 100);
setSeVolume( spep_3 + 23, 1011, 79.4);
setSeVolume( spep_3 + 32, 1017, 79.4);
setSeVolume( spep_3 + 46, 1025, 79.4);
setSeVolume( spep_3 + 59, 1023, 79.4);
setSeVolume( spep_3 + 69, 1025, 100);
setSeVolume( spep_3 + 96, 1016, 100);
setSeVolume( spep_3 + 96, 1256, 100);

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 96;

------------------------------------------------------
-- ナビ(68F)
------------------------------------------------------
-- ** エフェクト等 ** --
nabi = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --ナビ(ef_005)

setEffMoveKey( spep_4 + 0, nabi, 0, 0 , 0 );
setEffMoveKey( spep_4 + 68, nabi, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, nabi, 1.0, 1.0 );
setEffScaleKey( spep_4 + 68, nabi, 1.0, 1.0 );

setEffRotateKey( spep_4 + 0, nabi, 0 );
setEffRotateKey( spep_4 + 68, nabi, 0 );

setEffAlphaKey( spep_4 + 0, nabi, 255 );
setEffAlphaKey( spep_4 + 68, nabi, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_4 + 0,  906, 68, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen2, 68, 20 );

setEffMoveKey( spep_4 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 68, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen2, 1.15, 1.89 );
setEffScaleKey( spep_4 + 68, shuchusen2, 1.15, 1.89 );

setEffRotateKey( spep_4 + 0, shuchusen2, 0 );
setEffRotateKey( spep_4 + 68, shuchusen2, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen2, 191 );
setEffAlphaKey( spep_4 + 68, shuchusen2, 191 );

-- ** SE ** --
playSe( spep_4 + 13, 1016);
playSe( spep_4 + 13, 1256);
playSe( spep_4 + 29, 1016);
playSe( spep_4 + 29, 1256);
playSe( spep_4 + 48, 1016);
playSe( spep_4 + 48, 1256);
playSe( spep_4 + 62, 1023);
setSeVolume( spep_4 + 13, 1016, 100);
setSeVolume( spep_4 + 13, 1256, 100);
setSeVolume( spep_4 + 29, 1016, 100);
setSeVolume( spep_4 + 29, 1256, 100);
setSeVolume( spep_4 + 48, 1016, 100);
setSeVolume( spep_4 + 48, 1256, 100);
setSeVolume( spep_4 + 62, 1023, 100);

-- ** 背景 ** --
entryFadeBg( spep_4 + 0, 0, 68, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 66;

------------------------------------------------------
-- 追撃(80F)
------------------------------------------------------

-- ** エフェクト等 ** --
tsuigeki_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --追撃_前(ef_006)

setEffMoveKey( spep_5 + 0, tsuigeki_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 80, tsuigeki_f, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, tsuigeki_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 80, tsuigeki_f, 1.0, 1.0 );

setEffRotateKey( spep_5 + 0, tsuigeki_f, 0 );
setEffRotateKey( spep_5 + 80, tsuigeki_f, 0 );

setEffAlphaKey( spep_5 + 0, tsuigeki_f, 255 );
setEffAlphaKey( spep_5 + 80, tsuigeki_f, 255 );

tsuigeki_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --追撃_後ろ(ef_007)

setEffMoveKey( spep_5 + 0, tsuigeki_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 80, tsuigeki_b, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, tsuigeki_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 80, tsuigeki_b, 1.0, 1.0 );

setEffRotateKey( spep_5 + 0, tsuigeki_b, 0 );
setEffRotateKey( spep_5 + 80, tsuigeki_b, 0 );

setEffAlphaKey( spep_5 + 0, tsuigeki_b, 255 );
setEffAlphaKey( spep_5 + 80, tsuigeki_b, 255 );

-- ** 敵の動き ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 78, 1, 0 );  --消す
changeAnime( spep_5 + 0, 1, 108 );

setMoveKey( spep_5 + 0, 1, -74.1, -21.6 , 0 );
setMoveKey( spep_5 + 2, 1, -65.7, -13.7 , 0 );
setMoveKey( spep_5 + 4, 1, -51, 13.2 , 0 );
setMoveKey( spep_5 + 6, 1, -46, 27 , 0 );
setMoveKey( spep_5 + 8, 1, -28.5, 46.9 , 0 );
setMoveKey( spep_5 + 10, 1, -20.7, 53.8 , 0 );
setMoveKey( spep_5 + 12, 1, -6.7, 79.6 , 0 );
setMoveKey( spep_5 + 14, 1, -2.5, 92.4 , 0 );
setMoveKey( spep_5 + 16, 1, 5.2, 97.6 , 0 );
setMoveKey( spep_5 + 18, 1, -0.3, 102.1 , 0 );
setMoveKey( spep_5 + 20, 1, 7, 100.2 , 0 );
setMoveKey( spep_5 + 22, 1, 4.6, 92 , 0 );
setMoveKey( spep_5 + 24, 1, 8.7, 102.9 , 0 );
setMoveKey( spep_5 + 26, 1, 6.3, 100.9 , 0 );
setMoveKey( spep_5 + 28, 1, 10.4, 105.4 , 0 );
setMoveKey( spep_5 + 30, 1, 4.8, 103.4 , 0 );
setMoveKey( spep_5 + 32, 1, 12, 107.8 , 0 );
setMoveKey( spep_5 + 34, 1, 3.2, 115.3 , 0 );
setMoveKey( spep_5 + 36, 1, 13.6, 110.1 , 0 );
setMoveKey( spep_5 + 38, 1, 11.1, 101.6 , 0 );
setMoveKey( spep_5 + 40, 1, 15, 112.3 , 0 );
setMoveKey( spep_5 + 42, 1, 12.5, 107 , 0 );
setMoveKey( spep_5 + 44, 1, 16.4, 114.5 , 0 );
setMoveKey( spep_5 + 46, 1, 4.3, 112.3 , 0 );
setMoveKey( spep_5 + 48, 1, 17.8, 116.5 , 0 );
setMoveKey( spep_5 + 50, 1, 15.2, 107.9 , 0 );
setMoveKey( spep_5 + 52, 1, 19.1, 118.4 , 0 );
setMoveKey( spep_5 + 54, 1, 16.5, 116.2 , 0 );
setMoveKey( spep_5 + 56, 1, 20.3, 120.3 , 0 );
setMoveKey( spep_5 + 58, 1, 8.1, 127.5 , 0 );
setMoveKey( spep_5 + 60, 1, 21.5, 122 , 0 );
setMoveKey( spep_5 + 62, 1, 18.8, 113.2 , 0 );
setMoveKey( spep_5 + 64, 1, 22.5, 123.7 , 0 );
setMoveKey( spep_5 + 66, 1, 16.7, 121.3 , 0 );
setMoveKey( spep_5 + 68, 1, 23.6, 125.2 , 0 );
setMoveKey( spep_5 + 70, 1, 24.1, 126 , 0 );
setMoveKey( spep_5 + 72, 1, 21.4, 123.5 , 0 );
setMoveKey( spep_5 + 74, 1, 25, 127.4 , 0 );
setMoveKey( spep_5 + 76, 1, 19.1, 131.3 , 0 );
setMoveKey( spep_5 + 78, 1, 25.9, 128.7 , 0 );

setScaleKey( spep_5 + 0, 1, 1.67, 1.67 );
setScaleKey( spep_5 + 2, 1, 1.61, 1.61 );
setScaleKey( spep_5 + 4, 1, 1.56, 1.56 );
setScaleKey( spep_5 + 6, 1, 1.51, 1.51 );
setScaleKey( spep_5 + 8, 1, 1.45, 1.45 );
setScaleKey( spep_5 + 10, 1, 1.4, 1.4 );
setScaleKey( spep_5 + 12, 1, 1.35, 1.35 );
setScaleKey( spep_5 + 14, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 16, 1, 1.29, 1.29 );
setScaleKey( spep_5 + 18, 1, 1.29, 1.29 );
setScaleKey( spep_5 + 20, 1, 1.28, 1.28 );
setScaleKey( spep_5 + 22, 1, 1.28, 1.28 );
setScaleKey( spep_5 + 24, 1, 1.27, 1.27 );
setScaleKey( spep_5 + 28, 1, 1.27, 1.27 );
setScaleKey( spep_5 + 30, 1, 1.26, 1.26 );
setScaleKey( spep_5 + 34, 1, 1.26, 1.26 );
setScaleKey( spep_5 + 36, 1, 1.25, 1.25 );
setScaleKey( spep_5 + 40, 1, 1.25, 1.25 );
setScaleKey( spep_5 + 42, 1, 1.24, 1.24 );
setScaleKey( spep_5 + 46, 1, 1.24, 1.24 );
setScaleKey( spep_5 + 48, 1, 1.23, 1.23 );
setScaleKey( spep_5 + 54, 1, 1.23, 1.23 );
setScaleKey( spep_5 + 56, 1, 1.22, 1.22 );
setScaleKey( spep_5 + 62, 1, 1.22, 1.22 );
setScaleKey( spep_5 + 64, 1, 1.21, 1.21 );
setScaleKey( spep_5 + 70, 1, 1.21, 1.21 );
setScaleKey( spep_5 + 72, 1, 1.19, 1.19 );
setScaleKey( spep_5 + 78, 1, 1.19, 1.19 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 78, 1, 0 );


-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_5 + 0,  906, 78, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen3, 78, 20 );

setEffMoveKey( spep_5 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_5 + 78, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen3, 1.1, 1.23 );
setEffScaleKey( spep_5 + 78, shuchusen3, 1.1, 1.23 );

setEffRotateKey( spep_5 + 0, shuchusen3, 0 );
setEffRotateKey( spep_5 + 78, shuchusen3, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen3, 191 );
setEffAlphaKey( spep_5 + 78, shuchusen3, 191 );

-- ** SE ** --
playSe( spep_5 + 11, 1011);
playSe( spep_5 + 24, 1025);
playSe( spep_5 + 37, 1060);
playSe( spep_5 + 52, 1052);

setSeVolume( spep_5 + 11, 1011, 79.4);
setSeVolume( spep_5 + 24, 1025, 70.8);
setSeVolume( spep_5 + 37, 1060, 79.4);
setSeVolume( spep_5 + 52, 1052, 89.1);

-- ** 白フェード ** --
entryFade( spep_5 + 60, 16,  8, 8, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 背景 ** --
entryFadeBg( spep_5 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景


-- ** 次の準備 ** --
spep_6 = spep_5 + 80;
------------------------------------------------------
-- 敵吹っ飛びシーン(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
haikei = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --背景(ef_008)
setEffMoveKey( spep_6 + 0, haikei, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, haikei, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, haikei, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, haikei, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, haikei, 0 );
setEffRotateKey( spep_6 + 100, haikei, 0 );
setEffAlphaKey( spep_6 + 0, haikei, 255 );
setEffAlphaKey( spep_6 + 100, haikei, 255 );


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
setMoveKey( spep_6 + 100, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_6 + 0, 1, 0.2, 0.2 );
setScaleKey( spep_6 + 1, 1, 0.2, 0.2 );
setScaleKey( spep_6 + 2, 1, 0.25, 0.25 );
setScaleKey( spep_6 + 3, 1, 0.25, 0.25 );
setScaleKey( spep_6 + 4, 1, 0.46, 0.46 );
setScaleKey( spep_6 + 5, 1, 0.46, 0.46 );
setScaleKey( spep_6 + 6, 1, 0.55, 0.55 );
setScaleKey( spep_6 + 7, 1, 0.55, 0.55 );
setScaleKey( spep_6 + 8, 1, 0.71, 0.71 );
setScaleKey( spep_6 + 9, 1, 0.71, 0.71 );
setScaleKey( spep_6 + 10, 1, 0.97, 0.97 );
setScaleKey( spep_6 + 11, 1, 0.97, 0.97 );
setScaleKey( spep_6 + 12, 1, 1.1, 1.1 );  --画面にぶつかる
setScaleKey( spep_6 + 13, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 14, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 15, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 16, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 17, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 18, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 19, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 20, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 21, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 22, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 23, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 24, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 25, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 26, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 100, 1, 1.2, 1.2 );

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
setRotateKey( spep_6 + 100, 1, -40 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_6 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発

setEffMoveKey( spep_6 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_6 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_6 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_6 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_6 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_6 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_6 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_6 + 112, bakuhatsu, 255 );


-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_6 + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_6 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_6 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen4, 0 );
setEffRotateKey( spep_6 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_6 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_6 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_6 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_6 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_6 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_6 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_6 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_6 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_6 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_6 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_6 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_6 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_6 + 100, shuchusen5, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen5, 0 );
setEffRotateKey( spep_6 + 100, shuchusen5, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_6 + 100, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_6 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_6 + 14, ctga, 14, 20 );

setEffMoveKey( spep_6 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_6 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_6 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_6 + 14, ctga, -10.9 );
setEffRotateKey( spep_6 + 15, ctga, -10.9 );
setEffRotateKey( spep_6 + 16, ctga, -14.9 );
setEffRotateKey( spep_6 + 17, ctga, -14.9 );
setEffRotateKey( spep_6 + 18, ctga, -10.9 );
setEffRotateKey( spep_6 + 19, ctga, -10.9 );
setEffRotateKey( spep_6 + 20, ctga, -14.9 );
setEffRotateKey( spep_6 + 21, ctga, -14.9 );
setEffRotateKey( spep_6 + 22, ctga, -10.9 );
setEffRotateKey( spep_6 + 23, ctga, -10.9 );
setEffRotateKey( spep_6 + 24, ctga, -14.9 );
setEffRotateKey( spep_6 + 25, ctga, -14.9 );
setEffRotateKey( spep_6 + 26, ctga, -10.9 );
setEffRotateKey( spep_6 + 27, ctga, -10.9 );
setEffRotateKey( spep_6 + 28, ctga, -14.9 );
setEffRotateKey( spep_6 + 100, ctga, -14.9 );

setEffAlphaKey( spep_6 + 14, ctga, 255 );
setEffAlphaKey( spep_6 + 100, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_6 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_6 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_6 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_6 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_6 + 2, hibiware, 0 );
setEffRotateKey( spep_6 + 100, hibiware, 0 );

setEffAlphaKey( spep_6 + 2, hibiware, 0 );
setEffAlphaKey( spep_6 + 13, hibiware, 0 );
setEffAlphaKey( spep_6 + 14, hibiware, 255 );
setEffAlphaKey( spep_6 + 100, hibiware, 255 );

-- ** SE ** --
playSe( spep_6 + 0, 1023);
playSe( spep_6 + 14, 1054);
setSeVolume( spep_6 + 0, 1023, 100);
setSeVolume( spep_6 + 14, 1054, 100);

-- ** 背景 ** --
entryFadeBg( spep_6 + 0, 0, 98, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ダメージ表記 ** --
dealDamage( spep_6 + 0 );
endPhase( spep_6 + 98 );
else 

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 構え〜カットイン(140F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_0 + 0, SP_01x, 140, 0x100, -1, 0, 0, 0 );  --構え(ef_001)

setEffMoveKey( spep_0 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_0 + 140, kamae, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_0 + 140, kamae, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, kamae, 0 );
setEffRotateKey( spep_0 + 140, kamae, 0 );

setEffAlphaKey( spep_0 + 0, kamae, 255 );
setEffAlphaKey( spep_0 + 136, kamae, 255 );
setEffAlphaKey( spep_0 + 137, kamae, 0 );
setEffAlphaKey( spep_0 + 138, kamae, 0 );
setEffAlphaKey( spep_0 + 139, kamae, 0 );
setEffAlphaKey( spep_0 + 140, kamae, 0 );


spep_x = spep_0 + 42;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9 +80, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9 +80, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9 +80, 515.5 , 0 );

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


-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 -3  + 50,  906, 72, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 -3 + 50, shuchusen1, 72, 20 );

setEffMoveKey( spep_0 -3  + 50, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 -3  + 122, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 - 3 + 50, shuchusen1, 1.15, 1.5 );
setEffScaleKey( spep_0 - 3 + 122, shuchusen1, 1.15, 1.5 );

setEffRotateKey( spep_0 - 3 + 50, shuchusen1, 0 );
setEffRotateKey( spep_0 - 3 + 122, shuchusen1, 0 );

setEffAlphaKey( spep_0 - 3 + 50, shuchusen1, 64 );
setEffAlphaKey( spep_0 - 3 + 52, shuchusen1, 128 );
setEffAlphaKey( spep_0 - 3 + 54, shuchusen1, 191 );
setEffAlphaKey( spep_0 - 3 + 122, shuchusen1, 191 );

-- ** SE ** --
playSe( spep_0 + 0, 44);  --入り
setSeVolume( spep_0 + 0, 44, 100);

playSe( spep_0 + 36, 1007); --腕上げ
setSeVolume( spep_0 + 36, 1007, 70.8);

playSe( spep_0 + 38, 1003);
setSeVolume( spep_0 + 38, 1003, 63.1);

playSe( spep_0 + 46, 1018);  --顔カットイン
setSeVolume( spep_0 + 46, 1018, 100);


-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 140, 0, 0, 0, 0, 255 );  --黒　背景


-- ** 次の準備 ** --
spep_1 = spep_0 + 136;

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

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 発射(110F)
------------------------------------------------------
hassha = entryEffectLife( spep_2 + 0, SP_02x, 110 -2, 0x80, -1, 0, 0, 0 );  --発射(ef_002)

setEffMoveKey( spep_2 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_2 + 110 -2, hassha, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_2 + 110 -2, hassha, 1.0, 1.0 );

setEffRotateKey( spep_2 + 0, hassha, 0 );
setEffRotateKey( spep_2 + 110 -2, hassha, 0 );

setEffAlphaKey( spep_2 + 0, hassha, 255 );
setEffAlphaKey( spep_2 + 106 -2, hassha, 255 );
setEffAlphaKey( spep_2 + 107 -2, hassha, 0 );
setEffAlphaKey( spep_2 + 108 -2, hassha, 0 );
setEffAlphaKey( spep_2 + 109 -2, hassha, 0 );
setEffAlphaKey( spep_2 + 110 -2, hassha, 0 );

-- ** SE ** --
playSe( spep_2 + 14, 1016);
playSe( spep_2 + 14, 1256);
playSe( spep_2 + 38, 1016);
playSe( spep_2 + 38, 1256);
setSeVolume( spep_2 + 14, 1016, 100);
setSeVolume( spep_2 + 14, 1256, 100);
setSeVolume( spep_2 + 38, 1016, 100);
setSeVolume( spep_2 + 38, 1256, 100);

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 110, 0, 0, 0, 0, 255 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 68; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
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

-- ** SE ** --
playSe( spep_2 + 57, 1016);
playSe( spep_2 + 57, 1256);
setSeVolume( spep_2 + 57, 1016, 100);
setSeVolume( spep_2 + 57, 1256, 100);

playSe( spep_2 + 70, 1016);
playSe( spep_2 + 70, 1256);
playSe( spep_2 + 88, 1016);
playSe( spep_2 + 88, 1256);
setSeVolume( spep_2 + 70, 1016, 100);
setSeVolume( spep_2 + 70, 1256, 100);
setSeVolume( spep_2 + 88, 1016, 100);
setSeVolume( spep_2 + 88, 1256, 100);

-- ** 次の準備 ** --
spep_3 = spep_2 + 106 -2;

------------------------------------------------------
-- 被弾(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
hidan_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --被弾_前(ef_003)

setEffMoveKey( spep_3 + 0, hidan_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, hidan_f, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, hidan_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, hidan_f, 1.0, 1.0 );

setEffRotateKey( spep_3 + 0, hidan_f, 0 );
setEffRotateKey( spep_3 + 100, hidan_f, 0 );

setEffAlphaKey( spep_3 + 0, hidan_f, 255 );
setEffAlphaKey( spep_3 + 98, hidan_f, 255 );
setEffAlphaKey( spep_3 + 99, hidan_f, 0 );
setEffAlphaKey( spep_3 + 100, hidan_f, 0 );

hidan_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --被弾_後ろ(ef_004)

setEffMoveKey( spep_3 + 0, hidan_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, hidan_b, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, hidan_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, hidan_b, 1.0, 1.0 );

setEffRotateKey( spep_3 + 0, hidan_b, 0 );
setEffRotateKey( spep_3 + 100, hidan_b, 0 );

setEffAlphaKey( spep_3 + 0, hidan_b, 255 );
setEffAlphaKey( spep_3 + 98, hidan_b, 255 );
setEffAlphaKey( spep_3 + 99, hidan_b, 0 );
setEffAlphaKey( spep_3 + 100, hidan_b, 0 );

-- ** 敵の動き ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 90, 1, 0 ); --消す
changeAnime( spep_3 - 3 + 0, 1, 100 );
changeAnime( spep_3 - 3 + 10, 1, 104 );
changeAnime( spep_3 - 3 + 28, 1, 108 );
changeAnime( spep_3 - 3 + 49, 1, 106 );
changeAnime( spep_3 - 3 + 78, 1, 108 );

setMoveKey( spep_3 - 3 + 0, 1, -78.7, -4 , 0 );
setMoveKey( spep_3 - 3 + 2, 1, -67.7, -4.1 , 0 );
setMoveKey( spep_3 - 3 + 4, 1, -56.6, -4.1 , 0 );
setMoveKey( spep_3 - 3 + 6, 1, -56.3, -3.8 , 0 );
setMoveKey( spep_3 - 3 + 9, 1, -45.2, -3.9 , 0 );
setMoveKey( spep_3 - 3 + 10, 1, -34.1, 1.8 , 0 );
setMoveKey( spep_3 - 3 + 12, 1, -33.8, 2.1 , 0 );
setMoveKey( spep_3 - 3 + 14, 1, -22.8, 2 , 0 );
setMoveKey( spep_3 - 3 + 16, 1, -11.7, 1.9 , 0 );
setMoveKey( spep_3 - 3 + 18, 1, -9.6, 1.8 , 0 );
setMoveKey( spep_3 - 3 + 20, 1, -7.5, 1.8 , 0 );
setMoveKey( spep_3 - 3 + 22, 1, -5.5, 1.7 , 0 );
setMoveKey( spep_3 - 3 + 24, 1, -3.4, 1.7 , 0 );
setMoveKey( spep_3 - 3 + 27, 1, -12, 2 , 0 );
setMoveKey( spep_3 - 3 + 28, 1, 21.7, 4.3 , 0 );
setMoveKey( spep_3 - 3 + 30, 1, 23.1, -3.7 , 0 );
setMoveKey( spep_3 - 3 + 32, 1, 28.4, 4.2 , 0 );
setMoveKey( spep_3 - 3 + 34, 1, 29.8, 0.2 , 0 );
setMoveKey( spep_3 - 3 + 36, 1, 35.2, 4.1 , 0 );
setMoveKey( spep_3 - 3 + 38, 1, 34.5, 2.1 , 0 );
setMoveKey( spep_3 - 3 + 40, 1, 41.9, 4 , 0 );
setMoveKey( spep_3 - 3 + 42, 1, 32.1, 6.3 , 0 );
setMoveKey( spep_3 - 3 + 44, 1, 37.4, 4.3 , 0 );
setMoveKey( spep_3 - 3 + 47, 1, 38.8, 0.2 , 0 );
setMoveKey( spep_3 - 3 + 49, 1, 49.1, 35.1 , 0 );
setMoveKey( spep_3 - 3 + 60, 1, 57.9, 34.8 , 0 );
setMoveKey( spep_3 - 3 + 62, 1, 57.3, 36.8 , 0 );
setMoveKey( spep_3 - 3 + 64, 1, 64.6, 34.7 , 0 );
setMoveKey( spep_3 - 3 + 67, 1, 66, 30.7 , 0 );
setMoveKey( spep_3 - 3 + 78, 1, 91.3, 0.2 , 0 );
setMoveKey( spep_3 - 3 + 80, 1, 96.8, 4.2 , 0 );
setMoveKey( spep_3 - 3 + 83, 1, 96.3, 2.1 , 0 );
setMoveKey( spep_3 - 3 + 93, 1, 96.3, 2.1 , 0 );

setScaleKey( spep_3 - 3 + 0, 1, 1.51, 1.51 );
setScaleKey( spep_3 - 3 + 2, 1, 1.49, 1.49 );
setScaleKey( spep_3 - 3 + 4, 1, 1.48, 1.48 );
setScaleKey( spep_3 - 3 + 6, 1, 1.45, 1.45 );
setScaleKey( spep_3 - 3 + 9, 1, 1.44, 1.44 );
setScaleKey( spep_3 - 3 + 14, 1, 1.48, 1.48 );
setScaleKey( spep_3 - 3 + 16, 1, 1.47, 1.47 );
setScaleKey( spep_3 - 3 + 24, 1, 1.47, 1.47 );
setScaleKey( spep_3 - 3 + 27, 1, 1.45, 1.45 );
setScaleKey( spep_3 - 3 + 28, 1, 1.47, 1.47 );
setScaleKey( spep_3 - 3 + 40, 1, 1.47, 1.47 );
setScaleKey( spep_3 - 3 + 42, 1, 1.46, 1.46 );
setScaleKey( spep_3 - 3 + 47, 1, 1.46, 1.46 );
setScaleKey( spep_3 - 3 + 49, 1, 1.45, 1.45 );
setScaleKey( spep_3 - 3 + 60, 1, 1.44, 1.44 );
setScaleKey( spep_3 - 3 + 67, 1, 1.44, 1.44 );
setScaleKey( spep_3 - 3 + 78, 1, 1.43, 1.43 );
setScaleKey( spep_3 - 3 + 83, 1, 1.43, 1.43 );
setScaleKey( spep_3 - 3 + 93, 1, 1.43, 1.43 );

setRotateKey( spep_3 - 3 + 0, 1, 0 );
setRotateKey( spep_3 - 3 + 48, 1, 0 );
setRotateKey( spep_3 - 3 + 49, 1, -22.8 );
setRotateKey( spep_3 - 3 + 77, 1, -22.8 );
setRotateKey( spep_3 - 3 + 78, 1, 0 );
setRotateKey( spep_3 - 3 + 93, 1, 0 );

-- ** SE ** --
playSe( spep_3 + 0, 1257);
playSe( spep_3 + 10, 1257);
playSe( spep_3 + 23, 1011);
playSe( spep_3 + 32, 1017);
playSe( spep_3 + 46, 1025);
playSe( spep_3 + 59, 1023);
playSe( spep_3 + 69, 1025);
playSe( spep_3 + 96, 1016);
playSe( spep_3 + 96, 1256);
setSeVolume( spep_3 + 0, 1257, 100);
setSeVolume( spep_3 + 10, 1257, 100);
setSeVolume( spep_3 + 23, 1011, 79.4);
setSeVolume( spep_3 + 32, 1017, 79.4);
setSeVolume( spep_3 + 46, 1025, 79.4);
setSeVolume( spep_3 + 59, 1023, 79.4);
setSeVolume( spep_3 + 69, 1025, 100);
setSeVolume( spep_3 + 96, 1016, 100);
setSeVolume( spep_3 + 96, 1256, 100);

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 96;

------------------------------------------------------
-- ナビ(68F)
------------------------------------------------------
-- ** エフェクト等 ** --
nabi = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --ナビ(ef_005)

setEffMoveKey( spep_4 + 0, nabi, 0, 0 , 0 );
setEffMoveKey( spep_4 + 68, nabi, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, nabi, -1.0, 1.0 );
setEffScaleKey( spep_4 + 68, nabi, -1.0, 1.0 );

setEffRotateKey( spep_4 + 0, nabi, 0 );
setEffRotateKey( spep_4 + 68, nabi, 0 );

setEffAlphaKey( spep_4 + 0, nabi, 255 );
setEffAlphaKey( spep_4 + 68, nabi, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_4 + 0,  906, 68, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen2, 68, 20 );

setEffMoveKey( spep_4 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 68, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen2, 1.15, 1.89 );
setEffScaleKey( spep_4 + 68, shuchusen2, 1.15, 1.89 );

setEffRotateKey( spep_4 + 0, shuchusen2, 0 );
setEffRotateKey( spep_4 + 68, shuchusen2, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen2, 191 );
setEffAlphaKey( spep_4 + 68, shuchusen2, 191 );

-- ** SE ** --
playSe( spep_4 + 13, 1016);
playSe( spep_4 + 13, 1256);
playSe( spep_4 + 29, 1016);
playSe( spep_4 + 29, 1256);
playSe( spep_4 + 48, 1016);
playSe( spep_4 + 48, 1256);
playSe( spep_4 + 62, 1023);
setSeVolume( spep_4 + 13, 1016, 100);
setSeVolume( spep_4 + 13, 1256, 100);
setSeVolume( spep_4 + 29, 1016, 100);
setSeVolume( spep_4 + 29, 1256, 100);
setSeVolume( spep_4 + 48, 1016, 100);
setSeVolume( spep_4 + 48, 1256, 100);
setSeVolume( spep_4 + 62, 1023, 100);

-- ** 背景 ** --
entryFadeBg( spep_4 + 0, 0, 68, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 66;

------------------------------------------------------
-- 追撃(80F)
------------------------------------------------------

-- ** エフェクト等 ** --
tsuigeki_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --追撃_前(ef_006)

setEffMoveKey( spep_5 + 0, tsuigeki_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 80, tsuigeki_f, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, tsuigeki_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 80, tsuigeki_f, 1.0, 1.0 );

setEffRotateKey( spep_5 + 0, tsuigeki_f, 0 );
setEffRotateKey( spep_5 + 80, tsuigeki_f, 0 );

setEffAlphaKey( spep_5 + 0, tsuigeki_f, 255 );
setEffAlphaKey( spep_5 + 80, tsuigeki_f, 255 );

tsuigeki_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --追撃_後ろ(ef_007)

setEffMoveKey( spep_5 + 0, tsuigeki_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 80, tsuigeki_b, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, tsuigeki_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 80, tsuigeki_b, 1.0, 1.0 );

setEffRotateKey( spep_5 + 0, tsuigeki_b, 0 );
setEffRotateKey( spep_5 + 80, tsuigeki_b, 0 );

setEffAlphaKey( spep_5 + 0, tsuigeki_b, 255 );
setEffAlphaKey( spep_5 + 80, tsuigeki_b, 255 );

-- ** 敵の動き ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 78, 1, 0 );  --消す
changeAnime( spep_5 + 0, 1, 108 );

setMoveKey( spep_5 + 0, 1, -74.1, -21.6 , 0 );
setMoveKey( spep_5 + 2, 1, -65.7, -13.7 , 0 );
setMoveKey( spep_5 + 4, 1, -51, 13.2 , 0 );
setMoveKey( spep_5 + 6, 1, -46, 27 , 0 );
setMoveKey( spep_5 + 8, 1, -28.5, 46.9 , 0 );
setMoveKey( spep_5 + 10, 1, -20.7, 53.8 , 0 );
setMoveKey( spep_5 + 12, 1, -6.7, 79.6 , 0 );
setMoveKey( spep_5 + 14, 1, -2.5, 92.4 , 0 );
setMoveKey( spep_5 + 16, 1, 5.2, 97.6 , 0 );
setMoveKey( spep_5 + 18, 1, -0.3, 102.1 , 0 );
setMoveKey( spep_5 + 20, 1, 7, 100.2 , 0 );
setMoveKey( spep_5 + 22, 1, 4.6, 92 , 0 );
setMoveKey( spep_5 + 24, 1, 8.7, 102.9 , 0 );
setMoveKey( spep_5 + 26, 1, 6.3, 100.9 , 0 );
setMoveKey( spep_5 + 28, 1, 10.4, 105.4 , 0 );
setMoveKey( spep_5 + 30, 1, 4.8, 103.4 , 0 );
setMoveKey( spep_5 + 32, 1, 12, 107.8 , 0 );
setMoveKey( spep_5 + 34, 1, 3.2, 115.3 , 0 );
setMoveKey( spep_5 + 36, 1, 13.6, 110.1 , 0 );
setMoveKey( spep_5 + 38, 1, 11.1, 101.6 , 0 );
setMoveKey( spep_5 + 40, 1, 15, 112.3 , 0 );
setMoveKey( spep_5 + 42, 1, 12.5, 107 , 0 );
setMoveKey( spep_5 + 44, 1, 16.4, 114.5 , 0 );
setMoveKey( spep_5 + 46, 1, 4.3, 112.3 , 0 );
setMoveKey( spep_5 + 48, 1, 17.8, 116.5 , 0 );
setMoveKey( spep_5 + 50, 1, 15.2, 107.9 , 0 );
setMoveKey( spep_5 + 52, 1, 19.1, 118.4 , 0 );
setMoveKey( spep_5 + 54, 1, 16.5, 116.2 , 0 );
setMoveKey( spep_5 + 56, 1, 20.3, 120.3 , 0 );
setMoveKey( spep_5 + 58, 1, 8.1, 127.5 , 0 );
setMoveKey( spep_5 + 60, 1, 21.5, 122 , 0 );
setMoveKey( spep_5 + 62, 1, 18.8, 113.2 , 0 );
setMoveKey( spep_5 + 64, 1, 22.5, 123.7 , 0 );
setMoveKey( spep_5 + 66, 1, 16.7, 121.3 , 0 );
setMoveKey( spep_5 + 68, 1, 23.6, 125.2 , 0 );
setMoveKey( spep_5 + 70, 1, 24.1, 126 , 0 );
setMoveKey( spep_5 + 72, 1, 21.4, 123.5 , 0 );
setMoveKey( spep_5 + 74, 1, 25, 127.4 , 0 );
setMoveKey( spep_5 + 76, 1, 19.1, 131.3 , 0 );
setMoveKey( spep_5 + 78, 1, 25.9, 128.7 , 0 );

setScaleKey( spep_5 + 0, 1, 1.67, 1.67 );
setScaleKey( spep_5 + 2, 1, 1.61, 1.61 );
setScaleKey( spep_5 + 4, 1, 1.56, 1.56 );
setScaleKey( spep_5 + 6, 1, 1.51, 1.51 );
setScaleKey( spep_5 + 8, 1, 1.45, 1.45 );
setScaleKey( spep_5 + 10, 1, 1.4, 1.4 );
setScaleKey( spep_5 + 12, 1, 1.35, 1.35 );
setScaleKey( spep_5 + 14, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 16, 1, 1.29, 1.29 );
setScaleKey( spep_5 + 18, 1, 1.29, 1.29 );
setScaleKey( spep_5 + 20, 1, 1.28, 1.28 );
setScaleKey( spep_5 + 22, 1, 1.28, 1.28 );
setScaleKey( spep_5 + 24, 1, 1.27, 1.27 );
setScaleKey( spep_5 + 28, 1, 1.27, 1.27 );
setScaleKey( spep_5 + 30, 1, 1.26, 1.26 );
setScaleKey( spep_5 + 34, 1, 1.26, 1.26 );
setScaleKey( spep_5 + 36, 1, 1.25, 1.25 );
setScaleKey( spep_5 + 40, 1, 1.25, 1.25 );
setScaleKey( spep_5 + 42, 1, 1.24, 1.24 );
setScaleKey( spep_5 + 46, 1, 1.24, 1.24 );
setScaleKey( spep_5 + 48, 1, 1.23, 1.23 );
setScaleKey( spep_5 + 54, 1, 1.23, 1.23 );
setScaleKey( spep_5 + 56, 1, 1.22, 1.22 );
setScaleKey( spep_5 + 62, 1, 1.22, 1.22 );
setScaleKey( spep_5 + 64, 1, 1.21, 1.21 );
setScaleKey( spep_5 + 70, 1, 1.21, 1.21 );
setScaleKey( spep_5 + 72, 1, 1.19, 1.19 );
setScaleKey( spep_5 + 78, 1, 1.19, 1.19 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 78, 1, 0 );


-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_5 + 0,  906, 78, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen3, 78, 20 );

setEffMoveKey( spep_5 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_5 + 78, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen3, 1.1, 1.23 );
setEffScaleKey( spep_5 + 78, shuchusen3, 1.1, 1.23 );

setEffRotateKey( spep_5 + 0, shuchusen3, 0 );
setEffRotateKey( spep_5 + 78, shuchusen3, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen3, 191 );
setEffAlphaKey( spep_5 + 78, shuchusen3, 191 );

-- ** SE ** --
playSe( spep_5 + 11, 1011);
playSe( spep_5 + 24, 1025);
playSe( spep_5 + 37, 1060);
playSe( spep_5 + 52, 1052);

setSeVolume( spep_5 + 11, 1011, 79.4);
setSeVolume( spep_5 + 24, 1025, 70.8);
setSeVolume( spep_5 + 37, 1060, 79.4);
setSeVolume( spep_5 + 52, 1052, 89.1);

-- ** 白フェード ** --
entryFade( spep_5 + 60, 16,  8, 8, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 背景 ** --
entryFadeBg( spep_5 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景


-- ** 次の準備 ** --
spep_6 = spep_5 + 80;
------------------------------------------------------
-- 敵吹っ飛びシーン(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
haikei = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --背景(ef_008)
setEffMoveKey( spep_6 + 0, haikei, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, haikei, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, haikei, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, haikei, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, haikei, 0 );
setEffRotateKey( spep_6 + 100, haikei, 0 );
setEffAlphaKey( spep_6 + 0, haikei, 255 );
setEffAlphaKey( spep_6 + 100, haikei, 255 );


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
setMoveKey( spep_6 + 100, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_6 + 0, 1, 0.2, 0.2 );
setScaleKey( spep_6 + 1, 1, 0.2, 0.2 );
setScaleKey( spep_6 + 2, 1, 0.25, 0.25 );
setScaleKey( spep_6 + 3, 1, 0.25, 0.25 );
setScaleKey( spep_6 + 4, 1, 0.46, 0.46 );
setScaleKey( spep_6 + 5, 1, 0.46, 0.46 );
setScaleKey( spep_6 + 6, 1, 0.55, 0.55 );
setScaleKey( spep_6 + 7, 1, 0.55, 0.55 );
setScaleKey( spep_6 + 8, 1, 0.71, 0.71 );
setScaleKey( spep_6 + 9, 1, 0.71, 0.71 );
setScaleKey( spep_6 + 10, 1, 0.97, 0.97 );
setScaleKey( spep_6 + 11, 1, 0.97, 0.97 );
setScaleKey( spep_6 + 12, 1, 1.1, 1.1 );  --画面にぶつかる
setScaleKey( spep_6 + 13, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 14, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 15, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 16, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 17, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 18, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 19, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 20, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 21, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 22, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 23, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 24, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 25, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 26, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 100, 1, 1.2, 1.2 );

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
setRotateKey( spep_6 + 100, 1, -40 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_6 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発

setEffMoveKey( spep_6 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_6 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_6 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_6 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_6 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_6 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_6 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_6 + 112, bakuhatsu, 255 );


-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_6 + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_6 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_6 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen4, 0 );
setEffRotateKey( spep_6 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_6 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_6 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_6 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_6 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_6 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_6 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_6 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_6 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_6 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_6 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_6 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_6 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_6 + 100, shuchusen5, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen5, 0 );
setEffRotateKey( spep_6 + 100, shuchusen5, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_6 + 100, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_6 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_6 + 14, ctga, 14, 20 );

setEffMoveKey( spep_6 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_6 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_6 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_6 + 14, ctga, -10.9 );
setEffRotateKey( spep_6 + 15, ctga, -10.9 );
setEffRotateKey( spep_6 + 16, ctga, -14.9 );
setEffRotateKey( spep_6 + 17, ctga, -14.9 );
setEffRotateKey( spep_6 + 18, ctga, -10.9 );
setEffRotateKey( spep_6 + 19, ctga, -10.9 );
setEffRotateKey( spep_6 + 20, ctga, -14.9 );
setEffRotateKey( spep_6 + 21, ctga, -14.9 );
setEffRotateKey( spep_6 + 22, ctga, -10.9 );
setEffRotateKey( spep_6 + 23, ctga, -10.9 );
setEffRotateKey( spep_6 + 24, ctga, -14.9 );
setEffRotateKey( spep_6 + 25, ctga, -14.9 );
setEffRotateKey( spep_6 + 26, ctga, -10.9 );
setEffRotateKey( spep_6 + 27, ctga, -10.9 );
setEffRotateKey( spep_6 + 28, ctga, -14.9 );
setEffRotateKey( spep_6 + 100, ctga, -14.9 );

setEffAlphaKey( spep_6 + 14, ctga, 255 );
setEffAlphaKey( spep_6 + 100, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_6 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_6 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_6 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_6 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_6 + 2, hibiware, 0 );
setEffRotateKey( spep_6 + 100, hibiware, 0 );

setEffAlphaKey( spep_6 + 2, hibiware, 0 );
setEffAlphaKey( spep_6 + 13, hibiware, 0 );
setEffAlphaKey( spep_6 + 14, hibiware, 255 );
setEffAlphaKey( spep_6 + 100, hibiware, 255 );

-- ** SE ** --
playSe( spep_6 + 0, 1023);
playSe( spep_6 + 14, 1054);
setSeVolume( spep_6 + 0, 1023, 100);
setSeVolume( spep_6 + 14, 1054, 100);

-- ** 背景 ** --
entryFadeBg( spep_6 + 0, 0, 98, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ダメージ表記 ** --
dealDamage( spep_6 + 0 );
endPhase( spep_6 + 98 );

end