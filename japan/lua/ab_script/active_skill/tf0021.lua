--1020500:フリーザ(最終形態)(天使)_アクティブ変身
--battle_301208

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
SP_01=	3126	;--	
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);

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
setAlphaKey( 0, 1, 255 );

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
-- 指先ビーム〜正面見下ろし
------------------------------------------------------
--はじめの準備
spep_0=0;

--エフェクト
effect = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, effect, 0, 0, 0 );
setEffMoveKey( spep_0 + 980, effect, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, effect, 1.0, 1.0 );
setEffScaleKey( spep_0 + 980, effect, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, effect, 0 );
setEffRotateKey( spep_0 + 980, effect, 0 );
setEffAlphaKey( spep_0 + 0, effect, 255 );
setEffAlphaKey( spep_0 + 980, effect, 255 );

--背景の色
entryFadeBg( spep_0 + 0, 0, 970, 0, 10, 10, 10, 255 );  --黒　背景       -- ベース暗め　背景
entryFadeBg( spep_0 + 970, 0, 40, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --黒　背景       -- ベース暗め　背景

------------------------------------------------------
-- SE
------------------------------------------------------
--環境音
SE001 = playSe( spep_0 + 0, 1269 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 10 );

--炎
SE002 = playSe( spep_0 + 56, 1268 );
setSeVolumeByWorkId( spep_0 + 56, SE002, 0 );
setSeVolumeByWorkId( spep_0 +57,SE002,5);
setSeVolumeByWorkId( spep_0 +58,SE002,7.5);
setSeVolumeByWorkId( spep_0 +59,SE002,10);
setSeVolumeByWorkId( spep_0 +60,SE002,12.5);
setSeVolumeByWorkId( spep_0 +61,SE002,15);
setSeVolumeByWorkId( spep_0 +62,SE002,17.5);
setSeVolumeByWorkId( spep_0 +63,SE002,20);
setSeVolumeByWorkId( spep_0 +64,SE002,22.5);
setSeVolumeByWorkId( spep_0 +65,SE002,25);
setSeVolumeByWorkId( spep_0 +66,SE002,27.5);
setSeVolumeByWorkId( spep_0 +67,SE002,30);
setSeVolumeByWorkId( spep_0 +68,SE002,32.5);
setSeVolumeByWorkId( spep_0 +69,SE002,35);
setSeVolumeByWorkId( spep_0 +70,SE002,37.5);
setSeVolumeByWorkId( spep_0 +71,SE002,40);
setSeVolumeByWorkId( spep_0 +72,SE002,42.5);
setSeVolumeByWorkId( spep_0 +73,SE002,45);
setSeVolumeByWorkId( spep_0 +74,SE002,47.5);
setSeVolumeByWorkId( spep_0 +75,SE002,50);
setSeVolumeByWorkId( spep_0 +76,SE002,52.5);
setSeVolumeByWorkId( spep_0 +77,SE002,55);
setSeVolumeByWorkId( spep_0 +78,SE002,57.5);
setSeVolumeByWorkId( spep_0 +79,SE002,60);
setSeVolumeByWorkId( spep_0 +80,SE002,62.5);
setSeVolumeByWorkId( spep_0 +81,SE002,65);
setSeVolumeByWorkId( spep_0 +82,SE002,67.5);
setSeVolumeByWorkId( spep_0 +83,SE002,70);
setSeVolumeByWorkId( spep_0 +84,SE002,72.5);
setSeVolumeByWorkId( spep_0 +85,SE002,75);
setSeVolumeByWorkId( spep_0 +86,SE002,77.5);
setSeVolumeByWorkId( spep_0 +87,SE002,80);
setSeVolumeByWorkId( spep_0 +88,SE002,82.5);
setSeVolumeByWorkId( spep_0 +89,SE002,85);
setSeVolumeByWorkId( spep_0 +90,SE002,87);
stopSe( spep_0 + 184, SE002, 34 );

--目線カットイン
SE003 = playSe( spep_0 + 126, 1018 );

--環境音
SE004 = playSe( spep_0 + 176, 1181 );
stopSe( spep_0 + 448, SE004, 78 );

--胸ぼこぼこ
SE005 = playSe( spep_0 + 176, 1250 );
setSeVolumeByWorkId( spep_0 + 176, SE005, 229 );
setPitch( spep_0 + 176, SE005, 400 );
setTimeStretch( SE005, 1.27, 10, 1 );
stopSe( spep_0 + 224, SE005, 0 );
SE006 = playSe( spep_0 + 176, 1167 );
setSeVolumeByWorkId( spep_0 + 176, SE006, 13 );

--頭シャキーン
SE007 = playSe( spep_0 + 234, 1207 );
setPitch( spep_0 + 234, SE007, 500 );
setTimeStretch( SE007, 0.83, 10, 1 );
setBandpassFilter	( spep_0 + 234, SE007, 1000, 24000 );
SE008 = playSe( spep_0 + 298, 1207 );
setSeVolumeByWorkId( spep_0 + 298, SE008, 112 );
setPitch( spep_0 + 298, SE008, 500 );
setTimeStretch( SE008, 0.83, 10, 1 );
setBandpassFilter	( spep_0 + 298, SE008, 1000, 24000 );

--頭ぼこぼこ
SE009 = playSe( spep_0 + 254, 1250 );
setSeVolumeByWorkId( spep_0 + 254, SE009, 229 );
setPitch( spep_0 + 254, SE009, 400 );
setTimeStretch( SE009, 1.27, 10, 1 );
stopSe( spep_0 + 312, SE009, 0 );
SE010 = playSe( spep_0 + 254, 1167 );
setSeVolumeByWorkId( spep_0 + 254, SE010, 13 );

--カメラ回転
SE011 = playSe( spep_0 + 266, 1265 );
setSeVolumeByWorkId( spep_0 +226,SE011,0.74);
setSeVolumeByWorkId( spep_0 +227,SE011,1.48);
setSeVolumeByWorkId( spep_0 +228,SE011,2.22);
setSeVolumeByWorkId( spep_0 +229,SE011,2.96);
setSeVolumeByWorkId( spep_0 +230,SE011,3.7);
setSeVolumeByWorkId( spep_0 +231,SE011,4.44);
setSeVolumeByWorkId( spep_0 +232,SE011,5.18);
setSeVolumeByWorkId( spep_0 +233,SE011,5.92);
setSeVolumeByWorkId( spep_0 +234,SE011,6.66);
setSeVolumeByWorkId( spep_0 +235,SE011,7.4);
setSeVolumeByWorkId( spep_0 +236,SE011,8.14);
setSeVolumeByWorkId( spep_0 +237,SE011,8.88);
setSeVolumeByWorkId( spep_0 +238,SE011,9.62);
setSeVolumeByWorkId( spep_0 +239,SE011,10.36);
setSeVolumeByWorkId( spep_0 +240,SE011,11.1);
setSeVolumeByWorkId( spep_0 +241,SE011,11.84);
setSeVolumeByWorkId( spep_0 +242,SE011,12.58);
setSeVolumeByWorkId( spep_0 +243,SE011,13.32);
setSeVolumeByWorkId( spep_0 +244,SE011,14.06);
setSeVolumeByWorkId( spep_0 +245,SE011,14.8);
setSeVolumeByWorkId( spep_0 +246,SE011,15.54);
setSeVolumeByWorkId( spep_0 +247,SE011,16.28);
setSeVolumeByWorkId( spep_0 +248,SE011,17.02);
setSeVolumeByWorkId( spep_0 +249,SE011,17.76);
setSeVolumeByWorkId( spep_0 +250,SE011,18.5);
setSeVolumeByWorkId( spep_0 +251,SE011,19.24);
setSeVolumeByWorkId( spep_0 +252,SE011,19.98);
setSeVolumeByWorkId( spep_0 +253,SE011,20.72);
setSeVolumeByWorkId( spep_0 +254,SE011,21.46);
setSeVolumeByWorkId( spep_0 +255,SE011,22.2);
setSeVolumeByWorkId( spep_0 +256,SE011,22.94);
setSeVolumeByWorkId( spep_0 +257,SE011,23.68);
setSeVolumeByWorkId( spep_0 +258,SE011,24.42);
setSeVolumeByWorkId( spep_0 +259,SE011,25.16);
setSeVolumeByWorkId( spep_0 +260,SE011,25.9);
setSeVolumeByWorkId( spep_0 +261,SE011,26.64);
setSeVolumeByWorkId( spep_0 +262,SE011,27.38);
setSeVolumeByWorkId( spep_0 +263,SE011,28.12);
setSeVolumeByWorkId( spep_0 +264,SE011,28.86);
setSeVolumeByWorkId( spep_0 +265,SE011,29.6);
setSeVolumeByWorkId( spep_0 +266,SE011,30.34);
setSeVolumeByWorkId( spep_0 +267,SE011,31.08);
setSeVolumeByWorkId( spep_0 +268,SE011,31.82);
setSeVolumeByWorkId( spep_0 +269,SE011,32.56);
setSeVolumeByWorkId( spep_0 +270,SE011,33.3);
setSeVolumeByWorkId( spep_0 +271,SE011,34.04);
setSeVolumeByWorkId( spep_0 +272,SE011,34.78);
setSeVolumeByWorkId( spep_0 +273,SE011,35.52);
setSeVolumeByWorkId( spep_0 +274,SE011,36.26);
setSeVolumeByWorkId( spep_0 +275,SE011,37);
setSeVolumeByWorkId( spep_0 +276,SE011,37.74);
setSeVolumeByWorkId( spep_0 +277,SE011,38.48);
setSeVolumeByWorkId( spep_0 +278,SE011,39.22);
setSeVolumeByWorkId( spep_0 +279,SE011,39.96);
setSeVolumeByWorkId( spep_0 +280,SE011,40.7);
setSeVolumeByWorkId( spep_0 +281,SE011,41.44);
setSeVolumeByWorkId( spep_0 +282,SE011,42.18);
setSeVolumeByWorkId( spep_0 +283,SE011,42.92);
setSeVolumeByWorkId( spep_0 +284,SE011,43.66);
setSeVolumeByWorkId( spep_0 +285,SE011,44.4);
setSeVolumeByWorkId( spep_0 +286,SE011,45.14);
setSeVolumeByWorkId( spep_0 +287,SE011,45.88);
setSeVolumeByWorkId( spep_0 +288,SE011,46.62);
setSeVolumeByWorkId( spep_0 +289,SE011,47.36);
setSeVolumeByWorkId( spep_0 +290,SE011,48.1);
setSeVolumeByWorkId( spep_0 +291,SE011,48.84);
setSeVolumeByWorkId( spep_0 +292,SE011,49.58);
setSeVolumeByWorkId( spep_0 +293,SE011,50.32);
setSeVolumeByWorkId( spep_0 +294,SE011,51.06);
setSeVolumeByWorkId( spep_0 +295,SE011,51.8);
setSeVolumeByWorkId( spep_0 +296,SE011,52.54);
setSeVolumeByWorkId( spep_0 +297,SE011,53.28);
setSeVolumeByWorkId( spep_0 +298,SE011,54.02);
setSeVolumeByWorkId( spep_0 +299,SE011,54.76);
setSeVolumeByWorkId( spep_0 +300,SE011,55.5);
setSeVolumeByWorkId( spep_0 +301,SE011,56.24);
setSeVolumeByWorkId( spep_0 +302,SE011,56.98);
setSeVolumeByWorkId( spep_0 +303,SE011,57.72);
setSeVolumeByWorkId( spep_0 +304,SE011,58.46);
setSeVolumeByWorkId( spep_0 +305,SE011,59.2);
setSeVolumeByWorkId( spep_0 +306,SE011,59.94);
setSeVolumeByWorkId( spep_0 +307,SE011,60.68);
setSeVolumeByWorkId( spep_0 +308,SE011,61.42);
setSeVolumeByWorkId( spep_0 +309,SE011,62.16);
setSeVolumeByWorkId( spep_0 +310,SE011,62.9);
setSeVolumeByWorkId( spep_0 +311,SE011,63.64);
setSeVolumeByWorkId( spep_0 +312,SE011,64.38);
setSeVolumeByWorkId( spep_0 +313,SE011,65.12);
setSeVolumeByWorkId( spep_0 +314,SE011,65.86);
setSeVolumeByWorkId( spep_0 +315,SE011,66.6);
setSeVolumeByWorkId( spep_0 +316,SE011,67.34);
setSeVolumeByWorkId( spep_0 +317,SE011,68.08);
setSeVolumeByWorkId( spep_0 +318,SE011,68.82);
setSeVolumeByWorkId( spep_0 +319,SE011,69.56);
setSeVolumeByWorkId( spep_0 +320,SE011,70.3);
setSeVolumeByWorkId( spep_0 +321,SE011,71.04);
setSeVolumeByWorkId( spep_0 +322,SE011,71.78);
setSeVolumeByWorkId( spep_0 +323,SE011,72.52);
setSeVolumeByWorkId( spep_0 +324,SE011,73.26);
setSeVolumeByWorkId( spep_0 +325,SE011,74);
setSeVolumeByWorkId( spep_0 +326,SE011,74.74);
setSeVolumeByWorkId( spep_0 +327,SE011,75.48);
setSeVolumeByWorkId( spep_0 +328,SE011,76.22);
setSeVolumeByWorkId( spep_0 +329,SE011,76.96);
setSeVolumeByWorkId( spep_0 +330,SE011,77.7);
setSeVolumeByWorkId( spep_0 +331,SE011,78.44);
setSeVolumeByWorkId( spep_0 +332,SE011,79.17);
setSeVolumeByWorkId( spep_0 +333,SE011,79.91);
setSeVolumeByWorkId( spep_0 +334,SE011,80.65);
setSeVolumeByWorkId( spep_0 +335,SE011,81.39);
setSeVolumeByWorkId( spep_0 +336,SE011,82.13);
setSeVolumeByWorkId( spep_0 +337,SE011,82.87);
setSeVolumeByWorkId( spep_0 +338,SE011,83.61);
setSeVolumeByWorkId( spep_0 +339,SE011,84.35);
setSeVolumeByWorkId( spep_0 +340,SE011,85.09);
setSeVolumeByWorkId( spep_0 +341,SE011,85.83);
setSeVolumeByWorkId( spep_0 +342,SE011,86.57);
setSeVolumeByWorkId( spep_0 +343,SE011,87.31);
setSeVolumeByWorkId( spep_0 +344,SE011,88.05);
setSeVolumeByWorkId( spep_0 +345,SE011,88.79);
setSeVolumeByWorkId( spep_0 +346,SE011,89.53);
setSeVolumeByWorkId( spep_0 +347,SE011,90.27);
setSeVolumeByWorkId( spep_0 +348,SE011,91.01);
setSeVolumeByWorkId( spep_0 +349,SE011,91.75);
setSeVolumeByWorkId( spep_0 +350,SE011,92.49);
setSeVolumeByWorkId( spep_0 +351,SE011,93.23);
setSeVolumeByWorkId( spep_0 +352,SE011,93.97);
setSeVolumeByWorkId( spep_0 +353,SE011,94.71);
setSeVolumeByWorkId( spep_0 +354,SE011,95.45);
setSeVolumeByWorkId( spep_0 +355,SE011,96.19);
setSeVolumeByWorkId( spep_0 +356,SE011,96.93);
setSeVolumeByWorkId( spep_0 +357,SE011,97.67);
setSeVolumeByWorkId( spep_0 +358,SE011,98.41);
setSeVolumeByWorkId( spep_0 +359,SE011,99.15);
setSeVolumeByWorkId( spep_0 +360,SE011,99.89);
setSeVolumeByWorkId( spep_0 +361,SE011,100.64);
setSeVolumeByWorkId( spep_0 +362,SE011,101.38);
setSeVolumeByWorkId( spep_0 +363,SE011,102.12);
setSeVolumeByWorkId( spep_0 +364,SE011,102.86);
setSeVolumeByWorkId( spep_0 +365,SE011,103.6);
setSeVolumeByWorkId( spep_0 +366,SE011,104.34);
setSeVolumeByWorkId( spep_0 +367,SE011,105.08);
setSeVolumeByWorkId( spep_0 +368,SE011,105.82);
setSeVolumeByWorkId( spep_0 +369,SE011,106.56);
setSeVolumeByWorkId( spep_0 +370,SE011,107.3);
setSeVolumeByWorkId( spep_0 +371,SE011,108.04);
setSeVolumeByWorkId( spep_0 +372,SE011,108.78);
setSeVolumeByWorkId( spep_0 +373,SE011,109.52);
setSeVolumeByWorkId( spep_0 +374,SE011,110.26);
setSeVolumeByWorkId( spep_0 +375,SE011,111);
setSeVolumeByWorkId( spep_0 +376,SE011,111.74);
setSeVolumeByWorkId( spep_0 +377,SE011,112.48);
setSeVolumeByWorkId( spep_0 +378,SE011,113.22);
setSeVolumeByWorkId( spep_0 +379,SE011,113.96);
setSeVolumeByWorkId( spep_0 +380,SE011,114.7);
setSeVolumeByWorkId( spep_0 +381,SE011,115.44);
setSeVolumeByWorkId( spep_0 +382,SE011,116.18);
setSeVolumeByWorkId( spep_0 +383,SE011,116.92);
setSeVolumeByWorkId( spep_0 +384,SE011,117.66);
setSeVolumeByWorkId( spep_0 +385,SE011,118.4);
setSeVolumeByWorkId( spep_0 +386,SE011,119.14);
setSeVolumeByWorkId( spep_0 +387,SE011,119.88);
setSeVolumeByWorkId( spep_0 +388,SE011,120.62);
setSeVolumeByWorkId( spep_0 +389,SE011,121.36);
setSeVolumeByWorkId( spep_0 +390,SE011,122.1);
setSeVolumeByWorkId( spep_0 +391,SE011,122.84);
setSeVolumeByWorkId( spep_0 +392,SE011,123.58);
setSeVolumeByWorkId( spep_0 +393,SE011,124.32);
setSeVolumeByWorkId( spep_0 +394,SE011,126);
setStartTimeMs( SE011,  -850 );	
SE012 = playSe( spep_0 + 338, 1278 );
setSeVolumeByWorkId( spep_0 + 338, SE012, 69 );
stopSe( spep_0 + 450, SE012, 80 );
SE013 = playSe( spep_0 + 338, 1215 );
setSeVolumeByWorkId( spep_0 + 338, SE013, 38 );	
SE014 = playSe( spep_0 + 354, 1072 );
setSeVolumeByWorkId( spep_0 + 354, SE014, 56 );	
setTimeStretch( SE014, 1.25, 10, 1 );
SE015 = playSe( spep_0 + 394, 8 );
setSeVolumeByWorkId( spep_0 + 394, SE015, 250 );
setPitch( spep_0 + 394, SE015, -400 );
setTimeStretch( SE015, 0.91, 10, 1 );

--最後決め
SE016 = playSe( spep_0 + 826, 20 );
setSeVolumeByWorkId( spep_0 + 826, SE016, 67 );
SE017 = playSe( spep_0 + 826, 1068 );
setSeVolumeByWorkId( spep_0 + 826, SE017, 52 );

--頭きらり
SE018 = playSe( spep_0 + 866, 1042 );
setPitch( spep_0 + 866, SE018, 400 );
setTimeStretch( SE018, 1.27, 10, 1 );
------------------------------------------------------
-- ボイス
------------------------------------------------------
--究極の進化をごらんなさい
playVoice( spep_0 + 14, 219 );
setVoiceVolume( spep_0 + 14, 219, 119 );

--フフ…この金色の体がこけおどしではないことを教えてさしあげましょう。
playVoice( spep_0 + 500, 220 );
setVoiceVolume( spep_0 + 500, 220, 133 );

--終わり
endPhase( spep_0 + 1000 );
else end