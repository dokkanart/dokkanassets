--ゴジータ(ドッカン後)_かめはめ波

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
SP_01 = 153498; --溜め
SP_02 = 153499; --発射
SP_03 = 153500; --着弾・手前
SP_04 = 153501; --着弾・奥
SP_05 = 153502; --背景

--敵側
SP_02r = 153503; --発射

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
-- 溜め(168F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_0 + 0, SP_01, 168, 0x100, -1, 0, 0, 0 );  --溜め(ef_001)
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 168, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 168, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 168, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 168, tame, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 20 -3,  906, 148 +3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 20 -3, shuchusen1, 132, 25 );

setEffMoveKey( spep_0 + 20 -3, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 168, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 20 -3, shuchusen1, 1.4, 1.8 );
setEffScaleKey( spep_0 + 168, shuchusen1, 1.4, 1.8 );

setEffRotateKey( spep_0 + 20 -3, shuchusen1, 0 );
setEffRotateKey( spep_0 + 168, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 20 -3, shuchusen1, 125 );
setEffAlphaKey( spep_0 + 110, shuchusen1, 125 );
setEffAlphaKey( spep_0 + 111, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 168, shuchusen1, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 26, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 26, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 42,  190006, 68, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 42, ctgogo, 68, 10 );

setEffMoveKey( spep_0 + 42, ctgogo, -9.9, 515.5 , 0 );
setEffMoveKey( spep_0 + 110, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 42, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 102, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 104, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_0 + 106, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_0 + 108, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_0 + 110, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_0 + 42, ctgogo, 0 );
setEffRotateKey( spep_0 + 110, ctgogo, 0 );

setEffAlphaKey( spep_0 + 42, ctgogo, 255 );
setEffAlphaKey( spep_0 + 110, ctgogo, 255 );

-- ** 音 ** --
playSe( spep_0 + 42, SE_04 );  --ゴゴゴ
playSe( spep_0 + 132, 1013 );  --バッ

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 168, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 20 -3, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 180 );  -- white fade
entryFade( spep_0 + 160, 6, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 168;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
--[[speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );]]

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen2, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen2, 0 );
setEffRotateKey( spep_1 + 90, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen2, 255 );

-- ** 極限用 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_1, SE_05);
speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_1, SE_05);
speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_1, SE_05);
speff = entryEffect( spep_1, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 次の準備 ** --
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 発射(88F)
------------------------------------------------------

-- ** エフェクト等 ** --
hanatsu = entryEffectLife( spep_2 + 0, SP_02, 88, 0x100, -1, 0, 0, 0 );  --発射(ef_002)
setEffMoveKey( spep_2 + 0, hanatsu, 0, 0 , 0 );
setEffMoveKey( spep_2 + 88, hanatsu, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hanatsu, 1.0, 1.0 );
setEffScaleKey( spep_2 + 88, hanatsu, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hanatsu, 0 );
setEffRotateKey( spep_2 + 88, hanatsu, 0 );
setEffAlphaKey( spep_2 + 0, hanatsu, 255 );
setEffAlphaKey( spep_2 + 88, hanatsu, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2 + 0,  906, 24, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen3, 24, 25 );

setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 24, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_2 + 24, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen3, 0 );
setEffRotateKey( spep_2 + 24, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 24, shuchusen3, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_2 + 16,  10012, 64, 0x100, -1, 0, 9.7, 282.4 );  --ズオッ
setEffShake( spep_2 + 16, ctzuo, 64, 20 );

setEffMoveKey( spep_2 + 16, ctzuo, 9.7, 282.4 , 0 );
setEffMoveKey( spep_2 + 18, ctzuo, 33, 331.8 , 0 );
setEffMoveKey( spep_2 + 20, ctzuo, 36.6, 393.3 , 0 );
setEffMoveKey( spep_2 + 22, ctzuo, 52.6, 377.3 , 0 );
setEffMoveKey( spep_2 + 70, ctzuo, 52.6, 377.3 , 0 );
setEffMoveKey( spep_2 + 72, ctzuo, 50.8, 397.2 , 0 );
setEffMoveKey( spep_2 + 74, ctzuo, 90.5, 375.7 , 0 );
setEffMoveKey( spep_2 + 76, ctzuo, 79.1, 405.2 , 0 );
setEffMoveKey( spep_2 + 78, ctzuo, 128.3, 373.9 , 0 );
setEffMoveKey( spep_2 + 80, ctzuo, 147.3, 373.1 , 0 );

setEffScaleKey( spep_2 + 16, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_2 + 18, ctzuo, 1.54, 1.54 );
setEffScaleKey( spep_2 + 20, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 + 70, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 + 72, ctzuo, 3.55, 3.55 );
setEffScaleKey( spep_2 + 74, ctzuo, 4.37, 4.37 );
setEffScaleKey( spep_2 + 76, ctzuo, 5.19, 5.19 );
setEffScaleKey( spep_2 + 78, ctzuo, 6.01, 6.01 );
setEffScaleKey( spep_2 + 80, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_2 + 16, ctzuo, 9.6 );
setEffRotateKey( spep_2 + 18, ctzuo, 18.3 );
setEffRotateKey( spep_2 + 20, ctzuo, 27.2 );
setEffRotateKey( spep_2 + 80, ctzuo, 27.2 );

