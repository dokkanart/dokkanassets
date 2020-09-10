--スーパーベビー２_リバースドショット

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
SP_01 = 153048; --気弾連写
SP_02 = 153049; --迫るレーザー前
SP_03 = 153050; --迫るレーザー後ろ
SP_04 = 153051; --迫るレーザー背景
SP_05 = 153052; --帰ってくる気弾
SP_06 = 153053; --敵の背後から着弾
SP_07 = 153054; --光る円盤出す
SP_08 = 153055; --投げる
SP_09 = 153056; --投げる背景
SP_10 = 153057; --迫る円盤
SP_11 = 153058; --迫る円盤背景

--敵側
SP_01r = 153059; --
SP_02r = 153049; --
SP_03r = 153050; --
SP_04r = 153051; --
SP_05r = 153052; --
SP_06r = 153053; --
SP_07r = 153054; --
SP_08r = 153055; --
SP_09r = 153056; --
SP_10r = 153057; --
SP_11r = 153058; --

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
-- 連射(88F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
rensya = entryEffectLife( spep_0 + 0, SP_01, 88, 0x100, -1, 0, 0, 0 );  --連射(ef_001)
setEffMoveKey( spep_0 + 0, rensya, 0, 0 , 0 );
setEffMoveKey( spep_0 + 88, rensya, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, rensya, 1.0, 1.0 );
setEffScaleKey( spep_0 + 88, rensya, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, rensya, 0 );
setEffRotateKey( spep_0 + 88, rensya, 0 );
setEffAlphaKey( spep_0 + 0, rensya, 255 );
setEffAlphaKey( spep_0 + 86, rensya, 255 );
setEffAlphaKey( spep_0 + 87, rensya, 0 );
setEffAlphaKey( spep_0 + 88, rensya, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 88, 10 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 86, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.09, 1.99 );
setEffScaleKey( spep_0 + 86, shuchusen1, 1.09, 1.99 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 86, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 86, shuchusen1, 255 );



-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 88, 0, 0, 0, 0, 255 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 26; --エンドフェイズのフレーム数を置き換える

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
-- ** 音 ** --
playSe( spep_0 , 8 );  --上昇
playSe( spep_0 + 38,  1016);  --気弾
playSe( spep_0 + 46,  1016);  --気弾
playSe( spep_0 + 54,  1016);  --気弾
playSe( spep_0 + 62,  1016);  --気弾
playSe( spep_0 + 70,  1016);  --気弾
playSe( spep_0 + 78,  1016);  --気弾
--playSe( spep_0 + 86,  1016);  --気弾

-- ** 次の準備 ** --
spep_1 = spep_0 + 86;
------------------------------------------------------
--  着弾(80F)
------------------------------------------------------

--  ** 背景 **
tyakudanBG = entryEffectLife( spep_1 + 0, SP_04, 80, 0x80, -1, 0, 0, 0 );  --着弾　背景
setEffMoveKey( spep_1 + 0, tyakudanBG, 0, 0 , 0 );
setEffMoveKey( spep_1 + 80, tyakudanBG, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tyakudanBG, 1.0, 1.0 );
setEffScaleKey( spep_1 + 80, tyakudanBG, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tyakudanBG, 0 );
setEffRotateKey( spep_1 + 80, tyakudanBG, 0 );
setEffAlphaKey( spep_1 + 0, tyakudanBG, 255 );
setEffAlphaKey( spep_1 + 80, tyakudanBG, 255 );

-- ** 流線 ** --
ryusen = entryEffectLife( spep_1 + 0,  914, 80, 0x80, -1, 0, -142, 118 );  --流線

setEffScaleKey( spep_1 + 0, ryusen, 4.21, 1.32 );
setEffScaleKey( spep_1 + 80, ryusen, 4.21, 1.32 );
setEffRotateKey( spep_1 + 0, ryusen, -165 );
setEffRotateKey( spep_1 + 80, ryusen, -165 );
setEffAlphaKey( spep_1 + 0, ryusen, 255 );
setEffAlphaKey( spep_1 + 80, ryusen, 255 );

--  ** 流線 **
tyakudan_b = entryEffectLife( spep_1 + 0, SP_03, 80, 0x80, -1, 0, 0, 0 );  --着弾　奥(ef_003)
setEffMoveKey( spep_1 + 0, tyakudan_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 80, tyakudan_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tyakudan_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 80, tyakudan_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tyakudan_b, 0 );
setEffRotateKey( spep_1 + 80, tyakudan_b, 0 );
setEffAlphaKey( spep_1 + 0, tyakudan_b, 255 );
setEffAlphaKey( spep_1 + 80, tyakudan_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 80, 1, 0 );
changeAnime( spep_1 + 0, 1, 104 );
setShakeChara(  spep_1,  1,  80,  20);  --揺れ

setMoveKey( spep_1 + 0, 1, 516.6, -117.3 , 0 );
setMoveKey( spep_1 + 2, 1, 414.4, -89.7 , 0 );
setMoveKey( spep_1 + 4, 1, 312.2, -62.2 , 0 );
setMoveKey( spep_1 + 6, 1, 210, -34.7 , 0 );
setMoveKey( spep_1 + 8, 1, 107.8, -7.2 , 0 );
setMoveKey( spep_1 + 10, 1, 107.1, -7.2 , 0 );
setMoveKey( spep_1 + 12, 1, 106.4, -7.2 , 0 );
setMoveKey( spep_1 + 14, 1, 105.8, -7.2 , 0 );
setMoveKey( spep_1 + 16, 1, 105.1, -7.2 , 0 );
setMoveKey( spep_1 + 18, 1, 104.5, -7.2 , 0 );
setMoveKey( spep_1 + 20, 1, 102.5, -1.2 , 0 );
setMoveKey( spep_1 + 22, 1, 106.5, -13.2 , 0 );
setMoveKey( spep_1 + 24, 1, 98.5, -7.2 , 0 );
setMoveKey( spep_1 + 26, 1, 104.5, -7.2 , 0 );
setMoveKey( spep_1 + 28, 1, 105.6, -7.6 , 0 );
setMoveKey( spep_1 + 30, 1, 106.7, -8.1 , 0 );
setMoveKey( spep_1 + 32, 1, 107.9, -8.5 , 0 );
setMoveKey( spep_1 + 34, 1, 109, -8.9 , 0 );
setMoveKey( spep_1 + 36, 1, 110.2, -9.3 , 0 );
setMoveKey( spep_1 + 38, 1, 111.3, -9.8 , 0 );
setMoveKey( spep_1 + 40, 1, 112.5, -10.2 , 0 );
setMoveKey( spep_1 + 42, 1, 113.6, -10.6 , 0 );
setMoveKey( spep_1 + 44, 1, 114.7, -11.1 , 0 );
setMoveKey( spep_1 + 46, 1, 115.9, -11.5 , 0 );
setMoveKey( spep_1 + 48, 1, 117, -11.9 , 0 );
setMoveKey( spep_1 + 50, 1, 118.2, -12.3 , 0 );
setMoveKey( spep_1 + 52, 1, 119.3, -12.8 , 0 );
setMoveKey( spep_1 + 54, 1, 120.5, -13.2 , 0 );
setMoveKey( spep_1 + 56, 1, 122.5, -9.2 , 0 );
setMoveKey( spep_1 + 58, 1, 118.5, -17.2 , 0 );
setMoveKey( spep_1 + 60, 1, 118.5, -9.2 , 0 );
setMoveKey( spep_1 + 62, 1, 120.5, -13.2 , 0 );
setMoveKey( spep_1 + 64, 1, 122, -13.7 , 0 );
setMoveKey( spep_1 + 66, 1, 123.5, -14.2 , 0 );
setMoveKey( spep_1 + 68, 1, 125, -14.7 , 0 );
setMoveKey( spep_1 + 70, 1, 126.5, -15.2 , 0 );
setMoveKey( spep_1 + 72, 1, 122.5, -11.2 , 0 );
setMoveKey( spep_1 + 74, 1, 128.5, -19.2 , 0 );
setMoveKey( spep_1 + 76, 1, 130.5, -15.2 , 0 );
setMoveKey( spep_1 + 78, 1, 126.5, -15.2 , 0 );
setMoveKey( spep_1 + 80, 1, 126.9, -15.3 , 0 );

setScaleKey( spep_1 + 0, 1, 1, 1 );
setScaleKey( spep_1 + 80, 1, 1, 1 );

setRotateKey( spep_1 + 0, 1, 14.8 );
setRotateKey( spep_1 + 2, 1, 15 );
setRotateKey( spep_1 + 80, 1, 15 );

-- ** エフェクト等 ** --
tyakudan_f = entryEffectLife( spep_1 + 0, SP_02, 80, 0x100, -1, 0, 0, 0 );  --着弾　手前(ef_002)
setEffMoveKey( spep_1 + 0, tyakudan_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 80, tyakudan_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tyakudan_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 80, tyakudan_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tyakudan_f, 0 );
setEffRotateKey( spep_1 + 80, tyakudan_f, 0 );
setEffAlphaKey( spep_1 + 0, tyakudan_f, 255 );
setEffAlphaKey( spep_1 + 80, tyakudan_f, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_1 + 66, 14, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_1 , 1026 );  --伸びる気弾
playSe( spep_1 +16 , 1026 );  --伸びる気弾
--playSe( spep_1 +32, 1026 );  --伸びる気弾
playSe( spep_1 +48, 1026 );  --伸びる気弾
playSe( spep_1 +64, 1026 );  --伸びる気弾

-- ** 次の準備 ** --
spep_2 = spep_1 + 80;

------------------------------------------------------
-- 帰ってくるビーム(108F)
------------------------------------------------------

-- ** エフェクト等 ** --
beam = entryEffectLife( spep_2 + 0, SP_05, 108, 0x100, -1, 0, 0, 0 );  --ビーム(ef_004)
setEffMoveKey( spep_2 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_2 + 108, beam, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_2 + 108, beam, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam, 0 );
setEffRotateKey( spep_2 + 108, beam, 0 );
setEffAlphaKey( spep_2 + 0, beam, 255 );
setEffAlphaKey( spep_2 + 108, beam, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 0,  906, 108, 0x100, -1, 0, 0, 16 );  --集中線
setEffShake( spep_2 + 0, shuchusen2, 108, 10 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 16 , 0 );
setEffMoveKey( spep_2 + 108, shuchusen2, 0, 16 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.09, 1.99 );
setEffScaleKey( spep_2 + 108, shuchusen2, 1.09, 1.99 );

setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 108, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 108, shuchusen2, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 108, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 96, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_2 , 64 );  --集まる気弾
playSe( spep_2 + 66, 1016 );  --集まる気弾
playSe( spep_2 + 74, 1016 );  --集まる気弾
playSe( spep_2 + 80, 1016 );  --集まる気弾
playSe( spep_2 + 88, 1016 );  --集まる気弾
playSe( spep_2 + 96, 1016 );  --集まる気弾
playSe( spep_2 + 102, 1016 );  --集まる気弾

