--1017780:ピッコロ大魔王(老)_魔光線
--sp_effect_a1_00225

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

--エフェクト(味方)
SP_01=	155182	;--	導入→気だめ
SP_02=	155183	;--	敵に忍び寄るオ－ラ
SP_03=	155185	;--	敵に忍び寄るオ－ラ
SP_04=	155187	;--	気だめ　石が浮き上がる
SP_05=	155188	;--	魔光線発射
SP_06=	155190	;--	着弾→爆発　敵吹っ飛ぶ
SP_07=	155191	;--	着弾→爆発　敵吹っ飛ぶ
SP_08=	155192	;--	2発目発射
SP_09=	155194	;--	敵が気弾に包まれ昇華
SP_10=	155195	;--	敵が気弾に包まれ昇華
SP_11=	155196	;--	空見上げたまま魔光線収束

--エフェクト(敵)
SP_01x=	155182	;--	導入→気だめ	
SP_02x=	155184	;--	敵に忍び寄るオ－ラ	(敵)
SP_03x=	155186	;--	敵に忍び寄るオ－ラ	(敵)
SP_04x=	155187	;--	気だめ　石が浮き上がる	
SP_05x=	155189	;--	魔光線発射	
SP_06x=	155190	;--	着弾→爆発　敵吹っ飛ぶ	(敵)
SP_07x=	155191	;--	着弾→爆発　敵吹っ飛ぶ	
SP_08x=	155193	;--	2発目発射	(敵)
SP_09x=	155194	;--	敵が気弾に包まれ昇華	
SP_10x=	155195	;--	敵が気弾に包まれ昇華	
SP_11x=	155197	;--	空見上げたまま魔光線収束	(敵)

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);


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

setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);

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
-- 気溜め〜突進
------------------------------------------------------
-- ** はじめの準備 ** --
spep_0= 0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 130, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 130, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 130, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 130, tame, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0,  906, 128-3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 -3  +76,shuchusen1, 52, 20 );
setEffMoveKey( spep_0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 128, shuchusen1, 0, 0 , 0 );


setEffScaleKey( spep_0, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_0-3 + 128, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_0, shuchusen1, 0 );
setEffRotateKey( spep_0-3 + 128, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_0-3 + 74, shuchusen1, 0 );
setEffAlphaKey( spep_0-3 + 75, shuchusen1, 0 );
setEffAlphaKey( spep_0-3 + 76, shuchusen1, 10 );
setEffAlphaKey( spep_0-3 + 78, shuchusen1, 45 );
setEffAlphaKey( spep_0-3 + 80, shuchusen1, 80 );
setEffAlphaKey( spep_0-3 + 82, shuchusen1, 115 );
setEffAlphaKey( spep_0-3 + 84, shuchusen1, 150 );
setEffAlphaKey( spep_0-3 + 86, shuchusen1, 185 );
setEffAlphaKey( spep_0-3 + 88, shuchusen1, 220 );
setEffAlphaKey( spep_0-3 + 90, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 128, shuchusen1, 255 );

--顔カットイン
--speff = entryEffect( spep_0 + 4  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 -4  +16, 190006, 72, 0x100, -1, 0, 0, 460);-- ゴゴゴゴ
setEffShake( spep_0 -4  +16,ctgogo, 72, 10 );
setEffMoveKey(  spep_0 -4  +16,  ctgogo,  0,  460);
setEffMoveKey(  spep_0 -4  +88,  ctgogo,  0,  460);

setEffAlphaKey( spep_0 -4  +16, ctgogo, 0 );
setEffAlphaKey( spep_0 -4  + 17, ctgogo, 255 );
setEffAlphaKey( spep_0 -4  + 18, ctgogo, 255 );
setEffAlphaKey( spep_0 -4  + 82, ctgogo, 255 );
setEffAlphaKey( spep_0 -4  + 84, ctgogo, 191 );
setEffAlphaKey( spep_0 -4  + 86, ctgogo, 112 );
setEffAlphaKey( spep_0 -4  + 88, ctgogo, 64 );

setEffRotateKey(  spep_0 -4  +16,  ctgogo,  0);
setEffRotateKey(  spep_0 -4  +88,  ctgogo,  0);

setEffScaleKey(  spep_0 -4  +16,  ctgogo,  0.83,  0.83);
setEffScaleKey(  spep_0 -4  +78,  ctgogo,  0.83,  0.83);
setEffScaleKey(  spep_0 -4  +88,  ctgogo, 1.47, 1.47 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 132, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 音 ** --
playSe( spep_0 + 12, 1018 );
se_1044 = playSe( spep_0 + 0, 1044 );
setSeVolume( spep_0 + 0, 1044, 56 );
playSe( spep_0 + 38, 1131 );
setSeVolume( spep_0 + 38, 1131, 71 );
se_0017 = playSe( spep_0 + 38, 17 );
setSeVolume( spep_0 + 38, 17, 79 );
playSe( spep_0 + 40, 1038 );
setSeVolume( spep_0 + 40, 1038, 56 );
se_1154 = playSe( spep_0 + 50, 1154 );
setSeVolume( spep_0 + 50, 1154, 71 );
se_1227 = playSe( spep_0 + 50, 1227 );
setSeVolume( spep_0 + 50, 1227, 0 );
setSeVolume( spep_0 + 106, 1227, 0 );
setSeVolume( spep_0 + 107, 1227, 1.84 );
setSeVolume( spep_0 + 108, 1227, 3.67 );
setSeVolume( spep_0 + 109, 1227, 5.51 );
setSeVolume( spep_0 + 110, 1227, 7.35 );
setSeVolume( spep_0 + 111, 1227, 9.19 );
setSeVolume( spep_0 + 112, 1227, 11.02 );
setSeVolume( spep_0 + 113, 1227, 12.86 );
setSeVolume( spep_0 + 114, 1227, 14.7 );
setSeVolume( spep_0 + 115, 1227, 16.53 );
setSeVolume( spep_0 + 116, 1227, 18.37 );
setSeVolume( spep_0 + 117, 1227, 20.21 );
setSeVolume( spep_0 + 118, 1227, 22.05 );
setSeVolume( spep_0 + 119, 1227, 23.88 );
setSeVolume( spep_0 + 120, 1227, 25.72 );
setSeVolume( spep_0 + 121, 1227, 27.56 );
setSeVolume( spep_0 + 122, 1227, 29.4 );
setSeVolume( spep_0 + 123, 1227, 31.23 );
setSeVolume( spep_0 + 124, 1227, 33.07 );
setSeVolume( spep_0 + 125, 1227, 34.91 );
setSeVolume( spep_0 + 126, 1227, 36.74 );
setSeVolume( spep_0 + 127, 1227, 38.58 );
setSeVolume( spep_0 + 128, 1227, 40.42 );
setSeVolume( spep_0 + 129, 1227, 42.26 );
setSeVolume( spep_0 + 130, 1227, 44.09 );
setSeVolume( spep_0 + 131, 1227, 45.93 );
setSeVolume( spep_0 + 132, 1227, 47.77 );
setSeVolume( spep_0 + 133, 1227, 49.6 );
setSeVolume( spep_0 + 134, 1227, 51.44 );
setSeVolume( spep_0 + 135, 1227, 53.28 );
setSeVolume( spep_0 + 136, 1227, 55.12 );
setSeVolume( spep_0 + 137, 1227, 56.95 );
setSeVolume( spep_0 + 138, 1227, 58.79 );
setSeVolume( spep_0 + 139, 1227, 60.63 );
setSeVolume( spep_0 + 140, 1227, 62.47 );
setSeVolume( spep_0 + 141, 1227, 64.3 );
setSeVolume( spep_0 + 142, 1227, 66.14 );
setSeVolume( spep_0 + 143, 1227, 67.98 );
setSeVolume( spep_0 + 144, 1227, 69.81 );
setSeVolume( spep_0 + 145, 1227, 71.65 );
setSeVolume( spep_0 + 146, 1227, 73.49 );
setSeVolume( spep_0 + 147, 1227, 75.33 );
setSeVolume( spep_0 + 148, 1227, 77.16 );
setSeVolume( spep_0 + 149, 1227, 79 );
setSeVolume( spep_0 + 150, 1227, 80.84 );
setSeVolume( spep_0 + 151, 1227, 82.67 );
setSeVolume( spep_0 + 152, 1227, 84.51 );
setSeVolume( spep_0 + 153, 1227, 86.35 );
setSeVolume( spep_0 + 154, 1227, 88.19 );
setSeVolume( spep_0 + 155, 1227, 90.02 );
setSeVolume( spep_0 + 156, 1227, 91.86 );
setSeVolume( spep_0 + 157, 1227, 93.7 );
setSeVolume( spep_0 + 158, 1227, 95.53 );
setSeVolume( spep_0 + 159, 1227, 97.37 );
setSeVolume( spep_0 + 160, 1227, 99.21 );
setSeVolume( spep_0 + 161, 1227, 101.05 );
setSeVolume( spep_0 + 162, 1227, 102.88 );
setSeVolume( spep_0 + 163, 1227, 104.72 );
setSeVolume( spep_0 + 164, 1227, 106.56 );
setSeVolume( spep_0 + 165, 1227, 108.4 );
setSeVolume( spep_0 + 166, 1227, 110.23 );
setSeVolume( spep_0 + 167, 1227, 112.07 );
setSeVolume( spep_0 + 168, 1227, 113.91 );
setSeVolume( spep_0 + 169, 1227, 115.74 );
setSeVolume( spep_0 + 170, 1227, 117.58 );
setSeVolume( spep_0 + 171, 1227, 119.42 );
setSeVolume( spep_0 + 172, 1227, 121.26 );
setSeVolume( spep_0 + 173, 1227, 123.09 );
setSeVolume( spep_0 + 174, 1227, 124.93 );
setSeVolume( spep_0 + 175, 1227, 126.77 );
setSeVolume( spep_0 + 176, 1227, 128.6 );
setSeVolume( spep_0 + 177, 1227, 130.44 );
setSeVolume( spep_0 + 178, 1227, 132.28 );
setSeVolume( spep_0 + 179, 1227, 134.12 );
setSeVolume( spep_0 + 180, 1227, 135.95 );
setSeVolume( spep_0 + 181, 1227, 137.79 );
setSeVolume( spep_0 + 182, 1227, 139.63 );
setSeVolume( spep_0 + 183, 1227, 141.47 );
setSeVolume( spep_0 + 184, 1227, 143.3 );
setSeVolume( spep_0 + 185, 1227, 145.14 );
setSeVolume( spep_0 + 186, 1227, 146.98 );
setSeVolume( spep_0 + 187, 1227, 148.81 );
setSeVolume( spep_0 + 188, 1227, 150.65 );
setSeVolume( spep_0 + 189, 1227, 152.49 );
setSeVolume( spep_0 + 190, 1227, 154.33 );
setSeVolume( spep_0 + 191, 1227, 156.16 );
setSeVolume( spep_0 + 192, 1227, 158 );
playSe( spep_0 + 53, 1072 );
playSe( spep_0 + 71, 49 );
playSe( spep_0 + 79, 8 );
setSeVolume( spep_0 + 79, 8, 79 );
playSe( spep_0 + 86, 1011 );
setSeVolume( spep_0 + 86, 1011, 71 );
playSe( spep_0 + 89, 1054 );
setSeVolume( spep_0 + 89, 1054, 56 );
playSe( spep_0 + 95, 1169 );
setSeVolume( spep_0 + 95, 1169, 79 );
se_1215 = playSe( spep_0 + 119, 1215 );
setSeVolume( spep_0 + 119, 1215, 0 );
setSeVolume( spep_0 + 172, 1215, 0 );
setSeVolume( spep_0 + 173, 1215, 3.57 );
setSeVolume( spep_0 + 174, 1215, 7.14 );
setSeVolume( spep_0 + 175, 1215, 10.71 );
setSeVolume( spep_0 + 176, 1215, 14.29 );
setSeVolume( spep_0 + 177, 1215, 17.86 );
setSeVolume( spep_0 + 178, 1215, 21.43 );
setSeVolume( spep_0 + 179, 1215, 25 );
setSeVolume( spep_0 + 180, 1215, 28.57 );
setSeVolume( spep_0 + 181, 1215, 32.14 );
setSeVolume( spep_0 + 182, 1215, 35.71 );
setSeVolume( spep_0 + 183, 1215, 39.29 );
setSeVolume( spep_0 + 184, 1215, 42.86 );
setSeVolume( spep_0 + 185, 1215, 46.43 );
setSeVolume( spep_0 + 186, 1215, 50 );
setSeVolume( spep_0 + 187, 1215, 53.57 );
setSeVolume( spep_0 + 188, 1215, 57.14 );
setSeVolume( spep_0 + 189, 1215, 60.71 );
setSeVolume( spep_0 + 190, 1215, 64.29 );
setSeVolume( spep_0 + 191, 1215, 67.86 );
setSeVolume( spep_0 + 192, 1215, 71.43 );
setSeVolume( spep_0 + 193, 1215, 75 );
setSeVolume( spep_0 + 194, 1215, 78.57 );
setSeVolume( spep_0 + 195, 1215, 82.14 );
setSeVolume( spep_0 + 196, 1215, 85.71 );
setSeVolume( spep_0 + 197, 1215, 89.29 );
setSeVolume( spep_0 + 198, 1215, 92.86 );
setSeVolume( spep_0 + 199, 1215, 96.43 );
setSeVolume( spep_0 + 200, 1215, 100 );
se_10441 = playSe( spep_0 + 128, 1044 );
setSeVolume( spep_0 + 128, 1044, 32 );


stopSe( spep_0 + 128, se_1044, 0 );
stopSe( spep_0 + 86, se_0017, 28 );
stopSe( spep_0 + 98, se_1154, 42 );

--白フェード
entryFade( spep_0 + 122, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+130

------------------------------------------------------
-- 気溜め〜突進
------------------------------------------------------
-- ** エフェクト等 ** --
ora_r = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, ora_r, 0, 0, 0 );
setEffMoveKey( spep_1 + 150, ora_r, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, ora_r, 1.0, 1.0 );
setEffScaleKey( spep_1 + 150, ora_r, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, ora_r, 0 );
setEffRotateKey( spep_1 + 150, ora_r, 0 );
setEffAlphaKey( spep_1 + 0, ora_r, 255 );
setEffAlphaKey( spep_1 + 150, ora_r, 255 );

-- ** エフェクト等 ** --
ora_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, ora_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 150, ora_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, ora_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 150, ora_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, ora_b, 0 );
setEffRotateKey( spep_1 + 150, ora_b, 0 );
setEffAlphaKey( spep_1 + 0, ora_b, 255 );
setEffAlphaKey( spep_1 + 150, ora_b, 255 );


b=100;
c=70;
--文字エントリー
ctgogogo2 = entryEffectLife( spep_1-3 + 50,  190006, 98, 0x100, -1, 0, -191.4+b, 242.5+c );
setEffShake( spep_1-3 + 50, ctgogogo2, 98, 10 );
setEffMoveKey( spep_1-3 + 50, ctgogogo2, -191.4+b, 242.5+c , 0 );
setEffMoveKey( spep_1-3 + 52, ctgogogo2, -189.6+b, 238.9+c , 0 );
setEffMoveKey( spep_1-3 + 54, ctgogogo2, -199+b, 249.6+c , 0 );
setEffMoveKey( spep_1-3 + 56, ctgogogo2, -196.5+b, 245.3+c , 0 );
setEffMoveKey( spep_1-3 + 58, ctgogogo2, -206.5+b, 256.7+c , 0 );
setEffMoveKey( spep_1-3 + 60, ctgogogo2, -203.4+b, 251.7+c , 0 );
setEffMoveKey( spep_1-3 + 62, ctgogogo2, -214.1+b, 263.8+c , 0 );
setEffMoveKey( spep_1-3 + 64, ctgogogo2, -210.4+b, 258+c , 0 );
setEffMoveKey( spep_1-3 + 66, ctgogogo2, -221.6+b, 270.9+c , 0 );
setEffMoveKey( spep_1-3 + 68, ctgogogo2, -217.2+b, 264.4+c , 0 );
setEffMoveKey( spep_1-3 + 70, ctgogogo2, -225.9+b, 276.5+c , 0 );
setEffMoveKey( spep_1-3 + 72, ctgogogo2, -218.5+b, 268.4+c , 0 );
setEffMoveKey( spep_1-3 + 74, ctgogogo2, -227.2+b, 280.6+c , 0 );
setEffMoveKey( spep_1-3 + 76, ctgogogo2, -219.6+b, 272.4+c , 0 );
setEffMoveKey( spep_1-3 + 78, ctgogogo2, -228.5+b, 284.7+c , 0 );
setEffMoveKey( spep_1-3 + 80, ctgogogo2, -220.9+b, 276.5+c , 0 );
setEffMoveKey( spep_1-3 + 82, ctgogogo2, -229.7+b, 288.8+c , 0 );
setEffMoveKey( spep_1-3 + 84, ctgogogo2, -222+b, 280.6+c , 0 );
setEffMoveKey( spep_1-3 + 86, ctgogogo2, -231+b, 293+c , 0 );
setEffMoveKey( spep_1-3 + 88, ctgogogo2, -223.2+b, 284.6+c , 0 );
setEffMoveKey( spep_1-3 + 90, ctgogogo2, -232.3+b, 297.1+c , 0 );
setEffMoveKey( spep_1-3 + 92, ctgogogo2, -224.4+b, 288.7+c , 0 );
setEffMoveKey( spep_1-3 + 94, ctgogogo2, -233.5+b, 301.2+c , 0 );
setEffMoveKey( spep_1-3 + 96, ctgogogo2, -225.6+b, 292.7+c , 0 );
setEffMoveKey( spep_1-3 + 98, ctgogogo2, -234.8+b, 305.3+c , 0 );
setEffMoveKey( spep_1-3 + 100, ctgogogo2, -226.7+b, 296.7+c , 0 );
setEffMoveKey( spep_1-3 + 102, ctgogogo2, -236+b, 309.4+c , 0 );
setEffMoveKey( spep_1-3 + 104, ctgogogo2, -227.9+b, 300.8+c , 0 );
setEffMoveKey( spep_1-3 + 106, ctgogogo2, -237.3+b, 313.5+c , 0 );
setEffMoveKey( spep_1-3 + 108, ctgogogo2, -229.1+b, 304.8+c , 0 );
setEffMoveKey( spep_1-3 + 110, ctgogogo2, -238.6+b, 317.6+c , 0 );
setEffMoveKey( spep_1-3 + 112, ctgogogo2, -230.3+b, 308.8+c , 0 );
setEffMoveKey( spep_1-3 + 114, ctgogogo2, -239.8+b, 321.7+c , 0 );
setEffMoveKey( spep_1-3 + 116, ctgogogo2, -231.4+b, 312.9+c , 0 );
setEffMoveKey( spep_1-3 + 118, ctgogogo2, -241+b, 325.8+c , 0 );
setEffMoveKey( spep_1-3 + 120, ctgogogo2, -232.6+b, 316.9+c , 0 );
setEffMoveKey( spep_1-3 + 122, ctgogogo2, -242.3+b, 329.9+c , 0 );
setEffMoveKey( spep_1-3 + 124, ctgogogo2, -233.7+b, 320.9+c , 0 );
setEffMoveKey( spep_1-3 + 126, ctgogogo2, -243.5+b, 333.9+c , 0 );
setEffMoveKey( spep_1-3 + 128, ctgogogo2, -234.9+b, 324.9+c , 0 );
setEffMoveKey( spep_1-3 + 130, ctgogogo2, -244.8+b, 338.1+c , 0 );
setEffMoveKey( spep_1-3 + 132, ctgogogo2, -236+b, 329+c , 0 );
setEffMoveKey( spep_1-3 + 134, ctgogogo2, -246+b, 342.1+c , 0 );
setEffMoveKey( spep_1-3 + 136, ctgogogo2, -237.3+b, 333+c , 0 );
setEffMoveKey( spep_1-3 + 138, ctgogogo2, -247.3+b, 346.3+c , 0 );
setEffMoveKey( spep_1-3 + 140, ctgogogo2, -238.4+b, 337.1+c , 0 );
setEffMoveKey( spep_1-3 + 142, ctgogogo2, -273.9+b, 377.1+c , 0 );
setEffMoveKey( spep_1-3 + 144, ctgogogo2, -287.8+b, 391.9+c , 0 );
setEffMoveKey( spep_1-3 + 146, ctgogogo2, -325.6+b, 434.7+c , 0 );
setEffMoveKey( spep_1-3 + 148, ctgogogo2, -337.2+b, 446.7+c , 0 );

