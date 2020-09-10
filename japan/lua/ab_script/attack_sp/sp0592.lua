--1018310:フュー_起爆式・本気玉


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
SP_01 = 154320; --×斬り
SP_02 = 154321; --敵を包むエフェクト
SP_03 = 154322; --突き
SP_04 = 154324; --本気玉構え
SP_05 = 154325; --本気玉爆破
SP_06 = 154327; --敵裏側のエフェクト

--敵側
SP_03r = 154323; --突き
SP_05r = 154326; --本気玉爆破
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
-- ×斬り(148F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
xgiri = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); --x斬り(ef_001)
setEffMoveKey( spep_0 + 0, xgiri, 0, 0, 0 );
setEffMoveKey( spep_0 + 148, xgiri, 0, 0, 0 );

setEffScaleKey( spep_0 + 0, xgiri, 1.0, 1.0 );
setEffScaleKey( spep_0 + 148, xgiri, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, xgiri, 0 );
setEffRotateKey( spep_0 + 148, xgiri, 0 );

setEffAlphaKey( spep_0 + 0, xgiri, 255 );
setEffAlphaKey( spep_0 + 148, xgiri, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0, 906, 148, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 + 0, shuchusen1, 148, 20 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0, 0 );
setEffMoveKey( spep_0 + 148, shuchusen1, 0, 0, 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_0 + 148, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 148, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 148, shuchusen1, 255 );

-- ** 薄い黒フェード ** --
entryFadeBg( spep_0 + 0, 0, 148, 0, 0, 0, 0, 180 );  --white fade

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
se_0008 = playSe( spep_0 + 0, 08 );
se_1175 = playSe( spep_0 + 0, 1175 );
setSeVolume( spep_0 + 0, 1175, 0 );
--se_1128 = playSe( spep_0 + 8, 1128 );
--setSeVolume( spep_0 + 8, 1128, 0 );
playSe( spep_0 + 10, 1072 );
setSeVolume( spep_0 + 10, 1072, 0 );
stopSe( spep_0 +20, se_0008, 22 );
playSe( spep_0 + 40, 1003 );
setSeVolume( spep_0 + 44, 1072, 39 );
playSe( spep_0 + 58, 1003 );
playSe( spep_0 + 94, 1003 );
se_0009 = playSe( spep_0 + 94, 09);
stopSe( spep_0 + 122, se_0009, 22 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 130; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
--    stopSe( SP_dodge - 12, SE1, 0 );
--    stopSe( SP_dodge - 12, SE2, 0 );
    
    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    

 --敵の座標の固定
 setMoveKey( SP_dodge+10, 1, 265.6, -31.6 , 0 );
 setScaleKey( SP_dodge+10, 1, 0.79, 0.79 );
 setRotateKey( SP_dodge+10, 1, 0 );



    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 白フェード ** --
entryFade( spep_0 + 138, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 148;

--------------------------------------
--突き(54F)
--------------------------------------

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_1 + 0, 921, 55, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, ryusen1, 0, 0, 0 );
setEffMoveKey( spep_1 + 55, ryusen1, 0, 0, 0 );

setEffScaleKey( spep_1 + 0, ryusen1, 1.75, 1.75 );
setEffScaleKey( spep_1 + 55, ryusen1, 1.75, 1.75 );

setEffRotateKey( spep_1 + 0, ryusen1, -35.4 );
setEffRotateKey( spep_1 + 55, ryusen1, -35.4 );

setEffAlphaKey( spep_1 + 0, ryusen1, 200 );
setEffAlphaKey( spep_1 + 55, ryusen1, 200 );

 -- ** エフェクト等 ** --
enemyeffect = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); --敵を包むエフェクト(ef_002)
setEffMoveKey( spep_1 + 0, enemyeffect, 0, 0, 0 );
setEffMoveKey( spep_1 + 54, enemyeffect, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, enemyeffect, 1.0, 1.0 );
setEffScaleKey( spep_1 + 54, enemyeffect, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, enemyeffect, 0 );
setEffRotateKey( spep_1 + 54, enemyeffect, 0 );
setEffAlphaKey( spep_1 + 0, enemyeffect, 255 );
setEffAlphaKey( spep_1 + 54, enemyeffect, 255 );

