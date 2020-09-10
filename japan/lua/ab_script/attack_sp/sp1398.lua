--1018940:ベジータ(幼年期)_ギャリックビーム
--sp_effect_a3_00064

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
SP_01 = 154740; --べジータズームアップ
SP_02 = 154741; --ビーム発射
SP_03 = 154742; --ビームヒット
SP_04 = 154743; --背景
SP_05 = 154744; --背景
SP_06 = 154745; --背景

--敵側
SP_02e = 154867; --ビーム発射
SP_04e = 154868; --背景

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
-- べジータズームアップ
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
zoomup = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); --べジータズームアップ(ef_001)
setEffMoveKey( spep_0 + 0, zoomup, 0, 0, 0 );
setEffMoveKey( spep_0 + 96, zoomup, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, zoomup, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, zoomup, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, zoomup, 0 );
setEffRotateKey( spep_0 + 96, zoomup, 0 );
setEffAlphaKey( spep_0 + 0, zoomup, 255 );
setEffAlphaKey( spep_0 + 96, zoomup, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 10, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 10, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 -30 + 52, 190006, 72, 0x100, -1, 0, 0, 530 );-- ゴゴゴゴ

setEffMoveKey(  spep_0 -30 + 52,  ctgogo, 0, 530 );
setEffMoveKey(  spep_0 -30 + 124,  ctgogo, 0, 530 );

setEffAlphaKey( spep_0 -30 + 52, ctgogo, 0 );
setEffAlphaKey( spep_0 -30 + 53, ctgogo, 255 );
setEffAlphaKey( spep_0 -30 + 54, ctgogo, 255 );
setEffAlphaKey( spep_0 -30 + 118, ctgogo, 255 );
setEffAlphaKey( spep_0 -30 + 120, ctgogo, 191 );
setEffAlphaKey( spep_0 -30 + 122, ctgogo, 112 );
setEffAlphaKey( spep_0 -30 + 124, ctgogo, 64 );

setEffRotateKey( spep_0 -30 + 52,  ctgogo,  0);
setEffRotateKey( spep_0 -30 + 124,  ctgogo,  0);

setEffScaleKey( spep_0 -30 + 52,  ctgogo,  0.7,  0.7);
setEffScaleKey( spep_0 -30 + 114,  ctgogo,  0.7,  0.7);
setEffScaleKey( spep_0 -30 + 124,  ctgogo, 1.07, 1.07 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0, 906, 96, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 + 0, shuchusen1, 96, 20 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.2, 1.1 );
setEffScaleKey( spep_0 + 96, shuchusen1, 1.2, 1.1 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 96, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 96, shuchusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 98, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 82, 12, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_0 + 0, 08 );
setSeVolume( spep_0 + 0, 08, 63 );
playSe( spep_0 + 13, 1018 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 96;

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
playSe( spep_1 + 0, 1035 );
se_1037 = playSe( spep_1 + 72, 1037 );
setSeVolume( spep_1 + 72, 1037, 0 );

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- ビーム発射
------------------------------------------------------
-- ** エフェクト等 ** --
hassha_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0, 2 ); --ビーム発射(ef_002)
setEffMoveKey( spep_2 + 0, hassha_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 76, hassha_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, hassha_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76, hassha_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hassha_f, 0 );
setEffRotateKey( spep_2 + 76, hassha_f, 0 );
setEffAlphaKey( spep_2 + 0, hassha_f, 255 );
setEffAlphaKey( spep_2 + 76, hassha_f, 255 );

hassha_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); --ビーム発射・背景(ef_004)
setEffMoveKey( spep_2 + 0, hassha_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 76, hassha_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, hassha_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76, hassha_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hassha_b, 0 );
setEffRotateKey( spep_2 + 76, hassha_b, 0 );
setEffAlphaKey( spep_2 + 0, hassha_b, 255 );
setEffAlphaKey( spep_2 + 76, hassha_b, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 -3 + 3, 906, 20 -3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2 -3 + 3, shuchusen2, 20 -3, 20 );

setEffMoveKey( spep_2 -3 + 3, shuchusen2, 0, 0, 0 );
setEffMoveKey( spep_2 -3 + 20, shuchusen2, 0, 0, 0 );

setEffScaleKey( spep_2 -3 + 3, shuchusen2, 1.36, 1.36 );
setEffScaleKey( spep_2 -3 + 20, shuchusen2, 1.36, 1.36 );

setEffRotateKey( spep_2 -3 + 3, shuchusen2, 180 );
setEffRotateKey( spep_2 -3 + 20, shuchusen2, 180 );

setEffAlphaKey( spep_2 -3 + 3, shuchusen2, 255 );
setEffAlphaKey( spep_2 -3 + 12, shuchusen2, 255 );
setEffAlphaKey( spep_2 -3 + 14, shuchusen2, 191 );
setEffAlphaKey( spep_2 -3 + 16, shuchusen2, 128 );
setEffAlphaKey( spep_2 -3 + 18, shuchusen2, 64 );
setEffAlphaKey( spep_2 -3 + 20, shuchusen2, 0 );

shuchusen3 = entryEffectLife( spep_2 -3 + 22, 906, 56, 0x100, -1, 0, -500, 3.9, 1 );
setEffShake( spep_2 -3 + 22, shuchusen3, 56, 20 );

setEffMoveKey( spep_2 -3 + 22, shuchusen3, -500, 3.9 , 0 );
setEffMoveKey( spep_2 -3 + 78, shuchusen3, -500, 3.9 , 0 );

setEffScaleKey( spep_2 -3 + 22, shuchusen3, 2.09, 1.06 );
setEffScaleKey( spep_2 -3 + 78, shuchusen3, 2.09, 1.06 );

setEffRotateKey( spep_2 -3 + 22, shuchusen3, -179.3 );
setEffRotateKey( spep_2 -3 + 78, shuchusen3, -179.3 );

