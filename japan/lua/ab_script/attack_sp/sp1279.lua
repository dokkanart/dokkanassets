--伝説の超サイヤ人ブロリー_オメガブラスター

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
SP_01 = 153511; --突進　手前
SP_02 = 153512; --突進　奥
SP_03 = 153513; --踏みつけ　手前
SP_04 = 153514; --踏みつけ　奥
SP_05 = 153517; --発射
SP_06 = 153518; --爆発

--敵側
SP_02r = 153515; --突進　奥
SP_03r = 153516; --踏みつけ　手前

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
-- 突進〜気弾(348F)
------------------------------------------------------
spep_0 = 0;
a = 3;

-- ** エフェクト等 ** --
kidan_f = entryEffectLife( spep_0 + 0, SP_01, 348, 0x100, -1, 0, 0, 0 );  --突進　手前(ef_001)
setEffMoveKey( spep_0 + 0, kidan_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 348, kidan_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kidan_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 348, kidan_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kidan_f, 0 );
setEffRotateKey( spep_0 + 348, kidan_f, 0 );
setEffAlphaKey( spep_0 + 0, kidan_f, 255 );
setEffAlphaKey( spep_0 + 347, kidan_f, 255 );
setEffAlphaKey( spep_0 + 348, kidan_f, 0 );

kidan_b = entryEffectLife( spep_0 + 0, SP_02, 348, 0x80, -1, 0, 0, 0 );  --突進　奥(ef_002)
setEffMoveKey( spep_0 + 0, kidan_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 348, kidan_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kidan_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 348, kidan_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kidan_b, 0 );
setEffRotateKey( spep_0 + 348, kidan_b, 0 );
setEffAlphaKey( spep_0 + 0, kidan_b, 255 );
setEffAlphaKey( spep_0 + 347, kidan_b, 255 );
setEffAlphaKey( spep_0 + 348, kidan_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 94, 1, 1 );
changeAnime( spep_0 -3 + 94, 1, 118 );

setMoveKey( spep_0 -3 + 94, 1, 992.3, -256.2 , 0 );
setMoveKey( spep_0 -3 + 96, 1, 921.8, -237.6 , 0 );
setMoveKey( spep_0 -3 + 98, 1, 563.3, -143.2 , 0 );
setMoveKey( spep_0 -3 + 100, 1, 351.5, -87.4 , 0 );
setMoveKey( spep_0 -3 + 102, 1, 248, -60.1 , 0 );
setMoveKey( spep_0 -3 + 104, 1, 189.3, -44.6 , 0 );
setMoveKey( spep_0 -3 + 106, 1, 156, -35.8 , 0 );
setMoveKey( spep_0 -3 + 108, 1, 139.2, -31.4 , 0 );
setMoveKey( spep_0 -3 + 110, 1, 135.5, -30.7 , 0 );

setScaleKey( spep_0 -3 + 94, 1, 5.53, 5.53 );
setScaleKey( spep_0 -3 + 96, 1, 5.26, 5.26 );
setScaleKey( spep_0 -3 + 98, 1, 3.93, 3.93 );
setScaleKey( spep_0 -3 + 100, 1, 3.14, 3.14 );
setScaleKey( spep_0 -3 + 102, 1, 2.76, 2.76 );
setScaleKey( spep_0 -3 + 104, 1, 2.54, 2.54 );
setScaleKey( spep_0 -3 + 106, 1, 2.42, 2.42 );
setScaleKey( spep_0 -3 + 108, 1, 2.35, 2.35 );
setScaleKey( spep_0 -3 + 110, 1, 2.34, 2.34 );

setRotateKey( spep_0 -3 + 94, 1, 0 );

-- ** 音 ** --
playSe( spep_0 + 2, 9 );  --迫る

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 350, 0, 0, 0, 0, 255 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 122; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
changeAnime( SP_dodge + 0, 1, 118 );

setMoveKey( SP_dodge + 0, 1, 135.5, -30.7 , 0 );
setMoveKey( SP_dodge + 10, 1, 135.5, -30.7 , 0 );

