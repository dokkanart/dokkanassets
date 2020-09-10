--1015220:超サイヤ人キャベ
--sp_effect_a1_00211

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
SP_01 = 154707; --導入、突進
SP_02 = 154708; --ラッシュ、ボディブロー：キャラ
SP_03 = 154709; --ラッシュ、ボディブロー：背景
SP_04 = 154710; --ギャリック砲溜め
SP_05 = 154711; --ギャリック砲発射
SP_06 = 154712; --ギャリック砲敵接近；気弾
SP_07 = 154713; --ギャリック砲敵接近；背景
SP_08 = 154714; --爆発

--敵側
SP_01r = 154717; --導入、突進：反転
SP_02r = 154718; --ラッシュ、ボディブロー：キャラ：反転
SP_05r = 154716; --ギャリック砲発射反転

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
-- 導入、突進
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tosshin = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); --導入、突進(ef_001)
setEffMoveKey( spep_0 + 0, tosshin, 0, 0, 0 );
setEffMoveKey( spep_0 + 176, tosshin, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tosshin, 1.0, 1.0 );
setEffScaleKey( spep_0 + 176, tosshin, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tosshin, 0 );
setEffRotateKey( spep_0 + 176, tosshin, 0 );
setEffAlphaKey( spep_0 + 0, tosshin, 255 );
setEffAlphaKey( spep_0 + 176, tosshin, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 22, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 22, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 -18 + 52, 190006, 72, 0x100, -1, 0, 120, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 -18 + 52,  ctgogo,  120,  510);
setEffMoveKey(  spep_0 -18 + 124,  ctgogo,  120,  510);

setEffAlphaKey( spep_0 -18 + 52, ctgogo, 0 );
setEffAlphaKey( spep_0 -18 + 53, ctgogo, 255 );
setEffAlphaKey( spep_0 -18 + 54, ctgogo, 255 );
setEffAlphaKey( spep_0 -18 + 118, ctgogo, 255 );
setEffAlphaKey( spep_0 -18 + 120, ctgogo, 191 );
setEffAlphaKey( spep_0 -18 + 122, ctgogo, 112 );
setEffAlphaKey( spep_0 -18 + 124, ctgogo, 64 );

setEffRotateKey( spep_0 -18 + 52,  ctgogo,  0);
setEffRotateKey( spep_0 -18 + 124,  ctgogo,  0);

setEffScaleKey( spep_0 -18 + 52,  ctgogo,  0.7,  0.7);
setEffScaleKey( spep_0 -18  + 114,  ctgogo,  0.7,  0.7);
setEffScaleKey( spep_0 -18 + 124,  ctgogo, 1.07, 1.07 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0, 906, 176, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 + 0, shuchusen1, 176, 20 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 176, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.2, 1.1 );
setEffScaleKey( spep_0 + 176, shuchusen1, 1.2, 1.1 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 176, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 176, shuchusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 178, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_0 + 0, 1035 );
playSe( spep_0 + 12, 1018 );
playSe( spep_0 + 35, 1036 );
playSe( spep_0 + 59, 1036 );
playSe( spep_0 + 83, 1036 );
playSe( spep_0 + 107, 1036 );
se_0009 = playSe( spep_0 + 114, 09 );
setSeVolume( spep_0 + 114, 09, 126 );
setSeVolume( spep_0 + 121, 09, 126.00 );
setSeVolume( spep_0 + 122, 09, 120.80 );
setSeVolume( spep_0 + 123, 09, 115.60 );
setSeVolume( spep_0 + 124, 09, 110.40 );
setSeVolume( spep_0 + 125, 09, 105.20 );
setSeVolume( spep_0 + 126, 09, 100.00 );
se_1036 = playSe( spep_0 + 131, 1036 );
stopSe( spep_0 + 143, se_1036, 11 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 150; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, se_0009, 0 );
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

-- ** 白フェード ** --
entryFade( spep_0 + 164, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
se_1183 = playSe( spep_0 + 164, 1183 );
se_1116 = playSe( spep_0 + 173, 1116 );

--次の準備
spep_1 = spep_0 + 176;

------------------------------------------------------
-- ラッシュ、ボディブロー
------------------------------------------------------

-- ** エフェクト等 ** --
rush_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); --ラッシュ、ボディブロー：キャラ(ef_002)
setEffMoveKey( spep_1 + 0, rush_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 276, rush_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 276, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_f, 0 );
setEffRotateKey( spep_1 + 276, rush_f, 0 );
setEffAlphaKey( spep_1 + 0, rush_f, 255 );
setEffAlphaKey( spep_1 + 256, rush_f, 255 );
setEffAlphaKey( spep_1 + 257, rush_f, 0 );
setEffAlphaKey( spep_1 + 276, rush_f, 0 );

rush_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); --ラッシュ、ボディブロー：背景(ef_003)
setEffMoveKey( spep_1 + 0, rush_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 276, rush_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 276, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_b, 0 );
setEffRotateKey( spep_1 + 276, rush_b, 0 );
setEffAlphaKey( spep_1 + 0, rush_b, 255 );
setEffAlphaKey( spep_1 + 276, rush_b, 255 );

-- ** 敵の動き ** --
setDisp( spep_1 -3 + 24, 1, 1 );
setDisp( spep_1 -3 + 268, 1, 0 );
changeAnime( spep_1 -3 + 24, 1, 100 );
changeAnime( spep_1 -3 + 60, 1, 104 );
changeAnime( spep_1 -3 + 98, 1, 106 );
changeAnime( spep_1 -3 + 106, 1, 108 );
changeAnime( spep_1 -3 + 114, 1, 104 );
changeAnime( spep_1 -3 + 116, 1, 106 );
changeAnime( spep_1 -3 + 124, 1, 108 );
changeAnime( spep_1 -3 + 132, 1, 106 );
changeAnime( spep_1 -3 + 140, 1, 108 );
changeAnime( spep_1 -3 + 152, 1, 106 );
changeAnime( spep_1 -3 + 160, 1, 108 );
changeAnime( spep_1 -3 + 166, 1, 104 );
changeAnime( spep_1 -3 + 170, 1, 106 );
changeAnime( spep_1 -3 + 198, 1, 108 );


setMoveKey( spep_1 -3 + 24, 1, 879.1, -46.6 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 857.6, -47.5 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 832.8, -48.3 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 804.5, -49.2 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 772.9, -50 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 738.1, -50.9 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 700.2, -51.7 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 659.2, -52.6 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 615.2, -53.4 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 577.9, -52.4 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 536.4, -51.3 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 490.4, -50.3 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 439.8, -49.3 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 384.7, -48.2 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 324.9, -47.2 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 260.2, -46.2 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 190.6, -45.1 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 116.1, -44.1 , 0 );
setMoveKey( spep_1 -3 + 59, 1, 116.1, -44.1 , 0 );

setMoveKey( spep_1 -3 + 60, 1, 233.6, -54.7 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 210.3, -33.9 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 186.1, -51.4 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 154.2, -59.5 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 142.5, -60.1 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 57.7, -44.8 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 19.1, -60.8 , 0 );
setMoveKey( spep_1 -3 + 74, 1, -23.3, -68.1 , 0 );
setMoveKey( spep_1 -3 + 76, 1, -49.5, -65.5 , 0 );
setMoveKey( spep_1 -3 + 78, 1, -47.6, -52.7 , 0 );
setMoveKey( spep_1 -3 + 80, 1, -48, -69.1 , 0 );
setMoveKey( spep_1 -3 + 82, 1, -50.9, -69.5 , 0 );
setMoveKey( spep_1 -3 + 84, 1, -38.5, -68.8 , 0 );
setMoveKey( spep_1 -3 + 86, 1, -36.5, -51.9 , 0 );
setMoveKey( spep_1 -3 + 88, 1, -37, -64.4 , 0 );
setMoveKey( spep_1 -3 + 90, 1, -39.8, -68.7 , 0 );
setMoveKey( spep_1 -3 + 92, 1, -27.4, -68.1 , 0 );
setMoveKey( spep_1 -3 + 94, 1, -25.4, -51.1 , 0 );
setMoveKey( spep_1 -3 + 96, 1, -25.9, -63.7 , 0 );
setMoveKey( spep_1 -3 + 97, 1, -25.9, -63.7 , 0 );

setMoveKey( spep_1 -3 + 98, 1, 2.1, -32.9 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 5.6, -30.4 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 17.1, -19.9 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 16.6, -17.5 , 0 );
setMoveKey( spep_1 -3 + 105, 1, 16.6, -17.5 , 0 );

setMoveKey( spep_1 -3 + 106, 1, 61.3, -53.1 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 66.1, -59 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 78.8, -48.8 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 83.6, -50.6 , 0 );
setMoveKey( spep_1 -3 + 113, 1, 83.6, -50.6 , 0 );

setMoveKey( spep_1 -3 + 114, 1, 58.3, -64.9 , 0 );
setMoveKey( spep_1 -3 + 115, 1, 58.3, -64.9 , 0 );

setMoveKey( spep_1 -3 + 116, 1, 30.8, -31.6 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 43.4, -24 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 44.2, -32.3 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 52.9, -24.6 , 0 );
setMoveKey( spep_1 -3 + 123, 1, 52.9, -24.6 , 0 );

setMoveKey( spep_1 -3 + 124, 1, 76.2, -38.1 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 82.7, -40.4 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 77.4, -54.7 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 88, -53 , 0 );
setMoveKey( spep_1 -3 + 131, 1, 88, -53 , 0 );

setMoveKey( spep_1 -3 + 132, 1, 49, -27.9 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 59, -21.2 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 61, -26.3 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 71, -23.6 , 0 );
setMoveKey( spep_1 -3 + 139, 1, 71, -23.6 , 0 );

setMoveKey( spep_1 -3 + 140, 1, 80.2, -45.7 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 98.3, -38.3 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 104.5, -46.8 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 67.8, -56.5 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 75.9, -60.4 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 91.9, -56.3 , 0 );
setMoveKey( spep_1 -3 + 151, 1, 91.9, -56.3 , 0 );

setMoveKey( spep_1 -3 + 152, 1, 27.9, -27.4 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 46.5, -14 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 53.3, -16.5 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 67.9, -3.1 , 0 );
setMoveKey( spep_1 -3 + 159, 1, 67.9, -3.1 , 0 );

setMoveKey( spep_1 -3 + 160, 1, 153.1, -16.9 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 172.9, -13.5 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 180.8, -22.1 , 0 );
setMoveKey( spep_1 -3 + 165, 1, 180.8, -22.1 , 0 );

setMoveKey( spep_1 -3 + 166, 1, 105.1, -45.6 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 104.8, -44.7 , 0 );
setMoveKey( spep_1 -3 + 169, 1, 104.8, -44.7 , 0 );

setMoveKey( spep_1 -3 + 170, 1, 44, -23.1 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 46.3, -21.7 , 0 );
setMoveKey( spep_1 -3 + 174, 1, 52, -19.5 , 0 );
setMoveKey( spep_1 -3 + 176, 1, 57.8, -17.2 , 0 );
setMoveKey( spep_1 -3 + 178, 1, 63.5, -14.9 , 0 );
setMoveKey( spep_1 -3 + 180, 1, 69.4, -12.5 , 0 );
setMoveKey( spep_1 -3 + 182, 1, 75.2, -10.1 , 0 );
setMoveKey( spep_1 -3 + 184, 1, 81.1, -7.7 , 0 );
setMoveKey( spep_1 -3 + 186, 1, 87, -5.2 , 0 );
setMoveKey( spep_1 -3 + 188, 1, 92.9, -2.8 , 0 );
setMoveKey( spep_1 -3 + 190, 1, 98.9, -0.3 , 0 );
setMoveKey( spep_1 -3 + 192, 1, 104.8, 2.2 , 0 );
setMoveKey( spep_1 -3 + 194, 1, 110.8, 4.7 , 0 );
setMoveKey( spep_1 -3 + 196, 1, 116.8, 7.2 , 0 );
setMoveKey( spep_1 -3 + 197, 1, 116.8, 7.2 , 0 );

setMoveKey( spep_1 -3 + 198, 1, 114.8, -26.9 , 0 );
setMoveKey( spep_1 -3 + 200, 1, 207.3, 3.9 , 0 );
setMoveKey( spep_1 -3 + 202, 1, 35.2, -65.1 , 0 );
setMoveKey( spep_1 -3 + 204, 1, 63.1, -28.1 , 0 );
setMoveKey( spep_1 -3 + 206, 1, 39.9, -67.9 , 0 );
setMoveKey( spep_1 -3 + 208, 1, 55.1, -30.9 , 0 );
setMoveKey( spep_1 -3 + 210, 1, 17.4, -44.8 , 0 );
setMoveKey( spep_1 -3 + 212, 1, 69.2, -33 , 0 );
setMoveKey( spep_1 -3 + 214, 1, 57.1, -78.8 , 0 );
setMoveKey( spep_1 -3 + 216, 1, 83.3, -35 , 0 );
setMoveKey( spep_1 -3 + 218, 1, 58.4, -55.2 , 0 );
setMoveKey( spep_1 -3 + 220, 1, 101.4, -32.7 , 0 );
setMoveKey( spep_1 -3 + 222, 1, 99.6, -68 , 0 );
setMoveKey( spep_1 -3 + 224, 1, 123.3, -26.5 , 0 );
setMoveKey( spep_1 -3 + 226, 1, 108.6, -36.3 , 0 );
setMoveKey( spep_1 -3 + 228, 1, 144.9, -20.5 , 0 );
setMoveKey( spep_1 -3 + 230, 1, 107.3, -36.4 , 0 );
setMoveKey( spep_1 -3 + 232, 1, 95.2, -39.6 , 0 );
setMoveKey( spep_1 -3 + 234, 1, 64, -61.9 , 0 );
setMoveKey( spep_1 -3 + 236, 1, 45.6, -58.6 , 0 );
setMoveKey( spep_1 -3 + 238, 1, 8.1, -74.5 , 0 );
setMoveKey( spep_1 -3 + 240, 1, -3.9, -77.6 , 0 );
setMoveKey( spep_1 -3 + 242, 1, 88.4, -29.3 , 0 );
setMoveKey( spep_1 -3 + 244, 1, 185.7, 40 , 0 );
setMoveKey( spep_1 -3 + 246, 1, 255.8, 85.4 , 0 );
setMoveKey( spep_1 -3 + 248, 1, 343.5, 138.9 , 0 );
setMoveKey( spep_1 -3 + 250, 1, 404.1, 168.4 , 0 );
setMoveKey( spep_1 -3 + 252, 1, 469.4, 218.7 , 0 );
setMoveKey( spep_1 -3 + 254, 1, 507.4, 245.1 , 0 );
setMoveKey( spep_1 -3 + 256, 1, 562.8, 279.4 , 0 );
setMoveKey( spep_1 -3 + 258, 1, 590.8, 296.1 , 0 );
setMoveKey( spep_1 -3 + 260, 1, 617, 314.2 , 0 );
setMoveKey( spep_1 -3 + 262, 1, 634.8, 327.5 , 0 );
setMoveKey( spep_1 -3 + 264, 1, 644.2, 335.8 , 0 );
setMoveKey( spep_1 -3 + 266, 1, 645.3, 339.1 , 0 );
setMoveKey( spep_1 -3 + 268, 1, 637.9, 337.4 , 0 );


