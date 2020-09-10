--1019060:ザマス_神裂波
--sp_effect_a2_00127

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
SP_01 = 154763; --敵に向かって突進
SP_02 = 154765; --連打
SP_03 = 154767; --背景　山
SP_04 = 154768; --背景　空
SP_05 = 154769; --気弾を溜める
SP_06 = 154770; --気弾発射
SP_07 = 154771; --気弾が敵に迫る
SP_08 = 154772; --気弾が敵に迫る
SP_09 = 154773; --爆発

--敵側
SP_01r = 154764; --ef_001の敵側
SP_02r = 154766; --ef_002の敵側

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
--敵に向かって突進
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tosshin = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); --敵に向かって突進(ef_001)
setEffMoveKey( spep_0 + 0, tosshin, 0, 0, 0 );
setEffMoveKey( spep_0 + 56, tosshin, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tosshin, 1.0, 1.0 );
setEffScaleKey( spep_0 + 56, tosshin, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tosshin, 0 );
setEffRotateKey( spep_0 + 56, tosshin, 0 );
setEffAlphaKey( spep_0 + 0, tosshin, 255 );
setEffAlphaKey( spep_0 + 56, tosshin, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 58, 0, 0, 0, 0, 255 ); --黒 背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
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

-- ** 音 ** --
se_0009 = playSe( spep_0 + 27, 09 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 56;

--------------------------------------
--連打
--------------------------------------
-- ** エフェクト等 ** --
rush = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); --連打(ef_002)
setEffMoveKey( spep_1 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_1 + 138, rush, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_1 + 138, rush, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush, 0 );
setEffRotateKey( spep_1 + 138, rush, 0 );
setEffAlphaKey( spep_1 + 0, rush, 255 );
setEffAlphaKey( spep_1 + 136, rush, 255 );
setEffAlphaKey( spep_1 + 137, rush, 0 );
setEffAlphaKey( spep_1 + 138, rush, 0 );

rush_mt = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 , -20 ); --背景・山(ef_003)
setEffMoveKey( spep_1 + 0, rush_mt, 0, 0, 0 );
setEffMoveKey( spep_1 + 138, rush_mt, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush_mt, 1.0, 1.0 );
setEffScaleKey( spep_1 + 138, rush_mt, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_mt, 0 );
setEffRotateKey( spep_1 + 138, rush_mt, 0 );
setEffAlphaKey( spep_1 + 0, rush_mt, 255 );
setEffAlphaKey( spep_1 + 136, rush_mt, 255 );
setEffAlphaKey( spep_1 + 137, rush_mt, 0 );
setEffAlphaKey( spep_1 + 138, rush_mt, 0 );

rush_sky = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0, -30 ); --背景・空(ef_004)
setEffMoveKey( spep_1 + 0, rush_sky, 0, 0, 0 );
setEffMoveKey( spep_1 + 138, rush_sky, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush_sky, 1.0, 1.0 );
setEffScaleKey( spep_1 + 138, rush_sky, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_sky, 0 );
setEffRotateKey( spep_1 + 138, rush_sky, 0 );
setEffAlphaKey( spep_1 + 0, rush_sky, 255 );
setEffAlphaKey( spep_1 + 136, rush_sky, 255 );
setEffAlphaKey( spep_1 + 137, rush_sky, 0 );
setEffAlphaKey( spep_1 + 138, rush_sky, 0 );

-- ** 流線 ** --
ryusen_1 = entryEffectLife( spep_1 -3 + 3, 914, 138 -3, 0x80, -1, 0, 0, -10 );
setEffMoveKey( spep_1 -3 + 3, ryusen_1, 0, 0, 0 );
setEffMoveKey( spep_1 -3 + 138, ryusen_1, 0, 0, 0 );

setEffScaleKey( spep_1 -3 + 3, ryusen_1, 12.69, 2.53 );
setEffScaleKey( spep_1 -3 + 138, ryusen_1, 12.69, 2.53 );

setEffRotateKey( spep_1 -3 + 3, ryusen_1, 0 );
setEffRotateKey( spep_1 -3 + 138, ryusen_1, 0 );

setEffAlphaKey( spep_1 -3 + 3, ryusen_1, 153 );
setEffAlphaKey( spep_1 -3 + 29, ryusen_1, 153 );
setEffAlphaKey( spep_1 -3 + 30, ryusen_1, 0 );
setEffAlphaKey( spep_1 -3 + 31, ryusen_1, 0 );
setEffAlphaKey( spep_1 -3 + 107, ryusen_1, 0 );
setEffAlphaKey( spep_1 -3 + 108, ryusen_1, 255 );
setEffAlphaKey( spep_1 -3 + 138, ​ryusen_1, 255 );

-- ** 敵の動き ** --
setDisp( spep_1 -3 + 3, 1, 1 );
setDisp( spep_1 -3 + 124, 1, 0 );
changeAnime( spep_1 -3 + 3, 1, 101 );
changeAnime( spep_1 -3 + 18, 1, 104 );
changeAnime( spep_1 -3 + 30, 1, 101 );
changeAnime( spep_1 -3 + 32, 1, 106 );
changeAnime( spep_1 -3 + 50, 1, 108 );
changeAnime( spep_1 -3 + 66, 1, 106 );
changeAnime( spep_1 -3 + 110, 1, 108 );

