--1017030_ヴァドス_破壊の鎮魂歌

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--SE
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
SP_01 = 153217; --アイドリング
SP_02 = 153218; --3段攻撃
SP_03 = 153219; --溜め
SP_04 = 153220; --爆発

--敵側
SP_01r = 153217; --アイドリング
SP_02r = 153218; --3段攻撃
SP_03r = 153219; --溜め
SP_04r = 153220; --爆発

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI(0, 0);

changeAnime( 0, 0, 1);                       -- 立ち
changeAnime( 0, 1, 101);                       -- 立ち
setDisp( 0, 0, 0); --味方非表示
setDisp( 0, 1, 0); --敵非表示

setMoveKey(   0,   0,    -5000,  -5000,  0);
setMoveKey(   1,   0,    -5000,  -5000,  0);
setMoveKey(   2,   0,    -5000,  -5000,  0);
setMoveKey(   3,   0,    -5000,  -5000,  0);
setMoveKey(   4,   0,    -5000,  -5000,  0);
setMoveKey(   5,   0,    -5000,  -5000,  0);
setMoveKey(   6,   0,    -5000,  -5000,  0);
setScaleKey(  0,  0,  1.5,  1.5);
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
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
setScaleKey(   6,   1, 1.5, 1.5);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- アイドリング(88F)
------------------------------------------------------

--フレーム指定
spep_1 = 0;

--エフェクト
ef_taiki = entryEffect(spep_1, SP_01, 0x80, -1 ,0 ,0, 0); --アイドリング
setEffMoveKey(spep_1, ef_taiki, 0, 0);
setEffMoveKey(spep_1 + 88, ef_taiki, 0, 0);

setEffScaleKey(spep_1, ef_taiki, 1.0, 1.0);
setEffScaleKey(spep_1 + 88, ef_taiki, 1.0, 1.0);

setEffRotateKey(spep_1, ef_taiki, 0);
setEffRotateKey(spep_1 + 88, ef_taiki, 0);

setEffAlphaKey(spep_1, ef_taiki, 255);
setEffAlphaKey(spep_1 + 88, ef_taiki, 255);

--瞬間移動
ef_shun_01 = entryEffectLife( spep_1 + 60,  700, 8, 0x100, -1, 0, -8, 20.5 );
setEffMoveKey( spep_1 + 60, ef_shun_01, -8, 20.5 , 0 );
setEffMoveKey( spep_1 + 62, ef_shun_01, -8, 13 , 0 );
setEffMoveKey( spep_1 + 64, ef_shun_01, -8, 5.4 , 0 );
setEffMoveKey( spep_1 + 66, ef_shun_01, -8, 16.8 , 0 );
setEffMoveKey( spep_1 + 68, ef_shun_01, -8, 28.2 , 0 );

setEffScaleKey( spep_1 + 60, ef_shun_01, 1.76, 0.18 );
setEffScaleKey( spep_1 + 62, ef_shun_01, 1.76, 0.76 );
setEffScaleKey( spep_1 + 64, ef_shun_01, 1.76, 1.45 );
setEffScaleKey( spep_1 + 66, ef_shun_01, 1.76, 0.81 );
setEffScaleKey( spep_1 + 68, ef_shun_01, 1.76, 0.17 );

setEffRotateKey( spep_1 + 60, ef_shun_01, 0 );
setEffRotateKey( spep_1 + 68, ef_shun_01, 0 );

setEffAlphaKey( spep_1 + 60, ef_shun_01, 85 );
setEffAlphaKey( spep_1 + 62, ef_shun_01, 170 );
setEffAlphaKey( spep_1 + 64, ef_shun_01, 255 );
setEffAlphaKey( spep_1 + 66, ef_shun_01, 128 );
setEffAlphaKey( spep_1 + 68, ef_shun_01, 0 );

--白フェード
entryFade(spep_1, 0, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255); --演出の入り
entryFade(spep_1 + 76, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255); --次のシーンへ

--背景黒フェード
entryFadeBg(spep_1 + 20, 20, 744, 0, 0, 0, 0, 200);

--SE
playSe(spep_1 + 62, 43); --瞬間移動

--書き文字
ct_shun_01 = entryEffectLife(spep_1 + 62, 10011, 8, 0x100, -1, 0, 0, 220); --シュン
setEffShake(spep_1 + 62, ct_shun_01, 8, 10);

setEffScaleKey(spep_1 + 62, ct_shun_01, 1.0, 1.0);
setEffScaleKey(spep_1 + 68, ct_shun_01, 1.5, 1.5);
setEffScaleKey(spep_1 + 70, ct_shun_01, 1.0, 1.0);

setEffMoveKey(spep_1 + 62, ct_shun_01, 0, 220, 0);
setEffMoveKey(spep_1 + 70, ct_shun_01, 0, 230, 0);

setEffRotateKey(spep_1 + 62, ct_shun_01, 0);
setEffRotateKey(spep_1 + 70, ct_shun_01, 0);

setEffAlphaKey(spep_1 + 62, ct_shun_01, 255);
setEffAlphaKey(spep_1 + 68, ct_shun_01, 255);
setEffAlphaKey(spep_1 + 70, ct_shun_01, 0);

------------------------------------------------------
-- 3段攻撃(196F)
------------------------------------------------------

--フレーム指定
spep_2 = spep_1 + 88;

--エフェクト
ef_3dan = entryEffect(spep_2, SP_02, 0x100, -1 ,0 ,0, 0); --3段攻撃
setEffMoveKey(spep_2, ef_3dan, 0, 0, 0);
setEffMoveKey(spep_2 + 196, ef_3dan, 0, 0, 0);

setEffScaleKey(spep_2, ef_3dan, 1.0, 1.0);
setEffScaleKey(spep_2 + 196, ef_3dan, 1.0, 1.0);

setEffRotateKey(spep_2, ef_3dan, 0);
setEffRotateKey(spep_2 + 196, ef_3dan, 0);

setEffAlphaKey(spep_2, ef_3dan, 255);
setEffAlphaKey(spep_2 + 196, ef_3dan, 255);

--瞬間移動
ef_shun_02 = entryEffectLife( spep_2 + 22,  700, 8, 0x100, -1, 0, -158, -63.5 );
setEffMoveKey( spep_2 + 22, ef_shun_02, -158, -63.5 , 0 );
setEffMoveKey( spep_2 + 24, ef_shun_02, -158, -71 , 0 );
setEffMoveKey( spep_2 + 26, ef_shun_02, -158, -78.7 , 0 );
setEffMoveKey( spep_2 + 28, ef_shun_02, -158, -67.3 , 0 );
setEffMoveKey( spep_2 + 30, ef_shun_02, -158, -55.9 , 0 );