setScaleKey( SP_dodge + 0, 1, 2.34, 2.34 );
setScaleKey( SP_dodge + 10, 1, 2.34, 2.34 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

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

-- ** 敵キャラクター ** --
setDisp( spep_0 + 200, 1, 0 );

setMoveKey( spep_0 -3 + 148, 1, 135.5, -30.7 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 136.4, -31.1 , 0 );
setMoveKey( spep_0 -3 + 152, 1, 138.2, -31.6 , 0 );
setMoveKey( spep_0 -3 + 154, 1, 131.5, -30 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 134.2, -30.9 , 0 );
setMoveKey( spep_0 -3 + 158, 1, 129.6, -29.8 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 125.7, -28.8 , 0 );
setMoveKey( spep_0 -3 + 162, 1, 122.6, -28.2 , 0 );
setMoveKey( spep_0 -3 + 164, 1, 120.8, -27.9 , 0 );
setMoveKey( spep_0 -3 + 166, 1, 113.3, -26.2 , 0 );
setMoveKey( spep_0 -3 + 168, 1, 114.7, -27 , 0 );
setMoveKey( spep_0 -3 + 170, 1, 108.6, -25.6 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 102.9, -24.4 , 0 );
setMoveKey( spep_0 -3 + 174, 1, 97.7, -23.4 , 0 );
setMoveKey( spep_0 -3 + 176, 1, 92.5, -22.4 , 0 );
setMoveKey( spep_0 -3 + 178, 1, 87.5, -21.5 , 0 );
setMoveKey( spep_0 -3 + 180, 1, 82.7, -20.6 , 0 );
setMoveKey( spep_0 -3 + 182, 1, 78.1, -19.8 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 73.4, -18.9 , 0 );
setMoveKey( spep_0 -3 + 186, 1, 68.8, -18 , 0 );
setMoveKey( spep_0 -3 + 188, 1, 56.4, -15.1 , 0 );
setMoveKey( spep_0 -3 + 190, 1, 51.8, -14.2 , 0 );
setMoveKey( spep_0 -3 + 192, 1, 47.1, -13.4 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 42.5, -12.4 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 37.6, -11.5 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 32.6, -10.7 , 0 );
setMoveKey( spep_0 + 200, 1, 32.6, -10.7 , 0 );

setScaleKey( spep_0 -3 + 153, 1, 2.34, 2.34 );
setScaleKey( spep_0 -3 + 154, 1, 2.36, 2.36 );
setScaleKey( spep_0 -3 + 156, 1, 2.36, 2.36 );
setScaleKey( spep_0 -3 + 158, 1, 2.38, 2.38 );
setScaleKey( spep_0 -3 + 160, 1, 2.41, 2.41 );
setScaleKey( spep_0 -3 + 162, 1, 2.43, 2.43 );
setScaleKey( spep_0 -3 + 164, 1, 2.45, 2.45 );
setScaleKey( spep_0 -3 + 166, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 168, 1, 2.52, 2.52 );
setScaleKey( spep_0 -3 + 170, 1, 2.57, 2.57 );
setScaleKey( spep_0 -3 + 172, 1, 2.62, 2.62 );
setScaleKey( spep_0 -3 + 174, 1, 2.66, 2.66 );
setScaleKey( spep_0 -3 + 176, 1, 2.71, 2.71 );
setScaleKey( spep_0 -3 + 178, 1, 2.76, 2.76 );
setScaleKey( spep_0 -3 + 180, 1, 2.8, 2.8 );
setScaleKey( spep_0 -3 + 182, 1, 2.85, 2.85 );
setScaleKey( spep_0 -3 + 184, 1, 2.9, 2.9 );
setScaleKey( spep_0 -3 + 186, 1, 2.94, 2.94 );
setScaleKey( spep_0 -3 + 188, 1, 3.01, 3.01 );
setScaleKey( spep_0 -3 + 190, 1, 3.06, 3.06 );
setScaleKey( spep_0 -3 + 192, 1, 3.11, 3.11 );
setScaleKey( spep_0 -3 + 194, 1, 3.15, 3.15 );
setScaleKey( spep_0 -3 + 196, 1, 3.2, 3.2 );
setScaleKey( spep_0 -3 + 198, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 200, 1, 3.25, 3.25 );

setRotateKey( spep_0 -3 + 154, 1, 0 );
setRotateKey( spep_0 -3 + 156, 1, 0.1 );
setRotateKey( spep_0 -3 + 158, 1, 0.2 );
setRotateKey( spep_0 -3 + 160, 1, 0.5 );
setRotateKey( spep_0 -3 + 162, 1, 0.8 );
setRotateKey( spep_0 -3 + 164, 1, 1.2 );
setRotateKey( spep_0 -3 + 166, 1, 1.6 );
setRotateKey( spep_0 -3 + 168, 1, 2.1 );
setRotateKey( spep_0 -3 + 170, 1, 2.6 );
setRotateKey( spep_0 -3 + 172, 1, 3.1 );
setRotateKey( spep_0 -3 + 174, 1, 3.7 );
setRotateKey( spep_0 -3 + 176, 1, 4.3 );
setRotateKey( spep_0 -3 + 178, 1, 4.9 );
setRotateKey( spep_0 -3 + 180, 1, 5.5 );
setRotateKey( spep_0 -3 + 182, 1, 6.2 );
setRotateKey( spep_0 -3 + 184, 1, 6.8 );
setRotateKey( spep_0 -3 + 186, 1, 7.5 );
setRotateKey( spep_0 -3 + 188, 1, 8.2 );
setRotateKey( spep_0 -3 + 190, 1, 8.8 );
setRotateKey( spep_0 -3 + 192, 1, 9.5 );
setRotateKey( spep_0 -3 + 194, 1, 10.1 );
setRotateKey( spep_0 -3 + 196, 1, 10.7 );
setRotateKey( spep_0 -3 + 198, 1, 11.2 );
setRotateKey( spep_0 + 200, 1, 11.2 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 256, 1, 1 );
setDisp( spep_0 + 287, 1, 0 );
--changeAnime( spep_0 -3 + 256, 1, 114 );

setMoveKey( spep_0 -3 + 256, 1, -178.5, 293.8 , 0 );
setMoveKey( spep_0 -3 + 258, 1, -179.8, 292.1 , 0 );
setMoveKey( spep_0 -3 + 260, 1, -180.6, 289.4 , 0 );
setMoveKey( spep_0 -3 + 262, 1, -180.7, 285.3 , 0 );
setMoveKey( spep_0 -3 + 264, 1, -179.9, 279.5 , 0 );
setMoveKey( spep_0 -3 + 266, 1, -180.7, 274.5 , 0 );
setMoveKey( spep_0 -3 + 268, 1, -180.4, 267.6 , 0 );
setMoveKey( spep_0 -3 + 270, 1, -179.8, 258.8 , 0 );
setMoveKey( spep_0 -3 + 272, 1, -178.6, 248.3 , 0 );
setMoveKey( spep_0 -3 + 274, 1, -177.9, 240.5 , 0 );
setMoveKey( spep_0 -3 + 276, 1, -176.6, 231 , 0 );
setMoveKey( spep_0 -3 + 278, 1, -174.9, 219.4 , 0 );
setMoveKey( spep_0 -3 + 280, 1, -172.6, 205 , 0 );
setMoveKey( spep_0 -3 + 282, 1, -169.1, 186.5 , 0 );
setMoveKey( spep_0 -3 + 284, 1, -163.5, 162.7 , 0 );
setMoveKey( spep_0 -3 + 286, 1, -141.1, 135 , 0 );
setMoveKey( spep_0 -3 + 288, 1, -121.8, 111.3 , 0 );
setMoveKey( spep_0 + 287, 1, -121.8, 111.3 , 0 );

setScaleKey( spep_0 -3 + 256, 1, 0.73, 0.73 );
setScaleKey( spep_0 -3 + 262, 1, 0.73, 0.73 );
setScaleKey( spep_0 -3 + 264, 1, 0.72, 0.72 );
setScaleKey( spep_0 -3 + 266, 1, 0.73, 0.73 );
setScaleKey( spep_0 -3 + 278, 1, 0.73, 0.73 );
setScaleKey( spep_0 -3 + 280, 1, 0.75, 0.75 );
setScaleKey( spep_0 -3 + 284, 1, 0.75, 0.75 );
setScaleKey( spep_0 -3 + 286, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 287, 1, 0.76, 0.76 );

b = 55;
setRotateKey( spep_0 -3 + 256, 1, -34.8 + b );
setRotateKey( spep_0 -3 + 258, 1, -34.7 + b );
setRotateKey( spep_0 -3 + 260, 1, -34.7 + b );
setRotateKey( spep_0 -3 + 262, 1, -34.5 + b );
setRotateKey( spep_0 -3 + 264, 1, -34.4 + b );
setRotateKey( spep_0 -3 + 266, 1, -34.1 + b );
setRotateKey( spep_0 -3 + 268, 1, -33.9 + b );
setRotateKey( spep_0 -3 + 270, 1, -33.5 + b );
setRotateKey( spep_0 -3 + 272, 1, -33.1 + b );
setRotateKey( spep_0 -3 + 274, 1, -32.6 + b );
setRotateKey( spep_0 -3 + 276, 1, -31.9 + b );
setRotateKey( spep_0 -3 + 278, 1, -31.1 + b );
setRotateKey( spep_0 -3 + 280, 1, -30.1 + b );
setRotateKey( spep_0 -3 + 282, 1, -28.8 + b );
setRotateKey( spep_0 -3 + 284, 1, -27.1 + b );
setRotateKey( spep_0 -3 + 286, 1, -24.6 + b );
setRotateKey( spep_0 -3 + 288, 1, -22.5 + b );
setRotateKey( spep_0 + 287, 1, -22.5 + b );

-- ** 音 ** --
playSe( spep_0 + 170, 1019 );  --溜める
setSeVolume( spep_0 + 170, 1019, 55);
playSe( spep_0 + 198, 17 );  --気弾
playSe( spep_0 + 287, 1024 );  --着弾

-- ** 次の準備 ** --
spep_1 = spep_0 + 348;

------------------------------------------------------
-- 踏みつけ(228F)
------------------------------------------------------

-- ** エフェクト等 ** --
fumi_f = entryEffectLife( spep_1 + 0, SP_03, 228, 0x100, -1, 0, 0, 0 );  --踏みつけ　手前(ef_003)
setEffMoveKey( spep_1 + 0, fumi_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 228, fumi_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, fumi_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 228, fumi_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fumi_f, 0 );
setEffRotateKey( spep_1 + 228, fumi_f, 0 );
setEffAlphaKey( spep_1 + 0, fumi_f, 255 );
setEffAlphaKey( spep_1 + 228, fumi_f, 255 );

fumi_b = entryEffectLife( spep_1 + 0, SP_04, 228, 0x80, -1, 0, 0, 0 );  --踏みつけ　奥(ef_004)
setEffMoveKey( spep_1 + 0, fumi_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 228, fumi_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, fumi_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 228, fumi_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fumi_b, 0 );
setEffRotateKey( spep_1 + 228, fumi_b, 0 );
setEffAlphaKey( spep_1 + 0, fumi_b, 255 );
setEffAlphaKey( spep_1 + 228, fumi_b, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_1 + 0,  914, 106, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 106, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, ryusen1, 3.79, 1.29 );
setEffScaleKey( spep_1 + 106, ryusen1, 3.79, 1.29 );

setEffRotateKey( spep_1 + 0, ryusen1, -7.5 );
setEffRotateKey( spep_1 + 106, ryusen1, -7.5 );

setEffAlphaKey( spep_1 + 0, ryusen1, 118 );
setEffAlphaKey( spep_1 + 106, ryusen1, 118 );

ryusen2 = entryEffectLife( spep_1 + 122 -a,  914, 24 + a, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 122 -a, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 146, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 122 -a, ryusen2, 4.56, 1.29 );
setEffScaleKey( spep_1 + 146, ryusen2, 4.56, 1.29 );

setEffRotateKey( spep_1 + 122 -a, ryusen2, 81.6 );
setEffRotateKey( spep_1 + 146, ryusen2, 81.6 );

setEffAlphaKey( spep_1 + 122 -a, ryusen2, 118 );
setEffAlphaKey( spep_1 + 146, ryusen2, 118 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 168, 1, 0 );
changeAnime( spep_1 + 0, 1, 106 );
changeAnime( spep_1 -3 + 112, 1, 108 );

setMoveKey( spep_1 + 0, 1, -750.1, -191.5 , 0 );
setMoveKey( spep_1 -3 + 4, 1, -601.7, -168.5 , 0 );
setMoveKey( spep_1 -3 + 6, 1, -525, -157.9 , 0 );
setMoveKey( spep_1 -3 + 8, 1, -473.8, -147.8 , 0 );
setMoveKey( spep_1 -3 + 10, 1, -402.1, -138.3 , 0 );
setMoveKey( spep_1 -3 + 12, 1, -351, -129.5 , 0 );
setMoveKey( spep_1 -3 + 14, 1, -297.4, -121.1 , 0 );
setMoveKey( spep_1 -3 + 16, 1, -248.9, -113.4 , 0 );
setMoveKey( spep_1 -3 + 18, 1, -215.9, -106.3 , 0 );
setMoveKey( spep_1 -3 + 20, 1, -162.7, -99.7 , 0 );
setMoveKey( spep_1 -3 + 22, 1, -136.5, -93.8 , 0 );
setMoveKey( spep_1 -3 + 24, 1, -100, -88.4 , 0 );
setMoveKey( spep_1 -3 + 26, 1, -77.8, -83.6 , 0 );
setMoveKey( spep_1 -3 + 28, 1, -47, -79.3 , 0 );
setMoveKey( spep_1 -3 + 30, 1, -32.6, -75.7 , 0 );
setMoveKey( spep_1 -3 + 32, 1, -5.8, -72.6 , 0 );
setMoveKey( spep_1 -3 + 34, 1, -8.9, -70.1 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 7.5, -68.2 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 16.4, -66.9 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 6.1, -65.9 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 24.8, -65 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 14.3, -64.1 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 19.7, -63.3 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 14.9, -62.6 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 27.6, -61.9 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 22.3, -61.2 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 32.8, -60.7 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 18.3, -60.2 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 31.8, -59.7 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 23.9, -59.3 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 34.4, -59 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 21.4, -58.7 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 35.2, -58.5 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 22.5, -58.4 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 36.1, -58.3 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 35.8, -58.2 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 21.8, -58.2 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 34.1, -58.2 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 18.5, -58.2 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 33.8, -58.2 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 19.8, -58.2 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 26.9, -58.2 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 19.4, -58.2 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 27.9, -58.2 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 14.2, -58.2 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 25.6, -58.2 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 20, -58.2 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 21, -58.2 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 20.7, -58.2 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 8.7, -58.2 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 21.4, -58.2 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 10.5, -58.2 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 14.2, -58.2 , 0 );
setMoveKey( spep_1 -3 + 111, 1, 17.3, -58.2 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 49.1, -284.7 , 0 );
setMoveKey( spep_1 -3 + 113, 1, 49.1, -284.7 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 53, -292.9 , 0 );
setMoveKey( spep_1 -3 + 115, 1, 53, -292.9 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 60.7, -311.7 , 0 );
setMoveKey( spep_1 -3 + 117, 1, 60.7, -311.7 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 57.3, -313 , 0 );
setMoveKey( spep_1 -3 + 119, 1, 57.3, -313 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 60.7, -328.7 , 0 );
setMoveKey( spep_1 -3 + 121, 1, 60.7, -328.7 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 42.3, -210.6 , 0 );
setMoveKey( spep_1 -3 + 123, 1, 42.3, -210.6 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 44, -245.4 , 0 );
setMoveKey( spep_1 -3 + 125, 1, 44, -245.4 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 56.1, -297.2 , 0 );
setMoveKey( spep_1 -3 + 127, 1, 56.1, -297.2 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 79.7, -404.7 , 0 );
setMoveKey( spep_1 -3 + 129, 1, 79.7, -404.7 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 84.4, -450.1 , 0 );
setMoveKey( spep_1 -3 + 131, 1, 84.4, -450.1 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 81, -426.2 , 0 );
setMoveKey( spep_1 -3 + 133, 1, 81, -426.2 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 72.6, -375.8 , 0 );
setMoveKey( spep_1 -3 + 135, 1, 72.6, -375.8 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 61.8, -312.3 , 0 );
setMoveKey( spep_1 -3 + 137, 1, 61.8, -312.3 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 49, -239.3 , 0 );
setMoveKey( spep_1 -3 + 139, 1, 49, -239.3 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 34.4, -158.4 , 0 );
setMoveKey( spep_1 -3 + 141, 1, 34.4, -158.4 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 17.8, -67.7 , 0 );
setMoveKey( spep_1 -3 + 143, 1, 17.8, -67.7 , 0 );
setMoveKey( spep_1 -3 + 144, 1, -1.3, 35.4 , 0 );
setMoveKey( spep_1 -3 + 145, 1, -1.3, 35.4 , 0 );
setMoveKey( spep_1 -3 + 146, 1, -23.7, 157.3 , 0 );
setMoveKey( spep_1 -3 + 147, 1, -23.7, 157.3 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 12.7, -28.6 , 0 );
setMoveKey( spep_1 -3 + 149, 1, 12.7, -28.6 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 52.2, -230.3 , 0 );
setMoveKey( spep_1 -3 + 151, 1, 52.2, -230.3 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 50.2, -247.3 , 0 );
setMoveKey( spep_1 -3 + 153, 1, 50.2, -247.3 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 56.9, -248.1 , 0 );
setMoveKey( spep_1 -3 + 155, 1, 56.9, -248.1 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 55.8, -238 , 0 );
setMoveKey( spep_1 -3 + 157, 1, 55.8, -238 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 59.7, -253.1 , 0 );
setMoveKey( spep_1 -3 + 159, 1, 59.7, -253.1 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 58.9, -244.1 , 0 );
setMoveKey( spep_1 -3 + 161, 1, 58.9, -244.1 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 64.1, -264.1 , 0 );
setMoveKey( spep_1 -3 + 163, 1, 64.1, -264.1 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 66.1, -251 , 0 );
setMoveKey( spep_1 -3 + 165, 1, 66.1, -251 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 57.7, -259.3 , 0 );
setMoveKey( spep_1 -3 + 167, 1, 57.7, -259.3 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 70.5, -268.7 , 0 );

setScaleKey( spep_1 -3 + 0, 1, 1.01, 1.01 );
setScaleKey( spep_1 -3 + 4, 1, 1.01, 1.01 );
setScaleKey( spep_1 -3 + 6, 1, 1.02, 1.02 );
setScaleKey( spep_1 -3 + 14, 1, 1.02, 1.02 );
setScaleKey( spep_1 -3 + 16, 1, 1.03, 1.03 );
setScaleKey( spep_1 -3 + 28, 1, 1.03, 1.03 );
setScaleKey( spep_1 -3 + 30, 1, 1.04, 1.04 );
setScaleKey( spep_1 -3 + 48, 1, 1.04, 1.04 );
setScaleKey( spep_1 -3 + 50, 1, 1.05, 1.05 );
setScaleKey( spep_1 -3 + 111, 1, 1.05, 1.05 );
setScaleKey( spep_1 -3 + 120, 1, 1.46, 1.46 );
setScaleKey( spep_1 -3 + 121, 1, 1.46, 1.46 );
setScaleKey( spep_1 -3 + 122, 1, 1, 1 );
setScaleKey( spep_1 -3 + 150, 1, 1, 1 );
setScaleKey( spep_1 -3 + 152, 1, 1.16, 1.16 );
setScaleKey( spep_1 -3 + 154, 1, 0.98, 0.98 );
setScaleKey( spep_1 -3 + 156, 1, 1.15, 1.15 );
setScaleKey( spep_1 -3 + 158, 1, 0.98, 0.98 );
setScaleKey( spep_1 -3 + 160, 1, 1.02, 1.02 );
setScaleKey( spep_1 -3 + 162, 1, 0.98, 0.98 );
setScaleKey( spep_1 -3 + 164, 1, 1.02, 1.02 );
setScaleKey( spep_1 -3 + 166, 1, 0.97, 0.97 );
setScaleKey( spep_1 -3 + 168, 1, 1.02, 1.02 );

setRotateKey( spep_1 -3 + 0, 1, 26.5 );
setRotateKey( spep_1 -3 + 44, 1, 26.5 );
setRotateKey( spep_1 -3 + 46, 1, 26.3 );
setRotateKey( spep_1 -3 + 48, 1, 26.5 );
setRotateKey( spep_1 -3 + 111, 1, 26.5 );
setRotateKey( spep_1 -3 + 112, 1, 74.9 );
setRotateKey( spep_1 -3 + 168, 1, 74.9 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 228, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_1 + 226, 2, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_1 + 72, 8 );  --踏みつけ前
playSe( spep_1 + 108, 1011 );  --踏みつけ
playSe( spep_1 -3 + 168, 1068 );  --地面押し付け

-- ** 次の準備 ** --
spep_2 = spep_1 + 228;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen1, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen1, 0 );
setEffRotateKey( spep_2 + 90, shuchusen1, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen1, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 発射(226F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_3 + 0, SP_05, 226, 0x100, -1, 0, 0, 0 );  --発射(ef_005)
setEffMoveKey( spep_3 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_3 + 226, hassha, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_3 + 226, hassha, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hassha, 0 );
setEffRotateKey( spep_3 + 226, hassha, 0 );
setEffAlphaKey( spep_3 + 0, hassha, 255 );
setEffAlphaKey( spep_3 + 226, hassha, 255 );

c = 10;
-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_3 + 86 -c,  906, 84, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 86 -c, shuchusen2, 84, 20 );