tsuki = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); --突き(ef_003)
setEffMoveKey( spep_1 + 0, tsuki, 0, 0, 0 );
setEffMoveKey( spep_1 + 54, tsuki, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tsuki, 1.0, 1.0 );
setEffScaleKey( spep_1 + 54, tsuki, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tsuki, 0 );
setEffRotateKey( spep_1 + 54, tsuki, 0 );
setEffAlphaKey( spep_1 + 0, tsuki, 255 );
setEffAlphaKey( spep_1 + 54, tsuki, 255 );

-- ** 書き文字エントリー ** --
--[[ctDon = entryEffectLife( spep_1 -3 + 22, 10019, 30, 0x100, -1, 0, 52.7, 149.7 ); --ドンッ
setEffMoveKey( spep_1 -3 + 22, ctDon, 52.7, 149.7 , 0 );
setEffMoveKey( spep_1 -3 + 24, ctDon, 86.6, 178.6 , 0 );
setEffMoveKey( spep_1 -3 + 26, ctDon, 130.7, 201.7 , 0 );
setEffMoveKey( spep_1 -3 + 28, ctDon, 145.3, 210.4 , 0 );
setEffMoveKey( spep_1 -3 + 30, ctDon, 162, 205.6 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctDon, 166.4, 222.2 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctDon, 164.6, 235.1 , 0 );
setEffMoveKey( spep_1 -3 + 52, ctDon, 164.6, 235.1 , 0 );

setEffScaleKey( spep_1 -3 + 22, ctDon, 0.25, 0.25 );
setEffScaleKey( spep_1 -3 + 24, ctDon, 0.82, 0.82 );
setEffScaleKey( spep_1 -3 + 26, ctDon, 1.4, 1.4 );
setEffScaleKey( spep_1 -3 + 28, ctDon, 1.45, 1.45 );
setEffScaleKey( spep_1 -3 + 30, ctDon, 1.5, 1.5 );
setEffScaleKey( spep_1 -3 + 32, ctDon, 1.7, 1.7 );
setEffScaleKey( spep_1 -3 + 34, ctDon, 1.9, 1.9 );
setEffScaleKey( spep_1 -3 + 52, ctDon, 1.9, 1.9 );

setEffRotateKey( spep_1 -3 + 22, ctDon, 20 );
setEffRotateKey( spep_1 -3 + 52, ctDon, 20 );

setEffAlphaKey( spep_1 -3 + 22, ctDon, 255 );
setEffAlphaKey( spep_1 -3 + 30, ctDon, 255 );
setEffAlphaKey( spep_1 -3 + 32, ctDon, 128 );
setEffAlphaKey( spep_1 -3 + 34, ctDon, 0 );
setEffAlphaKey( spep_1 -3 + 52, ctDon, 0 );]]

-- ** 敵の動き ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 59, 1, 0 );
changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1 -3 + 12, 1, 106 );

setMoveKey( spep_1 + 0, 1, 204.6, 259.2 , 0 );
setMoveKey( spep_1 -3 + 11, 1, 204.6, 259.2 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 212.9, 309.5 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 199.5, 288.8 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 157.6, 286.5 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 199.7, 259.2 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 172.8, 281.3 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 185, 277.7 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 190.9, 262 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 180.1, 276.8 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 186.5, 262.4 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 181.3, 265 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 185, 272.5 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 185, 263.8 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 185, 269.3 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 185, 263 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 185, 271.3 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 185, 263.6 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 185, 268.7 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 185, 271.7 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 185, 265.8 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 185, 271.6 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 185, 267.3 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 185, 269.1 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 185.1, 269.1 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 185.1, 269.1 , 0 );

