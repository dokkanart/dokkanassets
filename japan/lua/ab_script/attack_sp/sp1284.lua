--超サイヤ人トランクス(未来)_ギャリック砲

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
SP_01 = 153417; --迫る　手前
SP_02 = 153418; --迫る　奥
SP_03 = 153419; --構え
SP_04 = 153420; --発射　手前
SP_05 = 153421; --発射　奥
SP_06 = 153422; --爆発

--敵側
SP_01r = 153423; --迫る　手前

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
-- 迫る(426F)
------------------------------------------------------
spep_0 = 0;
a = 3;

-- ** エフェクト等 ** --
semaru_f = entryEffectLife( spep_0 + 0, SP_01, 426, 0x100, -1, 0, 0, 0 );  --迫る　手前(ef_001)
setEffMoveKey( spep_0 + 0, semaru_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 426, semaru_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, semaru_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 426, semaru_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, semaru_f, 0 );
setEffRotateKey( spep_0 + 426, semaru_f, 0 );
setEffAlphaKey( spep_0 + 0, semaru_f, 255 );
setEffAlphaKey( spep_0 + 426, semaru_f, 255 );

semaru_b = entryEffectLife( spep_0 + 0, SP_02, 426, 0x80, -1, 0, 0, 0 );  --迫る　奥(ef_002)
setEffMoveKey( spep_0 + 0, semaru_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 426, semaru_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, semaru_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 426, semaru_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, semaru_b, 0 );
setEffRotateKey( spep_0 + 426, semaru_b, 0 );
setEffAlphaKey( spep_0 + 0, semaru_b, 255 );
setEffAlphaKey( spep_0 + 426, semaru_b, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 68, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 68, 20 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 68, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.07, 1.57 );
setEffScaleKey( spep_0 + 68, shuchusen1, 1.07, 1.57 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 68, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 48, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 50, shuchusen1, 230 );
setEffAlphaKey( spep_0 + 52, shuchusen1, 204 );
setEffAlphaKey( spep_0 + 54, shuchusen1, 179 );
setEffAlphaKey( spep_0 + 56, shuchusen1, 153 );
setEffAlphaKey( spep_0 + 58, shuchusen1, 128 );
setEffAlphaKey( spep_0 + 60, shuchusen1, 102 );
setEffAlphaKey( spep_0 + 62, shuchusen1, 77 );
setEffAlphaKey( spep_0 + 64, shuchusen1, 51 );
setEffAlphaKey( spep_0 + 66, shuchusen1, 25 );
setEffAlphaKey( spep_0 + 68, shuchusen1, 0 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_0 + 0,  10012, 40, 0x100, -1, 0, 78.7, 260.5 );  --ズオッ
setEffShake( spep_0 + 6, ctzuo, 26, 25 );

setEffMoveKey( spep_0 + 0, ctzuo, 78.7, 260.5 , 0 );
setEffMoveKey( spep_0 + 2, ctzuo, 105, 288.6 , 0 );
setEffMoveKey( spep_0 + 4, ctzuo, 117.9, 330.1 , 0 );
setEffMoveKey( spep_0 + 6, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 32, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 34, ctzuo, 167.1, 345 , 0 );
setEffMoveKey( spep_0 + 36, ctzuo, 153.1, 368.5 , 0 );
setEffMoveKey( spep_0 + 38, ctzuo, 193.8, 337.2 , 0 );
setEffMoveKey( spep_0 + 40, ctzuo, 207.3, 333.2 , 0 );

setEffScaleKey( spep_0 + 0, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_0 + 2, ctzuo, 1.13, 1.13 );
setEffScaleKey( spep_0 + 4, ctzuo, 1.94, 1.94 );
setEffScaleKey( spep_0 + 6, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_0 + 32, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_0 + 34, ctzuo, 3.68, 3.68 );
setEffScaleKey( spep_0 + 36, ctzuo, 4.67, 4.67 );
setEffScaleKey( spep_0 + 38, ctzuo, 5.63, 5.63 );
setEffScaleKey( spep_0 + 40, ctzuo, 6.62, 6.62 );

setEffRotateKey( spep_0 + 0, ctzuo, 27.2 );
setEffRotateKey( spep_0 + 40, ctzuo, 27.2 );

setEffAlphaKey( spep_0 + 0, ctzuo, 255 );
setEffAlphaKey( spep_0 + 32, ctzuo, 255 );
setEffAlphaKey( spep_0 + 34, ctzuo, 191 );
setEffAlphaKey( spep_0 + 36, ctzuo, 128 );
setEffAlphaKey( spep_0 + 38, ctzuo, 64 );
setEffAlphaKey( spep_0 + 40, ctzuo, 0 );

ctba = entryEffectLife( spep_0 + 94 -a,  10022, 18, 0x100, -1, 0, 156, 356.6 );  --バッ
setEffMoveKey( spep_0 + 94 -a, ctba, 156, 356.6 , 0 );
setEffMoveKey( spep_0 + 96 -a, ctba, 168.3, 364.7 , 0 );
setEffMoveKey( spep_0 + 98 -a, ctba, 156.1, 356.3 , 0 );
setEffMoveKey( spep_0 + 100 -a, ctba, 168.9, 365.6 , 0 );
setEffMoveKey( spep_0 + 102 -a, ctba, 156, 356.4 , 0 );
setEffMoveKey( spep_0 + 104 -a, ctba, 166.1, 361.9 , 0 );
setEffMoveKey( spep_0 + 106 -a, ctba, 156, 356.5 , 0 );
setEffMoveKey( spep_0 + 108 -a, ctba, 165.8, 361.7 , 0 );
setEffMoveKey( spep_0 + 110 -a, ctba, 156, 356.4 , 0 );
setEffMoveKey( spep_0 + 112 -a, ctba, 165.6, 361.5 , 0 );

setEffScaleKey( spep_0 + 94 -a, ctba, 1.45, 1.45 );
setEffScaleKey( spep_0 + 96 -a, ctba, 1.85, 1.85 );
setEffScaleKey( spep_0 + 98 -a, ctba, 2.26, 2.26 );
setEffScaleKey( spep_0 + 100 -a, ctba, 1.98, 1.98 );
setEffScaleKey( spep_0 + 102 -a, ctba, 1.71, 1.71 );
setEffScaleKey( spep_0 + 104 -a, ctba, 1.43, 1.43 );
setEffScaleKey( spep_0 + 106 -a, ctba, 1.41, 1.41 );
setEffScaleKey( spep_0 + 108 -a, ctba, 1.4, 1.4 );
setEffScaleKey( spep_0 + 110 -a, ctba, 1.38, 1.38 );
setEffScaleKey( spep_0 + 112 -a, ctba, 1.36, 1.36 );

setEffRotateKey( spep_0 + 94 -a, ctba, 25 );
setEffRotateKey( spep_0 + 96 -a, ctba, 19.3 );
setEffRotateKey( spep_0 + 98 -a, ctba, 13.5 );
setEffRotateKey( spep_0 + 100 -a, ctba, 17.3 );
setEffRotateKey( spep_0 + 102 -a, ctba, 21.2 );
setEffRotateKey( spep_0 + 104 -a, ctba, 25 );

setEffAlphaKey( spep_0 + 94 -a, ctba, 255 );
setEffAlphaKey( spep_0 + 104 -a, ctba, 255 );
setEffAlphaKey( spep_0 + 106 -a, ctba, 191 );
setEffAlphaKey( spep_0 + 108 -a, ctba, 128 );
setEffAlphaKey( spep_0 + 110 -a, ctba, 64 );
setEffAlphaKey( spep_0 + 112 -a, ctba, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 146 -a, 1, 1 );
changeAnime( spep_0 + 146 -a, 1, 100 );

setMoveKey( spep_0 + 146 -a, 1, 212.8, 364 , 0 );
setMoveKey( spep_0 + 148 -a, 1, 209.4, 359 , 0 );
setMoveKey( spep_0 + 150 -a, 1, 204.9, 352.5 , 0 );
setMoveKey( spep_0 + 152 -a, 1, 199.2, 344.2 , 0 );
setMoveKey( spep_0 + 154 -a, 1, 192.4, 334.4 , 0 );
setMoveKey( spep_0 + 156 -a, 1, 184.5, 322.9 , 0 );
setMoveKey( spep_0 + 158 -a, 1, 175.5, 309.7 , 0 );
setMoveKey( spep_0 + 160 -a, 1, 165.3, 295 , 0 );
setMoveKey( spep_0 + 162 -a, 1, 154, 278.5 , 0 );
setMoveKey( spep_0 + 164 -a, 1, 141.6, 260.5 , 0 );
setMoveKey( spep_0 + 166 -a, 1, 128, 240.7 , 0 );
setMoveKey( spep_0 + 168 -a, 1, 109.3, 199.4 , 0 );

setScaleKey( spep_0 + 146 -a, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 148 -a, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 150 -a, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 152 -a, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 154 -a, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 156 -a, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 158 -a, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 160 -a, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 162 -a, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 164 -a, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 166 -a, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 168 -a, 1, 0.63, 0.63 );

setRotateKey( spep_0 + 146 -a, 1, 0 );
setRotateKey( spep_0 + 146 -a, 1, 0 );

-- ** 音 ** --
playSe( spep_0 + 2, 8 );  --迫る
playSe( spep_0 + 94 -a, 1003 );  --剣投げる
playSe( spep_0 + 112, 1018 );  --剣迫る

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 92 -a, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 146 -a, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 426, 0, 0, 0, 0, 255 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 166; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
changeAnime( SP_dodge + 0, 1, 100 );

setMoveKey( SP_dodge + 0, 1, 109.3, 199.4 , 0 );
setMoveKey( SP_dodge + 2, 1, 97.5, 196.4 , 0 );
setMoveKey( SP_dodge + 4, 1, 68.6, 167.7 , 0 );
setMoveKey( SP_dodge + 6, 1, 62.6, 145.4 , 0 );
setMoveKey( SP_dodge + 8, 1, 39.4, 105.5 , 0 );
setMoveKey( SP_dodge + 10, 1, 39.4, 105.5 , 0 );

setScaleKey( SP_dodge + 0, 1, 0.63, 0.63 );
setScaleKey( SP_dodge + 2, 1, 0.7, 0.7 );
setScaleKey( SP_dodge + 4, 1, 0.77, 0.77 );
setScaleKey( SP_dodge + 6, 1, 0.85, 0.85 );
setScaleKey( SP_dodge + 8, 1, 0.94, 0.94 );
setScaleKey( SP_dodge + 10, 1, 0.94, 0.94 );

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

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_0 + 218 -a,  906, 14, 0x100, -1, 0, 0, -14.4 );  --集中線
setEffShake( spep_0 + 218 -a, shuchusen2, 14, 20 );

setEffMoveKey( spep_0 + 218 -a, shuchusen2, 0, -14.4 , 0 );
setEffMoveKey( spep_0 + 232 -a, shuchusen2, 0, -14.4 , 0 );

setEffScaleKey( spep_0 + 218 -a, shuchusen2, 1.21, 1.52 );
setEffScaleKey( spep_0 + 232 -a, shuchusen2, 1.21, 1.52 );

setEffRotateKey( spep_0 + 218 -a, shuchusen2, 0 );
setEffRotateKey( spep_0 + 232 -a, shuchusen2, 0 );

setEffAlphaKey( spep_0 + 218 -a, shuchusen2, 255 );
setEffAlphaKey( spep_0 + 232 -a, shuchusen2, 255 );

shuchusen3 = entryEffectLife( spep_0 + 294 -a,  906, 12, 0x100, -1, 0, 0, -14.4 );  --集中線
setEffShake( spep_0 + 294 -a, shuchusen3, 12, 20 );

setEffMoveKey( spep_0 + 294 -a, shuchusen3, 0, -14.4 , 0 );
setEffMoveKey( spep_0 + 306 -a, shuchusen3, 0, -14.4 , 0 );

setEffScaleKey( spep_0 + 294 -a, shuchusen3, 1.21, 1.52 );
setEffScaleKey( spep_0 + 294 -a, shuchusen3, 1.21, 1.52 );

