--1017290:シーラス_破空・演舞（ドッカン前）
--sp1294

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--***SE***
SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
--SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--***エフェクト***
SP_01 = 153671;  --突進
SP_02 = 153672;  --連撃手前
SP_03 = 153673;  --連撃奥
SP_04 = 153674;  --構え
SP_05 = 153675;  --落下〜ラスト

--***敵側***
SP_02r = 153676;  --連撃手前
SP_05r = 153677;  --落下〜ラスト

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI(0, 0);

changeAnime( 0, 0, 1);                       -- 立ち
changeAnime( 0, 1, 101);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    -5000,  -5000,  0);
setMoveKey(   1,   0,    -5000,  -5000,  0);
setMoveKey(   2,   0,    -5000,  -5000,  0);
setMoveKey(   3,   0,    -5000,  -5000,  0);
setMoveKey(   4,   0,    -5000,  -5000,  0);
setMoveKey(   5,   0,    -5000,  -5000,  0);
setMoveKey(   6,   0,    -5000,  -5000,  0);
setScaleKey(   0,  0,  1.5,  1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   6,   0, 1.5, 1.5);

-- 敵
setMoveKey(   0,   1,    -5000,  -5000,  0);
setMoveKey(   1,   1,    -5000,  -5000,  0);
setMoveKey(   2,   1,    -5000,  -5000,  0);
setMoveKey(   3,   1,    -5000,  -5000,  0);
setMoveKey(   4,   1,    -5000,  -5000,  0);
setMoveKey(   5,   1,    -5000,  -5000,  0);
setMoveKey(   6,   1,    -5000,  -5000,  0);
setScaleKey(   0,   1, 1.5, 1.5);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
setScaleKey(   6,   1, 1.5, 1.5);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
--突進(70F)
------------------------------------------------------
spep_0 = 0;

-- ** 書き文字
ct_zuo = entryEffectLife( spep_0 + 0,  10012, 62, 0x100, -1, 0, 78.7, 260.5 );

setEffShake( spep_0,  ctgogo,  62,  20);  --揺れ
setEffMoveKey( spep_0 + 0, ct_zuo, 78.7, 260.5 , 0 );
setEffMoveKey( spep_0 + 2, ct_zuo, 105, 288.6 , 0 );
setEffMoveKey( spep_0 + 4, ct_zuo, 117.9, 330.1 , 0 );
setEffMoveKey( spep_0 + 6, ct_zuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 8, ct_zuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 58, ct_zuo, 180.5, 341.1 , 0 );
setEffMoveKey( spep_0 + 60, ct_zuo, 160.8, 370.2 , 0 );
setEffMoveKey( spep_0 + 62, ct_zuo, 168.5, 372 , 0 );

setEffScaleKey( spep_0 + 0, ct_zuo, 0.34, 0.34 );
setEffScaleKey( spep_0 + 2, ct_zuo, 1.13, 1.13 );
setEffScaleKey( spep_0 + 4, ct_zuo, 1.94, 1.94 );
setEffScaleKey( spep_0 + 6, ct_zuo, 2.73, 2.73 );
setEffScaleKey( spep_0 + 54, ct_zuo, 2.73, 2.73 );
setEffScaleKey( spep_0 + 56, ct_zuo, 3.68, 3.68 );
setEffScaleKey( spep_0 + 58, ct_zuo, 4.67, 4.67 );
setEffScaleKey( spep_0 + 60, ct_zuo, 5.63, 5.63 );
setEffScaleKey( spep_0 + 62, ct_zuo, 6.62, 6.62 );

setEffRotateKey( spep_0 + 0, ct_zuo, 27.2 );
setEffRotateKey( spep_0 + 62,  ct_zuo, 27.2);

setEffAlphaKey( spep_0 + 0, ct_zuo, 255 );
setEffAlphaKey( spep_0 + 54, ct_zuo, 255 );
setEffAlphaKey( spep_0 + 56, ct_zuo, 191 );
setEffAlphaKey( spep_0 + 58, ct_zuo, 128 );
setEffAlphaKey( spep_0 + 60, ct_zuo, 64 );
setEffAlphaKey( spep_0 + 62, ct_zuo, 0 );

-- ** 集中線 ** --
shuchusen0 = entryEffectLife( spep_0 + 0, 906, 70, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen0, 70, 20 );

setEffMoveKey( spep_0 + 0, shuchusen0, 0, 0 , 0 );
setEffMoveKey( spep_0 + 70, shuchusen0, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen0, 1.6, 1.6 );
setEffScaleKey( spep_0 + 70, shuchusen0, 1.6, 1.6 );

setEffRotateKey( spep_0 + 0, shuchusen0, 0 );
setEffRotateKey( spep_0 + 70, shuchusen0, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen0, 255 );
setEffAlphaKey( spep_0 + 70, shuchusen0, 255 );

-- ** エフェクト等
tosshin = entryEffectLife( spep_0 + 0, SP_01, 70, 0x80, -1, 0, 0, 0 );  --上昇(ef_001)

setEffMoveKey( spep_0 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_0 + 70, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tosshin, 1.0, 1.0 );
setEffScaleKey( spep_0 + 70, tosshin, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tosshin, 0 );
setEffRotateKey( spep_0 + 70, tosshin, 0 );
setEffAlphaKey( spep_0 + 0, tosshin, 255 );
setEffAlphaKey( spep_0 + 70, tosshin, 255 );


-- ** 音
playSe(  spep_0,  9);  --突進

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 70, 0, 0, 0, 0, 150 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

--[[
-- ** 敵の動き
setMoveKey( SP_dodge + 0, 1, -28.2, 451.3 , 0 );
setMoveKey( SP_dodge + 2, 1, -26.5, 407.6 , 0 );
setMoveKey( SP_dodge + 4, 1, -24.7, 362.1 , 0 );
setMoveKey( SP_dodge + 6, 1, -23.3, 327.7 , 0 );
setMoveKey( SP_dodge + 8, 1, -22, 292.6 , 0 );
setMoveKey( SP_dodge + 10, 1, -20.9, 267.8 , 0 );

setScaleKey( SP_dodge + 0, 1, 0.68, 0.68 );
setScaleKey( SP_dodge + 2, 1, 0.67, 0.67 );
setScaleKey( SP_dodge + 4, 1, 0.65, 0.65 );
setScaleKey( SP_dodge + 6, 1, 0.64, 0.64 );
setScaleKey( SP_dodge + 8, 1, 0.62, 0.62 );
setScaleKey( SP_dodge + 10, 1, 0.61, 0.61 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );
]]

-- ** カットイン部分 ** --
speff0 = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff0, 3, 6 );                           -- カットイン差し替え

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

-- ** 白フェード
entryFade( spep_0 +64, 2,  4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

--次の準備
spep_1 = spep_0 + 70;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
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

-- ** ホワイトフェード ** --
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 90;


------------------------------------------------------
--連撃(240F)
------------------------------------------------------
-- ** 集中線

shuchusen_a = entryEffectLife( spep_2 + 68 - 3,  906, 20, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 68 - 3, shuchusen_a, 0, 0 , 0 );
setEffMoveKey( spep_2 + 88 - 3, shuchusen_a, 0, 0 , 0 );

setEffScaleKey( spep_2 + 68 - 3, shuchusen_a, 1.1, 1.8 );
setEffScaleKey( spep_2 + 88 - 3, shuchusen_a, 1.1, 1.8 );

setEffRotateKey( spep_2 + 68 - 3, shuchusen_a, 0 );
setEffRotateKey( spep_2 + 88 - 3, shuchusen_a, 0 );

setEffAlphaKey( spep_2 + 68 - 3, shuchusen_a, 255 );
setEffAlphaKey( spep_2 + 80 - 3, shuchusen_a, 255 );
setEffAlphaKey( spep_2 + 82 - 3, shuchusen_a, 170 );
setEffAlphaKey( spep_2 + 84 - 3, shuchusen_a, 85 );
setEffAlphaKey( spep_2 + 88 - 3, shuchusen_a, 0 );

shuchusen_b = entryEffectLife( spep_2 + 102 - 3,  906, 44, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 102 - 3, shuchusen_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 146 - 3, shuchusen_b, 0, 0 , 0 );

setEffScaleKey( spep_2 + 102 - 3, shuchusen_b, 1.44, 1.58 );
setEffScaleKey( spep_2 + 138 - 3, shuchusen_b, 1.44, 1.58 );
setEffScaleKey( spep_2 + 140 - 3, shuchusen_b, 1.1, 1.8 );
setEffScaleKey( spep_2 + 146 - 3, shuchusen_b, 1.1, 1.8 );

setEffRotateKey( spep_2 + 102 - 3, shuchusen_b, 0 );
setEffRotateKey( spep_2 + 146 - 3, shuchusen_b, 0 );

setEffAlphaKey( spep_2 + 102 - 3, shuchusen_b, 255 );
setEffAlphaKey( spep_2 + 140 - 3, shuchusen_b, 255 );
setEffAlphaKey( spep_2 + 142 - 3, shuchusen_b, 170 );
setEffAlphaKey( spep_2 + 144 - 3, shuchusen_b, 85 );
setEffAlphaKey( spep_2 + 146 - 3, shuchusen_b, 0 );

-- ** 書き文字
ct_baki = entryEffectLife( spep_2 - 3 + 68, 10020, 22, 0x100, -1, 0, 127.9, 378.7 );  --バキ

setEffShake( spep_2 -3 +68,  ct_baki,  22,  20);  --揺れ
setEffMoveKey( spep_2 - 3 + 68, ct_baki, 127.9, 378.7 , 0 );
setEffMoveKey( spep_2 - 3 + 70, ct_baki, 120.3, 402.1 , 0 );
setEffMoveKey( spep_2 - 3 + 72, ct_baki, 127.8, 378.8 , 0 );
setEffMoveKey( spep_2 - 3 + 90, ct_baki, 128, 378.7 , 0 );

setEffScaleKey( spep_2 - 3 + 68, ct_baki, 1.6, 1.6 );
setEffScaleKey( spep_2 - 3 + 70, ct_baki, 2.88, 2.88 );
setEffScaleKey( spep_2 - 3 + 72, ct_baki, 2.57, 2.57 );
setEffScaleKey( spep_2 - 3 + 74, ct_baki, 2.25, 2.25 );
setEffScaleKey( spep_2 - 3 + 76, ct_baki, 1.94, 1.94 );
setEffScaleKey( spep_2 - 3 + 78, ct_baki, 1.9, 1.9 );
setEffScaleKey( spep_2 - 3 + 80, ct_baki, 1.86, 1.86 );
setEffScaleKey( spep_2 - 3 + 82, ct_baki, 1.81, 1.81 );
setEffScaleKey( spep_2 - 3 + 84, ct_baki, 1.77, 1.77 );
setEffScaleKey( spep_2 - 3 + 86, ct_baki, 1.73, 1.73 );
setEffScaleKey( spep_2 - 3 + 88, ct_baki, 1.75, 1.75 );
setEffScaleKey( spep_2 - 3 + 90, ct_baki, 1.76, 1.76 );

setEffRotateKey( spep_2 - 3 + 68, ct_baki, 27.3 );
setEffRotateKey( spep_2 - 3 + 90, ct_baki, 27.3 );

setEffAlphaKey( spep_2 - 3 + 68, ct_baki, 255 );
setEffAlphaKey( spep_2 - 3 + 86, ct_baki, 255 );
setEffAlphaKey( spep_2 - 3 + 88, ct_baki, 134 );
setEffAlphaKey( spep_2 - 3 + 90, ct_baki, 13 );

ct_ga = entryEffectLife( spep_2 - 3 + 102,  10005, 22, 0x100, -1, 0, 48.2, 404 );  --ガッ

setEffShake( spep_2 -3 + 102,  ct_ga,  22,  20);  --揺れ
setEffMoveKey( spep_2 - 3 + 102, ct_ga, 48.2, 404 , 0 );
setEffMoveKey( spep_2 - 3 + 104, ct_ga, 48.3, 404.2 , 0 );
setEffMoveKey( spep_2 - 3 + 106, ct_ga, 48.2, 404.3 , 0 );
setEffMoveKey( spep_2 - 3 + 108, ct_ga, 48.1, 404.2 , 0 );
setEffMoveKey( spep_2 - 3 + 110, ct_ga, 48.2, 404.3 , 0 );
setEffMoveKey( spep_2 - 3 + 112, ct_ga, 48.1, 404.3 , 0 );
setEffMoveKey( spep_2 - 3 + 114, ct_ga, 48.1, 404.1 , 0 );
setEffMoveKey( spep_2 - 3 + 116, ct_ga, 48.2, 404.1 , 0 );
setEffMoveKey( spep_2 - 3 + 118, ct_ga, 48.2, 404.1 , 0 );
setEffMoveKey( spep_2 - 3 + 124, ct_ga, 48.3, 404.1 , 0 );

setEffScaleKey( spep_2 - 3 + 102, ct_ga, 0.91, 0.91 );
setEffScaleKey( spep_2 - 3 + 104, ct_ga, 1.95, 1.95 );
setEffScaleKey( spep_2 - 3 + 106, ct_ga, 2.48, 2.48 );
setEffScaleKey( spep_2 - 3 + 108, ct_ga, 2.36, 2.36 );
setEffScaleKey( spep_2 - 3 + 110, ct_ga, 2.24, 2.24 );
setEffScaleKey( spep_2 - 3 + 112, ct_ga, 2.12, 2.12 );
setEffScaleKey( spep_2 - 3 + 114, ct_ga, 2.01, 2.01 );
setEffScaleKey( spep_2 - 3 + 116, ct_ga, 2, 2 );
setEffScaleKey( spep_2 - 3 + 118, ct_ga, 1.99, 1.99 );
setEffScaleKey( spep_2 - 3 + 120, ct_ga, 1.97, 1.97 );
setEffScaleKey( spep_2 - 3 + 122, ct_ga, 1.96, 1.96 );
setEffScaleKey( spep_2 - 3 + 124, ct_ga, 1.94, 1.94 );

setEffRotateKey( spep_2 - 3 + 102, ct_ga, -9.7 );
setEffRotateKey( spep_2 - 3 + 104, ct_ga, -23 );
setEffRotateKey( spep_2 - 3 + 106, ct_ga, -9.7 );
setEffRotateKey( spep_2 - 3 + 108, ct_ga, -1.1 );
setEffRotateKey( spep_2 - 3 + 110, ct_ga, -9.9 );
setEffRotateKey( spep_2 - 3 + 112, ct_ga, -20.6 );
setEffRotateKey( spep_2 - 3 + 114, ct_ga, -9.7 );
setEffRotateKey( spep_2 - 3 + 116, ct_ga, -9.8 );
setEffRotateKey( spep_2 - 3 + 118, ct_ga, -9.8 );
setEffRotateKey( spep_2 - 3 + 124, ct_ga, -9.7 );

setEffAlphaKey( spep_2 - 3 + 102, ct_ga, 255 );
setEffAlphaKey( spep_2 - 3 + 116, ct_ga, 255 );
setEffAlphaKey( spep_2 - 3 + 118, ct_ga, 191 );
setEffAlphaKey( spep_2 - 3 + 120, ct_ga, 128 );
setEffAlphaKey( spep_2 - 3 + 122, ct_ga, 64 );
setEffAlphaKey( spep_2 - 3 + 124, ct_ga, 0 );

ct_ga2 = entryEffectLife( spep_2 -3  + 130,  10005, 26, 0x100, -1, 0, 166.3, 348 );  --ガッ

setEffMoveKey( spep_2 -3  + 130, ct_ga2, 166.3, 348 , 0 );
setEffMoveKey( spep_2 -3  + 132, ct_ga2, 166.5, 348.1 , 0 );
setEffMoveKey( spep_2 -3  + 134, ct_ga2, 166.4, 348.3 , 0 );
setEffMoveKey( spep_2 -3  + 136, ct_ga2, 166.3, 348.2 , 0 );
setEffMoveKey( spep_2 -3  + 138, ct_ga2, 166.4, 348.2 , 0 );
setEffMoveKey( spep_2 -3  + 140, ct_ga2, 166.4, 348.3 , 0 );
setEffMoveKey( spep_2 -3  + 142, ct_ga2, 166.4, 348.1 , 0 );
setEffMoveKey( spep_2 -3  + 144, ct_ga2, 166.4, 348 , 0 );
setEffMoveKey( spep_2 -3  + 148, ct_ga2, 166.4, 348 , 0 );
setEffMoveKey( spep_2 -3  + 150, ct_ga2, 166.5, 348 , 0 );
setEffMoveKey( spep_2 -3  + 152, ct_ga2, 166.5, 348.1 , 0 );
setEffMoveKey( spep_2 -3  + 156, ct_ga2, 166.5, 348.1 , 0 );

setEffScaleKey( spep_2 -3  + 130, ct_ga2, 0.91, 0.91 );
setEffScaleKey( spep_2 -3  + 132, ct_ga2, 1.95, 1.95 );
setEffScaleKey( spep_2 -3  + 134, ct_ga2, 2.48, 2.48 );
setEffScaleKey( spep_2 -3  + 136, ct_ga2, 2.36, 2.36 );
setEffScaleKey( spep_2 -3  + 138, ct_ga2, 2.24, 2.24 );
setEffScaleKey( spep_2 -3  + 140, ct_ga2, 2.12, 2.12 );
setEffScaleKey( spep_2 -3  + 142, ct_ga2, 2.01, 2.01 );
setEffScaleKey( spep_2 -3  + 144, ct_ga2, 2, 2 );
setEffScaleKey( spep_2 -3  + 146, ct_ga2, 1.99, 1.99 );
setEffScaleKey( spep_2 -3  + 148, ct_ga2, 1.98, 1.98 );
setEffScaleKey( spep_2 -3  + 150, ct_ga2, 1.97, 1.97 );
setEffScaleKey( spep_2 -3  + 152, ct_ga2, 1.96, 1.96 );
setEffScaleKey( spep_2 -3  + 154, ct_ga2, 1.95, 1.95 );
setEffScaleKey( spep_2 -3  + 156, ct_ga2, 1.94, 1.94 );

setEffRotateKey( spep_2 -3  + 130, ct_ga2, 25.3 );
setEffRotateKey( spep_2 -3  + 132, ct_ga2, 11.9 );
setEffRotateKey( spep_2 -3  + 134, ct_ga2, 25.3 );
setEffRotateKey( spep_2 -3  + 136, ct_ga2, 33.9 );
setEffRotateKey( spep_2 -3  + 138, ct_ga2, 25.1 );
setEffRotateKey( spep_2 -3  + 140, ct_ga2, 14.4 );
setEffRotateKey( spep_2 -3  + 142, ct_ga2, 25.3 );
setEffRotateKey( spep_2 -3  + 144, ct_ga2, 25.2 );
setEffRotateKey( spep_2 -3  + 148, ct_ga2, 25.2 );
setEffRotateKey( spep_2 -3  + 150, ct_ga2, 25.3 );
setEffRotateKey( spep_2 -3  + 156, ct_ga2, 25.3 );

setEffAlphaKey( spep_2 -3  + 130, ct_ga2, 255 );
setEffAlphaKey( spep_2 -3  + 144, ct_ga2, 255 );
setEffAlphaKey( spep_2 -3  + 146, ct_ga2, 213 );
setEffAlphaKey( spep_2 -3  + 148, ct_ga2, 170 );
setEffAlphaKey( spep_2 -3  + 150, ct_ga2, 128 );
setEffAlphaKey( spep_2 -3  + 152, ct_ga2, 85 );
setEffAlphaKey( spep_2 -3  + 154, ct_ga2, 42 );
setEffAlphaKey( spep_2 -3  + 156, ct_ga2, 0 );


ct_bago = entryEffectLife( spep_2 - 3 + 164,  10021, 24, 0x100, -1, 0, -21.1, 414 );  --バゴォッ

setEffShake( spep_2 - 3 +164,  ct_bago,  24,  20);
setEffMoveKey( spep_2 - 3 + 164, ct_bago, -21.1, 414 , 0 );
setEffMoveKey( spep_2 - 3 + 166, ct_bago, -21.5, 413 , 0 );
setEffMoveKey( spep_2 - 3 + 168, ct_bago, -21.1, 413.9 , 0 );
setEffMoveKey( spep_2 - 3 + 170, ct_bago, -41.8, 431.3 , 0 );
setEffMoveKey( spep_2 - 3 + 172, ct_bago, -21.1, 413.9 , 0 );
setEffMoveKey( spep_2 - 3 + 174, ct_bago, -40.8, 430.5 , 0 );
setEffMoveKey( spep_2 - 3 + 176, ct_bago, -21.1, 414 , 0 );
setEffMoveKey( spep_2 - 3 + 178, ct_bago, -21.1, 414 , 0 );
setEffMoveKey( spep_2 - 3 + 180, ct_bago, -39, 429.2 , 0 );
setEffMoveKey( spep_2 - 3 + 182, ct_bago, -21.1, 414.1 , 0 );
setEffMoveKey( spep_2 - 3 + 184, ct_bago, -37.3, 427.9 , 0 );
setEffMoveKey( spep_2 - 3 + 186, ct_bago, -21, 414.3 , 0 );
setEffMoveKey( spep_2 - 3 + 188, ct_bago, -21, 414.3 , 0 );

setEffScaleKey( spep_2 - 3 + 164, ct_bago, 1.55, 1.55 );
setEffScaleKey( spep_2 - 3 + 166, ct_bago, 4.28, 4.28 );
setEffScaleKey( spep_2 - 3 + 168, ct_bago, 3.21, 3.21 );
setEffScaleKey( spep_2 - 3 + 170, ct_bago, 3.14, 3.14 );
setEffScaleKey( spep_2 - 3 + 172, ct_bago, 3.07, 3.07 );
setEffScaleKey( spep_2 - 3 + 174, ct_bago, 2.99, 2.99 );
setEffScaleKey( spep_2 - 3 + 176, ct_bago, 2.92, 2.92 );
setEffScaleKey( spep_2 - 3 + 178, ct_bago, 2.85, 2.85 );
setEffScaleKey( spep_2 - 3 + 180, ct_bago, 2.72, 2.72 );
setEffScaleKey( spep_2 - 3 + 182, ct_bago, 2.59, 2.59 );
setEffScaleKey( spep_2 - 3 + 184, ct_bago, 2.47, 2.47 );
setEffScaleKey( spep_2 - 3 + 186, ct_bago, 2.34, 2.34 );
setEffScaleKey( spep_2 - 3 + 188, ct_bago, 2.21, 2.21 );

setEffRotateKey( spep_2 - 3 + 164, ct_bago, -14.4 );
setEffRotateKey( spep_2 - 3 + 188, ct_bago, -14.4 );

setEffAlphaKey( spep_2 - 3 + 164, ct_bago, 255 );
setEffAlphaKey( spep_2 - 3 + 178, ct_bago, 255 );
setEffAlphaKey( spep_2 - 3 + 180, ct_bago, 204 );
setEffAlphaKey( spep_2 - 3 + 182, ct_bago, 153 );
setEffAlphaKey( spep_2 - 3 + 184, ct_bago, 102 );
setEffAlphaKey( spep_2 - 3 + 186, ct_bago, 51 );
setEffAlphaKey( spep_2 - 3 + 188, ct_bago, 0 );


--流線
ryusen = entryEffectLife(  spep_2 -3 + 164,  920,  74,  0x80,  -1, 0,  0,  0);
setEffMoveKey(  spep_2 - 3 + 164,  ryusen,  0,  0,  0);
setEffMoveKey(  spep_2 - 3 + 238,  ryusen,  0,  0,  0);
setEffScaleKey(  spep_2 - 3 +164,  ryusen,  6.5,  0.88);
setEffScaleKey(  spep_2 - 3 +238,  ryusen,  6.5,  0.88);
setEffRotateKey( spep_2 - 3 +164,  ryusen,  90 );
setEffRotateKey( spep_2 - 3 +238,  ryusen,  90);
setEffAlphaKey(  spep_2 - 3 +164,  ryusen,  255);
setEffAlphaKey(  spep_2 - 3 +238,  ryusen,  255);

-- ** エフェクト等
rengeki_f = entryEffectLife( spep_2 + 0, SP_02, 240, 0x100, -1, 0, 0, 0 );  --格闘　前(ef_002)

setEffMoveKey( spep_2 + 0, rengeki_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 240, rengeki_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, rengeki_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 240, rengeki_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rengeki_f, 0 );
setEffRotateKey( spep_2 + 240, rengeki_f, 0 );
setEffAlphaKey( spep_2 + 0, rengeki_f, 255 );
setEffAlphaKey( spep_2 + 238, rengeki_f, 255 );
setEffAlphaKey( spep_2 + 239, rengeki_f, 0 );
setEffAlphaKey( spep_2 + 240, rengeki_f, 0 );

-- ** エフェクト等
rengeki_b = entryEffectLife( spep_2 + 0, SP_03, 240, 0x80, -1, 0, 0, 0 );  --格闘　奥(ef_003)

setEffMoveKey( spep_2 + 0, rengeki_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 240, rengeki_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, rengeki_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 240, rengeki_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rengeki_b, 0 );
setEffRotateKey( spep_2 + 240, rengeki_b, 0 );
setEffAlphaKey( spep_2 + 0, rengeki_b, 255 );
setEffAlphaKey( spep_2 + 238, rengeki_b, 255 );
setEffAlphaKey( spep_2 + 239, rengeki_b, 0 );
setEffAlphaKey( spep_2 + 240, rengeki_b, 0 );

-- ** 敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 238 - 3, 1, 0 );
changeAnime( spep_2 - 3 + 0, 1, 100 );
changeAnime( spep_2 - 3 + 66, 1, 106 );
changeAnime( spep_2 - 3 + 102, 1, 108 );
changeAnime( spep_2 - 3 + 164, 1, 106 );

