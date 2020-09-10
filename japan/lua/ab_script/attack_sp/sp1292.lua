--1006080:牛魔王_剛戦斧
--sp_effect_a9_00056

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
SP_01=	153373	;--	待機
SP_02=	153374	;--	気溜め
SP_03=	153375	;--	斧アップシーン
SP_04=	153376	;--	斧投げ
SP_05=	153377	;--	斧投げ２　敵に当たる

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

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--アイドリング
------------------------------------------------------
spep_0=0;

-- ** エフェクト等 ** --
taiki = entryEffect( spep_0 + 0, SP_01,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, taiki, 0, 0 , 0 );
setEffMoveKey( spep_0 + 26, taiki, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, taiki, 1.0, 1.0 );
setEffScaleKey( spep_0 + 26, taiki, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, taiki, 0 );
setEffRotateKey( spep_0 + 26, taiki, 0 );
setEffAlphaKey( spep_0 + 0, taiki, 255 );
setEffAlphaKey( spep_0 + 26, taiki, 255 );
--setEffAlphaKey( spep_0 + 27, taiki, 255 );
--setEffAlphaKey( spep_0 + 28, taiki, 0 );

--次の準備
spep_1=spep_0+26;

------------------------------------------------------
--ため
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_1 + 0, SP_02,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_1 + 100, tame, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_1 + 100, tame, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 100, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 100, tame, 255 );

-- ** エフェクト等 ** --
bg = entryEffect( spep_1 + 0, 1503,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, bg, 0, 0 , 0 );
setEffMoveKey( spep_1 + 100, bg, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_1 + 100, bg, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, bg, 0 );
setEffRotateKey( spep_1 + 100, bg, 0 );
setEffAlphaKey( spep_1 + 0, bg, 255 );
setEffAlphaKey( spep_1 + 100, bg, 255 );

--文字エントリー
ctzuzun = entryEffectLife( spep_1 + 0,  10013, 12, 0x100, -1, 0, 22, 224.4 );--ズズズンッ

setEffMoveKey( spep_1 + 0, ctzuzun, 22, 224.4 , 0 );
setEffMoveKey( spep_1 + 2, ctzuzun, 29.8, 266.2 , 0 );
setEffMoveKey( spep_1 + 4, ctzuzun, 49.2, 317.6 , 0 );
setEffMoveKey( spep_1 + 6, ctzuzun, 46.8, 334 , 0 );
setEffMoveKey( spep_1 + 8, ctzuzun, 52.9, 331.8 , 0 );
setEffMoveKey( spep_1 + 10, ctzuzun, 39.3, 310.4 , 0 );
setEffMoveKey( spep_1 + 12, ctzuzun, 36, 299.9 , 0 );

setEffScaleKey( spep_1 + 0, ctzuzun, 1.34, 1.34 );
setEffScaleKey( spep_1 + 2, ctzuzun, 2.17, 2.17 );
setEffScaleKey( spep_1 + 4, ctzuzun, 2.98, 2.98 );
setEffScaleKey( spep_1 + 6, ctzuzun, 3.5, 3.5 );
setEffScaleKey( spep_1 + 12, ctzuzun, 3.5, 3.5 );

setEffRotateKey( spep_1 + 0, ctzuzun, 0 );
setEffRotateKey( spep_1 + 12, ctzuzun, 0 );

setEffAlphaKey( spep_1 + 0, ctzuzun, 255 );
setEffAlphaKey( spep_1 + 2, ctzuzun, 206 );
setEffAlphaKey( spep_1 + 4, ctzuzun, 159 );
setEffAlphaKey( spep_1 + 6, ctzuzun, 115 );
setEffAlphaKey( spep_1 + 8, ctzuzun, 74 );
setEffAlphaKey( spep_1 + 10, ctzuzun, 35 );
setEffAlphaKey( spep_1 + 12, ctzuzun, 0 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_1 +8, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_1 +8, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_1  + 20,  190006, 72, 0x100, -1, 0, -20.9, 512.8 ); --ゴゴゴ
setEffShake( spep_1  + 20, ctgogo, 72, 10 );
 
setEffMoveKey( spep_1  + 20, ctgogo, -20.9, 512.8 , 0 );
setEffMoveKey( spep_1  + 92, ctgogo, -20.9, 515.5 , 0 );

setEffScaleKey( spep_1  + 20, ctgogo, 0.84, 0.84 );
setEffScaleKey( spep_1  + 84, ctgogo, 0.84, 0.84 );
setEffScaleKey( spep_1  + 86, ctgogo, 1.2, 1.2 );
setEffScaleKey( spep_1  + 88, ctgogo, 1.3, 1.3 );
setEffScaleKey( spep_1  + 90, ctgogo, 1.66, 1.66 );
setEffScaleKey( spep_1  + 92, ctgogo, 2.02, 2.02 );
 
setEffRotateKey( spep_1  + 20, ctgogo, 0 );
setEffRotateKey( spep_1  + 92, ctgogo, 0 );

setEffAlphaKey( spep_1  + 20, ctgogo, 0 );
setEffAlphaKey( spep_1  + 21, ctgogo, 255 );
setEffAlphaKey( spep_1  + 22, ctgogo, 255 );
setEffAlphaKey( spep_1  + 92, ctgogo, 255 );