setEffRotateKey( spep_0 + 294 -a, shuchusen3, 0 );
setEffRotateKey( spep_0 + 306 -a, shuchusen3, 0 );

setEffAlphaKey( spep_0 + 294 -a, shuchusen3, 255 );
setEffAlphaKey( spep_0 + 300 -a, shuchusen3, 255 );
setEffAlphaKey( spep_0 + 302 -a, shuchusen3, 170 );
setEffAlphaKey( spep_0 + 304 -a, shuchusen3, 85 );
setEffAlphaKey( spep_0 + 306 -a, shuchusen3, 0 );

-- ** 書き文字エントリー ** --
ctzun = entryEffectLife( spep_0 + 218 -a,  10016, 30, 0x100, -1, 0, -14, 348.5 );  --ズン
setEffShake( spep_0 + 224 -a, ctzun, 18, 20 );

setEffMoveKey( spep_0 + 218 -a, ctzun, -14, 348.5 , 0 );
setEffMoveKey( spep_0 + 220 -a, ctzun, -14.1, 348.4 , 0 );
setEffMoveKey( spep_0 + 222 -a, ctzun, -22.2, 352.3 , 0 );
setEffMoveKey( spep_0 + 224 -a, ctzun, -20.9, 351.6 , 0 );
setEffMoveKey( spep_0 + 242 -a, ctzun, -20.9, 351.6 , 0 );
setEffMoveKey( spep_0 + 244 -a, ctzun, -14.3, 348.3 , 0 );
setEffMoveKey( spep_0 + 246 -a, ctzun, -21.1, 351.5 , 0 );
setEffMoveKey( spep_0 + 248 -a, ctzun, -14.4, 348.4 , 0 );

setEffScaleKey( spep_0 + 218 -a, ctzun, 1.73, 1.73 );
setEffScaleKey( spep_0 + 220 -a, ctzun, 3.54, 3.54 );
setEffScaleKey( spep_0 + 222 -a, ctzun, 3.01, 3.01 );
setEffScaleKey( spep_0 + 224 -a, ctzun, 2.47, 2.47 );
setEffScaleKey( spep_0 + 228 -a, ctzun, 2.47, 2.47 );
setEffScaleKey( spep_0 + 230 -a, ctzun, 2.48, 2.48 );
setEffScaleKey( spep_0 + 236 -a, ctzun, 2.48, 2.48 );
setEffScaleKey( spep_0 + 238 -a, ctzun, 2.49, 2.49 );
setEffScaleKey( spep_0 + 242 -a, ctzun, 2.49, 2.49 );
setEffScaleKey( spep_0 + 244 -a, ctzun, 2.5, 2.5 );
setEffScaleKey( spep_0 + 246 -a, ctzun, 2.5, 2.5 );
setEffScaleKey( spep_0 + 248 -a, ctzun, 2.51, 2.51 );

setEffRotateKey( spep_0 + 218 -a, ctzun, -17.1 );
setEffRotateKey( spep_0 + 232 -a, ctzun, -17.1 );
setEffRotateKey( spep_0 + 234 -a, ctzun, -17.2 );
setEffRotateKey( spep_0 + 244 -a, ctzun, -17.2 );
setEffRotateKey( spep_0 + 246 -a, ctzun, -17.1 );
setEffRotateKey( spep_0 + 248 -a, ctzun, -17.1 );

setEffAlphaKey(spep_0 + 218 - a, ctzun, 0);
setEffAlphaKey(spep_0 + 219 - a, ctzun, 255);
setEffAlphaKey(spep_0 + 248 - a, ctzun, 255);

ctzuo2 = entryEffectLife( spep_0 + 296 -a,  10012, 46, 0x100, -1, 0, 78.7, 260.5 );  --ズオッ
setEffShake( spep_0 + 302 -a, ctzuo2, 32, 25 );

setEffMoveKey( spep_0 + 296 -a, ctzuo2, 78.7, 260.5 , 0 );
setEffMoveKey( spep_0 + 298 -a, ctzuo2, 105, 288.6 , 0 );
setEffMoveKey( spep_0 + 300 -a, ctzuo2, 117.9, 330.1 , 0 );
setEffMoveKey( spep_0 + 302 -a, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 334 -a, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 336 -a, ctzuo2, 145.5, 366.6 , 0 );
setEffMoveKey( spep_0 + 338 -a, ctzuo2, 180.5, 341.1 , 0 );
setEffMoveKey( spep_0 + 340 -a, ctzuo2, 160.8, 370.2 , 0 );
setEffMoveKey( spep_0 + 342 -a, ctzuo2, 168.5, 372 , 0 );

setEffScaleKey( spep_0 + 296 -a, ctzuo2, 0.34, 0.34 );
setEffScaleKey( spep_0 + 298 -a, ctzuo2, 1.13, 1.13 );
setEffScaleKey( spep_0 + 300 -a, ctzuo2, 1.94, 1.94 );
setEffScaleKey( spep_0 + 302 -a, ctzuo2, 2.73, 2.73 );
setEffScaleKey( spep_0 + 334 -a, ctzuo2, 2.73, 2.73 );
setEffScaleKey( spep_0 + 336 -a, ctzuo2, 3.68, 3.68 );
setEffScaleKey( spep_0 + 338 -a, ctzuo2, 4.67, 4.67 );
setEffScaleKey( spep_0 + 340 -a, ctzuo2, 5.63, 5.63 );
setEffScaleKey( spep_0 + 342 -a, ctzuo2, 6.62, 6.62 );

setEffRotateKey( spep_0 + 296 -a, ctzuo2, 27.2 );
setEffRotateKey( spep_0 + 342 -a, ctzuo2, 27.2 );

setEffAlphaKey( spep_0 + 296 -a, ctzuo2, 255 );
setEffAlphaKey( spep_0 + 334 -a, ctzuo2, 255 );
setEffAlphaKey( spep_0 + 336 -a, ctzuo2, 191 );
setEffAlphaKey( spep_0 + 338 -a, ctzuo2, 128 );
setEffAlphaKey( spep_0 + 340 -a, ctzuo2, 64 );
setEffAlphaKey( spep_0 + 342 -a, ctzuo2, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 426, 1, 0 );
changeAnime( spep_0 + 178 -a, 1, 104 );
changeAnime( spep_0 + 219 -a, 1, 108 );
changeAnime( spep_0 + 220 -a, 1, 108 );

