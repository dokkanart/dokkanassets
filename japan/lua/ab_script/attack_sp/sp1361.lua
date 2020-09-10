--4019020:超サイヤ人カンバー(大猿カンバー)_デザストルコンプレス

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
SP_01 = 154380; --登場〜掴む・手前
SP_02 = 154381; --にぎにぎ〜構え
SP_03 = 154382; --スローイング〜爆発・手前
SP_04 = 154383; --スローイング〜爆発・奥

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
-- 登場〜掴む・手前
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tojo = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --登場〜掴む・手前(ef_001)
setEffMoveKey( spep_0 + 0, tojo, 0, 0 , 0 );
setEffMoveKey( spep_0 + 166, tojo, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tojo, 1.0, 1.0 );
setEffScaleKey( spep_0 + 166, tojo, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tojo, 0 );
setEffRotateKey( spep_0 + 166, tojo, 0 );
setEffAlphaKey( spep_0 + 0, tojo, 255 );
setEffAlphaKey( spep_0 + 166, tojo, 255 );

-- ** 敵の動き ** --
setDisp( spep_0 -3 + 3, 1, 1 );
changeAnime( spep_0 -3 + 3, 1, 102 );

--setMoveKey( spep_0 -3 + 0, 1, 472.7, -757.4 , 0 );
setMoveKey( spep_0 -3 + 3, 1, 443.8, -679.2 , 0 );
setMoveKey( spep_0 -3 + 4, 1, 414, -601 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 383.5, -522.8 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 352.2, -444.5 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 320.1, -366.3 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 287.3, -288.1 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 253.7, -209.9 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 219.3, -131.7 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 184.1, -53.5 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 184.3, -50 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 184.4, -46.4 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 184.6, -42.8 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 184.6, -39.3 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 184.7, -35.7 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 184.6, -32.1 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 184.6, -28.6 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 184.6, -25 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 184.5, -21.4 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 184.4, -17.9 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 184.3, -14.3 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 184.1, -10.7 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 183.9, -7.2 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 183.7, -3.6 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 183.4, -0.1 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 183.5, 0 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 183.6, 0 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 183.7, -0.1 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 183.9, -0.1 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 184, -0.1 , 0 );

--setScaleKey( spep_0 -3 + 0, 1, 2.6, 2.6 );
setScaleKey( spep_0 -3 + 3, 1, 2.43, 2.43 );
setScaleKey( spep_0 -3 + 4, 1, 2.27, 2.27 );
setScaleKey( spep_0 -3 + 6, 1, 2.1, 2.1 );
setScaleKey( spep_0 -3 + 8, 1, 1.93, 1.93 );
setScaleKey( spep_0 -3 + 10, 1, 1.77, 1.77 );
setScaleKey( spep_0 -3 + 12, 1, 1.6, 1.6 );
setScaleKey( spep_0 -3 + 14, 1, 1.43, 1.43 );
setScaleKey( spep_0 -3 + 16, 1, 1.27, 1.27 );
setScaleKey( spep_0 -3 + 18, 1, 1.1, 1.1 );
setScaleKey( spep_0 -3 + 20, 1, 1.09, 1.09 );
setScaleKey( spep_0 -3 + 22, 1, 1.09, 1.09 );
setScaleKey( spep_0 -3 + 24, 1, 1.08, 1.08 );
setScaleKey( spep_0 -3 + 26, 1, 1.07, 1.07 );
setScaleKey( spep_0 -3 + 28, 1, 1.07, 1.07 );
setScaleKey( spep_0 -3 + 30, 1, 1.06, 1.06 );
setScaleKey( spep_0 -3 + 32, 1, 1.05, 1.05 );
setScaleKey( spep_0 -3 + 34, 1, 1.05, 1.05 );
setScaleKey( spep_0 -3 + 36, 1, 1.04, 1.04 );
setScaleKey( spep_0 -3 + 38, 1, 1.03, 1.03 );
setScaleKey( spep_0 -3 + 40, 1, 1.03, 1.03 );
setScaleKey( spep_0 -3 + 42, 1, 1.02, 1.02 );
setScaleKey( spep_0 -3 + 44, 1, 1.01, 1.01 );
setScaleKey( spep_0 -3 + 46, 1, 1.01, 1.01 );
setScaleKey( spep_0 -3 + 48, 1, 1, 1 );
setScaleKey( spep_0 -3 + 50, 1, 1, 1 );
setScaleKey( spep_0 -3 + 52, 1, 0.99, 0.99 );
setScaleKey( spep_0 -3 + 56, 1, 0.99, 0.99 );
setScaleKey( spep_0 -3 + 58, 1, 0.98, 0.98 );

setRotateKey( spep_0 -3 + 3, 1, 0 );
setRotateKey( spep_0 -3 + 58, 1, 0 );