-- ** 白フェード** --
entryFade(spep_1+90,4,12,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe(spep_1,50);--気を放つ
playSe( spep_1 + 20, SE_04 );  --ゴゴゴ


--次の準備
spep_2=spep_1+100;


--------------------------------------
--カードカットイン
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え



-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** エフェクト等 ** --
entryFade(spep_2+82,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3 = spep_2 + 92;

------------------------------------------------------
--斧(ズーム)
------------------------------------------------------
-- ** エフェクト等 ** --
ono = entryEffect( spep_3 + 0, SP_03,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, ono, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, ono, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, ono, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, ono, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, ono, 0 );
setEffRotateKey( spep_3 + 96, ono, 0 );
setEffAlphaKey( spep_3 + 0, ono, 255 );
setEffAlphaKey( spep_3 + 96, ono, 255 );

--[[
--文字エントリー
ctbikkuri = entryEffectLife( spep_3 -3 + 4,  10000, 28, 0x100, -1, 0, 35.4, 265.2 );--!!

setEffMoveKey( spep_3 -3 + 4, ctbikkuri, 35.4, 265.2 , 0 );
setEffMoveKey( spep_3 -3 + 6, ctbikkuri, -25.8, 325.9 , 0 );
setEffMoveKey( spep_3 -3 + 8, ctbikkuri, -86.9, 386.6 , 0 );
setEffMoveKey( spep_3 -3 + 16, ctbikkuri, -86.9, 386.6 , 0 );
setEffMoveKey( spep_3 -3 + 18, ctbikkuri, -86.1, 387.4 , 0 );
setEffMoveKey( spep_3 -3 + 20, ctbikkuri, -85.2, 388.2 , 0 );
setEffMoveKey( spep_3 -3 + 22, ctbikkuri, -84.4, 389 , 0 );
setEffMoveKey( spep_3 -3 + 24, ctbikkuri, -83.5, 389.8 , 0 );
setEffMoveKey( spep_3 -3 + 26, ctbikkuri, -82.7, 390.6 , 0 );
setEffMoveKey( spep_3 -3 + 28, ctbikkuri, -81.9, 391.4 , 0 );
setEffMoveKey( spep_3 -3 + 30, ctbikkuri, -81, 392.2 , 0 );
setEffMoveKey( spep_3 -3 + 32, ctbikkuri, -80.2, 393 , 0 );

setEffScaleKey( spep_3 -3 + 4, ctbikkuri, 0.6, 0.6 );
setEffScaleKey( spep_3 -3 + 6, ctbikkuri, 1.8, 1.8 );
setEffScaleKey( spep_3 -3 + 8, ctbikkuri, 3, 3 );
setEffScaleKey( spep_3 -3 + 32, ctbikkuri, 3, 3 );

setEffRotateKey( spep_3 -3 + 4, ctbikkuri, -20 );
setEffRotateKey( spep_3 -3 + 32, ctbikkuri, -20 );

setEffAlphaKey( spep_3 -3 + 4, ctbikkuri, 255 );
setEffAlphaKey( spep_3 -3 + 16, ctbikkuri, 255 );
setEffAlphaKey( spep_3 -3 + 18, ctbikkuri, 223 );
setEffAlphaKey( spep_3 -3 + 20, ctbikkuri, 191 );
setEffAlphaKey( spep_3 -3 + 22, ctbikkuri, 159 );
setEffAlphaKey( spep_3 -3 + 24, ctbikkuri, 128 );
setEffAlphaKey( spep_3 -3 + 26, ctbikkuri, 96 );
setEffAlphaKey( spep_3 -3 + 28, ctbikkuri, 64 );
setEffAlphaKey( spep_3 -3 + 30, ctbikkuri, 32 );
setEffAlphaKey( spep_3 -3 + 32, ctbikkuri, 0 );
]]--
--集中線
shuchusen1 = entryEffectLife( spep_3 + 0,  906, 96, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen1, 1.1, 1.1 );
setEffScaleKey( spep_3 + 96, shuchusen1, 1.1, 1.1 );

setEffRotateKey( spep_3 + 0, shuchusen1, 180 );
setEffRotateKey( spep_3 + 96, shuchusen1, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_3 + 96, shuchusen1, 255 );

-- ** 音 ** --
playSe( spep_3 ,1007  );
playSe( spep_3 + 26,1026  );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 1, 96, 0, 0, 0, 0, 150 );  --薄い黒　背景

-- ** 白フェード** --
--entryFade(spep_3+92,4,10,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_4 = spep_3 + 96;

------------------------------------------------------
--斧を投げる
------------------------------------------------------
-- ** エフェクト等 ** --
throw = entryEffect( spep_4 + 0, SP_04,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, throw, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, throw, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, throw, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, throw, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, throw, 0 );
setEffRotateKey( spep_4 + 100, throw, 0 );
setEffAlphaKey( spep_4 + 0, throw, 255 );
setEffAlphaKey( spep_4 + 100, throw, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_4  + 0,  906, 38, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4  + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 +38, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_4  + 0, shuchusen2, 1.1, 1.1 );
setEffScaleKey( spep_4 + 38, shuchusen2, 1.1, 1.1 );

setEffRotateKey( spep_4  + 0, shuchusen2, 180 );
setEffRotateKey( spep_4 + 38, shuchusen2, 180 );

setEffAlphaKey( spep_4  + 0, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 38, shuchusen2, 255 );

--流線
ryusen1 = entryEffectLife( spep_4 -3 + 42,  921, 58, 0x80, -1, 0, 40, 0 );

setEffMoveKey( spep_4 -3 + 42, ryusen1, 0, 40 , 0 );
setEffMoveKey( spep_4 -3 + 100, ryusen1, 0, 40 , 0 );

setEffScaleKey( spep_4 -3 + 42, ryusen1, 2.0, 1.34 );
setEffScaleKey( spep_4 -3 + 100, ryusen1, 2.0, 1.34 );

setEffRotateKey( spep_4 -3 + 42, ryusen1, 166 );
setEffRotateKey( spep_4 -3 + 100, ryusen1, 166 );

setEffAlphaKey( spep_4 -3 + 42, ryusen1, 255 );
setEffAlphaKey( spep_4 -3 + 100, ryusen1, 255 );


--文字エントリー
ctzuo = entryEffectLife( spep_4 -3 + 42,  10012, 28, 0x100, -1, 0, 76, 259.9 ); --ズオッ

setEffMoveKey( spep_4 -3 + 42, ctzuo, 76, 259.9 , 0 );
setEffMoveKey( spep_4 -3 + 44, ctzuo, 93.2, 307.1 , 0 );
setEffMoveKey( spep_4 -3 + 46, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_4 -3 + 48, ctzuo, 111, 354.8 , 0 );
setEffMoveKey( spep_4 -3 + 50, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_4 -3 + 52, ctzuo, 111, 354.8 , 0 );
setEffMoveKey( spep_4 -3 + 54, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_4 -3 + 56, ctzuo, 115.1, 353.9 , 0 );
setEffMoveKey( spep_4 -3 + 58, ctzuo, 126, 359.9 , 0 );
setEffMoveKey( spep_4 -3 + 60, ctzuo, 123.2, 352 , 0 );
setEffMoveKey( spep_4 -3 + 62, ctzuo, 135.9, 359.8 , 0 );
setEffMoveKey( spep_4 -3 + 64, ctzuo, 131.4, 350.1 , 0 );
setEffMoveKey( spep_4 -3 + 66, ctzuo, 146, 359.9 , 0 );
setEffMoveKey( spep_4 -3 + 68, ctzuo, 139.5, 348.2 , 0 );
setEffMoveKey( spep_4 -3 + 70, ctzuo, 143.6, 347.3 , 0 );

a=2.2;
b=2.8;

setEffScaleKey( spep_4 -3 + 42, ctzuo, 0.45, 0.45 );
--setEffScaleKey( spep_4 -3 + 44, ctzuo, 0.45, 0.45 );
setEffScaleKey( spep_4 -3 + 46, ctzuo, 0.8+a, 0.8+a );
setEffScaleKey( spep_4 -3 + 54, ctzuo, 0.8+a, 0.8+a );
setEffScaleKey( spep_4 -3 + 56, ctzuo, 0.95+a, 0.95+a );
setEffScaleKey( spep_4 -3 + 58, ctzuo, 1.1+a, 1.1+a );
setEffScaleKey( spep_4 -3 + 60, ctzuo, 1.25+a, 1.25+a );
setEffScaleKey( spep_4 -3 + 62, ctzuo, 1.4+b, 1.4+b );
setEffScaleKey( spep_4 -3 + 64, ctzuo, 1.55+b, 1.55+b );
setEffScaleKey( spep_4 -3 + 66, ctzuo, 1.7+b, 1.7+b );
setEffScaleKey( spep_4 -3 + 68, ctzuo, 1.85+b, 1.85+b );
setEffScaleKey( spep_4 -3 + 70, ctzuo, 2+b, 2+b );

setEffRotateKey( spep_4 -3 + 42, ctzuo, 33 );
setEffRotateKey( spep_4 -3 + 70, ctzuo, 33 );

setEffAlphaKey( spep_4 -3 + 42, ctzuo, 255 );
setEffAlphaKey( spep_4 -3 + 54, ctzuo, 255 );
setEffAlphaKey( spep_4 -3 + 56, ctzuo, 223 );
setEffAlphaKey( spep_4 -3 + 58, ctzuo, 191 );
setEffAlphaKey( spep_4 -3 + 60, ctzuo, 159 );
setEffAlphaKey( spep_4 -3 + 62, ctzuo, 128 );
setEffAlphaKey( spep_4 -3 + 64, ctzuo, 96 );
setEffAlphaKey( spep_4 -3 + 66, ctzuo, 64 );
setEffAlphaKey( spep_4 -3 + 68, ctzuo, 32 );
setEffAlphaKey( spep_4 -3 + 70, ctzuo, 0 );

--SE
playSe( spep_4 + 40,9  );
playSe( spep_4 + 50,8  );
playSe( spep_4 + 70,8  );
playSe( spep_4 + 90,8  );

-- ** 白フェード** --
entryFade(spep_4+92,4,10,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 1, 100, 0, 0, 0, 0, 150 );  --薄い黒　背景

--次の準備
spep_5 = spep_4 + 100;

------------------------------------------------------
--斧が当たる
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_5 + 0, SP_05,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, hit, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_5 + 90, hit, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit, 0 );
setEffRotateKey( spep_5 + 90, hit, 0 );
setEffAlphaKey( spep_5 + 0, hit, 255 );
setEffAlphaKey( spep_5 + 90, hit, 255 );


--流線
ryusen2 = entryEffectLife( spep_5 + 0,  921, 88, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 88, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, ryusen2, 1, 1 );
setEffScaleKey( spep_5 + 88, ryusen2, 1, 1 );

setEffRotateKey( spep_5 + 0, ryusen2, 0 );
setEffRotateKey( spep_5 + 88, ryusen2, 0 );

setEffAlphaKey( spep_5 + 0, ryusen2, 255 );
setEffAlphaKey( spep_5 + 88, ryusen2, 255 );

--敵の動き
setDisp( spep_5  + 0, 1, 1 );
setDisp( spep_5 -3 + 88, 1, 0 );

changeAnime( spep_5  + 0, 1, 104 );
changeAnime( spep_5 -3 + 60, 1, 106 );

setMoveKey( spep_5  + 0, 1, 387.4, -32.9 , 0 );
--setMoveKey( spep_5 -3 + 2, 1, 353.2, -32.6 , 0 );
setMoveKey( spep_5 -3 + 4, 1, 316.8, -32.3 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 278.1, -32 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 237.1, -31.8 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 235.3, -31.5 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 233.3, -31.3 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 231.2, -31.1 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 229.1, -30.8 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 226.9, -30.5 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 224.6, -30.3 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 222.1, -30 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 219.6, -29.7 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 217, -29.3 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 214.2, -29 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 211.4, -28.7 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 208.5, -28.4 , 0 );

setScaleKey( spep_5  + 0, 1, 0.73, 0.73 );
--setScaleKey( spep_5 -3 + 2, 1, 0.84, 0.84 );
setScaleKey( spep_5 -3 + 4, 1, 0.99, 0.99 );
setScaleKey( spep_5 -3 + 6, 1, 1.13, 1.13 );
setScaleKey( spep_5 -3 + 8, 1, 1.28, 1.28 );
setScaleKey( spep_5 -3 + 10, 1, 1.31, 1.31 );
setScaleKey( spep_5 -3 + 12, 1, 1.33, 1.33 );
setScaleKey( spep_5 -3 + 14, 1, 1.39, 1.39 );
setScaleKey( spep_5 -3 + 16, 1, 1.42, 1.42 );
setScaleKey( spep_5 -3 + 18, 1, 1.45, 1.45 );
setScaleKey( spep_5 -3 + 20, 1, 1.51, 1.51 );
setScaleKey( spep_5 -3 + 22, 1, 1.54, 1.54 );
setScaleKey( spep_5 -3 + 24, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 26, 1, 1.62, 1.62 );
setScaleKey( spep_5 -3 + 28, 1, 1.68, 1.68 );
setScaleKey( spep_5 -3 + 30, 1, 1.74, 1.74 );
setScaleKey( spep_5 -3 + 32, 1, 1.8, 1.8 );

setRotateKey( spep_5  + 0, 1, 0 );
setRotateKey( spep_5 +30 + 0, 1, 0 );

--SE
SEx=playSe( spep_5 ,8  );
SE0=playSe( spep_5+20 ,8  );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 1, 90, 0, 0, 0, 0, 150 );  --薄い黒　背景
---------------------------------------------------------------------------
-- 回避
---------------------------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_5 + 30; --エンドフェイズのフレーム数を置き換える

    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SEx, 0 );

    playSe( SP_dodge - 12, 1042 );
    
    pauseAll( SP_dodge, 67 );
    
    -- ** 敵キャラクター ** --
    
    setMoveKey( SP_dodge + 8, 1, 208.5, -28.4 , 0 );
    setMoveKey( SP_dodge + 9, 1, 208.5, -28.4 , 0 );
    setMoveKey( SP_dodge + 10, 1, 208.5, -28.4 , 0 );
    
    setScaleKey( SP_dodge + 8, 1, 1.8, 1.8  );
    setScaleKey( SP_dodge + 9, 1, 1.8, 1.8 );
    setScaleKey( SP_dodge + 10, 1, 1.8, 1.8 );
    
    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );

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
    
    
---------------------------------------------------------------------------
-- 回避しなかった場合
---------------------------------------------------------------------------
setMoveKey( spep_5 -3 + 34, 1, 205.5, -28 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 202.4, -27.6 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 199.2, -27.3 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 195.9, -26.8 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 192.5, -26.5 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 188.9, -26.1 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 185.4, -25.6 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 181.7, -25.2 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 177.8, -24.7 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 174, -24.2 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 170, -23.8 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 165.9, -23.3 , 0 );
setMoveKey( spep_5 -3 + 59, 1, 161.8, -22.9 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 145.9, 43.6 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 172.2, 43 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 198.4, 42.3 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 226.3, 39.5 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 253.9, 35.9 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 281.5, 31.4 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 308.7, 25.7 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 335.6, 18.8 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 362, 10.4 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 387.9, 0.7 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 413.2, -10.3 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 437.9, -22.1 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 462.3, -34.8 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 486.2, -47.9 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 509.9, -61.4 , 0 );