setMoveKey( spep_1 -3 + 3, 1, 557.7, -63 , 0 );
--setMoveKey( spep_1 -3 + 2, 1, 505.7, -63 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 453.7, -63 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 401.7, -63 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 349.7, -63 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 297.7, -63 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 245.7, -63 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 193.7, -63 , 0 );
setMoveKey( spep_1 -3 + 17, 1, 141.7, -63 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 89.7, -63 , 0 );
setMoveKey( spep_1 -3 + 29, 1, 89.7, -63 , 0 );
setMoveKey( spep_1 -3 + 31, 1, 94.4, -72.3 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 73.8, -58.2 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 79.1, -70.7 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 98.5, -58 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 105.2, -65.8 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 94.9, -60.7 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 94.1, -65 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 90, -64.4 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 86, -63.9 , 0 );
setMoveKey( spep_1 -3 + 49, 1, 82, -63.4 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 59, -65.5 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 59.2, -59.3 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 70.4, -64 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 83, -57.9 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 86.2, -62.7 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 80, -61.2 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 70.7, -61.2 , 0 );
setMoveKey( spep_1 -3 + 65, 1, 61.3, -61.2 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 60.6, -61.5 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 87, -61.1 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 110.3, -51.9 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 125.1, -54.9 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 123.5, -46 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 122.8, -51.8 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 119.5, -54.3 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 117.9, -53.5 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 116.3, -52.6 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 114.8, -51.8 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 113.2, -51 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 111.7, -50.1 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 110.1, -49.3 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 108.5, -48.4 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 106.9, -47.6 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 105.4, -46.8 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 103.8, -45.9 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 102.2, -45.1 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 100.6, -44.3 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 99.1, -43.4 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 97.5, -42.6 , 0 );
setMoveKey( spep_1 -3 + 109, 1, 95.9, -41.8 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 208, -29.5 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 248.5, -33.1 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 310.8, -28 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 439.2, -11.2 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 666.2, 2.7 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 1192.2, 14.8 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 1196.6, 17 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 1197.8, 13.1 , 0 );

setScaleKey( spep_1 -3 + 3, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 124, 1, 1.52, 1.52 );

setRotateKey( spep_1 -3 + 3, 1, 0 );
setRotateKey( spep_1 -3 + 31, 1, 0 );
setRotateKey( spep_1 -3 + 32, 1, -50 );
setRotateKey( spep_1 -3 + 34, 1, -49.9 );
setRotateKey( spep_1 -3 + 36, 1, -49.8 );
setRotateKey( spep_1 -3 + 38, 1, -49.7 );
setRotateKey( spep_1 -3 + 40, 1, -49.3 );
setRotateKey( spep_1 -3 + 42, 1, -49 );
setRotateKey( spep_1 -3 + 44, 1, -48.7 );
setRotateKey( spep_1 -3 + 46, 1, -48.3 );
setRotateKey( spep_1 -3 + 49, 1, -48 );
setRotateKey( spep_1 -3 + 50, 1, -7 );
setRotateKey( spep_1 -3 + 52, 1, -7 );
setRotateKey( spep_1 -3 + 54, 1, -6.9 );
setRotateKey( spep_1 -3 + 56, 1, -6.9 );
setRotateKey( spep_1 -3 + 58, 1, -6.8 );
setRotateKey( spep_1 -3 + 60, 1, -6.9 );
setRotateKey( spep_1 -3 + 62, 1, -6.9 );
setRotateKey( spep_1 -3 + 65, 1, -7 );
setRotateKey( spep_1 -3 + 66, 1, -55 );
setRotateKey( spep_1 -3 + 68, 1, -51.9 );
setRotateKey( spep_1 -3 + 70, 1, -50.1 );
setRotateKey( spep_1 -3 + 72, 1, -49 );
setRotateKey( spep_1 -3 + 74, 1, -48.3 );
setRotateKey( spep_1 -3 + 76, 1, -47.9 );
setRotateKey( spep_1 -3 + 78, 1, -47.4 );
setRotateKey( spep_1 -3 + 80, 1, -46.9 );
setRotateKey( spep_1 -3 + 82, 1, -46.4 );
setRotateKey( spep_1 -3 + 84, 1, -45.9 );
setRotateKey( spep_1 -3 + 86, 1, -45.4 );
setRotateKey( spep_1 -3 + 88, 1, -44.9 );
setRotateKey( spep_1 -3 + 90, 1, -44.4 );
setRotateKey( spep_1 -3 + 92, 1, -44 );
setRotateKey( spep_1 -3 + 94, 1, -43.5 );
setRotateKey( spep_1 -3 + 96, 1, -43 );
setRotateKey( spep_1 -3 + 98, 1, -42.5 );
setRotateKey( spep_1 -3 + 100, 1, -42 );
setRotateKey( spep_1 -3 + 102, 1, -41.5 );
setRotateKey( spep_1 -3 + 104, 1, -41 );
setRotateKey( spep_1 -3 + 106, 1, -40.5 );
setRotateKey( spep_1 -3 + 109, 1, -40 );
setRotateKey( spep_1 -3 + 110, 1, -7 );
setRotateKey( spep_1 -3 + 112, 1, -7.8 );
setRotateKey( spep_1 -3 + 114, 1, -9.6 );
setRotateKey( spep_1 -3 + 116, 1, -12.7 );
setRotateKey( spep_1 -3 + 118, 1, -18.3 );
setRotateKey( spep_1 -3 + 120, 1, -31 );
setRotateKey( spep_1 -3 + 124, 1, -31 );

-- ** 書き文字エントリー ** --
ctBaki = entryEffectLife( spep_1 -3 + 110, 10020, 28, 0x100, -1, 0, 102.7, 191.7 ); --バキッ
setEffMoveKey( spep_1 -3 + 110, ctBaki, 102.7, 191.7 , 0 );
setEffMoveKey( spep_1 -3 + 112, ctBaki, 215.2, 253.4 , 0 );
setEffMoveKey( spep_1 -3 + 114, ctBaki, 157.4, 235.9 , 0 );
setEffMoveKey( spep_1 -3 + 116, ctBaki, 184.9, 232.7 , 0 );
setEffMoveKey( spep_1 -3 + 118, ctBaki, 137.1, 187.5 , 0 );
setEffMoveKey( spep_1 -3 + 120, ctBaki, 174, 219.4 , 0 );
setEffMoveKey( spep_1 -3 + 122, ctBaki, 172.2, 226.1 , 0 );
setEffMoveKey( spep_1 -3 + 124, ctBaki, 170.4, 232.8 , 0 );
setEffMoveKey( spep_1 -3 + 126, ctBaki, 172.5, 231.1 , 0 );
setEffMoveKey( spep_1 -3 + 128, ctBaki, 172.4, 229.4 , 0 );
setEffMoveKey( spep_1 -3 + 130, ctBaki, 165.2, 233.6 , 0 );
setEffMoveKey( spep_1 -3 + 132, ctBaki, 164.9, 233.5 , 0 );