-- ** 次の準備 ** --
spep_3 = spep_2 + 108;

------------------------------------------------------
-- ビーム被弾(88F)
------------------------------------------------------

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3 + 14,  906, 74, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 14, shuchusen3, 88, 10 );

setEffMoveKey( spep_3 + 14, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 88, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen3, 1, 1 );
setEffScaleKey( spep_3 + 88, shuchusen3, 1, 1 );

setEffRotateKey( spep_3 + 10, shuchusen3, 0 );
setEffRotateKey( spep_3 + 88, shuchusen3, 0 );

setEffAlphaKey( spep_3 + 10, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 88, shuchusen3, 255 );

a = 3

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 88 , 1, 0 );
changeAnime( spep_3 + 0, 1, 100 );
changeAnime( spep_3 + 30 -a, 1, 106 );  --仰け反り

setMoveKey( spep_3 + 0, 1, 0, 0 , 0 );
setMoveKey( spep_3 + 22, 1, 0, 0 , 0 );
setMoveKey( spep_3 + 24, 1, -3.5, 7 , 0 );
setMoveKey( spep_3 + 26, 1, 4, -5.3 , 0 );
--setMoveKey( spep_3 + 29, 1, 7.5, 4.5 , 0 );
setMoveKey( spep_3 + 30 -a, 1, -33.1, -3 , 0 );  --仰け反り
setMoveKey( spep_3 + 32 -a, 1, -22.7, 0.1 , 0 );
setMoveKey( spep_3 + 34 -a, 1, -47.6, 13.5 , 0 );
setMoveKey( spep_3 + 36 -a, 1, -30.4, -8 , 0 );
setMoveKey( spep_3 + 38 -a, 1, -22.9, 5.2 , 0 );
setMoveKey( spep_3 + 40 -a, 1, -33.4, -3 , 0 );
setMoveKey( spep_3 + 42 -a, 1, -29.6, 0 , 0 );
setMoveKey( spep_3 + 44 -a, 1, -38.3, 10.9 , 0 );
setMoveKey( spep_3 + 46 -a, 1, -25, -6.8 , 0 );
setMoveKey( spep_3 + 48 -a, 1, -19.9, 4.6 , 0 );
setMoveKey( spep_3 + 50 -a, 1, -50.2, -4.6 , 0 );
setMoveKey( spep_3 + 52 -a, 1, -30.6, 0 , 0 );
setMoveKey( spep_3 + 54 -a, 1, -37.3, 10.6 , 0 );
setMoveKey( spep_3 + 56 -a, 1, -23, -6 , 0 );
setMoveKey( spep_3 + 58 -a, 1, -25.9, 5.9 , 0 );
setMoveKey( spep_3 + 60 -a, 1, -42.4, -3.8 , 0 );
setMoveKey( spep_3 + 62 -a, 1, -27.9, 0 , 0 );
setMoveKey( spep_3 + 64 -a, 1, -37.8, 10.8 , 0 );
setMoveKey( spep_3 + 66 -a, 1, -26, -7 , 0 );
setMoveKey( spep_3 + 68 -a, 1, -21.7, 5 , 0 );
setMoveKey( spep_3 + 70 -a, 1, -35.2, -3.3 , 0 );
setMoveKey( spep_3 + 72 -a, 1, -23.2, 0.1 , 0 );
setMoveKey( spep_3 + 74 -a, 1, -42.1, 12 , 0 );
setMoveKey( spep_3 + 76 -a, 1, -27.9, -7.4 , 0 );
setMoveKey( spep_3 + 78 -a, 1, -22.1, 5 , 0 );
setMoveKey( spep_3 + 80 -a, 1, -34.1, -3 , 0 );
setMoveKey( spep_3 + 82 -a, 1, -30.2, 0 , 0 );
setMoveKey( spep_3 + 84 -a, 1, -39.1, 11.1 , 0 );
setMoveKey( spep_3 + 86 -a, 1, -25.6, -6.9 , 0 );
setMoveKey( spep_3 + 88 -a, 1, -20.3, 4.7 , 0 );
setMoveKey( spep_3 + 88 , 1, -20.3, 4.7 , 0 );

setScaleKey( spep_3 + 0, 1, 1.62, 1.62 );
setScaleKey( spep_3 + 2, 1, 1.53, 1.53 );
setScaleKey( spep_3 + 4, 1, 1.44, 1.44 );
setScaleKey( spep_3 + 6, 1, 1.36, 1.36 );
setScaleKey( spep_3 + 8, 1, 1.27, 1.27 );
setScaleKey( spep_3 + 10, 1, 1.19, 1.19 );
setScaleKey( spep_3 + 12, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 14, 1, 1.09, 1.09 );
setScaleKey( spep_3 + 16, 1, 1.08, 1.08 );
setScaleKey( spep_3 + 18, 1, 1.06, 1.06 );
setScaleKey( spep_3 + 20, 1, 1.05, 1.05 );
setScaleKey( spep_3 + 22, 1, 1.04, 1.04 );
setScaleKey( spep_3 + 24, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 26, 1, 1.35, 1.35 );
--setScaleKey( spep_3 + 29, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 30 -a, 1, 1.35, 1.35 );  --仰け反り
setScaleKey( spep_3 + 32 -a, 1, 2.03, 2.03 );
setScaleKey( spep_3 + 34 -a, 1, 4.06, 4.06 );
setScaleKey( spep_3 + 36 -a, 1, 3.15, 3.15 );
setScaleKey( spep_3 + 38 -a, 1, 2.35, 2.35 );
setScaleKey( spep_3 + 40 -a, 1, 1.66, 1.66 );
setScaleKey( spep_3 + 42 -a, 1, 2.17, 2.17 );
setScaleKey( spep_3 + 44 -a, 1, 2.01, 2.01 );
setScaleKey( spep_3 + 46 -a, 1, 1.85, 1.85 );
setScaleKey( spep_3 + 48 -a, 1, 1.69, 1.69 );
setScaleKey( spep_3 + 50 -a, 1, 2.54, 2.54 );
setScaleKey( spep_3 + 52 -a, 1, 2.27, 2.27 );
setScaleKey( spep_3 + 54 -a, 1, 2, 2 );
setScaleKey( spep_3 + 56 -a, 1, 1.72, 1.72 );
setScaleKey( spep_3 + 58 -a, 1, 2.24, 2.24 );
setScaleKey( spep_3 + 60 -a, 1, 2.18, 2.18 );
setScaleKey( spep_3 + 62 -a, 1, 2.11, 2.11 );
setScaleKey( spep_3 + 64 -a, 1, 2.05, 2.05 );
setScaleKey( spep_3 + 66 -a, 1, 1.98, 1.98 );
setScaleKey( spep_3 + 68 -a, 1, 1.91, 1.91 );
setScaleKey( spep_3 + 70 -a, 1, 1.84, 1.84 );
setScaleKey( spep_3 + 72 -a, 1, 1.78, 1.78 );
setScaleKey( spep_3 + 74 -a, 1, 2.32, 2.32 );
setScaleKey( spep_3 + 76 -a, 1, 2.15, 2.15 );
setScaleKey( spep_3 + 78 -a, 1, 1.98, 1.98 );
setScaleKey( spep_3 + 80 -a, 1, 1.8, 1.8 );
setScaleKey( spep_3 + 82 -a, 1, 2.36, 2.36 );
setScaleKey( spep_3 + 84 -a, 1, 2.18, 2.18 );
setScaleKey( spep_3 + 86 -a, 1, 2.01, 2.01 );
setScaleKey( spep_3 + 88 -a, 1, 1.83, 1.83 );
setScaleKey( spep_3 + 88 , 1, 1.83, 1.83 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 29 -a, 1, 0 );
setRotateKey( spep_3 + 30 -a, 1, -45 );  --仰け反り
setRotateKey( spep_3 + 32 -a, 1, -51.2 );
setRotateKey( spep_3 + 34 -a, 1, -45 );
setRotateKey( spep_3 + 36 -a, 1, -51.2 );
setRotateKey( spep_3 + 38 -a, 1, -45 );
setRotateKey( spep_3 + 40 -a, 1, -51.2 );
setRotateKey( spep_3 + 42 -a, 1, -45 );
setRotateKey( spep_3 + 44 -a, 1, -51.2 );
setRotateKey( spep_3 + 46 -a, 1, -45 );
setRotateKey( spep_3 + 48 -a, 1, -51.2 );
setRotateKey( spep_3 + 50 -a, 1, -45 );
setRotateKey( spep_3 + 52 -a, 1, -51.2 );
setRotateKey( spep_3 + 54 -a, 1, -45 );
setRotateKey( spep_3 + 56 -a, 1, -51.2 );
setRotateKey( spep_3 + 58 -a, 1, -45 );
setRotateKey( spep_3 + 60 -a, 1, -51.2 );
setRotateKey( spep_3 + 62 -a, 1, -45 );
setRotateKey( spep_3 + 64 -a, 1, -51.2 );
setRotateKey( spep_3 + 66 -a, 1, -45 );
setRotateKey( spep_3 + 68 -a, 1, -51.2 );
setRotateKey( spep_3 + 70 -a, 1, -45 );
setRotateKey( spep_3 + 72 -a, 1, -51.2 );
setRotateKey( spep_3 + 74 -a, 1, -45 );
setRotateKey( spep_3 + 76 -a, 1, -51.2 );
setRotateKey( spep_3 + 78 -a, 1, -45 );
setRotateKey( spep_3 + 80 -a, 1, -51.2 );
setRotateKey( spep_3 + 82 -a, 1, -45 );
setRotateKey( spep_3 + 84 -a, 1, -51.2 );
setRotateKey( spep_3 + 86 -a, 1, -45 );
setRotateKey( spep_3 + 88 -a, 1, -51.2 );
setRotateKey( spep_3 + 88 , 1, -51.2 );