setScaleKey( spep_5 -3 + 34, 1, 1.86, 1.86 );
setScaleKey( spep_5 -3 + 36, 1, 1.91, 1.91 );
setScaleKey( spep_5 -3 + 38, 1, 1.97, 1.97 );
setScaleKey( spep_5 -3 + 40, 1, 2.03, 2.03 );
setScaleKey( spep_5 -3 + 42, 1, 2.09, 2.09 );
setScaleKey( spep_5 -3 + 44, 1, 2.15, 2.15 );
setScaleKey( spep_5 -3 + 46, 1, 2.2, 2.2 );
setScaleKey( spep_5 -3 + 48, 1, 2.26, 2.26 );
setScaleKey( spep_5 -3 + 50, 1, 2.35, 2.35 );
setScaleKey( spep_5 -3 + 52, 1, 2.41, 2.41 );
setScaleKey( spep_5 -3 + 54, 1, 2.49, 2.49 );
setScaleKey( spep_5 -3 + 56, 1, 2.55, 2.55 );
setScaleKey( spep_5 -3 + 59, 1, 2.64, 2.64 );
setScaleKey( spep_5 -3 + 60, 1, 2.43, 2.43 );
setScaleKey( spep_5 -3 + 62, 1, 2.14, 2.14 );
setScaleKey( spep_5 -3 + 64, 1, 1.84, 1.84 );
setScaleKey( spep_5 -3 + 66, 1, 1.73, 1.73 );
setScaleKey( spep_5 -3 + 68, 1, 1.62, 1.62 );
setScaleKey( spep_5 -3 + 70, 1, 1.51, 1.51 );
setScaleKey( spep_5 -3 + 72, 1, 1.4, 1.4 );
setScaleKey( spep_5 -3 + 74, 1, 1.3, 1.3 );
setScaleKey( spep_5 -3 + 76, 1, 1.19, 1.19 );
setScaleKey( spep_5 -3 + 78, 1, 1.08, 1.08 );
setScaleKey( spep_5 -3 + 80, 1, 0.97, 0.97 );
setScaleKey( spep_5 -3 + 82, 1, 0.86, 0.86 );
setScaleKey( spep_5 -3 + 84, 1, 0.76, 0.76 );
setScaleKey( spep_5 -3 + 86, 1, 0.65, 0.65 );
setScaleKey( spep_5 -3 + 88, 1, 0.54, 0.54 );

setRotateKey( spep_5 -3 + 59, 1, 0 );
setRotateKey( spep_5 -3 + 60, 1, -40 );
setRotateKey( spep_5 -3 + 64, 1, -40 );
setRotateKey( spep_5 -3 + 66, 1, -36.7 );
setRotateKey( spep_5 -3 + 68, 1, -33.3 );
setRotateKey( spep_5 -3 + 70, 1, -30 );
setRotateKey( spep_5 -3 + 72, 1, -26.7 );
setRotateKey( spep_5 -3 + 74, 1, -23.3 );
setRotateKey( spep_5 -3 + 76, 1, -20 );
setRotateKey( spep_5 -3 + 78, 1, -16.7 );
setRotateKey( spep_5 -3 + 80, 1, -13.3 );
setRotateKey( spep_5 -3 + 82, 1, -10 );
setRotateKey( spep_5 -3 + 84, 1, -6.7 );
setRotateKey( spep_5 -3 + 86, 1, -3.3 );
setRotateKey( spep_5 -3 + 88, 1, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_5 -3 + 60,  10020, 14, 0x100, -1, 0, -137.1, 217.5 );--バキッ

setEffMoveKey( spep_5 -3 + 60, ctbaki, -137.1, 217.5 , 0 );
setEffMoveKey( spep_5 -3 + 62, ctbaki, -71.1, 297.5 , 0 );
setEffMoveKey( spep_5 -3 + 64, ctbaki, -5.1, 377.4 , 0 );
setEffMoveKey( spep_5 -3 + 66, ctbaki, -1.5, 386.1 , 0 );
setEffMoveKey( spep_5 -3 + 68, ctbaki, 2.2, 394.7 , 0 );
setEffMoveKey( spep_5 -3 + 70, ctbaki, 5.8, 403.4 , 0 );
setEffMoveKey( spep_5 -3 + 72, ctbaki, 9.4, 412 , 0 );
setEffMoveKey( spep_5 -3 + 74, ctbaki, 13, 420.7 , 0 );

