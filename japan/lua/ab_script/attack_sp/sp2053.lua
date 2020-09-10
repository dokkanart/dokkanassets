--1017700:六星龍(乙姫)_旋風回転刃(ドッカン覚醒)
--sp_effect_a9_00067

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;


--***SE***
SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
--SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--味方
SP_01 = 155730  ;--構え             ef_001
SP_02 = 155731  ;--技発射01         ef_002
SP_03 = 155732  ;--必殺技ヒット01    ef_004_bg
SP_04 = 155733  ;--必殺技ヒット02    ef_004_ef_un
SP_05 = 155734  ;--必殺技ヒット03    ef_004_ef_up
SP_06 = 155735  ;--技発射02         ef_005_c
SP_07 = 155736  ;--必殺技ヒット04    ef_006_bg
SP_08 = 155737  ;--必殺技ヒット05    ef_006_ef_un
SP_09 = 155738  ;--必殺技ヒット06    ef_006_ef_up
SP_10 = 155739  ;--フィニッシュ　背景   ef_007

--敵方
SP_01r = 155845  ;--構え（敵側用） ef_001_r
SP_02r = 155846  ;--技発射01（敵側用）  ef_002_r
SP_06r = 155801  ;--技発射02（敵側用）  ef_005_r


-- 全体攻撃
SP_00=152974;--突風(逆回転)　全体攻撃用
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI(0, 0);

changeAnime( 0, 0, 1);                       -- 立ち
changeAnime( 0, 1, 101);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);


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
setScaleKey(   1,   1, 0.39, 0.39);
setScaleKey(   2,   1, 0.39, 0.39);
setScaleKey(   3,   1, 0.39, 0.39);
setScaleKey(   4,   1, 0.39, 0.39);
setScaleKey(   5,   1, 0.39, 0.39);
setScaleKey(   6,   1, 0.39, 0.39);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
--  待機(126F)
------------------------------------------------------
spep_0=0;

-- ** エフェクト等 ** --
taiki = entryEffectLife( spep_0 + 0, SP_01, 126, 0x80, -1, 0, 0, 0 );  --構え(ef_001)
setEffMoveKey( spep_0 + 0, taiki, 0, 0 , 0 );
setEffMoveKey( spep_0 + 126, taiki, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, taiki, 1.1, 1.1 );
setEffScaleKey( spep_0 + 126, taiki, 1.1, 1.1 );
setEffAlphaKey( spep_0 + 0, taiki, 255 );
setEffAlphaKey( spep_0 + 126, taiki, 255 );
setEffRotateKey( spep_0 + 0, taiki, 0 );
setEffRotateKey( spep_0 + 126, taiki, 0 );

-- ** 顔カットイン ** --
spep_x = spep_0 + 42;
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 126, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_0 + 121, 4, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


--SE
--入り
playSe( spep_0 + 0, 8 );
setSeVolume( spep_0 + 0, 8, 68 );

--顔カットイン
playSe( spep_0 + 40, 1018 );

--次の準備
spep_1 = spep_0 + 126;


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
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
--  技発射01(43)
------------------------------------------------------
-- ** エフェクト等 (前)
kaze = entryEffectLife( spep_2 + 0, SP_02, 43, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, kaze, 0, 0 , 0 );
setEffMoveKey( spep_2 + 43, kaze, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kaze, 1.1, 1.1 );
setEffScaleKey( spep_2 + 43, kaze, 1.1, 1.1 );
setEffAlphaKey( spep_2 + 0, kaze, 255 );
setEffAlphaKey( spep_2 + 43, kaze, 255 );
setEffRotateKey( spep_2 + 0, kaze, 0 );
setEffRotateKey( spep_2 + 43, kaze, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_2 + 0,  906, 42, 0x100, -1, 0, 0, 0 );

setEffShake( spep_2 + 0, shuchusen1, 42, 25 );

setEffMoveKey( spep_2 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 30, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 31, shuchusen1, -100, 0 , 0 );
setEffMoveKey( spep_2 + 33, shuchusen1, -180, 0 , 0 );
setEffMoveKey( spep_2 + 35, shuchusen1, -210, 0 , 0 );
setEffMoveKey( spep_2 + 37, shuchusen1, -260, 0 , 0 );
setEffMoveKey( spep_2 + 39, shuchusen1, -600, 0 , 0 );
setEffMoveKey( spep_2 + 42, shuchusen1, -700, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_2 + 30, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_2 + 31, shuchusen1, 1.4, 1.22 );
setEffScaleKey( spep_2 + 33, shuchusen1, 1.8, 1.24 );
setEffScaleKey( spep_2 + 35, shuchusen1, 2.4, 1.26 );
setEffScaleKey( spep_2 + 37, shuchusen1, 2.6, 1.28 );
setEffScaleKey( spep_2 + 39, shuchusen1, 2.8, 1.30 );
setEffScaleKey( spep_2 + 42, shuchusen1, 3.0, 1.30 );