setEffScaleKey( spep_2 + 22, ef_shun_02, 1.76, 0.18 );
setEffScaleKey( spep_2 + 24, ef_shun_02, 1.76, 0.76 );
setEffScaleKey( spep_2 + 26, ef_shun_02, 1.76, 1.45 );
setEffScaleKey( spep_2 + 28, ef_shun_02, 1.76, 0.81 );
setEffScaleKey( spep_2 + 30, ef_shun_02, 1.76, 0.17 );

setEffRotateKey( spep_2 + 22, ef_shun_02, 0 );
setEffRotateKey( spep_2 + 30, ef_shun_02, 0 );

setEffAlphaKey( spep_2 + 22, ef_shun_02, 85 );
setEffAlphaKey( spep_2 + 24, ef_shun_02, 170 );
setEffAlphaKey( spep_2 + 26, ef_shun_02, 255 );
setEffAlphaKey( spep_2 + 28, ef_shun_02, 128 );
setEffAlphaKey( spep_2 + 30, ef_shun_02, 0 );

--白フェード
entryFade(spep_2, 0, 2, 10, fcolor_r, fcolor_g, fcolor_b, 255); --演出の入り

--SE
playSe(spep_2 + 24, 43); --瞬間移動

--書き文字
ct_zuo_1 = entryEffectLife( spep_2 + 140,  10012, 30, 0x100, -1, 0, 134.6, 335.8 ); --ズオッ
setEffShake(spep_2 + 140, ct_zuo_1, 20, 20);

setEffMoveKey( spep_2 + 140, ct_zuo_1, 134.6, 335.8 , 0 );
setEffMoveKey( spep_2 + 170, ct_zuo_1, 257.9, 415.2 , 0 );

setEffScaleKey( spep_2 + 140, ct_zuo_1, 0.28, 0.28 );
setEffScaleKey( spep_2 + 142, ct_zuo_1, 1.26, 1.26 );
setEffScaleKey( spep_2 + 144, ct_zuo_1, 2.25, 2.25 );
setEffScaleKey( spep_2 + 146, ct_zuo_1, 2.25, 2.25 );
setEffScaleKey( spep_2 + 148, ct_zuo_1, 3.1, 3.1 );
setEffScaleKey( spep_2 + 150, ct_zuo_1, 3.96, 3.96 );
setEffScaleKey( spep_2 + 152, ct_zuo_1, 4.81, 4.81 );
setEffScaleKey( spep_2 + 170, ct_zuo_1, 5.66, 5.66 );

setEffRotateKey( spep_2 + 140, ct_zuo_1, 38 );
setEffRotateKey( spep_2 + 142, ct_zuo_1, 32.6 );
setEffRotateKey( spep_2 + 144, ct_zuo_1, 27.2 );
setEffRotateKey( spep_2 + 170, ct_zuo_1, 27.2 );

setEffAlphaKey( spep_2 + 140, ct_zuo_1, 255 );
setEffAlphaKey( spep_2 + 160, ct_zuo_1, 0 );
setEffAlphaKey( spep_2 + 170, ct_zuo_1, 0 );

--流線
ef_ryusen_01 = entryEffectLife( spep_2 - 6 + 72, 920, 68, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 - 6 + 72, ef_ryusen_01, 0, 0 , 0 );
setEffMoveKey( spep_2 - 6 + 140, ef_ryusen_01, 0, 0 , 0 );

setEffScaleKey( spep_2 - 6 + 72, ef_ryusen_01, 4.55, 1.35 );
setEffScaleKey( spep_2 - 6 + 140, ef_ryusen_01, 4.55, 1.35 );

setEffRotateKey( spep_2 - 6 + 72, ef_ryusen_01, -32.3 );
setEffRotateKey( spep_2 - 6 + 140, ef_ryusen_01, -32.3 );

setEffAlphaKey( spep_2 - 6 + 72, ef_ryusen_01, 52 );
setEffAlphaKey( spep_2 - 6 + 74, ef_ryusen_01, 101 );
setEffAlphaKey( spep_2 - 6 + 76, ef_ryusen_01, 154 );
setEffAlphaKey( spep_2 - 6 + 78, ef_ryusen_01, 255 );
setEffAlphaKey( spep_2 - 6 + 80, ef_ryusen_01, 200 );
setEffAlphaKey( spep_2 - 6 + 138, ef_ryusen_01, 140 );
setEffAlphaKey( spep_2 - 6 + 140, ef_ryusen_01, 0 );

--敵
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 101 );
setMoveKey( spep_2 + 0, 1, 94.1, -35.9 , 0 );
setMoveKey( spep_2 - 3 + 39, 1, 94.1, -35.9 , 0 );

setScaleKey( spep_2 + 0, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 38, 1, 1.47, 1.47 );

setRotateKey( spep_2 + 0, 1, -0.2 );
setRotateKey( spep_2 - 3 + 39, 1, -0.2 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);

pauseAll( SP_dodge, 67);

--敵の位置
setMoveKey( SP_dodge + 0, 1, 94.1, -35.9 , 0 );
setMoveKey( SP_dodge + 4, 1, 94.1, -35.9 , 0 );

setScaleKey( SP_dodge + 0, 1, 1.47, 1.47 );
setScaleKey( SP_dodge + 4, 1, 1.47, 1.47 );

setRotateKey( SP_dodge + 0, 1, -0.2 );
setRotateKey( SP_dodge + 4, 1, -0.2 );

--changeAnime( SP_dodge + 5, 1, 108 );
setMoveKey( SP_dodge + 5, 1, 94.1, -35.9 , 0 );
setMoveKey( SP_dodge + 6, 1, 94.1, -35.9 , 0 );
setMoveKey( SP_dodge + 8, 1, 94.1, -35.9 , 0 );
setMoveKey( SP_dodge + 10, 1, 94.1, -35.9 , 0 );

setScaleKey( SP_dodge + 6, 1, 1.47, 1.47 );
setScaleKey( SP_dodge + 10, 1, 1.47, 1.47 );

setRotateKey( SP_dodge + 6, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );


