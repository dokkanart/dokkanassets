--1020620_超サイヤ人3孫悟空_劇場版斜め撃ちかめはめ波
--sp_effect_a1_00252

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
SP_01 = 156032;	 --構え〜溜め	ef_001
SP_02 = 156033;	 --発射	ef_002
SP_03 = 156034;	 --敵へのビーム・手前	ef_003
SP_04 = 156035;	 --敵へのビーム・奥	ef_004

--敵側
SP_01r = 156036; --敵用：構え〜溜め	ef_001r
SP_02r = 156037; --敵用：発射	ef_002r

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
-- 構え〜溜め(146F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 146, 0x100, -1, 0, 0, 0 ); --溜め(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 146, first_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 146, first_f, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 146, first_f, 255 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 146, first_f, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 17, 906, 129, 0x100, -1, 0, 0, 0 ); --集中線
setEffShake( spep_0 + 17, shuchusen1, 129, 25 );
setEffMoveKey( spep_0 + 17, shuchusen1, 0, 0, 0 );
setEffMoveKey( spep_0 + 146, shuchusen1, 0, 0, 0 );
setEffScaleKey( spep_0 + 17, shuchusen1, 1.6, 2.4 );
setEffScaleKey( spep_0 + 146, shuchusen1, 1.6, 2.4 );
setEffAlphaKey( spep_0 + 17, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 146, shuchusen1, 255 );
setEffRotateKey( spep_0 + 17, shuchusen1, 0 );
setEffRotateKey( spep_0 + 146, shuchusen1, 0 );

spep_x = spep_0 + 50;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctzuzun = entryEffectLife( spep_0 -3 + 22,  10013, 40, 0x100, -1, 0, 20.1, 249.8 ); --ズズズンッ
setEffMoveKey( spep_0 -3 + 22, ctzuzun, 20.1, 249.8 , 0 );
setEffMoveKey( spep_0 -3 + 24, ctzuzun, 29.2, 317.4 , 0 );
setEffMoveKey( spep_0 -3 + 26, ctzuzun, 51.2, 394.7 , 0 );
setEffMoveKey( spep_0 -3 + 28, ctzuzun, 38.3, 377.6 , 0 );
setEffMoveKey( spep_0 -3 + 30, ctzuzun, 43.3, 371.9 , 0 );
setEffMoveKey( spep_0 -3 + 32, ctzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 34, ctzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 36, ctzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 38, ctzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 40, ctzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 42, ctzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 44, ctzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 46, ctzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 48, ctzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 50, ctzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 52, ctzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 54, ctzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 56, ctzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 58, ctzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 60, ctzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 62, ctzuzun, 30.9, 354.4 , 0 );

setEffScaleKey( spep_0 -3 + 22, ctzuzun, 1.11, 1.11 );
setEffScaleKey( spep_0 -3 + 24, ctzuzun, 1.99, 1.99 );
setEffScaleKey( spep_0 -3 + 26, ctzuzun, 2.83, 2.83 );
setEffScaleKey( spep_0 -3 + 28, ctzuzun, 2.92, 2.92 );
setEffScaleKey( spep_0 -3 + 62, ctzuzun, 2.92, 2.92 );

setEffRotateKey( spep_0 -3 + 22, ctzuzun, -5 );
setEffRotateKey( spep_0 -3 + 62, ctzuzun, -5 );

setEffAlphaKey( spep_0 -3 + 22, ctzuzun, 255 );
setEffAlphaKey( spep_0 -3 + 50, ctzuzun, 255 );
setEffAlphaKey( spep_0 -3 + 52, ctzuzun, 212 );
setEffAlphaKey( spep_0 -3 + 54, ctzuzun, 170 );
setEffAlphaKey( spep_0 -3 + 56, ctzuzun, 128 );
setEffAlphaKey( spep_0 -3 + 58, ctzuzun, 85 );
setEffAlphaKey( spep_0 -3 + 60, ctzuzun, 43 );
setEffAlphaKey( spep_0 -3 + 62, ctzuzun, 0 );

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

-- ** 音 ** --
playSe( spep_0 + 18, SE_03 );  --気溜め
playSe( spep_0 + 38, SE_03 );  --気溜め
playSe( spep_0 + 58, SE_03 );  --気溜め
playSe( spep_0 + 68, SE_04 );  --ゴゴゴ

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 17, 0, 129, 0, 0, 0, 0, 180);       -- ベース暗め　背景

-- ** 白背景 ** --
entryFade( spep_0 + 0, 0, 2, 2, 245, 245, 245, 255 );
entryFade( spep_0 + 17, 0, 2, 4, 245, 245, 245, 255 );
entryFade( spep_0 + 140, 6, 2, 0, 245, 245, 245, 255 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 148;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
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
--playSe( spep_1 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 発射(86F)
------------------------------------------------------
-- ** エフェクト等 ** --
first_f = entryEffect( spep_2 + 0, SP_02, 0, -1, 0, 0, 0 ); --発射(ef_002)
setEffMoveKey( spep_2 + 0, first_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 86, first_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 86, first_f, 1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, first_f, 255 );
setEffAlphaKey( spep_2 + 86, first_f, 255 );
setEffRotateKey( spep_2 + 0, first_f, 0 );
setEffRotateKey( spep_2 + 86, first_f, 0 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 0, 906, 18, 0x100, -1, 0, 0, 0 ); --集中線
setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0, 0 );
setEffMoveKey( spep_2 + 18, shuchusen2, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, shuchusen2, 1.2, 1.2 );
setEffScaleKey( spep_2 + 18, shuchusen2, 1.2, 1.2 );
setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 18, shuchusen2, 255 );
setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 18, shuchusen2, 0 );

