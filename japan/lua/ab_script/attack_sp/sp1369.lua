--1018790:超サイヤ人ゴッドSSベジータ_ゴッドファイナルフラッシュ

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
SP_01 = 154496 ;--ため
SP_02 = 154497 ;--放つ
SP_03 = 154498 ;--迫る（前）
SP_04 = 154499 ;--迫る（後ろ）
SP_05 = 190013 ;--ギャン（仮）
SP_06 = 3104 ;--爆発（仮）

--味方側
SP_01x = 154500 ;--ため
SP_02x = 154501 ;--放つ
SP_03x = 154498 ;--迫る（前）
SP_04x = 154499 ;--迫る（後ろ）
SP_05x = 190013 ;--ギャン（仮）
SP_06x = 3104 ;--爆発（仮）

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
setDisp( 0, 0, 0);


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
-- ため(140F)
------------------------------------------------------
spep_0= 0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 140, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 140, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 140, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 140, tame, 255 );


-- ** カットイン ** --
speff = entryEffect( spep_0 + 10, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 10, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 26,  190006, 68, 0x100, -1, 0, 169.9, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 26, ctgogo, 68, 10 );

setEffMoveKey( spep_0 + 26, ctgogo, 169.9, 515.5 , 0 );
setEffMoveKey( spep_0 + 94, ctgogo, 169.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 26, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 86, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 88, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_0 + 90, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_0 + 92, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_0 + 94, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_0 + 26, ctgogo, 0 );
setEffRotateKey( spep_0 + 94, ctgogo, 0 );

setEffAlphaKey( spep_0 + 26, ctgogo, 255 );
setEffAlphaKey( spep_0 + 94, ctgogo, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0, 906, 140, 0x100, -1, 0, 0, 0 );

setEffShake( spep_0 + 0, shuchusen1, 140, 20);
setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 140, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1, 1 );
setEffScaleKey( spep_0 + 140, shuchusen1, 1, 1 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 140, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 140, shuchusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 140, 0, 0, 0, 0, 90 );  --黒　背景
entryFadeBg( spep_0 + 60, 42, 34, 0, 0, 0, 0, 229 );  --黒　背景

-- ** 音 ** --
playSe( spep_0 + 0, 1036 );
playSe( spep_0 + 24, 1036 );
playSe( spep_0 + 26, 1018 );
playSe( spep_0 + 48, 1036 );
playSe( spep_0 + 59, 49 );
se_1037 = playSe( spep_0 + 59, 1037 );
playSe( spep_0 + 72, 1036 );
playSe( spep_0 + 96, 1036 );
se_1020 = playSe( spep_0 + 109, 1020 );
se_1036 = playSe( spep_0 + 120, 1036 );

setSeVolume( spep_0 + 0, 1036, 79 );
setSeVolume( spep_0 + 24, 1036, 79 );
setSeVolume( spep_0 + 48, 1036, 79 );
setSeVolume( spep_0 + 59, 49, 63 );
setSeVolume( spep_0 + 59, 1037, 71 );
setSeVolume( spep_0 + 72, 1036, 79 );
setSeVolume( spep_0 + 96, 1036, 79 );
setSeVolume( spep_0 + 120, 1036, 79 );

stopSe( spep_0 + 139, se_1037, 0 );
stopSe( spep_0 + 139, se_1020, 0 );
stopSe( spep_0 + 139, se_1036, 0 );

-- ** 白フェード ** --
entryFade( spep_0 + 132, 4,  6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade


-- ** 次の準備 ** --
spep_1 = spep_0 + 140;

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
playSe( spep_1 + 4, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

--------------------------------------
--放つ(260F)
--------------------------------------

-- ** エフェクト等 ** --
hanatsu = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --放つ(ef_002)

setEffMoveKey( spep_2 + 0, hanatsu, 0, 0 , 0 );
setEffMoveKey( spep_2 + 260, hanatsu, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hanatsu, 1.0, 1.0 );
setEffScaleKey( spep_2 + 260, hanatsu, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hanatsu, 0 );
setEffRotateKey( spep_2 + 260, hanatsu, 0 );
setEffAlphaKey( spep_2 + 0, hanatsu, 255 );
setEffAlphaKey( spep_2 + 260, hanatsu, 255 );


-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 0, 906, 194, 0x100, -1, 0, 0, 0 );  --集中線

setEffShake( spep_2 + 0, shuchusen2, 194, 20 );
setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 194, shuchusen2, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 194, shuchusen2, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 194, shuchusen2, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 194, shuchusen2, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_2-3 + 194,  10012, 62, 0x100, -1, 0, 18.1, 240.7 );

