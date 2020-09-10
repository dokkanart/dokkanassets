--孫悟天(幼年期)_フュージョン

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
SP_01 = 155407;  --導入、フュージョン前半
SP_02 = 155408;  --フュージョン後半
SP_03 = 155409;  --フュージョン完了、前方突進
SP_04 = 155410;  --ラッシュ_敵より前
SP_05 = 155411;  --ラッシュ_敵より後ろ
SP_06 = 155412;  --ラストシーン背景

--敵側
SP_04x = 155413;  --ラッシュ_敵より前

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
-- 導入、フュージョン前半(168F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --導入、フュージョン前半(ef_001)
setEffMoveKey( spep_0 + 0, first, 0, 0 , 0 );
setEffMoveKey( spep_0 + 168, first, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first, 1.0, 1.0 );
setEffScaleKey( spep_0 + 168, first, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first, 0 );
setEffRotateKey( spep_0 + 168, first, 0 );
setEffAlphaKey( spep_0 + 0, first, 255 );
setEffAlphaKey( spep_0 + 168, first, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 18 -3, 906, 150 +3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 18 -3, shuchusen1, 150 +3, 20 );

setEffMoveKey( spep_0 + 18 -3, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 168, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 18 -3, shuchusen1, 1.4, 1.4 );
setEffScaleKey( spep_0 + 168, shuchusen1, 1.4, 1.4 );

setEffRotateKey( spep_0 + 18 -3, shuchusen1, 0 );
setEffRotateKey( spep_0 + 168, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 18 -3, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 54 -3, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 55 -3, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 79 -3, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 80 -3, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 112 -3, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 113 -3, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 149 -3, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 150 -3, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 168, shuchusen1, 255 );

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 2, 14, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 92 -3, 12, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 168 -6, 4, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 170, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--悟天イン
playSe( spep_0 + 11, 44 );
playSe( spep_0 + 22, 1042 );
playSe( spep_0 + 24, 1046 );
setSeVolume( spep_0 + 24, 1046, 58 );

--トランクスイン
playSe( spep_0 + 68, 44 );
playSe( spep_0 + 81, 1026 );
setSeVolume( spep_0 + 81, 1026, 73 );
playSe( spep_0 + 82, 1042 );

--フュージョン
playSe( spep_0 + 118, 4 );
playSe( spep_0 + 126, 4 );
playSe( spep_0 + 136, 4 );
playSe( spep_0 + 151, 1003 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 168;

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
-- フュージョン後半(82F)
------------------------------------------------------

-- ** エフェクト等 ** --
fusion = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --フュージョン後半(ef_002)
setEffMoveKey( spep_2 + 0, fusion, 0, 0 , 0 );
setEffMoveKey( spep_2 + 82, fusion, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, fusion, 1.0, 1.0 );
setEffScaleKey( spep_2 + 82, fusion, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fusion, 0 );
setEffRotateKey( spep_2 + 82, fusion, 0 );
setEffAlphaKey( spep_2 + 0, fusion, 255 );
setEffAlphaKey( spep_2 + 82, fusion, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 8 -3, 906, 74 +3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 8 -3, shuchusen2, 74 +3, 20 );

setEffMoveKey( spep_2 + 8 -3, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 82, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 8 -3, shuchusen2, 1.4, 1.4 );
setEffScaleKey( spep_2 + 82, shuchusen2, 1.4, 1.4 );

setEffRotateKey( spep_2 + 8 -3, shuchusen2, 0 );
setEffRotateKey( spep_2 + 82, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 8 -3, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 82, shuchusen2, 255 );

-- ** 音 ** --
--はっ！
playSe( spep_2 + 9, 1113 );
setSeVolume( spep_2 + 9, 1113, 162 );
playSe( spep_2 + 10, 1048 );
playSe( spep_2 + 12, 4 );

--変身
playSe( spep_2 + 40, 1027 );
SE0 = playSe( spep_2 + 40, 1184 );
stopSe( spep_2 + 69, SE0, 30 );
SE1 = playSe( spep_2 + 45, 1127 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 84, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_2 + 82 -16, 14, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 82;

------------------------------------------------------
-- フュージョン完了、前方突進(146F)
------------------------------------------------------

-- ** エフェクト等 ** --
tosshin = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --フュージョン完了、前方突進(ef_003)
setEffMoveKey( spep_3 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_3 + 146, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tosshin, 1.0, 1.0 );
setEffScaleKey( spep_3 + 146, tosshin, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tosshin, 0 );
setEffRotateKey( spep_3 + 146, tosshin, 0 );
setEffAlphaKey( spep_3 + 0, tosshin, 255 );
setEffAlphaKey( spep_3 + 146, tosshin, 255 );

spep_x = spep_3 + 0;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 2000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );

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

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3 + 16, 906, 130, 0x100, -1, 0, 0, 0, 500 );  --集中線
setEffShake( spep_3 + 16, shuchusen3, 130, 20 );

setEffMoveKey( spep_3 + 16, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 146, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 16, shuchusen3, 1.4, 1.4 );
setEffScaleKey( spep_3 + 146, shuchusen3, 1.4, 1.4 );

setEffRotateKey( spep_3 + 16, shuchusen3, 0 );
setEffRotateKey( spep_3 + 146, shuchusen3, 0 );

setEffAlphaKey( spep_3 + 16, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 146, shuchusen3, 255 );

-- ** 音 ** --
--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

--変身
stopSe( spep_3 + 15, SE1, 29 );

--決め
playSe( spep_3 + 24, 1062 );

--ダッシュ
SE2 = playSe( spep_3 + 104, 9 );

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 148, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 146 -8, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 146;

------------------------------------------------------
-- ラッシュ(236F)
------------------------------------------------------

-- ** エフェクト等 ** --
rush_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --ラッシュ(ef_004)
setEffMoveKey( spep_4 + 0, rush_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 236, rush_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 236, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, rush_f, 0 );
setEffRotateKey( spep_4 + 236, rush_f, 0 );
setEffAlphaKey( spep_4 + 0, rush_f, 255 );
setEffAlphaKey( spep_4 + 236, rush_f, 255 );

rush_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --ラッシュ(ef_005)
setEffMoveKey( spep_4 + 0, rush_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 236, rush_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 236, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, rush_b, 0 );
setEffRotateKey( spep_4 + 236, rush_b, 0 );
setEffAlphaKey( spep_4 + 0, rush_b, 255 );
setEffAlphaKey( spep_4 + 236, rush_b, 255 );

-- ** 音 ** --
--ダッシュ
SE3 = playSe( spep_4 + 12, 44 );

-- ** 背景 ** --
entryFadeBg( spep_4 + 0, 0, 238, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_4 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE2, 0 );
stopSe( SP_dodge - 12, SE3, 0 );

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

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 -3 + 50, 906, 186 +3, 0x100, -1, 0, 0, 0, 500 );  --集中線
setEffShake( spep_4 -3 + 50, shuchusen4, 186 +3, 20 );

setEffMoveKey( spep_4 -3 + 50, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 236, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 -3 + 50, shuchusen4, 1.5, 1.5 );
setEffScaleKey( spep_4 + 236, shuchusen4, 1.5, 1.5 );

setEffRotateKey( spep_4 -3 + 50, shuchusen4, 0 );
setEffRotateKey( spep_4 + 236, shuchusen4, 0 );

setEffAlphaKey( spep_4 -3 + 50, shuchusen4, 255 );
setEffAlphaKey( spep_4 -3 + 62, shuchusen4, 255 );
setEffAlphaKey( spep_4 -3 + 63, shuchusen4, 0 );
setEffAlphaKey( spep_4 -3 + 147, shuchusen4, 0 );
setEffAlphaKey( spep_4 -3 + 148, shuchusen4, 255 );
setEffAlphaKey( spep_4 -3 + 162, shuchusen4, 255 );
setEffAlphaKey( spep_4 -3 + 163, shuchusen4, 0 );
setEffAlphaKey( spep_4 -3 + 203, shuchusen4, 0 );
setEffAlphaKey( spep_4 -3 + 204, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 236, shuchusen4, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 -3 + 50,  10005, 12, 0x100, -1, 0, -28.2, 294.1 );  --ガッ
setEffMoveKey( spep_4 -3 + 50, ctga, 28.2, 294.1 , 0 );
setEffMoveKey( spep_4 -3 + 52, ctga, 18.5, 296.1 , 0 );
setEffMoveKey( spep_4 -3 + 54, ctga, 28.2, 294.1 , 0 );
setEffMoveKey( spep_4 -3 + 56, ctga, 18.5, 296.1 , 0 );
setEffMoveKey( spep_4 -3 + 58, ctga, 28.2, 294.1 , 0 );
setEffMoveKey( spep_4 -3 + 60, ctga, 18.5, 296.1 , 0 );
setEffMoveKey( spep_4 -3 + 62, ctga, 28.2, 294.1 , 0 );