-- ** 書き文字エントリー ** --
ctzuo1 = entryEffectLife( spep_2 -3 + 20,  10012, 50, 0x100, -1, 0, 9.6, 282.4 );  --ズオッ
setEffMoveKey( spep_2 -3 + 20, ctzuo1, 9.6, 282.4 , 0 );
setEffMoveKey( spep_2 -3 + 22, ctzuo1, 32.9, 331.8 , 0 );
setEffMoveKey( spep_2 -3 + 24, ctzuo1, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2 -3 + 26, ctzuo1, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 28, ctzuo1, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2 -3 + 30, ctzuo1, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 32, ctzuo1, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctzuo1, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 36, ctzuo1, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2 -3 + 38, ctzuo1, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 40, ctzuo1, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2 -3 + 42, ctzuo1, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 44, ctzuo1, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctzuo1, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctzuo1, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctzuo1, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctzuo1, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctzuo1, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 56, ctzuo1, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2 -3 + 58, ctzuo1, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 60, ctzuo1, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2 -3 + 62, ctzuo1, 71.3, 376.4 , 0 );
setEffMoveKey( spep_2 -3 + 64, ctzuo1, 64.6, 401.1 , 0 );
setEffMoveKey( spep_2 -3 + 66, ctzuo1, 109.1, 374.6 , 0 );
setEffMoveKey( spep_2 -3 + 68, ctzuo1, 92.7, 409 , 0 );
setEffMoveKey( spep_2 -3 + 70, ctzuo1, 106.9, 412.9 , 0 );

setEffScaleKey( spep_2 -3 + 20, ctzuo1, 0.34, 0.34 );
setEffScaleKey( spep_2 -3 + 22, ctzuo1, 1.54, 1.54 );
setEffScaleKey( spep_2 -3 + 24, ctzuo1, 2.73, 2.73 );
setEffScaleKey( spep_2 -3 + 60, ctzuo1, 2.73, 2.73 );
setEffScaleKey( spep_2 -3 + 62, ctzuo1, 3.55, 3.55 );
setEffScaleKey( spep_2 -3 + 64, ctzuo1, 4.37, 4.37 );
setEffScaleKey( spep_2 -3 + 66, ctzuo1, 5.19, 5.19 );
setEffScaleKey( spep_2 -3 + 68, ctzuo1, 6.01, 6.01 );
setEffScaleKey( spep_2 -3 + 70, ctzuo1, 6.82, 6.82 );

setEffRotateKey( spep_2 -3 + 20, ctzuo1, 9.7 );
setEffRotateKey( spep_2 -3 + 22, ctzuo1, 18.4 );
setEffRotateKey( spep_2 -3 + 24, ctzuo1, 27.2 );
setEffRotateKey( spep_2 -3 + 70, ctzuo1, 27.2 );

setEffAlphaKey( spep_2 -3 + 20, ctzuo1, 255 );
setEffAlphaKey( spep_2 -3 + 60, ctzuo1, 255 );
setEffAlphaKey( spep_2 -3 + 62, ctzuo1, 204 );
setEffAlphaKey( spep_2 -3 + 64, ctzuo1, 153 );
setEffAlphaKey( spep_2 -3 + 66, ctzuo1, 102 );
setEffAlphaKey( spep_2 -3 + 68, ctzuo1, 51 );
setEffAlphaKey( spep_2 -3 + 70, ctzuo1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 86, 0, 0, 0, 0, 180 ); --黒背景

-- ** 白背景 ** --
entryFade( spep_2 + 0, 0, 2, 3, 245, 245, 245, 255);
entryFade( spep_2 + 14, 0, 2, 4, 245, 245, 245, 255);
entryFade( spep_2 + 80, 6, 2, 0, 245, 245, 245, 255);

-- ** 音 ** --
SE01 = playSe( spep_2 + 16, SE_07 );  --ズオッ

-- ** 次の準備 ** --
spep_3 = spep_2 + 86;

--------------------------------------
--敵へのビーム(96F)
--------------------------------------
-- ** エフェクト等 ** --
first_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); --着弾・手前(ef_003)
setEffMoveKey( spep_3 + 0,  first_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 96, first_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, first_f, 1.0, 1.0 );
setEffAlphaKey( spep_3 + 0, first_f, 255 );
setEffAlphaKey( spep_3 + 96, first_f, 255 );
setEffRotateKey( spep_3 + 0, first_f, 0 );
setEffRotateKey( spep_3 + 96, first_f, 0 );

first_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); --着弾・奥(ef_004)
setEffMoveKey( spep_3 + 0, first_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 96, first_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, first_b, 1.0, 1.0 );
setEffAlphaKey( spep_3 + 0, first_b, 255 );
setEffAlphaKey( spep_3 + 96, first_b, 255 );
setEffRotateKey( spep_3 + 0, first_b, 0 );
setEffRotateKey( spep_3 + 96, first_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 104 );

setMoveKey( spep_3 + 0, 1, -13.9, -81.7 , 0 );
setMoveKey( spep_3 + 1, 1, -6.8, -67.7 , 0 );
setMoveKey( spep_3 + 2, 1, 9, -44.4 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 17.5, -31.5 , 0 );
setMoveKey( spep_3 -3 + 7, 1, 17.5, -31.5 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 34.6, -1.3 , 0 );
setMoveKey( spep_3 -3 + 9, 1, 34.6, -1.3 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 44.4, 14.5 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 62.8, 47.7 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 73.8, 70.3 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 84.2, 85.5 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 86.8, 93.1 , 0 );