setEffMoveKey( spep_2-3 + 194, ctzuo, 18.1, 240.7 , 0 );
setEffMoveKey( spep_2-3 + 196, ctzuo, 32.4, 269.3 , 0 );
setEffMoveKey( spep_2-3 + 198, ctzuo, 35.9, 315.4 , 0 );
setEffMoveKey( spep_2-3 + 200, ctzuo, 61.5, 340.8 , 0 );
setEffMoveKey( spep_2-3 + 202, ctzuo, 44.2, 355.3 , 0 );
setEffMoveKey( spep_2-3 + 204, ctzuo, 61.7, 340.8 , 0 );
setEffMoveKey( spep_2-3 + 206, ctzuo, 44.2, 355.4 , 0 );
setEffMoveKey( spep_2-3 + 208, ctzuo, 61.8, 340.7 , 0 );
setEffMoveKey( spep_2-3 + 210, ctzuo, 44.3, 355.4 , 0 );
setEffMoveKey( spep_2-3 + 212, ctzuo, 62, 340.7 , 0 );
setEffMoveKey( spep_2-3 + 214, ctzuo, 44.4, 355.3 , 0 );
setEffMoveKey( spep_2-3 + 216, ctzuo, 62.1, 340.6 , 0 );
setEffMoveKey( spep_2-3 + 218, ctzuo, 44.5, 355.4 , 0 );
setEffMoveKey( spep_2-3 + 220, ctzuo, 62.3, 340.5 , 0 );
setEffMoveKey( spep_2-3 + 222, ctzuo, 44.6, 355.4 , 0 );
setEffMoveKey( spep_2-3 + 224, ctzuo, 62.5, 340.4 , 0 );
setEffMoveKey( spep_2-3 + 226, ctzuo, 44.7, 355.3 , 0 );
setEffMoveKey( spep_2-3 + 228, ctzuo, 62.7, 340.3 , 0 );
setEffMoveKey( spep_2-3 + 230, ctzuo, 44.8, 355.4 , 0 );
setEffMoveKey( spep_2-3 + 232, ctzuo, 62.8, 340.2 , 0 );
setEffMoveKey( spep_2-3 + 234, ctzuo, 45, 355.3 , 0 );
setEffMoveKey( spep_2-3 + 236, ctzuo, 63, 340.2 , 0 );
setEffMoveKey( spep_2-3 + 238, ctzuo, 45.2, 355.4 , 0 );
setEffMoveKey( spep_2-3 + 240, ctzuo, 63.2, 340.1 , 0 );
setEffMoveKey( spep_2-3 + 242, ctzuo, 45.2, 355.5 , 0 );
setEffMoveKey( spep_2-3 + 244, ctzuo, 63.3, 339.9 , 0 );
setEffMoveKey( spep_2-3 + 246, ctzuo, 45.3, 355.4 , 0 );
setEffMoveKey( spep_2-3 + 248, ctzuo, 63.4, 339.9 , 0 );
setEffMoveKey( spep_2-3 + 250, ctzuo, 45.4, 355.5 , 0 );
setEffMoveKey( spep_2-3 + 252, ctzuo, 63.6, 339.8 , 0 );
setEffMoveKey( spep_2-3 + 254, ctzuo, 45.5, 355.4 , 0 );
setEffMoveKey( spep_2-3 + 256, ctzuo, 63.8, 339.7 , 0 );

setEffScaleKey( spep_2-3 + 194, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_2-3 + 196, ctzuo, 1.13, 1.13 );
setEffScaleKey( spep_2-3 + 198, ctzuo, 1.94, 1.94 );
setEffScaleKey( spep_2-3 + 200, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2-3 + 204, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2-3 + 206, ctzuo, 2.76, 2.76 );
setEffScaleKey( spep_2-3 + 216, ctzuo, 2.76, 2.76 );
setEffScaleKey( spep_2-3 + 218, ctzuo, 2.8, 2.8 );
setEffScaleKey( spep_2-3 + 226, ctzuo, 2.8, 2.8 );
setEffScaleKey( spep_2-3 + 228, ctzuo, 2.83, 2.83 );
setEffScaleKey( spep_2-3 + 238, ctzuo, 2.83, 2.83 );
setEffScaleKey( spep_2-3 + 240, ctzuo, 2.87, 2.87 );
setEffScaleKey( spep_2-3 + 248, ctzuo, 2.87, 2.87 );
setEffScaleKey( spep_2-3 + 250, ctzuo, 2.9, 2.9 );
setEffScaleKey( spep_2-3 + 256, ctzuo, 2.9, 2.9 );

setEffRotateKey( spep_2-3 + 194, ctzuo, 45.7 );
setEffRotateKey( spep_2-3 + 196, ctzuo, 37.9 );
setEffRotateKey( spep_2-3 + 198, ctzuo, 29.9 );
setEffRotateKey( spep_2-3 + 200, ctzuo, 21.9 );
setEffRotateKey( spep_2-3 + 202, ctzuo, 22 );
setEffRotateKey( spep_2-3 + 206, ctzuo, 22 );
setEffRotateKey( spep_2-3 + 208, ctzuo, 22.1 );
setEffRotateKey( spep_2-3 + 212, ctzuo, 22.1 );
setEffRotateKey( spep_2-3 + 214, ctzuo, 22.2 );
setEffRotateKey( spep_2-3 + 218, ctzuo, 22.2 );
setEffRotateKey( spep_2-3 + 220, ctzuo, 22.3 );
setEffRotateKey( spep_2-3 + 224, ctzuo, 22.3 );
setEffRotateKey( spep_2-3 + 226, ctzuo, 22.4 );
setEffRotateKey( spep_2-3 + 230, ctzuo, 22.4 );
setEffRotateKey( spep_2-3 + 232, ctzuo, 22.5 );
setEffRotateKey( spep_2-3 + 236, ctzuo, 22.5 );
setEffRotateKey( spep_2-3 + 238, ctzuo, 22.6 );
setEffRotateKey( spep_2-3 + 240, ctzuo, 22.6 );
setEffRotateKey( spep_2-3 + 242, ctzuo, 22.7 );
setEffRotateKey( spep_2-3 + 246, ctzuo, 22.7 );
setEffRotateKey( spep_2-3 + 248, ctzuo, 22.8 );
setEffRotateKey( spep_2-3 + 252, ctzuo, 22.8 );
setEffRotateKey( spep_2-3 + 254, ctzuo, 22.9 );
setEffRotateKey( spep_2-3 + 256, ctzuo, 22.9 );