setEffScaleKey( spep_4 -3 + 50, ctga, 1.24, 1.24 );
setEffScaleKey( spep_4 -3 + 62, ctga, 1.24, 1.24 );

setEffRotateKey( spep_4 -3 + 50, ctga, -15 );
setEffRotateKey( spep_4 -3 + 62, ctga, -15 );

setEffAlphaKey( spep_4 -3 + 50, ctga, 255 );
setEffAlphaKey( spep_4 -3 + 62, ctga, 255 );

ctbaki = entryEffectLife( spep_4 -3 + 148,  10020, 14, 0x100, -1, 0, 62.4, 301.4 );  --バキッ
setEffMoveKey( spep_4 -3 + 148, ctbaki, -62.4, 301.4 , 0 );
setEffMoveKey( spep_4 -3 + 150, ctbaki, -75.6, 314.5 , 0 );
setEffMoveKey( spep_4 -3 + 152, ctbaki, -62.4, 301.4 , 0 );
setEffMoveKey( spep_4 -3 + 154, ctbaki, -75.6, 314.5 , 0 );
setEffMoveKey( spep_4 -3 + 156, ctbaki, -62.4, 301.4 , 0 );
setEffMoveKey( spep_4 -3 + 158, ctbaki, -75.6, 314.5 , 0 );
setEffMoveKey( spep_4 -3 + 160, ctbaki, -62.4, 301.4 , 0 );
setEffMoveKey( spep_4 -3 + 162, ctbaki, -75.6, 314.5 , 0 );

setEffScaleKey( spep_4 -3 + 148, ctbaki, 1.46, 1.46 );
setEffScaleKey( spep_4 -3 + 162, ctbaki, 1.46, 1.46 );

setEffRotateKey( spep_4 -3 + 148, ctbaki, 0 );
setEffRotateKey( spep_4 -3 + 162, ctbaki, 0 );

setEffAlphaKey( spep_4 -3 + 148, ctbaki, 255 );
setEffAlphaKey( spep_4 -3 + 162, ctbaki, 255 );

ctdogon = entryEffectLife( spep_4 -3 + 204,  10018, 32, 0x100, -1, 0, -91.9, 194.2 );  --ドゴォン
setEffMoveKey( spep_4 -3 + 204, ctdogon, 91.9, 194.2 , 0 );
setEffMoveKey( spep_4 -3 + 206, ctdogon, 97.6, 250.8 , 0 );
setEffMoveKey( spep_4 -3 + 208, ctdogon, 86.9, 297.4 , 0 );
setEffMoveKey( spep_4 -3 + 210, ctdogon, 99.7, 296.5 , 0 );
setEffMoveKey( spep_4 -3 + 212, ctdogon, 92.7, 306.1 , 0 );
setEffMoveKey( spep_4 -3 + 214, ctdogon, 91.3, 293 , 0 );
setEffMoveKey( spep_4 -3 + 216, ctdogon, 96.1, 308.5 , 0 );
setEffMoveKey( spep_4 -3 + 218, ctdogon, 89.4, 299.1 , 0 );
setEffMoveKey( spep_4 -3 + 220, ctdogon, 96.8, 303.6 , 0 );
setEffMoveKey( spep_4 -3 + 222, ctdogon, 90.8, 298.4 , 0 );
setEffMoveKey( spep_4 -3 + 224, ctdogon, 90.3, 307.3 , 0 );
setEffMoveKey( spep_4 -3 + 226, ctdogon, 90.5, 298.9 , 0 );
setEffMoveKey( spep_4 -3 + 228, ctdogon, 94.4, 309.2 , 0 );
setEffMoveKey( spep_4 -3 + 230, ctdogon, 84.5, 304.8 , 0 );
setEffMoveKey( spep_4 -3 + 232, ctdogon, 115.8, 308.1 , 0 );
setEffMoveKey( spep_4 -3 + 234, ctdogon, 114.6, 290.5 , 0 );
setEffMoveKey( spep_4 -3 + 236, ctdogon, 131.4, 283.3 , 0 );

setEffScaleKey( spep_4 -3 + 204, ctdogon, 0.65, 0.65 );
setEffScaleKey( spep_4 -3 + 206, ctdogon, 1.77, 1.77 );
setEffScaleKey( spep_4 -3 + 208, ctdogon, 2.9, 2.9 );
setEffScaleKey( spep_4 -3 + 210, ctdogon, 2.92, 2.92 );
setEffScaleKey( spep_4 -3 + 212, ctdogon, 2.94, 2.94 );
setEffScaleKey( spep_4 -3 + 214, ctdogon, 2.96, 2.96 );
setEffScaleKey( spep_4 -3 + 216, ctdogon, 2.98, 2.98 );
setEffScaleKey( spep_4 -3 + 218, ctdogon, 3.01, 3.01 );
setEffScaleKey( spep_4 -3 + 220, ctdogon, 3.03, 3.03 );
setEffScaleKey( spep_4 -3 + 222, ctdogon, 3.05, 3.05 );
setEffScaleKey( spep_4 -3 + 224, ctdogon, 3.07, 3.07 );
setEffScaleKey( spep_4 -3 + 226, ctdogon, 3.09, 3.09 );
setEffScaleKey( spep_4 -3 + 228, ctdogon, 3.11, 3.11 );
setEffScaleKey( spep_4 -3 + 230, ctdogon, 3.13, 3.13 );
setEffScaleKey( spep_4 -3 + 232, ctdogon, 3.71, 3.71 );
setEffScaleKey( spep_4 -3 + 234, ctdogon, 4.28, 4.28 );
setEffScaleKey( spep_4 -3 + 236, ctdogon, 4.85, 4.85 );

setEffRotateKey( spep_4 -3 + 204, ctdogon, 30 );
setEffRotateKey( spep_4 -3 + 206, ctdogon, 29.9 );
setEffRotateKey( spep_4 -3 + 218, ctdogon, 29.9 );
setEffRotateKey( spep_4 -3 + 220, ctdogon, 30 );
setEffRotateKey( spep_4 -3 + 236, ctdogon, 30 );

setEffAlphaKey( spep_4 -3 + 204, ctdogon, 255 );
setEffAlphaKey( spep_4 -3 + 230, ctdogon, 255 );
setEffAlphaKey( spep_4 -3 + 232, ctdogon, 170 );
setEffAlphaKey( spep_4 -3 + 234, ctdogon, 85 );
setEffAlphaKey( spep_4 -3 + 236, ctdogon, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 22, 1, 1 );
setDisp( spep_4 -3 + 216, 1, 0 );
changeAnime( spep_4 -3 + 22, 1, 100 );
changeAnime( spep_4 -3 + 50, 1, 108 );
changeAnime( spep_4 -3 + 68, 1, 106 );
changeAnime( spep_4 -3 + 148, 1, 108 );
changeAnime( spep_4 -3 + 204, 1, 106 );

