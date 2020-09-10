--超サイヤ人ゴッドSS孫悟空(界王拳)&超サイヤ人ゴッドSSベジータ(進化)_かめはめ波&ファイナルフラッシュ

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
-- 前半(474F)
------------------------------------------------------
--味方側
SP_01 = 155629;  --前半　前
SP_02 = 155630;  --前半　奥
SP_03 = 155631;  --後半　前
SP_04 = 155632;  --後半　奥

spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 476, 0x100, -1, 0, 0, 0 );  --前半(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 476, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 476, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 476, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 476, first_f, 255 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 476, 0x80, -1, 0, 0, 0 );  --前半(ef_002)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 476, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 476, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 476, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 476, first_b, 255 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 476, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

--オーラ
SE0 =playSe( spep_0 + 0, 1269 );
setSeVolume( spep_0 + 0, 1269, 39 );
stopSe( spep_0 + 159, SE0, 0 );

SE1 = playSe( spep_0 + 0, 1181 );
setSeVolume( spep_0 + 0, 1181, 126 );
stopSe( spep_0 + 159, SE1, 0 );

SE2 = playSe( spep_0 + 0, 1176 );
setSeVolume( spep_0 + 0, 1176, 28 );
stopSe( spep_0 + 159, SE2, 0 );

--足音
playSe( spep_0 + 24, 1108 );
setSeVolume( spep_0 + 24, 1108, 127 );
playSe( spep_0 + 35, 1106 );
playSe( spep_0 + 58, 1108 );
setSeVolume( spep_0 + 58, 1108, 117 );
playSe( spep_0 + 77, 1106 );
playSe( spep_0 + 93, 1108 );
setSeVolume( spep_0 + 93, 1108, 81 );
playSe( spep_0 + 105, 1108 );
setSeVolume( spep_0 + 105, 1108, 79 );
playSe( spep_0 + 113, 1106 );
setSeVolume( spep_0 + 113, 1106, 89 );

--走り出し
playSe( spep_0 + 89, 44 );
setSeVolume( spep_0 + 89, 44, 51 );

SE3 = playSe( spep_0 + 89, 1109 );
setSeVolume( spep_0 + 89, 1109, 65 );
setSeVolume( spep_0 + 97, 1109, 65 );
setSeVolume( spep_0 + 100, 1109, 46 );
setSeVolume( spep_0 + 102, 1109, 23 );
setSeVolume( spep_0 + 105, 1109, 0 );
stopSe( spep_0 + 105, SE3, 0 );

SE4 = playSe( spep_0 + 89, 9 );
setSeVolume( spep_0 + 89, 9, 78 );
setSeVolume( spep_0 + 110, 9, 78 );
setSeVolume( spep_0 + 114, 9, 61 );
setSeVolume( spep_0 + 118, 9, 53 );
setSeVolume( spep_0 + 122, 9, 46 );
setSeVolume( spep_0 + 126, 9, 38 );
setSeVolume( spep_0 + 130, 9, 31 );
setSeVolume( spep_0 + 134, 9, 27 );
setSeVolume( spep_0 + 138, 9, 21 );
setSeVolume( spep_0 + 142, 9, 15 );
setSeVolume( spep_0 + 146, 9, 7 );
setSeVolume( spep_0 + 147, 9, 0 );
stopSe( spep_0 + 147, SE4, 0 );

SE5 = playSe( spep_0 + 89, 1116 );
stopSe( spep_0 + 112, SE5, 22 );

--前方ダッシュ
SE6 = playSe( spep_0 + 122, 1182 );
setSeVolume( spep_0 + 122, 1182, 112 );
setSeVolume( spep_0 + 164, 1182, 112 );
setSeVolume( spep_0 + 166, 1182, 57 );
setSeVolume( spep_0 + 167, 1182, 0 );
stopSe( spep_0 + 167, SE6, 0 );

SE7 = playSe( spep_0 + 122, 1183 );
stopSe( spep_0 + 173, SE7, 0 );

SE8 = playSe( spep_0 + 122, 9 );
setSeVolume( spep_0 + 122, 9, 81 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 138; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE0, 0 );
stopSe( SP_dodge - 12, SE1, 0 );
stopSe( SP_dodge - 12, SE2, 0 );
stopSe( SP_dodge - 12, SE4, 0 );
stopSe( SP_dodge - 12, SE6, 0 );
stopSe( SP_dodge - 12, SE7, 0 );
stopSe( SP_dodge - 12, SE8, 0 );

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

-- ** 書き文字エントリー ** --
ctbago = entryEffectLife( spep_0 -3 + 168,  10021, 18, 0x100, -1, 0, 39.8, 281.6 );  --バゴォ
setEffMoveKey( spep_0 -3 + 168, ctbago, 39.8, 281.6 , 0 );
setEffMoveKey( spep_0 -3 + 170, ctbago, 14.7, 320.4 , 0 );
setEffMoveKey( spep_0 -3 + 172, ctbago, 13.6, 344.7 , 0 );
setEffMoveKey( spep_0 -3 + 174, ctbago, 6.1, 339.5 , 0 );
setEffMoveKey( spep_0 -3 + 176, ctbago, 17.3, 360.7 , 0 );
setEffMoveKey( spep_0 -3 + 178, ctbago, 5.4, 354.1 , 0 );
setEffMoveKey( spep_0 -3 + 180, ctbago, 10.1, 362.5 , 0 );
setEffMoveKey( spep_0 -3 + 182, ctbago, 2.5, 355.1 , 0 );
setEffMoveKey( spep_0 -3 + 184, ctbago, 13.7, 381.8 , 0 );
setEffMoveKey( spep_0 -3 + 186, ctbago, 11.1, 396.8 , 0 );

setEffScaleKey( spep_0 -3 + 168, ctbago, 1.88, 1.88 );
setEffScaleKey( spep_0 -3 + 170, ctbago, 2.37, 2.37 );
setEffScaleKey( spep_0 -3 + 172, ctbago, 2.53, 2.53 );
setEffScaleKey( spep_0 -3 + 174, ctbago, 2.57, 2.57 );
setEffScaleKey( spep_0 -3 + 176, ctbago, 2.62, 2.62 );
setEffScaleKey( spep_0 -3 + 178, ctbago, 2.66, 2.66 );
setEffScaleKey( spep_0 -3 + 180, ctbago, 2.7, 2.7 );
setEffScaleKey( spep_0 -3 + 182, ctbago, 2.73, 2.73 );
setEffScaleKey( spep_0 -3 + 184, ctbago, 2.82, 2.82 );
setEffScaleKey( spep_0 -3 + 186, ctbago, 2.96, 2.96 );

setEffRotateKey( spep_0 -3 + 168, ctbago, -11.7 );
setEffRotateKey( spep_0 -3 + 170, ctbago, -14.6 );
setEffRotateKey( spep_0 -3 + 172, ctbago, -15.6 );
setEffRotateKey( spep_0 -3 + 186, ctbago, -15.6 );

setEffAlphaKey( spep_0 -3 + 168, ctbago, 255 );
setEffAlphaKey( spep_0 -3 + 180, ctbago, 255 );
setEffAlphaKey( spep_0 -3 + 182, ctbago, 227 );
setEffAlphaKey( spep_0 -3 + 184, ctbago, 142 );
setEffAlphaKey( spep_0 -3 + 186, ctbago, 0 );

ctbaki = entryEffectLife( spep_0 -3 + 186,  10020, 18, 0x100, -1, 0, 148.8, 136.4 );  --バキッ
setEffMoveKey( spep_0 -3 + 186, ctbaki, 148.8, 136.4 , 0 );
setEffMoveKey( spep_0 -3 + 188, ctbaki, 155.7, 215.9 , 0 );
setEffMoveKey( spep_0 -3 + 190, ctbaki, 180.4, 251 , 0 );
setEffMoveKey( spep_0 -3 + 192, ctbaki, 153.1, 248.8 , 0 );
setEffMoveKey( spep_0 -3 + 194, ctbaki, 153.6, 254.8 , 0 );
setEffMoveKey( spep_0 -3 + 196, ctbaki, 138.6, 253.4 , 0 );
setEffMoveKey( spep_0 -3 + 198, ctbaki, 143.6, 256.3 , 0 );
setEffMoveKey( spep_0 -3 + 200, ctbaki, 154.2, 263.7 , 0 );
setEffMoveKey( spep_0 -3 + 202, ctbaki, 146.5, 299.7 , 0 );
setEffMoveKey( spep_0 -3 + 204, ctbaki, 150.3, 314.2 , 0 );

setEffScaleKey( spep_0 -3 + 186, ctbaki, 1.65, 1.65 );
setEffScaleKey( spep_0 -3 + 188, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_0 -3 + 190, ctbaki, 1.78, 1.78 );
setEffScaleKey( spep_0 -3 + 192, ctbaki, 1.85, 1.85 );
setEffScaleKey( spep_0 -3 + 194, ctbaki, 1.91, 1.91 );
setEffScaleKey( spep_0 -3 + 196, ctbaki, 1.95, 1.95 );
setEffScaleKey( spep_0 -3 + 198, ctbaki, 1.98, 1.98 );
setEffScaleKey( spep_0 -3 + 200, ctbaki, 1.98, 1.98 );
setEffScaleKey( spep_0 -3 + 202, ctbaki, 2.24, 2.24 );
setEffScaleKey( spep_0 -3 + 204, ctbaki, 2.33, 2.33 );

setEffRotateKey( spep_0 -3 + 186, ctbaki, 33.7 );
setEffRotateKey( spep_0 -3 + 204, ctbaki, 33.7 );

setEffAlphaKey( spep_0 -3 + 186, ctbaki, 255 );
setEffAlphaKey( spep_0 -3 + 200, ctbaki, 255 );
setEffAlphaKey( spep_0 -3 + 202, ctbaki, 64 );
setEffAlphaKey( spep_0 -3 + 204, ctbaki, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 154, 1, 1 );
setDisp( spep_0 -3 + 208, 1, 0 );
changeAnime( spep_0 -3 + 154, 1, 104 );
changeAnime( spep_0 -3 + 168, 1, 108 );

setMoveKey( spep_0 -3 + 154, 1, 259.7, -41.6 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 259.7, -41.6 , 0 );
setMoveKey( spep_0 -3 + 162, 1, 239.7, -41.6 , 0 );
setMoveKey( spep_0 -3 + 164, 1, 219.7, -41.6 , 0 );
setMoveKey( spep_0 -3 + 166, 1, 199.7, -41.6 , 0 );
setMoveKey( spep_0 -3 + 167, 1, 199.7, -41.6 , 0 );
setMoveKey( spep_0 -3 + 168, 1, 106.2, 20.6 , 0 );
setMoveKey( spep_0 -3 + 170, 1, 96.8, -49.7 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 113.4, -54.6 , 0 );
setMoveKey( spep_0 -3 + 174, 1, 150.9, -56 , 0 );
setMoveKey( spep_0 -3 + 176, 1, 110.5, -42.2 , 0 );
setMoveKey( spep_0 -3 + 178, 1, 159.3, -31.5 , 0 );
setMoveKey( spep_0 -3 + 180, 1, 161.1, -67.1 , 0 );
setMoveKey( spep_0 -3 + 182, 1, 128.1, -41.5 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 103.1, -41.5 , 0 );
setMoveKey( spep_0 -3 + 186, 1, 119.6, -42.9 , 0 );
setMoveKey( spep_0 -3 + 188, 1, 62.5, -88 , 0 );
setMoveKey( spep_0 -3 + 190, 1, 221.8, -4.8 , 0 );
setMoveKey( spep_0 -3 + 192, 1, 171.2, -23.6 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 248, -22 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 220.1, -59.7 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 196.4, -20.3 , 0 );
setMoveKey( spep_0 -3 + 200, 1, 184.9, -42.6 , 0 );
setMoveKey( spep_0 -3 + 202, 1, 179.7, -29.5 , 0 );
setMoveKey( spep_0 -3 + 204, 1, 166.2, -19.2 , 0 );
setMoveKey( spep_0 -3 + 206, 1, 190.1, -42.6 , 0 );
setMoveKey( spep_0 -3 + 208, 1, 171.4, -16 , 0 );

setScaleKey( spep_0 -3 + 154, 1, 2.4, 2.4 );
setScaleKey( spep_0 -3 + 167, 1, 2.4, 2.4 );
setScaleKey( spep_0 -3 + 168, 1, 2.72, 2.72 );
setScaleKey( spep_0 -3 + 170, 1, 2.4, 2.4 );
setScaleKey( spep_0 -3 + 172, 1, 2.6, 2.6 );
setScaleKey( spep_0 -3 + 174, 1, 2.41, 2.41 );
setScaleKey( spep_0 -3 + 180, 1, 2.41, 2.41 );
setScaleKey( spep_0 -3 + 182, 1, 2.4, 2.4 );
setScaleKey( spep_0 -3 + 184, 1, 2.41, 2.41 );
setScaleKey( spep_0 -3 + 186, 1, 2.62, 2.62 );
setScaleKey( spep_0 -3 + 188, 1, 2.38, 2.38 );
setScaleKey( spep_0 -3 + 190, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 192, 1, 2.41, 2.41 );
setScaleKey( spep_0 -3 + 194, 1, 2.45, 2.45 );
setScaleKey( spep_0 -3 + 196, 1, 2.41, 2.41 );
setScaleKey( spep_0 -3 + 200, 1, 2.41, 2.41 );
setScaleKey( spep_0 -3 + 202, 1, 2.4, 2.4 );
setScaleKey( spep_0 -3 + 208, 1, 2.4, 2.4 );

