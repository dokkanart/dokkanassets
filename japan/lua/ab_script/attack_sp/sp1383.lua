--1018650:ベジット_ビッグバンアタック
--sp_effect_a1_00216

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
SP_01=	154838	;--	バストアップ
SP_02=	154839	;--	バストアップ
SP_03=	154869	;--	キック
SP_04=	154870	;--	キック
SP_05=	154871	;--	キック
SP_06=	154872	;--	コンボ〜キックで飛ばす
SP_07=	154873	;--	コンボ〜キックで飛ばす
SP_08=	154874	;--	コンボ〜キックで飛ばす
SP_09=	154875	;--	正面に手をかざして気弾〜フィニッシュ
SP_10=	154876	;--	正面に手をかざして気弾〜フィニッシュ

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
-- バストアップ
------------------------------------------------------
--初めの準備
spep_0=0;
-- ** エフェクト等 ** --
bust_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0,  bust_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 116,  bust_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0,  bust_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 116,  bust_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0,  bust_f, 0 );
setEffRotateKey( spep_0 + 116,  bust_f, 0 );
setEffAlphaKey( spep_0 + 0,  bust_f, 255 );
setEffAlphaKey( spep_0 + 116,  bust_f, 255 );
setEffAlphaKey( spep_0 + 117,  bust_f, 0 );
setEffAlphaKey( spep_0 + 118,  bust_f, 0 );

-- ** エフェクト等 ** --
bust_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0,  bust_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 116,  bust_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0,  bust_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 116,  bust_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0,  bust_b, 0 );
setEffRotateKey( spep_0 + 116,  bust_b, 0 );
setEffAlphaKey( spep_0 + 0,  bust_b, 255 );
setEffAlphaKey( spep_0 + 116,  bust_b, 255 );
setEffAlphaKey( spep_0 + 117,  bust_b, 0 );
setEffAlphaKey( spep_0 + 118,  bust_b, 0 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );


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

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
playSe( spep_0 + 12, 1018 );--ゴゴゴ
playSe( spep_0 + 80, 1109 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 118, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 116;

------------------------------------------------------
-- キック
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_1 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0,  kick_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 76,  kick_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0,  kick_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76,  kick_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0,  kick_f, 0 );
setEffRotateKey( spep_1 + 76,  kick_f, 0 );
setEffAlphaKey( spep_1 + 0,  kick_f, 255 );
setEffAlphaKey( spep_1 + 74,  kick_f, 255 );
setEffAlphaKey( spep_1 + 75,  kick_f, 255 );
setEffAlphaKey( spep_1 + 76,  kick_f, 0 );

kick_f2 = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0,  kick_f2, 0, 0, 0 );
setEffMoveKey( spep_1 + 76,  kick_f2, 0, 0, 0 );
setEffScaleKey( spep_1 + 0,  kick_f2, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76,  kick_f2, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0,  kick_f2, 0 );
setEffRotateKey( spep_1 + 76,  kick_f2, 0 );
setEffAlphaKey( spep_1 + 0,  kick_f2, 255 );
setEffAlphaKey( spep_1 + 74,  kick_f2, 255 );
setEffAlphaKey( spep_1 + 75,  kick_f2, 255 );
setEffAlphaKey( spep_1 + 76,  kick_f2, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_1 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0,  kick_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 76,  kick_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0,  kick_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76,  kick_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0,  kick_b, 0 );
setEffRotateKey( spep_1 + 76,  kick_b, 0 );
setEffAlphaKey( spep_1 + 0,  kick_b, 255 );
setEffAlphaKey( spep_1 + 74,  kick_b, 255 );
setEffAlphaKey( spep_1 + 75,  kick_b, 255 );
setEffAlphaKey( spep_1 + 76,  kick_b, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 100 );
changeAnime( spep_1-3 + 24, 1, 106 );

setMoveKey( spep_1 + 0, 1, 113.4, 69.6 , 0 );
setMoveKey( spep_1-3 + 23, 1, 113.4, 69.6 , 0 );
setMoveKey( spep_1-3 + 24, 1, 163.2, 189.7 , 0 );
setMoveKey( spep_1-3 + 30, 1, 163.2, 189.7 , 0 );
setMoveKey( spep_1-3 + 32, 1, 184.8, 218.5 , 0 );
setMoveKey( spep_1-3 + 34, 1, 201.9, 241.4 , 0 );
setMoveKey( spep_1-3 + 36, 1, 215.6, 259.8 , 0 );
setMoveKey( spep_1-3 + 38, 1, 226.8, 274.6 , 0 );
setMoveKey( spep_1-3 + 40, 1, 235.9, 286.8 , 0 );
setMoveKey( spep_1-3 + 42, 1, 243.4, 296.8 , 0 );
setMoveKey( spep_1-3 + 44, 1, 249.6, 305.1 , 0 );
setMoveKey( spep_1-3 + 46, 1, 254.8, 312.1 , 0 );
setMoveKey( spep_1-3 + 48, 1, 259.1, 317.8 , 0 );
setMoveKey( spep_1-3 + 50, 1, 262.7, 322.6 , 0 );
setMoveKey( spep_1-3 + 52, 1, 265.7, 326.7 , 0 );
setMoveKey( spep_1-3 + 54, 1, 268.2, 330 , 0 );
setMoveKey( spep_1-3 + 56, 1, 270.3, 332.8 , 0 );
setMoveKey( spep_1-3 + 58, 1, 272.1, 335.2 , 0 );
setMoveKey( spep_1-3 + 60, 1, 274.4, 337.6 , 0 );
setMoveKey( spep_1-3 + 62, 1, 276.7, 340.1 , 0 );
setMoveKey( spep_1-3 + 64, 1, 279.1, 342.5 , 0 );
setMoveKey( spep_1-3 + 66, 1, 281.4, 344.9 , 0 );
setMoveKey( spep_1-3 + 68, 1, 283.7, 347.4 , 0 );
setMoveKey( spep_1-3 + 70, 1, 286.1, 349.8 , 0 );
setMoveKey( spep_1-3 + 72, 1, 288.4, 352.3 , 0 );
setMoveKey( spep_1-3 + 74, 1, 290.7, 354.7 , 0 );
setMoveKey( spep_1-3 + 76, 1, 293, 357.2 , 0 );
setMoveKey( spep_1-4 + 79, 1, 295.4, 359.6 , 0 );

setScaleKey( spep_1 + 0, 1, 2.25, 2.25 );
setScaleKey( spep_1-3 + 44, 1, 2.25, 2.25 );
setScaleKey( spep_1-3 + 46, 1, 2.24, 2.24 );
setScaleKey( spep_1-3 + 62, 1, 2.24, 2.24 );
setScaleKey( spep_1-3 + 64, 1, 2.25, 2.25 );
setScaleKey( spep_1-4 + 79, 1, 2.25, 2.25 );

setRotateKey( spep_1 + 0, 1, -8 );
setRotateKey( spep_1-3 + 23, 1, -8 );
setRotateKey( spep_1-3 + 24, 1, -47.2 );
setRotateKey( spep_1-3 + 30, 1, -47.2 );
setRotateKey( spep_1-3 + 32, 1, -45.8 );
setRotateKey( spep_1-3 + 34, 1, -44.6 );
setRotateKey( spep_1-3 + 36, 1, -43.7 );
setRotateKey( spep_1-3 + 38, 1, -42.9 );
setRotateKey( spep_1-3 + 40, 1, -42.3 );
setRotateKey( spep_1-3 + 42, 1, -41.8 );
setRotateKey( spep_1-3 + 44, 1, -41.4 );
setRotateKey( spep_1-3 + 46, 1, -41 );
setRotateKey( spep_1-3 + 48, 1, -40.7 );
setRotateKey( spep_1-3 + 50, 1, -40.5 );
setRotateKey( spep_1-3 + 52, 1, -40.3 );
setRotateKey( spep_1-3 + 54, 1, -40.1 );
setRotateKey( spep_1-3 + 56, 1, -40 );
setRotateKey( spep_1-3 + 58, 1, -39.9 );
setRotateKey( spep_1-3 + 60, 1, -39.6 );
setRotateKey( spep_1-3 + 62, 1, -39.4 );
setRotateKey( spep_1-3 + 64, 1, -39.2 );
setRotateKey( spep_1-3 + 66, 1, -39 );
setRotateKey( spep_1-3 + 68, 1, -38.7 );
setRotateKey( spep_1-3 + 70, 1, -38.5 );
setRotateKey( spep_1-3 + 72, 1, -38.3 );
setRotateKey( spep_1-3 + 74, 1, -38.1 );
setRotateKey( spep_1-3 + 76, 1, -37.9 );
setRotateKey( spep_1-4 + 79, 1, -37.6 );