setEffAlphaKey( spep_2-3 + 194, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 256, ctzuo, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, 1072 );
se_1161 = playSe( spep_2 + 6, 1161 );
playSe( spep_2 + 7, 1037 );
playSe( spep_2 + 7, 1020 );
playSe( spep_2 + 34, 1004 );
playSe( spep_2 + 36, 1020 );
playSe( spep_2 + 66, 1020 );
se_1132 = playSe( spep_2 + 75, 1132 );
SE0=playSe( spep_2 + 83, 1037 );
SE1=playSe( spep_2 + 96, 1020 );

stopSe( spep_2 + 66, se_1161, 0 );

setSeVolume( spep_2 + 0, 1072, 79 );
setSeVolume( spep_2 + 6, 1161, 56 );
setSeVolume( spep_2 + 7, 1037, 40 );
setSeVolume( spep_2 + 7, 1020, 79 );
setSeVolume( spep_2 + 36, 1020, 89 );
setSeVolume( spep_2 + 75, 1132, 84 );
setSeVolume( spep_2 + 96, 1020, 112 );
setSeVolume( spep_2 + 126, 1020, 126 );


-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 260, 0, 0, 0, 0, 229 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 120; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE0, 0 );
stopSe( SP_dodge - 12, SE1, 0 );
stopSe( SP_dodge - 12, se_1132, 0 );

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
--SE
playSe( spep_2 + 126, 1020 );
playSe( spep_2 + 156, 1020 );
se_1020 = playSe( spep_2 + 186, 1020 );
playSe( spep_2 + 192, 1022 );

stopSe( spep_2 + 192, se_1132, 0 );
stopSe( spep_2 + 192, se_1020, 0 );


setSeVolume( spep_2 + 156, 1020, 141 );
setSeVolume( spep_2 + 186, 1020, 158 );
setSeVolume( spep_2 + 192, 1022, 126 );

-- ** 白フェード ** --
entryFade( spep_2 + 17, 0,  2, 4, fcolor_r, fcolor_g, fcolor_b, 230 );     -- white fade
entryFade( spep_2 + 76, 0,  2, 4, fcolor_r, fcolor_g, fcolor_b, 230 );     -- white fade
entryFade( spep_2 + 191, 0,  2, 4, fcolor_r, fcolor_g, fcolor_b, 230 );     -- white fade
entryFade( spep_2 + 252, 4,  6, 4, fcolor_r, fcolor_g, fcolor_b, 230 );     -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 260;

------------------------------------------------------
-- 迫る(60F)
------------------------------------------------------

-- ** エフェクト等 ** --
semaru_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --迫る(ef_003)

setEffMoveKey( spep_3 + 0, semaru_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 60, semaru_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, semaru_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 60, semaru_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, semaru_f, 0 );
setEffRotateKey( spep_3 + 60, semaru_f, 0 );
setEffAlphaKey( spep_3 + 0, semaru_f, 255 );
setEffAlphaKey( spep_3 + 60, semaru_f, 255 );

semaru_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --迫る(ef_003)

setEffMoveKey( spep_3 + 0, semaru_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 60, semaru_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, semaru_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 60, semaru_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, semaru_b, 0 );
setEffRotateKey( spep_3 + 60, semaru_b, 0 );
setEffAlphaKey( spep_3 + 0, semaru_b, 255 );
setEffAlphaKey( spep_3 + 60, semaru_b, 255 );

-- ** 敵の動き ** --
setDisp( spep_3  + 0, 1, 1 );
setDisp( spep_3 -3 + 58, 1, 0 );

changeAnime( spep_3  + 0, 1, 104 );

setMoveKey( spep_3  + 0, 1, -437.5, 152.8 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, -356.1, 131.1 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -274.7, 109.4 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -193.3, 87.7 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -111.9, 66 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -30.4, 44.2 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 51, 22.5 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 132.4, 0.8 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 135.8, -0.1 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 136.1, -7.4 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 142.8, -2 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 139.8, -6.1 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 149.7, -3.8 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 149.9, -11.1 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 156.6, -5.6 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 153.6, -9.8 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 163.5, -7.5 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 160.6, -14.8 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 170.4, -9.3 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 170.7, -13.5 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 177.3, -11.2 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 174.4, -15.3 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 184.2, -13 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 184.5, -17.1 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 191.2, -14.9 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 191.4, -22.2 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 198.1, -16.7 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 195.1, -20.8 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 205, -18.5 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 205.2, -25.9 , 0 );