setEffAlphaKey( spep_2 -3 + 22, shuchusen3, 255 );
setEffAlphaKey( spep_2 -3 + 78, shuchusen3, 255 );

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 78, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
se_0049 = playSe( spep_2 + 7, 49 );
setSeVolume( spep_2 + 7, 49, 112 );
setSeVolume( spep_2 + 7, 1037, 63.00 );
stopSe( spep_2 + 44, se_1037, 0 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, se_0049, 0 );
    stopSe( SP_dodge - 12, se_1037, 0 );
    pauseAll( SP_dodge, 67 );
    

    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,-1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );   -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100, -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);

    --敵の固定
    --setMoveKey( SP_dodge + 32, 1, 52.3, 0.3 , 0 );
    --setScaleKey( SP_dodge + 32, 1, 1.41, 1.41 );
    --setRotateKey( SP_dodge + 32, 1, 2.5 );
    
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    setMoveKey( SP_dodge + 10,   0,-2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 書き文字エントリー ** --
ctZuo = entryEffectLife( spep_2 -3 + 16, 10012, 32, 0x100, -1, 0, 138.4, 175.6 ); --ズオッ
setEffMoveKey( spep_2 -3 + 16, ctZuo, 138.4, 175.6 , 0 );
setEffMoveKey( spep_2 -3 + 18, ctZuo, 135.2, 195.7 , 0 );
setEffMoveKey( spep_2 -3 + 20, ctZuo, 105.5, 221.2 , 0 );
setEffMoveKey( spep_2 -3 + 22, ctZuo, 109.2, 239.8 , 0 );
setEffMoveKey( spep_2 -3 + 24, ctZuo, 72.8, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 26, ctZuo, 83.2, 284 , 0 );
setEffMoveKey( spep_2 -3 + 28, ctZuo, 56.4, 289.6 , 0 );
setEffMoveKey( spep_2 -3 + 30, ctZuo, 86.3, 283.3 , 0 );
setEffMoveKey( spep_2 -3 + 32, ctZuo, 56.3, 289.7 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctZuo, 89.3, 282.7 , 0 );
setEffMoveKey( spep_2 -3 + 36, ctZuo, 56.3, 289.6 , 0 );
setEffMoveKey( spep_2 -3 + 38, ctZuo, 92.4, 282 , 0 );
setEffMoveKey( spep_2 -3 + 40, ctZuo, 56.4, 289.7 , 0 );
setEffMoveKey( spep_2 -3 + 42, ctZuo, 95.5, 281.4 , 0 );
setEffMoveKey( spep_2 -3 + 44, ctZuo, 56.3, 289.6 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctZuo, 98.5, 280.8 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctZuo, 100, 280.4 , 0 );

setEffScaleKey( spep_2 -3 + 16, ctZuo, 1, 1 );
setEffScaleKey( spep_2 -3 + 18, ctZuo, 1.35, 1.35 );
setEffScaleKey( spep_2 -3 + 20, ctZuo, 1.7, 1.7 );
setEffScaleKey( spep_2 -3 + 22, ctZuo, 2.05, 2.05 );
setEffScaleKey( spep_2 -3 + 24, ctZuo, 2.4, 2.4 );
setEffScaleKey( spep_2 -3 + 26, ctZuo, 2.75, 2.75 );
setEffScaleKey( spep_2 -3 + 28, ctZuo, 2.9, 2.9 );
setEffScaleKey( spep_2 -3 + 30, ctZuo, 3.06, 3.06 );
setEffScaleKey( spep_2 -3 + 32, ctZuo, 3.22, 3.22 );
setEffScaleKey( spep_2 -3 + 34, ctZuo, 3.37, 3.37 );
setEffScaleKey( spep_2 -3 + 36, ctZuo, 3.53, 3.53 );
setEffScaleKey( spep_2 -3 + 38, ctZuo, 3.68, 3.68 );
setEffScaleKey( spep_2 -3 + 40, ctZuo, 3.84, 3.84 );
setEffScaleKey( spep_2 -3 + 42, ctZuo, 4, 4 );
setEffScaleKey( spep_2 -3 + 44, ctZuo, 4.15, 4.15 );
setEffScaleKey( spep_2 -3 + 46, ctZuo, 4.31, 4.31 );
setEffScaleKey( spep_2 -3 + 48, ctZuo, 4.47, 4.47 );

setEffRotateKey( spep_2 -3 + 16, ctZuo, -24.8 );
setEffRotateKey( spep_2 -3 + 18, ctZuo, -25 );
setEffRotateKey( spep_2 -3 + 48, ctZuo, -25 );

setEffAlphaKey( spep_2 -3 + 16, ctZuo, 255 );
setEffAlphaKey( spep_2 -3 + 36, ctZuo, 255 );
setEffAlphaKey( spep_2 -3 + 38, ctZuo, 212 );
setEffAlphaKey( spep_2 -3 + 40, ctZuo, 170 );
setEffAlphaKey( spep_2 -3 + 42, ctZuo, 128 );
setEffAlphaKey( spep_2 -3 + 44, ctZuo, 85 );
setEffAlphaKey( spep_2 -3 + 46, ctZuo, 43 );
setEffAlphaKey( spep_2 -3 + 48, ctZuo, 0 );

-- ** 白フェード ** --
entryFade( spep_2 + 62, 12, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_2 + 40, 1027 );
setSeVolume( spep_2 + 40, 1027, 56 );
se_1177 = playSe( spep_2 + 40, 1177 );
setSeVolume( spep_2 + 40, 1177, 79 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 76;

------------------------------------------------------
-- ビームヒット
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); --ビームヒット(ef_003)
setEffMoveKey( spep_3 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 56, hit_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 56, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 56, hit_f, 255 );

hit_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 ); --ビームヒット・背景(ef_005)
setEffMoveKey( spep_3 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 56, hit_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 56, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 56, hit_b, 255 );

