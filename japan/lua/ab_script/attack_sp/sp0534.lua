--連続スーパーギャリック砲　大猿ベビー

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
SP_01 = 153031; --連続瞬間移動
SP_02 = 153032; --被弾前
SP_03 = 153033; --被弾後ろ
SP_04 = 153034; --気溜め
SP_05 = 153035; --放つ
SP_06 = 153036; --爆発

--敵側
SP_01r = 153037; --連続瞬間移動  --反転しない
SP_02r = 153032; --被弾前  
SP_03r = 153033; --被弾後ろ  
SP_04r = 153038; --気溜め  --反転しない
SP_05r = 153039; --放つ  --反転しない
SP_06r = 153036; --爆発

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
-- 連続瞬間移動(160F)
------------------------------------------------------
spep_0 = 0;

--***集中線***
shuchusen1 = entryEffectLife( spep_0 + 0, 906, 110, 0x100, -1, 0, 0, 0 );  --集中線

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 110, shuchusen1, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, shuchusen1, 1.08, 1.99 );
setEffScaleKey( spep_0 + 110, shuchusen1, 1.08, 1.99 );
setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 110, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 110, shuchusen1, 255 );


-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01,  0x80, -1, 0, 0, 0 );  --連続瞬間移動(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0 );
setEffMoveKey( spep_0 + 160, start, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0 );
setEffScaleKey( spep_0 + 160, start, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, start, 255 );
setEffAlphaKey( spep_0 + 160, start, 255 );
setEffRotateKey( spep_0 + 0, start, 0 );
setEffRotateKey( spep_0 + 160, start, 0 );

entryFadeBg(  spep_0,  0,  160,  0,  0,  0,  0,  255);  --黒背景

-- ** SE ** --
playSe(  spep_0,  1036);
playSe(  spep_0+24,  1016);  --気弾


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

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
-- ** SE ** --
playSe(  spep_0+30,  1016);  --気弾
playSe(  spep_0+40,  1016);  --気弾
playSe(  spep_0+50,  1016);  --気弾
playSe(  spep_0+60,  43);  --瞬間移動
playSe(  spep_0+70,  1016);  --気弾
playSe(  spep_0+80,  43);  --瞬間移動
playSe(  spep_0+90,  1016);  --気弾
playSe(  spep_0+100,  1016);  --気弾
playSe(  spep_0+110,  43);  --瞬間移動
playSe(  spep_0+120,  1016);  --気弾
playSe(  spep_0+130,  1016);  --気弾
playSe(  spep_0+140,  1016);  --気弾
playSe(  spep_0+150,  1016);  --気弾

