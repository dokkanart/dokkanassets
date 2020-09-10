--ピッコロ_超魔激閃

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
SP_01 = 153787 ; --構え 
SP_02 = 153788 ; --手前突進 
SP_03 = 153789 ; --膝蹴り手前
SP_04 = 153790 ; --膝蹴り奥
SP_05 = 153791 ; --気弾放つ
--SP_06 = 1 ; 

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

tosshin_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- アイドリング(160F)
------------------------------------------------------
spep_0 = 0;


-- ** エフェクト等 ** --
idle = entryEffectLife( spep_0 + 0, SP_01, 160, 0x100, -1, 0, 0, 0 );  --瞬間移動(ef_001)
setEffMoveKey( spep_0 + 0, idle, 0, 0 , 0 );
setEffMoveKey( spep_0 + 160, idle, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, idle, 1.0, 1.0 );
setEffScaleKey( spep_0 + 160, idle, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, idle, 0 );
setEffRotateKey( spep_0 + 160, idle, 0 );
setEffAlphaKey( spep_0 + 0, idle, 255 );
setEffAlphaKey( spep_0 + 120, idle, 255 );
setEffAlphaKey( spep_0 + 121, idle, 0 );
setEffAlphaKey( spep_0 + 160, idle, 0 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 24, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 24, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

a1 = 80;
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 +40,  190006, 68, 0x100, -1, 0, 100.9 -a1, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 40, ctgogo, 68, 10 );

setEffMoveKey( spep_0 + 40, ctgogo, 100.9 -a1, 515.5 , 0 );
setEffMoveKey( spep_0 + 108, ctgogo, 100.9 -a1, 515.5 , 0 );

setEffScaleKey( spep_0 + 40, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 100, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 102, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_0 + 104, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_0 + 106, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_0 + 108, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_0 + 40, ctgogo, 0 );
setEffRotateKey( spep_0 + 108, ctgogo, 0 );

setEffAlphaKey( spep_0 + 40, ctgogo, 255 );
setEffAlphaKey( spep_0 + 108, ctgogo, 255 );


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 110, 8, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_0 + 40, SE_04 );  --ゴゴゴ

-- ** 次の準備 ** --
spep_1 = spep_0 + 120;

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

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 突進(94F)
------------------------------------------------------

-- ** 書き文字 ** --
ctshun = entryEffectLife( spep_2 - 3 + 20,  10011, 18, 0x100, -1, 0, 32.3, 328.2 );  --シュン
setEffMoveKey( spep_2 - 3 + 20, ctshun, 32.3, 328.2 , 0 );
setEffMoveKey( spep_2 - 3 + 22, ctshun, 32.4, 328.1 , 0 );
setEffMoveKey( spep_2 - 3 + 24, ctshun, 32.5, 328 , 0 );
setEffMoveKey( spep_2 - 3 + 26, ctshun, 32.6, 327.9 , 0 );
setEffMoveKey( spep_2 - 3 + 28, ctshun, 32.7, 327.9 , 0 );
setEffMoveKey( spep_2 - 3 + 30, ctshun, 32.7, 327.8 , 0 );
setEffMoveKey( spep_2 - 3 + 32, ctshun, 32.8, 327.7 , 0 );
setEffMoveKey( spep_2 - 3 + 34, ctshun, 32.7, 326.8 , 0 );
setEffMoveKey( spep_2 - 3 + 36, ctshun, 32.6, 325.9 , 0 );
setEffMoveKey( spep_2 - 3 + 38, ctshun, 32.5, 325 , 0 );

setEffScaleKey( spep_2 - 3 + 20, ctshun, 0.66, 0.66 );
setEffScaleKey( spep_2 - 3 + 22, ctshun, 2.21, 2.21 );
setEffScaleKey( spep_2 - 3 + 24, ctshun, 2.1, 2.1 );
setEffScaleKey( spep_2 - 3 + 26, ctshun, 2, 2 );
setEffScaleKey( spep_2 - 3 + 28, ctshun, 1.96, 1.96 );
setEffScaleKey( spep_2 - 3 + 30, ctshun, 1.92, 1.92 );
setEffScaleKey( spep_2 - 3 + 32, ctshun, 1.88, 1.88 );
setEffScaleKey( spep_2 - 3 + 34, ctshun, 1.86, 1.86 );
setEffScaleKey( spep_2 - 3 + 36, ctshun, 1.84, 1.84 );
setEffScaleKey( spep_2 - 3 + 38, ctshun, 1.82, 1.82 );

setEffRotateKey( spep_2 - 3 + 20, ctshun, 16 );
setEffRotateKey( spep_2 - 3 + 38, ctshun, 16 );

setEffAlphaKey( spep_2 - 3 + 20, ctshun, 255 );
setEffAlphaKey( spep_2 - 3 + 32, ctshun, 255 );
setEffAlphaKey( spep_2 - 3 + 34, ctshun, 170 );
setEffAlphaKey( spep_2 - 3 + 36, ctshun, 85 );
setEffAlphaKey( spep_2 - 3 + 38, ctshun, 0 );


-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_2 + 80, 906, 14, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 80, shuchusen1, 14, 20 );

setEffMoveKey( spep_2 + 80, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 94, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 80, shuchusen1, 1.09, 1.8 );
setEffScaleKey( spep_2 + 94, shuchusen1, 1.09, 1.8 );

setEffRotateKey( spep_2 + 80, shuchusen1, 0 );
setEffRotateKey( spep_2 + 94, shuchusen1, 0 );

setEffAlphaKey( spep_2 + 80, shuchusen1, 0 );
setEffAlphaKey( spep_2 + 90, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 92, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 94, shuchusen1, 0 );

-- ** エフェクト等 ** --
tosshin = entryEffectLife( spep_2 + 0, SP_02, 100, 0x80, -1, 0, 0, 0 );  --突進(ef_002)
setEffMoveKey( spep_2 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_2 + 100, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tosshin, 1.0, 1.0 );
setEffScaleKey( spep_2 + 100, tosshin, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tosshin, 0 );
setEffRotateKey( spep_2 + 100, tosshin, 0 );
setEffAlphaKey( spep_2 + 0, tosshin, 255 );
setEffAlphaKey( spep_2 + 93, tosshin, 255 );
setEffAlphaKey( spep_2 + 94, tosshin, 0 );
setEffAlphaKey( spep_2 + 100, tosshin, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 94, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
--entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_2 + 20 -3, 43 );  --瞬間移動


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 60; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

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

playSe( spep_2 + 62 -3, 1109 );  --瞬間移動
playSe( spep_2 + 64,  9);