setScaleKey( spep_1 + 0, 1, 1.1, 1.1 );
setScaleKey( spep_1 -3 + 11, 1, 1.1, 1.1 );
setScaleKey( spep_1 -3 + 12, 1, 1.21, 1.21 );
setScaleKey( spep_1 -3 + 14, 1, 1.13, 1.13 );
setScaleKey( spep_1 -3 + 16, 1, 1.05, 1.05 );
setScaleKey( spep_1 -3 + 54, 1, 1.05, 1.05 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 11, 1, 0 );
setRotateKey( spep_1 -3 + 12, 1, -46.7 );
setRotateKey( spep_1 -3 + 54, 1, -46.7 );

-- ** 薄い黒フェード ** --
entryFadeBg( spep_1 + 0, 0, 56, 0, 0, 0, 0, 180 );  --white fade

-- ** 音 ** --
setSeVolume( spep_1 + 14, 1175, 56 );
--setSeVolume( spep_1 + 14, 1128, 63 );
se_0033 = playSe( spep_1 + 14, 33 );
setSeVolume( spep_1 + 14, 33, 63 );
playSe( spep_1 + 20, 17 );
setSeVolume( spep_1 + 20, 17, 0 );
setSeVolume( spep_1 + 42, 17, 5.6 );
setSeVolume( spep_1 + 44, 17, 11.2 );
setSeVolume( spep_1 + 46, 17, 16.8 );
setSeVolume( spep_1 + 48, 17, 22.4 );
setSeVolume( spep_1 + 50, 17, 28 );
setSeVolume( spep_1 + 52, 17, 33.6 );
setSeVolume( spep_1 + 54, 17, 39.2 );
stopSe( spep_1 + 54, se_1175, 44 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 56;


------------------------------------------------------
-- 本気玉構え
------------------------------------------------------

-- ** エフェクト等 ** --
kamae = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); --本気玉構え(ef_004)
setEffMoveKey( spep_2 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_2 + 118, kamae, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_2 + 118, kamae, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kamae, 0 );
setEffRotateKey( spep_2 + 118, kamae, 0 );
setEffAlphaKey( spep_2 + 0, kamae, 255 );
setEffAlphaKey( spep_2 + 118, kamae, 255 );

spep_x = spep_2 + 16;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 0, 906, 108, 0x80, -1, 0, 0, 0 );
setEffShake( spep_2 + 0, shuchusen2, 108, 20 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0, 0 );
setEffMoveKey( spep_2 + 108, shuchusen2, 0, 0, 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 108, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 108, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 108, shuchusen2, 255 );

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -170, 520 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -170, 520, 0 );
setEffMoveKey( spep_x + 84, ctgogo, -170, 520, 0 );

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

-- ** 薄い黒フェード ** --
entryFadeBg( spep_2 + 0, 0, 118, 0, 0, 0, 0, 180 );  --white fade

-- ** 白フェード ** --
entryFade( spep_2 + 108, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
setSeVolume( spep_2 + 0, 17, 44.8 );
stopSe( spep_2 + 2, se_0033, 0 );
setSeVolume( spep_2 + 2, 17, 50.4 );
setSeVolume( spep_2 + 4, 17, 56 );
playSe( spep_2 + 24, 1018 );
playSe( spep_2 + 38, 1020 );
setSeVolume( spep_2 + 38, 1020, 70 );
stopSe( spep_2 + 46, se_1128, 0 );
playSe( spep_2 + 68, 1020 );
setSeVolume( spep_2 + 68, 1020, 70 );
playSe( spep_2 + 98, 1020 );
setSeVolume( spep_2 + 98, 1020, 70 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 118;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0, 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0, 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 8, 1035 );
--stopSe( spep_3 + 10, se_1020, 0 );

-- ** 次の準備 ** --
entryFade( spep_3 + 82, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_4 = spep_3 + 94;

------------------------------------------------------
-- 本気玉爆破
------------------------------------------------------

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_4 + 0, 921, 134, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, ryusen2, 0, 0, 0 );
setEffMoveKey( spep_4 + 134, ryusen2, 0, 0, 0 );

setEffScaleKey( spep_4 + 0, ryusen2, 1.75, 1.75 );
setEffScaleKey( spep_4 + 134, ryusen2, 1.75, 1.75 );

setEffRotateKey( spep_4 + 0, ryusen2, -35.4 );
setEffRotateKey( spep_4 + 134, ryusen2, -35.4 );

setEffAlphaKey( spep_4 + 0, ryusen2, 200 );
setEffAlphaKey( spep_4 + 134, ryusen2, 200 );

-- ** エフェクト等 ** --
bakuha = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); --本気玉爆破(ef_005)
setEffMoveKey( spep_4 + 0, bakuha, 0, 0 , 0 );
setEffMoveKey( spep_4 + 138, bakuha, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, bakuha, 1.0, 1.0 );
setEffScaleKey( spep_4 + 138, bakuha, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, bakuha, 0 );
setEffRotateKey( spep_4 + 138, bakuha, 0 );
setEffAlphaKey( spep_4 + 0, bakuha, 255 );
setEffAlphaKey( spep_4 + 138, bakuha, 255 );