setScaleKey( spep_1 -3 + 24, 1, 1.65, 1.65 );
setScaleKey( spep_1 -3 + 26, 1, 1.64, 1.64 );
setScaleKey( spep_1 -3 + 28, 1, 1.63, 1.63 );
setScaleKey( spep_1 -3 + 30, 1, 1.61, 1.61 );
setScaleKey( spep_1 -3 + 32, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 34, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 36, 1, 1.58, 1.58 );
setScaleKey( spep_1 -3 + 38, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 40, 1, 1.55, 1.55 );
setScaleKey( spep_1 -3 + 42, 1, 1.57, 1.57 );
setScaleKey( spep_1 -3 + 44, 1, 1.58, 1.58 );
setScaleKey( spep_1 -3 + 46, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 48, 1, 1.61, 1.61 );
setScaleKey( spep_1 -3 + 50, 1, 1.63, 1.63 );
setScaleKey( spep_1 -3 + 52, 1, 1.64, 1.64 );
setScaleKey( spep_1 -3 + 54, 1, 1.66, 1.66 );
setScaleKey( spep_1 -3 + 56, 1, 1.67, 1.67 );
setScaleKey( spep_1 -3 + 58, 1, 1.69, 1.69 );
setScaleKey( spep_1 -3 + 59, 1, 1.69, 1.69 );

setScaleKey( spep_1 -3 + 60, 1, 2.31, 2.31 );
setScaleKey( spep_1 -3 + 62, 1, 2.24, 2.24 );
setScaleKey( spep_1 -3 + 64, 1, 2.17, 2.17 );
setScaleKey( spep_1 -3 + 66, 1, 2.1, 2.1 );
setScaleKey( spep_1 -3 + 68, 1, 2.03, 2.03 );
setScaleKey( spep_1 -3 + 70, 1, 1.96, 1.96 );
setScaleKey( spep_1 -3 + 72, 1, 1.89, 1.89 );
setScaleKey( spep_1 -3 + 74, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 76, 1, 1.75, 1.75 );
setScaleKey( spep_1 -3 + 97, 1, 1.75, 1.75 );

setScaleKey( spep_1 -3 + 98, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 104, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 105, 1, 1.62, 1.62 );

setScaleKey( spep_1 -3 + 106, 1, 1.76, 1.76 );
setScaleKey( spep_1 -3 + 112, 1, 1.76, 1.76 );
setScaleKey( spep_1 -3 + 113, 1, 1.76, 1.76 );

setScaleKey( spep_1 -3 + 114, 1, 1.77, 1.77 );
setScaleKey( spep_1 -3 + 115, 1, 1.77, 1.77 );

setScaleKey( spep_1 -3 + 116, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 120, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 122, 1, 1.63, 1.63 );
setScaleKey( spep_1 -3 + 123, 1, 1.63, 1.63 );

setScaleKey( spep_1 -3 + 124, 1, 1.76, 1.76 );
setScaleKey( spep_1 -3 + 130, 1, 1.76, 1.76 );
setScaleKey( spep_1 -3 + 131, 1, 1.76, 1.76 );

setScaleKey( spep_1 -3 + 132, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 138, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 139, 1, 1.62, 1.62 );

setScaleKey( spep_1 -3 + 140, 1, 1.76, 1.76 );
setScaleKey( spep_1 -3 + 150, 1, 1.76, 1.76 );
setScaleKey( spep_1 -3 + 151, 1, 1.76, 1.76 );

setScaleKey( spep_1 -3 + 152, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 158, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 159, 1, 1.62, 1.62 );

setScaleKey( spep_1 -3 + 160, 1, 1.76, 1.76 );
setScaleKey( spep_1 -3 + 169, 1, 1.76, 1.76 );

setScaleKey( spep_1 -3 + 170, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 172, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 174, 1, 1.64, 1.64 );
setScaleKey( spep_1 -3 + 176, 1, 1.65, 1.65 );
setScaleKey( spep_1 -3 + 178, 1, 1.67, 1.67 );
setScaleKey( spep_1 -3 + 180, 1, 1.68, 1.68 );
setScaleKey( spep_1 -3 + 182, 1, 1.7, 1.7 );
setScaleKey( spep_1 -3 + 184, 1, 1.71, 1.71 );
setScaleKey( spep_1 -3 + 186, 1, 1.73, 1.73 );
setScaleKey( spep_1 -3 + 188, 1, 1.74, 1.74 );
setScaleKey( spep_1 -3 + 190, 1, 1.76, 1.76 );
setScaleKey( spep_1 -3 + 192, 1, 1.77, 1.77 );
setScaleKey( spep_1 -3 + 194, 1, 1.79, 1.79 );
setScaleKey( spep_1 -3 + 196, 1, 1.8, 1.8 );
setScaleKey( spep_1 -3 + 197, 1, 1.8, 1.8 );

setScaleKey( spep_1 -3 + 198, 1, 1.75, 1.75 );
setScaleKey( spep_1 -3 + 200, 1, 2.25, 2.25 );
setScaleKey( spep_1 -3 + 202, 1, 1.75, 1.75 );
setScaleKey( spep_1 -3 + 204, 1, 1.73, 1.73 );
setScaleKey( spep_1 -3 + 206, 1, 1.71, 1.71 );
setScaleKey( spep_1 -3 + 208, 1, 1.69, 1.69 );
setScaleKey( spep_1 -3 + 210, 1, 1.67, 1.67 );
setScaleKey( spep_1 -3 + 212, 1, 1.66, 1.66 );
setScaleKey( spep_1 -3 + 214, 1, 1.64, 1.64 );
setScaleKey( spep_1 -3 + 216, 1, 1.63, 1.63 );
setScaleKey( spep_1 -3 + 218, 1, 1.61, 1.61 );
setScaleKey( spep_1 -3 + 220, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 222, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 224, 1, 1.57, 1.57 );
setScaleKey( spep_1 -3 + 226, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 228, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 230, 1, 1.55, 1.55 );
setScaleKey( spep_1 -3 + 234, 1, 1.55, 1.55 );
setScaleKey( spep_1 -3 + 236, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 240, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 242, 1, 1.57, 1.57 );
setScaleKey( spep_1 -3 + 246, 1, 1.57, 1.57 );
setScaleKey( spep_1 -3 + 248, 1, 1.58, 1.58 );
setScaleKey( spep_1 -3 + 252, 1, 1.58, 1.58 );
setScaleKey( spep_1 -3 + 254, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 258, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 260, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 266, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 268, 1, 1.61, 1.61 );


setRotateKey( spep_1 -3 + 24, 1, 0 );
setRotateKey( spep_1 -3 + 58, 1, 0 );
setRotateKey( spep_1 -3 + 59, 1, 0 );

setRotateKey( spep_1 -3 + 60, 1, 0 );
setRotateKey( spep_1 -3 + 62, 1, 0.7 );
setRotateKey( spep_1 -3 + 64, 1, 1.5 );
setRotateKey( spep_1 -3 + 66, 1, 2.2 );
setRotateKey( spep_1 -3 + 68, 1, 3 );
setRotateKey( spep_1 -3 + 70, 1, 0 );
setRotateKey( spep_1 -3 + 72, 1, 0.1 );
setRotateKey( spep_1 -3 + 74, 1, 0.2 );
setRotateKey( spep_1 -3 + 76, 1, 0.2 );
setRotateKey( spep_1 -3 + 78, 1, 0.3 );
setRotateKey( spep_1 -3 + 80, 1, 0.4 );
setRotateKey( spep_1 -3 + 82, 1, 0.5 );
setRotateKey( spep_1 -3 + 84, 1, 0.6 );
setRotateKey( spep_1 -3 + 86, 1, 0.6 );
setRotateKey( spep_1 -3 + 88, 1, 0.7 );
setRotateKey( spep_1 -3 + 90, 1, 0.8 );
setRotateKey( spep_1 -3 + 92, 1, 0.9 );
setRotateKey( spep_1 -3 + 94, 1, 1 );
setRotateKey( spep_1 -3 + 97, 1, 1 );

setRotateKey( spep_1 -3 + 98, 1, -41 );
setRotateKey( spep_1 -3 + 100, 1, -40.4 );
setRotateKey( spep_1 -3 + 102, 1, -39.7 );
setRotateKey( spep_1 -3 + 104, 1, -39.1 );
setRotateKey( spep_1 -3 + 105, 1, -39.1 );

setRotateKey( spep_1 -3 + 106, 1, -0.2 );
setRotateKey( spep_1 -3 + 112, 1, -0.2 );
setRotateKey( spep_1 -3 + 113, 1, -0.2 );

setRotateKey( spep_1 -3 + 114, 1, -2 );
setRotateKey( spep_1 -3 + 115, 1, -2 );

setRotateKey( spep_1 -3 + 116, 1, -41 );
setRotateKey( spep_1 -3 + 118, 1, -37.7 );
setRotateKey( spep_1 -3 + 120, 1, -34.4 );
setRotateKey( spep_1 -3 + 122, 1, -31.1 );
setRotateKey( spep_1 -3 + 123, 1, -31.1 );

setRotateKey( spep_1 -3 + 124, 1, -8.7 );
setRotateKey( spep_1 -3 + 126, 1, -9.7 );
setRotateKey( spep_1 -3 + 128, 1, -10.7 );
setRotateKey( spep_1 -3 + 130, 1, -11.8 );
setRotateKey( spep_1 -3 + 131, 1, -11.8 );

setRotateKey( spep_1 -3 + 132, 1, -41 );
setRotateKey( spep_1 -3 + 134, 1, -40.1 );
setRotateKey( spep_1 -3 + 136, 1, -39.1 );
setRotateKey( spep_1 -3 + 138, 1, -38.1 );
setRotateKey( spep_1 -3 + 139, 1, -38.1 );

setRotateKey( spep_1 -3 + 140, 1, -5.7 );
setRotateKey( spep_1 -3 + 144, 1, -5.7 );
setRotateKey( spep_1 -3 + 146, 1, -3.8 );
setRotateKey( spep_1 -3 + 148, 1, -0.4 );
setRotateKey( spep_1 -3 + 150, 1, 2.9 );
setRotateKey( spep_1 -3 + 151, 1, 2.9 );

setRotateKey( spep_1 -3 + 152, 1, -41 );
setRotateKey( spep_1 -3 + 154, 1, -40.1 );
setRotateKey( spep_1 -3 + 156, 1, -39.1 );
setRotateKey( spep_1 -3 + 158, 1, -38.1 );
setRotateKey( spep_1 -3 + 159, 1, -38.1 );

setRotateKey( spep_1 -3 + 160, 1, -5.7 );
setRotateKey( spep_1 -3 + 165, 1, -5.7 );

setRotateKey( spep_1 -3 + 166, 1, -2 );
setRotateKey( spep_1 -3 + 169, 1, -2 );

setRotateKey( spep_1 -3 + 170, 1, -41.8 );
setRotateKey( spep_1 -3 + 172, 1, -41.5 );
setRotateKey( spep_1 -3 + 174, 1, -41.2 );
setRotateKey( spep_1 -3 + 176, 1, -40.8 );
setRotateKey( spep_1 -3 + 178, 1, -40.5 );
setRotateKey( spep_1 -3 + 180, 1, -40.2 );
setRotateKey( spep_1 -3 + 182, 1, -39.9 );
setRotateKey( spep_1 -3 + 184, 1, -39.6 );
setRotateKey( spep_1 -3 + 186, 1, -39.2 );
setRotateKey( spep_1 -3 + 188, 1, -38.9 );
setRotateKey( spep_1 -3 + 190, 1, -38.6 );
setRotateKey( spep_1 -3 + 192, 1, -38.3 );
setRotateKey( spep_1 -3 + 194, 1, -37.9 );
setRotateKey( spep_1 -3 + 196, 1, -37.6 );
setRotateKey( spep_1 -3 + 197, 1, -37.6 );

setRotateKey( spep_1 -3 + 198, 1, -12 );
setRotateKey( spep_1 -3 + 268, 1, -12 );

-- ** 書き文字エントリー ** --
ctBaki = entryEffectLife( spep_1 -3 + 60, 10020, 28, 0x100, -1, 0, 22.3, 323.6 ); --バキッ
setEffMoveKey( spep_1 -3 + 60, ctBaki, 22.3, 323.6 , 0 );
setEffMoveKey( spep_1 -3 + 62, ctBaki, 31.7, 265.5 , 0 );
setEffMoveKey( spep_1 -3 + 64, ctBaki, 8.4, 285.7 , 0 );
setEffMoveKey( spep_1 -3 + 66, ctBaki, 30.6, 273.2 , 0 );
setEffMoveKey( spep_1 -3 + 68, ctBaki, 9.1, 292.1 , 0 );
setEffMoveKey( spep_1 -3 + 70, ctBaki, 29.4, 281 , 0 );
setEffMoveKey( spep_1 -3 + 72, ctBaki, 9.6, 297.1 , 0 );
setEffMoveKey( spep_1 -3 + 74, ctBaki, 28.7, 285.2 , 0 );
setEffMoveKey( spep_1 -3 + 76, ctBaki, 9.9, 300.6 , 0 );
setEffMoveKey( spep_1 -3 + 78, ctBaki, 28, 289.5 , 0 );
setEffMoveKey( spep_1 -3 + 80, ctBaki, 10.3, 304.1 , 0 );
setEffMoveKey( spep_1 -3 + 82, ctBaki, 27, 295.2 , 0 );
setEffMoveKey( spep_1 -3 + 84, ctBaki, 10.7, 309.9 , 0 );
setEffMoveKey( spep_1 -3 + 86, ctBaki, 25.8, 302.2 , 0 );
setEffMoveKey( spep_1 -3 + 88, ctBaki, 25.1, 305.7 , 0 );

