-- 合体ザマス　絶対のいかずち　4017130

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
--SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--味方側
SP_01 = 153443;  --突進
SP_02 = 153444;  --蹴り　手前
SP_03 = 153445;  --蹴り　奥
SP_04 = 153446;  --ワープ１　一番上
SP_05 = 153447;  --ワープ２　ヒットef(上)
SP_06 = 153448;  --ワープ３　真ん中(上)
SP_07 = 153449;  --ワープ４　一番下
SP_08 = 153450;  --構え
SP_09 = 153451;  --雷発射
SP_10 = 153452;  --雷移動
SP_11 = 153453;  --爆発　手前
SP_12 = 153454;  --爆発　奥

--敵側
SP_02r = 153455;  --蹴り　手前
SP_03r = 153475;  --蹴り　手前
SP_06r = 153456;  --ワープ３

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
-- 突進(56F)
------------------------------------------------------
spep_0 = 0 ;
a = 3;

-- ** エフェクト等 ** --
tosshin = entryEffectLife( spep_0,  SP_01, 56, 0x100, -1, 0, 0, 0);  --突進(ef_001)
setEffMoveKey( spep_0 + 0,tosshin,  0,  0);
setEffMoveKey( spep_0 + 56,tosshin,  0,  0);
setEffScaleKey( spep_0 + 0, tosshin, 1.0, 1.0);
setEffScaleKey( spep_0 + 56, tosshin, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, tosshin, 0);
setEffRotateKey( spep_0 + 56, tosshin, 0);
setEffAlphaKey( spep_0 + 0, tosshin, 255);
setEffAlphaKey( spep_0 + 56, tosshin, 255);

-- ** 集中線 ** --
shuchusen_1 = entryEffectLife( spep_0 ,  906, 56, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 , shuchusen_1, 56, 25 );

setEffMoveKey( spep_0 , shuchusen_1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 56, shuchusen_1, 0, 0 , 0 );

setEffScaleKey( spep_0 , shuchusen_1, 1.4, 1.4 );
setEffScaleKey( spep_0 + 56, shuchusen_1, 1.4, 1.4 );

setEffRotateKey( spep_0 , shuchusen_1, 0 );
setEffRotateKey( spep_0 + 56, shuchusen_1, 0 );

setEffAlphaKey( spep_0 , shuchusen_1, 255 );
setEffAlphaKey( spep_0 + 56, shuchusen_1, 255 );

-- ** 書き文字エントリー ** --
ctzuo_1 = entryEffectLife( spep_0 + 0,  10012, 50, 0x100, -1, 0, 78.7, 260.5 );  --ズオッ
setEffShake( spep_0 + 6 , ctzuo_1, 36, 25 );

setEffMoveKey( spep_0 + 0, ctzuo_1, 78.7, 260.5 , 0 );
setEffMoveKey( spep_0 + 2, ctzuo_1, 105, 288.6 , 0 );
setEffMoveKey( spep_0 + 4, ctzuo_1, 117.9, 330.1 , 0 );
setEffMoveKey( spep_0 + 6, ctzuo_1, 153.7, 348.8 , 0 ); -- ここからシェイク
setEffMoveKey( spep_0 + 42, ctzuo_1, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 44, ctzuo_1, 145.5, 366.6 , 0 );
setEffMoveKey( spep_0 + 46, ctzuo_1, 180.5, 341.1 , 0 );
setEffMoveKey( spep_0 + 48, ctzuo_1, 160.8, 370.2 , 0 );
setEffMoveKey( spep_0 + 50, ctzuo_1, 168.5, 372 , 0 );

setEffScaleKey( spep_0 + 0, ctzuo_1, 0.34, 0.34 );
setEffScaleKey( spep_0 + 2, ctzuo_1, 1.13, 1.13 );
setEffScaleKey( spep_0 + 4, ctzuo_1, 1.94, 1.94 );
setEffScaleKey( spep_0 + 6, ctzuo_1, 2.73, 2.73 );
setEffScaleKey( spep_0 + 42, ctzuo_1, 2.73, 2.73 );
setEffScaleKey( spep_0 + 44, ctzuo_1, 3.68, 3.68 );
setEffScaleKey( spep_0 + 46, ctzuo_1, 4.67, 4.67 );
setEffScaleKey( spep_0 + 48, ctzuo_1, 5.63, 5.63 );
setEffScaleKey( spep_0 + 50, ctzuo_1, 6.62, 6.62 );

setEffAlphaKey( spep_0 + 0, ctzuo_1, 255 );
setEffAlphaKey( spep_0 + 42, ctzuo_1, 255 );
setEffAlphaKey( spep_0 + 44, ctzuo_1, 191 );
setEffAlphaKey( spep_0 + 46, ctzuo_1, 128 );
setEffAlphaKey( spep_0 + 48, ctzuo_1, 64 );
setEffAlphaKey( spep_0 + 50, ctzuo_1, 0 );

setEffRotateKey( spep_0 + 0, ctzuo_1, 27.2 );
setEffRotateKey( spep_0 + 50, ctzuo_1, 27.2 );

-- ** 黒背景 ** --
entryFadeBg( spep_0,  0,  56,  0,  0, 0, 0,  255);  --背景黒

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
SE1 = playSe( spep_0 + 2,  9);  --ダッシュ音

-- ** 次の準備 ** --
spep_1 = spep_0 + 56;

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える

stopSe( SP_dodge-14, SE1,  0);
playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
--entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
------------------------------------------------------
-- 蹴り(226F)
------------------------------------------------------

-- ** エフェクト等 ** --
keri_f = entryEffectLife( spep_1,  SP_02, 226, 0x100, -1, 0, 0, 0);  --蹴り　手前(ef_002)
setEffMoveKey( spep_1 + 0, keri_f,  0,  0);
setEffMoveKey( spep_1 + 226, keri_f,  0,  0);
setEffScaleKey( spep_1 + 0, keri_f, 1.0, 1.0);
setEffScaleKey( spep_1 + 226, keri_f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, keri_f, 0);
setEffRotateKey( spep_1 + 226, keri_f, 0);
setEffAlphaKey( spep_1 + 0, keri_f, 255);
setEffAlphaKey( spep_1 + 225, keri_f, 255);
setEffAlphaKey( spep_1 + 226, keri_f, 0);

keri_b = entryEffectLife( spep_1,  SP_03, 226, 0x80, -1, 0, 0, 0);  --蹴り　奥(ef_003)
setEffMoveKey( spep_1 + 0, keri_b,  0,  0);
setEffMoveKey( spep_1 + 226, keri_b,  0,  0);
setEffScaleKey( spep_1 + 0, keri_b, 1.0, 1.0);
setEffScaleKey( spep_1 + 226, keri_b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, keri_b, 0);
setEffRotateKey( spep_1 + 226, keri_b, 0);
setEffAlphaKey( spep_1 + 0, keri_b, 255);
setEffAlphaKey( spep_1 + 225, keri_b, 255);
setEffAlphaKey( spep_1 + 226, keri_b, 0);

-- ** 集中線 ** --
shuchusen_2 = entryEffectLife( spep_1 + 50 -a,  906, 122, 0x100, -1, 0, 0, 177.9 );  --集中線
setEffShake( spep_1 + 50 -a, shuchusen_2, 122, 25 );

setEffMoveKey( spep_1 + 50 -a, shuchusen_2, 0, 177.9 , 0 );
setEffMoveKey( spep_1 + 98 -a, shuchusen_2, 0, 177.9 , 0 );
setEffMoveKey( spep_1 + 100 -a, shuchusen_2, 0, -36.6 , 0 );
setEffMoveKey( spep_1 + 146 -a, shuchusen_2, 0, -36.6 , 0 );
setEffMoveKey( spep_1 + 148 -a, shuchusen_2, 0, -14.4 , 0 );
setEffMoveKey( spep_1 + 172 -a, shuchusen_2, 0, -14.4 , 0 );

setEffScaleKey( spep_1 + 50 -a, shuchusen_2, 1.04, 1.37 );
setEffScaleKey( spep_1 + 98 -a, shuchusen_2, 1.04, 1.37 );
setEffScaleKey( spep_1 + 100 -a, shuchusen_2, 1.21, 1.61 );
setEffScaleKey( spep_1 + 146 -a, shuchusen_2, 1.21, 1.61 );
setEffScaleKey( spep_1 + 148 -a, shuchusen_2, 1.21, 1.52 );
setEffScaleKey( spep_1 + 172 -a, shuchusen_2, 1.21, 1.52 );

setEffRotateKey( spep_1 + 50 -a, shuchusen_2, 180 );
setEffRotateKey( spep_1 + 172 -a, shuchusen_2, 180 );

setEffAlphaKey( spep_1 + 50 -a, shuchusen_2, 255 );
setEffAlphaKey( spep_1 + 98 -a, shuchusen_2, 255 );
setEffAlphaKey( spep_1 + 100 -a, shuchusen_2, 128 );
setEffAlphaKey( spep_1 + 146 -a, shuchusen_2, 128 );
setEffAlphaKey( spep_1 + 148 -a, shuchusen_2, 255 );
setEffAlphaKey( spep_1 + 164 -a, shuchusen_2, 255 );
setEffAlphaKey( spep_1 + 166 -a, shuchusen_2, 191 );
setEffAlphaKey( spep_1 + 168 -a, shuchusen_2, 128 );
setEffAlphaKey( spep_1 + 170 -a, shuchusen_2, 64 );
setEffAlphaKey( spep_1 + 172 -a, shuchusen_2, 0 );

-- ** 書き文字エントリー ** --
ctdon_1 = entryEffectLife( spep_1 + 0,  10019, 32, 0x100, -1, 0, 87.7, 342.3 );  --ドンッ
setEffMoveKey( spep_1 + 0, ctdon_1, 87.7, 342.3 , 0 );
setEffMoveKey( spep_1 + 2, ctdon_1, 82.2, 354.5 , 0 );
setEffMoveKey( spep_1 + 4, ctdon_1, 87.7, 342.2 , 0 );
setEffMoveKey( spep_1 + 6, ctdon_1, 80.1, 359.1 , 0 );
setEffMoveKey( spep_1 + 8, ctdon_1, 87.6, 342.3 , 0 );
setEffMoveKey( spep_1 + 10, ctdon_1, 77.1, 335.7 , 0 );
setEffMoveKey( spep_1 + 12, ctdon_1, 87.6, 342.4 , 0 );
setEffMoveKey( spep_1 + 14, ctdon_1, 81.9, 355.3 , 0 );
setEffMoveKey( spep_1 + 16, ctdon_1, 87.6, 342.4 , 0 );
setEffMoveKey( spep_1 + 18, ctdon_1, 78.1, 336.4 , 0 );
setEffMoveKey( spep_1 + 20, ctdon_1, 87.6, 342.4 , 0 );
setEffMoveKey( spep_1 + 22, ctdon_1, 87.6, 342.4 , 0 );
setEffMoveKey( spep_1 + 24, ctdon_1, 81.9, 355.3 , 0 );
setEffMoveKey( spep_1 + 26, ctdon_1, 87.6, 342.4 , 0 );
setEffMoveKey( spep_1 + 28, ctdon_1, 78.1, 336.4 , 0 );
setEffMoveKey( spep_1 + 30, ctdon_1, 87.6, 342.4 , 0 );
setEffMoveKey( spep_1 + 32, ctdon_1, 87.6, 342.4 , 0 );

setEffScaleKey( spep_1 + 0, ctdon_1, 1, 1 );
setEffScaleKey( spep_1 + 2, ctdon_1, 1.98, 1.98 );
setEffScaleKey( spep_1 + 4, ctdon_1, 2.96, 2.96 );
setEffScaleKey( spep_1 + 6, ctdon_1, 2.74, 2.74 );
setEffScaleKey( spep_1 + 8, ctdon_1, 2.53, 2.53 );
setEffScaleKey( spep_1 + 10, ctdon_1, 2.31, 2.31 );
setEffScaleKey( spep_1 + 12, ctdon_1, 2.09, 2.09 );
setEffScaleKey( spep_1 + 32, ctdon_1, 2.09, 2.09 );

setEffRotateKey( spep_1 + 0, ctdon_1, 23.9 );
setEffRotateKey( spep_1 + 32, ctdon_1, 23.9 );

setEffAlphaKey( spep_1 + 0, ctdon_1, 255 );
setEffAlphaKey( spep_1 + 22, ctdon_1, 255 );
setEffAlphaKey( spep_1 + 24, ctdon_1, 217 );
setEffAlphaKey( spep_1 + 26, ctdon_1, 179 );
setEffAlphaKey( spep_1 + 28, ctdon_1, 140 );
setEffAlphaKey( spep_1 + 30, ctdon_1, 102 );
setEffAlphaKey( spep_1 + 32, ctdon_1, 64 );

ctbaki_1 = entryEffectLife( spep_1 + 150 -a,  10020, 18, 0x100, -1, 0, 53, 322.3 );  --バキッ
setEffShake( spep_1 + 156 -a, ctbaki_1, 12, 20 );

setEffMoveKey( spep_1 + 150 -a, ctbaki_1, 53, 322.3 , 0 );
setEffMoveKey( spep_1 + 152 -a, ctbaki_1, 43.8, 345.1 , 0 );
setEffMoveKey( spep_1 + 154 -a, ctbaki_1, 53, 322.4 , 0 );
setEffMoveKey( spep_1 + 156 -a, ctbaki_1, 53.2, 322.2 , 0 );
setEffMoveKey( spep_1 + 168 -a, ctbaki_1, 53.2, 322.2 , 0 );

setEffScaleKey( spep_1 + 150 -a, ctbaki_1, 1.6, 1.6 );
setEffScaleKey( spep_1 + 152 -a, ctbaki_1, 2.88, 2.88 );
setEffScaleKey( spep_1 + 154 -a, ctbaki_1, 2.41, 2.41 );
setEffScaleKey( spep_1 + 156 -a, ctbaki_1, 1.94, 1.94 );
setEffScaleKey( spep_1 + 158 -a, ctbaki_1, 1.89, 1.89 );
setEffScaleKey( spep_1 + 160 -a, ctbaki_1, 1.84, 1.84 );
setEffScaleKey( spep_1 + 162 -a, ctbaki_1, 1.78, 1.78 );
setEffScaleKey( spep_1 + 164 -a, ctbaki_1, 1.73, 1.73 );
setEffScaleKey( spep_1 + 166 -a, ctbaki_1, 1.75, 1.75 );
setEffScaleKey( spep_1 + 168 -a, ctbaki_1, 1.76, 1.76 );

setEffRotateKey( spep_1 + 150 -a, ctbaki_1, 23 );
setEffRotateKey( spep_1 + 168 -a, ctbaki_1, 23 );

setEffAlphaKey( spep_1 + 150 -a, ctbaki_1, 255 );
setEffAlphaKey( spep_1 + 164 -a, ctbaki_1, 255 );
setEffAlphaKey( spep_1 + 166 -a, ctbaki_1, 134 );
setEffAlphaKey( spep_1 + 168 -a, ctbaki_1, 13 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 226, 1, 0 );
changeAnime( spep_1 + 0, 1, 107 );
changeAnime( spep_1 + 50 -a, 1, 105 );
changeAnime( spep_1 + 100 -a, 1, 108 );