setEffRotateKey( spep_2 + 0, shuchusen1, 0 );
setEffRotateKey( spep_2 + 42, shuchusen1, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_2 + 26, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 42, shuchusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 44, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_2+0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--SE
--竜巻起こす1
SE00 = playSe( spep_1 + 88, 1072 );
setSeVolume( spep_1 + 88, 1072, 0 );
setSeVolume( spep_1 + 91, 1072, 17 );
setSeVolume( spep_1 + 94, 1072, 36 );
setSeVolume( spep_1 + 97, 1072, 58 );
setSeVolume( spep_1 + 100, 1072, 74 );
setSeVolume( spep_1 + 103, 1072, 88 );
setSeVolume( spep_1 + 106, 1072, 100 );

--竜巻起こす2
SE01 = playSe( spep_2 + 0, 1167 );
setSeVolume( spep_2 + 0, 1167, 38 );
setSeVolume( spep_2 + 28, 1167, 38 );
setSeVolume( spep_2 + 31, 1167, 26 );
setSeVolume( spep_2 + 34, 1167, 21 );
setSeVolume( spep_2 + 37, 1167, 15 );
setSeVolume( spep_2 + 41, 1167, 7 );
setSeVolume( spep_2 + 43, 1167, 0 );
stopSe( spep_2 + 43, SE01, 0 );

--竜巻発射1
SE02 = playSe( spep_2 + 36, 1027 );

--竜巻発射2
SE03 = playSe( spep_2 + 36, 8 );

--竜巻発射3
SE04 = playSe( spep_2 + 40, 1018 );

--次の準備
spep_3 = spep_2 + 43;


------------------------------------------------------
-- 必殺技ヒット01~03(80F)
------------------------------------------------------
-- ** エフェクト等 (後)
bg = entryEffectLife( spep_3 + 0, SP_03, 80, 0x80, -1, 0, 0, 0 );  --必殺技ヒット01(ef_004_bg)

setEffMoveKey( spep_3 + 0, bg, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, bg, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, bg, 1.1, 1.1 );
setEffScaleKey( spep_3 + 80, bg, 1.1, 1.1 );
setEffAlphaKey( spep_3 + 0, bg, 255 );
setEffAlphaKey( spep_3 + 80, bg, 255 );
setEffRotateKey( spep_3 + 0, bg, 0 );
setEffRotateKey( spep_3 + 80, bg, 0 );

-- ** エフェクト等 (後)
hit_b = entryEffectLife( spep_3 + 0, SP_04, 80, 0x80, -1, 0, 0, 0 );  --必殺技ヒット02(ef_004_ef_un)

setEffMoveKey( spep_3 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.1, 1.1 );
setEffScaleKey( spep_3 + 80, hit_b, 1.1, 1.1 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 80, hit_b, 255 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 80, hit_b, 0 );

--流線
ryusen1 = entryEffectLife( spep_3 + 0,  913, 58, 0x80, -1, 0, -110.7, -119.9 );

setEffMoveKey( spep_3 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 58, ryusen1, 0, 0, 0 );

setEffScaleKey( spep_3 + 0, ryusen1, 1.58, 1.13 );
setEffScaleKey( spep_3 + 58, ryusen1, 1.58, 1.13 );

setEffRotateKey( spep_3 + 0, ryusen1, 34.7 );
setEffRotateKey( spep_3 + 58, ryusen1, 34.7 );

setEffAlphaKey( spep_3 + 0, ryusen1, 150 );
setEffAlphaKey( spep_3 + 58, ryusen1, 150 );

--集中線
shuchusem2 = entryEffectLife( spep_3 + 58,  906, 20, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 58, shuchusem2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 78, shuchusem2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 58, shuchusem2, 1, 1 );
setEffScaleKey( spep_3 + 78, shuchusem2, 1, 1 );

setEffRotateKey( spep_3 + 58, shuchusem2, 0 );
setEffRotateKey( spep_3 + 78, shuchusem2, 0 );

setEffAlphaKey( spep_3 + 58, shuchusem2, 128 );
setEffAlphaKey( spep_3 + 60, shuchusem2, 255 );
setEffAlphaKey( spep_3 + 78, shuchusem2, 255 );

-- ** エフェクト等 (前)
hit_f = entryEffectLife( spep_3 + 0, SP_05, 80, 0x100, -1, 0, 0, 0 );  --必殺技ヒット03(ef_004_ef_up)

setEffMoveKey( spep_3 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.1, 1.1 );
setEffScaleKey( spep_3 + 80, hit_f, 1.1, 1.1 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 80, hit_f, 255 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 80, hit_f, 0 );

--敵の動き
setDisp( spep_3  + 0, 1, 1 );


changeAnime( spep_3  + 0, 1, 100 );
changeAnime( spep_3 -3 + 46, 1, 108 );
changeAnime( spep_3 -3 + 60, 1, 106 );

setMoveKey( spep_3  + 0, 1, 136, -116 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, 135.9, -118 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 135.9, -115.9 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 135.7, -117.6 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 135.3, -115.1 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 134.6, -116.2 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 133.6, -112.9 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 132.2, -113.1 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 130.4, -108.7 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 128, -107.6 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 125.1, -101.7 , 0 );

setScaleKey( spep_3  + 0, 1, 0.46, 0.46 );
setScaleKey( spep_3 -3 + 6, 1, 0.46, 0.46 );
setScaleKey( spep_3 -3 + 8, 1, 0.47, 0.47 );
setScaleKey( spep_3 -3 + 10, 1, 0.47, 0.47 );
setScaleKey( spep_3 -3 + 12, 1, 0.48, 0.48 );
setScaleKey( spep_3 -3 + 14, 1, 0.48, 0.48 );
setScaleKey( spep_3 -3 + 16, 1, 0.5, 0.5 );
setScaleKey( spep_3 -3 + 18, 1, 0.51, 0.51 );
setScaleKey( spep_3 -3 + 20, 1, 0.53, 0.53 );

setRotateKey( spep_3  + 0, 1, 0 );
setRotateKey( spep_3  + 18, 1, 0 );

--SE
--敵に当たる1
SE05 = playSe( spep_3 + 41, 1002 );

--敵に当たる2
SE06 = playSe( spep_3 + 51, 1023 );


--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3+18 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE00, 0);
    stopSe( SP_dodge - 12, SE01, 0);
    stopSe( SP_dodge - 12, SE02, 0);
    stopSe( SP_dodge - 12, SE03, 0);
    stopSe( SP_dodge - 12, SE04, 0);
    stopSe( SP_dodge - 12, SE05, 0);
    stopSe( SP_dodge - 12, SE06, 0);
   
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    
    setMoveKey(SP_dodge, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge,   1, 0);
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge+10 , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge+10,   1, 0);
    
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------
setDisp( spep_3  + 78, 1, 0 );

setMoveKey( spep_3 -3 + 22, 1, 121.5, -98.7 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 117.1, -90.7 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 112, -86.6 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 106.1, -76.8 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 99.2, -69.8 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 91.3, -57.5 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 82.4, -47.9 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 72.4, -32.7 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 61.2, -20.1 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 48.8, -1.8 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 35.1, 6.2 , 0 );
setMoveKey( spep_3 -3 + 45, 1, 20, 40 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 31.3, 31.4 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 49.6, 33.5 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 64.5, 3.2 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 80.9, 21.4 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 86.3, 40.9 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 86.7, 17.6 , 0 );
setMoveKey( spep_3 -3 + 59, 1, 93.2, -13.8 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 78.7, 19.5 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 72.9, 53.5 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 65.7, 27.9 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 68.6, 6.3 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 61.4, 23.7 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 66.9, 41 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 64.8, 21.1 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 62.9, 27.7 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 60.2, 30 , 0 );
setMoveKey( spep_3  + 78, 1, 61, 26 , 0 );