setEffScaleKey( spep_1 -3 + 110, ctBaki, 1.32, 1.32 );
setEffScaleKey( spep_1 -3 + 112, ctBaki, 1.49, 1.49 );
setEffScaleKey( spep_1 -3 + 114, ctBaki, 2.05, 2.05 );
setEffScaleKey( spep_1 -3 + 116, ctBaki, 1.8, 1.8 );
setEffScaleKey( spep_1 -3 + 118, ctBaki, 1.8, 1.8 );
setEffScaleKey( spep_1 -3 + 120, ctBaki, 1.72, 1.72 );
setEffScaleKey( spep_1 -3 + 122, ctBaki, 1.76, 1.76 );
setEffScaleKey( spep_1 -3 + 124, ctBaki, 1.8, 1.8 );
setEffScaleKey( spep_1 -3 + 126, ctBaki, 1.81, 1.81 );
setEffScaleKey( spep_1 -3 + 128, ctBaki, 1.83, 1.83 );
setEffScaleKey( spep_1 -3 + 130, ctBaki, 1.84, 1.84 );

setEffRotateKey( spep_1 -3 + 110, ctBaki, 29.9 );
setEffRotateKey( spep_1 -3 + 112, ctBaki, -4.7 );
setEffRotateKey( spep_1 -3 + 114, ctBaki, 10.3 );
setEffRotateKey( spep_1 -3 + 116, ctBaki, 5 );
setEffRotateKey( spep_1 -3 + 118, ctBaki, 15.2 );
setEffRotateKey( spep_1 -3 + 120, ctBaki, 7.6 );
setEffRotateKey( spep_1 -3 + 128, ctBaki, 7.6 );
setEffRotateKey( spep_1 -3 + 130, ctBaki, 7.5 );
setEffRotateKey( spep_1 -3 + 132, ctBaki, 7.6 );

setEffAlphaKey( spep_1 -3 + 110, ctBaki, 255 );
setEffAlphaKey( spep_1 -3 + 124, ctBaki, 255 );
setEffAlphaKey( spep_1 -3 + 126, ctBaki, 170 );
setEffAlphaKey( spep_1 -3 + 128, ctBaki, 85 );
setEffAlphaKey( spep_1 -3 + 130, ctBaki, 0 );

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 126, 8, 2, 2, fcolor_r, fcolor_g, fcolor_b, 100 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 138, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
playSe( spep_1 + 32, 1189 );
playSe( spep_1 + 37, 1000 );
playSe( spep_1 + 54, 1006 );
setSeVolume( spep_1 + 54, 1006, 63 );
playSe( spep_1 + 56, 1009 );
setSeVolume( spep_1 + 56, 1009, 79 );
playSe( spep_1 + 65, 1000 );
playSe( spep_1 + 67, 1048 );
playSe( spep_1 + 108, 1003 );
setSeVolume( spep_1 + 108, 1003, 71 );
playSe( spep_1 + 113, 1110 );
playSe( spep_1 + 113, 1009 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 136;

------------------------------------------------------
-- 気弾を溜める
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_05, 0x80, -1, 0, 0, 0 ); --気弾を溜める(ef_005)
setEffMoveKey( spep_2 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_2 + 116, tame, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 116, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 116, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 116, tame, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_2 + 10, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_2 + 10, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_2 -30 + 52, 190006, 72, 0x100, -1, 0, 0, 530 );-- ゴゴゴゴ

setEffMoveKey(  spep_2 -30 + 52,  ctgogo, 0, 530 );
setEffMoveKey(  spep_2 -30 + 124,  ctgogo, 0, 530 );

setEffAlphaKey( spep_2 -30 + 52, ctgogo, 0 );
setEffAlphaKey( spep_2 -30 + 53, ctgogo, 255 );
setEffAlphaKey( spep_2 -30 + 54, ctgogo, 255 );
setEffAlphaKey( spep_2 -30 + 118, ctgogo, 255 );
setEffAlphaKey( spep_2 -30 + 120, ctgogo, 191 );
setEffAlphaKey( spep_2 -30 + 122, ctgogo, 112 );
setEffAlphaKey( spep_2 -30 + 124, ctgogo, 64 );

setEffRotateKey( spep_2 -30 + 52,  ctgogo,  0);
setEffRotateKey( spep_2 -30 + 124,  ctgogo,  0);

setEffScaleKey( spep_2 -30 + 52,  ctgogo,  0.7,  0.7);
setEffScaleKey( spep_2 -30 + 114,  ctgogo,  0.7,  0.7);
setEffScaleKey( spep_2 -30 + 124,  ctgogo, 1.07, 1.07 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 118, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 106, 8, 2, 2, fcolor_r, fcolor_g, fcolor_b, 100 );  --white fade