-- ** 白フェード ** --
--entryFade( spep_2 + 110 -3, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade

-- ** 音 ** --


-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 膝蹴り(160F)
------------------------------------------------------

-- ** 書き文字 ** --
ctbaki = entryEffectLife( spep_3 - 3 + 12,  10020, 22, 0x100, -1, 0, 93.5, 352.4 );  --バキ
setEffMoveKey( spep_3 - 3 + 12, ctbaki, 93.5, 352.4 , 0 );
setEffMoveKey( spep_3 - 3 + 14, ctbaki, 80.6, 378.1 , 0 );
setEffMoveKey( spep_3 - 3 + 16, ctbaki, 93.4, 352.4 , 0 );
setEffMoveKey( spep_3 - 3 + 18, ctbaki, 83.5, 372.4 , 0 );
setEffMoveKey( spep_3 - 3 + 20, ctbaki, 93.5, 352.3 , 0 );
setEffMoveKey( spep_3 - 3 + 22, ctbaki, 85.1, 369.1 , 0 );
setEffMoveKey( spep_3 - 3 + 24, ctbaki, 93.5, 352.3 , 0 );
setEffMoveKey( spep_3 - 3 + 26, ctbaki, 85.5, 368.4 , 0 );
setEffMoveKey( spep_3 - 3 + 28, ctbaki, 93.6, 352.3 , 0 );
setEffMoveKey( spep_3 - 3 + 30, ctbaki, 93.6, 352.3 , 0 );
setEffMoveKey( spep_3 - 3 + 32, ctbaki, 85.8, 367.8 , 0 );
setEffMoveKey( spep_3 - 3 + 34, ctbaki, 93.5, 352.4 , 0 );

setEffScaleKey( spep_3 - 3 + 12, ctbaki, 1.88, 1.88 );
setEffScaleKey( spep_3 - 3 + 14, ctbaki, 3.37, 3.37 );
setEffScaleKey( spep_3 - 3 + 16, ctbaki, 3.01, 3.01 );
setEffScaleKey( spep_3 - 3 + 18, ctbaki, 2.64, 2.64 );
setEffScaleKey( spep_3 - 3 + 20, ctbaki, 2.27, 2.27 );
setEffScaleKey( spep_3 - 3 + 22, ctbaki, 2.22, 2.22 );
setEffScaleKey( spep_3 - 3 + 24, ctbaki, 2.17, 2.17 );
setEffScaleKey( spep_3 - 3 + 26, ctbaki, 2.12, 2.12 );
setEffScaleKey( spep_3 - 3 + 28, ctbaki, 2.07, 2.07 );
setEffScaleKey( spep_3 - 3 + 30, ctbaki, 2.03, 2.03 );
setEffScaleKey( spep_3 - 3 + 32, ctbaki, 2.04, 2.04 );
setEffScaleKey( spep_3 - 3 + 34, ctbaki, 2.06, 2.06 );

setEffRotateKey( spep_3 - 3 + 12, ctbaki, 18.5 );
setEffRotateKey( spep_3 - 3 + 34, ctbaki, 18.5 );

setEffAlphaKey( spep_3 - 3 + 12, ctbaki, 255 );
setEffAlphaKey( spep_3 - 3 + 30, ctbaki, 255 );
setEffAlphaKey( spep_3 - 3 + 32, ctbaki, 134 );
setEffAlphaKey( spep_3 - 3 + 34, ctbaki, 13 );


ctga = entryEffectLife( spep_3 - 3 + 116,  10005, 22, 0x100, -1, 0, -2.3, 309.7 );
setEffMoveKey( spep_3 - 3 + 116, ctga, -2.3, 309.7 , 0 );
setEffMoveKey( spep_3 - 3 + 118, ctga, -2.2, 309.8 , 0 );
setEffMoveKey( spep_3 - 3 + 120, ctga, -2.3, 309.9 , 0 );
setEffMoveKey( spep_3 - 3 + 122, ctga, -2.5, 309.9 , 0 );
setEffMoveKey( spep_3 - 3 + 124, ctga, -2.3, 309.9 , 0 );
setEffMoveKey( spep_3 - 3 + 126, ctga, -2.4, 309.9 , 0 );
setEffMoveKey( spep_3 - 3 + 128, ctga, -2.4, 309.7 , 0 );
setEffMoveKey( spep_3 - 3 + 130, ctga, -2.3, 309.8 , 0 );
setEffMoveKey( spep_3 - 3 + 134, ctga, -2.3, 309.8 , 0 );
setEffMoveKey( spep_3 - 3 + 138, ctga, -2.2, 309.7 , 0 );

setEffScaleKey( spep_3 - 3 + 116, ctga, 1.03, 1.03 );
setEffScaleKey( spep_3 - 3 + 118, ctga, 2.21, 2.21 );
setEffScaleKey( spep_3 - 3 + 120, ctga, 2.8, 2.8 );
setEffScaleKey( spep_3 - 3 + 122, ctga, 2.67, 2.67 );
setEffScaleKey( spep_3 - 3 + 124, ctga, 2.53, 2.53 );
setEffScaleKey( spep_3 - 3 + 126, ctga, 2.4, 2.4 );
setEffScaleKey( spep_3 - 3 + 128, ctga, 2.27, 2.27 );
setEffScaleKey( spep_3 - 3 + 130, ctga, 2.27, 2.27 );
setEffScaleKey( spep_3 - 3 + 132, ctga, 2.25, 2.25 );
setEffScaleKey( spep_3 - 3 + 134, ctga, 2.23, 2.23 );
setEffScaleKey( spep_3 - 3 + 136, ctga, 2.21, 2.21 );
setEffScaleKey( spep_3 - 3 + 138, ctga, 2.2, 2.2 );

setEffRotateKey( spep_3 - 3 + 116, ctga, -12.4 );
setEffRotateKey( spep_3 - 3 + 118, ctga, -25.8 );
setEffRotateKey( spep_3 - 3 + 120, ctga, -12.4 );
setEffRotateKey( spep_3 - 3 + 122, ctga, -3.8 );
setEffRotateKey( spep_3 - 3 + 124, ctga, -12.6 );
setEffRotateKey( spep_3 - 3 + 126, ctga, -23.3 );
setEffRotateKey( spep_3 - 3 + 128, ctga, -12.4 );
setEffRotateKey( spep_3 - 3 + 130, ctga, -12.6 );
setEffRotateKey( spep_3 - 3 + 132, ctga, -12.5 );
setEffRotateKey( spep_3 - 3 + 136, ctga, -12.5 );
setEffRotateKey( spep_3 - 3 + 138, ctga, -12.4 );

setEffAlphaKey( spep_3 - 3 + 116, ctga, 255 );
setEffAlphaKey( spep_3 - 3 + 130, ctga, 255 );
setEffAlphaKey( spep_3 - 3 + 132, ctga, 191 );
setEffAlphaKey( spep_3 - 3 + 134, ctga, 128 );
setEffAlphaKey( spep_3 - 3 + 136, ctga, 64 );
setEffAlphaKey( spep_3 - 3 + 138, ctga, 0 );

-- ** エフェクト等 ** --
keri = entryEffectLife( spep_3 + 0, SP_03, 160, 0x100, -1, 0, 0, 0 );  --膝蹴り(ef_003)
setEffMoveKey( spep_3 + 0, keri, 0, 0 , 0 );
setEffMoveKey( spep_3 + 160, keri, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, keri, 1.0, 1.0 );
setEffScaleKey( spep_3 + 160, keri, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, keri, 0 );
setEffRotateKey( spep_3 + 160, keri, 0 );
setEffAlphaKey( spep_3 + 0, keri, 255 );
setEffAlphaKey( spep_3 + 154, keri, 255 );
setEffAlphaKey( spep_3 + 155, keri, 0 );
setEffAlphaKey( spep_3 + 160, keri, 0 );

-- ** 敵の動き ** --
setDisp( spep_3 + 0,  1,  1);  
setDisp( spep_3 + 42 - 3,  1,  0); 
setDisp( spep_3 + 46 - 3,  1,  1); 
setDisp( spep_3 + 146 - 3,  1,  0); 
changeAnime( spep_3 + 0, 1, 102 );
changeAnime( spep_3 - 3 + 12, 1, 107 );
changeAnime( spep_3 - 3 + 46, 1, 106 );
changeAnime( spep_3 - 3 + 116, 1, 108 );

setMoveKey( spep_3 + 0, 1, -8, 31.5 , 0 );
--setMoveKey( spep_3 - 3 + 2, 1, 6.5, 32.4 , 0 );
setMoveKey( spep_3 - 3 + 4, 1, 21, 33.4 , 0 );
setMoveKey( spep_3 - 3 + 6, 1, 35.5, 34.4 , 0 );
setMoveKey( spep_3 - 3 + 8, 1, 50, 35.4 , 0 );
setMoveKey( spep_3 - 3 + 10, 1, 64.6, 36.3 , 0 );
setMoveKey( spep_3 - 3 + 12, 1, 131.3, 10.9 , 0 );
setMoveKey( spep_3 - 3 + 14, 1, 124.9, -8.3 , 0 );
setMoveKey( spep_3 - 3 + 16, 1, 124.4, 3.2 , 0 );
setMoveKey( spep_3 - 3 + 18, 1, 123.6, 4 , 0 );
setMoveKey( spep_3 - 3 + 20, 1, 138.7, 12.7 , 0 );
setMoveKey( spep_3 - 3 + 22, 1, 141.8, 5.5 , 0 );
setMoveKey( spep_3 - 3 + 24, 1, 153, 22.3 , 0 );
setMoveKey( spep_3 - 3 + 26, 1, 148.1, 23.1 , 0 );
setMoveKey( spep_3 - 3 + 28, 1, 167.3, 31.9 , 0 );
setMoveKey( spep_3 - 3 + 30, 1, 170.5, 36.7 , 0 );
setMoveKey( spep_3 - 3 + 32, 1, 393.1, 130.8 , 0 );
setMoveKey( spep_3 - 3 + 34, 1, 612.1, 221.1 , 0 );
setMoveKey( spep_3 - 3 + 36, 1, 827.4, 319.6 , 0 );
setMoveKey( spep_3 - 3 + 38, 1, 1051.2, 414.2 , 0 );
setMoveKey( spep_3 - 3 + 40, 1, 1271.3, 509.1 , 0 );
setMoveKey( spep_3 - 3 + 42, 1, 1491.9, 604 , 0 );

setMoveKey( spep_3 - 3 + 46, 1, -992.6, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 48, 1, -894.5, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 50, 1, -796.4, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 52, 1, -698.3, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 54, 1, -600.1, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 56, 1, -502, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 58, 1, -403.9, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 60, 1, -305.8, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 62, 1, -207.7, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 64, 1, -197.3, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 66, 1, -187, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 68, 1, -176.6, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 70, 1, -166.3, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 72, 1, -155.9, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 74, 1, -145.6, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 76, 1, -135.2, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 78, 1, -124.9, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 80, 1, -114.5, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 82, 1, -104.2, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 84, 1, -93.8, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 86, 1, -83.5, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 88, 1, -73.1, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 90, 1, -68.8, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 92, 1, -64.4, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 94, 1, -60, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 96, 1, -55.7, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 98, 1, -51.3, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 100, 1, -46.9, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 102, 1, -42.5, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 104, 1, -38.2, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 106, 1, -33.8, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 108, 1, -29.4, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 110, 1, -25, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 112, 1, -20.7, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 114, 1, -16.3, 0.1 , 0 );

setMoveKey( spep_3 - 3 + 116, 1, -48.5, -57.9 , 0 );
setMoveKey( spep_3 - 3 + 118, 1, -45.2, -86.5 , 0 );
setMoveKey( spep_3 - 3 + 120, 1, -33.9, -73.5 , 0 );
setMoveKey( spep_3 - 3 + 122, 1, -45.9, -81.1 , 0 );
setMoveKey( spep_3 - 3 + 124, 1, -33.7, -80.7 , 0 );
setMoveKey( spep_3 - 3 + 126, 1, -37.7, -92.3 , 0 );
setMoveKey( spep_3 - 3 + 128, 1, -33.6, -87.9 , 0 );
setMoveKey( spep_3 - 3 + 130, 1, -37.5, -95.4 , 0 );
setMoveKey( spep_3 - 3 + 132, 1, -33.4, -94.9 , 0 );
setMoveKey( spep_3 - 3 + 134, 1, -37.4, -98.5 , 0 );
setMoveKey( spep_3 - 3 + 136, 1, -33.2, -101.9 , 0 );
setMoveKey( spep_3 - 3 + 138, 1, -33.1, -109.4 , 0 );
setMoveKey( spep_3 - 3 + 140, 1, -33.1, -428.4 , 0 );
setMoveKey( spep_3 - 3 + 142, 1, -37.1, -753.8 , 0 );
setMoveKey( spep_3 - 3 + 144, 1, -32.9, -1069.4 , 0 );
setMoveKey( spep_3 - 3 + 146, 1, -36.9, -1387.5 , 0 );

setScaleKey( spep_3 + 0, 1, 1.19, 1.19 );
setScaleKey( spep_3 - 3 + 2, 1, 1.23, 1.23 );
setScaleKey( spep_3 - 3 + 4, 1, 1.27, 1.27 );
setScaleKey( spep_3 - 3 + 6, 1, 1.3, 1.3 );
setScaleKey( spep_3 - 3 + 8, 1, 1.34, 1.34 );
setScaleKey( spep_3 - 3 + 10, 1, 1.38, 1.38 );
setScaleKey( spep_3 - 3 + 11, 1, 1.38, 1.38 );
setScaleKey( spep_3 - 3 + 12, 1, 1.04, 1.04 );
setScaleKey( spep_3 - 3 + 14, 1, 0.89, 0.89 );
setScaleKey( spep_3 - 3 + 16, 1, 0.74, 0.74 );
setScaleKey( spep_3 - 3 + 18, 1, 0.74, 0.74 );
setScaleKey( spep_3 - 3 + 20, 1, 0.75, 0.75 );
setScaleKey( spep_3 - 3 + 22, 1, 0.75, 0.75 );
setScaleKey( spep_3 - 3 + 24, 1, 0.76, 0.76 );
setScaleKey( spep_3 - 3 + 26, 1, 0.77, 0.77 );
setScaleKey( spep_3 - 3 + 28, 1, 0.77, 0.77 );
setScaleKey( spep_3 - 3 + 30, 1, 0.78, 0.78 );
setScaleKey( spep_3 - 3 + 32, 1, 1.13, 1.13 );
setScaleKey( spep_3 - 3 + 34, 1, 1.49, 1.49 );
setScaleKey( spep_3 - 3 + 36, 1, 1.85, 1.85 );
setScaleKey( spep_3 - 3 + 38, 1, 2.21, 2.21 );
setScaleKey( spep_3 - 3 + 40, 1, 2.57, 2.57 );
setScaleKey( spep_3 - 3 + 42, 1, 2.93, 2.93 );
setScaleKey( spep_3 - 3 + 45, 1, 2.93, 2.93 );
setScaleKey( spep_3 - 3 + 46, 1, 1.41, 1.41 );
setScaleKey( spep_3 - 3 + 115, 1, 1.41, 1.41 );
setScaleKey( spep_3 - 3 + 116, 1, 2.17, 2.17 );
setScaleKey( spep_3 - 3 + 118, 1, 1.85, 1.85 );
setScaleKey( spep_3 - 3 + 120, 1, 1.52, 1.52 );
setScaleKey( spep_3 - 3 + 122, 1, 1.52, 1.52 );
setScaleKey( spep_3 - 3 + 124, 1, 1.51, 1.51 );
setScaleKey( spep_3 - 3 + 128, 1, 1.51, 1.51 );
setScaleKey( spep_3 - 3 + 130, 1, 1.5, 1.5 );
setScaleKey( spep_3 - 3 + 134, 1, 1.5, 1.5 );
setScaleKey( spep_3 - 3 + 136, 1, 1.49, 1.49 );
setScaleKey( spep_3 - 3 + 138, 1, 1.49, 1.49 );
setScaleKey( spep_3 - 3 + 140, 1, 1.48, 1.48 );
setScaleKey( spep_3 - 3 + 144, 1, 1.48, 1.48 );
setScaleKey( spep_3 - 3 + 146, 1, 1.47, 1.47 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 - 3 + 11 , 1, 0 );
setRotateKey( spep_3 - 3 + 12, 1, -55.7 );
setRotateKey( spep_3 - 3 + 45, 1, -55.7 );
setRotateKey( spep_3 - 3 + 46, 1, 14 );
setRotateKey( spep_3 - 3 + 115, 1, 14 );
setRotateKey( spep_3 - 3 + 116, 1, 94.5 );
setRotateKey( spep_3 - 3 + 146, 1, 94.5 );

keri_b = entryEffectLife( spep_3 + 0, SP_04, 160, 0x80, -1, 0, 0, 0 );  --背景(ef_004)
setEffMoveKey( spep_3 + 0, keri_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 160, keri_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, keri_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 160, keri_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, keri_b, 0 );
setEffRotateKey( spep_3 + 160, keri_b, 0 );
setEffAlphaKey( spep_3 + 0, keri_b, 255 );
setEffAlphaKey( spep_3 + 154, keri_b, 255 );
setEffAlphaKey( spep_3 + 155, keri_b, 0 );
setEffAlphaKey( spep_3 + 160, keri_b, 0 );

--  ** 音 **  --
playSe( spep_3 - 3 + 12,  1010 );  --バキ
playSe( spep_3 - 3 + 46,  8);  --敵吹き飛ぶ
playSe( spep_3 - 3 + 116,  1011);  --肘打ち

-- ** 白フェード ** --
entryFade( spep_3 + 12 - 3 , 2, 2, 0, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 154, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 154;

------------------------------------------------------
-- 爆発(370F)
------------------------------------------------------

-- ** 書き文字 ** --
ctzou = entryEffectLife( spep_4 - 3 + 128,  10012, 62, 0x100, -1, 0, 78.6, 286.1 );  --ズオッ

setEffMoveKey( spep_4 - 3 + 128, ctzou, 78.6, 286.1 , 0 );
setEffMoveKey( spep_4 - 3 + 130, ctzou, 104.9, 314.2 , 0 );
setEffMoveKey( spep_4 - 3 + 132, ctzou, 117.8, 355.6 , 0 );
setEffMoveKey( spep_4 - 3 + 134, ctzou, 153.5, 374.4 , 0 );
setEffMoveKey( spep_4 - 3 + 136, ctzou, 137.5, 390.4 , 0 );
setEffMoveKey( spep_4 - 3 + 138, ctzou, 153.5, 374.4 , 0 );
setEffMoveKey( spep_4 - 3 + 140, ctzou, 137.5, 390.4 , 0 );
setEffMoveKey( spep_4 - 3 + 142, ctzou, 153.5, 374.4 , 0 );
setEffMoveKey( spep_4 - 3 + 144, ctzou, 137.5, 390.4 , 0 );
setEffMoveKey( spep_4 - 3 + 146, ctzou, 153.5, 374.4 , 0 );
setEffMoveKey( spep_4 - 3 + 148, ctzou, 137.5, 390.4 , 0 );
setEffMoveKey( spep_4 - 3 + 150, ctzou, 153.5, 374.4 , 0 );
setEffMoveKey( spep_4 - 3 + 152, ctzou, 137.5, 390.4 , 0 );
setEffMoveKey( spep_4 - 3 + 154, ctzou, 153.5, 374.4 , 0 );
setEffMoveKey( spep_4 - 3 + 156, ctzou, 137.5, 390.4 , 0 );
setEffMoveKey( spep_4 - 3 + 158, ctzou, 153.5, 374.4 , 0 );
setEffMoveKey( spep_4 - 3 + 160, ctzou, 137.5, 390.4 , 0 );
setEffMoveKey( spep_4 - 3 + 162, ctzou, 153.5, 374.4 , 0 );
setEffMoveKey( spep_4 - 3 + 164, ctzou, 137.5, 390.4 , 0 );
setEffMoveKey( spep_4 - 3 + 166, ctzou, 153.5, 374.4 , 0 );
setEffMoveKey( spep_4 - 3 + 168, ctzou, 137.5, 390.4 , 0 );
setEffMoveKey( spep_4 - 3 + 170, ctzou, 153.5, 374.4 , 0 );
setEffMoveKey( spep_4 - 3 + 172, ctzou, 137.5, 390.4 , 0 );
setEffMoveKey( spep_4 - 3 + 174, ctzou, 153.5, 374.4 , 0 );
setEffMoveKey( spep_4 - 3 + 176, ctzou, 137.5, 390.4 , 0 );
setEffMoveKey( spep_4 - 3 + 178, ctzou, 153.5, 374.4 , 0 );
setEffMoveKey( spep_4 - 3 + 180, ctzou, 137.5, 390.4 , 0 );
setEffMoveKey( spep_4 - 3 + 182, ctzou, 153.5, 374.4 , 0 );
setEffMoveKey( spep_4 - 3 + 184, ctzou, 145.1, 392.2 , 0 );
setEffMoveKey( spep_4 - 3 + 186, ctzou, 180.2, 366.6 , 0 );
setEffMoveKey( spep_4 - 3 + 188, ctzou, 160.4, 395.7 , 0 );
setEffMoveKey( spep_4 - 3 + 190, ctzou, 168.1, 397.4 , 0 );

setEffScaleKey( spep_4 - 3 + 128, ctzou, 0.34, 0.34 );
setEffScaleKey( spep_4 - 3 + 130, ctzou, 1.14, 1.14 );
setEffScaleKey( spep_4 - 3 + 132, ctzou, 1.93, 1.93 );
setEffScaleKey( spep_4 - 3 + 134, ctzou, 2.73, 2.73 );
setEffScaleKey( spep_4 - 3 + 182, ctzou, 2.73, 2.73 );
setEffScaleKey( spep_4 - 3 + 184, ctzou, 3.7, 3.7 );
setEffScaleKey( spep_4 - 3 + 186, ctzou, 4.67, 4.67 );
setEffScaleKey( spep_4 - 3 + 188, ctzou, 5.64, 5.64 );
setEffScaleKey( spep_4 - 3 + 190, ctzou, 6.61, 6.61 );

setEffRotateKey( spep_4 - 3 + 128, ctzou, 27.2 );
setEffRotateKey( spep_4 - 3 + 190, ctzou, 27.2 );

setEffAlphaKey( spep_4 - 3 + 128, ctzou, 255 );
setEffAlphaKey( spep_4 - 3 + 182, ctzou, 255 );
setEffAlphaKey( spep_4 - 3 + 184, ctzou, 191 );
setEffAlphaKey( spep_4 - 3 + 186, ctzou, 128 );
setEffAlphaKey( spep_4 - 3 + 188, ctzou, 64 );
setEffAlphaKey( spep_4 - 3 + 190, ctzou, 0 );

-- ** 敵の動き ** --
setDisp( spep_4 + 0, 1, 1);
setDisp( spep_4 + 40 - 3,  1,  0);
changeAnime( spep_4 + 0, 1, 108 );

setMoveKey( spep_4 + 0, 1, -296.9, 454 , 0 );
--setMoveKey( spep_4 - 3  + 2, 1, -183.7, 314.5 , 0 );
setMoveKey( spep_4 - 3  + 4, 1, -85.7, 193.3 , 0 );
setMoveKey( spep_4 - 3  + 6, 1, -2.2, 89.7 , 0 );
setMoveKey( spep_4 - 3  + 8, 1, 67, 3.3 , 0 );
setMoveKey( spep_4 - 3  + 10, 1, 122.9, -66.6 , 0 );
setMoveKey( spep_4 - 3  + 12, 1, 165.4, -120.7 , 0 );
setMoveKey( spep_4 - 3  + 14, 1, 169.8, -127.6 , 0 );
setMoveKey( spep_4 - 3  + 16, 1, 173.9, -133.8 , 0 );
setMoveKey( spep_4 - 3  + 18, 1, 177.2, -139.6 , 0 );
setMoveKey( spep_4 - 3  + 20, 1, 181.5, -144 , 0 );
setMoveKey( spep_4 - 3  + 22, 1, 185.4, -148.2 , 0 );
setMoveKey( spep_4 - 3  + 24, 1, 188.9, -151.9 , 0 );
setMoveKey( spep_4 - 3  + 26, 1, 192.1, -155.2 , 0 );
setMoveKey( spep_4 - 3  + 28, 1, 194.9, -157.9 , 0 );
setMoveKey( spep_4 - 3  + 30, 1, 197.4, -160.5 , 0 );
setMoveKey( spep_4 - 3  + 32, 1, 199.6, -162.6 , 0 );
setMoveKey( spep_4 - 3  + 34, 1, 201.3, -164.4 , 0 );
setMoveKey( spep_4 - 3  + 36, 1, 202.8, -165.8 , 0 );
setMoveKey( spep_4 - 3  + 40, 1, 202.7, -166.5 , 0 );

setScaleKey( spep_4 + 0, 1, 5.35, 5.35 );
--setScaleKey( spep_4 - 3  + 2, 1, 4.29, 4.29 );
setScaleKey( spep_4 - 3  + 4, 1, 3.36, 3.36 );
setScaleKey( spep_4 - 3  + 6, 1, 2.57, 2.57 );
setScaleKey( spep_4 - 3  + 8, 1, 1.9, 1.9 );
setScaleKey( spep_4 - 3  + 10, 1, 1.36, 1.36 );
setScaleKey( spep_4 - 3  + 12, 1, 0.94, 0.94 );
setScaleKey( spep_4 - 3  + 14, 1, 0.89, 0.89 );
setScaleKey( spep_4 - 3  + 16, 1, 0.85, 0.85 );
setScaleKey( spep_4 - 3  + 18, 1, 0.81, 0.81 );
setScaleKey( spep_4 - 3  + 20, 1, 0.77, 0.77 );
setScaleKey( spep_4 - 3  + 22, 1, 0.74, 0.74 );
setScaleKey( spep_4 - 3  + 24, 1, 0.71, 0.71 );
setScaleKey( spep_4 - 3  + 26, 1, 0.68, 0.68 );
setScaleKey( spep_4 - 3  + 28, 1, 0.66, 0.66 );
setScaleKey( spep_4 - 3  + 30, 1, 0.63, 0.63 );
setScaleKey( spep_4 - 3  + 32, 1, 0.61, 0.61 );
setScaleKey( spep_4 - 3  + 34, 1, 0.59, 0.59 );
setScaleKey( spep_4 - 3  + 36, 1, 0.57, 0.57 );
setScaleKey( spep_4 - 3  + 40, 1, 0.55, 0.55 );

setRotateKey( spep_4 + 0, 1, 29.2 );
setRotateKey( spep_4 - 3  + 4, 1, 29.2 );
setRotateKey( spep_4 - 3  + 6, 1, 29.1 );
setRotateKey( spep_4 - 3  + 24, 1, 29.1 );
setRotateKey( spep_4 - 3  + 26, 1, 29.2 );
setRotateKey( spep_4 - 3  + 40, 1, 29.2 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 370, bakuhatsu, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, bakuhatsu, 1.0, 1.0 );
setEffScaleKey( spep_4 + 370, bakuhatsu, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 370, bakuhatsu, 0 );
setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 370, bakuhatsu, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 370, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
SE1 = playSe( spep_4 + 0, 1118 );  --落ちる音
stopSe( spep_4 + 30 , SE1, 20);
playSe( spep_4 + 38 , 1023 ) ;  --落ちた音
playSe( spep_4 + 80,  63);  --気弾構え
playSe( spep_4 + 128 - 3,  1114);  --発射
playSe( spep_4 + 212 - 3,  1024 );  --被弾

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 260 );
endPhase( spep_4 + 360 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- アイドリング(160F)
------------------------------------------------------
spep_0 = 0;


-- ** エフェクト等 ** --
idle = entryEffectLife( spep_0 + 0, SP_01, 160, 0x100, -1, 0, 0, 0 );  --瞬間移動(ef_001)
setEffMoveKey( spep_0 + 0, idle, 0, 0 , 0 );
setEffMoveKey( spep_0 + 160, idle, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, idle, -1.0, 1.0 );
setEffScaleKey( spep_0 + 160, idle, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, idle, 0 );
setEffRotateKey( spep_0 + 160, idle, 0 );
setEffAlphaKey( spep_0 + 0, idle, 255 );
setEffAlphaKey( spep_0 + 120, idle, 255 );
setEffAlphaKey( spep_0 + 121, idle, 0 );
setEffAlphaKey( spep_0 + 160, idle, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 24, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 24, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 +40,  190006, 68, 0x100, -1, 0, 100.9, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 40, ctgogo, 68, 10 );

setEffMoveKey( spep_0 + 40, ctgogo, 100.9, 515.5 , 0 );
setEffMoveKey( spep_0 + 108, ctgogo, 100.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 40, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 100, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 102, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_0 + 104, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_0 + 106, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_0 + 108, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_0 + 40, ctgogo, 0 );
setEffRotateKey( spep_0 + 108, ctgogo, 0 );

setEffAlphaKey( spep_0 + 40, ctgogo, 255 );
setEffAlphaKey( spep_0 + 108, ctgogo, 255 );


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 110, 8, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_0 + 40, SE_04 );  --ゴゴゴ

-- ** 次の準備 ** --
spep_1 = spep_0 + 120;

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

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 突進(94F)
------------------------------------------------------

-- ** 書き文字 ** --
ctshun = entryEffectLife( spep_2 - 3 + 20,  10011, 18, 0x100, -1, 0, 32.3, 328.2 );  --シュン
setEffMoveKey( spep_2 - 3 + 20, ctshun, 32.3, 328.2 , 0 );
setEffMoveKey( spep_2 - 3 + 22, ctshun, 32.4, 328.1 , 0 );
setEffMoveKey( spep_2 - 3 + 24, ctshun, 32.5, 328 , 0 );
setEffMoveKey( spep_2 - 3 + 26, ctshun, 32.6, 327.9 , 0 );
setEffMoveKey( spep_2 - 3 + 28, ctshun, 32.7, 327.9 , 0 );
setEffMoveKey( spep_2 - 3 + 30, ctshun, 32.7, 327.8 , 0 );
setEffMoveKey( spep_2 - 3 + 32, ctshun, 32.8, 327.7 , 0 );
setEffMoveKey( spep_2 - 3 + 34, ctshun, 32.7, 326.8 , 0 );
setEffMoveKey( spep_2 - 3 + 36, ctshun, 32.6, 325.9 , 0 );
setEffMoveKey( spep_2 - 3 + 38, ctshun, 32.5, 325 , 0 );

setEffScaleKey( spep_2 - 3 + 20, ctshun, 0.66, 0.66 );
setEffScaleKey( spep_2 - 3 + 22, ctshun, 2.21, 2.21 );
setEffScaleKey( spep_2 - 3 + 24, ctshun, 2.1, 2.1 );
setEffScaleKey( spep_2 - 3 + 26, ctshun, 2, 2 );
setEffScaleKey( spep_2 - 3 + 28, ctshun, 1.96, 1.96 );
setEffScaleKey( spep_2 - 3 + 30, ctshun, 1.92, 1.92 );
setEffScaleKey( spep_2 - 3 + 32, ctshun, 1.88, 1.88 );
setEffScaleKey( spep_2 - 3 + 34, ctshun, 1.86, 1.86 );
setEffScaleKey( spep_2 - 3 + 36, ctshun, 1.84, 1.84 );
setEffScaleKey( spep_2 - 3 + 38, ctshun, 1.82, 1.82 );

setEffRotateKey( spep_2 - 3 + 20, ctshun, 16 );
setEffRotateKey( spep_2 - 3 + 38, ctshun, 16 );

setEffAlphaKey( spep_2 - 3 + 20, ctshun, 255 );
setEffAlphaKey( spep_2 - 3 + 32, ctshun, 255 );
setEffAlphaKey( spep_2 - 3 + 34, ctshun, 170 );
setEffAlphaKey( spep_2 - 3 + 36, ctshun, 85 );
setEffAlphaKey( spep_2 - 3 + 38, ctshun, 0 );


-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_2 + 80, 906, 14, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 80, shuchusen1, 14, 20 );