setScaleKey( spep_3  + 0, 1, 2.57, 2.57 );
--setScaleKey( spep_3 -3 + 2, 1, 2.33, 2.33 );
setScaleKey( spep_3 -3 + 4, 1, 2.09, 2.09 );
setScaleKey( spep_3 -3 + 6, 1, 1.86, 1.86 );
setScaleKey( spep_3 -3 + 8, 1, 1.62, 1.62 );
setScaleKey( spep_3 -3 + 10, 1, 1.38, 1.38 );
setScaleKey( spep_3 -3 + 12, 1, 1.15, 1.15 );
setScaleKey( spep_3 -3 + 14, 1, 0.91, 0.91 );
setScaleKey( spep_3 -3 + 16, 1, 0.9, 0.9 );
setScaleKey( spep_3 -3 + 18, 1, 0.89, 0.89 );
setScaleKey( spep_3 -3 + 20, 1, 0.88, 0.88 );
setScaleKey( spep_3 -3 + 22, 1, 0.87, 0.87 );
setScaleKey( spep_3 -3 + 24, 1, 0.86, 0.86 );
setScaleKey( spep_3 -3 + 26, 1, 0.85, 0.85 );
setScaleKey( spep_3 -3 + 28, 1, 0.84, 0.84 );
setScaleKey( spep_3 -3 + 30, 1, 0.83, 0.83 );
setScaleKey( spep_3 -3 + 32, 1, 0.82, 0.82 );
setScaleKey( spep_3 -3 + 34, 1, 0.81, 0.81 );
setScaleKey( spep_3 -3 + 36, 1, 0.8, 0.8 );
setScaleKey( spep_3 -3 + 38, 1, 0.79, 0.79 );
setScaleKey( spep_3 -3 + 40, 1, 0.78, 0.78 );
setScaleKey( spep_3 -3 + 42, 1, 0.77, 0.77 );
setScaleKey( spep_3 -3 + 44, 1, 0.76, 0.76 );
setScaleKey( spep_3 -3 + 46, 1, 0.75, 0.75 );
setScaleKey( spep_3 -3 + 48, 1, 0.74, 0.74 );
setScaleKey( spep_3 -3 + 50, 1, 0.73, 0.73 );
setScaleKey( spep_3 -3 + 52, 1, 0.72, 0.72 );
setScaleKey( spep_3 -3 + 54, 1, 0.71, 0.71 );
setScaleKey( spep_3 -3 + 56, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 58, 1, 0.69, 0.69 );

setRotateKey( spep_3  + 0, 1, 0 );
setRotateKey( spep_3 -3 + 58, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 104, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_3 + 2, 1021 );
playSe( spep_3 + 56, 1023 );

-- ** 白フェード ** --
entryFade( spep_3 + 52, 4,  10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 60;


------------------------------------------------------
-- ギャン(60F)
------------------------------------------------------

-- ** エフェクト等 ** --
gyan = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 ); --ギャン（色違うかも）
setEffMoveKey( spep_4 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_4 + 58, gyan, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_4 + 58, gyan, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, gyan, 0 );
setEffRotateKey( spep_4 + 58, gyan, 0 );
setEffAlphaKey( spep_4 + 0, gyan, 255 );
setEffAlphaKey( spep_4 + 58, gyan, 255 );

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep_4 + 0, 10006, 58, 0x100, -1, 0, 7.1, 316.8 );
setEffMoveKey( spep_4 + 0, ctgyan, 7.1, 316.8 , 0 );
setEffMoveKey( spep_4 -3 + 61, ctgyan, 7.1, 316.8 , 0 );

setEffScaleKey( spep_4 -3 + 3, ctgyan, 2, 2 );
setEffScaleKey( spep_4 -3 + 10, ctgyan, 3.8, 3.8 );
setEffScaleKey( spep_4 -3 + 61, ctgyan, 4.5, 4.5 );

setEffRotateKey( spep_4 + 0, ctgyan, 0 );
setEffRotateKey( spep_4 -3 + 61, ctgyan, 0 );

setEffAlphaKey( spep_4 + 0, ctgyan, 255 );
setEffAlphaKey( spep_4 -3 + 61, ctgyan, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, 1023 );  --ギャン

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 58, 0, 0, 0, 0, 225); --黒フェード

-- ** 白フェード ** --
entryFade( spep_4 + 20, 36, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 58;

------------------------------------------------------
-- 爆発(240F)
------------------------------------------------------

-- ** エフェクト等 ** --
kakuto = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --爆発（仮）

setEffMoveKey( spep_5 + 0, kakuto, 0, 0 , 0 );
setEffMoveKey( spep_5 + 240, kakuto, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, kakuto, 1.0, 1.0 );
setEffScaleKey( spep_5 + 240, kakuto, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kakuto, 0 );
setEffRotateKey( spep_5 + 240, kakuto, 0 );
setEffAlphaKey( spep_5 + 0, kakuto, 255 );
setEffAlphaKey( spep_5 + 240, kakuto, 255 );

--SE
playSe( spep_5, 1024 );
playSe( spep_5 +2 , 1159 );
setSeVolume( spep_5 +2, 1159, 63 );
-- ** ダメージ表示 ** --
dealDamage( spep_5 +10 );
endPhase( spep_5 + 150  );

else
------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- ため(140F)
------------------------------------------------------
spep_0= 0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 140, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 140, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 140, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 140, tame, 255 );