enemyeffect1 = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); --敵裏側のエフェクト(ef_006)
setEffMoveKey( spep_4 + 0, enemyeffect1, 0, 0 , 0 );
setEffMoveKey( spep_4 + 138, enemyeffect1, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, enemyeffect1, 1.0, 1.0 );
setEffScaleKey( spep_4 + 138, enemyeffect1, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, enemyeffect1, 0 );
setEffRotateKey( spep_4 + 138, enemyeffect1, 0 );
setEffAlphaKey( spep_4 + 0, enemyeffect1, 255 );
setEffAlphaKey( spep_4 + 138, enemyeffect1, 255 );

-- ** 敵の動き ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 32, 1, 0 );
changeAnime( spep_4 + 0, 1, 106 );

--setMoveKey( spep_4 -3 + 0, 1, 184, 182.3 , 0 );
setMoveKey( spep_4 -3 + 3, 1, 183.9, 182.3 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 183.8, 182.3 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 183.8, 182.3 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 183.7, 182.3 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 251, 291 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 234.1, 194.2 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 203, 217.2 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 188.5, 218.9 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 197.5, 164 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 190.7, 204.9 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 194.7, 180.9 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 187.7, 182.9 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 184.8, 197.5 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 192, 181.4 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 182.8, 188.3 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 184.7, 185.3 , 0 );

setScaleKey( spep_4 + 0, 1, 1.05, 1.05 );
setScaleKey( spep_4 -3 + 8, 1, 1.05, 1.05 );
setScaleKey( spep_4 -3 + 10, 1, 1.36, 1.36 );
setScaleKey( spep_4 -3 + 12, 1, 1.23, 1.23 );
setScaleKey( spep_4 -3 + 14, 1, 1.1, 1.1 );
setScaleKey( spep_4 -3 + 16, 1, 1.09, 1.09 );
setScaleKey( spep_4 -3 + 18, 1, 1.09, 1.09 );
setScaleKey( spep_4 -3 + 20, 1, 1.08, 1.08 );
setScaleKey( spep_4 -3 + 22, 1, 1.08, 1.08 );
setScaleKey( spep_4 -3 + 24, 1, 1.07, 1.07 );
setScaleKey( spep_4 -3 + 26, 1, 1.07, 1.07 );
setScaleKey( spep_4 -3 + 28, 1, 1.06, 1.06 );
setScaleKey( spep_4 -3 + 30, 1, 1.05, 1.05 );
setScaleKey( spep_4 -3 + 32, 1, 1.05, 1.05 );

setRotateKey( spep_4 + 0, 1, -46.7 );
setRotateKey( spep_4 -3 + 32, 1, -46.7 );

-- ** 薄い黒フェード ** --
entryFadeBg( spep_4 + 0, 0, 138, 0, 0, 0, 0, 180 );  --white fade

-- ** 音 ** --
playSe( spep_4 + 12, 1003 );
se_1133 = playSe( spep_4 + 32, 1133 );
setSeVolume( spep_4 + 32, 1133, 20 );
playSe( spep_4 + 32, 1011 );
stopSe( spep_4 + 46, se_1133, 26 );

