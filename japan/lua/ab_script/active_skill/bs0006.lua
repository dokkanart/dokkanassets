--4019760:超サイヤ人2ケフラ・ノリノリのアゲアゲ(アクティブバフ)
--battle_301202

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
SP_01=	3120	;--	超サイヤ人2ケフラ・ノリノリのアゲアゲ(アクティブバフ)

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
-- 超サイヤ人2ケフラ・ノリノリのアゲアゲ
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
ef = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, ef, 0, 0, 0 );
setEffMoveKey( spep_0 + 640, ef, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, ef, 1.0, 1.0 );
setEffScaleKey( spep_0 + 640, ef, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, ef, 0 );
setEffRotateKey( spep_0 + 640, ef, 0 );
setEffAlphaKey( spep_0 + 0, ef, 255 );
setEffAlphaKey( spep_0 + 640, ef, 255 );

--SE
playSe( spep_0 + 0, 1036 );
setSeVolume( spep_0 + 0, 1036, 40 );
playSe( spep_0 + 0, 1147 );
setSeVolume( spep_0 + 0, 1147, 50 );
playSe( spep_0 + 8, 1018 );
setSeVolume( spep_0 + 8, 1018, 79 );
playSe( spep_0 + 24, 1036 );
setSeVolume( spep_0 + 24, 1036, 40 );
playSe( spep_0 + 48, 1036 );
setSeVolume( spep_0 + 48, 1036, 40 );
playSe( spep_0 + 72, 1036 );
setSeVolume( spep_0 + 72, 1036, 40 );
playSe( spep_0 + 96, 1036 );
setSeVolume( spep_0 + 96, 1036, 40 );
playSe( spep_0 + 120, 1036 );
setSeVolume( spep_0 + 120, 1036, 40 );
playSe( spep_0 + 136, 1013 );
setSeVolume( spep_0 + 136, 1013, 89 );
playSe( spep_0 + 144, 1036 );
setSeVolume( spep_0 + 144, 1036, 40 );
playSe( spep_0 + 168, 1036 );
setSeVolume( spep_0 + 168, 1036, 40 );
playSe( spep_0 + 192, 1036 );
setSeVolume( spep_0 + 192, 1036, 40 );
playSe( spep_0 + 206, 1148 );
setSeVolume( spep_0 + 206, 1148, 50 );
playSe( spep_0 + 216, 1036 );
setSeVolume( spep_0 + 216, 1036, 40 );
playSe( spep_0 + 240, 1036 );
setSeVolume( spep_0 + 240, 1036, 40 );
playSe( spep_0 + 241, 1035 );
playSe( spep_0 + 241, 1011 );
setSeVolume( spep_0 + 241, 1011, 85 );
playSe( spep_0 + 246, 1067 );
setSeVolume( spep_0 + 246, 1067, 79 );
playSe( spep_0 + 264, 1036 );
setSeVolume( spep_0 + 264, 1036, 40 );
playSe( spep_0 + 268, 1072 );
playSe( spep_0 + 284, 1233 );
playSe( spep_0 + 288, 1036 );
setSeVolume( spep_0 + 288, 1036, 79 );
playSe( spep_0 + 295, 1012 );
playSe( spep_0 + 312, 1036 );
setSeVolume( spep_0 + 312, 1036, 79 );
playSe( spep_0 + 336, 1036 );
setSeVolume( spep_0 + 336, 1036, 79 );
playSe( spep_0 + 340, 1147 );
setSeVolume( spep_0 + 340, 1147, 50 );
playSe( spep_0 + 360, 1036 );
setSeVolume( spep_0 + 360, 1036, 79 );
playSe( spep_0 + 384, 1036 );
setSeVolume( spep_0 + 384, 1036, 63 );
playSe( spep_0 + 408, 1036 );
setSeVolume( spep_0 + 408, 1036, 40 );
playSe( spep_0 + 432, 1036 );
setSeVolume( spep_0 + 432, 1036, 40 );
playSe( spep_0 + 456, 1036 );
setSeVolume( spep_0 + 456, 1036, 40 );
playSe( spep_0 + 472, 1003 );
playSe( spep_0 + 480, 1036 );
setSeVolume( spep_0 + 480, 1036, 40 );
playSe( spep_0 + 487, 1126 );
setSeVolume( spep_0 + 487, 1126, 37 );
playSe( spep_0 + 487, 1062 );
se_1024 = playSe( spep_0 + 492, 1024 );
playSe( spep_0 + 504, 1036 );
setSeVolume( spep_0 + 504, 1036, 40 );
playSe( spep_0 + 504, 1067 );
setSeVolume( spep_0 + 504, 1067, 0 );
setSeVolume( spep_0 + 512, 1067, 0 );
setSeVolume( spep_0 + 513, 1067, 1.36 );
setSeVolume( spep_0 + 514, 1067, 2.72 );
setSeVolume( spep_0 + 515, 1067, 4.08 );
setSeVolume( spep_0 + 516, 1067, 5.43 );
setSeVolume( spep_0 + 517, 1067, 6.79 );
setSeVolume( spep_0 + 518, 1067, 8.15 );
setSeVolume( spep_0 + 519, 1067, 9.51 );
setSeVolume( spep_0 + 520, 1067, 10.87 );
setSeVolume( spep_0 + 521, 1067, 12.23 );
setSeVolume( spep_0 + 522, 1067, 13.58 );
setSeVolume( spep_0 + 523, 1067, 14.94 );
setSeVolume( spep_0 + 524, 1067, 16.30 );
setSeVolume( spep_0 + 525, 1067, 17.66 );
setSeVolume( spep_0 + 526, 1067, 19.02 );
setSeVolume( spep_0 + 527, 1067, 20.38 );
setSeVolume( spep_0 + 528, 1067, 21.74 );
setSeVolume( spep_0 + 529, 1067, 23.09 );
setSeVolume( spep_0 + 530, 1067, 24.45 );
setSeVolume( spep_0 + 531, 1067, 25.81 );
setSeVolume( spep_0 + 532, 1067, 27.17 );
setSeVolume( spep_0 + 533, 1067, 28.53 );
setSeVolume( spep_0 + 534, 1067, 29.89 );
setSeVolume( spep_0 + 535, 1067, 31.25 );
setSeVolume( spep_0 + 536, 1067, 32.6 );
setSeVolume( spep_0 + 537, 1067, 33.96 );
setSeVolume( spep_0 + 538, 1067, 35.32 );
setSeVolume( spep_0 + 539, 1067, 36.68 );
setSeVolume( spep_0 + 540, 1067, 38.04 );
setSeVolume( spep_0 + 541, 1067, 39.40 );
setSeVolume( spep_0 + 542, 1067, 40.75 );
setSeVolume( spep_0 + 543, 1067, 42.11 );
setSeVolume( spep_0 + 544, 1067, 43.47 );
setSeVolume( spep_0 + 545, 1067, 44.83 );
setSeVolume( spep_0 + 546, 1067, 46.19 );
setSeVolume( spep_0 + 547, 1067, 47.55 );
setSeVolume( spep_0 + 548, 1067, 48.91 );
setSeVolume( spep_0 + 549, 1067, 50.26 );
setSeVolume( spep_0 + 550, 1067, 51.62 );
setSeVolume( spep_0 + 551, 1067, 52.98 );
setSeVolume( spep_0 + 552, 1067, 54.34 );
setSeVolume( spep_0 + 553, 1067, 55.70 );
setSeVolume( spep_0 + 554, 1067, 57.06 );
setSeVolume( spep_0 + 555, 1067, 58.42 );
setSeVolume( spep_0 + 556, 1067, 59.77 );
setSeVolume( spep_0 + 557, 1067, 61.13 );
setSeVolume( spep_0 + 558, 1067, 62.49 );
setSeVolume( spep_0 + 559, 1067, 63.85 );
setSeVolume( spep_0 + 560, 1067, 65.21 );
setSeVolume( spep_0 + 561, 1067, 66.57 );
setSeVolume( spep_0 + 562, 1067, 67.92 );
setSeVolume( spep_0 + 563, 1067, 69.28 );
setSeVolume( spep_0 + 564, 1067, 70.64 );
setSeVolume( spep_0 + 565, 1067, 72 );
playSe( spep_0 + 528, 1036 );
setSeVolume( spep_0 + 528, 1036, 40 );
SE0=playSe( spep_0 + 546, 1148 );
setSeVolume( spep_0 + 546, 1148, 50 );
playSe( spep_0 + 552, 1036 );
setSeVolume( spep_0 + 552, 1036, 40 );
playSe( spep_0 + 576, 1036 );
setSeVolume( spep_0 + 576, 1036, 40 );
playSe( spep_0 + 600, 1036 );
setSeVolume( spep_0 + 600, 1036, 40 );
playSe( spep_0 + 624, 1036 );
setSeVolume( spep_0 + 624, 1036, 40 );

stopSe( spep_0 + 551, se_1024, 71 );
stopSe( spep_0 + 628, SE0, 0 );

-- ** ボイス ** --
playVoice(spep_0  +14, 164 );
setVoiceVolume(spep_0  +14, 164, 376  );
setVoiceVolume(spep_0  +120, 164, 282 );
setVoiceVolume(spep_0  +395, 164, 355 );

-- ** ダメージ表示 ** --
endPhase( spep_0 + 630  );

else end