-- ** 敵の動き ** --
setDisp( spep_3 -3 + 3, 1, 1 );
setDisp( spep_3 -3 + 58, 1, 0 );
changeAnime( spep_3 -3 + 3, 1, 104 );
changeAnime( spep_3 -3 + 42, 1, 108 );

setMoveKey( spep_3 -3 + 3, 1, 297.9, -18.1 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, 302, -11 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 294, -14 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 296, -10.7 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 287, -14 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 288.6, -11 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 279, -14 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 279.9, -9.9 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 270, -13.9 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 270.4, -10.3 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 259.8, -13.9 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 259.6, -10.1 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 248.6, -13.8 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 248.3, -9.8 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 236.3, -13.8 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 235, -10 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 223, -13.7 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 221, -10.7 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 208.6, -13.7 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 206.3, -10.2 , 0 );
setMoveKey( spep_3 -3 + 41, 1, 193.1, -13.6 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 158.1, 18.7 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 204.8, -16.2 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 231.5, -2.6 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 269, 2.2 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 313.9, 12.8 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 344.6, 16.5 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 381.6, 25.6 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 403.7, 27.5 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 432.5, 35 , 0 );

setScaleKey( spep_3 -3 + 3, 1, 1, 1 );
--setScaleKey( spep_3 -3 + 2, 1, 1.025, 1.025 );
setScaleKey( spep_3 -3 + 4, 1, 1.025, 1.025 );
setScaleKey( spep_3 -3 + 6, 1, 1.05, 1.05 );
setScaleKey( spep_3 -3 + 8, 1, 1.05, 1.05 );
setScaleKey( spep_3 -3 + 10, 1, 1.075, 1.075 );
setScaleKey( spep_3 -3 + 12, 1, 1.1, 1.1 );
setScaleKey( spep_3 -3 + 14, 1, 1.125, 1.125 );
setScaleKey( spep_3 -3 + 16, 1, 1.15, 1.15 );
setScaleKey( spep_3 -3 + 18, 1, 1.175, 1.175 );
setScaleKey( spep_3 -3 + 20, 1, 1.2, 1.2 );
setScaleKey( spep_3 -3 + 22, 1, 1.225, 1.225 );
setScaleKey( spep_3 -3 + 24, 1, 1.25, 1.25 );
setScaleKey( spep_3 -3 + 26, 1, 1.275, 1.275 );
setScaleKey( spep_3 -3 + 28, 1, 1.3, 1.3 );
setScaleKey( spep_3 -3 + 30, 1, 1.35, 1.35 );
setScaleKey( spep_3 -3 + 32, 1, 1.375, 1.375 );
setScaleKey( spep_3 -3 + 34, 1, 1.4, 1.4 );
setScaleKey( spep_3 -3 + 36, 1, 1.45, 1.45 );
setScaleKey( spep_3 -3 + 38, 1, 1.475, 1.475 );
setScaleKey( spep_3 -3 + 41, 1, 1.525, 1.525 );
setScaleKey( spep_3 -3 + 42, 1, 1.025, 1.025 );
setScaleKey( spep_3 -3 + 44, 1, 1.075, 1.125 );
setScaleKey( spep_3 -3 + 46, 1, 1.05, 1.05 );
setScaleKey( spep_3 -3 + 48, 1, 0.9, 0.9 );
setScaleKey( spep_3 -3 + 50, 1, 0.75, 0.75 );
setScaleKey( spep_3 -3 + 52, 1, 0.625, 0.625 );
setScaleKey( spep_3 -3 + 54, 1, 0.5, 0.5 );
setScaleKey( spep_3 -3 + 56, 1, 0.4, 0.4 );
setScaleKey( spep_3 -3 + 58, 1, 0.325, 0.325 );

setRotateKey( spep_3 -3 + 3, 1, 0 );
setRotateKey( spep_3 -3 + 41, 1, 0 );
setRotateKey( spep_3 -3 + 42, 1, 23.7 );
setRotateKey( spep_3 -3 + 44, 1, -16 );
setRotateKey( spep_3 -3 + 46, 1, -16.2 );
setRotateKey( spep_3 -3 + 48, 1, -13.4 );
setRotateKey( spep_3 -3 + 50, 1, -10.9 );
setRotateKey( spep_3 -3 + 52, 1, -8.6 );
setRotateKey( spep_3 -3 + 54, 1, -6.6 );
setRotateKey( spep_3 -3 + 56, 1, -4.8 );
setRotateKey( spep_3 -3 + 58, 1, -3.4 );

-- ** 書き文字エントリー ** --
ctZudododo = entryEffectLife( spep_3 -3 + 3, 10014, 58 -3, 0x100, -1, 0, 42.1, 338 ); --ズドドドッ
setEffShake( spep_3 -3 + 3, ctZudododo, 58 -3, 20 );

setEffMoveKey( spep_3 -3 + 3, ctZudododo, 42.1, 338 , 0 );
setEffMoveKey( spep_3 -3 + 58, ctZudododo, 42.1, 338 , 0 );

setEffScaleKey( spep_3 -3 + 3, ctZudododo, 2.6, 2.6 );
setEffScaleKey( spep_3 -3 + 58, ctZudododo, 2.6, 2.6 );

setEffRotateKey( spep_3 -3 + 3, ctZudododo, 72 );
setEffRotateKey( spep_3 -3 + 58, ctZudododo, 72 );

setEffAlphaKey( spep_3 -3 + 3, ctZudododo, 255 );
setEffAlphaKey( spep_3 -3 + 58, ctZudododo, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_3 -3 + 3, 921, 58 -3, 0x80, -1, 0, -64, 26 );

