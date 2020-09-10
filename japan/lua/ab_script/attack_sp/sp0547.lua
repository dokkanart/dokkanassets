--sp0547 超サイヤ人孫悟飯（青年期）_超サイヤ人孫悟天（幼年期）_兄弟かめはめ波（超必殺）

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
SP_01 = 153301; --カメラ迫る
SP_02 = 153302; --手のアップ〜悟飯アップ
SP_03 = 153303; --かめはめ波放つ
SP_04 = 153304; --被弾1
SP_05 = 153305; --背景
SP_06 = 153306; --悟天登場
SP_07 = 153307; --かめはめ波放つ2
SP_08 = 153308; --被弾2
SP_09 = 1942; --爆発
--敵側
SP_02r = 153309;  --ef_002 敵側
SP_06r = 153310;  --ef_006 反転
SP_08r = 153356; --被弾2

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
-- 溜め(100F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト ** --
tame = entryEffectLife( spep_0 , SP_01, 40, 0, -1, 0, 0, 0 );  --溜め(ef_001)

setEffMoveKey( spep_0 , tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 40, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 , tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 40, tame, 1.0, 1.0 );
setEffAlphaKey( spep_0 , tame, 255 );
setEffAlphaKey( spep_0 + 40, tame, 255 );
setEffRotateKey( spep_0 , tame, 0 );
setEffRotateKey( spep_0 + 40, tame, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 ,  906, 40, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 , shuchusen1, 40, 25 );

setEffMoveKey( spep_0 , shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 40, shuchusen1, 0, 0 , 0 );
setEffScaleKey( spep_0 , shuchusen1, 1.16, 1.15 );
setEffScaleKey( spep_0 + 40, shuchusen1, 1.16, 1.15 );
setEffRotateKey( spep_0 , shuchusen1, 0 );
setEffRotateKey( spep_0 + 40, shuchusen1, 0 );
setEffAlphaKey( spep_0 , shuchusen1, 51 );
setEffAlphaKey( spep_0 + 4, shuchusen1, 102 );
setEffAlphaKey( spep_0 + 6, shuchusen1, 153 );
setEffAlphaKey( spep_0 + 8, shuchusen1, 204 );
setEffAlphaKey( spep_0 + 10, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 40, shuchusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 , 0, 40, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** 音 ** --
playSe( spep_0,  8);  --カメラ寄る

-- ** ホワイトフェード ** --
entryFade( spep_0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 34, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

------------------------------------------------------
-- 悟飯アップ(120F)
------------------------------------------------------
spep_1 = spep_0 + 40;

-- ** 書き文字　** --
ctgogo = entryEffectLife( spep_1 + 42,  190006, 68, 0x100, -1, 0, -100, 515.5 ); --ゴゴゴ
setEffShake( spep_1 + 42, ctgogo, 68, 10 );

setEffMoveKey( spep_1 + 42, ctgogo, -100, 515.5 , 0 );
setEffMoveKey( spep_1 + 110, ctgogo, -100, 515.5 , 0 );

setEffScaleKey( spep_1 + 42, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_1 + 102, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_1 + 104, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_1 + 106, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_1 + 108, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_1 + 110, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_1 + 42, ctgogo, 0 );
setEffRotateKey( spep_1 + 110, ctgogo, 0 );

setEffAlphaKey( spep_1 + 42, ctgogo, 255 );
setEffAlphaKey( spep_1 + 110, ctgogo, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 12,  906, 108, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 12 , shuchusen2, 108, 25 );  --揺れ

setEffMoveKey( spep_1 + 12 , shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 120, shuchusen2, 0, 0 , 0 );
setEffScaleKey( spep_1 + 12, shuchusen2, 1, 1 );
setEffScaleKey( spep_1 + 58, shuchusen2, 1, 1 );
setEffScaleKey( spep_1 + 60, shuchusen2, 1.39, 1.39 );
setEffScaleKey( spep_1 + 120, shuchusen2, 1.39, 1.39 );
setEffRotateKey( spep_1 + 12 , shuchusen2, 0 );
setEffRotateKey( spep_1 + 120, shuchusen2, 0 );
setEffAlphaKey( spep_1 + 12 , shuchusen2, 255 );
setEffAlphaKey( spep_1 + 120, shuchusen2, 255 );

up1 = entryEffectLife( spep_1 , SP_02, 120, 0x80, -1, 0, 0, 0 );  --悟飯アップ(ef_002)

setEffMoveKey( spep_1 , up1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 120, up1, 0, 0 , 0 );
setEffScaleKey( spep_1 , up1, 1.0, 1.0 );
setEffScaleKey( spep_1 + 120, up1, 1.0, 1.0 );
setEffAlphaKey( spep_1 , up1, 255 );
setEffAlphaKey( spep_1 + 120, up1, 255 );
setEffRotateKey( spep_1 , up1, 0 );
setEffRotateKey( spep_1 + 120, up1, 0 );

-- ** 音 ** --
se3 = playSe( spep_1 ,  17);  --気弾生成
playSe( spep_1 + 42,  SE_04);  --悟飯カットイン
stopSe( spep_1+100, se3,  0);

-- **  白フェード ** --
entryFade( spep_1 + 114, 4, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 , 0, 120, 0, 0, 0, 0, 255 );  --背景

------------------------------------------------------
-- 放つ(80F)
------------------------------------------------------
spep_2 = spep_1 + 120;

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2 ,  906, 80, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 , shuchusen3, 80, 25 );

setEffMoveKey( spep_2  , shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 80, shuchusen3, 0, 0 , 0 );
setEffScaleKey( spep_2, shuchusen3, 1.09, 1.47 );
setEffScaleKey( spep_2 + 80, shuchusen3, 1.09, 1.47 );
setEffRotateKey( spep_2 , shuchusen3, 0 );
setEffRotateKey( spep_2 + 80, shuchusen3, 0 );
setEffAlphaKey( spep_2 , shuchusen3, 255 );
setEffAlphaKey( spep_2 + 75, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 76, shuchusen3, 0 );
setEffAlphaKey( spep_2 + 80, shuchusen3, 0 );

-- ** エフェクト ** --
hanatsu = entryEffectLife( spep_2 , SP_03, 80, 0x80, -1, 0, 0, 0 );  --放つ(ef_003)

setEffMoveKey( spep_2 , hanatsu, 0, 0 , 0 );
setEffMoveKey( spep_2 + 80, hanatsu, 0, 0 , 0 );
setEffScaleKey( spep_2 , hanatsu, 1.0, 1.0 );
setEffScaleKey( spep_2 + 80, hanatsu, 1.0, 1.0 );
setEffAlphaKey( spep_2 , hanatsu, 255 );
setEffAlphaKey( spep_2 + 75, hanatsu, 255 );
setEffAlphaKey( spep_2 + 76, hanatsu, 0 );
setEffAlphaKey( spep_2 + 80, hanatsu, 0 );
setEffRotateKey( spep_2 , hanatsu, 0 );
setEffRotateKey( spep_2 + 80, hanatsu, 0 );

--  ** 音 ** --
se2 = playSe( spep_2, SE_06);

-- ** 黒背景 ** --
entryFadeBg( spep_2 , 0, 80, 0, 0, 0, 0, 255 );  --背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 10; --エンドフェイズのフレーム数を置き換える

stopSe( SP_dodge - 10,  se2,  0);
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

--** 書き文字 ** --
ctzuon = entryEffectLife( spep_2 ,  10012, 64, 0x100, -1, 0, 22.1, 59.5 );  --ズオン

setEffShake( spep_2,  ctzuon,  64,  20);  --揺れ
setEffMoveKey( spep_2 , ctzuon, 22.1, 59.5 , 0 );
setEffMoveKey( spep_2 + 2, ctzuon, 20.2, 22.8 , 0 );
setEffMoveKey( spep_2 + 4, ctzuon, 11.4, -7.8 , 0 );
setEffMoveKey( spep_2 + 6, ctzuon, 11.7, -46.4 , 0 );
setEffMoveKey( spep_2 + 8, ctzuon, 0.7, -75.2 , 0 );
setEffMoveKey( spep_2 + 10, ctzuon, 3.2, -115.7 , 0 );
setEffMoveKey( spep_2 + 12, ctzuon, -10, -142.5 , 0 );
setEffMoveKey( spep_2 + 14, ctzuon, -1.2, -151.3 , 0 );
setEffMoveKey( spep_2 + 16, ctzuon, -10.6, -144.3 , 0 );
setEffMoveKey( spep_2 + 18, ctzuon, -1.8, -153.3 , 0 );
setEffMoveKey( spep_2 + 20, ctzuon, -11.1, -146.3 , 0 );
setEffMoveKey( spep_2 + 22, ctzuon, -2.3, -155.2 , 0 );
setEffMoveKey( spep_2 + 24, ctzuon, -11.7, -148.1 , 0 );
setEffMoveKey( spep_2 + 26, ctzuon, -2.8, -157.1 , 0 );
setEffMoveKey( spep_2 + 28, ctzuon, -12.3, -150 , 0 );
setEffMoveKey( spep_2 + 30, ctzuon, -3.3, -159 , 0 );
setEffMoveKey( spep_2 + 32, ctzuon, -12.8, -151.9 , 0 );
setEffMoveKey( spep_2 + 34, ctzuon, -3.8, -161 , 0 );
setEffMoveKey( spep_2 + 36, ctzuon, -13.4, -153.7 , 0 );
setEffMoveKey( spep_2 + 38, ctzuon, -4.3, -162.9 , 0 );
setEffMoveKey( spep_2 + 40, ctzuon, -14, -155.7 , 0 );
setEffMoveKey( spep_2 + 42, ctzuon, -4.8, -164.9 , 0 );
setEffMoveKey( spep_2 + 44, ctzuon, -14.5, -157.5 , 0 );
setEffMoveKey( spep_2 + 46, ctzuon, -5.3, -166.8 , 0 );
setEffMoveKey( spep_2 + 48, ctzuon, -15.1, -159.4 , 0 );
setEffMoveKey( spep_2 + 50, ctzuon, -5.6, -168.2 , 0 );
setEffMoveKey( spep_2 + 52, ctzuon, -15.3, -160.1 , 0 );
setEffMoveKey( spep_2 + 54, ctzuon, -5.9, -168.9 , 0 );
setEffMoveKey( spep_2 + 56, ctzuon, -15.5, -160.9 , 0 );
setEffMoveKey( spep_2 + 58, ctzuon, -6, -169.7 , 0 );
setEffMoveKey( spep_2 + 60, ctzuon, -15.8, -161.7 , 0 );
setEffMoveKey( spep_2 + 62, ctzuon, -6.3, -170.5 , 0 );
setEffMoveKey( spep_2 + 64, ctzuon, -6.4, -170.9 , 0 );

setEffScaleKey( spep_2 , ctzuon, 0.58, 0.58 );
setEffScaleKey( spep_2 + 2, ctzuon, 0.85, 0.85 );
setEffScaleKey( spep_2 + 4, ctzuon, 1.13, 1.13 );
setEffScaleKey( spep_2 + 6, ctzuon, 1.41, 1.41 );
setEffScaleKey( spep_2 + 8, ctzuon, 1.69, 1.69 );
setEffScaleKey( spep_2 + 10, ctzuon, 1.97, 1.97 );
setEffScaleKey( spep_2 + 12, ctzuon, 2.24, 2.24 );
setEffScaleKey( spep_2 + 14, ctzuon, 2.25, 2.25 );
setEffScaleKey( spep_2 + 16, ctzuon, 2.26, 2.26 );
setEffScaleKey( spep_2 + 18, ctzuon, 2.27, 2.27 );
setEffScaleKey( spep_2 + 20, ctzuon, 2.28, 2.28 );
setEffScaleKey( spep_2 + 22, ctzuon, 2.28, 2.28 );
setEffScaleKey( spep_2 + 24, ctzuon, 2.29, 2.29 );
setEffScaleKey( spep_2 + 26, ctzuon, 2.3, 2.3 );
setEffScaleKey( spep_2 + 28, ctzuon, 2.31, 2.31 );
setEffScaleKey( spep_2 + 30, ctzuon, 2.31, 2.31 );
setEffScaleKey( spep_2 + 32, ctzuon, 2.32, 2.32 );
setEffScaleKey( spep_2 + 34, ctzuon, 2.33, 2.33 );
setEffScaleKey( spep_2 + 36, ctzuon, 2.34, 2.34 );
setEffScaleKey( spep_2 + 38, ctzuon, 2.35, 2.35 );
setEffScaleKey( spep_2 + 40, ctzuon, 2.35, 2.35 );
setEffScaleKey( spep_2 + 42, ctzuon, 2.36, 2.36 );
setEffScaleKey( spep_2 + 44, ctzuon, 2.37, 2.37 );
setEffScaleKey( spep_2 + 46, ctzuon, 2.38, 2.38 );
setEffScaleKey( spep_2 + 48, ctzuon, 2.39, 2.39 );
setEffScaleKey( spep_2 + 54, ctzuon, 2.39, 2.39 );
setEffScaleKey( spep_2 + 56, ctzuon, 2.4, 2.4 );
setEffScaleKey( spep_2 + 60, ctzuon, 2.4, 2.4 );
setEffScaleKey( spep_2 + 62, ctzuon, 2.41, 2.41 );
setEffScaleKey( spep_2 + 64, ctzuon, 2.41, 2.41 );

setEffRotateKey( spep_2 , ctzuon, 0 );
setEffRotateKey( spep_2 + 64, ctzuon, 0 );

setEffAlphaKey( spep_2 , ctzuon, 255 );
setEffAlphaKey( spep_2 + 48, ctzuon, 255 );
setEffAlphaKey( spep_2 + 50, ctzuon, 223 );
setEffAlphaKey( spep_2 + 52, ctzuon, 191 );
setEffAlphaKey( spep_2 + 54, ctzuon, 159 );
setEffAlphaKey( spep_2 + 56, ctzuon, 128 );
setEffAlphaKey( spep_2 + 58, ctzuon, 96 );
setEffAlphaKey( spep_2 + 60, ctzuon, 64 );
setEffAlphaKey( spep_2 + 62, ctzuon, 32 );
setEffAlphaKey( spep_2 + 64, ctzuon, 0 );


------------------------------------------------------
-- 被弾(80F)
------------------------------------------------------
spep_3 = spep_2 + 76;


-- ** 背景 ** --
haikei= entryEffectLife( spep_3 , SP_05, 80, 0x80, -1, 0, 0, 0 );  --背景(ef_005)

setEffMoveKey( spep_3 , haikei, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, haikei, 0, 0 , 0 );
setEffScaleKey( spep_3 , haikei, 1.0, 1.0 );
setEffScaleKey( spep_3 + 80, haikei, 1.0, 1.0 );
setEffAlphaKey( spep_3 , haikei, 255 );
setEffAlphaKey( spep_3 + 80, haikei, 255 );
setEffRotateKey( spep_3 , haikei, 0 );
setEffRotateKey( spep_3 + 80, haikei, 0 );

-- ** 流線 ** --
ryusen = entryEffectLife( spep_3,  921,  80,  0x80,  -1,  0,  0,  0);  --流線斜め

setEffMoveKey( spep_3,  ryusen,  0,  0,  0);
setEffMoveKey( spep_3 + 80,  ryusen,  0,  0,  0);
setEffScaleKey( spep_3,  ryusen,  1.75,  1.27);
setEffScaleKey( spep_3 + 80, ryusen,  1.75,  1.27);
setEffRotateKey( spep_3,  ryusen,  -52);
setEffRotateKey( spep_3 + 80,  ryusen,  -52);
setEffAlphaKey( spep_3,  ryusen,  200);
setEffAlphaKey( spep_3 + 80,  ryusen,  200);

-- ** エフェクト ** --
hidan1= entryEffectLife( spep_3 , SP_04, 80,  0x100, -1, 0, 0, 0 );  --被弾(ef_004)

setEffMoveKey( spep_3 , hidan1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, hidan1, 0, 0 , 0 );
setEffScaleKey( spep_3 , hidan1, 1.0, 1.0 );
setEffScaleKey( spep_3 + 80, hidan1, 1.0, 1.0 );
setEffAlphaKey( spep_3 , hidan1, 255 );
setEffAlphaKey( spep_3 + 80, hidan1, 255 );
setEffRotateKey( spep_3 , hidan1, 0 );
setEffRotateKey( spep_3 + 80, hidan1, 0 );

--  ** 書き文字 **  --
ct_zudodo = entryEffectLife( spep_3 ,  10014, 78, 0x100, -1, 0, -62.6, 394.2 );  --ズドド
setEffShake( spep_3 ,  ct_zudodo,  78,  10);  --揺れ
setEffMoveKey( spep_3 , ct_zudodo, -62.6, 394.2 , 0 );
setEffMoveKey( spep_3 + 78, ct_zudodo, -62.9, 376.6 , 0 );
setEffScaleKey( spep_3 , ct_zudodo, 2.01, 2.01 );
setEffScaleKey( spep_3 + 78, ct_zudodo, 2.01, 2.01 );
setEffRotateKey( spep_3 , ct_zudodo, 20.4 );
setEffRotateKey( spep_3 + 78, ct_zudodo, 20.4 );
setEffAlphaKey( spep_3 , ct_zudodo, 255 );
setEffAlphaKey( spep_3 + 78, ct_zudodo, 255 );

-- ** 敵の動き ** --
setDisp( spep_3 , 1, 1 );
setDisp( spep_3 + 78, 1, 0 );
changeAnime( spep_3 + 0, 1, 104);  --ガード

setShakeChara( spep_3,  1,  78,  20);  --揺れ
setMoveKey( spep_3 , 1, 344.5, 486 , 0 );
setMoveKey( spep_3 + 2, 1, 316.2, 447 , 0 );
setMoveKey( spep_3 + 4, 1, 287.9, 408.1 , 0 );
setMoveKey( spep_3 + 6, 1, 259.6, 369.1 , 0 );
setMoveKey( spep_3 + 8, 1, 231.2, 330.1 , 0 );
setMoveKey( spep_3 + 10, 1, 202.9, 291.1 , 0 );
setMoveKey( spep_3 + 12, 1, 174.6, 252.2 , 0 );
setMoveKey( spep_3 + 14, 1, 146.3, 213.2 , 0 );
setMoveKey( spep_3 + 16, 1, 128.5, 192 , 0 );
setMoveKey( spep_3 + 18, 1, 110.6, 170.7 , 0 );
setMoveKey( spep_3 + 20, 1, 92.8, 149.5 , 0 );
setMoveKey( spep_3 + 22, 1, 63.5, 139.7 , 0 );
setMoveKey( spep_3 + 24, 1, 65.7, 95.7 , 0 );
setMoveKey( spep_3 + 26, 1, 45.7, 109.9 , 0 );
setMoveKey( spep_3 + 78, 1, 45.7, 118.5 , 0 );

setScaleKey( spep_3 , 1, 1, 1 );
setScaleKey( spep_3 + 2, 1, 1.04, 1.04 );
setScaleKey( spep_3 + 4, 1, 1.09, 1.09 );
setScaleKey( spep_3 + 6, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 8, 1, 1.17, 1.17 );
setScaleKey( spep_3 + 10, 1, 1.21, 1.21 );
setScaleKey( spep_3 + 12, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 14, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 16, 1, 1.31, 1.31 );
setScaleKey( spep_3 + 18, 1, 1.32, 1.32 );
setScaleKey( spep_3 + 20, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 22, 1, 1.34, 1.34 );
setScaleKey( spep_3 + 24, 1, 1.35, 1.35 );
setScaleKey( spep_3 + 78, 1, 1.35, 1.35 );

setRotateKey( spep_3 , 1, -24.1 );
setRotateKey( spep_3 + 78, 1, -24.1 );


-- ** 音 ** --
playSe( spep_3,  SE_07);  --伸びる音

-- ** 背景 ** --
entryFadeBg( spep_3 , 0, 80, 0, 0, 0, 0, 255 );  --青緑　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 + 62, 16, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
------------------------------------------------------
-- 悟天登場(120F)
------------------------------------------------------
spep_4 = spep_3 + 80;

-- ** 書き文字　** --
ctgogo2 = entryEffectLife( spep_4 + 42,  190006, 68, 0x100, -1, 0, 100, 515.5 ); --ゴゴゴ
setEffShake( spep_4 + 42, ctgogo2, 68, 10 );

setEffMoveKey( spep_4 + 42, ctgogo2, 100, 515.5 , 0 );
setEffMoveKey( spep_4 + 110, ctgogo2, 100, 515.5 , 0 );

setEffScaleKey( spep_4 + 42, ctgogo2, 0.7, 0.7 );
setEffScaleKey( spep_4 + 102, ctgogo2, 0.7, 0.7 );
setEffScaleKey( spep_4 + 104, ctgogo2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 106, ctgogo2, 1.09, 1.09 );
setEffScaleKey( spep_4 + 108, ctgogo2, 1.39, 1.39 );
setEffScaleKey( spep_4 + 110, ctgogo2, 1.69, 1.69 );

setEffRotateKey( spep_4 + 42, ctgogo2, 0 );
setEffRotateKey( spep_4 + 110, ctgogo2, 0 );

setEffAlphaKey( spep_4 + 42, ctgogo2, 255 );
setEffAlphaKey( spep_4 + 110, ctgogo2, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 32 ,906, 88, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 +32 , shuchusen4, 88, 25 );

setEffMoveKey( spep_4 +32 , shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 120, shuchusen4, 0, 0 , 0 );
setEffScaleKey( spep_4 + 32, shuchusen4, 1.23, 1.01 );
setEffScaleKey( spep_4 + 120, shuchusen4, 1.23, 1.01 );
setEffRotateKey( spep_4 + 32, shuchusen4, 0 );
setEffRotateKey( spep_4 + 120, shuchusen4, 0 );
setEffAlphaKey( spep_4 + 32, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 120, shuchusen4, 255 );

up2 = entryEffectLife( spep_4 , SP_06, 120, 0x100, -1, 0, 0, 0 );  --悟天登場(ef_005)

setEffMoveKey( spep_4 , up2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 120, up2, 0, 0 , 0 );
setEffScaleKey( spep_4 , up2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 120, up2, 1.0, 1.0 );
setEffAlphaKey( spep_4 , up2, 255 );
setEffAlphaKey( spep_4 + 120, up2, 255 );
setEffRotateKey( spep_4 , up2, 0 );
setEffRotateKey( spep_4 + 120, up2, 0 );

-- ** 同じ ** --
SE1 =  playSe( spep_4,  55);  
playSe( spep_4 + 46, SE_04);  --悟天カットイン
stopSe( spep_4 + 120, SE1,  0);
-- ** 黒背景 ** --
entryFadeBg( spep_4 , 0, 120, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_4 + 110, 8, 6, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_5 = spep_4 + 120;

-- ** カードカットイン ** --
speff2 = entryEffect( spep_5 , 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_5 , 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 , shuchusen5, 90, 20 );

setEffMoveKey( spep_5 , shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, shuchusen5, 0, 0 , 0 );
setEffScaleKey( spep_5 , shuchusen5, 1.6, 1.6 );
setEffScaleKey( spep_5 + 90, shuchusen5, 1.6, 1.6 );
setEffRotateKey( spep_5 , shuchusen5, 0 );
setEffRotateKey( spep_5 + 90, shuchusen5, 0 );
setEffAlphaKey( spep_5 , shuchusen5, 255 );
setEffAlphaKey( spep_5 + 90, shuchusen5, 255 );

-- ** 音 ** --
playSe( spep_5 , SE_05 );

-- ** ホワイトフェード ** --
entryFade( spep_5 + 70, 18, 6, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

------------------------------------------------------
-- 放つ(80F)
------------------------------------------------------
spep_6 = spep_5 + 90;

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_6,  906, 80, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 , shuchusen6, 80, 25 );

setEffMoveKey( spep_6  , shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_6 + 80, shuchusen6, 0, 0 , 0 );
setEffScaleKey( spep_6, shuchusen6, 1.18, 1.31 );
setEffScaleKey( spep_6 + 80, shuchusen6, 1.18, 1.31 );
setEffRotateKey( spep_6 , shuchusen6, 0 );
setEffRotateKey( spep_6 + 80, shuchusen6, 0 );
setEffAlphaKey( spep_6 , shuchusen6, 255 );
setEffAlphaKey( spep_6 + 80, shuchusen6, 255 );

hanatsu2= entryEffectLife( spep_6 , SP_07, 80, 0x100,  -1, 0, 0, 0 );  --放つ(ef_006)

setEffMoveKey( spep_6 , hanatsu2, 0, 0 , 0 );
setEffMoveKey( spep_6 + 80, hanatsu2, 0, 0 , 0 );
setEffScaleKey( spep_6 , hanatsu2, 1.0, 1.0 );
setEffScaleKey( spep_6 + 80, hanatsu2, 1.0, 1.0 );
setEffAlphaKey( spep_6 , hanatsu2, 255 );
setEffAlphaKey( spep_6 + 80, hanatsu2, 255 );
setEffRotateKey( spep_6 , hanatsu2, 0 );
setEffRotateKey( spep_6 + 80, hanatsu2, 0 );

playSe( spep_6,  SE_06);

-- ** 黒背景 ** --
entryFadeBg( spep_6 , 0, 80, 0, 0, 0, 0, 255 );  --背景

-- ** ホワイトフェード ** --
entryFade( spep_6 + 70, 8, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

------------------------------------------------------
-- 被弾2(80F)
------------------------------------------------------
spep_7 = spep_6 + 80;

-- ** 背景 ** --
haikei2= entryEffectLife( spep_7 , SP_05, 80,  0x80, -1, 0, 0, 0 );  --背景(ef_005)

setEffMoveKey( spep_7 , haikei2, 0, 0 , 0 );
setEffMoveKey( spep_7 + 80, haikei2, 0, 0 , 0 );
setEffScaleKey( spep_7 , haikei2, 1.0, 1.0 );
setEffScaleKey( spep_7 + 80, haikei2, 1.0, 1.0 );
setEffAlphaKey( spep_7 , haikei2, 255 );
setEffAlphaKey( spep_7 + 80, haikei2, 255 );
setEffRotateKey( spep_7 , haikei2, 0 );
setEffRotateKey( spep_7 + 80, haikei2, 0 );

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_7,  921,  80,  0x80,  -1,  0,  0,  0);  --流線斜め

setEffMoveKey( spep_7,  ryusen2,  0,  0,  0);
setEffMoveKey( spep_7 + 80,  ryusen2,  0,  0,  0);
setEffScaleKey( spep_7,  ryusen2,  1.75,  1.27);
setEffScaleKey( spep_7 + 80, ryusen2,  1.75,  1.27);
setEffRotateKey( spep_7,  ryusen2,  -52);
setEffRotateKey( spep_7 + 80,  ryusen2,  -52);
setEffAlphaKey( spep_7,  ryusen2,  200);
setEffAlphaKey( spep_7 + 80,  ryusen2,  200);

-- ** エフェクト ** --
hidan2= entryEffectLife( spep_7 , SP_08, 80, 0x100, -1, 0, 0, 0 );  --被弾(ef_008)

setEffMoveKey( spep_7 , hidan2, 0, 0 , 0 );
setEffMoveKey( spep_7 + 80, hidan2, 0, 0 , 0 );
setEffScaleKey( spep_7 , hidan2, 1.0, 1.0 );
setEffScaleKey( spep_7 + 80, hidan2, 1.0, 1.0 );
setEffAlphaKey( spep_7 , hidan2, 255 );
setEffAlphaKey( spep_7 + 80, hidan2, 255 );
setEffRotateKey( spep_7 , hidan2, 0 );
setEffRotateKey( spep_7 + 80, hidan2, 0 );

--  ** 書き文字 **  --
ct_zudodo2 = entryEffectLife( spep_7 ,  10014, 66, 0x100, -1, 0, -62.6, 394.2 );

setEffShake( spep_7 ,  ct_zudodo2,  66,  25);
setEffMoveKey( spep_7 , ct_zudodo2, -62.6, 394.2 , 0 );
setEffMoveKey( spep_7 + 64, ct_zudodo2, -62.6, 394.2 , 0 );
setEffMoveKey( spep_7 + 66, ct_zudodo2, -62.9, 376.6 , 0 );
setEffScaleKey( spep_7 , ct_zudodo2, 2.01, 2.01 );
setEffScaleKey( spep_7 + 66, ct_zudodo2, 2.01, 2.01 );
setEffRotateKey( spep_7 , ct_zudodo2, 20.4 );
setEffRotateKey( spep_7 +66, ct_zudodo2, 20.4 );
setEffAlphaKey( spep_7 , ct_zudodo2, 255 );
setEffAlphaKey( spep_7 + 66, ct_zudodo2, 255 );

a = 3
--  ** 敵の動き **  --
setDisp( spep_7 , 1, 1 );
setDisp( spep_7 + 37 -a, 1, 0 );
changeAnime( spep_7 , 1, 104 );
changeAnime( spep_7 + 22 -a, 1, 108 );

setShakeChara( spep_7,  1,  58 -a,  30);
setMoveKey( spep_7 , 1, 533.2, 566.1 , 0 );
--setMoveKey( spep_7 + 2, 1, 499.5, 546.5 , 0 );
setMoveKey( spep_7 + 4 -a, 1, 477.9, 502.5 , 0 );
setMoveKey( spep_7 + 6 -a, 1, 436.1, 486.8 , 0 );
setMoveKey( spep_7 + 8 -a, 1, 418.5, 446.9 , 0 );
setMoveKey( spep_7 + 10 -a, 1, 384.8, 427.2 , 0 );
setMoveKey( spep_7 + 12 -a, 1, 351, 407.5 , 0 );
setMoveKey( spep_7 + 14 -a, 1, 329.5, 363.5 , 0 );
setMoveKey( spep_7 + 16 -a, 1, 287.6, 347.8 , 0 );
setMoveKey( spep_7 + 18 -a, 1, 270, 307.9 , 0 );
setMoveKey( spep_7 + 21 -a, 1, 236.3, 288.2 , 0 );
setMoveKey( spep_7 + 22 -a, 1, 218.6, 288.5 , 0 );
setMoveKey( spep_7 + 24 -a, 1, 197, 244.6 , 0 );
setMoveKey( spep_7 + 26 -a, 1, 155.1, 228.9 , 0 );
setMoveKey( spep_7 + 28 -a, 1, 137.6, 189 , 0 );
setMoveKey( spep_7 + 30 -a, 1, 103.9, 169.2 , 0 );
setMoveKey( spep_7 + 32 -a, 1, 70.1, 149.5 , 0 );
setMoveKey( spep_7 + 34 -a, 1, 48.5, 105.6 , 0 );
setMoveKey( spep_7 + 37 -a, 1, 6.7, 89.9 , 0 );

setScaleKey( spep_7 , 1, 0.95, 0.95 );
setScaleKey( spep_7 + 37 -a, 1, 0.95, 0.95 );

setRotateKey( spep_7 , 1, -24 );
setRotateKey( spep_7 + 37 -a, 1, -24 );


-- ** ** --
playSe( spep_7,  SE_07);
playSe( spep_7 + 10, 1023);

-- ** 背景 ** --
entryFadeBg( spep_7 , 0, 80, 0, 0, 0, 0, 255 );  --背景

-- ** ホワイトフェード ** --
entryFade( spep_7 + 70, 8, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

------------------------------------------------------
-- 爆発(240F)
------------------------------------------------------
spep_8 = spep_7 + 80;

bakuha = entryEffect( spep_8,  SP_09,  0,  -1,  0x80,  0,  0);  --爆発

setEffMoveKey( spep_8 , bakuha, 0, 0 , 0 );
setEffMoveKey( spep_8 + 190, bakuha, 0, 0 , 0 );
setEffScaleKey( spep_8 , bakuha, 1.0, 1.0 );
setEffScaleKey( spep_8 + 190, bakuha, 1.0, 1.0 );
setEffAlphaKey( spep_8 , bakuha, 255 );
setEffAlphaKey( spep_8 + 190, bakuha, 255 );
setEffRotateKey( spep_8 , bakuha, 0 );
setEffRotateKey( spep_8 + 190, bakuha, 0 );

-- ** 集中線 ** --
shuchusen8 = entryEffectLife( spep_8 ,  906, 190, 0x100, -1, -100, 0, 0 );  --集中線
setEffShake( spep_8 , shuchusen8, 190, 25 );

setEffMoveKey( spep_8 , shuchusen8, -100, 0 , 0 );
setEffMoveKey( spep_8 + 190, shuchusen8, -100, 0 , 0 );
setEffScaleKey( spep_8 , shuchusen8, 1.43, 1.43 );
setEffScaleKey( spep_8 + 190, shuchusen8, 1.43, 1.43 );
setEffRotateKey( spep_8 , shuchusen8, 0 );
setEffRotateKey( spep_8 + 190, shuchusen8, 0 );
setEffAlphaKey( spep_8 , shuchusen8, 255 );
setEffAlphaKey( spep_8 + 190, shuchusen8, 255 );

--  ** 音 ** --
playSe( spep_8,  1024);  --爆破

-- ** 背景 ** --
entryFadeBg( spep_8 , 0, 190, 0, 0, 0, 0, 255 );  --黒背景

-- ** ダメージ表示 ** --
dealDamage( spep_8 + 80 );
entryFade( spep_8 + 170, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_8 + 180 );

else




------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 溜め(100F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト ** --
tame = entryEffectLife( spep_0 , SP_01, 40, 0, -1, 0, 0, 0 );  --溜め(ef_001)

setEffMoveKey( spep_0 , tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 40, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 , tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 40, tame, -1.0, 1.0 );
setEffAlphaKey( spep_0 , tame, 255 );
setEffAlphaKey( spep_0 + 40, tame, 255 );
setEffRotateKey( spep_0 , tame, 0 );
setEffRotateKey( spep_0 + 40, tame, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 ,  906, 40, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 , shuchusen1, 40, 25 );

setEffMoveKey( spep_0 , shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 40, shuchusen1, 0, 0 , 0 );
setEffScaleKey( spep_0 , shuchusen1, 1.16, 1.15 );
setEffScaleKey( spep_0 + 40, shuchusen1, 1.16, 1.15 );
setEffRotateKey( spep_0 , shuchusen1, 0 );
setEffRotateKey( spep_0 + 40, shuchusen1, 0 );
setEffAlphaKey( spep_0 , shuchusen1, 51 );
setEffAlphaKey( spep_0 + 4, shuchusen1, 102 );
setEffAlphaKey( spep_0 + 6, shuchusen1, 153 );
setEffAlphaKey( spep_0 + 8, shuchusen1, 204 );
setEffAlphaKey( spep_0 + 10, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 40, shuchusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 , 0, 40, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** 音 ** --
playSe( spep_0,  8);  --カメラ寄る


-- ** ホワイトフェード ** --
entryFade( spep_0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 34, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

------------------------------------------------------
-- 悟飯アップ(120F)
------------------------------------------------------
spep_1 = spep_0 + 40;

-- ** 書き文字　** --
ctgogo = entryEffectLife( spep_1 + 42,  190006, 68, 0x100, -1, 0, -100, 515.5 ); --ゴゴゴ
setEffShake( spep_1 + 42, ctgogo, 68, 10 );

setEffMoveKey( spep_1 + 42, ctgogo, -100, 515.5 , 0 );
setEffMoveKey( spep_1 + 110, ctgogo, -100, 515.5 , 0 );

setEffScaleKey( spep_1 + 42, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_1 + 102, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_1 + 104, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_1 + 106, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_1 + 108, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_1 + 110, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_1 + 42, ctgogo, 0 );
setEffRotateKey( spep_1 + 110, ctgogo, 0 );

setEffAlphaKey( spep_1 + 42, ctgogo, 255 );
setEffAlphaKey( spep_1 + 110, ctgogo, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 12,  906, 108, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 12 , shuchusen2, 108, 25 );  --揺れ

setEffMoveKey( spep_1 + 12 , shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 120, shuchusen2, 0, 0 , 0 );
setEffScaleKey( spep_1 + 12, shuchusen2, 1, 1 );
setEffScaleKey( spep_1 + 58, shuchusen2, 1, 1 );
setEffScaleKey( spep_1 + 60, shuchusen2, 1.39, 1.39 );
setEffScaleKey( spep_1 + 120, shuchusen2, 1.39, 1.39 );
setEffRotateKey( spep_1 + 12 , shuchusen2, 0 );
setEffRotateKey( spep_1 + 120, shuchusen2, 0 );
setEffAlphaKey( spep_1 + 12 , shuchusen2, 255 );
setEffAlphaKey( spep_1 + 120, shuchusen2, 255 );

up1 = entryEffectLife( spep_1 , SP_02r, 120, 0x80, -1, 0, 0, 0 );  --悟飯アップ(ef_002)

setEffMoveKey( spep_1 , up1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 120, up1, 0, 0 , 0 );
setEffScaleKey( spep_1 , up1, -1.0, 1.0 );
setEffScaleKey( spep_1 + 120, up1, -1.0, 1.0 );
setEffAlphaKey( spep_1 , up1, 255 );
setEffAlphaKey( spep_1 + 120, up1, 255 );
setEffRotateKey( spep_1 , up1, 0 );
setEffRotateKey( spep_1 + 120, up1, 0 );

-- ** 音 ** --
se3 = playSe( spep_1 ,  17);  --気弾生成
playSe( spep_1 + 42,  SE_04);  --悟飯カットイン
stopSe( spep_1+100, se3,  0);

-- **  白フェード ** --
entryFade( spep_1 + 114, 4, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 , 0, 120, 0, 0, 0, 0, 255 );  --背景

------------------------------------------------------
-- 放つ(80F)
------------------------------------------------------
spep_2 = spep_1 + 120;

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2 ,  906, 80, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 , shuchusen3, 80, 25 );

setEffMoveKey( spep_2  , shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 80, shuchusen3, 0, 0 , 0 );
setEffScaleKey( spep_2, shuchusen3, 1.09, 1.47 );
setEffScaleKey( spep_2 + 80, shuchusen3, 1.09, 1.47 );
setEffRotateKey( spep_2 , shuchusen3, 0 );
setEffRotateKey( spep_2 + 80, shuchusen3, 0 );
setEffAlphaKey( spep_2 , shuchusen3, 255 );
setEffAlphaKey( spep_2 + 75, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 76, shuchusen3, 0 );
setEffAlphaKey( spep_2 + 80, shuchusen3, 0 );

-- ** エフェクト ** --
hanatsu = entryEffectLife( spep_2 , SP_03, 80, 0x80, -1, 0, 0, 0 );  --放つ(ef_003)

setEffMoveKey( spep_2 , hanatsu, 0, 0 , 0 );
setEffMoveKey( spep_2 + 80, hanatsu, 0, 0 , 0 );
setEffScaleKey( spep_2 , hanatsu, -1.0, 1.0 );
setEffScaleKey( spep_2 + 80, hanatsu, -1.0, 1.0 );
setEffAlphaKey( spep_2 , hanatsu, 255 );
setEffAlphaKey( spep_2 + 75, hanatsu, 255 );
setEffAlphaKey( spep_2 + 76, hanatsu, 0 );
setEffAlphaKey( spep_2 + 80, hanatsu, 0 );
setEffRotateKey( spep_2 , hanatsu, 0 );
setEffRotateKey( spep_2 + 80, hanatsu, 0 );

--  ** 音 ** --
se2 = playSe( spep_2, SE_06);

-- ** 黒背景 ** --
entryFadeBg( spep_2 , 0, 80, 0, 0, 0, 0, 255 );  --背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 10; --エンドフェイズのフレーム数を置き換える

stopSe( SP_dodge - 10,  se2,  0);
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

--** 書き文字 ** --
ctzuon = entryEffectLife( spep_2 ,  10012, 64, 0x100, -1, 0, 22.1, 59.5 );  --ズオン

setEffShake( spep_2,  ctzuon,  64,  20);  --揺れ
setEffMoveKey( spep_2 , ctzuon, 22.1, 59.5 , 0 );
setEffMoveKey( spep_2 + 2, ctzuon, 20.2, 22.8 , 0 );
setEffMoveKey( spep_2 + 4, ctzuon, 11.4, -7.8 , 0 );
setEffMoveKey( spep_2 + 6, ctzuon, 11.7, -46.4 , 0 );
setEffMoveKey( spep_2 + 8, ctzuon, 0.7, -75.2 , 0 );
setEffMoveKey( spep_2 + 10, ctzuon, 3.2, -115.7 , 0 );
setEffMoveKey( spep_2 + 12, ctzuon, -10, -142.5 , 0 );
setEffMoveKey( spep_2 + 14, ctzuon, -1.2, -151.3 , 0 );
setEffMoveKey( spep_2 + 16, ctzuon, -10.6, -144.3 , 0 );
setEffMoveKey( spep_2 + 18, ctzuon, -1.8, -153.3 , 0 );
setEffMoveKey( spep_2 + 20, ctzuon, -11.1, -146.3 , 0 );
setEffMoveKey( spep_2 + 22, ctzuon, -2.3, -155.2 , 0 );
setEffMoveKey( spep_2 + 24, ctzuon, -11.7, -148.1 , 0 );
setEffMoveKey( spep_2 + 26, ctzuon, -2.8, -157.1 , 0 );
setEffMoveKey( spep_2 + 28, ctzuon, -12.3, -150 , 0 );
setEffMoveKey( spep_2 + 30, ctzuon, -3.3, -159 , 0 );
setEffMoveKey( spep_2 + 32, ctzuon, -12.8, -151.9 , 0 );
setEffMoveKey( spep_2 + 34, ctzuon, -3.8, -161 , 0 );
setEffMoveKey( spep_2 + 36, ctzuon, -13.4, -153.7 , 0 );
setEffMoveKey( spep_2 + 38, ctzuon, -4.3, -162.9 , 0 );
setEffMoveKey( spep_2 + 40, ctzuon, -14, -155.7 , 0 );
setEffMoveKey( spep_2 + 42, ctzuon, -4.8, -164.9 , 0 );
setEffMoveKey( spep_2 + 44, ctzuon, -14.5, -157.5 , 0 );
setEffMoveKey( spep_2 + 46, ctzuon, -5.3, -166.8 , 0 );
setEffMoveKey( spep_2 + 48, ctzuon, -15.1, -159.4 , 0 );
setEffMoveKey( spep_2 + 50, ctzuon, -5.6, -168.2 , 0 );
setEffMoveKey( spep_2 + 52, ctzuon, -15.3, -160.1 , 0 );
setEffMoveKey( spep_2 + 54, ctzuon, -5.9, -168.9 , 0 );
setEffMoveKey( spep_2 + 56, ctzuon, -15.5, -160.9 , 0 );
setEffMoveKey( spep_2 + 58, ctzuon, -6, -169.7 , 0 );
setEffMoveKey( spep_2 + 60, ctzuon, -15.8, -161.7 , 0 );
setEffMoveKey( spep_2 + 62, ctzuon, -6.3, -170.5 , 0 );
setEffMoveKey( spep_2 + 64, ctzuon, -6.4, -170.9 , 0 );

setEffScaleKey( spep_2 , ctzuon, 0.58, 0.58 );
setEffScaleKey( spep_2 + 2, ctzuon, 0.85, 0.85 );
setEffScaleKey( spep_2 + 4, ctzuon, 1.13, 1.13 );
setEffScaleKey( spep_2 + 6, ctzuon, 1.41, 1.41 );
setEffScaleKey( spep_2 + 8, ctzuon, 1.69, 1.69 );
setEffScaleKey( spep_2 + 10, ctzuon, 1.97, 1.97 );
setEffScaleKey( spep_2 + 12, ctzuon, 2.24, 2.24 );
setEffScaleKey( spep_2 + 14, ctzuon, 2.25, 2.25 );
setEffScaleKey( spep_2 + 16, ctzuon, 2.26, 2.26 );
setEffScaleKey( spep_2 + 18, ctzuon, 2.27, 2.27 );
setEffScaleKey( spep_2 + 20, ctzuon, 2.28, 2.28 );
setEffScaleKey( spep_2 + 22, ctzuon, 2.28, 2.28 );
setEffScaleKey( spep_2 + 24, ctzuon, 2.29, 2.29 );
setEffScaleKey( spep_2 + 26, ctzuon, 2.3, 2.3 );
setEffScaleKey( spep_2 + 28, ctzuon, 2.31, 2.31 );
setEffScaleKey( spep_2 + 30, ctzuon, 2.31, 2.31 );
setEffScaleKey( spep_2 + 32, ctzuon, 2.32, 2.32 );
setEffScaleKey( spep_2 + 34, ctzuon, 2.33, 2.33 );
setEffScaleKey( spep_2 + 36, ctzuon, 2.34, 2.34 );
setEffScaleKey( spep_2 + 38, ctzuon, 2.35, 2.35 );
setEffScaleKey( spep_2 + 40, ctzuon, 2.35, 2.35 );
setEffScaleKey( spep_2 + 42, ctzuon, 2.36, 2.36 );
setEffScaleKey( spep_2 + 44, ctzuon, 2.37, 2.37 );
setEffScaleKey( spep_2 + 46, ctzuon, 2.38, 2.38 );
setEffScaleKey( spep_2 + 48, ctzuon, 2.39, 2.39 );
setEffScaleKey( spep_2 + 54, ctzuon, 2.39, 2.39 );
setEffScaleKey( spep_2 + 56, ctzuon, 2.4, 2.4 );
setEffScaleKey( spep_2 + 60, ctzuon, 2.4, 2.4 );
setEffScaleKey( spep_2 + 62, ctzuon, 2.41, 2.41 );
setEffScaleKey( spep_2 + 64, ctzuon, 2.41, 2.41 );

setEffRotateKey( spep_2 , ctzuon, 0 );
setEffRotateKey( spep_2 + 64, ctzuon, 0 );

setEffAlphaKey( spep_2 , ctzuon, 255 );
setEffAlphaKey( spep_2 + 48, ctzuon, 255 );
setEffAlphaKey( spep_2 + 50, ctzuon, 223 );
setEffAlphaKey( spep_2 + 52, ctzuon, 191 );
setEffAlphaKey( spep_2 + 54, ctzuon, 159 );
setEffAlphaKey( spep_2 + 56, ctzuon, 128 );
setEffAlphaKey( spep_2 + 58, ctzuon, 96 );
setEffAlphaKey( spep_2 + 60, ctzuon, 64 );
setEffAlphaKey( spep_2 + 62, ctzuon, 32 );
setEffAlphaKey( spep_2 + 64, ctzuon, 0 );


------------------------------------------------------
-- 被弾(80F)
------------------------------------------------------
spep_3 = spep_2 + 76;


-- ** 背景 ** --
haikei= entryEffectLife( spep_3 , SP_05, 80, 0x80, -1, 0, 0, 0 );  --背景(ef_005)

setEffMoveKey( spep_3 , haikei, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, haikei, 0, 0 , 0 );
setEffScaleKey( spep_3 , haikei, 1.0, 1.0 );
setEffScaleKey( spep_3 + 80, haikei, 1.0, 1.0 );
setEffAlphaKey( spep_3 , haikei, 255 );
setEffAlphaKey( spep_3 + 80, haikei, 255 );
setEffRotateKey( spep_3 , haikei, 0 );
setEffRotateKey( spep_3 + 80, haikei, 0 );

-- ** 流線 ** --
ryusen = entryEffectLife( spep_3,  921,  80,  0x80,  -1,  0,  0,  0);  --流線斜め

setEffMoveKey( spep_3,  ryusen,  0,  0,  0);
setEffMoveKey( spep_3 + 80,  ryusen,  0,  0,  0);
setEffScaleKey( spep_3,  ryusen,  1.75,  1.27);
setEffScaleKey( spep_3 + 80, ryusen,  1.75,  1.27);
setEffRotateKey( spep_3,  ryusen,  -52);
setEffRotateKey( spep_3 + 80,  ryusen,  -52);
setEffAlphaKey( spep_3,  ryusen,  200);
setEffAlphaKey( spep_3 + 80,  ryusen,  200);

-- ** エフェクト ** --
hidan1= entryEffectLife( spep_3 , SP_04, 80,  0x100, -1, 0, 0, 0 );  --被弾(ef_004)

setEffMoveKey( spep_3 , hidan1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, hidan1, 0, 0 , 0 );
setEffScaleKey( spep_3 , hidan1, 1.0, 1.0 );
setEffScaleKey( spep_3 + 80, hidan1, 1.0, 1.0 );
setEffAlphaKey( spep_3 , hidan1, 255 );
setEffAlphaKey( spep_3 + 80, hidan1, 255 );
setEffRotateKey( spep_3 , hidan1, 0 );
setEffRotateKey( spep_3 + 80, hidan1, 0 );

--  ** 書き文字 **  --
ct_zudodo = entryEffectLife( spep_3 ,  10014, 78, 0x100, -1, 0, -62.6, 394.2 );  --ズドド
setEffShake( spep_3 ,  ct_zudodo,  78,  10);  --揺れ
setEffMoveKey( spep_3 , ct_zudodo, -62.6, 394.2 , 0 );
setEffMoveKey( spep_3 + 78, ct_zudodo, -62.9, 376.6 , 0 );
setEffScaleKey( spep_3 , ct_zudodo, 2.01, 2.01 );
setEffScaleKey( spep_3 + 78, ct_zudodo, 2.01, 2.01 );
setEffRotateKey( spep_3 , ct_zudodo, -40.4 );
setEffRotateKey( spep_3 + 78, ct_zudodo, -40.4 );
setEffAlphaKey( spep_3 , ct_zudodo, 255 );
setEffAlphaKey( spep_3 + 78, ct_zudodo, 255 );

-- ** 敵の動き ** --
setDisp( spep_3 , 1, 1 );
setDisp( spep_3 + 78, 1, 0 );
changeAnime( spep_3 + 0, 1, 104);  --ガード

setShakeChara( spep_3,  1,  78,  20);  --揺れ
setMoveKey( spep_3 , 1, 344.5, 486 , 0 );
setMoveKey( spep_3 + 2, 1, 316.2, 447 , 0 );
setMoveKey( spep_3 + 4, 1, 287.9, 408.1 , 0 );
setMoveKey( spep_3 + 6, 1, 259.6, 369.1 , 0 );
setMoveKey( spep_3 + 8, 1, 231.2, 330.1 , 0 );
setMoveKey( spep_3 + 10, 1, 202.9, 291.1 , 0 );
setMoveKey( spep_3 + 12, 1, 174.6, 252.2 , 0 );
setMoveKey( spep_3 + 14, 1, 146.3, 213.2 , 0 );
setMoveKey( spep_3 + 16, 1, 128.5, 192 , 0 );
setMoveKey( spep_3 + 18, 1, 110.6, 170.7 , 0 );
setMoveKey( spep_3 + 20, 1, 92.8, 149.5 , 0 );
setMoveKey( spep_3 + 22, 1, 63.5, 139.7 , 0 );
setMoveKey( spep_3 + 24, 1, 65.7, 95.7 , 0 );
setMoveKey( spep_3 + 26, 1, 45.7, 109.9 , 0 );
setMoveKey( spep_3 + 78, 1, 45.7, 118.5 , 0 );

setScaleKey( spep_3 , 1, 1, 1 );
setScaleKey( spep_3 + 2, 1, 1.04, 1.04 );
setScaleKey( spep_3 + 4, 1, 1.09, 1.09 );
setScaleKey( spep_3 + 6, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 8, 1, 1.17, 1.17 );
setScaleKey( spep_3 + 10, 1, 1.21, 1.21 );
setScaleKey( spep_3 + 12, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 14, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 16, 1, 1.31, 1.31 );
setScaleKey( spep_3 + 18, 1, 1.32, 1.32 );
setScaleKey( spep_3 + 20, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 22, 1, 1.34, 1.34 );
setScaleKey( spep_3 + 24, 1, 1.35, 1.35 );
setScaleKey( spep_3 + 78, 1, 1.35, 1.35 );

setRotateKey( spep_3 , 1, -24.1 );
setRotateKey( spep_3 + 78, 1, -24.1 );


-- ** 音 ** --
playSe( spep_3,  SE_07);  --伸びる音

-- ** 背景 ** --
entryFadeBg( spep_3 , 0, 80, 0, 0, 0, 0, 255 );  --青緑　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 + 62, 16, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
------------------------------------------------------
-- 悟天登場(120F)
------------------------------------------------------
spep_4 = spep_3 + 80;

-- ** 書き文字　** --
ctgogo2 = entryEffectLife( spep_4 + 42,  190006, 68, 0x100, -1, 0, 100, 515.5 ); --ゴゴゴ
setEffShake( spep_4 + 42, ctgogo2, 68, 10 );

setEffMoveKey( spep_4 + 42, ctgogo2, 100, 515.5 , 0 );
setEffMoveKey( spep_4 + 110, ctgogo2, 100, 515.5 , 0 );

setEffScaleKey( spep_4 + 42, ctgogo2, -0.7, 0.7 );
setEffScaleKey( spep_4 + 102, ctgogo2, -0.7, 0.7 );
setEffScaleKey( spep_4 + 104, ctgogo2, -1.0, 1.0 );
setEffScaleKey( spep_4 + 106, ctgogo2, -1.09, 1.09 );
setEffScaleKey( spep_4 + 108, ctgogo2, -1.39, 1.39 );
setEffScaleKey( spep_4 + 110, ctgogo2, -1.69, 1.69 );

setEffRotateKey( spep_4 + 42, ctgogo2, 0 );
setEffRotateKey( spep_4 + 110, ctgogo2, 0 );

setEffAlphaKey( spep_4 + 42, ctgogo2, 255 );
setEffAlphaKey( spep_4 + 110, ctgogo2, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 32 ,906, 88, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 +32 , shuchusen4, 88, 25 );

setEffMoveKey( spep_4 +32 , shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 120, shuchusen4, 0, 0 , 0 );
setEffScaleKey( spep_4 + 32, shuchusen4, 1.23, 1.01 );
setEffScaleKey( spep_4 + 120, shuchusen4, 1.23, 1.01 );
setEffRotateKey( spep_4 + 32, shuchusen4, 0 );
setEffRotateKey( spep_4 + 120, shuchusen4, 0 );
setEffAlphaKey( spep_4 + 32, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 120, shuchusen4, 255 );

up2 = entryEffectLife( spep_4 , SP_06r, 120, 0x100, -1, 0, 0, 0 );  --悟天登場(ef_005)

setEffMoveKey( spep_4 , up2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 120, up2, 0, 0 , 0 );
setEffScaleKey( spep_4 , up2, -1.0, 1.0 );
setEffScaleKey( spep_4 + 120, up2, -1.0, 1.0 );
setEffAlphaKey( spep_4 , up2, 255 );
setEffAlphaKey( spep_4 + 120, up2, 255 );
setEffRotateKey( spep_4 , up2, 0 );
setEffRotateKey( spep_4 + 120, up2, 0 );

-- ** 同じ ** --
SE1 =  playSe( spep_4,  55);  
playSe( spep_4 + 46, SE_04);  --悟天カットイン
stopSe( spep_4 + 120, SE1,  0);
-- ** 黒背景 ** --
entryFadeBg( spep_4 , 0, 120, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_4 + 110, 8, 6, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_5 = spep_4 + 120;

-- ** カードカットイン ** --
speff2 = entryEffect( spep_5 , 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_5 , 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 , shuchusen5, 90, 20 );

setEffMoveKey( spep_5 , shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, shuchusen5, 0, 0 , 0 );
setEffScaleKey( spep_5 , shuchusen5, 1.6, 1.6 );
setEffScaleKey( spep_5 + 90, shuchusen5, 1.6, 1.6 );
setEffRotateKey( spep_5 , shuchusen5, 0 );
setEffRotateKey( spep_5 + 90, shuchusen5, 0 );
setEffAlphaKey( spep_5 , shuchusen5, 255 );
setEffAlphaKey( spep_5 + 90, shuchusen5, 255 );

-- ** 音 ** --
playSe( spep_5 , SE_05 );

-- ** ホワイトフェード ** --
entryFade( spep_5 + 70, 18, 6, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

------------------------------------------------------
-- 放つ(80F)
------------------------------------------------------
spep_6 = spep_5 + 90;

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_6,  906, 80, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 , shuchusen6, 80, 25 );

setEffMoveKey( spep_6  , shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_6 + 80, shuchusen6, 0, 0 , 0 );
setEffScaleKey( spep_6, shuchusen6, -1.18, 1.31 );
setEffScaleKey( spep_6 + 80, shuchusen6, -1.18, 1.31 );
setEffRotateKey( spep_6 , shuchusen6, 0 );
setEffRotateKey( spep_6 + 80, shuchusen6, 0 );
setEffAlphaKey( spep_6 , shuchusen6, 255 );
setEffAlphaKey( spep_6 + 80, shuchusen6, 255 );

hanatsu2= entryEffectLife( spep_6 , SP_07, 80, 0x100,  -1, 0, 0, 0 );  --放つ(ef_006)

setEffMoveKey( spep_6 , hanatsu2, 0, 0 , 0 );
setEffMoveKey( spep_6 + 80, hanatsu2, 0, 0 , 0 );
setEffScaleKey( spep_6 , hanatsu2, -1.0, 1.0 );
setEffScaleKey( spep_6 + 80, hanatsu2, -1.0, 1.0 );
setEffAlphaKey( spep_6 , hanatsu2, 255 );
setEffAlphaKey( spep_6 + 80, hanatsu2, 255 );
setEffRotateKey( spep_6 , hanatsu2, 0 );
setEffRotateKey( spep_6 + 80, hanatsu2, 0 );

playSe( spep_6,  SE_06);

-- ** 黒背景 ** --
entryFadeBg( spep_6 , 0, 80, 0, 0, 0, 0, 255 );  --背景

-- ** ホワイトフェード ** --
entryFade( spep_6 + 70, 8, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

------------------------------------------------------
-- 被弾2(80F)
------------------------------------------------------
spep_7 = spep_6 + 80;

-- ** 背景 ** --
haikei2= entryEffectLife( spep_7 , SP_05, 80,  0x80, -1, 0, 0, 0 );  --背景(ef_005)

setEffMoveKey( spep_7 , haikei2, 0, 0 , 0 );
setEffMoveKey( spep_7 + 80, haikei2, 0, 0 , 0 );
setEffScaleKey( spep_7 , haikei2, 1.0, 1.0 );
setEffScaleKey( spep_7 + 80, haikei2, 1.0, 1.0 );
setEffAlphaKey( spep_7 , haikei2, 255 );
setEffAlphaKey( spep_7 + 80, haikei2, 255 );
setEffRotateKey( spep_7 , haikei2, 0 );
setEffRotateKey( spep_7 + 80, haikei2, 0 );

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_7,  921,  80,  0x80,  -1,  0,  0,  0);  --流線斜め

setEffMoveKey( spep_7,  ryusen2,  0,  0,  0);
setEffMoveKey( spep_7 + 80,  ryusen2,  0,  0,  0);
setEffScaleKey( spep_7,  ryusen2,  1.75,  1.27);
setEffScaleKey( spep_7 + 80, ryusen2,  1.75,  1.27);
setEffRotateKey( spep_7,  ryusen2,  -52);
setEffRotateKey( spep_7 + 80,  ryusen2,  -52);
setEffAlphaKey( spep_7,  ryusen2,  200);
setEffAlphaKey( spep_7 + 80,  ryusen2,  200);

-- ** エフェクト ** --
hidan2= entryEffectLife( spep_7 , SP_08r, 80, 0x100, -1, 0, 0, 0 );  --被弾(ef_008r)

setEffMoveKey( spep_7 , hidan2, 0, 0 , 0 );
setEffMoveKey( spep_7 + 80, hidan2, 0, 0 , 0 );
setEffScaleKey( spep_7 , hidan2, 1.0, 1.0 );
setEffScaleKey( spep_7 + 80, hidan2, 1.0, 1.0 );
setEffAlphaKey( spep_7 , hidan2, 255 );
setEffAlphaKey( spep_7 + 80, hidan2, 255 );
setEffRotateKey( spep_7 , hidan2, 0 );
setEffRotateKey( spep_7 + 80, hidan2, 0 );

--  ** 書き文字 **  --
ct_zudodo2 = entryEffectLife( spep_7 ,  10014, 66, 0x100, -1, 0, -62.6, 394.2 );

setEffShake( spep_7 ,  ct_zudodo2,  66,  25);
setEffMoveKey( spep_7 , ct_zudodo2, -62.6, 394.2 , 0 );
setEffMoveKey( spep_7 + 64, ct_zudodo2, -62.6, 394.2 , 0 );
setEffMoveKey( spep_7 + 66, ct_zudodo2, -62.9, 376.6 , 0 );
setEffScaleKey( spep_7 , ct_zudodo2, 2.01, 2.01 );
setEffScaleKey( spep_7 + 66, ct_zudodo2, 2.01, 2.01 );
setEffRotateKey( spep_7 , ct_zudodo2, -40.4 );
setEffRotateKey( spep_7 +66, ct_zudodo2, -40.4 );
setEffAlphaKey( spep_7 , ct_zudodo2, 255 );
setEffAlphaKey( spep_7 + 66, ct_zudodo2, 255 );

a = 3
--  ** 敵の動き **  --
setDisp( spep_7 , 1, 1 );
setDisp( spep_7 + 37 -a, 1, 0 );
changeAnime( spep_7 , 1, 104 );
changeAnime( spep_7 + 22 -a, 1, 108 );

setShakeChara( spep_7,  1,  58 -a,  30);
setMoveKey( spep_7 , 1, 533.2, 566.1 , 0 );
--setMoveKey( spep_7 + 2, 1, 499.5, 546.5 , 0 );
setMoveKey( spep_7 + 4 -a, 1, 477.9, 502.5 , 0 );
setMoveKey( spep_7 + 6 -a, 1, 436.1, 486.8 , 0 );
setMoveKey( spep_7 + 8 -a, 1, 418.5, 446.9 , 0 );
setMoveKey( spep_7 + 10 -a, 1, 384.8, 427.2 , 0 );
setMoveKey( spep_7 + 12 -a, 1, 351, 407.5 , 0 );
setMoveKey( spep_7 + 14 -a, 1, 329.5, 363.5 , 0 );
setMoveKey( spep_7 + 16 -a, 1, 287.6, 347.8 , 0 );
setMoveKey( spep_7 + 18 -a, 1, 270, 307.9 , 0 );
setMoveKey( spep_7 + 21 -a, 1, 236.3, 288.2 , 0 );
setMoveKey( spep_7 + 22 -a, 1, 218.6, 288.5 , 0 );
setMoveKey( spep_7 + 24 -a, 1, 197, 244.6 , 0 );
setMoveKey( spep_7 + 26 -a, 1, 155.1, 228.9 , 0 );
setMoveKey( spep_7 + 28 -a, 1, 137.6, 189 , 0 );
setMoveKey( spep_7 + 30 -a, 1, 103.9, 169.2 , 0 );
setMoveKey( spep_7 + 32 -a, 1, 70.1, 149.5 , 0 );
setMoveKey( spep_7 + 34 -a, 1, 48.5, 105.6 , 0 );
setMoveKey( spep_7 + 37 -a, 1, 6.7, 89.9 , 0 );

setScaleKey( spep_7 , 1, 0.95, 0.95 );
setScaleKey( spep_7 + 37 -a, 1, 0.95, 0.95 );

setRotateKey( spep_7 , 1, -24 );
setRotateKey( spep_7 + 37 -a, 1, -24 );


-- ** ** --
playSe( spep_7,  SE_07);
playSe( spep_7 + 10, 1023);

-- ** 背景 ** --
entryFadeBg( spep_7 , 0, 80, 0, 0, 0, 0, 255 );  --背景

-- ** ホワイトフェード ** --
entryFade( spep_7 + 70, 8, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

------------------------------------------------------
-- 爆発(240F)
------------------------------------------------------
spep_8 = spep_7 + 80;

bakuha = entryEffect( spep_8,  SP_09,  0,  -1,  0x80,  0,  0);  --爆発

setEffMoveKey( spep_8 , bakuha, 0, 0 , 0 );
setEffMoveKey( spep_8 + 190, bakuha, 0, 0 , 0 );
setEffScaleKey( spep_8 , bakuha, 1.0, 1.0 );
setEffScaleKey( spep_8 + 190, bakuha, 1.0, 1.0 );
setEffAlphaKey( spep_8 , bakuha, 255 );
setEffAlphaKey( spep_8 + 190, bakuha, 255 );
setEffRotateKey( spep_8 , bakuha, 0 );
setEffRotateKey( spep_8 + 190, bakuha, 0 );

-- ** 集中線 ** --
shuchusen8 = entryEffectLife( spep_8 ,  906, 190, 0x100, -1, -100, 0, 0 );  --集中線
setEffShake( spep_8 , shuchusen8, 190, 25 );

setEffMoveKey( spep_8 , shuchusen8, -100, 0 , 0 );
setEffMoveKey( spep_8 + 190, shuchusen8, -100, 0 , 0 );
setEffScaleKey( spep_8 , shuchusen8, 1.43, 1.43 );
setEffScaleKey( spep_8 + 190, shuchusen8, 1.43, 1.43 );
setEffRotateKey( spep_8 , shuchusen8, 0 );
setEffRotateKey( spep_8 + 190, shuchusen8, 0 );
setEffAlphaKey( spep_8 , shuchusen8, 255 );
setEffAlphaKey( spep_8 + 190, shuchusen8, 255 );

--  ** 音 ** --
playSe( spep_8,  1024);  --爆破

-- ** 背景 ** --
entryFadeBg( spep_8 , 0, 190, 0, 0, 0, 0, 255 );  --黒背景

-- ** ダメージ表示 ** --
dealDamage( spep_8 + 80 );
entryFade( spep_8 + 170, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_8 + 180 );


end


