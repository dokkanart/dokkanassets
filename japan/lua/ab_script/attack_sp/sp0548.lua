--超サイヤ人ブロリー _ブラッディースマッシュ
--sp_effect_b4_00093

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
SP_01 = 153484; --拡散気弾
SP_02 = 153485; --被弾　奥
SP_03 = 153486; --被弾
SP_04 = 153487; --セリフカットイン
SP_05 = 153488; --踏みつけ
SP_06 = 153489; --踏みつけ被弾　奥
SP_07 = 153490; --踏みつけ被弾

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);

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
-- 拡散気弾(176F)
------------------------------------------------------
spep_0 = 0;

--エフェクトの再生
kakusan = entryEffectLife(  spep_0,   SP_01, 176,  0x100,  -1,  0,  0,  0);    -- 拡散気弾
setEffMoveKey( spep_0 , kakusan, 0, 0 , 0 );
setEffMoveKey( spep_0 + 176, kakusan, 0, 0 , 0 );
setEffScaleKey( spep_0 , kakusan, 1.0, 1.0 );
setEffScaleKey( spep_0 + 176, kakusan, 1.0, 1.0 );
setEffRotateKey( spep_0 , kakusan, 0 );
setEffRotateKey( spep_0 + 176, kakusan, 0 );
setEffAlphaKey( spep_0 , kakusan, 255 );
setEffAlphaKey( spep_0 + 175, kakusan, 255 );
setEffAlphaKey( spep_0 + 176, kakusan, 0 );

-- ** 音 ** --
playSe( spep_0 + 60, 1042 );  --発射前
playSe( spep_0 + 90, 1017 );  --気弾発射
playSe( spep_0 + 106, 1019 );  --気弾迫る

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 176, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_1 = spep_0 + 176;
------------------------------------------------------
-- 被弾(258F)
------------------------------------------------------
--エフェクトの再生
hidan_b=entryEffectLife(  spep_1,   SP_02, 258,  0x80,    -1,  0,  0,  0);    -- 被弾　奥
setEffMoveKey( spep_1 , hidan_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 258, hidan_b, 0, 0 , 0 );
setEffScaleKey( spep_1 , hidan_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 258, hidan_b, 1.0, 1.0 );
setEffRotateKey( spep_1 , hidan_b, 0 );
setEffRotateKey( spep_1 + 258, hidan_b, 0 );
setEffAlphaKey( spep_1 , hidan_b, 255 );
setEffAlphaKey( spep_1 + 257, hidan_b, 255 );
setEffAlphaKey( spep_1 + 258, hidan_b, 0 );

hidan_f=entryEffectLife(  spep_1,   SP_03,  258,  0x100,    -1,  0,  0,  0);    -- 被弾
setEffMoveKey( spep_1 , hidan_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 258, hidan_f, 0, 0 , 0 );
setEffScaleKey( spep_1 , hidan_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 258, hidan_f, 1.0, 1.0 );
setEffRotateKey( spep_1 , hidan_f, 0 );
setEffRotateKey( spep_1 + 258, hidan_f, 0 );
setEffAlphaKey( spep_1 , hidan_f, 255 );
setEffAlphaKey( spep_1 + 257, hidan_f, 255 );
setEffAlphaKey( spep_1 + 258, hidan_f, 0 );

--敵の動き
setDisp( spep_1  + 0, 1, 1 );
changeAnime( spep_1  + 0, 1, 100 );

setMoveKey( spep_1  + 0, 1, -111.3, 49.1 , 0 );
setMoveKey( spep_1 -3 + 4, 1, -20.5, 80 , 0 );
setMoveKey( spep_1 -3 + 6, 1, -12.6, 85.8 , 0 );
setMoveKey( spep_1 -3 + 8, 1, -7.5, 89.6 , 0 );
setMoveKey( spep_1 -3 + 10, 1, -3.1, 92.9 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 0.7, 95.7 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 4.1, 98.2 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 7.1, 100.5 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 9.9, 102.5 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 12.4, 104.4 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 14.7, 106.1 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 16.8, 107.7 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 18.8, 109.1 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 20.6, 110.4 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 22.2, 111.7 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 23.8, 112.8 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 25.2, 113.9 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 26.6, 114.9 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 27.8, 115.8 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 29, 116.7 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 30.1, 117.5 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 31.1, 118.2 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 32.1, 118.9 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 32.9, 119.6 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 33.8, 120.2 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 34.5, 120.7 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 35.2, 121.2 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 35.9, 121.7 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 36.5, 122.2 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 37.1, 122.6 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 37.6, 123 , 0 );

setScaleKey( spep_1  + 0, 1, 1.63, 1.63 );
setScaleKey( spep_1 -3 + 4, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 6, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 8, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 10, 1, 1.46, 1.46 );
setScaleKey( spep_1 -3 + 12, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 14, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 16, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 18, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 20, 1, 1.41, 1.41 );
setScaleKey( spep_1 -3 + 22, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 24, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 26, 1, 1.39, 1.39 );
setScaleKey( spep_1 -3 + 28, 1, 1.39, 1.39 );
setScaleKey( spep_1 -3 + 30, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 32, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 34, 1, 1.37, 1.37 );
setScaleKey( spep_1 -3 + 36, 1, 1.37, 1.37 );
setScaleKey( spep_1 -3 + 38, 1, 1.36, 1.36 );
setScaleKey( spep_1 -3 + 42, 1, 1.36, 1.36 );
setScaleKey( spep_1 -3 + 44, 1, 1.35, 1.35 );
setScaleKey( spep_1 -3 + 50, 1, 1.35, 1.35 );
setScaleKey( spep_1 -3 + 52, 1, 1.34, 1.34 );
setScaleKey( spep_1 -3 + 62, 1, 1.34, 1.34 );

setRotateKey( spep_1  + 0, 1, 0 );
--setRotateKey( spep_1 -3 + 126, 1, 0 );

-- ** 音 ** --
playSe( spep_1 + 40, 1023 );  --爆発

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 258, 0, 0, 0, 0, 255 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 60; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
changeAnime( SP_dodge + 0, 1, 100 );  --ガード

setMoveKey( SP_dodge + 0, 1, 37.6, 123 , 0 );
setMoveKey( SP_dodge + 2, 1, 38.1, 123.4 , 0 );
setMoveKey( SP_dodge + 4, 1, 38.5, 123.7 , 0 );
setMoveKey( SP_dodge + 6, 1, 38.9, 124 , 0 );
setMoveKey( SP_dodge + 8, 1, 39.3, 124.3 , 0 );
setMoveKey( SP_dodge + 10, 1, 39.6, 124.5 , 0 );

setScaleKey( SP_dodge + 0, 1, 1.34, 1.34 );
setScaleKey( SP_dodge + 2, 1, 1.33, 1.33 );
setScaleKey( SP_dodge + 10, 1, 1.33, 1.33 );

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

--敵の動き
setDisp( spep_1 -3 + 203, 1, 0 );
changeAnime( spep_1 -3 + 116, 1, 108 );
changeAnime( spep_1 -3 + 164, 1, 5 );