setEffMoveKey( spep_3 -3 + 3, ryusen1, -64, 26 , 0 );
setEffMoveKey( spep_3 -3 + 58, ryusen1, -64, 26 , 0 );

setEffScaleKey( spep_3 -3 + 3, ryusen1, 1.14, 1.12 );
setEffScaleKey( spep_3 -3 + 58, ryusen1, 1.14, 1.12 );

setEffRotateKey( spep_3 -3 + 3, ryusen1, 0 );
setEffRotateKey( spep_3 -3 + 58, ryusen1, 0 );

setEffAlphaKey( spep_3 -3 + 3, ryusen1, 255 );
setEffAlphaKey( spep_3 -3 + 58, ryusen1, 255 );

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 40, 14, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 58, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
playSe( spep_3 + 40, 1017 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 56;

------------------------------------------------------
-- 敵吹っ飛びシーン(112F)
------------------------------------------------------

haikei = entryEffectLife( spep_4 + 0, SP_06, 112, 0x80, -1, 0, 0, 0 ); --背景(ef_006)
setEffMoveKey( spep_4 + 0, haikei, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 112, haikei, 0, 0, 0 ); 

setEffScaleKey( spep_4 + 0, haikei, 1.0, 1.0 );
setEffScaleKey( spep_4 + 112, haikei, 1.0, 1.0 );

setEffRotateKey( spep_4 + 0, haikei, 0 );
setEffRotateKey( spep_4 + 112, haikei, 0 );

setEffAlphaKey( spep_4 + 0, haikei, 255 );
setEffAlphaKey( spep_4 + 112, haikei, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_4 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_4 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_4 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 112, bakuhatsu, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_4 + 2, 1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_4 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_4 + 112, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_4 + 112, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 112, hibiware, 0 );

setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 112, hibiware, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen4, 0 );
setEffRotateKey( spep_4 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_4 + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_4 + 112, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_4 + 112, shuchusen5, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen5, 0 );
setEffRotateKey( spep_4 + 112, shuchusen5, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 112, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.5, 3.5 );
setEffScaleKey( spep_4 + 112, ctga, 3.5, 3.5 );

setEffRotateKey( spep_4 + 14, ctga, -10.9 );
setEffRotateKey( spep_4 + 15, ctga, -10.9 );
setEffRotateKey( spep_4 + 16, ctga, -14.9 );
setEffRotateKey( spep_4 + 17, ctga, -14.9 );
setEffRotateKey( spep_4 + 18, ctga, -10.9 );
setEffRotateKey( spep_4 + 19, ctga, -10.9 );
setEffRotateKey( spep_4 + 20, ctga, -14.9 );
setEffRotateKey( spep_4 + 21, ctga, -14.9 );
setEffRotateKey( spep_4 + 22, ctga, -10.9 );
setEffRotateKey( spep_4 + 23, ctga, -10.9 );
setEffRotateKey( spep_4 + 24, ctga, -14.9 );
setEffRotateKey( spep_4 + 25, ctga, -14.9 );
setEffRotateKey( spep_4 + 26, ctga, -10.9 );
setEffRotateKey( spep_4 + 27, ctga, -10.9 );
setEffRotateKey( spep_4 + 28, ctga, -14.9 );
setEffRotateKey( spep_4 + 112, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 112, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_4 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_4 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_4 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_4 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_4 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_4 + 122, 1, -45.3, -142.1 , 0 );

a = 0.8;

setScaleKey( spep_4 + 0, 1, 0.22 * a, 0.22 * a );
setScaleKey( spep_4 + 2, 1, 0.35 * a, 0.35 * a );
setScaleKey( spep_4 + 4, 1, 0.51 * a, 0.51 * a );
setScaleKey( spep_4 + 6, 1, 0.7 * a, 0.7 * a );
setScaleKey( spep_4 + 8, 1, 0.93 * a, 0.93 * a );
setScaleKey( spep_4 + 10, 1, 1.2 * a, 1.2 * a );
setScaleKey( spep_4 + 12, 1, 1.5 * a, 1.5 * a );
setScaleKey( spep_4 + 14, 1, 1.6 * a, 1.6 * a );
setScaleKey( spep_4 + 16, 1, 1.5 * a, 1.5 * a );
setScaleKey( spep_4 + 18, 1, 1.6 * a, 1.6 * a );
setScaleKey( spep_4 + 20, 1, 1.5 * a, 1.5 * a );
setScaleKey( spep_4 + 22, 1, 1.6 * a, 1.6 * a );
setScaleKey( spep_4 + 24, 1, 1.5 * a, 1.5 * a );
setScaleKey( spep_4 + 26, 1, 1.6 * a, 1.6 * a );
setScaleKey( spep_4 + 122, 1, 1.6 * a, 1.6 * a );

setRotateKey( spep_4 + 0, 1, -40 );
setRotateKey( spep_4 + 1, 1, -40 );
setRotateKey( spep_4 + 2, 1, 80 );
setRotateKey( spep_4 + 3, 1, 80 );
setRotateKey( spep_4 + 4, 1, 200 );
setRotateKey( spep_4 + 5, 1, 200 );
setRotateKey( spep_4 + 6, 1, 360 );
setRotateKey( spep_4 + 7, 1, 360 );
setRotateKey( spep_4 + 8, 1, 558 );
setRotateKey( spep_4 + 9, 1, 558 );
setRotateKey( spep_4 + 10, 1, 425 );
setRotateKey( spep_4 + 11, 1, 425 );
setRotateKey( spep_4 + 12, 1, -40 );
setRotateKey( spep_4 + 122, 1, -40 );

-- ** 音 ** --
stopSe( spep_4 + 8, se_1177, 0 );
playSe( spep_4 + 8, 1023 );
playSe( spep_4 + 22, 1054 );

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 6 );
endPhase( spep_4 + 106 );