-- ** 音 ** --
playSe( spep_2 + 21, 1018 );
se_1154 = playSe( spep_2 + 27, 1154 );
setSeVolume( spep_2 + 27, 1154, 0 );
se_1157 = playSe( spep_2 + 35, 1157 );
setSeVolume( spep_2 + 35, 1157, 89 );
se_1144 = playSe( spep_2 + 35, 1144 );
setSeVolume( spep_2 + 35, 1144, 50 );
se_1037 = playSe( spep_2 + 35, 1037 );
setSeVolume( spep_2 + 35, 1037, 79 );
setSeVolume( spep_2 + 35, 1154, 35.25 );
setSeVolume( spep_2 + 36, 1154, 70.50 );
setSeVolume( spep_2 + 37, 1154, 105.75 );
setSeVolume( spep_2 + 38, 1154, 141.00 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 116;

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

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, 1035 );
stopSe( spep_3 + 1, se_1154, 0 );
stopSe( spep_3 + 1, se_1157, 0 );
stopSe( spep_3 + 1, se_1144, 0 );
stopSe( spep_3 + 1, se_1037, 0 );
se_1212 = playSe( spep_3 + 58, 1212 );
setSeVolume( spep_3 + 58, 1212, 0 );
playSe( spep_3 + 73, 1177 );
setSeVolume( spep_3 + 73, 1177, 0 );

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
-- 気弾発射
------------------------------------------------------
-- ** エフェクト等 ** --
hassha = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); --気弾発射(ef_006)
setEffMoveKey( spep_4 + 0, hassha, 0, 0, 0 );
setEffMoveKey( spep_4 + 46, hassha, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_4 + 46, hassha, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hassha, 0 );
setEffRotateKey( spep_4 + 46, hassha, 0 );
setEffAlphaKey( spep_4 + 0, hassha, 255 );
setEffAlphaKey( spep_4 + 46, hassha, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 48, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
playSe( spep_4 + 0, 1027 );
setSeVolume( spep_4 + 0, 1027, 71 );
playSe( spep_4 + 0, 1021 );
setSeVolume( spep_4 + 7, 1177, 100.00 );
setSeVolume( spep_4 + 9, 1212, 15.75 );
setSeVolume( spep_4 + 10, 1212, 31.50 );
setSeVolume( spep_4 + 11, 1212, 47.25 );
setSeVolume( spep_4 + 12, 1212, 63.00 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 46;

------------------------------------------------------
-- 気弾が敵に迫る
------------------------------------------------------
-- ** エフェクト等 ** --
semaru_f = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 ); --気弾が敵に迫る(ef_007)
setEffMoveKey( spep_5 + 0, semaru_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 56, semaru_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, semaru_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, semaru_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, semaru_f, 0 );
setEffRotateKey( spep_5 + 56, semaru_f, 0 );
setEffAlphaKey( spep_5 + 0, semaru_f, 255 );
setEffAlphaKey( spep_5 + 56, semaru_f, 255 );

semaru_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 ); --気弾が敵に迫る(ef_008)
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
setDisp( spep_5 -3 + 59, 1, 0 );
changeAnime( spep_5 -3 + 3, 1, 105 );

setMoveKey( spep_5 -3 + 3, 1, 1.6, -1.7 , 0 );
--setMoveKey( spep_5 -3 + 2, 1, -2.1, -5.6 , 0 );
setMoveKey( spep_5 -3 + 4, 1, 5.8, -1.7 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 2.2, 2.1 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 0.6, 2.1 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 6.7, -5.5 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 10.9, -9.4 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 19, -5.5 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 15.6, 2.2 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 16.1, -3.5 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 16.7, -1.6 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 19.3, -1.5 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 22, 6.2 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 20.9, 12 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 27.6, 10.1 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 24.8, 10.2 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 26.1, 6.4 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 31.3, 2.6 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 25.1, 2.7 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 23, 6.6 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 32.6, -1 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 27.1, -4.7 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 37.3, -12.3 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 32.4, -4.5 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 35.6, -12 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 39.3, -8 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 43.4, -7.8 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 44.3, -3.7 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 49.8, 0.4 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 60.2, -7.8 , 0 );
setMoveKey( spep_5 -3 + 59, 1, 60.2, -7.8 , 0 );

setScaleKey( spep_5 -3 + 3, 1, 0.17, 0.17 );
--setScaleKey( spep_5 -3 + 2, 1, 0.17, 0.17 );
setScaleKey( spep_5 -3 + 4, 1, 0.18, 0.18 );
setScaleKey( spep_5 -3 + 6, 1, 0.19, 0.19 );
setScaleKey( spep_5 -3 + 8, 1, 0.2, 0.2 );
setScaleKey( spep_5 -3 + 10, 1, 0.22, 0.22 );
setScaleKey( spep_5 -3 + 12, 1, 0.23, 0.23 );
setScaleKey( spep_5 -3 + 14, 1, 0.25, 0.25 );
setScaleKey( spep_5 -3 + 16, 1, 0.27, 0.27 );
setScaleKey( spep_5 -3 + 18, 1, 0.29, 0.29 );
setScaleKey( spep_5 -3 + 20, 1, 0.32, 0.32 );
setScaleKey( spep_5 -3 + 22, 1, 0.34, 0.34 );
setScaleKey( spep_5 -3 + 24, 1, 0.38, 0.38 );
setScaleKey( spep_5 -3 + 26, 1, 0.41, 0.41 );
setScaleKey( spep_5 -3 + 28, 1, 0.45, 0.45 );
setScaleKey( spep_5 -3 + 30, 1, 0.5, 0.5 );
setScaleKey( spep_5 -3 + 32, 1, 0.55, 0.55 );
setScaleKey( spep_5 -3 + 34, 1, 0.6, 0.6 );
setScaleKey( spep_5 -3 + 36, 1, 0.67, 0.67 );
setScaleKey( spep_5 -3 + 38, 1, 0.74, 0.74 );
setScaleKey( spep_5 -3 + 40, 1, 0.82, 0.82 );
setScaleKey( spep_5 -3 + 42, 1, 0.91, 0.91 );
setScaleKey( spep_5 -3 + 44, 1, 1.02, 1.02 );
setScaleKey( spep_5 -3 + 46, 1, 1.14, 1.14 );
setScaleKey( spep_5 -3 + 48, 1, 1.27, 1.27 );
setScaleKey( spep_5 -3 + 50, 1, 1.42, 1.42 );
setScaleKey( spep_5 -3 + 52, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 54, 1, 1.8, 1.8 );
setScaleKey( spep_5 -3 + 56, 1, 2.03, 2.03 );
setScaleKey( spep_5 -3 + 58, 1, 2.29, 2.29 );
setScaleKey( spep_5 -3 + 59, 1, 2.29, 2.29 );

setRotateKey( spep_5 -3 + 3, 1, 0 );
setRotateKey( spep_5 -3 + 59, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 58, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;

------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_6 + 0, SP_09, 0x80, -1, 0, 0, 0 ); --爆発(ef_009)
setEffMoveKey( spep_6 + 0, explosion, 0, 0, 0 );
setEffMoveKey( spep_6 + 176, explosion, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_6 + 176, explosion, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, explosion, 0 );
setEffRotateKey( spep_6 + 176, explosion, 0 );
setEffAlphaKey( spep_6 + 0, explosion, 255 );
setEffAlphaKey( spep_6 + 176, explosion, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 168, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
playSe( spep_6 + 9, 1023 );
playSe( spep_6 + 13, 1011 );
playSe( spep_6 + 13, 1159 );
setSeVolume( spep_6 + 13, 1159, 63 );
stopSe( spep_6 + 35, se_1212, 0 );

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 6 );
endPhase( spep_6 + 166 );