setMoveKey( spep_1 + 0, 1, -30.1, 190 , 0 );
--setMoveKey( spep_1 + 2, 1, -23.9, 152.2 , 0 );
setMoveKey( spep_1 + 4 -a, 1, -16.4, 135.5 , 0 );
setMoveKey( spep_1 + 6 -a, 1, -19.6, 114 , 0 );
setMoveKey( spep_1 + 8 -a, 1, -13.5, 101.7 , 0 );
setMoveKey( spep_1 + 10 -a, 1, -18, 86.5 , 0 );
setMoveKey( spep_1 + 12 -a, 1, -13.7, 85.7 , 0 );
setMoveKey( spep_1 + 14 -a, 1, -17.3, 76.9 , 0 );
setMoveKey( spep_1 + 16 -a, 1, -9, 72.1 , 0 );
setMoveKey( spep_1 + 18 -a, 1, -8.6, 59.3 , 0 );
setMoveKey( spep_1 + 20 -a, 1, -4.3, 58.6 , 0 );
setMoveKey( spep_1 + 22 -a, 1, -6, 49.9 , 0 );
setMoveKey( spep_1 + 24 -a, 1, 0.3, 45.1 , 0 );
setMoveKey( spep_1 + 26 -a, 1, 0.6, 36.5 , 0 );
setMoveKey( spep_1 + 28 -a, 1, 4.9, 31.8 , 0 );
setMoveKey( spep_1 + 30 -a, 1, 3.1, 23.1 , 0 );
setMoveKey( spep_1 + 32 -a, 1, 9.4, 18.5 , 0 );
setMoveKey( spep_1 + 34 -a, 1, 9.6, 9.9 , 0 );
setMoveKey( spep_1 + 36 -a, 1, 13.9, 5.3 , 0 );
setMoveKey( spep_1 + 38 -a, 1, 14.1, -3.2 , 0 );
setMoveKey( spep_1 + 40 -a, 1, 18.3, -7.8 , 0 );
setMoveKey( spep_1 + 42 -a, 1, 100.7, -175.3 , 0 );
setMoveKey( spep_1 + 44 -a, 1, 182.8, -342 , 0 );
setMoveKey( spep_1 + 46 -a, 1, 264.6, -507.8 , 0 );
setMoveKey( spep_1 + 49 -a, 1, 346, -672.9 , 0 );
setMoveKey( spep_1 + 50 -a, 1, 38.3, 30.5 , 0 );
setMoveKey( spep_1 + 52 -a, 1, 38.1, 109.8 , 0 );
setMoveKey( spep_1 + 54 -a, 1, 37.9, 173.7 , 0 );
setMoveKey( spep_1 + 56 -a, 1, 37.7, 222.5 , 0 );
setMoveKey( spep_1 + 58 -a, 1, 37.4, 256.3 , 0 );
setMoveKey( spep_1 + 60 -a, 1, 35.3, 254 , 0 );
setMoveKey( spep_1 + 62 -a, 1, 33.3, 251.7 , 0 );
setMoveKey( spep_1 + 64 -a, 1, 31.2, 249.3 , 0 );
setMoveKey( spep_1 + 66 -a, 1, 29.2, 247 , 0 );
setMoveKey( spep_1 + 68 -a, 1, 27.3, 244.6 , 0 );
setMoveKey( spep_1 + 70 -a, 1, 25.4, 242.3 , 0 );
setMoveKey( spep_1 + 72 -a, 1, 24.8, 235.1 , 0 );
setMoveKey( spep_1 + 74 -a, 1, 24.3, 228 , 0 );
setMoveKey( spep_1 + 76 -a, 1, 23.7, 221 , 0 );
setMoveKey( spep_1 + 78 -a, 1, 23.2, 214.1 , 0 );
setMoveKey( spep_1 + 80 -a, 1, 22.6, 207.2 , 0 );
setMoveKey( spep_1 + 82 -a, 1, 22.1, 200.4 , 0 );
setMoveKey( spep_1 + 84 -a, 1, 21.3, 195.5 , 0 );
setMoveKey( spep_1 + 86 -a, 1, 20.5, 190.6 , 0 );
setMoveKey( spep_1 + 88 -a, 1, 19.7, 185.8 , 0 );
setMoveKey( spep_1 + 90 -a, 1, 18.9, 181 , 0 );
setMoveKey( spep_1 + 92 -a, 1, 18.8, 175.9 , 0 );
setMoveKey( spep_1 + 94 -a, 1, 18.6, 170.8 , 0 );
setMoveKey( spep_1 + 96 -a, 1, 18.5, 165.7 , 0 );
setMoveKey( spep_1 + 99 -a, 1, 18.4, 160.8 , 0 );
setMoveKey( spep_1 + 100 -a, 1, -20.5, -1346.8 , 0 );
setMoveKey( spep_1 + 102 -a, 1, -21, -948.1 , 0 );
setMoveKey( spep_1 + 104 -a, 1, -21.6, -647.7 , 0 );
setMoveKey( spep_1 + 106 -a, 1, -22.2, -443.6 , 0 );
setMoveKey( spep_1 + 108 -a, 1, -22.8, -333.8 , 0 );
setMoveKey( spep_1 + 110 -a, 1, -23.4, -323.8 , 0 );
setMoveKey( spep_1 + 112 -a, 1, -24, -309.3 , 0 );
setMoveKey( spep_1 + 114 -a, 1, -24.6, -290.3 , 0 );
setMoveKey( spep_1 + 116 -a, 1, -25.1, -267.1 , 0 );
setMoveKey( spep_1 + 118 -a, 1, -25.7, -239.6 , 0 );
setMoveKey( spep_1 + 120 -a, 1, -26.3, -208 , 0 );
setMoveKey( spep_1 + 122 -a, 1, -26.9, -172.4 , 0 );
setMoveKey( spep_1 + 124 -a, 1, -25, -98.3 , 0 );
setMoveKey( spep_1 + 126 -a, 1, -23, -40.2 , 0 );
setMoveKey( spep_1 + 128 -a, 1, -21.1, 2.4 , 0 );
setMoveKey( spep_1 + 130 -a, 1, -19.1, 30.2 , 0 );
setMoveKey( spep_1 + 132 -a, 1, -17.2, 43.7 , 0 );
setMoveKey( spep_1 + 134 -a, 1, -15.2, 44 , 0 );
setMoveKey( spep_1 + 136 -a, 1, -13.3, 44.2 , 0 );
setMoveKey( spep_1 + 138 -a, 1, -11.4, 44.3 , 0 );
setMoveKey( spep_1 + 140 -a, 1, -9.4, 44.2 , 0 );
setMoveKey( spep_1 + 142 -a, 1, -7.5, 43.9 , 0 );
setMoveKey( spep_1 + 144 -a, 1, -5.5, 43.5 , 0 );
setMoveKey( spep_1 + 146 -a, 1, -3.6, 43 , 0 );
setMoveKey( spep_1 + 147 -a, 1, -3.6, 43 , 0 );
setMoveKey( spep_1 + 148 -a, 1, 161.7, 55.3 , 0 );
setMoveKey( spep_1 + 150 -a, 1, 150.3, 69.1 , 0 );
setMoveKey( spep_1 + 152 -a, 1, 125.8, 66.9 , 0 );
setMoveKey( spep_1 + 154 -a, 1, 119.9, 71.1 , 0 );
setMoveKey( spep_1 + 156 -a, 1, 117.1, 58.5 , 0 );
setMoveKey( spep_1 + 158 -a, 1, 120.7, 65.2 , 0 );
setMoveKey( spep_1 + 160 -a, 1, 114.5, 59 , 0 );
setMoveKey( spep_1 + 162 -a, 1, 121, 59.3 , 0 );
setMoveKey( spep_1 + 164 -a, 1, 117.8, 49.9 , 0 );
setMoveKey( spep_1 + 166 -a, 1, 121, 53.4 , 0 );
setMoveKey( spep_1 + 168 -a, 1, 69.2, 47.2 , 0 );
setMoveKey( spep_1 + 170 -a, 1, 34.2, 50.1 , 0 );
setMoveKey( spep_1 + 172 -a, 1, -5.8, 43.3 , 0 );
setMoveKey( spep_1 + 174 -a, 1, -35, 49.3 , 0 );
setMoveKey( spep_1 + 176 -a, 1, -66.2, 42.6 , 0 );
setMoveKey( spep_1 + 178 -a, 1, -86.6, 48.6 , 0 );
setMoveKey( spep_1 + 180 -a, 1, -105.9, 48.2 , 0 );
setMoveKey( spep_1 + 182 -a, 1, -103.2, 47.8 , 0 );
setMoveKey( spep_1 + 184 -a, 1, -99.5, 47.5 , 0 );
setMoveKey( spep_1 + 186 -a, 1, -94.9, 47.1 , 0 );
setMoveKey( spep_1 + 188 -a, 1, -89.3, 46.7 , 0 );
setMoveKey( spep_1 + 190 -a, 1, -82.8, 46.4 , 0 );
setMoveKey( spep_1 + 192 -a, 1, -75.3, 46 , 0 );
setMoveKey( spep_1 + 194 -a, 1, -66.9, 45.6 , 0 );
setMoveKey( spep_1 + 196 -a, 1, -57.6, 45.3 , 0 );
setMoveKey( spep_1 + 198 -a, 1, -47.4, 44.9 , 0 );
setMoveKey( spep_1 + 200 -a, 1, -23.4, 44.9 , 0 );
setMoveKey( spep_1 + 202 -a, 1, 0.6, 44.9 , 0 );
setMoveKey( spep_1 + 204 -a, 1, 24.6, 44.9 , 0 );
setMoveKey( spep_1 + 206 -a, 1, 48.6, 44.9 , 0 );
setMoveKey( spep_1 + 208 -a, 1, 72.6, 44.9 , 0 );
setMoveKey( spep_1 + 210 -a, 1, 76.2, 44.9 , 0 );
setMoveKey( spep_1 + 212 -a, 1, 87, 44.9 , 0 );
setMoveKey( spep_1 + 214 -a, 1, 105, 44.9 , 0 );
setMoveKey( spep_1 + 216 -a, 1, 130.2, 44.9 , 0 );
setMoveKey( spep_1 + 218 -a, 1, 162.6, 44.9 , 0 );
setMoveKey( spep_1 + 220 -a, 1, 202.2, 44.9 , 0 );
setMoveKey( spep_1 + 222 -a, 1, 249, 44.9 , 0 );
setMoveKey( spep_1 + 224 -a, 1, 303, 44.9 , 0 );
setMoveKey( spep_1 + 226 -a, 1, 364.2, 44.9 , 0 );
setMoveKey( spep_1 + 226, 1, 432.6, 44.9 , 0 );

setScaleKey( spep_1 + 0 -a, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 2 -a, 1, 0.73, 0.73 );
setScaleKey( spep_1 + 4 -a, 1, 0.68, 0.68 );
setScaleKey( spep_1 + 6 -a, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 8 -a, 1, 0.55, 0.55 );
setScaleKey( spep_1 + 10 -a, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 12 -a, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 18 -a, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 20 -a, 1, 0.49, 0.49 );
setScaleKey( spep_1 + 26 -a, 1, 0.49, 0.49 );
setScaleKey( spep_1 + 28 -a, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 36 -a, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 38 -a, 1, 0.51, 0.51 );
setScaleKey( spep_1 + 40 -a, 1, 0.51, 0.51 );
setScaleKey( spep_1 + 42 -a, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 44 -a, 1, 1.63, 1.63 );
setScaleKey( spep_1 + 46 -a, 1, 2.19, 2.19 );
setScaleKey( spep_1 + 49 -a, 1, 2.74, 2.74 );
setScaleKey( spep_1 + 50 -a, 1, 2.04, 2.04 );
setScaleKey( spep_1 + 52 -a, 1, 1.79, 1.79 );
setScaleKey( spep_1 + 54 -a, 1, 1.58, 1.58 );
setScaleKey( spep_1 + 56 -a, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 58 -a, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 60 -a, 1, 1.24, 1.24 );
setScaleKey( spep_1 + 62 -a, 1, 1.19, 1.19 );
setScaleKey( spep_1 + 64 -a, 1, 1.13, 1.13 );
setScaleKey( spep_1 + 66 -a, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 68 -a, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 70 -a, 1, 0.96, 0.96 );
setScaleKey( spep_1 + 72 -a, 1, 0.89, 0.89 );
setScaleKey( spep_1 + 74 -a, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 76 -a, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 78 -a, 1, 0.69, 0.69 );
setScaleKey( spep_1 + 80 -a, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 82 -a, 1, 0.55, 0.55 );
setScaleKey( spep_1 + 84 -a, 1, 0.52, 0.52 );
setScaleKey( spep_1 + 86 -a, 1, 0.49, 0.49 );
setScaleKey( spep_1 + 88 -a, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 90 -a, 1, 0.44, 0.44 );
setScaleKey( spep_1 + 92 -a, 1, 0.41, 0.41 );
setScaleKey( spep_1 + 94 -a, 1, 0.38, 0.38 );
setScaleKey( spep_1 + 96 -a, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 99 -a, 1, 0.32, 0.32 );
setScaleKey( spep_1 + 100 -a, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 102 -a, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 104 -a, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 106 -a, 1, 1.4, 1.4 );
setScaleKey( spep_1 + 108 -a, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 110 -a, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 112 -a, 1, 1.37, 1.37 );
setScaleKey( spep_1 + 114 -a, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 116 -a, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 118 -a, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 120 -a, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 122 -a, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 124 -a, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 126 -a, 1, 1.28, 1.28 );
setScaleKey( spep_1 + 128 -a, 1, 1.26, 1.26 );
setScaleKey( spep_1 + 130 -a, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 132 -a, 1, 1.23, 1.23 );
setScaleKey( spep_1 + 134 -a, 1, 1.21, 1.21 );
setScaleKey( spep_1 + 136 -a, 1, 1.19, 1.19 );
setScaleKey( spep_1 + 138 -a, 1, 1.17, 1.17 );
setScaleKey( spep_1 + 140 -a, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 142 -a, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 144 -a, 1, 1.12, 1.12 );
setScaleKey( spep_1 + 146 -a, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 147 -a, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 148 -a, 1, 1.65, 1.65 );
setScaleKey( spep_1 + 150 -a, 1, 1.54, 1.54 );
setScaleKey( spep_1 + 152 -a, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 154 -a, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 156 -a, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 158 -a, 1, 1.27, 1.27 );
setScaleKey( spep_1 + 160 -a, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 162 -a, 1, 1.23, 1.23 );
setScaleKey( spep_1 + 164 -a, 1, 1.2, 1.2 );
setScaleKey( spep_1 + 166 -a, 1, 1.18, 1.18 );
setScaleKey( spep_1 + 168 -a, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 170 -a, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 172 -a, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 174 -a, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 178 -a, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 180 -a, 1, 1.13, 1.13 );
setScaleKey( spep_1 + 184 -a, 1, 1.13, 1.13 );
setScaleKey( spep_1 + 186 -a, 1, 1.12, 1.12 );
setScaleKey( spep_1 + 188 -a, 1, 1.12, 1.12 );
setScaleKey( spep_1 + 190 -a, 1, 1.11, 1.11 );
setScaleKey( spep_1 + 194 -a, 1, 1.11, 1.11 );
setScaleKey( spep_1 + 196 -a, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 226, 1, 1.1, 1.1 );

setRotateKey( spep_1 + 0, 1, -16.7 );
setRotateKey( spep_1 + 4 -a, 1, -16.7 );
setRotateKey( spep_1 + 6 -a, 1, -16.6 );
setRotateKey( spep_1 + 24 -a, 1, -16.6 );
setRotateKey( spep_1 + 26 -a, 1, -16.5 );
setRotateKey( spep_1 + 42 -a, 1, -16.5 );
setRotateKey( spep_1 + 44 -a, 1, -16.6 );
setRotateKey( spep_1 + 46 -a, 1, -16.6 );
setRotateKey( spep_1 + 49 -a, 1, -16.7 );
setRotateKey( spep_1 + 50 -a, 1, 0 );
setRotateKey( spep_1 + 99 -a, 1, 0 );
setRotateKey( spep_1 + 100 -a, 1, -90 );
setRotateKey( spep_1 + 146 -a, 1, -90 );
setRotateKey( spep_1 + 147 -a, 1, -90 );
setRotateKey( spep_1 + 148 -a, 1, -11 );
setRotateKey( spep_1 + 226, 1, -11 );

-- ** ホワイトフェード ** --
entryFade( spep_1 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_1 + 148 -a, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 230 );  -- white fade

-- ** 音 ** --
playSe( spep_1 + 2, 1002 );  --初撃
playSe( spep_1 + 56, 7);  --飛ばされる
--playSe( spep_1 + 62, 44);  --出てくる
playSe( 180,  44 );
playSe( spep_1 + 150 -a, 1010);  --蹴り
SE2 = playSe( spep_1 + 204, 17);  --ワープ
stopSe( spep_1 + 214,  SE2, 20);

-- ** 次の準備 ** --
spep_2 = spep_1 + 226;

------------------------------------------------------
-- ワープ(256F)
------------------------------------------------------

-- ** エフェクト等 ** --
warp4 = entryEffectLife( spep_2 + 0, SP_07, 256, 0x80, -1, 0, 0, 0 );  --ワープ４(ef_007)
setEffMoveKey( spep_2 + 0, warp4, 0, 0 , 0 );
setEffMoveKey( spep_2 + 256, warp4, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, warp4, 1.0, 1.0 );
setEffScaleKey( spep_2 + 256, warp4, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, warp4, 0 );
setEffRotateKey( spep_2 + 256, warp4, 0 );
setEffAlphaKey( spep_2 + 0, warp4, 255 );
setEffAlphaKey( spep_2 + 256, warp4, 255 );

warp3_f = entryEffectLife( spep_2 + 0, SP_06, 116 -a, 0x100, -1, 0, 0, 0 );  --ワープ３　手前(ef_006)
setEffMoveKey( spep_2 + 0, warp3_f, 0, 0 , 0 );
setEffMoveKey( spep_2 +  116 -a, warp3_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, warp3_f, 1.0, 1.0 );
setEffScaleKey( spep_2 +  116 -a, warp3_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, warp3_f, 0 );
setEffRotateKey( spep_2 +  116 -a, warp3_f, 0 );
setEffAlphaKey( spep_2 +  0, warp3_f, 255 );
setEffAlphaKey( spep_2 + 115 -a, warp3_f, 255 );
setEffAlphaKey( spep_2 + 116 -a, warp3_f, 0 );

warp3_b = entryEffectLife( spep_2 + 0, SP_06, 256, 0x80, -1, 0, 0, 0 );  --ワープ３　奥(ef_006)
setEffMoveKey( spep_2 + 0, warp3_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 256, warp3_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, warp3_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 256, warp3_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, warp3_b, 0 );
setEffRotateKey( spep_2 + 256, warp3_b, 0 );
setEffAlphaKey( spep_2 + 0, warp3_b, 0 );
setEffAlphaKey( spep_2 + 115 -a, warp3_b, 0 );
setEffAlphaKey( spep_2 + 116 -a, warp3_b, 255 );
setEffAlphaKey( spep_2 + 256, warp3_b, 255 );

warp2_f = entryEffectLife( spep_2 + 0, SP_05, 176 -a, 0x100, -1, 0, 0, 0 );  --ワープ２　手前(ef_005)
setEffMoveKey( spep_2 + 0, warp2_f, 0, 0 , 0 );
setEffMoveKey( spep_2 +  176 -a, warp2_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, warp2_f, 1.0, 1.0 );
setEffScaleKey( spep_2 +  176 -a, warp2_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, warp2_f, 0 );
setEffRotateKey( spep_2 +  176 -a, warp2_f, 0 );
setEffAlphaKey( spep_2 +  0, warp2_f, 255 );
setEffAlphaKey( spep_2 + 175 -a, warp2_f, 255 );
setEffAlphaKey( spep_2 + 176 -a, warp2_f, 0 );

warp2_b = entryEffectLife( spep_2 + 0, SP_05, 256, 0x80, -1, 0, 0, 0 );  --ワープ２　奥(ef_005)
setEffMoveKey( spep_2 + 0, warp2_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 256, warp2_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, warp2_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 256, warp2_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, warp2_b, 0 );
setEffRotateKey( spep_2 + 256, warp2_b, 0 );
setEffAlphaKey( spep_2 + 0, warp2_b, 0 );
setEffAlphaKey( spep_2 + 175 -a, warp2_b, 0 );
setEffAlphaKey( spep_2 + 176 -a, warp2_b, 255 );
setEffAlphaKey( spep_2 + 256, warp2_b, 255 );

warp1_f = entryEffectLife( spep_2 + 0, SP_04, 204 -a, 0x100, -1, 0, 0, 0 );  --ワープ１　手前(ef_005)
setEffMoveKey( spep_2 + 0, warp1_f, 0, 0 , 0 );
setEffMoveKey( spep_2 +  204 -a, warp1_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, warp1_f, 1.0, 1.0 );
setEffScaleKey( spep_2 +  204 -a, warp1_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, warp1_f, 0 );
setEffRotateKey( spep_2 +  204 -a, warp1_f, 0 );
setEffAlphaKey( spep_2 +  0, warp1_f, 255 );
setEffAlphaKey( spep_2 + 203 -a, warp1_f, 255 );
setEffAlphaKey( spep_2 + 204 -a, warp1_f, 0 );

warp1_b = entryEffectLife( spep_2 + 0, SP_04, 256, 0x80, -1, 0, 0, 0 );  --ワープ１　奥(ef_005)
setEffMoveKey( spep_2 + 0, warp1_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 256, warp1_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, warp1_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 256, warp1_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, warp1_b, 0 );
setEffRotateKey( spep_2 + 256, warp1_b, 0 );
setEffAlphaKey( spep_2 + 0, warp1_b, 0 );
setEffAlphaKey( spep_2 + 203 -a, warp1_b, 0 );
setEffAlphaKey( spep_2 + 204 -a, warp1_b, 255 );
setEffAlphaKey( spep_2 + 256, warp1_b, 255 );

-- ** 集中線 ** --
shuchusen_3 = entryEffectLife( spep_2 + 40 -a,  906, 12, 0x100, -1, 0, 0, 43.5 );  --集中線
setEffShake( spep_2 + 40 -a, shuchusen_3, 12, 20 );

setEffMoveKey( spep_2 + 40 -a, shuchusen_3, 0, 43.5 , 0 );
setEffMoveKey( spep_2 + 52 -a, shuchusen_3, 0, 43.5 , 0 );

setEffScaleKey( spep_2 + 40 -a, shuchusen_3, 1.04, 1.37 );
setEffScaleKey( spep_2 + 52 -a, shuchusen_3, 1.04, 1.37 );

setEffRotateKey( spep_2 + 40 -a, shuchusen_3, 180 );
setEffRotateKey( spep_2 + 52 -a, shuchusen_3, 180 );

setEffAlphaKey( spep_2 + 40 -a, shuchusen_3, 255 );
setEffAlphaKey( spep_2 + 48 -a, shuchusen_3, 255 );
setEffAlphaKey( spep_2 + 50 -a, shuchusen_3, 128 );
setEffAlphaKey( spep_2 + 52 -a, shuchusen_3, 64 );