setEffScaleKey( spep_1 -3 + 60, ctBaki, 1.41, 1.41 );
setEffScaleKey( spep_1 -3 + 62, ctBaki, 3.44, 3.44 );
setEffScaleKey( spep_1 -3 + 64, ctBaki, 3.3, 3.3 );
setEffScaleKey( spep_1 -3 + 66, ctBaki, 3.17, 3.17 );
setEffScaleKey( spep_1 -3 + 68, ctBaki, 3.03, 3.03 );
setEffScaleKey( spep_1 -3 + 70, ctBaki, 2.9, 2.9 );
setEffScaleKey( spep_1 -3 + 72, ctBaki, 2.82, 2.82 );
setEffScaleKey( spep_1 -3 + 74, ctBaki, 2.75, 2.75 );
setEffScaleKey( spep_1 -3 + 76, ctBaki, 2.67, 2.67 );
setEffScaleKey( spep_1 -3 + 78, ctBaki, 2.59, 2.59 );
setEffScaleKey( spep_1 -3 + 80, ctBaki, 2.52, 2.52 );
setEffScaleKey( spep_1 -3 + 82, ctBaki, 2.4, 2.4 );
setEffScaleKey( spep_1 -3 + 84, ctBaki, 2.28, 2.28 );
setEffScaleKey( spep_1 -3 + 86, ctBaki, 2.16, 2.16 );
setEffScaleKey( spep_1 -3 + 88, ctBaki, 2.04, 2.04 );

setEffRotateKey( spep_1 -3 + 60, ctBaki, -9.2 );
setEffRotateKey( spep_1 -3 + 70, ctBaki, -9.2 );
setEffRotateKey( spep_1 -3 + 72, ctBaki, -9.3 );
setEffRotateKey( spep_1 -3 + 76, ctBaki, -9.3 );
setEffRotateKey( spep_1 -3 + 78, ctBaki, -9.4 );
setEffRotateKey( spep_1 -3 + 80, ctBaki, -9.4 );
setEffRotateKey( spep_1 -3 + 82, ctBaki, -9.3 );
setEffRotateKey( spep_1 -3 + 86, ctBaki, -9.3 );
setEffRotateKey( spep_1 -3 + 88, ctBaki, -9.2 );

setEffAlphaKey( spep_1 -3 + 60, ctBaki, 255 );
setEffAlphaKey( spep_1 -3 + 70, ctBaki, 255 );
setEffAlphaKey( spep_1 -3 + 72, ctBaki, 242 );
setEffAlphaKey( spep_1 -3 + 74, ctBaki, 230 );
setEffAlphaKey( spep_1 -3 + 76, ctBaki, 217 );
setEffAlphaKey( spep_1 -3 + 78, ctBaki, 204 );
setEffAlphaKey( spep_1 -3 + 80, ctBaki, 191 );
setEffAlphaKey( spep_1 -3 + 82, ctBaki, 147 );
setEffAlphaKey( spep_1 -3 + 84, ctBaki, 102 );
setEffAlphaKey( spep_1 -3 + 86, ctBaki, 58 );
setEffAlphaKey( spep_1 -3 + 88, ctBaki, 13 );


ctDogagaga = entryEffectLife( spep_1 -3 + 90, 10017, 92, 0x100, -1, 0, 12, 226.8 );
setEffShake( spep_1 -3 + 100, ctDogagaga, 80, 15 );

setEffMoveKey( spep_1 -3 + 90, ctDogagaga, 12, 226.8 , 0 );
setEffMoveKey( spep_1 -3 + 92, ctDogagaga, 11.8, 227.2 , 0 );
setEffMoveKey( spep_1 -3 + 94, ctDogagaga, 4, 236.1 , 0 );
setEffMoveKey( spep_1 -3 + 96, ctDogagaga, 11.8, 227 , 0 );
setEffMoveKey( spep_1 -3 + 98, ctDogagaga, 4.8, 235 , 0 );
setEffMoveKey( spep_1 -3 + 100, ctDogagaga, 11.9, 226.8 , 0 );
--[[setEffMoveKey( spep_1 -3 + 102, ctDogagaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 104, ctDogagaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_1 -3 + 106, ctDogagaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 108, ctDogagaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_1 -3 + 110, ctDogagaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 112, ctDogagaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_1 -3 + 114, ctDogagaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 116, ctDogagaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_1 -3 + 118, ctDogagaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 120, ctDogagaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_1 -3 + 122, ctDogagaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 124, ctDogagaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_1 -3 + 126, ctDogagaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 128, ctDogagaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_1 -3 + 130, ctDogagaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 132, ctDogagaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_1 -3 + 134, ctDogagaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 136, ctDogagaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_1 -3 + 138, ctDogagaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 140, ctDogagaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_1 -3 + 142, ctDogagaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 144, ctDogagaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_1 -3 + 146, ctDogagaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 148, ctDogagaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_1 -3 + 150, ctDogagaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 152, ctDogagaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_1 -3 + 154, ctDogagaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 156, ctDogagaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_1 -3 + 158, ctDogagaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 160, ctDogagaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_1 -3 + 162, ctDogagaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 164, ctDogagaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_1 -3 + 166, ctDogagaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 168, ctDogagaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_1 -3 + 170, ctDogagaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 172, ctDogagaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_1 -3 + 174, ctDogagaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 176, ctDogagaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_1 -3 + 178, ctDogagaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 180, ctDogagaga, 11.9, 226.8 , 0 );]]
setEffMoveKey( spep_1 -3 + 182, ctDogagaga, 11.9, 226.8 , 0 );

setEffScaleKey( spep_1 -3 + 90, ctDogagaga, 2.44, 2.44 );
setEffScaleKey( spep_1 -3 + 92, ctDogagaga, 3.21, 3.21 );
setEffScaleKey( spep_1 -3 + 94, ctDogagaga, 3.06, 3.06 );
setEffScaleKey( spep_1 -3 + 96, ctDogagaga, 2.91, 2.91 );
setEffScaleKey( spep_1 -3 + 98, ctDogagaga, 2.76, 2.76 );
setEffScaleKey( spep_1 -3 + 100, ctDogagaga, 2.6, 2.6 );
setEffScaleKey( spep_1 -3 + 182, ctDogagaga, 2.6, 2.6 );

setEffRotateKey( spep_1 -3 + 90, ctDogagaga, 14.5 );
setEffRotateKey( spep_1 -3 + 182, ctDogagaga, 14.5 );

setEffAlphaKey( spep_1 -3 + 90, ctDogagaga, 255 );
setEffAlphaKey( spep_1 -3 + 174, ctDogagaga, 255 );
setEffAlphaKey( spep_1 -3 + 176, ctDogagaga, 191 );
setEffAlphaKey( spep_1 -3 + 178, ctDogagaga, 128 );
setEffAlphaKey( spep_1 -3 + 180, ctDogagaga, 64 );
setEffAlphaKey( spep_1 -3 + 182, ctDogagaga, 0 );


cDogon = entryEffectLife( spep_1 -3 + 200, 10018, 32, 0x100, -1, 0, 4.3, 175.4 );
setEffMoveKey( spep_1 -3 + 200, cDogon, 4.3, 175.4 , 0 );
setEffMoveKey( spep_1 -3 + 202, cDogon, -213.7, 322.5 , 0 );
setEffMoveKey( spep_1 -3 + 204, cDogon, -155.7, 300.7 , 0 );
setEffMoveKey( spep_1 -3 + 206, cDogon, -141.7, 287 , 0 );
setEffMoveKey( spep_1 -3 + 208, cDogon, -103.9, 254.7 , 0 );
setEffMoveKey( spep_1 -3 + 210, cDogon, -113.5, 252.7 , 0 );
setEffMoveKey( spep_1 -3 + 212, cDogon, -90.6, 251.6 , 0 );
setEffMoveKey( spep_1 -3 + 214, cDogon, -102.1, 257.5 , 0 );
setEffMoveKey( spep_1 -3 + 216, cDogon, -81.8, 248.4 , 0 );
setEffMoveKey( spep_1 -3 + 218, cDogon, -94.5, 242.5 , 0 );
setEffMoveKey( spep_1 -3 + 220, cDogon, -86, 251.9 , 0 );
setEffMoveKey( spep_1 -3 + 222, cDogon, -80.2, 234.7 , 0 );
setEffMoveKey( spep_1 -3 + 224, cDogon, -83.6, 240 , 0 );
setEffMoveKey( spep_1 -3 + 226, cDogon, -86.8, 234.1 , 0 );
setEffMoveKey( spep_1 -3 + 228, cDogon, -60.8, 229 , 0 );
setEffMoveKey( spep_1 -3 + 230, cDogon, -65.2, 229.9 , 0 );
setEffMoveKey( spep_1 -3 + 232, cDogon, -52.4, 217 , 0 );

setEffScaleKey( spep_1 -3 + 200, cDogon, 2.08, 2.08 );
setEffScaleKey( spep_1 -3 + 202, cDogon, 4.82, 4.82 );
setEffScaleKey( spep_1 -3 + 204, cDogon, 4.4, 4.4 );
setEffScaleKey( spep_1 -3 + 206, cDogon, 3.98, 3.98 );
setEffScaleKey( spep_1 -3 + 208, cDogon, 3.55, 3.55 );
setEffScaleKey( spep_1 -3 + 210, cDogon, 3.52, 3.52 );
setEffScaleKey( spep_1 -3 + 212, cDogon, 3.49, 3.49 );
setEffScaleKey( spep_1 -3 + 214, cDogon, 3.45, 3.45 );
setEffScaleKey( spep_1 -3 + 216, cDogon, 3.42, 3.42 );
setEffScaleKey( spep_1 -3 + 218, cDogon, 3.38, 3.38 );
setEffScaleKey( spep_1 -3 + 220, cDogon, 3.35, 3.35 );
setEffScaleKey( spep_1 -3 + 222, cDogon, 3.32, 3.32 );
setEffScaleKey( spep_1 -3 + 224, cDogon, 3.28, 3.28 );
setEffScaleKey( spep_1 -3 + 226, cDogon, 3.17, 3.17 );
setEffScaleKey( spep_1 -3 + 228, cDogon, 3.07, 3.07 );
setEffScaleKey( spep_1 -3 + 230, cDogon, 2.96, 2.96 );
setEffScaleKey( spep_1 -3 + 232, cDogon, 2.85, 2.85 );

setEffRotateKey( spep_1 -3 + 200, cDogon, -38.2 );
setEffRotateKey( spep_1 -3 + 232, cDogon, -38.2 );

setEffAlphaKey( spep_1 -3 + 200, cDogon, 255 );
setEffAlphaKey( spep_1 -3 + 224, cDogon, 255 );
setEffAlphaKey( spep_1 -3 + 226, cDogon, 194 );
setEffAlphaKey( spep_1 -3 + 228, cDogon, 134 );
setEffAlphaKey( spep_1 -3 + 230, cDogon, 73 );
setEffAlphaKey( spep_1 -3 + 232, cDogon, 13 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 278, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 57, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade
entryFade( spep_1 + 195, 0, 1, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 264, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
stopSe( spep_1 -14 + 43, se_1116, 5 );
playSe( spep_1 -14 + 62, 1189 );
playSe( spep_1 -14 + 71, 1009 );
playSe( spep_1 -14 + 71, 1110 );
stopSe( spep_1 -14 + 73, se_1183, 0 );
playSe( spep_1 -14 + 95, 1000 );
setSeVolume( spep_1 -14 + 95, 1000, 141 );
playSe( spep_1 -14 + 102, 1006 );
setSeVolume( spep_1 -14 + 102, 1006, 112 );
playSe( spep_1 -14 + 109, 1000 );
setSeVolume( spep_1 -14 + 109, 1000, 79 );
playSe( spep_1 -14 + 116, 1006 );
playSe( spep_1 -14 + 117, 1189 );
setSeVolume( spep_1 -14 + 117, 1189, 63 );
playSe( spep_1 -14 + 122, 1000 );
setSeVolume( spep_1 -14 + 122, 1000, 112 );
playSe( spep_1 -14 + 130, 1000 );
playSe( spep_1 -14 + 139, 1006 );
setSeVolume( spep_1 -14 + 139, 1006, 71 );
playSe( spep_1 -14 + 147, 1000 );
playSe( spep_1 -14 + 156, 1006 );
playSe( spep_1 -14 + 156, 1000 );
setSeVolume( spep_1 -14 + 156, 1006, 71 );
playSe( spep_1 -14 + 165, 1000 );
playSe( spep_1 -14 + 168, 1003 );
playSe( spep_1 -14 + 198, 1004 );
setSeVolume( spep_1 -14 + 198, 1004, 79 );
playSe( spep_1 -14 + 205, 1009 );
playSe( spep_1 -14 + 205, 1120 );
playSe( spep_1 -14 + 228, 1072 );
setSeVolume( spep_1 -14 + 228, 1072, 0 );
setSeVolume( spep_1 -14 + 249, 1072, 8.33 );
setSeVolume( spep_1 -14 + 250, 1072, 16.67 );
setSeVolume( spep_1 -14 + 251, 1072, 25.00 );
setSeVolume( spep_1 -14 + 252, 1072, 33.33 );
setSeVolume( spep_1 -14 + 253, 1072, 41.67 );
setSeVolume( spep_1 -14 + 254, 1072, 50.00 );
setSeVolume( spep_1 -14 + 255, 1072, 58.33 );
setSeVolume( spep_1 -14 + 256, 1072, 66.67 );
setSeVolume( spep_1 -14 + 257, 1072, 75.00 );
setSeVolume( spep_1 -14 + 258, 1072, 83.33 );
setSeVolume( spep_1 -14 + 259, 1072, 91.67 );
setSeVolume( spep_1 -14 + 260, 1072, 100.00 );

--次の準備
spep_2 = spep_1 + 276;

------------------------------------------------------
-- ギャリック砲溜め
------------------------------------------------------

-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); --ギャリック砲溜め(ef_004)
setEffMoveKey( spep_2 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_2 + 66, tame, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 66, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 66, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 66, tame, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 68, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 58, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_2 + 12, 1036 );
se_1037 = playSe( spep_2 + 12, 1037 );
playSe( spep_2 + 36, 1036 );
se_1036 = playSe( spep_2 + 60, 1036 );

--次の準備
spep_3 = spep_2 + 66;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_3 -14 + 14, 1035 );
stopSe( spep_3 -14 + 14, se_1037, 0 );
stopSe( spep_3 -14 + 14, se_1036, 0 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
-- ギャリック砲発射
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 ); --ギャリック砲発射(ef_005)
setEffMoveKey( spep_4 + 0, hassha, 0, 0, 0 );
setEffMoveKey( spep_4 + 96, hassha, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_4 + 96, hassha, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hassha, 0 );
setEffRotateKey( spep_4 + 96, hassha, 0 );
setEffAlphaKey( spep_4 + 0, hassha, 255 );
setEffAlphaKey( spep_4 + 96, hassha, 255 );

-- ** 書き文字エントリー ** --
ctZudododo1 = entryEffectLife( spep_4 -3 + 20, 10014, 70, 0x100, -1, 0, -119, 297.6 );
setEffShake( spep_4 -3 + 22, ctZudododo1, 78, 20 );