setEffMoveKey( spep_3 + 86 -c, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 170 -c, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 86 -c, shuchusen2, 1.8, 1.8 );
setEffScaleKey( spep_3 + 170 -c, shuchusen2, 1.8, 1.8 );

setEffRotateKey( spep_3 + 86 -c, shuchusen2, 0 );
setEffRotateKey( spep_3 + 170 -c, shuchusen2, 0 );

setEffAlphaKey( spep_3 + 86 -c, shuchusen2, 0 );
setEffAlphaKey( spep_3 + 101 -c, shuchusen2, 0 );
setEffAlphaKey( spep_3 + 102 -c, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 170 -c, shuchusen2, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_3 + 86 -c, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_3 + 86 -c, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_3 + 102 -c,  190006, 68, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_3 + 102 -c, ctgogo, 68, 10 );

setEffMoveKey( spep_3 + 102 -c, ctgogo, -9.9, 515.5 , 0 );
setEffMoveKey( spep_3 + 170 -c, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_3 + 102 -c, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_3 + 162 -c, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_3 + 164 -c, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_3 + 166 -c, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_3 + 168 -c, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_3 + 170 -c, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_3 + 102 -c, ctgogo, 0 );
setEffRotateKey( spep_3 + 170 -c, ctgogo, 0 );