setShakeChara( spep_2 -3 + 66,  1,  172,  20);  --揺れ  
setMoveKey( spep_2 + 0, 1, -538.5, -523.1 , 0 );
--setMoveKey( spep_2 - 3 + 2, 1, -437.7, -409.8 , 0 );
setMoveKey( spep_2 - 3 + 4, 1, -336.9, -296.4 , 0 );
setMoveKey( spep_2 - 3 + 6, 1, -236, -183 , 0 );
setMoveKey( spep_2 - 3 + 8, 1, -135.2, -69.6 , 0 );
setMoveKey( spep_2 - 3 + 10, 1, -34.3, 43.8 , 0 );
setMoveKey( spep_2 - 3 + 12, 1, 66.5, 157.3 , 0 );
setMoveKey( spep_2 - 3 + 14, 1, 167.3, 270.8 , 0 );
setMoveKey( spep_2 - 3 + 16, 1, 170.3, 273.5 , 0 );
setMoveKey( spep_2 - 3 + 18, 1, 173.2, 276.3 , 0 );
setMoveKey( spep_2 - 3 + 20, 1, 176.2, 279 , 0 );
setMoveKey( spep_2 - 3 + 22, 1, 179.1, 281.8 , 0 );
setMoveKey( spep_2 - 3 + 24, 1, 182.1, 284.5 , 0 );
setMoveKey( spep_2 - 3 + 26, 1, 185, 287.3 , 0 );
setMoveKey( spep_2 - 3 + 28, 1, 187.9, 290 , 0 );
setMoveKey( spep_2 - 3 + 30, 1, 190.9, 292.8 , 0 );
setMoveKey( spep_2 - 3 + 32, 1, 193.8, 295.5 , 0 );
setMoveKey( spep_2 - 3 + 34, 1, 196.8, 298.3 , 0 );
setMoveKey( spep_2 - 3 + 36, 1, 199.7, 301 , 0 );
setMoveKey( spep_2 - 3 + 38, 1, 202.7, 303.8 , 0 );
setMoveKey( spep_2 - 3 + 40, 1, 205.6, 306.5 , 0 );
setMoveKey( spep_2 - 3 + 42, 1, 208.6, 309.3 , 0 );
setMoveKey( spep_2 - 3 + 44, 1, 211.5, 312 , 0 );
setMoveKey( spep_2 - 3 + 46, 1, 214.5, 314.8 , 0 );
setMoveKey( spep_2 - 3 + 48, 1, 217.4, 317.5 , 0 );
setMoveKey( spep_2 - 3 + 50, 1, 220.4, 320.3 , 0 );
setMoveKey( spep_2 - 3 + 52, 1, 216.3, 312.8 , 0 );
setMoveKey( spep_2 - 3 + 54, 1, 209.4, 300.6 , 0 );
setMoveKey( spep_2 - 3 + 56, 1, 199.6, 283.8 , 0 );
setMoveKey( spep_2 - 3 + 58, 1, 186.8, 262.1 , 0 );
setMoveKey( spep_2 - 3 + 60, 1, 171.1, 235.6 , 0 );
setMoveKey( spep_2 - 3 + 62, 1, 152.5, 204.1 , 0 );
setMoveKey( spep_2 - 3 + 65, 1, 130.8, 167.5 , 0 );
setMoveKey( spep_2 - 3 + 66, 1, 87, 216.6 , 0 );
setMoveKey( spep_2 - 3 + 68, 1, 125.1, 295.5 , 0 );
setMoveKey( spep_2 - 3 + 70, 1, 106.3, 245.1 , 0 );
setMoveKey( spep_2 - 3 + 72, 1, 85.4, 203.8 , 0 );
setMoveKey( spep_2 - 3 + 74, 1, 87, 185.4 , 0 );
setMoveKey( spep_2 - 3 + 76, 1, 85.6, 172.5 , 0 );
setMoveKey( spep_2 - 3 + 78, 1, 90.5, 178.8 , 0 );
setMoveKey( spep_2 - 3 + 80, 1, 85.8, 172.4 , 0 );
setMoveKey( spep_2 - 3 + 82, 1, 93.9, 172.4 , 0 );
setMoveKey( spep_2 - 3 + 84, 1, 92.4, 166 , 0 );
setMoveKey( spep_2 - 3 + 86, 1, 97.2, 166.1 , 0 );
setMoveKey( spep_2 - 3 + 88, 1, 98.8, 162.9 , 0 );
setMoveKey( spep_2 - 3 + 90, 1, 100.3, 159.8 , 0 );
setMoveKey( spep_2 - 3 + 92, 1, 101.8, 156.8 , 0 );
setMoveKey( spep_2 - 3 + 94, 1, 103.3, 153.7 , 0 );
setMoveKey( spep_2 - 3 + 96, 1, 104.7, 150.7 , 0 );
setMoveKey( spep_2 - 3 + 98, 1, 106.1, 147.7 , 0 );
setMoveKey( spep_2 - 3 + 101, 1, 147, 171.6 , 0 );
setMoveKey( spep_2 - 3 + 102, 1, 190.6, 161.8 , 0 );
setMoveKey( spep_2 - 3 + 104, 1, 197.5, 154.2 , 0 );
setMoveKey( spep_2 - 3 + 106, 1, 197.9, 137 , 0 );
setMoveKey( spep_2 - 3 + 108, 1, 204.7, 126.2 , 0 );
setMoveKey( spep_2 - 3 + 110, 1, 198.7, 118.6 , 0 );
setMoveKey( spep_2 - 3 + 112, 1, 199.1, 111 , 0 );
setMoveKey( spep_2 - 3 + 114, 1, 196.3, 100.2 , 0 );
setMoveKey( spep_2 - 3 + 116, 1, 196.2, 100.9 , 0 );
setMoveKey( spep_2 - 3 + 118, 1, 196.1, 98.4 , 0 );
setMoveKey( spep_2 - 3 + 120, 1, 196, 96 , 0 );
setMoveKey( spep_2 - 3 + 122, 1, 195.9, 93.5 , 0 );
setMoveKey( spep_2 - 3 + 124, 1, 195.8, 91.1 , 0 );
setMoveKey( spep_2 - 3 + 126, 1, 195.7, 88.6 , 0 );
setMoveKey( spep_2 - 3 + 128, 1, 195.7, 86.2 , 0 );
setMoveKey( spep_2 - 3 + 130, 1, 196.9, 58.3 , 0 );
setMoveKey( spep_2 - 3 + 132, 1, 203.8, 42 , 0 );
setMoveKey( spep_2 - 3 + 134, 1, 201.1, 16 , 0 );
setMoveKey( spep_2 - 3 + 136, 1, 211.3, -3.6 , 0 );
setMoveKey( spep_2 - 3 + 138, 1, 207.2, -23.1 , 0 );
setMoveKey( spep_2 - 3 + 140, 1, 209.6, -29.8 , 0 );
setMoveKey( spep_2 - 3 + 142, 1, 205.6, -46.1 , 0 );
setMoveKey( spep_2 - 3 + 144, 1, 206.2, -44.8 , 0 );
setMoveKey( spep_2 - 3 + 146, 1, 203.5, -46.6 , 0 );
setMoveKey( spep_2 - 3 + 148, 1, 200.9, -48.5 , 0 );
setMoveKey( spep_2 - 3 + 150, 1, 198.3, -50.3 , 0 );
setMoveKey( spep_2 - 3 + 152, 1, 195.6, -52.1 , 0 );
setMoveKey( spep_2 - 3 + 154, 1, 192.9, -53.8 , 0 );
setMoveKey( spep_2 - 3 + 156, 1, 190.3, -55.6 , 0 );
setMoveKey( spep_2 - 3 + 158, 1, 187.6, -57.3 , 0 );
setMoveKey( spep_2 - 3 + 160, 1, 184.9, -59 , 0 );
setMoveKey( spep_2 - 3 + 163, 1, 182.2, -60.7 , 0 );
setMoveKey( spep_2 - 3 + 164, 1, 177.5, 256 , 0 );
setMoveKey( spep_2 - 3 + 166, 1, 137.7, 265.7 , 0 );
setMoveKey( spep_2 - 3 + 168, 1, 110.9, 223.7 , 0 );
setMoveKey( spep_2 - 3 + 170, 1, 97.7, 185.3 , 0 );
setMoveKey( spep_2 - 3 + 172, 1, 92.9, 185.1 , 0 );
setMoveKey( spep_2 - 3 + 174, 1, 94.5, 197.8 , 0 );
setMoveKey( spep_2 - 3 + 176, 1, 83.3, 200.8 , 0 );
setMoveKey( spep_2 - 3 + 178, 1, 91.3, 210.3 , 0 );
setMoveKey( spep_2 - 3 + 180, 1, 86.6, 207 , 0 );
setMoveKey( spep_2 - 3 + 182, 1, 88.2, 222.8 , 0 );
setMoveKey( spep_2 - 3 + 184, 1, 77, 225.9 , 0 );
setMoveKey( spep_2 - 3 + 186, 1, 85, 235.3 , 0 );
setMoveKey( spep_2 - 3 + 188, 1, 85.2, 461.6 , 0 );
setMoveKey( spep_2 - 3 + 190, 1, 85.5, 687.9 , 0 );
setMoveKey( spep_2 - 3 + 192, 1, 85.6, 914.2 , 0 );
setMoveKey( spep_2 - 3 + 194, 1, -68.7, 1644.8 , 0 );
setMoveKey( spep_2 - 3 + 196, 1, -67.7, 1645.9 , 0 );
setMoveKey( spep_2 - 3 + 198, 1, -66.6, 1646.9 , 0 );
setMoveKey( spep_2 - 3 + 200, 1, -65.6, 1625.5 , 0 );
setMoveKey( spep_2 - 3 + 202, 1, -49.5, 1212.1 , 0 );
setMoveKey( spep_2 - 3 + 204, 1, -33.4, 798.7 , 0 );
setMoveKey( spep_2 - 3 + 206, 1, -17.2, 385.3 , 0 );
setMoveKey( spep_2 - 3 + 208, 1, -1, -28 , 0 );
setMoveKey( spep_2 - 3 + 210, 1, -0.2, -16.8 , 0 );
setMoveKey( spep_2 - 3 + 212, 1, 0.6, -4.9 , 0 );
setMoveKey( spep_2 - 3 + 214, 1, 1.3, 7.7 , 0 );
setMoveKey( spep_2 - 3 + 216, 1, 2.1, 21 , 0 );
setMoveKey( spep_2 - 3 + 218, 1, 2.8, 35 , 0 );
setMoveKey( spep_2 - 3 + 220, 1, 3.5, 49.7 , 0 );
setMoveKey( spep_2 - 3 + 222, 1, 4.2, 65.2 , 0 );
setMoveKey( spep_2 - 3 + 224, 1, 4.9, 81.3 , 0 );
setMoveKey( spep_2 - 3 + 226, 1, 5.5, 98.1 , 0 );
setMoveKey( spep_2 - 3 + 228, 1, 6.1, 115.6 , 0 );
setMoveKey( spep_2 - 3 + 230, 1, 6.7, 133.9 , 0 );
setMoveKey( spep_2 - 3 + 232, 1, 7.3, 152.8 , 0 );
setMoveKey( spep_2 - 3 + 234, 1, 7.9, 172.4 , 0 );
setMoveKey( spep_2 - 3 + 236, 1, 8.4, 192.8 , 0 );
setMoveKey( spep_2 - 3 + 238, 1, 8.9, 213.8 , 0 );

