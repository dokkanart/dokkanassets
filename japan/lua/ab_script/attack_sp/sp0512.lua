--1016040_超サイヤ人ゴッドべジータ_ビック・バン・アタック

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
SP_01=	152720	;--	空気弾発射〜着弾・手前
SP_02=	152721	;--	空気弾発射〜着弾・奥
SP_03=	152722	;--	殴り〜雪山突撃・手前
SP_04=	152723	;--	殴り〜雪山突撃・奥
SP_05=	152724	;--	ナビ構え
SP_06=	152725	;--	発射
SP_07=	152726	;--	気弾迫る・手前
SP_08=	152727	;--	気弾迫る・奥
SP_09=	152728	;--	爆発


--敵側
SP_01x=	152729	;--	空気弾発射〜着弾・手前
SP_02x=	152721	;--	空気弾発射〜着弾・奥
SP_03x=	152730	;--	殴り〜雪山突撃・手前
SP_04x=	152723	;--	殴り〜雪山突撃・奥
SP_05x=	152724	;--	ナビ構え
SP_06x=	152731	;--	発射
SP_07x=	152726	;--	気弾迫る・手前
SP_08x=	152727	;--	気弾迫る・奥
SP_09x=	152728	;--	爆発

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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

--[[setMoveKey(   0,   1,    0, -5000,   0);
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
setRotateKey( 6,   1,  0 );]]

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 空気弾発射〜着弾
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --(前)
Air_f = entryEffectLife( spep_0 + 0, SP_01, 260, 0x100, -1, 0, 0, 0 );  --溜め(ef_001)
setEffMoveKey( spep_0 + 0, Air_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 260, Air_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, Air_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 260, Air_f, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, Air_f, 255 );
setEffAlphaKey( spep_0 + 260, Air_f, 255 );
setEffRotateKey( spep_0 + 0, Air_f, 0 );
setEffRotateKey( spep_0 + 260, Air_f, 0 );

-- ** エフェクト等 ** --
Air_b = entryEffectLife( spep_0 + 0, SP_02, 260, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, Air_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 260, Air_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, Air_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 260, Air_b, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, Air_b, 255 );
setEffAlphaKey( spep_0 + 260, Air_b, 255 );
setEffRotateKey( spep_0 + 0, Air_b, 0 );
setEffRotateKey( spep_0 + 260, Air_b, 0 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_0-4 + 86,  10012, 54, 0x100, -1, 0, 134.6, 335.8 );  --ズオッ
setEffShake( spep_0-4 + 86, ctzuo, 54, 20 );

setEffMoveKey( spep_0-4 + 86, ctzuo, 134.6, 335.8 , 0 );
setEffMoveKey( spep_0-4 + 88, ctzuo, 173.2, 366.6 , 0 );
setEffMoveKey( spep_0-4 + 90, ctzuo, 198.4, 415.1 , 0 );
setEffMoveKey( spep_0-4 + 92, ctzuo, 211.6, 401.9 , 0 );
setEffMoveKey( spep_0-4 + 132, ctzuo, 211.6, 401.9 , 0 );
setEffMoveKey( spep_0-4 + 134, ctzuo, 213.2, 415.1 , 0 );
setEffMoveKey( spep_0-4 + 136, ctzuo, 251.3, 392 , 0 );
setEffMoveKey( spep_0-4 + 138, ctzuo, 243, 415.2 , 0 );
setEffMoveKey( spep_0-4 + 140, ctzuo, 257.9, 415.2 , 0 );

setEffScaleKey( spep_0-4 + 86, ctzuo, 0.28, 0.28 );
setEffScaleKey( spep_0-4 + 88, ctzuo, 1.26, 1.26 );
setEffScaleKey( spep_0-4 + 90, ctzuo, 2.25, 2.25 );
setEffScaleKey( spep_0-4 + 132, ctzuo, 2.25, 2.25 );
setEffScaleKey( spep_0-4 + 134, ctzuo, 3.1, 3.1 );
setEffScaleKey( spep_0-4 + 136, ctzuo, 3.96, 3.96 );
setEffScaleKey( spep_0-4 + 138, ctzuo, 4.81, 4.81 );
setEffScaleKey( spep_0-4 + 140, ctzuo, 5.66, 5.66 );

setEffRotateKey( spep_0-4 + 86, ctzuo, 38 );
setEffRotateKey( spep_0-4 + 88, ctzuo, 32.6 );
setEffRotateKey( spep_0-4 + 90, ctzuo, 27.2 );
setEffRotateKey( spep_0-4 + 140, ctzuo, 27.2 );

setEffAlphaKey( spep_0-4 + 86, ctzuo, 0 );
setEffAlphaKey( spep_0-4 + 87, ctzuo, 255 );
setEffAlphaKey( spep_0-4 + 88, ctzuo, 255 );
setEffAlphaKey( spep_0-4 + 132, ctzuo, 255 );
setEffAlphaKey( spep_0-4 + 134, ctzuo, 191 );
setEffAlphaKey( spep_0-4 + 136, ctzuo, 128 );
setEffAlphaKey( spep_0-4 + 138, ctzuo, 64 );
setEffAlphaKey( spep_0-4 + 140, ctzuo, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 50, 1, 0 );
setDisp( spep_0 + 149, 1, 1 );
setDisp( spep_0 + 150, 1, 1 );
setDisp( spep_0 + 258, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );  --待機後ろ向き
changeAnime( spep_0 + 149, 1, 100 );  --待機正面向き
changeAnime( spep_0 + 150, 1, 100 );  --待機正面向き
changeAnime( spep_0 + 176, 1, 104 );  --ガード
changeAnime( spep_0 + 198-3, 1, 108 );  --ダメージ（吹き飛び）
changeAnime( spep_0 + 236-3, 1, 106 );  --ダメージ

setMoveKey( spep_0 + 0, 1, 167.1, -228.9 , 0 );
setMoveKey( spep_0 + 2, 1, 168.6, -228.9 , 0 );
setMoveKey( spep_0 + 4, 1, 170, -228.9 , 0 );
setMoveKey( spep_0 + 6, 1, 171.4, -228.9 , 0 );
setMoveKey( spep_0 + 8, 1, 172.7, -228.9 , 0 );
setMoveKey( spep_0 + 10, 1, 174, -228.9 , 0 );
setMoveKey( spep_0 + 12, 1, 175.2, -228.9 , 0 );
setMoveKey( spep_0 + 14, 1, 176.3, -228.9 , 0 );
setMoveKey( spep_0 + 16, 1, 177.5, -228.9 , 0 );
setMoveKey( spep_0 + 18, 1, 178.5, -228.9 , 0 );
setMoveKey( spep_0 + 20, 1, 179.6, -228.9 , 0 );
setMoveKey( spep_0 + 22, 1, 180.5, -228.9 , 0 );
setMoveKey( spep_0 + 24, 1, 181.5, -228.9 , 0 );
setMoveKey( spep_0 + 26, 1, 182.3, -228.9 , 0 );
setMoveKey( spep_0 + 28, 1, 183.1, -228.9 , 0 );
setMoveKey( spep_0 + 30, 1, 183.1, -228.9 , 0 );
setMoveKey( spep_0 + 32, 1, 296.6, -410.6 , 0 );
setMoveKey( spep_0 + 34, 1, 398.2, -573.2 , 0 );
setMoveKey( spep_0 + 36, 1, 487.8, -716.6 , 0 );
setMoveKey( spep_0 + 38, 1, 565.5, -840.9 , 0 );
setMoveKey( spep_0 + 40, 1, 631.2, -946.1 , 0 );
setMoveKey( spep_0 + 42, 1, 685, -1032.2 , 0 );
setMoveKey( spep_0 + 44, 1, 726.8, -1099.1 , 0 );
setMoveKey( spep_0 + 46, 1, 756.7, -1146.9 , 0 );
setMoveKey( spep_0 + 48, 1, 774.6, -1175.6 , 0 );
setMoveKey( spep_0 + 50, 1, 780.6, -1185.2 , 0 );
setMoveKey( spep_0 + 149, 1, 104, -6 , 0 );
setMoveKey( spep_0 + 150, 1, 104, -6 , 0 );
setMoveKey( spep_0 + 154, 1, 84, 2.5 , 0 );
setMoveKey( spep_0 + 156, 1, 64, 11.1 , 0 );
setMoveKey( spep_0 + 158, 1, 44, 19.6 , 0 );
setMoveKey( spep_0 + 160, 1, 24, 28.1 , 0 );
setMoveKey( spep_0 + 162, 1, 13, 34.5 , 0 );
setMoveKey( spep_0 + 164, 1, 2.1, 40.8 , 0 );
setMoveKey( spep_0 + 166, 1, -8.9, 47.1 , 0 );
setMoveKey( spep_0 + 168, 1, -19.9, 53.5 , 0 );
setMoveKey( spep_0 + 170, 1, -30.9, 59.8 , 0 );
setMoveKey( spep_0 + 172, 1, -41.8, 66.1 , 0 );
setMoveKey( spep_0 + 174, 1, -52.8, 72.5 , 0 );
setMoveKey( spep_0 + 176, 1, -9.9, 62 , 0 );
setMoveKey( spep_0 + 178, 1, -3.5, 66.1 , 0 );
setMoveKey( spep_0 + 180, 1, 9.8, 55.7 , 0 );
setMoveKey( spep_0 + 182, 1, 6.8, 46.3 , 0 );
setMoveKey( spep_0 + 184, 1, 25.2, 50.8 , 0 );
setMoveKey( spep_0 + 186, 1, 27.9, 55.8 , 0 );
setMoveKey( spep_0 + 188, 1, 36.1, 47.3 , 0 );
setMoveKey( spep_0 + 190, 1, 29.4, 40.1 , 0 );
setMoveKey( spep_0 + 192, 1, 42.7, 45.2 , 0 );
setMoveKey( spep_0 + 194, 1, 41.3, 51.3 , 0 );
setMoveKey( spep_0 + 196, 1, 44.9, 44.5 , 0 );
setMoveKey( spep_0 + 198, 1, 70.5, 57.9 , 0 );
setMoveKey( spep_0 + 200, 1, 76.6, 53.8 , 0 );
setMoveKey( spep_0 + 202, 1, 82.1, 50.1 , 0 );
setMoveKey( spep_0 + 204, 1, 86.9, 46.8 , 0 );
setMoveKey( spep_0 + 206, 1, 91.1, 44 , 0 );
setMoveKey( spep_0 + 208, 1, 94.7, 41.6 , 0 );
setMoveKey( spep_0 + 210, 1, 97.5, 39.6 , 0 );
setMoveKey( spep_0 + 212, 1, 99.8, 38.1 , 0 );
setMoveKey( spep_0 + 214, 1, 101.4, 37 , 0 );
setMoveKey( spep_0 + 216, 1, 102.4, 36.3 , 0 );
setMoveKey( spep_0 + 218, 1, 102.7, 36.1 , 0 );
setMoveKey( spep_0 + 220, 1, 114.9, 29.9 , 0 );
setMoveKey( spep_0 + 222, 1, 125.5, 24.5 , 0 );
setMoveKey( spep_0 + 224, 1, 134.5, 20 , 0 );
setMoveKey( spep_0 + 226, 1, 141.8, 16.3 , 0 );
setMoveKey( spep_0 + 228, 1, 147.5, 13.4 , 0 );
setMoveKey( spep_0 + 230, 1, 151.6, 11.3 , 0 );
setMoveKey( spep_0 + 232, 1, 154, 10.1 , 0 );
setMoveKey( spep_0 + 234, 1, 154.9, 9.7 , 0 );
setMoveKey( spep_0 + 236, 1, 150.5, 23.9 , 0 );
setMoveKey( spep_0 + 238, 1, 158.1, 21.4 , 0 );
setMoveKey( spep_0 + 240, 1, 165.3, 12.8 , 0 );
setMoveKey( spep_0 + 242, 1, 170.3, 10.3 , 0 );
setMoveKey( spep_0 + 244, 1, 177.5, 3.6 , 0 );
setMoveKey( spep_0 + 246, 1, 183, 1.5 , 0 );
setMoveKey( spep_0 + 248, 1, 187.4, -3.7 , 0 );
setMoveKey( spep_0 + 250, 1, 190.8, -5.4 , 0 );
setMoveKey( spep_0 + 252, 1, 194.8, -9.2 , 0 );
setMoveKey( spep_0 + 254, 1, 197.8, -10.3 , 0 );
setMoveKey( spep_0 + 256, 1, 199.7, -12.9 , 0 );
setMoveKey( spep_0 + 258, 1, 201, -13.3 , 0 );

setScaleKey( spep_0 + 0, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 2, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 4, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 6, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 30, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 32, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 34, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 36, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 38, 1, 3.45, 3.45 );
setScaleKey( spep_0 + 40, 1, 3.71, 3.71 );
setScaleKey( spep_0 + 42, 1, 3.92, 3.92 );
setScaleKey( spep_0 + 44, 1, 4.08, 4.08 );
setScaleKey( spep_0 + 46, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 48, 1, 4.27, 4.27 );
setScaleKey( spep_0 + 50, 1, 4.29, 4.29 );
setScaleKey( spep_0 + 148, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 150, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 154, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 156, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 158, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 160, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 162, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 164, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 166, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 168, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 170, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 172, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 174, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 176, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 178, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 180, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 182, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 184, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 186, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 188, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 190, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 192, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 194, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 196, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 198, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 200, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 202, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 204, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 206, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 208, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 210, 1, 1, 1 );
setScaleKey( spep_0 + 212, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 214, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 216, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 218, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 220, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 222, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 224, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 226, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 228, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 230, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 232, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 234, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 236, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 238, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 240, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 242, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 244, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 246, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 248, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 250, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 252, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 254, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 256, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 258, 1, 0.11, 0.11 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 50, 1, 0 );
setRotateKey( spep_0 + 152, 1, 0 );
setRotateKey( spep_0 + 154, 1, 0 );
setRotateKey( spep_0 + 176, 1, 0 );
setRotateKey( spep_0 + 178, 1, 0.8 );
setRotateKey( spep_0 + 180, 1, 1.5 );
setRotateKey( spep_0 + 182, 1, 2.1 );
setRotateKey( spep_0 + 184, 1, 2.7 );
setRotateKey( spep_0 + 186, 1, 3.2 );
setRotateKey( spep_0 + 188, 1, 3.5 );
setRotateKey( spep_0 + 190, 1, 3.8 );
setRotateKey( spep_0 + 192, 1, 4 );
setRotateKey( spep_0 + 194, 1, 4.2 );
setRotateKey( spep_0 + 196, 1, 4.2 );
setRotateKey( spep_0 + 198, 1, 20 );
setRotateKey( spep_0 + 200, 1, 19.5 );
setRotateKey( spep_0 + 202, 1, 19 );
setRotateKey( spep_0 + 204, 1, 18.6 );
setRotateKey( spep_0 + 206, 1, 18.3 );
setRotateKey( spep_0 + 208, 1, 18 );
setRotateKey( spep_0 + 210, 1, 17.7 );
setRotateKey( spep_0 + 212, 1, 17.5 );
setRotateKey( spep_0 + 214, 1, 17.4 );
setRotateKey( spep_0 + 216, 1, 17.3 );
setRotateKey( spep_0 + 218, 1, 17.3 );
setRotateKey( spep_0 + 220, 1, 16.8 );
setRotateKey( spep_0 + 222, 1, 16.4 );
setRotateKey( spep_0 + 224, 1, 16.1 );
setRotateKey( spep_0 + 226, 1, 15.8 );
setRotateKey( spep_0 + 228, 1, 15.6 );
setRotateKey( spep_0 + 230, 1, 15.4 );
setRotateKey( spep_0 + 232, 1, 15.3 );
setRotateKey( spep_0 + 234, 1, 15.3 );
setRotateKey( spep_0 + 236, 1, -6.6 );
setRotateKey( spep_0 + 238, 1, -3.7 );
setRotateKey( spep_0 + 240, 1, -1 );
setRotateKey( spep_0 + 242, 1, 1.4 );
setRotateKey( spep_0 + 244, 1, 3.7 );
setRotateKey( spep_0 + 246, 1, 5.6 );
setRotateKey( spep_0 + 248, 1, 7.4 );
setRotateKey( spep_0 + 250, 1, 8.9 );
setRotateKey( spep_0 + 252, 1, 10.2 );
setRotateKey( spep_0 + 254, 1, 11.2 );
setRotateKey( spep_0 + 256, 1, 12.1 );
setRotateKey( spep_0 + 258, 1, 12.6 );

--SE
playSe( spep_0 + 18, SE_03 );  --気溜め
playSe( spep_0 + 38, SE_03 );  --気溜め
SE1=playSe( spep_0 + 58, 17 );  --気団を貯める
stopSe(spep_0+82,SE1,0);
playSe( spep_0 + 84, 1049 );  --なんか鬱
playSe( spep_0 + 104, 1049 );  --なんか鬱
playSe( spep_0 + 124, 1049 );  --なんか鬱

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 146, 2, 0, 4, fcolor_r, fcolor_g, fcolor_b, 100 );  -- white fade
entryFade( spep_0 + 252, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- 薄いwhite fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 152; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    
    pauseAll( SP_dodge, 67 );
    
    --[[
    -- ** 敵キャラクター ** --
    changeAnime( SP_dodge + 0, 1, 100 );  --待機正面向き
    
    setMoveKey( SP_dodge + 0, 1, 104, -6 , 0 );
    setMoveKey( SP_dodge + 2, 1, 84, 2.5 , 0 );
    setMoveKey( SP_dodge + 4, 1, 64, 11.1 , 0 );
    setMoveKey( SP_dodge + 6, 1, 44, 19.6 , 0 );
    setMoveKey( SP_dodge + 8, 1, 24, 28.1 , 0 );
    setMoveKey( SP_dodge + 10, 1, 13, 34.5 , 0 );
    
    setScaleKey( SP_dodge + 0, 1, 1.25, 1.25 );
    setScaleKey( SP_dodge + 2, 1, 1.31, 1.31 );
    setScaleKey( SP_dodge + 4, 1, 1.36, 1.36 );
    setScaleKey( SP_dodge + 6, 1, 1.42, 1.42 );
    setScaleKey( SP_dodge + 8, 1, 1.48, 1.48 );
    setScaleKey( SP_dodge + 10, 1, 1.49, 1.49 );
    
    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );
    ]]
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
    
    ------------------------------------------------------
    -- 回避しなかった場合
    ------------------------------------------------------