--SE
--けり
playSe( spep_1 -6 + 24, 1004 );
playSe( spep_1 -6 + 25, 1189 );
playSe( spep_1 -6 + 28, 1010 );
playSe( spep_1 -6 + 29, 1110 );
--瞬間移動
playSe( spep_1 + 69, 1109 );
setSeVolume( spep_1 + 69, 1109, 40 );
se_1027 = playSe( spep_1 + 69, 1027 );
setSeVolume( spep_1 + 69, 1027, 0 );
se_1048 = playSe( spep_1 + 71, 1048 );
setSeVolume( spep_1 + 71, 1048, 71 );
playSe( spep_1 + 72, 1032 );
setSeVolume( spep_1 + 72, 1032, 79 );
playSe( spep_1 + 73, 43 );
setSeVolume( spep_1 + 73, 43, 0 );
setSeVolume( spep_1 + 74, 43, 11.29 );
setSeVolume( spep_1 + 75, 43, 22.57 );
setSeVolume( spep_1 + 76, 43, 33.86 );
setSeVolume( spep_1 + 77, 43, 45.14 );
setSeVolume( spep_1 + 78, 43, 56.43 );
setSeVolume( spep_1 + 79, 43, 67.71 );
setSeVolume( spep_1 + 80, 43, 79 );
se_1048 = playSe( spep_1 + 75, 1048 );
setSeVolume( spep_1 + 75, 1048, 71 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 78, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 76;


------------------------------------------------------
-- コンボ〜キックで飛ばす
------------------------------------------------------
-- ** エフェクト等 ** --
combo_f = entryEffect( spep_2 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0,  combo_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 390,  combo_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0,  combo_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 390,  combo_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0,  combo_f, 0 );
setEffRotateKey( spep_2 + 390,  combo_f, 0 );
setEffAlphaKey( spep_2 + 0,  combo_f, 255 );
setEffAlphaKey( spep_2 + 390,  combo_f, 255 );
setEffAlphaKey( spep_2 + 391,  combo_f, 0 );
setEffAlphaKey( spep_2 + 392,  combo_f, 0 );

combo_f2 = entryEffect( spep_2 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0,  combo_f2, 0, 0, 0 );
setEffMoveKey( spep_2 + 390,  combo_f2, 0, 0, 0 );
setEffScaleKey( spep_2 + 0,  combo_f2, 1.0, 1.0 );
setEffScaleKey( spep_2 + 390,  combo_f2, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0,  combo_f2, 0 );
setEffRotateKey( spep_2 + 390,  combo_f2, 0 );
setEffAlphaKey( spep_2 + 0,  combo_f2, 255 );
setEffAlphaKey( spep_2 + 390,  combo_f2, 255 );
setEffAlphaKey( spep_2 + 391,  combo_f2, 0 );
setEffAlphaKey( spep_2 + 392,  combo_f2, 0 );

-- ** エフェクト等 ** --
combo_b = entryEffect( spep_2 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0,  combo_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 390,  combo_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0,  combo_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 390,  combo_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0,  combo_b, 0 );
setEffRotateKey( spep_2 + 390,  combo_b, 0 );
setEffAlphaKey( spep_2 + 0,  combo_b, 255 );
setEffAlphaKey( spep_2 + 390,  combo_b, 255 );
setEffAlphaKey( spep_2 + 391,  combo_b, 0 );
setEffAlphaKey( spep_2 + 392,  combo_b, 0 );

--敵の動き
setDisp( spep_2-3 + 111, 1, 0 );
changeAnime( spep_2 + 0, 1, 4 );
changeAnime( spep_2-3 + 10, 1, 6 );
changeAnime( spep_2-3 + 78, 1, 107 );

setShakeChara(spep_2-3 + 78, 1,20,10);

setMoveKey( spep_2 + 0, 1, 4.4, -130.3 , 0 );
setMoveKey( spep_2-3 + 9, 1, 4.4, -130.3 , 0 );
setMoveKey( spep_2-3 + 10, 1, 77.9, -230.3 , 0 );
setMoveKey( spep_2-3 + 12, 1, 77.9, -230.3 , 0 );
setMoveKey( spep_2-3 + 14, 1, 23.3, -68.4 , 0 );
setMoveKey( spep_2-3 + 18, 1, 23.3, -68.4 , 0 );
setMoveKey( spep_2-3 + 20, 1, -104.7, -28.4 , 0 );
setMoveKey( spep_2-3 + 22, 1, -107.3, -26.4 , 0 );
setMoveKey( spep_2-3 + 24, 1, -110, -24.4 , 0 );
setMoveKey( spep_2-3 + 26, 1, -112.7, -22.4 , 0 );
setMoveKey( spep_2-3 + 28, 1, -115.3, -20.3 , 0 );
setMoveKey( spep_2-3 + 30, 1, -118, -18.3 , 0 );
setMoveKey( spep_2-3 + 32, 1, -120.7, -16.3 , 0 );
setMoveKey( spep_2-3 + 34, 1, -123.3, -14.3 , 0 );
setMoveKey( spep_2-3 + 36, 1, -126, -12.2 , 0 );
setMoveKey( spep_2-3 + 38, 1, -128.7, -10.2 , 0 );
setMoveKey( spep_2-3 + 40, 1, -131.3, -8.2 , 0 );
setMoveKey( spep_2-3 + 42, 1, -134, -6.2 , 0 );
setMoveKey( spep_2-3 + 44, 1, -136.7, -4.1 , 0 );
setMoveKey( spep_2-3 + 46, 1, -139.3, -2.1 , 0 );
setMoveKey( spep_2-3 + 48, 1, -142, -0.1 , 0 );
setMoveKey( spep_2-3 + 50, 1, -144.7, 1.9 , 0 );
setMoveKey( spep_2-3 + 52, 1, -147.3, 4 , 0 );
setMoveKey( spep_2-3 + 54, 1, -150, 6 , 0 );
setMoveKey( spep_2-3 + 56, 1, -152.7, 8 , 0 );
setMoveKey( spep_2-3 + 58, 1, 11.3, -20.7 , 0 );
setMoveKey( spep_2-3 + 60, 1, 175.2, -49.4 , 0 );
setMoveKey( spep_2-3 + 62, 1, 339.2, -78.2 , 0 );
setMoveKey( spep_2-3 + 64, 1, 331.5, -75.6 , 0 );
setMoveKey( spep_2-3 + 66, 1, 323.8, -73.1 , 0 );
setMoveKey( spep_2-3 + 68, 1, 316.1, -70.5 , 0 );
setMoveKey( spep_2-3 + 70, 1, 308.3, -67.9 , 0 );
setMoveKey( spep_2-3 + 72, 1, 300.6, -65.3 , 0 );
setMoveKey( spep_2-3 + 74, 1, 292.9, -62.8 , 0 );
setMoveKey( spep_2-3 + 77, 1, 285.2, -60.2 , 0 );
setMoveKey( spep_2-3 + 78, 1, 168.8, 63.4 , 0 );
setMoveKey( spep_2-3 + 100, 1, 168.8, 63.4 , 0 );
setMoveKey( spep_2-3 + 102, 1, 175.8, 67.6 , 0 );
setMoveKey( spep_2-3 + 104, 1, 224.9, 96.4 , 0 );
setMoveKey( spep_2-3 + 106, 1, 358.1, 174.6 , 0 );
setMoveKey( spep_2-3 + 108, 1, 617.5, 327 , 0 );
setMoveKey( spep_2-3 + 111, 1, 1045.2, 578.1 , 0 );

setScaleKey( spep_2 + 0, 1, 3.63, 3.63 );
setScaleKey( spep_2-3 + 9, 1, 3.63, 3.63 );
setScaleKey( spep_2-3 + 10, 1, 3.65, 3.65 );
setScaleKey( spep_2-3 + 56, 1, 3.65, 3.65 );
setScaleKey( spep_2-3 + 58, 1, 3.27, 3.27 );
setScaleKey( spep_2-3 + 60, 1, 2.88, 2.88 );
setScaleKey( spep_2-3 + 62, 1, 2.5, 2.5 );
setScaleKey( spep_2-3 + 77, 1, 2.5, 2.5 );
setScaleKey( spep_2-3 + 78, 1, 1.16, 1.16 );
setScaleKey( spep_2-3 + 100, 1, 1.16, 1.16 );
setScaleKey( spep_2-3 + 102, 1, 1.17, 1.17 );
setScaleKey( spep_2-3 + 104, 1, 1.25, 1.25 );
setScaleKey( spep_2-3 + 106, 1, 1.47, 1.47 );
setScaleKey( spep_2-3 + 108, 1, 1.91, 1.91 );
setScaleKey( spep_2-3 + 111, 1, 2.62, 2.62 );

setRotateKey( spep_2 + 0, 1, 33.9 );
setRotateKey( spep_2-3 + 9, 1, 33.9 );
setRotateKey( spep_2-3 + 10, 1, 31.5 );
setRotateKey( spep_2-3 + 12, 1, 31.5 );
setRotateKey( spep_2-3 + 14, 1, 2.8 );
setRotateKey( spep_2-3 + 20, 1, 2.8 );
setRotateKey( spep_2-3 + 22, 1, 2.5 );
setRotateKey( spep_2-3 + 24, 1, 2.2 );
setRotateKey( spep_2-3 + 26, 1, 1.8 );
setRotateKey( spep_2-3 + 28, 1, 1.5 );
setRotateKey( spep_2-3 + 30, 1, 1.2 );
setRotateKey( spep_2-3 + 32, 1, 0.9 );
setRotateKey( spep_2-3 + 34, 1, 0.6 );
setRotateKey( spep_2-3 + 36, 1, 0.2 );
setRotateKey( spep_2-3 + 38, 1, -0.1 );
setRotateKey( spep_2-3 + 40, 1, -0.4 );
setRotateKey( spep_2-3 + 42, 1, -0.7 );
setRotateKey( spep_2-3 + 44, 1, -1.1 );
setRotateKey( spep_2-3 + 46, 1, -1.4 );
setRotateKey( spep_2-3 + 48, 1, -1.7 );
setRotateKey( spep_2-3 + 50, 1, -2 );
setRotateKey( spep_2-3 + 52, 1, -2.4 );
setRotateKey( spep_2-3 + 54, 1, -2.7 );
setRotateKey( spep_2-3 + 56, 1, -3 );
setRotateKey( spep_2-3 + 58, 1, -5 );
setRotateKey( spep_2-3 + 60, 1, -7 );
setRotateKey( spep_2-3 + 62, 1, -9 );
setRotateKey( spep_2-3 + 77, 1, -9 );
setRotateKey( spep_2-3 + 78, 1, -70.3 );
setRotateKey( spep_2-3 + 100, 1, -70.3 );
setRotateKey( spep_2-3 + 102, 1, -70.4 );
setRotateKey( spep_2-3 + 104, 1, -70.6 );
setRotateKey( spep_2-3 + 106, 1, -71.3 );
setRotateKey( spep_2-3 + 108, 1, -72.7 );
setRotateKey( spep_2-3 + 111, 1, -75 );

--敵の動き
setDisp( spep_2-3 + 190, 1, 1 );
setDisp( spep_2-3 + 224, 1, 0 );
changeAnime( spep_2-3 + 190, 1, 106 );
changeAnime( spep_2-3 + 218, 1, 108 );

a=20;
b=24;

setMoveKey( spep_2-3 + 190, 1, -238.8+a, -24+b , 0 );
setMoveKey( spep_2-3 + 191, 1, -238.8+a, -24+b , 0 );
setMoveKey( spep_2-3 + 192, 1, -238.8-a, -24+b , 0 );
setMoveKey( spep_2-3 + 193, 1, -238.8-a, -24+b , 0 );
setMoveKey( spep_2-3 + 194, 1, -244.3+a+30, -24.4-10 , 0 );
setMoveKey( spep_2-3 + 195, 1, -244.3+a+30, -24.4-10 , 0 );
setMoveKey( spep_2-3 + 196, 1, -246.1+a, -19-10 , 0 );
setMoveKey( spep_2-3 + 197, 1, -246.1+a, -19-10 , 0 );
setMoveKey( spep_2-3 + 198, 1, -247.9+10, -13.6-10 , 0 );
setMoveKey( spep_2-3 + 199, 1, -247.9+10, -13.6-10 , 0 );

setMoveKey( spep_2-3 + 200, 1, -249.7+a, -8.2-10 , 0 );
setMoveKey( spep_2-3 + 201, 1, -249.7+a, -8.2-10 , 0 );

setMoveKey( spep_2-3 + 202, 1, -251.4-10, -2.8-10 , 0 );
setMoveKey( spep_2-3 + 204, 1, -253.2+a, 2.6 , 0 );
setMoveKey( spep_2-3 + 206, 1, -255+a, 8 , 0 );
setMoveKey( spep_2-3 + 208, 1, -256.8+a, 13.3 , 0 );
setMoveKey( spep_2-3 + 210, 1, -258.5+a, 18.7 , 0 );
--setMoveKey( spep_2-3 + 212, 1, -262.2+a, 51.5 , 0 );
--setMoveKey( spep_2-3 + 214, 1, -265.2+a, 4.7, 0 );
setMoveKey( spep_2-3 + 216, 1, -272.4+a, 55.7 , 0 );
setMoveKey( spep_2-3 + 217, 1, -272.4+a, 55.7 , 0 );

setMoveKey( spep_2-3 + 218, 1, -167+10, -174.9-20 , 0 );
setMoveKey( spep_2-3 + 220, 1, -135.2+10, -342.5-20 , 0 );
setMoveKey( spep_2-3 + 222, 1, -138.7+10, -360.7-20 , 0 );
setMoveKey( spep_2-3 + 224, 1, -131.8+10, -797.8-20 , 0 );

setScaleKey( spep_2-3 + 190, 1, 2.7, 2.7 );
setScaleKey( spep_2-3 + 224, 1, 2.7, 2.7 );

setRotateKey( spep_2-3 + 190, 1, 0 );
--setRotateKey( spep_2-3 + 192, 1, 0 );
setRotateKey( spep_2-3 + 214, 1, 32 );
setRotateKey( spep_2-3 + 217, 1, 33 );
setRotateKey( spep_2-3 + 218, 1, 100 );
setRotateKey( spep_2-3 + 224, 1, 100 );

--敵の動き
setDisp( spep_2-3 + 308, 1, 1 );
setDisp( spep_2-1 + 314, 1, 0 );
changeAnime( spep_2-3 + 308, 1, 107 );

setMoveKey( spep_2-3 + 308, 1, 184.5, 229.5 , 0 );
setMoveKey( spep_2-3 + 310, 1, 184.5, 129.2 , 0 );
setMoveKey( spep_2-3 + 312, 1, 184.5, 106.1 , 0 );
setMoveKey( spep_2-1 + 314, 1, 184.5, 104.5 , 0 );

setScaleKey( spep_2-3 + 308, 1, 1.6, 1.6 );
setScaleKey( spep_2-1 + 314, 1, 1.6, 1.6 );

setRotateKey( spep_2-3 + 308, 1, 113 );
setRotateKey( spep_2-1 + 314, 1, 113 );

--敵の動き
setDisp( spep_2-3 + 332, 1, 1 );
setDisp( spep_2-3 + 390, 1, 0 );
changeAnime( spep_2-3 + 332, 1, 107 );
changeAnime( spep_2-3 + 356, 1, 5 );

setMoveKey( spep_2-3 + 332, 1, 346.4, -821.2 , 0 );
setMoveKey( spep_2-3 + 334, 1, 346.4, -841.2 , 0 );
setMoveKey( spep_2-3 + 336, 1, 346.4, -831.2 , 0 );
setMoveKey( spep_2-3 + 338, 1, 346.4, -761.2 , 0 );
setMoveKey( spep_2-3 + 340, 1, 346.4, -741.2 , 0 );
setMoveKey( spep_2-3 + 342, 1, 346.4, -751.2 , 0 );
setMoveKey( spep_2-3 + 344, 1, 346.4, -691.2 , 0 );
setMoveKey( spep_2-3 + 346, 1, 346.4, -701.2 , 0 );
setMoveKey( spep_2-3 + 348, 1, 346.4, -691.2 , 0 );
setMoveKey( spep_2-3 + 350, 1, 364.4, -641.2 , 0 );
setMoveKey( spep_2-3 + 352, 1, 209.6, -421.7 , 0 );
setMoveKey( spep_2-3 + 354, 1, 55.3, -202.4 , 0 );
setMoveKey( spep_2-3 + 355, 1, 55.3, -202.4 , 0 );

setMoveKey( spep_2-3 + 356, 1, 10.9, 12.9 , 0 );
setMoveKey( spep_2-3 + 358, 1, 5.5, 133.6 , 0 );
setMoveKey( spep_2-3 + 360, 1, 4.6, 154.3 , 0 );
setMoveKey( spep_2-3 + 362, 1, 4, 167.1 , 0 );
setMoveKey( spep_2-3 + 364, 1, 3.6, 175 , 0 );
setMoveKey( spep_2-3 + 366, 1, 3.4, 179.4 , 0 );
setMoveKey( spep_2-3 + 368, 1, 3.3, 182.2 , 0 );
setMoveKey( spep_2-3 + 370, 1, 3.2, 184 , 0 );
setMoveKey( spep_2-3 + 372, 1, 3.2, 185.2 , 0 );
setMoveKey( spep_2-3 + 374, 1, 3.1, 186 , 0 );
setMoveKey( spep_2-3 + 376, 1, 3.1, 186.7 , 0 );
setMoveKey( spep_2-3 + 378, 1, 3.1, 187.1 , 0 );
setMoveKey( spep_2-3 + 380, 1, 3.1, 187.5 , 0 );
setMoveKey( spep_2-3 + 382, 1, 3, 187.7 , 0 );
setMoveKey( spep_2-3 + 384, 1, 3, 187.9 , 0 );
setMoveKey( spep_2-3 + 386, 1, 3, 188.1 , 0 );
setMoveKey( spep_2-3 + 388, 1, 3, 188.2 , 0 );
setMoveKey( spep_2-3 + 390, 1, 3, 188.2 , 0 );

setScaleKey( spep_2-3 + 332, 1, 6.6, 6.6 );
setScaleKey( spep_2-3 + 350, 1, 6.6, 6.6 );
setScaleKey( spep_2-3 + 352, 1, 4.45, 4.45 );
setScaleKey( spep_2-3 + 354, 1, 2.3, 2.3 );
setScaleKey( spep_2-3 + 355, 1, 2.3, 2.3 );

setScaleKey( spep_2-3 + 356, 1, 4.28, 4.28 );
setScaleKey( spep_2-3 + 358, 1, 1.37, 1.37 );
setScaleKey( spep_2-3 + 360, 1, 0.87, 0.87 );
setScaleKey( spep_2-3 + 362, 1, 0.56, 0.56 );
setScaleKey( spep_2-3 + 364, 1, 0.37, 0.37 );
setScaleKey( spep_2-3 + 366, 1, 0.27, 0.27 );
setScaleKey( spep_2-3 + 368, 1, 0.2, 0.2 );
setScaleKey( spep_2-3 + 370, 1, 0.16, 0.16 );
setScaleKey( spep_2-3 + 372, 1, 0.13, 0.13 );
setScaleKey( spep_2-3 + 374, 1, 0.11, 0.11 );
setScaleKey( spep_2-3 + 376, 1, 0.09, 0.09 );
setScaleKey( spep_2-3 + 378, 1, 0.08, 0.08 );
setScaleKey( spep_2-3 + 380, 1, 0.07, 0.07 );
setScaleKey( spep_2-3 + 382, 1, 0.07, 0.07 );
setScaleKey( spep_2-3 + 384, 1, 0.06, 0.06 );
setScaleKey( spep_2-3 + 388, 1, 0.06, 0.06 );
setScaleKey( spep_2-3 + 390, 1, 0.05, 0.05 );

setRotateKey( spep_2-3 + 332, 1, -149 );
setRotateKey( spep_2-3 + 350, 1, -149 );
setRotateKey( spep_2-3 + 352, 1, -138 );
setRotateKey( spep_2-3 + 354, 1, -127 );
setRotateKey( spep_2-3 + 355, 1, -127 );

setRotateKey( spep_2-3 + 356, 1, -10 );
setRotateKey( spep_2-3 + 390, 1, -10 );

--白フェード
entryFade( spep_2 + 382, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--SE
setSeVolume( spep_2 + 1, 1027, 0 );
setSeVolume( spep_2 + 2, 1027, 11.29 );
setSeVolume( spep_2 + 3, 1027, 22.57 );
setSeVolume( spep_2 + 4, 1027, 33.86 );
setSeVolume( spep_2 + 5, 1027, 45.14 );
setSeVolume( spep_2 + 6, 1027, 56.43 );
setSeVolume( spep_2 + 7, 1027, 67.71 );
setSeVolume( spep_2 + 8, 1027, 79 );

playSe( spep_2 + 0, 1003 );
setSeVolume( spep_2 + 0, 1003, 79 );

--パンチ
playSe( spep_2 -12 + 20, 1009 );
playSe( spep_2 -12 + 22, 1110 );

--瞬間移動
playSe( spep_2 -20 + 60, 1109 );
setSeVolume( spep_2 -20 + 60, 1109, 40 );
se_1027 = playSe( spep_2 -20 + 60, 1027 );
setSeVolume( spep_2 -20 + 60, 1027, 0 );
setSeVolume( spep_2 -20 + 68, 1027, 0 );
setSeVolume( spep_2 -20 + 69, 1027, 25 );
setSeVolume( spep_2 -20 + 70, 1027, 50 );
setSeVolume( spep_2 -20 + 71, 1027, 75 );
setSeVolume( spep_2 -20 + 72, 1027, 100 );
se_1048 = playSe( spep_2 -20 + 62, 1048 );
setSeVolume( spep_2 -20 + 62, 1048, 71 );
playSe( spep_2 -20 + 63, 1032 );
setSeVolume( spep_2 -20 + 63, 1032, 79 );
playSe( spep_2 -20 + 64, 43 );
setSeVolume( spep_2 -20 + 64, 43, 0 );
setSeVolume( spep_2 -20 + 65, 43, 11.29 );
setSeVolume( spep_2 -20 + 66, 43, 22.57 );
setSeVolume( spep_2 -20 + 67, 43, 33.86 );
setSeVolume( spep_2 -20 + 68, 43, 45.14 );
setSeVolume( spep_2 -20 + 69, 43, 56.43 );
setSeVolume( spep_2 -20 + 70, 43, 67.71 );
setSeVolume( spep_2 -20 + 71, 43, 79 );
se_1048 = playSe( spep_2 -20 + 66, 1048 );
setSeVolume( spep_2 -20 + 66, 1048, 71 );
playSe( spep_2 -20 + 67, 1003 );
setSeVolume( spep_2 -20 + 67, 1003, 79 );

--けり
playSe( spep_2 -12 + 88, 1010 );
setSeVolume( spep_2 -12 + 88, 1010, 89 );
playSe( spep_2 -12 + 88, 1001 );
setSeVolume( spep_2 -12 + 88, 1001, 63 );
playSe( spep_2 -12 + 91, 1187 );
setSeVolume( spep_2 -12 + 91, 1187, 79 );

--上からダッシュ
se_1183 = playSe( spep_2 + 108, 1183 );
setSeVolume( spep_2 + 108, 1183, 112 );
playSe( spep_2 + 133, 9 );
se_1182 = playSe( spep_2 + 133, 1182 );
setSeVolume( spep_2 + 133, 1182, 224 );
se_1116 = playSe( spep_2 + 133, 1116 );
playSe( spep_2 + 158, 1072 );

--叩きつける
playSe( spep_2 -10 + 200, 1123 );
setSeVolume( spep_2 -10 + 200, 1123, 79 );
playSe( spep_2 -10 + 202, 1027 );

--瞬間移動
playSe( spep_2 -10 + 272, 1109 );

--蹴り飛ばす
playSe( spep_2 -10 + 319, 1004 );
playSe( spep_2 -10 + 325, 1120 );
playSe( spep_2 -10 + 325, 1110 );
setSeVolume( spep_2 -10 + 325, 1110, 79 );

--敵が飛んでいく
se_1183 = playSe( spep_2 + 348, 1183 );
se_1121 = playSe( spep_2 + 348, 1121 );
setSeVolume( spep_2 + 348, 1121, 79 );

stopSe( spep_2 + 11, se_1027, 16 );
stopSe( spep_2 + 1, se_1048, 0 );
stopSe( spep_2 + 5, se_1048, 0 );
stopSe( spep_2 + 78, se_1027, 16 );
stopSe( spep_2 + 68, se_1048, 0 );
stopSe( spep_2 + 72, se_1048, 0 );
stopSe( spep_2 + 210, se_1183, 0 );
stopSe( spep_2 + 141, se_1182, 10 );
stopSe( spep_2 + 184, se_1116, 26 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 393, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 390;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 86, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

stopSe( spep_3 + 14, se_1183, 0 );
stopSe( spep_3 + 14, se_1121, 0 );

--白フェード
--entryFade( spep_3 + 80, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 84;

------------------------------------------------------
-- バス正面に手をかざして気弾〜フィニッシュトアップ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0,  finish_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 306,  finish_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0,  finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 306,  finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0,  finish_f, 0 );
setEffRotateKey( spep_4 + 306,  finish_f, 0 );
setEffAlphaKey( spep_4 + 0,  finish_f, 255 );
setEffAlphaKey( spep_4 + 306,  finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_4 + 0, SP_10, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0,  finish_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 306,  finish_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0,  finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 306,  finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0,  finish_b, 0 );
setEffRotateKey( spep_4 + 306,  finish_b, 0 );
setEffAlphaKey( spep_4 + 0,  finish_b, 255 );
setEffAlphaKey( spep_4 + 306,  finish_b, 255 );

--敵の動き
setDisp( spep_4-3 + 150, 1, 1 );
setDisp( spep_4-3 + 176, 1, 0 );
changeAnime( spep_4-3 + 150, 1, 106 );

setMoveKey( spep_4-3 + 150, 1, -81.9, -71.9 , 0 );
setMoveKey( spep_4-3 + 152, 1, -76.8, -58.7 , 0 );
setMoveKey( spep_4-3 + 154, 1, -63.7, -45.5 , 0 );
setMoveKey( spep_4-3 + 156, 1, -62.6, -44.2 , 0 );
setMoveKey( spep_4-3 + 158, 1, -45.5, -35 , 0 );
setMoveKey( spep_4-3 + 160, 1, -40.5, -21.8 , 0 );
setMoveKey( spep_4-3 + 162, 1, -27.4, -8.5 , 0 );
setMoveKey( spep_4-3 + 164, 1, -26.3, -7.3 , 0 );
setMoveKey( spep_4-3 + 166, 1, -9.2, 1.9 , 0 );
setMoveKey( spep_4-3 + 168, 1, -4.2, 15.2 , 0 );
setMoveKey( spep_4-3 + 170, 1, 8.9, 28.4 , 0 );
setMoveKey( spep_4-3 + 172, 1, 10, 29.6 , 0 );
setMoveKey( spep_4-3 + 174, 1, 27.1, 38.9 , 0 );
setMoveKey( spep_4-3 + 176, 1, 28.1, 56.1 , 0 );

setScaleKey( spep_4-3 + 150, 1, 0.5, 0.5 );
setScaleKey( spep_4-3 + 176, 1, 0.5, 0.5 );

setRotateKey( spep_4-3 + 150, 1, -40 );
setRotateKey( spep_4-3 + 176, 1, -40 );

--SE
se_1191 = playSe( spep_4 -20 + 0, 1191 );
setSeVolume( spep_4 -20 + 0, 1191, 0 );
setSeVolume( spep_4 -20 + 47, 1191, 0 );
setSeVolume( spep_4 -20 + 48, 1191, 19.75 );
setSeVolume( spep_4 -20 + 49, 1191, 39.50 );
setSeVolume( spep_4 -20 + 50, 1191, 59.25 );
setSeVolume( spep_4 -20 + 51, 1191, 79 );
playSe( spep_4 -20 + 34, 1003 );
playSe( spep_4 -20 + 35, 1154 );
setSeVolume( spep_4 -20 + 35, 1154, 0 );
setSeVolume( spep_4 -20 + 44, 1154, 0 );
setSeVolume( spep_4 -20 + 45, 1154, 50 );
setSeVolume( spep_4 -20 + 46, 1154, 100 );
se_1184 = playSe( spep_4 -20 + 40, 1184 );
setSeVolume( spep_4 -20 + 40, 1184, 79 );
se_0017 = playSe( spep_4 -20 + 40, 17 );
setSeVolume( spep_4 -20 + 40, 17, 63 );
playSe( spep_4 -20 + 119, 1133 );
playSe( spep_4 -20 + 119, 1027 );
setSeVolume( spep_4 -20 + 119, 1027, 79 );
se_1179 = playSe( spep_4 -20 + 119, 1179 );
se_1212 = playSe( spep_4 -20 + 119, 1212 );
setSeVolume( spep_4 -20 + 119, 1212, 0 );
setSeVolume( spep_4 -20 + 141, 1212, 0 );
setSeVolume( spep_4 -20 + 142, 1212, 4.85 );
setSeVolume( spep_4 -20 + 143, 1212, 9.69 );
setSeVolume( spep_4 -20 + 144, 1212, 14.54 );
setSeVolume( spep_4 -20 + 145, 1212, 19.38 );
setSeVolume( spep_4 -20 + 146, 1212, 24.23 );
setSeVolume( spep_4 -20 + 147, 1212, 29.08 );
setSeVolume( spep_4 -20 + 148, 1212, 33.92 );
setSeVolume( spep_4 -20 + 149, 1212, 38.77 );
setSeVolume( spep_4 -20 + 150, 1212, 43.62 );
setSeVolume( spep_4 -20 + 151, 1212, 48.46 );
setSeVolume( spep_4 -20 + 152, 1212, 53.31 );
setSeVolume( spep_4 -20 + 153, 1212, 58.15 );
setSeVolume( spep_4 -20 + 154, 1212, 63 );
se_1161 = playSe( spep_4 -20 + 134, 1161 );
setSeVolume( spep_4 -20 + 134, 1161, 63 );
playSe( spep_4 -20 + 202, 1011 );
playSe( spep_4 -20 + 202, 1159 );
playSe( spep_4 -20 + 204, 1025 );

stopSe( spep_4 -20 + 131, se_1191, 0 );
stopSe( spep_4 -20 + 71, se_1184, 31 );
stopSe( spep_4 -20 + 123, se_0017, 0 );
stopSe( spep_4 -20 + 195, se_1179, 0 );
stopSe( spep_4 -20 + 216, se_1212, 31 );
stopSe( spep_4 -20 + 222, se_1161, 0 );

--終わり
dealDamage( spep_4 + 174 );
endPhase( spep_4 + 290 );
else 
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- バストアップ
------------------------------------------------------
--初めの準備
spep_0=0;
-- ** エフェクト等 ** --
bust_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0,  bust_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 116,  bust_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0,  bust_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 116,  bust_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0,  bust_f, 0 );
setEffRotateKey( spep_0 + 116,  bust_f, 0 );
setEffAlphaKey( spep_0 + 0,  bust_f, 255 );
setEffAlphaKey( spep_0 + 116,  bust_f, 255 );
setEffAlphaKey( spep_0 + 117,  bust_f, 0 );
setEffAlphaKey( spep_0 + 118,  bust_f, 0 );

-- ** エフェクト等 ** --
bust_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0,  bust_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 116,  bust_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0,  bust_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 116,  bust_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0,  bust_b, 0 );
setEffRotateKey( spep_0 + 116,  bust_b, 0 );
setEffAlphaKey( spep_0 + 0,  bust_b, 255 );
setEffAlphaKey( spep_0 + 116,  bust_b, 255 );
setEffAlphaKey( spep_0 + 117,  bust_b, 0 );
setEffAlphaKey( spep_0 + 118,  bust_b, 0 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );


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

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
playSe( spep_0 + 12, 1018 );--ゴゴゴ
playSe( spep_0 + 80, 1109 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 118, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 116;

------------------------------------------------------
-- キック
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_1 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0,  kick_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 76,  kick_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0,  kick_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76,  kick_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0,  kick_f, 0 );
setEffRotateKey( spep_1 + 76,  kick_f, 0 );
setEffAlphaKey( spep_1 + 0,  kick_f, 255 );
setEffAlphaKey( spep_1 + 74,  kick_f, 255 );
setEffAlphaKey( spep_1 + 75,  kick_f, 255 );
setEffAlphaKey( spep_1 + 76,  kick_f, 0 );

kick_f2 = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0,  kick_f2, 0, 0, 0 );
setEffMoveKey( spep_1 + 76,  kick_f2, 0, 0, 0 );
setEffScaleKey( spep_1 + 0,  kick_f2, -1.0, 1.0 );
setEffScaleKey( spep_1 + 76,  kick_f2, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0,  kick_f2,0 );
setEffRotateKey( spep_1 + 20,  kick_f2,0 );
setEffRotateKey( spep_1 + 21,  kick_f2, -50 );
setEffRotateKey( spep_1 + 76,  kick_f2, -50 );
setEffAlphaKey( spep_1 + 0,  kick_f2, 255 );
setEffAlphaKey( spep_1 + 74,  kick_f2, 255 );
setEffAlphaKey( spep_1 + 75,  kick_f2, 255 );
setEffAlphaKey( spep_1 + 76,  kick_f2, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_1 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0,  kick_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 76,  kick_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0,  kick_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76,  kick_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0,  kick_b, 0 );
setEffRotateKey( spep_1 + 76,  kick_b, 0 );
setEffAlphaKey( spep_1 + 0,  kick_b, 255 );
setEffAlphaKey( spep_1 + 74,  kick_b, 255 );
setEffAlphaKey( spep_1 + 75,  kick_b, 255 );
setEffAlphaKey( spep_1 + 76,  kick_b, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 100 );
changeAnime( spep_1-3 + 24, 1, 106 );