setScaleKey( spep_3 -3 + 22, 1, 0.55, 0.55 );
setScaleKey( spep_3 -3 + 24, 1, 0.58, 0.58 );
setScaleKey( spep_3 -3 + 26, 1, 0.61, 0.61 );
setScaleKey( spep_3 -3 + 28, 1, 0.65, 0.65 );
setScaleKey( spep_3 -3 + 30, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 32, 1, 0.75, 0.75 );
setScaleKey( spep_3 -3 + 34, 1, 0.8, 0.8 );
setScaleKey( spep_3 -3 + 36, 1, 0.87, 0.87 );
setScaleKey( spep_3 -3 + 38, 1, 0.94, 0.94 );
setScaleKey( spep_3 -3 + 40, 1, 1.02, 1.02 );
setScaleKey( spep_3 -3 + 42, 1, 1.1, 1.1 );
setScaleKey( spep_3 -3 + 45, 1, 1.2, 1.2 );
setScaleKey( spep_3 -3 + 46, 1, 1.18, 1.18 );
setScaleKey( spep_3 -3 + 48, 1, 1.03, 1.03 );
setScaleKey( spep_3 -3 + 50, 1, 0.9, 0.9 );
setScaleKey( spep_3 -3 + 52, 1, 0.81, 0.81 );
setScaleKey( spep_3 -3 + 54, 1, 0.74, 0.74 );
setScaleKey( spep_3 -3 + 56, 1, 0.69, 0.69 );
setScaleKey( spep_3 -3 + 59, 1, 0.68, 0.68 );
setScaleKey( spep_3 -3 + 60, 1, 0.73, 0.73 );
setScaleKey( spep_3  + 78, 1, 0.73, 0.73 );