entryFade( spep_0 + 154, 4, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

------------------------------------------------------
-- 被弾(80F)
------------------------------------------------------
spep_1 = spep_0+160;  

a = 2

-- ** 書き文字 ** --
ct_zudodo = entryEffectLife( spep_1 + 20 -a,  10014, 58, 0x100, -1, 0, 159.2, 335 );  --ズドド

setEffMoveKey( spep_1 + 20 -a, ct_zudodo, 159.2, 335 , 0 );
setEffMoveKey( spep_1 + 22 -a, ct_zudodo, 150.6, 318.5 , 0 );
setEffMoveKey( spep_1 + 24 -a, ct_zudodo, 163.5, 326.8 , 0 );
setEffMoveKey( spep_1 + 26 -a, ct_zudodo, 147, 301.2 , 0 );
setEffMoveKey( spep_1 + 28 -a, ct_zudodo, 167.8, 318.6 , 0 );
setEffMoveKey( spep_1 + 30 -a, ct_zudodo, 147.9, 305.7 , 0 );
setEffMoveKey( spep_1 + 32 -a, ct_zudodo, 161.2, 331.1 , 0 );
setEffMoveKey( spep_1 + 34 -a, ct_zudodo, 151.6, 320.1 , 0 );
setEffMoveKey( spep_1 + 36 -a, ct_zudodo, 163.6, 334 , 0 );
setEffMoveKey( spep_1 + 38 -a, ct_zudodo, 153.7, 322.6 , 0 );
setEffMoveKey( spep_1 + 40 -a, ct_zudodo, 166.1, 336.9 , 0 );
setEffMoveKey( spep_1 + 42 -a, ct_zudodo, 155.7, 325.1 , 0 );
setEffMoveKey( spep_1 + 44 -a, ct_zudodo, 168.5, 339.9 , 0 );
setEffMoveKey( spep_1 + 46 -a, ct_zudodo, 157.8, 327.5 , 0 );
setEffMoveKey( spep_1 + 48 -a, ct_zudodo, 171, 342.8 , 0 );
setEffMoveKey( spep_1 + 50 -a, ct_zudodo, 159.8, 330 , 0 );
setEffMoveKey( spep_1 + 52 -a, ct_zudodo, 173.4, 345.7 , 0 );
setEffMoveKey( spep_1 + 54 -a, ct_zudodo, 161.9, 332.5 , 0 );
setEffMoveKey( spep_1 + 56 -a, ct_zudodo, 175.8, 348.6 , 0 );
setEffMoveKey( spep_1 + 58 -a, ct_zudodo, 163.9, 334.9 , 0 );
setEffMoveKey( spep_1 + 60 -a, ct_zudodo, 178.3, 351.6 , 0 );
setEffMoveKey( spep_1 + 62 -a, ct_zudodo, 166, 337.4 , 0 );
setEffMoveKey( spep_1 + 64 -a, ct_zudodo, 180.7, 354.5 , 0 );
setEffMoveKey( spep_1 + 66 -a, ct_zudodo, 168, 339.9 , 0 );
setEffMoveKey( spep_1 + 68 -a, ct_zudodo, 183.2, 357.4 , 0 );
setEffMoveKey( spep_1 + 70 -a, ct_zudodo, 170.1, 342.4 , 0 );
setEffMoveKey( spep_1 + 72 -a, ct_zudodo, 185.6, 360.3 , 0 );
setEffMoveKey( spep_1 + 74 -a, ct_zudodo, 172.1, 344.8 , 0 );
setEffMoveKey( spep_1 + 76 -a, ct_zudodo, 188, 363.3 , 0 );
setEffMoveKey( spep_1 + 78 -a, ct_zudodo, 174.1, 347.3 , 0 );
setEffScaleKey( spep_1 + 20 -a, ct_zudodo, 1.16, 1.16 );
setEffScaleKey( spep_1 + 22 -a, ct_zudodo, 1.84, 1.84 );
setEffScaleKey( spep_1 + 24 -a, ct_zudodo, 2.52, 2.52 );
setEffScaleKey( spep_1 + 26 -a, ct_zudodo, 3.2, 3.2 );
setEffScaleKey( spep_1 + 28 -a, ct_zudodo, 3.88, 3.88 );
setEffScaleKey( spep_1 + 30 -a, ct_zudodo, 2.84, 2.84 );
setEffScaleKey( spep_1 + 32 -a, ct_zudodo, 1.81, 1.81 );
setEffScaleKey( spep_1 + 34 -a, ct_zudodo, 1.84, 1.84 );
setEffScaleKey( spep_1 + 36 -a, ct_zudodo, 1.88, 1.88 );
setEffScaleKey( spep_1 + 38 -a, ct_zudodo, 1.91, 1.91 );
setEffScaleKey( spep_1 + 40 -a, ct_zudodo, 1.94, 1.94 );
setEffScaleKey( spep_1 + 42 -a, ct_zudodo, 1.98, 1.98 );
setEffScaleKey( spep_1 + 44 -a, ct_zudodo, 2.01, 2.01 );
setEffScaleKey( spep_1 + 46 -a, ct_zudodo, 2.05, 2.05 );
setEffScaleKey( spep_1 + 48 -a, ct_zudodo, 2.08, 2.08 );
setEffScaleKey( spep_1 + 50 -a, ct_zudodo, 2.11, 2.11 );
setEffScaleKey( spep_1 + 52 -a, ct_zudodo, 2.15, 2.15 );
setEffScaleKey( spep_1 + 54 -a, ct_zudodo, 2.18, 2.18 );
setEffScaleKey( spep_1 + 56 -a, ct_zudodo, 2.21, 2.21 );
setEffScaleKey( spep_1 + 58 -a, ct_zudodo, 2.25, 2.25 );
setEffScaleKey( spep_1 + 60 -a, ct_zudodo, 2.28, 2.28 );
setEffScaleKey( spep_1 + 62 -a, ct_zudodo, 2.32, 2.32 );
setEffScaleKey( spep_1 + 64 -a, ct_zudodo, 2.35, 2.35 );
setEffScaleKey( spep_1 + 66 -a, ct_zudodo, 2.38, 2.38 );
setEffScaleKey( spep_1 + 68 -a, ct_zudodo, 2.42, 2.42 );
setEffScaleKey( spep_1 + 70 -a, ct_zudodo, 2.45, 2.45 );
setEffScaleKey( spep_1 + 72 -a, ct_zudodo, 2.48, 2.48 );
setEffScaleKey( spep_1 + 74 -a, ct_zudodo, 2.52, 2.52 );
setEffScaleKey( spep_1 + 76 -a, ct_zudodo, 2.55, 2.55 );
setEffScaleKey( spep_1 + 78 -a, ct_zudodo, 2.59, 2.59 );
setEffRotateKey( spep_1 + 20 -a, ct_zudodo, 58 );
setEffRotateKey( spep_1 + 78 -a, ct_zudodo, 58 );
setEffAlphaKey( spep_1 + 20 -a, ct_zudodo, 255 );
setEffAlphaKey( spep_1 + 78 -a, ct_zudodo, 255 );


-- ** エフェクト等 ** --
hidanBG = entryEffect( spep_1 + 0, SP_03,  0x80, -1, 0, 0, 0 );  --被弾後ろ(ef_003)
setEffMoveKey( spep_1 + 0, hidanBG, 0, 0 , 0 );
setEffMoveKey( spep_1 + 80, hidanBG, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, hidanBG, 1.0, 1.0 );
setEffScaleKey( spep_1 + 80, hidanBG, 1.0, 1.0 );
setEffAlphaKey( spep_1 + 0, hidanBG, 255 );
setEffAlphaKey( spep_1 + 80, hidanBG, 255 );
setEffRotateKey( spep_1 + 0, hidanBG, 0 );
setEffRotateKey( spep_1 + 80, hidanBG, 0 );

-- ** 敵の動き ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 78 -a, 1, 0 ); --消す
changeAnime( spep_1 + 0, 1, 104 );  --構え
changeAnime( spep_1 + 18 -a, 1, 108 );  --くの字
setShakeChara(  spep_1,  1,  78,  10);   --揺れ


setMoveKey( spep_1 + 0, 1, -386.9, -29.9 , 0 );
setMoveKey( spep_1 + 2, 1, -319.1, -3.1 , 0 );
setMoveKey( spep_1 + 4, 1, -251.2, 23.7 , 0 );
setMoveKey( spep_1 + 6, 1, -183.4, 50.5 , 0 );
setMoveKey( spep_1 + 8, 1, -115.5, 77.3 , 0 );
setMoveKey( spep_1 + 10, 1, -47.6, 104 , 0 );
setMoveKey( spep_1 + 12, 1, -43.1, 105.7 , 0 );
setMoveKey( spep_1 + 14, 1, -38.7, 107.3 , 0 );
--setMoveKey( spep_1 + 17, 1, -34.2, 108.9 , 0 );

setMoveKey( spep_1 + 18 -a, 1, -4.6, 92.9 , 0 );  --くの字
setMoveKey( spep_1 + 20 -a, 1, 25, 86.1 , 0 );
setMoveKey( spep_1 + 22 -a, 1, 50.5, 80.8 , 0 );
setMoveKey( spep_1 + 24 -a, 1, 72, 76.8 , 0 );
setMoveKey( spep_1 + 26 -a, 1, 89.6, 74.1 , 0 );
setMoveKey( spep_1 + 28 -a, 1, 103.5, 72.7 , 0 );
setMoveKey( spep_1 + 30 -a, 1, 114.7, 71.9 , 0 );
setMoveKey( spep_1 + 32 -a, 1, 125.7, 71.3 , 0 );
setMoveKey( spep_1 + 34 -a, 1, 136.6, 70.7 , 0 );
setMoveKey( spep_1 + 36 -a, 1, 147.3, 70.2 , 0 );
setMoveKey( spep_1 + 38 -a, 1, 157.8, 69.7 , 0 );
setMoveKey( spep_1 + 40 -a, 1, 168.1, 69.3 , 0 );
setMoveKey( spep_1 + 42 -a, 1, 178.3, 69 , 0 );
setMoveKey( spep_1 + 44 -a, 1, 188.3, 68.7 , 0 );
setMoveKey( spep_1 + 46 -a, 1, 198.1, 68.5 , 0 );
setMoveKey( spep_1 + 48 -a, 1, 207.8, 68.4 , 0 );
setMoveKey( spep_1 + 50 -a, 1, 217.3, 68.3 , 0 );
setMoveKey( spep_1 + 52 -a, 1, 226.6, 68.3 , 0 );
setMoveKey( spep_1 + 54 -a, 1, 235.7, 68.3 , 0 );
setMoveKey( spep_1 + 56 -a, 1, 244.7, 68.4 , 0 );
setMoveKey( spep_1 + 58 -a, 1, 253.5, 68.5 , 0 );
setMoveKey( spep_1 + 60 -a, 1, 262.1, 68.8 , 0 );
setMoveKey( spep_1 + 62 -a, 1, 270.6, 69 , 0 );
setMoveKey( spep_1 + 64 -a, 1, 278.9, 69.4 , 0 );
setMoveKey( spep_1 + 66 -a, 1, 287, 69.8 , 0 );
setMoveKey( spep_1 + 68 -a, 1, 294.9, 70.3 , 0 );
setMoveKey( spep_1 + 70 -a, 1, 302.7, 70.8 , 0 );
setMoveKey( spep_1 + 72 -a, 1, 310.2, 71.4 , 0 );
setMoveKey( spep_1 + 74 -a, 1, 311.6, 74.2 , 0 );
setMoveKey( spep_1 + 76 -a, 1, 313, 77 , 0 );
setMoveKey( spep_1 + 78 -a, 1, 314.4, 79.8 , 0 );