-- ** 音 ** --
playSe( spep_0 + 0, 08 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 60; --エンドフェイズのフレーム数を置き換える
    
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
    

 --[[敵の座標の固定
 setMoveKey( SP_dodge+10, 1, 265.6, -31.6 , 0 );
 setScaleKey( SP_dodge+10, 1, 0.79, 0.79 );
 setRotateKey( SP_dodge+10, 1, 0 );]]



    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 敵の動き ** --
setDisp( spep_0 -3 + 130, 1, 0 );

setMoveKey( spep_0 -3 + 60, 1, 184.1, -0.1 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 184.2, -0.2 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 184.3, -0.2 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 184.5, -0.2 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 184.6, -0.3 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 184.7, -0.3 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 184.8, -0.3 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 185, -0.3 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 185.1, -0.4 , 0 );
setMoveKey( spep_0 -3 + 78, 1, 185.2, -0.4 , 0 );
setMoveKey( spep_0 -3 + 80, 1, 189.8, -3.4 , 0 );
setMoveKey( spep_0 -3 + 82, 1, 200.7, -0.1 , 0 );
setMoveKey( spep_0 -3 + 84, 1, 205.2, 0 , 0 );
setMoveKey( spep_0 -3 + 86, 1, 216.2, 0.2 , 0 );
setMoveKey( spep_0 -3 + 88, 1, 223.9, -2.8 , 0 );
setMoveKey( spep_0 -3 + 90, 1, 231.6, 0.5 , 0 );
setMoveKey( spep_0 -3 + 92, 1, 220.8, -2.4 , 0 );
setMoveKey( spep_0 -3 + 94, 1, 222.5, 0.9 , 0 );
setMoveKey( spep_0 -3 + 96, 1, 214, -2.1 , 0 );
setMoveKey( spep_0 -3 + 98, 1, 211.5, 1.2 , 0 );
setMoveKey( spep_0 -3 + 100, 1, 202.2, 1.4 , 0 );
setMoveKey( spep_0 -3 + 102, 1, 198.8, 1.6 , 0 );
setMoveKey( spep_0 -3 + 104, 1, 191.8, -1.4 , 0 );
setMoveKey( spep_0 -3 + 106, 1, 184.3, 1.9 , 0 );
setMoveKey( spep_0 -3 + 108, 1, 173.2, -1 , 0 );
setMoveKey( spep_0 -3 + 110, 1, 168, 2.3 , 0 );
setMoveKey( spep_0 -3 + 112, 1, 156, 2.5 , 0 );
setMoveKey( spep_0 -3 + 114, 1, 149.9, 2.6 , 0 );
setMoveKey( spep_0 -3 + 116, 1, 140.2, -0.3 , 0 );
setMoveKey( spep_0 -3 + 118, 1, 130.1, 3 , 0 );
setMoveKey( spep_0 -3 + 120, 1, 116.4, 3.1 , 0 );
setMoveKey( spep_0 -3 + 122, 1, 108.5, 3.3 , 0 );
setMoveKey( spep_0 -3 + 124, 1, 97, 0.3 , 0 );
setMoveKey( spep_0 -3 + 126, 1, 85.1, 3.7 , 0 );
setMoveKey( spep_0 -3 + 128, 1, 69.5, 3.9 , 0 );
setMoveKey( spep_0 -3 + 130, 1, 69.5, 3.9 , 0 );

setScaleKey( spep_0 -3 + 62, 1, 0.98, 0.98 );
setScaleKey( spep_0 -3 + 64, 1, 0.97, 0.97 );
setScaleKey( spep_0 -3 + 68, 1, 0.97, 0.97 );
setScaleKey( spep_0 -3 + 70, 1, 0.96, 0.96 );
setScaleKey( spep_0 -3 + 74, 1, 0.96, 0.96 );
setScaleKey( spep_0 -3 + 76, 1, 0.95, 0.95 );
setScaleKey( spep_0 -3 + 78, 1, 0.95, 0.95 );
setScaleKey( spep_0 -3 + 80, 1, 0.97, 0.97 );
setScaleKey( spep_0 -3 + 82, 1, 0.99, 0.99 );
setScaleKey( spep_0 -3 + 84, 1, 1.01, 1.01 );
setScaleKey( spep_0 -3 + 86, 1, 1.03, 1.03 );
setScaleKey( spep_0 -3 + 88, 1, 1.05, 1.05 );
setScaleKey( spep_0 -3 + 90, 1, 1.07, 1.07 );
setScaleKey( spep_0 -3 + 92, 1, 1.09, 1.09 );
setScaleKey( spep_0 -3 + 94, 1, 1.11, 1.11 );
setScaleKey( spep_0 -3 + 96, 1, 1.13, 1.13 );
setScaleKey( spep_0 -3 + 98, 1, 1.15, 1.15 );
setScaleKey( spep_0 -3 + 100, 1, 1.17, 1.17 );
setScaleKey( spep_0 -3 + 102, 1, 1.19, 1.19 );
setScaleKey( spep_0 -3 + 104, 1, 1.21, 1.21 );
setScaleKey( spep_0 -3 + 106, 1, 1.23, 1.23 );
setScaleKey( spep_0 -3 + 108, 1, 1.25, 1.25 );
setScaleKey( spep_0 -3 + 110, 1, 1.27, 1.27 );
setScaleKey( spep_0 -3 + 112, 1, 1.29, 1.29 );
setScaleKey( spep_0 -3 + 114, 1, 1.31, 1.31 );
setScaleKey( spep_0 -3 + 116, 1, 1.33, 1.33 );
setScaleKey( spep_0 -3 + 118, 1, 1.35, 1.35 );
setScaleKey( spep_0 -3 + 120, 1, 1.37, 1.37 );
setScaleKey( spep_0 -3 + 122, 1, 1.39, 1.39 );
setScaleKey( spep_0 -3 + 124, 1, 1.41, 1.41 );
setScaleKey( spep_0 -3 + 126, 1, 1.43, 1.43 );
setScaleKey( spep_0 -3 + 128, 1, 1.45, 1.45 );
setScaleKey( spep_0 -3 + 130, 1, 1.45, 1.45 );

setRotateKey( spep_0 -3 + 130, 1, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 -3 + 3, 906, 81, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 + 0, shuchusen1, 81, 20 );

setEffMoveKey( spep_0 -3 + 3, shuchusen1, 0, 0, 0 );
setEffMoveKey( spep_0 -3 + 84, shuchusen1, 0, 0, 0 );

setEffScaleKey( spep_0 -3 + 3, shuchusen1, 1.07, 1.75 );
setEffScaleKey( spep_0 -3 + 48, shuchusen1, 1.07, 1.75 );
setEffScaleKey( spep_0 -3 + 50, shuchusen1, 1.07, 1.56 );
setEffScaleKey( spep_0 -3 + 84, shuchusen1, 1.07, 1.56 );

setEffRotateKey( spep_0 -3 + 3, shuchusen1, 0 );
setEffRotateKey( spep_0 -3 + 84, shuchusen1, 0 );

setEffAlphaKey( spep_0 -3 + 3, shuchusen1, 77 );
setEffAlphaKey( spep_0 -3 + 48, shuchusen1, 77 );
setEffAlphaKey( spep_0 -3 + 50, shuchusen1, 183 );
setEffAlphaKey( spep_0 -3 + 76, shuchusen1, 183 );
setEffAlphaKey( spep_0 -3 + 78, shuchusen1, 137 );
setEffAlphaKey( spep_0 -3 + 80, shuchusen1, 92 );
setEffAlphaKey( spep_0 -3 + 82, shuchusen1, 46 );
setEffAlphaKey( spep_0 -3 + 84, shuchusen1, 0 );

shuchusen2 = entryEffectLife( spep_0 -3 + 130, 906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 + 127, shuchusen2, 32, 20 );

setEffMoveKey( spep_0 -3 + 130, shuchusen2, 0, 0, 0 );
setEffMoveKey( spep_0 -3 + 162, shuchusen2, 0, 0, 0 );

setEffScaleKey( spep_0 -3 + 130, shuchusen2, 1.04, 1.47 );
setEffScaleKey( spep_0 -3 + 162, shuchusen2, 1.04, 1.47 );

setEffRotateKey( spep_0 -3 + 130, shuchusen2, 0 );
setEffRotateKey( spep_0 -3 + 162, shuchusen2, 0 );

setEffAlphaKey( spep_0 -3 + 130, shuchusen2, 183 );
setEffAlphaKey( spep_0 -3 + 150, shuchusen2, 183 );
setEffAlphaKey( spep_0 -3 + 152, shuchusen2, 153 );
setEffAlphaKey( spep_0 -3 + 154, shuchusen2, 122 );
setEffAlphaKey( spep_0 -3 + 156, shuchusen2, 92 );
setEffAlphaKey( spep_0 -3 + 158, shuchusen2, 61 );
setEffAlphaKey( spep_0 -3 + 160, shuchusen2, 31 );
setEffAlphaKey( spep_0 -3 + 162, shuchusen2, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 166, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
entryFade( spep_0 + 126, 2, 2, 2, fcolor_r, fcolor_g, fcolor_b, 180 );     -- white fade

-- ** 音 ** --
playSe( spep_0 + 52, 1003 );
se_1116 = playSe( spep_0 + 84, 1116 );
stopSe( spep_0 + 109, se_1116, 20 );
playSe( spep_0 + 128, 1013 );
setSeVolume( spep_0 + 128, 1013, 158 );
playSe( spep_0 + 132, 1007 );
se_1110 = playSe( spep_0 + 132, 1110 );
se_0019 = playSe( spep_0 + 132, 19 );
setSeVolume( spep_0 + 132, 1110, 79 );
setSeVolume( spep_0 + 132, 19, 50 );
stopSe( spep_0 + 145, se_1110, 14 );
stopSe( spep_0 + 153, se_0019, 32 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 166;

------------------------------------------------------
-- にぎにぎ〜構え
------------------------------------------------------

-- ** エフェクト等 ** --
kamae = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --にぎにぎ〜構え(ef_002)
setEffMoveKey( spep_1 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_1 + 212, kamae, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_1 + 212, kamae, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kamae, 0 );
setEffRotateKey( spep_1 + 212, kamae, 0 );
setEffAlphaKey( spep_1 + 0, kamae, 255 );
setEffAlphaKey( spep_1 + 212, kamae, 255 );

spep_x = spep_1 + 104;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9 + 70, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -65, 536, 0 );
setEffMoveKey( spep_x + 84, ctgogo, -65, 536, 0 );

setEffScaleKey( spep_x + 16, ctgogo, 0.8, 0.8 );
setEffScaleKey( spep_x + 76, ctgogo, 0.8, 0.8 );
setEffScaleKey( spep_x + 78, ctgogo, 1.2, 1.2 );
setEffScaleKey( spep_x + 80, ctgogo, 1.11, 1.11 );
setEffScaleKey( spep_x + 82, ctgogo, 1.42, 1.42 );
setEffScaleKey( spep_x + 84, ctgogo, 1.73, 1.73 );

setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );

setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_1 -3 + 3, 906, 209, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1 + 0, shuchuse3, 209, 20 );

