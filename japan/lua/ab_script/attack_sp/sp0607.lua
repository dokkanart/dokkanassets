--1019040:バーダック&ギネ_ファイナルスピリッツキャノン
--sp_effect_a1_00215

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
SP_01 = 154800; --カメラ引く→登場→敵に向かって飛んでいく
SP_02 = 154802; --気弾を溜める
SP_03 = 154803; --気弾を放つ
SP_04 = 154804; --敵に向かっていく
SP_05 = 154805; --敵アップ
SP_06 = 154806; --敵アップ
SP_07 = 154807; --爆発
SP_08 = 154837; --敵に向かっていく・背景

--敵側
SP_01r = 154801; --カメラ引く→登場→敵に向かって飛んでいく

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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

--[[setMoveKey(   0,   1,    0, -5000,   0);
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
setRotateKey( 6,   1,  0 );]]

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
--カメラ引く→登場→敵に向かって飛んでいく
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); --カメラ引く→登場→敵に向かって飛んでいく(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0, 0 );
setEffMoveKey( spep_0 + 156, start, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0 );
setEffScaleKey( spep_0 + 156, start, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, start, 0 );
setEffRotateKey( spep_0 + 156, start, 0 );
setEffAlphaKey( spep_0 + 0, start, 255 );
setEffAlphaKey( spep_0 + 156, start, 255 );

-- ** 敵の動き ** --
setDisp( spep_0 -3 + 3, 1, 1 );
setDisp( spep_0 -3 + 158, 1, 0 );
changeAnime( spep_0 -3 + 3, 1, 100 );

setMoveKey( spep_0 -3 + 3, 1, 234.3, 412.4 , 0 );
--setMoveKey( spep_0 -3 + 2, 1, 235, 413.4 , 0 );
setMoveKey( spep_0 -3 + 4, 1, 235.3, 413.8 , 0 );
setMoveKey( spep_0 -3 + 5, 1, 235.3, 413.8 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 235.7, 414.3 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 235.7, 414.3 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 236.2, 414.8 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 236.2, 414.8 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 239.5, 419.1 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 245.9, 427.1 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 258.2, 442.7 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 284.4, 476 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 373.7, 589.3 , 0 );
setMoveKey( spep_0 -3 + 108, 1, 373.7, 589.3 , 0 );
setMoveKey( spep_0 -3 + 110, 1, 379.2, 580.7 , 0 );
setMoveKey( spep_0 -3 + 112, 1, 372.4, 586.4 , 0 );
setMoveKey( spep_0 -3 + 114, 1, 365.6, 592.2 , 0 );
setMoveKey( spep_0 -3 + 116, 1, 381.9, 581 , 0 );
setMoveKey( spep_0 -3 + 118, 1, 371.9, 585.5 , 0 );
setMoveKey( spep_0 -3 + 120, 1, 361, 570.5 , 0 );
setMoveKey( spep_0 -3 + 122, 1, 370.6, 539.3 , 0 );
setMoveKey( spep_0 -3 + 124, 1, 358.9, 548.9 , 0 );
setMoveKey( spep_0 -3 + 126, 1, 358.9, 538.8 , 0 );
setMoveKey( spep_0 -3 + 128, 1, 353.1, 539.3 , 0 );
setMoveKey( spep_0 -3 + 130, 1, 347.7, 540.3 , 0 );
setMoveKey( spep_0 -3 + 132, 1, 347.8, 534.6 , 0 );
setMoveKey( spep_0 -3 + 134, 1, 343.2, 535.5 , 0 );
setMoveKey( spep_0 -3 + 136, 1, 338.8, 536.5 , 0 );
setMoveKey( spep_0 -3 + 138, 1, 338, 532.9 , 0 );
setMoveKey( spep_0 -3 + 140, 1, 335, 532.8 , 0 );
setMoveKey( spep_0 -3 + 142, 1, 332.1, 532.9 , 0 );
setMoveKey( spep_0 -3 + 144, 1, 329.5, 533.1 , 0 );
setMoveKey( spep_0 -3 + 146, 1, 327.5, 531.9 , 0 );
setMoveKey( spep_0 -3 + 148, 1, 325.8, 530.7 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 324, 529.5 , 0 );
setMoveKey( spep_0 -3 + 152, 1, 322.3, 528.5 , 0 );
setMoveKey( spep_0 -3 + 154, 1, 320.3, 527.9 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 318.3, 527.4 , 0 );
setMoveKey( spep_0 -3 + 158, 1, 316.4, 526.8 , 0 );
setMoveKey( spep_0 -3 + 159, 1, 2500, 1000 , 0 );

setScaleKey( spep_0 -3 + 3, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 4, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 5, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 6, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 7, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 8, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 9, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 10, 1, 0.29, 0.29 );
setScaleKey( spep_0 -3 + 12, 1, 0.28, 0.28 );
setScaleKey( spep_0 -3 + 14, 1, 0.25, 0.25 );
setScaleKey( spep_0 -3 + 16, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 18, 1, 0.01, 0.01 );
setScaleKey( spep_0 -3 + 148, 1, 0.01, 0.01 );
setScaleKey( spep_0 -3 + 150, 1, 0.02, 0.02 );
setScaleKey( spep_0 -3 + 159, 1, 0.02, 0.02 );

setRotateKey( spep_0 -3 + 3, 1, 0 );
setRotateKey( spep_0 -3 + 4, 1, 0 );
setRotateKey( spep_0 -3 + 5, 1, 0 );
setRotateKey( spep_0 -3 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 7, 1, 0 );
setRotateKey( spep_0 -3 + 8, 1, 0 );
setRotateKey( spep_0 -3 + 9, 1, 0 );
setRotateKey( spep_0 -3 + 159, 1, 0 );