setEffAlphaKey( spep_2 + 16, ctzuo, 255 );
setEffAlphaKey( spep_2 + 70, ctzuo, 255 );
setEffAlphaKey( spep_2 + 72, ctzuo, 204 );
setEffAlphaKey( spep_2 + 74, ctzuo, 153 );
setEffAlphaKey( spep_2 + 76, ctzuo, 102 );
setEffAlphaKey( spep_2 + 78, ctzuo, 51 );
setEffAlphaKey( spep_2 + 80, ctzuo, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 88, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 14, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 80, 6, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
SE0=playSe( spep_2 + 16, SE_07 );  --ズオッ

-- ** 次の準備 ** --
spep_3 = spep_2 + 88;

------------------------------------------------------
-- 着弾(96F)
------------------------------------------------------

-- ** エフェクト等 ** --
tyakudanf = entryEffectLife( spep_3 + 0, SP_03, 96, 0x100, -1, 0, 0, 0 );  --着弾・手前(ef_003)
setEffMoveKey( spep_3 + 0, tyakudanf, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, tyakudanf, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tyakudanf, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, tyakudanf, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tyakudanf, 0 );
setEffRotateKey( spep_3 + 96, tyakudanf, 0 );
setEffAlphaKey( spep_3 + 0, tyakudanf, 255 );
setEffAlphaKey( spep_3 + 95, tyakudanf, 255 );
setEffAlphaKey( spep_3 + 96, tyakudanf, 0 );

tyakudanb = entryEffectLife( spep_3 + 0, SP_04, 96, 0x80, -1, 0, 0, 0 );  --着弾・奥(ef_004)
setEffMoveKey( spep_3 + 0, tyakudanb, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, tyakudanb, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tyakudanb, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, tyakudanb, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tyakudanb, 0 );
setEffRotateKey( spep_3 + 96, tyakudanb, 0 );
setEffAlphaKey( spep_3 + 0, tyakudanb, 255 );
setEffAlphaKey( spep_3 + 95, tyakudanb, 255 );
setEffAlphaKey( spep_3 + 96, tyakudanb, 0 );

-- ** 書き文字エントリー ** --
ctzuo1 = entryEffectLife( spep_3 + 26,  10012, 24, 0x100, -1, 0, -17.7, 313 );  --ズオッ
setEffShake( spep_3 + 26, ctzuo1, 24, 20 );

setEffMoveKey( spep_3 + 26, ctzuo1, -17.7, 313 , 0 );
setEffMoveKey( spep_3 + 28, ctzuo1, -17.7, 313 , 0 );
setEffMoveKey( spep_3 + 30, ctzuo1, -35.7, 356 , 0 );
setEffMoveKey( spep_3 + 32, ctzuo1, -81.2, 407.4 , 0 );
setEffMoveKey( spep_3 + 34, ctzuo1, -64.3, 405.9 , 0 );
setEffMoveKey( spep_3 + 36, ctzuo1, -92.6, 407.5 , 0 );
setEffMoveKey( spep_3 + 38, ctzuo1, -75.6, 406.3 , 0 );
setEffMoveKey( spep_3 + 40, ctzuo1, -103.9, 407.7 , 0 );
setEffMoveKey( spep_3 + 42, ctzuo1, -87, 406.6 , 0 );
setEffMoveKey( spep_3 + 44, ctzuo1, -118.9, 421.2 , 0 );
setEffMoveKey( spep_3 + 46, ctzuo1, -82.5, 426.4 , 0 );
setEffMoveKey( spep_3 + 48, ctzuo1, -79.3, 433.2 , 0 );
setEffMoveKey( spep_3 + 50, ctzuo1, -79.3, 433.2 , 0 );

setEffScaleKey( spep_3 + 26, ctzuo1, 0.34, 0.34 );
setEffScaleKey( spep_3 + 28, ctzuo1, 0.34, 0.34 );
setEffScaleKey( spep_3 + 30, ctzuo1, 1.54, 1.54 );
setEffScaleKey( spep_3 + 32, ctzuo1, 2.73, 2.73 );
setEffScaleKey( spep_3 + 42, ctzuo1, 2.73, 2.73 );
setEffScaleKey( spep_3 + 44, ctzuo1, 4.09, 4.09 );
setEffScaleKey( spep_3 + 46, ctzuo1, 5.46, 5.46 );
setEffScaleKey( spep_3 + 48, ctzuo1, 6.82, 6.82 );
setEffScaleKey( spep_3 + 50, ctzuo1, 6.82, 6.82 );

setEffRotateKey( spep_3 + 26, ctzuo1, 6.9 );
setEffRotateKey( spep_3 + 28, ctzuo1, 6.9 );
setEffRotateKey( spep_3 + 30, ctzuo1, -3.4 );
setEffRotateKey( spep_3 + 32, ctzuo1, -13.5 );
setEffRotateKey( spep_3 + 34, ctzuo1, -13.8 );
setEffRotateKey( spep_3 + 36, ctzuo1, -14.1 );
setEffRotateKey( spep_3 + 38, ctzuo1, -14.4 );
setEffRotateKey( spep_3 + 40, ctzuo1, -14.7 );
setEffRotateKey( spep_3 + 42, ctzuo1, -15 );
setEffRotateKey( spep_3 + 44, ctzuo1, -11.8 );
setEffRotateKey( spep_3 + 46, ctzuo1, -8.5 );
setEffRotateKey( spep_3 + 48, ctzuo1, -5.2 );
setEffRotateKey( spep_3 + 50, ctzuo1, -5.2 );

setEffAlphaKey( spep_3 + 26, ctzuo1, 0 );
setEffAlphaKey( spep_3 + 27, ctzuo1, 255 );
setEffAlphaKey( spep_3 + 28, ctzuo1, 255 );
setEffAlphaKey( spep_3 + 44, ctzuo1, 255 );
setEffAlphaKey( spep_3 + 46, ctzuo1, 170 );
setEffAlphaKey( spep_3 + 48, ctzuo1, 85 );
setEffAlphaKey( spep_3 + 50, ctzuo1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 104 );  --ガード

setMoveKey( spep_3 + 0, 1, -6.7, -67.8 , 0 );
setMoveKey( spep_3 + 2, 1, 9.1, -44.4 , 0 );
setMoveKey( spep_3 + 4, 1, 17.6, -31.6 , 0 );
setMoveKey( spep_3 + 6, 1, 34.7, -1.3 , 0 );
setMoveKey( spep_3 + 8, 1, 44.4, 18.4 , 0 );
setMoveKey( spep_3 + 10, 1, 62.9, 47.6 , 0 );
setMoveKey( spep_3 + 12, 1, 69.9, 70.3 , 0 );
setMoveKey( spep_3 + 14, 1, 84.3, 85.4 , 0 );
setMoveKey( spep_3 + 16, 1, 86.8, 89.1 , 0 );

setScaleKey( spep_3 + 0, 1, 3.09, 3.09 );
setScaleKey( spep_3 + 2, 1, 2.95, 2.95 );
setScaleKey( spep_3 + 4, 1, 2.79, 2.79 );
setScaleKey( spep_3 + 6, 1, 2.62, 2.62 );
setScaleKey( spep_3 + 8, 1, 2.33, 2.33 );
setScaleKey( spep_3 + 10, 1, 2.01, 2.01 );
setScaleKey( spep_3 + 12, 1, 1.77, 1.77 );
setScaleKey( spep_3 + 14, 1, 1.72, 1.72 );
setScaleKey( spep_3 + 16, 1, 1.65, 1.65 );

setRotateKey( spep_3 + 0, 1, -2 );
setRotateKey( spep_3 + 2, 1, -2.1 );
setRotateKey( spep_3 + 4, 1, -2.3 );
setRotateKey( spep_3 + 6, 1, -2.4 );
setRotateKey( spep_3 + 8, 1, -2.5 );
setRotateKey( spep_3 + 10, 1, -2.6 );
setRotateKey( spep_3 + 12, 1, -2.8 );
setRotateKey( spep_3 + 14, 1, -3 );
setRotateKey( spep_3 + 16, 1, -3.2 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 98, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 16; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE0, 0 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
changeAnime( SP_dodge + 0, 1, 104 );  --ガード

setMoveKey( SP_dodge + 0, 1, 86.8, 89.1 , 0 );
setMoveKey( SP_dodge + 2, 1, 97.6, 109.2 , 0 );
setMoveKey( SP_dodge + 4, 1, 100.5, 117.9 , 0 );
setMoveKey( SP_dodge + 6, 1, 111.6, 135.1 , 0 );
setMoveKey( SP_dodge + 8, 1, 110.8, 140.7 , 0 );
setMoveKey( SP_dodge + 10, 1, 126.2, 162.9 , 0 );

setScaleKey( SP_dodge + 0, 1, 1.65, 1.65 );
setScaleKey( SP_dodge + 2, 1, 1.59, 1.59 );
setScaleKey( SP_dodge + 4, 1, 1.51, 1.51 );
setScaleKey( SP_dodge + 6, 1, 1.43, 1.43 );
setScaleKey( SP_dodge + 8, 1, 1.35, 1.35 );
setScaleKey( SP_dodge + 10, 1, 1.26, 1.26 );

setRotateKey( SP_dodge + 0, 1, -3.2 );
setRotateKey( SP_dodge + 2, 1, -3.3 );
setRotateKey( SP_dodge + 4, 1, -3.4 );
setRotateKey( SP_dodge + 6, 1, -3.5 );
setRotateKey( SP_dodge + 8, 1, -3.7 );
setRotateKey( SP_dodge + 10, 1, -3.8 );

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

-- ** 敵キャラクター ** --
setDisp( spep_3 + 38, 1, 0 );
changeAnime( spep_3 + 27, 1, 108 );  --吹き飛び
changeAnime( spep_3 + 28, 1, 108 );  --吹き飛び

setMoveKey( spep_3 + 18, 1, 97.6, 109.2 , 0 );
setMoveKey( spep_3 + 20, 1, 100.5, 117.9 , 0 );
setMoveKey( spep_3 + 22, 1, 111.6, 135.1 , 0 );
setMoveKey( spep_3 + 24, 1, 110.8, 140.7 , 0 );
setMoveKey( spep_3 + 26, 1, 126.2, 162.9 , 0 );
setMoveKey( spep_3 + 27, 1, 161.4, 202.5 , 0 ); --着弾
setMoveKey( spep_3 + 28, 1, 161.4, 202.5 , 0 );
setMoveKey( spep_3 + 29, 1, 159.2, 191.9 , 0 );
setMoveKey( spep_3 + 30, 1, 159.2, 191.9 , 0 );
setMoveKey( spep_3 + 31, 1, 117.7, 177.9 , 0 );
setMoveKey( spep_3 + 32, 1, 117.7, 177.9 , 0 );
setMoveKey( spep_3 + 33, 1, 145, 211 , 0 );
setMoveKey( spep_3 + 34, 1, 145, 211 , 0 );
setMoveKey( spep_3 + 35, 1, 142.8, 213 , 0 );
setMoveKey( spep_3 + 36, 1, 142.8, 213 , 0 );
setMoveKey( spep_3 + 38, 1, 146.1, 215.8 , 0 );

setScaleKey( spep_3 + 18, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 20, 1, 1.51, 1.51 );
setScaleKey( spep_3 + 22, 1, 1.43, 1.43 );
setScaleKey( spep_3 + 24, 1, 1.35, 1.35 );
setScaleKey( spep_3 + 26, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 27, 1, 1.44, 1.44 );  --着弾
setScaleKey( spep_3 + 28, 1, 1.44, 1.44 );
setScaleKey( spep_3 + 29, 1, 1.11, 1.11 );
setScaleKey( spep_3 + 30, 1, 1.11, 1.11 );
setScaleKey( spep_3 + 31, 1, 0.81, 0.81 );
setScaleKey( spep_3 + 32, 1, 0.81, 0.81 );
setScaleKey( spep_3 + 33, 1, 0.54, 0.54 );
setScaleKey( spep_3 + 34, 1, 0.54, 0.54 );
setScaleKey( spep_3 + 35, 1, 0.29, 0.29 );
setScaleKey( spep_3 + 36, 1, 0.29, 0.29 );
setScaleKey( spep_3 + 37, 1, 0.28, 0.28 );
setScaleKey( spep_3 + 38, 1, 0.28, 0.28 );

setRotateKey( spep_3 + 18, 1, -3.3 );
setRotateKey( spep_3 + 20, 1, -3.4 );
setRotateKey( spep_3 + 22, 1, -3.5 );
setRotateKey( spep_3 + 24, 1, -3.7 );
setRotateKey( spep_3 + 26, 1, -3.8 );
setRotateKey( spep_3 + 27, 1, 21 );  --着弾
setRotateKey( spep_3 + 28, 1, 21 );
setRotateKey( spep_3 + 29, 1, 18.5 );
setRotateKey( spep_3 + 30, 1, 18.5 );
setRotateKey( spep_3 + 31, 1, 16.1 );
setRotateKey( spep_3 + 32, 1, 16.1 );
setRotateKey( spep_3 + 33, 1, 13.8 );
setRotateKey( spep_3 + 34, 1, 13.8 );
setRotateKey( spep_3 + 35, 1, 11.6 );
setRotateKey( spep_3 + 36, 1, 11.6 );
setRotateKey( spep_3 + 37, 1, 11.4 );
setRotateKey( spep_3 + 38, 1, 11.4 );

-- ** 音 ** --
playSe( spep_3 + 28, SE_06);

-- ** ホワイトフェード ** --
entryFade( spep_3 + 27, 0, 3, 6, fcolor_r, fcolor_g, fcolor_b, 180 );  -- 薄いwhite fade
entryFade( spep_3 + 90, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 96;

------------------------------------------------------
-- 敵吹っ飛びシーン(100F)
------------------------------------------------------

-- ** 火山背景 ** --
haikei = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --火山背景
setEffMoveKey( spep_4 + 0, haikei, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, haikei, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, haikei, 1, 1 );
setEffScaleKey( spep_4 + 100, haikei, 1, 1 );

setEffRotateKey( spep_4 + 0, haikei, 0 );
setEffRotateKey( spep_4 + 100, haikei, 0 );

setEffAlphaKey( spep_4 + 0, haikei, 255 );
setEffAlphaKey( spep_4 + 100, haikei, 255 );

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
shuchusen3 = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen3, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen3, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen3, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen3, 0 );
setEffRotateKey( spep_4 + 46, shuchusen3, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen3, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen3, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen3, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen3, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen3, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen3, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen3, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen3, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen3, 0 );

shuchusen4 = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusen4, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen4, 0 );
setEffRotateKey( spep_4 + 100, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 100, shuchusen4, 255 );

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
setMoveKey( spep_4 + 100, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.2, 0.2 );
setScaleKey( spep_4 + 1, 1, 0.2, 0.2 );
setScaleKey( spep_4 + 2, 1, 0.25, 0.25 );
setScaleKey( spep_4 + 3, 1, 0.25, 0.25 );
setScaleKey( spep_4 + 4, 1, 0.46, 0.46 );
setScaleKey( spep_4 + 5, 1, 0.46, 0.46 );
setScaleKey( spep_4 + 6, 1, 0.55, 0.55 );
setScaleKey( spep_4 + 7, 1, 0.55, 0.55 );
setScaleKey( spep_4 + 8, 1, 0.71, 0.71 );
setScaleKey( spep_4 + 9, 1, 0.71, 0.71 );
setScaleKey( spep_4 + 10, 1, 0.97, 0.97 );
setScaleKey( spep_4 + 11, 1, 0.97, 0.97 );
setScaleKey( spep_4 + 12, 1, 1.1, 1.1 );  --画面にぶつかる
setScaleKey( spep_4 + 13, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 14, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 15, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 16, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 17, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 18, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 19, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 20, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 21, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 22, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 23, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 24, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 25, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 26, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 100, 1, 1.2, 1.2 );

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
setRotateKey( spep_4 + 100, 1, -40 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_10 );  --爆発音
playSe( spep_4 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 10 );
entryFade( spep_4 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_4 + 100 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 溜め(168F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_0 + 0, SP_01, 168, 0x100, -1, 0, 0, 0 );  --溜め(ef_001)
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 168, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 168, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 168, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 168, tame, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 20 -3,  906, 148 +3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 20 -3, shuchusen1, 132, 25 );

setEffMoveKey( spep_0 + 20 -3, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 168, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 20 -3, shuchusen1, 1.4, 1.8 );
setEffScaleKey( spep_0 + 168, shuchusen1, 1.4, 1.8 );

setEffRotateKey( spep_0 + 20 -3, shuchusen1, 0 );
setEffRotateKey( spep_0 + 168, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 20 -3, shuchusen1, 125 );
setEffAlphaKey( spep_0 + 110, shuchusen1, 125 );
setEffAlphaKey( spep_0 + 111, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 168, shuchusen1, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 26, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 26, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 42,  190006, 68, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 42, ctgogo, 68, 10 );

setEffMoveKey( spep_0 + 42, ctgogo, -9.9, 515.5 , 0 );
setEffMoveKey( spep_0 + 110, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 42, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 102, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 104, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_0 + 106, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_0 + 108, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_0 + 110, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_0 + 42, ctgogo, 0 );
setEffRotateKey( spep_0 + 110, ctgogo, 0 );

setEffAlphaKey( spep_0 + 42, ctgogo, 255 );
setEffAlphaKey( spep_0 + 110, ctgogo, 255 );

-- ** 音 ** --
playSe( spep_0 + 42, SE_04 );  --ゴゴゴ
playSe( spep_0 + 132, 1013 );  --バッ

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 168, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 20 -3, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 180 );  -- white fade
entryFade( spep_0 + 160, 6, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 168;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
--[[speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );]]

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen2, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen2, 0 );
setEffRotateKey( spep_1 + 90, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen2, 255 );