setEffScaleKey( spep_5 -3 + 60, ctbaki, 0.25, 0.25 );
setEffScaleKey( spep_5 -3 + 62, ctbaki, 1.38, 1.38 );
setEffScaleKey( spep_5 -3 + 64, ctbaki, 2.5, 2.5 );
setEffScaleKey( spep_5 -3 + 66, ctbaki, 2.52, 2.52 );
setEffScaleKey( spep_5 -3 + 68, ctbaki, 2.54, 2.54 );
setEffScaleKey( spep_5 -3 + 70, ctbaki, 2.56, 2.56 );
setEffScaleKey( spep_5 -3 + 72, ctbaki, 2.58, 2.58 );
setEffScaleKey( spep_5 -3 + 74, ctbaki, 2.6, 2.6 );

setEffRotateKey( spep_5 -3 + 60, ctbaki, 0 );
setEffRotateKey( spep_5 -3 + 74, ctbaki, 0 );

setEffAlphaKey( spep_5 -3 + 60, ctbaki, 255 );
setEffAlphaKey( spep_5 -3 + 64, ctbaki, 255 );
setEffAlphaKey( spep_5 -3 + 66, ctbaki, 204 );
setEffAlphaKey( spep_5 -3 + 68, ctbaki, 153 );
setEffAlphaKey( spep_5 -3 + 70, ctbaki, 102 );
setEffAlphaKey( spep_5 -3 + 72, ctbaki, 51 );
setEffAlphaKey( spep_5 -3 + 74, ctbaki, 0 );

--SE
playSe( spep_5+40 ,8  );
playSe( spep_5+58 ,1011  );

-- ** 白フェード** --
entryFade(spep_5+82,4,10,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_6 = spep_5 + 90;

------------------------------------------------------
-- 敵吹っ飛びシーン(100F)
------------------------------------------------------
--[[

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_6 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_6 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_6 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_6 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_6 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_6 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_6 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_6 + 100, bakuhatsu, 255 );

]]
-- ** ひび割れ ** --
hibiware = entryEffect( spep_6 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_6 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_6 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_6 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_6 + 2, hibiware, 0 );
setEffRotateKey( spep_6 + 100, hibiware, 0 );

setEffAlphaKey( spep_6 + 2, hibiware, 0 );
setEffAlphaKey( spep_6 + 13, hibiware, 0 );
setEffAlphaKey( spep_6 + 14, hibiware, 255 );
setEffAlphaKey( spep_6 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusenf = entryEffectLife( spep_6 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 14, shuchusenf, 32, 25 );

setEffMoveKey( spep_6 + 14, shuchusenf, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, shuchusenf, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusenf, 1, 1 );
setEffScaleKey( spep_6 + 46, shuchusenf, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusenf, 0 );
setEffRotateKey( spep_6 + 46, shuchusenf, 0 );

setEffAlphaKey( spep_6 + 14, shuchusenf, 255 );
setEffAlphaKey( spep_6 + 28, shuchusenf, 255 );
setEffAlphaKey( spep_6 + 30, shuchusenf, 252 );
setEffAlphaKey( spep_6 + 32, shuchusenf, 242 );
setEffAlphaKey( spep_6 + 34, shuchusenf, 227 );
setEffAlphaKey( spep_6 + 36, shuchusenf, 205 );
setEffAlphaKey( spep_6 + 38, shuchusenf, 176 );
setEffAlphaKey( spep_6 + 40, shuchusenf, 142 );
setEffAlphaKey( spep_6 + 42, shuchusenf, 101 );
setEffAlphaKey( spep_6 + 44, shuchusenf, 54 );
setEffAlphaKey( spep_6 + 46, shuchusenf, 0 );

shuchusenkuro = entryEffectLife( spep_6 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_6 + 14, shuchusenkuro, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, shuchusenkuro, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusenkuro, 1, 1 );
setEffScaleKey( spep_6 + 100, shuchusenkuro, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusenkuro, 0 );
setEffRotateKey( spep_6 + 100, shuchusenkuro, 0 );

setEffAlphaKey( spep_6 + 14, shuchusenkuro, 255 );
setEffAlphaKey( spep_6 + 100, shuchusenkuro, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_6 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_6 + 14, ctga, 14, 20 );

setEffMoveKey( spep_6 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_6 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_6 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_6 + 14, ctga, -10.9 );
setEffRotateKey( spep_6 + 15, ctga, -10.9 );
setEffRotateKey( spep_6 + 16, ctga, -14.9 );
setEffRotateKey( spep_6 + 17, ctga, -14.9 );
setEffRotateKey( spep_6 + 18, ctga, -10.9 );
setEffRotateKey( spep_6 + 19, ctga, -10.9 );
setEffRotateKey( spep_6 + 20, ctga, -14.9 );
setEffRotateKey( spep_6 + 21, ctga, -14.9 );
setEffRotateKey( spep_6 + 22, ctga, -10.9 );
setEffRotateKey( spep_6 + 23, ctga, -10.9 );
setEffRotateKey( spep_6 + 24, ctga, -14.9 );
setEffRotateKey( spep_6 + 25, ctga, -14.9 );
setEffRotateKey( spep_6 + 26, ctga, -10.9 );
setEffRotateKey( spep_6 + 27, ctga, -10.9 );
setEffRotateKey( spep_6 + 28, ctga, -14.9 );
setEffRotateKey( spep_6 + 100, ctga, -14.9 );

setEffAlphaKey( spep_6 + 14, ctga, 255 );
setEffAlphaKey( spep_6 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
changeAnime( spep_6 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_6 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_6 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_6 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_6 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_6 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_6 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_6 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_6 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_6 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_6 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_6 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_6 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_6 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_6 + 100, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_6 + 0, 1, 0.2, 0.2 );
setScaleKey( spep_6 + 1, 1, 0.2, 0.2 );
setScaleKey( spep_6 + 2, 1, 0.25, 0.25 );
setScaleKey( spep_6 + 3, 1, 0.25, 0.25 );
setScaleKey( spep_6 + 4, 1, 0.46, 0.46 );
setScaleKey( spep_6 + 5, 1, 0.46, 0.46 );
setScaleKey( spep_6 + 6, 1, 0.55, 0.55 );
setScaleKey( spep_6 + 7, 1, 0.55, 0.55 );
setScaleKey( spep_6 + 8, 1, 0.71, 0.71 );
setScaleKey( spep_6 + 9, 1, 0.71, 0.71 );
setScaleKey( spep_6 + 10, 1, 0.97, 0.97 );
setScaleKey( spep_6 + 11, 1, 0.97, 0.97 );
setScaleKey( spep_6 + 12, 1, 1.1, 1.1 );  --画面にぶつかる
setScaleKey( spep_6 + 13, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 14, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 15, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 16, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 17, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 18, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 19, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 20, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 21, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 22, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 23, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 24, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 25, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 26, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 100, 1, 1.2, 1.2 );

setRotateKey( spep_6 + 0, 1, -40 );
setRotateKey( spep_6 + 1, 1, -40 );
setRotateKey( spep_6 + 2, 1, 80 );
setRotateKey( spep_6 + 3, 1, 80 );
setRotateKey( spep_6 + 4, 1, 200 );
setRotateKey( spep_6 + 5, 1, 200 );
setRotateKey( spep_6 + 6, 1, 360 );
setRotateKey( spep_6 + 7, 1, 360 );
setRotateKey( spep_6 + 8, 1, 558 );
setRotateKey( spep_6 + 9, 1, 558 );
setRotateKey( spep_6 + 10, 1, 425 );
setRotateKey( spep_6 + 11, 1, 425 );
setRotateKey( spep_6 + 12, 1, -40 );
setRotateKey( spep_6 + 100, 1, -40 );

-- ** 音 ** --
--playSe( spep_6 + 0, SE_10 );  --爆発音
playSe( spep_6 + 14, SE_11 );  --割れる音

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 2, 24, 0, 0, 0, 200 );  --薄い黒　背景


-- ** ダメージ表示 ** --
dealDamage( spep_6 + 10 );
entryFade( spep_6 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_6 + 100 );
else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--アイドリング
------------------------------------------------------
spep_0=0;

-- ** エフェクト等 ** --
taiki = entryEffect( spep_0 + 0, SP_01,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, taiki, 0, 0 , 0 );
setEffMoveKey( spep_0 + 26, taiki, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, taiki, 1.0, 1.0 );
setEffScaleKey( spep_0 + 26, taiki, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, taiki, 0 );
setEffRotateKey( spep_0 + 26, taiki, 0 );
setEffAlphaKey( spep_0 + 0, taiki, 255 );
setEffAlphaKey( spep_0 + 26, taiki, 255 );
--setEffAlphaKey( spep_0 + 27, taiki, 255 );
--setEffAlphaKey( spep_0 + 28, taiki, 0 );

--次の準備
spep_1=spep_0+26;

------------------------------------------------------
--ため
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_1 + 0, SP_02,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_1 + 100, tame, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_1 + 100, tame, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 100, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 100, tame, 255 );

