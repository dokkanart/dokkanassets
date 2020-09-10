--1017360:アムズ(第二形態)_デスボール
--sp_effect_a2_00117

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
SP_ATK_3 = SP_ATK_2+92;
SP_ATK_4 = SP_ATK_3+45;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ波
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
SP_01=	153616	;--	アイドリング
SP_02=	153618	;--	気溜め　
SP_03=	153620	;--	気弾作成
SP_04=	153622	;--	気弾投げる
SP_05=	153624	;--	気弾ヒット

--敵側
SP_01x=	153617	;--	アイドリング	(敵)
SP_02x=	153619	;--	気溜め　	(敵)
SP_03x=	153621	;--	気弾作成	(敵)
SP_04x=	153623	;--	気弾投げる	(敵)
SP_05x=	153624	;--	気弾ヒット


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);


setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);

setMoveKey(   0,   0,    -5000, -54,   0);
setMoveKey(   1,   0,    -5000, -54,   0);
setMoveKey(   2,   0,    -5000, -54,   0);
setMoveKey(   3,   0,    -5000, -54,   0);
setMoveKey(   4,   0,    -5000, -54,   0);
setMoveKey(   5,   0,    -5000, -54,   0);
setMoveKey(   6,   0,    -5000, -54,   0);
setScaleKey(  0,   0,  1.5, 1.5 );
setScaleKey(  1,   0,  1.5, 1.5 );
setScaleKey(  2,   0,  1.5, 1.5 );
setScaleKey(  3,   0,  1.5, 1.5 );
setScaleKey(  4,   0,  1.5, 1.5 );
setScaleKey(  5,   0,  1.5, 1.5 );
setScaleKey(  6,   0,  1.5, 1.5 );
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
-- 味方
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- アイドリング!!!
------------------------------------------------------
--はじめの準備
spep_0 = 0;

-- ** エフェクト等 ** --
idling = entryEffectLife( spep_0 + 0, SP_01,  40 ,0x100, -1, 0, 0, 0 );  
setEffMoveKey( spep_0 + 0, idling, 0, 0 , 0 );
setEffMoveKey( spep_0 + 40, idling, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, idling, 1.0, 1.0 );
setEffScaleKey( spep_0 + 40, idling, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, idling, 0 );
setEffRotateKey( spep_0 + 40, idling, 0 );
setEffAlphaKey( spep_0 + 0, idling, 255 );
setEffAlphaKey( spep_0 + 38, idling, 255 );
setEffAlphaKey( spep_0 + 39, idling, 255 );
setEffAlphaKey( spep_0 + 40, idling,0 );


--次の準備
spep_1 = spep_0 + 40; 

------------------------------------------------------
-- ため
------------------------------------------------------

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_1 + 0, SP_02,  38 ,0x80, -1, 0, 0, 0 );  
setEffMoveKey( spep_1 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_1 + 38, tame, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_1 + 38, tame, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 38, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 38, tame, 255 );

--文字エントリー
ctzuzuzun = entryEffectLife( spep_1 + 0,  10013, 36, 0x100, -1, 0, 22, 191.9 );--ズズズンッ

setEffShake(spep_1 + 0 , ctzuzuzun,36,15);

setEffMoveKey( spep_1 + 0, ctzuzuzun, 22, 191.9 , 0 );
setEffMoveKey( spep_1 + 2, ctzuzuzun, 29.8, 246.3 , 0 );
setEffMoveKey( spep_1 + 4, ctzuzuzun, 49.2, 309.6 , 0 );
setEffMoveKey( spep_1 + 6, ctzuzuzun, 46.5, 333.1 , 0 );
setEffMoveKey( spep_1 + 8, ctzuzuzun, 51.6, 327.8 , 0 );
setEffMoveKey( spep_1 + 10, ctzuzuzun, 37.1, 303.5 , 0 );
setEffMoveKey( spep_1 + 12, ctzuzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_1 + 14, ctzuzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_1 + 16, ctzuzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_1 + 18, ctzuzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_1 + 20, ctzuzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_1 + 22, ctzuzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_1 + 24, ctzuzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_1 + 26, ctzuzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_1 + 28, ctzuzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_1 + 30, ctzuzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_1 + 32, ctzuzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_1 + 34, ctzuzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_1 + 36, ctzuzuzun, 46, 309.9 , 0 );

a = 1.5 ;

setEffScaleKey( spep_1 + 0, ctzuzuzun, 0.38+a, 0.38+a );
setEffScaleKey( spep_1 + 2, ctzuzuzun, 0.62+a, 0.62+a );
setEffScaleKey( spep_1 + 4, ctzuzuzun, 0.85+a, 0.85+a );
setEffScaleKey( spep_1 + 6, ctzuzuzun, 1+a, 1+a );
setEffScaleKey( spep_1 + 36, ctzuzuzun, 1+a, 1+a );

setEffRotateKey( spep_1 + 0, ctzuzuzun, 0 );
setEffRotateKey( spep_1 + 36, ctzuzuzun, 0 );

setEffAlphaKey( spep_1 + 0, ctzuzuzun, 255 );
setEffAlphaKey( spep_1 + 36, ctzuzuzun, 255 );

-- ** 白フェード** --
entryFade(spep_1+30,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_1, SE_01);

--次の準備
spep_2 = spep_1 + 38; 

------------------------------------------------------
-- アイドリング!!!
------------------------------------------------------
-- ** エフェクト等 ** --
make = entryEffectLife( spep_2 + 0, SP_03,  100 ,0x80, -1, 0, 0, 0 );  
setEffMoveKey( spep_2 + 0, make, 0, 0 , 0 );
setEffMoveKey( spep_2 + 100, make, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, make, 1.0, 1.0 );
setEffScaleKey( spep_2 + 100, make, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, make, 0 );
setEffRotateKey( spep_2 + 100, make, 0 );
setEffAlphaKey( spep_2 + 0, make, 255 );
setEffAlphaKey( spep_2 + 100, make, 255 );



-- ** 顔カットイン ** --
speff = entryEffect( spep_2 +8, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_2 +8, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_2  + 20,  190006, 72, 0x100, -1, 0, 100.9, 512.8 ); --ゴゴゴ
setEffShake( spep_2  + 20, ctgogo, 72, 10 );
 
setEffMoveKey( spep_2  + 20, ctgogo, 100.9, 512.8 , 0 );
setEffMoveKey( spep_2  + 92, ctgogo, 100.9, 515.5 , 0 );

setEffScaleKey( spep_2  + 20, ctgogo, 0.84, 0.84 );
setEffScaleKey( spep_2  + 84, ctgogo, 0.84, 0.84 );
setEffScaleKey( spep_2  + 86, ctgogo, 1.2, 1.2 );
setEffScaleKey( spep_2  + 88, ctgogo, 1.3, 1.3 );
setEffScaleKey( spep_2  + 90, ctgogo, 1.66, 1.66 );
setEffScaleKey( spep_2  + 92, ctgogo, 2.02, 2.02 );
 