setMoveKey( spep_1 + 0, 1, 113.4, 69.6 , 0 );
setMoveKey( spep_1-3 + 23, 1, 113.4, 69.6 , 0 );
setMoveKey( spep_1-3 + 24, 1, 163.2, 189.7 , 0 );
setMoveKey( spep_1-3 + 30, 1, 163.2, 189.7 , 0 );
setMoveKey( spep_1-3 + 32, 1, 184.8, 218.5 , 0 );
setMoveKey( spep_1-3 + 34, 1, 201.9, 241.4 , 0 );
setMoveKey( spep_1-3 + 36, 1, 215.6, 259.8 , 0 );
setMoveKey( spep_1-3 + 38, 1, 226.8, 274.6 , 0 );
setMoveKey( spep_1-3 + 40, 1, 235.9, 286.8 , 0 );
setMoveKey( spep_1-3 + 42, 1, 243.4, 296.8 , 0 );
setMoveKey( spep_1-3 + 44, 1, 249.6, 305.1 , 0 );
setMoveKey( spep_1-3 + 46, 1, 254.8, 312.1 , 0 );
setMoveKey( spep_1-3 + 48, 1, 259.1, 317.8 , 0 );
setMoveKey( spep_1-3 + 50, 1, 262.7, 322.6 , 0 );
setMoveKey( spep_1-3 + 52, 1, 265.7, 326.7 , 0 );
setMoveKey( spep_1-3 + 54, 1, 268.2, 330 , 0 );
setMoveKey( spep_1-3 + 56, 1, 270.3, 332.8 , 0 );
setMoveKey( spep_1-3 + 58, 1, 272.1, 335.2 , 0 );
setMoveKey( spep_1-3 + 60, 1, 274.4, 337.6 , 0 );
setMoveKey( spep_1-3 + 62, 1, 276.7, 340.1 , 0 );
setMoveKey( spep_1-3 + 64, 1, 279.1, 342.5 , 0 );
setMoveKey( spep_1-3 + 66, 1, 281.4, 344.9 , 0 );
setMoveKey( spep_1-3 + 68, 1, 283.7, 347.4 , 0 );
setMoveKey( spep_1-3 + 70, 1, 286.1, 349.8 , 0 );
setMoveKey( spep_1-3 + 72, 1, 288.4, 352.3 , 0 );
setMoveKey( spep_1-3 + 74, 1, 290.7, 354.7 , 0 );
setMoveKey( spep_1-3 + 76, 1, 293, 357.2 , 0 );
setMoveKey( spep_1-4 + 79, 1, 295.4, 359.6 , 0 );