-- ** 白フェード ** --
entryFade( spep_0 + 146, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 158, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
playSe( spep_0 + 16, 44 );
playSe( spep_0 + 16, 1232 );
setSeVolume( spep_0 + 16, 1232, 79 );
playSe( spep_0 + 21, 1003 );
setSeVolume( spep_0 + 21, 1003, 63 );
playSe( spep_0 + 95, 1003 );
playSe( spep_0 + 112, 09 );
setSeVolume( spep_0 + 112, 09, 79 );
se_1183 = playSe( spep_0 + 112, 1183 );
setSeVolume( spep_0 + 112, 1183, 126 );
playSe( spep_0 + 112, 1182 );
setSeVolume( spep_0 + 112, 1182, 0 );
setSeVolume( spep_0 + 121, 1182, 20.00 );
setSeVolume( spep_0 + 122, 1182, 40.00 );
setSeVolume( spep_0 + 123, 1182, 60.00 );
setSeVolume( spep_0 + 124, 1182, 80.00 );
setSeVolume( spep_0 + 125, 1182, 100.00 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 156;

--------------------------------------
--気弾を溜める
--------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 ); --気弾を溜める(ef_002)
setEffMoveKey( spep_1 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_1 + 106, tame, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_1 + 106, tame, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 106, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 106, tame, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1 + 0, 906, 108, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1 + 0, shuchusen1, 108, 20 );

setEffMoveKey( spep_1 + 0, shuchusen1, 0, 0, 0 );
setEffMoveKey( spep_1 + 108, shuchusen1, 0, 0, 0 );

setEffScaleKey( spep_1 + 0, shuchusen1, 1.53, 1.53 );
setEffScaleKey( spep_1 + 108, shuchusen1, 1.53, 1.53 );

setEffRotateKey( spep_1 + 0, shuchusen1, 180 );
setEffRotateKey( spep_1 + 108, shuchusen1, 180 );

setEffAlphaKey( spep_1 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 108, shuchusen1, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_1 + 10, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_1 + 10, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_1 -30 + 52, 190006, 72, 0x100, -1, 0, 0, 530 );-- ゴゴゴゴ

setEffMoveKey(  spep_1 -30 + 52,  ctgogo, 0, 530 );
setEffMoveKey(  spep_1 -30 + 124,  ctgogo, 0, 530 );

setEffAlphaKey( spep_1 -30 + 52, ctgogo, 0 );
setEffAlphaKey( spep_1 -30 + 53, ctgogo, 255 );
setEffAlphaKey( spep_1 -30 + 54, ctgogo, 255 );
setEffAlphaKey( spep_1 -30 + 118, ctgogo, 255 );
setEffAlphaKey( spep_1 -30 + 120, ctgogo, 191 );
setEffAlphaKey( spep_1 -30 + 122, ctgogo, 112 );
setEffAlphaKey( spep_1 -30 + 124, ctgogo, 64 );

setEffRotateKey( spep_1 -30 + 52,  ctgogo,  0);
setEffRotateKey( spep_1 -30 + 124,  ctgogo,  0);

setEffScaleKey( spep_1 -30 + 52,  ctgogo,  0.7,  0.7);
setEffScaleKey( spep_1 -30 + 114,  ctgogo,  0.7,  0.7);
setEffScaleKey( spep_1 -30 + 124,  ctgogo, 1.07, 1.07 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 108, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
stopSe( spep_1 + 27, se_1183, 43 );
se_1209 = playSe( spep_1 + 35, 1209 );
setSeVolume( spep_1 + 35, 1209, 56 );
playSe( spep_1 + 37, 1018 );
se_1037 = playSe( spep_1 + 39, 1037 );
setSeVolume( spep_1 + 39, 1037, 79 );
playSe( spep_1 + 39, 1036 );
setSeVolume( spep_1 + 39, 1036, 63 );
playSe( spep_1 + 63, 1036 );
setSeVolume( spep_1 + 63, 1036, 63 );
playSe( spep_1 + 87, 1036 );
setSeVolume( spep_1 + 87, 1036, 63 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 106;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
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

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
se_1036 = playSe( spep_2 + 5, 1036 );
setSeVolume( spep_2 + 5, 1036, 63 );
stopSe( spep_2 + 16, se_1209, 0 );
stopSe( spep_2 + 16, se_1037, 0 );
stopSe( spep_2 + 16, se_1036, 0 );
playSe( spep_2 + 16, 1035 );
setSeVolume( spep_2 + 19, 1191, 20.00 );
setSeVolume( spep_2 + 20, 1191, 40.00 );
setSeVolume( spep_2 + 21, 1191, 60.00 );
setSeVolume( spep_2 + 22, 1191, 80.00 );
setSeVolume( spep_2 + 23, 1191, 100.00 );
se_1191 = playSe( spep_2 + 62, 1191 );
setSeVolume( spep_2 + 62, 1191, 0 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

--------------------------------------
--気弾を放つ
--------------------------------------
-- ** エフェクト等 ** --
hanatsu = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0 ); --気弾を放つ(ef_003)
setEffMoveKey( spep_3 + 0, hanatsu, 0, 0, 0 );
setEffMoveKey( spep_3 + 126, hanatsu, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hanatsu, 1.0, 1.0 );
setEffScaleKey( spep_3 + 126, hanatsu, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hanatsu, 0 );
setEffRotateKey( spep_3 + 126, hanatsu, 0 );
setEffAlphaKey( spep_3 + 0, hanatsu, 255 );
setEffAlphaKey( spep_3 + 126, hanatsu, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 128, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
playSe( spep_3 + 17, 1020 );
se_1043 = playSe( spep_3 + 17, 1043 );
se_1122 = playSe( spep_3 + 17, 1122 );
setSeVolume( spep_3 + 17, 1122, 63 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 85; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, se_1191, 0 );
    stopSe( SP_dodge - 12, se_1043, 0 );
    stopSe( SP_dodge - 12, se_1122, 0 );
    pauseAll( SP_dodge, 67 );
    

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

-- ** 音 ** --
playSe( spep_3 + 83, 1022 );
setSeVolume( spep_3 + 83, 1022, 126 );
se_1205 = playSe( spep_3 + 83, 1205 );
se_1213 = playSe( spep_3 + 83, 1213 );
se_1211 = playSe( spep_3 + 83, 1211 );
stopSe( spep_3 + 87, se_1191, 0 );
stopSe( spep_3 + 92, se_1043, 0 );
stopSe( spep_3 + 121, se_1205, 32 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 126;

--------------------------------------
--敵に向かっていく
--------------------------------------
-- ** エフェクト等 ** --
semaru_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 ); --敵に向かっていく(ef_004)
setEffMoveKey( spep_4 + 0, semaru_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 56, semaru_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, semaru_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, semaru_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, semaru_f, 0 );
setEffRotateKey( spep_4 + 56, semaru_f, 0 );
setEffAlphaKey( spep_4 + 0, semaru_f, 255 );
setEffAlphaKey( spep_4 + 56, semaru_f, 255 );

semaru_b = entryEffect( spep_4 + 0, SP_08, 0x80, -1, 0, 0, 0 ); --敵に向かっていく・背景(ef_008)
setEffMoveKey( spep_4 + 0, semaru_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 56, semaru_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, semaru_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, semaru_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, semaru_b, 0 );
setEffRotateKey( spep_4 + 56, semaru_b, 0 );
setEffAlphaKey( spep_4 + 0, semaru_b, 255 );
setEffAlphaKey( spep_4 + 56, semaru_b, 255 );

-- ** 敵の動き ** --
setDisp( spep_4 -3 + 3, 1, 1 );
changeAnime( spep_4 -3 + 3, 1, 101 );

setMoveKey( spep_4 -3 + 3, 1, 0.2, 176.6 , 0 );
--setMoveKey( spep_4 -3 + 2, 1, -1.1, 175.9 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -2.4, 175 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -1.2, 177.9 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -0.1, 180.8 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -2.6, 182.4 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -5.1, 184.1 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -3.9, 183.2 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -2.8, 182.4 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -1.6, 184.1 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -0.5, 185.7 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -1.7, 187.3 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -3.1, 189 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -3.1, 188.2 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -3.2, 187.4 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -0.8, 189 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 1.6, 190.7 , 0 );
setMoveKey( spep_4 -3 + 34, 1, -0.9, 189.8 , 0 );
setMoveKey( spep_4 -3 + 36, 1, -3.5, 189.1 , 0 );
setMoveKey( spep_4 -3 + 38, 1, -4.7, 190.7 , 0 );
setMoveKey( spep_4 -3 + 40, 1, -6, 192.3 , 0 );
setMoveKey( spep_4 -3 + 42, 1, -3.7, 194 , 0 );
setMoveKey( spep_4 -3 + 44, 1, -1.3, 195.6 , 0 );
setMoveKey( spep_4 -3 + 46, 1, -2.5, 194.8 , 0 );
setMoveKey( spep_4 -3 + 48, 1, -3.9, 194 , 0 );
setMoveKey( spep_4 -3 + 50, 1, -2.7, 188.3 , 0 );
setMoveKey( spep_4 -3 + 52, 1, -1.5, 182.6 , 0 );
setMoveKey( spep_4 -3 + 54, 1, -5.3, 186.7 , 0 );
setMoveKey( spep_4 -3 + 56, 1, -9, 190.8 , 0 );
setMoveKey( spep_4 -3 + 58, 1, -10.3, 190 , 0 );

setScaleKey( spep_4 -3 + 3, 1, 0.11, 0.11 );
setScaleKey( spep_4 -3 + 36, 1, 0.11, 0.11 );
setScaleKey( spep_4 -3 + 38, 1, 0.12, 0.12 );
setScaleKey( spep_4 -3 + 58, 1, 0.12, 0.12 );

setRotateKey( spep_4 -3 + 3, 1, 0 );
setRotateKey( spep_4 -3 + 58, 1, 0 );

-- ** 音 ** --
se_1124 = playSe( spep_4 + 17, 1124 );
setSeVolume( spep_4 + 17, 1124, 71 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 58, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 56;

--------------------------------------
--敵アップ
--------------------------------------
-- ** エフェクト等 ** --
up_f = entryEffect( spep_5 + 0, SP_05, 0x100, -1, 0, 0, 0 ); --敵アップ(ef_005)
setEffMoveKey( spep_5 + 0, up_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 56, up_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, up_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, up_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, up_f, 0 );
setEffRotateKey( spep_5 + 56, up_f, 0 );
setEffAlphaKey( spep_5 + 0, up_f, 255 );
setEffAlphaKey( spep_5 + 56, up_f, 255 );

up_b = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0 ); --敵アップ・背景(ef_006)
setEffMoveKey( spep_5 + 0, up_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 56, up_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, up_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, up_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, up_b, 0 );
setEffRotateKey( spep_5 + 56, up_b, 0 );
setEffAlphaKey( spep_5 + 0, up_b, 255 );
setEffAlphaKey( spep_5 + 56, up_b, 255 );

-- ** 敵の動き ** --
--setDisp( spep_5 -3 + 3, 1, 1 );
setDisp( spep_5 -3 + 59, 1, 0 );
changeAnime( spep_5 -3 + 3, 1, 104 );

setMoveKey( spep_5 -3 + 3, 1, -7.1, 326.4 , 0 );
--setMoveKey( spep_5 -3 + 2, 1, -8.3, 325 , 0 );
setMoveKey( spep_5 -3 + 4, 1, -9.5, 323.2 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -8.1, 323.6 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -6.8, 323.6 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -5.5, 320.8 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -4.2, 317.6 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -5.4, 316.5 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -6.6, 315.1 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -4, 309.6 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -1.4, 303.7 , 0 );
setMoveKey( spep_5 -3 + 22, 1, -6.3, 302.6 , 0 );
setMoveKey( spep_5 -3 + 24, 1, -3.7, 303.4 , 0 );
setMoveKey( spep_5 -3 + 26, 1, -13.3, 293.8 , 0 );
setMoveKey( spep_5 -3 + 28, 1, -7.7, 294 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 0, 281.2 , 0 );
setMoveKey( spep_5 -3 + 32, 1, -7.3, 283.2 , 0 );
setMoveKey( spep_5 -3 + 34, 1, -2, 274.5 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 5.4, 273 , 0 );
setMoveKey( spep_5 -3 + 38, 1, -4.8, 275.6 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 0.5, 262.1 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 7.7, 248.9 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 16.6, 253 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 4.4, 235.5 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 8.6, 231 , 0 );
setMoveKey( spep_5 -3 + 50, 1, -2.8, 217.9 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 0.4, 209.9 , 0 );
setMoveKey( spep_5 -3 + 54, 1, -2, 190.9 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 4.1, 177.7 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 0.4, 173.9 , 0 );
setMoveKey( spep_5 -3 + 59, 1, 0.4, 173.9 , 0 );

setScaleKey( spep_5 -3 + 3, 1, 0.49, 0.49 );
--setScaleKey( spep_5 -3 + 2, 1, 0.49, 0.49 );
setScaleKey( spep_5 -3 + 4, 1, 0.5, 0.5 );
setScaleKey( spep_5 -3 + 6, 1, 0.52, 0.52 );
setScaleKey( spep_5 -3 + 8, 1, 0.54, 0.54 );
setScaleKey( spep_5 -3 + 10, 1, 0.57, 0.57 );
setScaleKey( spep_5 -3 + 12, 1, 0.6, 0.6 );
setScaleKey( spep_5 -3 + 14, 1, 0.64, 0.64 );
setScaleKey( spep_5 -3 + 16, 1, 0.69, 0.69 );
setScaleKey( spep_5 -3 + 18, 1, 0.74, 0.74 );
setScaleKey( spep_5 -3 + 20, 1, 0.8, 0.8 );
setScaleKey( spep_5 -3 + 22, 1, 0.86, 0.86 );
setScaleKey( spep_5 -3 + 24, 1, 0.93, 0.93 );
setScaleKey( spep_5 -3 + 26, 1, 1.01, 1.01 );
setScaleKey( spep_5 -3 + 28, 1, 1.09, 1.09 );
setScaleKey( spep_5 -3 + 30, 1, 1.18, 1.18 );
setScaleKey( spep_5 -3 + 32, 1, 1.27, 1.27 );
setScaleKey( spep_5 -3 + 34, 1, 1.37, 1.37 );
setScaleKey( spep_5 -3 + 36, 1, 1.48, 1.48 );
setScaleKey( spep_5 -3 + 38, 1, 1.59, 1.59 );
setScaleKey( spep_5 -3 + 40, 1, 1.71, 1.71 );
setScaleKey( spep_5 -3 + 42, 1, 1.84, 1.84 );
setScaleKey( spep_5 -3 + 44, 1, 1.97, 1.97 );
setScaleKey( spep_5 -3 + 46, 1, 2.11, 2.11 );
setScaleKey( spep_5 -3 + 48, 1, 2.25, 2.25 );
setScaleKey( spep_5 -3 + 50, 1, 2.4, 2.4 );
setScaleKey( spep_5 -3 + 52, 1, 2.56, 2.56 );
setScaleKey( spep_5 -3 + 54, 1, 2.72, 2.72 );
setScaleKey( spep_5 -3 + 56, 1, 2.89, 2.89 );
setScaleKey( spep_5 -3 + 58, 1, 3.06, 3.06 );
setScaleKey( spep_5 -3 + 59, 1, 3.06, 3.06 );

setRotateKey( spep_5 -3 + 3, 1, 0 );
setRotateKey( spep_5 -3 + 59, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 58, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
playSe( spep_5 + 0, 1021 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;

--------------------------------------
--ギャン
--------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_6 + 0, 190000, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, hit, 0, 0, 0 );
setEffMoveKey( spep_6 + 56, hit, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_6 + 56, hit, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit, 0 );
setEffRotateKey( spep_6 + 56, hit, 0 );
setEffAlphaKey( spep_6 + 0, hit, 255 );
setEffAlphaKey( spep_6 + 56, hit, 255 );

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep_6, 10006, 58, 0x100, -1, 8.8, 313 , 0);    -- ギャン

setEffMoveKey( spep_6 + 0, ctgyan, 8.8, 313 , 0 );
setEffMoveKey( spep_6 + 2, ctgyan, 9.1, 314.1 , 0 );
setEffMoveKey( spep_6 + 4, ctgyan, 9.4, 315.1 , 0 );
setEffMoveKey( spep_6 + 6, ctgyan, 9.7, 316.1 , 0 );
setEffMoveKey( spep_6 + 8, ctgyan, 10, 317.1 , 0 );
setEffMoveKey( spep_6 + 10, ctgyan, 10, 317.2 , 0 );
setEffMoveKey( spep_6 + 12, ctgyan, 10, 317.3 , 0 );
setEffMoveKey( spep_6 + 14, ctgyan, 10, 317.4 , 0 );
setEffMoveKey( spep_6 + 16, ctgyan, 10.1, 317.5 , 0 );
setEffMoveKey( spep_6 + 18, ctgyan, 10.1, 317.5 , 0 );
setEffMoveKey( spep_6 + 20, ctgyan, 10.1, 317.6 , 0 );
setEffMoveKey( spep_6 + 22, ctgyan, 10.1, 317.7 , 0 );
setEffMoveKey( spep_6 + 24, ctgyan, 10.2, 317.8 , 0 );
setEffMoveKey( spep_6 + 26, ctgyan, 10.2, 317.9 , 0 );
setEffMoveKey( spep_6 + 28, ctgyan, 10.2, 318 , 0 );
setEffMoveKey( spep_6 + 30, ctgyan, 10.2, 318 , 0 );
setEffMoveKey( spep_6 + 32, ctgyan, 10.3, 318.1 , 0 );
setEffMoveKey( spep_6 + 34, ctgyan, 10.3, 318.2 , 0 );
setEffMoveKey( spep_6 + 36, ctgyan, 10.3, 318.3 , 0 );
setEffMoveKey( spep_6 + 38, ctgyan, 10.3, 318.4 , 0 );
setEffMoveKey( spep_6 + 40, ctgyan, 10.4, 318.5 , 0 );
setEffMoveKey( spep_6 + 42, ctgyan, 10.4, 318.5 , 0 );
setEffMoveKey( spep_6 + 44, ctgyan, 10.4, 318.6 , 0 );
setEffMoveKey( spep_6 + 46, ctgyan, 10.4, 318.7 , 0 );
setEffMoveKey( spep_6 + 48, ctgyan, 10.5, 318.8 , 0 );
setEffMoveKey( spep_6 + 50, ctgyan, 10.5, 318.9 , 0 );
setEffMoveKey( spep_6 + 52, ctgyan, 10.5, 319 , 0 );
setEffMoveKey( spep_6 + 54, ctgyan, 10.5, 319 , 0 );
setEffMoveKey( spep_6 + 56, ctgyan, 10.5, 319.1 , 0 );

setEffScaleKey( spep_6 + 0, ctgyan, 2.11, 2.11 );
setEffScaleKey( spep_6 + 2, ctgyan, 2.47, 2.47 );
setEffScaleKey( spep_6 + 4, ctgyan, 2.82, 2.82 );
setEffScaleKey( spep_6 + 6, ctgyan, 3.18, 3.18 );
setEffScaleKey( spep_6 + 8, ctgyan, 3.53, 3.53 );
setEffScaleKey( spep_6 + 10, ctgyan, 3.56, 3.56 );
setEffScaleKey( spep_6 + 12, ctgyan, 3.6, 3.6 );
setEffScaleKey( spep_6 + 14, ctgyan, 3.6, 3.6 );
setEffScaleKey( spep_6 + 16, ctgyan, 3.63, 3.63 );
setEffScaleKey( spep_6 + 18, ctgyan, 3.67, 3.67 );
setEffScaleKey( spep_6 + 20, ctgyan, 3.7, 3.7 );
setEffScaleKey( spep_6 + 22, ctgyan, 3.74, 3.74 );
setEffScaleKey( spep_6 + 24, ctgyan, 3.74, 3.74 );
setEffScaleKey( spep_6 + 26, ctgyan, 3.77, 3.77 );
setEffScaleKey( spep_6 + 28, ctgyan, 3.81, 3.81 );
setEffScaleKey( spep_6 + 30, ctgyan, 3.85, 3.85 );
setEffScaleKey( spep_6 + 32, ctgyan, 3.88, 3.88 );
setEffScaleKey( spep_6 + 34, ctgyan, 3.88, 3.88 );
setEffScaleKey( spep_6 + 36, ctgyan, 3.92, 3.92 );
setEffScaleKey( spep_6 + 38, ctgyan, 3.95, 3.95 );
setEffScaleKey( spep_6 + 40, ctgyan, 3.99, 3.99 );
setEffScaleKey( spep_6 + 42, ctgyan, 4.02, 4.02 );
setEffScaleKey( spep_6 + 44, ctgyan, 4.02, 4.02 );
setEffScaleKey( spep_6 + 46, ctgyan, 4.06, 4.06 );
setEffScaleKey( spep_6 + 48, ctgyan, 4.09, 4.09 );
setEffScaleKey( spep_6 + 50, ctgyan, 4.13, 4.13 );
setEffScaleKey( spep_6 + 52, ctgyan, 4.13, 4.13 );
setEffScaleKey( spep_6 + 54, ctgyan, 4.16, 4.16 );
setEffScaleKey( spep_6 + 56, ctgyan, 4.2, 4.2 );

setEffAlphaKey( spep_6 + 0, ctgyan, 255);
setEffAlphaKey( spep_6 + 56, ctgyan, 0);

setEffRotateKey( spep_6 + 0, ctgyan, -5.2 );
setEffRotateKey( spep_6 + 56, ctgyan, -5.2 );

-- ** 白フェード ** --
entryFade( spep_6 + 16, 38, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 58, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
playSe( spep_6 + 4, 1023 );
setSeVolume( spep_6 + 4, 1023, 112 );
stopSe( spep_6 + 6, se_1213, 15 );
stopSe( spep_6 + 6, se_1211, 16 );
stopSe( spep_6 + 14, se_1124, 20 );

-- ** 次の準備 ** --
spep_7 = spep_6 + 56;

--------------------------------------
--爆発
--------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_7 + 0, SP_07, 0x80, -1, 0, 0, 0 ); --ef_007(爆発)
setEffMoveKey( spep_7 + 0, explosion, 0, 0, 0 );
setEffMoveKey( spep_7 + 180, explosion, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_7 + 180, explosion, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, explosion, 0 );
setEffRotateKey( spep_7 + 180, explosion, 0 );
setEffAlphaKey( spep_7 + 0, explosion, 255 );
setEffAlphaKey( spep_7 + 180, explosion, 255 );

-- ** 音 ** --
playSe( spep_7 + 16, 1159 );
setSeVolume( spep_7 + 16, 1159, 63 );
playSe( spep_7 + 16, 1024 );

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 15 );
endPhase( spep_7 + 160 );

else 

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
--カメラ引く→登場→敵に向かって飛んでいく
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0 ); --カメラ引く→登場→敵に向かって飛んでいく(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0, 0 );
setEffMoveKey( spep_0 + 156, start, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, start, -1.0, 1.0 );
setEffScaleKey( spep_0 + 156, start, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, start, 0 );
setEffRotateKey( spep_0 + 156, start, 0 );
setEffAlphaKey( spep_0 + 0, start, 255 );
setEffAlphaKey( spep_0 + 156, start, 255 );

-- ** 敵の動き ** --
setDisp( spep_0 -3 + 3, 1, 1 );
setDisp( spep_0 -3 + 158, 1, 0 );
changeAnime( spep_0 -3 + 3, 1, 100 );

setMoveKey( spep_0 -3 + 3, 1, 234.3, 412.4 , 0 );
--setMoveKey( spep_0 -3 + 2, 1, 235, 413.4 , 0 );
setMoveKey( spep_0 -3 + 4, 1, 235.3, 413.8 , 0 );
setMoveKey( spep_0 -3 + 5, 1, 235.3, 413.8 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 235.7, 414.3 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 235.7, 414.3 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 236.2, 414.8 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 236.2, 414.8 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 239.5, 419.1 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 245.9, 427.1 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 258.2, 442.7 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 284.4, 476 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 373.7, 589.3 , 0 );
setMoveKey( spep_0 -3 + 108, 1, 373.7, 589.3 , 0 );
setMoveKey( spep_0 -3 + 110, 1, 379.2, 580.7 , 0 );
setMoveKey( spep_0 -3 + 112, 1, 372.4, 586.4 , 0 );
setMoveKey( spep_0 -3 + 114, 1, 365.6, 592.2 , 0 );
setMoveKey( spep_0 -3 + 116, 1, 381.9, 581 , 0 );
setMoveKey( spep_0 -3 + 118, 1, 371.9, 585.5 , 0 );
setMoveKey( spep_0 -3 + 120, 1, 361, 570.5 , 0 );
setMoveKey( spep_0 -3 + 122, 1, 370.6, 539.3 , 0 );
setMoveKey( spep_0 -3 + 124, 1, 358.9, 548.9 , 0 );
setMoveKey( spep_0 -3 + 126, 1, 358.9, 538.8 , 0 );
setMoveKey( spep_0 -3 + 128, 1, 353.1, 539.3 , 0 );
setMoveKey( spep_0 -3 + 130, 1, 347.7, 540.3 , 0 );
setMoveKey( spep_0 -3 + 132, 1, 347.8, 534.6 , 0 );
setMoveKey( spep_0 -3 + 134, 1, 343.2, 535.5 , 0 );
setMoveKey( spep_0 -3 + 136, 1, 338.8, 536.5 , 0 );
setMoveKey( spep_0 -3 + 138, 1, 338, 532.9 , 0 );
setMoveKey( spep_0 -3 + 140, 1, 335, 532.8 , 0 );
setMoveKey( spep_0 -3 + 142, 1, 332.1, 532.9 , 0 );
setMoveKey( spep_0 -3 + 144, 1, 329.5, 533.1 , 0 );
setMoveKey( spep_0 -3 + 146, 1, 327.5, 531.9 , 0 );
setMoveKey( spep_0 -3 + 148, 1, 325.8, 530.7 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 324, 529.5 , 0 );
setMoveKey( spep_0 -3 + 152, 1, 322.3, 528.5 , 0 );
setMoveKey( spep_0 -3 + 154, 1, 320.3, 527.9 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 318.3, 527.4 , 0 );
setMoveKey( spep_0 -3 + 158, 1, 316.4, 526.8 , 0 );
setMoveKey( spep_0 -3 + 159, 1, 2500, 1000 , 0 );

setScaleKey( spep_0 -3 + 3, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 4, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 5, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 6, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 7, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 8, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 9, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 10, 1, 0.29, 0.29 );
setScaleKey( spep_0 -3 + 12, 1, 0.28, 0.28 );
setScaleKey( spep_0 -3 + 14, 1, 0.25, 0.25 );
setScaleKey( spep_0 -3 + 16, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 18, 1, 0.01, 0.01 );
setScaleKey( spep_0 -3 + 148, 1, 0.01, 0.01 );
setScaleKey( spep_0 -3 + 150, 1, 0.02, 0.02 );
setScaleKey( spep_0 -3 + 159, 1, 0.02, 0.02 );

setRotateKey( spep_0 -3 + 3, 1, 0 );
setRotateKey( spep_0 -3 + 4, 1, 0 );
setRotateKey( spep_0 -3 + 5, 1, 0 );
setRotateKey( spep_0 -3 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 7, 1, 0 );
setRotateKey( spep_0 -3 + 8, 1, 0 );
setRotateKey( spep_0 -3 + 9, 1, 0 );
setRotateKey( spep_0 -3 + 159, 1, 0 );

-- ** 白フェード ** --
entryFade( spep_0 + 146, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 158, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
playSe( spep_0 + 16, 44 );
playSe( spep_0 + 16, 1232 );
setSeVolume( spep_0 + 16, 1232, 79 );
playSe( spep_0 + 21, 1003 );
setSeVolume( spep_0 + 21, 1003, 63 );
playSe( spep_0 + 95, 1003 );
playSe( spep_0 + 112, 09 );
setSeVolume( spep_0 + 112, 09, 79 );
se_1183 = playSe( spep_0 + 112, 1183 );
setSeVolume( spep_0 + 112, 1183, 126 );
playSe( spep_0 + 112, 1182 );
setSeVolume( spep_0 + 112, 1182, 0 );
setSeVolume( spep_0 + 121, 1182, 20.00 );
setSeVolume( spep_0 + 122, 1182, 40.00 );
setSeVolume( spep_0 + 123, 1182, 60.00 );
setSeVolume( spep_0 + 124, 1182, 80.00 );
setSeVolume( spep_0 + 125, 1182, 100.00 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 156;

--------------------------------------
--気弾を溜める
--------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 ); --気弾を溜める(ef_002)
setEffMoveKey( spep_1 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_1 + 106, tame, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_1 + 106, tame, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 106, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 106, tame, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1 + 0, 906, 108, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1 + 0, shuchusen1, 108, 20 );

setEffMoveKey( spep_1 + 0, shuchusen1, 0, 0, 0 );
setEffMoveKey( spep_1 + 108, shuchusen1, 0, 0, 0 );

setEffScaleKey( spep_1 + 0, shuchusen1, 1.53, 1.53 );
setEffScaleKey( spep_1 + 108, shuchusen1, 1.53, 1.53 );

setEffRotateKey( spep_1 + 0, shuchusen1, 180 );
setEffRotateKey( spep_1 + 108, shuchusen1, 180 );

setEffAlphaKey( spep_1 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 108, shuchusen1, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_1 + 10, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_1 + 10, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_1 -30 + 52, 190006, 72, 0x100, -1, 0, 0, 530 );-- ゴゴゴゴ

setEffMoveKey(  spep_1 -30 + 52,  ctgogo, 0, 530 );
setEffMoveKey(  spep_1 -30 + 124,  ctgogo, 0, 530 );

setEffAlphaKey( spep_1 -30 + 52, ctgogo, 0 );
setEffAlphaKey( spep_1 -30 + 53, ctgogo, 255 );
setEffAlphaKey( spep_1 -30 + 54, ctgogo, 255 );
setEffAlphaKey( spep_1 -30 + 118, ctgogo, 255 );
setEffAlphaKey( spep_1 -30 + 120, ctgogo, 191 );
setEffAlphaKey( spep_1 -30 + 122, ctgogo, 112 );
setEffAlphaKey( spep_1 -30 + 124, ctgogo, 64 );

setEffRotateKey( spep_1 -30 + 52,  ctgogo,  0);
setEffRotateKey( spep_1 -30 + 124,  ctgogo,  0);

setEffScaleKey( spep_1 -30 + 52,  ctgogo,  -0.7,  0.7);
setEffScaleKey( spep_1 -30 + 114,  ctgogo,  -0.7,  0.7);
setEffScaleKey( spep_1 -30 + 124,  ctgogo, -1.07, 1.07 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 108, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
stopSe( spep_1 + 27, se_1183, 43 );
se_1209 = playSe( spep_1 + 35, 1209 );
setSeVolume( spep_1 + 35, 1209, 56 );
playSe( spep_1 + 37, 1018 );
se_1037 = playSe( spep_1 + 39, 1037 );
setSeVolume( spep_1 + 39, 1037, 79 );
playSe( spep_1 + 39, 1036 );
setSeVolume( spep_1 + 39, 1036, 63 );
playSe( spep_1 + 63, 1036 );
setSeVolume( spep_1 + 63, 1036, 63 );
playSe( spep_1 + 87, 1036 );
setSeVolume( spep_1 + 87, 1036, 63 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 106;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
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

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
se_1036 = playSe( spep_2 + 5, 1036 );
setSeVolume( spep_2 + 5, 1036, 63 );
stopSe( spep_2 + 16, se_1209, 0 );
stopSe( spep_2 + 16, se_1037, 0 );
stopSe( spep_2 + 16, se_1036, 0 );
playSe( spep_2 + 16, 1035 );
setSeVolume( spep_2 + 19, 1191, 20.00 );
setSeVolume( spep_2 + 20, 1191, 40.00 );
setSeVolume( spep_2 + 21, 1191, 60.00 );
setSeVolume( spep_2 + 22, 1191, 80.00 );
setSeVolume( spep_2 + 23, 1191, 100.00 );
se_1191 = playSe( spep_2 + 62, 1191 );
setSeVolume( spep_2 + 62, 1191, 0 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

--------------------------------------
--気弾を放つ
--------------------------------------
-- ** エフェクト等 ** --
hanatsu = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0 ); --気弾を放つ(ef_003)
setEffMoveKey( spep_3 + 0, hanatsu, 0, 0, 0 );
setEffMoveKey( spep_3 + 126, hanatsu, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hanatsu, -1.0, 1.0 );
setEffScaleKey( spep_3 + 126, hanatsu, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hanatsu, 0 );
setEffRotateKey( spep_3 + 126, hanatsu, 0 );
setEffAlphaKey( spep_3 + 0, hanatsu, 255 );
setEffAlphaKey( spep_3 + 126, hanatsu, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 128, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
playSe( spep_3 + 17, 1020 );
se_1043 = playSe( spep_3 + 17, 1043 );
se_1122 = playSe( spep_3 + 17, 1122 );
setSeVolume( spep_3 + 17, 1122, 63 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 85; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, se_1191, 0 );
    stopSe( SP_dodge - 12, se_1043, 0 );
    stopSe( SP_dodge - 12, se_1122, 0 );
    pauseAll( SP_dodge, 67 );
    

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

-- ** 音 ** --
playSe( spep_3 + 83, 1022 );
setSeVolume( spep_3 + 83, 1022, 126 );
se_1205 = playSe( spep_3 + 83, 1205 );
se_1213 = playSe( spep_3 + 83, 1213 );
se_1211 = playSe( spep_3 + 83, 1211 );
stopSe( spep_3 + 87, se_1191, 0 );
stopSe( spep_3 + 92, se_1043, 0 );
stopSe( spep_3 + 121, se_1205, 32 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 126;

--------------------------------------
--敵に向かっていく
--------------------------------------
-- ** エフェクト等 ** --
semaru_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 ); --敵に向かっていく(ef_004)
setEffMoveKey( spep_4 + 0, semaru_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 56, semaru_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, semaru_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 56, semaru_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, semaru_f, 0 );
setEffRotateKey( spep_4 + 56, semaru_f, 0 );
setEffAlphaKey( spep_4 + 0, semaru_f, 255 );
setEffAlphaKey( spep_4 + 56, semaru_f, 255 );

semaru_b = entryEffect( spep_4 + 0, SP_08, 0x80, -1, 0, 0, 0 ); --敵に向かっていく・背景(ef_008)
setEffMoveKey( spep_4 + 0, semaru_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 56, semaru_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, semaru_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 56, semaru_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, semaru_b, 0 );
setEffRotateKey( spep_4 + 56, semaru_b, 0 );
setEffAlphaKey( spep_4 + 0, semaru_b, 255 );
setEffAlphaKey( spep_4 + 56, semaru_b, 255 );

-- ** 敵の動き ** --
setDisp( spep_4 -3 + 3, 1, 1 );
changeAnime( spep_4 -3 + 3, 1, 1 );

setMoveKey( spep_4 -3 + 3, 1, -0.2, 176.6 , 0 );
--setMoveKey( spep_4 -3 + 2, 1, -1.1, 175.9 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 2.4, 175 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 1.2, 177.9 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 0.1, 180.8 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 2.6, 182.4 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 5.1, 184.1 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 3.9, 183.2 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 2.8, 182.4 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 1.6, 184.1 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 0.5, 185.7 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 1.7, 187.3 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 3.1, 189 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 3.1, 188.2 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 3.2, 187.4 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 0.8, 189 , 0 );
setMoveKey( spep_4 -3 + 32, 1, -1.6, 190.7 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 0.9, 189.8 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 3.5, 189.1 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 4.7, 190.7 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 6, 192.3 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 3.7, 194 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 1.3, 195.6 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 2.5, 194.8 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 3.9, 194 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 2.7, 188.3 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 1.5, 182.6 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 5.3, 186.7 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 9, 190.8 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 10.3, 190 , 0 );

setScaleKey( spep_4 -3 + 3, 1, 0.11, 0.11 );
setScaleKey( spep_4 -3 + 36, 1, 0.11, 0.11 );
setScaleKey( spep_4 -3 + 38, 1, 0.12, 0.12 );
setScaleKey( spep_4 -3 + 58, 1, 0.12, 0.12 );

setRotateKey( spep_4 -3 + 3, 1, 0 );
setRotateKey( spep_4 -3 + 58, 1, 0 );

-- ** 音 ** --
se_1124 = playSe( spep_4 + 17, 1124 );
setSeVolume( spep_4 + 17, 1124, 71 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 58, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 56;

--------------------------------------
--敵アップ
--------------------------------------
-- ** エフェクト等 ** --
up_f = entryEffect( spep_5 + 0, SP_05, 0x100, -1, 0, 0, 0 ); --敵アップ(ef_005)
setEffMoveKey( spep_5 + 0, up_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 56, up_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, up_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 56, up_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, up_f, 0 );
setEffRotateKey( spep_5 + 56, up_f, 0 );
setEffAlphaKey( spep_5 + 0, up_f, 255 );
setEffAlphaKey( spep_5 + 56, up_f, 255 );

up_b = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0 ); --敵アップ・背景(ef_006)
setEffMoveKey( spep_5 + 0, up_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 56, up_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, up_b, -1.0, 1.0 );
setEffScaleKey( spep_5 + 56, up_b, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, up_b, 0 );
setEffRotateKey( spep_5 + 56, up_b, 0 );
setEffAlphaKey( spep_5 + 0, up_b, 255 );
setEffAlphaKey( spep_5 + 56, up_b, 255 );

-- ** 敵の動き ** --
--setDisp( spep_5 -3 + 3, 1, 1 );
setDisp( spep_5 -3 + 59, 1, 0 );
changeAnime( spep_5 -3 + 3, 1, 4 );

setMoveKey( spep_5 -3 + 3, 1, 7.1, 326.4 , 0 );
--setMoveKey( spep_5 -3 + 2, 1, -8.3, 325 , 0 );
setMoveKey( spep_5 -3 + 4, 1, 9.5, 323.2 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 8.1, 323.6 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 6.8, 323.6 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 5.5, 320.8 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 4.2, 317.6 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 5.4, 316.5 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 6.6, 315.1 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 4, 309.6 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 1.4, 303.7 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 6.3, 302.6 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 3.7, 303.4 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 13.3, 293.8 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 7.7, 294 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 0, 281.2 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 7.3, 283.2 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 2, 274.5 , 0 );
setMoveKey( spep_5 -3 + 36, 1, -5.4, 273 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 4.8, 275.6 , 0 );
setMoveKey( spep_5 -3 + 40, 1, -0.5, 262.1 , 0 );
setMoveKey( spep_5 -3 + 42, 1, -7.7, 248.9 , 0 );
setMoveKey( spep_5 -3 + 44, 1, -16.6, 253 , 0 );
setMoveKey( spep_5 -3 + 46, 1, -4.4, 235.5 , 0 );
setMoveKey( spep_5 -3 + 48, 1, -8.6, 231 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 2.8, 217.9 , 0 );
setMoveKey( spep_5 -3 + 52, 1, -0.4, 209.9 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 2, 190.9 , 0 );
setMoveKey( spep_5 -3 + 56, 1, -4.1, 177.7 , 0 );
setMoveKey( spep_5 -3 + 58, 1, -0.4, 173.9 , 0 );
setMoveKey( spep_5 -3 + 59, 1, -0.4, 173.9 , 0 );

setScaleKey( spep_5 -3 + 3, 1, 0.49, 0.49 );
--setScaleKey( spep_5 -3 + 2, 1, 0.49, 0.49 );
setScaleKey( spep_5 -3 + 4, 1, 0.5, 0.5 );
setScaleKey( spep_5 -3 + 6, 1, 0.52, 0.52 );
setScaleKey( spep_5 -3 + 8, 1, 0.54, 0.54 );
setScaleKey( spep_5 -3 + 10, 1, 0.57, 0.57 );
setScaleKey( spep_5 -3 + 12, 1, 0.6, 0.6 );
setScaleKey( spep_5 -3 + 14, 1, 0.64, 0.64 );
setScaleKey( spep_5 -3 + 16, 1, 0.69, 0.69 );
setScaleKey( spep_5 -3 + 18, 1, 0.74, 0.74 );
setScaleKey( spep_5 -3 + 20, 1, 0.8, 0.8 );
setScaleKey( spep_5 -3 + 22, 1, 0.86, 0.86 );
setScaleKey( spep_5 -3 + 24, 1, 0.93, 0.93 );
setScaleKey( spep_5 -3 + 26, 1, 1.01, 1.01 );
setScaleKey( spep_5 -3 + 28, 1, 1.09, 1.09 );
setScaleKey( spep_5 -3 + 30, 1, 1.18, 1.18 );
setScaleKey( spep_5 -3 + 32, 1, 1.27, 1.27 );
setScaleKey( spep_5 -3 + 34, 1, 1.37, 1.37 );
setScaleKey( spep_5 -3 + 36, 1, 1.48, 1.48 );
setScaleKey( spep_5 -3 + 38, 1, 1.59, 1.59 );
setScaleKey( spep_5 -3 + 40, 1, 1.71, 1.71 );
setScaleKey( spep_5 -3 + 42, 1, 1.84, 1.84 );
setScaleKey( spep_5 -3 + 44, 1, 1.97, 1.97 );
setScaleKey( spep_5 -3 + 46, 1, 2.11, 2.11 );
setScaleKey( spep_5 -3 + 48, 1, 2.25, 2.25 );
setScaleKey( spep_5 -3 + 50, 1, 2.4, 2.4 );
setScaleKey( spep_5 -3 + 52, 1, 2.56, 2.56 );
setScaleKey( spep_5 -3 + 54, 1, 2.72, 2.72 );
setScaleKey( spep_5 -3 + 56, 1, 2.89, 2.89 );
setScaleKey( spep_5 -3 + 58, 1, 3.06, 3.06 );
setScaleKey( spep_5 -3 + 59, 1, 3.06, 3.06 );

setRotateKey( spep_5 -3 + 3, 1, 0 );
setRotateKey( spep_5 -3 + 59, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 58, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
playSe( spep_5 + 0, 1021 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;

--------------------------------------
--ギャン
--------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_6 + 0, 190000, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, hit, 0, 0, 0 );
setEffMoveKey( spep_6 + 56, hit, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_6 + 56, hit, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit, 0 );
setEffRotateKey( spep_6 + 56, hit, 0 );
setEffAlphaKey( spep_6 + 0, hit, 255 );
setEffAlphaKey( spep_6 + 56, hit, 255 );

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep_6, 10006, 58, 0x100, -1, 8.8, 313 , 0);    -- ギャン

setEffMoveKey( spep_6 + 0, ctgyan, 8.8, 313 , 0 );
setEffMoveKey( spep_6 + 2, ctgyan, 9.1, 314.1 , 0 );
setEffMoveKey( spep_6 + 4, ctgyan, 9.4, 315.1 , 0 );
setEffMoveKey( spep_6 + 6, ctgyan, 9.7, 316.1 , 0 );
setEffMoveKey( spep_6 + 8, ctgyan, 10, 317.1 , 0 );
setEffMoveKey( spep_6 + 10, ctgyan, 10, 317.2 , 0 );
setEffMoveKey( spep_6 + 12, ctgyan, 10, 317.3 , 0 );
setEffMoveKey( spep_6 + 14, ctgyan, 10, 317.4 , 0 );
setEffMoveKey( spep_6 + 16, ctgyan, 10.1, 317.5 , 0 );
setEffMoveKey( spep_6 + 18, ctgyan, 10.1, 317.5 , 0 );
setEffMoveKey( spep_6 + 20, ctgyan, 10.1, 317.6 , 0 );
setEffMoveKey( spep_6 + 22, ctgyan, 10.1, 317.7 , 0 );
setEffMoveKey( spep_6 + 24, ctgyan, 10.2, 317.8 , 0 );
setEffMoveKey( spep_6 + 26, ctgyan, 10.2, 317.9 , 0 );
setEffMoveKey( spep_6 + 28, ctgyan, 10.2, 318 , 0 );
setEffMoveKey( spep_6 + 30, ctgyan, 10.2, 318 , 0 );
setEffMoveKey( spep_6 + 32, ctgyan, 10.3, 318.1 , 0 );
setEffMoveKey( spep_6 + 34, ctgyan, 10.3, 318.2 , 0 );
setEffMoveKey( spep_6 + 36, ctgyan, 10.3, 318.3 , 0 );
setEffMoveKey( spep_6 + 38, ctgyan, 10.3, 318.4 , 0 );
setEffMoveKey( spep_6 + 40, ctgyan, 10.4, 318.5 , 0 );
setEffMoveKey( spep_6 + 42, ctgyan, 10.4, 318.5 , 0 );
setEffMoveKey( spep_6 + 44, ctgyan, 10.4, 318.6 , 0 );
setEffMoveKey( spep_6 + 46, ctgyan, 10.4, 318.7 , 0 );
setEffMoveKey( spep_6 + 48, ctgyan, 10.5, 318.8 , 0 );
setEffMoveKey( spep_6 + 50, ctgyan, 10.5, 318.9 , 0 );
setEffMoveKey( spep_6 + 52, ctgyan, 10.5, 319 , 0 );
setEffMoveKey( spep_6 + 54, ctgyan, 10.5, 319 , 0 );
setEffMoveKey( spep_6 + 56, ctgyan, 10.5, 319.1 , 0 );

setEffScaleKey( spep_6 + 0, ctgyan, 2.11, 2.11 );
setEffScaleKey( spep_6 + 2, ctgyan, 2.47, 2.47 );
setEffScaleKey( spep_6 + 4, ctgyan, 2.82, 2.82 );
setEffScaleKey( spep_6 + 6, ctgyan, 3.18, 3.18 );
setEffScaleKey( spep_6 + 8, ctgyan, 3.53, 3.53 );
setEffScaleKey( spep_6 + 10, ctgyan, 3.56, 3.56 );
setEffScaleKey( spep_6 + 12, ctgyan, 3.6, 3.6 );
setEffScaleKey( spep_6 + 14, ctgyan, 3.6, 3.6 );
setEffScaleKey( spep_6 + 16, ctgyan, 3.63, 3.63 );
setEffScaleKey( spep_6 + 18, ctgyan, 3.67, 3.67 );
setEffScaleKey( spep_6 + 20, ctgyan, 3.7, 3.7 );
setEffScaleKey( spep_6 + 22, ctgyan, 3.74, 3.74 );
setEffScaleKey( spep_6 + 24, ctgyan, 3.74, 3.74 );
setEffScaleKey( spep_6 + 26, ctgyan, 3.77, 3.77 );
setEffScaleKey( spep_6 + 28, ctgyan, 3.81, 3.81 );
setEffScaleKey( spep_6 + 30, ctgyan, 3.85, 3.85 );
setEffScaleKey( spep_6 + 32, ctgyan, 3.88, 3.88 );
setEffScaleKey( spep_6 + 34, ctgyan, 3.88, 3.88 );
setEffScaleKey( spep_6 + 36, ctgyan, 3.92, 3.92 );
setEffScaleKey( spep_6 + 38, ctgyan, 3.95, 3.95 );
setEffScaleKey( spep_6 + 40, ctgyan, 3.99, 3.99 );
setEffScaleKey( spep_6 + 42, ctgyan, 4.02, 4.02 );
setEffScaleKey( spep_6 + 44, ctgyan, 4.02, 4.02 );
setEffScaleKey( spep_6 + 46, ctgyan, 4.06, 4.06 );
setEffScaleKey( spep_6 + 48, ctgyan, 4.09, 4.09 );
setEffScaleKey( spep_6 + 50, ctgyan, 4.13, 4.13 );
setEffScaleKey( spep_6 + 52, ctgyan, 4.13, 4.13 );
setEffScaleKey( spep_6 + 54, ctgyan, 4.16, 4.16 );
setEffScaleKey( spep_6 + 56, ctgyan, 4.2, 4.2 );

setEffAlphaKey( spep_6 + 0, ctgyan, 255);
setEffAlphaKey( spep_6 + 56, ctgyan, 0);

setEffRotateKey( spep_6 + 0, ctgyan, -5.2 );
setEffRotateKey( spep_6 + 56, ctgyan, -5.2 );

-- ** 白フェード ** --
entryFade( spep_6 + 16, 38, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 58, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
playSe( spep_6 + 4, 1023 );
setSeVolume( spep_6 + 4, 1023, 112 );
stopSe( spep_6 + 6, se_1213, 15 );
stopSe( spep_6 + 6, se_1211, 16 );
stopSe( spep_6 + 14, se_1124, 20 );

-- ** 次の準備 ** --
spep_7 = spep_6 + 56;

--------------------------------------
--爆発
--------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_7 + 0, SP_07, 0x80, -1, 0, 0, 0 ); --ef_007(爆発)
setEffMoveKey( spep_7 + 0, explosion, 0, 0, 0 );
setEffMoveKey( spep_7 + 180, explosion, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, explosion, -1.0, 1.0 );
setEffScaleKey( spep_7 + 180, explosion, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, explosion, 0 );
setEffRotateKey( spep_7 + 180, explosion, 0 );
setEffAlphaKey( spep_7 + 0, explosion, 255 );
setEffAlphaKey( spep_7 + 180, explosion, 255 );

-- ** 音 ** --
playSe( spep_7 + 16, 1159 );
setSeVolume( spep_7 + 16, 1159, 63 );
playSe( spep_7 + 16, 1024 );

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 15 );
endPhase( spep_7 + 160 );

end