setScaleKey( spep_1 + 0 , 1, 3.48, 3.48 );
setScaleKey( spep_1 + 2 , 1, 3.1, 3.1 );
setScaleKey( spep_1 + 4 , 1, 2.71, 2.71 );
setScaleKey( spep_1 + 6 , 1, 2.32, 2.32 );
setScaleKey( spep_1 + 8 , 1, 1.93, 1.93 );
setScaleKey( spep_1 + 10 , 1, 1.54, 1.54 );
setScaleKey( spep_1 + 12 , 1, 1.52, 1.52 );
setScaleKey( spep_1 + 14 , 1, 1.51, 1.51 );
--setScaleKey( spep_1 + 17 , 1, 1.49, 1.49 );
setScaleKey( spep_1 + 18 -a, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 20 -a, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 22 -a, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 24 -a, 1, 1.4, 1.4 );
setScaleKey( spep_1 + 26 -a, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 28 -a, 1, 1.37, 1.37 );
setScaleKey( spep_1 + 30 -a, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 32 -a, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 34 -a, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 36 -a, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 38 -a, 1, 1.29, 1.29 );
setScaleKey( spep_1 + 40 -a, 1, 1.28, 1.28 );
setScaleKey( spep_1 + 42 -a, 1, 1.26, 1.26 );
setScaleKey( spep_1 + 44 -a, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 46 -a, 1, 1.24, 1.24 );
setScaleKey( spep_1 + 48 -a, 1, 1.22, 1.22 );
setScaleKey( spep_1 + 50 -a, 1, 1.21, 1.21 );
setScaleKey( spep_1 + 52 -a, 1, 1.19, 1.19 );
setScaleKey( spep_1 + 54 -a, 1, 1.18, 1.18 );
setScaleKey( spep_1 + 56 -a, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 58 -a, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 60 -a, 1, 1.13, 1.13 );
setScaleKey( spep_1 + 62 -a, 1, 1.12, 1.12 );
setScaleKey( spep_1 + 64 -a, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 66 -a, 1, 1.09, 1.09 );
setScaleKey( spep_1 + 68 -a, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 70 -a, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 72 -a, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 74 -a, 1, 1.03, 1.03 );
setScaleKey( spep_1 + 76 -a, 1, 1.01, 1.01 );
setScaleKey( spep_1 + 78 -a, 1, 1, 1 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 15, 1, 0 );
setRotateKey( spep_1 + 18 -a, 1, 9 );
setRotateKey( spep_1 + 20 -a, 1, 8.9 );
setRotateKey( spep_1 + 24 -a, 1, 8.9 );
setRotateKey( spep_1 + 26 -a, 1, 8.8 );
setRotateKey( spep_1 + 38 -a, 1, 8.8 );
setRotateKey( spep_1 + 40 -a, 1, 8.9 );
setRotateKey( spep_1 + 60 -a, 1, 8.9 );
setRotateKey( spep_1 + 62 -a, 1, 9 );
setRotateKey( spep_1 + 78 -a, 1, 9 );

hidan = entryEffect( spep_1 + 0, SP_02,  0x100, -1, 0, 0, 0 );  --被弾前(ef_002)
setEffMoveKey( spep_1 + 0, hidan, 0, 0 , 0 );
setEffMoveKey( spep_1 + 80, hidan, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, hidan, 1.0, 1.0 );
setEffScaleKey( spep_1 + 80, hidan, 1.0, 1.0 );
setEffAlphaKey( spep_1 + 0, hidan, 255 );
setEffAlphaKey( spep_1 + 80, hidan, 255 );
setEffRotateKey( spep_1 + 0, hidan, 0 );
setEffRotateKey( spep_1 + 80, hidan, 0 );

-- ** SE ** --
playSe(  spep_1,  1026);  --気弾
playSe(  spep_1+10,  1026);  --気弾
playSe(  spep_1+20,  1026);  --気弾
playSe(  spep_1+30,  1026);  --気弾
playSe(  spep_1+40,  1026);  --気弾
playSe(  spep_1+50,  1026);  --気弾
playSe(  spep_1+60,  1026);  --気弾
playSe(  spep_1+70,  1026);  --気弾

entryFadeBg(  spep_1,  0,  80,  0,  0,  0,  0,  255);  --黒背景