--SE
playSe( spep_0 + 138, 1049 );  --なんか鬱
playSe( spep_0 + 174, 1014 );  --なんか当たる
playSe( spep_0 + 196, 1014 );  --なんか当たる
playSe( spep_0 + 216, 1014 );  --なんか当たる
playSe( spep_0 + 234, 1014 );  --なんか当たる



-- 次の準備
spep_1=spep_0+260;
------------------------------------------------------
-- 空気弾発射〜着弾殴り〜雪山突撃
------------------------------------------------------
-- ** エフェクト等 ** --(前)
hit_f = entryEffectLife( spep_1 + 0, SP_03, 390, 0x100, -1, 0, 0, 0 );  --溜め(ef_001)
setEffMoveKey( spep_1 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 390, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 390, hit_f, 1.0, 1.0 );
setEffAlphaKey( spep_1 + 0, hit_f, 255 );
setEffAlphaKey( spep_1 + 390, hit_f, 255 );
setEffRotateKey( spep_1 + 0, hit_f, 0 );
setEffRotateKey( spep_1 + 390, hit_f, 0 );

-- ** エフェクト等 ** --(前)
hit_b = entryEffectLife( spep_1 + 0, SP_04, 390, 0x80, -1, 0, 0, 0 );  --溜め(ef_001)
setEffMoveKey( spep_1 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 390, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 390, hit_b, 1.0, 1.0 );
setEffAlphaKey( spep_1 + 0, hit_b, 255 );
setEffAlphaKey( spep_1 + 390, hit_b, 255 );
setEffRotateKey( spep_1 + 0, hit_b, 0 );
setEffRotateKey( spep_1 + 390, hit_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 37, 1, 1 );
setDisp( spep_1 + 38, 1, 1 );
setDisp( spep_1 + 388, 1, 0 );

changeAnime( spep_1 + 37, 1, 106 );  --ダメージ
changeAnime( spep_1-3 + 40, 1, 106 );  --ダメージ
changeAnime( spep_1-3 + 62, 1, 105 );  --ダメージ 奥
changeAnime( spep_1-3 + 202, 1, 106 );  --ダメージ
changeAnime( spep_1-3 + 228, 1, 105 );  --ダメージ 奥
changeAnime( spep_1-3 + 310, 1, 8 );  --ダメージ（吹き飛び）

setMoveKey( spep_1-3 + 37, 1, 3.4, 61 , 0 );
setMoveKey( spep_1-3 + 40, 1, 3.4, 61 , 0 );
setMoveKey( spep_1-3 + 42, 1, 3.3, 63.5 , 0 );
setMoveKey( spep_1-3 + 44, 1, 3.7, 62.9 , 0 );
setMoveKey( spep_1-3 + 46, 1, 1.6, 68.2 , 0 );
setMoveKey( spep_1-3 + 48, 1, 4.7, 68.4 , 0 );
setMoveKey( spep_1-3 + 50, 1, 5, 79.7 , 0 );
setMoveKey( spep_1-3 + 52, 1, 6.3, 77.6 , 0 );
setMoveKey( spep_1-3 + 54, 1, -0.3, 94.4 , 0 );
setMoveKey( spep_1-3 + 56, 1, 8.5, 90.6 , 0 );
setMoveKey( spep_1-3 + 58, 1, 10.9, 117.6 , 0 );
setMoveKey( spep_1-3 + 60, 1, 11.4, 107.3 , 0 );
setMoveKey( spep_1-3 + 61, 1, 11.4, 107.3 , 0 );
setMoveKey( spep_1-3 + 62, 1, 76.5, -38.2 , 0 );
setMoveKey( spep_1-3 + 64, 1, 69.7, -6.2 , 0 );
setMoveKey( spep_1-3 + 66, 1, 63, 25.7 , 0 );
setMoveKey( spep_1-3 + 68, 1, 56.2, 57.7 , 0 );
setMoveKey( spep_1-3 + 70, 1, 53.3, 61 , 0 );
setMoveKey( spep_1-3 + 72, 1, 50.4, 64.3 , 0 );
setMoveKey( spep_1-3 + 74, 1, 47.5, 67.5 , 0 );
setMoveKey( spep_1-3 + 76, 1, 44.6, 70.8 , 0 );
setMoveKey( spep_1-3 + 78, 1, 41.7, 74.1 , 0 );
setMoveKey( spep_1-3 + 80, 1, 38.7, 77.4 , 0 );
setMoveKey( spep_1-3 + 82, 1, 35.8, 80.7 , 0 );
setMoveKey( spep_1-3 + 84, 1, 32.9, 84 , 0 );
setMoveKey( spep_1-3 + 86, 1, 30, 87.2 , 0 );
setMoveKey( spep_1-3 + 88, 1, 27.1, 90.5 , 0 );
setMoveKey( spep_1-3 + 90, 1, 24.2, 93.8 , 0 );
setMoveKey( spep_1-3 + 92, 1, 22.4, 95.7 , 0 );
setMoveKey( spep_1-3 + 94, 1, 20.6, 97.6 , 0 );
setMoveKey( spep_1-3 + 96, 1, 18.9, 99.6 , 0 );
setMoveKey( spep_1-3 + 98, 1, 17.1, 101.5 , 0 );
setMoveKey( spep_1-3 + 100, 1, 15.3, 103.4 , 0 );
setMoveKey( spep_1-3 + 102, 1, 13.5, 105.4 , 0 );
setMoveKey( spep_1-3 + 104, 1, 11.8, 107.3 , 0 );
setMoveKey( spep_1-3 + 106, 1, 13.1, 102 , 0 );
setMoveKey( spep_1-3 + 108, 1, 14.4, 96.7 , 0 );
setMoveKey( spep_1-3 + 110, 1, 15.7, 91.4 , 0 );
setMoveKey( spep_1-3 + 112, 1, 15.7, 59.3 , 0 );
setMoveKey( spep_1-3 + 114, 1, 29.9, 55.5 , 0 );
setMoveKey( spep_1-3 + 116, 1, 44.1, 51.7 , 0 );
setMoveKey( spep_1-3 + 118, 1, 58.3, 47.9 , 0 );
setMoveKey( spep_1-3 + 120, 1, 72.5, 44.1 , 0 );
setMoveKey( spep_1-3 + 122, 1, 86.7, 40.2 , 0 );
setMoveKey( spep_1-3 + 124, 1, 100.8, 36.4 , 0 );
setMoveKey( spep_1-3 + 126, 1, 115, 32.6 , 0 );
setMoveKey( spep_1-3 + 128, 1, 96.7, 14.6 , 0 );
setMoveKey( spep_1-3 + 130, 1, 78.4, -3.4 , 0 );
setMoveKey( spep_1-3 + 132, 1, 60, -21.4 , 0 );
setMoveKey( spep_1-3 + 134, 1, 41.7, -39.4 , 0 );
setMoveKey( spep_1-3 + 136, 1, 23.4, -57.4 , 0 );
setMoveKey( spep_1-3 + 138, 1, 5, -75.4 , 0 );
setMoveKey( spep_1-3 + 140, 1, 4.9, -54.2 , 0 );
setMoveKey( spep_1-3 + 142, 1, 4.8, -33.1 , 0 );
setMoveKey( spep_1-3 + 144, 1, 4.7, -12 , 0 );
setMoveKey( spep_1-3 + 146, 1, 4.6, 9.1 , 0 );
setMoveKey( spep_1-3 + 148, 1, 4.5, 30.2 , 0 );
setMoveKey( spep_1-3 + 150, 1, 4.3, 51.3 , 0 );
setMoveKey( spep_1-3 + 152, 1, 4.2, 72.4 , 0 );
setMoveKey( spep_1-3 + 154, 1, 4, 65.9 , 0 );
setMoveKey( spep_1-3 + 156, 1, 3.8, 59.5 , 0 );
setMoveKey( spep_1-3 + 158, 1, 3.6, 53 , 0 );
setMoveKey( spep_1-3 + 160, 1, 3.4, 45 , 0 );
setMoveKey( spep_1-3 + 162, 1, 3.2, 36.9 , 0 );
setMoveKey( spep_1-3 + 164, 1, -2.4, 35.7 , 0 );
setMoveKey( spep_1-3 + 166, 1, -9.4, 34.3 , 0 );
setMoveKey( spep_1-3 + 168, 1, -16.3, 32.8 , 0 );
setMoveKey( spep_1-3 + 170, 1, -23.3, 31.4 , 0 );
setMoveKey( spep_1-3 + 172, 1, -30.3, 30 , 0 );
setMoveKey( spep_1-3 + 174, 1, -37.2, 28.6 , 0 );
setMoveKey( spep_1-3 + 176, 1, -44.2, 27.2 , 0 );
setMoveKey( spep_1-3 + 178, 1, -51.1, 25.7 , 0 );
setMoveKey( spep_1-3 + 180, 1, -58.1, 24.3 , 0 );
setMoveKey( spep_1-3 + 182, 1, -65, 22.8 , 0 );
setMoveKey( spep_1-3 + 184, 1, -71.9, 21.4 , 0 );
setMoveKey( spep_1-3 + 186, 1, -78.9, 19.9 , 0 );
setMoveKey( spep_1-3 + 188, 1, -85.8, 18.5 , 0 );
setMoveKey( spep_1-3 + 190, 1, -92.8, 17 , 0 );
setMoveKey( spep_1-3 + 192, 1, -99.7, 15.6 , 0 );
setMoveKey( spep_1-3 + 194, 1, -106.7, 14.1 , 0 );
setMoveKey( spep_1-3 + 196, 1, -113.6, 12.7 , 0 );
setMoveKey( spep_1-3 + 198, 1, -120.6, 11.2 , 0 );
setMoveKey( spep_1-3 + 200, 1, -127.5, 9.8 , 0 );
setMoveKey( spep_1-3 + 202, 1, -72, 4.9 , 0 );
setMoveKey( spep_1-3 + 204, 1, -49.7, 12.6 , 0 );
setMoveKey( spep_1-3 + 206, 1, -26.2, 12.6 , 0 );
setMoveKey( spep_1-3 + 208, 1, -6, 19.3 , 0 );
setMoveKey( spep_1-3 + 210, 1, 19.7, 20.2 , 0 );
setMoveKey( spep_1-3 + 212, 1, 42, 27.6 , 0 );
setMoveKey( spep_1-3 + 214, 1, 65.5, 27.9 , 0 );
setMoveKey( spep_1-3 + 216, 1, 85.9, 34.5 , 0 );
setMoveKey( spep_1-3 + 218, 1, 111.4, 35.6 , 0 );
setMoveKey( spep_1-3 + 220, 1, 133.8, 42.7 , 0 );
setMoveKey( spep_1-3 + 222, 1, 157.2, 43.3 , 0 );
setMoveKey( spep_1-3 + 224, 1, 177.8, 49.6 , 0 );
setMoveKey( spep_1-3 + 226, 1, 203.1, 50.9 , 0 );
setMoveKey( spep_1-3 + 228, 1, 226, 32.1 , 0 );
setMoveKey( spep_1-3 + 230, 1, 222.8, 25 , 0 );
setMoveKey( spep_1-3 + 232, 1, 219.6, 17.8 , 0 );
setMoveKey( spep_1-3 + 234, 1, 216.4, 10.7 , 0 );
setMoveKey( spep_1-3 + 236, 1, 213.2, 3.6 , 0 );
setMoveKey( spep_1-3 + 238, 1, 209.9, -3.6 , 0 );
setMoveKey( spep_1-3 + 240, 1, 190, 15.6 , 0 );
setMoveKey( spep_1-3 + 242, 1, 171.4, 33.5 , 0 );
setMoveKey( spep_1-3 + 244, 1, 154.1, 50.3 , 0 );
setMoveKey( spep_1-3 + 246, 1, 137.9, 65.9 , 0 );
setMoveKey( spep_1-3 + 248, 1, 123, 80.3 , 0 );
setMoveKey( spep_1-3 + 250, 1, 109.4, 93.5 , 0 );
setMoveKey( spep_1-3 + 252, 1, 96.9, 105.4 , 0 );
setMoveKey( spep_1-3 + 254, 1, 85.8, 116.2 , 0 );
setMoveKey( spep_1-3 + 256, 1, 75.8, 125.8 , 0 );
setMoveKey( spep_1-3 + 258, 1, 67.1, 134.2 , 0 );
setMoveKey( spep_1-3 + 260, 1, 59.7, 141.4 , 0 );
setMoveKey( spep_1-3 + 262, 1, 54.7, 138.3 , 0 );
setMoveKey( spep_1-3 + 264, 1, 49.6, 135.2 , 0 );
setMoveKey( spep_1-3 + 266, 1, 44.3, 132 , 0 );
setMoveKey( spep_1-3 + 268, 1, 38.8, 128.6 , 0 );
setMoveKey( spep_1-3 + 270, 1, 33.2, 125.2 , 0 );
setMoveKey( spep_1-3 + 272, 1, 27.4, 121.6 , 0 );
setMoveKey( spep_1-3 + 274, 1, 21.4, 117.9 , 0 );
setMoveKey( spep_1-3 + 276, 1, 18.5, 115.8 , 0 );
setMoveKey( spep_1-3 + 278, 1, 15.4, 113.4 , 0 );
setMoveKey( spep_1-3 + 280, 1, 11.9, 110.8 , 0 );
setMoveKey( spep_1-3 + 282, 1, 8.2, 107.9 , 0 );
setMoveKey( spep_1-3 + 284, 1, 4.1, 104.8 , 0 );
setMoveKey( spep_1-3 + 286, 1, -0.3, 101.4 , 0 );
setMoveKey( spep_1-3 + 288, 1, -5, 97.8 , 0 );
setMoveKey( spep_1-3 + 290, 1, -10, 94 , 0 );
setMoveKey( spep_1-3 + 292, 1, -15.4, 89.9 , 0 );
setMoveKey( spep_1-3 + 294, 1, -21, 85.6 , 0 );
setMoveKey( spep_1-3 + 296, 1, -27, 81.1 , 0 );
setMoveKey( spep_1-3 + 298, 1, -33.3, 76.3 , 0 );
setMoveKey( spep_1-3 + 300, 1, -39.9, 71.3 , 0 );
setMoveKey( spep_1-3 + 302, 1, -46.8, 66 , 0 );
setMoveKey( spep_1-3 + 304, 1, -54, 60.5 , 0 );
setMoveKey( spep_1-3 + 306, 1, -61.5, 54.7 , 0 );
setMoveKey( spep_1-3 + 308, 1, -69.4, 48.7 , 0 );
setMoveKey( spep_1-3 + 310, 1, -71.2, 32.3 , 0 );
setMoveKey( spep_1-3 + 312, 1, -71.3, 36.5 , 0 );
setMoveKey( spep_1-3 + 314, 1, -71.4, 40.6 , 0 );
setMoveKey( spep_1-3 + 316, 1, -71.5, 44.8 , 0 );
setMoveKey( spep_1-3 + 318, 1, -71.6, 48.9 , 0 );
setMoveKey( spep_1-3 + 320, 1, -71.6, 53.1 , 0 );
setMoveKey( spep_1-3 + 322, 1, -71.7, 57.3 , 0 );
setMoveKey( spep_1-3 + 324, 1, -71.8, 61.4 , 0 );
setMoveKey( spep_1-3 + 326, 1, -71.9, 65.6 , 0 );
setMoveKey( spep_1-3 + 328, 1, -72, 69.7 , 0 );
setMoveKey( spep_1-3 + 330, 1, -72, 73.9 , 0 );
setMoveKey( spep_1-3 + 332, 1, -72.1, 78.1 , 0 );
setMoveKey( spep_1-3 + 334, 1, -72.2, 82.2 , 0 );
setMoveKey( spep_1-3 + 336, 1, -72.3, 86.4 , 0 );
setMoveKey( spep_1-3 + 338, 1, -72.4, 90.5 , 0 );
setMoveKey( spep_1-3 + 340, 1, -72.4, 94.7 , 0 );
setMoveKey( spep_1-3 + 342, 1, -72.5, 98.9 , 0 );
setMoveKey( spep_1-3 + 344, 1, -72.6, 103 , 0 );
setMoveKey( spep_1-3 + 346, 1, -72.7, 107.2 , 0 );
setMoveKey( spep_1-3 + 348, 1, -72.8, 111.3 , 0 );
setMoveKey( spep_1-3 + 350, 1, -72.8, 115.5 , 0 );
setMoveKey( spep_1 + 388, 1, -72.8, 115.5 , 0 );