setScaleKey( spep_3 + 0, 1, 3.09, 3.09 );
setScaleKey( spep_3 + 1, 1, 2.95, 2.95 );
setScaleKey( spep_3 + 2, 1, 2.79, 2.79 );
setScaleKey( spep_3 -3 + 6, 1, 2.62, 2.62 );
setScaleKey( spep_3 -3 + 7, 1, 2.62, 2.62 );
setScaleKey( spep_3 -3 + 8, 1, 2.43, 2.43 );
setScaleKey( spep_3 -3 + 9, 1, 2.43, 2.43 );
setScaleKey( spep_3 -3 + 10, 1, 2.23, 2.23 );
setScaleKey( spep_3 -3 + 12, 1, 2.01, 2.01 );
setScaleKey( spep_3 -3 + 14, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 16, 1, 1.71, 1.71 );
setScaleKey( spep_3 -3 + 18, 1, 1.65, 1.65 );

setRotateKey( spep_3 + 0, 1, -2 );
setRotateKey( spep_3 + 1, 1, -2.1 );
setRotateKey( spep_3 + 2, 1, -2.3 );
setRotateKey( spep_3 -3 + 6, 1, -2.4 );
setRotateKey( spep_3 -3 + 7, 1, -2.4 );
setRotateKey( spep_3 -3 + 8, 1, -2.5 );
setRotateKey( spep_3 -3 + 9, 1, -2.5 );
setRotateKey( spep_3 -3 + 10, 1, -2.6 );
setRotateKey( spep_3 -3 + 12, 1, -2.8 );
setRotateKey( spep_3 -3 + 14, 1, -2.9 );
setRotateKey( spep_3 -3 + 16, 1, -3 );
setRotateKey( spep_3 -3 + 18, 1, -3.1 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, 0, 0, 0, 180 ); --黒背景

-- ** 白背景 ** --
entryFade( spep_3 + 0, 0, 2, 2, 245, 245, 245, 255);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 16; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE01, 0);

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
changeAnime( SP_dodge + 0, 1, 104 );  --ガード

setMoveKey( SP_dodge + 0, 1, 86.8, 93.1 , 0 );
setMoveKey( SP_dodge + 2, 1, 97.5, 109.2 , 0 );
setMoveKey( SP_dodge + 4, 1, 96.5, 113.9 , 0 );
setMoveKey( SP_dodge + 6, 1, 111.6, 135.1 , 0 );
setMoveKey( SP_dodge + 8, 1, 114.8, 144.7 , 0 );
setMoveKey( SP_dodge + 10, 1, 126.3, 162.9 , 0 );

setScaleKey( SP_dodge + 0, 1, 1.65, 1.65 );
setScaleKey( SP_dodge + 2, 1, 1.58, 1.58 );
setScaleKey( SP_dodge + 4, 1, 1.51, 1.51 );
setScaleKey( SP_dodge + 6, 1, 1.43, 1.43 );
setScaleKey( SP_dodge + 8, 1, 1.35, 1.35 );
setScaleKey( SP_dodge + 10, 1, 1.26, 1.26 );

setRotateKey( SP_dodge + 0, 1, -3.1 );
setRotateKey( SP_dodge + 2, 1, -3.3 );
setRotateKey( SP_dodge + 4, 1, -3.4 );
setRotateKey( SP_dodge + 6, 1, -3.5 );
setRotateKey( SP_dodge + 8, 1, -3.6 );
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

-- ** 書き文字エントリー ** --
ctzuo2 = entryEffectLife( spep_3 -3 + 30,  10012, 20, 0x100, -1, 0, -17.7, 313.1 ); --ズオオッ
setEffMoveKey( spep_3 -3 + 30, ctzuo2, -17.7, 313.1 , 0 );
setEffMoveKey( spep_3 -3 + 32, ctzuo2, -35.9, 355.9 , 0 );
setEffMoveKey( spep_3 -3 + 34, ctzuo2, -81.2, 407.2 , 0 );
setEffMoveKey( spep_3 -3 + 36, ctzuo2, -64.4, 405.8 , 0 );
setEffMoveKey( spep_3 -3 + 38, ctzuo2, -92.7, 407.4 , 0 );
setEffMoveKey( spep_3 -3 + 40, ctzuo2, -75.8, 406.1 , 0 );
setEffMoveKey( spep_3 -3 + 42, ctzuo2, -104, 407.5 , 0 );
setEffMoveKey( spep_3 -3 + 44, ctzuo2, -87.1, 406.5 , 0 );
setEffMoveKey( spep_3 -3 + 46, ctzuo2, -119, 421 , 0 );
setEffMoveKey( spep_3 -3 + 48, ctzuo2, -82.7, 426.2 , 0 );
setEffMoveKey( spep_3 -3 + 50, ctzuo2, -79.7, 432.9 , 0 );

setEffScaleKey( spep_3 -3 + 30, ctzuo2, 0.34, 0.34 );
setEffScaleKey( spep_3 -3 + 32, ctzuo2, 1.54, 1.54 );
setEffScaleKey( spep_3 -3 + 34, ctzuo2, 2.73, 2.73 );
setEffScaleKey( spep_3 -3 + 44, ctzuo2, 2.73, 2.73 );
setEffScaleKey( spep_3 -3 + 46, ctzuo2, 4.09, 4.09 );
setEffScaleKey( spep_3 -3 + 48, ctzuo2, 5.46, 5.46 );
setEffScaleKey( spep_3 -3 + 50, ctzuo2, 6.82, 6.82 );