shuchusen_4 = entryEffectLife( spep_2 + 116 -a,  906, 12, 0x100, -1, 0, 0, 43.5 );  --集中線
setEffShake( spep_2 + 116 -a, shuchusen_4, 12, 20 );

setEffMoveKey( spep_2 + 116 -a, shuchusen_4, 0, 43.5 , 0 );
setEffMoveKey( spep_2 + 128 -a, shuchusen_4, 0, 43.5 , 0 );

setEffScaleKey( spep_2 + 116 -a, shuchusen_4, 1.04, 1.37 );
setEffScaleKey( spep_2 + 128 -a, shuchusen_4, 1.04, 1.37 );

setEffRotateKey( spep_2 + 116 -a, shuchusen_4, 180 );
setEffRotateKey( spep_2 + 128 -a, shuchusen_4, 180 );

setEffAlphaKey( spep_2 + 116 -a, shuchusen_4, 255 );
setEffAlphaKey( spep_2 + 124 -a, shuchusen_4, 255 );
setEffAlphaKey( spep_2 + 126 -a, shuchusen_4, 128 );
setEffAlphaKey( spep_2 + 128 -a, shuchusen_4, 64 );

shuchusen_5 = entryEffectLife( spep_2 + 204 -a,  906, 54, 0x100, -1, 0, 0, 43.5 );  --集中線
setEffShake( spep_2 + 204 -a, shuchusen_5, 54, 20 );

setEffMoveKey( spep_2 + 204 -a, shuchusen_5, 0, 43.5 , 0 );
setEffMoveKey( spep_2 + 258 -a, shuchusen_5, 0, 43.5 , 0 );

setEffScaleKey( spep_2 + 204 -a, shuchusen_5, 1.04, 1.37 );
setEffScaleKey( spep_2 + 258 -a, shuchusen_5, 1.04, 1.37 );

setEffRotateKey( spep_2 + 204 -a, shuchusen_5, 180 );
setEffRotateKey( spep_2 + 258 -a, shuchusen_5, 180 );

setEffAlphaKey( spep_2 + 204 -a, shuchusen_5, 255 );
setEffAlphaKey( spep_2 + 258 -a, shuchusen_5, 255 );

-- ** 書き文字エントリー ** --
ctga_1 = entryEffectLife( spep_2 + 40 -a,  10005, 14, 0x100, -1, 0, 65.8, 326 );  --ガッ
setEffShake( spep_2 + 40 -a, ctga_1, 14, 25 );

setEffMoveKey( spep_2 + 40 -a, ctga_1, 65.8, 326 , 0 );
setEffMoveKey( spep_2 + 54 -a, ctga_1, 65.8, 326 , 0 );

setEffScaleKey( spep_2 + 40 -a, ctga_1, 0.62, 0.62 );
setEffScaleKey( spep_2 + 42 -a, ctga_1, 1.01, 1.01 );
setEffScaleKey( spep_2 + 54 -a, ctga_1, 1.01, 1.01 );

setEffRotateKey( spep_2 + 40 -a, ctga_1, 9.2 );
setEffRotateKey( spep_2 + 42 -a, ctga_1, 9.2 );
setEffRotateKey( spep_2 + 44 -a, ctga_1, 4.9 );
setEffRotateKey( spep_2 + 46 -a, ctga_1, 14.4 );
setEffRotateKey( spep_2 + 48 -a, ctga_1, 6.5 );
setEffRotateKey( spep_2 + 50 -a, ctga_1, 12.2 );
setEffRotateKey( spep_2 + 54 -a, ctga_1, 12.2 );

setEffAlphaKey( spep_2 + 40 -a, ctga_1, 255 );
setEffAlphaKey( spep_2 + 50 -a, ctga_1, 255 );
setEffAlphaKey( spep_2 + 52 -a, ctga_1, 128 );
setEffAlphaKey( spep_2 + 54 -a, ctga_1, 0 );

ctbaki_2 = entryEffectLife( spep_2 + 116 -a,  10020, 16, 0x100, -1, 0, -28, 170.6 );  --バキッ
setEffShake( spep_2 + 116 -a, ctbaki_2, 16, 15 );

setEffMoveKey( spep_2 + 116 -a, ctbaki_2, -28, 170.6 , 0 );
setEffMoveKey( spep_2 + 118 -a, ctbaki_2, -38.5, 186.4 , 0 );
setEffMoveKey( spep_2 + 120 -a, ctbaki_2, -28, 170.6 , 0 );
setEffMoveKey( spep_2 + 122 -a, ctbaki_2, -28, 170.5 , 0 );
setEffMoveKey( spep_2 + 124 -a, ctbaki_2, -34.7, 180.8 , 0 );
setEffMoveKey( spep_2 + 126 -a, ctbaki_2, -27.9, 170.5 , 0 );
setEffMoveKey( spep_2 + 128 -a, ctbaki_2, -27.9, 170.5 , 0 );
setEffMoveKey( spep_2 + 130 -a, ctbaki_2, -34.2, 180 , 0 );
setEffMoveKey( spep_2 + 132 -a, ctbaki_2, -27.9, 170.5 , 0 );

setEffScaleKey( spep_2 + 116 -a, ctbaki_2, 1.24, 1.24 );
setEffScaleKey( spep_2 + 118 -a, ctbaki_2, 2.23, 2.23 );
setEffScaleKey( spep_2 + 120 -a, ctbaki_2, 1.87, 1.87 );
setEffScaleKey( spep_2 + 122 -a, ctbaki_2, 1.5, 1.5 );
setEffScaleKey( spep_2 + 124 -a, ctbaki_2, 1.45, 1.45 );
setEffScaleKey( spep_2 + 126 -a, ctbaki_2, 1.39, 1.39 );
setEffScaleKey( spep_2 + 128 -a, ctbaki_2, 1.34, 1.34 );
setEffScaleKey( spep_2 + 130 -a, ctbaki_2, 1.35, 1.35 );
setEffScaleKey( spep_2 + 132 -a, ctbaki_2, 1.36, 1.36 );

setEffRotateKey( spep_2 + 116 -a, ctbaki_2, 11.5 );
setEffRotateKey( spep_2 + 132 -a, ctbaki_2, 11.5 );

setEffAlphaKey( spep_2 + 116 -a, ctbaki_2, 255 );
setEffAlphaKey( spep_2 + 128 -a, ctbaki_2, 255 );
setEffAlphaKey( spep_2 + 130 -a, ctbaki_2, 134 );
setEffAlphaKey( spep_2 + 132 -a, ctbaki_2, 13 );

ctbago_1 = entryEffectLife( spep_2 + 204 -a,  10021, 18, 0x100, -1, 0, 163.7, 212.7 );  --バゴォッ
setEffShake( spep_2 + 204 -a, ctbago_1, 18, 15 );

setEffMoveKey( spep_2 + 204 -a, ctbago_1, 163.7, 212.7 , 0 );
setEffMoveKey( spep_2 + 222 -a, ctbago_1, 163.8, 212.9 , 0 );

setEffScaleKey( spep_2 + 204 -a, ctbago_1, 1.18, 1.18 );
setEffScaleKey( spep_2 + 206 -a, ctbago_1, 3.25, 3.25 );
setEffScaleKey( spep_2 + 208 -a, ctbago_1, 2.43, 2.43 );
setEffScaleKey( spep_2 + 210 -a, ctbago_1, 2.36, 2.36 );
setEffScaleKey( spep_2 + 212 -a, ctbago_1, 2.3, 2.3 );
setEffScaleKey( spep_2 + 214 -a, ctbago_1, 2.23, 2.23 );
setEffScaleKey( spep_2 + 216 -a, ctbago_1, 2.16, 2.16 );
setEffScaleKey( spep_2 + 218 -a, ctbago_1, 2, 2 );
setEffScaleKey( spep_2 + 220 -a, ctbago_1, 1.83, 1.83 );
setEffScaleKey( spep_2 + 222 -a, ctbago_1, 1.67, 1.67 );

setEffRotateKey( spep_2 + 204 -a, ctbago_1, 28.8 );
setEffRotateKey( spep_2 + 222 -a, ctbago_1, 28.8 );

setEffAlphaKey( spep_2 + 204 -a, ctbago_1, 255 );
setEffAlphaKey( spep_2 + 216 -a, ctbago_1, 255 );
setEffAlphaKey( spep_2 + 218 -a, ctbago_1, 170 );
setEffAlphaKey( spep_2 + 220 -a, ctbago_1, 85 );
setEffAlphaKey( spep_2 + 222 -a, ctbago_1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 8 -a, 1, 1 );
setDisp( spep_2 + 85 -a, 1, 0 );
changeAnime( spep_2 + 8 -a, 1, 8 );
changeAnime( spep_2 + 40 -a, 1, 106 );

setMoveKey( spep_2 + 8 -a, 1, 170.4, 242.8 , 0 );
setMoveKey( spep_2 + 10 -a, 1, 175.2, 247.2 , 0 );
setMoveKey( spep_2 + 12 -a, 1, 179.3, 251 , 0 );
setMoveKey( spep_2 + 14 -a, 1, 182.7, 254.2 , 0 );
setMoveKey( spep_2 + 16 -a, 1, 185.3, 256.7 , 0 );
setMoveKey( spep_2 + 18 -a, 1, 187, 258.6 , 0 );
setMoveKey( spep_2 + 20 -a, 1, 188, 259.7 , 0 );
setMoveKey( spep_2 + 22 -a, 1, 188.1, 260.2 , 0 );
setMoveKey( spep_2 + 24 -a, 1, 187.3, 259.9 , 0 );
setMoveKey( spep_2 + 26 -a, 1, 185.7, 258.9 , 0 );
setMoveKey( spep_2 + 28 -a, 1, 153.6, 227.1 , 0 );
setMoveKey( spep_2 + 30 -a, 1, 124.4, 197.9 , 0 );
setMoveKey( spep_2 + 32 -a, 1, 99.2, 172.3 , 0 );
setMoveKey( spep_2 + 34 -a, 1, 78.8, 151.2 , 0 );
setMoveKey( spep_2 + 36 -a, 1, 64.3, 135.3 , 0 );
setMoveKey( spep_2 + 38 -a, 1, 56.6, 125.7 , 0 );
setMoveKey( spep_2 + 39 -a, 1, 56.6, 125.7 , 0 );
setMoveKey( spep_2 + 40 -a, 1, 78.6, 132.9 , 0 );
setMoveKey( spep_2 + 42 -a, 1, 82.3, 106.5 , 0 );
setMoveKey( spep_2 + 44 -a, 1, 90.9, 112.9 , 0 );
setMoveKey( spep_2 + 46 -a, 1, 85.3, 100.9 , 0 );
setMoveKey( spep_2 + 48 -a, 1, 97.3, 96 , 0 );
setMoveKey( spep_2 + 50 -a, 1, 95.1, 79.2 , 0 );
setMoveKey( spep_2 + 52 -a, 1, 97.8, 82.3 , 0 );
setMoveKey( spep_2 + 54 -a, 1, 96.8, 66.5 , 0 );
setMoveKey( spep_2 + 56 -a, 1, 236.8, 26.9 , 0 );
setMoveKey( spep_2 + 58 -a, 1, 321.6, -5 , 0 );
setMoveKey( spep_2 + 60 -a, 1, 362, -22.2 , 0 );
setMoveKey( spep_2 + 62 -a, 1, 365.5, -27.1 , 0 );
setMoveKey( spep_2 + 64 -a, 1, 339.4, -22.2 , 0 );
setMoveKey( spep_2 + 66 -a, 1, 291.4, -10.1 , 0 );
setMoveKey( spep_2 + 68 -a, 1, 294.1, -12.4 , 0 );
setMoveKey( spep_2 + 70 -a, 1, 297.5, -14.8 , 0 );
setMoveKey( spep_2 + 72 -a, 1, 301.6, -17.5 , 0 );
setMoveKey( spep_2 + 74 -a, 1, 306.5, -20.3 , 0 );
setMoveKey( spep_2 + 76 -a, 1, 312.1, -23.3 , 0 );
setMoveKey( spep_2 + 78 -a, 1, 318.4, -26.5 , 0 );
setMoveKey( spep_2 + 80 -a, 1, 325.5, -29.9 , 0 );
setMoveKey( spep_2 + 82 -a, 1, 333.4, -33.5 , 0 );
setMoveKey( spep_2 + 84 -a, 1, 342.1, -37.3 , 0 );
setMoveKey( spep_2 + 85 -a, 1, 342.1, -37.3 , 0 );

setScaleKey( spep_2 + 8 -a, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 10 -a, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 12 -a, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 14 -a, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 18 -a, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 20 -a, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 22 -a, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 24 -a, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 26 -a, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 28 -a, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 30 -a, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 32 -a, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 34 -a, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 36 -a, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 38 -a, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 39 -a, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 40 -a, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 42 -a, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 44 -a, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 46 -a, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 48 -a, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 50 -a, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 52 -a, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 54 -a, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 56 -a, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 58 -a, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 60 -a, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 62 -a, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 64 -a, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 66 -a, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 80 -a, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 82 -a, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 85 -a, 1, 0.31, 0.31 );

setRotateKey( spep_2 + 8 -a, 1, -53 );
setRotateKey( spep_2 + 39 -a, 1, -53 );
setRotateKey( spep_2 + 40 -a, 1, -14.8 );
setRotateKey( spep_2 + 42 -a, 1, -13.2 );
setRotateKey( spep_2 + 44 -a, 1, -11.6 );
setRotateKey( spep_2 + 46 -a, 1, -10 );
setRotateKey( spep_2 + 48 -a, 1, -8.5 );
setRotateKey( spep_2 + 50 -a, 1, -6.9 );
setRotateKey( spep_2 + 52 -a, 1, -5.3 );
setRotateKey( spep_2 + 54 -a, 1, -3.7 );
setRotateKey( spep_2 + 56 -a, 1, 5.1 );
setRotateKey( spep_2 + 58 -a, 1, 12.5 );
setRotateKey( spep_2 + 60 -a, 1, 18.6 );
setRotateKey( spep_2 + 62 -a, 1, 23.3 );
setRotateKey( spep_2 + 64 -a, 1, 26.7 );
setRotateKey( spep_2 + 66 -a, 1, 28.7 );
setRotateKey( spep_2 + 85 -a, 1, 28.7 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 94 -a, 1, 1 );
changeAnime( spep_2 + 94 -a, 1, 106 );

setMoveKey( spep_2 + 94 -a, 1, -251.7, 206.9 , 0 );
setMoveKey( spep_2 + 96 -a, 1, -250.1, 203.9 , 0 );
setMoveKey( spep_2 + 98 -a, 1, -247.6, 200.2 , 0 );
setMoveKey( spep_2 + 100 -a, 1, -244.2, 195.8 , 0 );
setMoveKey( spep_2 + 102 -a, 1, -239.8, 190.6 , 0 );
setMoveKey( spep_2 + 104 -a, 1, -234.4, 184.7 , 0 );
setMoveKey( spep_2 + 106 -a, 1, -193, 156.1 , 0 );
setMoveKey( spep_2 + 108 -a, 1, -151.3, 127.2 , 0 );
setMoveKey( spep_2 + 110 -a, 1, -109.2, 98.2 , 0 );
setMoveKey( spep_2 + 112 -a, 1, -66.8, 68.8 , 0 );
setMoveKey( spep_2 + 114 -a, 1, -24, 39.3 , 0 );
setMoveKey( spep_2 + 115 -a, 1, -24, 39.3 , 0 );

setScaleKey( spep_2 + 94 -a, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 96 -a, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 108 -a, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 110 -a, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 115 -a, 1, 0.33, 0.33 );

setRotateKey( spep_2 + 94 -a, 1, 50.4 );
setRotateKey( spep_2 + 96 -a, 1, 51.4 );
setRotateKey( spep_2 + 98 -a, 1, 52.8 );
setRotateKey( spep_2 + 100 -a, 1, 54.4 );
setRotateKey( spep_2 + 102 -a, 1, 56.4 );
setRotateKey( spep_2 + 104 -a, 1, 58.8 );
setRotateKey( spep_2 + 115 -a, 1, 58.8 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 153 -a, 1, 0 );
changeAnime( spep_2 + 116 -a, 1, 7 );

setMoveKey( spep_2 + 116 -a, 1, -51.5, 4.3 , 0 );
setMoveKey( spep_2 + 118 -a, 1, -50.4, 17.5 , 0 );
setMoveKey( spep_2 + 120 -a, 1, -62.2, 11.6 , 0 );
setMoveKey( spep_2 + 122 -a, 1, -54.7, 12 , 0 );
setMoveKey( spep_2 + 124 -a, 1, -60.1, 2.9 , 0 );
setMoveKey( spep_2 + 126 -a, 1, -59.1, 6.5 , 0 );
setMoveKey( spep_2 + 128 -a, 1, -64.5, -5.9 , 0 );
setMoveKey( spep_2 + 130 -a, 1, -63.5, 0.9 , 0 );
setMoveKey( spep_2 + 132 -a, 1, -105.6, -34.3 , 0 );
setMoveKey( spep_2 + 134 -a, 1, -148.1, -69.8 , 0 );
setMoveKey( spep_2 + 136 -a, 1, -190.9, -105.5 , 0 );
setMoveKey( spep_2 + 138 -a, 1, -234, -141.5 , 0 );
setMoveKey( spep_2 + 140 -a, 1, -275.5, -182.8 , 0 );
setMoveKey( spep_2 + 142 -a, 1, -276.9, -191.8 , 0 );
setMoveKey( spep_2 + 144 -a, 1, -278.3, -200.5 , 0 );
setMoveKey( spep_2 + 146 -a, 1, -279.7, -209 , 0 );
setMoveKey( spep_2 + 148 -a, 1, -281.1, -217.3 , 0 );
setMoveKey( spep_2 + 150 -a, 1, -282.5, -225.2 , 0 );
setMoveKey( spep_2 + 152 -a, 1, -284, -233 , 0 );
setMoveKey( spep_2 + 153 -a, 1, -284, -233 , 0 );

setScaleKey( spep_2 + 116 -a, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 118 -a, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 122 -a, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 124 -a, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 126 -a, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 128 -a, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 130 -a, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 132 -a, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 134 -a, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 136 -a, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 138 -a, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 140 -a, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 142 -a, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 146 -a, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 148 -a, 1, 0.26, 0.26 );

setRotateKey( spep_2 + 116 -a, 1, 0.2 );
setRotateKey( spep_2 + 118 -a, 1, -0.3 );
setRotateKey( spep_2 + 120 -a, 1, -0.9 );
setRotateKey( spep_2 + 122 -a, 1, -1.4 );
setRotateKey( spep_2 + 124 -a, 1, -1.9 );
setRotateKey( spep_2 + 126 -a, 1, -2.4 );
setRotateKey( spep_2 + 128 -a, 1, -3 );
setRotateKey( spep_2 + 130 -a, 1, -3.5 );
setRotateKey( spep_2 + 132 -a, 1, -5.4 );
setRotateKey( spep_2 + 134 -a, 1, -7.3 );
setRotateKey( spep_2 + 136 -a, 1, -9.1 );
setRotateKey( spep_2 + 138 -a, 1, -11 );
setRotateKey( spep_2 + 140 -a, 1, -12.9 );
setRotateKey( spep_2 + 144 -a, 1, -12.9 );
setRotateKey( spep_2 + 146 -a, 1, -12.8 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 176 -a, 1, 1 );
setDisp( spep_2 + 235 -a, 1, 0 );
changeAnime( spep_2 + 176 -a, 1, 108 );
changeAnime( spep_2 + 204 -a, 1, 7 );

