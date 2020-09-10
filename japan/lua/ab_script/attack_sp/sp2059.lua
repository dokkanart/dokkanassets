--超ベジット_超かめはめ波

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
SP_01 = 155901;  --前半　前
SP_02 = 155902;  --前半　奥
SP_03 = 155903;  --後半

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
-- 前半(828F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 830, 0x100, -1, 0, 0, 0 );  --前半(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 830, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 830, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 830, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 830, first_f, 255 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 830, 0x80, -1, 0, 0, 0 );  --前半(ef_002)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 830, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 830, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 830, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 830, first_b, 255 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 830, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

--入り
SE001 = playSe( spep_0 + 0, 44 );
setPitch( spep_0 + 0, SE001, -400 );
setTimeStretch( SE001, 0.73, 10, 1 );

SE002 = playSe( spep_0 + 0, 1232 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 0 );
setSeVolumeByWorkId( spep_0 + 2, SE002, 21 );
setSeVolumeByWorkId( spep_0 + 6, SE002, 47 );
setSeVolumeByWorkId( spep_0 + 8, SE002, 68 );

--手前ダッシュ
SE004 = playSe( spep_0 + 54, 1183 );
stopSe( spep_0 + 132, SE004, 0 );

SE005 = playSe( spep_0 + 54, 1182 );
SE006 = playSe( spep_0 + 54, 9 );
setTimeStretch( SE006, 1.25, 10, 1 );

--ベジットアップ
SE007 = playSe( spep_0 + 76, 1278 );
setPitch( spep_0 + 76, SE007, -1200 );
setTimeStretch( SE007, 0.2, 10, 1 );
stopSe( spep_0 + 112, SE007, 21 );