setScaleKey( spep_1 + 0, 1, 2.25, 2.25 );
setScaleKey( spep_1-3 + 44, 1, 2.25, 2.25 );
setScaleKey( spep_1-3 + 46, 1, 2.24, 2.24 );
setScaleKey( spep_1-3 + 62, 1, 2.24, 2.24 );
setScaleKey( spep_1-3 + 64, 1, 2.25, 2.25 );
setScaleKey( spep_1-4 + 79, 1, 2.25, 2.25 );

setRotateKey( spep_1 + 0, 1, -8 );
setRotateKey( spep_1-3 + 23, 1, -8 );
setRotateKey( spep_1-3 + 24, 1, -47.2 );
setRotateKey( spep_1-3 + 30, 1, -47.2 );
setRotateKey( spep_1-3 + 32, 1, -45.8 );
setRotateKey( spep_1-3 + 34, 1, -44.6 );
setRotateKey( spep_1-3 + 36, 1, -43.7 );
setRotateKey( spep_1-3 + 38, 1, -42.9 );
setRotateKey( spep_1-3 + 40, 1, -42.3 );
setRotateKey( spep_1-3 + 42, 1, -41.8 );
setRotateKey( spep_1-3 + 44, 1, -41.4 );
setRotateKey( spep_1-3 + 46, 1, -41 );
setRotateKey( spep_1-3 + 48, 1, -40.7 );
setRotateKey( spep_1-3 + 50, 1, -40.5 );
setRotateKey( spep_1-3 + 52, 1, -40.3 );
setRotateKey( spep_1-3 + 54, 1, -40.1 );
setRotateKey( spep_1-3 + 56, 1, -40 );
setRotateKey( spep_1-3 + 58, 1, -39.9 );
setRotateKey( spep_1-3 + 60, 1, -39.6 );
setRotateKey( spep_1-3 + 62, 1, -39.4 );
setRotateKey( spep_1-3 + 64, 1, -39.2 );
setRotateKey( spep_1-3 + 66, 1, -39 );
setRotateKey( spep_1-3 + 68, 1, -38.7 );
setRotateKey( spep_1-3 + 70, 1, -38.5 );
setRotateKey( spep_1-3 + 72, 1, -38.3 );
setRotateKey( spep_1-3 + 74, 1, -38.1 );
setRotateKey( spep_1-3 + 76, 1, -37.9 );
setRotateKey( spep_1-4 + 79, 1, -37.6 );