setEffMoveKey( spep_4 -3 + 20, ctZudododo1, -119, 297.6 , 0 );
setEffMoveKey( spep_4 -3 + 22, ctZudododo1, -104.1, 348.8 , 0 );
--[[setEffMoveKey( spep_4 -3 + 24, ctZudododo1, -98.4, 330.4 , 0 );
setEffMoveKey( spep_4 -3 + 26, ctZudododo1, -104.1, 348.8 , 0 );
setEffMoveKey( spep_4 -3 + 28, ctZudododo1, -98.4, 330.4 , 0 );
setEffMoveKey( spep_4 -3 + 30, ctZudododo1, -104.1, 348.8 , 0 );
setEffMoveKey( spep_4 -3 + 32, ctZudododo1, -98.4, 330.4 , 0 );
setEffMoveKey( spep_4 -3 + 34, ctZudododo1, -104.1, 348.8 , 0 );
setEffMoveKey( spep_4 -3 + 36, ctZudododo1, -98.4, 330.4 , 0 );
setEffMoveKey( spep_4 -3 + 38, ctZudododo1, -104.1, 348.8 , 0 );
setEffMoveKey( spep_4 -3 + 40, ctZudododo1, -98.4, 330.4 , 0 );
setEffMoveKey( spep_4 -3 + 42, ctZudododo1, -104.1, 348.8 , 0 );
setEffMoveKey( spep_4 -3 + 44, ctZudododo1, -98.4, 330.4 , 0 );
setEffMoveKey( spep_4 -3 + 46, ctZudododo1, -104.1, 348.8 , 0 );
setEffMoveKey( spep_4 -3 + 48, ctZudododo1, -98.4, 330.4 , 0 );
setEffMoveKey( spep_4 -3 + 50, ctZudododo1, -104.1, 348.8 , 0 );
setEffMoveKey( spep_4 -3 + 52, ctZudododo1, -98.4, 330.4 , 0 );
setEffMoveKey( spep_4 -3 + 54, ctZudododo1, -104.1, 348.8 , 0 );
setEffMoveKey( spep_4 -3 + 56, ctZudododo1, -98.4, 330.4 , 0 );
setEffMoveKey( spep_4 -3 + 58, ctZudododo1, -104.1, 348.8 , 0 );
setEffMoveKey( spep_4 -3 + 60, ctZudododo1, -98.4, 330.4 , 0 );
setEffMoveKey( spep_4 -3 + 62, ctZudododo1, -104.1, 348.8 , 0 );
setEffMoveKey( spep_4 -3 + 64, ctZudododo1, -98.4, 330.4 , 0 );
setEffMoveKey( spep_4 -3 + 66, ctZudododo1, -104.1, 348.8 , 0 );
setEffMoveKey( spep_4 -3 + 68, ctZudododo1, -98.4, 330.4 , 0 );
setEffMoveKey( spep_4 -3 + 70, ctZudododo1, -104.1, 348.8 , 0 );
setEffMoveKey( spep_4 -3 + 72, ctZudododo1, -98.4, 330.4 , 0 );
setEffMoveKey( spep_4 -3 + 74, ctZudododo1, -104.1, 348.8 , 0 );
setEffMoveKey( spep_4 -3 + 76, ctZudododo1, -98.4, 330.4 , 0 );
setEffMoveKey( spep_4 -3 + 78, ctZudododo1, -104.1, 348.8 , 0 );
setEffMoveKey( spep_4 -3 + 80, ctZudododo1, -98.4, 330.4 , 0 );
setEffMoveKey( spep_4 -3 + 82, ctZudododo1, -104.1, 348.8 , 0 );
setEffMoveKey( spep_4 -3 + 84, ctZudododo1, -98.4, 330.4 , 0 );
setEffMoveKey( spep_4 -3 + 86, ctZudododo1, -104.1, 348.8 , 0 );
setEffMoveKey( spep_4 -3 + 88, ctZudododo1, -98.4, 330.4 , 0 );]]
setEffMoveKey( spep_4 -3 + 90, ctZudododo1, -104.1, 348.8 , 0 );

setEffScaleKey( spep_4 -3 + 20, ctZudododo1, 1.19, 1.54 );
setEffScaleKey( spep_4 -3 + 22, ctZudododo1, 1.92, 2.49 );
setEffScaleKey( spep_4 -3 + 90, ctZudododo1, 1.92, 2.49 );

setEffRotateKey( spep_4 -3 + 20, ctZudododo1, 6.4 );
setEffRotateKey( spep_4 -3 + 90, ctZudododo1, 6.4 );

setEffAlphaKey( spep_4 -3 + 20, ctZudododo1, 128 );
setEffAlphaKey( spep_4 -3 + 22, ctZudododo1, 255 );
setEffAlphaKey( spep_4 -3 + 90, ctZudododo1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 86, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 白フェード ** --
entryFade( spep_4 + 84, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_4 + 10, 1022 );
setSeVolume( spep_4 + 10, 1022, 126 );

--次の準備
spep_5 = spep_4 + 96;

------------------------------------------------------
-- ギャリック砲敵接近
------------------------------------------------------

-- ** エフェクト等 ** --
semaru_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0, 1 ); --ギャリック砲敵接近；気弾(ef_006)
setEffMoveKey( spep_5 + 0, semaru_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 56, semaru_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, semaru_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, semaru_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, semaru_f, 0 );
setEffRotateKey( spep_5 + 56, semaru_f, 0 );
setEffAlphaKey( spep_5 + 0, semaru_f, 255 );
setEffAlphaKey( spep_5 + 56, semaru_f, 255 );

semaru_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 ); --ギャリック砲敵接近；気弾(ef_007)
setEffMoveKey( spep_5 + 0, semaru_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 56, semaru_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, semaru_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, semaru_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, semaru_b, 0 );
setEffRotateKey( spep_5 + 56, semaru_b, 0 );
setEffAlphaKey( spep_5 + 0, semaru_b, 255 );
setEffAlphaKey( spep_5 + 56, semaru_b, 255 );

-- ** 敵の動き ** --
setDisp( spep_5 -3 + 3, 1, 1 );
setDisp( spep_5 -3 + 58, 1, 0 );
changeAnime( spep_5 -3 + 3, 1, 108 );

setMoveKey( spep_5 -3 + 3, 1, -458.9, -892.1 , 0 );
--setMoveKey( spep_5 -3 + 2, 1, -407.7, -794.9 , 0 );
setMoveKey( spep_5 -3 + 4, 1, -348.5, -681.8 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -297.3, -584.7 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -238.2, -471.6 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -187, -374.5 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -127.9, -261.4 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -76.7, -164.3 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -17.6, -51.1 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -10.1, -42.2 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 5.2, -17.4 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 12.3, -8.9 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 27.2, 15.3 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 34, 23.3 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 48.6, 47.1 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 55.1, 58.6 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 69.4, 77.9 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 75.5, 88.7 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 89.4, 107.2 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 95, 113.4 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 118.1, 144.5 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 132.7, 159 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 154.8, 189 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 168.4, 206.2 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 189.5, 230.9 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 202.1, 243 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 209.1, 257 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 208, 254.9 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 214.8, 268.7 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 213.5, 266.4 , 0 );

setScaleKey( spep_5 -3 + 3, 1, 4, 4 );
--setScaleKey( spep_5 -3 + 2, 1, 3.9, 3.9 );
setScaleKey( spep_5 -3 + 4, 1, 3.8, 3.8 );
setScaleKey( spep_5 -3 + 6, 1, 3.7, 3.7 );
setScaleKey( spep_5 -3 + 8, 1, 3.6, 3.6 );
setScaleKey( spep_5 -3 + 10, 1, 3.5, 3.5 );
setScaleKey( spep_5 -3 + 12, 1, 3.4, 3.4 );
setScaleKey( spep_5 -3 + 14, 1, 3.3, 3.3 );
setScaleKey( spep_5 -3 + 16, 1, 3.2, 3.2 );
setScaleKey( spep_5 -3 + 18, 1, 3.06, 3.06 );
setScaleKey( spep_5 -3 + 20, 1, 2.91, 2.91 );
setScaleKey( spep_5 -3 + 22, 1, 2.77, 2.77 );
setScaleKey( spep_5 -3 + 24, 1, 2.64, 2.64 );
setScaleKey( spep_5 -3 + 26, 1, 2.5, 2.5 );
setScaleKey( spep_5 -3 + 28, 1, 2.36, 2.36 );
setScaleKey( spep_5 -3 + 30, 1, 2.23, 2.23 );
setScaleKey( spep_5 -3 + 32, 1, 2.09, 2.09 );
setScaleKey( spep_5 -3 + 34, 1, 1.96, 1.96 );
setScaleKey( spep_5 -3 + 36, 1, 1.82, 1.82 );
setScaleKey( spep_5 -3 + 38, 1, 1.69, 1.69 );
setScaleKey( spep_5 -3 + 40, 1, 1.53, 1.53 );
setScaleKey( spep_5 -3 + 42, 1, 1.38, 1.38 );
setScaleKey( spep_5 -3 + 44, 1, 1.22, 1.22 );
setScaleKey( spep_5 -3 + 46, 1, 1.08, 1.08 );
setScaleKey( spep_5 -3 + 48, 1, 0.93, 0.93 );
setScaleKey( spep_5 -3 + 50, 1, 0.79, 0.79 );
setScaleKey( spep_5 -3 + 52, 1, 0.7, 0.7 );
setScaleKey( spep_5 -3 + 54, 1, 0.61, 0.61 );
setScaleKey( spep_5 -3 + 56, 1, 0.52, 0.52 );
setScaleKey( spep_5 -3 + 58, 1, 0.43, 0.43 );

setRotateKey( spep_5 -3 + 3, 1, 0 );
setRotateKey( spep_5 -3 + 58, 1, 0 );

-- ** 書き文字エントリー ** --
ctZudododo2 = entryEffectLife( spep_5 -3 + 3, 10014, 58, 0x100, -1, 0, -104.1, 348.8, 2 );
setEffShake( spep_5 -3 + 3, ctZudododo2, 58, 20 );

setEffMoveKey( spep_5 -3 + 3, ctZudododo2, -104.1, 348.8 , 0 );
--[[setEffMoveKey( spep_5 -3 + 2, ctZudododo2, -98.4, 330.4 , 0 );
setEffMoveKey( spep_5 -3 + 4, ctZudododo2, -104.1, 348.8 , 0 );
setEffMoveKey( spep_5 -3 + 6, ctZudododo2, -98.4, 330.4 , 0 );
setEffMoveKey( spep_5 -3 + 8, ctZudododo2, -104.1, 348.8 , 0 );
setEffMoveKey( spep_5 -3 + 10, ctZudododo2, -98.4, 330.4 , 0 );
setEffMoveKey( spep_5 -3 + 12, ctZudododo2, -104.1, 348.8 , 0 );
setEffMoveKey( spep_5 -3 + 14, ctZudododo2, -98.4, 330.4 , 0 );
setEffMoveKey( spep_5 -3 + 16, ctZudododo2, -104.1, 348.8 , 0 );
setEffMoveKey( spep_5 -3 + 18, ctZudododo2, -98.4, 330.4 , 0 );
setEffMoveKey( spep_5 -3 + 20, ctZudododo2, -104.1, 348.8 , 0 );
setEffMoveKey( spep_5 -3 + 22, ctZudododo2, -98.4, 330.4 , 0 );
setEffMoveKey( spep_5 -3 + 24, ctZudododo2, -104.1, 348.8 , 0 );
setEffMoveKey( spep_5 -3 + 26, ctZudododo2, -98.4, 330.4 , 0 );
setEffMoveKey( spep_5 -3 + 28, ctZudododo2, -104.1, 348.8 , 0 );
setEffMoveKey( spep_5 -3 + 30, ctZudododo2, -98.4, 330.4 , 0 );
setEffMoveKey( spep_5 -3 + 32, ctZudododo2, -104.1, 348.8 , 0 );
setEffMoveKey( spep_5 -3 + 34, ctZudododo2, -98.4, 330.4 , 0 );
setEffMoveKey( spep_5 -3 + 36, ctZudododo2, -104.1, 348.8 , 0 );
setEffMoveKey( spep_5 -3 + 38, ctZudododo2, -98.4, 330.4 , 0 );
setEffMoveKey( spep_5 -3 + 40, ctZudododo2, -104.1, 348.8 , 0 );
setEffMoveKey( spep_5 -3 + 42, ctZudododo2, -98.4, 330.4 , 0 );
setEffMoveKey( spep_5 -3 + 44, ctZudododo2, -104.1, 348.8 , 0 );
setEffMoveKey( spep_5 -3 + 46, ctZudododo2, -98.4, 330.4 , 0 );
setEffMoveKey( spep_5 -3 + 48, ctZudododo2, -104.1, 348.8 , 0 );
setEffMoveKey( spep_5 -3 + 50, ctZudododo2, -98.4, 330.4 , 0 );
setEffMoveKey( spep_5 -3 + 52, ctZudododo2, -104.1, 348.8 , 0 );
setEffMoveKey( spep_5 -3 + 54, ctZudododo2, -98.4, 330.4 , 0 );
setEffMoveKey( spep_5 -3 + 56, ctZudododo2, -104.1, 348.8 , 0 );]]
setEffMoveKey( spep_5 -3 + 58, ctZudododo2, -104.1, 348.8 , 0 );

setEffScaleKey( spep_5 -3 + 3, ctZudododo2, 1.92, 2.49 );
setEffScaleKey( spep_5 -3 + 58, ctZudododo2, 1.92, 2.49 );

setEffRotateKey( spep_5 -3 + 3, ctZudododo2, 6.4 );
setEffRotateKey( spep_5 -3 + 58, ctZudododo2, 6.4 );

setEffAlphaKey( spep_5 -3 + 3, ctZudododo2, 255 );
setEffAlphaKey( spep_5 -3 + 58, ctZudododo2, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 58, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 38, 16, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_5 + 22, 1021 );

--次の準備
spep_6 = spep_5 + 56;

------------------------------------------------------
-- 爆発
------------------------------------------------------

-- ** エフェクト等 ** --
explosion = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0 ); --爆発(ef_007)
setEffMoveKey( spep_6 + 0, explosion, 0, 0, 0 );
setEffMoveKey( spep_6 + 130, explosion, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_6 + 130, explosion, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, explosion, 0 );
setEffRotateKey( spep_6 + 130, explosion, 0 );
setEffAlphaKey( spep_6 + 0, explosion, 255 );
setEffAlphaKey( spep_6 + 130, explosion, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_6 + 0, 906, 130, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 0, shuchusen2, 130, 20 );

setEffMoveKey( spep_6 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_6 + 130, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen2, 1.32, 1.92 );
setEffScaleKey( spep_6 + 130, shuchusen2, 1.32, 1.92 );

setEffRotateKey( spep_6 + 0, shuchusen2, 0 );
setEffRotateKey( spep_6 + 130, shuchusen2, 0 );

setEffAlphaKey( spep_6 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_6 + 130, shuchusen2, 255 );

