--1016030  ゴッドバインド

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--***SE***
SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
--SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--***エフェクト***
SP_01 = 152732  --敵が迫る・手前
SP_02 = 152733 --敵が迫る・奥
SP_03 = 152734  --溜め〜バインド ナビ
SP_04 = 152735  --敵を止める・手前
SP_05 = 152736  --敵を止める・奥
SP_06 = 152737  --カットイン ナビ
SP_07 = 152738  --バックステップ・手前
SP_08 = 152739  --バックステップ・奥
SP_09 = 152740  --正面図 ズサー〜溜め〜手前突っ込み ナビ
SP_10 = 152741  --着弾・手前
SP_11 = 152742  --着弾・奥
SP_12 = 152743  --爆発

--敵側
SP_01r = 152744  --敵が迫る・手前
SP_02r = 152733  --敵が迫る・奥
SP_03r = 152734  --溜め〜バインド ナビ
SP_04r = 152735  --敵を止める・手前
SP_05r = 152745  --敵を止める・奥
SP_06r = 152737  --カットイン ナビ
SP_07r = 152746  --バックステップ・手前
SP_08r = 152739  --バックステップ・奥
SP_09r = 152740  --正面図 ズサー〜溜め〜手前突っ込み ナビ
SP_10r = 152747  --着弾・手前
SP_11r = 152742  --着弾・奥
SP_12r = 152743  --爆発

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI(0, 0);

changeAnime( 0, 0, 1);                       -- 立ち
--changeAnime( 0, 1, 101);                       -- 立ち
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

setMoveKey(   0,   0,    -5000,  -5000,  0);
setMoveKey(   1,   0,    -5000,  -5000,  0);
setMoveKey(   2,   0,    -5000,  -5000,  0);
setMoveKey(   3,   0,    -5000,  -5000,  0);
setMoveKey(   4,   0,    -5000,  -5000,  0);
setMoveKey(   5,   0,    -5000,  -5000,  0);
setMoveKey(   6,   0,    -5000,  -5000,  0);
setScaleKey(  0,  0,  1.5,  1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   6,   0, 1.5, 1.5);

--[[
-- 敵
setMoveKey(   0,   1,    -5000,  -5000,  0);
setMoveKey(   1,   1,    -5000,  -5000,  0);
setMoveKey(   2,   1,    -5000,  -5000,  0);
setMoveKey(   3,   1,    -5000,  -5000,  0);
setMoveKey(   4,   1,    -5000,  -5000,  0);
setMoveKey(   5,   1,    -5000,  -5000,  0);
setMoveKey(   6,   1,    -5000,  -5000,  0);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
setScaleKey(   6,   1, 1.5, 1.5);
]]

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 構え(60F)
------------------------------------------------------
spep_1 = 0;

--***フェードと背景***
entryFade( spep_1, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--***背景***
kamaeBG = entryEffect(  spep_1,  SP_02,  0x80,  -1,  0,  0,  0);  --奥(ef_002)

setEffScaleKey(  spep_1,  kamaeBG,  1.0,  1.0);
setEffScaleKey(  spep_1+60,  kamaeBG,  1.0,  1.0);
setEffMoveKey(  spep_1,  kamaeBG,  0,  0);
setEffMoveKey(  spep_1+60,  kamaeBG,  0,  0);
setEffRotateKey(  spep_1,  kamaeBG,  0);
setEffRotateKey(  spep_1+60,  kamaeBG,  0);
setEffAlphaKey(  spep_1,  kamaeBG,  255);
setEffAlphaKey(  spep_1+60,  kamaeBG,  255);

--***敵の動き***
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1+60,  1,  0);  --消す
changeAnime( spep_1 + 0, 1, 116 );

setShakeChara(  spep_1,  1,  60,  10);  --揺らす
setMoveKey( spep_1 + 0, 1, 384.5, 105.3 , 0 );
setMoveKey( spep_1 + 2, 1, 371, 105.7 , 0 );
setMoveKey( spep_1 + 4, 1, 358.5, 106.2 , 0 );
setMoveKey( spep_1 + 6, 1, 346.9, 106.7 , 0 );
setMoveKey( spep_1 + 8, 1, 336.3, 107.3 , 0 );
setMoveKey( spep_1 + 10, 1, 326.7, 107.9 , 0 );
setMoveKey( spep_1 + 12, 1, 318, 108.6 , 0 );
setMoveKey( spep_1 + 14, 1, 310.5, 109.2 , 0 );
setMoveKey( spep_1 + 16, 1, 304, 109.9 , 0 );
setMoveKey( spep_1 + 18, 1, 298.6, 110.6 , 0 );
setMoveKey( spep_1 + 20, 1, 294.3, 110.1 , 0 );
setMoveKey( spep_1 + 22, 1, 289.8, 109.7 , 0 );
setMoveKey( spep_1 + 24, 1, 284.9, 109.1 , 0 );
setMoveKey( spep_1 + 26, 1, 275.8, 104.6 , 0 );
setMoveKey( spep_1 + 28, 1, 274.5, 108 , 0 );
setMoveKey( spep_1 + 30, 1, 264.8, 105.4 , 0 );
setMoveKey( spep_1 + 32, 1, 262.7, 106.7 , 0 );
setMoveKey( spep_1 + 34, 1, 254.3, 102.2 , 0 );
setMoveKey( spep_1 + 36, 1, 249.7, 105.6 , 0 );
setMoveKey( spep_1 + 38, 1, 240.8, 102.8 , 0 );
setMoveKey( spep_1 + 40, 1, 237.7, 104.5 , 0 );
setMoveKey( spep_1 + 42, 1, 223.4, 102.5 , 0 );
setMoveKey( spep_1 + 44, 1, 212.9, 104 , 0 );
setMoveKey( spep_1 + 46, 1, 191.7, 99.2 , 0 );
setMoveKey( spep_1 + 48, 1, 170, 102.4 , 0 );
setMoveKey( spep_1 + 50, 1, 139.3, 99.2 , 0 );
setMoveKey( spep_1 + 52, 1, 107.6, 100.1 , 0 );
setMoveKey( spep_1 + 54, 1, 64.5, 95.1 , 0 );
setMoveKey( spep_1 + 56, 1, 24.2, 98.3 , 0 );
setMoveKey( spep_1 + 58, 1, -27.5, 95.4 , 0 );
setMoveKey( spep_1 + 60, 1, -27.5, 95.4 , 0 );

setScaleKey( spep_1 + 0, 1, 0.18, 0.18 );
setScaleKey( spep_1 + 2, 1, 0.2, 0.2 );
setScaleKey( spep_1 + 4, 1, 0.24, 0.24 );
setScaleKey( spep_1 + 6, 1, 0.26, 0.26 );
setScaleKey( spep_1 + 8, 1, 0.29, 0.29 );
setScaleKey( spep_1 + 10, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 12, 1, 0.33, 0.33 );
setScaleKey( spep_1 + 14, 1, 0.37, 0.37 );
setScaleKey( spep_1 + 16, 1, 0.39, 0.39 );
setScaleKey( spep_1 + 18, 1, 0.42, 0.42 );
setScaleKey( spep_1 + 20, 1, 0.43, 0.43 );
setScaleKey( spep_1 + 22, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 24, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 26, 1, 0.52, 0.52 );
setScaleKey( spep_1 + 28, 1, 0.55, 0.55 );
setScaleKey( spep_1 + 30, 1, 0.59, 0.59 );
setScaleKey( spep_1 + 32, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 34, 1, 0.66, 0.66 );
setScaleKey( spep_1 + 36, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 38, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 40, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 42, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 44, 1, 0.98, 0.98 );
setScaleKey( spep_1 + 46, 1, 1.12, 1.12 );
setScaleKey( spep_1 + 48, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 50, 1, 1.52, 1.52 );
setScaleKey( spep_1 + 52, 1, 1.78, 1.78 );
setScaleKey( spep_1 + 54, 1, 2.07, 2.07 );
setScaleKey( spep_1 + 56, 1, 2.41, 2.41 );
setScaleKey( spep_1 + 58, 1, 2.8, 2.8 );
setScaleKey( spep_1 + 60, 1, 2.8, 2.8 );

setRotateKey( spep_1 + 0, 1, -26.5 );
setRotateKey( spep_1 + 2, 1, -26.9 );
setRotateKey( spep_1 + 4, 1, -27.4 );
setRotateKey( spep_1 + 6, 1, -27.8 );
setRotateKey( spep_1 + 8, 1, -28.3 );
setRotateKey( spep_1 + 10, 1, -28.8 );
setRotateKey( spep_1 + 12, 1, -29.4 );
setRotateKey( spep_1 + 14, 1, -29.9 );
setRotateKey( spep_1 + 16, 1, -30.5 );
setRotateKey( spep_1 + 18, 1, -31.1 );
setRotateKey( spep_1 + 20, 1, -31.7 );
setRotateKey( spep_1 + 22, 1, -32.4 );
setRotateKey( spep_1 + 24, 1, -33.1 );
setRotateKey( spep_1 + 26, 1, -33.8 );
setRotateKey( spep_1 + 28, 1, -34.5 );
setRotateKey( spep_1 + 30, 1, -35.2 );
setRotateKey( spep_1 + 32, 1, -36 );
setRotateKey( spep_1 + 34, 1, -36.8 );
setRotateKey( spep_1 + 36, 1, -37.6 );
setRotateKey( spep_1 + 38, 1, -38.4 );
setRotateKey( spep_1 + 40, 1, -38.8 );
setRotateKey( spep_1 + 42, 1, -39.3 );
setRotateKey( spep_1 + 44, 1, -39.7 );
setRotateKey( spep_1 + 46, 1, -40.1 );
setRotateKey( spep_1 + 48, 1, -40.5 );
setRotateKey( spep_1 + 50, 1, -40.9 );
setRotateKey( spep_1 + 52, 1, -41.4 );
setRotateKey( spep_1 + 54, 1, -41.8 );
setRotateKey( spep_1 + 56, 1, -42.3 );
setRotateKey( spep_1 + 58, 1, -42.7 );
setRotateKey( spep_1 + 60, 1, -42.7 );


--[[
setRotateKey( spep_1 + 0, 1, -46.5 );
setRotateKey( spep_1 + 2, 1, -46.9 );
setRotateKey( spep_1 + 4, 1, -47.4 );
setRotateKey( spep_1 + 6, 1, -47.8 );
setRotateKey( spep_1 + 8, 1, -48.3 );
setRotateKey( spep_1 + 10, 1, -48.8 );
setRotateKey( spep_1 + 12, 1, -49.4 );
setRotateKey( spep_1 + 14, 1, -49.9 );
setRotateKey( spep_1 + 16, 1, -50.5 );
setRotateKey( spep_1 + 18, 1, -51.1 );
setRotateKey( spep_1 + 20, 1, -51.7 );
setRotateKey( spep_1 + 22, 1, -52.4 );
setRotateKey( spep_1 + 24, 1, -53.1 );
setRotateKey( spep_1 + 26, 1, -53.8 );
setRotateKey( spep_1 + 28, 1, -54.5 );
setRotateKey( spep_1 + 30, 1, -55.2 );
setRotateKey( spep_1 + 32, 1, -56 );
setRotateKey( spep_1 + 34, 1, -56.8 );
setRotateKey( spep_1 + 36, 1, -57.6 );
setRotateKey( spep_1 + 38, 1, -58.4 );
setRotateKey( spep_1 + 40, 1, -58.8 );
setRotateKey( spep_1 + 42, 1, -59.3 );
setRotateKey( spep_1 + 44, 1, -59.7 );
setRotateKey( spep_1 + 46, 1, -60.1 );
setRotateKey( spep_1 + 48, 1, -60.5 );
setRotateKey( spep_1 + 50, 1, -60.9 );
setRotateKey( spep_1 + 52, 1, -61.4 );
setRotateKey( spep_1 + 54, 1, -61.8 );
setRotateKey( spep_1 + 56, 1, -62.3 );
setRotateKey( spep_1 + 58, 1, -62.7 );
setRotateKey( spep_1 + 60, 1, -62.7 );
]]
--***構え***
kamae = entryEffect(  spep_1,  SP_01,  0x100,  -1,  0,  0,  0);  --構え(ef_001)

setEffScaleKey(  spep_1,  kamae,  1.0,  1.0);
setEffScaleKey(  spep_1+60,  kamae,  1.0,  1.0);
setEffMoveKey(  spep_1,  kamae,  0,  0);
setEffMoveKey(  spep_1+60,  kamae,  0,  0);
setEffRotateKey(  spep_1,  kamae,  0);
setEffRotateKey(  spep_1+60,  kamae,  0);
setEffAlphaKey(  spep_1,  kamae,  255);
setEffAlphaKey(  spep_1+60,  kamae,  255);

--***SE***
playSe(  spep_1,  8);  --敵近く