else 

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
--敵に向かって突進
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tosshin = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0 ); --敵に向かって突進(ef_001)
setEffMoveKey( spep_0 + 0, tosshin, 0, 0, 0 );
setEffMoveKey( spep_0 + 56, tosshin, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tosshin, -1.0, 1.0 );
setEffScaleKey( spep_0 + 56, tosshin, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tosshin, 0 );
setEffRotateKey( spep_0 + 56, tosshin, 0 );
setEffAlphaKey( spep_0 + 0, tosshin, 255 );
setEffAlphaKey( spep_0 + 56, tosshin, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 58, 0, 0, 0, 0, 255 ); --黒 背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
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

-- ** 音 ** --
se_0009 = playSe( spep_0 + 27, 09 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 56;

--------------------------------------
--連打
--------------------------------------
-- ** エフェクト等 ** --
rush = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0 ); --連打(ef_002)
setEffMoveKey( spep_1 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_1 + 138, rush, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush, -1.0, 1.0 );
setEffScaleKey( spep_1 + 138, rush, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush, 0 );
setEffRotateKey( spep_1 + 138, rush, 0 );
setEffAlphaKey( spep_1 + 0, rush, 255 );
setEffAlphaKey( spep_1 + 136, rush, 255 );
setEffAlphaKey( spep_1 + 137, rush, 0 );
setEffAlphaKey( spep_1 + 138, rush, 0 );

rush_mt = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 , -20 ); --背景・山(ef_003)
setEffMoveKey( spep_1 + 0, rush_mt, 0, 0, 0 );
setEffMoveKey( spep_1 + 138, rush_mt, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush_mt, 1.0, 1.0 );
setEffScaleKey( spep_1 + 138, rush_mt, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_mt, 0 );
setEffRotateKey( spep_1 + 138, rush_mt, 0 );
setEffAlphaKey( spep_1 + 0, rush_mt, 255 );
setEffAlphaKey( spep_1 + 136, rush_mt, 255 );
setEffAlphaKey( spep_1 + 137, rush_mt, 0 );
setEffAlphaKey( spep_1 + 138, rush_mt, 0 );

rush_sky = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0, -30 ); --背景・空(ef_004)
setEffMoveKey( spep_1 + 0, rush_sky, 0, 0, 0 );
setEffMoveKey( spep_1 + 138, rush_sky, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush_sky, 1.0, 1.0 );
setEffScaleKey( spep_1 + 138, rush_sky, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_sky, 0 );
setEffRotateKey( spep_1 + 138, rush_sky, 0 );
setEffAlphaKey( spep_1 + 0, rush_sky, 255 );
setEffAlphaKey( spep_1 + 136, rush_sky, 255 );
setEffAlphaKey( spep_1 + 137, rush_sky, 0 );
setEffAlphaKey( spep_1 + 138, rush_sky, 0 );

-- ** 流線 ** --
ryusen_1 = entryEffectLife( spep_1 -3 + 3, 914, 138 -3, 0x80, -1, 0, 0, -10 );
setEffMoveKey( spep_1 -3 + 3, ryusen_1, 0, 0, 0 );
setEffMoveKey( spep_1 -3 + 138, ryusen_1, 0, 0, 0 );

setEffScaleKey( spep_1 -3 + 3, ryusen_1, 12.69, 2.53 );
setEffScaleKey( spep_1 -3 + 138, ryusen_1, 12.69, 2.53 );

setEffRotateKey( spep_1 -3 + 3, ryusen_1, 0 );
setEffRotateKey( spep_1 -3 + 138, ryusen_1, 0 );

setEffAlphaKey( spep_1 -3 + 3, ryusen_1, 153 );
setEffAlphaKey( spep_1 -3 + 29, ryusen_1, 153 );
setEffAlphaKey( spep_1 -3 + 30, ryusen_1, 0 );
setEffAlphaKey( spep_1 -3 + 31, ryusen_1, 0 );
setEffAlphaKey( spep_1 -3 + 107, ryusen_1, 0 );
setEffAlphaKey( spep_1 -3 + 108, ryusen_1, 255 );
setEffAlphaKey( spep_1 -3 + 138, ​ryusen_1, 255 );

-- ** 敵の動き ** --
setDisp( spep_1 -3 + 3, 1, 1 );
setDisp( spep_1 -3 + 124, 1, 0 );
changeAnime( spep_1 -3 + 3, 1, 101 );
changeAnime( spep_1 -3 + 18, 1, 104 );
changeAnime( spep_1 -3 + 30, 1, 101 );
changeAnime( spep_1 -3 + 32, 1, 106 );
changeAnime( spep_1 -3 + 50, 1, 108 );
changeAnime( spep_1 -3 + 66, 1, 106 );
changeAnime( spep_1 -3 + 110, 1, 108 );

setMoveKey( spep_1 -3 + 3, 1, 557.7, -63 , 0 );
--setMoveKey( spep_1 -3 + 2, 1, 505.7, -63 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 453.7, -63 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 401.7, -63 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 349.7, -63 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 297.7, -63 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 245.7, -63 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 193.7, -63 , 0 );
setMoveKey( spep_1 -3 + 17, 1, 141.7, -63 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 89.7, -63 , 0 );
setMoveKey( spep_1 -3 + 29, 1, 89.7, -63 , 0 );
setMoveKey( spep_1 -3 + 31, 1, 94.4, -72.3 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 73.8, -58.2 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 79.1, -70.7 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 98.5, -58 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 105.2, -65.8 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 94.9, -60.7 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 94.1, -65 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 90, -64.4 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 86, -63.9 , 0 );
setMoveKey( spep_1 -3 + 49, 1, 82, -63.4 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 59, -65.5 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 59.2, -59.3 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 70.4, -64 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 83, -57.9 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 86.2, -62.7 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 80, -61.2 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 70.7, -61.2 , 0 );
setMoveKey( spep_1 -3 + 65, 1, 61.3, -61.2 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 60.6, -61.5 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 87, -61.1 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 110.3, -51.9 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 125.1, -54.9 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 123.5, -46 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 122.8, -51.8 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 119.5, -54.3 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 117.9, -53.5 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 116.3, -52.6 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 114.8, -51.8 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 113.2, -51 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 111.7, -50.1 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 110.1, -49.3 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 108.5, -48.4 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 106.9, -47.6 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 105.4, -46.8 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 103.8, -45.9 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 102.2, -45.1 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 100.6, -44.3 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 99.1, -43.4 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 97.5, -42.6 , 0 );
setMoveKey( spep_1 -3 + 109, 1, 95.9, -41.8 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 208, -29.5 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 248.5, -33.1 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 310.8, -28 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 439.2, -11.2 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 666.2, 2.7 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 1192.2, 14.8 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 1196.6, 17 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 1197.8, 13.1 , 0 );