-- ** ダメージ表示 ** --
dealDamage(spep_4 + 36 );
endPhase( spep_4 + 136 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- ×斬り(148F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
xgiri = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); --x斬り(ef_001)
setEffMoveKey( spep_0 + 0, xgiri, 0, 0, 0 );
setEffMoveKey( spep_0 + 148, xgiri, 0, 0, 0 );

setEffScaleKey( spep_0 + 0, xgiri, -1.0, 1.0 );
setEffScaleKey( spep_0 + 148, xgiri, -1.0, 1.0 );

setEffRotateKey( spep_0 + 0, xgiri, 0 );
setEffRotateKey( spep_0 + 148, xgiri, 0 );

setEffAlphaKey( spep_0 + 0, xgiri, 255 );
setEffAlphaKey( spep_0 + 148, xgiri, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0, 906, 148, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 + 0, shuchusen1, 148, 20 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0, 0 );
setEffMoveKey( spep_0 + 148, shuchusen1, 0, 0, 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_0 + 148, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 148, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 148, shuchusen1, 255 );

-- ** 薄い黒フェード ** --
entryFadeBg( spep_0 + 0, 0, 148, 0, 0, 0, 0, 180 );  --white fade

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
se_0008 = playSe( spep_0 + 0, 08 );
se_1175 = playSe( spep_0 + 0, 1175 );
setSeVolume( spep_0 + 0, 1175, 0 );
--se_1128 = playSe( spep_0 + 8, 1128 );
--setSeVolume( spep_0 + 8, 1128, 0 );
playSe( spep_0 + 10, 1072 );
setSeVolume( spep_0 + 10, 1072, 0 );
stopSe( spep_0 +20, se_0008, 22 );
playSe( spep_0 + 40, 1003 );
setSeVolume( spep_0 + 44, 1072, 39 );
playSe( spep_0 + 58, 1003 );
playSe( spep_0 + 94, 1003 );
se_0009 = playSe( spep_0 + 94, 09);
stopSe( spep_0 + 122, se_0009, 22 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 130; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
--    stopSe( SP_dodge - 12, SE1, 0 );
--    stopSe( SP_dodge - 12, SE2, 0 );
    
    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    

 --敵の座標の固定
 setMoveKey( SP_dodge+10, 1, 265.6, -31.6 , 0 );
 setScaleKey( SP_dodge+10, 1, 0.79, 0.79 );
 setRotateKey( SP_dodge+10, 1, 0 );



    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 白フェード ** --
entryFade( spep_0 + 138, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 148;

--------------------------------------
--突き(54F)
--------------------------------------

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_1 + 0, 921, 55, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, ryusen1, 0, 0, 0 );
setEffMoveKey( spep_1 + 55, ryusen1, 0, 0, 0 );

setEffScaleKey( spep_1 + 0, ryusen1, 1.75, 1.75 );
setEffScaleKey( spep_1 + 55, ryusen1, 1.75, 1.75 );

setEffRotateKey( spep_1 + 0, ryusen1, -35.4 );
setEffRotateKey( spep_1 + 55, ryusen1, -35.4 );

setEffAlphaKey( spep_1 + 0, ryusen1, 200 );
setEffAlphaKey( spep_1 + 55, ryusen1, 200 );

 -- ** エフェクト等 ** --
enemyeffect = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); --敵を包むエフェクト(ef_002)
setEffMoveKey( spep_1 + 0, enemyeffect, 0, 0, 0 );
setEffMoveKey( spep_1 + 54, enemyeffect, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, enemyeffect, 1.0, 1.0 );
setEffScaleKey( spep_1 + 54, enemyeffect, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, enemyeffect, 0 );
setEffRotateKey( spep_1 + 54, enemyeffect, 0 );
setEffAlphaKey( spep_1 + 0, enemyeffect, 255 );
setEffAlphaKey( spep_1 + 54, enemyeffect, 255 );

tsuki = entryEffect( spep_1 + 0, SP_03r, 0x80, -1, 0, 0, 0 ); --突き(ef_003r)
setEffMoveKey( spep_1 + 0, tsuki, 0, 0, 0 );
setEffMoveKey( spep_1 + 54, tsuki, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tsuki, 1.0, 1.0 );
setEffScaleKey( spep_1 + 54, tsuki, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tsuki, 0 );
setEffRotateKey( spep_1 + 54, tsuki, 0 );
setEffAlphaKey( spep_1 + 0, tsuki, 255 );
setEffAlphaKey( spep_1 + 54, tsuki, 255 );

-- ** 書き文字エントリー ** --
--[[ctDon = entryEffectLife( spep_1 -3 + 22, 10019, 30, 0x100, -1, 0, 52.7, 149.7 ); --ドンッ
setEffMoveKey( spep_1 -3 + 22, ctDon, 52.7, 149.7 , 0 );
setEffMoveKey( spep_1 -3 + 24, ctDon, 86.6, 178.6 , 0 );
setEffMoveKey( spep_1 -3 + 26, ctDon, 130.7, 201.7 , 0 );
setEffMoveKey( spep_1 -3 + 28, ctDon, 145.3, 210.4 , 0 );
setEffMoveKey( spep_1 -3 + 30, ctDon, 162, 205.6 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctDon, 166.4, 222.2 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctDon, 164.6, 235.1 , 0 );
setEffMoveKey( spep_1 -3 + 52, ctDon, 164.6, 235.1 , 0 );

setEffScaleKey( spep_1 -3 + 22, ctDon, 0.25, 0.25 );
setEffScaleKey( spep_1 -3 + 24, ctDon, 0.82, 0.82 );
setEffScaleKey( spep_1 -3 + 26, ctDon, 1.4, 1.4 );
setEffScaleKey( spep_1 -3 + 28, ctDon, 1.45, 1.45 );
setEffScaleKey( spep_1 -3 + 30, ctDon, 1.5, 1.5 );
setEffScaleKey( spep_1 -3 + 32, ctDon, 1.7, 1.7 );
setEffScaleKey( spep_1 -3 + 34, ctDon, 1.9, 1.9 );
setEffScaleKey( spep_1 -3 + 52, ctDon, 1.9, 1.9 );

setEffRotateKey( spep_1 -3 + 22, ctDon, 20 );
setEffRotateKey( spep_1 -3 + 52, ctDon, 20 );

setEffAlphaKey( spep_1 -3 + 22, ctDon, 255 );
setEffAlphaKey( spep_1 -3 + 30, ctDon, 255 );
setEffAlphaKey( spep_1 -3 + 32, ctDon, 128 );
setEffAlphaKey( spep_1 -3 + 34, ctDon, 0 );
setEffAlphaKey( spep_1 -3 + 52, ctDon, 0 );]]

-- ** 敵の動き ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 59, 1, 0 );
changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1 -3 + 12, 1, 106 );