--***白フェード***
entryFade(  spep_1+56,  2,  8,  2,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
--気溜め(130F)
------------------------------------------------------
spep_2 = spep_1+60;

--***書き文字***
ct_zuzu = entryEffectLife( spep_2+10,  10013, 22, 0x100, -1, 0, 20.1, 278.4 );  --ズズズン

setEffShake(  spep_2+10,  ct_zuzu,  22,  20);  --揺れ
setEffMoveKey( spep_2 + 10, ct_zuzu, 20.1, 278.4 , 0 );
setEffMoveKey( spep_2 + 12, ct_zuzu, 30.8, 351.5 , 0 );
setEffMoveKey( spep_2 + 14, ct_zuzu, 44.8, 396.6 , 0 );
setEffMoveKey( spep_2 + 16, ct_zuzu, 31.5, 372.4 , 0 );
setEffMoveKey( spep_2 + 18, ct_zuzu, 37.1, 372.1 , 0 );
setEffMoveKey( spep_2 + 32, ct_zuzu, 37.1, 372.1 , 0 );
setEffScaleKey( spep_2 + 10, ct_zuzu, 0.91, 0.91 );
setEffScaleKey( spep_2 + 12, ct_zuzu, 1.85, 1.85 );
setEffScaleKey( spep_2 + 14, ct_zuzu, 2.39, 2.39 );
setEffScaleKey( spep_2 + 32, ct_zuzu, 2.39, 2.39 );
setEffRotateKey( spep_2 + 10, ct_zuzu, -5 );
setEffRotateKey( spep_2 + 32, ct_zuzu, -5 );
setEffAlphaKey( spep_2 + 10, ct_zuzu, 255 );
setEffAlphaKey( spep_2 + 22, ct_zuzu, 255 );
setEffAlphaKey( spep_2 + 24, ct_zuzu, 186 );
setEffAlphaKey( spep_2 + 26, ct_zuzu, 104 );
setEffAlphaKey( spep_2 + 28, ct_zuzu, 46 );
setEffAlphaKey( spep_2 + 30, ct_zuzu, 12 );
setEffAlphaKey( spep_2 + 32, ct_zuzu, 0 );

ct_ba = entryEffectLife( spep_2 + 56,  10022, 24, 0x100, -1, 0, 74.1, 448.6 );

setEffShake(  spep_2+56,  ct_ba,  24,  20);  --揺れ
setEffMoveKey( spep_2 + 56, ct_ba, 74.1, 448.6 , 0 );
setEffMoveKey( spep_2 + 80, ct_ba, 74.2, 448.5 , 0 );
setEffScaleKey( spep_2 + 56, ct_ba, 0.72, 0.72 );
setEffScaleKey( spep_2 + 58, ct_ba, 1.35, 1.35 );
setEffScaleKey( spep_2 + 60, ct_ba, 1.99, 1.99 );
setEffScaleKey( spep_2 + 62, ct_ba, 1.78, 1.78 );
setEffScaleKey( spep_2 + 64, ct_ba, 1.56, 1.56 );
setEffScaleKey( spep_2 + 66, ct_ba, 1.35, 1.35 );
setEffScaleKey( spep_2 + 70, ct_ba, 1.35, 1.35 );
setEffScaleKey( spep_2 + 72, ct_ba, 1.27, 1.27 );
setEffScaleKey( spep_2 + 74, ct_ba, 1.2, 1.2 );
setEffScaleKey( spep_2 + 76, ct_ba, 1.12, 1.12 );
setEffScaleKey( spep_2 + 78, ct_ba, 1.04, 1.04 );
setEffScaleKey( spep_2 + 80, ct_ba, 0.96, 0.96 );
setEffRotateKey( spep_2 + 56, ct_ba, 20.7 );
setEffRotateKey( spep_2 + 80, ct_ba, 20.7 );
setEffAlphaKey( spep_2 + 56, ct_ba, 0 );
setEffAlphaKey( spep_2 + 57, ct_ba, 255 );
setEffAlphaKey( spep_2 + 60, ct_ba, 255 );
setEffAlphaKey( spep_2 + 62, ct_ba, 204 );
setEffAlphaKey( spep_2 + 74, ct_ba, 153 );
setEffAlphaKey( spep_2 + 76, ct_ba, 102 );
setEffAlphaKey( spep_2 + 78, ct_ba, 51 );
setEffAlphaKey( spep_2 + 80, ct_ba, 0 );

--***集中線***
shuchusen2 = entryEffectLife(  spep_2,  906,  130,  0x100,  -1,  0,  0,  0);  --集中線

setEffMoveKey(  spep_2,  shuchusen2,  0,  0);
setEffMoveKey(  spep_2+130,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2,  shuchusen2,  1.12,  1.73);
setEffScaleKey(  spep_2+130,  shuchusen2,  1.12,  1.73);
setEffRotateKey(  spep_2,  shuchusen2,  0);
setEffRotateKey(  spep_2+130,  shuchusen2,  0);
setEffAlphaKey(  spep_2,  shuchusen2,  0);
setEffAlphaKey(  spep_2+56,  shuchusen2,  0);
setEffAlphaKey(  spep_2+57,  shuchusen2,  255);
setEffAlphaKey(  spep_2+130,  shuchusen2,  255);

--***気溜め***
kitame = entryEffect(  spep_2,  SP_03,  0x80,  -1,  0,  0,  0);  --気溜め(ef_002)

setEffScaleKey(  spep_2,  kitame,  1.0,  1.0);
setEffScaleKey(  spep_2+130,  kitame,  1.0,  1.0);
setEffMoveKey(  spep_2,  kitame,  0,  0);
setEffMoveKey(  spep_2+130,  kitame,  0,  0);
setEffRotateKey(  spep_2,  kitame,  0);
setEffRotateKey(  spep_2+130,  kitame,  0);
setEffAlphaKey(  spep_2,  kitame,  255);
setEffAlphaKey(  spep_2+130,  kitame,  255);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 10; --エンドフェイズのフレーム数を置き換える

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

--***白フェード***
entryFade(  spep_2+57,  0,  2,  0,  fcolor_r,  fcolor_g,  fcolor_b,  200);  --white fade ちょっと薄く
-- 書き文字と集中線と白フラは同じタイミング
entryFade(  spep_2+126,  2,  4,  2,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

--***SE***
playSe(  spep_2,  1035);  --気溜め
playSe(  spep_2+57,  1013);  --バッ
playSe(  spep_2+60,  17);  --丸い気

------------------------------------------------------
--超能力(90F)
------------------------------------------------------

spep_3 = spep_2+130;

--***集中線***
shuchusen3 = entryEffectLife(  spep_3,  906,  90,  0x100,  -1,  0,  0,  0);  --集中線

setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffMoveKey(  spep_3+90,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3,  shuchusen3,  1.12,  1.73);
setEffScaleKey(  spep_3+90,  shuchusen3,  1.12,  1.73);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffRotateKey(  spep_3+90,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  77);
setEffAlphaKey(  spep_3+90,  shuchusen3,  77);

--***超能力***
psychicBG = entryEffect(  spep_3,  SP_05,  0x80,  -1,  0,  0,  0);  --超能力(ef_003)

setEffScaleKey(  spep_3,  psychicBG,  1.0,  1.0);
setEffScaleKey(  spep_3+90,  psychicBG,  1.0,  1.0);
setEffMoveKey(  spep_3,  psychicBG,  0,  0);
setEffMoveKey(  spep_3+90,  psychicBG,  0,  0);
setEffRotateKey(  spep_3,  psychicBG,  0);
setEffRotateKey(  spep_3+90,  psychicBG,  0);
setEffAlphaKey(  spep_3,  psychicBG,  255);
setEffAlphaKey(  spep_3+90,  psychicBG,  255);

--***敵の動き***
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-3 + 88, 1, 0 );  --消す
changeAnime( spep_3 + 0, 1, 106 );

setShakeChara(  spep_3,  1,  88,  10);  --揺れ
setMoveKey( spep_3-3 + 0, 1, 469.7, 220.3 , 0 );
setMoveKey( spep_3-3 + 2, 1, 435.8, 214.4 , 0 );
setMoveKey( spep_3-3 + 4, 1, 392.2, 205.2 , 0 );
setMoveKey( spep_3-3 + 6, 1, 338.9, 192.1 , 0 );
setMoveKey( spep_3-3 + 8, 1, 276.2, 174.8 , 0 );
setMoveKey( spep_3-3 + 10, 1, 204.3, 152.4 , 0 );
setMoveKey( spep_3-3 + 12, 1, 103.3, 104.2 , 0 );
setMoveKey( spep_3-3 + 14, 1, 122.5, 125 , 0 );
setMoveKey( spep_3-3 + 16, 1, 115.7, 121.7 , 0 );
setMoveKey( spep_3-3 + 18, 1, 120.9, 126.4 , 0 );
setMoveKey( spep_3-3 + 20, 1, 118.2, 119 , 0 );
setMoveKey( spep_3-3 + 22, 1, 119.4, 127.7 , 0 );
setMoveKey( spep_3-3 + 24, 1, 98.6, 118.4 , 0 );
setMoveKey( spep_3-3 + 26, 1, 117.8, 129 , 0 );
setMoveKey( spep_3-3 + 28, 1, 111, 109.7 , 0 );
setMoveKey( spep_3-3 + 30, 1, 116.2, 130.3 , 0 );
setMoveKey( spep_3-3 + 32, 1, 113.4, 125 , 0 );
setMoveKey( spep_3-3 + 34, 1, 114.6, 131.6 , 0 );
setMoveKey( spep_3-3 + 36, 1, 93.7, 124.2 , 0 );
setMoveKey( spep_3-3 + 38, 1, 112.9, 132.8 , 0 );
setMoveKey( spep_3-3 + 40, 1, 106.1, 113.4 , 0 );
setMoveKey( spep_3-3 + 42, 1, 111.3, 133.9 , 0 );
setMoveKey( spep_3-3 + 44, 1, 104.5, 130.5 , 0 );
setMoveKey( spep_3-3 + 46, 1, 109.7, 135.1 , 0 );
setMoveKey( spep_3-3 + 48, 1, 106.9, 133.6 , 0 );
setMoveKey( spep_3-3 + 50, 1, 108.1, 136.2 , 0 );
setMoveKey( spep_3-3 + 52, 1, 99.3, 134.7 , 0 );
setMoveKey( spep_3-3 + 54, 1, 106.4, 137.2 , 0 );
setMoveKey( spep_3-3 + 56, 1, 103.6, 129.7 , 0 );
setMoveKey( spep_3-3 + 58, 1, 104.8, 138.2 , 0 );
setMoveKey( spep_3-3 + 60, 1, 96, 136.7 , 0 );
setMoveKey( spep_3-3 + 62, 1, 103.2, 139.2 , 0 );
setMoveKey( spep_3-3 + 64, 1, 100.3, 137.7 , 0 );
setMoveKey( spep_3-3 + 66, 1, 101.5, 140.1 , 0 );
setMoveKey( spep_3-3 + 68, 1, 98.7, 136.6 , 0 );
setMoveKey( spep_3-3 + 70, 1, 99.9, 141 , 0 );
setMoveKey( spep_3-3 + 72, 1, 97, 141.4 , 0 );
setMoveKey( spep_3-3 + 74, 1, 98.2, 141.9 , 0 );
setMoveKey( spep_3-3 + 76, 1, 97.4, 140.3 , 0 );
setMoveKey( spep_3-3 + 78, 1, 96.5, 142.7 , 0 );
setMoveKey( spep_3-3 + 80, 1, 93.7, 143.1 , 0 );
setMoveKey( spep_3-3 + 82, 1, 94.9, 143.4 , 0 );
setMoveKey( spep_3-3 + 84, 1, 94, 139.8 , 0 );
setMoveKey( spep_3-3 + 86, 1, 93.2, 144.2 , 0 );
setMoveKey( spep_3-3 + 88, 1, 92.4, 144.5 , 0 );

setScaleKey( spep_3-3 + 0, 1, 2.65, 2.65 );
setScaleKey( spep_3-3 + 2, 1, 2.47, 2.47 );
setScaleKey( spep_3-3 + 4, 1, 2.23, 2.23 );
setScaleKey( spep_3-3 + 6, 1, 1.93, 1.93 );
setScaleKey( spep_3-3 + 8, 1, 1.59, 1.59 );
setScaleKey( spep_3-3 + 10, 1, 1.19, 1.19 );
setScaleKey( spep_3-3 + 12, 1, 0.73, 0.73 );
setScaleKey( spep_3-3 + 16, 1, 0.73, 0.73 );
setScaleKey( spep_3-3 + 18, 1, 0.72, 0.72 );
setScaleKey( spep_3-3 + 20, 1, 0.72, 0.72 );
setScaleKey( spep_3-3 + 22, 1, 0.71, 0.71 );
setScaleKey( spep_3-3 + 24, 1, 0.71, 0.71 );
setScaleKey( spep_3-3 + 26, 1, 0.7, 0.7 );
setScaleKey( spep_3-3 + 28, 1, 0.7, 0.7 );
setScaleKey( spep_3-3 + 30, 1, 0.69, 0.69 );
setScaleKey( spep_3-3 + 32, 1, 0.69, 0.69 );
setScaleKey( spep_3-3 + 34, 1, 0.68, 0.68 );
setScaleKey( spep_3-3 + 38, 1, 0.68, 0.68 );
setScaleKey( spep_3-3 + 40, 1, 0.67, 0.67 );
setScaleKey( spep_3-3 + 42, 1, 0.67, 0.67 );
setScaleKey( spep_3-3 + 44, 1, 0.66, 0.66 );
setScaleKey( spep_3-3 + 46, 1, 0.66, 0.66 );
setScaleKey( spep_3-3 + 48, 1, 0.65, 0.65 );
setScaleKey( spep_3-3 + 50, 1, 0.65, 0.65 );
setScaleKey( spep_3-3 + 52, 1, 0.64, 0.64 );
setScaleKey( spep_3-3 + 54, 1, 0.64, 0.64 );
setScaleKey( spep_3-3 + 56, 1, 0.63, 0.63 );
setScaleKey( spep_3-3 + 60, 1, 0.63, 0.63 );
setScaleKey( spep_3-3 + 62, 1, 0.62, 0.62 );
setScaleKey( spep_3-3 + 64, 1, 0.62, 0.62 );
setScaleKey( spep_3-3 + 66, 1, 0.61, 0.61 );
setScaleKey( spep_3-3 + 68, 1, 0.61, 0.61 );
setScaleKey( spep_3-3 + 70, 1, 0.6, 0.6 );
setScaleKey( spep_3-3 + 72, 1, 0.6, 0.6 );
setScaleKey( spep_3-3 + 74, 1, 0.59, 0.59 );
setScaleKey( spep_3-3 + 76, 1, 0.59, 0.59 );
setScaleKey( spep_3-3 + 78, 1, 0.58, 0.58 );
setScaleKey( spep_3-3 + 80, 1, 0.58, 0.58 );
setScaleKey( spep_3-3 + 82, 1, 0.57, 0.57 );
setScaleKey( spep_3-3 + 86, 1, 0.57, 0.57 );
setScaleKey( spep_3-3 + 88, 1, 0.56, 0.56 );

setRotateKey( spep_3-3 + 0, 1, -39.7 );
setRotateKey( spep_3-3 + 2, 1, -39.9 );
setRotateKey( spep_3-3 + 4, 1, -40.3 );
setRotateKey( spep_3-3 + 6, 1, -40.7 );
setRotateKey( spep_3-3 + 8, 1, -41.2 );
setRotateKey( spep_3-3 + 10, 1, -41.7 );
setRotateKey( spep_3-3 + 12, 1, -42.4 );
setRotateKey( spep_3-3 + 22, 1, -42.4 );
setRotateKey( spep_3-3 + 24, 1, -42.5 );
setRotateKey( spep_3-3 + 34, 1, -42.5 );
setRotateKey( spep_3-3 + 36, 1, -42.6 );
setRotateKey( spep_3-3 + 46, 1, -42.6 );
setRotateKey( spep_3-3 + 48, 1, -42.7 );
setRotateKey( spep_3-3 + 58, 1, -42.7 );
setRotateKey( spep_3-3 + 60, 1, -42.8 );
setRotateKey( spep_3-3 + 70, 1, -42.8 );
setRotateKey( spep_3-3 + 72, 1, -42.9 );
setRotateKey( spep_3-3 + 82, 1, -42.9 );
setRotateKey( spep_3-3 + 84, 1, -43 );
setRotateKey( spep_3-3 + 88, 1, -43 );

--***超能力***
psychic = entryEffect(  spep_3,  SP_04,  0x100,  -1,  0,  0,  0);  --超能力(ef_003)

setEffScaleKey(  spep_3,  psychic,  1.0,  1.0);
setEffScaleKey(  spep_3+90,  psychic,  1.0,  1.0);
setEffMoveKey(  spep_3,  psychic,  0,  0);
setEffMoveKey(  spep_3+90,  psychic,  0,  0);
setEffRotateKey(  spep_3,  psychic,  0);
setEffRotateKey(  spep_3+90,  psychic,  0);
setEffAlphaKey(  spep_3,  psychic,  255);
setEffAlphaKey(  spep_3+90,  psychic,  255);

--***SE***
playSe(  spep_3,  1002);  --飛ばす
playSe(  spep_3+20,  8);  --風
playSe(  spep_3+30,  9);  --風2

entryFade(  spep_3+84,  2,  8,  4,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
--ナビアップ(120F)
------------------------------------------------------

spep_4 = spep_3+90;

--***集中線***
shuchusen4 = entryEffectLife(  spep_4,  906,  90,  0x100,  -1,  0,  0,  0);  --集中線

setEffMoveKey(  spep_4,  shuchusen4,  0,  0);
setEffMoveKey(  spep_4+120,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4,  shuchusen4,  1.12,  1.73);
setEffScaleKey(  spep_4+120,  shuchusen4,  1.12,  1.73);
setEffRotateKey(  spep_4,  shuchusen4,  0);
setEffRotateKey(  spep_4+120,  shuchusen4,  0);
setEffAlphaKey(  spep_4,  shuchusen4,  77);
setEffAlphaKey(  spep_4+120,  shuchusen4,  77);

--***ナビアップ***
nabi = entryEffect(  spep_4,  SP_06,  0x100,  -1,  0,  0,  0);  --溜めから発射

setEffScaleKey(  spep_4,  nabi,  1.0,  1.0);
setEffScaleKey(  spep_4+120,  nabi,  1.0,  1.0);
setEffMoveKey(  spep_4,  nabi,  0,  0);
setEffMoveKey(  spep_4+120,  nabi,  0,  0);
setEffRotateKey(  spep_4,  nabi,  0);
setEffRotateKey(  spep_4+120,  nabi,  0);
setEffAlphaKey(  spep_4,  nabi,  255);
setEffAlphaKey(  spep_4+120,  nabi,  255);

--顔カットイン
speff=entryEffect(spep_4+10,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_4+10,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--ゴゴゴ
ctgogo=entryEffectLife(spep_4+22,190006,70,0x100,-1,0,520);--ゴゴゴ

setEffMoveKey(spep_4+22,ctgogo,0,520,0);
setEffMoveKey(spep_4+92,ctgogo,0,520,0);

setEffScaleKey(spep_4+22, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_4+82, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_4+92, ctgogo, 1.7, 1.7);

setEffAlphaKey( spep_4 + 22, ctgogo, 0 );
setEffAlphaKey( spep_4 + 23, ctgogo, 255 );
setEffAlphaKey( spep_4 + 92, ctgogo, 255 );

setEffRotateKey(spep_4+22,ctgogo,0);
setEffRotateKey(spep_4+92,ctgogo,0);

--***SE***
playSe(  spep_4+22,  SE_04);  --ゴゴゴ

entryFade(  spep_4+110,  6,  6,  4,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
--カード(90F)
------------------------------------------------------
spep_5 = spep_4+120;

speff = entryEffect(  spep_5,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen5 = entryEffectLife( spep_5, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_5,  shuchusen5,  0,  0);
setEffMoveKey(  spep_5+90,  shuchusen5,  0,  0);
setEffScaleKey(  spep_5,  shuchusen5,  1.6,  1.6);
setEffScaleKey(  spep_5+90,  shuchusen5,  1.6,  1.6);
setEffRotateKey(  spep_5,  shuchusen5,  0);
setEffRotateKey(  spep_5+90,  shuchusen5,  0);
setEffAlphaKey(  spep_5,  shuchusen5,  255);
setEffAlphaKey(  spep_5+90,  shuchusen5,  255);

--***SE***
playSe( spep_5, SE_05);

--***白フェード***
entryFade(  spep_5+80,  6,  10,  4,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
--後ろに飛ぶ(50F)
------------------------------------------------------
spep_6 = spep_5+90;

--***集中線***
shuchusen6 = entryEffectLife( spep_6, 906, 36, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_6,  shuchusen6,  0,  0);
setEffMoveKey(  spep_6+36,  shuchusen6,  0,  0);
setEffScaleKey(  spep_6,  shuchusen6,  1.18,  1.17);
setEffScaleKey(  spep_6+36,  shuchusen6,  1.18,  1.17);
setEffRotateKey(  spep_6,  shuchusen6,  0);
setEffRotateKey(  spep_6+36,  shuchusen6,  0);
setEffAlphaKey(  spep_6,  shuchusen6,  255);
setEffAlphaKey(  spep_6+24,  shuchusen6,  255);
setEffAlphaKey(  spep_6+36,  shuchusen6,  0);

--***背景***+
stepBG = entryEffect(  spep_6,  SP_08,  0x80,  -1,  0,  0,  0);  --バックステップ(ef_005)

setEffScaleKey(  spep_6,  stepBG,  1.05,  1.05);
setEffScaleKey(  spep_6+50,  stepBG,  1.05,  1.05);
setEffMoveKey(  spep_6,  stepBG,  0,  0);
setEffMoveKey(  spep_6+50,  stepBG,  0,  0);
setEffRotateKey(  spep_6,  stepBG,  0);
setEffRotateKey(  spep_6+50,  stepBG,  0);
setEffAlphaKey(  spep_6,  stepBG,  255);
setEffAlphaKey(  spep_6+50,  stepBG,  255);

--***敵の動き***
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 45, 1, 0 );  --消す
setDisp( spep_6 + 46, 1, 0 );  --消す
changeAnime( spep_6 + 0, 1, 106 );

setMoveKey( spep_6 + 0, 1, 325, 401.2 , 0 );
--setMoveKey( spep_6 + 2, 1, 319.2, 372.9 , 0 );
setMoveKey( spep_6-3 + 4, 1, 312.9, 344.9 , 0 );
setMoveKey( spep_6-3 + 6, 1, 306.1, 317.3 , 0 );
setMoveKey( spep_6-3 + 8, 1, 298.8, 290 , 0 );
setMoveKey( spep_6-3 + 10, 1, 284.7, 265.3 , 0 );
setMoveKey( spep_6-3 + 12, 1, 270.1, 241.1 , 0 );
setMoveKey( spep_6-3 + 14, 1, 255.1, 217.4 , 0 );
setMoveKey( spep_6-3 + 16, 1, 239.5, 194.2 , 0 );
setMoveKey( spep_6-3 + 18, 1, 223.5, 171.5 , 0 );
setMoveKey( spep_6-3 + 20, 1, 207.1, 149.3 , 0 );
setMoveKey( spep_6-3 + 22, 1, 253.4, 131.9 , 0 );
setMoveKey( spep_6-3 + 24, 1, 289.3, 118.7 , 0 );
setMoveKey( spep_6-3 + 26, 1, 314.8, 109.4 , 0 );
setMoveKey( spep_6-3 + 28, 1, 330.1, 103.9 , 0 );
setMoveKey( spep_6-3 + 30, 1, 335.2, 102.1 , 0 );
setMoveKey( spep_6-3 + 32, 1, 337.5, 101.6 , 0 );
setMoveKey( spep_6-3 + 34, 1, 339.8, 101.1 , 0 );
setMoveKey( spep_6-3 + 36, 1, 342.1, 100.5 , 0 );
setMoveKey( spep_6-3 + 38, 1, 344.4, 100 , 0 );
setMoveKey( spep_6-3 + 40, 1, 346.8, 99.5 , 0 );
setMoveKey( spep_6-3 + 42, 1, 349.1, 98.9 , 0 );
setMoveKey( spep_6-3 + 44, 1, 351.4, 98.4 , 0 );
setMoveKey( spep_6-3 + 46, 1, 353.7, 97.8 , 0 );
setMoveKey( spep_6-3 + 48, 1, 356, 97.3 , 0 );

setScaleKey( spep_6 + 0, 1, 1.94, 1.94 );
--setScaleKey( spep_6-3 + 2, 1, 1.88, 1.88 );
setScaleKey( spep_6-3 + 4, 1, 1.81, 1.81 );
setScaleKey( spep_6-3 + 6, 1, 1.75, 1.75 );
setScaleKey( spep_6-3 + 8, 1, 1.68, 1.68 );
setScaleKey( spep_6-3 + 10, 1, 1.59, 1.59 );
setScaleKey( spep_6-3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_6-3 + 14, 1, 1.4, 1.4 );
setScaleKey( spep_6-3 + 16, 1, 1.31, 1.31 );
setScaleKey( spep_6-3 + 18, 1, 1.22, 1.22 );
setScaleKey( spep_6-3 + 20, 1, 1.12, 1.12 );
setScaleKey( spep_6-3 + 22, 1, 0.98, 0.98 );
setScaleKey( spep_6-3 + 24, 1, 0.87, 0.87 );
setScaleKey( spep_6-3 + 26, 1, 0.8, 0.8 );
setScaleKey( spep_6-3 + 28, 1, 0.75, 0.75 );
setScaleKey( spep_6-3 + 30, 1, 0.73, 0.73 );
setScaleKey( spep_6-3 + 32, 1, 0.73, 0.73 );
setScaleKey( spep_6-3 + 34, 1, 0.72, 0.72 );
setScaleKey( spep_6-3 + 36, 1, 0.72, 0.72 );
setScaleKey( spep_6-3 + 38, 1, 0.71, 0.71 );
setScaleKey( spep_6-3 + 40, 1, 0.71, 0.71 );
setScaleKey( spep_6-3 + 42, 1, 0.7, 0.7 );
setScaleKey( spep_6-3 + 44, 1, 0.7, 0.7 );
setScaleKey( spep_6-3 + 46, 1, 0.69, 0.69 );
setScaleKey( spep_6-3 + 48, 1, 0.68, 0.68 );

setRotateKey( spep_6 + 0, 1, -50 );
--setRotateKey( spep_6-3 + 2, 1, -48.7 );
setRotateKey( spep_6-3 + 4, 1, -47.5 );
setRotateKey( spep_6-3 + 6, 1, -46.2 );
setRotateKey( spep_6-3 + 8, 1, -45 );
setRotateKey( spep_6-3 + 10, 1, -44 );
setRotateKey( spep_6-3 + 12, 1, -43 );
setRotateKey( spep_6-3 + 14, 1, -42 );
setRotateKey( spep_6-3 + 16, 1, -41 );
setRotateKey( spep_6-3 + 18, 1, -40 );
setRotateKey( spep_6-3 + 20, 1, -39 );
setRotateKey( spep_6-3 + 22, 1, -38.5 );
setRotateKey( spep_6-3 + 24, 1, -38.2 );
setRotateKey( spep_6-3 + 26, 1, -37.9 );
setRotateKey( spep_6-3 + 28, 1, -37.8 );
setRotateKey( spep_6-3 + 30, 1, -37.7 );
setRotateKey( spep_6-3 + 40, 1, -37.7 );
setRotateKey( spep_6-3 + 42, 1, -37.8 );
setRotateKey( spep_6-3 + 48, 1, -37.8 );

--***後ろに飛ぶ***+
step = entryEffect(  spep_6,  SP_07,  0x80,  -1,  0,  0,  0);  --バックステップ(ef_005)

setEffScaleKey(  spep_6,  step,  1.05,  1.05);
setEffScaleKey(  spep_6+50,  step,  1.05,  1.05);
setEffMoveKey(  spep_6,  step,  0,  0);
setEffMoveKey(  spep_6+50,  step,  0,  0);
setEffRotateKey(  spep_6,  step,  0);
setEffRotateKey(  spep_6+50,  step,  0);
setEffAlphaKey(  spep_6,  step,  255);
setEffAlphaKey(  spep_6+50,  step,  255);

--***SE***
playSe(  spep_6+20,  1004);  --後ろに飛ぶ

entryFade(  spep_6+40,  4,  8,  4,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
--突進(190F)
------------------------------------------------------
spep_7 = spep_6+50;

--***書き文字***
ct_zuo = entryEffectLife( spep_7 + 124,  10012, 42, 0x10, -1, 0, 49.6, 322.4 );

setEffShake(  spep_7+124,  ct_zuo,  42,  20);  --揺れ
setEffMoveKey( spep_7 + 124, ct_zuo, 49.6, 322.4 , 0 );
setEffMoveKey( spep_7 + 126, ct_zuo, 66.1, 355.5 , 0 );
setEffMoveKey( spep_7 + 128, ct_zuo, 67.1, 397.6 , 0 );
setEffMoveKey( spep_7 + 130, ct_zuo, 92.4, 417.3 , 0 );
setEffMoveKey( spep_7 + 158, ct_zuo, 92.4, 417.3 , 0 );
setEffMoveKey( spep_7 + 160, ct_zuo, 94, 438.2 , 0 );
setEffMoveKey( spep_7 + 162, ct_zuo, 139.6, 415.1 , 0 );
setEffMoveKey( spep_7 + 164, ct_zuo, 129.2, 448 , 0 );
setEffMoveKey( spep_7 + 166, ct_zuo, 146.9, 452.9 , 0 );
setEffScaleKey( spep_7 + 124, ct_zuo, 0.34, 0.34 );
setEffScaleKey( spep_7 + 126, ct_zuo, 1.14, 1.14 );
setEffScaleKey( spep_7 + 128, ct_zuo, 1.93, 1.93 );
setEffScaleKey( spep_7 + 130, ct_zuo, 2.73, 2.73 );
setEffScaleKey( spep_7 + 158, ct_zuo, 2.73, 2.73 );
setEffScaleKey( spep_7 + 160, ct_zuo, 3.75, 3.75 );
setEffScaleKey( spep_7 + 162, ct_zuo, 4.78, 4.78 );
setEffScaleKey( spep_7 + 164, ct_zuo, 5.8, 5.8 );
setEffScaleKey( spep_7 + 166, ct_zuo, 6.82, 6.82 );
setEffRotateKey( spep_7 + 124, ct_zuo, 9.7 );
setEffRotateKey( spep_7 + 126, ct_zuo, 15.4 );
setEffRotateKey( spep_7 + 128, ct_zuo, 21.3 );
setEffRotateKey( spep_7 + 130, ct_zuo, 27.2 );
setEffRotateKey( spep_7 + 166, ct_zuo, 27.2 );
setEffAlphaKey( spep_7 + 124, ct_zuo, 255 );
setEffAlphaKey( spep_7 + 158, ct_zuo, 255 );
setEffAlphaKey( spep_7 + 160, ct_zuo, 191 );
setEffAlphaKey( spep_7 + 162, ct_zuo, 128 );
setEffAlphaKey( spep_7 + 164, ct_zuo, 64 );
setEffAlphaKey( spep_7 + 166, ct_zuo, 0 );

--***突進***+
tosshin = entryEffect(  spep_7,  SP_09,  0x80,  -1,  0,  0,  0);    --突進

setEffScaleKey(  spep_7,  tosshin,  1.05,  1.05);
setEffScaleKey(  spep_7+190,  tosshin,  1.05,  1.05);
setEffMoveKey(  spep_7,  tosshin,  0,  0);
setEffMoveKey(  spep_7+190,  tosshin,  0,  0);
setEffRotateKey(  spep_7,  tosshin,  0);
setEffRotateKey(  spep_7+190,  tosshin,  0);
setEffAlphaKey(  spep_7,  tosshin,  255);
setEffAlphaKey(  spep_7+190,  tosshin,  255);

--***白フェード***
entryFade(  spep_7+110,  0,  2,  8,  fcolor_r,  fcolor_g,  fcolor_b,  200);  --white fade
entryFade(  spep_7+180,  4,  8,  4,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

--***SE***
playSe(  spep_7,  8);  --後ろに飛ぶ
playSe(  spep_7+30,  1012);  --着地
playSe(  spep_7+64,  1037);  --右手に気玉
playSe(  spep_7+120,  9);  --突進
playSe(  spep_7+162,  1021);  --腕を伸ばす

------------------------------------------------------
--被弾(90F)
------------------------------------------------------
spep_8 = spep_7+190;

--***被弾背景***+
hidanBG = entryEffect(  spep_8,  SP_11,  0x80,  -1,  0,  0,  0);  --被弾背景

setEffScaleKey(  spep_8,  hidanBG,  1.0,  1.0);
setEffScaleKey(  spep_8+90,  hidanBG,  1.0,  1.0);
setEffMoveKey(  spep_8,  hidanBG,  0,  0);
setEffMoveKey(  spep_8+90,  hidanBG,  0,  0);
setEffRotateKey(  spep_8,  hidanBG,  0);
setEffRotateKey(  spep_8+90,  hidanBG,  0);
setEffAlphaKey(  spep_8,  hidanBG,  255);
setEffAlphaKey(  spep_8+90,  hidanBG,  255);

--***集中線***
ryu1 = entryEffectLife( spep_8, 914, 90, 0x80,  -1, 0,  0,  0);

setEffMoveKey(  spep_8,  ryu1,  0,  0);
setEffMoveKey(  spep_8+90,  ryu1,  0,  0);
setEffScaleKey(  spep_8,  ryu1,  1.18,  1.23);
setEffScaleKey(  spep_8+90,  ryu1,  1.18,  1.23);
setEffRotateKey(  spep_8,  ryu1,  0);
setEffRotateKey(  spep_8+90,  ryu1,  0);
setEffAlphaKey(  spep_8,  ryu1,  120);
setEffAlphaKey(  spep_8+60,  ryu1,  120);
setEffAlphaKey(  spep_8+90,  ryu1,  50);

--***敵の動き***
a = 3
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8+88,  1,  0);  --消す
changeAnime( spep_8 + 0, 1, 106 );
changeAnime( spep_8-a + 28, 1, 108 );
changeAnime( spep_8 + 26, 1, 108 );

setShakeChara(  spep_8,  1,  88,  10);  --揺れ
setMoveKey( spep_8 + 0, 1, 1755.6, -10.2 , 0 );
setMoveKey( spep_8 + 2, 1, 1644.9, -8.4 , 0 );
setMoveKey( spep_8 + 4, 1, 1534, -6.1 , 0 );
setMoveKey( spep_8 + 6, 1, 1423.1, -3.7 , 0 );
setMoveKey( spep_8 + 8, 1, 1312.2, -1.4 , 0 );
setMoveKey( spep_8 + 10, 1, 1201.3, 0.9 , 0 );
setMoveKey( spep_8 + 12, 1, 1090.4, 3.3 , 0 );
setMoveKey( spep_8 + 14, 1, 979.5, 5.6 , 0 );
setMoveKey( spep_8 + 16, 1, 868.7, 7.9 , 0 );
setMoveKey( spep_8 + 18, 1, 757.8, 10.3 , 0 );
setMoveKey( spep_8 + 20, 1, 607.1, 11.9 , 0 );
setMoveKey( spep_8 + 22, 1, 456.5, 13.6 , 0 );
--setMoveKey( spep_8 + 24, 1, 305.8, 15.2 , 0 );

setMoveKey( spep_8 + 27-a, 1, 155.2, 16.8 , 0 );
setMoveKey( spep_8 + 28-a, 1, 205.7, 32.2 , 0 );
setMoveKey( spep_8 + 30-a, 1, 187.8, 53.9 , 0 );
setMoveKey( spep_8 + 32-a, 1, 152.6, 55.6 , 0 );
setMoveKey( spep_8 + 34-a, 1, 142.8, 67.9 , 0 );
setMoveKey( spep_8 + 36-a, 1, 114.8, 69.5 , 0 );
setMoveKey( spep_8 + 38-a, 1, 122.9, 74.4 , 0 );
setMoveKey( spep_8 + 40-a, 1, 125.3, 68.8 , 0 );
setMoveKey( spep_8 + 42-a, 1, 130.8, 72.5 , 0 );
setMoveKey( spep_8 + 44-a, 1, 129.9, 69.9 , 0 );
setMoveKey( spep_8 + 46-a, 1, 138.7, 70.4 , 0 );
setMoveKey( spep_8 + 48-a, 1, 140.9, 61.1 , 0 );
setMoveKey( spep_8 + 50-a, 1, 146.9, 68.2 , 0 );
setMoveKey( spep_8 + 52-a, 1, 149.2, 60.4 , 0 );
setMoveKey( spep_8 + 54-a, 1, 155.1, 65.9 , 0 );
setMoveKey( spep_8 + 56-a, 1, 153.9, 63.2 , 0 );
setMoveKey( spep_8 + 58-a, 1, 163.5, 63.5 , 0 );
setMoveKey( spep_8 + 60-a, 1, 163.9, 55.2 , 0 );
setMoveKey( spep_8 + 62-a, 1, 169.3, 61.4 , 0 );
setMoveKey( spep_8 + 64-a, 1, 167.3, 54.8 , 0 );
setMoveKey( spep_8 + 66-a, 1, 172.9, 58.5 , 0 );
setMoveKey( spep_8 + 68-a, 1, 170.8, 49 , 0 );
setMoveKey( spep_8 + 70-a, 1, 177.4, 54.3 , 0 );
setMoveKey( spep_8 + 72-a, 1, 179.9, 51.7 , 0 );
setMoveKey( spep_8 + 74-a, 1, 182.7, 48.7 , 0 );
setMoveKey( spep_8 + 76-a, 1, 185.8, 45.4 , 0 );
setMoveKey( spep_8 + 78-a, 1, 189.1, 41.7 , 0 );
setMoveKey( spep_8 + 80-a, 1, 192.7, 37.6 , 0 );
setMoveKey( spep_8 + 82-a, 1, 196.6, 33.1 , 0 );
setMoveKey( spep_8 + 84-a, 1, 200.8, 28.1 , 0 );
setMoveKey( spep_8 + 86-a, 1, 205.3, 22.7 , 0 );
setMoveKey( spep_8 + 88-a, 1, 210.2, 16.9 , 0 );

setScaleKey( spep_8 + 0, 1, 4.77, 4.77 );
setScaleKey( spep_8 + 2, 1, 4.43, 4.43 );
setScaleKey( spep_8 + 4, 1, 4.09, 4.09 );
setScaleKey( spep_8 + 6, 1, 3.74, 3.74 );
setScaleKey( spep_8 + 8, 1, 3.4, 3.4 );
setScaleKey( spep_8 + 10, 1, 3.06, 3.06 );
setScaleKey( spep_8 + 12, 1, 2.71, 2.71 );
setScaleKey( spep_8 + 14, 1, 2.37, 2.37 );
setScaleKey( spep_8 + 16, 1, 2.03, 2.03 );
setScaleKey( spep_8 + 18, 1, 1.68, 1.68 );
setScaleKey( spep_8 + 20, 1, 1.71, 1.71 );
setScaleKey( spep_8 + 22, 1, 1.74, 1.74 );

--setScaleKey( spep_8 + 24, 1, 1.77, 1.77 );
setScaleKey( spep_8 + 27-a, 1, 1.8, 1.8 );
setScaleKey( spep_8 + 28-a, 1, 3.85, 3.85 );
setScaleKey( spep_8 + 30-a, 1, 3.26, 3.26 );
setScaleKey( spep_8 + 32-a, 1, 2.67, 2.67 );
setScaleKey( spep_8 + 34-a, 1, 2.08, 2.08 );
setScaleKey( spep_8 + 36-a, 1, 1.49, 1.49 );
setScaleKey( spep_8 + 38-a, 1, 1.51, 1.51 );
setScaleKey( spep_8 + 40-a, 1, 1.54, 1.54 );
setScaleKey( spep_8 + 42-a, 1, 1.57, 1.57 );
setScaleKey( spep_8 + 44-a, 1, 1.6, 1.6 );
setScaleKey( spep_8 + 46-a, 1, 1.62, 1.62 );
setScaleKey( spep_8 + 48-a, 1, 1.65, 1.65 );
setScaleKey( spep_8 + 50-a, 1, 1.68, 1.68 );
setScaleKey( spep_8 + 52-a, 1, 1.71, 1.71 );
setScaleKey( spep_8 + 54-a, 1, 1.73, 1.73 );
setScaleKey( spep_8 + 56-a, 1, 1.76, 1.76 );
setScaleKey( spep_8 + 58-a, 1, 1.79, 1.79 );
setScaleKey( spep_8 + 60-a, 1, 1.82, 1.82 );
setScaleKey( spep_8 + 62-a, 1, 1.83, 1.83 );
setScaleKey( spep_8 + 64-a, 1, 1.86, 1.86 );
setScaleKey( spep_8 + 66-a, 1, 1.89, 1.89 );
setScaleKey( spep_8 + 68-a, 1, 1.92, 1.92 );
setScaleKey( spep_8 + 70-a, 1, 1.97, 1.97 );
setScaleKey( spep_8 + 72-a, 1, 2.02, 2.02 );
setScaleKey( spep_8 + 74-a, 1, 2.07, 2.07 );
setScaleKey( spep_8 + 76-a, 1, 2.13, 2.13 );
setScaleKey( spep_8 + 78-a, 1, 2.2, 2.2 );
setScaleKey( spep_8 + 80-a, 1, 2.28, 2.28 );
setScaleKey( spep_8 + 82-a, 1, 2.36, 2.36 );
setScaleKey( spep_8 + 84-a, 1, 2.45, 2.45 );
setScaleKey( spep_8 + 86-a, 1, 2.54, 2.54 );
setScaleKey( spep_8 + 88-a, 1, 2.64, 2.64 );

setRotateKey( spep_8 + 0, 1, -32 );
setRotateKey( spep_8 + 18, 1, -32 );
setRotateKey( spep_8 + 20, 1, -31.7 );
setRotateKey( spep_8 + 22, 1, -31.3 );
setRotateKey( spep_8 + 22, 1, -31.3 );
--setRotateKey( spep_8 + 25, 1, -31.3 );
--setRotateKey( spep_8 + 24, 1, -31 );
--setRotateKey( spep_8-a + 27, 1, 4.8);
setRotateKey( spep_8-a + 28, 1, 4.8 );
setRotateKey( spep_8-a + 30, 1, 4.9 );
setRotateKey( spep_8-a + 32, 1, 5.1 );
setRotateKey( spep_8-a + 34, 1, 5.2 );
setRotateKey( spep_8-a + 36, 1, 5.3 );
setRotateKey( spep_8-a + 38, 1, 5.5 );
setRotateKey( spep_8-a + 40, 1, 5.7 );
setRotateKey( spep_8-a + 42, 1, 5.9 );
setRotateKey( spep_8-a + 44, 1, 6 );
setRotateKey( spep_8-a + 46, 1, 6.2 );
setRotateKey( spep_8-a + 48, 1, 6.4 );
setRotateKey( spep_8-a + 50, 1, 6.6 );
setRotateKey( spep_8-a + 52, 1, 6.8 );
setRotateKey( spep_8-a + 54, 1, 7 );
setRotateKey( spep_8-a + 56, 1, 7.1 );
setRotateKey( spep_8-a + 58, 1, 7.3 );
setRotateKey( spep_8-a + 60, 1, 7.5 );
setRotateKey( spep_8-a + 62, 1, 7.5 );
setRotateKey( spep_8-a + 64, 1, 7.6 );
setRotateKey( spep_8-a + 66, 1, 7.6 );
setRotateKey( spep_8-a + 68, 1, 7.7 );
setRotateKey( spep_8-a + 70, 1, 7.8 );
setRotateKey( spep_8-a + 72, 1, 7.9 );
setRotateKey( spep_8-a + 74, 1, 8 );
setRotateKey( spep_8-a + 76, 1, 8.1 );
setRotateKey( spep_8-a + 78, 1, 8.2 );
setRotateKey( spep_8-a + 80, 1, 8.3 );
setRotateKey( spep_8-a + 82, 1, 8.5 );
setRotateKey( spep_8-a + 84, 1, 8.6 );
setRotateKey( spep_8-a + 86, 1, 8.8 );
setRotateKey( spep_8-a + 88, 1, 9 );

--***被弾前面***+
hidan = entryEffect(  spep_8,  SP_10,  0x100,  -1,  0,  0,  0);  --被弾

setEffScaleKey(  spep_8,  hidan,  1.0,  1.0);
setEffScaleKey(  spep_8+90,  hidan,  1.0,  1.0);
setEffMoveKey(  spep_8,  hidan,  0,  0);
setEffMoveKey(  spep_8+90,  hidan,  0,  0);
setEffRotateKey(  spep_8,  hidan,  0);
setEffRotateKey(  spep_8+90,  hidan,  0);
setEffAlphaKey(  spep_8,  hidan,  255);
setEffAlphaKey(  spep_8+90,  hidan,  255);

--***SE***
playSe(  spep_8,  1022);  --敵に向かっていく
playSe(  spep_8+28,  1023);  --ヒット

entryFade(  spep_8+80,  4,  8,  6,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
--爆発(200F)
------------------------------------------------------
spep_9 = spep_8+90;

--***爆発***+
bakuhatsu = entryEffect(  spep_9,  SP_12,  0x100,  -1,  0,  0,  0);  --被弾

setEffScaleKey(  spep_9,  bakuhatsu,  1.0,  1.0);
setEffScaleKey(  spep_9+200,  bakuhatsu,  1.0,  1.0);
setEffMoveKey(  spep_9,  bakuhatsu,  0,  0);
setEffMoveKey(  spep_9+200,  bakuhatsu,  0,  0);
setEffRotateKey(  spep_9,  bakuhatsu,  0);
setEffRotateKey(  spep_9+200,  bakuhatsu,  0);
setEffAlphaKey(  spep_9,  bakuhatsu,  255);
setEffAlphaKey(  spep_9+200,  bakuhatsu,  255);

-- ダメージ表示
dealDamage(spep_9+80);
--entryFade( spep_9+170, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_9+180);

--***SE***
playSe(  spep_9,  1024);  --爆発

else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
------------------------------------------------------
-- 構え(60F)
------------------------------------------------------
spep_1 = 0;

--***フェードと背景***
entryFade( spep_1, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--***背景***
kamaeBG = entryEffect(  spep_1,  SP_02r,  0x80,  -1,  0,  0,  0);  --奥(ef_002)

setEffScaleKey(  spep_1,  kamaeBG,  1.0,  1.0);
setEffScaleKey(  spep_1+60,  kamaeBG,  1.0,  1.0);
setEffMoveKey(  spep_1,  kamaeBG,  0,  0);
setEffMoveKey(  spep_1+60,  kamaeBG,  0,  0);
setEffRotateKey(  spep_1,  kamaeBG,  0);
setEffRotateKey(  spep_1+60,  kamaeBG,  0);
setEffAlphaKey(  spep_1,  kamaeBG,  255);
setEffAlphaKey(  spep_1+60,  kamaeBG,  255);

--***敵の動き***
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1+60,  1,  0);  --消す
changeAnime( spep_1 + 0, 1, 116 );

setShakeChara(  spep_1,  1,  60,  10);  --揺らす
setMoveKey( spep_1 + 0, 1, 384.5, 105.3 , 0 );
setMoveKey( spep_1 + 2, 1, 371, 105.7 , 0 );
setMoveKey( spep_1 + 4, 1, 358.5, 106.2 , 0 );
setMoveKey( spep_1 + 6, 1, 346.9, 106.7 , 0 );
setMoveKey( spep_1 + 8, 1, 336.3, 107.3 , 0 );
setMoveKey( spep_1 + 10, 1, 326.7, 107.9 , 0 );
setMoveKey( spep_1 + 12, 1, 318, 108.6 , 0 );
setMoveKey( spep_1 + 14, 1, 310.5, 109.2 , 0 );
setMoveKey( spep_1 + 16, 1, 304, 109.9 , 0 );
setMoveKey( spep_1 + 18, 1, 298.6, 110.6 , 0 );
setMoveKey( spep_1 + 20, 1, 294.3, 110.1 , 0 );
setMoveKey( spep_1 + 22, 1, 289.8, 109.7 , 0 );
setMoveKey( spep_1 + 24, 1, 284.9, 109.1 , 0 );
setMoveKey( spep_1 + 26, 1, 275.8, 104.6 , 0 );
setMoveKey( spep_1 + 28, 1, 274.5, 108 , 0 );
setMoveKey( spep_1 + 30, 1, 264.8, 105.4 , 0 );
setMoveKey( spep_1 + 32, 1, 262.7, 106.7 , 0 );
setMoveKey( spep_1 + 34, 1, 254.3, 102.2 , 0 );
setMoveKey( spep_1 + 36, 1, 249.7, 105.6 , 0 );
setMoveKey( spep_1 + 38, 1, 240.8, 102.8 , 0 );
setMoveKey( spep_1 + 40, 1, 237.7, 104.5 , 0 );
setMoveKey( spep_1 + 42, 1, 223.4, 102.5 , 0 );
setMoveKey( spep_1 + 44, 1, 212.9, 104 , 0 );
setMoveKey( spep_1 + 46, 1, 191.7, 99.2 , 0 );
setMoveKey( spep_1 + 48, 1, 170, 102.4 , 0 );
setMoveKey( spep_1 + 50, 1, 139.3, 99.2 , 0 );
setMoveKey( spep_1 + 52, 1, 107.6, 100.1 , 0 );
setMoveKey( spep_1 + 54, 1, 64.5, 95.1 , 0 );
setMoveKey( spep_1 + 56, 1, 24.2, 98.3 , 0 );
setMoveKey( spep_1 + 58, 1, -27.5, 95.4 , 0 );
setMoveKey( spep_1 + 60, 1, -27.5, 95.4 , 0 );

setScaleKey( spep_1 + 0, 1, 0.18, 0.18 );
setScaleKey( spep_1 + 2, 1, 0.2, 0.2 );
setScaleKey( spep_1 + 4, 1, 0.24, 0.24 );
setScaleKey( spep_1 + 6, 1, 0.26, 0.26 );
setScaleKey( spep_1 + 8, 1, 0.29, 0.29 );
setScaleKey( spep_1 + 10, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 12, 1, 0.33, 0.33 );
setScaleKey( spep_1 + 14, 1, 0.37, 0.37 );
setScaleKey( spep_1 + 16, 1, 0.39, 0.39 );
setScaleKey( spep_1 + 18, 1, 0.42, 0.42 );
setScaleKey( spep_1 + 20, 1, 0.43, 0.43 );
setScaleKey( spep_1 + 22, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 24, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 26, 1, 0.52, 0.52 );
setScaleKey( spep_1 + 28, 1, 0.55, 0.55 );
setScaleKey( spep_1 + 30, 1, 0.59, 0.59 );
setScaleKey( spep_1 + 32, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 34, 1, 0.66, 0.66 );
setScaleKey( spep_1 + 36, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 38, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 40, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 42, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 44, 1, 0.98, 0.98 );
setScaleKey( spep_1 + 46, 1, 1.12, 1.12 );
setScaleKey( spep_1 + 48, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 50, 1, 1.52, 1.52 );
setScaleKey( spep_1 + 52, 1, 1.78, 1.78 );
setScaleKey( spep_1 + 54, 1, 2.07, 2.07 );
setScaleKey( spep_1 + 56, 1, 2.41, 2.41 );
setScaleKey( spep_1 + 58, 1, 2.8, 2.8 );
setScaleKey( spep_1 + 60, 1, 2.8, 2.8 );

setRotateKey( spep_1 + 0, 1, -26.5 );
setRotateKey( spep_1 + 2, 1, -26.9 );
setRotateKey( spep_1 + 4, 1, -27.4 );
setRotateKey( spep_1 + 6, 1, -27.8 );
setRotateKey( spep_1 + 8, 1, -28.3 );
setRotateKey( spep_1 + 10, 1, -28.8 );
setRotateKey( spep_1 + 12, 1, -29.4 );
setRotateKey( spep_1 + 14, 1, -29.9 );
setRotateKey( spep_1 + 16, 1, -30.5 );
setRotateKey( spep_1 + 18, 1, -31.1 );
setRotateKey( spep_1 + 20, 1, -31.7 );
setRotateKey( spep_1 + 22, 1, -32.4 );
setRotateKey( spep_1 + 24, 1, -33.1 );
setRotateKey( spep_1 + 26, 1, -33.8 );
setRotateKey( spep_1 + 28, 1, -34.5 );
setRotateKey( spep_1 + 30, 1, -35.2 );
setRotateKey( spep_1 + 32, 1, -36 );
setRotateKey( spep_1 + 34, 1, -36.8 );
setRotateKey( spep_1 + 36, 1, -37.6 );
setRotateKey( spep_1 + 38, 1, -38.4 );
setRotateKey( spep_1 + 40, 1, -38.8 );
setRotateKey( spep_1 + 42, 1, -39.3 );
setRotateKey( spep_1 + 44, 1, -39.7 );
setRotateKey( spep_1 + 46, 1, -40.1 );
setRotateKey( spep_1 + 48, 1, -40.5 );
setRotateKey( spep_1 + 50, 1, -40.9 );
setRotateKey( spep_1 + 52, 1, -41.4 );
setRotateKey( spep_1 + 54, 1, -41.8 );
setRotateKey( spep_1 + 56, 1, -42.3 );
setRotateKey( spep_1 + 58, 1, -42.7 );
setRotateKey( spep_1 + 60, 1, -42.7 );


--***構え***
kamae = entryEffect(  spep_1,  SP_01r,  0x100,  -1,  0,  0,  0);  --構え(ef_001)

setEffScaleKey(  spep_1,  kamae,  1.0,  1.0);
setEffScaleKey(  spep_1+60,  kamae,  1.0,  1.0);
setEffMoveKey(  spep_1,  kamae,  0,  0);
setEffMoveKey(  spep_1+60,  kamae,  0,  0);
setEffRotateKey(  spep_1,  kamae,  0);
setEffRotateKey(  spep_1+60,  kamae,  0);
setEffAlphaKey(  spep_1,  kamae,  255);
setEffAlphaKey(  spep_1+60,  kamae,  255);

--***SE***
playSe(  spep_1,  8);  --敵近く

--***白フェード***
entryFade(  spep_1+56,  2,  8,  2,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
--気溜め(130F)
------------------------------------------------------
spep_2 = spep_1+60;

--***書き文字***
ct_zuzu = entryEffectLife( spep_2+10,  10013, 22, 0x100, -1, 0, 20.1, 278.4 );  --ズズズン

setEffShake(  spep_2+10,  ct_zuzu,  22,  20);  --揺れ
setEffMoveKey( spep_2 + 10, ct_zuzu, 20.1, 278.4 , 0 );
setEffMoveKey( spep_2 + 12, ct_zuzu, 30.8, 351.5 , 0 );
setEffMoveKey( spep_2 + 14, ct_zuzu, 44.8, 396.6 , 0 );
setEffMoveKey( spep_2 + 16, ct_zuzu, 31.5, 372.4 , 0 );
setEffMoveKey( spep_2 + 18, ct_zuzu, 37.1, 372.1 , 0 );
setEffMoveKey( spep_2 + 32, ct_zuzu, 37.1, 372.1 , 0 );
setEffScaleKey( spep_2 + 10, ct_zuzu, 0.91, 0.91 );
setEffScaleKey( spep_2 + 12, ct_zuzu, 1.85, 1.85 );
setEffScaleKey( spep_2 + 14, ct_zuzu, 2.39, 2.39 );
setEffScaleKey( spep_2 + 32, ct_zuzu, 2.39, 2.39 );
setEffRotateKey( spep_2 + 10, ct_zuzu, -5 );
setEffRotateKey( spep_2 + 32, ct_zuzu, -5 );
setEffAlphaKey( spep_2 + 10, ct_zuzu, 255 );
setEffAlphaKey( spep_2 + 22, ct_zuzu, 255 );
setEffAlphaKey( spep_2 + 24, ct_zuzu, 186 );
setEffAlphaKey( spep_2 + 26, ct_zuzu, 104 );
setEffAlphaKey( spep_2 + 28, ct_zuzu, 46 );
setEffAlphaKey( spep_2 + 30, ct_zuzu, 12 );
setEffAlphaKey( spep_2 + 32, ct_zuzu, 0 );

ct_ba = entryEffectLife( spep_2 + 56,  10022, 24, 0x100, -1, 0, 74.1, 448.6 );

setEffShake(  spep_2+56,  ct_ba,  24,  20);  --揺れ
setEffMoveKey( spep_2 + 56, ct_ba, 74.1, 448.6 , 0 );
setEffMoveKey( spep_2 + 80, ct_ba, 74.2, 448.5 , 0 );
setEffScaleKey( spep_2 + 56, ct_ba, 0.72, 0.72 );
setEffScaleKey( spep_2 + 58, ct_ba, 1.35, 1.35 );
setEffScaleKey( spep_2 + 60, ct_ba, 1.99, 1.99 );
setEffScaleKey( spep_2 + 62, ct_ba, 1.78, 1.78 );
setEffScaleKey( spep_2 + 64, ct_ba, 1.56, 1.56 );
setEffScaleKey( spep_2 + 66, ct_ba, 1.35, 1.35 );
setEffScaleKey( spep_2 + 70, ct_ba, 1.35, 1.35 );
setEffScaleKey( spep_2 + 72, ct_ba, 1.27, 1.27 );
setEffScaleKey( spep_2 + 74, ct_ba, 1.2, 1.2 );
setEffScaleKey( spep_2 + 76, ct_ba, 1.12, 1.12 );
setEffScaleKey( spep_2 + 78, ct_ba, 1.04, 1.04 );
setEffScaleKey( spep_2 + 80, ct_ba, 0.96, 0.96 );
setEffRotateKey( spep_2 + 56, ct_ba, 20.7 );
setEffRotateKey( spep_2 + 80, ct_ba, 20.7 );
setEffAlphaKey( spep_2 + 56, ct_ba, 0 );
setEffAlphaKey( spep_2 + 57, ct_ba, 255 );
setEffAlphaKey( spep_2 + 60, ct_ba, 255 );
setEffAlphaKey( spep_2 + 62, ct_ba, 204 );
setEffAlphaKey( spep_2 + 74, ct_ba, 153 );
setEffAlphaKey( spep_2 + 76, ct_ba, 102 );
setEffAlphaKey( spep_2 + 78, ct_ba, 51 );
setEffAlphaKey( spep_2 + 80, ct_ba, 0 );

--***集中線***
shuchusen2 = entryEffectLife(  spep_2,  906,  130,  0x100,  -1,  0,  0,  0);  --集中線

setEffMoveKey(  spep_2,  shuchusen2,  0,  0);
setEffMoveKey(  spep_2+130,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2,  shuchusen2,  1.12,  1.73);
setEffScaleKey(  spep_2+130,  shuchusen2,  1.12,  1.73);
setEffRotateKey(  spep_2,  shuchusen2,  0);
setEffRotateKey(  spep_2+130,  shuchusen2,  0);
setEffAlphaKey(  spep_2,  shuchusen2,  0);
setEffAlphaKey(  spep_2+56,  shuchusen2,  0);
setEffAlphaKey(  spep_2+57,  shuchusen2,  255);
setEffAlphaKey(  spep_2+130,  shuchusen2,  255);

--***気溜め***
kitame = entryEffect(  spep_2,  SP_03r,  0x80,  -1,  0,  0,  0);  --気溜め(ef_002)

setEffScaleKey(  spep_2,  kitame,  -1.0,  1.0);
setEffScaleKey(  spep_2+130,  kitame,  -1.0,  1.0);
setEffMoveKey(  spep_2,  kitame,  0,  0);
setEffMoveKey(  spep_2+130,  kitame,  0,  0);
setEffRotateKey(  spep_2,  kitame,  0);
setEffRotateKey(  spep_2+130,  kitame,  0);
setEffAlphaKey(  spep_2,  kitame,  255);
setEffAlphaKey(  spep_2+130,  kitame,  255);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 10; --エンドフェイズのフレーム数を置き換える

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

--***白フェード***
entryFade(  spep_2+57,  0,  2,  0,  fcolor_r,  fcolor_g,  fcolor_b,  200);  --white fade ちょっと薄く
-- 書き文字と集中線と白フラは同じタイミング
entryFade(  spep_2+126,  2,  4,  2,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

--***SE***
playSe(  spep_2,  1035);  --気溜め
playSe(  spep_2+57,  1013);  --バッ
playSe(  spep_2+60,  17);  --丸い気

------------------------------------------------------
--超能力(90F)
------------------------------------------------------
spep_3 = spep_2+130;

--***集中線***
shuchusen3 = entryEffectLife(  spep_3,  906,  90,  0x100,  -1,  0,  0,  0);  --集中線

setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffMoveKey(  spep_3+90,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3,  shuchusen3,  1.12,  1.73);
setEffScaleKey(  spep_3+90,  shuchusen3,  1.12,  1.73);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffRotateKey(  spep_3+90,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  77);
setEffAlphaKey(  spep_3+90,  shuchusen3,  77);

--***超能力***
psychicBG = entryEffect(  spep_3,  SP_05r,  0x80,  -1,  0,  0,  0);  --超能力(ef_003)

setEffScaleKey(  spep_3,  psychicBG,  1.0,  1.0);
setEffScaleKey(  spep_3+90,  psychicBG,  1.0,  1.0);
setEffMoveKey(  spep_3,  psychicBG,  0,  0);
setEffMoveKey(  spep_3+90,  psychicBG,  0,  0);
setEffRotateKey(  spep_3,  psychicBG,  0);
setEffRotateKey(  spep_3+90,  psychicBG,  0);
setEffAlphaKey(  spep_3,  psychicBG,  255);
setEffAlphaKey(  spep_3+90,  psychicBG,  255);

--***敵の動き***
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-3 + 88, 1, 0 );  --消す
changeAnime( spep_3 + 0, 1, 106 );

setShakeChara(  spep_3,  1,  88,  10);  --揺れ
setMoveKey( spep_3-3 + 0, 1, 469.7, 220.3 , 0 );
setMoveKey( spep_3-3 + 2, 1, 435.8, 214.4 , 0 );
setMoveKey( spep_3-3 + 4, 1, 392.2, 205.2 , 0 );
setMoveKey( spep_3-3 + 6, 1, 338.9, 192.1 , 0 );
setMoveKey( spep_3-3 + 8, 1, 276.2, 174.8 , 0 );
setMoveKey( spep_3-3 + 10, 1, 204.3, 152.4 , 0 );
setMoveKey( spep_3-3 + 12, 1, 103.3, 104.2 , 0 );
setMoveKey( spep_3-3 + 14, 1, 122.5, 125 , 0 );
setMoveKey( spep_3-3 + 16, 1, 115.7, 121.7 , 0 );
setMoveKey( spep_3-3 + 18, 1, 120.9, 126.4 , 0 );
setMoveKey( spep_3-3 + 20, 1, 118.2, 119 , 0 );
setMoveKey( spep_3-3 + 22, 1, 119.4, 127.7 , 0 );
setMoveKey( spep_3-3 + 24, 1, 98.6, 118.4 , 0 );
setMoveKey( spep_3-3 + 26, 1, 117.8, 129 , 0 );
setMoveKey( spep_3-3 + 28, 1, 111, 109.7 , 0 );
setMoveKey( spep_3-3 + 30, 1, 116.2, 130.3 , 0 );
setMoveKey( spep_3-3 + 32, 1, 113.4, 125 , 0 );
setMoveKey( spep_3-3 + 34, 1, 114.6, 131.6 , 0 );
setMoveKey( spep_3-3 + 36, 1, 93.7, 124.2 , 0 );
setMoveKey( spep_3-3 + 38, 1, 112.9, 132.8 , 0 );
setMoveKey( spep_3-3 + 40, 1, 106.1, 113.4 , 0 );
setMoveKey( spep_3-3 + 42, 1, 111.3, 133.9 , 0 );
setMoveKey( spep_3-3 + 44, 1, 104.5, 130.5 , 0 );
setMoveKey( spep_3-3 + 46, 1, 109.7, 135.1 , 0 );
setMoveKey( spep_3-3 + 48, 1, 106.9, 133.6 , 0 );
setMoveKey( spep_3-3 + 50, 1, 108.1, 136.2 , 0 );
setMoveKey( spep_3-3 + 52, 1, 99.3, 134.7 , 0 );
setMoveKey( spep_3-3 + 54, 1, 106.4, 137.2 , 0 );
setMoveKey( spep_3-3 + 56, 1, 103.6, 129.7 , 0 );
setMoveKey( spep_3-3 + 58, 1, 104.8, 138.2 , 0 );
setMoveKey( spep_3-3 + 60, 1, 96, 136.7 , 0 );
setMoveKey( spep_3-3 + 62, 1, 103.2, 139.2 , 0 );
setMoveKey( spep_3-3 + 64, 1, 100.3, 137.7 , 0 );
setMoveKey( spep_3-3 + 66, 1, 101.5, 140.1 , 0 );
setMoveKey( spep_3-3 + 68, 1, 98.7, 136.6 , 0 );
setMoveKey( spep_3-3 + 70, 1, 99.9, 141 , 0 );
setMoveKey( spep_3-3 + 72, 1, 97, 141.4 , 0 );
setMoveKey( spep_3-3 + 74, 1, 98.2, 141.9 , 0 );
setMoveKey( spep_3-3 + 76, 1, 97.4, 140.3 , 0 );
setMoveKey( spep_3-3 + 78, 1, 96.5, 142.7 , 0 );
setMoveKey( spep_3-3 + 80, 1, 93.7, 143.1 , 0 );
setMoveKey( spep_3-3 + 82, 1, 94.9, 143.4 , 0 );
setMoveKey( spep_3-3 + 84, 1, 94, 139.8 , 0 );
setMoveKey( spep_3-3 + 86, 1, 93.2, 144.2 , 0 );
setMoveKey( spep_3-3 + 88, 1, 92.4, 144.5 , 0 );

setScaleKey( spep_3-3 + 0, 1, 2.65, 2.65 );
setScaleKey( spep_3-3 + 2, 1, 2.47, 2.47 );
setScaleKey( spep_3-3 + 4, 1, 2.23, 2.23 );
setScaleKey( spep_3-3 + 6, 1, 1.93, 1.93 );
setScaleKey( spep_3-3 + 8, 1, 1.59, 1.59 );
setScaleKey( spep_3-3 + 10, 1, 1.19, 1.19 );
setScaleKey( spep_3-3 + 12, 1, 0.73, 0.73 );
setScaleKey( spep_3-3 + 16, 1, 0.73, 0.73 );
setScaleKey( spep_3-3 + 18, 1, 0.72, 0.72 );
setScaleKey( spep_3-3 + 20, 1, 0.72, 0.72 );
setScaleKey( spep_3-3 + 22, 1, 0.71, 0.71 );
setScaleKey( spep_3-3 + 24, 1, 0.71, 0.71 );
setScaleKey( spep_3-3 + 26, 1, 0.7, 0.7 );
setScaleKey( spep_3-3 + 28, 1, 0.7, 0.7 );
setScaleKey( spep_3-3 + 30, 1, 0.69, 0.69 );
setScaleKey( spep_3-3 + 32, 1, 0.69, 0.69 );
setScaleKey( spep_3-3 + 34, 1, 0.68, 0.68 );
setScaleKey( spep_3-3 + 38, 1, 0.68, 0.68 );
setScaleKey( spep_3-3 + 40, 1, 0.67, 0.67 );
setScaleKey( spep_3-3 + 42, 1, 0.67, 0.67 );
setScaleKey( spep_3-3 + 44, 1, 0.66, 0.66 );
setScaleKey( spep_3-3 + 46, 1, 0.66, 0.66 );
setScaleKey( spep_3-3 + 48, 1, 0.65, 0.65 );
setScaleKey( spep_3-3 + 50, 1, 0.65, 0.65 );
setScaleKey( spep_3-3 + 52, 1, 0.64, 0.64 );
setScaleKey( spep_3-3 + 54, 1, 0.64, 0.64 );
setScaleKey( spep_3-3 + 56, 1, 0.63, 0.63 );
setScaleKey( spep_3-3 + 60, 1, 0.63, 0.63 );
setScaleKey( spep_3-3 + 62, 1, 0.62, 0.62 );
setScaleKey( spep_3-3 + 64, 1, 0.62, 0.62 );
setScaleKey( spep_3-3 + 66, 1, 0.61, 0.61 );
setScaleKey( spep_3-3 + 68, 1, 0.61, 0.61 );
setScaleKey( spep_3-3 + 70, 1, 0.6, 0.6 );
setScaleKey( spep_3-3 + 72, 1, 0.6, 0.6 );
setScaleKey( spep_3-3 + 74, 1, 0.59, 0.59 );
setScaleKey( spep_3-3 + 76, 1, 0.59, 0.59 );
setScaleKey( spep_3-3 + 78, 1, 0.58, 0.58 );
setScaleKey( spep_3-3 + 80, 1, 0.58, 0.58 );
setScaleKey( spep_3-3 + 82, 1, 0.57, 0.57 );
setScaleKey( spep_3-3 + 86, 1, 0.57, 0.57 );
setScaleKey( spep_3-3 + 88, 1, 0.56, 0.56 );

setRotateKey( spep_3-3 + 0, 1, -39.7 );
setRotateKey( spep_3-3 + 2, 1, -39.9 );
setRotateKey( spep_3-3 + 4, 1, -40.3 );
setRotateKey( spep_3-3 + 6, 1, -40.7 );
setRotateKey( spep_3-3 + 8, 1, -41.2 );
setRotateKey( spep_3-3 + 10, 1, -41.7 );
setRotateKey( spep_3-3 + 12, 1, -42.4 );
setRotateKey( spep_3-3 + 22, 1, -42.4 );
setRotateKey( spep_3-3 + 24, 1, -42.5 );
setRotateKey( spep_3-3 + 34, 1, -42.5 );
setRotateKey( spep_3-3 + 36, 1, -42.6 );
setRotateKey( spep_3-3 + 46, 1, -42.6 );
setRotateKey( spep_3-3 + 48, 1, -42.7 );
setRotateKey( spep_3-3 + 58, 1, -42.7 );
setRotateKey( spep_3-3 + 60, 1, -42.8 );
setRotateKey( spep_3-3 + 70, 1, -42.8 );
setRotateKey( spep_3-3 + 72, 1, -42.9 );
setRotateKey( spep_3-3 + 82, 1, -42.9 );
setRotateKey( spep_3-3 + 84, 1, -43 );
setRotateKey( spep_3-3 + 88, 1, -43 );

--***超能力***
psychic = entryEffect(  spep_3,  SP_04r,  0x100,  -1,  0,  0,  0);  --超能力(ef_003)

setEffScaleKey(  spep_3,  psychic,  1.0,  1.0);
setEffScaleKey(  spep_3+90,  psychic,  1.0,  1.0);
setEffMoveKey(  spep_3,  psychic,  0,  0);
setEffMoveKey(  spep_3+90,  psychic,  0,  0);
setEffRotateKey(  spep_3,  psychic,  0);
setEffRotateKey(  spep_3+90,  psychic,  0);
setEffAlphaKey(  spep_3,  psychic,  255);
setEffAlphaKey(  spep_3+90,  psychic,  255);


--***SE***
playSe(  spep_3,  1002);  --飛ばす
playSe(  spep_3+20,  8);  --風
playSe(  spep_3+30,  9);  --風2

entryFade(  spep_3+84,  2,  8,  4,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
--ナビアップ(120F)
------------------------------------------------------

spep_4 = spep_3+90;

--***集中線***
shuchusen4 = entryEffectLife(  spep_4,  906,  90,  0x100,  -1,  0,  0,  0);  --集中線

setEffMoveKey(  spep_4,  shuchusen4,  0,  0);
setEffMoveKey(  spep_4+120,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4,  shuchusen4,  1.12,  1.73);
setEffScaleKey(  spep_4+120,  shuchusen4,  1.12,  1.73);
setEffRotateKey(  spep_4,  shuchusen4,  0);
setEffRotateKey(  spep_4+120,  shuchusen4,  0);
setEffAlphaKey(  spep_4,  shuchusen4,  77);
setEffAlphaKey(  spep_4+120,  shuchusen4,  77);

--***ナビアップ***
nabi = entryEffect(  spep_4,  SP_06r,  0x100,  -1,  0,  0,  0);  --溜めから発射

setEffScaleKey(  spep_4,  nabi,  -1.0,  1.0);
setEffScaleKey(  spep_4+120,  nabi,  -1.0,  1.0);
setEffMoveKey(  spep_4,  nabi,  0,  0);
setEffMoveKey(  spep_4+120,  nabi,  0,  0);
setEffRotateKey(  spep_4,  nabi,  0);
setEffRotateKey(  spep_4+120,  nabi,  0);
setEffAlphaKey(  spep_4,  nabi,  255);
setEffAlphaKey(  spep_4+120,  nabi,  255);

--顔カットイン
--speff=entryEffect(spep_4+10,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_4+10,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--ゴゴゴ
ctgogo=entryEffectLife(spep_4+22,190006,70,0x100,-1,0,520);--ゴゴゴ

setEffMoveKey(spep_4+22,ctgogo,0,520,0);
setEffMoveKey(spep_4+92,ctgogo,0,520,0);

setEffScaleKey(spep_4+22, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_4+82, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_4+92, ctgogo, -1.7, 1.7);

setEffAlphaKey( spep_4 + 22, ctgogo, 0 );
setEffAlphaKey( spep_4 + 23, ctgogo, 255 );
setEffAlphaKey( spep_4 + 92, ctgogo, 255 );

setEffRotateKey(spep_4+22,ctgogo,0);
setEffRotateKey(spep_4+92,ctgogo,0);

--***SE***
playSe(  spep_4+22,  SE_04);  --ゴゴゴ

entryFade(  spep_4+110,  6,  6,  4,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
--カード(90F)
------------------------------------------------------
spep_5 = spep_4+120;

speff3 = entryEffect(  spep_5,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff3, 1, 1);
setEffReplaceTexture( speff3, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff3, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen5 = entryEffectLife( spep_5, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_5,  shuchusen5,  0,  0);
setEffMoveKey(  spep_5+90,  shuchusen5,  0,  0);
setEffScaleKey(  spep_5,  shuchusen5,  1.6,  1.6);
setEffScaleKey(  spep_5+90,  shuchusen5,  1.6,  1.6);
setEffRotateKey(  spep_5,  shuchusen5,  0);
setEffRotateKey(  spep_5+90,  shuchusen5,  0);
setEffAlphaKey(  spep_5,  shuchusen5,  255);
setEffAlphaKey(  spep_5+90,  shuchusen5,  255);

--***SE***
playSe( spep_5, SE_05);

--***白フェード***
entryFade(  spep_5+80,  6,  10,  4,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
--後ろに飛ぶ(50F)
------------------------------------------------------
spep_6 = spep_5+90;

--***集中線***
shuchusen6 = entryEffectLife( spep_6, 906, 36, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_6,  shuchusen6,  0,  0);
setEffMoveKey(  spep_6+36,  shuchusen6,  0,  0);
setEffScaleKey(  spep_6,  shuchusen6,  1.18,  1.17);
setEffScaleKey(  spep_6+36,  shuchusen6,  1.18,  1.17);
setEffRotateKey(  spep_6,  shuchusen6,  0);
setEffRotateKey(  spep_6+36,  shuchusen6,  0);
setEffAlphaKey(  spep_6,  shuchusen6,  255);
setEffAlphaKey(  spep_6+24,  shuchusen6,  255);
setEffAlphaKey(  spep_6+36,  shuchusen6,  0);

--***背景***+
stepBG = entryEffect(  spep_6,  SP_08r,  0x80,  -1,  0,  0,  0);  --バックステップ(ef_008)

setEffScaleKey(  spep_6,  stepBG,  1.0,  1.0);
setEffScaleKey(  spep_6+50,  stepBG,  1.0,  1.0);
setEffMoveKey(  spep_6,  stepBG,  0,  0);
setEffMoveKey(  spep_6+50,  stepBG,  0,  0);
setEffRotateKey(  spep_6,  stepBG,  0);
setEffRotateKey(  spep_6+50,  stepBG,  0);
setEffAlphaKey(  spep_6,  stepBG,  255);
setEffAlphaKey(  spep_6+50,  stepBG,  255);

--***敵の動き***
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 45, 1, 0 );  --消す
setDisp( spep_6 + 46, 1, 0 );  --消す
changeAnime( spep_6 + 0, 1, 106 );

setMoveKey( spep_6 + 0, 1, 325, 401.2 , 0 );
--setMoveKey( spep_6 + 2, 1, 319.2, 372.9 , 0 );
setMoveKey( spep_6-3 + 4, 1, 312.9, 344.9 , 0 );
setMoveKey( spep_6-3 + 6, 1, 306.1, 317.3 , 0 );
setMoveKey( spep_6-3 + 8, 1, 298.8, 290 , 0 );
setMoveKey( spep_6-3 + 10, 1, 284.7, 265.3 , 0 );
setMoveKey( spep_6-3 + 12, 1, 270.1, 241.1 , 0 );
setMoveKey( spep_6-3 + 14, 1, 255.1, 217.4 , 0 );
setMoveKey( spep_6-3 + 16, 1, 239.5, 194.2 , 0 );
setMoveKey( spep_6-3 + 18, 1, 223.5, 171.5 , 0 );
setMoveKey( spep_6-3 + 20, 1, 207.1, 149.3 , 0 );
setMoveKey( spep_6-3 + 22, 1, 253.4, 131.9 , 0 );
setMoveKey( spep_6-3 + 24, 1, 289.3, 118.7 , 0 );
setMoveKey( spep_6-3 + 26, 1, 314.8, 109.4 , 0 );
setMoveKey( spep_6-3 + 28, 1, 330.1, 103.9 , 0 );
setMoveKey( spep_6-3 + 30, 1, 335.2, 102.1 , 0 );
setMoveKey( spep_6-3 + 32, 1, 337.5, 101.6 , 0 );
setMoveKey( spep_6-3 + 34, 1, 339.8, 101.1 , 0 );
setMoveKey( spep_6-3 + 36, 1, 342.1, 100.5 , 0 );
setMoveKey( spep_6-3 + 38, 1, 344.4, 100 , 0 );
setMoveKey( spep_6-3 + 40, 1, 346.8, 99.5 , 0 );
setMoveKey( spep_6-3 + 42, 1, 349.1, 98.9 , 0 );
setMoveKey( spep_6-3 + 44, 1, 351.4, 98.4 , 0 );
setMoveKey( spep_6-3 + 46, 1, 353.7, 97.8 , 0 );
setMoveKey( spep_6-3 + 48, 1, 356, 97.3 , 0 );

setScaleKey( spep_6 + 0, 1, 1.94, 1.94 );
--setScaleKey( spep_6-3 + 2, 1, 1.88, 1.88 );
setScaleKey( spep_6-3 + 4, 1, 1.81, 1.81 );
setScaleKey( spep_6-3 + 6, 1, 1.75, 1.75 );
setScaleKey( spep_6-3 + 8, 1, 1.68, 1.68 );
setScaleKey( spep_6-3 + 10, 1, 1.59, 1.59 );
setScaleKey( spep_6-3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_6-3 + 14, 1, 1.4, 1.4 );
setScaleKey( spep_6-3 + 16, 1, 1.31, 1.31 );
setScaleKey( spep_6-3 + 18, 1, 1.22, 1.22 );
setScaleKey( spep_6-3 + 20, 1, 1.12, 1.12 );
setScaleKey( spep_6-3 + 22, 1, 0.98, 0.98 );
setScaleKey( spep_6-3 + 24, 1, 0.87, 0.87 );
setScaleKey( spep_6-3 + 26, 1, 0.8, 0.8 );
setScaleKey( spep_6-3 + 28, 1, 0.75, 0.75 );
setScaleKey( spep_6-3 + 30, 1, 0.73, 0.73 );
setScaleKey( spep_6-3 + 32, 1, 0.73, 0.73 );
setScaleKey( spep_6-3 + 34, 1, 0.72, 0.72 );
setScaleKey( spep_6-3 + 36, 1, 0.72, 0.72 );
setScaleKey( spep_6-3 + 38, 1, 0.71, 0.71 );
setScaleKey( spep_6-3 + 40, 1, 0.71, 0.71 );
setScaleKey( spep_6-3 + 42, 1, 0.7, 0.7 );
setScaleKey( spep_6-3 + 44, 1, 0.7, 0.7 );
setScaleKey( spep_6-3 + 46, 1, 0.69, 0.69 );
setScaleKey( spep_6-3 + 48, 1, 0.68, 0.68 );

setRotateKey( spep_6 + 0, 1, -50 );
--setRotateKey( spep_6-3 + 2, 1, -48.7 );
setRotateKey( spep_6-3 + 4, 1, -47.5 );
setRotateKey( spep_6-3 + 6, 1, -46.2 );
setRotateKey( spep_6-3 + 8, 1, -45 );
setRotateKey( spep_6-3 + 10, 1, -44 );
setRotateKey( spep_6-3 + 12, 1, -43 );
setRotateKey( spep_6-3 + 14, 1, -42 );
setRotateKey( spep_6-3 + 16, 1, -41 );
setRotateKey( spep_6-3 + 18, 1, -40 );
setRotateKey( spep_6-3 + 20, 1, -39 );
setRotateKey( spep_6-3 + 22, 1, -38.5 );
setRotateKey( spep_6-3 + 24, 1, -38.2 );
setRotateKey( spep_6-3 + 26, 1, -37.9 );
setRotateKey( spep_6-3 + 28, 1, -37.8 );
setRotateKey( spep_6-3 + 30, 1, -37.7 );
setRotateKey( spep_6-3 + 40, 1, -37.7 );
setRotateKey( spep_6-3 + 42, 1, -37.8 );
setRotateKey( spep_6-3 + 48, 1, -37.8 );

--***後ろに飛ぶ***+
step = entryEffect(  spep_6,  SP_07r,  0x80,  -1,  0,  0,  0);  --バックステップ(ef_007)

setEffScaleKey(  spep_6,  step,  1.0,  1.0);
setEffScaleKey(  spep_6+50,  step,  1.0,  1.0);
setEffMoveKey(  spep_6,  step,  0,  0);
setEffMoveKey(  spep_6+50,  step,  0,  0);
setEffRotateKey(  spep_6,  step,  0);
setEffRotateKey(  spep_6+50,  step,  0);
setEffAlphaKey(  spep_6,  step,  255);
setEffAlphaKey(  spep_6+50,  step,  255);

--***SE***
playSe(  spep_6+20,  1004);  --後ろに飛ぶ

entryFade(  spep_6+40,  4,  8,  4,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
--突進(190F)
------------------------------------------------------
spep_7 = spep_6+50;

--***書き文字***
ct_zuo = entryEffectLife( spep_7 + 124,  10012, 42, 0x10, -1, 0, 49.6, 322.4 );

setEffShake(  spep_7+124,  ct_zuo,  42,  20);  --揺れ
setEffMoveKey( spep_7 + 124, ct_zuo, 49.6, 322.4 , 0 );
setEffMoveKey( spep_7 + 126, ct_zuo, 66.1, 355.5 , 0 );
setEffMoveKey( spep_7 + 128, ct_zuo, 67.1, 397.6 , 0 );
setEffMoveKey( spep_7 + 130, ct_zuo, 92.4, 417.3 , 0 );
setEffMoveKey( spep_7 + 158, ct_zuo, 92.4, 417.3 , 0 );
setEffMoveKey( spep_7 + 160, ct_zuo, 94, 438.2 , 0 );
setEffMoveKey( spep_7 + 162, ct_zuo, 139.6, 415.1 , 0 );
setEffMoveKey( spep_7 + 164, ct_zuo, 129.2, 448 , 0 );
setEffMoveKey( spep_7 + 166, ct_zuo, 146.9, 452.9 , 0 );
setEffScaleKey( spep_7 + 124, ct_zuo, 0.34, 0.34 );
setEffScaleKey( spep_7 + 126, ct_zuo, 1.14, 1.14 );
setEffScaleKey( spep_7 + 128, ct_zuo, 1.93, 1.93 );
setEffScaleKey( spep_7 + 130, ct_zuo, 2.73, 2.73 );
setEffScaleKey( spep_7 + 158, ct_zuo, 2.73, 2.73 );
setEffScaleKey( spep_7 + 160, ct_zuo, 3.75, 3.75 );
setEffScaleKey( spep_7 + 162, ct_zuo, 4.78, 4.78 );
setEffScaleKey( spep_7 + 164, ct_zuo, 5.8, 5.8 );
setEffScaleKey( spep_7 + 166, ct_zuo, 6.82, 6.82 );
setEffRotateKey( spep_7 + 124, ct_zuo, 9.7 );
setEffRotateKey( spep_7 + 126, ct_zuo, 15.4 );
setEffRotateKey( spep_7 + 128, ct_zuo, 21.3 );
setEffRotateKey( spep_7 + 130, ct_zuo, 27.2 );
setEffRotateKey( spep_7 + 166, ct_zuo, 27.2 );
setEffAlphaKey( spep_7 + 124, ct_zuo, 255 );
setEffAlphaKey( spep_7 + 158, ct_zuo, 255 );
setEffAlphaKey( spep_7 + 160, ct_zuo, 191 );
setEffAlphaKey( spep_7 + 162, ct_zuo, 128 );
setEffAlphaKey( spep_7 + 164, ct_zuo, 64 );
setEffAlphaKey( spep_7 + 166, ct_zuo, 0 );

--***突進***+
tosshin = entryEffect(  spep_7,  SP_09r,  0x80,  -1,  0,  0,  0);    --突進

setEffScaleKey(  spep_7,  tosshin,  -1.0,  1.0);
setEffScaleKey(  spep_7+190,  tosshin,  -1.0,  1.0);
setEffMoveKey(  spep_7,  tosshin,  0,  0);
setEffMoveKey(  spep_7+190,  tosshin,  0,  0);
setEffRotateKey(  spep_7,  tosshin,  0);
setEffRotateKey(  spep_7+190,  tosshin,  0);
setEffAlphaKey(  spep_7,  tosshin,  255);
setEffAlphaKey(  spep_7+190,  tosshin,  255);

--***白フェード***
entryFade(  spep_7+110,  0,  2,  8,  fcolor_r,  fcolor_g,  fcolor_b,  200);  --white fade
entryFade(  spep_7+180,  4,  8,  4,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

--***SE***
playSe(  spep_7,  8);  --後ろに飛ぶ
playSe(  spep_7+30,  1012);  --着地
playSe(  spep_7+64,  1037);  --右手に気玉
playSe(  spep_7+120,  9);  --突進
playSe(  spep_7+162,  1021);  --腕を伸ばす

------------------------------------------------------
--被弾(90F)
------------------------------------------------------
spep_8 = spep_7+190;

--***被弾背景***+
hidanBG = entryEffect(  spep_8,  SP_11r,  0x80,  -1,  0,  0,  0);  --被弾背景

setEffScaleKey(  spep_8,  hidanBG,  1.0,  1.0);
setEffScaleKey(  spep_8+90,  hidanBG,  1.0,  1.0);
setEffMoveKey(  spep_8,  hidanBG,  0,  0);
setEffMoveKey(  spep_8+90,  hidanBG,  0,  0);
setEffRotateKey(  spep_8,  hidanBG,  0);
setEffRotateKey(  spep_8+90,  hidanBG,  0);
setEffAlphaKey(  spep_8,  hidanBG,  255);
setEffAlphaKey(  spep_8+90,  hidanBG,  255);

--***集中線***
ryu1 = entryEffectLife( spep_8, 914, 90, 0x80,  -1, 0,  0,  0);

setEffMoveKey(  spep_8,  ryu1,  0,  0);
setEffMoveKey(  spep_8+90,  ryu1,  0,  0);
setEffScaleKey(  spep_8,  ryu1,  1.18,  1.23);
setEffScaleKey(  spep_8+90,  ryu1,  1.18,  1.23);
setEffRotateKey(  spep_8,  ryu1,  0);
setEffRotateKey(  spep_8+90,  ryu1,  0);
setEffAlphaKey(  spep_8,  ryu1,  120);
setEffAlphaKey(  spep_8+60,  ryu1,  120);
setEffAlphaKey(  spep_8+90,  ryu1,  50);

--***敵の動き***
a = 3
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8+88,  1,  0);  --消す
changeAnime( spep_8 + 0, 1, 106 );
changeAnime( spep_8-a + 28, 1, 108 );
changeAnime( spep_8 + 26, 1, 108 );

setShakeChara(  spep_8,  1,  88,  10);  --揺れ
setMoveKey( spep_8 + 0, 1, 1755.6, -10.2 , 0 );
setMoveKey( spep_8 + 2, 1, 1644.9, -8.4 , 0 );
setMoveKey( spep_8 + 4, 1, 1534, -6.1 , 0 );
setMoveKey( spep_8 + 6, 1, 1423.1, -3.7 , 0 );
setMoveKey( spep_8 + 8, 1, 1312.2, -1.4 , 0 );
setMoveKey( spep_8 + 10, 1, 1201.3, 0.9 , 0 );
setMoveKey( spep_8 + 12, 1, 1090.4, 3.3 , 0 );
setMoveKey( spep_8 + 14, 1, 979.5, 5.6 , 0 );
setMoveKey( spep_8 + 16, 1, 868.7, 7.9 , 0 );
setMoveKey( spep_8 + 18, 1, 757.8, 10.3 , 0 );
setMoveKey( spep_8 + 20, 1, 607.1, 11.9 , 0 );
setMoveKey( spep_8 + 22, 1, 456.5, 13.6 , 0 );
--setMoveKey( spep_8 + 24, 1, 305.8, 15.2 , 0 );

setMoveKey( spep_8 + 27-a, 1, 155.2, 16.8 , 0 );
setMoveKey( spep_8 + 28-a, 1, 205.7, 32.2 , 0 );
setMoveKey( spep_8 + 30-a, 1, 187.8, 53.9 , 0 );
setMoveKey( spep_8 + 32-a, 1, 152.6, 55.6 , 0 );
setMoveKey( spep_8 + 34-a, 1, 142.8, 67.9 , 0 );
setMoveKey( spep_8 + 36-a, 1, 114.8, 69.5 , 0 );
setMoveKey( spep_8 + 38-a, 1, 122.9, 74.4 , 0 );
setMoveKey( spep_8 + 40-a, 1, 125.3, 68.8 , 0 );
setMoveKey( spep_8 + 42-a, 1, 130.8, 72.5 , 0 );
setMoveKey( spep_8 + 44-a, 1, 129.9, 69.9 , 0 );
setMoveKey( spep_8 + 46-a, 1, 138.7, 70.4 , 0 );
setMoveKey( spep_8 + 48-a, 1, 140.9, 61.1 , 0 );
setMoveKey( spep_8 + 50-a, 1, 146.9, 68.2 , 0 );
setMoveKey( spep_8 + 52-a, 1, 149.2, 60.4 , 0 );
setMoveKey( spep_8 + 54-a, 1, 155.1, 65.9 , 0 );
setMoveKey( spep_8 + 56-a, 1, 153.9, 63.2 , 0 );
setMoveKey( spep_8 + 58-a, 1, 163.5, 63.5 , 0 );
setMoveKey( spep_8 + 60-a, 1, 163.9, 55.2 , 0 );
setMoveKey( spep_8 + 62-a, 1, 169.3, 61.4 , 0 );
setMoveKey( spep_8 + 64-a, 1, 167.3, 54.8 , 0 );
setMoveKey( spep_8 + 66-a, 1, 172.9, 58.5 , 0 );
setMoveKey( spep_8 + 68-a, 1, 170.8, 49 , 0 );
setMoveKey( spep_8 + 70-a, 1, 177.4, 54.3 , 0 );
setMoveKey( spep_8 + 72-a, 1, 179.9, 51.7 , 0 );
setMoveKey( spep_8 + 74-a, 1, 182.7, 48.7 , 0 );
setMoveKey( spep_8 + 76-a, 1, 185.8, 45.4 , 0 );
setMoveKey( spep_8 + 78-a, 1, 189.1, 41.7 , 0 );
setMoveKey( spep_8 + 80-a, 1, 192.7, 37.6 , 0 );
setMoveKey( spep_8 + 82-a, 1, 196.6, 33.1 , 0 );
setMoveKey( spep_8 + 84-a, 1, 200.8, 28.1 , 0 );
setMoveKey( spep_8 + 86-a, 1, 205.3, 22.7 , 0 );
setMoveKey( spep_8 + 88-a, 1, 210.2, 16.9 , 0 );

setScaleKey( spep_8 + 0, 1, 4.77, 4.77 );
setScaleKey( spep_8 + 2, 1, 4.43, 4.43 );
setScaleKey( spep_8 + 4, 1, 4.09, 4.09 );
setScaleKey( spep_8 + 6, 1, 3.74, 3.74 );
setScaleKey( spep_8 + 8, 1, 3.4, 3.4 );
setScaleKey( spep_8 + 10, 1, 3.06, 3.06 );
setScaleKey( spep_8 + 12, 1, 2.71, 2.71 );
setScaleKey( spep_8 + 14, 1, 2.37, 2.37 );
setScaleKey( spep_8 + 16, 1, 2.03, 2.03 );
setScaleKey( spep_8 + 18, 1, 1.68, 1.68 );
setScaleKey( spep_8 + 20, 1, 1.71, 1.71 );
setScaleKey( spep_8 + 22, 1, 1.74, 1.74 );

--setScaleKey( spep_8 + 24, 1, 1.77, 1.77 );
setScaleKey( spep_8 + 27-a, 1, 1.8, 1.8 );
setScaleKey( spep_8 + 28-a, 1, 3.85, 3.85 );
setScaleKey( spep_8 + 30-a, 1, 3.26, 3.26 );
setScaleKey( spep_8 + 32-a, 1, 2.67, 2.67 );
setScaleKey( spep_8 + 34-a, 1, 2.08, 2.08 );
setScaleKey( spep_8 + 36-a, 1, 1.49, 1.49 );
setScaleKey( spep_8 + 38-a, 1, 1.51, 1.51 );
setScaleKey( spep_8 + 40-a, 1, 1.54, 1.54 );
setScaleKey( spep_8 + 42-a, 1, 1.57, 1.57 );
setScaleKey( spep_8 + 44-a, 1, 1.6, 1.6 );
setScaleKey( spep_8 + 46-a, 1, 1.62, 1.62 );
setScaleKey( spep_8 + 48-a, 1, 1.65, 1.65 );
setScaleKey( spep_8 + 50-a, 1, 1.68, 1.68 );
setScaleKey( spep_8 + 52-a, 1, 1.71, 1.71 );
setScaleKey( spep_8 + 54-a, 1, 1.73, 1.73 );
setScaleKey( spep_8 + 56-a, 1, 1.76, 1.76 );
setScaleKey( spep_8 + 58-a, 1, 1.79, 1.79 );
setScaleKey( spep_8 + 60-a, 1, 1.82, 1.82 );
setScaleKey( spep_8 + 62-a, 1, 1.83, 1.83 );
setScaleKey( spep_8 + 64-a, 1, 1.86, 1.86 );
setScaleKey( spep_8 + 66-a, 1, 1.89, 1.89 );
setScaleKey( spep_8 + 68-a, 1, 1.92, 1.92 );
setScaleKey( spep_8 + 70-a, 1, 1.97, 1.97 );
setScaleKey( spep_8 + 72-a, 1, 2.02, 2.02 );
setScaleKey( spep_8 + 74-a, 1, 2.07, 2.07 );
setScaleKey( spep_8 + 76-a, 1, 2.13, 2.13 );
setScaleKey( spep_8 + 78-a, 1, 2.2, 2.2 );
setScaleKey( spep_8 + 80-a, 1, 2.28, 2.28 );
setScaleKey( spep_8 + 82-a, 1, 2.36, 2.36 );
setScaleKey( spep_8 + 84-a, 1, 2.45, 2.45 );
setScaleKey( spep_8 + 86-a, 1, 2.54, 2.54 );
setScaleKey( spep_8 + 88-a, 1, 2.64, 2.64 );

setRotateKey( spep_8 + 0, 1, -32 );
setRotateKey( spep_8 + 18, 1, -32 );
setRotateKey( spep_8 + 20, 1, -31.7 );
setRotateKey( spep_8 + 22, 1, -31.3 );
setRotateKey( spep_8 + 22, 1, -31.3 );
--setRotateKey( spep_8 + 25, 1, -31.3 );
--setRotateKey( spep_8 + 24, 1, -31 );
--setRotateKey( spep_8-a + 27, 1, 4.8);
setRotateKey( spep_8-a + 28, 1, 4.8 );
setRotateKey( spep_8-a + 30, 1, 4.9 );
setRotateKey( spep_8-a + 32, 1, 5.1 );
setRotateKey( spep_8-a + 34, 1, 5.2 );
setRotateKey( spep_8-a + 36, 1, 5.3 );
setRotateKey( spep_8-a + 38, 1, 5.5 );
setRotateKey( spep_8-a + 40, 1, 5.7 );
setRotateKey( spep_8-a + 42, 1, 5.9 );
setRotateKey( spep_8-a + 44, 1, 6 );
setRotateKey( spep_8-a + 46, 1, 6.2 );
setRotateKey( spep_8-a + 48, 1, 6.4 );
setRotateKey( spep_8-a + 50, 1, 6.6 );
setRotateKey( spep_8-a + 52, 1, 6.8 );
setRotateKey( spep_8-a + 54, 1, 7 );
setRotateKey( spep_8-a + 56, 1, 7.1 );
setRotateKey( spep_8-a + 58, 1, 7.3 );
setRotateKey( spep_8-a + 60, 1, 7.5 );
setRotateKey( spep_8-a + 62, 1, 7.5 );
setRotateKey( spep_8-a + 64, 1, 7.6 );
setRotateKey( spep_8-a + 66, 1, 7.6 );
setRotateKey( spep_8-a + 68, 1, 7.7 );
setRotateKey( spep_8-a + 70, 1, 7.8 );
setRotateKey( spep_8-a + 72, 1, 7.9 );
setRotateKey( spep_8-a + 74, 1, 8 );
setRotateKey( spep_8-a + 76, 1, 8.1 );
setRotateKey( spep_8-a + 78, 1, 8.2 );
setRotateKey( spep_8-a + 80, 1, 8.3 );
setRotateKey( spep_8-a + 82, 1, 8.5 );
setRotateKey( spep_8-a + 84, 1, 8.6 );
setRotateKey( spep_8-a + 86, 1, 8.8 );
setRotateKey( spep_8-a + 88, 1, 9 );

--***被弾前面***+
hidan = entryEffect(  spep_8,  SP_10r,  0x100,  -1,  0,  0,  0);  --被弾

setEffScaleKey(  spep_8,  hidan,  1.0,  1.0);
setEffScaleKey(  spep_8+90,  hidan,  1.0,  1.0);
setEffMoveKey(  spep_8,  hidan,  0,  0);
setEffMoveKey(  spep_8+90,  hidan,  0,  0);
setEffRotateKey(  spep_8,  hidan,  0);
setEffRotateKey(  spep_8+90,  hidan,  0);
setEffAlphaKey(  spep_8,  hidan,  255);
setEffAlphaKey(  spep_8+90,  hidan,  255);

--***SE***
playSe(  spep_8,  1022);  --敵に向かっていく
playSe(  spep_8+28,  1023);  --ヒット

entryFade(  spep_8+80,  4,  8,  6,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
--爆発(200F)
------------------------------------------------------
spep_9 = spep_8+90;

--***爆発***+
bakuhatsu = entryEffect(  spep_9,  SP_12r,  0x100,  -1,  0,  0,  0);  --被弾

setEffScaleKey(  spep_9,  bakuhatsu,  1.0,  1.0);
setEffScaleKey(  spep_9+200,  bakuhatsu,  1.0,  1.0);
setEffMoveKey(  spep_9,  bakuhatsu,  0,  0);
setEffMoveKey(  spep_9+200,  bakuhatsu,  0,  0);
setEffRotateKey(  spep_9,  bakuhatsu,  0);
setEffRotateKey(  spep_9+200,  bakuhatsu,  0);
setEffAlphaKey(  spep_9,  bakuhatsu,  255);
setEffAlphaKey(  spep_9+200,  bakuhatsu,  255);

-- ダメージ表示
dealDamage(spep_9+80);
--entryFade( spep_9+170, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_9+180);

--***SE***
playSe(  spep_9,  1024);  --爆発

end
