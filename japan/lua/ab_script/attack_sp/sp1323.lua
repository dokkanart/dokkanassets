--超サイヤ人2孫悟飯(少年期)_孫悟飯爆発！！

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
SP_01 = 154012; --セリフカットイン　前
SP_02 = 154013; --セリフカットイン　後ろ
SP_03 = 154014; --格闘　前
SP_04 = 154015; --格闘　後ろ
SP_05 = 154016; --とどめ　前
SP_06 = 154017; --とどめ　後ろ

--敵側
SP_01x = 154018; --敵用：セリフカットイン　前
SP_02x = 154019; --敵用：セリフカットイン　後ろ
SP_03x = 154020; --敵用：格闘　前
SP_05x = 154021; --敵用：とどめ　前

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
-- セリフカットイン(200F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
cutin_f = entryEffectLife( spep_0 + 0, SP_01, 200, 0x100, -1, 0, 0, 0 );  --セリフカットイン(ef_001)
setEffMoveKey( spep_0 + 0, cutin_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 200, cutin_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, cutin_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 200, cutin_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, cutin_f, 0 );
setEffRotateKey( spep_0 + 200, cutin_f, 0 );
setEffAlphaKey( spep_0 + 0, cutin_f, 255 );
setEffAlphaKey( spep_0 + 200, cutin_f, 255 );

cutin_b = entryEffectLife( spep_0 + 0, SP_02, 200, 0x80, -1, 0, 0, 0 );  --セリフカットイン(ef_002)
setEffMoveKey( spep_0 + 0, cutin_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 200, cutin_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, cutin_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 200, cutin_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, cutin_b, 0 );
setEffRotateKey( spep_0 + 200, cutin_b, 0 );
setEffAlphaKey( spep_0 + 0, cutin_b, 255 );
setEffAlphaKey( spep_0 + 200, cutin_b, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 122, 906, 78, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 122, shuchusen1, 78, 20 );

setEffMoveKey( spep_0 + 122, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 200, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 122, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_0 + 200, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_0 + 122, shuchusen1, 0 );
setEffRotateKey( spep_0 + 200, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 122, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 129, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 130, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 200, shuchusen1, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 114, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 敵キャラクター ** --
setDisp( spep_0 + 58 -3, 1, 1 );
setDisp( spep_0 + 122 -3, 1, 0 );
changeAnime( spep_0 + 58 -3, 1, 16 );

setMoveKey( spep_0 -3 + 58, 1, 291, 338.5 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 270.3, 327.5 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 253.3, 318.5 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 240.1, 311.3 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 230.4, 305.8 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 224.3, 302.2 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 221.7, 300.3 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 220.7, 299.2 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 219.4, 297.6 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 217.8, 295.6 , 0 );
setMoveKey( spep_0 -3 + 78, 1, 215.7, 293 , 0 );
setMoveKey( spep_0 -3 + 80, 1, 213, 289.6 , 0 );
setMoveKey( spep_0 -3 + 82, 1, 209.4, 285.2 , 0 );
setMoveKey( spep_0 -3 + 84, 1, 204.6, 279.3 , 0 );
setMoveKey( spep_0 -3 + 86, 1, 198.3, 271.4 , 0 );
setMoveKey( spep_0 -3 + 88, 1, 190, 260.9 , 0 );
setMoveKey( spep_0 -3 + 90, 1, 179, 247.4 , 0 );
setMoveKey( spep_0 -3 + 92, 1, 164.6, 229.3 , 0 );
setMoveKey( spep_0 -3 + 94, 1, 144.9, 204.6 , 0 );
setMoveKey( spep_0 -3 + 96, 1, 118.9, 172.1 , 0 );
setMoveKey( spep_0 -3 + 98, 1, 94, 140.8 , 0 );
setMoveKey( spep_0 -3 + 100, 1, 78.5, 121.4 , 0 );
setMoveKey( spep_0 -3 + 102, 1, 70.4, 111.3 , 0 );
setMoveKey( spep_0 -3 + 104, 1, 66.7, 106.8 , 0 );
setMoveKey( spep_0 -3 + 106, 1, 65.7, 105.8 , 0 );
setMoveKey( spep_0 -3 + 108, 1, 64.7, 104.6 , 0 );
setMoveKey( spep_0 -3 + 110, 1, 63.7, 103.4 , 0 );
setMoveKey( spep_0 -3 + 112, 1, 62.8, 102.3 , 0 );
setMoveKey( spep_0 -3 + 114, 1, 61.7, 101.1 , 0 );
setMoveKey( spep_0 -3 + 116, 1, 60.8, 99.9 , 0 );
setMoveKey( spep_0 -3 + 118, 1, 59.8, 98.7 , 0 );
setMoveKey( spep_0 -3 + 120, 1, 58.8, 97.5 , 0 );
setMoveKey( spep_0 -3 + 122, 1, 56, 84.9 , 0 );

setScaleKey( spep_0 -3 + 58, 1, 0.08, 0.08 );
setScaleKey( spep_0 -3 + 60, 1, 0.09, 0.09 );
setScaleKey( spep_0 -3 + 66, 1, 0.09, 0.09 );
setScaleKey( spep_0 -3 + 68, 1, 0.1, 0.1 );
setScaleKey( spep_0 -3 + 70, 1, 0.1, 0.1 );
setScaleKey( spep_0 -3 + 72, 1, 0.11, 0.11 );
setScaleKey( spep_0 -3 + 74, 1, 0.11, 0.11 );
setScaleKey( spep_0 -3 + 76, 1, 0.12, 0.12 );
setScaleKey( spep_0 -3 + 78, 1, 0.14, 0.14 );
setScaleKey( spep_0 -3 + 80, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 82, 1, 0.18, 0.18 );
setScaleKey( spep_0 -3 + 84, 1, 0.21, 0.21 );
setScaleKey( spep_0 -3 + 86, 1, 0.24, 0.24 );
setScaleKey( spep_0 -3 + 88, 1, 0.29, 0.29 );
setScaleKey( spep_0 -3 + 90, 1, 0.36, 0.36 );
setScaleKey( spep_0 -3 + 92, 1, 0.45, 0.45 );
setScaleKey( spep_0 -3 + 94, 1, 0.56, 0.56 );
setScaleKey( spep_0 -3 + 96, 1, 0.72, 0.72 );
setScaleKey( spep_0 -3 + 98, 1, 0.88, 0.88 );
setScaleKey( spep_0 -3 + 100, 1, 0.98, 0.98 );
setScaleKey( spep_0 -3 + 102, 1, 1.02, 1.02 );
setScaleKey( spep_0 -3 + 104, 1, 1.04, 1.04 );
setScaleKey( spep_0 -3 + 106, 1, 1.06, 1.06 );
setScaleKey( spep_0 -3 + 108, 1, 1.06, 1.06 );
setScaleKey( spep_0 -3 + 110, 1, 1.07, 1.07 );
setScaleKey( spep_0 -3 + 112, 1, 1.08, 1.08 );
setScaleKey( spep_0 -3 + 114, 1, 1.09, 1.09 );
setScaleKey( spep_0 -3 + 116, 1, 1.1, 1.1 );
setScaleKey( spep_0 -3 + 118, 1, 1.11, 1.11 );
setScaleKey( spep_0 -3 + 120, 1, 1.11, 1.11 );
setScaleKey( spep_0 -3 + 122, 1, 1.12, 1.12 );

setRotateKey( spep_0 -3 + 58, 1, 0 );
setRotateKey( spep_0 -3 + 122, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 200, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_0 + 0, 1007 );  --冒頭の悟飯
setSeVolume( spep_0 + 0, 1007, 80);
playSe( spep_0 + 40, 8 );  --カメラワーク変わる
playSe( spep_0 + 90, 1072 );  --敵迫る
playSe( spep_0 + 130, SE_04 );  --ゴゴゴ
setSeVolume( spep_0 + 130, SE_04, 120);
SE1 = playSe( spep_0 + 120, 1147 );  --パチパチ
stopSe( spep_0 + 180, SE1, 20);

-- ** 次の準備 ** --
spep_1 = spep_0 + 200;

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

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 格闘(488F)
------------------------------------------------------

-- ** エフェクト等 ** --
attack_f = entryEffectLife( spep_2 + 0, SP_03, 488, 0x100, -1, 0, 0, 0 );  --格闘(ef_003)
setEffMoveKey( spep_2 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 488, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 488, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack_f, 0 );
setEffRotateKey( spep_2 + 488, attack_f, 0 );
setEffAlphaKey( spep_2 + 0, attack_f, 255 );
setEffAlphaKey( spep_2 + 487, attack_f, 255 );
setEffAlphaKey( spep_2 + 488, attack_f, 0 );

attack_b = entryEffectLife( spep_2 + 0, SP_04, 488, 0x80, -1, 0, 0, 0 );  --格闘(ef_004)
setEffMoveKey( spep_2 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 488, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 488, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack_b, 0 );
setEffRotateKey( spep_2 + 488, attack_b, 0 );
setEffAlphaKey( spep_2 + 0, attack_b, 255 );
setEffAlphaKey( spep_2 + 487, attack_b, 255 );
setEffAlphaKey( spep_2 + 488, attack_b, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 488, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_2 + 8, 1109 );  --出てくる
setSeVolume( spep_2 + 8, 1109, 70);
SE2 = playSe( spep_2 + 22, 9 );  --手前に近づく

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE2, 0 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
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
setDisp( spep_2 -3 + 48, 1, 1 );
setDisp( spep_2 -3 + 72, 1, 0 );
setDisp( spep_2 -3 + 94, 1, 1 );
setDisp( spep_2 -3 + 142, 1, 0 );
setDisp( spep_2 -3 + 166, 1, 1 );
setDisp( spep_2 -3 + 202, 1, 0 );
setDisp( spep_2 -3 + 238, 1, 1 );
setDisp( spep_2 -3 + 280, 1, 0 );
setDisp( spep_2 -3 + 302, 1, 1 );
setDisp( spep_2 -3 + 352, 1, 0 );
setDisp( spep_2 -3 + 392, 1, 1 );
setDisp( spep_2 -3 + 422, 1, 0 );
changeAnime( spep_2 -3 + 48, 1, 118 );
changeAnime( spep_2 -3 + 52, 1, 108 );
changeAnime( spep_2 -3 + 106, 1, 106 );
changeAnime( spep_2 -3 + 178, 1, 108 );
changeAnime( spep_2 -3 + 186, 1, 107 );
changeAnime( spep_2 -3 + 302, 1, 7 );
changeAnime( spep_2 -3 + 392, 1, 108 );

setMoveKey( spep_2 -3 + 48, 1, 145.1, 113.5 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 68.1, 83.3 , 0 );
setMoveKey( spep_2 -3 + 51, 1, 68.1, 83.3 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 108.6, 100.2 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 88.2, 77.7 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 202, 95.3 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 506.2, 93.6 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 639.9, 107.1 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 688.9, 99.5 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 759.4, 104.8 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 772.7, 104.9 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 826.3, 104.7 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 847, 112.6 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 879.2, 109 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 7.3, 25.5 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 38, 26.6 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 69.9, 27.8 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 103.4, 29 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 141.2, 30.9 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 190.1, 59.7 , 0 );
setMoveKey( spep_2 -3 + 105, 1, 190.1, 59.7 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 78.6, 21.9 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 64.4, 29.3 , 0 );
setMoveKey( spep_2 -3 + 110, 1, -17.4, 10.8 , 0 );
setMoveKey( spep_2 -3 + 112, 1, -8.1, 17.1 , 0 );
setMoveKey( spep_2 -3 + 114, 1, -26, 6.1 , 0 );
setMoveKey( spep_2 -3 + 116, 1, -1.1, 9.2 , 0 );
setMoveKey( spep_2 -3 + 118, 1, -24.3, 7.9 , 0 );
setMoveKey( spep_2 -3 + 120, 1, -2.5, 6.3 , 0 );
setMoveKey( spep_2 -3 + 122, 1, -11.1, 13.2 , 0 );
setMoveKey( spep_2 -3 + 124, 1, -6.6, 8.6 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 7.6, 12.4 , 0 );
setMoveKey( spep_2 -3 + 128, 1, -124.5, -126.2 , 0 );
setMoveKey( spep_2 -3 + 130, 1, -133.4, -226.3 , 0 );
setMoveKey( spep_2 -3 + 132, 1, -391.1, -392.6 , 0 );
setMoveKey( spep_2 -3 + 134, 1, -533.7, -474.3 , 0 );
setMoveKey( spep_2 -3 + 136, 1, -657.1, -547.8 , 0 );
setMoveKey( spep_2 -3 + 138, 1, -734.6, -591.5 , 0 );
setMoveKey( spep_2 -3 + 140, 1, -820.3, -653.3 , 0 );
setMoveKey( spep_2 -3 + 142, 1, -893.9, -693.1 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 1036.4, 488.5 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 841.3, 390.6 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 646.8, 292.9 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 452.9, 195.5 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 259.7, 98.5 , 0 );
setMoveKey( spep_2 -3 + 176, 1, 67.1, 1.8 , 0 );
setMoveKey( spep_2 -3 + 177, 1, 67.1, 1.8 , 0 );
setMoveKey( spep_2 -3 + 178, 1, -86.6, -8.9 , 0 );
setMoveKey( spep_2 -3 + 180, 1, -42.4, 71 , 0 );
setMoveKey( spep_2 -3 + 182, 1, -9.6, 113.8 , 0 );
setMoveKey( spep_2 -3 + 184, 1, 4.6, 64.1 , 0 );
setMoveKey( spep_2 -3 + 185, 1, 4.6, 64.1 , 0 );
setMoveKey( spep_2 -3 + 186, 1, 116.4, 167.7 , 0 );
setMoveKey( spep_2 -3 + 188, 1, 292.9, 325.9 , 0 );
setMoveKey( spep_2 -3 + 190, 1, 414.7, 457.6 , 0 );
setMoveKey( spep_2 -3 + 192, 1, 521.2, 545.8 , 0 );
setMoveKey( spep_2 -3 + 194, 1, 629.5, 660.5 , 0 );
setMoveKey( spep_2 -3 + 196, 1, 703.4, 737.1 , 0 );
setMoveKey( spep_2 -3 + 198, 1, 801.6, 831.1 , 0 );
setMoveKey( spep_2 -3 + 200, 1, 869.7, 890.7 , 0 );
setMoveKey( spep_2 -3 + 202, 1, 937.5, 961.7 , 0 );
a = 180;
b = 45;
setMoveKey( spep_2 -3 + 238, 1, 528.6 + b, -201.8 + a , 0 );
setMoveKey( spep_2 -3 + 240, 1, 113 + b, -432.1 + a , 0 );
setMoveKey( spep_2 -3 + 242, 1, -154.3 + b, -437.9 + a , 0 );
setMoveKey( spep_2 -3 + 244, 1, 40 + b, -282 + a , 0 );
setMoveKey( spep_2 -3 + 246, 1, -57.2 + b, -359.9 + a , 0 );
setMoveKey( spep_2 -3 + 248, 1, -154.3 + b, -437.9 + a , 0 );
setMoveKey( spep_2 -3 + 250, 1, -57.2 + b, -359.9 + a , 0 );
setMoveKey( spep_2 -3 + 252, 1, 40 + b, -282 + a , 0 );
setMoveKey( spep_2 -3 + 254, 1, -57.2 + b, -359.9 + a , 0 );
setMoveKey( spep_2 -3 + 256, 1, -154.3 + b, -437.9 + a , 0 );
setMoveKey( spep_2 -3 + 258, 1, -57.2 + b, -359.9 + a , 0 );
setMoveKey( spep_2 -3 + 260, 1, 40 + b, -282 + a , 0 );
setMoveKey( spep_2 -3 + 262, 1, -57.2 + b, -359.9 + a , 0 );
setMoveKey( spep_2 -3 + 264, 1, -154.3 + b, -437.9 + a , 0 );
setMoveKey( spep_2 -3 + 266, 1, -57.2 + b, -359.9 + a , 0 );
setMoveKey( spep_2 -3 + 268, 1, 40 + b, -282 + a , 0 );
setMoveKey( spep_2 -3 + 270, 1, -57.2 + b, -359.9 + a , 0 );
setMoveKey( spep_2 -3 + 272, 1, -154.3 + b, -437.9 + a , 0 );
setMoveKey( spep_2 -3 + 274, 1, -57.2 + b, -359.9 + a , 0 );
setMoveKey( spep_2 -3 + 276, 1, 40 + b, -282 + a , 0 );
setMoveKey( spep_2 -3 + 278, 1, -57.2 + b, -359.9 + a , 0 );
setMoveKey( spep_2 -3 + 280, 1, -154.3 + b, -437.9 + a , 0 );
setMoveKey( spep_2 -3 + 302, 1, -527.8, -580.9 , 0 );
setMoveKey( spep_2 -3 + 304, 1, -589.8, -570.4 , 0 );
setMoveKey( spep_2 -3 + 306, 1, -627, -564 , 0 );
setMoveKey( spep_2 -3 + 308, 1, -639.4, -561.9 , 0 );
setMoveKey( spep_2 -3 + 310, 1, -637.6, -562.2 , 0 );
setMoveKey( spep_2 -3 + 312, 1, -527.8, -580.9 , 0 );
setMoveKey( spep_2 -3 + 314, 1, -529.6, -580.6 , 0 );
setMoveKey( spep_2 -3 + 316, 1, -639.4, -561.9 , 0 );
setMoveKey( spep_2 -3 + 318, 1, -637.6, -562.2 , 0 );
setMoveKey( spep_2 -3 + 320, 1, -527.8, -580.9 , 0 );
setMoveKey( spep_2 -3 + 322, 1, -529.6, -580.6 , 0 );
setMoveKey( spep_2 -3 + 324, 1, -639.4, -561.9 , 0 );
setMoveKey( spep_2 -3 + 326, 1, -637.6, -562.2 , 0 );
setMoveKey( spep_2 -3 + 328, 1, -527.8, -580.9 , 0 );
setMoveKey( spep_2 -3 + 330, 1, -529.6, -580.6 , 0 );
setMoveKey( spep_2 -3 + 332, 1, -639.4, -561.9 , 0 );
setMoveKey( spep_2 -3 + 334, 1, -637.6, -562.2 , 0 );
setMoveKey( spep_2 -3 + 336, 1, -527.8, -580.9 , 0 );
setMoveKey( spep_2 -3 + 338, 1, -529.6, -580.6 , 0 );
setMoveKey( spep_2 -3 + 340, 1, -639.4, -561.9 , 0 );
setMoveKey( spep_2 -3 + 342, 1, -637.6, -562.2 , 0 );
setMoveKey( spep_2 -3 + 344, 1, -527.8, -580.9 , 0 );
setMoveKey( spep_2 -3 + 346, 1, -529.6, -580.6 , 0 );
setMoveKey( spep_2 -3 + 348, 1, -639.4, -561.9 , 0 );
setMoveKey( spep_2 -3 + 350, 1, -637.6, -562.2 , 0 );
setMoveKey( spep_2 -3 + 352, 1, -527.8, -580.9 , 0 );
setMoveKey( spep_2 -3 + 392, 1, -0.4, -281.3 , 0 );
setMoveKey( spep_2 -3 + 394, 1, -22.9, -420.4 , 0 );
setMoveKey( spep_2 -3 + 396, 1, -3.8, -274.5 , 0 );
setMoveKey( spep_2 -3 + 398, 1, -36.6, -347 , 0 );
setMoveKey( spep_2 -3 + 400, 1, -15.6, -158 , 0 );
setMoveKey( spep_2 -3 + 402, 1, -39.1, -62.9 , 0 );
setMoveKey( spep_2 -3 + 404, 1, -17.7, -24.2 , 0 );
setMoveKey( spep_2 -3 + 406, 1, -40.4, 52.8 , 0 );
setMoveKey( spep_2 -3 + 408, 1, 31.1, 358.9 , 0 );
setMoveKey( spep_2 -3 + 410, 1, 69, 652.6 , 0 );
setMoveKey( spep_2 -3 + 412, 1, 93.6, 774.6 , 0 );
setMoveKey( spep_2 -3 + 414, 1, 109.2, 868 , 0 );
setMoveKey( spep_2 -3 + 416, 1, 122.7, 948.4 , 0 );
setMoveKey( spep_2 -3 + 418, 1, 135, 1022.1 , 0 );
setMoveKey( spep_2 -3 + 420, 1, 146.7, 1091.9 , 0 );
setMoveKey( spep_2 -3 + 422, 1, 157.9, 1159.2 , 0 );

setScaleKey( spep_2 -3 + 48, 1, 2.42, 2.42 );
setScaleKey( spep_2 -3 + 50, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 51, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 52, 1, 2.68, 2.68 );
setScaleKey( spep_2 -3 + 54, 1, 2.11, 2.11 );
setScaleKey( spep_2 -3 + 56, 1, 2.42, 2.42 );
setScaleKey( spep_2 -3 + 58, 1, 2.12, 2.12 );
setScaleKey( spep_2 -3 + 102, 1, 2.12, 2.12 );
setScaleKey( spep_2 -3 + 104, 1, 2.69, 2.69 );
setScaleKey( spep_2 -3 + 105, 1, 2.69, 2.69 );
setScaleKey( spep_2 -3 + 106, 1, 2.12, 2.12 );
setScaleKey( spep_2 -3 + 108, 1, 2.44, 2.44 );
setScaleKey( spep_2 -3 + 110, 1, 2.12, 2.12 );
setScaleKey( spep_2 -3 + 142, 1, 2.12, 2.12 );
setScaleKey( spep_2 -3 + 166, 1, 2.12, 2.12 );
setScaleKey( spep_2 -3 + 177, 1, 2.12, 2.12 );
setScaleKey( spep_2 -3 + 178, 1, 2.29, 2.29 );
setScaleKey( spep_2 -3 + 180, 1, 1.89, 1.89 );
setScaleKey( spep_2 -3 + 182, 1, 2.26, 2.26 );
setScaleKey( spep_2 -3 + 184, 1, 1.93, 1.93 );
setScaleKey( spep_2 -3 + 185, 1, 1.93, 1.93 );
setScaleKey( spep_2 -3 + 186, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 188, 1, 1.22, 1.22 );
setScaleKey( spep_2 -3 + 190, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 192, 1, 1.75, 1.75 );
setScaleKey( spep_2 -3 + 194, 1, 1.97, 1.97 );
setScaleKey( spep_2 -3 + 196, 1, 2.18, 2.18 );
setScaleKey( spep_2 -3 + 198, 1, 2.36, 2.36 );
setScaleKey( spep_2 -3 + 200, 1, 2.53, 2.53 );
setScaleKey( spep_2 -3 + 202, 1, 2.68, 2.68 );
setScaleKey( spep_2 -3 + 238, 1, 2.58, 2.58 );
setScaleKey( spep_2 -3 + 240, 1, 3.5, 3.5 );
setScaleKey( spep_2 -3 + 242, 1, 2.35, 2.35 );
setScaleKey( spep_2 -3 + 280, 1, 2.35, 2.35 );
setScaleKey( spep_2 -3 + 302, 1, 3.53, 3.53 );
setScaleKey( spep_2 -3 + 352, 1, 3.53, 3.53 );
setScaleKey( spep_2 -3 + 392, 1, 2.09, 2.09 );
setScaleKey( spep_2 -3 + 394, 1, 1.65, 1.65 );
setScaleKey( spep_2 -3 + 396, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 398, 1, 1.65, 1.65 );
setScaleKey( spep_2 -3 + 406, 1, 1.65, 1.65 );
setScaleKey( spep_2 -3 + 408, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 410, 1, 2.13, 2.13 );
setScaleKey( spep_2 -3 + 412, 1, 2.23, 2.23 );
setScaleKey( spep_2 -3 + 414, 1, 2.31, 2.31 );
setScaleKey( spep_2 -3 + 416, 1, 2.38, 2.38 );
setScaleKey( spep_2 -3 + 418, 1, 2.44, 2.44 );
setScaleKey( spep_2 -3 + 420, 1, 2.49, 2.49 );
setScaleKey( spep_2 -3 + 422, 1, 2.55, 2.55 );

setRotateKey( spep_2 -3 + 48, 1, -9.8 );
setRotateKey( spep_2 -3 + 50, 1, -6 );
setRotateKey( spep_2 -3 + 51, 1, -6 );
setRotateKey( spep_2 -3 + 52, 1, -4.9 );
setRotateKey( spep_2 -3 + 54, 1, -4.8 );
setRotateKey( spep_2 -3 + 56, 1, -3.9 );
setRotateKey( spep_2 -3 + 58, 1, 0.9 );
setRotateKey( spep_2 -3 + 60, 1, 2.5 );
setRotateKey( spep_2 -3 + 62, 1, 3.4 );
setRotateKey( spep_2 -3 + 64, 1, 4 );
setRotateKey( spep_2 -3 + 66, 1, 4.5 );
setRotateKey( spep_2 -3 + 68, 1, 5 );
setRotateKey( spep_2 -3 + 70, 1, 5.4 );
setRotateKey( spep_2 -3 + 72, 1, 5.8 );
setRotateKey( spep_2 -3 + 74, 1, 6.2 );
setRotateKey( spep_2 -3 + 76, 1, 6.5 );
setRotateKey( spep_2 -3 + 78, 1, 6.9 );
setRotateKey( spep_2 -3 + 80, 1, 7.3 );
setRotateKey( spep_2 -3 + 82, 1, 7.6 );
setRotateKey( spep_2 -3 + 84, 1, 8 );
setRotateKey( spep_2 -3 + 86, 1, 8.3 );
setRotateKey( spep_2 -3 + 88, 1, 8.7 );
setRotateKey( spep_2 -3 + 90, 1, 9.1 );
setRotateKey( spep_2 -3 + 92, 1, 9.5 );
setRotateKey( spep_2 -3 + 94, 1, 9.9 );
setRotateKey( spep_2 -3 + 96, 1, 10.3 );
setRotateKey( spep_2 -3 + 98, 1, 10.7 );
setRotateKey( spep_2 -3 + 100, 1, 11.2 );
setRotateKey( spep_2 -3 + 102, 1, 11.6 );
setRotateKey( spep_2 -3 + 104, 1, -15.8 );
setRotateKey( spep_2 -3 + 105, 1, -15.8 );
setRotateKey( spep_2 -3 + 106, 1, -90.6 );
setRotateKey( spep_2 -3 + 108, 1, -91.5 );
setRotateKey( spep_2 -3 + 110, 1, -95.2 );
setRotateKey( spep_2 -3 + 112, 1, -96.3 );
setRotateKey( spep_2 -3 + 114, 1, -96.9 );
setRotateKey( spep_2 -3 + 116, 1, -97.1 );
setRotateKey( spep_2 -3 + 118, 1, -97.3 );
setRotateKey( spep_2 -3 + 120, 1, -97.4 );
setRotateKey( spep_2 -3 + 122, 1, -97.5 );
setRotateKey( spep_2 -3 + 126, 1, -97.5 );
setRotateKey( spep_2 -3 + 128, 1, -107.6 );
setRotateKey( spep_2 -3 + 130, 1, -143.2 );
setRotateKey( spep_2 -3 + 132, 1, -151.2 );
setRotateKey( spep_2 -3 + 134, 1, -155.8 );
setRotateKey( spep_2 -3 + 136, 1, -159.3 );
setRotateKey( spep_2 -3 + 138, 1, -162.3 );
setRotateKey( spep_2 -3 + 140, 1, -164.8 );
setRotateKey( spep_2 -3 + 142, 1, -167.2 );
setRotateKey( spep_2 -3 + 166, 1, -165.8 );
setRotateKey( spep_2 -3 + 168, 1, -166.8 );
setRotateKey( spep_2 -3 + 170, 1, -167.8 );
setRotateKey( spep_2 -3 + 172, 1, -168.8 );
setRotateKey( spep_2 -3 + 174, 1, -169.8 );
setRotateKey( spep_2 -3 + 176, 1, -170.8 );
setRotateKey( spep_2 -3 + 177, 1, -170.8 );
setRotateKey( spep_2 -3 + 178, 1, -96.3 );
setRotateKey( spep_2 -3 + 180, 1, -84.7 );
setRotateKey( spep_2 -3 + 182, 1, -68.4 );
setRotateKey( spep_2 -3 + 184, 1, -61.9 );
setRotateKey( spep_2 -3 + 185, 1, -61.9 );
setRotateKey( spep_2 -3 + 186, 1, -104.8 );
setRotateKey( spep_2 -3 + 188, 1, -103.5 );
setRotateKey( spep_2 -3 + 190, 1, -102.5 );
setRotateKey( spep_2 -3 + 192, 1, -101.6 );
setRotateKey( spep_2 -3 + 194, 1, -100.8 );
setRotateKey( spep_2 -3 + 196, 1, -100.1 );
setRotateKey( spep_2 -3 + 198, 1, -99.4 );
setRotateKey( spep_2 -3 + 200, 1, -98.8 );
setRotateKey( spep_2 -3 + 202, 1, -98.3 );
setRotateKey( spep_2 -3 + 238, 1, -139 );
setRotateKey( spep_2 -3 + 240, 1, -109 );
setRotateKey( spep_2 -3 + 242, 1, -81 );
setRotateKey( spep_2 -3 + 244, 1, -80 );
setRotateKey( spep_2 -3 + 246, 1, -80.5 );
setRotateKey( spep_2 -3 + 248, 1, -81 );
setRotateKey( spep_2 -3 + 250, 1, -80.5 );
setRotateKey( spep_2 -3 + 252, 1, -80 );
setRotateKey( spep_2 -3 + 254, 1, -80.5 );
setRotateKey( spep_2 -3 + 256, 1, -81 );
setRotateKey( spep_2 -3 + 258, 1, -80.5 );
setRotateKey( spep_2 -3 + 260, 1, -80 );
setRotateKey( spep_2 -3 + 262, 1, -80.5 );
setRotateKey( spep_2 -3 + 264, 1, -81 );
setRotateKey( spep_2 -3 + 266, 1, -80.5 );
setRotateKey( spep_2 -3 + 268, 1, -80 );
setRotateKey( spep_2 -3 + 270, 1, -80.5 );
setRotateKey( spep_2 -3 + 272, 1, -81 );
setRotateKey( spep_2 -3 + 274, 1, -80.5 );
setRotateKey( spep_2 -3 + 276, 1, -80 );
setRotateKey( spep_2 -3 + 278, 1, -80.5 );
setRotateKey( spep_2 -3 + 280, 1, -81 );
setRotateKey( spep_2 -3 + 302, 1, 118 );
setRotateKey( spep_2 -3 + 304, 1, 115.8 );
setRotateKey( spep_2 -3 + 306, 1, 114.4 );
setRotateKey( spep_2 -3 + 308, 1, 114 );
setRotateKey( spep_2 -3 + 310, 1, 114.1 );
setRotateKey( spep_2 -3 + 312, 1, 118 );
setRotateKey( spep_2 -3 + 314, 1, 117.9 );
setRotateKey( spep_2 -3 + 316, 1, 114 );
setRotateKey( spep_2 -3 + 318, 1, 114.1 );
setRotateKey( spep_2 -3 + 320, 1, 118 );
setRotateKey( spep_2 -3 + 322, 1, 117.9 );
setRotateKey( spep_2 -3 + 324, 1, 114 );
setRotateKey( spep_2 -3 + 326, 1, 114.1 );
setRotateKey( spep_2 -3 + 328, 1, 118 );
setRotateKey( spep_2 -3 + 330, 1, 117.9 );
setRotateKey( spep_2 -3 + 332, 1, 114 );
setRotateKey( spep_2 -3 + 334, 1, 114.1 );
setRotateKey( spep_2 -3 + 336, 1, 118 );
setRotateKey( spep_2 -3 + 338, 1, 117.9 );
setRotateKey( spep_2 -3 + 340, 1, 114 );
setRotateKey( spep_2 -3 + 342, 1, 114.1 );
setRotateKey( spep_2 -3 + 344, 1, 118 );
setRotateKey( spep_2 -3 + 346, 1, 117.9 );
setRotateKey( spep_2 -3 + 348, 1, 114 );
setRotateKey( spep_2 -3 + 350, 1, 114.1 );
setRotateKey( spep_2 -3 + 352, 1, 118 );
setRotateKey( spep_2 -3 + 392, 1, -88.5 );
setRotateKey( spep_2 -3 + 394, 1, -88.3 );
setRotateKey( spep_2 -3 + 396, 1, -87.8 );
setRotateKey( spep_2 -3 + 398, 1, -86.6 );
setRotateKey( spep_2 -3 + 400, 1, -84.8 );
setRotateKey( spep_2 -3 + 402, 1, -83.1 );
setRotateKey( spep_2 -3 + 404, 1, -82.5 );
setRotateKey( spep_2 -3 + 422, 1, -82.5 );

-- ** 白フェード ** --
--entryFade( spep_2 -3 + 54, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--playSe( spep_2 + 52 -3, 1002 );  --ボウ(蹴る)
--setSeVolume( spep_2 + 52 -3, 1002, 120 );
--playSe( spep_2 + 52 -3, 1120 );  --ボウ(蹴る)
--setSeVolume( spep_2 + 52 -3, 1120, 110 );
playSe( spep_2 + 52 -3, 1011 );  --ボウ(蹴る)
setSeVolume( spep_2 + 52 -3, 1011, 110 );
playSe( spep_2 + 76, 43 );  --瞬間移動
setSeVolume( spep_2 + 76, 43, 110 );
playSe( spep_2 + 106 -3, 1010 );  --ドン(殴る)
playSe( spep_2 + 148, 43 );  --瞬間移動
setSeVolume( spep_2 + 148, 43, 110 );
playSe( spep_2 + 158, 1005 );  --瞬間移動
playSe( spep_2 + 158, 4 );  --瞬間移動
playSe( spep_2 + 178, 1011 );  --ボッ(蹴る)
playSe( spep_2 + 214, 8 );  --拳が向かう
playSe( spep_2 + 238, 1010 );  --殴る
playSe( spep_2 + 238, 1001 );  --殴る
setSeVolume( spep_2 + 238, 1009, 70 );
playSe( spep_2 + 238, 1009 );  --殴る
setSeVolume( spep_2 + 238, 1009, 80 );
--playSe( spep_2 + 238, 1011 );  --殴る
playSe( spep_2 + 300, 1010 );  --肘打ち
setSeVolume( spep_2 + 300, 1010, 125 );
playSe( spep_2 + 300, 1011 );  --肘打ち
setSeVolume( spep_2 + 300, 1011, 120 );
playSe( spep_2 + 354, 9 );  --拳が向かう
--playSe( spep_2 + 404, 1120 );  --アッパー
playSe( spep_2 + 404, 1123 );  --アッパー
setSeVolume( spep_2 + 404, 1123, 120 );
--playSe( spep_2 + 440, 1072 );  --向かってくる
--setSeVolume( spep_2 + 440, 1072, 130 );
playSe( spep_2 + 440, 8 );  --向かってくる
setSeVolume( spep_2 + 440, 8, 130 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 488;

------------------------------------------------------
-- とどめ(276F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --とどめ(ef_005)
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 276, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 276, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 276, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 276, finish_f, 255 );

finish_b = entryEffect( spep_3 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --とどめ(ef_006)
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 276, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 276, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 276, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 276, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 70 -3, 1, 0 );
setDisp( spep_3 + 122 -3, 1, 1 );
setDisp( spep_3 + 158 -3, 1, 0 );
changeAnime( spep_3 + 0, 1, 106 );
changeAnime( spep_3 + 130 -3, 1, 107 );

setMoveKey( spep_3 + 0, 1, -163, -141.1 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -145.3, -130.2 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -138.3, -126 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -146.9, -131.2 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -150.6, -133.5 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -150.3, -133.3 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -136.5, -124.9 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -169.9, -145.2 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -135.6, -124.3 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -171.8, -146.4 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -134.5, -123.6 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -168.1, -144.2 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -135.6, -124.3 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -161.2, -139.3 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -131, -120.1 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -163.1, -144.1 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -139, -124.8 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -148.9, -133.9 , 0 );
setMoveKey( spep_3 -3 + 38, 1, -163.2, -140.2 , 0 );
setMoveKey( spep_3 -3 + 40, 1, -146, -131.1 , 0 );
setMoveKey( spep_3 -3 + 42, 1, -138.1, -125.3 , 0 );
setMoveKey( spep_3 -3 + 44, 1, -146.9, -131.8 , 0 );
setMoveKey( spep_3 -3 + 46, 1, -150.7, -133.2 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -150.3, -133.3 , 0 );
setMoveKey( spep_3 -3 + 50, 1, -136.5, -124.9 , 0 );
setMoveKey( spep_3 -3 + 52, 1, -169.9, -145.2 , 0 );
setMoveKey( spep_3 -3 + 54, 1, -135.6, -124.3 , 0 );
setMoveKey( spep_3 -3 + 56, 1, -171.8, -146.4 , 0 );
setMoveKey( spep_3 -3 + 58, 1, -134.5, -123.6 , 0 );
setMoveKey( spep_3 -3 + 60, 1, -168.1, -144.2 , 0 );
setMoveKey( spep_3 -3 + 62, 1, -135.6, -124.3 , 0 );
setMoveKey( spep_3 -3 + 64, 1, -158.5, -138.3 , 0 );
setMoveKey( spep_3 -3 + 66, 1, -131.6, -121.9 , 0 );
setMoveKey( spep_3 -3 + 70, 1, -164.4, -141.9 , 0 );
setMoveKey( spep_3 -3 + 122, 1, -275.2, -122.6 , 0 );
setMoveKey( spep_3 -3 + 124, 1, -219.1, -85.3 , 0 );
setMoveKey( spep_3 -3 + 126, 1, -162.9, -48.1 , 0 );
setMoveKey( spep_3 -3 + 128, 1, -106.7, -10.9 , 0 );
setMoveKey( spep_3 -3 + 129, 1, -106.7, -10.9 , 0 );
setMoveKey( spep_3 -3 + 130, 1, -57.6, -72.1 , 0 );
setMoveKey( spep_3 -3 + 132, 1, -32.5, -20.1 , 0 );
setMoveKey( spep_3 -3 + 134, 1, -49.3, -35.5 , 0 );
setMoveKey( spep_3 -3 + 136, 1, -40, -38.4 , 0 );
setMoveKey( spep_3 -3 + 138, 1, -29.7, -36.6 , 0 );
setMoveKey( spep_3 -3 + 140, 1, -28.6, -55 , 0 );
setMoveKey( spep_3 -3 + 142, 1, -16.3, -89.9 , 0 );
setMoveKey( spep_3 -3 + 144, 1, 29.8, -124.4 , 0 );
setMoveKey( spep_3 -3 + 146, 1, 38.3, -175 , 0 );
setMoveKey( spep_3 -3 + 148, 1, 87.1, -240.3 , 0 );
setMoveKey( spep_3 -3 + 150, 1, 147, -320.7 , 0 );
setMoveKey( spep_3 -3 + 152, 1, 224.5, -435.4 , 0 );
setMoveKey( spep_3 -3 + 154, 1, 332.9, -595.8 , 0 );
setMoveKey( spep_3 -3 + 156, 1, 500.9, -844.4 , 0 );
setMoveKey( spep_3 -3 + 158, 1, 1033.6, -1631.3 , 0 );

setScaleKey( spep_3 + 0, 1, 1.87, 1.87 );
setScaleKey( spep_3 -3 + 70, 1, 1.87, 1.87 );
setScaleKey( spep_3 -3 + 122, 1, 0.79, 0.79 );
setScaleKey( spep_3 -3 + 128, 1, 0.79, 0.79 );
setScaleKey( spep_3 -3 + 129, 1, 0.79, 0.79 );
setScaleKey( spep_3 -3 + 130, 1, 0.38, 0.38 );
setScaleKey( spep_3 -3 + 132, 1, 0.26, 0.26 );
setScaleKey( spep_3 -3 + 134, 1, 0.33, 0.33 );
setScaleKey( spep_3 -3 + 136, 1, 0.31, 0.31 );
setScaleKey( spep_3 -3 + 138, 1, 0.35, 0.35 );
setScaleKey( spep_3 -3 + 140, 1, 0.4, 0.4 );
setScaleKey( spep_3 -3 + 142, 1, 0.48, 0.48 );
setScaleKey( spep_3 -3 + 144, 1, 0.58, 0.58 );
setScaleKey( spep_3 -3 + 146, 1, 0.72, 0.72 );
setScaleKey( spep_3 -3 + 148, 1, 0.9, 0.9 );
setScaleKey( spep_3 -3 + 150, 1, 1.14, 1.14 );
setScaleKey( spep_3 -3 + 152, 1, 1.47, 1.47 );
setScaleKey( spep_3 -3 + 154, 1, 1.92, 1.92 );
setScaleKey( spep_3 -3 + 156, 1, 2.63, 2.63 );
setScaleKey( spep_3 -3 + 158, 1, 4.85, 4.85 );

setRotateKey( spep_3 + 0, 1, -1.4 );
setRotateKey( spep_3 -3 + 70, 1, -1.4 );
setRotateKey( spep_3 -3 + 122, 1, 0 );
setRotateKey( spep_3 -3 + 128, 1, 0 );
setRotateKey( spep_3 -3 + 129, 1, 0 );
setRotateKey( spep_3 -3 + 130, 1, 0 );
setRotateKey( spep_3 -3 + 158, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 276, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_3 + 16, 9 );  --追い抜く
playSe( spep_3 + 76, 1072 );  --手を振りかぶる
setSeVolume( spep_3 + 76, 1072, 150 );
playSe( spep_3 + 128, 1120 );  -- 裏拳
playSe( spep_3 + 128, 1011 );  -- 裏拳
playSe( spep_3 + 212, 1008 );  -- 岩に当たる
playSe( spep_3 + 212, 20 );  -- 岩に当たる
setSeVolume( spep_3 + 212, 20, 130 );
playSe( spep_3 + 225, 1002 );  -- 岩に当たる

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 160 );
endPhase( spep_3 + 276 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- セリフカットイン(200F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
cutin_f = entryEffectLife( spep_0 + 0, SP_01x, 200, 0x100, -1, 0, 0, 0 );  --セリフカットイン(ef_001)
setEffMoveKey( spep_0 + 0, cutin_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 200, cutin_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, cutin_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 200, cutin_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, cutin_f, 0 );
setEffRotateKey( spep_0 + 200, cutin_f, 0 );
setEffAlphaKey( spep_0 + 0, cutin_f, 255 );
setEffAlphaKey( spep_0 + 200, cutin_f, 255 );

cutin_b = entryEffectLife( spep_0 + 0, SP_02x, 200, 0x80, -1, 0, 0, 0 );  --セリフカットイン(ef_002)
setEffMoveKey( spep_0 + 0, cutin_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 200, cutin_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, cutin_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 200, cutin_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, cutin_b, 0 );
setEffRotateKey( spep_0 + 200, cutin_b, 0 );
setEffAlphaKey( spep_0 + 0, cutin_b, 255 );
setEffAlphaKey( spep_0 + 200, cutin_b, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 122, 906, 78, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 122, shuchusen1, 78, 20 );

setEffMoveKey( spep_0 + 122, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 200, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 122, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_0 + 200, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_0 + 122, shuchusen1, 0 );
setEffRotateKey( spep_0 + 200, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 122, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 129, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 130, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 200, shuchusen1, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 114, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 敵キャラクター ** --
setDisp( spep_0 + 58 -3, 1, 1 );
setDisp( spep_0 + 122 -3, 1, 0 );
changeAnime( spep_0 + 58 -3, 1, 16 );

setMoveKey( spep_0 -3 + 58, 1, 291, 338.5 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 270.3, 327.5 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 253.3, 318.5 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 240.1, 311.3 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 230.4, 305.8 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 224.3, 302.2 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 221.7, 300.3 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 220.7, 299.2 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 219.4, 297.6 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 217.8, 295.6 , 0 );
setMoveKey( spep_0 -3 + 78, 1, 215.7, 293 , 0 );
setMoveKey( spep_0 -3 + 80, 1, 213, 289.6 , 0 );
setMoveKey( spep_0 -3 + 82, 1, 209.4, 285.2 , 0 );
setMoveKey( spep_0 -3 + 84, 1, 204.6, 279.3 , 0 );
setMoveKey( spep_0 -3 + 86, 1, 198.3, 271.4 , 0 );
setMoveKey( spep_0 -3 + 88, 1, 190, 260.9 , 0 );
setMoveKey( spep_0 -3 + 90, 1, 179, 247.4 , 0 );
setMoveKey( spep_0 -3 + 92, 1, 164.6, 229.3 , 0 );
setMoveKey( spep_0 -3 + 94, 1, 144.9, 204.6 , 0 );
setMoveKey( spep_0 -3 + 96, 1, 118.9, 172.1 , 0 );
setMoveKey( spep_0 -3 + 98, 1, 94, 140.8 , 0 );
setMoveKey( spep_0 -3 + 100, 1, 78.5, 121.4 , 0 );
setMoveKey( spep_0 -3 + 102, 1, 70.4, 111.3 , 0 );
setMoveKey( spep_0 -3 + 104, 1, 66.7, 106.8 , 0 );
setMoveKey( spep_0 -3 + 106, 1, 65.7, 105.8 , 0 );
setMoveKey( spep_0 -3 + 108, 1, 64.7, 104.6 , 0 );
setMoveKey( spep_0 -3 + 110, 1, 63.7, 103.4 , 0 );
setMoveKey( spep_0 -3 + 112, 1, 62.8, 102.3 , 0 );
setMoveKey( spep_0 -3 + 114, 1, 61.7, 101.1 , 0 );
setMoveKey( spep_0 -3 + 116, 1, 60.8, 99.9 , 0 );
setMoveKey( spep_0 -3 + 118, 1, 59.8, 98.7 , 0 );
setMoveKey( spep_0 -3 + 120, 1, 58.8, 97.5 , 0 );
setMoveKey( spep_0 -3 + 122, 1, 56, 84.9 , 0 );

setScaleKey( spep_0 -3 + 58, 1, 0.08, 0.08 );
setScaleKey( spep_0 -3 + 60, 1, 0.09, 0.09 );
setScaleKey( spep_0 -3 + 66, 1, 0.09, 0.09 );
setScaleKey( spep_0 -3 + 68, 1, 0.1, 0.1 );
setScaleKey( spep_0 -3 + 70, 1, 0.1, 0.1 );
setScaleKey( spep_0 -3 + 72, 1, 0.11, 0.11 );
setScaleKey( spep_0 -3 + 74, 1, 0.11, 0.11 );
setScaleKey( spep_0 -3 + 76, 1, 0.12, 0.12 );
setScaleKey( spep_0 -3 + 78, 1, 0.14, 0.14 );
setScaleKey( spep_0 -3 + 80, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 82, 1, 0.18, 0.18 );
setScaleKey( spep_0 -3 + 84, 1, 0.21, 0.21 );
setScaleKey( spep_0 -3 + 86, 1, 0.24, 0.24 );
setScaleKey( spep_0 -3 + 88, 1, 0.29, 0.29 );
setScaleKey( spep_0 -3 + 90, 1, 0.36, 0.36 );
setScaleKey( spep_0 -3 + 92, 1, 0.45, 0.45 );
setScaleKey( spep_0 -3 + 94, 1, 0.56, 0.56 );
setScaleKey( spep_0 -3 + 96, 1, 0.72, 0.72 );
setScaleKey( spep_0 -3 + 98, 1, 0.88, 0.88 );
setScaleKey( spep_0 -3 + 100, 1, 0.98, 0.98 );
setScaleKey( spep_0 -3 + 102, 1, 1.02, 1.02 );
setScaleKey( spep_0 -3 + 104, 1, 1.04, 1.04 );
setScaleKey( spep_0 -3 + 106, 1, 1.06, 1.06 );
setScaleKey( spep_0 -3 + 108, 1, 1.06, 1.06 );
setScaleKey( spep_0 -3 + 110, 1, 1.07, 1.07 );
setScaleKey( spep_0 -3 + 112, 1, 1.08, 1.08 );
setScaleKey( spep_0 -3 + 114, 1, 1.09, 1.09 );
setScaleKey( spep_0 -3 + 116, 1, 1.1, 1.1 );
setScaleKey( spep_0 -3 + 118, 1, 1.11, 1.11 );
setScaleKey( spep_0 -3 + 120, 1, 1.11, 1.11 );
setScaleKey( spep_0 -3 + 122, 1, 1.12, 1.12 );

setRotateKey( spep_0 -3 + 58, 1, 0 );
setRotateKey( spep_0 -3 + 122, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 200, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_0 + 0, 1007 ); --冒頭の悟飯
setSeVolume( spep_0 + 0, 1007, 80);
playSe( spep_0 + 40, 8 ); --カメラワーク変わる
playSe( spep_0 + 90, 1072 ); --敵迫る
playSe( spep_0 + 130, SE_04 ); --ゴゴゴ
setSeVolume( spep_0 + 130, SE_04, 120);
SE1 = playSe( spep_0 + 120, 1147 ); --パチパチ
stopSe( spep_0 + 180, SE1, 20);

-- ** 次の準備 ** --
spep_1 = spep_0 + 200;

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

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 格闘(488F)
------------------------------------------------------

-- ** エフェクト等 ** --
attack_f = entryEffectLife( spep_2 + 0, SP_03x, 488, 0x100, -1, 0, 0, 0 );  --格闘(ef_003)
setEffMoveKey( spep_2 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 488, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 488, attack_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack_f, 0 );
setEffRotateKey( spep_2 + 488, attack_f, 0 );
setEffAlphaKey( spep_2 + 0, attack_f, 255 );
setEffAlphaKey( spep_2 + 487, attack_f, 255 );
setEffAlphaKey( spep_2 + 488, attack_f, 0 );

attack_b = entryEffectLife( spep_2 + 0, SP_04, 488, 0x80, -1, 0, 0, 0 );  --格闘(ef_004)
setEffMoveKey( spep_2 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 488, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 488, attack_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack_b, 0 );
setEffRotateKey( spep_2 + 488, attack_b, 0 );
setEffAlphaKey( spep_2 + 0, attack_b, 255 );
setEffAlphaKey( spep_2 + 487, attack_b, 255 );
setEffAlphaKey( spep_2 + 488, attack_b, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 488, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_2 + 8, 1109 );  --出てくる
setSeVolume( spep_2 + 8, 1109, 70);
SE2 = playSe( spep_2 + 22, 9 );  --手前に近づく

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE2, 0 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
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
setDisp( spep_2 -3 + 48, 1, 1 );
setDisp( spep_2 -3 + 72, 1, 0 );
setDisp( spep_2 -3 + 94, 1, 1 );
setDisp( spep_2 -3 + 142, 1, 0 );
setDisp( spep_2 -3 + 166, 1, 1 );
setDisp( spep_2 -3 + 202, 1, 0 );
setDisp( spep_2 -3 + 238, 1, 1 );
setDisp( spep_2 -3 + 280, 1, 0 );
setDisp( spep_2 -3 + 302, 1, 1 );
setDisp( spep_2 -3 + 352, 1, 0 );
setDisp( spep_2 -3 + 392, 1, 1 );
setDisp( spep_2 -3 + 422, 1, 0 );
changeAnime( spep_2 -3 + 48, 1, 18 );
changeAnime( spep_2 -3 + 52, 1, 8 );
changeAnime( spep_2 -3 + 106, 1, 6 );
changeAnime( spep_2 -3 + 178, 1, 8 );
changeAnime( spep_2 -3 + 186, 1, 7 );
changeAnime( spep_2 -3 + 302, 1, 107 );
changeAnime( spep_2 -3 + 392, 1, 8 );

setMoveKey( spep_2 -3 + 48, 1, -145.1, 113.5 , 0 );
setMoveKey( spep_2 -3 + 50, 1, -68.1, 83.3 , 0 );
setMoveKey( spep_2 -3 + 51, 1, -68.1, 83.3 , 0 );
setMoveKey( spep_2 -3 + 52, 1, -108.6, 100.2 , 0 );
setMoveKey( spep_2 -3 + 54, 1, -88.2, 77.7 , 0 );
setMoveKey( spep_2 -3 + 56, 1, -202, 95.3 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -506.2, 93.6 , 0 );
setMoveKey( spep_2 -3 + 60, 1, -639.9, 107.1 , 0 );
setMoveKey( spep_2 -3 + 62, 1, -688.9, 99.5 , 0 );
setMoveKey( spep_2 -3 + 64, 1, -759.4, 104.8 , 0 );
setMoveKey( spep_2 -3 + 66, 1, -772.7, 104.9 , 0 );
setMoveKey( spep_2 -3 + 68, 1, -826.3, 104.7 , 0 );
setMoveKey( spep_2 -3 + 70, 1, -847, 112.6 , 0 );
setMoveKey( spep_2 -3 + 72, 1, -879.2, 109 , 0 );
setMoveKey( spep_2 -3 + 94, 1, -7.3, 25.5 , 0 );
setMoveKey( spep_2 -3 + 96, 1, -38, 26.6 , 0 );
setMoveKey( spep_2 -3 + 98, 1, -69.9, 27.8 , 0 );
setMoveKey( spep_2 -3 + 100, 1, -103.4, 29 , 0 );
setMoveKey( spep_2 -3 + 102, 1, -141.2, 30.9 , 0 );
setMoveKey( spep_2 -3 + 104, 1, -190.1, 59.7 , 0 );
setMoveKey( spep_2 -3 + 105, 1, -190.1, 59.7 , 0 );
setMoveKey( spep_2 -3 + 106, 1, -78.6, 21.9 , 0 );
setMoveKey( spep_2 -3 + 108, 1, -64.4, 29.3 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 17.4, 10.8 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 8.1, 17.1 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 26, 6.1 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 1.1, 9.2 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 24.3, 7.9 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 2.5, 6.3 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 11.1, 13.2 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 6.6, 8.6 , 0 );
setMoveKey( spep_2 -3 + 126, 1, -7.6, 12.4 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 124.5, -126.2 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 133.4, -226.3 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 391.1, -392.6 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 533.7, -474.3 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 657.1, -547.8 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 734.6, -591.5 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 820.3, -653.3 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 893.9, -693.1 , 0 );
setMoveKey( spep_2 -3 + 166, 1, -1036.4, 488.5 , 0 );
setMoveKey( spep_2 -3 + 168, 1, -841.3, 390.6 , 0 );
setMoveKey( spep_2 -3 + 170, 1, -646.8, 292.9 , 0 );
setMoveKey( spep_2 -3 + 172, 1, -452.9, 195.5 , 0 );
setMoveKey( spep_2 -3 + 174, 1, -259.7, 98.5 , 0 );
setMoveKey( spep_2 -3 + 176, 1, -67.1, 1.8 , 0 );
setMoveKey( spep_2 -3 + 177, 1, -67.1, 1.8 , 0 );
setMoveKey( spep_2 -3 + 178, 1, 86.6, -8.9 , 0 );
setMoveKey( spep_2 -3 + 180, 1, 42.4, 71 , 0 );
setMoveKey( spep_2 -3 + 182, 1, 9.6, 113.8 , 0 );
setMoveKey( spep_2 -3 + 184, 1, -4.6, 64.1 , 0 );
setMoveKey( spep_2 -3 + 185, 1, -4.6, 64.1 , 0 );
setMoveKey( spep_2 -3 + 186, 1, -116.4, 167.7 , 0 );
setMoveKey( spep_2 -3 + 188, 1, -292.9, 325.9 , 0 );
setMoveKey( spep_2 -3 + 190, 1, -414.7, 457.6 , 0 );
setMoveKey( spep_2 -3 + 192, 1, -521.2, 545.8 , 0 );
setMoveKey( spep_2 -3 + 194, 1, -629.5, 660.5 , 0 );
setMoveKey( spep_2 -3 + 196, 1, -703.4, 737.1 , 0 );
setMoveKey( spep_2 -3 + 198, 1, -801.6, 831.1 , 0 );
setMoveKey( spep_2 -3 + 200, 1, -869.7, 890.7 , 0 );
setMoveKey( spep_2 -3 + 202, 1, -937.5, 961.7 , 0 );
a = 180;
b = 45;
setMoveKey( spep_2 -3 + 238, 1, -528.6 - b, -201.8 + a , 0 );
setMoveKey( spep_2 -3 + 240, 1, -113 - b, -432.1 + a , 0 );
setMoveKey( spep_2 -3 + 242, 1, 154.3 - b, -437.9 + a , 0 );
setMoveKey( spep_2 -3 + 244, 1, -40 - b, -282 + a , 0 );
setMoveKey( spep_2 -3 + 246, 1, 57.2 - b, -359.9 + a , 0 );
setMoveKey( spep_2 -3 + 248, 1, 154.3 - b, -437.9 + a , 0 );
setMoveKey( spep_2 -3 + 250, 1, 57.2 - b, -359.9 + a , 0 );
setMoveKey( spep_2 -3 + 252, 1, -40 - b, -282 + a , 0 );
setMoveKey( spep_2 -3 + 254, 1, 57.2 - b, -359.9 + a , 0 );
setMoveKey( spep_2 -3 + 256, 1, 154.3 - b, -437.9 + a , 0 );
setMoveKey( spep_2 -3 + 258, 1, 57.2 - b, -359.9 + a , 0 );
setMoveKey( spep_2 -3 + 260, 1, -40 - b, -282 + a , 0 );
setMoveKey( spep_2 -3 + 262, 1, 57.2 - b, -359.9 + a , 0 );
setMoveKey( spep_2 -3 + 264, 1, 154.3 - b, -437.9 + a , 0 );
setMoveKey( spep_2 -3 + 266, 1, 57.2 - b, -359.9 + a , 0 );
setMoveKey( spep_2 -3 + 268, 1, -40 - b, -282 + a , 0 );
setMoveKey( spep_2 -3 + 270, 1, 57.2 - b, -359.9 + a , 0 );
setMoveKey( spep_2 -3 + 272, 1, 154.3 - b, -437.9 + a , 0 );
setMoveKey( spep_2 -3 + 274, 1, 57.2 - b, -359.9 + a , 0 );
setMoveKey( spep_2 -3 + 276, 1, -40 - b, -282 + a , 0 );
setMoveKey( spep_2 -3 + 278, 1, 57.2 - b, -359.9 + a , 0 );
setMoveKey( spep_2 -3 + 280, 1, 154.3 - b, -437.9 + a , 0 );
setMoveKey( spep_2 -3 + 302, 1, 527.8, -580.9 , 0 );
setMoveKey( spep_2 -3 + 304, 1, 589.8, -570.4 , 0 );
setMoveKey( spep_2 -3 + 306, 1, 627, -564 , 0 );
setMoveKey( spep_2 -3 + 308, 1, 639.4, -561.9 , 0 );
setMoveKey( spep_2 -3 + 310, 1, 637.6, -562.2 , 0 );
setMoveKey( spep_2 -3 + 312, 1, 527.8, -580.9 , 0 );
setMoveKey( spep_2 -3 + 314, 1, 529.6, -580.6 , 0 );
setMoveKey( spep_2 -3 + 316, 1, 639.4, -561.9 , 0 );
setMoveKey( spep_2 -3 + 318, 1, 637.6, -562.2 , 0 );
setMoveKey( spep_2 -3 + 320, 1, 527.8, -580.9 , 0 );
setMoveKey( spep_2 -3 + 322, 1, 529.6, -580.6 , 0 );
setMoveKey( spep_2 -3 + 324, 1, 639.4, -561.9 , 0 );
setMoveKey( spep_2 -3 + 326, 1, 637.6, -562.2 , 0 );
setMoveKey( spep_2 -3 + 328, 1, 527.8, -580.9 , 0 );
setMoveKey( spep_2 -3 + 330, 1, 529.6, -580.6 , 0 );
setMoveKey( spep_2 -3 + 332, 1, 639.4, -561.9 , 0 );
setMoveKey( spep_2 -3 + 334, 1, 637.6, -562.2 , 0 );
setMoveKey( spep_2 -3 + 336, 1, 527.8, -580.9 , 0 );
setMoveKey( spep_2 -3 + 338, 1, 529.6, -580.6 , 0 );
setMoveKey( spep_2 -3 + 340, 1, 639.4, -561.9 , 0 );
setMoveKey( spep_2 -3 + 342, 1, 637.6, -562.2 , 0 );
setMoveKey( spep_2 -3 + 344, 1, 527.8, -580.9 , 0 );
setMoveKey( spep_2 -3 + 346, 1, 529.6, -580.6 , 0 );
setMoveKey( spep_2 -3 + 348, 1, 639.4, -561.9 , 0 );
setMoveKey( spep_2 -3 + 350, 1, 637.6, -562.2 , 0 );
setMoveKey( spep_2 -3 + 352, 1, 527.8, -580.9 , 0 );
setMoveKey( spep_2 -3 + 392, 1, 0.4, -281.3 , 0 );
setMoveKey( spep_2 -3 + 394, 1, 22.9, -420.4 , 0 );
setMoveKey( spep_2 -3 + 396, 1, 3.8, -274.5 , 0 );
setMoveKey( spep_2 -3 + 398, 1, 36.6, -347 , 0 );
setMoveKey( spep_2 -3 + 400, 1, 15.6, -158 , 0 );
setMoveKey( spep_2 -3 + 402, 1, 39.1, -62.9 , 0 );
setMoveKey( spep_2 -3 + 404, 1, 17.7, -24.2 , 0 );
setMoveKey( spep_2 -3 + 406, 1, 40.4, 52.8 , 0 );
setMoveKey( spep_2 -3 + 408, 1, -31.1, 358.9 , 0 );
setMoveKey( spep_2 -3 + 410, 1, -69, 652.6 , 0 );
setMoveKey( spep_2 -3 + 412, 1, -93.6, 774.6 , 0 );
setMoveKey( spep_2 -3 + 414, 1, -109.2, 868 , 0 );
setMoveKey( spep_2 -3 + 416, 1, -122.7, 948.4 , 0 );
setMoveKey( spep_2 -3 + 418, 1, -135, 1022.1 , 0 );
setMoveKey( spep_2 -3 + 420, 1, -146.7, 1091.9 , 0 );
setMoveKey( spep_2 -3 + 422, 1, -157.9, 1159.2 , 0 );

setScaleKey( spep_2 -3 + 48, 1, 2.42, 2.42 );
setScaleKey( spep_2 -3 + 50, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 51, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 52, 1, 2.68, 2.68 );
setScaleKey( spep_2 -3 + 54, 1, 2.11, 2.11 );
setScaleKey( spep_2 -3 + 56, 1, 2.42, 2.42 );
setScaleKey( spep_2 -3 + 58, 1, 2.12, 2.12 );
setScaleKey( spep_2 -3 + 102, 1, 2.12, 2.12 );
setScaleKey( spep_2 -3 + 104, 1, 2.69, 2.69 );
setScaleKey( spep_2 -3 + 105, 1, 2.69, 2.69 );
setScaleKey( spep_2 -3 + 106, 1, 2.12, 2.12 );
setScaleKey( spep_2 -3 + 108, 1, 2.44, 2.44 );
setScaleKey( spep_2 -3 + 110, 1, 2.12, 2.12 );
setScaleKey( spep_2 -3 + 142, 1, 2.12, 2.12 );
setScaleKey( spep_2 -3 + 166, 1, 2.12, 2.12 );
setScaleKey( spep_2 -3 + 177, 1, 2.12, 2.12 );
setScaleKey( spep_2 -3 + 178, 1, 2.29, 2.29 );
setScaleKey( spep_2 -3 + 180, 1, 1.89, 1.89 );
setScaleKey( spep_2 -3 + 182, 1, 2.26, 2.26 );
setScaleKey( spep_2 -3 + 184, 1, 1.93, 1.93 );
setScaleKey( spep_2 -3 + 185, 1, 1.93, 1.93 );
setScaleKey( spep_2 -3 + 186, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 188, 1, 1.22, 1.22 );
setScaleKey( spep_2 -3 + 190, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 192, 1, 1.75, 1.75 );
setScaleKey( spep_2 -3 + 194, 1, 1.97, 1.97 );
setScaleKey( spep_2 -3 + 196, 1, 2.18, 2.18 );
setScaleKey( spep_2 -3 + 198, 1, 2.36, 2.36 );
setScaleKey( spep_2 -3 + 200, 1, 2.53, 2.53 );
setScaleKey( spep_2 -3 + 202, 1, 2.68, 2.68 );
setScaleKey( spep_2 -3 + 238, 1, 2.58, 2.58 );
setScaleKey( spep_2 -3 + 240, 1, 3.5, 3.5 );
setScaleKey( spep_2 -3 + 242, 1, 2.35, 2.35 );
setScaleKey( spep_2 -3 + 280, 1, 2.35, 2.35 );
setScaleKey( spep_2 -3 + 302, 1, 3.53, 3.53 );
setScaleKey( spep_2 -3 + 352, 1, 3.53, 3.53 );
setScaleKey( spep_2 -3 + 392, 1, 2.09, 2.09 );
setScaleKey( spep_2 -3 + 394, 1, 1.65, 1.65 );
setScaleKey( spep_2 -3 + 396, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 398, 1, 1.65, 1.65 );
setScaleKey( spep_2 -3 + 406, 1, 1.65, 1.65 );
setScaleKey( spep_2 -3 + 408, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 410, 1, 2.13, 2.13 );
setScaleKey( spep_2 -3 + 412, 1, 2.23, 2.23 );
setScaleKey( spep_2 -3 + 414, 1, 2.31, 2.31 );
setScaleKey( spep_2 -3 + 416, 1, 2.38, 2.38 );
setScaleKey( spep_2 -3 + 418, 1, 2.44, 2.44 );
setScaleKey( spep_2 -3 + 420, 1, 2.49, 2.49 );
setScaleKey( spep_2 -3 + 422, 1, 2.55, 2.55 );

setRotateKey( spep_2 -3 + 48, 1, 9.8 );
setRotateKey( spep_2 -3 + 50, 1, 6 );
setRotateKey( spep_2 -3 + 51, 1, 6 );
setRotateKey( spep_2 -3 + 52, 1, 4.9 );
setRotateKey( spep_2 -3 + 54, 1, 4.8 );
setRotateKey( spep_2 -3 + 56, 1, 3.9 );
setRotateKey( spep_2 -3 + 58, 1, -0.9 );
setRotateKey( spep_2 -3 + 60, 1, -2.5 );
setRotateKey( spep_2 -3 + 62, 1, -3.4 );
setRotateKey( spep_2 -3 + 64, 1, -4 );
setRotateKey( spep_2 -3 + 66, 1, -4.5 );
setRotateKey( spep_2 -3 + 68, 1, -5 );
setRotateKey( spep_2 -3 + 70, 1, -5.4 );
setRotateKey( spep_2 -3 + 72, 1, -5.8 );
setRotateKey( spep_2 -3 + 74, 1, -6.2 );
setRotateKey( spep_2 -3 + 76, 1, -6.5 );
setRotateKey( spep_2 -3 + 78, 1, -6.9 );
setRotateKey( spep_2 -3 + 80, 1, -7.3 );
setRotateKey( spep_2 -3 + 82, 1, -7.6 );
setRotateKey( spep_2 -3 + 84, 1, -8 );
setRotateKey( spep_2 -3 + 86, 1, -8.3 );
setRotateKey( spep_2 -3 + 88, 1, -8.7 );
setRotateKey( spep_2 -3 + 90, 1, -9.1 );
setRotateKey( spep_2 -3 + 92, 1, -9.5 );
setRotateKey( spep_2 -3 + 94, 1, -9.9 );
setRotateKey( spep_2 -3 + 96, 1, -10.3 );
setRotateKey( spep_2 -3 + 98, 1, -10.7 );
setRotateKey( spep_2 -3 + 100, 1, -11.2 );
setRotateKey( spep_2 -3 + 102, 1, -11.6 );
setRotateKey( spep_2 -3 + 104, 1, 15.8 );
setRotateKey( spep_2 -3 + 105, 1, 15.8 );
setRotateKey( spep_2 -3 + 106, 1, 90.6 );
setRotateKey( spep_2 -3 + 108, 1, 91.5 );
setRotateKey( spep_2 -3 + 110, 1, 95.2 );
setRotateKey( spep_2 -3 + 112, 1, 96.3 );
setRotateKey( spep_2 -3 + 114, 1, 96.9 );
setRotateKey( spep_2 -3 + 116, 1, 97.1 );
setRotateKey( spep_2 -3 + 118, 1, 97.3 );
setRotateKey( spep_2 -3 + 120, 1, 97.4 );
setRotateKey( spep_2 -3 + 122, 1, 97.5 );
setRotateKey( spep_2 -3 + 126, 1, 97.5 );
setRotateKey( spep_2 -3 + 128, 1, 107.6 );
setRotateKey( spep_2 -3 + 130, 1, 143.2 );
setRotateKey( spep_2 -3 + 132, 1, 151.2 );
setRotateKey( spep_2 -3 + 134, 1, 155.8 );
setRotateKey( spep_2 -3 + 136, 1, 159.3 );
setRotateKey( spep_2 -3 + 138, 1, 162.3 );
setRotateKey( spep_2 -3 + 140, 1, 164.8 );
setRotateKey( spep_2 -3 + 142, 1, 167.2 );
setRotateKey( spep_2 -3 + 166, 1, 165.8 );
setRotateKey( spep_2 -3 + 168, 1, 166.8 );
setRotateKey( spep_2 -3 + 170, 1, 167.8 );
setRotateKey( spep_2 -3 + 172, 1, 168.8 );
setRotateKey( spep_2 -3 + 174, 1, 169.8 );
setRotateKey( spep_2 -3 + 176, 1, 170.8 );
setRotateKey( spep_2 -3 + 177, 1, 170.8 );
setRotateKey( spep_2 -3 + 178, 1, 96.3 );
setRotateKey( spep_2 -3 + 180, 1, 84.7 );
setRotateKey( spep_2 -3 + 182, 1, 68.4 );
setRotateKey( spep_2 -3 + 184, 1, 61.9 );
setRotateKey( spep_2 -3 + 185, 1, 61.9 );
setRotateKey( spep_2 -3 + 186, 1, 104.8 );
setRotateKey( spep_2 -3 + 188, 1, 103.5 );
setRotateKey( spep_2 -3 + 190, 1, 102.5 );
setRotateKey( spep_2 -3 + 192, 1, 101.6 );
setRotateKey( spep_2 -3 + 194, 1, 100.8 );
setRotateKey( spep_2 -3 + 196, 1, 100.1 );
setRotateKey( spep_2 -3 + 198, 1, 99.4 );
setRotateKey( spep_2 -3 + 200, 1, 98.8 );
setRotateKey( spep_2 -3 + 202, 1, 98.3 );
setRotateKey( spep_2 -3 + 238, 1, 139 );
setRotateKey( spep_2 -3 + 240, 1, 109 );
setRotateKey( spep_2 -3 + 242, 1, 81 );
setRotateKey( spep_2 -3 + 244, 1, 80 );
setRotateKey( spep_2 -3 + 246, 1, 80.5 );
setRotateKey( spep_2 -3 + 248, 1, 81 );
setRotateKey( spep_2 -3 + 250, 1, 80.5 );
setRotateKey( spep_2 -3 + 252, 1, 80 );
setRotateKey( spep_2 -3 + 254, 1, 80.5 );
setRotateKey( spep_2 -3 + 256, 1, 81 );
setRotateKey( spep_2 -3 + 258, 1, 80.5 );
setRotateKey( spep_2 -3 + 260, 1, 80 );
setRotateKey( spep_2 -3 + 262, 1, 80.5 );
setRotateKey( spep_2 -3 + 264, 1, 81 );
setRotateKey( spep_2 -3 + 266, 1, 80.5 );
setRotateKey( spep_2 -3 + 268, 1, 80 );
setRotateKey( spep_2 -3 + 270, 1, 80.5 );
setRotateKey( spep_2 -3 + 272, 1, 81 );
setRotateKey( spep_2 -3 + 274, 1, 80.5 );
setRotateKey( spep_2 -3 + 276, 1, 80 );
setRotateKey( spep_2 -3 + 278, 1, 80.5 );
setRotateKey( spep_2 -3 + 280, 1, 81 );
setRotateKey( spep_2 -3 + 302, 1, -118 );
setRotateKey( spep_2 -3 + 304, 1, -115.8 );
setRotateKey( spep_2 -3 + 306, 1, -114.4 );
setRotateKey( spep_2 -3 + 308, 1, -114 );
setRotateKey( spep_2 -3 + 310, 1, -114.1 );
setRotateKey( spep_2 -3 + 312, 1, -118 );
setRotateKey( spep_2 -3 + 314, 1, -117.9 );
setRotateKey( spep_2 -3 + 316, 1, -114 );
setRotateKey( spep_2 -3 + 318, 1, -114.1 );
setRotateKey( spep_2 -3 + 320, 1, -118 );
setRotateKey( spep_2 -3 + 322, 1, -117.9 );
setRotateKey( spep_2 -3 + 324, 1, -114 );
setRotateKey( spep_2 -3 + 326, 1, -114.1 );
setRotateKey( spep_2 -3 + 328, 1, -118 );
setRotateKey( spep_2 -3 + 330, 1, -117.9 );
setRotateKey( spep_2 -3 + 332, 1, -114 );
setRotateKey( spep_2 -3 + 334, 1, -114.1 );
setRotateKey( spep_2 -3 + 336, 1, -118 );
setRotateKey( spep_2 -3 + 338, 1, -117.9 );
setRotateKey( spep_2 -3 + 340, 1, -114 );
setRotateKey( spep_2 -3 + 342, 1, -114.1 );
setRotateKey( spep_2 -3 + 344, 1, -118 );
setRotateKey( spep_2 -3 + 346, 1, -117.9 );
setRotateKey( spep_2 -3 + 348, 1, -114 );
setRotateKey( spep_2 -3 + 350, 1, -114.1 );
setRotateKey( spep_2 -3 + 352, 1, -118 );
setRotateKey( spep_2 -3 + 392, 1, 88.5 );
setRotateKey( spep_2 -3 + 394, 1, 88.3 );
setRotateKey( spep_2 -3 + 396, 1, 87.8 );
setRotateKey( spep_2 -3 + 398, 1, 86.6 );
setRotateKey( spep_2 -3 + 400, 1, 84.8 );
setRotateKey( spep_2 -3 + 402, 1, 83.1 );
setRotateKey( spep_2 -3 + 404, 1, 82.5 );
setRotateKey( spep_2 -3 + 422, 1, 82.5 );

-- ** 白フェード ** --
--entryFade( spep_2 -3 + 54, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--playSe( spep_2 + 52 -3, 1002 );  --ボウ(蹴る)
--setSeVolume( spep_2 + 52 -3, 1002, 120 );
--playSe( spep_2 + 52 -3, 1120 );  --ボウ(蹴る)
--setSeVolume( spep_2 + 52 -3, 1120, 110 );
playSe( spep_2 + 52 -3, 1011 );  --ボウ(蹴る)
setSeVolume( spep_2 + 52 -3, 1011, 110 );
playSe( spep_2 + 76, 43 );  --瞬間移動
setSeVolume( spep_2 + 76, 43, 110 );
playSe( spep_2 + 106 -3, 1010 );  --ドン(殴る)
playSe( spep_2 + 148, 43 );  --瞬間移動
setSeVolume( spep_2 + 148, 43, 110 );
playSe( spep_2 + 158, 1005 );  --瞬間移動
playSe( spep_2 + 158, 4 );  --瞬間移動
playSe( spep_2 + 178, 1011 );  --ボッ(蹴る)
playSe( spep_2 + 214, 8 );  --拳が向かう
playSe( spep_2 + 238, 1010 );  --殴る
playSe( spep_2 + 238, 1001 );  --殴る
setSeVolume( spep_2 + 238, 1009, 70 );
playSe( spep_2 + 238, 1009 );  --殴る
setSeVolume( spep_2 + 238, 1009, 80 );
--playSe( spep_2 + 238, 1011 );  --殴る
playSe( spep_2 + 300, 1010 );  --肘打ち
setSeVolume( spep_2 + 300, 1010, 125 );
playSe( spep_2 + 300, 1011 );  --肘打ち
setSeVolume( spep_2 + 300, 1011, 120 );
playSe( spep_2 + 354, 9 );  --拳が向かう
--playSe( spep_2 + 404, 1120 );  --アッパー
playSe( spep_2 + 404, 1123 );  --アッパー
setSeVolume( spep_2 + 404, 1123, 120 );
--playSe( spep_2 + 440, 1072 );  --向かってくる
--setSeVolume( spep_2 + 440, 1072, 130 );
playSe( spep_2 + 440, 8 );  --向かってくる
setSeVolume( spep_2 + 440, 8, 130 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 488;

------------------------------------------------------
-- とどめ(276F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_05x, 0x100, -1, 0, 0, 0 );  --とどめ(ef_005)
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 276, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 276, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 276, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 276, finish_f, 255 );

finish_b = entryEffect( spep_3 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --とどめ(ef_006)
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 276, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 276, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 276, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 276, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 70 -3, 1, 0 );
setDisp( spep_3 + 122 -3, 1, 1 );
setDisp( spep_3 + 158 -3, 1, 0 );
changeAnime( spep_3 + 0, 1, 6 );
changeAnime( spep_3 + 130 -3, 1, 7 );

setMoveKey( spep_3 + 0, 1, 163, -141.1 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 145.3, -130.2 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 138.3, -126 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 146.9, -131.2 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 150.6, -133.5 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 150.3, -133.3 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 136.5, -124.9 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 169.9, -145.2 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 135.6, -124.3 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 171.8, -146.4 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 134.5, -123.6 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 168.1, -144.2 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 135.6, -124.3 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 161.2, -139.3 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 131, -120.1 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 163.1, -144.1 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 139, -124.8 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 148.9, -133.9 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 163.2, -140.2 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 146, -131.1 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 138.1, -125.3 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 146.9, -131.8 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 150.7, -133.2 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 150.3, -133.3 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 136.5, -124.9 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 169.9, -145.2 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 135.6, -124.3 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 171.8, -146.4 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 134.5, -123.6 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 168.1, -144.2 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 135.6, -124.3 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 158.5, -138.3 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 131.6, -121.9 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 164.4, -141.9 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 275.2, -122.6 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 219.1, -85.3 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 162.9, -48.1 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 106.7, -10.9 , 0 );
setMoveKey( spep_3 -3 + 129, 1, 106.7, -10.9 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 57.6, -72.1 , 0 );
setMoveKey( spep_3 -3 + 132, 1, 32.5, -20.1 , 0 );
setMoveKey( spep_3 -3 + 134, 1, 49.3, -35.5 , 0 );
setMoveKey( spep_3 -3 + 136, 1, 40, -38.4 , 0 );
setMoveKey( spep_3 -3 + 138, 1, 29.7, -36.6 , 0 );
setMoveKey( spep_3 -3 + 140, 1, 28.6, -55 , 0 );
setMoveKey( spep_3 -3 + 142, 1, 16.3, -89.9 , 0 );
setMoveKey( spep_3 -3 + 144, 1, -29.8, -124.4 , 0 );
setMoveKey( spep_3 -3 + 146, 1, -38.3, -175 , 0 );
setMoveKey( spep_3 -3 + 148, 1, -87.1, -240.3 , 0 );
setMoveKey( spep_3 -3 + 150, 1, -147, -320.7 , 0 );
setMoveKey( spep_3 -3 + 152, 1, -224.5, -435.4 , 0 );
setMoveKey( spep_3 -3 + 154, 1, -332.9, -595.8 , 0 );
setMoveKey( spep_3 -3 + 156, 1, -500.9, -844.4 , 0 );
setMoveKey( spep_3 -3 + 158, 1, -1033.6, -1631.3 , 0 );

setScaleKey( spep_3 + 0, 1, 1.87, 1.87 );
setScaleKey( spep_3 -3 + 70, 1, 1.87, 1.87 );
setScaleKey( spep_3 -3 + 122, 1, 0.79, 0.79 );
setScaleKey( spep_3 -3 + 128, 1, 0.79, 0.79 );
setScaleKey( spep_3 -3 + 129, 1, 0.79, 0.79 );
setScaleKey( spep_3 -3 + 130, 1, 0.38, 0.38 );
setScaleKey( spep_3 -3 + 132, 1, 0.26, 0.26 );
setScaleKey( spep_3 -3 + 134, 1, 0.33, 0.33 );
setScaleKey( spep_3 -3 + 136, 1, 0.31, 0.31 );
setScaleKey( spep_3 -3 + 138, 1, 0.35, 0.35 );
setScaleKey( spep_3 -3 + 140, 1, 0.4, 0.4 );
setScaleKey( spep_3 -3 + 142, 1, 0.48, 0.48 );
setScaleKey( spep_3 -3 + 144, 1, 0.58, 0.58 );
setScaleKey( spep_3 -3 + 146, 1, 0.72, 0.72 );
setScaleKey( spep_3 -3 + 148, 1, 0.9, 0.9 );
setScaleKey( spep_3 -3 + 150, 1, 1.14, 1.14 );
setScaleKey( spep_3 -3 + 152, 1, 1.47, 1.47 );
setScaleKey( spep_3 -3 + 154, 1, 1.92, 1.92 );
setScaleKey( spep_3 -3 + 156, 1, 2.63, 2.63 );
setScaleKey( spep_3 -3 + 158, 1, 4.85, 4.85 );

setRotateKey( spep_3 + 0, 1, 1.4 );
setRotateKey( spep_3 -3 + 70, 1, 1.4 );
setRotateKey( spep_3 -3 + 122, 1, 0 );
setRotateKey( spep_3 -3 + 128, 1, 0 );
setRotateKey( spep_3 -3 + 129, 1, 0 );
setRotateKey( spep_3 -3 + 130, 1, 0 );
setRotateKey( spep_3 -3 + 158, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 276, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_3 + 16, 9 );  --追い抜く
playSe( spep_3 + 76, 1072 );  --手を振りかぶる
setSeVolume( spep_3 + 76, 1072, 150 );
playSe( spep_3 + 128, 1120 );  -- 裏拳
playSe( spep_3 + 128, 1011 );  -- 裏拳
playSe( spep_3 + 212, 1008 );  -- 岩に当たる
playSe( spep_3 + 212, 20 );  -- 岩に当たる
setSeVolume( spep_3 + 212, 20, 130 );
playSe( spep_3 + 225, 1002 );  -- 岩に当たる

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 160 );
endPhase( spep_3 + 276 );

end