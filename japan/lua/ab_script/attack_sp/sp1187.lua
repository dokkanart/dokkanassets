--sp1187 西遊記 sp1120差し替え 如意棒
print ("[lua]sp1120");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1018; --カットイン＆飛んでくる
SE_02 = 1010; --突っ込みヒット＆棒ヒット
SE_03 = 1053; --飛んでいく
SE_04 = 1035; --カードカットイン
SE_05 = 1003; --シュッ
SE_06 = 1054; --割れる音
SE_07 = 1024; --爆破

SP_01 = 151913;  --前方突進 
SP_02 = 151914;  --タックル 
SP_03 = 151915;  --振り上げ 
SP_04 = 151916;  --振り下ろし 
SP_05 = 151917;  --棒に当たる 
SP_06 = 151918;  --タックル（敵） 

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

-- ** 敵味方非表示 ** --
changeAnime( 0, 0, 1); --味方立ちポーズ
changeAnime( 0, 1, 101);                       -- 立ち
setDisp( 0, 0, 1); --味方表示
setDisp( 0, 1, 0); --敵非表示

setMoveKey(   0,   0,    -2000,  0,  0);
setMoveKey(   1,   0,    -2000,  0,  0);
setMoveKey(   2,   0,    -2000,  0,  0);
setMoveKey(   3,   0,    -2000,  0,  0);
setMoveKey(   4,   0,    -2000,  0,  0);
setMoveKey(   5,   0,    -2000,  0,  0);
setMoveKey(   6,   0,    -2000,  0,  0);
setScaleKey(  0,  0,  1.5,  1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   6,   0, 1.5, 1.5);

-- 敵
setMoveKey(   0,   1,    -2000,  0,  0);
setMoveKey(   1,   1,    -2000,  0,  0);
setMoveKey(   2,   1,    -2000,  0,  0);
setMoveKey(   3,   1,    -2000,  0,  0);
setMoveKey(   4,   1,    -2000,  0,  0);
setMoveKey(   5,   1,    -2000,  0,  0);
setMoveKey(   6,   1,    -2000,  0,  0);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
setScaleKey(   6,   1, 1.5, 1.5);

------------------------------------------------------
-- 手前に突っ込む(60F)
------------------------------------------------------

setVisibleUI(0, 0);

-- ** 背景 ** --
entryFadeBg( 0, 0, 62, 0, 0, 0, 0, 110); -- ベース暗め　背景