setScaleKey( spep_1 -3 + 3, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 124, 1, 1.52, 1.52 );

setRotateKey( spep_1 -3 + 3, 1, 0 );
setRotateKey( spep_1 -3 + 31, 1, 0 );
setRotateKey( spep_1 -3 + 32, 1, -50 );
setRotateKey( spep_1 -3 + 34, 1, -49.9 );
setRotateKey( spep_1 -3 + 36, 1, -49.8 );
setRotateKey( spep_1 -3 + 38, 1, -49.7 );
setRotateKey( spep_1 -3 + 40, 1, -49.3 );
setRotateKey( spep_1 -3 + 42, 1, -49 );
setRotateKey( spep_1 -3 + 44, 1, -48.7 );
setRotateKey( spep_1 -3 + 46, 1, -48.3 );
setRotateKey( spep_1 -3 + 49, 1, -48 );
setRotateKey( spep_1 -3 + 50, 1, -7 );
setRotateKey( spep_1 -3 + 52, 1, -7 );
setRotateKey( spep_1 -3 + 54, 1, -6.9 );
setRotateKey( spep_1 -3 + 56, 1, -6.9 );
setRotateKey( spep_1 -3 + 58, 1, -6.8 );
setRotateKey( spep_1 -3 + 60, 1, -6.9 );
setRotateKey( spep_1 -3 + 62, 1, -6.9 );
setRotateKey( spep_1 -3 + 65, 1, -7 );
setRotateKey( spep_1 -3 + 66, 1, -55 );
setRotateKey( spep_1 -3 + 68, 1, -51.9 );
setRotateKey( spep_1 -3 + 70, 1, -50.1 );
setRotateKey( spep_1 -3 + 72, 1, -49 );
setRotateKey( spep_1 -3 + 74, 1, -48.3 );
setRotateKey( spep_1 -3 + 76, 1, -47.9 );
setRotateKey( spep_1 -3 + 78, 1, -47.4 );
setRotateKey( spep_1 -3 + 80, 1, -46.9 );
setRotateKey( spep_1 -3 + 82, 1, -46.4 );
setRotateKey( spep_1 -3 + 84, 1, -45.9 );
setRotateKey( spep_1 -3 + 86, 1, -45.4 );
setRotateKey( spep_1 -3 + 88, 1, -44.9 );
setRotateKey( spep_1 -3 + 90, 1, -44.4 );
setRotateKey( spep_1 -3 + 92, 1, -44 );
setRotateKey( spep_1 -3 + 94, 1, -43.5 );
setRotateKey( spep_1 -3 + 96, 1, -43 );
setRotateKey( spep_1 -3 + 98, 1, -42.5 );
setRotateKey( spep_1 -3 + 100, 1, -42 );
setRotateKey( spep_1 -3 + 102, 1, -41.5 );
setRotateKey( spep_1 -3 + 104, 1, -41 );
setRotateKey( spep_1 -3 + 106, 1, -40.5 );
setRotateKey( spep_1 -3 + 109, 1, -40 );
setRotateKey( spep_1 -3 + 110, 1, -7 );
setRotateKey( spep_1 -3 + 112, 1, -7.8 );
setRotateKey( spep_1 -3 + 114, 1, -9.6 );
setRotateKey( spep_1 -3 + 116, 1, -12.7 );
setRotateKey( spep_1 -3 + 118, 1, -18.3 );
setRotateKey( spep_1 -3 + 120, 1, -31 );
setRotateKey( spep_1 -3 + 124, 1, -31 );

-- ** 書き文字エントリー ** --
ctBaki = entryEffectLife( spep_1 -3 + 110, 10020, 28, 0x100, -1, 0, 102.7, 191.7 ); --バキッ
setEffMoveKey( spep_1 -3 + 110, ctBaki, 102.7, 191.7 , 0 );
setEffMoveKey( spep_1 -3 + 112, ctBaki, 215.2, 253.4 , 0 );
setEffMoveKey( spep_1 -3 + 114, ctBaki, 157.4, 235.9 , 0 );
setEffMoveKey( spep_1 -3 + 116, ctBaki, 184.9, 232.7 , 0 );
setEffMoveKey( spep_1 -3 + 118, ctBaki, 137.1, 187.5 , 0 );
setEffMoveKey( spep_1 -3 + 120, ctBaki, 174, 219.4 , 0 );
setEffMoveKey( spep_1 -3 + 122, ctBaki, 172.2, 226.1 , 0 );
setEffMoveKey( spep_1 -3 + 124, ctBaki, 170.4, 232.8 , 0 );
setEffMoveKey( spep_1 -3 + 126, ctBaki, 172.5, 231.1 , 0 );
setEffMoveKey( spep_1 -3 + 128, ctBaki, 172.4, 229.4 , 0 );
setEffMoveKey( spep_1 -3 + 130, ctBaki, 165.2, 233.6 , 0 );
setEffMoveKey( spep_1 -3 + 132, ctBaki, 164.9, 233.5 , 0 );