setEffMoveKey( spep_2 + 80, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 94, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 80, shuchusen1, 1.09, 1.8 );
setEffScaleKey( spep_2 + 94, shuchusen1, 1.09, 1.8 );

setEffRotateKey( spep_2 + 80, shuchusen1, 0 );
setEffRotateKey( spep_2 + 94, shuchusen1, 0 );

setEffAlphaKey( spep_2 + 80, shuchusen1, 0 );
setEffAlphaKey( spep_2 + 90, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 92, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 94, shuchusen1, 0 );

-- ** エフェクト等 ** --
tosshin = entryEffectLife( spep_2 + 0, SP_02, 100, 0x80, -1, 0, 0, 0 );  --突進(ef_002)
setEffMoveKey( spep_2 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_2 + 100, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tosshin, -1.0, 1.0 );
setEffScaleKey( spep_2 + 100, tosshin, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tosshin, 0 );
setEffRotateKey( spep_2 + 100, tosshin, 0 );
setEffAlphaKey( spep_2 + 0, tosshin, 255 );
setEffAlphaKey( spep_2 + 93, tosshin, 255 );
setEffAlphaKey( spep_2 + 94, tosshin, 0 );
setEffAlphaKey( spep_2 + 100, tosshin, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 94, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
--entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_2 + 20 -3, 43 );  --瞬間移動


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 60; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

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