setMoveKey( spep_2 + 176 -a, 1, -65.6, 343.2 , 0 );
setMoveKey( spep_2 + 177 -a, 1, -65.6, 343.2 , 0 );
setMoveKey( spep_2 + 178 -a, 1, -65.3, 339 , 0 );
setMoveKey( spep_2 + 179 -a, 1, -65.3, 339 , 0 );
setMoveKey( spep_2 + 180 -a, 1, -66.3, 352.6 , 0 );
setMoveKey( spep_2 + 181 -a, 1, -66.3, 352.6 , 0 );
setMoveKey( spep_2 + 182 -a, 1, -67.3, 366.3 , 0 );
setMoveKey( spep_2 + 183 -a, 1, -67.3, 366.3 , 0 );
setMoveKey( spep_2 + 184 -a, 1, -68.1, 380.1 , 0 );
setMoveKey( spep_2 + 185 -a, 1, -68.1, 380.1 , 0 );
setMoveKey( spep_2 + 186 -a, 1, -68.8, 393.8 , 0 );
setMoveKey( spep_2 + 187 -a, 1, -68.8, 393.8 , 0 );
setMoveKey( spep_2 + 188 -a, 1, -69.3, 407.6 , 0 );
setMoveKey( spep_2 + 189 -a, 1, -69.3, 407.6 , 0 );
setMoveKey( spep_2 + 190 -a, 1, -61.5, 335.6 , 0 );
setMoveKey( spep_2 + 191 -a, 1, -61.5, 335.6 , 0 );
setMoveKey( spep_2 + 192 -a, 1, -54.3, 269.2 , 0 );
setMoveKey( spep_2 + 194 -a, 1, -47.6, 208.7 , 0 );
setMoveKey( spep_2 + 196 -a, 1, -41.7, 154.7 , 0 );
setMoveKey( spep_2 + 198 -a, 1, -36.4, 107.6 , 0 );
setMoveKey( spep_2 + 200 -a, 1, -32, 68.2 , 0 );
setMoveKey( spep_2 + 202 -a, 1, -28.4, 37 , 0 );
setMoveKey( spep_2 + 203 -a, 1, -28.4, 37 , 0 );
setMoveKey( spep_2 + 204 -a, 1, -43.3, 13.7 , 0 );
setMoveKey( spep_2 + 206 -a, 1, -44.6, 40 , 0 );
setMoveKey( spep_2 + 208 -a, 1, -62, 47.7 , 0 );
setMoveKey( spep_2 + 210 -a, 1, -53.9, 62.5 , 0 );
setMoveKey( spep_2 + 212 -a, 1, -61.9, 65.1 , 0 );
setMoveKey( spep_2 + 214 -a, 1, -61.1, 99.1 , 0 );
setMoveKey( spep_2 + 216 -a, 1, -72.9, 117.7 , 0 );
setMoveKey( spep_2 + 218 -a, 1, -65.3, 140 , 0 );
setMoveKey( spep_2 + 220 -a, 1, -70.2, 150.2 , 0 );
setMoveKey( spep_2 + 222 -a, 1, -68.4, 170.5 , 0 );
setMoveKey( spep_2 + 224 -a, 1, -93.6, 289.4 , 0 );
setMoveKey( spep_2 + 226 -a, 1, -111.3, 419 , 0 );
setMoveKey( spep_2 + 228 -a, 1, -131, 530.5 , 0 );
setMoveKey( spep_2 + 230 -a, 1, -149.4, 633.3 , 0 );
setMoveKey( spep_2 + 232 -a, 1, -165, 726.8 , 0 );
setMoveKey( spep_2 + 234 -a, 1, -179.4, 811.5 , 0 );
setMoveKey( spep_2 + 235 -a, 1, -179.4, 811.5 , 0 );

setScaleKey( spep_2 + 176 -a, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 180 -a, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 182 -a, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 184 -a, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 186 -a, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 188 -a, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 190 -a, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 192 -a, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 194 -a, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 196 -a, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 198 -a, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 200 -a, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 202 -a, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 203 -a, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 204 -a, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 206 -a, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 208 -a, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 210 -a, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 212 -a, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 214 -a, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 216 -a, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 218 -a, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 220 -a, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 222 -a, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 224 -a, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 226 -a, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 228 -a, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 230 -a, 1, 3.17, 3.17 );
setScaleKey( spep_2 + 232 -a, 1, 3.53, 3.53 );
setScaleKey( spep_2 + 234 -a, 1, 3.85, 3.85 );
setScaleKey( spep_2 + 235 -a, 1, 3.85, 3.85 );

setRotateKey( spep_2 + 176 -a, 1, 89.2 );
setRotateKey( spep_2 + 203 -a, 1, 89.2 );
setRotateKey( spep_2 + 204 -a, 1, 98.2 );
setRotateKey( spep_2 + 206 -a, 1, 99.2 );
setRotateKey( spep_2 + 208 -a, 1, 100.3 );
setRotateKey( spep_2 + 210 -a, 1, 101.3 );
setRotateKey( spep_2 + 212 -a, 1, 102.3 );
setRotateKey( spep_2 + 214 -a, 1, 103.4 );
setRotateKey( spep_2 + 216 -a, 1, 104.4 );
setRotateKey( spep_2 + 218 -a, 1, 105.5 );
setRotateKey( spep_2 + 220 -a, 1, 106.5 );
setRotateKey( spep_2 + 222 -a, 1, 107.6 );
setRotateKey( spep_2 + 224 -a, 1, 110 );
setRotateKey( spep_2 + 226 -a, 1, 112.5 );
setRotateKey( spep_2 + 228 -a, 1, 115 );
setRotateKey( spep_2 + 230 -a, 1, 117.5 );
setRotateKey( spep_2 + 232 -a, 1, 120.1 );
setRotateKey( spep_2 + 234 -a, 1, 122.8 );
setRotateKey( spep_2 + 235 -a, 1, 122.8 );

-- ** ホワイトフェード ** --
entryFade( spep_2 + 40 -a, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 150 );
entryFade( spep_2 + 116 -a, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 150 );
entryFade( spep_2 + 204 -a, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 150 );

-- ** 黒背景 ** --
entryFadeBg(  spep_2,  0,  256,  0,  0, 0, 0,  255);  --黒背景

-- ** 音 ** --
playSe(  spep_2 + 40,  1001);
--playSe(  spep_2 + 66,  4);
playSe(  spep_2 + 116,  1000);
--playSe(  spep_2 + 180,  4);
playSe(  spep_2 + 204,  1002);

playSe( 288,  44);
playSe( 344, 17);
stopSe( 354,  17,  0);
setSeVolume( 344,  17,  40);
playSe( 375,  44);
playSe( 420,  17);
stopSe( 430,  17,  0);
setSeVolume( 420,  17,  40);
playSe( 457,  44);

-- ** 次の準備 ** --
spep_3 = spep_2 + 256;

------------------------------------------------------
-- 構え(158F)
------------------------------------------------------

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_3 + 0, SP_08, 158, 0x100, -1, 0, 0, 0 );  --構え(ef_008)
setEffMoveKey( spep_3 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_3 + 158, kamae, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_3 + 158, kamae, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kamae, 0 );
setEffRotateKey( spep_3 + 158, kamae, 0 );
setEffAlphaKey( spep_3 + 0, kamae, 255 );
setEffAlphaKey( spep_3 + 158, kamae, 255 );

-- ** 集中線 ** --
shuchusen_6 = entryEffectLife( spep_3 + 0,  906, 148, 0x100, -1, 0, 0, -14.4 );  --集中線
setEffShake( spep_0 + 0, shuchusen_6, 148, 25 );

setEffMoveKey( spep_3 + 0, shuchusen_6, 0, -14.4 , 0 );
setEffMoveKey( spep_3 + 142, shuchusen_6, 0, -14.4 , 0 );
setEffMoveKey( spep_3 + 144, shuchusen_6, 0, -14.4 , 0 );
setEffMoveKey( spep_3 + 146, shuchusen_6, 0, -14.4 , 0 );
setEffMoveKey( spep_3 + 148, shuchusen_6, 0, -14.4 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen_6, 1.21, 1.52 );
setEffScaleKey( spep_3 + 142, shuchusen_6, 1.21, 1.52 );
setEffScaleKey( spep_3 + 144, shuchusen_6, 1.17, 1.52 );
setEffScaleKey( spep_3 + 146, shuchusen_6, 1.12, 1.52 );
setEffScaleKey( spep_3 + 148, shuchusen_6, 1.07, 1.52 );

setEffRotateKey( spep_3 + 0, shuchusen_6, 0 );
setEffRotateKey( spep_3 + 148, shuchusen_6, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen_6, 191 );
setEffAlphaKey( spep_3 + 142, shuchusen_6, 191 );
setEffAlphaKey( spep_3 + 144, shuchusen_6, 213 );
setEffAlphaKey( spep_3 + 146, shuchusen_6, 234 );
setEffAlphaKey( spep_3 + 148, shuchusen_6, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_3 + 28, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_3 + 28, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_3 + 44,  190006, 68, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_3 + 44, ctgogo, 68, 10 );

setEffMoveKey( spep_3 + 44, ctgogo, -9.9, 515.5 , 0 );
setEffMoveKey( spep_3 + 112, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_3 + 44, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_3 + 104, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_3 + 106, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_3 + 108, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_3 + 110, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_3 + 112, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_3 + 44, ctgogo, 0 );
setEffRotateKey( spep_3 + 112, ctgogo, 0 );

setEffAlphaKey( spep_3 + 44, ctgogo, 255 );
setEffAlphaKey( spep_3 + 112, ctgogo, 255 );

-- ** 音 ** --
playSe( spep_3,  8);  --上昇
playSe( spep_3 + 44 , SE_04 );  --ゴゴゴ
playSe( spep_3 + 158 - 16,  13);  --アップ

-- ** ホワイトフェード ** --
entryFade( spep_3 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);
entryFade( spep_3 + 28 -a, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);
entryFade( spep_3 + 150, 8, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);

-- ** 黒背景 ** --
entryFadeBg(  spep_3,  0,  158,  0,  0,  0,  0,  255);  --黒背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 158;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen_7 = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen_7, 90, 20 );