setMoveKey( spep_1 -3 + 64, 1, 38.1, 123.4 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 38.5, 123.7 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 38.9, 124 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 39.3, 124.3 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 39.6, 124.5 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 40, 124.7 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 40.2, 124.9 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 40.5, 125.1 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 40.7, 125.3 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 40.9, 125.4 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 41.1, 125.6 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 41.2, 125.7 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 41.4, 125.8 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 41.5, 125.9 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 41.6, 125.9 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 41.6, 126 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 32.7, 123.5 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 50.8, 126.6 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 38.2, 119.7 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 42.4, 131 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 47.1, 119.5 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 34.3, 126.9 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 47.6, 125.6 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 35.8, 137.8 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 47.4, 142.2 , 0 );
setMoveKey( spep_1 -3 + 115, 1, 44.2, 160.7 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 39.7, 163 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 38.4, 178 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 24.1, 189 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 18.8, 190.9 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 15.7, 204.4 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 9.6, 203.3 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 7, 216.6 , 0 );
setMoveKey( spep_1 -3 + 130, 1, -5.5, 217.4 , 0 );
setMoveKey( spep_1 -3 + 132, 1, -2.8, 221.6 , 0 );
setMoveKey( spep_1 -3 + 134, 1, -2.8, 195.4 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 29.4, 146.5 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 63, 69.8 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 88.3, 21.7 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 89.5, 0.5 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 101.6, -10 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 102.5, -24 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 111.9, -41.7 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 112.9, -63.6 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 120.6, -77.3 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 121.2, -74.1 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 124.4, -96.3 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 126.7, -98.3 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 128.6, -110.7 , 0 );
setMoveKey( spep_1 -3 + 163, 1, 130.5, -111.1 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 130.1, -118.7 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 130.4, -118.7 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 130.6, -121.9 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 131, -128.2 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 131.3, -137.1 , 0 );
setMoveKey( spep_1 -3 + 174, 1, 131.7, -148 , 0 );
setMoveKey( spep_1 -3 + 176, 1, 132.1, -160.3 , 0 );
setMoveKey( spep_1 -3 + 178, 1, 131.8, -161.1 , 0 );
setMoveKey( spep_1 -3 + 180, 1, 132.2, -175.7 , 0 );
setMoveKey( spep_1 -3 + 182, 1, 132.1, -180 , 0 );
setMoveKey( spep_1 -3 + 184, 1, 132.5, -195.7 , 0 );
setMoveKey( spep_1 -3 + 186, 1, 132.5, -202.7 , 0 );
setMoveKey( spep_1 -3 + 188, 1, 132.8, -211.9 , 0 );
setMoveKey( spep_1 -3 + 190, 1, 133.1, -223.2 , 0 );
setMoveKey( spep_1 -3 + 192, 1, 133.7, -239.3 , 0 );
setMoveKey( spep_1 -3 + 194, 1, 134.3, -253.4 , 0 );
setMoveKey( spep_1 -3 + 196, 1, 135.3, -270.5 , 0 );
setMoveKey( spep_1 -3 + 198, 1, 136.7, -291.6 , 0 );
setMoveKey( spep_1 -3 + 200, 1, 138.5, -318.9 , 0 );
setMoveKey( spep_1 -3 + 203, 1, 141.7, -363.3 , 0 );

setScaleKey( spep_1 -3 + 64, 1, 1.33, 1.33 );
setScaleKey( spep_1 -3 + 82, 1, 1.33, 1.33 );
setScaleKey( spep_1 -3 + 84, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 108, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 110, 1, 1.27, 1.27 );
setScaleKey( spep_1 -3 + 112, 1, 1.23, 1.23 );
setScaleKey( spep_1 -3 + 115, 1, 1.18, 1.18 );
setScaleKey( spep_1 -3 + 116, 1, 1.14, 1.14 );
setScaleKey( spep_1 -3 + 118, 1, 1.15, 1.15 );
setScaleKey( spep_1 -3 + 120, 1, 1.17, 1.17 );
setScaleKey( spep_1 -3 + 122, 1, 1.17, 1.17 );
setScaleKey( spep_1 -3 + 124, 1, 1.18, 1.18 );
setScaleKey( spep_1 -3 + 126, 1, 1.19, 1.19 );
setScaleKey( spep_1 -3 + 130, 1, 1.19, 1.19 );
setScaleKey( spep_1 -3 + 132, 1, 1.18, 1.18 );
setScaleKey( spep_1 -3 + 134, 1, 1.12, 1.12 );
setScaleKey( spep_1 -3 + 136, 1, 0.98, 0.98 );
setScaleKey( spep_1 -3 + 138, 1, 0.78, 0.78 );
setScaleKey( spep_1 -3 + 140, 1, 0.66, 0.66 );
setScaleKey( spep_1 -3 + 142, 1, 0.6, 0.6 );
setScaleKey( spep_1 -3 + 144, 1, 0.55, 0.55 );
setScaleKey( spep_1 -3 + 146, 1, 0.5, 0.5 );
setScaleKey( spep_1 -3 + 148, 1, 0.46, 0.46 );
setScaleKey( spep_1 -3 + 150, 1, 0.41, 0.41 );
setScaleKey( spep_1 -3 + 152, 1, 0.37, 0.37 );
setScaleKey( spep_1 -3 + 154, 1, 0.35, 0.35 );
setScaleKey( spep_1 -3 + 156, 1, 0.31, 0.31 );
setScaleKey( spep_1 -3 + 158, 1, 0.28, 0.28 );
setScaleKey( spep_1 -3 + 160, 1, 0.26, 0.26 );
setScaleKey( spep_1 -3 + 163, 1, 0.24, 0.24 );
setScaleKey( spep_1 -3 + 164, 1, 0.22, 0.22 );
setScaleKey( spep_1 -3 + 166, 1, 0.21, 0.21 );
setScaleKey( spep_1 -3 + 168, 1, 0.19, 0.19 );
setScaleKey( spep_1 -3 + 170, 1, 0.18, 0.18 );
setScaleKey( spep_1 -3 + 172, 1, 0.17, 0.17 );
setScaleKey( spep_1 -3 + 174, 1, 0.15, 0.15 );
setScaleKey( spep_1 -3 + 176, 1, 0.14, 0.14 );
setScaleKey( spep_1 -3 + 178, 1, 0.14, 0.14 );
setScaleKey( spep_1 -3 + 180, 1, 0.13, 0.13 );
setScaleKey( spep_1 -3 + 182, 1, 0.13, 0.13 );
setScaleKey( spep_1 -3 + 184, 1, 0.11, 0.11 );
setScaleKey( spep_1 -3 + 190, 1, 0.11, 0.11 );
setScaleKey( spep_1 -3 + 192, 1, 0.1, 0.1 );
setScaleKey( spep_1 -3 + 203, 1, 0.1, 0.1 );

