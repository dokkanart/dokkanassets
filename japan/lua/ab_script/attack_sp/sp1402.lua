--ブロリー_ギガンティックストライク

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
SP_01 = 154967; --正面アップ〜カメラ超引き〜セリフ
SP_02 = 154968; --正面画面手前に迫る〜キック
SP_03 = 154969; --正面画面手前に迫る〜キック

--敵側
SP_02x = 154970; --正面画面手前に迫る〜キック

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
-- 正面アップ〜カメラ超引き〜セリフ(190F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --正面アップ〜カメラ超引き〜セリフ(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0 );
setEffMoveKey( spep_0 + 190, start, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0 );
setEffScaleKey( spep_0 + 190, start, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, start, 0 );
setEffRotateKey( spep_0 + 190, start, 0 );
setEffAlphaKey( spep_0 + 0, start, 255 );
setEffAlphaKey( spep_0 + 190, start, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 192, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--入り
playSe( spep_0 + 0, 1182 ); 
setSeVolume( spep_0 + 0, 1182, 0 );
setSeVolume( spep_0 + 2, 1182, 12 );
setSeVolume( spep_0 + 4, 1182, 36 );
setSeVolume( spep_0 + 6, 1182, 58 );
setSeVolume( spep_0 + 8, 1182, 72 );
setSeVolume( spep_0 + 9, 1182, 89 );

playSe( spep_0 + 4, 8 ); 

--頷く
playSe( spep_0 + 48, 1012 ); 
setSeVolume( spep_0 + 48, 1012, 56 );

--カメラを引く
SE0 = playSe( spep_0 + 52, 1072 ); 
SE1 = playSe( spep_0 + 82, 1116 ); 
stopSe( spep_0 + 107, SE1, 17 );

SE2 = playSe( spep_0 + 86, 1121 ); 
setSeVolume( spep_0 + 86, 1121, 0 );
setSeVolume( spep_0 + 159, 1121, 26 );
setSeVolume( spep_0 + 160, 1121, 64 );
setSeVolume( spep_0 + 161, 1121, 100 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 94; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE0, 0 );
stopSe( SP_dodge - 12, SE1, 0 );
stopSe( SP_dodge - 12, SE2, 0 );

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
spep_x = spep_0 + 96;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9 +30, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9 +30, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9 +30, 515.5 , 0 );

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

-- ** 音 ** --
--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

--カメラを引く
SE3 = playSe( spep_0 + 98, 1175 ); 
setSeVolume( spep_0 + 98, 1175, 18 );

--前方ダッシュ
--[[
SE4 = playSe( spep_0 + 153, 1183 ); 

playSe( spep_0 + 153, 1182 ); 
setSeVolume( spep_0 + 153, 1182, 178 );
setSeVolume( spep_0 + 163, 1182, 178 );
setSeVolume( spep_0 + 164, 1182, 146 );
setSeVolume( spep_0 + 166, 1182, 100 );
]]
--v4.11調整
SE4 = playSe( spep_0 + 152, 1183 ); 

playSe( spep_0 + 152, 1182 ); 
setSeVolume( spep_0 + 153, 1182, 178 );
setSeVolume( spep_0 + 163, 1182, 178 );
setSeVolume( spep_0 + 164, 1182, 146 );
setSeVolume( spep_0 + 166, 1182, 100 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 190 -2;

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

--カメラを引く
stopSe( spep_1 + 0, SE1, 17 );

setSeVolume( spep_1 + 1, 1175, 18 );
setSeVolume( spep_1 + 8, 1175, 12 );
setSeVolume( spep_1 + 14, 1175, 4 );
setSeVolume( spep_1 + 17, 1175, 0 );
stopSe( spep_1 + 17, SE3, 0 );

--前方ダッシュ
stopSe( spep_1 + 0, SE4, 17 );

--近づく
SE5 = playSe( spep_1 + 17, 1121 );
setSeVolume( spep_1 + 17, 1121, 0 );
setSeVolume( spep_1 + 86, 1121, 52 );
setSeVolume( spep_1 + 88, 1121, 100 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;

------------------------------------------------------
-- 正面画面手前に迫る〜キック(176F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --正面画面手前に迫る〜キック(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 178, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 178, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 178, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 178, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --正面画面手前に迫る〜キック(ef_003)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 178, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 178, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 178, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 178, finish_b, 255 );

-- ** 書き文字エントリー ** --
ctdogon = entryEffectLife( spep_2 -3 + 28,  10018, 18, 0x100, -1, 0, 71.1, 85.9 );  --ドゴォン
setEffMoveKey( spep_2 -3 + 28, ctdogon, 71.1, 85.9 , 0 );
setEffMoveKey( spep_2 -3 + 30, ctdogon, 59.6, 167.4 , 0 );
setEffMoveKey( spep_2 -3 + 32, ctdogon, 48.1, 248.9 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctdogon, 36.6, 330.4 , 0 );
setEffMoveKey( spep_2 -3 + 36, ctdogon, 36.5, 332.3 , 0 );
setEffMoveKey( spep_2 -3 + 38, ctdogon, 36.5, 334.1 , 0 );
setEffMoveKey( spep_2 -3 + 40, ctdogon, 36.5, 335.9 , 0 );
setEffMoveKey( spep_2 -3 + 42, ctdogon, 36.5, 337.7 , 0 );
setEffMoveKey( spep_2 -3 + 44, ctdogon, 36.5, 339.6 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctdogon, 36.5, 341.4 , 0 );

setEffScaleKey( spep_2 -3 + 28, ctdogon, 0.78, 0.78 );
setEffScaleKey( spep_2 -3 + 30, ctdogon, 1.37, 1.37 );
setEffScaleKey( spep_2 -3 + 32, ctdogon, 1.96, 1.96 );
setEffScaleKey( spep_2 -3 + 34, ctdogon, 2.55, 2.55 );
setEffScaleKey( spep_2 -3 + 36, ctdogon, 2.6, 2.6 );
setEffScaleKey( spep_2 -3 + 38, ctdogon, 2.64, 2.64 );
setEffScaleKey( spep_2 -3 + 40, ctdogon, 2.69, 2.69 );
setEffScaleKey( spep_2 -3 + 42, ctdogon, 2.74, 2.74 );
setEffScaleKey( spep_2 -3 + 44, ctdogon, 2.79, 2.79 );
setEffScaleKey( spep_2 -3 + 46, ctdogon, 2.83, 2.83 );

setEffRotateKey( spep_2 -3 + 28, ctdogon, -4.7 );
setEffRotateKey( spep_2 -3 + 46, ctdogon, -4.7 );

setEffAlphaKey( spep_2 -3 + 28, ctdogon, 255 );
setEffAlphaKey( spep_2 -3 + 34, ctdogon, 255 );
setEffAlphaKey( spep_2 -3 + 36, ctdogon, 213 );
setEffAlphaKey( spep_2 -3 + 38, ctdogon, 170 );
setEffAlphaKey( spep_2 -3 + 40, ctdogon, 128 );
setEffAlphaKey( spep_2 -3 + 42, ctdogon, 85 );
setEffAlphaKey( spep_2 -3 + 44, ctdogon, 42 );
setEffAlphaKey( spep_2 -3 + 46, ctdogon, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 18, 1, 1 );
setDisp( spep_2 -3 + 38, 1, 0 );
changeAnime( spep_2 -3 + 18, 1, 108 );

setMoveKey( spep_2 -3 + 18, 1, -22, 28 , 0 );
setMoveKey( spep_2 -3 + 20, 1, -95, 1 , 0 );
setMoveKey( spep_2 -3 + 22, 1, -22, 28 , 0 );
setMoveKey( spep_2 -3 + 24, 1, -27, 18.2 , 0 );
setMoveKey( spep_2 -3 + 26, 1, -32, 8.5 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 143, -1.3 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 200, -11 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 295.5, 4.5 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 409.9, 20 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 575, -11 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 800, -11 , 0 );

setScaleKey( spep_2 -3 + 18, 1, 0.71, 0.71 );
setScaleKey( spep_2 -3 + 38, 1, 0.71, 0.71 );

setRotateKey( spep_2 -3 + 18, 1, 0 );
setRotateKey( spep_2 -3 + 38, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 176, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--近づく
stopSe( spep_2 + 23, SE5, 21 );

--衝突
SE6 = playSe( spep_2 + 11, 1182 );
setSeVolume( spep_2 + 11, 1182, 316 );
setSeVolume( spep_2 + 15, 1182, 316 );
setSeVolume( spep_2 + 16, 1182, 160 );
setSeVolume( spep_2 + 18, 1182, 82 );
setSeVolume( spep_2 + 19, 1182, 0 );
stopSe( spep_2 + 19, SE6, 0 );

playSe( spep_2 + 17, 1187 );

playSe( spep_2 + 24, 1190 );
setSeVolume( spep_2 + 24, 1190, 71 );

playSe( spep_2 + 24, 1024 );
setSeVolume( spep_2 + 24, 1024, 89 );

--地響き
SE7 = playSe( spep_2 + 45, 1044 );
setSeVolume( spep_2 + 45, 1044, 63 );
stopSe( spep_2 + 174, SE7, 0 );

--ふわっとする
SE8 = playSe( spep_2 + 67, 1116 );
setSeVolume( spep_2 + 67, 1116, 71 );
setSeVolume( spep_2 + 87, 1116, 71 );
setSeVolume( spep_2 + 94, 1116, 58 );
setSeVolume( spep_2 + 98, 1116, 32 );
setSeVolume( spep_2 + 102, 1116, 14 );
setSeVolume( spep_2 + 105, 1116, 0 );
stopSe( spep_2 + 105, SE8, 0 );

playSe( spep_2 + 75, 1232 );
setSeVolume( spep_2 + 75, 1232, 63 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 58 );
endPhase( spep_2 + 174 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 正面アップ〜カメラ超引き〜セリフ(190F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --正面アップ〜カメラ超引き〜セリフ(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0 );
setEffMoveKey( spep_0 + 190, start, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, start, -1.0, 1.0 );
setEffScaleKey( spep_0 + 190, start, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, start, 0 );
setEffRotateKey( spep_0 + 190, start, 0 );
setEffAlphaKey( spep_0 + 0, start, 255 );
setEffAlphaKey( spep_0 + 190, start, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 192, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--入り
playSe( spep_0 + 0, 1182 ); 
setSeVolume( spep_0 + 0, 1182, 0 );
setSeVolume( spep_0 + 2, 1182, 12 );
setSeVolume( spep_0 + 4, 1182, 36 );
setSeVolume( spep_0 + 6, 1182, 58 );
setSeVolume( spep_0 + 8, 1182, 72 );
setSeVolume( spep_0 + 9, 1182, 89 );

playSe( spep_0 + 4, 8 ); 

--頷く
playSe( spep_0 + 48, 1012 ); 
setSeVolume( spep_0 + 48, 1012, 56 );

--カメラを引く
SE0 = playSe( spep_0 + 52, 1072 ); 
SE1 = playSe( spep_0 + 82, 1116 ); 
stopSe( spep_0 + 107, SE1, 17 );

SE2 = playSe( spep_0 + 86, 1121 ); 
setSeVolume( spep_0 + 86, 1121, 0 );
setSeVolume( spep_0 + 159, 1121, 26 );
setSeVolume( spep_0 + 160, 1121, 64 );
setSeVolume( spep_0 + 161, 1121, 100 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 94; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE0, 0 );
stopSe( SP_dodge - 12, SE1, 0 );
stopSe( SP_dodge - 12, SE2, 0 );

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
spep_x = spep_0 + 96;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9 +30, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9 +30, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9 +30, 515.5 , 0 );

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

-- ** 音 ** --
--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

--カメラを引く
SE3 = playSe( spep_0 + 98, 1175 ); 
setSeVolume( spep_0 + 98, 1175, 18 );

--前方ダッシュ
--[[
SE4 = playSe( spep_0 + 153, 1183 ); 

playSe( spep_0 + 153, 1182 ); 
setSeVolume( spep_0 + 153, 1182, 178 );
setSeVolume( spep_0 + 163, 1182, 178 );
setSeVolume( spep_0 + 164, 1182, 146 );
setSeVolume( spep_0 + 166, 1182, 100 );
]]
--v4.11調整
SE4 = playSe( spep_0 + 152, 1183 ); 

playSe( spep_0 + 152, 1182 ); 
setSeVolume( spep_0 + 153, 1182, 178 );
setSeVolume( spep_0 + 163, 1182, 178 );
setSeVolume( spep_0 + 164, 1182, 146 );
setSeVolume( spep_0 + 166, 1182, 100 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 190 -2;

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

--カメラを引く
stopSe( spep_1 + 0, SE1, 17 );

setSeVolume( spep_1 + 1, 1175, 18 );
setSeVolume( spep_1 + 8, 1175, 12 );
setSeVolume( spep_1 + 14, 1175, 4 );
setSeVolume( spep_1 + 17, 1175, 0 );
stopSe( spep_1 + 17, SE3, 0 );

--前方ダッシュ
stopSe( spep_1 + 0, SE4, 17 );

--近づく
SE5 = playSe( spep_1 + 17, 1121 );
setSeVolume( spep_1 + 17, 1121, 0 );
setSeVolume( spep_1 + 86, 1121, 52 );
setSeVolume( spep_1 + 88, 1121, 100 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;

------------------------------------------------------
-- 正面画面手前に迫る〜キック(176F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 );  --正面画面手前に迫る〜キック(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 178, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 178, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 178, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 178, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --正面画面手前に迫る〜キック(ef_003)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 178, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 178, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 178, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 178, finish_b, 255 );

-- ** 書き文字エントリー ** --
ctdogon = entryEffectLife( spep_2 -3 + 28,  10018, 18, 0x100, -1, 0, 71.1, 85.9 );  --ドゴォン
setEffMoveKey( spep_2 -3 + 28, ctdogon, 71.1, 85.9 , 0 );
setEffMoveKey( spep_2 -3 + 30, ctdogon, 59.6, 167.4 , 0 );
setEffMoveKey( spep_2 -3 + 32, ctdogon, 48.1, 248.9 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctdogon, 36.6, 330.4 , 0 );
setEffMoveKey( spep_2 -3 + 36, ctdogon, 36.5, 332.3 , 0 );
setEffMoveKey( spep_2 -3 + 38, ctdogon, 36.5, 334.1 , 0 );
setEffMoveKey( spep_2 -3 + 40, ctdogon, 36.5, 335.9 , 0 );
setEffMoveKey( spep_2 -3 + 42, ctdogon, 36.5, 337.7 , 0 );
setEffMoveKey( spep_2 -3 + 44, ctdogon, 36.5, 339.6 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctdogon, 36.5, 341.4 , 0 );

setEffScaleKey( spep_2 -3 + 28, ctdogon, 0.78, 0.78 );
setEffScaleKey( spep_2 -3 + 30, ctdogon, 1.37, 1.37 );
setEffScaleKey( spep_2 -3 + 32, ctdogon, 1.96, 1.96 );
setEffScaleKey( spep_2 -3 + 34, ctdogon, 2.55, 2.55 );
setEffScaleKey( spep_2 -3 + 36, ctdogon, 2.6, 2.6 );
setEffScaleKey( spep_2 -3 + 38, ctdogon, 2.64, 2.64 );
setEffScaleKey( spep_2 -3 + 40, ctdogon, 2.69, 2.69 );
setEffScaleKey( spep_2 -3 + 42, ctdogon, 2.74, 2.74 );
setEffScaleKey( spep_2 -3 + 44, ctdogon, 2.79, 2.79 );
setEffScaleKey( spep_2 -3 + 46, ctdogon, 2.83, 2.83 );

setEffRotateKey( spep_2 -3 + 28, ctdogon, -4.7 );
setEffRotateKey( spep_2 -3 + 46, ctdogon, -4.7 );

setEffAlphaKey( spep_2 -3 + 28, ctdogon, 255 );
setEffAlphaKey( spep_2 -3 + 34, ctdogon, 255 );
setEffAlphaKey( spep_2 -3 + 36, ctdogon, 213 );
setEffAlphaKey( spep_2 -3 + 38, ctdogon, 170 );
setEffAlphaKey( spep_2 -3 + 40, ctdogon, 128 );
setEffAlphaKey( spep_2 -3 + 42, ctdogon, 85 );
setEffAlphaKey( spep_2 -3 + 44, ctdogon, 42 );
setEffAlphaKey( spep_2 -3 + 46, ctdogon, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 18, 1, 1 );
setDisp( spep_2 -3 + 38, 1, 0 );
changeAnime( spep_2 -3 + 18, 1, 108 );

setMoveKey( spep_2 -3 + 18, 1, -22, 28 , 0 );
setMoveKey( spep_2 -3 + 20, 1, -95, 1 , 0 );
setMoveKey( spep_2 -3 + 22, 1, -22, 28 , 0 );
setMoveKey( spep_2 -3 + 24, 1, -27, 18.2 , 0 );
setMoveKey( spep_2 -3 + 26, 1, -32, 8.5 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 143, -1.3 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 200, -11 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 295.5, 4.5 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 409.9, 20 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 575, -11 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 800, -11 , 0 );

setScaleKey( spep_2 -3 + 18, 1, 0.71, 0.71 );
setScaleKey( spep_2 -3 + 38, 1, 0.71, 0.71 );

setRotateKey( spep_2 -3 + 18, 1, 0 );
setRotateKey( spep_2 -3 + 38, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 176, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--近づく
stopSe( spep_2 + 23, SE5, 21 );

--衝突
SE6 = playSe( spep_2 + 11, 1182 );
setSeVolume( spep_2 + 11, 1182, 316 );
setSeVolume( spep_2 + 15, 1182, 316 );
setSeVolume( spep_2 + 16, 1182, 160 );
setSeVolume( spep_2 + 18, 1182, 82 );
setSeVolume( spep_2 + 19, 1182, 0 );
stopSe( spep_2 + 19, SE6, 0 );

playSe( spep_2 + 17, 1187 );

playSe( spep_2 + 24, 1190 );
setSeVolume( spep_2 + 24, 1190, 71 );

playSe( spep_2 + 24, 1024 );
setSeVolume( spep_2 + 24, 1024, 89 );

--地響き
SE7 = playSe( spep_2 + 45, 1044 );
setSeVolume( spep_2 + 45, 1044, 63 );
stopSe( spep_2 + 174, SE7, 0 );

--ふわっとする
SE8 = playSe( spep_2 + 67, 1116 );
setSeVolume( spep_2 + 67, 1116, 71 );
setSeVolume( spep_2 + 87, 1116, 71 );
setSeVolume( spep_2 + 94, 1116, 58 );
setSeVolume( spep_2 + 98, 1116, 32 );
setSeVolume( spep_2 + 102, 1116, 14 );
setSeVolume( spep_2 + 105, 1116, 0 );
stopSe( spep_2 + 105, SE8, 0 );

playSe( spep_2 + 75, 1232 );
setSeVolume( spep_2 + 75, 1232, 63 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 58 );
endPhase( spep_2 + 174 );

end