setEffRotateKey( spep_3 -3 + 30, ctzuo2, 6.9 );
setEffRotateKey( spep_3 -3 + 32, ctzuo2, -3.3 );
setEffRotateKey( spep_3 -3 + 34, ctzuo2, -13.5 );
setEffRotateKey( spep_3 -3 + 36, ctzuo2, -13.8 );
setEffRotateKey( spep_3 -3 + 38, ctzuo2, -14.1 );
setEffRotateKey( spep_3 -3 + 40, ctzuo2, -14.4 );
setEffRotateKey( spep_3 -3 + 42, ctzuo2, -14.7 );
setEffRotateKey( spep_3 -3 + 44, ctzuo2, -15 );
setEffRotateKey( spep_3 -3 + 46, ctzuo2, -11.7 );
setEffRotateKey( spep_3 -3 + 48, ctzuo2, -8.5 );
setEffRotateKey( spep_3 -3 + 50, ctzuo2, -5.2 );

setEffAlphaKey( spep_3 -3 + 30, ctzuo2, 255 );
setEffAlphaKey( spep_3 -3 + 44, ctzuo2, 255 );
setEffAlphaKey( spep_3 -3 + 46, ctzuo2, 170 );
setEffAlphaKey( spep_3 -3 + 48, ctzuo2, 85 );
setEffAlphaKey( spep_3 -3 + 50, ctzuo2, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 36, 1, 0 );
changeAnime( spep_3 -3 + 30, 1, 108 );

setMoveKey( spep_3 -3 + 20, 1, 97.5, 109.2 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 96.5, 113.9 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 111.6, 135.1 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 114.8, 144.7 , 0 );
setMoveKey( spep_3 -3 + 29, 1, 126.3, 162.9 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 157.2, 198.6 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 159, 191.9 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 121.5, 181.9 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 144.8, 211 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 138.7, 208.9 , 0 );
setMoveKey( spep_3 -3 + 39, 1, 138.7, 208.9 , 0 );

setScaleKey( spep_3 -3 + 20, 1, 1.58, 1.58 );
setScaleKey( spep_3 -3 + 22, 1, 1.51, 1.51 );
setScaleKey( spep_3 -3 + 24, 1, 1.43, 1.43 );
setScaleKey( spep_3 -3 + 26, 1, 1.35, 1.35 );
setScaleKey( spep_3 -3 + 29, 1, 1.26, 1.26 );
setScaleKey( spep_3 -3 + 30, 1, 1.44, 1.44 );
setScaleKey( spep_3 -3 + 32, 1, 1.11, 1.11 );
setScaleKey( spep_3 -3 + 34, 1, 0.81, 0.81 );
setScaleKey( spep_3 -3 + 36, 1, 0.53, 0.53 );
setScaleKey( spep_3 -3 + 38, 1, 0.28, 0.28 );
setScaleKey( spep_3 -3 + 39, 1, 0.28, 0.28 );

setRotateKey( spep_3 -3 + 20, 1, -3.3 );
setRotateKey( spep_3 -3 + 22, 1, -3.4 );
setRotateKey( spep_3 -3 + 24, 1, -3.5 );
setRotateKey( spep_3 -3 + 26, 1, -3.6 );
setRotateKey( spep_3 -3 + 29, 1, -3.8 );
setRotateKey( spep_3 -3 + 30, 1, 21 );
setRotateKey( spep_3 -3 + 32, 1, 18.5 );
setRotateKey( spep_3 -3 + 34, 1, 16.1 );
setRotateKey( spep_3 -3 + 36, 1, 13.8 );
setRotateKey( spep_3 -3 + 38, 1, 11.6 );
setRotateKey( spep_3 -3 + 39, 1, 11.6 );

-- ** 白背景 ** --
entryFade( spep_3 + 27, 0, 2, 4, 245, 245, 245, 180);
entryFade( spep_3 + 88, 8, 2, 0, 245, 245, 245, 255);

-- ** 音 ** --
playSe( spep_3 + 28, SE_06);

-- ** 次の準備 ** --
spep_4 = spep_3 + 96;


------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 100, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 100, finish_f, 255 );

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

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 100, 1, 0 );
changeAnime( spep_4 + 0, 1, 107 );

setMoveKey( spep_4 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_4 -3 + 5, 1, -3.4, -57 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_4 -3 + 7, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_4 -3 + 9, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_4 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_4 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 5, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 -3 + 7, 1, 0.7, 0.7 );
setScaleKey( spep_4 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 -3 + 9, 1, 0.93, 0.93 );
setScaleKey( spep_4 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_4 + 0, 1, 105 );
setRotateKey( spep_4 -3 + 4, 1, 240 );
setRotateKey( spep_4 -3 + 5, 1, 240 );
setRotateKey( spep_4 -3 + 6, 1, 405 );
setRotateKey( spep_4 -3 + 7, 1, 405 );
setRotateKey( spep_4 -3 + 8, 1, 600 );
setRotateKey( spep_4 -3 + 9, 1, 600 );
setRotateKey( spep_4 -3 + 10, 1, 825 );
setRotateKey( spep_4 -3 + 12, 1, 1080 );
setRotateKey( spep_4 + 100, 1, 1080 );


-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_4 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_4 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_4 + 100, shuchusen_bl, 255 );

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

-- ** 音 ** --
--敵が吹っ飛ぶ
stopSe( spep_4 + 16, SE5, 0 );
stopSe( spep_4 + 16, SE6, 0 );