setScaleKey( spep_1-3 + 37, 1, 0.24, 0.24 );
setScaleKey( spep_1-3 + 40, 1, 0.24, 0.24 );
setScaleKey( spep_1-3 + 42, 1, 0.27, 0.27 );
setScaleKey( spep_1-3 + 44, 1, 0.36, 0.36 );
setScaleKey( spep_1-3 + 46, 1, 0.51, 0.51 );
setScaleKey( spep_1-3 + 48, 1, 0.72, 0.72 );
setScaleKey( spep_1-3 + 50, 1, 0.99, 0.99 );
setScaleKey( spep_1-3 + 52, 1, 1.32, 1.32 );
setScaleKey( spep_1-3 + 54, 1, 1.7, 1.7 );
setScaleKey( spep_1-3 + 56, 1, 2.15, 2.15 );
setScaleKey( spep_1-3 + 58, 1, 2.65, 2.65 );
setScaleKey( spep_1-3 + 60, 1, 3.22, 3.22 );
setScaleKey( spep_1-3 + 61, 1, 3.22, 3.22 );
setScaleKey( spep_1-3 + 62, 1, 5.2, 5.2 );
setScaleKey( spep_1-3 + 64, 1, 4.31, 4.31 );
setScaleKey( spep_1-3 + 66, 1, 3.41, 3.41 );
setScaleKey( spep_1-3 + 68, 1, 2.52, 2.52 );
setScaleKey( spep_1-3 + 70, 1, 2.45, 2.45 );
setScaleKey( spep_1-3 + 72, 1, 2.38, 2.38 );
setScaleKey( spep_1-3 + 74, 1, 2.32, 2.32 );
setScaleKey( spep_1-3 + 76, 1, 2.25, 2.25 );
setScaleKey( spep_1-3 + 78, 1, 2.18, 2.18 );
setScaleKey( spep_1-3 + 80, 1, 2.11, 2.11 );
setScaleKey( spep_1-3 + 82, 1, 2.04, 2.04 );
setScaleKey( spep_1-3 + 84, 1, 1.97, 1.97 );
setScaleKey( spep_1-3 + 86, 1, 1.91, 1.91 );
setScaleKey( spep_1-3 + 88, 1, 1.84, 1.84 );
setScaleKey( spep_1-3 + 90, 1, 1.77, 1.77 );
setScaleKey( spep_1-3 + 92, 1, 1.69, 1.69 );
setScaleKey( spep_1-3 + 94, 1, 1.6, 1.6 );
setScaleKey( spep_1-3 + 96, 1, 1.52, 1.52 );
setScaleKey( spep_1-3 + 98, 1, 1.44, 1.44 );
setScaleKey( spep_1-3 + 100, 1, 1.36, 1.36 );
setScaleKey( spep_1-3 + 102, 1, 1.27, 1.27 );
setScaleKey( spep_1-3 + 104, 1, 1.19, 1.19 );
setScaleKey( spep_1-3 + 106, 1, 1.21, 1.21 );
setScaleKey( spep_1-3 + 108, 1, 1.23, 1.23 );
setScaleKey( spep_1-3 + 110, 1, 1.25, 1.25 );
setScaleKey( spep_1-3 + 112, 1, 1.25, 1.25 );
setScaleKey( spep_1-3 + 114, 1, 1.29, 1.29 );
setScaleKey( spep_1-3 + 116, 1, 1.34, 1.34 );
setScaleKey( spep_1-3 + 118, 1, 1.38, 1.38 );
setScaleKey( spep_1-3 + 120, 1, 1.43, 1.43 );
setScaleKey( spep_1-3 + 122, 1, 1.47, 1.47 );
setScaleKey( spep_1-3 + 124, 1, 1.52, 1.52 );
setScaleKey( spep_1-3 + 126, 1, 1.56, 1.56 );
setScaleKey( spep_1-3 + 128, 1, 1.52, 1.52 );
setScaleKey( spep_1-3 + 130, 1, 1.48, 1.48 );
setScaleKey( spep_1-3 + 132, 1, 1.45, 1.45 );
setScaleKey( spep_1-3 + 134, 1, 1.41, 1.41 );
setScaleKey( spep_1-3 + 136, 1, 1.37, 1.37 );
setScaleKey( spep_1-3 + 138, 1, 1.33, 1.33 );
setScaleKey( spep_1-3 + 140, 1, 1.28, 1.28 );
setScaleKey( spep_1-3 + 142, 1, 1.24, 1.24 );
setScaleKey( spep_1-3 + 144, 1, 1.19, 1.19 );
setScaleKey( spep_1-3 + 146, 1, 1.15, 1.15 );
setScaleKey( spep_1-3 + 148, 1, 1.1, 1.1 );
setScaleKey( spep_1-3 + 150, 1, 1.06, 1.06 );
setScaleKey( spep_1-3 + 152, 1, 1.01, 1.01 );
setScaleKey( spep_1-3 + 154, 1, 0.91, 0.91 );
setScaleKey( spep_1-3 + 156, 1, 0.81, 0.81 );
setScaleKey( spep_1-3 + 158, 1, 0.71, 0.71 );
setScaleKey( spep_1-3 + 160, 1, 0.91, 0.91 );
setScaleKey( spep_1-3 + 162, 1, 1.11, 1.11 );
setScaleKey( spep_1-3 + 164, 1, 1.2, 1.2 );
setScaleKey( spep_1-3 + 166, 1, 1.11, 1.11 );
setScaleKey( spep_1-3 + 168, 1, 1.02, 1.02 );
setScaleKey( spep_1-3 + 170, 1, 0.93, 0.93 );
setScaleKey( spep_1-3 + 172, 1, 0.84, 0.84 );
setScaleKey( spep_1-3 + 174, 1, 0.75, 0.75 );
setScaleKey( spep_1-3 + 176, 1, 0.74, 0.74 );
setScaleKey( spep_1-3 + 178, 1, 0.73, 0.73 );
setScaleKey( spep_1-3 + 180, 1, 0.73, 0.73 );
setScaleKey( spep_1-3 + 182, 1, 0.72, 0.72 );
setScaleKey( spep_1-3 + 184, 1, 0.71, 0.71 );
setScaleKey( spep_1-3 + 186, 1, 0.7, 0.7 );
setScaleKey( spep_1-3 + 188, 1, 0.7, 0.7 );
setScaleKey( spep_1-3 + 190, 1, 0.69, 0.69 );
setScaleKey( spep_1-3 + 192, 1, 0.68, 0.68 );
setScaleKey( spep_1-3 + 194, 1, 0.67, 0.67 );
setScaleKey( spep_1-3 + 196, 1, 0.67, 0.67 );
setScaleKey( spep_1-3 + 198, 1, 0.66, 0.66 );
setScaleKey( spep_1-3 + 200, 1, 0.65, 0.65 );
setScaleKey( spep_1-3 + 202, 1, 0.55, 0.55 );
setScaleKey( spep_1-3 + 204, 1, 0.54, 0.54 );
setScaleKey( spep_1-3 + 206, 1, 0.53, 0.53 );
setScaleKey( spep_1-3 + 208, 1, 0.52, 0.52 );
setScaleKey( spep_1-3 + 210, 1, 0.51, 0.51 );
setScaleKey( spep_1-3 + 212, 1, 0.5, 0.5 );
setScaleKey( spep_1-3 + 214, 1, 0.49, 0.49 );
setScaleKey( spep_1-3 + 216, 1, 0.48, 0.48 );
setScaleKey( spep_1-3 + 218, 1, 0.47, 0.47 );
setScaleKey( spep_1-3 + 220, 1, 0.46, 0.46 );
setScaleKey( spep_1-3 + 222, 1, 0.45, 0.45 );
setScaleKey( spep_1-3 + 224, 1, 0.44, 0.44 );
setScaleKey( spep_1-3 + 226, 1, 0.43, 0.43 );
setScaleKey( spep_1-3 + 228, 1, 0.42, 0.42 );
setScaleKey( spep_1-3 + 230, 1, 0.42, 0.42 );
setScaleKey( spep_1-3 + 232, 1, 0.43, 0.43 );
setScaleKey( spep_1-3 + 234, 1, 0.43, 0.43 );
setScaleKey( spep_1-3 + 236, 1, 0.44, 0.44 );
setScaleKey( spep_1-3 + 238, 1, 0.44, 0.44 );
setScaleKey( spep_1-3 + 240, 1, 0.43, 0.43 );
setScaleKey( spep_1-3 + 242, 1, 0.42, 0.42 );
setScaleKey( spep_1-3 + 244, 1, 0.41, 0.41 );
setScaleKey( spep_1-3 + 246, 1, 0.4, 0.4 );
setScaleKey( spep_1-3 + 248, 1, 0.39, 0.39 );
setScaleKey( spep_1-3 + 250, 1, 0.39, 0.39 );
setScaleKey( spep_1-3 + 252, 1, 0.38, 0.38 );
setScaleKey( spep_1-3 + 254, 1, 0.37, 0.37 );
setScaleKey( spep_1-3 + 256, 1, 0.37, 0.37 );
setScaleKey( spep_1-3 + 258, 1, 0.36, 0.36 );
setScaleKey( spep_1-3 + 262, 1, 0.36, 0.36 );
setScaleKey( spep_1-3 + 264, 1, 0.35, 0.35 );
setScaleKey( spep_1-3 + 266, 1, 0.34, 0.34 );
setScaleKey( spep_1-3 + 268, 1, 0.34, 0.34 );
setScaleKey( spep_1-3 + 270, 1, 0.33, 0.33 );
setScaleKey( spep_1-3 + 272, 1, 0.33, 0.33 );
setScaleKey( spep_1-3 + 274, 1, 0.32, 0.32 );
setScaleKey( spep_1-3 + 276, 1, 0.32, 0.32 );
setScaleKey( spep_1-3 + 278, 1, 0.31, 0.31 );
setScaleKey( spep_1-3 + 280, 1, 0.31, 0.31 );
setScaleKey( spep_1-3 + 282, 1, 0.3, 0.3 );
setScaleKey( spep_1-3 + 284, 1, 0.29, 0.29 );
setScaleKey( spep_1-3 + 286, 1, 0.29, 0.29 );
setScaleKey( spep_1-3 + 288, 1, 0.28, 0.28 );
setScaleKey( spep_1-3 + 290, 1, 0.27, 0.27 );
setScaleKey( spep_1-3 + 292, 1, 0.26, 0.26 );
setScaleKey( spep_1-3 + 294, 1, 0.25, 0.25 );
setScaleKey( spep_1-3 + 296, 1, 0.25, 0.25 );
setScaleKey( spep_1-3 + 298, 1, 0.24, 0.24 );
setScaleKey( spep_1-3 + 300, 1, 0.23, 0.23 );
setScaleKey( spep_1-3 + 302, 1, 0.21, 0.21 );
setScaleKey( spep_1-3 + 304, 1, 0.2, 0.2 );
setScaleKey( spep_1-3 + 306, 1, 0.19, 0.19 );
setScaleKey( spep_1-3 + 308, 1, 0.18, 0.18 );
setScaleKey( spep_1-3 + 310, 1, 0.2, 0.2 );
setScaleKey( spep_1+ 388, 1, 0.2, 0.2 );

setRotateKey( spep_1-3 + 37, 1, -7.7 );
setRotateKey( spep_1-3 + 40, 1, -7.7 );
setRotateKey( spep_1-3 + 42, 1, -7.6 );
setRotateKey( spep_1-3 + 44, 1, -7.2 );
setRotateKey( spep_1-3 + 46, 1, -6.7 );
setRotateKey( spep_1-3 + 48, 1, -5.9 );
setRotateKey( spep_1-3 + 50, 1, -4.9 );
setRotateKey( spep_1-3 + 52, 1, -3.6 );
setRotateKey( spep_1-3 + 54, 1, -2.2 );
setRotateKey( spep_1-3 + 56, 1, -0.5 );
setRotateKey( spep_1-3 + 58, 1, 1.5 );
setRotateKey( spep_1-3 + 61, 1, 1.5 );
setRotateKey( spep_1-3 + 60, 1, 3.6 );
setRotateKey( spep_1-3 + 62, 1, -13.5 );
setRotateKey( spep_1-3 + 64, 1, -12.1 );
setRotateKey( spep_1-3 + 66, 1, -10.8 );
setRotateKey( spep_1-3 + 68, 1, -9.4 );
setRotateKey( spep_1-3 + 70, 1, -10.3 );
setRotateKey( spep_1-3 + 72, 1, -11.1 );
setRotateKey( spep_1-3 + 74, 1, -12 );
setRotateKey( spep_1-3 + 76, 1, -12.9 );
setRotateKey( spep_1-3 + 78, 1, -13.7 );
setRotateKey( spep_1-3 + 80, 1, -14.6 );
setRotateKey( spep_1-3 + 82, 1, -15.4 );
setRotateKey( spep_1-3 + 84, 1, -16.3 );
setRotateKey( spep_1-3 + 86, 1, -17.2 );
setRotateKey( spep_1-3 + 88, 1, -18 );
setRotateKey( spep_1-3 + 90, 1, -18.9 );
setRotateKey( spep_1-3 + 92, 1, -20.1 );
setRotateKey( spep_1-3 + 94, 1, -21.2 );
setRotateKey( spep_1-3 + 96, 1, -22.4 );
setRotateKey( spep_1-3 + 98, 1, -23.5 );
setRotateKey( spep_1-3 + 100, 1, -24.7 );
setRotateKey( spep_1-3 + 102, 1, -25.8 );
setRotateKey( spep_1-3 + 104, 1, -27 );
setRotateKey( spep_1-3 + 106, 1, -26.3 );
setRotateKey( spep_1-3 + 108, 1, -25.6 );
setRotateKey( spep_1-3 + 110, 1, -24.9 );
setRotateKey( spep_1-3 + 112, 1, -24.8 );
setRotateKey( spep_1-3 + 114, 1, -20.4 );
setRotateKey( spep_1-3 + 116, 1, -16.1 );
setRotateKey( spep_1-3 + 118, 1, -11.7 );
setRotateKey( spep_1-3 + 120, 1, -7.4 );
setRotateKey( spep_1-3 + 122, 1, -3 );
setRotateKey( spep_1-3 + 124, 1, 1.3 );
setRotateKey( spep_1-3 + 126, 1, 5.7 );
setRotateKey( spep_1-3 + 128, 1, -1.3 );
setRotateKey( spep_1-3 + 130, 1, -8.4 );
setRotateKey( spep_1-3 + 132, 1, -15.4 );
setRotateKey( spep_1-3 + 134, 1, -22.4 );
setRotateKey( spep_1-3 + 136, 1, -29.5 );
setRotateKey( spep_1-3 + 138, 1, -36.5 );
setRotateKey( spep_1-3 + 140, 1, -40.5 );
setRotateKey( spep_1-3 + 142, 1, -44.4 );
setRotateKey( spep_1-3 + 144, 1, -48.4 );
setRotateKey( spep_1-3 + 146, 1, -52.4 );
setRotateKey( spep_1-3 + 148, 1, -56.4 );
setRotateKey( spep_1-3 + 150, 1, -60.3 );
setRotateKey( spep_1-3 + 152, 1, -64.3 );
setRotateKey( spep_1-3 + 154, 1, -51.9 );
setRotateKey( spep_1-3 + 156, 1, -39.5 );
setRotateKey( spep_1-3 + 158, 1, -27.1 );
setRotateKey( spep_1-3 + 160, 1, -25.9 );
setRotateKey( spep_1-3 + 162, 1, -24.8 );
setRotateKey( spep_1-3 + 164, 1, -26.1 );
setRotateKey( spep_1-3 + 166, 1, -27.6 );
setRotateKey( spep_1-3 + 168, 1, -29.1 );
setRotateKey( spep_1-3 + 170, 1, -30.6 );
setRotateKey( spep_1-3 + 172, 1, -32.1 );
setRotateKey( spep_1-3 + 174, 1, -33.6 );
setRotateKey( spep_1-3 + 176, 1, -35.1 );
setRotateKey( spep_1-3 + 178, 1, -36.6 );
setRotateKey( spep_1-3 + 180, 1, -38.2 );
setRotateKey( spep_1-3 + 182, 1, -39.7 );
setRotateKey( spep_1-3 + 184, 1, -41.2 );
setRotateKey( spep_1-3 + 186, 1, -42.7 );
setRotateKey( spep_1-3 + 188, 1, -44.3 );
setRotateKey( spep_1-3 + 190, 1, -45.8 );
setRotateKey( spep_1-3 + 192, 1, -47.3 );
setRotateKey( spep_1-3 + 194, 1, -48.8 );
setRotateKey( spep_1-3 + 196, 1, -50.4 );
setRotateKey( spep_1-3 + 198, 1, -51.9 );
setRotateKey( spep_1-3 + 200, 1, -53.4 );
setRotateKey( spep_1-3 + 202, 1, -10.5 );
setRotateKey( spep_1-3 + 226, 1, -10.5 );
setRotateKey( spep_1-3 + 228, 1, 12.1 );
setRotateKey( spep_1-3 + 230, 1, -4.6 );
setRotateKey( spep_1-3 + 232, 1, -21.3 );
setRotateKey( spep_1-3 + 234, 1, -38 );
setRotateKey( spep_1-3 + 236, 1, -54.7 );
setRotateKey( spep_1-3 + 238, 1, -71.4 );
setRotateKey( spep_1-3 + 240, 1, -66 );
setRotateKey( spep_1-3 + 242, 1, -61 );
setRotateKey( spep_1-3 + 244, 1, -56.3 );
setRotateKey( spep_1-3 + 246, 1, -51.9 );
setRotateKey( spep_1-3 + 248, 1, -47.9 );
setRotateKey( spep_1-3 + 250, 1, -44.2 );
setRotateKey( spep_1-3 + 252, 1, -40.9 );
setRotateKey( spep_1-3 + 254, 1, -37.8 );
setRotateKey( spep_1-3 + 256, 1, -35.2 );
setRotateKey( spep_1-3 + 258, 1, -32.8 );
setRotateKey( spep_1-3 + 260, 1, -30.8 );
setRotateKey( spep_1-3 + 262, 1, -31.2 );
setRotateKey( spep_1-3 + 264, 1, -31.6 );
setRotateKey( spep_1-3 + 266, 1, -32 );
setRotateKey( spep_1-3 + 268, 1, -32.5 );
setRotateKey( spep_1-3 + 270, 1, -32.9 );
setRotateKey( spep_1-3 + 272, 1, -33.4 );
setRotateKey( spep_1-3 + 274, 1, -33.9 );
setRotateKey( spep_1-3 + 276, 1, -34.2 );
setRotateKey( spep_1-3 + 278, 1, -34.6 );
setRotateKey( spep_1-3 + 280, 1, -35 );
setRotateKey( spep_1-3 + 282, 1, -35.4 );
setRotateKey( spep_1-3 + 284, 1, -35.9 );
setRotateKey( spep_1-3 + 286, 1, -36.4 );
setRotateKey( spep_1-3 + 288, 1, -37 );
setRotateKey( spep_1-3 + 290, 1, -37.5 );
setRotateKey( spep_1-3 + 292, 1, -38.2 );
setRotateKey( spep_1-3 + 294, 1, -38.8 );
setRotateKey( spep_1-3 + 296, 1, -39.5 );
setRotateKey( spep_1-3 + 298, 1, -40.2 );
setRotateKey( spep_1-3 + 300, 1, -41 );
setRotateKey( spep_1-3 + 302, 1, -41.8 );
setRotateKey( spep_1-3 + 304, 1, -42.6 );
setRotateKey( spep_1-3 + 306, 1, -43.5 );
setRotateKey( spep_1-3 + 308, 1, -44.4 );
setRotateKey( spep_1-3 + 310, 1, 0 );
setRotateKey( spep_1+ 388, 1, 0 );

-- ** 書き文字エントリー ** --
ctbago = entryEffectLife( spep_1-264 + 322,  10021, 36, 0x100, -1, 0, 38.3, 358.7 );  --バゴォッ
setEffShake( spep_1-264 + 322, ctbago, 36, 20 );

setEffMoveKey( spep_1-264 + 322, ctbago, 38.3, 358.7 , 0 );
setEffMoveKey( spep_1-264 + 324, ctbago, 27.5, 374.8 , 0 );
setEffMoveKey( spep_1-264 + 326, ctbago, 38.8, 358.1 , 0 );
setEffMoveKey( spep_1-264 + 328, ctbago, 18, 388.8 , 0 );
setEffMoveKey( spep_1-264 + 330, ctbago, 38.8, 358.1 , 0 );
setEffMoveKey( spep_1-264 + 332, ctbago, 26.4, 376.4 , 0 );
setEffMoveKey( spep_1-264 + 334, ctbago, 38.6, 358.3 , 0 );
setEffMoveKey( spep_1-264 + 358, ctbago, 38.6, 358.3 , 0 );

