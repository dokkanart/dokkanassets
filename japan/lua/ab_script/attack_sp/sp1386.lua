--ゴジータ_メトロアタック

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
SP_01 = 154815; --飛び上がり〜アッパー
SP_02 = 154863; --飛び上がり〜アッパー
SP_03 = 154816; --肘打ち〜回転キックで蹴り落とす
SP_04 = 154866; --肘打ち〜回転キックで蹴り落とす

--敵側
SP_01x = 154864; --飛び上がり〜アッパー
SP_02x = 154865; --飛び上がり〜アッパー

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
-- 飛び上がり〜アッパー(464F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
upper_f = entryEffectLife( spep_0 + 0, SP_01, 464, 0x100, -1, 0, 0, 0 );  --飛び上がり〜アッパー(ef_001)
setEffMoveKey( spep_0 + 0, upper_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 464, upper_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, upper_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 464, upper_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, upper_f, 0 );
setEffRotateKey( spep_0 + 464, upper_f, 0 );
setEffAlphaKey( spep_0 + 0, upper_f, 255 );
setEffAlphaKey( spep_0 + 464, upper_f, 255 );

upper_b = entryEffectLife( spep_0 + 0, SP_02, 464, 0x80, -1, 0, 0, 0 );  --飛び上がり〜アッパー(ef_002)
setEffMoveKey( spep_0 + 0, upper_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 464, upper_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, upper_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 464, upper_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, upper_b, 0 );
setEffRotateKey( spep_0 + 464, upper_b, 0 );
setEffAlphaKey( spep_0 + 0, upper_b, 255 );
setEffAlphaKey( spep_0 + 464, upper_b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 466, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--ダッシュ
SE0 = playSe( spep_0 + 0, 1121 );
setSeVolume( spep_0 + 0, 1121, 0 );
setSeVolume( spep_0 + 18, 1121, 10 );
setSeVolume( spep_0 + 19, 1121, 60 );
setSeVolume( spep_0 + 20, 1121, 110 );
setSeVolume( spep_0 + 41, 1121, 86 );
setSeVolume( spep_0 + 46, 1121, 65 );
setSeVolume( spep_0 + 52, 1121, 42 );
setSeVolume( spep_0 + 58, 1121, 36 );
setSeVolume( spep_0 + 62, 1121, 20 );
setSeVolume( spep_0 + 64, 1121, 0 );
stopSe( spep_0 + 64, SE0, 0 );

SE1 = playSe( spep_0 + 1, 1232 );
setSeVolume( spep_0 + 1, 1232, 60 );

SE2 = playSe( spep_0 + 19, 1182 );
setSeVolume( spep_0 + 19, 1182, 234 );
setSeVolume( spep_0 + 25, 1182, 234 );
setSeVolume( spep_0 + 26, 1182, 193 );
setSeVolume( spep_0 + 27, 1182, 136 );

SE3 = playSe( spep_0 + 19, 1183 );
setSeVolume( spep_0 + 19, 1183, 168 );
stopSe( spep_0 + 68, SE3, 0 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 38; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe(SP_dodge - 12, SE0, 0 );
stopSe(SP_dodge - 12, SE1, 0 );
stopSe(SP_dodge - 12, SE2, 0 );
stopSe(SP_dodge - 12, SE3, 0 );

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

spep_x = spep_0 + 354 -4;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 66, 1, 1 );
setDisp( spep_0 -3 + 74, 1, 0 );
setDisp( spep_0 -3 + 84, 1, 1 );
setDisp( spep_0 -3 + 208, 1, 0 );
setDisp( spep_0 -3 + 218, 1, 1 );
setDisp( spep_0 -3 + 258, 1, 0 );
setDisp( spep_0 -3 + 268, 1, 1 );
setDisp( spep_0 -3 + 358, 1, 0 );
setDisp( spep_0 -3 + 422, 1, 1 );
setDisp( spep_0 + 464, 1, 0 );
changeAnime( spep_0 -3 + 66, 1, 108 );
changeAnime( spep_0 -3 + 96, 1, 106 );
changeAnime( spep_0 -3 + 100, 1, 108 );
changeAnime( spep_0 -3 + 102, 1, 105 );
changeAnime( spep_0 -3 + 118, 1, 106 );
changeAnime( spep_0 -3 + 132, 1, 108 );
changeAnime( spep_0 -3 + 138, 1, 5 );
changeAnime( spep_0 -3 + 146, 1, 8 );
changeAnime( spep_0 -3 + 154, 1, 5 );
changeAnime( spep_0 -3 + 171, 1, 108 );
changeAnime( spep_0 -3 + 176, 1, 5 );
changeAnime( spep_0 -3 + 192, 1, 106 );
changeAnime( spep_0 -3 + 198, 1, 108 );
changeAnime( spep_0 -3 + 218, 1, 106 );
changeAnime( spep_0 -3 + 220, 1, 105 );
changeAnime( spep_0 -3 + 248, 1, 5 );
changeAnime( spep_0 -3 + 268, 1, 108 );
changeAnime( spep_0 -3 + 270, 1, 107 );
changeAnime( spep_0 -3 + 304, 1, 108 );
changeAnime( spep_0 -3 + 312, 1, 106 );
changeAnime( spep_0 -3 + 318, 1, 108 );
changeAnime( spep_0 -3 + 320, 1, 106 );
changeAnime( spep_0 -3 + 322, 1, 108 );
changeAnime( spep_0 -3 + 324, 1, 104 );
changeAnime( spep_0 -3 + 326, 1, 106 );
changeAnime( spep_0 -3 + 332, 1, 108 );
changeAnime( spep_0 -3 + 336, 1, 106 );
changeAnime( spep_0 -3 + 340, 1, 108 );
changeAnime( spep_0 -3 + 342, 1, 106 );
changeAnime( spep_0 -3 + 348, 1, 108 );
changeAnime( spep_0 -3 + 354, 1, 106 );
changeAnime( spep_0 -3 + 422, 1, 107 );
changeAnime( spep_0 -3 + 428, 1, 5 );

setMoveKey( spep_0 -3 + 66, 1, 363.9, -8.5 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 273.8, -38.9 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 320.3, -76.2 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 375.7, -89.6 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 375.7, -89.6 , 0 );

setMoveKey( spep_0 -3 + 84, 1, 118, -122.4 , 0 );
setMoveKey( spep_0 -3 + 86, 1, 118, -122.4 , 0 );
setMoveKey( spep_0 -3 + 88, 1, 172, -143.4 , 0 );
setMoveKey( spep_0 -3 + 90, 1, 174.5, -112.2 , 0 );
setMoveKey( spep_0 -3 + 92, 1, 176.8, -80.3 , 0 );
setMoveKey( spep_0 -3 + 94, 1, 179.1, -47.8 , 0 );
setMoveKey( spep_0 -3 + 95, 1, 179.1, -47.8 , 0 );
setMoveKey( spep_0 -3 + 96, 1, 136.5, 7.7 , 0 );
setMoveKey( spep_0 -3 + 98, 1, 91.1, 46.5 , 0 );
setMoveKey( spep_0 -3 + 99, 1, 91.1, 46.5 , 0 );
setMoveKey( spep_0 -3 + 100, 1, 14.5, 58.8 , 0 );
setMoveKey( spep_0 -3 + 101, 1, 14.5, 58.8 , 0 );
setMoveKey( spep_0 -3 + 102, 1, -133.1, 18.8 , 0 );
setMoveKey( spep_0 -3 + 104, 1, -185.2, 20.7 , 0 );
setMoveKey( spep_0 -3 + 106, 1, -237.3, 22.7 , 0 );
setMoveKey( spep_0 -3 + 108, 1, -139.3, 6.5 , 0 );
setMoveKey( spep_0 -3 + 110, 1, -139.3, 6.5 , 0 );
setMoveKey( spep_0 -3 + 112, 1, -68.3, -86.4 , 0 );
setMoveKey( spep_0 -3 + 114, 1, -68.3, -86.4 , 0 );
setMoveKey( spep_0 -3 + 116, 1, 2.6, -179.3 , 0 );
setMoveKey( spep_0 -3 + 117, 1, 2.6, -179.3 , 0 );
setMoveKey( spep_0 -3 + 118, 1, 132, -129.2 , 0 );
setMoveKey( spep_0 -3 + 120, 1, 201, -107.2 , 0 );
setMoveKey( spep_0 -3 + 122, 1, 286.1, -75.2 , 0 );
setMoveKey( spep_0 -3 + 124, 1, 211, 20.2 , 0 );
setMoveKey( spep_0 -3 + 126, 1, 211, 20.2 , 0 );
setMoveKey( spep_0 -3 + 128, 1, 130.2, 135.1 , 0 );
setMoveKey( spep_0 -3 + 130, 1, 130.2, 135.1 , 0 );
setMoveKey( spep_0 -3 + 131, 1, 130.2, 135.1 , 0 );
setMoveKey( spep_0 -3 + 132, 1, 141.8, -44.2 , 0 );
setMoveKey( spep_0 -3 + 134, 1, 136.4, -87 , 0 );
setMoveKey( spep_0 -3 + 136, 1, 164.3, -192.6 , 0 );
setMoveKey( spep_0 -3 + 137, 1, 164.3, -192.6 , 0 );
setMoveKey( spep_0 -3 + 138, 1, -3.3, -99.2 , 0 );
setMoveKey( spep_0 -3 + 140, 1, -3.3, -99.2 , 0 );
setMoveKey( spep_0 -3 + 142, 1, -33.5, -3.5 , 0 );
setMoveKey( spep_0 -3 + 144, 1, -33.5, -3.5 , 0 );
setMoveKey( spep_0 -3 + 145, 1, -33.5, -3.5 , 0 );
setMoveKey( spep_0 -3 + 146, 1, -135.3, 120.4 , 0 );
setMoveKey( spep_0 -3 + 148, 1, -5.6, 48.3 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 56.2, -7.5 , 0 );
setMoveKey( spep_0 -3 + 151, 1, 56.2, -7.5 , 0 );
setMoveKey( spep_0 -3 + 152, 1, 116.2, -69.7 , 0 );
setMoveKey( spep_0 -3 + 153, 1, 116.2, -69.7 , 0 );
setMoveKey( spep_0 -3 + 154, 1, -53.9, -57.2 , 0 );
setMoveKey( spep_0 -3 + 156, 1, -147.8, -37.6 , 0 );
setMoveKey( spep_0 -3 + 158, 1, -229.7, -53.5 , 0 );
setMoveKey( spep_0 -3 + 160, 1, -229.7, -53.5 , 0 );
setMoveKey( spep_0 -3 + 162, 1, -41.6, -135.4 , 0 );
setMoveKey( spep_0 -3 + 164, 1, -41.6, -135.4 , 0 );
setMoveKey( spep_0 -3 + 166, 1, 56.3, -183.3 , 0 );
setMoveKey( spep_0 -3 + 168, 1, 156.1, -205.3 , 0 );
setMoveKey( spep_0 -3 + 170, 1, 206.1, -191.2 , 0 );
setMoveKey( spep_0 -3 + 171, 1, 206.1, -191.2 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 277.8, -181.4 , 0 );
setMoveKey( spep_0 -3 + 174, 1, 327.8, -163.5 , 0 );
setMoveKey( spep_0 -3 + 175, 1, 327.8, -163.5 , 0 );
setMoveKey( spep_0 -3 + 176, 1, 288.1, -138.6 , 0 );
setMoveKey( spep_0 -3 + 178, 1, 295.1, -147.8 , 0 );
setMoveKey( spep_0 -3 + 180, 1, 295.1, -147.8 , 0 );
setMoveKey( spep_0 -3 + 182, 1, 238.1, -76.2 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 43.9, -19.1 , 0 );
setMoveKey( spep_0 -3 + 186, 1, -149.9, 37.6 , 0 );
setMoveKey( spep_0 -3 + 188, 1, -343.6, 94 , 0 );
setMoveKey( spep_0 -3 + 190, 1, -537.1, 149.9 , 0 );
setMoveKey( spep_0 -3 + 191, 1, -537.1, 149.9 , 0 );
setMoveKey( spep_0 -3 + 192, 1, -200.1, 112.3 , 0 );
setMoveKey( spep_0 -3 + 194, 1, -67.4, 80.5 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 65.1, 48.9 , 0 );
setMoveKey( spep_0 -3 + 197, 1, 65.1, 48.9 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 160.4, -68.4 , 0 );
setMoveKey( spep_0 -3 + 200, 1, 82.8, -34.9 , 0 );
setMoveKey( spep_0 -3 + 202, 1, 25.1, 8.9 , 0 );
setMoveKey( spep_0 -3 + 204, 1, 25.1, 8.9 , 0 );
setMoveKey( spep_0 -3 + 206, 1, -90.5, 51.6 , 0 );
setMoveKey( spep_0 -3 + 208, 1, -90.5, 51.6 , 0 );
setMoveKey( spep_0 -3 + 218, 1, -21, -2.5 , 0 );
setMoveKey( spep_0 -3 + 219, 1, -21, -2.5 , 0 );
setMoveKey( spep_0 -3 + 220, 1, 122.3, 57.7 , 0 );
setMoveKey( spep_0 -3 + 222, 1, 122.3, 57.7 , 0 );
setMoveKey( spep_0 -3 + 224, 1, 164.4, 61.5 , 0 );
setMoveKey( spep_0 -3 + 226, 1, 234.3, 155.3 , 0 );
setMoveKey( spep_0 -3 + 228, 1, 234.1, 126.1 , 0 );
setMoveKey( spep_0 -3 + 230, 1, 243.9, 164.9 , 0 );
setMoveKey( spep_0 -3 + 232, 1, 235.8, 139.7 , 0 );
setMoveKey( spep_0 -3 + 234, 1, 235.6, 162.4 , 0 );
setMoveKey( spep_0 -3 + 236, 1, 235.4, 161.2 , 0 );
setMoveKey( spep_0 -3 + 238, 1, 239.3, 150 , 0 );
setMoveKey( spep_0 -3 + 240, 1, 241.1, 160.8 , 0 );
setMoveKey( spep_0 -3 + 242, 1, 240.9, 165.6 , 0 );
setMoveKey( spep_0 -3 + 244, 1, 244.8, 150.3 , 0 );
setMoveKey( spep_0 -3 + 246, 1, 240.6, 161.1 , 0 );
setMoveKey( spep_0 -3 + 247, 1, 240.6, 161.1 , 0 );
setMoveKey( spep_0 -3 + 248, 1, 248.8, 165.1 , 0 );
setMoveKey( spep_0 -3 + 250, 1, 240.6, 164.7 , 0 );
setMoveKey( spep_0 -3 + 252, 1, 225.5, 161.7 , 0 );
setMoveKey( spep_0 -3 + 254, 1, 184.6, 153.6 , 0 );
setMoveKey( spep_0 -3 + 256, 1, 105.1, 138 , 0 );
setMoveKey( spep_0 -3 + 258, 1, 105.1, 138 , 0 );
setMoveKey( spep_0 -3 + 268, 1, 71.8, 49 , 0 );
setMoveKey( spep_0 -3 + 269, 1, 71.8, 49 , 0 );
setMoveKey( spep_0 -3 + 270, 1, 108.3, 50.5 , 0 );
setMoveKey( spep_0 -3 + 272, 1, 134.7, 25.5 , 0 );
setMoveKey( spep_0 -3 + 274, 1, 157, 4.4 , 0 );
setMoveKey( spep_0 -3 + 276, 1, 175.6, -17.2 , 0 );
setMoveKey( spep_0 -3 + 278, 1, 194.8, -33.5 , 0 );
setMoveKey( spep_0 -3 + 280, 1, 203, -39.1 , 0 );
setMoveKey( spep_0 -3 + 282, 1, 216.5, -46 , 0 );
setMoveKey( spep_0 -3 + 284, 1, 201.6, -66.8 , 0 );
setMoveKey( spep_0 -3 + 286, 1, 204.7, -79.6 , 0 );
setMoveKey( spep_0 -3 + 288, 1, 208.2, -76.8 , 0 );
setMoveKey( spep_0 -3 + 290, 1, 208.2, -70.8 , 0 );
setMoveKey( spep_0 -3 + 292, 1, 205.3, -71.8 , 0 );
setMoveKey( spep_0 -3 + 294, 1, 239.7, -62.2 , 0 );
setMoveKey( spep_0 -3 + 296, 1, 235.7, -58.2 , 0 );
setMoveKey( spep_0 -3 + 298, 1, 192.3, -29.6 , 0 );
setMoveKey( spep_0 -3 + 300, 1, 151.8, 6.2 , 0 );
setMoveKey( spep_0 -3 + 302, 1, 83, 40.1 , 0 );
setMoveKey( spep_0 -3 + 303, 1, 83, 40.1 , 0 );
setMoveKey( spep_0 -3 + 304, 1, 34, 90 , 0 );
setMoveKey( spep_0 -3 + 306, 1, 52, 90.4 , 0 );
setMoveKey( spep_0 -3 + 308, 1, 69.9, 90.8 , 0 );
setMoveKey( spep_0 -3 + 310, 1, 87.9, 91.2 , 0 );
setMoveKey( spep_0 -3 + 311, 1, 87.9, 91.2 , 0 );
setMoveKey( spep_0 -3 + 312, 1, 30.1, 88.8 , 0 );
setMoveKey( spep_0 -3 + 314, 1, 37.7, 80.5 , 0 );
setMoveKey( spep_0 -3 + 316, 1, 45.3, 72.4 , 0 );
setMoveKey( spep_0 -3 + 317, 1, 45.3, 72.4 , 0 );
setMoveKey( spep_0 -3 + 318, 1, 64.1, 65.6 , 0 );
setMoveKey( spep_0 -3 + 319, 1, 64.1, 65.6 , 0 );
setMoveKey( spep_0 -3 + 320, 1, 46.2, 77.8 , 0 );
setMoveKey( spep_0 -3 + 321, 1, 46.2, 77.8 , 0 );
setMoveKey( spep_0 -3 + 322, 1, 66.2, 82.2 , 0 );
setMoveKey( spep_0 -3 + 323, 1, 66.2, 82.2 , 0 );
setMoveKey( spep_0 -3 + 324, 1, 30.1, 106.7 , 0 );
setMoveKey( spep_0 -3 + 325, 1, 30.1, 106.7 , 0 );
setMoveKey( spep_0 -3 + 326, 1, 5.2, 81.6 , 0 );
setMoveKey( spep_0 -3 + 328, 1, 16.9, 83.9 , 0 );
setMoveKey( spep_0 -3 + 330, 1, 11.9, 91.9 , 0 );
setMoveKey( spep_0 -3 + 331, 1, 11.9, 91.9 , 0 );
setMoveKey( spep_0 -3 + 332, 1, 47.1, 58.5 , 0 );
setMoveKey( spep_0 -3 + 334, 1, 39.1, 64.5 , 0 );
setMoveKey( spep_0 -3 + 335, 1, 39.1, 64.5 , 0 );
setMoveKey( spep_0 -3 + 336, 1, -3, 72.7 , 0 );
setMoveKey( spep_0 -3 + 338, 1, 1, 66.7 , 0 );
setMoveKey( spep_0 -3 + 340, 1, 48.1, 81 , 0 );
setMoveKey( spep_0 -3 + 341, 1, 48.1, 81 , 0 );
setMoveKey( spep_0 -3 + 342, 1, 6.3, 89.4 , 0 );
setMoveKey( spep_0 -3 + 344, 1, -9.7, 101.4 , 0 );
setMoveKey( spep_0 -3 + 346, 1, 32, 102.7 , 0 );
setMoveKey( spep_0 -3 + 348, 1, 75, 61.6 , 0 );
setMoveKey( spep_0 -3 + 350, 1, 55, 56.6 , 0 );
setMoveKey( spep_0 -3 + 352, 1, 69, 58.6 , 0 );
setMoveKey( spep_0 -3 + 353, 1, 69, 58.6 , 0 );
setMoveKey( spep_0 -3 + 354, 1, 77, 57.7 , 0 );
setMoveKey( spep_0 -3 + 356, 1, 65.9, 89.9 , 0 );
setMoveKey( spep_0 -3 + 358, 1, 65.9, 89.9 , 0 );
setMoveKey( spep_0 -3 + 422, 1, 22.6, -307.1 , 0 );
setMoveKey( spep_0 -3 + 424, 1, 29.6, -247.1 , 0 );
setMoveKey( spep_0 -3 + 426, 1, 143.9, -4.3 , 0 );
setMoveKey( spep_0 -3 + 427, 1, 143.9, -4.3 , 0 );
setMoveKey( spep_0 -3 + 428, 1, -24.7, 34 , 0 );
setMoveKey( spep_0 -3 + 430, 1, -25.7, 44 , 0 );
setMoveKey( spep_0 -3 + 432, 1, 25.5, 103.5 , 0 );
setMoveKey( spep_0 -3 + 434, 1, 25.5, 7.5 , 0 );
setMoveKey( spep_0 -3 + 436, 1, 23.3, 152.5 , 0 );
setMoveKey( spep_0 -3 + 438, 1, 44.3, 89.5 , 0 );
setMoveKey( spep_0 -3 + 440, 1, 39.3, 88.5 , 0 );
setMoveKey( spep_0 -3 + 442, 1, 45, 90.9 , 0 );
setMoveKey( spep_0 -3 + 444, 1, 50.2, 93.1 , 0 );
setMoveKey( spep_0 -3 + 446, 1, 55, 95.1 , 0 );
setMoveKey( spep_0 -3 + 448, 1, 59.4, 96.9 , 0 );
setMoveKey( spep_0 -3 + 450, 1, 63.5, 98.6 , 0 );
setMoveKey( spep_0 -3 + 452, 1, 67.1, 100.1 , 0 );
setMoveKey( spep_0 -3 + 454, 1, 70.4, 101.5 , 0 );
setMoveKey( spep_0 -3 + 456, 1, 73.4, 102.8 , 0 );
setMoveKey( spep_0 -3 + 458, 1, 76.1, 103.9 , 0 );
setMoveKey( spep_0 -3 + 460, 1, 78.6, 105 , 0 );
setMoveKey( spep_0 -3 + 462, 1, 80.8, 105.9 , 0 );
setMoveKey( spep_0 -3 + 464, 1, 82.7, 106.7 , 0 );
setMoveKey( spep_0 -3 + 466, 1, 84.4, 107.4 , 0 );
setMoveKey( spep_0 + 464, 1, 84.4, 107.4 , 0 );

setScaleKey( spep_0 -3 + 66, 1, 8.63, 8.63 );
setScaleKey( spep_0 -3 + 68, 1, 5.08, 5.08 );
setScaleKey( spep_0 -3 + 70, 1, 4.55, 4.55 );
setScaleKey( spep_0 -3 + 72, 1, 3.2, 3.2 );
setScaleKey( spep_0 -3 + 74, 1, 3.2, 3.2 );
setScaleKey( spep_0 -3 + 84, 1, 3.2, 3.2 );
setScaleKey( spep_0 -3 + 86, 1, 3.2, 3.2 );
setScaleKey( spep_0 -3 + 88, 1, 2.6, 2.6 );
setScaleKey( spep_0 -3 + 90, 1, 2.42, 2.42 );
setScaleKey( spep_0 -3 + 92, 1, 2.25, 2.25 );
setScaleKey( spep_0 -3 + 94, 1, 2.08, 2.08 );
setScaleKey( spep_0 -3 + 95, 1, 2.08, 2.08 );
setScaleKey( spep_0 -3 + 96, 1, 1.9, 1.9 );
setScaleKey( spep_0 -3 + 98, 1, 1.71, 1.71 );
setScaleKey( spep_0 -3 + 99, 1, 1.71, 1.71 );
setScaleKey( spep_0 -3 + 100, 1, 1.52, 1.52 );
setScaleKey( spep_0 -3 + 101, 1, 1.52, 1.52 );
setScaleKey( spep_0 -3 + 102, 1, 1.25, 1.25 );
setScaleKey( spep_0 -3 + 104, 1, 1.05, 1.05 );
setScaleKey( spep_0 -3 + 106, 1, 0.84, 0.84 );
setScaleKey( spep_0 -3 + 110, 1, 0.84, 0.84 );
setScaleKey( spep_0 -3 + 112, 1, 0.72, 0.72 );
setScaleKey( spep_0 -3 + 114, 1, 0.72, 0.72 );
setScaleKey( spep_0 -3 + 116, 1, 0.51, 0.51 );
setScaleKey( spep_0 -3 + 117, 1, 0.51, 0.51 );
setScaleKey( spep_0 -3 + 118, 1, 0.49, 0.49 );
setScaleKey( spep_0 -3 + 120, 1, 0.47, 0.47 );
setScaleKey( spep_0 -3 + 122, 1, 0.49, 0.49 );
setScaleKey( spep_0 -3 + 126, 1, 0.49, 0.49 );
setScaleKey( spep_0 -3 + 128, 1, 0.47, 0.47 );
setScaleKey( spep_0 -3 + 130, 1, 0.47, 0.47 );
setScaleKey( spep_0 -3 + 131, 1, 0.47, 0.47 );
setScaleKey( spep_0 -3 + 132, 1, 0.44, 0.44 );
setScaleKey( spep_0 -3 + 134, 1, 0.44, 0.44 );
setScaleKey( spep_0 -3 + 136, 1, 0.63, 0.63 );
setScaleKey( spep_0 -3 + 137, 1, 0.63, 0.63 );
setScaleKey( spep_0 -3 + 138, 1, 0.52, 0.52 );
setScaleKey( spep_0 -3 + 140, 1, 0.52, 0.52 );
setScaleKey( spep_0 -3 + 142, 1, 0.44, 0.47 );
setScaleKey( spep_0 -3 + 144, 1, 0.44, 0.47 );
setScaleKey( spep_0 -3 + 145, 1, 0.44, 0.47 );
setScaleKey( spep_0 -3 + 146, 1, 0.44, 0.47 );
setScaleKey( spep_0 -3 + 148, 1, 0.44, 0.47 );
setScaleKey( spep_0 -3 + 150, 1, 0.39, 0.42 );
setScaleKey( spep_0 -3 + 152, 1, 0.44, 0.47 );
setScaleKey( spep_0 -3 + 153, 1, 0.44, 0.47 );
setScaleKey( spep_0 -3 + 154, 1, 0.49, 0.53 );
setScaleKey( spep_0 -3 + 164, 1, 0.49, 0.53 );
setScaleKey( spep_0 -3 + 166, 1, 0.39, 0.41 );
setScaleKey( spep_0 -3 + 168, 1, 0.3, 0.32 );
setScaleKey( spep_0 -3 + 170, 1, 0.3, 0.32 );
setScaleKey( spep_0 -3 + 171, 1, 0.3, 0.32 );
setScaleKey( spep_0 -3 + 172, 1, 0.37, 0.39 );
setScaleKey( spep_0 -3 + 174, 1, 0.43, 0.46 );
setScaleKey( spep_0 -3 + 175, 1, 0.43, 0.46 );
setScaleKey( spep_0 -3 + 176, 1, 0.96, 1.02 );
setScaleKey( spep_0 -3 + 178, 1, 1.22, 1.31 );
setScaleKey( spep_0 -3 + 180, 1, 1.22, 1.31 );
setScaleKey( spep_0 -3 + 182, 1, 2.53, 2.7 );
setScaleKey( spep_0 -3 + 184, 1, 6.28, 6.71 );
setScaleKey( spep_0 -3 + 186, 1, 10.03, 10.71 );
setScaleKey( spep_0 -3 + 188, 1, 13.77, 14.72 );
setScaleKey( spep_0 -3 + 190, 1, 17.52, 18.72 );
setScaleKey( spep_0 -3 + 191, 1, 17.52, 18.72 );
setScaleKey( spep_0 -3 + 192, 1, 6.45, 6.89 );
setScaleKey( spep_0 -3 + 194, 1, 4.88, 5.21 );
setScaleKey( spep_0 -3 + 196, 1, 3.3, 3.52 );
setScaleKey( spep_0 -3 + 197, 1, 3.3, 3.52 );
setScaleKey( spep_0 -3 + 198, 1, 1.73, 1.85 );
setScaleKey( spep_0 -3 + 200, 1, 1.51, 1.61 );
setScaleKey( spep_0 -3 + 202, 1, 1.32, 1.41 );
setScaleKey( spep_0 -3 + 204, 1, 1.32, 1.41 );
setScaleKey( spep_0 -3 + 206, 1, 1.03, 1.11 );
setScaleKey( spep_0 -3 + 208, 1, 1.03, 1.11 );
setScaleKey( spep_0 -3 + 218, 1, 0.94, 1.01 );
setScaleKey( spep_0 -3 + 219, 1, 0.94, 1.01 );
setScaleKey( spep_0 -3 + 220, 1, 0.93, 0.99 );
setScaleKey( spep_0 -3 + 222, 1, 0.93, 0.99 );
setScaleKey( spep_0 -3 + 224, 1, 0.68, 0.73 );
setScaleKey( spep_0 -3 + 226, 1, 0.56, 0.6 );
setScaleKey( spep_0 -3 + 228, 1, 0.53, 0.56 );
setScaleKey( spep_0 -3 + 230, 1, 0.49, 0.53 );
setScaleKey( spep_0 -3 + 232, 1, 0.46, 0.49 );
setScaleKey( spep_0 -3 + 234, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 236, 1, 0.39, 0.42 );
setScaleKey( spep_0 -3 + 238, 1, 0.36, 0.38 );
setScaleKey( spep_0 -3 + 240, 1, 0.32, 0.34 );
setScaleKey( spep_0 -3 + 242, 1, 0.29, 0.3 );
setScaleKey( spep_0 -3 + 244, 1, 0.25, 0.27 );
setScaleKey( spep_0 -3 + 246, 1, 0.22, 0.23 );
setScaleKey( spep_0 -3 + 247, 1, 0.22, 0.23 );
setScaleKey( spep_0 -3 + 248, 1, 0.22, 0.24 );
setScaleKey( spep_0 -3 + 250, 1, 0.22, 0.24 );
setScaleKey( spep_0 -3 + 252, 1, 0.25, 0.27 );
setScaleKey( spep_0 -3 + 254, 1, 0.31, 0.33 );
setScaleKey( spep_0 -3 + 256, 1, 0.43, 0.46 );
setScaleKey( spep_0 -3 + 258, 1, 0.43, 0.46 );
setScaleKey( spep_0 -3 + 268, 1, 0.91, 0.97 );
setScaleKey( spep_0 -3 + 269, 1, 0.91, 0.97 );
setScaleKey( spep_0 -3 + 270, 1, 0.47, 0.5 );
setScaleKey( spep_0 -3 + 272, 1, 0.64, 0.69 );
setScaleKey( spep_0 -3 + 274, 1, 0.79, 0.84 );
setScaleKey( spep_0 -3 + 276, 1, 0.91, 0.97 );
setScaleKey( spep_0 -3 + 278, 1, 1.01, 1.08 );
setScaleKey( spep_0 -3 + 280, 1, 1.09, 1.17 );
setScaleKey( spep_0 -3 + 282, 1, 1.15, 1.23 );
setScaleKey( spep_0 -3 + 284, 1, 1.2, 1.28 );
setScaleKey( spep_0 -3 + 286, 1, 1.23, 1.32 );
setScaleKey( spep_0 -3 + 288, 1, 1.26, 1.34 );
setScaleKey( spep_0 -3 + 290, 1, 1.27, 1.36 );
setScaleKey( spep_0 -3 + 292, 1, 1.28, 1.37 );
setScaleKey( spep_0 -3 + 296, 1, 1.28, 1.37 );
setScaleKey( spep_0 -3 + 298, 1, 0.73, 0.78 );
setScaleKey( spep_0 -3 + 300, 1, 0.43, 0.46 );
setScaleKey( spep_0 -3 + 302, 1, 0.28, 0.29 );
setScaleKey( spep_0 -3 + 303, 1, 0.28, 0.29 );
setScaleKey( spep_0 -3 + 304, 1, 0.45, 0.48 );
setScaleKey( spep_0 -3 + 306, 1, 0.44, 0.47 );
setScaleKey( spep_0 -3 + 308, 1, 0.44, 0.46 );
setScaleKey( spep_0 -3 + 310, 1, 0.43, 0.45 );
setScaleKey( spep_0 -3 + 311, 1, 0.43, 0.45 );
setScaleKey( spep_0 -3 + 312, 1, 0.43, 0.45 );
setScaleKey( spep_0 -3 + 314, 1, 0.43, 0.45 );
setScaleKey( spep_0 -3 + 316, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 317, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 318, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 319, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 320, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 321, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 322, 1, 0.43, 0.45 );
setScaleKey( spep_0 -3 + 323, 1, 0.43, 0.45 );
setScaleKey( spep_0 -3 + 324, 1, 0.43, 0.45 );
setScaleKey( spep_0 -3 + 325, 1, 0.43, 0.45 );
setScaleKey( spep_0 -3 + 326, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 330, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 331, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 332, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 334, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 335, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 336, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 338, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 339, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 340, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 341, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 342, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 346, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 347, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 348, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 353, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 354, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 358, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 422, 1, 3.1, 3.1 );
setScaleKey( spep_0 -3 + 424, 1, 3.1, 3.1 );
setScaleKey( spep_0 -3 + 426, 1, 2.4, 2.4 );
setScaleKey( spep_0 -3 + 427, 1, 2.4, 2.4 );
setScaleKey( spep_0 -3 + 428, 1, 4.99, 4.99 );
setScaleKey( spep_0 -3 + 430, 1, 4.99, 4.99 );
setScaleKey( spep_0 -3 + 432, 1, 4.59, 4.59 );
setScaleKey( spep_0 -3 + 434, 1, 4.59, 4.59 );
setScaleKey( spep_0 -3 + 436, 1, 3.8, 3.8 );
setScaleKey( spep_0 -3 + 440, 1, 3.8, 3.8 );
setScaleKey( spep_0 -3 + 442, 1, 3.72, 3.72 );
setScaleKey( spep_0 -3 + 444, 1, 3.64, 3.64 );
setScaleKey( spep_0 -3 + 446, 1, 3.57, 3.57 );
setScaleKey( spep_0 -3 + 448, 1, 3.51, 3.51 );
setScaleKey( spep_0 -3 + 450, 1, 3.45, 3.45 );
setScaleKey( spep_0 -3 + 452, 1, 3.39, 3.39 );
setScaleKey( spep_0 -3 + 454, 1, 3.35, 3.35 );
setScaleKey( spep_0 -3 + 456, 1, 3.3, 3.3 );
setScaleKey( spep_0 -3 + 458, 1, 3.26, 3.26 );
setScaleKey( spep_0 -3 + 460, 1, 3.23, 3.23 );
setScaleKey( spep_0 -3 + 462, 1, 3.2, 3.2 );
setScaleKey( spep_0 -3 + 464, 1, 3.17, 3.17 );
setScaleKey( spep_0 -3 + 466, 1, 3.14, 3.14 );
setScaleKey( spep_0 -3 + 466, 1, 3.14, 3.14 );
setScaleKey( spep_0 + 464, 1, 3.14, 3.14 );

setRotateKey( spep_0 -3 + 66, 1, 0 );
setRotateKey( spep_0 -3 + 67, 1, 0 );
setRotateKey( spep_0 -3 + 68, 1, -4 );
setRotateKey( spep_0 -3 + 69, 1, -4 );
setRotateKey( spep_0 -3 + 70, 1, -7.2 );
setRotateKey( spep_0 -3 + 72, 1, -8.6 );
setRotateKey( spep_0 -3 + 74, 1, -8.6 );
setRotateKey( spep_0 -3 + 84, 1, 30 );
setRotateKey( spep_0 -3 + 86, 1, 30 );
setRotateKey( spep_0 -3 + 88, 1, 35.8 );
setRotateKey( spep_0 -3 + 90, 1, 39.6 );
setRotateKey( spep_0 -3 + 92, 1, 43.4 );
setRotateKey( spep_0 -3 + 94, 1, 47.2 );
setRotateKey( spep_0 -3 + 95, 1, 47.2 );
setRotateKey( spep_0 -3 + 96, 1, 51 );
setRotateKey( spep_0 -3 + 98, 1, 107.1 );
setRotateKey( spep_0 -3 + 99, 1, 107.1 );
setRotateKey( spep_0 -3 + 100, 1, 163.2 );
setRotateKey( spep_0 -3 + 101, 1, 163.2 );
setRotateKey( spep_0 -3 + 102, 1, 109.4 );
setRotateKey( spep_0 -3 + 106, 1, 109.4 );
setRotateKey( spep_0 -3 + 108, 1, 142.8 );
setRotateKey( spep_0 -3 + 110, 1, 142.8 );
setRotateKey( spep_0 -3 + 112, 1, 135.9 );
setRotateKey( spep_0 -3 + 114, 1, 135.9 );
setRotateKey( spep_0 -3 + 116, 1, 128.8 );
setRotateKey( spep_0 -3 + 117, 1, 128.8 );
setRotateKey( spep_0 -3 + 118, 1, 235.2 );
setRotateKey( spep_0 -3 + 120, 1, 265 );
setRotateKey( spep_0 -3 + 122, 1, 244.9 );
setRotateKey( spep_0 -3 + 124, 1, 320 );
setRotateKey( spep_0 -3 + 126, 1, 320 );
setRotateKey( spep_0 -3 + 128, 1, 353.9 );
setRotateKey( spep_0 -3 + 130, 1, 353.9 );
setRotateKey( spep_0 -3 + 131, 1, 353.9 );
setRotateKey( spep_0 -3 + 132, 1, 429.2 );
setRotateKey( spep_0 -3 + 134, 1, 444 );
setRotateKey( spep_0 -3 + 136, 1, 419.9 );
setRotateKey( spep_0 -3 + 137, 1, 419.9 );
setRotateKey( spep_0 -3 + 138, 1, 488.1 );
setRotateKey( spep_0 -3 + 140, 1, 488.1 );
setRotateKey( spep_0 -3 + 142, 1, 543.8 );
setRotateKey( spep_0 -3 + 144, 1, 543.8 );
setRotateKey( spep_0 -3 + 145, 1, 543.8 );
setRotateKey( spep_0 -3 + 146, 1, 531.8 );
setRotateKey( spep_0 -3 + 148, 1, 566.7 );
setRotateKey( spep_0 -3 + 150, 1, 587.8 );
setRotateKey( spep_0 -3 + 152, 1, 585.2 );
setRotateKey( spep_0 -3 + 153, 1, 585.2 );
setRotateKey( spep_0 -3 + 154, 1, 667.6 );
setRotateKey( spep_0 -3 + 156, 1, 624.2 );
setRotateKey( spep_0 -3 + 158, 1, 560.1 );
setRotateKey( spep_0 -3 + 160, 1, 560.1 );
setRotateKey( spep_0 -3 + 162, 1, 518.1 );
setRotateKey( spep_0 -3 + 164, 1, 518.1 );
setRotateKey( spep_0 -3 + 166, 1, 508.9 );
setRotateKey( spep_0 -3 + 168, 1, 497.9 );
setRotateKey( spep_0 -3 + 170, 1, 442.9 );
setRotateKey( spep_0 -3 + 171, 1, 442.9 );
setRotateKey( spep_0 -3 + 172, 1, 387 );
setRotateKey( spep_0 -3 + 174, 1, 433.6 );
setRotateKey( spep_0 -3 + 175, 1, 433.6 );
setRotateKey( spep_0 -3 + 176, 1, 408.3 );
setRotateKey( spep_0 -3 + 178, 1, 439.5 );
setRotateKey( spep_0 -3 + 180, 1, 439.5 );
setRotateKey( spep_0 -3 + 182, 1, 448 );
setRotateKey( spep_0 -3 + 184, 1, 452.3 );
setRotateKey( spep_0 -3 + 186, 1, 456.5 );
setRotateKey( spep_0 -3 + 188, 1, 460.8 );
setRotateKey( spep_0 -3 + 190, 1, 465 );
setRotateKey( spep_0 -3 + 191, 1, 465 );
setRotateKey( spep_0 -3 + 192, 1, 412 );
setRotateKey( spep_0 -3 + 194, 1, 416.3 );
setRotateKey( spep_0 -3 + 196, 1, 420.6 );
setRotateKey( spep_0 -3 + 197, 1, 420.6 );
setRotateKey( spep_0 -3 + 198, 1, 402.7 );
setRotateKey( spep_0 -3 + 200, 1, 402.6 );
setRotateKey( spep_0 -3 + 202, 1, 388 );
setRotateKey( spep_0 -3 + 204, 1, 388 );
setRotateKey( spep_0 -3 + 206, 1, 386.9 );
setRotateKey( spep_0 -3 + 208, 1, 386.9 );
setRotateKey( spep_0 -3 + 218, 1, 316.3 );
setRotateKey( spep_0 -3 + 219, 1, 316.3 );
setRotateKey( spep_0 -3 + 220, 1, 401.9 );
setRotateKey( spep_0 -3 + 222, 1, 401.9 );
setRotateKey( spep_0 -3 + 224, 1, 393.8 );
setRotateKey( spep_0 -3 + 226, 1, 383.1 );
setRotateKey( spep_0 -3 + 228, 1, 383.2 );
setRotateKey( spep_0 -3 + 230, 1, 383.3 );
setRotateKey( spep_0 -3 + 232, 1, 383.4 );
setRotateKey( spep_0 -3 + 234, 1, 383.5 );
setRotateKey( spep_0 -3 + 236, 1, 383.6 );
setRotateKey( spep_0 -3 + 238, 1, 383.7 );
setRotateKey( spep_0 -3 + 240, 1, 383.8 );
setRotateKey( spep_0 -3 + 242, 1, 383.9 );
setRotateKey( spep_0 -3 + 244, 1, 384 );
setRotateKey( spep_0 -3 + 246, 1, 384.1 );
setRotateKey( spep_0 -3 + 247, 1, 384.1 );
setRotateKey( spep_0 -3 + 248, 1, 408.1 );
setRotateKey( spep_0 -3 + 250, 1, 408.4 );
setRotateKey( spep_0 -3 + 252, 1, 410.2 );
setRotateKey( spep_0 -3 + 254, 1, 415.1 );
setRotateKey( spep_0 -3 + 256, 1, 424.8 );
setRotateKey( spep_0 -3 + 258, 1, 424.8 );
setRotateKey( spep_0 -3 + 268, 1, 350.9 );
setRotateKey( spep_0 -3 + 269, 1, 350.9 );
setRotateKey( spep_0 -3 + 270, 1, 348.1 );
setRotateKey( spep_0 -3 + 272, 1, 347.5 );
setRotateKey( spep_0 -3 + 274, 1, 347 );
setRotateKey( spep_0 -3 + 276, 1, 346.5 );
setRotateKey( spep_0 -3 + 278, 1, 346.2 );
setRotateKey( spep_0 -3 + 280, 1, 345.9 );
setRotateKey( spep_0 -3 + 282, 1, 345.7 );
setRotateKey( spep_0 -3 + 284, 1, 345.5 );
setRotateKey( spep_0 -3 + 286, 1, 345.4 );
setRotateKey( spep_0 -3 + 288, 1, 345.3 );
setRotateKey( spep_0 -3 + 290, 1, 345.2 );
setRotateKey( spep_0 -3 + 296, 1, 345.2 );
setRotateKey( spep_0 -3 + 298, 1, 344.3 );
setRotateKey( spep_0 -3 + 300, 1, 341.3 );
setRotateKey( spep_0 -3 + 302, 1, 334.4 );
setRotateKey( spep_0 -3 + 303, 1, 334.4 );
setRotateKey( spep_0 -3 + 304, 1, 359.5 );
setRotateKey( spep_0 -3 + 306, 1, 360.9 );
setRotateKey( spep_0 -3 + 308, 1, 362.3 );
setRotateKey( spep_0 -3 + 310, 1, 363.7 );
setRotateKey( spep_0 -3 + 311, 1, 363.7 );
setRotateKey( spep_0 -3 + 312, 1, 336.7 );
setRotateKey( spep_0 -3 + 314, 1, 350.9 );
setRotateKey( spep_0 -3 + 316, 1, 365 );
setRotateKey( spep_0 -3 + 317, 1, 365 );
setRotateKey( spep_0 -3 + 318, 1, 379.2 );
setRotateKey( spep_0 -3 + 319, 1, 379.2 );
setRotateKey( spep_0 -3 + 320, 1, 337.2 );
setRotateKey( spep_0 -3 + 321, 1, 337.2 );
setRotateKey( spep_0 -3 + 322, 1, 357.9 );
setRotateKey( spep_0 -3 + 323, 1, 357.9 );
setRotateKey( spep_0 -3 + 324, 1, 342.9 );
setRotateKey( spep_0 -3 + 325, 1, 342.9 );
setRotateKey( spep_0 -3 + 326, 1, 323.7 );
setRotateKey( spep_0 -3 + 328, 1, 349.9 );
setRotateKey( spep_0 -3 + 330, 1, 357.9 );
setRotateKey( spep_0 -3 + 331, 1, 357.9 );
setRotateKey( spep_0 -3 + 332, 1, 390.4 );
setRotateKey( spep_0 -3 + 334, 1, 390.4 );
setRotateKey( spep_0 -3 + 335, 1, 390.4 );
setRotateKey( spep_0 -3 + 336, 1, 340.5 );
setRotateKey( spep_0 -3 + 338, 1, 340.5 );
setRotateKey( spep_0 -3 + 339, 1, 340.5 );
setRotateKey( spep_0 -3 + 340, 1, 382.5 );
setRotateKey( spep_0 -3 + 341, 1, 382.5 );
setRotateKey( spep_0 -3 + 342, 1, 313.5 );
setRotateKey( spep_0 -3 + 344, 1, 313.5 );
setRotateKey( spep_0 -3 + 346, 1, 337.7 );
setRotateKey( spep_0 -3 + 347, 1, 337.7 );
setRotateKey( spep_0 -3 + 348, 1, 396.5 );
setRotateKey( spep_0 -3 + 353, 1, 396.5 );
setRotateKey( spep_0 -3 + 354, 1, 340.7 );
setRotateKey( spep_0 -3 + 356, 1, 351.2 );
setRotateKey( spep_0 -3 + 358, 1, 351.2 );
setRotateKey( spep_0 -3 + 422, 1, 246 );
setRotateKey( spep_0 -3 + 427, 1, 246 );
setRotateKey( spep_0 -3 + 428, 1, 66 );
setRotateKey( spep_0 + 464, 1, 66 );

-- ** 音 ** --
--頭突き
playSe( spep_0 + 61, 1110 );
setSeVolume( spep_0 + 61, 1110, 110 );

--[[
SE4 = playSe( spep_0 + 61, 1190 );
stopSe( spep_0 + 81, SE4, 57 );
playSe( spep_0 + 61, 1190 );
setSeVolume( spep_0 + 61, 1190, 126 );
setSeVolume( spep_0 + 70, 1190, 126 );
setSeVolume( spep_0 + 74, 1190, 118 );
setSeVolume( spep_0 + 78, 1190, 104 );
setSeVolume( spep_0 + 84, 1190, 100 );
]]
--v4.11調整
SE4 = playSe( spep_0 + 61, 1190 );
stopSe( spep_0 + 81, SE4, 57 );
playSe( spep_0 + 61, 1190 );
setSeVolume( spep_0 + 61, 1190, 106 );
setSeVolume( spep_0 + 70, 1190, 106 );
setSeVolume( spep_0 + 74, 1190, 100 );
setSeVolume( spep_0 + 78, 1190, 100 );
setSeVolume( spep_0 + 84, 1190, 100 );

playSe( spep_0 + 68, 1169 );

--敵が飛んでいく
--[[
SE5 = playSe( spep_0 + 68, 1183 );
setSeVolume( spep_0 + 68, 1183, 136 );
stopSe( spep_0 + 211, SE5, 0 );

SE6 = playSe( spep_0 + 68, 1121 );
setSeVolume( spep_0 + 68, 1121, 50 );
stopSe( spep_0 + 211, SE6, 0 );
]]
--v4.11調整
SE5 = playSe( spep_0 + 68, 1183 );
setSeVolume( spep_0 + 68, 1183, 136 );
stopSe( spep_0 + 211, SE5, 10 );

SE6 = playSe( spep_0 + 68, 1121 );
setSeVolume( spep_0 + 68, 1121, 50 );
stopSe( spep_0 + 211, SE6, 10 );

--打撃１
playSe( spep_0 + 211, 1009 );
setSeVolume( spep_0 + 211, 1009, 110 );

SE7 = playSe( spep_0 + 211, 1182 );
setSeVolume( spep_0 + 211, 1182, 188 );
setSeVolume( spep_0 + 214, 1182, 188 );
setSeVolume( spep_0 + 215, 1182, 136 );
setSeVolume( spep_0 + 216, 1182, 110 );
setSeVolume( spep_0 + 231, 1182, 110 );
setSeVolume( spep_0 + 234, 1182, 98 );
setSeVolume( spep_0 + 238, 1182, 76 );
setSeVolume( spep_0 + 242, 1182, 52 );
setSeVolume( spep_0 + 246, 1182, 38 );
setSeVolume( spep_0 + 258, 1182, 20 );
setSeVolume( spep_0 + 251, 1182, 0 );
stopSe( spep_0 + 251, SE7, 0 );

playSe( spep_0 + 211, 1047 );
setSeVolume( spep_0 + 211, 1047, 110 );

--敵に近づく
SE8 = playSe( spep_0 + 244, 44 );
setSeVolume( spep_0 + 244, 44, 110 );
stopSe( spep_0 + 275, SE8, 0 );

playSe( spep_0 + 244, 1003 );
setSeVolume( spep_0 + 244, 1003, 110 );

--打撃２
playSe( spep_0 + 260, 1009 );
setSeVolume( spep_0 + 260, 1009, 110 );

SE9 = playSe( spep_0 + 260, 1182 );
setSeVolume( spep_0 + 260, 1182, 188 );
setSeVolume( spep_0 + 263, 1182, 188 );
setSeVolume( spep_0 + 264, 1182, 146 );
setSeVolume( spep_0 + 265, 1182, 110 );
setSeVolume( spep_0 + 280, 1182, 110 );
setSeVolume( spep_0 + 284, 1182, 92 );
setSeVolume( spep_0 + 288, 1182, 64 );
setSeVolume( spep_0 + 292, 1182, 36 );
setSeVolume( spep_0 + 296, 1182, 18 );
setSeVolume( spep_0 + 300, 1182, 0 );
stopSe( spep_0 + 300, SE9, 0 );

playSe( spep_0 + 260, 1047 );
setSeVolume( spep_0 + 260, 1047, 110 );

--ラッシュ
playSe( spep_0 + 301, 1003 );
setSeVolume( spep_0 + 301, 1003, 110 );
playSe( spep_0 + 309, 1110 );
setSeVolume( spep_0 + 309, 1110, 110 );
playSe( spep_0 + 319, 1009 );
playSe( spep_0 + 319, 1110 );
setSeVolume( spep_0 + 319, 1110, 73 );
playSe( spep_0 + 325, 1189 );
setSeVolume( spep_0 + 325, 1189, 110 );
playSe( spep_0 + 330, 1010 );
setSeVolume( spep_0 + 330, 1010, 110 );
playSe( spep_0 + 330, 1110 );
setSeVolume( spep_0 + 330, 1110, 89 );
playSe( spep_0 + 340, 1110 );
setSeVolume( spep_0 + 340, 1110, 89 );
playSe( spep_0 + 347, 1010 );
setSeVolume( spep_0 + 347, 1010, 73 );
playSe( spep_0 + 347, 1110 );
setSeVolume( spep_0 + 347, 1110, 110 );

--アッパー
playSe( spep_0 + 405, 1004 );
setSeVolume( spep_0 + 405, 1004, 110 );

SE10 = playSe( spep_0 + 409, 1116 );
setSeVolume( spep_0 + 409, 1116, 110 );
setSeVolume( spep_0 + 425, 1116, 100 );
setSeVolume( spep_0 + 428, 1116, 87 );
setSeVolume( spep_0 + 432, 1116, 46 );
setSeVolume( spep_0 + 436, 1116, 18 );
setSeVolume( spep_0 + 439, 1116, 0 );
stopSe( spep_0 + 439, SE10, 0 );

SE11 = playSe( spep_0 + 421, 1182 );
setSeVolume( spep_0 + 421, 1182, 136 );
setSeVolume( spep_0 + 431, 1182, 136 );
setSeVolume( spep_0 + 436, 1182, 100 );
setSeVolume( spep_0 + 440, 1182, 68 );
setSeVolume( spep_0 + 442, 1182, 12 );
setSeVolume( spep_0 + 445, 1182, 0 );
stopSe( spep_0 + 445, SE11, 0 );

playSe( spep_0 + 421, 1190 );
setSeVolume( spep_0 + 421, 1190, 110 );
playSe( spep_0 + 421, 1156 );
setSeVolume( spep_0 + 421, 1156, 110 );

--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

-- ** 次の準備 ** --
spep_1 = spep_0 + 464;

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

--エルボー
SE12 = playSe( spep_1 + 74, 1173 );
setSeVolume( spep_1 + 74, 1173, 0 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;

------------------------------------------------------
-- 肘打ち〜回転キックで蹴り落とす(354F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --肘打ち〜回転キックで蹴り落とす(ef_003)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 354, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 354, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 354, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 354, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --肘打ち〜回転キックで蹴り落とす(ef_004)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 354, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 354, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 354, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 354, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 118, 1, 0 );
setDisp( spep_2 -3 + 130, 1, 1 );
setDisp( spep_2 -3 + 214, 1, 0 );
changeAnime( spep_2 + 0, 1, 7 );
changeAnime( spep_2 -3 + 60, 1, 108 );
changeAnime( spep_2 -3 + 116, 1, 7 );
changeAnime( spep_2 -3 + 184, 1, 105 );

setMoveKey( spep_2 + 0, 1, -180, 177.3 , 0 );
setMoveKey( spep_2 -3 + 12, 1, -180, 177.3 , 0 );
setMoveKey( spep_2 -3 + 14, 1, -313.3, 334.6 , 0 );
setMoveKey( spep_2 -3 + 16, 1, -313.3, 334.6 , 0 );
setMoveKey( spep_2 -3 + 18, 1, -417.2, 442.5 , 0 );
setMoveKey( spep_2 -3 + 20, 1, -357.9, 424.4 , 0 );
setMoveKey( spep_2 -3 + 22, 1, -394.6, 473 , 0 );
setMoveKey( spep_2 -3 + 24, 1, -394.6, 471.6 , 0 );
setMoveKey( spep_2 -3 + 26, 1, -376.6, 424.9 , 0 );
setMoveKey( spep_2 -3 + 28, 1, -336.6, 440.3 , 0 );
setMoveKey( spep_2 -3 + 30, 1, -418, 449 , 0 );
setMoveKey( spep_2 -3 + 32, 1, -409.2, 429 , 0 );
setMoveKey( spep_2 -3 + 34, 1, -353.9, 404.3 , 0 );
setMoveKey( spep_2 -3 + 36, 1, -348.9, 414.6 , 0 );
setMoveKey( spep_2 -3 + 38, 1, -377.9, 449 , 0 );
setMoveKey( spep_2 -3 + 40, 1, -397.9, 445.7 , 0 );
setMoveKey( spep_2 -3 + 42, 1, -373.9, 417 , 0 );
setMoveKey( spep_2 -3 + 44, 1, -371.3, 456.3 , 0 );
setMoveKey( spep_2 -3 + 46, 1, -369.2, 431.8 , 0 );
setMoveKey( spep_2 -3 + 48, 1, -387.9, 439.7 , 0 );
setMoveKey( spep_2 -3 + 50, 1, -387.6, 442 , 0 );
setMoveKey( spep_2 -3 + 52, 1, -371.2, 426.4 , 0 );
setMoveKey( spep_2 -3 + 54, 1, -374.3, 432.1 , 0 );
setMoveKey( spep_2 -3 + 56, 1, -381.5, 435.9 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -388.6, 417.7 , 0 );
setMoveKey( spep_2 -3 + 59, 1, -388.6, 417.7 , 0 );
setMoveKey( spep_2 -3 + 60, 1, -82.2, 47.4 , 0 );
setMoveKey( spep_2 -3 + 62, 1, -81.9, 49.4 , 0 );
setMoveKey( spep_2 -3 + 64, 1, -81.6, 51.4 , 0 );
setMoveKey( spep_2 -3 + 66, 1, -81.3, 53.3 , 0 );
setMoveKey( spep_2 -3 + 68, 1, -81, 55.3 , 0 );
setMoveKey( spep_2 -3 + 70, 1, -80.7, 57.3 , 0 );
setMoveKey( spep_2 -3 + 72, 1, -80.4, 59.3 , 0 );
setMoveKey( spep_2 -3 + 74, 1, -80.1, 61.2 , 0 );
setMoveKey( spep_2 -3 + 76, 1, -79.8, 63.2 , 0 );
setMoveKey( spep_2 -3 + 78, 1, -79.5, 65.1 , 0 );
setMoveKey( spep_2 -3 + 80, 1, -79.2, 67.1 , 0 );
setMoveKey( spep_2 -3 + 82, 1, -78.9, 69.1 , 0 );
setMoveKey( spep_2 -3 + 84, 1, -78.6, 71 , 0 );
setMoveKey( spep_2 -3 + 86, 1, -78.3, 73 , 0 );
setMoveKey( spep_2 -3 + 88, 1, -78, 74.9 , 0 );
setMoveKey( spep_2 -3 + 90, 1, -77.7, 76.9 , 0 );
setMoveKey( spep_2 -3 + 92, 1, -77.4, 78.8 , 0 );
setMoveKey( spep_2 -3 + 94, 1, -77.1, 80.7 , 0 );
setMoveKey( spep_2 -3 + 96, 1, -76.8, 82.7 , 0 );
setMoveKey( spep_2 -3 + 98, 1, -76.5, 84.6 , 0 );
setMoveKey( spep_2 -3 + 100, 1, -76.2, 86.5 , 0 );
setMoveKey( spep_2 -3 + 102, 1, -75.9, 88.5 , 0 );
setMoveKey( spep_2 -3 + 104, 1, -75.6, 90.4 , 0 );
setMoveKey( spep_2 -3 + 106, 1, -75.3, 92.3 , 0 );
setMoveKey( spep_2 -3 + 108, 1, -74.9, 94.2 , 0 );
setMoveKey( spep_2 -3 + 110, 1, -74.6, 96.2 , 0 );
setMoveKey( spep_2 -3 + 112, 1, -74.3, 98.1 , 0 );
setMoveKey( spep_2 -3 + 114, 1, -74, 100 , 0 );
setMoveKey( spep_2 -3 + 115, 1, -74, 100 , 0 );
setMoveKey( spep_2 -3 + 116, 1, -95.9, 29.1 , 0 );
setMoveKey( spep_2 -3 + 118, 1, -95.9, 29.1 , 0 );
setMoveKey( spep_2 -3 + 130, 1, -127.5, -43.4 , 0 );
setMoveKey( spep_2 -3 + 131, 1, -127.5, -43.4 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 336.9, -226.8 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 307.9, -257.8 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 307.9, -257.8 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 315.9, -240.8 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 323.9, -208.8 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 295.9, -227.8 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 324.9, -200.8 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 368.9, -162.8 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 368.9, -162.8 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 328.9, -192.8 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 312.9, -197.8 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 314.9, -204.8 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 285.9, -267.8 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 285.9, -267.8 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 299.9, -260.8 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 314.9, -245.8 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 283.9, -266.8 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 319.9, -219.8 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 336.9, -179.8 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 300.9, -226.8 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 308.9, -235.8 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 308.9, -213.8 , 0 );
setMoveKey( spep_2 -3 + 176, 1, 329.9, -202.8 , 0 );
setMoveKey( spep_2 -3 + 178, 1, 308.9, -215.8 , 0 );
setMoveKey( spep_2 -3 + 180, 1, 270.9, -264.8 , 0 );
setMoveKey( spep_2 -3 + 182, 1, 317.9, -240.8 , 0 );
setMoveKey( spep_2 -3 + 183, 1, 317.9, -240.8 , 0 );
setMoveKey( spep_2 -3 + 184, 1, 447.3, 466.2 , 0 );
setMoveKey( spep_2 -3 + 186, 1, 122.9, 192.7 , 0 );
setMoveKey( spep_2 -3 + 188, 1, 2.6, 91.3 , 0 );
setMoveKey( spep_2 -3 + 190, 1, -50.4, 46.7 , 0 );
setMoveKey( spep_2 -3 + 192, 1, -78.7, 22.7 , 0 );
setMoveKey( spep_2 -3 + 194, 1, -95.7, 8.4 , 0 );
setMoveKey( spep_2 -3 + 196, 1, -106.4, -0.6 , 0 );
setMoveKey( spep_2 -3 + 198, 1, -113.6, -6.7 , 0 );
setMoveKey( spep_2 -3 + 200, 1, -118.6, -10.9 , 0 );
setMoveKey( spep_2 -3 + 202, 1, -122.2, -13.9 , 0 );
setMoveKey( spep_2 -3 + 204, 1, -124.9, -16.2 , 0 );
setMoveKey( spep_2 -3 + 206, 1, -127.1, -18.1 , 0 );
setMoveKey( spep_2 -3 + 208, 1, -129, -19.6 , 0 );
setMoveKey( spep_2 -3 + 210, 1, -130.7, -21.1 , 0 );
setMoveKey( spep_2 -3 + 212, 1, -132.4, -22.5 , 0 );
setMoveKey( spep_2 -3 + 214, 1, -133.8, -23.7 , 0 );

setScaleKey( spep_2 + 0, 1, 4.73, 4.73 );
setScaleKey( spep_2 -3 + 58, 1, 4.73, 4.73 );
setScaleKey( spep_2 -3 + 59, 1, 4.73, 4.73 );
setScaleKey( spep_2 -3 + 60, 1, 2.24, 2.24 );
setScaleKey( spep_2 -3 + 64, 1, 2.24, 2.24 );
setScaleKey( spep_2 -3 + 66, 1, 2.23, 2.23 );
setScaleKey( spep_2 -3 + 72, 1, 2.23, 2.23 );
setScaleKey( spep_2 -3 + 74, 1, 2.22, 2.22 );
setScaleKey( spep_2 -3 + 82, 1, 2.22, 2.22 );
setScaleKey( spep_2 -3 + 84, 1, 2.21, 2.21 );
setScaleKey( spep_2 -3 + 90, 1, 2.21, 2.21 );
setScaleKey( spep_2 -3 + 92, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 100, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 102, 1, 2.19, 2.19 );
setScaleKey( spep_2 -3 + 108, 1, 2.19, 2.19 );
setScaleKey( spep_2 -3 + 110, 1, 2.18, 2.18 );
setScaleKey( spep_2 -3 + 115, 1, 2.18, 2.18 );
setScaleKey( spep_2 -3 + 116, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 118, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 130, 1, 0.62, 0.62 );
setScaleKey( spep_2 -3 + 131, 1, 0.62, 0.62 );
setScaleKey( spep_2 -3 + 132, 1, 3.38, 3.38 );
setScaleKey( spep_2 -3 + 182, 1, 3.38, 3.38 );
setScaleKey( spep_2 -3 + 183, 1, 3.38, 3.38 );
setScaleKey( spep_2 -3 + 184, 1, 8.09, 8.09 );
setScaleKey( spep_2 -3 + 186, 1, 3.59, 3.59 );
setScaleKey( spep_2 -3 + 188, 1, 1.92, 1.92 );
setScaleKey( spep_2 -3 + 190, 1, 1.19, 1.19 );
setScaleKey( spep_2 -3 + 192, 1, 0.8, 0.8 );
setScaleKey( spep_2 -3 + 194, 1, 0.56, 0.56 );
setScaleKey( spep_2 -3 + 196, 1, 0.41, 0.41 );
setScaleKey( spep_2 -3 + 198, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 200, 1, 0.24, 0.24 );
setScaleKey( spep_2 -3 + 202, 1, 0.19, 0.19 );
setScaleKey( spep_2 -3 + 204, 1, 0.16, 0.16 );
setScaleKey( spep_2 -3 + 206, 1, 0.13, 0.13 );
setScaleKey( spep_2 -3 + 208, 1, 0.1, 0.1 );
setScaleKey( spep_2 -3 + 210, 1, 0.08, 0.08 );
setScaleKey( spep_2 -3 + 212, 1, 0.05, 0.05 );
setScaleKey( spep_2 -3 + 214, 1, 0.03, 0.03 );

setRotateKey( spep_2 + 0, 1, 130 );
setRotateKey( spep_2 -3 + 58, 1, 130 );
setRotateKey( spep_2 -3 + 59, 1, 130 );
setRotateKey( spep_2 -3 + 60, 1, 309.7 );
setRotateKey( spep_2 -3 + 62, 1, 309.3 );
setRotateKey( spep_2 -3 + 64, 1, 308.9 );
setRotateKey( spep_2 -3 + 66, 1, 308.5 );
setRotateKey( spep_2 -3 + 68, 1, 308.1 );
setRotateKey( spep_2 -3 + 70, 1, 307.7 );
setRotateKey( spep_2 -3 + 72, 1, 307.3 );
setRotateKey( spep_2 -3 + 74, 1, 307 );
setRotateKey( spep_2 -3 + 76, 1, 306.6 );
setRotateKey( spep_2 -3 + 78, 1, 306.2 );
setRotateKey( spep_2 -3 + 80, 1, 305.8 );
setRotateKey( spep_2 -3 + 82, 1, 305.4 );
setRotateKey( spep_2 -3 + 84, 1, 305 );
setRotateKey( spep_2 -3 + 86, 1, 304.6 );
setRotateKey( spep_2 -3 + 88, 1, 304.2 );
setRotateKey( spep_2 -3 + 90, 1, 303.8 );
setRotateKey( spep_2 -3 + 92, 1, 303.4 );
setRotateKey( spep_2 -3 + 94, 1, 303 );
setRotateKey( spep_2 -3 + 96, 1, 302.6 );
setRotateKey( spep_2 -3 + 98, 1, 302.2 );
setRotateKey( spep_2 -3 + 100, 1, 301.8 );
setRotateKey( spep_2 -3 + 102, 1, 301.5 );
setRotateKey( spep_2 -3 + 104, 1, 301.1 );
setRotateKey( spep_2 -3 + 106, 1, 300.7 );
setRotateKey( spep_2 -3 + 108, 1, 300.3 );
setRotateKey( spep_2 -3 + 110, 1, 299.9 );
setRotateKey( spep_2 -3 + 112, 1, 299.5 );
setRotateKey( spep_2 -3 + 114, 1, 299.1 );
setRotateKey( spep_2 -3 + 115, 1, 299.1 );
setRotateKey( spep_2 -3 + 116, 1, 386.8 );
setRotateKey( spep_2 -3 + 118, 1, 386.8 );
setRotateKey( spep_2 -3 + 130, 1, 420 );
setRotateKey( spep_2 -3 + 131, 1, 420 );
setRotateKey( spep_2 -3 + 132, 1, 413 );
setRotateKey( spep_2 -3 + 182, 1, 413 );
setRotateKey( spep_2 -3 + 183, 1, 413 );
setRotateKey( spep_2 -3 + 184, 1, 582.7 );
setRotateKey( spep_2 -3 + 194, 1, 582.7 );
setRotateKey( spep_2 -3 + 196, 1, 582.6 );
setRotateKey( spep_2 -3 + 214, 1, 582.6 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 354, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--エルボー
setSeVolume( spep_2 + 22, 1173, 10 );
setSeVolume( spep_2 + 24, 1173, 44 );
setSeVolume( spep_2 + 26, 1173, 82 );
setSeVolume( spep_2 + 27, 1173, 110 );
setSeVolume( spep_2 + 69, 1173, 82 );
setSeVolume( spep_2 + 72, 1173, 68 );
setSeVolume( spep_2 + 76, 1173, 55 );
setSeVolume( spep_2 + 82, 1173, 50 );
setSeVolume( spep_2 + 88, 1173, 46 );
setSeVolume( spep_2 + 94, 1173, 38 );
setSeVolume( spep_2 + 100, 1173, 22 );
setSeVolume( spep_2 + 105, 1173, 0 );
stopSe( spep_2 + 105, SE12, 0 );

playSe( spep_2 + 0, 1189 );
setSeVolume( spep_2 + 0, 1189, 110 );

SE13 = playSe( spep_2 + 0, 1109 );
setSeVolume( spep_2 + 0, 1109, 60 );
setSeVolume( spep_2 + 5, 1109, 60 );
setSeVolume( spep_2 + 7, 1109, 54 );
setSeVolume( spep_2 + 10, 1109, 38 );
setSeVolume( spep_2 + 12, 1109, 26 );
setSeVolume( spep_2 + 14, 1109, 14 );
setSeVolume( spep_2 + 17, 1109, 0 );
stopSe( spep_2 + 17, SE13, 0 );

playSe( spep_2 + 1, 1048 );
setSeVolume( spep_2 + 1, 1048, 110 );
playSe( spep_2 + 13, 1190 );
setSeVolume( spep_2 + 13, 1190, 151 );
playSe( spep_2 + 13, 1009 );
setSeVolume( spep_2 + 13, 1009, 110 );

--敵が飛んでいく
SE14 = playSe( spep_2 + 55, 1121 );
setSeVolume( spep_2 + 55, 1121, 0 );
setSeVolume( spep_2 + 177, 1121, 10 );
setSeVolume( spep_2 + 179, 1121, 66 );
setSeVolume( spep_2 + 180, 1121, 132 );
setSeVolume( spep_2 + 181, 1121, 168 );
stopSe( spep_2 + 224, SE14, 0 );

SE15 = playSe( spep_2 + 130, 1183 );
setSeVolume( spep_2 + 130, 1183, 0 );
setSeVolume( spep_2 + 173, 1183, 10 );
setSeVolume( spep_2 + 179, 1183, 66 );
setSeVolume( spep_2 + 180, 1183, 98 );
setSeVolume( spep_2 + 182, 1183, 110 );
stopSe( spep_2 + 220, SE15, 0 );

--回転蹴り
playSe( spep_2 + 102, 1004 );
setSeVolume( spep_2 + 102, 1004, 73 );
playSe( spep_2 + 111, 1048 );
setSeVolume( spep_2 + 111, 1048, 110 );
playSe( spep_2 + 124, 1120 );
setSeVolume( spep_2 + 124, 1120, 122 );

--地面衝突
playSe( spep_2 + 217, 1159 );
setSeVolume( spep_2 + 217, 1159, 110 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 234 );
endPhase( spep_2 + 350 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 飛び上がり〜アッパー(464F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
upper_f = entryEffectLife( spep_0 + 0, SP_01x, 464, 0x100, -1, 0, 0, 0 );  --飛び上がり〜アッパー(ef_001)
setEffMoveKey( spep_0 + 0, upper_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 464, upper_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, upper_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 464, upper_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, upper_f, 0 );
setEffRotateKey( spep_0 + 464, upper_f, 0 );
setEffAlphaKey( spep_0 + 0, upper_f, 255 );
setEffAlphaKey( spep_0 + 464, upper_f, 255 );

upper_b = entryEffectLife( spep_0 + 0, SP_02x, 464, 0x80, -1, 0, 0, 0 );  --飛び上がり〜アッパー(ef_002)
setEffMoveKey( spep_0 + 0, upper_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 464, upper_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, upper_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 464, upper_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, upper_b, 0 );
setEffRotateKey( spep_0 + 464, upper_b, 0 );
setEffAlphaKey( spep_0 + 0, upper_b, 255 );
setEffAlphaKey( spep_0 + 464, upper_b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 466, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--ダッシュ
SE0 = playSe( spep_0 + 0, 1121 );
setSeVolume( spep_0 + 0, 1121, 0 );
setSeVolume( spep_0 + 18, 1121, 10 );
setSeVolume( spep_0 + 19, 1121, 60 );
setSeVolume( spep_0 + 20, 1121, 110 );
setSeVolume( spep_0 + 41, 1121, 86 );
setSeVolume( spep_0 + 46, 1121, 65 );
setSeVolume( spep_0 + 52, 1121, 42 );
setSeVolume( spep_0 + 58, 1121, 36 );
setSeVolume( spep_0 + 62, 1121, 20 );
setSeVolume( spep_0 + 64, 1121, 0 );
stopSe( spep_0 + 64, SE0, 0 );

SE1 = playSe( spep_0 + 1, 1232 );
setSeVolume( spep_0 + 1, 1232, 60 );

SE2 = playSe( spep_0 + 19, 1182 );
setSeVolume( spep_0 + 19, 1182, 234 );
setSeVolume( spep_0 + 25, 1182, 234 );
setSeVolume( spep_0 + 26, 1182, 193 );
setSeVolume( spep_0 + 27, 1182, 136 );

SE3 = playSe( spep_0 + 19, 1183 );
setSeVolume( spep_0 + 19, 1183, 168 );
stopSe( spep_0 + 68, SE3, 0 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 38; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe(SP_dodge - 12, SE0, 0 );
stopSe(SP_dodge - 12, SE1, 0 );
stopSe(SP_dodge - 12, SE2, 0 );
stopSe(SP_dodge - 12, SE3, 0 );

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

spep_x = spep_0 + 354 -4;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 66, 1, 1 );
setDisp( spep_0 -3 + 74, 1, 0 );
setDisp( spep_0 -3 + 84, 1, 1 );
setDisp( spep_0 -3 + 208, 1, 0 );
setDisp( spep_0 -3 + 218, 1, 1 );
setDisp( spep_0 -3 + 258, 1, 0 );
setDisp( spep_0 -3 + 268, 1, 1 );
setDisp( spep_0 -3 + 358, 1, 0 );
setDisp( spep_0 -3 + 422, 1, 1 );
setDisp( spep_0 + 464, 1, 0 );

changeAnime( spep_0 -3 + 66, 1, 8 );
changeAnime( spep_0 -3 + 96, 1, 6 );
changeAnime( spep_0 -3 + 100, 1, 8 );
changeAnime( spep_0 -3 + 102, 1, 5 );
changeAnime( spep_0 -3 + 118, 1, 6 );
changeAnime( spep_0 -3 + 132, 1, 8 );
changeAnime( spep_0 -3 + 138, 1, 105 );
changeAnime( spep_0 -3 + 146, 1, 108 );
changeAnime( spep_0 -3 + 154, 1, 105 );
changeAnime( spep_0 -3 + 171, 1, 8 );
changeAnime( spep_0 -3 + 176, 1, 105 );
changeAnime( spep_0 -3 + 192, 1, 6 );
changeAnime( spep_0 -3 + 198, 1, 8 );
changeAnime( spep_0 -3 + 218, 1, 6 );
changeAnime( spep_0 -3 + 220, 1, 5 );
changeAnime( spep_0 -3 + 248, 1, 105 );
changeAnime( spep_0 -3 + 268, 1, 8 );
changeAnime( spep_0 -3 + 270, 1, 7 );
changeAnime( spep_0 -3 + 304, 1, 8 );
changeAnime( spep_0 -3 + 312, 1, 6 );
changeAnime( spep_0 -3 + 318, 1, 8 );
changeAnime( spep_0 -3 + 320, 1, 6 );
changeAnime( spep_0 -3 + 322, 1, 8 );
changeAnime( spep_0 -3 + 324, 1, 4 );
changeAnime( spep_0 -3 + 326, 1, 6 );
changeAnime( spep_0 -3 + 332, 1, 8 );
changeAnime( spep_0 -3 + 336, 1, 6 );
changeAnime( spep_0 -3 + 340, 1, 8 );
changeAnime( spep_0 -3 + 342, 1, 6 );
changeAnime( spep_0 -3 + 348, 1, 8 );
changeAnime( spep_0 -3 + 354, 1, 6 );
changeAnime( spep_0 -3 + 422, 1, 7 );
changeAnime( spep_0 -3 + 428, 1, 105 );

setMoveKey( spep_0 -3 + 66, 1, -363.9, -8.5 , 0 );
setMoveKey( spep_0 -3 + 68, 1, -273.8, -38.9 , 0 );
setMoveKey( spep_0 -3 + 70, 1, -320.3, -76.2 , 0 );
setMoveKey( spep_0 -3 + 72, 1, -375.7, -89.6 , 0 );
setMoveKey( spep_0 -3 + 74, 1, -375.7, -89.6 , 0 );

setMoveKey( spep_0 -3 + 84, 1, -118, -122.4 , 0 );
setMoveKey( spep_0 -3 + 86, 1, -118, -122.4 , 0 );
setMoveKey( spep_0 -3 + 88, 1, -172, -143.4 , 0 );
setMoveKey( spep_0 -3 + 90, 1, -174.5, -112.2 , 0 );
setMoveKey( spep_0 -3 + 92, 1, -176.8, -80.3 , 0 );
setMoveKey( spep_0 -3 + 94, 1, -179.1, -47.8 , 0 );
setMoveKey( spep_0 -3 + 95, 1, -179.1, -47.8 , 0 );
setMoveKey( spep_0 -3 + 96, 1, -136.5, 7.7 , 0 );
setMoveKey( spep_0 -3 + 98, 1, -91.1, 46.5 , 0 );
setMoveKey( spep_0 -3 + 99, 1, -91.1, 46.5 , 0 );
setMoveKey( spep_0 -3 + 100, 1, -14.5, 58.8 , 0 );
setMoveKey( spep_0 -3 + 101, 1, -14.5, 58.8 , 0 );
setMoveKey( spep_0 -3 + 102, 1, 133.1, 18.8 , 0 );
setMoveKey( spep_0 -3 + 104, 1, 185.2, 20.7 , 0 );
setMoveKey( spep_0 -3 + 106, 1, 237.3, 22.7 , 0 );
setMoveKey( spep_0 -3 + 108, 1, 139.3, 6.5 , 0 );
setMoveKey( spep_0 -3 + 110, 1, 139.3, 6.5 , 0 );
setMoveKey( spep_0 -3 + 112, 1, 68.3, -86.4 , 0 );
setMoveKey( spep_0 -3 + 114, 1, 68.3, -86.4 , 0 );
setMoveKey( spep_0 -3 + 116, 1, -2.6, -179.3 , 0 );
setMoveKey( spep_0 -3 + 117, 1, -2.6, -179.3 , 0 );
setMoveKey( spep_0 -3 + 118, 1, -132, -129.2 , 0 );
setMoveKey( spep_0 -3 + 120, 1, -201, -107.2 , 0 );
setMoveKey( spep_0 -3 + 122, 1, -286.1, -75.2 , 0 );
setMoveKey( spep_0 -3 + 124, 1, -211, 20.2 , 0 );
setMoveKey( spep_0 -3 + 126, 1, -211, 20.2 , 0 );
setMoveKey( spep_0 -3 + 128, 1, -130.2, 135.1 , 0 );
setMoveKey( spep_0 -3 + 130, 1, -130.2, 135.1 , 0 );
setMoveKey( spep_0 -3 + 131, 1, -130.2, 135.1 , 0 );
setMoveKey( spep_0 -3 + 132, 1, -141.8, -44.2 , 0 );
setMoveKey( spep_0 -3 + 134, 1, -136.4, -87 , 0 );
setMoveKey( spep_0 -3 + 136, 1, -164.3, -192.6 , 0 );
setMoveKey( spep_0 -3 + 137, 1, -164.3, -192.6 , 0 );
setMoveKey( spep_0 -3 + 138, 1, 3.3, -99.2 , 0 );
setMoveKey( spep_0 -3 + 140, 1, 3.3, -99.2 , 0 );
setMoveKey( spep_0 -3 + 142, 1, 33.5, -3.5 , 0 );
setMoveKey( spep_0 -3 + 144, 1, 33.5, -3.5 , 0 );
setMoveKey( spep_0 -3 + 145, 1, 33.5, -3.5 , 0 );
setMoveKey( spep_0 -3 + 146, 1, 135.3, 120.4 , 0 );
setMoveKey( spep_0 -3 + 148, 1, 5.6, 48.3 , 0 );
setMoveKey( spep_0 -3 + 150, 1, -56.2, -7.5 , 0 );
setMoveKey( spep_0 -3 + 151, 1, -56.2, -7.5 , 0 );
setMoveKey( spep_0 -3 + 152, 1, -116.2, -69.7 , 0 );
setMoveKey( spep_0 -3 + 153, 1, -116.2, -69.7 , 0 );
setMoveKey( spep_0 -3 + 154, 1, 53.9, -57.2 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 147.8, -37.6 , 0 );
setMoveKey( spep_0 -3 + 158, 1, 229.7, -53.5 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 229.7, -53.5 , 0 );
setMoveKey( spep_0 -3 + 162, 1, 41.6, -135.4 , 0 );
setMoveKey( spep_0 -3 + 164, 1, 41.6, -135.4 , 0 );
setMoveKey( spep_0 -3 + 166, 1, -56.3, -183.3 , 0 );
setMoveKey( spep_0 -3 + 168, 1, -156.1, -205.3 , 0 );
setMoveKey( spep_0 -3 + 170, 1, -206.1, -191.2 , 0 );
setMoveKey( spep_0 -3 + 171, 1, -206.1, -191.2 , 0 );
setMoveKey( spep_0 -3 + 172, 1, -277.8, -181.4 , 0 );
setMoveKey( spep_0 -3 + 174, 1, -327.8, -163.5 , 0 );
setMoveKey( spep_0 -3 + 175, 1, -327.8, -163.5 , 0 );
setMoveKey( spep_0 -3 + 176, 1, -288.1, -138.6 , 0 );
setMoveKey( spep_0 -3 + 178, 1, -295.1, -147.8 , 0 );
setMoveKey( spep_0 -3 + 180, 1, -295.1, -147.8 , 0 );
setMoveKey( spep_0 -3 + 182, 1, -238.1, -76.2 , 0 );
setMoveKey( spep_0 -3 + 184, 1, -43.9, -19.1 , 0 );
setMoveKey( spep_0 -3 + 186, 1, 149.9, 37.6 , 0 );
setMoveKey( spep_0 -3 + 188, 1, 343.6, 94 , 0 );
setMoveKey( spep_0 -3 + 190, 1, 537.1, 149.9 , 0 );
setMoveKey( spep_0 -3 + 191, 1, 537.1, 149.9 , 0 );
setMoveKey( spep_0 -3 + 192, 1, 200.1, 112.3 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 67.4, 80.5 , 0 );
setMoveKey( spep_0 -3 + 196, 1, -65.1, 48.9 , 0 );
setMoveKey( spep_0 -3 + 197, 1, -65.1, 48.9 , 0 );
setMoveKey( spep_0 -3 + 198, 1, -160.4, -68.4 , 0 );
setMoveKey( spep_0 -3 + 200, 1, -82.8, -34.9 , 0 );
setMoveKey( spep_0 -3 + 202, 1, -25.1, 8.9 , 0 );
setMoveKey( spep_0 -3 + 204, 1, -25.1, 8.9 , 0 );
setMoveKey( spep_0 -3 + 206, 1, 90.5, 51.6 , 0 );
setMoveKey( spep_0 -3 + 208, 1, 90.5, 51.6 , 0 );
setMoveKey( spep_0 -3 + 218, 1, 21, -2.5 , 0 );
setMoveKey( spep_0 -3 + 219, 1, 21, -2.5 , 0 );
setMoveKey( spep_0 -3 + 220, 1, -122.3, 57.7 , 0 );
setMoveKey( spep_0 -3 + 222, 1, -122.3, 57.7 , 0 );
setMoveKey( spep_0 -3 + 224, 1, -164.4, 61.5 , 0 );
setMoveKey( spep_0 -3 + 226, 1, -234.3, 155.3 , 0 );
setMoveKey( spep_0 -3 + 228, 1, -234.1, 126.1 , 0 );
setMoveKey( spep_0 -3 + 230, 1, -243.9, 164.9 , 0 );
setMoveKey( spep_0 -3 + 232, 1, -235.8, 139.7 , 0 );
setMoveKey( spep_0 -3 + 234, 1, -235.6, 162.4 , 0 );
setMoveKey( spep_0 -3 + 236, 1, -235.4, 161.2 , 0 );
setMoveKey( spep_0 -3 + 238, 1, -239.3, 150 , 0 );
setMoveKey( spep_0 -3 + 240, 1, -241.1, 160.8 , 0 );
setMoveKey( spep_0 -3 + 242, 1, -240.9, 165.6 , 0 );
setMoveKey( spep_0 -3 + 244, 1, -244.8, 150.3 , 0 );
setMoveKey( spep_0 -3 + 246, 1, -240.6, 161.1 , 0 );
setMoveKey( spep_0 -3 + 247, 1, -240.6, 161.1 , 0 );
setMoveKey( spep_0 -3 + 248, 1, -248.8, 165.1 , 0 );
setMoveKey( spep_0 -3 + 250, 1, -240.6, 164.7 , 0 );
setMoveKey( spep_0 -3 + 252, 1, -225.5, 161.7 , 0 );
setMoveKey( spep_0 -3 + 254, 1, -184.6, 153.6 , 0 );
setMoveKey( spep_0 -3 + 256, 1, -105.1, 138 , 0 );
setMoveKey( spep_0 -3 + 258, 1, -105.1, 138 , 0 );
setMoveKey( spep_0 -3 + 268, 1, -71.8, 49 , 0 );
setMoveKey( spep_0 -3 + 269, 1, -71.8, 49 , 0 );
setMoveKey( spep_0 -3 + 270, 1, -108.3, 50.5 , 0 );
setMoveKey( spep_0 -3 + 272, 1, -134.7, 25.5 , 0 );
setMoveKey( spep_0 -3 + 274, 1, -157, 4.4 , 0 );
setMoveKey( spep_0 -3 + 276, 1, -175.6, -17.2 , 0 );
setMoveKey( spep_0 -3 + 278, 1, -194.8, -33.5 , 0 );
setMoveKey( spep_0 -3 + 280, 1, -203, -39.1 , 0 );
setMoveKey( spep_0 -3 + 282, 1, -216.5, -46 , 0 );
setMoveKey( spep_0 -3 + 284, 1, -201.6, -66.8 , 0 );
setMoveKey( spep_0 -3 + 286, 1, -204.7, -79.6 , 0 );
setMoveKey( spep_0 -3 + 288, 1, -208.2, -76.8 , 0 );
setMoveKey( spep_0 -3 + 290, 1, -208.2, -70.8 , 0 );
setMoveKey( spep_0 -3 + 292, 1, -205.3, -71.8 , 0 );
setMoveKey( spep_0 -3 + 294, 1, -239.7, -62.2 , 0 );
setMoveKey( spep_0 -3 + 296, 1, -235.7, -58.2 , 0 );
setMoveKey( spep_0 -3 + 298, 1, -192.3, -29.6 , 0 );
setMoveKey( spep_0 -3 + 300, 1, -151.8, 6.2 , 0 );
setMoveKey( spep_0 -3 + 302, 1, -83, 40.1 , 0 );
setMoveKey( spep_0 -3 + 303, 1, -83, 40.1 , 0 );
setMoveKey( spep_0 -3 + 304, 1, -34, 90 , 0 );
setMoveKey( spep_0 -3 + 306, 1, -52, 90.4 , 0 );
setMoveKey( spep_0 -3 + 308, 1, -69.9, 90.8 , 0 );
setMoveKey( spep_0 -3 + 310, 1, -87.9, 91.2 , 0 );
setMoveKey( spep_0 -3 + 311, 1, -87.9, 91.2 , 0 );
setMoveKey( spep_0 -3 + 312, 1, -30.1, 88.8 , 0 );
setMoveKey( spep_0 -3 + 314, 1, -37.7, 80.5 , 0 );
setMoveKey( spep_0 -3 + 316, 1, -45.3, 72.4 , 0 );
setMoveKey( spep_0 -3 + 317, 1, -45.3, 72.4 , 0 );
setMoveKey( spep_0 -3 + 318, 1, -64.1, 65.6 , 0 );
setMoveKey( spep_0 -3 + 319, 1, -64.1, 65.6 , 0 );
setMoveKey( spep_0 -3 + 320, 1, -46.2, 77.8 , 0 );
setMoveKey( spep_0 -3 + 321, 1, -46.2, 77.8 , 0 );
setMoveKey( spep_0 -3 + 322, 1, -66.2, 82.2 , 0 );
setMoveKey( spep_0 -3 + 323, 1, -66.2, 82.2 , 0 );
setMoveKey( spep_0 -3 + 324, 1, -30.1, 106.7 , 0 );
setMoveKey( spep_0 -3 + 325, 1, -30.1, 106.7 , 0 );
setMoveKey( spep_0 -3 + 326, 1, -5.2, 81.6 , 0 );
setMoveKey( spep_0 -3 + 328, 1, -16.9, 83.9 , 0 );
setMoveKey( spep_0 -3 + 330, 1, -11.9, 91.9 , 0 );
setMoveKey( spep_0 -3 + 331, 1, -11.9, 91.9 , 0 );
setMoveKey( spep_0 -3 + 332, 1, -47.1, 58.5 , 0 );
setMoveKey( spep_0 -3 + 334, 1, -39.1, 64.5 , 0 );
setMoveKey( spep_0 -3 + 335, 1, -39.1, 64.5 , 0 );
setMoveKey( spep_0 -3 + 336, 1, 3, 72.7 , 0 );
setMoveKey( spep_0 -3 + 338, 1, -1, 66.7 , 0 );
setMoveKey( spep_0 -3 + 340, 1, -48.1, 81 , 0 );
setMoveKey( spep_0 -3 + 341, 1, -48.1, 81 , 0 );
setMoveKey( spep_0 -3 + 342, 1, -6.3, 89.4 , 0 );
setMoveKey( spep_0 -3 + 344, 1, 9.7, 101.4 , 0 );
setMoveKey( spep_0 -3 + 346, 1, -32, 102.7 , 0 );
setMoveKey( spep_0 -3 + 348, 1, -75, 61.6 , 0 );
setMoveKey( spep_0 -3 + 350, 1, -55, 56.6 , 0 );
setMoveKey( spep_0 -3 + 352, 1, -69, 58.6 , 0 );
setMoveKey( spep_0 -3 + 353, 1, -69, 58.6 , 0 );
setMoveKey( spep_0 -3 + 354, 1, -77, 57.7 , 0 );
setMoveKey( spep_0 -3 + 356, 1, -65.9, 89.9 , 0 );
setMoveKey( spep_0 -3 + 358, 1, -65.9, 89.9 , 0 );
setMoveKey( spep_0 -3 + 422, 1, -22.6, -307.1 , 0 );
setMoveKey( spep_0 -3 + 424, 1, -29.6, -247.1 , 0 );
setMoveKey( spep_0 -3 + 426, 1, -143.9, -4.3 , 0 );
setMoveKey( spep_0 -3 + 427, 1, -143.9, -4.3 , 0 );
setMoveKey( spep_0 -3 + 428, 1, 24.7, 34 , 0 );
setMoveKey( spep_0 -3 + 430, 1, 25.7, 44 , 0 );
setMoveKey( spep_0 -3 + 432, 1, -25.5, 103.5 , 0 );
setMoveKey( spep_0 -3 + 434, 1, -25.5, 7.5 , 0 );
setMoveKey( spep_0 -3 + 436, 1, -23.3, 152.5 , 0 );
setMoveKey( spep_0 -3 + 438, 1, -44.3, 89.5 , 0 );
setMoveKey( spep_0 -3 + 440, 1, -39.3, 88.5 , 0 );
setMoveKey( spep_0 -3 + 442, 1, -45, 90.9 , 0 );
setMoveKey( spep_0 -3 + 444, 1, -50.2, 93.1 , 0 );
setMoveKey( spep_0 -3 + 446, 1, -55, 95.1 , 0 );
setMoveKey( spep_0 -3 + 448, 1, -59.4, 96.9 , 0 );
setMoveKey( spep_0 -3 + 450, 1, -63.5, 98.6 , 0 );
setMoveKey( spep_0 -3 + 452, 1, -67.1, 100.1 , 0 );
setMoveKey( spep_0 -3 + 454, 1, -70.4, 101.5 , 0 );
setMoveKey( spep_0 -3 + 456, 1, -73.4, 102.8 , 0 );
setMoveKey( spep_0 -3 + 458, 1, -76.1, 103.9 , 0 );
setMoveKey( spep_0 -3 + 460, 1, -78.6, 105 , 0 );
setMoveKey( spep_0 -3 + 462, 1, -80.8, 105.9 , 0 );
setMoveKey( spep_0 -3 + 464, 1, -82.7, 106.7 , 0 );
setMoveKey( spep_0 -3 + 466, 1, -84.4, 107.4 , 0 );
setMoveKey( spep_0 + 464, 1, -84.4, 107.4 , 0 );

setScaleKey( spep_0 -3 + 66, 1, 8.63, 8.63 );
setScaleKey( spep_0 -3 + 68, 1, 5.08, 5.08 );
setScaleKey( spep_0 -3 + 70, 1, 4.55, 4.55 );
setScaleKey( spep_0 -3 + 72, 1, 3.2, 3.2 );
setScaleKey( spep_0 -3 + 74, 1, 3.2, 3.2 );
setScaleKey( spep_0 -3 + 84, 1, 3.2, 3.2 );
setScaleKey( spep_0 -3 + 86, 1, 3.2, 3.2 );
setScaleKey( spep_0 -3 + 88, 1, 2.6, 2.6 );
setScaleKey( spep_0 -3 + 90, 1, 2.42, 2.42 );
setScaleKey( spep_0 -3 + 92, 1, 2.25, 2.25 );
setScaleKey( spep_0 -3 + 94, 1, 2.08, 2.08 );
setScaleKey( spep_0 -3 + 95, 1, 2.08, 2.08 );
setScaleKey( spep_0 -3 + 96, 1, 1.9, 1.9 );
setScaleKey( spep_0 -3 + 98, 1, 1.71, 1.71 );
setScaleKey( spep_0 -3 + 99, 1, 1.71, 1.71 );
setScaleKey( spep_0 -3 + 100, 1, 1.52, 1.52 );
setScaleKey( spep_0 -3 + 101, 1, 1.52, 1.52 );
setScaleKey( spep_0 -3 + 102, 1, 1.25, 1.25 );
setScaleKey( spep_0 -3 + 104, 1, 1.05, 1.05 );
setScaleKey( spep_0 -3 + 106, 1, 0.84, 0.84 );
setScaleKey( spep_0 -3 + 110, 1, 0.84, 0.84 );
setScaleKey( spep_0 -3 + 112, 1, 0.72, 0.72 );
setScaleKey( spep_0 -3 + 114, 1, 0.72, 0.72 );
setScaleKey( spep_0 -3 + 116, 1, 0.51, 0.51 );
setScaleKey( spep_0 -3 + 117, 1, 0.51, 0.51 );
setScaleKey( spep_0 -3 + 118, 1, 0.49, 0.49 );
setScaleKey( spep_0 -3 + 120, 1, 0.47, 0.47 );
setScaleKey( spep_0 -3 + 122, 1, 0.49, 0.49 );
setScaleKey( spep_0 -3 + 126, 1, 0.49, 0.49 );
setScaleKey( spep_0 -3 + 128, 1, 0.47, 0.47 );
setScaleKey( spep_0 -3 + 130, 1, 0.47, 0.47 );
setScaleKey( spep_0 -3 + 131, 1, 0.47, 0.47 );
setScaleKey( spep_0 -3 + 132, 1, 0.44, 0.44 );
setScaleKey( spep_0 -3 + 134, 1, 0.44, 0.44 );
setScaleKey( spep_0 -3 + 136, 1, 0.63, 0.63 );
setScaleKey( spep_0 -3 + 137, 1, 0.63, 0.63 );
setScaleKey( spep_0 -3 + 138, 1, 0.52, 0.52 );
setScaleKey( spep_0 -3 + 140, 1, 0.52, 0.52 );
setScaleKey( spep_0 -3 + 142, 1, 0.44, 0.47 );
setScaleKey( spep_0 -3 + 144, 1, 0.44, 0.47 );
setScaleKey( spep_0 -3 + 145, 1, 0.44, 0.47 );
setScaleKey( spep_0 -3 + 146, 1, 0.44, 0.47 );
setScaleKey( spep_0 -3 + 148, 1, 0.44, 0.47 );
setScaleKey( spep_0 -3 + 150, 1, 0.39, 0.42 );
setScaleKey( spep_0 -3 + 152, 1, 0.44, 0.47 );
setScaleKey( spep_0 -3 + 153, 1, 0.44, 0.47 );
setScaleKey( spep_0 -3 + 154, 1, 0.49, 0.53 );
setScaleKey( spep_0 -3 + 164, 1, 0.49, 0.53 );
setScaleKey( spep_0 -3 + 166, 1, 0.39, 0.41 );
setScaleKey( spep_0 -3 + 168, 1, 0.3, 0.32 );
setScaleKey( spep_0 -3 + 170, 1, 0.3, 0.32 );
setScaleKey( spep_0 -3 + 171, 1, 0.3, 0.32 );
setScaleKey( spep_0 -3 + 172, 1, 0.37, 0.39 );
setScaleKey( spep_0 -3 + 174, 1, 0.43, 0.46 );
setScaleKey( spep_0 -3 + 175, 1, 0.43, 0.46 );
setScaleKey( spep_0 -3 + 176, 1, 0.96, 1.02 );
setScaleKey( spep_0 -3 + 178, 1, 1.22, 1.31 );
setScaleKey( spep_0 -3 + 180, 1, 1.22, 1.31 );
setScaleKey( spep_0 -3 + 182, 1, 2.53, 2.7 );
setScaleKey( spep_0 -3 + 184, 1, 6.28, 6.71 );
setScaleKey( spep_0 -3 + 186, 1, 10.03, 10.71 );
setScaleKey( spep_0 -3 + 188, 1, 13.77, 14.72 );
setScaleKey( spep_0 -3 + 190, 1, 17.52, 18.72 );
setScaleKey( spep_0 -3 + 191, 1, 17.52, 18.72 );
setScaleKey( spep_0 -3 + 192, 1, 6.45, 6.89 );
setScaleKey( spep_0 -3 + 194, 1, 4.88, 5.21 );
setScaleKey( spep_0 -3 + 196, 1, 3.3, 3.52 );
setScaleKey( spep_0 -3 + 197, 1, 3.3, 3.52 );
setScaleKey( spep_0 -3 + 198, 1, 1.73, 1.85 );
setScaleKey( spep_0 -3 + 200, 1, 1.51, 1.61 );
setScaleKey( spep_0 -3 + 202, 1, 1.32, 1.41 );
setScaleKey( spep_0 -3 + 204, 1, 1.32, 1.41 );
setScaleKey( spep_0 -3 + 206, 1, 1.03, 1.11 );
setScaleKey( spep_0 -3 + 208, 1, 1.03, 1.11 );
setScaleKey( spep_0 -3 + 218, 1, 0.94, 1.01 );
setScaleKey( spep_0 -3 + 219, 1, 0.94, 1.01 );
setScaleKey( spep_0 -3 + 220, 1, 0.93, 0.99 );
setScaleKey( spep_0 -3 + 222, 1, 0.93, 0.99 );
setScaleKey( spep_0 -3 + 224, 1, 0.68, 0.73 );
setScaleKey( spep_0 -3 + 226, 1, 0.56, 0.6 );
setScaleKey( spep_0 -3 + 228, 1, 0.53, 0.56 );
setScaleKey( spep_0 -3 + 230, 1, 0.49, 0.53 );
setScaleKey( spep_0 -3 + 232, 1, 0.46, 0.49 );
setScaleKey( spep_0 -3 + 234, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 236, 1, 0.39, 0.42 );
setScaleKey( spep_0 -3 + 238, 1, 0.36, 0.38 );
setScaleKey( spep_0 -3 + 240, 1, 0.32, 0.34 );
setScaleKey( spep_0 -3 + 242, 1, 0.29, 0.3 );
setScaleKey( spep_0 -3 + 244, 1, 0.25, 0.27 );
setScaleKey( spep_0 -3 + 246, 1, 0.22, 0.23 );
setScaleKey( spep_0 -3 + 247, 1, 0.22, 0.23 );
setScaleKey( spep_0 -3 + 248, 1, 0.22, 0.24 );
setScaleKey( spep_0 -3 + 250, 1, 0.22, 0.24 );
setScaleKey( spep_0 -3 + 252, 1, 0.25, 0.27 );
setScaleKey( spep_0 -3 + 254, 1, 0.31, 0.33 );
setScaleKey( spep_0 -3 + 256, 1, 0.43, 0.46 );
setScaleKey( spep_0 -3 + 258, 1, 0.43, 0.46 );
setScaleKey( spep_0 -3 + 268, 1, 0.91, 0.97 );
setScaleKey( spep_0 -3 + 269, 1, 0.91, 0.97 );
setScaleKey( spep_0 -3 + 270, 1, 0.47, 0.5 );
setScaleKey( spep_0 -3 + 272, 1, 0.64, 0.69 );
setScaleKey( spep_0 -3 + 274, 1, 0.79, 0.84 );
setScaleKey( spep_0 -3 + 276, 1, 0.91, 0.97 );
setScaleKey( spep_0 -3 + 278, 1, 1.01, 1.08 );
setScaleKey( spep_0 -3 + 280, 1, 1.09, 1.17 );
setScaleKey( spep_0 -3 + 282, 1, 1.15, 1.23 );
setScaleKey( spep_0 -3 + 284, 1, 1.2, 1.28 );
setScaleKey( spep_0 -3 + 286, 1, 1.23, 1.32 );
setScaleKey( spep_0 -3 + 288, 1, 1.26, 1.34 );
setScaleKey( spep_0 -3 + 290, 1, 1.27, 1.36 );
setScaleKey( spep_0 -3 + 292, 1, 1.28, 1.37 );
setScaleKey( spep_0 -3 + 296, 1, 1.28, 1.37 );
setScaleKey( spep_0 -3 + 298, 1, 0.73, 0.78 );
setScaleKey( spep_0 -3 + 300, 1, 0.43, 0.46 );
setScaleKey( spep_0 -3 + 302, 1, 0.28, 0.29 );
setScaleKey( spep_0 -3 + 303, 1, 0.28, 0.29 );
setScaleKey( spep_0 -3 + 304, 1, 0.45, 0.48 );
setScaleKey( spep_0 -3 + 306, 1, 0.44, 0.47 );
setScaleKey( spep_0 -3 + 308, 1, 0.44, 0.46 );
setScaleKey( spep_0 -3 + 310, 1, 0.43, 0.45 );
setScaleKey( spep_0 -3 + 311, 1, 0.43, 0.45 );
setScaleKey( spep_0 -3 + 312, 1, 0.43, 0.45 );
setScaleKey( spep_0 -3 + 314, 1, 0.43, 0.45 );
setScaleKey( spep_0 -3 + 316, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 317, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 318, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 319, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 320, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 321, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 322, 1, 0.43, 0.45 );
setScaleKey( spep_0 -3 + 323, 1, 0.43, 0.45 );
setScaleKey( spep_0 -3 + 324, 1, 0.43, 0.45 );
setScaleKey( spep_0 -3 + 325, 1, 0.43, 0.45 );
setScaleKey( spep_0 -3 + 326, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 330, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 331, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 332, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 334, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 335, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 336, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 338, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 339, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 340, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 341, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 342, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 346, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 347, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 348, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 353, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 354, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 358, 1, 0.42, 0.45 );
setScaleKey( spep_0 -3 + 422, 1, 3.1, 3.1 );
setScaleKey( spep_0 -3 + 424, 1, 3.1, 3.1 );
setScaleKey( spep_0 -3 + 426, 1, 2.4, 2.4 );
setScaleKey( spep_0 -3 + 427, 1, 2.4, 2.4 );
setScaleKey( spep_0 -3 + 428, 1, 4.99, 4.99 );
setScaleKey( spep_0 -3 + 430, 1, 4.99, 4.99 );
setScaleKey( spep_0 -3 + 432, 1, 4.59, 4.59 );
setScaleKey( spep_0 -3 + 434, 1, 4.59, 4.59 );
setScaleKey( spep_0 -3 + 436, 1, 3.8, 3.8 );
setScaleKey( spep_0 -3 + 440, 1, 3.8, 3.8 );
setScaleKey( spep_0 -3 + 442, 1, 3.72, 3.72 );
setScaleKey( spep_0 -3 + 444, 1, 3.64, 3.64 );
setScaleKey( spep_0 -3 + 446, 1, 3.57, 3.57 );
setScaleKey( spep_0 -3 + 448, 1, 3.51, 3.51 );
setScaleKey( spep_0 -3 + 450, 1, 3.45, 3.45 );
setScaleKey( spep_0 -3 + 452, 1, 3.39, 3.39 );
setScaleKey( spep_0 -3 + 454, 1, 3.35, 3.35 );
setScaleKey( spep_0 -3 + 456, 1, 3.3, 3.3 );
setScaleKey( spep_0 -3 + 458, 1, 3.26, 3.26 );
setScaleKey( spep_0 -3 + 460, 1, 3.23, 3.23 );
setScaleKey( spep_0 -3 + 462, 1, 3.2, 3.2 );
setScaleKey( spep_0 -3 + 464, 1, 3.17, 3.17 );
setScaleKey( spep_0 -3 + 466, 1, 3.14, 3.14 );
setScaleKey( spep_0 -3 + 466, 1, 3.14, 3.14 );
setScaleKey( spep_0 + 464, 1, 3.14, 3.14 );

setRotateKey( spep_0 -3 + 66, 1, 0 );
setRotateKey( spep_0 -3 + 67, 1, 0 );
setRotateKey( spep_0 -3 + 68, 1, 4 );
setRotateKey( spep_0 -3 + 69, 1, 4 );
setRotateKey( spep_0 -3 + 70, 1, 7.2 );
setRotateKey( spep_0 -3 + 72, 1, 8.6 );
setRotateKey( spep_0 -3 + 74, 1, 8.6 );

setRotateKey( spep_0 -3 + 84, 1, -30 );
setRotateKey( spep_0 -3 + 86, 1, -30 );
setRotateKey( spep_0 -3 + 88, 1, -35.8 );
setRotateKey( spep_0 -3 + 90, 1, -39.6 );
setRotateKey( spep_0 -3 + 92, 1, -43.4 );
setRotateKey( spep_0 -3 + 94, 1, -47.2 );
setRotateKey( spep_0 -3 + 95, 1, -47.2 );
setRotateKey( spep_0 -3 + 96, 1, -51 );
setRotateKey( spep_0 -3 + 98, 1, -107.1 );
setRotateKey( spep_0 -3 + 99, 1, -107.1 );
setRotateKey( spep_0 -3 + 100, 1, -163.2 );
setRotateKey( spep_0 -3 + 101, 1, -163.2 );
setRotateKey( spep_0 -3 + 102, 1, -109.4 );
setRotateKey( spep_0 -3 + 106, 1, -109.4 );
setRotateKey( spep_0 -3 + 108, 1, -142.8 );
setRotateKey( spep_0 -3 + 110, 1, -142.8 );
setRotateKey( spep_0 -3 + 112, 1, -135.9 );
setRotateKey( spep_0 -3 + 114, 1, -135.9 );
setRotateKey( spep_0 -3 + 116, 1, -128.8 );
setRotateKey( spep_0 -3 + 117, 1, -128.8 );
setRotateKey( spep_0 -3 + 118, 1, -235.2 );
setRotateKey( spep_0 -3 + 120, 1, -265 );
setRotateKey( spep_0 -3 + 122, 1, -244.9 );
setRotateKey( spep_0 -3 + 124, 1, -320 );
setRotateKey( spep_0 -3 + 126, 1, -320 );
setRotateKey( spep_0 -3 + 128, 1, -353.9 );
setRotateKey( spep_0 -3 + 130, 1, -353.9 );
setRotateKey( spep_0 -3 + 131, 1, -353.9 );
setRotateKey( spep_0 -3 + 132, 1, -429.2 );
setRotateKey( spep_0 -3 + 134, 1, -444 );
setRotateKey( spep_0 -3 + 136, 1, -419.9 );
setRotateKey( spep_0 -3 + 137, 1, -419.9 );
setRotateKey( spep_0 -3 + 138, 1, -488.1 );
setRotateKey( spep_0 -3 + 140, 1, -488.1 );
setRotateKey( spep_0 -3 + 142, 1, -543.8 );
setRotateKey( spep_0 -3 + 144, 1, -543.8 );
setRotateKey( spep_0 -3 + 145, 1, -543.8 );
setRotateKey( spep_0 -3 + 146, 1, -531.8 );
setRotateKey( spep_0 -3 + 148, 1, -566.7 );
setRotateKey( spep_0 -3 + 150, 1, -587.8 );
setRotateKey( spep_0 -3 + 152, 1, -585.2 );
setRotateKey( spep_0 -3 + 153, 1, -585.2 );
setRotateKey( spep_0 -3 + 154, 1, -667.6 );
setRotateKey( spep_0 -3 + 156, 1, -624.2 );
setRotateKey( spep_0 -3 + 158, 1, -560.1 );
setRotateKey( spep_0 -3 + 160, 1, -560.1 );
setRotateKey( spep_0 -3 + 162, 1, -518.1 );
setRotateKey( spep_0 -3 + 164, 1, -518.1 );
setRotateKey( spep_0 -3 + 166, 1, -508.9 );
setRotateKey( spep_0 -3 + 168, 1, -497.9 );
setRotateKey( spep_0 -3 + 170, 1, -442.9 );
setRotateKey( spep_0 -3 + 171, 1, -442.9 );
setRotateKey( spep_0 -3 + 172, 1, -387 );
setRotateKey( spep_0 -3 + 174, 1, -433.6 );
setRotateKey( spep_0 -3 + 175, 1, -433.6 );
setRotateKey( spep_0 -3 + 176, 1, -408.3 );
setRotateKey( spep_0 -3 + 178, 1, -439.5 );
setRotateKey( spep_0 -3 + 180, 1, -439.5 );
setRotateKey( spep_0 -3 + 182, 1, -448 );
setRotateKey( spep_0 -3 + 184, 1, -452.3 );
setRotateKey( spep_0 -3 + 186, 1, -456.5 );
setRotateKey( spep_0 -3 + 188, 1, -460.8 );
setRotateKey( spep_0 -3 + 190, 1, -465 );
setRotateKey( spep_0 -3 + 191, 1, -465 );
setRotateKey( spep_0 -3 + 192, 1, -412 );
setRotateKey( spep_0 -3 + 194, 1, -416.3 );
setRotateKey( spep_0 -3 + 196, 1, -420.6 );
setRotateKey( spep_0 -3 + 197, 1, -420.6 );
setRotateKey( spep_0 -3 + 198, 1, -402.7 );
setRotateKey( spep_0 -3 + 200, 1, -402.6 );
setRotateKey( spep_0 -3 + 202, 1, -388 );
setRotateKey( spep_0 -3 + 204, 1, -388 );
setRotateKey( spep_0 -3 + 206, 1, -386.9 );
setRotateKey( spep_0 -3 + 208, 1, -386.9 );
setRotateKey( spep_0 -3 + 218, 1, -316.3 );
setRotateKey( spep_0 -3 + 219, 1, -316.3 );
setRotateKey( spep_0 -3 + 220, 1, -401.9 );
setRotateKey( spep_0 -3 + 222, 1, -401.9 );
setRotateKey( spep_0 -3 + 224, 1, -393.8 );
setRotateKey( spep_0 -3 + 226, 1, -383.1 );
setRotateKey( spep_0 -3 + 228, 1, -383.2 );
setRotateKey( spep_0 -3 + 230, 1, -383.3 );
setRotateKey( spep_0 -3 + 232, 1, -383.4 );
setRotateKey( spep_0 -3 + 234, 1, -383.5 );
setRotateKey( spep_0 -3 + 236, 1, -383.6 );
setRotateKey( spep_0 -3 + 238, 1, -383.7 );
setRotateKey( spep_0 -3 + 240, 1, -383.8 );
setRotateKey( spep_0 -3 + 242, 1, -383.9 );
setRotateKey( spep_0 -3 + 244, 1, -384 );
setRotateKey( spep_0 -3 + 246, 1, -384.1 );
setRotateKey( spep_0 -3 + 247, 1, -384.1 );
setRotateKey( spep_0 -3 + 248, 1, -408.1 );
setRotateKey( spep_0 -3 + 250, 1, -408.4 );
setRotateKey( spep_0 -3 + 252, 1, -410.2 );
setRotateKey( spep_0 -3 + 254, 1, -415.1 );
setRotateKey( spep_0 -3 + 256, 1, -424.8 );
setRotateKey( spep_0 -3 + 258, 1, -424.8 );
setRotateKey( spep_0 -3 + 268, 1, -350.9 );
setRotateKey( spep_0 -3 + 269, 1, -350.9 );
setRotateKey( spep_0 -3 + 270, 1, -348.1 );
setRotateKey( spep_0 -3 + 272, 1, -347.5 );
setRotateKey( spep_0 -3 + 274, 1, -347 );
setRotateKey( spep_0 -3 + 276, 1, -346.5 );
setRotateKey( spep_0 -3 + 278, 1, -346.2 );
setRotateKey( spep_0 -3 + 280, 1, -345.9 );
setRotateKey( spep_0 -3 + 282, 1, -345.7 );
setRotateKey( spep_0 -3 + 284, 1, -345.5 );
setRotateKey( spep_0 -3 + 286, 1, -345.4 );
setRotateKey( spep_0 -3 + 288, 1, -345.3 );
setRotateKey( spep_0 -3 + 290, 1, -345.2 );
setRotateKey( spep_0 -3 + 296, 1, -345.2 );
setRotateKey( spep_0 -3 + 298, 1, -344.3 );
setRotateKey( spep_0 -3 + 300, 1, -341.3 );
setRotateKey( spep_0 -3 + 302, 1, -334.4 );
setRotateKey( spep_0 -3 + 303, 1, -334.4 );
setRotateKey( spep_0 -3 + 304, 1, -359.5 );
setRotateKey( spep_0 -3 + 306, 1, -360.9 );
setRotateKey( spep_0 -3 + 308, 1, -362.3 );
setRotateKey( spep_0 -3 + 310, 1, -363.7 );
setRotateKey( spep_0 -3 + 311, 1, -363.7 );
setRotateKey( spep_0 -3 + 312, 1, -336.7 );
setRotateKey( spep_0 -3 + 314, 1, -350.9 );
setRotateKey( spep_0 -3 + 316, 1, -365 );
setRotateKey( spep_0 -3 + 317, 1, -365 );
setRotateKey( spep_0 -3 + 318, 1, -379.2 );
setRotateKey( spep_0 -3 + 319, 1, -379.2 );
setRotateKey( spep_0 -3 + 320, 1, -337.2 );
setRotateKey( spep_0 -3 + 321, 1, -337.2 );
setRotateKey( spep_0 -3 + 322, 1, -357.9 );
setRotateKey( spep_0 -3 + 323, 1, -357.9 );
setRotateKey( spep_0 -3 + 324, 1, -342.9 );
setRotateKey( spep_0 -3 + 325, 1, -342.9 );
setRotateKey( spep_0 -3 + 326, 1, -323.7 );
setRotateKey( spep_0 -3 + 328, 1, -349.9 );
setRotateKey( spep_0 -3 + 330, 1, -357.9 );
setRotateKey( spep_0 -3 + 331, 1, -357.9 );
setRotateKey( spep_0 -3 + 332, 1, -390.4 );
setRotateKey( spep_0 -3 + 334, 1, -390.4 );
setRotateKey( spep_0 -3 + 335, 1, -390.4 );
setRotateKey( spep_0 -3 + 336, 1, -340.5 );
setRotateKey( spep_0 -3 + 338, 1, -340.5 );
setRotateKey( spep_0 -3 + 339, 1, -340.5 );
setRotateKey( spep_0 -3 + 340, 1, -382.5 );
setRotateKey( spep_0 -3 + 341, 1, -382.5 );
setRotateKey( spep_0 -3 + 342, 1, -313.5 );
setRotateKey( spep_0 -3 + 344, 1, -313.5 );
setRotateKey( spep_0 -3 + 346, 1, -337.7 );
setRotateKey( spep_0 -3 + 347, 1, -337.7 );
setRotateKey( spep_0 -3 + 348, 1, -396.5 );
setRotateKey( spep_0 -3 + 353, 1, -396.5 );
setRotateKey( spep_0 -3 + 354, 1, -340.7 );
setRotateKey( spep_0 -3 + 356, 1, -351.2 );
setRotateKey( spep_0 -3 + 358, 1, -351.2 );
setRotateKey( spep_0 -3 + 422, 1, -246 );
setRotateKey( spep_0 -3 + 427, 1, -246 );
setRotateKey( spep_0 -3 + 428, 1, -66 );
setRotateKey( spep_0 + 464, 1, -66 );

-- ** 音 ** --
--頭突き
playSe( spep_0 + 61, 1110 );
setSeVolume( spep_0 + 61, 1110, 110 );

--[[
SE4 = playSe( spep_0 + 61, 1190 );
stopSe( spep_0 + 81, SE4, 57 );
playSe( spep_0 + 61, 1190 );
setSeVolume( spep_0 + 61, 1190, 126 );
setSeVolume( spep_0 + 70, 1190, 126 );
setSeVolume( spep_0 + 74, 1190, 118 );
setSeVolume( spep_0 + 78, 1190, 104 );
setSeVolume( spep_0 + 84, 1190, 100 );
]]
--v4.11調整
SE4 = playSe( spep_0 + 61, 1190 );
stopSe( spep_0 + 81, SE4, 57 );
playSe( spep_0 + 61, 1190 );
setSeVolume( spep_0 + 61, 1190, 106 );
setSeVolume( spep_0 + 70, 1190, 106 );
setSeVolume( spep_0 + 74, 1190, 100 );
setSeVolume( spep_0 + 78, 1190, 100 );
setSeVolume( spep_0 + 84, 1190, 100 );

playSe( spep_0 + 68, 1169 );

--敵が飛んでいく
--[[
SE5 = playSe( spep_0 + 68, 1183 );
setSeVolume( spep_0 + 68, 1183, 136 );
stopSe( spep_0 + 211, SE5, 0 );

SE6 = playSe( spep_0 + 68, 1121 );
setSeVolume( spep_0 + 68, 1121, 50 );
stopSe( spep_0 + 211, SE6, 0 );
]]
--v4.11調整
SE5 = playSe( spep_0 + 68, 1183 );
setSeVolume( spep_0 + 68, 1183, 136 );
stopSe( spep_0 + 211, SE5, 10 );

SE6 = playSe( spep_0 + 68, 1121 );
setSeVolume( spep_0 + 68, 1121, 50 );
stopSe( spep_0 + 211, SE6, 10 );

--打撃１
playSe( spep_0 + 211, 1009 );
setSeVolume( spep_0 + 211, 1009, 110 );

SE7 = playSe( spep_0 + 211, 1182 );
setSeVolume( spep_0 + 211, 1182, 188 );
setSeVolume( spep_0 + 214, 1182, 188 );
setSeVolume( spep_0 + 215, 1182, 136 );
setSeVolume( spep_0 + 216, 1182, 110 );
setSeVolume( spep_0 + 231, 1182, 110 );
setSeVolume( spep_0 + 234, 1182, 98 );
setSeVolume( spep_0 + 238, 1182, 76 );
setSeVolume( spep_0 + 242, 1182, 52 );
setSeVolume( spep_0 + 246, 1182, 38 );
setSeVolume( spep_0 + 258, 1182, 20 );
setSeVolume( spep_0 + 251, 1182, 0 );
stopSe( spep_0 + 251, SE7, 0 );

playSe( spep_0 + 211, 1047 );
setSeVolume( spep_0 + 211, 1047, 110 );

--敵に近づく
SE8 = playSe( spep_0 + 244, 44 );
setSeVolume( spep_0 + 244, 44, 110 );
stopSe( spep_0 + 275, SE8, 0 );

playSe( spep_0 + 244, 1003 );
setSeVolume( spep_0 + 244, 1003, 110 );

--打撃２
playSe( spep_0 + 260, 1009 );
setSeVolume( spep_0 + 260, 1009, 110 );

SE9 = playSe( spep_0 + 260, 1182 );
setSeVolume( spep_0 + 260, 1182, 188 );
setSeVolume( spep_0 + 263, 1182, 188 );
setSeVolume( spep_0 + 264, 1182, 146 );
setSeVolume( spep_0 + 265, 1182, 110 );
setSeVolume( spep_0 + 280, 1182, 110 );
setSeVolume( spep_0 + 284, 1182, 92 );
setSeVolume( spep_0 + 288, 1182, 64 );
setSeVolume( spep_0 + 292, 1182, 36 );
setSeVolume( spep_0 + 296, 1182, 18 );
setSeVolume( spep_0 + 300, 1182, 0 );
stopSe( spep_0 + 300, SE9, 0 );

playSe( spep_0 + 260, 1047 );
setSeVolume( spep_0 + 260, 1047, 110 );

--ラッシュ
playSe( spep_0 + 301, 1003 );
setSeVolume( spep_0 + 301, 1003, 110 );
playSe( spep_0 + 309, 1110 );
setSeVolume( spep_0 + 309, 1110, 110 );
playSe( spep_0 + 319, 1009 );
playSe( spep_0 + 319, 1110 );
setSeVolume( spep_0 + 319, 1110, 73 );
playSe( spep_0 + 325, 1189 );
setSeVolume( spep_0 + 325, 1189, 110 );
playSe( spep_0 + 330, 1010 );
setSeVolume( spep_0 + 330, 1010, 110 );
playSe( spep_0 + 330, 1110 );
setSeVolume( spep_0 + 330, 1110, 89 );
playSe( spep_0 + 340, 1110 );
setSeVolume( spep_0 + 340, 1110, 89 );
playSe( spep_0 + 347, 1010 );
setSeVolume( spep_0 + 347, 1010, 73 );
playSe( spep_0 + 347, 1110 );
setSeVolume( spep_0 + 347, 1110, 110 );

--アッパー
playSe( spep_0 + 405, 1004 );
setSeVolume( spep_0 + 405, 1004, 110 );

SE10 = playSe( spep_0 + 409, 1116 );
setSeVolume( spep_0 + 409, 1116, 110 );
setSeVolume( spep_0 + 425, 1116, 100 );
setSeVolume( spep_0 + 428, 1116, 87 );
setSeVolume( spep_0 + 432, 1116, 46 );
setSeVolume( spep_0 + 436, 1116, 18 );
setSeVolume( spep_0 + 439, 1116, 0 );
stopSe( spep_0 + 439, SE10, 0 );

SE11 = playSe( spep_0 + 421, 1182 );
setSeVolume( spep_0 + 421, 1182, 136 );
setSeVolume( spep_0 + 431, 1182, 136 );
setSeVolume( spep_0 + 436, 1182, 100 );
setSeVolume( spep_0 + 440, 1182, 68 );
setSeVolume( spep_0 + 442, 1182, 12 );
setSeVolume( spep_0 + 445, 1182, 0 );
stopSe( spep_0 + 445, SE11, 0 );

playSe( spep_0 + 421, 1190 );
setSeVolume( spep_0 + 421, 1190, 110 );
playSe( spep_0 + 421, 1156 );
setSeVolume( spep_0 + 421, 1156, 110 );

--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

-- ** 次の準備 ** --
spep_1 = spep_0 + 464;

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

--エルボー
SE12 = playSe( spep_1 + 74, 1173 );
setSeVolume( spep_1 + 74, 1173, 0 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;

------------------------------------------------------
-- 肘打ち〜回転キックで蹴り落とす(354F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --肘打ち〜回転キックで蹴り落とす(ef_003)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 354, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 354, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 354, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 354, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --肘打ち〜回転キックで蹴り落とす(ef_004)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 354, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 354, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 354, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 354, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 118, 1, 0 );
setDisp( spep_2 -3 + 130, 1, 1 );
setDisp( spep_2 -3 + 214, 1, 0 );
changeAnime( spep_2 + 0, 1, 107 );
changeAnime( spep_2 -3 + 60, 1, 8 );
changeAnime( spep_2 -3 + 116, 1, 107 );
changeAnime( spep_2 -3 + 184, 1, 5 );

setMoveKey( spep_2 + 0, 1, 180, 177.3 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 180, 177.3 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 313.3, 334.6 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 313.3, 334.6 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 417.2, 442.5 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 357.9, 424.4 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 394.6, 473 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 394.6, 471.6 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 376.6, 424.9 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 336.6, 440.3 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 418, 449 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 409.2, 429 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 353.9, 404.3 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 348.9, 414.6 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 377.9, 449 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 397.9, 445.7 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 373.9, 417 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 371.3, 456.3 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 369.2, 431.8 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 387.9, 439.7 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 387.6, 442 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 371.2, 426.4 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 374.3, 432.1 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 381.5, 435.9 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 388.6, 417.7 , 0 );
setMoveKey( spep_2 -3 + 59, 1, 388.6, 417.7 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 82.2, 47.4 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 81.9, 49.4 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 81.6, 51.4 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 81.3, 53.3 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 81, 55.3 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 80.7, 57.3 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 80.4, 59.3 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 80.1, 61.2 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 79.8, 63.2 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 79.5, 65.1 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 79.2, 67.1 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 78.9, 69.1 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 78.6, 71 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 78.3, 73 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 78, 74.9 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 77.7, 76.9 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 77.4, 78.8 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 77.1, 80.7 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 76.8, 82.7 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 76.5, 84.6 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 76.2, 86.5 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 75.9, 88.5 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 75.6, 90.4 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 75.3, 92.3 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 74.9, 94.2 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 74.6, 96.2 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 74.3, 98.1 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 74, 100 , 0 );
setMoveKey( spep_2 -3 + 115, 1, 74, 100 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 95.9, 29.1 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 95.9, 29.1 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 127.5, -43.4 , 0 );
setMoveKey( spep_2 -3 + 131, 1, 127.5, -43.4 , 0 );
setMoveKey( spep_2 -3 + 132, 1, -336.9, -226.8 , 0 );
setMoveKey( spep_2 -3 + 134, 1, -307.9, -257.8 , 0 );
setMoveKey( spep_2 -3 + 136, 1, -307.9, -257.8 , 0 );
setMoveKey( spep_2 -3 + 138, 1, -315.9, -240.8 , 0 );
setMoveKey( spep_2 -3 + 140, 1, -323.9, -208.8 , 0 );
setMoveKey( spep_2 -3 + 142, 1, -295.9, -227.8 , 0 );
setMoveKey( spep_2 -3 + 144, 1, -324.9, -200.8 , 0 );
setMoveKey( spep_2 -3 + 146, 1, -368.9, -162.8 , 0 );
setMoveKey( spep_2 -3 + 148, 1, -368.9, -162.8 , 0 );
setMoveKey( spep_2 -3 + 150, 1, -328.9, -192.8 , 0 );
setMoveKey( spep_2 -3 + 152, 1, -312.9, -197.8 , 0 );
setMoveKey( spep_2 -3 + 154, 1, -314.9, -204.8 , 0 );
setMoveKey( spep_2 -3 + 156, 1, -285.9, -267.8 , 0 );
setMoveKey( spep_2 -3 + 158, 1, -285.9, -267.8 , 0 );
setMoveKey( spep_2 -3 + 160, 1, -299.9, -260.8 , 0 );
setMoveKey( spep_2 -3 + 162, 1, -314.9, -245.8 , 0 );
setMoveKey( spep_2 -3 + 164, 1, -283.9, -266.8 , 0 );
setMoveKey( spep_2 -3 + 166, 1, -319.9, -219.8 , 0 );
setMoveKey( spep_2 -3 + 168, 1, -336.9, -179.8 , 0 );
setMoveKey( spep_2 -3 + 170, 1, -300.9, -226.8 , 0 );
setMoveKey( spep_2 -3 + 172, 1, -308.9, -235.8 , 0 );
setMoveKey( spep_2 -3 + 174, 1, -308.9, -213.8 , 0 );
setMoveKey( spep_2 -3 + 176, 1, -329.9, -202.8 , 0 );
setMoveKey( spep_2 -3 + 178, 1, -308.9, -215.8 , 0 );
setMoveKey( spep_2 -3 + 180, 1, -270.9, -264.8 , 0 );
setMoveKey( spep_2 -3 + 182, 1, -317.9, -240.8 , 0 );
setMoveKey( spep_2 -3 + 183, 1, -317.9, -240.8 , 0 );
setMoveKey( spep_2 -3 + 184, 1, -447.3, 466.2 , 0 );
setMoveKey( spep_2 -3 + 186, 1, -122.9, 192.7 , 0 );
setMoveKey( spep_2 -3 + 188, 1, -2.6, 91.3 , 0 );
setMoveKey( spep_2 -3 + 190, 1, 50.4, 46.7 , 0 );
setMoveKey( spep_2 -3 + 192, 1, 78.7, 22.7 , 0 );
setMoveKey( spep_2 -3 + 194, 1, 95.7, 8.4 , 0 );
setMoveKey( spep_2 -3 + 196, 1, 106.4, -0.6 , 0 );
setMoveKey( spep_2 -3 + 198, 1, 113.6, -6.7 , 0 );
setMoveKey( spep_2 -3 + 200, 1, 118.6, -10.9 , 0 );
setMoveKey( spep_2 -3 + 202, 1, 122.2, -13.9 , 0 );
setMoveKey( spep_2 -3 + 204, 1, 124.9, -16.2 , 0 );
setMoveKey( spep_2 -3 + 206, 1, 127.1, -18.1 , 0 );
setMoveKey( spep_2 -3 + 208, 1, 129, -19.6 , 0 );
setMoveKey( spep_2 -3 + 210, 1, 130.7, -21.1 , 0 );
setMoveKey( spep_2 -3 + 212, 1, 132.4, -22.5 , 0 );
setMoveKey( spep_2 -3 + 214, 1, 133.8, -23.7 , 0 );

setScaleKey( spep_2 + 0, 1, 4.73, 4.73 );
setScaleKey( spep_2 -3 + 58, 1, 4.73, 4.73 );
setScaleKey( spep_2 -3 + 59, 1, 4.73, 4.73 );
setScaleKey( spep_2 -3 + 60, 1, 2.24, 2.24 );
setScaleKey( spep_2 -3 + 64, 1, 2.24, 2.24 );
setScaleKey( spep_2 -3 + 66, 1, 2.23, 2.23 );
setScaleKey( spep_2 -3 + 72, 1, 2.23, 2.23 );
setScaleKey( spep_2 -3 + 74, 1, 2.22, 2.22 );
setScaleKey( spep_2 -3 + 82, 1, 2.22, 2.22 );
setScaleKey( spep_2 -3 + 84, 1, 2.21, 2.21 );
setScaleKey( spep_2 -3 + 90, 1, 2.21, 2.21 );
setScaleKey( spep_2 -3 + 92, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 100, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 102, 1, 2.19, 2.19 );
setScaleKey( spep_2 -3 + 108, 1, 2.19, 2.19 );
setScaleKey( spep_2 -3 + 110, 1, 2.18, 2.18 );
setScaleKey( spep_2 -3 + 115, 1, 2.18, 2.18 );
setScaleKey( spep_2 -3 + 116, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 118, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 130, 1, 0.62, 0.62 );
setScaleKey( spep_2 -3 + 131, 1, 0.62, 0.62 );
setScaleKey( spep_2 -3 + 132, 1, 3.38, 3.38 );
setScaleKey( spep_2 -3 + 182, 1, 3.38, 3.38 );
setScaleKey( spep_2 -3 + 183, 1, 3.38, 3.38 );
setScaleKey( spep_2 -3 + 184, 1, 8.09, 8.09 );
setScaleKey( spep_2 -3 + 186, 1, 3.59, 3.59 );
setScaleKey( spep_2 -3 + 188, 1, 1.92, 1.92 );
setScaleKey( spep_2 -3 + 190, 1, 1.19, 1.19 );
setScaleKey( spep_2 -3 + 192, 1, 0.8, 0.8 );
setScaleKey( spep_2 -3 + 194, 1, 0.56, 0.56 );
setScaleKey( spep_2 -3 + 196, 1, 0.41, 0.41 );
setScaleKey( spep_2 -3 + 198, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 200, 1, 0.24, 0.24 );
setScaleKey( spep_2 -3 + 202, 1, 0.19, 0.19 );
setScaleKey( spep_2 -3 + 204, 1, 0.16, 0.16 );
setScaleKey( spep_2 -3 + 206, 1, 0.13, 0.13 );
setScaleKey( spep_2 -3 + 208, 1, 0.1, 0.1 );
setScaleKey( spep_2 -3 + 210, 1, 0.08, 0.08 );
setScaleKey( spep_2 -3 + 212, 1, 0.05, 0.05 );
setScaleKey( spep_2 -3 + 214, 1, 0.03, 0.03 );

setRotateKey( spep_2 + 0, 1, -130 );
setRotateKey( spep_2 -3 + 58, 1, -130 );
setRotateKey( spep_2 -3 + 59, 1, -130 );
setRotateKey( spep_2 -3 + 60, 1, -309.7 );
setRotateKey( spep_2 -3 + 62, 1, -309.3 );
setRotateKey( spep_2 -3 + 64, 1, -308.9 );
setRotateKey( spep_2 -3 + 66, 1, -308.5 );
setRotateKey( spep_2 -3 + 68, 1, -308.1 );
setRotateKey( spep_2 -3 + 70, 1, -307.7 );
setRotateKey( spep_2 -3 + 72, 1, -307.3 );
setRotateKey( spep_2 -3 + 74, 1, -307 );
setRotateKey( spep_2 -3 + 76, 1, -306.6 );
setRotateKey( spep_2 -3 + 78, 1, -306.2 );
setRotateKey( spep_2 -3 + 80, 1, -305.8 );
setRotateKey( spep_2 -3 + 82, 1, -305.4 );
setRotateKey( spep_2 -3 + 84, 1, -305 );
setRotateKey( spep_2 -3 + 86, 1, -304.6 );
setRotateKey( spep_2 -3 + 88, 1, -304.2 );
setRotateKey( spep_2 -3 + 90, 1, -303.8 );
setRotateKey( spep_2 -3 + 92, 1, -303.4 );
setRotateKey( spep_2 -3 + 94, 1, -303 );
setRotateKey( spep_2 -3 + 96, 1, -302.6 );
setRotateKey( spep_2 -3 + 98, 1, -302.2 );
setRotateKey( spep_2 -3 + 100, 1, -301.8 );
setRotateKey( spep_2 -3 + 102, 1, -301.5 );
setRotateKey( spep_2 -3 + 104, 1, -301.1 );
setRotateKey( spep_2 -3 + 106, 1, -300.7 );
setRotateKey( spep_2 -3 + 108, 1, -300.3 );
setRotateKey( spep_2 -3 + 110, 1, -299.9 );
setRotateKey( spep_2 -3 + 112, 1, -299.5 );
setRotateKey( spep_2 -3 + 114, 1, -299.1 );
setRotateKey( spep_2 -3 + 115, 1, -299.1 );
setRotateKey( spep_2 -3 + 116, 1, -386.8 );
setRotateKey( spep_2 -3 + 118, 1, -386.8 );
setRotateKey( spep_2 -3 + 130, 1, -420 );
setRotateKey( spep_2 -3 + 131, 1, -420 );
setRotateKey( spep_2 -3 + 132, 1, -413 );
setRotateKey( spep_2 -3 + 182, 1, -413 );
setRotateKey( spep_2 -3 + 183, 1, -413 );
setRotateKey( spep_2 -3 + 184, 1, -582.7 );
setRotateKey( spep_2 -3 + 194, 1, -582.7 );
setRotateKey( spep_2 -3 + 196, 1, -582.6 );
setRotateKey( spep_2 -3 + 214, 1, -582.6 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 354, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--エルボー
setSeVolume( spep_2 + 22, 1173, 10 );
setSeVolume( spep_2 + 24, 1173, 44 );
setSeVolume( spep_2 + 26, 1173, 82 );
setSeVolume( spep_2 + 27, 1173, 110 );
setSeVolume( spep_2 + 69, 1173, 82 );
setSeVolume( spep_2 + 72, 1173, 68 );
setSeVolume( spep_2 + 76, 1173, 55 );
setSeVolume( spep_2 + 82, 1173, 50 );
setSeVolume( spep_2 + 88, 1173, 46 );
setSeVolume( spep_2 + 94, 1173, 38 );
setSeVolume( spep_2 + 100, 1173, 22 );
setSeVolume( spep_2 + 105, 1173, 0 );
stopSe( spep_2 + 105, SE12, 0 );

playSe( spep_2 + 0, 1189 );
setSeVolume( spep_2 + 0, 1189, 110 );

SE13 = playSe( spep_2 + 0, 1109 );
setSeVolume( spep_2 + 0, 1109, 60 );
setSeVolume( spep_2 + 5, 1109, 60 );
setSeVolume( spep_2 + 7, 1109, 54 );
setSeVolume( spep_2 + 10, 1109, 38 );
setSeVolume( spep_2 + 12, 1109, 26 );
setSeVolume( spep_2 + 14, 1109, 14 );
setSeVolume( spep_2 + 17, 1109, 0 );
stopSe( spep_2 + 17, SE13, 0 );

playSe( spep_2 + 1, 1048 );
setSeVolume( spep_2 + 1, 1048, 110 );
playSe( spep_2 + 13, 1190 );
setSeVolume( spep_2 + 13, 1190, 151 );
playSe( spep_2 + 13, 1009 );
setSeVolume( spep_2 + 13, 1009, 110 );

--敵が飛んでいく
SE14 = playSe( spep_2 + 55, 1121 );
setSeVolume( spep_2 + 55, 1121, 0 );
setSeVolume( spep_2 + 177, 1121, 10 );
setSeVolume( spep_2 + 179, 1121, 66 );
setSeVolume( spep_2 + 180, 1121, 132 );
setSeVolume( spep_2 + 181, 1121, 168 );
stopSe( spep_2 + 224, SE14, 0 );

SE15 = playSe( spep_2 + 130, 1183 );
setSeVolume( spep_2 + 130, 1183, 0 );
setSeVolume( spep_2 + 173, 1183, 10 );
setSeVolume( spep_2 + 179, 1183, 66 );
setSeVolume( spep_2 + 180, 1183, 98 );
setSeVolume( spep_2 + 182, 1183, 110 );
stopSe( spep_2 + 220, SE15, 0 );

--回転蹴り
playSe( spep_2 + 102, 1004 );
setSeVolume( spep_2 + 102, 1004, 73 );
playSe( spep_2 + 111, 1048 );
setSeVolume( spep_2 + 111, 1048, 110 );
playSe( spep_2 + 124, 1120 );
setSeVolume( spep_2 + 124, 1120, 122 );

--地面衝突
playSe( spep_2 + 217, 1159 );
setSeVolume( spep_2 + 217, 1159, 110 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 234 );
endPhase( spep_2 + 350 );

end