entryFade( spep_1 + 72, 4, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

------------------------------------------------------
-- 溜め(130F)
------------------------------------------------------
spep_2 = spep_1+80;

-- ** エフェクト等 ** --
kitame = entryEffect( spep_2 + 0, SP_04,  0x80, -1, 0, 0, 0 );  --被弾後ろ(ef_003)
setEffMoveKey( spep_2 + 0, kitame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 130, kitame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kitame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 130, kitame, 1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, kitame, 255 );
setEffAlphaKey( spep_2 + 130, kitame, 255 );
setEffRotateKey( spep_2 + 0, kitame, 0 );
setEffRotateKey( spep_2 + 130, kitame, 0 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_2 + 30 -a, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_2 + 30-a, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_2 + 42-a,  190006, 70, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_2 + 42-a, ctgogo, 68, 10 );

setEffMoveKey( spep_2 + 42-a, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_2 + 112-a, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_2 + 42-a, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_2 + 86-a, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_2 + 90-a, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_2 + 94-a, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_2 + 110-a, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_2 + 112-a, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_2 + 42-a, ctgogo, 0 );
setEffRotateKey( spep_2 + 112-a, ctgogo, 0 );

setEffAlphaKey( spep_2 + 42-a, ctgogo, 255 );
setEffAlphaKey( spep_2 + 112-a, ctgogo, 255 );

entryFadeBg(  spep_2,  0,  130,  0,  0,  0,  0,  255);  --黒背景

--  **SE** --
playSe(  spep_2,  1036);  --気溜め 
playSe(  spep_2+20,  1036);  --気溜め 
playSe(  spep_2+40,  SE_04);  --カットイン 
playSe(  spep_2+60,  1036);  --気溜め 
playSe(  spep_2+80,  1036);  --気溜め 
playSe(  spep_2+100,  1036);  --気溜め 
playSe(  spep_2+120,  1036);  --気溜め 

entryFade( spep_2 + 126, 4, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--------------------------------------
--カードカットイン(90F)
--------------------------------------
spep_3 = spep_2+130;

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線

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
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

------------------------------------------------------
-- 放つ(120F)
------------------------------------------------------
spep_4 = spep_3+90;

--***書き文字***
ct_zuo = entryEffectLife( spep_4 + 36,  10012, 56, 0x100, -1, 0, 78.6, 260.5 );  --ズオ

setEffShake(  spep_4 +36,  ct_zuo,  56,  20);  --揺れ
setEffMoveKey( spep_4 + 36, ct_zuo, 78.6, 260.5 , 0 );
setEffMoveKey( spep_4 + 38, ct_zuo, 117.1, 303.7 , 0 );
setEffMoveKey( spep_4 + 40, ct_zuo, 137.5, 364.8 , 0 );
setEffMoveKey( spep_4 + 42, ct_zuo, 153.5, 348.8 , 0 );
setEffMoveKey( spep_4 + 82, ct_zuo, 153.5, 348.8 , 0 );
setEffMoveKey( spep_4 + 84, ct_zuo, 152, 366.3 , 0 );
setEffMoveKey( spep_4 + 86, ct_zuo, 192, 342.2 , 0 );
setEffMoveKey( spep_4 + 88, ct_zuo, 180.8, 369.2 , 0 );
setEffMoveKey( spep_4 + 90, ct_zuo, 230.5, 335.5 , 0 );
setEffMoveKey( spep_4 + 92, ct_zuo, 249.8, 332.2 , 0 );
setEffScaleKey( spep_4 + 36, ct_zuo, 0.34, 0.34 );
setEffScaleKey( spep_4 + 38, ct_zuo, 1.54, 1.54 );
setEffScaleKey( spep_4 + 40, ct_zuo, 2.73, 2.73 );
setEffScaleKey( spep_4 + 82, ct_zuo, 2.73, 2.73 );
setEffScaleKey( spep_4 + 84, ct_zuo, 3.55, 3.55 );
setEffScaleKey( spep_4 + 86, ct_zuo, 4.37, 4.37 );
setEffScaleKey( spep_4 + 88, ct_zuo, 5.19, 5.19 );
setEffScaleKey( spep_4 + 90, ct_zuo, 6.01, 6.01 );
setEffScaleKey( spep_4 + 92, ct_zuo, 6.82, 6.82 );
setEffRotateKey( spep_4 + 36, ct_zuo, 27.2 );
setEffRotateKey( spep_4 + 92, ct_zuo, 27.2 );
setEffAlphaKey( spep_4 + 36, ct_zuo, 255 );
setEffAlphaKey( spep_4 + 82, ct_zuo, 255 );
setEffAlphaKey( spep_4 + 84, ct_zuo, 204 );
setEffAlphaKey( spep_4 + 86, ct_zuo, 153 );
setEffAlphaKey( spep_4 + 88, ct_zuo, 102 );
setEffAlphaKey( spep_4 + 90, ct_zuo, 51 );
setEffAlphaKey( spep_4 + 92, ct_zuo, 0 );

--***集中線***
shuchusen2 = entryEffectLife( spep_4 + 0, 906, 120, 0x100, -1, 0, 0, 0 );  --集中線

setEffMoveKey( spep_4 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 120, shuchusen2, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shuchusen2, 1.1, 1.75 );
setEffScaleKey( spep_4 + 120, shuchusen2, 1.1, 1.75 );
setEffRotateKey( spep_4 + 0, shuchusen2, 0 );
setEffRotateKey( spep_4 + 120, shuchusen2, 0 );
setEffAlphaKey( spep_4 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 120, shuchusen2, 255 );


-- ** エフェクト等 ** --
hanatsu = entryEffect( spep_4 + 0, SP_05,  0x80, -1, 0, 0, 0 );  --被弾後ろ(ef_003)
setEffMoveKey( spep_4 + 0, hanatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 120, hanatsu, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hanatsu, 1.0, 1.0 );
setEffScaleKey( spep_4 + 120, hanatsu, 1.0, 1.0 );
setEffAlphaKey( spep_4 + 0, hanatsu, 255 );
setEffAlphaKey( spep_4 + 120, hanatsu, 255 );
setEffRotateKey( spep_4 + 0, hanatsu, 0 );
setEffRotateKey( spep_4 + 120, hanatsu, 0 );

entryFadeBg(  spep_4,  0,  120,  0,  0,  0,  0,  255);  --黒背景

playSe(  spep_4,  SE_06);

entryFade( spep_4 + 112, 6, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

------------------------------------------------------
-- 爆破(180F)
------------------------------------------------------
spep_5 = spep_4 +120;

-- ** エフェクト等 ** --
bakuha = entryEffect( spep_5 + 0, SP_06,  0x80, -1, 0, 0, 0 );  --被弾後ろ(ef_003)
setEffMoveKey( spep_5 + 0, bakuha, 0, 0 , 0 );
setEffMoveKey( spep_5 + 180, bakuha, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, bakuha, 1.0, 1.0 );
setEffScaleKey( spep_5 + 180, bakuha, 1.0, 1.0 );
setEffAlphaKey( spep_5 + 0, bakuha, 255 );
setEffAlphaKey( spep_5 + 180, bakuha, 255 );
setEffRotateKey( spep_5 + 0, bakuha, 0 );
setEffRotateKey( spep_5 + 180, bakuha, 0 );

playSe(  spep_5,  SE_07);
playSe(  spep_5+60,  SE_10);
playSe(  spep_5+70,  1060);

entryFadeBg(  spep_5,  0,  180,  0,  0,  0,  0,  255);  --黒背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 60 );
entryFade( spep_5 + 150, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_5 + 160 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 連続瞬間移動(160F)
------------------------------------------------------
spep_0 = 0;

--***集中線***
shuchusen1 = entryEffectLife( spep_0 + 0, 906, 110, 0x100, -1, 0, 0, 0 );  --集中線

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 110, shuchusen1, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, shuchusen1, 1.08, 1.99 );
setEffScaleKey( spep_0 + 110, shuchusen1, 1.08, 1.99 );
setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 110, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 110, shuchusen1, 255 );


-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01r,  0x80, -1, 0, 0, 0 );  --連続瞬間移動(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0 );
setEffMoveKey( spep_0 + 160, start, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, start, -1.0, 1.0 );
setEffScaleKey( spep_0 + 160, start, -1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, start, 255 );
setEffAlphaKey( spep_0 + 160, start, 255 );
setEffRotateKey( spep_0 + 0, start, 0 );
setEffRotateKey( spep_0 + 160, start, 0 );