-- ** エフェクト等 ** --
hidan = entryEffectLife( spep_3 + 0, SP_06, 88, 0x80, -1, 0, 0, 0 );  --被弾(ef_006)
setEffMoveKey( spep_3 + 0, hidan, 0, 0 , 0 );
setEffMoveKey( spep_3 + 88, hidan, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hidan, 1.0, 1.0 );
setEffScaleKey( spep_3 + 88, hidan, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hidan, 0 );
setEffRotateKey( spep_3 + 88, hidan, 0 );
setEffAlphaKey( spep_3 + 0, hidan, 255 );
setEffAlphaKey( spep_3 + 88, hidan, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 88, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_3 + 80, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_3 , 9 );  --迫ってくる
playSe(  spep_3+30,  1014);  --被弾
playSe(  spep_3+40,  1014);  --被弾
playSe(  spep_3+50,  1014);  --被弾
playSe(  spep_3+60,  1014);  --被弾
playSe(  spep_3+70,  1014);  --被弾

-- ** 次の準備 ** --
spep_4 = spep_3 + 88;

------------------------------------------------------
-- 気溜め(118F)
------------------------------------------------------

-- ** エフェクト等 ** --
kidame = entryEffectLife( spep_4 + 0, SP_07, 118, 0x100, -1, 0, 0, 0 );  --気溜め(ef_007)
setEffMoveKey( spep_4 + 0, kidame, 0, 0 , 0 );
setEffMoveKey( spep_4 + 118, kidame, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kidame, 1.0, 1.0 );
setEffScaleKey( spep_4 + 118, kidame, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kidame, 0 );
setEffRotateKey( spep_4 + 118, kidame, 0 );
setEffAlphaKey( spep_4 + 0, kidame, 255 );
setEffAlphaKey( spep_4 + 118, kidame, 255 );


-- ** 顔カットイン ** --
speff = entryEffect( spep_4 + 28, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_4 + 28, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_4 + 0,  906, 118, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen2, 118, 10 );

setEffMoveKey( spep_4 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 118, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen2, 1.0, 1.20 );
setEffScaleKey( spep_4 + 118, shuchusen2, 1.0, 1.20 );

setEffRotateKey( spep_4 + 0, shuchusen2, 0 );
setEffRotateKey( spep_4 + 118, shuchusen2, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen2, 0 );
setEffAlphaKey( spep_4 + 41, shuchusen2, 0 );
setEffAlphaKey( spep_4 + 44, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 118, shuchusen2, 255 );

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_4 + 41,  190006, 70, 0x100, -1, 0, -8.5, 515.5 );  --ゴゴゴ
setEffShake( spep_4 + 41, ctgogo, 70, 10 );

setEffMoveKey( spep_4 + 41, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_4 + 111, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_4 + 41, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_4 + 103, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_4 + 105, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_4 + 107, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_4 + 109, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_4 + 111, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_4 + 41, ctgogo, 0 );
setEffRotateKey( spep_4 + 111, ctgogo, 0 );

setEffAlphaKey( spep_4 + 41, ctgogo, 255 );
setEffAlphaKey( spep_4 + 111, ctgogo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 118, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_4 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_4 + 106, 10, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_4 + 34, SE_04 );  --ゴゴゴ

-- ** 次の準備 ** --
spep_5 = spep_4 + 118;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_5 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_5 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_5 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_5 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_5 + 0, shuchusen, 0 );
setEffRotateKey( spep_5 + 90, shuchusen, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen, 255 );
setEffAlphaKey( spep_5 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_5 + 0, SE_05 );

-- ** ホワイトフェード ** --
entryFade( spep_5 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 94;

------------------------------------------------------
-- 投げる(88F)
------------------------------------------------------

-- ** 背景 ** --
nageruBG = entryEffectLife( spep_6 + 0, SP_09, 88, 0x80, -1, 0, 0, 0 );  --投げる(ef_008)
setEffMoveKey( spep_6 + 0, nageruBG, 0, 0 , 0 );
setEffMoveKey( spep_6 + 88, nageruBG, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, nageruBG, 1.0, 1.0 );
setEffScaleKey( spep_6 + 88, nageruBG, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, nageruBG, 0 );
setEffRotateKey( spep_6 + 88, nageruBG, 0 );
setEffAlphaKey( spep_6 + 0, nageruBG, 255 );
setEffAlphaKey( spep_6 + 88, nageruBG, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_6,  921, 88, 0x80, -1, 0, 0, 0 );  --流線

setEffMoveKey( spep_6 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_6 + 88, ryusen1, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, ryusen1, 1.43, 0.89 );
setEffScaleKey( spep_6 + 88, ryusen1, 1.43, 0.89 );
setEffRotateKey( spep_6 + 0, ryusen1, -90 );
setEffRotateKey( spep_6 + 88, ryusen1, -90 );
setEffAlphaKey( spep_6 + 0, ryusen1, 0 );
setEffAlphaKey( spep_6 + 21 -a, ryusen1, 0 );
setEffAlphaKey( spep_6 + 22 -a, ryusen1, 255 );
setEffAlphaKey( spep_6 + 88, ryusen1, 255 );

nageru = entryEffectLife( spep_6 + 0, SP_08, 88, 0x100, -1, 0, 0, 0 );  --投げる(ef_008)
setEffMoveKey( spep_6 + 0, nageru, 0, 0 , 0 );
setEffMoveKey( spep_6 + 88, nageru, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, nageru, 1.0, 1.0 );
setEffScaleKey( spep_6 + 88, nageru, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, nageru, 0 );
setEffRotateKey( spep_6 + 88, nageru, 0 );
setEffAlphaKey( spep_6 + 0, nageru, 255 );
setEffAlphaKey( spep_6 + 88, nageru, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_6 + 0,  906, 22 -a, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen4, 22-a, 10 );

setEffMoveKey( spep_6 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_6 + 22-a, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen4, 1, 1 );
setEffScaleKey( spep_6 + 22-a, shuchusen4, 1, 1 );

setEffRotateKey( spep_6 + 0, shuchusen4, 0 );
setEffRotateKey( spep_6 + 22-a, shuchusen4, 0 );

setEffAlphaKey( spep_6 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_6 + 21-a, shuchusen4, 255 );
setEffAlphaKey( spep_6 + 22-a, shuchusen4, 0 );


-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 88, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_6 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_6 + 76, 12, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_6 + 0, 17 );  --気弾溜め
playSe( spep_6 + 28, 1021 );  --着弾２

-- ** 次の準備 ** --
spep_7 = spep_6 + 88;

------------------------------------------------------
-- 着弾(70F)
------------------------------------------------------

hidan_b = entryEffectLife( spep_7 + 0, SP_11, 70, 0x80, -1, 0, 0, 0 );  --着弾　奥(ef_010)
setEffMoveKey( spep_7 + 0, hidan_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 70, hidan_b, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, hidan_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 70, hidan_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, hidan_b, 0 );
setEffRotateKey( spep_7 + 70, hidan_b, 0 );
setEffAlphaKey( spep_7 + 0, hidan_b, 255 );
setEffAlphaKey( spep_7 + 70, hidan_b, 255 );

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_7 + 0,  921, 70, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_7 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_7 + 70, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, ryusen2, 1.4, 1.4 );
setEffScaleKey( spep_7 + 70, ryusen2, 1.4, 1.4 );

setEffRotateKey( spep_7 + 0, ryusen2, 17 );
setEffRotateKey( spep_7 + 70, ryusen2, 17 );

setEffAlphaKey( spep_7 + 0, ryusen2, 255 );
setEffAlphaKey( spep_7 + 70, ryusen2, 255 );


-- ** 敵キャラクター ** --
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 + 70, 1, 1 );
changeAnime( spep_7 + 0, 1, 106 );
setShakeChara(  spep_7 + 0,  1,  70,  20);  --揺れ