a=0.4;

setEffScaleKey( spep_1-3 + 50, ctgogogo2, 0.67, 0.67 );
--setEffScaleKey( spep_1-3 + 52, ctgogogo2, 0.49+a, 0.49+a );
--setEffScaleKey( spep_1-3 + 54, ctgogogo2, 0.52+a, 0.52+a );
--setEffScaleKey( spep_1-3 + 56, ctgogogo2, 0.54+a, 0.54+a );
--setEffScaleKey( spep_1-3 + 58, ctgogogo2, 0.57+a, 0.57+a );
setEffScaleKey( spep_1-3 + 60, ctgogogo2, 0.6+a, 0.6+a );
setEffScaleKey( spep_1-3 + 62, ctgogogo2, 0.62+a, 0.62+a );
setEffScaleKey( spep_1-3 + 64, ctgogogo2, 0.65+a, 0.65+a );
setEffScaleKey( spep_1-3 + 66, ctgogogo2, 0.67+a, 0.67+a );
setEffScaleKey( spep_1-3 + 68, ctgogogo2, 0.7+a, 0.7+a );
setEffScaleKey( spep_1-3 + 70, ctgogogo2, 0.7+a, 0.7+a );
setEffScaleKey( spep_1-3 + 72, ctgogogo2, 0.71+a, 0.71+a );
setEffScaleKey( spep_1-3 + 78, ctgogogo2, 0.71+a, 0.71+a );
setEffScaleKey( spep_1-3 + 80, ctgogogo2, 0.72+a, 0.72+a );
setEffScaleKey( spep_1-3 + 86, ctgogogo2, 0.72+a, 0.72+a );
setEffScaleKey( spep_1-3 + 88, ctgogogo2, 0.73+a, 0.73+a );
setEffScaleKey( spep_1-3 + 92, ctgogogo2, 0.73+a, 0.73+a );
setEffScaleKey( spep_1-3 + 94, ctgogogo2, 0.74+a, 0.74+a );
setEffScaleKey( spep_1-3 + 100, ctgogogo2, 0.74+a, 0.74+a );
setEffScaleKey( spep_1-3 + 102, ctgogogo2, 0.75+a, 0.75+a );
setEffScaleKey( spep_1-3 + 106, ctgogogo2, 0.75+a, 0.75+a );
setEffScaleKey( spep_1-3 + 108, ctgogogo2, 0.76+a, 0.76+a );
setEffScaleKey( spep_1-3 + 114, ctgogogo2, 0.76+a, 0.76+a );
setEffScaleKey( spep_1-3 + 116, ctgogogo2, 0.77+a, 0.77+a );
setEffScaleKey( spep_1-3 + 122, ctgogogo2, 0.77+a, 0.77+a );
setEffScaleKey( spep_1-3 + 124, ctgogogo2, 0.78+a, 0.78+a );
setEffScaleKey( spep_1-3 + 128, ctgogogo2, 0.78+a, 0.78+a );
setEffScaleKey( spep_1-3 + 130, ctgogogo2, 0.79+a, 0.79+a );
setEffScaleKey( spep_1-3 + 136, ctgogogo2, 0.79+a, 0.79+a );
setEffScaleKey( spep_1-3 + 138, ctgogogo2, 0.8+a, 0.8+a );
setEffScaleKey( spep_1-3 + 140, ctgogogo2, 0.8+a, 0.8+a );
setEffScaleKey( spep_1-3 + 142, ctgogogo2, 0.9+a, 0.9+a );
setEffScaleKey( spep_1-3 + 144, ctgogogo2, 1+a, 1+a );
setEffScaleKey( spep_1-3 + 146, ctgogogo2, 1.1+a, 1.1+a );
setEffScaleKey( spep_1-3 + 148, ctgogogo2, 1.2+a, 1.2+a );

setEffRotateKey( spep_1-3 + 50, ctgogogo2, -25.8 );
setEffRotateKey( spep_1-3 + 52, ctgogogo2, -25.8 );
setEffRotateKey( spep_1-3 + 54, ctgogogo2, -25.9 );
setEffRotateKey( spep_1-3 + 56, ctgogogo2, -25.9 );
setEffRotateKey( spep_1-3 + 58, ctgogogo2, -26 );
setEffRotateKey( spep_1-3 + 60, ctgogogo2, -26 );
setEffRotateKey( spep_1-3 + 62, ctgogogo2, -26.1 );
setEffRotateKey( spep_1-3 + 66, ctgogogo2, -26.1 );
setEffRotateKey( spep_1-3 + 68, ctgogogo2, -26.2 );
setEffRotateKey( spep_1-3 + 70, ctgogogo2, -26.2 );
setEffRotateKey( spep_1-3 + 72, ctgogogo2, -26.3 );
setEffRotateKey( spep_1-3 + 74, ctgogogo2, -26.3 );
setEffRotateKey( spep_1-3 + 76, ctgogogo2, -26.4 );
setEffRotateKey( spep_1-3 + 80, ctgogogo2, -26.4 );
setEffRotateKey( spep_1-3 + 82, ctgogogo2, -26.5 );
setEffRotateKey( spep_1-3 + 84, ctgogogo2, -26.5 );
setEffRotateKey( spep_1-3 + 86, ctgogogo2, -26.6 );
setEffRotateKey( spep_1-3 + 88, ctgogogo2, -26.6 );
setEffRotateKey( spep_1-3 + 90, ctgogogo2, -26.7 );
setEffRotateKey( spep_1-3 + 94, ctgogogo2, -26.7 );
setEffRotateKey( spep_1-3 + 96, ctgogogo2, -26.8 );
setEffRotateKey( spep_1-3 + 98, ctgogogo2, -26.8 );
setEffRotateKey( spep_1-3 + 100, ctgogogo2, -26.9 );
setEffRotateKey( spep_1-3 + 102, ctgogogo2, -26.9 );
setEffRotateKey( spep_1-3 + 104, ctgogogo2, -27 );
setEffRotateKey( spep_1-3 + 108, ctgogogo2, -27 );
setEffRotateKey( spep_1-3 + 110, ctgogogo2, -27.1 );
setEffRotateKey( spep_1-3 + 112, ctgogogo2, -27.1 );
setEffRotateKey( spep_1-3 + 114, ctgogogo2, -27.2 );
setEffRotateKey( spep_1-3 + 116, ctgogogo2, -27.2 );
setEffRotateKey( spep_1-3 + 118, ctgogogo2, -27.3 );
setEffRotateKey( spep_1-3 + 122, ctgogogo2, -27.3 );
setEffRotateKey( spep_1-3 + 124, ctgogogo2, -27.4 );
setEffRotateKey( spep_1-3 + 126, ctgogogo2, -27.4 );
setEffRotateKey( spep_1-3 + 128, ctgogogo2, -27.5 );
setEffRotateKey( spep_1-3 + 130, ctgogogo2, -27.5 );
setEffRotateKey( spep_1-3 + 132, ctgogogo2, -27.6 );
setEffRotateKey( spep_1-3 + 136, ctgogogo2, -27.6 );
setEffRotateKey( spep_1-3 + 138, ctgogogo2, -27.7 );
setEffRotateKey( spep_1-3 + 148, ctgogogo2, -27.7 );

setEffAlphaKey( spep_1-3 + 50, ctgogogo2, 204 );
setEffAlphaKey( spep_1-3 + 52, ctgogogo2, 205 );
setEffAlphaKey( spep_1-3 + 54, ctgogogo2, 206 );
setEffAlphaKey( spep_1-3 + 56, ctgogogo2, 207 );
setEffAlphaKey( spep_1-3 + 58, ctgogogo2, 209 );
setEffAlphaKey( spep_1-3 + 60, ctgogogo2, 210 );
setEffAlphaKey( spep_1-3 + 62, ctgogogo2, 211 );
setEffAlphaKey( spep_1-3 + 64, ctgogogo2, 212 );
setEffAlphaKey( spep_1-3 + 66, ctgogogo2, 213 );
setEffAlphaKey( spep_1-3 + 68, ctgogogo2, 214 );
setEffAlphaKey( spep_1-3 + 70, ctgogogo2, 215 );
setEffAlphaKey( spep_1-3 + 72, ctgogogo2, 216 );
setEffAlphaKey( spep_1-3 + 74, ctgogogo2, 218 );
setEffAlphaKey( spep_1-3 + 76, ctgogogo2, 219 );
setEffAlphaKey( spep_1-3 + 78, ctgogogo2, 220 );
setEffAlphaKey( spep_1-3 + 80, ctgogogo2, 221 );
setEffAlphaKey( spep_1-3 + 82, ctgogogo2, 222 );
setEffAlphaKey( spep_1-3 + 84, ctgogogo2, 223 );
setEffAlphaKey( spep_1-3 + 86, ctgogogo2, 224 );
setEffAlphaKey( spep_1-3 + 88, ctgogogo2, 226 );
setEffAlphaKey( spep_1-3 + 90, ctgogogo2, 227 );
setEffAlphaKey( spep_1-3 + 92, ctgogogo2, 228 );
setEffAlphaKey( spep_1-3 + 94, ctgogogo2, 229 );
setEffAlphaKey( spep_1-3 + 96, ctgogogo2, 230 );
setEffAlphaKey( spep_1-3 + 98, ctgogogo2, 231 );
setEffAlphaKey( spep_1-3 + 100, ctgogogo2, 232 );
setEffAlphaKey( spep_1-3 + 102, ctgogogo2, 233 );
setEffAlphaKey( spep_1-3 + 104, ctgogogo2, 235 );
setEffAlphaKey( spep_1-3 + 106, ctgogogo2, 236 );
setEffAlphaKey( spep_1-3 + 108, ctgogogo2, 237 );
setEffAlphaKey( spep_1-3 + 110, ctgogogo2, 238 );
setEffAlphaKey( spep_1-3 + 112, ctgogogo2, 239 );
setEffAlphaKey( spep_1-3 + 114, ctgogogo2, 240 );
setEffAlphaKey( spep_1-3 + 116, ctgogogo2, 241 );
setEffAlphaKey( spep_1-3 + 118, ctgogogo2, 243 );
setEffAlphaKey( spep_1-3 + 120, ctgogogo2, 244 );
setEffAlphaKey( spep_1-3 + 122, ctgogogo2, 245 );
setEffAlphaKey( spep_1-3 + 124, ctgogogo2, 246 );
setEffAlphaKey( spep_1-3 + 126, ctgogogo2, 247 );
setEffAlphaKey( spep_1-3 + 128, ctgogogo2, 248 );
setEffAlphaKey( spep_1-3 + 130, ctgogogo2, 249 );
setEffAlphaKey( spep_1-3 + 132, ctgogogo2, 250 );
setEffAlphaKey( spep_1-3 + 134, ctgogogo2, 252 );
setEffAlphaKey( spep_1-3 + 136, ctgogogo2, 253 );
setEffAlphaKey( spep_1-3 + 138, ctgogogo2, 254 );
setEffAlphaKey( spep_1-3 + 140, ctgogogo2, 255 );
setEffAlphaKey( spep_1-3 + 142, ctgogogo2, 195 );
setEffAlphaKey( spep_1-3 + 144, ctgogogo2, 135 );
setEffAlphaKey( spep_1-3 + 146, ctgogogo2, 75 );
setEffAlphaKey( spep_1-3 + 148, ctgogogo2, 15 );

--集中線
shuchusen2 = entryEffectLife( spep_1-3 + 38,  906, 110, 0x100, -1, 0, 107.5, 116 );
setEffShake( spep_1-3 + 38, shuchusen2, 110, 20 );
setEffMoveKey( spep_1-3 + 38, shuchusen2, 107.5, 116 , 0 );
setEffMoveKey( spep_1-3 + 148, shuchusen2, 107.5, 116 , 0 );

setEffScaleKey( spep_1-3 + 38, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_1-3 + 148, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_1-3 + 38, shuchusen2, 180 );
setEffRotateKey( spep_1-3 + 148, shuchusen2, 180 );

setEffAlphaKey( spep_1-3 + 38, shuchusen2, 255 );
setEffAlphaKey( spep_1-3 + 148, shuchusen2, 255 );

--文字エントリー
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-3 + 148, 1, 0 );

changeAnime( spep_1 + 0, 1, 117 );

setMoveKey( spep_1 + 0, 1, 287.6, -59.3 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 275.7, -6.3 , 0 );
setMoveKey( spep_1-3 + 4, 1, 264.9, 41.3 , 0 );
setMoveKey( spep_1-3 + 5, 1, 264.9, 41.3 , 0 );
setMoveKey( spep_1-3 + 6, 1, 255.3, 83.9 , 0 );
setMoveKey( spep_1-3 + 7, 1, 255.3, 83.9 , 0 );
setMoveKey( spep_1-3 + 8, 1, 246.6, 121.9 , 0 );
setMoveKey( spep_1-3 + 9, 1, 246.6, 121.9 , 0 );
setMoveKey( spep_1-3 + 10, 1, 238.9, 155.3 , 0 );
setMoveKey( spep_1-3 + 11, 1, 238.9, 155.3 , 0 );
setMoveKey( spep_1-3 + 12, 1, 232.2, 184.6 , 0 );
setMoveKey( spep_1-3 + 13, 1, 232.2, 184.6 , 0 );
setMoveKey( spep_1-3 + 14, 1, 226.2, 210 , 0 );
setMoveKey( spep_1-3 + 15, 1, 226.2, 210 , 0 );
setMoveKey( spep_1-3 + 16, 1, 221.1, 231.8 , 0 );
setMoveKey( spep_1-3 + 17, 1, 221.1, 231.8 , 0 );
setMoveKey( spep_1-3 + 18, 1, 216.7, 250.2 , 0 );
setMoveKey( spep_1-3 + 19, 1, 216.7, 250.2 , 0 );
setMoveKey( spep_1-3 + 20, 1, 213, 265.6 , 0 );
setMoveKey( spep_1-3 + 21, 1, 213, 265.6 , 0 );
setMoveKey( spep_1-3 + 22, 1, 209.9, 278.2 , 0 );
setMoveKey( spep_1-3 + 23, 1, 209.9, 278.2 , 0 );
setMoveKey( spep_1-3 + 24, 1, 207.4, 288.3 , 0 );
setMoveKey( spep_1-3 + 25, 1, 207.4, 288.3 , 0 );
setMoveKey( spep_1-3 + 26, 1, 205.4, 296.1 , 0 );
setMoveKey( spep_1-3 + 27, 1, 205.4, 296.1 , 0 );
setMoveKey( spep_1-3 + 28, 1, 203.9, 302 , 0 );
setMoveKey( spep_1-3 + 29, 1, 203.9, 302 , 0 );
setMoveKey( spep_1-3 + 30, 1, 202.7, 306.3 , 0 );
setMoveKey( spep_1-3 + 31, 1, 202.7, 306.3 , 0 );
setMoveKey( spep_1-3 + 32, 1, 201.9, 309.1 , 0 );
setMoveKey( spep_1-3 + 33, 1, 201.9, 309.1 , 0 );
setMoveKey( spep_1-3 + 34, 1, 201.4, 310.8 , 0 );
setMoveKey( spep_1-3 + 35, 1, 201.4, 310.8 , 0 );
setMoveKey( spep_1-3 + 36, 1, 201.1, 311.7 , 0 );
setMoveKey( spep_1-3 + 37, 1, 201.1, 311.7 , 0 );
setMoveKey( spep_1-3 + 38, 1, 201, 312.1 , 0 );
setMoveKey( spep_1 + 50, 1, 201, 312.1 , 0 );