setRotateKey( spep_1 -3 + 158, 1, 0 );
setRotateKey( spep_1 -3 + 160, 1, 9.7 );
setRotateKey( spep_1 -3 + 163, 1, 39 );
setRotateKey( spep_1 -3 + 164, 1, 29.5 );
setRotateKey( spep_1 -3 + 166, 1, 29.5 );
setRotateKey( spep_1 -3 + 168, 1, 29.6 );
setRotateKey( spep_1 -3 + 170, 1, 30 );
setRotateKey( spep_1 -3 + 172, 1, 30.6 );
setRotateKey( spep_1 -3 + 174, 1, 31.4 );
setRotateKey( spep_1 -3 + 176, 1, 32.4 );
setRotateKey( spep_1 -3 + 178, 1, 33.6 );
setRotateKey( spep_1 -3 + 180, 1, 34.9 );
setRotateKey( spep_1 -3 + 182, 1, 36.5 );
setRotateKey( spep_1 -3 + 184, 1, 38.3 );
setRotateKey( spep_1 -3 + 186, 1, 40.4 );
setRotateKey( spep_1 -3 + 188, 1, 42.6 );
setRotateKey( spep_1 -3 + 190, 1, 45.2 );
setRotateKey( spep_1 -3 + 192, 1, 48 );
setRotateKey( spep_1 -3 + 194, 1, 51.3 );
setRotateKey( spep_1 -3 + 196, 1, 55 );
setRotateKey( spep_1 -3 + 198, 1, 59.5 );
setRotateKey( spep_1 -3 + 200, 1, 65.2 );
setRotateKey( spep_1 -3 + 203, 1, 74.2 );

-- ** 音 ** --
playSe( spep_1 + 82, 1023 );  --爆発
playSe( spep_1 + 110, 1024 );  --被弾
playSe( spep_1 + 218, 1002 );  --被弾

--次の準備
spep_2 = spep_1 + 258;
------------------------------------------------------
-- セリフカットイン(96F)
------------------------------------------------------
--エフェクトの再生
cutin=entryEffectLife(  spep_2,   SP_04,  96,  0x100,  -1,  0,  0,  0);    -- セリフカットイン
setEffMoveKey( spep_2 , cutin, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, cutin, 0, 0 , 0 );
setEffScaleKey( spep_2 , cutin, 1.0, 1.0 );
setEffScaleKey( spep_2 + 96, cutin, 1.0, 1.0 );
setEffRotateKey( spep_2 , cutin, 0 );
setEffRotateKey( spep_2 + 96, cutin, 0 );
setEffAlphaKey( spep_2 , cutin, 255 );
setEffAlphaKey( spep_2 + 95, cutin, 255 );
setEffAlphaKey( spep_2 + 96, cutin, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_2 + 0,  906, 84, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen1, 84, 25 );

setEffMoveKey( spep_2 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 84, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_2 + 84, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_2 + 0, shuchusen1, 0 );
setEffRotateKey( spep_2 + 84, shuchusen1, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_2 + 9, shuchusen1, 0 );
setEffAlphaKey( spep_2 + 10, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 84, shuchusen1, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_2 + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_2 + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_2 + 16,  190006, 68, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_2 + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_2 + 16, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_2 + 84, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_2 + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_2 + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_2 + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_2 + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_2 + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_2 + 84, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_2 + 16, ctgogo, 0 );
setEffRotateKey( spep_2 + 84, ctgogo, 0 );

setEffAlphaKey( spep_2 + 16, ctgogo, 255 );
setEffAlphaKey( spep_2 + 84, ctgogo, 255 );

-- ** 音 ** --
playSe( spep_2 + 16, SE_04 );  --ゴゴゴ
playSe( spep_2 + 82, 8 );  --突進

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_3 = spep_2 + 96;

--------------------------------------
--カードカットイン
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusenX = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusenX, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusenX, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusenX, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusenX, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusenX, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusenX, 0 );
setEffRotateKey( spep_3 + 90, shuchusenX, 0 );