--ガッ
playSe( spep_4 + 8, 1054 );
setSeVolume( spep_4 + 8, 1054, 126 );
playSe( spep_4 + 8, 1023 );
setSeVolume( spep_4 + 8, 1023, 76 );

-- ** 背景 ** --
--entryFadeBg( spep_4 + 0, 0, 100, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 10 );
endPhase( spep_4 + 98 );
else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 構え〜溜め(146F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 146, 0x100, -1, 0, 0, 0 ); --溜め(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 146, first_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 146, first_f, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 146, first_f, 255 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 146, first_f, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 17, 906, 129, 0x100, -1, 0, 0, 0 ); --集中線
setEffShake( spep_0 + 17, shuchusen1, 129, 25 );
setEffMoveKey( spep_0 + 17, shuchusen1, 0, 0, 0 );
setEffMoveKey( spep_0 + 146, shuchusen1, 0, 0, 0 );
setEffScaleKey( spep_0 + 17, shuchusen1, 1.6, 2.4 );
setEffScaleKey( spep_0 + 146, shuchusen1, 1.6, 2.4 );
setEffAlphaKey( spep_0 + 17, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 146, shuchusen1, 255 );
setEffRotateKey( spep_0 + 17, shuchusen1, 0 );
setEffRotateKey( spep_0 + 146, shuchusen1, 0 );

spep_x = spep_0 + 50;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctzuzun = entryEffectLife( spep_0 -3 + 22,  10013, 40, 0x100, -1, 0, 20.1, 249.8 ); --ズズズンッ
setEffMoveKey( spep_0 -3 + 22, ctzuzun, 20.1, 249.8 , 0 );
setEffMoveKey( spep_0 -3 + 24, ctzuzun, 29.2, 317.4 , 0 );
setEffMoveKey( spep_0 -3 + 26, ctzuzun, 51.2, 394.7 , 0 );
setEffMoveKey( spep_0 -3 + 28, ctzuzun, 38.3, 377.6 , 0 );
setEffMoveKey( spep_0 -3 + 30, ctzuzun, 43.3, 371.9 , 0 );
setEffMoveKey( spep_0 -3 + 32, ctzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 34, ctzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 36, ctzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 38, ctzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 40, ctzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 42, ctzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 44, ctzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 46, ctzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 48, ctzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 50, ctzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 52, ctzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 54, ctzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 56, ctzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 58, ctzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 60, ctzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 62, ctzuzun, 30.9, 354.4 , 0 );

setEffScaleKey( spep_0 -3 + 22, ctzuzun, 1.11, 1.11 );
setEffScaleKey( spep_0 -3 + 24, ctzuzun, 1.99, 1.99 );
setEffScaleKey( spep_0 -3 + 26, ctzuzun, 2.83, 2.83 );
setEffScaleKey( spep_0 -3 + 28, ctzuzun, 2.92, 2.92 );
setEffScaleKey( spep_0 -3 + 62, ctzuzun, 2.92, 2.92 );

setEffRotateKey( spep_0 -3 + 22, ctzuzun, -5 );
setEffRotateKey( spep_0 -3 + 62, ctzuzun, -5 );

setEffAlphaKey( spep_0 -3 + 22, ctzuzun, 255 );
setEffAlphaKey( spep_0 -3 + 50, ctzuzun, 255 );
setEffAlphaKey( spep_0 -3 + 52, ctzuzun, 212 );
setEffAlphaKey( spep_0 -3 + 54, ctzuzun, 170 );
setEffAlphaKey( spep_0 -3 + 56, ctzuzun, 128 );
setEffAlphaKey( spep_0 -3 + 58, ctzuzun, 85 );
setEffAlphaKey( spep_0 -3 + 60, ctzuzun, 43 );
setEffAlphaKey( spep_0 -3 + 62, ctzuzun, 0 );

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );

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

-- ** 音 ** --
playSe( spep_0 + 18, SE_03 );  --気溜め
playSe( spep_0 + 38, SE_03 );  --気溜め
playSe( spep_0 + 58, SE_03 );  --気溜め
playSe( spep_0 + 68, SE_04 );  --ゴゴゴ

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 17, 0, 129, 0, 0, 0, 0, 180);       -- ベース暗め　背景

-- ** 白背景 ** --
entryFade( spep_0 + 0, 0, 2, 2, 245, 245, 245, 255 );
entryFade( spep_0 + 17, 0, 2, 4, 245, 245, 245, 255 );
entryFade( spep_0 + 140, 6, 2, 0, 245, 245, 245, 255 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 148;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
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
--playSe( spep_1 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 発射(86F)
------------------------------------------------------
-- ** エフェクト等 ** --
first_f = entryEffect( spep_2 + 0, SP_02r, 0, -1, 0, 0, 0 ); --発射(ef_002)
setEffMoveKey( spep_2 + 0, first_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 86, first_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 86, first_f, 1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, first_f, 255 );
setEffAlphaKey( spep_2 + 86, first_f, 255 );
setEffRotateKey( spep_2 + 0, first_f, 0 );
setEffRotateKey( spep_2 + 86, first_f, 0 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 0, 906, 18, 0x100, -1, 0, 0, 0 ); --集中線
setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0, 0 );
setEffMoveKey( spep_2 + 18, shuchusen2, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, shuchusen2, 1.2, 1.2 );
setEffScaleKey( spep_2 + 18, shuchusen2, 1.2, 1.2 );
setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 18, shuchusen2, 255 );
setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 18, shuchusen2, 0 );