entryFadeBg(  spep_0,  0,  160,  0,  0,  0,  0,  255);  --黒背景

-- ** SE ** --
playSe(  spep_0,  1036);
playSe(  spep_0+24,  1016);  --気弾


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

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
-- ** SE ** --
playSe(  spep_0+30,  1016);  --気弾
playSe(  spep_0+40,  1016);  --気弾
playSe(  spep_0+50,  1016);  --気弾
playSe(  spep_0+60,  43);  --瞬間移動
playSe(  spep_0+70,  1016);  --気弾
playSe(  spep_0+80,  43);  --瞬間移動
playSe(  spep_0+90,  1016);  --気弾
playSe(  spep_0+100,  1016);  --気弾
playSe(  spep_0+110,  43);  --瞬間移動
playSe(  spep_0+120,  1016);  --気弾
playSe(  spep_0+130,  1016);  --気弾
playSe(  spep_0+140,  1016);  --気弾
playSe(  spep_0+150,  1016);  --気弾

entryFade( spep_0 + 154, 4, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

------------------------------------------------------
-- 被弾(80F)
------------------------------------------------------
spep_1 = spep_0+160;  

a = 2;

-- ** 書き文字 ** --
ct_zudodo = entryEffectLife( spep_1 + 20 -a,  10014, 58, 0x100, -1, 0, 159.2, 335 );  --ズドド

setEffMoveKey( spep_1 + 20 -a, ct_zudodo, 159.2, 335 , 0 );
setEffMoveKey( spep_1 + 22 -a, ct_zudodo, 150.6, 318.5 , 0 );
setEffMoveKey( spep_1 + 24 -a, ct_zudodo, 163.5, 326.8 , 0 );
setEffMoveKey( spep_1 + 26 -a, ct_zudodo, 147, 301.2 , 0 );
setEffMoveKey( spep_1 + 28 -a, ct_zudodo, 167.8, 318.6 , 0 );
setEffMoveKey( spep_1 + 30 -a, ct_zudodo, 147.9, 305.7 , 0 );
setEffMoveKey( spep_1 + 32 -a, ct_zudodo, 161.2, 331.1 , 0 );
setEffMoveKey( spep_1 + 34 -a, ct_zudodo, 151.6, 320.1 , 0 );
setEffMoveKey( spep_1 + 36 -a, ct_zudodo, 163.6, 334 , 0 );
setEffMoveKey( spep_1 + 38 -a, ct_zudodo, 153.7, 322.6 , 0 );
setEffMoveKey( spep_1 + 40 -a, ct_zudodo, 166.1, 336.9 , 0 );
setEffMoveKey( spep_1 + 42 -a, ct_zudodo, 155.7, 325.1 , 0 );
setEffMoveKey( spep_1 + 44 -a, ct_zudodo, 168.5, 339.9 , 0 );
setEffMoveKey( spep_1 + 46 -a, ct_zudodo, 157.8, 327.5 , 0 );
setEffMoveKey( spep_1 + 48 -a, ct_zudodo, 171, 342.8 , 0 );
setEffMoveKey( spep_1 + 50 -a, ct_zudodo, 159.8, 330 , 0 );
setEffMoveKey( spep_1 + 52 -a, ct_zudodo, 173.4, 345.7 , 0 );
setEffMoveKey( spep_1 + 54 -a, ct_zudodo, 161.9, 332.5 , 0 );
setEffMoveKey( spep_1 + 56 -a, ct_zudodo, 175.8, 348.6 , 0 );
setEffMoveKey( spep_1 + 58 -a, ct_zudodo, 163.9, 334.9 , 0 );
setEffMoveKey( spep_1 + 60 -a, ct_zudodo, 178.3, 351.6 , 0 );
setEffMoveKey( spep_1 + 62 -a, ct_zudodo, 166, 337.4 , 0 );
setEffMoveKey( spep_1 + 64 -a, ct_zudodo, 180.7, 354.5 , 0 );
setEffMoveKey( spep_1 + 66 -a, ct_zudodo, 168, 339.9 , 0 );
setEffMoveKey( spep_1 + 68 -a, ct_zudodo, 183.2, 357.4 , 0 );
setEffMoveKey( spep_1 + 70 -a, ct_zudodo, 170.1, 342.4 , 0 );
setEffMoveKey( spep_1 + 72 -a, ct_zudodo, 185.6, 360.3 , 0 );
setEffMoveKey( spep_1 + 74 -a, ct_zudodo, 172.1, 344.8 , 0 );
setEffMoveKey( spep_1 + 76 -a, ct_zudodo, 188, 363.3 , 0 );
setEffMoveKey( spep_1 + 78 -a, ct_zudodo, 174.1, 347.3 , 0 );
setEffScaleKey( spep_1 + 20 -a, ct_zudodo, 1.16, 1.16 );
setEffScaleKey( spep_1 + 22 -a, ct_zudodo, 1.84, 1.84 );
setEffScaleKey( spep_1 + 24 -a, ct_zudodo, 2.52, 2.52 );
setEffScaleKey( spep_1 + 26 -a, ct_zudodo, 3.2, 3.2 );
setEffScaleKey( spep_1 + 28 -a, ct_zudodo, 3.88, 3.88 );
setEffScaleKey( spep_1 + 30 -a, ct_zudodo, 2.84, 2.84 );
setEffScaleKey( spep_1 + 32 -a, ct_zudodo, 1.81, 1.81 );
setEffScaleKey( spep_1 + 34 -a, ct_zudodo, 1.84, 1.84 );
setEffScaleKey( spep_1 + 36 -a, ct_zudodo, 1.88, 1.88 );
setEffScaleKey( spep_1 + 38 -a, ct_zudodo, 1.91, 1.91 );
setEffScaleKey( spep_1 + 40 -a, ct_zudodo, 1.94, 1.94 );
setEffScaleKey( spep_1 + 42 -a, ct_zudodo, 1.98, 1.98 );
setEffScaleKey( spep_1 + 44 -a, ct_zudodo, 2.01, 2.01 );
setEffScaleKey( spep_1 + 46 -a, ct_zudodo, 2.05, 2.05 );
setEffScaleKey( spep_1 + 48 -a, ct_zudodo, 2.08, 2.08 );
setEffScaleKey( spep_1 + 50 -a, ct_zudodo, 2.11, 2.11 );
setEffScaleKey( spep_1 + 52 -a, ct_zudodo, 2.15, 2.15 );
setEffScaleKey( spep_1 + 54 -a, ct_zudodo, 2.18, 2.18 );
setEffScaleKey( spep_1 + 56 -a, ct_zudodo, 2.21, 2.21 );
setEffScaleKey( spep_1 + 58 -a, ct_zudodo, 2.25, 2.25 );
setEffScaleKey( spep_1 + 60 -a, ct_zudodo, 2.28, 2.28 );
setEffScaleKey( spep_1 + 62 -a, ct_zudodo, 2.32, 2.32 );
setEffScaleKey( spep_1 + 64 -a, ct_zudodo, 2.35, 2.35 );
setEffScaleKey( spep_1 + 66 -a, ct_zudodo, 2.38, 2.38 );
setEffScaleKey( spep_1 + 68 -a, ct_zudodo, 2.42, 2.42 );
setEffScaleKey( spep_1 + 70 -a, ct_zudodo, 2.45, 2.45 );
setEffScaleKey( spep_1 + 72 -a, ct_zudodo, 2.48, 2.48 );
setEffScaleKey( spep_1 + 74 -a, ct_zudodo, 2.52, 2.52 );
setEffScaleKey( spep_1 + 76 -a, ct_zudodo, 2.55, 2.55 );
setEffScaleKey( spep_1 + 78 -a, ct_zudodo, 2.59, 2.59 );
setEffRotateKey( spep_1 + 20 -a, ct_zudodo, 0 );
setEffRotateKey( spep_1 + 78 -a, ct_zudodo, 0 );
setEffAlphaKey( spep_1 + 20 -a, ct_zudodo, 255 );
setEffAlphaKey( spep_1 + 78 -a, ct_zudodo, 255 );


-- ** エフェクト等 ** --
hidanBG = entryEffect( spep_1 + 0, SP_03r,  0x80, -1, 0, 0, 0 );  --被弾後ろ(ef_003)
setEffMoveKey( spep_1 + 0, hidanBG, 0, 0 , 0 );
setEffMoveKey( spep_1 + 80, hidanBG, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, hidanBG, 1.0, 1.0 );
setEffScaleKey( spep_1 + 80, hidanBG, 1.0, 1.0 );
setEffAlphaKey( spep_1 + 0, hidanBG, 255 );
setEffAlphaKey( spep_1 + 80, hidanBG, 255 );
setEffRotateKey( spep_1 + 0, hidanBG, 0 );
setEffRotateKey( spep_1 + 80, hidanBG, 0 );

-- ** 敵の動き ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 78 -a, 1, 0 ); --消す
changeAnime( spep_1 + 0, 1, 104 );  --構え
changeAnime( spep_1 + 18 -a, 1, 108 );  --くの字
setShakeChara(  spep_1,  1,  78,  10);   --揺れ


