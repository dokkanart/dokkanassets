--超サイヤ人ゴッドSSゴジータ_究極のかめはめ波

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
SP_01 = 154850; --前半　手前
SP_02 = 154851; --前半　奥
SP_03 = 154852; --後半　奥
SP_04 = 154853; --後半　手前
SP_05 = 154854; --KO

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
-- 前半(668F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
zenhan_f = entryEffectLife( spep_0 + 0, SP_01, 668, 0x100, -1, 0, 0, 0 );  --前半　手前(ef_001)
setEffMoveKey( spep_0 + 0, zenhan_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 668, zenhan_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, zenhan_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 668, zenhan_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, zenhan_f, 0 );
setEffRotateKey( spep_0 + 668, zenhan_f, 0 );
setEffAlphaKey( spep_0 + 0, zenhan_f, 255 );
setEffAlphaKey( spep_0 + 667, zenhan_f, 255 );
setEffAlphaKey( spep_0 + 668, zenhan_f, 0 );

zenhan_b = entryEffectLife( spep_0 + 0, SP_02, 668, 0x80, -1, 0, 0, 0 );  --前半　奥(ef_002)
setEffMoveKey( spep_0 + 0, zenhan_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 668, zenhan_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, zenhan_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 668, zenhan_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, zenhan_b, 0 );
setEffRotateKey( spep_0 + 668, zenhan_b, 0 );
setEffAlphaKey( spep_0 + 0, zenhan_b, 255 );
setEffAlphaKey( spep_0 + 667, zenhan_b, 255 );
setEffAlphaKey( spep_0 + 668, zenhan_b, 0 );

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 -3 + 144,  10008, 80, 0x100, -1, 0, -175.8, -371.6 );  --ゴゴゴ
setEffMoveKey( spep_0 -3 + 144, ctgogo, -175.8, -371.6 , 0 );
setEffMoveKey( spep_0 -3 + 146, ctgogo, -168.9, -367.2 , 0 );
setEffMoveKey( spep_0 -3 + 148, ctgogo, -176, -369.1 , 0 );
setEffMoveKey( spep_0 -3 + 150, ctgogo, -168.9, -367 , 0 );
setEffMoveKey( spep_0 -3 + 152, ctgogo, -174.9, -372.3 , 0 );
setEffMoveKey( spep_0 -3 + 154, ctgogo, -171, -365.4 , 0 );
setEffMoveKey( spep_0 -3 + 156, ctgogo, -176, -371.6 , 0 );
setEffMoveKey( spep_0 -3 + 158, ctgogo, -169.8, -368.8 , 0 );
setEffMoveKey( spep_0 -3 + 160, ctgogo, -175.4, -367.9 , 0 );
setEffMoveKey( spep_0 -3 + 162, ctgogo, -169.1, -367.7 , 0 );
setEffMoveKey( spep_0 -3 + 164, ctgogo, -175.1, -369.3 , 0 );
setEffMoveKey( spep_0 -3 + 166, ctgogo, -170, -369.8 , 0 );
setEffMoveKey( spep_0 -3 + 168, ctgogo, -174.4, -366.1 , 0 );
setEffMoveKey( spep_0 -3 + 170, ctgogo, -172.1, -373.5 , 0 );
setEffMoveKey( spep_0 -3 + 172, ctgogo, -170.7, -367.2 , 0 );
setEffMoveKey( spep_0 -3 + 174, ctgogo, -172.6, -372.8 , 0 );
setEffMoveKey( spep_0 -3 + 176, ctgogo, -170.3, -367.9 , 0 );
setEffMoveKey( spep_0 -3 + 178, ctgogo, -173.5, -373.5 , 0 );
setEffMoveKey( spep_0 -3 + 180, ctgogo, -173.5, -367.5 , 0 );
setEffMoveKey( spep_0 -3 + 182, ctgogo, -170.7, -373 , 0 );
setEffMoveKey( spep_0 -3 + 184, ctgogo, -172.6, -365.6 , 0 );
setEffMoveKey( spep_0 -3 + 186, ctgogo, -173.7, -371.4 , 0 );
setEffMoveKey( spep_0 -3 + 188, ctgogo, -169.6, -367.4 , 0 );
setEffMoveKey( spep_0 -3 + 190, ctgogo, -172.6, -372.3 , 0 );
setEffMoveKey( spep_0 -3 + 192, ctgogo, -171.2, -367.2 , 0 );
setEffMoveKey( spep_0 -3 + 194, ctgogo, -173, -373.7 , 0 );
setEffMoveKey( spep_0 -3 + 196, ctgogo, -168.4, -367.7 , 0 );
setEffMoveKey( spep_0 -3 + 198, ctgogo, -172.3, -369.3 , 0 );
setEffMoveKey( spep_0 -3 + 200, ctgogo, -176.3, -369.3 , 0 );
setEffMoveKey( spep_0 -3 + 202, ctgogo, -170.5, -368.1 , 0 );
setEffMoveKey( spep_0 -3 + 204, ctgogo, -175.8, -371.6 , 0 );
setEffMoveKey( spep_0 -3 + 206, ctgogo, -168.9, -367.2 , 0 );
setEffMoveKey( spep_0 -3 + 208, ctgogo, -176, -369.1 , 0 );
setEffMoveKey( spep_0 -3 + 210, ctgogo, -168.9, -367 , 0 );
setEffMoveKey( spep_0 -3 + 212, ctgogo, -174.9, -372.3 , 0 );
setEffMoveKey( spep_0 -3 + 214, ctgogo, -171, -365.4 , 0 );
setEffMoveKey( spep_0 -3 + 216, ctgogo, -176, -371.6 , 0 );
setEffMoveKey( spep_0 -3 + 218, ctgogo, -169.8, -368.8 , 0 );
setEffMoveKey( spep_0 -3 + 220, ctgogo, -175.4, -367.9 , 0 );
setEffMoveKey( spep_0 -3 + 222, ctgogo, -169.1, -367.7 , 0 );
setEffMoveKey( spep_0 -3 + 224, ctgogo, -175.8, -371.6 , 0 );