setEffMoveKey( spep_1 -3 + 3, shuchusen3, 0, 0, 0 );
setEffMoveKey( spep_1 -3 + 212, shuchusen3, 0, 0, 0 );

setEffScaleKey( spep_1 -3 + 3, shuchusen3, 1.14, 2.1 );
setEffScaleKey( spep_1 -3 + 118, shuchusen3, 1.14, 2.1 );
setEffScaleKey( spep_1 -3 + 120, shuchusen3, 1.14, 1.16 );
setEffScaleKey( spep_1 -3 + 178, shuchusen3, 1.14, 1.16 );
setEffScaleKey( spep_1 -3 + 180, shuchusen3, 1.05, 1.19 );
setEffScaleKey( spep_1 -3 + 212, shuchusen3, 1.05, 1.19 );

setEffRotateKey( spep_1 -3 + 3, shuchusen3, 0 );
setEffRotateKey( spep_1 -3 + 212, shuchusen3, 0 );

setEffAlphaKey( spep_1 -3 + 3, shuchusen3, 128 );
setEffAlphaKey( spep_1 -3 + 118, shuchusen3, 128 );
setEffAlphaKey( spep_1 -3 + 120, shuchusen3, 204 );
setEffAlphaKey( spep_1 -3 + 178, shuchusen3, 204 );
setEffAlphaKey( spep_1 -3 + 179, shuchusen3, 204 );
setEffAlphaKey( spep_1 -3 + 180, shuchusen3, 0 );
setEffAlphaKey( spep_1 -3 + 182, shuchusen3, 46 );
setEffAlphaKey( spep_1 -3 + 184, shuchusen3, 92 );
setEffAlphaKey( spep_1 -3 + 186, shuchusen3, 137 );
setEffAlphaKey( spep_1 -3 + 188, shuchusen3, 183 );
setEffAlphaKey( spep_1 -3 + 212, shuchusen3, 183 );

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 196, 10, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 212, 0, 0, 0, 0, 200 );  --黒　背景