-- ** エフェクト等 ** --
bg = entryEffect( spep_1 + 0, 1503,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, bg, 0, 0 , 0 );
setEffMoveKey( spep_1 + 100, bg, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_1 + 100, bg, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, bg, 0 );
setEffRotateKey( spep_1 + 100, bg, 0 );
setEffAlphaKey( spep_1 + 0, bg, 255 );
setEffAlphaKey( spep_1 + 100, bg, 255 );

--文字エントリー
ctzuzun = entryEffectLife( spep_1 + 0,  10013, 12, 0x100, -1, 0, 22, 224.4 );--ズズズンッ

setEffMoveKey( spep_1 + 0, ctzuzun, 22, 224.4 , 0 );
setEffMoveKey( spep_1 + 2, ctzuzun, 29.8, 266.2 , 0 );
setEffMoveKey( spep_1 + 4, ctzuzun, 49.2, 317.6 , 0 );
setEffMoveKey( spep_1 + 6, ctzuzun, 46.8, 334 , 0 );
setEffMoveKey( spep_1 + 8, ctzuzun, 52.9, 331.8 , 0 );
setEffMoveKey( spep_1 + 10, ctzuzun, 39.3, 310.4 , 0 );
setEffMoveKey( spep_1 + 12, ctzuzun, 36, 299.9 , 0 );

setEffScaleKey( spep_1 + 0, ctzuzun, 1.34, 1.34 );
setEffScaleKey( spep_1 + 2, ctzuzun, 2.17, 2.17 );
setEffScaleKey( spep_1 + 4, ctzuzun, 2.98, 2.98 );
setEffScaleKey( spep_1 + 6, ctzuzun, 3.5, 3.5 );
setEffScaleKey( spep_1 + 12, ctzuzun, 3.5, 3.5 );

setEffRotateKey( spep_1 + 0, ctzuzun, 0 );
setEffRotateKey( spep_1 + 12, ctzuzun, 0 );

setEffAlphaKey( spep_1 + 0, ctzuzun, 255 );
setEffAlphaKey( spep_1 + 2, ctzuzun, 206 );
setEffAlphaKey( spep_1 + 4, ctzuzun, 159 );
setEffAlphaKey( spep_1 + 6, ctzuzun, 115 );
setEffAlphaKey( spep_1 + 8, ctzuzun, 74 );
setEffAlphaKey( spep_1 + 10, ctzuzun, 35 );
setEffAlphaKey( spep_1 + 12, ctzuzun, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_1 +8, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_1 +8, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_1  + 20,  190006, 72, 0x100, -1, 0, -20.9, 512.8 ); --ゴゴゴ
setEffShake( spep_1  + 20, ctgogo, 72, 10 );
 
setEffMoveKey( spep_1  + 20, ctgogo, -20.9, 512.8 , 0 );
setEffMoveKey( spep_1  + 92, ctgogo, -20.9, 515.5 , 0 );

setEffScaleKey( spep_1  + 20, ctgogo, -0.84, 0.84 );
setEffScaleKey( spep_1  + 84, ctgogo, -0.84, 0.84 );
setEffScaleKey( spep_1  + 86, ctgogo, -1.2, 1.2 );
setEffScaleKey( spep_1  + 88, ctgogo, -1.3, 1.3 );
setEffScaleKey( spep_1  + 90, ctgogo, -1.66, 1.66 );
setEffScaleKey( spep_1  + 92, ctgogo, -2.02, 2.02 );
 
setEffRotateKey( spep_1  + 20, ctgogo, 0 );
setEffRotateKey( spep_1  + 92, ctgogo, 0 );

setEffAlphaKey( spep_1  + 20, ctgogo, 0 );
setEffAlphaKey( spep_1  + 21, ctgogo, 255 );
setEffAlphaKey( spep_1  + 22, ctgogo, 255 );
setEffAlphaKey( spep_1  + 92, ctgogo, 255 );