setMoveKey( spep_0 + 170 -a, 1, 97.5, 196.4 , 0 );
setMoveKey( spep_0 + 172 -a, 1, 68.6, 167.7 , 0 );
setMoveKey( spep_0 + 174 -a, 1, 62.6, 145.4 , 0 );
setMoveKey( spep_0 + 176 -a, 1, 39.4, 105.5 , 0 );
setMoveKey( spep_0 + 177 -a, 1, 39.4, 105.5 , 0 );
setMoveKey( spep_0 + 178 -a, 1, 48, 122.4 , 0 );
setMoveKey( spep_0 + 179 -a, 1, 48, 122.4 , 0 );
setMoveKey( spep_0 + 180 -a, 1, 90.9, 145.6 , 0 );
setMoveKey( spep_0 + 182 -a, 1, 89.5, 144.1 , 0 );
setMoveKey( spep_0 + 184 -a, 1, 71.4, 125.9 , 0 );
setMoveKey( spep_0 + 186 -a, 1, 60.7, 131.1 , 0 );
setMoveKey( spep_0 + 188 -a, 1, 49.9, 128.3 , 0 );
setMoveKey( spep_0 + 190 -a, 1, 63.1, 133.4 , 0 );
setMoveKey( spep_0 + 192 -a, 1, 60.3, 130.6 , 0 );
setMoveKey( spep_0 + 194 -a, 1, 65.5, 135.8 , 0 );
setMoveKey( spep_0 + 196 -a, 1, 66.7, 137 , 0 );
setMoveKey( spep_0 + 198 -a, 1, 67.8, 138.1 , 0 );
setMoveKey( spep_0 + 200 -a, 1, 69, 139.3 , 0 );
setMoveKey( spep_0 + 202 -a, 1, 70.2, 140.5 , 0 );
setMoveKey( spep_0 + 204 -a, 1, 71.4, 141.7 , 0 );
setMoveKey( spep_0 + 206 -a, 1, 72.6, 142.8 , 0 );
setMoveKey( spep_0 + 208 -a, 1, 73.8, 144 , 0 );
setMoveKey( spep_0 + 210 -a, 1, 74.9, 145.2 , 0 );
setMoveKey( spep_0 + 212 -a, 1, 76.1, 146.4 , 0 );
setMoveKey( spep_0 + 214 -a, 1, 73.3, 123.5 , 0 );
setMoveKey( spep_0 + 216 -a, 1, 78.5, 148.7 , 0 );
setMoveKey( spep_0 + 217 -a, 1, 78.5, 148.7 , 0 );
setMoveKey( spep_0 + 218 -a, 1, 17.9, 43.8 , 0 );
setMoveKey( spep_0 + 219 -a, 1, 17.9, 43.8 , 0 );
setMoveKey( spep_0 + 220 -a, 1, 33.9, 47.8 , 0 );
setMoveKey( spep_0 + 222 -a, 1, 29.9, 31.8 , 0 );
setMoveKey( spep_0 + 224 -a, 1, 33.9, 47.8 , 0 );
setMoveKey( spep_0 + 226 -a, 1, 21.9, 43.8 , 0 );
setMoveKey( spep_0 + 228 -a, 1, 33.9, 47.8 , 0 );
setMoveKey( spep_0 + 230 -a, 1, 29.9, 31.8 , 0 );
setMoveKey( spep_0 + 232 -a, 1, 33.9, 47.8 , 0 );
setMoveKey( spep_0 + 234 -a, 1, 17.9, 43.8 , 0 );
setMoveKey( spep_0 + 236 -a, 1, 35.5, 49.1 , 0 );
setMoveKey( spep_0 + 238 -a, 1, 33.1, 42.5 , 0 );
setMoveKey( spep_0 + 240 -a, 1, 38.8, 51.9 , 0 );
setMoveKey( spep_0 + 242 -a, 1, 36.4, 49.3 , 0 );
setMoveKey( spep_0 + 244 -a, 1, 42, 54.6 , 0 );
setMoveKey( spep_0 + 246 -a, 1, 43.6, 56 , 0 );
setMoveKey( spep_0 + 248 -a, 1, 45.2, 57.4 , 0 );
setMoveKey( spep_0 + 250 -a, 1, 46.8, 58.7 , 0 );
setMoveKey( spep_0 + 252 -a, 1, 47.5, 59 , 0 );
setMoveKey( spep_0 + 254 -a, 1, 51.6, 59.5 , 0 );
setMoveKey( spep_0 + 256 -a, 1, 55.5, 59.9 , 0 );
setMoveKey( spep_0 + 258 -a, 1, 59.2, 60.3 , 0 );
setMoveKey( spep_0 + 260 -a, 1, 62.7, 60.6 , 0 );
setMoveKey( spep_0 + 262 -a, 1, 63.2, 59.3 , 0 );
setMoveKey( spep_0 + 264 -a, 1, 63.7, 58 , 0 );
setMoveKey( spep_0 + 266 -a, 1, 64, 56.7 , 0 );
setMoveKey( spep_0 + 268 -a, 1, 64.3, 55.5 , 0 );
setMoveKey( spep_0 + 270 -a, 1, 64.5, 54.2 , 0 );
setMoveKey( spep_0 + 272 -a, 1, 60.6, 36.9 , 0 );
setMoveKey( spep_0 + 274 -a, 1, 64.6, 51.7 , 0 );
setMoveKey( spep_0 + 276 -a, 1, 48.6, 46.4 , 0 );
setMoveKey( spep_0 + 278 -a, 1, 64.5, 49.1 , 0 );
setMoveKey( spep_0 + 280 -a, 1, 60.3, 35.8 , 0 );
setMoveKey( spep_0 + 282 -a, 1, 64, 46.6 , 0 );
setMoveKey( spep_0 + 284 -a, 1, 51.7, 41.3 , 0 );
setMoveKey( spep_0 + 286 -a, 1, 63.2, 44 , 0 );
setMoveKey( spep_0 + 288 -a, 1, 58.7, 26.7 , 0 );
setMoveKey( spep_0 + 290 -a, 1, 62.1, 41.5 , 0 );
setMoveKey( spep_0 + 292 -a, 1, 49.4, 36.2 , 0 );
setMoveKey( spep_0 + 293 -a, 1, 50.4, 36.2 , 0 );
setMoveKey( spep_0 + 294 -a, 1, 188.1, 168.4 , 0 );
setMoveKey( spep_0 + 296 -a, 1, 139.8, 117 , 0 );
setMoveKey( spep_0 + 298 -a, 1, 114.8, 89.6 , 0 );
setMoveKey( spep_0 + 299 -a, 1, 114.8, 89.6 , 0 );
setMoveKey( spep_0 + 300 -a, 1, 52.8, 42.2 , 0 );
setMoveKey( spep_0 + 302 -a, 1, 65.5, 49.7 , 0 );
setMoveKey( spep_0 + 304 -a, 1, 61.3, 37.1 , 0 );
setMoveKey( spep_0 + 305 -a, 1, 61.3, 37.1 , 0 );
setMoveKey( spep_0 + 306 -a, 1, 111.6, 48.5 , 0 );
setMoveKey( spep_0 + 308 -a, 1, 108.4, 32 , 0 );
setMoveKey( spep_0 + 310 -a, 1, 113.2, 47.4 , 0 );
setMoveKey( spep_0 + 312 -a, 1, 101.9, 42.9 , 0 );
setMoveKey( spep_0 + 314 -a, 1, 114.6, 46.4 , 0 );
setMoveKey( spep_0 + 316 -a, 1, 111.2, 33.8 , 0 );
setMoveKey( spep_0 + 318 -a, 1, 115.8, 45.3 , 0 );
setMoveKey( spep_0 + 320 -a, 1, 108.4, 40.8 , 0 );
setMoveKey( spep_0 + 322 -a, 1, 116.9, 44.3 , 0 );
setMoveKey( spep_0 + 324 -a, 1, 113.5, 31.8 , 0 );
setMoveKey( spep_0 + 326 -a, 1, 117.9, 43.3 , 0 );
setMoveKey( spep_0 + 328 -a, 1, 110.4, 38.8 , 0 );
setMoveKey( spep_0 + 330 -a, 1, 118.8, 42.3 , 0 );
setMoveKey( spep_0 + 332 -a, 1, 115.2, 29.8 , 0 );
setMoveKey( spep_0 + 334 -a, 1, 119.6, 41.3 , 0 );
setMoveKey( spep_0 + 336 -a, 1, 111.9, 36.8 , 0 );
setMoveKey( spep_0 + 338 -a, 1, 120.2, 40.3 , 0 );
setMoveKey( spep_0 + 340 -a, 1, 116.5, 27.8 , 0 );
setMoveKey( spep_0 + 342 -a, 1, 120.7, 39.2 , 0 );
setMoveKey( spep_0 + 344 -a, 1, 116.9, 26.7 , 0 );
setMoveKey( spep_0 + 346 -a, 1, 121.1, 38.2 , 0 );
setMoveKey( spep_0 + 348 -a, 1, 109.3, 33.7 , 0 );
setMoveKey( spep_0 + 349 -a, 1, 109.3, 33.7 , 0 );
setMoveKey( spep_0 + 350 -a, 1, 121.4, 37.2 , 0 );
setMoveKey( spep_0 + 352 -a, 1, 117.5, 24.7 , 0 );
setMoveKey( spep_0 + 354 -a, 1, 121.5, 36.2 , 0 );
setMoveKey( spep_0 + 356 -a, 1, 113.5, 31.7 , 0 );
setMoveKey( spep_0 + 358 -a, 1, 121.5, 35.2 , 0 );
setMoveKey( spep_0 + 360 -a, 1, 117.5, 22.7 , 0 );
setMoveKey( spep_0 + 362 -a, 1, 121.4, 34.2 , 0 );
setMoveKey( spep_0 + 364 -a, 1, 113.3, 29.7 , 0 );
setMoveKey( spep_0 + 366 -a, 1, 121.2, 33.2 , 0 );
setMoveKey( spep_0 + 368 -a, 1, 121.1, 32.6 , 0 );
setMoveKey( spep_0 + 370 -a, 1, 120.9, 32.1 , 0 );
setMoveKey( spep_0 + 371 -a, 1, 120.9, 32.1 , 0 );
setMoveKey( spep_0 + 372 -a, 1, 388.4, 100.4 , 0 );
setMoveKey( spep_0 + 374 -a, 1, 328.5, 83.3 , 0 );
setMoveKey( spep_0 + 376 -a, 1, 267.6, 66.2 , 0 );
setMoveKey( spep_0 + 378 -a, 1, 205.8, 49.1 , 0 );
setMoveKey( spep_0 + 380 -a, 1, 143.1, 32 , 0 );
setMoveKey( spep_0 + 382 -a, 1, 148.7, 32.1 , 0 );
setMoveKey( spep_0 + 384 -a, 1, 154.5, 32.2 , 0 );
setMoveKey( spep_0 + 386 -a, 1, 160.3, 32.3 , 0 );
setMoveKey( spep_0 + 388 -a, 1, 166.2, 32.4 , 0 );
setMoveKey( spep_0 + 390 -a, 1, 172.2, 32.5 , 0 );
setMoveKey( spep_0 + 392 -a, 1, 179, 32.6 , 0 );
setMoveKey( spep_0 + 394 -a, 1, 186, 32.7 , 0 );
setMoveKey( spep_0 + 396 -a, 1, 193, 32.8 , 0 );
setMoveKey( spep_0 + 398 -a, 1, 200.1, 32.8 , 0 );
setMoveKey( spep_0 + 400 -a, 1, 207.4, 32.9 , 0 );
setMoveKey( spep_0 + 402 -a, 1, 230.5, 33.9 , 0 );
setMoveKey( spep_0 + 404 -a, 1, 254.6, 34.7 , 0 );
setMoveKey( spep_0 + 406 -a, 1, 281.7, 35.6 , 0 );
setMoveKey( spep_0 + 408 -a, 1, 311.8, 36.7 , 0 );
setMoveKey( spep_0 + 410 -a, 1, 344.9, 37.9 , 0 );
setMoveKey( spep_0 + 412 -a, 1, 379.7, 38.9 , 0 );
setMoveKey( spep_0 + 414 -a, 1, 417.6, 40.2 , 0 );
setMoveKey( spep_0 + 416 -a, 1, 459, 41.5 , 0 );
setMoveKey( spep_0 + 418 -a, 1, 503.6, 42.9 , 0 );
setMoveKey( spep_0 + 420 -a, 1, 550.2, 44.3 , 0 );
setMoveKey( spep_0 + 422 -a, 1, 601.8, 46 , 0 );
setMoveKey( spep_0 + 424 -a, 1, 655.4, 47.7 , 0 );
setMoveKey( spep_0 + 426 -a, 1, 711.1, 49.3 , 0 );
setMoveKey( spep_0 + 426, 1, 772.3, 51.2 , 0 );

setScaleKey( spep_0 + 170 -a, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 172 -a, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 174 -a, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 176 -a, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 177 -a, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 178 -a, 1, 1, 1 );
setScaleKey( spep_0 + 179 -a, 1, 1, 1 );
setScaleKey( spep_0 + 180 -a, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 182 -a, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 184 -a, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 186 -a, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 188 -a, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 190 -a, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 192 -a, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 194 -a, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 196 -a, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 198 -a, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 200 -a, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 202 -a, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 204 -a, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 206 -a, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 208 -a, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 210 -a, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 212 -a, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 214 -a, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 216 -a, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 217 -a, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 218 -a, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 219 -a, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 220 -a, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 250 -a, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 252 -a, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 254 -a, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 256 -a, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 258 -a, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 260 -a, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 262 -a, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 264 -a, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 266 -a, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 268 -a, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 270 -a, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 272 -a, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 274 -a, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 276 -a, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 278 -a, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 280 -a, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 282 -a, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 284 -a, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 286 -a, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 288 -a, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 290 -a, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 292 -a, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 293 -a, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 294 -a, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 296 -a, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 298 -a, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 300 -a, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 302 -a, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 304 -a, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 306 -a, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 308 -a, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 310 -a, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 312 -a, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 314 -a, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 316 -a, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 318 -a, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 320 -a, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 322 -a, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 324 -a, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 326 -a, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 328 -a, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 330 -a, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 332 -a, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 334 -a, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 336 -a, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 338 -a, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 340 -a, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 342 -a, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 344 -a, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 346 -a, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 348 -a, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 350 -a, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 352 -a, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 354 -a, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 356 -a, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 358 -a, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 360 -a, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 362 -a, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 364 -a, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 366 -a, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 368 -a, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 370 -a, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 371 -a, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 372 -a, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 374 -a, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 376 -a, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 378 -a, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 379 -a, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 380 -a, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 382 -a, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 384 -a, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 386 -a, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 388 -a, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 390 -a, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 392 -a, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 394 -a, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 396 -a, 1, 1, 1 );
setScaleKey( spep_0 + 398 -a, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 400 -a, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 402 -a, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 404 -a, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 406 -a, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 408 -a, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 410 -a, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 412 -a, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 414 -a, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 416 -a, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 418 -a, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 420 -a, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 422 -a, 1, 2.84, 2.84 );
setScaleKey( spep_0 + 424 -a, 1, 3.07, 3.07 );
setScaleKey( spep_0 + 426 -a, 1, 3.29, 3.29 );
setScaleKey( spep_0 + 426, 1, 3.55, 3.55 );

setRotateKey( spep_0 + 217 -a, 1, 0 );
setRotateKey( spep_0 + 218 -a, 1, -11 );
setRotateKey( spep_0 + 238 -a, 1, -11 );
setRotateKey( spep_0 + 240 -a, 1, -10.9 );
setRotateKey( spep_0 + 246 -a, 1, -10.9 );
setRotateKey( spep_0 + 248 -a, 1, -10.8 );
setRotateKey( spep_0 + 252 -a, 1, -10.8 );
setRotateKey( spep_0 + 254 -a, 1, -9.6 );
setRotateKey( spep_0 + 256 -a, 1, -8.5 );
setRotateKey( spep_0 + 258 -a, 1, -7.3 );
setRotateKey( spep_0 + 260 -a, 1, -6.2 );
setRotateKey( spep_0 + 268 -a, 1, -6.2 );
setRotateKey( spep_0 + 270 -a, 1, -6.1 );
setRotateKey( spep_0 + 286 -a, 1, -6.1 );
setRotateKey( spep_0 + 288 -a, 1, -6 );
setRotateKey( spep_0 + 296 -a, 1, -6 );
setRotateKey( spep_0 + 298 -a, 1, -6.2 );
setRotateKey( spep_0 + 326 -a, 1, -6.2 );
setRotateKey( spep_0 + 328 -a, 1, -6.1 );
setRotateKey( spep_0 + 368 -a, 1, -6.1 );
setRotateKey( spep_0 + 370 -a, 1, -6 );
setRotateKey( spep_0 + 398 -a, 1, -6 );
setRotateKey( spep_0 + 400 -a, 1, -6.1 );
setRotateKey( spep_0 + 418 -a, 1, -6.1 );
setRotateKey( spep_0 + 420 -a, 1, -6.2 );
setRotateKey( spep_0 + 426, 1, -6.2 );

-- ** 音 ** --
playSe( spep_0 + 178 -a, 1061 );  --ガード
playSe( spep_0 + 194, 44 );  --迫る
playSe( spep_0 + 218 -a, 1011 );  --殴る
playSe( spep_0 + 260, 44 );  --押し込む前
playSe( spep_0 + 294 -a, 1067 );  --押し込む
playSe( spep_0 + 380, 1021 );  --画面アップ

