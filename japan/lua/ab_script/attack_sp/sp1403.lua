--ブロリー_ギガンティックブロー

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
SP_01 = 154936; --冒頭セリフカットイン
SP_02 = 154937; --突進〜パンチ〜フィニッシュ
SP_03 = 154938; --突進〜パンチ〜フィニッシュ

--敵側
SP_02x = 154939; --突進〜パンチ〜フィニッシュ
SP_03x = 154940; --突進〜パンチ〜フィニッシュ

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
-- 冒頭セリフカットイン(86F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --冒頭セリフカットイン(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0 );
setEffMoveKey( spep_0 + 86, start, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0 );
setEffScaleKey( spep_0 + 86, start, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, start, 0 );
setEffRotateKey( spep_0 + 86, start, 0 );
setEffAlphaKey( spep_0 + 0, start, 255 );
setEffAlphaKey( spep_0 + 86, start, 255 );

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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 88, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--踏み出し
SE0 = playSe( spep_0 + 26, 1182 ); 
stopSe(spep_0 + 45, SE0, 27 );

playSe( spep_0 + 26, 1182 ); 
setSeVolume( spep_0 + 26, 1182, 79 );

--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

-- ** 次の準備 ** --
spep_1 = spep_0 + 86;

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

spep_2 = spep_1 + 94;

------------------------------------------------------
-- 突進〜パンチ〜フィニッシュ(472F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --突進〜パンチ〜フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 476, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 476, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 476, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 476, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --突進〜パンチ〜フィニッシュ(ef_003)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 476, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 476, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 476, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 476, finish_b, 255 );

-- ** 音 ** --
--前方ダッシュ
SE1 = playSe( spep_2 + 0, 9 ); 
SE2 = playSe( spep_2 + 0, 1182 ); 

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 476, 0, 0, 0, 0, 255 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 18; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe(SP_dodge - 12, SE1, 0 );
stopSe(SP_dodge - 12, SE2, 0 );

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
ctdon = entryEffectLife( spep_2 -3 + 154,  10019, 20, 0x100, -1, 0, -80, 229.8 );  --ドンッ
setEffMoveKey( spep_2 -3 + 154, ctdon, -80, 229.8 , 0 );
setEffMoveKey( spep_2 -3 + 156, ctdon, -118, 298.5 , 0 );
setEffMoveKey( spep_2 -3 + 158, ctdon, -112.6, 307.9 , 0 );
setEffMoveKey( spep_2 -3 + 160, ctdon, -109.1, 293 , 0 );
setEffMoveKey( spep_2 -3 + 162, ctdon, -118.3, 309.9 , 0 );
setEffMoveKey( spep_2 -3 + 164, ctdon, -110.6, 299.9 , 0 );
setEffMoveKey( spep_2 -3 + 166, ctdon, -121.9, 306.5 , 0 );
setEffMoveKey( spep_2 -3 + 168, ctdon, -118.7, 303.9 , 0 );
setEffMoveKey( spep_2 -3 + 170, ctdon, -128.2, 322.1 , 0 );
setEffMoveKey( spep_2 -3 + 172, ctdon, -167, 367 , 0 );
setEffMoveKey( spep_2 -3 + 174, ctdon, -167, 367 , 0 );

setEffScaleKey( spep_2 -3 + 154, ctdon, 1.15, 1.17 );
setEffScaleKey( spep_2 -3 + 156, ctdon, 2.48, 2.54 );
setEffScaleKey( spep_2 -3 + 158, ctdon, 2.48, 2.54 );
setEffScaleKey( spep_2 -3 + 160, ctdon, 2.48, 2.55 );
setEffScaleKey( spep_2 -3 + 162, ctdon, 2.49, 2.56 );
setEffScaleKey( spep_2 -3 + 164, ctdon, 2.5, 2.57 );
setEffScaleKey( spep_2 -3 + 166, ctdon, 2.53, 2.61 );
setEffScaleKey( spep_2 -3 + 168, ctdon, 2.59, 2.69 );
setEffScaleKey( spep_2 -3 + 170, ctdon, 2.7, 2.84 );
setEffScaleKey( spep_2 -3 + 172, ctdon, 3.21, 3.5 );
setEffScaleKey( spep_2 -3 + 174, ctdon, 3.21, 3.5 );

setEffRotateKey( spep_2 -3 + 154, ctdon, 0 );
setEffRotateKey( spep_2 -3 + 174, ctdon, 0 );

setEffAlphaKey( spep_2 -3 + 154, ctdon, 255 );
setEffAlphaKey( spep_2 -3 + 156, ctdon, 255 );
setEffAlphaKey( spep_2 -3 + 158, ctdon, 255 );
setEffAlphaKey( spep_2 -3 + 160, ctdon, 254 );
setEffAlphaKey( spep_2 -3 + 162, ctdon, 252 );
setEffAlphaKey( spep_2 -3 + 164, ctdon, 247 );
setEffAlphaKey( spep_2 -3 + 166, ctdon, 238 );
setEffAlphaKey( spep_2 -3 + 168, ctdon, 221 );
setEffAlphaKey( spep_2 -3 + 170, ctdon, 184 );
setEffAlphaKey( spep_2 -3 + 172, ctdon, 26 );
setEffAlphaKey( spep_2 -3 + 174, ctdon, 0 );

ctgasha = entryEffectLife( spep_2 -3 + 204,  10003, 40, 0x100, -1, 0, -54.4, 125.5 );  --ガシャーン
setEffMoveKey( spep_2 -3 + 204, ctgasha, -54.4, 125.5 , 0 );
setEffMoveKey( spep_2 -3 + 206, ctgasha, -39.2, 184.5 , 0 );
setEffMoveKey( spep_2 -3 + 208, ctgasha, -10.6, 236.7 , 0 );
setEffMoveKey( spep_2 -3 + 210, ctgasha, -10.6, 236.7 , 0 );
setEffMoveKey( spep_2 -3 + 212, ctgasha, 3, 253.9 , 0 );
setEffMoveKey( spep_2 -3 + 214, ctgasha, 0.7, 236.3 , 0 );
setEffMoveKey( spep_2 -3 + 216, ctgasha, -1.1, 263.4 , 0 );
setEffMoveKey( spep_2 -3 + 218, ctgasha, 5.5, 250.4 , 0 );
setEffMoveKey( spep_2 -3 + 220, ctgasha, -4, 260 , 0 );
setEffMoveKey( spep_2 -3 + 222, ctgasha, 2.6, 253 , 0 );
setEffMoveKey( spep_2 -3 + 224, ctgasha, 6.4, 268.7 , 0 );
setEffMoveKey( spep_2 -3 + 226, ctgasha, 2.4, 256.4 , 0 );
setEffMoveKey( spep_2 -3 + 228, ctgasha, 0.3, 274.1 , 0 );
setEffMoveKey( spep_2 -3 + 230, ctgasha, 2.4, 264.2 , 0 );
setEffMoveKey( spep_2 -3 + 232, ctgasha, -0.6, 274.2 , 0 );
setEffMoveKey( spep_2 -3 + 234, ctgasha, 5.8, 266.4 , 0 );
setEffMoveKey( spep_2 -3 + 236, ctgasha, 4.2, 276 , 0 );
setEffMoveKey( spep_2 -3 + 238, ctgasha, 7.7, 271.5 , 0 );
setEffMoveKey( spep_2 -3 + 240, ctgasha, 2.8, 272.3 , 0 );
setEffMoveKey( spep_2 -3 + 242, ctgasha, 5, 286.7 , 0 );
setEffMoveKey( spep_2 -3 + 244, ctgasha, 5, 286.7 , 0 );

setEffScaleKey( spep_2 -3 + 204, ctgasha, 1, 1.01 );
setEffScaleKey( spep_2 -3 + 206, ctgasha, 2.16, 2.24 );
setEffScaleKey( spep_2 -3 + 208, ctgasha, 3.32, 3.46 );
setEffScaleKey( spep_2 -3 + 210, ctgasha, 3.32, 3.46 );
setEffScaleKey( spep_2 -3 + 212, ctgasha, 3.36, 3.53 );
setEffScaleKey( spep_2 -3 + 214, ctgasha, 3.39, 3.6 );
setEffScaleKey( spep_2 -3 + 216, ctgasha, 3.43, 3.66 );
setEffScaleKey( spep_2 -3 + 218, ctgasha, 3.46, 3.71 );
setEffScaleKey( spep_2 -3 + 220, ctgasha, 3.48, 3.77 );
setEffScaleKey( spep_2 -3 + 222, ctgasha, 3.51, 3.81 );
setEffScaleKey( spep_2 -3 + 224, ctgasha, 3.53, 3.86 );
setEffScaleKey( spep_2 -3 + 226, ctgasha, 3.55, 3.9 );
setEffScaleKey( spep_2 -3 + 228, ctgasha, 3.57, 3.93 );
setEffScaleKey( spep_2 -3 + 230, ctgasha, 3.59, 3.96 );
setEffScaleKey( spep_2 -3 + 232, ctgasha, 3.6, 3.98 );
setEffScaleKey( spep_2 -3 + 234, ctgasha, 3.61, 4 );
setEffScaleKey( spep_2 -3 + 236, ctgasha, 3.62, 4.02 );
setEffScaleKey( spep_2 -3 + 238, ctgasha, 3.63, 4.03 );
setEffScaleKey( spep_2 -3 + 240, ctgasha, 3.63, 4.04 );
setEffScaleKey( spep_2 -3 + 244, ctgasha, 3.63, 4.04 );

setEffRotateKey( spep_2 -3 + 204, ctgasha, 0 );
setEffRotateKey( spep_2 -3 + 244, ctgasha, 0 );

setEffAlphaKey( spep_2 -3 + 204, ctgasha, 255 );
setEffAlphaKey( spep_2 -3 + 210, ctgasha, 255 );
setEffAlphaKey( spep_2 -3 + 212, ctgasha, 227 );
setEffAlphaKey( spep_2 -3 + 214, ctgasha, 201 );
setEffAlphaKey( spep_2 -3 + 216, ctgasha, 177 );
setEffAlphaKey( spep_2 -3 + 218, ctgasha, 155 );
setEffAlphaKey( spep_2 -3 + 220, ctgasha, 134 );
setEffAlphaKey( spep_2 -3 + 222, ctgasha, 115 );
setEffAlphaKey( spep_2 -3 + 224, ctgasha, 98 );
setEffAlphaKey( spep_2 -3 + 226, ctgasha, 83 );
setEffAlphaKey( spep_2 -3 + 228, ctgasha, 70 );
setEffAlphaKey( spep_2 -3 + 230, ctgasha, 58 );
setEffAlphaKey( spep_2 -3 + 232, ctgasha, 48 );
setEffAlphaKey( spep_2 -3 + 234, ctgasha, 40 );
setEffAlphaKey( spep_2 -3 + 236, ctgasha, 34 );
setEffAlphaKey( spep_2 -3 + 238, ctgasha, 30 );
setEffAlphaKey( spep_2 -3 + 240, ctgasha, 27 );
setEffAlphaKey( spep_2 -3 + 242, ctgasha, 26 );
setEffAlphaKey( spep_2 -3 + 244, ctgasha, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 84, 1, 1 );
setDisp( spep_2 -3 + 184, 1, 0 );
setDisp( spep_2 -3 + 204, 1, 1 );
setDisp( spep_2 -3 + 222, 1, 0 );
changeAnime( spep_2 -3 + 84, 1, 102 );
changeAnime( spep_2 -3 + 144, 1, 107 );

setMoveKey( spep_2 -3 + 84, 1, 2058.6, -2281.4 , 0 );
setMoveKey( spep_2 -3 + 83, 1, 2058.6, -2281.4 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 1341.9, -1463.1 , 0 );
setMoveKey( spep_2 -3 + 87, 1, 1341.9, -1463.1 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 951.7, -1039.3 , 0 );
setMoveKey( spep_2 -3 + 89, 1, 951.7, -1039.3 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 763.3, -816.6 , 0 );
setMoveKey( spep_2 -3 + 91, 1, 763.3, -816.6 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 651.4, -659.2 , 0 );
setMoveKey( spep_2 -3 + 93, 1, 651.4, -659.2 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 521.5, -528.2 , 0 );
setMoveKey( spep_2 -3 + 95, 1, 521.5, -528.2 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 465.9, -458.9 , 0 );
setMoveKey( spep_2 -3 + 97, 1, 465.9, -458.9 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 432.6, -404.6 , 0 );
setMoveKey( spep_2 -3 + 99, 1, 432.6, -404.6 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 423.8, -388.8 , 0 );
setMoveKey( spep_2 -3 + 101, 1, 423.8, -388.8 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 355.5, -301.2 , 0 );
setMoveKey( spep_2 -3 + 103, 1, 355.5, -301.2 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 330, -303.5 , 0 );
setMoveKey( spep_2 -3 + 105, 1, 330, -303.5 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 328.2, -299.3 , 0 );
setMoveKey( spep_2 -3 + 107, 1, 328.2, -299.3 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 293.3, -251.6 , 0 );
setMoveKey( spep_2 -3 + 109, 1, 293.3, -251.6 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 296, -253.8 , 0 );
setMoveKey( spep_2 -3 + 111, 1, 296, -253.8 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 292.4, -273.7 , 0 );
setMoveKey( spep_2 -3 + 113, 1, 292.4, -273.7 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 254.8, -235.4 , 0 );  --画面揺れる
setMoveKey( spep_2 -3 + 115, 1, 254.8, -235.4 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 258.1, -236.1 , 0 );
setMoveKey( spep_2 -3 + 117, 1, 258.1, -236.1 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 265, -245.2 , 0 );
setMoveKey( spep_2 -3 + 119, 1, 265, -245.2 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 260.5, -235.8 , 0 );
setMoveKey( spep_2 -3 + 121, 1, 260.5, -235.8 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 258.6, -232.7 , 0 );
setMoveKey( spep_2 -3 + 123, 1, 258.6, -232.7 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 262.4, -237.6 , 0 );
setMoveKey( spep_2 -3 + 125, 1, 262.4, -237.6 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 260.4, -246.1 , 0 );
setMoveKey( spep_2 -3 + 127, 1, 260.4, -246.1 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 262.3, -238.6 , 0 );
setMoveKey( spep_2 -3 + 129, 1, 262.3, -238.6 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 267.2, -240.8 , 0 );
setMoveKey( spep_2 -3 + 131, 1, 267.2, -240.8 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 272.8, -242.3 , 0 );
setMoveKey( spep_2 -3 + 133, 1, 272.8, -242.3 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 267.9, -240.8 , 0 );
setMoveKey( spep_2 -3 + 135, 1, 267.9, -240.8 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 270.9, -242.1 , 0 );
setMoveKey( spep_2 -3 + 137, 1, 270.9, -242.1 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 272.6, -245 , 0 );
setMoveKey( spep_2 -3 + 139, 1, 272.6, -245 , 0 );  --揺れ止める
setMoveKey( spep_2 -3 + 140, 1, 297.7, -305.5 , 0 );
setMoveKey( spep_2 -3 + 141, 1, 297.7, -305.5 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 296, -361.3 , 0 );
setMoveKey( spep_2 -3 + 143, 1, 296, -361.3 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 441.7, -384.2 , 0 );
setMoveKey( spep_2 -3 + 145, 1, 441.7, -384.2 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 171.9, -261.9 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 232.5, -306.5 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 150.9, -267 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 191.4, -298.5 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 145.7, -243.5 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 151.9, -250.6 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 146.5, -252.6 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 155, -245.2 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 155.5, -253.7 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 159.2, -272.6 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 166.9, -259.6 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 174, -283.2 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 210.3, -295.9 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 230.4, -304.7 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 261, -342.5 , 0 );
setMoveKey( spep_2 -3 + 176, 1, 365.1, -442.9 , 0 );
setMoveKey( spep_2 -3 + 178, 1, 444.7, -509.3 , 0 );
setMoveKey( spep_2 -3 + 180, 1, 467.1, -512.5 , 0 );
setMoveKey( spep_2 -3 + 182, 1, 475, -537.8 , 0 );
setMoveKey( spep_2 -3 + 184, 1, 475, -537.8 , 0 );
setMoveKey( spep_2 -3 + 204, 1, 25.9, -64.9 , 0 );
setMoveKey( spep_2 -3 + 206, 1, 33.5, -58.7 , 0 );
setMoveKey( spep_2 -3 + 208, 1, 67.9, -84.7 , 0 );
setMoveKey( spep_2 -3 + 210, 1, 128.8, -113.6 , 0 );
setMoveKey( spep_2 -3 + 212, 1, 219, -205.1 , 0 );
setMoveKey( spep_2 -3 + 214, 1, 408.7, -319 , 0 );
setMoveKey( spep_2 -3 + 216, 1, 602.3, -453.2 , 0 );
setMoveKey( spep_2 -3 + 218, 1, 732.1, -543.3 , 0 );
setMoveKey( spep_2 -3 + 220, 1, 830.6, -611.6 , 0 );
setMoveKey( spep_2 -3 + 222, 1, 909.6, -666.4 , 0 );

setScaleKey( spep_2 -3 + 84, 1, 13.74, 13.74 );
setScaleKey( spep_2 -3 + 85, 1, 13.74, 13.74 );
setScaleKey( spep_2 -3 + 86, 1, 9.94, 9.94 );
setScaleKey( spep_2 -3 + 87, 1, 9.94, 9.94 );
setScaleKey( spep_2 -3 + 88, 1, 8.07, 8.07 );
setScaleKey( spep_2 -3 + 89, 1, 8.07, 8.07 );
setScaleKey( spep_2 -3 + 90, 1, 6.89, 6.89 );
setScaleKey( spep_2 -3 + 91, 1, 6.89, 6.89 );
setScaleKey( spep_2 -3 + 92, 1, 6.11, 6.11 );
setScaleKey( spep_2 -3 + 93, 1, 6.11, 6.11 );
setScaleKey( spep_2 -3 + 94, 1, 5.56, 5.56 );
setScaleKey( spep_2 -3 + 95, 1, 5.56, 5.56 );
setScaleKey( spep_2 -3 + 96, 1, 5.17, 5.17 );
setScaleKey( spep_2 -3 + 97, 1, 5.17, 5.17 );
setScaleKey( spep_2 -3 + 98, 1, 4.82, 4.82 );
setScaleKey( spep_2 -3 + 99, 1, 4.82, 4.82 );
setScaleKey( spep_2 -3 + 100, 1, 4.55, 4.55 );
setScaleKey( spep_2 -3 + 101, 1, 4.55, 4.55 );
setScaleKey( spep_2 -3 + 102, 1, 4.4, 4.4 );
setScaleKey( spep_2 -3 + 103, 1, 4.4, 4.4 );
setScaleKey( spep_2 -3 + 104, 1, 4.26, 4.26 );
setScaleKey( spep_2 -3 + 105, 1, 4.26, 4.26 );
setScaleKey( spep_2 -3 + 106, 1, 4.13, 4.13 );
setScaleKey( spep_2 -3 + 107, 1, 4.13, 4.13 );
setScaleKey( spep_2 -3 + 108, 1, 4.06, 4.06 );
setScaleKey( spep_2 -3 + 109, 1, 4.06, 4.06 );
setScaleKey( spep_2 -3 + 110, 1, 3.98, 3.98 );
setScaleKey( spep_2 -3 + 111, 1, 3.98, 3.98 );
setScaleKey( spep_2 -3 + 112, 1, 3.92, 3.92 );
setScaleKey( spep_2 -3 + 113, 1, 3.92, 3.92 );
setScaleKey( spep_2 -3 + 114, 1, 3.9, 3.9 );
setScaleKey( spep_2 -3 + 115, 1, 3.9, 3.9 );
setScaleKey( spep_2 -3 + 116, 1, 3.89, 3.89 );
setScaleKey( spep_2 -3 + 118, 1, 3.84, 3.84 );
setScaleKey( spep_2 -3 + 120, 1, 3.86, 3.86 );
setScaleKey( spep_2 -3 + 124, 1, 3.86, 3.86 );
setScaleKey( spep_2 -3 + 126, 1, 3.85, 3.85 );
setScaleKey( spep_2 -3 + 128, 1, 3.89, 3.89 );
setScaleKey( spep_2 -3 + 132, 1, 3.89, 3.89 );
setScaleKey( spep_2 -3 + 134, 1, 3.92, 3.92 );
setScaleKey( spep_2 -3 + 136, 1, 3.92, 3.92 );
setScaleKey( spep_2 -3 + 138, 1, 4.01, 4.01 );
setScaleKey( spep_2 -3 + 139, 1, 4.01, 4.01 );
setScaleKey( spep_2 -3 + 140, 1, 4.19, 4.19 );
setScaleKey( spep_2 -3 + 141, 1, 4.19, 4.19 );
setScaleKey( spep_2 -3 + 142, 1, 4.66, 4.66 );
setScaleKey( spep_2 -3 + 143, 1, 4.66, 4.66 );
setScaleKey( spep_2 -3 + 144, 1, 1.82, 1.82 );
setScaleKey( spep_2 -3 + 145, 1, 1.82, 1.82 );
setScaleKey( spep_2 -3 + 146, 1, 1.42, 1.42 );
setScaleKey( spep_2 -3 + 148, 1, 1.49, 1.49 );
setScaleKey( spep_2 -3 + 150, 1, 1.32, 1.32 );
setScaleKey( spep_2 -3 + 152, 1, 1.29, 1.29 );
setScaleKey( spep_2 -3 + 154, 1, 1.29, 1.29 );
setScaleKey( spep_2 -3 + 156, 1, 1.27, 1.27 );
setScaleKey( spep_2 -3 + 160, 1, 1.27, 1.27 );
setScaleKey( spep_2 -3 + 162, 1, 1.28, 1.28 );
setScaleKey( spep_2 -3 + 164, 1, 1.29, 1.29 );
setScaleKey( spep_2 -3 + 166, 1, 1.31, 1.31 );
setScaleKey( spep_2 -3 + 168, 1, 1.34, 1.34 );
setScaleKey( spep_2 -3 + 170, 1, 1.39, 1.39 );
setScaleKey( spep_2 -3 + 172, 1, 1.44, 1.44 );
setScaleKey( spep_2 -3 + 174, 1, 1.54, 1.54 );
setScaleKey( spep_2 -3 + 176, 1, 1.75, 1.75 );
setScaleKey( spep_2 -3 + 178, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 180, 1, 1.95, 1.95 );
setScaleKey( spep_2 -3 + 182, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 184, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 204, 1, 0.26, 0.26 );
setScaleKey( spep_2 -3 + 206, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 208, 1, 0.26, 0.26 );
setScaleKey( spep_2 -3 + 210, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 212, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 214, 1, 0.36, 0.36 );
setScaleKey( spep_2 -3 + 216, 1, 0.42, 0.42 );
setScaleKey( spep_2 -3 + 218, 1, 0.45, 0.45 );
setScaleKey( spep_2 -3 + 220, 1, 0.48, 0.48 );
setScaleKey( spep_2 -3 + 222, 1, 0.51, 0.51 );

setRotateKey( spep_2 -3 + 84, 1, 10 );
setRotateKey( spep_2 -3 + 142, 1, 10 );
setRotateKey( spep_2 -3 + 143, 1, 10 );
setRotateKey( spep_2 -3 + 144, 1, -75 );
setRotateKey( spep_2 -3 + 145, 1, -75 );
setRotateKey( spep_2 -3 + 146, 1, -75.9 );
setRotateKey( spep_2 -3 + 148, 1, -76 );
setRotateKey( spep_2 -3 + 158, 1, -76 );
setRotateKey( spep_2 -3 + 160, 1, -75.9 );
setRotateKey( spep_2 -3 + 162, 1, -75.9 );
setRotateKey( spep_2 -3 + 164, 1, -75.6 );
setRotateKey( spep_2 -3 + 166, 1, -74.9 );
setRotateKey( spep_2 -3 + 168, 1, -74 );
setRotateKey( spep_2 -3 + 170, 1, -72.6 );
setRotateKey( spep_2 -3 + 172, 1, -70.6 );
setRotateKey( spep_2 -3 + 174, 1, -67.3 );
setRotateKey( spep_2 -3 + 176, 1, -58 );
setRotateKey( spep_2 -3 + 178, 1, -49.4 );
setRotateKey( spep_2 -3 + 180, 1, -45.9 );
setRotateKey( spep_2 -3 + 182, 1, -45.1 );
setRotateKey( spep_2 -3 + 184, 1, -45.1 );
setRotateKey( spep_2 -3 + 204, 1, 0 );
setRotateKey( spep_2 -3 + 206, 1, 0.2 );
setRotateKey( spep_2 -3 + 208, 1, 0.7 );
setRotateKey( spep_2 -3 + 210, 1, 1.6 );
setRotateKey( spep_2 -3 + 212, 1, 3.1 );
setRotateKey( spep_2 -3 + 214, 1, 5.9 );
setRotateKey( spep_2 -3 + 216, 1, 8.9 );
setRotateKey( spep_2 -3 + 218, 1, 10.8 );
setRotateKey( spep_2 -3 + 220, 1, 12.3 );
setRotateKey( spep_2 -3 + 222, 1, 13.5 );

-- ** 音 ** --
--振りかぶり
playSe( spep_2 + 28, 1004 ); 
playSe( spep_2 + 30, 8 ); 

--間
SE3 = playSe( spep_2 + 54, 17 ); 
setSeVolume( spep_2 + 54, 17, 0 );
setSeVolume( spep_2 + 89, 17, 3 );
setSeVolume( spep_2 + 90, 17, 8 );
setSeVolume( spep_2 + 91, 17, 14 );
setSeVolume( spep_2 + 92, 17, 20 );
setSeVolume( spep_2 + 93, 17, 25 );
setSeVolume( spep_2 + 120, 17, 25 );
setSeVolume( spep_2 + 126, 17, 16 );
setSeVolume( spep_2 + 130, 17, 8 );
setSeVolume( spep_2 + 138, 17, 0 );
stopSe(spep_2 + 138, SE3, 0 );

playSe( spep_2 + 71, 1072 ); 

--強パンチ
playSe( spep_2 + 138, 1003 ); 
playSe( spep_2 + 139, 1189 ); 
playSe( spep_2 + 148, 1120 ); 
setSeVolume( spep_2 + 148, 1120, 89 );
playSe( spep_2 + 148, 1010 ); 
setSeVolume( spep_2 + 148, 1010, 71 );

--飛んでいく
playSe( spep_2 + 156, 1072 ); 
SE4 = playSe( spep_2 + 159, 1183 ); 
setSeVolume( spep_2 + 159, 1183, 45 );
stopSe(spep_2 + 203, SE4, 0 );

--窓の外に吹っ飛ぶ
playSe( spep_2 + 197, 1041 ); 
setSeVolume( spep_2 + 197, 1041, 71 );
playSe( spep_2 + 200, 1054 ); 
setSeVolume( spep_2 + 200, 1054, 112 );

SE5 = playSe( spep_2 + 203, 1023 ); 
setSeVolume( spep_2 + 203, 1023, 45 );
setSeVolume( spep_2 + 240, 1023, 45 );
setSeVolume( spep_2 + 246, 1023, 40 );
setSeVolume( spep_2 + 252, 1023, 36 );
setSeVolume( spep_2 + 258, 1023, 30 );
setSeVolume( spep_2 + 262, 1023, 26 );
setSeVolume( spep_2 + 268, 1023, 18 );
setSeVolume( spep_2 + 270, 1023, 12 );
setSeVolume( spep_2 + 276, 1023, 0 );
stopSe(spep_2 + 276, SE5, 0 );

SE6 = playSe( spep_2 + 203, 1159 ); 
setSeVolume( spep_2 + 203, 1159, 32 );
setSeVolume( spep_2 + 244, 1159, 30 );
setSeVolume( spep_2 + 250, 1159, 28 );
setSeVolume( spep_2 + 256, 1159, 24 );
setSeVolume( spep_2 + 262, 1159, 20 );
setSeVolume( spep_2 + 270, 1159, 16 );
setSeVolume( spep_2 + 274, 1159, 12 );
setSeVolume( spep_2 + 280, 1159, 6 );
setSeVolume( spep_2 + 283, 1159, 0 );
stopSe(spep_2 + 283, SE6, 0 );

--腕アップ
playSe( spep_2 + 260, 1190 ); 
setSeVolume( spep_2 + 260, 1190, 0 );
setSeVolume( spep_2 + 275, 1190, 5 );
setSeVolume( spep_2 + 277, 1190, 18 );
setSeVolume( spep_2 + 280, 1190, 32 );

playSe( spep_2 + 273, 1006 ); 
setSeVolume( spep_2 + 273, 1006, 71 );

playSe( spep_2 + 277, 1007 ); 
setSeVolume( spep_2 + 277, 1007, 56 );

SE7 = playSe( spep_2 + 284, 1138 ); 
stopSe(spep_2 + 300, SE7, 0 );

--髪の毛ふわってなる
playSe( spep_2 + 394, 8 ); 
setSeVolume( spep_2 + 394, 8, 50 );

SE8 = playSe( spep_2 + 394, 1116 ); 
setSeVolume( spep_2 + 394, 1116, 79 );
setSeVolume( spep_2 + 420, 1116, 79 );
setSeVolume( spep_2 + 424, 1116, 56 );
setSeVolume( spep_2 + 428, 1116, 48 );
setSeVolume( spep_2 + 432, 1116, 34 );
setSeVolume( spep_2 + 436, 1116, 10 );
setSeVolume( spep_2 + 440, 1116, 0 );
stopSe(spep_2 + 440, SE8, 0 );

playSe( spep_2 + 394, 1182 ); 
setSeVolume( spep_2 + 394, 1182, 0 );
setSeVolume( spep_2 + 399, 1182, 0 );
setSeVolume( spep_2 + 400, 1182, 12 );
setSeVolume( spep_2 + 402, 1182, 46 );
setSeVolume( spep_2 + 404, 1182, 78 );
setSeVolume( spep_2 + 406, 1182, 100 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 358 );
endPhase( spep_2 + 472 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 冒頭セリフカットイン(86F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --冒頭セリフカットイン(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0 );
setEffMoveKey( spep_0 + 86, start, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, start, -1.0, 1.0 );
setEffScaleKey( spep_0 + 86, start, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, start, 0 );
setEffRotateKey( spep_0 + 86, start, 0 );
setEffAlphaKey( spep_0 + 0, start, 255 );
setEffAlphaKey( spep_0 + 86, start, 255 );

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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 88, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--踏み出し
SE0 = playSe( spep_0 + 26, 1182 ); 
stopSe(spep_0 + 45, SE0, 27 );

playSe( spep_0 + 26, 1182 ); 
setSeVolume( spep_0 + 26, 1182, 79 );

--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

-- ** 次の準備 ** --
spep_1 = spep_0 + 86;

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

spep_2 = spep_1 + 94;

------------------------------------------------------
-- 突進〜パンチ〜フィニッシュ(472F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 );  --突進〜パンチ〜フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 476, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 476, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 476, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 476, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_03x, 0x80, -1, 0, 0, 0 );  --突進〜パンチ〜フィニッシュ(ef_003)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 476, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 476, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 476, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 476, finish_b, 255 );

-- ** 音 ** --
--前方ダッシュ
SE1 = playSe( spep_2 + 0, 9 ); 
SE2 = playSe( spep_2 + 0, 1182 ); 

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 476, 0, 0, 0, 0, 255 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 18; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe(SP_dodge - 12, SE1, 0 );
stopSe(SP_dodge - 12, SE2, 0 );

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
ctdon = entryEffectLife( spep_2 -3 + 154,  10019, 20, 0x100, -1, 0, -80, 229.8 );  --ドンッ
setEffMoveKey( spep_2 -3 + 154, ctdon, -80, 229.8 , 0 );
setEffMoveKey( spep_2 -3 + 156, ctdon, -118, 298.5 , 0 );
setEffMoveKey( spep_2 -3 + 158, ctdon, -112.6, 307.9 , 0 );
setEffMoveKey( spep_2 -3 + 160, ctdon, -109.1, 293 , 0 );
setEffMoveKey( spep_2 -3 + 162, ctdon, -118.3, 309.9 , 0 );
setEffMoveKey( spep_2 -3 + 164, ctdon, -110.6, 299.9 , 0 );
setEffMoveKey( spep_2 -3 + 166, ctdon, -121.9, 306.5 , 0 );
setEffMoveKey( spep_2 -3 + 168, ctdon, -118.7, 303.9 , 0 );
setEffMoveKey( spep_2 -3 + 170, ctdon, -128.2, 322.1 , 0 );
setEffMoveKey( spep_2 -3 + 172, ctdon, -167, 367 , 0 );
setEffMoveKey( spep_2 -3 + 174, ctdon, -167, 367 , 0 );

setEffScaleKey( spep_2 -3 + 154, ctdon, 1.15, 1.17 );
setEffScaleKey( spep_2 -3 + 156, ctdon, 2.48, 2.54 );
setEffScaleKey( spep_2 -3 + 158, ctdon, 2.48, 2.54 );
setEffScaleKey( spep_2 -3 + 160, ctdon, 2.48, 2.55 );
setEffScaleKey( spep_2 -3 + 162, ctdon, 2.49, 2.56 );
setEffScaleKey( spep_2 -3 + 164, ctdon, 2.5, 2.57 );
setEffScaleKey( spep_2 -3 + 166, ctdon, 2.53, 2.61 );
setEffScaleKey( spep_2 -3 + 168, ctdon, 2.59, 2.69 );
setEffScaleKey( spep_2 -3 + 170, ctdon, 2.7, 2.84 );
setEffScaleKey( spep_2 -3 + 172, ctdon, 3.21, 3.5 );
setEffScaleKey( spep_2 -3 + 174, ctdon, 3.21, 3.5 );

setEffRotateKey( spep_2 -3 + 154, ctdon, 0 );
setEffRotateKey( spep_2 -3 + 174, ctdon, 0 );

setEffAlphaKey( spep_2 -3 + 154, ctdon, 255 );
setEffAlphaKey( spep_2 -3 + 156, ctdon, 255 );
setEffAlphaKey( spep_2 -3 + 158, ctdon, 255 );
setEffAlphaKey( spep_2 -3 + 160, ctdon, 254 );
setEffAlphaKey( spep_2 -3 + 162, ctdon, 252 );
setEffAlphaKey( spep_2 -3 + 164, ctdon, 247 );
setEffAlphaKey( spep_2 -3 + 166, ctdon, 238 );
setEffAlphaKey( spep_2 -3 + 168, ctdon, 221 );
setEffAlphaKey( spep_2 -3 + 170, ctdon, 184 );
setEffAlphaKey( spep_2 -3 + 172, ctdon, 26 );
setEffAlphaKey( spep_2 -3 + 174, ctdon, 0 );

ctgasha = entryEffectLife( spep_2 -3 + 204,  10003, 40, 0x100, -1, 0, -54.4, 125.5 );  --ガシャーン
setEffMoveKey( spep_2 -3 + 204, ctgasha, -54.4, 125.5 , 0 );
setEffMoveKey( spep_2 -3 + 206, ctgasha, -39.2, 184.5 , 0 );
setEffMoveKey( spep_2 -3 + 208, ctgasha, -10.6, 236.7 , 0 );
setEffMoveKey( spep_2 -3 + 210, ctgasha, -10.6, 236.7 , 0 );
setEffMoveKey( spep_2 -3 + 212, ctgasha, 3, 253.9 , 0 );
setEffMoveKey( spep_2 -3 + 214, ctgasha, 0.7, 236.3 , 0 );
setEffMoveKey( spep_2 -3 + 216, ctgasha, -1.1, 263.4 , 0 );
setEffMoveKey( spep_2 -3 + 218, ctgasha, 5.5, 250.4 , 0 );
setEffMoveKey( spep_2 -3 + 220, ctgasha, -4, 260 , 0 );
setEffMoveKey( spep_2 -3 + 222, ctgasha, 2.6, 253 , 0 );
setEffMoveKey( spep_2 -3 + 224, ctgasha, 6.4, 268.7 , 0 );
setEffMoveKey( spep_2 -3 + 226, ctgasha, 2.4, 256.4 , 0 );
setEffMoveKey( spep_2 -3 + 228, ctgasha, 0.3, 274.1 , 0 );
setEffMoveKey( spep_2 -3 + 230, ctgasha, 2.4, 264.2 , 0 );
setEffMoveKey( spep_2 -3 + 232, ctgasha, -0.6, 274.2 , 0 );
setEffMoveKey( spep_2 -3 + 234, ctgasha, 5.8, 266.4 , 0 );
setEffMoveKey( spep_2 -3 + 236, ctgasha, 4.2, 276 , 0 );
setEffMoveKey( spep_2 -3 + 238, ctgasha, 7.7, 271.5 , 0 );
setEffMoveKey( spep_2 -3 + 240, ctgasha, 2.8, 272.3 , 0 );
setEffMoveKey( spep_2 -3 + 242, ctgasha, 5, 286.7 , 0 );
setEffMoveKey( spep_2 -3 + 244, ctgasha, 5, 286.7 , 0 );

setEffScaleKey( spep_2 -3 + 204, ctgasha, 1, 1.01 );
setEffScaleKey( spep_2 -3 + 206, ctgasha, 2.16, 2.24 );
setEffScaleKey( spep_2 -3 + 208, ctgasha, 3.32, 3.46 );
setEffScaleKey( spep_2 -3 + 210, ctgasha, 3.32, 3.46 );
setEffScaleKey( spep_2 -3 + 212, ctgasha, 3.36, 3.53 );
setEffScaleKey( spep_2 -3 + 214, ctgasha, 3.39, 3.6 );
setEffScaleKey( spep_2 -3 + 216, ctgasha, 3.43, 3.66 );
setEffScaleKey( spep_2 -3 + 218, ctgasha, 3.46, 3.71 );
setEffScaleKey( spep_2 -3 + 220, ctgasha, 3.48, 3.77 );
setEffScaleKey( spep_2 -3 + 222, ctgasha, 3.51, 3.81 );
setEffScaleKey( spep_2 -3 + 224, ctgasha, 3.53, 3.86 );
setEffScaleKey( spep_2 -3 + 226, ctgasha, 3.55, 3.9 );
setEffScaleKey( spep_2 -3 + 228, ctgasha, 3.57, 3.93 );
setEffScaleKey( spep_2 -3 + 230, ctgasha, 3.59, 3.96 );
setEffScaleKey( spep_2 -3 + 232, ctgasha, 3.6, 3.98 );
setEffScaleKey( spep_2 -3 + 234, ctgasha, 3.61, 4 );
setEffScaleKey( spep_2 -3 + 236, ctgasha, 3.62, 4.02 );
setEffScaleKey( spep_2 -3 + 238, ctgasha, 3.63, 4.03 );
setEffScaleKey( spep_2 -3 + 240, ctgasha, 3.63, 4.04 );
setEffScaleKey( spep_2 -3 + 244, ctgasha, 3.63, 4.04 );

setEffRotateKey( spep_2 -3 + 204, ctgasha, 0 );
setEffRotateKey( spep_2 -3 + 244, ctgasha, 0 );

setEffAlphaKey( spep_2 -3 + 204, ctgasha, 255 );
setEffAlphaKey( spep_2 -3 + 210, ctgasha, 255 );
setEffAlphaKey( spep_2 -3 + 212, ctgasha, 227 );
setEffAlphaKey( spep_2 -3 + 214, ctgasha, 201 );
setEffAlphaKey( spep_2 -3 + 216, ctgasha, 177 );
setEffAlphaKey( spep_2 -3 + 218, ctgasha, 155 );
setEffAlphaKey( spep_2 -3 + 220, ctgasha, 134 );
setEffAlphaKey( spep_2 -3 + 222, ctgasha, 115 );
setEffAlphaKey( spep_2 -3 + 224, ctgasha, 98 );
setEffAlphaKey( spep_2 -3 + 226, ctgasha, 83 );
setEffAlphaKey( spep_2 -3 + 228, ctgasha, 70 );
setEffAlphaKey( spep_2 -3 + 230, ctgasha, 58 );
setEffAlphaKey( spep_2 -3 + 232, ctgasha, 48 );
setEffAlphaKey( spep_2 -3 + 234, ctgasha, 40 );
setEffAlphaKey( spep_2 -3 + 236, ctgasha, 34 );
setEffAlphaKey( spep_2 -3 + 238, ctgasha, 30 );
setEffAlphaKey( spep_2 -3 + 240, ctgasha, 27 );
setEffAlphaKey( spep_2 -3 + 242, ctgasha, 26 );
setEffAlphaKey( spep_2 -3 + 244, ctgasha, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 84, 1, 1 );
setDisp( spep_2 -3 + 184, 1, 0 );
setDisp( spep_2 -3 + 204, 1, 1 );
setDisp( spep_2 -3 + 222, 1, 0 );
changeAnime( spep_2 -3 + 84, 1, 102 );
changeAnime( spep_2 -3 + 144, 1, 107 );

setMoveKey( spep_2 -3 + 84, 1, 2058.6, -2281.4 , 0 );
setMoveKey( spep_2 -3 + 83, 1, 2058.6, -2281.4 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 1341.9, -1463.1 , 0 );
setMoveKey( spep_2 -3 + 87, 1, 1341.9, -1463.1 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 951.7, -1039.3 , 0 );
setMoveKey( spep_2 -3 + 89, 1, 951.7, -1039.3 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 763.3, -816.6 , 0 );
setMoveKey( spep_2 -3 + 91, 1, 763.3, -816.6 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 651.4, -659.2 , 0 );
setMoveKey( spep_2 -3 + 93, 1, 651.4, -659.2 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 521.5, -528.2 , 0 );
setMoveKey( spep_2 -3 + 95, 1, 521.5, -528.2 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 465.9, -458.9 , 0 );
setMoveKey( spep_2 -3 + 97, 1, 465.9, -458.9 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 432.6, -404.6 , 0 );
setMoveKey( spep_2 -3 + 99, 1, 432.6, -404.6 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 423.8, -388.8 , 0 );
setMoveKey( spep_2 -3 + 101, 1, 423.8, -388.8 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 355.5, -301.2 , 0 );
setMoveKey( spep_2 -3 + 103, 1, 355.5, -301.2 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 330, -303.5 , 0 );
setMoveKey( spep_2 -3 + 105, 1, 330, -303.5 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 328.2, -299.3 , 0 );
setMoveKey( spep_2 -3 + 107, 1, 328.2, -299.3 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 293.3, -251.6 , 0 );
setMoveKey( spep_2 -3 + 109, 1, 293.3, -251.6 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 296, -253.8 , 0 );
setMoveKey( spep_2 -3 + 111, 1, 296, -253.8 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 292.4, -273.7 , 0 );
setMoveKey( spep_2 -3 + 113, 1, 292.4, -273.7 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 254.8, -235.4 , 0 );  --画面揺れる
setMoveKey( spep_2 -3 + 115, 1, 254.8, -235.4 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 258.1, -236.1 , 0 );
setMoveKey( spep_2 -3 + 117, 1, 258.1, -236.1 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 265, -245.2 , 0 );
setMoveKey( spep_2 -3 + 119, 1, 265, -245.2 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 260.5, -235.8 , 0 );
setMoveKey( spep_2 -3 + 121, 1, 260.5, -235.8 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 258.6, -232.7 , 0 );
setMoveKey( spep_2 -3 + 123, 1, 258.6, -232.7 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 262.4, -237.6 , 0 );
setMoveKey( spep_2 -3 + 125, 1, 262.4, -237.6 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 260.4, -246.1 , 0 );
setMoveKey( spep_2 -3 + 127, 1, 260.4, -246.1 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 262.3, -238.6 , 0 );
setMoveKey( spep_2 -3 + 129, 1, 262.3, -238.6 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 267.2, -240.8 , 0 );
setMoveKey( spep_2 -3 + 131, 1, 267.2, -240.8 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 272.8, -242.3 , 0 );
setMoveKey( spep_2 -3 + 133, 1, 272.8, -242.3 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 267.9, -240.8 , 0 );
setMoveKey( spep_2 -3 + 135, 1, 267.9, -240.8 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 270.9, -242.1 , 0 );
setMoveKey( spep_2 -3 + 137, 1, 270.9, -242.1 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 272.6, -245 , 0 );
setMoveKey( spep_2 -3 + 139, 1, 272.6, -245 , 0 );  --揺れ止める
setMoveKey( spep_2 -3 + 140, 1, 297.7, -305.5 , 0 );
setMoveKey( spep_2 -3 + 141, 1, 297.7, -305.5 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 296, -361.3 , 0 );
setMoveKey( spep_2 -3 + 143, 1, 296, -361.3 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 441.7, -384.2 , 0 );
setMoveKey( spep_2 -3 + 145, 1, 441.7, -384.2 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 171.9, -261.9 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 232.5, -306.5 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 150.9, -267 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 191.4, -298.5 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 145.7, -243.5 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 151.9, -250.6 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 146.5, -252.6 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 155, -245.2 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 155.5, -253.7 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 159.2, -272.6 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 166.9, -259.6 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 174, -283.2 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 210.3, -295.9 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 230.4, -304.7 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 261, -342.5 , 0 );
setMoveKey( spep_2 -3 + 176, 1, 365.1, -442.9 , 0 );
setMoveKey( spep_2 -3 + 178, 1, 444.7, -509.3 , 0 );
setMoveKey( spep_2 -3 + 180, 1, 467.1, -512.5 , 0 );
setMoveKey( spep_2 -3 + 182, 1, 475, -537.8 , 0 );
setMoveKey( spep_2 -3 + 184, 1, 475, -537.8 , 0 );
setMoveKey( spep_2 -3 + 204, 1, 25.9, -64.9 , 0 );
setMoveKey( spep_2 -3 + 206, 1, 33.5, -58.7 , 0 );
setMoveKey( spep_2 -3 + 208, 1, 67.9, -84.7 , 0 );
setMoveKey( spep_2 -3 + 210, 1, 128.8, -113.6 , 0 );
setMoveKey( spep_2 -3 + 212, 1, 219, -205.1 , 0 );
setMoveKey( spep_2 -3 + 214, 1, 408.7, -319 , 0 );
setMoveKey( spep_2 -3 + 216, 1, 602.3, -453.2 , 0 );
setMoveKey( spep_2 -3 + 218, 1, 732.1, -543.3 , 0 );
setMoveKey( spep_2 -3 + 220, 1, 830.6, -611.6 , 0 );
setMoveKey( spep_2 -3 + 222, 1, 909.6, -666.4 , 0 );

setScaleKey( spep_2 -3 + 84, 1, 13.74, 13.74 );
setScaleKey( spep_2 -3 + 85, 1, 13.74, 13.74 );
setScaleKey( spep_2 -3 + 86, 1, 9.94, 9.94 );
setScaleKey( spep_2 -3 + 87, 1, 9.94, 9.94 );
setScaleKey( spep_2 -3 + 88, 1, 8.07, 8.07 );
setScaleKey( spep_2 -3 + 89, 1, 8.07, 8.07 );
setScaleKey( spep_2 -3 + 90, 1, 6.89, 6.89 );
setScaleKey( spep_2 -3 + 91, 1, 6.89, 6.89 );
setScaleKey( spep_2 -3 + 92, 1, 6.11, 6.11 );
setScaleKey( spep_2 -3 + 93, 1, 6.11, 6.11 );
setScaleKey( spep_2 -3 + 94, 1, 5.56, 5.56 );
setScaleKey( spep_2 -3 + 95, 1, 5.56, 5.56 );
setScaleKey( spep_2 -3 + 96, 1, 5.17, 5.17 );
setScaleKey( spep_2 -3 + 97, 1, 5.17, 5.17 );
setScaleKey( spep_2 -3 + 98, 1, 4.82, 4.82 );
setScaleKey( spep_2 -3 + 99, 1, 4.82, 4.82 );
setScaleKey( spep_2 -3 + 100, 1, 4.55, 4.55 );
setScaleKey( spep_2 -3 + 101, 1, 4.55, 4.55 );
setScaleKey( spep_2 -3 + 102, 1, 4.4, 4.4 );
setScaleKey( spep_2 -3 + 103, 1, 4.4, 4.4 );
setScaleKey( spep_2 -3 + 104, 1, 4.26, 4.26 );
setScaleKey( spep_2 -3 + 105, 1, 4.26, 4.26 );
setScaleKey( spep_2 -3 + 106, 1, 4.13, 4.13 );
setScaleKey( spep_2 -3 + 107, 1, 4.13, 4.13 );
setScaleKey( spep_2 -3 + 108, 1, 4.06, 4.06 );
setScaleKey( spep_2 -3 + 109, 1, 4.06, 4.06 );
setScaleKey( spep_2 -3 + 110, 1, 3.98, 3.98 );
setScaleKey( spep_2 -3 + 111, 1, 3.98, 3.98 );
setScaleKey( spep_2 -3 + 112, 1, 3.92, 3.92 );
setScaleKey( spep_2 -3 + 113, 1, 3.92, 3.92 );
setScaleKey( spep_2 -3 + 114, 1, 3.9, 3.9 );
setScaleKey( spep_2 -3 + 115, 1, 3.9, 3.9 );
setScaleKey( spep_2 -3 + 116, 1, 3.89, 3.89 );
setScaleKey( spep_2 -3 + 118, 1, 3.84, 3.84 );
setScaleKey( spep_2 -3 + 120, 1, 3.86, 3.86 );
setScaleKey( spep_2 -3 + 124, 1, 3.86, 3.86 );
setScaleKey( spep_2 -3 + 126, 1, 3.85, 3.85 );
setScaleKey( spep_2 -3 + 128, 1, 3.89, 3.89 );
setScaleKey( spep_2 -3 + 132, 1, 3.89, 3.89 );
setScaleKey( spep_2 -3 + 134, 1, 3.92, 3.92 );
setScaleKey( spep_2 -3 + 136, 1, 3.92, 3.92 );
setScaleKey( spep_2 -3 + 138, 1, 4.01, 4.01 );
setScaleKey( spep_2 -3 + 139, 1, 4.01, 4.01 );
setScaleKey( spep_2 -3 + 140, 1, 4.19, 4.19 );
setScaleKey( spep_2 -3 + 141, 1, 4.19, 4.19 );
setScaleKey( spep_2 -3 + 142, 1, 4.66, 4.66 );
setScaleKey( spep_2 -3 + 143, 1, 4.66, 4.66 );
setScaleKey( spep_2 -3 + 144, 1, 1.82, 1.82 );
setScaleKey( spep_2 -3 + 145, 1, 1.82, 1.82 );
setScaleKey( spep_2 -3 + 146, 1, 1.42, 1.42 );
setScaleKey( spep_2 -3 + 148, 1, 1.49, 1.49 );
setScaleKey( spep_2 -3 + 150, 1, 1.32, 1.32 );
setScaleKey( spep_2 -3 + 152, 1, 1.29, 1.29 );
setScaleKey( spep_2 -3 + 154, 1, 1.29, 1.29 );
setScaleKey( spep_2 -3 + 156, 1, 1.27, 1.27 );
setScaleKey( spep_2 -3 + 160, 1, 1.27, 1.27 );
setScaleKey( spep_2 -3 + 162, 1, 1.28, 1.28 );
setScaleKey( spep_2 -3 + 164, 1, 1.29, 1.29 );
setScaleKey( spep_2 -3 + 166, 1, 1.31, 1.31 );
setScaleKey( spep_2 -3 + 168, 1, 1.34, 1.34 );
setScaleKey( spep_2 -3 + 170, 1, 1.39, 1.39 );
setScaleKey( spep_2 -3 + 172, 1, 1.44, 1.44 );
setScaleKey( spep_2 -3 + 174, 1, 1.54, 1.54 );
setScaleKey( spep_2 -3 + 176, 1, 1.75, 1.75 );
setScaleKey( spep_2 -3 + 178, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 180, 1, 1.95, 1.95 );
setScaleKey( spep_2 -3 + 182, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 184, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 204, 1, 0.26, 0.26 );
setScaleKey( spep_2 -3 + 206, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 208, 1, 0.26, 0.26 );
setScaleKey( spep_2 -3 + 210, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 212, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 214, 1, 0.36, 0.36 );
setScaleKey( spep_2 -3 + 216, 1, 0.42, 0.42 );
setScaleKey( spep_2 -3 + 218, 1, 0.45, 0.45 );
setScaleKey( spep_2 -3 + 220, 1, 0.48, 0.48 );
setScaleKey( spep_2 -3 + 222, 1, 0.51, 0.51 );

setRotateKey( spep_2 -3 + 84, 1, 10 );
setRotateKey( spep_2 -3 + 142, 1, 10 );
setRotateKey( spep_2 -3 + 143, 1, 10 );
setRotateKey( spep_2 -3 + 144, 1, -75 );
setRotateKey( spep_2 -3 + 145, 1, -75 );
setRotateKey( spep_2 -3 + 146, 1, -75.9 );
setRotateKey( spep_2 -3 + 148, 1, -76 );
setRotateKey( spep_2 -3 + 158, 1, -76 );
setRotateKey( spep_2 -3 + 160, 1, -75.9 );
setRotateKey( spep_2 -3 + 162, 1, -75.9 );
setRotateKey( spep_2 -3 + 164, 1, -75.6 );
setRotateKey( spep_2 -3 + 166, 1, -74.9 );
setRotateKey( spep_2 -3 + 168, 1, -74 );
setRotateKey( spep_2 -3 + 170, 1, -72.6 );
setRotateKey( spep_2 -3 + 172, 1, -70.6 );
setRotateKey( spep_2 -3 + 174, 1, -67.3 );
setRotateKey( spep_2 -3 + 176, 1, -58 );
setRotateKey( spep_2 -3 + 178, 1, -49.4 );
setRotateKey( spep_2 -3 + 180, 1, -45.9 );
setRotateKey( spep_2 -3 + 182, 1, -45.1 );
setRotateKey( spep_2 -3 + 184, 1, -45.1 );
setRotateKey( spep_2 -3 + 204, 1, 0 );
setRotateKey( spep_2 -3 + 206, 1, 0.2 );
setRotateKey( spep_2 -3 + 208, 1, 0.7 );
setRotateKey( spep_2 -3 + 210, 1, 1.6 );
setRotateKey( spep_2 -3 + 212, 1, 3.1 );
setRotateKey( spep_2 -3 + 214, 1, 5.9 );
setRotateKey( spep_2 -3 + 216, 1, 8.9 );
setRotateKey( spep_2 -3 + 218, 1, 10.8 );
setRotateKey( spep_2 -3 + 220, 1, 12.3 );
setRotateKey( spep_2 -3 + 222, 1, 13.5 );

-- ** 音 ** --
--振りかぶり
playSe( spep_2 + 28, 1004 ); 
playSe( spep_2 + 30, 8 ); 

--間
SE3 = playSe( spep_2 + 54, 17 ); 
setSeVolume( spep_2 + 54, 17, 0 );
setSeVolume( spep_2 + 89, 17, 3 );
setSeVolume( spep_2 + 90, 17, 8 );
setSeVolume( spep_2 + 91, 17, 14 );
setSeVolume( spep_2 + 92, 17, 20 );
setSeVolume( spep_2 + 93, 17, 25 );
setSeVolume( spep_2 + 120, 17, 25 );
setSeVolume( spep_2 + 126, 17, 16 );
setSeVolume( spep_2 + 130, 17, 8 );
setSeVolume( spep_2 + 138, 17, 0 );
stopSe(spep_2 + 138, SE3, 0 );

playSe( spep_2 + 71, 1072 ); 

--強パンチ
playSe( spep_2 + 138, 1003 ); 
playSe( spep_2 + 139, 1189 ); 
playSe( spep_2 + 148, 1120 ); 
setSeVolume( spep_2 + 148, 1120, 89 );
playSe( spep_2 + 148, 1010 ); 
setSeVolume( spep_2 + 148, 1010, 71 );

--飛んでいく
playSe( spep_2 + 156, 1072 ); 
SE4 = playSe( spep_2 + 159, 1183 ); 
setSeVolume( spep_2 + 159, 1183, 45 );
stopSe(spep_2 + 203, SE4, 0 );

--窓の外に吹っ飛ぶ
playSe( spep_2 + 197, 1041 ); 
setSeVolume( spep_2 + 197, 1041, 71 );
playSe( spep_2 + 200, 1054 ); 
setSeVolume( spep_2 + 200, 1054, 112 );

SE5 = playSe( spep_2 + 203, 1023 ); 
setSeVolume( spep_2 + 203, 1023, 45 );
setSeVolume( spep_2 + 240, 1023, 45 );
setSeVolume( spep_2 + 246, 1023, 40 );
setSeVolume( spep_2 + 252, 1023, 36 );
setSeVolume( spep_2 + 258, 1023, 30 );
setSeVolume( spep_2 + 262, 1023, 26 );
setSeVolume( spep_2 + 268, 1023, 18 );
setSeVolume( spep_2 + 270, 1023, 12 );
setSeVolume( spep_2 + 276, 1023, 0 );
stopSe(spep_2 + 276, SE5, 0 );

SE6 = playSe( spep_2 + 203, 1159 ); 
setSeVolume( spep_2 + 203, 1159, 32 );
setSeVolume( spep_2 + 244, 1159, 30 );
setSeVolume( spep_2 + 250, 1159, 28 );
setSeVolume( spep_2 + 256, 1159, 24 );
setSeVolume( spep_2 + 262, 1159, 20 );
setSeVolume( spep_2 + 270, 1159, 16 );
setSeVolume( spep_2 + 274, 1159, 12 );
setSeVolume( spep_2 + 280, 1159, 6 );
setSeVolume( spep_2 + 283, 1159, 0 );
stopSe(spep_2 + 283, SE6, 0 );

--腕アップ
playSe( spep_2 + 260, 1190 ); 
setSeVolume( spep_2 + 260, 1190, 0 );
setSeVolume( spep_2 + 275, 1190, 5 );
setSeVolume( spep_2 + 277, 1190, 18 );
setSeVolume( spep_2 + 280, 1190, 32 );

playSe( spep_2 + 273, 1006 ); 
setSeVolume( spep_2 + 273, 1006, 71 );

playSe( spep_2 + 277, 1007 ); 
setSeVolume( spep_2 + 277, 1007, 56 );

SE7 = playSe( spep_2 + 284, 1138 ); 
stopSe(spep_2 + 300, SE7, 0 );

--髪の毛ふわってなる
playSe( spep_2 + 394, 8 ); 
setSeVolume( spep_2 + 394, 8, 50 );

SE8 = playSe( spep_2 + 394, 1116 ); 
setSeVolume( spep_2 + 394, 1116, 79 );
setSeVolume( spep_2 + 420, 1116, 79 );
setSeVolume( spep_2 + 424, 1116, 56 );
setSeVolume( spep_2 + 428, 1116, 48 );
setSeVolume( spep_2 + 432, 1116, 34 );
setSeVolume( spep_2 + 436, 1116, 10 );
setSeVolume( spep_2 + 440, 1116, 0 );
stopSe(spep_2 + 440, SE8, 0 );

playSe( spep_2 + 394, 1182 ); 
setSeVolume( spep_2 + 394, 1182, 0 );
setSeVolume( spep_2 + 399, 1182, 0 );
setSeVolume( spep_2 + 400, 1182, 12 );
setSeVolume( spep_2 + 402, 1182, 46 );
setSeVolume( spep_2 + 404, 1182, 78 );
setSeVolume( spep_2 + 406, 1182, 100 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 358 );
endPhase( spep_2 + 472 );

end