-- ** 極限用 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_1, SE_05);
speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_1, SE_05);
speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_1, SE_05);
speff = entryEffect( spep_1, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 次の準備 ** --
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 発射(88F)
------------------------------------------------------

-- ** エフェクト等 ** --
hanatsu = entryEffectLife( spep_2 + 0, SP_02r, 88, 0x100, -1, 0, 0, 0 );  --発射(ef_002)
setEffMoveKey( spep_2 + 0, hanatsu, 0, 0 , 0 );
setEffMoveKey( spep_2 + 88, hanatsu, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hanatsu, 1.0, 1.0 );
setEffScaleKey( spep_2 + 88, hanatsu, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hanatsu, 0 );
setEffRotateKey( spep_2 + 88, hanatsu, 0 );
setEffAlphaKey( spep_2 + 0, hanatsu, 255 );
setEffAlphaKey( spep_2 + 88, hanatsu, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2 + 0,  906, 24, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen3, 24, 25 );

setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 24, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_2 + 24, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen3, 0 );
setEffRotateKey( spep_2 + 24, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 24, shuchusen3, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_2 + 16,  10012, 64, 0x100, -1, 0, 9.7, 282.4 );  --ズオッ
setEffShake( spep_2 + 16, ctzuo, 64, 20 );