-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_6 + 15, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 100 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 130, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
playSe( spep_6 -17 + 31, 1023 );
setSeVolume( spep_6 -17 + 31, 1023, 79 );
playSe( spep_6 -17 + 35, 1024 );
setSeVolume( spep_6 -17 + 35, 1024, 79 );

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 10 );
endPhase( spep_6 + 110 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 導入、突進
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tosshin = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0 ); --導入、突進(ef_001)
setEffMoveKey( spep_0 + 0, tosshin, 0, 0, 0 );
setEffMoveKey( spep_0 + 176, tosshin, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tosshin, 1.0, 1.0 );
setEffScaleKey( spep_0 + 176, tosshin, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tosshin, 0 );
setEffRotateKey( spep_0 + 176, tosshin, 0 );
setEffAlphaKey( spep_0 + 0, tosshin, 255 );
setEffAlphaKey( spep_0 + 176, tosshin, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 22, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 22, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 -18 + 52, 190006, 72, 0x100, -1, 0, 0, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 -18 + 52,  ctgogo,  0,  510);
setEffMoveKey(  spep_0 -18 + 124,  ctgogo,  0,  510);

setEffAlphaKey( spep_0 -18 + 52, ctgogo, 0 );
setEffAlphaKey( spep_0 -18 + 53, ctgogo, 255 );
setEffAlphaKey( spep_0 -18 + 54, ctgogo, 255 );
setEffAlphaKey( spep_0 -18 + 118, ctgogo, 255 );
setEffAlphaKey( spep_0 -18 + 120, ctgogo, 191 );
setEffAlphaKey( spep_0 -18 + 122, ctgogo, 112 );
setEffAlphaKey( spep_0 -18 + 124, ctgogo, 64 );

setEffRotateKey( spep_0 -18 + 52,  ctgogo,  0);
setEffRotateKey( spep_0 -18 + 124,  ctgogo,  0);

setEffScaleKey( spep_0 -18 + 52,  ctgogo,  -0.7,  0.7);
setEffScaleKey( spep_0 -18  + 114,  ctgogo,  -0.7,  0.7);
setEffScaleKey( spep_0 -18 + 124,  ctgogo, -1.07, 1.07 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0, 906, 176, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 + 0, shuchusen1, 176, 20 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 176, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.2, 1.1 );
setEffScaleKey( spep_0 + 176, shuchusen1, 1.2, 1.1 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 176, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 176, shuchusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 178, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_0 + 0, 1035 );
playSe( spep_0 + 12, 1018 );
playSe( spep_0 + 35, 1036 );
playSe( spep_0 + 59, 1036 );
playSe( spep_0 + 83, 1036 );
playSe( spep_0 + 107, 1036 );
se_0009 = playSe( spep_0 + 114, 09 );
setSeVolume( spep_0 + 114, 09, 126 );
setSeVolume( spep_0 + 121, 09, 126.00 );
setSeVolume( spep_0 + 122, 09, 120.80 );
setSeVolume( spep_0 + 123, 09, 115.60 );
setSeVolume( spep_0 + 124, 09, 110.40 );
setSeVolume( spep_0 + 125, 09, 105.20 );
setSeVolume( spep_0 + 126, 09, 100.00 );
se_1036 = playSe( spep_0 + 131, 1036 );
stopSe( spep_0 + 143, se_1036, 11 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 150; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, se_0009, 0 );
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

-- ** 白フェード ** --
entryFade( spep_0 + 164, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
se_1183 = playSe( spep_0 + 164, 1183 );
se_1116 = playSe( spep_0 + 173, 1116 );

--次の準備
spep_1 = spep_0 + 176;

------------------------------------------------------
-- ラッシュ、ボディブロー
------------------------------------------------------

-- ** エフェクト等 ** --
rush_f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0 ); --ラッシュ、ボディブロー：キャラ(ef_002)
setEffMoveKey( spep_1 + 0, rush_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 276, rush_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 276, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_f, 0 );
setEffRotateKey( spep_1 + 276, rush_f, 0 );
setEffAlphaKey( spep_1 + 0, rush_f, 255 );
setEffAlphaKey( spep_1 + 256, rush_f, 255 );
setEffAlphaKey( spep_1 + 257, rush_f, 0 );
setEffAlphaKey( spep_1 + 276, rush_f, 0 );

rush_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); --ラッシュ、ボディブロー：背景(ef_003)
setEffMoveKey( spep_1 + 0, rush_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 276, rush_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 276, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_b, 0 );
setEffRotateKey( spep_1 + 276, rush_b, 0 );
setEffAlphaKey( spep_1 + 0, rush_b, 255 );
setEffAlphaKey( spep_1 + 276, rush_b, 255 );

-- ** 敵の動き ** --
setDisp( spep_1 -3 + 24, 1, 1 );
setDisp( spep_1 -3 + 268, 1, 0 );
changeAnime( spep_1 -3 + 24, 1, 100 );
changeAnime( spep_1 -3 + 60, 1, 104 );
changeAnime( spep_1 -3 + 98, 1, 106 );
changeAnime( spep_1 -3 + 106, 1, 108 );
changeAnime( spep_1 -3 + 114, 1, 104 );
changeAnime( spep_1 -3 + 116, 1, 106 );
changeAnime( spep_1 -3 + 124, 1, 108 );
changeAnime( spep_1 -3 + 132, 1, 106 );
changeAnime( spep_1 -3 + 140, 1, 108 );
changeAnime( spep_1 -3 + 152, 1, 106 );
changeAnime( spep_1 -3 + 160, 1, 108 );
changeAnime( spep_1 -3 + 166, 1, 104 );
changeAnime( spep_1 -3 + 170, 1, 106 );
changeAnime( spep_1 -3 + 198, 1, 108 );


setMoveKey( spep_1 -3 + 24, 1, 879.1, -46.6 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 857.6, -47.5 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 832.8, -48.3 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 804.5, -49.2 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 772.9, -50 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 738.1, -50.9 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 700.2, -51.7 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 659.2, -52.6 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 615.2, -53.4 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 577.9, -52.4 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 536.4, -51.3 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 490.4, -50.3 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 439.8, -49.3 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 384.7, -48.2 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 324.9, -47.2 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 260.2, -46.2 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 190.6, -45.1 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 116.1, -44.1 , 0 );
setMoveKey( spep_1 -3 + 59, 1, 116.1, -44.1 , 0 );

setMoveKey( spep_1 -3 + 60, 1, 233.6, -54.7 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 210.3, -33.9 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 186.1, -51.4 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 154.2, -59.5 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 142.5, -60.1 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 57.7, -44.8 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 19.1, -60.8 , 0 );
setMoveKey( spep_1 -3 + 74, 1, -23.3, -68.1 , 0 );
setMoveKey( spep_1 -3 + 76, 1, -49.5, -65.5 , 0 );
setMoveKey( spep_1 -3 + 78, 1, -47.6, -52.7 , 0 );
setMoveKey( spep_1 -3 + 80, 1, -48, -69.1 , 0 );
setMoveKey( spep_1 -3 + 82, 1, -50.9, -69.5 , 0 );
setMoveKey( spep_1 -3 + 84, 1, -38.5, -68.8 , 0 );
setMoveKey( spep_1 -3 + 86, 1, -36.5, -51.9 , 0 );
setMoveKey( spep_1 -3 + 88, 1, -37, -64.4 , 0 );
setMoveKey( spep_1 -3 + 90, 1, -39.8, -68.7 , 0 );
setMoveKey( spep_1 -3 + 92, 1, -27.4, -68.1 , 0 );
setMoveKey( spep_1 -3 + 94, 1, -25.4, -51.1 , 0 );
setMoveKey( spep_1 -3 + 96, 1, -25.9, -63.7 , 0 );
setMoveKey( spep_1 -3 + 97, 1, -25.9, -63.7 , 0 );

setMoveKey( spep_1 -3 + 98, 1, 2.1, -32.9 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 5.6, -30.4 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 17.1, -19.9 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 16.6, -17.5 , 0 );
setMoveKey( spep_1 -3 + 105, 1, 16.6, -17.5 , 0 );

setMoveKey( spep_1 -3 + 106, 1, 61.3, -53.1 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 66.1, -59 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 78.8, -48.8 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 83.6, -50.6 , 0 );
setMoveKey( spep_1 -3 + 113, 1, 83.6, -50.6 , 0 );

setMoveKey( spep_1 -3 + 114, 1, 58.3, -64.9 , 0 );
setMoveKey( spep_1 -3 + 115, 1, 58.3, -64.9 , 0 );

setMoveKey( spep_1 -3 + 116, 1, 30.8, -31.6 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 43.4, -24 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 44.2, -32.3 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 52.9, -24.6 , 0 );
setMoveKey( spep_1 -3 + 123, 1, 52.9, -24.6 , 0 );

setMoveKey( spep_1 -3 + 124, 1, 76.2, -38.1 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 82.7, -40.4 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 77.4, -54.7 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 88, -53 , 0 );
setMoveKey( spep_1 -3 + 131, 1, 88, -53 , 0 );

setMoveKey( spep_1 -3 + 132, 1, 49, -27.9 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 59, -21.2 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 61, -26.3 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 71, -23.6 , 0 );
setMoveKey( spep_1 -3 + 139, 1, 71, -23.6 , 0 );

setMoveKey( spep_1 -3 + 140, 1, 80.2, -45.7 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 98.3, -38.3 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 104.5, -46.8 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 67.8, -56.5 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 75.9, -60.4 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 91.9, -56.3 , 0 );
setMoveKey( spep_1 -3 + 151, 1, 91.9, -56.3 , 0 );

setMoveKey( spep_1 -3 + 152, 1, 27.9, -27.4 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 46.5, -14 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 53.3, -16.5 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 67.9, -3.1 , 0 );
setMoveKey( spep_1 -3 + 159, 1, 67.9, -3.1 , 0 );

setMoveKey( spep_1 -3 + 160, 1, 153.1, -16.9 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 172.9, -13.5 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 180.8, -22.1 , 0 );
setMoveKey( spep_1 -3 + 165, 1, 180.8, -22.1 , 0 );

setMoveKey( spep_1 -3 + 166, 1, 105.1, -45.6 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 104.8, -44.7 , 0 );
setMoveKey( spep_1 -3 + 169, 1, 104.8, -44.7 , 0 );

setMoveKey( spep_1 -3 + 170, 1, 44, -23.1 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 46.3, -21.7 , 0 );
setMoveKey( spep_1 -3 + 174, 1, 52, -19.5 , 0 );
setMoveKey( spep_1 -3 + 176, 1, 57.8, -17.2 , 0 );
setMoveKey( spep_1 -3 + 178, 1, 63.5, -14.9 , 0 );
setMoveKey( spep_1 -3 + 180, 1, 69.4, -12.5 , 0 );
setMoveKey( spep_1 -3 + 182, 1, 75.2, -10.1 , 0 );
setMoveKey( spep_1 -3 + 184, 1, 81.1, -7.7 , 0 );
setMoveKey( spep_1 -3 + 186, 1, 87, -5.2 , 0 );
setMoveKey( spep_1 -3 + 188, 1, 92.9, -2.8 , 0 );
setMoveKey( spep_1 -3 + 190, 1, 98.9, -0.3 , 0 );
setMoveKey( spep_1 -3 + 192, 1, 104.8, 2.2 , 0 );
setMoveKey( spep_1 -3 + 194, 1, 110.8, 4.7 , 0 );
setMoveKey( spep_1 -3 + 196, 1, 116.8, 7.2 , 0 );
setMoveKey( spep_1 -3 + 197, 1, 116.8, 7.2 , 0 );

setMoveKey( spep_1 -3 + 198, 1, 114.8, -26.9 , 0 );
setMoveKey( spep_1 -3 + 200, 1, 207.3, 3.9 , 0 );
setMoveKey( spep_1 -3 + 202, 1, 35.2, -65.1 , 0 );
setMoveKey( spep_1 -3 + 204, 1, 63.1, -28.1 , 0 );
setMoveKey( spep_1 -3 + 206, 1, 39.9, -67.9 , 0 );
setMoveKey( spep_1 -3 + 208, 1, 55.1, -30.9 , 0 );
setMoveKey( spep_1 -3 + 210, 1, 17.4, -44.8 , 0 );
setMoveKey( spep_1 -3 + 212, 1, 69.2, -33 , 0 );
setMoveKey( spep_1 -3 + 214, 1, 57.1, -78.8 , 0 );
setMoveKey( spep_1 -3 + 216, 1, 83.3, -35 , 0 );
setMoveKey( spep_1 -3 + 218, 1, 58.4, -55.2 , 0 );
setMoveKey( spep_1 -3 + 220, 1, 101.4, -32.7 , 0 );
setMoveKey( spep_1 -3 + 222, 1, 99.6, -68 , 0 );
setMoveKey( spep_1 -3 + 224, 1, 123.3, -26.5 , 0 );
setMoveKey( spep_1 -3 + 226, 1, 108.6, -36.3 , 0 );
setMoveKey( spep_1 -3 + 228, 1, 144.9, -20.5 , 0 );
setMoveKey( spep_1 -3 + 230, 1, 107.3, -36.4 , 0 );
setMoveKey( spep_1 -3 + 232, 1, 95.2, -39.6 , 0 );
setMoveKey( spep_1 -3 + 234, 1, 64, -61.9 , 0 );
setMoveKey( spep_1 -3 + 236, 1, 45.6, -58.6 , 0 );
setMoveKey( spep_1 -3 + 238, 1, 8.1, -74.5 , 0 );
setMoveKey( spep_1 -3 + 240, 1, -3.9, -77.6 , 0 );
setMoveKey( spep_1 -3 + 242, 1, 88.4, -29.3 , 0 );
setMoveKey( spep_1 -3 + 244, 1, 185.7, 40 , 0 );
setMoveKey( spep_1 -3 + 246, 1, 255.8, 85.4 , 0 );
setMoveKey( spep_1 -3 + 248, 1, 343.5, 138.9 , 0 );
setMoveKey( spep_1 -3 + 250, 1, 404.1, 168.4 , 0 );
setMoveKey( spep_1 -3 + 252, 1, 469.4, 218.7 , 0 );
setMoveKey( spep_1 -3 + 254, 1, 507.4, 245.1 , 0 );
setMoveKey( spep_1 -3 + 256, 1, 562.8, 279.4 , 0 );
setMoveKey( spep_1 -3 + 258, 1, 590.8, 296.1 , 0 );
setMoveKey( spep_1 -3 + 260, 1, 617, 314.2 , 0 );
setMoveKey( spep_1 -3 + 262, 1, 634.8, 327.5 , 0 );
setMoveKey( spep_1 -3 + 264, 1, 644.2, 335.8 , 0 );
setMoveKey( spep_1 -3 + 266, 1, 645.3, 339.1 , 0 );
setMoveKey( spep_1 -3 + 268, 1, 637.9, 337.4 , 0 );