setScaleKey( spep_2 + 0, 1, 3.83, 3.83 );
--setScaleKey( spep_2 - 3 + 2, 1, 3.38, 3.38 );
setScaleKey( spep_2 - 3 + 4, 1, 2.94, 2.94 );
setScaleKey( spep_2 - 3 + 6, 1, 2.5, 2.5 );
setScaleKey( spep_2 - 3 + 8, 1, 2.06, 2.06 );
setScaleKey( spep_2 - 3 + 10, 1, 1.62, 1.62 );
setScaleKey( spep_2 - 3 + 12, 1, 1.18, 1.18 );
setScaleKey( spep_2 - 3 + 14, 1, 0.74, 0.74 );
setScaleKey( spep_2 - 3 + 16, 1, 0.72, 0.72 );
setScaleKey( spep_2 - 3 + 18, 1, 0.7, 0.7 );
setScaleKey( spep_2 - 3 + 20, 1, 0.68, 0.68 );
setScaleKey( spep_2 - 3 + 22, 1, 0.66, 0.66 );
setScaleKey( spep_2 - 3 + 24, 1, 0.65, 0.65 );
setScaleKey( spep_2 - 3 + 26, 1, 0.63, 0.63 );
setScaleKey( spep_2 - 3 + 28, 1, 0.61, 0.61 );
setScaleKey( spep_2 - 3 + 30, 1, 0.59, 0.59 );
setScaleKey( spep_2 - 3 + 32, 1, 0.57, 0.57 );
setScaleKey( spep_2 - 3 + 34, 1, 0.55, 0.55 );
setScaleKey( spep_2 - 3 + 36, 1, 0.53, 0.53 );
setScaleKey( spep_2 - 3 + 38, 1, 0.51, 0.51 );
setScaleKey( spep_2 - 3 + 40, 1, 0.49, 0.49 );
setScaleKey( spep_2 - 3 + 42, 1, 0.48, 0.48 );
setScaleKey( spep_2 - 3 + 44, 1, 0.46, 0.46 );
setScaleKey( spep_2 - 3 + 46, 1, 0.44, 0.44 );
setScaleKey( spep_2 - 3 + 48, 1, 0.42, 0.42 );
setScaleKey( spep_2 - 3 + 50, 1, 0.4, 0.4 );
setScaleKey( spep_2 - 3 + 52, 1, 0.46, 0.46 );
setScaleKey( spep_2 - 3 + 54, 1, 0.54, 0.54 );
setScaleKey( spep_2 - 3 + 56, 1, 0.66, 0.66 );
setScaleKey( spep_2 - 3 + 58, 1, 0.82, 0.82 );
setScaleKey( spep_2 - 3 + 60, 1, 1.01, 1.01 );
setScaleKey( spep_2 - 3 + 62, 1, 1.23, 1.23 );
setScaleKey( spep_2 - 3 + 65, 1, 1.49, 1.49 );
setScaleKey( spep_2 - 3 + 66, 1, 1.68, 1.68 );
setScaleKey( spep_2 - 3 + 68, 1, 2.82, 2.82 );
setScaleKey( spep_2 - 3 + 70, 1, 2.25, 2.25 );
setScaleKey( spep_2 - 3 + 72, 1, 1.87, 1.87 );
setScaleKey( spep_2 - 3 + 74, 1, 1.67, 1.67 );
setScaleKey( spep_2 - 3 + 76, 1, 1.66, 1.66 );
setScaleKey( spep_2 - 3 + 78, 1, 1.64, 1.64 );
setScaleKey( spep_2 - 3 + 80, 1, 1.63, 1.63 );
setScaleKey( spep_2 - 3 + 82, 1, 1.62, 1.62 );
setScaleKey( spep_2 - 3 + 84, 1, 1.61, 1.61 );
setScaleKey( spep_2 - 3 + 86, 1, 1.6, 1.6 );
setScaleKey( spep_2 - 3 + 88, 1, 1.59, 1.59 );
setScaleKey( spep_2 - 3 + 90, 1, 1.58, 1.58 );
setScaleKey( spep_2 - 3 + 92, 1, 1.56, 1.56 );
setScaleKey( spep_2 - 3 + 94, 1, 1.55, 1.55 );
setScaleKey( spep_2 - 3 + 96, 1, 1.54, 1.54 );
setScaleKey( spep_2 - 3 + 98, 1, 1.53, 1.53 );
setScaleKey( spep_2 - 3 + 101, 1, 1.53, 1.53 );
setScaleKey( spep_2 - 3 + 102, 1, 1.4, 1.4 );
setScaleKey( spep_2 - 3 + 142, 1, 1.4, 1.4 );
setScaleKey( spep_2 - 3 + 144, 1, 1.39, 1.39 );
setScaleKey( spep_2 - 3 + 146, 1, 1.38, 1.38 );
setScaleKey( spep_2 - 3 + 148, 1, 1.37, 1.37 );
setScaleKey( spep_2 - 3 + 150, 1, 1.36, 1.36 );
setScaleKey( spep_2 - 3 + 152, 1, 1.35, 1.35 );
setScaleKey( spep_2 - 3 + 154, 1, 1.34, 1.34 );
setScaleKey( spep_2 - 3 + 156, 1, 1.34, 1.34 );
setScaleKey( spep_2 - 3 + 158, 1, 1.33, 1.33 );
setScaleKey( spep_2 - 3 + 160, 1, 1.32, 1.32 );
setScaleKey( spep_2 - 3 + 163, 1, 1.31, 1.31 );
setScaleKey( spep_2 - 3 + 164, 1, 2.34, 2.34 );
setScaleKey( spep_2 - 3 + 166, 1, 2.02, 2.02 );
setScaleKey( spep_2 - 3 + 168, 1, 1.71, 1.71 );
setScaleKey( spep_2 - 3 + 170, 1, 1.39, 1.39 );
setScaleKey( spep_2 - 3 + 200, 1, 1.39, 1.39 );
setScaleKey( spep_2 - 3 + 202, 1, 1.41, 1.41 );
setScaleKey( spep_2 - 3 + 204, 1, 1.44, 1.44 );
setScaleKey( spep_2 - 3 + 206, 1, 1.46, 1.46 );
setScaleKey( spep_2 - 3 + 208, 1, 1.48, 1.48 );
setScaleKey( spep_2 - 3 + 238, 1, 1.48, 1.48 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 - 3 + 65, 1, 0 );
setRotateKey( spep_2 - 3 + 66, 1, -31.7 );
setRotateKey( spep_2 - 3 + 101, 1, -31.7 );
setRotateKey( spep_2 - 3 + 102, 1, 35.5 );
setRotateKey( spep_2 - 3 + 163, 1, 35.5 );
setRotateKey( spep_2 - 3 + 164, 1, -60.9 );
setRotateKey( spep_2 - 3 + 166, 1, -61.2 );
setRotateKey( spep_2 - 3 + 168, 1, -61.1 );
setRotateKey( spep_2 - 3 + 170, 1, -61.1 );
setRotateKey( spep_2 - 3 + 172, 1, -61 );
setRotateKey( spep_2 - 3 + 174, 1, -61 );
setRotateKey( spep_2 - 3 + 176, 1, -60.9 );
setRotateKey( spep_2 - 3 + 178, 1, -60.8 );
setRotateKey( spep_2 - 3 + 180, 1, -60.8 );
setRotateKey( spep_2 - 3 + 182, 1, -60.7 );
setRotateKey( spep_2 - 3 + 184, 1, -60.7 );
setRotateKey( spep_2 - 3 + 186, 1, -60.6 );
setRotateKey( spep_2 - 3 + 188, 1, -51.6 );
setRotateKey( spep_2 - 3 + 190, 1, -42.6 );
setRotateKey( spep_2 - 3 + 192, 1, -33.6 );
setRotateKey( spep_2 - 3 + 194, 1, -37.4 );
setRotateKey( spep_2 - 3 + 196, 1, -36.8 );
setRotateKey( spep_2 - 3 + 198, 1, -36.2 );
setRotateKey( spep_2 - 3 + 200, 1, -35.6 );
setRotateKey( spep_2 - 3 + 202, 1, -35 );
setRotateKey( spep_2 - 3 + 204, 1, -34.4 );
setRotateKey( spep_2 - 3 + 206, 1, -33.7 );
setRotateKey( spep_2 - 3 + 208, 1, -33.1 );
setRotateKey( spep_2 - 3 + 210, 1, -32.5 );
setRotateKey( spep_2 - 3 + 212, 1, -31.9 );
setRotateKey( spep_2 - 3 + 214, 1, -31.3 );
setRotateKey( spep_2 - 3 + 216, 1, -30.7 );
setRotateKey( spep_2 - 3 + 218, 1, -30.1 );
setRotateKey( spep_2 - 3 + 220, 1, -29.5 );
setRotateKey( spep_2 - 3 + 222, 1, -28.9 );
setRotateKey( spep_2 - 3 + 224, 1, -28.3 );
setRotateKey( spep_2 - 3 + 226, 1, -27.7 );
setRotateKey( spep_2 - 3 + 228, 1, -27 );
setRotateKey( spep_2 - 3 + 230, 1, -26.4 );
setRotateKey( spep_2 - 3 + 232, 1, -25.8 );
setRotateKey( spep_2 - 3 + 234, 1, -25.2 );
setRotateKey( spep_2 - 3 + 236, 1, -24.6 );
setRotateKey( spep_2 - 3 + 238, 1, -24 );


-- ** 音
playSe( spep_2 + 0,  8);  --飛ぶ
playSe (spep_2 - 3 + 68,  1011); --バキ
playSe( spep_2 - 3 + 102,  1009);  --ガッ
playSe( spep_2 - 3 + 130,  1010);  --ガッ
playSe( spep_2 - 3 + 164,  1011);  --バゴォ
playSe( spep_2 +180,  8);  --敵が上昇