-- ** 白フェード** --
entryFade(spep_1+90,4,12,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe(spep_1,50);--気を放つ
playSe( spep_1 + 20, SE_04 );  --ゴゴゴ


--次の準備
spep_2=spep_1+100;


--------------------------------------
--カードカットイン
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** エフェクト等 ** --
entryFade(spep_2+82,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3 = spep_2 + 92;

------------------------------------------------------
--斧(ズーム)
------------------------------------------------------
-- ** エフェクト等 ** --
ono = entryEffect( spep_3 + 0, SP_03,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, ono, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, ono, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, ono, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, ono, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, ono, 0 );
setEffRotateKey( spep_3 + 96, ono, 0 );
setEffAlphaKey( spep_3 + 0, ono, 255 );
setEffAlphaKey( spep_3 + 96, ono, 255 );
--[[
--文字エントリー
ctbikkuri = entryEffectLife( spep_3 -3 + 4,  10000, 28, 0x100, -1, 0, 35.4, 265.2 );--!!

setEffMoveKey( spep_3 -3 + 4, ctbikkuri, 35.4, 265.2 , 0 );
setEffMoveKey( spep_3 -3 + 6, ctbikkuri, -25.8, 325.9 , 0 );
setEffMoveKey( spep_3 -3 + 8, ctbikkuri, -86.9, 386.6 , 0 );
setEffMoveKey( spep_3 -3 + 16, ctbikkuri, -86.9, 386.6 , 0 );
setEffMoveKey( spep_3 -3 + 18, ctbikkuri, -86.1, 387.4 , 0 );
setEffMoveKey( spep_3 -3 + 20, ctbikkuri, -85.2, 388.2 , 0 );
setEffMoveKey( spep_3 -3 + 22, ctbikkuri, -84.4, 389 , 0 );
setEffMoveKey( spep_3 -3 + 24, ctbikkuri, -83.5, 389.8 , 0 );
setEffMoveKey( spep_3 -3 + 26, ctbikkuri, -82.7, 390.6 , 0 );
setEffMoveKey( spep_3 -3 + 28, ctbikkuri, -81.9, 391.4 , 0 );
setEffMoveKey( spep_3 -3 + 30, ctbikkuri, -81, 392.2 , 0 );
setEffMoveKey( spep_3 -3 + 32, ctbikkuri, -80.2, 393 , 0 );

setEffScaleKey( spep_3 -3 + 4, ctbikkuri, 0.6, 0.6 );
setEffScaleKey( spep_3 -3 + 6, ctbikkuri, 1.8, 1.8 );
setEffScaleKey( spep_3 -3 + 8, ctbikkuri, 3, 3 );
setEffScaleKey( spep_3 -3 + 32, ctbikkuri, 3, 3 );

setEffRotateKey( spep_3 -3 + 4, ctbikkuri, -20 );
setEffRotateKey( spep_3 -3 + 32, ctbikkuri, -20 );

setEffAlphaKey( spep_3 -3 + 4, ctbikkuri, 255 );
setEffAlphaKey( spep_3 -3 + 16, ctbikkuri, 255 );
setEffAlphaKey( spep_3 -3 + 18, ctbikkuri, 223 );
setEffAlphaKey( spep_3 -3 + 20, ctbikkuri, 191 );
setEffAlphaKey( spep_3 -3 + 22, ctbikkuri, 159 );
setEffAlphaKey( spep_3 -3 + 24, ctbikkuri, 128 );
setEffAlphaKey( spep_3 -3 + 26, ctbikkuri, 96 );
setEffAlphaKey( spep_3 -3 + 28, ctbikkuri, 64 );
setEffAlphaKey( spep_3 -3 + 30, ctbikkuri, 32 );
setEffAlphaKey( spep_3 -3 + 32, ctbikkuri, 0 );
]]--
--集中線
shuchusen1 = entryEffectLife( spep_3 + 0,  906, 96, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen1, 1.1, 1.1 );
setEffScaleKey( spep_3 + 96, shuchusen1, 1.1, 1.1 );

setEffRotateKey( spep_3 + 0, shuchusen1, 180 );
setEffRotateKey( spep_3 + 96, shuchusen1, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_3 + 96, shuchusen1, 255 );

-- ** 音 ** --
playSe( spep_3 ,1007  );
playSe( spep_3 + 26,1026  );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 1, 96, 0, 0, 0, 0, 150 );  --薄い黒　背景

-- ** 白フェード** --
--entryFade(spep_3+92,4,10,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_4 = spep_3 + 96;

------------------------------------------------------
--斧を投げる
------------------------------------------------------
-- ** エフェクト等 ** --
throw = entryEffect( spep_4 + 0, SP_04,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, throw, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, throw, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, throw, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, throw, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, throw, 0 );
setEffRotateKey( spep_4 + 100, throw, 0 );
setEffAlphaKey( spep_4 + 0, throw, 255 );
setEffAlphaKey( spep_4 + 100, throw, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_4  + 0,  906, 38, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4  + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 +38, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_4  + 0, shuchusen2, 1.1, 1.1 );
setEffScaleKey( spep_4 + 38, shuchusen2, 1.1, 1.1 );

setEffRotateKey( spep_4  + 0, shuchusen2, 180 );
setEffRotateKey( spep_4 + 38, shuchusen2, 180 );

setEffAlphaKey( spep_4  + 0, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 38, shuchusen2, 255 );

--流線
ryusen1 = entryEffectLife( spep_4 -3 + 42,  921, 58, 0x80, -1, 0, 40, 0 );

setEffMoveKey( spep_4 -3 + 42, ryusen1, 0, 40 , 0 );
setEffMoveKey( spep_4 -3 + 100, ryusen1, 0, 40 , 0 );

setEffScaleKey( spep_4 -3 + 42, ryusen1, 2.0, 1.34 );
setEffScaleKey( spep_4 -3 + 100, ryusen1, 2.0, 1.34 );

setEffRotateKey( spep_4 -3 + 42, ryusen1, 166 );
setEffRotateKey( spep_4 -3 + 100, ryusen1, 166 );

setEffAlphaKey( spep_4 -3 + 42, ryusen1, 255 );
setEffAlphaKey( spep_4 -3 + 100, ryusen1, 255 );


--文字エントリー
ctzuo = entryEffectLife( spep_4 -3 + 42,  10012, 28, 0x100, -1, 0, 76, 259.9 ); --ズオッ

setEffMoveKey( spep_4 -3 + 42, ctzuo, 76, 259.9 , 0 );
setEffMoveKey( spep_4 -3 + 44, ctzuo, 93.2, 307.1 , 0 );
setEffMoveKey( spep_4 -3 + 46, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_4 -3 + 48, ctzuo, 111, 354.8 , 0 );
setEffMoveKey( spep_4 -3 + 50, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_4 -3 + 52, ctzuo, 111, 354.8 , 0 );
setEffMoveKey( spep_4 -3 + 54, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_4 -3 + 56, ctzuo, 115.1, 353.9 , 0 );
setEffMoveKey( spep_4 -3 + 58, ctzuo, 126, 359.9 , 0 );
setEffMoveKey( spep_4 -3 + 60, ctzuo, 123.2, 352 , 0 );
setEffMoveKey( spep_4 -3 + 62, ctzuo, 135.9, 359.8 , 0 );
setEffMoveKey( spep_4 -3 + 64, ctzuo, 131.4, 350.1 , 0 );
setEffMoveKey( spep_4 -3 + 66, ctzuo, 146, 359.9 , 0 );
setEffMoveKey( spep_4 -3 + 68, ctzuo, 139.5, 348.2 , 0 );
setEffMoveKey( spep_4 -3 + 70, ctzuo, 143.6, 347.3 , 0 );

a=2.2;
b=2.8;

setEffScaleKey( spep_4 -3 + 42, ctzuo, 0.45, 0.45 );
--setEffScaleKey( spep_4 -3 + 44, ctzuo, 0.45, 0.45 );
setEffScaleKey( spep_4 -3 + 46, ctzuo, 0.8+a, 0.8+a );
setEffScaleKey( spep_4 -3 + 54, ctzuo, 0.8+a, 0.8+a );
setEffScaleKey( spep_4 -3 + 56, ctzuo, 0.95+a, 0.95+a );
setEffScaleKey( spep_4 -3 + 58, ctzuo, 1.1+a, 1.1+a );
setEffScaleKey( spep_4 -3 + 60, ctzuo, 1.25+a, 1.25+a );
setEffScaleKey( spep_4 -3 + 62, ctzuo, 1.4+b, 1.4+b );
setEffScaleKey( spep_4 -3 + 64, ctzuo, 1.55+b, 1.55+b );
setEffScaleKey( spep_4 -3 + 66, ctzuo, 1.7+b, 1.7+b );
setEffScaleKey( spep_4 -3 + 68, ctzuo, 1.85+b, 1.85+b );
setEffScaleKey( spep_4 -3 + 70, ctzuo, 2+b, 2+b );

setEffRotateKey( spep_4 -3 + 42, ctzuo, 33 );
setEffRotateKey( spep_4 -3 + 70, ctzuo, 33 );

setEffAlphaKey( spep_4 -3 + 42, ctzuo, 255 );
setEffAlphaKey( spep_4 -3 + 54, ctzuo, 255 );
setEffAlphaKey( spep_4 -3 + 56, ctzuo, 223 );
setEffAlphaKey( spep_4 -3 + 58, ctzuo, 191 );
setEffAlphaKey( spep_4 -3 + 60, ctzuo, 159 );
setEffAlphaKey( spep_4 -3 + 62, ctzuo, 128 );
setEffAlphaKey( spep_4 -3 + 64, ctzuo, 96 );
setEffAlphaKey( spep_4 -3 + 66, ctzuo, 64 );
setEffAlphaKey( spep_4 -3 + 68, ctzuo, 32 );
setEffAlphaKey( spep_4 -3 + 70, ctzuo, 0 );

--SE
playSe( spep_4 + 40,9  );
playSe( spep_4 + 50,8  );
playSe( spep_4 + 70,8  );
playSe( spep_4 + 90,8  );

-- ** 白フェード** --
entryFade(spep_4+92,4,10,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 1, 100, 0, 0, 0, 0, 150 );  --薄い黒　背景

--次の準備
spep_5 = spep_4 + 100;

------------------------------------------------------
--斧が当たる
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_5 + 0, SP_05,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, hit, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_5 + 90, hit, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit, 0 );
setEffRotateKey( spep_5 + 90, hit, 0 );
setEffAlphaKey( spep_5 + 0, hit, 255 );
setEffAlphaKey( spep_5 + 90, hit, 255 );


--流線
ryusen2 = entryEffectLife( spep_5 + 0,  921, 88, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 88, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, ryusen2, 1, 1 );
setEffScaleKey( spep_5 + 88, ryusen2, 1, 1 );

setEffRotateKey( spep_5 + 0, ryusen2, 0 );
setEffRotateKey( spep_5 + 88, ryusen2, 0 );

setEffAlphaKey( spep_5 + 0, ryusen2, 255 );
setEffAlphaKey( spep_5 + 88, ryusen2, 255 );

--敵の動き
setDisp( spep_5  + 0, 1, 1 );
setDisp( spep_5 -3 + 88, 1, 0 );

changeAnime( spep_5  + 0, 1, 104 );
changeAnime( spep_5 -3 + 60, 1, 106 );

setMoveKey( spep_5  + 0, 1, 387.4, -32.9 , 0 );
--setMoveKey( spep_5 -3 + 2, 1, 353.2, -32.6 , 0 );
setMoveKey( spep_5 -3 + 4, 1, 316.8, -32.3 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 278.1, -32 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 237.1, -31.8 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 235.3, -31.5 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 233.3, -31.3 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 231.2, -31.1 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 229.1, -30.8 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 226.9, -30.5 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 224.6, -30.3 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 222.1, -30 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 219.6, -29.7 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 217, -29.3 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 214.2, -29 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 211.4, -28.7 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 208.5, -28.4 , 0 );

setScaleKey( spep_5  + 0, 1, 0.73, 0.73 );
--setScaleKey( spep_5 -3 + 2, 1, 0.84, 0.84 );
setScaleKey( spep_5 -3 + 4, 1, 0.99, 0.99 );
setScaleKey( spep_5 -3 + 6, 1, 1.13, 1.13 );
setScaleKey( spep_5 -3 + 8, 1, 1.28, 1.28 );
setScaleKey( spep_5 -3 + 10, 1, 1.31, 1.31 );
setScaleKey( spep_5 -3 + 12, 1, 1.33, 1.33 );
setScaleKey( spep_5 -3 + 14, 1, 1.39, 1.39 );
setScaleKey( spep_5 -3 + 16, 1, 1.42, 1.42 );
setScaleKey( spep_5 -3 + 18, 1, 1.45, 1.45 );
setScaleKey( spep_5 -3 + 20, 1, 1.51, 1.51 );
setScaleKey( spep_5 -3 + 22, 1, 1.54, 1.54 );
setScaleKey( spep_5 -3 + 24, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 26, 1, 1.62, 1.62 );
setScaleKey( spep_5 -3 + 28, 1, 1.68, 1.68 );
setScaleKey( spep_5 -3 + 30, 1, 1.74, 1.74 );
setScaleKey( spep_5 -3 + 32, 1, 1.8, 1.8 );

setRotateKey( spep_5  + 0, 1, 0 );
setRotateKey( spep_5 +30 + 0, 1, 0 );

--SE
SEx=playSe( spep_5 ,8  );
SE0=playSe( spep_5+20 ,8  );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 1, 90, 0, 0, 0, 0, 150 );  --薄い黒　背景
---------------------------------------------------------------------------
-- 回避
---------------------------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_5 + 30; --エンドフェイズのフレーム数を置き換える

    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SEx, 0 );

    playSe( SP_dodge - 12, 1042 );
    
    pauseAll( SP_dodge, 67 );
    
    -- ** 敵キャラクター ** --
    
    setMoveKey( SP_dodge + 8, 1, 208.5, -28.4 , 0 );
    setMoveKey( SP_dodge + 9, 1, 208.5, -28.4 , 0 );
    setMoveKey( SP_dodge + 10, 1, 208.5, -28.4 , 0 );
    
    setScaleKey( SP_dodge + 8, 1, 1.8, 1.8  );
    setScaleKey( SP_dodge + 9, 1, 1.8, 1.8 );
    setScaleKey( SP_dodge + 10, 1, 1.8, 1.8 );
    
    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );

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
    
    
---------------------------------------------------------------------------
-- 回避しなかった場合
---------------------------------------------------------------------------
setMoveKey( spep_5 -3 + 34, 1, 205.5, -28 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 202.4, -27.6 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 199.2, -27.3 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 195.9, -26.8 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 192.5, -26.5 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 188.9, -26.1 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 185.4, -25.6 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 181.7, -25.2 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 177.8, -24.7 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 174, -24.2 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 170, -23.8 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 165.9, -23.3 , 0 );
setMoveKey( spep_5 -3 + 59, 1, 161.8, -22.9 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 145.9, 43.6 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 172.2, 43 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 198.4, 42.3 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 226.3, 39.5 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 253.9, 35.9 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 281.5, 31.4 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 308.7, 25.7 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 335.6, 18.8 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 362, 10.4 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 387.9, 0.7 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 413.2, -10.3 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 437.9, -22.1 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 462.3, -34.8 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 486.2, -47.9 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 509.9, -61.4 , 0 );