setEffAlphaKey( spep_3 + 0, shuchusenX, 255 );
setEffAlphaKey( spep_3 + 90, shuchusenX, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

--次の準備
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_4 = spep_3 + 94;

------------------------------------------------------
--踏みつけ(158F)
------------------------------------------------------
--エフェクトの再生
rush = entryEffectLife(  spep_4,   SP_05, 158,  0x100,  -1,  0,  0,  0);    -- 踏みつけ
setEffMoveKey( spep_4 , rush, 0, 0 , 0 );
setEffMoveKey( spep_4 + 158, rush, 0, 0 , 0 );
setEffScaleKey( spep_4 , rush, 1.0, 1.0 );
setEffScaleKey( spep_4 + 158, rush, 1.0, 1.0 );
setEffRotateKey( spep_4 , rush, 0 );
setEffRotateKey( spep_4 + 158, rush, 0 );
setEffAlphaKey( spep_4 , rush, 255 );
setEffAlphaKey( spep_4 + 157, rush, 255 );
setEffAlphaKey( spep_4 + 158, rush, 0 );

-- ** 音 ** --
playSe( spep_4 + 22, 9 );  --突進
playSe( spep_4 + 112, 1072 );  --踏みつけ前

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 158, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_5 = spep_4 + 158;

------------------------------------------------------
--被弾(124F)
------------------------------------------------------
--エフェクトの再生
fumi_b = entryEffect(  spep_5,   SP_06,   0x100,  -1,  0,  0,  0);    -- 被弾　奥
setEffMoveKey( spep_5 , fumi_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 124, fumi_b, 0, 0 , 0 );
setEffScaleKey( spep_5 , fumi_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 124, fumi_b, 1.0, 1.0 );
setEffRotateKey( spep_5 , fumi_b, 0 );
setEffRotateKey( spep_5 + 124, fumi_b, 0 );
setEffAlphaKey( spep_5 , fumi_b, 255 );
setEffAlphaKey( spep_5 + 124, fumi_b, 255 );

fumi_f = entryEffect(  spep_5,   SP_07,   0x80,  -1,  0,  0,  0);    -- 被弾　奥
setEffMoveKey( spep_5 , fumi_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 124, fumi_f, 0, 0 , 0 );
setEffScaleKey( spep_5 , fumi_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 124, fumi_f, 1.0, 1.0 );
setEffRotateKey( spep_5 , fumi_f, 0 );
setEffRotateKey( spep_5 + 124, fumi_f, 0 );
setEffAlphaKey( spep_5 , fumi_f, 255 );
setEffAlphaKey( spep_5 + 124, fumi_f, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 74, 1, 0 );
changeAnime( spep_5 + 0, 1, 108 );

setMoveKey( spep_5 + 0, 1, 3.2, -45.5 , 0 );
setMoveKey( spep_5 -3 + 4, 1, 3.4, -37.4 , 0 );
setMoveKey( spep_5 -3 + 5, 1, 3.4, -37.4 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 3.4, -36 , 0 );
setMoveKey( spep_5 -3 + 7, 1, 3.4, -36 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 3.4, -35 , 0 );
setMoveKey( spep_5 -3 + 9, 1, 3.4, -35 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 3.4, -34.2 , 0 );
setMoveKey( spep_5 -3 + 11, 1, 3.4, -34.2 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 3.5, -33.5 , 0 );
setMoveKey( spep_5 -3 + 13, 1, 3.5, -33.5 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 3.5, -33 , 0 );
setMoveKey( spep_5 -3 + 15, 1, 3.5, -33 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -9.2, -70.4 , 0 );
setMoveKey( spep_5 -3 + 17, 1, -9.2, -70.4 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 17.8, -12.7 , 0 );
setMoveKey( spep_5 -3 + 19, 1, 17.8, -12.7 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -1.7, -57.7 , 0 );
setMoveKey( spep_5 -3 + 21, 1, -1.7, -57.7 , 0 );
setMoveKey( spep_5 -3 + 22, 1, -2.6, -6.7 , 0 );
setMoveKey( spep_5 -3 + 23, 1, -2.6, -6.7 , 0 );
setMoveKey( spep_5 -3 + 24, 1, -1.5, -68 , 0 );
setMoveKey( spep_5 -3 + 25, 1, -1.5, -68 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 7.3, -10.1 , 0 );
setMoveKey( spep_5 -3 + 27, 1, 7.3, -10.1 , 0 );
setMoveKey( spep_5 -3 + 28, 1, -4.7, -43.7 , 0 );
setMoveKey( spep_5 -3 + 29, 1, -4.7, -43.7 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 8.7, 1.7 , 0 );
setMoveKey( spep_5 -3 + 31, 1, 8.7, 1.7 , 0 );
setMoveKey( spep_5 -3 + 32, 1, -8.1, -57.5 , 0 );
setMoveKey( spep_5 -3 + 33, 1, -8.1, -57.5 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 13.6, -14.1 , 0 );
setMoveKey( spep_5 -3 + 35, 1, 13.6, -14.1 , 0 );
setMoveKey( spep_5 -3 + 36, 1, -5.9, -51.6 , 0 );
setMoveKey( spep_5 -3 + 37, 1, -5.9, -51.6 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 16.6, -60.9 , 0 );
setMoveKey( spep_5 -3 + 39, 1, 16.6, -60.9 , 0 );
setMoveKey( spep_5 -3 + 40, 1, -8.7, -43.5 , 0 );
setMoveKey( spep_5 -3 + 41, 1, -8.7, -43.5 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 16.5, -46.8 , 0 );
setMoveKey( spep_5 -3 + 43, 1, 16.5, -46.8 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 0.8, -65.8 , 0 );
setMoveKey( spep_5 -3 + 45, 1, 0.8, -65.8 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 12.7, -25.5 , 0 );
setMoveKey( spep_5 -3 + 47, 1, 12.7, -25.5 , 0 );
setMoveKey( spep_5 -3 + 48, 1, -2.6, -56.3 , 0 );
setMoveKey( spep_5 -3 + 49, 1, -2.6, -56.3 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 20.1, -49.4 , 0 );
setMoveKey( spep_5 -3 + 51, 1, 20.1, -49.4 , 0 );
setMoveKey( spep_5 -3 + 52, 1, -1.7, -35 , 0 );
setMoveKey( spep_5 -3 + 53, 1, -1.7, -35 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 15.7, -49.5 , 0 );
setMoveKey( spep_5 -3 + 55, 1, 15.7, -49.5 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 0.6, -65.9 , 0 );
setMoveKey( spep_5 -3 + 57, 1, 0.6, -65.9 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 7.9, -32.6 , 0 );
setMoveKey( spep_5 -3 + 59, 1, 7.9, -32.6 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 8.9, -73.3 , 0 );
setMoveKey( spep_5 -3 + 61, 1, 8.9, -73.3 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 2.6, -35.8 , 0 );
setMoveKey( spep_5 -3 + 63, 1, 2.6, -35.8 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 5.7, -67 , 0 );
setMoveKey( spep_5 -3 + 65, 1, 5.7, -67 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 10.8, -38.2 , 0 );
setMoveKey( spep_5 -3 + 67, 1, 10.8, -38.2 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 3, -57.6 , 0 );
setMoveKey( spep_5 -3 + 69, 1, 3, -57.6 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 4.4, -37.3 , 0 );
setMoveKey( spep_5 -3 + 71, 1, 4.4, -37.3 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 11.8, -64.1 , 0 );
setMoveKey( spep_5 -3 + 73, 1, 11.8, -64.1 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 1.8, -42.1 , 0 );
setMoveKey( spep_5 -3 + 75, 1, 1.8, -42.1 , 0 );
setMoveKey( spep_5 + 74, 1, 11.3, -44.1 , 0 );

setScaleKey( spep_5 -3 + 0, 1, 0.66, 0.66 );
setScaleKey( spep_5 -3 + 2, 1, 0.68, 0.68 );
setScaleKey( spep_5 -3 + 4, 1, 0.69, 0.69 );
setScaleKey( spep_5 -3 + 10, 1, 0.69, 0.69 );
setScaleKey( spep_5 -3 + 12, 1, 0.7, 0.7 );
setScaleKey( spep_5 -3 + 24, 1, 0.7, 0.7 );
setScaleKey( spep_5 -3 + 26, 1, 0.69, 0.69 );
setScaleKey( spep_5 -3 + 32, 1, 0.69, 0.69 );
setScaleKey( spep_5 -3 + 34, 1, 0.68, 0.68 );
setScaleKey( spep_5 -3 + 36, 1, 0.66, 0.66 );
setScaleKey( spep_5 -3 + 38, 1, 0.65, 0.65 );
setScaleKey( spep_5 -3 + 40, 1, 0.64, 0.64 );
setScaleKey( spep_5 -3 + 42, 1, 0.62, 0.62 );
setScaleKey( spep_5 -3 + 44, 1, 0.62, 0.62 );
setScaleKey( spep_5 -3 + 46, 1, 0.61, 0.61 );
setScaleKey( spep_5 -3 + 48, 1, 0.61, 0.61 );
setScaleKey( spep_5 -3 + 50, 1, 0.6, 0.6 );
setScaleKey( spep_5 -3 + 52, 1, 0.61, 0.61 );
setScaleKey( spep_5 -3 + 54, 1, 0.61, 0.61 );
setScaleKey( spep_5 -3 + 56, 1, 0.62, 0.62 );
setScaleKey( spep_5 -3 + 60, 1, 0.62, 0.62 );
setScaleKey( spep_5 -3 + 62, 1, 0.63, 0.63 );
setScaleKey( spep_5 -3 + 68, 1, 0.63, 0.63 );
setScaleKey( spep_5 -3 + 70, 1, 0.64, 0.64 );
setScaleKey( spep_5 + 74, 1, 0.64, 0.64 );

setRotateKey( spep_5 -3 + 0, 1, 32.2 );
setRotateKey( spep_5 -3 + 24, 1, 32.2 );
setRotateKey( spep_5 -3 + 26, 1, 32.1 );
setRotateKey( spep_5 -3 + 58, 1, 32.1 );
setRotateKey( spep_5 -3 + 60, 1, 32.2 );
setRotateKey( spep_5 + 74, 1, 32.2 );

-- ** 音 ** --
playSe( spep_5 + 20, 1008 );  --踏みつけ
playSe( spep_5 + 66, 1068 );  --踏みつけ

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 124, 0, 0, 0, 0, 255 );  --黒　背景