-- ** 書き文字エントリー ** --
ctzuo1 = entryEffectLife( spep_2 -3 + 20,  10012, 50, 0x100, -1, 0, 9.6, 282.4 );  --ズオッ
setEffMoveKey( spep_2 -3 + 20, ctzuo1, 9.6, 282.4 , 0 );
setEffMoveKey( spep_2 -3 + 22, ctzuo1, 32.9, 331.8 , 0 );
setEffMoveKey( spep_2 -3 + 24, ctzuo1, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2 -3 + 26, ctzuo1, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 28, ctzuo1, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2 -3 + 30, ctzuo1, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 32, ctzuo1, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctzuo1, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 36, ctzuo1, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2 -3 + 38, ctzuo1, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 40, ctzuo1, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2 -3 + 42, ctzuo1, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 44, ctzuo1, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctzuo1, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctzuo1, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctzuo1, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctzuo1, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctzuo1, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 56, ctzuo1, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2 -3 + 58, ctzuo1, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 60, ctzuo1, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2 -3 + 62, ctzuo1, 71.3, 376.4 , 0 );
setEffMoveKey( spep_2 -3 + 64, ctzuo1, 64.6, 401.1 , 0 );
setEffMoveKey( spep_2 -3 + 66, ctzuo1, 109.1, 374.6 , 0 );
setEffMoveKey( spep_2 -3 + 68, ctzuo1, 92.7, 409 , 0 );
setEffMoveKey( spep_2 -3 + 70, ctzuo1, 106.9, 412.9 , 0 );

setEffScaleKey( spep_2 -3 + 20, ctzuo1, 0.34, 0.34 );
setEffScaleKey( spep_2 -3 + 22, ctzuo1, 1.54, 1.54 );
setEffScaleKey( spep_2 -3 + 24, ctzuo1, 2.73, 2.73 );
setEffScaleKey( spep_2 -3 + 60, ctzuo1, 2.73, 2.73 );
setEffScaleKey( spep_2 -3 + 62, ctzuo1, 3.55, 3.55 );
setEffScaleKey( spep_2 -3 + 64, ctzuo1, 4.37, 4.37 );
setEffScaleKey( spep_2 -3 + 66, ctzuo1, 5.19, 5.19 );
setEffScaleKey( spep_2 -3 + 68, ctzuo1, 6.01, 6.01 );
setEffScaleKey( spep_2 -3 + 70, ctzuo1, 6.82, 6.82 );

setEffRotateKey( spep_2 -3 + 20, ctzuo1, 9.7 );
setEffRotateKey( spep_2 -3 + 22, ctzuo1, 18.4 );
setEffRotateKey( spep_2 -3 + 24, ctzuo1, 27.2 );
setEffRotateKey( spep_2 -3 + 70, ctzuo1, 27.2 );

setEffAlphaKey( spep_2 -3 + 20, ctzuo1, 255 );
setEffAlphaKey( spep_2 -3 + 60, ctzuo1, 255 );
setEffAlphaKey( spep_2 -3 + 62, ctzuo1, 204 );
setEffAlphaKey( spep_2 -3 + 64, ctzuo1, 153 );
setEffAlphaKey( spep_2 -3 + 66, ctzuo1, 102 );
setEffAlphaKey( spep_2 -3 + 68, ctzuo1, 51 );
setEffAlphaKey( spep_2 -3 + 70, ctzuo1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 86, 0, 0, 0, 0, 180 ); --黒背景

-- ** 白背景 ** --
entryFade( spep_2 + 0, 0, 2, 3, 245, 245, 245, 255);
entryFade( spep_2 + 14, 0, 2, 4, 245, 245, 245, 255);
entryFade( spep_2 + 80, 6, 2, 0, 245, 245, 245, 255);

-- ** 音 ** --
SE01 = playSe( spep_2 + 16, SE_07 );  --ズオッ

-- ** 次の準備 ** --
spep_3 = spep_2 + 86;

--------------------------------------
--敵へのビーム(96F)
--------------------------------------
-- ** エフェクト等 ** --
first_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); --着弾・手前(ef_003)
setEffMoveKey( spep_3 + 0,  first_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 96, first_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, first_f, 1.0, 1.0 );
setEffAlphaKey( spep_3 + 0, first_f, 255 );
setEffAlphaKey( spep_3 + 96, first_f, 255 );
setEffRotateKey( spep_3 + 0, first_f, 0 );
setEffRotateKey( spep_3 + 96, first_f, 0 );

first_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); --着弾・奥(ef_004)
setEffMoveKey( spep_3 + 0, first_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 96, first_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, first_b, 1.0, 1.0 );
setEffAlphaKey( spep_3 + 0, first_b, 255 );
setEffAlphaKey( spep_3 + 96, first_b, 255 );
setEffRotateKey( spep_3 + 0, first_b, 0 );
setEffRotateKey( spep_3 + 96, first_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 104 );

setMoveKey( spep_3 + 0, 1, -13.9, -81.7 , 0 );
setMoveKey( spep_3 + 1, 1, -6.8, -67.7 , 0 );
setMoveKey( spep_3 + 2, 1, 9, -44.4 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 17.5, -31.5 , 0 );
setMoveKey( spep_3 -3 + 7, 1, 17.5, -31.5 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 34.6, -1.3 , 0 );
setMoveKey( spep_3 -3 + 9, 1, 34.6, -1.3 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 44.4, 14.5 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 62.8, 47.7 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 73.8, 70.3 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 84.2, 85.5 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 86.8, 93.1 , 0 );