setScaleKey( spep_5 -3 + 34, 1, 1.86, 1.86 );
setScaleKey( spep_5 -3 + 36, 1, 1.91, 1.91 );
setScaleKey( spep_5 -3 + 38, 1, 1.97, 1.97 );
setScaleKey( spep_5 -3 + 40, 1, 2.03, 2.03 );
setScaleKey( spep_5 -3 + 42, 1, 2.09, 2.09 );
setScaleKey( spep_5 -3 + 44, 1, 2.15, 2.15 );
setScaleKey( spep_5 -3 + 46, 1, 2.2, 2.2 );
setScaleKey( spep_5 -3 + 48, 1, 2.26, 2.26 );
setScaleKey( spep_5 -3 + 50, 1, 2.35, 2.35 );
setScaleKey( spep_5 -3 + 52, 1, 2.41, 2.41 );
setScaleKey( spep_5 -3 + 54, 1, 2.49, 2.49 );
setScaleKey( spep_5 -3 + 56, 1, 2.55, 2.55 );
setScaleKey( spep_5 -3 + 59, 1, 2.64, 2.64 );
setScaleKey( spep_5 -3 + 60, 1, 2.43, 2.43 );
setScaleKey( spep_5 -3 + 62, 1, 2.14, 2.14 );
setScaleKey( spep_5 -3 + 64, 1, 1.84, 1.84 );
setScaleKey( spep_5 -3 + 66, 1, 1.73, 1.73 );
setScaleKey( spep_5 -3 + 68, 1, 1.62, 1.62 );
setScaleKey( spep_5 -3 + 70, 1, 1.51, 1.51 );
setScaleKey( spep_5 -3 + 72, 1, 1.4, 1.4 );
setScaleKey( spep_5 -3 + 74, 1, 1.3, 1.3 );
setScaleKey( spep_5 -3 + 76, 1, 1.19, 1.19 );
setScaleKey( spep_5 -3 + 78, 1, 1.08, 1.08 );
setScaleKey( spep_5 -3 + 80, 1, 0.97, 0.97 );
setScaleKey( spep_5 -3 + 82, 1, 0.86, 0.86 );
setScaleKey( spep_5 -3 + 84, 1, 0.76, 0.76 );
setScaleKey( spep_5 -3 + 86, 1, 0.65, 0.65 );
setScaleKey( spep_5 -3 + 88, 1, 0.54, 0.54 );

setRotateKey( spep_5 -3 + 59, 1, 0 );
setRotateKey( spep_5 -3 + 60, 1, -40 );
setRotateKey( spep_5 -3 + 64, 1, -40 );
setRotateKey( spep_5 -3 + 66, 1, -36.7 );
setRotateKey( spep_5 -3 + 68, 1, -33.3 );
setRotateKey( spep_5 -3 + 70, 1, -30 );
setRotateKey( spep_5 -3 + 72, 1, -26.7 );
setRotateKey( spep_5 -3 + 74, 1, -23.3 );
setRotateKey( spep_5 -3 + 76, 1, -20 );
setRotateKey( spep_5 -3 + 78, 1, -16.7 );
setRotateKey( spep_5 -3 + 80, 1, -13.3 );
setRotateKey( spep_5 -3 + 82, 1, -10 );
setRotateKey( spep_5 -3 + 84, 1, -6.7 );
setRotateKey( spep_5 -3 + 86, 1, -3.3 );
setRotateKey( spep_5 -3 + 88, 1, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_5 -3 + 60,  10020, 14, 0x100, -1, 0, -137.1, 217.5 );--バキッ

setEffMoveKey( spep_5 -3 + 60, ctbaki, -137.1, 217.5 , 0 );
setEffMoveKey( spep_5 -3 + 62, ctbaki, -71.1, 297.5 , 0 );
setEffMoveKey( spep_5 -3 + 64, ctbaki, -5.1, 377.4 , 0 );
setEffMoveKey( spep_5 -3 + 66, ctbaki, -1.5, 386.1 , 0 );
setEffMoveKey( spep_5 -3 + 68, ctbaki, 2.2, 394.7 , 0 );
setEffMoveKey( spep_5 -3 + 70, ctbaki, 5.8, 403.4 , 0 );
setEffMoveKey( spep_5 -3 + 72, ctbaki, 9.4, 412 , 0 );
setEffMoveKey( spep_5 -3 + 74, ctbaki, 13, 420.7 , 0 );