setScaleKey( spep_1 + 0, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 50, 1, 0.8, 0.8 );

setRotateKey( spep_1 + 0, 1, -3.5 );
--setRotateKey( spep_1-3 + 2, 1, -3.6 );
setRotateKey( spep_1-3 + 4, 1, -3.7 );
setRotateKey( spep_1-3 + 5, 1, -3.7 );
setRotateKey( spep_1-3 + 6, 1, -3.9 );
setRotateKey( spep_1-3 + 7, 1, -3.9 );
setRotateKey( spep_1-3 + 8, 1, -4 );
setRotateKey( spep_1-3 + 9, 1, -4 );
setRotateKey( spep_1-3 + 10, 1, -4.1 );
setRotateKey( spep_1-3 + 13, 1, -4.1 );
setRotateKey( spep_1-3 + 14, 1, -4.2 );
setRotateKey( spep_1-3 + 15, 1, -4.2 );
setRotateKey( spep_1-3 + 16, 1, -4.3 );
setRotateKey( spep_1-3 + 19, 1, -4.3 );
setRotateKey( spep_1-3 + 20, 1, -4.4 );
setRotateKey( spep_1-3 + 27, 1, -4.4 );
setRotateKey( spep_1-3 + 28, 1, -4.5 );
setRotateKey( spep_1 + 50, 1, -4.5 );

setAlphaKey( spep_1 + 0, 1, 255 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, se_1215, 0 );
    stopSe( SP_dodge - 12, se_1227, 0 );
    stopSe( SP_dodge - 12, se_10441, 0 );

    pauseAll( SP_dodge, 67 );

    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    --敵の固定
    setMoveKey( SP_dodge +9, 1, 201, 312.1 , 0 );
    setScaleKey( SP_dodge+9, 1, 0.8, 0.8 );
    setRotateKey( SP_dodge+9, 1, -4.5 );

    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
setMoveKey( spep_1-3 + 58, 1, 201, 312.1 , 0 );
setMoveKey( spep_1-3 + 60, 1, 201, 312.2 , 0 );
setMoveKey( spep_1-3 + 62, 1, 201.6, 313 , 0 );
setMoveKey( spep_1-3 + 64, 1, 202.1, 313.9 , 0 );
setMoveKey( spep_1-3 + 66, 1, 202.6, 314.7 , 0 );
setMoveKey( spep_1-3 + 68, 1, 203.1, 315.5 , 0 );
setMoveKey( spep_1-3 + 70, 1, 203.5, 316.3 , 0 );
setMoveKey( spep_1-3 + 72, 1, 204, 317 , 0 );
setMoveKey( spep_1-3 + 74, 1, 204.4, 317.7 , 0 );
setMoveKey( spep_1-3 + 76, 1, 204.9, 318.4 , 0 );
setMoveKey( spep_1-3 + 78, 1, 205.3, 319.1 , 0 );
setMoveKey( spep_1-3 + 80, 1, 205.7, 319.7 , 0 );
setMoveKey( spep_1-3 + 82, 1, 206, 320.4 , 0 );
setMoveKey( spep_1-3 + 84, 1, 206.4, 321 , 0 );
setMoveKey( spep_1-3 + 86, 1, 206.7, 321.5 , 0 );
setMoveKey( spep_1-3 + 88, 1, 207.1, 322.1 , 0 );
setMoveKey( spep_1-3 + 90, 1, 207.4, 322.6 , 0 );
setMoveKey( spep_1-3 + 92, 1, 207.7, 323 , 0 );
setMoveKey( spep_1-3 + 94, 1, 207.9, 323.5 , 0 );
setMoveKey( spep_1-3 + 96, 1, 208.2, 323.9 , 0 );
setMoveKey( spep_1-3 + 98, 1, 208.5, 324.3 , 0 );
setMoveKey( spep_1-3 + 100, 1, 208.7, 324.7 , 0 );
setMoveKey( spep_1-3 + 102, 1, 208.9, 325.1 , 0 );
setMoveKey( spep_1-3 + 104, 1, 209.1, 325.4 , 0 );
setMoveKey( spep_1-3 + 106, 1, 209.3, 325.7 , 0 );
setMoveKey( spep_1-3 + 108, 1, 209.5, 326 , 0 );
setMoveKey( spep_1-3 + 110, 1, 209.6, 326.2 , 0 );
setMoveKey( spep_1-3 + 112, 1, 209.7, 326.4 , 0 );
setMoveKey( spep_1-3 + 114, 1, 209.9, 326.6 , 0 );
setMoveKey( spep_1-3 + 116, 1, 210, 326.8 , 0 );
setMoveKey( spep_1-3 + 118, 1, 210.1, 327 , 0 );
setMoveKey( spep_1-3 + 120, 1, 210.1, 327.1 , 0 );
setMoveKey( spep_1-3 + 122, 1, 210.2, 327.2 , 0 );
setMoveKey( spep_1-3 + 124, 1, 210.2, 327.2 , 0 );
setMoveKey( spep_1-3 + 126, 1, 210.2, 327.3 , 0 );
setMoveKey( spep_1-3 + 128, 1, 210.3, 327.3 , 0 );
setMoveKey( spep_1-3 + 130, 1, 210.4, 327.6 , 0 );
setMoveKey( spep_1-3 + 132, 1, 211.2, 329.6 , 0 );
setMoveKey( spep_1-3 + 134, 1, 213.5, 335.2 , 0 );
setMoveKey( spep_1-3 + 136, 1, 218, 346.1 , 0 );
setMoveKey( spep_1-3 + 138, 1, 225.3, 364 , 0 );
setMoveKey( spep_1-3 + 140, 1, 236.3, 390.7 , 0 );
setMoveKey( spep_1-3 + 142, 1, 251.6, 427.9 , 0 );
setMoveKey( spep_1-3 + 144, 1, 271.9, 477.5 , 0 );
setMoveKey( spep_1-3 + 146, 1, 298.1, 541.2 , 0 );
setMoveKey( spep_1-3 + 148, 1, 330.7, 620.7 , 0 );

setScaleKey( spep_1-3 + 64, 1, 0.8, 0.8 );
setScaleKey( spep_1-3 + 66, 1, 0.81, 0.81 );
setScaleKey( spep_1-3 + 74, 1, 0.81, 0.81 );
setScaleKey( spep_1-3 + 76, 1, 0.82, 0.82 );
setScaleKey( spep_1-3 + 86, 1, 0.82, 0.82 );
setScaleKey( spep_1-3 + 88, 1, 0.83, 0.83 );
setScaleKey( spep_1-3 + 102, 1, 0.83, 0.83 );
setScaleKey( spep_1-3 + 104, 1, 0.84, 0.84 );
setScaleKey( spep_1-3 + 132, 1, 0.84, 0.84 );
setScaleKey( spep_1-3 + 134, 1, 0.85, 0.85 );
setScaleKey( spep_1-3 + 136, 1, 0.86, 0.86 );
setScaleKey( spep_1-3 + 138, 1, 0.88, 0.87 );
setScaleKey( spep_1-3 + 140, 1, 0.9, 0.9 );
setScaleKey( spep_1-3 + 142, 1, 0.94, 0.94 );
setScaleKey( spep_1-3 + 144, 1, 0.98, 0.98 );
setScaleKey( spep_1-3 + 146, 1, 1.04, 1.04 );
setScaleKey( spep_1-3 + 148, 1, 1.12, 1.12 );

setRotateKey( spep_1-3 + 148, 1, -4.5 );
--SE
stopSe( spep_1 + 141, se_1215, 51 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 152, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1 + 140, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+150;
------------------------------------------------------
-- 気だめ　石が浮き上がる
------------------------------------------------------
-- ** エフェクト等 ** --
tame2 = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame2, 0, 0, 0 );
setEffMoveKey( spep_2 + 90, tame2, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tame2, 1.0, 1.0 );
setEffScaleKey( spep_2 + 90, tame2, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame2, 0 );
setEffRotateKey( spep_2 + 90, tame2, 0 );
setEffAlphaKey( spep_2 + 0, tame2, 255 );
setEffAlphaKey( spep_2 + 90, tame2, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_2 + 0,  906, 88, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2 + 0, shuchusen3, 88, 20 );
setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 88, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_2 + 88, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen3, 0 );
setEffRotateKey( spep_2 + 88, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 88, shuchusen3, 255 );

--文字エントリー
ctgogogo3 = entryEffectLife( spep_2 + 0,  190006, 78, 0x100, -1, 0, 435, 0 );
setEffShake( spep_2 + 0, ctgogogo3, 78, 10 );
setEffMoveKey( spep_2 + 0, ctgogogo3, 0, 435 , 0 );
setEffMoveKey( spep_2 + 78, ctgogogo3, 0, 435 , 0 );

d=0.3;
setEffScaleKey( spep_2 + 0, ctgogogo3, 0.55+d, 0.55+d );
setEffScaleKey( spep_2 + 68, ctgogogo3, 0.55+d, 0.55+d );
setEffScaleKey( spep_2 + 70, ctgogogo3, 0.64+d, 0.64+d );
setEffScaleKey( spep_2 + 72, ctgogogo3, 0.73+d, 0.73+d );
setEffScaleKey( spep_2 + 74, ctgogogo3, 0.82+d, 0.82+d );
setEffScaleKey( spep_2 + 76, ctgogogo3, 0.91+d, 0.91+d );
setEffScaleKey( spep_2 + 78, ctgogogo3, 1.1+d, 1.1+d );

setEffRotateKey( spep_2 + 0, ctgogogo3, 0 );
setEffRotateKey( spep_2 + 78, ctgogogo3, 0 );

setEffAlphaKey( spep_2 + 0, ctgogogo3, 255 );
setEffAlphaKey( spep_2 + 68, ctgogogo3, 255 );
setEffAlphaKey( spep_2 + 70, ctgogogo3, 204 );
setEffAlphaKey( spep_2 + 72, ctgogogo3, 153 );
setEffAlphaKey( spep_2 + 74, ctgogogo3, 102 );
setEffAlphaKey( spep_2 + 76, ctgogogo3, 51 );
setEffAlphaKey( spep_2 + 78, ctgogogo3, 0 );

--SE
se_1044 = playSe( spep_2 + 4, 1044 );
se_1214 = playSe( spep_2 + 6, 1214 );
setSeVolume( spep_2 + 6, 1214, 141 );
se_1147 = playSe( spep_2 + 7, 1147 );
setSeVolume( spep_2 + 7, 1147, 40 );

stopSe( spep_2 + 76, se_1227, 26 );
stopSe( spep_2 + 4, se_10441, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 92, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_2 + 82, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3=spep_2+90;

--------------------------------------
--カードカットイン(94F)
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
stopSe( spep_3 + 2, se_1044, 0 );
stopSe( spep_3 + 2, se_1214, 0 );
stopSe( spep_3 + 2, se_1147, 0 );

--白フェード
entryFade( spep_3 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
-- 着弾→爆発　敵吹っ飛ぶ
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_4 + 100, beam, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, beam, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam, 0 );
setEffRotateKey( spep_4 + 100, beam, 0 );
setEffAlphaKey( spep_4 + 0, beam, 255 );
setEffAlphaKey( spep_4 + 100, beam, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_4 + 48,  10012, 48, 0x100, -1, 0, 36.9, 418.4 );
setEffShake( spep_4 + 48, ctzuo, 48, 10 );
setEffMoveKey( spep_4 + 48, ctzuo, 36.9, 418.4 , 0 );
--setEffMoveKey( spep_4 + 50, ctzuo, 55.2, 418.1 , 0 );
setEffMoveKey( spep_4 + 52, ctzuo, 68.5, 434.9 , 0 );
setEffMoveKey( spep_4 + 54, ctzuo, 105.5, 445.2 , 0 );
setEffMoveKey( spep_4 + 56, ctzuo, 80.6, 449.1 , 0 );
setEffMoveKey( spep_4 + 58, ctzuo, 88.6, 441.9 , 0 );
setEffMoveKey( spep_4 + 60, ctzuo, 63.1, 446 , 0 );
setEffMoveKey( spep_4 + 62, ctzuo, 71.8, 438.5 , 0 );
setEffMoveKey( spep_4 + 64, ctzuo, 45.6, 442.9 , 0 );
setEffMoveKey( spep_4 + 66, ctzuo, 55, 435.1 , 0 );
setEffMoveKey( spep_4 + 68, ctzuo, 28.1, 439.7 , 0 );
setEffMoveKey( spep_4 + 70, ctzuo, 38.2, 431.7 , 0 );
setEffMoveKey( spep_4 + 72, ctzuo, 10.6, 436.6 , 0 );
setEffMoveKey( spep_4 + 74, ctzuo, 21.4, 428.4 , 0 );
setEffMoveKey( spep_4 + 76, ctzuo, -6.9, 433.4 , 0 );
setEffMoveKey( spep_4 + 78, ctzuo, 4.6, 425 , 0 );
setEffMoveKey( spep_4 + 80, ctzuo, -24.4, 430.3 , 0 );
setEffMoveKey( spep_4 + 82, ctzuo, -12.1, 421.6 , 0 );
setEffMoveKey( spep_4 + 84, ctzuo, -41.9, 427.2 , 0 );
setEffMoveKey( spep_4 + 86, ctzuo, -28.9, 418.3 , 0 );
setEffMoveKey( spep_4 + 88, ctzuo, -59.4, 424 , 0 );
setEffMoveKey( spep_4 + 90, ctzuo, -45.7, 414.9 , 0 );
setEffMoveKey( spep_4 + 92, ctzuo, -77, 421 , 0 );
setEffMoveKey( spep_4 + 94, ctzuo, -126.2, 503.9 , 0 );
setEffMoveKey( spep_4 + 96, ctzuo, -198.3, 594.6 , 0 );

e=1.45;
setEffScaleKey( spep_4 + 48, ctzuo, 0.82, 0.82);
--setEffScaleKey( spep_4 + 50, ctzuo, 0.27+e, 0.27+e );
--setEffScaleKey( spep_4 + 52, ctzuo, 0.43+e, 0.43+e );
setEffScaleKey( spep_4 + 54, ctzuo, 0.6+e, 0.6+e );
setEffScaleKey( spep_4 + 56, ctzuo, 0.61+e, 0.61+e );
setEffScaleKey( spep_4 + 58, ctzuo, 0.63+e, 0.63+e );
setEffScaleKey( spep_4 + 60, ctzuo, 0.64+e, 0.64+e );
setEffScaleKey( spep_4 + 62, ctzuo, 0.65+e, 0.65+e );
setEffScaleKey( spep_4 + 64, ctzuo, 0.67+e, 0.67+e );
setEffScaleKey( spep_4 + 66, ctzuo, 0.68+e, 0.68+e );
setEffScaleKey( spep_4 + 68, ctzuo, 0.69+e, 0.69+e );
setEffScaleKey( spep_4 + 70, ctzuo, 0.71+e, 0.71+e );
setEffScaleKey( spep_4 + 72, ctzuo, 0.72+e, 0.72+e );
setEffScaleKey( spep_4 + 74, ctzuo, 0.73+e, 0.73+e );
setEffScaleKey( spep_4 + 76, ctzuo, 0.74+e, 0.74+e );
setEffScaleKey( spep_4 + 78, ctzuo, 0.76+e, 0.76+e );
setEffScaleKey( spep_4 + 80, ctzuo, 0.77+e, 0.77+e );
setEffScaleKey( spep_4 + 82, ctzuo, 0.78+e, 0.78+e );
setEffScaleKey( spep_4 + 84, ctzuo, 0.8+e, 0.8+e );
setEffScaleKey( spep_4 + 86, ctzuo, 0.81+e, 0.81+e );
setEffScaleKey( spep_4 + 88, ctzuo, 0.82+e, 0.82+e );
setEffScaleKey( spep_4 + 90, ctzuo, 0.84+e, 0.84+e );
setEffScaleKey( spep_4 + 92, ctzuo, 0.85+e, 0.85+e );
setEffScaleKey( spep_4 + 94, ctzuo, 1.43+e, 1.43+e );
setEffScaleKey( spep_4 + 96, ctzuo, 2+e, 2+e );

setEffRotateKey( spep_4 + 48, ctzuo, -18 );
setEffRotateKey( spep_4 + 50, ctzuo, -16.8 );
setEffRotateKey( spep_4 + 52, ctzuo, -11.5 );
setEffRotateKey( spep_4 + 54, ctzuo, -6.3 );
setEffRotateKey( spep_4 + 96, ctzuo, -6.3 );

setEffAlphaKey( spep_4 + 48, ctzuo, 40 );
setEffAlphaKey( spep_4 + 50, ctzuo, 92 );
setEffAlphaKey( spep_4 + 52, ctzuo, 173 );
setEffAlphaKey( spep_4 + 54, ctzuo, 255 );
setEffAlphaKey( spep_4 + 92, ctzuo, 255 );
setEffAlphaKey( spep_4 + 94, ctzuo, 128 );
setEffAlphaKey( spep_4 + 96, ctzuo, 0 );

--SE
se_1231 = playSe( spep_4 + 6, 1231 );
setSeVolume( spep_4 + 6, 1231, 158 );
se_1043 = playSe( spep_4 + 8, 1043 );
setSeVolume( spep_4 + 8, 1043, 89 );
playSe( spep_4 + 37, 1003 );
setSeVolume( spep_4 + 37, 1003, 126 );
playSe( spep_4 + 47, 1027 );
setSeVolume( spep_4 + 47, 1027, 71 );
playSe( spep_4 + 47, 1145 );

stopSe( spep_4 + 46, se_1231, 16 );
stopSe( spep_4 + 49, se_1043, 13 );

--白フェード
entryFade( spep_4 + 44, 0, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 92, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 102, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_5=spep_4+100;
------------------------------------------------------
-- 着弾→爆発　敵吹っ飛ぶ
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 80, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 80, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 80, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 80, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 80, hit_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 80, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 80, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 80, hit_b, 255 );

setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5-3 + 58, 1, 0 );
changeAnime( spep_5 + 0, 1, 104 );
changeAnime( spep_5-3 + 22, 1, 108 );
changeAnime( spep_5-3 + 26, 1, 106 );
changeAnime( spep_5-3 + 32, 1, 105 );