playSe( spep_2 + 62 -3, 1109 );  --瞬間移動
playSe( spep_2 + 64,  9);

-- ** 白フェード ** --
--entryFade( spep_2 + 110 -3, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade

-- ** 音 ** --


-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 膝蹴り(160F)
------------------------------------------------------

-- ** 書き文字 ** --
ctbaki = entryEffectLife( spep_3 - 3 + 12,  10020, 22, 0x100, -1, 0, 93.5, 352.4 );  --バキ
setEffMoveKey( spep_3 - 3 + 12, ctbaki, 93.5, 352.4 , 0 );
setEffMoveKey( spep_3 - 3 + 14, ctbaki, 80.6, 378.1 , 0 );
setEffMoveKey( spep_3 - 3 + 16, ctbaki, 93.4, 352.4 , 0 );
setEffMoveKey( spep_3 - 3 + 18, ctbaki, 83.5, 372.4 , 0 );
setEffMoveKey( spep_3 - 3 + 20, ctbaki, 93.5, 352.3 , 0 );
setEffMoveKey( spep_3 - 3 + 22, ctbaki, 85.1, 369.1 , 0 );
setEffMoveKey( spep_3 - 3 + 24, ctbaki, 93.5, 352.3 , 0 );
setEffMoveKey( spep_3 - 3 + 26, ctbaki, 85.5, 368.4 , 0 );
setEffMoveKey( spep_3 - 3 + 28, ctbaki, 93.6, 352.3 , 0 );
setEffMoveKey( spep_3 - 3 + 30, ctbaki, 93.6, 352.3 , 0 );
setEffMoveKey( spep_3 - 3 + 32, ctbaki, 85.8, 367.8 , 0 );
setEffMoveKey( spep_3 - 3 + 34, ctbaki, 93.5, 352.4 , 0 );

setEffScaleKey( spep_3 - 3 + 12, ctbaki, 1.88, 1.88 );
setEffScaleKey( spep_3 - 3 + 14, ctbaki, 3.37, 3.37 );
setEffScaleKey( spep_3 - 3 + 16, ctbaki, 3.01, 3.01 );
setEffScaleKey( spep_3 - 3 + 18, ctbaki, 2.64, 2.64 );
setEffScaleKey( spep_3 - 3 + 20, ctbaki, 2.27, 2.27 );
setEffScaleKey( spep_3 - 3 + 22, ctbaki, 2.22, 2.22 );
setEffScaleKey( spep_3 - 3 + 24, ctbaki, 2.17, 2.17 );
setEffScaleKey( spep_3 - 3 + 26, ctbaki, 2.12, 2.12 );
setEffScaleKey( spep_3 - 3 + 28, ctbaki, 2.07, 2.07 );
setEffScaleKey( spep_3 - 3 + 30, ctbaki, 2.03, 2.03 );
setEffScaleKey( spep_3 - 3 + 32, ctbaki, 2.04, 2.04 );
setEffScaleKey( spep_3 - 3 + 34, ctbaki, 2.06, 2.06 );

setEffRotateKey( spep_3 - 3 + 12, ctbaki, 18.5 );
setEffRotateKey( spep_3 - 3 + 34, ctbaki, 18.5 );

setEffAlphaKey( spep_3 - 3 + 12, ctbaki, 255 );
setEffAlphaKey( spep_3 - 3 + 30, ctbaki, 255 );
setEffAlphaKey( spep_3 - 3 + 32, ctbaki, 134 );
setEffAlphaKey( spep_3 - 3 + 34, ctbaki, 13 );


ctga = entryEffectLife( spep_3 - 3 + 116,  10005, 22, 0x100, -1, 0, -2.3, 309.7 );
setEffMoveKey( spep_3 - 3 + 116, ctga, -2.3, 309.7 , 0 );
setEffMoveKey( spep_3 - 3 + 118, ctga, -2.2, 309.8 , 0 );
setEffMoveKey( spep_3 - 3 + 120, ctga, -2.3, 309.9 , 0 );
setEffMoveKey( spep_3 - 3 + 122, ctga, -2.5, 309.9 , 0 );
setEffMoveKey( spep_3 - 3 + 124, ctga, -2.3, 309.9 , 0 );
setEffMoveKey( spep_3 - 3 + 126, ctga, -2.4, 309.9 , 0 );
setEffMoveKey( spep_3 - 3 + 128, ctga, -2.4, 309.7 , 0 );
setEffMoveKey( spep_3 - 3 + 130, ctga, -2.3, 309.8 , 0 );
setEffMoveKey( spep_3 - 3 + 134, ctga, -2.3, 309.8 , 0 );
setEffMoveKey( spep_3 - 3 + 138, ctga, -2.2, 309.7 , 0 );

setEffScaleKey( spep_3 - 3 + 116, ctga, 1.03, 1.03 );
setEffScaleKey( spep_3 - 3 + 118, ctga, 2.21, 2.21 );
setEffScaleKey( spep_3 - 3 + 120, ctga, 2.8, 2.8 );
setEffScaleKey( spep_3 - 3 + 122, ctga, 2.67, 2.67 );
setEffScaleKey( spep_3 - 3 + 124, ctga, 2.53, 2.53 );
setEffScaleKey( spep_3 - 3 + 126, ctga, 2.4, 2.4 );
setEffScaleKey( spep_3 - 3 + 128, ctga, 2.27, 2.27 );
setEffScaleKey( spep_3 - 3 + 130, ctga, 2.27, 2.27 );
setEffScaleKey( spep_3 - 3 + 132, ctga, 2.25, 2.25 );
setEffScaleKey( spep_3 - 3 + 134, ctga, 2.23, 2.23 );
setEffScaleKey( spep_3 - 3 + 136, ctga, 2.21, 2.21 );
setEffScaleKey( spep_3 - 3 + 138, ctga, 2.2, 2.2 );

setEffRotateKey( spep_3 - 3 + 116, ctga, -12.4 );
setEffRotateKey( spep_3 - 3 + 118, ctga, -25.8 );
setEffRotateKey( spep_3 - 3 + 120, ctga, -12.4 );
setEffRotateKey( spep_3 - 3 + 122, ctga, -3.8 );
setEffRotateKey( spep_3 - 3 + 124, ctga, -12.6 );
setEffRotateKey( spep_3 - 3 + 126, ctga, -23.3 );
setEffRotateKey( spep_3 - 3 + 128, ctga, -12.4 );
setEffRotateKey( spep_3 - 3 + 130, ctga, -12.6 );
setEffRotateKey( spep_3 - 3 + 132, ctga, -12.5 );
setEffRotateKey( spep_3 - 3 + 136, ctga, -12.5 );
setEffRotateKey( spep_3 - 3 + 138, ctga, -12.4 );

setEffAlphaKey( spep_3 - 3 + 116, ctga, 255 );
setEffAlphaKey( spep_3 - 3 + 130, ctga, 255 );
setEffAlphaKey( spep_3 - 3 + 132, ctga, 191 );
setEffAlphaKey( spep_3 - 3 + 134, ctga, 128 );
setEffAlphaKey( spep_3 - 3 + 136, ctga, 64 );
setEffAlphaKey( spep_3 - 3 + 138, ctga, 0 );

-- ** エフェクト等 ** --
keri = entryEffectLife( spep_3 + 0, SP_03, 160, 0x100, -1, 0, 0, 0 );  --膝蹴り(ef_003)
setEffMoveKey( spep_3 + 0, keri, 0, 0 , 0 );
setEffMoveKey( spep_3 + 160, keri, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, keri, 1.0, 1.0 );
setEffScaleKey( spep_3 + 160, keri, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, keri, 0 );
setEffRotateKey( spep_3 + 160, keri, 0 );
setEffAlphaKey( spep_3 + 0, keri, 255 );
setEffAlphaKey( spep_3 + 154, keri, 255 );
setEffAlphaKey( spep_3 + 155, keri, 0 );
setEffAlphaKey( spep_3 + 160, keri, 0 );

-- ** 敵の動き ** --
setDisp( spep_3 + 0,  1,  1);  
setDisp( spep_3 + 42 - 3,  1,  0); 
setDisp( spep_3 + 46 - 3,  1,  1); 
setDisp( spep_3 + 146 - 3,  1,  0); 
changeAnime( spep_3 + 0, 1, 102 );
changeAnime( spep_3 - 3 + 12, 1, 107 );
changeAnime( spep_3 - 3 + 46, 1, 106 );
changeAnime( spep_3 - 3 + 116, 1, 108 );

setMoveKey( spep_3 + 0, 1, -8, 31.5 , 0 );
--setMoveKey( spep_3 - 3 + 2, 1, 6.5, 32.4 , 0 );
setMoveKey( spep_3 - 3 + 4, 1, 21, 33.4 , 0 );
setMoveKey( spep_3 - 3 + 6, 1, 35.5, 34.4 , 0 );
setMoveKey( spep_3 - 3 + 8, 1, 50, 35.4 , 0 );
setMoveKey( spep_3 - 3 + 10, 1, 64.6, 36.3 , 0 );
setMoveKey( spep_3 - 3 + 12, 1, 131.3, 10.9 , 0 );
setMoveKey( spep_3 - 3 + 14, 1, 124.9, -8.3 , 0 );
setMoveKey( spep_3 - 3 + 16, 1, 124.4, 3.2 , 0 );
setMoveKey( spep_3 - 3 + 18, 1, 123.6, 4 , 0 );
setMoveKey( spep_3 - 3 + 20, 1, 138.7, 12.7 , 0 );
setMoveKey( spep_3 - 3 + 22, 1, 141.8, 5.5 , 0 );
setMoveKey( spep_3 - 3 + 24, 1, 153, 22.3 , 0 );
setMoveKey( spep_3 - 3 + 26, 1, 148.1, 23.1 , 0 );
setMoveKey( spep_3 - 3 + 28, 1, 167.3, 31.9 , 0 );
setMoveKey( spep_3 - 3 + 30, 1, 170.5, 36.7 , 0 );
setMoveKey( spep_3 - 3 + 32, 1, 393.1, 130.8 , 0 );
setMoveKey( spep_3 - 3 + 34, 1, 612.1, 221.1 , 0 );
setMoveKey( spep_3 - 3 + 36, 1, 827.4, 319.6 , 0 );
setMoveKey( spep_3 - 3 + 38, 1, 1051.2, 414.2 , 0 );
setMoveKey( spep_3 - 3 + 40, 1, 1271.3, 509.1 , 0 );
setMoveKey( spep_3 - 3 + 42, 1, 1491.9, 604 , 0 );

setMoveKey( spep_3 - 3 + 46, 1, -992.6, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 48, 1, -894.5, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 50, 1, -796.4, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 52, 1, -698.3, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 54, 1, -600.1, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 56, 1, -502, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 58, 1, -403.9, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 60, 1, -305.8, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 62, 1, -207.7, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 64, 1, -197.3, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 66, 1, -187, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 68, 1, -176.6, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 70, 1, -166.3, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 72, 1, -155.9, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 74, 1, -145.6, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 76, 1, -135.2, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 78, 1, -124.9, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 80, 1, -114.5, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 82, 1, -104.2, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 84, 1, -93.8, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 86, 1, -83.5, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 88, 1, -73.1, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 90, 1, -68.8, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 92, 1, -64.4, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 94, 1, -60, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 96, 1, -55.7, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 98, 1, -51.3, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 100, 1, -46.9, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 102, 1, -42.5, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 104, 1, -38.2, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 106, 1, -33.8, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 108, 1, -29.4, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 110, 1, -25, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 112, 1, -20.7, 0.1 , 0 );
setMoveKey( spep_3 - 3 + 114, 1, -16.3, 0.1 , 0 );

setMoveKey( spep_3 - 3 + 116, 1, -48.5, -57.9 , 0 );
setMoveKey( spep_3 - 3 + 118, 1, -45.2, -86.5 , 0 );
setMoveKey( spep_3 - 3 + 120, 1, -33.9, -73.5 , 0 );
setMoveKey( spep_3 - 3 + 122, 1, -45.9, -81.1 , 0 );
setMoveKey( spep_3 - 3 + 124, 1, -33.7, -80.7 , 0 );
setMoveKey( spep_3 - 3 + 126, 1, -37.7, -92.3 , 0 );
setMoveKey( spep_3 - 3 + 128, 1, -33.6, -87.9 , 0 );
setMoveKey( spep_3 - 3 + 130, 1, -37.5, -95.4 , 0 );
setMoveKey( spep_3 - 3 + 132, 1, -33.4, -94.9 , 0 );
setMoveKey( spep_3 - 3 + 134, 1, -37.4, -98.5 , 0 );
setMoveKey( spep_3 - 3 + 136, 1, -33.2, -101.9 , 0 );
setMoveKey( spep_3 - 3 + 138, 1, -33.1, -109.4 , 0 );
setMoveKey( spep_3 - 3 + 140, 1, -33.1, -428.4 , 0 );
setMoveKey( spep_3 - 3 + 142, 1, -37.1, -753.8 , 0 );
setMoveKey( spep_3 - 3 + 144, 1, -32.9, -1069.4 , 0 );
setMoveKey( spep_3 - 3 + 146, 1, -36.9, -1387.5 , 0 );
setMoveKey( spep_3 - 3 + 148, 1, -32.8, -1704 , 0 );

setScaleKey( spep_3 + 0, 1, 1.19, 1.19 );
setScaleKey( spep_3 - 3 + 2, 1, 1.23, 1.23 );
setScaleKey( spep_3 - 3 + 4, 1, 1.27, 1.27 );
setScaleKey( spep_3 - 3 + 6, 1, 1.3, 1.3 );
setScaleKey( spep_3 - 3 + 8, 1, 1.34, 1.34 );
setScaleKey( spep_3 - 3 + 10, 1, 1.38, 1.38 );
setScaleKey( spep_3 - 3 + 11, 1, 1.38, 1.38 );
setScaleKey( spep_3 - 3 + 12, 1, 1.04, 1.04 );
setScaleKey( spep_3 - 3 + 14, 1, 0.89, 0.89 );
setScaleKey( spep_3 - 3 + 16, 1, 0.74, 0.74 );
setScaleKey( spep_3 - 3 + 18, 1, 0.74, 0.74 );
setScaleKey( spep_3 - 3 + 20, 1, 0.75, 0.75 );
setScaleKey( spep_3 - 3 + 22, 1, 0.75, 0.75 );
setScaleKey( spep_3 - 3 + 24, 1, 0.76, 0.76 );
setScaleKey( spep_3 - 3 + 26, 1, 0.77, 0.77 );
setScaleKey( spep_3 - 3 + 28, 1, 0.77, 0.77 );
setScaleKey( spep_3 - 3 + 30, 1, 0.78, 0.78 );
setScaleKey( spep_3 - 3 + 32, 1, 1.13, 1.13 );
setScaleKey( spep_3 - 3 + 34, 1, 1.49, 1.49 );
setScaleKey( spep_3 - 3 + 36, 1, 1.85, 1.85 );
setScaleKey( spep_3 - 3 + 38, 1, 2.21, 2.21 );
setScaleKey( spep_3 - 3 + 40, 1, 2.57, 2.57 );
setScaleKey( spep_3 - 3 + 42, 1, 2.93, 2.93 );
setScaleKey( spep_3 - 3 + 45, 1, 2.93, 2.93 );
setScaleKey( spep_3 - 3 + 46, 1, 1.41, 1.41 );
setScaleKey( spep_3 - 3 + 115, 1, 1.41, 1.41 );
setScaleKey( spep_3 - 3 + 116, 1, 2.17, 2.17 );
setScaleKey( spep_3 - 3 + 118, 1, 1.85, 1.85 );
setScaleKey( spep_3 - 3 + 120, 1, 1.52, 1.52 );
setScaleKey( spep_3 - 3 + 122, 1, 1.52, 1.52 );
setScaleKey( spep_3 - 3 + 124, 1, 1.51, 1.51 );
setScaleKey( spep_3 - 3 + 128, 1, 1.51, 1.51 );
setScaleKey( spep_3 - 3 + 130, 1, 1.5, 1.5 );
setScaleKey( spep_3 - 3 + 134, 1, 1.5, 1.5 );
setScaleKey( spep_3 - 3 + 136, 1, 1.49, 1.49 );
setScaleKey( spep_3 - 3 + 138, 1, 1.49, 1.49 );
setScaleKey( spep_3 - 3 + 140, 1, 1.48, 1.48 );
setScaleKey( spep_3 - 3 + 144, 1, 1.48, 1.48 );
setScaleKey( spep_3 - 3 + 146, 1, 1.47, 1.47 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 - 3 + 11 , 1, 0 );
setRotateKey( spep_3 - 3 + 12, 1, -55.7 );
setRotateKey( spep_3 - 3 + 45, 1, -55.7 );
setRotateKey( spep_3 - 3 + 46, 1, 14 );
setRotateKey( spep_3 - 3 + 115, 1, 14 );
setRotateKey( spep_3 - 3 + 116, 1, 94.5 );
setRotateKey( spep_3 - 3 + 146, 1, 94.5 );

keri_b = entryEffectLife( spep_3 + 0, SP_04, 160, 0x80, -1, 0, 0, 0 );  --背景(ef_004)
setEffMoveKey( spep_3 + 0, keri_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 160, keri_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, keri_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 160, keri_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, keri_b, 0 );
setEffRotateKey( spep_3 + 160, keri_b, 0 );
setEffAlphaKey( spep_3 + 0, keri_b, 255 );
setEffAlphaKey( spep_3 + 154, keri_b, 255 );
setEffAlphaKey( spep_3 + 155, keri_b, 0 );
setEffAlphaKey( spep_3 + 160, keri_b, 0 );

--  ** 音 **  --
playSe( spep_3 - 3 + 12,  1010 );  --バキ
playSe( spep_3 - 3 + 46,  8);  --敵吹き飛ぶ
playSe( spep_3 - 3 + 116,  1011);  --肘打ち

-- ** 白フェード ** --
entryFade( spep_3 + 12 - 3 , 2, 2, 0, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 154, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 154;

------------------------------------------------------
-- 爆発(370F)
------------------------------------------------------

-- ** 書き文字 ** --
ctzou = entryEffectLife( spep_4 - 3 + 128,  10012, 62, 0x100, -1, 0, 78.6, 286.1 );  --ズオッ

setEffMoveKey( spep_4 - 3 + 128, ctzou, 78.6, 286.1 , 0 );
setEffMoveKey( spep_4 - 3 + 130, ctzou, 104.9, 314.2 , 0 );
setEffMoveKey( spep_4 - 3 + 132, ctzou, 117.8, 355.6 , 0 );
setEffMoveKey( spep_4 - 3 + 134, ctzou, 153.5, 374.4 , 0 );
setEffMoveKey( spep_4 - 3 + 136, ctzou, 137.5, 390.4 , 0 );
setEffMoveKey( spep_4 - 3 + 138, ctzou, 153.5, 374.4 , 0 );
setEffMoveKey( spep_4 - 3 + 140, ctzou, 137.5, 390.4 , 0 );
setEffMoveKey( spep_4 - 3 + 142, ctzou, 153.5, 374.4 , 0 );
setEffMoveKey( spep_4 - 3 + 144, ctzou, 137.5, 390.4 , 0 );
setEffMoveKey( spep_4 - 3 + 146, ctzou, 153.5, 374.4 , 0 );
setEffMoveKey( spep_4 - 3 + 148, ctzou, 137.5, 390.4 , 0 );
setEffMoveKey( spep_4 - 3 + 150, ctzou, 153.5, 374.4 , 0 );
setEffMoveKey( spep_4 - 3 + 152, ctzou, 137.5, 390.4 , 0 );
setEffMoveKey( spep_4 - 3 + 154, ctzou, 153.5, 374.4 , 0 );
setEffMoveKey( spep_4 - 3 + 156, ctzou, 137.5, 390.4 , 0 );
setEffMoveKey( spep_4 - 3 + 158, ctzou, 153.5, 374.4 , 0 );
setEffMoveKey( spep_4 - 3 + 160, ctzou, 137.5, 390.4 , 0 );
setEffMoveKey( spep_4 - 3 + 162, ctzou, 153.5, 374.4 , 0 );
setEffMoveKey( spep_4 - 3 + 164, ctzou, 137.5, 390.4 , 0 );
setEffMoveKey( spep_4 - 3 + 166, ctzou, 153.5, 374.4 , 0 );
setEffMoveKey( spep_4 - 3 + 168, ctzou, 137.5, 390.4 , 0 );
setEffMoveKey( spep_4 - 3 + 170, ctzou, 153.5, 374.4 , 0 );
setEffMoveKey( spep_4 - 3 + 172, ctzou, 137.5, 390.4 , 0 );
setEffMoveKey( spep_4 - 3 + 174, ctzou, 153.5, 374.4 , 0 );
setEffMoveKey( spep_4 - 3 + 176, ctzou, 137.5, 390.4 , 0 );
setEffMoveKey( spep_4 - 3 + 178, ctzou, 153.5, 374.4 , 0 );
setEffMoveKey( spep_4 - 3 + 180, ctzou, 137.5, 390.4 , 0 );
setEffMoveKey( spep_4 - 3 + 182, ctzou, 153.5, 374.4 , 0 );
setEffMoveKey( spep_4 - 3 + 184, ctzou, 145.1, 392.2 , 0 );
setEffMoveKey( spep_4 - 3 + 186, ctzou, 180.2, 366.6 , 0 );
setEffMoveKey( spep_4 - 3 + 188, ctzou, 160.4, 395.7 , 0 );
setEffMoveKey( spep_4 - 3 + 190, ctzou, 168.1, 397.4 , 0 );

setEffScaleKey( spep_4 - 3 + 128, ctzou, 0.34, 0.34 );
setEffScaleKey( spep_4 - 3 + 130, ctzou, 1.14, 1.14 );
setEffScaleKey( spep_4 - 3 + 132, ctzou, 1.93, 1.93 );
setEffScaleKey( spep_4 - 3 + 134, ctzou, 2.73, 2.73 );
setEffScaleKey( spep_4 - 3 + 182, ctzou, 2.73, 2.73 );
setEffScaleKey( spep_4 - 3 + 184, ctzou, 3.7, 3.7 );
setEffScaleKey( spep_4 - 3 + 186, ctzou, 4.67, 4.67 );
setEffScaleKey( spep_4 - 3 + 188, ctzou, 5.64, 5.64 );
setEffScaleKey( spep_4 - 3 + 190, ctzou, 6.61, 6.61 );

setEffRotateKey( spep_4 - 3 + 128, ctzou, 27.2 );
setEffRotateKey( spep_4 - 3 + 190, ctzou, 27.2 );

setEffAlphaKey( spep_4 - 3 + 128, ctzou, 255 );
setEffAlphaKey( spep_4 - 3 + 182, ctzou, 255 );
setEffAlphaKey( spep_4 - 3 + 184, ctzou, 191 );
setEffAlphaKey( spep_4 - 3 + 186, ctzou, 128 );
setEffAlphaKey( spep_4 - 3 + 188, ctzou, 64 );
setEffAlphaKey( spep_4 - 3 + 190, ctzou, 0 );

-- ** 敵の動き ** --
setDisp( spep_4 + 0, 1, 1);
setDisp( spep_4 + 40 - 3,  1,  0);
changeAnime( spep_4 + 0, 1, 108 );

setMoveKey( spep_4 + 0, 1, -296.9, 454 , 0 );
--setMoveKey( spep_4 - 3  + 2, 1, -183.7, 314.5 , 0 );
setMoveKey( spep_4 - 3  + 4, 1, -85.7, 193.3 , 0 );
setMoveKey( spep_4 - 3  + 6, 1, -2.2, 89.7 , 0 );
setMoveKey( spep_4 - 3  + 8, 1, 67, 3.3 , 0 );
setMoveKey( spep_4 - 3  + 10, 1, 122.9, -66.6 , 0 );
setMoveKey( spep_4 - 3  + 12, 1, 165.4, -120.7 , 0 );
setMoveKey( spep_4 - 3  + 14, 1, 169.8, -127.6 , 0 );
setMoveKey( spep_4 - 3  + 16, 1, 173.9, -133.8 , 0 );
setMoveKey( spep_4 - 3  + 18, 1, 177.2, -139.6 , 0 );
setMoveKey( spep_4 - 3  + 20, 1, 181.5, -144 , 0 );
setMoveKey( spep_4 - 3  + 22, 1, 185.4, -148.2 , 0 );
setMoveKey( spep_4 - 3  + 24, 1, 188.9, -151.9 , 0 );
setMoveKey( spep_4 - 3  + 26, 1, 192.1, -155.2 , 0 );
setMoveKey( spep_4 - 3  + 28, 1, 194.9, -157.9 , 0 );
setMoveKey( spep_4 - 3  + 30, 1, 197.4, -160.5 , 0 );
setMoveKey( spep_4 - 3  + 32, 1, 199.6, -162.6 , 0 );
setMoveKey( spep_4 - 3  + 34, 1, 201.3, -164.4 , 0 );
setMoveKey( spep_4 - 3  + 36, 1, 202.8, -165.8 , 0 );
setMoveKey( spep_4 - 3  + 40, 1, 202.7, -166.5 , 0 );

setScaleKey( spep_4 + 0, 1, 5.35, 5.35 );
--setScaleKey( spep_4 - 3  + 2, 1, 4.29, 4.29 );
setScaleKey( spep_4 - 3  + 4, 1, 3.36, 3.36 );
setScaleKey( spep_4 - 3  + 6, 1, 2.57, 2.57 );
setScaleKey( spep_4 - 3  + 8, 1, 1.9, 1.9 );
setScaleKey( spep_4 - 3  + 10, 1, 1.36, 1.36 );
setScaleKey( spep_4 - 3  + 12, 1, 0.94, 0.94 );
setScaleKey( spep_4 - 3  + 14, 1, 0.89, 0.89 );
setScaleKey( spep_4 - 3  + 16, 1, 0.85, 0.85 );
setScaleKey( spep_4 - 3  + 18, 1, 0.81, 0.81 );
setScaleKey( spep_4 - 3  + 20, 1, 0.77, 0.77 );
setScaleKey( spep_4 - 3  + 22, 1, 0.74, 0.74 );
setScaleKey( spep_4 - 3  + 24, 1, 0.71, 0.71 );
setScaleKey( spep_4 - 3  + 26, 1, 0.68, 0.68 );
setScaleKey( spep_4 - 3  + 28, 1, 0.66, 0.66 );
setScaleKey( spep_4 - 3  + 30, 1, 0.63, 0.63 );
setScaleKey( spep_4 - 3  + 32, 1, 0.61, 0.61 );
setScaleKey( spep_4 - 3  + 34, 1, 0.59, 0.59 );
setScaleKey( spep_4 - 3  + 36, 1, 0.57, 0.57 );
setScaleKey( spep_4 - 3  + 40, 1, 0.55, 0.55 );

setRotateKey( spep_4 + 0, 1, 29.2 );
setRotateKey( spep_4 - 3  + 4, 1, 29.2 );
setRotateKey( spep_4 - 3  + 6, 1, 29.1 );
setRotateKey( spep_4 - 3  + 24, 1, 29.1 );
setRotateKey( spep_4 - 3  + 26, 1, 29.2 );
setRotateKey( spep_4 - 3  + 40, 1, 29.2 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 370, bakuhatsu, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, bakuhatsu, 1.0, 1.0 );
setEffScaleKey( spep_4 + 370, bakuhatsu, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 370, bakuhatsu, 0 );
setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 370, bakuhatsu, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 370, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
SE1 = playSe( spep_4 + 0, 1118 );  --落ちる音
stopSe( spep_4 + 30 , SE1, 20);
playSe( spep_4 + 38 , 1023 ) ;  --落ちた音
playSe( spep_4 + 80,  63);  --気弾構え
playSe( spep_4 + 128 - 3,  1114);  --発射
playSe( spep_4 + 212 - 3,  1024 );  --被弾

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 260 );
endPhase( spep_4 + 360 );

end