setEffScaleKey( spep_1 -3 + 110, ctBaki, 1.32, 1.32 );
setEffScaleKey( spep_1 -3 + 112, ctBaki, 1.49, 1.49 );
setEffScaleKey( spep_1 -3 + 114, ctBaki, 2.05, 2.05 );
setEffScaleKey( spep_1 -3 + 116, ctBaki, 1.8, 1.8 );
setEffScaleKey( spep_1 -3 + 118, ctBaki, 1.8, 1.8 );
setEffScaleKey( spep_1 -3 + 120, ctBaki, 1.72, 1.72 );
setEffScaleKey( spep_1 -3 + 122, ctBaki, 1.76, 1.76 );
setEffScaleKey( spep_1 -3 + 124, ctBaki, 1.8, 1.8 );
setEffScaleKey( spep_1 -3 + 126, ctBaki, 1.81, 1.81 );
setEffScaleKey( spep_1 -3 + 128, ctBaki, 1.83, 1.83 );
setEffScaleKey( spep_1 -3 + 130, ctBaki, 1.84, 1.84 );

setEffRotateKey( spep_1 -3 + 110, ctBaki, 29.9 );
setEffRotateKey( spep_1 -3 + 112, ctBaki, -4.7 );
setEffRotateKey( spep_1 -3 + 114, ctBaki, 10.3 );
setEffRotateKey( spep_1 -3 + 116, ctBaki, 5 );
setEffRotateKey( spep_1 -3 + 118, ctBaki, 15.2 );
setEffRotateKey( spep_1 -3 + 120, ctBaki, 7.6 );
setEffRotateKey( spep_1 -3 + 128, ctBaki, 7.6 );
setEffRotateKey( spep_1 -3 + 130, ctBaki, 7.5 );
setEffRotateKey( spep_1 -3 + 132, ctBaki, 7.6 );

setEffAlphaKey( spep_1 -3 + 110, ctBaki, 255 );
setEffAlphaKey( spep_1 -3 + 124, ctBaki, 255 );
setEffAlphaKey( spep_1 -3 + 126, ctBaki, 170 );
setEffAlphaKey( spep_1 -3 + 128, ctBaki, 85 );
setEffAlphaKey( spep_1 -3 + 130, ctBaki, 0 );

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 126, 8, 2, 2, fcolor_r, fcolor_g, fcolor_b, 100 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 138, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
playSe( spep_1 + 32, 1189 );
playSe( spep_1 + 37, 1000 );
playSe( spep_1 + 54, 1006 );
setSeVolume( spep_1 + 54, 1006, 63 );
playSe( spep_1 + 56, 1009 );
setSeVolume( spep_1 + 56, 1009, 79 );
playSe( spep_1 + 65, 1000 );
playSe( spep_1 + 67, 1048 );
playSe( spep_1 + 108, 1003 );
setSeVolume( spep_1 + 108, 1003, 71 );
playSe( spep_1 + 113, 1110 );
playSe( spep_1 + 113, 1009 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 136;

------------------------------------------------------
-- 気弾を溜める
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_05, 0x80, -1, 0, 0, 0 ); --気弾を溜める(ef_005)
setEffMoveKey( spep_2 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_2 + 116, tame, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_2 + 116, tame, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 116, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 116, tame, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_2 + 10, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_2 + 10, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_2 -30 + 52, 190006, 72, 0x100, -1, 0, 0, 530 );-- ゴゴゴゴ

setEffMoveKey(  spep_2 -30 + 52,  ctgogo, 0, 530 );
setEffMoveKey(  spep_2 -30 + 124,  ctgogo, 0, 530 );

setEffAlphaKey( spep_2 -30 + 52, ctgogo, 0 );
setEffAlphaKey( spep_2 -30 + 53, ctgogo, 255 );
setEffAlphaKey( spep_2 -30 + 54, ctgogo, 255 );
setEffAlphaKey( spep_2 -30 + 118, ctgogo, 255 );
setEffAlphaKey( spep_2 -30 + 120, ctgogo, 191 );
setEffAlphaKey( spep_2 -30 + 122, ctgogo, 112 );
setEffAlphaKey( spep_2 -30 + 124, ctgogo, 64 );

setEffRotateKey( spep_2 -30 + 52,  ctgogo,  0);
setEffRotateKey( spep_2 -30 + 124,  ctgogo,  0);

setEffScaleKey( spep_2 -30 + 52,  ctgogo,  -0.7,  0.7);
setEffScaleKey( spep_2 -30 + 114,  ctgogo,  -0.7,  0.7);
setEffScaleKey( spep_2 -30 + 124,  ctgogo, -1.07, 1.07 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 118, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 106, 8, 2, 2, fcolor_r, fcolor_g, fcolor_b, 100 );  --white fade

-- ** 音 ** --
playSe( spep_2 + 21, 1018 );
se_1154 = playSe( spep_2 + 27, 1154 );
setSeVolume( spep_2 + 27, 1154, 0 );
se_1157 = playSe( spep_2 + 35, 1157 );
setSeVolume( spep_2 + 35, 1157, 89 );
se_1144 = playSe( spep_2 + 35, 1144 );
setSeVolume( spep_2 + 35, 1144, 50 );
se_1037 = playSe( spep_2 + 35, 1037 );
setSeVolume( spep_2 + 35, 1037, 79 );
setSeVolume( spep_2 + 35, 1154, 35.25 );
setSeVolume( spep_2 + 36, 1154, 70.50 );
setSeVolume( spep_2 + 37, 1154, 105.75 );
setSeVolume( spep_2 + 38, 1154, 141.00 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 116;

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

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, 1035 );
stopSe( spep_3 + 1, se_1154, 0 );
stopSe( spep_3 + 1, se_1157, 0 );
stopSe( spep_3 + 1, se_1144, 0 );
stopSe( spep_3 + 1, se_1037, 0 );
se_1212 = playSe( spep_3 + 58, 1212 );
setSeVolume( spep_3 + 58, 1212, 0 );
playSe( spep_3 + 73, 1177 );
setSeVolume( spep_3 + 73, 1177, 0 );

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
-- 気弾発射
------------------------------------------------------
-- ** エフェクト等 ** --
hassha = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); --気弾発射(ef_006)
setEffMoveKey( spep_4 + 0, hassha, 0, 0, 0 );
setEffMoveKey( spep_4 + 46, hassha, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hassha, -1.0, 1.0 );
setEffScaleKey( spep_4 + 46, hassha, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hassha, 0 );
setEffRotateKey( spep_4 + 46, hassha, 0 );
setEffAlphaKey( spep_4 + 0, hassha, 255 );
setEffAlphaKey( spep_4 + 46, hassha, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 48, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
playSe( spep_4 + 0, 1027 );
setSeVolume( spep_4 + 0, 1027, 71 );
playSe( spep_4 + 0, 1021 );
setSeVolume( spep_4 + 7, 1177, 100.00 );
setSeVolume( spep_4 + 9, 1212, 15.75 );
setSeVolume( spep_4 + 10, 1212, 31.50 );
setSeVolume( spep_4 + 11, 1212, 47.25 );
setSeVolume( spep_4 + 12, 1212, 63.00 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 46;

------------------------------------------------------
-- 気弾が敵に迫る
------------------------------------------------------
-- ** エフェクト等 ** --
semaru_f = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 ); --気弾が敵に迫る(ef_007)
setEffMoveKey( spep_5 + 0, semaru_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 56, semaru_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, semaru_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, semaru_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, semaru_f, 0 );
setEffRotateKey( spep_5 + 56, semaru_f, 0 );
setEffAlphaKey( spep_5 + 0, semaru_f, 255 );
setEffAlphaKey( spep_5 + 56, semaru_f, 255 );

semaru_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 ); --気弾が敵に迫る(ef_008)
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
setDisp( spep_5 -3 + 59, 1, 0 );
changeAnime( spep_5 -3 + 3, 1, 105 );