setMoveKey( spep_7 + 0, 1, 247.9, -69.1 , 0 );
setMoveKey( spep_7 + 2, 1, 245.8, -68.1 , 0 );
setMoveKey( spep_7 + 4, 1, 243.8, -67.1 , 0 );
setMoveKey( spep_7 + 6, 1, 241.8, -66.1 , 0 );
setMoveKey( spep_7 + 8, 1, 239.7, -65 , 0 );
setMoveKey( spep_7 + 10, 1, 237.7, -64 , 0 );
setMoveKey( spep_7 + 12, 1, 235.7, -63 , 0 );
setMoveKey( spep_7 + 14, 1, 233.6, -62 , 0 );
setMoveKey( spep_7 + 16, 1, 231.6, -61 , 0 );
setMoveKey( spep_7 + 18, 1, 229.6, -60 , 0 );
setMoveKey( spep_7 + 20, 1, 227.5, -58.9 , 0 );
setMoveKey( spep_7 + 22, 1, 225.5, -57.9 , 0 );
setMoveKey( spep_7 + 24, 1, 223.5, -56.9 , 0 );
setMoveKey( spep_7 + 26, 1, 221.4, -55.9 , 0 );
setMoveKey( spep_7 + 28, 1, 219.4, -54.9 , 0 );
setMoveKey( spep_7 + 30, 1, 217.4, -53.9 , 0 );
setMoveKey( spep_7 + 32, 1, 215.3, -52.8 , 0 );
setMoveKey( spep_7 + 34, 1, 213.3, -51.8 , 0 );
setMoveKey( spep_7 + 36, 1, 211.3, -50.8 , 0 );
setMoveKey( spep_7 + 38, 1, 209.2, -49.8 , 0 );
setMoveKey( spep_7 + 40, 1, 207.2, -48.8 , 0 );
setMoveKey( spep_7 + 42, 1, 205.2, -47.8 , 0 );
setMoveKey( spep_7 + 44, 1, 203.1, -46.8 , 0 );
setMoveKey( spep_7 + 46, 1, 201.1, -45.7 , 0 );
setMoveKey( spep_7 + 48, 1, 199.1, -44.7 , 0 );
setMoveKey( spep_7 + 50, 1, 197, -43.7 , 0 );
setMoveKey( spep_7 + 52, 1, 195, -42.7 , 0 );
setMoveKey( spep_7 + 54, 1, 193, -41.7 , 0 );
setMoveKey( spep_7 + 56, 1, 190.9, -40.7 , 0 );
setMoveKey( spep_7 + 58, 1, 188.9, -39.6 , 0 );
setMoveKey( spep_7 + 60, 1, 186.9, -38.6 , 0 );
setMoveKey( spep_7 + 62, 1, 184.8, -37.6 , 0 );
setMoveKey( spep_7 + 64, 1, 182.8, -36.6 , 0 );
setMoveKey( spep_7 + 66, 1, 180.8, -35.6 , 0 );
setMoveKey( spep_7 + 68, 1, 178.7, -34.6 , 0 );
setMoveKey( spep_7 + 70, 1, 176.7, -33.6 , 0 );

setScaleKey( spep_7 + 0, 1, 1, 1 );
setScaleKey( spep_7 + 2, 1, 1, 1 );
setScaleKey( spep_7 + 4, 1, 1.01, 1.01 );
setScaleKey( spep_7 + 6, 1, 1.02, 1.02 );
setScaleKey( spep_7 + 8, 1, 1.02, 1.02 );
setScaleKey( spep_7 + 10, 1, 1.03, 1.03 );
setScaleKey( spep_7 + 12, 1, 1.03, 1.03 );
setScaleKey( spep_7 + 14, 1, 1.04, 1.04 );
setScaleKey( spep_7 + 16, 1, 1.05, 1.05 );
setScaleKey( spep_7 + 18, 1, 1.05, 1.05 );
setScaleKey( spep_7 + 20, 1, 1.06, 1.06 );
setScaleKey( spep_7 + 22, 1, 1.06, 1.06 );
setScaleKey( spep_7 + 24, 1, 1.07, 1.07 );
setScaleKey( spep_7 + 26, 1, 1.07, 1.07 );
setScaleKey( spep_7 + 28, 1, 1.08, 1.08 );
setScaleKey( spep_7 + 30, 1, 1.08, 1.08 );
setScaleKey( spep_7 + 32, 1, 1.09, 1.09 );
setScaleKey( spep_7 + 34, 1, 1.1, 1.1 );
setScaleKey( spep_7 + 36, 1, 1.1, 1.1 );
setScaleKey( spep_7 + 38, 1, 1.11, 1.11 );
setScaleKey( spep_7 + 40, 1, 1.11, 1.11 );
setScaleKey( spep_7 + 42, 1, 1.12, 1.12 );
setScaleKey( spep_7 + 44, 1, 1.12, 1.12 );
setScaleKey( spep_7 + 46, 1, 1.13, 1.13 );
setScaleKey( spep_7 + 48, 1, 1.14, 1.14 );
setScaleKey( spep_7 + 50, 1, 1.14, 1.14 );
setScaleKey( spep_7 + 52, 1, 1.15, 1.15 );
setScaleKey( spep_7 + 54, 1, 1.15, 1.15 );
setScaleKey( spep_7 + 56, 1, 1.16, 1.16 );
setScaleKey( spep_7 + 58, 1, 1.16, 1.16 );
setScaleKey( spep_7 + 60, 1, 1.17, 1.17 );
setScaleKey( spep_7 + 62, 1, 1.18, 1.18 );
setScaleKey( spep_7 + 64, 1, 1.18, 1.18 );
setScaleKey( spep_7 + 66, 1, 1.19, 1.19 );
setScaleKey( spep_7 + 68, 1, 1.19, 1.19 );
setScaleKey( spep_7 + 70, 1, 1.2, 1.2 );

setRotateKey( spep_7 + 0, 1, -27.1 );
setRotateKey( spep_7 + 70, 1, -27.1 );


-- ** エフェクト等 ** --
hidan_f = entryEffectLife( spep_7 + 0, SP_10, 70, 0x100, -1, 0, 0, 0 );  --着弾　手前(ef_010)
setEffMoveKey( spep_7 + 0, hidan_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 70, hidan_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, hidan_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 70, hidan_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, hidan_f, 0 );
setEffRotateKey( spep_7 + 70, hidan_f, 0 );
setEffAlphaKey( spep_7 + 0, hidan_f, 255 );
setEffAlphaKey( spep_7 + 70, hidan_f, 255 );


-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_7 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_7 + 54, 16, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_7 , 1022 );

-- ** 次の準備 ** --
spep_8 = spep_7 + 70;

------------------------------------------------------
-- ギャン(58F)
------------------------------------------------------

-- ** エフェクト等 ** --
gyan = entryEffectLife( spep_8 + 0, 190001, 58, 0x100, -1, 0, 0, 0 );  --ギャン
setEffMoveKey( spep_8 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_8 + 58, gyan, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_8 + 58, gyan, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, gyan, 0 );
setEffRotateKey( spep_8 + 58, gyan, 0 );
setEffAlphaKey( spep_8 + 0, gyan, 255 );
setEffAlphaKey( spep_8 + 58, gyan, 255 );

-- ** 書き文字 ** --
ctgyan = entryEffectLife( spep_8 + 0,  10006, 58, 0x100, -1, 0, 7.1, 306.8 );  --ギャンッ
setEffMoveKey( spep_8 + 0, ctgyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_8 + 58, ctgyan, 7.1, 306.8 , 0 );

setEffScaleKey( spep_8 + 0, ctgyan, 2.6, 2.6 );
setEffScaleKey( spep_8 + 6, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_8 + 8, ctgyan, 2.7, 2.7 );
setEffScaleKey( spep_8 + 10, ctgyan, 2.9, 2.9 );
setEffScaleKey( spep_8 + 12, ctgyan, 3, 3 );
setEffScaleKey( spep_8 + 14, ctgyan, 3.1, 3.1 );
setEffScaleKey( spep_8 + 16, ctgyan, 3.3, 3.3 );
setEffScaleKey( spep_8 + 18, ctgyan, 3.42, 3.42 );
setEffScaleKey( spep_8 + 20, ctgyan, 3.53, 3.53 );
setEffScaleKey( spep_8 + 22, ctgyan, 3.6, 3.6 );
setEffScaleKey( spep_8 + 24, ctgyan, 3.65, 3.65 );
setEffScaleKey( spep_8 + 26, ctgyan, 3.7, 3.7 );
setEffScaleKey( spep_8 + 28, ctgyan, 3.76, 3.76 );
setEffScaleKey( spep_8 + 30, ctgyan, 3.8, 3.8 );
setEffScaleKey( spep_8 + 32, ctgyan, 3.88, 3.88 );
setEffScaleKey( spep_8 + 34, ctgyan, 3.93, 3.93 );
setEffScaleKey( spep_8 + 36, ctgyan, 4.1, 4.1 );
setEffScaleKey( spep_8 + 38, ctgyan, 4.1, 4.1 );
setEffScaleKey( spep_8 + 40, ctgyan, 4.11, 4.11 );
setEffScaleKey( spep_8 + 42, ctgyan, 4.12, 4.12 );
setEffScaleKey( spep_8 + 44, ctgyan, 4.13, 4.13 );
setEffScaleKey( spep_8 + 46, ctgyan, 4.14, 4.14 );
setEffScaleKey( spep_8 + 48, ctgyan, 4.14, 4.14 );
setEffScaleKey( spep_8 + 50, ctgyan, 4.15, 4.15 );
setEffScaleKey( spep_8 + 52, ctgyan, 4.17, 4.17 );
setEffScaleKey( spep_8 + 54, ctgyan, 4.18, 4.18 );
setEffScaleKey( spep_8 + 56, ctgyan, 4.19, 4.19 );
setEffScaleKey( spep_8 + 58, ctgyan, 5, 5 );

setEffRotateKey( spep_8 + 0, ctgyan, 0 );
setEffRotateKey( spep_8 + 58, ctgyan, 0 );

setEffAlphaKey( spep_8 + 0, ctgyan, 255 );
setEffAlphaKey( spep_8 + 58, ctgyan, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 58, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_8 + 20, 38, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_8 + 0, 1023 );

-- ** 次の準備 ** --
spep_9 = spep_8 + 58;

------------------------------------------------------
-- 爆発(236F)
------------------------------------------------------

-- ** エフェクト等 ** --
bakuha = entryEffect( spep_9 + 0, 1586, 0x100, -1, 0, 0, 0 );  --爆発(ef_010)
setEffMoveKey( spep_9 + 0, bakuha, 0, 0 , 0 );
setEffMoveKey( spep_9 + 236, bakuha, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, bakuha, 1.1, 1.1 );
setEffScaleKey( spep_9 + 236, bakuha, 1.1, 1.1 );
setEffRotateKey( spep_9 + 0, bakuha, 0 );
setEffRotateKey( spep_9 + 236, bakuha, 0 );
setEffAlphaKey( spep_9 + 0, bakuha, 255 );
setEffAlphaKey( spep_9 + 236, bakuha, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 236, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_9 + 0, 0, 2, 28, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_9 + 0, 1069 );
playSe( spep_9 + 2, 1024 );