-- ** カットイン ** --
--speff = entryEffect( spep_0 + 10, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 10, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 26,  190006, 68, 0x100, -1, 0, 109.9, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 26, ctgogo, 68, 10 );

setEffMoveKey( spep_0 + 26, ctgogo, 109.9, 515.5 , 0 );
setEffMoveKey( spep_0 + 94, ctgogo, 109.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 26, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 86, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 88, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_0 + 90, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_0 + 92, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_0 + 94, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_0 + 26, ctgogo, 0 );
setEffRotateKey( spep_0 + 94, ctgogo, 0 );

setEffAlphaKey( spep_0 + 26, ctgogo, 255 );
setEffAlphaKey( spep_0 + 94, ctgogo, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0, 906, 140, 0x100, -1, 0, 0, 0 );

setEffShake( spep_0 + 0, shuchusen1, 140, 20);
setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 140, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1, 1 );
setEffScaleKey( spep_0 + 140, shuchusen1, 1, 1 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 140, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 140, shuchusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 140, 0, 0, 0, 0, 90 );  --黒　背景
entryFadeBg( spep_0 + 60, 42, 34, 0, 0, 0, 0, 229 );  --黒　背景

-- ** 音 ** --
playSe( spep_0 + 0, 1036 );
playSe( spep_0 + 24, 1036 );
playSe( spep_0 + 26, 1018 );
playSe( spep_0 + 48, 1036 );
playSe( spep_0 + 59, 49 );
se_1037 = playSe( spep_0 + 59, 1037 );
playSe( spep_0 + 72, 1036 );
playSe( spep_0 + 96, 1036 );
se_1020 = playSe( spep_0 + 109, 1020 );
se_1036 = playSe( spep_0 + 120, 1036 );

setSeVolume( spep_0 + 0, 1036, 79 );
setSeVolume( spep_0 + 24, 1036, 79 );
setSeVolume( spep_0 + 48, 1036, 79 );
setSeVolume( spep_0 + 59, 49, 63 );
setSeVolume( spep_0 + 59, 1037, 71 );
setSeVolume( spep_0 + 96, 1036, 79 );
setSeVolume( spep_0 + 120, 1036, 79 );

stopSe( spep_0 + 139, se_1037, 0 );
stopSe( spep_0 + 139, se_1020, 0 );
stopSe( spep_0 + 139, se_1036, 0 );

-- ** 白フェード ** --
entryFade( spep_0 + 132, 4,  6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade


-- ** 次の準備 ** --
spep_1 = spep_0 + 140;

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
playSe( spep_1 + 4, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;



--------------------------------------
--放つ(260F)
--------------------------------------

-- ** エフェクト等 ** --
hanatsu = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 );  --放つ(ef_002)

setEffMoveKey( spep_2 + 0, hanatsu, 0, 0 , 0 );
setEffMoveKey( spep_2 + 216, hanatsu, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hanatsu, 1.0, 1.0 );
setEffScaleKey( spep_2 + 216, hanatsu, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hanatsu, 0 );
setEffRotateKey( spep_2 + 216, hanatsu, 0 );
setEffAlphaKey( spep_2 + 0, hanatsu, 255 );
setEffAlphaKey( spep_2 + 216, hanatsu, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 0, 906, 146, 0x100, -1, 0, 0, 0 );  --集中線

setEffShake( spep_2 + 0, shuchusen2, 146, 20 );
setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 146, shuchusen2, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 146, shuchusen2, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 146, shuchusen2, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 146, shuchusen2, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_2-44-3 + 194,  10012, 62, 0x100, -1, 0, 18.1, 240.7 );