setRotateKey( spep_3 -3 + 59, 1, 0 );
setRotateKey( spep_3 -3 + 60, 1, -44.9 );
setRotateKey( spep_3 -3 + 62, 1, -45 );
setRotateKey( spep_3  + 78, 1, -45 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

-- ** エフェクト等 ** --
entryFade(spep_3 + 72, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_4 = spep_3 + 80;


------------------------------------------------------
--  技発射02(93F)
------------------------------------------------------
-- ** エフェクト等 
kaze2 = entryEffectLife( spep_4 + 0, SP_06, 93, 0x80, -1, 0, 0, 0 );  --技発射02(ef_005_c)
setEffMoveKey( spep_4 + 0, kaze2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 93, kaze2, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kaze2, 1.1, 1.1 );
setEffScaleKey( spep_4 + 93, kaze2, 1.1, 1.1 );
setEffAlphaKey( spep_4 + 0, kaze2, 255 );
setEffAlphaKey( spep_4 + 93, kaze2, 255 );
setEffRotateKey( spep_4 + 0, kaze2, 0 );
setEffRotateKey( spep_4 + 93, kaze2, 0 );

--流線
ryusen2 = entryEffectLife( spep_4 + 29,  913, 6, 0x80, -1, 0, -110.7, -119.9 );

setEffMoveKey( spep_4 + 29, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 35, ryusen2, 0, 0, 0 );

setEffScaleKey( spep_4 + 29, ryusen2, 1.58, 1.13 );
setEffScaleKey( spep_4 + 35, ryusen2, 1.58, 1.13 );

setEffRotateKey( spep_4 + 29, ryusen2, 144.2 );
setEffRotateKey( spep_4 + 35, ryusen2, 144.2 );

setEffAlphaKey( spep_4 + 29, ryusen2, 150 );
setEffAlphaKey( spep_4 + 35, ryusen2, 150 );

--流線
ryusen3 = entryEffectLife( spep_4 + 36,  913, 57, 0x80, -1, 0, -110.7, -119.9 );

setEffMoveKey( spep_4 + 36, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 93, ryusen3, 0, 0, 0 );

setEffScaleKey( spep_4 + 36, ryusen3, 1.58, 1.13 );
setEffScaleKey( spep_4 + 93, ryusen3, 1.58, 1.13 );

setEffRotateKey( spep_4 + 36, ryusen3, 144.2 );
setEffRotateKey( spep_4 + 93, ryusen3, 144.2 );

setEffAlphaKey( spep_4 + 36, ryusen3, 150 );
setEffAlphaKey( spep_4 + 93, ryusen3, 150 );

--SE
--溜め発射
SE07 = playSe( spep_3 + 79, 1227 );
setSeVolume( spep_4 + 34, 1227, 0 );
setSeVolume( spep_4 + 35, 1227, 5 );
setSeVolume( spep_4 + 36, 1227, 10 );
setSeVolume( spep_4 + 37, 1227, 20 );
setSeVolume( spep_4 + 38, 1227, 30 );
setSeVolume( spep_4 + 39, 1227, 40 );
setSeVolume( spep_4 + 40, 1227, 50 );
setSeVolume( spep_4 + 41, 1227, 60 );
setSeVolume( spep_4 + 42, 1227, 70 );
setSeVolume( spep_4 + 43, 1227, 80 );
setSeVolume( spep_4 + 44, 1227, 90 );
setSeVolume( spep_4 + 45, 1227, 100 );
stopSe( spep_4 + 113, SE07, 0 );

--腕クロス
playSe( spep_4 + 3, 1048 );
setSeVolume( spep_4 + 3, 1048, 78 );

--溜め発射1
playSe( spep_4 + 35, 1027 );
setSeVolume( spep_4 + 35, 1027, 56 );

--溜め発射2
SE08 = playSe( spep_4 + 35, 1239 );
stopSe( spep_4 + 113, SE08, 0 );

--溜め発射3
SE09 = playSe( spep_4 + 35, 1249 );
stopSe( spep_4 + 113, SE09, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 93, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_4 + 72 ,10 ,14 ,0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_5 = spep_4 + 93;


------------------------------------------------------
--  必殺技ヒット04~06(150F)
------------------------------------------------------
-- ** エフェクト等 (後)
bg2 = entryEffectLife( spep_5 + 0, SP_07, 150, 0x80, -1, 0, 0, 0 );  --必殺技ヒット04(ef_006_bg)

setEffMoveKey( spep_5 + 0, bg2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 150, bg2, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, bg2, 1.1, 1.1 );
setEffScaleKey( spep_5 + 150, bg2, 1.1, 1.1 );
setEffAlphaKey( spep_5 + 0, bg2, 255 );
setEffAlphaKey( spep_5 + 150, bg2, 255 );
setEffRotateKey( spep_5 + 0, bg2, 0 );
setEffRotateKey( spep_5 + 150, bg2, 0 );

-- ** エフェクト等 (後)
hit2_b = entryEffectLife( spep_5 + 0, SP_08, 150, 0x80, -1, 0, 0, 0 );  --必殺技ヒット05(ef_006_ef_un)

setEffMoveKey( spep_5 + 0, hit2_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 150, hit2_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit2_b, 1.1, 1.1 );
setEffScaleKey( spep_5 + 150, hit2_b, 1.1, 1.1 );
setEffAlphaKey( spep_5 + 0, hit2_b, 255 );
setEffAlphaKey( spep_5 + 150, hit2_b, 255 );
setEffRotateKey( spep_5 + 0, hit2_b, 0 );
setEffRotateKey( spep_5 + 150, hit2_b, 0 );

-- ** エフェクト等 (前)
hit2_f = entryEffectLife( spep_5 + 0, SP_09, 150, 0x100, -1, 0, 0, 0 );  --必殺技ヒット06(ef_006_ef_up)

setEffMoveKey( spep_5 + 0, hit2_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 150, hit2_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit2_f, 1.1, 1.1 );
setEffScaleKey( spep_5 + 150, hit2_f, 1.1, 1.1 );
setEffAlphaKey( spep_5 + 0, hit2_f, 255 );
setEffAlphaKey( spep_5 + 150, hit2_f, 255 );
setEffRotateKey( spep_5 + 0, hit2_f, 0 );
setEffRotateKey( spep_5 + 150, hit2_f, 0 );

--集中線
shuchusen4 = entryEffectLife( spep_5 + 0,  906, 102, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 102, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen4, 1, 1 );
setEffScaleKey( spep_5 + 102, shuchusen4, 1, 1 );

setEffRotateKey( spep_5 + 0, shuchusen4, 0 );
setEffRotateKey( spep_5 + 102, shuchusen4, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 58, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 60, shuchusen4, 243 );
setEffAlphaKey( spep_5 + 62, shuchusen4, 232 );
setEffAlphaKey( spep_5 + 64, shuchusen4, 220 );
setEffAlphaKey( spep_5 + 66, shuchusen4, 209 );
setEffAlphaKey( spep_5 + 68, shuchusen4, 197 );
setEffAlphaKey( spep_5 + 70, shuchusen4, 185 );
setEffAlphaKey( spep_5 + 72, shuchusen4, 174 );
setEffAlphaKey( spep_5 + 74, shuchusen4, 162 );
setEffAlphaKey( spep_5 + 76, shuchusen4, 151 );
setEffAlphaKey( spep_5 + 78, shuchusen4, 139 );
setEffAlphaKey( spep_5 + 80, shuchusen4, 128 );
setEffAlphaKey( spep_5 + 82, shuchusen4, 116 );
setEffAlphaKey( spep_5 + 84, shuchusen4, 104 );
setEffAlphaKey( spep_5 + 86, shuchusen4, 93 );
setEffAlphaKey( spep_5 + 88, shuchusen4, 81 );
setEffAlphaKey( spep_5 + 90, shuchusen4, 70 );
setEffAlphaKey( spep_5 + 92, shuchusen4, 58 );
setEffAlphaKey( spep_5 + 94, shuchusen4, 46 );
setEffAlphaKey( spep_5 + 96, shuchusen4, 35 );
setEffAlphaKey( spep_5 + 98, shuchusen4, 23 );
setEffAlphaKey( spep_5 + 100, shuchusen4, 12 );
setEffAlphaKey( spep_5 + 102, shuchusen4, 0 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 38, 1, 0 );

changeAnime( spep_5 + 0, 1, 106 );

setMoveKey( spep_5 + 0, 1, 8.2, 31.9 , 0 );
--setMoveKey( spep_5-3 + 2, 1, 8.2, 30 , 0 );
setMoveKey( spep_5-3 + 4, 1, 8.2, 28.1 , 0 );
setMoveKey( spep_5-3 + 6, 1, 9.7, 29.5 , 0 );
setMoveKey( spep_5-3 + 8, 1, 11.2, 30.9 , 0 );
setMoveKey( spep_5-3 + 10, 1, 9.7, 29.2 , 0 );
setMoveKey( spep_5-3 + 12, 1, 8.3, 27.5 , 0 );
setMoveKey( spep_5-3 + 14, 1, 9.6, 29.2 , 0 );
setMoveKey( spep_5-3 + 16, 1, 10.9, 30.9 , 0 );
setMoveKey( spep_5-3 + 18, 1, 9.8, 29.6 , 0 );
setMoveKey( spep_5-3 + 20, 1, 8.7, 28.2 , 0 );
setMoveKey( spep_5-3 + 22, 1, 9.7, 29.6 , 0 );
setMoveKey( spep_5-3 + 24, 1, 10.8, 30.9 , 0 );
setMoveKey( spep_5-3 + 26, 1, 10.8, 29.7 , 0 );
setMoveKey( spep_5-3 + 28, 1, 10.8, 28.5 , 0 );
setMoveKey( spep_5-3 + 30, 1, 65.5, 29.5 , 0 );
setMoveKey( spep_5-3 + 32, 1, 120.3, 30.5 , 0 );
setMoveKey( spep_5-3 + 34, 1, 162.7, 29.9 , 0 );
setMoveKey( spep_5-3 + 36, 1, 205.1, 29.3 , 0 );
setMoveKey( spep_5-3 + 38, 1, 228.1, 30.4 , 0 );
setMoveKey( spep_5-3 + 41, 1, 228.1, 30.4 , 0 );

setScaleKey( spep_5 + 0, 1, 0.73, 0.73 );
setScaleKey( spep_5-3 + 41, 1, 0.73, 0.73 );

setRotateKey( spep_5 + 0, 1, -53 );
setRotateKey( spep_5-3 + 28, 1, -53 );
setRotateKey( spep_5-3 + 30, 1, -43.4 );
setRotateKey( spep_5-3 + 32, 1, -33.7 );
setRotateKey( spep_5-3 + 34, 1, -24.1 );
setRotateKey( spep_5-3 + 36, 1, -14.5 );
setRotateKey( spep_5-3 + 38, 1, -4.9 );
setRotateKey( spep_5-3 + 41, 1, -4.9 );

--SE
--竜巻おかわり1
playSe( spep_5 + 4, 1018 );

--竜巻おかわり2
playSe( spep_5 + 4, 1026 );
setSeVolume( spep_5 + 4, 1026, 79 );

--壁めりこむ1
playSe( spep_5 + 28, 1044 );
setSeVolume( spep_5 + 28, 1044, 79 );

--壁めりこむ2
playSe( spep_5 + 28, 1023 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 150, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 142, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_6 = spep_5 + 150;


------------------------------------------------------
--フィニッシュ　背景(296F)
------------------------------------------------------
-- ** エフェクト等 (後)
finish = entryEffect( spep_6 + 0, SP_10, 0x80, -1, 0, 0, 0 ); --フィニッシュ　背景(ef_007)

setEffMoveKey( spep_6 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_6 + 296, finish, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish, 1.1, 1.1 );
setEffScaleKey( spep_6 + 296, finish, 1.1, 1.1 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 296, finish, 255 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 296, finish, 0 );

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_6 + 0, 906, 161, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen, 161, 20 );
setEffMoveKey( spep_6 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_6 + 161, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, shuchusen, 1.2, 1.2 );
setEffScaleKey( spep_6 + 161, shuchusen, 1.2, 1.2 );
setEffRotateKey( spep_6 + 0, shuchusen, 0 );
setEffRotateKey( spep_6 + 161, shuchusen, 0 );
setEffAlphaKey( spep_6 + 0, shuchusen, 0 );
setEffAlphaKey( spep_6 + 15, shuchusen, 255 );
setEffAlphaKey( spep_6 + 135, shuchusen, 255 );
setEffAlphaKey( spep_6 + 161, shuchusen, 0 );

--SE
--光走る
playSe( spep_6 + 6, 1171 );
setSeVolume( spep_6 + 6, 1171, 61 );

--爆発
playSe( spep_6 + 24, 1024 );

--ラスト爆発
playSe( spep_6 + 104, 1159 );
setSeVolume( spep_6 + 104, 1159, 91 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 296, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_6 + 276, 18, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ダメージ表示
dealDamage( spep_6 + 40);
--entryFade( spep_6+286, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_6 + 286);

else 

------------------------------------------------------
--敵側
------------------------------------------------------
------------------------------------------------------
-- 待機(126F)
------------------------------------------------------
spep_0=0;

-- ** エフェクト等 ** --
taiki = entryEffectLife( spep_0 + 0, SP_01r, 126, 0x80, -1, 0, 0, 0 );  --構え(ef_001)
setEffMoveKey( spep_0 + 0, taiki, 0, 0 , 0 );
setEffMoveKey( spep_0 + 126, taiki, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, taiki, 1.1, 1.1 );
setEffScaleKey( spep_0 + 126, taiki, 1.1, 1.1 );
setEffAlphaKey( spep_0 + 0, taiki, 255 );
setEffAlphaKey( spep_0 + 126, taiki, 255 );
setEffRotateKey( spep_0 + 0, taiki, 0 );
setEffRotateKey( spep_0 + 126, taiki, 0 );

-- ** 顔カットイン ** --
spep_x = spep_0 + 42;
--[[speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え]]

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 126, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_0 + 121, 4, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


--SE
--入り
playSe( spep_0 + 0, 8 );
setSeVolume( spep_0 + 0, 8, 68 );

--顔カットイン
playSe( spep_0 + 40, 1018 );

--次の準備
spep_1 = spep_0 + 126;


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
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
--  技発射01(43)
------------------------------------------------------
-- ** エフェクト等 (前)
kaze = entryEffectLife( spep_2 + 0, SP_02r, 43, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, kaze, 0, 0 , 0 );
setEffMoveKey( spep_2 + 43, kaze, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kaze, 1.1, 1.1 );
setEffScaleKey( spep_2 + 43, kaze, 1.1, 1.1 );
setEffAlphaKey( spep_2 + 0, kaze, 255 );
setEffAlphaKey( spep_2 + 43, kaze, 255 );
setEffRotateKey( spep_2 + 0, kaze, 0 );
setEffRotateKey( spep_2 + 43, kaze, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_2 + 0,  906, 42, 0x100, -1, 0, 0, 0 );

setEffShake( spep_2 + 0, shuchusen1, 42, 25 );

setEffMoveKey( spep_2 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 30, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 31, shuchusen1, -100, 0 , 0 );
setEffMoveKey( spep_2 + 33, shuchusen1, -180, 0 , 0 );
setEffMoveKey( spep_2 + 35, shuchusen1, -210, 0 , 0 );
setEffMoveKey( spep_2 + 37, shuchusen1, -260, 0 , 0 );
setEffMoveKey( spep_2 + 39, shuchusen1, -600, 0 , 0 );
setEffMoveKey( spep_2 + 42, shuchusen1, -700, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_2 + 30, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_2 + 31, shuchusen1, 1.4, 1.22 );
setEffScaleKey( spep_2 + 33, shuchusen1, 1.8, 1.24 );
setEffScaleKey( spep_2 + 35, shuchusen1, 2.4, 1.26 );
setEffScaleKey( spep_2 + 37, shuchusen1, 2.6, 1.28 );
setEffScaleKey( spep_2 + 39, shuchusen1, 2.8, 1.30 );
setEffScaleKey( spep_2 + 42, shuchusen1, 3.0, 1.30 );

setEffRotateKey( spep_2 + 0, shuchusen1, 0 );
setEffRotateKey( spep_2 + 42, shuchusen1, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_2 + 26, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 42, shuchusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 44, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_2+0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--SE
--竜巻起こす1
SE00 = playSe( spep_1 + 88, 1072 );
setSeVolume( spep_1 + 88, 1072, 0 );
setSeVolume( spep_1 + 91, 1072, 17 );
setSeVolume( spep_1 + 94, 1072, 36 );
setSeVolume( spep_1 + 97, 1072, 58 );
setSeVolume( spep_1 + 100, 1072, 74 );
setSeVolume( spep_1 + 103, 1072, 88 );
setSeVolume( spep_1 + 106, 1072, 100 );

--竜巻起こす2
SE01 = playSe( spep_2 + 0, 1167 );
setSeVolume( spep_2 + 0, 1167, 38 );
setSeVolume( spep_2 + 28, 1167, 38 );
setSeVolume( spep_2 + 31, 1167, 26 );
setSeVolume( spep_2 + 34, 1167, 21 );
setSeVolume( spep_2 + 37, 1167, 15 );
setSeVolume( spep_2 + 41, 1167, 7 );
setSeVolume( spep_2 + 43, 1167, 0 );
stopSe( spep_2 + 43, SE01, 0 );

--竜巻発射1
SE02 = playSe( spep_2 + 36, 1027 );

--竜巻発射2
SE03 = playSe( spep_2 + 36, 8 );

--竜巻発射3
SE04 = playSe( spep_2 + 40, 1018 );

--次の準備
spep_3 = spep_2 + 43;


------------------------------------------------------
-- 必殺技ヒット01~03(80F)
------------------------------------------------------
-- ** エフェクト等 (後)
bg = entryEffectLife( spep_3 + 0, SP_03, 80, 0x80, -1, 0, 0, 0 );  --必殺技ヒット01(ef_004_bg)

setEffMoveKey( spep_3 + 0, bg, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, bg, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, bg, 1.1, 1.1 );
setEffScaleKey( spep_3 + 80, bg, 1.1, 1.1 );
setEffAlphaKey( spep_3 + 0, bg, 255 );
setEffAlphaKey( spep_3 + 80, bg, 255 );
setEffRotateKey( spep_3 + 0, bg, 0 );
setEffRotateKey( spep_3 + 80, bg, 0 );

-- ** エフェクト等 (後)
hit_b = entryEffectLife( spep_3 + 0, SP_04, 80, 0x80, -1, 0, 0, 0 );  --必殺技ヒット02(ef_004_ef_un)

setEffMoveKey( spep_3 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.1, 1.1 );
setEffScaleKey( spep_3 + 80, hit_b, 1.1, 1.1 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 80, hit_b, 255 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 80, hit_b, 0 );

--流線
ryusen1 = entryEffectLife( spep_3 + 0,  913, 58, 0x80, -1, 0, -110.7, -119.9 );

setEffMoveKey( spep_3 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 58, ryusen1, 0, 0, 0 );

setEffScaleKey( spep_3 + 0, ryusen1, 1.58, 1.13 );
setEffScaleKey( spep_3 + 58, ryusen1, 1.58, 1.13 );

setEffRotateKey( spep_3 + 0, ryusen1, 34.7 );
setEffRotateKey( spep_3 + 58, ryusen1, 34.7 );

setEffAlphaKey( spep_3 + 0, ryusen1, 150 );
setEffAlphaKey( spep_3 + 58, ryusen1, 150 );

--集中線
shuchusem2 = entryEffectLife( spep_3 + 58,  906, 20, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 58, shuchusem2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 78, shuchusem2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 58, shuchusem2, 1, 1 );
setEffScaleKey( spep_3 + 78, shuchusem2, 1, 1 );

setEffRotateKey( spep_3 + 58, shuchusem2, 0 );
setEffRotateKey( spep_3 + 78, shuchusem2, 0 );

setEffAlphaKey( spep_3 + 58, shuchusem2, 128 );
setEffAlphaKey( spep_3 + 60, shuchusem2, 255 );
setEffAlphaKey( spep_3 + 78, shuchusem2, 255 );

-- ** エフェクト等 (前)
hit_f = entryEffectLife( spep_3 + 0, SP_05, 80, 0x100, -1, 0, 0, 0 );  --必殺技ヒット03(ef_004_ef_up)

setEffMoveKey( spep_3 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.1, 1.1 );
setEffScaleKey( spep_3 + 80, hit_f, 1.1, 1.1 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 80, hit_f, 255 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 80, hit_f, 0 );

--敵の動き
setDisp( spep_3  + 0, 1, 1 );


changeAnime( spep_3  + 0, 1, 100 );
changeAnime( spep_3 -3 + 46, 1, 108 );
changeAnime( spep_3 -3 + 60, 1, 106 );

setMoveKey( spep_3  + 0, 1, 136, -116 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, 135.9, -118 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 135.9, -115.9 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 135.7, -117.6 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 135.3, -115.1 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 134.6, -116.2 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 133.6, -112.9 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 132.2, -113.1 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 130.4, -108.7 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 128, -107.6 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 125.1, -101.7 , 0 );

setScaleKey( spep_3  + 0, 1, 0.46, 0.46 );
setScaleKey( spep_3 -3 + 6, 1, 0.46, 0.46 );
setScaleKey( spep_3 -3 + 8, 1, 0.47, 0.47 );
setScaleKey( spep_3 -3 + 10, 1, 0.47, 0.47 );
setScaleKey( spep_3 -3 + 12, 1, 0.48, 0.48 );
setScaleKey( spep_3 -3 + 14, 1, 0.48, 0.48 );
setScaleKey( spep_3 -3 + 16, 1, 0.5, 0.5 );
setScaleKey( spep_3 -3 + 18, 1, 0.51, 0.51 );
setScaleKey( spep_3 -3 + 20, 1, 0.53, 0.53 );

setRotateKey( spep_3  + 0, 1, 0 );
setRotateKey( spep_3  + 18, 1, 0 );

--SE
--敵に当たる1
SE05 = playSe( spep_3 + 41, 1002 );

--敵に当たる2
SE06 = playSe( spep_3 + 51, 1023 );


--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3+18 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE00, 0);
    stopSe( SP_dodge - 12, SE01, 0);
    stopSe( SP_dodge - 12, SE02, 0);
    stopSe( SP_dodge - 12, SE03, 0);
    stopSe( SP_dodge - 12, SE04, 0);
    stopSe( SP_dodge - 12, SE05, 0);
    stopSe( SP_dodge - 12, SE06, 0);
   
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    
    setMoveKey(SP_dodge, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge,   1, 0);
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge+10 , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge+10,   1, 0);
    
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------
setDisp( spep_3  + 78, 1, 0 );

setMoveKey( spep_3 -3 + 22, 1, 121.5, -98.7 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 117.1, -90.7 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 112, -86.6 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 106.1, -76.8 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 99.2, -69.8 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 91.3, -57.5 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 82.4, -47.9 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 72.4, -32.7 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 61.2, -20.1 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 48.8, -1.8 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 35.1, 6.2 , 0 );
setMoveKey( spep_3 -3 + 45, 1, 20, 40 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 31.3, 31.4 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 49.6, 33.5 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 64.5, 3.2 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 80.9, 21.4 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 86.3, 40.9 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 86.7, 17.6 , 0 );
setMoveKey( spep_3 -3 + 59, 1, 93.2, -13.8 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 78.7, 19.5 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 72.9, 53.5 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 65.7, 27.9 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 68.6, 6.3 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 61.4, 23.7 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 66.9, 41 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 64.8, 21.1 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 62.9, 27.7 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 60.2, 30 , 0 );
setMoveKey( spep_3  + 78, 1, 61, 26 , 0 );

setScaleKey( spep_3 -3 + 22, 1, 0.55, 0.55 );
setScaleKey( spep_3 -3 + 24, 1, 0.58, 0.58 );
setScaleKey( spep_3 -3 + 26, 1, 0.61, 0.61 );
setScaleKey( spep_3 -3 + 28, 1, 0.65, 0.65 );
setScaleKey( spep_3 -3 + 30, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 32, 1, 0.75, 0.75 );
setScaleKey( spep_3 -3 + 34, 1, 0.8, 0.8 );
setScaleKey( spep_3 -3 + 36, 1, 0.87, 0.87 );
setScaleKey( spep_3 -3 + 38, 1, 0.94, 0.94 );
setScaleKey( spep_3 -3 + 40, 1, 1.02, 1.02 );
setScaleKey( spep_3 -3 + 42, 1, 1.1, 1.1 );
setScaleKey( spep_3 -3 + 45, 1, 1.2, 1.2 );
setScaleKey( spep_3 -3 + 46, 1, 1.18, 1.18 );
setScaleKey( spep_3 -3 + 48, 1, 1.03, 1.03 );
setScaleKey( spep_3 -3 + 50, 1, 0.9, 0.9 );
setScaleKey( spep_3 -3 + 52, 1, 0.81, 0.81 );
setScaleKey( spep_3 -3 + 54, 1, 0.74, 0.74 );
setScaleKey( spep_3 -3 + 56, 1, 0.69, 0.69 );
setScaleKey( spep_3 -3 + 59, 1, 0.68, 0.68 );
setScaleKey( spep_3 -3 + 60, 1, 0.73, 0.73 );
setScaleKey( spep_3  + 78, 1, 0.73, 0.73 );

setRotateKey( spep_3 -3 + 59, 1, 0 );
setRotateKey( spep_3 -3 + 60, 1, -44.9 );
setRotateKey( spep_3 -3 + 62, 1, -45 );
setRotateKey( spep_3  + 78, 1, -45 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

-- ** エフェクト等 ** --
entryFade(spep_3 + 72, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_4 = spep_3 + 80;


------------------------------------------------------
--  技発射02(93F)
------------------------------------------------------
-- ** エフェクト等 
kaze2 = entryEffectLife( spep_4 + 0, SP_06r, 93, 0x80, -1, 0, 0, 0 );  --技発射02(ef_005_c)
setEffMoveKey( spep_4 + 0, kaze2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 93, kaze2, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kaze2, 1.1, 1.1 );
setEffScaleKey( spep_4 + 93, kaze2, 1.1, 1.1 );
setEffAlphaKey( spep_4 + 0, kaze2, 255 );
setEffAlphaKey( spep_4 + 93, kaze2, 255 );
setEffRotateKey( spep_4 + 0, kaze2, 0 );
setEffRotateKey( spep_4 + 93, kaze2, 0 );

--流線
ryusen2 = entryEffectLife( spep_4 + 29,  913, 6, 0x80, -1, 0, -110.7, -119.9 );

setEffMoveKey( spep_4 + 29, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 35, ryusen2, 0, 0, 0 );

setEffScaleKey( spep_4 + 29, ryusen2, 1.58, 1.13 );
setEffScaleKey( spep_4 + 35, ryusen2, 1.58, 1.13 );

setEffRotateKey( spep_4 + 29, ryusen2, 144.2 );
setEffRotateKey( spep_4 + 35, ryusen2, 144.2 );

setEffAlphaKey( spep_4 + 29, ryusen2, 150 );
setEffAlphaKey( spep_4 + 35, ryusen2, 150 );

--流線
ryusen3 = entryEffectLife( spep_4 + 36,  913, 57, 0x80, -1, 0, -110.7, -119.9 );

setEffMoveKey( spep_4 + 36, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 93, ryusen3, 0, 0, 0 );

setEffScaleKey( spep_4 + 36, ryusen3, 1.58, 1.13 );
setEffScaleKey( spep_4 + 93, ryusen3, 1.58, 1.13 );

setEffRotateKey( spep_4 + 36, ryusen3, 144.2 );
setEffRotateKey( spep_4 + 93, ryusen3, 144.2 );

setEffAlphaKey( spep_4 + 36, ryusen3, 150 );
setEffAlphaKey( spep_4 + 93, ryusen3, 150 );

--SE
--溜め発射
SE07 = playSe( spep_3 + 79, 1227 );
setSeVolume( spep_4 + 34, 1227, 0 );
setSeVolume( spep_4 + 35, 1227, 5 );
setSeVolume( spep_4 + 36, 1227, 10 );
setSeVolume( spep_4 + 37, 1227, 20 );
setSeVolume( spep_4 + 38, 1227, 30 );
setSeVolume( spep_4 + 39, 1227, 40 );
setSeVolume( spep_4 + 40, 1227, 50 );
setSeVolume( spep_4 + 41, 1227, 60 );
setSeVolume( spep_4 + 42, 1227, 70 );
setSeVolume( spep_4 + 43, 1227, 80 );
setSeVolume( spep_4 + 44, 1227, 90 );
setSeVolume( spep_4 + 45, 1227, 100 );
stopSe( spep_4 + 113, SE07, 0 );

--腕クロス
playSe( spep_4 + 3, 1048 );
setSeVolume( spep_4 + 3, 1048, 78 );

--溜め発射1
playSe( spep_4 + 35, 1027 );
setSeVolume( spep_4 + 35, 1027, 56 );

--溜め発射2
SE08 = playSe( spep_4 + 35, 1239 );
stopSe( spep_4 + 113, SE08, 0 );

--溜め発射3
SE09 = playSe( spep_4 + 35, 1249 );
stopSe( spep_4 + 113, SE09, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 93, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_4 + 72 ,10 ,14 ,0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_5 = spep_4 + 93;


------------------------------------------------------
--  必殺技ヒット04~06(150F)
------------------------------------------------------
-- ** エフェクト等 (後)
bg2 = entryEffectLife( spep_5 + 0, SP_07, 150, 0x80, -1, 0, 0, 0 );  --必殺技ヒット04(ef_006_bg)

setEffMoveKey( spep_5 + 0, bg2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 150, bg2, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, bg2, 1.1, 1.1 );
setEffScaleKey( spep_5 + 150, bg2, 1.1, 1.1 );
setEffAlphaKey( spep_5 + 0, bg2, 255 );
setEffAlphaKey( spep_5 + 150, bg2, 255 );
setEffRotateKey( spep_5 + 0, bg2, 0 );
setEffRotateKey( spep_5 + 150, bg2, 0 );

-- ** エフェクト等 (後)
hit2_b = entryEffectLife( spep_5 + 0, SP_08, 150, 0x80, -1, 0, 0, 0 );  --必殺技ヒット05(ef_006_ef_un)

setEffMoveKey( spep_5 + 0, hit2_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 150, hit2_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit2_b, 1.1, 1.1 );
setEffScaleKey( spep_5 + 150, hit2_b, 1.1, 1.1 );
setEffAlphaKey( spep_5 + 0, hit2_b, 255 );
setEffAlphaKey( spep_5 + 150, hit2_b, 255 );
setEffRotateKey( spep_5 + 0, hit2_b, 0 );
setEffRotateKey( spep_5 + 150, hit2_b, 0 );

-- ** エフェクト等 (前)
hit2_f = entryEffectLife( spep_5 + 0, SP_09, 150, 0x100, -1, 0, 0, 0 );  --必殺技ヒット06(ef_006_ef_up)

setEffMoveKey( spep_5 + 0, hit2_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 150, hit2_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit2_f, 1.1, 1.1 );
setEffScaleKey( spep_5 + 150, hit2_f, 1.1, 1.1 );
setEffAlphaKey( spep_5 + 0, hit2_f, 255 );
setEffAlphaKey( spep_5 + 150, hit2_f, 255 );
setEffRotateKey( spep_5 + 0, hit2_f, 0 );
setEffRotateKey( spep_5 + 150, hit2_f, 0 );

--集中線
shuchusen4 = entryEffectLife( spep_5 + 0,  906, 102, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 102, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen4, 1, 1 );
setEffScaleKey( spep_5 + 102, shuchusen4, 1, 1 );

setEffRotateKey( spep_5 + 0, shuchusen4, 0 );
setEffRotateKey( spep_5 + 102, shuchusen4, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 58, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 60, shuchusen4, 243 );
setEffAlphaKey( spep_5 + 62, shuchusen4, 232 );
setEffAlphaKey( spep_5 + 64, shuchusen4, 220 );
setEffAlphaKey( spep_5 + 66, shuchusen4, 209 );
setEffAlphaKey( spep_5 + 68, shuchusen4, 197 );
setEffAlphaKey( spep_5 + 70, shuchusen4, 185 );
setEffAlphaKey( spep_5 + 72, shuchusen4, 174 );
setEffAlphaKey( spep_5 + 74, shuchusen4, 162 );
setEffAlphaKey( spep_5 + 76, shuchusen4, 151 );
setEffAlphaKey( spep_5 + 78, shuchusen4, 139 );
setEffAlphaKey( spep_5 + 80, shuchusen4, 128 );
setEffAlphaKey( spep_5 + 82, shuchusen4, 116 );
setEffAlphaKey( spep_5 + 84, shuchusen4, 104 );
setEffAlphaKey( spep_5 + 86, shuchusen4, 93 );
setEffAlphaKey( spep_5 + 88, shuchusen4, 81 );
setEffAlphaKey( spep_5 + 90, shuchusen4, 70 );
setEffAlphaKey( spep_5 + 92, shuchusen4, 58 );
setEffAlphaKey( spep_5 + 94, shuchusen4, 46 );
setEffAlphaKey( spep_5 + 96, shuchusen4, 35 );
setEffAlphaKey( spep_5 + 98, shuchusen4, 23 );
setEffAlphaKey( spep_5 + 100, shuchusen4, 12 );
setEffAlphaKey( spep_5 + 102, shuchusen4, 0 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 38, 1, 0 );

changeAnime( spep_5 + 0, 1, 106 );

setMoveKey( spep_5 + 0, 1, 8.2, 31.9 , 0 );
--setMoveKey( spep_5-3 + 2, 1, 8.2, 30 , 0 );
setMoveKey( spep_5-3 + 4, 1, 8.2, 28.1 , 0 );
setMoveKey( spep_5-3 + 6, 1, 9.7, 29.5 , 0 );
setMoveKey( spep_5-3 + 8, 1, 11.2, 30.9 , 0 );
setMoveKey( spep_5-3 + 10, 1, 9.7, 29.2 , 0 );
setMoveKey( spep_5-3 + 12, 1, 8.3, 27.5 , 0 );
setMoveKey( spep_5-3 + 14, 1, 9.6, 29.2 , 0 );
setMoveKey( spep_5-3 + 16, 1, 10.9, 30.9 , 0 );
setMoveKey( spep_5-3 + 18, 1, 9.8, 29.6 , 0 );
setMoveKey( spep_5-3 + 20, 1, 8.7, 28.2 , 0 );
setMoveKey( spep_5-3 + 22, 1, 9.7, 29.6 , 0 );
setMoveKey( spep_5-3 + 24, 1, 10.8, 30.9 , 0 );
setMoveKey( spep_5-3 + 26, 1, 10.8, 29.7 , 0 );
setMoveKey( spep_5-3 + 28, 1, 10.8, 28.5 , 0 );
setMoveKey( spep_5-3 + 30, 1, 65.5, 29.5 , 0 );
setMoveKey( spep_5-3 + 32, 1, 120.3, 30.5 , 0 );
setMoveKey( spep_5-3 + 34, 1, 162.7, 29.9 , 0 );
setMoveKey( spep_5-3 + 36, 1, 205.1, 29.3 , 0 );
setMoveKey( spep_5-3 + 38, 1, 228.1, 30.4 , 0 );
setMoveKey( spep_5-3 + 41, 1, 228.1, 30.4 , 0 );

setScaleKey( spep_5 + 0, 1, 0.73, 0.73 );
setScaleKey( spep_5-3 + 41, 1, 0.73, 0.73 );

setRotateKey( spep_5 + 0, 1, -53 );
setRotateKey( spep_5-3 + 28, 1, -53 );
setRotateKey( spep_5-3 + 30, 1, -43.4 );
setRotateKey( spep_5-3 + 32, 1, -33.7 );
setRotateKey( spep_5-3 + 34, 1, -24.1 );
setRotateKey( spep_5-3 + 36, 1, -14.5 );
setRotateKey( spep_5-3 + 38, 1, -4.9 );
setRotateKey( spep_5-3 + 41, 1, -4.9 );

--SE
--竜巻おかわり1
playSe( spep_5 + 4, 1018 );

--竜巻おかわり2
playSe( spep_5 + 4, 1026 );
setSeVolume( spep_5 + 4, 1026, 79 );

--壁めりこむ1
playSe( spep_5 + 28, 1044 );
setSeVolume( spep_5 + 28, 1044, 79 );

--壁めりこむ2
playSe( spep_5 + 28, 1023 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 150, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 142, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_6 = spep_5 + 150;


------------------------------------------------------
--フィニッシュ　背景(296F)
------------------------------------------------------
-- ** エフェクト等 (後)
finish = entryEffect( spep_6 + 0, SP_10, 0x80, -1, 0, 0, 0 ); --フィニッシュ　背景(ef_007)

setEffMoveKey( spep_6 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_6 + 296, finish, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish, 1.1, 1.1 );
setEffScaleKey( spep_6 + 296, finish, 1.1, 1.1 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 296, finish, 255 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 296, finish, 0 );

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_6 + 0, 906, 161, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen, 161, 20 );
setEffMoveKey( spep_6 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_6 + 161, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, shuchusen, 1.2, 1.2 );
setEffScaleKey( spep_6 + 161, shuchusen, 1.2, 1.2 );
setEffRotateKey( spep_6 + 0, shuchusen, 0 );
setEffRotateKey( spep_6 + 161, shuchusen, 0 );
setEffAlphaKey( spep_6 + 0, shuchusen, 0 );
setEffAlphaKey( spep_6 + 15, shuchusen, 255 );
setEffAlphaKey( spep_6 + 135, shuchusen, 255 );
setEffAlphaKey( spep_6 + 161, shuchusen, 0 );

--SE
--光走る
playSe( spep_6 + 6, 1171 );
setSeVolume( spep_6 + 6, 1171, 61 );

--爆発
playSe( spep_6 + 24, 1024 );

--ラスト爆発
playSe( spep_6 + 104, 1159 );
setSeVolume( spep_6 + 104, 1159, 91 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 296, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_6 + 276, 18, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ダメージ表示
dealDamage( spep_6 + 40);
--entryFade( spep_6+286, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_6 + 286);

end