setMoveKey( spep_1 + 0, 1, 204.6, 259.2 , 0 );
setMoveKey( spep_1 -3 + 11, 1, 204.6, 259.2 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 212.9, 309.5 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 199.5, 288.8 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 157.6, 286.5 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 199.7, 259.2 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 172.8, 281.3 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 185, 277.7 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 190.9, 262 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 180.1, 276.8 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 186.5, 262.4 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 181.3, 265 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 185, 272.5 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 185, 263.8 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 185, 269.3 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 185, 263 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 185, 271.3 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 185, 263.6 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 185, 268.7 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 185, 271.7 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 185, 265.8 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 185, 271.6 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 185, 267.3 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 185, 269.1 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 185.1, 269.1 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 185.1, 269.1 , 0 );

setScaleKey( spep_1 + 0, 1, 1.1, 1.1 );
setScaleKey( spep_1 -3 + 11, 1, 1.1, 1.1 );
setScaleKey( spep_1 -3 + 12, 1, 1.21, 1.21 );
setScaleKey( spep_1 -3 + 14, 1, 1.13, 1.13 );
setScaleKey( spep_1 -3 + 16, 1, 1.05, 1.05 );
setScaleKey( spep_1 -3 + 54, 1, 1.05, 1.05 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 11, 1, 0 );
setRotateKey( spep_1 -3 + 12, 1, -46.7 );
setRotateKey( spep_1 -3 + 54, 1, -46.7 );