setEffMoveKey( spep_2-44-3 + 194, ctzuo, 18.1, 240.7 , 0 );
setEffMoveKey( spep_2-44-3 + 196, ctzuo, 32.4, 269.3 , 0 );
setEffMoveKey( spep_2-44-3 + 198, ctzuo, 35.9, 315.4 , 0 );
setEffMoveKey( spep_2-44-3 + 200, ctzuo, 61.5, 340.8 , 0 );
setEffMoveKey( spep_2-44-3 + 202, ctzuo, 44.2, 355.3 , 0 );
setEffMoveKey( spep_2-44-3 + 204, ctzuo, 61.7, 340.8 , 0 );
setEffMoveKey( spep_2-44-3 + 206, ctzuo, 44.2, 355.4 , 0 );
setEffMoveKey( spep_2-44-3 + 208, ctzuo, 61.8, 340.7 , 0 );
setEffMoveKey( spep_2-44-3 + 210, ctzuo, 44.3, 355.4 , 0 );
setEffMoveKey( spep_2-44-3 + 212, ctzuo, 62, 340.7 , 0 );
setEffMoveKey( spep_2-44-3 + 214, ctzuo, 44.4, 355.3 , 0 );
setEffMoveKey( spep_2-44-3 + 216, ctzuo, 62.1, 340.6 , 0 );
setEffMoveKey( spep_2-44-3 + 218, ctzuo, 44.5, 355.4 , 0 );
setEffMoveKey( spep_2-44-3 + 220, ctzuo, 62.3, 340.5 , 0 );
setEffMoveKey( spep_2-44-3 + 222, ctzuo, 44.6, 355.4 , 0 );
setEffMoveKey( spep_2-44-3 + 224, ctzuo, 62.5, 340.4 , 0 );
setEffMoveKey( spep_2-44-3 + 226, ctzuo, 44.7, 355.3 , 0 );
setEffMoveKey( spep_2-44-3 + 228, ctzuo, 62.7, 340.3 , 0 );
setEffMoveKey( spep_2-44-3 + 230, ctzuo, 44.8, 355.4 , 0 );
setEffMoveKey( spep_2-44-3 + 232, ctzuo, 62.8, 340.2 , 0 );
setEffMoveKey( spep_2-44-3 + 234, ctzuo, 45, 355.3 , 0 );
setEffMoveKey( spep_2-44-3 + 236, ctzuo, 63, 340.2 , 0 );
setEffMoveKey( spep_2-44-3 + 238, ctzuo, 45.2, 355.4 , 0 );
setEffMoveKey( spep_2-44-3 + 240, ctzuo, 63.2, 340.1 , 0 );
setEffMoveKey( spep_2-44-3 + 242, ctzuo, 45.2, 355.5 , 0 );
setEffMoveKey( spep_2-44-3 + 244, ctzuo, 63.3, 339.9 , 0 );
setEffMoveKey( spep_2-44-3 + 246, ctzuo, 45.3, 355.4 , 0 );
setEffMoveKey( spep_2-44-3 + 248, ctzuo, 63.4, 339.9 , 0 );
setEffMoveKey( spep_2-44-3 + 250, ctzuo, 45.4, 355.5 , 0 );
setEffMoveKey( spep_2-44-3 + 252, ctzuo, 63.6, 339.8 , 0 );
setEffMoveKey( spep_2-44-3 + 254, ctzuo, 45.5, 355.4 , 0 );
setEffMoveKey( spep_2-44-3 + 256, ctzuo, 63.8, 339.7 , 0 );

setEffScaleKey( spep_2-44-3 + 194, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_2-44-3 + 196, ctzuo, 1.13, 1.13 );
setEffScaleKey( spep_2-44-3 + 198, ctzuo, 1.94, 1.94 );
setEffScaleKey( spep_2-44-3 + 200, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2-44-3 + 204, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2-44-3 + 206, ctzuo, 2.76, 2.76 );
setEffScaleKey( spep_2-44-3 + 216, ctzuo, 2.76, 2.76 );
setEffScaleKey( spep_2-44-3 + 218, ctzuo, 2.8, 2.8 );
setEffScaleKey( spep_2-44-3 + 226, ctzuo, 2.8, 2.8 );
setEffScaleKey( spep_2-44-3 + 228, ctzuo, 2.83, 2.83 );
setEffScaleKey( spep_2-44-3 + 238, ctzuo, 2.83, 2.83 );
setEffScaleKey( spep_2-44-3 + 240, ctzuo, 2.87, 2.87 );
setEffScaleKey( spep_2-44-3 + 248, ctzuo, 2.87, 2.87 );
setEffScaleKey( spep_2-44-3 + 250, ctzuo, 2.9, 2.9 );
setEffScaleKey( spep_2-44-3 + 256, ctzuo, 2.9, 2.9 );

setEffRotateKey( spep_2-44-3 + 194, ctzuo, 45.7 );
setEffRotateKey( spep_2-44-3 + 196, ctzuo, 37.9 );
setEffRotateKey( spep_2-44-3 + 198, ctzuo, 29.9 );
setEffRotateKey( spep_2-44-3 + 200, ctzuo, 21.9 );
setEffRotateKey( spep_2-44-3 + 202, ctzuo, 22 );
setEffRotateKey( spep_2-44-3 + 206, ctzuo, 22 );
setEffRotateKey( spep_2-44-3 + 208, ctzuo, 22.1 );
setEffRotateKey( spep_2-44-3 + 212, ctzuo, 22.1 );
setEffRotateKey( spep_2-44-3 + 214, ctzuo, 22.2 );
setEffRotateKey( spep_2-44-3 + 218, ctzuo, 22.2 );
setEffRotateKey( spep_2-44-3 + 220, ctzuo, 22.3 );
setEffRotateKey( spep_2-44-3 + 224, ctzuo, 22.3 );
setEffRotateKey( spep_2-44-3 + 226, ctzuo, 22.4 );
setEffRotateKey( spep_2-44-3 + 230, ctzuo, 22.4 );
setEffRotateKey( spep_2-44-3 + 232, ctzuo, 22.5 );
setEffRotateKey( spep_2-44-3 + 236, ctzuo, 22.5 );
setEffRotateKey( spep_2-44-3 + 238, ctzuo, 22.6 );
setEffRotateKey( spep_2-44-3 + 240, ctzuo, 22.6 );
setEffRotateKey( spep_2-44-3 + 242, ctzuo, 22.7 );
setEffRotateKey( spep_2-44-3 + 246, ctzuo, 22.7 );
setEffRotateKey( spep_2-44-3 + 248, ctzuo, 22.8 );
setEffRotateKey( spep_2-44-3 + 252, ctzuo, 22.8 );
setEffRotateKey( spep_2-44-3 + 254, ctzuo, 22.9 );
setEffRotateKey( spep_2-44-3 + 256, ctzuo, 22.9 );