-- ** 音 ** --
se_1116 = playSe( spep_1 + 14, 1116 );
setSeVolume( spep_1 + 14, 1116, 50 );
playSe( spep_1 + 24, 1012 );
setSeVolume( spep_1 + 24, 1012, 79 );
playSe( spep_1 + 28, 1009 );
stopSe( spep_1 + 36, se_1116, 7 );
playSe( spep_1 + 50, 1012 );
setSeVolume( spep_1 + 50, 1012, 79 );
se_1064 = playSe( spep_1 + 56, 1064 );
setSeVolume( spep_1 + 56, 1064, 56 );
stopSe( spep_1 + 72, se_1064, 8 );
playSe( spep_1 + 72, 1012 );
setSeVolume( spep_1 + 72, 1012, 79 );
playSe( spep_1 + 76, 1009 );
setSeVolume( spep_1 + 76, 1009, 56 );
playSe( spep_1 + 114, 1018 );
se_1072 = playSe( spep_1 + 176, 1072 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 210;

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
playSe( spep_2 + 4, 1035 );
stopSe( spep_2 + 6, se_1072, 0 );
se_0009 = playSe( spep_2 + 90, 09 );
setSeVolume( spep_2 + 90, 09, 0 );
setSeVolume( spep_2 + 91, 09, 7 );
setSeVolume( spep_2 + 92, 09, 14 );
setSeVolume( spep_2 + 93, 09, 21 );

-- ** 次の準備 ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 82, 6, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_3 = spep_2 + 94;

------------------------------------------------------
-- スローイング〜爆発
------------------------------------------------------

-- ** エフェクト等 ** --
finishf = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --スローイング〜爆発・手前(ef_003)
setEffMoveKey( spep_3 + 0, finishf, 0, 0 , 0 );
setEffMoveKey( spep_3 + 193, finishf, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finishf, 1.0, 1.0 );
setEffScaleKey( spep_3 + 193, finishf, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finishf, 0 );
setEffRotateKey( spep_3 + 193, finishf, 0 );
setEffAlphaKey( spep_3 + 0, finishf, 255 );
setEffAlphaKey( spep_3 + 193, finishf, 255 );

finishb = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --スローイング〜爆発・奥(ef_004)
setEffMoveKey( spep_3 + 0, finishb, 0, 0 , 0 );
setEffMoveKey( spep_3 + 193, finishb, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finishb, 1.0, 1.0 );
setEffScaleKey( spep_3 + 193, finishb, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finishb, 0 );
setEffRotateKey( spep_3 + 193, finishb, 0 );
setEffAlphaKey( spep_3 + 0, finishb, 255 );
setEffAlphaKey( spep_3 + 193, finishb, 255 );

-- ** 敵の動き ** --
--setDisp( spep_3 -3 + 3, 1, 1 );
setDisp( spep_3 -3 + 10, 1, 1 );
setDisp( spep_3 +3 + 24, 1, 0 );
changeAnime( spep_3 -3 + 3, 1, 108 );

setMoveKey( spep_3 -3 + 3, 1, -128.1, 8.6 , 0 );
setMoveKey( spep_3 +3 + 6, 1, -92.3, -11.8 , 0 );
setMoveKey( spep_3 +3 + 8, 1, -61.8, -29.7 , 0 );
setMoveKey( spep_3 +3 + 10, 1, -36.5, -45.3 , 0 );
setMoveKey( spep_3 +3 + 12, 1, -16.5, -58.7 , 0 );
setMoveKey( spep_3 +3 + 14, 1, -1.7, -69.6 , 0 );
setMoveKey( spep_3 +3 + 16, 1, 8.3, -78.6 , 0 );
setMoveKey( spep_3 +3 + 18, 1, 16.5, -86.8 , 0 );
setMoveKey( spep_3 +3 + 20, 1, 23, -94.2 , 0 );
setMoveKey( spep_3 +3 + 22, 1, 23.8, -120.9 , 0 );
setMoveKey( spep_3 +3 + 24, 1, 37.3, -103.7 , 0 );

setScaleKey( spep_3 -3 + 3, 1, 1.81, 1.81 );
setScaleKey( spep_3 +3 + 6, 1, 1.49, 1.49 );
setScaleKey( spep_3 +3 + 8, 1, 1.21, 1.21 );
setScaleKey( spep_3 +3 + 10, 1, 0.98, 0.98 );
setScaleKey( spep_3 +3 + 12, 1, 0.79, 0.79 );
setScaleKey( spep_3 +3 + 14, 1, 0.64, 0.64 );
setScaleKey( spep_3 +3 + 16, 1, 0.56, 0.56 );
setScaleKey( spep_3 +3 + 18, 1, 0.49, 0.49 );
setScaleKey( spep_3 +3 + 20, 1, 0.43, 0.43 );
setScaleKey( spep_3 +3 + 22, 1, 0.38, 0.38 );
setScaleKey( spep_3 +3 + 24, 1, 0.34, 0.34 );

setRotateKey( spep_3 -3 + 3, 1, 10.7 );
setRotateKey( spep_3 +3 + 6, 1, 10.7 );
setRotateKey( spep_3 +3 + 8, 1, 10.6 );
setRotateKey( spep_3 +3 + 18, 1, 10.6 );
setRotateKey( spep_3 +3 + 20, 1, 10.7 );
setRotateKey( spep_3 +3 + 24, 1, 10.7 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 193, 0, 0, 0, 0, 200 );  --黒　背景

-- ** 音 ** --
setSeVolume( spep_3 + 0, 09, 28 );
playSe( spep_3 + 0, 1003 );
setSeVolume( spep_3 + 1, 09, 35 );
setSeVolume( spep_3 + 2, 09, 42 );
setSeVolume( spep_3 + 3, 09, 49 );
setSeVolume( spep_3 + 4, 09, 56 );
setSeVolume( spep_3 + 5, 09, 63 );
setSeVolume( spep_3 + 6, 09, 70 );
setSeVolume( spep_3 + 7, 09, 77 );
setSeVolume( spep_3 + 8, 09, 84 );
setSeVolume( spep_3 + 9, 09, 91 );
setSeVolume( spep_3 + 10, 09, 98 );
setSeVolume( spep_3 + 11, 09, 100 );
stopSe( spep_3 + 19, se_0009, 9 );
se_1159 = playSe( spep_3 + 24, 1159 );
se_1044 = playSe( spep_3 + 24, 1044 );
setSeVolume( spep_3 + 24, 1159, 63 );
setSeVolume( spep_3 + 24, 1044, 63 );
se_1024 = playSe( spep_3 + 53, 1024 );
stopSe( spep_3 + 137, se_1159, 39 );
--stopSe( spep_3 + 176, se_1044, 0 );
--stopSe( spep_3 + 176, se_1024, 0 );

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 53 );
endPhase( spep_3 + 193 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 登場〜掴む・手前
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tojo = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --登場〜掴む・手前(ef_001)
setEffMoveKey( spep_0 + 0, tojo, 0, 0 , 0 );
setEffMoveKey( spep_0 + 166, tojo, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tojo, -1.0, 1.0 );
setEffScaleKey( spep_0 + 166, tojo, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tojo, 0 );
setEffRotateKey( spep_0 + 166, tojo, 0 );
setEffAlphaKey( spep_0 + 0, tojo, 255 );
setEffAlphaKey( spep_0 + 166, tojo, 255 );

-- ** 敵の動き ** --
setDisp( spep_0 -3 + 3, 1, 1 );
changeAnime( spep_0 -3 + 3, 1, 2 );

--setMoveKey( spep_0 -3 + 0, 1, -472.7, -757.4 , 0 );
setMoveKey( spep_0 -3 + 3, 1, -443.8, -679.2 , 0 );
setMoveKey( spep_0 -3 + 4, 1, -414, -601 , 0 );
setMoveKey( spep_0 -3 + 6, 1, -383.5, -522.8 , 0 );
setMoveKey( spep_0 -3 + 8, 1, -352.2, -444.5 , 0 );
setMoveKey( spep_0 -3 + 10, 1, -320.1, -366.3 , 0 );
setMoveKey( spep_0 -3 + 12, 1, -287.3, -288.1 , 0 );
setMoveKey( spep_0 -3 + 14, 1, -253.7, -209.9 , 0 );
setMoveKey( spep_0 -3 + 16, 1, -219.3, -131.7 , 0 );
setMoveKey( spep_0 -3 + 18, 1, -184.1, -53.5 , 0 );
setMoveKey( spep_0 -3 + 20, 1, -184.3, -50 , 0 );
setMoveKey( spep_0 -3 + 22, 1, -184.4, -46.4 , 0 );
setMoveKey( spep_0 -3 + 24, 1, -184.6, -42.8 , 0 );
setMoveKey( spep_0 -3 + 26, 1, -184.6, -39.3 , 0 );
setMoveKey( spep_0 -3 + 28, 1, -184.7, -35.7 , 0 );
setMoveKey( spep_0 -3 + 30, 1, -184.6, -32.1 , 0 );
setMoveKey( spep_0 -3 + 32, 1, -184.6, -28.6 , 0 );
setMoveKey( spep_0 -3 + 34, 1, -184.6, -25 , 0 );
setMoveKey( spep_0 -3 + 36, 1, -184.5, -21.4 , 0 );
setMoveKey( spep_0 -3 + 38, 1, -184.4, -17.9 , 0 );
setMoveKey( spep_0 -3 + 40, 1, -184.3, -14.3 , 0 );
setMoveKey( spep_0 -3 + 42, 1, -184.1, -10.7 , 0 );
setMoveKey( spep_0 -3 + 44, 1, -183.9, -7.2 , 0 );
setMoveKey( spep_0 -3 + 46, 1, -183.7, -3.6 , 0 );
setMoveKey( spep_0 -3 + 48, 1, -183.4, -0.1 , 0 );
setMoveKey( spep_0 -3 + 50, 1, -183.5, 0 , 0 );
setMoveKey( spep_0 -3 + 52, 1, -183.6, 0 , 0 );
setMoveKey( spep_0 -3 + 54, 1, -183.7, -0.1 , 0 );
setMoveKey( spep_0 -3 + 56, 1, -183.9, -0.1 , 0 );
setMoveKey( spep_0 -3 + 58, 1, -184, -0.1 , 0 );

--setScaleKey( spep_0 -3 + 0, 1, 2.6, 2.6 );
setScaleKey( spep_0 -3 + 3, 1, 2.43, 2.43 );
setScaleKey( spep_0 -3 + 4, 1, 2.27, 2.27 );
setScaleKey( spep_0 -3 + 6, 1, 2.1, 2.1 );
setScaleKey( spep_0 -3 + 8, 1, 1.93, 1.93 );
setScaleKey( spep_0 -3 + 10, 1, 1.77, 1.77 );
setScaleKey( spep_0 -3 + 12, 1, 1.6, 1.6 );
setScaleKey( spep_0 -3 + 14, 1, 1.43, 1.43 );
setScaleKey( spep_0 -3 + 16, 1, 1.27, 1.27 );
setScaleKey( spep_0 -3 + 18, 1, 1.1, 1.1 );
setScaleKey( spep_0 -3 + 20, 1, 1.09, 1.09 );
setScaleKey( spep_0 -3 + 22, 1, 1.09, 1.09 );
setScaleKey( spep_0 -3 + 24, 1, 1.08, 1.08 );
setScaleKey( spep_0 -3 + 26, 1, 1.07, 1.07 );
setScaleKey( spep_0 -3 + 28, 1, 1.07, 1.07 );
setScaleKey( spep_0 -3 + 30, 1, 1.06, 1.06 );
setScaleKey( spep_0 -3 + 32, 1, 1.05, 1.05 );
setScaleKey( spep_0 -3 + 34, 1, 1.05, 1.05 );
setScaleKey( spep_0 -3 + 36, 1, 1.04, 1.04 );
setScaleKey( spep_0 -3 + 38, 1, 1.03, 1.03 );
setScaleKey( spep_0 -3 + 40, 1, 1.03, 1.03 );
setScaleKey( spep_0 -3 + 42, 1, 1.02, 1.02 );
setScaleKey( spep_0 -3 + 44, 1, 1.01, 1.01 );
setScaleKey( spep_0 -3 + 46, 1, 1.01, 1.01 );
setScaleKey( spep_0 -3 + 48, 1, 1, 1 );
setScaleKey( spep_0 -3 + 50, 1, 1, 1 );
setScaleKey( spep_0 -3 + 52, 1, 0.99, 0.99 );
setScaleKey( spep_0 -3 + 56, 1, 0.99, 0.99 );
setScaleKey( spep_0 -3 + 58, 1, 0.98, 0.98 );

setRotateKey( spep_0 -3 + 3, 1, 0 );
setRotateKey( spep_0 -3 + 58, 1, 0 );

-- ** 音 ** --
playSe( spep_0 + 0, 08 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 60; --エンドフェイズのフレーム数を置き換える
    
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
    

 --[[敵の座標の固定
 setMoveKey( SP_dodge+10, 1, 265.6, -31.6 , 0 );
 setScaleKey( SP_dodge+10, 1, 0.79, 0.79 );
 setRotateKey( SP_dodge+10, 1, 0 );]]



    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 敵の動き ** --
setDisp( spep_0 -3 + 130, 1, 0 );

setMoveKey( spep_0 -3 + 60, 1, -184.1, -0.1 , 0 );
setMoveKey( spep_0 -3 + 62, 1, -184.2, -0.2 , 0 );
setMoveKey( spep_0 -3 + 64, 1, -184.3, -0.2 , 0 );
setMoveKey( spep_0 -3 + 66, 1, -184.5, -0.2 , 0 );
setMoveKey( spep_0 -3 + 68, 1, -184.6, -0.3 , 0 );
setMoveKey( spep_0 -3 + 70, 1, -184.7, -0.3 , 0 );
setMoveKey( spep_0 -3 + 72, 1, -184.8, -0.3 , 0 );
setMoveKey( spep_0 -3 + 74, 1, -185, -0.3 , 0 );
setMoveKey( spep_0 -3 + 76, 1, -185.1, -0.4 , 0 );
setMoveKey( spep_0 -3 + 78, 1, -185.2, -0.4 , 0 );
setMoveKey( spep_0 -3 + 80, 1, -189.8, -3.4 , 0 );
setMoveKey( spep_0 -3 + 82, 1, -200.7, -0.1 , 0 );
setMoveKey( spep_0 -3 + 84, 1, -205.2, 0 , 0 );
setMoveKey( spep_0 -3 + 86, 1, -216.2, 0.2 , 0 );
setMoveKey( spep_0 -3 + 88, 1, -223.9, -2.8 , 0 );
setMoveKey( spep_0 -3 + 90, 1, -231.6, 0.5 , 0 );
setMoveKey( spep_0 -3 + 92, 1, -220.8, -2.4 , 0 );
setMoveKey( spep_0 -3 + 94, 1, -222.5, 0.9 , 0 );
setMoveKey( spep_0 -3 + 96, 1, -214, -2.1 , 0 );
setMoveKey( spep_0 -3 + 98, 1, -211.5, 1.2 , 0 );
setMoveKey( spep_0 -3 + 100, 1, -202.2, 1.4 , 0 );
setMoveKey( spep_0 -3 + 102, 1, -198.8, 1.6 , 0 );
setMoveKey( spep_0 -3 + 104, 1, -191.8, -1.4 , 0 );
setMoveKey( spep_0 -3 + 106, 1, -184.3, 1.9 , 0 );
setMoveKey( spep_0 -3 + 108, 1, -173.2, -1 , 0 );
setMoveKey( spep_0 -3 + 110, 1, -168, 2.3 , 0 );
setMoveKey( spep_0 -3 + 112, 1, -156, 2.5 , 0 );
setMoveKey( spep_0 -3 + 114, 1, -149.9, 2.6 , 0 );
setMoveKey( spep_0 -3 + 116, 1, -140.2, -0.3 , 0 );
setMoveKey( spep_0 -3 + 118, 1, -130.1, 3 , 0 );
setMoveKey( spep_0 -3 + 120, 1, -116.4, 3.1 , 0 );
setMoveKey( spep_0 -3 + 122, 1, -108.5, 3.3 , 0 );
setMoveKey( spep_0 -3 + 124, 1, -97, 0.3 , 0 );
setMoveKey( spep_0 -3 + 126, 1, -85.1, 3.7 , 0 );
setMoveKey( spep_0 -3 + 128, 1, -69.5, 3.9 , 0 );
setMoveKey( spep_0 -3 + 130, 1, -69.5, 3.9 , 0 );

setScaleKey( spep_0 -3 + 62, 1, 0.98, 0.98 );
setScaleKey( spep_0 -3 + 64, 1, 0.97, 0.97 );
setScaleKey( spep_0 -3 + 68, 1, 0.97, 0.97 );
setScaleKey( spep_0 -3 + 70, 1, 0.96, 0.96 );
setScaleKey( spep_0 -3 + 74, 1, 0.96, 0.96 );
setScaleKey( spep_0 -3 + 76, 1, 0.95, 0.95 );
setScaleKey( spep_0 -3 + 78, 1, 0.95, 0.95 );
setScaleKey( spep_0 -3 + 80, 1, 0.97, 0.97 );
setScaleKey( spep_0 -3 + 82, 1, 0.99, 0.99 );
setScaleKey( spep_0 -3 + 84, 1, 1.01, 1.01 );
setScaleKey( spep_0 -3 + 86, 1, 1.03, 1.03 );
setScaleKey( spep_0 -3 + 88, 1, 1.05, 1.05 );
setScaleKey( spep_0 -3 + 90, 1, 1.07, 1.07 );
setScaleKey( spep_0 -3 + 92, 1, 1.09, 1.09 );
setScaleKey( spep_0 -3 + 94, 1, 1.11, 1.11 );
setScaleKey( spep_0 -3 + 96, 1, 1.13, 1.13 );
setScaleKey( spep_0 -3 + 98, 1, 1.15, 1.15 );
setScaleKey( spep_0 -3 + 100, 1, 1.17, 1.17 );
setScaleKey( spep_0 -3 + 102, 1, 1.19, 1.19 );
setScaleKey( spep_0 -3 + 104, 1, 1.21, 1.21 );
setScaleKey( spep_0 -3 + 106, 1, 1.23, 1.23 );
setScaleKey( spep_0 -3 + 108, 1, 1.25, 1.25 );
setScaleKey( spep_0 -3 + 110, 1, 1.27, 1.27 );
setScaleKey( spep_0 -3 + 112, 1, 1.29, 1.29 );
setScaleKey( spep_0 -3 + 114, 1, 1.31, 1.31 );
setScaleKey( spep_0 -3 + 116, 1, 1.33, 1.33 );
setScaleKey( spep_0 -3 + 118, 1, 1.35, 1.35 );
setScaleKey( spep_0 -3 + 120, 1, 1.37, 1.37 );
setScaleKey( spep_0 -3 + 122, 1, 1.39, 1.39 );
setScaleKey( spep_0 -3 + 124, 1, 1.41, 1.41 );
setScaleKey( spep_0 -3 + 126, 1, 1.43, 1.43 );
setScaleKey( spep_0 -3 + 128, 1, 1.45, 1.45 );
setScaleKey( spep_0 -3 + 130, 1, 1.45, 1.45 );

setRotateKey( spep_0 -3 + 130, 1, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 -3 + 3, 906, 81, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 + 0, shuchusen1, 81, 20 );

setEffMoveKey( spep_0 -3 + 3, shuchusen1, 0, 0, 0 );
setEffMoveKey( spep_0 -3 + 84, shuchusen1, 0, 0, 0 );

setEffScaleKey( spep_0 -3 + 3, shuchusen1, 1.07, 1.75 );
setEffScaleKey( spep_0 -3 + 48, shuchusen1, 1.07, 1.75 );
setEffScaleKey( spep_0 -3 + 50, shuchusen1, 1.07, 1.56 );
setEffScaleKey( spep_0 -3 + 84, shuchusen1, 1.07, 1.56 );

setEffRotateKey( spep_0 -3 + 3, shuchusen1, 0 );
setEffRotateKey( spep_0 -3 + 84, shuchusen1, 0 );

setEffAlphaKey( spep_0 -3 + 3, shuchusen1, 77 );
setEffAlphaKey( spep_0 -3 + 48, shuchusen1, 77 );
setEffAlphaKey( spep_0 -3 + 50, shuchusen1, 183 );
setEffAlphaKey( spep_0 -3 + 76, shuchusen1, 183 );
setEffAlphaKey( spep_0 -3 + 78, shuchusen1, 137 );
setEffAlphaKey( spep_0 -3 + 80, shuchusen1, 92 );
setEffAlphaKey( spep_0 -3 + 82, shuchusen1, 46 );
setEffAlphaKey( spep_0 -3 + 84, shuchusen1, 0 );

shuchusen2 = entryEffectLife( spep_0 -3 + 130, 906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 + 127, shuchusen2, 32, 20 );

setEffMoveKey( spep_0 -3 + 130, shuchusen2, 0, 0, 0 );
setEffMoveKey( spep_0 -3 + 162, shuchusen2, 0, 0, 0 );

setEffScaleKey( spep_0 -3 + 130, shuchusen2, 1.04, 1.47 );
setEffScaleKey( spep_0 -3 + 162, shuchusen2, 1.04, 1.47 );

setEffRotateKey( spep_0 -3 + 130, shuchusen2, 0 );
setEffRotateKey( spep_0 -3 + 162, shuchusen2, 0 );

setEffAlphaKey( spep_0 -3 + 130, shuchusen2, 183 );
setEffAlphaKey( spep_0 -3 + 150, shuchusen2, 183 );
setEffAlphaKey( spep_0 -3 + 152, shuchusen2, 153 );
setEffAlphaKey( spep_0 -3 + 154, shuchusen2, 122 );
setEffAlphaKey( spep_0 -3 + 156, shuchusen2, 92 );
setEffAlphaKey( spep_0 -3 + 158, shuchusen2, 61 );
setEffAlphaKey( spep_0 -3 + 160, shuchusen2, 31 );
setEffAlphaKey( spep_0 -3 + 162, shuchusen2, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 166, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
entryFade( spep_0 + 126, 2, 2, 2, fcolor_r, fcolor_g, fcolor_b, 180 );     -- white fade

-- ** 音 ** --
playSe( spep_0 + 52, 1003 );
se_1116 = playSe( spep_0 + 84, 1116 );
stopSe( spep_0 + 109, se_1116, 20 );
playSe( spep_0 + 128, 1013 );
setSeVolume( spep_0 + 128, 1013, 158 );
playSe( spep_0 + 132, 1007 );
se_1110 = playSe( spep_0 + 132, 1110 );
se_0019 = playSe( spep_0 + 132, 19 );
setSeVolume( spep_0 + 132, 1110, 79 );
setSeVolume( spep_0 + 132, 19, 50 );
stopSe( spep_0 + 145, se_1110, 14 );
stopSe( spep_0 + 153, se_0019, 32 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 166;

------------------------------------------------------
-- にぎにぎ〜構え
------------------------------------------------------

-- ** エフェクト等 ** --
kamae = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --にぎにぎ〜構え(ef_002)
setEffMoveKey( spep_1 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_1 + 212, kamae, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kamae, -1.0, 1.0 );
setEffScaleKey( spep_1 + 212, kamae, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kamae, 0 );
setEffRotateKey( spep_1 + 212, kamae, 0 );
setEffAlphaKey( spep_1 + 0, kamae, 255 );
setEffAlphaKey( spep_1 + 212, kamae, 255 );

spep_x = spep_1 + 104;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9 + 70, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -65, 536, 0 );
setEffMoveKey( spep_x + 84, ctgogo, -65, 536, 0 );

setEffScaleKey( spep_x + 16, ctgogo, -0.8, 0.8 );
setEffScaleKey( spep_x + 76, ctgogo, -0.8, 0.8 );
setEffScaleKey( spep_x + 78, ctgogo, -1.2, 1.2 );
setEffScaleKey( spep_x + 80, ctgogo, -1.11, 1.11 );
setEffScaleKey( spep_x + 82, ctgogo, -1.42, 1.42 );
setEffScaleKey( spep_x + 84, ctgogo, -1.73, 1.73 );

setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );

setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_1 -3 + 3, 906, 209, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1 + 0, shuchuse3, 209, 20 );

setEffMoveKey( spep_1 -3 + 3, shuchusen3, 0, 0, 0 );
setEffMoveKey( spep_1 -3 + 212, shuchusen3, 0, 0, 0 );

setEffScaleKey( spep_1 -3 + 3, shuchusen3, 1.14, 2.1 );
setEffScaleKey( spep_1 -3 + 118, shuchusen3, 1.14, 2.1 );
setEffScaleKey( spep_1 -3 + 120, shuchusen3, 1.14, 1.16 );
setEffScaleKey( spep_1 -3 + 178, shuchusen3, 1.14, 1.16 );
setEffScaleKey( spep_1 -3 + 180, shuchusen3, 1.05, 1.19 );
setEffScaleKey( spep_1 -3 + 212, shuchusen3, 1.05, 1.19 );

setEffRotateKey( spep_1 -3 + 3, shuchusen3, 0 );
setEffRotateKey( spep_1 -3 + 212, shuchusen3, 0 );

setEffAlphaKey( spep_1 -3 + 3, shuchusen3, 128 );
setEffAlphaKey( spep_1 -3 + 118, shuchusen3, 128 );
setEffAlphaKey( spep_1 -3 + 120, shuchusen3, 204 );
setEffAlphaKey( spep_1 -3 + 178, shuchusen3, 204 );
setEffAlphaKey( spep_1 -3 + 179, shuchusen3, 204 );
setEffAlphaKey( spep_1 -3 + 180, shuchusen3, 0 );
setEffAlphaKey( spep_1 -3 + 182, shuchusen3, 46 );
setEffAlphaKey( spep_1 -3 + 184, shuchusen3, 92 );
setEffAlphaKey( spep_1 -3 + 186, shuchusen3, 137 );
setEffAlphaKey( spep_1 -3 + 188, shuchusen3, 183 );
setEffAlphaKey( spep_1 -3 + 212, shuchusen3, 183 );

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 196, 10, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 212, 0, 0, 0, 0, 200 );  --黒　背景