setEffScaleKey( spep_0 -3 + 144, ctgogo, 2.31, 2.31 );
setEffScaleKey( spep_0 -3 + 224, ctgogo, 2.31, 2.31 );

setEffRotateKey( spep_0 -3 + 144, ctgogo, -0.2 );
setEffRotateKey( spep_0 -3 + 224, ctgogo, -0.2 );

setEffAlphaKey( spep_0 -3 + 144, ctgogo, 255 );
setEffAlphaKey( spep_0 -3 + 224, ctgogo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 670, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--構える
playSe( spep_0 + 0, 1072 );
setSeVolume( spep_0 + 0, 1072, 110 -10 );

playSe( spep_0 + 16, 1059 );
setSeVolume( spep_0 + 16, 1059, 0 );
setSeVolume( spep_0 + 20, 1059, 20 -10 );
setSeVolume( spep_0 + 24, 1059, 40 -10 );
setSeVolume( spep_0 + 29, 1059, 66 -10 );

--溜め
SE0 = playSe( spep_0 + 69, 1209 );
setSeVolume( spep_0 + 69, 1209, 73 -10 );

SE1 = playSe( spep_0 + 69, 1176 );
setSeVolume( spep_0 + 69, 1176, 66 -10 );
stopSe(spep_0 + 645, SE1, 0 );

SE2 = playSe( spep_0 + 71, 1214 );
setSeVolume( spep_0 + 71, 1214, 66 -10 );

SE3 = playSe( spep_0 + 71, 1044 );
setSeVolume( spep_0 + 71, 1044, 45 -10 );
stopSe(spep_0 + 667, SE3, 0 );

SE4 = playSe( spep_0 + 87, 1048 );
setSeVolume( spep_0 + 87, 1048, 28 -10 );
stopSe(spep_0 + 94, SE4, 0 );

SE5 = playSe( spep_0 + 93, 1048 );
setSeVolume( spep_0 + 93, 1048, 42 -10 );
stopSe(spep_0 + 100, SE5, 0 );

SE6 = playSe( spep_0 + 99, 1048 );
setSeVolume( spep_0 + 99, 1048, 55 -10 );
stopSe(spep_0 + 106, SE6, 0 );

SE7 = playSe( spep_0 + 105, 1048 );
setSeVolume( spep_0 + 105, 1048, 55 -10 );
stopSe(spep_0 + 112, SE7, 0 );

SE8 = playSe( spep_0 + 111, 1048 );
setSeVolume( spep_0 + 111, 1048, 55 -10 );
stopSe(spep_0 + 119, SE8, 0 );

SE9 = playSe( spep_0 + 118, 1048 );
setSeVolume( spep_0 + 118, 1048, 55 -10 );
stopSe(spep_0 + 125, SE9, 0 );

SE10 = playSe( spep_0 + 124, 1048 );
setSeVolume( spep_0 + 124, 1048, 55 -10 );
stopSe(spep_0 + 131, SE10, 0 );

SE11 = playSe( spep_0 + 130, 1048 );
setSeVolume( spep_0 + 130, 1048, 42 -10 );
stopSe(spep_0 + 137, SE11, 0 );

SE12 = playSe( spep_0 + 136, 1048 );
setSeVolume( spep_0 + 136, 1048, 28 -10 );
stopSe(spep_0 + 142, SE12, 0 );

SE13 = playSe( spep_0 + 141, 1048 );
setSeVolume( spep_0 + 141, 1048, 23 -10 );

SE14 = playSe( spep_0 + 130, 1210 );
setSeVolume( spep_0 + 130, 1210, 100 -10 );
setSeVolume( spep_0 + 268, 1210, 100 -10 );
setSeVolume( spep_0 + 270, 1210, 110 -10 );
setSeVolume( spep_0 + 274, 1210, 120 -10 );
setSeVolume( spep_0 + 276, 1210, 130 -10 );
setSeVolume( spep_0 + 279, 1210, 141 -10 );
setSeVolume( spep_0 + 284, 1210, 142 -10 );
setSeVolume( spep_0 + 310, 1210, 143 -10 );
setSeVolume( spep_0 + 350, 1210, 144 -10 );
setSeVolume( spep_0 + 402, 1210, 145 -10 );
setSeVolume( spep_0 + 416, 1210, 146 -10 );
setSeVolume( spep_0 + 430, 1210, 148 -10 );
setSeVolume( spep_0 + 460, 1210, 150 -10 );
setSeVolume( spep_0 + 500, 1210, 152 -10 );
setSeVolume( spep_0 + 530, 1210, 156 -10 );
setSeVolume( spep_0 + 557, 1210, 158 -10 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 240; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe(SP_dodge - 12, SE0, 0 );
stopSe(SP_dodge - 12, SE1, 0 );
stopSe(SP_dodge - 12, SE2, 0 );
stopSe(SP_dodge - 12, SE3, 0 );
stopSe(SP_dodge - 12, SE13, 0 );
stopSe(SP_dodge - 12, SE14, 0 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

-- ** 白フェード ** --
entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 226, 1, 1 );
setDisp( spep_0 -3 + 314, 1, 0 );
changeAnime( spep_0 -3 + 226, 1, 17 );

setMoveKey( spep_0 -3 + 226, 1, -245.1, -91.4 , 0 );
setMoveKey( spep_0 -3 + 228, 1, -244.4, -88.4 , 0 );
setMoveKey( spep_0 -3 + 230, 1, -245.8, -90.4 , 0 );
setMoveKey( spep_0 -3 + 232, 1, -245.1, -88.4 , 0 );
setMoveKey( spep_0 -3 + 234, 1, -245.4, -88.4 , 0 );
setMoveKey( spep_0 -3 + 236, 1, -247.8, -85.4 , 0 );
setMoveKey( spep_0 -3 + 238, 1, -246.1, -89.4 , 0 );
setMoveKey( spep_0 -3 + 240, 1, -245.4, -88.4 , 0 );
setMoveKey( spep_0 -3 + 242, 1, -246.8, -87.4 , 0 );
setMoveKey( spep_0 -3 + 244, 1, -244.1, -89.4 , 0 );
setMoveKey( spep_0 -3 + 246, 1, -243.4, -87.4 , 0 );
setMoveKey( spep_0 -3 + 248, 1, -245.8, -89.4 , 0 );
setMoveKey( spep_0 -3 + 250, 1, -244.1, -88.4 , 0 );
setMoveKey( spep_0 -3 + 252, 1, -243.4, -88.4 , 0 );
setMoveKey( spep_0 -3 + 254, 1, -243.8, -87.4 , 0 );
setMoveKey( spep_0 -3 + 256, 1, -241.1, -91.4 , 0 );
setMoveKey( spep_0 -3 + 258, 1, -241.4, -87.4 , 0 );
setMoveKey( spep_0 -3 + 260, 1, -240.8, -87.4 , 0 );
setMoveKey( spep_0 -3 + 262, 1, -239.1, -88.4 , 0 );
setMoveKey( spep_0 -3 + 264, 1, -238.4, -88.4 , 0 );
setMoveKey( spep_0 -3 + 266, 1, -237.8, -88.4 , 0 );
setMoveKey( spep_0 -3 + 268, 1, -237.1, -89.4 , 0 );
setMoveKey( spep_0 -3 + 270, 1, -237.4, -88.4 , 0 );
setMoveKey( spep_0 -3 + 272, 1, -239.7, -90.4 , 0 );
setMoveKey( spep_0 -3 + 274, 1, -281.1 +40, -91.4 , 0 );
setMoveKey( spep_0 -3 + 276, 1, -253.4, -91.4 , 0 );
setMoveKey( spep_0 -3 + 278, 1, -243.7, -92.4 , 0 );
setMoveKey( spep_0 -3 + 280, 1, -248.1, -83.4 , 0 );
setMoveKey( spep_0 -3 + 282, 1, -238.4, -92.4 , 0 );
setMoveKey( spep_0 -3 + 284, 1, -240.7, -97.4 , 0 );
setMoveKey( spep_0 -3 + 286, 1, -233.1, -93.4 , 0 );
setMoveKey( spep_0 -3 + 288, 1, -236.4, -88.4 , 0 );
setMoveKey( spep_0 -3 + 290, 1, -240.7, -89.4 , 0 );
setMoveKey( spep_0 -3 + 292, 1, -242.1, -86.4 , 0 );
setMoveKey( spep_0 -3 + 294, 1, -235.4, -85.4 , 0 );
setMoveKey( spep_0 -3 + 296, 1, -238.7, -89.4 , 0 );
setMoveKey( spep_0 -3 + 298, 1, -241.1, -88.4 , 0 );
setMoveKey( spep_0 -3 + 300, 1, -237.4, -86.4 , 0 );
setMoveKey( spep_0 -3 + 302, 1, -241.7, -86.4 , 0 );
setMoveKey( spep_0 -3 + 304, 1, -241.1, -87.4 , 0 );
setMoveKey( spep_0 -3 + 306, 1, -238.4, -86.4 , 0 );
setMoveKey( spep_0 -3 + 308, 1, -237.7, -88.4 , 0 );
setMoveKey( spep_0 -3 + 310, 1, -236.1, -86.4 , 0 );
setMoveKey( spep_0 -3 + 312, 1, -236.4, -86.4 , 0 );
setMoveKey( spep_0 -3 + 314, 1, -236.4, -86.4 , 0 );

setScaleKey( spep_0 -3 + 226, 1, 0.23, 0.23 );
setScaleKey( spep_0 -3 + 314, 1, 0.23, 0.23 );

setRotateKey( spep_0 -3 + 226, 1, 0 );
setRotateKey( spep_0 -3 + 314, 1, 0 );

setAlphaKey( spep_0 -3 + 226, 1, 255 );
setAlphaKey( spep_0 -3 + 314, 1, 255 );

setBlendColor( spep_0 -3 + 226, 1, 2, 0, 0.2, 0.7, 0.3);
setBlendColor( spep_0 -3 + 314, 1, 2, 0, 0.2, 0.7, 0.3);

-- ** 音 ** --
--気爆発
playSe( spep_0 + 276, 1033 );
setSeVolume( spep_0 + 276, 1033, 89 -10 );

SE15 = playSe( spep_0 + 276, 1160 );
setSeVolume( spep_0 + 276, 1160, 89 -10 );
setSeVolume( spep_0 + 314, 1160, 89 -10 );
setSeVolume( spep_0 + 330, 1160, 76 -10 );
setSeVolume( spep_0 + 352, 1160, 58 -10 );
setSeVolume( spep_0 + 376, 1160, 30 -10 );
setSeVolume( spep_0 + 390, 1160, 12 );
setSeVolume( spep_0 + 410, 1160, 0 );
stopSe( spep_0 + 410, SE15, 0 );

--発射
playSe( spep_0 + 596, 1027 );
setSeVolume( spep_0 + 596, 1027, 73 -10 );
playSe( spep_0 + 598, 1146 );
setSeVolume( spep_0 + 598, 1146, 110 -10 );

--発射横から
SE16 = playSe( spep_0 + 630, 1211 );
setSeVolume( spep_0 + 630, 1211, 261 -10 );

SE17 = playSe( spep_0 + 630, 1176 );
setSeVolume( spep_0 + 630, 1176, 42 -10 );

SE18 = playSe( spep_0 + 630, 1019 );
setSeVolume( spep_0 + 630, 1019, 35 -10 );

playSe( spep_0 + 663, 1027 );
setSeVolume( spep_0 + 663, 1027, 110 -10 );
playSe( spep_0 + 665, 1223 );
setSeVolume( spep_0 + 665, 1223, 110 -10 );
playSe( spep_0 + 665, 1213 );
setSeVolume( spep_0 + 665, 1213, 110 -10 );
playSe( spep_0 + 665, 1022 );
setSeVolume( spep_0 + 665, 1022, 110 -10 );

-- ** ボイス ** --
--いくぞ
playVoice( spep_0 -3 + 274, 139 );
setVoiceVolume( spep_0 -3 + 274, 139, 168 +10 -10 );

--かめはめ
playVoice( spep_0 -3 + 430, 140 );
setVoiceVolume( spep_0 -3 + 430, 140, 251 +10 -23 );
setVoiceVolume( spep_0 -3 + 450, 140, 178 +10 -23 );

--波ァァー！
playVoice( spep_0 + 538, 141 );
setVoiceVolume( spep_0 + 538, 141, 237 +10 -23 );
setVoiceVolume( spep_0 + 555, 141, 178 +10 -23 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 668;

------------------------------------------------------
-- 後半(408F)
------------------------------------------------------
-- ** エフェクト等 ** --
kouhan_f = entryEffectLife( spep_1 + 0, SP_03, 408, 0x80, -1, 0, 0, 0 );  --後半　奥(ef_003)
setEffMoveKey( spep_1 + 0, kouhan_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 408, kouhan_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kouhan_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 408, kouhan_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kouhan_f, 0 );
setEffRotateKey( spep_1 + 408, kouhan_f, 0 );
setEffAlphaKey( spep_1 + 0, kouhan_f, 255 );
setEffAlphaKey( spep_1 + 408, kouhan_f, 255 );

kouhan_b = entryEffectLife( spep_1 + 0, SP_04, 408, 0x100, -1, 0, 0, 0 );  --後半　手前(ef_004)
setEffMoveKey( spep_1 + 0, kouhan_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 408, kouhan_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kouhan_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 408, kouhan_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kouhan_b, 0 );
setEffRotateKey( spep_1 + 408, kouhan_b, 0 );
setEffAlphaKey( spep_1 + 0, kouhan_b, 255 );
setEffAlphaKey( spep_1 + 408, kouhan_b, 255 );

KO = entryEffect( spep_1 + 406, SP_05, 0x100, -1, 0, 0, 0 );  --KO演出(ef_005)
setEffMoveKey( spep_1 + 406, KO, 0, 0 , 0 );
setEffMoveKey( spep_1 + 632, KO, 0, 0 , 0 );
setEffScaleKey( spep_1 + 406, KO, 1.0 +0.05, 1.0 +0.05 );
setEffScaleKey( spep_1 + 632, KO, 1.0 +0.05, 1.0 +0.05 );
setEffRotateKey( spep_1 + 406, KO, 0 );
setEffRotateKey( spep_1 + 632, KO, 0 );
setEffAlphaKey( spep_1 + 406, KO, 255 );
setEffAlphaKey( spep_1 + 632, KO, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 118, 1, 1 );
setDisp( spep_1 -3 + 226, 1, 0 );
changeAnime( spep_1 -3 + 118, 1, 104 );

setMoveKey( spep_1 -3 + 118, 1, 234.2, -65 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 232.2, -78 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 224.1, -64 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 221.1, -75 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 213.4, -1.8 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 165.1, 24.1 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 174.1, 14.1 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 147, 46.3 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 198.5, 149.2 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 187.5, 137.2 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 198.8, 162.5 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 161.7, 167.3 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 164.7, 155.3 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 81.4, 168.3 , 0 );
setMoveKey( spep_1 -3 + 145, 1, 81.4, 168.3 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 198.6, 181.4 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 189.6, 189.4 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 171.6, 175.4 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 185.6, 175.4 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 176.6, 175.4 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 168.6, 189.4 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 164.6, 191.4 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 149.6, 188.4 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 168.6, 193.4 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 159.6, 183.4 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 158.6, 195.4 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 175.6, 201.4 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 171.6, 196.4 , 0 );
setMoveKey( spep_1 -3 + 182, 1, 171.6, 196.4 , 0 );
setMoveKey( spep_1 -3 + 184, 1, 155.6, 200.4 , 0 );
setMoveKey( spep_1 -3 + 186, 1, 156.6, 185.4 , 0 );
setMoveKey( spep_1 -3 + 188, 1, 152.6, 203.4 , 0 );
setMoveKey( spep_1 -3 + 190, 1, 151.6, 200.4 , 0 );
setMoveKey( spep_1 -3 + 192, 1, 151.6, 200.4 , 0 );
setMoveKey( spep_1 -3 + 194, 1, 163.6, 194.4 , 0 );
setMoveKey( spep_1 -3 + 196, 1, 172.6, 209.4 , 0 );
setMoveKey( spep_1 -3 + 198, 1, 154.6, 188.4 , 0 );
setMoveKey( spep_1 -3 + 200, 1, 154.6, 200.4 , 0 );
setMoveKey( spep_1 -3 + 202, 1, 163.6, 199.4 , 0 );
setMoveKey( spep_1 -3 + 204, 1, 173.6, 207.4 , 0 );
setMoveKey( spep_1 -3 + 206, 1, 173.6, 207.4 , 0 );
setMoveKey( spep_1 -3 + 208, 1, 163.6, 217.4 , 0 );
setMoveKey( spep_1 -3 + 210, 1, 171.6, 194.4 , 0 );
setMoveKey( spep_1 -3 + 212, 1, 166.6, 196.4 , 0 );
setMoveKey( spep_1 -3 + 214, 1, 154.6, 204.4 , 0 );
setMoveKey( spep_1 -3 + 216, 1, 154.6, 204.4 , 0 );
setMoveKey( spep_1 -3 + 218, 1, 174.6, 196.4 , 0 );
setMoveKey( spep_1 -3 + 220, 1, 175.6, 215.4 , 0 );
setMoveKey( spep_1 -3 + 222, 1, 169.6, 194.4 , 0 );
setMoveKey( spep_1 -3 + 224, 1, 169.6, 194.4 , 0 );
setMoveKey( spep_1 -3 + 226, 1, 172.6, 211.4 , 0 );

setScaleKey( spep_1 -3 + 118, 1, 0.44, 0.44 );
setScaleKey( spep_1 -3 + 120, 1, 0.44, 0.44 );
setScaleKey( spep_1 -3 + 122, 1, 0.45, 0.45 );
setScaleKey( spep_1 -3 + 124, 1, 0.45, 0.45 );
setScaleKey( spep_1 -3 + 126, 1, 0.55, 0.55 );
setScaleKey( spep_1 -3 + 130, 1, 0.55, 0.55 );
setScaleKey( spep_1 -3 + 132, 1, 0.56, 0.56 );
setScaleKey( spep_1 -3 + 134, 1, 0.57, 0.57 );
setScaleKey( spep_1 -3 + 136, 1, 0.57, 0.57 );
setScaleKey( spep_1 -3 + 138, 1, 0.59, 0.59 );
setScaleKey( spep_1 -3 + 140, 1, 0.6, 0.6 );
setScaleKey( spep_1 -3 + 142, 1, 0.6, 0.6 );
setScaleKey( spep_1 -3 + 144, 1, 0.62, 0.62 );
setScaleKey( spep_1 -3 + 145, 1, 0.62, 0.62 );
setScaleKey( spep_1 -3 + 146, 1, 0.45, 0.45 );
setScaleKey( spep_1 -3 + 226, 1, 0.45, 0.45 );

setRotateKey( spep_1 -3 + 118, 1, -19.9 );
setRotateKey( spep_1 -3 + 120, 1, -19.9 );
setRotateKey( spep_1 -3 + 122, 1, -27.6 );
setRotateKey( spep_1 -3 + 124, 1, -27.6 );
setRotateKey( spep_1 -3 + 126, 1, -38 );
setRotateKey( spep_1 -3 + 127, 1, -38 );
setRotateKey( spep_1 -3 + 128, 1, -54.7 );
setRotateKey( spep_1 -3 + 130, 1, -54.7 );
setRotateKey( spep_1 -3 + 131, 1, -54.7 );
setRotateKey( spep_1 -3 + 132, 1, -67 );
setRotateKey( spep_1 -3 + 133, 1, -67 );
setRotateKey( spep_1 -3 + 134, 1, -111.8 );
setRotateKey( spep_1 -3 + 136, 1, -111.8 );
setRotateKey( spep_1 -3 + 137, 1, -111.8 );
setRotateKey( spep_1 -3 + 138, 1, -131.3 );
setRotateKey( spep_1 -3 + 139, 1, -131.3 );
setRotateKey( spep_1 -3 + 140, 1, -136.9 );
setRotateKey( spep_1 -3 + 142, 1, -136.9 );
setRotateKey( spep_1 -3 + 143, 1, -136.9 );
setRotateKey( spep_1 -3 + 144, 1, -158.2 );
setRotateKey( spep_1 -3 + 145, 1, -158.2 );
setRotateKey( spep_1 -3 + 146, 1, 1.1 );
setRotateKey( spep_1 -3 + 226, 1, 1.1 );

setAlphaKey( spep_1 -3 + 118, 1, 101 );
setAlphaKey( spep_1 -3 + 120, 1, 101 );
setAlphaKey( spep_1 -3 + 122, 1, 141 );
setAlphaKey( spep_1 -3 + 124, 1, 141 );
setAlphaKey( spep_1 -3 + 126, 1, 161 );
setAlphaKey( spep_1 -3 + 145, 1, 161 );
setAlphaKey( spep_1 -3 + 146, 1, 255 );
setAlphaKey( spep_1 -3 + 226, 1, 255 );

setBlendColor( spep_1 -3 + 118, 1, 2, 0, 0, 0, 0 );
setBlendColor( spep_1 -3 + 146, 1, 2, 0.3, 0.3, 0.6, 0.5 );
setBlendColor( spep_1 -3 + 226, 1, 2, 0, 0, 0, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 410, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--発射横から
setSeVolume( spep_1 + 347 -38, 1211, 261 );
setSeVolume( spep_1 + 360 -38, 1211, 190 );
setSeVolume( spep_1 + 382 -38, 1211, 100 );
setSeVolume( spep_1 + 400 -38, 1211, 40 );
setSeVolume( spep_1 + 421 -38, 1211, 0 );
stopSe( spep_1 + 421 -38, SE16, 0 );

setSeVolume( spep_1 + 357 -38, 1176, 42 );
setSeVolume( spep_1 + 370 -38, 1176, 38 );
setSeVolume( spep_1 + 384 -38, 1176, 30 );
setSeVolume( spep_1 + 400 -38, 1176, 14 );
setSeVolume( spep_1 + 426 -38, 1176, 0 );
stopSe( spep_1 + 426 -38, SE17, 0 );

setSeVolume( spep_1 + 356 -38, 1019, 35 );
setSeVolume( spep_1 + 378 -38, 1019, 28 );
setSeVolume( spep_1 + 390 -38, 1019, 14 );
setSeVolume( spep_1 + 410 -38, 1019, 6 );
setSeVolume( spep_1 + 449 -38, 1019, 0 );
stopSe( spep_1 + 449 -38, SE18, 0 );

SE19 = playSe( spep_1 + 7, 1044 );
setSeVolume( spep_1 + 7, 1044, 0 );
setSeVolume( spep_1 + 14, 1044, 12 );
setSeVolume( spep_1 + 30, 1044, 30 );
setSeVolume( spep_1 + 48, 1044, 51 );
setSeVolume( spep_1 + 62, 1044, 66 );
setSeVolume( spep_1 + 80, 1044, 78 );
setSeVolume( spep_1 + 97, 1044, 92 );
setSeVolume( spep_1 + 108, 1044, 110 );
setSeVolume( spep_1 + 331 -38, 1044, 110 );
setSeVolume( spep_1 + 350 -38, 1044, 100 );
setSeVolume( spep_1 + 467 -38, 1044, 0 );
stopSe( spep_1 + 350 -38, SE19, 117 );

playSe( spep_1 + 64, 1159 );
setSeVolume( spep_1 + 64, 1159, 110 );

--画面切り替え
playSe( spep_1 + 64, 1212 );
setSeVolume( spep_1 + 64, 1212, 50 );

SE20 = playSe( spep_1 + 77, 1215 );
setSeVolume( spep_1 + 77, 1215, 66 );
setSeVolume( spep_1 + 383 -38, 1215, 66 );
setSeVolume( spep_1 + 400 -38, 1215, 50 );
setSeVolume( spep_1 + 414 -38, 1215, 32 );
setSeVolume( spep_1 + 436 -38, 1215, 8 );
setSeVolume( spep_1 + 446 -38, 1215, 0 );
stopSe( spep_1 + 446 -38, SE20, 0 );

playSe( spep_1 + 166, 1021 );
setSeVolume( spep_1 + 166, 1021, 110 );

-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_1 + 234 );
entryFade( spep_1 +408 - 4, 2,  4, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_1 + 408 );

else end