else 

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- べジータズームアップ
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
zoomup = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); --べジータズームアップ(ef_001)
setEffMoveKey( spep_0 + 0, zoomup, 0, 0, 0 );
setEffMoveKey( spep_0 + 96, zoomup, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, zoomup, -1.0, 1.0 );
setEffScaleKey( spep_0 + 96, zoomup, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, zoomup, 0 );
setEffRotateKey( spep_0 + 96, zoomup, 0 );
setEffAlphaKey( spep_0 + 0, zoomup, 255 );
setEffAlphaKey( spep_0 + 96, zoomup, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 10, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 10, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 -30 + 52, 190006, 72, 0x100, -1, 0, 0, 530 );-- ゴゴゴゴ

setEffMoveKey(  spep_0 -30 + 52,  ctgogo, 0, 530 );
setEffMoveKey(  spep_0 -30 + 124,  ctgogo, 0, 530 );

setEffAlphaKey( spep_0 -30 + 52, ctgogo, 0 );
setEffAlphaKey( spep_0 -30 + 53, ctgogo, 255 );
setEffAlphaKey( spep_0 -30 + 54, ctgogo, 255 );
setEffAlphaKey( spep_0 -30 + 118, ctgogo, 255 );
setEffAlphaKey( spep_0 -30 + 120, ctgogo, 191 );
setEffAlphaKey( spep_0 -30 + 122, ctgogo, 112 );
setEffAlphaKey( spep_0 -30 + 124, ctgogo, 64 );

setEffRotateKey( spep_0 -30 + 52,  ctgogo,  0);
setEffRotateKey( spep_0 -30 + 124,  ctgogo,  0);

