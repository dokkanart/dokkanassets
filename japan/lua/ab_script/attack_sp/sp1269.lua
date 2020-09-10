--1016650 亀仙人_魔封波
--sp_effect_a1_00151

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

--味方
SP_01 = 153082;--	スタート気溜め
SP_02 =	153083;--	かめはめ波発射
SP_03 =	153084;--	背景
SP_04 =	153085;--	迫るかめはめ波
SP_05 =	153086;--	渦EF
SP_06 =	153087;--	亀仙人腕振り上げ
SP_07 =	153088;--	EF上昇
SP_08 =	153089;--	亀仙人腕振り下ろし
SP_09 =	153090;--	炊飯ジャーにin

--てき
SP_01x =    153082;--	スタート気溜め
SP_02x =	153083;--	かめはめ波発射
SP_03x =	153084;--	背景
SP_04x =	153085;--	迫るかめはめ波
SP_05x =	153086;--	渦EF
SP_06x =	153087;--	亀仙人腕振り上げ
SP_07x =	153088;--	EF上昇
SP_08x =	153089;--	亀仙人腕振り下ろし
SP_09x =	153090;--	炊飯ジャーにin


multi_frm = 2;
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
spep_0=0;



------------------------------------------------------
-- スタート気溜め
------------------------------------------------------
spep_0=0;

-- ** エフェクト等 ** --
kidame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, kidame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 180, kidame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kidame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 180, kidame, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, kidame, 255 );
setEffAlphaKey( spep_0 + 180, kidame, 255 );
setEffRotateKey( spep_0 + 0, kidame, 0 );
setEffRotateKey( spep_0 + 180, kidame, 0 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 40, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 40, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 52,  190006, 72, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 52, ctgogo, 72, 10 );
 
setEffMoveKey( spep_0 + 52, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 124, ctgogo, -9.9, 515.5 , 0 );
 
setEffScaleKey( spep_0 + 52, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 114, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 116, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_0 + 120, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_0 + 122, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_0 + 124, ctgogo, 1.69, 1.69 );
 
setEffRotateKey( spep_0 + 52, ctgogo, 0 );
setEffRotateKey( spep_0 + 124, ctgogo, 0 );
 
setEffAlphaKey( spep_0 + 52, ctgogo, 0 );
setEffAlphaKey( spep_0 + 53, ctgogo, 255 );
setEffAlphaKey( spep_0 + 54, ctgogo, 255 );
setEffAlphaKey( spep_0 + 124, ctgogo, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 38,  906, 140, 0x100, -1, 0, 0.1, 0 );

setEffMoveKey( spep_0 + 38, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 178, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 38, shuchusen1, 1.22, 1.22 );
setEffScaleKey( spep_0 + 178, shuchusen1, 1.22, 1.22 );

setEffRotateKey( spep_0 + 42, shuchusen1, 0 );
setEffRotateKey( spep_0 + 178, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 38, shuchusen1, 28 );
setEffAlphaKey( spep_0 + 44, shuchusen1, 57 );
setEffAlphaKey( spep_0 + 46, shuchusen1, 85 );
setEffAlphaKey( spep_0 + 48, shuchusen1, 113 );
setEffAlphaKey( spep_0 + 50, shuchusen1, 142 );
setEffAlphaKey( spep_0 + 52, shuchusen1, 170 );
setEffAlphaKey( spep_0 + 54, shuchusen1, 198 );
setEffAlphaKey( spep_0 + 56, shuchusen1, 227 );
setEffAlphaKey( spep_0 + 58, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 178, shuchusen1, 255 );

--SE
playSe( spep_0 + 52, SE_04 );  --ゴゴゴ
SE1=playSe( spep_0 +50, 1044 );  --地揺れ
stopSe(spep_0+178,SE1,0);