--SE
--けり
playSe( spep_1 -6 + 24, 1004 );
playSe( spep_1 -6 + 25, 1189 );
playSe( spep_1 -6 + 28, 1010 );
playSe( spep_1 -6 + 29, 1110 );
--瞬間移動
playSe( spep_1 + 69, 1109 );
setSeVolume( spep_1 + 69, 1109, 40 );
se_1027 = playSe( spep_1 + 69, 1027 );
setSeVolume( spep_1 + 69, 1027, 0 );
se_1048 = playSe( spep_1 + 71, 1048 );
setSeVolume( spep_1 + 71, 1048, 71 );
playSe( spep_1 + 72, 1032 );
setSeVolume( spep_1 + 72, 1032, 79 );
playSe( spep_1 + 73, 43 );
setSeVolume( spep_1 + 73, 43, 0 );
setSeVolume( spep_1 + 74, 43, 11.29 );
setSeVolume( spep_1 + 75, 43, 22.57 );
setSeVolume( spep_1 + 76, 43, 33.86 );
setSeVolume( spep_1 + 77, 43, 45.14 );
setSeVolume( spep_1 + 78, 43, 56.43 );
setSeVolume( spep_1 + 79, 43, 67.71 );
setSeVolume( spep_1 + 80, 43, 79 );
se_1048 = playSe( spep_1 + 75, 1048 );
setSeVolume( spep_1 + 75, 1048, 71 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 78, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 76;


------------------------------------------------------
-- コンボ〜キックで飛ばす
------------------------------------------------------
-- ** エフェクト等 ** --
combo_f = entryEffect( spep_2 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0,  combo_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 390,  combo_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0,  combo_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 390,  combo_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0,  combo_f, 0 );
setEffRotateKey( spep_2 + 390,  combo_f, 0 );
setEffAlphaKey( spep_2 + 0,  combo_f, 255 );
setEffAlphaKey( spep_2 + 390,  combo_f, 255 );
setEffAlphaKey( spep_2 + 391,  combo_f, 0 );
setEffAlphaKey( spep_2 + 392,  combo_f, 0 );

combo_f2 = entryEffect( spep_2 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0,  combo_f2, 0, 0, 0 );
setEffMoveKey( spep_2 + 390,  combo_f2, 0, 0, 0 );
setEffScaleKey( spep_2 + 0,  combo_f2, -1.0, 1.0 );
setEffScaleKey( spep_2 + 390,  combo_f2, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0,  combo_f2, 0 );
setEffRotateKey( spep_2 + 390,  combo_f2, 0 );
setEffAlphaKey( spep_2 + 0,  combo_f2, 255 );
setEffAlphaKey( spep_2 + 390,  combo_f2, 255 );
setEffAlphaKey( spep_2 + 391,  combo_f2, 0 );
setEffAlphaKey( spep_2 + 392,  combo_f2, 0 );

-- ** エフェクト等 ** --
combo_b = entryEffect( spep_2 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0,  combo_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 390,  combo_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0,  combo_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 390,  combo_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0,  combo_b, 0 );
setEffRotateKey( spep_2 + 390,  combo_b, 0 );
setEffAlphaKey( spep_2 + 0,  combo_b, 255 );
setEffAlphaKey( spep_2 + 390,  combo_b, 255 );
setEffAlphaKey( spep_2 + 391,  combo_b, 0 );
setEffAlphaKey( spep_2 + 392,  combo_b, 0 );

--敵の動き
setDisp( spep_2-3 + 111, 1, 0 );
changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2-3 + 10, 1, 106 );
changeAnime( spep_2-3 + 78, 1, 7 );