setMoveKey( spep_1 + 0, 1, -386.9, -29.9 , 0 );
setMoveKey( spep_1 + 2, 1, -319.1, -3.1 , 0 );
setMoveKey( spep_1 + 4, 1, -251.2, 23.7 , 0 );
setMoveKey( spep_1 + 6, 1, -183.4, 50.5 , 0 );
setMoveKey( spep_1 + 8, 1, -115.5, 77.3 , 0 );
setMoveKey( spep_1 + 10, 1, -47.6, 104 , 0 );
setMoveKey( spep_1 + 12, 1, -43.1, 105.7 , 0 );
setMoveKey( spep_1 + 14, 1, -38.7, 107.3 , 0 );

--setMoveKey( spep_1 + 17, 1, -34.2, 108.9 , 0 );
setMoveKey( spep_1 + 18 -a, 1, -4.6, 92.9 , 0 );
setMoveKey( spep_1 + 20 -a, 1, 25, 86.1 , 0 );
setMoveKey( spep_1 + 22 -a, 1, 50.5, 80.8 , 0 );
setMoveKey( spep_1 + 24 -a, 1, 72, 76.8 , 0 );
setMoveKey( spep_1 + 26 -a, 1, 89.6, 74.1 , 0 );
setMoveKey( spep_1 + 28 -a, 1, 103.5, 72.7 , 0 );
setMoveKey( spep_1 + 30 -a, 1, 114.7, 71.9 , 0 );
setMoveKey( spep_1 + 32 -a, 1, 125.7, 71.3 , 0 );
setMoveKey( spep_1 + 34 -a, 1, 136.6, 70.7 , 0 );
setMoveKey( spep_1 + 36 -a, 1, 147.3, 70.2 , 0 );
setMoveKey( spep_1 + 38 -a, 1, 157.8, 69.7 , 0 );
setMoveKey( spep_1 + 40 -a, 1, 168.1, 69.3 , 0 );
setMoveKey( spep_1 + 42 -a, 1, 178.3, 69 , 0 );
setMoveKey( spep_1 + 44 -a, 1, 188.3, 68.7 , 0 );
setMoveKey( spep_1 + 46 -a, 1, 198.1, 68.5 , 0 );
setMoveKey( spep_1 + 48 -a, 1, 207.8, 68.4 , 0 );
setMoveKey( spep_1 + 50 -a, 1, 217.3, 68.3 , 0 );
setMoveKey( spep_1 + 52 -a, 1, 226.6, 68.3 , 0 );
setMoveKey( spep_1 + 54 -a, 1, 235.7, 68.3 , 0 );
setMoveKey( spep_1 + 56 -a, 1, 244.7, 68.4 , 0 );
setMoveKey( spep_1 + 58 -a, 1, 253.5, 68.5 , 0 );
setMoveKey( spep_1 + 60 -a, 1, 262.1, 68.8 , 0 );
setMoveKey( spep_1 + 62 -a, 1, 270.6, 69 , 0 );
setMoveKey( spep_1 + 64 -a, 1, 278.9, 69.4 , 0 );
setMoveKey( spep_1 + 66 -a, 1, 287, 69.8 , 0 );
setMoveKey( spep_1 + 68 -a, 1, 294.9, 70.3 , 0 );
setMoveKey( spep_1 + 70 -a, 1, 302.7, 70.8 , 0 );
setMoveKey( spep_1 + 72 -a, 1, 310.2, 71.4 , 0 );
setMoveKey( spep_1 + 74 -a, 1, 311.6, 74.2 , 0 );
setMoveKey( spep_1 + 76 -a, 1, 313, 77 , 0 );
setMoveKey( spep_1 + 78 -a, 1, 314.4, 79.8 , 0 );