setEffAlphaKey( spep_3 + 102 -c, ctgogo, 255 );
setEffAlphaKey( spep_3 + 170 -c, ctgogo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 226, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_3 + 38, 1072 );  --煙開け
playSe( spep_3 + 102 -c, SE_04 );  --ゴゴゴ
playSe( spep_3 + 120, 1017 );  --発射
playSe( spep_3 + 170, 1017 );  --発射
playSe( spep_3 + 218, 1017 );  --発射

-- ** 次の準備 ** --
spep_4 = spep_3 + 226;

------------------------------------------------------
-- 爆発(162F)
------------------------------------------------------

-- ** エフェクト等 ** --
bakuhatsu = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --爆発(ef_006)
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 162, bakuhatsu, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, bakuhatsu, 1.0, 1.0 );
setEffScaleKey( spep_4 + 162, bakuhatsu, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 162, bakuhatsu, 0 );
setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 162, bakuhatsu, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 162, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_4 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_4 + 4, 1024);  --爆発
--playSe( spep_4 + 36, 1068);  --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 38 );
entryFade( spep_4 + 152, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_4 + 162 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 突進〜気弾(348F)
------------------------------------------------------
spep_0 = 0;
a = 3;

-- ** エフェクト等 ** --
kidan_f = entryEffectLife( spep_0 + 0, SP_01, 348, 0x100, -1, 0, 0, 0 );  --突進　手前(ef_001)
setEffMoveKey( spep_0 + 0, kidan_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 348, kidan_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kidan_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 348, kidan_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kidan_f, 0 );
setEffRotateKey( spep_0 + 348, kidan_f, 0 );
setEffAlphaKey( spep_0 + 0, kidan_f, 255 );
setEffAlphaKey( spep_0 + 347, kidan_f, 255 );
setEffAlphaKey( spep_0 + 348, kidan_f, 0 );

kidan_b = entryEffectLife( spep_0 + 0, SP_02r, 348, 0x80, -1, 0, 0, 0 );  --突進　奥(ef_002)
setEffMoveKey( spep_0 + 0, kidan_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 348, kidan_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kidan_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 348, kidan_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kidan_b, 0 );
setEffRotateKey( spep_0 + 348, kidan_b, 0 );
setEffAlphaKey( spep_0 + 0, kidan_b, 255 );
setEffAlphaKey( spep_0 + 347, kidan_b, 255 );
setEffAlphaKey( spep_0 + 348, kidan_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 94, 1, 1 );
changeAnime( spep_0 -3 + 94, 1, 118 );

setMoveKey( spep_0 -3 + 94, 1, 992.3, -256.2 , 0 );
setMoveKey( spep_0 -3 + 96, 1, 921.8, -237.6 , 0 );
setMoveKey( spep_0 -3 + 98, 1, 563.3, -143.2 , 0 );
setMoveKey( spep_0 -3 + 100, 1, 351.5, -87.4 , 0 );
setMoveKey( spep_0 -3 + 102, 1, 248, -60.1 , 0 );
setMoveKey( spep_0 -3 + 104, 1, 189.3, -44.6 , 0 );
setMoveKey( spep_0 -3 + 106, 1, 156, -35.8 , 0 );
setMoveKey( spep_0 -3 + 108, 1, 139.2, -31.4 , 0 );
setMoveKey( spep_0 -3 + 110, 1, 135.5, -30.7 , 0 );

setScaleKey( spep_0 -3 + 94, 1, 5.53, 5.53 );
setScaleKey( spep_0 -3 + 96, 1, 5.26, 5.26 );
setScaleKey( spep_0 -3 + 98, 1, 3.93, 3.93 );
setScaleKey( spep_0 -3 + 100, 1, 3.14, 3.14 );
setScaleKey( spep_0 -3 + 102, 1, 2.76, 2.76 );
setScaleKey( spep_0 -3 + 104, 1, 2.54, 2.54 );
setScaleKey( spep_0 -3 + 106, 1, 2.42, 2.42 );
setScaleKey( spep_0 -3 + 108, 1, 2.35, 2.35 );
setScaleKey( spep_0 -3 + 110, 1, 2.34, 2.34 );

setRotateKey( spep_0 -3 + 94, 1, 0 );

-- ** 音 ** --
playSe( spep_0 + 2, 9 );  --迫る

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 350, 0, 0, 0, 0, 255 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 122; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
changeAnime( SP_dodge + 0, 1, 118 );

setMoveKey( SP_dodge + 0, 1, 135.5, -30.7 , 0 );
setMoveKey( SP_dodge + 10, 1, 135.5, -30.7 , 0 );

setScaleKey( SP_dodge + 0, 1, 2.34, 2.34 );
setScaleKey( SP_dodge + 10, 1, 2.34, 2.34 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

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

-- ** 敵キャラクター ** --
setDisp( spep_0 + 200, 1, 0 );

setMoveKey( spep_0 -3 + 148, 1, 135.5, -30.7 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 136.4, -31.1 , 0 );
setMoveKey( spep_0 -3 + 152, 1, 138.2, -31.6 , 0 );
setMoveKey( spep_0 -3 + 154, 1, 131.5, -30 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 134.2, -30.9 , 0 );
setMoveKey( spep_0 -3 + 158, 1, 129.6, -29.8 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 125.7, -28.8 , 0 );
setMoveKey( spep_0 -3 + 162, 1, 122.6, -28.2 , 0 );
setMoveKey( spep_0 -3 + 164, 1, 120.8, -27.9 , 0 );
setMoveKey( spep_0 -3 + 166, 1, 113.3, -26.2 , 0 );
setMoveKey( spep_0 -3 + 168, 1, 114.7, -27 , 0 );
setMoveKey( spep_0 -3 + 170, 1, 108.6, -25.6 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 102.9, -24.4 , 0 );
setMoveKey( spep_0 -3 + 174, 1, 97.7, -23.4 , 0 );
setMoveKey( spep_0 -3 + 176, 1, 92.5, -22.4 , 0 );
setMoveKey( spep_0 -3 + 178, 1, 87.5, -21.5 , 0 );
setMoveKey( spep_0 -3 + 180, 1, 82.7, -20.6 , 0 );
setMoveKey( spep_0 -3 + 182, 1, 78.1, -19.8 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 73.4, -18.9 , 0 );
setMoveKey( spep_0 -3 + 186, 1, 68.8, -18 , 0 );
setMoveKey( spep_0 -3 + 188, 1, 56.4, -15.1 , 0 );
setMoveKey( spep_0 -3 + 190, 1, 51.8, -14.2 , 0 );
setMoveKey( spep_0 -3 + 192, 1, 47.1, -13.4 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 42.5, -12.4 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 37.6, -11.5 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 32.6, -10.7 , 0 );
setMoveKey( spep_0 + 200, 1, 32.6, -10.7 , 0 );

setScaleKey( spep_0 -3 + 153, 1, 2.34, 2.34 );
setScaleKey( spep_0 -3 + 154, 1, 2.36, 2.36 );
setScaleKey( spep_0 -3 + 156, 1, 2.36, 2.36 );
setScaleKey( spep_0 -3 + 158, 1, 2.38, 2.38 );
setScaleKey( spep_0 -3 + 160, 1, 2.41, 2.41 );
setScaleKey( spep_0 -3 + 162, 1, 2.43, 2.43 );
setScaleKey( spep_0 -3 + 164, 1, 2.45, 2.45 );
setScaleKey( spep_0 -3 + 166, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 168, 1, 2.52, 2.52 );
setScaleKey( spep_0 -3 + 170, 1, 2.57, 2.57 );
setScaleKey( spep_0 -3 + 172, 1, 2.62, 2.62 );
setScaleKey( spep_0 -3 + 174, 1, 2.66, 2.66 );
setScaleKey( spep_0 -3 + 176, 1, 2.71, 2.71 );
setScaleKey( spep_0 -3 + 178, 1, 2.76, 2.76 );
setScaleKey( spep_0 -3 + 180, 1, 2.8, 2.8 );
setScaleKey( spep_0 -3 + 182, 1, 2.85, 2.85 );
setScaleKey( spep_0 -3 + 184, 1, 2.9, 2.9 );
setScaleKey( spep_0 -3 + 186, 1, 2.94, 2.94 );
setScaleKey( spep_0 -3 + 188, 1, 3.01, 3.01 );
setScaleKey( spep_0 -3 + 190, 1, 3.06, 3.06 );
setScaleKey( spep_0 -3 + 192, 1, 3.11, 3.11 );
setScaleKey( spep_0 -3 + 194, 1, 3.15, 3.15 );
setScaleKey( spep_0 -3 + 196, 1, 3.2, 3.2 );
setScaleKey( spep_0 -3 + 198, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 200, 1, 3.25, 3.25 );

setRotateKey( spep_0 -3 + 154, 1, 0 );
setRotateKey( spep_0 -3 + 156, 1, 0.1 );
setRotateKey( spep_0 -3 + 158, 1, 0.2 );
setRotateKey( spep_0 -3 + 160, 1, 0.5 );
setRotateKey( spep_0 -3 + 162, 1, 0.8 );
setRotateKey( spep_0 -3 + 164, 1, 1.2 );
setRotateKey( spep_0 -3 + 166, 1, 1.6 );
setRotateKey( spep_0 -3 + 168, 1, 2.1 );
setRotateKey( spep_0 -3 + 170, 1, 2.6 );
setRotateKey( spep_0 -3 + 172, 1, 3.1 );
setRotateKey( spep_0 -3 + 174, 1, 3.7 );
setRotateKey( spep_0 -3 + 176, 1, 4.3 );
setRotateKey( spep_0 -3 + 178, 1, 4.9 );
setRotateKey( spep_0 -3 + 180, 1, 5.5 );
setRotateKey( spep_0 -3 + 182, 1, 6.2 );
setRotateKey( spep_0 -3 + 184, 1, 6.8 );
setRotateKey( spep_0 -3 + 186, 1, 7.5 );
setRotateKey( spep_0 -3 + 188, 1, 8.2 );
setRotateKey( spep_0 -3 + 190, 1, 8.8 );
setRotateKey( spep_0 -3 + 192, 1, 9.5 );
setRotateKey( spep_0 -3 + 194, 1, 10.1 );
setRotateKey( spep_0 -3 + 196, 1, 10.7 );
setRotateKey( spep_0 -3 + 198, 1, 11.2 );
setRotateKey( spep_0 + 200, 1, 11.2 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 256, 1, 1 );
setDisp( spep_0 + 287, 1, 0 );
--changeAnime( spep_0 -3 + 256, 1, 114 );

setMoveKey( spep_0 -3 + 256, 1, -178.5, 293.8 , 0 );
setMoveKey( spep_0 -3 + 258, 1, -179.8, 292.1 , 0 );
setMoveKey( spep_0 -3 + 260, 1, -180.6, 289.4 , 0 );
setMoveKey( spep_0 -3 + 262, 1, -180.7, 285.3 , 0 );
setMoveKey( spep_0 -3 + 264, 1, -179.9, 279.5 , 0 );
setMoveKey( spep_0 -3 + 266, 1, -180.7, 274.5 , 0 );
setMoveKey( spep_0 -3 + 268, 1, -180.4, 267.6 , 0 );
setMoveKey( spep_0 -3 + 270, 1, -179.8, 258.8 , 0 );
setMoveKey( spep_0 -3 + 272, 1, -178.6, 248.3 , 0 );
setMoveKey( spep_0 -3 + 274, 1, -177.9, 240.5 , 0 );
setMoveKey( spep_0 -3 + 276, 1, -176.6, 231 , 0 );
setMoveKey( spep_0 -3 + 278, 1, -174.9, 219.4 , 0 );
setMoveKey( spep_0 -3 + 280, 1, -172.6, 205 , 0 );
setMoveKey( spep_0 -3 + 282, 1, -169.1, 186.5 , 0 );
setMoveKey( spep_0 -3 + 284, 1, -163.5, 162.7 , 0 );
setMoveKey( spep_0 -3 + 286, 1, -141.1, 135 , 0 );
setMoveKey( spep_0 -3 + 288, 1, -121.8, 111.3 , 0 );
setMoveKey( spep_0 + 287, 1, -121.8, 111.3 , 0 );

setScaleKey( spep_0 -3 + 256, 1, 0.73, 0.73 );
setScaleKey( spep_0 -3 + 262, 1, 0.73, 0.73 );
setScaleKey( spep_0 -3 + 264, 1, 0.72, 0.72 );
setScaleKey( spep_0 -3 + 266, 1, 0.73, 0.73 );
setScaleKey( spep_0 -3 + 278, 1, 0.73, 0.73 );
setScaleKey( spep_0 -3 + 280, 1, 0.75, 0.75 );
setScaleKey( spep_0 -3 + 284, 1, 0.75, 0.75 );
setScaleKey( spep_0 -3 + 286, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 287, 1, 0.76, 0.76 );

b = 55;
setRotateKey( spep_0 -3 + 256, 1, -34.8 + b );
setRotateKey( spep_0 -3 + 258, 1, -34.7 + b );
setRotateKey( spep_0 -3 + 260, 1, -34.7 + b );
setRotateKey( spep_0 -3 + 262, 1, -34.5 + b );
setRotateKey( spep_0 -3 + 264, 1, -34.4 + b );
setRotateKey( spep_0 -3 + 266, 1, -34.1 + b );
setRotateKey( spep_0 -3 + 268, 1, -33.9 + b );
setRotateKey( spep_0 -3 + 270, 1, -33.5 + b );
setRotateKey( spep_0 -3 + 272, 1, -33.1 + b );
setRotateKey( spep_0 -3 + 274, 1, -32.6 + b );
setRotateKey( spep_0 -3 + 276, 1, -31.9 + b );
setRotateKey( spep_0 -3 + 278, 1, -31.1 + b );
setRotateKey( spep_0 -3 + 280, 1, -30.1 + b );
setRotateKey( spep_0 -3 + 282, 1, -28.8 + b );
setRotateKey( spep_0 -3 + 284, 1, -27.1 + b );
setRotateKey( spep_0 -3 + 286, 1, -24.6 + b );
setRotateKey( spep_0 -3 + 288, 1, -22.5 + b );
setRotateKey( spep_0 + 287, 1, -22.5 + b );

-- ** 音 ** --
playSe( spep_0 + 170, 1019 );  --溜める
setSeVolume( spep_0 + 170, 1019, 55);
playSe( spep_0 + 198, 17 );  --気弾
playSe( spep_0 + 287, 1024 );  --着弾

-- ** 次の準備 ** --
spep_1 = spep_0 + 348;

------------------------------------------------------
-- 踏みつけ(228F)
------------------------------------------------------

-- ** エフェクト等 ** --
fumi_f = entryEffectLife( spep_1 + 0, SP_03r, 228, 0x100, -1, 0, 0, 0 );  --踏みつけ　手前(ef_003)
setEffMoveKey( spep_1 + 0, fumi_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 228, fumi_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, fumi_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 228, fumi_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fumi_f, 0 );
setEffRotateKey( spep_1 + 228, fumi_f, 0 );
setEffAlphaKey( spep_1 + 0, fumi_f, 255 );
setEffAlphaKey( spep_1 + 228, fumi_f, 255 );

fumi_b = entryEffectLife( spep_1 + 0, SP_04, 228, 0x80, -1, 0, 0, 0 );  --踏みつけ　奥(ef_004)
setEffMoveKey( spep_1 + 0, fumi_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 228, fumi_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, fumi_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 228, fumi_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fumi_b, 0 );
setEffRotateKey( spep_1 + 228, fumi_b, 0 );
setEffAlphaKey( spep_1 + 0, fumi_b, 255 );
setEffAlphaKey( spep_1 + 228, fumi_b, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_1 + 0,  914, 106, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 106, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, ryusen1, 3.79, 1.29 );
setEffScaleKey( spep_1 + 106, ryusen1, 3.79, 1.29 );

setEffRotateKey( spep_1 + 0, ryusen1, -7.5 );
setEffRotateKey( spep_1 + 106, ryusen1, -7.5 );

setEffAlphaKey( spep_1 + 0, ryusen1, 118 );
setEffAlphaKey( spep_1 + 106, ryusen1, 118 );

ryusen2 = entryEffectLife( spep_1 + 122 -a,  914, 24 + a, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 122 -a, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 146, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 122 -a, ryusen2, 4.56, 1.29 );
setEffScaleKey( spep_1 + 146, ryusen2, 4.56, 1.29 );

setEffRotateKey( spep_1 + 122 -a, ryusen2, 81.6 );
setEffRotateKey( spep_1 + 146, ryusen2, 81.6 );

setEffAlphaKey( spep_1 + 122 -a, ryusen2, 118 );
setEffAlphaKey( spep_1 + 146, ryusen2, 118 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 168, 1, 0 );
changeAnime( spep_1 + 0, 1, 106 );
changeAnime( spep_1 -3 + 112, 1, 108 );

setMoveKey( spep_1 + 0, 1, -750.1, -191.5 , 0 );
setMoveKey( spep_1 -3 + 4, 1, -601.7, -168.5 , 0 );
setMoveKey( spep_1 -3 + 6, 1, -525, -157.9 , 0 );
setMoveKey( spep_1 -3 + 8, 1, -473.8, -147.8 , 0 );
setMoveKey( spep_1 -3 + 10, 1, -402.1, -138.3 , 0 );
setMoveKey( spep_1 -3 + 12, 1, -351, -129.5 , 0 );
setMoveKey( spep_1 -3 + 14, 1, -297.4, -121.1 , 0 );
setMoveKey( spep_1 -3 + 16, 1, -248.9, -113.4 , 0 );
setMoveKey( spep_1 -3 + 18, 1, -215.9, -106.3 , 0 );
setMoveKey( spep_1 -3 + 20, 1, -162.7, -99.7 , 0 );
setMoveKey( spep_1 -3 + 22, 1, -136.5, -93.8 , 0 );
setMoveKey( spep_1 -3 + 24, 1, -100, -88.4 , 0 );
setMoveKey( spep_1 -3 + 26, 1, -77.8, -83.6 , 0 );
setMoveKey( spep_1 -3 + 28, 1, -47, -79.3 , 0 );
setMoveKey( spep_1 -3 + 30, 1, -32.6, -75.7 , 0 );
setMoveKey( spep_1 -3 + 32, 1, -5.8, -72.6 , 0 );
setMoveKey( spep_1 -3 + 34, 1, -8.9, -70.1 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 7.5, -68.2 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 16.4, -66.9 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 6.1, -65.9 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 24.8, -65 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 14.3, -64.1 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 19.7, -63.3 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 14.9, -62.6 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 27.6, -61.9 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 22.3, -61.2 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 32.8, -60.7 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 18.3, -60.2 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 31.8, -59.7 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 23.9, -59.3 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 34.4, -59 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 21.4, -58.7 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 35.2, -58.5 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 22.5, -58.4 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 36.1, -58.3 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 35.8, -58.2 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 21.8, -58.2 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 34.1, -58.2 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 18.5, -58.2 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 33.8, -58.2 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 19.8, -58.2 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 26.9, -58.2 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 19.4, -58.2 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 27.9, -58.2 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 14.2, -58.2 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 25.6, -58.2 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 20, -58.2 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 21, -58.2 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 20.7, -58.2 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 8.7, -58.2 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 21.4, -58.2 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 10.5, -58.2 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 14.2, -58.2 , 0 );
setMoveKey( spep_1 -3 + 111, 1, 17.3, -58.2 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 49.1, -284.7 , 0 );
setMoveKey( spep_1 -3 + 113, 1, 49.1, -284.7 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 53, -292.9 , 0 );
setMoveKey( spep_1 -3 + 115, 1, 53, -292.9 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 60.7, -311.7 , 0 );
setMoveKey( spep_1 -3 + 117, 1, 60.7, -311.7 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 57.3, -313 , 0 );
setMoveKey( spep_1 -3 + 119, 1, 57.3, -313 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 60.7, -328.7 , 0 );
setMoveKey( spep_1 -3 + 121, 1, 60.7, -328.7 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 42.3, -210.6 , 0 );
setMoveKey( spep_1 -3 + 123, 1, 42.3, -210.6 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 44, -245.4 , 0 );
setMoveKey( spep_1 -3 + 125, 1, 44, -245.4 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 56.1, -297.2 , 0 );
setMoveKey( spep_1 -3 + 127, 1, 56.1, -297.2 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 79.7, -404.7 , 0 );
setMoveKey( spep_1 -3 + 129, 1, 79.7, -404.7 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 84.4, -450.1 , 0 );
setMoveKey( spep_1 -3 + 131, 1, 84.4, -450.1 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 81, -426.2 , 0 );
setMoveKey( spep_1 -3 + 133, 1, 81, -426.2 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 72.6, -375.8 , 0 );
setMoveKey( spep_1 -3 + 135, 1, 72.6, -375.8 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 61.8, -312.3 , 0 );
setMoveKey( spep_1 -3 + 137, 1, 61.8, -312.3 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 49, -239.3 , 0 );
setMoveKey( spep_1 -3 + 139, 1, 49, -239.3 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 34.4, -158.4 , 0 );
setMoveKey( spep_1 -3 + 141, 1, 34.4, -158.4 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 17.8, -67.7 , 0 );
setMoveKey( spep_1 -3 + 143, 1, 17.8, -67.7 , 0 );
setMoveKey( spep_1 -3 + 144, 1, -1.3, 35.4 , 0 );
setMoveKey( spep_1 -3 + 145, 1, -1.3, 35.4 , 0 );
setMoveKey( spep_1 -3 + 146, 1, -23.7, 157.3 , 0 );
setMoveKey( spep_1 -3 + 147, 1, -23.7, 157.3 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 12.7, -28.6 , 0 );
setMoveKey( spep_1 -3 + 149, 1, 12.7, -28.6 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 52.2, -230.3 , 0 );
setMoveKey( spep_1 -3 + 151, 1, 52.2, -230.3 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 50.2, -247.3 , 0 );
setMoveKey( spep_1 -3 + 153, 1, 50.2, -247.3 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 56.9, -248.1 , 0 );
setMoveKey( spep_1 -3 + 155, 1, 56.9, -248.1 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 55.8, -238 , 0 );
setMoveKey( spep_1 -3 + 157, 1, 55.8, -238 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 59.7, -253.1 , 0 );
setMoveKey( spep_1 -3 + 159, 1, 59.7, -253.1 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 58.9, -244.1 , 0 );
setMoveKey( spep_1 -3 + 161, 1, 58.9, -244.1 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 64.1, -264.1 , 0 );
setMoveKey( spep_1 -3 + 163, 1, 64.1, -264.1 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 66.1, -251 , 0 );
setMoveKey( spep_1 -3 + 165, 1, 66.1, -251 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 57.7, -259.3 , 0 );
setMoveKey( spep_1 -3 + 167, 1, 57.7, -259.3 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 70.5, -268.7 , 0 );

setScaleKey( spep_1 -3 + 0, 1, 1.01, 1.01 );
setScaleKey( spep_1 -3 + 4, 1, 1.01, 1.01 );
setScaleKey( spep_1 -3 + 6, 1, 1.02, 1.02 );
setScaleKey( spep_1 -3 + 14, 1, 1.02, 1.02 );
setScaleKey( spep_1 -3 + 16, 1, 1.03, 1.03 );
setScaleKey( spep_1 -3 + 28, 1, 1.03, 1.03 );
setScaleKey( spep_1 -3 + 30, 1, 1.04, 1.04 );
setScaleKey( spep_1 -3 + 48, 1, 1.04, 1.04 );
setScaleKey( spep_1 -3 + 50, 1, 1.05, 1.05 );
setScaleKey( spep_1 -3 + 111, 1, 1.05, 1.05 );
setScaleKey( spep_1 -3 + 120, 1, 1.46, 1.46 );
setScaleKey( spep_1 -3 + 121, 1, 1.46, 1.46 );
setScaleKey( spep_1 -3 + 122, 1, 1, 1 );
setScaleKey( spep_1 -3 + 150, 1, 1, 1 );
setScaleKey( spep_1 -3 + 152, 1, 1.16, 1.16 );
setScaleKey( spep_1 -3 + 154, 1, 0.98, 0.98 );
setScaleKey( spep_1 -3 + 156, 1, 1.15, 1.15 );
setScaleKey( spep_1 -3 + 158, 1, 0.98, 0.98 );
setScaleKey( spep_1 -3 + 160, 1, 1.02, 1.02 );
setScaleKey( spep_1 -3 + 162, 1, 0.98, 0.98 );
setScaleKey( spep_1 -3 + 164, 1, 1.02, 1.02 );
setScaleKey( spep_1 -3 + 166, 1, 0.97, 0.97 );
setScaleKey( spep_1 -3 + 168, 1, 1.02, 1.02 );

setRotateKey( spep_1 -3 + 0, 1, 26.5 );
setRotateKey( spep_1 -3 + 44, 1, 26.5 );
setRotateKey( spep_1 -3 + 46, 1, 26.3 );
setRotateKey( spep_1 -3 + 48, 1, 26.5 );
setRotateKey( spep_1 -3 + 111, 1, 26.5 );
setRotateKey( spep_1 -3 + 112, 1, 74.9 );
setRotateKey( spep_1 -3 + 168, 1, 74.9 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 228, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_1 + 226, 2, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_1 + 72, 8 );  --踏みつけ前
playSe( spep_1 + 108, 1011 );  --踏みつけ
playSe( spep_1 -3 + 168, 1068 );  --地面押し付け

-- ** 次の準備 ** --
spep_2 = spep_1 + 228;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen1, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen1, 0 );
setEffRotateKey( spep_2 + 90, shuchusen1, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen1, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 発射(226F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_3 + 0, SP_05, 226, 0x100, -1, 0, 0, 0 );  --発射(ef_005)
setEffMoveKey( spep_3 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_3 + 226, hassha, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hassha, -1.0, 1.0 );
setEffScaleKey( spep_3 + 226, hassha, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hassha, 0 );
setEffRotateKey( spep_3 + 226, hassha, 0 );
setEffAlphaKey( spep_3 + 0, hassha, 255 );
setEffAlphaKey( spep_3 + 226, hassha, 255 );

c = 10;
-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_3 + 86 -c,  906, 84, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 86 -c, shuchusen2, 84, 20 );

setEffMoveKey( spep_3 + 86 -c, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 170 -c, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 86 -c, shuchusen2, 1.8, 1.8 );
setEffScaleKey( spep_3 + 170 -c, shuchusen2, 1.8, 1.8 );

setEffRotateKey( spep_3 + 86 -c, shuchusen2, 0 );
setEffRotateKey( spep_3 + 170 -c, shuchusen2, 0 );

setEffAlphaKey( spep_3 + 86 -c, shuchusen2, 0 );
setEffAlphaKey( spep_3 + 101 -c, shuchusen2, 0 );
setEffAlphaKey( spep_3 + 102 -c, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 170 -c, shuchusen2, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_3 + 86 -c, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_3 + 86 -c, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_3 + 102 -c,  190006, 68, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_3 + 102 -c, ctgogo, 68, 10 );

setEffMoveKey( spep_3 + 102 -c, ctgogo, -9.9, 515.5 , 0 );
setEffMoveKey( spep_3 + 170 -c, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_3 + 102 -c, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_3 + 162 -c, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_3 + 164 -c, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_3 + 166 -c, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_3 + 168 -c, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_3 + 170 -c, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_3 + 102 -c, ctgogo, 0 );
setEffRotateKey( spep_3 + 170 -c, ctgogo, 0 );

setEffAlphaKey( spep_3 + 102 -c, ctgogo, 255 );
setEffAlphaKey( spep_3 + 170 -c, ctgogo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 226, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_3 + 38, 1072 );  --煙開け
playSe( spep_3 + 102 -c, SE_04 );  --ゴゴゴ
playSe( spep_3 + 120, 1017 );  --発射
playSe( spep_3 + 170, 1017 );  --発射
playSe( spep_3 + 218, 1017 );  --発射

-- ** 次の準備 ** --
spep_4 = spep_3 + 226;

------------------------------------------------------
-- 爆発(162F)
------------------------------------------------------

-- ** エフェクト等 ** --
bakuhatsu = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --爆発(ef_006)
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 162, bakuhatsu, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, bakuhatsu, -1.0, 1.0 );
setEffScaleKey( spep_4 + 162, bakuhatsu, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 162, bakuhatsu, 0 );
setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 162, bakuhatsu, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 162, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_4 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_4 + 4, 1024);  --爆発
--playSe( spep_4 + 36, 1068);  --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 38 );
entryFade( spep_4 + 152, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_4 + 162 );

end


