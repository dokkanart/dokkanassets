--1020090:孫悟飯(青年期)_潜在能力解放(アクティブスキル)
--battle_301204

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
SP_01=	3121	;--	孫悟飯(青年期)_アクティブ・変身演出

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
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
active = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, active, 0, 0, 0 );
setEffMoveKey( spep_0 + 1140, active, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, active, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1140, active, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, active, 0 );
setEffRotateKey( spep_0 + 1140, active, 0 );
setEffAlphaKey( spep_0 + 0, active, 255 );
setEffAlphaKey( spep_0 + 1140, active, 255 );


-------------------------------------------
--SE
-------------------------------------------
playSe( spep_0 + 10, 1018 );--顔カットイン
setSeVolume( spep_0 + 10, 1018, 63 );
playSe( spep_0 + 32, 1035 );--気ダメ
playSe( spep_0 + 32, 1023 );--気ダメ
setSeVolume( spep_0 + 32, 1023, 71 );
playSe( spep_0 + 94, 1067 );--爆発奥から
setSeVolume( spep_0 + 94, 1067, 74 );
se_1044 = playSe( spep_0 + 94, 1044 );--爆発奥から
setSeVolume( spep_0 + 94, 1044, 0 );
setSeVolume( spep_0 + 120, 1044, 0 );
setSeVolume( spep_0 + 121, 1044, 10.47 );
setSeVolume( spep_0 + 122, 1044, 20.94 );
setSeVolume( spep_0 + 123, 1044, 31.41 );
setSeVolume( spep_0 + 124, 1044, 41.88 );
setSeVolume( spep_0 + 125, 1044, 52.35 );
setSeVolume( spep_0 + 126, 1044, 62.82 );
setSeVolume( spep_0 + 127, 1044, 73.29 );
setSeVolume( spep_0 + 128, 1044, 83.76 );
setSeVolume( spep_0 + 129, 1044, 94.24 );
setSeVolume( spep_0 + 130, 1044, 104.71 );
setSeVolume( spep_0 + 131, 1044, 115.18 );
setSeVolume( spep_0 + 132, 1044, 125.65 );
setSeVolume( spep_0 + 133, 1044, 136.12 );
setSeVolume( spep_0 + 134, 1044, 146.59 );
setSeVolume( spep_0 + 135, 1044, 157.06 );
setSeVolume( spep_0 + 136, 1044, 167.53 );
setSeVolume( spep_0 + 137, 1044, 178 );
setSeVolume( spep_0 + 155, 1044,175.05);
setSeVolume( spep_0 + 156, 1044,172.1);
setSeVolume( spep_0 + 157, 1044,169.15);
setSeVolume( spep_0 + 158, 1044,166.2);
setSeVolume( spep_0 + 159, 1044,163.25);
setSeVolume( spep_0 + 160, 1044,160.3);
setSeVolume( spep_0 + 161, 1044,157.35);
setSeVolume( spep_0 + 162, 1044,154.4);
setSeVolume( spep_0 + 163, 1044,151.45);
setSeVolume( spep_0 + 164, 1044,148.5);
setSeVolume( spep_0 + 165, 1044,145.55);
setSeVolume( spep_0 + 166, 1044,142.6);
setSeVolume( spep_0 + 167, 1044,139.65);
setSeVolume( spep_0 + 168, 1044,136.7);
setSeVolume( spep_0 + 169, 1044,133.75);
setSeVolume( spep_0 + 170, 1044,130.8);
setSeVolume( spep_0 + 171, 1044,127.85);
setSeVolume( spep_0 + 172, 1044,124.9);
setSeVolume( spep_0 + 173, 1044,121.95);
setSeVolume( spep_0 + 174, 1044,119);
setSeVolume( spep_0 + 175, 1044,116.05);
setSeVolume( spep_0 + 176, 1044,113.1);
setSeVolume( spep_0 + 177, 1044,110.15);
setSeVolume( spep_0 + 178, 1044,107.2);
setSeVolume( spep_0 + 179, 1044,104.25);
setSeVolume( spep_0 + 180, 1044,101.3);
setSeVolume( spep_0 + 181, 1044,98.35);
setSeVolume( spep_0 + 182, 1044,95.4);
setSeVolume( spep_0 + 183, 1044,92.45);
setSeVolume( spep_0 + 184, 1044,89.5);
setSeVolume( spep_0 + 185, 1044,86.55);
setSeVolume( spep_0 + 186, 1044,83.6);
setSeVolume( spep_0 + 187, 1044,80.65);
setSeVolume( spep_0 + 188, 1044,77.7);
setSeVolume( spep_0 + 189, 1044,74.75);
setSeVolume( spep_0 + 190, 1044,71.8);
setSeVolume( spep_0 + 191, 1044,68.85);
setSeVolume( spep_0 + 192, 1044,65.9);
setSeVolume( spep_0 + 193, 1044,62.95);
setSeVolume( spep_0 + 194, 1044,60);
setSeVolume( spep_0 + 195, 1044,57.05);
setSeVolume( spep_0 + 196, 1044,54.1);
setSeVolume( spep_0 + 197, 1044,51.15);
setSeVolume( spep_0 + 198, 1044,48.2);
setSeVolume( spep_0 + 199, 1044,45.25);
setSeVolume( spep_0 + 200, 1044,42.3);
setSeVolume( spep_0 + 201, 1044,39.35);
setSeVolume( spep_0 + 202, 1044,36.4);
setSeVolume( spep_0 + 203, 1044,33.45);
setSeVolume( spep_0 + 204, 1044,30.5);
setSeVolume( spep_0 + 205, 1044,27.55);
setSeVolume( spep_0 + 206, 1044,24.6);
setSeVolume( spep_0 + 207, 1044,21.65);
setSeVolume( spep_0 + 208, 1044,18.7);
setSeVolume( spep_0 + 209, 1044,15.75);
setSeVolume( spep_0 + 210, 1044,12.80);
setSeVolume( spep_0 + 211, 1044,9.85);
setSeVolume( spep_0 + 212, 1044,6.9);
setSeVolume( spep_0 + 213, 1044,3.95);
setSeVolume( spep_0 + 214, 1044,0);
playSe( spep_0 + 103, 1072 );--爆発奥から
se_1168 = playSe( spep_0 + 122, 1168 );--爆発奥から
setSeVolume( spep_0 + 122, 1168, 74 );
setSeVolume( spep_0 + 197, 1168,74);
setSeVolume( spep_0 + 198, 1168,73.58);
setSeVolume( spep_0 + 199, 1168,73.16);
setSeVolume( spep_0 + 200, 1168,72.74);
setSeVolume( spep_0 + 201, 1168,72.32);
setSeVolume( spep_0 + 202, 1168,71.9);
setSeVolume( spep_0 + 203, 1168,71.48);
setSeVolume( spep_0 + 204, 1168,71.06);
setSeVolume( spep_0 + 205, 1168,70.64);
setSeVolume( spep_0 + 206, 1168,70.22);
setSeVolume( spep_0 + 207, 1168,69.8);
setSeVolume( spep_0 + 208, 1168,69.38);
setSeVolume( spep_0 + 209, 1168,68.96);
setSeVolume( spep_0 + 210, 1168,68.54);
setSeVolume( spep_0 + 211, 1168,68.12);
setSeVolume( spep_0 + 212, 1168,67.7);
setSeVolume( spep_0 + 213, 1168,67.28);
setSeVolume( spep_0 + 214, 1168,66.86);
setSeVolume( spep_0 + 215, 1168,66.44);
setSeVolume( spep_0 + 216, 1168,66.02);
setSeVolume( spep_0 + 217, 1168,65.6);
setSeVolume( spep_0 + 218, 1168,65.18);
setSeVolume( spep_0 + 219, 1168,64.76);
setSeVolume( spep_0 + 220, 1168,64.34);
setSeVolume( spep_0 + 221, 1168,63.92);
setSeVolume( spep_0 + 222, 1168,63.5);
setSeVolume( spep_0 + 223, 1168,63.08);
setSeVolume( spep_0 + 224, 1168,62.66);
setSeVolume( spep_0 + 225, 1168,62.24);
setSeVolume( spep_0 + 226, 1168,61.82);
setSeVolume( spep_0 + 227, 1168,61.39);
setSeVolume( spep_0 + 228, 1168,60.97);
setSeVolume( spep_0 + 229, 1168,60.55);
setSeVolume( spep_0 + 230, 1168,60.13);
setSeVolume( spep_0 + 231, 1168,59.71);
setSeVolume( spep_0 + 232, 1168,59.29);
setSeVolume( spep_0 + 233, 1168,58.87);
setSeVolume( spep_0 + 234, 1168,58.45);
setSeVolume( spep_0 + 235, 1168,58.03);
setSeVolume( spep_0 + 236, 1168,57.61);
setSeVolume( spep_0 + 237, 1168,57.19);
setSeVolume( spep_0 + 238, 1168,56.77);
setSeVolume( spep_0 + 239, 1168,56.35);
setSeVolume( spep_0 + 240, 1168,55.93);
setSeVolume( spep_0 + 241, 1168,55.51);
setSeVolume( spep_0 + 242, 1168,55.09);
setSeVolume( spep_0 + 243, 1168,54.67);
setSeVolume( spep_0 + 244, 1168,54.25);
setSeVolume( spep_0 + 245, 1168,53.83);
setSeVolume( spep_0 + 246, 1168,53.41);
setSeVolume( spep_0 + 247, 1168,52.99);
setSeVolume( spep_0 + 248, 1168,52.57);
setSeVolume( spep_0 + 249, 1168,52.15);
setSeVolume( spep_0 + 250, 1168,51.73);
setSeVolume( spep_0 + 251, 1168,51.31);
setSeVolume( spep_0 + 252, 1168,50.89);
setSeVolume( spep_0 + 253, 1168,50.47);
setSeVolume( spep_0 + 254, 1168,50.05);
setSeVolume( spep_0 + 255, 1168,49.63);
setSeVolume( spep_0 + 256, 1168,49.21);
setSeVolume( spep_0 + 257, 1168,48.79);
setSeVolume( spep_0 + 258, 1168,48.37);
setSeVolume( spep_0 + 259, 1168,47.95);
setSeVolume( spep_0 + 260, 1168,47.53);
setSeVolume( spep_0 + 261, 1168,47.11);
setSeVolume( spep_0 + 262, 1168,46.69);
setSeVolume( spep_0 + 263, 1168,46.27);
setSeVolume( spep_0 + 264, 1168,45.85);
setSeVolume( spep_0 + 265, 1168,45.43);
setSeVolume( spep_0 + 266, 1168,45.01);
setSeVolume( spep_0 + 267, 1168,44.59);
setSeVolume( spep_0 + 268, 1168,44.17);
setSeVolume( spep_0 + 269, 1168,43.75);
setSeVolume( spep_0 + 270, 1168,43.33);
setSeVolume( spep_0 + 271, 1168,42.91);
setSeVolume( spep_0 + 272, 1168,42.49);
setSeVolume( spep_0 + 273, 1168,42.07);
setSeVolume( spep_0 + 274, 1168,41.65);
setSeVolume( spep_0 + 275, 1168,41.23);
setSeVolume( spep_0 + 276, 1168,40.81);
setSeVolume( spep_0 + 277, 1168,40.39);
setSeVolume( spep_0 + 278, 1168,39.97);
setSeVolume( spep_0 + 279, 1168,39.55);
setSeVolume( spep_0 + 280, 1168,39.13);
setSeVolume( spep_0 + 281, 1168,38.71);
setSeVolume( spep_0 + 282, 1168,38.29);
setSeVolume( spep_0 + 283, 1168,37.87);
setSeVolume( spep_0 + 284, 1168,37.45);
setSeVolume( spep_0 + 285, 1168,37.03);
setSeVolume( spep_0 + 286, 1168,36.61);
setSeVolume( spep_0 + 287, 1168,36.19);
setSeVolume( spep_0 + 288, 1168,35.77);
setSeVolume( spep_0 + 289, 1168,35.35);
setSeVolume( spep_0 + 290, 1168,34.93);
setSeVolume( spep_0 + 291, 1168,34.51);
setSeVolume( spep_0 + 292, 1168,34.09);
setSeVolume( spep_0 + 293, 1168,33.67);
setSeVolume( spep_0 + 294, 1168,33.25);
setSeVolume( spep_0 + 295, 1168,32.83);
setSeVolume( spep_0 + 296, 1168,32.41);
setSeVolume( spep_0 + 297, 1168,31.99);
setSeVolume( spep_0 + 298, 1168,31.57);
setSeVolume( spep_0 + 299, 1168,31.15);
setSeVolume( spep_0 + 300, 1168,30.73);
setSeVolume( spep_0 + 301, 1168,30.31);
setSeVolume( spep_0 + 302, 1168,29.89);
setSeVolume( spep_0 + 303, 1168,29.47);
setSeVolume( spep_0 + 304, 1168,29.05);
setSeVolume( spep_0 + 305, 1168,28.63);
setSeVolume( spep_0 + 306, 1168,28.21);
setSeVolume( spep_0 + 307, 1168,27.79);
setSeVolume( spep_0 + 308, 1168,27.37);
setSeVolume( spep_0 + 309, 1168,26.95);
setSeVolume( spep_0 + 310, 1168,26.53);
setSeVolume( spep_0 + 311, 1168,26.11);
setSeVolume( spep_0 + 312, 1168,25.69);
setSeVolume( spep_0 + 313, 1168,25.27);
setSeVolume( spep_0 + 314, 1168,24.85);
setSeVolume( spep_0 + 315, 1168,24.43);
setSeVolume( spep_0 + 316, 1168,24.01);
setSeVolume( spep_0 + 317, 1168,23.59);
setSeVolume( spep_0 + 318, 1168,23.17);
setSeVolume( spep_0 + 319, 1168,22.75);
setSeVolume( spep_0 + 320, 1168,22.33);
setSeVolume( spep_0 + 321, 1168,21.91);
setSeVolume( spep_0 + 322, 1168,21.49);
setSeVolume( spep_0 + 323, 1168,21.07);
setSeVolume( spep_0 + 324, 1168,20.65);
setSeVolume( spep_0 + 325, 1168,20.23);
setSeVolume( spep_0 + 326, 1168,19.81);
setSeVolume( spep_0 + 327, 1168,19.39);
setSeVolume( spep_0 + 328, 1168,18.97);
setSeVolume( spep_0 + 329, 1168,18.55);
setSeVolume( spep_0 + 330, 1168,18.13);
setSeVolume( spep_0 + 331, 1168,17.71);
setSeVolume( spep_0 + 332, 1168,17.29);
setSeVolume( spep_0 + 333, 1168,16.87);
setSeVolume( spep_0 + 334, 1168,16.45);
setSeVolume( spep_0 + 335, 1168,16.03);
setSeVolume( spep_0 + 336, 1168,15.61);
setSeVolume( spep_0 + 337, 1168,15.19);
setSeVolume( spep_0 + 338, 1168,14.77);
setSeVolume( spep_0 + 339, 1168,14.35);
setSeVolume( spep_0 + 340, 1168,13.93);
setSeVolume( spep_0 + 341, 1168,13.51);
setSeVolume( spep_0 + 342, 1168,13.09);
setSeVolume( spep_0 + 343, 1168,12.67);
setSeVolume( spep_0 + 344, 1168,12.25);
setSeVolume( spep_0 + 345, 1168,11.83);
setSeVolume( spep_0 + 346, 1168,11.41);
setSeVolume( spep_0 + 347, 1168,10.99);
setSeVolume( spep_0 + 348, 1168,10.57);
setSeVolume( spep_0 + 349, 1168,10.15);
setSeVolume( spep_0 + 350, 1168,9.73);
setSeVolume( spep_0 + 351, 1168,9.31);
setSeVolume( spep_0 + 352, 1168,8.89);
setSeVolume( spep_0 + 353, 1168,8.47);
setSeVolume( spep_0 + 354, 1168,8.05);
setSeVolume( spep_0 + 355, 1168,7.63);
setSeVolume( spep_0 + 356, 1168,7.21);
setSeVolume( spep_0 + 357, 1168,6.79);
setSeVolume( spep_0 + 358, 1168,6.37);
setSeVolume( spep_0 + 359, 1168,5.95);
setSeVolume( spep_0 + 360, 1168,5.53);
setSeVolume( spep_0 + 361, 1168,5.11);
setSeVolume( spep_0 + 362, 1168,4.69);
setSeVolume( spep_0 + 363, 1168,4.27);
setSeVolume( spep_0 + 364, 1168,3.85);
setSeVolume( spep_0 + 365, 1168,3.43);
setSeVolume( spep_0 + 366, 1168,3.01);
setSeVolume( spep_0 + 367, 1168,2.59);
setSeVolume( spep_0 + 368, 1168,2.17);
setSeVolume( spep_0 + 369, 1168,1.75);
setSeVolume( spep_0 + 370, 1168,1.33);
setSeVolume( spep_0 + 371, 1168,0);
playSe( spep_0 + 250, 1175 );--キビトセリフ中
setSeVolume( spep_0 + 250, 1175, 0 );
setSeVolume( spep_0 + 292, 1175, 0 );
setSeVolume( spep_0 + 293, 1175, 0.19 );
setSeVolume( spep_0 + 294, 1175, 0.37 );
setSeVolume( spep_0 + 295, 1175, 0.56 );
setSeVolume( spep_0 + 296, 1175, 0.74 );
setSeVolume( spep_0 + 297, 1175, 0.93 );
setSeVolume( spep_0 + 298, 1175, 1.11 );
setSeVolume( spep_0 + 299, 1175, 1.30 );
setSeVolume( spep_0 + 300, 1175, 1.49 );
setSeVolume( spep_0 + 301, 1175, 1.67 );
setSeVolume( spep_0 + 302, 1175, 1.86 );
setSeVolume( spep_0 + 303, 1175, 2.04 );
setSeVolume( spep_0 + 304, 1175, 2.23 );
setSeVolume( spep_0 + 305, 1175, 2.41 );
setSeVolume( spep_0 + 306, 1175, 2.6 );
setSeVolume( spep_0 + 307, 1175, 2.79 );
setSeVolume( spep_0 + 308, 1175, 2.97 );
setSeVolume( spep_0 + 309, 1175, 3.16 );
setSeVolume( spep_0 + 310, 1175, 3.34 );
setSeVolume( spep_0 + 311, 1175, 3.53 );
setSeVolume( spep_0 + 312, 1175, 3.71 );
setSeVolume( spep_0 + 313, 1175, 3.9 );
setSeVolume( spep_0 + 314, 1175, 4.09 );
setSeVolume( spep_0 + 315, 1175, 4.27 );
setSeVolume( spep_0 + 316, 1175, 4.46 );
setSeVolume( spep_0 + 317, 1175, 4.64 );
setSeVolume( spep_0 + 318, 1175, 4.83 );
setSeVolume( spep_0 + 319, 1175, 5.01 );
setSeVolume( spep_0 + 320, 1175, 5.2 );
setSeVolume( spep_0 + 321, 1175, 5.39 );
setSeVolume( spep_0 + 322, 1175, 5.57 );
setSeVolume( spep_0 + 323, 1175, 5.76 );
setSeVolume( spep_0 + 324, 1175, 5.94 );
setSeVolume( spep_0 + 325, 1175, 6.13 );
setSeVolume( spep_0 + 326, 1175, 6.31 );
setSeVolume( spep_0 + 327, 1175, 6.50 );
setSeVolume( spep_0 + 328, 1175, 6.69 );
setSeVolume( spep_0 + 329, 1175, 6.87 );
setSeVolume( spep_0 + 330, 1175, 7.06 );
setSeVolume( spep_0 + 331, 1175, 7.24 );
setSeVolume( spep_0 + 332, 1175, 7.43 );
setSeVolume( spep_0 + 333, 1175, 7.61 );
setSeVolume( spep_0 + 334, 1175, 7.8 );
setSeVolume( spep_0 + 335, 1175, 7.99 );
setSeVolume( spep_0 + 336, 1175, 8.17 );
setSeVolume( spep_0 + 337, 1175, 8.36 );
setSeVolume( spep_0 + 338, 1175, 8.54 );
setSeVolume( spep_0 + 339, 1175, 8.73 );
setSeVolume( spep_0 + 340, 1175, 8.91 );
setSeVolume( spep_0 + 341, 1175, 9.10 );
setSeVolume( spep_0 + 342, 1175, 9.29 );
setSeVolume( spep_0 + 343, 1175, 9.47 );
setSeVolume( spep_0 + 344, 1175, 9.66 );
setSeVolume( spep_0 + 345, 1175, 9.84 );
setSeVolume( spep_0 + 346, 1175, 10.03 );
setSeVolume( spep_0 + 347, 1175, 10.21 );
setSeVolume( spep_0 + 348, 1175, 10.4 );
setSeVolume( spep_0 + 349, 1175, 10.59 );
setSeVolume( spep_0 + 350, 1175, 10.77 );
setSeVolume( spep_0 + 351, 1175, 10.96 );
setSeVolume( spep_0 + 352, 1175, 11.14 );
setSeVolume( spep_0 + 353, 1175, 11.33 );
setSeVolume( spep_0 + 354, 1175, 11.51 );
setSeVolume( spep_0 + 355, 1175, 11.70 );
setSeVolume( spep_0 + 356, 1175, 11.89 );
setSeVolume( spep_0 + 357, 1175, 12.07 );
setSeVolume( spep_0 + 358, 1175, 12.26 );
setSeVolume( spep_0 + 359, 1175, 12.44 );
setSeVolume( spep_0 + 360, 1175, 12.63 );
setSeVolume( spep_0 + 361, 1175, 12.81 );
setSeVolume( spep_0 + 362, 1175, 13 );
playSe( spep_0 + 510, 1271 );--ワープ
setSeVolume( spep_0 + 510, 1271, 0 );
setSeVolume( spep_0 + 656, 1271, 0 );
setSeVolume( spep_0 + 657, 1271, 5.56 );
setSeVolume( spep_0 + 658, 1271, 11.11 );
setSeVolume( spep_0 + 659, 1271, 16.67 );
setSeVolume( spep_0 + 660, 1271, 22.22 );
setSeVolume( spep_0 + 661, 1271, 27.78 );
setSeVolume( spep_0 + 662, 1271, 33.33 );
setSeVolume( spep_0 + 663, 1271, 38.89 );
setSeVolume( spep_0 + 664, 1271, 44.44 );
setSeVolume( spep_0 + 665, 1271, 50 );
setSeVolume( spep_0 + 666, 1271, 55.56 );
setSeVolume( spep_0 + 667, 1271, 61.11 );
setSeVolume( spep_0 + 668, 1271, 66.67 );
setSeVolume( spep_0 + 669, 1271, 72.22 );
setSeVolume( spep_0 + 670, 1271, 77.78 );
setSeVolume( spep_0 + 671, 1271, 83.33 );
setSeVolume( spep_0 + 672, 1271, 88.89 );
setSeVolume( spep_0 + 673, 1271, 94.44 );
setSeVolume( spep_0 + 674, 1271, 100 );
playSe( spep_0 + 586, 1003 );--悟空サムズアップ
setSeVolume( spep_0 + 586, 1003, 35 );
se_1270 = playSe( spep_0 + 650, 1270 );--ワープ
setSeVolume( spep_0 + 650, 1270, 126 );
playSe( spep_0 + 694, 1272 );--ワープ
playSe( spep_0 + 720, 1269 );--環境音
setSeVolume( spep_0 + 720, 1269, 0 );
setSeVolume( spep_0 + 720, 1269, 0 );
setSeVolume( spep_0 + 721, 1269, 0.5 );
setSeVolume( spep_0 + 722, 1269, 1 );
setSeVolume( spep_0 + 723, 1269, 1.5 );
setSeVolume( spep_0 + 724, 1269, 2 );
setSeVolume( spep_0 + 725, 1269, 2.5 );
setSeVolume( spep_0 + 726, 1269, 3 );
setSeVolume( spep_0 + 727, 1269, 3.5 );
setSeVolume( spep_0 + 728, 1269, 4 );
setSeVolume( spep_0 + 729, 1269, 4.5 );
setSeVolume( spep_0 + 730, 1269, 5 );
setSeVolume( spep_0 + 731, 1269, 5.5 );
setSeVolume( spep_0 + 732, 1269, 6 );
setSeVolume( spep_0 + 733, 1269, 6.5 );
setSeVolume( spep_0 + 734, 1269, 7 );
setSeVolume( spep_0 + 735, 1269, 7.5 );
setSeVolume( spep_0 + 736, 1269, 8 );
setSeVolume( spep_0 + 737, 1269, 8.5 );
setSeVolume( spep_0 + 738, 1269, 9 );
setSeVolume( spep_0 + 739, 1269, 9.5 );
setSeVolume( spep_0 + 740, 1269, 10 );
setSeVolume( spep_0 + 741, 1269, 10.5 );
setSeVolume( spep_0 + 742, 1269, 11 );
setSeVolume( spep_0 + 743, 1269, 11.5 );
setSeVolume( spep_0 + 744, 1269, 12 );
setSeVolume( spep_0 + 745, 1269, 12.5 );
setSeVolume( spep_0 + 746, 1269, 13 );
setSeVolume( spep_0 + 747, 1269, 13.5 );
setSeVolume( spep_0 + 748, 1269, 14 );
setSeVolume( spep_0 + 749, 1269, 14.5 );
setSeVolume( spep_0 + 750, 1269, 15 );
setSeVolume( spep_0 + 751, 1269, 15.5 );
setSeVolume( spep_0 + 752, 1269, 16 );
setSeVolume( spep_0 + 753, 1269, 16.5 );
setSeVolume( spep_0 + 754, 1269, 17 );
setSeVolume( spep_0 + 755, 1269, 17.5 );
setSeVolume( spep_0 + 756, 1269, 18 );
playSe( spep_0 + 810, 1232 );--セリフカットイン
setSeVolume( spep_0 + 810, 1232, 0 );
setSeVolume( spep_0 + 811, 1232, 5.86 );
setSeVolume( spep_0 + 812, 1232, 11.71 );
setSeVolume( spep_0 + 813, 1232, 17.57 );
setSeVolume( spep_0 + 814, 1232, 23.43 );
setSeVolume( spep_0 + 815, 1232, 29.29 );
setSeVolume( spep_0 + 816, 1232, 35.14 );
setSeVolume( spep_0 + 817, 1232, 41 );
playSe( spep_0 + 1036, 13 );--いくか
setSeVolume( spep_0 + 1036, 13, 65 );

stopSe( spep_0 + 214, se_1044, 0 );
stopSe( spep_0 + 371, se_1168, 0 );
stopSe( spep_0 + 702, se_1270, 0 );

-------------------------------------------
--ボイス
-------------------------------------------

--「はぁっ！！！！」
playVoice( spep_0 + 16, 165 );
setVoiceVolume( spep_0 + 16, 165, 158 );

--「す……すごい………」
playVoice( spep_0 + 200, 166 );
setVoiceVolume( spep_0 + 200, 166, 126 );

--「すばらしい救世主を送るのはわたしにまかせてください」
playVoice( spep_0 + 342, 167 );
setVoiceVolume( spep_0 + 342, 167, 126 );

--「うんバッチリ！！ありがとうございます！！」
playVoice( spep_0 + 816, 168 );
setVoiceVolume( spep_0 + 816, 168, 126 );

--「よし 行くか！」
playVoice( spep_0 + 1032, 169 );
setVoiceVolume( spep_0 + 1032, 169, 126 );

entryFade( spep_0 + 1140 -40, 10, 40, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
endPhase( spep_0 + 1140 );
else end