-- ** ホワイトフェード ** --
entryFade( spep_0 + 294 -a, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 200 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 426;

------------------------------------------------------
-- 構え(176F)
------------------------------------------------------

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_1 + 0, SP_03, 176, 0x100, -1, 0, 0, 0 );  --構え(ef_003)
setEffMoveKey( spep_1 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_1 + 176, kamae, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_1 + 176, kamae, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kamae, 0 );
setEffRotateKey( spep_1 + 176, kamae, 0 );
setEffAlphaKey( spep_1 + 0, kamae, 255 );
setEffAlphaKey( spep_1 + 176, kamae, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_1 + 50, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_1 + 50, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_1 + 66,  190006, 68, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_1 + 66, ctgogo, 68, 10 );

setEffMoveKey( spep_1 + 66, ctgogo, -9.9, 515.5 , 0 );
setEffMoveKey( spep_1 + 134, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_1 + 66, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_1 + 126, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_1 + 128, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_1 + 130, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_1 + 132, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_1 + 134, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_1 + 66, ctgogo, 0 );
setEffRotateKey( spep_1 + 134, ctgogo, 0 );

setEffAlphaKey( spep_1 + 66, ctgogo, 255 );
setEffAlphaKey( spep_1 + 134, ctgogo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 176, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_1 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_1 + 40, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_1 + 166, 10, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_1 + 2, 1072 );  --構え
playSe( spep_1 + 66, SE_04 );  --ゴゴゴ
SE1 = playSe( spep_1 + 134, 17 );  --顔アップ
stopSe( spep_1 + 170, SE1, 10 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 176;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen4, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen4, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen4, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen4, 0 );
setEffRotateKey( spep_2 + 90, shuchusen4, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen4, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 発射(118F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha_f = entryEffectLife( spep_3 + 0, SP_04, 118, 0x100, -1, 0, 0, 0 );  --発射　手前(ef_004)
setEffMoveKey( spep_3 + 0, hassha_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 118, hassha_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hassha_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 118, hassha_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hassha_f, 0 );
setEffRotateKey( spep_3 + 118, hassha_f, 0 );
setEffAlphaKey( spep_3 + 0, hassha_f, 255 );
setEffAlphaKey( spep_3 + 118, hassha_f, 255 );

hassha_b = entryEffectLife( spep_3 + 0, SP_05, 118, 0x80, -1, 0, 0, 0 );  --発射　奥(ef_005)
setEffMoveKey( spep_3 + 0, hassha_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 118, hassha_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hassha_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 118, hassha_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hassha_b, 0 );
setEffRotateKey( spep_3 + 118, hassha_b, 0 );
setEffAlphaKey( spep_3 + 0, hassha_b, 255 );
setEffAlphaKey( spep_3 + 118, hassha_b, 255 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_3 + 0,  906, 18, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen5, 18, 20 );

setEffMoveKey( spep_3 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_3 + 18, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen5, 1.1, 1.25 );
setEffScaleKey( spep_3 + 18, shuchusen5, 1.1, 1.25 );

setEffRotateKey( spep_3 + 0, shuchusen5, 0 );
setEffRotateKey( spep_3 + 0, shuchusen5, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_3 + 8, shuchusen5, 255 );
setEffAlphaKey( spep_3 + 10, shuchusen5, 204 );
setEffAlphaKey( spep_3 + 12, shuchusen5, 153 );
setEffAlphaKey( spep_3 + 14, shuchusen5, 102 );
setEffAlphaKey( spep_3 + 16, shuchusen5, 51 );
setEffAlphaKey( spep_3 + 18, shuchusen5, 0 );

-- ** 書き文字エントリー ** --
ctzuo3 = entryEffectLife( spep_3 + 54 -a,  10012, 60, 0x100, -1, 0, 78.7, 260.5 );  --ズオッ
setEffShake( spep_3 + 60 -a, ctzuo3, 46, 25 );

setEffMoveKey( spep_3 + 54 -a, ctzuo3, 78.7, 260.5 , 0 );
setEffMoveKey( spep_3 + 56 -a, ctzuo3, 105, 288.6 , 0 );
setEffMoveKey( spep_3 + 58 -a, ctzuo3, 117.9, 330.1 , 0 );
setEffMoveKey( spep_3 + 60 -a, ctzuo3, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 106 -a, ctzuo3, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 108 -a, ctzuo3, 167.1, 345 , 0 );
setEffMoveKey( spep_3 + 110 -a, ctzuo3, 153.1, 368.5 , 0 );
setEffMoveKey( spep_3 + 112 -a, ctzuo3, 193.8, 337.2 , 0 );
setEffMoveKey( spep_3 + 114 -a, ctzuo3, 207.3, 333.2 , 0 );

setEffScaleKey( spep_3 + 54 -a, ctzuo3, 0.34, 0.34 );
setEffScaleKey( spep_3 + 56 -a, ctzuo3, 1.13, 1.13 );
setEffScaleKey( spep_3 + 58 -a, ctzuo3, 1.94, 1.94 );
setEffScaleKey( spep_3 + 60 -a, ctzuo3, 2.73, 2.73 );
setEffScaleKey( spep_3 + 106 -a, ctzuo3, 2.73, 2.73 );
setEffScaleKey( spep_3 + 108 -a, ctzuo3, 3.68, 3.68 );
setEffScaleKey( spep_3 + 110 -a, ctzuo3, 4.67, 4.67 );
setEffScaleKey( spep_3 + 112 -a, ctzuo3, 5.63, 5.63 );
setEffScaleKey( spep_3 + 114 -a, ctzuo3, 6.62, 6.62 );

setEffRotateKey( spep_3 + 54 -a, ctzuo3, 27.2 );
setEffRotateKey( spep_3 + 114 -a, ctzuo3, 27.2 );

setEffAlphaKey( spep_3 + 54 -a, ctzuo3, 255 );
setEffAlphaKey( spep_3 + 106 -a, ctzuo3, 255 );
setEffAlphaKey( spep_3 + 108 -a, ctzuo3, 191 );
setEffAlphaKey( spep_3 + 110 -a, ctzuo3, 128 );
setEffAlphaKey( spep_3 + 112 -a, ctzuo3, 64 );
setEffAlphaKey( spep_3 + 114 -a, ctzuo3, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 52, 1, 0 );
changeAnime( spep_3 + 0, 1, 106 );

setMoveKey( spep_3 + 0, 1, 3.1, 421.7 , 0 );
setMoveKey( spep_3 + 4 -a, 1, 4.4, 360.7 , 0 );
setMoveKey( spep_3 + 6 -a, 1, -2.9, 326.3 , 0 );
setMoveKey( spep_3 + 8 -a, 1, 5.8, 299.8 , 0 );
setMoveKey( spep_3 + 10 -a, 1, 2.5, 261.3 , 0 );
setMoveKey( spep_3 + 12 -a, 1, 7.2, 238.8 , 0 );
setMoveKey( spep_3 + 14 -a, 1, 3.9, 200.4 , 0 );
setMoveKey( spep_3 + 16 -a, 1, 7.4, 205.1 , 0 );
setMoveKey( spep_3 + 18 -a, 1, -1.1, 197.9 , 0 );
setMoveKey( spep_3 + 20 -a, 1, 6.4, 198.7 , 0 );
setMoveKey( spep_3 + 22 -a, 1, 2, 187.4 , 0 );
setMoveKey( spep_3 + 24 -a, 1, 5.5, 192.2 , 0 );
setMoveKey( spep_3 + 26 -a, 1, -3, 180.9 , 0 );
setMoveKey( spep_3 + 28 -a, 1, 4.5, 185.7 , 0 );
setMoveKey( spep_3 + 30 -a, 1, 0, 178.5 , 0 );
setMoveKey( spep_3 + 32 -a, 1, 3.5, 179.2 , 0 );
setMoveKey( spep_3 + 34 -a, 1, -0.9, 172 , 0 );
setMoveKey( spep_3 + 36 -a, 1, 2.6, 172.8 , 0 );
setMoveKey( spep_3 + 38 -a, 1, -5.9, 165.5 , 0 );
setMoveKey( spep_3 + 40 -a, 1, 1.6, 166.3 , 0 );
setMoveKey( spep_3 + 42 -a, 1, -2.9, 155 , 0 );
setMoveKey( spep_3 + 44 -a, 1, 0.6, 159.8 , 0 );
setMoveKey( spep_3 + 46 -a, 1, -7.8, 148.6 , 0 );
setMoveKey( spep_3 + 48 -a, 1, -0.3, 153.3 , 0 );
setMoveKey( spep_3 + 50 -a, 1, -4.8, 146.1 , 0 );
setMoveKey( spep_3 + 52, 1, 0.6, 422 , 0 );

setScaleKey( spep_3 + 0, 1, 4.02, 4.02 );
setScaleKey( spep_3 + 4 -a, 1, 3.38, 3.38 );
setScaleKey( spep_3 + 6 -a, 1, 3.06, 3.06 );
setScaleKey( spep_3 + 8 -a, 1, 2.74, 2.74 );
setScaleKey( spep_3 + 10 -a, 1, 2.42, 2.42 );
setScaleKey( spep_3 + 12 -a, 1, 2.1, 2.1 );
setScaleKey( spep_3 + 14 -a, 1, 1.77, 1.77 );
setScaleKey( spep_3 + 16 -a, 1, 1.73, 1.73 );
setScaleKey( spep_3 + 18 -a, 1, 1.69, 1.69 );
setScaleKey( spep_3 + 20 -a, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 22 -a, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 24 -a, 1, 1.56, 1.56 );
setScaleKey( spep_3 + 26 -a, 1, 1.52, 1.52 );
setScaleKey( spep_3 + 28 -a, 1, 1.48, 1.48 );
setScaleKey( spep_3 + 30 -a, 1, 1.43, 1.43 );
setScaleKey( spep_3 + 32 -a, 1, 1.39, 1.39 );
setScaleKey( spep_3 + 34 -a, 1, 1.35, 1.35 );
setScaleKey( spep_3 + 36 -a, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 38 -a, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 40 -a, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 42 -a, 1, 1.18, 1.18 );
setScaleKey( spep_3 + 44 -a, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 46 -a, 1, 1.09, 1.09 );
setScaleKey( spep_3 + 48 -a, 1, 1.05, 1.05 );
setScaleKey( spep_3 + 50 -a, 1, 1.01, 1.01 );
setScaleKey( spep_3 + 52, 1, 3.31, 3.31 );

setRotateKey( spep_3 + 0, 1, -40 );
setRotateKey( spep_3 + 52, 1, -40 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 118, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_3 + 52 -a, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_3 + 102, 16, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_3 + 2, 1021 );  --発射前
playSe( spep_3 + 54 -a, 1022 );  --発射

-- ** 次の準備 ** --
spep_4 = spep_3 + 118;

------------------------------------------------------
-- 爆発(192F)
------------------------------------------------------

-- ** エフェクト等 ** --
bakuhatsu = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --爆発(ef_006)
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 192, bakuhatsu, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, bakuhatsu, 1.0, 1.0 );
setEffScaleKey( spep_4 + 192, bakuhatsu, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 192, bakuhatsu, 0 );
setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 192, bakuhatsu, 255 );

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_4 + 40,  906, 152, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 40, shuchusen6, 152, 20 );

setEffMoveKey( spep_4 + 40, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_4 + 192, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_4 + 40, shuchusen6, 1.1, 1.25 );
setEffScaleKey( spep_4 + 192, shuchusen6, 1.1, 1.25 );

setEffRotateKey( spep_4 + 40, shuchusen6, 0 );
setEffRotateKey( spep_4 + 192, shuchusen6, 0 );