-- ** ホワイトフェード ** --
entryFade( spep_0 + 170, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_1=spep_0+180;
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------


playSe( spep_1, SE_05);
speff = entryEffect(  spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                         -- 技名テクスチャ差し替え

shuchusen = entryEffectLife( spep_1, 906, 90, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_1,  shuchusen,  0,  0);
setEffMoveKey(  spep_1+90,  shuchusen,  0,  0);
setEffScaleKey(  spep_1,  shuchusen,  1.6,  1.6);
setEffScaleKey(  spep_1+90,  shuchusen,  1.6,  1.6);
setEffRotateKey(  spep_1,  shuchusen,  0);
setEffRotateKey(  spep_1+90,  shuchusen,  0);
setEffAlphaKey(  spep_1,  shuchusen,  255);
setEffAlphaKey(  spep_1+90,  shuchusen,  255);

--***背景と白フェード***
entryFade( spep_1+76, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_2 = spep_1 + 88;
----------------------------------------------------
-- かめはめ波発射
------------------------------------------------------

--エフェクト
kamebeam = entryEffect( spep_2, SP_02, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_2, kamebeam, 0, 0);
setEffMoveKey( spep_2+60, kamebeam, 0, 0);
setEffScaleKey( spep_2, kamebeam, 1, 1);
setEffScaleKey( spep_2+60, kamebeam, 1, 1);
setEffRotateKey( spep_2,  kamebeam,  0);
setEffRotateKey( spep_2+60,  kamebeam,  0);
setEffAlphaKey( spep_2, kamebeam, 255);
setEffAlphaKey( spep_2+60, kamebeam, 255);

--文字エントリー
ctzuo = entryEffectLife( spep_2 + 0,  10012, 32, 0x100, -1, 0, 76, 259.9 );--ズオッ

setEffShake( spep_2, ctzuo, 32, 10 );

setEffMoveKey( spep_2 + 0, ctzuo, 76, 259.9 , 0 );
setEffMoveKey( spep_2 + 2, ctzuo, 105, 300.9 , 0 );
setEffMoveKey( spep_2 + 4, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2 + 6, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2 + 8, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2 + 10, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2 + 12, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2 + 14, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2 + 16, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2 + 18, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2 + 20, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2 + 22, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2 + 24, ctzuo, 124, 359.9 , 0 );
setEffMoveKey( spep_2 + 26, ctzuo, 157.6, 334.3 , 0 );
setEffMoveKey( spep_2 + 28, ctzuo, 139.9, 359.9 , 0 );
setEffMoveKey( spep_2 + 30, ctzuo, 183.2, 324.7 , 0 );
setEffMoveKey( spep_2 + 32, ctzuo, 196, 319.9 , 0 );

setEffScaleKey( spep_2 + 0, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_2 + 2, ctzuo, 1.54, 1.54 );
setEffScaleKey( spep_2 + 4, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 + 22, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 + 24, ctzuo, 3.55, 3.55 );
setEffScaleKey( spep_2 + 26, ctzuo, 4.37, 4.37 );
setEffScaleKey( spep_2 + 28, ctzuo, 5.19, 5.19 );
setEffScaleKey( spep_2 + 30, ctzuo, 6.01, 6.01 );
setEffScaleKey( spep_2 + 32, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_2 + 0, ctzuo, 27.2 );
setEffRotateKey( spep_2 + 32, ctzuo, 27.2 );

setEffAlphaKey( spep_2 + 0, ctzuo, 255 );
setEffAlphaKey( spep_2 + 22, ctzuo, 255 );
setEffAlphaKey( spep_2 + 24, ctzuo, 204 );
setEffAlphaKey( spep_2 + 26, ctzuo, 153 );
setEffAlphaKey( spep_2 + 28, ctzuo, 102 );
setEffAlphaKey( spep_2 + 30, ctzuo, 51 );
setEffAlphaKey( spep_2 + 32, ctzuo, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_2 + 0,  906, 14, 0x100, -1, 0, 219.6, 0 );

b=450;

setEffMoveKey( spep_2 + 0, shuchusen2, 219.6-b, 0 , 0 );
setEffMoveKey( spep_2 + 2, shuchusen2, 283.7-b, 0 , 0 );
setEffMoveKey( spep_2 + 4, shuchusen2, 347.8-b, 0 , 0 );
setEffMoveKey( spep_2 + 6, shuchusen2, 412-b, 0 , 0 );
setEffMoveKey( spep_2 + 8, shuchusen2, 476.1-b, 0 , 0 );
setEffMoveKey( spep_2 + 10, shuchusen2, 540.2-b, 0 , 0 );
setEffMoveKey( spep_2 + 12, shuchusen2, 604.4-b, 0 , 0 );
setEffMoveKey( spep_2 + 14, shuchusen2, 668.5-b, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.06, 1.06 );
setEffScaleKey( spep_2 + 2, shuchusen2, 1.26, 1.26 );
setEffScaleKey( spep_2 + 4, shuchusen2, 1.47, 1.47 );
setEffScaleKey( spep_2 + 6, shuchusen2, 1.68, 1.68 );
setEffScaleKey( spep_2 + 8, shuchusen2, 1.88, 1.88 );
setEffScaleKey( spep_2 + 10, shuchusen2, 2.09, 2.09 );
setEffScaleKey( spep_2 + 12, shuchusen2, 2.29, 2.29 );
setEffScaleKey( spep_2 + 14, shuchusen2, 2.5, 2.5 );

setEffRotateKey( spep_2 + 0, shuchusen2, 180 );
setEffRotateKey( spep_2 + 14, shuchusen2, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 14, shuchusen2, 255 );

--SE
playSe( spep_2 + 0, 1021 );  --気弾

-- ** ホワイトフェード ** --
entryFade( spep_2 + 52, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade


--次の準備
spep_3 = spep_2 + 58;
------------------------------------------------------
-- 迫るかめはめ波
------------------------------------------------------
--エフェクト(背景)
kamehit_b = entryEffect( spep_3, SP_03, 0x80, -1, 0, 0, 0); 
setEffMoveKey( spep_3, kamehit_b, 0, 0);
setEffMoveKey( spep_3+80, kamehit_b, 0, 0);
setEffScaleKey( spep_3, kamehit_b, 1, 1);
setEffScaleKey( spep_3+80, kamehit_b, 1, 1);
setEffRotateKey( spep_3,  kamehit_b,  0);
setEffRotateKey( spep_3+80,  kamehit_b,  0);
setEffAlphaKey( spep_3, kamehit_b, 255);
setEffAlphaKey( spep_3+80, kamehit_b, 255);

--流線
ryusen1 = entryEffectLife( spep_3 + 0,  913, 74, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 74, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, ryusen1, 1.37, 0.96 );
setEffScaleKey( spep_3 + 74, ryusen1, 1.37, 0.96 );

setEffRotateKey( spep_3 + 0, ryusen1, -67.2 );
setEffRotateKey( spep_3 + 74, ryusen1, -67.2 );

setEffAlphaKey( spep_3 + 0, ryusen1, 0 );
setEffAlphaKey( spep_3 + 33, ryusen1, 0 );
setEffAlphaKey( spep_3 + 34, ryusen1, 180 );
setEffAlphaKey( spep_3 + 74, ryusen1, 180 );

--エフェクト
kamehit_f = entryEffect( spep_3, SP_04, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_3, kamehit_f, 0, 0);
setEffMoveKey( spep_3+80, kamehit_f, 0, 0);
setEffScaleKey( spep_3, kamehit_f, 1, 1);
setEffScaleKey( spep_3+80, kamehit_f, 1, 1);
setEffRotateKey( spep_3,  kamehit_f,  0);
setEffRotateKey( spep_3+80,  kamehit_f,  0);
setEffAlphaKey( spep_3, kamehit_f, 255);
setEffAlphaKey( spep_3+80, kamehit_f, 255);

--集中線
shuchusen3 = entryEffectLife( spep_3 + 0,  906, 44, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 44, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen3, 1.12, 1.26 );
setEffScaleKey( spep_3 + 44, shuchusen3, 1.12, 1.26 );

setEffRotateKey( spep_3 + 0, shuchusen3, 179.7 );
setEffRotateKey( spep_3 + 44, shuchusen3, 179.7 );

setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 36, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 38, shuchusen3, 191 );
setEffAlphaKey( spep_3 + 40, shuchusen3, 128 );
setEffAlphaKey( spep_3 + 42, shuchusen3, 64 );
setEffAlphaKey( spep_3 + 44, shuchusen3, 0 );

--文字エントリー
ctzuo2 = entryEffectLife( spep_3-2 + 4,  10012, 44, 0x100, -1, 0, 76, 259.9 );--ズオッ
setEffShake( spep_3-2 + 4, ctzuo2, 22, 10 );

setEffMoveKey( spep_3-2 + 4, ctzuo2, 76, 259.9 , 0 );
setEffMoveKey( spep_3-2 + 6, ctzuo2, 105, 300.9 , 0 );
setEffMoveKey( spep_3-2 + 8, ctzuo2, 116, 359.9 , 0 );
setEffMoveKey( spep_3-2 + 10, ctzuo2, 132, 343.9 , 0 );
setEffMoveKey( spep_3-2 + 12, ctzuo2, 116, 359.9 , 0 );
setEffMoveKey( spep_3-2 + 14, ctzuo2, 132, 343.9 , 0 );
setEffMoveKey( spep_3-2 + 16, ctzuo2, 116, 359.9 , 0 );
setEffMoveKey( spep_3-2 + 18, ctzuo2, 132, 343.9 , 0 );
setEffMoveKey( spep_3-2 + 20, ctzuo2, 116, 359.9 , 0 );
setEffMoveKey( spep_3-2 + 22, ctzuo2, 132, 343.9 , 0 );
setEffMoveKey( spep_3-2 + 24, ctzuo2, 116, 359.9 , 0 );
setEffMoveKey( spep_3-2 + 26, ctzuo2, 132, 343.9 , 0 );
setEffMoveKey( spep_3-2 + 28, ctzuo2, 116, 359.9 , 0 );
setEffMoveKey( spep_3-2 + 30, ctzuo2, 132, 343.9 , 0 );
setEffMoveKey( spep_3-2 + 32, ctzuo2, 116, 359.9 , 0 );
setEffMoveKey( spep_3-2 + 34, ctzuo2, 132, 343.9 , 0 );
setEffMoveKey( spep_3-2 + 36, ctzuo2, 116, 359.9 , 0 );
setEffMoveKey( spep_3-2 + 38, ctzuo2, 132, 343.9 , 0 );
setEffMoveKey( spep_3-2 + 40, ctzuo2, 124, 359.9 , 0 );
setEffMoveKey( spep_3-2 + 42, ctzuo2, 157.6, 334.3 , 0 );
setEffMoveKey( spep_3-2 + 44, ctzuo2, 139.9, 359.9 , 0 );
setEffMoveKey( spep_3-2 + 46, ctzuo2, 183.2, 324.7 , 0 );
setEffMoveKey( spep_3-2 + 48, ctzuo2, 196, 319.9 , 0 );

c=3.5;

setEffScaleKey( spep_3 + 4, ctzuo2, 0.34, 0.34 );
setEffScaleKey( spep_3 + 6, ctzuo2, 1.54, 1.54 );
setEffScaleKey( spep_3 + 8, ctzuo2, 2.73, 2.73 );
setEffScaleKey( spep_3 + 38, ctzuo2, 2.73, 2.73 );
setEffScaleKey( spep_3 + 40, ctzuo2, 3.55, 3.55 );
setEffScaleKey( spep_3 + 42, ctzuo2, 4.37, 4.37 );
setEffScaleKey( spep_3 + 44, ctzuo2, 5.19, 5.19 );
setEffScaleKey( spep_3 + 46, ctzuo2, 6.01, 6.01 );
setEffScaleKey( spep_3 + 48, ctzuo2, 6.82, 6.82 );

setEffRotateKey( spep_3-2 + 4, ctzuo2, 27.2  );
setEffRotateKey( spep_3-2 + 48, ctzuo2, 27.2  );

setEffAlphaKey( spep_3-2 + 4, ctzuo2, 255 );
setEffAlphaKey( spep_3-2 + 38, ctzuo2, 255 );
setEffAlphaKey( spep_3-2 + 40, ctzuo2, 204 );
setEffAlphaKey( spep_3-2 + 42, ctzuo2, 153 );
setEffAlphaKey( spep_3-2 + 44, ctzuo2, 102 );
setEffAlphaKey( spep_3-2 + 46, ctzuo2, 51 );
setEffAlphaKey( spep_3-2 + 48, ctzuo2, 0 );

--てき
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 43, 1, 0 );
setDisp( spep_3 + 44, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );
--changeAnime( spep_3 + 46, 1, 106 );

setMoveKey( spep_3 + 0, 1, 146, 127.9 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 142, 120.6 , 0 );
setMoveKey( spep_3-3 + 4, 1, 138, 123.4 , 0 );
setMoveKey( spep_3-3 + 6, 1, 134, 114.1 , 0 );
setMoveKey( spep_3-3 + 8, 1, 130, 116.8 , 0 );
setMoveKey( spep_3-3 + 10, 1, 126, 107.6 , 0 );
setMoveKey( spep_3-3 + 12, 1, 122, 110.3 , 0 );
setMoveKey( spep_3-3 + 14, 1, 118, 101 , 0 );
setMoveKey( spep_3-3 + 16, 1, 114, 103.7 , 0 );
setMoveKey( spep_3-3 + 18, 1, 110, 94.5 , 0 );
setMoveKey( spep_3-3 + 20, 1, 106, 97.2 , 0 );
setMoveKey( spep_3-3 + 22, 1, 102.1, 87.9 , 0 );
setMoveKey( spep_3-3 + 24, 1, 98.1, 90.7 , 0 );
setMoveKey( spep_3-3 + 26, 1, 94.1, 81.4 , 0 );
setMoveKey( spep_3-3 + 28, 1, 90.1, 84.1 , 0 );
setMoveKey( spep_3-3 + 30, 1, 86.1, 74.8 , 0 );
setMoveKey( spep_3-3 + 32, 1, 82.1, 77.6 , 0 );
setMoveKey( spep_3-3 + 34, 1, 78.1, 68.3 , 0 );
setMoveKey( spep_3-3 + 36, 1, 74.1, 71 , 0 );
setMoveKey( spep_3-3 + 38, 1, 70.1, 61.8 , 0 );
setMoveKey( spep_3-3 + 40, 1, 66.1, 64.5 , 0 );
setMoveKey( spep_3-3 + 42, 1, 62.1, 55.2 , 0 );
setMoveKey( spep_3-3 + 45, 1, 58.1, 57.9 , 0 );
setMoveKey( spep_3-3 + 46, 1, 31.9, 92 , 0 );
setMoveKey( spep_3-3 + 48, 1, 43.3, 119.3 , 0 );
setMoveKey( spep_3-3 + 50, 1, 54.6, 134.6 , 0 );
setMoveKey( spep_3-3 + 52, 1, 65.9, 161.9 , 0 );
setMoveKey( spep_3-3 + 54, 1, 77.3, 177.3 , 0 );
setMoveKey( spep_3-3 + 56, 1, 88.6, 204.7 , 0 );
setMoveKey( spep_3-3 + 58, 1, 100, 220 , 0 );
setMoveKey( spep_3-3 + 60, 1, 108.4, 246.1 , 0 );
setMoveKey( spep_3-3 + 62, 1, 116.8, 260.1 , 0 );
setMoveKey( spep_3-3 + 64, 1, 125.2, 286.1 , 0 );
setMoveKey( spep_3-3 + 66, 1, 133.6, 300.1 , 0 );
setMoveKey( spep_3-3 + 68, 1, 142, 326.1 , 0 );
setMoveKey( spep_3-3 + 70, 1, 150.4, 340.1 , 0 );
setMoveKey( spep_3-3 + 72, 1, 158.8, 366.1 , 0 );
setMoveKey( spep_3-3 + 74, 1, 167.2, 380.2 , 0 );
setMoveKey( spep_3-3 + 76, 1, 175.7, 406.2 , 0 );
setMoveKey( spep_3 + 78, 1, 184.1, 420.2 , 0 );

d=0;

setScaleKey( spep_3 + 0, 1, 0.43+d, 0.43+d );
--[[
--setScaleKey( spep_3-3 + 2, 1, 0.24, 0.24 );
setScaleKey( spep_3-3 + 4, 1, 0.26+d, 0.26+d );
setScaleKey( spep_3-3 + 6, 1, 0.28+d, 0.28+d );
setScaleKey( spep_3-3 + 8, 1, 0.29+d, 0.29+d );
setScaleKey( spep_3-3 + 10, 1, 0.31+d, 0.31+d );
setScaleKey( spep_3-3 + 12, 1, 0.33+d, 0.33+d );
setScaleKey( spep_3-3 + 14, 1, 0.34+d, 0.34+d );
setScaleKey( spep_3-3 + 16, 1, 0.36+d, 0.36+d );
setScaleKey( spep_3-3 + 18, 1, 0.38+d, 0.38+d );
setScaleKey( spep_3-3 + 20, 1, 0.39+d, 0.39+d );
setScaleKey( spep_3-3 + 22, 1, 0.41+d, 0.41+d );
setScaleKey( spep_3-3 + 24, 1, 0.43+d, 0.43+d );
setScaleKey( spep_3-3 + 26, 1, 0.44+d, 0.44+d );
]]
setScaleKey( spep_3-3 + 28, 1, 1.46+d, 1.46+d );
setScaleKey( spep_3-3 + 30, 1, 1.47+d, 1.47+d);
setScaleKey( spep_3-3 + 32, 1, 1.49+d, 1.49+d );
setScaleKey( spep_3-3 + 34, 1, 1.51+d, 1.51+d );
setScaleKey( spep_3-3 + 36, 1, 1.52+d, 1.52+d );
setScaleKey( spep_3-3 + 38, 1, 1.54+d, 1.54+d );
setScaleKey( spep_3-3 + 40, 1, 1.56+d, 1.56+d );
setScaleKey( spep_3-3 + 42, 1, 1.57+d, 1.57+d );
setScaleKey( spep_3-3 + 45, 1, 1.59+d, 1.59+d );
setScaleKey( spep_3-3 + 46, 1, 1.52+d, 1.52+d );
setScaleKey( spep_3-3 + 48, 1, 1.4+d, 1.4+d );
setScaleKey( spep_3-3 + 50, 1, 1.27+d, 1.27+d );
setScaleKey( spep_3-3 + 52, 1, 1.14+d, 1.14+d );
setScaleKey( spep_3-3 + 54, 1, 1.01+d, 1.01+d );
setScaleKey( spep_3-3 + 56, 1, 0.88+d, 0.88+d );
setScaleKey( spep_3-3 + 58, 1, 0.75+d, 0.75+d );
setScaleKey( spep_3-3 + 60, 1, 0.7+d, 0.7+d );
setScaleKey( spep_3-3 + 62, 1, 0.65+d, 0.65+d );
setScaleKey( spep_3-3 + 64, 1, 0.6+d, 0.6+d );
setScaleKey( spep_3-3 + 66, 1, 0.55+d, 0.55+d );
setScaleKey( spep_3-3 + 68, 1, 0.51+d, 0.51+d );
setScaleKey( spep_3-3 + 70, 1, 0.46+d, 0.46+d );
setScaleKey( spep_3-3 + 72, 1, 0.41+d, 0.41+d );
setScaleKey( spep_3-3 + 74, 1, 0.36+d, 0.36+d );
setScaleKey( spep_3-3 + 76, 1, 0.31+d, 0.31+d );
setScaleKey( spep_3 + 78, 1, 0.26+d, 0.26+d );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-3 + 45, 1, 0 );
setRotateKey( spep_3-3 + 46, 1, -27.5 );
setRotateKey( spep_3-3 + 48, 1, -24.7 );
setRotateKey( spep_3-3 + 50, 1, -21.9 );
setRotateKey( spep_3-3 + 52, 1, -19.1 );
setRotateKey( spep_3-3 + 54, 1, -16.4 );
setRotateKey( spep_3-3 + 56, 1, -13.6 );
setRotateKey( spep_3-3 + 58, 1, -10.8 );
setRotateKey( spep_3-3 + 60, 1, -10.3 );
setRotateKey( spep_3-3 + 62, 1, -9.9 );
setRotateKey( spep_3-3 + 64, 1, -9.4 );
setRotateKey( spep_3-3 + 66, 1, -8.9 );
setRotateKey( spep_3-3 + 68, 1, -8.4 );
setRotateKey( spep_3-3 + 70, 1, -8 );
setRotateKey( spep_3-3 + 72, 1, -7.5 );
setRotateKey( spep_3-3 + 74, 1, -7 );
setRotateKey( spep_3-3 + 76, 1, -6.6 );
setRotateKey( spep_3 + 78, 1, -6.1 );

--SE
SE0=playSe( spep_3 + 0, 1022 );  --気弾

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3+28 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe(SP_dodge-14,SE0,0);--音を止める
   
    pauseAll( SP_dodge, 67);
    
    --[[
    --キャラクターの固定
    
    setMoveKey(SP_dodge, 1, 0, 20.6, 0);
    setScaleKey(SP_dodge , 1 ,1.5, 1.5 );
    setRotateKey(SP_dodge,   1, 0);
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, 0, 20.6, 0);
    setScaleKey(SP_dodge+10 , 1 ,1.5, 1.5 );
    setRotateKey(SP_dodge+10,   1, 0);
    ]]--
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** ホワイトフェード ** --
entryFade( spep_3 + 72, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_4 = spep_3 + 80;
------------------------------------------------------
-- 渦EF
------------------------------------------------------
--エフェクト
guruguru = entryEffect( spep_4, SP_05, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_4, guruguru, 0, 0);
setEffMoveKey( spep_4+120, guruguru, 0, 0);
setEffScaleKey( spep_4, guruguru, 1, 1);
setEffScaleKey( spep_4+120, guruguru, 1, 1);
setEffRotateKey( spep_4,  guruguru,  0);
setEffRotateKey( spep_4+120,  guruguru,  0);
setEffAlphaKey( spep_4, guruguru, 255);
setEffAlphaKey( spep_4+120, guruguru, 255);

--文字エントリー
ctzudododo = entryEffectLife( spep_4 + 0,  10014, 118, 0x100, -1, 0, 58.1, 364 );--ズドドドッ
setEffShake( spep_4, ctzudododo, 118, 10 );

setEffMoveKey( spep_4 + 0, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 2, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 4, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 6, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 8, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 10, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 12, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 14, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 16, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 18, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 20, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 22, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 24, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 26, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 28, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 30, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 32, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 34, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 36, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 38, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 40, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 42, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 44, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 46, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 48, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 50, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 52, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 54, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 56, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 58, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 60, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 62, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 64, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 66, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 68, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 70, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 72, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 74, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 76, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 78, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 80, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 82, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 84, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 86, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 88, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 90, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 92, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 94, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 96, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 98, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 100, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 102, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 104, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 106, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 108, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 110, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 112, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 114, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 116, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 118, ctzudododo, 34.1, 348 , 0 );

setEffScaleKey( spep_4 + 0, ctzudododo, 3, 3 );
setEffScaleKey( spep_4 + 118, ctzudododo,3, 3);

setEffRotateKey( spep_4 + 0, ctzudododo,70 );
setEffRotateKey( spep_4 + 118, ctzudododo, 70 );

setEffAlphaKey( spep_4 + 0, ctzudododo, 255 );
setEffAlphaKey( spep_4 + 118, ctzudododo, 255 );

--SE
playSe( spep_4 , SE_04 );  --飲み込まれる

-- ** ホワイトフェード ** --
entryFade( spep_4 + 112, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_5 = spep_4 + 120;

------------------------------------------------------
-- 亀仙人腕振り上げ
------------------------------------------------------
--エフェクト
handup = entryEffect( spep_5, SP_06, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_5, handup, 0, 0);
setEffMoveKey( spep_5+26, handup, 0, 0);
setEffScaleKey( spep_5, handup, 1, 1);
setEffScaleKey( spep_5+26, handup, 1, 1);
setEffRotateKey( spep_5,  handup,  0);
setEffRotateKey( spep_5+26,  handup,  0);
setEffAlphaKey( spep_5, handup, 255);
setEffAlphaKey( spep_5+26, handup, 255);


--集中線
shuchusen4 = entryEffectLife( spep_5 + 0,  906, 26, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 26, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen4, 1.08, 1.08 );
setEffScaleKey( spep_5 + 26, shuchusen4, 1.08, 1.08 );

setEffRotateKey( spep_5 + 0, shuchusen4, 180 );
setEffRotateKey( spep_5 + 26, shuchusen4, 180 );

setEffAlphaKey( spep_5 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 26, shuchusen4, 255 );

--SE
playSe( spep_5 , 1004 );  --手をあげる

--次の準備
spep_6 = spep_5 + 26;
------------------------------------------------------
-- EF上昇
------------------------------------------------------
--エフェクト
up = entryEffect( spep_6, SP_07, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_6, up, 0, 0);
setEffMoveKey( spep_6+36, up, 0, 0);
setEffScaleKey( spep_6, up, 1, 1);
setEffScaleKey( spep_6+36, up, 1, 1);
setEffRotateKey( spep_6,  up,  0);
setEffRotateKey( spep_6+36,  up,  0);
setEffAlphaKey( spep_6, up, 255);
setEffAlphaKey( spep_6+36, up, 255);


--集中線
shuchusen5 = entryEffectLife( spep_6 + 0,  906, 36, 0x100, -1, 0, 381, -358.3 );

setEffMoveKey( spep_6 + 0, shuchusen5, 281, -358.3 , 0 );
setEffMoveKey( spep_6 + 20, shuchusen5, -143.9, 255.5 , 0 );
setEffMoveKey( spep_6 + 36, shuchusen5, -143.9, 255.5 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen5, 1.52, 1.61 );
setEffScaleKey( spep_6 + 2, shuchusen5, 1.52, 1.61 );
setEffScaleKey( spep_6 + 4, shuchusen5, 1.52, 1.62 );
setEffScaleKey( spep_6 + 6, shuchusen5, 1.51, 1.63 );
setEffScaleKey( spep_6 + 8, shuchusen5, 1.51, 1.64 );
setEffScaleKey( spep_6 + 10, shuchusen5, 1.3, 1.66 );
setEffScaleKey( spep_6 + 12, shuchusen5, 1.29, 1.69 );
setEffScaleKey( spep_6 + 14, shuchusen5, 1.28, 1.72 );
setEffScaleKey( spep_6 + 16, shuchusen5, 1.27, 1.75 );
setEffScaleKey( spep_6 + 18, shuchusen5, 1.25, 1.78 );
setEffScaleKey( spep_6 + 20, shuchusen5, 1.24, 1.83 );
setEffScaleKey( spep_6 + 22, shuchusen5, 1.22, 1.87 );
setEffScaleKey( spep_6 + 24, shuchusen5, 1.2, 1.92 );
setEffScaleKey( spep_6 + 26, shuchusen5, 1.21, 1.94 );
setEffScaleKey( spep_6 + 28, shuchusen5, 1.22, 1.95 );
setEffScaleKey( spep_6 + 30, shuchusen5, 1.23, 1.97 );
setEffScaleKey( spep_6 + 32, shuchusen5, 1.25, 1.99 );
setEffScaleKey( spep_6 + 34, shuchusen5, 1.26, 2.01 );
setEffScaleKey( spep_6 + 36, shuchusen5, 1.27, 2.02 );


setEffRotateKey( spep_6 + 0, shuchusen5, 180 );
setEffRotateKey( spep_6 + 36, shuchusen5, 180 );

setEffAlphaKey( spep_6 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_6 + 36, shuchusen5, 255 );

--SE
playSe( spep_6 , 1021 );  --ビームが上がる

--次の準備
spep_7 = spep_6 + 36;

------------------------------------------------------
-- 亀仙人腕振り下ろし
------------------------------------------------------
--エフェクト
handdown = entryEffect( spep_7, SP_08, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_7, handdown, 0, 0);
setEffMoveKey( spep_7+26, handdown, 0, 0);
setEffScaleKey( spep_7, handdown, 1, 1);
setEffScaleKey( spep_7+26, handdown, 1, 1);
setEffRotateKey( spep_7,  handdown,  0);
setEffRotateKey( spep_7+26,  handdown,  0);
setEffAlphaKey( spep_7, handdown, 255);
setEffAlphaKey( spep_7+26, handdown, 255);

--集中線
shuchusen6 = entryEffectLife( spep_7 + 0,  906, 26, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_7 + 0, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_7 + 26, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen6, 1.08, 1.08 );
setEffScaleKey( spep_7 + 26, shuchusen6, 1.08, 1.08 );

setEffRotateKey( spep_7 + 0, shuchusen6, 180 );
setEffRotateKey( spep_7 + 26, shuchusen6, 180 );

setEffAlphaKey( spep_7 + 0, shuchusen6, 255 );
setEffAlphaKey( spep_7 + 26, shuchusen6, 255 );

--SE
playSe( spep_7 , 1004 );  --手を下げる

-- ** ホワイトフェード ** --
entryFade( spep_7 + 18, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_8 = spep_7 + 26;

------------------------------------------------------
-- 炊飯ジャーにin
------------------------------------------------------
--エフェクト
inzya = entryEffect( spep_8, SP_09, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_8, inzya, 0, 0);
setEffMoveKey( spep_8+150, inzya, 0, 0);
setEffScaleKey( spep_8, inzya, 1, 1);
setEffScaleKey( spep_8+150, inzya, 1, 1);
setEffRotateKey( spep_8,  inzya,  0);
setEffRotateKey( spep_8+150,  inzya,  0);
setEffAlphaKey( spep_8, inzya, 255);
setEffAlphaKey( spep_8+150, inzya, 255);

shuchusen7 = entryEffectLife( spep_8 + 0,  906, 58, 0x100, -1, 0, 0, 527.6 );

setEffMoveKey( spep_8 + 0, shuchusen7, 0, 527.6 , 0 );
setEffMoveKey( spep_8 + 2, shuchusen7, 0, 507.1 , 0 );
setEffMoveKey( spep_8 + 4, shuchusen7, 0, 486.7 , 0 );
setEffMoveKey( spep_8 + 6, shuchusen7, 0, 466.2 , 0 );
setEffMoveKey( spep_8 + 8, shuchusen7, 0, 445.7 , 0 );
setEffMoveKey( spep_8 + 10, shuchusen7, 0, 425.2 , 0 );
setEffMoveKey( spep_8 + 12, shuchusen7, 0, 404.8 , 0 );
setEffMoveKey( spep_8 + 14, shuchusen7, 0, 384.3 , 0 );
setEffMoveKey( spep_8 + 16, shuchusen7, 0, 363.8 , 0 );
setEffMoveKey( spep_8 + 18, shuchusen7, 0, 343.4 , 0 );
setEffMoveKey( spep_8 + 20, shuchusen7, 0, 322.9 , 0 );
setEffMoveKey( spep_8 + 22, shuchusen7, 0, 302.4 , 0 );
setEffMoveKey( spep_8 + 24, shuchusen7, 0, 281.9 , 0 );
setEffMoveKey( spep_8 + 26, shuchusen7, 0, 261.4 , 0 );
setEffMoveKey( spep_8 + 28, shuchusen7, 0, 241 , 0 );
setEffMoveKey( spep_8 + 30, shuchusen7, 0, 220.5 , 0 );
setEffMoveKey( spep_8 + 32, shuchusen7, 0, 200 , 0 );
setEffMoveKey( spep_8 + 34, shuchusen7, 0, 120.2 , 0 );
setEffMoveKey( spep_8 + 36, shuchusen7, 0, 51.9 , 0 );
setEffMoveKey( spep_8 + 38, shuchusen7, 0, -6 , 0 );
setEffMoveKey( spep_8 + 40, shuchusen7, 0, -54.3 , 0 );
setEffMoveKey( spep_8 + 42, shuchusen7, 0, -93.8 , 0 );
setEffMoveKey( spep_8 + 44, shuchusen7, 0, -125.4 , 0 );
setEffMoveKey( spep_8 + 46, shuchusen7, 0, -150.1 , 0 );
setEffMoveKey( spep_8 + 48, shuchusen7, 0, -168.6 , 0 );
setEffMoveKey( spep_8 + 50, shuchusen7, 0, -181.9 , 0 );
setEffMoveKey( spep_8 + 52, shuchusen7, 0, -190.8 , 0 );
setEffMoveKey( spep_8 + 54, shuchusen7, 0, -196.2 , 0 );
setEffMoveKey( spep_8 + 56, shuchusen7, 0, -198.9 , 0 );
setEffMoveKey( spep_8 + 58, shuchusen7, 0, -200 , 0 );

setEffScaleKey( spep_8 + 0, shuchusen7, 1.27, 2.03 );
setEffScaleKey( spep_8 + 2, shuchusen7, 1.26, 1.99 );
setEffScaleKey( spep_8 + 4, shuchusen7, 1.24, 1.95 );
setEffScaleKey( spep_8 + 6, shuchusen7, 1.22, 1.91 );
setEffScaleKey( spep_8 + 8, shuchusen7, 1.21, 1.87 );
setEffScaleKey( spep_8 + 10, shuchusen7, 1.19, 1.83 );
setEffScaleKey( spep_8 + 12, shuchusen7, 1.17, 1.79 );
setEffScaleKey( spep_8 + 14, shuchusen7, 1.16, 1.75 );
setEffScaleKey( spep_8 + 16, shuchusen7, 1.14, 1.7 );
setEffScaleKey( spep_8 + 18, shuchusen7, 1.12, 1.66 );
setEffScaleKey( spep_8 + 20, shuchusen7, 1.11, 1.62 );
setEffScaleKey( spep_8 + 22, shuchusen7, 1.09, 1.58 );
setEffScaleKey( spep_8 + 24, shuchusen7, 1.08, 1.54 );
setEffScaleKey( spep_8 + 26, shuchusen7, 1.06, 1.5 );
setEffScaleKey( spep_8 + 28, shuchusen7, 1.04, 1.46 );
setEffScaleKey( spep_8 + 30, shuchusen7, 1.03, 1.42 );
setEffScaleKey( spep_8 + 32, shuchusen7, 1.01, 1.38 );
setEffScaleKey( spep_8 + 34, shuchusen7, 1.01, 1.38 );
setEffScaleKey( spep_8 + 36, shuchusen7, 1.01, 1.37 );
setEffScaleKey( spep_8 + 42, shuchusen7, 1.01, 1.37 );
setEffScaleKey( spep_8 + 44, shuchusen7, 1.01, 1.36 );
setEffScaleKey( spep_8 + 58, shuchusen7, 1.01, 1.36 );

setEffRotateKey( spep_8 + 0, shuchusen7, 0 );
setEffRotateKey( spep_8 + 58, shuchusen7, 0 );

setEffAlphaKey( spep_8 + 0, shuchusen7, 255 );
setEffAlphaKey( spep_8 + 32, shuchusen7, 255 );
setEffAlphaKey( spep_8 + 34, shuchusen7, 204 );
setEffAlphaKey( spep_8 + 36, shuchusen7, 161 );
setEffAlphaKey( spep_8 + 38, shuchusen7, 124 );
setEffAlphaKey( spep_8 + 40, shuchusen7, 93 );
setEffAlphaKey( spep_8 + 42, shuchusen7, 68 );
setEffAlphaKey( spep_8 + 44, shuchusen7, 48 );
setEffAlphaKey( spep_8 + 46, shuchusen7, 32 );
setEffAlphaKey( spep_8 + 48, shuchusen7, 20 );
setEffAlphaKey( spep_8 + 50, shuchusen7, 12 );
setEffAlphaKey( spep_8 + 52, shuchusen7, 6 );
setEffAlphaKey( spep_8 + 54, shuchusen7, 3 );
setEffAlphaKey( spep_8 + 56, shuchusen7, 1 );
setEffAlphaKey( spep_8 + 58, shuchusen7, 0 );

--SE
playSe( spep_8, 1021 );  --ビームが上がる
playSe( spep_8+40, 40 );  --すいはんじゃが閉まる

-- ** ダメージ表示 ** --
dealDamage( spep_8 + 40 );
entryFade( spep_8 + 136, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_8 + 146 );

else 
------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- スタート気溜め
------------------------------------------------------
spep_0=0;

-- ** エフェクト等 ** --
kidame = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, kidame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 180, kidame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kidame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 180, kidame, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, kidame, 255 );
setEffAlphaKey( spep_0 + 180, kidame, 255 );
setEffRotateKey( spep_0 + 0, kidame, 0 );
setEffRotateKey( spep_0 + 180, kidame, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 40, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 40, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 52,  190006, 72, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 52, ctgogo, 72, 10 );
 
setEffMoveKey( spep_0 + 52, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 124, ctgogo, -9.9, 515.5 , 0 );
 
setEffScaleKey( spep_0 + 52, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 114, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 116, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_0 + 120, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_0 + 122, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_0 + 124, ctgogo, -1.69, 1.69 );
 
setEffRotateKey( spep_0 + 52, ctgogo, 0 );
setEffRotateKey( spep_0 + 124, ctgogo, 0 );
 
setEffAlphaKey( spep_0 + 52, ctgogo, 0 );
setEffAlphaKey( spep_0 + 53, ctgogo, 255 );
setEffAlphaKey( spep_0 + 54, ctgogo, 255 );
setEffAlphaKey( spep_0 + 124, ctgogo, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 38,  906, 140, 0x100, -1, 0, 0.1, 0 );

setEffMoveKey( spep_0 + 38, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 178, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 38, shuchusen1, 1.22, 1.22 );
setEffScaleKey( spep_0 + 178, shuchusen1, 1.22, 1.22 );

setEffRotateKey( spep_0 + 42, shuchusen1, 0 );
setEffRotateKey( spep_0 + 178, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 38, shuchusen1, 28 );
setEffAlphaKey( spep_0 + 44, shuchusen1, 57 );
setEffAlphaKey( spep_0 + 46, shuchusen1, 85 );
setEffAlphaKey( spep_0 + 48, shuchusen1, 113 );
setEffAlphaKey( spep_0 + 50, shuchusen1, 142 );
setEffAlphaKey( spep_0 + 52, shuchusen1, 170 );
setEffAlphaKey( spep_0 + 54, shuchusen1, 198 );
setEffAlphaKey( spep_0 + 56, shuchusen1, 227 );
setEffAlphaKey( spep_0 + 58, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 178, shuchusen1, 255 );

--SE
playSe( spep_0 + 52, SE_04 );  --ゴゴゴ
SE1=playSe( spep_0 +50, 1044 );  --地揺れ
stopSe(spep_0+178,SE1,0);



-- ** ホワイトフェード ** --
entryFade( spep_0 + 170, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_1=spep_0+180;
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------


playSe( spep_1, SE_05);
speff = entryEffect(  spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                         -- 技名テクスチャ差し替え

shuchusen = entryEffectLife( spep_1, 906, 90, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_1,  shuchusen,  0,  0);
setEffMoveKey(  spep_1+90,  shuchusen,  0,  0);
setEffScaleKey(  spep_1,  shuchusen,  1.6,  1.6);
setEffScaleKey(  spep_1+90,  shuchusen,  1.6,  1.6);
setEffRotateKey(  spep_1,  shuchusen,  0);
setEffRotateKey(  spep_1+90,  shuchusen,  0);
setEffAlphaKey(  spep_1,  shuchusen,  255);
setEffAlphaKey(  spep_1+90,  shuchusen,  255);


--***背景と白フェード***
entryFade( spep_1+76, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_2 = spep_1 + 88;
----------------------------------------------------
-- かめはめ波発射
------------------------------------------------------

--エフェクト
kamebeam = entryEffect( spep_2, SP_02x, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_2, kamebeam, 0, 0);
setEffMoveKey( spep_2+60, kamebeam, 0, 0);
setEffScaleKey( spep_2, kamebeam, 1, 1);
setEffScaleKey( spep_2+60, kamebeam, 1, 1);
setEffRotateKey( spep_2,  kamebeam,  0);
setEffRotateKey( spep_2+60,  kamebeam,  0);
setEffAlphaKey( spep_2, kamebeam, 255);
setEffAlphaKey( spep_2+60, kamebeam, 255);


--文字エントリー
ctzuo = entryEffectLife( spep_2 + 0,  10012, 32, 0x100, -1, 0, 76, 259.9 );--ズオッ
setEffShake( spep_2, ctzuo, 32, 10 );

setEffMoveKey( spep_2 + 0, ctzuo, 76, 259.9 , 0 );
setEffMoveKey( spep_2 + 2, ctzuo, 105, 300.9 , 0 );
setEffMoveKey( spep_2 + 4, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2 + 6, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2 + 8, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2 + 10, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2 + 12, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2 + 14, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2 + 16, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2 + 18, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2 + 20, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2 + 22, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2 + 24, ctzuo, 124, 359.9 , 0 );
setEffMoveKey( spep_2 + 26, ctzuo, 157.6, 334.3 , 0 );
setEffMoveKey( spep_2 + 28, ctzuo, 139.9, 359.9 , 0 );
setEffMoveKey( spep_2 + 30, ctzuo, 183.2, 324.7 , 0 );
setEffMoveKey( spep_2 + 32, ctzuo, 196, 319.9 , 0 );

setEffScaleKey( spep_2 + 0, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_2 + 2, ctzuo, 1.54, 1.54 );
setEffScaleKey( spep_2 + 4, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 + 22, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 + 24, ctzuo, 3.55, 3.55 );
setEffScaleKey( spep_2 + 26, ctzuo, 4.37, 4.37 );
setEffScaleKey( spep_2 + 28, ctzuo, 5.19, 5.19 );
setEffScaleKey( spep_2 + 30, ctzuo, 6.01, 6.01 );
setEffScaleKey( spep_2 + 32, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_2 + 0, ctzuo, 27.2 );
setEffRotateKey( spep_2 + 32, ctzuo, 27.2 );

setEffAlphaKey( spep_2 + 0, ctzuo, 255 );
setEffAlphaKey( spep_2 + 22, ctzuo, 255 );
setEffAlphaKey( spep_2 + 24, ctzuo, 204 );
setEffAlphaKey( spep_2 + 26, ctzuo, 153 );
setEffAlphaKey( spep_2 + 28, ctzuo, 102 );
setEffAlphaKey( spep_2 + 30, ctzuo, 51 );
setEffAlphaKey( spep_2 + 32, ctzuo, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_2 + 0,  906, 14, 0x100, -1, 0, 219.6, 0 );

b=450;

setEffMoveKey( spep_2 + 0, shuchusen2, 219.6-b, 0 , 0 );
setEffMoveKey( spep_2 + 2, shuchusen2, 283.7-b, 0 , 0 );
setEffMoveKey( spep_2 + 4, shuchusen2, 347.8-b, 0 , 0 );
setEffMoveKey( spep_2 + 6, shuchusen2, 412-b, 0 , 0 );
setEffMoveKey( spep_2 + 8, shuchusen2, 476.1-b, 0 , 0 );
setEffMoveKey( spep_2 + 10, shuchusen2, 540.2-b, 0 , 0 );
setEffMoveKey( spep_2 + 12, shuchusen2, 604.4-b, 0 , 0 );
setEffMoveKey( spep_2 + 14, shuchusen2, 668.5-b, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.06, 1.06 );
setEffScaleKey( spep_2 + 2, shuchusen2, 1.26, 1.26 );
setEffScaleKey( spep_2 + 4, shuchusen2, 1.47, 1.47 );
setEffScaleKey( spep_2 + 6, shuchusen2, 1.68, 1.68 );
setEffScaleKey( spep_2 + 8, shuchusen2, 1.88, 1.88 );
setEffScaleKey( spep_2 + 10, shuchusen2, 2.09, 2.09 );
setEffScaleKey( spep_2 + 12, shuchusen2, 2.29, 2.29 );
setEffScaleKey( spep_2 + 14, shuchusen2, 2.5, 2.5 );

setEffRotateKey( spep_2 + 0, shuchusen2, 180 );
setEffRotateKey( spep_2 + 14, shuchusen2, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 14, shuchusen2, 255 );

--SE
playSe( spep_2 + 0, 1021 );  --気弾

-- ** ホワイトフェード ** --
entryFade( spep_2 + 52, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade


--次の準備
spep_3 = spep_2 + 58;
------------------------------------------------------
-- 迫るかめはめ波
------------------------------------------------------
--エフェクト(背景)
kamehit_b = entryEffect( spep_3, SP_03x, 0x80, -1, 0, 0, 0); 
setEffMoveKey( spep_3, kamehit_b, 0, 0);
setEffMoveKey( spep_3+80, kamehit_b, 0, 0);
setEffScaleKey( spep_3, kamehit_b, 1, 1);
setEffScaleKey( spep_3+80, kamehit_b, 1, 1);
setEffRotateKey( spep_3,  kamehit_b,  0);
setEffRotateKey( spep_3+80,  kamehit_b,  0);
setEffAlphaKey( spep_3, kamehit_b, 255);
setEffAlphaKey( spep_3+80, kamehit_b, 255);

--流線
ryusen1 = entryEffectLife( spep_3 + 0,  913, 74, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 74, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, ryusen1, 1.37, 0.96 );
setEffScaleKey( spep_3 + 74, ryusen1, 1.37, 0.96 );

setEffRotateKey( spep_3 + 0, ryusen1, -67.2 );
setEffRotateKey( spep_3 + 74, ryusen1, -67.2 );

setEffAlphaKey( spep_3 + 0, ryusen1, 0 );
setEffAlphaKey( spep_3 + 33, ryusen1, 0 );
setEffAlphaKey( spep_3 + 34, ryusen1, 180 );
setEffAlphaKey( spep_3 + 74, ryusen1, 180 );

--エフェクト
kamehit_f = entryEffect( spep_3, SP_04x, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_3, kamehit_f, 0, 0);
setEffMoveKey( spep_3+80, kamehit_f, 0, 0);
setEffScaleKey( spep_3, kamehit_f, 1, 1);
setEffScaleKey( spep_3+80, kamehit_f, 1, 1);
setEffRotateKey( spep_3,  kamehit_f,  0);
setEffRotateKey( spep_3+80,  kamehit_f,  0);
setEffAlphaKey( spep_3, kamehit_f, 255);
setEffAlphaKey( spep_3+80, kamehit_f, 255);

--集中線
shuchusen3 = entryEffectLife( spep_3 + 0,  906, 44, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 44, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen3, 1.12, 1.26 );
setEffScaleKey( spep_3 + 44, shuchusen3, 1.12, 1.26 );

setEffRotateKey( spep_3 + 0, shuchusen3, 179.7 );
setEffRotateKey( spep_3 + 44, shuchusen3, 179.7 );

setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 36, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 38, shuchusen3, 191 );
setEffAlphaKey( spep_3 + 40, shuchusen3, 128 );
setEffAlphaKey( spep_3 + 42, shuchusen3, 64 );
setEffAlphaKey( spep_3 + 44, shuchusen3, 0 );

--文字エントリー
ctzuo2 = entryEffectLife( spep_3-2 + 4,  10012, 44, 0x100, -1, 0, 76, 259.9 );--ズオッ
setEffShake( spep_3-2 + 4, ctzuo2, 22, 10 );

setEffMoveKey( spep_3-2 + 4, ctzuo2, 76, 259.9 , 0 );
setEffMoveKey( spep_3-2 + 6, ctzuo2, 105, 300.9 , 0 );
setEffMoveKey( spep_3-2 + 8, ctzuo2, 116, 359.9 , 0 );
setEffMoveKey( spep_3-2 + 10, ctzuo2, 132, 343.9 , 0 );
setEffMoveKey( spep_3-2 + 12, ctzuo2, 116, 359.9 , 0 );
setEffMoveKey( spep_3-2 + 14, ctzuo2, 132, 343.9 , 0 );
setEffMoveKey( spep_3-2 + 16, ctzuo2, 116, 359.9 , 0 );
setEffMoveKey( spep_3-2 + 18, ctzuo2, 132, 343.9 , 0 );
setEffMoveKey( spep_3-2 + 20, ctzuo2, 116, 359.9 , 0 );
setEffMoveKey( spep_3-2 + 22, ctzuo2, 132, 343.9 , 0 );
setEffMoveKey( spep_3-2 + 24, ctzuo2, 116, 359.9 , 0 );
setEffMoveKey( spep_3-2 + 26, ctzuo2, 132, 343.9 , 0 );
setEffMoveKey( spep_3-2 + 28, ctzuo2, 116, 359.9 , 0 );
setEffMoveKey( spep_3-2 + 30, ctzuo2, 132, 343.9 , 0 );
setEffMoveKey( spep_3-2 + 32, ctzuo2, 116, 359.9 , 0 );
setEffMoveKey( spep_3-2 + 34, ctzuo2, 132, 343.9 , 0 );
setEffMoveKey( spep_3-2 + 36, ctzuo2, 116, 359.9 , 0 );
setEffMoveKey( spep_3-2 + 38, ctzuo2, 132, 343.9 , 0 );
setEffMoveKey( spep_3-2 + 40, ctzuo2, 124, 359.9 , 0 );
setEffMoveKey( spep_3-2 + 42, ctzuo2, 157.6, 334.3 , 0 );
setEffMoveKey( spep_3-2 + 44, ctzuo2, 139.9, 359.9 , 0 );
setEffMoveKey( spep_3-2 + 46, ctzuo2, 183.2, 324.7 , 0 );
setEffMoveKey( spep_3-2 + 48, ctzuo2, 196, 319.9 , 0 );

c=3.5;

setEffScaleKey( spep_3 + 4, ctzuo2, 0.34, 0.34 );
setEffScaleKey( spep_3 + 6, ctzuo2, 1.54, 1.54 );
setEffScaleKey( spep_3 + 8, ctzuo2, 2.73, 2.73 );
setEffScaleKey( spep_3 + 38, ctzuo2, 2.73, 2.73 );
setEffScaleKey( spep_3 + 40, ctzuo2, 3.55, 3.55 );
setEffScaleKey( spep_3 + 42, ctzuo2, 4.37, 4.37 );
setEffScaleKey( spep_3 + 44, ctzuo2, 5.19, 5.19 );
setEffScaleKey( spep_3 + 46, ctzuo2, 6.01, 6.01 );
setEffScaleKey( spep_3 + 48, ctzuo2, 6.82, 6.82 );

setEffRotateKey( spep_3-2 + 4, ctzuo2, 27.2  );
setEffRotateKey( spep_3-2 + 48, ctzuo2, 27.2  );

setEffAlphaKey( spep_3-2 + 4, ctzuo2, 255 );
setEffAlphaKey( spep_3-2 + 38, ctzuo2, 255 );
setEffAlphaKey( spep_3-2 + 40, ctzuo2, 204 );
setEffAlphaKey( spep_3-2 + 42, ctzuo2, 153 );
setEffAlphaKey( spep_3-2 + 44, ctzuo2, 102 );
setEffAlphaKey( spep_3-2 + 46, ctzuo2, 51 );
setEffAlphaKey( spep_3-2 + 48, ctzuo2, 0 );

--てき
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 43, 1, 0 );
setDisp( spep_3 + 44, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );
--changeAnime( spep_3 + 46, 1, 106 );

setMoveKey( spep_3 + 0, 1, 146, 127.9 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 142, 120.6 , 0 );
setMoveKey( spep_3-3 + 4, 1, 138, 123.4 , 0 );
setMoveKey( spep_3-3 + 6, 1, 134, 114.1 , 0 );
setMoveKey( spep_3-3 + 8, 1, 130, 116.8 , 0 );
setMoveKey( spep_3-3 + 10, 1, 126, 107.6 , 0 );
setMoveKey( spep_3-3 + 12, 1, 122, 110.3 , 0 );
setMoveKey( spep_3-3 + 14, 1, 118, 101 , 0 );
setMoveKey( spep_3-3 + 16, 1, 114, 103.7 , 0 );
setMoveKey( spep_3-3 + 18, 1, 110, 94.5 , 0 );
setMoveKey( spep_3-3 + 20, 1, 106, 97.2 , 0 );
setMoveKey( spep_3-3 + 22, 1, 102.1, 87.9 , 0 );
setMoveKey( spep_3-3 + 24, 1, 98.1, 90.7 , 0 );
setMoveKey( spep_3-3 + 26, 1, 94.1, 81.4 , 0 );
setMoveKey( spep_3-3 + 28, 1, 90.1, 84.1 , 0 );
setMoveKey( spep_3-3 + 30, 1, 86.1, 74.8 , 0 );
setMoveKey( spep_3-3 + 32, 1, 82.1, 77.6 , 0 );
setMoveKey( spep_3-3 + 34, 1, 78.1, 68.3 , 0 );
setMoveKey( spep_3-3 + 36, 1, 74.1, 71 , 0 );
setMoveKey( spep_3-3 + 38, 1, 70.1, 61.8 , 0 );
setMoveKey( spep_3-3 + 40, 1, 66.1, 64.5 , 0 );
setMoveKey( spep_3-3 + 42, 1, 62.1, 55.2 , 0 );
setMoveKey( spep_3-3 + 45, 1, 58.1, 57.9 , 0 );
setMoveKey( spep_3-3 + 46, 1, 31.9, 92 , 0 );
setMoveKey( spep_3-3 + 48, 1, 43.3, 119.3 , 0 );
setMoveKey( spep_3-3 + 50, 1, 54.6, 134.6 , 0 );
setMoveKey( spep_3-3 + 52, 1, 65.9, 161.9 , 0 );
setMoveKey( spep_3-3 + 54, 1, 77.3, 177.3 , 0 );
setMoveKey( spep_3-3 + 56, 1, 88.6, 204.7 , 0 );
setMoveKey( spep_3-3 + 58, 1, 100, 220 , 0 );
setMoveKey( spep_3-3 + 60, 1, 108.4, 246.1 , 0 );
setMoveKey( spep_3-3 + 62, 1, 116.8, 260.1 , 0 );
setMoveKey( spep_3-3 + 64, 1, 125.2, 286.1 , 0 );
setMoveKey( spep_3-3 + 66, 1, 133.6, 300.1 , 0 );
setMoveKey( spep_3-3 + 68, 1, 142, 326.1 , 0 );
setMoveKey( spep_3-3 + 70, 1, 150.4, 340.1 , 0 );
setMoveKey( spep_3-3 + 72, 1, 158.8, 366.1 , 0 );
setMoveKey( spep_3-3 + 74, 1, 167.2, 380.2 , 0 );
setMoveKey( spep_3-3 + 76, 1, 175.7, 406.2 , 0 );
setMoveKey( spep_3 + 78, 1, 184.1, 420.2 , 0 );

d=0.3;

setScaleKey( spep_3 + 0, 1, 0.43+d, 0.43+d );
--[[
--setScaleKey( spep_3-3 + 2, 1, 0.24, 0.24 );
setScaleKey( spep_3-3 + 4, 1, 0.26+d, 0.26+d );
setScaleKey( spep_3-3 + 6, 1, 0.28+d, 0.28+d );
setScaleKey( spep_3-3 + 8, 1, 0.29+d, 0.29+d );
setScaleKey( spep_3-3 + 10, 1, 0.31+d, 0.31+d );
setScaleKey( spep_3-3 + 12, 1, 0.33+d, 0.33+d );
setScaleKey( spep_3-3 + 14, 1, 0.34+d, 0.34+d );
setScaleKey( spep_3-3 + 16, 1, 0.36+d, 0.36+d );
setScaleKey( spep_3-3 + 18, 1, 0.38+d, 0.38+d );
setScaleKey( spep_3-3 + 20, 1, 0.39+d, 0.39+d );
setScaleKey( spep_3-3 + 22, 1, 0.41+d, 0.41+d );
setScaleKey( spep_3-3 + 24, 1, 0.43+d, 0.43+d );
setScaleKey( spep_3-3 + 26, 1, 0.44+d, 0.44+d );
]]
setScaleKey( spep_3-3 + 28, 1, 1.46+d, 1.46+d );
setScaleKey( spep_3-3 + 30, 1, 1.47+d, 1.47+d);
setScaleKey( spep_3-3 + 32, 1, 1.49+d, 1.49+d );
setScaleKey( spep_3-3 + 34, 1, 1.51+d, 1.51+d );
setScaleKey( spep_3-3 + 36, 1, 1.52+d, 1.52+d );
setScaleKey( spep_3-3 + 38, 1, 1.54+d, 1.54+d );
setScaleKey( spep_3-3 + 40, 1, 1.56+d, 1.56+d );
setScaleKey( spep_3-3 + 42, 1, 1.57+d, 1.57+d );
setScaleKey( spep_3-3 + 45, 1, 1.59+d, 1.59+d );
setScaleKey( spep_3-3 + 46, 1, 1.52+d, 1.52+d );
setScaleKey( spep_3-3 + 48, 1, 1.4+d, 1.4+d );
setScaleKey( spep_3-3 + 50, 1, 1.27+d, 1.27+d );
setScaleKey( spep_3-3 + 52, 1, 1.14+d, 1.14+d );
setScaleKey( spep_3-3 + 54, 1, 1.01+d, 1.01+d );
setScaleKey( spep_3-3 + 56, 1, 0.88+d, 0.88+d );
setScaleKey( spep_3-3 + 58, 1, 0.75+d, 0.75+d );
setScaleKey( spep_3-3 + 60, 1, 0.7+d, 0.7+d );
setScaleKey( spep_3-3 + 62, 1, 0.65+d, 0.65+d );
setScaleKey( spep_3-3 + 64, 1, 0.6+d, 0.6+d );
setScaleKey( spep_3-3 + 66, 1, 0.55+d, 0.55+d );
setScaleKey( spep_3-3 + 68, 1, 0.51+d, 0.51+d );
setScaleKey( spep_3-3 + 70, 1, 0.46+d, 0.46+d );
setScaleKey( spep_3-3 + 72, 1, 0.41+d, 0.41+d );
setScaleKey( spep_3-3 + 74, 1, 0.36+d, 0.36+d );
setScaleKey( spep_3-3 + 76, 1, 0.31+d, 0.31+d );
setScaleKey( spep_3 + 78, 1, 0.26+d, 0.26+d );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-3 + 45, 1, 0 );
setRotateKey( spep_3-3 + 46, 1, -27.5 );
setRotateKey( spep_3-3 + 48, 1, -24.7 );
setRotateKey( spep_3-3 + 50, 1, -21.9 );
setRotateKey( spep_3-3 + 52, 1, -19.1 );
setRotateKey( spep_3-3 + 54, 1, -16.4 );
setRotateKey( spep_3-3 + 56, 1, -13.6 );
setRotateKey( spep_3-3 + 58, 1, -10.8 );
setRotateKey( spep_3-3 + 60, 1, -10.3 );
setRotateKey( spep_3-3 + 62, 1, -9.9 );
setRotateKey( spep_3-3 + 64, 1, -9.4 );
setRotateKey( spep_3-3 + 66, 1, -8.9 );
setRotateKey( spep_3-3 + 68, 1, -8.4 );
setRotateKey( spep_3-3 + 70, 1, -8 );
setRotateKey( spep_3-3 + 72, 1, -7.5 );
setRotateKey( spep_3-3 + 74, 1, -7 );
setRotateKey( spep_3-3 + 76, 1, -6.6 );
setRotateKey( spep_3 + 78, 1, -6.1 );

--SE
SE0=playSe( spep_3 + 0, 1022 );  --気弾

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3+28 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe(SP_dodge-14,SE0,0);--音を止める
   
    pauseAll( SP_dodge, 67);
    
    --[[
    --キャラクターの固定
    
    setMoveKey(SP_dodge, 1, 0, 20.6, 0);
    setScaleKey(SP_dodge , 1 ,1.5, 1.5 );
    setRotateKey(SP_dodge,   1, 0);
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, 0, 20.6, 0);
    setScaleKey(SP_dodge+10 , 1 ,1.5, 1.5 );
    setRotateKey(SP_dodge+10,   1, 0);
    ]]--
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** ホワイトフェード ** --
entryFade( spep_3 + 72, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_4 = spep_3 + 80;
------------------------------------------------------
-- 渦EF
------------------------------------------------------
--エフェクト
guruguru = entryEffect( spep_4, SP_05x, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_4, guruguru, 0, 0);
setEffMoveKey( spep_4+120, guruguru, 0, 0);
setEffScaleKey( spep_4, guruguru, 1, 1);
setEffScaleKey( spep_4+120, guruguru, 1, 1);
setEffRotateKey( spep_4,  guruguru,  0);
setEffRotateKey( spep_4+120,  guruguru,  0);
setEffAlphaKey( spep_4, guruguru, 255);
setEffAlphaKey( spep_4+120, guruguru, 255);

--文字エントリー
ctzudododo = entryEffectLife( spep_4 + 0,  10014, 118, 0x100, -1, 0, 58.1, 364 );--ズドドドッ
setEffShake( spep_4, ctzudododo, 118, 10 );

setEffMoveKey( spep_4 + 0, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 2, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 4, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 6, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 8, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 10, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 12, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 14, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 16, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 18, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 20, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 22, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 24, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 26, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 28, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 30, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 32, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 34, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 36, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 38, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 40, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 42, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 44, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 46, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 48, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 50, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 52, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 54, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 56, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 58, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 60, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 62, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 64, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 66, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 68, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 70, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 72, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 74, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 76, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 78, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 80, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 82, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 84, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 86, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 88, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 90, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 92, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 94, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 96, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 98, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 100, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 102, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 104, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 106, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 108, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 110, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 112, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 114, ctzudododo, 34.1, 348 , 0 );
setEffMoveKey( spep_4 + 116, ctzudododo, 58.1, 364 , 0 );
setEffMoveKey( spep_4 + 118, ctzudododo, 34.1, 348 , 0 );

setEffScaleKey( spep_4 + 0, ctzudododo, 3, 3 );
setEffScaleKey( spep_4 + 118, ctzudododo,3, 3);

setEffRotateKey( spep_4 + 0, ctzudododo,0 );
setEffRotateKey( spep_4 + 118, ctzudododo, 0 );

setEffAlphaKey( spep_4 + 0, ctzudododo, 255 );
setEffAlphaKey( spep_4 + 118, ctzudododo, 255 );

--SE
playSe( spep_4 , SE_04 );  --飲み込まれる

-- ** ホワイトフェード ** --
entryFade( spep_4 + 112, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_5 = spep_4 + 120;

------------------------------------------------------
-- 亀仙人腕振り上げ
------------------------------------------------------
--エフェクト
handup = entryEffect( spep_5, SP_06x, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_5, handup, 0, 0);
setEffMoveKey( spep_5+26, handup, 0, 0);
setEffScaleKey( spep_5, handup, 1, 1);
setEffScaleKey( spep_5+26, handup, 1, 1);
setEffRotateKey( spep_5,  handup,  0);
setEffRotateKey( spep_5+26,  handup,  0);
setEffAlphaKey( spep_5, handup, 255);
setEffAlphaKey( spep_5+26, handup, 255);


--集中線
shuchusen4 = entryEffectLife( spep_5 + 0,  906, 26, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 26, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen4, 1.08, 1.08 );
setEffScaleKey( spep_5 + 26, shuchusen4, 1.08, 1.08 );

setEffRotateKey( spep_5 + 0, shuchusen4, 180 );
setEffRotateKey( spep_5 + 26, shuchusen4, 180 );

setEffAlphaKey( spep_5 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 26, shuchusen4, 255 );

--SE
playSe( spep_5 , 1004 );  --手をあげる

--次の準備
spep_6 = spep_5 + 26;
------------------------------------------------------
-- EF上昇
------------------------------------------------------
--エフェクト
up = entryEffect( spep_6, SP_07x, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_6, up, 0, 0);
setEffMoveKey( spep_6+36, up, 0, 0);
setEffScaleKey( spep_6, up, 1, 1);
setEffScaleKey( spep_6+36, up, 1, 1);
setEffRotateKey( spep_6,  up,  0);
setEffRotateKey( spep_6+36,  up,  0);
setEffAlphaKey( spep_6, up, 255);
setEffAlphaKey( spep_6+36, up, 255);


--集中線
shuchusen5 = entryEffectLife( spep_6 + 0,  906, 36, 0x100, -1, 0, 381, -358.3 );

setEffMoveKey( spep_6 + 0, shuchusen5, 281, -358.3 , 0 );
setEffMoveKey( spep_6 + 20, shuchusen5, -143.9, 255.5 , 0 );
setEffMoveKey( spep_6 + 36, shuchusen5, -143.9, 255.5 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen5, 1.52, 1.61 );
setEffScaleKey( spep_6 + 2, shuchusen5, 1.52, 1.61 );
setEffScaleKey( spep_6 + 4, shuchusen5, 1.52, 1.62 );
setEffScaleKey( spep_6 + 6, shuchusen5, 1.51, 1.63 );
setEffScaleKey( spep_6 + 8, shuchusen5, 1.51, 1.64 );
setEffScaleKey( spep_6 + 10, shuchusen5, 1.3, 1.66 );
setEffScaleKey( spep_6 + 12, shuchusen5, 1.29, 1.69 );
setEffScaleKey( spep_6 + 14, shuchusen5, 1.28, 1.72 );
setEffScaleKey( spep_6 + 16, shuchusen5, 1.27, 1.75 );
setEffScaleKey( spep_6 + 18, shuchusen5, 1.25, 1.78 );
setEffScaleKey( spep_6 + 20, shuchusen5, 1.24, 1.83 );
setEffScaleKey( spep_6 + 22, shuchusen5, 1.22, 1.87 );
setEffScaleKey( spep_6 + 24, shuchusen5, 1.2, 1.92 );
setEffScaleKey( spep_6 + 26, shuchusen5, 1.21, 1.94 );
setEffScaleKey( spep_6 + 28, shuchusen5, 1.22, 1.95 );
setEffScaleKey( spep_6 + 30, shuchusen5, 1.23, 1.97 );
setEffScaleKey( spep_6 + 32, shuchusen5, 1.25, 1.99 );
setEffScaleKey( spep_6 + 34, shuchusen5, 1.26, 2.01 );
setEffScaleKey( spep_6 + 36, shuchusen5, 1.27, 2.02 );


setEffRotateKey( spep_6 + 0, shuchusen5, 180 );
setEffRotateKey( spep_6 + 36, shuchusen5, 180 );

setEffAlphaKey( spep_6 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_6 + 36, shuchusen5, 255 );

--SE
playSe( spep_6 , 1021 );  --ビームが上がる

--次の準備
spep_7 = spep_6 + 36;

------------------------------------------------------
-- 亀仙人腕振り下ろし
------------------------------------------------------
--エフェクト
handdown = entryEffect( spep_7, SP_08x, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_7, handdown, 0, 0);
setEffMoveKey( spep_7+26, handdown, 0, 0);
setEffScaleKey( spep_7, handdown, 1, 1);
setEffScaleKey( spep_7+26, handdown, 1, 1);
setEffRotateKey( spep_7,  handdown,  0);
setEffRotateKey( spep_7+26,  handdown,  0);
setEffAlphaKey( spep_7, handdown, 255);
setEffAlphaKey( spep_7+26, handdown, 255);

--集中線
shuchusen6 = entryEffectLife( spep_7 + 0,  906, 26, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_7 + 0, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_7 + 26, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen6, 1.08, 1.08 );
setEffScaleKey( spep_7 + 26, shuchusen6, 1.08, 1.08 );

setEffRotateKey( spep_7 + 0, shuchusen6, 180 );
setEffRotateKey( spep_7 + 26, shuchusen6, 180 );

setEffAlphaKey( spep_7 + 0, shuchusen6, 255 );
setEffAlphaKey( spep_7 + 26, shuchusen6, 255 );

--SE
playSe( spep_7 , 1004 );  --手を下げる

-- ** ホワイトフェード ** --
entryFade( spep_7 + 18, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_8 = spep_7 + 26;

------------------------------------------------------
-- 炊飯ジャーにin
------------------------------------------------------
--エフェクト
inzya = entryEffect( spep_8, SP_09x, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_8, inzya, 0, 0);
setEffMoveKey( spep_8+150, inzya, 0, 0);
setEffScaleKey( spep_8, inzya, -1, 1);
setEffScaleKey( spep_8+150, inzya, -1, 1);
setEffRotateKey( spep_8,  inzya,  0);
setEffRotateKey( spep_8+150,  inzya,  0);
setEffAlphaKey( spep_8, inzya, 255);
setEffAlphaKey( spep_8+150, inzya, 255);

shuchusen7 = entryEffectLife( spep_8 + 0,  906, 58, 0x100, -1, 0, 0, 527.6 );

setEffMoveKey( spep_8 + 0, shuchusen7, 0, 527.6 , 0 );
setEffMoveKey( spep_8 + 2, shuchusen7, 0, 507.1 , 0 );
setEffMoveKey( spep_8 + 4, shuchusen7, 0, 486.7 , 0 );
setEffMoveKey( spep_8 + 6, shuchusen7, 0, 466.2 , 0 );
setEffMoveKey( spep_8 + 8, shuchusen7, 0, 445.7 , 0 );
setEffMoveKey( spep_8 + 10, shuchusen7, 0, 425.2 , 0 );
setEffMoveKey( spep_8 + 12, shuchusen7, 0, 404.8 , 0 );
setEffMoveKey( spep_8 + 14, shuchusen7, 0, 384.3 , 0 );
setEffMoveKey( spep_8 + 16, shuchusen7, 0, 363.8 , 0 );
setEffMoveKey( spep_8 + 18, shuchusen7, 0, 343.4 , 0 );
setEffMoveKey( spep_8 + 20, shuchusen7, 0, 322.9 , 0 );
setEffMoveKey( spep_8 + 22, shuchusen7, 0, 302.4 , 0 );
setEffMoveKey( spep_8 + 24, shuchusen7, 0, 281.9 , 0 );
setEffMoveKey( spep_8 + 26, shuchusen7, 0, 261.4 , 0 );
setEffMoveKey( spep_8 + 28, shuchusen7, 0, 241 , 0 );
setEffMoveKey( spep_8 + 30, shuchusen7, 0, 220.5 , 0 );
setEffMoveKey( spep_8 + 32, shuchusen7, 0, 200 , 0 );
setEffMoveKey( spep_8 + 34, shuchusen7, 0, 120.2 , 0 );
setEffMoveKey( spep_8 + 36, shuchusen7, 0, 51.9 , 0 );
setEffMoveKey( spep_8 + 38, shuchusen7, 0, -6 , 0 );
setEffMoveKey( spep_8 + 40, shuchusen7, 0, -54.3 , 0 );
setEffMoveKey( spep_8 + 42, shuchusen7, 0, -93.8 , 0 );
setEffMoveKey( spep_8 + 44, shuchusen7, 0, -125.4 , 0 );
setEffMoveKey( spep_8 + 46, shuchusen7, 0, -150.1 , 0 );
setEffMoveKey( spep_8 + 48, shuchusen7, 0, -168.6 , 0 );
setEffMoveKey( spep_8 + 50, shuchusen7, 0, -181.9 , 0 );
setEffMoveKey( spep_8 + 52, shuchusen7, 0, -190.8 , 0 );
setEffMoveKey( spep_8 + 54, shuchusen7, 0, -196.2 , 0 );
setEffMoveKey( spep_8 + 56, shuchusen7, 0, -198.9 , 0 );
setEffMoveKey( spep_8 + 58, shuchusen7, 0, -200 , 0 );

setEffScaleKey( spep_8 + 0, shuchusen7, 1.27, 2.03 );
setEffScaleKey( spep_8 + 2, shuchusen7, 1.26, 1.99 );
setEffScaleKey( spep_8 + 4, shuchusen7, 1.24, 1.95 );
setEffScaleKey( spep_8 + 6, shuchusen7, 1.22, 1.91 );
setEffScaleKey( spep_8 + 8, shuchusen7, 1.21, 1.87 );
setEffScaleKey( spep_8 + 10, shuchusen7, 1.19, 1.83 );
setEffScaleKey( spep_8 + 12, shuchusen7, 1.17, 1.79 );
setEffScaleKey( spep_8 + 14, shuchusen7, 1.16, 1.75 );
setEffScaleKey( spep_8 + 16, shuchusen7, 1.14, 1.7 );
setEffScaleKey( spep_8 + 18, shuchusen7, 1.12, 1.66 );
setEffScaleKey( spep_8 + 20, shuchusen7, 1.11, 1.62 );
setEffScaleKey( spep_8 + 22, shuchusen7, 1.09, 1.58 );
setEffScaleKey( spep_8 + 24, shuchusen7, 1.08, 1.54 );
setEffScaleKey( spep_8 + 26, shuchusen7, 1.06, 1.5 );
setEffScaleKey( spep_8 + 28, shuchusen7, 1.04, 1.46 );
setEffScaleKey( spep_8 + 30, shuchusen7, 1.03, 1.42 );
setEffScaleKey( spep_8 + 32, shuchusen7, 1.01, 1.38 );
setEffScaleKey( spep_8 + 34, shuchusen7, 1.01, 1.38 );
setEffScaleKey( spep_8 + 36, shuchusen7, 1.01, 1.37 );
setEffScaleKey( spep_8 + 42, shuchusen7, 1.01, 1.37 );
setEffScaleKey( spep_8 + 44, shuchusen7, 1.01, 1.36 );
setEffScaleKey( spep_8 + 58, shuchusen7, 1.01, 1.36 );

setEffRotateKey( spep_8 + 0, shuchusen7, 0 );
setEffRotateKey( spep_8 + 58, shuchusen7, 0 );

setEffAlphaKey( spep_8 + 0, shuchusen7, 255 );
setEffAlphaKey( spep_8 + 32, shuchusen7, 255 );
setEffAlphaKey( spep_8 + 34, shuchusen7, 204 );
setEffAlphaKey( spep_8 + 36, shuchusen7, 161 );
setEffAlphaKey( spep_8 + 38, shuchusen7, 124 );
setEffAlphaKey( spep_8 + 40, shuchusen7, 93 );
setEffAlphaKey( spep_8 + 42, shuchusen7, 68 );
setEffAlphaKey( spep_8 + 44, shuchusen7, 48 );
setEffAlphaKey( spep_8 + 46, shuchusen7, 32 );
setEffAlphaKey( spep_8 + 48, shuchusen7, 20 );
setEffAlphaKey( spep_8 + 50, shuchusen7, 12 );
setEffAlphaKey( spep_8 + 52, shuchusen7, 6 );
setEffAlphaKey( spep_8 + 54, shuchusen7, 3 );
setEffAlphaKey( spep_8 + 56, shuchusen7, 1 );
setEffAlphaKey( spep_8 + 58, shuchusen7, 0 );

--SE
playSe( spep_8, 1021 );  --ビームが上がる
playSe( spep_8+40, 40 );  --すいはんじゃが閉まる

-- ** ダメージ表示 ** --
dealDamage( spep_8 + 40 );
entryFade( spep_8 + 136, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_8 + 146 );


end 