setEffRotateKey( spep_2  + 20, ctgogo, 0 );
setEffRotateKey( spep_2  + 92, ctgogo, 0 );

setEffAlphaKey( spep_2  + 20, ctgogo, 0 );
setEffAlphaKey( spep_2  + 21, ctgogo, 255 );
setEffAlphaKey( spep_2  + 22, ctgogo, 255 );
setEffAlphaKey( spep_2  + 92, ctgogo, 255 );


-- ** 白フェード** --
entryFade(spep_2+90,4,12,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_2 + 20, SE_04 );  --ゴゴゴ

--次の準備
spep_3=spep_2+100;


--------------------------------------
--カードカットイン
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え



-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

-- ** エフェクト等 ** --
entryFade(spep_3+82,4,8,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_4 = spep_3 + 94;

------------------------------------------------------
-- 投げる
------------------------------------------------------
-- ** エフェクト等 ** --
throw = entryEffectLife( spep_4 + 0, SP_04,  132 ,0x100, -1, 0, 0, 0 );  
setEffMoveKey( spep_4 + 0, throw, 0, 0 , 0 );
setEffMoveKey( spep_4 + 132, throw, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, throw, 1.0, 1.0 );
setEffScaleKey( spep_4 + 132, throw, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, throw, 0 );
setEffRotateKey( spep_4 + 132, throw, 0 );
setEffAlphaKey( spep_4 + 0, throw, 255 );
setEffAlphaKey( spep_4 + 132, throw, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_4 + 0,  906, 68, 0x100, -1, 0, 285.5, 0 );

b = 285.5;

setEffMoveKey( spep_4 + 0, shuchusen1, 285.5 - b, 0 , 0 );
setEffMoveKey( spep_4 + 58, shuchusen1, 285.5- b, 0 , 0 );
setEffMoveKey( spep_4 + 60, shuchusen1, 300.8- b, 0 , 0 );
setEffMoveKey( spep_4 + 62, shuchusen1, 346.8- b, 0 , 0 );
setEffMoveKey( spep_4 + 64, shuchusen1, 423.4- b, 0 , 0 );
setEffMoveKey( spep_4 + 66, shuchusen1, 530.6- b, 0 , 0 );
setEffMoveKey( spep_4 + 68, shuchusen1, 668.5- b, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen1, 1.5, 1.5 );
setEffScaleKey( spep_4 + 58, shuchusen1, 1.5, 1.5 );
setEffScaleKey( spep_4 + 60, shuchusen1, 1.54, 1.54 );
setEffScaleKey( spep_4 + 62, shuchusen1, 1.66, 1.66 );
setEffScaleKey( spep_4 + 64, shuchusen1, 1.86, 1.86 );
setEffScaleKey( spep_4 + 66, shuchusen1, 2.14, 2.14 );
setEffScaleKey( spep_4 + 68, shuchusen1, 2.5, 2.5 );

setEffRotateKey( spep_4 + 0, shuchusen1, 180 );
setEffRotateKey( spep_4 + 68, shuchusen1, 180 );

setEffAlphaKey( spep_4 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_4 + 68, shuchusen1, 255 );

--流線
ryusen1 = entryEffectLife( spep_4 + 0,  914, 128, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_4 + 128, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, ryusen1, 2, 1 );
setEffScaleKey( spep_4 + 128, ryusen1, 2, 1 );

setEffRotateKey( spep_4 + 0, ryusen1, 0 );
setEffRotateKey( spep_4 + 128, ryusen1, 0 );

setEffAlphaKey( spep_4 + 0, ryusen1, 26 );
setEffAlphaKey( spep_4 + 58, ryusen1, 26 );
setEffAlphaKey( spep_4 + 60, ryusen1, 72 );
setEffAlphaKey( spep_4 + 62, ryusen1, 118 );
setEffAlphaKey( spep_4 + 64, ryusen1, 163 );
setEffAlphaKey( spep_4 + 66, ryusen1, 209 );
setEffAlphaKey( spep_4 + 68, ryusen1, 255 );
setEffAlphaKey( spep_4 + 128, ryusen1, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_4 + 24,  10012, 34, 0x100, -1, 0, 76, 259.9 );--ズオッ

setEffShake(spep_4 + 24 , ctzuo,34,10);

setEffMoveKey( spep_4 + 24, ctzuo, 76, 259.9 , 0 );
setEffMoveKey( spep_4 + 26, ctzuo, 105, 300.9 , 0 );
setEffMoveKey( spep_4 + 28, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_4 + 30, ctzuo, 136.2, 342.3 , 0 );
setEffMoveKey( spep_4 + 32, ctzuo, 121.3, 359.9 , 0 );
setEffMoveKey( spep_4 + 34, ctzuo, 144.8, 339.1 , 0 );
setEffMoveKey( spep_4 + 36, ctzuo, 126.6, 359.9 , 0 );
setEffMoveKey( spep_4 + 38, ctzuo, 153.3, 335.9 , 0 );
setEffMoveKey( spep_4 + 40, ctzuo, 132, 359.9 , 0 );
setEffMoveKey( spep_4 + 42, ctzuo, 161.8, 332.7 , 0 );
setEffMoveKey( spep_4 + 44, ctzuo, 137.3, 359.9 , 0 );
setEffMoveKey( spep_4 + 46, ctzuo, 170.4, 329.5 , 0 );
setEffMoveKey( spep_4 + 48, ctzuo, 142.6, 359.9 , 0 );
setEffMoveKey( spep_4 + 50, ctzuo, 178.9, 326.3 , 0 );
setEffMoveKey( spep_4 + 52, ctzuo, 148, 359.9 , 0 );
setEffMoveKey( spep_4 + 54, ctzuo, 187.4, 323.1 , 0 );
setEffMoveKey( spep_4 + 56, ctzuo, 153.3, 359.9 , 0 );
setEffMoveKey( spep_4 + 58, ctzuo, 156, 359.9 , 0 );

c =2;

setEffScaleKey( spep_4 + 24, ctzuo, 0.1 + c, 0.1 + c );
setEffScaleKey( spep_4 + 26, ctzuo, 0.45 + c, 0.45 + c );
setEffScaleKey( spep_4 + 28, ctzuo, 0.8 + c, 0.8 + c );
setEffScaleKey( spep_4 + 30, ctzuo, 0.88 + c, 0.88 + c );
setEffScaleKey( spep_4 + 32, ctzuo, 0.96 + c, 0.96 + c );
setEffScaleKey( spep_4 + 34, ctzuo, 1.04 + c, 1.04 + c );
setEffScaleKey( spep_4 + 36, ctzuo, 1.12 + c, 1.12 + c );
setEffScaleKey( spep_4 + 38, ctzuo, 1.2 + c, 1.2 + c );
setEffScaleKey( spep_4 + 40, ctzuo, 1.28 + c, 1.28 + c );
setEffScaleKey( spep_4 + 42, ctzuo, 1.36 + c, 1.36 + c );
setEffScaleKey( spep_4 + 44, ctzuo, 1.44 + c, 1.44  + c);
setEffScaleKey( spep_4 + 46, ctzuo, 1.52 + c, 1.52  + c);
setEffScaleKey( spep_4 + 48, ctzuo, 1.6 + c, 1.6  + c);
setEffScaleKey( spep_4 + 50, ctzuo, 1.68 + c, 1.68  + c);
setEffScaleKey( spep_4 + 52, ctzuo, 1.76 + c, 1.76  + c);
setEffScaleKey( spep_4 + 54, ctzuo, 1.84 + c, 1.84  + c);
setEffScaleKey( spep_4 + 56, ctzuo, 1.92 + c, 1.92  + c);
setEffScaleKey( spep_4 + 58, ctzuo, 2 + c, 2 + c );

setEffRotateKey( spep_4 + 24, ctzuo, 30 );
setEffRotateKey( spep_4 + 58, ctzuo, 30 );

setEffAlphaKey( spep_4 + 24, ctzuo, 255 );
setEffAlphaKey( spep_4 + 26, ctzuo, 240 );
setEffAlphaKey( spep_4 + 28, ctzuo, 225 );
setEffAlphaKey( spep_4 + 30, ctzuo, 210 );
setEffAlphaKey( spep_4 + 32, ctzuo, 195 );
setEffAlphaKey( spep_4 + 34, ctzuo, 180 );
setEffAlphaKey( spep_4 + 36, ctzuo, 165 );
setEffAlphaKey( spep_4 + 38, ctzuo, 150 );
setEffAlphaKey( spep_4 + 40, ctzuo, 135 );
setEffAlphaKey( spep_4 + 42, ctzuo, 120 );
setEffAlphaKey( spep_4 + 44, ctzuo, 105 );
setEffAlphaKey( spep_4 + 46, ctzuo, 90 );
setEffAlphaKey( spep_4 + 48, ctzuo, 75 );
setEffAlphaKey( spep_4 + 50, ctzuo, 60 );
setEffAlphaKey( spep_4 + 52, ctzuo, 45 );
setEffAlphaKey( spep_4 + 54, ctzuo, 30 );
setEffAlphaKey( spep_4 + 56, ctzuo, 15 );
setEffAlphaKey( spep_4 + 58, ctzuo, 0 );

--SE
--playSe( spep_4 , 1036 );
playSe( spep_4 +28 , 1021 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 58, 0, 0, 0, 0, 180 );  --薄い黒　背景
entryFadeBg( spep_4 + 0, 0, 132, 0, 0, 0, 0, 165 );  --薄い黒　背景

-- ** 白フェード** --
entryFade(spep_4+124,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_5 = spep_4 + 132;
------------------------------------------------------
-- 投げる
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffectLife( spep_5 + 0, SP_05,  100 ,0x100, -1, 0, 0, 0 );  
setEffMoveKey( spep_5 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, hit, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, hit, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit, 0 );
setEffRotateKey( spep_5 + 100, hit, 0 );
setEffAlphaKey( spep_5 + 0, hit, 255 );
setEffAlphaKey( spep_5 + 100, hit, 255 );

--文字エントリー
ctzudodo = entryEffectLife( spep_5 + 0,  10014, 98, 0x100, -1, 0, 58.1, 364 );--ズドドドッ

setEffShake(spep_5 + 0 , ctzudodo,98,15);

setEffMoveKey( spep_5 + 0, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 2, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 4, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 6, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 8, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 10, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 12, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 14, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 16, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 18, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 20, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 22, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 24, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 26, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 28, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 30, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 32, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 34, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 36, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 38, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 40, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 42, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 44, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 46, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 48, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 50, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 52, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 54, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 56, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 58, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 60, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 62, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 64, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 66, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 68, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 70, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 72, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 74, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 76, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 78, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 80, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 82, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 84, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 86, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 88, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 90, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 92, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 94, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 96, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 98, ctzudodo, 34.1, 348 , 0 );

setEffScaleKey( spep_5 + 0, ctzudodo, 2.87, 3.72 );
setEffScaleKey( spep_5 + 98, ctzudodo, 2.87, 3.72 );

setEffRotateKey( spep_5 + 0, ctzudodo, 80 );
setEffRotateKey( spep_5 + 98, ctzudodo, 80 );

setEffAlphaKey( spep_5 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_5 + 98, ctzudodo, 255 );

--流線
ryusen2 = entryEffectLife( spep_5 + 0,  921, 98, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 98, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, ryusen2, 1, 1 );
setEffScaleKey( spep_5 + 98, ryusen2, 1, 1 );

setEffRotateKey( spep_5 + 0, ryusen2, 0 );
setEffRotateKey( spep_5 + 98, ryusen2, 0 );

setEffAlphaKey( spep_5 + 0, ryusen2, 255 );
setEffAlphaKey( spep_5 + 98, ryusen2, 255 );


--敵の動き
setDisp( spep_5  + 0, 1, 1 );
setDisp( spep_5  + 98, 1, 0 );
changeAnime( spep_5  + 0, 1, 104 );
changeAnime( spep_5 -3 + 60, 1, 108 );

setMoveKey( spep_5  + 0, 1, 241.7, -10 , 0 );
--setMoveKey( spep_5 -3 + 2, 1, 250.8, -0.2 , 0 );
setMoveKey( spep_5 -3 + 4, 1, 241.7, -6.3 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 248.6, -0.5 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 239.4, -6.6 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 246.2, -0.8 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 236.9, -7 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 243.5, -1.2 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 234.1, -7.4 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 240.6, -1.6 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 231.1, -7.8 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 237.4, -2 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 227.7, -8.3 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 234, -2.5 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 224.2, -8.8 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 230.3, -3 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 220.3, -9.3 , 0 );

d = 0.7;

setScaleKey( spep_5  + 0, 1, 0.15+ 0.3 , 0.15+ 0.3 );
--setScaleKey( spep_5 -3 + 2, 1, 0.15+ 0.3, 0.15+ 0.3 );
--setScaleKey( spep_5 -3 + 4, 1, 0.16+ 0.3, 0.16+ 0.3 );
---setScaleKey( spep_5 -3 + 6, 1, 0.16+ 0.3, 0.16+ 0.3 );
--setScaleKey( spep_5 -3 + 8, 1, 0.17+ 0.3, 0.17+ 0.3 );
--setScaleKey( spep_5 -3 + 10, 1, 0.18+ 0.3, 0.18+ 0.3 );
--setScaleKey( spep_5 -3 + 12, 1, 0.18+ 0.3, 0.18 + 0.3);
--setScaleKey( spep_5 -3 + 14, 1, 0.19+ 0.3, 0.19+ 0.3 );
--setScaleKey( spep_5 -3 + 16, 1, 0.2+ 0.3, 0.2+ 0.3 );
--setScaleKey( spep_5 -3 + 18, 1, 0.2+ 0.3, 0.2+ 0.3 );
--setScaleKey( spep_5 -3 + 20, 1, 0.21+ 0.3, 0.21+ 0.3 );
--setScaleKey( spep_5 -3 + 22, 1, 0.22+ 0.3, 0.22+ 0.3 );
---setScaleKey( spep_5 -3 + 24, 1, 0.23+ 0.3, 0.23+ 0.3 );
--setScaleKey( spep_5 -3 + 26, 1, 0.23+ 0.3, 0.23+ 0.3 );
--setScaleKey( spep_5 -3 + 28, 1, 0.24+ 0.3, 0.24+ 0.3 );
--setScaleKey( spep_5 -3 + 30, 1, 0.25+ 0.3, 0.25+ 0.3 );
--setScaleKey( spep_5 -3 + 32, 1, 0.26+ 0.4, 0.26+ 0.4 );

setRotateKey( spep_5  + 0, 1, 0 );
setRotateKey( spep_5  + 30, 1, 0 );

--SE
SE0=playSe( spep_5 , 1022 );
entryFadeBg( spep_5 + 0, 0, 100, 0, 0, 0, 0, 165 );  --薄い黒　背景

---------------------------------------------------------------------------
-- 回避
---------------------------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_5 + 30; --エンドフェイズのフレーム数を置き換える

    stopSe( SP_dodge - 12, SE0, 0 );

    playSe( SP_dodge - 12, 1042 );
    
    pauseAll( SP_dodge, 67 );
    
    -- ** 敵キャラクター ** --
    
    setMoveKey( SP_dodge + 8, 1, 220.3, -9.3 , 0 );
    setMoveKey( SP_dodge + 9, 1, 220.3, -9.3 , 0 );
    setMoveKey( SP_dodge + 10, 1, 220.3, -9.3 , 0 );
    
    setScaleKey( SP_dodge + 8, 1, 0.26+ 0.48, 0.26+ 0.48  );
    setScaleKey( SP_dodge + 9, 1, 0.26+ 0.48, 0.26+ 0.48  );
    setScaleKey( SP_dodge + 10, 1, 0.26+ 0.48, 0.26+ 0.48  );

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
e = 50;

setMoveKey( spep_5 -3 + 34, 1, 226.3, -3.6 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 216.2, -9.9 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 222.1, -4.2 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 211.9, -10.5 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 217.6, -4.8 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 207.3, -11.2 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 212.9, -5.5 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 202.4, -11.8 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 207.9, -6.2 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 197.3, -12.6 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 202.6, -6.9 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 191.9, -13.3 , 0 );
setMoveKey( spep_5 -3 + 59, 1, 197.1, -7.7 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 136.6 + e, 11.6 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 165.6 + e, 0.8 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 154.9 + e, -5.5 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 163.8 + e, 0.5 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 158.5 + e, -5.5 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 171 , 0.6 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 169.3 , -5.3 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 185.5 , 0.8 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 187.4 , -5 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 207.2 , 1.2 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 212.8 , -4.6 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 236.1 , 1.6 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 245.3 , -4.1 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 272.4 , 2.2 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 285.2 , -3.5 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 315.8 , 2.8 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 332.3 , -2.8 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 366.5 , 3.5 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 386.6 , -2 , 0 );
setMoveKey( spep_5  + 98, 1, 424.5 , 4.4 , 0 );


--setScaleKey( spep_5 -3 + 34, 1, 0.27+ d, 0.27+ d );
--setScaleKey( spep_5 -3 + 36, 1, 0.28+ d, 0.28+ d );
--setScaleKey( spep_5 -3 + 38, 1, 0.29+ d, 0.29 + d);
--setScaleKey( spep_5 -3 + 40, 1, 0.3+ d, 0.3 + d);
--setScaleKey( spep_5 -3 + 42, 1, 0.31+ d, 0.31 + d);
--setScaleKey( spep_5 -3 + 44, 1, 0.32+ d, 0.32 + d);
--setScaleKey( spep_5 -3 + 46, 1, 0.33+ d, 0.33 + d);
--setScaleKey( spep_5 -3 + 48, 1, 0.35+ d, 0.35 + d);
--setScaleKey( spep_5 -3 + 50, 1, 0.36+ d, 0.36 + d);
--setScaleKey( spep_5 -3 + 52, 1, 0.37+ d, 0.37 + d);
--setScaleKey( spep_5 -3 + 54, 1, 0.38+ d, 0.38 + d);
--setScaleKey( spep_5 -3 + 56, 1, 0.4+ d, 0.4 + d);
setScaleKey( spep_5 -3 + 59, 1, 0.41+ d, 0.41 + d);
setScaleKey( spep_5 -3 + 60, 1, 0.35+ d, 0.35 + d);
setScaleKey( spep_5 -3 + 62, 1, 0.35+ d, 0.35+ d );
setScaleKey( spep_5 -3 + 64, 1, 0.33+ d, 0.33 + d);
setScaleKey( spep_5 -3 + 68, 1, 0.33+ d, 0.33 + d);
setScaleKey( spep_5 -3 + 70, 1, 0.32+ d, 0.32 + d);
setScaleKey( spep_5 -3 + 72, 1, 0.32+ d, 0.32 + d);
setScaleKey( spep_5 -3 + 74, 1, 0.31+ d, 0.31 + d);
setScaleKey( spep_5 -3 + 76, 1, 0.3+ d, 0.3 + d);
setScaleKey( spep_5 -3 + 78, 1, 0.29+ d, 0.29 + d);
setScaleKey( spep_5 -3 + 80, 1, 0.28+ d, 0.28 + d);
setScaleKey( spep_5 -3 + 82, 1, 0.26+ d, 0.26 + d);
setScaleKey( spep_5 -3 + 84, 1, 0.25+ d, 0.25 + d);
setScaleKey( spep_5 -3 + 86, 1, 0.23+ d, 0.23 + d);
setScaleKey( spep_5 -3 + 88, 1, 0.21+ d, 0.21 + d);
setScaleKey( spep_5 -3 + 90, 1, 0.19+ d, 0.19 + d);
setScaleKey( spep_5 -3 + 92, 1, 0.17+ d, 0.17 + d);
setScaleKey( spep_5 -3 + 94, 1, 0.14+ d, 0.14 + d);
setScaleKey( spep_5 -3 + 96, 1, 0.12+ d, 0.12 + d);
setScaleKey( spep_5  + 98, 1, 0.09+ d, 0.09 + d);


setRotateKey( spep_5 -3 + 59, 1, 0 );
setRotateKey( spep_5 -3 + 60, 1, 23.7 );
setRotateKey( spep_5 -3 + 62, 1, -16 );
setRotateKey( spep_5 -3 + 64, 1, 0 );
setRotateKey( spep_5  + 98, 1, 0 );





-- ** 白フェード** --
entryFade(spep_5+92,4,14,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_6 = spep_5 + 104;

------------------------------------------------------
-- 敵吹っ飛びシーン(100F)
------------------------------------------------------


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
playSe( spep_6 + 0, SE_10 );  --爆発音
playSe( spep_6 + 14, SE_11 );  --割れる音

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 2, 24, 0, 0, 0, 200 );  --薄い黒　背景


-- ** ダメージ表示 ** --
dealDamage( spep_6 + 10 );
entryFade( spep_6 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_6 + 100 );

else 
------------------------------------------------------------------------------------------------------------
-- 敵
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- アイドリング!!!
------------------------------------------------------
--はじめの準備
spep_0 = 0;

-- ** エフェクト等 ** --
idling = entryEffectLife( spep_0 + 0, SP_01x,  40 ,0x100, -1, 0, 0, 0 );  
setEffMoveKey( spep_0 + 0, idling, 0, 0 , 0 );
setEffMoveKey( spep_0 + 40, idling, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, idling, -1.0, 1.0 );
setEffScaleKey( spep_0 + 40, idling, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, idling, 0 );
setEffRotateKey( spep_0 + 40, idling, 0 );
setEffAlphaKey( spep_0 + 0, idling, 255 );
setEffAlphaKey( spep_0 + 38, idling, 255 );
setEffAlphaKey( spep_0 + 39, idling, 255 );
setEffAlphaKey( spep_0 + 40, idling,0 );


--次の準備
spep_1 = spep_0 + 40; 

------------------------------------------------------
-- ため
------------------------------------------------------

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_1 + 0, SP_02x,  38 ,0x80, -1, 0, 0, 0 );  
setEffMoveKey( spep_1 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_1 + 38, tame, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_1 + 38, tame, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 38, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 38, tame, 255 );

--文字エントリー
ctzuzuzun = entryEffectLife( spep_1 + 0,  10013, 36, 0x100, -1, 0, 22, 191.9 );--ズズズンッ

setEffShake(spep_1 + 0 , ctzuzuzun,36,15);

setEffMoveKey( spep_1 + 0, ctzuzuzun, 22, 191.9 , 0 );
setEffMoveKey( spep_1 + 2, ctzuzuzun, 29.8, 246.3 , 0 );
setEffMoveKey( spep_1 + 4, ctzuzuzun, 49.2, 309.6 , 0 );
setEffMoveKey( spep_1 + 6, ctzuzuzun, 46.5, 333.1 , 0 );
setEffMoveKey( spep_1 + 8, ctzuzuzun, 51.6, 327.8 , 0 );
setEffMoveKey( spep_1 + 10, ctzuzuzun, 37.1, 303.5 , 0 );
setEffMoveKey( spep_1 + 12, ctzuzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_1 + 14, ctzuzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_1 + 16, ctzuzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_1 + 18, ctzuzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_1 + 20, ctzuzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_1 + 22, ctzuzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_1 + 24, ctzuzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_1 + 26, ctzuzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_1 + 28, ctzuzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_1 + 30, ctzuzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_1 + 32, ctzuzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_1 + 34, ctzuzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_1 + 36, ctzuzuzun, 46, 309.9 , 0 );

a = 1.5 ;

setEffScaleKey( spep_1 + 0, ctzuzuzun, 0.38+a, 0.38+a );
setEffScaleKey( spep_1 + 2, ctzuzuzun, 0.62+a, 0.62+a );
setEffScaleKey( spep_1 + 4, ctzuzuzun, 0.85+a, 0.85+a );
setEffScaleKey( spep_1 + 6, ctzuzuzun, 1+a, 1+a );
setEffScaleKey( spep_1 + 36, ctzuzuzun, 1+a, 1+a );

setEffRotateKey( spep_1 + 0, ctzuzuzun, 0 );
setEffRotateKey( spep_1 + 36, ctzuzuzun, 0 );

setEffAlphaKey( spep_1 + 0, ctzuzuzun, 255 );
setEffAlphaKey( spep_1 + 36, ctzuzuzun, 255 );

-- ** 白フェード** --
entryFade(spep_1+30,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_1, SE_01);

--次の準備
spep_2 = spep_1 + 38; 

------------------------------------------------------
-- アイドリング!!!
------------------------------------------------------
-- ** エフェクト等 ** --
make = entryEffectLife( spep_2 + 0, SP_03x,  100 ,0x80, -1, 0, 0, 0 );  
setEffMoveKey( spep_2 + 0, make, 0, 0 , 0 );
setEffMoveKey( spep_2 + 100, make, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, make, -1.0, 1.0 );
setEffScaleKey( spep_2 + 100, make, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, make, 0 );
setEffRotateKey( spep_2 + 100, make, 0 );
setEffAlphaKey( spep_2 + 0, make, 255 );
setEffAlphaKey( spep_2 + 100, make, 255 );



-- ** 顔カットイン ** --
--speff = entryEffect( spep_2 +8, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_2 +8, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_2  + 20,  190006, 72, 0x100, -1, 0, 100.9, 512.8 ); --ゴゴゴ
setEffShake( spep_2  + 20, ctgogo, 72, 10 );
 
setEffMoveKey( spep_2  + 20, ctgogo, 100.9, 512.8 , 0 );
setEffMoveKey( spep_2  + 92, ctgogo, 100.9, 515.5 , 0 );

setEffScaleKey( spep_2  + 20, ctgogo, -0.84, 0.84 );
setEffScaleKey( spep_2  + 84, ctgogo, -0.84, 0.84 );
setEffScaleKey( spep_2  + 86, ctgogo, -1.2, 1.2 );
setEffScaleKey( spep_2  + 88, ctgogo, -1.3, 1.3 );
setEffScaleKey( spep_2  + 90, ctgogo, -1.66, 1.66 );
setEffScaleKey( spep_2  + 92, ctgogo, -2.02, 2.02 );
 
setEffRotateKey( spep_2  + 20, ctgogo, 0 );
setEffRotateKey( spep_2  + 92, ctgogo, 0 );

setEffAlphaKey( spep_2  + 20, ctgogo, 0 );
setEffAlphaKey( spep_2  + 21, ctgogo, 255 );
setEffAlphaKey( spep_2  + 22, ctgogo, 255 );
setEffAlphaKey( spep_2  + 92, ctgogo, 255 );


-- ** 白フェード** --
entryFade(spep_2+90,4,12,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_2 + 20, SE_04 );  --ゴゴゴ

--次の準備
spep_3=spep_2+100;


--------------------------------------
--カードカットイン
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え



-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

-- ** エフェクト等 ** --
entryFade(spep_3+82,4,8,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_4 = spep_3 + 94;
------------------------------------------------------
-- 投げる
------------------------------------------------------
-- ** エフェクト等 ** --
throw = entryEffectLife( spep_4 + 0, SP_04x,  132 ,0x100, -1, 0, 0, 0 );  
setEffMoveKey( spep_4 + 0, throw, 0, 0 , 0 );
setEffMoveKey( spep_4 + 132, throw, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, throw, 1.0, 1.0 );
setEffScaleKey( spep_4 + 132, throw, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, throw, 0 );
setEffRotateKey( spep_4 + 132, throw, 0 );
setEffAlphaKey( spep_4 + 0, throw, 255 );
setEffAlphaKey( spep_4 + 132, throw, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_4 + 0,  906, 68, 0x100, -1, 0, 285.5, 0 );

b = 285.5;

setEffMoveKey( spep_4 + 0, shuchusen1, 285.5 - b, 0 , 0 );
setEffMoveKey( spep_4 + 58, shuchusen1, 285.5- b, 0 , 0 );
setEffMoveKey( spep_4 + 60, shuchusen1, 300.8- b, 0 , 0 );
setEffMoveKey( spep_4 + 62, shuchusen1, 346.8- b, 0 , 0 );
setEffMoveKey( spep_4 + 64, shuchusen1, 423.4- b, 0 , 0 );
setEffMoveKey( spep_4 + 66, shuchusen1, 530.6- b, 0 , 0 );
setEffMoveKey( spep_4 + 68, shuchusen1, 668.5- b, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen1, 1.5, 1.5 );
setEffScaleKey( spep_4 + 58, shuchusen1, 1.5, 1.5 );
setEffScaleKey( spep_4 + 60, shuchusen1, 1.54, 1.54 );
setEffScaleKey( spep_4 + 62, shuchusen1, 1.66, 1.66 );
setEffScaleKey( spep_4 + 64, shuchusen1, 1.86, 1.86 );
setEffScaleKey( spep_4 + 66, shuchusen1, 2.14, 2.14 );
setEffScaleKey( spep_4 + 68, shuchusen1, 2.5, 2.5 );

setEffRotateKey( spep_4 + 0, shuchusen1, 180 );
setEffRotateKey( spep_4 + 68, shuchusen1, 180 );

setEffAlphaKey( spep_4 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_4 + 68, shuchusen1, 255 );

--流線
ryusen1 = entryEffectLife( spep_4 + 0,  914, 128, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_4 + 128, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, ryusen1, 2, 1 );
setEffScaleKey( spep_4 + 128, ryusen1, 2, 1 );

setEffRotateKey( spep_4 + 0, ryusen1, 0 );
setEffRotateKey( spep_4 + 128, ryusen1, 0 );

setEffAlphaKey( spep_4 + 0, ryusen1, 26 );
setEffAlphaKey( spep_4 + 58, ryusen1, 26 );
setEffAlphaKey( spep_4 + 60, ryusen1, 72 );
setEffAlphaKey( spep_4 + 62, ryusen1, 118 );
setEffAlphaKey( spep_4 + 64, ryusen1, 163 );
setEffAlphaKey( spep_4 + 66, ryusen1, 209 );
setEffAlphaKey( spep_4 + 68, ryusen1, 255 );
setEffAlphaKey( spep_4 + 128, ryusen1, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_4 + 24,  10012, 34, 0x100, -1, 0, 76, 259.9 );--ズオッ

setEffShake(spep_4 + 24 , ctzuo,34,10);

setEffMoveKey( spep_4 + 24, ctzuo, 76, 259.9 , 0 );
setEffMoveKey( spep_4 + 26, ctzuo, 105, 300.9 , 0 );
setEffMoveKey( spep_4 + 28, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_4 + 30, ctzuo, 136.2, 342.3 , 0 );
setEffMoveKey( spep_4 + 32, ctzuo, 121.3, 359.9 , 0 );
setEffMoveKey( spep_4 + 34, ctzuo, 144.8, 339.1 , 0 );
setEffMoveKey( spep_4 + 36, ctzuo, 126.6, 359.9 , 0 );
setEffMoveKey( spep_4 + 38, ctzuo, 153.3, 335.9 , 0 );
setEffMoveKey( spep_4 + 40, ctzuo, 132, 359.9 , 0 );
setEffMoveKey( spep_4 + 42, ctzuo, 161.8, 332.7 , 0 );
setEffMoveKey( spep_4 + 44, ctzuo, 137.3, 359.9 , 0 );
setEffMoveKey( spep_4 + 46, ctzuo, 170.4, 329.5 , 0 );
setEffMoveKey( spep_4 + 48, ctzuo, 142.6, 359.9 , 0 );
setEffMoveKey( spep_4 + 50, ctzuo, 178.9, 326.3 , 0 );
setEffMoveKey( spep_4 + 52, ctzuo, 148, 359.9 , 0 );
setEffMoveKey( spep_4 + 54, ctzuo, 187.4, 323.1 , 0 );
setEffMoveKey( spep_4 + 56, ctzuo, 153.3, 359.9 , 0 );
setEffMoveKey( spep_4 + 58, ctzuo, 156, 359.9 , 0 );

c =2;

setEffScaleKey( spep_4 + 24, ctzuo, 0.1 + c, 0.1 + c );
setEffScaleKey( spep_4 + 26, ctzuo, 0.45 + c, 0.45 + c );
setEffScaleKey( spep_4 + 28, ctzuo, 0.8 + c, 0.8 + c );
setEffScaleKey( spep_4 + 30, ctzuo, 0.88 + c, 0.88 + c );
setEffScaleKey( spep_4 + 32, ctzuo, 0.96 + c, 0.96 + c );
setEffScaleKey( spep_4 + 34, ctzuo, 1.04 + c, 1.04 + c );
setEffScaleKey( spep_4 + 36, ctzuo, 1.12 + c, 1.12 + c );
setEffScaleKey( spep_4 + 38, ctzuo, 1.2 + c, 1.2 + c );
setEffScaleKey( spep_4 + 40, ctzuo, 1.28 + c, 1.28 + c );
setEffScaleKey( spep_4 + 42, ctzuo, 1.36 + c, 1.36 + c );
setEffScaleKey( spep_4 + 44, ctzuo, 1.44 + c, 1.44  + c);
setEffScaleKey( spep_4 + 46, ctzuo, 1.52 + c, 1.52  + c);
setEffScaleKey( spep_4 + 48, ctzuo, 1.6 + c, 1.6  + c);
setEffScaleKey( spep_4 + 50, ctzuo, 1.68 + c, 1.68  + c);
setEffScaleKey( spep_4 + 52, ctzuo, 1.76 + c, 1.76  + c);
setEffScaleKey( spep_4 + 54, ctzuo, 1.84 + c, 1.84  + c);
setEffScaleKey( spep_4 + 56, ctzuo, 1.92 + c, 1.92  + c);
setEffScaleKey( spep_4 + 58, ctzuo, 2 + c, 2 + c );

setEffRotateKey( spep_4 + 24, ctzuo, 30 );
setEffRotateKey( spep_4 + 58, ctzuo, 30 );

setEffAlphaKey( spep_4 + 24, ctzuo, 255 );
setEffAlphaKey( spep_4 + 26, ctzuo, 240 );
setEffAlphaKey( spep_4 + 28, ctzuo, 225 );
setEffAlphaKey( spep_4 + 30, ctzuo, 210 );
setEffAlphaKey( spep_4 + 32, ctzuo, 195 );
setEffAlphaKey( spep_4 + 34, ctzuo, 180 );
setEffAlphaKey( spep_4 + 36, ctzuo, 165 );
setEffAlphaKey( spep_4 + 38, ctzuo, 150 );
setEffAlphaKey( spep_4 + 40, ctzuo, 135 );
setEffAlphaKey( spep_4 + 42, ctzuo, 120 );
setEffAlphaKey( spep_4 + 44, ctzuo, 105 );
setEffAlphaKey( spep_4 + 46, ctzuo, 90 );
setEffAlphaKey( spep_4 + 48, ctzuo, 75 );
setEffAlphaKey( spep_4 + 50, ctzuo, 60 );
setEffAlphaKey( spep_4 + 52, ctzuo, 45 );
setEffAlphaKey( spep_4 + 54, ctzuo, 30 );
setEffAlphaKey( spep_4 + 56, ctzuo, 15 );
setEffAlphaKey( spep_4 + 58, ctzuo, 0 );

--SE
--playSe( spep_4 , 1036 );
playSe( spep_4 +28 , 1021 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 58, 0, 0, 0, 0, 180 );  --薄い黒　背景
entryFadeBg( spep_4 + 0, 0, 132, 0, 0, 0, 0, 165 );  --薄い黒　背景

-- ** 白フェード** --
entryFade(spep_4+124,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_5 = spep_4 + 132;
------------------------------------------------------
-- 投げる
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffectLife( spep_5 + 0, SP_05x,  100 ,0x100, -1, 0, 0, 0 );  
setEffMoveKey( spep_5 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, hit, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, hit, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit, 0 );
setEffRotateKey( spep_5 + 100, hit, 0 );
setEffAlphaKey( spep_5 + 0, hit, 255 );
setEffAlphaKey( spep_5 + 100, hit, 255 );

--文字エントリー
ctzudodo = entryEffectLife( spep_5 + 0,  10014, 98, 0x100, -1, 0, 58.1, 364 );--ズドドドッ

setEffShake(spep_5 + 0 , ctzudodo,98,15);

setEffMoveKey( spep_5 + 0, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 2, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 4, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 6, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 8, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 10, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 12, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 14, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 16, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 18, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 20, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 22, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 24, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 26, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 28, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 30, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 32, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 34, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 36, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 38, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 40, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 42, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 44, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 46, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 48, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 50, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 52, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 54, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 56, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 58, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 60, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 62, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 64, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 66, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 68, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 70, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 72, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 74, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 76, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 78, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 80, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 82, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 84, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 86, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 88, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 90, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 92, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 94, ctzudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 96, ctzudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 98, ctzudodo, 34.1, 348 , 0 );

setEffScaleKey( spep_5 + 0, ctzudodo, 2.87, 3.72 );
setEffScaleKey( spep_5 + 98, ctzudodo, 2.87, 3.72 );

setEffRotateKey( spep_5 + 0, ctzudodo, 0 );
setEffRotateKey( spep_5 + 98, ctzudodo, 0 );

setEffAlphaKey( spep_5 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_5 + 98, ctzudodo, 255 );

--流線
ryusen2 = entryEffectLife( spep_5 + 0,  921, 98, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 98, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, ryusen2, 1, 1 );
setEffScaleKey( spep_5 + 98, ryusen2, 1, 1 );

setEffRotateKey( spep_5 + 0, ryusen2, 0 );
setEffRotateKey( spep_5 + 98, ryusen2, 0 );

setEffAlphaKey( spep_5 + 0, ryusen2, 255 );
setEffAlphaKey( spep_5 + 98, ryusen2, 255 );


--敵の動き
setDisp( spep_5  + 0, 1, 1 );
setDisp( spep_5  + 98, 1, 0 );
changeAnime( spep_5  + 0, 1, 104 );
changeAnime( spep_5 -3 + 60, 1, 108 );

setMoveKey( spep_5  + 0, 1, 241.7, -10 , 0 );
--setMoveKey( spep_5 -3 + 2, 1, 250.8, -0.2 , 0 );
setMoveKey( spep_5 -3 + 4, 1, 241.7, -6.3 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 248.6, -0.5 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 239.4, -6.6 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 246.2, -0.8 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 236.9, -7 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 243.5, -1.2 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 234.1, -7.4 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 240.6, -1.6 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 231.1, -7.8 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 237.4, -2 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 227.7, -8.3 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 234, -2.5 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 224.2, -8.8 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 230.3, -3 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 220.3, -9.3 , 0 );

d = 0.7;

setScaleKey( spep_5  + 0, 1, 0.15+ 0.3 , 0.15+ 0.3 );
--setScaleKey( spep_5 -3 + 2, 1, 0.15+ 0.3, 0.15+ 0.3 );
--setScaleKey( spep_5 -3 + 4, 1, 0.16+ 0.3, 0.16+ 0.3 );
---setScaleKey( spep_5 -3 + 6, 1, 0.16+ 0.3, 0.16+ 0.3 );
--setScaleKey( spep_5 -3 + 8, 1, 0.17+ 0.3, 0.17+ 0.3 );
--setScaleKey( spep_5 -3 + 10, 1, 0.18+ 0.3, 0.18+ 0.3 );
--setScaleKey( spep_5 -3 + 12, 1, 0.18+ 0.3, 0.18 + 0.3);
--setScaleKey( spep_5 -3 + 14, 1, 0.19+ 0.3, 0.19+ 0.3 );
--setScaleKey( spep_5 -3 + 16, 1, 0.2+ 0.3, 0.2+ 0.3 );
--setScaleKey( spep_5 -3 + 18, 1, 0.2+ 0.3, 0.2+ 0.3 );
--setScaleKey( spep_5 -3 + 20, 1, 0.21+ 0.3, 0.21+ 0.3 );
--setScaleKey( spep_5 -3 + 22, 1, 0.22+ 0.3, 0.22+ 0.3 );
---setScaleKey( spep_5 -3 + 24, 1, 0.23+ 0.3, 0.23+ 0.3 );
--setScaleKey( spep_5 -3 + 26, 1, 0.23+ 0.3, 0.23+ 0.3 );
--setScaleKey( spep_5 -3 + 28, 1, 0.24+ 0.3, 0.24+ 0.3 );
--setScaleKey( spep_5 -3 + 30, 1, 0.25+ 0.3, 0.25+ 0.3 );
--setScaleKey( spep_5 -3 + 32, 1, 0.26+ 0.4, 0.26+ 0.4 );

setRotateKey( spep_5  + 0, 1, 0 );
setRotateKey( spep_5  + 30, 1, 0 );

--SE
SE0=playSe( spep_5 , 1022 );
entryFadeBg( spep_5 + 0, 0, 100, 0, 0, 0, 0, 165 );  --薄い黒　背景

---------------------------------------------------------------------------
-- 回避
---------------------------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_5 + 30; --エンドフェイズのフレーム数を置き換える

    stopSe( SP_dodge - 12, SE0, 0 );

    playSe( SP_dodge - 12, 1042 );
    
    pauseAll( SP_dodge, 67 );
    
    -- ** 敵キャラクター ** --
    
    setMoveKey( SP_dodge + 8, 1, 220.3, -9.3 , 0 );
    setMoveKey( SP_dodge + 9, 1, 220.3, -9.3 , 0 );
    setMoveKey( SP_dodge + 10, 1, 220.3, -9.3 , 0 );
    
    setScaleKey( SP_dodge + 8, 1, 0.26+ 0.48, 0.26+ 0.48  );
    setScaleKey( SP_dodge + 9, 1, 0.26+ 0.48, 0.26+ 0.48  );
    setScaleKey( SP_dodge + 10, 1, 0.26+ 0.48, 0.26+ 0.48  );

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
e = 50;

setMoveKey( spep_5 -3 + 34, 1, 226.3, -3.6 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 216.2, -9.9 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 222.1, -4.2 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 211.9, -10.5 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 217.6, -4.8 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 207.3, -11.2 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 212.9, -5.5 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 202.4, -11.8 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 207.9, -6.2 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 197.3, -12.6 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 202.6, -6.9 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 191.9, -13.3 , 0 );
setMoveKey( spep_5 -3 + 59, 1, 197.1, -7.7 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 136.6 + e, 11.6 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 165.6 + e, 0.8 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 154.9 + e, -5.5 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 163.8 + e, 0.5 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 158.5 + e, -5.5 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 171 , 0.6 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 169.3 , -5.3 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 185.5 , 0.8 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 187.4 , -5 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 207.2 , 1.2 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 212.8 , -4.6 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 236.1 , 1.6 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 245.3 , -4.1 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 272.4 , 2.2 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 285.2 , -3.5 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 315.8 , 2.8 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 332.3 , -2.8 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 366.5 , 3.5 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 386.6 , -2 , 0 );
setMoveKey( spep_5  + 98, 1, 424.5 , 4.4 , 0 );


--setScaleKey( spep_5 -3 + 34, 1, 0.27+ d, 0.27+ d );
--setScaleKey( spep_5 -3 + 36, 1, 0.28+ d, 0.28+ d );
--setScaleKey( spep_5 -3 + 38, 1, 0.29+ d, 0.29 + d);
--setScaleKey( spep_5 -3 + 40, 1, 0.3+ d, 0.3 + d);
--setScaleKey( spep_5 -3 + 42, 1, 0.31+ d, 0.31 + d);
--setScaleKey( spep_5 -3 + 44, 1, 0.32+ d, 0.32 + d);
--setScaleKey( spep_5 -3 + 46, 1, 0.33+ d, 0.33 + d);
--setScaleKey( spep_5 -3 + 48, 1, 0.35+ d, 0.35 + d);
--setScaleKey( spep_5 -3 + 50, 1, 0.36+ d, 0.36 + d);
--setScaleKey( spep_5 -3 + 52, 1, 0.37+ d, 0.37 + d);
--setScaleKey( spep_5 -3 + 54, 1, 0.38+ d, 0.38 + d);
--setScaleKey( spep_5 -3 + 56, 1, 0.4+ d, 0.4 + d);
setScaleKey( spep_5 -3 + 59, 1, 0.41+ d, 0.41 + d);
setScaleKey( spep_5 -3 + 60, 1, 0.35+ d, 0.35 + d);
setScaleKey( spep_5 -3 + 62, 1, 0.35+ d, 0.35+ d );
setScaleKey( spep_5 -3 + 64, 1, 0.33+ d, 0.33 + d);
setScaleKey( spep_5 -3 + 68, 1, 0.33+ d, 0.33 + d);
setScaleKey( spep_5 -3 + 70, 1, 0.32+ d, 0.32 + d);
setScaleKey( spep_5 -3 + 72, 1, 0.32+ d, 0.32 + d);
setScaleKey( spep_5 -3 + 74, 1, 0.31+ d, 0.31 + d);
setScaleKey( spep_5 -3 + 76, 1, 0.3+ d, 0.3 + d);
setScaleKey( spep_5 -3 + 78, 1, 0.29+ d, 0.29 + d);
setScaleKey( spep_5 -3 + 80, 1, 0.28+ d, 0.28 + d);
setScaleKey( spep_5 -3 + 82, 1, 0.26+ d, 0.26 + d);
setScaleKey( spep_5 -3 + 84, 1, 0.25+ d, 0.25 + d);
setScaleKey( spep_5 -3 + 86, 1, 0.23+ d, 0.23 + d);
setScaleKey( spep_5 -3 + 88, 1, 0.21+ d, 0.21 + d);
setScaleKey( spep_5 -3 + 90, 1, 0.19+ d, 0.19 + d);
setScaleKey( spep_5 -3 + 92, 1, 0.17+ d, 0.17 + d);
setScaleKey( spep_5 -3 + 94, 1, 0.14+ d, 0.14 + d);
setScaleKey( spep_5 -3 + 96, 1, 0.12+ d, 0.12 + d);
setScaleKey( spep_5  + 98, 1, 0.09+ d, 0.09 + d);


setRotateKey( spep_5 -3 + 59, 1, 0 );
setRotateKey( spep_5 -3 + 60, 1, 23.7 );
setRotateKey( spep_5 -3 + 62, 1, -16 );
setRotateKey( spep_5 -3 + 64, 1, 0 );
setRotateKey( spep_5  + 98, 1, 0 );





-- ** 白フェード** --
entryFade(spep_5+92,4,14,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_6 = spep_5 + 104;

------------------------------------------------------
-- 敵吹っ飛びシーン(100F)
------------------------------------------------------


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
playSe( spep_6 + 0, SE_10 );  --爆発音
playSe( spep_6 + 14, SE_11 );  --割れる音

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 2, 24, 0, 0, 0, 200 );  --薄い黒　背景


-- ** ダメージ表示 ** --
dealDamage( spep_6 + 10 );
entryFade( spep_6 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_6 + 100 );

end