setEffMoveKey( spep_2 + 16, ctzuo, 9.7, 282.4 , 0 );
setEffMoveKey( spep_2 + 18, ctzuo, 33, 331.8 , 0 );
setEffMoveKey( spep_2 + 20, ctzuo, 36.6, 393.3 , 0 );
setEffMoveKey( spep_2 + 22, ctzuo, 52.6, 377.3 , 0 );
setEffMoveKey( spep_2 + 70, ctzuo, 52.6, 377.3 , 0 );
setEffMoveKey( spep_2 + 72, ctzuo, 50.8, 397.2 , 0 );
setEffMoveKey( spep_2 + 74, ctzuo, 90.5, 375.7 , 0 );
setEffMoveKey( spep_2 + 76, ctzuo, 79.1, 405.2 , 0 );
setEffMoveKey( spep_2 + 78, ctzuo, 128.3, 373.9 , 0 );
setEffMoveKey( spep_2 + 80, ctzuo, 147.3, 373.1 , 0 );

setEffScaleKey( spep_2 + 16, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_2 + 18, ctzuo, 1.54, 1.54 );
setEffScaleKey( spep_2 + 20, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 + 70, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 + 72, ctzuo, 3.55, 3.55 );
setEffScaleKey( spep_2 + 74, ctzuo, 4.37, 4.37 );
setEffScaleKey( spep_2 + 76, ctzuo, 5.19, 5.19 );
setEffScaleKey( spep_2 + 78, ctzuo, 6.01, 6.01 );
setEffScaleKey( spep_2 + 80, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_2 + 16, ctzuo, 9.6 );
setEffRotateKey( spep_2 + 18, ctzuo, 18.3 );
setEffRotateKey( spep_2 + 20, ctzuo, 27.2 );
setEffRotateKey( spep_2 + 80, ctzuo, 27.2 );