setScaleKey( spep_1 + 0, 1, 3.48, 3.48 );
setScaleKey( spep_1 + 2, 1, 3.1, 3.1 );
setScaleKey( spep_1 + 4, 1, 2.71, 2.71 );
setScaleKey( spep_1 + 6, 1, 2.32, 2.32 );
setScaleKey( spep_1 + 8, 1, 1.93, 1.93 );
setScaleKey( spep_1 + 10, 1, 1.54, 1.54 );
setScaleKey( spep_1 + 12, 1, 1.52, 1.52 );
setScaleKey( spep_1 + 14, 1, 1.51, 1.51 );
--setScaleKey( spep_1 + 17, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 18 -a, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 20 -a, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 22 -a, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 24 -a, 1, 1.4, 1.4 );
setScaleKey( spep_1 + 26 -a, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 28 -a, 1, 1.37, 1.37 );
setScaleKey( spep_1 + 30 -a, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 32 -a, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 34 -a, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 36 -a, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 38 -a, 1, 1.29, 1.29 );
setScaleKey( spep_1 + 40 -a, 1, 1.28, 1.28 );
setScaleKey( spep_1 + 42 -a, 1, 1.26, 1.26 );
setScaleKey( spep_1 + 44 -a, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 46 -a, 1, 1.24, 1.24 );
setScaleKey( spep_1 + 48 -a, 1, 1.22, 1.22 );
setScaleKey( spep_1 + 50 -a, 1, 1.21, 1.21 );
setScaleKey( spep_1 + 52 -a, 1, 1.19, 1.19 );
setScaleKey( spep_1 + 54 -a, 1, 1.18, 1.18 );
setScaleKey( spep_1 + 56 -a, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 58 -a, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 60 -a, 1, 1.13, 1.13 );
setScaleKey( spep_1 + 62 -a, 1, 1.12, 1.12 );
setScaleKey( spep_1 + 64 -a, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 66 -a, 1, 1.09, 1.09 );
setScaleKey( spep_1 + 68 -a, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 70 -a, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 72 -a, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 74 -a, 1, 1.03, 1.03 );
setScaleKey( spep_1 + 76 -a, 1, 1.01, 1.01 );
setScaleKey( spep_1 + 78 -a, 1, 1, 1 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 17 -a, 1, 0 );
setRotateKey( spep_1 + 18 -a, 1, 9 );
setRotateKey( spep_1 + 20 -a, 1, 8.9 );
setRotateKey( spep_1 + 24 -a, 1, 8.9 );
setRotateKey( spep_1 + 26 -a, 1, 8.8 );
setRotateKey( spep_1 + 38 -a, 1, 8.8 );
setRotateKey( spep_1 + 40 -a, 1, 8.9 );
setRotateKey( spep_1 + 60 -a, 1, 8.9 );
setRotateKey( spep_1 + 62 -a, 1, 9 );
setRotateKey( spep_1 + 78 -a, 1, 9 );

hidan = entryEffect( spep_1 + 0, SP_02r,  0x100, -1, 0, 0, 0 );  --被弾前(ef_002)
setEffMoveKey( spep_1 + 0, hidan, 0, 0 , 0 );
setEffMoveKey( spep_1 + 80, hidan, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, hidan, 1.0, 1.0 );
setEffScaleKey( spep_1 + 80, hidan, 1.0, 1.0 );
setEffAlphaKey( spep_1 + 0, hidan, 255 );
setEffAlphaKey( spep_1 + 80, hidan, 255 );
setEffRotateKey( spep_1 + 0, hidan, 0 );
setEffRotateKey( spep_1 + 80, hidan, 0 );

-- ** SE ** --
playSe(  spep_1,  1026);  --気弾
playSe(  spep_1+10,  1026);  --気弾
playSe(  spep_1+20,  1026);  --気弾
playSe(  spep_1+30,  1026);  --気弾
playSe(  spep_1+40,  1026);  --気弾
playSe(  spep_1+50,  1026);  --気弾
playSe(  spep_1+60,  1026);  --気弾
playSe(  spep_1+70,  1026);  --気弾

entryFadeBg(  spep_1,  0,  80,  0,  0,  0,  0,  255);  --黒背景