-- ** 音 ** --
se_1116 = playSe( spep_1 + 14, 1116 );
setSeVolume( spep_1 + 14, 1116, 50 );
playSe( spep_1 + 24, 1012 );
setSeVolume( spep_1 + 24, 1012, 79 );
playSe( spep_1 + 28, 1009 );
stopSe( spep_1 + 36, se_1116, 7 );
playSe( spep_1 + 50, 1012 );
setSeVolume( spep_1 + 50, 1012, 79 );
se_1064 = playSe( spep_1 + 56, 1064 );
setSeVolume( spep_1 + 56, 1064, 56 );
stopSe( spep_1 + 72, se_1064, 8 );
playSe( spep_1 + 72, 1012 );
setSeVolume( spep_1 + 72, 1012, 79 );
playSe( spep_1 + 76, 1009 );
setSeVolume( spep_1 + 76, 1009, 56 );
playSe( spep_1 + 114, 1018 );
se_1072 = playSe( spep_1 + 176, 1072 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 210;

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
playSe( spep_2 + 4, 1035 );
stopSe( spep_2 + 6, se_1072, 0 );
se_0009 = playSe( spep_2 + 90, 09 );
setSeVolume( spep_2 + 90, 09, 0 );
setSeVolume( spep_2 + 91, 09, 7 );
setSeVolume( spep_2 + 92, 09, 14 );
setSeVolume( spep_2 + 93, 09, 21 );

-- ** 次の準備 ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 82, 6, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_3 = spep_2 + 94;

------------------------------------------------------
-- スローイング〜爆発
------------------------------------------------------

-- ** エフェクト等 ** --
finishf = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --スローイング〜爆発・手前(ef_003)
setEffMoveKey( spep_3 + 0, finishf, 0, 0 , 0 );
setEffMoveKey( spep_3 + 193, finishf, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finishf, -1.0, 1.0 );
setEffScaleKey( spep_3 + 193, finishf, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finishf, 0 );
setEffRotateKey( spep_3 + 193, finishf, 0 );
setEffAlphaKey( spep_3 + 0, finishf, 255 );
setEffAlphaKey( spep_3 + 193, finishf, 255 );

finishb = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --スローイング〜爆発・奥(ef_004)
setEffMoveKey( spep_3 + 0, finishb, 0, 0 , 0 );
setEffMoveKey( spep_3 + 193, finishb, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finishb, -1.0, 1.0 );
setEffScaleKey( spep_3 + 193, finishb, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finishb, 0 );
setEffRotateKey( spep_3 + 193, finishb, 0 );
setEffAlphaKey( spep_3 + 0, finishb, 255 );
setEffAlphaKey( spep_3 + 193, finishb, 255 );

-- ** 敵の動き ** --
--setDisp( spep_3 -3 + 3, 1, 1 );
setDisp( spep_3 -3 + 10, 1, 1 );
setDisp( spep_3 +3 + 24, 1, 0 );
changeAnime( spep_3 -3 + 3, 1, 8 );

setMoveKey( spep_3 -3 + 3, 1, 128.1, 8.6 , 0 );
setMoveKey( spep_3 +3 + 6, 1, 92.3, -11.8 , 0 );
setMoveKey( spep_3 +3 + 8, 1, 61.8, -29.7 , 0 );
setMoveKey( spep_3 +3 + 10, 1, 36.5, -45.3 , 0 );
setMoveKey( spep_3 +3 + 12, 1, 16.5, -58.7 , 0 );
setMoveKey( spep_3 +3 + 14, 1, 1.7, -69.6 , 0 );
setMoveKey( spep_3 +3 + 16, 1, -8.3, -78.6 , 0 );
setMoveKey( spep_3 +3 + 18, 1, -16.5, -86.8 , 0 );
setMoveKey( spep_3 +3 + 20, 1, -23, -94.2 , 0 );
setMoveKey( spep_3 +3 + 22, 1, -23.8, -120.9 , 0 );
setMoveKey( spep_3 +3 + 24, 1, -37.3, -103.7 , 0 );

setScaleKey( spep_3 -3 + 3, 1, 1.81, 1.81 );
setScaleKey( spep_3 +3 + 6, 1, 1.49, 1.49 );
setScaleKey( spep_3 +3 + 8, 1, 1.21, 1.21 );
setScaleKey( spep_3 +3 + 10, 1, 0.98, 0.98 );
setScaleKey( spep_3 +3 + 12, 1, 0.79, 0.79 );
setScaleKey( spep_3 +3 + 14, 1, 0.64, 0.64 );
setScaleKey( spep_3 +3 + 16, 1, 0.56, 0.56 );
setScaleKey( spep_3 +3 + 18, 1, 0.49, 0.49 );
setScaleKey( spep_3 +3 + 20, 1, 0.43, 0.43 );
setScaleKey( spep_3 +3 + 22, 1, 0.38, 0.38 );
setScaleKey( spep_3 +3 + 24, 1, 0.34, 0.34 );

setRotateKey( spep_3 -3 + 3, 1, -10.7 );
setRotateKey( spep_3 +3 + 6, 1, -10.7 );
setRotateKey( spep_3 +3 + 8, 1, -10.6 );
setRotateKey( spep_3 +3 + 18, 1, -10.6 );
setRotateKey( spep_3 +3 + 20, 1, -10.7 );
setRotateKey( spep_3 +3 + 24, 1, -10.7 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 193, 0, 0, 0, 0, 200 );  --黒　背景

-- ** 音 ** --
setSeVolume( spep_3 + 0, 09, 28 );
playSe( spep_3 + 0, 1003 );
setSeVolume( spep_3 + 1, 09, 35 );
setSeVolume( spep_3 + 2, 09, 42 );
setSeVolume( spep_3 + 3, 09, 49 );
setSeVolume( spep_3 + 4, 09, 56 );
setSeVolume( spep_3 + 5, 09, 63 );
setSeVolume( spep_3 + 6, 09, 70 );
setSeVolume( spep_3 + 7, 09, 77 );
setSeVolume( spep_3 + 8, 09, 84 );
setSeVolume( spep_3 + 9, 09, 91 );
setSeVolume( spep_3 + 10, 09, 98 );
setSeVolume( spep_3 + 11, 09, 100 );
stopSe( spep_3 + 19, se_0009, 9 );
se_1159 = playSe( spep_3 + 24, 1159 );
se_1044 = playSe( spep_3 + 24, 1044 );
setSeVolume( spep_3 + 24, 1159, 63 );
setSeVolume( spep_3 + 24, 1044, 63 );
se_1024 = playSe( spep_3 + 53, 1024 );
stopSe( spep_3 + 137, se_1159, 39 );
--stopSe( spep_3 + 176, se_1044, 0 );
--stopSe( spep_3 + 176, se_1024, 0 );

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 53 );
endPhase( spep_3 + 193 );

end