setEffAlphaKey( spep_4 + 40, shuchusen6, 0 );
setEffAlphaKey( spep_4 + 42, shuchusen6, 36 );
setEffAlphaKey( spep_4 + 44, shuchusen6, 73 );
setEffAlphaKey( spep_4 + 46, shuchusen6, 109 );
setEffAlphaKey( spep_4 + 48, shuchusen6, 146 );
setEffAlphaKey( spep_4 + 50, shuchusen6, 182 );
setEffAlphaKey( spep_4 + 52, shuchusen6, 219 );
setEffAlphaKey( spep_4 + 54, shuchusen6, 255 );
setEffAlphaKey( spep_4 + 192, shuchusen6, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 192, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_4 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_4 + 36 -a, 0, 2, 12, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_4 + 34, 1024);  --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 52 );
entryFade( spep_4 + 182, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_4 + 192 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 迫る(426F)
------------------------------------------------------
spep_0 = 0;
a = 3;

-- ** エフェクト等 ** --
semaru_f = entryEffectLife( spep_0 + 0, SP_01r, 426, 0x100, -1, 0, 0, 0 );  --迫る　手前(ef_001)
setEffMoveKey( spep_0 + 0, semaru_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 426, semaru_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, semaru_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 426, semaru_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, semaru_f, 0 );
setEffRotateKey( spep_0 + 426, semaru_f, 0 );
setEffAlphaKey( spep_0 + 0, semaru_f, 255 );
setEffAlphaKey( spep_0 + 426, semaru_f, 255 );

semaru_b = entryEffectLife( spep_0 + 0, SP_02, 426, 0x80, -1, 0, 0, 0 );  --迫る　奥(ef_002)
setEffMoveKey( spep_0 + 0, semaru_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 426, semaru_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, semaru_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 426, semaru_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, semaru_b, 0 );
setEffRotateKey( spep_0 + 426, semaru_b, 0 );
setEffAlphaKey( spep_0 + 0, semaru_b, 255 );
setEffAlphaKey( spep_0 + 426, semaru_b, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 68, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 68, 20 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 68, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.07, 1.57 );
setEffScaleKey( spep_0 + 68, shuchusen1, 1.07, 1.57 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 68, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 48, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 50, shuchusen1, 230 );
setEffAlphaKey( spep_0 + 52, shuchusen1, 204 );
setEffAlphaKey( spep_0 + 54, shuchusen1, 179 );
setEffAlphaKey( spep_0 + 56, shuchusen1, 153 );
setEffAlphaKey( spep_0 + 58, shuchusen1, 128 );
setEffAlphaKey( spep_0 + 60, shuchusen1, 102 );
setEffAlphaKey( spep_0 + 62, shuchusen1, 77 );
setEffAlphaKey( spep_0 + 64, shuchusen1, 51 );
setEffAlphaKey( spep_0 + 66, shuchusen1, 25 );
setEffAlphaKey( spep_0 + 68, shuchusen1, 0 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_0 + 0,  10012, 40, 0x100, -1, 0, 78.7, 260.5 );  --ズオッ
setEffShake( spep_0 + 6, ctzuo, 26, 25 );

setEffMoveKey( spep_0 + 0, ctzuo, 78.7, 260.5 , 0 );
setEffMoveKey( spep_0 + 2, ctzuo, 105, 288.6 , 0 );
setEffMoveKey( spep_0 + 4, ctzuo, 117.9, 330.1 , 0 );
setEffMoveKey( spep_0 + 6, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 32, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 34, ctzuo, 167.1, 345 , 0 );
setEffMoveKey( spep_0 + 36, ctzuo, 153.1, 368.5 , 0 );
setEffMoveKey( spep_0 + 38, ctzuo, 193.8, 337.2 , 0 );
setEffMoveKey( spep_0 + 40, ctzuo, 207.3, 333.2 , 0 );

setEffScaleKey( spep_0 + 0, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_0 + 2, ctzuo, 1.13, 1.13 );
setEffScaleKey( spep_0 + 4, ctzuo, 1.94, 1.94 );
setEffScaleKey( spep_0 + 6, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_0 + 32, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_0 + 34, ctzuo, 3.68, 3.68 );
setEffScaleKey( spep_0 + 36, ctzuo, 4.67, 4.67 );
setEffScaleKey( spep_0 + 38, ctzuo, 5.63, 5.63 );
setEffScaleKey( spep_0 + 40, ctzuo, 6.62, 6.62 );

setEffRotateKey( spep_0 + 0, ctzuo, 27.2 );
setEffRotateKey( spep_0 + 40, ctzuo, 27.2 );

setEffAlphaKey( spep_0 + 0, ctzuo, 255 );
setEffAlphaKey( spep_0 + 32, ctzuo, 255 );
setEffAlphaKey( spep_0 + 34, ctzuo, 191 );
setEffAlphaKey( spep_0 + 36, ctzuo, 128 );
setEffAlphaKey( spep_0 + 38, ctzuo, 64 );
setEffAlphaKey( spep_0 + 40, ctzuo, 0 );

ctba = entryEffectLife( spep_0 + 94 -a,  10022, 18, 0x100, -1, 0, 156, 356.6 );  --バッ
setEffMoveKey( spep_0 + 94 -a, ctba, 156, 356.6 , 0 );
setEffMoveKey( spep_0 + 96 -a, ctba, 168.3, 364.7 , 0 );
setEffMoveKey( spep_0 + 98 -a, ctba, 156.1, 356.3 , 0 );
setEffMoveKey( spep_0 + 100 -a, ctba, 168.9, 365.6 , 0 );
setEffMoveKey( spep_0 + 102 -a, ctba, 156, 356.4 , 0 );
setEffMoveKey( spep_0 + 104 -a, ctba, 166.1, 361.9 , 0 );
setEffMoveKey( spep_0 + 106 -a, ctba, 156, 356.5 , 0 );
setEffMoveKey( spep_0 + 108 -a, ctba, 165.8, 361.7 , 0 );
setEffMoveKey( spep_0 + 110 -a, ctba, 156, 356.4 , 0 );
setEffMoveKey( spep_0 + 112 -a, ctba, 165.6, 361.5 , 0 );

setEffScaleKey( spep_0 + 94 -a, ctba, 1.45, 1.45 );
setEffScaleKey( spep_0 + 96 -a, ctba, 1.85, 1.85 );
setEffScaleKey( spep_0 + 98 -a, ctba, 2.26, 2.26 );
setEffScaleKey( spep_0 + 100 -a, ctba, 1.98, 1.98 );
setEffScaleKey( spep_0 + 102 -a, ctba, 1.71, 1.71 );
setEffScaleKey( spep_0 + 104 -a, ctba, 1.43, 1.43 );
setEffScaleKey( spep_0 + 106 -a, ctba, 1.41, 1.41 );
setEffScaleKey( spep_0 + 108 -a, ctba, 1.4, 1.4 );
setEffScaleKey( spep_0 + 110 -a, ctba, 1.38, 1.38 );
setEffScaleKey( spep_0 + 112 -a, ctba, 1.36, 1.36 );

setEffRotateKey( spep_0 + 94 -a, ctba, 25 );
setEffRotateKey( spep_0 + 96 -a, ctba, 19.3 );
setEffRotateKey( spep_0 + 98 -a, ctba, 13.5 );
setEffRotateKey( spep_0 + 100 -a, ctba, 17.3 );
setEffRotateKey( spep_0 + 102 -a, ctba, 21.2 );
setEffRotateKey( spep_0 + 104 -a, ctba, 25 );

setEffAlphaKey( spep_0 + 94 -a, ctba, 255 );
setEffAlphaKey( spep_0 + 104 -a, ctba, 255 );
setEffAlphaKey( spep_0 + 106 -a, ctba, 191 );
setEffAlphaKey( spep_0 + 108 -a, ctba, 128 );
setEffAlphaKey( spep_0 + 110 -a, ctba, 64 );
setEffAlphaKey( spep_0 + 112 -a, ctba, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 146 -a, 1, 1 );
changeAnime( spep_0 + 146 -a, 1, 100 );

setMoveKey( spep_0 + 146 -a, 1, 212.8, 364 , 0 );
setMoveKey( spep_0 + 148 -a, 1, 209.4, 359 , 0 );
setMoveKey( spep_0 + 150 -a, 1, 204.9, 352.5 , 0 );
setMoveKey( spep_0 + 152 -a, 1, 199.2, 344.2 , 0 );
setMoveKey( spep_0 + 154 -a, 1, 192.4, 334.4 , 0 );
setMoveKey( spep_0 + 156 -a, 1, 184.5, 322.9 , 0 );
setMoveKey( spep_0 + 158 -a, 1, 175.5, 309.7 , 0 );
setMoveKey( spep_0 + 160 -a, 1, 165.3, 295 , 0 );
setMoveKey( spep_0 + 162 -a, 1, 154, 278.5 , 0 );
setMoveKey( spep_0 + 164 -a, 1, 141.6, 260.5 , 0 );
setMoveKey( spep_0 + 166 -a, 1, 128, 240.7 , 0 );
setMoveKey( spep_0 + 168 -a, 1, 109.3, 199.4 , 0 );

setScaleKey( spep_0 + 146 -a, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 148 -a, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 150 -a, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 152 -a, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 154 -a, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 156 -a, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 158 -a, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 160 -a, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 162 -a, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 164 -a, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 166 -a, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 168 -a, 1, 0.63, 0.63 );

setRotateKey( spep_0 + 146 -a, 1, 0 );
setRotateKey( spep_0 + 146 -a, 1, 0 );

-- ** 音 ** --
playSe( spep_0 + 2, 8 );  --迫る
playSe( spep_0 + 94 -a, 1003 );  --剣投げる
playSe( spep_0 + 112, 1018 );  --剣迫る

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 92 -a, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 146 -a, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 426, 0, 0, 0, 0, 255 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 166; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
changeAnime( SP_dodge + 0, 1, 100 );

setMoveKey( SP_dodge + 0, 1, 109.3, 199.4 , 0 );
setMoveKey( SP_dodge + 2, 1, 97.5, 196.4 , 0 );
setMoveKey( SP_dodge + 4, 1, 68.6, 167.7 , 0 );
setMoveKey( SP_dodge + 6, 1, 62.6, 145.4 , 0 );
setMoveKey( SP_dodge + 8, 1, 39.4, 105.5 , 0 );
setMoveKey( SP_dodge + 10, 1, 39.4, 105.5 , 0 );

setScaleKey( SP_dodge + 0, 1, 0.63, 0.63 );
setScaleKey( SP_dodge + 2, 1, 0.7, 0.7 );
setScaleKey( SP_dodge + 4, 1, 0.77, 0.77 );
setScaleKey( SP_dodge + 6, 1, 0.85, 0.85 );
setScaleKey( SP_dodge + 8, 1, 0.94, 0.94 );
setScaleKey( SP_dodge + 10, 1, 0.94, 0.94 );

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

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_0 + 218 -a,  906, 14, 0x100, -1, 0, 0, -14.4 );  --集中線
setEffShake( spep_0 + 218 -a, shuchusen2, 14, 20 );

setEffMoveKey( spep_0 + 218 -a, shuchusen2, 0, -14.4 , 0 );
setEffMoveKey( spep_0 + 232 -a, shuchusen2, 0, -14.4 , 0 );

setEffScaleKey( spep_0 + 218 -a, shuchusen2, 1.21, 1.52 );
setEffScaleKey( spep_0 + 232 -a, shuchusen2, 1.21, 1.52 );

setEffRotateKey( spep_0 + 218 -a, shuchusen2, 0 );
setEffRotateKey( spep_0 + 232 -a, shuchusen2, 0 );

setEffAlphaKey( spep_0 + 218 -a, shuchusen2, 255 );
setEffAlphaKey( spep_0 + 232 -a, shuchusen2, 255 );

shuchusen3 = entryEffectLife( spep_0 + 294 -a,  906, 12, 0x100, -1, 0, 0, -14.4 );  --集中線
setEffShake( spep_0 + 294 -a, shuchusen3, 12, 20 );

setEffMoveKey( spep_0 + 294 -a, shuchusen3, 0, -14.4 , 0 );
setEffMoveKey( spep_0 + 306 -a, shuchusen3, 0, -14.4 , 0 );

setEffScaleKey( spep_0 + 294 -a, shuchusen3, 1.21, 1.52 );
setEffScaleKey( spep_0 + 294 -a, shuchusen3, 1.21, 1.52 );

setEffRotateKey( spep_0 + 294 -a, shuchusen3, 0 );
setEffRotateKey( spep_0 + 306 -a, shuchusen3, 0 );