setEffAlphaKey( spep_2-44-3 + 194, ctzuo, 255 );
setEffAlphaKey( spep_2-44-3 + 256, ctzuo, 255 );

-- ** 音 ** --
-- ** 音 ** --
playSe( spep_2 + 0, 1072 );
se_1161 = playSe( spep_2 + 6, 1161 );
playSe( spep_2 + 7, 1037 );
playSe( spep_2 + 7, 1020 );
playSe( spep_2 + 34, 1004 );
playSe( spep_2 + 36, 1020 );
playSe( spep_2 + 66, 1020 );
se_1132 = playSe( spep_2 + 75, 1132 );
SEX=playSe( spep_2 + 83, 1037 );
playSe( spep_2 + 96, 1020 );


stopSe( spep_2 + 66, se_1161, 0 );


setSeVolume( spep_2 + 0, 1072, 79 );
setSeVolume( spep_2 + 6, 1161, 56 );
setSeVolume( spep_2 + 7, 1037, 40 );
setSeVolume( spep_2 + 7, 1020, 79 );
setSeVolume( spep_2 + 36, 1020, 89 );
setSeVolume( spep_2 + 75, 1132, 84 );
setSeVolume( spep_2 + 96, 1020, 112 );


-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 216, 0, 0, 0, 0, 229 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 120; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, se_1132, 0 );
stopSe( SP_dodge - 12, SEX, 0 );

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
--SE
playSe( spep_2 + 146, 1022 );

stopSe( spep_2 + 146, se_1132, 0 );
stopSe( spep_2 + 146, SEX, 0 );

-- ** 白フェード ** --
entryFade( spep_2 + 17, 0,  2, 4, fcolor_r, fcolor_g, fcolor_b, 230 );     -- white fade
entryFade( spep_2 + 76, 0,  2, 4, fcolor_r, fcolor_g, fcolor_b, 230 );     -- white fade
entryFade( spep_2 + 147, 0,  2, 4, fcolor_r, fcolor_g, fcolor_b, 230 );     -- white fade
entryFade( spep_2 + 208, 4,  6, 4, fcolor_r, fcolor_g, fcolor_b, 230 );     -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 216;

------------------------------------------------------
-- 迫る(60F)
------------------------------------------------------

-- ** エフェクト等 ** --
semaru_f = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 );  --迫る(ef_003)

setEffMoveKey( spep_3 + 0, semaru_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 60, semaru_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, semaru_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 60, semaru_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, semaru_f, 0 );
setEffRotateKey( spep_3 + 60, semaru_f, 0 );
setEffAlphaKey( spep_3 + 0, semaru_f, 255 );
setEffAlphaKey( spep_3 + 60, semaru_f, 255 );

semaru_b = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 );  --迫る(ef_003)

setEffMoveKey( spep_3 + 0, semaru_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 60, semaru_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, semaru_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 60, semaru_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, semaru_b, 0 );
setEffRotateKey( spep_3 + 60, semaru_b, 0 );
setEffAlphaKey( spep_3 + 0, semaru_b, 255 );
setEffAlphaKey( spep_3 + 60, semaru_b, 255 );

-- ** 敵の動き ** --
setDisp( spep_3  + 0, 1, 1 );
setDisp( spep_3 -3 + 58, 1, 0 );

changeAnime( spep_3  + 0, 1, 104 );

setMoveKey( spep_3  + 0, 1, -437.5, 152.8 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, -356.1, 131.1 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -274.7, 109.4 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -193.3, 87.7 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -111.9, 66 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -30.4, 44.2 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 51, 22.5 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 132.4, 0.8 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 135.8, -0.1 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 136.1, -7.4 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 142.8, -2 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 139.8, -6.1 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 149.7, -3.8 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 149.9, -11.1 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 156.6, -5.6 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 153.6, -9.8 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 163.5, -7.5 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 160.6, -14.8 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 170.4, -9.3 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 170.7, -13.5 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 177.3, -11.2 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 174.4, -15.3 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 184.2, -13 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 184.5, -17.1 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 191.2, -14.9 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 191.4, -22.2 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 198.1, -16.7 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 195.1, -20.8 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 205, -18.5 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 205.2, -25.9 , 0 );