setMoveKey( spep_5 + 0, 1, -7.1, -11.4 , 0 );
--setMoveKey( spep_5-3 + 2, 1, -6.6, -3.4 , 0 );
setMoveKey( spep_5-3 + 4, 1, -6.1, 4.5 , 0 );
setMoveKey( spep_5-3 + 6, 1, -5.7, 12.5 , 0 );
setMoveKey( spep_5-3 + 8, 1, -5.2, 20.5 , 0 );
setMoveKey( spep_5-3 + 10, 1, -4.8, 28.5 , 0 );
setMoveKey( spep_5-3 + 12, 1, -4.3, 36.5 , 0 );
setMoveKey( spep_5-3 + 14, 1, -3.9, 44.5 , 0 );
setMoveKey( spep_5-3 + 16, 1, -3.4, 52.5 , 0 );
setMoveKey( spep_5-3 + 18, 1, -3, 60.5 , 0 );
setMoveKey( spep_5-3 + 20, 1, -3.7, 74.8 , 0 );
setMoveKey( spep_5-3 + 21, 1, -3.7, 74.8 , 0 );

setMoveKey( spep_5-3 + 22, 1, 15.4, 99.1 , 0 );
setMoveKey( spep_5-3 + 24, 1, 10.4, 64.2 , 0 );
setMoveKey( spep_5-3 + 25, 1, 10.4, 64.2 , 0 );

setMoveKey( spep_5-3 + 26, 1, 1.4, 72.3 , 0 );
setMoveKey( spep_5-3 + 31, 1, 1.4, 72.3 , 0 );

setMoveKey( spep_5-3 + 32, 1, 82.3, -4.3 , 0 );
setMoveKey( spep_5-3 + 34, 1, 83.1, 106 , 0 );
setMoveKey( spep_5-3 + 36, 1, 104.8, 194.2 , 0 );
setMoveKey( spep_5-3 + 38, 1, 121.7, 271.3 , 0 );
setMoveKey( spep_5-3 + 40, 1, 163.7, 340.6 , 0 );
setMoveKey( spep_5-3 + 42, 1, 197.1, 402.7 , 0 );
setMoveKey( spep_5-3 + 44, 1, 234, 444.2 , 0 );
setMoveKey( spep_5-3 + 46, 1, 261.9, 481.7 , 0 );
setMoveKey( spep_5-3 + 48, 1, 306.2, 515.9 , 0 );
setMoveKey( spep_5-3 + 50, 1, 347.3, 561.6 , 0 );
setMoveKey( spep_5-3 + 52, 1, 389.3, 593.2 , 0 );
setMoveKey( spep_5-3 + 54, 1, 421.9, 623 , 0 );
setMoveKey( spep_5-3 + 56, 1, 465, 651.3 , 0 );
setMoveKey( spep_5-3 + 58, 1, 495.5, 676.4 , 0 );


setScaleKey( spep_5 + 0, 1, 1.1, 1.1 );
--setScaleKey( spep_5-3 + 2, 1, 1.12, 1.12 );
setScaleKey( spep_5-3 + 4, 1, 1.15, 1.15 );
setScaleKey( spep_5-3 + 6, 1, 1.17, 1.17 );
setScaleKey( spep_5-3 + 8, 1, 1.2, 1.2 );
setScaleKey( spep_5-3 + 10, 1, 1.22, 1.22 );
setScaleKey( spep_5-3 + 12, 1, 1.25, 1.25 );
setScaleKey( spep_5-3 + 14, 1, 1.27, 1.27 );
setScaleKey( spep_5-3 + 16, 1, 1.3, 1.3 );
setScaleKey( spep_5-3 + 18, 1, 1.32, 1.32 );
setScaleKey( spep_5-3 + 20, 1, 1.43, 1.43 );
setScaleKey( spep_5-3 + 21, 1, 1.43, 1.43 );

setScaleKey( spep_5-3 + 22, 1, 1.54, 1.54 );
setScaleKey( spep_5-3 + 24, 1, 1.35, 1.35 );
setScaleKey( spep_5-3 + 25, 1, 1.35, 1.35 );

setScaleKey( spep_5-3 + 26, 1, 1.15, 1.15 );
setScaleKey( spep_5-3 + 31, 1, 1.15, 1.15 );

setScaleKey( spep_5-3 + 32, 1, 1.45, 1.45 );
setScaleKey( spep_5-3 + 34, 1, 1.28, 1.28 );
setScaleKey( spep_5-3 + 36, 1, 1.22, 1.22 );
setScaleKey( spep_5-3 + 38, 1, 1.16, 1.16 );
setScaleKey( spep_5-3 + 40, 1, 1.1, 1.1 );
setScaleKey( spep_5-3 + 42, 1, 1.04, 1.04 );
setScaleKey( spep_5-3 + 44, 1, 0.99, 0.99 );
setScaleKey( spep_5-3 + 46, 1, 0.94, 0.94 );
setScaleKey( spep_5-3 + 48, 1, 0.88, 0.88 );
setScaleKey( spep_5-3 + 50, 1, 0.84, 0.84 );
setScaleKey( spep_5-3 + 52, 1, 0.81, 0.81 );
setScaleKey( spep_5-3 + 54, 1, 0.77, 0.77 );
setScaleKey( spep_5-3 + 56, 1, 0.73, 0.73 );
setScaleKey( spep_5-3 + 58, 1, 0.69, 0.69 );


setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5-3 + 21, 1, 0 );

setRotateKey( spep_5-3 + 22, 1, 0 );
setRotateKey( spep_5-3 + 25, 1, 0 );

setRotateKey( spep_5-3 + 26, 1, -55.9 );
setRotateKey( spep_5-3 + 31, 1, -55.9 );

setRotateKey( spep_5-3 + 32, 1, 19.8 );
setRotateKey( spep_5-3 + 58, 1, 19.8 );

setAlphaKey( spep_5 + 0, 1, 255 );
setAlphaKey( spep_5-3 + 32, 1, 255 );
setAlphaKey( spep_5-3 + 34, 1, 237 );
setAlphaKey( spep_5-3 + 36, 1, 219 );
setAlphaKey( spep_5-3 + 38, 1, 200 );
setAlphaKey( spep_5-3 + 40, 1, 182 );
setAlphaKey( spep_5-3 + 42, 1, 164 );
setAlphaKey( spep_5-3 + 44, 1, 146 );
setAlphaKey( spep_5-3 + 46, 1, 128 );
setAlphaKey( spep_5-3 + 48, 1, 109 );
setAlphaKey( spep_5-3 + 50, 1, 91 );
setAlphaKey( spep_5-3 + 52, 1, 73 );
setAlphaKey( spep_5-3 + 54, 1, 55 );
setAlphaKey( spep_5-3 + 56, 1, 36 );
setAlphaKey( spep_5-3 + 58, 1, 18 );
setAlphaKey( spep_5-3 + 60, 1, 18 );
setAlphaKey( spep_5-3 + 80, 1, 255 );

--文字エントリー
ctdon = entryEffectLife( spep_5-3 + 24,  10019, 24, 0x100, -1, 0, -24.4, 268.8 );

setEffMoveKey( spep_5-3 + 24, ctdon, -24.4, 268.8 , 0 );
setEffMoveKey( spep_5-3 + 26, ctdon, -6.4, 302.9 , 0 );
setEffMoveKey( spep_5-3 + 28, ctdon, -6.5, 303 , 0 );
setEffMoveKey( spep_5-3 + 30, ctdon, -6.6, 303 , 0 );
setEffMoveKey( spep_5-3 + 32, ctdon, -6.4, 302.9 , 0 );
setEffMoveKey( spep_5-3 + 34, ctdon, -6.4, 302.9 , 0 );
setEffMoveKey( spep_5-3 + 36, ctdon, -6.5, 302.9 , 0 );
setEffMoveKey( spep_5-3 + 38, ctdon, -6.6, 303 , 0 );
setEffMoveKey( spep_5-3 + 40, ctdon, -6.5, 303 , 0 );
setEffMoveKey( spep_5-3 + 42, ctdon, -6.5, 303 , 0 );
setEffMoveKey( spep_5-3 + 44, ctdon, -6.5, 302.9 , 0 );
setEffMoveKey( spep_5-3 + 48, ctdon, -6.5, 302.9 , 0 );

setEffScaleKey( spep_5-3 + 24, ctdon, 2, 2 );
setEffScaleKey( spep_5-3 + 26, ctdon, 3.5, 3.5 );
setEffScaleKey( spep_5-3 + 28, ctdon, 2.36, 2.36 );
setEffScaleKey( spep_5-3 + 30, ctdon, 2.2, 2.2 );
setEffScaleKey( spep_5-3 + 32, ctdon, 2.9, 2.9 );
setEffScaleKey( spep_5-3 + 34, ctdon, 3, 3 );
setEffScaleKey( spep_5-3 + 36, ctdon, 2.3, 2.3 );
setEffScaleKey( spep_5-3 + 38, ctdon, 2.2, 2.2 );
setEffScaleKey( spep_5-3 + 40, ctdon, 2.48, 2.48 );
setEffScaleKey( spep_5-3 + 42, ctdon, 2.5, 2.5 );
setEffScaleKey( spep_5-3 + 44, ctdon, 2.22, 2.22 );
setEffScaleKey( spep_5-3 + 46, ctdon, 2.05, 2.05 );
setEffScaleKey( spep_5-3 + 48, ctdon, 2, 2 );

setEffRotateKey( spep_5-3 + 24, ctdon, 10.5 );
setEffRotateKey( spep_5-3 + 48, ctdon, 10.5 );

setEffAlphaKey( spep_5-3 + 24, ctdon, 255 );
setEffAlphaKey( spep_5-3 + 42, ctdon, 255 );
setEffAlphaKey( spep_5-3 + 44, ctdon, 119 );
setEffAlphaKey( spep_5-3 + 46, ctdon, 37 );
setEffAlphaKey( spep_5-3 + 48, ctdon, 10 );

--SE
playSe( spep_5 + 20, 1014 );
playSe( spep_5 + 20, 1023 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_6=spep_5+76;

------------------------------------------------------
-- 2発目発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam2 = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, beam2, 0, 0, 0 );
setEffMoveKey( spep_6 + 60, beam2, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, beam2, 1.0, 1.0 );
setEffScaleKey( spep_6 + 60, beam2, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, beam2, 0 );
setEffRotateKey( spep_6 + 60, beam2, 0 );
setEffAlphaKey( spep_6 + 0, beam2, 255 );
setEffAlphaKey( spep_6 + 60, beam2, 255 );

--SE
se_1231 = playSe( spep_6 + 1, 1231 );
setSeVolume( spep_6 + 1, 1231, 158 );
se_1043 = playSe( spep_6 + 3, 1043 );
setSeVolume( spep_6 + 3, 1043, 71 );
playSe( spep_6 + 18, 1003 );
playSe( spep_6 + 27, 1027 );
setSeVolume( spep_6 + 27, 1027, 71 );
playSe( spep_6 + 32, 1145 );
playSe( spep_6 + 35, 1177 );
setSeVolume( spep_6 + 35, 1177, 0 );
setSeVolume( spep_6 + 36, 1177, 4.55 );
setSeVolume( spep_6 + 37, 1177, 9.09 );
setSeVolume( spep_6 + 38, 1177, 13.64 );
setSeVolume( spep_6 + 39, 1177, 18.18 );
setSeVolume( spep_6 + 40, 1177, 22.73 );
setSeVolume( spep_6 + 41, 1177, 27.27 );
setSeVolume( spep_6 + 42, 1177, 31.82 );
setSeVolume( spep_6 + 43, 1177, 36.36 );
setSeVolume( spep_6 + 44, 1177, 40.91 );
setSeVolume( spep_6 + 45, 1177, 45.45 );
setSeVolume( spep_6 + 46, 1177, 50.00 );
setSeVolume( spep_6 + 47, 1177, 54.55 );
setSeVolume( spep_6 + 48, 1177, 59.09 );
setSeVolume( spep_6 + 49, 1177, 63.64 );
setSeVolume( spep_6 + 50, 1177, 68.18 );
setSeVolume( spep_6 + 51, 1177, 72.73 );
setSeVolume( spep_6 + 52, 1177, 77.27 );
setSeVolume( spep_6 + 53, 1177, 81.82 );
setSeVolume( spep_6 + 54, 1177, 86.36 );
setSeVolume( spep_6 + 55, 1177, 90.91 );
setSeVolume( spep_6 + 56, 1177, 95.45 );
setSeVolume( spep_6 + 57, 1177, 100 );
playSe( spep_6 + 55, 1022 );
setSeVolume( spep_6 + 55, 1022, 0 );
setSeVolume( spep_6 + 56, 1022, 4.67 );
setSeVolume( spep_6 + 57, 1022, 9.33 );
setSeVolume( spep_6 + 58, 1022, 14 );
setSeVolume( spep_6 + 59, 1022, 18.67 );
setSeVolume( spep_6 + 60, 1022, 23.33 );
setSeVolume( spep_6 + 61, 1022, 28 );
setSeVolume( spep_6 + 62, 1022, 32.67 );
setSeVolume( spep_6 + 63, 1022, 37.33 );
setSeVolume( spep_6 + 64, 1022, 42 );
setSeVolume( spep_6 + 65, 1022, 46.67 );
setSeVolume( spep_6 + 66, 1022, 51.33 );
setSeVolume( spep_6 + 67, 1022, 56 );
setSeVolume( spep_6 + 68, 1022, 60.67 );
setSeVolume( spep_6 + 69, 1022, 65.33 );
setSeVolume( spep_6 + 70, 1022, 70 );
setSeVolume( spep_6 + 71, 1022, 74.67 );
setSeVolume( spep_6 + 72, 1022, 79.33 );
setSeVolume( spep_6 + 73, 1022, 84 );
setSeVolume( spep_6 + 74, 1022, 88.67 );
setSeVolume( spep_6 + 75, 1022, 93.33 );
setSeVolume( spep_6 + 76, 1022, 98 );
setSeVolume( spep_6 + 77, 1022, 102.67 );
setSeVolume( spep_6 + 78, 1022, 107.33 );
setSeVolume( spep_6 + 79, 1022, 112 );
setSeVolume( spep_6 + 80, 1022, 116.67 );
setSeVolume( spep_6 + 81, 1022, 121.33 );
setSeVolume( spep_6 + 82, 1022, 126 );
stopSe( spep_6 + 27, se_1231, 12 );
stopSe( spep_6 + 27, se_1043, 12 );

--白フェード
entryFade( spep_6 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 62, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_7=spep_6+60;

------------------------------------------------------
-- 敵が気弾に包まれ昇華
------------------------------------------------------
-- ** エフェクト等 ** --
hit2_f = entryEffect( spep_7 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, hit2_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 120, hit2_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, hit2_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 120, hit2_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, hit2_f, 0 );
setEffRotateKey( spep_7 + 120, hit2_f, 0 );
setEffAlphaKey( spep_7 + 0, hit2_f, 255 );
setEffAlphaKey( spep_7 + 120, hit2_f, 255 );

-- ** エフェクト等 ** --
hit2_b = entryEffect( spep_7 + 0, SP_10, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, hit2_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 120, hit2_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, hit2_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 120, hit2_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, hit2_b, 0 );
setEffRotateKey( spep_7 + 120, hit2_b, 0 );
setEffAlphaKey( spep_7 + 0, hit2_b, 255 );
setEffAlphaKey( spep_7 + 120, hit2_b, 255 );

--敵の動き
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 + 18, 1, 0 );

changeAnime( spep_7 + 0, 1, 108 );

setMoveKey( spep_7 + 0, 1, -68.6, -289.2 , 0 );
setMoveKey( spep_7 + 2, 1, -43.8, -223.7 , 0 );
setMoveKey( spep_7 + 4, 1, -19, -158.2 , 0 );
setMoveKey( spep_7 + 6, 1, 5.8, -92.7 , 0 );
setMoveKey( spep_7 + 8, 1, 30.6, -27.2 , 0 );
setMoveKey( spep_7 + 10, 1, 55.4, 38.4 , 0 );
setMoveKey( spep_7 + 12, 1, 80.2, 103.9 , 0 );
setMoveKey( spep_7 + 14, 1, 105, 169.4 , 0 );
setMoveKey( spep_7 + 16, 1, 106, 174.2 , 0 );
setMoveKey( spep_7 + 18, 1, 107.1, 178.9 , 0 );

setScaleKey( spep_7 + 0, 1, 3.5, 3.5 );
setScaleKey( spep_7 + 2, 1, 3.21, 3.21 );
setScaleKey( spep_7 + 4, 1, 2.93, 2.93 );
setScaleKey( spep_7 + 6, 1, 2.64, 2.64 );
setScaleKey( spep_7 + 8, 1, 2.36, 2.36 );
setScaleKey( spep_7 + 10, 1, 2.07, 2.07 );
setScaleKey( spep_7 + 12, 1, 1.79, 1.79 );
setScaleKey( spep_7 + 14, 1, 1.5, 1.5 );
setScaleKey( spep_7 + 16, 1, 1.48, 1.48 );
setScaleKey( spep_7 + 18, 1, 1.46, 1.46 );

setRotateKey( spep_7 + 0, 1, -18.6 );
setRotateKey( spep_7 + 2, 1, -18.7 );
setRotateKey( spep_7 + 18, 1, -18.7 );

--SE
se_1124 = playSe( spep_7 + 0, 1124 );
setSeVolume( spep_7 + 0, 1124, 56 );

--白フェード
entryFade( spep_7 + 112, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_7 + 0, 0, 122, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_8=spep_7+120;
------------------------------------------------------
-- 空見上げたまま魔光線収束
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_8 + 0, SP_11, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_8 + 150, finish, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_8 + 150, finish, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, finish, 0 );
setEffRotateKey( spep_8 + 150, finish, 0 );
setEffAlphaKey( spep_8 + 0, finish, 255 );
setEffAlphaKey( spep_8 + 150, finish, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_8 + 0,  906, 38, 0x100, -1, 0, 0, 0 );
setEffShake( spep_8 + 0, shuchusen4, 38, 20 );
setEffMoveKey( spep_8 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_8 + 38, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_8 + 0, shuchusen4, 1.5, 1.5 );
setEffScaleKey( spep_8 + 38, shuchusen4, 1.5, 1.5 );