setEffAlphaKey( spep_0 + 294 -a, shuchusen3, 255 );
setEffAlphaKey( spep_0 + 300 -a, shuchusen3, 255 );
setEffAlphaKey( spep_0 + 302 -a, shuchusen3, 170 );
setEffAlphaKey( spep_0 + 304 -a, shuchusen3, 85 );
setEffAlphaKey( spep_0 + 306 -a, shuchusen3, 0 );

-- ** 書き文字エントリー ** --
ctzun = entryEffectLife( spep_0 + 218 -a,  10016, 30, 0x100, -1, 0, -14, 348.5 );  --ズン
setEffShake( spep_0 + 224 -a, ctzun, 18, 20 );

setEffMoveKey( spep_0 + 218 -a, ctzun, -14, 348.5 , 0 );
setEffMoveKey( spep_0 + 220 -a, ctzun, -14.1, 348.4 , 0 );
setEffMoveKey( spep_0 + 222 -a, ctzun, -22.2, 352.3 , 0 );
setEffMoveKey( spep_0 + 224 -a, ctzun, -20.9, 351.6 , 0 );
setEffMoveKey( spep_0 + 242 -a, ctzun, -20.9, 351.6 , 0 );
setEffMoveKey( spep_0 + 244 -a, ctzun, -14.3, 348.3 , 0 );
setEffMoveKey( spep_0 + 246 -a, ctzun, -21.1, 351.5 , 0 );
setEffMoveKey( spep_0 + 248 -a, ctzun, -14.4, 348.4 , 0 );

setEffScaleKey( spep_0 + 218 -a, ctzun, 1.73, 1.73 );
setEffScaleKey( spep_0 + 220 -a, ctzun, 3.54, 3.54 );
setEffScaleKey( spep_0 + 222 -a, ctzun, 3.01, 3.01 );
setEffScaleKey( spep_0 + 224 -a, ctzun, 2.47, 2.47 );
setEffScaleKey( spep_0 + 228 -a, ctzun, 2.47, 2.47 );
setEffScaleKey( spep_0 + 230 -a, ctzun, 2.48, 2.48 );
setEffScaleKey( spep_0 + 236 -a, ctzun, 2.48, 2.48 );
setEffScaleKey( spep_0 + 238 -a, ctzun, 2.49, 2.49 );
setEffScaleKey( spep_0 + 242 -a, ctzun, 2.49, 2.49 );
setEffScaleKey( spep_0 + 244 -a, ctzun, 2.5, 2.5 );
setEffScaleKey( spep_0 + 246 -a, ctzun, 2.5, 2.5 );
setEffScaleKey( spep_0 + 248 -a, ctzun, 2.51, 2.51 );

setEffRotateKey( spep_0 + 218 -a, ctzun, -17.1 );
setEffRotateKey( spep_0 + 232 -a, ctzun, -17.1 );
setEffRotateKey( spep_0 + 234 -a, ctzun, -17.2 );
setEffRotateKey( spep_0 + 244 -a, ctzun, -17.2 );
setEffRotateKey( spep_0 + 246 -a, ctzun, -17.1 );
setEffRotateKey( spep_0 + 248 -a, ctzun, -17.1 );

setEffAlphaKey(spep_0 + 218 - a, ctzun, 0);
setEffAlphaKey(spep_0 + 219 - a, ctzun, 255);
setEffAlphaKey(spep_0 + 248 - a, ctzun, 255);

ctzuo2 = entryEffectLife( spep_0 + 296 -a,  10012, 46, 0x100, -1, 0, 78.7, 260.5 );  --ズオッ
setEffShake( spep_0 + 302 -a, ctzuo2, 32, 25 );

setEffMoveKey( spep_0 + 296 -a, ctzuo2, 78.7, 260.5 , 0 );
setEffMoveKey( spep_0 + 298 -a, ctzuo2, 105, 288.6 , 0 );
setEffMoveKey( spep_0 + 300 -a, ctzuo2, 117.9, 330.1 , 0 );
setEffMoveKey( spep_0 + 302 -a, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 334 -a, ctzuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 336 -a, ctzuo2, 145.5, 366.6 , 0 );
setEffMoveKey( spep_0 + 338 -a, ctzuo2, 180.5, 341.1 , 0 );
setEffMoveKey( spep_0 + 340 -a, ctzuo2, 160.8, 370.2 , 0 );
setEffMoveKey( spep_0 + 342 -a, ctzuo2, 168.5, 372 , 0 );

setEffScaleKey( spep_0 + 296 -a, ctzuo2, 0.34, 0.34 );
setEffScaleKey( spep_0 + 298 -a, ctzuo2, 1.13, 1.13 );
setEffScaleKey( spep_0 + 300 -a, ctzuo2, 1.94, 1.94 );
setEffScaleKey( spep_0 + 302 -a, ctzuo2, 2.73, 2.73 );
setEffScaleKey( spep_0 + 334 -a, ctzuo2, 2.73, 2.73 );
setEffScaleKey( spep_0 + 336 -a, ctzuo2, 3.68, 3.68 );
setEffScaleKey( spep_0 + 338 -a, ctzuo2, 4.67, 4.67 );
setEffScaleKey( spep_0 + 340 -a, ctzuo2, 5.63, 5.63 );
setEffScaleKey( spep_0 + 342 -a, ctzuo2, 6.62, 6.62 );

setEffRotateKey( spep_0 + 296 -a, ctzuo2, 27.2 );
setEffRotateKey( spep_0 + 342 -a, ctzuo2, 27.2 );

setEffAlphaKey( spep_0 + 296 -a, ctzuo2, 255 );
setEffAlphaKey( spep_0 + 334 -a, ctzuo2, 255 );
setEffAlphaKey( spep_0 + 336 -a, ctzuo2, 191 );
setEffAlphaKey( spep_0 + 338 -a, ctzuo2, 128 );
setEffAlphaKey( spep_0 + 340 -a, ctzuo2, 64 );
setEffAlphaKey( spep_0 + 342 -a, ctzuo2, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 426, 1, 0 );
changeAnime( spep_0 + 178 -a, 1, 104 );
changeAnime( spep_0 + 219 -a, 1, 108 );
changeAnime( spep_0 + 220 -a, 1, 108 );