setEffScaleKey( spep_0 -30 + 52,  ctgogo,  -0.7,  0.7);
setEffScaleKey( spep_0 -30 + 114,  ctgogo,  -0.7,  0.7);
setEffScaleKey( spep_0 -30 + 124,  ctgogo, -1.07, 1.07 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0, 906, 96, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 + 0, shuchusen1, 96, 20 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.2, 1.1 );
setEffScaleKey( spep_0 + 96, shuchusen1, 1.2, 1.1 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 96, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 96, shuchusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 98, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 82, 12, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_0 + 0, 08 );
setSeVolume( spep_0 + 0, 08, 63 );
playSe( spep_0 + 13, 1018 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 96;

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
playSe( spep_1 + 0, 1035 );
se_1037 = playSe( spep_1 + 72, 1037 );
setSeVolume( spep_1 + 72, 1037, 0 );

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- ビーム発射
------------------------------------------------------
-- ** エフェクト等 ** --
hassha_f = entryEffect( spep_2 + 0, SP_02e, 0x100, -1, 0, 0, 0, 2 ); --ビーム発射(ef_002)
setEffMoveKey( spep_2 + 0, hassha_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 76, hassha_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, hassha_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76, hassha_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hassha_f, 0 );
setEffRotateKey( spep_2 + 76, hassha_f, 0 );
setEffAlphaKey( spep_2 + 0, hassha_f, 255 );
setEffAlphaKey( spep_2 + 76, hassha_f, 255 );

hassha_b = entryEffect( spep_2 + 0, SP_04e, 0x80, -1, 0, 0, 0 ); --ビーム発射・背景(ef_004)
setEffMoveKey( spep_2 + 0, hassha_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 76, hassha_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, hassha_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76, hassha_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hassha_b, 0 );
setEffRotateKey( spep_2 + 76, hassha_b, 0 );
setEffAlphaKey( spep_2 + 0, hassha_b, 255 );
setEffAlphaKey( spep_2 + 76, hassha_b, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 -3 + 3, 906, 20 -3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2 -3 + 3, shuchusen2, 20 -3, 20 );

setEffMoveKey( spep_2 -3 + 3, shuchusen2, 0, 0, 0 );
setEffMoveKey( spep_2 -3 + 20, shuchusen2, 0, 0, 0 );

setEffScaleKey( spep_2 -3 + 3, shuchusen2, 1.36, 1.36 );
setEffScaleKey( spep_2 -3 + 20, shuchusen2, 1.36, 1.36 );

setEffRotateKey( spep_2 -3 + 3, shuchusen2, 180 );
setEffRotateKey( spep_2 -3 + 20, shuchusen2, 180 );

setEffAlphaKey( spep_2 -3 + 3, shuchusen2, 255 );
setEffAlphaKey( spep_2 -3 + 12, shuchusen2, 255 );
setEffAlphaKey( spep_2 -3 + 14, shuchusen2, 191 );
setEffAlphaKey( spep_2 -3 + 16, shuchusen2, 128 );
setEffAlphaKey( spep_2 -3 + 18, shuchusen2, 64 );
setEffAlphaKey( spep_2 -3 + 20, shuchusen2, 0 );

shuchusen3 = entryEffectLife( spep_2 -3 + 22, 906, 56, 0x100, -1, 0, -500, 3.9, 1 );
setEffShake( spep_2 -3 + 22, shuchusen3, 56, 20 );

setEffMoveKey( spep_2 -3 + 22, shuchusen3, -500, 3.9 , 0 );
setEffMoveKey( spep_2 -3 + 78, shuchusen3, -500, 3.9 , 0 );

setEffScaleKey( spep_2 -3 + 22, shuchusen3, 2.09, 1.06 );
setEffScaleKey( spep_2 -3 + 78, shuchusen3, 2.09, 1.06 );

setEffRotateKey( spep_2 -3 + 22, shuchusen3, -179.3 );
setEffRotateKey( spep_2 -3 + 78, shuchusen3, -179.3 );

setEffAlphaKey( spep_2 -3 + 22, shuchusen3, 255 );
setEffAlphaKey( spep_2 -3 + 78, shuchusen3, 255 );

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 78, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
se_0049 = playSe( spep_2 + 7, 49 );
setSeVolume( spep_2 + 7, 49, 112 );
setSeVolume( spep_2 + 7, 1037, 63.00 );
stopSe( spep_2 + 44, se_1037, 0 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, se_0049, 0 );
    stopSe( SP_dodge - 12, se_1037, 0 );
    pauseAll( SP_dodge, 67 );
    

    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,-1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );   -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100, -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);

    --敵の固定
    --setMoveKey( SP_dodge + 32, 1, 52.3, 0.3 , 0 );
    --setScaleKey( SP_dodge + 32, 1, 1.41, 1.41 );
    --setRotateKey( SP_dodge + 32, 1, 2.5 );
    
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    setMoveKey( SP_dodge + 10,   0,-2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 書き文字エントリー ** --
ctZuo = entryEffectLife( spep_2 -3 + 16, 10012, 32, 0x100, -1, 0, 138.4, 175.6 ); --ズオッ
setEffMoveKey( spep_2 -3 + 16, ctZuo, 138.4, 175.6 , 0 );
setEffMoveKey( spep_2 -3 + 18, ctZuo, 135.2, 195.7 , 0 );
setEffMoveKey( spep_2 -3 + 20, ctZuo, 105.5, 221.2 , 0 );
setEffMoveKey( spep_2 -3 + 22, ctZuo, 109.2, 239.8 , 0 );
setEffMoveKey( spep_2 -3 + 24, ctZuo, 72.8, 266.8 , 0 );
setEffMoveKey( spep_2 -3 + 26, ctZuo, 83.2, 284 , 0 );
setEffMoveKey( spep_2 -3 + 28, ctZuo, 56.4, 289.6 , 0 );
setEffMoveKey( spep_2 -3 + 30, ctZuo, 86.3, 283.3 , 0 );
setEffMoveKey( spep_2 -3 + 32, ctZuo, 56.3, 289.7 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctZuo, 89.3, 282.7 , 0 );
setEffMoveKey( spep_2 -3 + 36, ctZuo, 56.3, 289.6 , 0 );
setEffMoveKey( spep_2 -3 + 38, ctZuo, 92.4, 282 , 0 );
setEffMoveKey( spep_2 -3 + 40, ctZuo, 56.4, 289.7 , 0 );
setEffMoveKey( spep_2 -3 + 42, ctZuo, 95.5, 281.4 , 0 );
setEffMoveKey( spep_2 -3 + 44, ctZuo, 56.3, 289.6 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctZuo, 98.5, 280.8 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctZuo, 100, 280.4 , 0 );

setEffScaleKey( spep_2 -3 + 16, ctZuo, 1, 1 );
setEffScaleKey( spep_2 -3 + 18, ctZuo, 1.35, 1.35 );
setEffScaleKey( spep_2 -3 + 20, ctZuo, 1.7, 1.7 );
setEffScaleKey( spep_2 -3 + 22, ctZuo, 2.05, 2.05 );
setEffScaleKey( spep_2 -3 + 24, ctZuo, 2.4, 2.4 );
setEffScaleKey( spep_2 -3 + 26, ctZuo, 2.75, 2.75 );
setEffScaleKey( spep_2 -3 + 28, ctZuo, 2.9, 2.9 );
setEffScaleKey( spep_2 -3 + 30, ctZuo, 3.06, 3.06 );
setEffScaleKey( spep_2 -3 + 32, ctZuo, 3.22, 3.22 );
setEffScaleKey( spep_2 -3 + 34, ctZuo, 3.37, 3.37 );
setEffScaleKey( spep_2 -3 + 36, ctZuo, 3.53, 3.53 );
setEffScaleKey( spep_2 -3 + 38, ctZuo, 3.68, 3.68 );
setEffScaleKey( spep_2 -3 + 40, ctZuo, 3.84, 3.84 );
setEffScaleKey( spep_2 -3 + 42, ctZuo, 4, 4 );
setEffScaleKey( spep_2 -3 + 44, ctZuo, 4.15, 4.15 );
setEffScaleKey( spep_2 -3 + 46, ctZuo, 4.31, 4.31 );
setEffScaleKey( spep_2 -3 + 48, ctZuo, 4.47, 4.47 );

setEffRotateKey( spep_2 -3 + 16, ctZuo, -15 -24.8 );
setEffRotateKey( spep_2 -3 + 18, ctZuo, -15 -25 );
setEffRotateKey( spep_2 -3 + 48, ctZuo, -15 -25 );

setEffAlphaKey( spep_2 -3 + 16, ctZuo, 255 );
setEffAlphaKey( spep_2 -3 + 36, ctZuo, 255 );
setEffAlphaKey( spep_2 -3 + 38, ctZuo, 212 );
setEffAlphaKey( spep_2 -3 + 40, ctZuo, 170 );
setEffAlphaKey( spep_2 -3 + 42, ctZuo, 128 );
setEffAlphaKey( spep_2 -3 + 44, ctZuo, 85 );
setEffAlphaKey( spep_2 -3 + 46, ctZuo, 43 );
setEffAlphaKey( spep_2 -3 + 48, ctZuo, 0 );

-- ** 白フェード ** --
entryFade( spep_2 + 62, 12, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_2 + 40, 1027 );
setSeVolume( spep_2 + 40, 1027, 56 );
se_1177 = playSe( spep_2 + 40, 1177 );
setSeVolume( spep_2 + 40, 1177, 79 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 76;

------------------------------------------------------
-- ビームヒット
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); --ビームヒット(ef_003)
setEffMoveKey( spep_3 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 56, hit_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 56, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 56, hit_f, 255 );

hit_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 ); --ビームヒット・背景(ef_005)
setEffMoveKey( spep_3 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 56, hit_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 56, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 56, hit_b, 255 );