setMoveKey( spep_4 -3 + 22, 1, 1567, 66.5 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 1427.4, 66.9 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 1283.5, 67.3 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 1136.1, 67.8 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 985.9, 68.2 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 833.2, 68.6 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 678.9, 69 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 523.5, 69.5 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 367.9, 69.9 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 324.2, 69.9 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 276.5, 69.9 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 224.7, 69.9 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 168.8, 69.9 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 108.9, 69.9 , 0 );
setMoveKey( spep_4 -3 + 49, 1, 108.9, 69.9 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 119.8, 87.3 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 132, 97.3 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 114.3, 77.3 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 136.5, 97.3 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 128.8, 87.3 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 141, 97.3 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 123.3, 77.3 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 145.5, 97.3 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 137.8, 87.3 , 0 );
setMoveKey( spep_4 -3 + 67, 1, 137.8, 87.3 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 81.5, 94.1 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 81.8, 94.1 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 82.1, 94 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 82.3, 94 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 82.6, 94 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 82.9, 94 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 83.2, 94 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 83.5, 93.9 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 83.8, 93.9 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 84.1, 93.9 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 84.4, 93.9 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 84.7, 93.9 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 85, 93.8 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 85.2, 93.8 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 85.5, 93.8 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 85.8, 93.8 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 86.1, 93.8 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 86.4, 93.7 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 86.7, 93.7 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 87, 93.7 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 87.3, 93.7 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 87.6, 93.7 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 87.9, 93.6 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 88.1, 93.6 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 88.4, 93.6 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 88.7, 93.6 , 0 );
setMoveKey( spep_4 -3 + 120, 1, 89, 93.6 , 0 );
setMoveKey( spep_4 -3 + 122, 1, 89.3, 93.5 , 0 );
setMoveKey( spep_4 -3 + 124, 1, 89.6, 93.5 , 0 );
setMoveKey( spep_4 -3 + 126, 1, 89.9, 93.5 , 0 );
setMoveKey( spep_4 -3 + 128, 1, 90.2, 93.5 , 0 );
setMoveKey( spep_4 -3 + 130, 1, 90.5, 93.5 , 0 );
setMoveKey( spep_4 -3 + 132, 1, 90.8, 93.4 , 0 );
setMoveKey( spep_4 -3 + 134, 1, 91, 93.4 , 0 );
setMoveKey( spep_4 -3 + 136, 1, 91.3, 93.4 , 0 );
setMoveKey( spep_4 -3 + 138, 1, 91.6, 93.4 , 0 );
setMoveKey( spep_4 -3 + 140, 1, 91.9, 93.3 , 0 );
setMoveKey( spep_4 -3 + 142, 1, 92.2, 93.3 , 0 );
setMoveKey( spep_4 -3 + 144, 1, 92.5, 93.3 , 0 );
setMoveKey( spep_4 -3 + 146, 1, 92.8, 93.3 , 0 );
setMoveKey( spep_4 -3 + 147, 1, 92.8, 93.3 , 0 );
setMoveKey( spep_4 -3 + 148, 1, 76.6, 97.5 , 0 );
setMoveKey( spep_4 -3 + 150, 1, 116.3, 103.9 , 0 );
setMoveKey( spep_4 -3 + 152, 1, 125.9, 80.3 , 0 );
setMoveKey( spep_4 -3 + 154, 1, 146.7, 100 , 0 );
setMoveKey( spep_4 -3 + 156, 1, 137.4, 89.7 , 0 );
setMoveKey( spep_4 -3 + 158, 1, 138.1, 89.5 , 0 );
setMoveKey( spep_4 -3 + 160, 1, 138.9, 89.2 , 0 );
setMoveKey( spep_4 -3 + 162, 1, 139.6, 88.9 , 0 );
setMoveKey( spep_4 -3 + 164, 1, 140.4, 88.6 , 0 );
setMoveKey( spep_4 -3 + 166, 1, 141.1, 88.3 , 0 );
setMoveKey( spep_4 -3 + 168, 1, 141.8, 88 , 0 );
setMoveKey( spep_4 -3 + 170, 1, 142.6, 87.7 , 0 );
setMoveKey( spep_4 -3 + 172, 1, 143.3, 87.4 , 0 );
setMoveKey( spep_4 -3 + 174, 1, 144.1, 87.2 , 0 );
setMoveKey( spep_4 -3 + 176, 1, 144.8, 86.9 , 0 );
setMoveKey( spep_4 -3 + 178, 1, 145.5, 86.6 , 0 );
setMoveKey( spep_4 -3 + 180, 1, 146.3, 86.3 , 0 );
setMoveKey( spep_4 -3 + 182, 1, 147, 86 , 0 );
setMoveKey( spep_4 -3 + 184, 1, 147.8, 85.7 , 0 );
setMoveKey( spep_4 -3 + 186, 1, 148.5, 85.4 , 0 );
setMoveKey( spep_4 -3 + 188, 1, 149.2, 85.1 , 0 );
setMoveKey( spep_4 -3 + 190, 1, 150, 84.8 , 0 );
setMoveKey( spep_4 -3 + 192, 1, 150.7, 84.6 , 0 );
setMoveKey( spep_4 -3 + 194, 1, 151.5, 84.3 , 0 );
setMoveKey( spep_4 -3 + 196, 1, 152.2, 84 , 0 );
setMoveKey( spep_4 -3 + 198, 1, 152.9, 83.7 , 0 );
setMoveKey( spep_4 -3 + 200, 1, 153.7, 83.4 , 0 );
setMoveKey( spep_4 -3 + 202, 1, 154.4, 83.1 , 0 );
setMoveKey( spep_4 -3 + 203, 1, 154.4, 83.1 , 0 );
setMoveKey( spep_4 -3 + 204, 1, 86.8, 131 , 0 );
setMoveKey( spep_4 -3 + 206, 1, 195.7, 111 , 0 );
setMoveKey( spep_4 -3 + 208, 1, 344.5, 131 , 0 );
setMoveKey( spep_4 -3 + 210, 1, 463.4, 121 , 0 );
setMoveKey( spep_4 -3 + 212, 1, 602.3, 130.9 , 0 );
setMoveKey( spep_4 -3 + 214, 1, 711.2, 110.9 , 0 );
setMoveKey( spep_4 -3 + 216, 1, 860.1, 130.9 , 0 );

setScaleKey( spep_4 -3 + 22, 1, 1.92, 1.92 );
setScaleKey( spep_4 -3 + 24, 1, 1.85, 1.85 );
setScaleKey( spep_4 -3 + 26, 1, 1.78, 1.78 );
setScaleKey( spep_4 -3 + 28, 1, 1.72, 1.72 );
setScaleKey( spep_4 -3 + 30, 1, 1.65, 1.65 );
setScaleKey( spep_4 -3 + 32, 1, 1.57, 1.57 );
setScaleKey( spep_4 -3 + 34, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 36, 1, 1.44, 1.44 );
setScaleKey( spep_4 -3 + 38, 1, 1.37, 1.37 );
setScaleKey( spep_4 -3 + 40, 1, 1.38, 1.38 );
setScaleKey( spep_4 -3 + 42, 1, 1.38, 1.38 );
setScaleKey( spep_4 -3 + 44, 1, 1.39, 1.39 );
setScaleKey( spep_4 -3 + 46, 1, 1.39, 1.39 );
setScaleKey( spep_4 -3 + 48, 1, 1.4, 1.4 );
setScaleKey( spep_4 -3 + 49, 1, 1.4, 1.4 );
setScaleKey( spep_4 -3 + 50, 1, 1.45, 1.45 );
setScaleKey( spep_4 -3 + 66, 1, 1.45, 1.45 );
setScaleKey( spep_4 -3 + 67, 1, 1.45, 1.45 );
setScaleKey( spep_4 -3 + 68, 1, 1.4, 1.4 );
setScaleKey( spep_4 -3 + 70, 1, 1.39, 1.39 );
setScaleKey( spep_4 -3 + 147, 1, 1.39, 1.39 );
setScaleKey( spep_4 -3 + 148, 1, 1.4, 1.4 );
setScaleKey( spep_4 -3 + 203, 1, 1.4, 1.4 );
setScaleKey( spep_4 -3 + 204, 1, 1.4, 1.4 );
setScaleKey( spep_4 -3 + 216, 1, 1.4, 1.4 );

setRotateKey( spep_4 -3 + 22, 1, 0 );
setRotateKey( spep_4 -3 + 49, 1, 0 );
setRotateKey( spep_4 -3 + 50, 1, 0 );
setRotateKey( spep_4 -3 + 66, 1, 0 );
setRotateKey( spep_4 -3 + 67, 1, 0 );
setRotateKey( spep_4 -3 + 68, 1, -39.8 );
setRotateKey( spep_4 -3 + 106, 1, -39.8 );
setRotateKey( spep_4 -3 + 108, 1, -39.9 );
setRotateKey( spep_4 -3 + 147, 1, -39.9 );
setRotateKey( spep_4 -3 + 148, 1, -5 );
setRotateKey( spep_4 -3 + 203, 1, -5 );
setRotateKey( spep_4 -3 + 204, 1, -36.4 );
setRotateKey( spep_4 -3 + 206, 1, -33.5 );
setRotateKey( spep_4 -3 + 208, 1, -30.6 );
setRotateKey( spep_4 -3 + 210, 1, -27.6 );
setRotateKey( spep_4 -3 + 212, 1, -24.7 );
setRotateKey( spep_4 -3 + 214, 1, -21.8 );
setRotateKey( spep_4 -3 + 216, 1, -18.9 );

-- ** 音 ** --
--キック
playSe( spep_4 + 57, 1003 );
playSe( spep_4 + 62, 1010 );
playSe( spep_4 + 63, 1110 );

--腕回転

playSe( spep_4 + 98, 1003 );
setSeVolume( spep_4 + 98, 1003, 69 );