-- ** 白フェード
entryFade( spep_2 - 3 + 68, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade
entryFade( spep_2 - 3 + 164, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade
entryFade( spep_2 + 234, 2, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 238, 0, 0, 0, 0, 150 );  --黒　背景


--次の準備
spep_3 = spep_2 + 238;

------------------------------------------------------
--構え(150F)
------------------------------------------------------

-- ** エフェクト等
kamehame = entryEffectLife( spep_3 + 0, SP_04, 150, 0x100, -1, 0, 0, 0 );  --溜め(ef_004)

setEffMoveKey( spep_3 + 0, kamehame, 0, 0 , 0 );
setEffMoveKey( spep_3 + 150, kamehame, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kamehame, 1.0, 1.0 );
setEffScaleKey( spep_3 + 150, kamehame, 1.0, 1.0 );
setEffAlphaKey( spep_3 + 0, kamehame, 255 );
setEffAlphaKey( spep_3 + 149, kamehame, 255 );
setEffAlphaKey( spep_3 + 150, kamehame, 0 );
setEffRotateKey( spep_3 + 0, kamehame, 0 );
setEffRotateKey( spep_3 + 150, kamehame, 0 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_3 + 20, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_3 + 20, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_3 + 32,  190006, 72, 0x100, -1, 0, -8.5, 515.5 );  --ゴゴゴ
setEffShake( spep_3 + 32, ctgogo, 72, 10 );

setEffMoveKey( spep_3 + 32, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_3 + 104, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_3 + 32, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_3 + 96, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_3 + 98, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_3 + 102, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_3 + 104, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_3 + 32, ctgogo, 0 );
setEffRotateKey( spep_3 + 104, ctgogo, 0 );

setEffAlphaKey( spep_3 + 32, ctgogo, 255 );
setEffAlphaKey( spep_3 + 104, ctgogo, 255 );

-- ** 集中線
shuchusen_c = entryEffectLife( spep_3 + 0,  906, 148, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchusen_c, 0, 0 , 0 );
setEffMoveKey( spep_3 + 148, shuchusen_c, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen_c, 1.1, 1.25 );
setEffScaleKey( spep_3 + 148, shuchusen_c, 1.1, 1.25 );

setEffRotateKey( spep_3 + 0, shuchusen_c, 180 );
setEffRotateKey( spep_3 + 148, shuchusen_c, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen_c, 255 );
setEffAlphaKey( spep_3 + 148, shuchusen_c, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 150, 0, 0, 0, 0, 150 );  --黒　背景
entryFadeBg( spep_3 + 10, 40, 110, 0, 0, 0, 0, 220 );  --黒　背景

--白フェード
entryFade( spep_3 + 144,  4,  2,  2,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --whitefade

-- ** 音 ** --
playSe(  spep_3,  1048);
playSe(  spep_3+10,  1048);
playSe(  spep_3+20,  1048);
playSe(  spep_3+30,  1048);
playSe( spep_3 + 32, SE_04 );  --ゴゴゴ
playSe( spep_3+40, 1048);	
playSe( spep_3+50, 1048);	
playSe( spep_3+60, 1048);	
playSe( spep_3+70, 1048);	
playSe( spep_3+80, 1048);	
playSe( spep_3+90, 1048);	
playSe( spep_3+100, 1048);	
playSe( spep_3+110, 1048);	
playSe( spep_3+120, 1048);	
playSe( spep_3+130, 1048);	
playSe( spep_3+140, 1048);

--次の準備
spep_4 = spep_3 + 150;

------------------------------------------------------
--  last(250F)
------------------------------------------------------
--  ** 集中線

shuchusen_d = entryEffectLife( spep_4 + 40,  906, 30, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 40, shuchusen_d, 0, 0 , 0 );
setEffMoveKey( spep_4 + 70, shuchusen_d, 0, 0 , 0 );

setEffScaleKey( spep_4 + 40, shuchusen_d, 1.2, 1.38 );
setEffScaleKey( spep_4 + 70, shuchusen_d, 1.2, 1.38 );

setEffRotateKey( spep_4 + 40, shuchusen_d, 0 );
setEffRotateKey( spep_4 + 70, shuchusen_d, 0 );

setEffAlphaKey( spep_4 + 40, shuchusen_d, 255 );
setEffAlphaKey( spep_4 + 70, shuchusen_d, 255 );

-- ** エフェクト等
last = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --発射(ef_005)

setEffMoveKey( spep_4 + 0, last, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80, last, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, last, 1.0, 1.0 );
setEffScaleKey( spep_4 + 80, last, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, last, 0 );
setEffRotateKey( spep_4 + 80, last, 0 );
setEffAlphaKey( spep_4 + 0, last, 255 );
setEffAlphaKey( spep_4 + 80, last, 255 );

-- ** 流線
ryusen1 = entryEffectLife(  spep_4 + 0,  920,  46,  0x80,  -1, 0,  0,  0);
setEffMoveKey(  spep_4 + 0,  ryusen1,  0,  0,  0);
setEffMoveKey(  spep_4 +46,  ryusen1,  0,  0,  0);
setEffScaleKey(  spep_4 +0,  ryusen1,  6.5,  0.88);
setEffScaleKey(  spep_4  +46,  ryusen1,  6.5,  0.88);
setEffRotateKey( spep_4  +0,  ryusen1,  90 );
setEffRotateKey( spep_4  +46,  ryusen1,  90);
setEffAlphaKey(  spep_4  +0,  ryusen1,  255);
setEffAlphaKey(  spep_4  +40,  ryusen1,  255);
setEffAlphaKey(  spep_4  +46,  ryusen1,  0);

-- ** 書き文字エントリー
ct_bago1 = entryEffectLife( spep_4 + 40 -3,  10021, 24, 0x100, -1, 0, -21.1, 414 );  --バゴォッ

setEffShake( spep_4 - 3 +40,  ct_bago1,  24,  20);
setEffMoveKey( spep_4 - 3 + 40, ct_bago1, -21.1, 414 , 0 );
setEffMoveKey( spep_4 - 3 + 42, ct_bago1, -21.5, 413 , 0 );
setEffMoveKey( spep_4 - 3 + 44, ct_bago1, -21.1, 413.9 , 0 );
setEffMoveKey( spep_4 - 3 + 46, ct_bago1, -41.8, 431.3 , 0 );
setEffMoveKey( spep_4 - 3 + 48, ct_bago1, -21.1, 413.9 , 0 );
setEffMoveKey( spep_4 - 3 + 50, ct_bago1, -40.8, 430.5 , 0 );
setEffMoveKey( spep_4 - 3 + 52, ct_bago1, -21.1, 414 , 0 );
setEffMoveKey( spep_4 - 3 + 54, ct_bago1, -21.1, 414 , 0 );
setEffMoveKey( spep_4 - 3 + 56, ct_bago1, -39, 429.2 , 0 );
setEffMoveKey( spep_4 - 3 + 58, ct_bago1, -21.1, 414.1 , 0 );
setEffMoveKey( spep_4 - 3 + 60, ct_bago1, -37.3, 427.9 , 0 );
setEffMoveKey( spep_4 - 3 + 62, ct_bago1, -21, 414.3 , 0 );
setEffMoveKey( spep_4 - 3 + 64, ct_bago1, -21, 414.3 , 0 );

setEffScaleKey( spep_4 - 3 + 40, ct_bago1, 1.55, 1.55 );
setEffScaleKey( spep_4 - 3 + 42, ct_bago1, 4.28, 4.28 );
setEffScaleKey( spep_4 - 3 + 44, ct_bago1, 3.21, 3.21 );
setEffScaleKey( spep_4 - 3 + 46, ct_bago1, 3.14, 3.14 );
setEffScaleKey( spep_4 - 3 + 48, ct_bago1, 3.07, 3.07 );
setEffScaleKey( spep_4 - 3 + 50, ct_bago1, 2.99, 2.99 );
setEffScaleKey( spep_4 - 3 + 52, ct_bago1, 2.92, 2.92 );
setEffScaleKey( spep_4 - 3 + 54, ct_bago1, 2.85, 2.85 );
setEffScaleKey( spep_4 - 3 + 56, ct_bago1, 2.72, 2.72 );
setEffScaleKey( spep_4 - 3 + 58, ct_bago1, 2.59, 2.59 );
setEffScaleKey( spep_4 - 3 + 60, ct_bago1, 2.47, 2.47 );
setEffScaleKey( spep_4 - 3 + 62, ct_bago1, 2.34, 2.34 );
setEffScaleKey( spep_4 - 3 + 64, ct_bago1, 2.21, 2.21 );

setEffRotateKey( spep_4 - 3 + 40, ct_bago1, -14.4 );
setEffRotateKey( spep_4 - 3 + 64, ct_bago1, -14.4 );

setEffAlphaKey( spep_4 - 3 + 40, ct_bago1, 255 );
setEffAlphaKey( spep_4 - 3 + 54, ct_bago1, 255 );
setEffAlphaKey( spep_4 - 3 + 56, ct_bago1, 204 );
setEffAlphaKey( spep_4 - 3 + 58, ct_bago1, 153 );
setEffAlphaKey( spep_4 - 3 + 60, ct_bago1, 102 );
setEffAlphaKey( spep_4 - 3 + 62, ct_bago1, 51 );
setEffAlphaKey( spep_4 - 3 + 64, ct_bago1, 0 );

--  ** 敵の動き
setDisp( spep_4 + 0, 1, 1);
setDisp( spep_4 + 78 - 3, 1, 0);  --消す
changeAnime( spep_4 + 0,  1,  6);
changeAnime( spep_4 + 40 -3,  1,  8);

setMoveKey( spep_4 + 0, 1, 1096.4, 2919.6 , 0 );
--setMoveKey( spep_4 - 3 + 2, 1, 956.7, 2644.9 , 0 );
setMoveKey( spep_4 - 3 + 4, 1, 817.1, 2361.3 , 0 );
setMoveKey( spep_4 - 3 + 6, 1, 677.4, 2071.9 , 0 );
setMoveKey( spep_4 - 3 + 8, 1, 537.7, 1779.4 , 0 );
setMoveKey( spep_4 - 3 + 10, 1, 398.1, 1487 , 0 );
setMoveKey( spep_4 - 3 + 12, 1, 258.4, 1197.4 , 0 );
setMoveKey( spep_4 - 3 + 14, 1, 247.7, 1140.1 , 0 );
setMoveKey( spep_4 - 3 + 16, 1, 237, 1078 , 0 );
setMoveKey( spep_4 - 3 + 18, 1, 226.2, 1011.4 , 0 );
setMoveKey( spep_4 - 3 + 20, 1, 215.5, 940.4 , 0 );
setMoveKey( spep_4 - 3 + 22, 1, 204.7, 865.3 , 0 );
setMoveKey( spep_4 - 3 + 24, 1, 194, 786.4 , 0 );
setMoveKey( spep_4 - 3 + 26, 1, 183.2, 703.8 , 0 );
setMoveKey( spep_4 - 3 + 28, 1, 172.5, 617.7 , 0 );
setMoveKey( spep_4 - 3 + 30, 1, 161.7, 528.5 , 0 );
setMoveKey( spep_4 - 3 + 32, 1, 151, 436.3 , 0 );
setMoveKey( spep_4 - 3 + 34, 1, 140.2, 341.3 , 0 );
setMoveKey( spep_4 - 3 + 36, 1, 129.5, 243.8 , 0 );
setMoveKey( spep_4 - 3 + 39, 1, 118.7, 144.1 , 0 );
setMoveKey( spep_4 - 3 + 40, 1, 223.1, 245.5 , 0 );
setMoveKey( spep_4 - 3 + 42, 1, 182.3, 207.2 , 0 );
setMoveKey( spep_4 - 3 + 44, 1, 123.7, 148.4 , 0 );
setMoveKey( spep_4 - 3 + 46, 1, 137.3, 152.3 , 0 );
setMoveKey( spep_4 - 3 + 48, 1, 130.9, 152.2 , 0 );
setMoveKey( spep_4 - 3 + 50, 1, 140.4, 152 , 0 );
setMoveKey( spep_4 - 3 + 52, 1, 141.9, 143.9 , 0 );
setMoveKey( spep_4 - 3 + 54, 1, 143.4, 151.8 , 0 );
setMoveKey( spep_4 - 3 + 56, 1, 140.8, 147.6 , 0 );
setMoveKey( spep_4 - 3 + 58, 1, 146.2, 151.5 , 0 );
setMoveKey( spep_4 - 3 + 60, 1, 139.6, 147.3 , 0 );
setMoveKey( spep_4 - 3 + 62, 1, 149, 151.1 , 0 );
setMoveKey( spep_4 - 3 + 64, 1, 146.3, 143 , 0 );
setMoveKey( spep_4 - 3 + 66, 1, 310.9, 259.8 , 0 );
setMoveKey( spep_4 - 3 + 68, 1, 440.5, 349.1 , 0 );
setMoveKey( spep_4 - 3 + 70, 1, 563.7, 431.1 , 0 );
setMoveKey( spep_4 - 3 + 72, 1, 652.6, 486 , 0 );
setMoveKey( spep_4 - 3 + 74, 1, 727.8, 542.1 , 0 );
setMoveKey( spep_4 - 3 + 76, 1, 777.7, 575.8 , 0 );
setMoveKey( spep_4 - 3 + 78, 1, 804.6, 595.1 , 0 );

setScaleKey( spep_4 + 0, 1, 3.83, 3.83 );
--setScaleKey( spep_4 - 3 + 2, 1, 3.51, 3.51 );
setScaleKey( spep_4 - 3 + 4, 1, 3.19, 3.19 );
setScaleKey( spep_4 - 3 + 6, 1, 2.88, 2.88 );
setScaleKey( spep_4 - 3 + 8, 1, 2.56, 2.56 );
setScaleKey( spep_4 - 3 + 10, 1, 2.24, 2.24 );
setScaleKey( spep_4 - 3 + 12, 1, 1.92, 1.92 );
setScaleKey( spep_4 - 3 + 14, 1, 1.9, 1.9 );
setScaleKey( spep_4 - 3 + 16, 1, 1.87, 1.87 );
setScaleKey( spep_4 - 3 + 18, 1, 1.85, 1.85 );
setScaleKey( spep_4 - 3 + 20, 1, 1.82, 1.82 );
setScaleKey( spep_4 - 3 + 22, 1, 1.8, 1.8 );
setScaleKey( spep_4 - 3 + 24, 1, 1.77, 1.77 );
setScaleKey( spep_4 - 3 + 26, 1, 1.75, 1.75 );
setScaleKey( spep_4 - 3 + 28, 1, 1.73, 1.73 );
setScaleKey( spep_4 - 3 + 30, 1, 1.7, 1.7 );
setScaleKey( spep_4 - 3 + 32, 1, 1.68, 1.68 );
setScaleKey( spep_4 - 3 + 34, 1, 1.65, 1.65 );
setScaleKey( spep_4 - 3 + 36, 1, 1.63, 1.63 );
setScaleKey( spep_4 - 3 + 39, 1, 1.6, 1.6 );
setScaleKey( spep_4 - 3 + 40, 1, 2.89, 2.89 );
setScaleKey( spep_4 - 3 + 42, 1, 2.26, 2.26 );
setScaleKey( spep_4 - 3 + 44, 1, 1.65, 1.65 );
setScaleKey( spep_4 - 3 + 46, 1, 1.63, 1.63 );
setScaleKey( spep_4 - 3 + 48, 1, 1.61, 1.61 );
setScaleKey( spep_4 - 3 + 50, 1, 1.59, 1.59 );
setScaleKey( spep_4 - 3 + 52, 1, 1.57, 1.57 );
setScaleKey( spep_4 - 3 + 54, 1, 1.55, 1.55 );
setScaleKey( spep_4 - 3 + 56, 1, 1.53, 1.53 );
setScaleKey( spep_4 - 3 + 58, 1, 1.51, 1.51 );
setScaleKey( spep_4 - 3 + 60, 1, 1.5, 1.5 );
setScaleKey( spep_4 - 3 + 62, 1, 1.48, 1.48 );
setScaleKey( spep_4 - 3 + 64, 1, 1.46, 1.46 );
setScaleKey( spep_4 - 3 + 66, 1, 1.28, 1.28 );
setScaleKey( spep_4 - 3 + 68, 1, 1.12, 1.12 );
setScaleKey( spep_4 - 3 + 70, 1, 0.99, 0.99 );
setScaleKey( spep_4 - 3 + 72, 1, 0.88, 0.88 );
setScaleKey( spep_4 - 3 + 74, 1, 0.79, 0.79 );
setScaleKey( spep_4 - 3 + 76, 1, 0.73, 0.73 );
setScaleKey( spep_4 - 3 + 78, 1, 0.69, 0.69 );

setRotateKey( spep_4 + 0, 1, -124.2 );
setRotateKey( spep_4 - 3 + 39, 1, -124.2 );
setRotateKey( spep_4 - 3 + 40, 1, 154.8 );
setRotateKey( spep_4 - 3 + 78, 1, 154.8 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 80, 0, 0, 0, 0, 220 );  --黒　背景

-- ** 音 ** 
--SE = playSe( spep_4,  1050);  --くるくる
--stopSe(spep_4 +38 -3,  SE,  0);
playSe( spep_4 +40 -3, 1060);  --突く
--playSe( spep_4 + 40 , 1022 );  --発射

-- ** 白フェード
entryFade( spep_4 + 74,  4,  6,  2,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --whitefade

-- ** 次の準備
spep_5 = spep_4 +80;

-------------------------------------------------------
--ガッ
-------------------------------------------------------

--敵の動き--
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_5 + 12, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 2, 1, 105 );
setRotateKey( spep_5 + 4, 1, 240 );
setRotateKey( spep_5 + 6, 1, 405 );
setRotateKey( spep_5 + 8, 1, 600 );
setRotateKey( spep_5 + 10, 1, 825 );
setRotateKey( spep_5 + 12, 1, 1080 );

--爆発エフェクト
entryEffect( spep_5, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5, SE_10);

setDamage( spep_5 +16, 1, 0);  -- ダメージ振動等
setShake(spep_5+8,6,15);
setShake(spep_5+14,15,10);

--書き文字--
ctGa = entryEffectLife( spep_5 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_5 + 14, ctGa, 30, 10);

setEffMoveKey( spep_5 + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 30, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctGa, 2, 2 );
setEffScaleKey( spep_5+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_5+17, cGa, 2.6, 2.6);
setEffScaleKey( spep_5+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_5+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_5+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_5+112, ctGa, 3.8, 3.8);

setEffRotateKey( spep_5 + 14, ctGa, -40 );
setEffRotateKey( spep_5 + 16, ctGa, -31 );
setEffRotateKey( spep_5 + 18, ctGa, -40 );
setEffRotateKey( spep_5 + 20, ctGa, -31 );
setEffRotateKey( spep_5 + 22, ctGa, -40 );
setEffRotateKey( spep_5 + 24, ctGa, -31);
setEffRotateKey( spep_5 + 26, ctGa, -40 );
setEffRotateKey( spep_5 + 28, ctGa, -31);
setEffRotateKey( spep_5 + 30, ctGa, -40 );

setEffAlphaKey( spep_5 + 14, ctGa, 255 );

--集中線（白）
shuchusen = entryEffectLife( spep_5+2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_5+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--ひび割れ
hibi = entryEffect( spep_5+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

playSe(  spep_5 + 12,  SE_11);

-- ダメージ表示
dealDamage(spep_5+16);
entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_5+110);

else



------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
--突進(70F)
------------------------------------------------------
spep_0 = 0;

-- ** 書き文字
ct_zuo = entryEffectLife( spep_0 + 0,  10012, 62, 0x100, -1, 0, 78.7, 260.5 );

setEffShake( spep_0,  ctgogo,  62,  20);  --揺れ
setEffMoveKey( spep_0 + 0, ct_zuo, 78.7, 260.5 , 0 );
setEffMoveKey( spep_0 + 2, ct_zuo, 105, 288.6 , 0 );
setEffMoveKey( spep_0 + 4, ct_zuo, 117.9, 330.1 , 0 );
setEffMoveKey( spep_0 + 6, ct_zuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 8, ct_zuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 58, ct_zuo, 180.5, 341.1 , 0 );
setEffMoveKey( spep_0 + 60, ct_zuo, 160.8, 370.2 , 0 );
setEffMoveKey( spep_0 + 62, ct_zuo, 168.5, 372 , 0 );

setEffScaleKey( spep_0 + 0, ct_zuo, 0.34, 0.34 );
setEffScaleKey( spep_0 + 2, ct_zuo, 1.13, 1.13 );
setEffScaleKey( spep_0 + 4, ct_zuo, 1.94, 1.94 );
setEffScaleKey( spep_0 + 6, ct_zuo, 2.73, 2.73 );
setEffScaleKey( spep_0 + 54, ct_zuo, 2.73, 2.73 );
setEffScaleKey( spep_0 + 56, ct_zuo, 3.68, 3.68 );
setEffScaleKey( spep_0 + 58, ct_zuo, 4.67, 4.67 );
setEffScaleKey( spep_0 + 60, ct_zuo, 5.63, 5.63 );
setEffScaleKey( spep_0 + 62, ct_zuo, 6.62, 6.62 );

setEffRotateKey( spep_0 + 0, ct_zuo, 27.2 );
setEffRotateKey( spep_0 + 62,  ct_zuo, 27.2);

setEffAlphaKey( spep_0 + 0, ct_zuo, 255 );
setEffAlphaKey( spep_0 + 54, ct_zuo, 255 );
setEffAlphaKey( spep_0 + 56, ct_zuo, 191 );
setEffAlphaKey( spep_0 + 58, ct_zuo, 128 );
setEffAlphaKey( spep_0 + 60, ct_zuo, 64 );
setEffAlphaKey( spep_0 + 62, ct_zuo, 0 );

-- ** 集中線 ** --
shuchusen0 = entryEffectLife( spep_0 + 0, 906, 70, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen0, 70, 20 );

setEffMoveKey( spep_0 + 0, shuchusen0, 0, 0 , 0 );
setEffMoveKey( spep_0 + 70, shuchusen0, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen0, 1.6, 1.6 );
setEffScaleKey( spep_0 + 70, shuchusen0, 1.6, 1.6 );

setEffRotateKey( spep_0 + 0, shuchusen0, 0 );
setEffRotateKey( spep_0 + 70, shuchusen0, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen0, 255 );
setEffAlphaKey( spep_0 + 70, shuchusen0, 255 );

-- ** エフェクト等
tosshin = entryEffectLife( spep_0 + 0, SP_01, 70, 0x80, -1, 0, 0, 0 );  --上昇(ef_001)

setEffMoveKey( spep_0 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_0 + 70, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tosshin, -1.0, 1.0 );
setEffScaleKey( spep_0 + 70, tosshin, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tosshin, 0 );
setEffRotateKey( spep_0 + 70, tosshin, 0 );
setEffAlphaKey( spep_0 + 0, tosshin, 255 );
setEffAlphaKey( spep_0 + 70, tosshin, 255 );


-- ** 音
playSe(  spep_0,  9);  --突進

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 70, 0, 0, 0, 0, 150 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

--[[
-- ** 敵の動き
setMoveKey( SP_dodge + 0, 1, -28.2, 451.3 , 0 );
setMoveKey( SP_dodge + 2, 1, -26.5, 407.6 , 0 );
setMoveKey( SP_dodge + 4, 1, -24.7, 362.1 , 0 );
setMoveKey( SP_dodge + 6, 1, -23.3, 327.7 , 0 );
setMoveKey( SP_dodge + 8, 1, -22, 292.6 , 0 );
setMoveKey( SP_dodge + 10, 1, -20.9, 267.8 , 0 );

setScaleKey( SP_dodge + 0, 1, 0.68, 0.68 );
setScaleKey( SP_dodge + 2, 1, 0.67, 0.67 );
setScaleKey( SP_dodge + 4, 1, 0.65, 0.65 );
setScaleKey( SP_dodge + 6, 1, 0.64, 0.64 );
setScaleKey( SP_dodge + 8, 1, 0.62, 0.62 );
setScaleKey( SP_dodge + 10, 1, 0.61, 0.61 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );
]]

-- ** カットイン部分 ** --
speff0 = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff0, 3, 6 );                           -- カットイン差し替え

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

-- ** 白フェード
entryFade( spep_0 +64, 2,  4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

--次の準備
spep_1 = spep_0 + 70;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
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

-- ** ホワイトフェード ** --
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 90;


------------------------------------------------------
--連撃(240F)
------------------------------------------------------
-- ** 集中線

shuchusen_a = entryEffectLife( spep_2 + 68 - 3,  906, 20, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 68 - 3, shuchusen_a, 0, 0 , 0 );
setEffMoveKey( spep_2 + 88 - 3, shuchusen_a, 0, 0 , 0 );

setEffScaleKey( spep_2 + 68 - 3, shuchusen_a, 1.1, 1.8 );
setEffScaleKey( spep_2 + 88 - 3, shuchusen_a, 1.1, 1.8 );

setEffRotateKey( spep_2 + 68 - 3, shuchusen_a, 0 );
setEffRotateKey( spep_2 + 88 - 3, shuchusen_a, 0 );

setEffAlphaKey( spep_2 + 68 - 3, shuchusen_a, 255 );
setEffAlphaKey( spep_2 + 80 - 3, shuchusen_a, 255 );
setEffAlphaKey( spep_2 + 82 - 3, shuchusen_a, 170 );
setEffAlphaKey( spep_2 + 84 - 3, shuchusen_a, 85 );
setEffAlphaKey( spep_2 + 88 - 3, shuchusen_a, 0 );

shuchusen_b = entryEffectLife( spep_2 + 102 - 3,  906, 44, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 102 - 3, shuchusen_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 146 - 3, shuchusen_b, 0, 0 , 0 );

setEffScaleKey( spep_2 + 102 - 3, shuchusen_b, 1.44, 1.58 );
setEffScaleKey( spep_2 + 138 - 3, shuchusen_b, 1.44, 1.58 );
setEffScaleKey( spep_2 + 140 - 3, shuchusen_b, 1.1, 1.8 );
setEffScaleKey( spep_2 + 146 - 3, shuchusen_b, 1.1, 1.8 );

setEffRotateKey( spep_2 + 102 - 3, shuchusen_b, 0 );
setEffRotateKey( spep_2 + 146 - 3, shuchusen_b, 0 );

setEffAlphaKey( spep_2 + 102 - 3, shuchusen_b, 255 );
setEffAlphaKey( spep_2 + 140 - 3, shuchusen_b, 255 );
setEffAlphaKey( spep_2 + 142 - 3, shuchusen_b, 170 );
setEffAlphaKey( spep_2 + 144 - 3, shuchusen_b, 85 );
setEffAlphaKey( spep_2 + 146 - 3, shuchusen_b, 0 );

-- ** 書き文字
ct_baki = entryEffectLife( spep_2 - 3 + 68, 10020, 22, 0x100, -1, 0, 127.9, 378.7 );  --バキ

setEffShake( spep_2 -3 +68,  ct_baki,  22,  20);  --揺れ
setEffMoveKey( spep_2 - 3 + 68, ct_baki, 127.9, 378.7 , 0 );
setEffMoveKey( spep_2 - 3 + 70, ct_baki, 120.3, 402.1 , 0 );
setEffMoveKey( spep_2 - 3 + 72, ct_baki, 127.8, 378.8 , 0 );
setEffMoveKey( spep_2 - 3 + 90, ct_baki, 128, 378.7 , 0 );

setEffScaleKey( spep_2 - 3 + 68, ct_baki, 1.6, 1.6 );
setEffScaleKey( spep_2 - 3 + 70, ct_baki, 2.88, 2.88 );
setEffScaleKey( spep_2 - 3 + 72, ct_baki, 2.57, 2.57 );
setEffScaleKey( spep_2 - 3 + 74, ct_baki, 2.25, 2.25 );
setEffScaleKey( spep_2 - 3 + 76, ct_baki, 1.94, 1.94 );
setEffScaleKey( spep_2 - 3 + 78, ct_baki, 1.9, 1.9 );
setEffScaleKey( spep_2 - 3 + 80, ct_baki, 1.86, 1.86 );
setEffScaleKey( spep_2 - 3 + 82, ct_baki, 1.81, 1.81 );
setEffScaleKey( spep_2 - 3 + 84, ct_baki, 1.77, 1.77 );
setEffScaleKey( spep_2 - 3 + 86, ct_baki, 1.73, 1.73 );
setEffScaleKey( spep_2 - 3 + 88, ct_baki, 1.75, 1.75 );
setEffScaleKey( spep_2 - 3 + 90, ct_baki, 1.76, 1.76 );

setEffRotateKey( spep_2 - 3 + 68, ct_baki, 27.3 );
setEffRotateKey( spep_2 - 3 + 90, ct_baki, 27.3 );

setEffAlphaKey( spep_2 - 3 + 68, ct_baki, 255 );
setEffAlphaKey( spep_2 - 3 + 86, ct_baki, 255 );
setEffAlphaKey( spep_2 - 3 + 88, ct_baki, 134 );
setEffAlphaKey( spep_2 - 3 + 90, ct_baki, 13 );

ct_ga = entryEffectLife( spep_2 - 3 + 102,  10005, 22, 0x100, -1, 0, 48.2, 404 );  --ガッ

setEffShake( spep_2 -3 + 102,  ct_ga,  22,  20);  --揺れ
setEffMoveKey( spep_2 - 3 + 102, ct_ga, 48.2, 404 , 0 );
setEffMoveKey( spep_2 - 3 + 104, ct_ga, 48.3, 404.2 , 0 );
setEffMoveKey( spep_2 - 3 + 106, ct_ga, 48.2, 404.3 , 0 );
setEffMoveKey( spep_2 - 3 + 108, ct_ga, 48.1, 404.2 , 0 );
setEffMoveKey( spep_2 - 3 + 110, ct_ga, 48.2, 404.3 , 0 );
setEffMoveKey( spep_2 - 3 + 112, ct_ga, 48.1, 404.3 , 0 );
setEffMoveKey( spep_2 - 3 + 114, ct_ga, 48.1, 404.1 , 0 );
setEffMoveKey( spep_2 - 3 + 116, ct_ga, 48.2, 404.1 , 0 );
setEffMoveKey( spep_2 - 3 + 118, ct_ga, 48.2, 404.1 , 0 );
setEffMoveKey( spep_2 - 3 + 124, ct_ga, 48.3, 404.1 , 0 );

setEffScaleKey( spep_2 - 3 + 102, ct_ga, 0.91, 0.91 );
setEffScaleKey( spep_2 - 3 + 104, ct_ga, 1.95, 1.95 );
setEffScaleKey( spep_2 - 3 + 106, ct_ga, 2.48, 2.48 );
setEffScaleKey( spep_2 - 3 + 108, ct_ga, 2.36, 2.36 );
setEffScaleKey( spep_2 - 3 + 110, ct_ga, 2.24, 2.24 );
setEffScaleKey( spep_2 - 3 + 112, ct_ga, 2.12, 2.12 );
setEffScaleKey( spep_2 - 3 + 114, ct_ga, 2.01, 2.01 );
setEffScaleKey( spep_2 - 3 + 116, ct_ga, 2, 2 );
setEffScaleKey( spep_2 - 3 + 118, ct_ga, 1.99, 1.99 );
setEffScaleKey( spep_2 - 3 + 120, ct_ga, 1.97, 1.97 );
setEffScaleKey( spep_2 - 3 + 122, ct_ga, 1.96, 1.96 );
setEffScaleKey( spep_2 - 3 + 124, ct_ga, 1.94, 1.94 );

setEffRotateKey( spep_2 - 3 + 102, ct_ga, -9.7 );
setEffRotateKey( spep_2 - 3 + 104, ct_ga, -23 );
setEffRotateKey( spep_2 - 3 + 106, ct_ga, -9.7 );
setEffRotateKey( spep_2 - 3 + 108, ct_ga, -1.1 );
setEffRotateKey( spep_2 - 3 + 110, ct_ga, -9.9 );
setEffRotateKey( spep_2 - 3 + 112, ct_ga, -20.6 );
setEffRotateKey( spep_2 - 3 + 114, ct_ga, -9.7 );
setEffRotateKey( spep_2 - 3 + 116, ct_ga, -9.8 );
setEffRotateKey( spep_2 - 3 + 118, ct_ga, -9.8 );
setEffRotateKey( spep_2 - 3 + 124, ct_ga, -9.7 );

setEffAlphaKey( spep_2 - 3 + 102, ct_ga, 255 );
setEffAlphaKey( spep_2 - 3 + 116, ct_ga, 255 );
setEffAlphaKey( spep_2 - 3 + 118, ct_ga, 191 );
setEffAlphaKey( spep_2 - 3 + 120, ct_ga, 128 );
setEffAlphaKey( spep_2 - 3 + 122, ct_ga, 64 );
setEffAlphaKey( spep_2 - 3 + 124, ct_ga, 0 );

ct_ga2 = entryEffectLife( spep_2 -3  + 130,  10005, 26, 0x100, -1, 0, 166.3, 348 );  --ガッ

setEffMoveKey( spep_2 -3  + 130, ct_ga2, 166.3, 348 , 0 );
setEffMoveKey( spep_2 -3  + 132, ct_ga2, 166.5, 348.1 , 0 );
setEffMoveKey( spep_2 -3  + 134, ct_ga2, 166.4, 348.3 , 0 );
setEffMoveKey( spep_2 -3  + 136, ct_ga2, 166.3, 348.2 , 0 );
setEffMoveKey( spep_2 -3  + 138, ct_ga2, 166.4, 348.2 , 0 );
setEffMoveKey( spep_2 -3  + 140, ct_ga2, 166.4, 348.3 , 0 );
setEffMoveKey( spep_2 -3  + 142, ct_ga2, 166.4, 348.1 , 0 );
setEffMoveKey( spep_2 -3  + 144, ct_ga2, 166.4, 348 , 0 );
setEffMoveKey( spep_2 -3  + 148, ct_ga2, 166.4, 348 , 0 );
setEffMoveKey( spep_2 -3  + 150, ct_ga2, 166.5, 348 , 0 );
setEffMoveKey( spep_2 -3  + 152, ct_ga2, 166.5, 348.1 , 0 );
setEffMoveKey( spep_2 -3  + 156, ct_ga2, 166.5, 348.1 , 0 );

setEffScaleKey( spep_2 -3  + 130, ct_ga2, 0.91, 0.91 );
setEffScaleKey( spep_2 -3  + 132, ct_ga2, 1.95, 1.95 );
setEffScaleKey( spep_2 -3  + 134, ct_ga2, 2.48, 2.48 );
setEffScaleKey( spep_2 -3  + 136, ct_ga2, 2.36, 2.36 );
setEffScaleKey( spep_2 -3  + 138, ct_ga2, 2.24, 2.24 );
setEffScaleKey( spep_2 -3  + 140, ct_ga2, 2.12, 2.12 );
setEffScaleKey( spep_2 -3  + 142, ct_ga2, 2.01, 2.01 );
setEffScaleKey( spep_2 -3  + 144, ct_ga2, 2, 2 );
setEffScaleKey( spep_2 -3  + 146, ct_ga2, 1.99, 1.99 );
setEffScaleKey( spep_2 -3  + 148, ct_ga2, 1.98, 1.98 );
setEffScaleKey( spep_2 -3  + 150, ct_ga2, 1.97, 1.97 );
setEffScaleKey( spep_2 -3  + 152, ct_ga2, 1.96, 1.96 );
setEffScaleKey( spep_2 -3  + 154, ct_ga2, 1.95, 1.95 );
setEffScaleKey( spep_2 -3  + 156, ct_ga2, 1.94, 1.94 );

setEffRotateKey( spep_2 -3  + 130, ct_ga2, 25.3 );
setEffRotateKey( spep_2 -3  + 132, ct_ga2, 11.9 );
setEffRotateKey( spep_2 -3  + 134, ct_ga2, 25.3 );
setEffRotateKey( spep_2 -3  + 136, ct_ga2, 33.9 );
setEffRotateKey( spep_2 -3  + 138, ct_ga2, 25.1 );
setEffRotateKey( spep_2 -3  + 140, ct_ga2, 14.4 );
setEffRotateKey( spep_2 -3  + 142, ct_ga2, 25.3 );
setEffRotateKey( spep_2 -3  + 144, ct_ga2, 25.2 );
setEffRotateKey( spep_2 -3  + 148, ct_ga2, 25.2 );
setEffRotateKey( spep_2 -3  + 150, ct_ga2, 25.3 );
setEffRotateKey( spep_2 -3  + 156, ct_ga2, 25.3 );

setEffAlphaKey( spep_2 -3  + 130, ct_ga2, 255 );
setEffAlphaKey( spep_2 -3  + 144, ct_ga2, 255 );
setEffAlphaKey( spep_2 -3  + 146, ct_ga2, 213 );
setEffAlphaKey( spep_2 -3  + 148, ct_ga2, 170 );
setEffAlphaKey( spep_2 -3  + 150, ct_ga2, 128 );
setEffAlphaKey( spep_2 -3  + 152, ct_ga2, 85 );
setEffAlphaKey( spep_2 -3  + 154, ct_ga2, 42 );
setEffAlphaKey( spep_2 -3  + 156, ct_ga2, 0 );


ct_bago = entryEffectLife( spep_2 - 3 + 164,  10021, 24, 0x100, -1, 0, -21.1, 414 );  --バゴォッ

setEffShake( spep_2 - 3 +164,  ct_bago,  24,  20);
setEffMoveKey( spep_2 - 3 + 164, ct_bago, -21.1, 414 , 0 );
setEffMoveKey( spep_2 - 3 + 166, ct_bago, -21.5, 413 , 0 );
setEffMoveKey( spep_2 - 3 + 168, ct_bago, -21.1, 413.9 , 0 );
setEffMoveKey( spep_2 - 3 + 170, ct_bago, -41.8, 431.3 , 0 );
setEffMoveKey( spep_2 - 3 + 172, ct_bago, -21.1, 413.9 , 0 );
setEffMoveKey( spep_2 - 3 + 174, ct_bago, -40.8, 430.5 , 0 );
setEffMoveKey( spep_2 - 3 + 176, ct_bago, -21.1, 414 , 0 );
setEffMoveKey( spep_2 - 3 + 178, ct_bago, -21.1, 414 , 0 );
setEffMoveKey( spep_2 - 3 + 180, ct_bago, -39, 429.2 , 0 );
setEffMoveKey( spep_2 - 3 + 182, ct_bago, -21.1, 414.1 , 0 );
setEffMoveKey( spep_2 - 3 + 184, ct_bago, -37.3, 427.9 , 0 );
setEffMoveKey( spep_2 - 3 + 186, ct_bago, -21, 414.3 , 0 );
setEffMoveKey( spep_2 - 3 + 188, ct_bago, -21, 414.3 , 0 );

setEffScaleKey( spep_2 - 3 + 164, ct_bago, 1.55, 1.55 );
setEffScaleKey( spep_2 - 3 + 166, ct_bago, 4.28, 4.28 );
setEffScaleKey( spep_2 - 3 + 168, ct_bago, 3.21, 3.21 );
setEffScaleKey( spep_2 - 3 + 170, ct_bago, 3.14, 3.14 );
setEffScaleKey( spep_2 - 3 + 172, ct_bago, 3.07, 3.07 );
setEffScaleKey( spep_2 - 3 + 174, ct_bago, 2.99, 2.99 );
setEffScaleKey( spep_2 - 3 + 176, ct_bago, 2.92, 2.92 );
setEffScaleKey( spep_2 - 3 + 178, ct_bago, 2.85, 2.85 );
setEffScaleKey( spep_2 - 3 + 180, ct_bago, 2.72, 2.72 );
setEffScaleKey( spep_2 - 3 + 182, ct_bago, 2.59, 2.59 );
setEffScaleKey( spep_2 - 3 + 184, ct_bago, 2.47, 2.47 );
setEffScaleKey( spep_2 - 3 + 186, ct_bago, 2.34, 2.34 );
setEffScaleKey( spep_2 - 3 + 188, ct_bago, 2.21, 2.21 );

setEffRotateKey( spep_2 - 3 + 164, ct_bago, -14.4 );
setEffRotateKey( spep_2 - 3 + 188, ct_bago, -14.4 );

setEffAlphaKey( spep_2 - 3 + 164, ct_bago, 255 );
setEffAlphaKey( spep_2 - 3 + 178, ct_bago, 255 );
setEffAlphaKey( spep_2 - 3 + 180, ct_bago, 204 );
setEffAlphaKey( spep_2 - 3 + 182, ct_bago, 153 );
setEffAlphaKey( spep_2 - 3 + 184, ct_bago, 102 );
setEffAlphaKey( spep_2 - 3 + 186, ct_bago, 51 );
setEffAlphaKey( spep_2 - 3 + 188, ct_bago, 0 );


--流線
ryusen = entryEffectLife(  spep_2 -3 + 164,  920,  74,  0x80,  -1, 0,  0,  0);
setEffMoveKey(  spep_2 - 3 + 164,  ryusen,  0,  0,  0);
setEffMoveKey(  spep_2 - 3 + 238,  ryusen,  0,  0,  0);
setEffScaleKey(  spep_2 - 3 +164,  ryusen,  6.5,  0.88);
setEffScaleKey(  spep_2 - 3 +238,  ryusen,  6.5,  0.88);
setEffRotateKey( spep_2 - 3 +164,  ryusen,  90 );
setEffRotateKey( spep_2 - 3 +238,  ryusen,  90);
setEffAlphaKey(  spep_2 - 3 +164,  ryusen,  255);
setEffAlphaKey(  spep_2 - 3 +238,  ryusen,  255);

-- ** エフェクト等
rengeki_f = entryEffectLife( spep_2 + 0, SP_02r, 240, 0x100, -1, 0, 0, 0 );  --格闘　前(ef_002)

setEffMoveKey( spep_2 + 0, rengeki_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 240, rengeki_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, rengeki_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 240, rengeki_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rengeki_f, 0 );
setEffRotateKey( spep_2 + 240, rengeki_f, 0 );
setEffAlphaKey( spep_2 + 0, rengeki_f, 255 );
setEffAlphaKey( spep_2 + 238, rengeki_f, 255 );
setEffAlphaKey( spep_2 + 239, rengeki_f, 0 );
setEffAlphaKey( spep_2 + 240, rengeki_f, 0 );

-- ** エフェクト等
rengeki_b = entryEffectLife( spep_2 + 0, SP_03, 240, 0x80, -1, 0, 0, 0 );  --格闘　奥(ef_003)

setEffMoveKey( spep_2 + 0, rengeki_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 240, rengeki_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, rengeki_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 240, rengeki_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rengeki_b, 0 );
setEffRotateKey( spep_2 + 240, rengeki_b, 0 );
setEffAlphaKey( spep_2 + 0, rengeki_b, 255 );
setEffAlphaKey( spep_2 + 238, rengeki_b, 255 );
setEffAlphaKey( spep_2 + 239, rengeki_b, 0 );
setEffAlphaKey( spep_2 + 240, rengeki_b, 0 );

-- ** 敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 238 - 3, 1, 0 );
changeAnime( spep_2 - 3 + 0, 1, 100 );
changeAnime( spep_2 - 3 + 66, 1, 106 );
changeAnime( spep_2 - 3 + 102, 1, 108 );
changeAnime( spep_2 - 3 + 164, 1, 106 );

setShakeChara( spep_2 -3 + 66,  1,  172,  20);  --揺れ  
setMoveKey( spep_2 + 0, 1, -538.5, -523.1 , 0 );
--setMoveKey( spep_2 - 3 + 2, 1, -437.7, -409.8 , 0 );
setMoveKey( spep_2 - 3 + 4, 1, -336.9, -296.4 , 0 );
setMoveKey( spep_2 - 3 + 6, 1, -236, -183 , 0 );
setMoveKey( spep_2 - 3 + 8, 1, -135.2, -69.6 , 0 );
setMoveKey( spep_2 - 3 + 10, 1, -34.3, 43.8 , 0 );
setMoveKey( spep_2 - 3 + 12, 1, 66.5, 157.3 , 0 );
setMoveKey( spep_2 - 3 + 14, 1, 167.3, 270.8 , 0 );
setMoveKey( spep_2 - 3 + 16, 1, 170.3, 273.5 , 0 );
setMoveKey( spep_2 - 3 + 18, 1, 173.2, 276.3 , 0 );
setMoveKey( spep_2 - 3 + 20, 1, 176.2, 279 , 0 );
setMoveKey( spep_2 - 3 + 22, 1, 179.1, 281.8 , 0 );
setMoveKey( spep_2 - 3 + 24, 1, 182.1, 284.5 , 0 );
setMoveKey( spep_2 - 3 + 26, 1, 185, 287.3 , 0 );
setMoveKey( spep_2 - 3 + 28, 1, 187.9, 290 , 0 );
setMoveKey( spep_2 - 3 + 30, 1, 190.9, 292.8 , 0 );
setMoveKey( spep_2 - 3 + 32, 1, 193.8, 295.5 , 0 );
setMoveKey( spep_2 - 3 + 34, 1, 196.8, 298.3 , 0 );
setMoveKey( spep_2 - 3 + 36, 1, 199.7, 301 , 0 );
setMoveKey( spep_2 - 3 + 38, 1, 202.7, 303.8 , 0 );
setMoveKey( spep_2 - 3 + 40, 1, 205.6, 306.5 , 0 );
setMoveKey( spep_2 - 3 + 42, 1, 208.6, 309.3 , 0 );
setMoveKey( spep_2 - 3 + 44, 1, 211.5, 312 , 0 );
setMoveKey( spep_2 - 3 + 46, 1, 214.5, 314.8 , 0 );
setMoveKey( spep_2 - 3 + 48, 1, 217.4, 317.5 , 0 );
setMoveKey( spep_2 - 3 + 50, 1, 220.4, 320.3 , 0 );
setMoveKey( spep_2 - 3 + 52, 1, 216.3, 312.8 , 0 );
setMoveKey( spep_2 - 3 + 54, 1, 209.4, 300.6 , 0 );
setMoveKey( spep_2 - 3 + 56, 1, 199.6, 283.8 , 0 );
setMoveKey( spep_2 - 3 + 58, 1, 186.8, 262.1 , 0 );
setMoveKey( spep_2 - 3 + 60, 1, 171.1, 235.6 , 0 );
setMoveKey( spep_2 - 3 + 62, 1, 152.5, 204.1 , 0 );
setMoveKey( spep_2 - 3 + 65, 1, 130.8, 167.5 , 0 );
setMoveKey( spep_2 - 3 + 66, 1, 87, 216.6 , 0 );
setMoveKey( spep_2 - 3 + 68, 1, 125.1, 295.5 , 0 );
setMoveKey( spep_2 - 3 + 70, 1, 106.3, 245.1 , 0 );
setMoveKey( spep_2 - 3 + 72, 1, 85.4, 203.8 , 0 );
setMoveKey( spep_2 - 3 + 74, 1, 87, 185.4 , 0 );
setMoveKey( spep_2 - 3 + 76, 1, 85.6, 172.5 , 0 );
setMoveKey( spep_2 - 3 + 78, 1, 90.5, 178.8 , 0 );
setMoveKey( spep_2 - 3 + 80, 1, 85.8, 172.4 , 0 );
setMoveKey( spep_2 - 3 + 82, 1, 93.9, 172.4 , 0 );
setMoveKey( spep_2 - 3 + 84, 1, 92.4, 166 , 0 );
setMoveKey( spep_2 - 3 + 86, 1, 97.2, 166.1 , 0 );
setMoveKey( spep_2 - 3 + 88, 1, 98.8, 162.9 , 0 );
setMoveKey( spep_2 - 3 + 90, 1, 100.3, 159.8 , 0 );
setMoveKey( spep_2 - 3 + 92, 1, 101.8, 156.8 , 0 );
setMoveKey( spep_2 - 3 + 94, 1, 103.3, 153.7 , 0 );
setMoveKey( spep_2 - 3 + 96, 1, 104.7, 150.7 , 0 );
setMoveKey( spep_2 - 3 + 98, 1, 106.1, 147.7 , 0 );
setMoveKey( spep_2 - 3 + 101, 1, 147, 171.6 , 0 );
setMoveKey( spep_2 - 3 + 102, 1, 190.6, 161.8 , 0 );
setMoveKey( spep_2 - 3 + 104, 1, 197.5, 154.2 , 0 );
setMoveKey( spep_2 - 3 + 106, 1, 197.9, 137 , 0 );
setMoveKey( spep_2 - 3 + 108, 1, 204.7, 126.2 , 0 );
setMoveKey( spep_2 - 3 + 110, 1, 198.7, 118.6 , 0 );
setMoveKey( spep_2 - 3 + 112, 1, 199.1, 111 , 0 );
setMoveKey( spep_2 - 3 + 114, 1, 196.3, 100.2 , 0 );
setMoveKey( spep_2 - 3 + 116, 1, 196.2, 100.9 , 0 );
setMoveKey( spep_2 - 3 + 118, 1, 196.1, 98.4 , 0 );
setMoveKey( spep_2 - 3 + 120, 1, 196, 96 , 0 );
setMoveKey( spep_2 - 3 + 122, 1, 195.9, 93.5 , 0 );
setMoveKey( spep_2 - 3 + 124, 1, 195.8, 91.1 , 0 );
setMoveKey( spep_2 - 3 + 126, 1, 195.7, 88.6 , 0 );
setMoveKey( spep_2 - 3 + 128, 1, 195.7, 86.2 , 0 );
setMoveKey( spep_2 - 3 + 130, 1, 196.9, 58.3 , 0 );
setMoveKey( spep_2 - 3 + 132, 1, 203.8, 42 , 0 );
setMoveKey( spep_2 - 3 + 134, 1, 201.1, 16 , 0 );
setMoveKey( spep_2 - 3 + 136, 1, 211.3, -3.6 , 0 );
setMoveKey( spep_2 - 3 + 138, 1, 207.2, -23.1 , 0 );
setMoveKey( spep_2 - 3 + 140, 1, 209.6, -29.8 , 0 );
setMoveKey( spep_2 - 3 + 142, 1, 205.6, -46.1 , 0 );
setMoveKey( spep_2 - 3 + 144, 1, 206.2, -44.8 , 0 );
setMoveKey( spep_2 - 3 + 146, 1, 203.5, -46.6 , 0 );
setMoveKey( spep_2 - 3 + 148, 1, 200.9, -48.5 , 0 );
setMoveKey( spep_2 - 3 + 150, 1, 198.3, -50.3 , 0 );
setMoveKey( spep_2 - 3 + 152, 1, 195.6, -52.1 , 0 );
setMoveKey( spep_2 - 3 + 154, 1, 192.9, -53.8 , 0 );
setMoveKey( spep_2 - 3 + 156, 1, 190.3, -55.6 , 0 );
setMoveKey( spep_2 - 3 + 158, 1, 187.6, -57.3 , 0 );
setMoveKey( spep_2 - 3 + 160, 1, 184.9, -59 , 0 );
setMoveKey( spep_2 - 3 + 163, 1, 182.2, -60.7 , 0 );
setMoveKey( spep_2 - 3 + 164, 1, 177.5, 256 , 0 );
setMoveKey( spep_2 - 3 + 166, 1, 137.7, 265.7 , 0 );
setMoveKey( spep_2 - 3 + 168, 1, 110.9, 223.7 , 0 );
setMoveKey( spep_2 - 3 + 170, 1, 97.7, 185.3 , 0 );
setMoveKey( spep_2 - 3 + 172, 1, 92.9, 185.1 , 0 );
setMoveKey( spep_2 - 3 + 174, 1, 94.5, 197.8 , 0 );
setMoveKey( spep_2 - 3 + 176, 1, 83.3, 200.8 , 0 );
setMoveKey( spep_2 - 3 + 178, 1, 91.3, 210.3 , 0 );
setMoveKey( spep_2 - 3 + 180, 1, 86.6, 207 , 0 );
setMoveKey( spep_2 - 3 + 182, 1, 88.2, 222.8 , 0 );
setMoveKey( spep_2 - 3 + 184, 1, 77, 225.9 , 0 );
setMoveKey( spep_2 - 3 + 186, 1, 85, 235.3 , 0 );
setMoveKey( spep_2 - 3 + 188, 1, 85.2, 461.6 , 0 );
setMoveKey( spep_2 - 3 + 190, 1, 85.5, 687.9 , 0 );
setMoveKey( spep_2 - 3 + 192, 1, 85.6, 914.2 , 0 );
setMoveKey( spep_2 - 3 + 194, 1, -68.7, 1644.8 , 0 );
setMoveKey( spep_2 - 3 + 196, 1, -67.7, 1645.9 , 0 );
setMoveKey( spep_2 - 3 + 198, 1, -66.6, 1646.9 , 0 );
setMoveKey( spep_2 - 3 + 200, 1, -65.6, 1625.5 , 0 );
setMoveKey( spep_2 - 3 + 202, 1, -49.5, 1212.1 , 0 );
setMoveKey( spep_2 - 3 + 204, 1, -33.4, 798.7 , 0 );
setMoveKey( spep_2 - 3 + 206, 1, -17.2, 385.3 , 0 );
setMoveKey( spep_2 - 3 + 208, 1, -1, -28 , 0 );
setMoveKey( spep_2 - 3 + 210, 1, -0.2, -16.8 , 0 );
setMoveKey( spep_2 - 3 + 212, 1, 0.6, -4.9 , 0 );
setMoveKey( spep_2 - 3 + 214, 1, 1.3, 7.7 , 0 );
setMoveKey( spep_2 - 3 + 216, 1, 2.1, 21 , 0 );
setMoveKey( spep_2 - 3 + 218, 1, 2.8, 35 , 0 );
setMoveKey( spep_2 - 3 + 220, 1, 3.5, 49.7 , 0 );
setMoveKey( spep_2 - 3 + 222, 1, 4.2, 65.2 , 0 );
setMoveKey( spep_2 - 3 + 224, 1, 4.9, 81.3 , 0 );
setMoveKey( spep_2 - 3 + 226, 1, 5.5, 98.1 , 0 );
setMoveKey( spep_2 - 3 + 228, 1, 6.1, 115.6 , 0 );
setMoveKey( spep_2 - 3 + 230, 1, 6.7, 133.9 , 0 );
setMoveKey( spep_2 - 3 + 232, 1, 7.3, 152.8 , 0 );
setMoveKey( spep_2 - 3 + 234, 1, 7.9, 172.4 , 0 );
setMoveKey( spep_2 - 3 + 236, 1, 8.4, 192.8 , 0 );
setMoveKey( spep_2 - 3 + 238, 1, 8.9, 213.8 , 0 );

setScaleKey( spep_2 + 0, 1, 3.83, 3.83 );
--setScaleKey( spep_2 - 3 + 2, 1, 3.38, 3.38 );
setScaleKey( spep_2 - 3 + 4, 1, 2.94, 2.94 );
setScaleKey( spep_2 - 3 + 6, 1, 2.5, 2.5 );
setScaleKey( spep_2 - 3 + 8, 1, 2.06, 2.06 );
setScaleKey( spep_2 - 3 + 10, 1, 1.62, 1.62 );
setScaleKey( spep_2 - 3 + 12, 1, 1.18, 1.18 );
setScaleKey( spep_2 - 3 + 14, 1, 0.74, 0.74 );
setScaleKey( spep_2 - 3 + 16, 1, 0.72, 0.72 );
setScaleKey( spep_2 - 3 + 18, 1, 0.7, 0.7 );
setScaleKey( spep_2 - 3 + 20, 1, 0.68, 0.68 );
setScaleKey( spep_2 - 3 + 22, 1, 0.66, 0.66 );
setScaleKey( spep_2 - 3 + 24, 1, 0.65, 0.65 );
setScaleKey( spep_2 - 3 + 26, 1, 0.63, 0.63 );
setScaleKey( spep_2 - 3 + 28, 1, 0.61, 0.61 );
setScaleKey( spep_2 - 3 + 30, 1, 0.59, 0.59 );
setScaleKey( spep_2 - 3 + 32, 1, 0.57, 0.57 );
setScaleKey( spep_2 - 3 + 34, 1, 0.55, 0.55 );
setScaleKey( spep_2 - 3 + 36, 1, 0.53, 0.53 );
setScaleKey( spep_2 - 3 + 38, 1, 0.51, 0.51 );
setScaleKey( spep_2 - 3 + 40, 1, 0.49, 0.49 );
setScaleKey( spep_2 - 3 + 42, 1, 0.48, 0.48 );
setScaleKey( spep_2 - 3 + 44, 1, 0.46, 0.46 );
setScaleKey( spep_2 - 3 + 46, 1, 0.44, 0.44 );
setScaleKey( spep_2 - 3 + 48, 1, 0.42, 0.42 );
setScaleKey( spep_2 - 3 + 50, 1, 0.4, 0.4 );
setScaleKey( spep_2 - 3 + 52, 1, 0.46, 0.46 );
setScaleKey( spep_2 - 3 + 54, 1, 0.54, 0.54 );
setScaleKey( spep_2 - 3 + 56, 1, 0.66, 0.66 );
setScaleKey( spep_2 - 3 + 58, 1, 0.82, 0.82 );
setScaleKey( spep_2 - 3 + 60, 1, 1.01, 1.01 );
setScaleKey( spep_2 - 3 + 62, 1, 1.23, 1.23 );
setScaleKey( spep_2 - 3 + 65, 1, 1.49, 1.49 );
setScaleKey( spep_2 - 3 + 66, 1, 1.68, 1.68 );
setScaleKey( spep_2 - 3 + 68, 1, 2.82, 2.82 );
setScaleKey( spep_2 - 3 + 70, 1, 2.25, 2.25 );
setScaleKey( spep_2 - 3 + 72, 1, 1.87, 1.87 );
setScaleKey( spep_2 - 3 + 74, 1, 1.67, 1.67 );
setScaleKey( spep_2 - 3 + 76, 1, 1.66, 1.66 );
setScaleKey( spep_2 - 3 + 78, 1, 1.64, 1.64 );
setScaleKey( spep_2 - 3 + 80, 1, 1.63, 1.63 );
setScaleKey( spep_2 - 3 + 82, 1, 1.62, 1.62 );
setScaleKey( spep_2 - 3 + 84, 1, 1.61, 1.61 );
setScaleKey( spep_2 - 3 + 86, 1, 1.6, 1.6 );
setScaleKey( spep_2 - 3 + 88, 1, 1.59, 1.59 );
setScaleKey( spep_2 - 3 + 90, 1, 1.58, 1.58 );
setScaleKey( spep_2 - 3 + 92, 1, 1.56, 1.56 );
setScaleKey( spep_2 - 3 + 94, 1, 1.55, 1.55 );
setScaleKey( spep_2 - 3 + 96, 1, 1.54, 1.54 );
setScaleKey( spep_2 - 3 + 98, 1, 1.53, 1.53 );
setScaleKey( spep_2 - 3 + 101, 1, 1.53, 1.53 );
setScaleKey( spep_2 - 3 + 102, 1, 1.4, 1.4 );
setScaleKey( spep_2 - 3 + 142, 1, 1.4, 1.4 );
setScaleKey( spep_2 - 3 + 144, 1, 1.39, 1.39 );
setScaleKey( spep_2 - 3 + 146, 1, 1.38, 1.38 );
setScaleKey( spep_2 - 3 + 148, 1, 1.37, 1.37 );
setScaleKey( spep_2 - 3 + 150, 1, 1.36, 1.36 );
setScaleKey( spep_2 - 3 + 152, 1, 1.35, 1.35 );
setScaleKey( spep_2 - 3 + 154, 1, 1.34, 1.34 );
setScaleKey( spep_2 - 3 + 156, 1, 1.34, 1.34 );
setScaleKey( spep_2 - 3 + 158, 1, 1.33, 1.33 );
setScaleKey( spep_2 - 3 + 160, 1, 1.32, 1.32 );
setScaleKey( spep_2 - 3 + 163, 1, 1.31, 1.31 );
setScaleKey( spep_2 - 3 + 164, 1, 2.34, 2.34 );
setScaleKey( spep_2 - 3 + 166, 1, 2.02, 2.02 );
setScaleKey( spep_2 - 3 + 168, 1, 1.71, 1.71 );
setScaleKey( spep_2 - 3 + 170, 1, 1.39, 1.39 );
setScaleKey( spep_2 - 3 + 200, 1, 1.39, 1.39 );
setScaleKey( spep_2 - 3 + 202, 1, 1.41, 1.41 );
setScaleKey( spep_2 - 3 + 204, 1, 1.44, 1.44 );
setScaleKey( spep_2 - 3 + 206, 1, 1.46, 1.46 );
setScaleKey( spep_2 - 3 + 208, 1, 1.48, 1.48 );
setScaleKey( spep_2 - 3 + 238, 1, 1.48, 1.48 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 - 3 + 65, 1, 0 );
setRotateKey( spep_2 - 3 + 66, 1, -31.7 );
setRotateKey( spep_2 - 3 + 101, 1, -31.7 );
setRotateKey( spep_2 - 3 + 102, 1, 35.5 );
setRotateKey( spep_2 - 3 + 163, 1, 35.5 );
setRotateKey( spep_2 - 3 + 164, 1, -60.9 );
setRotateKey( spep_2 - 3 + 166, 1, -61.2 );
setRotateKey( spep_2 - 3 + 168, 1, -61.1 );
setRotateKey( spep_2 - 3 + 170, 1, -61.1 );
setRotateKey( spep_2 - 3 + 172, 1, -61 );
setRotateKey( spep_2 - 3 + 174, 1, -61 );
setRotateKey( spep_2 - 3 + 176, 1, -60.9 );
setRotateKey( spep_2 - 3 + 178, 1, -60.8 );
setRotateKey( spep_2 - 3 + 180, 1, -60.8 );
setRotateKey( spep_2 - 3 + 182, 1, -60.7 );
setRotateKey( spep_2 - 3 + 184, 1, -60.7 );
setRotateKey( spep_2 - 3 + 186, 1, -60.6 );
setRotateKey( spep_2 - 3 + 188, 1, -51.6 );
setRotateKey( spep_2 - 3 + 190, 1, -42.6 );
setRotateKey( spep_2 - 3 + 192, 1, -33.6 );
setRotateKey( spep_2 - 3 + 194, 1, -37.4 );
setRotateKey( spep_2 - 3 + 196, 1, -36.8 );
setRotateKey( spep_2 - 3 + 198, 1, -36.2 );
setRotateKey( spep_2 - 3 + 200, 1, -35.6 );
setRotateKey( spep_2 - 3 + 202, 1, -35 );
setRotateKey( spep_2 - 3 + 204, 1, -34.4 );
setRotateKey( spep_2 - 3 + 206, 1, -33.7 );
setRotateKey( spep_2 - 3 + 208, 1, -33.1 );
setRotateKey( spep_2 - 3 + 210, 1, -32.5 );
setRotateKey( spep_2 - 3 + 212, 1, -31.9 );
setRotateKey( spep_2 - 3 + 214, 1, -31.3 );
setRotateKey( spep_2 - 3 + 216, 1, -30.7 );
setRotateKey( spep_2 - 3 + 218, 1, -30.1 );
setRotateKey( spep_2 - 3 + 220, 1, -29.5 );
setRotateKey( spep_2 - 3 + 222, 1, -28.9 );
setRotateKey( spep_2 - 3 + 224, 1, -28.3 );
setRotateKey( spep_2 - 3 + 226, 1, -27.7 );
setRotateKey( spep_2 - 3 + 228, 1, -27 );
setRotateKey( spep_2 - 3 + 230, 1, -26.4 );
setRotateKey( spep_2 - 3 + 232, 1, -25.8 );
setRotateKey( spep_2 - 3 + 234, 1, -25.2 );
setRotateKey( spep_2 - 3 + 236, 1, -24.6 );
setRotateKey( spep_2 - 3 + 238, 1, -24 );


-- ** 音
playSe( spep_2 + 0,  8);  --飛ぶ
playSe (spep_2 - 3 + 68,  1011); --バキ
playSe( spep_2 - 3 + 102,  1009);  --ガッ
playSe( spep_2 - 3 + 130,  1010);  --ガッ
playSe( spep_2 - 3 + 164,  1011);  --バゴォ
playSe( spep_2 +180,  8);  --敵が上昇

-- ** 白フェード
entryFade( spep_2 - 3 + 68, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade
entryFade( spep_2 - 3 + 164, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade
entryFade( spep_2 + 234, 2, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 238, 0, 0, 0, 0, 150 );  --黒　背景


--次の準備
spep_3 = spep_2 + 238;

------------------------------------------------------
--構え(150F)
------------------------------------------------------

-- ** エフェクト等
kamehame = entryEffectLife( spep_3 + 0, SP_04, 150, 0x100, -1, 0, 0, 0 );  --溜め(ef_004)

setEffMoveKey( spep_3 + 0, kamehame, 0, 0 , 0 );
setEffMoveKey( spep_3 + 150, kamehame, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kamehame, -1.0, 1.0 );
setEffScaleKey( spep_3 + 150, kamehame, -1.0, 1.0 );
setEffAlphaKey( spep_3 + 0, kamehame, 255 );
setEffAlphaKey( spep_3 + 149, kamehame, 255 );
setEffAlphaKey( spep_3 + 150, kamehame, 0 );
setEffRotateKey( spep_3 + 0, kamehame, 0 );
setEffRotateKey( spep_3 + 150, kamehame, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_3 + 20, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_3 + 20, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_3 + 32,  190006, 72, 0x100, -1, 0, -8.5, 515.5 );  --ゴゴゴ
setEffShake( spep_3 + 32, ctgogo, 72, 10 );

setEffMoveKey( spep_3 + 32, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_3 + 104, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_3 + 32, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_3 + 96, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_3 + 98, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_3 + 100, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_3 + 102, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_3 + 104, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_3 + 32, ctgogo, 0 );
setEffRotateKey( spep_3 + 104, ctgogo, 0 );

setEffAlphaKey( spep_3 + 32, ctgogo, 255 );
setEffAlphaKey( spep_3 + 104, ctgogo, 255 );

-- ** 集中線
shuchusen_c = entryEffectLife( spep_3 + 0,  906, 148, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchusen_c, 0, 0 , 0 );
setEffMoveKey( spep_3 + 148, shuchusen_c, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen_c, 1.1, 1.25 );
setEffScaleKey( spep_3 + 148, shuchusen_c, 1.1, 1.25 );

setEffRotateKey( spep_3 + 0, shuchusen_c, 180 );
setEffRotateKey( spep_3 + 148, shuchusen_c, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen_c, 255 );
setEffAlphaKey( spep_3 + 148, shuchusen_c, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 150, 0, 0, 0, 0, 150 );  --黒　背景
entryFadeBg( spep_3 + 10, 40, 110, 0, 0, 0, 0, 220 );  --黒　背景

--白フェード
entryFade( spep_3 + 144,  4,  2,  2,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --whitefade

-- ** 音 ** --
playSe(  spep_3,  1048);
playSe(  spep_3+10,  1048);
playSe(  spep_3+20,  1048);
playSe(  spep_3+30,  1048);
playSe( spep_3 + 32, SE_04 );  --ゴゴゴ
playSe( spep_3+40, 1048);	
playSe( spep_3+50, 1048);	
playSe( spep_3+60, 1048);	
playSe( spep_3+70, 1048);	
playSe( spep_3+80, 1048);	
playSe( spep_3+90, 1048);	
playSe( spep_3+100, 1048);	
playSe( spep_3+110, 1048);	
playSe( spep_3+120, 1048);	
playSe( spep_3+130, 1048);	
playSe( spep_3+140, 1048);

--次の準備
spep_4 = spep_3 + 150;

------------------------------------------------------
--  last(250F)
------------------------------------------------------
--  ** 集中線

shuchusen_d = entryEffectLife( spep_4 + 40,  906, 30, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 40, shuchusen_d, 0, 0 , 0 );
setEffMoveKey( spep_4 + 70, shuchusen_d, 0, 0 , 0 );

setEffScaleKey( spep_4 + 40, shuchusen_d, 1.2, 1.38 );
setEffScaleKey( spep_4 + 70, shuchusen_d, 1.2, 1.38 );

setEffRotateKey( spep_4 + 40, shuchusen_d, 0 );
setEffRotateKey( spep_4 + 70, shuchusen_d, 0 );

setEffAlphaKey( spep_4 + 40, shuchusen_d, 255 );
setEffAlphaKey( spep_4 + 70, shuchusen_d, 255 );

-- ** エフェクト等
last = entryEffect( spep_4 + 0, SP_05r, 0x100, -1, 0, 0, 0 );  --発射(ef_005)

setEffMoveKey( spep_4 + 0, last, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80, last, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, last, 1.0, 1.0 );
setEffScaleKey( spep_4 + 80, last, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, last, 0 );
setEffRotateKey( spep_4 + 80, last, 0 );
setEffAlphaKey( spep_4 + 0, last, 255 );
setEffAlphaKey( spep_4 + 80, last, 255 );

-- ** 流線
ryusen1 = entryEffectLife(  spep_4 + 0,  920,  46,  0x80,  -1, 0,  0,  0);
setEffMoveKey(  spep_4 + 0,  ryusen1,  0,  0,  0);
setEffMoveKey(  spep_4 +46,  ryusen1,  0,  0,  0);
setEffScaleKey(  spep_4 +0,  ryusen1,  6.5,  0.88);
setEffScaleKey(  spep_4  +46,  ryusen1,  6.5,  0.88);
setEffRotateKey( spep_4  +0,  ryusen1,  90 );
setEffRotateKey( spep_4  +46,  ryusen1,  90);
setEffAlphaKey(  spep_4  +0,  ryusen1,  255);
setEffAlphaKey(  spep_4  +40,  ryusen1,  255);
setEffAlphaKey(  spep_4  +46,  ryusen1,  0);

-- ** 書き文字エントリー
ct_bago1 = entryEffectLife( spep_4 + 40 -3,  10021, 24, 0x100, -1, 0, -21.1, 414 );  --バゴォッ

setEffShake( spep_4 - 3 +40,  ct_bago1,  24,  20);
setEffMoveKey( spep_4 - 3 + 40, ct_bago1, -21.1, 414 , 0 );
setEffMoveKey( spep_4 - 3 + 42, ct_bago1, -21.5, 413 , 0 );
setEffMoveKey( spep_4 - 3 + 44, ct_bago1, -21.1, 413.9 , 0 );
setEffMoveKey( spep_4 - 3 + 46, ct_bago1, -41.8, 431.3 , 0 );
setEffMoveKey( spep_4 - 3 + 48, ct_bago1, -21.1, 413.9 , 0 );
setEffMoveKey( spep_4 - 3 + 50, ct_bago1, -40.8, 430.5 , 0 );
setEffMoveKey( spep_4 - 3 + 52, ct_bago1, -21.1, 414 , 0 );
setEffMoveKey( spep_4 - 3 + 54, ct_bago1, -21.1, 414 , 0 );
setEffMoveKey( spep_4 - 3 + 56, ct_bago1, -39, 429.2 , 0 );
setEffMoveKey( spep_4 - 3 + 58, ct_bago1, -21.1, 414.1 , 0 );
setEffMoveKey( spep_4 - 3 + 60, ct_bago1, -37.3, 427.9 , 0 );
setEffMoveKey( spep_4 - 3 + 62, ct_bago1, -21, 414.3 , 0 );
setEffMoveKey( spep_4 - 3 + 64, ct_bago1, -21, 414.3 , 0 );

setEffScaleKey( spep_4 - 3 + 40, ct_bago1, 1.55, 1.55 );
setEffScaleKey( spep_4 - 3 + 42, ct_bago1, 4.28, 4.28 );
setEffScaleKey( spep_4 - 3 + 44, ct_bago1, 3.21, 3.21 );
setEffScaleKey( spep_4 - 3 + 46, ct_bago1, 3.14, 3.14 );
setEffScaleKey( spep_4 - 3 + 48, ct_bago1, 3.07, 3.07 );
setEffScaleKey( spep_4 - 3 + 50, ct_bago1, 2.99, 2.99 );
setEffScaleKey( spep_4 - 3 + 52, ct_bago1, 2.92, 2.92 );
setEffScaleKey( spep_4 - 3 + 54, ct_bago1, 2.85, 2.85 );
setEffScaleKey( spep_4 - 3 + 56, ct_bago1, 2.72, 2.72 );
setEffScaleKey( spep_4 - 3 + 58, ct_bago1, 2.59, 2.59 );
setEffScaleKey( spep_4 - 3 + 60, ct_bago1, 2.47, 2.47 );
setEffScaleKey( spep_4 - 3 + 62, ct_bago1, 2.34, 2.34 );
setEffScaleKey( spep_4 - 3 + 64, ct_bago1, 2.21, 2.21 );

setEffRotateKey( spep_4 - 3 + 40, ct_bago1, -14.4 );
setEffRotateKey( spep_4 - 3 + 64, ct_bago1, -14.4 );

setEffAlphaKey( spep_4 - 3 + 40, ct_bago1, 255 );
setEffAlphaKey( spep_4 - 3 + 54, ct_bago1, 255 );
setEffAlphaKey( spep_4 - 3 + 56, ct_bago1, 204 );
setEffAlphaKey( spep_4 - 3 + 58, ct_bago1, 153 );
setEffAlphaKey( spep_4 - 3 + 60, ct_bago1, 102 );
setEffAlphaKey( spep_4 - 3 + 62, ct_bago1, 51 );
setEffAlphaKey( spep_4 - 3 + 64, ct_bago1, 0 );

--  ** 敵の動き
setDisp( spep_4 + 0, 1, 1);
setDisp( spep_4 + 78 - 3, 1, 0);  --消す
changeAnime( spep_4 + 0,  1,  6);
changeAnime( spep_4 + 40 -3,  1,  8);

setMoveKey( spep_4 + 0, 1, 1096.4, 2919.6 , 0 );
--setMoveKey( spep_4 - 3 + 2, 1, 956.7, 2644.9 , 0 );
setMoveKey( spep_4 - 3 + 4, 1, 817.1, 2361.3 , 0 );
setMoveKey( spep_4 - 3 + 6, 1, 677.4, 2071.9 , 0 );
setMoveKey( spep_4 - 3 + 8, 1, 537.7, 1779.4 , 0 );
setMoveKey( spep_4 - 3 + 10, 1, 398.1, 1487 , 0 );
setMoveKey( spep_4 - 3 + 12, 1, 258.4, 1197.4 , 0 );
setMoveKey( spep_4 - 3 + 14, 1, 247.7, 1140.1 , 0 );
setMoveKey( spep_4 - 3 + 16, 1, 237, 1078 , 0 );
setMoveKey( spep_4 - 3 + 18, 1, 226.2, 1011.4 , 0 );
setMoveKey( spep_4 - 3 + 20, 1, 215.5, 940.4 , 0 );
setMoveKey( spep_4 - 3 + 22, 1, 204.7, 865.3 , 0 );
setMoveKey( spep_4 - 3 + 24, 1, 194, 786.4 , 0 );
setMoveKey( spep_4 - 3 + 26, 1, 183.2, 703.8 , 0 );
setMoveKey( spep_4 - 3 + 28, 1, 172.5, 617.7 , 0 );
setMoveKey( spep_4 - 3 + 30, 1, 161.7, 528.5 , 0 );
setMoveKey( spep_4 - 3 + 32, 1, 151, 436.3 , 0 );
setMoveKey( spep_4 - 3 + 34, 1, 140.2, 341.3 , 0 );
setMoveKey( spep_4 - 3 + 36, 1, 129.5, 243.8 , 0 );
setMoveKey( spep_4 - 3 + 39, 1, 118.7, 144.1 , 0 );
setMoveKey( spep_4 - 3 + 40, 1, 223.1, 245.5 , 0 );
setMoveKey( spep_4 - 3 + 42, 1, 182.3, 207.2 , 0 );
setMoveKey( spep_4 - 3 + 44, 1, 123.7, 148.4 , 0 );
setMoveKey( spep_4 - 3 + 46, 1, 137.3, 152.3 , 0 );
setMoveKey( spep_4 - 3 + 48, 1, 130.9, 152.2 , 0 );
setMoveKey( spep_4 - 3 + 50, 1, 140.4, 152 , 0 );
setMoveKey( spep_4 - 3 + 52, 1, 141.9, 143.9 , 0 );
setMoveKey( spep_4 - 3 + 54, 1, 143.4, 151.8 , 0 );
setMoveKey( spep_4 - 3 + 56, 1, 140.8, 147.6 , 0 );
setMoveKey( spep_4 - 3 + 58, 1, 146.2, 151.5 , 0 );
setMoveKey( spep_4 - 3 + 60, 1, 139.6, 147.3 , 0 );
setMoveKey( spep_4 - 3 + 62, 1, 149, 151.1 , 0 );
setMoveKey( spep_4 - 3 + 64, 1, 146.3, 143 , 0 );
setMoveKey( spep_4 - 3 + 66, 1, 310.9, 259.8 , 0 );
setMoveKey( spep_4 - 3 + 68, 1, 440.5, 349.1 , 0 );
setMoveKey( spep_4 - 3 + 70, 1, 563.7, 431.1 , 0 );
setMoveKey( spep_4 - 3 + 72, 1, 652.6, 486 , 0 );
setMoveKey( spep_4 - 3 + 74, 1, 727.8, 542.1 , 0 );
setMoveKey( spep_4 - 3 + 76, 1, 777.7, 575.8 , 0 );
setMoveKey( spep_4 - 3 + 78, 1, 804.6, 595.1 , 0 );

setScaleKey( spep_4 + 0, 1, 3.83, 3.83 );
--setScaleKey( spep_4 - 3 + 2, 1, 3.51, 3.51 );
setScaleKey( spep_4 - 3 + 4, 1, 3.19, 3.19 );
setScaleKey( spep_4 - 3 + 6, 1, 2.88, 2.88 );
setScaleKey( spep_4 - 3 + 8, 1, 2.56, 2.56 );
setScaleKey( spep_4 - 3 + 10, 1, 2.24, 2.24 );
setScaleKey( spep_4 - 3 + 12, 1, 1.92, 1.92 );
setScaleKey( spep_4 - 3 + 14, 1, 1.9, 1.9 );
setScaleKey( spep_4 - 3 + 16, 1, 1.87, 1.87 );
setScaleKey( spep_4 - 3 + 18, 1, 1.85, 1.85 );
setScaleKey( spep_4 - 3 + 20, 1, 1.82, 1.82 );
setScaleKey( spep_4 - 3 + 22, 1, 1.8, 1.8 );
setScaleKey( spep_4 - 3 + 24, 1, 1.77, 1.77 );
setScaleKey( spep_4 - 3 + 26, 1, 1.75, 1.75 );
setScaleKey( spep_4 - 3 + 28, 1, 1.73, 1.73 );
setScaleKey( spep_4 - 3 + 30, 1, 1.7, 1.7 );
setScaleKey( spep_4 - 3 + 32, 1, 1.68, 1.68 );
setScaleKey( spep_4 - 3 + 34, 1, 1.65, 1.65 );
setScaleKey( spep_4 - 3 + 36, 1, 1.63, 1.63 );
setScaleKey( spep_4 - 3 + 39, 1, 1.6, 1.6 );
setScaleKey( spep_4 - 3 + 40, 1, 2.89, 2.89 );
setScaleKey( spep_4 - 3 + 42, 1, 2.26, 2.26 );
setScaleKey( spep_4 - 3 + 44, 1, 1.65, 1.65 );
setScaleKey( spep_4 - 3 + 46, 1, 1.63, 1.63 );
setScaleKey( spep_4 - 3 + 48, 1, 1.61, 1.61 );
setScaleKey( spep_4 - 3 + 50, 1, 1.59, 1.59 );
setScaleKey( spep_4 - 3 + 52, 1, 1.57, 1.57 );
setScaleKey( spep_4 - 3 + 54, 1, 1.55, 1.55 );
setScaleKey( spep_4 - 3 + 56, 1, 1.53, 1.53 );
setScaleKey( spep_4 - 3 + 58, 1, 1.51, 1.51 );
setScaleKey( spep_4 - 3 + 60, 1, 1.5, 1.5 );
setScaleKey( spep_4 - 3 + 62, 1, 1.48, 1.48 );
setScaleKey( spep_4 - 3 + 64, 1, 1.46, 1.46 );
setScaleKey( spep_4 - 3 + 66, 1, 1.28, 1.28 );
setScaleKey( spep_4 - 3 + 68, 1, 1.12, 1.12 );
setScaleKey( spep_4 - 3 + 70, 1, 0.99, 0.99 );
setScaleKey( spep_4 - 3 + 72, 1, 0.88, 0.88 );
setScaleKey( spep_4 - 3 + 74, 1, 0.79, 0.79 );
setScaleKey( spep_4 - 3 + 76, 1, 0.73, 0.73 );
setScaleKey( spep_4 - 3 + 78, 1, 0.69, 0.69 );

setRotateKey( spep_4 + 0, 1, -124.2 );
setRotateKey( spep_4 - 3 + 39, 1, -124.2 );
setRotateKey( spep_4 - 3 + 40, 1, 154.8 );
setRotateKey( spep_4 - 3 + 78, 1, 154.8 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 80, 0, 0, 0, 0, 220 );  --黒　背景

-- ** 音 ** 
--SE = playSe( spep_4,  1050);  --くるくる
--stopSe(spep_4 +38 -3,  SE,  0);
playSe( spep_4 +40 -3, 1060);  --突く
--playSe( spep_4 + 40 , 1022 );  --発射

-- ** 白フェード
entryFade( spep_4 + 74,  4,  6,  2,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --whitefade

-- ** 次の準備
spep_5 = spep_4 +80;

-------------------------------------------------------
--ガッ
-------------------------------------------------------

--敵の動き--
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_5 + 12, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 2, 1, 105 );
setRotateKey( spep_5 + 4, 1, 240 );
setRotateKey( spep_5 + 6, 1, 405 );
setRotateKey( spep_5 + 8, 1, 600 );
setRotateKey( spep_5 + 10, 1, 825 );
setRotateKey( spep_5 + 12, 1, 1080 );

--爆発エフェクト
entryEffect( spep_5, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5, SE_10);

setDamage( spep_5 +16, 1, 0);  -- ダメージ振動等
setShake(spep_5+8,6,15);
setShake(spep_5+14,15,10);

--書き文字--
ctGa = entryEffectLife( spep_5 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_5 + 14, ctGa, 30, 10);

setEffMoveKey( spep_5 + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 30, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctGa, 2, 2 );
setEffScaleKey( spep_5+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_5+17, cGa, 2.6, 2.6);
setEffScaleKey( spep_5+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_5+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_5+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_5+112, ctGa, 3.8, 3.8);

setEffRotateKey( spep_5 + 14, ctGa, -40 );
setEffRotateKey( spep_5 + 16, ctGa, -31 );
setEffRotateKey( spep_5 + 18, ctGa, -40 );
setEffRotateKey( spep_5 + 20, ctGa, -31 );
setEffRotateKey( spep_5 + 22, ctGa, -40 );
setEffRotateKey( spep_5 + 24, ctGa, -31);
setEffRotateKey( spep_5 + 26, ctGa, -40 );
setEffRotateKey( spep_5 + 28, ctGa, -31);
setEffRotateKey( spep_5 + 30, ctGa, -40 );

setEffAlphaKey( spep_5 + 14, ctGa, 255 );

--集中線（白）
shuchusen = entryEffectLife( spep_5+2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_5+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--ひび割れ
hibi = entryEffect( spep_5+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

playSe(  spep_5 + 12,  SE_11);

-- ダメージ表示
dealDamage(spep_5+16);
entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_5+110);
end