-- ダメージ表示
dealDamage(spep_5 + 16);
entryFade( spep_5 + 114, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(spep_5 + 124);

else
------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 拡散気弾(176F)
------------------------------------------------------
spep_0 = 0;

--エフェクトの再生
kakusan = entryEffectLife(  spep_0,   SP_01, 176,  0x100,  -1,  0,  0,  0);    -- 拡散気弾
setEffMoveKey( spep_0 , kakusan, 0, 0 , 0 );
setEffMoveKey( spep_0 + 176, kakusan, 0, 0 , 0 );
setEffScaleKey( spep_0 , kakusan, -1.0, 1.0 );
setEffScaleKey( spep_0 + 176, kakusan, -1.0, 1.0 );
setEffRotateKey( spep_0 , kakusan, 0 );
setEffRotateKey( spep_0 + 176, kakusan, 0 );
setEffAlphaKey( spep_0 , kakusan, 255 );
setEffAlphaKey( spep_0 + 175, kakusan, 255 );
setEffAlphaKey( spep_0 + 176, kakusan, 0 );

-- ** 音 ** --
playSe( spep_0 + 60, 1042 ); --発射前
playSe( spep_0 + 90, 1017 ); --気弾発射	
playSe( spep_0 + 106, 1019 ); --気弾迫る

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 176, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_1 = spep_0 + 176;
------------------------------------------------------
-- 被弾(258F)
------------------------------------------------------
--エフェクトの再生
hidan_b=entryEffectLife(  spep_1,   SP_02, 258,  0x80,    -1,  0,  0,  0);    -- 被弾　奥
setEffMoveKey( spep_1 , hidan_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 258, hidan_b, 0, 0 , 0 );
setEffScaleKey( spep_1 , hidan_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 258, hidan_b, 1.0, 1.0 );
setEffRotateKey( spep_1 , hidan_b, 0 );
setEffRotateKey( spep_1 + 258, hidan_b, 0 );
setEffAlphaKey( spep_1 , hidan_b, 255 );
setEffAlphaKey( spep_1 + 257, hidan_b, 255 );
setEffAlphaKey( spep_1 + 258, hidan_b, 0 );

hidan_f=entryEffectLife(  spep_1,   SP_03,  258,  0x100,    -1,  0,  0,  0);    -- 被弾
setEffMoveKey( spep_1 , hidan_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 258, hidan_f, 0, 0 , 0 );
setEffScaleKey( spep_1 , hidan_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 258, hidan_f, 1.0, 1.0 );
setEffRotateKey( spep_1 , hidan_f, 0 );
setEffRotateKey( spep_1 + 258, hidan_f, 0 );
setEffAlphaKey( spep_1 , hidan_f, 255 );
setEffAlphaKey( spep_1 + 257, hidan_f, 255 );
setEffAlphaKey( spep_1 + 258, hidan_f, 0 );

--敵の動き
setDisp( spep_1  + 0, 1, 1 );
changeAnime( spep_1  + 0, 1, 100 );

setMoveKey( spep_1  + 0, 1, -111.3, 49.1 , 0 );
setMoveKey( spep_1 -3 + 4, 1, -20.5, 80 , 0 );
setMoveKey( spep_1 -3 + 6, 1, -12.6, 85.8 , 0 );
setMoveKey( spep_1 -3 + 8, 1, -7.5, 89.6 , 0 );
setMoveKey( spep_1 -3 + 10, 1, -3.1, 92.9 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 0.7, 95.7 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 4.1, 98.2 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 7.1, 100.5 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 9.9, 102.5 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 12.4, 104.4 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 14.7, 106.1 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 16.8, 107.7 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 18.8, 109.1 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 20.6, 110.4 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 22.2, 111.7 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 23.8, 112.8 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 25.2, 113.9 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 26.6, 114.9 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 27.8, 115.8 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 29, 116.7 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 30.1, 117.5 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 31.1, 118.2 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 32.1, 118.9 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 32.9, 119.6 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 33.8, 120.2 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 34.5, 120.7 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 35.2, 121.2 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 35.9, 121.7 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 36.5, 122.2 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 37.1, 122.6 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 37.6, 123 , 0 );

setScaleKey( spep_1  + 0, 1, 1.63, 1.63 );
setScaleKey( spep_1 -3 + 4, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 6, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 8, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 10, 1, 1.46, 1.46 );
setScaleKey( spep_1 -3 + 12, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 14, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 16, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 18, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 20, 1, 1.41, 1.41 );
setScaleKey( spep_1 -3 + 22, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 24, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 26, 1, 1.39, 1.39 );
setScaleKey( spep_1 -3 + 28, 1, 1.39, 1.39 );
setScaleKey( spep_1 -3 + 30, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 32, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 34, 1, 1.37, 1.37 );
setScaleKey( spep_1 -3 + 36, 1, 1.37, 1.37 );
setScaleKey( spep_1 -3 + 38, 1, 1.36, 1.36 );
setScaleKey( spep_1 -3 + 42, 1, 1.36, 1.36 );
setScaleKey( spep_1 -3 + 44, 1, 1.35, 1.35 );
setScaleKey( spep_1 -3 + 50, 1, 1.35, 1.35 );
setScaleKey( spep_1 -3 + 52, 1, 1.34, 1.34 );
setScaleKey( spep_1 -3 + 62, 1, 1.34, 1.34 );

setRotateKey( spep_1  + 0, 1, 0 );
--setRotateKey( spep_1 -3 + 126, 1, 0 );

-- ** 音 ** --
playSe( spep_1 + 40, 1023 );  --爆発

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 258, 0, 0, 0, 0, 255 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 60; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
changeAnime( SP_dodge + 0, 1, 100 );  --ガード

setMoveKey( SP_dodge + 0, 1, 37.6, 123 , 0 );
setMoveKey( SP_dodge + 2, 1, 38.1, 123.4 , 0 );
setMoveKey( SP_dodge + 4, 1, 38.5, 123.7 , 0 );
setMoveKey( SP_dodge + 6, 1, 38.9, 124 , 0 );
setMoveKey( SP_dodge + 8, 1, 39.3, 124.3 , 0 );
setMoveKey( SP_dodge + 10, 1, 39.6, 124.5 , 0 );

setScaleKey( SP_dodge + 0, 1, 1.34, 1.34 );
setScaleKey( SP_dodge + 2, 1, 1.33, 1.33 );
setScaleKey( SP_dodge + 10, 1, 1.33, 1.33 );

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

--敵の動き
setDisp( spep_1 -3 + 203, 1, 0 );
changeAnime( spep_1 -3 + 116, 1, 108 );
changeAnime( spep_1 -3 + 164, 1, 5 );

setMoveKey( spep_1 -3 + 64, 1, 38.1, 123.4 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 38.5, 123.7 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 38.9, 124 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 39.3, 124.3 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 39.6, 124.5 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 40, 124.7 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 40.2, 124.9 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 40.5, 125.1 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 40.7, 125.3 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 40.9, 125.4 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 41.1, 125.6 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 41.2, 125.7 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 41.4, 125.8 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 41.5, 125.9 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 41.6, 125.9 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 41.6, 126 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 32.7, 123.5 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 50.8, 126.6 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 38.2, 119.7 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 42.4, 131 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 47.1, 119.5 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 34.3, 126.9 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 47.6, 125.6 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 35.8, 137.8 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 47.4, 142.2 , 0 );
setMoveKey( spep_1 -3 + 115, 1, 44.2, 160.7 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 39.7, 163 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 38.4, 178 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 24.1, 189 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 18.8, 190.9 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 15.7, 204.4 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 9.6, 203.3 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 7, 216.6 , 0 );
setMoveKey( spep_1 -3 + 130, 1, -5.5, 217.4 , 0 );
setMoveKey( spep_1 -3 + 132, 1, -2.8, 221.6 , 0 );
setMoveKey( spep_1 -3 + 134, 1, -2.8, 195.4 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 29.4, 146.5 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 63, 69.8 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 88.3, 21.7 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 89.5, 0.5 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 101.6, -10 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 102.5, -24 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 111.9, -41.7 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 112.9, -63.6 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 120.6, -77.3 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 121.2, -74.1 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 124.4, -96.3 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 126.7, -98.3 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 128.6, -110.7 , 0 );
setMoveKey( spep_1 -3 + 163, 1, 130.5, -111.1 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 130.1, -118.7 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 130.4, -118.7 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 130.6, -121.9 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 131, -128.2 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 131.3, -137.1 , 0 );
setMoveKey( spep_1 -3 + 174, 1, 131.7, -148 , 0 );
setMoveKey( spep_1 -3 + 176, 1, 132.1, -160.3 , 0 );
setMoveKey( spep_1 -3 + 178, 1, 131.8, -161.1 , 0 );
setMoveKey( spep_1 -3 + 180, 1, 132.2, -175.7 , 0 );
setMoveKey( spep_1 -3 + 182, 1, 132.1, -180 , 0 );
setMoveKey( spep_1 -3 + 184, 1, 132.5, -195.7 , 0 );
setMoveKey( spep_1 -3 + 186, 1, 132.5, -202.7 , 0 );
setMoveKey( spep_1 -3 + 188, 1, 132.8, -211.9 , 0 );
setMoveKey( spep_1 -3 + 190, 1, 133.1, -223.2 , 0 );
setMoveKey( spep_1 -3 + 192, 1, 133.7, -239.3 , 0 );
setMoveKey( spep_1 -3 + 194, 1, 134.3, -253.4 , 0 );
setMoveKey( spep_1 -3 + 196, 1, 135.3, -270.5 , 0 );
setMoveKey( spep_1 -3 + 198, 1, 136.7, -291.6 , 0 );
setMoveKey( spep_1 -3 + 200, 1, 138.5, -318.9 , 0 );
setMoveKey( spep_1 -3 + 203, 1, 141.7, -363.3 , 0 );

setScaleKey( spep_1 -3 + 64, 1, 1.33, 1.33 );
setScaleKey( spep_1 -3 + 82, 1, 1.33, 1.33 );
setScaleKey( spep_1 -3 + 84, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 108, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 110, 1, 1.27, 1.27 );
setScaleKey( spep_1 -3 + 112, 1, 1.23, 1.23 );
setScaleKey( spep_1 -3 + 115, 1, 1.18, 1.18 );
setScaleKey( spep_1 -3 + 116, 1, 1.14, 1.14 );
setScaleKey( spep_1 -3 + 118, 1, 1.15, 1.15 );
setScaleKey( spep_1 -3 + 120, 1, 1.17, 1.17 );
setScaleKey( spep_1 -3 + 122, 1, 1.17, 1.17 );
setScaleKey( spep_1 -3 + 124, 1, 1.18, 1.18 );
setScaleKey( spep_1 -3 + 126, 1, 1.19, 1.19 );
setScaleKey( spep_1 -3 + 130, 1, 1.19, 1.19 );
setScaleKey( spep_1 -3 + 132, 1, 1.18, 1.18 );
setScaleKey( spep_1 -3 + 134, 1, 1.12, 1.12 );
setScaleKey( spep_1 -3 + 136, 1, 0.98, 0.98 );
setScaleKey( spep_1 -3 + 138, 1, 0.78, 0.78 );
setScaleKey( spep_1 -3 + 140, 1, 0.66, 0.66 );
setScaleKey( spep_1 -3 + 142, 1, 0.6, 0.6 );
setScaleKey( spep_1 -3 + 144, 1, 0.55, 0.55 );
setScaleKey( spep_1 -3 + 146, 1, 0.5, 0.5 );
setScaleKey( spep_1 -3 + 148, 1, 0.46, 0.46 );
setScaleKey( spep_1 -3 + 150, 1, 0.41, 0.41 );
setScaleKey( spep_1 -3 + 152, 1, 0.37, 0.37 );
setScaleKey( spep_1 -3 + 154, 1, 0.35, 0.35 );
setScaleKey( spep_1 -3 + 156, 1, 0.31, 0.31 );
setScaleKey( spep_1 -3 + 158, 1, 0.28, 0.28 );
setScaleKey( spep_1 -3 + 160, 1, 0.26, 0.26 );
setScaleKey( spep_1 -3 + 163, 1, 0.24, 0.24 );
setScaleKey( spep_1 -3 + 164, 1, 0.22, 0.22 );
setScaleKey( spep_1 -3 + 166, 1, 0.21, 0.21 );
setScaleKey( spep_1 -3 + 168, 1, 0.19, 0.19 );
setScaleKey( spep_1 -3 + 170, 1, 0.18, 0.18 );
setScaleKey( spep_1 -3 + 172, 1, 0.17, 0.17 );
setScaleKey( spep_1 -3 + 174, 1, 0.15, 0.15 );
setScaleKey( spep_1 -3 + 176, 1, 0.14, 0.14 );
setScaleKey( spep_1 -3 + 178, 1, 0.14, 0.14 );
setScaleKey( spep_1 -3 + 180, 1, 0.13, 0.13 );
setScaleKey( spep_1 -3 + 182, 1, 0.13, 0.13 );
setScaleKey( spep_1 -3 + 184, 1, 0.11, 0.11 );
setScaleKey( spep_1 -3 + 190, 1, 0.11, 0.11 );
setScaleKey( spep_1 -3 + 192, 1, 0.1, 0.1 );
setScaleKey( spep_1 -3 + 203, 1, 0.1, 0.1 );

setRotateKey( spep_1 -3 + 158, 1, 0 );
setRotateKey( spep_1 -3 + 160, 1, 9.7 );
setRotateKey( spep_1 -3 + 163, 1, 39 );
setRotateKey( spep_1 -3 + 164, 1, 29.5 );
setRotateKey( spep_1 -3 + 166, 1, 29.5 );
setRotateKey( spep_1 -3 + 168, 1, 29.6 );
setRotateKey( spep_1 -3 + 170, 1, 30 );
setRotateKey( spep_1 -3 + 172, 1, 30.6 );
setRotateKey( spep_1 -3 + 174, 1, 31.4 );
setRotateKey( spep_1 -3 + 176, 1, 32.4 );
setRotateKey( spep_1 -3 + 178, 1, 33.6 );
setRotateKey( spep_1 -3 + 180, 1, 34.9 );
setRotateKey( spep_1 -3 + 182, 1, 36.5 );
setRotateKey( spep_1 -3 + 184, 1, 38.3 );
setRotateKey( spep_1 -3 + 186, 1, 40.4 );
setRotateKey( spep_1 -3 + 188, 1, 42.6 );
setRotateKey( spep_1 -3 + 190, 1, 45.2 );
setRotateKey( spep_1 -3 + 192, 1, 48 );
setRotateKey( spep_1 -3 + 194, 1, 51.3 );
setRotateKey( spep_1 -3 + 196, 1, 55 );
setRotateKey( spep_1 -3 + 198, 1, 59.5 );
setRotateKey( spep_1 -3 + 200, 1, 65.2 );
setRotateKey( spep_1 -3 + 203, 1, 74.2 );

-- ** 音 ** --
playSe( spep_1 + 82, 1023 );  --爆発
playSe( spep_1 + 110, 1024 );  --被弾
playSe( spep_1 + 218, 1002 );  --被弾

--次の準備
spep_2 = spep_1 + 258;
------------------------------------------------------
-- セリフカットイン(96F)
------------------------------------------------------
--エフェクトの再生
cutin=entryEffectLife(  spep_2,   SP_04,  96,  0x100,  -1,  0,  0,  0);    -- セリフカットイン
setEffMoveKey( spep_2 , cutin, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, cutin, 0, 0 , 0 );
setEffScaleKey( spep_2 , cutin, -1.0, 1.0 );
setEffScaleKey( spep_2 + 96, cutin, -1.0, 1.0 );
setEffRotateKey( spep_2 , cutin, 0 );
setEffRotateKey( spep_2 + 96, cutin, 0 );
setEffAlphaKey( spep_2 , cutin, 255 );
setEffAlphaKey( spep_2 + 95, cutin, 255 );
setEffAlphaKey( spep_2 + 96, cutin, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_2 + 0,  906, 84, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen1, 84, 25 );

setEffMoveKey( spep_2 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 84, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_2 + 84, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_2 + 0, shuchusen1, 0 );
setEffRotateKey( spep_2 + 84, shuchusen1, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_2 + 9, shuchusen1, 0 );
setEffAlphaKey( spep_2 + 10, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 84, shuchusen1, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_2 + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_2 + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_2 + 16,  190006, 68, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_2 + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_2 + 16, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_2 + 84, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_2 + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_2 + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_2 + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_2 + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_2 + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_2 + 84, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_2 + 16, ctgogo, 0 );
setEffRotateKey( spep_2 + 84, ctgogo, 0 );

setEffAlphaKey( spep_2 + 16, ctgogo, 255 );
setEffAlphaKey( spep_2 + 84, ctgogo, 255 );

-- ** 音 ** --
playSe( spep_2 + 16, SE_04 );  --ゴゴゴ
playSe( spep_2 + 82, 8 );  --突進

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_3 = spep_2 + 96;

--------------------------------------
--カードカットイン
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusenX = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusenX, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusenX, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusenX, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusenX, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusenX, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusenX, 0 );
setEffRotateKey( spep_3 + 90, shuchusenX, 0 );