-- ** 薄い黒フェード ** --
entryFadeBg( spep_1 + 0, 0, 56, 0, 0, 0, 0, 180 );  --white fade

-- ** 音 ** --
setSeVolume( spep_1 + 14, 1175, 56 );
--setSeVolume( spep_1 + 14, 1128, 63 );
se_0033 = playSe( spep_1 + 14, 33 );
setSeVolume( spep_1 + 14, 33, 63 );
playSe( spep_1 + 20, 17 );
setSeVolume( spep_1 + 20, 17, 0 );
setSeVolume( spep_1 + 42, 17, 5.6 );
setSeVolume( spep_1 + 44, 17, 11.2 );
setSeVolume( spep_1 + 46, 17, 16.8 );
setSeVolume( spep_1 + 48, 17, 22.4 );
setSeVolume( spep_1 + 50, 17, 28 );
setSeVolume( spep_1 + 52, 17, 33.6 );
setSeVolume( spep_1 + 54, 17, 39.2 );
stopSe( spep_1 + 54, se_1175, 44 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 56;


------------------------------------------------------
-- 本気玉構え
------------------------------------------------------

-- ** エフェクト等 ** --
kamae = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); --本気玉構え(ef_004)
setEffMoveKey( spep_2 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_2 + 118, kamae, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kamae, -1.0, 1.0 );
setEffScaleKey( spep_2 + 118, kamae, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kamae, 0 );
setEffRotateKey( spep_2 + 118, kamae, 0 );
setEffAlphaKey( spep_2 + 0, kamae, 255 );
setEffAlphaKey( spep_2 + 118, kamae, 255 );

spep_x = spep_2 + 16;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 0, 906, 108, 0x80, -1, 0, 0, 0 );
setEffShake( spep_2 + 0, shuchusen2, 108, 20 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0, 0 );
setEffMoveKey( spep_2 + 108, shuchusen2, 0, 0, 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 108, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 108, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 108, shuchusen2, 255 );

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 120, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -120, 515.5, 0 );
setEffMoveKey( spep_x + 84, ctgogo, -120, 515.5, 0 );

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

-- ** 薄い黒フェード ** --
entryFadeBg( spep_2 + 0, 0, 118, 0, 0, 0, 0, 180 );  --white fade

-- ** 白フェード ** --
entryFade( spep_2 + 108, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
setSeVolume( spep_2 + 0, 17, 44.8 );
stopSe( spep_2 + 2, se_0033, 0 );
setSeVolume( spep_2 + 2, 17, 50.4 );
setSeVolume( spep_2 + 4, 17, 56 );
playSe( spep_2 + 24, 1018 );
playSe( spep_2 + 38, 1020 );
setSeVolume( spep_2 + 38, 1020, 70 );
stopSe( spep_2 + 46, se_1128, 0 );
playSe( spep_2 + 68, 1020 );
setSeVolume( spep_2 + 68, 1020, 70 );
playSe( spep_2 + 98, 1020 );
setSeVolume( spep_2 + 98, 1020, 70 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 118;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0, 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0, 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 8, 1035 );
--stopSe( spep_3 + 10, se_1020, 0 );

-- ** 次の準備 ** --
entryFade( spep_3 + 82, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_4 = spep_3 + 94;

------------------------------------------------------
-- 本気玉爆破
------------------------------------------------------

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_4 + 0, 921, 134, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, ryusen2, 0, 0, 0 );
setEffMoveKey( spep_4 + 134, ryusen2, 0, 0, 0 );

setEffScaleKey( spep_4 + 0, ryusen2, 1.75, 1.75 );
setEffScaleKey( spep_4 + 134, ryusen2, 1.75, 1.75 );

setEffRotateKey( spep_4 + 0, ryusen2, -35.4 );
setEffRotateKey( spep_4 + 134, ryusen2, -35.4 );

setEffAlphaKey( spep_4 + 0, ryusen2, 200 );
setEffAlphaKey( spep_4 + 134, ryusen2, 200 );

-- ** エフェクト等 ** --
bakuha = entryEffect( spep_4 + 0, SP_05r, 0x100, -1, 0, 0, 0 ); --本気玉爆破(ef_005r)
setEffMoveKey( spep_4 + 0, bakuha, 0, 0 , 0 );
setEffMoveKey( spep_4 + 138, bakuha, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, bakuha, 1.0, 1.0 );
setEffScaleKey( spep_4 + 138, bakuha, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, bakuha, 0 );
setEffRotateKey( spep_4 + 138, bakuha, 0 );
setEffAlphaKey( spep_4 + 0, bakuha, 255 );
setEffAlphaKey( spep_4 + 138, bakuha, 255 );

enemyeffect1 = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); --敵裏側のエフェクト(ef_006)
setEffMoveKey( spep_4 + 0, enemyeffect1, 0, 0 , 0 );
setEffMoveKey( spep_4 + 138, enemyeffect1, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, enemyeffect1, 1.0, 1.0 );
setEffScaleKey( spep_4 + 138, enemyeffect1, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, enemyeffect1, 0 );
setEffRotateKey( spep_4 + 138, enemyeffect1, 0 );
setEffAlphaKey( spep_4 + 0, enemyeffect1, 255 );
setEffAlphaKey( spep_4 + 138, enemyeffect1, 255 );