-- ** ダメージ表示 ** --
dealDamage( spep_9 + 100 );
entryFade( spep_9 + 224, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_9 + 230 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 連射(88F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
rensya = entryEffectLife( spep_0 + 0, SP_01r, 88, 0x100, -1, 0, 0, 0 );  --連射(ef_001)
setEffMoveKey( spep_0 + 0, rensya, 0, 0 , 0 );
setEffMoveKey( spep_0 + 88, rensya, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, rensya, 1.0, 1.0 );
setEffScaleKey( spep_0 + 88, rensya, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, rensya, 0 );
setEffRotateKey( spep_0 + 88, rensya, 0 );
setEffAlphaKey( spep_0 + 0, rensya, 255 );
setEffAlphaKey( spep_0 + 86, rensya, 255 );
setEffAlphaKey( spep_0 + 87, rensya, 0 );
setEffAlphaKey( spep_0 + 88, rensya, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 88, 10 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 86, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.09, 1.99 );
setEffScaleKey( spep_0 + 86, shuchusen1, 1.09, 1.99 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 86, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 86, shuchusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 88, 0, 0, 0, 0, 255 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 26; --エンドフェイズのフレーム数を置き換える

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

-- ** 音 ** --
playSe( spep_0 , 8 );  --上昇
playSe( spep_0 + 38,  1016);  --気弾
playSe( spep_0 + 46,  1016);  --気弾
playSe( spep_0 + 54,  1016);  --気弾
playSe( spep_0 + 62,  1016);  --気弾
playSe( spep_0 + 70,  1016);  --気弾
playSe( spep_0 + 78,  1016);  --気弾
playSe( spep_0 + 86,  1016);  --気弾

-- ** 次の準備 ** --
spep_1 = spep_0 + 86;
------------------------------------------------------
--  着弾(80F)
------------------------------------------------------

--  ** 背景 **
tyakudanBG = entryEffectLife( spep_1 + 0, SP_04r, 80, 0x80, -1, 0, 0, 0 );  --着弾　背景
setEffMoveKey( spep_1 + 0, tyakudanBG, 0, 0 , 0 );
setEffMoveKey( spep_1 + 80, tyakudanBG, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tyakudanBG, 1.0, 1.0 );
setEffScaleKey( spep_1 + 80, tyakudanBG, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tyakudanBG, 0 );
setEffRotateKey( spep_1 + 80, tyakudanBG, 0 );
setEffAlphaKey( spep_1 + 0, tyakudanBG, 255 );
setEffAlphaKey( spep_1 + 80, tyakudanBG, 255 );

-- ** 流線 ** --
ryusen = entryEffectLife( spep_1 + 0,  914, 80, 0x80, -1, 0, -142, 118 );  --流線

setEffScaleKey( spep_1 + 0, ryusen, 4.21, 1.32 );
setEffScaleKey( spep_1 + 80, ryusen, 4.21, 1.32 );
setEffRotateKey( spep_1 + 0, ryusen, -165 );
setEffRotateKey( spep_1 + 80, ryusen, -165 );
setEffAlphaKey( spep_1 + 0, ryusen, 255 );
setEffAlphaKey( spep_1 + 80, ryusen, 255 );

--  ** 流線 **
tyakudan_b = entryEffectLife( spep_1 + 0, SP_03r, 80, 0x80, -1, 0, 0, 0 );  --着弾　奥(ef_003)
setEffMoveKey( spep_1 + 0, tyakudan_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 80, tyakudan_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tyakudan_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 80, tyakudan_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tyakudan_b, 0 );
setEffRotateKey( spep_1 + 80, tyakudan_b, 0 );
setEffAlphaKey( spep_1 + 0, tyakudan_b, 255 );
setEffAlphaKey( spep_1 + 80, tyakudan_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 80, 1, 0 );
changeAnime( spep_1 + 0, 1, 104 );
setShakeChara(  spep_1,  1,  80,  20);  --揺れ

setMoveKey( spep_1 + 0, 1, 516.6, -117.3 , 0 );
setMoveKey( spep_1 + 2, 1, 414.4, -89.7 , 0 );
setMoveKey( spep_1 + 4, 1, 312.2, -62.2 , 0 );
setMoveKey( spep_1 + 6, 1, 210, -34.7 , 0 );
setMoveKey( spep_1 + 8, 1, 107.8, -7.2 , 0 );
setMoveKey( spep_1 + 10, 1, 107.1, -7.2 , 0 );
setMoveKey( spep_1 + 12, 1, 106.4, -7.2 , 0 );
setMoveKey( spep_1 + 14, 1, 105.8, -7.2 , 0 );
setMoveKey( spep_1 + 16, 1, 105.1, -7.2 , 0 );
setMoveKey( spep_1 + 18, 1, 104.5, -7.2 , 0 );
setMoveKey( spep_1 + 20, 1, 102.5, -1.2 , 0 );
setMoveKey( spep_1 + 22, 1, 106.5, -13.2 , 0 );
setMoveKey( spep_1 + 24, 1, 98.5, -7.2 , 0 );
setMoveKey( spep_1 + 26, 1, 104.5, -7.2 , 0 );
setMoveKey( spep_1 + 28, 1, 105.6, -7.6 , 0 );
setMoveKey( spep_1 + 30, 1, 106.7, -8.1 , 0 );
setMoveKey( spep_1 + 32, 1, 107.9, -8.5 , 0 );
setMoveKey( spep_1 + 34, 1, 109, -8.9 , 0 );
setMoveKey( spep_1 + 36, 1, 110.2, -9.3 , 0 );
setMoveKey( spep_1 + 38, 1, 111.3, -9.8 , 0 );
setMoveKey( spep_1 + 40, 1, 112.5, -10.2 , 0 );
setMoveKey( spep_1 + 42, 1, 113.6, -10.6 , 0 );
setMoveKey( spep_1 + 44, 1, 114.7, -11.1 , 0 );
setMoveKey( spep_1 + 46, 1, 115.9, -11.5 , 0 );
setMoveKey( spep_1 + 48, 1, 117, -11.9 , 0 );
setMoveKey( spep_1 + 50, 1, 118.2, -12.3 , 0 );
setMoveKey( spep_1 + 52, 1, 119.3, -12.8 , 0 );
setMoveKey( spep_1 + 54, 1, 120.5, -13.2 , 0 );
setMoveKey( spep_1 + 56, 1, 122.5, -9.2 , 0 );
setMoveKey( spep_1 + 58, 1, 118.5, -17.2 , 0 );
setMoveKey( spep_1 + 60, 1, 118.5, -9.2 , 0 );
setMoveKey( spep_1 + 62, 1, 120.5, -13.2 , 0 );
setMoveKey( spep_1 + 64, 1, 122, -13.7 , 0 );
setMoveKey( spep_1 + 66, 1, 123.5, -14.2 , 0 );
setMoveKey( spep_1 + 68, 1, 125, -14.7 , 0 );
setMoveKey( spep_1 + 70, 1, 126.5, -15.2 , 0 );
setMoveKey( spep_1 + 72, 1, 122.5, -11.2 , 0 );
setMoveKey( spep_1 + 74, 1, 128.5, -19.2 , 0 );
setMoveKey( spep_1 + 76, 1, 130.5, -15.2 , 0 );
setMoveKey( spep_1 + 78, 1, 126.5, -15.2 , 0 );
setMoveKey( spep_1 + 80, 1, 126.9, -15.3 , 0 );

setScaleKey( spep_1 + 0, 1, 1, 1 );
setScaleKey( spep_1 + 80, 1, 1, 1 );

setRotateKey( spep_1 + 0, 1, 14.8 );
setRotateKey( spep_1 + 2, 1, 15 );
setRotateKey( spep_1 + 80, 1, 15 );

-- ** エフェクト等 ** --
tyakudan_f = entryEffectLife( spep_1 + 0, SP_02r, 80, 0x100, -1, 0, 0, 0 );  --着弾　手前(ef_002)
setEffMoveKey( spep_1 + 0, tyakudan_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 80, tyakudan_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tyakudan_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 80, tyakudan_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tyakudan_f, 0 );
setEffRotateKey( spep_1 + 80, tyakudan_f, 0 );
setEffAlphaKey( spep_1 + 0, tyakudan_f, 255 );
setEffAlphaKey( spep_1 + 80, tyakudan_f, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_1 + 66, 14, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_1 , 1026 );  --伸びる気弾
playSe( spep_1 +16 , 1026 );  --伸びる気弾
--playSe( spep_1 +32, 1026 );  --伸びる気弾
playSe( spep_1 +48, 1026 );  --伸びる気弾
playSe( spep_1 +64, 1026 );  --伸びる気弾

-- ** 次の準備 ** --
spep_2 = spep_1 + 80;

------------------------------------------------------
-- 帰ってくるビーム(108F)
------------------------------------------------------

-- ** エフェクト等 ** --
beam = entryEffectLife( spep_2 + 0, SP_05r, 108, 0x100, -1, 0, 0, 0 );  --ビーム(ef_004)
setEffMoveKey( spep_2 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_2 + 108, beam, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_2 + 108, beam, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam, 0 );
setEffRotateKey( spep_2 + 108, beam, 0 );
setEffAlphaKey( spep_2 + 0, beam, 255 );
setEffAlphaKey( spep_2 + 108, beam, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 0,  906, 108, 0x100, -1, 0, 0, 16 );  --集中線
setEffShake( spep_2 + 0, shuchusen2, 108, 10 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 16 , 0 );
setEffMoveKey( spep_2 + 108, shuchusen2, 0, 16 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.09, 1.99 );
setEffScaleKey( spep_2 + 108, shuchusen2, 1.09, 1.99 );

setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 108, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 108, shuchusen2, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 108, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 96, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_2 , 64 );  --集まる気弾
playSe( spep_2 + 66, 1016 );  --集まる気弾
playSe( spep_2 + 74, 1016 );  --集まる気弾
playSe( spep_2 + 80, 1016 );  --集まる気弾
playSe( spep_2 + 88, 1016 );  --集まる気弾
playSe( spep_2 + 96, 1016 );  --集まる気弾
playSe( spep_2 + 102, 1016 );  --集まる気弾

-- ** 次の準備 ** --
spep_3 = spep_2 + 108;

------------------------------------------------------
-- ビーム被弾(88F)
------------------------------------------------------

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3 + 14,  906, 74, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 14, shuchusen3, 88, 10 );

setEffMoveKey( spep_3 + 14, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 88, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen3, 1, 1 );
setEffScaleKey( spep_3 + 88, shuchusen3, 1, 1 );

setEffRotateKey( spep_3 + 10, shuchusen3, 0 );
setEffRotateKey( spep_3 + 88, shuchusen3, 0 );

setEffAlphaKey( spep_3 + 10, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 88, shuchusen3, 255 );

a = 3

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 88 , 1, 0 );
changeAnime( spep_3 + 0, 1, 100 );
changeAnime( spep_3 + 30 -a, 1, 106 );  --仰け反り