SE4 = playSe( spep_4 + 98, 1117 );
setSeVolume(spep_4 + 98, 1117, 82);
--[[
setSeVolume( spep_4 + 99, 1117, 102 );
setSeVolume( spep_4 + 108, 1117, 82 );
setSeVolume( spep_4 + 110, 1117, 47 );
setSeVolume( spep_4 + 112, 1117, 21 );
setSeVolume( spep_4 + 114, 1117, 0 );
]]
stopSe( spep_4 + 108, SE4, 7 );

SE5 = playSe( spep_4 + 116, 1117 );
--[[
setSeVolume( spep_4 + 116, 1117, 103 );
setSeVolume( spep_4 + 125, 1117, 43 );
setSeVolume( spep_4 + 128, 1117, 28 );
setSeVolume( spep_4 + 130, 1117, 12 );
setSeVolume( spep_4 + 132, 1117, 0 );
]]
stopSe( spep_4 + 126, SE5, 7 );


playSe( spep_4 + 116, 1003 );
setSeVolume( spep_4 + 116, 1003, 48 );
playSe( spep_4 + 130, 1003 );
setSeVolume( spep_4 + 130, 1003, 77 );


SE6 = playSe( spep_4 + 134, 1117 );
--[[
setSeVolume( spep_4 + 134, 1117, 109 );
setSeVolume( spep_4 + 143, 1117, 89 );
setSeVolume( spep_4 + 144, 1117, 57 );
setSeVolume( spep_4 + 146, 1117, 31 );
setSeVolume( spep_4 + 148, 1117, 4 );
setSeVolume( spep_4 + 149, 1117, 0 );
]]
stopSe( spep_4 + 144, SE6, 7 );


playSe( spep_4 + 138, 1003 );
setSeVolume( spep_4 + 138, 1003, 42 );
playSe( spep_4 + 142, 1003 );
setSeVolume( spep_4 + 142, 1003, 56 );
playSe( spep_4 + 146, 1003 );
setSeVolume( spep_4 + 146, 1003, 74 );


--パンチ
playSe( spep_4 + 157, 1009 );
playSe( spep_4 + 157, 1110 );
playSe( spep_4 + 157, 1001 );
setSeVolume( spep_4 + 157, 1001, 64 );

--イノシシアタック
playSe( spep_4 + 201, 1004 );
playSe( spep_4 + 208, 1187 );
setSeVolume( spep_4 + 208, 1187, 89 );
playSe( spep_4 + 210, 1110 );