setShakeChara(spep_2-3 + 78, 1,20,10);

setMoveKey( spep_2 + 0, 1, -4.4, -130.3 , 0 );
setMoveKey( spep_2-3 + 9, 1, -4.4, -130.3 , 0 );
setMoveKey( spep_2-3 + 10, 1, -77.9, -230.3 , 0 );
setMoveKey( spep_2-3 + 12, 1, -77.9, -230.3 , 0 );
setMoveKey( spep_2-3 + 14, 1, -23.3, -68.4 , 0 );
setMoveKey( spep_2-3 + 18, 1, -23.3, -68.4 , 0 );
setMoveKey( spep_2-3 + 20, 1, 104.7, -28.4 , 0 );
setMoveKey( spep_2-3 + 22, 1, 107.3, -26.4 , 0 );
setMoveKey( spep_2-3 + 24, 1, 110, -24.4 , 0 );
setMoveKey( spep_2-3 + 26, 1, 112.7, -22.4 , 0 );
setMoveKey( spep_2-3 + 28, 1, 115.3, -20.3 , 0 );
setMoveKey( spep_2-3 + 30, 1, 118, -18.3 , 0 );
setMoveKey( spep_2-3 + 32, 1, 120.7, -16.3 , 0 );
setMoveKey( spep_2-3 + 34, 1, 123.3, -14.3 , 0 );
setMoveKey( spep_2-3 + 36, 1, 126, -12.2 , 0 );
setMoveKey( spep_2-3 + 38, 1, 128.7, -10.2 , 0 );
setMoveKey( spep_2-3 + 40, 1, 131.3, -8.2 , 0 );
setMoveKey( spep_2-3 + 42, 1, 134, -6.2 , 0 );
setMoveKey( spep_2-3 + 44, 1, 136.7, -4.1 , 0 );
setMoveKey( spep_2-3 + 46, 1, 139.3, -2.1 , 0 );
setMoveKey( spep_2-3 + 48, 1, 142, -0.1 , 0 );
setMoveKey( spep_2-3 + 50, 1, 144.7, 1.9 , 0 );
setMoveKey( spep_2-3 + 52, 1, 147.3, 4 , 0 );
setMoveKey( spep_2-3 + 54, 1, 150, 6 , 0 );
setMoveKey( spep_2-3 + 56, 1, 152.7, 8 , 0 );
setMoveKey( spep_2-3 + 58, 1, -11.3, -20.7 , 0 );
setMoveKey( spep_2-3 + 60, 1, -175.2, -49.4 , 0 );
setMoveKey( spep_2-3 + 62, 1, -339.2, -78.2 , 0 );
setMoveKey( spep_2-3 + 64, 1, -331.5, -75.6 , 0 );
setMoveKey( spep_2-3 + 66, 1, -323.8, -73.1 , 0 );
setMoveKey( spep_2-3 + 68, 1, -316.1, -70.5 , 0 );
setMoveKey( spep_2-3 + 70, 1, -308.3, -67.9 , 0 );
setMoveKey( spep_2-3 + 72, 1, -300.6, -65.3 , 0 );
setMoveKey( spep_2-3 + 74, 1, -292.9, -62.8 , 0 );
setMoveKey( spep_2-3 + 77, 1, -285.2, -60.2 , 0 );
setMoveKey( spep_2-3 + 78, 1, -168.8, 63.4 , 0 );
setMoveKey( spep_2-3 + 100, 1, -168.8, 63.4 , 0 );
setMoveKey( spep_2-3 + 102, 1, -175.8, 67.6 , 0 );
setMoveKey( spep_2-3 + 104, 1, -224.9, 96.4 , 0 );
setMoveKey( spep_2-3 + 106, 1, -358.1, 174.6 , 0 );
setMoveKey( spep_2-3 + 108, 1, -617.5, 327 , 0 );
setMoveKey( spep_2-3 + 111, 1, -1045.2, 578.1 , 0 );

setScaleKey( spep_2 + 0, 1, 3.63, 3.63 );
setScaleKey( spep_2-3 + 9, 1, 3.63, 3.63 );
setScaleKey( spep_2-3 + 10, 1, 3.65, 3.65 );
setScaleKey( spep_2-3 + 56, 1, 3.65, 3.65 );
setScaleKey( spep_2-3 + 58, 1, 3.27, 3.27 );
setScaleKey( spep_2-3 + 60, 1, 2.88, 2.88 );
setScaleKey( spep_2-3 + 62, 1, 2.5, 2.5 );
setScaleKey( spep_2-3 + 77, 1, 2.5, 2.5 );
setScaleKey( spep_2-3 + 78, 1, 1.16, 1.16 );
setScaleKey( spep_2-3 + 100, 1, 1.16, 1.16 );
setScaleKey( spep_2-3 + 102, 1, 1.17, 1.17 );
setScaleKey( spep_2-3 + 104, 1, 1.25, 1.25 );
setScaleKey( spep_2-3 + 106, 1, 1.47, 1.47 );
setScaleKey( spep_2-3 + 108, 1, 1.91, 1.91 );
setScaleKey( spep_2-3 + 111, 1, 2.62, 2.62 );

setRotateKey( spep_2 + 0, 1, -33.9 );
setRotateKey( spep_2-3 + 9, 1, -33.9 );
setRotateKey( spep_2-3 + 10, 1, -31.5 );
setRotateKey( spep_2-3 + 12, 1, -31.5 );
setRotateKey( spep_2-3 + 14, 1, -2.8 );
setRotateKey( spep_2-3 + 20, 1, -2.8 );
setRotateKey( spep_2-3 + 22, 1, -2.5 );
setRotateKey( spep_2-3 + 24, 1, -2.2 );
setRotateKey( spep_2-3 + 26, 1, -1.8 );
setRotateKey( spep_2-3 + 28, 1, -1.5 );
setRotateKey( spep_2-3 + 30, 1, -1.2 );
setRotateKey( spep_2-3 + 32, 1, -0.9 );
setRotateKey( spep_2-3 + 34, 1, -0.6 );
setRotateKey( spep_2-3 + 36, 1, -0.2 );
setRotateKey( spep_2-3 + 38, 1, 0.1 );
setRotateKey( spep_2-3 + 40, 1, 0.4 );
setRotateKey( spep_2-3 + 42, 1, 0.7 );
setRotateKey( spep_2-3 + 44, 1, 1.1 );
setRotateKey( spep_2-3 + 46, 1, 1.4 );
setRotateKey( spep_2-3 + 48, 1, 1.7 );
setRotateKey( spep_2-3 + 50, 1, 2 );
setRotateKey( spep_2-3 + 52, 1, 2.4 );
setRotateKey( spep_2-3 + 54, 1, 2.7 );
setRotateKey( spep_2-3 + 56, 1, 3 );
setRotateKey( spep_2-3 + 58, 1, 5 );
setRotateKey( spep_2-3 + 60, 1, 7 );
setRotateKey( spep_2-3 + 62, 1, 9 );
setRotateKey( spep_2-3 + 77, 1, 9 );
setRotateKey( spep_2-3 + 78, 1, 70.3 );
setRotateKey( spep_2-3 + 100, 1, 70.3 );
setRotateKey( spep_2-3 + 102, 1, 70.4 );
setRotateKey( spep_2-3 + 104, 1, 70.6 );
setRotateKey( spep_2-3 + 106, 1, 71.3 );
setRotateKey( spep_2-3 + 108, 1, 72.7 );
setRotateKey( spep_2-3 + 111, 1, 75 );

--敵の動き
setDisp( spep_2-3 + 190, 1, 1 );
setDisp( spep_2-3 + 224, 1, 0 );
changeAnime( spep_2-3 + 190, 1, 6 );
changeAnime( spep_2-3 + 218, 1, 8 );

a=20;
b=24;