setEffMoveKey( spep_4 + 0, shuchusen_7, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen_7, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen_7, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen_7, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen_7, 0 );
setEffRotateKey( spep_4 + 90, shuchusen_7, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen_7, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen_7, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_4 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_5 = spep_4 + 94;

------------------------------------------------------
-- 雷発射(86F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_5 + 0, SP_09, 86, 0x100, -1, 0, 0, 0 );  --発射(ef_009)
setEffMoveKey( spep_5 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_5 + 86, hassha, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_5 + 86, hassha, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hassha, 0 );
setEffRotateKey( spep_5 + 86, hassha, 0 );
setEffAlphaKey( spep_5 + 0, hassha, 255 );
setEffAlphaKey( spep_5 + 85, hassha, 255 );
setEffAlphaKey( spep_5 + 86, hassha, 0 );

-- ** 集中線 ** --
shuchusen_8 = entryEffectLife( spep_5 + 0,  906, 18, 0x100, -1, 0, 0, 0 );  --集中線
setEffMoveKey( spep_5 + 0, shuchusen_8, 0, 0 , 0 );
setEffMoveKey( spep_5 + 18, shuchusen_8, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen_8, 1.1, 1.25 );
setEffScaleKey( spep_5 + 18, shuchusen_8, 1.1, 1.25 );

setEffRotateKey( spep_5 + 0, shuchusen_8, 0 );
setEffRotateKey( spep_5 + 18, shuchusen_8, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen_8, 255 );
setEffAlphaKey( spep_5 + 8, shuchusen_8, 255 );
setEffAlphaKey( spep_5 + 10, shuchusen_8, 204 );
setEffAlphaKey( spep_5 + 12, shuchusen_8, 153 );
setEffAlphaKey( spep_5 + 14, shuchusen_8, 102 );
setEffAlphaKey( spep_5 + 16, shuchusen_8, 51 );
setEffAlphaKey( spep_5 + 18, shuchusen_8, 0 );

-- ** 黒背景 ** --
entryFadeBg(  spep_5 + 0,  0,  86,  0,  0,  0,  0,  255);  --背景黒

-- ** ホワイトフェード ** --
entryFade( spep_5 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255);
entryFade( spep_5 + 48 -a, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255);

-- ** 音 ** --
playSe(  spep_5 + 0,  9);
playSe(  spep_5 + 50,  1049);

-- ** 次の準備 ** --
spep_6 = spep_5 + 86 ;

------------------------------------------------------
-- 雷移動(48F)
------------------------------------------------------

-- ** エフェクト等 ** --
idou = entryEffectLife( spep_6 + 0, SP_10, 48, 0x100, -1, 0, 0, 0 );  --移動(ef_010)
setEffMoveKey( spep_6 + 0, idou, 0, 0 , 0 );
setEffMoveKey( spep_6 + 48, idou, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, idou, 1.0, 1.0 );
setEffScaleKey( spep_6 + 48, idou, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, idou, 0 );
setEffRotateKey( spep_6 + 48, idou, 0 );
setEffAlphaKey( spep_6 + 0, idou, 255 );
setEffAlphaKey( spep_6 + 47, idou, 255 );
setEffAlphaKey( spep_6 + 48, idou, 0 );

-- ** 黒背景 ** --
entryFadeBg(  spep_6 + 0,  0,  48,  0,  0,  0,  0,  255);  --黒背景

-- ** 音 ** --
playSe(  spep_6,  64);
setSeVolume( spep_6,  64,  70);
playSe(  spep_6+2,  65);
setSeVolume( spep_6+2,  65,  120);

-- ** 次の準備 ** --
spep_7 = spep_6 + 48;

------------------------------------------------------
-- 爆発(196F)
------------------------------------------------------

-- ** エフェクト等 ** --
bakuhatsu_f = entryEffect( spep_7 + 0, SP_11, 0x100, -1, 0, 0, 0 );  --爆発　手前(ef_011)
setEffMoveKey( spep_7 + 0, bakuhatsu_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 196, bakuhatsu_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, bakuhatsu_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 196, bakuhatsu_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, bakuhatsu_f, 0 );
setEffRotateKey( spep_7 + 196, bakuhatsu_f, 0 );
setEffAlphaKey( spep_7 + 0, bakuhatsu_f, 255 );
setEffAlphaKey( spep_7 + 196, bakuhatsu_f, 255 );

bakuhatsu_b = entryEffect( spep_7 + 0, SP_12, 0x80, -1, 0, 0, 0 );  --爆発　奥(ef_012)
setEffMoveKey( spep_7 + 0, bakuhatsu_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 196, bakuhatsu_b, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, bakuhatsu_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 196, bakuhatsu_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, bakuhatsu_b, 0 );
setEffRotateKey( spep_7 + 196, bakuhatsu_b, 0 );
setEffAlphaKey( spep_7 + 0, bakuhatsu_b, 255 );
setEffAlphaKey( spep_7 + 196, bakuhatsu_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 + 44 -a, 1, 0 );
changeAnime( spep_7 + 0, 1, 107 );

setMoveKey( spep_7 + 0, 1, -152, 221.5 , 0 );
--setMoveKey( spep_7 + 2, 1, -130.2, 179.8 , 0 );
setMoveKey( spep_7 + 4 -a, 1, -107.1, 135 , 0 );
setMoveKey( spep_7 + 6 -a, 1, -82.7, 87.2 , 0 );
setMoveKey( spep_7 + 8 -a, 1, -56.9, 36.2 , 0 );
setMoveKey( spep_7 + 10 -a, 1, -29.8, -17.8 , 0 );
setMoveKey( spep_7 + 12 -a, 1, -1.5, -74.9 , 0 );
setMoveKey( spep_7 + 14 -a, 1, 4.1, -86.3 , 0 );
setMoveKey( spep_7 + 16 -a, 1, 9.6, -97.7 , 0 );
setMoveKey( spep_7 + 18 -a, 1, 15.2, -109.3 , 0 );
setMoveKey( spep_7 + 20 -a, 1, 20.9, -120.9 , 0 );
setMoveKey( spep_7 + 22 -a, 1, 26.6, -132.7 , 0 );
setMoveKey( spep_7 + 24 -a, 1, 32.3, -144.6 , 0 );
setMoveKey( spep_7 + 26 -a, 1, 38.1, -156.5 , 0 );
setMoveKey( spep_7 + 28 -a, 1, 44, -168.6 , 0 );
setMoveKey( spep_7 + 30 -a, 1, 49.8, -180.8 , 0 );
setMoveKey( spep_7 + 32 -a, 1, 55.8, -193 , 0 );
setMoveKey( spep_7 + 34 -a, 1, 61.7, -205.4 , 0 );
setMoveKey( spep_7 + 36 -a, 1, 67.7, -217.9 , 0 );
setMoveKey( spep_7 + 38 -a, 1, 73.8, -230.5 , 0 );
setMoveKey( spep_7 + 44 -a, 1, 73.8, -230.5 , 0 );

setScaleKey( spep_7 + 0, 1, 0.26, 0.26 );
--setScaleKey( spep_7 + 2, 1, 0.32, 0.32 );
setScaleKey( spep_7 + 4 -a, 1, 0.38, 0.38 );
setScaleKey( spep_7 + 6 -a, 1, 0.45, 0.45 );
setScaleKey( spep_7 + 8 -a, 1, 0.52, 0.52 );
setScaleKey( spep_7 + 10 -a, 1, 0.59, 0.59 );
setScaleKey( spep_7 + 12 -a, 1, 0.67, 0.67 );
setScaleKey( spep_7 + 14 -a, 1, 0.69, 0.69 );
setScaleKey( spep_7 + 16 -a, 1, 0.7, 0.7 );
setScaleKey( spep_7 + 18 -a, 1, 0.72, 0.72 );
setScaleKey( spep_7 + 20 -a, 1, 0.73, 0.73 );
setScaleKey( spep_7 + 22 -a, 1, 0.75, 0.75 );
setScaleKey( spep_7 + 24 -a, 1, 0.77, 0.77 );
setScaleKey( spep_7 + 26 -a, 1, 0.79, 0.79 );
setScaleKey( spep_7 + 28 -a, 1, 0.8, 0.8 );
setScaleKey( spep_7 + 30 -a, 1, 0.82, 0.82 );
setScaleKey( spep_7 + 32 -a, 1, 0.84, 0.84 );
setScaleKey( spep_7 + 34 -a, 1, 0.85, 0.85 );
setScaleKey( spep_7 + 36 -a, 1, 0.87, 0.87 );
setScaleKey( spep_7 + 38 -a, 1, 0.89, 0.89 );
setScaleKey( spep_7 + 44 -a, 1, 0.89, 0.89 );

setRotateKey( spep_7 + 0, 1, 0 );
setRotateKey( spep_7 + 44 -a, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg(  spep_7,  0,  196,  0,  0,  0,  0,  255);   --背景黒

-- ** 音 ** --
playSe(  spep_7,  1026);
playSe(  spep_7+2,  1038);
setSeVolume(  spep_7+2,  1038,  120);
playSe(  spep_7+42,  1049);
playSe(  spep_7+44,  1024);
setSeVolume(  spep_7+44,  1024,  70);

-- ** ホワイトフェード ** --
entryFade( spep_7 + 42 -a, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 180);

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 50);
entryFade( spep_7 + 186, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_7 + 196 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 突進(56F)
------------------------------------------------------
spep_0 = 0 ;
a = 3;

-- ** エフェクト等 ** --
tosshin = entryEffectLife( spep_0,  SP_01, 56, 0x100, -1, 0, 0, 0);  --突進(ef_001)
setEffMoveKey( spep_0 + 0,tosshin,  0,  0);
setEffMoveKey( spep_0 + 56,tosshin,  0,  0);
setEffScaleKey( spep_0 + 0, tosshin, -1.0, 1.0);
setEffScaleKey( spep_0 + 56, tosshin, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, tosshin, 0);
setEffRotateKey( spep_0 + 56, tosshin, 0);
setEffAlphaKey( spep_0 + 0, tosshin, 255);
setEffAlphaKey( spep_0 + 56, tosshin, 255);

-- ** 集中線 ** --
shuchusen_1 = entryEffectLife( spep_0 ,  906, 56, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 , shuchusen_1, 56, 25 );

setEffMoveKey( spep_0 , shuchusen_1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 56, shuchusen_1, 0, 0 , 0 );

setEffScaleKey( spep_0 , shuchusen_1, 1.4, 1.4 );
setEffScaleKey( spep_0 + 56, shuchusen_1, 1.4, 1.4 );

setEffRotateKey( spep_0 , shuchusen_1, 0 );
setEffRotateKey( spep_0 + 56, shuchusen_1, 0 );

setEffAlphaKey( spep_0 , shuchusen_1, 255 );
setEffAlphaKey( spep_0 + 56, shuchusen_1, 255 );

-- ** 書き文字エントリー ** --
ctzuo_1 = entryEffectLife( spep_0 + 0,  10012, 50, 0x100, -1, 0, 78.7, 260.5 );  --ズオッ
setEffShake( spep_0 + 6 , ctzuo_1, 36, 25 );

setEffMoveKey( spep_0 + 0, ctzuo_1, 78.7, 260.5 , 0 );
setEffMoveKey( spep_0 + 2, ctzuo_1, 105, 288.6 , 0 );
setEffMoveKey( spep_0 + 4, ctzuo_1, 117.9, 330.1 , 0 );
setEffMoveKey( spep_0 + 6, ctzuo_1, 153.7, 348.8 , 0 ); -- ここからシェイク
setEffMoveKey( spep_0 + 42, ctzuo_1, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 44, ctzuo_1, 145.5, 366.6 , 0 );
setEffMoveKey( spep_0 + 46, ctzuo_1, 180.5, 341.1 , 0 );
setEffMoveKey( spep_0 + 48, ctzuo_1, 160.8, 370.2 , 0 );
setEffMoveKey( spep_0 + 50, ctzuo_1, 168.5, 372 , 0 );

setEffScaleKey( spep_0 + 0, ctzuo_1, 0.34, 0.34 );
setEffScaleKey( spep_0 + 2, ctzuo_1, 1.13, 1.13 );
setEffScaleKey( spep_0 + 4, ctzuo_1, 1.94, 1.94 );
setEffScaleKey( spep_0 + 6, ctzuo_1, 2.73, 2.73 );
setEffScaleKey( spep_0 + 42, ctzuo_1, 2.73, 2.73 );
setEffScaleKey( spep_0 + 44, ctzuo_1, 3.68, 3.68 );
setEffScaleKey( spep_0 + 46, ctzuo_1, 4.67, 4.67 );
setEffScaleKey( spep_0 + 48, ctzuo_1, 5.63, 5.63 );
setEffScaleKey( spep_0 + 50, ctzuo_1, 6.62, 6.62 );

setEffAlphaKey( spep_0 + 0, ctzuo_1, 255 );
setEffAlphaKey( spep_0 + 42, ctzuo_1, 255 );
setEffAlphaKey( spep_0 + 44, ctzuo_1, 191 );
setEffAlphaKey( spep_0 + 46, ctzuo_1, 128 );
setEffAlphaKey( spep_0 + 48, ctzuo_1, 64 );
setEffAlphaKey( spep_0 + 50, ctzuo_1, 0 );

setEffRotateKey( spep_0 + 0, ctzuo_1, 27.2 );
setEffRotateKey( spep_0 + 50, ctzuo_1, 27.2 );

-- ** 黒背景 ** --
entryFadeBg( spep_0,  0,  56,  0,  0, 0, 0,  255);  --背景黒

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
SE1 = playSe( spep_0 + 2,  9);  --ダッシュ音

-- ** 次の準備 ** --
spep_1 = spep_0 + 56;

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える

stopSe( SP_dodge-14, SE1,  0);
playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
--entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
------------------------------------------------------
-- 蹴り(226F)
------------------------------------------------------

-- ** エフェクト等 ** --
keri_f = entryEffectLife( spep_1,  SP_02r, 226, 0x100, -1, 0, 0, 0);  --蹴り　手前(ef_002)
setEffMoveKey( spep_1 + 0, keri_f,  0,  0);
setEffMoveKey( spep_1 + 226, keri_f,  0,  0);
setEffScaleKey( spep_1 + 0, keri_f, 1.0, 1.0);
setEffScaleKey( spep_1 + 226, keri_f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, keri_f, 0);
setEffRotateKey( spep_1 + 226, keri_f, 0);
setEffAlphaKey( spep_1 + 0, keri_f, 255);
setEffAlphaKey( spep_1 + 225, keri_f, 255);
setEffAlphaKey( spep_1 + 226, keri_f, 0);

keri_b = entryEffectLife( spep_1,  SP_03r, 226, 0x80, -1, 0, 0, 0);  --蹴り　奥(ef_003)
setEffMoveKey( spep_1 + 0, keri_b,  0,  0);
setEffMoveKey( spep_1 + 226, keri_b,  0,  0);
setEffScaleKey( spep_1 + 0, keri_b, 1.0, 1.0);
setEffScaleKey( spep_1 + 226, keri_b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, keri_b, 0);
setEffRotateKey( spep_1 + 226, keri_b, 0);
setEffAlphaKey( spep_1 + 0, keri_b, 255);
setEffAlphaKey( spep_1 + 225, keri_b, 255);
setEffAlphaKey( spep_1 + 226, keri_b, 0);

-- ** 集中線 ** --
shuchusen_2 = entryEffectLife( spep_1 + 50 -a,  906, 122, 0x100, -1, 0, 0, 177.9 );  --集中線
setEffShake( spep_1 + 50 -a, shuchusen_2, 122, 25 );

setEffMoveKey( spep_1 + 50 -a, shuchusen_2, 0, 177.9 , 0 );
setEffMoveKey( spep_1 + 98 -a, shuchusen_2, 0, 177.9 , 0 );
setEffMoveKey( spep_1 + 100 -a, shuchusen_2, 0, -36.6 , 0 );
setEffMoveKey( spep_1 + 146 -a, shuchusen_2, 0, -36.6 , 0 );
setEffMoveKey( spep_1 + 148 -a, shuchusen_2, 0, -14.4 , 0 );
setEffMoveKey( spep_1 + 172 -a, shuchusen_2, 0, -14.4 , 0 );

setEffScaleKey( spep_1 + 50 -a, shuchusen_2, 1.04, 1.37 );
setEffScaleKey( spep_1 + 98 -a, shuchusen_2, 1.04, 1.37 );
setEffScaleKey( spep_1 + 100 -a, shuchusen_2, 1.21, 1.61 );
setEffScaleKey( spep_1 + 146 -a, shuchusen_2, 1.21, 1.61 );
setEffScaleKey( spep_1 + 148 -a, shuchusen_2, 1.21, 1.52 );
setEffScaleKey( spep_1 + 172 -a, shuchusen_2, 1.21, 1.52 );

setEffRotateKey( spep_1 + 50 -a, shuchusen_2, 180 );
setEffRotateKey( spep_1 + 172 -a, shuchusen_2, 180 );

setEffAlphaKey( spep_1 + 50 -a, shuchusen_2, 255 );
setEffAlphaKey( spep_1 + 98 -a, shuchusen_2, 255 );
setEffAlphaKey( spep_1 + 100 -a, shuchusen_2, 128 );
setEffAlphaKey( spep_1 + 146 -a, shuchusen_2, 128 );
setEffAlphaKey( spep_1 + 148 -a, shuchusen_2, 255 );
setEffAlphaKey( spep_1 + 164 -a, shuchusen_2, 255 );
setEffAlphaKey( spep_1 + 166 -a, shuchusen_2, 191 );
setEffAlphaKey( spep_1 + 168 -a, shuchusen_2, 128 );
setEffAlphaKey( spep_1 + 170 -a, shuchusen_2, 64 );
setEffAlphaKey( spep_1 + 172 -a, shuchusen_2, 0 );

-- ** 書き文字エントリー ** --
ctdon_1 = entryEffectLife( spep_1 + 0,  10019, 32, 0x100, -1, 0, 87.7, 342.3 );  --ドンッ
setEffMoveKey( spep_1 + 0, ctdon_1, 87.7, 342.3 , 0 );
setEffMoveKey( spep_1 + 2, ctdon_1, 82.2, 354.5 , 0 );
setEffMoveKey( spep_1 + 4, ctdon_1, 87.7, 342.2 , 0 );
setEffMoveKey( spep_1 + 6, ctdon_1, 80.1, 359.1 , 0 );
setEffMoveKey( spep_1 + 8, ctdon_1, 87.6, 342.3 , 0 );
setEffMoveKey( spep_1 + 10, ctdon_1, 77.1, 335.7 , 0 );
setEffMoveKey( spep_1 + 12, ctdon_1, 87.6, 342.4 , 0 );
setEffMoveKey( spep_1 + 14, ctdon_1, 81.9, 355.3 , 0 );
setEffMoveKey( spep_1 + 16, ctdon_1, 87.6, 342.4 , 0 );
setEffMoveKey( spep_1 + 18, ctdon_1, 78.1, 336.4 , 0 );
setEffMoveKey( spep_1 + 20, ctdon_1, 87.6, 342.4 , 0 );
setEffMoveKey( spep_1 + 22, ctdon_1, 87.6, 342.4 , 0 );
setEffMoveKey( spep_1 + 24, ctdon_1, 81.9, 355.3 , 0 );
setEffMoveKey( spep_1 + 26, ctdon_1, 87.6, 342.4 , 0 );
setEffMoveKey( spep_1 + 28, ctdon_1, 78.1, 336.4 , 0 );
setEffMoveKey( spep_1 + 30, ctdon_1, 87.6, 342.4 , 0 );
setEffMoveKey( spep_1 + 32, ctdon_1, 87.6, 342.4 , 0 );

setEffScaleKey( spep_1 + 0, ctdon_1, 1, 1 );
setEffScaleKey( spep_1 + 2, ctdon_1, 1.98, 1.98 );
setEffScaleKey( spep_1 + 4, ctdon_1, 2.96, 2.96 );
setEffScaleKey( spep_1 + 6, ctdon_1, 2.74, 2.74 );
setEffScaleKey( spep_1 + 8, ctdon_1, 2.53, 2.53 );
setEffScaleKey( spep_1 + 10, ctdon_1, 2.31, 2.31 );
setEffScaleKey( spep_1 + 12, ctdon_1, 2.09, 2.09 );
setEffScaleKey( spep_1 + 32, ctdon_1, 2.09, 2.09 );

setEffRotateKey( spep_1 + 0, ctdon_1, 23.9 );
setEffRotateKey( spep_1 + 32, ctdon_1, 23.9 );

setEffAlphaKey( spep_1 + 0, ctdon_1, 255 );
setEffAlphaKey( spep_1 + 22, ctdon_1, 255 );
setEffAlphaKey( spep_1 + 24, ctdon_1, 217 );
setEffAlphaKey( spep_1 + 26, ctdon_1, 179 );
setEffAlphaKey( spep_1 + 28, ctdon_1, 140 );
setEffAlphaKey( spep_1 + 30, ctdon_1, 102 );
setEffAlphaKey( spep_1 + 32, ctdon_1, 64 );

ctbaki_1 = entryEffectLife( spep_1 + 150 -a,  10020, 18, 0x100, -1, 0, 53, 322.3 );  --バキッ
setEffShake( spep_1 + 156 -a, ctbaki_1, 12, 20 );

setEffMoveKey( spep_1 + 150 -a, ctbaki_1, 53, 322.3 , 0 );
setEffMoveKey( spep_1 + 152 -a, ctbaki_1, 43.8, 345.1 , 0 );
setEffMoveKey( spep_1 + 154 -a, ctbaki_1, 53, 322.4 , 0 );
setEffMoveKey( spep_1 + 156 -a, ctbaki_1, 53.2, 322.2 , 0 );
setEffMoveKey( spep_1 + 168 -a, ctbaki_1, 53.2, 322.2 , 0 );

setEffScaleKey( spep_1 + 150 -a, ctbaki_1, 1.6, 1.6 );
setEffScaleKey( spep_1 + 152 -a, ctbaki_1, 2.88, 2.88 );
setEffScaleKey( spep_1 + 154 -a, ctbaki_1, 2.41, 2.41 );
setEffScaleKey( spep_1 + 156 -a, ctbaki_1, 1.94, 1.94 );
setEffScaleKey( spep_1 + 158 -a, ctbaki_1, 1.89, 1.89 );
setEffScaleKey( spep_1 + 160 -a, ctbaki_1, 1.84, 1.84 );
setEffScaleKey( spep_1 + 162 -a, ctbaki_1, 1.78, 1.78 );
setEffScaleKey( spep_1 + 164 -a, ctbaki_1, 1.73, 1.73 );
setEffScaleKey( spep_1 + 166 -a, ctbaki_1, 1.75, 1.75 );
setEffScaleKey( spep_1 + 168 -a, ctbaki_1, 1.76, 1.76 );

setEffRotateKey( spep_1 + 150 -a, ctbaki_1, 23 );
setEffRotateKey( spep_1 + 168 -a, ctbaki_1, 23 );

setEffAlphaKey( spep_1 + 150 -a, ctbaki_1, 255 );
setEffAlphaKey( spep_1 + 164 -a, ctbaki_1, 255 );
setEffAlphaKey( spep_1 + 166 -a, ctbaki_1, 134 );
setEffAlphaKey( spep_1 + 168 -a, ctbaki_1, 13 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 226, 1, 0 );
changeAnime( spep_1 + 0, 1, 107 );
changeAnime( spep_1 + 50 -a, 1, 105 );
changeAnime( spep_1 + 100 -a, 1, 108 );

setMoveKey( spep_1 + 0, 1, -30.1, 190 , 0 );
--setMoveKey( spep_1 + 2, 1, -23.9, 152.2 , 0 );
setMoveKey( spep_1 + 4 -a, 1, -16.4, 135.5 , 0 );
setMoveKey( spep_1 + 6 -a, 1, -19.6, 114 , 0 );
setMoveKey( spep_1 + 8 -a, 1, -13.5, 101.7 , 0 );
setMoveKey( spep_1 + 10 -a, 1, -18, 86.5 , 0 );
setMoveKey( spep_1 + 12 -a, 1, -13.7, 85.7 , 0 );
setMoveKey( spep_1 + 14 -a, 1, -17.3, 76.9 , 0 );
setMoveKey( spep_1 + 16 -a, 1, -9, 72.1 , 0 );
setMoveKey( spep_1 + 18 -a, 1, -8.6, 59.3 , 0 );
setMoveKey( spep_1 + 20 -a, 1, -4.3, 58.6 , 0 );
setMoveKey( spep_1 + 22 -a, 1, -6, 49.9 , 0 );
setMoveKey( spep_1 + 24 -a, 1, 0.3, 45.1 , 0 );
setMoveKey( spep_1 + 26 -a, 1, 0.6, 36.5 , 0 );
setMoveKey( spep_1 + 28 -a, 1, 4.9, 31.8 , 0 );
setMoveKey( spep_1 + 30 -a, 1, 3.1, 23.1 , 0 );
setMoveKey( spep_1 + 32 -a, 1, 9.4, 18.5 , 0 );
setMoveKey( spep_1 + 34 -a, 1, 9.6, 9.9 , 0 );
setMoveKey( spep_1 + 36 -a, 1, 13.9, 5.3 , 0 );
setMoveKey( spep_1 + 38 -a, 1, 14.1, -3.2 , 0 );
setMoveKey( spep_1 + 40 -a, 1, 18.3, -7.8 , 0 );
setMoveKey( spep_1 + 42 -a, 1, 100.7, -175.3 , 0 );
setMoveKey( spep_1 + 44 -a, 1, 182.8, -342 , 0 );
setMoveKey( spep_1 + 46 -a, 1, 264.6, -507.8 , 0 );
setMoveKey( spep_1 + 49 -a, 1, 346, -672.9 , 0 );
setMoveKey( spep_1 + 50 -a, 1, 38.3, 30.5 , 0 );
setMoveKey( spep_1 + 52 -a, 1, 38.1, 109.8 , 0 );
setMoveKey( spep_1 + 54 -a, 1, 37.9, 173.7 , 0 );
setMoveKey( spep_1 + 56 -a, 1, 37.7, 222.5 , 0 );
setMoveKey( spep_1 + 58 -a, 1, 37.4, 256.3 , 0 );
setMoveKey( spep_1 + 60 -a, 1, 35.3, 254 , 0 );
setMoveKey( spep_1 + 62 -a, 1, 33.3, 251.7 , 0 );
setMoveKey( spep_1 + 64 -a, 1, 31.2, 249.3 , 0 );
setMoveKey( spep_1 + 66 -a, 1, 29.2, 247 , 0 );
setMoveKey( spep_1 + 68 -a, 1, 27.3, 244.6 , 0 );
setMoveKey( spep_1 + 70 -a, 1, 25.4, 242.3 , 0 );
setMoveKey( spep_1 + 72 -a, 1, 24.8, 235.1 , 0 );
setMoveKey( spep_1 + 74 -a, 1, 24.3, 228 , 0 );
setMoveKey( spep_1 + 76 -a, 1, 23.7, 221 , 0 );
setMoveKey( spep_1 + 78 -a, 1, 23.2, 214.1 , 0 );
setMoveKey( spep_1 + 80 -a, 1, 22.6, 207.2 , 0 );
setMoveKey( spep_1 + 82 -a, 1, 22.1, 200.4 , 0 );
setMoveKey( spep_1 + 84 -a, 1, 21.3, 195.5 , 0 );
setMoveKey( spep_1 + 86 -a, 1, 20.5, 190.6 , 0 );
setMoveKey( spep_1 + 88 -a, 1, 19.7, 185.8 , 0 );
setMoveKey( spep_1 + 90 -a, 1, 18.9, 181 , 0 );
setMoveKey( spep_1 + 92 -a, 1, 18.8, 175.9 , 0 );
setMoveKey( spep_1 + 94 -a, 1, 18.6, 170.8 , 0 );
setMoveKey( spep_1 + 96 -a, 1, 18.5, 165.7 , 0 );
setMoveKey( spep_1 + 99 -a, 1, 18.4, 160.8 , 0 );
setMoveKey( spep_1 + 100 -a, 1, -20.5, -1346.8 , 0 );
setMoveKey( spep_1 + 102 -a, 1, -21, -948.1 , 0 );
setMoveKey( spep_1 + 104 -a, 1, -21.6, -647.7 , 0 );
setMoveKey( spep_1 + 106 -a, 1, -22.2, -443.6 , 0 );
setMoveKey( spep_1 + 108 -a, 1, -22.8, -333.8 , 0 );
setMoveKey( spep_1 + 110 -a, 1, -23.4, -323.8 , 0 );
setMoveKey( spep_1 + 112 -a, 1, -24, -309.3 , 0 );
setMoveKey( spep_1 + 114 -a, 1, -24.6, -290.3 , 0 );
setMoveKey( spep_1 + 116 -a, 1, -25.1, -267.1 , 0 );
setMoveKey( spep_1 + 118 -a, 1, -25.7, -239.6 , 0 );
setMoveKey( spep_1 + 120 -a, 1, -26.3, -208 , 0 );
setMoveKey( spep_1 + 122 -a, 1, -26.9, -172.4 , 0 );
setMoveKey( spep_1 + 124 -a, 1, -25, -98.3 , 0 );
setMoveKey( spep_1 + 126 -a, 1, -23, -40.2 , 0 );
setMoveKey( spep_1 + 128 -a, 1, -21.1, 2.4 , 0 );
setMoveKey( spep_1 + 130 -a, 1, -19.1, 30.2 , 0 );
setMoveKey( spep_1 + 132 -a, 1, -17.2, 43.7 , 0 );
setMoveKey( spep_1 + 134 -a, 1, -15.2, 44 , 0 );
setMoveKey( spep_1 + 136 -a, 1, -13.3, 44.2 , 0 );
setMoveKey( spep_1 + 138 -a, 1, -11.4, 44.3 , 0 );
setMoveKey( spep_1 + 140 -a, 1, -9.4, 44.2 , 0 );
setMoveKey( spep_1 + 142 -a, 1, -7.5, 43.9 , 0 );
setMoveKey( spep_1 + 144 -a, 1, -5.5, 43.5 , 0 );
setMoveKey( spep_1 + 146 -a, 1, -3.6, 43 , 0 );
setMoveKey( spep_1 + 147 -a, 1, -3.6, 43 , 0 );
setMoveKey( spep_1 + 148 -a, 1, 161.7, 55.3 , 0 );
setMoveKey( spep_1 + 150 -a, 1, 150.3, 69.1 , 0 );
setMoveKey( spep_1 + 152 -a, 1, 125.8, 66.9 , 0 );
setMoveKey( spep_1 + 154 -a, 1, 119.9, 71.1 , 0 );
setMoveKey( spep_1 + 156 -a, 1, 117.1, 58.5 , 0 );
setMoveKey( spep_1 + 158 -a, 1, 120.7, 65.2 , 0 );
setMoveKey( spep_1 + 160 -a, 1, 114.5, 59 , 0 );
setMoveKey( spep_1 + 162 -a, 1, 121, 59.3 , 0 );
setMoveKey( spep_1 + 164 -a, 1, 117.8, 49.9 , 0 );
setMoveKey( spep_1 + 166 -a, 1, 121, 53.4 , 0 );
setMoveKey( spep_1 + 168 -a, 1, 69.2, 47.2 , 0 );
setMoveKey( spep_1 + 170 -a, 1, 34.2, 50.1 , 0 );
setMoveKey( spep_1 + 172 -a, 1, -5.8, 43.3 , 0 );
setMoveKey( spep_1 + 174 -a, 1, -35, 49.3 , 0 );
setMoveKey( spep_1 + 176 -a, 1, -66.2, 42.6 , 0 );
setMoveKey( spep_1 + 178 -a, 1, -86.6, 48.6 , 0 );
setMoveKey( spep_1 + 180 -a, 1, -105.9, 48.2 , 0 );
setMoveKey( spep_1 + 182 -a, 1, -103.2, 47.8 , 0 );
setMoveKey( spep_1 + 184 -a, 1, -99.5, 47.5 , 0 );
setMoveKey( spep_1 + 186 -a, 1, -94.9, 47.1 , 0 );
setMoveKey( spep_1 + 188 -a, 1, -89.3, 46.7 , 0 );
setMoveKey( spep_1 + 190 -a, 1, -82.8, 46.4 , 0 );
setMoveKey( spep_1 + 192 -a, 1, -75.3, 46 , 0 );
setMoveKey( spep_1 + 194 -a, 1, -66.9, 45.6 , 0 );
setMoveKey( spep_1 + 196 -a, 1, -57.6, 45.3 , 0 );
setMoveKey( spep_1 + 198 -a, 1, -47.4, 44.9 , 0 );
setMoveKey( spep_1 + 200 -a, 1, -23.4, 44.9 , 0 );
setMoveKey( spep_1 + 202 -a, 1, 0.6, 44.9 , 0 );
setMoveKey( spep_1 + 204 -a, 1, 24.6, 44.9 , 0 );
setMoveKey( spep_1 + 206 -a, 1, 48.6, 44.9 , 0 );
setMoveKey( spep_1 + 208 -a, 1, 72.6, 44.9 , 0 );
setMoveKey( spep_1 + 210 -a, 1, 76.2, 44.9 , 0 );
setMoveKey( spep_1 + 212 -a, 1, 87, 44.9 , 0 );
setMoveKey( spep_1 + 214 -a, 1, 105, 44.9 , 0 );
setMoveKey( spep_1 + 216 -a, 1, 130.2, 44.9 , 0 );
setMoveKey( spep_1 + 218 -a, 1, 162.6, 44.9 , 0 );
setMoveKey( spep_1 + 220 -a, 1, 202.2, 44.9 , 0 );
setMoveKey( spep_1 + 222 -a, 1, 249, 44.9 , 0 );
setMoveKey( spep_1 + 224 -a, 1, 303, 44.9 , 0 );
setMoveKey( spep_1 + 226 -a, 1, 364.2, 44.9 , 0 );
setMoveKey( spep_1 + 226, 1, 432.6, 44.9 , 0 );

setScaleKey( spep_1 + 0 -a, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 2 -a, 1, 0.73, 0.73 );
setScaleKey( spep_1 + 4 -a, 1, 0.68, 0.68 );
setScaleKey( spep_1 + 6 -a, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 8 -a, 1, 0.55, 0.55 );
setScaleKey( spep_1 + 10 -a, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 12 -a, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 18 -a, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 20 -a, 1, 0.49, 0.49 );
setScaleKey( spep_1 + 26 -a, 1, 0.49, 0.49 );
setScaleKey( spep_1 + 28 -a, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 36 -a, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 38 -a, 1, 0.51, 0.51 );
setScaleKey( spep_1 + 40 -a, 1, 0.51, 0.51 );
setScaleKey( spep_1 + 42 -a, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 44 -a, 1, 1.63, 1.63 );
setScaleKey( spep_1 + 46 -a, 1, 2.19, 2.19 );
setScaleKey( spep_1 + 49 -a, 1, 2.74, 2.74 );
setScaleKey( spep_1 + 50 -a, 1, 2.04, 2.04 );
setScaleKey( spep_1 + 52 -a, 1, 1.79, 1.79 );
setScaleKey( spep_1 + 54 -a, 1, 1.58, 1.58 );
setScaleKey( spep_1 + 56 -a, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 58 -a, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 60 -a, 1, 1.24, 1.24 );
setScaleKey( spep_1 + 62 -a, 1, 1.19, 1.19 );
setScaleKey( spep_1 + 64 -a, 1, 1.13, 1.13 );
setScaleKey( spep_1 + 66 -a, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 68 -a, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 70 -a, 1, 0.96, 0.96 );
setScaleKey( spep_1 + 72 -a, 1, 0.89, 0.89 );
setScaleKey( spep_1 + 74 -a, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 76 -a, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 78 -a, 1, 0.69, 0.69 );
setScaleKey( spep_1 + 80 -a, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 82 -a, 1, 0.55, 0.55 );
setScaleKey( spep_1 + 84 -a, 1, 0.52, 0.52 );
setScaleKey( spep_1 + 86 -a, 1, 0.49, 0.49 );
setScaleKey( spep_1 + 88 -a, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 90 -a, 1, 0.44, 0.44 );
setScaleKey( spep_1 + 92 -a, 1, 0.41, 0.41 );
setScaleKey( spep_1 + 94 -a, 1, 0.38, 0.38 );
setScaleKey( spep_1 + 96 -a, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 99 -a, 1, 0.32, 0.32 );
setScaleKey( spep_1 + 100 -a, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 102 -a, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 104 -a, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 106 -a, 1, 1.4, 1.4 );
setScaleKey( spep_1 + 108 -a, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 110 -a, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 112 -a, 1, 1.37, 1.37 );
setScaleKey( spep_1 + 114 -a, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 116 -a, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 118 -a, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 120 -a, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 122 -a, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 124 -a, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 126 -a, 1, 1.28, 1.28 );
setScaleKey( spep_1 + 128 -a, 1, 1.26, 1.26 );
setScaleKey( spep_1 + 130 -a, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 132 -a, 1, 1.23, 1.23 );
setScaleKey( spep_1 + 134 -a, 1, 1.21, 1.21 );
setScaleKey( spep_1 + 136 -a, 1, 1.19, 1.19 );
setScaleKey( spep_1 + 138 -a, 1, 1.17, 1.17 );
setScaleKey( spep_1 + 140 -a, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 142 -a, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 144 -a, 1, 1.12, 1.12 );
setScaleKey( spep_1 + 146 -a, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 147 -a, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 148 -a, 1, 1.65, 1.65 );
setScaleKey( spep_1 + 150 -a, 1, 1.54, 1.54 );
setScaleKey( spep_1 + 152 -a, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 154 -a, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 156 -a, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 158 -a, 1, 1.27, 1.27 );
setScaleKey( spep_1 + 160 -a, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 162 -a, 1, 1.23, 1.23 );
setScaleKey( spep_1 + 164 -a, 1, 1.2, 1.2 );
setScaleKey( spep_1 + 166 -a, 1, 1.18, 1.18 );
setScaleKey( spep_1 + 168 -a, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 170 -a, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 172 -a, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 174 -a, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 178 -a, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 180 -a, 1, 1.13, 1.13 );
setScaleKey( spep_1 + 184 -a, 1, 1.13, 1.13 );
setScaleKey( spep_1 + 186 -a, 1, 1.12, 1.12 );
setScaleKey( spep_1 + 188 -a, 1, 1.12, 1.12 );
setScaleKey( spep_1 + 190 -a, 1, 1.11, 1.11 );
setScaleKey( spep_1 + 194 -a, 1, 1.11, 1.11 );
setScaleKey( spep_1 + 196 -a, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 226, 1, 1.1, 1.1 );

setRotateKey( spep_1 + 0, 1, -16.7 );
setRotateKey( spep_1 + 4 -a, 1, -16.7 );
setRotateKey( spep_1 + 6 -a, 1, -16.6 );
setRotateKey( spep_1 + 24 -a, 1, -16.6 );
setRotateKey( spep_1 + 26 -a, 1, -16.5 );
setRotateKey( spep_1 + 42 -a, 1, -16.5 );
setRotateKey( spep_1 + 44 -a, 1, -16.6 );
setRotateKey( spep_1 + 46 -a, 1, -16.6 );
setRotateKey( spep_1 + 49 -a, 1, -16.7 );
setRotateKey( spep_1 + 50 -a, 1, 0 );
setRotateKey( spep_1 + 99 -a, 1, 0 );
setRotateKey( spep_1 + 100 -a, 1, -90 );
setRotateKey( spep_1 + 146 -a, 1, -90 );
setRotateKey( spep_1 + 147 -a, 1, -90 );
setRotateKey( spep_1 + 148 -a, 1, -11 );
setRotateKey( spep_1 + 226, 1, -11 );

-- ** ホワイトフェード ** --
entryFade( spep_1 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_1 + 148 -a, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 230 );  -- white fade

-- ** 音 ** --
playSe( spep_1 + 2, 1002 );  --初撃
playSe( spep_1 + 56, 7);  --飛ばされる
playSe( spep_1 + 62, 44);  --出てくる
playSe( spep_1 + 150 -a, 1010);  --蹴り
SE2 = playSe( spep_1 + 204, 17);  --ワープ
stopSe( spep_1 + 214,  SE2, 20);

-- ** 次の準備 ** --
spep_2 = spep_1 + 226;

------------------------------------------------------
-- ワープ(256F)
------------------------------------------------------

-- ** エフェクト等 ** --
warp4 = entryEffectLife( spep_2 + 0, SP_07, 256, 0x80, -1, 0, 0, 0 );  --ワープ４(ef_007)
setEffMoveKey( spep_2 + 0, warp4, 0, 0 , 0 );
setEffMoveKey( spep_2 + 256, warp4, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, warp4, 1.0, 1.0 );
setEffScaleKey( spep_2 + 256, warp4, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, warp4, 0 );
setEffRotateKey( spep_2 + 256, warp4, 0 );
setEffAlphaKey( spep_2 + 0, warp4, 255 );
setEffAlphaKey( spep_2 + 256, warp4, 255 );

warp3_f = entryEffectLife( spep_2 + 0, SP_06r, 116 -a, 0x100, -1, 0, 0, 0 );  --ワープ３　手前(ef_006)
setEffMoveKey( spep_2 + 0, warp3_f, 0, 0 , 0 );
setEffMoveKey( spep_2 +  116 -a, warp3_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, warp3_f, 1.0, 1.0 );
setEffScaleKey( spep_2 +  116 -a, warp3_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, warp3_f, 0 );
setEffRotateKey( spep_2 +  116 -a, warp3_f, 0 );
setEffAlphaKey( spep_2 +  0, warp3_f, 255 );
setEffAlphaKey( spep_2 + 115 -a, warp3_f, 255 );
setEffAlphaKey( spep_2 + 116 -a, warp3_f, 0 );

warp3_b = entryEffectLife( spep_2 + 0, SP_06r, 256, 0x80, -1, 0, 0, 0 );  --ワープ３　奥(ef_006)
setEffMoveKey( spep_2 + 0, warp3_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 256, warp3_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, warp3_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 256, warp3_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, warp3_b, 0 );
setEffRotateKey( spep_2 + 256, warp3_b, 0 );
setEffAlphaKey( spep_2 + 0, warp3_b, 0 );
setEffAlphaKey( spep_2 + 115 -a, warp3_b, 0 );
setEffAlphaKey( spep_2 + 116 -a, warp3_b, 255 );
setEffAlphaKey( spep_2 + 256, warp3_b, 255 );

warp2_f = entryEffectLife( spep_2 + 0, SP_05, 176 -a, 0x100, -1, 0, 0, 0 );  --ワープ２　手前(ef_005)
setEffMoveKey( spep_2 + 0, warp2_f, 0, 0 , 0 );
setEffMoveKey( spep_2 +  176 -a, warp2_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, warp2_f, 1.0, 1.0 );
setEffScaleKey( spep_2 +  176 -a, warp2_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, warp2_f, 0 );
setEffRotateKey( spep_2 +  176 -a, warp2_f, 0 );
setEffAlphaKey( spep_2 +  0, warp2_f, 255 );
setEffAlphaKey( spep_2 + 175 -a, warp2_f, 255 );
setEffAlphaKey( spep_2 + 176 -a, warp2_f, 0 );

warp2_b = entryEffectLife( spep_2 + 0, SP_05, 256, 0x80, -1, 0, 0, 0 );  --ワープ２　奥(ef_005)
setEffMoveKey( spep_2 + 0, warp2_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 256, warp2_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, warp2_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 256, warp2_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, warp2_b, 0 );
setEffRotateKey( spep_2 + 256, warp2_b, 0 );
setEffAlphaKey( spep_2 + 0, warp2_b, 0 );
setEffAlphaKey( spep_2 + 175 -a, warp2_b, 0 );
setEffAlphaKey( spep_2 + 176 -a, warp2_b, 255 );
setEffAlphaKey( spep_2 + 256, warp2_b, 255 );

warp1_f = entryEffectLife( spep_2 + 0, SP_04, 204 -a, 0x100, -1, 0, 0, 0 );  --ワープ１　手前(ef_005)
setEffMoveKey( spep_2 + 0, warp1_f, 0, 0 , 0 );
setEffMoveKey( spep_2 +  204 -a, warp1_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, warp1_f, 1.0, 1.0 );
setEffScaleKey( spep_2 +  204 -a, warp1_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, warp1_f, 0 );
setEffRotateKey( spep_2 +  204 -a, warp1_f, 0 );
setEffAlphaKey( spep_2 +  0, warp1_f, 255 );
setEffAlphaKey( spep_2 + 203 -a, warp1_f, 255 );
setEffAlphaKey( spep_2 + 204 -a, warp1_f, 0 );

warp1_b = entryEffectLife( spep_2 + 0, SP_04, 256, 0x80, -1, 0, 0, 0 );  --ワープ１　奥(ef_005)
setEffMoveKey( spep_2 + 0, warp1_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 256, warp1_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, warp1_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 256, warp1_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, warp1_b, 0 );
setEffRotateKey( spep_2 + 256, warp1_b, 0 );
setEffAlphaKey( spep_2 + 0, warp1_b, 0 );
setEffAlphaKey( spep_2 + 203 -a, warp1_b, 0 );
setEffAlphaKey( spep_2 + 204 -a, warp1_b, 255 );
setEffAlphaKey( spep_2 + 256, warp1_b, 255 );

-- ** 集中線 ** --
shuchusen_3 = entryEffectLife( spep_2 + 40 -a,  906, 12, 0x100, -1, 0, 0, 43.5 );  --集中線
setEffShake( spep_2 + 40 -a, shuchusen_3, 12, 20 );

setEffMoveKey( spep_2 + 40 -a, shuchusen_3, 0, 43.5 , 0 );
setEffMoveKey( spep_2 + 52 -a, shuchusen_3, 0, 43.5 , 0 );

setEffScaleKey( spep_2 + 40 -a, shuchusen_3, 1.04, 1.37 );
setEffScaleKey( spep_2 + 52 -a, shuchusen_3, 1.04, 1.37 );

setEffRotateKey( spep_2 + 40 -a, shuchusen_3, 180 );
setEffRotateKey( spep_2 + 52 -a, shuchusen_3, 180 );

setEffAlphaKey( spep_2 + 40 -a, shuchusen_3, 255 );
setEffAlphaKey( spep_2 + 48 -a, shuchusen_3, 255 );
setEffAlphaKey( spep_2 + 50 -a, shuchusen_3, 128 );
setEffAlphaKey( spep_2 + 52 -a, shuchusen_3, 64 );

shuchusen_4 = entryEffectLife( spep_2 + 116 -a,  906, 12, 0x100, -1, 0, 0, 43.5 );  --集中線
setEffShake( spep_2 + 116 -a, shuchusen_4, 12, 20 );

setEffMoveKey( spep_2 + 116 -a, shuchusen_4, 0, 43.5 , 0 );
setEffMoveKey( spep_2 + 128 -a, shuchusen_4, 0, 43.5 , 0 );

setEffScaleKey( spep_2 + 116 -a, shuchusen_4, 1.04, 1.37 );
setEffScaleKey( spep_2 + 128 -a, shuchusen_4, 1.04, 1.37 );

setEffRotateKey( spep_2 + 116 -a, shuchusen_4, 180 );
setEffRotateKey( spep_2 + 128 -a, shuchusen_4, 180 );

setEffAlphaKey( spep_2 + 116 -a, shuchusen_4, 255 );
setEffAlphaKey( spep_2 + 124 -a, shuchusen_4, 255 );
setEffAlphaKey( spep_2 + 126 -a, shuchusen_4, 128 );
setEffAlphaKey( spep_2 + 128 -a, shuchusen_4, 64 );

shuchusen_5 = entryEffectLife( spep_2 + 204 -a,  906, 54, 0x100, -1, 0, 0, 43.5 );  --集中線
setEffShake( spep_2 + 204 -a, shuchusen_5, 54, 20 );

setEffMoveKey( spep_2 + 204 -a, shuchusen_5, 0, 43.5 , 0 );
setEffMoveKey( spep_2 + 258 -a, shuchusen_5, 0, 43.5 , 0 );

setEffScaleKey( spep_2 + 204 -a, shuchusen_5, 1.04, 1.37 );
setEffScaleKey( spep_2 + 258 -a, shuchusen_5, 1.04, 1.37 );

setEffRotateKey( spep_2 + 204 -a, shuchusen_5, 180 );
setEffRotateKey( spep_2 + 258 -a, shuchusen_5, 180 );

setEffAlphaKey( spep_2 + 204 -a, shuchusen_5, 255 );
setEffAlphaKey( spep_2 + 258 -a, shuchusen_5, 255 );

-- ** 書き文字エントリー ** --
ctga_1 = entryEffectLife( spep_2 + 40 -a,  10005, 14, 0x100, -1, 0, 65.8, 326 );  --ガッ
setEffShake( spep_2 + 40 -a, ctga_1, 14, 25 );

setEffMoveKey( spep_2 + 40 -a, ctga_1, 65.8, 326 , 0 );
setEffMoveKey( spep_2 + 54 -a, ctga_1, 65.8, 326 , 0 );

setEffScaleKey( spep_2 + 40 -a, ctga_1, 0.62, 0.62 );
setEffScaleKey( spep_2 + 42 -a, ctga_1, 1.01, 1.01 );
setEffScaleKey( spep_2 + 54 -a, ctga_1, 1.01, 1.01 );

setEffRotateKey( spep_2 + 40 -a, ctga_1, 9.2 );
setEffRotateKey( spep_2 + 42 -a, ctga_1, 9.2 );
setEffRotateKey( spep_2 + 44 -a, ctga_1, 4.9 );
setEffRotateKey( spep_2 + 46 -a, ctga_1, 14.4 );
setEffRotateKey( spep_2 + 48 -a, ctga_1, 6.5 );
setEffRotateKey( spep_2 + 50 -a, ctga_1, 12.2 );
setEffRotateKey( spep_2 + 54 -a, ctga_1, 12.2 );

setEffAlphaKey( spep_2 + 40 -a, ctga_1, 255 );
setEffAlphaKey( spep_2 + 50 -a, ctga_1, 255 );
setEffAlphaKey( spep_2 + 52 -a, ctga_1, 128 );
setEffAlphaKey( spep_2 + 54 -a, ctga_1, 0 );

ctbaki_2 = entryEffectLife( spep_2 + 116 -a,  10020, 16, 0x100, -1, 0, -28, 170.6 );  --バキッ
setEffShake( spep_2 + 116 -a, ctbaki_2, 16, 15 );

setEffMoveKey( spep_2 + 116 -a, ctbaki_2, -28, 170.6 , 0 );
setEffMoveKey( spep_2 + 118 -a, ctbaki_2, -38.5, 186.4 , 0 );
setEffMoveKey( spep_2 + 120 -a, ctbaki_2, -28, 170.6 , 0 );
setEffMoveKey( spep_2 + 122 -a, ctbaki_2, -28, 170.5 , 0 );
setEffMoveKey( spep_2 + 124 -a, ctbaki_2, -34.7, 180.8 , 0 );
setEffMoveKey( spep_2 + 126 -a, ctbaki_2, -27.9, 170.5 , 0 );
setEffMoveKey( spep_2 + 128 -a, ctbaki_2, -27.9, 170.5 , 0 );
setEffMoveKey( spep_2 + 130 -a, ctbaki_2, -34.2, 180 , 0 );
setEffMoveKey( spep_2 + 132 -a, ctbaki_2, -27.9, 170.5 , 0 );

setEffScaleKey( spep_2 + 116 -a, ctbaki_2, 1.24, 1.24 );
setEffScaleKey( spep_2 + 118 -a, ctbaki_2, 2.23, 2.23 );
setEffScaleKey( spep_2 + 120 -a, ctbaki_2, 1.87, 1.87 );
setEffScaleKey( spep_2 + 122 -a, ctbaki_2, 1.5, 1.5 );
setEffScaleKey( spep_2 + 124 -a, ctbaki_2, 1.45, 1.45 );
setEffScaleKey( spep_2 + 126 -a, ctbaki_2, 1.39, 1.39 );
setEffScaleKey( spep_2 + 128 -a, ctbaki_2, 1.34, 1.34 );
setEffScaleKey( spep_2 + 130 -a, ctbaki_2, 1.35, 1.35 );
setEffScaleKey( spep_2 + 132 -a, ctbaki_2, 1.36, 1.36 );

setEffRotateKey( spep_2 + 116 -a, ctbaki_2, 11.5 );
setEffRotateKey( spep_2 + 132 -a, ctbaki_2, 11.5 );

setEffAlphaKey( spep_2 + 116 -a, ctbaki_2, 255 );
setEffAlphaKey( spep_2 + 128 -a, ctbaki_2, 255 );
setEffAlphaKey( spep_2 + 130 -a, ctbaki_2, 134 );
setEffAlphaKey( spep_2 + 132 -a, ctbaki_2, 13 );

ctbago_1 = entryEffectLife( spep_2 + 204 -a,  10021, 18, 0x100, -1, 0, 163.7, 212.7 );  --バゴォッ
setEffShake( spep_2 + 204 -a, ctbago_1, 18, 15 );

setEffMoveKey( spep_2 + 204 -a, ctbago_1, 163.7, 212.7 , 0 );
setEffMoveKey( spep_2 + 222 -a, ctbago_1, 163.8, 212.9 , 0 );

setEffScaleKey( spep_2 + 204 -a, ctbago_1, 1.18, 1.18 );
setEffScaleKey( spep_2 + 206 -a, ctbago_1, 3.25, 3.25 );
setEffScaleKey( spep_2 + 208 -a, ctbago_1, 2.43, 2.43 );
setEffScaleKey( spep_2 + 210 -a, ctbago_1, 2.36, 2.36 );
setEffScaleKey( spep_2 + 212 -a, ctbago_1, 2.3, 2.3 );
setEffScaleKey( spep_2 + 214 -a, ctbago_1, 2.23, 2.23 );
setEffScaleKey( spep_2 + 216 -a, ctbago_1, 2.16, 2.16 );
setEffScaleKey( spep_2 + 218 -a, ctbago_1, 2, 2 );
setEffScaleKey( spep_2 + 220 -a, ctbago_1, 1.83, 1.83 );
setEffScaleKey( spep_2 + 222 -a, ctbago_1, 1.67, 1.67 );

setEffRotateKey( spep_2 + 204 -a, ctbago_1, 28.8 );
setEffRotateKey( spep_2 + 222 -a, ctbago_1, 28.8 );

setEffAlphaKey( spep_2 + 204 -a, ctbago_1, 255 );
setEffAlphaKey( spep_2 + 216 -a, ctbago_1, 255 );
setEffAlphaKey( spep_2 + 218 -a, ctbago_1, 170 );
setEffAlphaKey( spep_2 + 220 -a, ctbago_1, 85 );
setEffAlphaKey( spep_2 + 222 -a, ctbago_1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 8 -a, 1, 1 );
setDisp( spep_2 + 85 -a, 1, 0 );
changeAnime( spep_2 + 8 -a, 1, 8 );
changeAnime( spep_2 + 40 -a, 1, 106 );

setMoveKey( spep_2 + 8 -a, 1, 170.4, 242.8 , 0 );
setMoveKey( spep_2 + 10 -a, 1, 175.2, 247.2 , 0 );
setMoveKey( spep_2 + 12 -a, 1, 179.3, 251 , 0 );
setMoveKey( spep_2 + 14 -a, 1, 182.7, 254.2 , 0 );
setMoveKey( spep_2 + 16 -a, 1, 185.3, 256.7 , 0 );
setMoveKey( spep_2 + 18 -a, 1, 187, 258.6 , 0 );
setMoveKey( spep_2 + 20 -a, 1, 188, 259.7 , 0 );
setMoveKey( spep_2 + 22 -a, 1, 188.1, 260.2 , 0 );
setMoveKey( spep_2 + 24 -a, 1, 187.3, 259.9 , 0 );
setMoveKey( spep_2 + 26 -a, 1, 185.7, 258.9 , 0 );
setMoveKey( spep_2 + 28 -a, 1, 153.6, 227.1 , 0 );
setMoveKey( spep_2 + 30 -a, 1, 124.4, 197.9 , 0 );
setMoveKey( spep_2 + 32 -a, 1, 99.2, 172.3 , 0 );
setMoveKey( spep_2 + 34 -a, 1, 78.8, 151.2 , 0 );
setMoveKey( spep_2 + 36 -a, 1, 64.3, 135.3 , 0 );
setMoveKey( spep_2 + 38 -a, 1, 56.6, 125.7 , 0 );
setMoveKey( spep_2 + 39 -a, 1, 56.6, 125.7 , 0 );
setMoveKey( spep_2 + 40 -a, 1, 78.6, 132.9 , 0 );
setMoveKey( spep_2 + 42 -a, 1, 82.3, 106.5 , 0 );
setMoveKey( spep_2 + 44 -a, 1, 90.9, 112.9 , 0 );
setMoveKey( spep_2 + 46 -a, 1, 85.3, 100.9 , 0 );
setMoveKey( spep_2 + 48 -a, 1, 97.3, 96 , 0 );
setMoveKey( spep_2 + 50 -a, 1, 95.1, 79.2 , 0 );
setMoveKey( spep_2 + 52 -a, 1, 97.8, 82.3 , 0 );
setMoveKey( spep_2 + 54 -a, 1, 96.8, 66.5 , 0 );
setMoveKey( spep_2 + 56 -a, 1, 236.8, 26.9 , 0 );
setMoveKey( spep_2 + 58 -a, 1, 321.6, -5 , 0 );
setMoveKey( spep_2 + 60 -a, 1, 362, -22.2 , 0 );
setMoveKey( spep_2 + 62 -a, 1, 365.5, -27.1 , 0 );
setMoveKey( spep_2 + 64 -a, 1, 339.4, -22.2 , 0 );
setMoveKey( spep_2 + 66 -a, 1, 291.4, -10.1 , 0 );
setMoveKey( spep_2 + 68 -a, 1, 294.1, -12.4 , 0 );
setMoveKey( spep_2 + 70 -a, 1, 297.5, -14.8 , 0 );
setMoveKey( spep_2 + 72 -a, 1, 301.6, -17.5 , 0 );
setMoveKey( spep_2 + 74 -a, 1, 306.5, -20.3 , 0 );
setMoveKey( spep_2 + 76 -a, 1, 312.1, -23.3 , 0 );
setMoveKey( spep_2 + 78 -a, 1, 318.4, -26.5 , 0 );
setMoveKey( spep_2 + 80 -a, 1, 325.5, -29.9 , 0 );
setMoveKey( spep_2 + 82 -a, 1, 333.4, -33.5 , 0 );
setMoveKey( spep_2 + 84 -a, 1, 342.1, -37.3 , 0 );
setMoveKey( spep_2 + 85 -a, 1, 342.1, -37.3 , 0 );

setScaleKey( spep_2 + 8 -a, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 10 -a, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 12 -a, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 14 -a, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 18 -a, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 20 -a, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 22 -a, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 24 -a, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 26 -a, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 28 -a, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 30 -a, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 32 -a, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 34 -a, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 36 -a, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 38 -a, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 39 -a, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 40 -a, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 42 -a, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 44 -a, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 46 -a, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 48 -a, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 50 -a, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 52 -a, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 54 -a, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 56 -a, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 58 -a, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 60 -a, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 62 -a, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 64 -a, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 66 -a, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 80 -a, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 82 -a, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 85 -a, 1, 0.31, 0.31 );

setRotateKey( spep_2 + 8 -a, 1, -53 );
setRotateKey( spep_2 + 39 -a, 1, -53 );
setRotateKey( spep_2 + 40 -a, 1, -14.8 );
setRotateKey( spep_2 + 42 -a, 1, -13.2 );
setRotateKey( spep_2 + 44 -a, 1, -11.6 );
setRotateKey( spep_2 + 46 -a, 1, -10 );
setRotateKey( spep_2 + 48 -a, 1, -8.5 );
setRotateKey( spep_2 + 50 -a, 1, -6.9 );
setRotateKey( spep_2 + 52 -a, 1, -5.3 );
setRotateKey( spep_2 + 54 -a, 1, -3.7 );
setRotateKey( spep_2 + 56 -a, 1, 5.1 );
setRotateKey( spep_2 + 58 -a, 1, 12.5 );
setRotateKey( spep_2 + 60 -a, 1, 18.6 );
setRotateKey( spep_2 + 62 -a, 1, 23.3 );
setRotateKey( spep_2 + 64 -a, 1, 26.7 );
setRotateKey( spep_2 + 66 -a, 1, 28.7 );
setRotateKey( spep_2 + 85 -a, 1, 28.7 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 94 -a, 1, 1 );
changeAnime( spep_2 + 94 -a, 1, 106 );

setMoveKey( spep_2 + 94 -a, 1, -251.7, 206.9 , 0 );
setMoveKey( spep_2 + 96 -a, 1, -250.1, 203.9 , 0 );
setMoveKey( spep_2 + 98 -a, 1, -247.6, 200.2 , 0 );
setMoveKey( spep_2 + 100 -a, 1, -244.2, 195.8 , 0 );
setMoveKey( spep_2 + 102 -a, 1, -239.8, 190.6 , 0 );
setMoveKey( spep_2 + 104 -a, 1, -234.4, 184.7 , 0 );
setMoveKey( spep_2 + 106 -a, 1, -193, 156.1 , 0 );
setMoveKey( spep_2 + 108 -a, 1, -151.3, 127.2 , 0 );
setMoveKey( spep_2 + 110 -a, 1, -109.2, 98.2 , 0 );
setMoveKey( spep_2 + 112 -a, 1, -66.8, 68.8 , 0 );
setMoveKey( spep_2 + 114 -a, 1, -24, 39.3 , 0 );
setMoveKey( spep_2 + 115 -a, 1, -24, 39.3 , 0 );

setScaleKey( spep_2 + 94 -a, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 96 -a, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 108 -a, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 110 -a, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 115 -a, 1, 0.33, 0.33 );

setRotateKey( spep_2 + 94 -a, 1, 50.4 );
setRotateKey( spep_2 + 96 -a, 1, 51.4 );
setRotateKey( spep_2 + 98 -a, 1, 52.8 );
setRotateKey( spep_2 + 100 -a, 1, 54.4 );
setRotateKey( spep_2 + 102 -a, 1, 56.4 );
setRotateKey( spep_2 + 104 -a, 1, 58.8 );
setRotateKey( spep_2 + 115 -a, 1, 58.8 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 153 -a, 1, 0 );
changeAnime( spep_2 + 116 -a, 1, 7 );

setMoveKey( spep_2 + 116 -a, 1, -51.5, 4.3 , 0 );
setMoveKey( spep_2 + 118 -a, 1, -50.4, 17.5 , 0 );
setMoveKey( spep_2 + 120 -a, 1, -62.2, 11.6 , 0 );
setMoveKey( spep_2 + 122 -a, 1, -54.7, 12 , 0 );
setMoveKey( spep_2 + 124 -a, 1, -60.1, 2.9 , 0 );
setMoveKey( spep_2 + 126 -a, 1, -59.1, 6.5 , 0 );
setMoveKey( spep_2 + 128 -a, 1, -64.5, -5.9 , 0 );
setMoveKey( spep_2 + 130 -a, 1, -63.5, 0.9 , 0 );
setMoveKey( spep_2 + 132 -a, 1, -105.6, -34.3 , 0 );
setMoveKey( spep_2 + 134 -a, 1, -148.1, -69.8 , 0 );
setMoveKey( spep_2 + 136 -a, 1, -190.9, -105.5 , 0 );
setMoveKey( spep_2 + 138 -a, 1, -234, -141.5 , 0 );
setMoveKey( spep_2 + 140 -a, 1, -275.5, -182.8 , 0 );
setMoveKey( spep_2 + 142 -a, 1, -276.9, -191.8 , 0 );
setMoveKey( spep_2 + 144 -a, 1, -278.3, -200.5 , 0 );
setMoveKey( spep_2 + 146 -a, 1, -279.7, -209 , 0 );
setMoveKey( spep_2 + 148 -a, 1, -281.1, -217.3 , 0 );
setMoveKey( spep_2 + 150 -a, 1, -282.5, -225.2 , 0 );
setMoveKey( spep_2 + 152 -a, 1, -284, -233 , 0 );
setMoveKey( spep_2 + 153 -a, 1, -284, -233 , 0 );

setScaleKey( spep_2 + 116 -a, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 118 -a, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 122 -a, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 124 -a, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 126 -a, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 128 -a, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 130 -a, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 132 -a, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 134 -a, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 136 -a, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 138 -a, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 140 -a, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 142 -a, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 146 -a, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 148 -a, 1, 0.26, 0.26 );

setRotateKey( spep_2 + 116 -a, 1, 0.2 );
setRotateKey( spep_2 + 118 -a, 1, -0.3 );
setRotateKey( spep_2 + 120 -a, 1, -0.9 );
setRotateKey( spep_2 + 122 -a, 1, -1.4 );
setRotateKey( spep_2 + 124 -a, 1, -1.9 );
setRotateKey( spep_2 + 126 -a, 1, -2.4 );
setRotateKey( spep_2 + 128 -a, 1, -3 );
setRotateKey( spep_2 + 130 -a, 1, -3.5 );
setRotateKey( spep_2 + 132 -a, 1, -5.4 );
setRotateKey( spep_2 + 134 -a, 1, -7.3 );
setRotateKey( spep_2 + 136 -a, 1, -9.1 );
setRotateKey( spep_2 + 138 -a, 1, -11 );
setRotateKey( spep_2 + 140 -a, 1, -12.9 );
setRotateKey( spep_2 + 144 -a, 1, -12.9 );
setRotateKey( spep_2 + 146 -a, 1, -12.8 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 176 -a, 1, 1 );
setDisp( spep_2 + 235 -a, 1, 0 );
changeAnime( spep_2 + 176 -a, 1, 108 );
changeAnime( spep_2 + 204 -a, 1, 7 );

setMoveKey( spep_2 + 176 -a, 1, -65.6, 343.2 , 0 );
setMoveKey( spep_2 + 177 -a, 1, -65.6, 343.2 , 0 );
setMoveKey( spep_2 + 178 -a, 1, -65.3, 339 , 0 );
setMoveKey( spep_2 + 179 -a, 1, -65.3, 339 , 0 );
setMoveKey( spep_2 + 180 -a, 1, -66.3, 352.6 , 0 );
setMoveKey( spep_2 + 181 -a, 1, -66.3, 352.6 , 0 );
setMoveKey( spep_2 + 182 -a, 1, -67.3, 366.3 , 0 );
setMoveKey( spep_2 + 183 -a, 1, -67.3, 366.3 , 0 );
setMoveKey( spep_2 + 184 -a, 1, -68.1, 380.1 , 0 );
setMoveKey( spep_2 + 185 -a, 1, -68.1, 380.1 , 0 );
setMoveKey( spep_2 + 186 -a, 1, -68.8, 393.8 , 0 );
setMoveKey( spep_2 + 187 -a, 1, -68.8, 393.8 , 0 );
setMoveKey( spep_2 + 188 -a, 1, -69.3, 407.6 , 0 );
setMoveKey( spep_2 + 189 -a, 1, -69.3, 407.6 , 0 );
setMoveKey( spep_2 + 190 -a, 1, -61.5, 335.6 , 0 );
setMoveKey( spep_2 + 191 -a, 1, -61.5, 335.6 , 0 );
setMoveKey( spep_2 + 192 -a, 1, -54.3, 269.2 , 0 );
setMoveKey( spep_2 + 194 -a, 1, -47.6, 208.7 , 0 );
setMoveKey( spep_2 + 196 -a, 1, -41.7, 154.7 , 0 );
setMoveKey( spep_2 + 198 -a, 1, -36.4, 107.6 , 0 );
setMoveKey( spep_2 + 200 -a, 1, -32, 68.2 , 0 );
setMoveKey( spep_2 + 202 -a, 1, -28.4, 37 , 0 );
setMoveKey( spep_2 + 203 -a, 1, -28.4, 37 , 0 );
setMoveKey( spep_2 + 204 -a, 1, -43.3, 13.7 , 0 );
setMoveKey( spep_2 + 206 -a, 1, -44.6, 40 , 0 );
setMoveKey( spep_2 + 208 -a, 1, -62, 47.7 , 0 );
setMoveKey( spep_2 + 210 -a, 1, -53.9, 62.5 , 0 );
setMoveKey( spep_2 + 212 -a, 1, -61.9, 65.1 , 0 );
setMoveKey( spep_2 + 214 -a, 1, -61.1, 99.1 , 0 );
setMoveKey( spep_2 + 216 -a, 1, -72.9, 117.7 , 0 );
setMoveKey( spep_2 + 218 -a, 1, -65.3, 140 , 0 );
setMoveKey( spep_2 + 220 -a, 1, -70.2, 150.2 , 0 );
setMoveKey( spep_2 + 222 -a, 1, -68.4, 170.5 , 0 );
setMoveKey( spep_2 + 224 -a, 1, -93.6, 289.4 , 0 );
setMoveKey( spep_2 + 226 -a, 1, -111.3, 419 , 0 );
setMoveKey( spep_2 + 228 -a, 1, -131, 530.5 , 0 );
setMoveKey( spep_2 + 230 -a, 1, -149.4, 633.3 , 0 );
setMoveKey( spep_2 + 232 -a, 1, -165, 726.8 , 0 );
setMoveKey( spep_2 + 234 -a, 1, -179.4, 811.5 , 0 );
setMoveKey( spep_2 + 235 -a, 1, -179.4, 811.5 , 0 );

setScaleKey( spep_2 + 176 -a, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 180 -a, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 182 -a, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 184 -a, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 186 -a, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 188 -a, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 190 -a, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 192 -a, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 194 -a, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 196 -a, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 198 -a, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 200 -a, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 202 -a, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 203 -a, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 204 -a, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 206 -a, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 208 -a, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 210 -a, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 212 -a, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 214 -a, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 216 -a, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 218 -a, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 220 -a, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 222 -a, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 224 -a, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 226 -a, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 228 -a, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 230 -a, 1, 3.17, 3.17 );
setScaleKey( spep_2 + 232 -a, 1, 3.53, 3.53 );
setScaleKey( spep_2 + 234 -a, 1, 3.85, 3.85 );
setScaleKey( spep_2 + 235 -a, 1, 3.85, 3.85 );

setRotateKey( spep_2 + 176 -a, 1, 89.2 );
setRotateKey( spep_2 + 203 -a, 1, 89.2 );
setRotateKey( spep_2 + 204 -a, 1, 98.2 );
setRotateKey( spep_2 + 206 -a, 1, 99.2 );
setRotateKey( spep_2 + 208 -a, 1, 100.3 );
setRotateKey( spep_2 + 210 -a, 1, 101.3 );
setRotateKey( spep_2 + 212 -a, 1, 102.3 );
setRotateKey( spep_2 + 214 -a, 1, 103.4 );
setRotateKey( spep_2 + 216 -a, 1, 104.4 );
setRotateKey( spep_2 + 218 -a, 1, 105.5 );
setRotateKey( spep_2 + 220 -a, 1, 106.5 );
setRotateKey( spep_2 + 222 -a, 1, 107.6 );
setRotateKey( spep_2 + 224 -a, 1, 110 );
setRotateKey( spep_2 + 226 -a, 1, 112.5 );
setRotateKey( spep_2 + 228 -a, 1, 115 );
setRotateKey( spep_2 + 230 -a, 1, 117.5 );
setRotateKey( spep_2 + 232 -a, 1, 120.1 );
setRotateKey( spep_2 + 234 -a, 1, 122.8 );
setRotateKey( spep_2 + 235 -a, 1, 122.8 );

-- ** ホワイトフェード ** --
entryFade( spep_2 + 40 -a, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 150 );
entryFade( spep_2 + 116 -a, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 150 );
entryFade( spep_2 + 204 -a, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 150 );

-- ** 黒背景 ** --
entryFadeBg(  spep_2,  0,  256,  0,  0, 0, 0,  255);  --黒背景

-- ** 音 ** --
playSe(  spep_2 + 40,  1001);
playSe(  spep_2 + 66,  4);
playSe(  spep_2 + 116,  1000);
playSe(  spep_2 + 180,  4);
playSe(  spep_2 + 204,  1002);

-- ** 次の準備 ** --
spep_3 = spep_2 + 256;

------------------------------------------------------
-- 構え(158F)
------------------------------------------------------

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_3 + 0, SP_08, 158, 0x100, -1, 0, 0, 0 );  --構え(ef_008)
setEffMoveKey( spep_3 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_3 + 158, kamae, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kamae, -1.0, 1.0 );
setEffScaleKey( spep_3 + 158, kamae, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kamae, 0 );
setEffRotateKey( spep_3 + 158, kamae, 0 );
setEffAlphaKey( spep_3 + 0, kamae, 255 );
setEffAlphaKey( spep_3 + 158, kamae, 255 );

-- ** 集中線 ** --
shuchusen_6 = entryEffectLife( spep_3 + 0,  906, 148, 0x100, -1, 0, 0, -14.4 );  --集中線
setEffShake( spep_0 + 0, shuchusen_6, 148, 25 );

setEffMoveKey( spep_3 + 0, shuchusen_6, 0, -14.4 , 0 );
setEffMoveKey( spep_3 + 142, shuchusen_6, 0, -14.4 , 0 );
setEffMoveKey( spep_3 + 144, shuchusen_6, 0, -14.4 , 0 );
setEffMoveKey( spep_3 + 146, shuchusen_6, 0, -14.4 , 0 );
setEffMoveKey( spep_3 + 148, shuchusen_6, 0, -14.4 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen_6, 1.21, 1.52 );
setEffScaleKey( spep_3 + 142, shuchusen_6, 1.21, 1.52 );
setEffScaleKey( spep_3 + 144, shuchusen_6, 1.17, 1.52 );
setEffScaleKey( spep_3 + 146, shuchusen_6, 1.12, 1.52 );
setEffScaleKey( spep_3 + 148, shuchusen_6, 1.07, 1.52 );

setEffRotateKey( spep_3 + 0, shuchusen_6, 0 );
setEffRotateKey( spep_3 + 148, shuchusen_6, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen_6, 191 );
setEffAlphaKey( spep_3 + 142, shuchusen_6, 191 );
setEffAlphaKey( spep_3 + 144, shuchusen_6, 213 );
setEffAlphaKey( spep_3 + 146, shuchusen_6, 234 );
setEffAlphaKey( spep_3 + 148, shuchusen_6, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_3 + 28, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_3 + 28, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_3 + 44,  190006, 68, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_3 + 44, ctgogo, 68, 10 );

setEffMoveKey( spep_3 + 44, ctgogo, -9.9, 515.5 , 0 );
setEffMoveKey( spep_3 + 112, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_3 + 44, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_3 + 104, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_3 + 106, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_3 + 108, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_3 + 110, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_3 + 112, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_3 + 44, ctgogo, 0 );
setEffRotateKey( spep_3 + 112, ctgogo, 0 );

setEffAlphaKey( spep_3 + 44, ctgogo, 255 );
setEffAlphaKey( spep_3 + 112, ctgogo, 255 );

-- ** 音 ** --
playSe( spep_3,  8);  --上昇
playSe( spep_3 + 44 , SE_04 );  --ゴゴゴ
playSe( spep_3 + 158 - 16,  13);  --アップ

-- ** ホワイトフェード ** --
entryFade( spep_3 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);
entryFade( spep_3 + 28 -a, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);
entryFade( spep_3 + 150, 8, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);

-- ** 黒背景 ** --
entryFadeBg(  spep_3,  0,  158,  0,  0,  0,  0,  255);  --黒背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 158;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen_7 = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen_7, 90, 20 );

