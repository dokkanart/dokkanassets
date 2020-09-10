--超サイヤ人ゴテンクス_スーパーゴーストカミカゼアタック

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
SP_01 = 155368;  --風船を出す
SP_02 = 155369;  --おばけが出現〜おばけが横からフレームイン
SP_03 = 155370;  --おばけ突進〜おばけが光る
SP_04 = 155371;  --おばけ突進〜おばけが光る
SP_05 = 155372;  --爆発

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
-- 風船を出す(106F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --風船を出す(ef_001)
setEffMoveKey( spep_0 + 0, first, 0, 0 , 0 );
setEffMoveKey( spep_0 + 106, first, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first, 1.0, 1.0 );
setEffScaleKey( spep_0 + 106, first, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first, 0 );
setEffRotateKey( spep_0 + 106, first, 0 );
setEffAlphaKey( spep_0 + 0, first, 255 );
setEffAlphaKey( spep_0 + 106, first, 255 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 108, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
--入り
playSe( spep_0 + 0, 1048 );
playSe( spep_0 + 2, 4 );

--おばけを出す
SE0 = playSe( spep_0 + 30, 1112 );
setSeVolume( spep_0 + 30, 1112, 79 );
setSeVolume( spep_0 + 46, 1112, 79 );
setSeVolume( spep_0 + 48, 1112, 48 );
setSeVolume( spep_0 + 50, 1112, 22 );
setSeVolume( spep_0 + 53, 1112, 0 );
stopSe( spep_0 + 53, SE0, 0 );

playSe( spep_0 + 30, 1246 );

SE1 = playSe( spep_0 + 41, 1128 );
stopSe( spep_0 + 95, SE1, 23 );

--おばけ並ぶ
SE2 = playSe( spep_0 + 94, 1118 );
setSeVolume( spep_0 + 94, 1118, 56 );
SE3 = playSe( spep_0 + 94, 1241 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 106;

------------------------------------------------------
-- おばけが出現〜おばけが横からフレームイン(248F)
------------------------------------------------------

-- ** エフェクト等 ** --
ghost = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --おばけが出現〜おばけが横からフレームイン(ef_002)
setEffMoveKey( spep_1 + 0, ghost, 0, 0 , 0 );
setEffMoveKey( spep_1 + 248, ghost, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, ghost, 1.0, 1.0 );
setEffScaleKey( spep_1 + 248, ghost, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, ghost, 0 );
setEffRotateKey( spep_1 + 248, ghost, 0 );
setEffAlphaKey( spep_1 + 0, ghost, 255 );
setEffAlphaKey( spep_1 + 248, ghost, 255 );

spep_x = spep_1 + 124;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9 -20, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9 -20, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9 -20, 515.5 , 0 );

setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );

setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 背景 ** --
entryFadeBg( spep_1 + 0, 0, 250, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

--おばけ並ぶ
stopSe( spep_1 + 78, SE2, 0 );
stopSe( spep_1 + 78, SE3, 0 );

--ピース
playSe( spep_1 + 69, 1062 ); 
setSeVolume( spep_1 + 69, 1062, 79 );
playSe( spep_1 + 70, 20 ); 
setSeVolume( spep_1 + 70, 20, 35 );

--さあいけ！
playSe( spep_1 + 115, 1237 ); 

--おばけが向かう
SE4 = playSe( spep_1 + 218, 1112 ); 

-- ** 次の準備 ** --
spep_2 = spep_1 + 248;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

--おばけが向かう
stopSe( spep_2 + 2, SE4, 0 );

--敵に向かっていく
SE5 = playSe( spep_2 + 19, 1242 );
setSeVolume( spep_2 + 19, 1242, 0 );
setSeVolume( spep_2 + 92, 1242, 10 );
setSeVolume( spep_2 + 94, 1242, 18 );

SE6 = playSe( spep_2 + 90, 1116 );

SE7 = playSe( spep_2 + 90, 9 );
setSeVolume( spep_2 + 90, 9, 50 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_3 = spep_2 + 94;

------------------------------------------------------
-- おばけ突進〜おばけが光る(228F)
------------------------------------------------------

-- ** エフェクト等 ** --
flash_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --おばけ突進〜おばけが光る(ef_003)
setEffMoveKey( spep_3 + 0, flash_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 576, flash_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, flash_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 576, flash_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, flash_f, 0 );
setEffRotateKey( spep_3 + 576, flash_f, 0 );
setEffAlphaKey( spep_3 + 0, flash_f, 255 );
setEffAlphaKey( spep_3 + 576, flash_f, 255 );

flash_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --おばけ突進〜おばけが光る(ef_004)
setEffMoveKey( spep_3 + 0, flash_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 576, flash_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, flash_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 576, flash_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, flash_b, 0 );
setEffRotateKey( spep_3 + 576, flash_b, 0 );
setEffAlphaKey( spep_3 + 0, flash_b, 255 );
setEffAlphaKey( spep_3 + 576, flash_b, 255 );

-- ** 書き文字エントリー ** --
ctgyun = entryEffectLife( spep_3 + 0,  10007, 14 -3, 0x100, -1, 0, 18.1, 105.9 );  --ギュン
setEffMoveKey( spep_3 + 0, ctgyun, 17.5, 181.9 , 0 );
setEffMoveKey( spep_3 -3 + 4, ctgyun, 16.8, 257.8 , 0 );
setEffMoveKey( spep_3 -3 + 6, ctgyun, 16.1, 333.8 , 0 );
setEffMoveKey( spep_3 -3 + 8, ctgyun, 16.1, 344.3 , 0 );
setEffMoveKey( spep_3 -3 + 10, ctgyun, 16.1, 354.8 , 0 );
setEffMoveKey( spep_3 -3 + 12, ctgyun, 16.1, 365.4 , 0 );
setEffMoveKey( spep_3 -3 + 14, ctgyun, 16.1, 375.9 , 0 );

setEffScaleKey( spep_3 + 0, ctgyun, 1.6, 1.6 );
setEffScaleKey( spep_3 -3 + 4, ctgyun, 2.2, 2.2 );
setEffScaleKey( spep_3 -3 + 6, ctgyun, 2.8, 2.8 );
setEffScaleKey( spep_3 -3 + 8, ctgyun, 2.95, 2.95 );
setEffScaleKey( spep_3 -3 + 10, ctgyun, 3.11, 3.11 );
setEffScaleKey( spep_3 -3 + 12, ctgyun, 3.26, 3.26 );
setEffScaleKey( spep_3 -3 + 14, ctgyun, 3.41, 3.41 );

setEffRotateKey( spep_3 + 0, ctgyun, 0 );
setEffRotateKey( spep_3 -3 + 14, ctgyun, 0 );

setEffAlphaKey( spep_3 + 0, ctgyun, 255 );
setEffAlphaKey( spep_3 -3 + 6, ctgyun, 255 );
setEffAlphaKey( spep_3 -3 + 8, ctgyun, 191 );
setEffAlphaKey( spep_3 -3 + 10, ctgyun, 128 );
setEffAlphaKey( spep_3 -3 + 12, ctgyun, 64 );
setEffAlphaKey( spep_3 -3 + 14, ctgyun, 0 );

ctgyun1 = entryEffectLife( spep_3 -3 + 66 -18,  10055, 22 +18, 0x100, -1, 0, 78.1, -242 );  --ギューン
setEffMoveKey( spep_3 -3 + 66 -18, ctgyun1, 78.1, -242 , 0 );
setEffMoveKey( spep_3 -3 + 68 -18, ctgyun1, 64.1, -219 , 0 );
setEffMoveKey( spep_3 -3 + 70 -18, ctgyun1, 50.1, -196 , 0 );
setEffMoveKey( spep_3 -3 + 72 -18, ctgyun1, 36.1, -173 , 0 );
setEffMoveKey( spep_3 -3 + 74 -18, ctgyun1, 22.1, -149.9 , 0 );
setEffMoveKey( spep_3 -3 + 76 -18, ctgyun1, 19.2, -144.2 , 0 );
setEffMoveKey( spep_3 -3 + 78 -18, ctgyun1, 16.4, -138.5 , 0 );
setEffMoveKey( spep_3 -3 + 80 -18, ctgyun1, 13.5, -132.8 , 0 );
setEffMoveKey( spep_3 -3 + 82 -18, ctgyun1, 10.7, -127.1 , 0 );
setEffMoveKey( spep_3 -3 + 84 -18, ctgyun1, 7.8, -121.4 , 0 );
setEffMoveKey( spep_3 -3 + 86 -18, ctgyun1, 4.9, -115.6 , 0 );
setEffMoveKey( spep_3 -3 + 88 -18, ctgyun1, 2.1, -109.9 , 0 );
setEffMoveKey( spep_3 -3 + 88, ctgyun1, 2.1, -109.9 , 0 );

setEffScaleKey( spep_3 -3 + 66 -18, ctgyun1, 1, 1 );
setEffScaleKey( spep_3 -3 + 68 -18, ctgyun1, 1.2, 1.2 );
setEffScaleKey( spep_3 -3 + 70 -18, ctgyun1, 1.4, 1.4 );
setEffScaleKey( spep_3 -3 + 72 -18, ctgyun1, 1.6, 1.6 );
setEffScaleKey( spep_3 -3 + 74 -18, ctgyun1, 1.8, 1.8 );
setEffScaleKey( spep_3 -3 + 76 -18, ctgyun1, 1.82, 1.82 );
setEffScaleKey( spep_3 -3 + 78 -18, ctgyun1, 1.85, 1.85 );
setEffScaleKey( spep_3 -3 + 80 -18, ctgyun1, 1.87, 1.87 );
setEffScaleKey( spep_3 -3 + 82 -18, ctgyun1, 1.9, 1.9 );
setEffScaleKey( spep_3 -3 + 84 -18, ctgyun1, 1.92, 1.92 );
setEffScaleKey( spep_3 -3 + 86 -18, ctgyun1, 1.95, 1.95 );
setEffScaleKey( spep_3 -3 + 88 -18, ctgyun1, 1.97, 1.97 );
setEffScaleKey( spep_3 -3 + 88, ctgyun1, 1.97, 1.97 );

setEffRotateKey( spep_3 -3 + 66 -18, ctgyun1, 27.7 );
setEffRotateKey( spep_3 -3 + 88, ctgyun1, 27.7 );

setEffAlphaKey( spep_3 -3 + 66 -18, ctgyun1, 255 );
setEffAlphaKey( spep_3 -3 + 74 -18, ctgyun1, 255 );
setEffAlphaKey( spep_3 -3 + 76 -18, ctgyun1, 219 );
setEffAlphaKey( spep_3 -3 + 78 -18, ctgyun1, 182 );
setEffAlphaKey( spep_3 -3 + 80 -18, ctgyun1, 146 );
setEffAlphaKey( spep_3 -3 + 82 -18, ctgyun1, 109 );
setEffAlphaKey( spep_3 -3 + 84 -18, ctgyun1, 73 );
setEffAlphaKey( spep_3 -3 + 86 -18, ctgyun1, 36 );
setEffAlphaKey( spep_3 -3 + 88, ctgyun1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 46, 1, 1 );
changeAnime( spep_3 -3 + 46, 1, 0 );

setMoveKey( spep_3 -3 + 46, 1, -250.5, 158.2 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -252.1, 162.4 , 0 );
setMoveKey( spep_3 -3 + 50, 1, -258.1, 161.9 , 0 );
setMoveKey( spep_3 -3 + 52, 1, -264.9, 159.5 , 0 );
setMoveKey( spep_3 -3 + 54, 1, -260.4, 162.2 , 0 );
setMoveKey( spep_3 -3 + 56, 1, -255.8, 165 , 0 );
setMoveKey( spep_3 -3 + 58, 1, -252.5, 161.9 , 0 );
setMoveKey( spep_3 -3 + 60, 1, -255.6, 160.1 , 0 );
setMoveKey( spep_3 -3 + 62, 1, -254.1, 161.6 , 0 );
setMoveKey( spep_3 -3 + 64, 1, -252.4, 163 , 0 );
setMoveKey( spep_3 -3 + 66, 1, -250.3, 164.5 , 0 );

setScaleKey( spep_3 -3 + 46, 1, 0.27, 0.27 );
setScaleKey( spep_3 -3 + 56, 1, 0.27, 0.27 );
setScaleKey( spep_3 -3 + 58, 1, 0.28, 0.28 );
setScaleKey( spep_3 -3 + 60, 1, 0.28, 0.28 );
setScaleKey( spep_3 -3 + 62, 1, 0.29, 0.29 );
setScaleKey( spep_3 -3 + 64, 1, 0.3, 0.3 );
setScaleKey( spep_3 -3 + 66, 1, 0.32, 0.32 );

setRotateKey( spep_3 -3 + 46, 1, -14.5 );

-- ** 音 ** --
--敵に向かっていく
setSeVolume( spep_3 + 2, 1242, 32 );
setSeVolume( spep_3 + 4, 1242, 64 );
setSeVolume( spep_3 + 6, 1242, 98 );
setSeVolume( spep_3 + 7, 1242, 126 );
setSeVolume( spep_3 + 44, 1242, 126 );
setSeVolume( spep_3 + 48, 1242, 102 );
setSeVolume( spep_3 + 52, 1242, 89 );
setSeVolume( spep_3 + 56, 1242, 72 );
setSeVolume( spep_3 + 60, 1242, 56 );
setSeVolume( spep_3 + 64, 1242, 34 );

SE8 = playSe( spep_3 + 16, 1183 );

SE9 = playSe( spep_3 + 41, 1117 );
setSeVolume( spep_3 + 41, 1117, 141 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 68; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE5, 0 );
stopSe( SP_dodge - 12, SE6, 0 );
stopSe( SP_dodge - 12, SE7, 0 );
stopSe( SP_dodge - 12, SE8, 0 );
stopSe( SP_dodge - 12, SE9, 0 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

-- ** 敵キャラクター ** --
setMoveKey( SP_dodge + 0, 1, -250.3, 164.5 , 0 );
setMoveKey( SP_dodge + 2, 1, -256.4, 158.3 , 0 );
setMoveKey( SP_dodge + 4, 1, -249.9, 159.7 , 0 );
setMoveKey( SP_dodge + 6, 1, -245.1, 160.2 , 0 );
setMoveKey( SP_dodge + 8, 1, -239.8, 160.6 , 0 );
setMoveKey( SP_dodge + 10, 1, -237.4, 168.2 , 0 );

setScaleKey( SP_dodge + 0, 1, 0.32, 0.32 );
setScaleKey( SP_dodge + 2, 1, 0.33, 0.33 );
setScaleKey( SP_dodge + 4, 1, 0.35, 0.35 );
setScaleKey( SP_dodge + 6, 1, 0.38, 0.38 );
setScaleKey( SP_dodge + 8, 1, 0.4, 0.4 );
setScaleKey( SP_dodge + 10, 1, 0.43, 0.43 );

setRotateKey( SP_dodge + 0, 1, -14.5 );
setRotateKey( SP_dodge + 2, 1, -14.5 );
setRotateKey( SP_dodge + 4, 1, -0.8 );
setRotateKey( SP_dodge + 6, 1, -0.8 );
setRotateKey( SP_dodge + 8, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0.4 );

-- ** 白フェード ** --
entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

ctga = entryEffectLife( spep_3 -3 + 124 -20,  10005, 12 +20, 0x100, -1, 0, 12.2, 405.5 );  --ガッ
setEffMoveKey( spep_3 -3 + 124 -20, ctga, 12.2, 405.5 , 0 );
setEffMoveKey( spep_3 -3 + 134, ctga, 12.2, 405.5 , 0 );
setEffMoveKey( spep_3 -3 + 136, ctga, 12.2, 415.5 , 0 );

setEffScaleKey( spep_3 -3 + 124 -20, ctga, 3.21, 3.21 );
setEffScaleKey( spep_3 -3 + 124 -20, ctga, 3.21, 3.21 );
setEffScaleKey( spep_3 -3 + 126 -20, ctga, 3.36, 3.36 );
setEffScaleKey( spep_3 -3 + 128 -20, ctga, 3.51, 3.51 );
setEffScaleKey( spep_3 -3 + 130 -20, ctga, 3.66, 3.66 );
setEffScaleKey( spep_3 -3 + 132 -20, ctga, 3.81, 3.81 );
setEffScaleKey( spep_3 -3 + 134 -20, ctga, 3.96, 3.96 );
setEffScaleKey( spep_3 -3 + 136, ctga, 4.03, 4.03 );

setEffRotateKey( spep_3 -3 + 124 -20, ctga, 0 );
setEffRotateKey( spep_3 -3 + 136, ctga, 0 );

setEffAlphaKey( spep_3 -3 + 124 -20, ctga, 255 );
setEffAlphaKey( spep_3 -3 + 134, ctga, 255 );
setEffAlphaKey( spep_3 -3 + 136, ctga, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 228, 1, 0 );
changeAnime( spep_3 -3 + 90, 1, 1);
changeAnime( spep_3 -3 + 104, 1, 4);

setMoveKey( spep_3 -3 + 68, 1, -256.4, 158.3 , 0 );
setMoveKey( spep_3 -3 + 70, 1, -249.9, 159.7 , 0 );
setMoveKey( spep_3 -3 + 72, 1, -245.1, 160.2 , 0 );
setMoveKey( spep_3 -3 + 74, 1, -239.8, 160.6 , 0 );
setMoveKey( spep_3 -3 + 76, 1, -237.4, 168.2 , 0 );
setMoveKey( spep_3 -3 + 78, 1, -224.7, 165 , 0 );
setMoveKey( spep_3 -3 + 80, 1, -222.7, 162.3 , 0 );
setMoveKey( spep_3 -3 + 82, 1, -220, 159.7 , 0 );
setMoveKey( spep_3 -3 + 84, 1, -214.1, 159.5 , 0 );
setMoveKey( spep_3 -3 + 86, 1, -207.6, 159.3 , 0 );
setMoveKey( spep_3 -3 + 88, 1, -200.3, 159 , 0 );
setMoveKey( spep_3 -3 + 89, 1, -200.3, 159 , 0 );
setMoveKey( spep_3 -3 + 90, 1, -33.7, -32.4 , 0 );
setMoveKey( spep_3 -3 + 92, 1, -53.7, -32.4 , 0 );
setMoveKey( spep_3 -3 + 94, 1, -73.7, -32.4 , 0 );
setMoveKey( spep_3 -3 + 96, 1, -93.7, -32.4 , 0 );
setMoveKey( spep_3 -3 + 98, 1, -113.7, -32.4 , 0 );
setMoveKey( spep_3 -3 + 100, 1, -133.7, -32.4 , 0 );
setMoveKey( spep_3 -3 + 102, 1, -153.7, -32.4 , 0 );
setMoveKey( spep_3 -3 + 103, 1, -153.7, -32.4 , 0 );
a = 100;
setMoveKey( spep_3 -3 + 104, 1, -233.6 + a, -386.7 , 0 );  --ゴースト近く
setMoveKey( spep_3 -3 + 106, 1, -242.4 + a, -386.7 , 0 );
setMoveKey( spep_3 -3 + 108, 1, -249.9 + a, -386.7 , 0 );
setMoveKey( spep_3 -3 + 110, 1, -256.3 + a, -386.7 , 0 );
setMoveKey( spep_3 -3 + 112, 1, -261.6 + a, -386.7 , 0 );
setMoveKey( spep_3 -3 + 114, 1, -265.9 + a, -386.7 , 0 );
setMoveKey( spep_3 -3 + 116, 1, -269.4 + a, -386.7 , 0 );
setMoveKey( spep_3 -3 + 118, 1, -272.1 + a, -386.7 , 0 );
setMoveKey( spep_3 -3 + 120, 1, -274.1 + a, -386.7 , 0 );
setMoveKey( spep_3 -3 + 122, 1, -275.6 + a, -386.7 , 0 );
setMoveKey( spep_3 -3 + 124, 1, -276.5 + a, -386.7 , 0 );
setMoveKey( spep_3 -3 + 126, 1, -277.1 + a, -386.7 , 0 );
setMoveKey( spep_3 -3 + 128, 1, -277.4 + a, -386.7 , 0 );
setMoveKey( spep_3 -3 + 130, 1, -277.5 + a, -386.7 , 0 );
setMoveKey( spep_3 -3 + 132, 1, -277.6 + a, -386.7 , 0 );
setMoveKey( spep_3 -3 + 133, 1, -277.6 + a, -386.7 , 0 );
b = 165;
c = 13;
setMoveKey( spep_3 -3 + 134, 1, -485.5 + b, -834.8 - c, 0 );
setMoveKey( spep_3 + 228, 1, -485.5 + b, -834.8 - c, 0 );

setScaleKey( spep_3 -3 + 68, 1, 0.33, 0.33 );
setScaleKey( spep_3 -3 + 70, 1, 0.35, 0.35 );
setScaleKey( spep_3 -3 + 72, 1, 0.38, 0.38 );
setScaleKey( spep_3 -3 + 74, 1, 0.4, 0.4 );
setScaleKey( spep_3 -3 + 76, 1, 0.43, 0.43 );
setScaleKey( spep_3 -3 + 78, 1, 0.47, 0.47 );
setScaleKey( spep_3 -3 + 80, 1, 0.51, 0.51 );
setScaleKey( spep_3 -3 + 82, 1, 0.55, 0.55 );
setScaleKey( spep_3 -3 + 84, 1, 0.6, 0.6 );
setScaleKey( spep_3 -3 + 86, 1, 0.66, 0.66 );
setScaleKey( spep_3 -3 + 88, 1, 0.72, 0.72 );
setScaleKey( spep_3 -3 + 89, 1, 0.72, 0.72 );
setScaleKey( spep_3 -3 + 90, 1, 2.44, 2.44 );
setScaleKey( spep_3 -3 + 103, 1, 2.44, 2.44 );
setScaleKey( spep_3 -3 + 104, 1, 6.5, 6.5 );
setScaleKey( spep_3 -3 + 132, 1, 6.5, 6.5 );
setScaleKey( spep_3 -3 + 133, 1, 6.5, 6.5 );
d = 0.4;
setScaleKey( spep_3 -3 + 134, 1, 11.18 + d, 11.18 + d );
setScaleKey( spep_3 + 228, 1, 11.18 + d, 11.18 + d );

setRotateKey( spep_3 -3 + 89, 1, -14.5 );
setRotateKey( spep_3 -3 + 90, 1, -0.8 );
setRotateKey( spep_3 -3 + 103, 1, -0.8 );
setRotateKey( spep_3 -3 + 104, 1, 0 );
setRotateKey( spep_3 -3 + 106, 1, 0.4 );
setRotateKey( spep_3 -3 + 108, 1, 0.7 );
setRotateKey( spep_3 -3 + 110, 1, 1 );
setRotateKey( spep_3 -3 + 112, 1, 1.3 );
setRotateKey( spep_3 -3 + 114, 1, 1.5 );
setRotateKey( spep_3 -3 + 116, 1, 1.6 );
setRotateKey( spep_3 -3 + 118, 1, 1.8 );
setRotateKey( spep_3 -3 + 120, 1, 1.8 );
setRotateKey( spep_3 -3 + 122, 1, 1.9 );
setRotateKey( spep_3 -3 + 124, 1, 2 );
setRotateKey( spep_3 + 228, 1, 2 );

-- ** 音 ** --
--敵に向かっていく
setSeVolume( spep_3 + 68, 1242, 12 );
setSeVolume( spep_3 + 72, 1242, 0 );
stopSe( spep_3 + 72, SE5, 0 );
stopSe( spep_3 + 102, SE7, 0 );

stopSe( spep_3 + 102, SE8, 0 );

setSeVolume( spep_3 + 101, 1117, 141 );
setSeVolume( spep_3 + 102, 1117, 98 );
setSeVolume( spep_3 + 104, 1117, 56 );
setSeVolume( spep_3 + 106, 1117, 14 );
setSeVolume( spep_3 + 109, 1117, 0 );
stopSe( spep_3 + 109, SE9, 0 );

--密着
playSe( spep_3 + 101, 1113 );
SE10 = playSe( spep_3 + 102, 1192 );
stopSe( spep_3 + 113, SE10, 11 );
SE11 = playSe( spep_3 + 102, 31 );
stopSe( spep_3 + 112, SE11, 19 );

--自爆モーション
SE11_1 = playSe( spep_3 + 151, 1157 );
playSe( spep_3 + 173, 17 );
setSeVolume( spep_3 + 173, 17, 56 );
SE12 = playSe( spep_3 + 179, 1144 );
setSeVolume( spep_3 + 179, 1144, 40 );
SE13 = playSe( spep_3 + 179, 1222 );
stopSe( spep_3 + 227, SE13, 19 );
SE13_1 = playSe( spep_3 + 185, 33 );

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 230, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 228;

------------------------------------------------------
-- 爆発(170F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --爆発(ef_005)
setEffMoveKey( spep_4 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_4 + 170, finish, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_4 + 170, finish, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish, 0 );
setEffRotateKey( spep_4 + 170, finish, 0 );
setEffAlphaKey( spep_4 + 0, finish, 255 );
setEffAlphaKey( spep_4 + 170, finish, 255 );

-- ** 書き文字エントリー ** --
ctdon = entryEffectLife( spep_4 -3 + 42,  10048, 46, 0x100, -1, 0, 12, -257.9 );  --ドーン
setEffMoveKey( spep_4 -3 + 42, ctdon, 12, -257.9 , 0 );
setEffMoveKey( spep_4 -3 + 44, ctdon, 27.3, -287.2 , 0 );
setEffMoveKey( spep_4 -3 + 46, ctdon, 10.7, -327.8 , 0 );
setEffMoveKey( spep_4 -3 + 48, ctdon, 10, -345.9 , 0 );
setEffMoveKey( spep_4 -3 + 50, ctdon, 31.2, -346.2 , 0 );
setEffMoveKey( spep_4 -3 + 52, ctdon, 10, -359.4 , 0 );
setEffMoveKey( spep_4 -3 + 54, ctdon, -7.3, -340.5 , 0 );
setEffMoveKey( spep_4 -3 + 56, ctdon, 10, -347.2 , 0 );
setEffMoveKey( spep_4 -3 + 58, ctdon, 31.7, -347.5 , 0 );
setEffMoveKey( spep_4 -3 + 60, ctdon, 10, -361 , 0 );
setEffMoveKey( spep_4 -3 + 62, ctdon, -7.7, -341.7 , 0 );
setEffMoveKey( spep_4 -3 + 64, ctdon, 10, -348.5 , 0 );
setEffMoveKey( spep_4 -3 + 66, ctdon, 32.1, -348.9 , 0 );
setEffMoveKey( spep_4 -3 + 68, ctdon, 10, -362.6 , 0 );
setEffMoveKey( spep_4 -3 + 70, ctdon, -8, -342.9 , 0 );
setEffMoveKey( spep_4 -3 + 72, ctdon, 10, -349.9 , 0 );
setEffMoveKey( spep_4 -3 + 74, ctdon, 32.5, -350.2 , 0 );
setEffMoveKey( spep_4 -3 + 76, ctdon, 10, -364.2 , 0 );
setEffMoveKey( spep_4 -3 + 78, ctdon, -8.4, -344.1 , 0 );
setEffMoveKey( spep_4 -3 + 80, ctdon, 10, -351.2 , 0 );
setEffMoveKey( spep_4 -3 + 82, ctdon, 33, -351.5 , 0 );
setEffMoveKey( spep_4 -3 + 84, ctdon, 10, -365.8 , 0 );
setEffMoveKey( spep_4 -3 + 86, ctdon, -8.7, -345 , 0 );
setEffMoveKey( spep_4 -3 + 88, ctdon, 10, -351.9 , 0 );

setEffScaleKey( spep_4 -3 + 42, ctdon, 0.82, 0.82 );
setEffScaleKey( spep_4 -3 + 44, ctdon, 0.97, 0.97 );
setEffScaleKey( spep_4 -3 + 46, ctdon, 1.13, 1.13 );
setEffScaleKey( spep_4 -3 + 48, ctdon, 1.29, 1.29 );
setEffScaleKey( spep_4 -3 + 50, ctdon, 1.3, 1.3 );
setEffScaleKey( spep_4 -3 + 52, ctdon, 1.3, 1.3 );
setEffScaleKey( spep_4 -3 + 54, ctdon, 1.31, 1.31 );
setEffScaleKey( spep_4 -3 + 56, ctdon, 1.32, 1.32 );
setEffScaleKey( spep_4 -3 + 58, ctdon, 1.32, 1.32 );
setEffScaleKey( spep_4 -3 + 60, ctdon, 1.33, 1.33 );
setEffScaleKey( spep_4 -3 + 62, ctdon, 1.34, 1.34 );
setEffScaleKey( spep_4 -3 + 64, ctdon, 1.34, 1.34 );
setEffScaleKey( spep_4 -3 + 66, ctdon, 1.35, 1.35 );
setEffScaleKey( spep_4 -3 + 68, ctdon, 1.36, 1.36 );
setEffScaleKey( spep_4 -3 + 70, ctdon, 1.36, 1.36 );
setEffScaleKey( spep_4 -3 + 72, ctdon, 1.37, 1.37 );
setEffScaleKey( spep_4 -3 + 74, ctdon, 1.38, 1.38 );
setEffScaleKey( spep_4 -3 + 76, ctdon, 1.38, 1.38 );
setEffScaleKey( spep_4 -3 + 78, ctdon, 1.39, 1.39 );
setEffScaleKey( spep_4 -3 + 80, ctdon, 1.4, 1.4 );
setEffScaleKey( spep_4 -3 + 82, ctdon, 1.4, 1.4 );
setEffScaleKey( spep_4 -3 + 84, ctdon, 1.41, 1.41 );
setEffScaleKey( spep_4 -3 + 88, ctdon, 1.41, 1.41 );

setEffRotateKey( spep_4 -3 + 42, ctdon, 0 );
setEffRotateKey( spep_4 -3 + 88, ctdon, 0 );

setEffAlphaKey( spep_4 -3 + 42, ctdon, 255 );
setEffAlphaKey( spep_4 -3 + 84, ctdon, 255 );
setEffAlphaKey( spep_4 -3 + 86, ctdon, 128 );
setEffAlphaKey( spep_4 -3 + 88, ctdon, 0 );

-- ** 音 ** --
--自爆モーション
stopSe( spep_4 + 64, SE11_1, 0 );
stopSe( spep_4 + 2, SE13_1, 0 );
stopSe( spep_4 + 60, SE12, 0 );

--爆発
playSe( spep_4 + 54 -4, 1023 );
setSeVolume( spep_4 + 54 -4, 1023, 79 );
playSe( spep_4 + 54 -4, 1159 );
setSeVolume( spep_4 + 54 -4, 1159, 79 );
playSe( spep_4 + 54 -4, 1188 );
setSeVolume( spep_4 + 54 -4, 1188, 79 );

-- ** 背景 ** --
entryFadeBg( spep_4 + 0, 0, 230, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 50 );
endPhase( spep_4 + 168 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 風船を出す(106F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --風船を出す(ef_001)
setEffMoveKey( spep_0 + 0, first, 0, 0 , 0 );
setEffMoveKey( spep_0 + 106, first, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first, -1.0, 1.0 );
setEffScaleKey( spep_0 + 106, first, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first, 0 );
setEffRotateKey( spep_0 + 106, first, 0 );
setEffAlphaKey( spep_0 + 0, first, 255 );
setEffAlphaKey( spep_0 + 106, first, 255 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 108, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
--入り
playSe( spep_0 + 0, 1048 );
playSe( spep_0 + 2, 4 );

--おばけを出す
SE0 = playSe( spep_0 + 30, 1112 );
setSeVolume( spep_0 + 30, 1112, 79 );
setSeVolume( spep_0 + 46, 1112, 79 );
setSeVolume( spep_0 + 48, 1112, 48 );
setSeVolume( spep_0 + 50, 1112, 22 );
setSeVolume( spep_0 + 53, 1112, 0 );
stopSe( spep_0 + 53, SE0, 0 );

playSe( spep_0 + 30, 1246 );

SE1 = playSe( spep_0 + 41, 1128 );
stopSe( spep_0 + 95, SE1, 23 );

--おばけ並ぶ
SE2 = playSe( spep_0 + 94, 1118 );
setSeVolume( spep_0 + 94, 1118, 56 );
SE3 = playSe( spep_0 + 94, 1241 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 106;

------------------------------------------------------
-- おばけが出現〜おばけが横からフレームイン(248F)
------------------------------------------------------

-- ** エフェクト等 ** --
ghost = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --おばけが出現〜おばけが横からフレームイン(ef_002)
setEffMoveKey( spep_1 + 0, ghost, 0, 0 , 0 );
setEffMoveKey( spep_1 + 248, ghost, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, ghost, -1.0, 1.0 );
setEffScaleKey( spep_1 + 248, ghost, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, ghost, 0 );
setEffRotateKey( spep_1 + 248, ghost, 0 );
setEffAlphaKey( spep_1 + 0, ghost, 255 );
setEffAlphaKey( spep_1 + 248, ghost, 255 );

spep_x = spep_1 + 124;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9 -20, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9 -20, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9 -20, 515.5 , 0 );

setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );

setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 背景 ** --
entryFadeBg( spep_1 + 0, 0, 250, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

--おばけ並ぶ
stopSe( spep_1 + 78, SE2, 0 );
stopSe( spep_1 + 78, SE3, 0 );

--ピース
playSe( spep_1 + 69, 1062 ); 
setSeVolume( spep_1 + 69, 1062, 79 );
playSe( spep_1 + 70, 20 ); 
setSeVolume( spep_1 + 70, 20, 35 );

--さあいけ！
playSe( spep_1 + 115, 1237 ); 

--おばけが向かう
SE4 = playSe( spep_1 + 218, 1112 ); 

-- ** 次の準備 ** --
spep_2 = spep_1 + 248;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

--おばけが向かう
stopSe( spep_2 + 2, SE4, 0 );

--敵に向かっていく
SE5 = playSe( spep_2 + 19, 1242 );
setSeVolume( spep_2 + 19, 1242, 0 );
setSeVolume( spep_2 + 92, 1242, 10 );
setSeVolume( spep_2 + 94, 1242, 18 );

SE6 = playSe( spep_2 + 90, 1116 );

SE7 = playSe( spep_2 + 90, 9 );
setSeVolume( spep_2 + 90, 9, 50 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_3 = spep_2 + 94;

------------------------------------------------------
-- おばけ突進〜おばけが光る(228F)
------------------------------------------------------

-- ** エフェクト等 ** --
flash_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --おばけ突進〜おばけが光る(ef_003)
setEffMoveKey( spep_3 + 0, flash_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 576, flash_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, flash_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 576, flash_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, flash_f, 0 );
setEffRotateKey( spep_3 + 576, flash_f, 0 );
setEffAlphaKey( spep_3 + 0, flash_f, 255 );
setEffAlphaKey( spep_3 + 576, flash_f, 255 );

flash_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --おばけ突進〜おばけが光る(ef_004)
setEffMoveKey( spep_3 + 0, flash_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 576, flash_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, flash_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 576, flash_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, flash_b, 0 );
setEffRotateKey( spep_3 + 576, flash_b, 0 );
setEffAlphaKey( spep_3 + 0, flash_b, 255 );
setEffAlphaKey( spep_3 + 576, flash_b, 255 );

-- ** 書き文字エントリー ** --
ctgyun = entryEffectLife( spep_3 + 0,  10007, 14 -3, 0x100, -1, 0, 18.1, 105.9 );  --ギュン
setEffMoveKey( spep_3 + 0, ctgyun, 17.5, 181.9 , 0 );
setEffMoveKey( spep_3 -3 + 4, ctgyun, 16.8, 257.8 , 0 );
setEffMoveKey( spep_3 -3 + 6, ctgyun, 16.1, 333.8 , 0 );
setEffMoveKey( spep_3 -3 + 8, ctgyun, 16.1, 344.3 , 0 );
setEffMoveKey( spep_3 -3 + 10, ctgyun, 16.1, 354.8 , 0 );
setEffMoveKey( spep_3 -3 + 12, ctgyun, 16.1, 365.4 , 0 );
setEffMoveKey( spep_3 -3 + 14, ctgyun, 16.1, 375.9 , 0 );

setEffScaleKey( spep_3 + 0, ctgyun, 1.6, 1.6 );
setEffScaleKey( spep_3 -3 + 4, ctgyun, 2.2, 2.2 );
setEffScaleKey( spep_3 -3 + 6, ctgyun, 2.8, 2.8 );
setEffScaleKey( spep_3 -3 + 8, ctgyun, 2.95, 2.95 );
setEffScaleKey( spep_3 -3 + 10, ctgyun, 3.11, 3.11 );
setEffScaleKey( spep_3 -3 + 12, ctgyun, 3.26, 3.26 );
setEffScaleKey( spep_3 -3 + 14, ctgyun, 3.41, 3.41 );

setEffRotateKey( spep_3 + 0, ctgyun, 0 );
setEffRotateKey( spep_3 -3 + 14, ctgyun, 0 );

setEffAlphaKey( spep_3 + 0, ctgyun, 255 );
setEffAlphaKey( spep_3 -3 + 6, ctgyun, 255 );
setEffAlphaKey( spep_3 -3 + 8, ctgyun, 191 );
setEffAlphaKey( spep_3 -3 + 10, ctgyun, 128 );
setEffAlphaKey( spep_3 -3 + 12, ctgyun, 64 );
setEffAlphaKey( spep_3 -3 + 14, ctgyun, 0 );

ctgyun1 = entryEffectLife( spep_3 -3 + 66 -18,  10055, 22 +18, 0x100, -1, 0, 78.1, -242 );  --ギューン
setEffMoveKey( spep_3 -3 + 66 -18, ctgyun1, 78.1, -242 , 0 );
setEffMoveKey( spep_3 -3 + 68 -18, ctgyun1, 64.1, -219 , 0 );
setEffMoveKey( spep_3 -3 + 70 -18, ctgyun1, 50.1, -196 , 0 );
setEffMoveKey( spep_3 -3 + 72 -18, ctgyun1, 36.1, -173 , 0 );
setEffMoveKey( spep_3 -3 + 74 -18, ctgyun1, 22.1, -149.9 , 0 );
setEffMoveKey( spep_3 -3 + 76 -18, ctgyun1, 19.2, -144.2 , 0 );
setEffMoveKey( spep_3 -3 + 78 -18, ctgyun1, 16.4, -138.5 , 0 );
setEffMoveKey( spep_3 -3 + 80 -18, ctgyun1, 13.5, -132.8 , 0 );
setEffMoveKey( spep_3 -3 + 82 -18, ctgyun1, 10.7, -127.1 , 0 );
setEffMoveKey( spep_3 -3 + 84 -18, ctgyun1, 7.8, -121.4 , 0 );
setEffMoveKey( spep_3 -3 + 86 -18, ctgyun1, 4.9, -115.6 , 0 );
setEffMoveKey( spep_3 -3 + 88 -18, ctgyun1, 2.1, -109.9 , 0 );
setEffMoveKey( spep_3 -3 + 88, ctgyun1, 2.1, -109.9 , 0 );

setEffScaleKey( spep_3 -3 + 66 -18, ctgyun1, 1, 1 );
setEffScaleKey( spep_3 -3 + 68 -18, ctgyun1, 1.2, 1.2 );
setEffScaleKey( spep_3 -3 + 70 -18, ctgyun1, 1.4, 1.4 );
setEffScaleKey( spep_3 -3 + 72 -18, ctgyun1, 1.6, 1.6 );
setEffScaleKey( spep_3 -3 + 74 -18, ctgyun1, 1.8, 1.8 );
setEffScaleKey( spep_3 -3 + 76 -18, ctgyun1, 1.82, 1.82 );
setEffScaleKey( spep_3 -3 + 78 -18, ctgyun1, 1.85, 1.85 );
setEffScaleKey( spep_3 -3 + 80 -18, ctgyun1, 1.87, 1.87 );
setEffScaleKey( spep_3 -3 + 82 -18, ctgyun1, 1.9, 1.9 );
setEffScaleKey( spep_3 -3 + 84 -18, ctgyun1, 1.92, 1.92 );
setEffScaleKey( spep_3 -3 + 86 -18, ctgyun1, 1.95, 1.95 );
setEffScaleKey( spep_3 -3 + 88 -18, ctgyun1, 1.97, 1.97 );
setEffScaleKey( spep_3 -3 + 88, ctgyun1, 1.97, 1.97 );

setEffRotateKey( spep_3 -3 + 66 -18, ctgyun1, 27.7 );
setEffRotateKey( spep_3 -3 + 88, ctgyun1, 27.7 );

setEffAlphaKey( spep_3 -3 + 66 -18, ctgyun1, 255 );
setEffAlphaKey( spep_3 -3 + 74 -18, ctgyun1, 255 );
setEffAlphaKey( spep_3 -3 + 76 -18, ctgyun1, 219 );
setEffAlphaKey( spep_3 -3 + 78 -18, ctgyun1, 182 );
setEffAlphaKey( spep_3 -3 + 80 -18, ctgyun1, 146 );
setEffAlphaKey( spep_3 -3 + 82 -18, ctgyun1, 109 );
setEffAlphaKey( spep_3 -3 + 84 -18, ctgyun1, 73 );
setEffAlphaKey( spep_3 -3 + 86 -18, ctgyun1, 36 );
setEffAlphaKey( spep_3 -3 + 88, ctgyun1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 46, 1, 1 );
changeAnime( spep_3 -3 + 46, 1, 0 );

setMoveKey( spep_3 -3 + 46, 1, -250.5, 158.2 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -252.1, 162.4 , 0 );
setMoveKey( spep_3 -3 + 50, 1, -258.1, 161.9 , 0 );
setMoveKey( spep_3 -3 + 52, 1, -264.9, 159.5 , 0 );
setMoveKey( spep_3 -3 + 54, 1, -260.4, 162.2 , 0 );
setMoveKey( spep_3 -3 + 56, 1, -255.8, 165 , 0 );
setMoveKey( spep_3 -3 + 58, 1, -252.5, 161.9 , 0 );
setMoveKey( spep_3 -3 + 60, 1, -255.6, 160.1 , 0 );
setMoveKey( spep_3 -3 + 62, 1, -254.1, 161.6 , 0 );
setMoveKey( spep_3 -3 + 64, 1, -252.4, 163 , 0 );
setMoveKey( spep_3 -3 + 66, 1, -250.3, 164.5 , 0 );

setScaleKey( spep_3 -3 + 46, 1, 0.27, 0.27 );
setScaleKey( spep_3 -3 + 56, 1, 0.27, 0.27 );
setScaleKey( spep_3 -3 + 58, 1, 0.28, 0.28 );
setScaleKey( spep_3 -3 + 60, 1, 0.28, 0.28 );
setScaleKey( spep_3 -3 + 62, 1, 0.29, 0.29 );
setScaleKey( spep_3 -3 + 64, 1, 0.3, 0.3 );
setScaleKey( spep_3 -3 + 66, 1, 0.32, 0.32 );

setRotateKey( spep_3 -3 + 46, 1, -14.5 );

-- ** 音 ** --
--敵に向かっていく
setSeVolume( spep_3 + 2, 1242, 32 );
setSeVolume( spep_3 + 4, 1242, 64 );
setSeVolume( spep_3 + 6, 1242, 98 );
setSeVolume( spep_3 + 7, 1242, 126 );
setSeVolume( spep_3 + 44, 1242, 126 );
setSeVolume( spep_3 + 48, 1242, 102 );
setSeVolume( spep_3 + 52, 1242, 89 );
setSeVolume( spep_3 + 56, 1242, 72 );
setSeVolume( spep_3 + 60, 1242, 56 );
setSeVolume( spep_3 + 64, 1242, 34 );

SE8 = playSe( spep_3 + 16, 1183 );

SE9 = playSe( spep_3 + 41, 1117 );
setSeVolume( spep_3 + 41, 1117, 141 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 68; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE5, 0 );
stopSe( SP_dodge - 12, SE6, 0 );
stopSe( SP_dodge - 12, SE7, 0 );
stopSe( SP_dodge - 12, SE8, 0 );
stopSe( SP_dodge - 12, SE9, 0 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

-- ** 敵キャラクター ** --
setMoveKey( SP_dodge + 0, 1, -250.3, 164.5 , 0 );
setMoveKey( SP_dodge + 2, 1, -256.4, 158.3 , 0 );
setMoveKey( SP_dodge + 4, 1, -249.9, 159.7 , 0 );
setMoveKey( SP_dodge + 6, 1, -245.1, 160.2 , 0 );
setMoveKey( SP_dodge + 8, 1, -239.8, 160.6 , 0 );
setMoveKey( SP_dodge + 10, 1, -237.4, 168.2 , 0 );

setScaleKey( SP_dodge + 0, 1, 0.32, 0.32 );
setScaleKey( SP_dodge + 2, 1, 0.33, 0.33 );
setScaleKey( SP_dodge + 4, 1, 0.35, 0.35 );
setScaleKey( SP_dodge + 6, 1, 0.38, 0.38 );
setScaleKey( SP_dodge + 8, 1, 0.4, 0.4 );
setScaleKey( SP_dodge + 10, 1, 0.43, 0.43 );

setRotateKey( SP_dodge + 0, 1, -14.5 );
setRotateKey( SP_dodge + 2, 1, -14.5 );
setRotateKey( SP_dodge + 4, 1, -0.8 );
setRotateKey( SP_dodge + 6, 1, -0.8 );
setRotateKey( SP_dodge + 8, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0.4 );

-- ** 白フェード ** --
entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

ctga = entryEffectLife( spep_3 -3 + 124 -20,  10005, 12 +20, 0x100, -1, 0, 12.2, 405.5 );  --ガッ
setEffMoveKey( spep_3 -3 + 124 -20, ctga, 12.2, 405.5 , 0 );
setEffMoveKey( spep_3 -3 + 134, ctga, 12.2, 405.5 , 0 );
setEffMoveKey( spep_3 -3 + 136, ctga, 12.2, 415.5 , 0 );

setEffScaleKey( spep_3 -3 + 124 -20, ctga, 3.21, 3.21 );
setEffScaleKey( spep_3 -3 + 124 -20, ctga, 3.21, 3.21 );
setEffScaleKey( spep_3 -3 + 126 -20, ctga, 3.36, 3.36 );
setEffScaleKey( spep_3 -3 + 128 -20, ctga, 3.51, 3.51 );
setEffScaleKey( spep_3 -3 + 130 -20, ctga, 3.66, 3.66 );
setEffScaleKey( spep_3 -3 + 132 -20, ctga, 3.81, 3.81 );
setEffScaleKey( spep_3 -3 + 134 -20, ctga, 3.96, 3.96 );
setEffScaleKey( spep_3 -3 + 136, ctga, 4.03, 4.03 );

setEffRotateKey( spep_3 -3 + 124 -20, ctga, 0 );
setEffRotateKey( spep_3 -3 + 136, ctga, 0 );

setEffAlphaKey( spep_3 -3 + 124 -20, ctga, 255 );
setEffAlphaKey( spep_3 -3 + 134, ctga, 255 );
setEffAlphaKey( spep_3 -3 + 136, ctga, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 228, 1, 0 );
changeAnime( spep_3 -3 + 90, 1, 1);
changeAnime( spep_3 -3 + 104, 1, 4);

setMoveKey( spep_3 -3 + 68, 1, -256.4, 158.3 , 0 );
setMoveKey( spep_3 -3 + 70, 1, -249.9, 159.7 , 0 );
setMoveKey( spep_3 -3 + 72, 1, -245.1, 160.2 , 0 );
setMoveKey( spep_3 -3 + 74, 1, -239.8, 160.6 , 0 );
setMoveKey( spep_3 -3 + 76, 1, -237.4, 168.2 , 0 );
setMoveKey( spep_3 -3 + 78, 1, -224.7, 165 , 0 );
setMoveKey( spep_3 -3 + 80, 1, -222.7, 162.3 , 0 );
setMoveKey( spep_3 -3 + 82, 1, -220, 159.7 , 0 );
setMoveKey( spep_3 -3 + 84, 1, -214.1, 159.5 , 0 );
setMoveKey( spep_3 -3 + 86, 1, -207.6, 159.3 , 0 );
setMoveKey( spep_3 -3 + 88, 1, -200.3, 159 , 0 );
setMoveKey( spep_3 -3 + 89, 1, -200.3, 159 , 0 );
setMoveKey( spep_3 -3 + 90, 1, -33.7, -32.4 , 0 );
setMoveKey( spep_3 -3 + 92, 1, -53.7, -32.4 , 0 );
setMoveKey( spep_3 -3 + 94, 1, -73.7, -32.4 , 0 );
setMoveKey( spep_3 -3 + 96, 1, -93.7, -32.4 , 0 );
setMoveKey( spep_3 -3 + 98, 1, -113.7, -32.4 , 0 );
setMoveKey( spep_3 -3 + 100, 1, -133.7, -32.4 , 0 );
setMoveKey( spep_3 -3 + 102, 1, -153.7, -32.4 , 0 );
setMoveKey( spep_3 -3 + 103, 1, -153.7, -32.4 , 0 );
a = 100;
setMoveKey( spep_3 -3 + 104, 1, -233.6 + a, -386.7 , 0 );  --ゴースト近く
setMoveKey( spep_3 -3 + 106, 1, -242.4 + a, -386.7 , 0 );
setMoveKey( spep_3 -3 + 108, 1, -249.9 + a, -386.7 , 0 );
setMoveKey( spep_3 -3 + 110, 1, -256.3 + a, -386.7 , 0 );
setMoveKey( spep_3 -3 + 112, 1, -261.6 + a, -386.7 , 0 );
setMoveKey( spep_3 -3 + 114, 1, -265.9 + a, -386.7 , 0 );
setMoveKey( spep_3 -3 + 116, 1, -269.4 + a, -386.7 , 0 );
setMoveKey( spep_3 -3 + 118, 1, -272.1 + a, -386.7 , 0 );
setMoveKey( spep_3 -3 + 120, 1, -274.1 + a, -386.7 , 0 );
setMoveKey( spep_3 -3 + 122, 1, -275.6 + a, -386.7 , 0 );
setMoveKey( spep_3 -3 + 124, 1, -276.5 + a, -386.7 , 0 );
setMoveKey( spep_3 -3 + 126, 1, -277.1 + a, -386.7 , 0 );
setMoveKey( spep_3 -3 + 128, 1, -277.4 + a, -386.7 , 0 );
setMoveKey( spep_3 -3 + 130, 1, -277.5 + a, -386.7 , 0 );
setMoveKey( spep_3 -3 + 132, 1, -277.6 + a, -386.7 , 0 );
setMoveKey( spep_3 -3 + 133, 1, -277.6 + a, -386.7 , 0 );
b = 165;
c = 13;
setMoveKey( spep_3 -3 + 134, 1, -485.5 + b, -834.8 - c, 0 );
setMoveKey( spep_3 + 228, 1, -485.5 + b, -834.8 - c, 0 );

setScaleKey( spep_3 -3 + 68, 1, 0.33, 0.33 );
setScaleKey( spep_3 -3 + 70, 1, 0.35, 0.35 );
setScaleKey( spep_3 -3 + 72, 1, 0.38, 0.38 );
setScaleKey( spep_3 -3 + 74, 1, 0.4, 0.4 );
setScaleKey( spep_3 -3 + 76, 1, 0.43, 0.43 );
setScaleKey( spep_3 -3 + 78, 1, 0.47, 0.47 );
setScaleKey( spep_3 -3 + 80, 1, 0.51, 0.51 );
setScaleKey( spep_3 -3 + 82, 1, 0.55, 0.55 );
setScaleKey( spep_3 -3 + 84, 1, 0.6, 0.6 );
setScaleKey( spep_3 -3 + 86, 1, 0.66, 0.66 );
setScaleKey( spep_3 -3 + 88, 1, 0.72, 0.72 );
setScaleKey( spep_3 -3 + 89, 1, 0.72, 0.72 );
setScaleKey( spep_3 -3 + 90, 1, 2.44, 2.44 );
setScaleKey( spep_3 -3 + 103, 1, 2.44, 2.44 );
setScaleKey( spep_3 -3 + 104, 1, 6.5, 6.5 );
setScaleKey( spep_3 -3 + 132, 1, 6.5, 6.5 );
setScaleKey( spep_3 -3 + 133, 1, 6.5, 6.5 );
d = 0.4;
setScaleKey( spep_3 -3 + 134, 1, 11.18 + d, 11.18 + d );
setScaleKey( spep_3 + 228, 1, 11.18 + d, 11.18 + d );

setRotateKey( spep_3 -3 + 89, 1, -14.5 );
setRotateKey( spep_3 -3 + 90, 1, -0.8 );
setRotateKey( spep_3 -3 + 103, 1, -0.8 );
setRotateKey( spep_3 -3 + 104, 1, 0 );
setRotateKey( spep_3 -3 + 106, 1, 0.4 );
setRotateKey( spep_3 -3 + 108, 1, 0.7 );
setRotateKey( spep_3 -3 + 110, 1, 1 );
setRotateKey( spep_3 -3 + 112, 1, 1.3 );
setRotateKey( spep_3 -3 + 114, 1, 1.5 );
setRotateKey( spep_3 -3 + 116, 1, 1.6 );
setRotateKey( spep_3 -3 + 118, 1, 1.8 );
setRotateKey( spep_3 -3 + 120, 1, 1.8 );
setRotateKey( spep_3 -3 + 122, 1, 1.9 );
setRotateKey( spep_3 -3 + 124, 1, 2 );
setRotateKey( spep_3 + 228, 1, 2 );

-- ** 音 ** --
--敵に向かっていく
setSeVolume( spep_3 + 68, 1242, 12 );
setSeVolume( spep_3 + 72, 1242, 0 );
stopSe( spep_3 + 72, SE5, 0 );
stopSe( spep_3 + 102, SE7, 0 );

stopSe( spep_3 + 102, SE8, 0 );

setSeVolume( spep_3 + 101, 1117, 141 );
setSeVolume( spep_3 + 102, 1117, 98 );
setSeVolume( spep_3 + 104, 1117, 56 );
setSeVolume( spep_3 + 106, 1117, 14 );
setSeVolume( spep_3 + 109, 1117, 0 );
stopSe( spep_3 + 109, SE9, 0 );

--密着
playSe( spep_3 + 101, 1113 );
SE10 = playSe( spep_3 + 102, 1192 );
stopSe( spep_3 + 113, SE10, 11 );
SE11 = playSe( spep_3 + 102, 31 );
stopSe( spep_3 + 112, SE11, 19 );

--自爆モーション
SE11_1 = playSe( spep_3 + 151, 1157 );
playSe( spep_3 + 173, 17 );
setSeVolume( spep_3 + 173, 17, 56 );
SE12 = playSe( spep_3 + 179, 1144 );
setSeVolume( spep_3 + 179, 1144, 40 );
SE13 = playSe( spep_3 + 179, 1222 );
stopSe( spep_3 + 227, SE13, 19 );
SE13_1 = playSe( spep_3 + 185, 33 );

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 230, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 228;

------------------------------------------------------
-- 爆発(170F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --爆発(ef_005)
setEffMoveKey( spep_4 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_4 + 170, finish, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_4 + 170, finish, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish, 0 );
setEffRotateKey( spep_4 + 170, finish, 0 );
setEffAlphaKey( spep_4 + 0, finish, 255 );
setEffAlphaKey( spep_4 + 170, finish, 255 );

-- ** 書き文字エントリー ** --
ctdon = entryEffectLife( spep_4 -3 + 42,  10048, 46, 0x100, -1, 0, 12, -257.9 );  --ドーン
setEffMoveKey( spep_4 -3 + 42, ctdon, 12, -257.9 , 0 );
setEffMoveKey( spep_4 -3 + 44, ctdon, 27.3, -287.2 , 0 );
setEffMoveKey( spep_4 -3 + 46, ctdon, 10.7, -327.8 , 0 );
setEffMoveKey( spep_4 -3 + 48, ctdon, 10, -345.9 , 0 );
setEffMoveKey( spep_4 -3 + 50, ctdon, 31.2, -346.2 , 0 );
setEffMoveKey( spep_4 -3 + 52, ctdon, 10, -359.4 , 0 );
setEffMoveKey( spep_4 -3 + 54, ctdon, -7.3, -340.5 , 0 );
setEffMoveKey( spep_4 -3 + 56, ctdon, 10, -347.2 , 0 );
setEffMoveKey( spep_4 -3 + 58, ctdon, 31.7, -347.5 , 0 );
setEffMoveKey( spep_4 -3 + 60, ctdon, 10, -361 , 0 );
setEffMoveKey( spep_4 -3 + 62, ctdon, -7.7, -341.7 , 0 );
setEffMoveKey( spep_4 -3 + 64, ctdon, 10, -348.5 , 0 );
setEffMoveKey( spep_4 -3 + 66, ctdon, 32.1, -348.9 , 0 );
setEffMoveKey( spep_4 -3 + 68, ctdon, 10, -362.6 , 0 );
setEffMoveKey( spep_4 -3 + 70, ctdon, -8, -342.9 , 0 );
setEffMoveKey( spep_4 -3 + 72, ctdon, 10, -349.9 , 0 );
setEffMoveKey( spep_4 -3 + 74, ctdon, 32.5, -350.2 , 0 );
setEffMoveKey( spep_4 -3 + 76, ctdon, 10, -364.2 , 0 );
setEffMoveKey( spep_4 -3 + 78, ctdon, -8.4, -344.1 , 0 );
setEffMoveKey( spep_4 -3 + 80, ctdon, 10, -351.2 , 0 );
setEffMoveKey( spep_4 -3 + 82, ctdon, 33, -351.5 , 0 );
setEffMoveKey( spep_4 -3 + 84, ctdon, 10, -365.8 , 0 );
setEffMoveKey( spep_4 -3 + 86, ctdon, -8.7, -345 , 0 );
setEffMoveKey( spep_4 -3 + 88, ctdon, 10, -351.9 , 0 );

setEffScaleKey( spep_4 -3 + 42, ctdon, 0.82, 0.82 );
setEffScaleKey( spep_4 -3 + 44, ctdon, 0.97, 0.97 );
setEffScaleKey( spep_4 -3 + 46, ctdon, 1.13, 1.13 );
setEffScaleKey( spep_4 -3 + 48, ctdon, 1.29, 1.29 );
setEffScaleKey( spep_4 -3 + 50, ctdon, 1.3, 1.3 );
setEffScaleKey( spep_4 -3 + 52, ctdon, 1.3, 1.3 );
setEffScaleKey( spep_4 -3 + 54, ctdon, 1.31, 1.31 );
setEffScaleKey( spep_4 -3 + 56, ctdon, 1.32, 1.32 );
setEffScaleKey( spep_4 -3 + 58, ctdon, 1.32, 1.32 );
setEffScaleKey( spep_4 -3 + 60, ctdon, 1.33, 1.33 );
setEffScaleKey( spep_4 -3 + 62, ctdon, 1.34, 1.34 );
setEffScaleKey( spep_4 -3 + 64, ctdon, 1.34, 1.34 );
setEffScaleKey( spep_4 -3 + 66, ctdon, 1.35, 1.35 );
setEffScaleKey( spep_4 -3 + 68, ctdon, 1.36, 1.36 );
setEffScaleKey( spep_4 -3 + 70, ctdon, 1.36, 1.36 );
setEffScaleKey( spep_4 -3 + 72, ctdon, 1.37, 1.37 );
setEffScaleKey( spep_4 -3 + 74, ctdon, 1.38, 1.38 );
setEffScaleKey( spep_4 -3 + 76, ctdon, 1.38, 1.38 );
setEffScaleKey( spep_4 -3 + 78, ctdon, 1.39, 1.39 );
setEffScaleKey( spep_4 -3 + 80, ctdon, 1.4, 1.4 );
setEffScaleKey( spep_4 -3 + 82, ctdon, 1.4, 1.4 );
setEffScaleKey( spep_4 -3 + 84, ctdon, 1.41, 1.41 );
setEffScaleKey( spep_4 -3 + 88, ctdon, 1.41, 1.41 );

setEffRotateKey( spep_4 -3 + 42, ctdon, 0 );
setEffRotateKey( spep_4 -3 + 88, ctdon, 0 );

setEffAlphaKey( spep_4 -3 + 42, ctdon, 255 );
setEffAlphaKey( spep_4 -3 + 84, ctdon, 255 );
setEffAlphaKey( spep_4 -3 + 86, ctdon, 128 );
setEffAlphaKey( spep_4 -3 + 88, ctdon, 0 );

-- ** 音 ** --
--自爆モーション
stopSe( spep_4 + 64, SE11_1, 0 );
stopSe( spep_4 + 2, SE13_1, 0 );
stopSe( spep_4 + 60, SE12, 0 );

--爆発
playSe( spep_4 + 54 -4, 1023 );
setSeVolume( spep_4 + 54 -4, 1023, 79 );
playSe( spep_4 + 54 -4, 1159 );
setSeVolume( spep_4 + 54 -4, 1159, 79 );
playSe( spep_4 + 54 -4, 1188 );
setSeVolume( spep_4 + 54 -4, 1188, 79 );

-- ** 背景 ** --
entryFadeBg( spep_4 + 0, 0, 230, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 50 );
endPhase( spep_4 + 168 );

end