setScaleKey( spep_1 -3 + 24, 1, 1.65, 1.65 );
setScaleKey( spep_1 -3 + 26, 1, 1.64, 1.64 );
setScaleKey( spep_1 -3 + 28, 1, 1.63, 1.63 );
setScaleKey( spep_1 -3 + 30, 1, 1.61, 1.61 );
setScaleKey( spep_1 -3 + 32, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 34, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 36, 1, 1.58, 1.58 );
setScaleKey( spep_1 -3 + 38, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 40, 1, 1.55, 1.55 );
setScaleKey( spep_1 -3 + 42, 1, 1.57, 1.57 );
setScaleKey( spep_1 -3 + 44, 1, 1.58, 1.58 );
setScaleKey( spep_1 -3 + 46, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 48, 1, 1.61, 1.61 );
setScaleKey( spep_1 -3 + 50, 1, 1.63, 1.63 );
setScaleKey( spep_1 -3 + 52, 1, 1.64, 1.64 );
setScaleKey( spep_1 -3 + 54, 1, 1.66, 1.66 );
setScaleKey( spep_1 -3 + 56, 1, 1.67, 1.67 );
setScaleKey( spep_1 -3 + 58, 1, 1.69, 1.69 );
setScaleKey( spep_1 -3 + 59, 1, 1.69, 1.69 );

setScaleKey( spep_1 -3 + 60, 1, 2.31, 2.31 );
setScaleKey( spep_1 -3 + 62, 1, 2.24, 2.24 );
setScaleKey( spep_1 -3 + 64, 1, 2.17, 2.17 );
setScaleKey( spep_1 -3 + 66, 1, 2.1, 2.1 );
setScaleKey( spep_1 -3 + 68, 1, 2.03, 2.03 );
setScaleKey( spep_1 -3 + 70, 1, 1.96, 1.96 );
setScaleKey( spep_1 -3 + 72, 1, 1.89, 1.89 );
setScaleKey( spep_1 -3 + 74, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 76, 1, 1.75, 1.75 );
setScaleKey( spep_1 -3 + 97, 1, 1.75, 1.75 );

setScaleKey( spep_1 -3 + 98, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 104, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 105, 1, 1.62, 1.62 );

setScaleKey( spep_1 -3 + 106, 1, 1.76, 1.76 );
setScaleKey( spep_1 -3 + 112, 1, 1.76, 1.76 );
setScaleKey( spep_1 -3 + 113, 1, 1.76, 1.76 );

setScaleKey( spep_1 -3 + 114, 1, 1.77, 1.77 );
setScaleKey( spep_1 -3 + 115, 1, 1.77, 1.77 );

setScaleKey( spep_1 -3 + 116, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 120, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 122, 1, 1.63, 1.63 );
setScaleKey( spep_1 -3 + 123, 1, 1.63, 1.63 );

setScaleKey( spep_1 -3 + 124, 1, 1.76, 1.76 );
setScaleKey( spep_1 -3 + 130, 1, 1.76, 1.76 );
setScaleKey( spep_1 -3 + 131, 1, 1.76, 1.76 );

setScaleKey( spep_1 -3 + 132, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 138, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 139, 1, 1.62, 1.62 );

setScaleKey( spep_1 -3 + 140, 1, 1.76, 1.76 );
setScaleKey( spep_1 -3 + 150, 1, 1.76, 1.76 );
setScaleKey( spep_1 -3 + 151, 1, 1.76, 1.76 );

setScaleKey( spep_1 -3 + 152, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 158, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 159, 1, 1.62, 1.62 );

setScaleKey( spep_1 -3 + 160, 1, 1.76, 1.76 );
setScaleKey( spep_1 -3 + 169, 1, 1.76, 1.76 );

setScaleKey( spep_1 -3 + 170, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 172, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 174, 1, 1.64, 1.64 );
setScaleKey( spep_1 -3 + 176, 1, 1.65, 1.65 );
setScaleKey( spep_1 -3 + 178, 1, 1.67, 1.67 );
setScaleKey( spep_1 -3 + 180, 1, 1.68, 1.68 );
setScaleKey( spep_1 -3 + 182, 1, 1.7, 1.7 );
setScaleKey( spep_1 -3 + 184, 1, 1.71, 1.71 );
setScaleKey( spep_1 -3 + 186, 1, 1.73, 1.73 );
setScaleKey( spep_1 -3 + 188, 1, 1.74, 1.74 );
setScaleKey( spep_1 -3 + 190, 1, 1.76, 1.76 );
setScaleKey( spep_1 -3 + 192, 1, 1.77, 1.77 );
setScaleKey( spep_1 -3 + 194, 1, 1.79, 1.79 );
setScaleKey( spep_1 -3 + 196, 1, 1.8, 1.8 );
setScaleKey( spep_1 -3 + 197, 1, 1.8, 1.8 );

setScaleKey( spep_1 -3 + 198, 1, 1.75, 1.75 );
setScaleKey( spep_1 -3 + 200, 1, 2.25, 2.25 );
setScaleKey( spep_1 -3 + 202, 1, 1.75, 1.75 );
setScaleKey( spep_1 -3 + 204, 1, 1.73, 1.73 );
setScaleKey( spep_1 -3 + 206, 1, 1.71, 1.71 );
setScaleKey( spep_1 -3 + 208, 1, 1.69, 1.69 );
setScaleKey( spep_1 -3 + 210, 1, 1.67, 1.67 );
setScaleKey( spep_1 -3 + 212, 1, 1.66, 1.66 );
setScaleKey( spep_1 -3 + 214, 1, 1.64, 1.64 );
setScaleKey( spep_1 -3 + 216, 1, 1.63, 1.63 );
setScaleKey( spep_1 -3 + 218, 1, 1.61, 1.61 );
setScaleKey( spep_1 -3 + 220, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 222, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 224, 1, 1.57, 1.57 );
setScaleKey( spep_1 -3 + 226, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 228, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 230, 1, 1.55, 1.55 );
setScaleKey( spep_1 -3 + 234, 1, 1.55, 1.55 );
setScaleKey( spep_1 -3 + 236, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 240, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 242, 1, 1.57, 1.57 );
setScaleKey( spep_1 -3 + 246, 1, 1.57, 1.57 );
setScaleKey( spep_1 -3 + 248, 1, 1.58, 1.58 );
setScaleKey( spep_1 -3 + 252, 1, 1.58, 1.58 );
setScaleKey( spep_1 -3 + 254, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 258, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 260, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 266, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 268, 1, 1.61, 1.61 );


setRotateKey( spep_1 -3 + 24, 1, 0 );
setRotateKey( spep_1 -3 + 58, 1, 0 );
setRotateKey( spep_1 -3 + 59, 1, 0 );

setRotateKey( spep_1 -3 + 60, 1, 0 );
setRotateKey( spep_1 -3 + 62, 1, 0.7 );
setRotateKey( spep_1 -3 + 64, 1, 1.5 );
setRotateKey( spep_1 -3 + 66, 1, 2.2 );
setRotateKey( spep_1 -3 + 68, 1, 3 );
setRotateKey( spep_1 -3 + 70, 1, 0 );
setRotateKey( spep_1 -3 + 72, 1, 0.1 );
setRotateKey( spep_1 -3 + 74, 1, 0.2 );
setRotateKey( spep_1 -3 + 76, 1, 0.2 );
setRotateKey( spep_1 -3 + 78, 1, 0.3 );
setRotateKey( spep_1 -3 + 80, 1, 0.4 );
setRotateKey( spep_1 -3 + 82, 1, 0.5 );
setRotateKey( spep_1 -3 + 84, 1, 0.6 );
setRotateKey( spep_1 -3 + 86, 1, 0.6 );
setRotateKey( spep_1 -3 + 88, 1, 0.7 );
setRotateKey( spep_1 -3 + 90, 1, 0.8 );
setRotateKey( spep_1 -3 + 92, 1, 0.9 );
setRotateKey( spep_1 -3 + 94, 1, 1 );
setRotateKey( spep_1 -3 + 97, 1, 1 );

setRotateKey( spep_1 -3 + 98, 1, -41 );
setRotateKey( spep_1 -3 + 100, 1, -40.4 );
setRotateKey( spep_1 -3 + 102, 1, -39.7 );
setRotateKey( spep_1 -3 + 104, 1, -39.1 );
setRotateKey( spep_1 -3 + 105, 1, -39.1 );

setRotateKey( spep_1 -3 + 106, 1, -0.2 );
setRotateKey( spep_1 -3 + 112, 1, -0.2 );
setRotateKey( spep_1 -3 + 113, 1, -0.2 );

setRotateKey( spep_1 -3 + 114, 1, -2 );
setRotateKey( spep_1 -3 + 115, 1, -2 );

setRotateKey( spep_1 -3 + 116, 1, -41 );
setRotateKey( spep_1 -3 + 118, 1, -37.7 );
setRotateKey( spep_1 -3 + 120, 1, -34.4 );
setRotateKey( spep_1 -3 + 122, 1, -31.1 );
setRotateKey( spep_1 -3 + 123, 1, -31.1 );

setRotateKey( spep_1 -3 + 124, 1, -8.7 );
setRotateKey( spep_1 -3 + 126, 1, -9.7 );
setRotateKey( spep_1 -3 + 128, 1, -10.7 );
setRotateKey( spep_1 -3 + 130, 1, -11.8 );
setRotateKey( spep_1 -3 + 131, 1, -11.8 );

setRotateKey( spep_1 -3 + 132, 1, -41 );
setRotateKey( spep_1 -3 + 134, 1, -40.1 );
setRotateKey( spep_1 -3 + 136, 1, -39.1 );
setRotateKey( spep_1 -3 + 138, 1, -38.1 );
setRotateKey( spep_1 -3 + 139, 1, -38.1 );

setRotateKey( spep_1 -3 + 140, 1, -5.7 );
setRotateKey( spep_1 -3 + 144, 1, -5.7 );
setRotateKey( spep_1 -3 + 146, 1, -3.8 );
setRotateKey( spep_1 -3 + 148, 1, -0.4 );
setRotateKey( spep_1 -3 + 150, 1, 2.9 );
setRotateKey( spep_1 -3 + 151, 1, 2.9 );

setRotateKey( spep_1 -3 + 152, 1, -41 );
setRotateKey( spep_1 -3 + 154, 1, -40.1 );
setRotateKey( spep_1 -3 + 156, 1, -39.1 );
setRotateKey( spep_1 -3 + 158, 1, -38.1 );
setRotateKey( spep_1 -3 + 159, 1, -38.1 );

setRotateKey( spep_1 -3 + 160, 1, -5.7 );
setRotateKey( spep_1 -3 + 165, 1, -5.7 );

setRotateKey( spep_1 -3 + 166, 1, -2 );
setRotateKey( spep_1 -3 + 169, 1, -2 );

setRotateKey( spep_1 -3 + 170, 1, -41.8 );
setRotateKey( spep_1 -3 + 172, 1, -41.5 );
setRotateKey( spep_1 -3 + 174, 1, -41.2 );
setRotateKey( spep_1 -3 + 176, 1, -40.8 );
setRotateKey( spep_1 -3 + 178, 1, -40.5 );
setRotateKey( spep_1 -3 + 180, 1, -40.2 );
setRotateKey( spep_1 -3 + 182, 1, -39.9 );
setRotateKey( spep_1 -3 + 184, 1, -39.6 );
setRotateKey( spep_1 -3 + 186, 1, -39.2 );
setRotateKey( spep_1 -3 + 188, 1, -38.9 );
setRotateKey( spep_1 -3 + 190, 1, -38.6 );
setRotateKey( spep_1 -3 + 192, 1, -38.3 );
setRotateKey( spep_1 -3 + 194, 1, -37.9 );
setRotateKey( spep_1 -3 + 196, 1, -37.6 );
setRotateKey( spep_1 -3 + 197, 1, -37.6 );

setRotateKey( spep_1 -3 + 198, 1, -12 );
setRotateKey( spep_1 -3 + 268, 1, -12 );

-- ** 書き文字エントリー ** --
ctBaki = entryEffectLife( spep_1 -3 + 60, 10020, 28, 0x100, -1, 0, 22.3, 323.6 ); --バキッ
setEffMoveKey( spep_1 -3 + 60, ctBaki, 22.3, 323.6 , 0 );
setEffMoveKey( spep_1 -3 + 62, ctBaki, 31.7, 265.5 , 0 );
setEffMoveKey( spep_1 -3 + 64, ctBaki, 8.4, 285.7 , 0 );
setEffMoveKey( spep_1 -3 + 66, ctBaki, 30.6, 273.2 , 0 );
setEffMoveKey( spep_1 -3 + 68, ctBaki, 9.1, 292.1 , 0 );
setEffMoveKey( spep_1 -3 + 70, ctBaki, 29.4, 281 , 0 );
setEffMoveKey( spep_1 -3 + 72, ctBaki, 9.6, 297.1 , 0 );
setEffMoveKey( spep_1 -3 + 74, ctBaki, 28.7, 285.2 , 0 );
setEffMoveKey( spep_1 -3 + 76, ctBaki, 9.9, 300.6 , 0 );
setEffMoveKey( spep_1 -3 + 78, ctBaki, 28, 289.5 , 0 );
setEffMoveKey( spep_1 -3 + 80, ctBaki, 10.3, 304.1 , 0 );
setEffMoveKey( spep_1 -3 + 82, ctBaki, 27, 295.2 , 0 );
setEffMoveKey( spep_1 -3 + 84, ctBaki, 10.7, 309.9 , 0 );
setEffMoveKey( spep_1 -3 + 86, ctBaki, 25.8, 302.2 , 0 );
setEffMoveKey( spep_1 -3 + 88, ctBaki, 25.1, 305.7 , 0 );

setEffScaleKey( spep_1 -3 + 60, ctBaki, 1.41, 1.41 );
setEffScaleKey( spep_1 -3 + 62, ctBaki, 3.44, 3.44 );
setEffScaleKey( spep_1 -3 + 64, ctBaki, 3.3, 3.3 );
setEffScaleKey( spep_1 -3 + 66, ctBaki, 3.17, 3.17 );
setEffScaleKey( spep_1 -3 + 68, ctBaki, 3.03, 3.03 );
setEffScaleKey( spep_1 -3 + 70, ctBaki, 2.9, 2.9 );
setEffScaleKey( spep_1 -3 + 72, ctBaki, 2.82, 2.82 );
setEffScaleKey( spep_1 -3 + 74, ctBaki, 2.75, 2.75 );
setEffScaleKey( spep_1 -3 + 76, ctBaki, 2.67, 2.67 );
setEffScaleKey( spep_1 -3 + 78, ctBaki, 2.59, 2.59 );
setEffScaleKey( spep_1 -3 + 80, ctBaki, 2.52, 2.52 );
setEffScaleKey( spep_1 -3 + 82, ctBaki, 2.4, 2.4 );
setEffScaleKey( spep_1 -3 + 84, ctBaki, 2.28, 2.28 );
setEffScaleKey( spep_1 -3 + 86, ctBaki, 2.16, 2.16 );
setEffScaleKey( spep_1 -3 + 88, ctBaki, 2.04, 2.04 );