setScaleKey( spep_3  + 0, 1, 2.57, 2.57 );
--setScaleKey( spep_3 -3 + 2, 1, 2.33, 2.33 );
setScaleKey( spep_3 -3 + 4, 1, 2.09, 2.09 );
setScaleKey( spep_3 -3 + 6, 1, 1.86, 1.86 );
setScaleKey( spep_3 -3 + 8, 1, 1.62, 1.62 );
setScaleKey( spep_3 -3 + 10, 1, 1.38, 1.38 );
setScaleKey( spep_3 -3 + 12, 1, 1.15, 1.15 );
setScaleKey( spep_3 -3 + 14, 1, 0.91, 0.91 );
setScaleKey( spep_3 -3 + 16, 1, 0.9, 0.9 );
setScaleKey( spep_3 -3 + 18, 1, 0.89, 0.89 );
setScaleKey( spep_3 -3 + 20, 1, 0.88, 0.88 );
setScaleKey( spep_3 -3 + 22, 1, 0.87, 0.87 );
setScaleKey( spep_3 -3 + 24, 1, 0.86, 0.86 );
setScaleKey( spep_3 -3 + 26, 1, 0.85, 0.85 );
setScaleKey( spep_3 -3 + 28, 1, 0.84, 0.84 );
setScaleKey( spep_3 -3 + 30, 1, 0.83, 0.83 );
setScaleKey( spep_3 -3 + 32, 1, 0.82, 0.82 );
setScaleKey( spep_3 -3 + 34, 1, 0.81, 0.81 );
setScaleKey( spep_3 -3 + 36, 1, 0.8, 0.8 );
setScaleKey( spep_3 -3 + 38, 1, 0.79, 0.79 );
setScaleKey( spep_3 -3 + 40, 1, 0.78, 0.78 );
setScaleKey( spep_3 -3 + 42, 1, 0.77, 0.77 );
setScaleKey( spep_3 -3 + 44, 1, 0.76, 0.76 );
setScaleKey( spep_3 -3 + 46, 1, 0.75, 0.75 );
setScaleKey( spep_3 -3 + 48, 1, 0.74, 0.74 );
setScaleKey( spep_3 -3 + 50, 1, 0.73, 0.73 );
setScaleKey( spep_3 -3 + 52, 1, 0.72, 0.72 );
setScaleKey( spep_3 -3 + 54, 1, 0.71, 0.71 );
setScaleKey( spep_3 -3 + 56, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 58, 1, 0.69, 0.69 );

setRotateKey( spep_3  + 0, 1, 0 );
setRotateKey( spep_3 -3 + 58, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 104, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_3 + 2, 1021 );
playSe( spep_3 + 56, 1023 );

-- ** 白フェード ** --
entryFade( spep_3 + 52, 4,  10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 60;


------------------------------------------------------
-- ギャン(60F)
------------------------------------------------------

-- ** エフェクト等 ** --
gyan = entryEffect( spep_4 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); --ギャン（色違うかも）
setEffMoveKey( spep_4 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_4 + 58, gyan, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_4 + 58, gyan, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, gyan, 0 );
setEffRotateKey( spep_4 + 58, gyan, 0 );
setEffAlphaKey( spep_4 + 0, gyan, 255 );
setEffAlphaKey( spep_4 + 58, gyan, 255 );

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep_4 + 0, 10006, 58, 0x100, -1, 0, 7.1, 316.8 );
setEffMoveKey( spep_4 + 0, ctgyan, 7.1, 316.8 , 0 );
setEffMoveKey( spep_4 -3 + 61, ctgyan, 7.1, 316.8 , 0 );

setEffScaleKey( spep_4 -3 + 3, ctgyan, 2, 2 );
setEffScaleKey( spep_4 -3 + 10, ctgyan, 3.8, 3.8 );
setEffScaleKey( spep_4 -3 + 61, ctgyan, 4.5, 4.5 );

setEffRotateKey( spep_4 + 0, ctgyan, 0 );
setEffRotateKey( spep_4 -3 + 61, ctgyan, 0 );

setEffAlphaKey( spep_4 + 0, ctgyan, 255 );
setEffAlphaKey( spep_4 -3 + 61, ctgyan, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, 1023 );  --ギャン

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 58, 0, 0, 0, 0, 225); --黒フェード

-- ** 白フェード ** --
entryFade( spep_4 + 20, 36, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 58;

------------------------------------------------------
-- 爆発(240F)
------------------------------------------------------

-- ** エフェクト等 ** --
kakuto = entryEffect( spep_5 + 0, SP_06x, 0x100, -1, 0, 0, 0 );  --爆発（仮）

setEffMoveKey( spep_5 + 0, kakuto, 0, 0 , 0 );
setEffMoveKey( spep_5 + 240, kakuto, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, kakuto, 1.0, 1.0 );
setEffScaleKey( spep_5 + 240, kakuto, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kakuto, 0 );
setEffRotateKey( spep_5 + 240, kakuto, 0 );
setEffAlphaKey( spep_5 + 0, kakuto, 255 );
setEffAlphaKey( spep_5 + 240, kakuto, 255 );

--SE
playSe( spep_5, 1024 );
playSe( spep_5 +2 , 1159 );
setSeVolume( spep_5 +2, 1159, 63 );

-- ** ダメージ表示 ** --
dealDamage( spep_5 +10 );
endPhase( spep_5 + 150  );
end