setScaleKey( spep_3 + 0, 1, 3.09, 3.09 );
setScaleKey( spep_3 + 1, 1, 2.95, 2.95 );
setScaleKey( spep_3 + 2, 1, 2.79, 2.79 );
setScaleKey( spep_3 -3 + 6, 1, 2.62, 2.62 );
setScaleKey( spep_3 -3 + 7, 1, 2.62, 2.62 );
setScaleKey( spep_3 -3 + 8, 1, 2.43, 2.43 );
setScaleKey( spep_3 -3 + 9, 1, 2.43, 2.43 );
setScaleKey( spep_3 -3 + 10, 1, 2.23, 2.23 );
setScaleKey( spep_3 -3 + 12, 1, 2.01, 2.01 );
setScaleKey( spep_3 -3 + 14, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 16, 1, 1.71, 1.71 );
setScaleKey( spep_3 -3 + 18, 1, 1.65, 1.65 );

setRotateKey( spep_3 + 0, 1, -2 );
setRotateKey( spep_3 + 1, 1, -2.1 );
setRotateKey( spep_3 + 2, 1, -2.3 );
setRotateKey( spep_3 -3 + 6, 1, -2.4 );
setRotateKey( spep_3 -3 + 7, 1, -2.4 );
setRotateKey( spep_3 -3 + 8, 1, -2.5 );
setRotateKey( spep_3 -3 + 9, 1, -2.5 );
setRotateKey( spep_3 -3 + 10, 1, -2.6 );
setRotateKey( spep_3 -3 + 12, 1, -2.8 );
setRotateKey( spep_3 -3 + 14, 1, -2.9 );
setRotateKey( spep_3 -3 + 16, 1, -3 );
setRotateKey( spep_3 -3 + 18, 1, -3.1 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, 0, 0, 0, 180 ); --黒背景

-- ** 白背景 ** --
entryFade( spep_3 + 0, 0, 2, 2, 245, 245, 245, 255);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 16; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE01, 0);

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
changeAnime( SP_dodge + 0, 1, 104 );  --ガード

setMoveKey( SP_dodge + 0, 1, 86.8, 93.1 , 0 );
setMoveKey( SP_dodge + 2, 1, 97.5, 109.2 , 0 );
setMoveKey( SP_dodge + 4, 1, 96.5, 113.9 , 0 );
setMoveKey( SP_dodge + 6, 1, 111.6, 135.1 , 0 );
setMoveKey( SP_dodge + 8, 1, 114.8, 144.7 , 0 );
setMoveKey( SP_dodge + 10, 1, 126.3, 162.9 , 0 );

setScaleKey( SP_dodge + 0, 1, 1.65, 1.65 );
setScaleKey( SP_dodge + 2, 1, 1.58, 1.58 );
setScaleKey( SP_dodge + 4, 1, 1.51, 1.51 );
setScaleKey( SP_dodge + 6, 1, 1.43, 1.43 );
setScaleKey( SP_dodge + 8, 1, 1.35, 1.35 );
setScaleKey( SP_dodge + 10, 1, 1.26, 1.26 );

setRotateKey( SP_dodge + 0, 1, -3.1 );
setRotateKey( SP_dodge + 2, 1, -3.3 );
setRotateKey( SP_dodge + 4, 1, -3.4 );
setRotateKey( SP_dodge + 6, 1, -3.5 );
setRotateKey( SP_dodge + 8, 1, -3.6 );
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

-- ** 書き文字エントリー ** --
ctzuo2 = entryEffectLife( spep_3 -3 + 30,  10012, 20, 0x100, -1, 0, -17.7, 313.1 ); --ズオオッ
setEffMoveKey( spep_3 -3 + 30, ctzuo2, -17.7, 313.1 , 0 );
setEffMoveKey( spep_3 -3 + 32, ctzuo2, -35.9, 355.9 , 0 );
setEffMoveKey( spep_3 -3 + 34, ctzuo2, -81.2, 407.2 , 0 );
setEffMoveKey( spep_3 -3 + 36, ctzuo2, -64.4, 405.8 , 0 );
setEffMoveKey( spep_3 -3 + 38, ctzuo2, -92.7, 407.4 , 0 );
setEffMoveKey( spep_3 -3 + 40, ctzuo2, -75.8, 406.1 , 0 );
setEffMoveKey( spep_3 -3 + 42, ctzuo2, -104, 407.5 , 0 );
setEffMoveKey( spep_3 -3 + 44, ctzuo2, -87.1, 406.5 , 0 );
setEffMoveKey( spep_3 -3 + 46, ctzuo2, -119, 421 , 0 );
setEffMoveKey( spep_3 -3 + 48, ctzuo2, -82.7, 426.2 , 0 );
setEffMoveKey( spep_3 -3 + 50, ctzuo2, -79.7, 432.9 , 0 );

setEffScaleKey( spep_3 -3 + 30, ctzuo2, 0.34, 0.34 );
setEffScaleKey( spep_3 -3 + 32, ctzuo2, 1.54, 1.54 );
setEffScaleKey( spep_3 -3 + 34, ctzuo2, 2.73, 2.73 );
setEffScaleKey( spep_3 -3 + 44, ctzuo2, 2.73, 2.73 );
setEffScaleKey( spep_3 -3 + 46, ctzuo2, 4.09, 4.09 );
setEffScaleKey( spep_3 -3 + 48, ctzuo2, 5.46, 5.46 );
setEffScaleKey( spep_3 -3 + 50, ctzuo2, 6.82, 6.82 );