setMoveKey( spep_3 + 0, 1, 0, 0 , 0 );
setMoveKey( spep_3 + 22, 1, 0, 0 , 0 );
setMoveKey( spep_3 + 24, 1, -3.5, 7 , 0 );
setMoveKey( spep_3 + 26, 1, 4, -5.3 , 0 );
--setMoveKey( spep_3 + 29, 1, 7.5, 4.5 , 0 );
setMoveKey( spep_3 + 30 -a, 1, -33.1, -3 , 0 );  --仰け反り
setMoveKey( spep_3 + 32 -a, 1, -22.7, 0.1 , 0 );
setMoveKey( spep_3 + 34 -a, 1, -47.6, 13.5 , 0 );
setMoveKey( spep_3 + 36 -a, 1, -30.4, -8 , 0 );
setMoveKey( spep_3 + 38 -a, 1, -22.9, 5.2 , 0 );
setMoveKey( spep_3 + 40 -a, 1, -33.4, -3 , 0 );
setMoveKey( spep_3 + 42 -a, 1, -29.6, 0 , 0 );
setMoveKey( spep_3 + 44 -a, 1, -38.3, 10.9 , 0 );
setMoveKey( spep_3 + 46 -a, 1, -25, -6.8 , 0 );
setMoveKey( spep_3 + 48 -a, 1, -19.9, 4.6 , 0 );
setMoveKey( spep_3 + 50 -a, 1, -50.2, -4.6 , 0 );
setMoveKey( spep_3 + 52 -a, 1, -30.6, 0 , 0 );
setMoveKey( spep_3 + 54 -a, 1, -37.3, 10.6 , 0 );
setMoveKey( spep_3 + 56 -a, 1, -23, -6 , 0 );
setMoveKey( spep_3 + 58 -a, 1, -25.9, 5.9 , 0 );
setMoveKey( spep_3 + 60 -a, 1, -42.4, -3.8 , 0 );
setMoveKey( spep_3 + 62 -a, 1, -27.9, 0 , 0 );
setMoveKey( spep_3 + 64 -a, 1, -37.8, 10.8 , 0 );
setMoveKey( spep_3 + 66 -a, 1, -26, -7 , 0 );
setMoveKey( spep_3 + 68 -a, 1, -21.7, 5 , 0 );
setMoveKey( spep_3 + 70 -a, 1, -35.2, -3.3 , 0 );
setMoveKey( spep_3 + 72 -a, 1, -23.2, 0.1 , 0 );
setMoveKey( spep_3 + 74 -a, 1, -42.1, 12 , 0 );
setMoveKey( spep_3 + 76 -a, 1, -27.9, -7.4 , 0 );
setMoveKey( spep_3 + 78 -a, 1, -22.1, 5 , 0 );
setMoveKey( spep_3 + 80 -a, 1, -34.1, -3 , 0 );
setMoveKey( spep_3 + 82 -a, 1, -30.2, 0 , 0 );
setMoveKey( spep_3 + 84 -a, 1, -39.1, 11.1 , 0 );
setMoveKey( spep_3 + 86 -a, 1, -25.6, -6.9 , 0 );
setMoveKey( spep_3 + 88 -a, 1, -20.3, 4.7 , 0 );
setMoveKey( spep_3 + 88 , 1, -20.3, 4.7 , 0 );

setScaleKey( spep_3 + 0, 1, 1.62, 1.62 );
setScaleKey( spep_3 + 2, 1, 1.53, 1.53 );
setScaleKey( spep_3 + 4, 1, 1.44, 1.44 );
setScaleKey( spep_3 + 6, 1, 1.36, 1.36 );
setScaleKey( spep_3 + 8, 1, 1.27, 1.27 );
setScaleKey( spep_3 + 10, 1, 1.19, 1.19 );
setScaleKey( spep_3 + 12, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 14, 1, 1.09, 1.09 );
setScaleKey( spep_3 + 16, 1, 1.08, 1.08 );
setScaleKey( spep_3 + 18, 1, 1.06, 1.06 );
setScaleKey( spep_3 + 20, 1, 1.05, 1.05 );
setScaleKey( spep_3 + 22, 1, 1.04, 1.04 );
setScaleKey( spep_3 + 24, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 26, 1, 1.35, 1.35 );
--setScaleKey( spep_3 + 29, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 30 -a, 1, 1.35, 1.35 );  --仰け反り
setScaleKey( spep_3 + 32 -a, 1, 2.03, 2.03 );
setScaleKey( spep_3 + 34 -a, 1, 4.06, 4.06 );
setScaleKey( spep_3 + 36 -a, 1, 3.15, 3.15 );
setScaleKey( spep_3 + 38 -a, 1, 2.35, 2.35 );
setScaleKey( spep_3 + 40 -a, 1, 1.66, 1.66 );
setScaleKey( spep_3 + 42 -a, 1, 2.17, 2.17 );
setScaleKey( spep_3 + 44 -a, 1, 2.01, 2.01 );
setScaleKey( spep_3 + 46 -a, 1, 1.85, 1.85 );
setScaleKey( spep_3 + 48 -a, 1, 1.69, 1.69 );
setScaleKey( spep_3 + 50 -a, 1, 2.54, 2.54 );
setScaleKey( spep_3 + 52 -a, 1, 2.27, 2.27 );
setScaleKey( spep_3 + 54 -a, 1, 2, 2 );
setScaleKey( spep_3 + 56 -a, 1, 1.72, 1.72 );
setScaleKey( spep_3 + 58 -a, 1, 2.24, 2.24 );
setScaleKey( spep_3 + 60 -a, 1, 2.18, 2.18 );
setScaleKey( spep_3 + 62 -a, 1, 2.11, 2.11 );
setScaleKey( spep_3 + 64 -a, 1, 2.05, 2.05 );
setScaleKey( spep_3 + 66 -a, 1, 1.98, 1.98 );
setScaleKey( spep_3 + 68 -a, 1, 1.91, 1.91 );
setScaleKey( spep_3 + 70 -a, 1, 1.84, 1.84 );
setScaleKey( spep_3 + 72 -a, 1, 1.78, 1.78 );
setScaleKey( spep_3 + 74 -a, 1, 2.32, 2.32 );
setScaleKey( spep_3 + 76 -a, 1, 2.15, 2.15 );
setScaleKey( spep_3 + 78 -a, 1, 1.98, 1.98 );
setScaleKey( spep_3 + 80 -a, 1, 1.8, 1.8 );
setScaleKey( spep_3 + 82 -a, 1, 2.36, 2.36 );
setScaleKey( spep_3 + 84 -a, 1, 2.18, 2.18 );
setScaleKey( spep_3 + 86 -a, 1, 2.01, 2.01 );
setScaleKey( spep_3 + 88 -a, 1, 1.83, 1.83 );
setScaleKey( spep_3 + 88 , 1, 1.83, 1.83 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 29 -a, 1, 0 );
setRotateKey( spep_3 + 30 -a, 1, -45 );  --仰け反り
setRotateKey( spep_3 + 32 -a, 1, -51.2 );
setRotateKey( spep_3 + 34 -a, 1, -45 );
setRotateKey( spep_3 + 36 -a, 1, -51.2 );
setRotateKey( spep_3 + 38 -a, 1, -45 );
setRotateKey( spep_3 + 40 -a, 1, -51.2 );
setRotateKey( spep_3 + 42 -a, 1, -45 );
setRotateKey( spep_3 + 44 -a, 1, -51.2 );
setRotateKey( spep_3 + 46 -a, 1, -45 );
setRotateKey( spep_3 + 48 -a, 1, -51.2 );
setRotateKey( spep_3 + 50 -a, 1, -45 );
setRotateKey( spep_3 + 52 -a, 1, -51.2 );
setRotateKey( spep_3 + 54 -a, 1, -45 );
setRotateKey( spep_3 + 56 -a, 1, -51.2 );
setRotateKey( spep_3 + 58 -a, 1, -45 );
setRotateKey( spep_3 + 60 -a, 1, -51.2 );
setRotateKey( spep_3 + 62 -a, 1, -45 );
setRotateKey( spep_3 + 64 -a, 1, -51.2 );
setRotateKey( spep_3 + 66 -a, 1, -45 );
setRotateKey( spep_3 + 68 -a, 1, -51.2 );
setRotateKey( spep_3 + 70 -a, 1, -45 );
setRotateKey( spep_3 + 72 -a, 1, -51.2 );
setRotateKey( spep_3 + 74 -a, 1, -45 );
setRotateKey( spep_3 + 76 -a, 1, -51.2 );
setRotateKey( spep_3 + 78 -a, 1, -45 );
setRotateKey( spep_3 + 80 -a, 1, -51.2 );
setRotateKey( spep_3 + 82 -a, 1, -45 );
setRotateKey( spep_3 + 84 -a, 1, -51.2 );
setRotateKey( spep_3 + 86 -a, 1, -45 );
setRotateKey( spep_3 + 88 -a, 1, -51.2 );
setRotateKey( spep_3 + 88 , 1, -51.2 );