SE008 = playSe( spep_0 + 80, 1116 );
stopSe( spep_0 + 110, SE008, 16 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 96; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE004, 0 );
stopSe( SP_dodge - 12, SE005, 0 );
stopSe( SP_dodge - 12, SE006, 0 );
stopSe( SP_dodge - 12, SE007, 0 );
stopSe( SP_dodge - 12, SE008, 0 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
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
setDisp( spep_0 -3 + 132, 1, 1 );
setDisp( spep_0 -3 + 428, 1, 0 );
changeAnime( spep_0 -3 + 132, 1, 6 );
changeAnime( spep_0 -3 + 192, 1, 7 );
changeAnime( spep_0 -3 + 222, 1, 6 );
changeAnime( spep_0 -3 + 252, 1, 106 );
changeAnime( spep_0 -3 + 360, 1, 105 );
changeAnime( spep_0 -3 + 408, 1, 6 );

setBlendColor( spep_0 -3 + 318, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_0 -3 + 322, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_0 -3 + 323, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_0 -3 + 324, 1, 3, 0, 0, 0, 0 );

a3 = 40;
setMoveKey( spep_0 -3 + 132, 1, 239, -589.1 -a3 , 0 );  --殴られる
setMoveKey( spep_0 -3 + 134, 1, 193.8, -718.6 -a3 , 0 );
setMoveKey( spep_0 -3 + 136, 1, 46, -337.4 -a3 , 0 );
setMoveKey( spep_0 -3 + 138, 1, 285.8, -687.1 -a3 , 0 );
setMoveKey( spep_0 -3 + 140, 1, 107.6, -539.4 -a3 , 0 );
setMoveKey( spep_0 -3 + 142, 1, 239.3, -544.7 -a3 , 0 );
setMoveKey( spep_0 -3 + 144, 1, 74.8, -483.6 -a3 , 0 );
setMoveKey( spep_0 -3 + 146, 1, 132.1, -679.7 -a3 , 0 );
setMoveKey( spep_0 -3 + 148, 1, 95.5, -417.4 -a3 , 0 );
setMoveKey( spep_0 -3 + 150, 1, -97, -193.2 -a3 , 0 );
setMoveKey( spep_0 -3 + 152, 1, -137.1, -80.1 -a3 , 0 );
setMoveKey( spep_0 -3 + 154, 1, -140.9, 19.6 -a3 , 0 );
setMoveKey( spep_0 -3 + 156, 1, -168.7, -3.4 -a3 , 0 );
setMoveKey( spep_0 -3 + 158, 1, -153.5, 26.8 -a3 , 0 );
setMoveKey( spep_0 -3 + 160, 1, -167.9, 16.6 -a3 , 0 );
setMoveKey( spep_0 -3 + 162, 1, -153.3, 23 -a3 , 0 );
setMoveKey( spep_0 -3 + 164, 1, -161.2, 18.6 -a3 , 0 );
setMoveKey( spep_0 -3 + 166, 1, -156.5, 23.9 -a3 , 0 );
setMoveKey( spep_0 -3 + 168, 1, -160.6, 21.4 -a3 , 0 );
setMoveKey( spep_0 -3 + 170, 1, -156.3, 23.6 -a3 , 0 );
setMoveKey( spep_0 -3 + 172, 1, -158, 24.2 -a3 , 0 );
setMoveKey( spep_0 -3 + 174, 1, -156.2, 25.3 -a3 , 0 );
setMoveKey( spep_0 -3 + 176, 1, -156.9, 25.3 -a3 , 0 );
setMoveKey( spep_0 -3 + 178, 1, -155.8, 26.2 -a3 , 0 );
setMoveKey( spep_0 -3 + 180, 1, -156.2, 26.7 -a3 , 0 );
setMoveKey( spep_0 -3 + 182, 1, -155.3, 27.2 -a3 , 0 );
setMoveKey( spep_0 -3 + 184, 1, -154.8, 28.1 -a3 , 0 );
setMoveKey( spep_0 -3 + 186, 1, -154.5, 28.6 -a3 , 0 );
setMoveKey( spep_0 -3 + 188, 1, -154.1, 29.4 -a3 , 0 );
setMoveKey( spep_0 -3 + 190, 1, -153, 29.6 -a3 , 0 );
setMoveKey( spep_0 -3 + 191, 1, -153, 29.6 -a3 , 0 );

setMoveKey( spep_0 -3 + 192, 1, -13.3, -150.2 , 0 );
setMoveKey( spep_0 -3 + 194, 1, -13.7, -150.5 , 0 );
setMoveKey( spep_0 -3 + 196, 1, -14.1, -150.9 , 0 );
setMoveKey( spep_0 -3 + 198, 1, -14.5, -151.2 , 0 );
setMoveKey( spep_0 -3 + 200, 1, -14.9, -151.5 , 0 );
setMoveKey( spep_0 -3 + 202, 1, -15.3, -151.8 , 0 );
setMoveKey( spep_0 -3 + 204, 1, -15.7, -152.2 , 0 );
setMoveKey( spep_0 -3 + 206, 1, -16.1, -152.5 , 0 );
setMoveKey( spep_0 -3 + 208, 1, -16.5, -152.8 , 0 );
setMoveKey( spep_0 -3 + 210, 1, -16.9, -153.1 , 0 );
setMoveKey( spep_0 -3 + 212, 1, -19.1, -155 , 0 );
setMoveKey( spep_0 -3 + 214, 1, -29.2, -164.1 , 0 );
setMoveKey( spep_0 -3 + 216, 1, -54.3, -186.8 , 0 );
setMoveKey( spep_0 -3 + 218, 1, -109.1, -236.5 , 0 );
setMoveKey( spep_0 -3 + 220, 1, -346, -450.9 , 0 );
setMoveKey( spep_0 -3 + 221, 1, -346, -450.9 , 0 );

setMoveKey( spep_0 -3 + 222, 1, -1222.8, -1054.1 , 0 );  --掴む
setMoveKey( spep_0 -3 + 224, 1, -1214.6, -1086.7 , 0 );
setMoveKey( spep_0 -3 + 226, 1, -1207.3, -1113.3 , 0 );
setMoveKey( spep_0 -3 + 228, 1, -1201.4, -1133.9 , 0 );
setMoveKey( spep_0 -3 + 230, 1, -1197.1, -1148.6 , 0 );
setMoveKey( spep_0 -3 + 232, 1, -1194.4, -1157.4 , 0 );
setMoveKey( spep_0 -3 + 234, 1, -1193.5, -1160.3 , 0 );
setMoveKey( spep_0 -3 + 236, 1, -1193.7, -1159.6 , 0 );
setMoveKey( spep_0 -3 + 238, 1, -1194.3, -1157.3 , 0 );
setMoveKey( spep_0 -3 + 240, 1, -1195.3, -1152.5 , 0 );
setMoveKey( spep_0 -3 + 242, 1, -1197.2, -1144.5 , 0 );
setMoveKey( spep_0 -3 + 244, 1, -1199.8, -1133.1 , 0 );
setMoveKey( spep_0 -3 + 246, 1, -1202.3, -1121.7 , 0 );
setMoveKey( spep_0 -3 + 248, 1, -1203.7, -1115.2 , 0 );
setMoveKey( spep_0 -3 + 250, 1, -1204.1, -1113.4 , 0 );
setMoveKey( spep_0 -3 + 251, 1, -1204.1, -1113.4 , 0 );

a1 = 40;
setMoveKey( spep_0 -3 + 252, 1, 577.2, 972.7 -a1 , 0 );  --斜め掴み
setMoveKey( spep_0 -3 + 253, 1, 577.2, 972.7 -a1 , 0 );
setMoveKey( spep_0 -3 + 254, 1, 430.4, 777.9 -a1 , 0 );
setMoveKey( spep_0 -3 + 255, 1, 430.4, 777.9 -a1 , 0 );
setMoveKey( spep_0 -3 + 256, 1, 307.5, 614.8 -a1 , 0 );
setMoveKey( spep_0 -3 + 257, 1, 307.5, 614.8 -a1 , 0 );
setMoveKey( spep_0 -3 + 258, 1, 196.2, 467.1 -a1 , 0 );
setMoveKey( spep_0 -3 + 259, 1, 196.2, 467.1 -a1 , 0 );
setMoveKey( spep_0 -3 + 260, 1, 101, 340.7 -a1 , 0 );
setMoveKey( spep_0 -3 + 261, 1, 101, 340.7 -a1 , 0 );
setMoveKey( spep_0 -3 + 262, 1, 26.7, 242.1 -a1 , 0 );
setMoveKey( spep_0 -3 + 263, 1, 26.7, 242.1 -a1 , 0 );
setMoveKey( spep_0 -3 + 264, 1, -35.9, 158.9 -a1 , 0 );
setMoveKey( spep_0 -3 + 265, 1, -35.9, 158.9 -a1 , 0 );
setMoveKey( spep_0 -3 + 266, 1, -74, 108.3 -a1 , 0 );
setMoveKey( spep_0 -3 + 267, 1, -74, 108.3 -a1 , 0 );
setMoveKey( spep_0 -3 + 268, 1, -104.3, 68 -a1 , 0 );
setMoveKey( spep_0 -3 + 269, 1, -104.3, 68 -a1 , 0 );
setMoveKey( spep_0 -3 + 270, 1, -108.9, 61.9 -a1 , 0 );
setMoveKey( spep_0 -3 + 271, 1, -108.9, 61.9 -a1 , 0 );
setMoveKey( spep_0 -3 + 272, 1, -115.3, 53.4 -a1 , 0 );
setMoveKey( spep_0 -3 + 273, 1, -115.3, 53.4 -a1 , 0 );
setMoveKey( spep_0 -3 + 274, 1, -110.4, 59.9 -a1 , 0 );
setMoveKey( spep_0 -3 + 275, 1, -110.4, 59.9 -a1 , 0 );
setMoveKey( spep_0 -3 + 276, 1, -118.1, 49.7 -a1 , 0 );
setMoveKey( spep_0 -3 + 277, 1, -118.1, 49.7 -a1 , 0 );
setMoveKey( spep_0 -3 + 278, 1, -114.3, 54.8 -a1 , 0 );
setMoveKey( spep_0 -3 + 279, 1, -114.3, 54.8 -a1 , 0 );
setMoveKey( spep_0 -3 + 280, 1, -120.5, 46.4 -a1 , 0 );
setMoveKey( spep_0 -3 + 281, 1, -120.5, 46.4 -a1 , 0 );
setMoveKey( spep_0 -3 + 282, 1, -118.8, 48.7 -a1 , 0 );
setMoveKey( spep_0 -3 + 283, 1, -118.8, 48.7 -a1 , 0 );
setMoveKey( spep_0 -3 + 284, 1, -125.2, 40.2 -a1 , 0 );
setMoveKey( spep_0 -3 + 285, 1, -125.2, 40.2 -a1 , 0 );
setMoveKey( spep_0 -3 + 286, 1, -124.2, 41.6 -a1 , 0 );
setMoveKey( spep_0 -3 + 287, 1, -124.2, 41.6 -a1 , 0 );
a2 = 70;
setMoveKey( spep_0 -3 + 288, 1, -501.6, 1807 -a2 , 0 );  --正面掴み落とし
setMoveKey( spep_0 -3 + 290, 1, -501.7, 1149.8 -a2 , 0 );
setMoveKey( spep_0 -3 + 292, 1, -501.7, 992 -a2 , 0 );
setMoveKey( spep_0 -3 + 294, 1, -501.7, 903.5 -a2 , 0 );
setMoveKey( spep_0 -3 + 296, 1, -501.7, 855 -a2 , 0 );
setMoveKey( spep_0 -3 + 298, 1, -501.7, 822.8 -a2 , 0 );
setMoveKey( spep_0 -3 + 300, 1, -501.7, 799.7 -a2 , 0 );
setMoveKey( spep_0 -3 + 302, 1, -501.7, 782.9 -a2 , 0 );
setMoveKey( spep_0 -3 + 304, 1, -501.7, 775 -a2 , 0 );
setMoveKey( spep_0 -3 + 306, 1, -501.7, 778.8 -a2 , 0 );
setMoveKey( spep_0 -3 + 308, 1, -501.7, 765 -a2 , 0 );
setMoveKey( spep_0 -3 + 310, 1, -501.7, 764.2 -a2 , 0 );
setMoveKey( spep_0 -3 + 312, 1, -501.7, 760.3 -a2 , 0 );
setMoveKey( spep_0 -3 + 314, 1, -501.7, 765.2 -a2 , 0 );
setMoveKey( spep_0 -3 + 316, 1, -501.7, 761.1 -a2 , 0 );
setMoveKey( spep_0 -3 + 317, 1, -501.7, 761.1 -a2 , 0 );
setMoveKey( spep_0 -3 + 318, 1, -501.7, 751.9 -a2 , 0 );
setMoveKey( spep_0 -3 + 320, 1, -501.7, 755.1 -a2 , 0 );
setMoveKey( spep_0 -3 + 321, 1, -501.7, 755.1 -a2 , 0 );
setMoveKey( spep_0 -3 + 322, 1, -501.7, 755.6 -a2 , 0 );
setMoveKey( spep_0 -3 + 324, 1, -485.6, 766.9 -a2 , 0 );
setMoveKey( spep_0 -3 + 326, 1, -500.3, 740.1 -a2 , 0 );
setMoveKey( spep_0 -3 + 328, 1, -505.5, 757.1 -a2 , 0 );
setMoveKey( spep_0 -3 + 330, 1, -500.5, 744.8 -a2 , 0 );
setMoveKey( spep_0 -3 + 332, 1, -503.3, 751.1 -a2 , 0 );
setMoveKey( spep_0 -3 + 334, 1, -506, 747.8 -a2 , 0 );
setMoveKey( spep_0 -3 + 336, 1, -502.5, 747.2 -a2 , 0 );
setMoveKey( spep_0 -3 + 338, 1, -503.3, 741 -a2 , 0 );
setMoveKey( spep_0 -3 + 340, 1, -501.7, 732.7 -a2 , 0 );
setMoveKey( spep_0 -3 + 342, 1, -501.7, 735.1 -a2 , 0 );
setMoveKey( spep_0 -3 + 344, 1, -501.7, 723.6 -a2 , 0 );
setMoveKey( spep_0 -3 + 346, 1, -501.7, 722.6 -a2 , 0 );
setMoveKey( spep_0 -3 + 348, 1, -501.7, 699.5 -a2 , 0 );
setMoveKey( spep_0 -3 + 350, 1, -501.7, 690 -a2 , 0 );
setMoveKey( spep_0 -3 + 352, 1, -501.7, 653.1 -a2 , 0 );
setMoveKey( spep_0 -3 + 354, 1, -501.7, 620.7 -a2 , 0 );
setMoveKey( spep_0 -3 + 356, 1, -501.7, 540.3 -a2 , 0 );
setMoveKey( spep_0 -3 + 358, 1, -501.7, 405.8 -a2 , 0 );
setMoveKey( spep_0 -3 + 359, 1, -501.7, 405.8 -a2 , 0 );

setMoveKey( spep_0 -3 + 360, 1, 214.5, 755.7 , 0 );
setMoveKey( spep_0 -3 + 362, 1, 123.1, 534.7 , 0 );
setMoveKey( spep_0 -3 + 364, 1, 42.9, 340.6 , 0 );
setMoveKey( spep_0 -3 + 366, 1, -27.4, 170.5 , 0 );
setMoveKey( spep_0 -3 + 368, 1, -88, 23.4 , 0 );
setMoveKey( spep_0 -3 + 370, 1, -138.8, -99.8 , 0 );
setMoveKey( spep_0 -3 + 372, 1, -178.7, -196.7 , 0 );
setMoveKey( spep_0 -3 + 374, 1, -205.8, -262.3 , 0 );
setMoveKey( spep_0 -3 + 376, 1, -216.1, -287.4 , 0 );
setMoveKey( spep_0 -3 + 378, 1, -232.1, -325.7 , 0 );
setMoveKey( spep_0 -3 + 380, 1, -240.9, -346.6 , 0 );
setMoveKey( spep_0 -3 + 382, 1, -247.1, -361.5 , 0 );
setMoveKey( spep_0 -3 + 384, 1, -251.9, -372.9 , 0 );
setMoveKey( spep_0 -3 + 386, 1, -255.7, -381.9 , 0 );
setMoveKey( spep_0 -3 + 388, 1, -258.7, -389.3 , 0 );
setMoveKey( spep_0 -3 + 390, 1, -261.3, -395.3 , 0 );
setMoveKey( spep_0 -3 + 392, 1, -263.3, -400.2 , 0 );
setMoveKey( spep_0 -3 + 394, 1, -265, -404.2 , 0 );
setMoveKey( spep_0 -3 + 396, 1, -266.4, -407.5 , 0 );
setMoveKey( spep_0 -3 + 398, 1, -267.4, -410 , 0 );
setMoveKey( spep_0 -3 + 400, 1, -268.2, -411.9 , 0 );
setMoveKey( spep_0 -3 + 402, 1, -268.8, -413.3 , 0 );
setMoveKey( spep_0 -3 + 404, 1, -269.1, -414.1 , 0 );
setMoveKey( spep_0 -3 + 406, 1, -269.2, -414.3 , 0 );
setMoveKey( spep_0 -3 + 407, 1, -269.2, -414.3 , 0 );
setMoveKey( spep_0 -3 + 408, 1, 220.7, 638.3 , 0 );
setMoveKey( spep_0 -3 + 410, 1, 201.7, 531.8 , 0 );
setMoveKey( spep_0 -3 + 412, 1, 182.7, 425.3 , 0 );
setMoveKey( spep_0 -3 + 414, 1, 163.7, 318.8 , 0 );
setMoveKey( spep_0 -3 + 416, 1, 144.7, 212.3 , 0 );
setMoveKey( spep_0 -3 + 418, 1, 125.6, 105.8 , 0 );
setMoveKey( spep_0 -3 + 420, 1, 106.6, -0.7 , 0 );
setMoveKey( spep_0 -3 + 422, 1, 87.6, -107.1 , 0 );
setMoveKey( spep_0 -3 + 424, 1, 68.6, -213.6 , 0 );
setMoveKey( spep_0 -3 + 426, 1, 49.6, -320.1 , 0 );
setMoveKey( spep_0 -3 + 428, 1, 49.6, -320.1 , 0 );

setScaleKey( spep_0 -3 + 132, 1, 10.73, 10.73 );
setScaleKey( spep_0 -3 + 134, 1, 12.34, 12.34 );
setScaleKey( spep_0 -3 + 136, 1, 7.3, 7.3 );
setScaleKey( spep_0 -3 + 138, 1, 12.56, 12.56 );
setScaleKey( spep_0 -3 + 140, 1, 11, 11 );
setScaleKey( spep_0 -3 + 142, 1, 9.45, 9.45 );
setScaleKey( spep_0 -3 + 144, 1, 10.3, 10.3 );
setScaleKey( spep_0 -3 + 146, 1, 11, 11 );
setScaleKey( spep_0 -3 + 148, 1, 9.77, 9.77 );
setScaleKey( spep_0 -3 + 150, 1, 6, 6 );
setScaleKey( spep_0 -3 + 152, 1, 4.72, 4.72 );
setScaleKey( spep_0 -3 + 154, 1, 4.14, 4.14 );
setScaleKey( spep_0 -3 + 156, 1, 3.88, 3.88 );
setScaleKey( spep_0 -3 + 158, 1, 3.8, 3.8 );
setScaleKey( spep_0 -3 + 160, 1, 3.78, 3.78 );
setScaleKey( spep_0 -3 + 162, 1, 3.77, 3.77 );
setScaleKey( spep_0 -3 + 164, 1, 3.75, 3.75 );
setScaleKey( spep_0 -3 + 166, 1, 3.74, 3.74 );
setScaleKey( spep_0 -3 + 168, 1, 3.72, 3.72 );
setScaleKey( spep_0 -3 + 170, 1, 3.71, 3.71 );
setScaleKey( spep_0 -3 + 172, 1, 3.69, 3.69 );
setScaleKey( spep_0 -3 + 174, 1, 3.68, 3.68 );
setScaleKey( spep_0 -3 + 176, 1, 3.66, 3.66 );
setScaleKey( spep_0 -3 + 178, 1, 3.65, 3.65 );
setScaleKey( spep_0 -3 + 180, 1, 3.63, 3.63 );
setScaleKey( spep_0 -3 + 182, 1, 3.61, 3.61 );
setScaleKey( spep_0 -3 + 184, 1, 3.6, 3.6 );
setScaleKey( spep_0 -3 + 186, 1, 3.58, 3.58 );
setScaleKey( spep_0 -3 + 188, 1, 3.57, 3.57 );
setScaleKey( spep_0 -3 + 190, 1, 3.55, 3.55 );
setScaleKey( spep_0 -3 + 191, 1, 3.55, 3.55 );
setScaleKey( spep_0 -3 + 192, 1, 1.42, 1.42 );
setScaleKey( spep_0 -3 + 194, 1, 1.43, 1.43 );
setScaleKey( spep_0 -3 + 204, 1, 1.43, 1.43 );
setScaleKey( spep_0 -3 + 206, 1, 1.44, 1.44 );
setScaleKey( spep_0 -3 + 210, 1, 1.44, 1.44 );
setScaleKey( spep_0 -3 + 212, 1, 1.45, 1.45 );
setScaleKey( spep_0 -3 + 214, 1, 1.49, 1.49 );
setScaleKey( spep_0 -3 + 216, 1, 1.59, 1.59 );
setScaleKey( spep_0 -3 + 218, 1, 1.8, 1.8 );
setScaleKey( spep_0 -3 + 220, 1, 2.73, 2.73 );
setScaleKey( spep_0 -3 + 221, 1, 2.73, 2.73 );
setScaleKey( spep_0 -3 + 222, 1, 17.46, 17.46 );
setScaleKey( spep_0 -3 + 251, 1, 17.46, 17.46 );
setScaleKey( spep_0 -3 + 252, 1, 2.54, 2.54 );
setScaleKey( spep_0 -3 + 287, 1, 2.54, 2.54 );
setScaleKey( spep_0 -3 + 288, 1, 8.86, 8.86 );
setScaleKey( spep_0 -3 + 317, 1, 8.86, 8.86 );
setScaleKey( spep_0 -3 + 318, 1, 8.86, 8.86 );
setScaleKey( spep_0 -3 + 321, 1, 8.86, 8.86 );
setScaleKey( spep_0 -3 + 322, 1, 8.86, 8.86 );
setScaleKey( spep_0 -3 + 359, 1, 8.86, 8.86 );
setScaleKey( spep_0 -3 + 360, 1, 3.63, 3.63 );
setScaleKey( spep_0 -3 + 362, 1, 3.05, 3.05 );
setScaleKey( spep_0 -3 + 364, 1, 2.53, 2.53 );
setScaleKey( spep_0 -3 + 366, 1, 2.08, 2.08 );
setScaleKey( spep_0 -3 + 368, 1, 1.69, 1.69 );
setScaleKey( spep_0 -3 + 370, 1, 1.37, 1.37 );
setScaleKey( spep_0 -3 + 372, 1, 1.11, 1.11 );
setScaleKey( spep_0 -3 + 374, 1, 0.94, 0.94 );
setScaleKey( spep_0 -3 + 376, 1, 0.87, 0.87 );
setScaleKey( spep_0 -3 + 378, 1, 0.67, 0.67 );
setScaleKey( spep_0 -3 + 380, 1, 0.56, 0.56 );
setScaleKey( spep_0 -3 + 382, 1, 0.49, 0.49 );
setScaleKey( spep_0 -3 + 384, 1, 0.43, 0.43 );
setScaleKey( spep_0 -3 + 386, 1, 0.38, 0.38 );
setScaleKey( spep_0 -3 + 388, 1, 0.34, 0.34 );
setScaleKey( spep_0 -3 + 390, 1, 0.31, 0.31 );
setScaleKey( spep_0 -3 + 392, 1, 0.29, 0.29 );
setScaleKey( spep_0 -3 + 394, 1, 0.27, 0.27 );
setScaleKey( spep_0 -3 + 396, 1, 0.25, 0.25 );
setScaleKey( spep_0 -3 + 398, 1, 0.24, 0.24 );
setScaleKey( spep_0 -3 + 400, 1, 0.23, 0.23 );
setScaleKey( spep_0 -3 + 402, 1, 0.22, 0.22 );
setScaleKey( spep_0 -3 + 404, 1, 0.22, 0.22 );
setScaleKey( spep_0 -3 + 406, 1, 0.21, 0.21 );
setScaleKey( spep_0 -3 + 407, 1, 0.21, 0.21 );
setScaleKey( spep_0 -3 + 408, 1, 0.19, 0.19 );
setScaleKey( spep_0 -3 + 428, 1, 0.19, 0.19 );

setRotateKey( spep_0 -3 + 132, 1, 45.1 );
setRotateKey( spep_0 -3 + 140, 1, 45.1 );
setRotateKey( spep_0 -3 + 142, 1, 45 );
setRotateKey( spep_0 -3 + 146, 1, 45 );
setRotateKey( spep_0 -3 + 148, 1, 44.9 );
setRotateKey( spep_0 -3 + 150, 1, 44.8 );
setRotateKey( spep_0 -3 + 152, 1, 44.7 );
setRotateKey( spep_0 -3 + 154, 1, 44.5 );
setRotateKey( spep_0 -3 + 156, 1, 44.4 );
setRotateKey( spep_0 -3 + 158, 1, 44.3 );
setRotateKey( spep_0 -3 + 160, 1, 44.1 );
setRotateKey( spep_0 -3 + 162, 1, 43.9 );
setRotateKey( spep_0 -3 + 164, 1, 43.8 );
setRotateKey( spep_0 -3 + 166, 1, 43.6 );
setRotateKey( spep_0 -3 + 168, 1, 43.4 );
setRotateKey( spep_0 -3 + 170, 1, 43.2 );
setRotateKey( spep_0 -3 + 172, 1, 43 );
setRotateKey( spep_0 -3 + 174, 1, 42.8 );
setRotateKey( spep_0 -3 + 176, 1, 42.6 );
setRotateKey( spep_0 -3 + 178, 1, 42.4 );
setRotateKey( spep_0 -3 + 180, 1, 42.2 );
setRotateKey( spep_0 -3 + 182, 1, 41.9 );
setRotateKey( spep_0 -3 + 184, 1, 41.7 );
setRotateKey( spep_0 -3 + 186, 1, 41.4 );
setRotateKey( spep_0 -3 + 188, 1, 41.2 );
setRotateKey( spep_0 -3 + 190, 1, 40.9 );
setRotateKey( spep_0 -3 + 191, 1, 40.9 );
setRotateKey( spep_0 -3 + 192, 1, 3 );
setRotateKey( spep_0 -3 + 221, 1, 3 );

setRotateKey( spep_0 -3 + 222, 1, -42 );
setRotateKey( spep_0 -3 + 224, 1, -42.9 );
setRotateKey( spep_0 -3 + 226, 1, -43.7 );
setRotateKey( spep_0 -3 + 228, 1, -44.3 );
setRotateKey( spep_0 -3 + 230, 1, -44.7 );
setRotateKey( spep_0 -3 + 232, 1, -44.9 );
setRotateKey( spep_0 -3 + 234, 1, -45 );
setRotateKey( spep_0 -3 + 236, 1, -45 );
setRotateKey( spep_0 -3 + 238, 1, -44.9 );
setRotateKey( spep_0 -3 + 240, 1, -44.8 );
setRotateKey( spep_0 -3 + 242, 1, -44.7 );
setRotateKey( spep_0 -3 + 244, 1, -44.4 );
setRotateKey( spep_0 -3 + 246, 1, -44.2 );
setRotateKey( spep_0 -3 + 248, 1, -44 );
setRotateKey( spep_0 -3 + 251, 1, -44 );

setRotateKey( spep_0 -3 + 252, 1, -33 );
setRotateKey( spep_0 -3 + 287, 1, -33 );
setRotateKey( spep_0 -3 + 288, 1, -42 );
setRotateKey( spep_0 -3 + 317, 1, -42 );
setRotateKey( spep_0 -3 + 318, 1, -42 );
setRotateKey( spep_0 -3 + 321, 1, -42 );
setRotateKey( spep_0 -3 + 322, 1, -42 );
setRotateKey( spep_0 -3 + 359, 1, -42 );
setRotateKey( spep_0 -3 + 360, 1, -90.3 );
setRotateKey( spep_0 -3 + 362, 1, -90.3 );
setRotateKey( spep_0 -3 + 364, 1, -90.4 );
setRotateKey( spep_0 -3 + 370, 1, -90.4 );
setRotateKey( spep_0 -3 + 372, 1, -90.5 );
setRotateKey( spep_0 -3 + 407, 1, -90.5 );
setRotateKey( spep_0 -3 + 408, 1, -110.9 );
setRotateKey( spep_0 -3 + 416, 1, -110.9 );
setRotateKey( spep_0 -3 + 418, 1, -110.8 );
setRotateKey( spep_0 -3 + 428, 1, -110.8 );

-- ** 音 ** --
--パンチ
SE009 = playSe( spep_0 + 122, 1189 );
SE010 = playSe( spep_0 + 126, 1009 );
SE011 = playSe( spep_0 + 126, 1187 );
setSeVolumeByWorkId( spep_0 + 126, SE011, 84 );
SE012 = playSe( spep_0 + 126, 1110 );

--足つかむ
SE013 = playSe( spep_0 + 220, 1007 );
setSeVolumeByWorkId( spep_0 + 220, SE013, 114 );
SE014 = playSe( spep_0 + 224, 1006 );
setSeVolumeByWorkId( spep_0 + 224, SE014, 94 );

--敵持って左下へ
SE015 = playSe( spep_0 + 252, 9 );
SE016 = playSe( spep_0 + 252, 1183 );
SE017 = playSe( spep_0 + 252, 1121 );

--ベジットアップ降下
SE018 = playSe( spep_0 + 286, 1226 );
setSeVolumeByWorkId( spep_0 + 286, SE018, 56 );
stopSe( spep_0 + 273, SE018, 138 );

--気ダメ
SE019 = playSe( spep_0 + 318, 1035 );

--敵ぶん投げる
SE020 = playSe( spep_0 + 362, 1027 );
SE021 = playSe( spep_0 + 362, 1117 );
setSeVolumeByWorkId( spep_0 + 362, SE021, 77 );
stopSe( spep_0 + 390, SE021, 26 );

SE023 = playSe( spep_0 + 366, 1064 );
setSeVolumeByWorkId( spep_0 + 366, SE023, 82 );

--地面に衝突
SE022 = playSe( spep_0 + 438, 1168 );
setSeVolumeByWorkId( spep_0 + 438, SE022, 0 );
setSeVolumeByWorkId( spep_0 + 440, SE022, 11 );
setSeVolumeByWorkId( spep_0 + 444, SE022, 25 );
setSeVolumeByWorkId( spep_0 + 448, SE022, 32 );
setSeVolumeByWorkId( spep_0 + 452, SE022, 45 );
setSeVolumeByWorkId( spep_0 + 456, SE022, 51 );
setSeVolumeByWorkId( spep_0 + 460, SE022, 66 );
setSeVolumeByWorkId( spep_0 + 464, SE022, 78 );
setSeVolumeByWorkId( spep_0 + 469, SE022, 100 );
setStartTimeMs( SE022,  1267 );
stopSe( spep_0 + 529, SE022, 27 );

SE024 = playSe( spep_0 + 426, 1159 );
SE025 = playSe( spep_0 + 432, 1023 );

--オーラ
SE026 = playSe( spep_0 + 526, 1036 );
setSeVolumeByWorkId( spep_0 + 526, SE026, 40 );

SE028 = playSe( spep_0 + 550, 1036 );
setSeVolumeByWorkId( spep_0 + 550, SE028, 40 );

SE030 = playSe( spep_0 + 574, 1036 );
setSeVolumeByWorkId( spep_0 + 574, SE030, 40 );

SE032 = playSe( spep_0 + 598, 1036 );
setSeVolumeByWorkId( spep_0 + 598, SE032, 40 );
SE033 = playSe( spep_0 + 622, 1036 );
setSeVolumeByWorkId( spep_0 + 622, SE033, 40 );

SE036 = playSe( spep_0 + 646, 1036 );
setSeVolumeByWorkId( spep_0 + 646, SE036, 40 );
SE037 = playSe( spep_0 + 670, 1036 );
setSeVolumeByWorkId( spep_0 + 670, SE037, 40 );
SE038 = playSe( spep_0 + 694, 1036 );
setSeVolumeByWorkId( spep_0 + 694, SE038, 40 );
SE039 = playSe( spep_0 + 718, 1036 );
setSeVolumeByWorkId( spep_0 + 718, SE039, 40 );
SE040 = playSe( spep_0 + 742, 1036 );
setSeVolumeByWorkId( spep_0 + 742, SE040, 40 );

--手合わせる
SE027 = playSe( spep_0 + 542, 1233 );
setSeVolumeByWorkId( spep_0 + 542, SE027, 100 );
setPitch( spep_0 + 542, SE027, -800 );
setTimeStretch( SE027, 0.47, 10, 1 );

SE029 = playSe( spep_0 + 550, 1007 );
setSeVolumeByWorkId( spep_0 + 550, SE029, 67 );

--腕を引く
SE031 = playSe( spep_0 + 578, 1072 );
stopSe( spep_0 + 620, SE031, 29 );

--かめはめ波溜め
SE034 = playSe( spep_0 + 630, 1209 );
SE035 = playSe( spep_0 + 630, 1210 );
setTimeStretch( SE035, 0.67, 10, 1 );
stopSe( spep_0 + 756, SE035, 5 );

--かめはめ波発射
SE041 = playSe( spep_0 + 754, 1027 );
setSeVolumeByWorkId( spep_0 + 754, SE041, 63 );
setTimeStretch( SE041, 1.42, 10, 1 );

SE042 = playSe( spep_0 + 754, 1146 );
setSeVolumeByWorkId( spep_0 + 754, SE042, 126 );
setPitch( spep_0 + 754, SE042, 400 );
setTimeStretch( SE042, 1.06, 10, 1 );

SE043 = playSe( spep_0 + 754, 1022 );
SE044 = playSe( spep_0 + 754, 1231 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 828;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

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
playSe( spep_1 + 0, SE_05 );

--かめはめ波発射
stopSe( spep_1 + 4, SE041, 0 );
stopSe( spep_1 + 4, SE042, 0 );
stopSe( spep_1 + 4, SE043, 0 );
stopSe( spep_1 + 4, SE044, 0 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;

------------------------------------------------------
-- 後半(238F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --後半(ef_003)
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_2 + 240, finish, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_2 + 240, finish, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + 240, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + 240, finish, 255 );

-- ** 音 ** --
--かめはめ波発射２
SE046 = playSe( spep_2 + 0, 1133 );
SE047 = playSe( spep_2 + 0, 1177 );
stopSe( spep_2 + 45, SE047, 18 );

SE048 = playSe( spep_2 + 4, 1146 );
setSeVolumeByWorkId( spep_2 + 4, SE048, 82 );
setTimeStretch( SE048, 0.39, 10, 1 );

SE049 = playSe( spep_2 + 4, 1202 );
setSeVolumeByWorkId( spep_2 + 4, SE049, 178 );
setTimeStretch( SE049, 0.67, 10, 1 );

--ドン
SE050 = playSe( spep_2 + 40, 1024 );
SE051 = playSe( spep_2 + 40, 1159 );
SE052 = playSe( spep_2 + 40, 1160 );

--爆発
SE053 = playSe( spep_2 + 90, 1023 );

--ラスト爆発
SE054 = playSe( spep_2 + 122, 1188 );
SE055 = playSe( spep_2 + 122, 1067 );

--地割れ
SE056 = playSe( spep_2 + 140, 1044 );
setSeVolumeByWorkId( spep_2 + 161, SE056, 100 );
setSeVolumeByWorkId( spep_2 + 162, SE056, 115 );
setSeVolumeByWorkId( spep_2 + 164, SE056, 139 );
setSeVolumeByWorkId( spep_2 + 168, SE056, 174 );
setSeVolumeByWorkId( spep_2 + 172, SE056, 192 );
setSeVolumeByWorkId( spep_2 + 176, SE056, 203 );
setSeVolumeByWorkId( spep_2 + 180, SE056, 219 );
setSeVolumeByWorkId( spep_2 + 184, SE056, 231 );
setSeVolumeByWorkId( spep_2 + 188, SE056, 245 );
setSeVolumeByWorkId( spep_2 + 192, SE056, 258 );
setSeVolumeByWorkId( spep_2 + 196, SE056, 264 );
setSeVolumeByWorkId( spep_2 + 200, SE056, 276 );
setSeVolumeByWorkId( spep_2 + 204, SE056, 281 );
setSeVolumeByWorkId( spep_2 + 208, SE056, 292 );
setSeVolumeByWorkId( spep_2 + 212, SE056, 302 );
setSeVolumeByWorkId( spep_2 + 216, SE056, 309 );
setSeVolumeByWorkId( spep_2 + 220, SE056, 316 );
setSeVolumeByWorkId( spep_2 + 224, SE056, 326 );
setSeVolumeByWorkId( spep_2 + 228, SE056, 339 );
setSeVolumeByWorkId( spep_2 + 229, SE056, 343 );
stopSe( spep_2 + 238, SE056, 0 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 524, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 150 );
endPhase( spep_2 + 238 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 前半(828F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 830, 0x100, -1, 0, 0, 0 );  --前半(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 830, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 830, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 830, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 830, first_f, 255 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 830, 0x80, -1, 0, 0, 0 );  --前半(ef_002)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 830, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 830, first_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 830, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 830, first_b, 255 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 830, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

--入り
SE001 = playSe( spep_0 + 0, 44 );
setPitch( spep_0 + 0, SE001, -400 );
setTimeStretch( SE001, 0.73, 10, 1 );

SE002 = playSe( spep_0 + 0, 1232 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 0 );
setSeVolumeByWorkId( spep_0 + 2, SE002, 21 );
setSeVolumeByWorkId( spep_0 + 6, SE002, 47 );
setSeVolumeByWorkId( spep_0 + 8, SE002, 68 );

--手前ダッシュ
SE004 = playSe( spep_0 + 54, 1183 );
stopSe( spep_0 + 132, SE004, 0 );

SE005 = playSe( spep_0 + 54, 1182 );
SE006 = playSe( spep_0 + 54, 9 );
setTimeStretch( SE006, 1.25, 10, 1 );

--ベジットアップ
SE007 = playSe( spep_0 + 76, 1278 );
setPitch( spep_0 + 76, SE007, -1200 );
setTimeStretch( SE007, 0.2, 10, 1 );
stopSe( spep_0 + 112, SE007, 21 );

SE008 = playSe( spep_0 + 80, 1116 );
stopSe( spep_0 + 110, SE008, 16 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 96; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE004, 0 );
stopSe( SP_dodge - 12, SE005, 0 );
stopSe( SP_dodge - 12, SE006, 0 );
stopSe( SP_dodge - 12, SE007, 0 );
stopSe( SP_dodge - 12, SE008, 0 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
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
setDisp( spep_0 -3 + 132, 1, 1 );
setDisp( spep_0 -3 + 428, 1, 0 );
changeAnime( spep_0 -3 + 132, 1, 106 );
changeAnime( spep_0 -3 + 192, 1, 107 );
changeAnime( spep_0 -3 + 222, 1, 106 );
changeAnime( spep_0 -3 + 252, 1, 6 );
changeAnime( spep_0 -3 + 360, 1, 5 );
changeAnime( spep_0 -3 + 408, 1, 106 );

setBlendColor( spep_0 -3 + 318, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_0 -3 + 322, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_0 -3 + 323, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_0 -3 + 324, 1, 3, 0, 0, 0, 0 );

a3 = 40;
setMoveKey( spep_0 -3 + 132, 1, -39, -589.1 -a3 , 0 );  --殴られる
setMoveKey( spep_0 -3 + 134, 1, -93.8, -718.6 -a3 , 0 );
setMoveKey( spep_0 -3 + 136, 1, -6, -337.4 -a3 , 0 );
setMoveKey( spep_0 -3 + 138, 1, -85.8, -687.1 -a3 , 0 );
setMoveKey( spep_0 -3 + 140, 1, -07.6, -539.4 -a3 , 0 );
setMoveKey( spep_0 -3 + 142, 1, -39.3, -544.7 -a3 , 0 );
setMoveKey( spep_0 -3 + 144, 1, -4.8, -483.6 -a3 , 0 );
setMoveKey( spep_0 -3 + 146, 1, -32.1, -679.7 -a3 , 0 );
setMoveKey( spep_0 -3 + 148, 1, -5.5, -417.4 -a3 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 97, -193.2 -a3 , 0 );
setMoveKey( spep_0 -3 + 152, 1, 137.1, -80.1 -a3 , 0 );
setMoveKey( spep_0 -3 + 154, 1, 140.9, 19.6 -a3 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 168.7, -3.4 -a3 , 0 );
setMoveKey( spep_0 -3 + 158, 1, 153.5, 26.8 -a3 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 167.9, 16.6 -a3 , 0 );
setMoveKey( spep_0 -3 + 162, 1, 153.3, 23 -a3 , 0 );
setMoveKey( spep_0 -3 + 164, 1, 161.2, 18.6 -a3 , 0 );
setMoveKey( spep_0 -3 + 166, 1, 156.5, 23.9 -a3 , 0 );
setMoveKey( spep_0 -3 + 168, 1, 160.6, 21.4 -a3 , 0 );
setMoveKey( spep_0 -3 + 170, 1, 156.3, 23.6 -a3 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 158, 24.2 -a3 , 0 );
setMoveKey( spep_0 -3 + 174, 1, 156.2, 25.3 -a3 , 0 );
setMoveKey( spep_0 -3 + 176, 1, 156.9, 25.3 -a3 , 0 );
setMoveKey( spep_0 -3 + 178, 1, 155.8, 26.2 -a3 , 0 );
setMoveKey( spep_0 -3 + 180, 1, 156.2, 26.7 -a3 , 0 );
setMoveKey( spep_0 -3 + 182, 1, 155.3, 27.2 -a3 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 154.8, 28.1 -a3 , 0 );
setMoveKey( spep_0 -3 + 186, 1, 154.5, 28.6 -a3 , 0 );
setMoveKey( spep_0 -3 + 188, 1, 154.1, 29.4 -a3 , 0 );
setMoveKey( spep_0 -3 + 190, 1, 153, 29.6 -a3 , 0 );
setMoveKey( spep_0 -3 + 191, 1, 153, 29.6 -a3 , 0 );

setMoveKey( spep_0 -3 + 192, 1, 13.3, -150.2 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 13.7, -150.5 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 14.1, -150.9 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 14.5, -151.2 , 0 );
setMoveKey( spep_0 -3 + 200, 1, 14.9, -151.5 , 0 );
setMoveKey( spep_0 -3 + 202, 1, 15.3, -151.8 , 0 );
setMoveKey( spep_0 -3 + 204, 1, 15.7, -152.2 , 0 );
setMoveKey( spep_0 -3 + 206, 1, 16.1, -152.5 , 0 );
setMoveKey( spep_0 -3 + 208, 1, 16.5, -152.8 , 0 );
setMoveKey( spep_0 -3 + 210, 1, 16.9, -153.1 , 0 );
setMoveKey( spep_0 -3 + 212, 1, 19.1, -155 , 0 );
setMoveKey( spep_0 -3 + 214, 1, 29.2, -164.1 , 0 );
setMoveKey( spep_0 -3 + 216, 1, 54.3, -186.8 , 0 );
setMoveKey( spep_0 -3 + 218, 1, 109.1, -236.5 , 0 );
setMoveKey( spep_0 -3 + 220, 1, 346, -450.9 , 0 );
setMoveKey( spep_0 -3 + 221, 1, 346, -450.9 , 0 );

setMoveKey( spep_0 -3 + 222, 1, 1222.8, -1054.1 , 0 );  --掴む
setMoveKey( spep_0 -3 + 224, 1, 1214.6, -1086.7 , 0 );
setMoveKey( spep_0 -3 + 226, 1, 1207.3, -1113.3 , 0 );
setMoveKey( spep_0 -3 + 228, 1, 1201.4, -1133.9 , 0 );
setMoveKey( spep_0 -3 + 230, 1, 1197.1, -1148.6 , 0 );
setMoveKey( spep_0 -3 + 232, 1, 1194.4, -1157.4 , 0 );
setMoveKey( spep_0 -3 + 234, 1, 1193.5, -1160.3 , 0 );
setMoveKey( spep_0 -3 + 236, 1, 1193.7, -1159.6 , 0 );
setMoveKey( spep_0 -3 + 238, 1, 1194.3, -1157.3 , 0 );
setMoveKey( spep_0 -3 + 240, 1, 1195.3, -1152.5 , 0 );
setMoveKey( spep_0 -3 + 242, 1, 1197.2, -1144.5 , 0 );
setMoveKey( spep_0 -3 + 244, 1, 1199.8, -1133.1 , 0 );
setMoveKey( spep_0 -3 + 246, 1, 1202.3, -1121.7 , 0 );
setMoveKey( spep_0 -3 + 248, 1, 1203.7, -1115.2 , 0 );
setMoveKey( spep_0 -3 + 250, 1, 1204.1, -1113.4 , 0 );
setMoveKey( spep_0 -3 + 251, 1, 1204.1, -1113.4 , 0 );

a1 = 40;
setMoveKey( spep_0 -3 + 252, 1, -577.2, 972.7 -a1 , 0 );  --斜め掴み
setMoveKey( spep_0 -3 + 253, 1, -577.2, 972.7 -a1 , 0 );
setMoveKey( spep_0 -3 + 254, 1, -430.4, 777.9 -a1 , 0 );
setMoveKey( spep_0 -3 + 255, 1, -430.4, 777.9 -a1 , 0 );
setMoveKey( spep_0 -3 + 256, 1, -307.5, 614.8 -a1 , 0 );
setMoveKey( spep_0 -3 + 257, 1, -307.5, 614.8 -a1 , 0 );
setMoveKey( spep_0 -3 + 258, 1, -196.2, 467.1 -a1 , 0 );
setMoveKey( spep_0 -3 + 259, 1, -196.2, 467.1 -a1 , 0 );
setMoveKey( spep_0 -3 + 260, 1, -101, 340.7 -a1 , 0 );
setMoveKey( spep_0 -3 + 261, 1, -101, 340.7 -a1 , 0 );
setMoveKey( spep_0 -3 + 262, 1, -26.7, 242.1 -a1 , 0 );
setMoveKey( spep_0 -3 + 263, 1, -26.7, 242.1 -a1 , 0 );
setMoveKey( spep_0 -3 + 264, 1, 35.9, 158.9 -a1 , 0 );
setMoveKey( spep_0 -3 + 265, 1, 35.9, 158.9 -a1 , 0 );
setMoveKey( spep_0 -3 + 266, 1, 74, 108.3 -a1 , 0 );
setMoveKey( spep_0 -3 + 267, 1, 74, 108.3 -a1 , 0 );
setMoveKey( spep_0 -3 + 268, 1, 104.3, 68 -a1 , 0 );
setMoveKey( spep_0 -3 + 269, 1, 104.3, 68 -a1 , 0 );
setMoveKey( spep_0 -3 + 270, 1, 108.9, 61.9 -a1 , 0 );
setMoveKey( spep_0 -3 + 271, 1, 108.9, 61.9 -a1 , 0 );
setMoveKey( spep_0 -3 + 272, 1, 115.3, 53.4 -a1 , 0 );
setMoveKey( spep_0 -3 + 273, 1, 115.3, 53.4 -a1 , 0 );
setMoveKey( spep_0 -3 + 274, 1, 110.4, 59.9 -a1 , 0 );
setMoveKey( spep_0 -3 + 275, 1, 110.4, 59.9 -a1 , 0 );
setMoveKey( spep_0 -3 + 276, 1, 118.1, 49.7 -a1 , 0 );
setMoveKey( spep_0 -3 + 277, 1, 118.1, 49.7 -a1 , 0 );
setMoveKey( spep_0 -3 + 278, 1, 114.3, 54.8 -a1 , 0 );
setMoveKey( spep_0 -3 + 279, 1, 114.3, 54.8 -a1 , 0 );
setMoveKey( spep_0 -3 + 280, 1, 120.5, 46.4 -a1 , 0 );
setMoveKey( spep_0 -3 + 281, 1, 120.5, 46.4 -a1 , 0 );
setMoveKey( spep_0 -3 + 282, 1, 118.8, 48.7 -a1 , 0 );
setMoveKey( spep_0 -3 + 283, 1, 118.8, 48.7 -a1 , 0 );
setMoveKey( spep_0 -3 + 284, 1, 125.2, 40.2 -a1 , 0 );
setMoveKey( spep_0 -3 + 285, 1, 125.2, 40.2 -a1 , 0 );
setMoveKey( spep_0 -3 + 286, 1, 124.2, 41.6 -a1 , 0 );
setMoveKey( spep_0 -3 + 287, 1, 124.2, 41.6 -a1 , 0 );
a2 = 70;
setMoveKey( spep_0 -3 + 288, 1, 501.6, 1807 -a2 , 0 );  --正面掴み落とし
setMoveKey( spep_0 -3 + 290, 1, 501.7, 1149.8 -a2 , 0 );
setMoveKey( spep_0 -3 + 292, 1, 501.7, 992 -a2 , 0 );
setMoveKey( spep_0 -3 + 294, 1, 501.7, 903.5 -a2 , 0 );
setMoveKey( spep_0 -3 + 296, 1, 501.7, 855 -a2 , 0 );
setMoveKey( spep_0 -3 + 298, 1, 501.7, 822.8 -a2 , 0 );
setMoveKey( spep_0 -3 + 300, 1, 501.7, 799.7 -a2 , 0 );
setMoveKey( spep_0 -3 + 302, 1, 501.7, 782.9 -a2 , 0 );
setMoveKey( spep_0 -3 + 304, 1, 501.7, 775 -a2 , 0 );
setMoveKey( spep_0 -3 + 306, 1, 501.7, 778.8 -a2 , 0 );
setMoveKey( spep_0 -3 + 308, 1, 501.7, 765 -a2 , 0 );
setMoveKey( spep_0 -3 + 310, 1, 501.7, 764.2 -a2 , 0 );
setMoveKey( spep_0 -3 + 312, 1, 501.7, 760.3 -a2 , 0 );
setMoveKey( spep_0 -3 + 314, 1, 501.7, 765.2 -a2 , 0 );
setMoveKey( spep_0 -3 + 316, 1, 501.7, 761.1 -a2 , 0 );
setMoveKey( spep_0 -3 + 317, 1, 501.7, 761.1 -a2 , 0 );
setMoveKey( spep_0 -3 + 318, 1, 501.7, 751.9 -a2 , 0 );
setMoveKey( spep_0 -3 + 320, 1, 501.7, 755.1 -a2 , 0 );
setMoveKey( spep_0 -3 + 321, 1, 501.7, 755.1 -a2 , 0 );
setMoveKey( spep_0 -3 + 322, 1, 501.7, 755.6 -a2 , 0 );
setMoveKey( spep_0 -3 + 324, 1, 485.6, 766.9 -a2 , 0 );
setMoveKey( spep_0 -3 + 326, 1, 500.3, 740.1 -a2 , 0 );
setMoveKey( spep_0 -3 + 328, 1, 505.5, 757.1 -a2 , 0 );
setMoveKey( spep_0 -3 + 330, 1, 500.5, 744.8 -a2 , 0 );
setMoveKey( spep_0 -3 + 332, 1, 503.3, 751.1 -a2 , 0 );
setMoveKey( spep_0 -3 + 334, 1, 506, 747.8 -a2 , 0 );
setMoveKey( spep_0 -3 + 336, 1, 502.5, 747.2 -a2 , 0 );
setMoveKey( spep_0 -3 + 338, 1, 503.3, 741 -a2 , 0 );
setMoveKey( spep_0 -3 + 340, 1, 501.7, 732.7 -a2 , 0 );
setMoveKey( spep_0 -3 + 342, 1, 501.7, 735.1 -a2 , 0 );
setMoveKey( spep_0 -3 + 344, 1, 501.7, 723.6 -a2 , 0 );
setMoveKey( spep_0 -3 + 346, 1, 501.7, 722.6 -a2 , 0 );
setMoveKey( spep_0 -3 + 348, 1, 501.7, 699.5 -a2 , 0 );
setMoveKey( spep_0 -3 + 350, 1, 501.7, 690 -a2 , 0 );
setMoveKey( spep_0 -3 + 352, 1, 501.7, 653.1 -a2 , 0 );
setMoveKey( spep_0 -3 + 354, 1, 501.7, 620.7 -a2 , 0 );
setMoveKey( spep_0 -3 + 356, 1, 501.7, 540.3 -a2 , 0 );
setMoveKey( spep_0 -3 + 358, 1, 501.7, 405.8 -a2 , 0 );
setMoveKey( spep_0 -3 + 359, 1, 501.7, 405.8 -a2 , 0 );

setMoveKey( spep_0 -3 + 360, 1, -214.5, 755.7 , 0 );
setMoveKey( spep_0 -3 + 362, 1, -123.1, 534.7 , 0 );
setMoveKey( spep_0 -3 + 364, 1, -42.9, 340.6 , 0 );
setMoveKey( spep_0 -3 + 366, 1, 27.4, 170.5 , 0 );
setMoveKey( spep_0 -3 + 368, 1, 88, 23.4 , 0 );
setMoveKey( spep_0 -3 + 370, 1, 138.8, -99.8 , 0 );
setMoveKey( spep_0 -3 + 372, 1, 178.7, -196.7 , 0 );
setMoveKey( spep_0 -3 + 374, 1, 205.8, -262.3 , 0 );
setMoveKey( spep_0 -3 + 376, 1, 216.1, -287.4 , 0 );
setMoveKey( spep_0 -3 + 378, 1, 232.1, -325.7 , 0 );
setMoveKey( spep_0 -3 + 380, 1, 240.9, -346.6 , 0 );
setMoveKey( spep_0 -3 + 382, 1, 247.1, -361.5 , 0 );
setMoveKey( spep_0 -3 + 384, 1, 251.9, -372.9 , 0 );
setMoveKey( spep_0 -3 + 386, 1, 255.7, -381.9 , 0 );
setMoveKey( spep_0 -3 + 388, 1, 258.7, -389.3 , 0 );
setMoveKey( spep_0 -3 + 390, 1, 261.3, -395.3 , 0 );
setMoveKey( spep_0 -3 + 392, 1, 263.3, -400.2 , 0 );
setMoveKey( spep_0 -3 + 394, 1, 265, -404.2 , 0 );
setMoveKey( spep_0 -3 + 396, 1, 266.4, -407.5 , 0 );
setMoveKey( spep_0 -3 + 398, 1, 267.4, -410 , 0 );
setMoveKey( spep_0 -3 + 400, 1, 268.2, -411.9 , 0 );
setMoveKey( spep_0 -3 + 402, 1, 268.8, -413.3 , 0 );
setMoveKey( spep_0 -3 + 404, 1, 269.1, -414.1 , 0 );
setMoveKey( spep_0 -3 + 406, 1, 269.2, -414.3 , 0 );
setMoveKey( spep_0 -3 + 407, 1, 269.2, -414.3 , 0 );
setMoveKey( spep_0 -3 + 408, 1, -220.7, 638.3 , 0 );
setMoveKey( spep_0 -3 + 410, 1, -201.7, 531.8 , 0 );
setMoveKey( spep_0 -3 + 412, 1, -182.7, 425.3 , 0 );
setMoveKey( spep_0 -3 + 414, 1, -163.7, 318.8 , 0 );
setMoveKey( spep_0 -3 + 416, 1, -144.7, 212.3 , 0 );
setMoveKey( spep_0 -3 + 418, 1, -125.6, 105.8 , 0 );
setMoveKey( spep_0 -3 + 420, 1, -106.6, -0.7 , 0 );
setMoveKey( spep_0 -3 + 422, 1, -87.6, -107.1 , 0 );
setMoveKey( spep_0 -3 + 424, 1, -68.6, -213.6 , 0 );
setMoveKey( spep_0 -3 + 426, 1, -49.6, -320.1 , 0 );
setMoveKey( spep_0 -3 + 428, 1, -49.6, -320.1 , 0 );

setScaleKey( spep_0 -3 + 132, 1, 10.73, 10.73 );
setScaleKey( spep_0 -3 + 134, 1, 12.34, 12.34 );
setScaleKey( spep_0 -3 + 136, 1, 7.3, 7.3 );
setScaleKey( spep_0 -3 + 138, 1, 12.56, 12.56 );
setScaleKey( spep_0 -3 + 140, 1, 11, 11 );
setScaleKey( spep_0 -3 + 142, 1, 9.45, 9.45 );
setScaleKey( spep_0 -3 + 144, 1, 10.3, 10.3 );
setScaleKey( spep_0 -3 + 146, 1, 11, 11 );
setScaleKey( spep_0 -3 + 148, 1, 9.77, 9.77 );
setScaleKey( spep_0 -3 + 150, 1, 6, 6 );
setScaleKey( spep_0 -3 + 152, 1, 4.72, 4.72 );
setScaleKey( spep_0 -3 + 154, 1, 4.14, 4.14 );
setScaleKey( spep_0 -3 + 156, 1, 3.88, 3.88 );
setScaleKey( spep_0 -3 + 158, 1, 3.8, 3.8 );
setScaleKey( spep_0 -3 + 160, 1, 3.78, 3.78 );
setScaleKey( spep_0 -3 + 162, 1, 3.77, 3.77 );
setScaleKey( spep_0 -3 + 164, 1, 3.75, 3.75 );
setScaleKey( spep_0 -3 + 166, 1, 3.74, 3.74 );
setScaleKey( spep_0 -3 + 168, 1, 3.72, 3.72 );
setScaleKey( spep_0 -3 + 170, 1, 3.71, 3.71 );
setScaleKey( spep_0 -3 + 172, 1, 3.69, 3.69 );
setScaleKey( spep_0 -3 + 174, 1, 3.68, 3.68 );
setScaleKey( spep_0 -3 + 176, 1, 3.66, 3.66 );
setScaleKey( spep_0 -3 + 178, 1, 3.65, 3.65 );
setScaleKey( spep_0 -3 + 180, 1, 3.63, 3.63 );
setScaleKey( spep_0 -3 + 182, 1, 3.61, 3.61 );
setScaleKey( spep_0 -3 + 184, 1, 3.6, 3.6 );
setScaleKey( spep_0 -3 + 186, 1, 3.58, 3.58 );
setScaleKey( spep_0 -3 + 188, 1, 3.57, 3.57 );
setScaleKey( spep_0 -3 + 190, 1, 3.55, 3.55 );
setScaleKey( spep_0 -3 + 191, 1, 3.55, 3.55 );
setScaleKey( spep_0 -3 + 192, 1, 1.42, 1.42 );
setScaleKey( spep_0 -3 + 194, 1, 1.43, 1.43 );
setScaleKey( spep_0 -3 + 204, 1, 1.43, 1.43 );
setScaleKey( spep_0 -3 + 206, 1, 1.44, 1.44 );
setScaleKey( spep_0 -3 + 210, 1, 1.44, 1.44 );
setScaleKey( spep_0 -3 + 212, 1, 1.45, 1.45 );
setScaleKey( spep_0 -3 + 214, 1, 1.49, 1.49 );
setScaleKey( spep_0 -3 + 216, 1, 1.59, 1.59 );
setScaleKey( spep_0 -3 + 218, 1, 1.8, 1.8 );
setScaleKey( spep_0 -3 + 220, 1, 2.73, 2.73 );
setScaleKey( spep_0 -3 + 221, 1, 2.73, 2.73 );
setScaleKey( spep_0 -3 + 222, 1, 17.46, 17.46 );
setScaleKey( spep_0 -3 + 251, 1, 17.46, 17.46 );
setScaleKey( spep_0 -3 + 252, 1, 2.54, 2.54 );
setScaleKey( spep_0 -3 + 287, 1, 2.54, 2.54 );
setScaleKey( spep_0 -3 + 288, 1, 8.86, 8.86 );
setScaleKey( spep_0 -3 + 317, 1, 8.86, 8.86 );
setScaleKey( spep_0 -3 + 318, 1, 8.86, 8.86 );
setScaleKey( spep_0 -3 + 321, 1, 8.86, 8.86 );
setScaleKey( spep_0 -3 + 322, 1, 8.86, 8.86 );
setScaleKey( spep_0 -3 + 359, 1, 8.86, 8.86 );
setScaleKey( spep_0 -3 + 360, 1, 3.63, 3.63 );
setScaleKey( spep_0 -3 + 362, 1, 3.05, 3.05 );
setScaleKey( spep_0 -3 + 364, 1, 2.53, 2.53 );
setScaleKey( spep_0 -3 + 366, 1, 2.08, 2.08 );
setScaleKey( spep_0 -3 + 368, 1, 1.69, 1.69 );
setScaleKey( spep_0 -3 + 370, 1, 1.37, 1.37 );
setScaleKey( spep_0 -3 + 372, 1, 1.11, 1.11 );
setScaleKey( spep_0 -3 + 374, 1, 0.94, 0.94 );
setScaleKey( spep_0 -3 + 376, 1, 0.87, 0.87 );
setScaleKey( spep_0 -3 + 378, 1, 0.67, 0.67 );
setScaleKey( spep_0 -3 + 380, 1, 0.56, 0.56 );
setScaleKey( spep_0 -3 + 382, 1, 0.49, 0.49 );
setScaleKey( spep_0 -3 + 384, 1, 0.43, 0.43 );
setScaleKey( spep_0 -3 + 386, 1, 0.38, 0.38 );
setScaleKey( spep_0 -3 + 388, 1, 0.34, 0.34 );
setScaleKey( spep_0 -3 + 390, 1, 0.31, 0.31 );
setScaleKey( spep_0 -3 + 392, 1, 0.29, 0.29 );
setScaleKey( spep_0 -3 + 394, 1, 0.27, 0.27 );
setScaleKey( spep_0 -3 + 396, 1, 0.25, 0.25 );
setScaleKey( spep_0 -3 + 398, 1, 0.24, 0.24 );
setScaleKey( spep_0 -3 + 400, 1, 0.23, 0.23 );
setScaleKey( spep_0 -3 + 402, 1, 0.22, 0.22 );
setScaleKey( spep_0 -3 + 404, 1, 0.22, 0.22 );
setScaleKey( spep_0 -3 + 406, 1, 0.21, 0.21 );
setScaleKey( spep_0 -3 + 407, 1, 0.21, 0.21 );
setScaleKey( spep_0 -3 + 408, 1, 0.19, 0.19 );
setScaleKey( spep_0 -3 + 428, 1, 0.19, 0.19 );

setRotateKey( spep_0 -3 + 132, 1, -45.1 );
setRotateKey( spep_0 -3 + 140, 1, -45.1 );
setRotateKey( spep_0 -3 + 142, 1, -45 );
setRotateKey( spep_0 -3 + 146, 1, -45 );
setRotateKey( spep_0 -3 + 148, 1, -44.9 );
setRotateKey( spep_0 -3 + 150, 1, -44.8 );
setRotateKey( spep_0 -3 + 152, 1, -44.7 );
setRotateKey( spep_0 -3 + 154, 1, -44.5 );
setRotateKey( spep_0 -3 + 156, 1, -44.4 );
setRotateKey( spep_0 -3 + 158, 1, -44.3 );
setRotateKey( spep_0 -3 + 160, 1, -44.1 );
setRotateKey( spep_0 -3 + 162, 1, -43.9 );
setRotateKey( spep_0 -3 + 164, 1, -43.8 );
setRotateKey( spep_0 -3 + 166, 1, -43.6 );
setRotateKey( spep_0 -3 + 168, 1, -43.4 );
setRotateKey( spep_0 -3 + 170, 1, -43.2 );
setRotateKey( spep_0 -3 + 172, 1, -43 );
setRotateKey( spep_0 -3 + 174, 1, -42.8 );
setRotateKey( spep_0 -3 + 176, 1, -42.6 );
setRotateKey( spep_0 -3 + 178, 1, -42.4 );
setRotateKey( spep_0 -3 + 180, 1, -42.2 );
setRotateKey( spep_0 -3 + 182, 1, -41.9 );
setRotateKey( spep_0 -3 + 184, 1, -41.7 );
setRotateKey( spep_0 -3 + 186, 1, -41.4 );
setRotateKey( spep_0 -3 + 188, 1, -41.2 );
setRotateKey( spep_0 -3 + 190, 1, -40.9 );
setRotateKey( spep_0 -3 + 191, 1, -40.9 );
setRotateKey( spep_0 -3 + 192, 1, -3 );
setRotateKey( spep_0 -3 + 221, 1, -3 );

setRotateKey( spep_0 -3 + 222, 1, 42 );
setRotateKey( spep_0 -3 + 224, 1, 42.9 );
setRotateKey( spep_0 -3 + 226, 1, 43.7 );
setRotateKey( spep_0 -3 + 228, 1, 44.3 );
setRotateKey( spep_0 -3 + 230, 1, 44.7 );
setRotateKey( spep_0 -3 + 232, 1, 44.9 );
setRotateKey( spep_0 -3 + 234, 1, 45 );
setRotateKey( spep_0 -3 + 236, 1, 45 );
setRotateKey( spep_0 -3 + 238, 1, 44.9 );
setRotateKey( spep_0 -3 + 240, 1, 44.8 );
setRotateKey( spep_0 -3 + 242, 1, 44.7 );
setRotateKey( spep_0 -3 + 244, 1, 44.4 );
setRotateKey( spep_0 -3 + 246, 1, 44.2 );
setRotateKey( spep_0 -3 + 248, 1, 44 );
setRotateKey( spep_0 -3 + 251, 1, 44 );

setRotateKey( spep_0 -3 + 252, 1, 33 );
setRotateKey( spep_0 -3 + 287, 1, 33 );
setRotateKey( spep_0 -3 + 288, 1, 42 );
setRotateKey( spep_0 -3 + 317, 1, 42 );
setRotateKey( spep_0 -3 + 318, 1, 42 );
setRotateKey( spep_0 -3 + 321, 1, 42 );
setRotateKey( spep_0 -3 + 322, 1, 42 );
setRotateKey( spep_0 -3 + 359, 1, 42 );
setRotateKey( spep_0 -3 + 360, 1, 90.3 );
setRotateKey( spep_0 -3 + 362, 1, 90.3 );
setRotateKey( spep_0 -3 + 364, 1, 90.4 );
setRotateKey( spep_0 -3 + 370, 1, 90.4 );
setRotateKey( spep_0 -3 + 372, 1, 90.5 );
setRotateKey( spep_0 -3 + 407, 1, 90.5 );
setRotateKey( spep_0 -3 + 408, 1, 110.9 );
setRotateKey( spep_0 -3 + 416, 1, 110.9 );
setRotateKey( spep_0 -3 + 418, 1, 110.8 );
setRotateKey( spep_0 -3 + 428, 1, 110.8 );

-- ** 音 ** --
--パンチ
SE009 = playSe( spep_0 + 122, 1189 );
SE010 = playSe( spep_0 + 126, 1009 );
SE011 = playSe( spep_0 + 126, 1187 );
setSeVolumeByWorkId( spep_0 + 126, SE011, 84 );
SE012 = playSe( spep_0 + 126, 1110 );

--足つかむ
SE013 = playSe( spep_0 + 220, 1007 );
setSeVolumeByWorkId( spep_0 + 220, SE013, 114 );
SE014 = playSe( spep_0 + 224, 1006 );
setSeVolumeByWorkId( spep_0 + 224, SE014, 94 );

--敵持って左下へ
SE015 = playSe( spep_0 + 252, 9 );
SE016 = playSe( spep_0 + 252, 1183 );
SE017 = playSe( spep_0 + 252, 1121 );

--ベジットアップ降下
SE018 = playSe( spep_0 + 286, 1226 );
setSeVolumeByWorkId( spep_0 + 286, SE018, 56 );
stopSe( spep_0 + 273, SE018, 138 );

--気ダメ
SE019 = playSe( spep_0 + 318, 1035 );

--敵ぶん投げる
SE020 = playSe( spep_0 + 362, 1027 );
SE021 = playSe( spep_0 + 362, 1117 );
setSeVolumeByWorkId( spep_0 + 362, SE021, 77 );
stopSe( spep_0 + 390, SE021, 26 );

SE023 = playSe( spep_0 + 366, 1064 );
setSeVolumeByWorkId( spep_0 + 366, SE023, 82 );

--地面に衝突
SE022 = playSe( spep_0 + 438, 1168 );
setSeVolumeByWorkId( spep_0 + 438, SE022, 0 );
setSeVolumeByWorkId( spep_0 + 440, SE022, 11 );
setSeVolumeByWorkId( spep_0 + 444, SE022, 25 );
setSeVolumeByWorkId( spep_0 + 448, SE022, 32 );
setSeVolumeByWorkId( spep_0 + 452, SE022, 45 );
setSeVolumeByWorkId( spep_0 + 456, SE022, 51 );
setSeVolumeByWorkId( spep_0 + 460, SE022, 66 );
setSeVolumeByWorkId( spep_0 + 464, SE022, 78 );
setSeVolumeByWorkId( spep_0 + 469, SE022, 100 );
setStartTimeMs( SE022,  1267 );
stopSe( spep_0 + 529, SE022, 27 );

SE024 = playSe( spep_0 + 426, 1159 );
SE025 = playSe( spep_0 + 432, 1023 );

--オーラ
SE026 = playSe( spep_0 + 526, 1036 );
setSeVolumeByWorkId( spep_0 + 526, SE026, 40 );

SE028 = playSe( spep_0 + 550, 1036 );
setSeVolumeByWorkId( spep_0 + 550, SE028, 40 );

SE030 = playSe( spep_0 + 574, 1036 );
setSeVolumeByWorkId( spep_0 + 574, SE030, 40 );

SE032 = playSe( spep_0 + 598, 1036 );
setSeVolumeByWorkId( spep_0 + 598, SE032, 40 );
SE033 = playSe( spep_0 + 622, 1036 );
setSeVolumeByWorkId( spep_0 + 622, SE033, 40 );

SE036 = playSe( spep_0 + 646, 1036 );
setSeVolumeByWorkId( spep_0 + 646, SE036, 40 );
SE037 = playSe( spep_0 + 670, 1036 );
setSeVolumeByWorkId( spep_0 + 670, SE037, 40 );
SE038 = playSe( spep_0 + 694, 1036 );
setSeVolumeByWorkId( spep_0 + 694, SE038, 40 );
SE039 = playSe( spep_0 + 718, 1036 );
setSeVolumeByWorkId( spep_0 + 718, SE039, 40 );
SE040 = playSe( spep_0 + 742, 1036 );
setSeVolumeByWorkId( spep_0 + 742, SE040, 40 );

--手合わせる
SE027 = playSe( spep_0 + 542, 1233 );
setSeVolumeByWorkId( spep_0 + 542, SE027, 100 );
setPitch( spep_0 + 542, SE027, -800 );
setTimeStretch( SE027, 0.47, 10, 1 );

SE029 = playSe( spep_0 + 550, 1007 );	
setSeVolumeByWorkId( spep_0 + 550, SE029, 67 );

--腕を引く
SE031 = playSe( spep_0 + 578, 1072 );
stopSe( spep_0 + 620, SE031, 29 );

--かめはめ波溜め
SE034 = playSe( spep_0 + 630, 1209 );
SE035 = playSe( spep_0 + 630, 1210 );
setTimeStretch( SE035, 0.67, 10, 1 );
stopSe( spep_0 + 756, SE035, 5 );

--かめはめ波発射
SE041 = playSe( spep_0 + 754, 1027 );
setSeVolumeByWorkId( spep_0 + 754, SE041, 63 );
setTimeStretch( SE041, 1.42, 10, 1 );

SE042 = playSe( spep_0 + 754, 1146 );
setSeVolumeByWorkId( spep_0 + 754, SE042, 126 );
setPitch( spep_0 + 754, SE042, 400 );	
setTimeStretch( SE042, 1.06, 10, 1 );

SE043 = playSe( spep_0 + 754, 1022 );
SE044 = playSe( spep_0 + 754, 1231 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 828;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

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
playSe( spep_1 + 0, SE_05 );

--かめはめ波発射
stopSe( spep_1 + 4, SE041, 0 );
stopSe( spep_1 + 4, SE042, 0 );
stopSe( spep_1 + 4, SE043, 0 );
stopSe( spep_1 + 4, SE044, 0 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;

------------------------------------------------------
-- 後半(238F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --後半(ef_003)
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_2 + 240, finish, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_2 + 240, finish, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + 240, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + 240, finish, 255 );

-- ** 音 ** --
--かめはめ波発射２
SE046 = playSe( spep_2 + 0, 1133 );
SE047 = playSe( spep_2 + 0, 1177 );
stopSe( spep_2 + 45, SE047, 18 );

SE048 = playSe( spep_2 + 4, 1146 );
setSeVolumeByWorkId( spep_2 + 4, SE048, 82 );
setTimeStretch( SE048, 0.39, 10, 1 );

SE049 = playSe( spep_2 + 4, 1202 );
setSeVolumeByWorkId( spep_2 + 4, SE049, 178 );
setTimeStretch( SE049, 0.67, 10, 1 );

--ドン
SE050 = playSe( spep_2 + 40, 1024 );
SE051 = playSe( spep_2 + 40, 1159 );
SE052 = playSe( spep_2 + 40, 1160 );

--爆発
SE053 = playSe( spep_2 + 90, 1023 );

--ラスト爆発
SE054 = playSe( spep_2 + 122, 1188 );
SE055 = playSe( spep_2 + 122, 1067 );

--地割れ
SE056 = playSe( spep_2 + 140, 1044 );
setSeVolumeByWorkId( spep_2 + 161, SE056, 100 );
setSeVolumeByWorkId( spep_2 + 162, SE056, 115 );
setSeVolumeByWorkId( spep_2 + 164, SE056, 139 );
setSeVolumeByWorkId( spep_2 + 168, SE056, 174 );
setSeVolumeByWorkId( spep_2 + 172, SE056, 192 );
setSeVolumeByWorkId( spep_2 + 176, SE056, 203 );
setSeVolumeByWorkId( spep_2 + 180, SE056, 219 );
setSeVolumeByWorkId( spep_2 + 184, SE056, 231 );
setSeVolumeByWorkId( spep_2 + 188, SE056, 245 );
setSeVolumeByWorkId( spep_2 + 192, SE056, 258 );
setSeVolumeByWorkId( spep_2 + 196, SE056, 264 );
setSeVolumeByWorkId( spep_2 + 200, SE056, 276 );
setSeVolumeByWorkId( spep_2 + 204, SE056, 281 );
setSeVolumeByWorkId( spep_2 + 208, SE056, 292 );
setSeVolumeByWorkId( spep_2 + 212, SE056, 302 );
setSeVolumeByWorkId( spep_2 + 216, SE056, 309 );
setSeVolumeByWorkId( spep_2 + 220, SE056, 316 );
setSeVolumeByWorkId( spep_2 + 224, SE056, 326 );
setSeVolumeByWorkId( spep_2 + 228, SE056, 339 );
setSeVolumeByWorkId( spep_2 + 229, SE056, 343 );
stopSe( spep_2 + 238, SE056, 0 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 524, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 150 );
endPhase( spep_2 + 238 );

end