setRotateKey( spep_0 -3 + 154, 1, 0 );
setRotateKey( spep_0 -3 + 167, 1, 0 );
setRotateKey( spep_0 -3 + 168, 1, 0 );
setRotateKey( spep_0 -3 + 170, 1, 0 );
setRotateKey( spep_0 -3 + 172, 1, 1.5 );
setRotateKey( spep_0 -3 + 174, 1, 2 );
setRotateKey( spep_0 -3 + 176, 1, 2.2 );
setRotateKey( spep_0 -3 + 178, 1, 2.3 );
setRotateKey( spep_0 -3 + 180, 1, 2.4 );
setRotateKey( spep_0 -3 + 184, 1, 2.4 );
setRotateKey( spep_0 -3 + 186, 1, 2.5 );
setRotateKey( spep_0 -3 + 188, 1, 2.5 );
setRotateKey( spep_0 -3 + 190, 1, 2.3 );
setRotateKey( spep_0 -3 + 192, 1, 2.3 );
setRotateKey( spep_0 -3 + 194, 1, 2.2 );
setRotateKey( spep_0 -3 + 208, 1, 2.2 );

-- ** 音 ** --
--ベジータパンチ
playSe( spep_0 + 162, 1189 );
setSeVolume( spep_0 + 162, 1189, 60 );

SE9 = playSe( spep_0 + 170, 1182 );
setSeVolume( spep_0 + 170, 1182, 178 );
setSeVolume( spep_0 + 181, 1182, 178 );
setSeVolume( spep_0 + 182, 1182, 118 );
setSeVolume( spep_0 + 184, 1182, 62 );
setSeVolume( spep_0 + 185, 1182, 23 );
setSeVolume( spep_0 + 186, 1182, 0 );
stopSe( spep_0 + 186, SE9, 0 );

playSe( spep_0 + 171, 1012 );
playSe( spep_0 + 172, 1187 );
setSeVolume( spep_0 + 172, 1187, 71 );

--悟空パンチ
playSe( spep_0 + 184, 1003 );
setSeVolume( spep_0 + 184, 1003, 89 );

SE10 = playSe( spep_0 + 190, 1182 );
setSeVolume( spep_0 + 190, 1182, 178 );
setSeVolume( spep_0 + 201, 1182, 178 );
setSeVolume( spep_0 + 202, 1182, 88 );
setSeVolume( spep_0 + 204, 1182, 43 );
setSeVolume( spep_0 + 206, 1182, 0 );
stopSe( spep_0 + 206, SE10, 0 );

playSe( spep_0 + 190, 1010 );
playSe( spep_0 + 192, 1187 );
setSeVolume( spep_0 + 192, 1187, 76 );

--ラッシュ
playSe( spep_0 + 208, 1009 );
playSe( spep_0 + 214, 1000 );
setSeVolume( spep_0 + 214, 1000, 77 );
playSe( spep_0 + 218, 1012 );
setSeVolume( spep_0 + 218, 1012, 91 );
playSe( spep_0 + 218, 1110 );
setSeVolume( spep_0 + 218, 1110, 74 );
playSe( spep_0 + 218, 1012 );
setSeVolume( spep_0 + 218, 1012, 73 );
playSe( spep_0 + 224, 1009 );
setSeVolume( spep_0 + 224, 1009, 77 );
playSe( spep_0 + 224, 1001 );
setSeVolume( spep_0 + 224, 1001, 54 );
playSe( spep_0 + 226, 1013 );
setSeVolume( spep_0 + 226, 1013, 73 );
playSe( spep_0 + 231, 1110 );
setSeVolume( spep_0 + 231, 1110, 76 );
playSe( spep_0 + 239, 1010 );
setSeVolume( spep_0 + 239, 1010, 76 );
playSe( spep_0 + 241, 1110 );
setSeVolume( spep_0 + 241, 1110, 79 );
playSe( spep_0 + 248, 1009 );
setSeVolume( spep_0 + 248, 1009, 89 );
playSe( spep_0 + 250, 1000 );
setSeVolume( spep_0 + 250, 1000, 80 );
playSe( spep_0 + 257, 1010 );
setSeVolume( spep_0 + 257, 1010, 62 );
playSe( spep_0 + 257, 1012 );
setSeVolume( spep_0 + 257, 1012, 78 );
playSe( spep_0 + 261, 1009 );
setSeVolume( spep_0 + 261, 1009, 83 );
playSe( spep_0 + 265, 1001 );
setSeVolume( spep_0 + 265, 1001, 73 );
playSe( spep_0 + 265, 1000 );
setSeVolume( spep_0 + 265, 1000, 88 );

SE11 = playSe( spep_0 + 271, 1182 );
setSeVolume( spep_0 + 271, 1182, 150 );
setSeVolume( spep_0 + 282, 1182, 150 );
setSeVolume( spep_0 + 284, 1182, 87 );
setSeVolume( spep_0 + 286, 1182, 0 );
stopSe( spep_0 + 286, SE11, 0 );

playSe( spep_0 + 275, 1110 );

--悟空アップラッシュ
playSe( spep_0 + 286, 1189 );
setSeVolume( spep_0 + 286, 1189, 72 );

SE12 = playSe( spep_0 + 290, 1187 );
setSeVolume( spep_0 + 290, 1187, 79 );
setSeVolume( spep_0 + 310, 1187, 79 );
setSeVolume( spep_0 + 314, 1187, 68 );
setSeVolume( spep_0 + 318, 1187, 61 );
setSeVolume( spep_0 + 322, 1187, 55 );
setSeVolume( spep_0 + 326, 1187, 43 );
setSeVolume( spep_0 + 330, 1187, 28 );
setSeVolume( spep_0 + 334, 1187, 15 );
setSeVolume( spep_0 + 338, 1187, 9 );
setSeVolume( spep_0 + 340, 1187, 4 );
setSeVolume( spep_0 + 341, 1187, 0 );
stopSe( spep_0 + 341, SE12, 0 );

playSe( spep_0 + 290, 1010 );
playSe( spep_0 + 291, 1000 );
setSeVolume( spep_0 + 291, 1000, 70 );

SE13 = playSe( spep_0 + 291, 1182 );
setSeVolume( spep_0 + 291, 1182, 178 );
setSeVolume( spep_0 + 300, 1182, 178 );
setSeVolume( spep_0 + 302, 1182, 99 );
setSeVolume( spep_0 + 304, 1182, 42 );
setSeVolume( spep_0 + 305, 1182, 5 );
stopSe( spep_0 + 312, SE13, 0 );

playSe( spep_0 + 299, 1000 );
setSeVolume( spep_0 + 299, 1000, 82 );
playSe( spep_0 + 310, 1010 );
setSeVolume( spep_0 + 310, 1010, 71 );
playSe( spep_0 + 312, 1009 );
setSeVolume( spep_0 + 312, 1009, 90 );

SE14 = playSe( spep_0 + 312, 1182 );
setSeVolume( spep_0 + 312, 1182, 178 );
setSeVolume( spep_0 + 321, 1182, 178 );
setSeVolume( spep_0 + 322, 1182, 99 );
setSeVolume( spep_0 + 324, 1182, 42 );
setSeVolume( spep_0 + 326, 1182, 5 );
stopSe( spep_0 + 333, SE14, 0 );

playSe( spep_0 + 313, 1110 );
playSe( spep_0 + 323, 1009 );
playSe( spep_0 + 323, 1190 );
setSeVolume( spep_0 + 323, 1190, 83 );
--playSe( spep_0 + 325, 1110 );
playSe( spep_0 + 337, 1004 );
playSe( spep_0 + 342, 1001 );
setSeVolume( spep_0 + 342, 1001, 74 );

--[[SE15 = playSe( spep_0 + 344, 1182 );
setSeVolume( spep_0 + 344, 1182, 158 );
setSeVolume( spep_0 + 353, 1182, 158 );
setSeVolume( spep_0 + 354, 1182, 102 );
setSeVolume( spep_0 + 356, 1182, 42 );
--setSeVolume( spep_0 + 358, 1182, 5 );
stopSe( spep_0 + 360 -2, SE15, 0 );]]

SE16 = playSe( spep_0 + 344, 1187 );
setSeVolume( spep_0 + 344, 1187, 78 );
--[[setSeVolume( spep_0 + 358, 1187, 78 );
setSeVolume( spep_0 + 362, 1187, 69 );
setSeVolume( spep_0 + 366, 1187, 61 );
setSeVolume( spep_0 + 370, 1187, 57 );
setSeVolume( spep_0 + 374, 1187, 49 );
setSeVolume( spep_0 + 378, 1187, 41 );
setSeVolume( spep_0 + 382, 1187, 28 );
setSeVolume( spep_0 + 386, 1187, 18 );
setSeVolume( spep_0 + 390, 1187, 14 );
setSeVolume( spep_0 + 394, 1187, 4 );
setSeVolume( spep_0 + 395, 1187, 0 );
stopSe( spep_0 + 395, SE16, 0 );]]
--[[setSeVolume( spep_0 + 353, 1187, 78 );
setSeVolume( spep_0 + 354, 1187, 43 );
setSeVolume( spep_0 + 356, 1187, 32 );
setSeVolume( spep_0 + 358, 1187, 0 );
stopSe( spep_0 + 358, SE16, 0 );]]

--[[playSe( spep_0 + 344, 1006 );
setSeVolume( spep_0 + 344, 1006, 68 );
playSe( spep_0 + 350, 1013 );
setSeVolume( spep_0 + 350, 1013, 74 );]]

playSe( spep_0 + 360, 1182 );
setSeVolume( spep_0 + 360, 1182, 100 );
setSeVolume( spep_0 + 369, 1182, 100 );
setSeVolume( spep_0 + 370, 1182, 67 );
setSeVolume( spep_0 + 372, 1182, 32 );
setSeVolume( spep_0 + 374, 1182, 5 );

playSe( spep_0 + 360, 1009 );
setSeVolume( spep_0 + 360, 1009, 85 );
playSe( spep_0 + 361, 1110 );
setSeVolume( spep_0 + 361, 1110, 79 );

SE17 = playSe( spep_0 + 361, 1187 );
setSeVolume( spep_0 + 361, 1187, 68 );
--[[setSeVolume( spep_0 + 375, 1187, 68 );
setSeVolume( spep_0 + 380, 1187, 51 );
setSeVolume( spep_0 + 384, 1187, 47 );
setSeVolume( spep_0 + 388, 1187, 39 );
setSeVolume( spep_0 + 392, 1187, 31 );
setSeVolume( spep_0 + 396, 1187, 26 );
setSeVolume( spep_0 + 400, 1187, 18 );
setSeVolume( spep_0 + 404, 1187, 12 );
setSeVolume( spep_0 + 408, 1187, 6 );
setSeVolume( spep_0 + 412, 1187, 0 );
stopSe( spep_0 + 412, SE17, 0 );]]

playSe( spep_0 + 364, 1009 );
setSeVolume( spep_0 + 364, 1009, 80 );

--ベジータアップラッシュ
SE018 = playSe( spep_0 + 287, 1181 );
setSeVolume( spep_0 + 287, 1181, 141 );

playSe( spep_0 + 379, 1189 );
playSe( spep_0 + 383, 1010 );
playSe( spep_0 + 384, 1000 );
setSeVolume( spep_0 + 384, 1000, 110 );

SE18 = playSe( spep_0 + 384, 1187 );
setSeVolume( spep_0 + 384, 1187, 76 );
--[[setSeVolume( spep_0 + 398, 1187, 76 );
setSeVolume( spep_0 + 400, 1187, 68 );
setSeVolume( spep_0 + 404, 1187, 59 );
setSeVolume( spep_0 + 408, 1187, 51 );
setSeVolume( spep_0 + 412, 1187, 43 );
setSeVolume( spep_0 + 416, 1187, 36 );
setSeVolume( spep_0 + 420, 1187, 27 );
setSeVolume( spep_0 + 424, 1187, 22 );
setSeVolume( spep_0 + 428, 1187, 15 );
setSeVolume( spep_0 + 432, 1187, 10 );
setSeVolume( spep_0 + 434, 1187, 6 );
setSeVolume( spep_0 + 435, 1187, 0 );
stopSe( spep_0 + 435, SE18, 0 );]]

SE19 = playSe( spep_0 + 384, 1182 );
setSeVolume( spep_0 + 384, 1182, 158 );
setSeVolume( spep_0 + 393, 1182, 158 );
setSeVolume( spep_0 + 394, 1182, 98 );
setSeVolume( spep_0 + 396, 1182, 48 );
setSeVolume( spep_0 + 398, 1182, 5 );
stopSe( spep_0 + 401, SE19, 0 );

playSe( spep_0 + 394, 1001 );
setSeVolume( spep_0 + 394, 1001, 72 );

SE20 = playSe( spep_0 + 401, 1182 );
setSeVolume( spep_0 + 401, 1182, 91 );
setSeVolume( spep_0 + 410, 1182, 91 );
setSeVolume( spep_0 + 412, 1182, 58 );
setSeVolume( spep_0 + 414, 1182, 32 );
setSeVolume( spep_0 + 415, 1182, 5 );
stopSe( spep_0 + 422, SE20, 0 );

