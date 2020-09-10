--人造人間13号＿デッドリィクラッシュ(ドッカン前)

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
SP_01 = 154554; --溜め
SP_02 = 154555; --放つ
SP_03 = 154556; --着弾・手前
SP_04 = 154557; --着弾・奥

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
-- 登場(176F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
toujo = entryEffectLife( spep_0 + 0, SP_01, 176, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_0 + 0, toujo, 0, 0 , 0 );
setEffMoveKey( spep_0 + 176, toujo, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, toujo, 1.0, 1.0 );
setEffScaleKey( spep_0 + 176, toujo, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, toujo, 0 );
setEffRotateKey( spep_0 + 176, toujo, 0 );
setEffAlphaKey( spep_0 + 0, toujo, 255 );
setEffAlphaKey( spep_0 + 176, toujo, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 54 -3, 906, 122 +3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 54 -3, shuchusen1, 122 +3, 20 );

setEffMoveKey( spep_0 + 54 -3, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 176, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 54 -3, shuchusen1, 1.4, 1.4 );
setEffScaleKey( spep_0 + 176, shuchusen1, 1.4, 1.4 );

setEffRotateKey( spep_0 + 54 -3, shuchusen1, 0 );
setEffRotateKey( spep_0 + 176, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 54 -3, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 176, shuchusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 178, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0,  2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
entryFade( spep_0 + 54 -3, 0,  2, 6, fcolor_r, fcolor_g, fcolor_b, 180 );     -- white fade

-- ** 音 ** --
playSe( spep_0 + 0, 8 );  --登場

--気弾貯め
SE0 = playSe( spep_0 + 61, 1191 );
setSeVolume( spep_0 + 18, 1191, 150 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 86; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe(SP_dodge - 12, SE0, 0 );

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

spep_x = spep_0 + 78;
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

-- ** 白フェード ** --
entryFade( spep_0 + 176 -8, 4,  4, 4, fcolor_r, fcolor_g, fcolor_b, 180 );     -- white fade

-- ** 音 ** --
playSe( spep_x + 16, 1018 );  --ゴゴゴ

playSe( spep_0 + 116, 1192 );
setSeVolume( spep_0 + 116, 1192, 168 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 176;

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
stopSe( spep_1 + 0, SE0, 0 );

playSe( spep_1 + 0, SE_05 );  --カットイン

SE1 = playSe( spep_1 + 12, 1191 );  --気弾溜め
setSeVolume( spep_1 + 12, 1191, 0 );

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 82, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;

------------------------------------------------------
-- 発射(96F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_2 + 0, SP_02, 96, 0x100, -1, 0, 0, 0 );  --発射(ef_002)
setEffMoveKey( spep_2 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, hassha, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_2 + 96, hassha, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hassha, 0 );
setEffRotateKey( spep_2 + 96, hassha, 0 );
setEffAlphaKey( spep_2 + 0, hassha, 255 );
setEffAlphaKey( spep_2 + 96, hassha, 255 );

-- ** 白フェード ** --
entryFade( spep_2 + 26 -8, 0,  2, 6, fcolor_r, fcolor_g, fcolor_b, 180 );     -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 98, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--気弾溜め
setSeVolume( spep_2 + 0, 1191, 0 );
setSeVolume( spep_2 + 6, 1191, 60 );
setSeVolume( spep_2 + 8, 1191, 100 );
stopSe( spep_2 + 82, SE1, 0 );

playSe( spep_2 + 24, 1202 );
setSeVolume( spep_2 + 24, 1202, 130 );

SE2 = playSe( spep_2 + 24, 1194 );
setSeVolume( spep_2 + 24, 1194, 120 );

SE3 = playSe( spep_2 + 70, 1193 );  --気弾連射
setSeVolume( spep_2 + 70, 1193, 290 );
setSeVolume( spep_2 + 94, 1193, 141 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 96;

------------------------------------------------------
-- フィニッシュ(154F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --フィニッシュ(ef_003)
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 156, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 156, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 156, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 156, finish_f, 255 );

finish_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --フィニッシュ(ef_004)
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 156, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 156, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 156, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 156, finish_b, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_3 + 66 -3, 906, 90 +3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 66 -3, shuchusen2, 90 +3, 20 );

setEffMoveKey( spep_3 + 66 -3, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 156, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 66 -3, shuchusen2, 1.4, 1.4 );
setEffScaleKey( spep_3 + 156, shuchusen2, 1.4, 1.4 );

setEffRotateKey( spep_3 + 66 -3, shuchusen2, 0 );
setEffRotateKey( spep_3 + 156, shuchusen2, 0 );

setEffAlphaKey( spep_3 + 66 -3, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 156, shuchusen2, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 24, 1, 0 );
changeAnime( spep_3 + 0, 1, 102 );
changeAnime( spep_3 -3 + 14, 1, 108 );

setMoveKey( spep_3 + 0, 1, -3.7, -71.4 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -0.8, -74.3 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 0, -70.5 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 0.7, -66.5 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 1.4, -62.3 , 0 );
setMoveKey( spep_3 -3 + 13, 1, 3.4, -64 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 4.8, -149.5 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 46.5, -253.1 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 84.9, -347.7 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 119.1, -431.3 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 158.1, -534.8 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 158.1, -534.8 , 0 );
setMoveKey( spep_3 + 24, 1, 158.1, -534.8 , 0 );

setScaleKey( spep_3 + 0, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 4, 1, 1.69, 1.69 );
setScaleKey( spep_3 -3 + 6, 1, 1.64, 1.64 );
setScaleKey( spep_3 -3 + 8, 1, 1.58, 1.58 );
setScaleKey( spep_3 -3 + 10, 1, 1.53, 1.53 );
setScaleKey( spep_3 -3 + 13, 1, 1.45, 1.45 );
setScaleKey( spep_3 -3 + 14, 1, 1.47, 1.47 );
setScaleKey( spep_3 -3 + 16, 1, 1.41, 1.41 );
setScaleKey( spep_3 -3 + 18, 1, 1.33, 1.33 );
setScaleKey( spep_3 -3 + 20, 1, 1.28, 1.28 );
setScaleKey( spep_3 + 24, 1, 1.28, 1.28 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 13, 1, 0 );
setRotateKey( spep_3 -3 + 14, 1, 47.4 );
setRotateKey( spep_3 + 24, 1, 47.4 );


-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 156, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 34 -3, 30, 2, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
stopSe( spep_3 + 27, SE2, 0 );

--気弾発射
setSeVolume( spep_3 + 34, 1193, 141 );
setSeVolume( spep_3 + 40, 1193, 100 );
setSeVolume( spep_3 + 46, 1193, 70 );
setSeVolume( spep_3 + 50, 1193, 40 );
setSeVolume( spep_3 + 57, 1193, 0 );
stopSe( spep_3 + 57, SE3, 0 );

--叩きつけ
SE4 = playSe( spep_3 + 22, 1153 );
setSeVolume( spep_3 + 22, 1153, 70 );
setSeVolume( spep_3 + 32, 1153, 60 );
setSeVolume( spep_3 + 36, 1153, 30 );
setSeVolume( spep_3 + 40, 1153, 0 );
stopSe( spep_3 + 40, SE4, 0 );

playSe( spep_3 + 28, 1023 );
setSeVolume( spep_3 + 28, 1023, 80 );

playSe( spep_3 + 28, 20 );
setSeVolume( spep_3 + 28, 20, 90 );

playSe( spep_3 + 72, 1159 );  --爆発
setSeVolume( spep_3 + 72, 1159, 90 );

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 52 );
endPhase( spep_3 + 152 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 登場(176F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
toujo = entryEffectLife( spep_0 + 0, SP_01, 176, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_0 + 0, toujo, 0, 0 , 0 );
setEffMoveKey( spep_0 + 176, toujo, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, toujo, -1.0, 1.0 );
setEffScaleKey( spep_0 + 176, toujo, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, toujo, 0 );
setEffRotateKey( spep_0 + 176, toujo, 0 );
setEffAlphaKey( spep_0 + 0, toujo, 255 );
setEffAlphaKey( spep_0 + 176, toujo, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 54 -3, 906, 122 +3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 54 -3, shuchusen1, 122 +3, 20 );

setEffMoveKey( spep_0 + 54 -3, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 176, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 54 -3, shuchusen1, 1.4, 1.4 );
setEffScaleKey( spep_0 + 176, shuchusen1, 1.4, 1.4 );

setEffRotateKey( spep_0 + 54 -3, shuchusen1, 0 );
setEffRotateKey( spep_0 + 176, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 54 -3, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 176, shuchusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 178, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0,  2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
entryFade( spep_0 + 54 -3, 0,  2, 6, fcolor_r, fcolor_g, fcolor_b, 180 );     -- white fade

-- ** 音 ** --
playSe( spep_0 + 0, 8 );  --登場

--気弾貯め
SE0 = playSe( spep_0 + 61, 1191 );
setSeVolume( spep_0 + 18, 1191, 150 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 86; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe(SP_dodge - 12, SE0, 0 );

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

spep_x = spep_0 + 78;
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

-- ** 白フェード ** --
entryFade( spep_0 + 176 -8, 4,  4, 4, fcolor_r, fcolor_g, fcolor_b, 180 );     -- white fade

-- ** 音 ** --
playSe( spep_x + 16, 1018 );  --ゴゴゴ

playSe( spep_0 + 116, 1192 );
setSeVolume( spep_0 + 116, 1192, 168 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 176;

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
stopSe( spep_1 + 0, SE0, 0 );

playSe( spep_1 + 0, SE_05 );  --カットイン

SE1 = playSe( spep_1 + 12, 1191 );  --気弾溜め
setSeVolume( spep_1 + 12, 1191, 0 );

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 82, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;

------------------------------------------------------
-- 発射(96F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_2 + 0, SP_02, 96, 0x100, -1, 0, 0, 0 );  --発射(ef_002)
setEffMoveKey( spep_2 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, hassha, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hassha, -1.0, 1.0 );
setEffScaleKey( spep_2 + 96, hassha, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hassha, 0 );
setEffRotateKey( spep_2 + 96, hassha, 0 );
setEffAlphaKey( spep_2 + 0, hassha, 255 );
setEffAlphaKey( spep_2 + 96, hassha, 255 );

-- ** 白フェード ** --
entryFade( spep_2 + 26 -8, 0,  2, 6, fcolor_r, fcolor_g, fcolor_b, 180 );     -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 98, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--気弾溜め
setSeVolume( spep_2 + 0, 1191, 0 );
setSeVolume( spep_2 + 6, 1191, 60 );
setSeVolume( spep_2 + 8, 1191, 100 );
stopSe( spep_2 + 82, SE1, 0 );

playSe( spep_2 + 24, 1202 );
setSeVolume( spep_2 + 24, 1202, 130 );

SE2 = playSe( spep_2 + 24, 1194 );
setSeVolume( spep_2 + 24, 1194, 120 );

SE3 = playSe( spep_2 + 70, 1193 );  --気弾連射
setSeVolume( spep_2 + 70, 1193, 290 );
setSeVolume( spep_2 + 94, 1193, 141 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 96;

------------------------------------------------------
-- フィニッシュ(154F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --フィニッシュ(ef_003)
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 156, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 156, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 156, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 156, finish_f, 255 );

finish_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --フィニッシュ(ef_004)
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 156, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 156, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 156, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 156, finish_b, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_3 + 66 -3, 906, 90 +3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 66 -3, shuchusen2, 90 +3, 20 );

setEffMoveKey( spep_3 + 66 -3, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 156, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 66 -3, shuchusen2, 1.4, 1.4 );
setEffScaleKey( spep_3 + 156, shuchusen2, 1.4, 1.4 );

setEffRotateKey( spep_3 + 66 -3, shuchusen2, 0 );
setEffRotateKey( spep_3 + 156, shuchusen2, 0 );

setEffAlphaKey( spep_3 + 66 -3, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 156, shuchusen2, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 24, 1, 0 );
changeAnime( spep_3 + 0, 1, 102 );
changeAnime( spep_3 -3 + 14, 1, 108 );

setMoveKey( spep_3 + 0, 1, -3.7, -71.4 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -0.8, -74.3 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 0, -70.5 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 0.7, -66.5 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 1.4, -62.3 , 0 );
setMoveKey( spep_3 -3 + 13, 1, 3.4, -64 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 4.8, -149.5 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 46.5, -253.1 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 84.9, -347.7 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 119.1, -431.3 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 158.1, -534.8 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 158.1, -534.8 , 0 );
setMoveKey( spep_3 + 24, 1, 158.1, -534.8 , 0 );

setScaleKey( spep_3 + 0, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 4, 1, 1.69, 1.69 );
setScaleKey( spep_3 -3 + 6, 1, 1.64, 1.64 );
setScaleKey( spep_3 -3 + 8, 1, 1.58, 1.58 );
setScaleKey( spep_3 -3 + 10, 1, 1.53, 1.53 );
setScaleKey( spep_3 -3 + 13, 1, 1.45, 1.45 );
setScaleKey( spep_3 -3 + 14, 1, 1.47, 1.47 );
setScaleKey( spep_3 -3 + 16, 1, 1.41, 1.41 );
setScaleKey( spep_3 -3 + 18, 1, 1.33, 1.33 );
setScaleKey( spep_3 -3 + 20, 1, 1.28, 1.28 );
setScaleKey( spep_3 + 24, 1, 1.28, 1.28 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 13, 1, 0 );
setRotateKey( spep_3 -3 + 14, 1, 47.4 );
setRotateKey( spep_3 + 24, 1, 47.4 );


-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 156, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 34 -3, 30, 2, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
stopSe( spep_3 + 27, SE2, 0 );

--気弾発射
setSeVolume( spep_3 + 34, 1193, 141 );
setSeVolume( spep_3 + 40, 1193, 100 );
setSeVolume( spep_3 + 46, 1193, 70 );
setSeVolume( spep_3 + 50, 1193, 40 );
setSeVolume( spep_3 + 57, 1193, 0 );
stopSe( spep_3 + 57, SE3, 0 );

--叩きつけ
SE4 = playSe( spep_3 + 22, 1153 );
setSeVolume( spep_3 + 22, 1153, 70 );
setSeVolume( spep_3 + 32, 1153, 60 );
setSeVolume( spep_3 + 36, 1153, 30 );
setSeVolume( spep_3 + 40, 1153, 0 );
stopSe( spep_3 + 40, SE4, 0 );

playSe( spep_3 + 28, 1023 );
setSeVolume( spep_3 + 28, 1023, 80 );

playSe( spep_3 + 28, 20 );
setSeVolume( spep_3 + 28, 20, 90 );

playSe( spep_3 + 72, 1159 );  --爆発
setSeVolume( spep_3 + 72, 1159, 90 );

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 52 );
endPhase( spep_3 + 152 );

end