setEffScaleKey( spep_1-264 + 322, ctbago, 1.19, 1.19 );
setEffScaleKey( spep_1-264 + 324, ctbago, 2.15, 2.15 );
setEffScaleKey( spep_1-264 + 326, ctbago, 3.11, 3.11 );
setEffScaleKey( spep_1-264 + 328, ctbago, 4.07, 4.07 );
setEffScaleKey( spep_1-264 + 330, ctbago, 3.22, 3.22 );
setEffScaleKey( spep_1-264 + 332, ctbago, 2.37, 2.37 );
setEffScaleKey( spep_1-264 + 358, ctbago, 2.37, 2.37 );

setEffRotateKey( spep_1-264 + 322, ctbago, 6.5 );
setEffRotateKey( spep_1-264 + 358, ctbago, 6.5 );

setEffAlphaKey( spep_1-264 + 322, ctbago, 0 );
setEffAlphaKey( spep_1-264 + 323, ctbago, 255 );
setEffAlphaKey( spep_1-264 + 324, ctbago, 255 );
setEffAlphaKey( spep_1-264 + 350, ctbago, 255 );
setEffAlphaKey( spep_1-264 + 352, ctbago, 191 );
setEffAlphaKey( spep_1-264 + 354, ctbago, 128 );
setEffAlphaKey( spep_1-264 + 356, ctbago, 64 );
setEffAlphaKey( spep_1-264 + 358, ctbago, 0 );

ctdogon = entryEffectLife( spep_1-262 + 568,  10018, 58, 0x100, -1, 0, -72, 371.3 );  --ドゴォン
setEffShake( spep_1-262 + 568, ctdogon, 58, 20 );

setEffMoveKey( spep_1-262 + 568, ctdogon, -72, 371.3 , 0 );
setEffMoveKey( spep_1-262 + 570, ctdogon, -74, 372.2 , 0 );
setEffMoveKey( spep_1-262 + 572, ctdogon, -71.8, 370.8 , 0 );
setEffMoveKey( spep_1-262 + 574, ctdogon, -74.1, 372.2 , 0 );
setEffMoveKey( spep_1-262 + 576, ctdogon, -71.9, 371.1 , 0 );
setEffMoveKey( spep_1-262 + 578, ctdogon, -73.7, 372.1 , 0 );
setEffMoveKey( spep_1-262 + 626, ctdogon, -73.7, 372.1 , 0 );

setEffScaleKey( spep_1-262 + 568, ctdogon, 1.83, 1.83 );
setEffScaleKey( spep_1-262 + 570, ctdogon, 2.7, 2.7 );
setEffScaleKey( spep_1-262 + 572, ctdogon, 3.57, 3.57 );
setEffScaleKey( spep_1-262 + 574, ctdogon, 2.99, 2.99 );
setEffScaleKey( spep_1-262 + 576, ctdogon, 2.4, 2.4 );
setEffScaleKey( spep_1-262 + 626, ctdogon, 2.4, 2.4 );

setEffRotateKey( spep_1-262 + 568, ctdogon, -7 );
setEffRotateKey( spep_1-262 + 626, ctdogon, -7 );

setEffAlphaKey( spep_1-262 + 568, ctdogon, 0 );
setEffAlphaKey( spep_1-262 + 569, ctdogon, 255 );
setEffAlphaKey( spep_1-262 + 570, ctdogon, 255 );
setEffAlphaKey( spep_1-262 + 614, ctdogon, 255 );
setEffAlphaKey( spep_1-262 + 616, ctdogon, 213 );
setEffAlphaKey( spep_1-262 + 618, ctdogon, 170 );
setEffAlphaKey( spep_1-262 + 620, ctdogon, 128 );
setEffAlphaKey( spep_1-262 + 622, ctdogon, 85 );
setEffAlphaKey( spep_1-262 + 624, ctdogon, 42 );
setEffAlphaKey( spep_1-262 + 626, ctdogon, 0 );

--SE
playSe( spep_1, SE_04 );  --突進
--playSe( spep_1+38, SE_04 );  --目線カメラ
playSe( spep_1+58, 1011 );  --殴るやつ
SE2=playSe( spep_1+108, 1044 );  --貫通
stopSe(spep_1+160,SE2,0);
playSe( spep_1+162, 1030 );  --飛び出す
playSe( spep_1+172, 44 );  --飛ぶ
playSe( spep_1+200, 1002 );  --ぶつかる
playSe( spep_1+228, 1002 );  --ぶつかる
playSe( spep_1+306, 1011 );  --ぶつかる