playSe( spep_0 + 401, 1009 );
setSeVolume( spep_0 + 401, 1009, 85 );
playSe( spep_0 + 402, 1110 );
setSeVolume( spep_0 + 402, 1110, 94 );
playSe( spep_0 + 411, 1000 );
setSeVolume( spep_0 + 411, 1000, 77 );
playSe( spep_0 + 421, 1009 );
playSe( spep_0 + 421, 1190 );
setSeVolume( spep_0 + 421, 1190, 70 );
playSe( spep_0 + 423, 1110 );
playSe( spep_0 + 429, 1010 );
setSeVolume( spep_0 + 429, 1010, 60 );
playSe( spep_0 + 432, 1004 );
setSeVolume( spep_0 + 432, 1004, 69 );
playSe( spep_0 + 437, 1001 );
setSeVolume( spep_0 + 437, 1001, 86 );

SE21 = playSe( spep_0 + 439, 1182 );
setSeVolume( spep_0 + 439, 1182, 116 );
setSeVolume( spep_0 + 448, 1182, 116 );
setSeVolume( spep_0 + 450, 1182, 69 );
setSeVolume( spep_0 + 452, 1182, 34 );
setSeVolume( spep_0 + 453, 1182, 5 );

SE22 = playSe( spep_0 + 439, 1187 );
setSeVolume( spep_0 + 439, 1187, 66 );
setSeVolume( spep_0 + 453, 1187, 66 );
setSeVolume( spep_0 + 458, 1187, 60 );
setSeVolume( spep_0 + 462, 1187, 54 );
setSeVolume( spep_0 + 466, 1187, 50 );
setSeVolume( spep_0 + 470, 1187, 44 );