setEffRotateKey( spep_3 -3 + 30, ctzuo2, 6.9 );
setEffRotateKey( spep_3 -3 + 32, ctzuo2, -3.3 );
setEffRotateKey( spep_3 -3 + 34, ctzuo2, -13.5 );
setEffRotateKey( spep_3 -3 + 36, ctzuo2, -13.8 );
setEffRotateKey( spep_3 -3 + 38, ctzuo2, -14.1 );
setEffRotateKey( spep_3 -3 + 40, ctzuo2, -14.4 );
setEffRotateKey( spep_3 -3 + 42, ctzuo2, -14.7 );
setEffRotateKey( spep_3 -3 + 44, ctzuo2, -15 );
setEffRotateKey( spep_3 -3 + 46, ctzuo2, -11.7 );
setEffRotateKey( spep_3 -3 + 48, ctzuo2, -8.5 );
setEffRotateKey( spep_3 -3 + 50, ctzuo2, -5.2 );

setEffAlphaKey( spep_3 -3 + 30, ctzuo2, 255 );
setEffAlphaKey( spep_3 -3 + 44, ctzuo2, 255 );
setEffAlphaKey( spep_3 -3 + 46, ctzuo2, 170 );
setEffAlphaKey( spep_3 -3 + 48, ctzuo2, 85 );
setEffAlphaKey( spep_3 -3 + 50, ctzuo2, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 36, 1, 0 );
changeAnime( spep_3 -3 + 30, 1, 108 );

setMoveKey( spep_3 -3 + 20, 1, 97.5, 109.2 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 96.5, 113.9 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 111.6, 135.1 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 114.8, 144.7 , 0 );
setMoveKey( spep_3 -3 + 29, 1, 126.3, 162.9 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 157.2, 198.6 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 159, 191.9 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 121.5, 181.9 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 144.8, 211 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 138.7, 208.9 , 0 );
setMoveKey( spep_3 -3 + 39, 1, 138.7, 208.9 , 0 );

setScaleKey( spep_3 -3 + 20, 1, 1.58, 1.58 );
setScaleKey( spep_3 -3 + 22, 1, 1.51, 1.51 );
setScaleKey( spep_3 -3 + 24, 1, 1.43, 1.43 );
setScaleKey( spep_3 -3 + 26, 1, 1.35, 1.35 );
setScaleKey( spep_3 -3 + 29, 1, 1.26, 1.26 );
setScaleKey( spep_3 -3 + 30, 1, 1.44, 1.44 );
setScaleKey( spep_3 -3 + 32, 1, 1.11, 1.11 );
setScaleKey( spep_3 -3 + 34, 1, 0.81, 0.81 );
setScaleKey( spep_3 -3 + 36, 1, 0.53, 0.53 );
setScaleKey( spep_3 -3 + 38, 1, 0.28, 0.28 );
setScaleKey( spep_3 -3 + 39, 1, 0.28, 0.28 );

setRotateKey( spep_3 -3 + 20, 1, -3.3 );
setRotateKey( spep_3 -3 + 22, 1, -3.4 );
setRotateKey( spep_3 -3 + 24, 1, -3.5 );
setRotateKey( spep_3 -3 + 26, 1, -3.6 );
setRotateKey( spep_3 -3 + 29, 1, -3.8 );
setRotateKey( spep_3 -3 + 30, 1, 21 );
setRotateKey( spep_3 -3 + 32, 1, 18.5 );
setRotateKey( spep_3 -3 + 34, 1, 16.1 );
setRotateKey( spep_3 -3 + 36, 1, 13.8 );
setRotateKey( spep_3 -3 + 38, 1, 11.6 );
setRotateKey( spep_3 -3 + 39, 1, 11.6 );

-- ** 白背景 ** --
entryFade( spep_3 + 27, 0, 2, 4, 245, 245, 245, 180);
entryFade( spep_3 + 88, 8, 2, 0, 245, 245, 245, 255);

-- ** 音 ** --
playSe( spep_3 + 28, SE_06);

-- ** 次の準備 ** --
spep_4 = spep_3 + 96;


------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 100, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 100, finish_f, 255 );

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

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 100, 1, 0 );
changeAnime( spep_4 + 0, 1, 107 );

setMoveKey( spep_4 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_4 -3 + 5, 1, -3.4, -57 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_4 -3 + 7, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_4 -3 + 9, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_4 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_4 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 5, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 -3 + 7, 1, 0.7, 0.7 );
setScaleKey( spep_4 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 -3 + 9, 1, 0.93, 0.93 );
setScaleKey( spep_4 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_4 + 0, 1, 105 );
setRotateKey( spep_4 -3 + 4, 1, 240 );
setRotateKey( spep_4 -3 + 5, 1, 240 );
setRotateKey( spep_4 -3 + 6, 1, 405 );
setRotateKey( spep_4 -3 + 7, 1, 405 );
setRotateKey( spep_4 -3 + 8, 1, 600 );
setRotateKey( spep_4 -3 + 9, 1, 600 );
setRotateKey( spep_4 -3 + 10, 1, 825 );
setRotateKey( spep_4 -3 + 12, 1, 1080 );
setRotateKey( spep_4 + 100, 1, 1080 );


-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_4 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_4 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_4 + 100, shuchusen_bl, 255 );

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

-- ** 音 ** --
--敵が吹っ飛ぶ
stopSe( spep_4 + 16, SE5, 0 );
stopSe( spep_4 + 16, SE6, 0 );

--ガッ
playSe( spep_4 + 8, 1054 );
setSeVolume( spep_4 + 8, 1054, 126 );
playSe( spep_4 + 8, 1023 );
setSeVolume( spep_4 + 8, 1023, 76 );

-- ** 背景 ** --
--entryFadeBg( spep_4 + 0, 0, 100, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 10 );
endPhase( spep_4 + 98 );

end