-- ** 白フェード ** --
entryFade( spep_4 + 204 -3, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
entryFade( spep_4 + 236 -12, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 236;

------------------------------------------------------
-- ラスト(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
bg = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_5 + 100 +10, bg, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100 +10, bg, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, bg, 0 );
setEffRotateKey( spep_5 + 100 +10, bg, 0 );
setEffAlphaKey( spep_5 + 0, bg, 255 );
setEffAlphaKey( spep_5 + 100 +10, bg, 255 );

-- ** 集中線 ** --
shuchusen_1 = entryEffectLife( spep_5 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 14, shuchusen_1, 32, 25 );

setEffMoveKey( spep_5 + 14, shuchusen_1, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen_1, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen_1, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusen_1, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen_1, 0 );
setEffRotateKey( spep_5 + 46, shuchusen_1, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen_1, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen_1, 255 );
setEffAlphaKey( spep_5 + 30, shuchusen_1, 252 );
setEffAlphaKey( spep_5 + 32, shuchusen_1, 242 );
setEffAlphaKey( spep_5 + 34, shuchusen_1, 227 );
setEffAlphaKey( spep_5 + 36, shuchusen_1, 205 );
setEffAlphaKey( spep_5 + 38, shuchusen_1, 176 );
setEffAlphaKey( spep_5 + 40, shuchusen_1, 142 );
setEffAlphaKey( spep_5 + 42, shuchusen_1, 101 );
setEffAlphaKey( spep_5 + 44, shuchusen_1, 54 );
setEffAlphaKey( spep_5 + 46, shuchusen_1, 0 );

shuchusen_2 = entryEffectLife( spep_5 + 14,  1657, 86 +10, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_5 + 14, shuchusen_2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 10 +10, shuchusen_2, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen_2, 1, 1 );
setEffScaleKey( spep_5 + 100 +10, shuchusen_2, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen_2, 0 );
setEffRotateKey( spep_5 + 100 +10, shuchusen_2, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen_2, 255 );
setEffAlphaKey( spep_5 + 100 +10, shuchusen_2, 255 );

-- ** 書き文字エントリー ** --
ctga_1 = entryEffectLife( spep_5 + 14,  10005, 86 +10, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 14, ctga_1, 14, 20 );

setEffMoveKey( spep_5 + 14, ctga_1, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctga_1, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 100 +10, ctga_1, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctga_1, 3.2, 3.2 );
setEffScaleKey( spep_5 + 100 +10, ctga_1, 3.2, 3.2 );

setEffRotateKey( spep_5 + 14, ctga_1, -10.9 );
setEffRotateKey( spep_5 + 15, ctga_1, -10.9 );
setEffRotateKey( spep_5 + 16, ctga_1, -14.9 );
setEffRotateKey( spep_5 + 17, ctga_1, -14.9 );
setEffRotateKey( spep_5 + 18, ctga_1, -10.9 );
setEffRotateKey( spep_5 + 19, ctga_1, -10.9 );
setEffRotateKey( spep_5 + 20, ctga_1, -14.9 );
setEffRotateKey( spep_5 + 21, ctga_1, -14.9 );
setEffRotateKey( spep_5 + 22, ctga_1, -10.9 );
setEffRotateKey( spep_5 + 23, ctga_1, -10.9 );
setEffRotateKey( spep_5 + 24, ctga_1, -14.9 );
setEffRotateKey( spep_5 + 25, ctga_1, -14.9 );
setEffRotateKey( spep_5 + 26, ctga_1, -10.9 );
setEffRotateKey( spep_5 + 27, ctga_1, -10.9 );
setEffRotateKey( spep_5 + 28, ctga_1, -14.9 );
setEffRotateKey( spep_5 + 100 +10, ctga_1, -14.9 );

setEffAlphaKey( spep_5 + 14, ctga_1, 255 );
setEffAlphaKey( spep_5 + 100 +10, ctga_1, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_5 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_5 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_5 + 100 +10, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_5 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100 +10, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_5 + 2, hibiware, 0 );
setEffRotateKey( spep_5 + 100 +10, hibiware, 0 );

setEffAlphaKey( spep_5 + 2, hibiware, 0 );
setEffAlphaKey( spep_5 + 13, hibiware, 0 );
setEffAlphaKey( spep_5 + 14, hibiware, 255 );
setEffAlphaKey( spep_5 + 100 +10, hibiware, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );
setMoveKey( spep_5 + 0, 1, -3.8, -32.1 , 0 );
setMoveKey( spep_5 + 2, 1, -3.7, -56.6 , 0 );
setMoveKey( spep_5 + 4, 1, -3.4, -88.1 , 0 );
setMoveKey( spep_5 + 6, 1, -3.1, -126.6 , 0 );
setMoveKey( spep_5 + 8, 1, -2.8, -172.1 , 0 );
setMoveKey( spep_5 + 10, 1, -2.4, -224.6 , 0 );
setMoveKey( spep_5 + 12, 1, -1.9, -284.1 , 0 );
setMoveKey( spep_5 + 110, 1, -1.9, -284.1 , 0 );

y=0.4;

setScaleKey( spep_5 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 12, 1, 1.5-y, 1.5-y );
setScaleKey( spep_5 + 14, 1, 1.6-y, 1.6-y );
setScaleKey( spep_5 + 16, 1, 1.5-y, 1.5-y );
setScaleKey( spep_5 + 18, 1, 1.6-y, 1.6-y );
setScaleKey( spep_5 + 20, 1, 1.5-y, 1.5-y );
setScaleKey( spep_5 + 22, 1, 1.6-y, 1.6-y );
setScaleKey( spep_5 + 24, 1, 1.5-y, 1.5-y );
setScaleKey( spep_5 + 26, 1, 1.6-y, 1.6-y );
setScaleKey( spep_5 + 110, 1, 1.6-y, 1.6-y );

z=30;
setRotateKey( spep_5 + 0, 1, 0-z );
setRotateKey( spep_5 + 2, 1, 105-z );
setRotateKey( spep_5 + 4, 1, 240-z );
setRotateKey( spep_5 + 6, 1, 405-z );
setRotateKey( spep_5 + 8, 1, 600-z );
setRotateKey( spep_5 + 10, 1, 825-z );
setRotateKey( spep_5 + 12, 1, 1080-z );
setRotateKey( spep_5 + 110, 1, 1080-z );

-- ** 音 ** --
--ガッ
playSe( spep_5 + 24, 1054 );

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 10 );
endPhase( spep_5 + 100 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 導入、フュージョン前半(168F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --導入、フュージョン前半(ef_001)
setEffMoveKey( spep_0 + 0, first, 0, 0 , 0 );
setEffMoveKey( spep_0 + 168, first, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first, -1.0, 1.0 );
setEffScaleKey( spep_0 + 168, first, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first, 0 );
setEffRotateKey( spep_0 + 168, first, 0 );
setEffAlphaKey( spep_0 + 0, first, 255 );
setEffAlphaKey( spep_0 + 168, first, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 18 -3, 906, 150 +3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 18 -3, shuchusen1, 150 +3, 20 );

setEffMoveKey( spep_0 + 18 -3, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 168, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 18 -3, shuchusen1, 1.4, 1.4 );
setEffScaleKey( spep_0 + 168, shuchusen1, 1.4, 1.4 );

setEffRotateKey( spep_0 + 18 -3, shuchusen1, 0 );
setEffRotateKey( spep_0 + 168, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 18 -3, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 54 -3, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 55 -3, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 79 -3, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 80 -3, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 112 -3, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 113 -3, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 149 -3, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 150 -3, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 168, shuchusen1, 255 );

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 2, 14, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 92 -3, 12, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 168 -6, 4, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 170, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--悟天イン
playSe( spep_0 + 11, 44 );
playSe( spep_0 + 22, 1042 );
playSe( spep_0 + 24, 1046 );
setSeVolume( spep_0 + 24, 1046, 58 );

--トランクスイン
playSe( spep_0 + 68, 44 );
playSe( spep_0 + 81, 1026 );
setSeVolume( spep_0 + 81, 1026, 73 );
playSe( spep_0 + 82, 1042 );

--フュージョン
playSe( spep_0 + 118, 4 );
playSe( spep_0 + 126, 4 );
playSe( spep_0 + 136, 4 );
playSe( spep_0 + 151, 1003 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 168;

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
-- フュージョン後半(82F)
------------------------------------------------------

-- ** エフェクト等 ** --
fusion = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --フュージョン後半(ef_002)
setEffMoveKey( spep_2 + 0, fusion, 0, 0 , 0 );
setEffMoveKey( spep_2 + 82, fusion, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, fusion, -1.0, 1.0 );
setEffScaleKey( spep_2 + 82, fusion, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fusion, 0 );
setEffRotateKey( spep_2 + 82, fusion, 0 );
setEffAlphaKey( spep_2 + 0, fusion, 255 );
setEffAlphaKey( spep_2 + 82, fusion, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 8 -3, 906, 74 +3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 8 -3, shuchusen2, 74 +3, 20 );

setEffMoveKey( spep_2 + 8 -3, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 82, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 8 -3, shuchusen2, 1.4, 1.4 );
setEffScaleKey( spep_2 + 82, shuchusen2, 1.4, 1.4 );

setEffRotateKey( spep_2 + 8 -3, shuchusen2, 0 );
setEffRotateKey( spep_2 + 82, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 8 -3, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 82, shuchusen2, 255 );

-- ** 音 ** --
--はっ！
playSe( spep_2 + 9, 1113 );
setSeVolume( spep_2 + 9, 1113, 162 );
playSe( spep_2 + 10, 1048 );
playSe( spep_2 + 12, 4 );

--変身
playSe( spep_2 + 40, 1027 );
SE0 = playSe( spep_2 + 40, 1184 );
stopSe( spep_2 + 69, SE0, 30 );
SE1 = playSe( spep_2 + 45, 1127 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 84, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_2 + 82 -16, 14, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 82;

------------------------------------------------------
-- フュージョン完了、前方突進(146F)
------------------------------------------------------

-- ** エフェクト等 ** --
tosshin = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --フュージョン完了、前方突進(ef_003)
setEffMoveKey( spep_3 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_3 + 146, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tosshin, -1.0, 1.0 );
setEffScaleKey( spep_3 + 146, tosshin, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tosshin, 0 );
setEffRotateKey( spep_3 + 146, tosshin, 0 );
setEffAlphaKey( spep_3 + 0, tosshin, 255 );
setEffAlphaKey( spep_3 + 146, tosshin, 255 );

spep_x = spep_3 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 2000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9, 515.5, 3000 ); --ゴゴゴ
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

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3 + 16, 906, 130, 0x100, -1, 0, 0, 0, 500 );  --集中線
setEffShake( spep_3 + 16, shuchusen3, 130, 20 );

setEffMoveKey( spep_3 + 16, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 146, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 16, shuchusen3, 1.4, 1.4 );
setEffScaleKey( spep_3 + 146, shuchusen3, 1.4, 1.4 );

setEffRotateKey( spep_3 + 16, shuchusen3, 0 );
setEffRotateKey( spep_3 + 146, shuchusen3, 0 );

setEffAlphaKey( spep_3 + 16, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 146, shuchusen3, 255 );

-- ** 音 ** --
--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

--変身
stopSe( spep_3 + 15, SE1, 29 );

--決め
playSe( spep_3 + 24, 1062 );

--ダッシュ
SE2 = playSe( spep_3 + 104, 9 );

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 148, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 146 -8, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 146;

------------------------------------------------------
-- ラッシュ(236F)
------------------------------------------------------

-- ** エフェクト等 ** --
rush_f = entryEffect( spep_4 + 0, SP_04x, 0x100, -1, 0, 0, 0 );  --ラッシュ(ef_004)
setEffMoveKey( spep_4 + 0, rush_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 236, rush_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 236, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, rush_f, 0 );
setEffRotateKey( spep_4 + 236, rush_f, 0 );
setEffAlphaKey( spep_4 + 0, rush_f, 255 );
setEffAlphaKey( spep_4 + 236, rush_f, 255 );

rush_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --ラッシュ(ef_005)
setEffMoveKey( spep_4 + 0, rush_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 236, rush_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 236, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, rush_b, 0 );
setEffRotateKey( spep_4 + 236, rush_b, 0 );
setEffAlphaKey( spep_4 + 0, rush_b, 255 );
setEffAlphaKey( spep_4 + 236, rush_b, 255 );

-- ** 音 ** --
--ダッシュ
SE3 = playSe( spep_4 + 12, 44 );

-- ** 背景 ** --
entryFadeBg( spep_4 + 0, 0, 238, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_4 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE2, 0 );
stopSe( SP_dodge - 12, SE3, 0 );

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

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 -3 + 50, 906, 186 +3, 0x100, -1, 0, 0, 0, 500 );  --集中線
setEffShake( spep_4 -3 + 50, shuchusen4, 186 +3, 20 );

setEffMoveKey( spep_4 -3 + 50, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 236, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 -3 + 50, shuchusen4, 1.5, 1.5 );
setEffScaleKey( spep_4 + 236, shuchusen4, 1.5, 1.5 );

setEffRotateKey( spep_4 -3 + 50, shuchusen4, 0 );
setEffRotateKey( spep_4 + 236, shuchusen4, 0 );

setEffAlphaKey( spep_4 -3 + 50, shuchusen4, 255 );
setEffAlphaKey( spep_4 -3 + 62, shuchusen4, 255 );
setEffAlphaKey( spep_4 -3 + 63, shuchusen4, 0 );
setEffAlphaKey( spep_4 -3 + 147, shuchusen4, 0 );
setEffAlphaKey( spep_4 -3 + 148, shuchusen4, 255 );
setEffAlphaKey( spep_4 -3 + 162, shuchusen4, 255 );
setEffAlphaKey( spep_4 -3 + 163, shuchusen4, 0 );
setEffAlphaKey( spep_4 -3 + 203, shuchusen4, 0 );
setEffAlphaKey( spep_4 -3 + 204, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 236, shuchusen4, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 -3 + 50,  10005, 12, 0x100, -1, 0, -28.2, 294.1 );  --ガッ
setEffMoveKey( spep_4 -3 + 50, ctga, 28.2, 294.1 , 0 );
setEffMoveKey( spep_4 -3 + 52, ctga, 18.5, 296.1 , 0 );
setEffMoveKey( spep_4 -3 + 54, ctga, 28.2, 294.1 , 0 );
setEffMoveKey( spep_4 -3 + 56, ctga, 18.5, 296.1 , 0 );
setEffMoveKey( spep_4 -3 + 58, ctga, 28.2, 294.1 , 0 );
setEffMoveKey( spep_4 -3 + 60, ctga, 18.5, 296.1 , 0 );
setEffMoveKey( spep_4 -3 + 62, ctga, 28.2, 294.1 , 0 );

setEffScaleKey( spep_4 -3 + 50, ctga, 1.24, 1.24 );
setEffScaleKey( spep_4 -3 + 62, ctga, 1.24, 1.24 );

setEffRotateKey( spep_4 -3 + 50, ctga, -15 );
setEffRotateKey( spep_4 -3 + 62, ctga, -15 );

setEffAlphaKey( spep_4 -3 + 50, ctga, 255 );
setEffAlphaKey( spep_4 -3 + 62, ctga, 255 );

ctbaki = entryEffectLife( spep_4 -3 + 148,  10020, 14, 0x100, -1, 0, 62.4, 301.4 );  --バキッ
setEffMoveKey( spep_4 -3 + 148, ctbaki, -62.4, 301.4 , 0 );
setEffMoveKey( spep_4 -3 + 150, ctbaki, -75.6, 314.5 , 0 );
setEffMoveKey( spep_4 -3 + 152, ctbaki, -62.4, 301.4 , 0 );
setEffMoveKey( spep_4 -3 + 154, ctbaki, -75.6, 314.5 , 0 );
setEffMoveKey( spep_4 -3 + 156, ctbaki, -62.4, 301.4 , 0 );
setEffMoveKey( spep_4 -3 + 158, ctbaki, -75.6, 314.5 , 0 );
setEffMoveKey( spep_4 -3 + 160, ctbaki, -62.4, 301.4 , 0 );
setEffMoveKey( spep_4 -3 + 162, ctbaki, -75.6, 314.5 , 0 );

setEffScaleKey( spep_4 -3 + 148, ctbaki, 1.46, 1.46 );
setEffScaleKey( spep_4 -3 + 162, ctbaki, 1.46, 1.46 );

setEffRotateKey( spep_4 -3 + 148, ctbaki, 0 );
setEffRotateKey( spep_4 -3 + 162, ctbaki, 0 );

setEffAlphaKey( spep_4 -3 + 148, ctbaki, 255 );
setEffAlphaKey( spep_4 -3 + 162, ctbaki, 255 );

ctdogon = entryEffectLife( spep_4 -3 + 204,  10018, 32, 0x100, -1, 0, -91.9, 194.2 );  --ドゴォン
setEffMoveKey( spep_4 -3 + 204, ctdogon, 91.9, 194.2 , 0 );
setEffMoveKey( spep_4 -3 + 206, ctdogon, 97.6, 250.8 , 0 );
setEffMoveKey( spep_4 -3 + 208, ctdogon, 86.9, 297.4 , 0 );
setEffMoveKey( spep_4 -3 + 210, ctdogon, 99.7, 296.5 , 0 );
setEffMoveKey( spep_4 -3 + 212, ctdogon, 92.7, 306.1 , 0 );
setEffMoveKey( spep_4 -3 + 214, ctdogon, 91.3, 293 , 0 );
setEffMoveKey( spep_4 -3 + 216, ctdogon, 96.1, 308.5 , 0 );
setEffMoveKey( spep_4 -3 + 218, ctdogon, 89.4, 299.1 , 0 );
setEffMoveKey( spep_4 -3 + 220, ctdogon, 96.8, 303.6 , 0 );
setEffMoveKey( spep_4 -3 + 222, ctdogon, 90.8, 298.4 , 0 );
setEffMoveKey( spep_4 -3 + 224, ctdogon, 90.3, 307.3 , 0 );
setEffMoveKey( spep_4 -3 + 226, ctdogon, 90.5, 298.9 , 0 );
setEffMoveKey( spep_4 -3 + 228, ctdogon, 94.4, 309.2 , 0 );
setEffMoveKey( spep_4 -3 + 230, ctdogon, 84.5, 304.8 , 0 );
setEffMoveKey( spep_4 -3 + 232, ctdogon, 115.8, 308.1 , 0 );
setEffMoveKey( spep_4 -3 + 234, ctdogon, 114.6, 290.5 , 0 );
setEffMoveKey( spep_4 -3 + 236, ctdogon, 131.4, 283.3 , 0 );

setEffScaleKey( spep_4 -3 + 204, ctdogon, 0.65, 0.65 );
setEffScaleKey( spep_4 -3 + 206, ctdogon, 1.77, 1.77 );
setEffScaleKey( spep_4 -3 + 208, ctdogon, 2.9, 2.9 );
setEffScaleKey( spep_4 -3 + 210, ctdogon, 2.92, 2.92 );
setEffScaleKey( spep_4 -3 + 212, ctdogon, 2.94, 2.94 );
setEffScaleKey( spep_4 -3 + 214, ctdogon, 2.96, 2.96 );
setEffScaleKey( spep_4 -3 + 216, ctdogon, 2.98, 2.98 );
setEffScaleKey( spep_4 -3 + 218, ctdogon, 3.01, 3.01 );
setEffScaleKey( spep_4 -3 + 220, ctdogon, 3.03, 3.03 );
setEffScaleKey( spep_4 -3 + 222, ctdogon, 3.05, 3.05 );
setEffScaleKey( spep_4 -3 + 224, ctdogon, 3.07, 3.07 );
setEffScaleKey( spep_4 -3 + 226, ctdogon, 3.09, 3.09 );
setEffScaleKey( spep_4 -3 + 228, ctdogon, 3.11, 3.11 );
setEffScaleKey( spep_4 -3 + 230, ctdogon, 3.13, 3.13 );
setEffScaleKey( spep_4 -3 + 232, ctdogon, 3.71, 3.71 );
setEffScaleKey( spep_4 -3 + 234, ctdogon, 4.28, 4.28 );
setEffScaleKey( spep_4 -3 + 236, ctdogon, 4.85, 4.85 );

setEffRotateKey( spep_4 -3 + 204, ctdogon, 30 );
setEffRotateKey( spep_4 -3 + 206, ctdogon, 29.9 );
setEffRotateKey( spep_4 -3 + 218, ctdogon, 29.9 );
setEffRotateKey( spep_4 -3 + 220, ctdogon, 30 );
setEffRotateKey( spep_4 -3 + 236, ctdogon, 30 );

setEffAlphaKey( spep_4 -3 + 204, ctdogon, 255 );
setEffAlphaKey( spep_4 -3 + 230, ctdogon, 255 );
setEffAlphaKey( spep_4 -3 + 232, ctdogon, 170 );
setEffAlphaKey( spep_4 -3 + 234, ctdogon, 85 );
setEffAlphaKey( spep_4 -3 + 236, ctdogon, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 22, 1, 1 );
setDisp( spep_4 -3 + 216, 1, 0 );
changeAnime( spep_4 -3 + 22, 1, 100 );
changeAnime( spep_4 -3 + 50, 1, 108 );
changeAnime( spep_4 -3 + 68, 1, 106 );
changeAnime( spep_4 -3 + 148, 1, 108 );
changeAnime( spep_4 -3 + 204, 1, 106 );

setMoveKey( spep_4 -3 + 22, 1, 1567, 66.5 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 1427.4, 66.9 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 1283.5, 67.3 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 1136.1, 67.8 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 985.9, 68.2 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 833.2, 68.6 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 678.9, 69 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 523.5, 69.5 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 367.9, 69.9 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 324.2, 69.9 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 276.5, 69.9 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 224.7, 69.9 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 168.8, 69.9 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 108.9, 69.9 , 0 );
setMoveKey( spep_4 -3 + 49, 1, 108.9, 69.9 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 119.8, 87.3 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 132, 97.3 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 114.3, 77.3 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 136.5, 97.3 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 128.8, 87.3 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 141, 97.3 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 123.3, 77.3 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 145.5, 97.3 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 137.8, 87.3 , 0 );
setMoveKey( spep_4 -3 + 67, 1, 137.8, 87.3 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 81.5, 94.1 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 81.8, 94.1 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 82.1, 94 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 82.3, 94 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 82.6, 94 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 82.9, 94 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 83.2, 94 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 83.5, 93.9 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 83.8, 93.9 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 84.1, 93.9 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 84.4, 93.9 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 84.7, 93.9 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 85, 93.8 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 85.2, 93.8 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 85.5, 93.8 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 85.8, 93.8 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 86.1, 93.8 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 86.4, 93.7 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 86.7, 93.7 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 87, 93.7 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 87.3, 93.7 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 87.6, 93.7 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 87.9, 93.6 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 88.1, 93.6 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 88.4, 93.6 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 88.7, 93.6 , 0 );
setMoveKey( spep_4 -3 + 120, 1, 89, 93.6 , 0 );
setMoveKey( spep_4 -3 + 122, 1, 89.3, 93.5 , 0 );
setMoveKey( spep_4 -3 + 124, 1, 89.6, 93.5 , 0 );
setMoveKey( spep_4 -3 + 126, 1, 89.9, 93.5 , 0 );
setMoveKey( spep_4 -3 + 128, 1, 90.2, 93.5 , 0 );
setMoveKey( spep_4 -3 + 130, 1, 90.5, 93.5 , 0 );
setMoveKey( spep_4 -3 + 132, 1, 90.8, 93.4 , 0 );
setMoveKey( spep_4 -3 + 134, 1, 91, 93.4 , 0 );
setMoveKey( spep_4 -3 + 136, 1, 91.3, 93.4 , 0 );
setMoveKey( spep_4 -3 + 138, 1, 91.6, 93.4 , 0 );
setMoveKey( spep_4 -3 + 140, 1, 91.9, 93.3 , 0 );
setMoveKey( spep_4 -3 + 142, 1, 92.2, 93.3 , 0 );
setMoveKey( spep_4 -3 + 144, 1, 92.5, 93.3 , 0 );
setMoveKey( spep_4 -3 + 146, 1, 92.8, 93.3 , 0 );
setMoveKey( spep_4 -3 + 147, 1, 92.8, 93.3 , 0 );
setMoveKey( spep_4 -3 + 148, 1, 76.6, 97.5 , 0 );
setMoveKey( spep_4 -3 + 150, 1, 116.3, 103.9 , 0 );
setMoveKey( spep_4 -3 + 152, 1, 125.9, 80.3 , 0 );
setMoveKey( spep_4 -3 + 154, 1, 146.7, 100 , 0 );
setMoveKey( spep_4 -3 + 156, 1, 137.4, 89.7 , 0 );
setMoveKey( spep_4 -3 + 158, 1, 138.1, 89.5 , 0 );
setMoveKey( spep_4 -3 + 160, 1, 138.9, 89.2 , 0 );
setMoveKey( spep_4 -3 + 162, 1, 139.6, 88.9 , 0 );
setMoveKey( spep_4 -3 + 164, 1, 140.4, 88.6 , 0 );
setMoveKey( spep_4 -3 + 166, 1, 141.1, 88.3 , 0 );
setMoveKey( spep_4 -3 + 168, 1, 141.8, 88 , 0 );
setMoveKey( spep_4 -3 + 170, 1, 142.6, 87.7 , 0 );
setMoveKey( spep_4 -3 + 172, 1, 143.3, 87.4 , 0 );
setMoveKey( spep_4 -3 + 174, 1, 144.1, 87.2 , 0 );
setMoveKey( spep_4 -3 + 176, 1, 144.8, 86.9 , 0 );
setMoveKey( spep_4 -3 + 178, 1, 145.5, 86.6 , 0 );
setMoveKey( spep_4 -3 + 180, 1, 146.3, 86.3 , 0 );
setMoveKey( spep_4 -3 + 182, 1, 147, 86 , 0 );
setMoveKey( spep_4 -3 + 184, 1, 147.8, 85.7 , 0 );
setMoveKey( spep_4 -3 + 186, 1, 148.5, 85.4 , 0 );
setMoveKey( spep_4 -3 + 188, 1, 149.2, 85.1 , 0 );
setMoveKey( spep_4 -3 + 190, 1, 150, 84.8 , 0 );
setMoveKey( spep_4 -3 + 192, 1, 150.7, 84.6 , 0 );
setMoveKey( spep_4 -3 + 194, 1, 151.5, 84.3 , 0 );
setMoveKey( spep_4 -3 + 196, 1, 152.2, 84 , 0 );
setMoveKey( spep_4 -3 + 198, 1, 152.9, 83.7 , 0 );
setMoveKey( spep_4 -3 + 200, 1, 153.7, 83.4 , 0 );
setMoveKey( spep_4 -3 + 202, 1, 154.4, 83.1 , 0 );
setMoveKey( spep_4 -3 + 203, 1, 154.4, 83.1 , 0 );
setMoveKey( spep_4 -3 + 204, 1, 86.8, 131 , 0 );
setMoveKey( spep_4 -3 + 206, 1, 195.7, 111 , 0 );
setMoveKey( spep_4 -3 + 208, 1, 344.5, 131 , 0 );
setMoveKey( spep_4 -3 + 210, 1, 463.4, 121 , 0 );
setMoveKey( spep_4 -3 + 212, 1, 602.3, 130.9 , 0 );
setMoveKey( spep_4 -3 + 214, 1, 711.2, 110.9 , 0 );
setMoveKey( spep_4 -3 + 216, 1, 860.1, 130.9 , 0 );

setScaleKey( spep_4 -3 + 22, 1, 1.92, 1.92 );
setScaleKey( spep_4 -3 + 24, 1, 1.85, 1.85 );
setScaleKey( spep_4 -3 + 26, 1, 1.78, 1.78 );
setScaleKey( spep_4 -3 + 28, 1, 1.72, 1.72 );
setScaleKey( spep_4 -3 + 30, 1, 1.65, 1.65 );
setScaleKey( spep_4 -3 + 32, 1, 1.57, 1.57 );
setScaleKey( spep_4 -3 + 34, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 36, 1, 1.44, 1.44 );
setScaleKey( spep_4 -3 + 38, 1, 1.37, 1.37 );
setScaleKey( spep_4 -3 + 40, 1, 1.38, 1.38 );
setScaleKey( spep_4 -3 + 42, 1, 1.38, 1.38 );
setScaleKey( spep_4 -3 + 44, 1, 1.39, 1.39 );
setScaleKey( spep_4 -3 + 46, 1, 1.39, 1.39 );
setScaleKey( spep_4 -3 + 48, 1, 1.4, 1.4 );
setScaleKey( spep_4 -3 + 49, 1, 1.4, 1.4 );
setScaleKey( spep_4 -3 + 50, 1, 1.45, 1.45 );
setScaleKey( spep_4 -3 + 66, 1, 1.45, 1.45 );
setScaleKey( spep_4 -3 + 67, 1, 1.45, 1.45 );
setScaleKey( spep_4 -3 + 68, 1, 1.4, 1.4 );
setScaleKey( spep_4 -3 + 70, 1, 1.39, 1.39 );
setScaleKey( spep_4 -3 + 147, 1, 1.39, 1.39 );
setScaleKey( spep_4 -3 + 148, 1, 1.4, 1.4 );
setScaleKey( spep_4 -3 + 203, 1, 1.4, 1.4 );
setScaleKey( spep_4 -3 + 204, 1, 1.4, 1.4 );
setScaleKey( spep_4 -3 + 216, 1, 1.4, 1.4 );

setRotateKey( spep_4 -3 + 22, 1, 0 );
setRotateKey( spep_4 -3 + 49, 1, 0 );
setRotateKey( spep_4 -3 + 50, 1, 0 );
setRotateKey( spep_4 -3 + 66, 1, 0 );
setRotateKey( spep_4 -3 + 67, 1, 0 );
setRotateKey( spep_4 -3 + 68, 1, -39.8 );
setRotateKey( spep_4 -3 + 106, 1, -39.8 );
setRotateKey( spep_4 -3 + 108, 1, -39.9 );
setRotateKey( spep_4 -3 + 147, 1, -39.9 );
setRotateKey( spep_4 -3 + 148, 1, -5 );
setRotateKey( spep_4 -3 + 203, 1, -5 );
setRotateKey( spep_4 -3 + 204, 1, -36.4 );
setRotateKey( spep_4 -3 + 206, 1, -33.5 );
setRotateKey( spep_4 -3 + 208, 1, -30.6 );
setRotateKey( spep_4 -3 + 210, 1, -27.6 );
setRotateKey( spep_4 -3 + 212, 1, -24.7 );
setRotateKey( spep_4 -3 + 214, 1, -21.8 );
setRotateKey( spep_4 -3 + 216, 1, -18.9 );

-- ** 音 ** --
--キック
playSe( spep_4 + 57, 1003 );
playSe( spep_4 + 62, 1010 );
playSe( spep_4 + 63, 1110 );

--腕回転
playSe( spep_4 + 98, 1003 );
setSeVolume( spep_4 + 98, 1003, 69 );

SE4 = playSe( spep_4 + 98, 1117 );
setSeVolume(spep_4 + 98, 1117, 82);
--[[
setSeVolume( spep_4 + 99, 1117, 102 );
setSeVolume( spep_4 + 108, 1117, 82 );
setSeVolume( spep_4 + 110, 1117, 47 );
setSeVolume( spep_4 + 112, 1117, 21 );
setSeVolume( spep_4 + 114, 1117, 0 );
]]
stopSe( spep_4 + 108, SE4, 7 );

SE5 = playSe( spep_4 + 116, 1117 );
--[[
setSeVolume( spep_4 + 116, 1117, 103 );
setSeVolume( spep_4 + 125, 1117, 43 );
setSeVolume( spep_4 + 128, 1117, 28 );
setSeVolume( spep_4 + 130, 1117, 12 );
setSeVolume( spep_4 + 132, 1117, 0 );
]]
stopSe( spep_4 + 126, SE5, 7 );


playSe( spep_4 + 116, 1003 );
setSeVolume( spep_4 + 116, 1003, 48 );
playSe( spep_4 + 130, 1003 );
setSeVolume( spep_4 + 130, 1003, 77 );


SE6 = playSe( spep_4 + 134, 1117 );
--[[
setSeVolume( spep_4 + 134, 1117, 109 );
setSeVolume( spep_4 + 143, 1117, 89 );
setSeVolume( spep_4 + 144, 1117, 57 );
setSeVolume( spep_4 + 146, 1117, 31 );
setSeVolume( spep_4 + 148, 1117, 4 );
setSeVolume( spep_4 + 149, 1117, 0 );
]]
stopSe( spep_4 + 144, SE6, 7 );


playSe( spep_4 + 138, 1003 );
setSeVolume( spep_4 + 138, 1003, 42 );
playSe( spep_4 + 142, 1003 );
setSeVolume( spep_4 + 142, 1003, 56 );
playSe( spep_4 + 146, 1003 );
setSeVolume( spep_4 + 146, 1003, 74 );

--パンチ
playSe( spep_4 + 157, 1009 );
playSe( spep_4 + 157, 1110 );
playSe( spep_4 + 157, 1001 );
setSeVolume( spep_4 + 157, 1001, 64 );

--イノシシアタック
playSe( spep_4 + 201, 1004 );
playSe( spep_4 + 208, 1187 );
setSeVolume( spep_4 + 208, 1187, 89 );
playSe( spep_4 + 210, 1110 );

-- ** 白フェード ** --
entryFade( spep_4 + 204 -3, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
entryFade( spep_4 + 236 -12, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 236;

------------------------------------------------------
-- ラスト(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
bg = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_5 + 100 +10, bg, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100 +10, bg, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, bg, 0 );
setEffRotateKey( spep_5 + 100 +10, bg, 0 );
setEffAlphaKey( spep_5 + 0, bg, 255 );
setEffAlphaKey( spep_5 + 100 +10, bg, 255 );

-- ** 集中線 ** --
shuchusen_1 = entryEffectLife( spep_5 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 14, shuchusen_1, 32, 25 );

setEffMoveKey( spep_5 + 14, shuchusen_1, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen_1, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen_1, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusen_1, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen_1, 0 );
setEffRotateKey( spep_5 + 46, shuchusen_1, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen_1, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen_1, 255 );
setEffAlphaKey( spep_5 + 30, shuchusen_1, 252 );
setEffAlphaKey( spep_5 + 32, shuchusen_1, 242 );
setEffAlphaKey( spep_5 + 34, shuchusen_1, 227 );
setEffAlphaKey( spep_5 + 36, shuchusen_1, 205 );
setEffAlphaKey( spep_5 + 38, shuchusen_1, 176 );
setEffAlphaKey( spep_5 + 40, shuchusen_1, 142 );
setEffAlphaKey( spep_5 + 42, shuchusen_1, 101 );
setEffAlphaKey( spep_5 + 44, shuchusen_1, 54 );
setEffAlphaKey( spep_5 + 46, shuchusen_1, 0 );

shuchusen_2 = entryEffectLife( spep_5 + 14,  1657, 86 +10, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_5 + 14, shuchusen_2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100 +10, shuchusen_2, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen_2, 1, 1 );
setEffScaleKey( spep_5 + 100 +10, shuchusen_2, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen_2, 0 );
setEffRotateKey( spep_5 + 100 +10, shuchusen_2, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen_2, 255 );
setEffAlphaKey( spep_5 + 100 +10, shuchusen_2, 255 );

-- ** 書き文字エントリー ** --
ctga_1 = entryEffectLife( spep_5 + 14,  10005, 86 +10, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 14, ctga_1, 14, 20 );

setEffMoveKey( spep_5 + 14, ctga_1, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctga_1, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 100 +10, ctga_1, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctga_1, 3.2, 3.2 );
setEffScaleKey( spep_5 + 100 +10, ctga_1, 3.2, 3.2 );

setEffRotateKey( spep_5 + 14, ctga_1, -10.9 );
setEffRotateKey( spep_5 + 15, ctga_1, -10.9 );
setEffRotateKey( spep_5 + 16, ctga_1, -14.9 );
setEffRotateKey( spep_5 + 17, ctga_1, -14.9 );
setEffRotateKey( spep_5 + 18, ctga_1, -10.9 );
setEffRotateKey( spep_5 + 19, ctga_1, -10.9 );
setEffRotateKey( spep_5 + 20, ctga_1, -14.9 );
setEffRotateKey( spep_5 + 21, ctga_1, -14.9 );
setEffRotateKey( spep_5 + 22, ctga_1, -10.9 );
setEffRotateKey( spep_5 + 23, ctga_1, -10.9 );
setEffRotateKey( spep_5 + 24, ctga_1, -14.9 );
setEffRotateKey( spep_5 + 25, ctga_1, -14.9 );
setEffRotateKey( spep_5 + 26, ctga_1, -10.9 );
setEffRotateKey( spep_5 + 27, ctga_1, -10.9 );
setEffRotateKey( spep_5 + 28, ctga_1, -14.9 );
setEffRotateKey( spep_5 + 100 +10, ctga_1, -14.9 );

setEffAlphaKey( spep_5 + 14, ctga_1, 255 );
setEffAlphaKey( spep_5 + 100 +10, ctga_1, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_5 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_5 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_5 + 100 +10, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_5 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100 +10, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_5 + 2, hibiware, 0 );
setEffRotateKey( spep_5 + 100 +10, hibiware, 0 );

setEffAlphaKey( spep_5 + 2, hibiware, 0 );
setEffAlphaKey( spep_5 + 13, hibiware, 0 );
setEffAlphaKey( spep_5 + 14, hibiware, 255 );
setEffAlphaKey( spep_5 + 100 +10, hibiware, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );
setMoveKey( spep_5 + 0, 1, -3.8, -32.1 , 0 );
setMoveKey( spep_5 + 2, 1, -3.7, -56.6 , 0 );
setMoveKey( spep_5 + 4, 1, -3.4, -88.1 , 0 );
setMoveKey( spep_5 + 6, 1, -3.1, -126.6 , 0 );
setMoveKey( spep_5 + 8, 1, -2.8, -172.1 , 0 );
setMoveKey( spep_5 + 10, 1, -2.4, -224.6 , 0 );
setMoveKey( spep_5 + 12, 1, -1.9, -284.1 , 0 );
setMoveKey( spep_5 + 110, 1, -1.9, -284.1 , 0 );

y=0.4;

setScaleKey( spep_5 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 12, 1, 1.5-y, 1.5-y );
setScaleKey( spep_5 + 14, 1, 1.6-y, 1.6-y );
setScaleKey( spep_5 + 16, 1, 1.5-y, 1.5-y );
setScaleKey( spep_5 + 18, 1, 1.6-y, 1.6-y );
setScaleKey( spep_5 + 20, 1, 1.5-y, 1.5-y );
setScaleKey( spep_5 + 22, 1, 1.6-y, 1.6-y );
setScaleKey( spep_5 + 24, 1, 1.5-y, 1.5-y );
setScaleKey( spep_5 + 26, 1, 1.6-y, 1.6-y );
setScaleKey( spep_5 + 110, 1, 1.6-y, 1.6-y );

z=30;
setRotateKey( spep_5 + 0, 1, 0-z );
setRotateKey( spep_5 + 2, 1, 105-z );
setRotateKey( spep_5 + 4, 1, 240-z );
setRotateKey( spep_5 + 6, 1, 405-z );
setRotateKey( spep_5 + 8, 1, 600-z );
setRotateKey( spep_5 + 10, 1, 825-z );
setRotateKey( spep_5 + 12, 1, 1080-z );
setRotateKey( spep_5 + 110, 1, 1080-z );

-- ** 音 ** --
--ガッ
playSe( spep_5 + 24, 1054 );

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 10 );
endPhase( spep_5 + 100 );

end