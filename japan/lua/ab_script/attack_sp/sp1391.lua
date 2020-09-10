--グレートサイヤマン_ジャスティスラッシュ

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
SP_01 = 154601; --決めポーズ
SP_02 = 154602; --突進
SP_03 = 154603; --格闘
SP_04 = 154605; --格闘時　背景
SP_05 = 154606; --背景

--敵側
SP_03x = 154604; --格闘

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
-- 決めポーズ(396F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
pose = entryEffectLife( spep_0 + 0, SP_01, 396, 0x80, -1, 0, 0, 0 );  --決めポーズ(ef_001)
setEffMoveKey( spep_0 + 0, pose, 0, 0 , 0 );
setEffMoveKey( spep_0 + 396, pose, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, pose, 1.0, 1.0 );
setEffScaleKey( spep_0 + 396, pose, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, pose, 0 );
setEffRotateKey( spep_0 + 396, pose, 0 );
setEffAlphaKey( spep_0 + 0, pose, 255 );
setEffAlphaKey( spep_0 + 396, pose, 255 );

spep_x = spep_0 + 318 -4;
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
entryFadeBg( spep_0 + 0, 0, 398, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0,  2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
entryFade( spep_0 + 388, 8,  2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
--ポーズ１
playSe( spep_0 + 24, 1151 );
setSeVolume( spep_0 + 24, 1151, 0 );
setSeVolume( spep_0 + 27, 1151, 80 );
setSeVolume( spep_0 + 28, 1151, 110 );

playSe( spep_0 + 25, 1189 );
SE0 = playSe( spep_0 + 27, 1048 );
setSeVolume( spep_0 + 27, 1048, 70 );
setSeVolume( spep_0 + 37, 1048, 60 );
setSeVolume( spep_0 + 40, 1048, 30 );
setSeVolume( spep_0 + 48, 1048, 0 );
stopSe( spep_0 + 48, SE0, 0 );

--ポーズ２
playSe( spep_0 + 50, 1006 );
setSeVolume( spep_0 + 50, 1006, 90 );

--片足立ち
playSe( spep_0 + 97, 1108 );
setSeVolume( spep_0 + 97, 1108, 190 );

playSe( spep_0 + 98, 1106 );
setSeVolume( spep_0 + 98, 1106, 190 );

--足バタバタ
playSe( spep_0 + 149, 1106 );
setSeVolume( spep_0 + 149, 1106, 168 );

playSe( spep_0 + 149, 1108 );
setSeVolume( spep_0 + 149, 1108, 168 );

playSe( spep_0 + 154, 1106 );
setSeVolume( spep_0 + 154, 1106, 136 );

playSe( spep_0 + 159, 1106 );
setSeVolume( spep_0 + 159, 1106, 150 );

playSe( spep_0 + 159, 1108 );
setSeVolume( spep_0 + 159, 1108, 120 );

playSe( spep_0 + 164, 1106 );
setSeVolume( spep_0 + 164, 1106, 168 );

playSe( spep_0 + 169, 1106 );
setSeVolume( spep_0 + 169, 1106, 136 );

playSe( spep_0 + 173, 1106 );
setSeVolume( spep_0 + 173, 1106, 150 );

playSe( spep_0 + 173, 1108 );
setSeVolume( spep_0 + 173, 1108, 168 );

--ポーズ３
SE1 = playSe( spep_0 + 188, 1012 );
setSeVolume( spep_0 + 188, 1012, 110 );
setSeVolume( spep_0 + 196, 1012, 100 );
setSeVolume( spep_0 + 200, 1012, 50 );
setSeVolume( spep_0 + 202, 1012, 0 );
stopSe( spep_0 + 202, SE1, 0 );

--ポーズ４
SE2 = playSe( spep_0 + 230, 1153 );
setSeVolume( spep_0 + 230, 1153, 65 );
setSeVolume( spep_0 + 239, 1153, 65 );
setSeVolume( spep_0 + 243, 1153, 30 );
setSeVolume( spep_0 + 245, 1153, 0 );
stopSe( spep_0 + 245, SE2, 0 );

SE3 = playSe( spep_0 + 233, 1001 );
setSeVolume( spep_0 + 233, 1001, 80 );
setSeVolume( spep_0 + 245, 1001, 80 );
setSeVolume( spep_0 + 240, 1001, 40 );
setSeVolume( spep_0 + 255, 1001, 0 );
stopSe( spep_0 + 255, SE3, 0 );

--ポーズ５
playSe( spep_0 + 257, 1189 );
playSe( spep_0 + 260, 1142 );
setSeVolume( spep_0 + 260, 1142, 70 );

--決めポーズ
playSe( spep_0 + 306, 1053 );
setSeVolume( spep_0 + 306, 1053, 0 );
setSeVolume( spep_0 + 311, 1053, 90 );
setSeVolume( spep_0 + 312, 1053, 95 );

playSe( spep_0 + 312, 1201 );
setSeVolume( spep_0 + 312, 1201, 110 );

playSe( spep_0 + 312, 7 );
setSeVolume( spep_0 + 312, 7, 160 );

--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

-- ** 次の準備 ** --
spep_1 = spep_0 + 396;

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
entryFade( spep_1 + 82, 6, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;

------------------------------------------------------
-- 突進(78F)
------------------------------------------------------

-- ** エフェクト等 ** --
tosshin = entryEffectLife( spep_2 + 0, SP_02, 78, 0x100, -1, 0, 0, 0 );  --突進(ef_002)
setEffMoveKey( spep_2 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_2 + 78, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tosshin, 1.0, 1.0 );
setEffScaleKey( spep_2 + 78, tosshin, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tosshin, 0 );
setEffRotateKey( spep_2 + 78, tosshin, 0 );
setEffAlphaKey( spep_2 + 0, tosshin, 255 );
setEffAlphaKey( spep_2 + 78, tosshin, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_2 + 0, 906, 78, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen1, 78, 20 );

setEffMoveKey( spep_2 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 78, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_2 + 78, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen1, 0 );
setEffRotateKey( spep_2 + 78, shuchusen1, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 78, shuchusen1, 255 );

-- ** 書き文字エントリー ** --
ctdon = entryEffectLife( spep_2 + 0,  10019, 24, 0x100, -1, 0, -0.4, 109.7 );  --ドンッ
setEffMoveKey( spep_2 + 0, ctdon, -0.4, 109.7 , 0 );
setEffMoveKey( spep_2 + 2, ctdon, -8.9, 214.8 , 0 );
setEffMoveKey( spep_2 + 4, ctdon, 8.1, 265.4 , 0 );
setEffMoveKey( spep_2 + 6, ctdon, -4.5, 296.2 , 0 );
setEffMoveKey( spep_2 + 8, ctdon, 13.5, 287.3 , 0 );
setEffMoveKey( spep_2 + 10, ctdon, -4.2, 286.2 , 0 );
setEffMoveKey( spep_2 + 12, ctdon, 4.9, 297.4 , 0 );
setEffMoveKey( spep_2 + 14, ctdon, 5.2, 279.3 , 0 );
setEffMoveKey( spep_2 + 16, ctdon, -0.7, 298.9 , 0 );
setEffMoveKey( spep_2 + 18, ctdon, -3.1, 290.9 , 0 );
setEffMoveKey( spep_2 + 20, ctdon, 3.4, 283.2 , 0 );
setEffMoveKey( spep_2 + 22, ctdon, 4, 293.6 , 0 );
setEffMoveKey( spep_2 + 24, ctdon, 4, 293.6 , 0 );

setEffScaleKey( spep_2 + 0, ctdon, 0.62, 0.62 );
setEffScaleKey( spep_2 + 2, ctdon, 1.97, 1.97 );
setEffScaleKey( spep_2 + 4, ctdon, 2.67, 2.67 );
setEffScaleKey( spep_2 + 6, ctdon, 2.92, 2.92 );
setEffScaleKey( spep_2 + 8, ctdon, 2.96, 2.96 );
setEffScaleKey( spep_2 + 24, ctdon, 2.96, 2.96 );

setEffRotateKey( spep_2 + 0, ctdon, 0 );
setEffRotateKey( spep_2 + 24, ctdon, 0 );

setEffAlphaKey( spep_2 + 0, ctdon, 255 );
setEffAlphaKey( spep_2 + 18, ctdon, 255 );
setEffAlphaKey( spep_2 + 20, ctdon, 170 );
setEffAlphaKey( spep_2 + 22, ctdon, 85 );
setEffAlphaKey( spep_2 + 24, ctdon, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 70, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--前方ダッシュ
SE4 = playSe( spep_2 + 0, 9 );
SE5 = playSe( spep_2 + 0, 1182 );
SE6 = playSe( spep_2 + 34, 1072 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 50; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe(SP_dodge - 12, SE4, 0 );
stopSe(SP_dodge - 12, SE5, 0 );
stopSe(SP_dodge - 12, SE6, 0 );

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

-- ** 次の準備 ** --
spep_3 = spep_2 + 78;

------------------------------------------------------
-- 格闘(126F)
------------------------------------------------------

-- ** エフェクト等 ** --
attack_f = entryEffectLife( spep_3 + 0, SP_03, 126, 0x100, -1, 0, 0, 0 );  --格闘(ef_003)
setEffMoveKey( spep_3 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 126, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 126, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, attack_f, 0 );
setEffRotateKey( spep_3 + 126, attack_f, 0 );
setEffAlphaKey( spep_3 + 0, attack_f, 255 );
setEffAlphaKey( spep_3 + 125, attack_f, 255 );
setEffAlphaKey( spep_3 + 126, attack_f, 0 );

attack_b = entryEffectLife( spep_3 + 0, SP_04, 126, 0x80, -1, 0, 0, 0 );  --格闘　背景(ef_004)
setEffMoveKey( spep_3 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 126, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 126, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, attack_b, 0 );
setEffRotateKey( spep_3 + 126, attack_b, 0 );
setEffAlphaKey( spep_3 + 0, attack_b, 255 );
setEffAlphaKey( spep_3 + 125, attack_b, 255 );
setEffAlphaKey( spep_3 + 126, attack_b, 0 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_3 -3 + 22, 906, 14, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 -3 + 22, shuchusen2, 14, 20 );

setEffMoveKey( spep_3 -3 + 22, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 -3 + 36, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 -3 + 22, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_3 -3 + 36, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_3 -3 + 22, shuchusen2, 0 );
setEffRotateKey( spep_3 -3 + 36, shuchusen2, 0 );

setEffAlphaKey( spep_3 -3 + 22, shuchusen2, 255 );
setEffAlphaKey( spep_3 -3 + 36, shuchusen2, 255 );

shuchusen3 = entryEffectLife( spep_3 -3 + 86, 906, 16, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 -3 + 86, shuchusen3, 16, 20 );

setEffMoveKey( spep_3 -3 + 86, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 -3 + 102, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 -3 + 86, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_3 -3 + 102, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_3 -3 + 86, shuchusen3, 0 );
setEffRotateKey( spep_3 -3 + 102, shuchusen3, 0 );

setEffAlphaKey( spep_3 -3 + 86, shuchusen3, 255 );
setEffAlphaKey( spep_3 -3 + 102, shuchusen3, 255 );

-- ** 書き文字エントリー ** --
ctdon1 = entryEffectLife( spep_3 -3 + 22,  10019, 14, 0x100, -1, 0, -65.3, 292.3 );  --ドン
setEffMoveKey( spep_3 -3 + 22, ctdon1, -65.3, 292.3 , 0 );
setEffMoveKey( spep_3 -3 + 24, ctdon1, -54, 302.1 , 0 );
setEffMoveKey( spep_3 -3 + 26, ctdon1, -31.8, 290.3 , 0 );
setEffMoveKey( spep_3 -3 + 28, ctdon1, -9.9, 308.4 , 0 );
setEffMoveKey( spep_3 -3 + 30, ctdon1, 6.3, 299.5 , 0 );
setEffMoveKey( spep_3 -3 + 32, ctdon1, 34.5, 303.6 , 0 );
setEffMoveKey( spep_3 -3 + 34, ctdon1, 12.4, 345.9 , 0 );
setEffMoveKey( spep_3 -3 + 36, ctdon1, -1.4, 380.7 , 0 );

setEffScaleKey( spep_3 -3 + 22, ctdon1, 2.35, 2.35 );
setEffScaleKey( spep_3 -3 + 24, ctdon1, 2.34, 2.34 );
setEffScaleKey( spep_3 -3 + 26, ctdon1, 2.32, 2.32 );
setEffScaleKey( spep_3 -3 + 28, ctdon1, 2.31, 2.31 );
setEffScaleKey( spep_3 -3 + 30, ctdon1, 2.29, 2.29 );
setEffScaleKey( spep_3 -3 + 32, ctdon1, 2.28, 2.28 );
setEffScaleKey( spep_3 -3 + 34, ctdon1, 2.07, 2.07 );
setEffScaleKey( spep_3 -3 + 36, ctdon1, 1.85, 1.85 );

setEffRotateKey( spep_3 -3 + 22, ctdon1, 0 );
setEffRotateKey( spep_3 -3 + 36, ctdon1, 0 );

setEffAlphaKey( spep_3 -3 + 22, ctdon1, 255 );
setEffAlphaKey( spep_3 -3 + 32, ctdon1, 255 );
setEffAlphaKey( spep_3 -3 + 34, ctdon1, 128 );
setEffAlphaKey( spep_3 -3 + 36, ctdon1, 0 );

ctbaki = entryEffectLife( spep_3 -3 + 86,  10020, 16, 0x100, -1, 0, 109, 288.6 );  --バキ
setEffMoveKey( spep_3 -3 + 86, ctbaki, 109, 288.6 , 0 );
setEffMoveKey( spep_3 -3 + 88, ctbaki, 118.4, 316 , 0 );
setEffMoveKey( spep_3 -3 + 90, ctbaki, 121.9, 302.5 , 0 );
setEffMoveKey( spep_3 -3 + 92, ctbaki, 109, 288.6 , 0 );
setEffMoveKey( spep_3 -3 + 94, ctbaki, 118.4, 316 , 0 );
setEffMoveKey( spep_3 -3 + 96, ctbaki, 121.9, 302.5 , 0 );
setEffMoveKey( spep_3 -3 + 98, ctbaki, 126.3, 341.8 , 0 );
setEffMoveKey( spep_3 -3 + 100, ctbaki, 131.3, 328.5 , 0 );
setEffMoveKey( spep_3 -3 + 102, ctbaki, 131.8, 328.3 , 0 );

setEffScaleKey( spep_3 -3 + 86, ctbaki, 1.93, 1.93 );
setEffScaleKey( spep_3 -3 + 102, ctbaki, 1.93, 1.93 );

setEffRotateKey( spep_3 -3 + 86, ctbaki, 40 );
setEffRotateKey( spep_3 -3 + 102, ctbaki, 40 );

setEffAlphaKey( spep_3 -3 + 86, ctbaki, 255 );
setEffAlphaKey( spep_3 -3 + 98, ctbaki, 255 );
setEffAlphaKey( spep_3 -3 + 100, ctbaki, 128 );
setEffAlphaKey( spep_3 -3 + 102, ctbaki, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 62, 1, 0 );
setDisp( spep_3 -3 + 64, 1, 1 );
setDisp( spep_3 -3 + 128, 1, 0 );
changeAnime( spep_3 + 0, 1, 101 );
changeAnime( spep_3 -3 + 22, 1, 108 );
changeAnime( spep_3 -3 + 26, 1, 106 );
changeAnime( spep_3 -3 + 86, 1, 108 );

setMoveKey( spep_3 + 0, 1, 221.3, 25.4 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 214.5, 25.4 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 204.5, 25.4 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 191.7, 25.4 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 176.6, 25.4 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 158.9, 25.4 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 138.6, 25.4 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 115.5, 25.4 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 88.9, 25.4 , 0 );
setMoveKey( spep_3 -3 + 21, 1, 20.2, 25.4 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 31.1, 45.8 , 0 );
setMoveKey( spep_3 -3 + 25, 1, 80.5, 75.7 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -43.3, 58.1 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 55.3, 34.5 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 60.8, 56.2 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 35.9, 49.5 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 96.6, 100.9 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 107.3, 89.5 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 124, 114.9 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 217.7, 202.1 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 269, 254.6 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 316.3, 295.9 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 357.5, 337.7 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 395, 374.1 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 427.4, 416.7 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 458.1, 448.9 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 487, 469 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 512.6, 491.3 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 535.4, 515.2 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 555.6, 539.8 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 574.4, 564 , 0 );
setMoveKey( spep_3 -3 + 64, 1, -525.9, -304.7 , 0 );
setMoveKey( spep_3 -3 + 66, 1, -359.1, -208.4 , 0 );
setMoveKey( spep_3 -3 + 68, 1, -262.3, -152.4 , 0 );
setMoveKey( spep_3 -3 + 70, 1, -192.5, -112 , 0 );
setMoveKey( spep_3 -3 + 72, 1, -138.8, -80.9 , 0 );
setMoveKey( spep_3 -3 + 74, 1, -96.5, -56.3 , 0 );
setMoveKey( spep_3 -3 + 76, 1, -62.8, -36.7 , 0 );
setMoveKey( spep_3 -3 + 78, 1, -35.9, -21.1 , 0 );
setMoveKey( spep_3 -3 + 80, 1, -14.8, -8.8 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 1.5, 0.6 , 0 );
setMoveKey( spep_3 -3 + 85, 1, 13.7, 7.6 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 56.5, -42.2 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 73.8, 2.1 , 0 );
setMoveKey( spep_3 -3 + 90, 1, -43.4, -34.3 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 42.7, -67.3 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 41.6, -48.5 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 3.1, -62.2 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 218.3, -250.1 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 299.9, -383.9 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 363.9, -448.9 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 409.3, -533.4 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 449.6, -588.6 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 484.2, -636.1 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 514.5, -677.7 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 541.3, -714.6 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 565.4, -747.8 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 587.1, -777.7 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 606.7, -804.7 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 624.6, -829.4 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 640.8, -852 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 655.6, -872.5 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 669.2, -891.3 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 681.4, -908.4 , 0 );

setScaleKey( spep_3 -3 + 0, 1, 1.21, 1.21 );
setScaleKey( spep_3 -3 + 22, 1, 1.21, 1.21 );
setScaleKey( spep_3 -3 + 25, 1, 1.06, 1.06 );
setScaleKey( spep_3 -3 + 26, 1, 1.01, 1.01 );
setScaleKey( spep_3 -3 + 28, 1, 1, 1 );
setScaleKey( spep_3 -3 + 38, 1, 1, 1 );
setScaleKey( spep_3 -3 + 40, 1, 0.88, 0.88 );
setScaleKey( spep_3 -3 + 42, 1, 0.87, 0.87 );
setScaleKey( spep_3 -3 + 44, 1, 0.85, 0.85 );
setScaleKey( spep_3 -3 + 46, 1, 0.83, 0.83 );
setScaleKey( spep_3 -3 + 48, 1, 0.8, 0.8 );
setScaleKey( spep_3 -3 + 50, 1, 0.79, 0.79 );
setScaleKey( spep_3 -3 + 52, 1, 0.76, 0.76 );
setScaleKey( spep_3 -3 + 54, 1, 0.73, 0.73 );
setScaleKey( spep_3 -3 + 56, 1, 0.71, 0.71 );
setScaleKey( spep_3 -3 + 58, 1, 0.69, 0.69 );
setScaleKey( spep_3 -3 + 60, 1, 0.67, 0.67 );
setScaleKey( spep_3 -3 + 62, 1, 0.65, 0.65 );
setScaleKey( spep_3 -3 + 64, 1, 1.1, 1.1 );
setScaleKey( spep_3 -3 + 66, 1, 1.16, 1.16 );
setScaleKey( spep_3 -3 + 68, 1, 1.2, 1.2 );
setScaleKey( spep_3 -3 + 70, 1, 1.22, 1.22 );
setScaleKey( spep_3 -3 + 72, 1, 1.24, 1.24 );
setScaleKey( spep_3 -3 + 74, 1, 1.26, 1.26 );
setScaleKey( spep_3 -3 + 76, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 78, 1, 1.28, 1.28 );
setScaleKey( spep_3 -3 + 80, 1, 1.29, 1.29 );
setScaleKey( spep_3 -3 + 82, 1, 1.29, 1.29 );
setScaleKey( spep_3 -3 + 85, 1, 1.3, 1.3 );
setScaleKey( spep_3 -3 + 86, 1, 1.56, 1.56 );
setScaleKey( spep_3 -3 + 88, 1, 1.35, 1.35 );
setScaleKey( spep_3 -3 + 90, 1, 1.31, 1.31 );
setScaleKey( spep_3 -3 + 92, 1, 1.3, 1.3 );
setScaleKey( spep_3 -3 + 96, 1, 1.3, 1.3 );
setScaleKey( spep_3 -3 + 98, 1, 1.59, 1.59 );
setScaleKey( spep_3 -3 + 100, 1, 1.76, 1.76 );
setScaleKey( spep_3 -3 + 102, 1, 1.88, 1.88 );
setScaleKey( spep_3 -3 + 104, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 106, 1, 2.06, 2.06 );
setScaleKey( spep_3 -3 + 108, 1, 2.12, 2.12 );
setScaleKey( spep_3 -3 + 110, 1, 2.18, 2.18 );
setScaleKey( spep_3 -3 + 112, 1, 2.23, 2.23 );
setScaleKey( spep_3 -3 + 114, 1, 2.28, 2.28 );
setScaleKey( spep_3 -3 + 116, 1, 2.32, 2.32 );
setScaleKey( spep_3 -3 + 118, 1, 2.36, 2.36 );
setScaleKey( spep_3 -3 + 120, 1, 2.39, 2.39 );
setScaleKey( spep_3 -3 + 122, 1, 2.42, 2.42 );
setScaleKey( spep_3 -3 + 124, 1, 2.45, 2.45 );
setScaleKey( spep_3 -3 + 126, 1, 2.47, 2.47 );
setScaleKey( spep_3 -3 + 128, 1, 2.5, 2.5 );

setRotateKey( spep_3 -3 + 0, 1, -4 );
setRotateKey( spep_3 -3 + 21, 1, -4 );
setRotateKey( spep_3 -3 + 22, 1, -10.5 );
setRotateKey( spep_3 -3 + 25, 1, -10.2 );
setRotateKey( spep_3 -3 + 26, 1, -48.4 );
setRotateKey( spep_3 -3 + 28, 1, -44.9 );
setRotateKey( spep_3 -3 + 30, 1, -41.4 );
setRotateKey( spep_3 -3 + 32, 1, -37.8 );
setRotateKey( spep_3 -3 + 34, 1, -34.3 );
setRotateKey( spep_3 -3 + 36, 1, -30.8 );
setRotateKey( spep_3 -3 + 38, 1, -27.3 );
setRotateKey( spep_3 -3 + 40, 1, -18.6 );
setRotateKey( spep_3 -3 + 42, 1, -13.1 );
setRotateKey( spep_3 -3 + 44, 1, -8.9 );
setRotateKey( spep_3 -3 + 46, 1, -5.6 );
setRotateKey( spep_3 -3 + 48, 1, -2.7 );
setRotateKey( spep_3 -3 + 50, 1, -0.2 );
setRotateKey( spep_3 -3 + 52, 1, 1.9 );
setRotateKey( spep_3 -3 + 54, 1, 3.9 );
setRotateKey( spep_3 -3 + 56, 1, 5.6 );
setRotateKey( spep_3 -3 + 58, 1, 7.1 );
setRotateKey( spep_3 -3 + 60, 1, 8.5 );
setRotateKey( spep_3 -3 + 62, 1, 9.8 );
setRotateKey( spep_3 -3 + 64, 1, -12.8 );
setRotateKey( spep_3 -3 + 66, 1, -6.2 );
setRotateKey( spep_3 -3 + 68, 1, -2.4 );
setRotateKey( spep_3 -3 + 70, 1, 0.4 );
setRotateKey( spep_3 -3 + 72, 1, 2.5 );
setRotateKey( spep_3 -3 + 74, 1, 4.2 );
setRotateKey( spep_3 -3 + 76, 1, 5.5 );
setRotateKey( spep_3 -3 + 78, 1, 6.6 );
setRotateKey( spep_3 -3 + 80, 1, 7.4 );
setRotateKey( spep_3 -3 + 82, 1, 8.1 );
setRotateKey( spep_3 -3 + 85, 1, 8.5 );
setRotateKey( spep_3 -3 + 86, 1, 43 );
setRotateKey( spep_3 -3 + 100, 1, 43 );
setRotateKey( spep_3 -3 + 102, 1, 43.1 );
setRotateKey( spep_3 -3 + 128, 1, 43.1 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 128, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 -3 + 22, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 -3 + 86, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 116, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
a1 = 30;
--パンチ
playSe( spep_3 + 50 -a1, 1189 );
playSe( spep_3 + 53 -a1, 1006 );

SE7 = playSe( spep_3 + 55 -a1, 1190 );
setSeVolume( spep_3 + 55 -a1, 1190, 89 );
setSeVolume( spep_3 + 69 -a1, 1190, 89 );
setSeVolume( spep_3 + 74 -a1, 1190, 40 );
setSeVolume( spep_3 + 82 -a1, 1190, 0 );
stopSe( spep_3 + 82 -a1, SE7, 0 );

playSe( spep_3 + 55 -a1, 1110 );
setSeVolume( spep_3 + 55 -a1, 1110, 89 );

--敵飛ぶ
playSe( spep_3 + 72 -a1, 44 );
setSeVolume( spep_3 + 72 -a1, 44, 70);

--キック
playSe( spep_3 + 119 -a1, 1120 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 126;

------------------------------------------------------
-- フィニッシュ(136F)
------------------------------------------------------

-- ** エフェクト等 ** --
haikei = entryEffectLife( spep_4 + 0, SP_05, 110, 0x80, -1, 0, 0, 0 );  --背景(ef_005)
setEffMoveKey( spep_4 + 0, haikei, 0, 0 , 0 );
setEffMoveKey( spep_4 + 110, haikei, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, haikei, 1.0, 1.0 );
setEffScaleKey( spep_4 + 110, haikei, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, haikei, 0 );
setEffRotateKey( spep_4 + 110, haikei, 0 );
setEffAlphaKey( spep_4 + 0, haikei, 255 );
setEffAlphaKey( spep_4 + 110, haikei, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_4 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_4 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_4 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 100, bakuhatsu, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_4 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_4 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_4 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 100, hibiware, 0 );

setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen4, 0 );
setEffRotateKey( spep_4 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusen5, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen5, 0 );
setEffRotateKey( spep_4 + 100, shuchusen5, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 100, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_4 + 14, ctga, -10.9 );
setEffRotateKey( spep_4 + 15, ctga, -10.9 );
setEffRotateKey( spep_4 + 16, ctga, -14.9 );
setEffRotateKey( spep_4 + 17, ctga, -14.9 );
setEffRotateKey( spep_4 + 18, ctga, -10.9 );
setEffRotateKey( spep_4 + 19, ctga, -10.9 );
setEffRotateKey( spep_4 + 20, ctga, -14.9 );
setEffRotateKey( spep_4 + 21, ctga, -14.9 );
setEffRotateKey( spep_4 + 22, ctga, -10.9 );
setEffRotateKey( spep_4 + 23, ctga, -10.9 );
setEffRotateKey( spep_4 + 24, ctga, -14.9 );
setEffRotateKey( spep_4 + 25, ctga, -14.9 );
setEffRotateKey( spep_4 + 26, ctga, -10.9 );
setEffRotateKey( spep_4 + 27, ctga, -10.9 );
setEffRotateKey( spep_4 + 28, ctga, -14.9 );
setEffRotateKey( spep_4 + 100, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_4 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_4 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_4 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_4 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_4 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_4 + 110, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_4 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_4 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_4 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_4 + 0, 1, -40 );
setRotateKey( spep_4 + 1, 1, -40 );
setRotateKey( spep_4 + 2, 1, 80 );
setRotateKey( spep_4 + 3, 1, 80 );
setRotateKey( spep_4 + 4, 1, 200 );
setRotateKey( spep_4 + 5, 1, 200 );
setRotateKey( spep_4 + 6, 1, 360 );
setRotateKey( spep_4 + 7, 1, 360 );
setRotateKey( spep_4 + 8, 1, 558 );
setRotateKey( spep_4 + 9, 1, 558 );
setRotateKey( spep_4 + 10, 1, 425 );
setRotateKey( spep_4 + 11, 1, 425 );
setRotateKey( spep_4 + 12, 1, -40 );
setRotateKey( spep_4 + 110, 1, -40 );

-- ** 音 ** --
playSe( spep_4 + 0, 1025 );  --爆発
playSe( spep_4 + 15, 1054 );  --割れる

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 10 );
endPhase( spep_4 + 100 -10 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 決めポーズ(396F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
pose = entryEffectLife( spep_0 + 0, SP_01, 396, 0x80, -1, 0, 0, 0 );  --決めポーズ(ef_001)
setEffMoveKey( spep_0 + 0, pose, 0, 0 , 0 );
setEffMoveKey( spep_0 + 396, pose, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, pose, -1.0, 1.0 );
setEffScaleKey( spep_0 + 396, pose, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, pose, 0 );
setEffRotateKey( spep_0 + 396, pose, 0 );
setEffAlphaKey( spep_0 + 0, pose, 255 );
setEffAlphaKey( spep_0 + 396, pose, 255 );

spep_x = spep_0 + 318 -4;
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
entryFadeBg( spep_0 + 0, 0, 398, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0,  2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
entryFade( spep_0 + 388, 8,  2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
--ポーズ１
playSe( spep_0 + 24, 1151 );
setSeVolume( spep_0 + 24, 1151, 0 );
setSeVolume( spep_0 + 27, 1151, 80 );
setSeVolume( spep_0 + 28, 1151, 110 );

playSe( spep_0 + 25, 1189 );
SE0 = playSe( spep_0 + 27, 1048 );
setSeVolume( spep_0 + 27, 1048, 70 );
setSeVolume( spep_0 + 37, 1048, 60 );
setSeVolume( spep_0 + 40, 1048, 30 );
setSeVolume( spep_0 + 48, 1048, 0 );
stopSe( spep_0 + 48, SE0, 0 );

--ポーズ２
playSe( spep_0 + 50, 1006 );
setSeVolume( spep_0 + 50, 1006, 90 );

--片足立ち
playSe( spep_0 + 97, 1108 );
setSeVolume( spep_0 + 97, 1108, 190 );

playSe( spep_0 + 98, 1106 );
setSeVolume( spep_0 + 98, 1106, 190 );

--足バタバタ
playSe( spep_0 + 149, 1106 );
setSeVolume( spep_0 + 149, 1106, 168 );

playSe( spep_0 + 149, 1108 );
setSeVolume( spep_0 + 149, 1108, 168 );

playSe( spep_0 + 154, 1106 );
setSeVolume( spep_0 + 154, 1106, 136 );

playSe( spep_0 + 159, 1106 );
setSeVolume( spep_0 + 159, 1106, 150 );

playSe( spep_0 + 159, 1108 );
setSeVolume( spep_0 + 159, 1108, 120 );

playSe( spep_0 + 164, 1106 );
setSeVolume( spep_0 + 164, 1106, 168 );

playSe( spep_0 + 169, 1106 );
setSeVolume( spep_0 + 169, 1106, 136 );

playSe( spep_0 + 173, 1106 );
setSeVolume( spep_0 + 173, 1106, 150 );

playSe( spep_0 + 173, 1108 );
setSeVolume( spep_0 + 173, 1108, 168 );

--ポーズ３
SE1 = playSe( spep_0 + 188, 1012 );
setSeVolume( spep_0 + 188, 1012, 110 );
setSeVolume( spep_0 + 196, 1012, 100 );
setSeVolume( spep_0 + 200, 1012, 50 );
setSeVolume( spep_0 + 202, 1012, 0 );
stopSe( spep_0 + 202, SE1, 0 );

--ポーズ４
SE2 = playSe( spep_0 + 230, 1153 );
setSeVolume( spep_0 + 230, 1153, 65 );
setSeVolume( spep_0 + 239, 1153, 65 );
setSeVolume( spep_0 + 243, 1153, 30 );
setSeVolume( spep_0 + 245, 1153, 0 );
stopSe( spep_0 + 245, SE2, 0 );

SE3 = playSe( spep_0 + 233, 1001 );
setSeVolume( spep_0 + 233, 1001, 80 );
setSeVolume( spep_0 + 245, 1001, 80 );
setSeVolume( spep_0 + 240, 1001, 40 );
setSeVolume( spep_0 + 255, 1001, 0 );
stopSe( spep_0 + 255, SE3, 0 );

--ポーズ５
playSe( spep_0 + 257, 1189 );
playSe( spep_0 + 260, 1142 );
setSeVolume( spep_0 + 260, 1142, 70 );

--決めポーズ
playSe( spep_0 + 306, 1053 );
setSeVolume( spep_0 + 306, 1053, 0 );
setSeVolume( spep_0 + 311, 1053, 90 );
setSeVolume( spep_0 + 312, 1053, 95 );

playSe( spep_0 + 312, 1201 );
setSeVolume( spep_0 + 312, 1201, 110 );

playSe( spep_0 + 312, 7 );
setSeVolume( spep_0 + 312, 7, 160 );

--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

-- ** 次の準備 ** --
spep_1 = spep_0 + 396;

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
entryFade( spep_1 + 82, 6, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;

------------------------------------------------------
-- 突進(78F)
------------------------------------------------------

-- ** エフェクト等 ** --
tosshin = entryEffectLife( spep_2 + 0, SP_02, 78, 0x100, -1, 0, 0, 0 );  --突進(ef_002)
setEffMoveKey( spep_2 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_2 + 78, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tosshin, -1.0, 1.0 );
setEffScaleKey( spep_2 + 78, tosshin, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tosshin, 0 );
setEffRotateKey( spep_2 + 78, tosshin, 0 );
setEffAlphaKey( spep_2 + 0, tosshin, 255 );
setEffAlphaKey( spep_2 + 78, tosshin, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_2 + 0, 906, 78, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen1, 78, 20 );

setEffMoveKey( spep_2 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 78, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_2 + 78, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen1, 0 );
setEffRotateKey( spep_2 + 78, shuchusen1, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 78, shuchusen1, 255 );

-- ** 書き文字エントリー ** --
ctdon = entryEffectLife( spep_2 + 0,  10019, 24, 0x100, -1, 0, -0.4, 109.7 );  --ドンッ
setEffMoveKey( spep_2 + 0, ctdon, -0.4, 109.7 , 0 );
setEffMoveKey( spep_2 + 2, ctdon, -8.9, 214.8 , 0 );
setEffMoveKey( spep_2 + 4, ctdon, 8.1, 265.4 , 0 );
setEffMoveKey( spep_2 + 6, ctdon, -4.5, 296.2 , 0 );
setEffMoveKey( spep_2 + 8, ctdon, 13.5, 287.3 , 0 );
setEffMoveKey( spep_2 + 10, ctdon, -4.2, 286.2 , 0 );
setEffMoveKey( spep_2 + 12, ctdon, 4.9, 297.4 , 0 );
setEffMoveKey( spep_2 + 14, ctdon, 5.2, 279.3 , 0 );
setEffMoveKey( spep_2 + 16, ctdon, -0.7, 298.9 , 0 );
setEffMoveKey( spep_2 + 18, ctdon, -3.1, 290.9 , 0 );
setEffMoveKey( spep_2 + 20, ctdon, 3.4, 283.2 , 0 );
setEffMoveKey( spep_2 + 22, ctdon, 4, 293.6 , 0 );
setEffMoveKey( spep_2 + 24, ctdon, 4, 293.6 , 0 );

setEffScaleKey( spep_2 + 0, ctdon, 0.62, 0.62 );
setEffScaleKey( spep_2 + 2, ctdon, 1.97, 1.97 );
setEffScaleKey( spep_2 + 4, ctdon, 2.67, 2.67 );
setEffScaleKey( spep_2 + 6, ctdon, 2.92, 2.92 );
setEffScaleKey( spep_2 + 8, ctdon, 2.96, 2.96 );
setEffScaleKey( spep_2 + 24, ctdon, 2.96, 2.96 );

setEffRotateKey( spep_2 + 0, ctdon, 0 );
setEffRotateKey( spep_2 + 24, ctdon, 0 );

setEffAlphaKey( spep_2 + 0, ctdon, 255 );
setEffAlphaKey( spep_2 + 18, ctdon, 255 );
setEffAlphaKey( spep_2 + 20, ctdon, 170 );
setEffAlphaKey( spep_2 + 22, ctdon, 85 );
setEffAlphaKey( spep_2 + 24, ctdon, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 70, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--前方ダッシュ
SE4 = playSe( spep_2 + 0, 9 );
SE5 = playSe( spep_2 + 0, 1182 );
SE6 = playSe( spep_2 + 34, 1072 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 50; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe(SP_dodge - 12, SE4, 0 );
stopSe(SP_dodge - 12, SE5, 0 );
stopSe(SP_dodge - 12, SE6, 0 );

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

-- ** 次の準備 ** --
spep_3 = spep_2 + 78;

------------------------------------------------------
-- 格闘(126F)
------------------------------------------------------

-- ** エフェクト等 ** --
attack_f = entryEffectLife( spep_3 + 0, SP_03x, 126, 0x100, -1, 0, 0, 0 );  --格闘(ef_003)
setEffMoveKey( spep_3 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 126, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 126, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, attack_f, 0 );
setEffRotateKey( spep_3 + 126, attack_f, 0 );
setEffAlphaKey( spep_3 + 0, attack_f, 255 );
setEffAlphaKey( spep_3 + 125, attack_f, 255 );
setEffAlphaKey( spep_3 + 126, attack_f, 0 );

attack_b = entryEffectLife( spep_3 + 0, SP_04, 126, 0x80, -1, 0, 0, 0 );  --格闘　背景(ef_004)
setEffMoveKey( spep_3 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 126, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 126, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, attack_b, 0 );
setEffRotateKey( spep_3 + 126, attack_b, 0 );
setEffAlphaKey( spep_3 + 0, attack_b, 255 );
setEffAlphaKey( spep_3 + 125, attack_b, 255 );
setEffAlphaKey( spep_3 + 126, attack_b, 0 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_3 -3 + 22, 906, 14, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 -3 + 22, shuchusen2, 14, 20 );

setEffMoveKey( spep_3 -3 + 22, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 -3 + 36, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 -3 + 22, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_3 -3 + 36, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_3 -3 + 22, shuchusen2, 0 );
setEffRotateKey( spep_3 -3 + 36, shuchusen2, 0 );

setEffAlphaKey( spep_3 -3 + 22, shuchusen2, 255 );
setEffAlphaKey( spep_3 -3 + 36, shuchusen2, 255 );

shuchusen3 = entryEffectLife( spep_3 -3 + 86, 906, 16, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 -3 + 86, shuchusen3, 16, 20 );

setEffMoveKey( spep_3 -3 + 86, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 -3 + 102, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 -3 + 86, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_3 -3 + 102, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_3 -3 + 86, shuchusen3, 0 );
setEffRotateKey( spep_3 -3 + 102, shuchusen3, 0 );

setEffAlphaKey( spep_3 -3 + 86, shuchusen3, 255 );
setEffAlphaKey( spep_3 -3 + 102, shuchusen3, 255 );

-- ** 書き文字エントリー ** --
ctdon1 = entryEffectLife( spep_3 -3 + 22,  10019, 14, 0x100, -1, 0, -65.3, 292.3 );  --ドン
setEffMoveKey( spep_3 -3 + 22, ctdon1, -65.3, 292.3 , 0 );
setEffMoveKey( spep_3 -3 + 24, ctdon1, -54, 302.1 , 0 );
setEffMoveKey( spep_3 -3 + 26, ctdon1, -31.8, 290.3 , 0 );
setEffMoveKey( spep_3 -3 + 28, ctdon1, -9.9, 308.4 , 0 );
setEffMoveKey( spep_3 -3 + 30, ctdon1, 6.3, 299.5 , 0 );
setEffMoveKey( spep_3 -3 + 32, ctdon1, 34.5, 303.6 , 0 );
setEffMoveKey( spep_3 -3 + 34, ctdon1, 12.4, 345.9 , 0 );
setEffMoveKey( spep_3 -3 + 36, ctdon1, -1.4, 380.7 , 0 );

setEffScaleKey( spep_3 -3 + 22, ctdon1, 2.35, 2.35 );
setEffScaleKey( spep_3 -3 + 24, ctdon1, 2.34, 2.34 );
setEffScaleKey( spep_3 -3 + 26, ctdon1, 2.32, 2.32 );
setEffScaleKey( spep_3 -3 + 28, ctdon1, 2.31, 2.31 );
setEffScaleKey( spep_3 -3 + 30, ctdon1, 2.29, 2.29 );
setEffScaleKey( spep_3 -3 + 32, ctdon1, 2.28, 2.28 );
setEffScaleKey( spep_3 -3 + 34, ctdon1, 2.07, 2.07 );
setEffScaleKey( spep_3 -3 + 36, ctdon1, 1.85, 1.85 );

setEffRotateKey( spep_3 -3 + 22, ctdon1, 0 );
setEffRotateKey( spep_3 -3 + 36, ctdon1, 0 );

setEffAlphaKey( spep_3 -3 + 22, ctdon1, 255 );
setEffAlphaKey( spep_3 -3 + 32, ctdon1, 255 );
setEffAlphaKey( spep_3 -3 + 34, ctdon1, 128 );
setEffAlphaKey( spep_3 -3 + 36, ctdon1, 0 );

ctbaki = entryEffectLife( spep_3 -3 + 86,  10020, 16, 0x100, -1, 0, 109, 288.6 );  --バキ
setEffMoveKey( spep_3 -3 + 86, ctbaki, 109, 288.6 , 0 );
setEffMoveKey( spep_3 -3 + 88, ctbaki, 118.4, 316 , 0 );
setEffMoveKey( spep_3 -3 + 90, ctbaki, 121.9, 302.5 , 0 );
setEffMoveKey( spep_3 -3 + 92, ctbaki, 109, 288.6 , 0 );
setEffMoveKey( spep_3 -3 + 94, ctbaki, 118.4, 316 , 0 );
setEffMoveKey( spep_3 -3 + 96, ctbaki, 121.9, 302.5 , 0 );
setEffMoveKey( spep_3 -3 + 98, ctbaki, 126.3, 341.8 , 0 );
setEffMoveKey( spep_3 -3 + 100, ctbaki, 131.3, 328.5 , 0 );
setEffMoveKey( spep_3 -3 + 102, ctbaki, 131.8, 328.3 , 0 );

setEffScaleKey( spep_3 -3 + 86, ctbaki, 1.93, 1.93 );
setEffScaleKey( spep_3 -3 + 102, ctbaki, 1.93, 1.93 );

setEffRotateKey( spep_3 -3 + 86, ctbaki, 0  );
setEffRotateKey( spep_3 -3 + 102, ctbaki, 0  );

setEffAlphaKey( spep_3 -3 + 86, ctbaki, 255 );
setEffAlphaKey( spep_3 -3 + 98, ctbaki, 255 );
setEffAlphaKey( spep_3 -3 + 100, ctbaki, 128 );
setEffAlphaKey( spep_3 -3 + 102, ctbaki, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 62, 1, 0 );
setDisp( spep_3 -3 + 64, 1, 1 );
setDisp( spep_3 -3 + 128, 1, 0 );
changeAnime( spep_3 + 0, 1, 101 );
changeAnime( spep_3 -3 + 22, 1, 108 );
changeAnime( spep_3 -3 + 26, 1, 106 );
changeAnime( spep_3 -3 + 86, 1, 108 );

setMoveKey( spep_3 + 0, 1, 221.3, 25.4 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 214.5, 25.4 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 204.5, 25.4 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 191.7, 25.4 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 176.6, 25.4 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 158.9, 25.4 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 138.6, 25.4 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 115.5, 25.4 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 88.9, 25.4 , 0 );
setMoveKey( spep_3 -3 + 21, 1, 20.2, 25.4 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 31.1, 45.8 , 0 );
setMoveKey( spep_3 -3 + 25, 1, 80.5, 75.7 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -43.3, 58.1 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 55.3, 34.5 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 60.8, 56.2 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 35.9, 49.5 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 96.6, 100.9 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 107.3, 89.5 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 124, 114.9 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 217.7, 202.1 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 269, 254.6 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 316.3, 295.9 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 357.5, 337.7 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 395, 374.1 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 427.4, 416.7 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 458.1, 448.9 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 487, 469 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 512.6, 491.3 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 535.4, 515.2 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 555.6, 539.8 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 574.4, 564 , 0 );
setMoveKey( spep_3 -3 + 64, 1, -525.9, -304.7 , 0 );
setMoveKey( spep_3 -3 + 66, 1, -359.1, -208.4 , 0 );
setMoveKey( spep_3 -3 + 68, 1, -262.3, -152.4 , 0 );
setMoveKey( spep_3 -3 + 70, 1, -192.5, -112 , 0 );
setMoveKey( spep_3 -3 + 72, 1, -138.8, -80.9 , 0 );
setMoveKey( spep_3 -3 + 74, 1, -96.5, -56.3 , 0 );
setMoveKey( spep_3 -3 + 76, 1, -62.8, -36.7 , 0 );
setMoveKey( spep_3 -3 + 78, 1, -35.9, -21.1 , 0 );
setMoveKey( spep_3 -3 + 80, 1, -14.8, -8.8 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 1.5, 0.6 , 0 );
setMoveKey( spep_3 -3 + 85, 1, 13.7, 7.6 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 56.5, -42.2 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 73.8, 2.1 , 0 );
setMoveKey( spep_3 -3 + 90, 1, -43.4, -34.3 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 42.7, -67.3 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 41.6, -48.5 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 3.1, -62.2 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 218.3, -250.1 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 299.9, -383.9 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 363.9, -448.9 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 409.3, -533.4 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 449.6, -588.6 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 484.2, -636.1 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 514.5, -677.7 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 541.3, -714.6 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 565.4, -747.8 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 587.1, -777.7 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 606.7, -804.7 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 624.6, -829.4 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 640.8, -852 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 655.6, -872.5 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 669.2, -891.3 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 681.4, -908.4 , 0 );

setScaleKey( spep_3 -3 + 0, 1, 1.21, 1.21 );
setScaleKey( spep_3 -3 + 22, 1, 1.21, 1.21 );
setScaleKey( spep_3 -3 + 25, 1, 1.06, 1.06 );
setScaleKey( spep_3 -3 + 26, 1, 1.01, 1.01 );
setScaleKey( spep_3 -3 + 28, 1, 1, 1 );
setScaleKey( spep_3 -3 + 38, 1, 1, 1 );
setScaleKey( spep_3 -3 + 40, 1, 0.88, 0.88 );
setScaleKey( spep_3 -3 + 42, 1, 0.87, 0.87 );
setScaleKey( spep_3 -3 + 44, 1, 0.85, 0.85 );
setScaleKey( spep_3 -3 + 46, 1, 0.83, 0.83 );
setScaleKey( spep_3 -3 + 48, 1, 0.8, 0.8 );
setScaleKey( spep_3 -3 + 50, 1, 0.79, 0.79 );
setScaleKey( spep_3 -3 + 52, 1, 0.76, 0.76 );
setScaleKey( spep_3 -3 + 54, 1, 0.73, 0.73 );
setScaleKey( spep_3 -3 + 56, 1, 0.71, 0.71 );
setScaleKey( spep_3 -3 + 58, 1, 0.69, 0.69 );
setScaleKey( spep_3 -3 + 60, 1, 0.67, 0.67 );
setScaleKey( spep_3 -3 + 62, 1, 0.65, 0.65 );
setScaleKey( spep_3 -3 + 64, 1, 1.1, 1.1 );
setScaleKey( spep_3 -3 + 66, 1, 1.16, 1.16 );
setScaleKey( spep_3 -3 + 68, 1, 1.2, 1.2 );
setScaleKey( spep_3 -3 + 70, 1, 1.22, 1.22 );
setScaleKey( spep_3 -3 + 72, 1, 1.24, 1.24 );
setScaleKey( spep_3 -3 + 74, 1, 1.26, 1.26 );
setScaleKey( spep_3 -3 + 76, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 78, 1, 1.28, 1.28 );
setScaleKey( spep_3 -3 + 80, 1, 1.29, 1.29 );
setScaleKey( spep_3 -3 + 82, 1, 1.29, 1.29 );
setScaleKey( spep_3 -3 + 85, 1, 1.3, 1.3 );
setScaleKey( spep_3 -3 + 86, 1, 1.56, 1.56 );
setScaleKey( spep_3 -3 + 88, 1, 1.35, 1.35 );
setScaleKey( spep_3 -3 + 90, 1, 1.31, 1.31 );
setScaleKey( spep_3 -3 + 92, 1, 1.3, 1.3 );
setScaleKey( spep_3 -3 + 96, 1, 1.3, 1.3 );
setScaleKey( spep_3 -3 + 98, 1, 1.59, 1.59 );
setScaleKey( spep_3 -3 + 100, 1, 1.76, 1.76 );
setScaleKey( spep_3 -3 + 102, 1, 1.88, 1.88 );
setScaleKey( spep_3 -3 + 104, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 106, 1, 2.06, 2.06 );
setScaleKey( spep_3 -3 + 108, 1, 2.12, 2.12 );
setScaleKey( spep_3 -3 + 110, 1, 2.18, 2.18 );
setScaleKey( spep_3 -3 + 112, 1, 2.23, 2.23 );
setScaleKey( spep_3 -3 + 114, 1, 2.28, 2.28 );
setScaleKey( spep_3 -3 + 116, 1, 2.32, 2.32 );
setScaleKey( spep_3 -3 + 118, 1, 2.36, 2.36 );
setScaleKey( spep_3 -3 + 120, 1, 2.39, 2.39 );
setScaleKey( spep_3 -3 + 122, 1, 2.42, 2.42 );
setScaleKey( spep_3 -3 + 124, 1, 2.45, 2.45 );
setScaleKey( spep_3 -3 + 126, 1, 2.47, 2.47 );
setScaleKey( spep_3 -3 + 128, 1, 2.5, 2.5 );

setRotateKey( spep_3 -3 + 0, 1, -4 );
setRotateKey( spep_3 -3 + 21, 1, -4 );
setRotateKey( spep_3 -3 + 22, 1, -10.5 );
setRotateKey( spep_3 -3 + 25, 1, -10.2 );
setRotateKey( spep_3 -3 + 26, 1, -48.4 );
setRotateKey( spep_3 -3 + 28, 1, -44.9 );
setRotateKey( spep_3 -3 + 30, 1, -41.4 );
setRotateKey( spep_3 -3 + 32, 1, -37.8 );
setRotateKey( spep_3 -3 + 34, 1, -34.3 );
setRotateKey( spep_3 -3 + 36, 1, -30.8 );
setRotateKey( spep_3 -3 + 38, 1, -27.3 );
setRotateKey( spep_3 -3 + 40, 1, -18.6 );
setRotateKey( spep_3 -3 + 42, 1, -13.1 );
setRotateKey( spep_3 -3 + 44, 1, -8.9 );
setRotateKey( spep_3 -3 + 46, 1, -5.6 );
setRotateKey( spep_3 -3 + 48, 1, -2.7 );
setRotateKey( spep_3 -3 + 50, 1, -0.2 );
setRotateKey( spep_3 -3 + 52, 1, 1.9 );
setRotateKey( spep_3 -3 + 54, 1, 3.9 );
setRotateKey( spep_3 -3 + 56, 1, 5.6 );
setRotateKey( spep_3 -3 + 58, 1, 7.1 );
setRotateKey( spep_3 -3 + 60, 1, 8.5 );
setRotateKey( spep_3 -3 + 62, 1, 9.8 );
setRotateKey( spep_3 -3 + 64, 1, -12.8 );
setRotateKey( spep_3 -3 + 66, 1, -6.2 );
setRotateKey( spep_3 -3 + 68, 1, -2.4 );
setRotateKey( spep_3 -3 + 70, 1, 0.4 );
setRotateKey( spep_3 -3 + 72, 1, 2.5 );
setRotateKey( spep_3 -3 + 74, 1, 4.2 );
setRotateKey( spep_3 -3 + 76, 1, 5.5 );
setRotateKey( spep_3 -3 + 78, 1, 6.6 );
setRotateKey( spep_3 -3 + 80, 1, 7.4 );
setRotateKey( spep_3 -3 + 82, 1, 8.1 );
setRotateKey( spep_3 -3 + 85, 1, 8.5 );
setRotateKey( spep_3 -3 + 86, 1, 43 );
setRotateKey( spep_3 -3 + 100, 1, 43 );
setRotateKey( spep_3 -3 + 102, 1, 43.1 );
setRotateKey( spep_3 -3 + 128, 1, 43.1 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 128, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 -3 + 22, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 -3 + 86, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 116, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
a1 = 30;
--パンチ
playSe( spep_3 + 50 -a1, 1189 );
playSe( spep_3 + 53 -a1, 1006 );

SE7 = playSe( spep_3 + 55 -a1, 1190 );
setSeVolume( spep_3 + 55 -a1, 1190, 89 );
setSeVolume( spep_3 + 69 -a1, 1190, 89 );
setSeVolume( spep_3 + 74 -a1, 1190, 40 );
setSeVolume( spep_3 + 82 -a1, 1190, 0 );
stopSe( spep_3 + 82 -a1, SE7, 0 );

playSe( spep_3 + 55 -a1, 1110 );
setSeVolume( spep_3 + 55 -a1, 1110, 89 );

--敵飛ぶ
playSe( spep_3 + 72 -a1, 44 );
setSeVolume( spep_3 + 72 -a1, 44, 70);

--キック
playSe( spep_3 + 119 -a1, 1120 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 126;

------------------------------------------------------
-- フィニッシュ(136F)
------------------------------------------------------

-- ** エフェクト等 ** --
haikei = entryEffectLife( spep_4 + 0, SP_05, 110, 0x80, -1, 0, 0, 0 );  --背景(ef_005)
setEffMoveKey( spep_4 + 0, haikei, 0, 0 , 0 );
setEffMoveKey( spep_4 + 110, haikei, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, haikei, 1.0, 1.0 );
setEffScaleKey( spep_4 + 110, haikei, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, haikei, 0 );
setEffRotateKey( spep_4 + 110, haikei, 0 );
setEffAlphaKey( spep_4 + 0, haikei, 255 );
setEffAlphaKey( spep_4 + 110, haikei, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_4 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_4 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_4 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 100, bakuhatsu, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_4 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_4 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_4 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 100, hibiware, 0 );

setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen4, 0 );
setEffRotateKey( spep_4 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusen5, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen5, 0 );
setEffRotateKey( spep_4 + 100, shuchusen5, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 100, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_4 + 14, ctga, -10.9 );
setEffRotateKey( spep_4 + 15, ctga, -10.9 );
setEffRotateKey( spep_4 + 16, ctga, -14.9 );
setEffRotateKey( spep_4 + 17, ctga, -14.9 );
setEffRotateKey( spep_4 + 18, ctga, -10.9 );
setEffRotateKey( spep_4 + 19, ctga, -10.9 );
setEffRotateKey( spep_4 + 20, ctga, -14.9 );
setEffRotateKey( spep_4 + 21, ctga, -14.9 );
setEffRotateKey( spep_4 + 22, ctga, -10.9 );
setEffRotateKey( spep_4 + 23, ctga, -10.9 );
setEffRotateKey( spep_4 + 24, ctga, -14.9 );
setEffRotateKey( spep_4 + 25, ctga, -14.9 );
setEffRotateKey( spep_4 + 26, ctga, -10.9 );
setEffRotateKey( spep_4 + 27, ctga, -10.9 );
setEffRotateKey( spep_4 + 28, ctga, -14.9 );
setEffRotateKey( spep_4 + 100, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_4 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_4 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_4 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_4 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_4 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_4 + 110, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_4 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_4 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_4 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_4 + 0, 1, -40 );
setRotateKey( spep_4 + 1, 1, -40 );
setRotateKey( spep_4 + 2, 1, 80 );
setRotateKey( spep_4 + 3, 1, 80 );
setRotateKey( spep_4 + 4, 1, 200 );
setRotateKey( spep_4 + 5, 1, 200 );
setRotateKey( spep_4 + 6, 1, 360 );
setRotateKey( spep_4 + 7, 1, 360 );
setRotateKey( spep_4 + 8, 1, 558 );
setRotateKey( spep_4 + 9, 1, 558 );
setRotateKey( spep_4 + 10, 1, 425 );
setRotateKey( spep_4 + 11, 1, 425 );
setRotateKey( spep_4 + 12, 1, -40 );
setRotateKey( spep_4 + 110, 1, -40 );

-- ** 音 ** --
playSe( spep_4 + 0, 1025 );  --爆発
playSe( spep_4 + 15, 1054 );  --割れる

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 10 );
endPhase( spep_4 + 100 -10 );

end