setEffRotateKey( spep_1 -3 + 60, ctBaki, -9.2 );
setEffRotateKey( spep_1 -3 + 70, ctBaki, -9.2 );
setEffRotateKey( spep_1 -3 + 72, ctBaki, -9.3 );
setEffRotateKey( spep_1 -3 + 76, ctBaki, -9.3 );
setEffRotateKey( spep_1 -3 + 78, ctBaki, -9.4 );
setEffRotateKey( spep_1 -3 + 80, ctBaki, -9.4 );
setEffRotateKey( spep_1 -3 + 82, ctBaki, -9.3 );
setEffRotateKey( spep_1 -3 + 86, ctBaki, -9.3 );
setEffRotateKey( spep_1 -3 + 88, ctBaki, -9.2 );

setEffAlphaKey( spep_1 -3 + 60, ctBaki, 255 );
setEffAlphaKey( spep_1 -3 + 70, ctBaki, 255 );
setEffAlphaKey( spep_1 -3 + 72, ctBaki, 242 );
setEffAlphaKey( spep_1 -3 + 74, ctBaki, 230 );
setEffAlphaKey( spep_1 -3 + 76, ctBaki, 217 );
setEffAlphaKey( spep_1 -3 + 78, ctBaki, 204 );
setEffAlphaKey( spep_1 -3 + 80, ctBaki, 191 );
setEffAlphaKey( spep_1 -3 + 82, ctBaki, 147 );
setEffAlphaKey( spep_1 -3 + 84, ctBaki, 102 );
setEffAlphaKey( spep_1 -3 + 86, ctBaki, 58 );
setEffAlphaKey( spep_1 -3 + 88, ctBaki, 13 );


ctDogagaga = entryEffectLife( spep_1 -3 + 90, 10017, 92, 0x100, -1, 0, 12, 226.8 );
setEffShake( spep_1 -3 + 100, ctDogagaga, 80, 15 );

setEffMoveKey( spep_1 -3 + 90, ctDogagaga, 12, 226.8 , 0 );
setEffMoveKey( spep_1 -3 + 92, ctDogagaga, 11.8, 227.2 , 0 );
setEffMoveKey( spep_1 -3 + 94, ctDogagaga, 4, 236.1 , 0 );
setEffMoveKey( spep_1 -3 + 96, ctDogagaga, 11.8, 227 , 0 );
setEffMoveKey( spep_1 -3 + 98, ctDogagaga, 4.8, 235 , 0 );
setEffMoveKey( spep_1 -3 + 100, ctDogagaga, 11.9, 226.8 , 0 );
--[[setEffMoveKey( spep_1 -3 + 102, ctDogagaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 104, ctDogagaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_1 -3 + 106, ctDogagaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 108, ctDogagaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_1 -3 + 110, ctDogagaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 112, ctDogagaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_1 -3 + 114, ctDogagaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 116, ctDogagaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_1 -3 + 118, ctDogagaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 120, ctDogagaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_1 -3 + 122, ctDogagaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 124, ctDogagaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_1 -3 + 126, ctDogagaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 128, ctDogagaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_1 -3 + 130, ctDogagaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 132, ctDogagaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_1 -3 + 134, ctDogagaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 136, ctDogagaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_1 -3 + 138, ctDogagaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 140, ctDogagaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_1 -3 + 142, ctDogagaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 144, ctDogagaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_1 -3 + 146, ctDogagaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 148, ctDogagaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_1 -3 + 150, ctDogagaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 152, ctDogagaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_1 -3 + 154, ctDogagaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 156, ctDogagaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_1 -3 + 158, ctDogagaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 160, ctDogagaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_1 -3 + 162, ctDogagaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 164, ctDogagaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_1 -3 + 166, ctDogagaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 168, ctDogagaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_1 -3 + 170, ctDogagaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 172, ctDogagaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_1 -3 + 174, ctDogagaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 176, ctDogagaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_1 -3 + 178, ctDogagaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 180, ctDogagaga, 11.9, 226.8 , 0 );]]
setEffMoveKey( spep_1 -3 + 182, ctDogagaga, 11.9, 226.8 , 0 );

setEffScaleKey( spep_1 -3 + 90, ctDogagaga, 2.44, 2.44 );
setEffScaleKey( spep_1 -3 + 92, ctDogagaga, 3.21, 3.21 );
setEffScaleKey( spep_1 -3 + 94, ctDogagaga, 3.06, 3.06 );
setEffScaleKey( spep_1 -3 + 96, ctDogagaga, 2.91, 2.91 );
setEffScaleKey( spep_1 -3 + 98, ctDogagaga, 2.76, 2.76 );
setEffScaleKey( spep_1 -3 + 100, ctDogagaga, 2.6, 2.6 );
setEffScaleKey( spep_1 -3 + 182, ctDogagaga, 2.6, 2.6 );

setEffRotateKey( spep_1 -3 + 90, ctDogagaga, 0 );
setEffRotateKey( spep_1 -3 + 182, ctDogagaga, 0 );

setEffAlphaKey( spep_1 -3 + 90, ctDogagaga, 255 );
setEffAlphaKey( spep_1 -3 + 174, ctDogagaga, 255 );
setEffAlphaKey( spep_1 -3 + 176, ctDogagaga, 191 );
setEffAlphaKey( spep_1 -3 + 178, ctDogagaga, 128 );
setEffAlphaKey( spep_1 -3 + 180, ctDogagaga, 64 );
setEffAlphaKey( spep_1 -3 + 182, ctDogagaga, 0 );


cDogon = entryEffectLife( spep_1 -3 + 200, 10018, 32, 0x100, -1, 0, 4.3, 175.4 );
setEffMoveKey( spep_1 -3 + 200, cDogon, 4.3, 175.4 , 0 );
setEffMoveKey( spep_1 -3 + 202, cDogon, -213.7, 322.5 , 0 );
setEffMoveKey( spep_1 -3 + 204, cDogon, -155.7, 300.7 , 0 );
setEffMoveKey( spep_1 -3 + 206, cDogon, -141.7, 287 , 0 );
setEffMoveKey( spep_1 -3 + 208, cDogon, -103.9, 254.7 , 0 );
setEffMoveKey( spep_1 -3 + 210, cDogon, -113.5, 252.7 , 0 );
setEffMoveKey( spep_1 -3 + 212, cDogon, -90.6, 251.6 , 0 );
setEffMoveKey( spep_1 -3 + 214, cDogon, -102.1, 257.5 , 0 );
setEffMoveKey( spep_1 -3 + 216, cDogon, -81.8, 248.4 , 0 );
setEffMoveKey( spep_1 -3 + 218, cDogon, -94.5, 242.5 , 0 );
setEffMoveKey( spep_1 -3 + 220, cDogon, -86, 251.9 , 0 );
setEffMoveKey( spep_1 -3 + 222, cDogon, -80.2, 234.7 , 0 );
setEffMoveKey( spep_1 -3 + 224, cDogon, -83.6, 240 , 0 );
setEffMoveKey( spep_1 -3 + 226, cDogon, -86.8, 234.1 , 0 );
setEffMoveKey( spep_1 -3 + 228, cDogon, -60.8, 229 , 0 );
setEffMoveKey( spep_1 -3 + 230, cDogon, -65.2, 229.9 , 0 );
setEffMoveKey( spep_1 -3 + 232, cDogon, -52.4, 217 , 0 );

setEffScaleKey( spep_1 -3 + 200, cDogon, 2.08, 2.08 );
setEffScaleKey( spep_1 -3 + 202, cDogon, 4.82, 4.82 );
setEffScaleKey( spep_1 -3 + 204, cDogon, 4.4, 4.4 );
setEffScaleKey( spep_1 -3 + 206, cDogon, 3.98, 3.98 );
setEffScaleKey( spep_1 -3 + 208, cDogon, 3.55, 3.55 );
setEffScaleKey( spep_1 -3 + 210, cDogon, 3.52, 3.52 );
setEffScaleKey( spep_1 -3 + 212, cDogon, 3.49, 3.49 );
setEffScaleKey( spep_1 -3 + 214, cDogon, 3.45, 3.45 );
setEffScaleKey( spep_1 -3 + 216, cDogon, 3.42, 3.42 );
setEffScaleKey( spep_1 -3 + 218, cDogon, 3.38, 3.38 );
setEffScaleKey( spep_1 -3 + 220, cDogon, 3.35, 3.35 );
setEffScaleKey( spep_1 -3 + 222, cDogon, 3.32, 3.32 );
setEffScaleKey( spep_1 -3 + 224, cDogon, 3.28, 3.28 );
setEffScaleKey( spep_1 -3 + 226, cDogon, 3.17, 3.17 );
setEffScaleKey( spep_1 -3 + 228, cDogon, 3.07, 3.07 );
setEffScaleKey( spep_1 -3 + 230, cDogon, 2.96, 2.96 );
setEffScaleKey( spep_1 -3 + 232, cDogon, 2.85, 2.85 );

setEffRotateKey( spep_1 -3 + 200, cDogon, -38.2 );
setEffRotateKey( spep_1 -3 + 232, cDogon, -38.2 );

setEffAlphaKey( spep_1 -3 + 200, cDogon, 255 );
setEffAlphaKey( spep_1 -3 + 224, cDogon, 255 );
setEffAlphaKey( spep_1 -3 + 226, cDogon, 194 );
setEffAlphaKey( spep_1 -3 + 228, cDogon, 134 );
setEffAlphaKey( spep_1 -3 + 230, cDogon, 73 );
setEffAlphaKey( spep_1 -3 + 232, cDogon, 13 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 278, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 57, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade
entryFade( spep_1 + 195, 0, 1, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 264, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
stopSe( spep_1 -14 + 43, se_1116, 5 );
playSe( spep_1 -14 + 62, 1189 );
playSe( spep_1 -14 + 71, 1009 );
playSe( spep_1 -14 + 71, 1110 );
stopSe( spep_1 -14 + 73, se_1183, 0 );
playSe( spep_1 -14 + 95, 1000 );
setSeVolume( spep_1 -14 + 95, 1000, 141 );
playSe( spep_1 -14 + 102, 1006 );
setSeVolume( spep_1 -14 + 102, 1006, 112 );
playSe( spep_1 -14 + 109, 1000 );
setSeVolume( spep_1 -14 + 109, 1000, 79 );
playSe( spep_1 -14 + 116, 1006 );
playSe( spep_1 -14 + 117, 1189 );
setSeVolume( spep_1 -14 + 117, 1189, 63 );
playSe( spep_1 -14 + 122, 1000 );
setSeVolume( spep_1 -14 + 122, 1000, 112 );
playSe( spep_1 -14 + 130, 1000 );
playSe( spep_1 -14 + 139, 1006 );
setSeVolume( spep_1 -14 + 139, 1006, 71 );
playSe( spep_1 -14 + 147, 1000 );
playSe( spep_1 -14 + 156, 1006 );
playSe( spep_1 -14 + 156, 1000 );
setSeVolume( spep_1 -14 + 156, 1006, 71 );
playSe( spep_1 -14 + 165, 1000 );
playSe( spep_1 -14 + 168, 1003 );
playSe( spep_1 -14 + 198, 1004 );
setSeVolume( spep_1 -14 + 198, 1004, 79 );
playSe( spep_1 -14 + 205, 1009 );
playSe( spep_1 -14 + 205, 1120 );
playSe( spep_1 -14 + 228, 1072 );
setSeVolume( spep_1 -14 + 228, 1072, 0 );
setSeVolume( spep_1 -14 + 249, 1072, 8.33 );
setSeVolume( spep_1 -14 + 250, 1072, 16.67 );
setSeVolume( spep_1 -14 + 251, 1072, 25.00 );
setSeVolume( spep_1 -14 + 252, 1072, 33.33 );
setSeVolume( spep_1 -14 + 253, 1072, 41.67 );
setSeVolume( spep_1 -14 + 254, 1072, 50.00 );
setSeVolume( spep_1 -14 + 255, 1072, 58.33 );
setSeVolume( spep_1 -14 + 256, 1072, 66.67 );
setSeVolume( spep_1 -14 + 257, 1072, 75.00 );
setSeVolume( spep_1 -14 + 258, 1072, 83.33 );
setSeVolume( spep_1 -14 + 259, 1072, 91.67 );
setSeVolume( spep_1 -14 + 260, 1072, 100.00 );

--次の準備
spep_2 = spep_1 + 276;

------------------------------------------------------
-- ギャリック砲溜め
------------------------------------------------------

-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); --ギャリック砲溜め(ef_004)
setEffMoveKey( spep_2 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_2 + 66, tame, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_2 + 66, tame, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 66, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 66, tame, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 68, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 58, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_2 + 12, 1036 );
se_1037 = playSe( spep_2 + 12, 1037 );
playSe( spep_2 + 36, 1036 );
se_1036 = playSe( spep_2 + 60, 1036 );

--次の準備
spep_3 = spep_2 + 66;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_3 -14 + 14, 1035 );
stopSe( spep_3 -14 + 14, se_1037, 0 );
stopSe( spep_3 -14 + 14, se_1036, 0 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
-- ギャリック砲発射
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffect( spep_4 + 0, SP_05r, 0x80, -1, 0, 0, 0 ); --ギャリック砲発射(ef_005)
setEffMoveKey( spep_4 + 0, hassha, 0, 0, 0 );
setEffMoveKey( spep_4 + 96, hassha, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_4 + 96, hassha, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hassha, 0 );
setEffRotateKey( spep_4 + 96, hassha, 0 );
setEffAlphaKey( spep_4 + 0, hassha, 255 );
setEffAlphaKey( spep_4 + 96, hassha, 255 );

-- ** 書き文字エントリー ** --
ctZudododo1 = entryEffectLife( spep_4 -3 + 20, 10014, 70, 0x100, -1, 0, -119, 297.6 );
setEffShake( spep_4 -3 + 22, ctZudododo1, 78, 20 );

setEffMoveKey( spep_4 -3 + 20, ctZudododo1, -119, 297.6 , 0 );
setEffMoveKey( spep_4 -3 + 22, ctZudododo1, -104.1, 348.8 , 0 );
--[[setEffMoveKey( spep_4 -3 + 24, ctZudododo1, -98.4, 330.4 , 0 );
setEffMoveKey( spep_4 -3 + 26, ctZudododo1, -104.1, 348.8 , 0 );
setEffMoveKey( spep_4 -3 + 28, ctZudododo1, -98.4, 330.4 , 0 );
setEffMoveKey( spep_4 -3 + 30, ctZudododo1, -104.1, 348.8 , 0 );
setEffMoveKey( spep_4 -3 + 32, ctZudododo1, -98.4, 330.4 , 0 );
setEffMoveKey( spep_4 -3 + 34, ctZudododo1, -104.1, 348.8 , 0 );
setEffMoveKey( spep_4 -3 + 36, ctZudododo1, -98.4, 330.4 , 0 );
setEffMoveKey( spep_4 -3 + 38, ctZudododo1, -104.1, 348.8 , 0 );
setEffMoveKey( spep_4 -3 + 40, ctZudododo1, -98.4, 330.4 , 0 );
setEffMoveKey( spep_4 -3 + 42, ctZudododo1, -104.1, 348.8 , 0 );
setEffMoveKey( spep_4 -3 + 44, ctZudododo1, -98.4, 330.4 , 0 );
setEffMoveKey( spep_4 -3 + 46, ctZudododo1, -104.1, 348.8 , 0 );
setEffMoveKey( spep_4 -3 + 48, ctZudododo1, -98.4, 330.4 , 0 );
setEffMoveKey( spep_4 -3 + 50, ctZudododo1, -104.1, 348.8 , 0 );
setEffMoveKey( spep_4 -3 + 52, ctZudododo1, -98.4, 330.4 , 0 );
setEffMoveKey( spep_4 -3 + 54, ctZudododo1, -104.1, 348.8 , 0 );
setEffMoveKey( spep_4 -3 + 56, ctZudododo1, -98.4, 330.4 , 0 );
setEffMoveKey( spep_4 -3 + 58, ctZudododo1, -104.1, 348.8 , 0 );
setEffMoveKey( spep_4 -3 + 60, ctZudododo1, -98.4, 330.4 , 0 );
setEffMoveKey( spep_4 -3 + 62, ctZudododo1, -104.1, 348.8 , 0 );
setEffMoveKey( spep_4 -3 + 64, ctZudododo1, -98.4, 330.4 , 0 );
setEffMoveKey( spep_4 -3 + 66, ctZudododo1, -104.1, 348.8 , 0 );
setEffMoveKey( spep_4 -3 + 68, ctZudododo1, -98.4, 330.4 , 0 );
setEffMoveKey( spep_4 -3 + 70, ctZudododo1, -104.1, 348.8 , 0 );
setEffMoveKey( spep_4 -3 + 72, ctZudododo1, -98.4, 330.4 , 0 );
setEffMoveKey( spep_4 -3 + 74, ctZudododo1, -104.1, 348.8 , 0 );
setEffMoveKey( spep_4 -3 + 76, ctZudododo1, -98.4, 330.4 , 0 );
setEffMoveKey( spep_4 -3 + 78, ctZudododo1, -104.1, 348.8 , 0 );
setEffMoveKey( spep_4 -3 + 80, ctZudododo1, -98.4, 330.4 , 0 );
setEffMoveKey( spep_4 -3 + 82, ctZudododo1, -104.1, 348.8 , 0 );
setEffMoveKey( spep_4 -3 + 84, ctZudododo1, -98.4, 330.4 , 0 );
setEffMoveKey( spep_4 -3 + 86, ctZudododo1, -104.1, 348.8 , 0 );
setEffMoveKey( spep_4 -3 + 88, ctZudododo1, -98.4, 330.4 , 0 );]]
setEffMoveKey( spep_4 -3 + 90, ctZudododo1, -104.1, 348.8 , 0 );

setEffScaleKey( spep_4 -3 + 20, ctZudododo1, 1.19, 1.54 );
setEffScaleKey( spep_4 -3 + 22, ctZudododo1, 1.92, 2.49 );
setEffScaleKey( spep_4 -3 + 90, ctZudododo1, 1.92, 2.49 );

setEffRotateKey( spep_4 -3 + 20, ctZudododo1, -86.4 );
setEffRotateKey( spep_4 -3 + 90, ctZudododo1, -86.4 );

setEffAlphaKey( spep_4 -3 + 20, ctZudododo1, 128 );
setEffAlphaKey( spep_4 -3 + 22, ctZudododo1, 255 );
setEffAlphaKey( spep_4 -3 + 90, ctZudododo1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 86, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 白フェード ** --
entryFade( spep_4 + 84, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_4 + 10, 1022 );
setSeVolume( spep_4 + 10, 1022, 126 );

--次の準備
spep_5 = spep_4 + 96;

------------------------------------------------------
-- ギャリック砲敵接近
------------------------------------------------------

-- ** エフェクト等 ** --
semaru_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0, 1 ); --ギャリック砲敵接近；気弾(ef_006)
setEffMoveKey( spep_5 + 0, semaru_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 56, semaru_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, semaru_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, semaru_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, semaru_f, 0 );
setEffRotateKey( spep_5 + 56, semaru_f, 0 );
setEffAlphaKey( spep_5 + 0, semaru_f, 255 );
setEffAlphaKey( spep_5 + 56, semaru_f, 255 );

semaru_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 ); --ギャリック砲敵接近；気弾(ef_007)
setEffMoveKey( spep_5 + 0, semaru_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 56, semaru_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, semaru_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, semaru_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, semaru_b, 0 );
setEffRotateKey( spep_5 + 56, semaru_b, 0 );
setEffAlphaKey( spep_5 + 0, semaru_b, 255 );
setEffAlphaKey( spep_5 + 56, semaru_b, 255 );