setMoveKey( spep_0 + 170 -a, 1, 97.5, 196.4 , 0 );
setMoveKey( spep_0 + 172 -a, 1, 68.6, 167.7 , 0 );
setMoveKey( spep_0 + 174 -a, 1, 62.6, 145.4 , 0 );
setMoveKey( spep_0 + 176 -a, 1, 39.4, 105.5 , 0 );
setMoveKey( spep_0 + 177 -a, 1, 39.4, 105.5 , 0 );
setMoveKey( spep_0 + 178 -a, 1, 48, 122.4 , 0 );
setMoveKey( spep_0 + 179 -a, 1, 48, 122.4 , 0 );
setMoveKey( spep_0 + 180 -a, 1, 90.9, 145.6 , 0 );
setMoveKey( spep_0 + 182 -a, 1, 89.5, 144.1 , 0 );
setMoveKey( spep_0 + 184 -a, 1, 71.4, 125.9 , 0 );
setMoveKey( spep_0 + 186 -a, 1, 60.7, 131.1 , 0 );
setMoveKey( spep_0 + 188 -a, 1, 49.9, 128.3 , 0 );
setMoveKey( spep_0 + 190 -a, 1, 63.1, 133.4 , 0 );
setMoveKey( spep_0 + 192 -a, 1, 60.3, 130.6 , 0 );
setMoveKey( spep_0 + 194 -a, 1, 65.5, 135.8 , 0 );
setMoveKey( spep_0 + 196 -a, 1, 66.7, 137 , 0 );
setMoveKey( spep_0 + 198 -a, 1, 67.8, 138.1 , 0 );
setMoveKey( spep_0 + 200 -a, 1, 69, 139.3 , 0 );
setMoveKey( spep_0 + 202 -a, 1, 70.2, 140.5 , 0 );
setMoveKey( spep_0 + 204 -a, 1, 71.4, 141.7 , 0 );
setMoveKey( spep_0 + 206 -a, 1, 72.6, 142.8 , 0 );
setMoveKey( spep_0 + 208 -a, 1, 73.8, 144 , 0 );
setMoveKey( spep_0 + 210 -a, 1, 74.9, 145.2 , 0 );
setMoveKey( spep_0 + 212 -a, 1, 76.1, 146.4 , 0 );
setMoveKey( spep_0 + 214 -a, 1, 73.3, 123.5 , 0 );
setMoveKey( spep_0 + 216 -a, 1, 78.5, 148.7 , 0 );
setMoveKey( spep_0 + 217 -a, 1, 78.5, 148.7 , 0 );
setMoveKey( spep_0 + 218 -a, 1, 17.9, 43.8 , 0 );
setMoveKey( spep_0 + 219 -a, 1, 17.9, 43.8 , 0 );
setMoveKey( spep_0 + 220 -a, 1, 33.9, 47.8 , 0 );
setMoveKey( spep_0 + 222 -a, 1, 29.9, 31.8 , 0 );
setMoveKey( spep_0 + 224 -a, 1, 33.9, 47.8 , 0 );
setMoveKey( spep_0 + 226 -a, 1, 21.9, 43.8 , 0 );
setMoveKey( spep_0 + 228 -a, 1, 33.9, 47.8 , 0 );
setMoveKey( spep_0 + 230 -a, 1, 29.9, 31.8 , 0 );
setMoveKey( spep_0 + 232 -a, 1, 33.9, 47.8 , 0 );
setMoveKey( spep_0 + 234 -a, 1, 17.9, 43.8 , 0 );
setMoveKey( spep_0 + 236 -a, 1, 35.5, 49.1 , 0 );
setMoveKey( spep_0 + 238 -a, 1, 33.1, 42.5 , 0 );
setMoveKey( spep_0 + 240 -a, 1, 38.8, 51.9 , 0 );
setMoveKey( spep_0 + 242 -a, 1, 36.4, 49.3 , 0 );
setMoveKey( spep_0 + 244 -a, 1, 42, 54.6 , 0 );
setMoveKey( spep_0 + 246 -a, 1, 43.6, 56 , 0 );
setMoveKey( spep_0 + 248 -a, 1, 45.2, 57.4 , 0 );
setMoveKey( spep_0 + 250 -a, 1, 46.8, 58.7 , 0 );
setMoveKey( spep_0 + 252 -a, 1, 47.5, 59 , 0 );
setMoveKey( spep_0 + 254 -a, 1, 51.6, 59.5 , 0 );
setMoveKey( spep_0 + 256 -a, 1, 55.5, 59.9 , 0 );
setMoveKey( spep_0 + 258 -a, 1, 59.2, 60.3 , 0 );
setMoveKey( spep_0 + 260 -a, 1, 62.7, 60.6 , 0 );
setMoveKey( spep_0 + 262 -a, 1, 63.2, 59.3 , 0 );
setMoveKey( spep_0 + 264 -a, 1, 63.7, 58 , 0 );
setMoveKey( spep_0 + 266 -a, 1, 64, 56.7 , 0 );
setMoveKey( spep_0 + 268 -a, 1, 64.3, 55.5 , 0 );
setMoveKey( spep_0 + 270 -a, 1, 64.5, 54.2 , 0 );
setMoveKey( spep_0 + 272 -a, 1, 60.6, 36.9 , 0 );
setMoveKey( spep_0 + 274 -a, 1, 64.6, 51.7 , 0 );
setMoveKey( spep_0 + 276 -a, 1, 48.6, 46.4 , 0 );
setMoveKey( spep_0 + 278 -a, 1, 64.5, 49.1 , 0 );
setMoveKey( spep_0 + 280 -a, 1, 60.3, 35.8 , 0 );
setMoveKey( spep_0 + 282 -a, 1, 64, 46.6 , 0 );
setMoveKey( spep_0 + 284 -a, 1, 51.7, 41.3 , 0 );
setMoveKey( spep_0 + 286 -a, 1, 63.2, 44 , 0 );
setMoveKey( spep_0 + 288 -a, 1, 58.7, 26.7 , 0 );
setMoveKey( spep_0 + 290 -a, 1, 62.1, 41.5 , 0 );
setMoveKey( spep_0 + 292 -a, 1, 49.4, 36.2 , 0 );
setMoveKey( spep_0 + 293 -a, 1, 50.4, 36.2 , 0 );
setMoveKey( spep_0 + 294 -a, 1, 188.1, 168.4 , 0 );
setMoveKey( spep_0 + 296 -a, 1, 139.8, 117 , 0 );
setMoveKey( spep_0 + 298 -a, 1, 114.8, 89.6 , 0 );
setMoveKey( spep_0 + 299 -a, 1, 114.8, 89.6 , 0 );
setMoveKey( spep_0 + 300 -a, 1, 52.8, 42.2 , 0 );
setMoveKey( spep_0 + 302 -a, 1, 65.5, 49.7 , 0 );
setMoveKey( spep_0 + 304 -a, 1, 61.3, 37.1 , 0 );
setMoveKey( spep_0 + 305 -a, 1, 61.3, 37.1 , 0 );
setMoveKey( spep_0 + 306 -a, 1, 111.6, 48.5 , 0 );
setMoveKey( spep_0 + 308 -a, 1, 108.4, 32 , 0 );
setMoveKey( spep_0 + 310 -a, 1, 113.2, 47.4 , 0 );
setMoveKey( spep_0 + 312 -a, 1, 101.9, 42.9 , 0 );
setMoveKey( spep_0 + 314 -a, 1, 114.6, 46.4 , 0 );
setMoveKey( spep_0 + 316 -a, 1, 111.2, 33.8 , 0 );
setMoveKey( spep_0 + 318 -a, 1, 115.8, 45.3 , 0 );
setMoveKey( spep_0 + 320 -a, 1, 108.4, 40.8 , 0 );
setMoveKey( spep_0 + 322 -a, 1, 116.9, 44.3 , 0 );
setMoveKey( spep_0 + 324 -a, 1, 113.5, 31.8 , 0 );
setMoveKey( spep_0 + 326 -a, 1, 117.9, 43.3 , 0 );
setMoveKey( spep_0 + 328 -a, 1, 110.4, 38.8 , 0 );
setMoveKey( spep_0 + 330 -a, 1, 118.8, 42.3 , 0 );
setMoveKey( spep_0 + 332 -a, 1, 115.2, 29.8 , 0 );
setMoveKey( spep_0 + 334 -a, 1, 119.6, 41.3 , 0 );
setMoveKey( spep_0 + 336 -a, 1, 111.9, 36.8 , 0 );
setMoveKey( spep_0 + 338 -a, 1, 120.2, 40.3 , 0 );
setMoveKey( spep_0 + 340 -a, 1, 116.5, 27.8 , 0 );
setMoveKey( spep_0 + 342 -a, 1, 120.7, 39.2 , 0 );
setMoveKey( spep_0 + 344 -a, 1, 116.9, 26.7 , 0 );
setMoveKey( spep_0 + 346 -a, 1, 121.1, 38.2 , 0 );
setMoveKey( spep_0 + 348 -a, 1, 109.3, 33.7 , 0 );
setMoveKey( spep_0 + 349 -a, 1, 109.3, 33.7 , 0 );
setMoveKey( spep_0 + 350 -a, 1, 121.4, 37.2 , 0 );
setMoveKey( spep_0 + 352 -a, 1, 117.5, 24.7 , 0 );
setMoveKey( spep_0 + 354 -a, 1, 121.5, 36.2 , 0 );
setMoveKey( spep_0 + 356 -a, 1, 113.5, 31.7 , 0 );
setMoveKey( spep_0 + 358 -a, 1, 121.5, 35.2 , 0 );
setMoveKey( spep_0 + 360 -a, 1, 117.5, 22.7 , 0 );
setMoveKey( spep_0 + 362 -a, 1, 121.4, 34.2 , 0 );
setMoveKey( spep_0 + 364 -a, 1, 113.3, 29.7 , 0 );
setMoveKey( spep_0 + 366 -a, 1, 121.2, 33.2 , 0 );
setMoveKey( spep_0 + 368 -a, 1, 121.1, 32.6 , 0 );
setMoveKey( spep_0 + 370 -a, 1, 120.9, 32.1 , 0 );
setMoveKey( spep_0 + 371 -a, 1, 120.9, 32.1 , 0 );
setMoveKey( spep_0 + 372 -a, 1, 388.4, 100.4 , 0 );
setMoveKey( spep_0 + 374 -a, 1, 328.5, 83.3 , 0 );
setMoveKey( spep_0 + 376 -a, 1, 267.6, 66.2 , 0 );
setMoveKey( spep_0 + 378 -a, 1, 205.8, 49.1 , 0 );
setMoveKey( spep_0 + 380 -a, 1, 143.1, 32 , 0 );
setMoveKey( spep_0 + 382 -a, 1, 148.7, 32.1 , 0 );
setMoveKey( spep_0 + 384 -a, 1, 154.5, 32.2 , 0 );
setMoveKey( spep_0 + 386 -a, 1, 160.3, 32.3 , 0 );
setMoveKey( spep_0 + 388 -a, 1, 166.2, 32.4 , 0 );
setMoveKey( spep_0 + 390 -a, 1, 172.2, 32.5 , 0 );
setMoveKey( spep_0 + 392 -a, 1, 179, 32.6 , 0 );
setMoveKey( spep_0 + 394 -a, 1, 186, 32.7 , 0 );
setMoveKey( spep_0 + 396 -a, 1, 193, 32.8 , 0 );
setMoveKey( spep_0 + 398 -a, 1, 200.1, 32.8 , 0 );
setMoveKey( spep_0 + 400 -a, 1, 207.4, 32.9 , 0 );
setMoveKey( spep_0 + 402 -a, 1, 230.5, 33.9 , 0 );
setMoveKey( spep_0 + 404 -a, 1, 254.6, 34.7 , 0 );
setMoveKey( spep_0 + 406 -a, 1, 281.7, 35.6 , 0 );
setMoveKey( spep_0 + 408 -a, 1, 311.8, 36.7 , 0 );
setMoveKey( spep_0 + 410 -a, 1, 344.9, 37.9 , 0 );
setMoveKey( spep_0 + 412 -a, 1, 379.7, 38.9 , 0 );
setMoveKey( spep_0 + 414 -a, 1, 417.6, 40.2 , 0 );
setMoveKey( spep_0 + 416 -a, 1, 459, 41.5 , 0 );
setMoveKey( spep_0 + 418 -a, 1, 503.6, 42.9 , 0 );
setMoveKey( spep_0 + 420 -a, 1, 550.2, 44.3 , 0 );
setMoveKey( spep_0 + 422 -a, 1, 601.8, 46 , 0 );
setMoveKey( spep_0 + 424 -a, 1, 655.4, 47.7 , 0 );
setMoveKey( spep_0 + 426 -a, 1, 711.1, 49.3 , 0 );
setMoveKey( spep_0 + 426, 1, 772.3, 51.2 , 0 );

setScaleKey( spep_0 + 170 -a, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 172 -a, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 174 -a, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 176 -a, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 177 -a, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 178 -a, 1, 1, 1 );
setScaleKey( spep_0 + 179 -a, 1, 1, 1 );
setScaleKey( spep_0 + 180 -a, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 182 -a, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 184 -a, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 186 -a, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 188 -a, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 190 -a, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 192 -a, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 194 -a, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 196 -a, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 198 -a, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 200 -a, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 202 -a, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 204 -a, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 206 -a, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 208 -a, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 210 -a, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 212 -a, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 214 -a, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 216 -a, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 217 -a, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 218 -a, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 219 -a, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 220 -a, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 250 -a, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 252 -a, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 254 -a, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 256 -a, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 258 -a, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 260 -a, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 262 -a, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 264 -a, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 266 -a, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 268 -a, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 270 -a, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 272 -a, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 274 -a, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 276 -a, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 278 -a, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 280 -a, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 282 -a, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 284 -a, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 286 -a, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 288 -a, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 290 -a, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 292 -a, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 293 -a, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 294 -a, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 296 -a, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 298 -a, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 300 -a, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 302 -a, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 304 -a, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 306 -a, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 308 -a, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 310 -a, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 312 -a, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 314 -a, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 316 -a, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 318 -a, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 320 -a, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 322 -a, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 324 -a, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 326 -a, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 328 -a, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 330 -a, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 332 -a, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 334 -a, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 336 -a, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 338 -a, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 340 -a, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 342 -a, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 344 -a, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 346 -a, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 348 -a, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 350 -a, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 352 -a, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 354 -a, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 356 -a, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 358 -a, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 360 -a, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 362 -a, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 364 -a, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 366 -a, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 368 -a, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 370 -a, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 371 -a, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 372 -a, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 374 -a, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 376 -a, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 378 -a, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 379 -a, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 380 -a, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 382 -a, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 384 -a, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 386 -a, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 388 -a, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 390 -a, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 392 -a, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 394 -a, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 396 -a, 1, 1, 1 );
setScaleKey( spep_0 + 398 -a, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 400 -a, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 402 -a, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 404 -a, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 406 -a, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 408 -a, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 410 -a, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 412 -a, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 414 -a, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 416 -a, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 418 -a, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 420 -a, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 422 -a, 1, 2.84, 2.84 );
setScaleKey( spep_0 + 424 -a, 1, 3.07, 3.07 );
setScaleKey( spep_0 + 426 -a, 1, 3.29, 3.29 );
setScaleKey( spep_0 + 426, 1, 3.55, 3.55 );

setRotateKey( spep_0 + 217 -a, 1, 0 );
setRotateKey( spep_0 + 218 -a, 1, -11 );
setRotateKey( spep_0 + 238 -a, 1, -11 );
setRotateKey( spep_0 + 240 -a, 1, -10.9 );
setRotateKey( spep_0 + 246 -a, 1, -10.9 );
setRotateKey( spep_0 + 248 -a, 1, -10.8 );
setRotateKey( spep_0 + 252 -a, 1, -10.8 );
setRotateKey( spep_0 + 254 -a, 1, -9.6 );
setRotateKey( spep_0 + 256 -a, 1, -8.5 );
setRotateKey( spep_0 + 258 -a, 1, -7.3 );
setRotateKey( spep_0 + 260 -a, 1, -6.2 );
setRotateKey( spep_0 + 268 -a, 1, -6.2 );
setRotateKey( spep_0 + 270 -a, 1, -6.1 );
setRotateKey( spep_0 + 286 -a, 1, -6.1 );
setRotateKey( spep_0 + 288 -a, 1, -6 );
setRotateKey( spep_0 + 296 -a, 1, -6 );
setRotateKey( spep_0 + 298 -a, 1, -6.2 );
setRotateKey( spep_0 + 326 -a, 1, -6.2 );
setRotateKey( spep_0 + 328 -a, 1, -6.1 );
setRotateKey( spep_0 + 368 -a, 1, -6.1 );
setRotateKey( spep_0 + 370 -a, 1, -6 );
setRotateKey( spep_0 + 398 -a, 1, -6 );
setRotateKey( spep_0 + 400 -a, 1, -6.1 );
setRotateKey( spep_0 + 418 -a, 1, -6.1 );
setRotateKey( spep_0 + 420 -a, 1, -6.2 );
setRotateKey( spep_0 + 426, 1, -6.2 );

-- ** 音 ** --
playSe( spep_0 + 178 -a, 1061 );  --ガード
playSe( spep_0 + 194, 44 );  --迫る
playSe( spep_0 + 218 -a, 1011 );  --殴る
playSe( spep_0 + 260, 44 );  --押し込む前
playSe( spep_0 + 294 -a, 1067 );  --押し込む
playSe( spep_0 + 380, 1021 );  --画面アップ

-- ** ホワイトフェード ** --
entryFade( spep_0 + 294 -a, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 200 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 426;

------------------------------------------------------
-- 構え(176F)
------------------------------------------------------

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_1 + 0, SP_03, 176, 0x100, -1, 0, 0, 0 );  --構え(ef_003)
setEffMoveKey( spep_1 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_1 + 176, kamae, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kamae, -1.0, 1.0 );
setEffScaleKey( spep_1 + 176, kamae, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kamae, 0 );
setEffRotateKey( spep_1 + 176, kamae, 0 );
setEffAlphaKey( spep_1 + 0, kamae, 255 );
setEffAlphaKey( spep_1 + 176, kamae, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_1 + 50, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_1 + 50, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_1 + 66,  190006, 68, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_1 + 66, ctgogo, 68, 10 );