setMoveKey( spep_5 -3 + 3, 1, 1.6, -1.7 , 0 );
--setMoveKey( spep_5 -3 + 2, 1, -2.1, -5.6 , 0 );
setMoveKey( spep_5 -3 + 4, 1, 5.8, -1.7 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 2.2, 2.1 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 0.6, 2.1 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 6.7, -5.5 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 10.9, -9.4 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 19, -5.5 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 15.6, 2.2 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 16.1, -3.5 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 16.7, -1.6 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 19.3, -1.5 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 22, 6.2 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 20.9, 12 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 27.6, 10.1 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 24.8, 10.2 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 26.1, 6.4 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 31.3, 2.6 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 25.1, 2.7 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 23, 6.6 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 32.6, -1 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 27.1, -4.7 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 37.3, -12.3 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 32.4, -4.5 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 35.6, -12 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 39.3, -8 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 43.4, -7.8 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 44.3, -3.7 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 49.8, 0.4 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 60.2, -7.8 , 0 );
setMoveKey( spep_5 -3 + 59, 1, 60.2, -7.8 , 0 );

setScaleKey( spep_5 -3 + 3, 1, 0.17, 0.17 );
--setScaleKey( spep_5 -3 + 2, 1, 0.17, 0.17 );
setScaleKey( spep_5 -3 + 4, 1, 0.18, 0.18 );
setScaleKey( spep_5 -3 + 6, 1, 0.19, 0.19 );
setScaleKey( spep_5 -3 + 8, 1, 0.2, 0.2 );
setScaleKey( spep_5 -3 + 10, 1, 0.22, 0.22 );
setScaleKey( spep_5 -3 + 12, 1, 0.23, 0.23 );
setScaleKey( spep_5 -3 + 14, 1, 0.25, 0.25 );
setScaleKey( spep_5 -3 + 16, 1, 0.27, 0.27 );
setScaleKey( spep_5 -3 + 18, 1, 0.29, 0.29 );
setScaleKey( spep_5 -3 + 20, 1, 0.32, 0.32 );
setScaleKey( spep_5 -3 + 22, 1, 0.34, 0.34 );
setScaleKey( spep_5 -3 + 24, 1, 0.38, 0.38 );
setScaleKey( spep_5 -3 + 26, 1, 0.41, 0.41 );
setScaleKey( spep_5 -3 + 28, 1, 0.45, 0.45 );
setScaleKey( spep_5 -3 + 30, 1, 0.5, 0.5 );
setScaleKey( spep_5 -3 + 32, 1, 0.55, 0.55 );
setScaleKey( spep_5 -3 + 34, 1, 0.6, 0.6 );
setScaleKey( spep_5 -3 + 36, 1, 0.67, 0.67 );
setScaleKey( spep_5 -3 + 38, 1, 0.74, 0.74 );
setScaleKey( spep_5 -3 + 40, 1, 0.82, 0.82 );
setScaleKey( spep_5 -3 + 42, 1, 0.91, 0.91 );
setScaleKey( spep_5 -3 + 44, 1, 1.02, 1.02 );
setScaleKey( spep_5 -3 + 46, 1, 1.14, 1.14 );
setScaleKey( spep_5 -3 + 48, 1, 1.27, 1.27 );
setScaleKey( spep_5 -3 + 50, 1, 1.42, 1.42 );
setScaleKey( spep_5 -3 + 52, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 54, 1, 1.8, 1.8 );
setScaleKey( spep_5 -3 + 56, 1, 2.03, 2.03 );
setScaleKey( spep_5 -3 + 58, 1, 2.29, 2.29 );
setScaleKey( spep_5 -3 + 59, 1, 2.29, 2.29 );

setRotateKey( spep_5 -3 + 3, 1, 0 );
setRotateKey( spep_5 -3 + 59, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 58, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;

------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_6 + 0, SP_09, 0x80, -1, 0, 0, 0 ); --爆発(ef_009)
setEffMoveKey( spep_6 + 0, explosion, 0, 0, 0 );
setEffMoveKey( spep_6 + 176, explosion, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, explosion, -1.0, 1.0 );
setEffScaleKey( spep_6 + 176, explosion, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, explosion, 0 );
setEffRotateKey( spep_6 + 176, explosion, 0 );
setEffAlphaKey( spep_6 + 0, explosion, 255 );
setEffAlphaKey( spep_6 + 176, explosion, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 168, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
playSe( spep_6 + 9, 1023 );
playSe( spep_6 + 13, 1011 );
playSe( spep_6 + 13, 1159 );
setSeVolume( spep_6 + 13, 1159, 63 );
stopSe( spep_6 + 35, se_1212, 0 );

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 6 );
endPhase( spep_6 + 166 );

end