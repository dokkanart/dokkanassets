--超サイヤ人孫悟飯(未来)_爆裂乱舞

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
SP_01 = 154174; --登場
SP_02 = 154175; --瞬間移動→蹴り　前
SP_03 = 154177; --瞬間移動→蹴り　後
SP_04 = 154178; --気功波を投げる
SP_05 = 154179; --気功波命中　後
SP_05a = 154199; --気功波命中　前
SP_06 = 154180; --瞬間移動→肘おろし　前
SP_07 = 154181; --瞬間移動→肘おろし　後
SP_08 = 154182; --敵を掴む　前
SP_09 = 154183; --敵を掴む　後
SP_10 = 154184; --ビルの上に叩き落とす
SP_11 = 154185; --後方宙返り
SP_12 = 154186; --着地後に気功波
SP_13 = 154187; --気功波撃ちつつアップ
SP_14 = 154188; --目を見開いて気功波を押し付ける
SP_15 = 154189; --ビルに向かう気功波
SP_16 = 154190; --爆発

--敵側
SP_02x = 154176; --瞬間移動→蹴り　前

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
-- 登場(86F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
cutin1_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_0 + 0, cutin1_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 86, cutin1_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, cutin1_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 86, cutin1_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, cutin1_f, 0 );
setEffRotateKey( spep_0 + 86, cutin1_f, 0 );
setEffAlphaKey( spep_0 + 0, cutin1_f, 255 );
setEffAlphaKey( spep_0 + 86, cutin1_f, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 86, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 30 -3, 0,  2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
playSe( spep_0 + 32 -3, 50 );  --気溜め

-- ** 次の準備 ** --
spep_1 = spep_0 + 86;

------------------------------------------------------
-- 瞬間移動→蹴り(64F)
------------------------------------------------------

-- ** エフェクト等 ** --
kick_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --瞬間移動→蹴り　前(ef_002)
setEffMoveKey( spep_1 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 64, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 64, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_f, 0 );
setEffRotateKey( spep_1 + 64, kick_f, 0 );
setEffAlphaKey( spep_1 + 0, kick_f, 255 );
setEffAlphaKey( spep_1 + 64, kick_f, 255 );

kick_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --瞬間移動→蹴り　後(ef_003)
setEffMoveKey( spep_1 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 64, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 64, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_b, 0 );
setEffRotateKey( spep_1 + 64, kick_b, 0 );
setEffAlphaKey( spep_1 + 0, kick_b, 255 );
setEffAlphaKey( spep_1 + 64, kick_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 101 );

setMoveKey( spep_1 + 0, 1, -63.9, 43.9 , 0 );
setMoveKey( spep_1 -3 + 4, 1, -61.8, 43.9 , 0 );
setMoveKey( spep_1 -3 + 6, 1, -60.8, 43.9 , 0 );
setMoveKey( spep_1 -3 + 8, 1, -59.7, 43.9 , 0 );
setMoveKey( spep_1 -3 + 10, 1, -58.6, 43.9 , 0 );
setMoveKey( spep_1 -3 + 12, 1, -57.6, 43.9 , 0 );
setMoveKey( spep_1 -3 + 14, 1, -56.5, 43.9 , 0 );
setMoveKey( spep_1 -3 + 16, 1, -55.5, 43.9 , 0 );

setScaleKey( spep_1 + 0, 1, 1.88, 1.88 );
setScaleKey( spep_1 -3 + 4, 1, 1.87, 1.87 );
setScaleKey( spep_1 -3 + 6, 1, 1.87, 1.87 );
setScaleKey( spep_1 -3 + 8, 1, 1.86, 1.86 );
setScaleKey( spep_1 -3 + 10, 1, 1.86, 1.86 );
setScaleKey( spep_1 -3 + 12, 1, 1.85, 1.85 );
setScaleKey( spep_1 -3 + 14, 1, 1.85, 1.85 );
setScaleKey( spep_1 -3 + 16, 1, 1.84, 1.84 );

setRotateKey( spep_1 + 0, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 64, 0, 0, 0, 0, 255 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 14; --エンドフェイズのフレーム数を置き換える

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

-- ** 敵キャラクター ** --
setDisp( spep_1 + 64, 1, 0 );
changeAnime( spep_1 -3 + 39, 1, 100 );
changeAnime( spep_1 -3 + 41, 1, 106 );
changeAnime( spep_1 -3 + 42, 1, 105 );

setMoveKey( spep_1 -3 + 18, 1, -54.4, 43.9 , 0 );
setMoveKey( spep_1 -3 + 20, 1, -53.4, 43.9 , 0 );
setMoveKey( spep_1 -3 + 22, 1, -52.3, 43.9 , 0 );
setMoveKey( spep_1 -3 + 24, 1, -51.3, 43.9 , 0 );
setMoveKey( spep_1 -3 + 26, 1, -50.2, 43.9 , 0 );
setMoveKey( spep_1 -3 + 28, 1, -49.2, 43.9 , 0 );
setMoveKey( spep_1 -3 + 30, 1, -48.1, 43.9 , 0 );
setMoveKey( spep_1 -3 + 32, 1, -47.1, 43.9 , 0 );
setMoveKey( spep_1 -3 + 34, 1, -46, 43.9 , 0 );
setMoveKey( spep_1 -3 + 37, 1, -45, 43.9 , 0 );
setMoveKey( spep_1 -3 + 39, 1, -43.9, 43.9 , 0 );
setMoveKey( spep_1 -3 + 41, 1, -3.8, 104 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 96.8, 187.6 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 68.9, 231.3 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 65, 305 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 45.2, 311.8 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 51.6, 298.3 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 65, 318.8 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 55.6, 320.7 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 53.6, 315.4 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 57.1, 315.1 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 57.7, 316.1 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 58.6, 317.7 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 60, 320.3 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 62.1, 324.3 , 0 );
--setMoveKey( spep_1 -3 + 68, 1, 65, 330.3 , 0 );
setMoveKey( spep_1 + 64, 1, 65, 330.3 , 0 );

setScaleKey( spep_1 -3 + 18, 1, 1.83, 1.83 );
setScaleKey( spep_1 -3 + 20, 1, 1.83, 1.83 );
setScaleKey( spep_1 -3 + 22, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 24, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 26, 1, 1.81, 1.81 );
setScaleKey( spep_1 -3 + 28, 1, 1.81, 1.81 );
setScaleKey( spep_1 -3 + 30, 1, 1.8, 1.8 );
setScaleKey( spep_1 -3 + 32, 1, 1.8, 1.8 );
setScaleKey( spep_1 -3 + 34, 1, 1.79, 1.79 );
setScaleKey( spep_1 -3 + 37, 1, 1.79, 1.79 );
setScaleKey( spep_1 -3 + 39, 1, 1.78, 1.78 );
setScaleKey( spep_1 -3 + 41, 1, 1.78, 1.78 );
setScaleKey( spep_1 -3 + 42, 1, 1.07, 1.07 );
setScaleKey( spep_1 -3 + 44, 1, 0.64, 0.64 );
setScaleKey( spep_1 -3 + 46, 1, 0.38, 0.38 );
setScaleKey( spep_1 -3 + 48, 1, 0.24, 0.24 );
setScaleKey( spep_1 -3 + 50, 1, 0.17, 0.17 );
setScaleKey( spep_1 -3 + 52, 1, 0.15, 0.15 );
setScaleKey( spep_1 -3 + 56, 1, 0.15, 0.15 );
setScaleKey( spep_1 -3 + 58, 1, 0.17, 0.17 );
setScaleKey( spep_1 -3 + 60, 1, 0.19, 0.19 );
setScaleKey( spep_1 -3 + 62, 1, 0.24, 0.24 );
setScaleKey( spep_1 -3 + 64, 1, 0.3, 0.3 );
setScaleKey( spep_1 -3 + 66, 1, 0.41, 0.41 );
--setScaleKey( spep_1 -3 + 68, 1, 0.55, 0.55 );
setScaleKey( spep_1 + 64, 1, 0.55, 0.55 );

setRotateKey( spep_1 -3 + 39, 1, 0 );
setRotateKey( spep_1 -3 + 41, 1, -36.7 );
setRotateKey( spep_1 -3 + 42, 1, 41 );
setRotateKey( spep_1 -3 + 44, 1, 56.3 );
setRotateKey( spep_1 -3 + 46, 1, 65.6 );
setRotateKey( spep_1 -3 + 48, 1, 70.7 );
setRotateKey( spep_1 -3 + 50, 1, 73.2 );
setRotateKey( spep_1 -3 + 52, 1, 74.1 );
setRotateKey( spep_1 -3 + 54, 1, 74.3 );
setRotateKey( spep_1 + 64, 1, 74.3 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_1 -3 + 40,  10005, 8, 0x100, -1, 0, -141.9, 384.9 );  --ガッ
setEffMoveKey( spep_1 -3 + 40, ctga, -141.9, 384.9 , 0 );
setEffMoveKey( spep_1 -3 + 42, ctga, -141.9, 384.9 , 0 );
setEffMoveKey( spep_1 -3 + 44, ctga, -141.8, 384.9 , 0 );
setEffMoveKey( spep_1 -3 + 46, ctga, -141.8, 384.8 , 0 );
setEffMoveKey( spep_1 -3 + 48, ctga, -141.7, 384.8 , 0 );

setEffScaleKey( spep_1 -3 + 40, ctga, 0.59, 0.59 );
setEffScaleKey( spep_1 -3 + 42, ctga, 0.93 +0.3, 0.93 +0.3 );
setEffScaleKey( spep_1 -3 + 44, ctga, 1.26 +0.5, 1.26 +0.5 );
setEffScaleKey( spep_1 -3 + 46, ctga, 1.32 +1, 1.32 +1 );
setEffScaleKey( spep_1 -3 + 48, ctga, 1.37 +1, 1.37 +1 );

setEffRotateKey( spep_1 -3 + 40, ctga, 0.7 +13 );
setEffRotateKey( spep_1 -3 + 48, ctga, 0.7 +13 );

setEffAlphaKey( spep_1 -3 + 40, ctga, 255 );
setEffAlphaKey( spep_1 -3 + 44, ctga, 255 );
setEffAlphaKey( spep_1 -3 + 46, ctga, 128 );
setEffAlphaKey( spep_1 -3 + 48, ctga, 0 );

-- ** 白フェード ** --
entryFade( spep_1 + 38 -3, 0,  3, 0, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
playSe( spep_1 + 16, 43 );  --現れる
playSe( spep_1 -3 + 40, 1010 );  --蹴る

-- ** 次の準備 ** --
spep_2 = spep_1 + 64;

------------------------------------------------------
-- 気功波を投げる(38F)
------------------------------------------------------

-- ** エフェクト等 ** --
nageru = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --気功波を投げる(ef_004)
setEffMoveKey( spep_2 + 0, nageru, 0, 0 , 0 );
setEffMoveKey( spep_2 + 38, nageru, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, nageru, 1.0, 1.0 );
setEffScaleKey( spep_2 + 38, nageru, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, nageru, 0 );
setEffRotateKey( spep_2 + 38, nageru, 0 );
setEffAlphaKey( spep_2 + 0, nageru, 255 );
setEffAlphaKey( spep_2 + 36, nageru, 255 );
setEffAlphaKey( spep_2 + 37, nageru, 255 );
setEffAlphaKey( spep_2 + 38, nageru, 0 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_2 -3 + 26,  10012, 8, 0x100, -1, 0, -35, 378.9 );  --ズオッ
setEffMoveKey( spep_2 -3 + 26, ctzuo, -35, 378.9 , 0 );
setEffMoveKey( spep_2 -3 + 28, ctzuo, -35, 378.9 , 0 );
setEffMoveKey( spep_2 -3 + 30, ctzuo, -34.9, 378.8 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctzuo, -34.9, 378.8 , 0 );

setEffScaleKey( spep_2 -3 + 26, ctzuo, 0.51 +1, 0.51 +1 );
setEffScaleKey( spep_2 -3 + 28, ctzuo, 0.72 +1, 0.72 +1 );
setEffScaleKey( spep_2 -3 + 30, ctzuo, 0.93 +1.5, 0.93 +1.5 );
setEffScaleKey( spep_2 -3 + 32, ctzuo, 0.99 +2, 0.99 +2 );
setEffScaleKey( spep_2 -3 + 34, ctzuo, 1.05 +3.5, 1.05 +3.5 );

setEffRotateKey( spep_2 -3 + 26, ctzuo, -0.3 +25 );
setEffRotateKey( spep_2 -3 + 34, ctzuo, -0.3 +25 );

setEffAlphaKey( spep_2 -3 + 26, ctzuo, 255 );
setEffAlphaKey( spep_2 -3 + 30, ctzuo, 255 );
setEffAlphaKey( spep_2 -3 + 32, ctzuo, 128 );
setEffAlphaKey( spep_2 -3 + 34, ctzuo, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 38, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_2 + 0 -10, 1072 );  --構える
setSeVolume( spep_2 + 0 -10, 1072, 120 );
playSe( spep_2 + 20, 1003 );  --投げる
setSeVolume( spep_2 + 20, 1003, 130 );
playSe( spep_2 + 24, 1073 );  --投げた後

-- ** 次の準備 ** --
spep_3 = spep_2 + 38;

------------------------------------------------------
-- 気功波命中(116F)
------------------------------------------------------

-- ** エフェクト等 ** --
kidan_hit_f = entryEffect( spep_3 + 0, SP_05a, 0x100, -1, 0, 0, 0 );  --気功波命中(ef_005)
setEffMoveKey( spep_3 + 0, kidan_hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 116, kidan_hit_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kidan_hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 116, kidan_hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kidan_hit_f, 0 );
setEffRotateKey( spep_3 + 116, kidan_hit_f, 0 );
setEffAlphaKey( spep_3 + 0, kidan_hit_f, 255 );
setEffAlphaKey( spep_3 + 116, kidan_hit_f, 255 );

kidan_hit_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --気功波命中(ef_005)
setEffMoveKey( spep_3 + 0, kidan_hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 116, kidan_hit_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kidan_hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 116, kidan_hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kidan_hit_b, 0 );
setEffRotateKey( spep_3 + 116, kidan_hit_b, 0 );
setEffAlphaKey( spep_3 + 0, kidan_hit_b, 255 );
setEffAlphaKey( spep_3 + 116, kidan_hit_b, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_3 -3 + 70, 906, 26, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 -3 + 70, shuchusen1, 26, 20 );

setEffMoveKey( spep_3 -3 + 70, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 -3 + 96, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_3 -3 + 70, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_3 -3 + 96, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_3 -3 + 70, shuchusen1, 0 );
setEffRotateKey( spep_3 -3 + 96, shuchusen1, 0 );

setEffAlphaKey( spep_3 -3 + 70, shuchusen1, 255 );
setEffAlphaKey( spep_3 -3 + 96, shuchusen1, 255 );

-- ** 書き文字エントリー ** --
ctdogon = entryEffectLife( spep_3 -3 + 70,  10018, 18, 0x100, -1, 0, 0.1, 136 );  --ドゴォンッ
setEffMoveKey( spep_3 -3 + 70, ctdogon, 0.1, 136 , 0 );
setEffMoveKey( spep_3 -3 + 72, ctdogon, 0.1, 189.3 , 0 );
setEffMoveKey( spep_3 -3 + 74, ctdogon, 0.2, 242.6 , 0 );
setEffMoveKey( spep_3 -3 + 76, ctdogon, 0.3, 295.7 , 0 );
setEffMoveKey( spep_3 -3 + 78, ctdogon, 0.3, 300.7 , 0 );
setEffMoveKey( spep_3 -3 + 80, ctdogon, 0.3, 305.7 , 0 );
setEffMoveKey( spep_3 -3 + 82, ctdogon, 0.3, 310.7 , 0 );
setEffMoveKey( spep_3 -3 + 84, ctdogon, 0.4, 315.6 , 0 );
setEffMoveKey( spep_3 -3 + 86, ctdogon, 0.4, 320.6 , 0 );
setEffMoveKey( spep_3 -3 + 88, ctdogon, 0.4, 325.6 , 0 );

setEffScaleKey( spep_3 -3 + 70, ctdogon, 1.3, 1.3 );
setEffScaleKey( spep_3 -3 + 72, ctdogon, 1.96, 1.96 );
setEffScaleKey( spep_3 -3 + 74, ctdogon, 2.62, 2.62 );
setEffScaleKey( spep_3 -3 + 76, ctdogon, 3.28, 3.28 );
setEffScaleKey( spep_3 -3 + 78, ctdogon, 3.38, 3.38 );
setEffScaleKey( spep_3 -3 + 80, ctdogon, 3.49, 3.49 );
setEffScaleKey( spep_3 -3 + 82, ctdogon, 3.6, 3.6 );
setEffScaleKey( spep_3 -3 + 84, ctdogon, 3.71, 3.71 );
setEffScaleKey( spep_3 -3 + 86, ctdogon, 3.82, 3.82 );
setEffScaleKey( spep_3 -3 + 88, ctdogon, 3.93, 3.93 );

setEffRotateKey( spep_3 -3 + 70, ctdogon, -3.6 );
setEffRotateKey( spep_3 -3 + 88, ctdogon, -3.6 );

setEffAlphaKey( spep_3 -3 + 70, ctdogon, 255 );
setEffAlphaKey( spep_3 -3 + 76, ctdogon, 255 );
setEffAlphaKey( spep_3 -3 + 78, ctdogon, 213 );
setEffAlphaKey( spep_3 -3 + 80, ctdogon, 170 );
setEffAlphaKey( spep_3 -3 + 82, ctdogon, 128 );
setEffAlphaKey( spep_3 -3 + 84, ctdogon, 85 );
setEffAlphaKey( spep_3 -3 + 86, ctdogon, 42 );
setEffAlphaKey( spep_3 -3 + 88, ctdogon, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 58, 1, 0 );
changeAnime( spep_3 + 0, 1, 105 );

setMoveKey( spep_3 + 0, 1, 584.9, -506.9 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 220.1, -190.4 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 151, -130.7 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 108.7, -94.1 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 80.1, -69.3 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 63.2, -54.7 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 51.8, -44.8 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 43.2, -37.4 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 36.2, -31.4 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 30.5, -26.4 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 25.7, -22.3 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 21.7, -18.8 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 18.2, -15.7 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 15.2, -13.1 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 12.6, -10.9 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 10.3, -8.9 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 8.4, -7.3 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 6.8, -5.8 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 5.3, -4.6 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 4.1, -3.6 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 3.1, -2.7 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 2.3, -2 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 1.6, -1.4 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 1.1, -0.9 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 0.7, -0.6 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 0.4, -0.3 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 0.2, -0.1 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 0, 0 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 0, 0 , 0 );

setScaleKey( spep_3 + 0, 1, 8.65, 8.65 );
setScaleKey( spep_3 -3 + 4, 1, 3.27, 3.27 );
setScaleKey( spep_3 -3 + 6, 1, 2.25, 2.25 );
setScaleKey( spep_3 -3 + 8, 1, 1.63, 1.63 );
setScaleKey( spep_3 -3 + 10, 1, 1.21, 1.21 );
setScaleKey( spep_3 -3 + 12, 1, 0.96, 0.96 );
setScaleKey( spep_3 -3 + 14, 1, 0.8, 0.8 );
setScaleKey( spep_3 -3 + 16, 1, 0.67, 0.67 );
setScaleKey( spep_3 -3 + 18, 1, 0.57, 0.57 );
setScaleKey( spep_3 -3 + 20, 1, 0.49, 0.49 );
setScaleKey( spep_3 -3 + 22, 1, 0.42, 0.42 );
setScaleKey( spep_3 -3 + 24, 1, 0.36, 0.36 );
setScaleKey( spep_3 -3 + 26, 1, 0.3, 0.3 );
setScaleKey( spep_3 -3 + 28, 1, 0.26, 0.26 );
setScaleKey( spep_3 -3 + 30, 1, 0.22, 0.22 );
setScaleKey( spep_3 -3 + 32, 1, 0.19, 0.19 );
setScaleKey( spep_3 -3 + 34, 1, 0.16, 0.16 );
setScaleKey( spep_3 -3 + 36, 1, 0.14, 0.14 );
setScaleKey( spep_3 -3 + 38, 1, 0.12, 0.12 );
setScaleKey( spep_3 -3 + 40, 1, 0.1, 0.1 );
setScaleKey( spep_3 -3 + 42, 1, 0.08, 0.08 );
setScaleKey( spep_3 -3 + 44, 1, 0.07, 0.07 );
setScaleKey( spep_3 -3 + 46, 1, 0.06, 0.06 );
setScaleKey( spep_3 -3 + 48, 1, 0.05, 0.05 );
setScaleKey( spep_3 -3 + 50, 1, 0.05, 0.05 );
setScaleKey( spep_3 -3 + 52, 1, 0.04, 0.04 );
setScaleKey( spep_3 -3 + 58, 1, 0.04, 0.04 );

setRotateKey( spep_3 + 0, 1, -72 );
setRotateKey( spep_3 -3 + 4, 1, -13.3 );
setRotateKey( spep_3 -3 + 6, 1, -2.2 );
setRotateKey( spep_3 -3 + 8, 1, 4.5 );
setRotateKey( spep_3 -3 + 10, 1, 9.1 );
setRotateKey( spep_3 -3 + 12, 1, 11.8 );
setRotateKey( spep_3 -3 + 14, 1, 13.7 );
setRotateKey( spep_3 -3 + 16, 1, 15 );
setRotateKey( spep_3 -3 + 18, 1, 16.1 );
setRotateKey( spep_3 -3 + 20, 1, 17.1 );
setRotateKey( spep_3 -3 + 22, 1, 17.8 );
setRotateKey( spep_3 -3 + 24, 1, 18.5 );
setRotateKey( spep_3 -3 + 26, 1, 19 );
setRotateKey( spep_3 -3 + 28, 1, 19.5 );
setRotateKey( spep_3 -3 + 30, 1, 19.9 );
setRotateKey( spep_3 -3 + 32, 1, 20.3 );
setRotateKey( spep_3 -3 + 34, 1, 20.6 );
setRotateKey( spep_3 -3 + 36, 1, 20.9 );
setRotateKey( spep_3 -3 + 38, 1, 21.1 );
setRotateKey( spep_3 -3 + 40, 1, 21.3 );
setRotateKey( spep_3 -3 + 42, 1, 21.4 );
setRotateKey( spep_3 -3 + 44, 1, 21.6 );
setRotateKey( spep_3 -3 + 46, 1, 21.7 );
setRotateKey( spep_3 -3 + 48, 1, 21.8 );
setRotateKey( spep_3 -3 + 50, 1, 21.8 );
setRotateKey( spep_3 -3 + 52, 1, 21.9 );
setRotateKey( spep_3 -3 + 58, 1, 21.9 );

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 116, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_3 + 58 -3, 0,  2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
playSe( spep_3 + 24, 63 );  --気弾飛んでく
setSeVolume( spep_3 + 24, 63, 140 );
setSeVolume( spep_3 + 38, 63, 70 );
setSeVolume( spep_3 + 56, 63, 30 );
playSe( spep_3 + 68, 1068 );  --爆発

-- ** 次の準備 ** --
spep_4 = spep_3 + 116;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_5 = spep_4 + 94;

------------------------------------------------------
-- 瞬間移動→肘おろし(78F)
------------------------------------------------------

-- ** エフェクト等 ** --
hiji_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --瞬間移動→肘おろし　前(ef_006)
setEffMoveKey( spep_5 + 0, hiji_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 78, hiji_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hiji_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 78, hiji_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hiji_f, 0 );
setEffRotateKey( spep_5 + 78, hiji_f, 0 );
setEffAlphaKey( spep_5 + 0, hiji_f, 255 );
setEffAlphaKey( spep_5 + 78, hiji_f, 255 );

hiji_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --瞬間移動→肘おろし　後(ef_007)
setEffMoveKey( spep_5 + 0, hiji_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 78, hiji_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hiji_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 78, hiji_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hiji_b, 0 );
setEffRotateKey( spep_5 + 78, hiji_b, 0 );
setEffAlphaKey( spep_5 + 0, hiji_b, 255 );
setEffAlphaKey( spep_5 + 78, hiji_b, 255 );

-- ** 書き文字エントリー ** --
ctbaki = entryEffectLife( spep_5 -3 + 44,  10020, 8, 0x100, -1, 0, 4, 342 );  --バキッ
setEffMoveKey( spep_5 -3 + 44, ctbaki, 4, 342 , 0 );
setEffMoveKey( spep_5 -3 + 46, ctbaki, 1.7, 337.3 , 0 );
setEffMoveKey( spep_5 -3 + 48, ctbaki, 4.6, 343.2 , 0 );
setEffMoveKey( spep_5 -3 + 50, ctbaki, 1.1, 336.3 , 0 );
setEffMoveKey( spep_5 -3 + 52, ctbaki, 0.9, 336 , 0 );

setEffScaleKey( spep_5 -3 + 44, ctbaki, 1, 1 );
setEffScaleKey( spep_5 -3 + 46, ctbaki, 1.32, 1.32 );
setEffScaleKey( spep_5 -3 + 48, ctbaki, 1.64, 1.64 );
setEffScaleKey( spep_5 -3 + 50, ctbaki, 1.79, 1.79 );
setEffScaleKey( spep_5 -3 + 52, ctbaki, 1.94, 1.94 );

setEffRotateKey( spep_5 -3 + 44, ctbaki, 0 );
setEffRotateKey( spep_5 -3 + 52, ctbaki, 0 );

setEffAlphaKey( spep_5 -3 + 44, ctbaki, 255 );
setEffAlphaKey( spep_5 -3 + 48, ctbaki, 255 );
setEffAlphaKey( spep_5 -3 + 50, ctbaki, 128 );
setEffAlphaKey( spep_5 -3 + 52, ctbaki, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 60, 1, 0 );
changeAnime( spep_5 + 0, 1, 106 );
changeAnime( spep_5 -3 + 44, 1, 108 );
changeAnime( spep_5 -3 + 48, 1, 106 );

setMoveKey( spep_5 + 0, 1, 26.4, -16.3 , 0 );
setMoveKey( spep_5 -3 + 4, 1, 26.4, -10.5 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 26.4, -7.6 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 26.4, -4.6 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 26.4, -1.7 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 26.4, 1.2 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 26.4, 4.1 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 26.4, 7 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 26.4, 10 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 26.4, 12.9 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 26.4, 15.8 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 26.4, 18.7 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 26.4, 21.7 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 26.4, 24.6 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 26.4, 27.5 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 26.4, 30.4 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 26.4, 33.3 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 26.4, 36.3 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 26.4, 39.2 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 26.4, 42.1 , 0 );
setMoveKey( spep_5 -3 + 43, 1, 26.4, 42.1 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 26.4, -1.4 , 0 );
setMoveKey( spep_5 -3 + 47, 1, 73.3, -27.6 , 0 );
setMoveKey( spep_5 -3 + 48, 1, -20.5, -272.5 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 40.7, -247.3 , 0 );
setMoveKey( spep_5 -3 + 52, 1, -3.8, -493.2 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 29.5, -957.2 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 47.9, -1979.8 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 31.3, -3664.4 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 37.4, -6117.3 , 0 );

z=0.24;

setScaleKey( spep_5 + 0, 1, 1.46 +z, 1.46+z );
setScaleKey( spep_5 -3 + 60, 1, 1.46+z, 1.46+z );

setRotateKey( spep_5 + 0, 1, 19 );
setRotateKey( spep_5 -3 + 43, 1, 19 );
setRotateKey( spep_5 -3 + 44, 1, 102.8 );
setRotateKey( spep_5 -3 + 47, 1, 102.8 );
setRotateKey( spep_5 -3 + 48, 1, 115.3 );
setRotateKey( spep_5 -3 + 50, 1, 115.3 );
setRotateKey( spep_5 -3 + 52, 1, 115.7 );
setRotateKey( spep_5 -3 + 54, 1, 116.6 );
setRotateKey( spep_5 -3 + 56, 1, 118.4 );
setRotateKey( spep_5 -3 + 58, 1, 121.3 );
setRotateKey( spep_5 -3 + 60, 1, 125.7 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 78, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_5 + 42 -3, 0,  2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
playSe( spep_5 + 16, 1109 );  --現れる
playSe( spep_5 -3 + 44, 1011 );  --肘打ち

-- ** 次の準備 ** --
spep_6 = spep_5 + 78;

------------------------------------------------------
-- 敵を掴む(86F)
------------------------------------------------------

-- ** エフェクト等 ** --
tsukamu_f = entryEffectLife( spep_6 + 0, SP_08, 86, 0x100, -1, 0, 0, 0 );  --敵を掴む　前(ef_008)
setEffMoveKey( spep_6 + 0, tsukamu_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 86, tsukamu_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, tsukamu_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 86, tsukamu_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, tsukamu_f, 0 );
setEffRotateKey( spep_6 + 86, tsukamu_f, 0 );
setEffAlphaKey( spep_6 + 0, tsukamu_f, 255 );
setEffAlphaKey( spep_6 + 84, tsukamu_f, 255 );
setEffAlphaKey( spep_6 + 85, tsukamu_f, 255 );
setEffAlphaKey( spep_6 + 86, tsukamu_f, 0 );

tsukamu_b = entryEffect( spep_6 + 0, SP_09, 0x80, -1, 0, 0, 0 );  --敵を掴む　後(ef_009)
setEffMoveKey( spep_6 + 0, tsukamu_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 88, tsukamu_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, tsukamu_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 88, tsukamu_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, tsukamu_b, 0 );
setEffRotateKey( spep_6 + 88, tsukamu_b, 0 );
setEffAlphaKey( spep_6 + 0, tsukamu_b, 255 );
setEffAlphaKey( spep_6 + 84, tsukamu_b, 255 );
setEffAlphaKey( spep_6 + 85, tsukamu_b, 255 );
setEffAlphaKey( spep_6 + 86, tsukamu_b, 0 );

-- ** 書き文字エントリー ** --
ctga1 = entryEffectLife( spep_6 -3 + 18,  10005, 8, 0x100, -1, 0, -188.9, -450 );  --ガッ
setEffMoveKey( spep_6 -3 + 18, ctga1, -188.9, -450 , 0 );
setEffMoveKey( spep_6 -3 + 20, ctga1, -173.9, -430 , 0 );
setEffMoveKey( spep_6 -3 + 22, ctga1, -158.9, -410 , 0 );
setEffMoveKey( spep_6 -3 + 24, ctga1, -158.9, -410 , 0 );
setEffMoveKey( spep_6 -3 + 26, ctga1, -158.8, -410 , 0 );

setEffScaleKey( spep_6 -3 + 18, ctga1, 1 +0.5, 1 +0.5 );
setEffScaleKey( spep_6 -3 + 20, ctga1, 1.43 +0.5, 1.43 +0.5 );
setEffScaleKey( spep_6 -3 + 22, ctga1, 1.86 +0.5, 1.86 +0.5 );
setEffScaleKey( spep_6 -3 + 24, ctga1, 1.97 +0.9, 1.97 +0.9 );
setEffScaleKey( spep_6 -3 + 26, ctga1, 2.07 +1.8, 2.07 +1.8 );

setEffRotateKey( spep_6 -3 + 18, ctga1, 0 +12 );
setEffRotateKey( spep_6 -3 + 26, ctga1, 0 +12 );

setEffAlphaKey( spep_6 -3 + 18, ctga1, 255 );
setEffAlphaKey( spep_6 -3 + 22, ctga1, 255 );
setEffAlphaKey( spep_6 -3 + 24, ctga1, 128 );
setEffAlphaKey( spep_6 -3 + 26, ctga1, 0 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_6 -3 + 46, 906, 40 +3, 0x80, -1, 0, 0, 700 );  --集中線
setEffShake( spep_6 -3 + 46, shuchusen2, 26, 20 );

setEffMoveKey( spep_6 -3 + 46, shuchusen2, 0, 700 , 0 );
setEffMoveKey( spep_6 + 86, shuchusen2, 0, 700 , 0 );

setEffScaleKey( spep_6 -3 + 46, shuchusen2, 1.0, 3.8 );
setEffScaleKey( spep_6 + 86, shuchusen2, 1.0, 3.8 );

setEffRotateKey( spep_6 -3 + 46, shuchusen2, 0 );
setEffRotateKey( spep_6 + 86, shuchusen2, 0 );

setEffAlphaKey( spep_6 -3 + 46, shuchusen2, 255 );
setEffAlphaKey( spep_6 + 86, shuchusen2, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 17, 1, 0 );
setDisp( spep_6 -3 + 40, 1, 1 );
setDisp( spep_6 -3 + 46, 1, 0 );
changeAnime( spep_6 + 0, 1, 106 );
changeAnime( spep_6 -3 + 40, 1, 6 );

setMoveKey( spep_6 + 0, 1, 242.2, 1463.7 , 0 );
setMoveKey( spep_6 -3 + 4, 1, 242.2, 685 , 0 );
setMoveKey( spep_6 -3 + 6, 1, 242.2, 295.6 , 0 );
setMoveKey( spep_6 -3 + 8, 1, 242.2, -93.8 , 0 );
setMoveKey( spep_6 -3 + 10, 1, 242.2, -483.1 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 242.2, -872.5 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 242.2, -1261.9 , 0 );
setMoveKey( spep_6 -3 + 17, 1, 242.2, -1651.2 , 0 );
setMoveKey( spep_6 -3 + 40, 1, -411, 20.2 , 0 );
setMoveKey( spep_6 -3 + 42, 1, -300.6, 269.9 , 0 );
setMoveKey( spep_6 -3 + 44, 1, -223, 445.6 , 0 );
setMoveKey( spep_6 -3 + 46, 1, -103.4, 664.5 , 0 );

setScaleKey( spep_6 + 0, 1, 6.65, 6.65 );
setScaleKey( spep_6 -3 + 17, 1, 6.65, 6.65 );
setScaleKey( spep_6 -3 + 40, 1, 2.48, 2.48 );
setScaleKey( spep_6 -3 + 42, 1, 1.61, 1.61 );
setScaleKey( spep_6 -3 + 44, 1, 1.46, 1.46 );
setScaleKey( spep_6 -3 + 46, 1, 1.63, 1.54 );

setRotateKey( spep_6 + 0, 1, 121.5 );
setRotateKey( spep_6 -3 + 17, 1, 121.5 );
setRotateKey( spep_6 -3 + 40, 1, 269.2 );
setRotateKey( spep_6 -3 + 42, 1, 291.9 );
setRotateKey( spep_6 -3 + 44, 1, 319 );
setRotateKey( spep_6 -3 + 46, 1, 355 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 86, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_6 -3 + 18, 1012 );  --掴む
setSeVolume( spep_6 -3 + 18, 1012, 120 );
playSe( spep_6 + 40, 8 );  --持ち上げる

-- ** 次の準備 ** --
spep_7 = spep_6 + 86;

------------------------------------------------------
-- ビルの上に叩き落とす(66F)
------------------------------------------------------

-- ** エフェクト等 ** --
drop = entryEffect( spep_7 + 0, SP_10, 0x80, -1, 0, 0, 0 );  --ビルの上に叩き落とす(ef_010)
setEffMoveKey( spep_7 + 0, drop, 0, 0 , 0 );
setEffMoveKey( spep_7 + 66, drop, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, drop, 1.0, 1.0 );
setEffScaleKey( spep_7 + 66, drop, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, drop, 0 );
setEffRotateKey( spep_7 + 66, drop, 0 );
setEffAlphaKey( spep_7 + 0, drop, 255 );
setEffAlphaKey( spep_7 + 66, drop, 255 );

-- ** 書き文字エントリー ** --
ctzuzun = entryEffectLife( spep_7 -3 + 18,  10013, 22, 0x100, -1, 0, -20.7, 87.2 );  --ズズズン
setEffMoveKey( spep_7 -3 + 18, ctzuzun, -20.7, 87.2 , 0 );
setEffMoveKey( spep_7 -3 + 20, ctzuzun, -26.1, 116.8 , 0 );
setEffMoveKey( spep_7 -3 + 22, ctzuzun, -19.1, 158.7 , 0 );
setEffMoveKey( spep_7 -3 + 24, ctzuzun, -27.6, 185.2 , 0 );
setEffMoveKey( spep_7 -3 + 26, ctzuzun, -17.4, 230.2 , 0 );
setEffMoveKey( spep_7 -3 + 28, ctzuzun, -28.4, 222.1 , 0 );
setEffMoveKey( spep_7 -3 + 30, ctzuzun, -17.3, 236.1 , 0 );
setEffMoveKey( spep_7 -3 + 32, ctzuzun, -28.6, 227.6 , 0 );
setEffMoveKey( spep_7 -3 + 34, ctzuzun, -17.1, 241.9 , 0 );
setEffMoveKey( spep_7 -3 + 36, ctzuzun, -28.7, 233.2 , 0 );
setEffMoveKey( spep_7 -3 + 38, ctzuzun, -16.9, 247.8 , 0 );
setEffMoveKey( spep_7 -3 + 40, ctzuzun, -16.9, 250.7 , 0 );

setEffScaleKey( spep_7 -3 + 18, ctzuzun, 1.6, 1.6 );
setEffScaleKey( spep_7 -3 + 20, ctzuzun, 2.15, 2.15 );
setEffScaleKey( spep_7 -3 + 22, ctzuzun, 2.71, 2.71 );
setEffScaleKey( spep_7 -3 + 24, ctzuzun, 3.26, 3.26 );
setEffScaleKey( spep_7 -3 + 26, ctzuzun, 3.82, 3.82 );
setEffScaleKey( spep_7 -3 + 28, ctzuzun, 3.87, 3.87 );
setEffScaleKey( spep_7 -3 + 30, ctzuzun, 3.93, 3.93 );
setEffScaleKey( spep_7 -3 + 32, ctzuzun, 3.98, 3.98 );
setEffScaleKey( spep_7 -3 + 34, ctzuzun, 4.04, 4.04 );
setEffScaleKey( spep_7 -3 + 36, ctzuzun, 4.09, 4.09 );
setEffScaleKey( spep_7 -3 + 38, ctzuzun, 4.14, 4.14 );
setEffScaleKey( spep_7 -3 + 40, ctzuzun, 4.2, 4.2 );

setEffRotateKey( spep_7 -3 + 18, ctzuzun, 0 );
setEffRotateKey( spep_7 -3 + 40, ctzuzun, 0 );

setEffAlphaKey( spep_7 -3 + 18, ctzuzun, 255 );
setEffAlphaKey( spep_7 -3 + 26, ctzuzun, 255 );
setEffAlphaKey( spep_7 -3 + 28, ctzuzun, 219 );
setEffAlphaKey( spep_7 -3 + 30, ctzuzun, 182 );
setEffAlphaKey( spep_7 -3 + 32, ctzuzun, 146 );
setEffAlphaKey( spep_7 -3 + 34, ctzuzun, 109 );
setEffAlphaKey( spep_7 -3 + 36, ctzuzun, 73 );
setEffAlphaKey( spep_7 -3 + 38, ctzuzun, 36 );
setEffAlphaKey( spep_7 -3 + 40, ctzuzun, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 -3 + 16, 1, 0 );
changeAnime( spep_7 + 0, 1, 106 );
changeAnime( spep_7 -3 + 15, 1, 8 );
changeAnime( spep_7 -3 + 16, 1, 107 );

setMoveKey( spep_7 + 0, 1, -35.4, 671.8 , 0 );
setMoveKey( spep_7 -3 + 4, 1, -15.6, 448.3 , 0 );
setMoveKey( spep_7 -3 + 6, 1, -12.3, 375.4 , 0 );
setMoveKey( spep_7 -3 + 8, 1, -15.7, 332.2 , 0 );
setMoveKey( spep_7 -3 + 10, 1, -19.7, 281.3 , 0 );
setMoveKey( spep_7 -3 + 13, 1, -33.8, 199.4 , 0 );
setMoveKey( spep_7 -3 + 15, 1, -27.7, 53.4 , 0 );
setMoveKey( spep_7 -3 + 16, 1, 0.3, -84.2 , 0 );

setScaleKey( spep_7 + 0, 1, 1.09, 1.09 );
setScaleKey( spep_7 -3 + 4, 1, 0.5, 0.5 );
setScaleKey( spep_7 -3 + 6, 1, 0.36, 0.36 );
setScaleKey( spep_7 -3 + 8, 1, 0.35, 0.35 );
setScaleKey( spep_7 -3 + 15, 1, 0.35, 0.35 );
setScaleKey( spep_7 -3 + 16, 1, 0.13, 0.13 );

setRotateKey( spep_7 + 0, 1, -31.8 );
setRotateKey( spep_7 -3 + 4, 1, -34.9 );
setRotateKey( spep_7 -3 + 6, 1, -38.1 );
setRotateKey( spep_7 -3 + 8, 1, -41.2 );
setRotateKey( spep_7 -3 + 10, 1, -44.3 );
setRotateKey( spep_7 -3 + 13, 1, -62.7 );
setRotateKey( spep_7 -3 + 15, 1, -86.5 );
setRotateKey( spep_7 -3 + 16, 1, 53.5 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 66, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_7 + 16 -3, 0,  2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
playSe( spep_7 + 16, 1023 );  --ビルに叩き落とす

-- ** 次の準備 ** --
spep_8 = spep_7 + 66;

------------------------------------------------------
-- 後方宙返り(56F)
------------------------------------------------------

-- ** エフェクト等 ** --
somersault = entryEffect( spep_8 + 0, SP_11, 0x100, -1, 0, 0, 0 );  --後方宙返り(ef_011)
setEffMoveKey( spep_8 + 0, somersault, 0, 0 , 0 );
setEffMoveKey( spep_8 + 56, somersault, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, somersault, 1.0, 1.0 );
setEffScaleKey( spep_8 + 56, somersault, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, somersault, 0 );
setEffRotateKey( spep_8 + 56, somersault, 0 );
setEffAlphaKey( spep_8 + 0, somersault, 255 );
setEffAlphaKey( spep_8 + 56, somersault, 255 );

-- ** 書き文字エントリー ** --
ctba = entryEffectLife( spep_8 -3 + 8,  10022, 8, 0x100, -1, 0, 184.9, 331.4 );  --バッ
setEffMoveKey( spep_8 -3 + 8, ctba, 184.9, 331.4 , 0 );
setEffMoveKey( spep_8 -3 + 10, ctba, 184.9, 346.4 , 0 );
setEffMoveKey( spep_8 -3 + 12, ctba, 184.9, 361.4 , 0 );
setEffMoveKey( spep_8 -3 + 14, ctba, 184.9, 361.5 , 0 );
setEffMoveKey( spep_8 -3 + 16, ctba, 185, 361.5 , 0 );

setEffScaleKey( spep_8 -3 + 8, ctba, 2.28, 2.28 );
setEffScaleKey( spep_8 -3 + 10, ctba, 2.37, 2.37 );
setEffScaleKey( spep_8 -3 + 12, ctba, 2.46, 2.46 );
setEffScaleKey( spep_8 -3 + 14, ctba, 2.52, 2.52 );
setEffScaleKey( spep_8 -3 + 16, ctba, 2.59, 2.59 );

setEffRotateKey( spep_8 -3 + 8, ctba, 12 );
setEffRotateKey( spep_8 -3 + 16, ctba, 12 );

setEffAlphaKey( spep_8 -3 + 8, ctba, 255 );
setEffAlphaKey( spep_8 -3 + 12, ctba, 255 );
setEffAlphaKey( spep_8 -3 + 14, ctba, 128 );
setEffAlphaKey( spep_8 -3 + 16, ctba, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 56, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_8 -3 + 8, 1007 );  --バク転

-- ** 次の準備 ** --
spep_9 = spep_8 + 56;

------------------------------------------------------
-- 着地後に気功波(44F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffect( spep_9 + 0, SP_12, 0x100, -1, 0, 0, 0 );  --着地後に気功波(ef_012)
setEffMoveKey( spep_9 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_9 + 44, hassha, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_9 + 44, hassha, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, hassha, 0 );
setEffRotateKey( spep_9 + 44, hassha, 0 );
setEffAlphaKey( spep_9 + 0, hassha, 255 );
setEffAlphaKey( spep_9 + 44, hassha, 255 );

-- ** 書き文字エントリー ** --
ctzuo1 = entryEffectLife( spep_9 -3 + 36,  10012, 8, 0x100, -1, 0, 88, 245.9 );  --ズオッ
setEffMoveKey( spep_9 -3 + 36, ctzuo1, 88, 245.9 , 0 );
setEffMoveKey( spep_9 -3 + 38, ctzuo1, 95.5, 253.1 , 0 );
setEffMoveKey( spep_9 -3 + 40, ctzuo1, 103, 260.4 , 0 );
setEffMoveKey( spep_9 -3 + 42, ctzuo1, 110.5, 267.6 , 0 );
setEffMoveKey( spep_9 -3 + 44, ctzuo1, 118, 274.9 , 0 );

setEffScaleKey( spep_9 -3 + 36, ctzuo1, 1 +2.7, 1 +2.7 );
setEffScaleKey( spep_9 -3 + 38, ctzuo1, 1.08 +2.7, 1.08 +2.7 );
setEffScaleKey( spep_9 -3 + 40, ctzuo1, 1.16 +2.7, 1.16 +2.7 );
setEffScaleKey( spep_9 -3 + 42, ctzuo1, 1.24 +2.7, 1.24 +2.7 );
setEffScaleKey( spep_9 -3 + 44, ctzuo1, 1.32 +2.7, 1.32 +2.7 );

setEffRotateKey( spep_9 -3 + 36, ctzuo1, 0 +24 );
setEffRotateKey( spep_9 -3 + 36, ctzuo1, 0 +24 );

setEffAlphaKey( spep_9 -3 + 36, ctzuo1, 255 );
setEffAlphaKey( spep_9 -3 + 38, ctzuo1, 191 );
setEffAlphaKey( spep_9 -3 + 40, ctzuo1, 128 );
setEffAlphaKey( spep_9 -3 + 42, ctzuo1, 64 );
setEffAlphaKey( spep_9 -3 + 44, ctzuo1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 44, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_9 + 18, 1108 );  --着地
setSeVolume( spep_9 + 18, 1108, 150 );
playSe( spep_9 + 32, 1022 );  --発射
SE1 = playSe( spep_9 + 36 +6, 1124 );  --発射後
setSeVolume( spep_9 + 36 +6, 1124, 20 );

-- ** 白フェード ** --
entryFade( spep_9 + 36 -3, 0,  2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_10 = spep_9 + 44;

------------------------------------------------------
-- 気功波撃ちつつアップ(96F)
------------------------------------------------------

-- ** エフェクト等 ** --
up = entryEffect( spep_10 + 0, SP_13, 0x80, -1, 0, 0, 0 );  --気功波撃ちつつアップ(ef_013)
setEffMoveKey( spep_10 + 0, up, 0, 0 , 0 );
setEffMoveKey( spep_10 + 96, up, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, up, 1.0, 1.0 );
setEffScaleKey( spep_10 + 96, up, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, up, 0 );
setEffRotateKey( spep_10 + 96, up, 0 );
setEffAlphaKey( spep_10 + 0, up, 255 );
setEffAlphaKey( spep_10 + 96, up, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_10 + 14, 906, 82, 0x80, -1, 0, 0, 0 );  --集中線
setEffShake( spep_10 + 14, shuchusen3, 82, 20 );

setEffMoveKey( spep_10 + 14, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_10 + 96, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_10 + 14, shuchusen3, 1.4, 1.4 );
setEffScaleKey( spep_10 + 96, shuchusen3, 1.4, 1.4 );

setEffRotateKey( spep_10 + 14, shuchusen3, 0 );
setEffRotateKey( spep_10 + 96, shuchusen3, 0 );

setEffAlphaKey( spep_10 + 14, shuchusen3, 255 );
setEffAlphaKey( spep_10 + 96, shuchusen3, 255 );

spep_x = spep_10 + 12;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
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

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 96, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_x + 16, 1018 );  --ごごご
setSeVolume( spep_10 + 0 +10, 1124, 80 );

-- ** 次の準備 ** --
spep_11 = spep_10 + 96;

------------------------------------------------------
-- 目を見開いて気功波を押し付ける(44F)
------------------------------------------------------

-- ** エフェクト等 ** --
oshikomu = entryEffect( spep_11 + 0, SP_14, 0x100, -1, 0, 0, 0 );  --目を見開いて気功波を押し付ける(ef_014)
setEffMoveKey( spep_11 + 0, oshikomu, 0, 0 , 0 );
setEffMoveKey( spep_11 + 44, oshikomu, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, oshikomu, 1.0, 1.0 );
setEffScaleKey( spep_11 + 44, oshikomu, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, oshikomu, 0 );
setEffRotateKey( spep_11 + 44, oshikomu, 0 );
setEffAlphaKey( spep_11 + 0, oshikomu, 255 );
setEffAlphaKey( spep_11 + 44, oshikomu, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_11 + 0, 0, 44, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_11 + 12 -3 -8, 0,  2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
setSeVolume( spep_11 + 14, 1124, 60 );
playSe( spep_11 + 14, 1137 );  --押し込み
setSeVolume( spep_11 + 14, 1137, 80 );

stopSe(spep_11 + 44, SE1, 20 );

-- ** 次の準備 ** --
spep_12 = spep_11 + 44;

------------------------------------------------------
-- ビルに向かう気功波(86F)
------------------------------------------------------

-- ** エフェクト等 ** --
mukau = entryEffect( spep_12 + 0, SP_15, 0x100, -1, 0, 0, 0 );  --ビルに向かう気功波(ef_015)
setEffMoveKey( spep_12 + 0, mukau, 0, 0 , 0 );
setEffMoveKey( spep_12 + 86, mukau, 0, 0 , 0 );
setEffScaleKey( spep_12 + 0, mukau, 1.0, 1.0 );
setEffScaleKey( spep_12 + 86, mukau, 1.0, 1.0 );
setEffRotateKey( spep_12 + 0, mukau, 0 );
setEffRotateKey( spep_12 + 86, mukau, 0 );
setEffAlphaKey( spep_12 + 0, mukau, 255 );
setEffAlphaKey( spep_12 + 86, mukau, 255 );

-- ** 書き文字エントリー ** --
ctdon = entryEffectLife( spep_12 -3 + 64,  10019, 12, 0x100, -1, 0, -29.1, -62.3 );  --ドンッ
setEffMoveKey( spep_12 -3 + 64, ctdon, -29.1, -62.3 , 0 );
setEffMoveKey( spep_12 -3 + 66, ctdon, -29.4, -24.5 , 0 );
setEffMoveKey( spep_12 -3 + 68, ctdon, -8.6, -7.6 , 0 );
setEffMoveKey( spep_12 -3 + 70, ctdon, -7.4, 28.1 , 0 );
setEffMoveKey( spep_12 -3 + 72, ctdon, -15.5, 65.2 , 0 );
setEffMoveKey( spep_12 -3 + 74, ctdon, 1.7, 77.8 , 0 );
setEffMoveKey( spep_12 -3 + 76, ctdon, 3.3, 106.3 , 0 );

setEffScaleKey( spep_12 -3 + 64, ctdon, 2.18, 2.18 );
setEffScaleKey( spep_12 -3 + 66, ctdon, 2.41, 2.41 );
setEffScaleKey( spep_12 -3 + 68, ctdon, 2.63, 2.63 );
setEffScaleKey( spep_12 -3 + 70, ctdon, 2.86, 2.86 );
setEffScaleKey( spep_12 -3 + 72, ctdon, 2.91, 2.91 );
setEffScaleKey( spep_12 -3 + 74, ctdon, 2.95, 2.95 );
setEffScaleKey( spep_12 -3 + 76, ctdon, 3, 3 );

setEffRotateKey( spep_12 -3 + 64, ctdon, 35.2 );
setEffRotateKey( spep_12 -3 + 76, ctdon, 35.2 );

setEffAlphaKey( spep_12 -3 + 64, ctdon, 255 );
setEffAlphaKey( spep_12 -3 + 70, ctdon, 255 );
setEffAlphaKey( spep_12 -3 + 72, ctdon, 170 );
setEffAlphaKey( spep_12 -3 + 74, ctdon, 85 );
setEffAlphaKey( spep_12 -3 + 76, ctdon, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_12 + 0, 0, 86, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_12 + 0, 1021 );  --向かう
playSe( spep_12 -3 + 64,  1023 );  --ドン

-- ** 白フェード ** --
entryFade( spep_12 + 62 -3, 0,  2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_13 = spep_12 + 86;

------------------------------------------------------
-- 爆発(172F)
------------------------------------------------------

-- ** エフェクト等 ** --
bakuhatsu = entryEffect( spep_13 + 0, SP_16, 0x100, -1, 0, 0, 0 );  --爆発(ef_016)
setEffMoveKey( spep_13 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_13 + 172, bakuhatsu, 0, 0 , 0 );
setEffScaleKey( spep_13 + 0, bakuhatsu, 1.0, 1.0 );
setEffScaleKey( spep_13 + 172, bakuhatsu, 1.0, 1.0 );
setEffRotateKey( spep_13 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_13 + 172, bakuhatsu, 0 );
setEffAlphaKey( spep_13 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_13 + 172, bakuhatsu, 255 );

-- ** 書き文字エントリー ** --
ctdogon1 = entryEffectLife( spep_13 + 0,  10018, 24, 0x100, -1, 0, 8.2, -111.1 );  --ドゴォンッ
setEffMoveKey( spep_13 + 0, ctdogon1, 8.2, -111.1 , 0 );
setEffMoveKey( spep_13 + 2, ctdogon1, -3.2, -60.7 , 0 );
setEffMoveKey( spep_13 + 4, ctdogon1, 9.3, -20.6 , 0 );
setEffMoveKey( spep_13 + 6, ctdogon1, 11.9, 24.1 , 0 );
setEffMoveKey( spep_13 + 8, ctdogon1, -5.8, 31.8 , 0 );
setEffMoveKey( spep_13 + 10, ctdogon1, 6.2, 45.2 , 0 );
setEffMoveKey( spep_13 + 12, ctdogon1, 2, 31.2 , 0 );
setEffMoveKey( spep_13 + 14, ctdogon1, 1, 57.2 , 0 );
setEffMoveKey( spep_13 + 16, ctdogon1, 5.3, 45.9 , 0 );
setEffMoveKey( spep_13 + 18, ctdogon1, -3.6, 58.5 , 0 );
setEffMoveKey( spep_13 + 20, ctdogon1, 1.3, 52.9 , 0 );
setEffMoveKey( spep_13 + 22, ctdogon1, 4.8, 68.4 , 0 );
setEffMoveKey( spep_13 + 24, ctdogon1, 4.9, 72.9 , 0 );

setEffScaleKey( spep_13 + 0, ctdogon1, 2.02, 2.02 );
setEffScaleKey( spep_13 + 2, ctdogon1, 2.64, 2.64 );
setEffScaleKey( spep_13 + 4, ctdogon1, 3.26, 3.26 );
setEffScaleKey( spep_13 + 6, ctdogon1, 3.89, 3.89 );
setEffScaleKey( spep_13 + 8, ctdogon1, 3.94, 3.94 );
setEffScaleKey( spep_13 + 10, ctdogon1, 4, 4 );
setEffScaleKey( spep_13 + 12, ctdogon1, 4.05, 4.05 );
setEffScaleKey( spep_13 + 14, ctdogon1, 4.11, 4.11 );
setEffScaleKey( spep_13 + 16, ctdogon1, 4.16, 4.16 );
setEffScaleKey( spep_13 + 18, ctdogon1, 4.22, 4.22 );
setEffScaleKey( spep_13 + 20, ctdogon1, 4.27, 4.27 );
setEffScaleKey( spep_13 + 22, ctdogon1, 4.33, 4.33 );
setEffScaleKey( spep_13 + 24, ctdogon1, 4.38, 4.38 );

setEffRotateKey( spep_13 + 0, ctdogon1, -12.8 );
setEffRotateKey( spep_13 + 2, ctdogon1, -12.8 );
setEffRotateKey( spep_13 + 4, ctdogon1, -12.9 );
setEffRotateKey( spep_13 + 24, ctdogon1, -12.9 );

setEffAlphaKey( spep_13 + 0, ctdogon1, 255 );
setEffAlphaKey( spep_13 + 6, ctdogon1, 255 );
setEffAlphaKey( spep_13 + 8, ctdogon1, 227 );
setEffAlphaKey( spep_13 + 10, ctdogon1, 198 );
setEffAlphaKey( spep_13 + 12, ctdogon1, 170 );
setEffAlphaKey( spep_13 + 14, ctdogon1, 142 );
setEffAlphaKey( spep_13 + 16, ctdogon1, 113 );
setEffAlphaKey( spep_13 + 18, ctdogon1, 85 );
setEffAlphaKey( spep_13 + 20, ctdogon1, 57 );
setEffAlphaKey( spep_13 + 22, ctdogon1, 28 );
setEffAlphaKey( spep_13 + 24, ctdogon1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_13 + 0, 0, 172, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_13 + 0, 1024 );  --爆発
SE2 = playSe( spep_13 + 60, 1044 );  --地鳴り
setSeVolume( spep_13 + 60, 1044, 86 );
stopSe(spep_13 + 160, SE2, 10 );

-- ** 白フェード ** --
entryFade( spep_13 + 34 -3, 0,  2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** ダメージ表示 ** --
dealDamage( spep_13 + 60 );
endPhase( spep_13 + 166 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 登場(86F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
cutin1_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_0 + 0, cutin1_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 86, cutin1_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, cutin1_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 86, cutin1_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, cutin1_f, 0 );
setEffRotateKey( spep_0 + 86, cutin1_f, 0 );
setEffAlphaKey( spep_0 + 0, cutin1_f, 255 );
setEffAlphaKey( spep_0 + 86, cutin1_f, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 86, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 30 -3, 0,  2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
playSe( spep_0 + 32 -3, 50 );  --気溜め

-- ** 次の準備 ** --
spep_1 = spep_0 + 86;

------------------------------------------------------
-- 瞬間移動→蹴り(64F)
------------------------------------------------------

-- ** エフェクト等 ** --
kick_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 );  --瞬間移動→蹴り　前(ef_002)
setEffMoveKey( spep_1 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 64, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 64, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_f, 0 );
setEffRotateKey( spep_1 + 64, kick_f, 0 );
setEffAlphaKey( spep_1 + 0, kick_f, 255 );
setEffAlphaKey( spep_1 + 64, kick_f, 255 );

kick_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --瞬間移動→蹴り　後(ef_003)
setEffMoveKey( spep_1 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 64, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 64, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_b, 0 );
setEffRotateKey( spep_1 + 64, kick_b, 0 );
setEffAlphaKey( spep_1 + 0, kick_b, 255 );
setEffAlphaKey( spep_1 + 64, kick_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 101 );

setMoveKey( spep_1 + 0, 1, -63.9, 43.9 , 0 );
setMoveKey( spep_1 -3 + 4, 1, -61.8, 43.9 , 0 );
setMoveKey( spep_1 -3 + 6, 1, -60.8, 43.9 , 0 );
setMoveKey( spep_1 -3 + 8, 1, -59.7, 43.9 , 0 );
setMoveKey( spep_1 -3 + 10, 1, -58.6, 43.9 , 0 );
setMoveKey( spep_1 -3 + 12, 1, -57.6, 43.9 , 0 );
setMoveKey( spep_1 -3 + 14, 1, -56.5, 43.9 , 0 );
setMoveKey( spep_1 -3 + 16, 1, -55.5, 43.9 , 0 );

setScaleKey( spep_1 + 0, 1, 1.88, 1.88 );
setScaleKey( spep_1 -3 + 4, 1, 1.87, 1.87 );
setScaleKey( spep_1 -3 + 6, 1, 1.87, 1.87 );
setScaleKey( spep_1 -3 + 8, 1, 1.86, 1.86 );
setScaleKey( spep_1 -3 + 10, 1, 1.86, 1.86 );
setScaleKey( spep_1 -3 + 12, 1, 1.85, 1.85 );
setScaleKey( spep_1 -3 + 14, 1, 1.85, 1.85 );
setScaleKey( spep_1 -3 + 16, 1, 1.84, 1.84 );

setRotateKey( spep_1 + 0, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 64, 0, 0, 0, 0, 255 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 14; --エンドフェイズのフレーム数を置き換える

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

-- ** 敵キャラクター ** --
setDisp( spep_1 + 64, 1, 0 );
changeAnime( spep_1 -3 + 39, 1, 100 );
changeAnime( spep_1 -3 + 41, 1, 106 );
changeAnime( spep_1 -3 + 42, 1, 105 );

setMoveKey( spep_1 -3 + 18, 1, -54.4, 43.9 , 0 );
setMoveKey( spep_1 -3 + 20, 1, -53.4, 43.9 , 0 );
setMoveKey( spep_1 -3 + 22, 1, -52.3, 43.9 , 0 );
setMoveKey( spep_1 -3 + 24, 1, -51.3, 43.9 , 0 );
setMoveKey( spep_1 -3 + 26, 1, -50.2, 43.9 , 0 );
setMoveKey( spep_1 -3 + 28, 1, -49.2, 43.9 , 0 );
setMoveKey( spep_1 -3 + 30, 1, -48.1, 43.9 , 0 );
setMoveKey( spep_1 -3 + 32, 1, -47.1, 43.9 , 0 );
setMoveKey( spep_1 -3 + 34, 1, -46, 43.9 , 0 );
setMoveKey( spep_1 -3 + 37, 1, -45, 43.9 , 0 );
setMoveKey( spep_1 -3 + 39, 1, -43.9, 43.9 , 0 );
setMoveKey( spep_1 -3 + 41, 1, -3.8, 104 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 96.8, 187.6 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 68.9, 231.3 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 65, 305 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 45.2, 311.8 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 51.6, 298.3 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 65, 318.8 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 55.6, 320.7 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 53.6, 315.4 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 57.1, 315.1 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 57.7, 316.1 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 58.6, 317.7 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 60, 320.3 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 62.1, 324.3 , 0 );
--setMoveKey( spep_1 -3 + 68, 1, 65, 330.3 , 0 );
setMoveKey( spep_1 + 64, 1, 65, 330.3 , 0 );

setScaleKey( spep_1 -3 + 18, 1, 1.83, 1.83 );
setScaleKey( spep_1 -3 + 20, 1, 1.83, 1.83 );
setScaleKey( spep_1 -3 + 22, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 24, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 26, 1, 1.81, 1.81 );
setScaleKey( spep_1 -3 + 28, 1, 1.81, 1.81 );
setScaleKey( spep_1 -3 + 30, 1, 1.8, 1.8 );
setScaleKey( spep_1 -3 + 32, 1, 1.8, 1.8 );
setScaleKey( spep_1 -3 + 34, 1, 1.79, 1.79 );
setScaleKey( spep_1 -3 + 37, 1, 1.79, 1.79 );
setScaleKey( spep_1 -3 + 39, 1, 1.78, 1.78 );
setScaleKey( spep_1 -3 + 41, 1, 1.78, 1.78 );
setScaleKey( spep_1 -3 + 42, 1, 1.07, 1.07 );
setScaleKey( spep_1 -3 + 44, 1, 0.64, 0.64 );
setScaleKey( spep_1 -3 + 46, 1, 0.38, 0.38 );
setScaleKey( spep_1 -3 + 48, 1, 0.24, 0.24 );
setScaleKey( spep_1 -3 + 50, 1, 0.17, 0.17 );
setScaleKey( spep_1 -3 + 52, 1, 0.15, 0.15 );
setScaleKey( spep_1 -3 + 56, 1, 0.15, 0.15 );
setScaleKey( spep_1 -3 + 58, 1, 0.17, 0.17 );
setScaleKey( spep_1 -3 + 60, 1, 0.19, 0.19 );
setScaleKey( spep_1 -3 + 62, 1, 0.24, 0.24 );
setScaleKey( spep_1 -3 + 64, 1, 0.3, 0.3 );
setScaleKey( spep_1 -3 + 66, 1, 0.41, 0.41 );
--setScaleKey( spep_1 -3 + 68, 1, 0.55, 0.55 );
setScaleKey( spep_1 + 64, 1, 0.55, 0.55 );

setRotateKey( spep_1 -3 + 39, 1, 0 );
setRotateKey( spep_1 -3 + 41, 1, -36.7 );
setRotateKey( spep_1 -3 + 42, 1, 41 );
setRotateKey( spep_1 -3 + 44, 1, 56.3 );
setRotateKey( spep_1 -3 + 46, 1, 65.6 );
setRotateKey( spep_1 -3 + 48, 1, 70.7 );
setRotateKey( spep_1 -3 + 50, 1, 73.2 );
setRotateKey( spep_1 -3 + 52, 1, 74.1 );
setRotateKey( spep_1 -3 + 54, 1, 74.3 );
setRotateKey( spep_1 + 64, 1, 74.3 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_1 -3 + 40,  10005, 8, 0x100, -1, 0, -141.9, 384.9 );  --ガッ
setEffMoveKey( spep_1 -3 + 40, ctga, -141.9, 384.9 , 0 );
setEffMoveKey( spep_1 -3 + 42, ctga, -141.9, 384.9 , 0 );
setEffMoveKey( spep_1 -3 + 44, ctga, -141.8, 384.9 , 0 );
setEffMoveKey( spep_1 -3 + 46, ctga, -141.8, 384.8 , 0 );
setEffMoveKey( spep_1 -3 + 48, ctga, -141.7, 384.8 , 0 );

setEffScaleKey( spep_1 -3 + 40, ctga, 0.59, 0.59 );
setEffScaleKey( spep_1 -3 + 42, ctga, 0.93 +0.3, 0.93 +0.3 );
setEffScaleKey( spep_1 -3 + 44, ctga, 1.26 +0.5, 1.26 +0.5 );
setEffScaleKey( spep_1 -3 + 46, ctga, 1.32 +1, 1.32 +1 );
setEffScaleKey( spep_1 -3 + 48, ctga, 1.37 +1, 1.37 +1 );

setEffRotateKey( spep_1 -3 + 40, ctga, 0.7 +13 );
setEffRotateKey( spep_1 -3 + 48, ctga, 0.7 +13 );

setEffAlphaKey( spep_1 -3 + 40, ctga, 255 );
setEffAlphaKey( spep_1 -3 + 44, ctga, 255 );
setEffAlphaKey( spep_1 -3 + 46, ctga, 128 );
setEffAlphaKey( spep_1 -3 + 48, ctga, 0 );

-- ** 白フェード ** --
entryFade( spep_1 + 38 -3, 0,  3, 0, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
playSe( spep_1 + 16, 43 );  --現れる
playSe( spep_1 -3 + 40, 1010 );  --蹴る

-- ** 次の準備 ** --
spep_2 = spep_1 + 64;

------------------------------------------------------
-- 気功波を投げる(38F)
------------------------------------------------------

-- ** エフェクト等 ** --
nageru = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --気功波を投げる(ef_004)
setEffMoveKey( spep_2 + 0, nageru, 0, 0 , 0 );
setEffMoveKey( spep_2 + 38, nageru, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, nageru, -1.0, 1.0 );
setEffScaleKey( spep_2 + 38, nageru, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, nageru, 0 );
setEffRotateKey( spep_2 + 38, nageru, 0 );
setEffAlphaKey( spep_2 + 0, nageru, 255 );
setEffAlphaKey( spep_2 + 36, nageru, 255 );
setEffAlphaKey( spep_2 + 37, nageru, 255 );
setEffAlphaKey( spep_2 + 38, nageru, 0 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_2 -3 + 26,  10012, 8, 0x100, -1, 0, -35, 378.9 );  --ズオッ
setEffMoveKey( spep_2 -3 + 26, ctzuo, 35, 378.9 , 0 );
setEffMoveKey( spep_2 -3 + 28, ctzuo, 35, 378.9 , 0 );
setEffMoveKey( spep_2 -3 + 30, ctzuo, 34.9, 378.8 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctzuo, 34.9, 378.8 , 0 );

setEffScaleKey( spep_2 -3 + 26, ctzuo, 0.51 +1, 0.51 +1 );
setEffScaleKey( spep_2 -3 + 28, ctzuo, 0.72 +1, 0.72 +1 );
setEffScaleKey( spep_2 -3 + 30, ctzuo, 0.93 +1.5, 0.93 +1.5 );
setEffScaleKey( spep_2 -3 + 32, ctzuo, 0.99 +2, 0.99 +2 );
setEffScaleKey( spep_2 -3 + 34, ctzuo, 1.05 +3.5, 1.05 +3.5 );

setEffRotateKey( spep_2 -3 + 26, ctzuo, 0.3 -25 );
setEffRotateKey( spep_2 -3 + 34, ctzuo, 0.3 -25 );

setEffAlphaKey( spep_2 -3 + 26, ctzuo, 255 );
setEffAlphaKey( spep_2 -3 + 30, ctzuo, 255 );
setEffAlphaKey( spep_2 -3 + 32, ctzuo, 128 );
setEffAlphaKey( spep_2 -3 + 34, ctzuo, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 38, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_2 + 0 -10, 1072 );  --構える
setSeVolume( spep_2 + 0 -10, 1072, 120 );
playSe( spep_2 + 20, 1003 );  --投げる
setSeVolume( spep_2 + 20, 1003, 130 );
playSe( spep_2 + 24, 1073 );  --投げた後

-- ** 次の準備 ** --
spep_3 = spep_2 + 38;

------------------------------------------------------
-- 気功波命中(116F)
------------------------------------------------------

-- ** エフェクト等 ** --
kidan_hit_f = entryEffect( spep_3 + 0, SP_05a, 0x100, -1, 0, 0, 0 );  --気功波命中(ef_005)
setEffMoveKey( spep_3 + 0, kidan_hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 116, kidan_hit_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kidan_hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 116, kidan_hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kidan_hit_f, 0 );
setEffRotateKey( spep_3 + 116, kidan_hit_f, 0 );
setEffAlphaKey( spep_3 + 0, kidan_hit_f, 255 );
setEffAlphaKey( spep_3 + 116, kidan_hit_f, 255 );

kidan_hit_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --気功波命中(ef_005)
setEffMoveKey( spep_3 + 0, kidan_hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 116, kidan_hit_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kidan_hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 116, kidan_hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kidan_hit_b, 0 );
setEffRotateKey( spep_3 + 116, kidan_hit_b, 0 );
setEffAlphaKey( spep_3 + 0, kidan_hit_b, 255 );
setEffAlphaKey( spep_3 + 116, kidan_hit_b, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_3 -3 + 70, 906, 26, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 -3 + 70, shuchusen1, 26, 20 );

setEffMoveKey( spep_3 -3 + 70, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 -3 + 96, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_3 -3 + 70, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_3 -3 + 96, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_3 -3 + 70, shuchusen1, 0 );
setEffRotateKey( spep_3 -3 + 96, shuchusen1, 0 );

setEffAlphaKey( spep_3 -3 + 70, shuchusen1, 255 );
setEffAlphaKey( spep_3 -3 + 96, shuchusen1, 255 );

-- ** 書き文字エントリー ** --
ctdogon = entryEffectLife( spep_3 -3 + 70,  10018, 18, 0x100, -1, 0, 0.1, 136 );  --ドゴォンッ
setEffMoveKey( spep_3 -3 + 70, ctdogon, 0.1, 136 , 0 );
setEffMoveKey( spep_3 -3 + 72, ctdogon, 0.1, 189.3 , 0 );
setEffMoveKey( spep_3 -3 + 74, ctdogon, 0.2, 242.6 , 0 );
setEffMoveKey( spep_3 -3 + 76, ctdogon, 0.3, 295.7 , 0 );
setEffMoveKey( spep_3 -3 + 78, ctdogon, 0.3, 300.7 , 0 );
setEffMoveKey( spep_3 -3 + 80, ctdogon, 0.3, 305.7 , 0 );
setEffMoveKey( spep_3 -3 + 82, ctdogon, 0.3, 310.7 , 0 );
setEffMoveKey( spep_3 -3 + 84, ctdogon, 0.4, 315.6 , 0 );
setEffMoveKey( spep_3 -3 + 86, ctdogon, 0.4, 320.6 , 0 );
setEffMoveKey( spep_3 -3 + 88, ctdogon, 0.4, 325.6 , 0 );

setEffScaleKey( spep_3 -3 + 70, ctdogon, 1.3, 1.3 );
setEffScaleKey( spep_3 -3 + 72, ctdogon, 1.96, 1.96 );
setEffScaleKey( spep_3 -3 + 74, ctdogon, 2.62, 2.62 );
setEffScaleKey( spep_3 -3 + 76, ctdogon, 3.28, 3.28 );
setEffScaleKey( spep_3 -3 + 78, ctdogon, 3.38, 3.38 );
setEffScaleKey( spep_3 -3 + 80, ctdogon, 3.49, 3.49 );
setEffScaleKey( spep_3 -3 + 82, ctdogon, 3.6, 3.6 );
setEffScaleKey( spep_3 -3 + 84, ctdogon, 3.71, 3.71 );
setEffScaleKey( spep_3 -3 + 86, ctdogon, 3.82, 3.82 );
setEffScaleKey( spep_3 -3 + 88, ctdogon, 3.93, 3.93 );

setEffRotateKey( spep_3 -3 + 70, ctdogon, -3.6 );
setEffRotateKey( spep_3 -3 + 88, ctdogon, -3.6 );

setEffAlphaKey( spep_3 -3 + 70, ctdogon, 255 );
setEffAlphaKey( spep_3 -3 + 76, ctdogon, 255 );
setEffAlphaKey( spep_3 -3 + 78, ctdogon, 213 );
setEffAlphaKey( spep_3 -3 + 80, ctdogon, 170 );
setEffAlphaKey( spep_3 -3 + 82, ctdogon, 128 );
setEffAlphaKey( spep_3 -3 + 84, ctdogon, 85 );
setEffAlphaKey( spep_3 -3 + 86, ctdogon, 42 );
setEffAlphaKey( spep_3 -3 + 88, ctdogon, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 58, 1, 0 );
changeAnime( spep_3 + 0, 1, 105 );

setMoveKey( spep_3 + 0, 1, 584.9, -506.9 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 220.1, -190.4 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 151, -130.7 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 108.7, -94.1 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 80.1, -69.3 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 63.2, -54.7 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 51.8, -44.8 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 43.2, -37.4 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 36.2, -31.4 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 30.5, -26.4 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 25.7, -22.3 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 21.7, -18.8 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 18.2, -15.7 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 15.2, -13.1 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 12.6, -10.9 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 10.3, -8.9 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 8.4, -7.3 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 6.8, -5.8 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 5.3, -4.6 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 4.1, -3.6 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 3.1, -2.7 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 2.3, -2 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 1.6, -1.4 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 1.1, -0.9 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 0.7, -0.6 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 0.4, -0.3 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 0.2, -0.1 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 0, 0 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 0, 0 , 0 );

setScaleKey( spep_3 + 0, 1, 8.65, 8.65 );
setScaleKey( spep_3 -3 + 4, 1, 3.27, 3.27 );
setScaleKey( spep_3 -3 + 6, 1, 2.25, 2.25 );
setScaleKey( spep_3 -3 + 8, 1, 1.63, 1.63 );
setScaleKey( spep_3 -3 + 10, 1, 1.21, 1.21 );
setScaleKey( spep_3 -3 + 12, 1, 0.96, 0.96 );
setScaleKey( spep_3 -3 + 14, 1, 0.8, 0.8 );
setScaleKey( spep_3 -3 + 16, 1, 0.67, 0.67 );
setScaleKey( spep_3 -3 + 18, 1, 0.57, 0.57 );
setScaleKey( spep_3 -3 + 20, 1, 0.49, 0.49 );
setScaleKey( spep_3 -3 + 22, 1, 0.42, 0.42 );
setScaleKey( spep_3 -3 + 24, 1, 0.36, 0.36 );
setScaleKey( spep_3 -3 + 26, 1, 0.3, 0.3 );
setScaleKey( spep_3 -3 + 28, 1, 0.26, 0.26 );
setScaleKey( spep_3 -3 + 30, 1, 0.22, 0.22 );
setScaleKey( spep_3 -3 + 32, 1, 0.19, 0.19 );
setScaleKey( spep_3 -3 + 34, 1, 0.16, 0.16 );
setScaleKey( spep_3 -3 + 36, 1, 0.14, 0.14 );
setScaleKey( spep_3 -3 + 38, 1, 0.12, 0.12 );
setScaleKey( spep_3 -3 + 40, 1, 0.1, 0.1 );
setScaleKey( spep_3 -3 + 42, 1, 0.08, 0.08 );
setScaleKey( spep_3 -3 + 44, 1, 0.07, 0.07 );
setScaleKey( spep_3 -3 + 46, 1, 0.06, 0.06 );
setScaleKey( spep_3 -3 + 48, 1, 0.05, 0.05 );
setScaleKey( spep_3 -3 + 50, 1, 0.05, 0.05 );
setScaleKey( spep_3 -3 + 52, 1, 0.04, 0.04 );
setScaleKey( spep_3 -3 + 58, 1, 0.04, 0.04 );

setRotateKey( spep_3 + 0, 1, -72 );
setRotateKey( spep_3 -3 + 4, 1, -13.3 );
setRotateKey( spep_3 -3 + 6, 1, -2.2 );
setRotateKey( spep_3 -3 + 8, 1, 4.5 );
setRotateKey( spep_3 -3 + 10, 1, 9.1 );
setRotateKey( spep_3 -3 + 12, 1, 11.8 );
setRotateKey( spep_3 -3 + 14, 1, 13.7 );
setRotateKey( spep_3 -3 + 16, 1, 15 );
setRotateKey( spep_3 -3 + 18, 1, 16.1 );
setRotateKey( spep_3 -3 + 20, 1, 17.1 );
setRotateKey( spep_3 -3 + 22, 1, 17.8 );
setRotateKey( spep_3 -3 + 24, 1, 18.5 );
setRotateKey( spep_3 -3 + 26, 1, 19 );
setRotateKey( spep_3 -3 + 28, 1, 19.5 );
setRotateKey( spep_3 -3 + 30, 1, 19.9 );
setRotateKey( spep_3 -3 + 32, 1, 20.3 );
setRotateKey( spep_3 -3 + 34, 1, 20.6 );
setRotateKey( spep_3 -3 + 36, 1, 20.9 );
setRotateKey( spep_3 -3 + 38, 1, 21.1 );
setRotateKey( spep_3 -3 + 40, 1, 21.3 );
setRotateKey( spep_3 -3 + 42, 1, 21.4 );
setRotateKey( spep_3 -3 + 44, 1, 21.6 );
setRotateKey( spep_3 -3 + 46, 1, 21.7 );
setRotateKey( spep_3 -3 + 48, 1, 21.8 );
setRotateKey( spep_3 -3 + 50, 1, 21.8 );
setRotateKey( spep_3 -3 + 52, 1, 21.9 );
setRotateKey( spep_3 -3 + 58, 1, 21.9 );

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 116, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_3 + 58 -3, 0,  2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
playSe( spep_3 + 24, 63 );  --気弾飛んでく
setSeVolume( spep_3 + 24, 63, 140 );
setSeVolume( spep_3 + 38, 63, 70 );
setSeVolume( spep_3 + 56, 63, 30 );
playSe( spep_3 + 68, 1068 );  --爆発

-- ** 次の準備 ** --
spep_4 = spep_3 + 116;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_5 = spep_4 + 94;

------------------------------------------------------
-- 瞬間移動→肘おろし(78F)
------------------------------------------------------

-- ** エフェクト等 ** --
hiji_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --瞬間移動→肘おろし　前(ef_006)
setEffMoveKey( spep_5 + 0, hiji_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 78, hiji_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hiji_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 78, hiji_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hiji_f, 0 );
setEffRotateKey( spep_5 + 78, hiji_f, 0 );
setEffAlphaKey( spep_5 + 0, hiji_f, 255 );
setEffAlphaKey( spep_5 + 78, hiji_f, 255 );

hiji_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --瞬間移動→肘おろし　後(ef_007)
setEffMoveKey( spep_5 + 0, hiji_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 78, hiji_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hiji_b, -1.0, 1.0 );
setEffScaleKey( spep_5 + 78, hiji_b, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hiji_b, 0 );
setEffRotateKey( spep_5 + 78, hiji_b, 0 );
setEffAlphaKey( spep_5 + 0, hiji_b, 255 );
setEffAlphaKey( spep_5 + 78, hiji_b, 255 );

-- ** 書き文字エントリー ** --
ctbaki = entryEffectLife( spep_5 -3 + 44,  10020, 8, 0x100, -1, 0, 4, 342 );  --バキッ
setEffMoveKey( spep_5 -3 + 44, ctbaki, -4, 342 , 0 );
setEffMoveKey( spep_5 -3 + 46, ctbaki, -1.7, 337.3 , 0 );
setEffMoveKey( spep_5 -3 + 48, ctbaki, -4.6, 343.2 , 0 );
setEffMoveKey( spep_5 -3 + 50, ctbaki, -1.1, 336.3 , 0 );
setEffMoveKey( spep_5 -3 + 52, ctbaki, -0.9, 336 , 0 );

setEffScaleKey( spep_5 -3 + 44, ctbaki, 1, 1 );
setEffScaleKey( spep_5 -3 + 46, ctbaki, 1.32, 1.32 );
setEffScaleKey( spep_5 -3 + 48, ctbaki, 1.64, 1.64 );
setEffScaleKey( spep_5 -3 + 50, ctbaki, 1.79, 1.79 );
setEffScaleKey( spep_5 -3 + 52, ctbaki, 1.94, 1.94 );

setEffRotateKey( spep_5 -3 + 44, ctbaki, 0 );
setEffRotateKey( spep_5 -3 + 52, ctbaki, 0 );

setEffAlphaKey( spep_5 -3 + 44, ctbaki, 255 );
setEffAlphaKey( spep_5 -3 + 48, ctbaki, 255 );
setEffAlphaKey( spep_5 -3 + 50, ctbaki, 128 );
setEffAlphaKey( spep_5 -3 + 52, ctbaki, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 60, 1, 0 );
changeAnime( spep_5 + 0, 1, 6 );
changeAnime( spep_5 -3 + 44, 1, 8 );
changeAnime( spep_5 -3 + 48, 1, 6 );

setMoveKey( spep_5 + 0, 1, -26.4, -16.3 , 0 );
setMoveKey( spep_5 -3 + 4, 1, -26.4, -10.5 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -26.4, -7.6 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -26.4, -4.6 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -26.4, -1.7 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -26.4, 1.2 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -26.4, 4.1 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -26.4, 7 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -26.4, 10 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -26.4, 12.9 , 0 );
setMoveKey( spep_5 -3 + 22, 1, -26.4, 15.8 , 0 );
setMoveKey( spep_5 -3 + 24, 1, -26.4, 18.7 , 0 );
setMoveKey( spep_5 -3 + 26, 1, -26.4, 21.7 , 0 );
setMoveKey( spep_5 -3 + 28, 1, -26.4, 24.6 , 0 );
setMoveKey( spep_5 -3 + 30, 1, -26.4, 27.5 , 0 );
setMoveKey( spep_5 -3 + 32, 1, -26.4, 30.4 , 0 );
setMoveKey( spep_5 -3 + 34, 1, -26.4, 33.3 , 0 );
setMoveKey( spep_5 -3 + 36, 1, -26.4, 36.3 , 0 );
setMoveKey( spep_5 -3 + 38, 1, -26.4, 39.2 , 0 );
setMoveKey( spep_5 -3 + 40, 1, -26.4, 42.1 , 0 );
setMoveKey( spep_5 -3 + 43, 1, -26.4, 42.1 , 0 );
setMoveKey( spep_5 -3 + 44, 1, -26.4, -1.4 , 0 );
setMoveKey( spep_5 -3 + 47, 1, -73.3, -27.6 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 20.5, -272.5 , 0 );
setMoveKey( spep_5 -3 + 50, 1, -40.7, -247.3 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 3.8, -493.2 , 0 );
setMoveKey( spep_5 -3 + 54, 1, -29.5, -957.2 , 0 );
setMoveKey( spep_5 -3 + 56, 1, -47.9, -1979.8 , 0 );
setMoveKey( spep_5 -3 + 58, 1, -31.3, -3664.4 , 0 );
setMoveKey( spep_5 -3 + 60, 1, -37.4, -6117.3 , 0 );

z=0.24;

setScaleKey( spep_5 + 0, 1, 1.46 +z, 1.46+z );
setScaleKey( spep_5 -3 + 60, 1, 1.46+z, 1.46+z );

setRotateKey( spep_5 + 0, 1, -19 );
setRotateKey( spep_5 -3 + 43, 1, -19 );
setRotateKey( spep_5 -3 + 44, 1, -102.8 );
setRotateKey( spep_5 -3 + 47, 1, -102.8 );
setRotateKey( spep_5 -3 + 48, 1, -115.3 );
setRotateKey( spep_5 -3 + 50, 1, -115.3 );
setRotateKey( spep_5 -3 + 52, 1, -115.7 );
setRotateKey( spep_5 -3 + 54, 1, -116.6 );
setRotateKey( spep_5 -3 + 56, 1, -118.4 );
setRotateKey( spep_5 -3 + 58, 1, -121.3 );
setRotateKey( spep_5 -3 + 60, 1, -125.7 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 78, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_5 + 42 -3, 0,  2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
playSe( spep_5 + 16, 1109 );  --現れる
playSe( spep_5 -3 + 44, 1011 );  --肘打ち

-- ** 次の準備 ** --
spep_6 = spep_5 + 78;

------------------------------------------------------
-- 敵を掴む(86F)
------------------------------------------------------

-- ** エフェクト等 ** --
tsukamu_f = entryEffectLife( spep_6 + 0, SP_08, 86, 0x100, -1, 0, 0, 0 );  --敵を掴む　前(ef_008)
setEffMoveKey( spep_6 + 0, tsukamu_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 86, tsukamu_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, tsukamu_f, -1.0, 1.0 );
setEffScaleKey( spep_6 + 86, tsukamu_f, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, tsukamu_f, 0 );
setEffRotateKey( spep_6 + 86, tsukamu_f, 0 );
setEffAlphaKey( spep_6 + 0, tsukamu_f, 255 );
setEffAlphaKey( spep_6 + 84, tsukamu_f, 255 );
setEffAlphaKey( spep_6 + 85, tsukamu_f, 255 );
setEffAlphaKey( spep_6 + 86, tsukamu_f, 0 );

tsukamu_b = entryEffect( spep_6 + 0, SP_09, 0x80, -1, 0, 0, 0 );  --敵を掴む　後(ef_009)
setEffMoveKey( spep_6 + 0, tsukamu_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 88, tsukamu_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, tsukamu_b, -1.0, 1.0 );
setEffScaleKey( spep_6 + 88, tsukamu_b, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, tsukamu_b, 0 );
setEffRotateKey( spep_6 + 88, tsukamu_b, 0 );
setEffAlphaKey( spep_6 + 0, tsukamu_b, 255 );
setEffAlphaKey( spep_6 + 84, tsukamu_b, 255 );
setEffAlphaKey( spep_6 + 85, tsukamu_b, 255 );
setEffAlphaKey( spep_6 + 86, tsukamu_b, 0 );

-- ** 書き文字エントリー ** --
ctga1 = entryEffectLife( spep_6 -3 + 18,  10005, 8, 0x100, -1, 0, -188.9, -450 );  --ガッ
setEffMoveKey( spep_6 -3 + 18, ctga1, 188.9, -450 , 0 );
setEffMoveKey( spep_6 -3 + 20, ctga1, 173.9, -430 , 0 );
setEffMoveKey( spep_6 -3 + 22, ctga1, 158.9, -410 , 0 );
setEffMoveKey( spep_6 -3 + 24, ctga1, 158.9, -410 , 0 );
setEffMoveKey( spep_6 -3 + 26, ctga1, 158.8, -410 , 0 );

setEffScaleKey( spep_6 -3 + 18, ctga1, 1 +0.5, 1 +0.5 );
setEffScaleKey( spep_6 -3 + 20, ctga1, 1.43 +0.5, 1.43 +0.5 );
setEffScaleKey( spep_6 -3 + 22, ctga1, 1.86 +0.5, 1.86 +0.5 );
setEffScaleKey( spep_6 -3 + 24, ctga1, 1.97 +0.9, 1.97 +0.9 );
setEffScaleKey( spep_6 -3 + 26, ctga1, 2.07 +1.8, 2.07 +1.8 );

setEffRotateKey( spep_6 -3 + 18, ctga1, 0 -12 );
setEffRotateKey( spep_6 -3 + 26, ctga1, 0 -12 );

setEffAlphaKey( spep_6 -3 + 18, ctga1, 255 );
setEffAlphaKey( spep_6 -3 + 22, ctga1, 255 );
setEffAlphaKey( spep_6 -3 + 24, ctga1, 128 );
setEffAlphaKey( spep_6 -3 + 26, ctga1, 0 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_6 -3 + 46, 906, 40 +3, 0x80, -1, 0, 0, 700 );  --集中線
setEffShake( spep_6 -3 + 46, shuchusen2, 26, 20 );

setEffMoveKey( spep_6 -3 + 46, shuchusen2, 0, 700 , 0 );
setEffMoveKey( spep_6 + 86, shuchusen2, 0, 700 , 0 );

setEffScaleKey( spep_6 -3 + 46, shuchusen2, 1.0, 3.8 );
setEffScaleKey( spep_6 + 86, shuchusen2, 1.0, 3.8 );

setEffRotateKey( spep_6 -3 + 46, shuchusen2, 0 );
setEffRotateKey( spep_6 + 86, shuchusen2, 0 );

setEffAlphaKey( spep_6 -3 + 46, shuchusen2, 255 );
setEffAlphaKey( spep_6 + 86, shuchusen2, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 17, 1, 0 );
setDisp( spep_6 -3 + 40, 1, 1 );
setDisp( spep_6 -3 + 46, 1, 0 );
changeAnime( spep_6 + 0, 1, 6 );
changeAnime( spep_6 -3 + 40, 1, 106 );

setMoveKey( spep_6 + 0, 1, -242.2, 1463.7 , 0 );
setMoveKey( spep_6 -3 + 4, 1, -242.2, 685 , 0 );
setMoveKey( spep_6 -3 + 6, 1, -242.2, 295.6 , 0 );
setMoveKey( spep_6 -3 + 8, 1, -242.2, -93.8 , 0 );
setMoveKey( spep_6 -3 + 10, 1, -242.2, -483.1 , 0 );
setMoveKey( spep_6 -3 + 12, 1, -242.2, -872.5 , 0 );
setMoveKey( spep_6 -3 + 14, 1, -242.2, -1261.9 , 0 );
setMoveKey( spep_6 -3 + 17, 1, -242.2, -1651.2 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 411, 20.2 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 300.6, 269.9 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 223, 445.6 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 103.4, 664.5 , 0 );

setScaleKey( spep_6 + 0, 1, 6.65, 6.65 );
setScaleKey( spep_6 -3 + 17, 1, 6.65, 6.65 );
setScaleKey( spep_6 -3 + 40, 1, 2.48, 2.48 );
setScaleKey( spep_6 -3 + 42, 1, 1.61, 1.61 );
setScaleKey( spep_6 -3 + 44, 1, 1.46, 1.46 );
setScaleKey( spep_6 -3 + 46, 1, 1.63, 1.54 );

setRotateKey( spep_6 + 0, 1, -121.5 );
setRotateKey( spep_6 -3 + 17, 1, -121.5 );
setRotateKey( spep_6 -3 + 40, 1, -269.2 );
setRotateKey( spep_6 -3 + 42, 1, -291.9 );
setRotateKey( spep_6 -3 + 44, 1, -319 );
setRotateKey( spep_6 -3 + 46, 1, -355 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 86, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_6 -3 + 18, 1012 );  --掴む
setSeVolume( spep_6 -3 + 18, 1012, 120 );
playSe( spep_6 + 40, 8 );  --持ち上げる

-- ** 次の準備 ** --
spep_7 = spep_6 + 86;

------------------------------------------------------
-- ビルの上に叩き落とす(66F)
------------------------------------------------------

-- ** エフェクト等 ** --
drop = entryEffect( spep_7 + 0, SP_10, 0x80, -1, 0, 0, 0 );  --ビルの上に叩き落とす(ef_010)
setEffMoveKey( spep_7 + 0, drop, 0, 0 , 0 );
setEffMoveKey( spep_7 + 66, drop, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, drop, -1.0, 1.0 );
setEffScaleKey( spep_7 + 66, drop, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, drop, 0 );
setEffRotateKey( spep_7 + 66, drop, 0 );
setEffAlphaKey( spep_7 + 0, drop, 255 );
setEffAlphaKey( spep_7 + 66, drop, 255 );

-- ** 書き文字エントリー ** --
ctzuzun = entryEffectLife( spep_7 -3 + 18,  10013, 22, 0x100, -1, 0, -20.7, 87.2 );  --ズズズン
setEffMoveKey( spep_7 -3 + 18, ctzuzun, 20.7, 87.2 , 0 );
setEffMoveKey( spep_7 -3 + 20, ctzuzun, 26.1, 116.8 , 0 );
setEffMoveKey( spep_7 -3 + 22, ctzuzun, 19.1, 158.7 , 0 );
setEffMoveKey( spep_7 -3 + 24, ctzuzun, 27.6, 185.2 , 0 );
setEffMoveKey( spep_7 -3 + 26, ctzuzun, 17.4, 230.2 , 0 );
setEffMoveKey( spep_7 -3 + 28, ctzuzun, 28.4, 222.1 , 0 );
setEffMoveKey( spep_7 -3 + 30, ctzuzun, 17.3, 236.1 , 0 );
setEffMoveKey( spep_7 -3 + 32, ctzuzun, 28.6, 227.6 , 0 );
setEffMoveKey( spep_7 -3 + 34, ctzuzun, 17.1, 241.9 , 0 );
setEffMoveKey( spep_7 -3 + 36, ctzuzun, 28.7, 233.2 , 0 );
setEffMoveKey( spep_7 -3 + 38, ctzuzun, 16.9, 247.8 , 0 );
setEffMoveKey( spep_7 -3 + 40, ctzuzun, 16.9, 250.7 , 0 );

setEffScaleKey( spep_7 -3 + 18, ctzuzun, 1.6, 1.6 );
setEffScaleKey( spep_7 -3 + 20, ctzuzun, 2.15, 2.15 );
setEffScaleKey( spep_7 -3 + 22, ctzuzun, 2.71, 2.71 );
setEffScaleKey( spep_7 -3 + 24, ctzuzun, 3.26, 3.26 );
setEffScaleKey( spep_7 -3 + 26, ctzuzun, 3.82, 3.82 );
setEffScaleKey( spep_7 -3 + 28, ctzuzun, 3.87, 3.87 );
setEffScaleKey( spep_7 -3 + 30, ctzuzun, 3.93, 3.93 );
setEffScaleKey( spep_7 -3 + 32, ctzuzun, 3.98, 3.98 );
setEffScaleKey( spep_7 -3 + 34, ctzuzun, 4.04, 4.04 );
setEffScaleKey( spep_7 -3 + 36, ctzuzun, 4.09, 4.09 );
setEffScaleKey( spep_7 -3 + 38, ctzuzun, 4.14, 4.14 );
setEffScaleKey( spep_7 -3 + 40, ctzuzun, 4.2, 4.2 );

setEffRotateKey( spep_7 -3 + 18, ctzuzun, 0 );
setEffRotateKey( spep_7 -3 + 40, ctzuzun, 0 );

setEffAlphaKey( spep_7 -3 + 18, ctzuzun, 255 );
setEffAlphaKey( spep_7 -3 + 26, ctzuzun, 255 );
setEffAlphaKey( spep_7 -3 + 28, ctzuzun, 219 );
setEffAlphaKey( spep_7 -3 + 30, ctzuzun, 182 );
setEffAlphaKey( spep_7 -3 + 32, ctzuzun, 146 );
setEffAlphaKey( spep_7 -3 + 34, ctzuzun, 109 );
setEffAlphaKey( spep_7 -3 + 36, ctzuzun, 73 );
setEffAlphaKey( spep_7 -3 + 38, ctzuzun, 36 );
setEffAlphaKey( spep_7 -3 + 40, ctzuzun, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 -3 + 16, 1, 0 );
changeAnime( spep_7 + 0, 1, 6 );
changeAnime( spep_7 -3 + 15, 1, 108 );
changeAnime( spep_7 -3 + 16, 1, 7 );

setMoveKey( spep_7 + 0, 1, 35.4, 671.8 , 0 );
setMoveKey( spep_7 -3 + 4, 1, 15.6, 448.3 , 0 );
setMoveKey( spep_7 -3 + 6, 1, 12.3, 375.4 , 0 );
setMoveKey( spep_7 -3 + 8, 1, 15.7, 332.2 , 0 );
setMoveKey( spep_7 -3 + 10, 1, 19.7, 281.3 , 0 );
setMoveKey( spep_7 -3 + 13, 1, 33.8, 199.4 , 0 );
setMoveKey( spep_7 -3 + 15, 1, 27.7, 53.4 , 0 );
setMoveKey( spep_7 -3 + 16, 1, -0.3, -84.2 , 0 );

setScaleKey( spep_7 + 0, 1, 1.09, 1.09 );
setScaleKey( spep_7 -3 + 4, 1, 0.5, 0.5 );
setScaleKey( spep_7 -3 + 6, 1, 0.36, 0.36 );
setScaleKey( spep_7 -3 + 8, 1, 0.35, 0.35 );
setScaleKey( spep_7 -3 + 15, 1, 0.35, 0.35 );
setScaleKey( spep_7 -3 + 16, 1, 0.13, 0.13 );

setRotateKey( spep_7 + 0, 1, 31.8 );
setRotateKey( spep_7 -3 + 4, 1, 34.9 );
setRotateKey( spep_7 -3 + 6, 1, 38.1 );
setRotateKey( spep_7 -3 + 8, 1, 41.2 );
setRotateKey( spep_7 -3 + 10, 1, 44.3 );
setRotateKey( spep_7 -3 + 13, 1, 62.7 );
setRotateKey( spep_7 -3 + 15, 1, 86.5 );
setRotateKey( spep_7 -3 + 16, 1, -53.5 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 66, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_7 + 16 -3, 0,  2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
playSe( spep_7 + 16, 1023 );  --ビルに叩き落とす

-- ** 次の準備 ** --
spep_8 = spep_7 + 66;

------------------------------------------------------
-- 後方宙返り(56F)
------------------------------------------------------

-- ** エフェクト等 ** --
somersault = entryEffect( spep_8 + 0, SP_11, 0x100, -1, 0, 0, 0 );  --後方宙返り(ef_011)
setEffMoveKey( spep_8 + 0, somersault, 0, 0 , 0 );
setEffMoveKey( spep_8 + 56, somersault, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, somersault, -1.0, 1.0 );
setEffScaleKey( spep_8 + 56, somersault, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0, somersault, 0 );
setEffRotateKey( spep_8 + 56, somersault, 0 );
setEffAlphaKey( spep_8 + 0, somersault, 255 );
setEffAlphaKey( spep_8 + 56, somersault, 255 );

-- ** 書き文字エントリー ** --
ctba = entryEffectLife( spep_8 -3 + 8,  10022, 8, 0x100, -1, 0, 184.9, 331.4 );  --バッ
setEffMoveKey( spep_8 -3 + 8, ctba, -184.9, 331.4 , 0 );
setEffMoveKey( spep_8 -3 + 10, ctba, -184.9, 346.4 , 0 );
setEffMoveKey( spep_8 -3 + 12, ctba, -184.9, 361.4 , 0 );
setEffMoveKey( spep_8 -3 + 14, ctba, -184.9, 361.5 , 0 );
setEffMoveKey( spep_8 -3 + 16, ctba, -185, 361.5 , 0 );

setEffScaleKey( spep_8 -3 + 8, ctba, 2.28, 2.28 );
setEffScaleKey( spep_8 -3 + 10, ctba, 2.37, 2.37 );
setEffScaleKey( spep_8 -3 + 12, ctba, 2.46, 2.46 );
setEffScaleKey( spep_8 -3 + 14, ctba, 2.52, 2.52 );
setEffScaleKey( spep_8 -3 + 16, ctba, 2.59, 2.59 );

setEffRotateKey( spep_8 -3 + 8, ctba, -12 );
setEffRotateKey( spep_8 -3 + 16, ctba, -12 );

setEffAlphaKey( spep_8 -3 + 8, ctba, 255 );
setEffAlphaKey( spep_8 -3 + 12, ctba, 255 );
setEffAlphaKey( spep_8 -3 + 14, ctba, 128 );
setEffAlphaKey( spep_8 -3 + 16, ctba, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 56, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_8 -3 + 8, 1007 );  --バク転

-- ** 次の準備 ** --
spep_9 = spep_8 + 56;

------------------------------------------------------
-- 着地後に気功波(44F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffect( spep_9 + 0, SP_12, 0x100, -1, 0, 0, 0 );  --着地後に気功波(ef_012)
setEffMoveKey( spep_9 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_9 + 44, hassha, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, hassha, -1.0, 1.0 );
setEffScaleKey( spep_9 + 44, hassha, -1.0, 1.0 );
setEffRotateKey( spep_9 + 0, hassha, 0 );
setEffRotateKey( spep_9 + 44, hassha, 0 );
setEffAlphaKey( spep_9 + 0, hassha, 255 );
setEffAlphaKey( spep_9 + 44, hassha, 255 );

-- ** 書き文字エントリー ** --
ctzuo1 = entryEffectLife( spep_9 -3 + 36,  10012, 8, 0x100, -1, 0, 88, 245.9 );  --ズオッ
setEffMoveKey( spep_9 -3 + 36, ctzuo1, -88, 245.9 , 0 );
setEffMoveKey( spep_9 -3 + 38, ctzuo1, -95.5, 253.1 , 0 );
setEffMoveKey( spep_9 -3 + 40, ctzuo1, -103, 260.4 , 0 );
setEffMoveKey( spep_9 -3 + 42, ctzuo1, -110.5, 267.6 , 0 );
setEffMoveKey( spep_9 -3 + 44, ctzuo1, -118, 274.9 , 0 );

setEffScaleKey( spep_9 -3 + 36, ctzuo1, 1 +2.7, 1 +2.7 );
setEffScaleKey( spep_9 -3 + 38, ctzuo1, 1.08 +2.7, 1.08 +2.7 );
setEffScaleKey( spep_9 -3 + 40, ctzuo1, 1.16 +2.7, 1.16 +2.7 );
setEffScaleKey( spep_9 -3 + 42, ctzuo1, 1.24 +2.7, 1.24 +2.7 );
setEffScaleKey( spep_9 -3 + 44, ctzuo1, 1.32 +2.7, 1.32 +2.7 );

setEffRotateKey( spep_9 -3 + 36, ctzuo1, 0 -24 );
setEffRotateKey( spep_9 -3 + 36, ctzuo1, 0 -24 );

setEffAlphaKey( spep_9 -3 + 36, ctzuo1, 255 );
setEffAlphaKey( spep_9 -3 + 38, ctzuo1, 191 );
setEffAlphaKey( spep_9 -3 + 40, ctzuo1, 128 );
setEffAlphaKey( spep_9 -3 + 42, ctzuo1, 64 );
setEffAlphaKey( spep_9 -3 + 44, ctzuo1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 44, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_9 + 18, 1108 );  --着地
setSeVolume( spep_9 + 18, 1108, 150 );
playSe( spep_9 + 32, 1022 );  --発射
SE1 = playSe( spep_9 + 36 +6, 1124 );  --発射後
setSeVolume( spep_9 + 36 +6, 1124, 20 );

-- ** 白フェード ** --
entryFade( spep_9 + 36 -3, 0,  2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_10 = spep_9 + 44;

------------------------------------------------------
-- 気功波撃ちつつアップ(96F)
------------------------------------------------------

-- ** エフェクト等 ** --
up = entryEffect( spep_10 + 0, SP_13, 0x100, -1, 0, 0, 0 );  --気功波撃ちつつアップ(ef_013)
setEffMoveKey( spep_10 + 0, up, 0, 0 , 0 );
setEffMoveKey( spep_10 + 96, up, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, up, -1.0, 1.0 );
setEffScaleKey( spep_10 + 96, up, -1.0, 1.0 );
setEffRotateKey( spep_10 + 0, up, 0 );
setEffRotateKey( spep_10 + 96, up, 0 );
setEffAlphaKey( spep_10 + 0, up, 255 );
setEffAlphaKey( spep_10 + 96, up, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_10 + 14, 906, 82, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_10 + 14, shuchusen3, 82, 20 );

setEffMoveKey( spep_10 + 14, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_10 + 96, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_10 + 14, shuchusen3, 1.4, 1.4 );
setEffScaleKey( spep_10 + 96, shuchusen3, 1.4, 1.4 );

setEffRotateKey( spep_10 + 14, shuchusen3, 0 );
setEffRotateKey( spep_10 + 96, shuchusen3, 0 );

setEffAlphaKey( spep_10 + 14, shuchusen3, 255 );
setEffAlphaKey( spep_10 + 96, shuchusen3, 255 );

spep_x = spep_10 + 12;
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

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 96, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_x + 16, 1018 );  --ごごご
setSeVolume( spep_10 + 0 +10, 1124, 80 );

-- ** 次の準備 ** --
spep_11 = spep_10 + 96;

------------------------------------------------------
-- 目を見開いて気功波を押し付ける(44F)
------------------------------------------------------

-- ** エフェクト等 ** --
oshikomu = entryEffect( spep_11 + 0, SP_14, 0x100, -1, 0, 0, 0 );  --目を見開いて気功波を押し付ける(ef_014)
setEffMoveKey( spep_11 + 0, oshikomu, 0, 0 , 0 );
setEffMoveKey( spep_11 + 44, oshikomu, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, oshikomu, -1.0, 1.0 );
setEffScaleKey( spep_11 + 44, oshikomu, -1.0, 1.0 );
setEffRotateKey( spep_11 + 0, oshikomu, 0 );
setEffRotateKey( spep_11 + 44, oshikomu, 0 );
setEffAlphaKey( spep_11 + 0, oshikomu, 255 );
setEffAlphaKey( spep_11 + 44, oshikomu, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_11 + 0, 0, 44, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_11 + 12 -3 -8, 0,  2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
setSeVolume( spep_11 + 14, 1124, 60 );
playSe( spep_11 + 14, 1137 );  --押し込み
setSeVolume( spep_11 + 14, 1137, 80 );

stopSe(spep_11 + 44, SE1, 20 );

-- ** 次の準備 ** --
spep_12 = spep_11 + 44;

------------------------------------------------------
-- ビルに向かう気功波(86F)
------------------------------------------------------

-- ** エフェクト等 ** --
mukau = entryEffect( spep_12 + 0, SP_15, 0x100, -1, 0, 0, 0 );  --ビルに向かう気功波(ef_015)
setEffMoveKey( spep_12 + 0, mukau, 0, 0 , 0 );
setEffMoveKey( spep_12 + 86, mukau, 0, 0 , 0 );
setEffScaleKey( spep_12 + 0, mukau, -1.0, 1.0 );
setEffScaleKey( spep_12 + 86, mukau, -1.0, 1.0 );
setEffRotateKey( spep_12 + 0, mukau, 0 );
setEffRotateKey( spep_12 + 86, mukau, 0 );
setEffAlphaKey( spep_12 + 0, mukau, 255 );
setEffAlphaKey( spep_12 + 86, mukau, 255 );

-- ** 書き文字エントリー ** --
ctdon = entryEffectLife( spep_12 -3 + 64,  10019, 12, 0x100, -1, 0, -29.1, -62.3 );  --ドンッ
setEffMoveKey( spep_12 -3 + 64, ctdon, 29.1, -62.3 , 0 );
setEffMoveKey( spep_12 -3 + 66, ctdon, 29.4, -24.5 , 0 );
setEffMoveKey( spep_12 -3 + 68, ctdon, 8.6, -7.6 , 0 );
setEffMoveKey( spep_12 -3 + 70, ctdon, 7.4, 28.1 , 0 );
setEffMoveKey( spep_12 -3 + 72, ctdon, 15.5, 65.2 , 0 );
setEffMoveKey( spep_12 -3 + 74, ctdon, -1.7, 77.8 , 0 );
setEffMoveKey( spep_12 -3 + 76, ctdon, -3.3, 106.3 , 0 );

setEffScaleKey( spep_12 -3 + 64, ctdon, 2.18, 2.18 );
setEffScaleKey( spep_12 -3 + 66, ctdon, 2.41, 2.41 );
setEffScaleKey( spep_12 -3 + 68, ctdon, 2.63, 2.63 );
setEffScaleKey( spep_12 -3 + 70, ctdon, 2.86, 2.86 );
setEffScaleKey( spep_12 -3 + 72, ctdon, 2.91, 2.91 );
setEffScaleKey( spep_12 -3 + 74, ctdon, 2.95, 2.95 );
setEffScaleKey( spep_12 -3 + 76, ctdon, 3, 3 );

setEffRotateKey( spep_12 -3 + 64, ctdon, -35.2 );
setEffRotateKey( spep_12 -3 + 76, ctdon, -35.2 );

setEffAlphaKey( spep_12 -3 + 64, ctdon, 255 );
setEffAlphaKey( spep_12 -3 + 70, ctdon, 255 );
setEffAlphaKey( spep_12 -3 + 72, ctdon, 170 );
setEffAlphaKey( spep_12 -3 + 74, ctdon, 85 );
setEffAlphaKey( spep_12 -3 + 76, ctdon, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_12 + 0, 0, 86, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_12 + 0, 1021 );  --向かう
playSe( spep_12 -3 + 64,  1023 );  --ドン

-- ** 白フェード ** --
entryFade( spep_12 + 62 -3, 0,  2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_13 = spep_12 + 86;

------------------------------------------------------
-- 爆発(172F)
------------------------------------------------------

-- ** エフェクト等 ** --
bakuhatsu = entryEffect( spep_13 + 0, SP_16, 0x100, -1, 0, 0, 0 );  --爆発(ef_016)
setEffMoveKey( spep_13 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_13 + 172, bakuhatsu, 0, 0 , 0 );
setEffScaleKey( spep_13 + 0, bakuhatsu, -1.0, 1.0 );
setEffScaleKey( spep_13 + 172, bakuhatsu, -1.0, 1.0 );
setEffRotateKey( spep_13 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_13 + 172, bakuhatsu, 0 );
setEffAlphaKey( spep_13 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_13 + 172, bakuhatsu, 255 );

-- ** 書き文字エントリー ** --
ctdogon1 = entryEffectLife( spep_13 + 0,  10018, 24, 0x100, -1, 0, 8.2, -111.1 );  --ドゴォンッ
setEffMoveKey( spep_13 + 0, ctdogon1, -8.2, -111.1 , 0 );
setEffMoveKey( spep_13 + 2, ctdogon1, 3.2, -60.7 , 0 );
setEffMoveKey( spep_13 + 4, ctdogon1, -9.3, -20.6 , 0 );
setEffMoveKey( spep_13 + 6, ctdogon1, -11.9, 24.1 , 0 );
setEffMoveKey( spep_13 + 8, ctdogon1, 5.8, 31.8 , 0 );
setEffMoveKey( spep_13 + 10, ctdogon1, -6.2, 45.2 , 0 );
setEffMoveKey( spep_13 + 12, ctdogon1, -2, 31.2 , 0 );
setEffMoveKey( spep_13 + 14, ctdogon1, -1, 57.2 , 0 );
setEffMoveKey( spep_13 + 16, ctdogon1, -5.3, 45.9 , 0 );
setEffMoveKey( spep_13 + 18, ctdogon1, 3.6, 58.5 , 0 );
setEffMoveKey( spep_13 + 20, ctdogon1, -1.3, 52.9 , 0 );
setEffMoveKey( spep_13 + 22, ctdogon1, -4.8, 68.4 , 0 );
setEffMoveKey( spep_13 + 24, ctdogon1, -4.9, 72.9 , 0 );

setEffScaleKey( spep_13 + 0, ctdogon1, 2.02, 2.02 );
setEffScaleKey( spep_13 + 2, ctdogon1, 2.64, 2.64 );
setEffScaleKey( spep_13 + 4, ctdogon1, 3.26, 3.26 );
setEffScaleKey( spep_13 + 6, ctdogon1, 3.89, 3.89 );
setEffScaleKey( spep_13 + 8, ctdogon1, 3.94, 3.94 );
setEffScaleKey( spep_13 + 10, ctdogon1, 4, 4 );
setEffScaleKey( spep_13 + 12, ctdogon1, 4.05, 4.05 );
setEffScaleKey( spep_13 + 14, ctdogon1, 4.11, 4.11 );
setEffScaleKey( spep_13 + 16, ctdogon1, 4.16, 4.16 );
setEffScaleKey( spep_13 + 18, ctdogon1, 4.22, 4.22 );
setEffScaleKey( spep_13 + 20, ctdogon1, 4.27, 4.27 );
setEffScaleKey( spep_13 + 22, ctdogon1, 4.33, 4.33 );
setEffScaleKey( spep_13 + 24, ctdogon1, 4.38, 4.38 );

setEffRotateKey( spep_13 + 0, ctdogon1, 12.8 );
setEffRotateKey( spep_13 + 2, ctdogon1, 12.8 );
setEffRotateKey( spep_13 + 4, ctdogon1, 12.9 );
setEffRotateKey( spep_13 + 24, ctdogon1, 12.9 );

setEffAlphaKey( spep_13 + 0, ctdogon1, 255 );
setEffAlphaKey( spep_13 + 6, ctdogon1, 255 );
setEffAlphaKey( spep_13 + 8, ctdogon1, 227 );
setEffAlphaKey( spep_13 + 10, ctdogon1, 198 );
setEffAlphaKey( spep_13 + 12, ctdogon1, 170 );
setEffAlphaKey( spep_13 + 14, ctdogon1, 142 );
setEffAlphaKey( spep_13 + 16, ctdogon1, 113 );
setEffAlphaKey( spep_13 + 18, ctdogon1, 85 );
setEffAlphaKey( spep_13 + 20, ctdogon1, 57 );
setEffAlphaKey( spep_13 + 22, ctdogon1, 28 );
setEffAlphaKey( spep_13 + 24, ctdogon1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_13 + 0, 0, 172, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_13 + 0, 1024 );  --爆発
SE2 = playSe( spep_13 + 60, 1044 );  --地鳴り
setSeVolume( spep_13 + 60, 1044, 86 );
stopSe(spep_13 + 160, SE2, 10 );

-- ** 白フェード ** --
entryFade( spep_13 + 34 -3, 0,  2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** ダメージ表示 ** --
dealDamage( spep_13 + 60 );
endPhase( spep_13 + 166 );

end