entryFade( spep_1 + 74, 4, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

------------------------------------------------------
-- 溜め(130F)
------------------------------------------------------
spep_2 = spep_1+80;

-- ** エフェクト等 ** --
kitame = entryEffect( spep_2 + 0, SP_04r,  0x80, -1, 0, 0, 0 );  --被弾後ろ(ef_003)
setEffMoveKey( spep_2 + 0, kitame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 130, kitame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kitame, -1.0, 1.0 );
setEffScaleKey( spep_2 + 130, kitame, -1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, kitame, 255 );
setEffAlphaKey( spep_2 + 130, kitame, 255 );
setEffRotateKey( spep_2 + 0, kitame, 0 );
setEffRotateKey( spep_2 + 130, kitame, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_2 + 30, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_2 + 30, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_2 + 42 -a,  190006, 70, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_2 + 42 -a, ctgogo, 68, 10 );

setEffMoveKey( spep_2 + 42 -a, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_2 + 112 -a, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_2 + 42 -a, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_2 + 86 -a, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_2 + 90 -a, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_2 + 94 -a, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_2 + 110 -a, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_2 + 112 -a, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_2 + 42 -a, ctgogo, 0 );
setEffRotateKey( spep_2 + 112 -a, ctgogo, 0 );

setEffAlphaKey( spep_2 + 42 -a, ctgogo, 255 );
setEffAlphaKey( spep_2 + 112 -a, ctgogo, 255 );

entryFadeBg(  spep_2,  0,  130,  0,  0,  0,  0,  255);  --黒背景

--  **SE** --
playSe(  spep_2,  1036);  --気溜め 
playSe(  spep_2+20,  1036);  --気溜め 
playSe(  spep_2+40,  SE_04);  --カットイン 
playSe(  spep_2+60,  1036);  --気溜め 
playSe(  spep_2+80,  1036);  --気溜め 
playSe(  spep_2+100,  1036);  --気溜め 
playSe(  spep_2+120,  1036);  --気溜め 

entryFade( spep_2 + 126, 4, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--------------------------------------
--カードカットイン(90F)
--------------------------------------
spep_3 = spep_2+130;

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線

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
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

------------------------------------------------------
-- 放つ(120F)
------------------------------------------------------
spep_4 = spep_3+90;

--***書き文字***	
ct_zuo = entryEffectLife( spep_4 + 36, 10012, 56, 0x100, -1, 0, 78.6, 260.5 ); --ズオ	
setEffShake( spep_4 +36, ct_zuo, 56, 20); --揺れ	
setEffMoveKey( spep_4 + 36, ct_zuo, 78.6, 260.5 , 0 );	
setEffMoveKey( spep_4 + 38, ct_zuo, 117.1, 303.7 , 0 );	
setEffMoveKey( spep_4 + 40, ct_zuo, 137.5, 364.8 , 0 );	
setEffMoveKey( spep_4 + 42, ct_zuo, 153.5, 348.8 , 0 );	
setEffMoveKey( spep_4 + 82, ct_zuo, 153.5, 348.8 , 0 );	
setEffMoveKey( spep_4 + 84, ct_zuo, 152, 366.3 , 0 );	
setEffMoveKey( spep_4 + 86, ct_zuo, 192, 342.2 , 0 );	
setEffMoveKey( spep_4 + 88, ct_zuo, 180.8, 369.2 , 0 );	
setEffMoveKey( spep_4 + 90, ct_zuo, 230.5, 335.5 , 0 );	
setEffMoveKey( spep_4 + 92, ct_zuo, 249.8, 332.2 , 0 );	
setEffScaleKey( spep_4 + 36, ct_zuo, 0.34, 0.34 );	
setEffScaleKey( spep_4 + 38, ct_zuo, 1.54, 1.54 );	
setEffScaleKey( spep_4 + 40, ct_zuo, 2.73, 2.73 );	
setEffScaleKey( spep_4 + 82, ct_zuo, 2.73, 2.73 );	
setEffScaleKey( spep_4 + 84, ct_zuo, 3.55, 3.55 );	
setEffScaleKey( spep_4 + 86, ct_zuo, 4.37, 4.37 );	
setEffScaleKey( spep_4 + 88, ct_zuo, 5.19, 5.19 );	
setEffScaleKey( spep_4 + 90, ct_zuo, 6.01, 6.01 );	
setEffScaleKey( spep_4 + 92, ct_zuo, 6.82, 6.82 );	
setEffRotateKey( spep_4 + 36, ct_zuo, 27.2 );	
setEffRotateKey( spep_4 + 92, ct_zuo, 27.2 );	
setEffAlphaKey( spep_4 + 36, ct_zuo, 255 );	
setEffAlphaKey( spep_4 + 82, ct_zuo, 255 );	
setEffAlphaKey( spep_4 + 84, ct_zuo, 204 );	
setEffAlphaKey( spep_4 + 86, ct_zuo, 153 );	
setEffAlphaKey( spep_4 + 88, ct_zuo, 102 );	
setEffAlphaKey( spep_4 + 90, ct_zuo, 51 );	
setEffAlphaKey( spep_4 + 92, ct_zuo, 0 );

--***集中線***
shuchusen2 = entryEffectLife( spep_4 + 0, 906, 120, 0x100, -1, 0, 0, 0 );  --集中線

setEffMoveKey( spep_4 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 120, shuchusen2, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shuchusen2, 1.1, 1.75 );
setEffScaleKey( spep_4 + 120, shuchusen2, 1.1, 1.75 );
setEffRotateKey( spep_4 + 0, shuchusen2, 0 );
setEffRotateKey( spep_4 + 120, shuchusen2, 0 );
setEffAlphaKey( spep_4 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 120, shuchusen2, 255 );


-- ** エフェクト等 ** --
hanatsu = entryEffect( spep_4 + 0, SP_05r,  0x80, -1, 0, 0, 0 );  --被弾後ろ(ef_003)
setEffMoveKey( spep_4 + 0, hanatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 120, hanatsu, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hanatsu, -1.0, 1.0 );
setEffScaleKey( spep_4 + 120, hanatsu, -1.0, 1.0 );
setEffAlphaKey( spep_4 + 0, hanatsu, 255 );
setEffAlphaKey( spep_4 + 120, hanatsu, 255 );
setEffRotateKey( spep_4 + 0, hanatsu, 0 );
setEffRotateKey( spep_4 + 120, hanatsu, 0 );

entryFadeBg(  spep_4,  0,  120,  0,  0,  0,  0,  255);  --黒背景

playSe(  spep_4,  SE_06);

entryFade( spep_4 + 112, 6, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

------------------------------------------------------
-- 爆破(180F)
------------------------------------------------------
spep_5 = spep_4 +120;

-- ** エフェクト等 ** --
bakuha = entryEffect( spep_5 + 0, SP_06,  0x80, -1, 0, 0, 0 );  --被弾後ろ(ef_003)
setEffMoveKey( spep_5 + 0, bakuha, 0, 0 , 0 );
setEffMoveKey( spep_5 + 180, bakuha, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, bakuha, 1.0, 1.0 );
setEffScaleKey( spep_5 + 180, bakuha, 1.0, 1.0 );
setEffAlphaKey( spep_5 + 0, bakuha, 255 );
setEffAlphaKey( spep_5 + 180, bakuha, 255 );
setEffRotateKey( spep_5 + 0, bakuha, 0 );
setEffRotateKey( spep_5 + 180, bakuha, 0 );

playSe(  spep_5,  SE_07);
playSe(  spep_5+60,  SE_10);
playSe( spep_5+70, 1060);

entryFadeBg(  spep_5,  0,  180,  0,  0,  0,  0,  255);  --黒背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 60 );
entryFade( spep_5 + 150, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_5 + 160 );

end