setMoveKey( spep_2-3 + 190, 1, 238.8+a, -24+b , 0 );
setMoveKey( spep_2-3 + 191, 1, 238.8+a, -24+b , 0 );
setMoveKey( spep_2-3 + 192, 1, 238.8-a, -24+b , 0 );
setMoveKey( spep_2-3 + 193, 1, 238.8-a, -24+b , 0 );
setMoveKey( spep_2-3 + 194, 1, 244.3+a+30, -24.4-10 , 0 );
setMoveKey( spep_2-3 + 195, 1, 244.3+a+30, -24.4-10 , 0 );
setMoveKey( spep_2-3 + 196, 1, 246.1+a, -19-10 , 0 );
setMoveKey( spep_2-3 + 197, 1, 246.1+a, -19-10 , 0 );
setMoveKey( spep_2-3 + 198, 1, 247.9+10, -13.6-10 , 0 );
setMoveKey( spep_2-3 + 199, 1, 247.9+10, -13.6-10 , 0 );

setMoveKey( spep_2-3 + 200, 1, 249.7+a, -8.2-10 , 0 );
setMoveKey( spep_2-3 + 201, 1, 249.7+a, -8.2-10 , 0 );

setMoveKey( spep_2-3 + 202, 1, 251.4-10, -2.8-10 , 0 );
setMoveKey( spep_2-3 + 204, 1, 253.2+a, 2.6 , 0 );
setMoveKey( spep_2-3 + 206, 1, 255+a, 8 , 0 );
setMoveKey( spep_2-3 + 208, 1, 256.8+a, 13.3 , 0 );
setMoveKey( spep_2-3 + 210, 1, 258.5+a, 18.7 , 0 );
--setMoveKey( spep_2-3 + 212, 1, 262.2+a, 51.5 , 0 );
--setMoveKey( spep_2-3 + 214, 1, 265.2+a, 4.7, 0 );
setMoveKey( spep_2-3 + 216, 1, 272.4+a, 55.7 , 0 );
setMoveKey( spep_2-3 + 217, 1, 272.4+a, 55.7 , 0 );

setMoveKey( spep_2-3 + 218, 1, 167+10, -174.9-20 , 0 );
setMoveKey( spep_2-3 + 220, 1, 135.2+10, -342.5-20 , 0 );
setMoveKey( spep_2-3 + 222, 1, 138.7+10, -360.7-20 , 0 );
setMoveKey( spep_2-3 + 224, 1, 131.8+10, -797.8-20 , 0 );

setScaleKey( spep_2-3 + 190, 1, 2.7, 2.7 );
setScaleKey( spep_2-3 + 224, 1, 2.7, 2.7 );

setRotateKey( spep_2-3 + 190, 1, 0 );
--setRotateKey( spep_2-3 + 192, 1, 0 );
setRotateKey( spep_2-3 + 214, 1, -32 );
setRotateKey( spep_2-3 + 217, 1, -33 );
setRotateKey( spep_2-3 + 218, 1, -100 );
setRotateKey( spep_2-3 + 224, 1, -100 );

--敵の動き
setDisp( spep_2-3 + 308, 1, 1 );
setDisp( spep_2-1 + 314, 1, 0 );
changeAnime( spep_2-3 + 308, 1, 7 );

setMoveKey( spep_2-3 + 308, 1, -184.5, 229.5 , 0 );
setMoveKey( spep_2-3 + 310, 1, -184.5, 129.2 , 0 );
setMoveKey( spep_2-3 + 312, 1, -184.5, 106.1 , 0 );
setMoveKey( spep_2-1 + 314, 1, -184.5, 104.5 , 0 );

setScaleKey( spep_2-3 + 308, 1, 1.6, 1.6 );
setScaleKey( spep_2-1 + 314, 1, 1.6, 1.6 );

setRotateKey( spep_2-3 + 308, 1, -113 );
setRotateKey( spep_2-1 + 314, 1, -113 );

--敵の動き
setDisp( spep_2-3 + 332, 1, 1 );
setDisp( spep_2-3 + 390, 1, 0 );
changeAnime( spep_2-3 + 332, 1, 7 );
changeAnime( spep_2-3 + 356, 1, 105 );

setMoveKey( spep_2-3 + 332, 1, -346.4, -821.2 , 0 );
setMoveKey( spep_2-3 + 334, 1, -346.4, -841.2 , 0 );
setMoveKey( spep_2-3 + 336, 1, -346.4, -831.2 , 0 );
setMoveKey( spep_2-3 + 338, 1, -346.4, -761.2 , 0 );
setMoveKey( spep_2-3 + 340, 1, -346.4, -741.2 , 0 );
setMoveKey( spep_2-3 + 342, 1, -346.4, -751.2 , 0 );
setMoveKey( spep_2-3 + 344, 1, -346.4, -691.2 , 0 );
setMoveKey( spep_2-3 + 346, 1, -346.4, -701.2 , 0 );
setMoveKey( spep_2-3 + 348, 1, -346.4, -691.2 , 0 );
setMoveKey( spep_2-3 + 350, 1, -364.4, -641.2 , 0 );
setMoveKey( spep_2-3 + 352, 1, -209.6, -421.7 , 0 );
setMoveKey( spep_2-3 + 354, 1, -55.3, -202.4 , 0 );
setMoveKey( spep_2-3 + 355, 1, -55.3, -202.4 , 0 );

setMoveKey( spep_2-3 + 356, 1, -10.9, 12.9 , 0 );
setMoveKey( spep_2-3 + 358, 1, -5.5, 133.6 , 0 );
setMoveKey( spep_2-3 + 360, 1, -4.6, 154.3 , 0 );
setMoveKey( spep_2-3 + 362, 1, -4, 167.1 , 0 );
setMoveKey( spep_2-3 + 364, 1, -3.6, 175 , 0 );
setMoveKey( spep_2-3 + 366, 1, -3.4, 179.4 , 0 );
setMoveKey( spep_2-3 + 368, 1, -3.3, 182.2 , 0 );
setMoveKey( spep_2-3 + 370, 1, -3.2, 184 , 0 );
setMoveKey( spep_2-3 + 372, 1, -3.2, 185.2 , 0 );
setMoveKey( spep_2-3 + 374, 1, -3.1, 186 , 0 );
setMoveKey( spep_2-3 + 376, 1, -3.1, 186.7 , 0 );
setMoveKey( spep_2-3 + 378, 1, -3.1, 187.1 , 0 );
setMoveKey( spep_2-3 + 380, 1, -3.1, 187.5 , 0 );
setMoveKey( spep_2-3 + 382, 1, -3, 187.7 , 0 );
setMoveKey( spep_2-3 + 384, 1, -3, 187.9 , 0 );
setMoveKey( spep_2-3 + 386, 1, -3, 188.1 , 0 );
setMoveKey( spep_2-3 + 388, 1, -3, 188.2 , 0 );
setMoveKey( spep_2-3 + 390, 1, -3, 188.2 , 0 );

setScaleKey( spep_2-3 + 332, 1, 6.6, 6.6 );
setScaleKey( spep_2-3 + 350, 1, 6.6, 6.6 );
setScaleKey( spep_2-3 + 352, 1, 4.45, 4.45 );
setScaleKey( spep_2-3 + 354, 1, 2.3, 2.3 );
setScaleKey( spep_2-3 + 355, 1, 2.3, 2.3 );

setScaleKey( spep_2-3 + 356, 1, 4.28, 4.28 );
setScaleKey( spep_2-3 + 358, 1, 1.37, 1.37 );
setScaleKey( spep_2-3 + 360, 1, 0.87, 0.87 );
setScaleKey( spep_2-3 + 362, 1, 0.56, 0.56 );
setScaleKey( spep_2-3 + 364, 1, 0.37, 0.37 );
setScaleKey( spep_2-3 + 366, 1, 0.27, 0.27 );
setScaleKey( spep_2-3 + 368, 1, 0.2, 0.2 );
setScaleKey( spep_2-3 + 370, 1, 0.16, 0.16 );
setScaleKey( spep_2-3 + 372, 1, 0.13, 0.13 );
setScaleKey( spep_2-3 + 374, 1, 0.11, 0.11 );
setScaleKey( spep_2-3 + 376, 1, 0.09, 0.09 );
setScaleKey( spep_2-3 + 378, 1, 0.08, 0.08 );
setScaleKey( spep_2-3 + 380, 1, 0.07, 0.07 );
setScaleKey( spep_2-3 + 382, 1, 0.07, 0.07 );
setScaleKey( spep_2-3 + 384, 1, 0.06, 0.06 );
setScaleKey( spep_2-3 + 388, 1, 0.06, 0.06 );
setScaleKey( spep_2-3 + 390, 1, 0.05, 0.05 );

setRotateKey( spep_2-3 + 332, 1, 149 );
setRotateKey( spep_2-3 + 350, 1, 149 );
setRotateKey( spep_2-3 + 352, 1, 138 );
setRotateKey( spep_2-3 + 354, 1, 127 );
setRotateKey( spep_2-3 + 355, 1, 127 );

setRotateKey( spep_2-3 + 356, 1, 10 );
setRotateKey( spep_2-3 + 390, 1, 10 );