speff = entryEffectUnpausable( SP_dodge - 12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
setEffScaleKey( SP_dodge - 1, dodge, -1.0, 1.0);
setEffAlphaKey( SP_dodge - 1, dodge, 255);

entryFade( SP_dodge + 4, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10);

do return end
else end

------------------------------------------------------
-- 回避(終)
------------------------------------------------------

--SE
playSe(spep_2 + 37, 1000); --打撃
playSe(spep_2 + 51, 1001); --打撃
playSe(spep_2 + 64, 1009); --打撃
se_1 = playSe( spep_2 + 138, 17);  --気弾を溜める
stopSe(spep_2 + 188, se_1, 8);
--playSe(spep_2 + 164, 1034); --気を溜める
--playSe(spep_2 + 188, 1034);
--playSe(spep_2 + 218, 1034);

--敵
changeAnime( spep_2 - 3 + 40, 1, 108 );
setMoveKey( spep_2 - 3 + 40, 1, 162, -57.8 , 0 );
setMoveKey( spep_2 - 3 + 42, 1, 174.4, -72.8 , 0 );
setMoveKey( spep_2 - 3 + 44, 1, 176.1, -84.1 , 0 );
setMoveKey( spep_2 - 3 + 46, 1, 175.5, -84.6 , 0 );
setMoveKey( spep_2 - 3 + 48, 1, 181.3, -82.8 , 0 );
setMoveKey( spep_2 - 3 + 50, 1, 185.9, -87.7 , 0 );
setMoveKey( spep_2 - 3 + 52, 1, 182, -91.8 , 0 );
setMoveKey( spep_2 - 3 + 54, 1, 170.6, -56 , 0 );
setMoveKey( spep_2 - 3 + 56, 1, 169.3, -29.1 , 0 );
setMoveKey( spep_2 - 3 + 58, 1, 169.7, -17.8 , 0 );
setMoveKey( spep_2 - 3 + 60, 1, 163.6, -12.6 , 0 );
setMoveKey( spep_2 - 3 + 62, 1, 158.5, -3.8 , 0 );
setMoveKey( spep_2 - 3 + 64, 1, 162.1, 1.9 , 0 );
setMoveKey( spep_2 - 3 + 67, 1, 166, -1.8 , 0 );

setScaleKey( spep_2 + 40, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 66, 1, 1.47, 1.47 );

setRotateKey( spep_2 - 3 + 40, 1, 0 );
setRotateKey( spep_2 - 3 + 67, 1, 0 );

setDisp( spep_2 + 168, 1, 0);
setDisp( spep_2 + 169, 1, 0);
changeAnime( spep_2 - 3 + 68, 1, 106 );
setMoveKey( spep_2 - 3 + 68, 1, 102.3, 25.2 , 0 );
setMoveKey( spep_2 - 3 + 70, 1, 212.8, 86.1 , 0 );
setMoveKey( spep_2 - 3 + 72, 1, 325.9, 144.3 , 0 );
setMoveKey( spep_2 - 3 + 74, 1, 433.7, 191.9 , 0 );
setMoveKey( spep_2 - 3 + 76, 1, 523.8, 234.3 , 0 );
setMoveKey( spep_2 - 3 + 78, 1, 604, 277.1 , 0 );
setMoveKey( spep_2 - 3 + 80, 1, 670.2, 308.2 , 0 );
setMoveKey( spep_2 - 3 + 82, 1, 722.4, 331.6 , 0 );
setMoveKey( spep_2 - 3 + 84, 1, 760.5, 347.3 , 0 );
setMoveKey( spep_2 - 3 + 86, 1, 784.7, 355.3 , 0 );
setMoveKey( spep_2 - 3 + 88, 1, 794.9, 355.7 , 0 );
setMoveKey( spep_2 - 3 + 90, 1, 791.1, 348.4 , 0 );
setMoveKey( spep_2 - 3 + 92, 1, 773.3, 333.4 , 0 );
setMoveKey( spep_2 - 3 + 94, 1, 741.6, 310.8 , 0 );
setMoveKey( spep_2 - 3 + 96, 1, 695.8, 280.5 , 0 );
setMoveKey( spep_2 - 3 + 98, 1, 636, 242.5 , 0 );
setMoveKey( spep_2 - 3 + 100, 1, 570.9, 201.8 , 0 );
setMoveKey( spep_2 - 3 + 102, 1, 509.2, 163.6 , 0 );
setMoveKey( spep_2 - 3 + 104, 1, 450.8, 127.7 , 0 );
setMoveKey( spep_2 - 3 + 106, 1, 395.7, 94.2 , 0 );
setMoveKey( spep_2 - 3 + 108, 1, 344, 63.1 , 0 );
setMoveKey( spep_2 - 3 + 110, 1, 295.7, 34.4 , 0 );
setMoveKey( spep_2 - 3 + 112, 1, 250.7, 8.1 , 0 );
setMoveKey( spep_2 - 3 + 114, 1, 211.7, -14.6 , 0 );
setMoveKey( spep_2 - 3 + 116, 1, 181.3, -32.2 , 0 );
setMoveKey( spep_2 - 3 + 118, 1, 159.6, -44.7 , 0 );
setMoveKey( spep_2 - 3 + 120, 1, 150.6, -48.3 , 0 );
setMoveKey( spep_2 - 3 + 122, 1, 142.3, -54.8 , 0 );
setMoveKey( spep_2 - 3 + 124, 1, 138.3, -58.8 , 0 );
setMoveKey( spep_2 - 3 + 126, 1, 142.3, -54.8 , 0 );
setMoveKey( spep_2 - 3 + 128, 1, 146.3, -50.8 , 0 );
setMoveKey( spep_2 - 3 + 130, 1, 142.3, -54.8 , 0 );
setMoveKey( spep_2 - 3 + 132, 1, 138.3, -58.8 , 0 );
setMoveKey( spep_2 - 3 + 134, 1, 142.3, -54.8 , 0 );
setMoveKey( spep_2 - 3 + 136, 1, 146.3, -50.8 , 0 );
setMoveKey( spep_2 - 3 + 138, 1, 142.3, -54.8 , 0 );
setMoveKey( spep_2 - 3 + 140, 1, 138.3, -58.8 , 0 );
setMoveKey( spep_2 - 3 + 142, 1, 142.3, -54.8 , 0 );
setMoveKey( spep_2 - 3 + 144, 1, 144.3, -52.8 , 0 );
setMoveKey( spep_2 - 3 + 146, 1, 142.3, -54.8 , 0 );
setMoveKey( spep_2 - 3 + 148, 1, 140.3, -56.8 , 0 );
setMoveKey( spep_2 - 3 + 150, 1, 142.3, -54.8 , 0 );
setMoveKey( spep_2 - 3 + 152, 1, 144.3, -52.8 , 0 );
setMoveKey( spep_2 - 3 + 154, 1, 142.3, -54.8 , 0 );
setMoveKey( spep_2 - 3 + 156, 1, 140.3, -56.8 , 0 );
setMoveKey( spep_2 - 3 + 158, 1, 142.3, -54.8 , 0 );
setMoveKey( spep_2 - 3 + 160, 1, 144.3, -52.8 , 0 );
setMoveKey( spep_2 - 3 + 162, 1, 142.3, -54.8 , 0 );
setMoveKey( spep_2 - 3 + 164, 1, 142.3, -66.8 , 0 );
setMoveKey( spep_2 - 3 + 166, 1, 150.3, -70.8 , 0 );
setMoveKey( spep_2 - 3 + 168, 1, 158.3, -74.8 , 0 );
setMoveKey( spep_2 - 3 + 170, 1, 158.3, -86.8 , 0 );
setMoveKey( spep_2 - 3 + 172, 1, 162.3, -94.8 , 0 );
setMoveKey( spep_2 + 196, 1, 162.3, -94.8 , 0 );

setScaleKey( spep_2 + 68, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 196, 1, 1.47, 1.47 );

setRotateKey( spep_2 - 3 + 68, 1, -54 );
setRotateKey( spep_2 - 3 + 70, 1, -50.4 );
setRotateKey( spep_2 - 3 + 72, 1, -46.9 );
setRotateKey( spep_2 - 3 + 74, 1, -43.7 );
setRotateKey( spep_2 - 3 + 76, 1, -40.5 );
setRotateKey( spep_2 - 3 + 78, 1, -37.6 );
setRotateKey( spep_2 - 3 + 80, 1, -34.8 );
setRotateKey( spep_2 - 3 + 82, 1, -32.2 );
setRotateKey( spep_2 - 3 + 84, 1, -29.8 );
setRotateKey( spep_2 - 3 + 86, 1, -27.5 );
setRotateKey( spep_2 - 3 + 88, 1, -25.4 );
setRotateKey( spep_2 - 3 + 90, 1, -23.5 );
setRotateKey( spep_2 - 3 + 92, 1, -21.7 );
setRotateKey( spep_2 - 3 + 94, 1, -20.1 );
setRotateKey( spep_2 - 3 + 96, 1, -18.7 );
setRotateKey( spep_2 - 3 + 98, 1, -17.4 );
setRotateKey( spep_2 - 3 + 100, 1, -16.3 );
setRotateKey( spep_2 - 3 + 102, 1, -15.4 );
setRotateKey( spep_2 - 3 + 104, 1, -14.6 );
setRotateKey( spep_2 - 3 + 106, 1, -14.1 );
setRotateKey( spep_2 - 3 + 108, 1, -13.6 );
setRotateKey( spep_2 - 3 + 110, 1, -13.4 );
setRotateKey( spep_2 - 3 + 112, 1, -13.3 );
setRotateKey( spep_2 + 196, 1, -13.3 );

------------------------------------------------------
-- 溜め(116F)
------------------------------------------------------

--フレーム指定
spep_3 = spep_2 + 196;

--エフェクト
ef_tame = entryEffect(spep_3, SP_03, 0x80, -1 ,0 ,0, 0); --溜め
setEffMoveKey(spep_3, ef_tame, 0, 0);
setEffMoveKey(spep_3 + 116, ef_tame, 0, 0);

setEffScaleKey(spep_3, ef_tame, 1.0, 1.0);
setEffScaleKey(spep_3 + 116, ef_tame, 1.0, 1.0);

setEffRotateKey(spep_3, ef_tame, 0);
setEffRotateKey(spep_3 + 116, ef_tame, 0);

setEffAlphaKey(spep_3, ef_tame, 255);
setEffAlphaKey(spep_3 + 116, ef_tame, 255);

--集中線
shuchusen2 = entryEffectLife(spep_3 + 14, 906, 102, 0x80, -1, 0, 0, 0);
setEffMoveKey(spep_3 + 14, shuchusen2, 0, 0, 0);
setEffMoveKey(spep_3 + 116, shuchusen2, 0, 0, 0);

setEffScaleKey(spep_3 + 14, shuchusen2, 1.6, 1.6);
setEffScaleKey(spep_3 + 116, shuchusen2, 1.6, 1.6);

setEffRotateKey(spep_3 + 14, shuchusen2, 0);
setEffRotateKey(spep_3 + 116, shuchusen2, 0);

setEffAlphaKey(spep_3 + 14, shuchusen2, 255);
setEffAlphaKey(spep_3 + 116, shuchusen2, 255);

--白フェード
entryFade(spep_3 + 100, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255);

------------------------------------------------------
--顔カットイン
------------------------------------------------------

speff = entryEffect(spep_3 + 20, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture(speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect(spep_3 + 20, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture(speff1, 4, 5);  --セリフカットイン差し替え

--ゴゴゴ
ctgogo = entryEffectLife(spep_3 + 32, 190006, 84, 0x100, -1, 0, 520);--ゴゴゴ
setEffShake(spep_3 + 32, ctgogo, 104, 10);

setEffMoveKey(spep_3 + 32, ctgogo, 0, 520, 0);
setEffMoveKey(spep_3 + 116, ctgogo, 0, 520, 0);

setEffScaleKey(spep_3 + 32, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_3 + 100, ctgogo, 0.7, 0.7 );
setEffScaleKey(spep_3 + 106, ctgogo, 1.7, 1.7);
setEffScaleKey(spep_3 + 116, ctgogo, 1.7, 1.7);

setEffAlphaKey( spep_3 + 32, ctgogo, 255 );
setEffAlphaKey( spep_3 + 116, ctgogo, 255 );

setEffRotateKey(spep_3 + 32, ctgogo, 0);
setEffRotateKey(spep_3 + 116, ctgogo, 0);

--***SE***
playSe(spep_3 + 32,  SE_04);  --ゴゴゴ

------------------------------------------------------
-- カードカットイン(94F)
------------------------------------------------------

--フレーム指定
spep_4 = spep_3 + 116;

--白フェード
entryFade(spep_4, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 255); --シーンの入り
entryFade(spep_4 + 84, 4, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255); --次のシーンへ

-- ** カードカットイン ** --
speff2 = entryEffect( spep_4, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_4, 906, 94, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4, shuchusen1, 94, 20 );

setEffMoveKey( spep_4, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_4 + 94, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_4, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_4 + 94, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_4, shuchusen1, 0 );
setEffRotateKey( spep_4 + 94, shuchusen1, 0 );

setEffAlphaKey( spep_4, shuchusen1, 255 );
setEffAlphaKey( spep_4 + 94, shuchusen1, 255 );

-- ** 音 ** --
playSe( spep_4, SE_05 );

------------------------------------------------------
-- 爆発(270F)
------------------------------------------------------

--フレーム指定
spep_5 = spep_4 + 94;

--エフェクト
ef_bakuhatsu = entryEffect(spep_5, SP_04, 0x100, -1 ,0 ,0, 0); --爆発
setEffMoveKey(spep_5, ef_bakuhatsu, 0, 0);
setEffMoveKey(spep_5 + 270, ef_bakuhatsu, 0, 0);

setEffScaleKey(spep_5, ef_bakuhatsu, 1.0, 1.0);
setEffScaleKey(spep_5 + 270, ef_bakuhatsu, 1.0, 1.0);

setEffRotateKey(spep_5, ef_bakuhatsu, 0);
setEffRotateKey(spep_5 + 270, ef_bakuhatsu, 0);

setEffAlphaKey(spep_5, ef_bakuhatsu, 255);
setEffAlphaKey(spep_5 + 270, ef_bakuhatsu, 255);

--白フェード
entryFade(spep_5, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255); --シーンの入り

--SE
se_2 = playSe(spep_5, 1037);
stopSe(spep_5 + 114, se_2, 0);
playSe(spep_5 + 114, 1023);

--書き文字

-- ダメージ表示
dealDamage(spep_5 + 120);
entryFade( spep_5 + 240, 9, 10, 1, 8, 8, 8, 255 ); -- 黒フェード
endPhase(spep_5 + 250);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

------------------------------------------------------
-- アイドリング(88F)
------------------------------------------------------

--フレーム指定
spep_1 = 0;

--エフェクト
ef_taiki = entryEffect(spep_1, SP_01r, 0x80, -1 ,0 ,0, 0); --アイドリング
setEffMoveKey(spep_1, ef_taiki, 0, 0);
setEffMoveKey(spep_1 + 88, ef_taiki, 0, 0);

setEffScaleKey(spep_1, ef_taiki, 1.0, 1.0);
setEffScaleKey(spep_1 + 88, ef_taiki, 1.0, 1.0);

setEffRotateKey(spep_1, ef_taiki, 0);
setEffRotateKey(spep_1 + 88, ef_taiki, 0);

setEffAlphaKey(spep_1, ef_taiki, 255);
setEffAlphaKey(spep_1 + 88, ef_taiki, 255);

--瞬間移動
ef_shun_01 = entryEffectLife( spep_1 + 60,  700, 8, 0x100, -1, 0, -8, 20.5 );
setEffMoveKey( spep_1 + 60, ef_shun_01, -8, 20.5 , 0 );
setEffMoveKey( spep_1 + 62, ef_shun_01, -8, 13 , 0 );
setEffMoveKey( spep_1 + 64, ef_shun_01, -8, 5.4 , 0 );
setEffMoveKey( spep_1 + 66, ef_shun_01, -8, 16.8 , 0 );
setEffMoveKey( spep_1 + 68, ef_shun_01, -8, 28.2 , 0 );

setEffScaleKey( spep_1 + 60, ef_shun_01, 1.76, 0.18 );
setEffScaleKey( spep_1 + 62, ef_shun_01, 1.76, 0.76 );
setEffScaleKey( spep_1 + 64, ef_shun_01, 1.76, 1.45 );
setEffScaleKey( spep_1 + 66, ef_shun_01, 1.76, 0.81 );
setEffScaleKey( spep_1 + 68, ef_shun_01, 1.76, 0.17 );

setEffRotateKey( spep_1 + 60, ef_shun_01, 0 );
setEffRotateKey( spep_1 + 68, ef_shun_01, 0 );

setEffAlphaKey( spep_1 + 60, ef_shun_01, 85 );
setEffAlphaKey( spep_1 + 62, ef_shun_01, 170 );
setEffAlphaKey( spep_1 + 64, ef_shun_01, 255 );
setEffAlphaKey( spep_1 + 66, ef_shun_01, 128 );
setEffAlphaKey( spep_1 + 68, ef_shun_01, 0 );

--白フェード
entryFade(spep_1, 0, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255); --演出の入り
entryFade(spep_1 + 76, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255); --次のシーンへ

--背景黒フェード
entryFadeBg(spep_1 + 20, 20, 744, 0, 0, 0, 0, 200);

--SE
playSe(spep_1 + 62, 43); --瞬間移動

--書き文字
ct_shun_01 = entryEffectLife(spep_1 + 62, 10011, 8, 0x100, -1, 0, 0, 220); --シュン
setEffShake(spep_1 + 62, ct_shun_01, 8, 10);

setEffScaleKey(spep_1 + 62, ct_shun_01, 1.0, 1.0);
setEffScaleKey(spep_1 + 68, ct_shun_01, 1.5, 1.5);
setEffScaleKey(spep_1 + 70, ct_shun_01, 1.0, 1.0);

setEffMoveKey(spep_1 + 62, ct_shun_01, 0, 220, 0);
setEffMoveKey(spep_1 + 70, ct_shun_01, 0, 230, 0);

setEffRotateKey(spep_1 + 62, ct_shun_01, 0);
setEffRotateKey(spep_1 + 70, ct_shun_01, 0);

setEffAlphaKey(spep_1 + 62, ct_shun_01, 255);
setEffAlphaKey(spep_1 + 68, ct_shun_01, 255);
setEffAlphaKey(spep_1 + 70, ct_shun_01, 0);

------------------------------------------------------
-- 3段攻撃(196F)
------------------------------------------------------

--フレーム指定
spep_2 = spep_1 + 88;

--エフェクト
ef_3dan = entryEffect(spep_2, SP_02r, 0x100, -1 ,0 ,0, 0); --3段攻撃
setEffMoveKey(spep_2, ef_3dan, 0, 0, 0);
setEffMoveKey(spep_2 + 196, ef_3dan, 0, 0, 0);

setEffScaleKey(spep_2, ef_3dan, 1.0, 1.0);
setEffScaleKey(spep_2 + 196, ef_3dan, 1.0, 1.0);

setEffRotateKey(spep_2, ef_3dan, 0);
setEffRotateKey(spep_2 + 196, ef_3dan, 0);

setEffAlphaKey(spep_2, ef_3dan, 255);
setEffAlphaKey(spep_2 + 196, ef_3dan, 255);

--瞬間移動
ef_shun_02 = entryEffectLife( spep_2 + 22,  700, 8, 0x100, -1, 0, -158, -63.5 );
setEffMoveKey( spep_2 + 22, ef_shun_02, -158, -63.5 , 0 );
setEffMoveKey( spep_2 + 24, ef_shun_02, -158, -71 , 0 );
setEffMoveKey( spep_2 + 26, ef_shun_02, -158, -78.7 , 0 );
setEffMoveKey( spep_2 + 28, ef_shun_02, -158, -67.3 , 0 );
setEffMoveKey( spep_2 + 30, ef_shun_02, -158, -55.9 , 0 );

setEffScaleKey( spep_2 + 22, ef_shun_02, 1.76, 0.18 );
setEffScaleKey( spep_2 + 24, ef_shun_02, 1.76, 0.76 );
setEffScaleKey( spep_2 + 26, ef_shun_02, 1.76, 1.45 );
setEffScaleKey( spep_2 + 28, ef_shun_02, 1.76, 0.81 );
setEffScaleKey( spep_2 + 30, ef_shun_02, 1.76, 0.17 );

setEffRotateKey( spep_2 + 22, ef_shun_02, 0 );
setEffRotateKey( spep_2 + 30, ef_shun_02, 0 );

setEffAlphaKey( spep_2 + 22, ef_shun_02, 85 );
setEffAlphaKey( spep_2 + 24, ef_shun_02, 170 );
setEffAlphaKey( spep_2 + 26, ef_shun_02, 255 );
setEffAlphaKey( spep_2 + 28, ef_shun_02, 128 );
setEffAlphaKey( spep_2 + 30, ef_shun_02, 0 );

--白フェード
entryFade(spep_2, 0, 2, 10, fcolor_r, fcolor_g, fcolor_b, 255); --演出の入り

--SE
playSe(spep_2 + 24, 43); --瞬間移動

--書き文字
ct_zuo_1 = entryEffectLife( spep_2 + 140,  10012, 30, 0x100, -1, 0, 134.6, 335.8 ); --ズオッ
setEffShake(spep_2 + 140, ct_zuo_1, 20, 20);

setEffMoveKey( spep_2 + 140, ct_zuo_1, 134.6, 335.8 , 0 );
setEffMoveKey( spep_2 + 170, ct_zuo_1, 257.9, 415.2 , 0 );

setEffScaleKey( spep_2 + 140, ct_zuo_1, 0.28, 0.28 );
setEffScaleKey( spep_2 + 142, ct_zuo_1, 1.26, 1.26 );
setEffScaleKey( spep_2 + 144, ct_zuo_1, 2.25, 2.25 );
setEffScaleKey( spep_2 + 146, ct_zuo_1, 2.25, 2.25 );
setEffScaleKey( spep_2 + 148, ct_zuo_1, 3.1, 3.1 );
setEffScaleKey( spep_2 + 150, ct_zuo_1, 3.96, 3.96 );
setEffScaleKey( spep_2 + 152, ct_zuo_1, 4.81, 4.81 );
setEffScaleKey( spep_2 + 170, ct_zuo_1, 5.66, 5.66 );

setEffRotateKey( spep_2 + 140, ct_zuo_1, 38 );
setEffRotateKey( spep_2 + 142, ct_zuo_1, 32.6 );
setEffRotateKey( spep_2 + 144, ct_zuo_1, 27.2 );
setEffRotateKey( spep_2 + 170, ct_zuo_1, 27.2 );

setEffAlphaKey( spep_2 + 140, ct_zuo_1, 255 );
setEffAlphaKey( spep_2 + 160, ct_zuo_1, 0 );
setEffAlphaKey( spep_2 + 170, ct_zuo_1, 0 );

--流線
ef_ryusen_01 = entryEffectLife( spep_2 - 6 + 72, 920, 68, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 - 6 + 72, ef_ryusen_01, 0, 0 , 0 );
setEffMoveKey( spep_2 - 6 + 140, ef_ryusen_01, 0, 0 , 0 );

setEffScaleKey( spep_2 - 6 + 72, ef_ryusen_01, 4.55, 1.35 );
setEffScaleKey( spep_2 - 6 + 140, ef_ryusen_01, 4.55, 1.35 );

setEffRotateKey( spep_2 - 6 + 72, ef_ryusen_01, -32.3 );
setEffRotateKey( spep_2 - 6 + 140, ef_ryusen_01, -32.3 );

setEffAlphaKey( spep_2 - 6 + 72, ef_ryusen_01, 52 );
setEffAlphaKey( spep_2 - 6 + 74, ef_ryusen_01, 101 );
setEffAlphaKey( spep_2 - 6 + 76, ef_ryusen_01, 154 );
setEffAlphaKey( spep_2 - 6 + 78, ef_ryusen_01, 255 );
setEffAlphaKey( spep_2 - 6 + 80, ef_ryusen_01, 200 );
setEffAlphaKey( spep_2 - 6 + 138, ef_ryusen_01, 140 );
setEffAlphaKey( spep_2 - 6 + 140, ef_ryusen_01, 0 );

--敵
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 101 );
setMoveKey( spep_2 + 0, 1, 94.1, -35.9 , 0 );
setMoveKey( spep_2 - 3 + 39, 1, 94.1, -35.9 , 0 );

setScaleKey( spep_2 + 0, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 38, 1, 1.47, 1.47 );

setRotateKey( spep_2 + 0, 1, -0.2 );
setRotateKey( spep_2 - 3 + 39, 1, -0.2 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);

pauseAll( SP_dodge, 67);

--敵の位置
setMoveKey( SP_dodge + 0, 1, 94.1, -35.9 , 0 );
setMoveKey( SP_dodge + 4, 1, 94.1, -35.9 , 0 );

setScaleKey( SP_dodge + 0, 1, 1.47, 1.47 );
setScaleKey( SP_dodge + 4, 1, 1.47, 1.47 );

setRotateKey( SP_dodge + 0, 1, -0.2 );
setRotateKey( SP_dodge + 4, 1, -0.2 );

--changeAnime( SP_dodge + 5, 1, 108 );
setMoveKey( SP_dodge + 5, 1, 94.1, -35.9 , 0 );
setMoveKey( SP_dodge + 6, 1, 94.1, -35.9 , 0 );
setMoveKey( SP_dodge + 8, 1, 94.1, -35.9 , 0 );
setMoveKey( SP_dodge + 10, 1, 94.1, -35.9 , 0 );

setScaleKey( SP_dodge + 6, 1, 1.47, 1.47 );
setScaleKey( SP_dodge + 10, 1, 1.47, 1.47 );

setRotateKey( SP_dodge + 6, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );


speff = entryEffectUnpausable( SP_dodge - 12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
setEffScaleKey( SP_dodge - 1, dodge, -1.0, 1.0);
setEffAlphaKey( SP_dodge - 1, dodge, 255);

entryFade( SP_dodge + 4, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10);

do return end
else end

------------------------------------------------------
-- 回避(終)
------------------------------------------------------

--SE
playSe(spep_2 + 37, 1000); --打撃
playSe(spep_2 + 51, 1001); --打撃
playSe(spep_2 + 64, 1009); --打撃
se_1 = playSe( spep_2 + 138, 17);  --気弾を溜める
stopSe(spep_2 + 188, se_1, 8);
--playSe(spep_2 + 164, 1034); --気を溜める
--playSe(spep_2 + 188, 1034);
--playSe(spep_2 + 218, 1034);

changeAnime( spep_2 - 3 + 40, 1, 108 );
setMoveKey( spep_2 - 3 + 40, 1, 162, -57.8 , 0 );
setMoveKey( spep_2 - 3 + 42, 1, 174.4, -72.8 , 0 );
setMoveKey( spep_2 - 3 + 44, 1, 176.1, -84.1 , 0 );
setMoveKey( spep_2 - 3 + 46, 1, 175.5, -84.6 , 0 );
setMoveKey( spep_2 - 3 + 48, 1, 181.3, -82.8 , 0 );
setMoveKey( spep_2 - 3 + 50, 1, 185.9, -87.7 , 0 );
setMoveKey( spep_2 - 3 + 52, 1, 182, -91.8 , 0 );
setMoveKey( spep_2 - 3 + 54, 1, 170.6, -56 , 0 );
setMoveKey( spep_2 - 3 + 56, 1, 169.3, -29.1 , 0 );
setMoveKey( spep_2 - 3 + 58, 1, 169.7, -17.8 , 0 );
setMoveKey( spep_2 - 3 + 60, 1, 163.6, -12.6 , 0 );
setMoveKey( spep_2 - 3 + 62, 1, 158.5, -3.8 , 0 );
setMoveKey( spep_2 - 3 + 64, 1, 162.1, 1.9 , 0 );
setMoveKey( spep_2 - 3 + 67, 1, 166, -1.8 , 0 );

setScaleKey( spep_2 + 40, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 66, 1, 1.47, 1.47 );

setRotateKey( spep_2 - 3 + 40, 1, 0 );
setRotateKey( spep_2 - 3 + 67, 1, 0 );

setDisp( spep_2 + 168, 1, 0);
setDisp( spep_2 + 169, 1, 0);
changeAnime( spep_2 - 3 + 68, 1, 106 );
setMoveKey( spep_2 - 3 + 68, 1, 102.3, 25.2 , 0 );
setMoveKey( spep_2 - 3 + 70, 1, 212.8, 86.1 , 0 );
setMoveKey( spep_2 - 3 + 72, 1, 325.9, 144.3 , 0 );
setMoveKey( spep_2 - 3 + 74, 1, 433.7, 191.9 , 0 );
setMoveKey( spep_2 - 3 + 76, 1, 523.8, 234.3 , 0 );
setMoveKey( spep_2 - 3 + 78, 1, 604, 277.1 , 0 );
setMoveKey( spep_2 - 3 + 80, 1, 670.2, 308.2 , 0 );
setMoveKey( spep_2 - 3 + 82, 1, 722.4, 331.6 , 0 );
setMoveKey( spep_2 - 3 + 84, 1, 760.5, 347.3 , 0 );
setMoveKey( spep_2 - 3 + 86, 1, 784.7, 355.3 , 0 );
setMoveKey( spep_2 - 3 + 88, 1, 794.9, 355.7 , 0 );
setMoveKey( spep_2 - 3 + 90, 1, 791.1, 348.4 , 0 );
setMoveKey( spep_2 - 3 + 92, 1, 773.3, 333.4 , 0 );
setMoveKey( spep_2 - 3 + 94, 1, 741.6, 310.8 , 0 );
setMoveKey( spep_2 - 3 + 96, 1, 695.8, 280.5 , 0 );
setMoveKey( spep_2 - 3 + 98, 1, 636, 242.5 , 0 );
setMoveKey( spep_2 - 3 + 100, 1, 570.9, 201.8 , 0 );
setMoveKey( spep_2 - 3 + 102, 1, 509.2, 163.6 , 0 );
setMoveKey( spep_2 - 3 + 104, 1, 450.8, 127.7 , 0 );
setMoveKey( spep_2 - 3 + 106, 1, 395.7, 94.2 , 0 );
setMoveKey( spep_2 - 3 + 108, 1, 344, 63.1 , 0 );
setMoveKey( spep_2 - 3 + 110, 1, 295.7, 34.4 , 0 );
setMoveKey( spep_2 - 3 + 112, 1, 250.7, 8.1 , 0 );
setMoveKey( spep_2 - 3 + 114, 1, 211.7, -14.6 , 0 );
setMoveKey( spep_2 - 3 + 116, 1, 181.3, -32.2 , 0 );
setMoveKey( spep_2 - 3 + 118, 1, 159.6, -44.7 , 0 );
setMoveKey( spep_2 - 3 + 120, 1, 150.6, -48.3 , 0 );
setMoveKey( spep_2 - 3 + 122, 1, 142.3, -54.8 , 0 );
setMoveKey( spep_2 - 3 + 124, 1, 138.3, -58.8 , 0 );
setMoveKey( spep_2 - 3 + 126, 1, 142.3, -54.8 , 0 );
setMoveKey( spep_2 - 3 + 128, 1, 146.3, -50.8 , 0 );
setMoveKey( spep_2 - 3 + 130, 1, 142.3, -54.8 , 0 );
setMoveKey( spep_2 - 3 + 132, 1, 138.3, -58.8 , 0 );
setMoveKey( spep_2 - 3 + 134, 1, 142.3, -54.8 , 0 );
setMoveKey( spep_2 - 3 + 136, 1, 146.3, -50.8 , 0 );
setMoveKey( spep_2 - 3 + 138, 1, 142.3, -54.8 , 0 );
setMoveKey( spep_2 - 3 + 140, 1, 138.3, -58.8 , 0 );
setMoveKey( spep_2 - 3 + 142, 1, 142.3, -54.8 , 0 );
setMoveKey( spep_2 - 3 + 144, 1, 144.3, -52.8 , 0 );
setMoveKey( spep_2 - 3 + 146, 1, 142.3, -54.8 , 0 );
setMoveKey( spep_2 - 3 + 148, 1, 140.3, -56.8 , 0 );
setMoveKey( spep_2 - 3 + 150, 1, 142.3, -54.8 , 0 );
setMoveKey( spep_2 - 3 + 152, 1, 144.3, -52.8 , 0 );
setMoveKey( spep_2 - 3 + 154, 1, 142.3, -54.8 , 0 );
setMoveKey( spep_2 - 3 + 156, 1, 140.3, -56.8 , 0 );
setMoveKey( spep_2 - 3 + 158, 1, 142.3, -54.8 , 0 );
setMoveKey( spep_2 - 3 + 160, 1, 144.3, -52.8 , 0 );
setMoveKey( spep_2 - 3 + 162, 1, 142.3, -54.8 , 0 );
setMoveKey( spep_2 - 3 + 164, 1, 142.3, -66.8 , 0 );
setMoveKey( spep_2 - 3 + 166, 1, 150.3, -70.8 , 0 );
setMoveKey( spep_2 - 3 + 168, 1, 158.3, -74.8 , 0 );
setMoveKey( spep_2 - 3 + 170, 1, 158.3, -86.8 , 0 );
setMoveKey( spep_2 - 3 + 172, 1, 162.3, -94.8 , 0 );
setMoveKey( spep_2 + 196, 1, 162.3, -94.8 , 0 );

setScaleKey( spep_2 + 68, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 196, 1, 1.47, 1.47 );

setRotateKey( spep_2 - 3 + 68, 1, -54 );
setRotateKey( spep_2 - 3 + 70, 1, -50.4 );
setRotateKey( spep_2 - 3 + 72, 1, -46.9 );
setRotateKey( spep_2 - 3 + 74, 1, -43.7 );
setRotateKey( spep_2 - 3 + 76, 1, -40.5 );
setRotateKey( spep_2 - 3 + 78, 1, -37.6 );
setRotateKey( spep_2 - 3 + 80, 1, -34.8 );
setRotateKey( spep_2 - 3 + 82, 1, -32.2 );
setRotateKey( spep_2 - 3 + 84, 1, -29.8 );
setRotateKey( spep_2 - 3 + 86, 1, -27.5 );
setRotateKey( spep_2 - 3 + 88, 1, -25.4 );
setRotateKey( spep_2 - 3 + 90, 1, -23.5 );
setRotateKey( spep_2 - 3 + 92, 1, -21.7 );
setRotateKey( spep_2 - 3 + 94, 1, -20.1 );
setRotateKey( spep_2 - 3 + 96, 1, -18.7 );
setRotateKey( spep_2 - 3 + 98, 1, -17.4 );
setRotateKey( spep_2 - 3 + 100, 1, -16.3 );
setRotateKey( spep_2 - 3 + 102, 1, -15.4 );
setRotateKey( spep_2 - 3 + 104, 1, -14.6 );
setRotateKey( spep_2 - 3 + 106, 1, -14.1 );
setRotateKey( spep_2 - 3 + 108, 1, -13.6 );
setRotateKey( spep_2 - 3 + 110, 1, -13.4 );
setRotateKey( spep_2 - 3 + 112, 1, -13.3 );
setRotateKey( spep_2 + 196, 1, -13.3 );

------------------------------------------------------
-- 溜め(116F)
------------------------------------------------------

--フレーム指定
spep_3 = spep_2 + 196;

--エフェクト
ef_tame = entryEffect(spep_3, SP_03, 0x80, -1 ,0 ,0, 0); --溜め
setEffMoveKey(spep_3, ef_tame, 0, 0);
setEffMoveKey(spep_3 + 116, ef_tame, 0, 0);

setEffScaleKey(spep_3, ef_tame, 1.0, 1.0);
setEffScaleKey(spep_3 + 116, ef_tame, 1.0, 1.0);

setEffRotateKey(spep_3, ef_tame, 0);
setEffRotateKey(spep_3 + 116, ef_tame, 0);

setEffAlphaKey(spep_3, ef_tame, 255);
setEffAlphaKey(spep_3 + 116, ef_tame, 255);

--集中線
shuchusen2 = entryEffectLife(spep_3 + 14, 906, 102, 0x80, -1, 0, 0, 0);
setEffMoveKey(spep_3 + 14, shuchusen2, 0, 0, 0);
setEffMoveKey(spep_3 + 116, shuchusen2, 0, 0, 0);

setEffScaleKey(spep_3 + 14, shuchusen2, 1.6, 1.6);
setEffScaleKey(spep_3 + 116, shuchusen2, 1.6, 1.6);

setEffRotateKey(spep_3 + 14, shuchusen2, 0);
setEffRotateKey(spep_3 + 116, shuchusen2, 0);

setEffAlphaKey(spep_3 + 14, shuchusen2, 255);
setEffAlphaKey(spep_3 + 116, shuchusen2, 255);

--白フェード
entryFade(spep_3 + 100, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255);

------------------------------------------------------
--顔カットイン
------------------------------------------------------

--[[
speff = entryEffect(spep_3 + 20, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture(speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect(spep_3 + 20, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture(speff1, 4, 5);  --セリフカットイン差し替え
]]

--ゴゴゴ
ctgogo = entryEffectLife(spep_3 + 32, 190006, 84, 0x100, -1, 0, 520);--ゴゴゴ
setEffShake(spep_3 + 32, ctgogo, 104, 10);

setEffMoveKey(spep_3 + 32, ctgogo, 0, 520, 0);
setEffMoveKey(spep_3 + 116, ctgogo, 0, 520, 0);

setEffScaleKey(spep_3 + 32, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_3 + 100, ctgogo, -0.7, 0.7 );
setEffScaleKey(spep_3 + 106, ctgogo, -1.7, 1.7);
setEffScaleKey(spep_3 + 116, ctgogo, -1.7, 1.7);

setEffAlphaKey( spep_3 + 32, ctgogo, 255 );
setEffAlphaKey( spep_3 + 116, ctgogo, 255 );

setEffRotateKey(spep_3 + 32, ctgogo, 0);
setEffRotateKey(spep_3 + 116, ctgogo, 0);

--***SE***
playSe(spep_3 + 32,  SE_04);  --ゴゴゴ

------------------------------------------------------
-- カードカットイン(94F)
------------------------------------------------------

--フレーム指定
spep_4 = spep_3 + 116;

--白フェード
entryFade(spep_4, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 255); --シーンの入り
entryFade(spep_4 + 84, 4, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255); --次のシーンへ

-- ** カードカットイン ** --
speff2 = entryEffect( spep_4, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_4, 906, 94, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4, shuchusen1, 94, 20 );

setEffMoveKey( spep_4, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_4 + 94, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_4, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_4 + 94, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_4, shuchusen1, 0 );
setEffRotateKey( spep_4 + 94, shuchusen1, 0 );

setEffAlphaKey( spep_4, shuchusen1, 255 );
setEffAlphaKey( spep_4 + 94, shuchusen1, 255 );

-- ** 音 ** --
playSe( spep_4, SE_05 );

------------------------------------------------------
-- 爆発(270F)
------------------------------------------------------

--フレーム指定
spep_5 = spep_4 + 94;

--エフェクト
ef_bakuhatsu = entryEffect(spep_5, SP_04r, 0x100, -1 ,0 ,0, 0); --爆発
setEffScaleKey(spep_5, ef_bakuhatsu, 1.0, 1.0);
setEffScaleKey(spep_5 + 270, ef_bakuhatsu, 1.0, 1.0);

setEffMoveKey(spep_5, ef_bakuhatsu, 0, 0);
setEffMoveKey(spep_5 + 270, ef_bakuhatsu, 0, 0);

setEffRotateKey(spep_5, ef_bakuhatsu, 0);
setEffRotateKey(spep_5 + 270, ef_bakuhatsu, 0);

setEffAlphaKey(spep_5, ef_bakuhatsu, 255);
setEffAlphaKey(spep_5 + 270, ef_bakuhatsu, 255);

--白フェード
entryFade(spep_5, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255); --シーンの入り

--SE
se_2 = playSe(spep_5, 1037);
stopSe(spep_5 + 114, se_2, 0);
playSe(spep_5 + 114, 1023);

--書き文字

-- ダメージ表示
dealDamage(spep_5 + 120);
entryFade( spep_5 + 240, 9, 10, 1, 8, 8, 8, 255 ); -- 黒フェード
endPhase(spep_5 + 260);

end