-- ** 敵の動き ** --
setDisp( spep_3 -3 + 3, 1, 1 );
setDisp( spep_3 -3 + 58, 1, 0 );
changeAnime( spep_3 -3 + 3, 1, 104 );
changeAnime( spep_3 -3 + 42, 1, 108 );

setMoveKey( spep_3 -3 + 3, 1, 297.9, -18.1 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, 302, -11 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 294, -14 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 296, -10.7 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 287, -14 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 288.6, -11 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 279, -14 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 279.9, -9.9 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 270, -13.9 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 270.4, -10.3 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 259.8, -13.9 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 259.6, -10.1 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 248.6, -13.8 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 248.3, -9.8 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 236.3, -13.8 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 235, -10 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 223, -13.7 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 221, -10.7 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 208.6, -13.7 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 206.3, -10.2 , 0 );
setMoveKey( spep_3 -3 + 41, 1, 193.1, -13.6 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 158.1, 18.7 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 204.8, -16.2 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 231.5, -2.6 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 269, 2.2 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 313.9, 12.8 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 344.6, 16.5 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 381.6, 25.6 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 403.7, 27.5 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 432.5, 35 , 0 );

setScaleKey( spep_3 -3 + 3, 1, 1, 1 );
--setScaleKey( spep_3 -3 + 2, 1, 1.025, 1.025 );
setScaleKey( spep_3 -3 + 4, 1, 1.025, 1.025 );
setScaleKey( spep_3 -3 + 6, 1, 1.05, 1.05 );
setScaleKey( spep_3 -3 + 8, 1, 1.05, 1.05 );
setScaleKey( spep_3 -3 + 10, 1, 1.075, 1.075 );
setScaleKey( spep_3 -3 + 12, 1, 1.1, 1.1 );
setScaleKey( spep_3 -3 + 14, 1, 1.125, 1.125 );
setScaleKey( spep_3 -3 + 16, 1, 1.15, 1.15 );
setScaleKey( spep_3 -3 + 18, 1, 1.175, 1.175 );
setScaleKey( spep_3 -3 + 20, 1, 1.2, 1.2 );
setScaleKey( spep_3 -3 + 22, 1, 1.225, 1.225 );
setScaleKey( spep_3 -3 + 24, 1, 1.25, 1.25 );
setScaleKey( spep_3 -3 + 26, 1, 1.275, 1.275 );
setScaleKey( spep_3 -3 + 28, 1, 1.3, 1.3 );
setScaleKey( spep_3 -3 + 30, 1, 1.35, 1.35 );
setScaleKey( spep_3 -3 + 32, 1, 1.375, 1.375 );
setScaleKey( spep_3 -3 + 34, 1, 1.4, 1.4 );
setScaleKey( spep_3 -3 + 36, 1, 1.45, 1.45 );
setScaleKey( spep_3 -3 + 38, 1, 1.475, 1.475 );
setScaleKey( spep_3 -3 + 41, 1, 1.525, 1.525 );
setScaleKey( spep_3 -3 + 42, 1, 1.025, 1.025 );
setScaleKey( spep_3 -3 + 44, 1, 1.075, 1.125 );
setScaleKey( spep_3 -3 + 46, 1, 1.05, 1.05 );
setScaleKey( spep_3 -3 + 48, 1, 0.9, 0.9 );
setScaleKey( spep_3 -3 + 50, 1, 0.75, 0.75 );
setScaleKey( spep_3 -3 + 52, 1, 0.625, 0.625 );
setScaleKey( spep_3 -3 + 54, 1, 0.5, 0.5 );
setScaleKey( spep_3 -3 + 56, 1, 0.4, 0.4 );
setScaleKey( spep_3 -3 + 58, 1, 0.325, 0.325 );

setRotateKey( spep_3 -3 + 3, 1, 0 );
setRotateKey( spep_3 -3 + 41, 1, 0 );
setRotateKey( spep_3 -3 + 42, 1, 23.7 );
setRotateKey( spep_3 -3 + 44, 1, -16 );
setRotateKey( spep_3 -3 + 46, 1, -16.2 );
setRotateKey( spep_3 -3 + 48, 1, -13.4 );
setRotateKey( spep_3 -3 + 50, 1, -10.9 );
setRotateKey( spep_3 -3 + 52, 1, -8.6 );
setRotateKey( spep_3 -3 + 54, 1, -6.6 );
setRotateKey( spep_3 -3 + 56, 1, -4.8 );
setRotateKey( spep_3 -3 + 58, 1, -3.4 );

-- ** 書き文字エントリー ** --
ctZudododo = entryEffectLife( spep_3 -3 + 3, 10014, 58 -3, 0x100, -1, 0, 42.1, 338 ); --ズドドドッ
setEffShake( spep_3 -3 + 3, ctZudododo, 58 -3, 20 );

setEffMoveKey( spep_3 -3 + 3, ctZudododo, 42.1, 338 , 0 );
setEffMoveKey( spep_3 -3 + 58, ctZudododo, 42.1, 338 , 0 );

setEffScaleKey( spep_3 -3 + 3, ctZudododo, 2.6, 2.6 );
setEffScaleKey( spep_3 -3 + 58, ctZudododo, 2.6, 2.6 );

setEffRotateKey( spep_3 -3 + 3, ctZudododo, -10 );
setEffRotateKey( spep_3 -3 + 58, ctZudododo, -10 );

setEffAlphaKey( spep_3 -3 + 3, ctZudododo, 255 );
setEffAlphaKey( spep_3 -3 + 58, ctZudododo, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_3 -3 + 3, 921, 58 -3, 0x80, -1, 0, -64, 26 );