-- ** エフェクト等 ** --
hidan = entryEffectLife( spep_3 + 0, SP_06r, 88, 0x80, -1, 0, 0, 0 );  --被弾(ef_006)
setEffMoveKey( spep_3 + 0, hidan, 0, 0 , 0 );
setEffMoveKey( spep_3 + 88, hidan, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hidan, 1.0, 1.0 );
setEffScaleKey( spep_3 + 88, hidan, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hidan, 0 );
setEffRotateKey( spep_3 + 88, hidan, 0 );
setEffAlphaKey( spep_3 + 0, hidan, 255 );
setEffAlphaKey( spep_3 + 88, hidan, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 88, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_3 + 80, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_3 , 9 );  --迫ってくる
playSe(  spep_3+30,  1014);  --被弾
playSe(  spep_3+40,  1014);  --被弾
playSe(  spep_3+50,  1014);  --被弾
playSe(  spep_3+60,  1014);  --被弾
playSe(  spep_3+70,  1014);  --被弾

-- ** 次の準備 ** --
spep_4 = spep_3 + 88;

------------------------------------------------------
-- 気溜め(118F)
------------------------------------------------------

-- ** エフェクト等 ** --
kidame = entryEffectLife( spep_4 + 0, SP_07r, 118, 0x100, -1, 0, 0, 0 );  --気溜め(ef_007)
setEffMoveKey( spep_4 + 0, kidame, 0, 0 , 0 );
setEffMoveKey( spep_4 + 118, kidame, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kidame, -1.0, 1.0 );
setEffScaleKey( spep_4 + 118, kidame, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kidame, 0 );
setEffRotateKey( spep_4 + 118, kidame, 0 );
setEffAlphaKey( spep_4 + 0, kidame, 255 );
setEffAlphaKey( spep_4 + 118, kidame, 255 );


-- ** 顔カットイン ** --
--speff = entryEffect( spep_4 + 28, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_4 + 28, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_4 + 0,  906, 118, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen2, 118, 10 );

setEffMoveKey( spep_4 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 118, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen2, 1.0, 1.20 );
setEffScaleKey( spep_4 + 118, shuchusen2, 1.0, 1.20 );

setEffRotateKey( spep_4 + 0, shuchusen2, 0 );
setEffRotateKey( spep_4 + 118, shuchusen2, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen2, 0 );
setEffAlphaKey( spep_4 + 41, shuchusen2, 0 );
setEffAlphaKey( spep_4 + 44, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 118, shuchusen2, 255 );

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_4 + 41,  190006, 70, 0x100, -1, 0, -8.5, 515.5 );  --ゴゴゴ
setEffShake( spep_4 + 41, ctgogo, 70, 10 );

setEffMoveKey( spep_4 + 41, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_4 + 111, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_4 + 41, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_4 + 103, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_4 + 105, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_4 + 107, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_4 + 109, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_4 + 111, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_4 + 41, ctgogo, 0 );
setEffRotateKey( spep_4 + 111, ctgogo, 0 );

setEffAlphaKey( spep_4 + 41, ctgogo, 255 );
setEffAlphaKey( spep_4 + 111, ctgogo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 118, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_4 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_4 + 106, 10, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_4 + 34, SE_04 );  --ゴゴゴ

-- ** 次の準備 ** --
spep_5 = spep_4 + 118;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_5 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_5 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_5 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_5 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_5 + 0, shuchusen, 0 );
setEffRotateKey( spep_5 + 90, shuchusen, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen, 255 );
setEffAlphaKey( spep_5 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_5 + 0, SE_05 );

-- ** ホワイトフェード ** --
entryFade( spep_5 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 94;

------------------------------------------------------
-- 投げる(88F)
------------------------------------------------------

-- ** 背景 ** --
nageruBG = entryEffectLife( spep_6 + 0, SP_09r, 88, 0x80, -1, 0, 0, 0 );  --投げる(ef_008)
setEffMoveKey( spep_6 + 0, nageruBG, 0, 0 , 0 );
setEffMoveKey( spep_6 + 88, nageruBG, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, nageruBG, -1.0, 1.0 );
setEffScaleKey( spep_6 + 88, nageruBG, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, nageruBG, 0 );
setEffRotateKey( spep_6 + 88, nageruBG, 0 );
setEffAlphaKey( spep_6 + 0, nageruBG, 255 );
setEffAlphaKey( spep_6 + 88, nageruBG, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_6,  921, 88, 0x80, -1, 0, 0, 0 );  --流線

setEffMoveKey( spep_6 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_6 + 88, ryusen1, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, ryusen1, 1.43, 0.89 );
setEffScaleKey( spep_6 + 88, ryusen1, 1.43, 0.89 );
setEffRotateKey( spep_6 + 0, ryusen1, -90 );
setEffRotateKey( spep_6 + 88, ryusen1, -90 );
setEffAlphaKey( spep_6 + 0, ryusen1, 0 );
setEffAlphaKey( spep_6 + 21 -a, ryusen1, 0 );
setEffAlphaKey( spep_6 + 22 -a, ryusen1, 255 );
setEffAlphaKey( spep_6 + 88, ryusen1, 255 );

nageru = entryEffectLife( spep_6 + 0, SP_08r, 88, 0x100, -1, 0, 0, 0 );  --投げる(ef_008)
setEffMoveKey( spep_6 + 0, nageru, 0, 0 , 0 );
setEffMoveKey( spep_6 + 88, nageru, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, nageru, -1.0, 1.0 );
setEffScaleKey( spep_6 + 88, nageru, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, nageru, 0 );
setEffRotateKey( spep_6 + 88, nageru, 0 );
setEffAlphaKey( spep_6 + 0, nageru, 255 );
setEffAlphaKey( spep_6 + 88, nageru, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_6 + 0,  906, 22 -a, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen4, 22-a, 10 );

setEffMoveKey( spep_6 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_6 + 22-a, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen4, 1, 1 );
setEffScaleKey( spep_6 + 22-a, shuchusen4, 1, 1 );

setEffRotateKey( spep_6 + 0, shuchusen4, 0 );
setEffRotateKey( spep_6 + 22-a, shuchusen4, 0 );

setEffAlphaKey( spep_6 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_6 + 21-a, shuchusen4, 255 );
setEffAlphaKey( spep_6 + 22-a, shuchusen4, 0 );


-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 88, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_6 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_6 + 76, 12, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_6 + 0, 17 );  --気弾溜め
playSe( spep_6 + 28, 1021 );  --着弾２

-- ** 次の準備 ** --
spep_7 = spep_6 + 88;

------------------------------------------------------
-- 着弾(70F)
------------------------------------------------------

hidan_b = entryEffectLife( spep_7 + 0, SP_11r, 70, 0x80, -1, 0, 0, 0 );  --着弾　奥(ef_010)
setEffMoveKey( spep_7 + 0, hidan_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 70, hidan_b, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, hidan_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 70, hidan_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, hidan_b, 0 );
setEffRotateKey( spep_7 + 70, hidan_b, 0 );
setEffAlphaKey( spep_7 + 0, hidan_b, 255 );
setEffAlphaKey( spep_7 + 70, hidan_b, 255 );

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_7 + 0,  921, 70, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_7 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_7 + 70, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, ryusen2, 1.4, 1.4 );
setEffScaleKey( spep_7 + 70, ryusen2, 1.4, 1.4 );

setEffRotateKey( spep_7 + 0, ryusen2, 17 );
setEffRotateKey( spep_7 + 70, ryusen2, 17 );

setEffAlphaKey( spep_7 + 0, ryusen2, 255 );
setEffAlphaKey( spep_7 + 70, ryusen2, 255 );


-- ** 敵キャラクター ** --
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 + 70, 1, 1 );
changeAnime( spep_7 + 0, 1, 106 );
setShakeChara(  spep_7 + 0,  1,  70,  20);  --揺れ