--白フェード
entryFade( spep_2 + 382, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--SE
setSeVolume( spep_2 + 1, 1027, 0 );
setSeVolume( spep_2 + 2, 1027, 11.29 );
setSeVolume( spep_2 + 3, 1027, 22.57 );
setSeVolume( spep_2 + 4, 1027, 33.86 );
setSeVolume( spep_2 + 5, 1027, 45.14 );
setSeVolume( spep_2 + 6, 1027, 56.43 );
setSeVolume( spep_2 + 7, 1027, 67.71 );
setSeVolume( spep_2 + 8, 1027, 79 );

playSe( spep_2 + 0, 1003 );
setSeVolume( spep_2 + 0, 1003, 79 );

--パンチ
playSe( spep_2 -12 + 20, 1009 );
playSe( spep_2 -12 + 22, 1110 );

--瞬間移動
playSe( spep_2 -20 + 60, 1109 );
setSeVolume( spep_2 -20 + 60, 1109, 40 );
se_1027 = playSe( spep_2 -20 + 60, 1027 );
setSeVolume( spep_2 -20 + 60, 1027, 0 );
setSeVolume( spep_2 -20 + 68, 1027, 0 );
setSeVolume( spep_2 -20 + 69, 1027, 25 );
setSeVolume( spep_2 -20 + 70, 1027, 50 );
setSeVolume( spep_2 -20 + 71, 1027, 75 );
setSeVolume( spep_2 -20 + 72, 1027, 100 );
se_1048 = playSe( spep_2 -20 + 62, 1048 );
setSeVolume( spep_2 -20 + 62, 1048, 71 );
playSe( spep_2 -20 + 63, 1032 );
setSeVolume( spep_2 -20 + 63, 1032, 79 );
playSe( spep_2 -20 + 64, 43 );
setSeVolume( spep_2 -20 + 64, 43, 0 );
setSeVolume( spep_2 -20 + 65, 43, 11.29 );
setSeVolume( spep_2 -20 + 66, 43, 22.57 );
setSeVolume( spep_2 -20 + 67, 43, 33.86 );
setSeVolume( spep_2 -20 + 68, 43, 45.14 );
setSeVolume( spep_2 -20 + 69, 43, 56.43 );
setSeVolume( spep_2 -20 + 70, 43, 67.71 );
setSeVolume( spep_2 -20 + 71, 43, 79 );
se_1048 = playSe( spep_2 -20 + 66, 1048 );
setSeVolume( spep_2 -20 + 66, 1048, 71 );
playSe( spep_2 -20 + 67, 1003 );
setSeVolume( spep_2 -20 + 67, 1003, 79 );

--けり
playSe( spep_2 -12 + 88, 1010 );
setSeVolume( spep_2 -12 + 88, 1010, 89 );
playSe( spep_2 -12 + 88, 1001 );
setSeVolume( spep_2 -12 + 88, 1001, 63 );
playSe( spep_2 -12 + 91, 1187 );
setSeVolume( spep_2 -12 + 91, 1187, 79 );

--上からダッシュ
se_1183 = playSe( spep_2 + 108, 1183 );
setSeVolume( spep_2 + 108, 1183, 112 );
playSe( spep_2 + 133, 9 );
se_1182 = playSe( spep_2 + 133, 1182 );
setSeVolume( spep_2 + 133, 1182, 224 );
se_1116 = playSe( spep_2 + 133, 1116 );
playSe( spep_2 + 158, 1072 );

--叩きつける
playSe( spep_2 -10 + 200, 1123 );
setSeVolume( spep_2 -10 + 200, 1123, 79 );
playSe( spep_2 -10 + 202, 1027 );

--瞬間移動
playSe( spep_2 -10 + 272, 1109 );

--蹴り飛ばす
playSe( spep_2 -10 + 319, 1004 );
playSe( spep_2 -10 + 325, 1120 );
playSe( spep_2 -10 + 325, 1110 );
setSeVolume( spep_2 -10 + 325, 1110, 79 );

--敵が飛んでいく
se_1183 = playSe( spep_2 + 348, 1183 );
se_1121 = playSe( spep_2 + 348, 1121 );
setSeVolume( spep_2 + 348, 1121, 79 );

stopSe( spep_2 + 11, se_1027, 16 );
stopSe( spep_2 + 1, se_1048, 0 );
stopSe( spep_2 + 5, se_1048, 0 );
stopSe( spep_2 + 78, se_1027, 16 );
stopSe( spep_2 + 68, se_1048, 0 );
stopSe( spep_2 + 72, se_1048, 0 );
stopSe( spep_2 + 210, se_1183, 0 );
stopSe( spep_2 + 141, se_1182, 10 );
stopSe( spep_2 + 184, se_1116, 26 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 393, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 390;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 86, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

stopSe( spep_3 + 14, se_1183, 0 );
stopSe( spep_3 + 14, se_1121, 0 );

--白フェード
--entryFade( spep_3 + 80, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 84;

------------------------------------------------------
-- バス正面に手をかざして気弾〜フィニッシュトアップ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0,  finish_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 306,  finish_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0,  finish_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 306,  finish_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0,  finish_f, 0 );
setEffRotateKey( spep_4 + 306,  finish_f, 0 );
setEffAlphaKey( spep_4 + 0,  finish_f, 255 );
setEffAlphaKey( spep_4 + 306,  finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_4 + 0, SP_10, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0,  finish_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 306,  finish_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0,  finish_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 306,  finish_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0,  finish_b, 0 );
setEffRotateKey( spep_4 + 306,  finish_b, 0 );
setEffAlphaKey( spep_4 + 0,  finish_b, 255 );
setEffAlphaKey( spep_4 + 306,  finish_b, 255 );

--敵の動き
setDisp( spep_4-3 + 150, 1, 1 );
setDisp( spep_4-3 + 176, 1, 0 );
changeAnime( spep_4-3 + 150, 1, 6 );

setMoveKey( spep_4-3 + 150, 1, 81.9, -71.9 , 0 );
setMoveKey( spep_4-3 + 152, 1, 76.8, -58.7 , 0 );
setMoveKey( spep_4-3 + 154, 1, 63.7, -45.5 , 0 );
setMoveKey( spep_4-3 + 156, 1, 62.6, -44.2 , 0 );
setMoveKey( spep_4-3 + 158, 1, 45.5, -35 , 0 );
setMoveKey( spep_4-3 + 160, 1, 40.5, -21.8 , 0 );
setMoveKey( spep_4-3 + 162, 1, 27.4, -8.5 , 0 );
setMoveKey( spep_4-3 + 164, 1, 26.3, -7.3 , 0 );
setMoveKey( spep_4-3 + 166, 1, 9.2, 1.9 , 0 );
setMoveKey( spep_4-3 + 168, 1, 4.2, 15.2 , 0 );
setMoveKey( spep_4-3 + 170, 1, -8.9, 28.4 , 0 );
setMoveKey( spep_4-3 + 172, 1, -10, 29.6 , 0 );
setMoveKey( spep_4-3 + 174, 1, -27.1, 38.9 , 0 );
setMoveKey( spep_4-3 + 176, 1, -28.1, 56.1 , 0 );

setScaleKey( spep_4-3 + 150, 1, 0.5, 0.5 );
setScaleKey( spep_4-3 + 176, 1, 0.5, 0.5 );

setRotateKey( spep_4-3 + 150, 1, 40 );
setRotateKey( spep_4-3 + 176, 1, 40 );

--SE
se_1191 = playSe( spep_4 -20 + 0, 1191 );
setSeVolume( spep_4 -20 + 0, 1191, 0 );
setSeVolume( spep_4 -20 + 47, 1191, 0 );
setSeVolume( spep_4 -20 + 48, 1191, 19.75 );
setSeVolume( spep_4 -20 + 49, 1191, 39.50 );
setSeVolume( spep_4 -20 + 50, 1191, 59.25 );
setSeVolume( spep_4 -20 + 51, 1191, 79 );
playSe( spep_4 -20 + 34, 1003 );
playSe( spep_4 -20 + 35, 1154 );
setSeVolume( spep_4 -20 + 35, 1154, 0 );
setSeVolume( spep_4 -20 + 44, 1154, 0 );
setSeVolume( spep_4 -20 + 45, 1154, 50 );
setSeVolume( spep_4 -20 + 46, 1154, 100 );
se_1184 = playSe( spep_4 -20 + 40, 1184 );
setSeVolume( spep_4 -20 + 40, 1184, 79 );
se_0017 = playSe( spep_4 -20 + 40, 17 );
setSeVolume( spep_4 -20 + 40, 17, 63 );
playSe( spep_4 -20 + 119, 1133 );
playSe( spep_4 -20 + 119, 1027 );
setSeVolume( spep_4 -20 + 119, 1027, 79 );
se_1179 = playSe( spep_4 -20 + 119, 1179 );
se_1212 = playSe( spep_4 -20 + 119, 1212 );
setSeVolume( spep_4 -20 + 119, 1212, 0 );
setSeVolume( spep_4 -20 + 141, 1212, 0 );
setSeVolume( spep_4 -20 + 142, 1212, 4.85 );
setSeVolume( spep_4 -20 + 143, 1212, 9.69 );
setSeVolume( spep_4 -20 + 144, 1212, 14.54 );
setSeVolume( spep_4 -20 + 145, 1212, 19.38 );
setSeVolume( spep_4 -20 + 146, 1212, 24.23 );
setSeVolume( spep_4 -20 + 147, 1212, 29.08 );
setSeVolume( spep_4 -20 + 148, 1212, 33.92 );
setSeVolume( spep_4 -20 + 149, 1212, 38.77 );
setSeVolume( spep_4 -20 + 150, 1212, 43.62 );
setSeVolume( spep_4 -20 + 151, 1212, 48.46 );
setSeVolume( spep_4 -20 + 152, 1212, 53.31 );
setSeVolume( spep_4 -20 + 153, 1212, 58.15 );
setSeVolume( spep_4 -20 + 154, 1212, 63 );
se_1161 = playSe( spep_4 -20 + 134, 1161 );
setSeVolume( spep_4 -20 + 134, 1161, 63 );
playSe( spep_4 -20 + 202, 1011 );
playSe( spep_4 -20 + 202, 1159 );
playSe( spep_4 -20 + 204, 1025 );

stopSe( spep_4 -20 + 131, se_1191, 0 );
stopSe( spep_4 -20 + 71, se_1184, 31 );
stopSe( spep_4 -20 + 123, se_0017, 0 );
stopSe( spep_4 -20 + 195, se_1179, 0 );
stopSe( spep_4 -20 + 216, se_1212, 31 );
stopSe( spep_4 -20 + 222, se_1161, 0 );

--終わり
dealDamage( spep_4 + 174 );
endPhase( spep_4 + 290 );
end