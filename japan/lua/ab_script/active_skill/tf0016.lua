--超サイヤ人ゴテンクス_アクティブ変身

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

--エフェクト
SP_01=	3115;

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
-- 変身
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
effct = entryEffect( spep_0 + 0, SP_01,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, effct, 0, 0 , 0 );
setEffMoveKey( spep_0 + 866, effct, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, effct, 1.0, 1.0 );
setEffScaleKey( spep_0 + 866, effct, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, effct, 0 );
setEffRotateKey( spep_0 + 866, effct, 0 );
setEffAlphaKey( spep_0 + 0, effct, 255 );
setEffAlphaKey( spep_0 + 866, effct, 255 );

-- ** 音 ** --
--両腕あげ
playSe( spep_0 + 0, 1072 );
setSeVolume( spep_0 + 0, 1072, 0 );
setSeVolume( spep_0 + 13, 1072, 3 );
setSeVolume( spep_0 + 14, 1072, 24 );
setSeVolume( spep_0 + 16, 1072, 48 );
setSeVolume( spep_0 + 18, 1072, 72 );
setSeVolume( spep_0 + 20, 1072, 86 );
setSeVolume( spep_0 + 21, 1072, 100 );

playSe( spep_0 + 24, 44 );
setSeVolume( spep_0 + 24, 44, 71 );

--ほっ
playSe( spep_0 + 135, 19 );
playSe( spep_0 + 137, 40 );
setSeVolume( spep_0 + 137, 40, 71 );

--気溜め
playSe( spep_0 + 218, 1203 );
setSeVolume( spep_0 + 218, 1203, 71 );
playSe( spep_0 + 218, 1158 );
setSeVolume( spep_0 + 218, 1158, 50 );
playSe( spep_0 + 251, 1148 );
playSe( spep_0 + 324, 1147 );
setSeVolume( spep_0 + 324, 1147, 50 );
playSe( spep_0 + 333, 1158 );
setSeVolume( spep_0 + 333, 1158, 40 );
playSe( spep_0 + 339, 1203 );
setSeVolume( spep_0 + 339, 1203, 50 );
playSe( spep_0 + 477, 1056 );

--腕太くなる
SE0 = playSe( spep_0 + 334, 1190 );
setSeVolume( spep_0 + 334, 1190, 72 );
setSeVolume( spep_0 + 365, 1190, 72 );
setSeVolume( spep_0 + 368, 1190, 58 );
setSeVolume( spep_0 + 370, 1190, 41 );
setSeVolume( spep_0 + 372, 1190, 33 );
setSeVolume( spep_0 + 374, 1190, 26 );
setSeVolume( spep_0 + 376, 1190, 14 );
setSeVolume( spep_0 + 378, 1190, 0 );
stopSe( spep_0 + 378, SE0, 0 );

--髪伸びる
SE1 = playSe( spep_0 + 460, 1182 );
setSeVolume( spep_0 + 460, 1182, 5 );
setSeVolume( spep_0 + 462, 1182, 14 );
setSeVolume( spep_0 + 464, 1182, 21 );
setSeVolume( spep_0 + 466, 1182, 28 );
setSeVolume( spep_0 + 468, 1182, 35 );
setSeVolume( spep_0 + 470, 1182, 43 );
setSeVolume( spep_0 + 472, 1182, 57 );
setSeVolume( spep_0 + 474, 1182, 64 );
setSeVolume( spep_0 + 477, 1182, 78 );
setSeVolume( spep_0 + 489, 1182, 78 );
setSeVolume( spep_0 + 494, 1182, 62 );
setSeVolume( spep_0 + 498, 1182, 54 );
setSeVolume( spep_0 + 502, 1182, 46 );
setSeVolume( spep_0 + 506, 1182, 38 );
setSeVolume( spep_0 + 510, 1182, 32 );
setSeVolume( spep_0 + 514, 1182, 25 );
setSeVolume( spep_0 + 518, 1182, 19 );
setSeVolume( spep_0 + 522, 1182, 12 );
setSeVolume( spep_0 + 524, 1182, 6 );
setSeVolume( spep_0 + 527, 1182, 0 );
stopSe( spep_0 + 527, SE1, 0 );

playSe( spep_0 + 469, 1004 );
setSeVolume( spep_0 + 469, 1004, 4 );
setSeVolume( spep_0 + 472, 1004, 28 );
setSeVolume( spep_0 + 474, 1004, 43 );
setSeVolume( spep_0 + 476, 1004, 58 );
setSeVolume( spep_0 + 479, 1004, 72 );

playSe( spep_0 + 477, 1072 );

playSe( spep_0 + 501, 1010 );
setSeVolume( spep_0 + 501, 1010, 3 );
setSeVolume( spep_0 + 504, 1010, 18 );
setSeVolume( spep_0 + 506, 1010, 35 );
setSeVolume( spep_0 + 508, 1010, 62 );
setSeVolume( spep_0 + 510, 1010, 85 );
setSeVolume( spep_0 + 512, 1010, 94 );
setSeVolume( spep_0 + 515, 1010, 100 );

--目線カットイン
playSe( spep_0 + 536, 1018 );

--変身
playSe( spep_0 + 546, 1035 );
playSe( spep_0 + 550, 1067 );
setSeVolume( spep_0 + 550, 1067, 79 );
playSe( spep_0 + 566, 1024 );
setSeVolume( spep_0 + 566, 1024, 65 );
SE2 = playSe( spep_0 + 577, 1176 );
setSeVolume( spep_0 + 577, 1176, 32 );
stopSe( spep_0 + 754, SE2, 0 );

--オーラ
playSe( spep_0 + 610, 1036 );
setSeVolume( spep_0 + 610, 1036, 63 );
playSe( spep_0 + 634, 1036 );
setSeVolume( spep_0 + 634, 1036, 63 );
playSe( spep_0 + 658, 1036 );
setSeVolume( spep_0 + 658, 1036, 63 );
playSe( spep_0 + 682, 1036 );
setSeVolume( spep_0 + 682, 1036, 63 );
playSe( spep_0 + 706, 1036 );
setSeVolume( spep_0 + 706, 1036, 63 );
playSe( spep_0 + 730, 1036 );
setSeVolume( spep_0 + 730, 1036, 63 );

--シルエット中
playSe( spep_0 + 615, 8 );

--最後決め
playSe( spep_0 + 740, 20 );
playSe( spep_0 + 740, 1062 );
playSe( spep_0 + 740, 1051 );
playSe( spep_0 + 746, 1046 );

-- ** ボイス ** --
--じゃじゃーん
playVoice(spep_0 + 20, 158 );
setVoiceVolume(spep_0 + 20, 158, 178 );

--ほっ！
playVoice(spep_0 + 133, 160 );
setVoiceVolume(spep_0 + 133, 160, 178 );

--正義の死神超ゴテンクスだー！
playVoice(spep_0 + 577, 159 );
setVoiceVolume(spep_0 + 577, 159, 178 );

-- ** 白背景 ** --
entryFadeBg( spep_0 + 0, 0, 864, 0,  245, 245, 245, 255 ); --白 背景

-- ** ダメージ表示 ** --
endPhase( spep_0 + 864 );

else end