setEffRotateKey( spep_8 + 0, shuchusen4, 180 );
setEffRotateKey( spep_8 + 38, shuchusen4, 180 );

setEffAlphaKey( spep_8 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_8 + 38, shuchusen4, 255 );

--SE
playSe( spep_8 + 7, 1179 );
setSeVolume( spep_8 + 7, 1179, 40 );

stopSe( spep_8 + 11, se_1124, 63 );

--終わり
dealDamage( spep_8 + 10 );
endPhase( spep_8 + 140 );

else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 気溜め〜突進
------------------------------------------------------
-- ** はじめの準備 ** --
spep_0= 0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 130, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 130, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 130, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 130, tame, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0,  906, 128-3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 -3  +76,shuchusen1, 52, 20 );
setEffMoveKey( spep_0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 128, shuchusen1, 0, 0 , 0 );


setEffScaleKey( spep_0, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_0-3 + 128, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_0, shuchusen1, 0 );
setEffRotateKey( spep_0-3 + 128, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_0-3 + 74, shuchusen1, 0 );
setEffAlphaKey( spep_0-3 + 75, shuchusen1, 0 );
setEffAlphaKey( spep_0-3 + 76, shuchusen1, 10 );
setEffAlphaKey( spep_0-3 + 78, shuchusen1, 45 );
setEffAlphaKey( spep_0-3 + 80, shuchusen1, 80 );
setEffAlphaKey( spep_0-3 + 82, shuchusen1, 115 );
setEffAlphaKey( spep_0-3 + 84, shuchusen1, 150 );
setEffAlphaKey( spep_0-3 + 86, shuchusen1, 185 );
setEffAlphaKey( spep_0-3 + 88, shuchusen1, 220 );
setEffAlphaKey( spep_0-3 + 90, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 128, shuchusen1, 255 );

--顔カットイン
--speff = entryEffect( spep_0 + 4  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 -4  +16, 190006, 72, 0x100, -1, 0, 0, 460);-- ゴゴゴゴ
setEffShake( spep_0 -4  +16,ctgogo, 72, 10 );
setEffMoveKey(  spep_0 -4  +16,  ctgogo,  0,  460);
setEffMoveKey(  spep_0 -4  +88,  ctgogo,  0,  460);

setEffAlphaKey( spep_0 -4  +16, ctgogo, 0 );
setEffAlphaKey( spep_0 -4  + 17, ctgogo, 255 );
setEffAlphaKey( spep_0 -4  + 18, ctgogo, 255 );
setEffAlphaKey( spep_0 -4  + 82, ctgogo, 255 );
setEffAlphaKey( spep_0 -4  + 84, ctgogo, 191 );
setEffAlphaKey( spep_0 -4  + 86, ctgogo, 112 );
setEffAlphaKey( spep_0 -4  + 88, ctgogo, 64 );

setEffRotateKey(  spep_0 -4  +16,  ctgogo,  0);
setEffRotateKey(  spep_0 -4  +88,  ctgogo,  0);

setEffScaleKey(  spep_0 -4  +16,  ctgogo,  -0.83,  0.83);
setEffScaleKey(  spep_0 -4  +78,  ctgogo,  -0.83,  0.83);
setEffScaleKey(  spep_0 -4  +88,  ctgogo, -1.47, 1.47 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 132, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 音 ** --
playSe( spep_0 + 12, 1018 );
se_1044 = playSe( spep_0 + 0, 1044 );
setSeVolume( spep_0 + 0, 1044, 56 );
playSe( spep_0 + 38, 1131 );
setSeVolume( spep_0 + 38, 1131, 71 );
se_0017 = playSe( spep_0 + 38, 17 );
setSeVolume( spep_0 + 38, 17, 79 );
playSe( spep_0 + 40, 1038 );
setSeVolume( spep_0 + 40, 1038, 56 );
se_1154 = playSe( spep_0 + 50, 1154 );
setSeVolume( spep_0 + 50, 1154, 71 );
se_1227 = playSe( spep_0 + 50, 1227 );
setSeVolume( spep_0 + 50, 1227, 0 );
setSeVolume( spep_0 + 106, 1227, 0 );
setSeVolume( spep_0 + 107, 1227, 1.84 );
setSeVolume( spep_0 + 108, 1227, 3.67 );
setSeVolume( spep_0 + 109, 1227, 5.51 );
setSeVolume( spep_0 + 110, 1227, 7.35 );
setSeVolume( spep_0 + 111, 1227, 9.19 );
setSeVolume( spep_0 + 112, 1227, 11.02 );
setSeVolume( spep_0 + 113, 1227, 12.86 );
setSeVolume( spep_0 + 114, 1227, 14.7 );
setSeVolume( spep_0 + 115, 1227, 16.53 );
setSeVolume( spep_0 + 116, 1227, 18.37 );
setSeVolume( spep_0 + 117, 1227, 20.21 );
setSeVolume( spep_0 + 118, 1227, 22.05 );
setSeVolume( spep_0 + 119, 1227, 23.88 );
setSeVolume( spep_0 + 120, 1227, 25.72 );
setSeVolume( spep_0 + 121, 1227, 27.56 );
setSeVolume( spep_0 + 122, 1227, 29.4 );
setSeVolume( spep_0 + 123, 1227, 31.23 );
setSeVolume( spep_0 + 124, 1227, 33.07 );
setSeVolume( spep_0 + 125, 1227, 34.91 );
setSeVolume( spep_0 + 126, 1227, 36.74 );
setSeVolume( spep_0 + 127, 1227, 38.58 );
setSeVolume( spep_0 + 128, 1227, 40.42 );
setSeVolume( spep_0 + 129, 1227, 42.26 );
setSeVolume( spep_0 + 130, 1227, 44.09 );
setSeVolume( spep_0 + 131, 1227, 45.93 );
setSeVolume( spep_0 + 132, 1227, 47.77 );
setSeVolume( spep_0 + 133, 1227, 49.6 );
setSeVolume( spep_0 + 134, 1227, 51.44 );
setSeVolume( spep_0 + 135, 1227, 53.28 );
setSeVolume( spep_0 + 136, 1227, 55.12 );
setSeVolume( spep_0 + 137, 1227, 56.95 );
setSeVolume( spep_0 + 138, 1227, 58.79 );
setSeVolume( spep_0 + 139, 1227, 60.63 );
setSeVolume( spep_0 + 140, 1227, 62.47 );
setSeVolume( spep_0 + 141, 1227, 64.3 );
setSeVolume( spep_0 + 142, 1227, 66.14 );
setSeVolume( spep_0 + 143, 1227, 67.98 );
setSeVolume( spep_0 + 144, 1227, 69.81 );
setSeVolume( spep_0 + 145, 1227, 71.65 );
setSeVolume( spep_0 + 146, 1227, 73.49 );
setSeVolume( spep_0 + 147, 1227, 75.33 );
setSeVolume( spep_0 + 148, 1227, 77.16 );
setSeVolume( spep_0 + 149, 1227, 79 );
setSeVolume( spep_0 + 150, 1227, 80.84 );
setSeVolume( spep_0 + 151, 1227, 82.67 );
setSeVolume( spep_0 + 152, 1227, 84.51 );
setSeVolume( spep_0 + 153, 1227, 86.35 );
setSeVolume( spep_0 + 154, 1227, 88.19 );
setSeVolume( spep_0 + 155, 1227, 90.02 );
setSeVolume( spep_0 + 156, 1227, 91.86 );
setSeVolume( spep_0 + 157, 1227, 93.7 );
setSeVolume( spep_0 + 158, 1227, 95.53 );
setSeVolume( spep_0 + 159, 1227, 97.37 );
setSeVolume( spep_0 + 160, 1227, 99.21 );
setSeVolume( spep_0 + 161, 1227, 101.05 );
setSeVolume( spep_0 + 162, 1227, 102.88 );
setSeVolume( spep_0 + 163, 1227, 104.72 );
setSeVolume( spep_0 + 164, 1227, 106.56 );
setSeVolume( spep_0 + 165, 1227, 108.4 );
setSeVolume( spep_0 + 166, 1227, 110.23 );
setSeVolume( spep_0 + 167, 1227, 112.07 );
setSeVolume( spep_0 + 168, 1227, 113.91 );
setSeVolume( spep_0 + 169, 1227, 115.74 );
setSeVolume( spep_0 + 170, 1227, 117.58 );
setSeVolume( spep_0 + 171, 1227, 119.42 );
setSeVolume( spep_0 + 172, 1227, 121.26 );
setSeVolume( spep_0 + 173, 1227, 123.09 );
setSeVolume( spep_0 + 174, 1227, 124.93 );
setSeVolume( spep_0 + 175, 1227, 126.77 );
setSeVolume( spep_0 + 176, 1227, 128.6 );
setSeVolume( spep_0 + 177, 1227, 130.44 );
setSeVolume( spep_0 + 178, 1227, 132.28 );
setSeVolume( spep_0 + 179, 1227, 134.12 );
setSeVolume( spep_0 + 180, 1227, 135.95 );
setSeVolume( spep_0 + 181, 1227, 137.79 );
setSeVolume( spep_0 + 182, 1227, 139.63 );
setSeVolume( spep_0 + 183, 1227, 141.47 );
setSeVolume( spep_0 + 184, 1227, 143.3 );
setSeVolume( spep_0 + 185, 1227, 145.14 );
setSeVolume( spep_0 + 186, 1227, 146.98 );
setSeVolume( spep_0 + 187, 1227, 148.81 );
setSeVolume( spep_0 + 188, 1227, 150.65 );
setSeVolume( spep_0 + 189, 1227, 152.49 );
setSeVolume( spep_0 + 190, 1227, 154.33 );
setSeVolume( spep_0 + 191, 1227, 156.16 );
setSeVolume( spep_0 + 192, 1227, 158 );
playSe( spep_0 + 53, 1072 );
playSe( spep_0 + 71, 49 );
playSe( spep_0 + 79, 8 );
setSeVolume( spep_0 + 79, 8, 79 );
playSe( spep_0 + 86, 1011 );
setSeVolume( spep_0 + 86, 1011, 71 );
playSe( spep_0 + 89, 1054 );
setSeVolume( spep_0 + 89, 1054, 56 );
playSe( spep_0 + 95, 1169 );
setSeVolume( spep_0 + 95, 1169, 79 );
se_1215 = playSe( spep_0 + 119, 1215 );
setSeVolume( spep_0 + 119, 1215, 0 );
setSeVolume( spep_0 + 172, 1215, 0 );
setSeVolume( spep_0 + 173, 1215, 3.57 );
setSeVolume( spep_0 + 174, 1215, 7.14 );
setSeVolume( spep_0 + 175, 1215, 10.71 );
setSeVolume( spep_0 + 176, 1215, 14.29 );
setSeVolume( spep_0 + 177, 1215, 17.86 );
setSeVolume( spep_0 + 178, 1215, 21.43 );
setSeVolume( spep_0 + 179, 1215, 25 );
setSeVolume( spep_0 + 180, 1215, 28.57 );
setSeVolume( spep_0 + 181, 1215, 32.14 );
setSeVolume( spep_0 + 182, 1215, 35.71 );
setSeVolume( spep_0 + 183, 1215, 39.29 );
setSeVolume( spep_0 + 184, 1215, 42.86 );
setSeVolume( spep_0 + 185, 1215, 46.43 );
setSeVolume( spep_0 + 186, 1215, 50 );
setSeVolume( spep_0 + 187, 1215, 53.57 );
setSeVolume( spep_0 + 188, 1215, 57.14 );
setSeVolume( spep_0 + 189, 1215, 60.71 );
setSeVolume( spep_0 + 190, 1215, 64.29 );
setSeVolume( spep_0 + 191, 1215, 67.86 );
setSeVolume( spep_0 + 192, 1215, 71.43 );
setSeVolume( spep_0 + 193, 1215, 75 );
setSeVolume( spep_0 + 194, 1215, 78.57 );
setSeVolume( spep_0 + 195, 1215, 82.14 );
setSeVolume( spep_0 + 196, 1215, 85.71 );
setSeVolume( spep_0 + 197, 1215, 89.29 );
setSeVolume( spep_0 + 198, 1215, 92.86 );
setSeVolume( spep_0 + 199, 1215, 96.43 );
setSeVolume( spep_0 + 200, 1215, 100 );
se_10441 = playSe( spep_0 + 128, 1044 );
setSeVolume( spep_0 + 128, 1044, 32 );


stopSe( spep_0 + 128, se_1044, 0 );
stopSe( spep_0 + 86, se_0017, 28 );
stopSe( spep_0 + 98, se_1154, 42 );

--白フェード
entryFade( spep_0 + 122, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+130

------------------------------------------------------
-- 気溜め〜突進
------------------------------------------------------
-- ** エフェクト等 ** --
ora_r = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, ora_r, 0, 0, 0 );
setEffMoveKey( spep_1 + 150, ora_r, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, ora_r, 1.0, 1.0 );
setEffScaleKey( spep_1 + 150, ora_r, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, ora_r, 0 );
setEffRotateKey( spep_1 + 150, ora_r, 0 );
setEffAlphaKey( spep_1 + 0, ora_r, 255 );
setEffAlphaKey( spep_1 + 150, ora_r, 255 );

-- ** エフェクト等 ** --
ora_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, ora_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 150, ora_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, ora_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 150, ora_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, ora_b, 0 );
setEffRotateKey( spep_1 + 150, ora_b, 0 );
setEffAlphaKey( spep_1 + 0, ora_b, 255 );
setEffAlphaKey( spep_1 + 150, ora_b, 255 );


b=100;
c=70;
--文字エントリー
ctgogogo2 = entryEffectLife( spep_1-3 + 50,  190006, 98, 0x100, -1, 0, -191.4+b, 242.5+c );
setEffShake( spep_1-3 + 50, ctgogogo2, 98, 10 );
setEffMoveKey( spep_1-3 + 50, ctgogogo2, -191.4+b, 242.5+c , 0 );
setEffMoveKey( spep_1-3 + 52, ctgogogo2, -189.6+b, 238.9+c , 0 );
setEffMoveKey( spep_1-3 + 54, ctgogogo2, -199+b, 249.6+c , 0 );
setEffMoveKey( spep_1-3 + 56, ctgogogo2, -196.5+b, 245.3+c , 0 );
setEffMoveKey( spep_1-3 + 58, ctgogogo2, -206.5+b, 256.7+c , 0 );
setEffMoveKey( spep_1-3 + 60, ctgogogo2, -203.4+b, 251.7+c , 0 );
setEffMoveKey( spep_1-3 + 62, ctgogogo2, -214.1+b, 263.8+c , 0 );
setEffMoveKey( spep_1-3 + 64, ctgogogo2, -210.4+b, 258+c , 0 );
setEffMoveKey( spep_1-3 + 66, ctgogogo2, -221.6+b, 270.9+c , 0 );
setEffMoveKey( spep_1-3 + 68, ctgogogo2, -217.2+b, 264.4+c , 0 );
setEffMoveKey( spep_1-3 + 70, ctgogogo2, -225.9+b, 276.5+c , 0 );
setEffMoveKey( spep_1-3 + 72, ctgogogo2, -218.5+b, 268.4+c , 0 );
setEffMoveKey( spep_1-3 + 74, ctgogogo2, -227.2+b, 280.6+c , 0 );
setEffMoveKey( spep_1-3 + 76, ctgogogo2, -219.6+b, 272.4+c , 0 );
setEffMoveKey( spep_1-3 + 78, ctgogogo2, -228.5+b, 284.7+c , 0 );
setEffMoveKey( spep_1-3 + 80, ctgogogo2, -220.9+b, 276.5+c , 0 );
setEffMoveKey( spep_1-3 + 82, ctgogogo2, -229.7+b, 288.8+c , 0 );
setEffMoveKey( spep_1-3 + 84, ctgogogo2, -222+b, 280.6+c , 0 );
setEffMoveKey( spep_1-3 + 86, ctgogogo2, -231+b, 293+c , 0 );
setEffMoveKey( spep_1-3 + 88, ctgogogo2, -223.2+b, 284.6+c , 0 );
setEffMoveKey( spep_1-3 + 90, ctgogogo2, -232.3+b, 297.1+c , 0 );
setEffMoveKey( spep_1-3 + 92, ctgogogo2, -224.4+b, 288.7+c , 0 );
setEffMoveKey( spep_1-3 + 94, ctgogogo2, -233.5+b, 301.2+c , 0 );
setEffMoveKey( spep_1-3 + 96, ctgogogo2, -225.6+b, 292.7+c , 0 );
setEffMoveKey( spep_1-3 + 98, ctgogogo2, -234.8+b, 305.3+c , 0 );
setEffMoveKey( spep_1-3 + 100, ctgogogo2, -226.7+b, 296.7+c , 0 );
setEffMoveKey( spep_1-3 + 102, ctgogogo2, -236+b, 309.4+c , 0 );
setEffMoveKey( spep_1-3 + 104, ctgogogo2, -227.9+b, 300.8+c , 0 );
setEffMoveKey( spep_1-3 + 106, ctgogogo2, -237.3+b, 313.5+c , 0 );
setEffMoveKey( spep_1-3 + 108, ctgogogo2, -229.1+b, 304.8+c , 0 );
setEffMoveKey( spep_1-3 + 110, ctgogogo2, -238.6+b, 317.6+c , 0 );
setEffMoveKey( spep_1-3 + 112, ctgogogo2, -230.3+b, 308.8+c , 0 );
setEffMoveKey( spep_1-3 + 114, ctgogogo2, -239.8+b, 321.7+c , 0 );
setEffMoveKey( spep_1-3 + 116, ctgogogo2, -231.4+b, 312.9+c , 0 );
setEffMoveKey( spep_1-3 + 118, ctgogogo2, -241+b, 325.8+c , 0 );
setEffMoveKey( spep_1-3 + 120, ctgogogo2, -232.6+b, 316.9+c , 0 );
setEffMoveKey( spep_1-3 + 122, ctgogogo2, -242.3+b, 329.9+c , 0 );
setEffMoveKey( spep_1-3 + 124, ctgogogo2, -233.7+b, 320.9+c , 0 );
setEffMoveKey( spep_1-3 + 126, ctgogogo2, -243.5+b, 333.9+c , 0 );
setEffMoveKey( spep_1-3 + 128, ctgogogo2, -234.9+b, 324.9+c , 0 );
setEffMoveKey( spep_1-3 + 130, ctgogogo2, -244.8+b, 338.1+c , 0 );
setEffMoveKey( spep_1-3 + 132, ctgogogo2, -236+b, 329+c , 0 );
setEffMoveKey( spep_1-3 + 134, ctgogogo2, -246+b, 342.1+c , 0 );
setEffMoveKey( spep_1-3 + 136, ctgogogo2, -237.3+b, 333+c , 0 );
setEffMoveKey( spep_1-3 + 138, ctgogogo2, -247.3+b, 346.3+c , 0 );
setEffMoveKey( spep_1-3 + 140, ctgogogo2, -238.4+b, 337.1+c , 0 );
setEffMoveKey( spep_1-3 + 142, ctgogogo2, -273.9+b, 377.1+c , 0 );
setEffMoveKey( spep_1-3 + 144, ctgogogo2, -287.8+b, 391.9+c , 0 );
setEffMoveKey( spep_1-3 + 146, ctgogogo2, -325.6+b, 434.7+c , 0 );
setEffMoveKey( spep_1-3 + 148, ctgogogo2, -337.2+b, 446.7+c , 0 );