setEffAlphaKey( spep_2 + 16, ctzuo, 255 );
setEffAlphaKey( spep_2 + 70, ctzuo, 255 );
setEffAlphaKey( spep_2 + 72, ctzuo, 204 );
setEffAlphaKey( spep_2 + 74, ctzuo, 153 );
setEffAlphaKey( spep_2 + 76, ctzuo, 102 );
setEffAlphaKey( spep_2 + 78, ctzuo, 51 );
setEffAlphaKey( spep_2 + 80, ctzuo, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 88, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 14, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 80, 6, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
SE0=playSe( spep_2 + 16, SE_07 );  --ズオッ

-- ** 次の準備 ** --
spep_3 = spep_2 + 88;

------------------------------------------------------
-- 着弾(96F)
------------------------------------------------------

-- ** エフェクト等 ** --
tyakudanf = entryEffectLife( spep_3 + 0, SP_03, 96, 0x100, -1, 0, 0, 0 );  --着弾・手前(ef_003)
setEffMoveKey( spep_3 + 0, tyakudanf, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, tyakudanf, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tyakudanf, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, tyakudanf, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tyakudanf, 0 );
setEffRotateKey( spep_3 + 96, tyakudanf, 0 );
setEffAlphaKey( spep_3 + 0, tyakudanf, 255 );
setEffAlphaKey( spep_3 + 95, tyakudanf, 255 );
setEffAlphaKey( spep_3 + 96, tyakudanf, 0 );

tyakudanb = entryEffectLife( spep_3 + 0, SP_04, 96, 0x80, -1, 0, 0, 0 );  --着弾・奥(ef_004)
setEffMoveKey( spep_3 + 0, tyakudanb, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, tyakudanb, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tyakudanb, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, tyakudanb, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tyakudanb, 0 );
setEffRotateKey( spep_3 + 96, tyakudanb, 0 );
setEffAlphaKey( spep_3 + 0, tyakudanb, 255 );
setEffAlphaKey( spep_3 + 95, tyakudanb, 255 );
setEffAlphaKey( spep_3 + 96, tyakudanb, 0 );

-- ** 書き文字エントリー ** --
ctzuo1 = entryEffectLife( spep_3 + 26,  10012, 24, 0x100, -1, 0, -17.7, 313 );  --ズオッ
setEffShake( spep_3 + 26, ctzuo1, 24, 20 );

setEffMoveKey( spep_3 + 26, ctzuo1, -17.7, 313 , 0 );
setEffMoveKey( spep_3 + 28, ctzuo1, -17.7, 313 , 0 );
setEffMoveKey( spep_3 + 30, ctzuo1, -35.7, 356 , 0 );
setEffMoveKey( spep_3 + 32, ctzuo1, -81.2, 407.4 , 0 );
setEffMoveKey( spep_3 + 34, ctzuo1, -64.3, 405.9 , 0 );
setEffMoveKey( spep_3 + 36, ctzuo1, -92.6, 407.5 , 0 );
setEffMoveKey( spep_3 + 38, ctzuo1, -75.6, 406.3 , 0 );
setEffMoveKey( spep_3 + 40, ctzuo1, -103.9, 407.7 , 0 );
setEffMoveKey( spep_3 + 42, ctzuo1, -87, 406.6 , 0 );
setEffMoveKey( spep_3 + 44, ctzuo1, -118.9, 421.2 , 0 );
setEffMoveKey( spep_3 + 46, ctzuo1, -82.5, 426.4 , 0 );
setEffMoveKey( spep_3 + 48, ctzuo1, -79.3, 433.2 , 0 );
setEffMoveKey( spep_3 + 50, ctzuo1, -79.3, 433.2 , 0 );

setEffScaleKey( spep_3 + 26, ctzuo1, 0.34, 0.34 );
setEffScaleKey( spep_3 + 28, ctzuo1, 0.34, 0.34 );
setEffScaleKey( spep_3 + 30, ctzuo1, 1.54, 1.54 );
setEffScaleKey( spep_3 + 32, ctzuo1, 2.73, 2.73 );
setEffScaleKey( spep_3 + 42, ctzuo1, 2.73, 2.73 );
setEffScaleKey( spep_3 + 44, ctzuo1, 4.09, 4.09 );
setEffScaleKey( spep_3 + 46, ctzuo1, 5.46, 5.46 );
setEffScaleKey( spep_3 + 48, ctzuo1, 6.82, 6.82 );
setEffScaleKey( spep_3 + 50, ctzuo1, 6.82, 6.82 );

setEffRotateKey( spep_3 + 26, ctzuo1, 6.9 );
setEffRotateKey( spep_3 + 28, ctzuo1, 6.9 );
setEffRotateKey( spep_3 + 30, ctzuo1, -3.4 );
setEffRotateKey( spep_3 + 32, ctzuo1, -13.5 );
setEffRotateKey( spep_3 + 34, ctzuo1, -13.8 );
setEffRotateKey( spep_3 + 36, ctzuo1, -14.1 );
setEffRotateKey( spep_3 + 38, ctzuo1, -14.4 );
setEffRotateKey( spep_3 + 40, ctzuo1, -14.7 );
setEffRotateKey( spep_3 + 42, ctzuo1, -15 );
setEffRotateKey( spep_3 + 44, ctzuo1, -11.8 );
setEffRotateKey( spep_3 + 46, ctzuo1, -8.5 );
setEffRotateKey( spep_3 + 48, ctzuo1, -5.2 );
setEffRotateKey( spep_3 + 50, ctzuo1, -5.2 );

setEffAlphaKey( spep_3 + 26, ctzuo1, 0 );
setEffAlphaKey( spep_3 + 27, ctzuo1, 255 );
setEffAlphaKey( spep_3 + 28, ctzuo1, 255 );
setEffAlphaKey( spep_3 + 44, ctzuo1, 255 );
setEffAlphaKey( spep_3 + 46, ctzuo1, 170 );
setEffAlphaKey( spep_3 + 48, ctzuo1, 85 );
setEffAlphaKey( spep_3 + 50, ctzuo1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 104 );  --ガード

setMoveKey( spep_3 + 0, 1, -6.7, -67.8 , 0 );
setMoveKey( spep_3 + 2, 1, 9.1, -44.4 , 0 );
setMoveKey( spep_3 + 4, 1, 17.6, -31.6 , 0 );
setMoveKey( spep_3 + 6, 1, 34.7, -1.3 , 0 );
setMoveKey( spep_3 + 8, 1, 44.4, 18.4 , 0 );
setMoveKey( spep_3 + 10, 1, 62.9, 47.6 , 0 );
setMoveKey( spep_3 + 12, 1, 69.9, 70.3 , 0 );
setMoveKey( spep_3 + 14, 1, 84.3, 85.4 , 0 );
setMoveKey( spep_3 + 16, 1, 86.8, 89.1 , 0 );

setScaleKey( spep_3 + 0, 1, 3.09, 3.09 );
setScaleKey( spep_3 + 2, 1, 2.95, 2.95 );
setScaleKey( spep_3 + 4, 1, 2.79, 2.79 );
setScaleKey( spep_3 + 6, 1, 2.62, 2.62 );
setScaleKey( spep_3 + 8, 1, 2.33, 2.33 );
setScaleKey( spep_3 + 10, 1, 2.01, 2.01 );
setScaleKey( spep_3 + 12, 1, 1.77, 1.77 );
setScaleKey( spep_3 + 14, 1, 1.72, 1.72 );
setScaleKey( spep_3 + 16, 1, 1.65, 1.65 );

setRotateKey( spep_3 + 0, 1, -2 );
setRotateKey( spep_3 + 2, 1, -2.1 );
setRotateKey( spep_3 + 4, 1, -2.3 );
setRotateKey( spep_3 + 6, 1, -2.4 );
setRotateKey( spep_3 + 8, 1, -2.5 );
setRotateKey( spep_3 + 10, 1, -2.6 );
setRotateKey( spep_3 + 12, 1, -2.8 );
setRotateKey( spep_3 + 14, 1, -3 );
setRotateKey( spep_3 + 16, 1, -3.2 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 98, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 16; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE0, 0 );
pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
changeAnime( SP_dodge + 0, 1, 104 );  --ガード

setMoveKey( SP_dodge + 0, 1, 86.8, 89.1 , 0 );
setMoveKey( SP_dodge + 2, 1, 97.6, 109.2 , 0 );
setMoveKey( SP_dodge + 4, 1, 100.5, 117.9 , 0 );
setMoveKey( SP_dodge + 6, 1, 111.6, 135.1 , 0 );
setMoveKey( SP_dodge + 8, 1, 110.8, 140.7 , 0 );
setMoveKey( SP_dodge + 10, 1, 126.2, 162.9 , 0 );

setScaleKey( SP_dodge + 0, 1, 1.65, 1.65 );
setScaleKey( SP_dodge + 2, 1, 1.59, 1.59 );
setScaleKey( SP_dodge + 4, 1, 1.51, 1.51 );
setScaleKey( SP_dodge + 6, 1, 1.43, 1.43 );
setScaleKey( SP_dodge + 8, 1, 1.35, 1.35 );
setScaleKey( SP_dodge + 10, 1, 1.26, 1.26 );

setRotateKey( SP_dodge + 0, 1, -3.2 );
setRotateKey( SP_dodge + 2, 1, -3.3 );
setRotateKey( SP_dodge + 4, 1, -3.4 );
setRotateKey( SP_dodge + 6, 1, -3.5 );
setRotateKey( SP_dodge + 8, 1, -3.7 );
setRotateKey( SP_dodge + 10, 1, -3.8 );

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

-- ** 敵キャラクター ** --
setDisp( spep_3 + 38, 1, 0 );
changeAnime( spep_3 + 27, 1, 108 );  --吹き飛び
changeAnime( spep_3 + 28, 1, 108 );  --吹き飛び

setMoveKey( spep_3 + 18, 1, 97.6, 109.2 , 0 );
setMoveKey( spep_3 + 20, 1, 100.5, 117.9 , 0 );
setMoveKey( spep_3 + 22, 1, 111.6, 135.1 , 0 );
setMoveKey( spep_3 + 24, 1, 110.8, 140.7 , 0 );
setMoveKey( spep_3 + 26, 1, 126.2, 162.9 , 0 );
setMoveKey( spep_3 + 27, 1, 161.4, 202.5 , 0 ); --着弾
setMoveKey( spep_3 + 28, 1, 161.4, 202.5 , 0 );
setMoveKey( spep_3 + 29, 1, 159.2, 191.9 , 0 );
setMoveKey( spep_3 + 30, 1, 159.2, 191.9 , 0 );
setMoveKey( spep_3 + 31, 1, 117.7, 177.9 , 0 );
setMoveKey( spep_3 + 32, 1, 117.7, 177.9 , 0 );
setMoveKey( spep_3 + 33, 1, 145, 211 , 0 );
setMoveKey( spep_3 + 34, 1, 145, 211 , 0 );
setMoveKey( spep_3 + 35, 1, 142.8, 213 , 0 );
setMoveKey( spep_3 + 36, 1, 142.8, 213 , 0 );
setMoveKey( spep_3 + 38, 1, 146.1, 215.8 , 0 );

setScaleKey( spep_3 + 18, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 20, 1, 1.51, 1.51 );
setScaleKey( spep_3 + 22, 1, 1.43, 1.43 );
setScaleKey( spep_3 + 24, 1, 1.35, 1.35 );
setScaleKey( spep_3 + 26, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 27, 1, 1.44, 1.44 );  --着弾
setScaleKey( spep_3 + 28, 1, 1.44, 1.44 );
setScaleKey( spep_3 + 29, 1, 1.11, 1.11 );
setScaleKey( spep_3 + 30, 1, 1.11, 1.11 );
setScaleKey( spep_3 + 31, 1, 0.81, 0.81 );
setScaleKey( spep_3 + 32, 1, 0.81, 0.81 );
setScaleKey( spep_3 + 33, 1, 0.54, 0.54 );
setScaleKey( spep_3 + 34, 1, 0.54, 0.54 );
setScaleKey( spep_3 + 35, 1, 0.29, 0.29 );
setScaleKey( spep_3 + 36, 1, 0.29, 0.29 );
setScaleKey( spep_3 + 37, 1, 0.28, 0.28 );
setScaleKey( spep_3 + 38, 1, 0.28, 0.28 );

setRotateKey( spep_3 + 18, 1, -3.3 );
setRotateKey( spep_3 + 20, 1, -3.4 );
setRotateKey( spep_3 + 22, 1, -3.5 );
setRotateKey( spep_3 + 24, 1, -3.7 );
setRotateKey( spep_3 + 26, 1, -3.8 );
setRotateKey( spep_3 + 27, 1, 21 );  --着弾
setRotateKey( spep_3 + 28, 1, 21 );
setRotateKey( spep_3 + 29, 1, 18.5 );
setRotateKey( spep_3 + 30, 1, 18.5 );
setRotateKey( spep_3 + 31, 1, 16.1 );
setRotateKey( spep_3 + 32, 1, 16.1 );
setRotateKey( spep_3 + 33, 1, 13.8 );
setRotateKey( spep_3 + 34, 1, 13.8 );
setRotateKey( spep_3 + 35, 1, 11.6 );
setRotateKey( spep_3 + 36, 1, 11.6 );
setRotateKey( spep_3 + 37, 1, 11.4 );
setRotateKey( spep_3 + 38, 1, 11.4 );

-- ** 音 ** --
playSe( spep_3 + 28, SE_06);

-- ** ホワイトフェード ** --
entryFade( spep_3 + 27, 0, 3, 6, fcolor_r, fcolor_g, fcolor_b, 180 );  -- 薄いwhite fade
entryFade( spep_3 + 90, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 96;

------------------------------------------------------
-- 敵吹っ飛びシーン(100F)
------------------------------------------------------

-- ** 火山背景 ** --
haikei = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --火山背景
setEffMoveKey( spep_4 + 0, haikei, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, haikei, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, haikei, 1, 1 );
setEffScaleKey( spep_4 + 100, haikei, 1, 1 );

setEffRotateKey( spep_4 + 0, haikei, 0 );
setEffRotateKey( spep_4 + 100, haikei, 0 );

setEffAlphaKey( spep_4 + 0, haikei, 255 );
setEffAlphaKey( spep_4 + 100, haikei, 255 );

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
shuchusen3 = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen3, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen3, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen3, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen3, 0 );
setEffRotateKey( spep_4 + 46, shuchusen3, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen3, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen3, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen3, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen3, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen3, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen3, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen3, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen3, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen3, 0 );

shuchusen4 = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusen4, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen4, 0 );
setEffRotateKey( spep_4 + 100, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 100, shuchusen4, 255 );

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
setMoveKey( spep_4 + 100, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.2, 0.2 );
setScaleKey( spep_4 + 1, 1, 0.2, 0.2 );
setScaleKey( spep_4 + 2, 1, 0.25, 0.25 );
setScaleKey( spep_4 + 3, 1, 0.25, 0.25 );
setScaleKey( spep_4 + 4, 1, 0.46, 0.46 );
setScaleKey( spep_4 + 5, 1, 0.46, 0.46 );
setScaleKey( spep_4 + 6, 1, 0.55, 0.55 );
setScaleKey( spep_4 + 7, 1, 0.55, 0.55 );
setScaleKey( spep_4 + 8, 1, 0.71, 0.71 );
setScaleKey( spep_4 + 9, 1, 0.71, 0.71 );
setScaleKey( spep_4 + 10, 1, 0.97, 0.97 );
setScaleKey( spep_4 + 11, 1, 0.97, 0.97 );
setScaleKey( spep_4 + 12, 1, 1.1, 1.1 );  --画面にぶつかる
setScaleKey( spep_4 + 13, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 14, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 15, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 16, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 17, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 18, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 19, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 20, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 21, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 22, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 23, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 24, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 25, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 26, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 100, 1, 1.2, 1.2 );

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
setRotateKey( spep_4 + 100, 1, -40 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_10 );  --爆発音
playSe( spep_4 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 10 );
entryFade( spep_4 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_4 + 100 );

end