setMoveKey( spep_7 + 0, 1, 247.9, -69.1 , 0 );
setMoveKey( spep_7 + 2, 1, 245.8, -68.1 , 0 );
setMoveKey( spep_7 + 4, 1, 243.8, -67.1 , 0 );
setMoveKey( spep_7 + 6, 1, 241.8, -66.1 , 0 );
setMoveKey( spep_7 + 8, 1, 239.7, -65 , 0 );
setMoveKey( spep_7 + 10, 1, 237.7, -64 , 0 );
setMoveKey( spep_7 + 12, 1, 235.7, -63 , 0 );
setMoveKey( spep_7 + 14, 1, 233.6, -62 , 0 );
setMoveKey( spep_7 + 16, 1, 231.6, -61 , 0 );
setMoveKey( spep_7 + 18, 1, 229.6, -60 , 0 );
setMoveKey( spep_7 + 20, 1, 227.5, -58.9 , 0 );
setMoveKey( spep_7 + 22, 1, 225.5, -57.9 , 0 );
setMoveKey( spep_7 + 24, 1, 223.5, -56.9 , 0 );
setMoveKey( spep_7 + 26, 1, 221.4, -55.9 , 0 );
setMoveKey( spep_7 + 28, 1, 219.4, -54.9 , 0 );
setMoveKey( spep_7 + 30, 1, 217.4, -53.9 , 0 );
setMoveKey( spep_7 + 32, 1, 215.3, -52.8 , 0 );
setMoveKey( spep_7 + 34, 1, 213.3, -51.8 , 0 );
setMoveKey( spep_7 + 36, 1, 211.3, -50.8 , 0 );
setMoveKey( spep_7 + 38, 1, 209.2, -49.8 , 0 );
setMoveKey( spep_7 + 40, 1, 207.2, -48.8 , 0 );
setMoveKey( spep_7 + 42, 1, 205.2, -47.8 , 0 );
setMoveKey( spep_7 + 44, 1, 203.1, -46.8 , 0 );
setMoveKey( spep_7 + 46, 1, 201.1, -45.7 , 0 );
setMoveKey( spep_7 + 48, 1, 199.1, -44.7 , 0 );
setMoveKey( spep_7 + 50, 1, 197, -43.7 , 0 );
setMoveKey( spep_7 + 52, 1, 195, -42.7 , 0 );
setMoveKey( spep_7 + 54, 1, 193, -41.7 , 0 );
setMoveKey( spep_7 + 56, 1, 190.9, -40.7 , 0 );
setMoveKey( spep_7 + 58, 1, 188.9, -39.6 , 0 );
setMoveKey( spep_7 + 60, 1, 186.9, -38.6 , 0 );
setMoveKey( spep_7 + 62, 1, 184.8, -37.6 , 0 );
setMoveKey( spep_7 + 64, 1, 182.8, -36.6 , 0 );
setMoveKey( spep_7 + 66, 1, 180.8, -35.6 , 0 );
setMoveKey( spep_7 + 68, 1, 178.7, -34.6 , 0 );
setMoveKey( spep_7 + 70, 1, 176.7, -33.6 , 0 );

setScaleKey( spep_7 + 0, 1, 1, 1 );
setScaleKey( spep_7 + 2, 1, 1, 1 );
setScaleKey( spep_7 + 4, 1, 1.01, 1.01 );
setScaleKey( spep_7 + 6, 1, 1.02, 1.02 );
setScaleKey( spep_7 + 8, 1, 1.02, 1.02 );
setScaleKey( spep_7 + 10, 1, 1.03, 1.03 );
setScaleKey( spep_7 + 12, 1, 1.03, 1.03 );
setScaleKey( spep_7 + 14, 1, 1.04, 1.04 );
setScaleKey( spep_7 + 16, 1, 1.05, 1.05 );
setScaleKey( spep_7 + 18, 1, 1.05, 1.05 );
setScaleKey( spep_7 + 20, 1, 1.06, 1.06 );
setScaleKey( spep_7 + 22, 1, 1.06, 1.06 );
setScaleKey( spep_7 + 24, 1, 1.07, 1.07 );
setScaleKey( spep_7 + 26, 1, 1.07, 1.07 );
setScaleKey( spep_7 + 28, 1, 1.08, 1.08 );
setScaleKey( spep_7 + 30, 1, 1.08, 1.08 );
setScaleKey( spep_7 + 32, 1, 1.09, 1.09 );
setScaleKey( spep_7 + 34, 1, 1.1, 1.1 );
setScaleKey( spep_7 + 36, 1, 1.1, 1.1 );
setScaleKey( spep_7 + 38, 1, 1.11, 1.11 );
setScaleKey( spep_7 + 40, 1, 1.11, 1.11 );
setScaleKey( spep_7 + 42, 1, 1.12, 1.12 );
setScaleKey( spep_7 + 44, 1, 1.12, 1.12 );
setScaleKey( spep_7 + 46, 1, 1.13, 1.13 );
setScaleKey( spep_7 + 48, 1, 1.14, 1.14 );
setScaleKey( spep_7 + 50, 1, 1.14, 1.14 );
setScaleKey( spep_7 + 52, 1, 1.15, 1.15 );
setScaleKey( spep_7 + 54, 1, 1.15, 1.15 );
setScaleKey( spep_7 + 56, 1, 1.16, 1.16 );
setScaleKey( spep_7 + 58, 1, 1.16, 1.16 );
setScaleKey( spep_7 + 60, 1, 1.17, 1.17 );
setScaleKey( spep_7 + 62, 1, 1.18, 1.18 );
setScaleKey( spep_7 + 64, 1, 1.18, 1.18 );
setScaleKey( spep_7 + 66, 1, 1.19, 1.19 );
setScaleKey( spep_7 + 68, 1, 1.19, 1.19 );
setScaleKey( spep_7 + 70, 1, 1.2, 1.2 );

setRotateKey( spep_7 + 0, 1, -27.1 );
setRotateKey( spep_7 + 70, 1, -27.1 );


-- ** エフェクト等 ** --
hidan_f = entryEffectLife( spep_7 + 0, SP_10r, 70, 0x100, -1, 0, 0, 0 );  --着弾　手前(ef_010)
setEffMoveKey( spep_7 + 0, hidan_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 70, hidan_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, hidan_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 70, hidan_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, hidan_f, 0 );
setEffRotateKey( spep_7 + 70, hidan_f, 0 );
setEffAlphaKey( spep_7 + 0, hidan_f, 255 );
setEffAlphaKey( spep_7 + 70, hidan_f, 255 );


-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_7 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_7 + 54, 16, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_7 , 1022 );

-- ** 次の準備 ** --
spep_8 = spep_7 + 70;

------------------------------------------------------
-- ギャン(58F)
------------------------------------------------------

-- ** エフェクト等 ** --
gyan = entryEffectLife( spep_8 + 0, 190001, 58, 0x100, -1, 0, 0, 0 );  --ギャン
setEffMoveKey( spep_8 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_8 + 58, gyan, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_8 + 58, gyan, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, gyan, 0 );
setEffRotateKey( spep_8 + 58, gyan, 0 );
setEffAlphaKey( spep_8 + 0, gyan, 255 );
setEffAlphaKey( spep_8 + 58, gyan, 255 );

-- ** 書き文字 ** --
ctgyan = entryEffectLife( spep_8 + 0,  10006, 58, 0x100, -1, 0, 7.1, 306.8 );  --ギャンッ
setEffMoveKey( spep_8 + 0, ctgyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_8 + 58, ctgyan, 7.1, 306.8 , 0 );

setEffScaleKey( spep_8 + 0, ctgyan, 2.6, 2.6 );
setEffScaleKey( spep_8 + 6, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_8 + 8, ctgyan, 2.7, 2.7 );
setEffScaleKey( spep_8 + 10, ctgyan, 2.9, 2.9 );
setEffScaleKey( spep_8 + 12, ctgyan, 3, 3 );
setEffScaleKey( spep_8 + 14, ctgyan, 3.1, 3.1 );
setEffScaleKey( spep_8 + 16, ctgyan, 3.3, 3.3 );
setEffScaleKey( spep_8 + 18, ctgyan, 3.42, 3.42 );
setEffScaleKey( spep_8 + 20, ctgyan, 3.53, 3.53 );
setEffScaleKey( spep_8 + 22, ctgyan, 3.6, 3.6 );
setEffScaleKey( spep_8 + 24, ctgyan, 3.65, 3.65 );
setEffScaleKey( spep_8 + 26, ctgyan, 3.7, 3.7 );
setEffScaleKey( spep_8 + 28, ctgyan, 3.76, 3.76 );
setEffScaleKey( spep_8 + 30, ctgyan, 3.8, 3.8 );
setEffScaleKey( spep_8 + 32, ctgyan, 3.88, 3.88 );
setEffScaleKey( spep_8 + 34, ctgyan, 3.93, 3.93 );
setEffScaleKey( spep_8 + 36, ctgyan, 4.1, 4.1 );
setEffScaleKey( spep_8 + 38, ctgyan, 4.1, 4.1 );
setEffScaleKey( spep_8 + 40, ctgyan, 4.11, 4.11 );
setEffScaleKey( spep_8 + 42, ctgyan, 4.12, 4.12 );
setEffScaleKey( spep_8 + 44, ctgyan, 4.13, 4.13 );
setEffScaleKey( spep_8 + 46, ctgyan, 4.14, 4.14 );
setEffScaleKey( spep_8 + 48, ctgyan, 4.14, 4.14 );
setEffScaleKey( spep_8 + 50, ctgyan, 4.15, 4.15 );
setEffScaleKey( spep_8 + 52, ctgyan, 4.17, 4.17 );
setEffScaleKey( spep_8 + 54, ctgyan, 4.18, 4.18 );
setEffScaleKey( spep_8 + 56, ctgyan, 4.19, 4.19 );
setEffScaleKey( spep_8 + 58, ctgyan, 5, 5 );

setEffRotateKey( spep_8 + 0, ctgyan, 0 );
setEffRotateKey( spep_8 + 58, ctgyan, 0 );

setEffAlphaKey( spep_8 + 0, ctgyan, 255 );
setEffAlphaKey( spep_8 + 58, ctgyan, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 58, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_8 + 20, 38, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_8 + 0, 1023 );

-- ** 次の準備 ** --
spep_9 = spep_8 + 58;

------------------------------------------------------
-- 爆発(236F)
------------------------------------------------------

-- ** エフェクト等 ** --
bakuha = entryEffect( spep_9 + 0, 1586, 0x100, -1, 0, 0, 0 );  --爆発(ef_010)
setEffMoveKey( spep_9 + 0, bakuha, 0, 0 , 0 );
setEffMoveKey( spep_9 + 236, bakuha, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, bakuha, 1.1, 1.1 );
setEffScaleKey( spep_9 + 236, bakuha, 1.1, 1.1 );
setEffRotateKey( spep_9 + 0, bakuha, 0 );
setEffRotateKey( spep_9 + 236, bakuha, 0 );
setEffAlphaKey( spep_9 + 0, bakuha, 255 );
setEffAlphaKey( spep_9 + 236, bakuha, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 236, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_9 + 0, 0, 2, 28, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_9 + 0, 1069 );
playSe( spep_9 + 2, 1024 );

-- ** ダメージ表示 ** --
dealDamage( spep_9 + 100 );
entryFade( spep_9 + 224, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_9 + 230 );

end