setEffScaleKey( spep_5 -3 + 60, ctbaki, 0.25, 0.25 );
setEffScaleKey( spep_5 -3 + 62, ctbaki, 1.38, 1.38 );
setEffScaleKey( spep_5 -3 + 64, ctbaki, 2.5, 2.5 );
setEffScaleKey( spep_5 -3 + 66, ctbaki, 2.52, 2.52 );
setEffScaleKey( spep_5 -3 + 68, ctbaki, 2.54, 2.54 );
setEffScaleKey( spep_5 -3 + 70, ctbaki, 2.56, 2.56 );
setEffScaleKey( spep_5 -3 + 72, ctbaki, 2.58, 2.58 );
setEffScaleKey( spep_5 -3 + 74, ctbaki, 2.6, 2.6 );

setEffRotateKey( spep_5 -3 + 60, ctbaki, 0 );
setEffRotateKey( spep_5 -3 + 74, ctbaki, 0 );

setEffAlphaKey( spep_5 -3 + 60, ctbaki, 255 );
setEffAlphaKey( spep_5 -3 + 64, ctbaki, 255 );
setEffAlphaKey( spep_5 -3 + 66, ctbaki, 204 );
setEffAlphaKey( spep_5 -3 + 68, ctbaki, 153 );
setEffAlphaKey( spep_5 -3 + 70, ctbaki, 102 );
setEffAlphaKey( spep_5 -3 + 72, ctbaki, 51 );
setEffAlphaKey( spep_5 -3 + 74, ctbaki, 0 );

--SE
playSe( spep_5+40 ,8  );
playSe( spep_5+58 ,1011  );

-- ** 白フェード** --
entryFade(spep_5+82,4,10,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_6 = spep_5 + 90;

------------------------------------------------------
-- 敵吹っ飛びシーン(100F)
------------------------------------------------------
--[[

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_6 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_6 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_6 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_6 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_6 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_6 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_6 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_6 + 100, bakuhatsu, 255 );

]]
-- ** ひび割れ ** --
hibiware = entryEffect( spep_6 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_6 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_6 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_6 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_6 + 2, hibiware, 0 );
setEffRotateKey( spep_6 + 100, hibiware, 0 );

setEffAlphaKey( spep_6 + 2, hibiware, 0 );
setEffAlphaKey( spep_6 + 13, hibiware, 0 );
setEffAlphaKey( spep_6 + 14, hibiware, 255 );
setEffAlphaKey( spep_6 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusenf = entryEffectLife( spep_6 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 14, shuchusenf, 32, 25 );

setEffMoveKey( spep_6 + 14, shuchusenf, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, shuchusenf, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusenf, 1, 1 );
setEffScaleKey( spep_6 + 46, shuchusenf, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusenf, 0 );
setEffRotateKey( spep_6 + 46, shuchusenf, 0 );

setEffAlphaKey( spep_6 + 14, shuchusenf, 255 );
setEffAlphaKey( spep_6 + 28, shuchusenf, 255 );
setEffAlphaKey( spep_6 + 30, shuchusenf, 252 );
setEffAlphaKey( spep_6 + 32, shuchusenf, 242 );
setEffAlphaKey( spep_6 + 34, shuchusenf, 227 );
setEffAlphaKey( spep_6 + 36, shuchusenf, 205 );
setEffAlphaKey( spep_6 + 38, shuchusenf, 176 );
setEffAlphaKey( spep_6 + 40, shuchusenf, 142 );
setEffAlphaKey( spep_6 + 42, shuchusenf, 101 );
setEffAlphaKey( spep_6 + 44, shuchusenf, 54 );
setEffAlphaKey( spep_6 + 46, shuchusenf, 0 );

shuchusenkuro = entryEffectLife( spep_6 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_6 + 14, shuchusenkuro, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, shuchusenkuro, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusenkuro, 1, 1 );
setEffScaleKey( spep_6 + 100, shuchusenkuro, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusenkuro, 0 );
setEffRotateKey( spep_6 + 100, shuchusenkuro, 0 );

setEffAlphaKey( spep_6 + 14, shuchusenkuro, 255 );
setEffAlphaKey( spep_6 + 100, shuchusenkuro, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_6 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_6 + 14, ctga, 14, 20 );

setEffMoveKey( spep_6 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_6 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_6 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_6 + 14, ctga, -10.9 );
setEffRotateKey( spep_6 + 15, ctga, -10.9 );
setEffRotateKey( spep_6 + 16, ctga, -14.9 );
setEffRotateKey( spep_6 + 17, ctga, -14.9 );
setEffRotateKey( spep_6 + 18, ctga, -10.9 );
setEffRotateKey( spep_6 + 19, ctga, -10.9 );
setEffRotateKey( spep_6 + 20, ctga, -14.9 );
setEffRotateKey( spep_6 + 21, ctga, -14.9 );
setEffRotateKey( spep_6 + 22, ctga, -10.9 );
setEffRotateKey( spep_6 + 23, ctga, -10.9 );
setEffRotateKey( spep_6 + 24, ctga, -14.9 );
setEffRotateKey( spep_6 + 25, ctga, -14.9 );
setEffRotateKey( spep_6 + 26, ctga, -10.9 );
setEffRotateKey( spep_6 + 27, ctga, -10.9 );
setEffRotateKey( spep_6 + 28, ctga, -14.9 );
setEffRotateKey( spep_6 + 100, ctga, -14.9 );

setEffAlphaKey( spep_6 + 14, ctga, 255 );
setEffAlphaKey( spep_6 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
changeAnime( spep_6 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_6 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_6 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_6 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_6 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_6 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_6 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_6 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_6 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_6 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_6 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_6 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_6 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_6 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_6 + 100, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_6 + 0, 1, 0.2, 0.2 );
setScaleKey( spep_6 + 1, 1, 0.2, 0.2 );
setScaleKey( spep_6 + 2, 1, 0.25, 0.25 );
setScaleKey( spep_6 + 3, 1, 0.25, 0.25 );
setScaleKey( spep_6 + 4, 1, 0.46, 0.46 );
setScaleKey( spep_6 + 5, 1, 0.46, 0.46 );
setScaleKey( spep_6 + 6, 1, 0.55, 0.55 );
setScaleKey( spep_6 + 7, 1, 0.55, 0.55 );
setScaleKey( spep_6 + 8, 1, 0.71, 0.71 );
setScaleKey( spep_6 + 9, 1, 0.71, 0.71 );
setScaleKey( spep_6 + 10, 1, 0.97, 0.97 );
setScaleKey( spep_6 + 11, 1, 0.97, 0.97 );
setScaleKey( spep_6 + 12, 1, 1.1, 1.1 );  --画面にぶつかる
setScaleKey( spep_6 + 13, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 14, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 15, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 16, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 17, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 18, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 19, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 20, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 21, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 22, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 23, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 24, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 25, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 26, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 100, 1, 1.2, 1.2 );

setRotateKey( spep_6 + 0, 1, -40 );
setRotateKey( spep_6 + 1, 1, -40 );
setRotateKey( spep_6 + 2, 1, 80 );
setRotateKey( spep_6 + 3, 1, 80 );
setRotateKey( spep_6 + 4, 1, 200 );
setRotateKey( spep_6 + 5, 1, 200 );
setRotateKey( spep_6 + 6, 1, 360 );
setRotateKey( spep_6 + 7, 1, 360 );
setRotateKey( spep_6 + 8, 1, 558 );
setRotateKey( spep_6 + 9, 1, 558 );
setRotateKey( spep_6 + 10, 1, 425 );
setRotateKey( spep_6 + 11, 1, 425 );
setRotateKey( spep_6 + 12, 1, -40 );
setRotateKey( spep_6 + 100, 1, -40 );

-- ** 音 ** --
--playSe( spep_6 + 0, SE_10 );  --爆発音
playSe( spep_6 + 14, SE_11 );  --割れる音

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 2, 24, 0, 0, 0, 200 );  --薄い黒　背景


-- ** ダメージ表示 ** --
dealDamage( spep_6 + 10 );
entryFade( spep_6 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_6 + 100 );

end