setEffMoveKey( spep_3 -3 + 3, ryusen1, -64, 26 , 0 );
setEffMoveKey( spep_3 -3 + 58, ryusen1, -64, 26 , 0 );

setEffScaleKey( spep_3 -3 + 3, ryusen1, 1.14, 1.12 );
setEffScaleKey( spep_3 -3 + 58, ryusen1, 1.14, 1.12 );

setEffRotateKey( spep_3 -3 + 3, ryusen1, 0 );
setEffRotateKey( spep_3 -3 + 58, ryusen1, 0 );

setEffAlphaKey( spep_3 -3 + 3, ryusen1, 255 );
setEffAlphaKey( spep_3 -3 + 58, ryusen1, 255 );

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 40, 14, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 58, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
playSe( spep_3 + 40, 1017 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 56;

------------------------------------------------------
-- 敵吹っ飛びシーン(112F)
------------------------------------------------------

haikei = entryEffectLife( spep_4 + 0, SP_06, 112, 0x80, -1, 0, 0, 0 ); --背景(ef_006)
setEffMoveKey( spep_4 + 0, haikei, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 112, haikei, 0, 0, 0 ); 

setEffScaleKey( spep_4 + 0, haikei, 1.0, 1.0 );
setEffScaleKey( spep_4 + 112, haikei, 1.0, 1.0 );

setEffRotateKey( spep_4 + 0, haikei, 0 );
setEffRotateKey( spep_4 + 112, haikei, 0 );

setEffAlphaKey( spep_4 + 0, haikei, 255 );
setEffAlphaKey( spep_4 + 112, haikei, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_4 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_4 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_4 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 112, bakuhatsu, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_4 + 2, 1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_4 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_4 + 112, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_4 + 112, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 112, hibiware, 0 );

setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 112, hibiware, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen4, 0 );
setEffRotateKey( spep_4 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_4 + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_4 + 112, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_4 + 112, shuchusen5, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen5, 0 );
setEffRotateKey( spep_4 + 112, shuchusen5, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 112, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.5, 3.5 );
setEffScaleKey( spep_4 + 112, ctga, 3.5, 3.5 );

setEffRotateKey( spep_4 + 14, ctga, -10.9 );
setEffRotateKey( spep_4 + 15, ctga, -10.9 );
setEffRotateKey( spep_4 + 16, ctga, -14.9 );
setEffRotateKey( spep_4 + 17, ctga, -14.9 );
setEffRotateKey( spep_4 + 18, ctga, -10.9 );
setEffRotateKey( spep_4 + 19, ctga, -10.9 );
setEffRotateKey( spep_4 + 20, ctga, -14.9 );
setEffRotateKey( spep_4 + 21, ctga, -14.9 );
setEffRotateKey( spep_4 + 22, ctga, -10.9 );
setEffRotateKey( spep_4 + 23, ctga, -10.9 );
setEffRotateKey( spep_4 + 24, ctga, -14.9 );
setEffRotateKey( spep_4 + 25, ctga, -14.9 );
setEffRotateKey( spep_4 + 26, ctga, -10.9 );
setEffRotateKey( spep_4 + 27, ctga, -10.9 );
setEffRotateKey( spep_4 + 28, ctga, -14.9 );
setEffRotateKey( spep_4 + 112, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 112, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_4 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_4 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_4 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_4 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_4 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_4 + 122, 1, -45.3, -142.1 , 0 );

a = 0.8;

setScaleKey( spep_4 + 0, 1, 0.22 * a, 0.22 * a );
setScaleKey( spep_4 + 2, 1, 0.35 * a, 0.35 * a );
setScaleKey( spep_4 + 4, 1, 0.51 * a, 0.51 * a );
setScaleKey( spep_4 + 6, 1, 0.7 * a, 0.7 * a );
setScaleKey( spep_4 + 8, 1, 0.93 * a, 0.93 * a );
setScaleKey( spep_4 + 10, 1, 1.2 * a, 1.2 * a );
setScaleKey( spep_4 + 12, 1, 1.5 * a, 1.5 * a );
setScaleKey( spep_4 + 14, 1, 1.6 * a, 1.6 * a );
setScaleKey( spep_4 + 16, 1, 1.5 * a, 1.5 * a );
setScaleKey( spep_4 + 18, 1, 1.6 * a, 1.6 * a );
setScaleKey( spep_4 + 20, 1, 1.5 * a, 1.5 * a );
setScaleKey( spep_4 + 22, 1, 1.6 * a, 1.6 * a );
setScaleKey( spep_4 + 24, 1, 1.5 * a, 1.5 * a );
setScaleKey( spep_4 + 26, 1, 1.6 * a, 1.6 * a );
setScaleKey( spep_4 + 122, 1, 1.6 * a, 1.6 * a );

setRotateKey( spep_4 + 0, 1, -40 );
setRotateKey( spep_4 + 1, 1, -40 );
setRotateKey( spep_4 + 2, 1, 80 );
setRotateKey( spep_4 + 3, 1, 80 );
setRotateKey( spep_4 + 4, 1, 200 );
setRotateKey( spep_4 + 5, 1, 200 );
setRotateKey( spep_4 + 6, 1, 360 );
setRotateKey( spep_4 + 7, 1, 360 );
setRotateKey( spep_4 + 8, 1, 558 );
setRotateKey( spep_4 + 9, 1, 558 );
setRotateKey( spep_4 + 10, 1, 425 );
setRotateKey( spep_4 + 11, 1, 425 );
setRotateKey( spep_4 + 12, 1, -40 );
setRotateKey( spep_4 + 122, 1, -40 );

-- ** 音 ** --
stopSe( spep_4 + 8, se_1177, 0 );
playSe( spep_4 + 8, 1023 );
playSe( spep_4 + 22, 1054 );

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 6 );
endPhase( spep_4 + 106 );

end