-- ** 敵の動き ** --
setDisp( spep_5 -3 + 3, 1, 1 );
setDisp( spep_5 -3 + 58, 1, 0 );
changeAnime( spep_5 -3 + 3, 1, 108 );

setMoveKey( spep_5 -3 + 3, 1, -458.9, -892.1 , 0 );
--setMoveKey( spep_5 -3 + 2, 1, -407.7, -794.9 , 0 );
setMoveKey( spep_5 -3 + 4, 1, -348.5, -681.8 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -297.3, -584.7 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -238.2, -471.6 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -187, -374.5 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -127.9, -261.4 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -76.7, -164.3 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -17.6, -51.1 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -10.1, -42.2 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 5.2, -17.4 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 12.3, -8.9 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 27.2, 15.3 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 34, 23.3 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 48.6, 47.1 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 55.1, 58.6 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 69.4, 77.9 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 75.5, 88.7 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 89.4, 107.2 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 95, 113.4 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 118.1, 144.5 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 132.7, 159 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 154.8, 189 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 168.4, 206.2 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 189.5, 230.9 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 202.1, 243 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 209.1, 257 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 208, 254.9 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 214.8, 268.7 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 213.5, 266.4 , 0 );

setScaleKey( spep_5 -3 + 3, 1, 4, 4 );
--setScaleKey( spep_5 -3 + 2, 1, 3.9, 3.9 );
setScaleKey( spep_5 -3 + 4, 1, 3.8, 3.8 );
setScaleKey( spep_5 -3 + 6, 1, 3.7, 3.7 );
setScaleKey( spep_5 -3 + 8, 1, 3.6, 3.6 );
setScaleKey( spep_5 -3 + 10, 1, 3.5, 3.5 );
setScaleKey( spep_5 -3 + 12, 1, 3.4, 3.4 );
setScaleKey( spep_5 -3 + 14, 1, 3.3, 3.3 );
setScaleKey( spep_5 -3 + 16, 1, 3.2, 3.2 );
setScaleKey( spep_5 -3 + 18, 1, 3.06, 3.06 );
setScaleKey( spep_5 -3 + 20, 1, 2.91, 2.91 );
setScaleKey( spep_5 -3 + 22, 1, 2.77, 2.77 );
setScaleKey( spep_5 -3 + 24, 1, 2.64, 2.64 );
setScaleKey( spep_5 -3 + 26, 1, 2.5, 2.5 );
setScaleKey( spep_5 -3 + 28, 1, 2.36, 2.36 );
setScaleKey( spep_5 -3 + 30, 1, 2.23, 2.23 );
setScaleKey( spep_5 -3 + 32, 1, 2.09, 2.09 );
setScaleKey( spep_5 -3 + 34, 1, 1.96, 1.96 );
setScaleKey( spep_5 -3 + 36, 1, 1.82, 1.82 );
setScaleKey( spep_5 -3 + 38, 1, 1.69, 1.69 );
setScaleKey( spep_5 -3 + 40, 1, 1.53, 1.53 );
setScaleKey( spep_5 -3 + 42, 1, 1.38, 1.38 );
setScaleKey( spep_5 -3 + 44, 1, 1.22, 1.22 );
setScaleKey( spep_5 -3 + 46, 1, 1.08, 1.08 );
setScaleKey( spep_5 -3 + 48, 1, 0.93, 0.93 );
setScaleKey( spep_5 -3 + 50, 1, 0.79, 0.79 );
setScaleKey( spep_5 -3 + 52, 1, 0.7, 0.7 );
setScaleKey( spep_5 -3 + 54, 1, 0.61, 0.61 );
setScaleKey( spep_5 -3 + 56, 1, 0.52, 0.52 );
setScaleKey( spep_5 -3 + 58, 1, 0.43, 0.43 );

setRotateKey( spep_5 -3 + 3, 1, 0 );
setRotateKey( spep_5 -3 + 58, 1, 0 );

-- ** 書き文字エントリー ** --
ctZudododo2 = entryEffectLife( spep_5 -3 + 3, 10014, 58, 0x100, -1, 0, -104.1, 348.8, 2 );
setEffShake( spep_5 -3 + 3, ctZudododo2, 58, 20 );

setEffMoveKey( spep_5 -3 + 3, ctZudododo2, -104.1, 348.8 , 0 );
--[[setEffMoveKey( spep_5 -3 + 2, ctZudododo2, -98.4, 330.4 , 0 );
setEffMoveKey( spep_5 -3 + 4, ctZudododo2, -104.1, 348.8 , 0 );
setEffMoveKey( spep_5 -3 + 6, ctZudododo2, -98.4, 330.4 , 0 );
setEffMoveKey( spep_5 -3 + 8, ctZudododo2, -104.1, 348.8 , 0 );
setEffMoveKey( spep_5 -3 + 10, ctZudododo2, -98.4, 330.4 , 0 );
setEffMoveKey( spep_5 -3 + 12, ctZudododo2, -104.1, 348.8 , 0 );
setEffMoveKey( spep_5 -3 + 14, ctZudododo2, -98.4, 330.4 , 0 );
setEffMoveKey( spep_5 -3 + 16, ctZudododo2, -104.1, 348.8 , 0 );
setEffMoveKey( spep_5 -3 + 18, ctZudododo2, -98.4, 330.4 , 0 );
setEffMoveKey( spep_5 -3 + 20, ctZudododo2, -104.1, 348.8 , 0 );
setEffMoveKey( spep_5 -3 + 22, ctZudododo2, -98.4, 330.4 , 0 );
setEffMoveKey( spep_5 -3 + 24, ctZudododo2, -104.1, 348.8 , 0 );
setEffMoveKey( spep_5 -3 + 26, ctZudododo2, -98.4, 330.4 , 0 );
setEffMoveKey( spep_5 -3 + 28, ctZudododo2, -104.1, 348.8 , 0 );
setEffMoveKey( spep_5 -3 + 30, ctZudododo2, -98.4, 330.4 , 0 );
setEffMoveKey( spep_5 -3 + 32, ctZudododo2, -104.1, 348.8 , 0 );
setEffMoveKey( spep_5 -3 + 34, ctZudododo2, -98.4, 330.4 , 0 );
setEffMoveKey( spep_5 -3 + 36, ctZudododo2, -104.1, 348.8 , 0 );
setEffMoveKey( spep_5 -3 + 38, ctZudododo2, -98.4, 330.4 , 0 );
setEffMoveKey( spep_5 -3 + 40, ctZudododo2, -104.1, 348.8 , 0 );
setEffMoveKey( spep_5 -3 + 42, ctZudododo2, -98.4, 330.4 , 0 );
setEffMoveKey( spep_5 -3 + 44, ctZudododo2, -104.1, 348.8 , 0 );
setEffMoveKey( spep_5 -3 + 46, ctZudododo2, -98.4, 330.4 , 0 );
setEffMoveKey( spep_5 -3 + 48, ctZudododo2, -104.1, 348.8 , 0 );
setEffMoveKey( spep_5 -3 + 50, ctZudododo2, -98.4, 330.4 , 0 );
setEffMoveKey( spep_5 -3 + 52, ctZudododo2, -104.1, 348.8 , 0 );
setEffMoveKey( spep_5 -3 + 54, ctZudododo2, -98.4, 330.4 , 0 );
setEffMoveKey( spep_5 -3 + 56, ctZudododo2, -104.1, 348.8 , 0 );]]
setEffMoveKey( spep_5 -3 + 58, ctZudododo2, -104.1, 348.8 , 0 );
setEffMoveKey( spep_5 -3 + 58, ctZudododo2, -98.4, 330.4 , 0 );

setEffScaleKey( spep_5 -3 + 3, ctZudododo2, 1.92, 2.49 );
setEffScaleKey( spep_5 -3 + 58, ctZudododo2, 1.92, 2.49 );

setEffRotateKey( spep_5 -3 + 3, ctZudododo2, -86.4 );
setEffRotateKey( spep_5 -3 + 58, ctZudododo2, -86.4 );

setEffAlphaKey( spep_5 -3 + 3, ctZudododo2, 255 );
setEffAlphaKey( spep_5 -3 + 58, ctZudododo2, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 58, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 38, 16, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_5 + 22, 1021 );

--次の準備
spep_6 = spep_5 + 56;

------------------------------------------------------
-- 爆発
------------------------------------------------------

-- ** エフェクト等 ** --
explosion = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0 ); --爆発(ef_007)
setEffMoveKey( spep_6 + 0, explosion, 0, 0, 0 );
setEffMoveKey( spep_6 + 130, explosion, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_6 + 130, explosion, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, explosion, 0 );
setEffRotateKey( spep_6 + 130, explosion, 0 );
setEffAlphaKey( spep_6 + 0, explosion, 255 );
setEffAlphaKey( spep_6 + 130, explosion, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_6 + 0, 906, 130, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 0, shuchusen2, 130, 20 );

setEffMoveKey( spep_6 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_6 + 130, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen2, 1.32, 1.92 );
setEffScaleKey( spep_6 + 130, shuchusen2, 1.32, 1.92 );

setEffRotateKey( spep_6 + 0, shuchusen2, 0 );
setEffRotateKey( spep_6 + 130, shuchusen2, 0 );

setEffAlphaKey( spep_6 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_6 + 130, shuchusen2, 255 );

-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_6 + 15, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 100 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 130, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
playSe( spep_6 -17 + 31, 1023 );
setSeVolume( spep_6 -17 + 31, 1023, 79 );
playSe( spep_6 -17 + 35, 1024 );
setSeVolume( spep_6 -17 + 35, 1024, 79 );

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 10 );
endPhase( spep_6 + 110 );

end