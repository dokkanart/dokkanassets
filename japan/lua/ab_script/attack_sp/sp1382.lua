--ベジット_ベジットコンビネーション

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
SP_01 = 154808; --手招きして挑発
SP_02 = 154809; --敵突進〜かわして敵に接近
SP_03 = 154810; --キック〜乱打〜ドロップキック
SP_04 = 154811; --キック〜乱打〜ドロップキック
SP_05 = 154812; --キック〜乱打〜ドロップキック
SP_06 = 154813; --膝蹴りで敵を叩き落とす
SP_07 = 154814; --膝蹴りで敵を叩き落とす

--敵側

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
-- 手招きして挑発(80F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tyouhatsu = entryEffectLife( spep_0 + 0, SP_01, 80, 0x100, -1, 0, 0, 0 );  --手招きして挑発(ef_001)
setEffMoveKey( spep_0 + 0, tyouhatsu, 0, 0 , 0 );
setEffMoveKey( spep_0 + 80, tyouhatsu, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tyouhatsu, 1.0, 1.0 );
setEffScaleKey( spep_0 + 80, tyouhatsu, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tyouhatsu, 0 );
setEffRotateKey( spep_0 + 80, tyouhatsu, 0 );
setEffAlphaKey( spep_0 + 0, tyouhatsu, 255 );
setEffAlphaKey( spep_0 + 80, tyouhatsu, 255 );

spep_x = spep_0 + 2;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 82, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

--手招き
playSe( spep_0 + 24, 1189 ); 
setSeVolume( spep_0 + 24, 1189, 89 );
playSe( spep_0 + 26, 1048 ); 
setSeVolume( spep_0 + 26, 1048, 66 );
playSe( spep_0 + 51, 1189 ); 
setSeVolume( spep_0 + 51, 1189, 73 );
playSe( spep_0 + 53, 1048 ); 
setSeVolume( spep_0 + 53, 1048, 66 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 80;

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

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;

------------------------------------------------------
-- 敵突進〜かわして敵に接近(116F)
------------------------------------------------------

-- ** エフェクト等 ** --
tosshin_f = entryEffectLife( spep_2 + 0, SP_02, 116, 0x80, -1, 0, 0, 0 );  --敵突進〜かわして敵に接近(ef_002)
setEffMoveKey( spep_2 + 0, tosshin_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 116, tosshin_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tosshin_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 116, tosshin_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tosshin_f, 0 );
setEffRotateKey( spep_2 + 116, tosshin_f, 0 );
setEffAlphaKey( spep_2 + 0, tosshin_f, 255 );
setEffAlphaKey( spep_2 + 116, tosshin_f, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 32, 1, 0 );
setDisp( spep_2 -3 + 38, 1, 1 );
setDisp( spep_2 + 116, 1, 0 );
changeAnime( spep_2 + 0, 1, 116 );
changeAnime( spep_2 -3 + 38, 1, 103 );
changeAnime( spep_2 -3 + 44, 1, 111 );
changeAnime( spep_2 -3 + 45, 1, 111 );
changeAnime( spep_2 -3 + 46, 1, 111 );
changeAnime( spep_2 -3 + 47, 1, 111 );
changeAnime( spep_2 -3 + 48, 1, 109 );
changeAnime( spep_2 -3 + 108, 1, 103 );
changeAnime( spep_2 -3 + 110, 1, 100 );
changeAnime( spep_2 -3 + 112, 1, 1 );
changeAnime( spep_2 -3 + 114, 1, 0 );

setMoveKey( spep_2 + 0, 1, -4.6, -7.9 , 0 );
setMoveKey( spep_2 -3 + 4, 1, -4.6, -8 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -4.5, -8 , 0 );
setMoveKey( spep_2 -3 + 8, 1, -4.5, -8.2 , 0 );
setMoveKey( spep_2 -3 + 10, 1, -4.4, -8.7 , 0 );
setMoveKey( spep_2 -3 + 12, 1, -4.1, -9.9 , 0 );
setMoveKey( spep_2 -3 + 14, 1, -3.6, -12.2 , 0 );
setMoveKey( spep_2 -3 + 16, 1, -2.7, -16.3 , 0 );
setMoveKey( spep_2 -3 + 18, 1, -1, -23.1 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 1.7, -34.2 , 0 );
setMoveKey( spep_2 -3 + 22, 1, -0.7, -57.6 , 0 );
setMoveKey( spep_2 -3 + 24, 1, -3.1, -81.1 , 0 );
setMoveKey( spep_2 -3 + 26, 1, -5.5, -104.6 , 0 );
setMoveKey( spep_2 -3 + 28, 1, -7.8, -128.2 , 0 );
setMoveKey( spep_2 -3 + 31, 1, -10.1, -151.9 , 0 );
setMoveKey( spep_2 -3 + 32, 1, -10.1, -151.9 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 323.1, -116.7 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 323.1, -116.7 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 147.1, -116.7 , 0 );
setMoveKey( spep_2 -3 + 43, 1, 147.1, -116.7 , 0 );
setMoveKey( spep_2 -3 + 44, 1, -15, -113.1 , 0 );
setMoveKey( spep_2 -3 + 47, 1, -15, -113.1 , 0 );
setMoveKey( spep_2 -3 + 48, 1, -204.8, -117 , 0 );
setMoveKey( spep_2 -3 + 50, 1, -207.6, -117.2 , 0 );
setMoveKey( spep_2 -3 + 52, 1, -210.4, -117.3 , 0 );
setMoveKey( spep_2 -3 + 54, 1, -213.2, -117.4 , 0 );
setMoveKey( spep_2 -3 + 56, 1, -216, -117.6 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -218.8, -117.7 , 0 );
setMoveKey( spep_2 -3 + 60, 1, -221.6, -117.8 , 0 );
setMoveKey( spep_2 -3 + 62, 1, -224.4, -118 , 0 );
setMoveKey( spep_2 -3 + 64, 1, -227.2, -118.1 , 0 );
setMoveKey( spep_2 -3 + 66, 1, -230, -118.2 , 0 );
setMoveKey( spep_2 -3 + 68, 1, -232.8, -118.4 , 0 );
setMoveKey( spep_2 -3 + 70, 1, -235.7, -118.5 , 0 );
setMoveKey( spep_2 -3 + 72, 1, -238.5, -118.6 , 0 );
setMoveKey( spep_2 -3 + 74, 1, -241.3, -118.8 , 0 );
setMoveKey( spep_2 -3 + 76, 1, -244.1, -118.9 , 0 );
setMoveKey( spep_2 -3 + 78, 1, -246.9, -119 , 0 );
setMoveKey( spep_2 -3 + 80, 1, -249.7, -119.2 , 0 );
setMoveKey( spep_2 -3 + 82, 1, -252.5, -119.3 , 0 );
setMoveKey( spep_2 -3 + 84, 1, -255.3, -119.4 , 0 );
setMoveKey( spep_2 -3 + 86, 1, -258.1, -119.6 , 0 );
setMoveKey( spep_2 -3 + 88, 1, -260.9, -119.7 , 0 );
setMoveKey( spep_2 -3 + 90, 1, -263.7, -119.8 , 0 );
setMoveKey( spep_2 -3 + 92, 1, -266.5, -120 , 0 );
setMoveKey( spep_2 -3 + 94, 1, -269.3, -120.1 , 0 );
setMoveKey( spep_2 -3 + 96, 1, -272.1, -120.2 , 0 );
setMoveKey( spep_2 -3 + 98, 1, -274.9, -120.4 , 0 );
setMoveKey( spep_2 -3 + 100, 1, -277.7, -120.5 , 0 );
setMoveKey( spep_2 -3 + 102, 1, -280.5, -120.6 , 0 );
setMoveKey( spep_2 -3 + 104, 1, -283.3, -120.8 , 0 );
setMoveKey( spep_2 -3 + 106, 1, -286.1, -120.9 , 0 );
setMoveKey( spep_2 -3 + 107, 1, -286.1, -120.9 , 0 );
setMoveKey( spep_2 -3 + 108, 1, -288.9, -121 , 0 );
setMoveKey( spep_2 -3 + 109, 1, -288.9, -121 , 0 );
setMoveKey( spep_2 -3 + 110, 1, -288.9, -131 , 0 );
setMoveKey( spep_2 -3 + 111, 1, -288.9, -131 , 0 );
setMoveKey( spep_2 -3 + 112, 1, -276.8, -120.9 , 0 );
setMoveKey( spep_2 -3 + 113, 1, -276.8, -120.9 , 0 );
setMoveKey( spep_2 -3 + 114, 1, -260.8, -119.1 , 0 );
setMoveKey( spep_2 -3 + 116, 1, -258.8, -119.1 , 0 );
setMoveKey( spep_2 -3 + 118, 1, -256.8, -119.1 , 0 );
setMoveKey( spep_2 + 116, 1, -256.8, -119.1 , 0 );

setScaleKey( spep_2 + 0, 1, 0.4, 0.4 );
setScaleKey( spep_2 -3 + 6, 1, 0.4, 0.4 );
setScaleKey( spep_2 -3 + 8, 1, 0.41, 0.41 );
setScaleKey( spep_2 -3 + 10, 1, 0.43, 0.43 );
setScaleKey( spep_2 -3 + 12, 1, 0.47, 0.47 );
setScaleKey( spep_2 -3 + 14, 1, 0.55, 0.55 );
setScaleKey( spep_2 -3 + 16, 1, 0.68, 0.68 );
setScaleKey( spep_2 -3 + 18, 1, 0.91, 0.91 );
setScaleKey( spep_2 -3 + 20, 1, 1.26, 1.26 );
setScaleKey( spep_2 -3 + 22, 1, 2.07, 2.07 );
setScaleKey( spep_2 -3 + 24, 1, 2.87, 2.87 );
setScaleKey( spep_2 -3 + 26, 1, 3.68, 3.68 );
setScaleKey( spep_2 -3 + 28, 1, 4.48, 4.48 );
setScaleKey( spep_2 -3 + 31, 1, 5.29, 5.29 );
setScaleKey( spep_2 -3 + 32, 1, 5.29, 5.29 );
setScaleKey( spep_2 -3 + 38, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 42, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 43, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 44, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 47, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 48, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 107, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 108, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 109, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 110, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 111, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 112, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 113, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 114, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 116, 1, 0.66, 0.66 );

setRotateKey( spep_2 + 0, 1, -45.7 );
setRotateKey( spep_2 -3 + 6, 1, -45.7 );
setRotateKey( spep_2 -3 + 8, 1, -45.5 );
setRotateKey( spep_2 -3 + 10, 1, -45.1 );
setRotateKey( spep_2 -3 + 12, 1, -44.1 );
setRotateKey( spep_2 -3 + 14, 1, -42.3 );
setRotateKey( spep_2 -3 + 16, 1, -39.1 );
setRotateKey( spep_2 -3 + 18, 1, -33.8 );
setRotateKey( spep_2 -3 + 20, 1, -25.6 );
setRotateKey( spep_2 -3 + 22, 1, -24.9 );
setRotateKey( spep_2 -3 + 24, 1, -24.2 );
setRotateKey( spep_2 -3 + 26, 1, -23.4 );
setRotateKey( spep_2 -3 + 28, 1, -22.7 );
setRotateKey( spep_2 -3 + 31, 1, -22 );
setRotateKey( spep_2 -3 + 32, 1, -22 );
setRotateKey( spep_2 -3 + 38, 1, 2.4 );
setRotateKey( spep_2 -3 + 42, 1, 2.4 );
setRotateKey( spep_2 -3 + 43, 1, 2.4 );
setRotateKey( spep_2 -3 + 44, 1, 2.4 );
setRotateKey( spep_2 -3 + 47, 1, 2.4 );
setRotateKey( spep_2 -3 + 48, 1, -13.8 );
setRotateKey( spep_2 -3 + 50, 1, -13.9 );
setRotateKey( spep_2 -3 + 52, 1, -14 );
setRotateKey( spep_2 -3 + 54, 1, -14.1 );
setRotateKey( spep_2 -3 + 56, 1, -14.2 );
setRotateKey( spep_2 -3 + 58, 1, -14.3 );
setRotateKey( spep_2 -3 + 60, 1, -14.4 );
setRotateKey( spep_2 -3 + 62, 1, -14.5 );
setRotateKey( spep_2 -3 + 64, 1, -14.7 );
setRotateKey( spep_2 -3 + 66, 1, -14.8 );
setRotateKey( spep_2 -3 + 68, 1, -14.9 );
setRotateKey( spep_2 -3 + 70, 1, -15 );
setRotateKey( spep_2 -3 + 72, 1, -15.1 );
setRotateKey( spep_2 -3 + 74, 1, -15.2 );
setRotateKey( spep_2 -3 + 76, 1, -15.3 );
setRotateKey( spep_2 -3 + 78, 1, -15.4 );
setRotateKey( spep_2 -3 + 80, 1, -15.5 );
setRotateKey( spep_2 -3 + 82, 1, -15.6 );
setRotateKey( spep_2 -3 + 84, 1, -15.7 );
setRotateKey( spep_2 -3 + 86, 1, -15.8 );
setRotateKey( spep_2 -3 + 88, 1, -15.9 );
setRotateKey( spep_2 -3 + 90, 1, -16 );
setRotateKey( spep_2 -3 + 92, 1, -16.1 );
setRotateKey( spep_2 -3 + 94, 1, -16.3 );
setRotateKey( spep_2 -3 + 96, 1, -16.4 );
setRotateKey( spep_2 -3 + 98, 1, -16.5 );
setRotateKey( spep_2 -3 + 100, 1, -16.6 );
setRotateKey( spep_2 -3 + 102, 1, -16.7 );
setRotateKey( spep_2 -3 + 104, 1, -16.8 );
setRotateKey( spep_2 -3 + 106, 1, -16.9 );
setRotateKey( spep_2 -3 + 107, 1, -16.9 );
setRotateKey( spep_2 -3 + 108, 1, -17 );
setRotateKey( spep_2 -3 + 109, 1, -17 );
setRotateKey( spep_2 -3 + 110, 1, -17 );
setRotateKey( spep_2 -3 + 111, 1, -17 );
setRotateKey( spep_2 -3 + 112, 1, -20.7 );
setRotateKey( spep_2 -3 + 113, 1, -20.7 );
setRotateKey( spep_2 -3 + 114, 1, -11.5 );
setRotateKey( spep_2 + 116, 1, -11.5 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 356, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--敵が向かってくる
SE0 = playSe( spep_2 + 0, 1116 );
setSeVolume( spep_2 + 0, 1116, 110 );
setSeVolume( spep_2 + 25, 1116, 98 );
setSeVolume( spep_2 + 28, 1116, 86 );
setSeVolume( spep_2 + 32, 1116, 78 );
setSeVolume( spep_2 + 36, 1116, 60 );
setSeVolume( spep_2 + 40, 1116, 48 );
setSeVolume( spep_2 + 44, 1116, 32 );
setSeVolume( spep_2 + 48, 1116, 10 );
setSeVolume( spep_2 + 50, 1116, 0 );
stopSe( spep_2 + 50, SE0, 0 );

playSe( spep_2 + 3, 44 );
setSeVolume( spep_2 + 3, 44, 73 );

--避ける
playSe( spep_2 + 40, 1004 );
setSeVolume( spep_2 + 40, 1004, 110 );
playSe( spep_2 + 44, 1003 );
setSeVolume( spep_2 + 44, 1003, 110 );

--敵に蹴り向かう
SE1 = playSe( spep_2 + 65, 1183 );
setSeVolume( spep_2 + 65, 1183, 0 );

SE2 = playSe( spep_2 + 101, 1072 );
setSeVolume( spep_2 + 101, 1072, 0 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 116;

------------------------------------------------------
-- キック〜乱打〜ドロップキック(402F)
------------------------------------------------------
x = 2;
-- ** エフェクト等 ** --
kick_f1 = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0, 200 );  --キック〜乱打〜ドロップキック(ef_003)
setEffMoveKey( spep_3 + 0, kick_f1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 402, kick_f1, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kick_f1, 1.0, 1.0 );
setEffScaleKey( spep_3 + 402, kick_f1, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_f1, 0 );
setEffRotateKey( spep_3 + 402, kick_f1, 0 );
setEffAlphaKey( spep_3 + 0, kick_f1, 255 );
setEffAlphaKey( spep_3 + 401 -x, kick_f1, 255 );
setEffAlphaKey( spep_3 + 402 -x, kick_f1, 0 );

kick_f2 = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0, 100 );  --キック〜乱打〜ドロップキック(ef_004)
setEffMoveKey( spep_3 + 0, kick_f2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 402, kick_f2, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kick_f2, 1.0, 1.0 );
setEffScaleKey( spep_3 + 402, kick_f2, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_f2, 0 );
setEffRotateKey( spep_3 + 402, kick_f2, 0 );
setEffAlphaKey( spep_3 + 0, kick_f2, 255 );
setEffAlphaKey( spep_3 + 401, kick_f2, 255 );
setEffAlphaKey( spep_3 + 402, kick_f2, 0 );

kick_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --キック〜乱打〜ドロップキック(ef_005)
setEffMoveKey( spep_3 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 402, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 402, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_b, 0 );
setEffRotateKey( spep_3 + 402, kick_b, 0 );
setEffAlphaKey( spep_3 + 0, kick_b, 255 );
setEffAlphaKey( spep_3 + 402, kick_b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 404, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--敵に蹴り向かう
setSeVolume( spep_3 + 0, 1183, 10 );
setSeVolume( spep_3 + 2, 1183, 42 );
setSeVolume( spep_3 + 4, 1183, 86 );
setSeVolume( spep_3 + 5, 1183, 151 );
setSeVolume( spep_3 + 44, 1183, 151 );
setSeVolume( spep_3 + 48, 1183, 120 );
setSeVolume( spep_3 + 52, 1183, 98 );
setSeVolume( spep_3 + 56, 1183, 74 );
setSeVolume( spep_3 + 60, 1183, 48 );
setSeVolume( spep_3 + 62, 1183, 24 );
setSeVolume( spep_3 + 64, 1183, 10 );
setSeVolume( spep_3 + 65, 1183, 0 );
stopSe(spep_3 + 65, SE1, 0 );

setSeVolume( spep_3 + 0, 1072, 10 );
setSeVolume( spep_3 + 2, 1072, 42 );
setSeVolume( spep_3 + 4, 1072, 87 );
setSeVolume( spep_3 + 6, 1072, 110 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 14; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe(SP_dodge - 12, SE1, 0 );
stopSe(SP_dodge - 12, SE2, 0 );

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
setDisp( spep_3 -3 + 32, 1, 1 );
setDisp( spep_3 -3 + 162, 1, 0 );
setDisp( spep_3 -3 + 206, 1, 1 );
setDisp( spep_3 -3 + 310, 1, 0 );
setDisp( spep_3 -3 + 340, 1, 1 );
changeAnime( spep_3 -3 + 32, 1, 0 );
changeAnime( spep_3 -3 + 42, 1, 7 );
changeAnime( spep_3 -3 + 206, 1, 106 );
changeAnime( spep_3 -3 + 210, 1, 108 );
changeAnime( spep_3 -3 + 216, 1, 107 );
changeAnime( spep_3 -3 + 222, 1, 106 );
changeAnime( spep_3 -3 + 234, 1, 108 );
changeAnime( spep_3 -3 + 240, 1, 107 );
changeAnime( spep_3 -3 + 246, 1, 106 );
changeAnime( spep_3 -3 + 258, 1, 108 );
changeAnime( spep_3 -3 + 264, 1, 107 );
changeAnime( spep_3 -3 + 270, 1, 106 );
changeAnime( spep_3 -3 + 302, 1, 108 );
changeAnime( spep_3 -3 + 340, 1, 7 );
changeAnime( spep_3 -3 + 344, 1, 5 );

setMoveKey( spep_3 -3 + 32, 1, 1, -368.1 , 0 );
setMoveKey( spep_3 -3 + 41, 1, 1, -368.1 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 66.8, -236.2 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 63.8, -207.8 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 92.3, -245.6 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 45, -249.8 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 90.6, -231.7 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 45.5, -244.5 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 62.6, -215.2 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 48.9, -227.3 , 0 );
setMoveKey( spep_3 -3 + 58, 1, -15.1, -205.3 , 0 );
setMoveKey( spep_3 -3 + 60, 1, -14.3, -206.4 , 0 );
setMoveKey( spep_3 -3 + 62, 1, -110.9, -266.7 , 0 );
setMoveKey( spep_3 -3 + 64, 1, -131.9, -284.4 , 0 );
setMoveKey( spep_3 -3 + 66, 1, -155, -279.5 , 0 );
setMoveKey( spep_3 -3 + 68, 1, -163.2, -289.1 , 0 );
setMoveKey( spep_3 -3 + 70, 1, -167.3, -297 , 0 );
setMoveKey( spep_3 -3 + 72, 1, -171.3, -288.5 , 0 );
setMoveKey( spep_3 -3 + 74, 1, -178.2, -293.5 , 0 );
setMoveKey( spep_3 -3 + 76, 1, -182.6, -294.9 , 0 );
setMoveKey( spep_3 -3 + 78, 1, -189.2, -299.6 , 0 );
setMoveKey( spep_3 -3 + 80, 1, -191.6, -300.5 , 0 );
setMoveKey( spep_3 -3 + 82, 1, -199.1, -304.2 , 0 );
setMoveKey( spep_3 -3 + 84, 1, -205.1, -307.7 , 0 );
setMoveKey( spep_3 -3 + 85, 1, -205.1, -307.7 , 0 );
setMoveKey( spep_3 -3 + 86, 1, -3.4, -111.7 , 0 );
setMoveKey( spep_3 -3 + 88, 1, -8.1, -114.8 , 0 );
setMoveKey( spep_3 -3 + 90, 1, -12.8, -117.9 , 0 );
setMoveKey( spep_3 -3 + 92, 1, -17.4, -121 , 0 );
setMoveKey( spep_3 -3 + 94, 1, -22.1, -124.1 , 0 );
setMoveKey( spep_3 -3 + 96, 1, -26.8, -127.2 , 0 );
setMoveKey( spep_3 -3 + 98, 1, -31.5, -130.3 , 0 );
setMoveKey( spep_3 -3 + 100, 1, -36.1, -133.4 , 0 );
setMoveKey( spep_3 -3 + 102, 1, -40.8, -136.5 , 0 );
setMoveKey( spep_3 -3 + 104, 1, -45.5, -139.6 , 0 );
setMoveKey( spep_3 -3 + 106, 1, -50.1, -142.7 , 0 );
setMoveKey( spep_3 -3 + 108, 1, -54.8, -145.7 , 0 );
setMoveKey( spep_3 -3 + 110, 1, -59.5, -148.8 , 0 );
setMoveKey( spep_3 -3 + 112, 1, -64.2, -151.9 , 0 );
setMoveKey( spep_3 -3 + 114, 1, -68.8, -155 , 0 );
setMoveKey( spep_3 -3 + 116, 1, -73.5, -158.1 , 0 );
setMoveKey( spep_3 -3 + 118, 1, -78.2, -161.2 , 0 );
setMoveKey( spep_3 -3 + 120, 1, -82.9, -164.3 , 0 );
setMoveKey( spep_3 -3 + 122, 1, -87.5, -167.4 , 0 );
setMoveKey( spep_3 -3 + 124, 1, -92.2, -170.5 , 0 );
setMoveKey( spep_3 -3 + 125, 1, -92.2, -170.5 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 594.5, 190.3 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 581.9, 178.9 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 570.1, 168.1 , 0 );
setMoveKey( spep_3 -3 + 132, 1, 559.1, 158.1 , 0 );
setMoveKey( spep_3 -3 + 134, 1, 548.8, 148.8 , 0 );
setMoveKey( spep_3 -3 + 136, 1, 539.3, 140.1 , 0 );
setMoveKey( spep_3 -3 + 138, 1, 530.6, 132.2 , 0 );
setMoveKey( spep_3 -3 + 140, 1, 522.6, 124.9 , 0 );
setMoveKey( spep_3 -3 + 142, 1, 515.3, 118.3 , 0 );
setMoveKey( spep_3 -3 + 144, 1, 508.9, 112.4 , 0 );
setMoveKey( spep_3 -3 + 146, 1, 503.2, 107.2 , 0 );
setMoveKey( spep_3 -3 + 148, 1, 498.2, 102.7 , 0 );
setMoveKey( spep_3 -3 + 150, 1, 494, 98.9 , 0 );
setMoveKey( spep_3 -3 + 152, 1, 490.6, 95.8 , 0 );
setMoveKey( spep_3 -3 + 154, 1, 487.9, 93.4 , 0 );
setMoveKey( spep_3 -3 + 156, 1, 486, 91.7 , 0 );
setMoveKey( spep_3 -3 + 158, 1, 484.9, 90.6 , 0 );
setMoveKey( spep_3 -3 + 160, 1, 484.5, 90.3 , 0 );
setMoveKey( spep_3 -3 + 162, 1, 484.5, 90.3 , 0 );
setMoveKey( spep_3 -3 + 206, 1, 124.6, 125.7 , 0 );
setMoveKey( spep_3 -3 + 208, 1, 124.6, 125.7 , 0 );
setMoveKey( spep_3 -3 + 209, 1, 124.6, 125.7 , 0 );
setMoveKey( spep_3 -3 + 210, 1, 142.8, 56.4 , 0 );
setMoveKey( spep_3 -3 + 212, 1, 192.6, 102.7 , 0 );
setMoveKey( spep_3 -3 + 214, 1, 195.1, 110.4 , 0 );
setMoveKey( spep_3 -3 + 215, 1, 195.1, 110.4 , 0 );
setMoveKey( spep_3 -3 + 216, 1, 148.5, -103.1 , 0 );
setMoveKey( spep_3 -3 + 218, 1, 146.4, -121.6 , 0 );
setMoveKey( spep_3 -3 + 220, 1, 155.4, -113.9 , 0 );
setMoveKey( spep_3 -3 + 221, 1, 155.4, -113.9 , 0 );
setMoveKey( spep_3 -3 + 222, 1, 120, 0.3 , 0 );
setMoveKey( spep_3 -3 + 224, 1, 117.7, 1.7 , 0 );
setMoveKey( spep_3 -3 + 226, 1, 165.1, 2.6 , 0 );
setMoveKey( spep_3 -3 + 228, 1, 129.5, 122.2 , 0 );
setMoveKey( spep_3 -3 + 230, 1, 152, 139.7 , 0 );
setMoveKey( spep_3 -3 + 232, 1, 152.8, 139.2 , 0 );
setMoveKey( spep_3 -3 + 233, 1, 152.8, 139.2 , 0 );
setMoveKey( spep_3 -3 + 234, 1, 154.2, 61.7 , 0 );
setMoveKey( spep_3 -3 + 236, 1, 193.9, 97.1 , 0 );
setMoveKey( spep_3 -3 + 238, 1, 196.9, 101.3 , 0 );
setMoveKey( spep_3 -3 + 239, 1, 196.9, 101.3 , 0 );
setMoveKey( spep_3 -3 + 240, 1, 149.1, -83.5 , 0 );
setMoveKey( spep_3 -3 + 242, 1, 149, -125.5 , 0 );
setMoveKey( spep_3 -3 + 244, 1, 152.1, -127.7 , 0 );
setMoveKey( spep_3 -3 + 245, 1, 152.1, -127.7 , 0 );
setMoveKey( spep_3 -3 + 246, 1, 108.5, 6.1 , 0 );
setMoveKey( spep_3 -3 + 248, 1, 175.1, 7.5 , 0 );
setMoveKey( spep_3 -3 + 250, 1, 170.5, 5.3 , 0 );
setMoveKey( spep_3 -3 + 252, 1, 133.7, 129 , 0 );
setMoveKey( spep_3 -3 + 254, 1, 158.5, 127.5 , 0 );
setMoveKey( spep_3 -3 + 256, 1, 153.3, 126.3 , 0 );
setMoveKey( spep_3 -3 + 257, 1, 153.3, 126.3 , 0 );
setMoveKey( spep_3 -3 + 258, 1, 149.3, 64.5 , 0 );
setMoveKey( spep_3 -3 + 260, 1, 200, 89.5 , 0 );
setMoveKey( spep_3 -3 + 262, 1, 185.6, 100 , 0 );
setMoveKey( spep_3 -3 + 263, 1, 185.6, 100 , 0 );
setMoveKey( spep_3 -3 + 264, 1, 154, -95.5 , 0 );
setMoveKey( spep_3 -3 + 266, 1, 155.2, -128.1 , 0 );
setMoveKey( spep_3 -3 + 268, 1, 156.9, -128.2 , 0 );
setMoveKey( spep_3 -3 + 269, 1, 156.9, -128.2 , 0 );
setMoveKey( spep_3 -3 + 270, 1, 102.1, 10.2 , 0 );
setMoveKey( spep_3 -3 + 272, 1, 177.8, 0 , 0 );
setMoveKey( spep_3 -3 + 274, 1, 171.2, 4.7 , 0 );
setMoveKey( spep_3 -3 + 276, 1, 135.7, 65 , 0 );
setMoveKey( spep_3 -3 + 278, 1, 169.4, 72.2 , 0 );
setMoveKey( spep_3 -3 + 280, 1, 177.3, 62 , 0 );
setMoveKey( spep_3 -3 + 282, 1, 176.3, 64.8 , 0 );
setMoveKey( spep_3 -3 + 284, 1, 191.6, 66.9 , 0 );
setMoveKey( spep_3 -3 + 286, 1, 189, 64.2 , 0 );
setMoveKey( spep_3 -3 + 288, 1, 194.4, 63.5 , 0 );
setMoveKey( spep_3 -3 + 290, 1, 199.7, 62.8 , 0 );
setMoveKey( spep_3 -3 + 292, 1, 205.1, 62.1 , 0 );
setMoveKey( spep_3 -3 + 294, 1, 210.4, 61.4 , 0 );
setMoveKey( spep_3 -3 + 296, 1, 215.8, 60.8 , 0 );
setMoveKey( spep_3 -3 + 298, 1, 221.1, 60.1 , 0 );
setMoveKey( spep_3 -3 + 300, 1, 226.5, 59.4 , 0 );
setMoveKey( spep_3 -3 + 301, 1, 226.5, 59.4 , 0 );
setMoveKey( spep_3 -3 + 302, 1, 244.1, -4 , 0 );
setMoveKey( spep_3 -3 + 304, 1, 257.3, -29 , 0 );
setMoveKey( spep_3 -3 + 306, 1, 443.7, -16.4 , 0 );
setMoveKey( spep_3 -3 + 308, 1, 463.7, 30.2 , 0 );
setMoveKey( spep_3 -3 + 310, 1, 463.7, 30.2 , 0 );
setMoveKey( spep_3 -3 + 340, 1, -117.2, -1063 , 0 );
setMoveKey( spep_3 -3 + 343, 1, -117.2, -1063 , 0 );
setMoveKey( spep_3 -3 + 344, 1, 42.1, 97.4 , 0 );
setMoveKey( spep_3 -3 + 346, 1, 49.7, 106.9 , 0 );
setMoveKey( spep_3 -3 + 348, 1, 58.4, 118.1 , 0 );
setMoveKey( spep_3 -3 + 350, 1, 68.6, 130.4 , 0 );
setMoveKey( spep_3 -3 + 352, 1, 104.1, 116.9 , 0 );
setMoveKey( spep_3 -3 + 354, 1, 133.6, 105.8 , 0 );
setMoveKey( spep_3 -3 + 356, 1, 155.5, 97.6 , 0 );
setMoveKey( spep_3 -3 + 358, 1, 170.9, 91.8 , 0 );
setMoveKey( spep_3 -3 + 360, 1, 181.9, 87.7 , 0 );
setMoveKey( spep_3 -3 + 362, 1, 189.8, 84.7 , 0 );
setMoveKey( spep_3 -3 + 364, 1, 195.6, 82.5 , 0 );
setMoveKey( spep_3 -3 + 366, 1, 200, 80.8 , 0 );
setMoveKey( spep_3 -3 + 368, 1, 203.4, 79.6 , 0 );
setMoveKey( spep_3 -3 + 370, 1, 206, 78.6 , 0 );
setMoveKey( spep_3 -3 + 372, 1, 208, 77.8 , 0 );
setMoveKey( spep_3 -3 + 374, 1, 209.6, 77.2 , 0 );
setMoveKey( spep_3 -3 + 376, 1, 210.9, 76.7 , 0 );
setMoveKey( spep_3 -3 + 378, 1, 211.9, 76.4 , 0 );
setMoveKey( spep_3 -3 + 380, 1, 212.7, 76.1 , 0 );
setMoveKey( spep_3 -3 + 382, 1, 213.4, 75.8 , 0 );
setMoveKey( spep_3 -3 + 384, 1, 213.9, 75.6 , 0 );
setMoveKey( spep_3 -3 + 386, 1, 214.2, 75.5 , 0 );
setMoveKey( spep_3 -3 + 388, 1, 214.6, 75.4 , 0 );
setMoveKey( spep_3 -3 + 390, 1, 214.8, 75.3 , 0 );
setMoveKey( spep_3 -3 + 392, 1, 215, 75.2 , 0 );
setMoveKey( spep_3 -3 + 394, 1, 215.1, 75.2 , 0 );
setMoveKey( spep_3 -3 + 396, 1, 215.2, 75.1 , 0 );
setMoveKey( spep_3 -3 + 398, 1, 215.3, 75.1 , 0 );
setMoveKey( spep_3 -3 + 400, 1, 215.3, 75.1 , 0 );
setMoveKey( spep_3 -3 + 402, 1, 215.4, 75.1 , 0 );
--setMoveKey( spep_3 + 401, 1, 215.4, 75.1 , 0 );

setScaleKey( spep_3 -3 + 32, 1, 7.35, 7.35 );
setScaleKey( spep_3 -3 + 41, 1, 7.35, 7.35 );
setScaleKey( spep_3 -3 + 42, 1, 1.8, 1.8 );
setScaleKey( spep_3 -3 + 84, 1, 1.8, 1.8 );
setScaleKey( spep_3 -3 + 85, 1, 1.8, 1.8 );
setScaleKey( spep_3 -3 + 86, 1, 0.65, 0.65 );
setScaleKey( spep_3 -3 + 100, 1, 0.65, 0.65 );
setScaleKey( spep_3 -3 + 102, 1, 0.64, 0.64 );
setScaleKey( spep_3 -3 + 116, 1, 0.64, 0.64 );
setScaleKey( spep_3 -3 + 118, 1, 0.63, 0.63 );
setScaleKey( spep_3 -3 + 124, 1, 0.63, 0.63 );
setScaleKey( spep_3 -3 + 125, 1, 0.63, 0.63 );
setScaleKey( spep_3 -3 + 126, 1, 2, 2 );
setScaleKey( spep_3 -3 + 162, 1, 2, 2 );
setScaleKey( spep_3 -3 + 206, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 208, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 209, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 210, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 214, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 215, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 216, 1, 0.6, 0.6 );
setScaleKey( spep_3 -3 + 218, 1, 0.61, 0.61 );
setScaleKey( spep_3 -3 + 220, 1, 0.61, 0.61 );
setScaleKey( spep_3 -3 + 221, 1, 0.61, 0.61 );
setScaleKey( spep_3 -3 + 222, 1, 1.51, 1.51 );
setScaleKey( spep_3 -3 + 232, 1, 1.51, 1.51 );
setScaleKey( spep_3 -3 + 233, 1, 1.51, 1.51 );
setScaleKey( spep_3 -3 + 234, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 238, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 239, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 240, 1, 0.6, 0.6 );
setScaleKey( spep_3 -3 + 242, 1, 0.61, 0.61 );
setScaleKey( spep_3 -3 + 244, 1, 0.61, 0.61 );
setScaleKey( spep_3 -3 + 245, 1, 0.61, 0.61 );
setScaleKey( spep_3 -3 + 246, 1, 1.51, 1.51 );
setScaleKey( spep_3 -3 + 256, 1, 1.51, 1.51 );
setScaleKey( spep_3 -3 + 257, 1, 1.51, 1.51 );
setScaleKey( spep_3 -3 + 258, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 262, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 263, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 264, 1, 0.6, 0.6 );
setScaleKey( spep_3 -3 + 266, 1, 0.61, 0.61 );
setScaleKey( spep_3 -3 + 269, 1, 0.61, 0.61 );
setScaleKey( spep_3 -3 + 270, 1, 1.51, 1.51 );
setScaleKey( spep_3 -3 + 301, 1, 1.51, 1.51 );
setScaleKey( spep_3 -3 + 302, 1, 1.51, 1.51 );
setScaleKey( spep_3 -3 + 310, 1, 1.51, 1.51 );
setScaleKey( spep_3 -3 + 340, 1, 6.3, 6.3 );
setScaleKey( spep_3 -3 + 343, 1, 6.3, 6.3 );
setScaleKey( spep_3 -3 + 344, 1, 7.86, 7.86 );
setScaleKey( spep_3 -3 + 346, 1, 6.58, 6.58 );
setScaleKey( spep_3 -3 + 348, 1, 5.3, 5.3 );
setScaleKey( spep_3 -3 + 350, 1, 4.02, 4.02 );
setScaleKey( spep_3 -3 + 352, 1, 3.07, 3.07 );
setScaleKey( spep_3 -3 + 354, 1, 2.29, 2.29 );
setScaleKey( spep_3 -3 + 356, 1, 1.72, 1.72 );
setScaleKey( spep_3 -3 + 358, 1, 1.31, 1.31 );
setScaleKey( spep_3 -3 + 360, 1, 1.03, 1.03 );
setScaleKey( spep_3 -3 + 362, 1, 0.83, 0.83 );
setScaleKey( spep_3 -3 + 364, 1, 0.67, 0.67 );
setScaleKey( spep_3 -3 + 366, 1, 0.56, 0.56 );
setScaleKey( spep_3 -3 + 368, 1, 0.47, 0.47 );
setScaleKey( spep_3 -3 + 370, 1, 0.41, 0.41 );
setScaleKey( spep_3 -3 + 372, 1, 0.35, 0.35 );
setScaleKey( spep_3 -3 + 374, 1, 0.31, 0.31 );
setScaleKey( spep_3 -3 + 376, 1, 0.28, 0.28 );
setScaleKey( spep_3 -3 + 378, 1, 0.25, 0.25 );
setScaleKey( spep_3 -3 + 380, 1, 0.23, 0.23 );
setScaleKey( spep_3 -3 + 382, 1, 0.22, 0.22 );
setScaleKey( spep_3 -3 + 384, 1, 0.2, 0.2 );
setScaleKey( spep_3 -3 + 386, 1, 0.19, 0.19 );
setScaleKey( spep_3 -3 + 388, 1, 0.19, 0.19 );
setScaleKey( spep_3 -3 + 390, 1, 0.18, 0.18 );
setScaleKey( spep_3 -3 + 392, 1, 0.18, 0.18 );
setScaleKey( spep_3 -3 + 394, 1, 0.17, 0.17 );
setScaleKey( spep_3 + 399, 1, 0.17, 0.17 );
--setScaleKey( spep_3 + 401, 1, 0.17, 0.17 );

setRotateKey( spep_3 -3 + 32, 1, -11.5 );
setRotateKey( spep_3 -3 + 41, 1, -11.5 );
setRotateKey( spep_3 -3 + 42, 1, 75 );
setRotateKey( spep_3 -3 + 56, 1, 75 );
setRotateKey( spep_3 -3 + 58, 1, 59 );
setRotateKey( spep_3 -3 + 84, 1, 59 );
setRotateKey( spep_3 -3 + 85, 1, 59 );
setRotateKey( spep_3 -3 + 86, 1, 21.6 );
setRotateKey( spep_3 -3 + 88, 1, 20.5 );
setRotateKey( spep_3 -3 + 90, 1, 19.4 );
setRotateKey( spep_3 -3 + 92, 1, 18.3 );
setRotateKey( spep_3 -3 + 94, 1, 17.2 );
setRotateKey( spep_3 -3 + 96, 1, 16.2 );
setRotateKey( spep_3 -3 + 98, 1, 15.1 );
setRotateKey( spep_3 -3 + 100, 1, 14 );
setRotateKey( spep_3 -3 + 102, 1, 12.9 );
setRotateKey( spep_3 -3 + 104, 1, 11.8 );
setRotateKey( spep_3 -3 + 106, 1, 10.7 );
setRotateKey( spep_3 -3 + 108, 1, 9.6 );
setRotateKey( spep_3 -3 + 110, 1, 8.5 );
setRotateKey( spep_3 -3 + 112, 1, 7.4 );
setRotateKey( spep_3 -3 + 114, 1, 6.3 );
setRotateKey( spep_3 -3 + 116, 1, 5.3 );
setRotateKey( spep_3 -3 + 118, 1, 4.2 );
setRotateKey( spep_3 -3 + 120, 1, 3.1 );
setRotateKey( spep_3 -3 + 122, 1, 2 );
setRotateKey( spep_3 -3 + 124, 1, 0.9 );
setRotateKey( spep_3 -3 + 125, 1, 0.9 );
setRotateKey( spep_3 -3 + 126, 1, -17.1 );
setRotateKey( spep_3 -3 + 162, 1, -17.1 );
setRotateKey( spep_3 -3 + 206, 1, -42.8 );
setRotateKey( spep_3 -3 + 208, 1, -42.8 );
setRotateKey( spep_3 -3 + 209, 1, -42.8 );
setRotateKey( spep_3 -3 + 210, 1, -30.6 );
setRotateKey( spep_3 -3 + 214, 1, -30.6 );
setRotateKey( spep_3 -3 + 215, 1, -30.6 );
setRotateKey( spep_3 -3 + 216, 1, -28.8 );
setRotateKey( spep_3 -3 + 218, 1, -16.8 );
setRotateKey( spep_3 -3 + 220, 1, -16.8 );
setRotateKey( spep_3 -3 + 221, 1, -16.8 );
setRotateKey( spep_3 -3 + 222, 1, -46.1 );
setRotateKey( spep_3 -3 + 224, 1, -46.1 );
setRotateKey( spep_3 -3 + 226, 1, -28.4 );
setRotateKey( spep_3 -3 + 228, 1, -58.6 );
setRotateKey( spep_3 -3 + 230, 1, -49.1 );
setRotateKey( spep_3 -3 + 232, 1, -49.1 );
setRotateKey( spep_3 -3 + 233, 1, -49.1 );
setRotateKey( spep_3 -3 + 234, 1, -30.6 );
setRotateKey( spep_3 -3 + 238, 1, -30.6 );
setRotateKey( spep_3 -3 + 239, 1, -30.6 );
setRotateKey( spep_3 -3 + 240, 1, -28.8 );
setRotateKey( spep_3 -3 + 242, 1, -16.8 );
setRotateKey( spep_3 -3 + 244, 1, -16.8 );
setRotateKey( spep_3 -3 + 245, 1, -16.8 );
setRotateKey( spep_3 -3 + 246, 1, -46.1 );
setRotateKey( spep_3 -3 + 248, 1, -28.4 );
setRotateKey( spep_3 -3 + 250, 1, -28.4 );
setRotateKey( spep_3 -3 + 252, 1, -58.6 );
setRotateKey( spep_3 -3 + 254, 1, -49.1 );
setRotateKey( spep_3 -3 + 256, 1, -49.1 );
setRotateKey( spep_3 -3 + 257, 1, -49.1 );
setRotateKey( spep_3 -3 + 258, 1, -30.6 );
setRotateKey( spep_3 -3 + 262, 1, -30.6 );
setRotateKey( spep_3 -3 + 263, 1, -30.6 );
setRotateKey( spep_3 -3 + 264, 1, -28.8 );
setRotateKey( spep_3 -3 + 266, 1, -16.8 );
setRotateKey( spep_3 -3 + 269, 1, -16.8 );
setRotateKey( spep_3 -3 + 270, 1, -46.1 );
setRotateKey( spep_3 -3 + 272, 1, -28.4 );
setRotateKey( spep_3 -3 + 274, 1, -28.4 );
setRotateKey( spep_3 -3 + 276, 1, -49.2 );
setRotateKey( spep_3 -3 + 278, 1, -33.2 );
setRotateKey( spep_3 -3 + 280, 1, -32 );
setRotateKey( spep_3 -3 + 282, 1, -30.7 );
setRotateKey( spep_3 -3 + 284, 1, -29.5 );
setRotateKey( spep_3 -3 + 286, 1, -28.3 );
setRotateKey( spep_3 -3 + 288, 1, -27.1 );
setRotateKey( spep_3 -3 + 290, 1, -25.8 );
setRotateKey( spep_3 -3 + 292, 1, -24.6 );
setRotateKey( spep_3 -3 + 294, 1, -23.4 );
setRotateKey( spep_3 -3 + 296, 1, -22.2 );
setRotateKey( spep_3 -3 + 298, 1, -20.9 );
setRotateKey( spep_3 -3 + 300, 1, -19.7 );
setRotateKey( spep_3 -3 + 301, 1, -19.7 );
setRotateKey( spep_3 -3 + 302, 1, -9.9 );
setRotateKey( spep_3 -3 + 310, 1, -9.9 );
setRotateKey( spep_3 -3 + 340, 1, 128 );
setRotateKey( spep_3 -3 + 343, 1, 128 );
setRotateKey( spep_3 -3 + 344, 1, 20 );
setRotateKey( spep_3 -3 + 346, 1, 34.7 );
setRotateKey( spep_3 -3 + 348, 1, 49.3 );
setRotateKey( spep_3 -3 + 350, 1, 64 );
setRotateKey( spep_3 -3 + 352, 1, 69.4 );
setRotateKey( spep_3 -3 + 354, 1, 73.9 );
setRotateKey( spep_3 -3 + 356, 1, 77.2 );
setRotateKey( spep_3 -3 + 358, 1, 79.6 );
setRotateKey( spep_3 -3 + 360, 1, 81.2 );
setRotateKey( spep_3 -3 + 362, 1, 82.4 );
setRotateKey( spep_3 -3 + 364, 1, 83.3 );
setRotateKey( spep_3 -3 + 366, 1, 83.9 );
setRotateKey( spep_3 -3 + 368, 1, 84.4 );
setRotateKey( spep_3 -3 + 370, 1, 84.8 );
setRotateKey( spep_3 -3 + 372, 1, 85.1 );
setRotateKey( spep_3 -3 + 374, 1, 85.3 );
setRotateKey( spep_3 -3 + 376, 1, 85.5 );
setRotateKey( spep_3 -3 + 378, 1, 85.7 );
setRotateKey( spep_3 -3 + 380, 1, 85.8 );
setRotateKey( spep_3 -3 + 382, 1, 85.9 );
setRotateKey( spep_3 -3 + 384, 1, 86 );
setRotateKey( spep_3 -3 + 386, 1, 86 );
setRotateKey( spep_3 -3 + 388, 1, 86.1 );
setRotateKey( spep_3 -3 + 392, 1, 86.1 );
setRotateKey( spep_3 -3 + 394, 1, 86.2 );
setRotateKey( spep_3 + 399, 1, 86.2 );
--setRotateKey( spep_3 + 401, 1, 86.2 );

-- ** 音 ** --
--敵に蹴り向かう
SE3 = playSe( spep_3 + 5, 1007 );
setSeVolume( spep_3 + 5, 1007, 110 );

SE4 = playSe( spep_3 + 5, 9 );
setSeVolume( spep_3 + 5, 9, 0 );
setSeVolume( spep_3 + 8, 9, 16 );
setSeVolume( spep_3 + 10, 9, 32 );
setSeVolume( spep_3 + 12, 9, 54 );
setSeVolume( spep_3 + 14, 9, 60 );
setSeVolume( spep_3 + 16, 9, 68 );
setSeVolume( spep_3 + 18, 9, 76 );
setSeVolume( spep_3 + 20, 9, 84 );
setSeVolume( spep_3 + 22, 9, 92 );
setSeVolume( spep_3 + 24, 9, 97 );
setSeVolume( spep_3 + 25, 9, 110 );

--蹴りヒット
playSe( spep_3 + 40, 1013 );
setSeVolume( spep_3 + 40, 1013, 110 );
playSe( spep_3 + 44, 1110 );
setSeVolume( spep_3 + 44, 1110, 110 );
playSe( spep_3 + 44, 1010 );
setSeVolume( spep_3 + 44, 1010, 110 );
SE5 = playSe( spep_3 + 45, 1182 );
setSeVolume( spep_3 + 45, 1182, 198 );
setSeVolume( spep_3 + 49, 1182, 198 );
setSeVolume( spep_3 + 50, 1182, 155 );
setSeVolume( spep_3 + 51, 1182, 110 );
setSeVolume( spep_3 + 59, 1182, 110 );
setSeVolume( spep_3 + 66, 1182, 100 );
setSeVolume( spep_3 + 72, 1182, 94 );
setSeVolume( spep_3 + 78, 1182, 78 );
setSeVolume( spep_3 + 84, 1182, 46 );
setSeVolume( spep_3 + 92, 1182, 14 );
setSeVolume( spep_3 + 97, 1182, 0 );
stopSe( spep_3 + 97, SE5, 0 );

--瞬間移動
playSe( spep_3 + 111, 1109 );
setSeVolume( spep_3 + 111, 1109, 110 );
playSe( spep_3 + 151, 1109 );
setSeVolume( spep_3 + 151, 1109, 110 );

--腕振りかぶり
playSe( spep_3 + 170, 1003 );
setSeVolume( spep_3 + 170, 1003, 110 );

--ラッシュ
playSe( spep_3 + 196, 1004 );
setSeVolume( spep_3 + 196, 1004, 110 );
playSe( spep_3 + 201, 1189 );
setSeVolume( spep_3 + 201, 1189, 110 );
playSe( spep_3 + 205, 1009 );
setSeVolume( spep_3 + 205, 1009, 99 );
playSe( spep_3 + 206, 1110 );
setSeVolume( spep_3 + 206, 1110, 110 );
playSe( spep_3 + 216, 1009 );
setSeVolume( spep_3 + 216, 1009, 110 );
playSe( spep_3 + 217, 1009 );
setSeVolume( spep_3 + 217, 1009, 89 );
playSe( spep_3 + 226, 1012 );
setSeVolume( spep_3 + 226, 1012, 89 );
playSe( spep_3 + 227, 1110 );
setSeVolume( spep_3 + 227, 1110, 99 );
playSe( spep_3 + 236, 1009 );
setSeVolume( spep_3 + 236, 1009, 110 );
playSe( spep_3 + 236, 1010 );
setSeVolume( spep_3 + 236, 1010, 110 );
playSe( spep_3 + 246, 1001 );
setSeVolume( spep_3 + 246, 1001, 110 );
playSe( spep_3 + 248, 1110 );
setSeVolume( spep_3 + 248, 1110, 81 );
playSe( spep_3 + 258, 1009 );
setSeVolume( spep_3 + 258, 1009, 81 );
playSe( spep_3 + 259, 1110 );
setSeVolume( spep_3 + 259, 1110, 99 );
playSe( spep_3 + 268, 1009 );
setSeVolume( spep_3 + 268, 1009, 110 );
playSe( spep_3 + 269, 1110 );
setSeVolume( spep_3 + 269, 1110, 110 );

--横蹴り
playSe( spep_3 + 305, 1110 );
setSeVolume( spep_3 + 305, 1110, 110 );
playSe( spep_3 + 305, 1187 );
setSeVolume( spep_3 + 305, 1187, 81 );
playSe( spep_3 + 305, 1182 );
setSeVolume( spep_3 + 305, 1182, 151 );
setSeVolume( spep_3 + 311, 1182, 151 );
setSeVolume( spep_3 + 312, 1182, 110 );

--敵飛んでいく
SE6 = playSe( spep_3 + 329, 1183 );
setSeVolume( spep_3 + 329, 1183, 89 );

SE7 = playSe( spep_3 + 329, 1121 );
setSeVolume( spep_3 + 329, 1121, 60 );

--ラスト敵が飛んでいく
SE8 = playSe( spep_3 + 338, 1121 );
setSeVolume( spep_3 + 338, 1121, 110 );

SE9 = playSe( spep_3 + 395, 1183 );
setSeVolume( spep_3 + 395, 1183, 110 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 402 -x;

------------------------------------------------------
-- 膝蹴りで敵を叩き落とす(236F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --膝蹴りで敵を叩き落とす(ef_006)
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 236, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 236, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 236, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 236, finish_f, 255 );

finish_b = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --膝蹴りで敵を叩き落とす(ef_007)
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 236, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 236, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 236, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 236, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 32, 1, 0 );
setDisp( spep_4 -3 + 64, 1, 1 );
setDisp( spep_4 -3 + 100, 1, 0 );
changeAnime( spep_4 + 0, 1, 106 );
changeAnime( spep_4 -3 + 18, 1, 7 );
changeAnime( spep_4 -3 + 64, 1, 8 );

setMoveKey( spep_4 + 0, 1, -77, -10.8 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -55.2, -17.5 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -36.8, -23.1 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -21.8, -27.8 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -10, -31.4 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -1.7, -34 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 3.3, -35.5 , 0 );
setMoveKey( spep_4 -3 + 17, 1, 5, -36 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 37.9, -9.3 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 21, -65.2 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -19.1, -172.4 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 27, -142.7 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -89, -275.9 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -137.7, -516.5 , 0 );
setMoveKey( spep_4 -3 + 31, 1, -286.7, -864.9 , 0 );
setMoveKey( spep_4 -3 + 32, 1, -286.7, -864.9 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 866, 551.1 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 105.6, 9.6 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 32.4, -42.5 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 18.7, -52.4 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 11.7, -57.3 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 7.7, -60.3 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 5.3, -62 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 3.8, -63 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 2.8, -63.6 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 2.3, -64 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 2, -64.1 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 1.9, -64.2 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 1.7, -64.3 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 1.7, -64.3 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 1.6, -64.3 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 1.6, -64.3 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 1.5, -64.3 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 1.6, -64.4 , 0 );

setScaleKey( spep_4 + 0, 1, 1.98, 1.98 );
setScaleKey( spep_4 -3 + 17, 1, 1.98, 1.98 );
setScaleKey( spep_4 -3 + 18, 1, 0.58, 0.58 );
setScaleKey( spep_4 -3 + 20, 1, 0.7, 0.7 );
setScaleKey( spep_4 -3 + 22, 1, 0.82, 0.82 );
setScaleKey( spep_4 -3 + 24, 1, 0.94, 0.94 );
setScaleKey( spep_4 -3 + 26, 1, 1.22, 1.22 );
setScaleKey( spep_4 -3 + 28, 1, 2.08, 2.08 );
setScaleKey( spep_4 -3 + 31, 1, 3.5, 3.5 );
setScaleKey( spep_4 -3 + 32, 1, 3.5, 3.5 );
setScaleKey( spep_4 -3 + 64, 1, 19.34, 19.34 );
setScaleKey( spep_4 -3 + 66, 1, 2.37, 2.37 );
setScaleKey( spep_4 -3 + 68, 1, 0.75, 0.75 );
setScaleKey( spep_4 -3 + 70, 1, 0.43, 0.43 );
setScaleKey( spep_4 -3 + 72, 1, 0.27, 0.27 );
setScaleKey( spep_4 -3 + 74, 1, 0.19, 0.19 );
setScaleKey( spep_4 -3 + 76, 1, 0.14, 0.14 );
setScaleKey( spep_4 -3 + 78, 1, 0.11, 0.11 );
setScaleKey( spep_4 -3 + 80, 1, 0.08, 0.08 );
setScaleKey( spep_4 -3 + 82, 1, 0.06, 0.06 );
setScaleKey( spep_4 -3 + 84, 1, 0.05, 0.05 );
setScaleKey( spep_4 -3 + 86, 1, 0.03, 0.03 );
setScaleKey( spep_4 -3 + 88, 1, 0.02, 0.02 );
setScaleKey( spep_4 -3 + 90, 1, 0.02, 0.02 );
setScaleKey( spep_4 -3 + 92, 1, 0.01, 0.01 );
setScaleKey( spep_4 -3 + 100, 1, 0.01, 0.01 );

setRotateKey( spep_4 + 0, 1, 36.6 );
setRotateKey( spep_4 -3 + 4, 1, 39.8 );
setRotateKey( spep_4 -3 + 6, 1, 42.5 );
setRotateKey( spep_4 -3 + 8, 1, 44.8 );
setRotateKey( spep_4 -3 + 10, 1, 46.5 );
setRotateKey( spep_4 -3 + 12, 1, 47.7 );
setRotateKey( spep_4 -3 + 14, 1, 48.5 );
setRotateKey( spep_4 -3 + 17, 1, 48.7 );
setRotateKey( spep_4 -3 + 18, 1, -18.7 );
setRotateKey( spep_4 -3 + 20, 1, -19.5 );
setRotateKey( spep_4 -3 + 22, 1, -20.2 );
setRotateKey( spep_4 -3 + 24, 1, -21 );
setRotateKey( spep_4 -3 + 26, 1, -19.8 );
setRotateKey( spep_4 -3 + 28, 1, -16 );
setRotateKey( spep_4 -3 + 31, 1, -9.8 );
setRotateKey( spep_4 -3 + 32, 1, -9.8 );
setRotateKey( spep_4 -3 + 64, 1, -34.9 );
setRotateKey( spep_4 -3 + 82, 1, -34.9 );
setRotateKey( spep_4 -3 + 84, 1, -34.8 );
setRotateKey( spep_4 -3 + 86, 1, -34.7 );
setRotateKey( spep_4 -3 + 88, 1, -34.6 );
setRotateKey( spep_4 -3 + 92, 1, -34.6 );
setRotateKey( spep_4 -3 + 94, 1, -34.5 );
setRotateKey( spep_4 -3 + 100, 1, -34.5 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 234, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--敵飛んでいく
stopSe( spep_4 + 20, SE6, 0 );
stopSe( spep_4 + 20, SE7, 0 );

--ラスト敵が飛んでいく
setSeVolume( spep_4 + 20, 1121, 110 );
setSeVolume( spep_4 + 21, 1121, 0 );
setSeVolume( spep_4 + 48, 1121, 10 );
setSeVolume( spep_4 + 50, 1121, 42 );
setSeVolume( spep_4 + 52, 1121, 68 );
setSeVolume( spep_4 + 54, 1121, 86 );
setSeVolume( spep_4 + 56, 1121, 110 );
stopSe( spep_4 + 130, SE8, 0 );

setSeVolume( spep_4 + 20, 1183, 110 );
setSeVolume( spep_4 + 21, 1183, 0 );
setSeVolume( spep_4 + 48, 1183, 10 );
setSeVolume( spep_4 + 50, 1183, 42 );
setSeVolume( spep_4 + 52, 1183, 68 );
setSeVolume( spep_4 + 54, 1183, 86 );
setSeVolume( spep_4 + 56, 1183, 110 );
stopSe( spep_4 + 130, SE9, 0 );

--瞬間移動
playSe( spep_4 + 4, 1109 );
setSeVolume( spep_4 + 4, 1109, 110 );

--ラスト蹴り
playSe( spep_4 + 26, 1010 );
setSeVolume( spep_4 + 26, 1010, 110 );
playSe( spep_4 + 26, 1120 );
setSeVolume( spep_4 + 26, 1120, 110 );

--地面激突
playSe( spep_4 + 113, 1159 );
setSeVolume( spep_4 + 113, 1159, 110 );

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 118 );
endPhase( spep_4 + 234 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 手招きして挑発(80F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tyouhatsu = entryEffectLife( spep_0 + 0, SP_01, 80, 0x100, -1, 0, 0, 0 );  --手招きして挑発(ef_001)
setEffMoveKey( spep_0 + 0, tyouhatsu, 0, 0 , 0 );
setEffMoveKey( spep_0 + 80, tyouhatsu, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tyouhatsu, -1.0, 1.0 );
setEffScaleKey( spep_0 + 80, tyouhatsu, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tyouhatsu, 0 );
setEffRotateKey( spep_0 + 80, tyouhatsu, 0 );
setEffAlphaKey( spep_0 + 0, tyouhatsu, 255 );
setEffAlphaKey( spep_0 + 80, tyouhatsu, 255 );

spep_x = spep_0 + 2;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 82, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

--手招き
playSe( spep_0 + 24, 1189 ); 
setSeVolume( spep_0 + 24, 1189, 89 );
playSe( spep_0 + 26, 1048 ); 
setSeVolume( spep_0 + 26, 1048, 66 );
playSe( spep_0 + 51, 1189 ); 
setSeVolume( spep_0 + 51, 1189, 73 );
playSe( spep_0 + 53, 1048 ); 
setSeVolume( spep_0 + 53, 1048, 66 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 80;

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

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;

------------------------------------------------------
-- 敵突進〜かわして敵に接近(116F)
------------------------------------------------------

-- ** エフェクト等 ** --
tosshin_f = entryEffectLife( spep_2 + 0, SP_02, 116, 0x80, -1, 0, 0, 0 );  --敵突進〜かわして敵に接近(ef_002)
setEffMoveKey( spep_2 + 0, tosshin_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 116, tosshin_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tosshin_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 116, tosshin_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tosshin_f, 0 );
setEffRotateKey( spep_2 + 116, tosshin_f, 0 );
setEffAlphaKey( spep_2 + 0, tosshin_f, 255 );
setEffAlphaKey( spep_2 + 116, tosshin_f, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 32, 1, 0 );
setDisp( spep_2 -3 + 38, 1, 1 );
setDisp( spep_2 + 116, 1, 0 );
changeAnime( spep_2 + 0, 1, 16 );
changeAnime( spep_2 -3 + 38, 1, 3 );
changeAnime( spep_2 -3 + 44, 1, 11 );
changeAnime( spep_2 -3 + 45, 1, 11 );
changeAnime( spep_2 -3 + 46, 1, 11 );
changeAnime( spep_2 -3 + 47, 1, 11 );
changeAnime( spep_2 -3 + 48, 1, 9 );
changeAnime( spep_2 -3 + 108, 1, 3 );
changeAnime( spep_2 -3 + 110, 1, 0 );
changeAnime( spep_2 -3 + 112, 1, 101 );
changeAnime( spep_2 -3 + 114, 1, 100 );

setMoveKey( spep_2 + 0, 1, 4.6, -7.9 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 4.6, -8 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 4.5, -8 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 4.5, -8.2 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 4.4, -8.7 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 4.1, -9.9 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 3.6, -12.2 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 2.7, -16.3 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 1, -23.1 , 0 );
setMoveKey( spep_2 -3 + 20, 1, -1.7, -34.2 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 0.7, -57.6 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 3.1, -81.1 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 5.5, -104.6 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 7.8, -128.2 , 0 );
setMoveKey( spep_2 -3 + 31, 1, 10.1, -151.9 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 10.1, -151.9 , 0 );
setMoveKey( spep_2 -3 + 38, 1, -323.1, -116.7 , 0 );
setMoveKey( spep_2 -3 + 40, 1, -323.1, -116.7 , 0 );
setMoveKey( spep_2 -3 + 42, 1, -147.1, -116.7 , 0 );
setMoveKey( spep_2 -3 + 43, 1, -147.1, -116.7 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 15, -113.1 , 0 );
setMoveKey( spep_2 -3 + 47, 1, 15, -113.1 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 204.8, -117 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 207.6, -117.2 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 210.4, -117.3 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 213.2, -117.4 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 216, -117.6 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 218.8, -117.7 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 221.6, -117.8 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 224.4, -118 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 227.2, -118.1 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 230, -118.2 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 232.8, -118.4 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 235.7, -118.5 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 238.5, -118.6 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 241.3, -118.8 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 244.1, -118.9 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 246.9, -119 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 249.7, -119.2 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 252.5, -119.3 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 255.3, -119.4 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 258.1, -119.6 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 260.9, -119.7 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 263.7, -119.8 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 266.5, -120 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 269.3, -120.1 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 272.1, -120.2 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 274.9, -120.4 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 277.7, -120.5 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 280.5, -120.6 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 283.3, -120.8 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 286.1, -120.9 , 0 );
setMoveKey( spep_2 -3 + 107, 1, 286.1, -120.9 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 288.9, -121 , 0 );
setMoveKey( spep_2 -3 + 109, 1, 288.9, -121 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 288.9, -131 , 0 );
setMoveKey( spep_2 -3 + 111, 1, 288.9, -131 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 276.8, -120.9 , 0 );
setMoveKey( spep_2 -3 + 113, 1, 276.8, -120.9 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 260.8, -119.1 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 258.8, -119.1 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 256.8, -119.1 , 0 );
setMoveKey( spep_2 + 116, 1, 256.8, -119.1 , 0 );

setScaleKey( spep_2 + 0, 1, 0.4, 0.4 );
setScaleKey( spep_2 -3 + 6, 1, 0.4, 0.4 );
setScaleKey( spep_2 -3 + 8, 1, 0.41, 0.41 );
setScaleKey( spep_2 -3 + 10, 1, 0.43, 0.43 );
setScaleKey( spep_2 -3 + 12, 1, 0.47, 0.47 );
setScaleKey( spep_2 -3 + 14, 1, 0.55, 0.55 );
setScaleKey( spep_2 -3 + 16, 1, 0.68, 0.68 );
setScaleKey( spep_2 -3 + 18, 1, 0.91, 0.91 );
setScaleKey( spep_2 -3 + 20, 1, 1.26, 1.26 );
setScaleKey( spep_2 -3 + 22, 1, 2.07, 2.07 );
setScaleKey( spep_2 -3 + 24, 1, 2.87, 2.87 );
setScaleKey( spep_2 -3 + 26, 1, 3.68, 3.68 );
setScaleKey( spep_2 -3 + 28, 1, 4.48, 4.48 );
setScaleKey( spep_2 -3 + 31, 1, 5.29, 5.29 );
setScaleKey( spep_2 -3 + 32, 1, 5.29, 5.29 );
setScaleKey( spep_2 -3 + 38, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 42, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 43, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 44, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 47, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 48, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 107, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 108, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 109, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 110, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 111, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 112, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 113, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 114, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 116, 1, 0.66, 0.66 );

setRotateKey( spep_2 + 0, 1, 45.7 );
setRotateKey( spep_2 -3 + 6, 1, 45.7 );
setRotateKey( spep_2 -3 + 8, 1, 45.5 );
setRotateKey( spep_2 -3 + 10, 1, 45.1 );
setRotateKey( spep_2 -3 + 12, 1, 44.1 );
setRotateKey( spep_2 -3 + 14, 1, 42.3 );
setRotateKey( spep_2 -3 + 16, 1, 39.1 );
setRotateKey( spep_2 -3 + 18, 1, 33.8 );
setRotateKey( spep_2 -3 + 20, 1, 25.6 );
setRotateKey( spep_2 -3 + 22, 1, 24.9 );
setRotateKey( spep_2 -3 + 24, 1, 24.2 );
setRotateKey( spep_2 -3 + 26, 1, 23.4 );
setRotateKey( spep_2 -3 + 28, 1, 22.7 );
setRotateKey( spep_2 -3 + 31, 1, 22 );
setRotateKey( spep_2 -3 + 32, 1, 22 );
setRotateKey( spep_2 -3 + 38, 1, -2.4 );
setRotateKey( spep_2 -3 + 42, 1, -2.4 );
setRotateKey( spep_2 -3 + 43, 1, -2.4 );
setRotateKey( spep_2 -3 + 44, 1, -2.4 );
setRotateKey( spep_2 -3 + 47, 1, -2.4 );
setRotateKey( spep_2 -3 + 48, 1, 13.8 );
setRotateKey( spep_2 -3 + 50, 1, 13.9 );
setRotateKey( spep_2 -3 + 52, 1, 14 );
setRotateKey( spep_2 -3 + 54, 1, 14.1 );
setRotateKey( spep_2 -3 + 56, 1, 14.2 );
setRotateKey( spep_2 -3 + 58, 1, 14.3 );
setRotateKey( spep_2 -3 + 60, 1, 14.4 );
setRotateKey( spep_2 -3 + 62, 1, 14.5 );
setRotateKey( spep_2 -3 + 64, 1, 14.7 );
setRotateKey( spep_2 -3 + 66, 1, 14.8 );
setRotateKey( spep_2 -3 + 68, 1, 14.9 );
setRotateKey( spep_2 -3 + 70, 1, 15 );
setRotateKey( spep_2 -3 + 72, 1, 15.1 );
setRotateKey( spep_2 -3 + 74, 1, 15.2 );
setRotateKey( spep_2 -3 + 76, 1, 15.3 );
setRotateKey( spep_2 -3 + 78, 1, 15.4 );
setRotateKey( spep_2 -3 + 80, 1, 15.5 );
setRotateKey( spep_2 -3 + 82, 1, 15.6 );
setRotateKey( spep_2 -3 + 84, 1, 15.7 );
setRotateKey( spep_2 -3 + 86, 1, 15.8 );
setRotateKey( spep_2 -3 + 88, 1, 15.9 );
setRotateKey( spep_2 -3 + 90, 1, 16 );
setRotateKey( spep_2 -3 + 92, 1, 16.1 );
setRotateKey( spep_2 -3 + 94, 1, 16.3 );
setRotateKey( spep_2 -3 + 96, 1, 16.4 );
setRotateKey( spep_2 -3 + 98, 1, 16.5 );
setRotateKey( spep_2 -3 + 100, 1, 16.6 );
setRotateKey( spep_2 -3 + 102, 1, 16.7 );
setRotateKey( spep_2 -3 + 104, 1, 16.8 );
setRotateKey( spep_2 -3 + 106, 1, 16.9 );
setRotateKey( spep_2 -3 + 107, 1, 16.9 );
setRotateKey( spep_2 -3 + 108, 1, 17 );
setRotateKey( spep_2 -3 + 109, 1, 17 );
setRotateKey( spep_2 -3 + 110, 1, 17 );
setRotateKey( spep_2 -3 + 111, 1, 17 );
setRotateKey( spep_2 -3 + 112, 1, 20.7 );
setRotateKey( spep_2 -3 + 113, 1, 20.7 );
setRotateKey( spep_2 -3 + 114, 1, 11.5 );
setRotateKey( spep_2 + 116, 1, 11.5 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 356, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--敵が向かってくる
SE0 = playSe( spep_2 + 0, 1116 );
setSeVolume( spep_2 + 0, 1116, 110 );
setSeVolume( spep_2 + 25, 1116, 98 );
setSeVolume( spep_2 + 28, 1116, 86 );
setSeVolume( spep_2 + 32, 1116, 78 );
setSeVolume( spep_2 + 36, 1116, 60 );
setSeVolume( spep_2 + 40, 1116, 48 );
setSeVolume( spep_2 + 44, 1116, 32 );
setSeVolume( spep_2 + 48, 1116, 10 );
setSeVolume( spep_2 + 50, 1116, 0 );
stopSe( spep_2 + 50, SE0, 0 );

playSe( spep_2 + 3, 44 );
setSeVolume( spep_2 + 3, 44, 73 );

--避ける
playSe( spep_2 + 40, 1004 );
setSeVolume( spep_2 + 40, 1004, 110 );
playSe( spep_2 + 44, 1003 );
setSeVolume( spep_2 + 44, 1003, 110 );

--敵に蹴り向かう
SE1 = playSe( spep_2 + 65, 1183 );
setSeVolume( spep_2 + 65, 1183, 0 );

SE2 = playSe( spep_2 + 101, 1072 );
setSeVolume( spep_2 + 101, 1072, 0 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 116;

------------------------------------------------------
-- キック〜乱打〜ドロップキック(402F)
------------------------------------------------------
x = 2;
-- ** エフェクト等 ** --
kick_f1 = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0, 200 );  --キック〜乱打〜ドロップキック(ef_003)
setEffMoveKey( spep_3 + 0, kick_f1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 402, kick_f1, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kick_f1, -1.0, 1.0 );
setEffScaleKey( spep_3 + 402, kick_f1, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_f1, 0 );
setEffRotateKey( spep_3 + 402, kick_f1, 0 );
setEffAlphaKey( spep_3 + 0, kick_f1, 255 );
setEffAlphaKey( spep_3 + 401 -x, kick_f1, 255 );
setEffAlphaKey( spep_3 + 402 -x, kick_f1, 0 );

kick_f2 = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0, 100 );  --キック〜乱打〜ドロップキック(ef_004)
setEffMoveKey( spep_3 + 0, kick_f2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 402, kick_f2, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kick_f2, -1.0, 1.0 );
setEffScaleKey( spep_3 + 402, kick_f2, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_f2, 0 );
setEffRotateKey( spep_3 + 402, kick_f2, 0 );
setEffAlphaKey( spep_3 + 0, kick_f2, 255 );
setEffAlphaKey( spep_3 + 401 -x, kick_f2, 255 );
setEffAlphaKey( spep_3 + 402 -x, kick_f2, 0 );

kick_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --キック〜乱打〜ドロップキック(ef_005)
setEffMoveKey( spep_3 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 402, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kick_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 402, kick_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_b, 0 );
setEffRotateKey( spep_3 + 402, kick_b, 0 );
setEffAlphaKey( spep_3 + 0, kick_b, 255 );
setEffAlphaKey( spep_3 + 402, kick_b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 404, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--敵に蹴り向かう
setSeVolume( spep_3 + 0, 1183, 10 );
setSeVolume( spep_3 + 2, 1183, 42 );
setSeVolume( spep_3 + 4, 1183, 86 );
setSeVolume( spep_3 + 5, 1183, 151 );
setSeVolume( spep_3 + 44, 1183, 151 );
setSeVolume( spep_3 + 48, 1183, 120 );
setSeVolume( spep_3 + 52, 1183, 98 );
setSeVolume( spep_3 + 56, 1183, 74 );
setSeVolume( spep_3 + 60, 1183, 48 );
setSeVolume( spep_3 + 62, 1183, 24 );
setSeVolume( spep_3 + 64, 1183, 10 );
setSeVolume( spep_3 + 65, 1183, 0 );
stopSe(spep_3 + 65, SE1, 0 );

setSeVolume( spep_3 + 0, 1072, 10 );
setSeVolume( spep_3 + 2, 1072, 42 );
setSeVolume( spep_3 + 4, 1072, 87 );
setSeVolume( spep_3 + 6, 1072, 110 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 14; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe(SP_dodge - 12, SE1, 0 );
stopSe(SP_dodge - 12, SE2, 0 );

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
setDisp( spep_3 -3 + 32, 1, 1 );
setDisp( spep_3 -3 + 162, 1, 0 );
setDisp( spep_3 -3 + 206, 1, 1 );
setDisp( spep_3 -3 + 310, 1, 0 );
setDisp( spep_3 -3 + 340, 1, 1 );
changeAnime( spep_3 -3 + 32, 1, 100 );
changeAnime( spep_3 -3 + 42, 1, 107 );
changeAnime( spep_3 -3 + 206, 1, 6 );
changeAnime( spep_3 -3 + 210, 1, 8 );
changeAnime( spep_3 -3 + 216, 1, 7 );
changeAnime( spep_3 -3 + 222, 1, 6 );
changeAnime( spep_3 -3 + 234, 1, 8 );
changeAnime( spep_3 -3 + 240, 1, 7 );
changeAnime( spep_3 -3 + 246, 1, 6 );
changeAnime( spep_3 -3 + 258, 1, 8 );
changeAnime( spep_3 -3 + 264, 1, 7 );
changeAnime( spep_3 -3 + 270, 1, 6 );
changeAnime( spep_3 -3 + 302, 1, 8 );
changeAnime( spep_3 -3 + 340, 1, 107 );
changeAnime( spep_3 -3 + 344, 1, 105 );

setMoveKey( spep_3 -3 + 32, 1, -1, -368.1 , 0 );
setMoveKey( spep_3 -3 + 41, 1, -1, -368.1 , 0 );
setMoveKey( spep_3 -3 + 42, 1, -66.8, -236.2 , 0 );
setMoveKey( spep_3 -3 + 44, 1, -63.8, -207.8 , 0 );
setMoveKey( spep_3 -3 + 46, 1, -92.3, -245.6 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -45, -249.8 , 0 );
setMoveKey( spep_3 -3 + 50, 1, -90.6, -231.7 , 0 );
setMoveKey( spep_3 -3 + 52, 1, -45.5, -244.5 , 0 );
setMoveKey( spep_3 -3 + 54, 1, -62.6, -215.2 , 0 );
setMoveKey( spep_3 -3 + 56, 1, -48.9, -227.3 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 15.1, -205.3 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 14.3, -206.4 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 110.9, -266.7 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 131.9, -284.4 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 155, -279.5 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 163.2, -289.1 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 167.3, -297 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 171.3, -288.5 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 178.2, -293.5 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 182.6, -294.9 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 189.2, -299.6 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 191.6, -300.5 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 199.1, -304.2 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 205.1, -307.7 , 0 );
setMoveKey( spep_3 -3 + 85, 1, 205.1, -307.7 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 3.4, -111.7 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 8.1, -114.8 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 12.8, -117.9 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 17.4, -121 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 22.1, -124.1 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 26.8, -127.2 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 31.5, -130.3 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 36.1, -133.4 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 40.8, -136.5 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 45.5, -139.6 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 50.1, -142.7 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 54.8, -145.7 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 59.5, -148.8 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 64.2, -151.9 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 68.8, -155 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 73.5, -158.1 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 78.2, -161.2 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 82.9, -164.3 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 87.5, -167.4 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 92.2, -170.5 , 0 );
setMoveKey( spep_3 -3 + 125, 1, 92.2, -170.5 , 0 );
setMoveKey( spep_3 -3 + 126, 1, -594.5, 190.3 , 0 );
setMoveKey( spep_3 -3 + 128, 1, -581.9, 178.9 , 0 );
setMoveKey( spep_3 -3 + 130, 1, -570.1, 168.1 , 0 );
setMoveKey( spep_3 -3 + 132, 1, -559.1, 158.1 , 0 );
setMoveKey( spep_3 -3 + 134, 1, -548.8, 148.8 , 0 );
setMoveKey( spep_3 -3 + 136, 1, -539.3, 140.1 , 0 );
setMoveKey( spep_3 -3 + 138, 1, -530.6, 132.2 , 0 );
setMoveKey( spep_3 -3 + 140, 1, -522.6, 124.9 , 0 );
setMoveKey( spep_3 -3 + 142, 1, -515.3, 118.3 , 0 );
setMoveKey( spep_3 -3 + 144, 1, -508.9, 112.4 , 0 );
setMoveKey( spep_3 -3 + 146, 1, -503.2, 107.2 , 0 );
setMoveKey( spep_3 -3 + 148, 1, -498.2, 102.7 , 0 );
setMoveKey( spep_3 -3 + 150, 1, -494, 98.9 , 0 );
setMoveKey( spep_3 -3 + 152, 1, -490.6, 95.8 , 0 );
setMoveKey( spep_3 -3 + 154, 1, -487.9, 93.4 , 0 );
setMoveKey( spep_3 -3 + 156, 1, -486, 91.7 , 0 );
setMoveKey( spep_3 -3 + 158, 1, -484.9, 90.6 , 0 );
setMoveKey( spep_3 -3 + 160, 1, -484.5, 90.3 , 0 );
setMoveKey( spep_3 -3 + 162, 1, -484.5, 90.3 , 0 );
setMoveKey( spep_3 -3 + 206, 1, -124.6, 125.7 , 0 );
setMoveKey( spep_3 -3 + 208, 1, -124.6, 125.7 , 0 );
setMoveKey( spep_3 -3 + 209, 1, -124.6, 125.7 , 0 );
setMoveKey( spep_3 -3 + 210, 1, -142.8, 56.4 , 0 );
setMoveKey( spep_3 -3 + 212, 1, -192.6, 102.7 , 0 );
setMoveKey( spep_3 -3 + 214, 1, -195.1, 110.4 , 0 );
setMoveKey( spep_3 -3 + 215, 1, -195.1, 110.4 , 0 );
setMoveKey( spep_3 -3 + 216, 1, -148.5, -103.1 , 0 );
setMoveKey( spep_3 -3 + 218, 1, -146.4, -121.6 , 0 );
setMoveKey( spep_3 -3 + 220, 1, -155.4, -113.9 , 0 );
setMoveKey( spep_3 -3 + 221, 1, -155.4, -113.9 , 0 );
setMoveKey( spep_3 -3 + 222, 1, -120, 0.3 , 0 );
setMoveKey( spep_3 -3 + 224, 1, -117.7, 1.7 , 0 );
setMoveKey( spep_3 -3 + 226, 1, -165.1, 2.6 , 0 );
setMoveKey( spep_3 -3 + 228, 1, -129.5, 122.2 , 0 );
setMoveKey( spep_3 -3 + 230, 1, -152, 139.7 , 0 );
setMoveKey( spep_3 -3 + 232, 1, -152.8, 139.2 , 0 );
setMoveKey( spep_3 -3 + 233, 1, -152.8, 139.2 , 0 );
setMoveKey( spep_3 -3 + 234, 1, -154.2, 61.7 , 0 );
setMoveKey( spep_3 -3 + 236, 1, -193.9, 97.1 , 0 );
setMoveKey( spep_3 -3 + 238, 1, -196.9, 101.3 , 0 );
setMoveKey( spep_3 -3 + 239, 1, -196.9, 101.3 , 0 );
setMoveKey( spep_3 -3 + 240, 1, -149.1, -83.5 , 0 );
setMoveKey( spep_3 -3 + 242, 1, -149, -125.5 , 0 );
setMoveKey( spep_3 -3 + 244, 1, -152.1, -127.7 , 0 );
setMoveKey( spep_3 -3 + 245, 1, -152.1, -127.7 , 0 );
setMoveKey( spep_3 -3 + 246, 1, -108.5, 6.1 , 0 );
setMoveKey( spep_3 -3 + 248, 1, -175.1, 7.5 , 0 );
setMoveKey( spep_3 -3 + 250, 1, -170.5, 5.3 , 0 );
setMoveKey( spep_3 -3 + 252, 1, -133.7, 129 , 0 );
setMoveKey( spep_3 -3 + 254, 1, -158.5, 127.5 , 0 );
setMoveKey( spep_3 -3 + 256, 1, -153.3, 126.3 , 0 );
setMoveKey( spep_3 -3 + 257, 1, -153.3, 126.3 , 0 );
setMoveKey( spep_3 -3 + 258, 1, -149.3, 64.5 , 0 );
setMoveKey( spep_3 -3 + 260, 1, -200, 89.5 , 0 );
setMoveKey( spep_3 -3 + 262, 1, -185.6, 100 , 0 );
setMoveKey( spep_3 -3 + 263, 1, -185.6, 100 , 0 );
setMoveKey( spep_3 -3 + 264, 1, -154, -95.5 , 0 );
setMoveKey( spep_3 -3 + 266, 1, -155.2, -128.1 , 0 );
setMoveKey( spep_3 -3 + 268, 1, -156.9, -128.2 , 0 );
setMoveKey( spep_3 -3 + 269, 1, -156.9, -128.2 , 0 );
setMoveKey( spep_3 -3 + 270, 1, -102.1, 10.2 , 0 );
setMoveKey( spep_3 -3 + 272, 1, -177.8, 0 , 0 );
setMoveKey( spep_3 -3 + 274, 1, -171.2, 4.7 , 0 );
setMoveKey( spep_3 -3 + 276, 1, -135.7, 65 , 0 );
setMoveKey( spep_3 -3 + 278, 1, -169.4, 72.2 , 0 );
setMoveKey( spep_3 -3 + 280, 1, -177.3, 62 , 0 );
setMoveKey( spep_3 -3 + 282, 1, -176.3, 64.8 , 0 );
setMoveKey( spep_3 -3 + 284, 1, -191.6, 66.9 , 0 );
setMoveKey( spep_3 -3 + 286, 1, -189, 64.2 , 0 );
setMoveKey( spep_3 -3 + 288, 1, -194.4, 63.5 , 0 );
setMoveKey( spep_3 -3 + 290, 1, -199.7, 62.8 , 0 );
setMoveKey( spep_3 -3 + 292, 1, -205.1, 62.1 , 0 );
setMoveKey( spep_3 -3 + 294, 1, -210.4, 61.4 , 0 );
setMoveKey( spep_3 -3 + 296, 1, -215.8, 60.8 , 0 );
setMoveKey( spep_3 -3 + 298, 1, -221.1, 60.1 , 0 );
setMoveKey( spep_3 -3 + 300, 1, -226.5, 59.4 , 0 );
setMoveKey( spep_3 -3 + 301, 1, -226.5, 59.4 , 0 );
setMoveKey( spep_3 -3 + 302, 1, -244.1, -4 , 0 );
setMoveKey( spep_3 -3 + 304, 1, -257.3, -29 , 0 );
setMoveKey( spep_3 -3 + 306, 1, -443.7, -16.4 , 0 );
setMoveKey( spep_3 -3 + 308, 1, -463.7, 30.2 , 0 );
setMoveKey( spep_3 -3 + 310, 1, -463.7, 30.2 , 0 );
setMoveKey( spep_3 -3 + 340, 1, 117.2, -1063 , 0 );
setMoveKey( spep_3 -3 + 343, 1, 117.2, -1063 , 0 );
setMoveKey( spep_3 -3 + 344, 1, -42.1, 97.4 , 0 );
setMoveKey( spep_3 -3 + 346, 1, -49.7, 106.9 , 0 );
setMoveKey( spep_3 -3 + 348, 1, -58.4, 118.1 , 0 );
setMoveKey( spep_3 -3 + 350, 1, -68.6, 130.4 , 0 );
setMoveKey( spep_3 -3 + 352, 1, -104.1, 116.9 , 0 );
setMoveKey( spep_3 -3 + 354, 1, -133.6, 105.8 , 0 );
setMoveKey( spep_3 -3 + 356, 1, -155.5, 97.6 , 0 );
setMoveKey( spep_3 -3 + 358, 1, -170.9, 91.8 , 0 );
setMoveKey( spep_3 -3 + 360, 1, -181.9, 87.7 , 0 );
setMoveKey( spep_3 -3 + 362, 1, -189.8, 84.7 , 0 );
setMoveKey( spep_3 -3 + 364, 1, -195.6, 82.5 , 0 );
setMoveKey( spep_3 -3 + 366, 1, -200, 80.8 , 0 );
setMoveKey( spep_3 -3 + 368, 1, -203.4, 79.6 , 0 );
setMoveKey( spep_3 -3 + 370, 1, -206, 78.6 , 0 );
setMoveKey( spep_3 -3 + 372, 1, -208, 77.8 , 0 );
setMoveKey( spep_3 -3 + 374, 1, -209.6, 77.2 , 0 );
setMoveKey( spep_3 -3 + 376, 1, -210.9, 76.7 , 0 );
setMoveKey( spep_3 -3 + 378, 1, -211.9, 76.4 , 0 );
setMoveKey( spep_3 -3 + 380, 1, -212.7, 76.1 , 0 );
setMoveKey( spep_3 -3 + 382, 1, -213.4, 75.8 , 0 );
setMoveKey( spep_3 -3 + 384, 1, -213.9, 75.6 , 0 );
setMoveKey( spep_3 -3 + 386, 1, -214.2, 75.5 , 0 );
setMoveKey( spep_3 -3 + 388, 1, -214.6, 75.4 , 0 );
setMoveKey( spep_3 -3 + 390, 1, -214.8, 75.3 , 0 );
setMoveKey( spep_3 -3 + 392, 1, -215, 75.2 , 0 );
setMoveKey( spep_3 -3 + 394, 1, -215.1, 75.2 , 0 );
setMoveKey( spep_3 -3 + 396, 1, -215.2, 75.1 , 0 );
setMoveKey( spep_3 -3 + 398, 1, -215.3, 75.1 , 0 );
setMoveKey( spep_3 -3 + 400, 1, -215.3, 75.1 , 0 );
setMoveKey( spep_3 -3 + 402, 1, -215.4, 75.1 , 0 );
--setMoveKey( spep_3 + 401, 1, -215.4, 75.1 , 0 );

setScaleKey( spep_3 -3 + 32, 1, 7.35, 7.35 );
setScaleKey( spep_3 -3 + 41, 1, 7.35, 7.35 );
setScaleKey( spep_3 -3 + 42, 1, 1.8, 1.8 );
setScaleKey( spep_3 -3 + 84, 1, 1.8, 1.8 );
setScaleKey( spep_3 -3 + 85, 1, 1.8, 1.8 );
setScaleKey( spep_3 -3 + 86, 1, 0.65, 0.65 );
setScaleKey( spep_3 -3 + 100, 1, 0.65, 0.65 );
setScaleKey( spep_3 -3 + 102, 1, 0.64, 0.64 );
setScaleKey( spep_3 -3 + 116, 1, 0.64, 0.64 );
setScaleKey( spep_3 -3 + 118, 1, 0.63, 0.63 );
setScaleKey( spep_3 -3 + 124, 1, 0.63, 0.63 );
setScaleKey( spep_3 -3 + 125, 1, 0.63, 0.63 );
setScaleKey( spep_3 -3 + 126, 1, 2, 2 );
setScaleKey( spep_3 -3 + 162, 1, 2, 2 );
setScaleKey( spep_3 -3 + 206, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 208, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 209, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 210, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 214, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 215, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 216, 1, 0.6, 0.6 );
setScaleKey( spep_3 -3 + 218, 1, 0.61, 0.61 );
setScaleKey( spep_3 -3 + 220, 1, 0.61, 0.61 );
setScaleKey( spep_3 -3 + 221, 1, 0.61, 0.61 );
setScaleKey( spep_3 -3 + 222, 1, 1.51, 1.51 );
setScaleKey( spep_3 -3 + 232, 1, 1.51, 1.51 );
setScaleKey( spep_3 -3 + 233, 1, 1.51, 1.51 );
setScaleKey( spep_3 -3 + 234, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 238, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 239, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 240, 1, 0.6, 0.6 );
setScaleKey( spep_3 -3 + 242, 1, 0.61, 0.61 );
setScaleKey( spep_3 -3 + 244, 1, 0.61, 0.61 );
setScaleKey( spep_3 -3 + 245, 1, 0.61, 0.61 );
setScaleKey( spep_3 -3 + 246, 1, 1.51, 1.51 );
setScaleKey( spep_3 -3 + 256, 1, 1.51, 1.51 );
setScaleKey( spep_3 -3 + 257, 1, 1.51, 1.51 );
setScaleKey( spep_3 -3 + 258, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 262, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 263, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 264, 1, 0.6, 0.6 );
setScaleKey( spep_3 -3 + 266, 1, 0.61, 0.61 );
setScaleKey( spep_3 -3 + 269, 1, 0.61, 0.61 );
setScaleKey( spep_3 -3 + 270, 1, 1.51, 1.51 );
setScaleKey( spep_3 -3 + 301, 1, 1.51, 1.51 );
setScaleKey( spep_3 -3 + 302, 1, 1.51, 1.51 );
setScaleKey( spep_3 -3 + 310, 1, 1.51, 1.51 );
setScaleKey( spep_3 -3 + 340, 1, 6.3, 6.3 );
setScaleKey( spep_3 -3 + 343, 1, 6.3, 6.3 );
setScaleKey( spep_3 -3 + 344, 1, 7.86, 7.86 );
setScaleKey( spep_3 -3 + 346, 1, 6.58, 6.58 );
setScaleKey( spep_3 -3 + 348, 1, 5.3, 5.3 );
setScaleKey( spep_3 -3 + 350, 1, 4.02, 4.02 );
setScaleKey( spep_3 -3 + 352, 1, 3.07, 3.07 );
setScaleKey( spep_3 -3 + 354, 1, 2.29, 2.29 );
setScaleKey( spep_3 -3 + 356, 1, 1.72, 1.72 );
setScaleKey( spep_3 -3 + 358, 1, 1.31, 1.31 );
setScaleKey( spep_3 -3 + 360, 1, 1.03, 1.03 );
setScaleKey( spep_3 -3 + 362, 1, 0.83, 0.83 );
setScaleKey( spep_3 -3 + 364, 1, 0.67, 0.67 );
setScaleKey( spep_3 -3 + 366, 1, 0.56, 0.56 );
setScaleKey( spep_3 -3 + 368, 1, 0.47, 0.47 );
setScaleKey( spep_3 -3 + 370, 1, 0.41, 0.41 );
setScaleKey( spep_3 -3 + 372, 1, 0.35, 0.35 );
setScaleKey( spep_3 -3 + 374, 1, 0.31, 0.31 );
setScaleKey( spep_3 -3 + 376, 1, 0.28, 0.28 );
setScaleKey( spep_3 -3 + 378, 1, 0.25, 0.25 );
setScaleKey( spep_3 -3 + 380, 1, 0.23, 0.23 );
setScaleKey( spep_3 -3 + 382, 1, 0.22, 0.22 );
setScaleKey( spep_3 -3 + 384, 1, 0.2, 0.2 );
setScaleKey( spep_3 -3 + 386, 1, 0.19, 0.19 );
setScaleKey( spep_3 -3 + 388, 1, 0.19, 0.19 );
setScaleKey( spep_3 -3 + 390, 1, 0.18, 0.18 );
setScaleKey( spep_3 -3 + 392, 1, 0.18, 0.18 );
setScaleKey( spep_3 -3 + 394, 1, 0.17, 0.17 );
setScaleKey( spep_3 + 399, 1, 0.17, 0.17 );
--setScaleKey( spep_3 + 401, 1, 0.17, 0.17 );

setRotateKey( spep_3 -3 + 32, 1, 11.5 );
setRotateKey( spep_3 -3 + 41, 1, 11.5 );
setRotateKey( spep_3 -3 + 42, 1, -75 );
setRotateKey( spep_3 -3 + 56, 1, -75 );
setRotateKey( spep_3 -3 + 58, 1, -59 );
setRotateKey( spep_3 -3 + 84, 1, -59 );
setRotateKey( spep_3 -3 + 85, 1, -59 );
setRotateKey( spep_3 -3 + 86, 1, -21.6 );
setRotateKey( spep_3 -3 + 88, 1, -20.5 );
setRotateKey( spep_3 -3 + 90, 1, -19.4 );
setRotateKey( spep_3 -3 + 92, 1, -18.3 );
setRotateKey( spep_3 -3 + 94, 1, -17.2 );
setRotateKey( spep_3 -3 + 96, 1, -16.2 );
setRotateKey( spep_3 -3 + 98, 1, -15.1 );
setRotateKey( spep_3 -3 + 100, 1, -14 );
setRotateKey( spep_3 -3 + 102, 1, -12.9 );
setRotateKey( spep_3 -3 + 104, 1, -11.8 );
setRotateKey( spep_3 -3 + 106, 1, -10.7 );
setRotateKey( spep_3 -3 + 108, 1, -9.6 );
setRotateKey( spep_3 -3 + 110, 1, -8.5 );
setRotateKey( spep_3 -3 + 112, 1, -7.4 );
setRotateKey( spep_3 -3 + 114, 1, -6.3 );
setRotateKey( spep_3 -3 + 116, 1, -5.3 );
setRotateKey( spep_3 -3 + 118, 1, -4.2 );
setRotateKey( spep_3 -3 + 120, 1, -3.1 );
setRotateKey( spep_3 -3 + 122, 1, -2 );
setRotateKey( spep_3 -3 + 124, 1, -0.9 );
setRotateKey( spep_3 -3 + 125, 1, -0.9 );
setRotateKey( spep_3 -3 + 126, 1, 17.1 );
setRotateKey( spep_3 -3 + 162, 1, 17.1 );
setRotateKey( spep_3 -3 + 206, 1, 42.8 );
setRotateKey( spep_3 -3 + 208, 1, 42.8 );
setRotateKey( spep_3 -3 + 209, 1, 42.8 );
setRotateKey( spep_3 -3 + 210, 1, 30.6 );
setRotateKey( spep_3 -3 + 214, 1, 30.6 );
setRotateKey( spep_3 -3 + 215, 1, 30.6 );
setRotateKey( spep_3 -3 + 216, 1, 28.8 );
setRotateKey( spep_3 -3 + 218, 1, 16.8 );
setRotateKey( spep_3 -3 + 220, 1, 16.8 );
setRotateKey( spep_3 -3 + 221, 1, 16.8 );
setRotateKey( spep_3 -3 + 222, 1, 46.1 );
setRotateKey( spep_3 -3 + 224, 1, 46.1 );
setRotateKey( spep_3 -3 + 226, 1, 28.4 );
setRotateKey( spep_3 -3 + 228, 1, 58.6 );
setRotateKey( spep_3 -3 + 230, 1, 49.1 );
setRotateKey( spep_3 -3 + 232, 1, 49.1 );
setRotateKey( spep_3 -3 + 233, 1, 49.1 );
setRotateKey( spep_3 -3 + 234, 1, 30.6 );
setRotateKey( spep_3 -3 + 238, 1, 30.6 );
setRotateKey( spep_3 -3 + 239, 1, 30.6 );
setRotateKey( spep_3 -3 + 240, 1, 28.8 );
setRotateKey( spep_3 -3 + 242, 1, 16.8 );
setRotateKey( spep_3 -3 + 244, 1, 16.8 );
setRotateKey( spep_3 -3 + 245, 1, 16.8 );
setRotateKey( spep_3 -3 + 246, 1, 46.1 );
setRotateKey( spep_3 -3 + 248, 1, 28.4 );
setRotateKey( spep_3 -3 + 250, 1, 28.4 );
setRotateKey( spep_3 -3 + 252, 1, 58.6 );
setRotateKey( spep_3 -3 + 254, 1, 49.1 );
setRotateKey( spep_3 -3 + 256, 1, 49.1 );
setRotateKey( spep_3 -3 + 257, 1, 49.1 );
setRotateKey( spep_3 -3 + 258, 1, 30.6 );
setRotateKey( spep_3 -3 + 262, 1, 30.6 );
setRotateKey( spep_3 -3 + 263, 1, 30.6 );
setRotateKey( spep_3 -3 + 264, 1, 28.8 );
setRotateKey( spep_3 -3 + 266, 1, 16.8 );
setRotateKey( spep_3 -3 + 269, 1, 16.8 );
setRotateKey( spep_3 -3 + 270, 1, 46.1 );
setRotateKey( spep_3 -3 + 272, 1, 28.4 );
setRotateKey( spep_3 -3 + 274, 1, 28.4 );
setRotateKey( spep_3 -3 + 276, 1, 49.2 );
setRotateKey( spep_3 -3 + 278, 1, 33.2 );
setRotateKey( spep_3 -3 + 280, 1, 32 );
setRotateKey( spep_3 -3 + 282, 1, 30.7 );
setRotateKey( spep_3 -3 + 284, 1, 29.5 );
setRotateKey( spep_3 -3 + 286, 1, 28.3 );
setRotateKey( spep_3 -3 + 288, 1, 27.1 );
setRotateKey( spep_3 -3 + 290, 1, 25.8 );
setRotateKey( spep_3 -3 + 292, 1, 24.6 );
setRotateKey( spep_3 -3 + 294, 1, 23.4 );
setRotateKey( spep_3 -3 + 296, 1, 22.2 );
setRotateKey( spep_3 -3 + 298, 1, 20.9 );
setRotateKey( spep_3 -3 + 300, 1, 19.7 );
setRotateKey( spep_3 -3 + 301, 1, 19.7 );
setRotateKey( spep_3 -3 + 302, 1, 9.9 );
setRotateKey( spep_3 -3 + 310, 1, 9.9 );
setRotateKey( spep_3 -3 + 340, 1, -128 );
setRotateKey( spep_3 -3 + 343, 1, -128 );
setRotateKey( spep_3 -3 + 344, 1, -20 );
setRotateKey( spep_3 -3 + 346, 1, -34.7 );
setRotateKey( spep_3 -3 + 348, 1, -49.3 );
setRotateKey( spep_3 -3 + 350, 1, -64 );
setRotateKey( spep_3 -3 + 352, 1, -69.4 );
setRotateKey( spep_3 -3 + 354, 1, -73.9 );
setRotateKey( spep_3 -3 + 356, 1, -77.2 );
setRotateKey( spep_3 -3 + 358, 1, -79.6 );
setRotateKey( spep_3 -3 + 360, 1, -81.2 );
setRotateKey( spep_3 -3 + 362, 1, -82.4 );
setRotateKey( spep_3 -3 + 364, 1, -83.3 );
setRotateKey( spep_3 -3 + 366, 1, -83.9 );
setRotateKey( spep_3 -3 + 368, 1, -84.4 );
setRotateKey( spep_3 -3 + 370, 1, -84.8 );
setRotateKey( spep_3 -3 + 372, 1, -85.1 );
setRotateKey( spep_3 -3 + 374, 1, -85.3 );
setRotateKey( spep_3 -3 + 376, 1, -85.5 );
setRotateKey( spep_3 -3 + 378, 1, -85.7 );
setRotateKey( spep_3 -3 + 380, 1, -85.8 );
setRotateKey( spep_3 -3 + 382, 1, -85.9 );
setRotateKey( spep_3 -3 + 384, 1, -86 );
setRotateKey( spep_3 -3 + 386, 1, -86 );
setRotateKey( spep_3 -3 + 388, 1, -86.1 );
setRotateKey( spep_3 -3 + 392, 1, -86.1 );
setRotateKey( spep_3 -3 + 394, 1, -86.2 );
setRotateKey( spep_3 + 399, 1, -86.2 );
--setRotateKey( spep_3 + 401, 1, -86.2 );

-- ** 音 ** --
--敵に蹴り向かう
SE3 = playSe( spep_3 + 5, 1007 );
setSeVolume( spep_3 + 5, 1007, 110 );

SE4 = playSe( spep_3 + 5, 9 );
setSeVolume( spep_3 + 5, 9, 0 );
setSeVolume( spep_3 + 8, 9, 16 );
setSeVolume( spep_3 + 10, 9, 32 );
setSeVolume( spep_3 + 12, 9, 54 );
setSeVolume( spep_3 + 14, 9, 60 );
setSeVolume( spep_3 + 16, 9, 68 );
setSeVolume( spep_3 + 18, 9, 76 );
setSeVolume( spep_3 + 20, 9, 84 );
setSeVolume( spep_3 + 22, 9, 92 );
setSeVolume( spep_3 + 24, 9, 97 );
setSeVolume( spep_3 + 25, 9, 110 );

--蹴りヒット
playSe( spep_3 + 40, 1013 );
setSeVolume( spep_3 + 40, 1013, 110 );
playSe( spep_3 + 44, 1110 );
setSeVolume( spep_3 + 44, 1110, 110 );
playSe( spep_3 + 44, 1010 );
setSeVolume( spep_3 + 44, 1010, 110 );
SE5 = playSe( spep_3 + 45, 1182 );
setSeVolume( spep_3 + 45, 1182, 198 );
setSeVolume( spep_3 + 49, 1182, 198 );
setSeVolume( spep_3 + 50, 1182, 155 );
setSeVolume( spep_3 + 51, 1182, 110 );
setSeVolume( spep_3 + 59, 1182, 110 );
setSeVolume( spep_3 + 66, 1182, 100 );
setSeVolume( spep_3 + 72, 1182, 94 );
setSeVolume( spep_3 + 78, 1182, 78 );
setSeVolume( spep_3 + 84, 1182, 46 );
setSeVolume( spep_3 + 92, 1182, 14 );
setSeVolume( spep_3 + 97, 1182, 0 );
stopSe( spep_3 + 97, SE5, 0 );

--瞬間移動
playSe( spep_3 + 111, 1109 );
setSeVolume( spep_3 + 111, 1109, 110 );
playSe( spep_3 + 151, 1109 );
setSeVolume( spep_3 + 151, 1109, 110 );

--腕振りかぶり
playSe( spep_3 + 170, 1003 );
setSeVolume( spep_3 + 170, 1003, 110 );

--ラッシュ
playSe( spep_3 + 196, 1004 );
setSeVolume( spep_3 + 196, 1004, 110 );
playSe( spep_3 + 201, 1189 );
setSeVolume( spep_3 + 201, 1189, 110 );
playSe( spep_3 + 205, 1009 );
setSeVolume( spep_3 + 205, 1009, 99 );
playSe( spep_3 + 206, 1110 );
setSeVolume( spep_3 + 206, 1110, 110 );
playSe( spep_3 + 216, 1009 );
setSeVolume( spep_3 + 216, 1009, 110 );
playSe( spep_3 + 217, 1009 );
setSeVolume( spep_3 + 217, 1009, 89 );
playSe( spep_3 + 226, 1012 );
setSeVolume( spep_3 + 226, 1012, 89 );
playSe( spep_3 + 227, 1110 );
setSeVolume( spep_3 + 227, 1110, 99 );
playSe( spep_3 + 236, 1009 );
setSeVolume( spep_3 + 236, 1009, 110 );
playSe( spep_3 + 236, 1010 );
setSeVolume( spep_3 + 236, 1010, 110 );
playSe( spep_3 + 246, 1001 );
setSeVolume( spep_3 + 246, 1001, 110 );
playSe( spep_3 + 248, 1110 );
setSeVolume( spep_3 + 248, 1110, 81 );
playSe( spep_3 + 258, 1009 );
setSeVolume( spep_3 + 258, 1009, 81 );
playSe( spep_3 + 259, 1110 );
setSeVolume( spep_3 + 259, 1110, 99 );
playSe( spep_3 + 268, 1009 );
setSeVolume( spep_3 + 268, 1009, 110 );
playSe( spep_3 + 269, 1110 );
setSeVolume( spep_3 + 269, 1110, 110 );

--横蹴り
playSe( spep_3 + 305, 1110 );
setSeVolume( spep_3 + 305, 1110, 110 );
playSe( spep_3 + 305, 1187 );
setSeVolume( spep_3 + 305, 1187, 81 );
playSe( spep_3 + 305, 1182 );
setSeVolume( spep_3 + 305, 1182, 151 );
setSeVolume( spep_3 + 311, 1182, 151 );
setSeVolume( spep_3 + 312, 1182, 110 );

--敵飛んでいく
SE6 = playSe( spep_3 + 329, 1183 );
setSeVolume( spep_3 + 329, 1183, 89 );

SE7 = playSe( spep_3 + 329, 1121 );
setSeVolume( spep_3 + 329, 1121, 60 );

--ラスト敵が飛んでいく
SE8 = playSe( spep_3 + 338, 1121 );
setSeVolume( spep_3 + 338, 1121, 110 );

SE9 = playSe( spep_3 + 395, 1183 );
setSeVolume( spep_3 + 395, 1183, 110 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 402 -x;

------------------------------------------------------
-- 膝蹴りで敵を叩き落とす(236F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --膝蹴りで敵を叩き落とす(ef_006)
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 236, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 236, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 236, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 236, finish_f, 255 );

finish_b = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --膝蹴りで敵を叩き落とす(ef_007)
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 236, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 236, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 236, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 236, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 32, 1, 0 );
setDisp( spep_4 -3 + 64, 1, 1 );
setDisp( spep_4 -3 + 100, 1, 0 );
changeAnime( spep_4 + 0, 1, 6 );
changeAnime( spep_4 -3 + 18, 1, 107 );
changeAnime( spep_4 -3 + 64, 1, 108 );

setMoveKey( spep_4 + 0, 1, 77, -10.8 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 55.2, -17.5 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 36.8, -23.1 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 21.8, -27.8 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 10, -31.4 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 1.7, -34 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -3.3, -35.5 , 0 );
setMoveKey( spep_4 -3 + 17, 1, -5, -36 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -37.9, -9.3 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -21, -65.2 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 19.1, -172.4 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -27, -142.7 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 89, -275.9 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 137.7, -516.5 , 0 );
setMoveKey( spep_4 -3 + 31, 1, 286.7, -864.9 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 286.7, -864.9 , 0 );
setMoveKey( spep_4 -3 + 64, 1, -866, 551.1 , 0 );
setMoveKey( spep_4 -3 + 66, 1, -105.6, 9.6 , 0 );
setMoveKey( spep_4 -3 + 68, 1, -32.4, -42.5 , 0 );
setMoveKey( spep_4 -3 + 70, 1, -18.7, -52.4 , 0 );
setMoveKey( spep_4 -3 + 72, 1, -11.7, -57.3 , 0 );
setMoveKey( spep_4 -3 + 74, 1, -7.7, -60.3 , 0 );
setMoveKey( spep_4 -3 + 76, 1, -5.3, -62 , 0 );
setMoveKey( spep_4 -3 + 78, 1, -3.8, -63 , 0 );
setMoveKey( spep_4 -3 + 80, 1, -2.8, -63.6 , 0 );
setMoveKey( spep_4 -3 + 82, 1, -2.3, -64 , 0 );
setMoveKey( spep_4 -3 + 84, 1, -2, -64.1 , 0 );
setMoveKey( spep_4 -3 + 86, 1, -1.9, -64.2 , 0 );
setMoveKey( spep_4 -3 + 88, 1, -1.7, -64.3 , 0 );
setMoveKey( spep_4 -3 + 90, 1, -1.7, -64.3 , 0 );
setMoveKey( spep_4 -3 + 92, 1, -1.6, -64.3 , 0 );
setMoveKey( spep_4 -3 + 96, 1, -1.6, -64.3 , 0 );
setMoveKey( spep_4 -3 + 98, 1, -1.5, -64.3 , 0 );
setMoveKey( spep_4 -3 + 100, 1, -1.6, -64.4 , 0 );

setScaleKey( spep_4 + 0, 1, 1.98, 1.98 );
setScaleKey( spep_4 -3 + 17, 1, 1.98, 1.98 );
setScaleKey( spep_4 -3 + 18, 1, 0.58, 0.58 );
setScaleKey( spep_4 -3 + 20, 1, 0.7, 0.7 );
setScaleKey( spep_4 -3 + 22, 1, 0.82, 0.82 );
setScaleKey( spep_4 -3 + 24, 1, 0.94, 0.94 );
setScaleKey( spep_4 -3 + 26, 1, 1.22, 1.22 );
setScaleKey( spep_4 -3 + 28, 1, 2.08, 2.08 );
setScaleKey( spep_4 -3 + 31, 1, 3.5, 3.5 );
setScaleKey( spep_4 -3 + 32, 1, 3.5, 3.5 );
setScaleKey( spep_4 -3 + 64, 1, 19.34, 19.34 );
setScaleKey( spep_4 -3 + 66, 1, 2.37, 2.37 );
setScaleKey( spep_4 -3 + 68, 1, 0.75, 0.75 );
setScaleKey( spep_4 -3 + 70, 1, 0.43, 0.43 );
setScaleKey( spep_4 -3 + 72, 1, 0.27, 0.27 );
setScaleKey( spep_4 -3 + 74, 1, 0.19, 0.19 );
setScaleKey( spep_4 -3 + 76, 1, 0.14, 0.14 );
setScaleKey( spep_4 -3 + 78, 1, 0.11, 0.11 );
setScaleKey( spep_4 -3 + 80, 1, 0.08, 0.08 );
setScaleKey( spep_4 -3 + 82, 1, 0.06, 0.06 );
setScaleKey( spep_4 -3 + 84, 1, 0.05, 0.05 );
setScaleKey( spep_4 -3 + 86, 1, 0.03, 0.03 );
setScaleKey( spep_4 -3 + 88, 1, 0.02, 0.02 );
setScaleKey( spep_4 -3 + 90, 1, 0.02, 0.02 );
setScaleKey( spep_4 -3 + 92, 1, 0.01, 0.01 );
setScaleKey( spep_4 -3 + 100, 1, 0.01, 0.01 );

setRotateKey( spep_4 + 0, 1, -36.6 );
setRotateKey( spep_4 -3 + 4, 1, -39.8 );
setRotateKey( spep_4 -3 + 6, 1, -42.5 );
setRotateKey( spep_4 -3 + 8, 1, -44.8 );
setRotateKey( spep_4 -3 + 10, 1, -46.5 );
setRotateKey( spep_4 -3 + 12, 1, -47.7 );
setRotateKey( spep_4 -3 + 14, 1, -48.5 );
setRotateKey( spep_4 -3 + 17, 1, -48.7 );
setRotateKey( spep_4 -3 + 18, 1, 18.7 );
setRotateKey( spep_4 -3 + 20, 1, 19.5 );
setRotateKey( spep_4 -3 + 22, 1, 20.2 );
setRotateKey( spep_4 -3 + 24, 1, 21 );
setRotateKey( spep_4 -3 + 26, 1, 19.8 );
setRotateKey( spep_4 -3 + 28, 1, 16 );
setRotateKey( spep_4 -3 + 31, 1, 9.8 );
setRotateKey( spep_4 -3 + 32, 1, 9.8 );
setRotateKey( spep_4 -3 + 64, 1, 34.9 );
setRotateKey( spep_4 -3 + 82, 1, 34.9 );
setRotateKey( spep_4 -3 + 84, 1, 34.8 );
setRotateKey( spep_4 -3 + 86, 1, 34.7 );
setRotateKey( spep_4 -3 + 88, 1, 34.6 );
setRotateKey( spep_4 -3 + 92, 1, 34.6 );
setRotateKey( spep_4 -3 + 94, 1, 34.5 );
setRotateKey( spep_4 -3 + 100, 1, 34.5 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 234, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--敵飛んでいく
stopSe( spep_4 + 20, SE6, 0 );
stopSe( spep_4 + 20, SE7, 0 );

--ラスト敵が飛んでいく
setSeVolume( spep_4 + 20, 1121, 110 );
setSeVolume( spep_4 + 21, 1121, 0 );
setSeVolume( spep_4 + 48, 1121, 10 );
setSeVolume( spep_4 + 50, 1121, 42 );
setSeVolume( spep_4 + 52, 1121, 68 );
setSeVolume( spep_4 + 54, 1121, 86 );
setSeVolume( spep_4 + 56, 1121, 110 );
stopSe( spep_4 + 130, SE8, 0 );

setSeVolume( spep_4 + 20, 1183, 110 );
setSeVolume( spep_4 + 21, 1183, 0 );
setSeVolume( spep_4 + 48, 1183, 10 );
setSeVolume( spep_4 + 50, 1183, 42 );
setSeVolume( spep_4 + 52, 1183, 68 );
setSeVolume( spep_4 + 54, 1183, 86 );
setSeVolume( spep_4 + 56, 1183, 110 );
stopSe( spep_4 + 130, SE9, 0 );

--瞬間移動
playSe( spep_4 + 4, 1109 );
setSeVolume( spep_4 + 4, 1109, 110 );

--ラスト蹴り
playSe( spep_4 + 26, 1010 );
setSeVolume( spep_4 + 26, 1010, 110 );
playSe( spep_4 + 26, 1120 );
setSeVolume( spep_4 + 26, 1120, 110 );

--地面激突
playSe( spep_4 + 113, 1159 );
setSeVolume( spep_4 + 113, 1159, 110 );

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 118 );
endPhase( spep_4 + 234 );

end