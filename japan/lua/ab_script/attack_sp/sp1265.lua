--1016370:孫悟空(GT)&パン(GT)&トランクス(GT)_
--ギャラクシートライアタック

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--***SE***
SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
--SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--***エフェクト***
SP_01 = 153040;  --上昇
SP_02 = 153041;  --格闘　前
SP_03 = 153042;  --格闘　奥
SP_04 = 153043;  --溜め
SP_05 = 153044;  --発射
SP_06 = 153045;  --被弾　前
SP_07 = 153046;  --被弾　奥
SP_08 = 153047;  --フィニッシュ

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI(0, 0);

changeAnime( 0, 0, 1);                       -- 立ち
changeAnime( 0, 1, 101);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    -5000,  -5000,  0);
setMoveKey(   1,   0,    -5000,  -5000,  0);
setMoveKey(   2,   0,    -5000,  -5000,  0);
setMoveKey(   3,   0,    -5000,  -5000,  0);
setMoveKey(   4,   0,    -5000,  -5000,  0);
setMoveKey(   5,   0,    -5000,  -5000,  0);
setMoveKey(   6,   0,    -5000,  -5000,  0);
setScaleKey(   0,  0,  1.5,  1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   6,   0, 1.5, 1.5);

-- 敵
setMoveKey(   0,   1,    -5000,  -5000,  0);
setMoveKey(   1,   1,    -5000,  -5000,  0);
setMoveKey(   2,   1,    -5000,  -5000,  0);
setMoveKey(   3,   1,    -5000,  -5000,  0);
setMoveKey(   4,   1,    -5000,  -5000,  0);
setMoveKey(   5,   1,    -5000,  -5000,  0);
setMoveKey(   6,   1,    -5000,  -5000,  0);
setScaleKey(   0,   1, 1.5, 1.5);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
setScaleKey(   6,   1, 1.5, 1.5);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
--飛んでいく(316F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等
tondeiku = entryEffectLife( spep_0 + 0, SP_01, 318, 0x100, -1, 0, 0, 0 );  --上昇(ef_001)

setEffMoveKey( spep_0 + 0, tondeiku, 0, 0 , 0 );
setEffMoveKey( spep_0 + 318, tondeiku, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tondeiku, 1.0, 1.0 );
setEffScaleKey( spep_0 + 318, tondeiku, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tondeiku, 0 );
setEffRotateKey( spep_0 + 318, tondeiku, 0 );
setEffAlphaKey( spep_0 + 0, tondeiku, 255 );
setEffAlphaKey( spep_0 + 315, tondeiku, 255 );
setEffAlphaKey( spep_0 + 316, tondeiku, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 318, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade(  spep_0,  0,  2,  4,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --whitefade

-- ** 音 ** --
playSe( spep_0 + 4, 44 );  --上昇
playSe( spep_0 + 144, 1018 );  --悟空
playSe( spep_0 + 206, 46 );  --パン
playSe( spep_0 + 280, 1013 );  --トランクス

--次の準備
spep_1 = spep_0 + 316;

------------------------------------------------------
--格闘(226F)
------------------------------------------------------
-- ** エフェクト等
kakome_f = entryEffectLife( spep_1 + 0, SP_02, 226, 0x100, -1, 0, 0, 0 );  --格闘　前(ef_002)

setEffMoveKey( spep_1 + 0, kakome_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 226, kakome_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kakome_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 226, kakome_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kakome_f, 0 );
setEffRotateKey( spep_1 + 226, kakome_f, 0 );
setEffAlphaKey( spep_1 + 0, kakome_f, 255 );
setEffAlphaKey( spep_1 + 225, kakome_f, 255 );
setEffAlphaKey( spep_1 + 226, kakome_f, 0 );

-- ** エフェクト等
kakome_b = entryEffectLife( spep_1 + 0, SP_03, 226, 0x80, -1, 0, 0, 0 );  --格闘　奥(ef_003)

setEffMoveKey( spep_1 + 0, kakome_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 226, kakome_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kakome_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 226, kakome_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kakome_b, 0 );
setEffRotateKey( spep_1 + 226, kakome_b, 0 );
setEffAlphaKey( spep_1 + 0, kakome_b, 255 );
setEffAlphaKey( spep_1 + 225, kakome_b, 255 );
setEffAlphaKey( spep_1 + 226, kakome_b, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 226, 0, 0, 0, 0, 255 );  --黒　背景

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 0 );

setMoveKey( spep_1 + 0, 1, -78.1, 1696.9 , 0 );
setMoveKey( spep_1 + 2, 1, -76.9, 1696.8 , 0 );
setMoveKey( spep_1 + 4, 1, -75.4, 1670.8 , 0 );
setMoveKey( spep_1 + 6, 1, -73.9, 1652.8 , 0 );
setMoveKey( spep_1 + 8, 1, -71.7, 1609.4 , 0 );
setMoveKey( spep_1 + 10, 1, -69.3, 1559.2 , 0 );
setMoveKey( spep_1 + 12, 1, -66.5, 1486.7 , 0 );
setMoveKey( spep_1 + 14, 1, -63.8, 1425.8 , 0 );
setMoveKey( spep_1 + 16, 1, -60.8, 1345.7 , 0 );
setMoveKey( spep_1 + 18, 1, -58.1, 1278 , 0 );
setMoveKey( spep_1 + 20, 1, -54.9, 1193.8 , 0 );
setMoveKey( spep_1 + 22, 1, -51.9, 1109.4 , 0 );
setMoveKey( spep_1 + 24, 1, -48.8, 1025.7 , 0 );
setMoveKey( spep_1 + 26, 1, -45.8, 943.3 , 0 );
setMoveKey( spep_1 + 28, 1, -43, 863 , 0 );
setMoveKey( spep_1 + 30, 1, -40, 775.1 , 0 );
setMoveKey( spep_1 + 32, 1, -37.3, 701.7 , 0 );
setMoveKey( spep_1 + 34, 1, -34.8, 632.3 , 0 );
setMoveKey( spep_1 + 36, 1, -32.5, 567.2 , 0 );
setMoveKey( spep_1 + 38, 1, -30.3, 506.7 , 0 );
setMoveKey( spep_1 + 40, 1, -28.2, 451.3 , 0 );

setScaleKey( spep_1 + 0, 1, 1, 1 );
setScaleKey( spep_1 + 2, 1, 1, 1 );
setScaleKey( spep_1 + 4, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 6, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 8, 1, 0.98, 0.98 );
setScaleKey( spep_1 + 10, 1, 0.97, 0.97 );
setScaleKey( spep_1 + 12, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 14, 1, 0.94, 0.94 );
setScaleKey( spep_1 + 16, 1, 0.92, 0.92 );
setScaleKey( spep_1 + 18, 1, 0.91, 0.91 );
setScaleKey( spep_1 + 20, 1, 0.89, 0.89 );
setScaleKey( spep_1 + 22, 1, 0.87, 0.87 );
setScaleKey( spep_1 + 24, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 26, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 28, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 30, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 32, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 34, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 36, 1, 0.72, 0.72 );
setScaleKey( spep_1 + 38, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 40, 1, 0.68, 0.68 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 40, 1, 0 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** 敵の動き
setMoveKey( SP_dodge + 0, 1, -28.2, 451.3 , 0 );
setMoveKey( SP_dodge + 2, 1, -26.5, 407.6 , 0 );
setMoveKey( SP_dodge + 4, 1, -24.7, 362.1 , 0 );
setMoveKey( SP_dodge + 6, 1, -23.3, 327.7 , 0 );
setMoveKey( SP_dodge + 8, 1, -22, 292.6 , 0 );
setMoveKey( SP_dodge + 10, 1, -20.9, 267.8 , 0 );

setScaleKey( SP_dodge + 0, 1, 0.68, 0.68 );
setScaleKey( SP_dodge + 2, 1, 0.67, 0.67 );
setScaleKey( SP_dodge + 4, 1, 0.65, 0.65 );
setScaleKey( SP_dodge + 6, 1, 0.64, 0.64 );
setScaleKey( SP_dodge + 8, 1, 0.62, 0.62 );
setScaleKey( SP_dodge + 10, 1, 0.61, 0.61 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

-- ** カットイン部分 ** --
speff0 = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff0, 3, 6 );                           -- カットイン差し替え

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
a = 3;
--敵の動き
setDisp( spep_1 + 205, 1, 0 );
changeAnime( spep_1 + 68 -a, 1, 6 );
changeAnime( spep_1 + 124 -a, 1, 8 );
changeAnime( spep_1 + 188 -a, 1, 107 );

setMoveKey( spep_1 + 42, 1, -26.5, 407.6 , 0 );
setMoveKey( spep_1 + 44, 1, -24.7, 362.1 , 0 );
setMoveKey( spep_1 + 46, 1, -23.3, 327.7 , 0 );
setMoveKey( spep_1 + 48, 1, -22, 292.6 , 0 );
setMoveKey( spep_1 + 50, 1, -20.9, 267.8 , 0 );
setMoveKey( spep_1 + 52, 1, -20, 247.8 , 0 );
setMoveKey( spep_1 + 54, 1, -19.4, 237.1 , 0 );
setMoveKey( spep_1 + 56, 1, -18.9, 226.5 , 0 );
setMoveKey( spep_1 + 58, 1, -18.6, 225.2 , 0 );
--setMoveKey( spep_1 + 60, 1, -18.5, 226.5 , 0 );
--setMoveKey( spep_1 + 62, 1, -18.3, 227.7 , 0 );
setMoveKey( spep_1 + 64 -a, 1, -18.2, 228.9 , 0 );
setMoveKey( spep_1 + 67 -a, 1, -18.1, 230 , 0 );
setMoveKey( spep_1 + 68 -a, 1, 53.9, 191.1 , 0 );  --初撃
setMoveKey( spep_1 + 69 -a, 1, 53.9, 191.1 , 0 );
setMoveKey( spep_1 + 70 -a, 1, 137.3, 122.6 , 0 );
setMoveKey( spep_1 + 71 -a, 1, 137.3, 122.6 , 0 );
setMoveKey( spep_1 + 72 -a, 1, 165.7, 113.2 , 0 );
setMoveKey( spep_1 + 73 -a, 1, 165.7, 113.2 , 0 );
setMoveKey( spep_1 + 74 -a, 1, 193.9, 69.9 , 0 );
setMoveKey( spep_1 + 75 -a, 1, 193.9, 69.9 , 0 );
setMoveKey( spep_1 + 76 -a, 1, 224.4, 77.1 , 0 );
setMoveKey( spep_1 + 77 -a, 1, 224.4, 77.1 , 0 );
setMoveKey( spep_1 + 78 -a, 1, 229, 48.3 , 0 );
setMoveKey( spep_1 + 80 -a, 1, 260.2, 44.4 , 0 );
setMoveKey( spep_1 + 82 -a, 1, 251.3, 29 , 0 );
setMoveKey( spep_1 + 84 -a, 1, 282.1, 29.8 , 0 );
setMoveKey( spep_1 + 86 -a, 1, 276, 12.9 , 0 );
setMoveKey( spep_1 + 88 -a, 1, 290.8, 11.1 , 0 );
setMoveKey( spep_1 + 90 -a, 1, 297.9, 5.9 , 0 );
setMoveKey( spep_1 + 92 -a, 1, 304.2, 1.4 , 0 );
setMoveKey( spep_1 + 94 -a, 1, 309.8, -2.6 , 0 );
setMoveKey( spep_1 + 96 -a, 1, 314.7, -6.1 , 0 );
setMoveKey( spep_1 + 98 -a, 1, 319.1, -9.2 , 0 );
setMoveKey( spep_1 + 100 -a, 1, 323, -11.9 , 0 );
setMoveKey( spep_1 + 102 -a, 1, 316.4, -7.5 , 0 );
setMoveKey( spep_1 + 104 -a, 1, 290.2, 10.4 , 0 );
setMoveKey( spep_1 + 106 -a, 1, 246.7, 39.9 , 0 );
setMoveKey( spep_1 + 108 -a, 1, 190.9, 77.6 , 0 );
setMoveKey( spep_1 + 110 -a, 1, 129.7, 119.1 , 0 );
setMoveKey( spep_1 + 112 -a, 1, 71.5, 158.6 , 0 );
setMoveKey( spep_1 + 114 -a, 1, 23.8, 190.9 , 0 );
setMoveKey( spep_1 + 116 -a, 1, -7.1, 211.9 , 0 );
setMoveKey( spep_1 + 118 -a, 1, -17.6, 219.2 , 0 );
setMoveKey( spep_1 + 120 -a, 1, -17, 218.8 , 0 );
setMoveKey( spep_1 + 123 -a, 1, -16.6, 218.6 , 0 );
setMoveKey( spep_1 + 124 -a, 1, -35.9, 229.4 , 0 );  --2回目被弾
setMoveKey( spep_1 + 125 -a, 1, -35.9, 229.4 , 0 );
setMoveKey( spep_1 + 126 -a, 1, -65.3, 254.5 , 0 );
setMoveKey( spep_1 + 127 -a, 1, -65.3, 254.5 , 0 );
setMoveKey( spep_1 + 128 -a, 1, -99.6, 269.2 , 0 );
setMoveKey( spep_1 + 129 -a, 1, -99.6, 269.2 , 0 );
setMoveKey( spep_1 + 130 -a, 1, -87.2, 283.6 , 0 );
setMoveKey( spep_1 + 131 -a, 1, -87.2, 283.6 , 0 );
setMoveKey( spep_1 + 132 -a, 1, -120.7, 300.5 , 0 );
setMoveKey( spep_1 + 134 -a, 1, -110.9, 303.2 , 0 );
setMoveKey( spep_1 + 136 -a, 1, -136.1, 298.7 , 0 );
setMoveKey( spep_1 + 138 -a, 1, -133.3, 325 , 0 );
setMoveKey( spep_1 + 140 -a, 1, -147.7, 312.3 , 0 );
setMoveKey( spep_1 + 142 -a, 1, -139.6, 326.8 , 0 );
setMoveKey( spep_1 + 144 -a, 1, -154.4, 317.7 , 0 );
setMoveKey( spep_1 + 146 -a, 1, -142.2, 323.5 , 0 );
setMoveKey( spep_1 + 148 -a, 1, -149, 326.5 , 0 );
setMoveKey( spep_1 + 150 -a, 1, -149.5, 327 , 0 );
setMoveKey( spep_1 + 152 -a, 1, -149.4, 327 , 0 );
setMoveKey( spep_1 + 154 -a, 1, -152.1, 326.2 , 0 );
setMoveKey( spep_1 + 156 -a, 1, -159, 317.6 , 0 );
setMoveKey( spep_1 + 158 -a, 1, -166.5, 284.5 , 0 );
setMoveKey( spep_1 + 160 -a, 1, -173.2, 241.1 , 0 );
setMoveKey( spep_1 + 162 -a, 1, -167.1, 185 , 0 );
setMoveKey( spep_1 + 164 -a, 1, -149, 117.4 , 0 );
setMoveKey( spep_1 + 166 -a, 1, -122.8, 41 , 0 );
setMoveKey( spep_1 + 168 -a, 1, -90.9, -40.2 , 0 );
setMoveKey( spep_1 + 170 -a, 1, -61.6, -114.9 , 0 );
setMoveKey( spep_1 + 172 -a, 1, -41.8, -170 , 0 );
setMoveKey( spep_1 + 174 -a, 1, -40.2, -192 , 0 );
setMoveKey( spep_1 + 176 -a, 1, -49.7, -193.5 , 0 );
setMoveKey( spep_1 + 178 -a, 1, -57.8, -194.9 , 0 );
setMoveKey( spep_1 + 180 -a, 1, -64.5, -195.9 , 0 );
setMoveKey( spep_1 + 182 -a, 1, -70.3, -196.9 , 0 );
setMoveKey( spep_1 + 184 -a, 1, -75.1, -197.7 , 0 );
setMoveKey( spep_1 + 187 -a, 1, -79, -198.3 , 0 );
setMoveKey( spep_1 + 188 -a, 1, -61.2, -236.5 , 0 );  --3回目被弾
setMoveKey( spep_1 + 189 -a, 1, -61.2, -236.5 , 0 );
setMoveKey( spep_1 + 190 -a, 1, -16.3, -326.5 , 0 );
setMoveKey( spep_1 + 191 -a, 1, -16.3, -326.5 , 0 );
setMoveKey( spep_1 + 192 -a, 1, 17.4, -509.6 , 0 );
setMoveKey( spep_1 + 193 -a, 1, 17.4, -509.6 , 0 );
setMoveKey( spep_1 + 194 -a, 1, 65.8, -642.4 , 0 );
setMoveKey( spep_1 + 195 -a, 1, 65.8, -642.4 , 0 );
setMoveKey( spep_1 + 196 -a, 1, 104.6, -803 , 0 );
setMoveKey( spep_1 + 198 -a, 1, 131.7, -896.2 , 0 );
setMoveKey( spep_1 + 200 -a, 1, 145, -990 , 0 );
setMoveKey( spep_1 + 202 -a, 1, 158.5, -1021.9 , 0 );
setMoveKey( spep_1 + 205 -a, 1, 168.6, -1055.3 , 0 );

setScaleKey( spep_1 + 42, 1, 0.67, 0.67 );
setScaleKey( spep_1 + 44, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 46, 1, 0.64, 0.64 );
setScaleKey( spep_1 + 48, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 50, 1, 0.61, 0.61 );
setScaleKey( spep_1 + 52, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 54, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 56, 1, 0.59, 0.59 );
setScaleKey( spep_1 + 68 -a, 1, 0.59, 0.59 );  --初撃
setScaleKey( spep_1 + 69 -a, 1, 0.59, 0.59 );
setScaleKey( spep_1 + 70 -a, 1, 0.64, 0.64 );
setScaleKey( spep_1 + 71 -a, 1, 0.64, 0.64 );
setScaleKey( spep_1 + 72 -a, 1, 0.67, 0.67 );
setScaleKey( spep_1 + 73 -a, 1, 0.67, 0.67 );
setScaleKey( spep_1 + 74 -a, 1, 0.69, 0.69 );
setScaleKey( spep_1 + 75 -a, 1, 0.69, 0.69 );
setScaleKey( spep_1 + 76 -a, 1, 0.71, 0.71 );
setScaleKey( spep_1 + 77 -a, 1, 0.71, 0.71 );
setScaleKey( spep_1 + 78 -a, 1, 0.72, 0.72 );
setScaleKey( spep_1 + 80 -a, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 82 -a, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 84 -a, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 86 -a, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 88 -a, 1, 0.77, 0.77 );
setScaleKey( spep_1 + 90 -a, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 92 -a, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 96 -a, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 98 -a, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 102 -a, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 104 -a, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 110 -a, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 112 -a, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 123 -a, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 124 -a, 1, 0.84, 0.84 );  --2回目被弾
setScaleKey( spep_1 + 138 -a, 1, 0.84, 0.84 );
setScaleKey( spep_1 + 140 -a, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 152 -a, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 154 -a, 1, 0.84, 0.84 );
setScaleKey( spep_1 + 156 -a, 1, 0.84, 0.84 );
setScaleKey( spep_1 + 158 -a, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 160 -a, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 162 -a, 1, 0.84, 0.84 );
setScaleKey( spep_1 + 164 -a, 1, 0.87, 0.87 );
setScaleKey( spep_1 + 166 -a, 1, 0.92, 0.92 );
setScaleKey( spep_1 + 168 -a, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 170 -a, 1, 0.98, 0.98 );
setScaleKey( spep_1 + 172 -a, 1, 1.01, 1.01 );
setScaleKey( spep_1 + 174 -a, 1, 1.01, 1.01 );
setScaleKey( spep_1 + 176 -a, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 178 -a, 1, 0.98, 0.98 );
setScaleKey( spep_1 + 180 -a, 1, 0.98, 0.98 );
setScaleKey( spep_1 + 182 -a, 1, 0.97, 0.97 );
setScaleKey( spep_1 + 184 -a, 1, 0.96, 0.96 );
setScaleKey( spep_1 + 187 -a, 1, 0.96, 0.96 );
setScaleKey( spep_1 + 188 -a, 1, 0.44, 0.44 );  --3回目被弾
setScaleKey( spep_1 + 189 -a, 1, 0.44, 0.44 );
setScaleKey( spep_1 + 190 -a, 1, 0.73, 0.73 );
setScaleKey( spep_1 + 191 -a, 1, 0.73, 0.73 );
setScaleKey( spep_1 + 192 -a, 1, 1.19, 1.19 );
setScaleKey( spep_1 + 193 -a, 1, 1.19, 1.19 );
setScaleKey( spep_1 + 194 -a, 1, 1.64, 1.64 );
setScaleKey( spep_1 + 195 -a, 1, 1.64, 1.64 );
setScaleKey( spep_1 + 196 -a, 1, 2.04, 2.04 );
setScaleKey( spep_1 + 198 -a, 1, 2.34, 2.34 );
setScaleKey( spep_1 + 200 -a, 1, 2.56, 2.56 );
setScaleKey( spep_1 + 202 -a, 1, 2.69, 2.69 );
setScaleKey( spep_1 + 205 -a, 1, 2.74, 2.74 );

setRotateKey( spep_1 + 42, 1, 0 );
setRotateKey( spep_1 + 67 -a, 1, 0 );
setRotateKey( spep_1 + 68 -a, 1, 114.8 );  --初撃
setRotateKey( spep_1 + 69 -a, 1, 114.8 );
setRotateKey( spep_1 + 70 -a, 1, 125 );
setRotateKey( spep_1 + 71 -a, 1, 125 );
setRotateKey( spep_1 + 72 -a, 1, 130.9 );
setRotateKey( spep_1 + 73 -a, 1, 130.9 );
setRotateKey( spep_1 + 74 -a, 1, 135.2 );
setRotateKey( spep_1 + 75 -a, 1, 135.2 );
setRotateKey( spep_1 + 76 -a, 1, 138.6 );
setRotateKey( spep_1 + 77 -a, 1, 138.6 );
setRotateKey( spep_1 + 78 -a, 1, 141.4 );
setRotateKey( spep_1 + 80 -a, 1, 143.7 );
setRotateKey( spep_1 + 82 -a, 1, 145.6 );
setRotateKey( spep_1 + 84 -a, 1, 147.2 );
setRotateKey( spep_1 + 86 -a, 1, 148.6 );
setRotateKey( spep_1 + 88 -a, 1, 149.8 );
setRotateKey( spep_1 + 90 -a, 1, 150.8 );
setRotateKey( spep_1 + 92 -a, 1, 151.7 );
setRotateKey( spep_1 + 94 -a, 1, 152.5 );
setRotateKey( spep_1 + 96 -a, 1, 153.2 );
setRotateKey( spep_1 + 98 -a, 1, 153.8 );
setRotateKey( spep_1 + 100 -a, 1, 154.4 );
setRotateKey( spep_1 + 102 -a, 1, 154.9 );
setRotateKey( spep_1 + 104 -a, 1, 155.3 );
setRotateKey( spep_1 + 106 -a, 1, 155.6 );
setRotateKey( spep_1 + 108 -a, 1, 155.9 );
setRotateKey( spep_1 + 110 -a, 1, 156.1 );
setRotateKey( spep_1 + 112 -a, 1, 156.3 );
setRotateKey( spep_1 + 114 -a, 1, 156.5 );
setRotateKey( spep_1 + 116 -a, 1, 156.6 );
setRotateKey( spep_1 + 118 -a, 1, 156.6 );
setRotateKey( spep_1 + 120 -a, 1, 156.7 );
setRotateKey( spep_1 + 123 -a, 1, 156.7 );
setRotateKey( spep_1 + 124 -a, 1, 53.7 );  --2回目被弾
setRotateKey( spep_1 + 125 -a, 1, 53.7 );
setRotateKey( spep_1 + 126 -a, 1, 52 );
setRotateKey( spep_1 + 127 -a, 1, 52 );
setRotateKey( spep_1 + 128 -a, 1, 50.9 );
setRotateKey( spep_1 + 129 -a, 1, 50.9 );
setRotateKey( spep_1 + 130 -a, 1, 50.1 );
setRotateKey( spep_1 + 131 -a, 1, 50.1 );
setRotateKey( spep_1 + 132 -a, 1, 49.4 );
setRotateKey( spep_1 + 134 -a, 1, 48.9 );
setRotateKey( spep_1 + 136 -a, 1, 48.5 );
setRotateKey( spep_1 + 138 -a, 1, 48.1 );
setRotateKey( spep_1 + 140 -a, 1, 47.9 );
setRotateKey( spep_1 + 142 -a, 1, 47.6 );
setRotateKey( spep_1 + 144 -a, 1, 47.5 );
setRotateKey( spep_1 + 146 -a, 1, 47.3 );
setRotateKey( spep_1 + 148 -a, 1, 47.2 );
setRotateKey( spep_1 + 152 -a, 1, 47.2 );
setRotateKey( spep_1 + 154 -a, 1, 46.2 );
setRotateKey( spep_1 + 156 -a, 1, 42.3 );
setRotateKey( spep_1 + 158 -a, 1, 33.8 );
setRotateKey( spep_1 + 160 -a, 1, 23.8 );
setRotateKey( spep_1 + 162 -a, 1, 15.7 );
setRotateKey( spep_1 + 164 -a, 1, 9.5 );
setRotateKey( spep_1 + 166 -a, 1, 4.6 );
setRotateKey( spep_1 + 168 -a, 1, 0.8 );
setRotateKey( spep_1 + 170 -a, 1, -2.4 );
setRotateKey( spep_1 + 172 -a, 1, -5.1 );
setRotateKey( spep_1 + 174 -a, 1, -7.3 );
setRotateKey( spep_1 + 176 -a, 1, -9.2 );
setRotateKey( spep_1 + 178 -a, 1, -10.8 );
setRotateKey( spep_1 + 180 -a, 1, -12.2 );
setRotateKey( spep_1 + 182 -a, 1, -13.3 );
setRotateKey( spep_1 + 184 -a, 1, -14.2 );
setRotateKey( spep_1 + 187 -a, 1, -15 );
setRotateKey( spep_1 + 188 -a, 1, -15 );  --3回目被弾
setRotateKey( spep_1 + 189 -a, 1, -15 );
setRotateKey( spep_1 + 190 -a, 1, -13.8 );
setRotateKey( spep_1 + 191 -a, 1, -13.8 );
setRotateKey( spep_1 + 192 -a, 1, -11.7 );
setRotateKey( spep_1 + 193 -a, 1, -11.7 );
setRotateKey( spep_1 + 194 -a, 1, -9.7 );
setRotateKey( spep_1 + 195 -a, 1, -9.7 );
setRotateKey( spep_1 + 196 -a, 1, -7.9 );
setRotateKey( spep_1 + 198 -a, 1, -6.5 );
setRotateKey( spep_1 + 200 -a, 1, -5.5 );
setRotateKey( spep_1 + 202 -a, 1, -5 );
setRotateKey( spep_1 + 205 -a, 1, -4.8 );

-- ** 音 ** --
playSe( spep_1 + 68 -a, 1009 );  --トランクス蹴り
playSe( spep_1 + 124 -a, 1001 );  --悟空殴り
playSe( spep_1 + 188 -a, 1010 );  --パン蹴り

--次の準備
spep_2 = spep_1 + 226;

------------------------------------------------------
--かめはめビーム(132F)
------------------------------------------------------
-- ** エフェクト等
kamehame = entryEffectLife( spep_2 + 0, SP_04, 132, 0x100, -1, 0, 0, 0 );  --溜め(ef_004)

setEffMoveKey( spep_2 + 0, kamehame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 132, kamehame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kamehame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 132, kamehame, 1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, kamehame, 255 );
setEffAlphaKey( spep_2 + 132, kamehame, 255 );
setEffRotateKey( spep_2 + 0, kamehame, 0 );
setEffRotateKey( spep_2 + 132, kamehame, 0 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_2 + 48, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_2 + 48, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_2 + 0,  906, 132, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen1, 132, 10 );

setEffMoveKey( spep_2 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 132, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen1, 1.88, 1.94 );
setEffScaleKey( spep_2 + 132, shuchusen1, 1.88, 1.94 );

setEffRotateKey( spep_2 + 0, shuchusen1, 0 );
setEffRotateKey( spep_2 + 132, shuchusen1, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_2 + 59, shuchusen1, 0 );
setEffAlphaKey( spep_2 + 60, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 132, shuchusen1, 255 );

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_2 + 60,  190006, 72, 0x100, -1, 0, -8.5, 515.5 );  --ゴゴゴ
setEffShake( spep_2 + 60, ctgogo, 72, 10 );

setEffMoveKey( spep_2 + 60, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_2 + 132, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_2 + 60, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_2 + 124, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_2 + 126, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_2 + 128, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_2 + 130, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_2 + 132, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_2 + 60, ctgogo, 0 );
setEffRotateKey( spep_2 + 132, ctgogo, 0 );

setEffAlphaKey( spep_2 + 60, ctgogo, 255 );
setEffAlphaKey( spep_2 + 132, ctgogo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 132, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_2 + 126,  4,  2,  2,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --whitefade

-- ** 音 ** --
playSe( spep_2 + 60, SE_04 );  --ゴゴゴ

--次の準備
spep_3 = spep_2 + 132;

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

-- ** ホワイトフェード ** --
entryFade( spep_3 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
--  発射(106F)
------------------------------------------------------
-- ** エフェクト等
beam = entryEffectLife( spep_4 + 0, SP_05, 106, 0x100, -1, 0, 0, 0 );  --発射(ef_005)

setEffMoveKey( spep_4 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_4 + 106, beam, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_4 + 106, beam, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam, 0 );
setEffRotateKey( spep_4 + 106, beam, 0 );
setEffAlphaKey( spep_4 + 0, beam, 255 );
setEffAlphaKey( spep_4 + 105, beam, 255 );
setEffAlphaKey( spep_4 + 106, beam, 0 );

-- ** 音 ** --
playSe( spep_4 + 20, 1022 );  --発射

--次の準備
spep_5 = spep_4 + 106;

------------------------------------------------------
--  被弾(84F)
------------------------------------------------------
-- ** エフェクト等
semaru_f = entryEffectLife( spep_5 + 0, SP_06, 84, 0x100, -1, 0, 0, 0 );  --被弾　前(ef_006)

setEffMoveKey( spep_5 + 0, semaru_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 84, semaru_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, semaru_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 84, semaru_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, semaru_f, 0 );
setEffRotateKey( spep_5 + 84, semaru_f, 0 );
setEffAlphaKey( spep_5 + 0, semaru_f, 255 );
setEffAlphaKey( spep_5 + 83, semaru_f, 255 );
setEffAlphaKey( spep_5 + 84, semaru_f, 0 );

-- ** エフェクト等
semaru_b = entryEffectLife( spep_5 + 0, SP_07, 84, 0x80, -1, 0, 0, 0 );  --被弾　奥(ef_007)

setEffMoveKey( spep_5 + 0, semaru_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 84, semaru_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, semaru_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 84, semaru_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, semaru_b, 0 );
setEffRotateKey( spep_5 + 84, semaru_b, 0 );
setEffAlphaKey( spep_5 + 0, semaru_b, 255 );
setEffAlphaKey( spep_5 + 83, semaru_b, 255 );
setEffAlphaKey( spep_5 + 84, semaru_b, 0 );

--書き文字
a1 = 4;
ctgyan = entryEffectLife( spep_5 + 58 -a1,  10006, 30, 0x100, -1, 0, 7.1, 306.8 );  --ギャンッ
setEffMoveKey( spep_5 + 58 -a1, ctgyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_5 + 84, ctgyan, 7.1, 306.8 , 0 );

setEffScaleKey( spep_5 + 58 -a1, ctgyan, 2.6, 2.6 );
setEffScaleKey( spep_5 + 64 -a1, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_5 + 66 -a1, ctgyan, 2.7, 2.7 );
setEffScaleKey( spep_5 + 68 -a1, ctgyan, 2.9, 2.9 );
setEffScaleKey( spep_5 + 70 -a1, ctgyan, 3, 3 );
setEffScaleKey( spep_5 + 72 -a1, ctgyan, 3.1, 3.1 );
setEffScaleKey( spep_5 + 74 -a1, ctgyan, 3.3, 3.3 );
setEffScaleKey( spep_5 + 76 -a1, ctgyan, 3.42, 3.42 );
setEffScaleKey( spep_5 + 78 -a1, ctgyan, 3.53, 3.53 );
setEffScaleKey( spep_5 + 80 -a1, ctgyan, 3.6, 3.6 );
setEffScaleKey( spep_5 + 82 -a1, ctgyan, 3.65, 3.65 );
setEffScaleKey( spep_5 + 84 -a1, ctgyan, 3.7, 3.7 );
setEffScaleKey( spep_5 + 86 -a1, ctgyan, 3.76, 3.76 );
setEffScaleKey( spep_5 + 88 -a1, ctgyan, 3.8, 3.8 );

setEffRotateKey( spep_5 + 0, ctgyan, 0 );
setEffRotateKey( spep_5 + 84, ctgyan, 0 );

setEffAlphaKey( spep_5 + 0, ctgyan, 255 );
setEffAlphaKey( spep_5 + 83, ctgyan, 255 );
setEffAlphaKey( spep_5 + 84, ctgyan, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 84, 1, 0 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, -3.3, 74 , 0 );
setMoveKey( spep_5 + 2, 1, -3.9, 9 , 0 );
setMoveKey( spep_5 + 4, 1, -4, -14.8 , 0 );
setMoveKey( spep_5 + 6, 1, -4.3, -47.3 , 0 );
setMoveKey( spep_5 + 8, 1, -4.4, -54.2 , 0 );
setMoveKey( spep_5 + 10, 1, -4.6, -79 , 0 );
setMoveKey( spep_5 + 12, 1, -4.6, -80.8 , 0 );
setMoveKey( spep_5 + 14, 1, -4.8, -101.2 , 0 );
setMoveKey( spep_5 + 16, 1, -4.8, -102.2 , 0 );
setMoveKey( spep_5 + 18, 1, -5, -119.6 , 0 );
setMoveKey( spep_5 + 20, 1, -5, -114.8 , 0 );
setMoveKey( spep_5 + 22, 1, -5.1, -133 , 0 );
setMoveKey( spep_5 + 24, 1, -5.1, -126.6 , 0 );
setMoveKey( spep_5 + 26, 1, -5.2, -144.7 , 0 );
setMoveKey( spep_5 + 28, 1, -5.2, -136.9 , 0 );
setMoveKey( spep_5 + 30, 1, -5.3, -151.5 , 0 );
setMoveKey( spep_5 + 32, 1, -5.2, -143.8 , 0 );
setMoveKey( spep_5 + 34, 1, -5.3, -160.5 , 0 );
setMoveKey( spep_5 + 36, 1, -5.3, -149.9 , 0 );
setMoveKey( spep_5 + 38, 1, -5.4, -165.3 , 0 );
setMoveKey( spep_5 + 40, 1, -5.3, -155.4 , 0 );
setMoveKey( spep_5 + 42, 1, -5.4, -170 , 0 );
setMoveKey( spep_5 + 44, 1, -5.4, -158.8 , 0 );
setMoveKey( spep_5 + 46, 1, -5.5, -171.1 , 0 );
setMoveKey( spep_5 + 48, 1, -5.4, -161.7 , 0 );
setMoveKey( spep_5 + 50, 1, -5.5, -176 , 0 );
setMoveKey( spep_5 + 52, 1, -5.4, -163.2 , 0 );
setMoveKey( spep_5 + 54, 1, -5.5, -176 , 0 );
setMoveKey( spep_5 + 56, 1, -5.4, -166.9 , 0 );
setMoveKey( spep_5 + 58, 1, -5.5, -175.5 , 0 );
setMoveKey( spep_5 + 60, 1, -5.4, -167.1 , 0 );
setMoveKey( spep_5 + 62, 1, -5.5, -178.3 , 0 );
setMoveKey( spep_5 + 64, 1, -5.4, -166.1 , 0 );
setMoveKey( spep_5 + 66, 1, -5.5, -177.9 , 0 );
setMoveKey( spep_5 + 68, 1, -5.4, -168.1 , 0 );
setMoveKey( spep_5 + 70, 1, -5.4, -171.8 , 0 );
setMoveKey( spep_5 + 72, 1, -5.4, -175.8 , 0 );
setMoveKey( spep_5 + 74, 1, -5.3, -166.4 , 0 );
setMoveKey( spep_5 + 76, 1, -5.4, -178.9 , 0 );
setMoveKey( spep_5 + 78, 1, -5.3, -166.1 , 0 );
setMoveKey( spep_5 + 80, 1, -5.4, -178.1 , 0 );
setMoveKey( spep_5 + 82, 1, -5.3, -166.1 , 0 );
setMoveKey( spep_5 + 84, 1, -5.4, -177.2 , 0 );

setScaleKey( spep_5 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 2, 1, 0.25, 0.25 );
setScaleKey( spep_5 + 4, 1, 0.26, 0.26 );
setScaleKey( spep_5 + 6, 1, 0.28, 0.28 );
setScaleKey( spep_5 + 8, 1, 0.28, 0.28 );
setScaleKey( spep_5 + 10, 1, 0.29, 0.29 );
setScaleKey( spep_5 + 12, 1, 0.29, 0.29 );
setScaleKey( spep_5 + 14, 1, 0.3, 0.3 );
setScaleKey( spep_5 + 16, 1, 0.3, 0.3 );
setScaleKey( spep_5 + 18, 1, 0.31, 0.31 );
setScaleKey( spep_5 + 20, 1, 0.3, 0.3 );
setScaleKey( spep_5 + 22, 1, 0.31, 0.31 );
setScaleKey( spep_5 + 24, 1, 0.31, 0.31 );
setScaleKey( spep_5 + 26, 1, 0.32, 0.32 );
setScaleKey( spep_5 + 36, 1, 0.32, 0.32 );
setScaleKey( spep_5 + 38, 1, 0.33, 0.33 );
setScaleKey( spep_5 + 40, 1, 0.32, 0.32 );
setScaleKey( spep_5 + 42, 1, 0.33, 0.33 );
setScaleKey( spep_5 + 44, 1, 0.32, 0.32 );
setScaleKey( spep_5 + 46, 1, 0.33, 0.33 );
setScaleKey( spep_5 + 48, 1, 0.32, 0.32 );
setScaleKey( spep_5 + 50, 1, 0.33, 0.33 );
setScaleKey( spep_5 + 84, 1, 0.33, 0.33 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 84, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 84, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_5 + 58 -a1, 1023 );  --被弾

--次の準備
spep_6 = spep_5 + 84;

------------------------------------------------------
--  爆発(212F)
------------------------------------------------------
-- ** エフェクト等
explosion = entryEffect( spep_6 + 0, SP_08,  0x100, -1, 0, 0, 0 );  --フィニッシュ(ef_008)
setEffMoveKey( spep_6 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_6 + 212, explosion, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_6 + 212, explosion, 1.0, 1.0 );
setEffAlphaKey( spep_6 + 0, explosion, 255 );
setEffAlphaKey( spep_6 + 212, explosion, 255 );
setEffRotateKey( spep_6 + 0, explosion, 0 );
setEffRotateKey( spep_6 + 212, explosion, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 212, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_6 + 72, 1024 );  --爆発

-- ダメージ表示
dealDamage(spep_6 + 86 );
entryFade( spep_6 + 200, 9,  10, 1, 8, 8, 8, 255 );             -- black fade
endPhase( spep_6 + 212 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
--飛んでいく(316F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等
tondeiku = entryEffectLife( spep_0 + 0, SP_01, 318, 0x100, -1, 0, 0, 0 );  --上昇(ef_001)

setEffMoveKey( spep_0 + 0, tondeiku, 0, 0 , 0 );
setEffMoveKey( spep_0 + 318, tondeiku, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tondeiku, -1.0, 1.0 );
setEffScaleKey( spep_0 + 318, tondeiku, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tondeiku, 0 );
setEffRotateKey( spep_0 + 318, tondeiku, 0 );
setEffAlphaKey( spep_0 + 0, tondeiku, 255 );
setEffAlphaKey( spep_0 + 315, tondeiku, 255 );
setEffAlphaKey( spep_0 + 316, tondeiku, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 318, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade(  spep_0,  0,  2,  4,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --whitefade

-- ** 音 ** --
playSe( spep_0 + 4, 44 );  --上昇
playSe( spep_0 + 144, 1018 );  --悟空
playSe( spep_0 + 206, 46 );  --パン
playSe( spep_0 + 280, 1013 );  --トランクス

--次の準備
spep_1 = spep_0 + 316;

------------------------------------------------------
--格闘(226F)
------------------------------------------------------
-- ** エフェクト等
kakome_f = entryEffectLife( spep_1 + 0, SP_02, 226, 0x100, -1, 0, 0, 0 );  --格闘　前(ef_002)

setEffMoveKey( spep_1 + 0, kakome_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 226, kakome_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kakome_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 226, kakome_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kakome_f, 0 );
setEffRotateKey( spep_1 + 226, kakome_f, 0 );
setEffAlphaKey( spep_1 + 0, kakome_f, 255 );
setEffAlphaKey( spep_1 + 225, kakome_f, 255 );
setEffAlphaKey( spep_1 + 226, kakome_f, 0 );

-- ** エフェクト等
kakome_b = entryEffectLife( spep_1 + 0, SP_03, 226, 0x80, -1, 0, 0, 0 );  --格闘　奥(ef_003)

setEffMoveKey( spep_1 + 0, kakome_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 226, kakome_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kakome_b, -1.0, 1.0 );
setEffScaleKey( spep_1 + 226, kakome_b, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kakome_b, 0 );
setEffRotateKey( spep_1 + 226, kakome_b, 0 );
setEffAlphaKey( spep_1 + 0, kakome_b, 255 );
setEffAlphaKey( spep_1 + 225, kakome_b, 255 );
setEffAlphaKey( spep_1 + 226, kakome_b, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 226, 0, 0, 0, 0, 255 );  --黒　背景

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 100 );

setMoveKey( spep_1 + 0, 1, 78.1, 1696.9 , 0 );
setMoveKey( spep_1 + 2, 1, 76.9, 1696.8 , 0 );
setMoveKey( spep_1 + 4, 1, 75.4, 1670.8 , 0 );
setMoveKey( spep_1 + 6, 1, 73.9, 1652.8 , 0 );
setMoveKey( spep_1 + 8, 1, 71.7, 1609.4 , 0 );
setMoveKey( spep_1 + 10, 1, 69.3, 1559.2 , 0 );
setMoveKey( spep_1 + 12, 1, 66.5, 1486.7 , 0 );
setMoveKey( spep_1 + 14, 1, 63.8, 1425.8 , 0 );
setMoveKey( spep_1 + 16, 1, 60.8, 1345.7 , 0 );
setMoveKey( spep_1 + 18, 1, 58.1, 1278 , 0 );
setMoveKey( spep_1 + 20, 1, 54.9, 1193.8 , 0 );
setMoveKey( spep_1 + 22, 1, 51.9, 1109.4 , 0 );
setMoveKey( spep_1 + 24, 1, 48.8, 1025.7 , 0 );
setMoveKey( spep_1 + 26, 1, 45.8, 943.3 , 0 );
setMoveKey( spep_1 + 28, 1, 43, 863 , 0 );
setMoveKey( spep_1 + 30, 1, 40, 775.1 , 0 );
setMoveKey( spep_1 + 32, 1, 37.3, 701.7 , 0 );
setMoveKey( spep_1 + 34, 1, 34.8, 632.3 , 0 );
setMoveKey( spep_1 + 36, 1, 32.5, 567.2 , 0 );
setMoveKey( spep_1 + 38, 1, 30.3, 506.7 , 0 );
setMoveKey( spep_1 + 40, 1, 28.2, 451.3 , 0 );

setScaleKey( spep_1 + 0, 1, 1, 1 );
setScaleKey( spep_1 + 2, 1, 1, 1 );
setScaleKey( spep_1 + 4, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 6, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 8, 1, 0.98, 0.98 );
setScaleKey( spep_1 + 10, 1, 0.97, 0.97 );
setScaleKey( spep_1 + 12, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 14, 1, 0.94, 0.94 );
setScaleKey( spep_1 + 16, 1, 0.92, 0.92 );
setScaleKey( spep_1 + 18, 1, 0.91, 0.91 );
setScaleKey( spep_1 + 20, 1, 0.89, 0.89 );
setScaleKey( spep_1 + 22, 1, 0.87, 0.87 );
setScaleKey( spep_1 + 24, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 26, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 28, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 30, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 32, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 34, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 36, 1, 0.72, 0.72 );
setScaleKey( spep_1 + 38, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 40, 1, 0.68, 0.68 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 40, 1, 0 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** 敵の動き
setMoveKey( SP_dodge + 0, 1, 28.2, 451.3 , 0 );
setMoveKey( SP_dodge + 2, 1, 26.5, 407.6 , 0 );
setMoveKey( SP_dodge + 4, 1, 24.7, 362.1 , 0 );
setMoveKey( SP_dodge + 6, 1, 23.3, 327.7 , 0 );
setMoveKey( SP_dodge + 8, 1, 22, 292.6 , 0 );
setMoveKey( SP_dodge + 10, 1, 20.9, 267.8 , 0 );

setScaleKey( SP_dodge + 0, 1, 0.68, 0.68 );
setScaleKey( SP_dodge + 2, 1, 0.67, 0.67 );
setScaleKey( SP_dodge + 4, 1, 0.65, 0.65 );
setScaleKey( SP_dodge + 6, 1, 0.64, 0.64 );
setScaleKey( SP_dodge + 8, 1, 0.62, 0.62 );
setScaleKey( SP_dodge + 10, 1, 0.61, 0.61 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

-- ** カットイン部分 ** --
speff0 = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff0, 3, 6 );                           -- カットイン差し替え

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
a = 3;
--敵の動き
setDisp( spep_1 + 205, 1, 0 );
changeAnime( spep_1 + 68 -a, 1, 106 );
changeAnime( spep_1 + 124 -a, 1, 108 );
changeAnime( spep_1 + 188 -a, 1, 7 );

setMoveKey( spep_1 + 42, 1, 26.5, 407.6 , 0 );
setMoveKey( spep_1 + 44, 1, 24.7, 362.1 , 0 );
setMoveKey( spep_1 + 46, 1, 23.3, 327.7 , 0 );
setMoveKey( spep_1 + 48, 1, 22, 292.6 , 0 );
setMoveKey( spep_1 + 50, 1, 20.9, 267.8 , 0 );
setMoveKey( spep_1 + 52, 1, 20, 247.8 , 0 );
setMoveKey( spep_1 + 54, 1, 19.4, 237.1 , 0 );
setMoveKey( spep_1 + 56, 1, 18.9, 226.5 , 0 );
setMoveKey( spep_1 + 58, 1, 18.6, 225.2 , 0 );
--setMoveKey( spep_1 + 60, 1, 18.5, 226.5 , 0 );
--setMoveKey( spep_1 + 62, 1, 18.3, 227.7 , 0 );
setMoveKey( spep_1 + 64 -a, 1, 18.2, 228.9 , 0 );
setMoveKey( spep_1 + 67 -a, 1, 18.1, 230 , 0 );
setMoveKey( spep_1 + 68 -a, 1, -53.9, 191.1 , 0 );  --初撃
setMoveKey( spep_1 + 69 -a, 1, -53.9, 191.1 , 0 );
setMoveKey( spep_1 + 70 -a, 1, -137.3, 122.6 , 0 );
setMoveKey( spep_1 + 71 -a, 1, -137.3, 122.6 , 0 );
setMoveKey( spep_1 + 72 -a, 1, -165.7, 113.2 , 0 );
setMoveKey( spep_1 + 73 -a, 1, -165.7, 113.2 , 0 );
setMoveKey( spep_1 + 74 -a, 1, -193.9, 69.9 , 0 );
setMoveKey( spep_1 + 75 -a, 1, -193.9, 69.9 , 0 );
setMoveKey( spep_1 + 76 -a, 1, -224.4, 77.1 , 0 );
setMoveKey( spep_1 + 77 -a, 1, -224.4, 77.1 , 0 );
setMoveKey( spep_1 + 78 -a, 1, -229, 48.3 , 0 );
setMoveKey( spep_1 + 80 -a, 1, -260.2, 44.4 , 0 );
setMoveKey( spep_1 + 82 -a, 1, -251.3, 29 , 0 );
setMoveKey( spep_1 + 84 -a, 1, -282.1, 29.8 , 0 );
setMoveKey( spep_1 + 86 -a, 1, -276, 12.9 , 0 );
setMoveKey( spep_1 + 88 -a, 1, -290.8, 11.1 , 0 );
setMoveKey( spep_1 + 90 -a, 1, -297.9, 5.9 , 0 );
setMoveKey( spep_1 + 92 -a, 1, -304.2, 1.4 , 0 );
setMoveKey( spep_1 + 94 -a, 1, -309.8, -2.6 , 0 );
setMoveKey( spep_1 + 96 -a, 1, -314.7, -6.1 , 0 );
setMoveKey( spep_1 + 98 -a, 1, -319.1, -9.2 , 0 );
setMoveKey( spep_1 + 100 -a, 1, -323, -11.9 , 0 );
setMoveKey( spep_1 + 102 -a, 1, -316.4, -7.5 , 0 );
setMoveKey( spep_1 + 104 -a, 1, -290.2, 10.4 , 0 );
setMoveKey( spep_1 + 106 -a, 1, -246.7, 39.9 , 0 );
setMoveKey( spep_1 + 108 -a, 1, -190.9, 77.6 , 0 );
setMoveKey( spep_1 + 110 -a, 1, -129.7, 119.1 , 0 );
setMoveKey( spep_1 + 112 -a, 1, -71.5, 158.6 , 0 );
setMoveKey( spep_1 + 114 -a, 1, -23.8, 190.9 , 0 );
setMoveKey( spep_1 + 116 -a, 1, 7.1, 211.9 , 0 );
setMoveKey( spep_1 + 118 -a, 1, 17.6, 219.2 , 0 );
setMoveKey( spep_1 + 120 -a, 1, 17, 218.8 , 0 );
setMoveKey( spep_1 + 123 -a, 1, 16.6, 218.6 , 0 );
setMoveKey( spep_1 + 124 -a, 1, 35.9, 229.4 , 0 );  --2回目被弾
setMoveKey( spep_1 + 125 -a, 1, 35.9, 229.4 , 0 );
setMoveKey( spep_1 + 126 -a, 1, 65.3, 254.5 , 0 );
setMoveKey( spep_1 + 127 -a, 1, 65.3, 254.5 , 0 );
setMoveKey( spep_1 + 128 -a, 1, 99.6, 269.2 , 0 );
setMoveKey( spep_1 + 129 -a, 1, 99.6, 269.2 , 0 );
setMoveKey( spep_1 + 130 -a, 1, 87.2, 283.6 , 0 );
setMoveKey( spep_1 + 131 -a, 1, 87.2, 283.6 , 0 );
setMoveKey( spep_1 + 132 -a, 1, 120.7, 300.5 , 0 );
setMoveKey( spep_1 + 134 -a, 1, 110.9, 303.2 , 0 );
setMoveKey( spep_1 + 136 -a, 1, 136.1, 298.7 , 0 );
setMoveKey( spep_1 + 138 -a, 1, 133.3, 325 , 0 );
setMoveKey( spep_1 + 140 -a, 1, 147.7, 312.3 , 0 );
setMoveKey( spep_1 + 142 -a, 1, 139.6, 326.8 , 0 );
setMoveKey( spep_1 + 144 -a, 1, 154.4, 317.7 , 0 );
setMoveKey( spep_1 + 146 -a, 1, 142.2, 323.5 , 0 );
setMoveKey( spep_1 + 148 -a, 1, 149, 326.5 , 0 );
setMoveKey( spep_1 + 150 -a, 1, 149.5, 327 , 0 );
setMoveKey( spep_1 + 152 -a, 1, 149.4, 327 , 0 );
setMoveKey( spep_1 + 154 -a, 1, 152.1, 326.2 , 0 );
setMoveKey( spep_1 + 156 -a, 1, 159, 317.6 , 0 );
setMoveKey( spep_1 + 158 -a, 1, 166.5, 284.5 , 0 );
setMoveKey( spep_1 + 160 -a, 1, 173.2, 241.1 , 0 );
setMoveKey( spep_1 + 162 -a, 1, 167.1, 185 , 0 );
setMoveKey( spep_1 + 164 -a, 1, 149, 117.4 , 0 );
setMoveKey( spep_1 + 166 -a, 1, 122.8, 41 , 0 );
setMoveKey( spep_1 + 168 -a, 1, 90.9, -40.2 , 0 );
setMoveKey( spep_1 + 170 -a, 1, 61.6, -114.9 , 0 );
setMoveKey( spep_1 + 172 -a, 1, 41.8, -170 , 0 );
setMoveKey( spep_1 + 174 -a, 1, 40.2, -192 , 0 );
setMoveKey( spep_1 + 176 -a, 1, 49.7, -193.5 , 0 );
setMoveKey( spep_1 + 178 -a, 1, 57.8, -194.9 , 0 );
setMoveKey( spep_1 + 180 -a, 1, 64.5, -195.9 , 0 );
setMoveKey( spep_1 + 182 -a, 1, 70.3, -196.9 , 0 );
setMoveKey( spep_1 + 184 -a, 1, 75.1, -197.7 , 0 );
setMoveKey( spep_1 + 187 -a, 1, 79, -198.3 , 0 );
setMoveKey( spep_1 + 188 -a, 1, 61.2, -236.5 , 0 );  --3回目被弾
setMoveKey( spep_1 + 189 -a, 1, 61.2, -236.5 , 0 );
setMoveKey( spep_1 + 190 -a, 1, 16.3, -326.5 , 0 );
setMoveKey( spep_1 + 191 -a, 1, 16.3, -326.5 , 0 );
setMoveKey( spep_1 + 192 -a, 1, -17.4, -509.6 , 0 );
setMoveKey( spep_1 + 193 -a, 1, -17.4, -509.6 , 0 );
setMoveKey( spep_1 + 194 -a, 1, -65.8, -642.4 , 0 );
setMoveKey( spep_1 + 195 -a, 1, -65.8, -642.4 , 0 );
setMoveKey( spep_1 + 196 -a, 1, -104.6, -803 , 0 );
setMoveKey( spep_1 + 198 -a, 1, -131.7, -896.2 , 0 );
setMoveKey( spep_1 + 200 -a, 1, -145, -990 , 0 );
setMoveKey( spep_1 + 202 -a, 1, -158.5, -1021.9 , 0 );
setMoveKey( spep_1 + 205 -a, 1, -168.6, -1055.3 , 0 );

setScaleKey( spep_1 + 42, 1, 0.67, 0.67 );
setScaleKey( spep_1 + 44, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 46, 1, 0.64, 0.64 );
setScaleKey( spep_1 + 48, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 50, 1, 0.61, 0.61 );
setScaleKey( spep_1 + 52, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 54, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 56, 1, 0.59, 0.59 );
setScaleKey( spep_1 + 68 -a, 1, 0.59, 0.59 );  --初撃
setScaleKey( spep_1 + 69 -a, 1, 0.59, 0.59 );
setScaleKey( spep_1 + 70 -a, 1, 0.64, 0.64 );
setScaleKey( spep_1 + 71 -a, 1, 0.64, 0.64 );
setScaleKey( spep_1 + 72 -a, 1, 0.67, 0.67 );
setScaleKey( spep_1 + 73 -a, 1, 0.67, 0.67 );
setScaleKey( spep_1 + 74 -a, 1, 0.69, 0.69 );
setScaleKey( spep_1 + 75 -a, 1, 0.69, 0.69 );
setScaleKey( spep_1 + 76 -a, 1, 0.71, 0.71 );
setScaleKey( spep_1 + 77 -a, 1, 0.71, 0.71 );
setScaleKey( spep_1 + 78 -a, 1, 0.72, 0.72 );
setScaleKey( spep_1 + 80 -a, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 82 -a, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 84 -a, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 86 -a, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 88 -a, 1, 0.77, 0.77 );
setScaleKey( spep_1 + 90 -a, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 92 -a, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 96 -a, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 98 -a, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 102 -a, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 104 -a, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 110 -a, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 112 -a, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 123 -a, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 124 -a, 1, 0.84, 0.84 );  --2回目被弾
setScaleKey( spep_1 + 138 -a, 1, 0.84, 0.84 );
setScaleKey( spep_1 + 140 -a, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 152 -a, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 154 -a, 1, 0.84, 0.84 );
setScaleKey( spep_1 + 156 -a, 1, 0.84, 0.84 );
setScaleKey( spep_1 + 158 -a, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 160 -a, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 162 -a, 1, 0.84, 0.84 );
setScaleKey( spep_1 + 164 -a, 1, 0.87, 0.87 );
setScaleKey( spep_1 + 166 -a, 1, 0.92, 0.92 );
setScaleKey( spep_1 + 168 -a, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 170 -a, 1, 0.98, 0.98 );
setScaleKey( spep_1 + 172 -a, 1, 1.01, 1.01 );
setScaleKey( spep_1 + 174 -a, 1, 1.01, 1.01 );
setScaleKey( spep_1 + 176 -a, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 178 -a, 1, 0.98, 0.98 );
setScaleKey( spep_1 + 180 -a, 1, 0.98, 0.98 );
setScaleKey( spep_1 + 182 -a, 1, 0.97, 0.97 );
setScaleKey( spep_1 + 184 -a, 1, 0.96, 0.96 );
setScaleKey( spep_1 + 187 -a, 1, 0.96, 0.96 );
setScaleKey( spep_1 + 188 -a, 1, 0.44, 0.44 );  --3回目被弾
setScaleKey( spep_1 + 189 -a, 1, 0.44, 0.44 );
setScaleKey( spep_1 + 190 -a, 1, 0.73, 0.73 );
setScaleKey( spep_1 + 191 -a, 1, 0.73, 0.73 );
setScaleKey( spep_1 + 192 -a, 1, 1.19, 1.19 );
setScaleKey( spep_1 + 193 -a, 1, 1.19, 1.19 );
setScaleKey( spep_1 + 194 -a, 1, 1.64, 1.64 );
setScaleKey( spep_1 + 195 -a, 1, 1.64, 1.64 );
setScaleKey( spep_1 + 196 -a, 1, 2.04, 2.04 );
setScaleKey( spep_1 + 198 -a, 1, 2.34, 2.34 );
setScaleKey( spep_1 + 200 -a, 1, 2.56, 2.56 );
setScaleKey( spep_1 + 202 -a, 1, 2.69, 2.69 );
setScaleKey( spep_1 + 205 -a, 1, 2.74, 2.74 );

setRotateKey( spep_1 + 42, 1, 0 );
setRotateKey( spep_1 + 67 -a, 1, 0 );
setRotateKey( spep_1 + 68 -a, 1, 114.8 +70 );  --初撃
setRotateKey( spep_1 + 69 -a, 1, 114.8 +70 );
setRotateKey( spep_1 + 70 -a, 1, 125 +70 );
setRotateKey( spep_1 + 71 -a, 1, 125 +70 );
setRotateKey( spep_1 + 72 -a, 1, 130.9 +70 );
setRotateKey( spep_1 + 73 -a, 1, 130.9 +70 );
setRotateKey( spep_1 + 74 -a, 1, 135.2 +70 );
setRotateKey( spep_1 + 75 -a, 1, 135.2 +70 );
setRotateKey( spep_1 + 76 -a, 1, 138.6 +70 );
setRotateKey( spep_1 + 77 -a, 1, 138.6 +70 );
setRotateKey( spep_1 + 78 -a, 1, 141.4 +70 );
setRotateKey( spep_1 + 80 -a, 1, 143.7 +70 );
setRotateKey( spep_1 + 82 -a, 1, 145.6 +70 );
setRotateKey( spep_1 + 84 -a, 1, 147.2 +70 );
setRotateKey( spep_1 + 86 -a, 1, 148.6 +70 );
setRotateKey( spep_1 + 88 -a, 1, 149.8 +70 );
setRotateKey( spep_1 + 90 -a, 1, 150.8 +70 );
setRotateKey( spep_1 + 92 -a, 1, 151.7 +70 );
setRotateKey( spep_1 + 94 -a, 1, 152.5 +70 );
setRotateKey( spep_1 + 96 -a, 1, 153.2 +70 );
setRotateKey( spep_1 + 98 -a, 1, 153.8 +70 );
setRotateKey( spep_1 + 100 -a, 1, 154.4 +70 );
setRotateKey( spep_1 + 102 -a, 1, 154.9 +70 );
setRotateKey( spep_1 + 104 -a, 1, 155.3 +70 );
setRotateKey( spep_1 + 106 -a, 1, 155.6 +70 );
setRotateKey( spep_1 + 108 -a, 1, 155.9 +70 );
setRotateKey( spep_1 + 110 -a, 1, 156.1 +70 );
setRotateKey( spep_1 + 112 -a, 1, 156.3 +70 );
setRotateKey( spep_1 + 114 -a, 1, 156.5 +70 );
setRotateKey( spep_1 + 116 -a, 1, 156.6 +70 );
setRotateKey( spep_1 + 118 -a, 1, 156.6 +70 );
setRotateKey( spep_1 + 120 -a, 1, 156.7 +70 );
setRotateKey( spep_1 + 123 -a, 1, 156.7 +70 );
setRotateKey( spep_1 + 124 -a, 1, 53.7 -80 );  --2回目被弾
setRotateKey( spep_1 + 125 -a, 1, 53.7 -80 );
setRotateKey( spep_1 + 126 -a, 1, 52 -80 );
setRotateKey( spep_1 + 127 -a, 1, 52 -80 );
setRotateKey( spep_1 + 128 -a, 1, 50.9 -80 );
setRotateKey( spep_1 + 129 -a, 1, 50.9 -80 );
setRotateKey( spep_1 + 130 -a, 1, 50.1 -80 );
setRotateKey( spep_1 + 131 -a, 1, 50.1 -80 );
setRotateKey( spep_1 + 132 -a, 1, 49.4 -80 );
setRotateKey( spep_1 + 134 -a, 1, 48.9 -80 );
setRotateKey( spep_1 + 136 -a, 1, 48.5 -80 );
setRotateKey( spep_1 + 138 -a, 1, 48.1 -80 );
setRotateKey( spep_1 + 140 -a, 1, 47.9 -80 );
setRotateKey( spep_1 + 142 -a, 1, 47.6 -80 );
setRotateKey( spep_1 + 144 -a, 1, 47.5 -80 );
setRotateKey( spep_1 + 146 -a, 1, 47.3 -80 );
setRotateKey( spep_1 + 148 -a, 1, 47.2 -80 );
setRotateKey( spep_1 + 152 -a, 1, 47.2 -80 );
setRotateKey( spep_1 + 154 -a, 1, 46.2 -80 );
setRotateKey( spep_1 + 156 -a, 1, 42.3 -60 );
setRotateKey( spep_1 + 158 -a, 1, 33.8 -50 );
setRotateKey( spep_1 + 160 -a, 1, 23.8 );
setRotateKey( spep_1 + 162 -a, 1, 15.7 );
setRotateKey( spep_1 + 164 -a, 1, 9.5 );
setRotateKey( spep_1 + 166 -a, 1, 4.6 );
setRotateKey( spep_1 + 168 -a, 1, 0.8 );
setRotateKey( spep_1 + 170 -a, 1, -2.4 );
setRotateKey( spep_1 + 172 -a, 1, -5.1 );
setRotateKey( spep_1 + 174 -a, 1, -7.3 );
setRotateKey( spep_1 + 176 -a, 1, -9.2 );
setRotateKey( spep_1 + 178 -a, 1, -10.8 );
setRotateKey( spep_1 + 180 -a, 1, -12.2 );
setRotateKey( spep_1 + 182 -a, 1, -13.3 );
setRotateKey( spep_1 + 184 -a, 1, -14.2 );
setRotateKey( spep_1 + 187 -a, 1, -15 );
setRotateKey( spep_1 + 188 -a, 1, -15 );  --3回目被弾
setRotateKey( spep_1 + 189 -a, 1, -15 );
setRotateKey( spep_1 + 190 -a, 1, -13.8 );
setRotateKey( spep_1 + 191 -a, 1, -13.8 );
setRotateKey( spep_1 + 192 -a, 1, -11.7 );
setRotateKey( spep_1 + 193 -a, 1, -11.7 );
setRotateKey( spep_1 + 194 -a, 1, -9.7 );
setRotateKey( spep_1 + 195 -a, 1, -9.7 );
setRotateKey( spep_1 + 196 -a, 1, -7.9 );
setRotateKey( spep_1 + 198 -a, 1, -6.5 );
setRotateKey( spep_1 + 200 -a, 1, -5.5 );
setRotateKey( spep_1 + 202 -a, 1, -5 );
setRotateKey( spep_1 + 205 -a, 1, -4.8 );

-- ** 音 ** --
playSe( spep_1 + 68 -a, 1009 );  --トランクス蹴り
playSe( spep_1 + 124 -a, 1001 );  --悟空殴り
playSe( spep_1 + 188 -a, 1010 );  --パン蹴り

--次の準備
spep_2 = spep_1 + 226;

------------------------------------------------------
--かめはめビーム(132F)
------------------------------------------------------
-- ** エフェクト等
kamehame = entryEffectLife( spep_2 + 0, SP_04, 132, 0x100, -1, 0, 0, 0 );  --溜め(ef_004)

setEffMoveKey( spep_2 + 0, kamehame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 132, kamehame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kamehame, -1.0, 1.0 );
setEffScaleKey( spep_2 + 132, kamehame, -1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, kamehame, 255 );
setEffAlphaKey( spep_2 + 132, kamehame, 255 );
setEffRotateKey( spep_2 + 0, kamehame, 0 );
setEffRotateKey( spep_2 + 132, kamehame, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_2 + 48, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_2 + 48, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_2 + 0,  906, 132, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen1, 132, 10 );

setEffMoveKey( spep_2 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 132, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen1, 1.88, 1.94 );
setEffScaleKey( spep_2 + 132, shuchusen1, 1.88, 1.94 );

setEffRotateKey( spep_2 + 0, shuchusen1, 0 );
setEffRotateKey( spep_2 + 132, shuchusen1, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_2 + 59, shuchusen1, 0 );
setEffAlphaKey( spep_2 + 60, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 132, shuchusen1, 255 );

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_2 + 60,  190006, 72, 0x100, -1, 0, -8.5, 515.5 );  --ゴゴゴ
setEffShake( spep_2 + 60, ctgogo, 72, 10 );

setEffMoveKey( spep_2 + 60, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_2 + 132, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_2 + 60, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_2 + 124, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_2 + 126, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_2 + 128, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_2 + 130, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_2 + 132, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_2 + 60, ctgogo, 0 );
setEffRotateKey( spep_2 + 132, ctgogo, 0 );

setEffAlphaKey( spep_2 + 60, ctgogo, 255 );
setEffAlphaKey( spep_2 + 132, ctgogo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 132, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_2 + 126,  4,  2,  2,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --whitefade

-- ** 音 ** --
playSe( spep_2 + 60, SE_04 );  --ゴゴゴ

--次の準備
spep_3 = spep_2 + 132;

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

-- ** ホワイトフェード ** --
entryFade( spep_3 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
--  発射(106F)
------------------------------------------------------
-- ** エフェクト等
beam = entryEffectLife( spep_4 + 0, SP_05, 106, 0x100, -1, 0, 0, 0 );  --発射(ef_005)

setEffMoveKey( spep_4 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_4 + 106, beam, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, beam, -1.0, 1.0 );
setEffScaleKey( spep_4 + 106, beam, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam, 0 );
setEffRotateKey( spep_4 + 106, beam, 0 );
setEffAlphaKey( spep_4 + 0, beam, 255 );
setEffAlphaKey( spep_4 + 105, beam, 255 );
setEffAlphaKey( spep_4 + 106, beam, 0 );

-- ** 音 ** --
playSe( spep_4 + 20, 1022 );  --発射

--次の準備
spep_5 = spep_4 + 106;

------------------------------------------------------
--  被弾(84F)
------------------------------------------------------
-- ** エフェクト等
semaru_f = entryEffectLife( spep_5 + 0, SP_06, 84, 0x100, -1, 0, 0, 0 );  --被弾　前(ef_006)

setEffMoveKey( spep_5 + 0, semaru_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 84, semaru_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, semaru_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 84, semaru_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, semaru_f, 0 );
setEffRotateKey( spep_5 + 84, semaru_f, 0 );
setEffAlphaKey( spep_5 + 0, semaru_f, 255 );
setEffAlphaKey( spep_5 + 83, semaru_f, 255 );
setEffAlphaKey( spep_5 + 84, semaru_f, 0 );

-- ** エフェクト等
semaru_b = entryEffectLife( spep_5 + 0, SP_07, 84, 0x80, -1, 0, 0, 0 );  --被弾　奥(ef_007)

setEffMoveKey( spep_5 + 0, semaru_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 84, semaru_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, semaru_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 84, semaru_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, semaru_b, 0 );
setEffRotateKey( spep_5 + 84, semaru_b, 0 );
setEffAlphaKey( spep_5 + 0, semaru_b, 255 );
setEffAlphaKey( spep_5 + 83, semaru_b, 255 );
setEffAlphaKey( spep_5 + 84, semaru_b, 0 );

--書き文字
a1 = 4;
ctgyan = entryEffectLife( spep_5 + 58 -a1,  10006, 30, 0x100, -1, 0, 7.1, 306.8 );  --ギャンッ
setEffMoveKey( spep_5 + 58 -a1, ctgyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_5 + 84, ctgyan, 7.1, 306.8 , 0 );

setEffScaleKey( spep_5 + 58 -a1, ctgyan, 2.6, 2.6 );
setEffScaleKey( spep_5 + 64 -a1, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_5 + 66 -a1, ctgyan, 2.7, 2.7 );
setEffScaleKey( spep_5 + 68 -a1, ctgyan, 2.9, 2.9 );
setEffScaleKey( spep_5 + 70 -a1, ctgyan, 3, 3 );
setEffScaleKey( spep_5 + 72 -a1, ctgyan, 3.1, 3.1 );
setEffScaleKey( spep_5 + 74 -a1, ctgyan, 3.3, 3.3 );
setEffScaleKey( spep_5 + 76 -a1, ctgyan, 3.42, 3.42 );
setEffScaleKey( spep_5 + 78 -a1, ctgyan, 3.53, 3.53 );
setEffScaleKey( spep_5 + 80 -a1, ctgyan, 3.6, 3.6 );
setEffScaleKey( spep_5 + 82 -a1, ctgyan, 3.65, 3.65 );
setEffScaleKey( spep_5 + 84 -a1, ctgyan, 3.7, 3.7 );
setEffScaleKey( spep_5 + 86 -a1, ctgyan, 3.76, 3.76 );
setEffScaleKey( spep_5 + 88 -a1, ctgyan, 3.8, 3.8 );

setEffRotateKey( spep_5 + 0, ctgyan, 0 );
setEffRotateKey( spep_5 + 84, ctgyan, 0 );

setEffAlphaKey( spep_5 + 0, ctgyan, 255 );
setEffAlphaKey( spep_5 + 83, ctgyan, 255 );
setEffAlphaKey( spep_5 + 84, ctgyan, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 84, 1, 0 );
changeAnime( spep_5 + 0, 1, 7 );

setMoveKey( spep_5 + 0, 1, -3.3, 74 , 0 );
setMoveKey( spep_5 + 2, 1, -3.9, 9 , 0 );
setMoveKey( spep_5 + 4, 1, -4, -14.8 , 0 );
setMoveKey( spep_5 + 6, 1, -4.3, -47.3 , 0 );
setMoveKey( spep_5 + 8, 1, -4.4, -54.2 , 0 );
setMoveKey( spep_5 + 10, 1, -4.6, -79 , 0 );
setMoveKey( spep_5 + 12, 1, -4.6, -80.8 , 0 );
setMoveKey( spep_5 + 14, 1, -4.8, -101.2 , 0 );
setMoveKey( spep_5 + 16, 1, -4.8, -102.2 , 0 );
setMoveKey( spep_5 + 18, 1, -5, -119.6 , 0 );
setMoveKey( spep_5 + 20, 1, -5, -114.8 , 0 );
setMoveKey( spep_5 + 22, 1, -5.1, -133 , 0 );
setMoveKey( spep_5 + 24, 1, -5.1, -126.6 , 0 );
setMoveKey( spep_5 + 26, 1, -5.2, -144.7 , 0 );
setMoveKey( spep_5 + 28, 1, -5.2, -136.9 , 0 );
setMoveKey( spep_5 + 30, 1, -5.3, -151.5 , 0 );
setMoveKey( spep_5 + 32, 1, -5.2, -143.8 , 0 );
setMoveKey( spep_5 + 34, 1, -5.3, -160.5 , 0 );
setMoveKey( spep_5 + 36, 1, -5.3, -149.9 , 0 );
setMoveKey( spep_5 + 38, 1, -5.4, -165.3 , 0 );
setMoveKey( spep_5 + 40, 1, -5.3, -155.4 , 0 );
setMoveKey( spep_5 + 42, 1, -5.4, -170 , 0 );
setMoveKey( spep_5 + 44, 1, -5.4, -158.8 , 0 );
setMoveKey( spep_5 + 46, 1, -5.5, -171.1 , 0 );
setMoveKey( spep_5 + 48, 1, -5.4, -161.7 , 0 );
setMoveKey( spep_5 + 50, 1, -5.5, -176 , 0 );
setMoveKey( spep_5 + 52, 1, -5.4, -163.2 , 0 );
setMoveKey( spep_5 + 54, 1, -5.5, -176 , 0 );
setMoveKey( spep_5 + 56, 1, -5.4, -166.9 , 0 );
setMoveKey( spep_5 + 58, 1, -5.5, -175.5 , 0 );
setMoveKey( spep_5 + 60, 1, -5.4, -167.1 , 0 );
setMoveKey( spep_5 + 62, 1, -5.5, -178.3 , 0 );
setMoveKey( spep_5 + 64, 1, -5.4, -166.1 , 0 );
setMoveKey( spep_5 + 66, 1, -5.5, -177.9 , 0 );
setMoveKey( spep_5 + 68, 1, -5.4, -168.1 , 0 );
setMoveKey( spep_5 + 70, 1, -5.4, -171.8 , 0 );
setMoveKey( spep_5 + 72, 1, -5.4, -175.8 , 0 );
setMoveKey( spep_5 + 74, 1, -5.3, -166.4 , 0 );
setMoveKey( spep_5 + 76, 1, -5.4, -178.9 , 0 );
setMoveKey( spep_5 + 78, 1, -5.3, -166.1 , 0 );
setMoveKey( spep_5 + 80, 1, -5.4, -178.1 , 0 );
setMoveKey( spep_5 + 82, 1, -5.3, -166.1 , 0 );
setMoveKey( spep_5 + 84, 1, -5.4, -177.2 , 0 );

setScaleKey( spep_5 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 2, 1, 0.25, 0.25 );
setScaleKey( spep_5 + 4, 1, 0.26, 0.26 );
setScaleKey( spep_5 + 6, 1, 0.28, 0.28 );
setScaleKey( spep_5 + 8, 1, 0.28, 0.28 );
setScaleKey( spep_5 + 10, 1, 0.29, 0.29 );
setScaleKey( spep_5 + 12, 1, 0.29, 0.29 );
setScaleKey( spep_5 + 14, 1, 0.3, 0.3 );
setScaleKey( spep_5 + 16, 1, 0.3, 0.3 );
setScaleKey( spep_5 + 18, 1, 0.31, 0.31 );
setScaleKey( spep_5 + 20, 1, 0.3, 0.3 );
setScaleKey( spep_5 + 22, 1, 0.31, 0.31 );
setScaleKey( spep_5 + 24, 1, 0.31, 0.31 );
setScaleKey( spep_5 + 26, 1, 0.32, 0.32 );
setScaleKey( spep_5 + 36, 1, 0.32, 0.32 );
setScaleKey( spep_5 + 38, 1, 0.33, 0.33 );
setScaleKey( spep_5 + 40, 1, 0.32, 0.32 );
setScaleKey( spep_5 + 42, 1, 0.33, 0.33 );
setScaleKey( spep_5 + 44, 1, 0.32, 0.32 );
setScaleKey( spep_5 + 46, 1, 0.33, 0.33 );
setScaleKey( spep_5 + 48, 1, 0.32, 0.32 );
setScaleKey( spep_5 + 50, 1, 0.33, 0.33 );
setScaleKey( spep_5 + 84, 1, 0.33, 0.33 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 84, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 84, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_5 + 58 -a1, 1023 );  --被弾

--次の準備
spep_6 = spep_5 + 84;

------------------------------------------------------
--  爆発(212F)
------------------------------------------------------
-- ** エフェクト等
explosion = entryEffect( spep_6 + 0, SP_08,  0x100, -1, 0, 0, 0 );  --フィニッシュ(ef_008)
setEffMoveKey( spep_6 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_6 + 212, explosion, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, explosion, -1.0, 1.0 );
setEffScaleKey( spep_6 + 212, explosion, -1.0, 1.0 );
setEffAlphaKey( spep_6 + 0, explosion, 255 );
setEffAlphaKey( spep_6 + 212, explosion, 255 );
setEffRotateKey( spep_6 + 0, explosion, 0 );
setEffRotateKey( spep_6 + 212, explosion, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 212, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_6 + 72, 1024 );  --爆発

-- ダメージ表示
dealDamage(spep_6 + 86 );
entryFade( spep_6 + 200, 9,  10, 1, 8, 8, 8, 255 );             -- black fade
endPhase( spep_6 + 212 );

end