a=0.4;

setEffScaleKey( spep_1-3 + 50, ctgogogo2, -0.67, 0.67 );
--setEffScaleKey( spep_1-3 + 52, ctgogogo2, 0.49+a, 0.49+a );
--setEffScaleKey( spep_1-3 + 54, ctgogogo2, 0.52+a, 0.52+a );
--setEffScaleKey( spep_1-3 + 56, ctgogogo2, 0.54+a, 0.54+a );
--setEffScaleKey( spep_1-3 + 58, ctgogogo2, 0.57+a, 0.57+a );
setEffScaleKey( spep_1-3 + 60, ctgogogo2, -0.6-a, 0.6+a );
setEffScaleKey( spep_1-3 + 62, ctgogogo2, -0.62-a, 0.62+a );
setEffScaleKey( spep_1-3 + 64, ctgogogo2, -0.65-a, 0.65+a );
setEffScaleKey( spep_1-3 + 66, ctgogogo2, -0.67-a, 0.67+a );
setEffScaleKey( spep_1-3 + 68, ctgogogo2, -0.7-a, 0.7+a );
setEffScaleKey( spep_1-3 + 70, ctgogogo2, -0.7-a, 0.7+a );
setEffScaleKey( spep_1-3 + 72, ctgogogo2, -0.71-a, 0.71+a );
setEffScaleKey( spep_1-3 + 78, ctgogogo2, -0.71-a, 0.71+a );
setEffScaleKey( spep_1-3 + 80, ctgogogo2, -0.72-a, 0.72+a );
setEffScaleKey( spep_1-3 + 86, ctgogogo2, -0.72-a, 0.72+a );
setEffScaleKey( spep_1-3 + 88, ctgogogo2, -0.73-a, 0.73+a );
setEffScaleKey( spep_1-3 + 92, ctgogogo2, -0.73-a, 0.73+a );
setEffScaleKey( spep_1-3 + 94, ctgogogo2, -0.74-a, 0.74+a );
setEffScaleKey( spep_1-3 + 100, ctgogogo2, -0.74-a, 0.74+a );
setEffScaleKey( spep_1-3 + 102, ctgogogo2, -0.75-a, 0.75+a );
setEffScaleKey( spep_1-3 + 106, ctgogogo2, -0.75-a, 0.75+a );
setEffScaleKey( spep_1-3 + 108, ctgogogo2, -0.76-a, 0.76+a );
setEffScaleKey( spep_1-3 + 114, ctgogogo2, -0.76-a, 0.76+a );
setEffScaleKey( spep_1-3 + 116, ctgogogo2, -0.77-a, 0.77+a );
setEffScaleKey( spep_1-3 + 122, ctgogogo2, -0.77-a, 0.77+a );
setEffScaleKey( spep_1-3 + 124, ctgogogo2, -0.78-a, 0.78+a );
setEffScaleKey( spep_1-3 + 128, ctgogogo2, -0.78-a, 0.78+a );
setEffScaleKey( spep_1-3 + 130, ctgogogo2, -0.79-a, 0.79+a );
setEffScaleKey( spep_1-3 + 136, ctgogogo2, -0.79-a, 0.79+a );
setEffScaleKey( spep_1-3 + 138, ctgogogo2, -0.8-a, 0.8+a );
setEffScaleKey( spep_1-3 + 140, ctgogogo2, -0.8-a, 0.8+a );
setEffScaleKey( spep_1-3 + 142, ctgogogo2, -0.9-a, 0.9+a );
setEffScaleKey( spep_1-3 + 144, ctgogogo2, -1-a, 1+a );
setEffScaleKey( spep_1-3 + 146, ctgogogo2, -1.1-a, 1.1+a );
setEffScaleKey( spep_1-3 + 148, ctgogogo2, -1.2-a, 1.2+a );

setEffRotateKey( spep_1-3 + 50, ctgogogo2, -25.8 );
setEffRotateKey( spep_1-3 + 52, ctgogogo2, -25.8 );
setEffRotateKey( spep_1-3 + 54, ctgogogo2, -25.9 );
setEffRotateKey( spep_1-3 + 56, ctgogogo2, -25.9 );
setEffRotateKey( spep_1-3 + 58, ctgogogo2, -26 );
setEffRotateKey( spep_1-3 + 60, ctgogogo2, -26 );
setEffRotateKey( spep_1-3 + 62, ctgogogo2, -26.1 );
setEffRotateKey( spep_1-3 + 66, ctgogogo2, -26.1 );
setEffRotateKey( spep_1-3 + 68, ctgogogo2, -26.2 );
setEffRotateKey( spep_1-3 + 70, ctgogogo2, -26.2 );
setEffRotateKey( spep_1-3 + 72, ctgogogo2, -26.3 );
setEffRotateKey( spep_1-3 + 74, ctgogogo2, -26.3 );
setEffRotateKey( spep_1-3 + 76, ctgogogo2, -26.4 );
setEffRotateKey( spep_1-3 + 80, ctgogogo2, -26.4 );
setEffRotateKey( spep_1-3 + 82, ctgogogo2, -26.5 );
setEffRotateKey( spep_1-3 + 84, ctgogogo2, -26.5 );
setEffRotateKey( spep_1-3 + 86, ctgogogo2, -26.6 );
setEffRotateKey( spep_1-3 + 88, ctgogogo2, -26.6 );
setEffRotateKey( spep_1-3 + 90, ctgogogo2, -26.7 );
setEffRotateKey( spep_1-3 + 94, ctgogogo2, -26.7 );
setEffRotateKey( spep_1-3 + 96, ctgogogo2, -26.8 );
setEffRotateKey( spep_1-3 + 98, ctgogogo2, -26.8 );
setEffRotateKey( spep_1-3 + 100, ctgogogo2, -26.9 );
setEffRotateKey( spep_1-3 + 102, ctgogogo2, -26.9 );
setEffRotateKey( spep_1-3 + 104, ctgogogo2, -27 );
setEffRotateKey( spep_1-3 + 108, ctgogogo2, -27 );
setEffRotateKey( spep_1-3 + 110, ctgogogo2, -27.1 );
setEffRotateKey( spep_1-3 + 112, ctgogogo2, -27.1 );
setEffRotateKey( spep_1-3 + 114, ctgogogo2, -27.2 );
setEffRotateKey( spep_1-3 + 116, ctgogogo2, -27.2 );
setEffRotateKey( spep_1-3 + 118, ctgogogo2, -27.3 );
setEffRotateKey( spep_1-3 + 122, ctgogogo2, -27.3 );
setEffRotateKey( spep_1-3 + 124, ctgogogo2, -27.4 );
setEffRotateKey( spep_1-3 + 126, ctgogogo2, -27.4 );
setEffRotateKey( spep_1-3 + 128, ctgogogo2, -27.5 );
setEffRotateKey( spep_1-3 + 130, ctgogogo2, -27.5 );
setEffRotateKey( spep_1-3 + 132, ctgogogo2, -27.6 );
setEffRotateKey( spep_1-3 + 136, ctgogogo2, -27.6 );
setEffRotateKey( spep_1-3 + 138, ctgogogo2, -27.7 );
setEffRotateKey( spep_1-3 + 148, ctgogogo2, -27.7 );

setEffAlphaKey( spep_1-3 + 50, ctgogogo2, 204 );
setEffAlphaKey( spep_1-3 + 52, ctgogogo2, 205 );
setEffAlphaKey( spep_1-3 + 54, ctgogogo2, 206 );
setEffAlphaKey( spep_1-3 + 56, ctgogogo2, 207 );
setEffAlphaKey( spep_1-3 + 58, ctgogogo2, 209 );
setEffAlphaKey( spep_1-3 + 60, ctgogogo2, 210 );
setEffAlphaKey( spep_1-3 + 62, ctgogogo2, 211 );
setEffAlphaKey( spep_1-3 + 64, ctgogogo2, 212 );
setEffAlphaKey( spep_1-3 + 66, ctgogogo2, 213 );
setEffAlphaKey( spep_1-3 + 68, ctgogogo2, 214 );
setEffAlphaKey( spep_1-3 + 70, ctgogogo2, 215 );
setEffAlphaKey( spep_1-3 + 72, ctgogogo2, 216 );
setEffAlphaKey( spep_1-3 + 74, ctgogogo2, 218 );
setEffAlphaKey( spep_1-3 + 76, ctgogogo2, 219 );
setEffAlphaKey( spep_1-3 + 78, ctgogogo2, 220 );
setEffAlphaKey( spep_1-3 + 80, ctgogogo2, 221 );
setEffAlphaKey( spep_1-3 + 82, ctgogogo2, 222 );
setEffAlphaKey( spep_1-3 + 84, ctgogogo2, 223 );
setEffAlphaKey( spep_1-3 + 86, ctgogogo2, 224 );
setEffAlphaKey( spep_1-3 + 88, ctgogogo2, 226 );
setEffAlphaKey( spep_1-3 + 90, ctgogogo2, 227 );
setEffAlphaKey( spep_1-3 + 92, ctgogogo2, 228 );
setEffAlphaKey( spep_1-3 + 94, ctgogogo2, 229 );
setEffAlphaKey( spep_1-3 + 96, ctgogogo2, 230 );
setEffAlphaKey( spep_1-3 + 98, ctgogogo2, 231 );
setEffAlphaKey( spep_1-3 + 100, ctgogogo2, 232 );
setEffAlphaKey( spep_1-3 + 102, ctgogogo2, 233 );
setEffAlphaKey( spep_1-3 + 104, ctgogogo2, 235 );
setEffAlphaKey( spep_1-3 + 106, ctgogogo2, 236 );
setEffAlphaKey( spep_1-3 + 108, ctgogogo2, 237 );
setEffAlphaKey( spep_1-3 + 110, ctgogogo2, 238 );
setEffAlphaKey( spep_1-3 + 112, ctgogogo2, 239 );
setEffAlphaKey( spep_1-3 + 114, ctgogogo2, 240 );
setEffAlphaKey( spep_1-3 + 116, ctgogogo2, 241 );
setEffAlphaKey( spep_1-3 + 118, ctgogogo2, 243 );
setEffAlphaKey( spep_1-3 + 120, ctgogogo2, 244 );
setEffAlphaKey( spep_1-3 + 122, ctgogogo2, 245 );
setEffAlphaKey( spep_1-3 + 124, ctgogogo2, 246 );
setEffAlphaKey( spep_1-3 + 126, ctgogogo2, 247 );
setEffAlphaKey( spep_1-3 + 128, ctgogogo2, 248 );
setEffAlphaKey( spep_1-3 + 130, ctgogogo2, 249 );
setEffAlphaKey( spep_1-3 + 132, ctgogogo2, 250 );
setEffAlphaKey( spep_1-3 + 134, ctgogogo2, 252 );
setEffAlphaKey( spep_1-3 + 136, ctgogogo2, 253 );
setEffAlphaKey( spep_1-3 + 138, ctgogogo2, 254 );
setEffAlphaKey( spep_1-3 + 140, ctgogogo2, 255 );
setEffAlphaKey( spep_1-3 + 142, ctgogogo2, 195 );
setEffAlphaKey( spep_1-3 + 144, ctgogogo2, 135 );
setEffAlphaKey( spep_1-3 + 146, ctgogogo2, 75 );
setEffAlphaKey( spep_1-3 + 148, ctgogogo2, 15 );

--集中線
shuchusen2 = entryEffectLife( spep_1-3 + 38,  906, 110, 0x100, -1, 0, 107.5, 116 );
setEffShake( spep_1-3 + 38, shuchusen2, 110, 20 );
setEffMoveKey( spep_1-3 + 38, shuchusen2, 107.5, 116 , 0 );
setEffMoveKey( spep_1-3 + 148, shuchusen2, 107.5, 116 , 0 );

setEffScaleKey( spep_1-3 + 38, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_1-3 + 148, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_1-3 + 38, shuchusen2, 180 );
setEffRotateKey( spep_1-3 + 148, shuchusen2, 180 );

setEffAlphaKey( spep_1-3 + 38, shuchusen2, 255 );
setEffAlphaKey( spep_1-3 + 148, shuchusen2, 255 );

--文字エントリー
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-3 + 148, 1, 0 );

changeAnime( spep_1 + 0, 1, 117 );

setMoveKey( spep_1 + 0, 1, 287.6, -59.3 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 275.7, -6.3 , 0 );
setMoveKey( spep_1-3 + 4, 1, 264.9, 41.3 , 0 );
setMoveKey( spep_1-3 + 5, 1, 264.9, 41.3 , 0 );
setMoveKey( spep_1-3 + 6, 1, 255.3, 83.9 , 0 );
setMoveKey( spep_1-3 + 7, 1, 255.3, 83.9 , 0 );
setMoveKey( spep_1-3 + 8, 1, 246.6, 121.9 , 0 );
setMoveKey( spep_1-3 + 9, 1, 246.6, 121.9 , 0 );
setMoveKey( spep_1-3 + 10, 1, 238.9, 155.3 , 0 );
setMoveKey( spep_1-3 + 11, 1, 238.9, 155.3 , 0 );
setMoveKey( spep_1-3 + 12, 1, 232.2, 184.6 , 0 );
setMoveKey( spep_1-3 + 13, 1, 232.2, 184.6 , 0 );
setMoveKey( spep_1-3 + 14, 1, 226.2, 210 , 0 );
setMoveKey( spep_1-3 + 15, 1, 226.2, 210 , 0 );
setMoveKey( spep_1-3 + 16, 1, 221.1, 231.8 , 0 );
setMoveKey( spep_1-3 + 17, 1, 221.1, 231.8 , 0 );
setMoveKey( spep_1-3 + 18, 1, 216.7, 250.2 , 0 );
setMoveKey( spep_1-3 + 19, 1, 216.7, 250.2 , 0 );
setMoveKey( spep_1-3 + 20, 1, 213, 265.6 , 0 );
setMoveKey( spep_1-3 + 21, 1, 213, 265.6 , 0 );
setMoveKey( spep_1-3 + 22, 1, 209.9, 278.2 , 0 );
setMoveKey( spep_1-3 + 23, 1, 209.9, 278.2 , 0 );
setMoveKey( spep_1-3 + 24, 1, 207.4, 288.3 , 0 );
setMoveKey( spep_1-3 + 25, 1, 207.4, 288.3 , 0 );
setMoveKey( spep_1-3 + 26, 1, 205.4, 296.1 , 0 );
setMoveKey( spep_1-3 + 27, 1, 205.4, 296.1 , 0 );
setMoveKey( spep_1-3 + 28, 1, 203.9, 302 , 0 );
setMoveKey( spep_1-3 + 29, 1, 203.9, 302 , 0 );
setMoveKey( spep_1-3 + 30, 1, 202.7, 306.3 , 0 );
setMoveKey( spep_1-3 + 31, 1, 202.7, 306.3 , 0 );
setMoveKey( spep_1-3 + 32, 1, 201.9, 309.1 , 0 );
setMoveKey( spep_1-3 + 33, 1, 201.9, 309.1 , 0 );
setMoveKey( spep_1-3 + 34, 1, 201.4, 310.8 , 0 );
setMoveKey( spep_1-3 + 35, 1, 201.4, 310.8 , 0 );
setMoveKey( spep_1-3 + 36, 1, 201.1, 311.7 , 0 );
setMoveKey( spep_1-3 + 37, 1, 201.1, 311.7 , 0 );
setMoveKey( spep_1-3 + 38, 1, 201, 312.1 , 0 );
setMoveKey( spep_1 + 50, 1, 201, 312.1 , 0 );

setScaleKey( spep_1 + 0, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 50, 1, 0.8, 0.8 );

setRotateKey( spep_1 + 0, 1, -3.5 );
--setRotateKey( spep_1-3 + 2, 1, -3.6 );
setRotateKey( spep_1-3 + 4, 1, -3.7 );
setRotateKey( spep_1-3 + 6, 1, -3.9 );
setRotateKey( spep_1-3 + 8, 1, -4 );
setRotateKey( spep_1-3 + 10, 1, -4.1 );
setRotateKey( spep_1-3 + 12, 1, -4.1 );
setRotateKey( spep_1-3 + 14, 1, -4.2 );
setRotateKey( spep_1-3 + 16, 1, -4.3 );
setRotateKey( spep_1-3 + 18, 1, -4.3 );
setRotateKey( spep_1-3 + 20, 1, -4.4 );
setRotateKey( spep_1-3 + 26, 1, -4.4 );
setRotateKey( spep_1-3 + 28, 1, -4.5 );
setRotateKey( spep_1 + 50, 1, -4.5 );