setEffAlphaKey( spep_3 + 0, shuchusenX, 255 );
setEffAlphaKey( spep_3 + 90, shuchusenX, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

--次の準備
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_4 = spep_3 + 94;

------------------------------------------------------
--踏みつけ(158F)
------------------------------------------------------
--エフェクトの再生
rush = entryEffectLife(  spep_4,   SP_05, 158,  0x100,  -1,  0,  0,  0);    -- 踏みつけ
setEffMoveKey( spep_4 , rush, 0, 0 , 0 );
setEffMoveKey( spep_4 + 158, rush, 0, 0 , 0 );
setEffScaleKey( spep_4 , rush, -1.0, 1.0 );
setEffScaleKey( spep_4 + 158, rush, -1.0, 1.0 );
setEffRotateKey( spep_4 , rush, 0 );
setEffRotateKey( spep_4 + 158, rush, 0 );
setEffAlphaKey( spep_4 , rush, 255 );
setEffAlphaKey( spep_4 + 157, rush, 255 );
setEffAlphaKey( spep_4 + 158, rush, 0 );

-- ** 音 ** --
playSe( spep_4 + 22, 9 );  --突進
playSe( spep_4 + 112, 1072 );  --踏みつけ前

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 158, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_5 = spep_4 + 158;

------------------------------------------------------
--被弾(124F)
------------------------------------------------------
--エフェクトの再生
fumi_b = entryEffect(  spep_5,   SP_06,   0x100,  -1,  0,  0,  0);    -- 被弾　奥
setEffMoveKey( spep_5 , fumi_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 124, fumi_b, 0, 0 , 0 );
setEffScaleKey( spep_5 , fumi_b, -1.0, 1.0 );
setEffScaleKey( spep_5 + 124, fumi_b, -1.0, 1.0 );
setEffRotateKey( spep_5 , fumi_b, 0 );
setEffRotateKey( spep_5 + 124, fumi_b, 0 );
setEffAlphaKey( spep_5 , fumi_b, 255 );
setEffAlphaKey( spep_5 + 124, fumi_b, 255 );

fumi_f = entryEffect(  spep_5,   SP_07,   0x80,  -1,  0,  0,  0);    -- 被弾　奥
setEffMoveKey( spep_5 , fumi_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 124, fumi_f, 0, 0 , 0 );
setEffScaleKey( spep_5 , fumi_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 124, fumi_f, -1.0, 1.0 );
setEffRotateKey( spep_5 , fumi_f, 0 );
setEffRotateKey( spep_5 + 124, fumi_f, 0 );
setEffAlphaKey( spep_5 , fumi_f, 255 );
setEffAlphaKey( spep_5 + 124, fumi_f, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 74, 1, 0 );
changeAnime( spep_5 + 0, 1, 8 );

setMoveKey( spep_5 + 0, 1, -3.2, -45.5 , 0 );
setMoveKey( spep_5 -3 + 4, 1, -3.4, -37.4 , 0 );
setMoveKey( spep_5 -3 + 5, 1, -3.4, -37.4 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -3.4, -36 , 0 );
setMoveKey( spep_5 -3 + 7, 1, -3.4, -36 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -3.4, -35 , 0 );
setMoveKey( spep_5 -3 + 9, 1, -3.4, -35 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -3.4, -34.2 , 0 );
setMoveKey( spep_5 -3 + 11, 1, -3.4, -34.2 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -3.5, -33.5 , 0 );
setMoveKey( spep_5 -3 + 13, 1, -3.5, -33.5 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -3.5, -33 , 0 );
setMoveKey( spep_5 -3 + 15, 1, -3.5, -33 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 9.2, -70.4 , 0 );
setMoveKey( spep_5 -3 + 17, 1, 9.2, -70.4 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -17.8, -12.7 , 0 );
setMoveKey( spep_5 -3 + 19, 1, -17.8, -12.7 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 1.7, -57.7 , 0 );
setMoveKey( spep_5 -3 + 21, 1, 1.7, -57.7 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 2.6, -6.7 , 0 );
setMoveKey( spep_5 -3 + 23, 1, 2.6, -6.7 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 1.5, -68 , 0 );
setMoveKey( spep_5 -3 + 25, 1, 1.5, -68 , 0 );
setMoveKey( spep_5 -3 + 26, 1, -7.3, -10.1 , 0 );
setMoveKey( spep_5 -3 + 27, 1, -7.3, -10.1 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 4.7, -43.7 , 0 );
setMoveKey( spep_5 -3 + 29, 1, 4.7, -43.7 , 0 );
setMoveKey( spep_5 -3 + 30, 1, -8.7, 1.7 , 0 );
setMoveKey( spep_5 -3 + 31, 1, -8.7, 1.7 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 8.1, -57.5 , 0 );
setMoveKey( spep_5 -3 + 33, 1, 8.1, -57.5 , 0 );
setMoveKey( spep_5 -3 + 34, 1, -13.6, -14.1 , 0 );
setMoveKey( spep_5 -3 + 35, 1, -13.6, -14.1 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 5.9, -51.6 , 0 );
setMoveKey( spep_5 -3 + 37, 1, 5.9, -51.6 , 0 );
setMoveKey( spep_5 -3 + 38, 1, -16.6, -60.9 , 0 );
setMoveKey( spep_5 -3 + 39, 1, -16.6, -60.9 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 8.7, -43.5 , 0 );
setMoveKey( spep_5 -3 + 41, 1, 8.7, -43.5 , 0 );
setMoveKey( spep_5 -3 + 42, 1, -16.5, -46.8 , 0 );
setMoveKey( spep_5 -3 + 43, 1, -16.5, -46.8 , 0 );
setMoveKey( spep_5 -3 + 44, 1, -0.8, -65.8 , 0 );
setMoveKey( spep_5 -3 + 45, 1, -0.8, -65.8 , 0 );
setMoveKey( spep_5 -3 + 46, 1, -12.7, -25.5 , 0 );
setMoveKey( spep_5 -3 + 47, 1, -12.7, -25.5 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 2.6, -56.3 , 0 );
setMoveKey( spep_5 -3 + 49, 1, 2.6, -56.3 , 0 );
setMoveKey( spep_5 -3 + 50, 1, -20.1, -49.4 , 0 );
setMoveKey( spep_5 -3 + 51, 1, -20.1, -49.4 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 1.7, -35 , 0 );
setMoveKey( spep_5 -3 + 53, 1, 1.7, -35 , 0 );
setMoveKey( spep_5 -3 + 54, 1, -15.7, -49.5 , 0 );
setMoveKey( spep_5 -3 + 55, 1, -15.7, -49.5 , 0 );
setMoveKey( spep_5 -3 + 56, 1, -0.6, -65.9 , 0 );
setMoveKey( spep_5 -3 + 57, 1, -0.6, -65.9 , 0 );
setMoveKey( spep_5 -3 + 58, 1, -7.9, -32.6 , 0 );
setMoveKey( spep_5 -3 + 59, 1, -7.9, -32.6 , 0 );
setMoveKey( spep_5 -3 + 60, 1, -8.9, -73.3 , 0 );
setMoveKey( spep_5 -3 + 61, 1, -8.9, -73.3 , 0 );
setMoveKey( spep_5 -3 + 62, 1, -2.6, -35.8 , 0 );
setMoveKey( spep_5 -3 + 63, 1, -2.6, -35.8 , 0 );
setMoveKey( spep_5 -3 + 64, 1, -5.7, -67 , 0 );
setMoveKey( spep_5 -3 + 65, 1, -5.7, -67 , 0 );
setMoveKey( spep_5 -3 + 66, 1, -10.8, -38.2 , 0 );
setMoveKey( spep_5 -3 + 67, 1, -10.8, -38.2 , 0 );
setMoveKey( spep_5 -3 + 68, 1, -3, -57.6 , 0 );
setMoveKey( spep_5 -3 + 69, 1, -3, -57.6 , 0 );
setMoveKey( spep_5 -3 + 70, 1, -4.4, -37.3 , 0 );
setMoveKey( spep_5 -3 + 71, 1, -4.4, -37.3 , 0 );
setMoveKey( spep_5 -3 + 72, 1, -11.8, -64.1 , 0 );
setMoveKey( spep_5 -3 + 73, 1, -11.8, -64.1 , 0 );
setMoveKey( spep_5 -3 + 74, 1, -1.8, -42.1 , 0 );
setMoveKey( spep_5 -3 + 75, 1, -1.8, -42.1 , 0 );
setMoveKey( spep_5 + 74, 1, -11.3, -44.1 , 0 );

setScaleKey( spep_5 -3 + 0, 1, 0.66, 0.66 );
setScaleKey( spep_5 -3 + 2, 1, 0.68, 0.68 );
setScaleKey( spep_5 -3 + 4, 1, 0.69, 0.69 );
setScaleKey( spep_5 -3 + 10, 1, 0.69, 0.69 );
setScaleKey( spep_5 -3 + 12, 1, 0.7, 0.7 );
setScaleKey( spep_5 -3 + 24, 1, 0.7, 0.7 );
setScaleKey( spep_5 -3 + 26, 1, 0.69, 0.69 );
setScaleKey( spep_5 -3 + 32, 1, 0.69, 0.69 );
setScaleKey( spep_5 -3 + 34, 1, 0.68, 0.68 );
setScaleKey( spep_5 -3 + 36, 1, 0.66, 0.66 );
setScaleKey( spep_5 -3 + 38, 1, 0.65, 0.65 );
setScaleKey( spep_5 -3 + 40, 1, 0.64, 0.64 );
setScaleKey( spep_5 -3 + 42, 1, 0.62, 0.62 );
setScaleKey( spep_5 -3 + 44, 1, 0.62, 0.62 );
setScaleKey( spep_5 -3 + 46, 1, 0.61, 0.61 );
setScaleKey( spep_5 -3 + 48, 1, 0.61, 0.61 );
setScaleKey( spep_5 -3 + 50, 1, 0.6, 0.6 );
setScaleKey( spep_5 -3 + 52, 1, 0.61, 0.61 );
setScaleKey( spep_5 -3 + 54, 1, 0.61, 0.61 );
setScaleKey( spep_5 -3 + 56, 1, 0.62, 0.62 );
setScaleKey( spep_5 -3 + 60, 1, 0.62, 0.62 );
setScaleKey( spep_5 -3 + 62, 1, 0.63, 0.63 );
setScaleKey( spep_5 -3 + 68, 1, 0.63, 0.63 );
setScaleKey( spep_5 -3 + 70, 1, 0.64, 0.64 );
setScaleKey( spep_5 + 74, 1, 0.64, 0.64 );

setRotateKey( spep_5 -3 + 0, 1, -32.2 );
setRotateKey( spep_5 -3 + 24, 1, -32.2 );
setRotateKey( spep_5 -3 + 26, 1, -32.1 );
setRotateKey( spep_5 -3 + 58, 1, -32.1 );
setRotateKey( spep_5 -3 + 60, 1, -32.2 );
setRotateKey( spep_5 + 74, 1, -32.2 );

-- ** 音 ** --
playSe( spep_5 + 20, 1008 );  --踏みつけ
playSe( spep_5 + 66, 1068 );  --踏みつけ

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 124, 0, 0, 0, 0, 255 );  --黒　背景

-- ダメージ表示
dealDamage(spep_5 + 16);
entryFade( spep_5 + 114, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(spep_5 + 124);

end