-- ** エフェクト等 ** --
tukkomu = entryEffect( 0, SP_01, 0x100, -1, 0, 0, 0); --手前に突っ込む
setEffMoveKey( 0, tukkomu, 0, 0, 0);
setEffScaleKey( 0, tukkomu, 1.0, 1.0);
setEffAlphaKey( 0, tukkomu, 255);
setEffRotateKey( 0, tukkomu, 0);
setEffMoveKey( 60, tukkomu, 0, 0, 0);
setEffScaleKey( 60, tukkomu, 1.0, 1.0);
setEffAlphaKey( 60, tukkomu, 255);
setEffRotateKey( 60, tukkomu, 0);

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( 0, 906, 62, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( 0, shuchusen1, 0, 0, 0);
setEffScaleKey( 0, shuchusen1, 1.22, 1.22);
setEffAlphaKey( 0, shuchusen1, 255);
setEffRotateKey( 0, shuchusen1, 0);
setEffMoveKey( 62, shuchusen1, 0, 0, 0);
setEffScaleKey( 62, shuchusen1, 1.22, 1.22);
setEffAlphaKey( 62, shuchusen1, 255);
setEffRotateKey( 62, shuchusen1, 0);

-- 書き文字エントリー --
ctzuo = entryEffectLife( 0,  10012, 58, 0x100, -1, 0, 25.3, 57.7 );  --ズオッ

setEffShake( 0,  ctzuo,  58,  10);
setEffMoveKey( 0, ctzuo, 25.3, 57.7 , 0 );
setEffMoveKey( 2, ctzuo, 51.7, 151 , 0 );
setEffMoveKey( 4, ctzuo, 71.3, 251.7 , 0 );
setEffMoveKey( 6, ctzuo, 76.4, 246.4 , 0 );
setEffMoveKey( 46, ctzuo, 77.6, 253.4 , 0 );
setEffMoveKey( 48, ctzuo, 73.3, 266.3 , 0 );
setEffMoveKey( 50, ctzuo, 80.2, 267.5 , 0 );
setEffMoveKey( 52, ctzuo, 75.3, 281 , 0 );
setEffMoveKey( 54, ctzuo, 82.7, 281.6 , 0 );
setEffMoveKey( 58, ctzuo, 84.1, 288.6 , 0 );
setEffScaleKey( 0, ctzuo, 0.89, 0.89 );
setEffScaleKey( 2, ctzuo, 1.63, 1.63 );
setEffScaleKey( 4, ctzuo, 2.37, 2.37 );
setEffScaleKey( 44, ctzuo, 2.37, 2.37 );
setEffScaleKey( 46, ctzuo, 2.5, 2.5 );
setEffScaleKey( 48, ctzuo, 2.63, 2.63 );
setEffScaleKey( 50, ctzuo, 2.77, 2.77 );
setEffScaleKey( 52, ctzuo, 2.9, 2.9 );
setEffScaleKey( 54, ctzuo, 3.04, 3.04 );
setEffScaleKey( 56, ctzuo, 3.17, 3.17 );
setEffScaleKey( 58, ctzuo, 3.17, 3.17 );
setEffRotateKey( 0, ctzuo, 17.3 );
setEffRotateKey( 58, ctzuo, 17.3 );
setEffAlphaKey( 0, ctzuo, 255 );
setEffAlphaKey( 44, ctzuo, 255 );
setEffAlphaKey( 46, ctzuo, 212 );
setEffAlphaKey( 48, ctzuo, 170 );
setEffAlphaKey( 50, ctzuo, 128 );
setEffAlphaKey( 52, ctzuo, 85 );
setEffAlphaKey( 54, ctzuo, 43 );
setEffAlphaKey( 56, ctzuo, 0 );
setEffAlphaKey( 58, ctzuo, 0 );

-- ** 音 ** --
playSe( 1, SE_01);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

endPhase( SP_dodge+10);

do return end
else end

-- ** ホワイトフェード ** --
entryFade( 45, 10, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

------------------------------------------------------
-- 横移動→激突(63F開始) (72F)
------------------------------------------------------

spep_1 = 63;

--流線
ryusen1 = entryEffectLife( spep_1, 921, 72, 0x80, -1,  0,  0,  0); -- 流線1

setEffMoveKey( spep_1, ryusen1, 0, 0);
setEffRotateKey( spep_1, ryusen1, 155);
setEffScaleKey( spep_1, ryusen1, 1.67, 1.24);
setEffAlphaKey( spep_1, ryusen1, 255);
setEffMoveKey( spep_1+72, ryusen1, 0, 0);
setEffRotateKey( spep_1+72, ryusen1, 155);
setEffScaleKey( spep_1+72, ryusen1, 1.67, 1.24);
setEffAlphaKey( spep_1+72, ryusen1, 255);

--書き文字エントリー
ctga = entryEffectLife( spep_1+27,  10005, 22, 0x100, -1, 0, -7.6, 209.5 );  --ガッ
setEffMoveKey( spep_1+27, ctga, -7.6, 209.5 , 0 );
setEffMoveKey( spep_1+29, ctga, -1, 256.1 , 0 );
setEffMoveKey( spep_1+31, ctga, 5.7, 302.8 , 0 );
setEffMoveKey( spep_1+33, ctga, 12.4, 349.4 , 0 );
setEffMoveKey( spep_1+35, ctga, 12.4, 349.5 , 0 );
setEffMoveKey( spep_1+37, ctga, 12.4, 349.4 , 0 );
setEffMoveKey( spep_1+39, ctga, 12.4, 349.5 , 0 );
setEffMoveKey( spep_1+41, ctga, 12.4, 349.4 , 0 );
setEffMoveKey( spep_1+43, ctga, 12.4, 349.5 , 0 );
setEffMoveKey( spep_1+45, ctga, 12.4, 349.4 , 0 );
setEffMoveKey( spep_1+47, ctga, 12.4, 349.5 , 0 );
setEffMoveKey( spep_1+49, ctga, 12.4, 349.4 , 0 );
setEffScaleKey( spep_1+27, ctga, 0.7, 0.7 );
setEffScaleKey( spep_1+29, ctga, 1.34, 1.34 );
setEffScaleKey( spep_1+31, ctga, 1.75, 1.75 );
setEffScaleKey( spep_1+33, ctga, 2.51, 2.51 );
setEffScaleKey( spep_1+35, ctga, 2.28, 2.28 );
setEffScaleKey( spep_1+37, ctga, 2.51, 2.51 );
setEffScaleKey( spep_1+39, ctga, 2.28, 2.28 );
setEffScaleKey( spep_1+41, ctga, 2.51, 2.51 );
setEffScaleKey( spep_1+43, ctga, 2.28, 2.28 );
setEffScaleKey( spep_1+45, ctga, 2.51, 2.51 );
setEffScaleKey( spep_1+47, ctga, 2.28, 2.28 );
setEffScaleKey( spep_1+49, ctga, 2.51, 2.51 );
setEffRotateKey( spep_1+27, ctga, -13 );
setEffRotateKey( spep_1+49, ctga, -13 );
setEffAlphaKey( spep_1+27, ctga, 255 );
setEffAlphaKey( spep_1+49, ctga, 255 );

--エフェクト
tackle = entryEffect( spep_1, SP_02, 0x80, -1, 0, 0, 0); --タックル

setEffMoveKey( spep_1, tackle, 0, 0, 0);
setEffScaleKey( spep_1, tackle, 1.0, 1.0);
setEffAlphaKey( spep_1, tackle, 255);
setEffRotateKey( spep_1, tackle, 0);
setEffMoveKey( spep_1+72, tackle, 0, 0, 0);
setEffScaleKey( spep_1+72, tackle, 1.0, 1.0);
setEffAlphaKey( spep_1+72, tackle, 255);
setEffRotateKey( spep_1+72, tackle, 0);

--敵の動き 
setDisp( spep_1, 1, 1 );
changeAnime( spep_1, 1, 118);  --後ろ向き構え

setShakeChara(spep_1,  1,  49,  10);  --揺れ
setMoveKey( spep_1, 1, 636, 115.5 , 0 );
setMoveKey( spep_1+2, 1, 607.8, 107.4 , 0 );
setMoveKey( spep_1+4, 1, 566.7, 99.2 , 0 );
setMoveKey( spep_1+6, 1, 538.3, 91.1 , 0 );
setMoveKey( spep_1+8, 1, 497.4, 82.9 , 0 );
setMoveKey( spep_1+10, 1, 468.6, 74.8 , 0 );
setMoveKey( spep_1+12, 1, 428.1, 66.7 , 0 );
setMoveKey( spep_1+14, 1, 399.1, 58.5 , 0 );
setMoveKey( spep_1+16, 1, 358.8, 50.4 , 0 );
setMoveKey( spep_1+18, 1, 329.4, 42.2 , 0 );
setMoveKey( spep_1+20, 1, 289.6, 34.1 , 0 );
setMoveKey( spep_1+22, 1, 259.7, 25.9 , 0 );
setMoveKey( spep_1+24, 1, 220.2, 17.8 , 0 );
setMoveKey( spep_1+26, 1, 190.2, 9.6 , 0 );
setScaleKey( spep_1, 1, 2.9, 2.9 );
setScaleKey( spep_1+2, 1, 2.83, 2.83 );
setScaleKey( spep_1+4, 1, 2.76, 2.76 );
setScaleKey( spep_1+6, 1, 2.69, 2.69 );
setScaleKey( spep_1+8, 1, 2.62, 2.62 );
setScaleKey( spep_1+10, 1, 2.55, 2.55 );
setScaleKey( spep_1+12, 1, 2.48, 2.48 );
setScaleKey( spep_1+14, 1, 2.41, 2.41 );
setScaleKey( spep_1+16, 1, 2.34, 2.34 );
setScaleKey( spep_1+18, 1, 2.27, 2.27 );
setScaleKey( spep_1+20, 1, 2.2, 2.2 );
setScaleKey( spep_1+22, 1, 2.13, 2.13 );
setScaleKey( spep_1+24, 1, 2.06, 2.06 );
setScaleKey( spep_1+26, 1, 1.99, 1.99 );
setRotateKey( spep_1, 1, 0 );
setRotateKey( spep_1+26, 1, 0 );

changeAnime( spep_1+27, 1, 108)  --くの字

setMoveKey( spep_1+27, 1, 178.6, 31.8 , 0 );
setMoveKey( spep_1+29, 1, 243.9, 59.3 , 0 );
setMoveKey( spep_1+31, 1, 288.6, 77 , 0 );
setMoveKey( spep_1+33, 1, 354.4, 115.9 , 0 );
setMoveKey( spep_1+35, 1, 388.8, 141.7 , 0 );
setMoveKey( spep_1+37, 1, 455.1, 169.3 , 0 );
setMoveKey( spep_1+39, 1, 499, 186.2 , 0 );
setMoveKey( spep_1+41, 1, 565.9, 225.9 , 0 );
setMoveKey( spep_1+43, 1, 598.9, 251.7 , 0 );
setMoveKey( spep_1+45, 1, 666.2, 279.2 , 0 );
setMoveKey( spep_1+47, 1, 709.6, 295.4 , 0 );
setMoveKey( spep_1+49, 1, 777.6, 336.1 , 0 );
setMoveKey( spep_1+51, 1, 0, -2000 , 0 );
setMoveKey( spep_1+52, 1, 0, -2000 , 0 );
setMoveKey( spep_1+70, 1, 0, -2000 , 0 );
setScaleKey( spep_1+27, 1, 1.95, 1.95 );
setScaleKey( spep_1+29, 1, 1.99, 1.99 );
setScaleKey( spep_1+31, 1, 2.03, 2.03 );
setScaleKey( spep_1+33, 1, 2.07, 2.07 );
setScaleKey( spep_1+35, 1, 2.11, 2.11 );
setScaleKey( spep_1+37, 1, 2.15, 2.15 );
setScaleKey( spep_1+39, 1, 2.19, 2.19 );
setScaleKey( spep_1+41, 1, 2.23, 2.23 );
setScaleKey( spep_1+43, 1, 2.27, 2.27 );
setScaleKey( spep_1+45, 1, 2.31, 2.31 );
setScaleKey( spep_1+47, 1, 2.35, 2.35 );
setScaleKey( spep_1+49, 1, 2.39, 2.39 );
setScaleKey( spep_1+51, 1, 2.39, 2.39 );
setScaleKey( spep_1+70, 1, 2.39, 2.39 );
setRotateKey( spep_1+27, 1, 0 );
setRotateKey( spep_1+51, 1, 0 );
setRotateKey( spep_1+70, 1, 0 );

--背景
entryFadeBg( spep_1, 0, 72, 0, 0, 0, 0, 255);          -- 黒　背景

--SE
playSe(  spep_1+27,  SE_02);

entryFade( spep_1+67, 4, 3, 7, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

------------------------------------------------------
-- 敵が奥へ奥へ・・・・(165F開始)
------------------------------------------------------
spep_2 = spep_1+72;

-- ** キャラクター ** --
setDisp( spep_2, 1, 1 );
changeAnime( spep_2, 1, 5 );

setMoveKey( spep_2, 1, 8, -112.1 , 0 );
setMoveKey( spep_2+2, 1, 8, -76.2 , 0 );
setMoveKey( spep_2+4, 1, 8, -40.3 , 0 );
setMoveKey( spep_2+6, 1, 8, -4.4 , 0 );
setMoveKey( spep_2+8, 1, 7.9, 31.6 , 0 );
setMoveKey( spep_2+10, 1, 7.9, 67.5 , 0 );
setMoveKey( spep_2+12, 1, 7.9, 103.4 , 0 );
setMoveKey( spep_2+14, 1, 7.9, 114.5 , 0 );
setMoveKey( spep_2+16, 1, 7.9, 125.6 , 0 );
setMoveKey( spep_2+18, 1, 7.9, 136.7 , 0 );
setMoveKey( spep_2+20, 1, 7.9, 147.8 , 0 );
setMoveKey( spep_2+22, 1, 8, 159 , 0 );
setMoveKey( spep_2+24, 1, 8, 170.1 , 0 );
setMoveKey( spep_2+26, 1, 8, 181.2 , 0 );
setMoveKey( spep_2+28, 1, 8, 192.3 , 0 );
setMoveKey( spep_2+30, 1, 8, 203.4 , 0 );
setMoveKey( spep_2+32, 1, 8, 214.6 , 0 );
setMoveKey( spep_2+34, 1, 8, 225.7 , 0 );
setMoveKey( spep_2+36, 1, 7.9, 236.8 , 0 );
setMoveKey( spep_2+38, 1, 7.9, 248 , 0 );
setScaleKey( spep_2, 1, 5.84, 5.84 );
setScaleKey( spep_2+2, 1, 5.21, 5.21 );
setScaleKey( spep_2+4, 1, 4.57, 4.57 );
setScaleKey( spep_2+6, 1, 3.94, 3.94 );
setScaleKey( spep_2+8, 1, 3.3, 3.3 );
setScaleKey( spep_2+10, 1, 2.67, 2.67 );
setScaleKey( spep_2+12, 1, 2.03, 2.03 );
setScaleKey( spep_2+14, 1, 1.91, 1.91 );
setScaleKey( spep_2+16, 1, 1.78, 1.78 );
setScaleKey( spep_2+18, 1, 1.66, 1.66 );
setScaleKey( spep_2+20, 1, 1.53, 1.53 );
setScaleKey( spep_2+22, 1, 1.41, 1.41 );
setScaleKey( spep_2+24, 1, 1.28, 1.28 );
setScaleKey( spep_2+26, 1, 1.16, 1.16 );
setScaleKey( spep_2+28, 1, 1.03, 1.03 );
setScaleKey( spep_2+30, 1, 0.91, 0.91 );
setScaleKey( spep_2+32, 1, 0.78, 0.78 );
setScaleKey( spep_2+34, 1, 0.66, 0.66 );
setScaleKey( spep_2+36, 1, 0.53, 0.53 );
setScaleKey( spep_2+38, 1, 0.41, 0.41 );
setRotateKey( spep_2, 1, 0 );
setRotateKey( spep_2+38, 1, 0 );

setDisp( spep_2+40, 1, 0); --敵非表示

-- ** 背景 ** --
entryFadeBg( spep_2, 0, 35, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2, 906, 35, 0x100, -1, 0, 0, 0);   -- 集中線2
setEffMoveKey( spep_2, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen2, 2.37, 1.76);
setEffAlphaKey( spep_2, shuchusen2, 255);
setEffRotateKey( spep_2, shuchusen2, 0);
setEffMoveKey( spep_2+35, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_2+35, shuchusen2, 2.37, 1.76);
setEffAlphaKey( spep_2+35, shuchusen2, 255);
setEffRotateKey( spep_2+35, shuchusen2, 0);

-- ** 奥行き流線斜め ** --
okuyukiryusennaname = entryEffectLife( spep_2-1, 921, 36, 0x80, -1, 0, 0, 0); -- 奥行き流線斜め
setEffMoveKey( spep_2-1, okuyukiryusennaname, 0, 0, 0);
setEffRotateKey( spep_2-1, okuyukiryusennaname, -90);
setEffScaleKey( spep_2-1, okuyukiryusennaname, 1.5, 1);
setEffAlphaKey( spep_2-1, okuyukiryusennaname, 255);
setEffMoveKey( spep_2+35, okuyukiryusennaname, 0, 0, 0);
setEffRotateKey( spep_2+35, okuyukiryusennaname, -90);
setEffScaleKey( spep_2+35, okuyukiryusennaname, 1.5, 1);
setEffAlphaKey( spep_2+35, okuyukiryusennaname, 255);

-- ** ホワイトフェード ** --
entryFade( spep_2+27, 8, 5, 6, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_2, 1027);

spep_3 = spep_2+40;

------------------------------------------------------
-- 如意棒伸びる(205F開始)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 107, 0, 0, 0, 0, 110); -- ベース暗め　背景

-- ** エフェクト等 ** --
nobiru = entryEffect( spep_3, SP_03, 0x80, -1, 0, 0, 0); --如意棒伸びる
setEffMoveKey( spep_3, nobiru, 0, 0, 0);
setEffScaleKey( spep_3, nobiru, 1.0, 1.0);
setEffAlphaKey( spep_3, nobiru, 255);
setEffRotateKey( spep_3, nobiru, 0);
setEffMoveKey( spep_3+110, nobiru, 0, 0, 0);
setEffScaleKey( spep_3+110, nobiru, 1.0, 1.0);
setEffAlphaKey( spep_3+110, nobiru, 255);
setEffRotateKey( spep_3+110, nobiru, 0);
setEffShake( spep_3+16, nobiru, 94, 15);

-- ** 顔＆セリフカットイン ** --
speff = entryEffect( spep_3+6, 1504, 0, -1, 0, 0, 0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                     -- カットイン差し替え
speff = entryEffect( spep_3+6, 1505, 0, -1, 0, 0, 0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                     -- セリフ差し替え

-- ** 書き文字エントリ ** --
ctgogo = entryEffectLife( spep_3+19, 190006, 71, 0x100, -1, 0, 100, 520); -- ゴゴゴゴゴ
setEffMoveKey(  spep_3+19,  ctgogo,  100,  520);
setEffScaleKey( spep_3+19, ctgogo, 0.6, 0.6);
setEffAlphaKey( spep_3+19, ctgogo, 255);
setEffRotateKey( spep_3+19, ctgogo, 0);


-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3, 906, 110, 0x100,  -1, 0,  0,  0);   -- 集中線3
setEffMoveKey( spep_3, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3, 1.5, 1.5);
setEffAlphaKey( spep_3, shuchusen3, 255);
setEffRotateKey( spep_3, shuchusen3, 0);
setEffMoveKey( spep_3+110, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3+110, shuchusen3, 1.5, 1.5);
setEffAlphaKey( spep_3+110, shuchusen3, 255);
setEffRotateKey( spep_3+110, shuchusen3, 0);



-- ** ホワイトフェード ** --
entryFade( spep_3+98, 8, 5, 6, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_3+19, SE_01);

spep_4 = spep_3+111;

------------------------------------------------------
-- カードカットイン(316F開始)
------------------------------------------------------

speff = entryEffect( spep_4, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4, 906, 91, 0x100,  -1, 0,  0,  0);   -- 集中線4
setEffMoveKey( spep_4, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_4, shuchusen4, 1.0, 1.0);
setEffAlphaKey( spep_4, shuchusen4, 255);
setEffRotateKey( spep_4, shuchusen4, 0);

-- ** ホワイトフェード ** --
entryFade( spep_4+83, 5, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_4, SE_04);

spep_5 = spep_4+93;

------------------------------------------------------
-- 如意棒でドーン(409F開始)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_5, 0, 80, 0, 0, 0, 0, 110); -- ベース暗め　背景

-- ** エフェクト等 ** --
doon = entryEffect( spep_5, SP_04, 0x100, -1, 0, 0, 0); --如意棒でドーン
setEffMoveKey( spep_5, doon, 0, 0, 0);
setEffScaleKey( spep_5, doon, 1.0, 1.0);
setEffAlphaKey( spep_5, doon, 255);
setEffRotateKey( spep_5, doon, 0);
setEffMoveKey( spep_5+80, doon, 0, 0, 0);
setEffScaleKey( spep_5+80, doon, 1.0, 1.0);
setEffAlphaKey( spep_5+80, doon, 255);
setEffRotateKey( spep_5+80, doon, 0);

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_5, 906, 80, 0x100,  -1, 0,  0,  0);   -- 集中線5
setEffMoveKey( spep_5, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_5, shuchusen5, 1.5, 1.5);
setEffAlphaKey( spep_5, shuchusen5, 255);
setEffRotateKey( spep_5, shuchusen5, 0);
setEffMoveKey( spep_5+80, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_5+80, shuchusen5, 1.5, 1.5);
setEffAlphaKey( spep_5+80, shuchusen5, 255);
setEffRotateKey( spep_5+80, shuchusen5, 0);

-- ** ホワイトフェード ** --
entryFade( spep_5+26, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
entryFade( spep_5+71, 5, 5, 0, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_5+21, SE_05);

spep_6 = spep_5+81;

------------------------------------------------------
-- 如意棒が敵にヒット(490F開始)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_6, 0, 60, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** キャラクター ** --
setDisp( spep_6, 1, 1 );
changeAnime( spep_6, 1, 105 );

setMoveKey( spep_6, 1, 28, 81.6 , 0 );
setMoveKey( spep_6+2, 1, 48.9, 63.6 , 0 );
setMoveKey( spep_6+4, 1, 48.7, 91 , 0 );
setMoveKey( spep_6+6, 1, 32.8, 70.3 , 0 );
setMoveKey( spep_6+8, 1, 30.1, 92.2 , 0 );
setMoveKey( spep_6+10, 1, 47.1, 78.5 , 0 );
setMoveKey( spep_6+12, 1, 46.4, 99.8 , 0 );
setMoveKey( spep_6+14, 1, 35.5, 86.5 , 0 );
setMoveKey( spep_6+16, 1, 34, 101.6 , 0 );
setMoveKey( spep_6+18, 1, 45.1, 91.9 , 0 );
setMoveKey( spep_6+20, 1, 45, 106.4 , 0 );
setMoveKey( spep_6+22, 1, 36.4, 94.9 , 0 );
setMoveKey( spep_6+24, 1, 34.4, 107 , 0 );
setMoveKey( spep_6+26, 1, 44.8, 98 , 0 );
setMoveKey( spep_6+28, 1, 44.7, 111.8 , 0 );
setMoveKey( spep_6+30, 1, 36.5, 100.9 , 0 );
setMoveKey( spep_6+32, 1, 34.6, 112.5 , 0 );
setMoveKey( spep_6+34, 1, 44.6, 103.9 , 0 );
setMoveKey( spep_6+36, 1, 44.6, 117.1 , 0 );
setMoveKey( spep_6+38, 1, 36.8, 106.9 , 0 );
setMoveKey( spep_6+40, 1, 35, 117.9 , 0 );
setMoveKey( spep_6+42, 1, 44.3, 109.8 , 0 );
setMoveKey( spep_6+44, 1, 44.3, 122.4 , 0 );
setMoveKey( spep_6+46, 1, 36.9, 112.9 , 0 );
setMoveKey( spep_6+48, 1, 35.3, 123.4 , 0 );
setMoveKey( spep_6+50, 1, 44.2, 115.8 , 0 );
setMoveKey( spep_6+52, 1, 44.1, 127.8 , 0 );
setMoveKey( spep_6+54, 1, 37.2, 118.8 , 0 );
setMoveKey( spep_6+56, 1, 35.6, 128.8 , 0 );
setMoveKey( spep_6+58, 1, 43.9, 121.8 , 0 );
setScaleKey( spep_6, 1, 2.3, 2.3 );
setScaleKey( spep_6+2, 1, 2.23, 2.23 );
setScaleKey( spep_6+4, 1, 2.17, 2.17 );
setScaleKey( spep_6+6, 1, 2.1, 2.1 );
setScaleKey( spep_6+8, 1, 1.92, 1.92 );
setScaleKey( spep_6+10, 1, 1.74, 1.74 );
setScaleKey( spep_6+12, 1, 1.56, 1.56 );
setScaleKey( spep_6+14, 1, 1.38, 1.38 );
setScaleKey( spep_6+16, 1, 1.2, 1.2 );
setScaleKey( spep_6+18, 1, 1.19, 1.19 );
setScaleKey( spep_6+20, 1, 1.17, 1.17 );
setScaleKey( spep_6+22, 1, 1.16, 1.16 );
setScaleKey( spep_6+24, 1, 1.14, 1.14 );
setScaleKey( spep_6+26, 1, 1.13, 1.13 );
setScaleKey( spep_6+28, 1, 1.11, 1.11 );
setScaleKey( spep_6+30, 1, 1.1, 1.1 );
setScaleKey( spep_6+32, 1, 1.09, 1.09 );
setScaleKey( spep_6+34, 1, 1.07, 1.07 );
setScaleKey( spep_6+36, 1, 1.06, 1.06 );
setScaleKey( spep_6+38, 1, 1.04, 1.04 );
setScaleKey( spep_6+40, 1, 1.03, 1.03 );
setScaleKey( spep_6+42, 1, 1.01, 1.01 );
setScaleKey( spep_6+44, 1, 1, 1 );
setScaleKey( spep_6+46, 1, 0.99, 0.99 );
setScaleKey( spep_6+48, 1, 0.97, 0.97 );
setScaleKey( spep_6+50, 1, 0.96, 0.96 );
setScaleKey( spep_6+52, 1, 0.94, 0.94 );
setScaleKey( spep_6+54, 1, 0.93, 0.93 );
setScaleKey( spep_6+56, 1, 0.91, 0.91 );
setScaleKey( spep_6+58, 1, 0.9, 0.9 );
setRotateKey( spep_6, 1, 0 );
setRotateKey( spep_6+58, 1, 0 );

setDisp( spep_6+61, 1, 0); --敵非表示

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_6, 906, 60, 0x100, -1, 0, 0, 0);   -- 集中線6
setEffMoveKey( spep_6, shuchusen6, 0, 0, 0);
setEffScaleKey( spep_6, shuchusen6, 1.6, 1.6);
setEffAlphaKey( spep_6, shuchusen6, 255);
setEffRotateKey( spep_6, shuchusen6, 0);
setEffMoveKey( spep_6+60, shuchusen6, 0, 0, 0);
setEffScaleKey( spep_6+60, shuchusen6, 1.6, 1.6);
setEffAlphaKey( spep_6+60, shuchusen6, 255);
setEffRotateKey( spep_6+60, shuchusen6, 0);

-- ** 奥行き流線斜め ** --
okuyukiryusennaname2 = entryEffectLife( spep_6, 921, 60, 0x80, -1, 0, 0, 0); -- 奥行き流線斜め2
setEffMoveKey( spep_6, okuyukiryusennaname2, 0, 0, 0);
setEffRotateKey( spep_6, okuyukiryusennaname2, -90);
setEffScaleKey( spep_6, okuyukiryusennaname2, 1.5, 1);
setEffAlphaKey( spep_6, okuyukiryusennaname2, 255);
setEffMoveKey( spep_6+60, okuyukiryusennaname2, 0, 0, 0);
setEffRotateKey( spep_6+60, okuyukiryusennaname2, -90);
setEffScaleKey( spep_6+60, okuyukiryusennaname2, 1.5, 1);
setEffAlphaKey( spep_6+60, okuyukiryusennaname2, 255);

-- ** エフェクト等 ** --
hit = entryEffect( spep_6+2, SP_05, 0x100, -1, 0, 0, 0); --如意棒でドーン
setEffMoveKey( spep_6+2, hit, 0, 0, 0);
setEffScaleKey( spep_6+2, hit, 1.0, 1.0);
setEffAlphaKey( spep_6+2, hit, 255);
setEffRotateKey( spep_6+2, hit, 0);
setEffMoveKey( spep_6+62, hit, 0, 0, 0);
setEffScaleKey( spep_6+62, hit, 1.0, 1.0);
setEffAlphaKey( spep_6+62, hit, 255);
setEffRotateKey( spep_6+62, hit, 0);

-- ** 書き文字エントリ ** --
ctbaki = entryEffectLife( spep_6+6,  10020, 30, 0x100, -1, 0, -12, 354.8 );  --バキ
setEffMoveKey( spep_6+6, ctbaki, -12, 354.8 , 0 );
setEffMoveKey( spep_6+8, ctbaki, -11.7, 354.8 , 0 );
setEffMoveKey( spep_6+10, ctbaki, -11.4, 355.4 , 0 );
setEffMoveKey( spep_6+12, ctbaki, -11.6, 355 , 0 );
setEffMoveKey( spep_6+14, ctbaki, -11.4, 354.9 , 0 );
setEffMoveKey( spep_6+16, ctbaki, -11.5, 355 , 0 );
setEffMoveKey( spep_6+18, ctbaki, -11.5, 355 , 0 );
setEffMoveKey( spep_6+20, ctbaki, -11.4, 354.9 , 0 );
setEffMoveKey( spep_6+22, ctbaki, -11.4, 354.9 , 0 );
setEffMoveKey( spep_6+24, ctbaki, -11.5, 354.9 , 0 );
setEffMoveKey( spep_6+26, ctbaki, -11.4, 354.9 , 0 );
setEffMoveKey( spep_6+28, ctbaki, -11.4, 354.9 , 0 );
setEffMoveKey( spep_6+30, ctbaki, -11.5, 354.9 , 0 );
setEffMoveKey( spep_6+32, ctbaki, -11.4, 354.9 , 0 );
setEffScaleKey( spep_6+6, ctbaki, 1.82, 1.82 );
setEffScaleKey( spep_6+8, ctbaki, 2.05, 2.05 );
setEffScaleKey( spep_6+9, ctbaki, 2.35, 2.35 );
setEffScaleKey( spep_6+10, ctbaki, 3.52, 3.52 );
setEffScaleKey( spep_6+12, ctbaki, 2.48, 2.48 );
setEffScaleKey( spep_6+14, ctbaki, 2.48, 2.48 );
setEffScaleKey( spep_6+16, ctbaki, 2.36, 2.36 );
setEffScaleKey( spep_6+24, ctbaki, 2.36, 2.36 );
setEffScaleKey( spep_6+26, ctbaki, 2.35, 2.35 );
setEffScaleKey( spep_6+28, ctbaki, 2.33, 2.33 );
setEffScaleKey( spep_6+30, ctbaki, 2.32, 2.32 );
setEffScaleKey( spep_6+32, ctbaki, 2.31, 2.31 );
setEffScaleKey( spep_6+34, ctbaki, 2.3, 2.3 );
setEffScaleKey( spep_6+36, ctbaki, 2.29, 2.29 );
setEffRotateKey( spep_6+6, ctbaki, -22.5 );
setEffRotateKey( spep_6+8, ctbaki, -4.7 );
setEffRotateKey( spep_6+10, ctbaki, 10.3 );
setEffRotateKey( spep_6+12, ctbaki, 5 );
setEffRotateKey( spep_6+14, ctbaki, 15.2 );
setEffRotateKey( spep_6+16, ctbaki, 7.6 );
setEffRotateKey( spep_6+18, ctbaki, 8.9 );
setEffRotateKey( spep_6+20, ctbaki, 10.3 );
setEffRotateKey( spep_6+22, ctbaki, 11.6 );
setEffRotateKey( spep_6+24, ctbaki, 13 );
setEffRotateKey( spep_6+26, ctbaki, 13.4 );
setEffRotateKey( spep_6+28, ctbaki, 13.8 );
setEffRotateKey( spep_6+30, ctbaki, 14.2 );
setEffRotateKey( spep_6+32, ctbaki, 14.7 );
setEffRotateKey( spep_6+34, ctbaki, 15.1 );
setEffRotateKey( spep_6+36, ctbaki, 15.5 );
setEffAlphaKey( spep_6+6, ctbaki, 255 );
setEffAlphaKey( spep_6+10, ctbaki, 255 );
setEffAlphaKey( spep_6+12, ctbaki, 244 );
setEffAlphaKey( spep_6+14, ctbaki, 233 );
setEffAlphaKey( spep_6+16, ctbaki, 221 );
setEffAlphaKey( spep_6+18, ctbaki, 210 );
setEffAlphaKey( spep_6+20, ctbaki, 199 );
setEffAlphaKey( spep_6+22, ctbaki, 188 );
setEffAlphaKey( spep_6+24, ctbaki, 176 );
setEffAlphaKey( spep_6+26, ctbaki, 147 );
setEffAlphaKey( spep_6+28, ctbaki, 118 );
setEffAlphaKey( spep_6+30, ctbaki, 88 );
setEffAlphaKey( spep_6+32, ctbaki, 59 );
setEffAlphaKey( spep_6+34, ctbaki, 29 );
setEffAlphaKey( spep_6+36, ctbaki, 0 );

-- ** ホワイトフェード ** --
entryFade( spep_6+5, 0, 3, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
entryFade( spep_6+53, 5, 5, 6, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_6+11, SE_02);

spep_7 = spep_6+63;

------------------------------------------------------
-- バリン(553F開始)
------------------------------------------------------


-- ** 敵キャラの動き ** --
setDisp( spep_7-1, 1, 1);
--setDisp( spep_6, 1, 1);
--setDisp( spep_6, 0, 0); --味方非表示
--setMoveKey( spep_8-1, 0, 0, 0, 0); --味方位置
--setMoveKey(  spep_8, 0, 2000, 2000, 0);
setMoveKey(  spep_7-1, 1, 350, -300, 0);
setScaleKey( spep_7-1, 1, 0.5, 0.5);
setRotateKey( spep_7-1, 1, 60);
setMoveKey(  spep_7, 1, 0, 0, 128);
setScaleKey( spep_7, 1, 0.1, 0.1);
changeAnime( spep_7, 1, 107);                         -- 手前ダメージ
entryEffect( spep_7+8, 1509, 0x80, -1, 0, 0, 0);   -- 爆発
playSe( spep_7+8, SE_07);

setMoveKey( spep_7+8, 1, 0, 0, 128); --478
setMoveKey( spep_7+15, 1, -60, -200, -100);

setRotateKey( spep_7, 1, 30 );
setRotateKey( spep_7+2, 1, 80 );
setRotateKey( spep_7+4, 1, 120 );
setRotateKey( spep_7+6, 1, 160 );
setRotateKey( spep_7+8, 1, 200 );
setRotateKey( spep_7+10, 1, 260 );
setRotateKey( spep_7+12, 1, 320 );
setRotateKey( spep_7+14, 1, 0 );

setShakeChara( spep_7+15, 1, 5,  10);
setShakeChara( spep_7+20, 1, 10, 20);

-- 書き文字エントリー
ctga2 = entryEffectLife( spep_7+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_7+15, ctga2, 30, 10);
setEffRotateKey( spep_7+15, ctga2, -40);
setEffRotateKey( spep_7+115, ctga2, -40);
setEffScaleKey( spep_7+15, ctga2, 4.0, 4.0);
setEffScaleKey( spep_7+16, ctga2, 2.0, 2.0);
setEffScaleKey( spep_7+17, ctga2, 2.6, 2.6);
setEffScaleKey( spep_7+18, ctga2, 4.0, 4.0);
setEffScaleKey( spep_7+19, ctga2, 2.6, 2.6);
setEffScaleKey( spep_7+20, ctga2, 3.8, 3.8);
setEffScaleKey( spep_7+115, ctga2, 3.8, 3.8);
setEffAlphaKey( spep_7+15, ctga2, 255);
setEffAlphaKey( spep_7+105, ctga2, 255);
setEffAlphaKey( spep_7+115, ctga2, 0);

playSe( spep_7+3, SE_06);
shuchusen = entryEffectLife( spep_7+15, 906, 108, 0x00, -1, 0, 0, 0);   -- 集中線
entryEffect( spep_7+3, 1600, 0x00, -1, 0, 30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_7+15, 1657, 108, 0x80,  -1, 0,  0,  0);   -- 集中線黒

-- ダメージ表示
dealDamage( spep_7+16);
entryFade( spep_7+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_7+110);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 手前に突っ込む(60F)
------------------------------------------------------

setVisibleUI(0, 0);

-- ** 背景 ** --
entryFadeBg( 0, 0, 62, 0, 0, 0, 0, 110); -- ベース暗め　背景

-- ** エフェクト等 ** --
tukkomu = entryEffect( 0, SP_01, 0x100, -1, 0, 0, 0); --手前に突っ込む
setEffMoveKey( 0, tukkomu, 0, 0, 0);
setEffScaleKey( 0, tukkomu, -1.0, 1.0);
setEffAlphaKey( 0, tukkomu, 255);
setEffRotateKey( 0, tukkomu, 0);
setEffMoveKey( 60, tukkomu, 0, 0, 0);
setEffScaleKey( 60, tukkomu, -1.0, 1.0);
setEffAlphaKey( 60, tukkomu, 255);
setEffRotateKey( 60, tukkomu, 0);

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( 0, 906, 62, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( 0, shuchusen1, 0, 0, 0);
setEffScaleKey( 0, shuchusen1, 1.22, 1.22);
setEffAlphaKey( 0, shuchusen1, 255);
setEffRotateKey( 0, shuchusen1, 0);
setEffMoveKey( 62, shuchusen1, 0, 0, 0);
setEffScaleKey( 62, shuchusen1, 1.22, 1.22);
setEffAlphaKey( 62, shuchusen1, 255);
setEffRotateKey( 62, shuchusen1, 0);

-- 書き文字エントリー --
ctzuo = entryEffectLife( 0,  10012, 58, 0x100, -1, 0, 25.3, 57.7 );  --ズオッ

setEffShake( 0,  ctzuo,  58,  10);
setEffMoveKey( 0, ctzuo, 25.3, 57.7 , 0 );
setEffMoveKey( 2, ctzuo, 51.7, 151 , 0 );
setEffMoveKey( 4, ctzuo, 71.3, 251.7 , 0 );
setEffMoveKey( 6, ctzuo, 76.4, 246.4 , 0 );
setEffMoveKey( 46, ctzuo, 77.6, 253.4 , 0 );
setEffMoveKey( 48, ctzuo, 73.3, 266.3 , 0 );
setEffMoveKey( 50, ctzuo, 80.2, 267.5 , 0 );
setEffMoveKey( 52, ctzuo, 75.3, 281 , 0 );
setEffMoveKey( 54, ctzuo, 82.7, 281.6 , 0 );
setEffMoveKey( 58, ctzuo, 84.1, 288.6 , 0 );
setEffScaleKey( 0, ctzuo, 0.89, 0.89 );
setEffScaleKey( 2, ctzuo, 1.63, 1.63 );
setEffScaleKey( 4, ctzuo, 2.37, 2.37 );
setEffScaleKey( 44, ctzuo, 2.37, 2.37 );
setEffScaleKey( 46, ctzuo, 2.5, 2.5 );
setEffScaleKey( 48, ctzuo, 2.63, 2.63 );
setEffScaleKey( 50, ctzuo, 2.77, 2.77 );
setEffScaleKey( 52, ctzuo, 2.9, 2.9 );
setEffScaleKey( 54, ctzuo, 3.04, 3.04 );
setEffScaleKey( 56, ctzuo, 3.17, 3.17 );
setEffScaleKey( 58, ctzuo, 3.17, 3.17 );
setEffRotateKey( 0, ctzuo, 17.3 );
setEffRotateKey( 58, ctzuo, 17.3 );
setEffAlphaKey( 0, ctzuo, 255 );
setEffAlphaKey( 44, ctzuo, 255 );
setEffAlphaKey( 46, ctzuo, 212 );
setEffAlphaKey( 48, ctzuo, 170 );
setEffAlphaKey( 50, ctzuo, 128 );
setEffAlphaKey( 52, ctzuo, 85 );
setEffAlphaKey( 54, ctzuo, 43 );
setEffAlphaKey( 56, ctzuo, 0 );
setEffAlphaKey( 58, ctzuo, 0 );

-- ** 音 ** --
playSe( 1, SE_01);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

endPhase( SP_dodge+10);

do return end
else end

-- ** ホワイトフェード ** --
entryFade( 45, 10, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

------------------------------------------------------
-- 横移動→激突(63F開始) (72F)
------------------------------------------------------

spep_1 = 63;

--流線
ryusen1 = entryEffectLife( spep_1, 921, 72, 0x80, -1,  0,  0,  0); -- 流線1

setEffMoveKey( spep_1, ryusen1, 0, 0);
setEffRotateKey( spep_1, ryusen1, 155);
setEffScaleKey( spep_1, ryusen1, 1.67, 1.24);
setEffAlphaKey( spep_1, ryusen1, 255);
setEffMoveKey( spep_1+72, ryusen1, 0, 0);
setEffRotateKey( spep_1+72, ryusen1, 155);
setEffScaleKey( spep_1+72, ryusen1, 1.67, 1.24);
setEffAlphaKey( spep_1+72, ryusen1, 255);

--書き文字エントリー
ctga = entryEffectLife( spep_1+27,  10005, 22, 0x100, -1, 0, -7.6, 209.5 );  --ガッ
setEffMoveKey( spep_1+27, ctga, -7.6, 209.5 , 0 );
setEffMoveKey( spep_1+29, ctga, -1, 256.1 , 0 );
setEffMoveKey( spep_1+31, ctga, 5.7, 302.8 , 0 );
setEffMoveKey( spep_1+33, ctga, 12.4, 349.4 , 0 );
setEffMoveKey( spep_1+35, ctga, 12.4, 349.5 , 0 );
setEffMoveKey( spep_1+37, ctga, 12.4, 349.4 , 0 );
setEffMoveKey( spep_1+39, ctga, 12.4, 349.5 , 0 );
setEffMoveKey( spep_1+41, ctga, 12.4, 349.4 , 0 );
setEffMoveKey( spep_1+43, ctga, 12.4, 349.5 , 0 );
setEffMoveKey( spep_1+45, ctga, 12.4, 349.4 , 0 );
setEffMoveKey( spep_1+47, ctga, 12.4, 349.5 , 0 );
setEffMoveKey( spep_1+49, ctga, 12.4, 349.4 , 0 );
setEffScaleKey( spep_1+27, ctga, 0.7, 0.7 );
setEffScaleKey( spep_1+29, ctga, 1.34, 1.34 );
setEffScaleKey( spep_1+31, ctga, 1.75, 1.75 );
setEffScaleKey( spep_1+33, ctga, 2.51, 2.51 );
setEffScaleKey( spep_1+35, ctga, 2.28, 2.28 );
setEffScaleKey( spep_1+37, ctga, 2.51, 2.51 );
setEffScaleKey( spep_1+39, ctga, 2.28, 2.28 );
setEffScaleKey( spep_1+41, ctga, 2.51, 2.51 );
setEffScaleKey( spep_1+43, ctga, 2.28, 2.28 );
setEffScaleKey( spep_1+45, ctga, 2.51, 2.51 );
setEffScaleKey( spep_1+47, ctga, 2.28, 2.28 );
setEffScaleKey( spep_1+49, ctga, 2.51, 2.51 );
setEffRotateKey( spep_1+27, ctga, -13 );
setEffRotateKey( spep_1+49, ctga, -13 );
setEffAlphaKey( spep_1+27, ctga, 255 );
setEffAlphaKey( spep_1+49, ctga, 255 );

--エフェクト
tackle = entryEffect( spep_1, SP_06, 0x80, -1, 0, 0, 0); --タックル

setEffMoveKey( spep_1, tackle, 0, 0, 0);
setEffScaleKey( spep_1, tackle, 1.0, 1.0);
setEffAlphaKey( spep_1, tackle, 255);
setEffRotateKey( spep_1, tackle, 0);
setEffMoveKey( spep_1+72, tackle, 0, 0, 0);
setEffScaleKey( spep_1+72, tackle, 1.0, 1.0);
setEffAlphaKey( spep_1+72, tackle, 255);
setEffRotateKey( spep_1+72, tackle, 0);

--敵の動き 
setDisp( spep_1, 1, 1 );
changeAnime( spep_1, 1, 118);  --後ろ向き構え

setShakeChara(spep_1,  1,  49,  10);  --揺れ
setMoveKey( spep_1, 1, 636, 115.5 , 0 );
setMoveKey( spep_1+2, 1, 607.8, 107.4 , 0 );
setMoveKey( spep_1+4, 1, 566.7, 99.2 , 0 );
setMoveKey( spep_1+6, 1, 538.3, 91.1 , 0 );
setMoveKey( spep_1+8, 1, 497.4, 82.9 , 0 );
setMoveKey( spep_1+10, 1, 468.6, 74.8 , 0 );
setMoveKey( spep_1+12, 1, 428.1, 66.7 , 0 );
setMoveKey( spep_1+14, 1, 399.1, 58.5 , 0 );
setMoveKey( spep_1+16, 1, 358.8, 50.4 , 0 );
setMoveKey( spep_1+18, 1, 329.4, 42.2 , 0 );
setMoveKey( spep_1+20, 1, 289.6, 34.1 , 0 );
setMoveKey( spep_1+22, 1, 259.7, 25.9 , 0 );
setMoveKey( spep_1+24, 1, 220.2, 17.8 , 0 );
setMoveKey( spep_1+26, 1, 190.2, 9.6 , 0 );
setScaleKey( spep_1, 1, 2.9, 2.9 );
setScaleKey( spep_1+2, 1, 2.83, 2.83 );
setScaleKey( spep_1+4, 1, 2.76, 2.76 );
setScaleKey( spep_1+6, 1, 2.69, 2.69 );
setScaleKey( spep_1+8, 1, 2.62, 2.62 );
setScaleKey( spep_1+10, 1, 2.55, 2.55 );
setScaleKey( spep_1+12, 1, 2.48, 2.48 );
setScaleKey( spep_1+14, 1, 2.41, 2.41 );
setScaleKey( spep_1+16, 1, 2.34, 2.34 );
setScaleKey( spep_1+18, 1, 2.27, 2.27 );
setScaleKey( spep_1+20, 1, 2.2, 2.2 );
setScaleKey( spep_1+22, 1, 2.13, 2.13 );
setScaleKey( spep_1+24, 1, 2.06, 2.06 );
setScaleKey( spep_1+26, 1, 1.99, 1.99 );
setRotateKey( spep_1, 1, 0 );
setRotateKey( spep_1+26, 1, 0 );

changeAnime( spep_1+27, 1, 108)  --くの字

setMoveKey( spep_1+27, 1, 178.6, 31.8 , 0 );
setMoveKey( spep_1+29, 1, 243.9, 59.3 , 0 );
setMoveKey( spep_1+31, 1, 288.6, 77 , 0 );
setMoveKey( spep_1+33, 1, 354.4, 115.9 , 0 );
setMoveKey( spep_1+35, 1, 388.8, 141.7 , 0 );
setMoveKey( spep_1+37, 1, 455.1, 169.3 , 0 );
setMoveKey( spep_1+39, 1, 499, 186.2 , 0 );
setMoveKey( spep_1+41, 1, 565.9, 225.9 , 0 );
setMoveKey( spep_1+43, 1, 598.9, 251.7 , 0 );
setMoveKey( spep_1+45, 1, 666.2, 279.2 , 0 );
setMoveKey( spep_1+47, 1, 709.6, 295.4 , 0 );
setMoveKey( spep_1+49, 1, 777.6, 336.1 , 0 );
setMoveKey( spep_1+51, 1, 0, -2000 , 0 );
setMoveKey( spep_1+52, 1, 0, -2000 , 0 );
setMoveKey( spep_1+70, 1, 0, -2000 , 0 );
setScaleKey( spep_1+27, 1, 1.95, 1.95 );
setScaleKey( spep_1+29, 1, 1.99, 1.99 );
setScaleKey( spep_1+31, 1, 2.03, 2.03 );
setScaleKey( spep_1+33, 1, 2.07, 2.07 );
setScaleKey( spep_1+35, 1, 2.11, 2.11 );
setScaleKey( spep_1+37, 1, 2.15, 2.15 );
setScaleKey( spep_1+39, 1, 2.19, 2.19 );
setScaleKey( spep_1+41, 1, 2.23, 2.23 );
setScaleKey( spep_1+43, 1, 2.27, 2.27 );
setScaleKey( spep_1+45, 1, 2.31, 2.31 );
setScaleKey( spep_1+47, 1, 2.35, 2.35 );
setScaleKey( spep_1+49, 1, 2.39, 2.39 );
setScaleKey( spep_1+51, 1, 2.39, 2.39 );
setScaleKey( spep_1+70, 1, 2.39, 2.39 );
setRotateKey( spep_1+27, 1, 0 );
setRotateKey( spep_1+51, 1, 0 );
setRotateKey( spep_1+70, 1, 0 );

--背景
entryFadeBg( spep_1, 0, 72, 0, 0, 0, 0, 255);          -- 黒　背景

--SE
playSe(  spep_1+27,  SE_02);

entryFade( spep_1+67, 4, 3, 7, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

------------------------------------------------------
-- 敵が奥へ奥へ・・・・(165F開始)
------------------------------------------------------
spep_2 = spep_1+72;

-- ** キャラクター ** --
setDisp( spep_2, 1, 1 );
changeAnime( spep_2, 1, 5 );

setMoveKey( spep_2, 1, 8, -112.1 , 0 );
setMoveKey( spep_2+2, 1, 8, -76.2 , 0 );
setMoveKey( spep_2+4, 1, 8, -40.3 , 0 );
setMoveKey( spep_2+6, 1, 8, -4.4 , 0 );
setMoveKey( spep_2+8, 1, 7.9, 31.6 , 0 );
setMoveKey( spep_2+10, 1, 7.9, 67.5 , 0 );
setMoveKey( spep_2+12, 1, 7.9, 103.4 , 0 );
setMoveKey( spep_2+14, 1, 7.9, 114.5 , 0 );
setMoveKey( spep_2+16, 1, 7.9, 125.6 , 0 );
setMoveKey( spep_2+18, 1, 7.9, 136.7 , 0 );
setMoveKey( spep_2+20, 1, 7.9, 147.8 , 0 );
setMoveKey( spep_2+22, 1, 8, 159 , 0 );
setMoveKey( spep_2+24, 1, 8, 170.1 , 0 );
setMoveKey( spep_2+26, 1, 8, 181.2 , 0 );
setMoveKey( spep_2+28, 1, 8, 192.3 , 0 );
setMoveKey( spep_2+30, 1, 8, 203.4 , 0 );
setMoveKey( spep_2+32, 1, 8, 214.6 , 0 );
setMoveKey( spep_2+34, 1, 8, 225.7 , 0 );
setMoveKey( spep_2+36, 1, 7.9, 236.8 , 0 );
setMoveKey( spep_2+38, 1, 7.9, 248 , 0 );
setScaleKey( spep_2, 1, 5.84, 5.84 );
setScaleKey( spep_2+2, 1, 5.21, 5.21 );
setScaleKey( spep_2+4, 1, 4.57, 4.57 );
setScaleKey( spep_2+6, 1, 3.94, 3.94 );
setScaleKey( spep_2+8, 1, 3.3, 3.3 );
setScaleKey( spep_2+10, 1, 2.67, 2.67 );
setScaleKey( spep_2+12, 1, 2.03, 2.03 );
setScaleKey( spep_2+14, 1, 1.91, 1.91 );
setScaleKey( spep_2+16, 1, 1.78, 1.78 );
setScaleKey( spep_2+18, 1, 1.66, 1.66 );
setScaleKey( spep_2+20, 1, 1.53, 1.53 );
setScaleKey( spep_2+22, 1, 1.41, 1.41 );
setScaleKey( spep_2+24, 1, 1.28, 1.28 );
setScaleKey( spep_2+26, 1, 1.16, 1.16 );
setScaleKey( spep_2+28, 1, 1.03, 1.03 );
setScaleKey( spep_2+30, 1, 0.91, 0.91 );
setScaleKey( spep_2+32, 1, 0.78, 0.78 );
setScaleKey( spep_2+34, 1, 0.66, 0.66 );
setScaleKey( spep_2+36, 1, 0.53, 0.53 );
setScaleKey( spep_2+38, 1, 0.41, 0.41 );
setRotateKey( spep_2, 1, 0 );
setRotateKey( spep_2+38, 1, 0 );

setDisp( spep_2+40, 1, 0); --敵非表示

-- ** 背景 ** --
entryFadeBg( spep_2, 0, 35, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2, 906, 35, 0x100, -1, 0, 0, 0);   -- 集中線2
setEffMoveKey( spep_2, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen2, 2.37, 1.76);
setEffAlphaKey( spep_2, shuchusen2, 255);
setEffRotateKey( spep_2, shuchusen2, 0);
setEffMoveKey( spep_2+35, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_2+35, shuchusen2, 2.37, 1.76);
setEffAlphaKey( spep_2+35, shuchusen2, 255);
setEffRotateKey( spep_2+35, shuchusen2, 0);

-- ** 奥行き流線斜め ** --
okuyukiryusennaname = entryEffectLife( spep_2-1, 921, 36, 0x80, -1, 0, 0, 0); -- 奥行き流線斜め
setEffMoveKey( spep_2-1, okuyukiryusennaname, 0, 0, 0);
setEffRotateKey( spep_2-1, okuyukiryusennaname, -90);
setEffScaleKey( spep_2-1, okuyukiryusennaname, 1.5, 1);
setEffAlphaKey( spep_2-1, okuyukiryusennaname, 255);
setEffMoveKey( spep_2+35, okuyukiryusennaname, 0, 0, 0);
setEffRotateKey( spep_2+35, okuyukiryusennaname, -90);
setEffScaleKey( spep_2+35, okuyukiryusennaname, 1.5, 1);
setEffAlphaKey( spep_2+35, okuyukiryusennaname, 255);

-- ** ホワイトフェード ** --
entryFade( spep_2+27, 8, 5, 6, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_2, 1027);

spep_3 = spep_2+40;

------------------------------------------------------
-- 如意棒伸びる(205F開始)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 107, 0, 0, 0, 0, 110); -- ベース暗め　背景

-- ** エフェクト等 ** --
nobiru = entryEffect( spep_3, SP_03, 0x80, -1, 0, 0, 0); --如意棒伸びる
setEffMoveKey( spep_3, nobiru, 0, 0, 0);
setEffScaleKey( spep_3, nobiru, -1.0, 1.0);
setEffAlphaKey( spep_3, nobiru, 255);
setEffRotateKey( spep_3, nobiru, 0);
setEffMoveKey( spep_3+110, nobiru, 0, 0, 0);
setEffScaleKey( spep_3+110, nobiru, -1.0, 1.0);
setEffAlphaKey( spep_3+110, nobiru, 255);
setEffRotateKey( spep_3+110, nobiru, 0);
setEffShake( spep_3+16, nobiru, 94, 15);

-- ** 顔＆セリフカットイン ** --
--speff = entryEffect( spep_3+6, 1504, 0, -1, 0, 0, 0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                     -- カットイン差し替え
--speff = entryEffect( spep_3+6, 1505, 0, -1, 0, 0, 0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                     -- セリフ差し替え

-- ** 書き文字エントリ ** --
ctgogo = entryEffectLife( spep_3+19, 190006, 71, 0x100, -1, 0, 100, 520); -- ゴゴゴゴゴ
setEffMoveKey(  spep_3+19,  ctgogo,  100,  520);
setEffScaleKey( spep_3+19, ctgogo, -0.6, 0.6);
setEffAlphaKey( spep_3+19, ctgogo, 255);
setEffRotateKey( spep_3+19, ctgogo, 0);

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3, 906, 110, 0x100,  -1, 0,  0,  0);   -- 集中線3
setEffMoveKey( spep_3, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3, 1.5, 1.5);
setEffAlphaKey( spep_3, shuchusen3, 255);
setEffRotateKey( spep_3, shuchusen3, 0);
setEffMoveKey( spep_3+110, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3+110, shuchusen3, 1.5, 1.5);
setEffAlphaKey( spep_3+110, shuchusen3, 255);
setEffRotateKey( spep_3+110, shuchusen3, 0);

-- ** ホワイトフェード ** --
entryFade( spep_3+98, 8, 5, 6, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_3+19, SE_01);

spep_4 = spep_3+111;

------------------------------------------------------
-- カードカットイン(316F開始)
------------------------------------------------------

speff = entryEffect( spep_4, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4, 906, 91, 0x100,  -1, 0,  0,  0);   -- 集中線4
setEffMoveKey( spep_4, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_4, shuchusen4, 1.0, 1.0);
setEffAlphaKey( spep_4, shuchusen4, 255);
setEffRotateKey( spep_4, shuchusen4, 0);

-- ** ホワイトフェード ** --
entryFade( spep_4+83, 5, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_4, SE_04);

spep_5 = spep_4+93;
------------------------------------------------------
-- 如意棒でドーン(409F開始)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_5, 0, 80, 0, 0, 0, 0, 110); -- ベース暗め　背景

-- ** エフェクト等 ** --
doon = entryEffect( spep_5, SP_04, 0x100, -1, 0, 0, 0); --如意棒でドーン
setEffMoveKey( spep_5, doon, 0, 0, 0);
setEffScaleKey( spep_5, doon, -1.0, 1.0);
setEffAlphaKey( spep_5, doon, 255);
setEffRotateKey( spep_5, doon, 0);
setEffMoveKey( spep_5+80, doon, 0, 0, 0);
setEffScaleKey( spep_5+80, doon, -1.0, 1.0);
setEffAlphaKey( spep_5+80, doon, 255);
setEffRotateKey( spep_5+80, doon, 0);

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_5, 906, 80, 0x100,  -1, 0,  0,  0);   -- 集中線5
setEffMoveKey( spep_5, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_5, shuchusen5, 1.5, 1.5);
setEffAlphaKey( spep_5, shuchusen5, 255);
setEffRotateKey( spep_5, shuchusen5, 0);
setEffMoveKey( spep_5+80, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_5+80, shuchusen5, 1.5, 1.5);
setEffAlphaKey( spep_5+80, shuchusen5, 255);
setEffRotateKey( spep_5+80, shuchusen5, 0);

-- ** ホワイトフェード ** --
entryFade( spep_5+26, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
entryFade( spep_5+71, 5, 5, 0, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_5+21, SE_05);

spep_6 = spep_5+81;

------------------------------------------------------
-- 如意棒が敵にヒット(490F開始)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_6, 0, 60, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** キャラクター ** --
setDisp( spep_6, 1, 1 );
changeAnime( spep_6, 1, 105 );

setMoveKey( spep_6, 1, 28, 81.6 , 0 );
setMoveKey( spep_6+2, 1, 48.9, 63.6 , 0 );
setMoveKey( spep_6+4, 1, 48.7, 91 , 0 );
setMoveKey( spep_6+6, 1, 32.8, 70.3 , 0 );
setMoveKey( spep_6+8, 1, 30.1, 92.2 , 0 );
setMoveKey( spep_6+10, 1, 47.1, 78.5 , 0 );
setMoveKey( spep_6+12, 1, 46.4, 99.8 , 0 );
setMoveKey( spep_6+14, 1, 35.5, 86.5 , 0 );
setMoveKey( spep_6+16, 1, 34, 101.6 , 0 );
setMoveKey( spep_6+18, 1, 45.1, 91.9 , 0 );
setMoveKey( spep_6+20, 1, 45, 106.4 , 0 );
setMoveKey( spep_6+22, 1, 36.4, 94.9 , 0 );
setMoveKey( spep_6+24, 1, 34.4, 107 , 0 );
setMoveKey( spep_6+26, 1, 44.8, 98 , 0 );
setMoveKey( spep_6+28, 1, 44.7, 111.8 , 0 );
setMoveKey( spep_6+30, 1, 36.5, 100.9 , 0 );
setMoveKey( spep_6+32, 1, 34.6, 112.5 , 0 );
setMoveKey( spep_6+34, 1, 44.6, 103.9 , 0 );
setMoveKey( spep_6+36, 1, 44.6, 117.1 , 0 );
setMoveKey( spep_6+38, 1, 36.8, 106.9 , 0 );
setMoveKey( spep_6+40, 1, 35, 117.9 , 0 );
setMoveKey( spep_6+42, 1, 44.3, 109.8 , 0 );
setMoveKey( spep_6+44, 1, 44.3, 122.4 , 0 );
setMoveKey( spep_6+46, 1, 36.9, 112.9 , 0 );
setMoveKey( spep_6+48, 1, 35.3, 123.4 , 0 );
setMoveKey( spep_6+50, 1, 44.2, 115.8 , 0 );
setMoveKey( spep_6+52, 1, 44.1, 127.8 , 0 );
setMoveKey( spep_6+54, 1, 37.2, 118.8 , 0 );
setMoveKey( spep_6+56, 1, 35.6, 128.8 , 0 );
setMoveKey( spep_6+58, 1, 43.9, 121.8 , 0 );
setScaleKey( spep_6, 1, 2.3, 2.3 );
setScaleKey( spep_6+2, 1, 2.23, 2.23 );
setScaleKey( spep_6+4, 1, 2.17, 2.17 );
setScaleKey( spep_6+6, 1, 2.1, 2.1 );
setScaleKey( spep_6+8, 1, 1.92, 1.92 );
setScaleKey( spep_6+10, 1, 1.74, 1.74 );
setScaleKey( spep_6+12, 1, 1.56, 1.56 );
setScaleKey( spep_6+14, 1, 1.38, 1.38 );
setScaleKey( spep_6+16, 1, 1.2, 1.2 );
setScaleKey( spep_6+18, 1, 1.19, 1.19 );
setScaleKey( spep_6+20, 1, 1.17, 1.17 );
setScaleKey( spep_6+22, 1, 1.16, 1.16 );
setScaleKey( spep_6+24, 1, 1.14, 1.14 );
setScaleKey( spep_6+26, 1, 1.13, 1.13 );
setScaleKey( spep_6+28, 1, 1.11, 1.11 );
setScaleKey( spep_6+30, 1, 1.1, 1.1 );
setScaleKey( spep_6+32, 1, 1.09, 1.09 );
setScaleKey( spep_6+34, 1, 1.07, 1.07 );
setScaleKey( spep_6+36, 1, 1.06, 1.06 );
setScaleKey( spep_6+38, 1, 1.04, 1.04 );
setScaleKey( spep_6+40, 1, 1.03, 1.03 );
setScaleKey( spep_6+42, 1, 1.01, 1.01 );
setScaleKey( spep_6+44, 1, 1, 1 );
setScaleKey( spep_6+46, 1, 0.99, 0.99 );
setScaleKey( spep_6+48, 1, 0.97, 0.97 );
setScaleKey( spep_6+50, 1, 0.96, 0.96 );
setScaleKey( spep_6+52, 1, 0.94, 0.94 );
setScaleKey( spep_6+54, 1, 0.93, 0.93 );
setScaleKey( spep_6+56, 1, 0.91, 0.91 );
setScaleKey( spep_6+58, 1, 0.9, 0.9 );
setRotateKey( spep_6, 1, 0 );
setRotateKey( spep_6+58, 1, 0 );

setDisp( spep_6+61, 1, 0); --敵非表示

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_6, 906, 60, 0x100, -1, 0, 0, 0);   -- 集中線6
setEffMoveKey( spep_6, shuchusen6, 0, 0, 0);
setEffScaleKey( spep_6, shuchusen6, 1.6, 1.6);
setEffAlphaKey( spep_6, shuchusen6, 255);
setEffRotateKey( spep_6, shuchusen6, 0);
setEffMoveKey( spep_6+60, shuchusen6, 0, 0, 0);
setEffScaleKey( spep_6+60, shuchusen6, 1.6, 1.6);
setEffAlphaKey( spep_6+60, shuchusen6, 255);
setEffRotateKey( spep_6+60, shuchusen6, 0);

-- ** 奥行き流線斜め ** --
okuyukiryusennaname2 = entryEffectLife( spep_6, 921, 60, 0x80, -1, 0, 0, 0); -- 奥行き流線斜め2
setEffMoveKey( spep_6, okuyukiryusennaname2, 0, 0, 0);
setEffRotateKey( spep_6, okuyukiryusennaname2, -90);
setEffScaleKey( spep_6, okuyukiryusennaname2, 1.5, 1);
setEffAlphaKey( spep_6, okuyukiryusennaname2, 255);
setEffMoveKey( spep_6+60, okuyukiryusennaname2, 0, 0, 0);
setEffRotateKey( spep_6+60, okuyukiryusennaname2, -90);
setEffScaleKey( spep_6+60, okuyukiryusennaname2, 1.5, 1);
setEffAlphaKey( spep_6+60, okuyukiryusennaname2, 255);

-- ** エフェクト等 ** --
hit = entryEffect( spep_6+2, SP_05, 0x100, -1, 0, 0, 0); --如意棒でドーン
setEffMoveKey( spep_6+2, hit, 0, 0, 0);
setEffScaleKey( spep_6+2, hit, -1.0, 1.0);
setEffAlphaKey( spep_6+2, hit, 255);
setEffRotateKey( spep_6+2, hit, 0);
setEffMoveKey( spep_6+62, hit, 0, 0, 0);
setEffScaleKey( spep_6+62, hit, -1.0, 1.0);
setEffAlphaKey( spep_6+62, hit, 255);
setEffRotateKey( spep_6+62, hit, 0);

-- ** 書き文字エントリ ** --
ctbaki = entryEffectLife( spep_6+6,  10020, 30, 0x100, -1, 0, -12, 354.8 );  --バキ
setEffMoveKey( spep_6+6, ctbaki, -12, 354.8 , 0 );
setEffMoveKey( spep_6+8, ctbaki, -11.7, 354.8 , 0 );
setEffMoveKey( spep_6+10, ctbaki, -11.4, 355.4 , 0 );
setEffMoveKey( spep_6+12, ctbaki, -11.6, 355 , 0 );
setEffMoveKey( spep_6+14, ctbaki, -11.4, 354.9 , 0 );
setEffMoveKey( spep_6+16, ctbaki, -11.5, 355 , 0 );
setEffMoveKey( spep_6+18, ctbaki, -11.5, 355 , 0 );
setEffMoveKey( spep_6+20, ctbaki, -11.4, 354.9 , 0 );
setEffMoveKey( spep_6+22, ctbaki, -11.4, 354.9 , 0 );
setEffMoveKey( spep_6+24, ctbaki, -11.5, 354.9 , 0 );
setEffMoveKey( spep_6+26, ctbaki, -11.4, 354.9 , 0 );
setEffMoveKey( spep_6+28, ctbaki, -11.4, 354.9 , 0 );
setEffMoveKey( spep_6+30, ctbaki, -11.5, 354.9 , 0 );
setEffMoveKey( spep_6+32, ctbaki, -11.4, 354.9 , 0 );
setEffScaleKey( spep_6+6, ctbaki, 1.82, 1.82 );
setEffScaleKey( spep_6+8, ctbaki, 2.05, 2.05 );
setEffScaleKey( spep_6+9, ctbaki, 2.35, 2.35 );
setEffScaleKey( spep_6+10, ctbaki, 3.52, 3.52 );
setEffScaleKey( spep_6+12, ctbaki, 2.48, 2.48 );
setEffScaleKey( spep_6+14, ctbaki, 2.48, 2.48 );
setEffScaleKey( spep_6+16, ctbaki, 2.36, 2.36 );
setEffScaleKey( spep_6+24, ctbaki, 2.36, 2.36 );
setEffScaleKey( spep_6+26, ctbaki, 2.35, 2.35 );
setEffScaleKey( spep_6+28, ctbaki, 2.33, 2.33 );
setEffScaleKey( spep_6+30, ctbaki, 2.32, 2.32 );
setEffScaleKey( spep_6+32, ctbaki, 2.31, 2.31 );
setEffScaleKey( spep_6+34, ctbaki, 2.3, 2.3 );
setEffScaleKey( spep_6+36, ctbaki, 2.29, 2.29 );
setEffRotateKey( spep_6+6, ctbaki, -22.5 );
setEffRotateKey( spep_6+8, ctbaki, -4.7 );
setEffRotateKey( spep_6+10, ctbaki, 10.3 );
setEffRotateKey( spep_6+12, ctbaki, 5 );
setEffRotateKey( spep_6+14, ctbaki, 15.2 );
setEffRotateKey( spep_6+16, ctbaki, 7.6 );
setEffRotateKey( spep_6+18, ctbaki, 8.9 );
setEffRotateKey( spep_6+20, ctbaki, 10.3 );
setEffRotateKey( spep_6+22, ctbaki, 11.6 );
setEffRotateKey( spep_6+24, ctbaki, 13 );
setEffRotateKey( spep_6+26, ctbaki, 13.4 );
setEffRotateKey( spep_6+28, ctbaki, 13.8 );
setEffRotateKey( spep_6+30, ctbaki, 14.2 );
setEffRotateKey( spep_6+32, ctbaki, 14.7 );
setEffRotateKey( spep_6+34, ctbaki, 15.1 );
setEffRotateKey( spep_6+36, ctbaki, 15.5 );
setEffAlphaKey( spep_6+6, ctbaki, 255 );
setEffAlphaKey( spep_6+10, ctbaki, 255 );
setEffAlphaKey( spep_6+12, ctbaki, 244 );
setEffAlphaKey( spep_6+14, ctbaki, 233 );
setEffAlphaKey( spep_6+16, ctbaki, 221 );
setEffAlphaKey( spep_6+18, ctbaki, 210 );
setEffAlphaKey( spep_6+20, ctbaki, 199 );
setEffAlphaKey( spep_6+22, ctbaki, 188 );
setEffAlphaKey( spep_6+24, ctbaki, 176 );
setEffAlphaKey( spep_6+26, ctbaki, 147 );
setEffAlphaKey( spep_6+28, ctbaki, 118 );
setEffAlphaKey( spep_6+30, ctbaki, 88 );
setEffAlphaKey( spep_6+32, ctbaki, 59 );
setEffAlphaKey( spep_6+34, ctbaki, 29 );
setEffAlphaKey( spep_6+36, ctbaki, 0 );

-- ** ホワイトフェード ** --
entryFade( spep_6+5, 0, 3, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
entryFade( spep_6+53, 5, 5, 6, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_6+11, SE_02);

spep_7 = spep_6+63;

------------------------------------------------------
-- バリン(553F開始)
------------------------------------------------------


-- ** 敵キャラの動き ** --
setDisp( spep_7-1, 1, 1);
--setDisp( spep_6, 1, 1);
--setDisp( spep_6, 0, 0); --味方非表示
--setMoveKey( spep_8-1, 0, 0, 0, 0); --味方位置
--setMoveKey(  spep_8, 0, 2000, 2000, 0);
setMoveKey(  spep_7-1, 1, 350, -300, 0);
setScaleKey( spep_7-1, 1, 0.5, 0.5);
setRotateKey( spep_7-1, 1, 60);
setMoveKey(  spep_7, 1, 0, 0, 128);
setScaleKey( spep_7, 1, 0.1, 0.1);
changeAnime( spep_7, 1, 107);                         -- 手前ダメージ
entryEffect( spep_7+8, 1509, 0x80, -1, 0, 0, 0);   -- 爆発
playSe( spep_7+8, SE_07);

setMoveKey( spep_7+8, 1, 0, 0, 128); --478
setMoveKey( spep_7+15, 1, -60, -200, -100);

setRotateKey( spep_7, 1, 30 );
setRotateKey( spep_7+2, 1, 80 );
setRotateKey( spep_7+4, 1, 120 );
setRotateKey( spep_7+6, 1, 160 );
setRotateKey( spep_7+8, 1, 200 );
setRotateKey( spep_7+10, 1, 260 );
setRotateKey( spep_7+12, 1, 320 );
setRotateKey( spep_7+14, 1, 0 );

setShakeChara( spep_7+15, 1, 5,  10);
setShakeChara( spep_7+20, 1, 10, 20);

-- 書き文字エントリー
ctga2 = entryEffectLife( spep_7+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_7+15, ctga2, 30, 10);
setEffRotateKey( spep_7+15, ctga2, -40);
setEffRotateKey( spep_7+115, ctga2, -40);
setEffScaleKey( spep_7+15, ctga2, 4.0, 4.0);
setEffScaleKey( spep_7+16, ctga2, 2.0, 2.0);
setEffScaleKey( spep_7+17, ctga2, 2.6, 2.6);
setEffScaleKey( spep_7+18, ctga2, 4.0, 4.0);
setEffScaleKey( spep_7+19, ctga2, 2.6, 2.6);
setEffScaleKey( spep_7+20, ctga2, 3.8, 3.8);
setEffScaleKey( spep_7+115, ctga2, 3.8, 3.8);
setEffAlphaKey( spep_7+15, ctga2, 255);
setEffAlphaKey( spep_7+105, ctga2, 255);
setEffAlphaKey( spep_7+115, ctga2, 0);

playSe( spep_7+3, SE_06);
shuchusen = entryEffectLife( spep_7+15, 906, 108, 0x00, -1, 0, 0, 0);   -- 集中線
entryEffect( spep_7+3, 1600, 0x00, -1, 0, 30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_7+15, 1657, 108, 0x80,  -1, 0,  0,  0);   -- 集中線黒

-- ダメージ表示
dealDamage( spep_7+16);
entryFade( spep_7+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_7+110);

end