setAlphaKey( spep_1 + 0, 1, 255 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, se_1215, 0 );
    stopSe( SP_dodge - 12, se_1227, 0 );
    stopSe( SP_dodge - 12, se_10441, 0 );

    pauseAll( SP_dodge, 67 );

    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    --敵の固定
    setMoveKey( SP_dodge +9, 1, 201, 312.1 , 0 );
    setScaleKey( SP_dodge+9, 1, 0.8, 0.8 );
    setRotateKey( SP_dodge+9, 1, -4.5 );

    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
setMoveKey( spep_1-3 + 58, 1, 201, 312.1 , 0 );
setMoveKey( spep_1-3 + 60, 1, 201, 312.2 , 0 );
setMoveKey( spep_1-3 + 62, 1, 201.6, 313 , 0 );
setMoveKey( spep_1-3 + 64, 1, 202.1, 313.9 , 0 );
setMoveKey( spep_1-3 + 66, 1, 202.6, 314.7 , 0 );
setMoveKey( spep_1-3 + 68, 1, 203.1, 315.5 , 0 );
setMoveKey( spep_1-3 + 70, 1, 203.5, 316.3 , 0 );
setMoveKey( spep_1-3 + 72, 1, 204, 317 , 0 );
setMoveKey( spep_1-3 + 74, 1, 204.4, 317.7 , 0 );
setMoveKey( spep_1-3 + 76, 1, 204.9, 318.4 , 0 );
setMoveKey( spep_1-3 + 78, 1, 205.3, 319.1 , 0 );
setMoveKey( spep_1-3 + 80, 1, 205.7, 319.7 , 0 );
setMoveKey( spep_1-3 + 82, 1, 206, 320.4 , 0 );
setMoveKey( spep_1-3 + 84, 1, 206.4, 321 , 0 );
setMoveKey( spep_1-3 + 86, 1, 206.7, 321.5 , 0 );
setMoveKey( spep_1-3 + 88, 1, 207.1, 322.1 , 0 );
setMoveKey( spep_1-3 + 90, 1, 207.4, 322.6 , 0 );
setMoveKey( spep_1-3 + 92, 1, 207.7, 323 , 0 );
setMoveKey( spep_1-3 + 94, 1, 207.9, 323.5 , 0 );
setMoveKey( spep_1-3 + 96, 1, 208.2, 323.9 , 0 );
setMoveKey( spep_1-3 + 98, 1, 208.5, 324.3 , 0 );
setMoveKey( spep_1-3 + 100, 1, 208.7, 324.7 , 0 );
setMoveKey( spep_1-3 + 102, 1, 208.9, 325.1 , 0 );
setMoveKey( spep_1-3 + 104, 1, 209.1, 325.4 , 0 );
setMoveKey( spep_1-3 + 106, 1, 209.3, 325.7 , 0 );
setMoveKey( spep_1-3 + 108, 1, 209.5, 326 , 0 );
setMoveKey( spep_1-3 + 110, 1, 209.6, 326.2 , 0 );
setMoveKey( spep_1-3 + 112, 1, 209.7, 326.4 , 0 );
setMoveKey( spep_1-3 + 114, 1, 209.9, 326.6 , 0 );
setMoveKey( spep_1-3 + 116, 1, 210, 326.8 , 0 );
setMoveKey( spep_1-3 + 118, 1, 210.1, 327 , 0 );
setMoveKey( spep_1-3 + 120, 1, 210.1, 327.1 , 0 );
setMoveKey( spep_1-3 + 122, 1, 210.2, 327.2 , 0 );
setMoveKey( spep_1-3 + 124, 1, 210.2, 327.2 , 0 );
setMoveKey( spep_1-3 + 126, 1, 210.2, 327.3 , 0 );
setMoveKey( spep_1-3 + 128, 1, 210.3, 327.3 , 0 );
setMoveKey( spep_1-3 + 130, 1, 210.4, 327.6 , 0 );
setMoveKey( spep_1-3 + 132, 1, 211.2, 329.6 , 0 );
setMoveKey( spep_1-3 + 134, 1, 213.5, 335.2 , 0 );
setMoveKey( spep_1-3 + 136, 1, 218, 346.1 , 0 );
setMoveKey( spep_1-3 + 138, 1, 225.3, 364 , 0 );
setMoveKey( spep_1-3 + 140, 1, 236.3, 390.7 , 0 );
setMoveKey( spep_1-3 + 142, 1, 251.6, 427.9 , 0 );
setMoveKey( spep_1-3 + 144, 1, 271.9, 477.5 , 0 );
setMoveKey( spep_1-3 + 146, 1, 298.1, 541.2 , 0 );
setMoveKey( spep_1-3 + 148, 1, 330.7, 620.7 , 0 );

setScaleKey( spep_1-3 + 64, 1, 0.8, 0.8 );
setScaleKey( spep_1-3 + 66, 1, 0.81, 0.81 );
setScaleKey( spep_1-3 + 74, 1, 0.81, 0.81 );
setScaleKey( spep_1-3 + 76, 1, 0.82, 0.82 );
setScaleKey( spep_1-3 + 86, 1, 0.82, 0.82 );
setScaleKey( spep_1-3 + 88, 1, 0.83, 0.83 );
setScaleKey( spep_1-3 + 102, 1, 0.83, 0.83 );
setScaleKey( spep_1-3 + 104, 1, 0.84, 0.84 );
setScaleKey( spep_1-3 + 132, 1, 0.84, 0.84 );
setScaleKey( spep_1-3 + 134, 1, 0.85, 0.85 );
setScaleKey( spep_1-3 + 136, 1, 0.86, 0.86 );
setScaleKey( spep_1-3 + 138, 1, 0.88, 0.87 );
setScaleKey( spep_1-3 + 140, 1, 0.9, 0.9 );
setScaleKey( spep_1-3 + 142, 1, 0.94, 0.94 );
setScaleKey( spep_1-3 + 144, 1, 0.98, 0.98 );
setScaleKey( spep_1-3 + 146, 1, 1.04, 1.04 );
setScaleKey( spep_1-3 + 148, 1, 1.12, 1.12 );

setRotateKey( spep_1-3 + 148, 1, -4.5 );
--SE
stopSe( spep_1 + 141, se_1215, 51 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 152, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1 + 140, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+150;
------------------------------------------------------
-- 気だめ　石が浮き上がる
------------------------------------------------------
-- ** エフェクト等 ** --
tame2 = entryEffect( spep_2 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame2, 0, 0, 0 );
setEffMoveKey( spep_2 + 90, tame2, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tame2, -1.0, 1.0 );
setEffScaleKey( spep_2 + 90, tame2, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame2, 0 );
setEffRotateKey( spep_2 + 90, tame2, 0 );
setEffAlphaKey( spep_2 + 0, tame2, 255 );
setEffAlphaKey( spep_2 + 90, tame2, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_2 + 0,  906, 88, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2 + 0, shuchusen3, 88, 20 );
setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 88, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_2 + 88, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen3, 0 );
setEffRotateKey( spep_2 + 88, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 88, shuchusen3, 255 );

--文字エントリー
ctgogogo3 = entryEffectLife( spep_2 + 0,  190006, 78, 0x100, -1, 0, 435, 0 );
setEffShake( spep_2 + 0, ctgogogo3, 78, 10 );
setEffMoveKey( spep_2 + 0, ctgogogo3, 0, 435 , 0 );
setEffMoveKey( spep_2 + 78, ctgogogo3, 0, 435 , 0 );

d=0.3;
setEffScaleKey( spep_2 + 0, ctgogogo3, -0.55-d, 0.55+d );
setEffScaleKey( spep_2 + 68, ctgogogo3, -0.55-d, 0.55+d );
setEffScaleKey( spep_2 + 70, ctgogogo3, -0.64-d, 0.64+d );
setEffScaleKey( spep_2 + 72, ctgogogo3, -0.73-d, 0.73+d );
setEffScaleKey( spep_2 + 74, ctgogogo3, -0.82-d, 0.82+d );
setEffScaleKey( spep_2 + 76, ctgogogo3, -0.91-d, 0.91+d );
setEffScaleKey( spep_2 + 78, ctgogogo3, -1.1-d, 1.1+d );

setEffRotateKey( spep_2 + 0, ctgogogo3, 0 );
setEffRotateKey( spep_2 + 78, ctgogogo3, 0 );

setEffAlphaKey( spep_2 + 0, ctgogogo3, 255 );
setEffAlphaKey( spep_2 + 68, ctgogogo3, 255 );
setEffAlphaKey( spep_2 + 70, ctgogogo3, 204 );
setEffAlphaKey( spep_2 + 72, ctgogogo3, 153 );
setEffAlphaKey( spep_2 + 74, ctgogogo3, 102 );
setEffAlphaKey( spep_2 + 76, ctgogogo3, 51 );
setEffAlphaKey( spep_2 + 78, ctgogogo3, 0 );

--SE
se_1044 = playSe( spep_2 + 4, 1044 );
se_1214 = playSe( spep_2 + 6, 1214 );
setSeVolume( spep_2 + 6, 1214, 141 );
se_1147 = playSe( spep_2 + 7, 1147 );
setSeVolume( spep_2 + 7, 1147, 40 );

stopSe( spep_2 + 76, se_1227, 26 );
stopSe( spep_2 + 4, se_10441, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 92, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_2 + 82, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3=spep_2+90;

--------------------------------------
--カードカットイン(94F)
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
stopSe( spep_3 + 2, se_1044, 0 );
stopSe( spep_3 + 2, se_1214, 0 );
stopSe( spep_3 + 2, se_1147, 0 );

--白フェード
entryFade( spep_3 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
-- 着弾→爆発　敵吹っ飛ぶ
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_4 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_4 + 100, beam, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, beam, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam, 0 );
setEffRotateKey( spep_4 + 100, beam, 0 );
setEffAlphaKey( spep_4 + 0, beam, 255 );
setEffAlphaKey( spep_4 + 100, beam, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_4 + 48,  10012, 48, 0x100, -1, 0, 36.9, 418.4 );
setEffShake( spep_4 + 48, ctzuo, 48, 10 );
setEffMoveKey( spep_4 + 48, ctzuo, 36.9, 418.4 , 0 );
--setEffMoveKey( spep_4 + 50, ctzuo, 55.2, 418.1 , 0 );
setEffMoveKey( spep_4 + 52, ctzuo, 68.5, 434.9 , 0 );
setEffMoveKey( spep_4 + 54, ctzuo, 105.5, 445.2 , 0 );
setEffMoveKey( spep_4 + 56, ctzuo, 80.6, 449.1 , 0 );
setEffMoveKey( spep_4 + 58, ctzuo, 88.6, 441.9 , 0 );
setEffMoveKey( spep_4 + 60, ctzuo, 63.1, 446 , 0 );
setEffMoveKey( spep_4 + 62, ctzuo, 71.8, 438.5 , 0 );
setEffMoveKey( spep_4 + 64, ctzuo, 45.6, 442.9 , 0 );
setEffMoveKey( spep_4 + 66, ctzuo, 55, 435.1 , 0 );
setEffMoveKey( spep_4 + 68, ctzuo, 28.1, 439.7 , 0 );
setEffMoveKey( spep_4 + 70, ctzuo, 38.2, 431.7 , 0 );
setEffMoveKey( spep_4 + 72, ctzuo, 10.6, 436.6 , 0 );
setEffMoveKey( spep_4 + 74, ctzuo, 21.4, 428.4 , 0 );
setEffMoveKey( spep_4 + 76, ctzuo, -6.9, 433.4 , 0 );
setEffMoveKey( spep_4 + 78, ctzuo, 4.6, 425 , 0 );
setEffMoveKey( spep_4 + 80, ctzuo, -24.4, 430.3 , 0 );
setEffMoveKey( spep_4 + 82, ctzuo, -12.1, 421.6 , 0 );
setEffMoveKey( spep_4 + 84, ctzuo, -41.9, 427.2 , 0 );
setEffMoveKey( spep_4 + 86, ctzuo, -28.9, 418.3 , 0 );
setEffMoveKey( spep_4 + 88, ctzuo, -59.4, 424 , 0 );
setEffMoveKey( spep_4 + 90, ctzuo, -45.7, 414.9 , 0 );
setEffMoveKey( spep_4 + 92, ctzuo, -77, 421 , 0 );
setEffMoveKey( spep_4 + 94, ctzuo, -126.2, 503.9 , 0 );
setEffMoveKey( spep_4 + 96, ctzuo, -198.3, 594.6 , 0 );

e=1.45;
setEffScaleKey( spep_4 + 48, ctzuo, 0.82, 0.82);
--setEffScaleKey( spep_4 + 50, ctzuo, 0.27+e, 0.27+e );
--setEffScaleKey( spep_4 + 52, ctzuo, 0.43+e, 0.43+e );
setEffScaleKey( spep_4 + 54, ctzuo, 0.6+e, 0.6+e );
setEffScaleKey( spep_4 + 56, ctzuo, 0.61+e, 0.61+e );
setEffScaleKey( spep_4 + 58, ctzuo, 0.63+e, 0.63+e );
setEffScaleKey( spep_4 + 60, ctzuo, 0.64+e, 0.64+e );
setEffScaleKey( spep_4 + 62, ctzuo, 0.65+e, 0.65+e );
setEffScaleKey( spep_4 + 64, ctzuo, 0.67+e, 0.67+e );
setEffScaleKey( spep_4 + 66, ctzuo, 0.68+e, 0.68+e );
setEffScaleKey( spep_4 + 68, ctzuo, 0.69+e, 0.69+e );
setEffScaleKey( spep_4 + 70, ctzuo, 0.71+e, 0.71+e );
setEffScaleKey( spep_4 + 72, ctzuo, 0.72+e, 0.72+e );
setEffScaleKey( spep_4 + 74, ctzuo, 0.73+e, 0.73+e );
setEffScaleKey( spep_4 + 76, ctzuo, 0.74+e, 0.74+e );
setEffScaleKey( spep_4 + 78, ctzuo, 0.76+e, 0.76+e );
setEffScaleKey( spep_4 + 80, ctzuo, 0.77+e, 0.77+e );
setEffScaleKey( spep_4 + 82, ctzuo, 0.78+e, 0.78+e );
setEffScaleKey( spep_4 + 84, ctzuo, 0.8+e, 0.8+e );
setEffScaleKey( spep_4 + 86, ctzuo, 0.81+e, 0.81+e );
setEffScaleKey( spep_4 + 88, ctzuo, 0.82+e, 0.82+e );
setEffScaleKey( spep_4 + 90, ctzuo, 0.84+e, 0.84+e );
setEffScaleKey( spep_4 + 92, ctzuo, 0.85+e, 0.85+e );
setEffScaleKey( spep_4 + 94, ctzuo, 1.43+e, 1.43+e );
setEffScaleKey( spep_4 + 96, ctzuo, 2+e, 2+e );

setEffRotateKey( spep_4 + 48, ctzuo, -18 );
setEffRotateKey( spep_4 + 50, ctzuo, -16.8 );
setEffRotateKey( spep_4 + 52, ctzuo, -11.5 );
setEffRotateKey( spep_4 + 54, ctzuo, -6.3 );
setEffRotateKey( spep_4 + 96, ctzuo, -6.3 );

setEffAlphaKey( spep_4 + 48, ctzuo, 40 );
setEffAlphaKey( spep_4 + 50, ctzuo, 92 );
setEffAlphaKey( spep_4 + 52, ctzuo, 173 );
setEffAlphaKey( spep_4 + 54, ctzuo, 255 );
setEffAlphaKey( spep_4 + 92, ctzuo, 255 );
setEffAlphaKey( spep_4 + 94, ctzuo, 128 );
setEffAlphaKey( spep_4 + 96, ctzuo, 0 );

--SE
se_1231 = playSe( spep_4 + 6, 1231 );
setSeVolume( spep_4 + 6, 1231, 158 );
se_1043 = playSe( spep_4 + 8, 1043 );
setSeVolume( spep_4 + 8, 1043, 89 );
playSe( spep_4 + 37, 1003 );
setSeVolume( spep_4 + 37, 1003, 126 );
playSe( spep_4 + 47, 1027 );
setSeVolume( spep_4 + 47, 1027, 71 );
playSe( spep_4 + 47, 1145 );

stopSe( spep_4 + 46, se_1231, 16 );
stopSe( spep_4 + 49, se_1043, 13 );

--白フェード
entryFade( spep_4 + 44, 0, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 92, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 102, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_5=spep_4+100;
------------------------------------------------------
-- 着弾→爆発　敵吹っ飛ぶ
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 80, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 80, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 80, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 80, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_5 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 80, hit_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 80, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 80, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 80, hit_b, 255 );

setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5-3 + 58, 1, 0 );
changeAnime( spep_5 + 0, 1, 104 );
changeAnime( spep_5-3 + 22, 1, 108 );
changeAnime( spep_5-3 + 26, 1, 106 );
changeAnime( spep_5-3 + 32, 1, 105 );

setMoveKey( spep_5 + 0, 1, -7.1, -11.4 , 0 );
--setMoveKey( spep_5-3 + 2, 1, -6.6, -3.4 , 0 );
setMoveKey( spep_5-3 + 4, 1, -6.1, 4.5 , 0 );
setMoveKey( spep_5-3 + 6, 1, -5.7, 12.5 , 0 );
setMoveKey( spep_5-3 + 8, 1, -5.2, 20.5 , 0 );
setMoveKey( spep_5-3 + 10, 1, -4.8, 28.5 , 0 );
setMoveKey( spep_5-3 + 12, 1, -4.3, 36.5 , 0 );
setMoveKey( spep_5-3 + 14, 1, -3.9, 44.5 , 0 );
setMoveKey( spep_5-3 + 16, 1, -3.4, 52.5 , 0 );
setMoveKey( spep_5-3 + 18, 1, -3, 60.5 , 0 );
setMoveKey( spep_5-3 + 20, 1, -3.7, 74.8 , 0 );
setMoveKey( spep_5-3 + 21, 1, -3.7, 74.8 , 0 );