setEffMoveKey( spep_1 + 66, ctgogo, -9.9, 515.5 , 0 );
setEffMoveKey( spep_1 + 134, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_1 + 66, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_1 + 126, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_1 + 128, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_1 + 130, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_1 + 132, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_1 + 134, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_1 + 66, ctgogo, 0 );
setEffRotateKey( spep_1 + 134, ctgogo, 0 );

setEffAlphaKey( spep_1 + 66, ctgogo, 255 );
setEffAlphaKey( spep_1 + 134, ctgogo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 176, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_1 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_1 + 40, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_1 + 166, 10, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_1 + 2, 1072 );  --構え
playSe( spep_1 + 66, SE_04 );  --ゴゴゴ
SE1 = playSe( spep_1 + 134, 17 );  --顔アップ
stopSe( spep_1 + 170, SE1, 10 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 176;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen4, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen4, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen4, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen4, 0 );
setEffRotateKey( spep_2 + 90, shuchusen4, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen4, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 発射(118F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha_f = entryEffectLife( spep_3 + 0, SP_04, 118, 0x100, -1, 0, 0, 0 );  --発射　手前(ef_004)
setEffMoveKey( spep_3 + 0, hassha_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 118, hassha_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hassha_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 118, hassha_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hassha_f, 0 );
setEffRotateKey( spep_3 + 118, hassha_f, 0 );
setEffAlphaKey( spep_3 + 0, hassha_f, 255 );
setEffAlphaKey( spep_3 + 118, hassha_f, 255 );

hassha_b = entryEffectLife( spep_3 + 0, SP_05, 118, 0x80, -1, 0, 0, 0 );  --発射　奥(ef_005)
setEffMoveKey( spep_3 + 0, hassha_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 118, hassha_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hassha_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 118, hassha_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hassha_b, 0 );
setEffRotateKey( spep_3 + 118, hassha_b, 0 );
setEffAlphaKey( spep_3 + 0, hassha_b, 255 );
setEffAlphaKey( spep_3 + 118, hassha_b, 255 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_3 + 0,  906, 18, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen5, 18, 20 );

setEffMoveKey( spep_3 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_3 + 18, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen5, 1.1, 1.25 );
setEffScaleKey( spep_3 + 18, shuchusen5, 1.1, 1.25 );

setEffRotateKey( spep_3 + 0, shuchusen5, 0 );
setEffRotateKey( spep_3 + 0, shuchusen5, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_3 + 8, shuchusen5, 255 );
setEffAlphaKey( spep_3 + 10, shuchusen5, 204 );
setEffAlphaKey( spep_3 + 12, shuchusen5, 153 );
setEffAlphaKey( spep_3 + 14, shuchusen5, 102 );
setEffAlphaKey( spep_3 + 16, shuchusen5, 51 );
setEffAlphaKey( spep_3 + 18, shuchusen5, 0 );

-- ** 書き文字エントリー ** --
ctzuo3 = entryEffectLife( spep_3 + 54 -a,  10012, 60, 0x100, -1, 0, 78.7, 260.5 );  --ズオッ
setEffShake( spep_3 + 60 -a, ctzuo3, 46, 25 );

setEffMoveKey( spep_3 + 54 -a, ctzuo3, 78.7, 260.5 , 0 );
setEffMoveKey( spep_3 + 56 -a, ctzuo3, 105, 288.6 , 0 );
setEffMoveKey( spep_3 + 58 -a, ctzuo3, 117.9, 330.1 , 0 );
setEffMoveKey( spep_3 + 60 -a, ctzuo3, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 106 -a, ctzuo3, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 108 -a, ctzuo3, 167.1, 345 , 0 );
setEffMoveKey( spep_3 + 110 -a, ctzuo3, 153.1, 368.5 , 0 );
setEffMoveKey( spep_3 + 112 -a, ctzuo3, 193.8, 337.2 , 0 );
setEffMoveKey( spep_3 + 114 -a, ctzuo3, 207.3, 333.2 , 0 );

setEffScaleKey( spep_3 + 54 -a, ctzuo3, 0.34, 0.34 );
setEffScaleKey( spep_3 + 56 -a, ctzuo3, 1.13, 1.13 );
setEffScaleKey( spep_3 + 58 -a, ctzuo3, 1.94, 1.94 );
setEffScaleKey( spep_3 + 60 -a, ctzuo3, 2.73, 2.73 );
setEffScaleKey( spep_3 + 106 -a, ctzuo3, 2.73, 2.73 );
setEffScaleKey( spep_3 + 108 -a, ctzuo3, 3.68, 3.68 );
setEffScaleKey( spep_3 + 110 -a, ctzuo3, 4.67, 4.67 );
setEffScaleKey( spep_3 + 112 -a, ctzuo3, 5.63, 5.63 );
setEffScaleKey( spep_3 + 114 -a, ctzuo3, 6.62, 6.62 );

setEffRotateKey( spep_3 + 54 -a, ctzuo3, 27.2 );
setEffRotateKey( spep_3 + 114 -a, ctzuo3, 27.2 );

setEffAlphaKey( spep_3 + 54 -a, ctzuo3, 255 );
setEffAlphaKey( spep_3 + 106 -a, ctzuo3, 255 );
setEffAlphaKey( spep_3 + 108 -a, ctzuo3, 191 );
setEffAlphaKey( spep_3 + 110 -a, ctzuo3, 128 );
setEffAlphaKey( spep_3 + 112 -a, ctzuo3, 64 );
setEffAlphaKey( spep_3 + 114 -a, ctzuo3, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 52, 1, 0 );
changeAnime( spep_3 + 0, 1, 106 );

setMoveKey( spep_3 + 0, 1, 3.1, 421.7 , 0 );
setMoveKey( spep_3 + 4 -a, 1, 4.4, 360.7 , 0 );
setMoveKey( spep_3 + 6 -a, 1, -2.9, 326.3 , 0 );
setMoveKey( spep_3 + 8 -a, 1, 5.8, 299.8 , 0 );
setMoveKey( spep_3 + 10 -a, 1, 2.5, 261.3 , 0 );
setMoveKey( spep_3 + 12 -a, 1, 7.2, 238.8 , 0 );
setMoveKey( spep_3 + 14 -a, 1, 3.9, 200.4 , 0 );
setMoveKey( spep_3 + 16 -a, 1, 7.4, 205.1 , 0 );
setMoveKey( spep_3 + 18 -a, 1, -1.1, 197.9 , 0 );
setMoveKey( spep_3 + 20 -a, 1, 6.4, 198.7 , 0 );
setMoveKey( spep_3 + 22 -a, 1, 2, 187.4 , 0 );
setMoveKey( spep_3 + 24 -a, 1, 5.5, 192.2 , 0 );
setMoveKey( spep_3 + 26 -a, 1, -3, 180.9 , 0 );
setMoveKey( spep_3 + 28 -a, 1, 4.5, 185.7 , 0 );
setMoveKey( spep_3 + 30 -a, 1, 0, 178.5 , 0 );
setMoveKey( spep_3 + 32 -a, 1, 3.5, 179.2 , 0 );
setMoveKey( spep_3 + 34 -a, 1, -0.9, 172 , 0 );
setMoveKey( spep_3 + 36 -a, 1, 2.6, 172.8 , 0 );
setMoveKey( spep_3 + 38 -a, 1, -5.9, 165.5 , 0 );
setMoveKey( spep_3 + 40 -a, 1, 1.6, 166.3 , 0 );
setMoveKey( spep_3 + 42 -a, 1, -2.9, 155 , 0 );
setMoveKey( spep_3 + 44 -a, 1, 0.6, 159.8 , 0 );
setMoveKey( spep_3 + 46 -a, 1, -7.8, 148.6 , 0 );
setMoveKey( spep_3 + 48 -a, 1, -0.3, 153.3 , 0 );
setMoveKey( spep_3 + 50 -a, 1, -4.8, 146.1 , 0 );
setMoveKey( spep_3 + 52, 1, 0.6, 422 , 0 );

setScaleKey( spep_3 + 0, 1, 4.02, 4.02 );
setScaleKey( spep_3 + 4 -a, 1, 3.38, 3.38 );
setScaleKey( spep_3 + 6 -a, 1, 3.06, 3.06 );
setScaleKey( spep_3 + 8 -a, 1, 2.74, 2.74 );
setScaleKey( spep_3 + 10 -a, 1, 2.42, 2.42 );
setScaleKey( spep_3 + 12 -a, 1, 2.1, 2.1 );
setScaleKey( spep_3 + 14 -a, 1, 1.77, 1.77 );
setScaleKey( spep_3 + 16 -a, 1, 1.73, 1.73 );
setScaleKey( spep_3 + 18 -a, 1, 1.69, 1.69 );
setScaleKey( spep_3 + 20 -a, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 22 -a, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 24 -a, 1, 1.56, 1.56 );
setScaleKey( spep_3 + 26 -a, 1, 1.52, 1.52 );
setScaleKey( spep_3 + 28 -a, 1, 1.48, 1.48 );
setScaleKey( spep_3 + 30 -a, 1, 1.43, 1.43 );
setScaleKey( spep_3 + 32 -a, 1, 1.39, 1.39 );
setScaleKey( spep_3 + 34 -a, 1, 1.35, 1.35 );
setScaleKey( spep_3 + 36 -a, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 38 -a, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 40 -a, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 42 -a, 1, 1.18, 1.18 );
setScaleKey( spep_3 + 44 -a, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 46 -a, 1, 1.09, 1.09 );
setScaleKey( spep_3 + 48 -a, 1, 1.05, 1.05 );
setScaleKey( spep_3 + 50 -a, 1, 1.01, 1.01 );
setScaleKey( spep_3 + 52, 1, 3.31, 3.31 );

setRotateKey( spep_3 + 0, 1, -40 );
setRotateKey( spep_3 + 52, 1, -40 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 118, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_3 + 52 -a, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_3 + 102, 16, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_3 + 2, 1021 );  --発射前
playSe( spep_3 + 54 -a, 1022 );  --発射

-- ** 次の準備 ** --
spep_4 = spep_3 + 118;

------------------------------------------------------
-- 爆発(192F)
------------------------------------------------------

-- ** エフェクト等 ** --
bakuhatsu = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --爆発(ef_006)
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 192, bakuhatsu, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, bakuhatsu, -1.0, 1.0 );
setEffScaleKey( spep_4 + 192, bakuhatsu, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 192, bakuhatsu, 0 );
setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 192, bakuhatsu, 255 );

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_4 + 40,  906, 152, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 40, shuchusen6, 152, 20 );

setEffMoveKey( spep_4 + 40, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_4 + 192, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_4 + 40, shuchusen6, 1.1, 1.25 );
setEffScaleKey( spep_4 + 192, shuchusen6, 1.1, 1.25 );

setEffRotateKey( spep_4 + 40, shuchusen6, 0 );
setEffRotateKey( spep_4 + 192, shuchusen6, 0 );

setEffAlphaKey( spep_4 + 40, shuchusen6, 0 );
setEffAlphaKey( spep_4 + 42, shuchusen6, 36 );
setEffAlphaKey( spep_4 + 44, shuchusen6, 73 );
setEffAlphaKey( spep_4 + 46, shuchusen6, 109 );
setEffAlphaKey( spep_4 + 48, shuchusen6, 146 );
setEffAlphaKey( spep_4 + 50, shuchusen6, 182 );
setEffAlphaKey( spep_4 + 52, shuchusen6, 219 );
setEffAlphaKey( spep_4 + 54, shuchusen6, 255 );
setEffAlphaKey( spep_4 + 192, shuchusen6, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 192, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_4 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_4 + 36 -a, 0, 2, 12, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_4 + 34, 1024);  --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 52 );
entryFade( spep_4 + 182, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_4 + 192 );

end