playSe( spep_0 + 445, 1012 );
setSeVolume( spep_0 + 445, 1012, 76 );
SE23 = playSe( spep_0 + 452, 1006 );
SE24 = playSe( spep_0 + 453, 1110 );
SE25 = playSe( spep_0 + 455, 1009 );
SE26 = playSe( spep_0 + 462, 1009 );
SE27 = playSe( spep_0 + 464, 1000 );
setSeVolume( spep_0 + 464, 1000, 124 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 472;

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

--ベジータアップラッシュ
stopSe( spep_1 + 4, SE018, 0 );
stopSe( spep_1 + 5, SE21, 0 );

setSeVolume( spep_1 + 0, 1187, 38 );
setSeVolume( spep_1 + 4, 1187, 31 );
setSeVolume( spep_1 + 8, 1187, 26 );
setSeVolume( spep_1 + 12, 1187, 17 );
setSeVolume( spep_1 + 14, 1187, 8 );
setSeVolume( spep_1 + 16, 1187, 0 );
stopSe( spep_1 + 16, SE22, 0 );

stopSe( spep_1 + 4, SE23, 0 );
stopSe( spep_1 + 4, SE24, 0 );
stopSe( spep_1 + 4, SE25, 0 );
stopSe( spep_1 + 4, SE26, 0 );
stopSe( spep_1 + 4, SE27, 0 );

--前方ダッシュ
SE28 = playSe( spep_1 + 93, 1072 );
setSeVolume( spep_1 + 93, 1072, 65 );

SE29 = playSe( spep_1 + 93, 1182 );
setSeVolume( spep_1 + 93, 1182, 130 );

SE30 = playSe( spep_1 + 93, 1183 );
setSeVolume( spep_1 + 93, 1183, 54 );

playSe( spep_1 + 93, 9 );
setSeVolume( spep_1 + 93, 9, 3 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;

------------------------------------------------------
-- 後半(524F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --後半(ef_003)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 524, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 524, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 524, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 524, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --後半(ef_004)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 524, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 524, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 524, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 524, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 40, 1, 1 );
setDisp( spep_2 -3 + 112, 1, 0 );
setDisp( spep_2 -3 + 370, 1, 1 );
setDisp( spep_2 -3 + 418, 1, 0 );
changeAnime( spep_2 -3 + 40, 1, 107 );
changeAnime( spep_2 -3 + 74, 1, 6 );
changeAnime( spep_2 -3 + 76, 1, 105 );
changeAnime( spep_2 -3 + 370, 1, 107 );

setMoveKey( spep_2 -3 + 40, 1, 87.8, -436.3 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 87.8, -436.3 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 229.8, -526.7 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 22.9, -517.6 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 87.4, -387.5 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 98, -361.2 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 68.8, -545 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 117.2, -457.4 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 74.6, -337.1 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 125.7, -337 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 74.2, -327.5 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 61.6, -416.3 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 83.6, -314.9 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 80.9, -318.5 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 86.9, -317.6 , 0 );
setMoveKey( spep_2 -3 + 73, 1, 86.9, -317.6 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 42.4, -285.4 , 0 );
setMoveKey( spep_2 -3 + 75, 1, 42.4, -285.4 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 21.4, -16.4 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 10.2, -7.3 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 10.8, 0.3 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 3.1, 1.6 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 7, 1.1 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 1.5, 8.8 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 4.2, 4 , 0 );
setMoveKey( spep_2 -3 + 90, 1, -3.4, 11.6 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 4.2, 9.7 , 0 );
setMoveKey( spep_2 -3 + 94, 1, -5.6, 10.8 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 2.2, 10.8 , 0 );
setMoveKey( spep_2 -3 + 98, 1, -4, 13.9 , 0 );
setMoveKey( spep_2 -3 + 100, 1, -0.3, 9.1 , 0 );
setMoveKey( spep_2 -3 + 102, 1, -2.1, 15.3 , 0 );
setMoveKey( spep_2 -3 + 104, 1, -3.3, 10 , 0 );
setMoveKey( spep_2 -3 + 106, 1, -0.9, 17.2 , 0 );
setMoveKey( spep_2 -3 + 108, 1, -2.2, 12.8 , 0 );
setMoveKey( spep_2 -3 + 112, 1, -2.2, 12.8 , 0 );
setMoveKey( spep_2 -3 + 370, 1, 0, -77.5 , 0 );
setMoveKey( spep_2 -3 + 372, 1, 0, -81.4 , 0 );
setMoveKey( spep_2 -3 + 374, 1, 0, -85.1 , 0 );
setMoveKey( spep_2 -3 + 376, 1, 0, -88.6 , 0 );
setMoveKey( spep_2 -3 + 378, 1, 0, -92 , 0 );
setMoveKey( spep_2 -3 + 380, 1, 0, -95.2 , 0 );
setMoveKey( spep_2 -3 + 382, 1, 0, -98.3 , 0 );
setMoveKey( spep_2 -3 + 384, 1, 0, -101.1 , 0 );
setMoveKey( spep_2 -3 + 386, 1, 0, -103.8 , 0 );
setMoveKey( spep_2 -3 + 388, 1, 4, -100.3 , 0 );
setMoveKey( spep_2 -3 + 390, 1, -2, -108.7 , 0 );
setMoveKey( spep_2 -3 + 392, 1, -2.5, -101.3 , 0 );
setMoveKey( spep_2 -3 + 394, 1, 0.5, -99.3 , 0 );
setMoveKey( spep_2 -3 + 396, 1, 5.5, -124.1 , 0 );
setMoveKey( spep_2 -3 + 398, 1, 8.5, -99.8 , 0 );
setMoveKey( spep_2 -3 + 400, 1, -7, -103.8 , 0 );
setMoveKey( spep_2 -3 + 402, 1, 1.5, -118.6 , 0 );
setMoveKey( spep_2 -3 + 404, 1, -15, -93.7 , 0 );
setMoveKey( spep_2 -3 + 406, 1, 8, -105.1 , 0 );
setMoveKey( spep_2 -3 + 408, 1, -21, -139.4 , 0 );
setMoveKey( spep_2 -3 + 410, 1, 11.5, -115 , 0 );
setMoveKey( spep_2 -3 + 412, 1, 3.5, -98 , 0 );
setMoveKey( spep_2 -3 + 414, 1, -3.5, -132.2 , 0 );
setMoveKey( spep_2 -3 + 416, 1, 9.5, -97.3 , 0 );
setMoveKey( spep_2 -3 + 418, 1, 9.5, -97.3 , 0 );

setScaleKey( spep_2 -3 + 40, 1, 2.73, 2.73 );
setScaleKey( spep_2 -3 + 46, 1, 2.73, 2.73 );
setScaleKey( spep_2 -3 + 48, 1, 3.35, 3.35 );
setScaleKey( spep_2 -3 + 50, 1, 3.21, 3.21 );
setScaleKey( spep_2 -3 + 52, 1, 2.43, 2.43 );
setScaleKey( spep_2 -3 + 54, 1, 2.44, 2.44 );
setScaleKey( spep_2 -3 + 56, 1, 3.08, 3.08 );
setScaleKey( spep_2 -3 + 58, 1, 2.87, 2.87 );
setScaleKey( spep_2 -3 + 60, 1, 2.4, 2.4 );
setScaleKey( spep_2 -3 + 62, 1, 2.55, 2.55 );
setScaleKey( spep_2 -3 + 64, 1, 2.37, 2.37 );
setScaleKey( spep_2 -3 + 66, 1, 2.57, 2.57 );
setScaleKey( spep_2 -3 + 68, 1, 2.35, 2.35 );
setScaleKey( spep_2 -3 + 70, 1, 2.31, 2.31 );
setScaleKey( spep_2 -3 + 72, 1, 2.39, 2.39 );
setScaleKey( spep_2 -3 + 73, 1, 2.39, 2.39 );
setScaleKey( spep_2 -3 + 74, 1, 4.76, 4.76 );
setScaleKey( spep_2 -3 + 75, 1, 4.76, 4.76 );
setScaleKey( spep_2 -3 + 76, 1, 2.23, 2.23 );
setScaleKey( spep_2 -3 + 78, 1, 1.67, 1.67 );
setScaleKey( spep_2 -3 + 80, 1, 1.34, 1.34 );
setScaleKey( spep_2 -3 + 82, 1, 1.12, 1.12 );
setScaleKey( spep_2 -3 + 84, 1, 0.96, 0.96 );
setScaleKey( spep_2 -3 + 86, 1, 0.84, 0.84 );
setScaleKey( spep_2 -3 + 88, 1, 0.74, 0.74 );
setScaleKey( spep_2 -3 + 90, 1, 0.67, 0.67 );
setScaleKey( spep_2 -3 + 92, 1, 0.61, 0.61 );
setScaleKey( spep_2 -3 + 94, 1, 0.56, 0.56 );
setScaleKey( spep_2 -3 + 96, 1, 0.53, 0.53 );
setScaleKey( spep_2 -3 + 98, 1, 0.5, 0.5 );
setScaleKey( spep_2 -3 + 100, 1, 0.48, 0.48 );
setScaleKey( spep_2 -3 + 102, 1, 0.46, 0.46 );
setScaleKey( spep_2 -3 + 104, 1, 0.45, 0.45 );
setScaleKey( spep_2 -3 + 108, 1, 0.45, 0.45 );
setScaleKey( spep_2 -3 + 112, 1, 0.45, 0.45 );
setScaleKey( spep_2 -3 + 370, 1, 0.11, 0.11 );
setScaleKey( spep_2 -3 + 372, 1, 0.12, 0.12 );
setScaleKey( spep_2 -3 + 374, 1, 0.14, 0.14 );
setScaleKey( spep_2 -3 + 376, 1, 0.15, 0.15 );
setScaleKey( spep_2 -3 + 378, 1, 0.16, 0.16 );
setScaleKey( spep_2 -3 + 380, 1, 0.18, 0.18 );
setScaleKey( spep_2 -3 + 382, 1, 0.19, 0.19 );
setScaleKey( spep_2 -3 + 384, 1, 0.2, 0.2 );
setScaleKey( spep_2 -3 + 386, 1, 0.21, 0.21 );
setScaleKey( spep_2 -3 + 388, 1, 0.22, 0.22 );
setScaleKey( spep_2 -3 + 390, 1, 0.22, 0.22 );
setScaleKey( spep_2 -3 + 392, 1, 0.23, 0.23 );
setScaleKey( spep_2 -3 + 394, 1, 0.24, 0.24 );
setScaleKey( spep_2 -3 + 396, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 398, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 400, 1, 0.26, 0.26 );
setScaleKey( spep_2 -3 + 402, 1, 0.26, 0.26 );
setScaleKey( spep_2 -3 + 404, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 408, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 410, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 418, 1, 0.28, 0.28 );

setRotateKey( spep_2 -3 + 40, 1, -130.1 );
setRotateKey( spep_2 -3 + 72, 1, -130.1 );
setRotateKey( spep_2 -3 + 73, 1, -130.1 );
setRotateKey( spep_2 -3 + 74, 1, -302 );
setRotateKey( spep_2 -3 + 75, 1, -302 );
setRotateKey( spep_2 -3 + 76, 1, -381.6 );
setRotateKey( spep_2 -3 + 88, 1, -381.6 );
setRotateKey( spep_2 -3 + 90, 1, -381.5 );
setRotateKey( spep_2 -3 + 108, 1, -381.5 );
setRotateKey( spep_2 -3 + 112, 1, -381.5 );
setRotateKey( spep_2 -3 + 370, 1, 0 );
setRotateKey( spep_2 -3 + 418, 1, 0 );

-- ** 音 ** --
--前方ダッシュ
stopSe( spep_2 + 44, SE28, 0 );

setSeVolume( spep_2 + 8, 1182, 130 );
setSeVolume( spep_2 + 12, 1182, 130 );
setSeVolume( spep_2 + 16, 1182, 130 );
setSeVolume( spep_2 + 20, 1182, 130 );
setSeVolume( spep_2 + 24, 1182, 130 );
setSeVolume( spep_2 + 28, 1182, 130 );
setSeVolume( spep_2 + 32, 1182, 130 );
setSeVolume( spep_2 + 36, 1182, 0 );
stopSe( spep_2 + 36, SE29, 0 );

stopSe( spep_2 + 56, SE30, 0 );

setSeVolume( spep_2 + 0, 9, 12 );
setSeVolume( spep_2 + 4, 9, 19 );
setSeVolume( spep_2 + 8, 9, 36 );
setSeVolume( spep_2 + 12, 9, 51 );
setSeVolume( spep_2 + 16, 9, 65 );
setSeVolume( spep_2 + 17, 9, 76 );

SE31 = playSe( spep_2 + 1, 1168 );
setSeVolume( spep_2 + 1, 1168, 3 );
setSeVolume( spep_2 + 4, 1168, 12 );
setSeVolume( spep_2 + 8, 1168, 28 );
setSeVolume( spep_2 + 10, 1168, 42 );
setSeVolume( spep_2 + 14, 1168, 65 );
setSeVolume( spep_2 + 17, 1168, 83 );
setSeVolume( spep_2 + 30, 1168, 83 );
setSeVolume( spep_2 + 34, 1168, 65 );
setSeVolume( spep_2 + 38, 1168, 47 );
setSeVolume( spep_2 + 42, 1168, 31 );
setSeVolume( spep_2 + 46, 1168, 17 );
setSeVolume( spep_2 + 47, 1168, 0 );
stopSe( spep_2 + 47, SE31, 0 );

SE32 = playSe( spep_2 + 2, 1116 );
setSeVolume( spep_2 + 2, 1116, 68 );
setSeVolume( spep_2 + 28, 1116, 68 );
setSeVolume( spep_2 + 32, 1116, 41 );
setSeVolume( spep_2 + 36, 1116, 24 );
setSeVolume( spep_2 + 40, 1116, 8 );
setSeVolume( spep_2 + 44, 1116, 0 );
stopSe( spep_2 + 44, SE32, 0 );

--二人でパンチ
playSe( spep_2 + 29, 1004 );
playSe( spep_2 + 35, 1003 );
playSe( spep_2 + 48, 1120 );
setSeVolume( spep_2 + 48, 1120, 79 );
playSe( spep_2 + 49, 1187 );
setSeVolume( spep_2 + 49, 1187, 78 );

--かめはめ波溜め
SE33 = playSe( spep_2 + 35, 1210 );
setSeVolume( spep_2 + 35, 1210, 0 );
setSeVolume( spep_2 + 108, 1210, 20 );
setSeVolume( spep_2 + 110, 1210, 41 );
setSeVolume( spep_2 + 112, 1210, 62 );
setSeVolume( spep_2 + 114, 1210, 98 );
setSeVolume( spep_2 + 116, 1210, 126 );
stopSe( spep_2 + 205, SE33, 0 );

SE36 = playSe( spep_2 + 105, 1209 );
setSeVolume( spep_2 + 105, 1209, 71 );
stopSe( spep_2 + 205, SE36, 0 );

playSe( spep_2 + 177, 1259 );
setSeVolume( spep_2 + 177, 1259, 73 );

SE37 = playSe( spep_2 + 177, 1223 );
stopSe( spep_2 + 231, SE37, 50 );

SE38 = playSe( spep_2 + 177, 1022 );
stopSe( spep_2 + 237, SE38, 63 );

SE39 = playSe( spep_2 + 177, 1146 );
stopSe( spep_2 + 234, SE39, 6 );

SE40 = playSe( spep_2 + 177, 1213 );
setSeVolume( spep_2 + 177, 1213, 52 );
setSeVolume( spep_2 + 234, 1213, 52 );
setSeVolume( spep_2 + 238, 1213, 49 );
setSeVolume( spep_2 + 242, 1213, 44 );
setSeVolume( spep_2 + 246, 1213, 42 );
setSeVolume( spep_2 + 250, 1213, 40 );
setSeVolume( spep_2 + 254, 1213, 38 );
setSeVolume( spep_2 + 258, 1213, 36 );
setSeVolume( spep_2 + 262, 1213, 35 );
setSeVolume( spep_2 + 266, 1213, 33 );
setSeVolume( spep_2 + 270, 1213, 32 );
setSeVolume( spep_2 + 274, 1213, 31 );
setSeVolume( spep_2 + 278, 1213, 29 );
setSeVolume( spep_2 + 282, 1213, 27 );
setSeVolume( spep_2 + 286, 1213, 25 );
setSeVolume( spep_2 + 290, 1213, 24 );
setSeVolume( spep_2 + 294, 1213, 22 );
setSeVolume( spep_2 + 298, 1213, 21 );
setSeVolume( spep_2 + 302, 1213, 20 );
setSeVolume( spep_2 + 306, 1213, 18 );
setSeVolume( spep_2 + 310, 1213, 17 );
setSeVolume( spep_2 + 314, 1213, 15 );
setSeVolume( spep_2 + 318, 1213, 13 );
setSeVolume( spep_2 + 322, 1213, 11 );
setSeVolume( spep_2 + 326, 1213, 10 );
setSeVolume( spep_2 + 330, 1213, 7 );
setSeVolume( spep_2 + 334, 1213, 5 );
setSeVolume( spep_2 + 338, 1213, 3 );
setSeVolume( spep_2 + 340, 1213, 0 );
stopSe( spep_2 + 340, SE40, 0 );

--敵飛んでいく
SE34 = playSe( spep_2 + 75, 1121 );
setSeVolume( spep_2 + 75, 1121, 84 );
setSeVolume( spep_2 + 107, 1121, 84 );
setSeVolume( spep_2 + 110, 1121, 68 );
setSeVolume( spep_2 + 114, 1121, 59 );
setSeVolume( spep_2 + 118, 1121, 47 );
setSeVolume( spep_2 + 122, 1121, 32 );
setSeVolume( spep_2 + 126, 1121, 18 );
setSeVolume( spep_2 + 130, 1121, 5 );
setSeVolume( spep_2 + 132, 1121, 0 );
stopSe( spep_2 + 132, SE34, 0 );

SE35 = playSe( spep_2 + 75, 1183 );
stopSe( spep_2 + 113, SE35, 23 );

--かめはめ波発射
playSe( spep_2 + 177, 1027 );
setSeVolume( spep_2 + 177, 1027, 58 );

--オーラ
SE41 = playSe( spep_2 + 204, 1252 );
setSeVolume( spep_2 + 204, 1252, 200 );
setSeVolume( spep_2 + 301, 1252, 200 );
setSeVolume( spep_2 + 302, 1252, 192 );
setSeVolume( spep_2 + 304, 1252, 189 );
setSeVolume( spep_2 + 306, 1252, 183 );
setSeVolume( spep_2 + 308, 1252, 176 );
setSeVolume( spep_2 + 310, 1252, 168 );
setSeVolume( spep_2 + 312, 1252, 161 );
setSeVolume( spep_2 + 314, 1252, 157 );
setSeVolume( spep_2 + 316, 1252, 152 );
setSeVolume( spep_2 + 318, 1252, 146 );
setSeVolume( spep_2 + 320, 1252, 142 );
setSeVolume( spep_2 + 322, 1252, 138 );
setSeVolume( spep_2 + 324, 1252, 134 );
setSeVolume( spep_2 + 326, 1252, 127 );
setSeVolume( spep_2 + 328, 1252, 121 );
setSeVolume( spep_2 + 330, 1252, 114 );
setSeVolume( spep_2 + 332, 1252, 110 );
setSeVolume( spep_2 + 334, 1252, 105 );
setSeVolume( spep_2 + 336, 1252, 100 );
stopSe( spep_2 + 336, SE41, 26 );

playSe( spep_2 + 226, 1036 );
setSeVolume( spep_2 + 226, 1036, 79 );
playSe( spep_2 + 250, 1036 );
setSeVolume( spep_2 + 250, 1036, 79 );
playSe( spep_2 + 274, 1036 );
setSeVolume( spep_2 + 274, 1036, 79 );
playSe( spep_2 + 298, 1036 );
setSeVolume( spep_2 + 298, 1036, 79 );
playSe( spep_2 + 322, 1036 );
setSeVolume( spep_2 + 322, 1036, 79 );

--手を前に
playSe( spep_2 + 260, 1003 );
playSe( spep_2 + 260, 1233 );

--ファイナルフラッシュ溜め
SE42 = playSe( spep_2 + 286, 1262 );
setSeVolume( spep_2 + 286, 1262, 126 );
stopSe( spep_2 + 346, SE42, 0 );

SE43 = playSe( spep_2 + 286, 17 );
stopSe( spep_2 + 330, SE43, 29 );

SE44 = playSe( spep_2 + 286, 1157 );
setSeVolume( spep_2 + 286, 1157, 145 );
stopSe( spep_2 + 355, SE44, 0 );

SE45 = playSe( spep_2 + 286, 1191 );
setSeVolume( spep_2 + 286, 1191, 141 );
setSeVolume( spep_2 + 348, 1191, 141 );
setSeVolume( spep_2 + 352, 1191, 102 );
setSeVolume( spep_2 + 356, 1191, 75 );
setSeVolume( spep_2 + 360, 1191, 62 );
setSeVolume( spep_2 + 364, 1191, 35 );
setSeVolume( spep_2 + 368, 1191, 18 );
setSeVolume( spep_2 + 372, 1191, 8 );
setSeVolume( spep_2 + 373, 1191, 0 );
stopSe( spep_2 + 373, SE45, 0 );

--敵に気弾が向かう
SE46 = playSe( spep_2 + 320, 1212 );
setSeVolume( spep_2 + 320, 1212, 0 );
setSeVolume( spep_2 + 354, 1212, 3 );
setSeVolume( spep_2 + 358, 1212, 11 );
setSeVolume( spep_2 + 362, 1212, 18 );
setSeVolume( spep_2 + 366, 1212, 26 );
setSeVolume( spep_2 + 370, 1212, 32 );
setSeVolume( spep_2 + 374, 1212, 41 );
setSeVolume( spep_2 + 378, 1212, 50 );
setSeVolume( spep_2 + 382, 1212, 58 );
stopSe( spep_2 + 429, SE46, 0 );

SE47 = playSe( spep_2 + 355, 1215 );
setSeVolume( spep_2 + 355, 1215, 77 );
stopSe( spep_2 + 429, SE47, 0 );

SE48 = playSe( spep_2 + 355, 1213 );
setSeVolume( spep_2 + 355, 1213, 0 );
setSeVolume( spep_2 + 365, 1213, 1 );
setSeVolume( spep_2 + 366, 1213, 3 );
setSeVolume( spep_2 + 340, 1213, 4 );
setSeVolume( spep_2 + 344, 1213, 7 );
setSeVolume( spep_2 + 348, 1213, 8 );
setSeVolume( spep_2 + 352, 1213, 10 );
setSeVolume( spep_2 + 356, 1213, 13 );
setSeVolume( spep_2 + 360, 1213, 16 );
setSeVolume( spep_2 + 364, 1213, 19 );
setSeVolume( spep_2 + 368, 1213, 22 );
setSeVolume( spep_2 + 372, 1213, 26 );
setSeVolume( spep_2 + 376, 1213, 29 );
setSeVolume( spep_2 + 380, 1213, 31 );
setSeVolume( spep_2 + 384, 1213, 35 );
setSeVolume( spep_2 + 388, 1213, 38 );
setSeVolume( spep_2 + 392, 1213, 40 );
setSeVolume( spep_2 + 396, 1213, 45 );
setSeVolume( spep_2 + 400, 1213, 52 );
setSeVolume( spep_2 + 404, 1213, 57 );
setSeVolume( spep_2 + 408, 1213, 62 );
setSeVolume( spep_2 + 412, 1213, 70 );
setSeVolume( spep_2 + 416, 1213, 74 );
stopSe( spep_2 + 429, SE48, 0 );

playSe( spep_2 + 361, 1022 );
setSeVolume( spep_2 + 361, 1022, 3 );
setSeVolume( spep_2 + 364, 1022, 16 );
setSeVolume( spep_2 + 370, 1022, 32 );
setSeVolume( spep_2 + 374, 1022, 57 );
setSeVolume( spep_2 + 377, 1022, 74 );

--ファイナルフラッシュ発射
playSe( spep_2 + 332, 1133 );
playSe( spep_2 + 332, 1027 );
setSeVolume( spep_2 + 332, 1027, 78 );
playSe( spep_2 + 332, 1145 );

--爆発１
playSe( spep_2 + 416, 1023 );
setSeVolume( spep_2 + 416, 1023, 115 );
playSe( spep_2 + 423, 1159 );
setSeVolume( spep_2 + 423, 1159, 88 );

--爆発２
playSe( spep_2 + 445, 1188 );
playSe( spep_2 + 445, 1024 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 524, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 408 );
endPhase( spep_2 + 522 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 前半(474F)
------------------------------------------------------
--味方側
SP_01 = 155633;  --前半　前
SP_02 = 155634;  --前半　奥
SP_03 = 155635;  --後半　前
SP_04 = 155636;  --後半　奥

spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 476, 0x100, -1, 0, 0, 0 );  --前半(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 476, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 476, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 476, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 476, first_f, 255 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 476, 0x80, -1, 0, 0, 0 );  --前半(ef_002)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 476, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 476, first_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 476, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 476, first_b, 255 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 476, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

--オーラ
SE0 =playSe( spep_0 + 0, 1269 );
setSeVolume( spep_0 + 0, 1269, 39 );
stopSe( spep_0 + 159, SE0, 0 );

SE1 = playSe( spep_0 + 0, 1181 );
setSeVolume( spep_0 + 0, 1181, 126 );
stopSe( spep_0 + 159, SE1, 0 );

SE2 = playSe( spep_0 + 0, 1176 );
setSeVolume( spep_0 + 0, 1176, 28 );
stopSe( spep_0 + 159, SE2, 0 );

--足音
playSe( spep_0 + 24, 1108 );
setSeVolume( spep_0 + 24, 1108, 127 );
playSe( spep_0 + 35, 1106 );
playSe( spep_0 + 58, 1108 );
setSeVolume( spep_0 + 58, 1108, 117 );
playSe( spep_0 + 77, 1106 );
playSe( spep_0 + 93, 1108 );
setSeVolume( spep_0 + 93, 1108, 81 );
playSe( spep_0 + 105, 1108 );
setSeVolume( spep_0 + 105, 1108, 79 );
playSe( spep_0 + 113, 1106 );
setSeVolume( spep_0 + 113, 1106, 89 );

--走り出し
playSe( spep_0 + 89, 44 );
setSeVolume( spep_0 + 89, 44, 51 );

SE3 = playSe( spep_0 + 89, 1109 );
setSeVolume( spep_0 + 89, 1109, 65 );
setSeVolume( spep_0 + 97, 1109, 65 );
setSeVolume( spep_0 + 100, 1109, 46 );
setSeVolume( spep_0 + 102, 1109, 23 );
setSeVolume( spep_0 + 105, 1109, 0 );
stopSe( spep_0 + 105, SE3, 0 );

SE4 = playSe( spep_0 + 89, 9 );
setSeVolume( spep_0 + 89, 9, 78 );
setSeVolume( spep_0 + 110, 9, 78 );
setSeVolume( spep_0 + 114, 9, 61 );
setSeVolume( spep_0 + 118, 9, 53 );
setSeVolume( spep_0 + 122, 9, 46 );
setSeVolume( spep_0 + 126, 9, 38 );
setSeVolume( spep_0 + 130, 9, 31 );
setSeVolume( spep_0 + 134, 9, 27 );
setSeVolume( spep_0 + 138, 9, 21 );
setSeVolume( spep_0 + 142, 9, 15 );
setSeVolume( spep_0 + 146, 9, 7 );
setSeVolume( spep_0 + 147, 9, 0 );
stopSe( spep_0 + 147, SE4, 0 );

SE5 = playSe( spep_0 + 89, 1116 );
stopSe( spep_0 + 112, SE5, 22 );

--前方ダッシュ
SE6 = playSe( spep_0 + 122, 1182 );
setSeVolume( spep_0 + 122, 1182, 112 );
setSeVolume( spep_0 + 164, 1182, 112 );
setSeVolume( spep_0 + 166, 1182, 57 );
setSeVolume( spep_0 + 167, 1182, 0 );
stopSe( spep_0 + 167, SE6, 0 );

SE7 = playSe( spep_0 + 122, 1183 );
stopSe( spep_0 + 173, SE7, 0 );

SE8 = playSe( spep_0 + 122, 9 );
setSeVolume( spep_0 + 122, 9, 81 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 138; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE0, 0 );
stopSe( SP_dodge - 12, SE1, 0 );
stopSe( SP_dodge - 12, SE2, 0 );
stopSe( SP_dodge - 12, SE4, 0 );
stopSe( SP_dodge - 12, SE6, 0 );
stopSe( SP_dodge - 12, SE7, 0 );
stopSe( SP_dodge - 12, SE8, 0 );

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

-- ** 書き文字エントリー ** --
ctbago = entryEffectLife( spep_0 -3 + 168,  10021, 18, 0x100, -1, 0, 39.8, 281.6 );  --バゴォ
setEffMoveKey( spep_0 -3 + 168, ctbago, 39.8, 281.6 , 0 );
setEffMoveKey( spep_0 -3 + 170, ctbago, 14.7, 320.4 , 0 );
setEffMoveKey( spep_0 -3 + 172, ctbago, 13.6, 344.7 , 0 );
setEffMoveKey( spep_0 -3 + 174, ctbago, 6.1, 339.5 , 0 );
setEffMoveKey( spep_0 -3 + 176, ctbago, 17.3, 360.7 , 0 );
setEffMoveKey( spep_0 -3 + 178, ctbago, 5.4, 354.1 , 0 );
setEffMoveKey( spep_0 -3 + 180, ctbago, 10.1, 362.5 , 0 );
setEffMoveKey( spep_0 -3 + 182, ctbago, 2.5, 355.1 , 0 );
setEffMoveKey( spep_0 -3 + 184, ctbago, 13.7, 381.8 , 0 );
setEffMoveKey( spep_0 -3 + 186, ctbago, 11.1, 396.8 , 0 );

setEffScaleKey( spep_0 -3 + 168, ctbago, 1.88, 1.88 );
setEffScaleKey( spep_0 -3 + 170, ctbago, 2.37, 2.37 );
setEffScaleKey( spep_0 -3 + 172, ctbago, 2.53, 2.53 );
setEffScaleKey( spep_0 -3 + 174, ctbago, 2.57, 2.57 );
setEffScaleKey( spep_0 -3 + 176, ctbago, 2.62, 2.62 );
setEffScaleKey( spep_0 -3 + 178, ctbago, 2.66, 2.66 );
setEffScaleKey( spep_0 -3 + 180, ctbago, 2.7, 2.7 );
setEffScaleKey( spep_0 -3 + 182, ctbago, 2.73, 2.73 );
setEffScaleKey( spep_0 -3 + 184, ctbago, 2.82, 2.82 );
setEffScaleKey( spep_0 -3 + 186, ctbago, 2.96, 2.96 );

setEffRotateKey( spep_0 -3 + 168, ctbago, 11.7 );
setEffRotateKey( spep_0 -3 + 170, ctbago, 14.6 );
setEffRotateKey( spep_0 -3 + 172, ctbago, 15.6 );
setEffRotateKey( spep_0 -3 + 186, ctbago, 15.6 );

setEffAlphaKey( spep_0 -3 + 168, ctbago, 255 );
setEffAlphaKey( spep_0 -3 + 180, ctbago, 255 );
setEffAlphaKey( spep_0 -3 + 182, ctbago, 227 );
setEffAlphaKey( spep_0 -3 + 184, ctbago, 142 );
setEffAlphaKey( spep_0 -3 + 186, ctbago, 0 );

ctbaki = entryEffectLife( spep_0 -3 + 186,  10020, 18, 0x100, -1, 0, 148.8, 136.4 );  --バキッ
setEffMoveKey( spep_0 -3 + 186, ctbaki, -148.8, 136.4 , 0 );
setEffMoveKey( spep_0 -3 + 188, ctbaki, -155.7, 215.9 , 0 );
setEffMoveKey( spep_0 -3 + 190, ctbaki, -180.4, 251 , 0 );
setEffMoveKey( spep_0 -3 + 192, ctbaki, -153.1, 248.8 , 0 );
setEffMoveKey( spep_0 -3 + 194, ctbaki, -153.6, 254.8 , 0 );
setEffMoveKey( spep_0 -3 + 196, ctbaki, -138.6, 253.4 , 0 );
setEffMoveKey( spep_0 -3 + 198, ctbaki, -143.6, 256.3 , 0 );
setEffMoveKey( spep_0 -3 + 200, ctbaki, -154.2, 263.7 , 0 );
setEffMoveKey( spep_0 -3 + 202, ctbaki, -146.5, 299.7 , 0 );
setEffMoveKey( spep_0 -3 + 204, ctbaki, -150.3, 314.2 , 0 );

setEffScaleKey( spep_0 -3 + 186, ctbaki, 1.65, 1.65 );
setEffScaleKey( spep_0 -3 + 188, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_0 -3 + 190, ctbaki, 1.78, 1.78 );
setEffScaleKey( spep_0 -3 + 192, ctbaki, 1.85, 1.85 );
setEffScaleKey( spep_0 -3 + 194, ctbaki, 1.91, 1.91 );
setEffScaleKey( spep_0 -3 + 196, ctbaki, 1.95, 1.95 );
setEffScaleKey( spep_0 -3 + 198, ctbaki, 1.98, 1.98 );
setEffScaleKey( spep_0 -3 + 200, ctbaki, 1.98, 1.98 );
setEffScaleKey( spep_0 -3 + 202, ctbaki, 2.24, 2.24 );
setEffScaleKey( spep_0 -3 + 204, ctbaki, 2.33, 2.33 );

setEffRotateKey( spep_0 -3 + 186, ctbaki, -33.7 );
setEffRotateKey( spep_0 -3 + 204, ctbaki, -33.7 );

setEffAlphaKey( spep_0 -3 + 186, ctbaki, 255 );
setEffAlphaKey( spep_0 -3 + 200, ctbaki, 255 );
setEffAlphaKey( spep_0 -3 + 202, ctbaki, 64 );
setEffAlphaKey( spep_0 -3 + 204, ctbaki, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 154, 1, 1 );
setDisp( spep_0 -3 + 208, 1, 0 );
changeAnime( spep_0 -3 + 154, 1, 104 );
changeAnime( spep_0 -3 + 168, 1, 108 );

setMoveKey( spep_0 -3 + 154, 1, 259.7, -41.6 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 259.7, -41.6 , 0 );
setMoveKey( spep_0 -3 + 161, 1, 259.7, -41.6 , 0 );
setMoveKey( spep_0 -3 + 162, 1, 239.7, -41.6 , 0 );
setMoveKey( spep_0 -3 + 163, 1, 239.7, -41.6 , 0 );
setMoveKey( spep_0 -3 + 164, 1, 219.7, -41.6 , 0 );
setMoveKey( spep_0 -3 + 165, 1, 219.7, -41.6 , 0 );
setMoveKey( spep_0 -3 + 166, 1, 199.7, -41.6 , 0 );
setMoveKey( spep_0 -3 + 167, 1, 199.7, -41.6 , 0 );
setMoveKey( spep_0 -3 + 168, 1, 106.2, 20.6 , 0 );
setMoveKey( spep_0 -3 + 170, 1, 96.8, -49.7 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 113.4, -54.6 , 0 );
setMoveKey( spep_0 -3 + 174, 1, 150.9, -56 , 0 );
setMoveKey( spep_0 -3 + 176, 1, 110.5, -42.2 , 0 );
setMoveKey( spep_0 -3 + 178, 1, 159.3, -31.5 , 0 );
setMoveKey( spep_0 -3 + 180, 1, 161.1, -67.1 , 0 );
setMoveKey( spep_0 -3 + 182, 1, 128.1, -41.5 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 103.1, -41.5 , 0 );
setMoveKey( spep_0 -3 + 186, 1, 119.6, -42.9 , 0 );
setMoveKey( spep_0 -3 + 188, 1, 62.5, -88 , 0 );
setMoveKey( spep_0 -3 + 190, 1, 221.8, -4.8 , 0 );
setMoveKey( spep_0 -3 + 192, 1, 171.2, -23.6 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 248, -22 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 220.1, -59.7 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 196.4, -20.3 , 0 );
setMoveKey( spep_0 -3 + 200, 1, 184.9, -42.6 , 0 );
setMoveKey( spep_0 -3 + 202, 1, 179.7, -29.5 , 0 );
setMoveKey( spep_0 -3 + 204, 1, 166.2, -19.2 , 0 );
setMoveKey( spep_0 -3 + 206, 1, 190.1, -42.6 , 0 );
setMoveKey( spep_0 -3 + 208, 1, 171.4, -16 , 0 );

setScaleKey( spep_0 -3 + 154, 1, 2.4, 2.4 );
setScaleKey( spep_0 -3 + 167, 1, 2.4, 2.4 );
setScaleKey( spep_0 -3 + 168, 1, 2.72, 2.72 );
setScaleKey( spep_0 -3 + 170, 1, 2.4, 2.4 );
setScaleKey( spep_0 -3 + 172, 1, 2.6, 2.6 );
setScaleKey( spep_0 -3 + 174, 1, 2.41, 2.41 );
setScaleKey( spep_0 -3 + 180, 1, 2.41, 2.41 );
setScaleKey( spep_0 -3 + 182, 1, 2.4, 2.4 );
setScaleKey( spep_0 -3 + 184, 1, 2.41, 2.41 );
setScaleKey( spep_0 -3 + 186, 1, 2.62, 2.62 );
setScaleKey( spep_0 -3 + 188, 1, 2.38, 2.38 );
setScaleKey( spep_0 -3 + 190, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 192, 1, 2.41, 2.41 );
setScaleKey( spep_0 -3 + 194, 1, 2.45, 2.45 );
setScaleKey( spep_0 -3 + 196, 1, 2.41, 2.41 );
setScaleKey( spep_0 -3 + 200, 1, 2.41, 2.41 );
setScaleKey( spep_0 -3 + 202, 1, 2.4, 2.4 );
setScaleKey( spep_0 -3 + 208, 1, 2.4, 2.4 );

setRotateKey( spep_0 -3 + 154, 1, 0 );
setRotateKey( spep_0 -3 + 167, 1, 0 );
setRotateKey( spep_0 -3 + 168, 1, 0 );
setRotateKey( spep_0 -3 + 170, 1, 0 );
setRotateKey( spep_0 -3 + 172, 1, 1.5 );
setRotateKey( spep_0 -3 + 174, 1, 2 );
setRotateKey( spep_0 -3 + 176, 1, 2.2 );
setRotateKey( spep_0 -3 + 178, 1, 2.3 );
setRotateKey( spep_0 -3 + 180, 1, 2.4 );
setRotateKey( spep_0 -3 + 184, 1, 2.4 );
setRotateKey( spep_0 -3 + 186, 1, 2.5 );
setRotateKey( spep_0 -3 + 188, 1, 2.5 );
setRotateKey( spep_0 -3 + 190, 1, 2.3 );
setRotateKey( spep_0 -3 + 192, 1, 2.3 );
setRotateKey( spep_0 -3 + 194, 1, 2.2 );
setRotateKey( spep_0 -3 + 208, 1, 2.2 );

-- ** 音 ** --
--ベジータパンチ
playSe( spep_0 + 162, 1189 );
setSeVolume( spep_0 + 162, 1189, 60 );

SE9 = playSe( spep_0 + 170, 1182 );
setSeVolume( spep_0 + 170, 1182, 178 );
setSeVolume( spep_0 + 181, 1182, 178 );
setSeVolume( spep_0 + 182, 1182, 118 );
setSeVolume( spep_0 + 184, 1182, 62 );
setSeVolume( spep_0 + 185, 1182, 23 );
setSeVolume( spep_0 + 186, 1182, 0 );
stopSe( spep_0 + 186, SE9, 0 );

playSe( spep_0 + 171, 1012 );
playSe( spep_0 + 172, 1187 );
setSeVolume( spep_0 + 172, 1187, 71 );

--悟空パンチ
playSe( spep_0 + 184, 1003 );
setSeVolume( spep_0 + 184, 1003, 89 );

SE10 = playSe( spep_0 + 190, 1182 );
setSeVolume( spep_0 + 190, 1182, 178 );
setSeVolume( spep_0 + 201, 1182, 178 );
setSeVolume( spep_0 + 202, 1182, 88 );
setSeVolume( spep_0 + 204, 1182, 43 );
setSeVolume( spep_0 + 206, 1182, 0 );
stopSe( spep_0 + 206, SE10, 0 );

playSe( spep_0 + 190, 1010 );
playSe( spep_0 + 192, 1187 );
setSeVolume( spep_0 + 192, 1187, 76 );

--ラッシュ
playSe( spep_0 + 208, 1009 );
playSe( spep_0 + 214, 1000 );
setSeVolume( spep_0 + 214, 1000, 77 );
playSe( spep_0 + 218, 1012 );
setSeVolume( spep_0 + 218, 1012, 91 );
playSe( spep_0 + 218, 1110 );
setSeVolume( spep_0 + 218, 1110, 74 );
playSe( spep_0 + 218, 1012 );
setSeVolume( spep_0 + 218, 1012, 73 );
playSe( spep_0 + 224, 1009 );
setSeVolume( spep_0 + 224, 1009, 77 );
playSe( spep_0 + 224, 1001 );
setSeVolume( spep_0 + 224, 1001, 54 );
playSe( spep_0 + 226, 1013 );
setSeVolume( spep_0 + 226, 1013, 73 );
playSe( spep_0 + 231, 1110 );
setSeVolume( spep_0 + 231, 1110, 76 );
playSe( spep_0 + 239, 1010 );
setSeVolume( spep_0 + 239, 1010, 76 );
playSe( spep_0 + 241, 1110 );
setSeVolume( spep_0 + 241, 1110, 79 );
playSe( spep_0 + 248, 1009 );
setSeVolume( spep_0 + 248, 1009, 89 );
playSe( spep_0 + 250, 1000 );
setSeVolume( spep_0 + 250, 1000, 80 );
playSe( spep_0 + 257, 1010 );
setSeVolume( spep_0 + 257, 1010, 62 );
playSe( spep_0 + 257, 1012 );
setSeVolume( spep_0 + 257, 1012, 78 );
playSe( spep_0 + 261, 1009 );
setSeVolume( spep_0 + 261, 1009, 83 );
playSe( spep_0 + 265, 1001 );
setSeVolume( spep_0 + 265, 1001, 73 );
playSe( spep_0 + 265, 1000 );
setSeVolume( spep_0 + 265, 1000, 88 );

SE11 = playSe( spep_0 + 271, 1182 );
setSeVolume( spep_0 + 271, 1182, 150 );
setSeVolume( spep_0 + 282, 1182, 150 );
setSeVolume( spep_0 + 284, 1182, 87 );
setSeVolume( spep_0 + 286, 1182, 0 );
stopSe( spep_0 + 286, SE11, 0 );

playSe( spep_0 + 275, 1110 );

--悟空アップラッシュ
playSe( spep_0 + 286, 1189 );
setSeVolume( spep_0 + 286, 1189, 72 );

SE12 = playSe( spep_0 + 290, 1187 );
setSeVolume( spep_0 + 290, 1187, 79 );
setSeVolume( spep_0 + 310, 1187, 79 );
setSeVolume( spep_0 + 314, 1187, 68 );
setSeVolume( spep_0 + 318, 1187, 61 );
setSeVolume( spep_0 + 322, 1187, 55 );
setSeVolume( spep_0 + 326, 1187, 43 );
setSeVolume( spep_0 + 330, 1187, 28 );
setSeVolume( spep_0 + 334, 1187, 15 );
setSeVolume( spep_0 + 338, 1187, 9 );
setSeVolume( spep_0 + 340, 1187, 4 );
setSeVolume( spep_0 + 341, 1187, 0 );
stopSe( spep_0 + 341, SE12, 0 );

playSe( spep_0 + 290, 1010 );
playSe( spep_0 + 291, 1000 );
setSeVolume( spep_0 + 291, 1000, 70 );

SE13 = playSe( spep_0 + 291, 1182 );
setSeVolume( spep_0 + 291, 1182, 178 );
setSeVolume( spep_0 + 300, 1182, 178 );
setSeVolume( spep_0 + 302, 1182, 99 );
setSeVolume( spep_0 + 304, 1182, 42 );
setSeVolume( spep_0 + 305, 1182, 5 );
stopSe( spep_0 + 312, SE13, 0 );

playSe( spep_0 + 299, 1000 );
setSeVolume( spep_0 + 299, 1000, 82 );
playSe( spep_0 + 310, 1010 );
setSeVolume( spep_0 + 310, 1010, 71 );
playSe( spep_0 + 312, 1009 );
setSeVolume( spep_0 + 312, 1009, 90 );

SE14 = playSe( spep_0 + 312, 1182 );
setSeVolume( spep_0 + 312, 1182, 178 );
setSeVolume( spep_0 + 321, 1182, 178 );
setSeVolume( spep_0 + 322, 1182, 99 );
setSeVolume( spep_0 + 324, 1182, 42 );
setSeVolume( spep_0 + 326, 1182, 5 );
stopSe( spep_0 + 333, SE14, 0 );

playSe( spep_0 + 313, 1110 );
playSe( spep_0 + 323, 1009 );
playSe( spep_0 + 323, 1190 );
setSeVolume( spep_0 + 323, 1190, 83 );
--playSe( spep_0 + 325, 1110 );
playSe( spep_0 + 337, 1004 );
playSe( spep_0 + 342, 1001 );
setSeVolume( spep_0 + 342, 1001, 74 );

--[[SE15 = playSe( spep_0 + 344, 1182 );
setSeVolume( spep_0 + 344, 1182, 158 );
setSeVolume( spep_0 + 353, 1182, 158 );
setSeVolume( spep_0 + 354, 1182, 102 );
setSeVolume( spep_0 + 356, 1182, 42 );
--setSeVolume( spep_0 + 358, 1182, 5 );
stopSe( spep_0 + 360 -2, SE15, 0 );]]

SE16 = playSe( spep_0 + 344, 1187 );
setSeVolume( spep_0 + 344, 1187, 78 );
--[[setSeVolume( spep_0 + 358, 1187, 78 );
setSeVolume( spep_0 + 362, 1187, 69 );
setSeVolume( spep_0 + 366, 1187, 61 );
setSeVolume( spep_0 + 370, 1187, 57 );
setSeVolume( spep_0 + 374, 1187, 49 );
setSeVolume( spep_0 + 378, 1187, 41 );
setSeVolume( spep_0 + 382, 1187, 28 );
setSeVolume( spep_0 + 386, 1187, 18 );
setSeVolume( spep_0 + 390, 1187, 14 );
setSeVolume( spep_0 + 394, 1187, 4 );
setSeVolume( spep_0 + 395, 1187, 0 );
stopSe( spep_0 + 395, SE16, 0 );]]
--[[setSeVolume( spep_0 + 353, 1187, 78 );
setSeVolume( spep_0 + 354, 1187, 43 );
setSeVolume( spep_0 + 356, 1187, 32 );
setSeVolume( spep_0 + 358, 1187, 0 );
stopSe( spep_0 + 358, SE16, 0 );]]

--[[playSe( spep_0 + 344, 1006 );
setSeVolume( spep_0 + 344, 1006, 68 );
playSe( spep_0 + 350, 1013 );
setSeVolume( spep_0 + 350, 1013, 74 );]]

playSe( spep_0 + 360, 1182 );
setSeVolume( spep_0 + 360, 1182, 100 );
setSeVolume( spep_0 + 369, 1182, 100 );
setSeVolume( spep_0 + 370, 1182, 67 );
setSeVolume( spep_0 + 372, 1182, 32 );
setSeVolume( spep_0 + 374, 1182, 5 );

playSe( spep_0 + 360, 1009 );
setSeVolume( spep_0 + 360, 1009, 85 );
playSe( spep_0 + 361, 1110 );
setSeVolume( spep_0 + 361, 1110, 79 );

SE17 = playSe( spep_0 + 361, 1187 );
setSeVolume( spep_0 + 361, 1187, 68 );
--[[setSeVolume( spep_0 + 375, 1187, 68 );
setSeVolume( spep_0 + 380, 1187, 51 );
setSeVolume( spep_0 + 384, 1187, 47 );
setSeVolume( spep_0 + 388, 1187, 39 );
setSeVolume( spep_0 + 392, 1187, 31 );
setSeVolume( spep_0 + 396, 1187, 26 );
setSeVolume( spep_0 + 400, 1187, 18 );
setSeVolume( spep_0 + 404, 1187, 12 );
setSeVolume( spep_0 + 408, 1187, 6 );
setSeVolume( spep_0 + 412, 1187, 0 );
stopSe( spep_0 + 412, SE17, 0 );]]

playSe( spep_0 + 364, 1009 );
setSeVolume( spep_0 + 364, 1009, 80 );

--ベジータアップラッシュ
SE018 = playSe( spep_0 + 287, 1181 );
setSeVolume( spep_0 + 287, 1181, 141 );

playSe( spep_0 + 379, 1189 );
playSe( spep_0 + 383, 1010 );
playSe( spep_0 + 384, 1000 );
setSeVolume( spep_0 + 384, 1000, 110 );

SE18 = playSe( spep_0 + 384, 1187 );
setSeVolume( spep_0 + 384, 1187, 76 );
--[[setSeVolume( spep_0 + 398, 1187, 76 );
setSeVolume( spep_0 + 400, 1187, 68 );
setSeVolume( spep_0 + 404, 1187, 59 );
setSeVolume( spep_0 + 408, 1187, 51 );
setSeVolume( spep_0 + 412, 1187, 43 );
setSeVolume( spep_0 + 416, 1187, 36 );
setSeVolume( spep_0 + 420, 1187, 27 );
setSeVolume( spep_0 + 424, 1187, 22 );
setSeVolume( spep_0 + 428, 1187, 15 );
setSeVolume( spep_0 + 432, 1187, 10 );
setSeVolume( spep_0 + 434, 1187, 6 );
setSeVolume( spep_0 + 435, 1187, 0 );
stopSe( spep_0 + 435, SE18, 0 );]]

SE19 = playSe( spep_0 + 384, 1182 );
setSeVolume( spep_0 + 384, 1182, 158 );
setSeVolume( spep_0 + 393, 1182, 158 );
setSeVolume( spep_0 + 394, 1182, 98 );
setSeVolume( spep_0 + 396, 1182, 48 );
setSeVolume( spep_0 + 398, 1182, 5 );
stopSe( spep_0 + 401, SE19, 0 );

playSe( spep_0 + 394, 1001 );
setSeVolume( spep_0 + 394, 1001, 72 );

SE20 = playSe( spep_0 + 401, 1182 );
setSeVolume( spep_0 + 401, 1182, 91 );
setSeVolume( spep_0 + 410, 1182, 91 );
setSeVolume( spep_0 + 412, 1182, 58 );
setSeVolume( spep_0 + 414, 1182, 32 );
setSeVolume( spep_0 + 415, 1182, 5 );
stopSe( spep_0 + 422, SE20, 0 );

playSe( spep_0 + 401, 1009 );
setSeVolume( spep_0 + 401, 1009, 85 );
playSe( spep_0 + 402, 1110 );
setSeVolume( spep_0 + 402, 1110, 94 );
playSe( spep_0 + 411, 1000 );
setSeVolume( spep_0 + 411, 1000, 77 );
playSe( spep_0 + 421, 1009 );
playSe( spep_0 + 421, 1190 );
setSeVolume( spep_0 + 421, 1190, 70 );
playSe( spep_0 + 423, 1110 );
playSe( spep_0 + 429, 1010 );
setSeVolume( spep_0 + 429, 1010, 60 );
playSe( spep_0 + 432, 1004 );
setSeVolume( spep_0 + 432, 1004, 69 );
playSe( spep_0 + 437, 1001 );
setSeVolume( spep_0 + 437, 1001, 86 );

SE21 = playSe( spep_0 + 439, 1182 );
setSeVolume( spep_0 + 439, 1182, 116 );
setSeVolume( spep_0 + 448, 1182, 116 );
setSeVolume( spep_0 + 450, 1182, 69 );
setSeVolume( spep_0 + 452, 1182, 34 );
setSeVolume( spep_0 + 453, 1182, 5 );

SE22 = playSe( spep_0 + 439, 1187 );
setSeVolume( spep_0 + 439, 1187, 66 );
setSeVolume( spep_0 + 453, 1187, 66 );
setSeVolume( spep_0 + 458, 1187, 60 );
setSeVolume( spep_0 + 462, 1187, 54 );
setSeVolume( spep_0 + 466, 1187, 50 );
setSeVolume( spep_0 + 470, 1187, 44 );

playSe( spep_0 + 445, 1012 );
setSeVolume( spep_0 + 445, 1012, 76 );
SE23 = playSe( spep_0 + 452, 1006 );
SE24 = playSe( spep_0 + 453, 1110 );
SE25 = playSe( spep_0 + 455, 1009 );
SE26 = playSe( spep_0 + 462, 1009 );
SE27 = playSe( spep_0 + 464, 1000 );
setSeVolume( spep_0 + 464, 1000, 124 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 472;

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

--ベジータアップラッシュ
stopSe( spep_1 + 4, SE018, 0 );
stopSe( spep_1 + 5, SE21, 0 );

setSeVolume( spep_1 + 0, 1187, 38 );
setSeVolume( spep_1 + 4, 1187, 31 );
setSeVolume( spep_1 + 8, 1187, 26 );
setSeVolume( spep_1 + 12, 1187, 17 );
setSeVolume( spep_1 + 14, 1187, 8 );
setSeVolume( spep_1 + 16, 1187, 0 );
stopSe( spep_1 + 16, SE22, 0 );

stopSe( spep_1 + 4, SE23, 0 );
stopSe( spep_1 + 4, SE24, 0 );
stopSe( spep_1 + 4, SE25, 0 );
stopSe( spep_1 + 4, SE26, 0 );
stopSe( spep_1 + 4, SE27, 0 );

--前方ダッシュ
SE28 = playSe( spep_1 + 93, 1072 );
setSeVolume( spep_1 + 93, 1072, 65 );

SE29 = playSe( spep_1 + 93, 1182 );
setSeVolume( spep_1 + 93, 1182, 130 );

SE30 = playSe( spep_1 + 93, 1183 );
setSeVolume( spep_1 + 93, 1183, 54 );

playSe( spep_1 + 93, 9 );
setSeVolume( spep_1 + 93, 9, 3 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;

------------------------------------------------------
-- 後半(524F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --後半(ef_003)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 524, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 524, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 524, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 524, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --後半(ef_004)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 524, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 524, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 524, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 524, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 40, 1, 1 );
setDisp( spep_2 -3 + 112, 1, 0 );
setDisp( spep_2 -3 + 370, 1, 1 );
setDisp( spep_2 -3 + 418, 1, 0 );
changeAnime( spep_2 -3 + 40, 1, 7 );
changeAnime( spep_2 -3 + 74, 1, 106 );
changeAnime( spep_2 -3 + 76, 1, 5 );
changeAnime( spep_2 -3 + 370, 1, 7 );

setMoveKey( spep_2 -3 + 40, 1, -87.8, -436.3 , 0 );
setMoveKey( spep_2 -3 + 46, 1, -87.8, -436.3 , 0 );
setMoveKey( spep_2 -3 + 48, 1, -229.8, -526.7 , 0 );
setMoveKey( spep_2 -3 + 50, 1, -22.9, -517.6 , 0 );
setMoveKey( spep_2 -3 + 52, 1, -87.4, -387.5 , 0 );
setMoveKey( spep_2 -3 + 54, 1, -98, -361.2 , 0 );
setMoveKey( spep_2 -3 + 56, 1, -68.8, -545 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -117.2, -457.4 , 0 );
setMoveKey( spep_2 -3 + 60, 1, -74.6, -337.1 , 0 );
setMoveKey( spep_2 -3 + 62, 1, -125.7, -337 , 0 );
setMoveKey( spep_2 -3 + 64, 1, -74.2, -327.5 , 0 );
setMoveKey( spep_2 -3 + 66, 1, -61.6, -416.3 , 0 );
setMoveKey( spep_2 -3 + 68, 1, -83.6, -314.9 , 0 );
setMoveKey( spep_2 -3 + 70, 1, -80.9, -318.5 , 0 );
setMoveKey( spep_2 -3 + 72, 1, -86.9, -317.6 , 0 );
setMoveKey( spep_2 -3 + 73, 1, -86.9, -317.6 , 0 );
setMoveKey( spep_2 -3 + 74, 1, -42.4, -285.4 , 0 );
setMoveKey( spep_2 -3 + 75, 1, -42.4, -285.4 , 0 );
setMoveKey( spep_2 -3 + 76, 1, -21.4, -16.4 , 0 );
setMoveKey( spep_2 -3 + 78, 1, -10.2, -7.3 , 0 );
setMoveKey( spep_2 -3 + 80, 1, -10.8, 0.3 , 0 );
setMoveKey( spep_2 -3 + 82, 1, -3.1, 1.6 , 0 );
setMoveKey( spep_2 -3 + 84, 1, -7, 1.1 , 0 );
setMoveKey( spep_2 -3 + 86, 1, -1.5, 8.8 , 0 );
setMoveKey( spep_2 -3 + 88, 1, -4.2, 4 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 3.4, 11.6 , 0 );
setMoveKey( spep_2 -3 + 92, 1, -4.2, 9.7 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 5.6, 10.8 , 0 );
setMoveKey( spep_2 -3 + 96, 1, -2.2, 10.8 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 4, 13.9 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 0.3, 9.1 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 2.1, 15.3 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 3.3, 10 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 0.9, 17.2 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 2.2, 12.8 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 2.2, 12.8 , 0 );
setMoveKey( spep_2 -3 + 370, 1, 0, -77.5 , 0 );
setMoveKey( spep_2 -3 + 372, 1, 0, -81.4 , 0 );
setMoveKey( spep_2 -3 + 374, 1, 0, -85.1 , 0 );
setMoveKey( spep_2 -3 + 376, 1, 0, -88.6 , 0 );
setMoveKey( spep_2 -3 + 378, 1, 0, -92 , 0 );
setMoveKey( spep_2 -3 + 380, 1, 0, -95.2 , 0 );
setMoveKey( spep_2 -3 + 382, 1, 0, -98.3 , 0 );
setMoveKey( spep_2 -3 + 384, 1, 0, -101.1 , 0 );
setMoveKey( spep_2 -3 + 386, 1, 0, -103.8 , 0 );
setMoveKey( spep_2 -3 + 388, 1, -4, -100.3 , 0 );
setMoveKey( spep_2 -3 + 390, 1, 2, -108.7 , 0 );
setMoveKey( spep_2 -3 + 392, 1, 2.5, -101.3 , 0 );
setMoveKey( spep_2 -3 + 394, 1, -0.5, -99.3 , 0 );
setMoveKey( spep_2 -3 + 396, 1, -5.5, -124.1 , 0 );
setMoveKey( spep_2 -3 + 398, 1, -8.5, -99.8 , 0 );
setMoveKey( spep_2 -3 + 400, 1, 7, -103.8 , 0 );
setMoveKey( spep_2 -3 + 402, 1, -1.5, -118.6 , 0 );
setMoveKey( spep_2 -3 + 404, 1, 15, -93.7 , 0 );
setMoveKey( spep_2 -3 + 406, 1, -8, -105.1 , 0 );
setMoveKey( spep_2 -3 + 408, 1, 21, -139.4 , 0 );
setMoveKey( spep_2 -3 + 410, 1, -11.5, -115 , 0 );
setMoveKey( spep_2 -3 + 412, 1, -3.5, -98 , 0 );
setMoveKey( spep_2 -3 + 414, 1, 3.5, -132.2 , 0 );
setMoveKey( spep_2 -3 + 416, 1, -9.5, -97.3 , 0 );
setMoveKey( spep_2 -3 + 418, 1, -9.5, -97.3 , 0 );

setScaleKey( spep_2 -3 + 40, 1, 2.73, 2.73 );
setScaleKey( spep_2 -3 + 46, 1, 2.73, 2.73 );
setScaleKey( spep_2 -3 + 48, 1, 3.35, 3.35 );
setScaleKey( spep_2 -3 + 50, 1, 3.21, 3.21 );
setScaleKey( spep_2 -3 + 52, 1, 2.43, 2.43 );
setScaleKey( spep_2 -3 + 54, 1, 2.44, 2.44 );
setScaleKey( spep_2 -3 + 56, 1, 3.08, 3.08 );
setScaleKey( spep_2 -3 + 58, 1, 2.87, 2.87 );
setScaleKey( spep_2 -3 + 60, 1, 2.4, 2.4 );
setScaleKey( spep_2 -3 + 62, 1, 2.55, 2.55 );
setScaleKey( spep_2 -3 + 64, 1, 2.37, 2.37 );
setScaleKey( spep_2 -3 + 66, 1, 2.57, 2.57 );
setScaleKey( spep_2 -3 + 68, 1, 2.35, 2.35 );
setScaleKey( spep_2 -3 + 70, 1, 2.31, 2.31 );
setScaleKey( spep_2 -3 + 72, 1, 2.39, 2.39 );
setScaleKey( spep_2 -3 + 73, 1, 2.39, 2.39 );
setScaleKey( spep_2 -3 + 74, 1, 4.76, 4.76 );
setScaleKey( spep_2 -3 + 75, 1, 4.76, 4.76 );
setScaleKey( spep_2 -3 + 76, 1, 2.23, 2.23 );
setScaleKey( spep_2 -3 + 78, 1, 1.67, 1.67 );
setScaleKey( spep_2 -3 + 80, 1, 1.34, 1.34 );
setScaleKey( spep_2 -3 + 82, 1, 1.12, 1.12 );
setScaleKey( spep_2 -3 + 84, 1, 0.96, 0.96 );
setScaleKey( spep_2 -3 + 86, 1, 0.84, 0.84 );
setScaleKey( spep_2 -3 + 88, 1, 0.74, 0.74 );
setScaleKey( spep_2 -3 + 90, 1, 0.67, 0.67 );
setScaleKey( spep_2 -3 + 92, 1, 0.61, 0.61 );
setScaleKey( spep_2 -3 + 94, 1, 0.56, 0.56 );
setScaleKey( spep_2 -3 + 96, 1, 0.53, 0.53 );
setScaleKey( spep_2 -3 + 98, 1, 0.5, 0.5 );
setScaleKey( spep_2 -3 + 100, 1, 0.48, 0.48 );
setScaleKey( spep_2 -3 + 102, 1, 0.46, 0.46 );
setScaleKey( spep_2 -3 + 104, 1, 0.45, 0.45 );
setScaleKey( spep_2 -3 + 108, 1, 0.45, 0.45 );
setScaleKey( spep_2 -3 + 112, 1, 0.45, 0.45 );
setScaleKey( spep_2 -3 + 370, 1, 0.11, 0.11 );
setScaleKey( spep_2 -3 + 372, 1, 0.12, 0.12 );
setScaleKey( spep_2 -3 + 374, 1, 0.14, 0.14 );
setScaleKey( spep_2 -3 + 376, 1, 0.15, 0.15 );
setScaleKey( spep_2 -3 + 378, 1, 0.16, 0.16 );
setScaleKey( spep_2 -3 + 380, 1, 0.18, 0.18 );
setScaleKey( spep_2 -3 + 382, 1, 0.19, 0.19 );
setScaleKey( spep_2 -3 + 384, 1, 0.2, 0.2 );
setScaleKey( spep_2 -3 + 386, 1, 0.21, 0.21 );
setScaleKey( spep_2 -3 + 388, 1, 0.22, 0.22 );
setScaleKey( spep_2 -3 + 390, 1, 0.22, 0.22 );
setScaleKey( spep_2 -3 + 392, 1, 0.23, 0.23 );
setScaleKey( spep_2 -3 + 394, 1, 0.24, 0.24 );
setScaleKey( spep_2 -3 + 396, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 398, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 400, 1, 0.26, 0.26 );
setScaleKey( spep_2 -3 + 402, 1, 0.26, 0.26 );
setScaleKey( spep_2 -3 + 404, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 408, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 410, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 418, 1, 0.28, 0.28 );

setRotateKey( spep_2 -3 + 40, 1, 130.1 );
setRotateKey( spep_2 -3 + 72, 1, 130.1 );
setRotateKey( spep_2 -3 + 73, 1, 130.1 );
setRotateKey( spep_2 -3 + 74, 1, 302 );
setRotateKey( spep_2 -3 + 75, 1, 302 );
setRotateKey( spep_2 -3 + 76, 1, 381.6 );
setRotateKey( spep_2 -3 + 88, 1, 381.6 );
setRotateKey( spep_2 -3 + 90, 1, 381.5 );
setRotateKey( spep_2 -3 + 108, 1, 381.5 );
setRotateKey( spep_2 -3 + 112, 1, 381.5 );
setRotateKey( spep_2 -3 + 370, 1, 0 );
setRotateKey( spep_2 -3 + 418, 1, 0 );

-- ** 音 ** --
--前方ダッシュ
stopSe( spep_2 + 44, SE28, 0 );

setSeVolume( spep_2 + 8, 1182, 130 );
setSeVolume( spep_2 + 12, 1182, 130 );
setSeVolume( spep_2 + 16, 1182, 130 );
setSeVolume( spep_2 + 20, 1182, 130 );
setSeVolume( spep_2 + 24, 1182, 130 );
setSeVolume( spep_2 + 28, 1182, 130 );
setSeVolume( spep_2 + 32, 1182, 130 );
setSeVolume( spep_2 + 36, 1182, 0 );
stopSe( spep_2 + 36, SE29, 0 );

stopSe( spep_2 + 56, SE30, 0 );

setSeVolume( spep_2 + 0, 9, 12 );
setSeVolume( spep_2 + 4, 9, 19 );
setSeVolume( spep_2 + 8, 9, 36 );
setSeVolume( spep_2 + 12, 9, 51 );
setSeVolume( spep_2 + 16, 9, 65 );
setSeVolume( spep_2 + 17, 9, 76 );

SE31 = playSe( spep_2 + 1, 1168 );
setSeVolume( spep_2 + 1, 1168, 3 );
setSeVolume( spep_2 + 4, 1168, 12 );
setSeVolume( spep_2 + 8, 1168, 28 );
setSeVolume( spep_2 + 10, 1168, 42 );
setSeVolume( spep_2 + 14, 1168, 65 );
setSeVolume( spep_2 + 17, 1168, 83 );
setSeVolume( spep_2 + 30, 1168, 83 );
setSeVolume( spep_2 + 34, 1168, 65 );
setSeVolume( spep_2 + 38, 1168, 47 );
setSeVolume( spep_2 + 42, 1168, 31 );
setSeVolume( spep_2 + 46, 1168, 17 );
setSeVolume( spep_2 + 47, 1168, 0 );
stopSe( spep_2 + 47, SE31, 0 );

SE32 = playSe( spep_2 + 2, 1116 );
setSeVolume( spep_2 + 2, 1116, 68 );
setSeVolume( spep_2 + 28, 1116, 68 );
setSeVolume( spep_2 + 32, 1116, 41 );
setSeVolume( spep_2 + 36, 1116, 24 );
setSeVolume( spep_2 + 40, 1116, 8 );
setSeVolume( spep_2 + 44, 1116, 0 );
stopSe( spep_2 + 44, SE32, 0 );

--二人でパンチ
playSe( spep_2 + 29, 1004 );
playSe( spep_2 + 35, 1003 );
playSe( spep_2 + 48, 1120 );
setSeVolume( spep_2 + 48, 1120, 79 );
playSe( spep_2 + 49, 1187 );
setSeVolume( spep_2 + 49, 1187, 78 );

--かめはめ波溜め
SE33 = playSe( spep_2 + 35, 1210 );
setSeVolume( spep_2 + 35, 1210, 0 );
setSeVolume( spep_2 + 108, 1210, 20 );
setSeVolume( spep_2 + 110, 1210, 41 );
setSeVolume( spep_2 + 112, 1210, 62 );
setSeVolume( spep_2 + 114, 1210, 98 );
setSeVolume( spep_2 + 116, 1210, 126 );
stopSe( spep_2 + 205, SE33, 0 );

SE36 = playSe( spep_2 + 105, 1209 );
setSeVolume( spep_2 + 105, 1209, 71 );
stopSe( spep_2 + 205, SE36, 0 );

playSe( spep_2 + 177, 1259 );
setSeVolume( spep_2 + 177, 1259, 73 );

SE37 = playSe( spep_2 + 177, 1223 );
stopSe( spep_2 + 231, SE37, 50 );

SE38 = playSe( spep_2 + 177, 1022 );
stopSe( spep_2 + 237, SE38, 63 );

SE39 = playSe( spep_2 + 177, 1146 );
stopSe( spep_2 + 234, SE39, 6 );

SE40 = playSe( spep_2 + 177, 1213 );
setSeVolume( spep_2 + 177, 1213, 52 );
setSeVolume( spep_2 + 234, 1213, 52 );
setSeVolume( spep_2 + 238, 1213, 49 );
setSeVolume( spep_2 + 242, 1213, 44 );
setSeVolume( spep_2 + 246, 1213, 42 );
setSeVolume( spep_2 + 250, 1213, 40 );
setSeVolume( spep_2 + 254, 1213, 38 );
setSeVolume( spep_2 + 258, 1213, 36 );
setSeVolume( spep_2 + 262, 1213, 35 );
setSeVolume( spep_2 + 266, 1213, 33 );
setSeVolume( spep_2 + 270, 1213, 32 );
setSeVolume( spep_2 + 274, 1213, 31 );
setSeVolume( spep_2 + 278, 1213, 29 );
setSeVolume( spep_2 + 282, 1213, 27 );
setSeVolume( spep_2 + 286, 1213, 25 );
setSeVolume( spep_2 + 290, 1213, 24 );
setSeVolume( spep_2 + 294, 1213, 22 );
setSeVolume( spep_2 + 298, 1213, 21 );
setSeVolume( spep_2 + 302, 1213, 20 );
setSeVolume( spep_2 + 306, 1213, 18 );
setSeVolume( spep_2 + 310, 1213, 17 );
setSeVolume( spep_2 + 314, 1213, 15 );
setSeVolume( spep_2 + 318, 1213, 13 );
setSeVolume( spep_2 + 322, 1213, 11 );
setSeVolume( spep_2 + 326, 1213, 10 );
setSeVolume( spep_2 + 330, 1213, 7 );
setSeVolume( spep_2 + 334, 1213, 5 );
setSeVolume( spep_2 + 338, 1213, 3 );
setSeVolume( spep_2 + 340, 1213, 0 );
stopSe( spep_2 + 340, SE40, 0 );

--敵飛んでいく
SE34 = playSe( spep_2 + 75, 1121 );
setSeVolume( spep_2 + 75, 1121, 84 );
setSeVolume( spep_2 + 107, 1121, 84 );
setSeVolume( spep_2 + 110, 1121, 68 );
setSeVolume( spep_2 + 114, 1121, 59 );
setSeVolume( spep_2 + 118, 1121, 47 );
setSeVolume( spep_2 + 122, 1121, 32 );
setSeVolume( spep_2 + 126, 1121, 18 );
setSeVolume( spep_2 + 130, 1121, 5 );
setSeVolume( spep_2 + 132, 1121, 0 );
stopSe( spep_2 + 132, SE34, 0 );

SE35 = playSe( spep_2 + 75, 1183 );
stopSe( spep_2 + 113, SE35, 23 );

--かめはめ波発射
playSe( spep_2 + 177, 1027 );
setSeVolume( spep_2 + 177, 1027, 58 );

--オーラ
SE41 = playSe( spep_2 + 204, 1252 );
setSeVolume( spep_2 + 204, 1252, 200 );
setSeVolume( spep_2 + 301, 1252, 200 );
setSeVolume( spep_2 + 302, 1252, 192 );
setSeVolume( spep_2 + 304, 1252, 189 );
setSeVolume( spep_2 + 306, 1252, 183 );
setSeVolume( spep_2 + 308, 1252, 176 );
setSeVolume( spep_2 + 310, 1252, 168 );
setSeVolume( spep_2 + 312, 1252, 161 );
setSeVolume( spep_2 + 314, 1252, 157 );
setSeVolume( spep_2 + 316, 1252, 152 );
setSeVolume( spep_2 + 318, 1252, 146 );
setSeVolume( spep_2 + 320, 1252, 142 );
setSeVolume( spep_2 + 322, 1252, 138 );
setSeVolume( spep_2 + 324, 1252, 134 );
setSeVolume( spep_2 + 326, 1252, 127 );
setSeVolume( spep_2 + 328, 1252, 121 );
setSeVolume( spep_2 + 330, 1252, 114 );
setSeVolume( spep_2 + 332, 1252, 110 );
setSeVolume( spep_2 + 334, 1252, 105 );
setSeVolume( spep_2 + 336, 1252, 100 );
stopSe( spep_2 + 336, SE41, 26 );

playSe( spep_2 + 226, 1036 );
setSeVolume( spep_2 + 226, 1036, 79 );
playSe( spep_2 + 250, 1036 );
setSeVolume( spep_2 + 250, 1036, 79 );
playSe( spep_2 + 274, 1036 );
setSeVolume( spep_2 + 274, 1036, 79 );
playSe( spep_2 + 298, 1036 );
setSeVolume( spep_2 + 298, 1036, 79 );
playSe( spep_2 + 322, 1036 );
setSeVolume( spep_2 + 322, 1036, 79 );

--手を前に
playSe( spep_2 + 260, 1003 );
playSe( spep_2 + 260, 1233 );

--ファイナルフラッシュ溜め
SE42 = playSe( spep_2 + 286, 1262 );
setSeVolume( spep_2 + 286, 1262, 126 );
stopSe( spep_2 + 346, SE42, 0 );

SE43 = playSe( spep_2 + 286, 17 );
stopSe( spep_2 + 330, SE43, 29 );

SE44 = playSe( spep_2 + 286, 1157 );
setSeVolume( spep_2 + 286, 1157, 145 );
stopSe( spep_2 + 355, SE44, 0 );

SE45 = playSe( spep_2 + 286, 1191 );
setSeVolume( spep_2 + 286, 1191, 141 );
setSeVolume( spep_2 + 348, 1191, 141 );
setSeVolume( spep_2 + 352, 1191, 102 );
setSeVolume( spep_2 + 356, 1191, 75 );
setSeVolume( spep_2 + 360, 1191, 62 );
setSeVolume( spep_2 + 364, 1191, 35 );
setSeVolume( spep_2 + 368, 1191, 18 );
setSeVolume( spep_2 + 372, 1191, 8 );
setSeVolume( spep_2 + 373, 1191, 0 );
stopSe( spep_2 + 373, SE45, 0 );

--敵に気弾が向かう
SE46 = playSe( spep_2 + 320, 1212 );
setSeVolume( spep_2 + 320, 1212, 0 );
setSeVolume( spep_2 + 354, 1212, 3 );
setSeVolume( spep_2 + 358, 1212, 11 );
setSeVolume( spep_2 + 362, 1212, 18 );
setSeVolume( spep_2 + 366, 1212, 26 );
setSeVolume( spep_2 + 370, 1212, 32 );
setSeVolume( spep_2 + 374, 1212, 41 );
setSeVolume( spep_2 + 378, 1212, 50 );
setSeVolume( spep_2 + 382, 1212, 58 );
stopSe( spep_2 + 429, SE46, 0 );

SE47 = playSe( spep_2 + 355, 1215 );
setSeVolume( spep_2 + 355, 1215, 77 );
stopSe( spep_2 + 429, SE47, 0 );

SE48 = playSe( spep_2 + 355, 1213 );
setSeVolume( spep_2 + 355, 1213, 0 );
setSeVolume( spep_2 + 365, 1213, 1 );
setSeVolume( spep_2 + 366, 1213, 3 );
setSeVolume( spep_2 + 340, 1213, 4 );
setSeVolume( spep_2 + 344, 1213, 7 );
setSeVolume( spep_2 + 348, 1213, 8 );
setSeVolume( spep_2 + 352, 1213, 10 );
setSeVolume( spep_2 + 356, 1213, 13 );
setSeVolume( spep_2 + 360, 1213, 16 );
setSeVolume( spep_2 + 364, 1213, 19 );
setSeVolume( spep_2 + 368, 1213, 22 );
setSeVolume( spep_2 + 372, 1213, 26 );
setSeVolume( spep_2 + 376, 1213, 29 );
setSeVolume( spep_2 + 380, 1213, 31 );
setSeVolume( spep_2 + 384, 1213, 35 );
setSeVolume( spep_2 + 388, 1213, 38 );
setSeVolume( spep_2 + 392, 1213, 40 );
setSeVolume( spep_2 + 396, 1213, 45 );
setSeVolume( spep_2 + 400, 1213, 52 );
setSeVolume( spep_2 + 404, 1213, 57 );
setSeVolume( spep_2 + 408, 1213, 62 );
setSeVolume( spep_2 + 412, 1213, 70 );
setSeVolume( spep_2 + 416, 1213, 74 );
stopSe( spep_2 + 429, SE48, 0 );

playSe( spep_2 + 361, 1022 );
setSeVolume( spep_2 + 361, 1022, 3 );
setSeVolume( spep_2 + 364, 1022, 16 );
setSeVolume( spep_2 + 370, 1022, 32 );
setSeVolume( spep_2 + 374, 1022, 57 );
setSeVolume( spep_2 + 377, 1022, 74 );

--ファイナルフラッシュ発射
playSe( spep_2 + 332, 1133 );
playSe( spep_2 + 332, 1027 );
setSeVolume( spep_2 + 332, 1027, 78 );
playSe( spep_2 + 332, 1145 );

--爆発１
playSe( spep_2 + 416, 1023 );
setSeVolume( spep_2 + 416, 1023, 115 );
playSe( spep_2 + 423, 1159 );
setSeVolume( spep_2 + 423, 1159, 88 );

--爆発２
playSe( spep_2 + 445, 1188 );
playSe( spep_2 + 445, 1024 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 524, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 408 );
endPhase( spep_2 + 522 );

end