setMoveKey( spep_5-3 + 22, 1, 15.4, 99.1 , 0 );
setMoveKey( spep_5-3 + 24, 1, 10.4, 64.2 , 0 );
setMoveKey( spep_5-3 + 25, 1, 10.4, 64.2 , 0 );

setMoveKey( spep_5-3 + 26, 1, 1.4, 72.3 , 0 );
setMoveKey( spep_5-3 + 31, 1, 1.4, 72.3 , 0 );

setMoveKey( spep_5-3 + 32, 1, 82.3, -4.3 , 0 );
setMoveKey( spep_5-3 + 34, 1, 83.1, 106 , 0 );
setMoveKey( spep_5-3 + 36, 1, 104.8, 194.2 , 0 );
setMoveKey( spep_5-3 + 38, 1, 121.7, 271.3 , 0 );
setMoveKey( spep_5-3 + 40, 1, 163.7, 340.6 , 0 );
setMoveKey( spep_5-3 + 42, 1, 197.1, 402.7 , 0 );
setMoveKey( spep_5-3 + 44, 1, 234, 444.2 , 0 );
setMoveKey( spep_5-3 + 46, 1, 261.9, 481.7 , 0 );
setMoveKey( spep_5-3 + 48, 1, 306.2, 515.9 , 0 );
setMoveKey( spep_5-3 + 50, 1, 347.3, 561.6 , 0 );
setMoveKey( spep_5-3 + 52, 1, 389.3, 593.2 , 0 );
setMoveKey( spep_5-3 + 54, 1, 421.9, 623 , 0 );
setMoveKey( spep_5-3 + 56, 1, 465, 651.3 , 0 );
setMoveKey( spep_5-3 + 58, 1, 495.5, 676.4 , 0 );


setScaleKey( spep_5 + 0, 1, 1.1, 1.1 );
--setScaleKey( spep_5-3 + 2, 1, 1.12, 1.12 );
setScaleKey( spep_5-3 + 4, 1, 1.15, 1.15 );
setScaleKey( spep_5-3 + 6, 1, 1.17, 1.17 );
setScaleKey( spep_5-3 + 8, 1, 1.2, 1.2 );
setScaleKey( spep_5-3 + 10, 1, 1.22, 1.22 );
setScaleKey( spep_5-3 + 12, 1, 1.25, 1.25 );
setScaleKey( spep_5-3 + 14, 1, 1.27, 1.27 );
setScaleKey( spep_5-3 + 16, 1, 1.3, 1.3 );
setScaleKey( spep_5-3 + 18, 1, 1.32, 1.32 );
setScaleKey( spep_5-3 + 20, 1, 1.43, 1.43 );
setScaleKey( spep_5-3 + 21, 1, 1.43, 1.43 );

setScaleKey( spep_5-3 + 22, 1, 1.54, 1.54 );
setScaleKey( spep_5-3 + 24, 1, 1.35, 1.35 );
setScaleKey( spep_5-3 + 25, 1, 1.35, 1.35 );

setScaleKey( spep_5-3 + 26, 1, 1.15, 1.15 );
setScaleKey( spep_5-3 + 31, 1, 1.15, 1.15 );

setScaleKey( spep_5-3 + 32, 1, 1.45, 1.45 );
setScaleKey( spep_5-3 + 34, 1, 1.28, 1.28 );
setScaleKey( spep_5-3 + 36, 1, 1.22, 1.22 );
setScaleKey( spep_5-3 + 38, 1, 1.16, 1.16 );
setScaleKey( spep_5-3 + 40, 1, 1.1, 1.1 );
setScaleKey( spep_5-3 + 42, 1, 1.04, 1.04 );
setScaleKey( spep_5-3 + 44, 1, 0.99, 0.99 );
setScaleKey( spep_5-3 + 46, 1, 0.94, 0.94 );
setScaleKey( spep_5-3 + 48, 1, 0.88, 0.88 );
setScaleKey( spep_5-3 + 50, 1, 0.84, 0.84 );
setScaleKey( spep_5-3 + 52, 1, 0.81, 0.81 );
setScaleKey( spep_5-3 + 54, 1, 0.77, 0.77 );
setScaleKey( spep_5-3 + 56, 1, 0.73, 0.73 );
setScaleKey( spep_5-3 + 58, 1, 0.69, 0.69 );


setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5-3 + 21, 1, 0 );

setRotateKey( spep_5-3 + 22, 1, 0 );
setRotateKey( spep_5-3 + 25, 1, 0 );

setRotateKey( spep_5-3 + 26, 1, -55.9 );
setRotateKey( spep_5-3 + 31, 1, -55.9 );

setRotateKey( spep_5-3 + 32, 1, 19.8 );
setRotateKey( spep_5-3 + 58, 1, 19.8 );

setAlphaKey( spep_5 + 0, 1, 255 );
setAlphaKey( spep_5-3 + 32, 1, 255 );
setAlphaKey( spep_5-3 + 34, 1, 237 );
setAlphaKey( spep_5-3 + 36, 1, 219 );
setAlphaKey( spep_5-3 + 38, 1, 200 );
setAlphaKey( spep_5-3 + 40, 1, 182 );
setAlphaKey( spep_5-3 + 42, 1, 164 );
setAlphaKey( spep_5-3 + 44, 1, 146 );
setAlphaKey( spep_5-3 + 46, 1, 128 );
setAlphaKey( spep_5-3 + 48, 1, 109 );
setAlphaKey( spep_5-3 + 50, 1, 91 );
setAlphaKey( spep_5-3 + 52, 1, 73 );
setAlphaKey( spep_5-3 + 54, 1, 55 );
setAlphaKey( spep_5-3 + 56, 1, 36 );
setAlphaKey( spep_5-3 + 58, 1, 18 );
setAlphaKey( spep_5-3 + 60, 1, 18 );
setAlphaKey( spep_5-3 + 80, 1, 255 );

--文字エントリー
ctdon = entryEffectLife( spep_5-3 + 24,  10019, 24, 0x100, -1, 0, -24.4, 268.8 );

setEffMoveKey( spep_5-3 + 24, ctdon, -24.4, 268.8 , 0 );
setEffMoveKey( spep_5-3 + 26, ctdon, -6.4, 302.9 , 0 );
setEffMoveKey( spep_5-3 + 28, ctdon, -6.5, 303 , 0 );
setEffMoveKey( spep_5-3 + 30, ctdon, -6.6, 303 , 0 );
setEffMoveKey( spep_5-3 + 32, ctdon, -6.4, 302.9 , 0 );
setEffMoveKey( spep_5-3 + 34, ctdon, -6.4, 302.9 , 0 );
setEffMoveKey( spep_5-3 + 36, ctdon, -6.5, 302.9 , 0 );
setEffMoveKey( spep_5-3 + 38, ctdon, -6.6, 303 , 0 );
setEffMoveKey( spep_5-3 + 40, ctdon, -6.5, 303 , 0 );
setEffMoveKey( spep_5-3 + 42, ctdon, -6.5, 303 , 0 );
setEffMoveKey( spep_5-3 + 44, ctdon, -6.5, 302.9 , 0 );
setEffMoveKey( spep_5-3 + 48, ctdon, -6.5, 302.9 , 0 );

setEffScaleKey( spep_5-3 + 24, ctdon, 2, 2 );
setEffScaleKey( spep_5-3 + 26, ctdon, 3.5, 3.5 );
setEffScaleKey( spep_5-3 + 28, ctdon, 2.36, 2.36 );
setEffScaleKey( spep_5-3 + 30, ctdon, 2.2, 2.2 );
setEffScaleKey( spep_5-3 + 32, ctdon, 2.9, 2.9 );
setEffScaleKey( spep_5-3 + 34, ctdon, 3, 3 );
setEffScaleKey( spep_5-3 + 36, ctdon, 2.3, 2.3 );
setEffScaleKey( spep_5-3 + 38, ctdon, 2.2, 2.2 );
setEffScaleKey( spep_5-3 + 40, ctdon, 2.48, 2.48 );
setEffScaleKey( spep_5-3 + 42, ctdon, 2.5, 2.5 );
setEffScaleKey( spep_5-3 + 44, ctdon, 2.22, 2.22 );
setEffScaleKey( spep_5-3 + 46, ctdon, 2.05, 2.05 );
setEffScaleKey( spep_5-3 + 48, ctdon, 2, 2 );

setEffRotateKey( spep_5-3 + 24, ctdon, 10.5 );
setEffRotateKey( spep_5-3 + 48, ctdon, 10.5 );

setEffAlphaKey( spep_5-3 + 24, ctdon, 255 );
setEffAlphaKey( spep_5-3 + 42, ctdon, 255 );
setEffAlphaKey( spep_5-3 + 44, ctdon, 119 );
setEffAlphaKey( spep_5-3 + 46, ctdon, 37 );
setEffAlphaKey( spep_5-3 + 48, ctdon, 10 );

--SE
playSe( spep_5 + 20, 1014 );
playSe( spep_5 + 20, 1023 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_6=spep_5+76;

------------------------------------------------------
-- 2発目発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam2 = entryEffect( spep_6 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, beam2, 0, 0, 0 );
setEffMoveKey( spep_6 + 60, beam2, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, beam2, 1.0, 1.0 );
setEffScaleKey( spep_6 + 60, beam2, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, beam2, 0 );
setEffRotateKey( spep_6 + 60, beam2, 0 );
setEffAlphaKey( spep_6 + 0, beam2, 255 );
setEffAlphaKey( spep_6 + 60, beam2, 255 );

--SE
se_1231 = playSe( spep_6 + 1, 1231 );
setSeVolume( spep_6 + 1, 1231, 158 );
se_1043 = playSe( spep_6 + 3, 1043 );
setSeVolume( spep_6 + 3, 1043, 71 );
playSe( spep_6 + 18, 1003 );
playSe( spep_6 + 27, 1027 );
setSeVolume( spep_6 + 27, 1027, 71 );
playSe( spep_6 + 32, 1145 );
playSe( spep_6 + 35, 1177 );
setSeVolume( spep_6 + 35, 1177, 0 );
setSeVolume( spep_6 + 36, 1177, 4.55 );
setSeVolume( spep_6 + 37, 1177, 9.09 );
setSeVolume( spep_6 + 38, 1177, 13.64 );
setSeVolume( spep_6 + 39, 1177, 18.18 );
setSeVolume( spep_6 + 40, 1177, 22.73 );
setSeVolume( spep_6 + 41, 1177, 27.27 );
setSeVolume( spep_6 + 42, 1177, 31.82 );
setSeVolume( spep_6 + 43, 1177, 36.36 );
setSeVolume( spep_6 + 44, 1177, 40.91 );
setSeVolume( spep_6 + 45, 1177, 45.45 );
setSeVolume( spep_6 + 46, 1177, 50.00 );
setSeVolume( spep_6 + 47, 1177, 54.55 );
setSeVolume( spep_6 + 48, 1177, 59.09 );
setSeVolume( spep_6 + 49, 1177, 63.64 );
setSeVolume( spep_6 + 50, 1177, 68.18 );
setSeVolume( spep_6 + 51, 1177, 72.73 );
setSeVolume( spep_6 + 52, 1177, 77.27 );
setSeVolume( spep_6 + 53, 1177, 81.82 );
setSeVolume( spep_6 + 54, 1177, 86.36 );
setSeVolume( spep_6 + 55, 1177, 90.91 );
setSeVolume( spep_6 + 56, 1177, 95.45 );
setSeVolume( spep_6 + 57, 1177, 100 );
playSe( spep_6 + 55, 1022 );
setSeVolume( spep_6 + 55, 1022, 0 );
setSeVolume( spep_6 + 56, 1022, 4.67 );
setSeVolume( spep_6 + 57, 1022, 9.33 );
setSeVolume( spep_6 + 58, 1022, 14 );
setSeVolume( spep_6 + 59, 1022, 18.67 );
setSeVolume( spep_6 + 60, 1022, 23.33 );
setSeVolume( spep_6 + 61, 1022, 28 );
setSeVolume( spep_6 + 62, 1022, 32.67 );
setSeVolume( spep_6 + 63, 1022, 37.33 );
setSeVolume( spep_6 + 64, 1022, 42 );
setSeVolume( spep_6 + 65, 1022, 46.67 );
setSeVolume( spep_6 + 66, 1022, 51.33 );
setSeVolume( spep_6 + 67, 1022, 56 );
setSeVolume( spep_6 + 68, 1022, 60.67 );
setSeVolume( spep_6 + 69, 1022, 65.33 );
setSeVolume( spep_6 + 70, 1022, 70 );
setSeVolume( spep_6 + 71, 1022, 74.67 );
setSeVolume( spep_6 + 72, 1022, 79.33 );
setSeVolume( spep_6 + 73, 1022, 84 );
setSeVolume( spep_6 + 74, 1022, 88.67 );
setSeVolume( spep_6 + 75, 1022, 93.33 );
setSeVolume( spep_6 + 76, 1022, 98 );
setSeVolume( spep_6 + 77, 1022, 102.67 );
setSeVolume( spep_6 + 78, 1022, 107.33 );
setSeVolume( spep_6 + 79, 1022, 112 );
setSeVolume( spep_6 + 80, 1022, 116.67 );
setSeVolume( spep_6 + 81, 1022, 121.33 );
setSeVolume( spep_6 + 82, 1022, 126 );
stopSe( spep_6 + 27, se_1231, 12 );
stopSe( spep_6 + 27, se_1043, 12 );

--白フェード
entryFade( spep_6 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 62, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_7=spep_6+60;

------------------------------------------------------
-- 敵が気弾に包まれ昇華
------------------------------------------------------
-- ** エフェクト等 ** --
hit2_f = entryEffect( spep_7 + 0, SP_09x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, hit2_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 120, hit2_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, hit2_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 120, hit2_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, hit2_f, 0 );
setEffRotateKey( spep_7 + 120, hit2_f, 0 );
setEffAlphaKey( spep_7 + 0, hit2_f, 255 );
setEffAlphaKey( spep_7 + 120, hit2_f, 255 );

-- ** エフェクト等 ** --
hit2_b = entryEffect( spep_7 + 0, SP_10x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, hit2_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 120, hit2_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, hit2_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 120, hit2_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, hit2_b, 0 );
setEffRotateKey( spep_7 + 120, hit2_b, 0 );
setEffAlphaKey( spep_7 + 0, hit2_b, 255 );
setEffAlphaKey( spep_7 + 120, hit2_b, 255 );

--敵の動き
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 + 18, 1, 0 );

changeAnime( spep_7 + 0, 1, 108 );

setMoveKey( spep_7 + 0, 1, -68.6, -289.2 , 0 );
setMoveKey( spep_7 + 2, 1, -43.8, -223.7 , 0 );
setMoveKey( spep_7 + 4, 1, -19, -158.2 , 0 );
setMoveKey( spep_7 + 6, 1, 5.8, -92.7 , 0 );
setMoveKey( spep_7 + 8, 1, 30.6, -27.2 , 0 );
setMoveKey( spep_7 + 10, 1, 55.4, 38.4 , 0 );
setMoveKey( spep_7 + 12, 1, 80.2, 103.9 , 0 );
setMoveKey( spep_7 + 14, 1, 105, 169.4 , 0 );
setMoveKey( spep_7 + 16, 1, 106, 174.2 , 0 );
setMoveKey( spep_7 + 18, 1, 107.1, 178.9 , 0 );

setScaleKey( spep_7 + 0, 1, 3.5, 3.5 );
setScaleKey( spep_7 + 2, 1, 3.21, 3.21 );
setScaleKey( spep_7 + 4, 1, 2.93, 2.93 );
setScaleKey( spep_7 + 6, 1, 2.64, 2.64 );
setScaleKey( spep_7 + 8, 1, 2.36, 2.36 );
setScaleKey( spep_7 + 10, 1, 2.07, 2.07 );
setScaleKey( spep_7 + 12, 1, 1.79, 1.79 );
setScaleKey( spep_7 + 14, 1, 1.5, 1.5 );
setScaleKey( spep_7 + 16, 1, 1.48, 1.48 );
setScaleKey( spep_7 + 18, 1, 1.46, 1.46 );

setRotateKey( spep_7 + 0, 1, -18.6 );
setRotateKey( spep_7 + 2, 1, -18.7 );
setRotateKey( spep_7 + 18, 1, -18.7 );

--SE
se_1124 = playSe( spep_7 + 0, 1124 );
setSeVolume( spep_7 + 0, 1124, 56 );

--白フェード
entryFade( spep_7 + 112, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_7 + 0, 0, 122, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_8=spep_7+120;
------------------------------------------------------
-- 空見上げたまま魔光線収束
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_8 + 0, SP_11x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_8 + 150, finish, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_8 + 150, finish, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, finish, 0 );
setEffRotateKey( spep_8 + 150, finish, 0 );
setEffAlphaKey( spep_8 + 0, finish, 255 );
setEffAlphaKey( spep_8 + 150, finish, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_8 + 0,  906, 38, 0x100, -1, 0, 0, 0 );
setEffShake( spep_8 + 0, shuchusen4, 38, 20 );
setEffMoveKey( spep_8 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_8 + 38, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_8 + 0, shuchusen4, 1.5, 1.5 );
setEffScaleKey( spep_8 + 38, shuchusen4, 1.5, 1.5 );

setEffRotateKey( spep_8 + 0, shuchusen4, 180 );
setEffRotateKey( spep_8 + 38, shuchusen4, 180 );

setEffAlphaKey( spep_8 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_8 + 38, shuchusen4, 255 );

--SE
playSe( spep_8 + 7, 1179 );
setSeVolume( spep_8 + 7, 1179, 40 );

stopSe( spep_8 + 11, se_1124, 63 );

--終わり
dealDamage( spep_8 + 10 );
endPhase( spep_8 + 140 );
end