setEffMoveKey( spep_4 + 0, shuchusen_7, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen_7, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen_7, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen_7, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen_7, 0 );
setEffRotateKey( spep_4 + 90, shuchusen_7, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen_7, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen_7, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_4 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_5 = spep_4 + 94;

------------------------------------------------------
-- 雷発射(86F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_5 + 0, SP_09, 86, 0x100, -1, 0, 0, 0 );  --発射(ef_009)
setEffMoveKey( spep_5 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_5 + 86, hassha, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hassha, -1.0, 1.0 );
setEffScaleKey( spep_5 + 86, hassha, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hassha, 0 );
setEffRotateKey( spep_5 + 86, hassha, 0 );
setEffAlphaKey( spep_5 + 0, hassha, 255 );
setEffAlphaKey( spep_5 + 85, hassha, 255 );
setEffAlphaKey( spep_5 + 86, hassha, 0 );

-- ** 集中線 ** --
shuchusen_8 = entryEffectLife( spep_5 + 0,  906, 18, 0x100, -1, 0, 0, 0 );  --集中線
setEffMoveKey( spep_5 + 0, shuchusen_8, 0, 0 , 0 );
setEffMoveKey( spep_5 + 18, shuchusen_8, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen_8, 1.1, 1.25 );
setEffScaleKey( spep_5 + 18, shuchusen_8, 1.1, 1.25 );

setEffRotateKey( spep_5 + 0, shuchusen_8, 0 );
setEffRotateKey( spep_5 + 18, shuchusen_8, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen_8, 255 );
setEffAlphaKey( spep_5 + 8, shuchusen_8, 255 );
setEffAlphaKey( spep_5 + 10, shuchusen_8, 204 );
setEffAlphaKey( spep_5 + 12, shuchusen_8, 153 );
setEffAlphaKey( spep_5 + 14, shuchusen_8, 102 );
setEffAlphaKey( spep_5 + 16, shuchusen_8, 51 );
setEffAlphaKey( spep_5 + 18, shuchusen_8, 0 );

-- ** 黒背景 ** --
entryFadeBg(  spep_5 + 0,  0,  86,  0,  0,  0,  0,  255);  --背景黒

-- ** ホワイトフェード ** --
entryFade( spep_5 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255);
entryFade( spep_5 + 48 -a, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255);

-- ** 音 ** --
playSe(  spep_5 + 0,  17);
playSe(  spep_5 + 50,  40);

-- ** 次の準備 ** --
spep_6 = spep_5 + 86 ;

------------------------------------------------------
-- 雷移動(48F)
------------------------------------------------------

-- ** エフェクト等 ** --
idou = entryEffectLife( spep_6 + 0, SP_10, 48, 0x100, -1, 0, 0, 0 );  --移動(ef_010)
setEffMoveKey( spep_6 + 0, idou, 0, 0 , 0 );
setEffMoveKey( spep_6 + 48, idou, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, idou, 1.0, 1.0 );
setEffScaleKey( spep_6 + 48, idou, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, idou, 0 );
setEffRotateKey( spep_6 + 48, idou, 0 );
setEffAlphaKey( spep_6 + 0, idou, 255 );
setEffAlphaKey( spep_6 + 47, idou, 255 );
setEffAlphaKey( spep_6 + 48, idou, 0 );

-- ** 黒背景 ** --
entryFadeBg(  spep_6 + 0,  0,  48,  0,  0,  0,  0,  255);  --黒背景

-- ** 音 ** --
playSe(  spep_6,  64);
setSeVolume( spep_6,  64,  70);
playSe(  spep_6+2,  65);
setSeVolume( spep_6+2,  65,  120);

-- ** 次の準備 ** --
spep_7 = spep_6 + 48;

------------------------------------------------------
-- 爆発(196F)
------------------------------------------------------

-- ** エフェクト等 ** --
bakuhatsu_f = entryEffect( spep_7 + 0, SP_11, 0x100, -1, 0, 0, 0 );  --爆発　手前(ef_011)
setEffMoveKey( spep_7 + 0, bakuhatsu_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 196, bakuhatsu_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, bakuhatsu_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 196, bakuhatsu_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, bakuhatsu_f, 0 );
setEffRotateKey( spep_7 + 196, bakuhatsu_f, 0 );
setEffAlphaKey( spep_7 + 0, bakuhatsu_f, 255 );
setEffAlphaKey( spep_7 + 196, bakuhatsu_f, 255 );

bakuhatsu_b = entryEffect( spep_7 + 0, SP_12, 0x80, -1, 0, 0, 0 );  --爆発　奥(ef_012)
setEffMoveKey( spep_7 + 0, bakuhatsu_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 196, bakuhatsu_b, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, bakuhatsu_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 196, bakuhatsu_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, bakuhatsu_b, 0 );
setEffRotateKey( spep_7 + 196, bakuhatsu_b, 0 );
setEffAlphaKey( spep_7 + 0, bakuhatsu_b, 255 );
setEffAlphaKey( spep_7 + 196, bakuhatsu_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 + 44 -a, 1, 0 );
changeAnime( spep_7 + 0, 1, 107 );

setMoveKey( spep_7 + 0, 1, -152, 221.5 , 0 );
--setMoveKey( spep_7 + 2, 1, -130.2, 179.8 , 0 );
setMoveKey( spep_7 + 4 -a, 1, -107.1, 135 , 0 );
setMoveKey( spep_7 + 6 -a, 1, -82.7, 87.2 , 0 );
setMoveKey( spep_7 + 8 -a, 1, -56.9, 36.2 , 0 );
setMoveKey( spep_7 + 10 -a, 1, -29.8, -17.8 , 0 );
setMoveKey( spep_7 + 12 -a, 1, -1.5, -74.9 , 0 );
setMoveKey( spep_7 + 14 -a, 1, 4.1, -86.3 , 0 );
setMoveKey( spep_7 + 16 -a, 1, 9.6, -97.7 , 0 );
setMoveKey( spep_7 + 18 -a, 1, 15.2, -109.3 , 0 );
setMoveKey( spep_7 + 20 -a, 1, 20.9, -120.9 , 0 );
setMoveKey( spep_7 + 22 -a, 1, 26.6, -132.7 , 0 );
setMoveKey( spep_7 + 24 -a, 1, 32.3, -144.6 , 0 );
setMoveKey( spep_7 + 26 -a, 1, 38.1, -156.5 , 0 );
setMoveKey( spep_7 + 28 -a, 1, 44, -168.6 , 0 );
setMoveKey( spep_7 + 30 -a, 1, 49.8, -180.8 , 0 );
setMoveKey( spep_7 + 32 -a, 1, 55.8, -193 , 0 );
setMoveKey( spep_7 + 34 -a, 1, 61.7, -205.4 , 0 );
setMoveKey( spep_7 + 36 -a, 1, 67.7, -217.9 , 0 );
setMoveKey( spep_7 + 38 -a, 1, 73.8, -230.5 , 0 );
setMoveKey( spep_7 + 44 -a, 1, 73.8, -230.5 , 0 );

setScaleKey( spep_7 + 0, 1, 0.26, 0.26 );
--setScaleKey( spep_7 + 2, 1, 0.32, 0.32 );
setScaleKey( spep_7 + 4 -a, 1, 0.38, 0.38 );
setScaleKey( spep_7 + 6 -a, 1, 0.45, 0.45 );
setScaleKey( spep_7 + 8 -a, 1, 0.52, 0.52 );
setScaleKey( spep_7 + 10 -a, 1, 0.59, 0.59 );
setScaleKey( spep_7 + 12 -a, 1, 0.67, 0.67 );
setScaleKey( spep_7 + 14 -a, 1, 0.69, 0.69 );
setScaleKey( spep_7 + 16 -a, 1, 0.7, 0.7 );
setScaleKey( spep_7 + 18 -a, 1, 0.72, 0.72 );
setScaleKey( spep_7 + 20 -a, 1, 0.73, 0.73 );
setScaleKey( spep_7 + 22 -a, 1, 0.75, 0.75 );
setScaleKey( spep_7 + 24 -a, 1, 0.77, 0.77 );
setScaleKey( spep_7 + 26 -a, 1, 0.79, 0.79 );
setScaleKey( spep_7 + 28 -a, 1, 0.8, 0.8 );
setScaleKey( spep_7 + 30 -a, 1, 0.82, 0.82 );
setScaleKey( spep_7 + 32 -a, 1, 0.84, 0.84 );
setScaleKey( spep_7 + 34 -a, 1, 0.85, 0.85 );
setScaleKey( spep_7 + 36 -a, 1, 0.87, 0.87 );
setScaleKey( spep_7 + 38 -a, 1, 0.89, 0.89 );
setScaleKey( spep_7 + 44 -a, 1, 0.89, 0.89 );

setRotateKey( spep_7 + 0, 1, 0 );
setRotateKey( spep_7 + 44 -a, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg(  spep_7,  0,  196,  0,  0,  0,  0,  255);   --背景黒

-- ** 音 ** --
playSe(  spep_7,  1026);
playSe(  spep_7+2,  1038);
setSeVolume(  spep_7+2,  1038,  120);
playSe(  spep_7+42,  1049);
playSe(  spep_7+44,  1024);
setSeVolume(  spep_7+44,  1024,  70);

-- ** ホワイトフェード ** --
entryFade( spep_7 + 42 -a, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 180);

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 50);
entryFade( spep_7 + 186, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_7 + 196 );

end