-- ** 敵の動き ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 32, 1, 0 );
changeAnime( spep_4 + 0, 1, 106 );

--setMoveKey( spep_4 -3 + 0, 1, 184, 182.3 , 0 );
setMoveKey( spep_4 -3 + 3, 1, 183.9, 182.3 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 183.8, 182.3 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 183.8, 182.3 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 183.7, 182.3 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 251, 291 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 234.1, 194.2 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 203, 217.2 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 188.5, 218.9 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 197.5, 164 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 190.7, 204.9 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 194.7, 180.9 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 187.7, 182.9 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 184.8, 197.5 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 192, 181.4 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 182.8, 188.3 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 184.7, 185.3 , 0 );

setScaleKey( spep_4 + 0, 1, 1.05, 1.05 );
setScaleKey( spep_4 -3 + 8, 1, 1.05, 1.05 );
setScaleKey( spep_4 -3 + 10, 1, 1.36, 1.36 );
setScaleKey( spep_4 -3 + 12, 1, 1.23, 1.23 );
setScaleKey( spep_4 -3 + 14, 1, 1.1, 1.1 );
setScaleKey( spep_4 -3 + 16, 1, 1.09, 1.09 );
setScaleKey( spep_4 -3 + 18, 1, 1.09, 1.09 );
setScaleKey( spep_4 -3 + 20, 1, 1.08, 1.08 );
setScaleKey( spep_4 -3 + 22, 1, 1.08, 1.08 );
setScaleKey( spep_4 -3 + 24, 1, 1.07, 1.07 );
setScaleKey( spep_4 -3 + 26, 1, 1.07, 1.07 );
setScaleKey( spep_4 -3 + 28, 1, 1.06, 1.06 );
setScaleKey( spep_4 -3 + 30, 1, 1.05, 1.05 );
setScaleKey( spep_4 -3 + 32, 1, 1.05, 1.05 );

setRotateKey( spep_4 + 0, 1, -46.7 );
setRotateKey( spep_4 -3 + 32, 1, -46.7 );

-- ** 薄い黒フェード ** --
entryFadeBg( spep_4 + 0, 0, 138, 0, 0, 0, 0, 180 );  --white fade

-- ** 音 ** --
playSe( spep_4 + 12, 1003 );
se_1133 = playSe( spep_4 + 32, 1133 );
setSeVolume( spep_4 + 32, 1133, 20 );
playSe( spep_4 + 32, 1011 );
stopSe( spep_4 + 46, se_1133, 26 );

-- ** ダメージ表示 ** --
dealDamage(spep_4 + 36 );
endPhase( spep_4 + 136 );

end