-- ** ホワイトフェード ** --
entryFade( spep_1 + 58, 2, 0, 4, fcolor_r, fcolor_g, fcolor_b, 100 );  -- white fade
entryFade( spep_1 + 382, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- 次の準備
spep_2=spep_1+390;
------------------------------------------------------
-- ナビ構え
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffectLife( spep_2 + 0, SP_05, 150, 0x80, -1, 0, 0, 0 );  --溜め(ef_001)
setEffMoveKey( spep_2 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 150, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 150, hit_f, 1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, hit_f, 255 );
setEffAlphaKey( spep_2 + 150, hit_f, 255 );
setEffRotateKey( spep_2 + 0, hit_f, 0 );
setEffRotateKey( spep_2 + 150, hit_f, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_2 + 0,  906, 148, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen1, 148, 25 );

setEffMoveKey( spep_2 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 148, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_2 + 148, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen1, 0 );
setEffRotateKey( spep_2 + 148, shuchusen1, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 148, shuchusen1, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_2+8 + 60, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_2+8 + 60, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--文字エントリー
ctgogo = entryEffectLife( spep_2+8 + 72,  190006, 74, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_2+8 + 72, ctgogo, 74, 10 );

setEffMoveKey( spep_2+8 + 72, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_2+8 + 146, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_2+8 + 72, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_2+8 + 139, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_2+8 + 140, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_2+8 + 142, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_2+8 + 144, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_2+8 + 146, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_2+8 + 72, ctgogo, 0 );
setEffRotateKey( spep_2+8 + 146, ctgogo, 0 );

setEffAlphaKey( spep_2+8 + 72, ctgogo, 0 );
setEffAlphaKey( spep_2+8 + 73, ctgogo, 255 );
setEffAlphaKey( spep_2+8 + 74, ctgogo, 255 );
setEffAlphaKey( spep_2+8 + 146, ctgogo, 255 );

--SE
playSe( spep_2, SE_03 );  --気溜め
playSe( spep_2 + 20, SE_03 );  --気溜め
playSe( spep_2 + 40, SE_03 );  --気溜め
playSe( spep_2 + 60, SE_03 );  --気溜め
playSe( spep_2 + 80, SE_04 );  --ゴゴゴ

-- ** ホワイトフェード ** --
entryFade( spep_2 + 142, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- 次の準備
spep_3=spep_2+150;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen2, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen2, 0 );
setEffRotateKey( spep_3 + 90, shuchusen2, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen2, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_4 = spep_3 + 94;

--------------------------------------
--発射
--------------------------------------
-- ** エフェクト等 ** --
strike = entryEffectLife( spep_4 + 0, SP_06, 100, 0x80, -1, 0, 0, 0 );  --溜め(ef_001)
setEffMoveKey( spep_4 + 0, strike, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, strike, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, strike, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, strike, 1.0, 1.0 );
setEffAlphaKey( spep_4 + 0, strike, 255 );
setEffAlphaKey( spep_4 + 100, strike, 255 );
setEffRotateKey( spep_4 + 0, strike, 0 );
setEffRotateKey( spep_4 + 100, strike, 0 );

-- ** 書き文字エントリー ** --
ctzuo1 = entryEffectLife( spep_4-4 + 22,  10012, 20, 0x100, -1, 0, -17.7, 313 );  --ズオッ
setEffShake( spep_4-4 + 22, ctzuo1, 20, 20 );

setEffMoveKey( spep_4-4 + 22, ctzuo1, -17.7, 313 , 0 );
setEffMoveKey( spep_4-4 + 24, ctzuo1, -35.7, 356 , 0 );
setEffMoveKey( spep_4-4 + 26, ctzuo1, -81.2, 407.4 , 0 );
setEffMoveKey( spep_4-4 + 28, ctzuo1, -64.3, 405.9 , 0 );
setEffMoveKey( spep_4-4 + 30, ctzuo1, -92.6, 407.5 , 0 );
setEffMoveKey( spep_4-4 + 32, ctzuo1, -75.6, 406.3 , 0 );
setEffMoveKey( spep_4-4 + 34, ctzuo1, -103.9, 407.7 , 0 );
setEffMoveKey( spep_4-4 + 36, ctzuo1, -87, 406.6 , 0 );
setEffMoveKey( spep_4-4 + 38, ctzuo1, -118.9, 421.2 , 0 );
setEffMoveKey( spep_4-4 + 40, ctzuo1, -82.5, 426.4 , 0 );
setEffMoveKey( spep_4-4 + 42, ctzuo1, -79.3, 433.2 , 0 );

setEffScaleKey( spep_4-4 + 22, ctzuo1, 0.34, 0.34 );
setEffScaleKey( spep_4-4 + 24, ctzuo1, 1.54, 1.54 );
setEffScaleKey( spep_4-4 + 26, ctzuo1, 2.73, 2.73 );
setEffScaleKey( spep_4-4 + 36, ctzuo1, 2.73, 2.73 );
setEffScaleKey( spep_4-4 + 38, ctzuo1, 4.09, 4.09 );
setEffScaleKey( spep_4-4 + 40, ctzuo1, 5.46, 5.46 );
setEffScaleKey( spep_4-4 + 42, ctzuo1, 6.82, 6.82 );

setEffRotateKey( spep_4-4 + 22, ctzuo1, 6.9 );
setEffRotateKey( spep_4-4 + 24, ctzuo1, -3.4 );
setEffRotateKey( spep_4-4 + 26, ctzuo1, -13.5 );
setEffRotateKey( spep_4-4 + 28, ctzuo1, -13.8 );
setEffRotateKey( spep_4-4 + 30, ctzuo1, -14.1 );
setEffRotateKey( spep_4-4 + 32, ctzuo1, -14.4 );
setEffRotateKey( spep_4-4 + 34, ctzuo1, -14.7 );
setEffRotateKey( spep_4-4 + 36, ctzuo1, -15 );
setEffRotateKey( spep_4-4 + 38, ctzuo1, -11.8 );
setEffRotateKey( spep_4-4 + 40, ctzuo1, -8.5 );
setEffRotateKey( spep_4-4 + 42, ctzuo1, -5.2 );

setEffAlphaKey( spep_4-4 + 22, ctzuo1, 0 );
setEffAlphaKey( spep_4-4 + 23, ctzuo1, 255 );
setEffAlphaKey( spep_4-4 + 24, ctzuo1, 255 );
setEffAlphaKey( spep_4-4 + 36, ctzuo1, 255 );
setEffAlphaKey( spep_4-4 + 38, ctzuo1, 170 );
setEffAlphaKey( spep_4-4 + 40, ctzuo1, 85 );
setEffAlphaKey( spep_4-4 + 42, ctzuo1, 0 );

-- ** ホワイトフェード ** --
entryFade( spep_4 + 18, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 100 );  -- white fade
entryFade( spep_4+ 92, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--SE
playSe( spep_4+20, SE_07 );  --ぶつかる

-- 次の準備
spep_5=spep_4+100;

--------------------------------------
--気弾迫る
--------------------------------------
-- ** エフェクト等 ** --
press_f = entryEffectLife( spep_5 + 0, SP_07, 60, 0x100, -1, 0, 0, 0 );  --溜め(ef_001)
setEffMoveKey( spep_5 + 0, press_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 60, press_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, press_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 60, press_f, 1.0, 1.0 );
setEffAlphaKey( spep_5 + 0, press_f, 255 );
setEffAlphaKey( spep_5 + 60, press_f, 255 );
setEffRotateKey( spep_5 + 0, press_f, 0 );
setEffRotateKey( spep_5 + 60, press_f, 0 );

-- ** エフェクト等 ** --
press_b = entryEffectLife( spep_5 + 0, SP_08, 60, 0x80, -1, 0, 0, 0 );  --溜め(ef_001)
setEffMoveKey( spep_5 + 0, press_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 60, press_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, press_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 60, press_b, 1.0, 1.0 );
setEffAlphaKey( spep_5 + 0, press_b, 255 );
setEffAlphaKey( spep_5 + 60, press_b, 255 );
setEffRotateKey( spep_5 + 0, press_b, 0 );
setEffRotateKey( spep_5 + 60, press_b, 0 );


stzudo = entryEffectLife( spep_5 ,  10014, 58, 0x100, -1, 0, -30.4, 375 );  --ズドド
setEffShake( spep_5 , stzudo, 58, 20 );

setEffMoveKey( spep_5  , stzudo, -30.4, 375 , 0 );
setEffMoveKey( spep_5 + 58, stzudo, -30.4, 375 , 0 );

setEffScaleKey( spep_5 , stzudo, 2.96, 2.96 );
setEffScaleKey( spep_5 + 58, stzudo, 2.96, 2.96 );

setEffRotateKey( spep_5 , stzudo, 15.2 );
setEffRotateKey( spep_5 + 58, stzudo, 15.2 );

setEffAlphaKey( spep_5 , stzudo, 255 );
setEffAlphaKey( spep_5 + 58, stzudo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 58, 1, 0 );
changeAnime( spep_5 + 0, 1, 108 );  --ダメージ（吹き飛び）

setMoveKey( spep_5 + 0, 1, -204.4, -219.3 , 0 );
setMoveKey( spep_5 + 2, 1, -203.2, -217.8 , 0 );
setMoveKey( spep_5 + 4, 1, -201.9, -216 , 0 );
setMoveKey( spep_5 + 6, 1, -200.3, -213.9 , 0 );
setMoveKey( spep_5 + 8, 1, -198.5, -211.4 , 0 );
setMoveKey( spep_5 + 10, 1, -196.5, -208.7 , 0 );
setMoveKey( spep_5 + 12, 1, -194.3, -205.8 , 0 );
setMoveKey( spep_5 + 14, 1, -191.9, -202.5 , 0 );
setMoveKey( spep_5 + 16, 1, -189.3, -198.9 , 0 );
setMoveKey( spep_5 + 18, 1, -186.4, -195.1 , 0 );
setMoveKey( spep_5 + 20, 1, -183.3, -190.9 , 0 );
setMoveKey( spep_5 + 22, 1, -180.1, -186.5 , 0 );
setMoveKey( spep_5 + 24, 1, -176.6, -181.8 , 0 );
setMoveKey( spep_5 + 26, 1, -172.9, -176.8 , 0 );
setMoveKey( spep_5 + 28, 1, -168.9, -171.5 , 0 );
setMoveKey( spep_5 + 30, 1, -164.8, -165.9 , 0 );
setMoveKey( spep_5 + 32, 1, -160.5, -160 , 0 );
setMoveKey( spep_5 + 34, 1, -155.9, -153.8 , 0 );
setMoveKey( spep_5 + 36, 1, -151.1, -147.4 , 0 );
setMoveKey( spep_5 + 38, 1, -146.1, -140.6 , 0 );
setMoveKey( spep_5 + 40, 1, -140.9, -133.6 , 0 );
setMoveKey( spep_5 + 42, 1, -135.5, -126.3 , 0 );
setMoveKey( spep_5 + 44, 1, -129.9, -118.6 , 0 );
setMoveKey( spep_5 + 46, 1, -124, -110.7 , 0 );
setMoveKey( spep_5 + 48, 1, -118, -102.6 , 0 );
setMoveKey( spep_5 + 50, 1, -111.7, -94.1 , 0 );
setMoveKey( spep_5 + 52, 1, -105.2, -85.3 , 0 );
setMoveKey( spep_5 + 54, 1, -98.5, -76.2 , 0 );
setMoveKey( spep_5 + 56, 1, -91.6, -66.9 , 0 );
setMoveKey( spep_5 + 58, 1, -84.5, -57.2 , 0 );

setScaleKey( spep_5 + 0, 1, -0.43, 0.43 );
setScaleKey( spep_5 + 2, 1, -0.44, 0.44 );
setScaleKey( spep_5 + 4, 1, -0.45, 0.45 );
setScaleKey( spep_5 + 6, 1, -0.46, 0.46 );
setScaleKey( spep_5 + 8, 1, -0.48, 0.48 );
setScaleKey( spep_5 + 10, 1, -0.5, 0.5 );
setScaleKey( spep_5 + 12, 1, -0.51, 0.51 );
setScaleKey( spep_5 + 14, 1, -0.53, 0.53 );
setScaleKey( spep_5 + 16, 1, -0.55, 0.55 );
setScaleKey( spep_5 + 18, 1, -0.58, 0.58 );
setScaleKey( spep_5 + 20, 1, -0.6, 0.6 );
setScaleKey( spep_5 + 22, 1, -0.63, 0.63 );
setScaleKey( spep_5 + 24, 1, -0.66, 0.66 );
setScaleKey( spep_5 + 26, 1, -0.69, 0.69 );
setScaleKey( spep_5 + 28, 1, -0.72, 0.72 );
setScaleKey( spep_5 + 30, 1, -0.75, 0.75 );
setScaleKey( spep_5 + 32, 1, -0.79, 0.79 );
setScaleKey( spep_5 + 34, 1, -0.82, 0.82 );
setScaleKey( spep_5 + 36, 1, -0.86, 0.86 );
setScaleKey( spep_5 + 38, 1, -0.9, 0.9 );
setScaleKey( spep_5 + 40, 1, -0.94, 0.94 );
setScaleKey( spep_5 + 42, 1, -0.99, 0.99 );
setScaleKey( spep_5 + 44, 1, -1.03, 1.03 );
setScaleKey( spep_5 + 46, 1, -1.08, 1.08 );
setScaleKey( spep_5 + 48, 1, -1.13, 1.13 );
setScaleKey( spep_5 + 50, 1, -1.18, 1.18 );
setScaleKey( spep_5 + 52, 1, -1.23, 1.23 );
setScaleKey( spep_5 + 54, 1, -1.29, 1.29 );
setScaleKey( spep_5 + 56, 1, -1.34, 1.34 );
setScaleKey( spep_5 + 58, 1, -1.4, 1.4 );

setRotateKey( spep_5 + 0, 1, -30 );
setRotateKey( spep_5 + 58, 1, -30 );

--SE
playSe( spep_5, SE_07 );  --ぶつかる

-- ** ホワイトフェード ** --
entryFade( spep_5+ 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- 次の準備
spep_6=spep_5+60;

--------------------------------------
--爆発
--------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_6 + 0, SP_09,  0x80, -1, 0, 0, 0 );  --溜め(ef_001)
setEffMoveKey( spep_6 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_6 + 220, explosion, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_6 + 220, explosion, 1.0, 1.0 );
setEffAlphaKey( spep_6 + 0, explosion, 255 );
setEffAlphaKey( spep_6 + 220, explosion, 255 );
setEffRotateKey( spep_6 + 0, explosion, 0 );
setEffRotateKey( spep_6 + 220, explosion, 0 );

--SE
playSe( spep_6, 1024 );  --ぶつかる

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 58 );
entryFade( spep_6 + 200, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_6 + 210 );

else 

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 空気弾発射〜着弾
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --(前)
Air_f = entryEffectLife( spep_0 + 0, SP_01x, 260, 0x100, -1, 0, 0, 0 );  --溜め(ef_001)
setEffMoveKey( spep_0 + 0, Air_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 260, Air_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, Air_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 260, Air_f, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, Air_f, 255 );
setEffAlphaKey( spep_0 + 260, Air_f, 255 );
setEffRotateKey( spep_0 + 0, Air_f, 0 );
setEffRotateKey( spep_0 + 260, Air_f, 0 );

-- ** エフェクト等 ** --
Air_b = entryEffectLife( spep_0 + 0, SP_02x, 260, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, Air_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 260, Air_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, Air_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 260, Air_b, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, Air_b, 255 );
setEffAlphaKey( spep_0 + 260, Air_b, 255 );
setEffRotateKey( spep_0 + 0, Air_b, 0 );
setEffRotateKey( spep_0 + 260, Air_b, 0 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_0-4 + 86,  10012, 54, 0x100, -1, 0, 134.6, 335.8 );  --ズオッ
setEffShake( spep_0-4 + 86, ctzuo, 54, 20 );

setEffMoveKey( spep_0-4 + 86, ctzuo, 134.6, 335.8 , 0 );
setEffMoveKey( spep_0-4 + 88, ctzuo, 173.2, 366.6 , 0 );
setEffMoveKey( spep_0-4 + 90, ctzuo, 198.4, 415.1 , 0 );
setEffMoveKey( spep_0-4 + 92, ctzuo, 211.6, 401.9 , 0 );
setEffMoveKey( spep_0-4 + 132, ctzuo, 211.6, 401.9 , 0 );
setEffMoveKey( spep_0-4 + 134, ctzuo, 213.2, 415.1 , 0 );
setEffMoveKey( spep_0-4 + 136, ctzuo, 251.3, 392 , 0 );
setEffMoveKey( spep_0-4 + 138, ctzuo, 243, 415.2 , 0 );
setEffMoveKey( spep_0-4 + 140, ctzuo, 257.9, 415.2 , 0 );

setEffScaleKey( spep_0-4 + 86, ctzuo, 0.28, 0.28 );
setEffScaleKey( spep_0-4 + 88, ctzuo, 1.26, 1.26 );
setEffScaleKey( spep_0-4 + 90, ctzuo, 2.25, 2.25 );
setEffScaleKey( spep_0-4 + 132, ctzuo, 2.25, 2.25 );
setEffScaleKey( spep_0-4 + 134, ctzuo, 3.1, 3.1 );
setEffScaleKey( spep_0-4 + 136, ctzuo, 3.96, 3.96 );
setEffScaleKey( spep_0-4 + 138, ctzuo, 4.81, 4.81 );
setEffScaleKey( spep_0-4 + 140, ctzuo, 5.66, 5.66 );

setEffRotateKey( spep_0-4 + 86, ctzuo, 38 );
setEffRotateKey( spep_0-4 + 88, ctzuo, 32.6 );
setEffRotateKey( spep_0-4 + 90, ctzuo, 27.2 );
setEffRotateKey( spep_0-4 + 140, ctzuo, 27.2 );

setEffAlphaKey( spep_0-4 + 86, ctzuo, 0 );
setEffAlphaKey( spep_0-4 + 87, ctzuo, 255 );
setEffAlphaKey( spep_0-4 + 88, ctzuo, 255 );
setEffAlphaKey( spep_0-4 + 132, ctzuo, 255 );
setEffAlphaKey( spep_0-4 + 134, ctzuo, 191 );
setEffAlphaKey( spep_0-4 + 136, ctzuo, 128 );
setEffAlphaKey( spep_0-4 + 138, ctzuo, 64 );
setEffAlphaKey( spep_0-4 + 140, ctzuo, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 50, 1, 0 );
setDisp( spep_0 + 149, 1, 1 );
setDisp( spep_0 + 150, 1, 1 );
setDisp( spep_0 + 258, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );  --待機後ろ向き
changeAnime( spep_0 + 149, 1, 100 );  --待機正面向き
changeAnime( spep_0 + 150, 1, 100 );  --待機正面向き
changeAnime( spep_0 + 176, 1, 104 );  --ガード
changeAnime( spep_0 + 198-3, 1, 108 );  --ダメージ（吹き飛び）
changeAnime( spep_0 + 236-3, 1, 106 );  --ダメージ

setMoveKey( spep_0 + 0, 1, 167.1, -228.9 , 0 );
setMoveKey( spep_0 + 2, 1, 168.6, -228.9 , 0 );
setMoveKey( spep_0 + 4, 1, 170, -228.9 , 0 );
setMoveKey( spep_0 + 6, 1, 171.4, -228.9 , 0 );
setMoveKey( spep_0 + 8, 1, 172.7, -228.9 , 0 );
setMoveKey( spep_0 + 10, 1, 174, -228.9 , 0 );
setMoveKey( spep_0 + 12, 1, 175.2, -228.9 , 0 );
setMoveKey( spep_0 + 14, 1, 176.3, -228.9 , 0 );
setMoveKey( spep_0 + 16, 1, 177.5, -228.9 , 0 );
setMoveKey( spep_0 + 18, 1, 178.5, -228.9 , 0 );
setMoveKey( spep_0 + 20, 1, 179.6, -228.9 , 0 );
setMoveKey( spep_0 + 22, 1, 180.5, -228.9 , 0 );
setMoveKey( spep_0 + 24, 1, 181.5, -228.9 , 0 );
setMoveKey( spep_0 + 26, 1, 182.3, -228.9 , 0 );
setMoveKey( spep_0 + 28, 1, 183.1, -228.9 , 0 );
setMoveKey( spep_0 + 30, 1, 183.1, -228.9 , 0 );
setMoveKey( spep_0 + 32, 1, 296.6, -410.6 , 0 );
setMoveKey( spep_0 + 34, 1, 398.2, -573.2 , 0 );
setMoveKey( spep_0 + 36, 1, 487.8, -716.6 , 0 );
setMoveKey( spep_0 + 38, 1, 565.5, -840.9 , 0 );
setMoveKey( spep_0 + 40, 1, 631.2, -946.1 , 0 );
setMoveKey( spep_0 + 42, 1, 685, -1032.2 , 0 );
setMoveKey( spep_0 + 44, 1, 726.8, -1099.1 , 0 );
setMoveKey( spep_0 + 46, 1, 756.7, -1146.9 , 0 );
setMoveKey( spep_0 + 48, 1, 774.6, -1175.6 , 0 );
setMoveKey( spep_0 + 50, 1, 780.6, -1185.2 , 0 );
setMoveKey( spep_0 + 149, 1, 104, -6 , 0 );
setMoveKey( spep_0 + 150, 1, 104, -6 , 0 );
setMoveKey( spep_0 + 154, 1, 84, 2.5 , 0 );
setMoveKey( spep_0 + 156, 1, 64, 11.1 , 0 );
setMoveKey( spep_0 + 158, 1, 44, 19.6 , 0 );
setMoveKey( spep_0 + 160, 1, 24, 28.1 , 0 );
setMoveKey( spep_0 + 162, 1, 13, 34.5 , 0 );
setMoveKey( spep_0 + 164, 1, 2.1, 40.8 , 0 );
setMoveKey( spep_0 + 166, 1, -8.9, 47.1 , 0 );
setMoveKey( spep_0 + 168, 1, -19.9, 53.5 , 0 );
setMoveKey( spep_0 + 170, 1, -30.9, 59.8 , 0 );
setMoveKey( spep_0 + 172, 1, -41.8, 66.1 , 0 );
setMoveKey( spep_0 + 174, 1, -52.8, 72.5 , 0 );
setMoveKey( spep_0 + 176, 1, -9.9, 62 , 0 );
setMoveKey( spep_0 + 178, 1, -3.5, 66.1 , 0 );
setMoveKey( spep_0 + 180, 1, 9.8, 55.7 , 0 );
setMoveKey( spep_0 + 182, 1, 6.8, 46.3 , 0 );
setMoveKey( spep_0 + 184, 1, 25.2, 50.8 , 0 );
setMoveKey( spep_0 + 186, 1, 27.9, 55.8 , 0 );
setMoveKey( spep_0 + 188, 1, 36.1, 47.3 , 0 );
setMoveKey( spep_0 + 190, 1, 29.4, 40.1 , 0 );
setMoveKey( spep_0 + 192, 1, 42.7, 45.2 , 0 );
setMoveKey( spep_0 + 194, 1, 41.3, 51.3 , 0 );
setMoveKey( spep_0 + 196, 1, 44.9, 44.5 , 0 );
setMoveKey( spep_0 + 198, 1, 70.5, 57.9 , 0 );
setMoveKey( spep_0 + 200, 1, 76.6, 53.8 , 0 );
setMoveKey( spep_0 + 202, 1, 82.1, 50.1 , 0 );
setMoveKey( spep_0 + 204, 1, 86.9, 46.8 , 0 );
setMoveKey( spep_0 + 206, 1, 91.1, 44 , 0 );
setMoveKey( spep_0 + 208, 1, 94.7, 41.6 , 0 );
setMoveKey( spep_0 + 210, 1, 97.5, 39.6 , 0 );
setMoveKey( spep_0 + 212, 1, 99.8, 38.1 , 0 );
setMoveKey( spep_0 + 214, 1, 101.4, 37 , 0 );
setMoveKey( spep_0 + 216, 1, 102.4, 36.3 , 0 );
setMoveKey( spep_0 + 218, 1, 102.7, 36.1 , 0 );
setMoveKey( spep_0 + 220, 1, 114.9, 29.9 , 0 );
setMoveKey( spep_0 + 222, 1, 125.5, 24.5 , 0 );
setMoveKey( spep_0 + 224, 1, 134.5, 20 , 0 );
setMoveKey( spep_0 + 226, 1, 141.8, 16.3 , 0 );
setMoveKey( spep_0 + 228, 1, 147.5, 13.4 , 0 );
setMoveKey( spep_0 + 230, 1, 151.6, 11.3 , 0 );
setMoveKey( spep_0 + 232, 1, 154, 10.1 , 0 );
setMoveKey( spep_0 + 234, 1, 154.9, 9.7 , 0 );
setMoveKey( spep_0 + 236, 1, 150.5, 23.9 , 0 );
setMoveKey( spep_0 + 238, 1, 158.1, 21.4 , 0 );
setMoveKey( spep_0 + 240, 1, 165.3, 12.8 , 0 );
setMoveKey( spep_0 + 242, 1, 170.3, 10.3 , 0 );
setMoveKey( spep_0 + 244, 1, 177.5, 3.6 , 0 );
setMoveKey( spep_0 + 246, 1, 183, 1.5 , 0 );
setMoveKey( spep_0 + 248, 1, 187.4, -3.7 , 0 );
setMoveKey( spep_0 + 250, 1, 190.8, -5.4 , 0 );
setMoveKey( spep_0 + 252, 1, 194.8, -9.2 , 0 );
setMoveKey( spep_0 + 254, 1, 197.8, -10.3 , 0 );
setMoveKey( spep_0 + 256, 1, 199.7, -12.9 , 0 );
setMoveKey( spep_0 + 258, 1, 201, -13.3 , 0 );

setScaleKey( spep_0 + 0, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 2, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 4, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 6, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 30, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 32, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 34, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 36, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 38, 1, 3.45, 3.45 );
setScaleKey( spep_0 + 40, 1, 3.71, 3.71 );
setScaleKey( spep_0 + 42, 1, 3.92, 3.92 );
setScaleKey( spep_0 + 44, 1, 4.08, 4.08 );
setScaleKey( spep_0 + 46, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 48, 1, 4.27, 4.27 );
setScaleKey( spep_0 + 50, 1, 4.29, 4.29 );
setScaleKey( spep_0 + 148, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 150, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 154, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 156, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 158, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 160, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 162, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 164, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 166, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 168, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 170, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 172, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 174, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 176, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 178, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 180, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 182, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 184, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 186, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 188, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 190, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 192, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 194, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 196, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 198, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 200, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 202, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 204, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 206, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 208, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 210, 1, 1, 1 );
setScaleKey( spep_0 + 212, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 214, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 216, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 218, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 220, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 222, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 224, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 226, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 228, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 230, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 232, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 234, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 236, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 238, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 240, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 242, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 244, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 246, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 248, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 250, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 252, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 254, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 256, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 258, 1, 0.11, 0.11 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 50, 1, 0 );
setRotateKey( spep_0 + 152, 1, 0 );
setRotateKey( spep_0 + 154, 1, 0 );
setRotateKey( spep_0 + 176, 1, 0 );
setRotateKey( spep_0 + 178, 1, 0.8 );
setRotateKey( spep_0 + 180, 1, 1.5 );
setRotateKey( spep_0 + 182, 1, 2.1 );
setRotateKey( spep_0 + 184, 1, 2.7 );
setRotateKey( spep_0 + 186, 1, 3.2 );
setRotateKey( spep_0 + 188, 1, 3.5 );
setRotateKey( spep_0 + 190, 1, 3.8 );
setRotateKey( spep_0 + 192, 1, 4 );
setRotateKey( spep_0 + 194, 1, 4.2 );
setRotateKey( spep_0 + 196, 1, 4.2 );
setRotateKey( spep_0 + 198, 1, 20 );
setRotateKey( spep_0 + 200, 1, 19.5 );
setRotateKey( spep_0 + 202, 1, 19 );
setRotateKey( spep_0 + 204, 1, 18.6 );
setRotateKey( spep_0 + 206, 1, 18.3 );
setRotateKey( spep_0 + 208, 1, 18 );
setRotateKey( spep_0 + 210, 1, 17.7 );
setRotateKey( spep_0 + 212, 1, 17.5 );
setRotateKey( spep_0 + 214, 1, 17.4 );
setRotateKey( spep_0 + 216, 1, 17.3 );
setRotateKey( spep_0 + 218, 1, 17.3 );
setRotateKey( spep_0 + 220, 1, 16.8 );
setRotateKey( spep_0 + 222, 1, 16.4 );
setRotateKey( spep_0 + 224, 1, 16.1 );
setRotateKey( spep_0 + 226, 1, 15.8 );
setRotateKey( spep_0 + 228, 1, 15.6 );
setRotateKey( spep_0 + 230, 1, 15.4 );
setRotateKey( spep_0 + 232, 1, 15.3 );
setRotateKey( spep_0 + 234, 1, 15.3 );
setRotateKey( spep_0 + 236, 1, -6.6 );
setRotateKey( spep_0 + 238, 1, -3.7 );
setRotateKey( spep_0 + 240, 1, -1 );
setRotateKey( spep_0 + 242, 1, 1.4 );
setRotateKey( spep_0 + 244, 1, 3.7 );
setRotateKey( spep_0 + 246, 1, 5.6 );
setRotateKey( spep_0 + 248, 1, 7.4 );
setRotateKey( spep_0 + 250, 1, 8.9 );
setRotateKey( spep_0 + 252, 1, 10.2 );
setRotateKey( spep_0 + 254, 1, 11.2 );
setRotateKey( spep_0 + 256, 1, 12.1 );
setRotateKey( spep_0 + 258, 1, 12.6 );

--SE
playSe( spep_0 + 18, SE_03 );  --気溜め
playSe( spep_0 + 38, SE_03 );  --気溜め
SE1=playSe( spep_0 + 58, 17 );  --気団を貯める
stopSe(spep_0+82,SE1,0);
playSe( spep_0 + 84, 1049 );  --なんか鬱
playSe( spep_0 + 104, 1049 );  --なんか鬱
playSe( spep_0 + 124, 1049 );  --なんか鬱

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 146, 2, 0, 4, fcolor_r, fcolor_g, fcolor_b, 100 );  -- white fade
entryFade( spep_0 + 252, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- 薄いwhite fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 152; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    
    pauseAll( SP_dodge, 67 );
    
    --[[
    -- ** 敵キャラクター ** --
    changeAnime( SP_dodge + 0, 1, 100 );  --待機正面向き
    
    setMoveKey( SP_dodge + 0, 1, 104, -6 , 0 );
    setMoveKey( SP_dodge + 2, 1, 84, 2.5 , 0 );
    setMoveKey( SP_dodge + 4, 1, 64, 11.1 , 0 );
    setMoveKey( SP_dodge + 6, 1, 44, 19.6 , 0 );
    setMoveKey( SP_dodge + 8, 1, 24, 28.1 , 0 );
    setMoveKey( SP_dodge + 10, 1, 13, 34.5 , 0 );
    
    setScaleKey( SP_dodge + 0, 1, 1.25, 1.25 );
    setScaleKey( SP_dodge + 2, 1, 1.31, 1.31 );
    setScaleKey( SP_dodge + 4, 1, 1.36, 1.36 );
    setScaleKey( SP_dodge + 6, 1, 1.42, 1.42 );
    setScaleKey( SP_dodge + 8, 1, 1.48, 1.48 );
    setScaleKey( SP_dodge + 10, 1, 1.49, 1.49 );
    
    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );
    ]]
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
    
    ------------------------------------------------------
    -- 回避しなかった場合
    ------------------------------------------------------




--SE
playSe( spep_0 + 138, 1049 );  --なんか鬱
playSe( spep_0 + 174, 1014 );  --なんか当たる
playSe( spep_0 + 196, 1014 );  --なんか当たる
playSe( spep_0 + 216, 1014 );  --なんか当たる
playSe( spep_0 + 234, 1014 );  --なんか当たる



-- 次の準備
spep_1=spep_0+260;
------------------------------------------------------
-- 空気弾発射〜着弾殴り〜雪山突撃
------------------------------------------------------
-- ** エフェクト等 ** --(前)
hit_f = entryEffectLife( spep_1 + 0, SP_03x, 390, 0x100, -1, 0, 0, 0 );  --溜め(ef_001)
setEffMoveKey( spep_1 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 390, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 40, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 41, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 42, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 390, hit_f, 1.0, 1.0 );
setEffAlphaKey( spep_1 + 0, hit_f, 255 );
setEffAlphaKey( spep_1 + 390, hit_f, 255 );
setEffRotateKey( spep_1 + 0, hit_f, 0 );
setEffRotateKey( spep_1 + 390, hit_f, 0 );

-- ** エフェクト等 ** --(前)
hit_b = entryEffectLife( spep_1 + 0, SP_04x, 390, 0x80, -1, 0, 0, 0 );  --溜め(ef_001)
setEffMoveKey( spep_1 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 390, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 390, hit_b, 1.0, 1.0 );
setEffAlphaKey( spep_1 + 0, hit_b, 255 );
setEffAlphaKey( spep_1 + 390, hit_b, 255 );
setEffRotateKey( spep_1 + 0, hit_b, 0 );
setEffRotateKey( spep_1 + 390, hit_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 37, 1, 1 );
setDisp( spep_1 + 38, 1, 1 );
setDisp( spep_1 + 388, 1, 0 );

changeAnime( spep_1 + 37, 1, 106 );  --ダメージ
changeAnime( spep_1-3 + 40, 1, 106 );  --ダメージ
changeAnime( spep_1-3 + 62, 1, 105 );  --ダメージ 奥
changeAnime( spep_1-3 + 202, 1, 106 );  --ダメージ
changeAnime( spep_1-3 + 228, 1, 105 );  --ダメージ 奥
changeAnime( spep_1-3 + 310, 1, 8 );  --ダメージ（吹き飛び）

setMoveKey( spep_1-3 + 37, 1, 3.4, 61 , 0 );
setMoveKey( spep_1-3 + 40, 1, 3.4, 61 , 0 );
setMoveKey( spep_1-3 + 42, 1, 3.3, 63.5 , 0 );
setMoveKey( spep_1-3 + 44, 1, 3.7, 62.9 , 0 );
setMoveKey( spep_1-3 + 46, 1, 1.6, 68.2 , 0 );
setMoveKey( spep_1-3 + 48, 1, 4.7, 68.4 , 0 );
setMoveKey( spep_1-3 + 50, 1, 5, 79.7 , 0 );
setMoveKey( spep_1-3 + 52, 1, 6.3, 77.6 , 0 );
setMoveKey( spep_1-3 + 54, 1, -0.3, 94.4 , 0 );
setMoveKey( spep_1-3 + 56, 1, 8.5, 90.6 , 0 );
setMoveKey( spep_1-3 + 58, 1, 10.9, 117.6 , 0 );
setMoveKey( spep_1-3 + 60, 1, 11.4, 107.3 , 0 );
setMoveKey( spep_1-3 + 61, 1, 11.4, 107.3 , 0 );
setMoveKey( spep_1-3 + 62, 1, 76.5, -38.2 , 0 );
setMoveKey( spep_1-3 + 64, 1, 69.7, -6.2 , 0 );
setMoveKey( spep_1-3 + 66, 1, 63, 25.7 , 0 );
setMoveKey( spep_1-3 + 68, 1, 56.2, 57.7 , 0 );
setMoveKey( spep_1-3 + 70, 1, 53.3, 61 , 0 );
setMoveKey( spep_1-3 + 72, 1, 50.4, 64.3 , 0 );
setMoveKey( spep_1-3 + 74, 1, 47.5, 67.5 , 0 );
setMoveKey( spep_1-3 + 76, 1, 44.6, 70.8 , 0 );
setMoveKey( spep_1-3 + 78, 1, 41.7, 74.1 , 0 );
setMoveKey( spep_1-3 + 80, 1, 38.7, 77.4 , 0 );
setMoveKey( spep_1-3 + 82, 1, 35.8, 80.7 , 0 );
setMoveKey( spep_1-3 + 84, 1, 32.9, 84 , 0 );
setMoveKey( spep_1-3 + 86, 1, 30, 87.2 , 0 );
setMoveKey( spep_1-3 + 88, 1, 27.1, 90.5 , 0 );
setMoveKey( spep_1-3 + 90, 1, 24.2, 93.8 , 0 );
setMoveKey( spep_1-3 + 92, 1, 22.4, 95.7 , 0 );
setMoveKey( spep_1-3 + 94, 1, 20.6, 97.6 , 0 );
setMoveKey( spep_1-3 + 96, 1, 18.9, 99.6 , 0 );
setMoveKey( spep_1-3 + 98, 1, 17.1, 101.5 , 0 );
setMoveKey( spep_1-3 + 100, 1, 15.3, 103.4 , 0 );
setMoveKey( spep_1-3 + 102, 1, 13.5, 105.4 , 0 );
setMoveKey( spep_1-3 + 104, 1, 11.8, 107.3 , 0 );
setMoveKey( spep_1-3 + 106, 1, 13.1, 102 , 0 );
setMoveKey( spep_1-3 + 108, 1, 14.4, 96.7 , 0 );
setMoveKey( spep_1-3 + 110, 1, 15.7, 91.4 , 0 );
setMoveKey( spep_1-3 + 112, 1, 15.7, 59.3 , 0 );
setMoveKey( spep_1-3 + 114, 1, 29.9, 55.5 , 0 );
setMoveKey( spep_1-3 + 116, 1, 44.1, 51.7 , 0 );
setMoveKey( spep_1-3 + 118, 1, 58.3, 47.9 , 0 );
setMoveKey( spep_1-3 + 120, 1, 72.5, 44.1 , 0 );
setMoveKey( spep_1-3 + 122, 1, 86.7, 40.2 , 0 );
setMoveKey( spep_1-3 + 124, 1, 100.8, 36.4 , 0 );
setMoveKey( spep_1-3 + 126, 1, 115, 32.6 , 0 );
setMoveKey( spep_1-3 + 128, 1, 96.7, 14.6 , 0 );
setMoveKey( spep_1-3 + 130, 1, 78.4, -3.4 , 0 );
setMoveKey( spep_1-3 + 132, 1, 60, -21.4 , 0 );
setMoveKey( spep_1-3 + 134, 1, 41.7, -39.4 , 0 );
setMoveKey( spep_1-3 + 136, 1, 23.4, -57.4 , 0 );
setMoveKey( spep_1-3 + 138, 1, 5, -75.4 , 0 );
setMoveKey( spep_1-3 + 140, 1, 4.9, -54.2 , 0 );
setMoveKey( spep_1-3 + 142, 1, 4.8, -33.1 , 0 );
setMoveKey( spep_1-3 + 144, 1, 4.7, -12 , 0 );
setMoveKey( spep_1-3 + 146, 1, 4.6, 9.1 , 0 );
setMoveKey( spep_1-3 + 148, 1, 4.5, 30.2 , 0 );
setMoveKey( spep_1-3 + 150, 1, 4.3, 51.3 , 0 );
setMoveKey( spep_1-3 + 152, 1, 4.2, 72.4 , 0 );
setMoveKey( spep_1-3 + 154, 1, 4, 65.9 , 0 );
setMoveKey( spep_1-3 + 156, 1, 3.8, 59.5 , 0 );
setMoveKey( spep_1-3 + 158, 1, 3.6, 53 , 0 );
setMoveKey( spep_1-3 + 160, 1, 3.4, 45 , 0 );
setMoveKey( spep_1-3 + 162, 1, 3.2, 36.9 , 0 );
setMoveKey( spep_1-3 + 164, 1, -2.4, 35.7 , 0 );
setMoveKey( spep_1-3 + 166, 1, -9.4, 34.3 , 0 );
setMoveKey( spep_1-3 + 168, 1, -16.3, 32.8 , 0 );
setMoveKey( spep_1-3 + 170, 1, -23.3, 31.4 , 0 );
setMoveKey( spep_1-3 + 172, 1, -30.3, 30 , 0 );
setMoveKey( spep_1-3 + 174, 1, -37.2, 28.6 , 0 );
setMoveKey( spep_1-3 + 176, 1, -44.2, 27.2 , 0 );
setMoveKey( spep_1-3 + 178, 1, -51.1, 25.7 , 0 );
setMoveKey( spep_1-3 + 180, 1, -58.1, 24.3 , 0 );
setMoveKey( spep_1-3 + 182, 1, -65, 22.8 , 0 );
setMoveKey( spep_1-3 + 184, 1, -71.9, 21.4 , 0 );
setMoveKey( spep_1-3 + 186, 1, -78.9, 19.9 , 0 );
setMoveKey( spep_1-3 + 188, 1, -85.8, 18.5 , 0 );
setMoveKey( spep_1-3 + 190, 1, -92.8, 17 , 0 );
setMoveKey( spep_1-3 + 192, 1, -99.7, 15.6 , 0 );
setMoveKey( spep_1-3 + 194, 1, -106.7, 14.1 , 0 );
setMoveKey( spep_1-3 + 196, 1, -113.6, 12.7 , 0 );
setMoveKey( spep_1-3 + 198, 1, -120.6, 11.2 , 0 );
setMoveKey( spep_1-3 + 200, 1, -127.5, 9.8 , 0 );
setMoveKey( spep_1-3 + 202, 1, -72, 4.9 , 0 );
setMoveKey( spep_1-3 + 204, 1, -49.7, 12.6 , 0 );
setMoveKey( spep_1-3 + 206, 1, -26.2, 12.6 , 0 );
setMoveKey( spep_1-3 + 208, 1, -6, 19.3 , 0 );
setMoveKey( spep_1-3 + 210, 1, 19.7, 20.2 , 0 );
setMoveKey( spep_1-3 + 212, 1, 42, 27.6 , 0 );
setMoveKey( spep_1-3 + 214, 1, 65.5, 27.9 , 0 );
setMoveKey( spep_1-3 + 216, 1, 85.9, 34.5 , 0 );
setMoveKey( spep_1-3 + 218, 1, 111.4, 35.6 , 0 );
setMoveKey( spep_1-3 + 220, 1, 133.8, 42.7 , 0 );
setMoveKey( spep_1-3 + 222, 1, 157.2, 43.3 , 0 );
setMoveKey( spep_1-3 + 224, 1, 177.8, 49.6 , 0 );
setMoveKey( spep_1-3 + 226, 1, 203.1, 50.9 , 0 );
setMoveKey( spep_1-3 + 228, 1, 226, 32.1 , 0 );
setMoveKey( spep_1-3 + 230, 1, 222.8, 25 , 0 );
setMoveKey( spep_1-3 + 232, 1, 219.6, 17.8 , 0 );
setMoveKey( spep_1-3 + 234, 1, 216.4, 10.7 , 0 );
setMoveKey( spep_1-3 + 236, 1, 213.2, 3.6 , 0 );
setMoveKey( spep_1-3 + 238, 1, 209.9, -3.6 , 0 );
setMoveKey( spep_1-3 + 240, 1, 190, 15.6 , 0 );
setMoveKey( spep_1-3 + 242, 1, 171.4, 33.5 , 0 );
setMoveKey( spep_1-3 + 244, 1, 154.1, 50.3 , 0 );
setMoveKey( spep_1-3 + 246, 1, 137.9, 65.9 , 0 );
setMoveKey( spep_1-3 + 248, 1, 123, 80.3 , 0 );
setMoveKey( spep_1-3 + 250, 1, 109.4, 93.5 , 0 );
setMoveKey( spep_1-3 + 252, 1, 96.9, 105.4 , 0 );
setMoveKey( spep_1-3 + 254, 1, 85.8, 116.2 , 0 );
setMoveKey( spep_1-3 + 256, 1, 75.8, 125.8 , 0 );
setMoveKey( spep_1-3 + 258, 1, 67.1, 134.2 , 0 );
setMoveKey( spep_1-3 + 260, 1, 59.7, 141.4 , 0 );
setMoveKey( spep_1-3 + 262, 1, 54.7, 138.3 , 0 );
setMoveKey( spep_1-3 + 264, 1, 49.6, 135.2 , 0 );
setMoveKey( spep_1-3 + 266, 1, 44.3, 132 , 0 );
setMoveKey( spep_1-3 + 268, 1, 38.8, 128.6 , 0 );
setMoveKey( spep_1-3 + 270, 1, 33.2, 125.2 , 0 );
setMoveKey( spep_1-3 + 272, 1, 27.4, 121.6 , 0 );
setMoveKey( spep_1-3 + 274, 1, 21.4, 117.9 , 0 );
setMoveKey( spep_1-3 + 276, 1, 18.5, 115.8 , 0 );
setMoveKey( spep_1-3 + 278, 1, 15.4, 113.4 , 0 );
setMoveKey( spep_1-3 + 280, 1, 11.9, 110.8 , 0 );
setMoveKey( spep_1-3 + 282, 1, 8.2, 107.9 , 0 );
setMoveKey( spep_1-3 + 284, 1, 4.1, 104.8 , 0 );
setMoveKey( spep_1-3 + 286, 1, -0.3, 101.4 , 0 );
setMoveKey( spep_1-3 + 288, 1, -5, 97.8 , 0 );
setMoveKey( spep_1-3 + 290, 1, -10, 94 , 0 );
setMoveKey( spep_1-3 + 292, 1, -15.4, 89.9 , 0 );
setMoveKey( spep_1-3 + 294, 1, -21, 85.6 , 0 );
setMoveKey( spep_1-3 + 296, 1, -27, 81.1 , 0 );
setMoveKey( spep_1-3 + 298, 1, -33.3, 76.3 , 0 );
setMoveKey( spep_1-3 + 300, 1, -39.9, 71.3 , 0 );
setMoveKey( spep_1-3 + 302, 1, -46.8, 66 , 0 );
setMoveKey( spep_1-3 + 304, 1, -54, 60.5 , 0 );
setMoveKey( spep_1-3 + 306, 1, -61.5, 54.7 , 0 );
setMoveKey( spep_1-3 + 308, 1, -69.4, 48.7 , 0 );
setMoveKey( spep_1-3 + 310, 1, -71.2, 32.3 , 0 );
setMoveKey( spep_1-3 + 312, 1, -71.3, 36.5 , 0 );
setMoveKey( spep_1-3 + 314, 1, -71.4, 40.6 , 0 );
setMoveKey( spep_1-3 + 316, 1, -71.5, 44.8 , 0 );
setMoveKey( spep_1-3 + 318, 1, -71.6, 48.9 , 0 );
setMoveKey( spep_1-3 + 320, 1, -71.6, 53.1 , 0 );
setMoveKey( spep_1-3 + 322, 1, -71.7, 57.3 , 0 );
setMoveKey( spep_1-3 + 324, 1, -71.8, 61.4 , 0 );
setMoveKey( spep_1-3 + 326, 1, -71.9, 65.6 , 0 );
setMoveKey( spep_1-3 + 328, 1, -72, 69.7 , 0 );
setMoveKey( spep_1-3 + 330, 1, -72, 73.9 , 0 );
setMoveKey( spep_1-3 + 332, 1, -72.1, 78.1 , 0 );
setMoveKey( spep_1-3 + 334, 1, -72.2, 82.2 , 0 );
setMoveKey( spep_1-3 + 336, 1, -72.3, 86.4 , 0 );
setMoveKey( spep_1-3 + 338, 1, -72.4, 90.5 , 0 );
setMoveKey( spep_1-3 + 340, 1, -72.4, 94.7 , 0 );
setMoveKey( spep_1-3 + 342, 1, -72.5, 98.9 , 0 );
setMoveKey( spep_1-3 + 344, 1, -72.6, 103 , 0 );
setMoveKey( spep_1-3 + 346, 1, -72.7, 107.2 , 0 );
setMoveKey( spep_1-3 + 348, 1, -72.8, 111.3 , 0 );
setMoveKey( spep_1-3 + 350, 1, -72.8, 115.5 , 0 );
setMoveKey( spep_1 + 388, 1, -72.8, 115.5 , 0 );

setScaleKey( spep_1-3 + 37, 1, 0.24, 0.24 );
setScaleKey( spep_1-3 + 40, 1, 0.24, 0.24 );
setScaleKey( spep_1-3 + 42, 1, 0.27, 0.27 );
setScaleKey( spep_1-3 + 44, 1, 0.36, 0.36 );
setScaleKey( spep_1-3 + 46, 1, 0.51, 0.51 );
setScaleKey( spep_1-3 + 48, 1, 0.72, 0.72 );
setScaleKey( spep_1-3 + 50, 1, 0.99, 0.99 );
setScaleKey( spep_1-3 + 52, 1, 1.32, 1.32 );
setScaleKey( spep_1-3 + 54, 1, 1.7, 1.7 );
setScaleKey( spep_1-3 + 56, 1, 2.15, 2.15 );
setScaleKey( spep_1-3 + 58, 1, 2.65, 2.65 );
setScaleKey( spep_1-3 + 60, 1, 3.22, 3.22 );
setScaleKey( spep_1-3 + 61, 1, 3.22, 3.22 );
setScaleKey( spep_1-3 + 62, 1, 5.2, 5.2 );
setScaleKey( spep_1-3 + 64, 1, 4.31, 4.31 );
setScaleKey( spep_1-3 + 66, 1, 3.41, 3.41 );
setScaleKey( spep_1-3 + 68, 1, 2.52, 2.52 );
setScaleKey( spep_1-3 + 70, 1, 2.45, 2.45 );
setScaleKey( spep_1-3 + 72, 1, 2.38, 2.38 );
setScaleKey( spep_1-3 + 74, 1, 2.32, 2.32 );
setScaleKey( spep_1-3 + 76, 1, 2.25, 2.25 );
setScaleKey( spep_1-3 + 78, 1, 2.18, 2.18 );
setScaleKey( spep_1-3 + 80, 1, 2.11, 2.11 );
setScaleKey( spep_1-3 + 82, 1, 2.04, 2.04 );
setScaleKey( spep_1-3 + 84, 1, 1.97, 1.97 );
setScaleKey( spep_1-3 + 86, 1, 1.91, 1.91 );
setScaleKey( spep_1-3 + 88, 1, 1.84, 1.84 );
setScaleKey( spep_1-3 + 90, 1, 1.77, 1.77 );
setScaleKey( spep_1-3 + 92, 1, 1.69, 1.69 );
setScaleKey( spep_1-3 + 94, 1, 1.6, 1.6 );
setScaleKey( spep_1-3 + 96, 1, 1.52, 1.52 );
setScaleKey( spep_1-3 + 98, 1, 1.44, 1.44 );
setScaleKey( spep_1-3 + 100, 1, 1.36, 1.36 );
setScaleKey( spep_1-3 + 102, 1, 1.27, 1.27 );
setScaleKey( spep_1-3 + 104, 1, 1.19, 1.19 );
setScaleKey( spep_1-3 + 106, 1, 1.21, 1.21 );
setScaleKey( spep_1-3 + 108, 1, 1.23, 1.23 );
setScaleKey( spep_1-3 + 110, 1, 1.25, 1.25 );
setScaleKey( spep_1-3 + 112, 1, 1.25, 1.25 );
setScaleKey( spep_1-3 + 114, 1, 1.29, 1.29 );
setScaleKey( spep_1-3 + 116, 1, 1.34, 1.34 );
setScaleKey( spep_1-3 + 118, 1, 1.38, 1.38 );
setScaleKey( spep_1-3 + 120, 1, 1.43, 1.43 );
setScaleKey( spep_1-3 + 122, 1, 1.47, 1.47 );
setScaleKey( spep_1-3 + 124, 1, 1.52, 1.52 );
setScaleKey( spep_1-3 + 126, 1, 1.56, 1.56 );
setScaleKey( spep_1-3 + 128, 1, 1.52, 1.52 );
setScaleKey( spep_1-3 + 130, 1, 1.48, 1.48 );
setScaleKey( spep_1-3 + 132, 1, 1.45, 1.45 );
setScaleKey( spep_1-3 + 134, 1, 1.41, 1.41 );
setScaleKey( spep_1-3 + 136, 1, 1.37, 1.37 );
setScaleKey( spep_1-3 + 138, 1, 1.33, 1.33 );
setScaleKey( spep_1-3 + 140, 1, 1.28, 1.28 );
setScaleKey( spep_1-3 + 142, 1, 1.24, 1.24 );
setScaleKey( spep_1-3 + 144, 1, 1.19, 1.19 );
setScaleKey( spep_1-3 + 146, 1, 1.15, 1.15 );
setScaleKey( spep_1-3 + 148, 1, 1.1, 1.1 );
setScaleKey( spep_1-3 + 150, 1, 1.06, 1.06 );
setScaleKey( spep_1-3 + 152, 1, 1.01, 1.01 );
setScaleKey( spep_1-3 + 154, 1, 0.91, 0.91 );
setScaleKey( spep_1-3 + 156, 1, 0.81, 0.81 );
setScaleKey( spep_1-3 + 158, 1, 0.71, 0.71 );
setScaleKey( spep_1-3 + 160, 1, 0.91, 0.91 );
setScaleKey( spep_1-3 + 162, 1, 1.11, 1.11 );
setScaleKey( spep_1-3 + 164, 1, 1.2, 1.2 );
setScaleKey( spep_1-3 + 166, 1, 1.11, 1.11 );
setScaleKey( spep_1-3 + 168, 1, 1.02, 1.02 );
setScaleKey( spep_1-3 + 170, 1, 0.93, 0.93 );
setScaleKey( spep_1-3 + 172, 1, 0.84, 0.84 );
setScaleKey( spep_1-3 + 174, 1, 0.75, 0.75 );
setScaleKey( spep_1-3 + 176, 1, 0.74, 0.74 );
setScaleKey( spep_1-3 + 178, 1, 0.73, 0.73 );
setScaleKey( spep_1-3 + 180, 1, 0.73, 0.73 );
setScaleKey( spep_1-3 + 182, 1, 0.72, 0.72 );
setScaleKey( spep_1-3 + 184, 1, 0.71, 0.71 );
setScaleKey( spep_1-3 + 186, 1, 0.7, 0.7 );
setScaleKey( spep_1-3 + 188, 1, 0.7, 0.7 );
setScaleKey( spep_1-3 + 190, 1, 0.69, 0.69 );
setScaleKey( spep_1-3 + 192, 1, 0.68, 0.68 );
setScaleKey( spep_1-3 + 194, 1, 0.67, 0.67 );
setScaleKey( spep_1-3 + 196, 1, 0.67, 0.67 );
setScaleKey( spep_1-3 + 198, 1, 0.66, 0.66 );
setScaleKey( spep_1-3 + 200, 1, 0.65, 0.65 );
setScaleKey( spep_1-3 + 202, 1, 0.55, 0.55 );
setScaleKey( spep_1-3 + 204, 1, 0.54, 0.54 );
setScaleKey( spep_1-3 + 206, 1, 0.53, 0.53 );
setScaleKey( spep_1-3 + 208, 1, 0.52, 0.52 );
setScaleKey( spep_1-3 + 210, 1, 0.51, 0.51 );
setScaleKey( spep_1-3 + 212, 1, 0.5, 0.5 );
setScaleKey( spep_1-3 + 214, 1, 0.49, 0.49 );
setScaleKey( spep_1-3 + 216, 1, 0.48, 0.48 );
setScaleKey( spep_1-3 + 218, 1, 0.47, 0.47 );
setScaleKey( spep_1-3 + 220, 1, 0.46, 0.46 );
setScaleKey( spep_1-3 + 222, 1, 0.45, 0.45 );
setScaleKey( spep_1-3 + 224, 1, 0.44, 0.44 );
setScaleKey( spep_1-3 + 226, 1, 0.43, 0.43 );
setScaleKey( spep_1-3 + 228, 1, 0.42, 0.42 );
setScaleKey( spep_1-3 + 230, 1, 0.42, 0.42 );
setScaleKey( spep_1-3 + 232, 1, 0.43, 0.43 );
setScaleKey( spep_1-3 + 234, 1, 0.43, 0.43 );
setScaleKey( spep_1-3 + 236, 1, 0.44, 0.44 );
setScaleKey( spep_1-3 + 238, 1, 0.44, 0.44 );
setScaleKey( spep_1-3 + 240, 1, 0.43, 0.43 );
setScaleKey( spep_1-3 + 242, 1, 0.42, 0.42 );
setScaleKey( spep_1-3 + 244, 1, 0.41, 0.41 );
setScaleKey( spep_1-3 + 246, 1, 0.4, 0.4 );
setScaleKey( spep_1-3 + 248, 1, 0.39, 0.39 );
setScaleKey( spep_1-3 + 250, 1, 0.39, 0.39 );
setScaleKey( spep_1-3 + 252, 1, 0.38, 0.38 );
setScaleKey( spep_1-3 + 254, 1, 0.37, 0.37 );
setScaleKey( spep_1-3 + 256, 1, 0.37, 0.37 );
setScaleKey( spep_1-3 + 258, 1, 0.36, 0.36 );
setScaleKey( spep_1-3 + 262, 1, 0.36, 0.36 );
setScaleKey( spep_1-3 + 264, 1, 0.35, 0.35 );
setScaleKey( spep_1-3 + 266, 1, 0.34, 0.34 );
setScaleKey( spep_1-3 + 268, 1, 0.34, 0.34 );
setScaleKey( spep_1-3 + 270, 1, 0.33, 0.33 );
setScaleKey( spep_1-3 + 272, 1, 0.33, 0.33 );
setScaleKey( spep_1-3 + 274, 1, 0.32, 0.32 );
setScaleKey( spep_1-3 + 276, 1, 0.32, 0.32 );
setScaleKey( spep_1-3 + 278, 1, 0.31, 0.31 );
setScaleKey( spep_1-3 + 280, 1, 0.31, 0.31 );
setScaleKey( spep_1-3 + 282, 1, 0.3, 0.3 );
setScaleKey( spep_1-3 + 284, 1, 0.29, 0.29 );
setScaleKey( spep_1-3 + 286, 1, 0.29, 0.29 );
setScaleKey( spep_1-3 + 288, 1, 0.28, 0.28 );
setScaleKey( spep_1-3 + 290, 1, 0.27, 0.27 );
setScaleKey( spep_1-3 + 292, 1, 0.26, 0.26 );
setScaleKey( spep_1-3 + 294, 1, 0.25, 0.25 );
setScaleKey( spep_1-3 + 296, 1, 0.25, 0.25 );
setScaleKey( spep_1-3 + 298, 1, 0.24, 0.24 );
setScaleKey( spep_1-3 + 300, 1, 0.23, 0.23 );
setScaleKey( spep_1-3 + 302, 1, 0.21, 0.21 );
setScaleKey( spep_1-3 + 304, 1, 0.2, 0.2 );
setScaleKey( spep_1-3 + 306, 1, 0.19, 0.19 );
setScaleKey( spep_1-3 + 308, 1, 0.18, 0.18 );
setScaleKey( spep_1-3 + 310, 1, 0.2, 0.2 );
setScaleKey( spep_1+ 388, 1, 0.2, 0.2 );

setRotateKey( spep_1-3 + 37, 1, -7.7 );
setRotateKey( spep_1-3 + 40, 1, -7.7 );
setRotateKey( spep_1-3 + 42, 1, -7.6 );
setRotateKey( spep_1-3 + 44, 1, -7.2 );
setRotateKey( spep_1-3 + 46, 1, -6.7 );
setRotateKey( spep_1-3 + 48, 1, -5.9 );
setRotateKey( spep_1-3 + 50, 1, -4.9 );
setRotateKey( spep_1-3 + 52, 1, -3.6 );
setRotateKey( spep_1-3 + 54, 1, -2.2 );
setRotateKey( spep_1-3 + 56, 1, -0.5 );
setRotateKey( spep_1-3 + 58, 1, 1.5 );
setRotateKey( spep_1-3 + 61, 1, 1.5 );
setRotateKey( spep_1-3 + 60, 1, 3.6 );
setRotateKey( spep_1-3 + 62, 1, -13.5 );
setRotateKey( spep_1-3 + 64, 1, -12.1 );
setRotateKey( spep_1-3 + 66, 1, -10.8 );
setRotateKey( spep_1-3 + 68, 1, -9.4 );
setRotateKey( spep_1-3 + 70, 1, -10.3 );
setRotateKey( spep_1-3 + 72, 1, -11.1 );
setRotateKey( spep_1-3 + 74, 1, -12 );
setRotateKey( spep_1-3 + 76, 1, -12.9 );
setRotateKey( spep_1-3 + 78, 1, -13.7 );
setRotateKey( spep_1-3 + 80, 1, -14.6 );
setRotateKey( spep_1-3 + 82, 1, -15.4 );
setRotateKey( spep_1-3 + 84, 1, -16.3 );
setRotateKey( spep_1-3 + 86, 1, -17.2 );
setRotateKey( spep_1-3 + 88, 1, -18 );
setRotateKey( spep_1-3 + 90, 1, -18.9 );
setRotateKey( spep_1-3 + 92, 1, -20.1 );
setRotateKey( spep_1-3 + 94, 1, -21.2 );
setRotateKey( spep_1-3 + 96, 1, -22.4 );
setRotateKey( spep_1-3 + 98, 1, -23.5 );
setRotateKey( spep_1-3 + 100, 1, -24.7 );
setRotateKey( spep_1-3 + 102, 1, -25.8 );
setRotateKey( spep_1-3 + 104, 1, -27 );
setRotateKey( spep_1-3 + 106, 1, -26.3 );
setRotateKey( spep_1-3 + 108, 1, -25.6 );
setRotateKey( spep_1-3 + 110, 1, -24.9 );
setRotateKey( spep_1-3 + 112, 1, -24.8 );
setRotateKey( spep_1-3 + 114, 1, -20.4 );
setRotateKey( spep_1-3 + 116, 1, -16.1 );
setRotateKey( spep_1-3 + 118, 1, -11.7 );
setRotateKey( spep_1-3 + 120, 1, -7.4 );
setRotateKey( spep_1-3 + 122, 1, -3 );
setRotateKey( spep_1-3 + 124, 1, 1.3 );
setRotateKey( spep_1-3 + 126, 1, 5.7 );
setRotateKey( spep_1-3 + 128, 1, -1.3 );
setRotateKey( spep_1-3 + 130, 1, -8.4 );
setRotateKey( spep_1-3 + 132, 1, -15.4 );
setRotateKey( spep_1-3 + 134, 1, -22.4 );
setRotateKey( spep_1-3 + 136, 1, -29.5 );
setRotateKey( spep_1-3 + 138, 1, -36.5 );
setRotateKey( spep_1-3 + 140, 1, -40.5 );
setRotateKey( spep_1-3 + 142, 1, -44.4 );
setRotateKey( spep_1-3 + 144, 1, -48.4 );
setRotateKey( spep_1-3 + 146, 1, -52.4 );
setRotateKey( spep_1-3 + 148, 1, -56.4 );
setRotateKey( spep_1-3 + 150, 1, -60.3 );
setRotateKey( spep_1-3 + 152, 1, -64.3 );
setRotateKey( spep_1-3 + 154, 1, -51.9 );
setRotateKey( spep_1-3 + 156, 1, -39.5 );
setRotateKey( spep_1-3 + 158, 1, -27.1 );
setRotateKey( spep_1-3 + 160, 1, -25.9 );
setRotateKey( spep_1-3 + 162, 1, -24.8 );
setRotateKey( spep_1-3 + 164, 1, -26.1 );
setRotateKey( spep_1-3 + 166, 1, -27.6 );
setRotateKey( spep_1-3 + 168, 1, -29.1 );
setRotateKey( spep_1-3 + 170, 1, -30.6 );
setRotateKey( spep_1-3 + 172, 1, -32.1 );
setRotateKey( spep_1-3 + 174, 1, -33.6 );
setRotateKey( spep_1-3 + 176, 1, -35.1 );
setRotateKey( spep_1-3 + 178, 1, -36.6 );
setRotateKey( spep_1-3 + 180, 1, -38.2 );
setRotateKey( spep_1-3 + 182, 1, -39.7 );
setRotateKey( spep_1-3 + 184, 1, -41.2 );
setRotateKey( spep_1-3 + 186, 1, -42.7 );
setRotateKey( spep_1-3 + 188, 1, -44.3 );
setRotateKey( spep_1-3 + 190, 1, -45.8 );
setRotateKey( spep_1-3 + 192, 1, -47.3 );
setRotateKey( spep_1-3 + 194, 1, -48.8 );
setRotateKey( spep_1-3 + 196, 1, -50.4 );
setRotateKey( spep_1-3 + 198, 1, -51.9 );
setRotateKey( spep_1-3 + 200, 1, -53.4 );
setRotateKey( spep_1-3 + 202, 1, -10.5 );
setRotateKey( spep_1-3 + 226, 1, -10.5 );
setRotateKey( spep_1-3 + 228, 1, 12.1 );
setRotateKey( spep_1-3 + 230, 1, -4.6 );
setRotateKey( spep_1-3 + 232, 1, -21.3 );
setRotateKey( spep_1-3 + 234, 1, -38 );
setRotateKey( spep_1-3 + 236, 1, -54.7 );
setRotateKey( spep_1-3 + 238, 1, -71.4 );
setRotateKey( spep_1-3 + 240, 1, -66 );
setRotateKey( spep_1-3 + 242, 1, -61 );
setRotateKey( spep_1-3 + 244, 1, -56.3 );
setRotateKey( spep_1-3 + 246, 1, -51.9 );
setRotateKey( spep_1-3 + 248, 1, -47.9 );
setRotateKey( spep_1-3 + 250, 1, -44.2 );
setRotateKey( spep_1-3 + 252, 1, -40.9 );
setRotateKey( spep_1-3 + 254, 1, -37.8 );
setRotateKey( spep_1-3 + 256, 1, -35.2 );
setRotateKey( spep_1-3 + 258, 1, -32.8 );
setRotateKey( spep_1-3 + 260, 1, -30.8 );
setRotateKey( spep_1-3 + 262, 1, -31.2 );
setRotateKey( spep_1-3 + 264, 1, -31.6 );
setRotateKey( spep_1-3 + 266, 1, -32 );
setRotateKey( spep_1-3 + 268, 1, -32.5 );
setRotateKey( spep_1-3 + 270, 1, -32.9 );
setRotateKey( spep_1-3 + 272, 1, -33.4 );
setRotateKey( spep_1-3 + 274, 1, -33.9 );
setRotateKey( spep_1-3 + 276, 1, -34.2 );
setRotateKey( spep_1-3 + 278, 1, -34.6 );
setRotateKey( spep_1-3 + 280, 1, -35 );
setRotateKey( spep_1-3 + 282, 1, -35.4 );
setRotateKey( spep_1-3 + 284, 1, -35.9 );
setRotateKey( spep_1-3 + 286, 1, -36.4 );
setRotateKey( spep_1-3 + 288, 1, -37 );
setRotateKey( spep_1-3 + 290, 1, -37.5 );
setRotateKey( spep_1-3 + 292, 1, -38.2 );
setRotateKey( spep_1-3 + 294, 1, -38.8 );
setRotateKey( spep_1-3 + 296, 1, -39.5 );
setRotateKey( spep_1-3 + 298, 1, -40.2 );
setRotateKey( spep_1-3 + 300, 1, -41 );
setRotateKey( spep_1-3 + 302, 1, -41.8 );
setRotateKey( spep_1-3 + 304, 1, -42.6 );
setRotateKey( spep_1-3 + 306, 1, -43.5 );
setRotateKey( spep_1-3 + 308, 1, -44.4 );
setRotateKey( spep_1-3 + 310, 1, 0 );
setRotateKey( spep_1+ 388, 1, 0 );

-- ** 書き文字エントリー ** --
ctbago = entryEffectLife( spep_1-264 + 322,  10021, 36, 0x100, -1, 0, 38.3, 358.7 );  --バゴォッ
setEffShake( spep_1-264 + 322, ctbago, 36, 20 );

setEffMoveKey( spep_1-264 + 322, ctbago, 38.3, 358.7 , 0 );
setEffMoveKey( spep_1-264 + 324, ctbago, 27.5, 374.8 , 0 );
setEffMoveKey( spep_1-264 + 326, ctbago, 38.8, 358.1 , 0 );
setEffMoveKey( spep_1-264 + 328, ctbago, 18, 388.8 , 0 );
setEffMoveKey( spep_1-264 + 330, ctbago, 38.8, 358.1 , 0 );
setEffMoveKey( spep_1-264 + 332, ctbago, 26.4, 376.4 , 0 );
setEffMoveKey( spep_1-264 + 334, ctbago, 38.6, 358.3 , 0 );
setEffMoveKey( spep_1-264 + 358, ctbago, 38.6, 358.3 , 0 );

setEffScaleKey( spep_1-264 + 322, ctbago, 1.19, 1.19 );
setEffScaleKey( spep_1-264 + 324, ctbago, 2.15, 2.15 );
setEffScaleKey( spep_1-264 + 326, ctbago, 3.11, 3.11 );
setEffScaleKey( spep_1-264 + 328, ctbago, 4.07, 4.07 );
setEffScaleKey( spep_1-264 + 330, ctbago, 3.22, 3.22 );
setEffScaleKey( spep_1-264 + 332, ctbago, 2.37, 2.37 );
setEffScaleKey( spep_1-264 + 358, ctbago, 2.37, 2.37 );

setEffRotateKey( spep_1-264 + 322, ctbago, 6.5 );
setEffRotateKey( spep_1-264 + 358, ctbago, 6.5 );

setEffAlphaKey( spep_1-264 + 322, ctbago, 0 );
setEffAlphaKey( spep_1-264 + 323, ctbago, 255 );
setEffAlphaKey( spep_1-264 + 324, ctbago, 255 );
setEffAlphaKey( spep_1-264 + 350, ctbago, 255 );
setEffAlphaKey( spep_1-264 + 352, ctbago, 191 );
setEffAlphaKey( spep_1-264 + 354, ctbago, 128 );
setEffAlphaKey( spep_1-264 + 356, ctbago, 64 );
setEffAlphaKey( spep_1-264 + 358, ctbago, 0 );

ctdogon = entryEffectLife( spep_1-262 + 568,  10018, 58, 0x100, -1, 0, -72, 371.3 );  --ドゴォン
setEffShake( spep_1-262 + 568, ctdogon, 58, 20 );

setEffMoveKey( spep_1-262 + 568, ctdogon, -72, 371.3 , 0 );
setEffMoveKey( spep_1-262 + 570, ctdogon, -74, 372.2 , 0 );
setEffMoveKey( spep_1-262 + 572, ctdogon, -71.8, 370.8 , 0 );
setEffMoveKey( spep_1-262 + 574, ctdogon, -74.1, 372.2 , 0 );
setEffMoveKey( spep_1-262 + 576, ctdogon, -71.9, 371.1 , 0 );
setEffMoveKey( spep_1-262 + 578, ctdogon, -73.7, 372.1 , 0 );
setEffMoveKey( spep_1-262 + 626, ctdogon, -73.7, 372.1 , 0 );

setEffScaleKey( spep_1-262 + 568, ctdogon, 1.83, 1.83 );
setEffScaleKey( spep_1-262 + 570, ctdogon, 2.7, 2.7 );
setEffScaleKey( spep_1-262 + 572, ctdogon, 3.57, 3.57 );
setEffScaleKey( spep_1-262 + 574, ctdogon, 2.99, 2.99 );
setEffScaleKey( spep_1-262 + 576, ctdogon, 2.4, 2.4 );
setEffScaleKey( spep_1-262 + 626, ctdogon, 2.4, 2.4 );

setEffRotateKey( spep_1-262 + 568, ctdogon, -7 );
setEffRotateKey( spep_1-262 + 626, ctdogon, -7 );

setEffAlphaKey( spep_1-262 + 568, ctdogon, 0 );
setEffAlphaKey( spep_1-262 + 569, ctdogon, 255 );
setEffAlphaKey( spep_1-262 + 570, ctdogon, 255 );
setEffAlphaKey( spep_1-262 + 614, ctdogon, 255 );
setEffAlphaKey( spep_1-262 + 616, ctdogon, 213 );
setEffAlphaKey( spep_1-262 + 618, ctdogon, 170 );
setEffAlphaKey( spep_1-262 + 620, ctdogon, 128 );
setEffAlphaKey( spep_1-262 + 622, ctdogon, 85 );
setEffAlphaKey( spep_1-262 + 624, ctdogon, 42 );
setEffAlphaKey( spep_1-262 + 626, ctdogon, 0 );

--SE
playSe( spep_1, SE_04 );  --突進
--playSe( spep_1+38, SE_04 );  --目線カメラ
playSe( spep_1+58, 1011 );  --目線カメラ
SE2=playSe( spep_1+108, 1044 );  --貫通
stopSe(spep_1+160,SE2,0);
playSe( spep_1+162, 1030 );  --飛び出す
playSe( spep_1+172, 44 );  --飛ぶ
playSe( spep_1+200, 1002 );  --ぶつかる
playSe( spep_1+228, 1002 );  --ぶつかる
playSe( spep_1+306, 1011 );  --ぶつかる


-- ** ホワイトフェード ** --
entryFade( spep_1 + 58, 2, 0, 4, fcolor_r, fcolor_g, fcolor_b, 100 );  -- white fade
entryFade( spep_1 + 382, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- 次の準備
spep_2=spep_1+390;
------------------------------------------------------
-- ナビ構え
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffectLife( spep_2 + 0, SP_05x, 150, 0x80, -1, 0, 0, 0 );  --溜め(ef_001)
setEffMoveKey( spep_2 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 150, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hit_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 150, hit_f, -1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, hit_f, 255 );
setEffAlphaKey( spep_2 + 150, hit_f, 255 );
setEffRotateKey( spep_2 + 0, hit_f, 0 );
setEffRotateKey( spep_2 + 150, hit_f, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_2 + 0,  906, 148, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen1, 148, 25 );

setEffMoveKey( spep_2 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 148, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_2 + 148, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen1, 0 );
setEffRotateKey( spep_2 + 148, shuchusen1, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 148, shuchusen1, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_2+8 + 60, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_2+8 + 60, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--文字エントリー
ctgogo = entryEffectLife( spep_2+8 + 72,  190006, 74, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_2+8 + 72, ctgogo, 74, 10 );

setEffMoveKey( spep_2+8 + 72, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_2+8 + 146, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_2+8 + 72, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_2+8 + 139, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_2+8 + 140, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_2+8 + 142, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_2+8 + 144, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_2+8 + 146, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_2+8 + 72, ctgogo, 0 );
setEffRotateKey( spep_2+8 + 146, ctgogo, 0 );

setEffAlphaKey( spep_2+8 + 72, ctgogo, 0 );
setEffAlphaKey( spep_2+8 + 73, ctgogo, 255 );
setEffAlphaKey( spep_2+8 + 74, ctgogo, 255 );
setEffAlphaKey( spep_2+8 + 146, ctgogo, 255 );

--SE
playSe( spep_2, SE_03 );  --気溜め
playSe( spep_2 + 20, SE_03 );  --気溜め
playSe( spep_2 + 40, SE_03 );  --気溜め
playSe( spep_2 + 60, SE_03 );  --気溜め
playSe( spep_2 + 80, SE_04 );  --ゴゴゴ

-- ** ホワイトフェード ** --
entryFade( spep_2 + 142, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- 次の準備
spep_3=spep_2+150;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen2, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen2, 0 );
setEffRotateKey( spep_3 + 90, shuchusen2, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen2, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_4 = spep_3 + 94;

--------------------------------------
--発射
--------------------------------------
-- ** エフェクト等 ** --
strike = entryEffectLife( spep_4 + 0, SP_06x, 100, 0x80, -1, 0, 0, 0 );  --溜め(ef_001)
setEffMoveKey( spep_4 + 0, strike, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, strike, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, strike, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, strike, 1.0, 1.0 );
setEffAlphaKey( spep_4 + 0, strike, 255 );
setEffAlphaKey( spep_4 + 100, strike, 255 );
setEffRotateKey( spep_4 + 0, strike, 0 );
setEffRotateKey( spep_4 + 100, strike, 0 );

-- ** 書き文字エントリー ** --
ctzuo1 = entryEffectLife( spep_4-4 + 22,  10012, 20, 0x100, -1, 0, -17.7, 313 );  --ズオッ
setEffShake( spep_4-4 + 22, ctzuo1, 20, 20 );

setEffMoveKey( spep_4-4 + 22, ctzuo1, -17.7, 313 , 0 );
setEffMoveKey( spep_4-4 + 24, ctzuo1, -35.7, 356 , 0 );
setEffMoveKey( spep_4-4 + 26, ctzuo1, -81.2, 407.4 , 0 );
setEffMoveKey( spep_4-4 + 28, ctzuo1, -64.3, 405.9 , 0 );
setEffMoveKey( spep_4-4 + 30, ctzuo1, -92.6, 407.5 , 0 );
setEffMoveKey( spep_4-4 + 32, ctzuo1, -75.6, 406.3 , 0 );
setEffMoveKey( spep_4-4 + 34, ctzuo1, -103.9, 407.7 , 0 );
setEffMoveKey( spep_4-4 + 36, ctzuo1, -87, 406.6 , 0 );
setEffMoveKey( spep_4-4 + 38, ctzuo1, -118.9, 421.2 , 0 );
setEffMoveKey( spep_4-4 + 40, ctzuo1, -82.5, 426.4 , 0 );
setEffMoveKey( spep_4-4 + 42, ctzuo1, -79.3, 433.2 , 0 );

setEffScaleKey( spep_4-4 + 22, ctzuo1, 0.34, 0.34 );
setEffScaleKey( spep_4-4 + 24, ctzuo1, 1.54, 1.54 );
setEffScaleKey( spep_4-4 + 26, ctzuo1, 2.73, 2.73 );
setEffScaleKey( spep_4-4 + 36, ctzuo1, 2.73, 2.73 );
setEffScaleKey( spep_4-4 + 38, ctzuo1, 4.09, 4.09 );
setEffScaleKey( spep_4-4 + 40, ctzuo1, 5.46, 5.46 );
setEffScaleKey( spep_4-4 + 42, ctzuo1, 6.82, 6.82 );

setEffRotateKey( spep_4-4 + 22, ctzuo1, 6.9 );
setEffRotateKey( spep_4-4 + 24, ctzuo1, -3.4 );
setEffRotateKey( spep_4-4 + 26, ctzuo1, -13.5 );
setEffRotateKey( spep_4-4 + 28, ctzuo1, -13.8 );
setEffRotateKey( spep_4-4 + 30, ctzuo1, -14.1 );
setEffRotateKey( spep_4-4 + 32, ctzuo1, -14.4 );
setEffRotateKey( spep_4-4 + 34, ctzuo1, -14.7 );
setEffRotateKey( spep_4-4 + 36, ctzuo1, -15 );
setEffRotateKey( spep_4-4 + 38, ctzuo1, -11.8 );
setEffRotateKey( spep_4-4 + 40, ctzuo1, -8.5 );
setEffRotateKey( spep_4-4 + 42, ctzuo1, -5.2 );

setEffAlphaKey( spep_4-4 + 22, ctzuo1, 0 );
setEffAlphaKey( spep_4-4 + 23, ctzuo1, 255 );
setEffAlphaKey( spep_4-4 + 24, ctzuo1, 255 );
setEffAlphaKey( spep_4-4 + 36, ctzuo1, 255 );
setEffAlphaKey( spep_4-4 + 38, ctzuo1, 170 );
setEffAlphaKey( spep_4-4 + 40, ctzuo1, 85 );
setEffAlphaKey( spep_4-4 + 42, ctzuo1, 0 );

-- ** ホワイトフェード ** --
entryFade( spep_4 + 18, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 100 );  -- white fade
entryFade( spep_4+ 92, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--SE
playSe( spep_4+20, SE_07 );  --ぶつかる

-- 次の準備
spep_5=spep_4+100;

--------------------------------------
--気弾迫る
--------------------------------------
-- ** エフェクト等 ** --
press_f = entryEffectLife( spep_5 + 0, SP_07x, 60, 0x100, -1, 0, 0, 0 );  --溜め(ef_001)
setEffMoveKey( spep_5 + 0, press_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 60, press_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, press_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 60, press_f, 1.0, 1.0 );
setEffAlphaKey( spep_5 + 0, press_f, 255 );
setEffAlphaKey( spep_5 + 60, press_f, 255 );
setEffRotateKey( spep_5 + 0, press_f, 0 );
setEffRotateKey( spep_5 + 60, press_f, 0 );

-- ** エフェクト等 ** --
press_b = entryEffectLife( spep_5 + 0, SP_08x, 60, 0x80, -1, 0, 0, 0 );  --溜め(ef_001)
setEffMoveKey( spep_5 + 0, press_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 60, press_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, press_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 60, press_b, 1.0, 1.0 );
setEffAlphaKey( spep_5 + 0, press_b, 255 );
setEffAlphaKey( spep_5 + 60, press_b, 255 );
setEffRotateKey( spep_5 + 0, press_b, 0 );
setEffRotateKey( spep_5 + 60, press_b, 0 );


stzudo = entryEffectLife( spep_5 ,  10014, 58, 0x100, -1, 0, -30.4, 375 );  --ズドド
setEffShake( spep_5 , stzudo, 58, 20 );

setEffMoveKey( spep_5  , stzudo, -30.4, 375 , 0 );
setEffMoveKey( spep_5 + 58, stzudo, -30.4, 375 , 0 );

setEffScaleKey( spep_5 , stzudo, 2.96, 2.96 );
setEffScaleKey( spep_5 + 58, stzudo, 2.96, 2.96 );

setEffRotateKey( spep_5 , stzudo, -65.2 );
setEffRotateKey( spep_5 + 58, stzudo, -65.2 );

setEffAlphaKey( spep_5 , stzudo, 255 );
setEffAlphaKey( spep_5 + 58, stzudo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 58, 1, 0 );
changeAnime( spep_5 + 0, 1, 108 );  --ダメージ（吹き飛び）

setMoveKey( spep_5 + 0, 1, -204.4, -219.3 , 0 );
setMoveKey( spep_5 + 2, 1, -203.2, -217.8 , 0 );
setMoveKey( spep_5 + 4, 1, -201.9, -216 , 0 );
setMoveKey( spep_5 + 6, 1, -200.3, -213.9 , 0 );
setMoveKey( spep_5 + 8, 1, -198.5, -211.4 , 0 );
setMoveKey( spep_5 + 10, 1, -196.5, -208.7 , 0 );
setMoveKey( spep_5 + 12, 1, -194.3, -205.8 , 0 );
setMoveKey( spep_5 + 14, 1, -191.9, -202.5 , 0 );
setMoveKey( spep_5 + 16, 1, -189.3, -198.9 , 0 );
setMoveKey( spep_5 + 18, 1, -186.4, -195.1 , 0 );
setMoveKey( spep_5 + 20, 1, -183.3, -190.9 , 0 );
setMoveKey( spep_5 + 22, 1, -180.1, -186.5 , 0 );
setMoveKey( spep_5 + 24, 1, -176.6, -181.8 , 0 );
setMoveKey( spep_5 + 26, 1, -172.9, -176.8 , 0 );
setMoveKey( spep_5 + 28, 1, -168.9, -171.5 , 0 );
setMoveKey( spep_5 + 30, 1, -164.8, -165.9 , 0 );
setMoveKey( spep_5 + 32, 1, -160.5, -160 , 0 );
setMoveKey( spep_5 + 34, 1, -155.9, -153.8 , 0 );
setMoveKey( spep_5 + 36, 1, -151.1, -147.4 , 0 );
setMoveKey( spep_5 + 38, 1, -146.1, -140.6 , 0 );
setMoveKey( spep_5 + 40, 1, -140.9, -133.6 , 0 );
setMoveKey( spep_5 + 42, 1, -135.5, -126.3 , 0 );
setMoveKey( spep_5 + 44, 1, -129.9, -118.6 , 0 );
setMoveKey( spep_5 + 46, 1, -124, -110.7 , 0 );
setMoveKey( spep_5 + 48, 1, -118, -102.6 , 0 );
setMoveKey( spep_5 + 50, 1, -111.7, -94.1 , 0 );
setMoveKey( spep_5 + 52, 1, -105.2, -85.3 , 0 );
setMoveKey( spep_5 + 54, 1, -98.5, -76.2 , 0 );
setMoveKey( spep_5 + 56, 1, -91.6, -66.9 , 0 );
setMoveKey( spep_5 + 58, 1, -84.5, -57.2 , 0 );

setScaleKey( spep_5 + 0, 1, -0.43, 0.43 );
setScaleKey( spep_5 + 2, 1, -0.44, 0.44 );
setScaleKey( spep_5 + 4, 1, -0.45, 0.45 );
setScaleKey( spep_5 + 6, 1, -0.46, 0.46 );
setScaleKey( spep_5 + 8, 1, -0.48, 0.48 );
setScaleKey( spep_5 + 10, 1, -0.5, 0.5 );
setScaleKey( spep_5 + 12, 1, -0.51, 0.51 );
setScaleKey( spep_5 + 14, 1, -0.53, 0.53 );
setScaleKey( spep_5 + 16, 1, -0.55, 0.55 );
setScaleKey( spep_5 + 18, 1, -0.58, 0.58 );
setScaleKey( spep_5 + 20, 1, -0.6, 0.6 );
setScaleKey( spep_5 + 22, 1, -0.63, 0.63 );
setScaleKey( spep_5 + 24, 1, -0.66, 0.66 );
setScaleKey( spep_5 + 26, 1, -0.69, 0.69 );
setScaleKey( spep_5 + 28, 1, -0.72, 0.72 );
setScaleKey( spep_5 + 30, 1, -0.75, 0.75 );
setScaleKey( spep_5 + 32, 1, -0.79, 0.79 );
setScaleKey( spep_5 + 34, 1, -0.82, 0.82 );
setScaleKey( spep_5 + 36, 1, -0.86, 0.86 );
setScaleKey( spep_5 + 38, 1, -0.9, 0.9 );
setScaleKey( spep_5 + 40, 1, -0.94, 0.94 );
setScaleKey( spep_5 + 42, 1, -0.99, 0.99 );
setScaleKey( spep_5 + 44, 1, -1.03, 1.03 );
setScaleKey( spep_5 + 46, 1, -1.08, 1.08 );
setScaleKey( spep_5 + 48, 1, -1.13, 1.13 );
setScaleKey( spep_5 + 50, 1, -1.18, 1.18 );
setScaleKey( spep_5 + 52, 1, -1.23, 1.23 );
setScaleKey( spep_5 + 54, 1, -1.29, 1.29 );
setScaleKey( spep_5 + 56, 1, -1.34, 1.34 );
setScaleKey( spep_5 + 58, 1, -1.4, 1.4 );

setRotateKey( spep_5 + 0, 1, -30 );
setRotateKey( spep_5 + 58, 1, -30 );

--SE
playSe( spep_5, SE_07 );  --ぶつかる

-- ** ホワイトフェード ** --
entryFade( spep_5+ 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- 次の準備
spep_6=spep_5+60;

--------------------------------------
--爆発
--------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_6 + 0, SP_09x,  0x80, -1, 0, 0, 0 );  --溜め(ef_001)
setEffMoveKey( spep_6 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_6 + 220, explosion, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_6 + 220, explosion, 1.0, 1.0 );
setEffAlphaKey( spep_6 + 0, explosion, 255 );
setEffAlphaKey( spep_6 + 220, explosion, 255 );
setEffRotateKey( spep_6 + 0, explosion, 0 );
setEffRotateKey( spep_6 + 220, explosion, 0 );

--SE
playSe( spep_6, 1024 );  --ぶつかる

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 58 );
entryFade( spep_6 + 200, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_6 + 210 );


end