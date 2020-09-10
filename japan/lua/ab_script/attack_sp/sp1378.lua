--1018580:グレートサイヤマン(SS)_超かめはめ波
--sp_effect_a1_00210

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
SP_01 = 154625; --崖の上で敵と対峙
SP_02 = 154627; --ラッシュ
SP_03 = 154629; --ラッシュエフェクト
SP_04 = 154631; --ラッシュ背景
SP_05 = 154633; --気溜め
SP_06 = 154635; --かめはめ波 構え～放つ
SP_07 = 154636; --キャラ　敵に向かって飛んでいく
SP_08 = 154638; --背景　敵に向かって飛んでいく
SP_09 = 154640; --ギャン　黄色
SP_10 = 154641; --爆発

--敵側
SP_01r = 154626; --崖の上で敵と対峙（敵側）
SP_02r = 154628; --ラッシュ（敵側）
SP_03r = 154630; --ラッシュエフェクト(敵側)
SP_04r = 154632; --ラッシュ背景（敵側）
SP_05r = 154634; --気溜め（敵側）
SP_07r = 154637; --キャラ　敵に向かって飛んでいく（敵側）
SP_08r = 154639; --背景　敵に向かって飛んでいく（敵側）
SP_10r = 154642; --爆発(反転)

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;
--adjustAttackerLabel( 0, -100 ); 

if( _IS_EXTRA_ATTACK_ == 0 ) then
 adjustAttackerLabel( 0, -100);
end

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);

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

--[[setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);

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
setRotateKey( 6,   1,  0 );]]

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 崖の上で敵と対峙
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
idling = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --崖の上で敵と対峙(ef_001)
setEffMoveKey( spep_0 + 0, idling, 0, 0, 0 );
setEffMoveKey( spep_0 + 86, idling, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, idling, 1.0, 1.0 );
setEffScaleKey( spep_0 + 86, idling, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, idling, 0 );
setEffRotateKey( spep_0 + 86, idling, 0 );
setEffAlphaKey( spep_0 + 0, idling, 255 );
setEffAlphaKey( spep_0 + 86, idling, 255 );

-- ** 敵の動き ** --
setDisp( spep_0 -3 + 3, 1, 1 );
setDisp( spep_0 -3 + 50, 1, 0 );
changeAnime( spep_0 -3 + 3, 1, 102 );

d = -40;
e = 10;

setMoveKey( spep_0 -3 + 3, 1, 198.9 + e, -256.7 + d, 0 );
--setMoveKey( spep_0 -3 + 2, 1, 198.9, -257.6 , 0 );
setMoveKey( spep_0 -3 + 4, 1, 198.9 + e, -258.5 + d, 0 );
setMoveKey( spep_0 -3 + 6, 1, 198.9 + e, -259.4 + d, 0 );
setMoveKey( spep_0 -3 + 8, 1, 198.9 + e, -260.4 + d, 0 );
setMoveKey( spep_0 -3 + 10, 1, 198.9 + e, -261.3 + d, 0 );
setMoveKey( spep_0 -3 + 12, 1, 198.9 + e, -262.3 + d, 0 );
setMoveKey( spep_0 -3 + 14, 1, 198.9 + e, -263.3 + d, 0 );
setMoveKey( spep_0 -3 + 16, 1, 198.9 + e, -264.2 + d, 0 );
setMoveKey( spep_0 -3 + 18, 1, 198.9 + e, -265.2 + d, 0 );
setMoveKey( spep_0 -3 + 20, 1, 198.9 + e, -266.2 + d, 0 );
setMoveKey( spep_0 -3 + 22, 1, 198.9 + e, -267.2 + d, 0 );
setMoveKey( spep_0 -3 + 24, 1, 198.9 + e, -268.2 + d, 0 );
setMoveKey( spep_0 -3 + 26, 1, 198.9 + e, -269.3 + d, 0 );
setMoveKey( spep_0 -3 + 28, 1, 198.9 + e, -270.3 + d, 0 );
setMoveKey( spep_0 -3 + 30, 1, 198.9 + e, -271.3 + d, 0 );
setMoveKey( spep_0 -3 + 32, 1, 198.9 + e, -272.4 + d, 0 );
setMoveKey( spep_0 -3 + 34, 1, 198.9 + e, -273.4 + d, 0 );
setMoveKey( spep_0 -3 + 36, 1, 198.9 + e, -274.5 + d, 0 );
setMoveKey( spep_0 -3 + 38, 1, 217.7 + e, -298 + d, 0 );
setMoveKey( spep_0 -3 + 40, 1, 274 + e, -368.4 + d, 0 );
setMoveKey( spep_0 -3 + 42, 1, 367.9 + e, -485.8 + d, 0 );
setMoveKey( spep_0 -3 + 44, 1, 499.4 + e, -650 + d, 0 );
setMoveKey( spep_0 -3 + 46, 1, 668.5 + e, -861.3 + d, 0 );
setMoveKey( spep_0 -3 + 48, 1, 875 + e, -1119.4 + d, 0 );
setMoveKey( spep_0 -3 + 50, 1, 1119.2 + e, -1424.4 + d, 0 );

setScaleKey( spep_0 -3 + 3, 1, 2.9, 2.9 );
setScaleKey( spep_0 -3 + 4, 1, 2.9, 2.9 );
setScaleKey( spep_0 -3 + 5, 1, 2.9, 2.9 );
setScaleKey( spep_0 -3 + 6, 1, 2.9, 2.9 );
setScaleKey( spep_0 -3 + 7, 1, 2.9, 2.9 );
setScaleKey( spep_0 -3 + 8, 1, 2.9, 2.9 );
setScaleKey( spep_0 -3 + 9, 1, 2.9, 2.9 );
setScaleKey( spep_0 -3 + 36, 1, 2.9, 2.9 );
setScaleKey( spep_0 -3 + 38, 1, 2.99, 2.99 );
setScaleKey( spep_0 -3 + 40, 1, 3.28, 3.28 );
setScaleKey( spep_0 -3 + 42, 1, 3.75, 3.75 );
setScaleKey( spep_0 -3 + 44, 1, 4.41, 4.41 );
setScaleKey( spep_0 -3 + 46, 1, 5.27, 5.27 );
setScaleKey( spep_0 -3 + 48, 1, 6.31, 6.31 );
setScaleKey( spep_0 -3 + 50, 1, 7.54, 7.54 );

setRotateKey( spep_0 -3 + 3, 1, 0 );
setRotateKey( spep_0 -3 + 4, 1, 0 );
setRotateKey( spep_0 -3 + 5, 1, 0 );
setRotateKey( spep_0 -3 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 7, 1, 0 );
setRotateKey( spep_0 -3 + 8, 1, 0 );
setRotateKey( spep_0 -3 + 9, 1, 0 );
setRotateKey( spep_0 -3 + 50, 1, 0 );

-- ** 音 ** --
se_1072 = playSe( spep_0 + 0, 1072 );
setSeVolume( spep_0 + 0, 1072, 0 );
setSeVolume( spep_0 + 1, 1072, 8.54545454545454 );
setSeVolume( spep_0 + 2, 1072, 17.0909090909091 );
setSeVolume( spep_0 + 3, 1072, 25.6363636363636 );
setSeVolume( spep_0 + 4, 1072, 34.1818181818182 );
setSeVolume( spep_0 + 5, 1072, 42.7272727272727 );
setSeVolume( spep_0 + 6, 1072, 51.2727272727273 );
setSeVolume( spep_0 + 7, 1072, 59.8181818181818 );
setSeVolume( spep_0 + 8, 1072, 68.3636363636364 );
setSeVolume( spep_0 + 9, 1072, 76.9090909090909 );
setSeVolume( spep_0 + 10, 1072, 85.4545454545455 );
setSeVolume( spep_0 + 11, 1072, 94 );
setSeVolume( spep_0 + 12, 1072, 102.545454545455 );
setSeVolume( spep_0 + 13, 1072, 111.090909090909 );
setSeVolume( spep_0 + 14, 1072, 119.636363636364 );
setSeVolume( spep_0 + 15, 1072, 128.181818181818 );
setSeVolume( spep_0 + 16, 1072, 136.727272727273 );
setSeVolume( spep_0 + 17, 1072, 145.272727272727 );
setSeVolume( spep_0 + 18, 1072, 153.818181818182 );
setSeVolume( spep_0 + 19, 1072, 162.363636363636 );
setSeVolume( spep_0 + 20, 1072, 170.909090909091 );
setSeVolume( spep_0 + 21, 1072, 179.454545454545 );
setSeVolume( spep_0 + 22, 1072, 188 );
setSeVolume( spep_0 + 23, 1072, 196.545454545455 );
setSeVolume( spep_0 + 24, 1072, 205.090909090909 );
setSeVolume( spep_0 + 25, 1072, 213.636363636364 );
setSeVolume( spep_0 + 26, 1072, 222.181818181818 );
setSeVolume( spep_0 + 27, 1072, 230.727272727273 );
setSeVolume( spep_0 + 28, 1072, 239.272727272727 );
setSeVolume( spep_0 + 29, 1072, 247.818181818182 );
setSeVolume( spep_0 + 30, 1072, 256.363636363636 );
setSeVolume( spep_0 + 31, 1072, 264.909090909091 );
setSeVolume( spep_0 + 32, 1072, 273.454545454545 );
setSeVolume( spep_0 + 33, 1072, 282 );
stopSe( spep_0 + 34, se_1072, 14 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 86, 0, 0, 0, 0, 255 ); --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );

    pauseAll( SP_dodge, 67 );
    

    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,-1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );   -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100, -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);

    --敵の固定
    setMoveKey( SP_dodge + 32, 1, 52.3, 0.3 , 0 );
    setScaleKey( SP_dodge + 32, 1, 1.41, 1.41 );
    setRotateKey( SP_dodge + 32, 1, 2.5 );
    
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    setMoveKey( SP_dodge + 10,   0,-2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 音 ** --
playSe( spep_0 +12 + 42, 1109 );
playSe( spep_0 +9 + 76, 43 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 86;

------------------------------------------------------
-- ラッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
rush = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --ラッシュ(ef_002)
setEffMoveKey( spep_1 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_1 + 106, rush, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_1 + 106, rush, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush, 0 );
setEffRotateKey( spep_1 + 106, rush, 0 );
setEffAlphaKey( spep_1 + 0, rush, 255 );
setEffAlphaKey( spep_1 + 106, rush, 255 );

rush_e = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --ラッシュエフェクト(ef_003)
setEffMoveKey( spep_1 + 0, rush_e, 0, 0, 0 );
setEffMoveKey( spep_1 + 106, rush_e, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush_e, 1.0, 1.0 );
setEffScaleKey( spep_1 + 106, rush_e, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_e, 0 );
setEffRotateKey( spep_1 + 106, rush_e, 0 );
setEffAlphaKey( spep_1 + 0, rush_e, 255 );
setEffAlphaKey( spep_1 + 106, rush_e, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_1 -3 + 76, 920, 32, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 -3 + 76, ryusen1, 0, 0, 0 );
setEffMoveKey( spep_1 -3 + 108, ryusen1, 0, 0, 0 );

setEffScaleKey( spep_1 -3 + 76, ryusen1, 4.3, 1.12 );
setEffScaleKey( spep_1 -3 + 108, ryusen1, 4.3, 1.12 );

setEffRotateKey( spep_1 -3 + 76, ryusen1, 0 );
setEffRotateKey( spep_1 -3 + 108, ryusen1, 0 );

setEffAlphaKey( spep_1 -3 + 76, ryusen1, 46 );
setEffAlphaKey( spep_1 -3 + 108, ryusen1, 46 );

-- ** エフェクト等 ** --
rush_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --ラッシュ背景(ef_004)
setEffMoveKey( spep_1 + 0, rush_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 106, rush_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 106, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_b, 0 );
setEffRotateKey( spep_1 + 106, rush_b, 0 );
setEffAlphaKey( spep_1 + 0, rush_b, 255 );
setEffAlphaKey( spep_1 + 106, rush_b, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1 -3 + 26, 906, 82, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1 -3 + 26, shuchusen1, 82, 20 );

setEffMoveKey( spep_1 -3 + 26, shuchusen1, 0, 0, 0 );
setEffMoveKey( spep_1 -3 + 108, shuchusen1, 0, 0, 0 );

setEffScaleKey( spep_1 -3 + 26, shuchusen1, 1.5, 1.5 );
setEffScaleKey( spep_1 -3 + 108, shuchusen1, 1.5, 1.5 );

setEffRotateKey( spep_1 -3 + 26, shuchusen1, 0 );
setEffRotateKey( spep_1 -3 + 108, shuchusen1, 0 );

setEffAlphaKey( spep_1 -3 + 26, shuchusen1, 255 );
setEffAlphaKey( spep_1 -3 + 38, shuchusen1, 255 );
setEffAlphaKey( spep_1 -3 + 39, shuchusen1, 0 );

setEffAlphaKey( spep_1 -3 + 71, shuchusen1, 0 );
setEffAlphaKey( spep_1 -3 + 72, shuchusen1, 255 );
setEffAlphaKey( spep_1 -3 + 108, shuchusen1, 255 );

-- ** 書き文字エントリー ** --
ctex = entryEffectLife( spep_1 -3 + 6, 10000, 18, 0x100, -1, 0, 149.8, 180.8 ); --!!
setEffMoveKey( spep_1 -3 + 6, ctex, 149.8, 180.8 , 0 );
setEffMoveKey( spep_1 -3 + 8, ctex, 126.7, 153.6 , 0 );
setEffMoveKey( spep_1 -3 + 10, ctex, 119.7, 153.2 , 0 );
setEffMoveKey( spep_1 -3 + 12, ctex, 126.2, 160.6 , 0 );
setEffMoveKey( spep_1 -3 + 14, ctex, 126.7, 153.6 , 0 );
setEffMoveKey( spep_1 -3 + 16, ctex, 119.7, 153.2 , 0 );
setEffMoveKey( spep_1 -3 + 18, ctex, 126.2, 160.6 , 0 );
setEffMoveKey( spep_1 -3 + 20, ctex, 126.7, 153.6 , 0 );
setEffMoveKey( spep_1 -3 + 22, ctex, 119.7, 153.2 , 0 );
setEffMoveKey( spep_1 -3 + 24, ctex, 126.2, 160.6 , 0 );

setEffScaleKey( spep_1 -3 + 6, ctex, 2.41, 2.41 );
setEffScaleKey( spep_1 -3 + 8, ctex, 1.61, 1.61 );
setEffScaleKey( spep_1 -3 + 24, ctex, 1.61, 1.61 );

setEffRotateKey( spep_1 -3 + 6, ctex, 18 );
setEffRotateKey( spep_1 -3 + 24, ctex, 18 );

setEffAlphaKey( spep_1 -3 + 6, ctex, 255 );
setEffAlphaKey( spep_1 -3 + 24, ctex, 255 );

ctBaki = entryEffectLife( spep_1 -3 + 72, 10020, 22, 0x100, -1, 0, 98, 200.1 ); --バキッ
setEffMoveKey( spep_1 -3 + 72, ctBaki, 98, 200.1 , 0 );
setEffMoveKey( spep_1 -3 + 74, ctBaki, 205.5, 160.2 , 0 );
setEffMoveKey( spep_1 -3 + 76, ctBaki, 146.2, 86.4 , 0 );
setEffMoveKey( spep_1 -3 + 78, ctBaki, 174.3, 117.8 , 0 );
setEffMoveKey( spep_1 -3 + 80, ctBaki, 128.1, 98.9 , 0 );
setEffMoveKey( spep_1 -3 + 82, ctBaki, 164.3, 129.2 , 0 );
setEffMoveKey( spep_1 -3 + 84, ctBaki, 162.2, 123.8 , 0 );
setEffMoveKey( spep_1 -3 + 86, ctBaki, 160.2, 118.4 , 0 );
setEffMoveKey( spep_1 -3 + 88, ctBaki, 162.2, 116.8 , 0 );
setEffMoveKey( spep_1 -3 + 90, ctBaki, 162.1, 115.1 , 0 );
setEffMoveKey( spep_1 -3 + 92, ctBaki, 162.8, 113.5 , 0 );
setEffMoveKey( spep_1 -3 + 94, ctBaki, 162.5, 113.4 , 0 );

setEffScaleKey( spep_1 -3 + 72, ctBaki, 1.32, 1.32 );
setEffScaleKey( spep_1 -3 + 74, ctBaki, 1.49, 1.49 );
setEffScaleKey( spep_1 -3 + 76, ctBaki, 2.05, 2.05 );
setEffScaleKey( spep_1 -3 + 78, ctBaki, 1.8, 1.8 );
setEffScaleKey( spep_1 -3 + 80, ctBaki, 1.8, 1.8 );
setEffScaleKey( spep_1 -3 + 82, ctBaki, 1.72, 1.72 );
setEffScaleKey( spep_1 -3 + 84, ctBaki, 1.76, 1.76 );
setEffScaleKey( spep_1 -3 + 86, ctBaki, 1.8, 1.8 );
setEffScaleKey( spep_1 -3 + 88, ctBaki, 1.81, 1.81 );
setEffScaleKey( spep_1 -3 + 90, ctBaki, 1.83, 1.83 );
setEffScaleKey( spep_1 -3 + 92, ctBaki, 1.84, 1.84 );

setEffRotateKey( spep_1 -3 + 72, ctBaki, 29.9 );
setEffRotateKey( spep_1 -3 + 74, ctBaki, -4.7 );
setEffRotateKey( spep_1 -3 + 76, ctBaki, 10.3 );
setEffRotateKey( spep_1 -3 + 78, ctBaki, 5 );
setEffRotateKey( spep_1 -3 + 80, ctBaki, 15.2 );
setEffRotateKey( spep_1 -3 + 82, ctBaki, 7.6 );
setEffRotateKey( spep_1 -3 + 90, ctBaki, 7.6 );
setEffRotateKey( spep_1 -3 + 92, ctBaki, 7.5 );
setEffRotateKey( spep_1 -3 + 94, ctBaki, 7.6 );

setEffAlphaKey( spep_1 -3 + 72, ctBaki, 255 );
setEffAlphaKey( spep_1 -3 + 86, ctBaki, 255 );
setEffAlphaKey( spep_1 -3 + 88, ctBaki, 170 );
setEffAlphaKey( spep_1 -3 + 90, ctBaki, 85 );
setEffAlphaKey( spep_1 -3 + 92, ctBaki, 0 );
setEffAlphaKey( spep_1 -3 + 94, ctBaki, 0 );

-- ** 敵の動き ** --
setDisp( spep_1 -3 + 3, 1, 1 );
setDisp( spep_1 -3 + 96, 1, 1 );
changeAnime( spep_1 -3 + 3, 1, 101 );
changeAnime( spep_1 -3 + 28, 1, 108 );
changeAnime( spep_1 -3 + 82, 1, 106 );

setMoveKey( spep_1 -3 + 3, 1, 82.9, -58.3 , 0 );
--setMoveKey( spep_1 -3 + 2, 1, 83, -58.4 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 83, -58.4 , 0 );
setMoveKey( spep_1 -3 + 27, 1, 82.5, -64.1 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 86.9, -22.7 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 91.2, -11 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 97.3, -22.4 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 84.4, -11.2 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 95.5, -8.9 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 92.1, -21 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 98.8, -22.2 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 95, -17.1 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 98.6, -18.1 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 99.8, -17.6 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 100.9, -17.1 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 102, -16.5 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 103.2, -16.1 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 104.3, -15.6 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 105.4, -15 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 106.6, -14.5 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 107.7, -14 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 108.8, -13.5 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 110, -13 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 111.1, -12.5 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 112.2, -12 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 113.4, -11.5 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 197.3, -6.9 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 208.8, -10 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 205.6, -11 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 227.2, 4.1 , 0 );
setMoveKey( spep_1 -3 + 81, 1, 224.6, -4.9 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 238.7, 1 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 560.7, -9.9 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 817.6, -18.9 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 999, -20.8 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 1107.8, -21.7 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 1144.1, -21.5 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 1144.1, -20.9 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 1144.1, -20.3 , 0 );

setScaleKey( spep_1 -3 + 3, 1, 1.69, 1.69 );
setScaleKey( spep_1 -3 + 27, 1, 1.69, 1.69 );
setScaleKey( spep_1 -3 + 28, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 44, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 46, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 66, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 68, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 70, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 72, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 74, 1, 1.46, 1.46 );
setScaleKey( spep_1 -3 + 76, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 78, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 81, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 82, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 96, 1, 1.42, 1.42 );

setRotateKey( spep_1 -3 + 3, 1, 0 );
setRotateKey( spep_1 -3 + 28, 1, 0 );
setRotateKey( spep_1 -3 + 30, 1, -0.2 );
setRotateKey( spep_1 -3 + 32, 1, -0.4 );
setRotateKey( spep_1 -3 + 34, 1, -0.6 );
setRotateKey( spep_1 -3 + 36, 1, -0.8 );
setRotateKey( spep_1 -3 + 38, 1, -1.3 );
setRotateKey( spep_1 -3 + 40, 1, -1.9 );
setRotateKey( spep_1 -3 + 42, 1, -2.4 );
setRotateKey( spep_1 -3 + 44, 1, -3 );
setRotateKey( spep_1 -3 + 46, 1, -3.5 );
setRotateKey( spep_1 -3 + 48, 1, -4 );
setRotateKey( spep_1 -3 + 50, 1, -4.6 );
setRotateKey( spep_1 -3 + 52, 1, -5.1 );
setRotateKey( spep_1 -3 + 54, 1, -5.7 );
setRotateKey( spep_1 -3 + 56, 1, -6.2 );
setRotateKey( spep_1 -3 + 58, 1, -6.8 );
setRotateKey( spep_1 -3 + 60, 1, -7.3 );
setRotateKey( spep_1 -3 + 62, 1, -7.8 );
setRotateKey( spep_1 -3 + 64, 1, -8.4 );
setRotateKey( spep_1 -3 + 66, 1, -8.9 );
setRotateKey( spep_1 -3 + 68, 1, -9.5 );
setRotateKey( spep_1 -3 + 70, 1, -10 );
setRotateKey( spep_1 -3 + 72, 1, -16 );
setRotateKey( spep_1 -3 + 74, 1, -18.4 );
setRotateKey( spep_1 -3 + 76, 1, -20.8 );
setRotateKey( spep_1 -3 + 78, 1, -23.2 );
setRotateKey( spep_1 -3 + 81, 1, -25.6 );
setRotateKey( spep_1 -3 + 82, 1, -28 );
setRotateKey( spep_1 -3 + 84, 1, -9.3 );
setRotateKey( spep_1 -3 + 86, 1, 5.3 );
setRotateKey( spep_1 -3 + 88, 1, 15.7 );
setRotateKey( spep_1 -3 + 90, 1, 21.9 );
setRotateKey( spep_1 -3 + 92, 1, 24 );
setRotateKey( spep_1 -3 + 96, 1, 24 );

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 229.5 );     -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 106, 0, 0, 0, 0, 255 ); --黒　背景

-- ** 音 ** --
playSe( spep_1 +10 + 14, 1006 );
playSe( spep_1 +10 + 14, 1009 );
playSe( spep_1 +11 + 58, 1120 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 106;

------------------------------------------------------
-- 気溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --気溜め(ef_005)
setEffMoveKey( spep_2 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_2 + 134, tame, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 134, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 134, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 134, tame, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_2 + 34, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_2 + 34, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_2 + 46, 190006, 72, 0x100, -1, 0, 120, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_2 + 46,  ctgogo,  120,  510);
setEffMoveKey(  spep_2 + 118,  ctgogo,  120,  510);

setEffAlphaKey( spep_2 + 46, ctgogo, 0 );
setEffAlphaKey( spep_2 + 47, ctgogo, 255 );
setEffAlphaKey( spep_2 + 48, ctgogo, 255 );
setEffAlphaKey( spep_2 + 112, ctgogo, 255 );
setEffAlphaKey( spep_2 + 114, ctgogo, 191 );
setEffAlphaKey( spep_2 + 116, ctgogo, 112 );
setEffAlphaKey( spep_2 + 118, ctgogo, 64 );

setEffRotateKey(  spep_2 + 46,  ctgogo,  0);
setEffRotateKey(  spep_2 + 118,  ctgogo,  0);

setEffScaleKey(  spep_2 + 46,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 + 108,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 + 118,  ctgogo, 1.07, 1.07 );

-- ** 白フェード ** --
entryFade( spep_2 -2 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
entryFade( spep_2 + 118, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 134, 0, 0, 0, 0, 255 ); --黒　背景

-- ** 音 ** --
playSe( spep_2 + 13, 1035 );
playSe( spep_2 + 13, 09 );
setSeVolume( spep_2 + 13, 09, 79 );
se_1044 = playSe( spep_2 + 13, 1044 );
setSeVolume( spep_2 + 13, 1044, 63 );
stopSe( spep_2 + 132, se_1044, 0 );
se_1176 = playSe( spep_2 + 13, 1176 );
setSeVolume( spep_2 + 13, 1176, 79 );
playSe( spep_2 +12 + 23, 1018 );
playSe( spep_2 + 36, 1036 );
playSe( spep_2 + 60, 1036 );
playSe( spep_2 + 84, 1036 );
playSe( spep_2 + 108, 1036 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 134;

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
stopSe( spep_3 + 0, se_1176, 0 );
playSe( spep_3 + 0, 1035 );
se_1037 = playSe( spep_3 + 86, 1037 );
setSeVolume( spep_3 + 86, 1037, 89 );
se_1176 = playSe( spep_3 + 86, 1176 );
setSeVolume( spep_3 + 86, 1176, 63 );
playSe( spep_3 + 86, 1020 );
playSe( spep_3 + 86, 1036 );
setSeVolume( spep_3 + 86, 1036, 71 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
-- かめはめ波 構え～放つ
------------------------------------------------------
-- ** エフェクト等 ** --
kamae = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --かめはめ波 構え～放つ(ef_006)
setEffMoveKey( spep_4 + 0, kamae, 0, 0, 0 );
setEffMoveKey( spep_4 + 126, kamae, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_4 + 126, kamae, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kamae, 0 );
setEffRotateKey( spep_4 + 126, kamae, 0 );
setEffAlphaKey( spep_4 + 0, kamae, 255 );
setEffAlphaKey( spep_4 + 126, kamae, 255 );

-- ** 音 ** --
playSe( spep_4 + 16, 1036 );
setSeVolume( spep_4 + 16, 1036, 71 );
playSe( spep_4 + 22, 1020 );
playSe( spep_4 + 40, 1036 );
setSeVolume( spep_4 + 40, 1036, 71 );
playSe( spep_4 + 52, 1020 );
playSe( spep_4 + 63, 1036 );
setSeVolume( spep_4 + 63, 1036, 71 );
playSe( spep_4 + 87, 1022 );
setSeVolume( spep_4 + 87, 1022, 112 );
stopSe( spep_4 + 87, se_1176, 0 );
stopSe( spep_4 + 90, se_1037, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 126, 0, 0, 0, 0, 255 ); --黒　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 126;

------------------------------------------------------
-- 敵に向かって飛んでいく
------------------------------------------------------
-- ** エフェクト等 ** --
hassha_f = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --敵に向かって飛んでいく(ef_007)
setEffMoveKey( spep_5 + 0, hassha_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 56, hassha_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hassha_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, hassha_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hassha_f, 0 );
setEffRotateKey( spep_5 + 56, hassha_f, 0 );
setEffAlphaKey( spep_5 + 0, hassha_f, 255 );
setEffAlphaKey( spep_5 + 56, hassha_f, 255 );

hassha_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --敵に向かって飛んでいく(ef_008)
setEffMoveKey( spep_5 + 0, hassha_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 56, hassha_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hassha_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, hassha_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hassha_b, 0 );
setEffRotateKey( spep_5 + 56, hassha_b, 0 );
setEffAlphaKey( spep_5 + 0, hassha_b, 255 );
setEffAlphaKey( spep_5 + 56, hassha_b, 255 );

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_5 -3 + 3, 921, 55, 0x80, -1, 0, -64.9, 2.1 );

setEffMoveKey( spep_5 -3 + 3, ryusen2, -64.9, 2.1 , 0 );
setEffMoveKey( spep_5 -3 + 58, ryusen2, -64.9, 2.1 , 0 );

setEffScaleKey( spep_5 -3 + 0, ryusen2, 1.5, 1.5 );
setEffScaleKey( spep_5 -3 + 58, ryusen2, 1.5, 1.5 );

setEffRotateKey( spep_5 -3 + 0, ryusen2, -18 );
setEffRotateKey( spep_5 -3 + 58, ryusen2, -18 );

setEffAlphaKey( spep_5 -3 + 0, ryusen2, 255 );
setEffAlphaKey( spep_5 -3 + 58, ryusen2, 255 );

-- ** 敵の動き ** --
setDisp( spep_5 -3 + 22, 1, 1 );
setDisp( spep_5 -3 + 60, 1, 0 );
changeAnime( spep_5 -3 + 22, 1, 106 );

setMoveKey( spep_5 -3 + 22, 1, 389.8, 141.4 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 387.5, 147.3 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 369.1, 141.3 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 366.3, 147.1 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 351.4, 144.1 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 336.2, 141 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 332.7, 146.9 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 313, 140.8 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 309, 146.8 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 279.2, 133.7 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 264.6, 132.4 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 237, 121.8 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 208.7, 110.9 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 191.4, 108.7 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 157.4, 94.3 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 138.4, 91.5 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 102.5, 76.5 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 81.9, 73.3 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 44.8, 57.6 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 44.8, 57.6 , 0 );

setScaleKey( spep_5 -3 + 22, 1, 0.29, 0.29 );
setScaleKey( spep_5 -3 + 24, 1, 0.31, 0.31 );
setScaleKey( spep_5 -3 + 26, 1, 0.34, 0.34 );
setScaleKey( spep_5 -3 + 28, 1, 0.36, 0.36 );
setScaleKey( spep_5 -3 + 30, 1, 0.39, 0.39 );
setScaleKey( spep_5 -3 + 32, 1, 0.42, 0.42 );
setScaleKey( spep_5 -3 + 34, 1, 0.44, 0.44 );
setScaleKey( spep_5 -3 + 36, 1, 0.47, 0.47 );
setScaleKey( spep_5 -3 + 38, 1, 0.5, 0.5 );
setScaleKey( spep_5 -3 + 40, 1, 0.61, 0.61 );
setScaleKey( spep_5 -3 + 42, 1, 0.73, 0.73 );
setScaleKey( spep_5 -3 + 44, 1, 0.84, 0.84 );
setScaleKey( spep_5 -3 + 46, 1, 0.97, 0.97 );
setScaleKey( spep_5 -3 + 48, 1, 1.09, 1.09 );
setScaleKey( spep_5 -3 + 50, 1, 1.22, 1.22 );
setScaleKey( spep_5 -3 + 52, 1, 1.36, 1.36 );
setScaleKey( spep_5 -3 + 54, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 56, 1, 1.64, 1.64 );
setScaleKey( spep_5 -3 + 58, 1, 1.79, 1.79 );
setScaleKey( spep_5 -3 + 60, 1, 1.79, 1.79 );

setRotateKey( spep_5 -3 + 22, 1, 0 );
setRotateKey( spep_5 -3 + 58, 1, 0 );
setRotateKey( spep_5 -3 + 60, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 56, 0, 0, 0, 0, 255 ); --黒　背景

-- ** 音 ** --
playSe( spep_5 + 52, 1023 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;

------------------------------------------------------
-- ギャン
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_6 + 0, SP_09, 0x100, -1, 0, 0, 0 );  --ギャン(ef_009)
setEffMoveKey( spep_6 + 0, hit, 0, 0, 0 );
setEffMoveKey( spep_6 + 56, hit, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_6 + 56, hit, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit, 0 );
setEffRotateKey( spep_6 + 56, hit, 0 );
setEffAlphaKey( spep_6 + 0, hit, 255 );
setEffAlphaKey( spep_6 + 56, hit, 255 );

-- ** 書き文字エントリー ** --
ctGyan = entryEffectLife( spep_6 -3 + 3, 10006, 55, 0x100, -1, 0, 7.1, 306.8 ); --ギャンッ
setEffMoveKey( spep_6 -3 + 3, ctGyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_6 -3 + 58, ctGyan, 7.1, 306.8 , 0 );

a = 3.5;

setEffScaleKey( spep_6 -3 + 3, ctGyan, 0.6 * a, 0.6 * a );
--setEffScaleKey( spep_6 -3 + 2, ctGyan, 0.7, 0.7 );
setEffScaleKey( spep_6 -3 + 4, ctGyan, 0.8 * a, 0.8 * a );
setEffScaleKey( spep_6 -3 + 6, ctGyan, 0.9 * a, 0.9 * a );
setEffScaleKey( spep_6 -3 + 8, ctGyan, 1 * a, 1 * a );
setEffScaleKey( spep_6 -3 + 10, ctGyan, 1.01 * a, 1.01 * a );
setEffScaleKey( spep_6 -3 + 12, ctGyan, 1.02 * a, 1.02 * a );
setEffScaleKey( spep_6 -3 + 14, ctGyan, 1.02 * a, 1.02 * a );
setEffScaleKey( spep_6 -3 + 16, ctGyan, 1.03 * a, 1.03 * a );
setEffScaleKey( spep_6 -3 + 18, ctGyan, 1.04 * a, 1.04 * a );
setEffScaleKey( spep_6 -3 + 20, ctGyan, 1.05 * a, 1.05 * a );
setEffScaleKey( spep_6 -3 + 22, ctGyan, 1.06 * a, 1.06 * a );
setEffScaleKey( spep_6 -3 + 24, ctGyan, 1.06 * a, 1.06 * a );
setEffScaleKey( spep_6 -3 + 26, ctGyan, 1.07 * a, 1.07 * a );
setEffScaleKey( spep_6 -3 + 28, ctGyan, 1.08 * a, 1.08 * a );
setEffScaleKey( spep_6 -3 + 30, ctGyan, 1.09 * a, 1.09 * a );
setEffScaleKey( spep_6 -3 + 32, ctGyan, 1.1 * a, 1.1 * a );
setEffScaleKey( spep_6 -3 + 34, ctGyan, 1.1 * a, 1.1 * a );
setEffScaleKey( spep_6 -3 + 36, ctGyan, 1.11 * a, 1.11 * a );
setEffScaleKey( spep_6 -3 + 38, ctGyan, 1.12 * a, 1.12 * a );
setEffScaleKey( spep_6 -3 + 40, ctGyan, 1.13 * a, 1.13 * a );
setEffScaleKey( spep_6 -3 + 42, ctGyan, 1.13 * a, 1.13 * a );
setEffScaleKey( spep_6 -3 + 44, ctGyan, 1.14 * a, 1.14 * a );
setEffScaleKey( spep_6 -3 + 46, ctGyan, 1.15 * a, 1.15 * a );
setEffScaleKey( spep_6 -3 + 48, ctGyan, 1.16 * a, 1.16 * a );
setEffScaleKey( spep_6 -3 + 50, ctGyan, 1.17 * a, 1.17 * a );
setEffScaleKey( spep_6 -3 + 52, ctGyan, 1.17 * a, 1.17 * a );
setEffScaleKey( spep_6 -3 + 54, ctGyan, 1.18 * a, 1.18 * a );
setEffScaleKey( spep_6 -3 + 56, ctGyan, 1.19 * a, 1.19 * a );
setEffScaleKey( spep_6 -3 + 58, ctGyan, 1.2 * a, 1.2 * a );

setEffRotateKey( spep_6 -3 + 3, ctGyan, -5 );
setEffRotateKey( spep_6 -3 + 58, ctGyan, -5 );

setEffAlphaKey( spep_6 -3 + 3, ctGyan, 255 );
setEffAlphaKey( spep_6 -3 + 58, ctGyan, 255 );

-- ** 白フェード ** --
entryFade( spep_6 + 16, 38, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 56, 0, 0, 0, 0, 255 ); --黒　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 56;

------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 );  --爆発(ef_010)
setEffMoveKey( spep_7 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_7 + 176, finish, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_7 + 176, finish, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish, 0 );
setEffRotateKey( spep_7 + 176, finish, 0 );
setEffAlphaKey( spep_7 + 0, finish, 255 );
setEffAlphaKey( spep_7 + 176, finish, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_7 -3 + 3, 906, 175, 0x100, -1, 0, 900.2 - 250, 63 );
setEffShake( spep_7 -3 + 3, shuchusen2, 175, 20 );

b = -250;

setEffMoveKey( spep_7 -3 + 3, shuchusen2, 900.2 + b, 63 , 0 );
--setEffMoveKey( spep_7 -3 + 2, shuchusen2, 900.7, 74.4 , 0 );
setEffMoveKey( spep_7 -3 + 4, shuchusen2, 906.3 + b, 72 , 0 );
setEffMoveKey( spep_7 -3 + 6, shuchusen2, 911.9 + b, 69.8 , 0 );
setEffMoveKey( spep_7 -3 + 8, shuchusen2, 917.5 + b, 67.6 , 0 );
setEffMoveKey( spep_7 -3 + 10, shuchusen2, 923 + b, 65.2 , 0 );
setEffMoveKey( spep_7 -3 + 12, shuchusen2, 924.7 + b, 69.7 , 0 );
setEffMoveKey( spep_7 -3 + 14, shuchusen2, 926.5 + b, 74.1 , 0 );
setEffMoveKey( spep_7 -3 + 16, shuchusen2, 928.2 + b, 78.6 , 0 );
setEffMoveKey( spep_7 -3 + 18, shuchusen2, 933.2 + b, 77.7 , 0 );
setEffMoveKey( spep_7 -3 + 20, shuchusen2, 938 + b, 76.9 , 0 );
setEffMoveKey( spep_7 -3 + 22, shuchusen2, 834.8 + b, 50.6 , 0 );
setEffMoveKey( spep_7 -3 + 24, shuchusen2, 731.5 + b, 24.3 , 0 );
setEffMoveKey( spep_7 -3 + 26, shuchusen2, 628.2 + b, -2 , 0 );
setEffMoveKey( spep_7 -3 + 28, shuchusen2, 518.5 + b, 14.7 , 0 );
setEffMoveKey( spep_7 -3 + 30, shuchusen2, 415.3 + b, -21 , 0 );
setEffMoveKey( spep_7 -3 + 32, shuchusen2, 414.7 + b, -19.7 , 0 );
setEffMoveKey( spep_7 -3 + 34, shuchusen2, 414.1 + b, -18.3 , 0 );
setEffMoveKey( spep_7 -3 + 36, shuchusen2, 413.5 + b, -16.9 , 0 );
setEffMoveKey( spep_7 -3 + 38, shuchusen2, 413.8 + b, -17.7 , 0 );
setEffMoveKey( spep_7 -3 + 40, shuchusen2, 414 + b, -18.4 , 0 );
setEffMoveKey( spep_7 -3 + 42, shuchusen2, 414.2 + b, -19.2 , 0 );
setEffMoveKey( spep_7 -3 + 44, shuchusen2, 414.4 + b, -19.9 , 0 );
setEffMoveKey( spep_7 -3 + 46, shuchusen2, 414.6 + b, -20.7 , 0 );
setEffMoveKey( spep_7 -3 + 48, shuchusen2, 414.9 + b, -21.4 , 0 );
setEffMoveKey( spep_7 -3 + 50, shuchusen2, 415.1 + b, -22.1 , 0 );
setEffMoveKey( spep_7 -3 + 52, shuchusen2, 415.3 + b, -22.9 , 0 );
setEffMoveKey( spep_7 -3 + 54, shuchusen2, 415 + b, -22.3 , 0 );
setEffMoveKey( spep_7 -3 + 56, shuchusen2, 414.7 + b, -21.8 , 0 );
setEffMoveKey( spep_7 -3 + 58, shuchusen2, 414.4 + b, -21.3 , 0 );
setEffMoveKey( spep_7 -3 + 60, shuchusen2, 414.1 + b, -20.8 , 0 );
setEffMoveKey( spep_7 -3 + 62, shuchusen2, 413.8 + b, -20.3 , 0 );
setEffMoveKey( spep_7 -3 + 64, shuchusen2, 414.2 + b, -21 , 0 );
setEffMoveKey( spep_7 -3 + 66, shuchusen2, 414.7 + b, -21.7 , 0 );
setEffMoveKey( spep_7 -3 + 68, shuchusen2, 415.1 + b, -22.5 , 0 );
setEffMoveKey( spep_7 -3 + 70, shuchusen2, 415.5 + b, -23.3 , 0 );
setEffMoveKey( spep_7 -3 + 72, shuchusen2, 415.4 + b, -23 , 0 );
setEffMoveKey( spep_7 -3 + 74, shuchusen2, 415.3 + b, -22.8 , 0 );
setEffMoveKey( spep_7 -3 + 76, shuchusen2, 415.1 + b, -22.5 , 0 );
setEffMoveKey( spep_7 -3 + 78, shuchusen2, 415 + b, -22.3 , 0 );
setEffMoveKey( spep_7 -3 + 80, shuchusen2, 414.9 + b, -22 , 0 );
setEffMoveKey( spep_7 -3 + 82, shuchusen2, 414.7 + b, -21.8 , 0 );
setEffMoveKey( spep_7 -3 + 84, shuchusen2, 414.6 + b, -21.5 , 0 );
setEffMoveKey( spep_7 -3 + 118, shuchusen2, 414.6 + b, -21.5 , 0 );
setEffMoveKey( spep_7 -3 + 120, shuchusen2, 414.6 + b, -21.6 , 0 );
setEffMoveKey( spep_7 -3 + 122, shuchusen2, 414.6 + b, -21.2 , 0 );
setEffMoveKey( spep_7 -3 + 178, shuchusen2, 414.6 + b, -21.2 , 0 );

c = 1.5;

setEffScaleKey( spep_7 -3 + 3, shuchusen2, 4.52 * c, 4.72 * c );
--setEffScaleKey( spep_7 -3 + 2, shuchusen2, 4.55, 4.75 );
setEffScaleKey( spep_7 -3 + 4, shuchusen2, 4.58 * c, 4.78 * c );
setEffScaleKey( spep_7 -3 + 6, shuchusen2, 4.61 * c, 4.81 * c );
setEffScaleKey( spep_7 -3 + 8, shuchusen2, 4.64 * c, 4.84 * c );
setEffScaleKey( spep_7 -3 + 10, shuchusen2, 4.67 * c, 4.87 * c );
setEffScaleKey( spep_7 -3 + 12, shuchusen2, 4.7 * c, 4.9 * c );
setEffScaleKey( spep_7 -3 + 14, shuchusen2, 4.73 * c, 4.93 * c );
setEffScaleKey( spep_7 -3 + 16, shuchusen2, 4.75 * c, 4.96 * c );
setEffScaleKey( spep_7 -3 + 18, shuchusen2, 4.78 * c, 4.99 * c );
setEffScaleKey( spep_7 -3 + 20, shuchusen2, 4.81 * c, 5.02 * c );
setEffScaleKey( spep_7 -3 + 22, shuchusen2, 4.14 * c, 4.31 * c );
setEffScaleKey( spep_7 -3 + 24, shuchusen2, 3.46 * c, 3.61 * c );
setEffScaleKey( spep_7 -3 + 26, shuchusen2, 2.79 * c, 2.91 * c );
setEffScaleKey( spep_7 -3 + 28, shuchusen2, 2.11 * c, 2.2 * c );
setEffScaleKey( spep_7 -3 + 30, shuchusen2, 1.44 * c, 1.5 * c );
setEffScaleKey( spep_7 -3 + 178, shuchusen2, 1.44 * c, 1.5 * c );

setEffRotateKey( spep_7 -3 + 3, shuchusen2, 0 );
setEffRotateKey( spep_7 -3 + 178, shuchusen2, 0 );

setEffAlphaKey( spep_7 -3 + 3, shuchusen2, 255 );
setEffAlphaKey( spep_7 -3 + 178, shuchusen2, 255 );

-- ** 白フェード ** --
entryFade( spep_7 + 0, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_7 + 4, 1159 );
setSeVolume( spep_7 + 4, 1159, 56 );
playSe( spep_7 + 4, 1024 );
playSe( spep_7 + 55, 1044 );
setSeVolume( spep_7 + 55, 1044, 56 );
setSeVolume( spep_7 + 120, 1044, 56.00 );
setSeVolume( spep_7 + 121, 1044, 55.24 );
setSeVolume( spep_7 + 122, 1044, 54.48 );
setSeVolume( spep_7 + 123, 1044, 53.72 );
setSeVolume( spep_7 + 124, 1044, 52.96 );
setSeVolume( spep_7 + 125, 1044, 52.20 );
setSeVolume( spep_7 + 126, 1044, 51.44 );
setSeVolume( spep_7 + 127, 1044, 50.68 );
setSeVolume( spep_7 + 128, 1044, 49.92 );
setSeVolume( spep_7 + 129, 1044, 49.16 );
setSeVolume( spep_7 + 130, 1044, 48.40 );
setSeVolume( spep_7 + 131, 1044, 47.64 );
setSeVolume( spep_7 + 132, 1044, 46.88 );
setSeVolume( spep_7 + 133, 1044, 46.12 );
setSeVolume( spep_7 + 134, 1044, 45.36 );
setSeVolume( spep_7 + 135, 1044, 44.60 );
setSeVolume( spep_7 + 136, 1044, 43.84 );
setSeVolume( spep_7 + 137, 1044, 43.08 );
setSeVolume( spep_7 + 138, 1044, 42.32 );
setSeVolume( spep_7 + 139, 1044, 41.56 );
setSeVolume( spep_7 + 140, 1044, 40.80 );
setSeVolume( spep_7 + 141, 1044, 40.04 );
setSeVolume( spep_7 + 142, 1044, 39.28 );
setSeVolume( spep_7 + 143, 1044, 38.52 );
setSeVolume( spep_7 + 144, 1044, 37.76 );
setSeVolume( spep_7 + 145, 1044, 37.00 );
setSeVolume( spep_7 + 146, 1044, 36.24 );
setSeVolume( spep_7 + 147, 1044, 35.48 );
setSeVolume( spep_7 + 148, 1044, 34.72 );
setSeVolume( spep_7 + 149, 1044, 33.96 );
setSeVolume( spep_7 + 150, 1044, 33.20 );
setSeVolume( spep_7 + 151, 1044, 32.44 );
setSeVolume( spep_7 + 152, 1044, 31.68 );
setSeVolume( spep_7 + 153, 1044, 30.92 );
setSeVolume( spep_7 + 154, 1044, 30.16 );
setSeVolume( spep_7 + 155, 1044, 29.40 );
setSeVolume( spep_7 + 156, 1044, 28.64 );
setSeVolume( spep_7 + 157, 1044, 27.88 );
setSeVolume( spep_7 + 158, 1044, 27.12 );
setSeVolume( spep_7 + 159, 1044, 26.36 );
setSeVolume( spep_7 + 160, 1044, 25.60 );
setSeVolume( spep_7 + 161, 1044, 24.84 );
setSeVolume( spep_7 + 162, 1044, 24.08 );
setSeVolume( spep_7 + 163, 1044, 23.32 );
setSeVolume( spep_7 + 164, 1044, 22.56 );
setSeVolume( spep_7 + 165, 1044, 21.80 );
setSeVolume( spep_7 + 166, 1044, 21.04 );
setSeVolume( spep_7 + 167, 1044, 20.28 );
setSeVolume( spep_7 + 168, 1044, 19.52 );
setSeVolume( spep_7 + 169, 1044, 18.76 );
setSeVolume( spep_7 + 170, 1044, 18.00 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 175, 0, 0, 0, 0, 255 ); --黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 20 );
endPhase( spep_7 + 170 );
else 

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 崖の上で敵と対峙
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
idling = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --崖の上で敵と対峙(ef_001)
setEffMoveKey( spep_0 + 0, idling, 0, 0, 0 );
setEffMoveKey( spep_0 + 86, idling, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, idling, 1.0, 1.0 );
setEffScaleKey( spep_0 + 86, idling, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, idling, 0 );
setEffRotateKey( spep_0 + 86, idling, 0 );
setEffAlphaKey( spep_0 + 0, idling, 255 );
setEffAlphaKey( spep_0 + 86, idling, 255 );

-- ** 敵の動き ** --
setDisp( spep_0 -3 + 3, 1, 1 );
setDisp( spep_0 -3 + 50, 1, 0 );
changeAnime( spep_0 -3 + 3, 1, 102 );

d = -40;
e = 10;

setMoveKey( spep_0 -3 + 3, 1, 198.9 + e, -256.7 + d, 0 );
--setMoveKey( spep_0 -3 + 2, 1, 198.9, -257.6 , 0 );
setMoveKey( spep_0 -3 + 4, 1, 198.9 + e, -258.5 + d, 0 );
setMoveKey( spep_0 -3 + 6, 1, 198.9 + e, -259.4 + d, 0 );
setMoveKey( spep_0 -3 + 8, 1, 198.9 + e, -260.4 + d, 0 );
setMoveKey( spep_0 -3 + 10, 1, 198.9 + e, -261.3 + d, 0 );
setMoveKey( spep_0 -3 + 12, 1, 198.9 + e, -262.3 + d, 0 );
setMoveKey( spep_0 -3 + 14, 1, 198.9 + e, -263.3 + d, 0 );
setMoveKey( spep_0 -3 + 16, 1, 198.9 + e, -264.2 + d, 0 );
setMoveKey( spep_0 -3 + 18, 1, 198.9 + e, -265.2 + d, 0 );
setMoveKey( spep_0 -3 + 20, 1, 198.9 + e, -266.2 + d, 0 );
setMoveKey( spep_0 -3 + 22, 1, 198.9 + e, -267.2 + d, 0 );
setMoveKey( spep_0 -3 + 24, 1, 198.9 + e, -268.2 + d, 0 );
setMoveKey( spep_0 -3 + 26, 1, 198.9 + e, -269.3 + d, 0 );
setMoveKey( spep_0 -3 + 28, 1, 198.9 + e, -270.3 + d, 0 );
setMoveKey( spep_0 -3 + 30, 1, 198.9 + e, -271.3 + d, 0 );
setMoveKey( spep_0 -3 + 32, 1, 198.9 + e, -272.4 + d, 0 );
setMoveKey( spep_0 -3 + 34, 1, 198.9 + e, -273.4 + d, 0 );
setMoveKey( spep_0 -3 + 36, 1, 198.9 + e, -274.5 + d, 0 );
setMoveKey( spep_0 -3 + 38, 1, 217.7 + e, -298 + d, 0 );
setMoveKey( spep_0 -3 + 40, 1, 274 + e, -368.4 + d, 0 );
setMoveKey( spep_0 -3 + 42, 1, 367.9 + e, -485.8 + d, 0 );
setMoveKey( spep_0 -3 + 44, 1, 499.4 + e, -650 + d, 0 );
setMoveKey( spep_0 -3 + 46, 1, 668.5 + e, -861.3 + d, 0 );
setMoveKey( spep_0 -3 + 48, 1, 875 + e, -1119.4 + d, 0 );
setMoveKey( spep_0 -3 + 50, 1, 1119.2 + e, -1424.4 + d, 0 );

setScaleKey( spep_0 -3 + 3, 1, 2.9, 2.9 );
setScaleKey( spep_0 -3 + 4, 1, 2.9, 2.9 );
setScaleKey( spep_0 -3 + 5, 1, 2.9, 2.9 );
setScaleKey( spep_0 -3 + 6, 1, 2.9, 2.9 );
setScaleKey( spep_0 -3 + 7, 1, 2.9, 2.9 );
setScaleKey( spep_0 -3 + 8, 1, 2.9, 2.9 );
setScaleKey( spep_0 -3 + 9, 1, 2.9, 2.9 );
setScaleKey( spep_0 -3 + 36, 1, 2.9, 2.9 );
setScaleKey( spep_0 -3 + 38, 1, 2.99, 2.99 );
setScaleKey( spep_0 -3 + 40, 1, 3.28, 3.28 );
setScaleKey( spep_0 -3 + 42, 1, 3.75, 3.75 );
setScaleKey( spep_0 -3 + 44, 1, 4.41, 4.41 );
setScaleKey( spep_0 -3 + 46, 1, 5.27, 5.27 );
setScaleKey( spep_0 -3 + 48, 1, 6.31, 6.31 );
setScaleKey( spep_0 -3 + 50, 1, 7.54, 7.54 );

setRotateKey( spep_0 -3 + 3, 1, 0 );
setRotateKey( spep_0 -3 + 4, 1, 0 );
setRotateKey( spep_0 -3 + 5, 1, 0 );
setRotateKey( spep_0 -3 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 7, 1, 0 );
setRotateKey( spep_0 -3 + 8, 1, 0 );
setRotateKey( spep_0 -3 + 9, 1, 0 );
setRotateKey( spep_0 -3 + 50, 1, 0 );

-- ** 音 ** --
se_1072 = playSe( spep_0 + 0, 1072 );
setSeVolume( spep_0 + 0, 1072, 0 );
setSeVolume( spep_0 + 1, 1072, 8.54545454545454 );
setSeVolume( spep_0 + 2, 1072, 17.0909090909091 );
setSeVolume( spep_0 + 3, 1072, 25.6363636363636 );
setSeVolume( spep_0 + 4, 1072, 34.1818181818182 );
setSeVolume( spep_0 + 5, 1072, 42.7272727272727 );
setSeVolume( spep_0 + 6, 1072, 51.2727272727273 );
setSeVolume( spep_0 + 7, 1072, 59.8181818181818 );
setSeVolume( spep_0 + 8, 1072, 68.3636363636364 );
setSeVolume( spep_0 + 9, 1072, 76.9090909090909 );
setSeVolume( spep_0 + 10, 1072, 85.4545454545455 );
setSeVolume( spep_0 + 11, 1072, 94 );
setSeVolume( spep_0 + 12, 1072, 102.545454545455 );
setSeVolume( spep_0 + 13, 1072, 111.090909090909 );
setSeVolume( spep_0 + 14, 1072, 119.636363636364 );
setSeVolume( spep_0 + 15, 1072, 128.181818181818 );
setSeVolume( spep_0 + 16, 1072, 136.727272727273 );
setSeVolume( spep_0 + 17, 1072, 145.272727272727 );
setSeVolume( spep_0 + 18, 1072, 153.818181818182 );
setSeVolume( spep_0 + 19, 1072, 162.363636363636 );
setSeVolume( spep_0 + 20, 1072, 170.909090909091 );
setSeVolume( spep_0 + 21, 1072, 179.454545454545 );
setSeVolume( spep_0 + 22, 1072, 188 );
setSeVolume( spep_0 + 23, 1072, 196.545454545455 );
setSeVolume( spep_0 + 24, 1072, 205.090909090909 );
setSeVolume( spep_0 + 25, 1072, 213.636363636364 );
setSeVolume( spep_0 + 26, 1072, 222.181818181818 );
setSeVolume( spep_0 + 27, 1072, 230.727272727273 );
setSeVolume( spep_0 + 28, 1072, 239.272727272727 );
setSeVolume( spep_0 + 29, 1072, 247.818181818182 );
setSeVolume( spep_0 + 30, 1072, 256.363636363636 );
setSeVolume( spep_0 + 31, 1072, 264.909090909091 );
setSeVolume( spep_0 + 32, 1072, 273.454545454545 );
setSeVolume( spep_0 + 33, 1072, 282 );
stopSe( spep_0 + 34, se_1072, 14 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 86, 0, 0, 0, 0, 255 ); --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );

    pauseAll( SP_dodge, 67 );
    

    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,-1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );   -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100, -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);

    --敵の固定
    setMoveKey( SP_dodge + 32, 1, 52.3, 0.3 , 0 );
    setScaleKey( SP_dodge + 32, 1, 1.41, 1.41 );
    setRotateKey( SP_dodge + 32, 1, 2.5 );
    
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    setMoveKey( SP_dodge + 10,   0,-2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 音 ** --
playSe( spep_0 +12 + 42, 1109 );
playSe( spep_0 +9 + 76, 43 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 86;

------------------------------------------------------
-- ラッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
rush = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --ラッシュ(ef_002)
setEffMoveKey( spep_1 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_1 + 106, rush, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_1 + 106, rush, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush, 0 );
setEffRotateKey( spep_1 + 106, rush, 0 );
setEffAlphaKey( spep_1 + 0, rush, 255 );
setEffAlphaKey( spep_1 + 106, rush, 255 );

rush_e = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --ラッシュエフェクト(ef_003)
setEffMoveKey( spep_1 + 0, rush_e, 0, 0, 0 );
setEffMoveKey( spep_1 + 106, rush_e, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush_e, 1.0, 1.0 );
setEffScaleKey( spep_1 + 106, rush_e, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_e, 0 );
setEffRotateKey( spep_1 + 106, rush_e, 0 );
setEffAlphaKey( spep_1 + 0, rush_e, 255 );
setEffAlphaKey( spep_1 + 106, rush_e, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_1 -3 + 76, 920, 32, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 -3 + 76, ryusen1, 0, 0, 0 );
setEffMoveKey( spep_1 -3 + 108, ryusen1, 0, 0, 0 );

setEffScaleKey( spep_1 -3 + 76, ryusen1, 4.3, 1.12 );
setEffScaleKey( spep_1 -3 + 108, ryusen1, 4.3, 1.12 );

setEffRotateKey( spep_1 -3 + 76, ryusen1, 0 );
setEffRotateKey( spep_1 -3 + 108, ryusen1, 0 );

setEffAlphaKey( spep_1 -3 + 76, ryusen1, 46 );
setEffAlphaKey( spep_1 -3 + 108, ryusen1, 46 );

-- ** エフェクト等 ** --
rush_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --ラッシュ背景(ef_004)
setEffMoveKey( spep_1 + 0, rush_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 106, rush_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 106, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_b, 0 );
setEffRotateKey( spep_1 + 106, rush_b, 0 );
setEffAlphaKey( spep_1 + 0, rush_b, 255 );
setEffAlphaKey( spep_1 + 106, rush_b, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1 -3 + 26, 906, 82, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1 -3 + 26, shuchusen1, 82, 20 );

setEffMoveKey( spep_1 -3 + 26, shuchusen1, 0, 0, 0 );
setEffMoveKey( spep_1 -3 + 108, shuchusen1, 0, 0, 0 );

setEffScaleKey( spep_1 -3 + 26, shuchusen1, 1.5, 1.5 );
setEffScaleKey( spep_1 -3 + 108, shuchusen1, 1.5, 1.5 );

setEffRotateKey( spep_1 -3 + 26, shuchusen1, 0 );
setEffRotateKey( spep_1 -3 + 108, shuchusen1, 0 );

setEffAlphaKey( spep_1 -3 + 26, shuchusen1, 255 );
setEffAlphaKey( spep_1 -3 + 38, shuchusen1, 255 );
setEffAlphaKey( spep_1 -3 + 39, shuchusen1, 0 );

setEffAlphaKey( spep_1 -3 + 71, shuchusen1, 0 );
setEffAlphaKey( spep_1 -3 + 72, shuchusen1, 255 );
setEffAlphaKey( spep_1 -3 + 108, shuchusen1, 255 );

-- ** 書き文字エントリー ** --
ctex = entryEffectLife( spep_1 -3 + 6, 10000, 18, 0x100, -1, 0, 149.8, 180.8 ); --!!
setEffMoveKey( spep_1 -3 + 6, ctex, 149.8, 180.8 , 0 );
setEffMoveKey( spep_1 -3 + 8, ctex, 126.7, 153.6 , 0 );
setEffMoveKey( spep_1 -3 + 10, ctex, 119.7, 153.2 , 0 );
setEffMoveKey( spep_1 -3 + 12, ctex, 126.2, 160.6 , 0 );
setEffMoveKey( spep_1 -3 + 14, ctex, 126.7, 153.6 , 0 );
setEffMoveKey( spep_1 -3 + 16, ctex, 119.7, 153.2 , 0 );
setEffMoveKey( spep_1 -3 + 18, ctex, 126.2, 160.6 , 0 );
setEffMoveKey( spep_1 -3 + 20, ctex, 126.7, 153.6 , 0 );
setEffMoveKey( spep_1 -3 + 22, ctex, 119.7, 153.2 , 0 );
setEffMoveKey( spep_1 -3 + 24, ctex, 126.2, 160.6 , 0 );

setEffScaleKey( spep_1 -3 + 6, ctex, 2.41, 2.41 );
setEffScaleKey( spep_1 -3 + 8, ctex, 1.61, 1.61 );
setEffScaleKey( spep_1 -3 + 24, ctex, 1.61, 1.61 );

setEffRotateKey( spep_1 -3 + 6, ctex, 18 );
setEffRotateKey( spep_1 -3 + 24, ctex, 18 );

setEffAlphaKey( spep_1 -3 + 6, ctex, 255 );
setEffAlphaKey( spep_1 -3 + 24, ctex, 255 );

ctBaki = entryEffectLife( spep_1 -3 + 72, 10020, 22, 0x100, -1, 0, 98, 200.1 ); --バキッ
setEffMoveKey( spep_1 -3 + 72, ctBaki, 98, 200.1 , 0 );
setEffMoveKey( spep_1 -3 + 74, ctBaki, 205.5, 160.2 , 0 );
setEffMoveKey( spep_1 -3 + 76, ctBaki, 146.2, 86.4 , 0 );
setEffMoveKey( spep_1 -3 + 78, ctBaki, 174.3, 117.8 , 0 );
setEffMoveKey( spep_1 -3 + 80, ctBaki, 128.1, 98.9 , 0 );
setEffMoveKey( spep_1 -3 + 82, ctBaki, 164.3, 129.2 , 0 );
setEffMoveKey( spep_1 -3 + 84, ctBaki, 162.2, 123.8 , 0 );
setEffMoveKey( spep_1 -3 + 86, ctBaki, 160.2, 118.4 , 0 );
setEffMoveKey( spep_1 -3 + 88, ctBaki, 162.2, 116.8 , 0 );
setEffMoveKey( spep_1 -3 + 90, ctBaki, 162.1, 115.1 , 0 );
setEffMoveKey( spep_1 -3 + 92, ctBaki, 162.8, 113.5 , 0 );
setEffMoveKey( spep_1 -3 + 94, ctBaki, 162.5, 113.4 , 0 );

setEffScaleKey( spep_1 -3 + 72, ctBaki, 1.32, 1.32 );
setEffScaleKey( spep_1 -3 + 74, ctBaki, 1.49, 1.49 );
setEffScaleKey( spep_1 -3 + 76, ctBaki, 2.05, 2.05 );
setEffScaleKey( spep_1 -3 + 78, ctBaki, 1.8, 1.8 );
setEffScaleKey( spep_1 -3 + 80, ctBaki, 1.8, 1.8 );
setEffScaleKey( spep_1 -3 + 82, ctBaki, 1.72, 1.72 );
setEffScaleKey( spep_1 -3 + 84, ctBaki, 1.76, 1.76 );
setEffScaleKey( spep_1 -3 + 86, ctBaki, 1.8, 1.8 );
setEffScaleKey( spep_1 -3 + 88, ctBaki, 1.81, 1.81 );
setEffScaleKey( spep_1 -3 + 90, ctBaki, 1.83, 1.83 );
setEffScaleKey( spep_1 -3 + 92, ctBaki, 1.84, 1.84 );

setEffRotateKey( spep_1 -3 + 72, ctBaki, 29.9 );
setEffRotateKey( spep_1 -3 + 74, ctBaki, -4.7 );
setEffRotateKey( spep_1 -3 + 76, ctBaki, 10.3 );
setEffRotateKey( spep_1 -3 + 78, ctBaki, 5 );
setEffRotateKey( spep_1 -3 + 80, ctBaki, 15.2 );
setEffRotateKey( spep_1 -3 + 82, ctBaki, 7.6 );
setEffRotateKey( spep_1 -3 + 90, ctBaki, 7.6 );
setEffRotateKey( spep_1 -3 + 92, ctBaki, 7.5 );
setEffRotateKey( spep_1 -3 + 94, ctBaki, 7.6 );

setEffAlphaKey( spep_1 -3 + 72, ctBaki, 255 );
setEffAlphaKey( spep_1 -3 + 86, ctBaki, 255 );
setEffAlphaKey( spep_1 -3 + 88, ctBaki, 170 );
setEffAlphaKey( spep_1 -3 + 90, ctBaki, 85 );
setEffAlphaKey( spep_1 -3 + 92, ctBaki, 0 );
setEffAlphaKey( spep_1 -3 + 94, ctBaki, 0 );

-- ** 敵の動き ** --
setDisp( spep_1 -3 + 3, 1, 1 );
setDisp( spep_1 -3 + 96, 1, 1 );
changeAnime( spep_1 -3 + 3, 1, 101 );
changeAnime( spep_1 -3 + 28, 1, 108 );
changeAnime( spep_1 -3 + 82, 1, 106 );

setMoveKey( spep_1 -3 + 3, 1, 82.9, -58.3 , 0 );
--setMoveKey( spep_1 -3 + 2, 1, 83, -58.4 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 83, -58.4 , 0 );
setMoveKey( spep_1 -3 + 27, 1, 82.5, -64.1 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 86.9, -22.7 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 91.2, -11 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 97.3, -22.4 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 84.4, -11.2 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 95.5, -8.9 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 92.1, -21 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 98.8, -22.2 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 95, -17.1 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 98.6, -18.1 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 99.8, -17.6 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 100.9, -17.1 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 102, -16.5 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 103.2, -16.1 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 104.3, -15.6 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 105.4, -15 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 106.6, -14.5 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 107.7, -14 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 108.8, -13.5 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 110, -13 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 111.1, -12.5 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 112.2, -12 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 113.4, -11.5 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 197.3, -6.9 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 208.8, -10 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 205.6, -11 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 227.2, 4.1 , 0 );
setMoveKey( spep_1 -3 + 81, 1, 224.6, -4.9 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 238.7, 1 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 560.7, -9.9 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 817.6, -18.9 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 999, -20.8 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 1107.8, -21.7 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 1144.1, -21.5 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 1144.1, -20.9 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 1144.1, -20.3 , 0 );

setScaleKey( spep_1 -3 + 3, 1, 1.69, 1.69 );
setScaleKey( spep_1 -3 + 27, 1, 1.69, 1.69 );
setScaleKey( spep_1 -3 + 28, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 44, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 46, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 66, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 68, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 70, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 72, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 74, 1, 1.46, 1.46 );
setScaleKey( spep_1 -3 + 76, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 78, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 81, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 82, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 96, 1, 1.42, 1.42 );

setRotateKey( spep_1 -3 + 3, 1, 0 );
setRotateKey( spep_1 -3 + 28, 1, 0 );
setRotateKey( spep_1 -3 + 30, 1, -0.2 );
setRotateKey( spep_1 -3 + 32, 1, -0.4 );
setRotateKey( spep_1 -3 + 34, 1, -0.6 );
setRotateKey( spep_1 -3 + 36, 1, -0.8 );
setRotateKey( spep_1 -3 + 38, 1, -1.3 );
setRotateKey( spep_1 -3 + 40, 1, -1.9 );
setRotateKey( spep_1 -3 + 42, 1, -2.4 );
setRotateKey( spep_1 -3 + 44, 1, -3 );
setRotateKey( spep_1 -3 + 46, 1, -3.5 );
setRotateKey( spep_1 -3 + 48, 1, -4 );
setRotateKey( spep_1 -3 + 50, 1, -4.6 );
setRotateKey( spep_1 -3 + 52, 1, -5.1 );
setRotateKey( spep_1 -3 + 54, 1, -5.7 );
setRotateKey( spep_1 -3 + 56, 1, -6.2 );
setRotateKey( spep_1 -3 + 58, 1, -6.8 );
setRotateKey( spep_1 -3 + 60, 1, -7.3 );
setRotateKey( spep_1 -3 + 62, 1, -7.8 );
setRotateKey( spep_1 -3 + 64, 1, -8.4 );
setRotateKey( spep_1 -3 + 66, 1, -8.9 );
setRotateKey( spep_1 -3 + 68, 1, -9.5 );
setRotateKey( spep_1 -3 + 70, 1, -10 );
setRotateKey( spep_1 -3 + 72, 1, -16 );
setRotateKey( spep_1 -3 + 74, 1, -18.4 );
setRotateKey( spep_1 -3 + 76, 1, -20.8 );
setRotateKey( spep_1 -3 + 78, 1, -23.2 );
setRotateKey( spep_1 -3 + 81, 1, -25.6 );
setRotateKey( spep_1 -3 + 82, 1, -28 );
setRotateKey( spep_1 -3 + 84, 1, -9.3 );
setRotateKey( spep_1 -3 + 86, 1, 5.3 );
setRotateKey( spep_1 -3 + 88, 1, 15.7 );
setRotateKey( spep_1 -3 + 90, 1, 21.9 );
setRotateKey( spep_1 -3 + 92, 1, 24 );
setRotateKey( spep_1 -3 + 96, 1, 24 );

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 229.5 );     -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 106, 0, 0, 0, 0, 255 ); --黒　背景

-- ** 音 ** --
playSe( spep_1 +10 + 14, 1006 );
playSe( spep_1 +10 + 14, 1009 );
playSe( spep_1 +11 + 58, 1120 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 106;

------------------------------------------------------
-- 気溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --気溜め(ef_005)
setEffMoveKey( spep_2 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_2 + 134, tame, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 134, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 134, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 134, tame, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_2 + 34, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_2 + 34, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_2 + 46, 190006, 72, 0x100, -1, 0, 0, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_2 + 46,  ctgogo, 0,  510);
setEffMoveKey(  spep_2 + 118,  ctgogo, 0,  510);

setEffAlphaKey( spep_2 + 46, ctgogo, 0 );
setEffAlphaKey( spep_2 + 47, ctgogo, 255 );
setEffAlphaKey( spep_2 + 48, ctgogo, 255 );
setEffAlphaKey( spep_2 + 112, ctgogo, 255 );
setEffAlphaKey( spep_2 + 114, ctgogo, 191 );
setEffAlphaKey( spep_2 + 116, ctgogo, 112 );
setEffAlphaKey( spep_2 + 118, ctgogo, 64 );

setEffRotateKey(  spep_2 + 46,  ctgogo,  0);
setEffRotateKey(  spep_2 + 118,  ctgogo,  0);

setEffScaleKey(  spep_2 + 46,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 + 108,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 + 118,  ctgogo, -1.07, 1.07 );

-- ** 白フェード ** --
entryFade( spep_2 -2 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
entryFade( spep_2 + 118, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 134, 0, 0, 0, 0, 255 ); --黒　背景

-- ** 音 ** --
playSe( spep_2 + 13, 1035 );
playSe( spep_2 + 13, 09 );
setSeVolume( spep_2 + 13, 09, 79 );
se_1044 = playSe( spep_2 + 13, 1044 );
setSeVolume( spep_2 + 13, 1044, 63 );
stopSe( spep_2 + 132, se_1044, 0 );
se_1176 = playSe( spep_2 + 13, 1176 );
setSeVolume( spep_2 + 13, 1176, 79 );
playSe( spep_2 +12 + 23, 1018 );
playSe( spep_2 + 36, 1036 );
playSe( spep_2 + 60, 1036 );
playSe( spep_2 + 84, 1036 );
playSe( spep_2 + 108, 1036 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 134;

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
stopSe( spep_3 + 0, se_1176, 0 );
playSe( spep_3 + 0, 1035 );
se_1037 = playSe( spep_3 + 86, 1037 );
setSeVolume( spep_3 + 86, 1037, 89 );
se_1176 = playSe( spep_3 + 86, 1176 );
setSeVolume( spep_3 + 86, 1176, 63 );
playSe( spep_3 + 86, 1020 );
playSe( spep_3 + 86, 1036 );
setSeVolume( spep_3 + 86, 1036, 71 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
-- かめはめ波 構え～放つ
------------------------------------------------------
-- ** エフェクト等 ** --
kamae = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --かめはめ波 構え～放つ(ef_006)
setEffMoveKey( spep_4 + 0, kamae, 0, 0, 0 );
setEffMoveKey( spep_4 + 126, kamae, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kamae, -1.0, 1.0 );
setEffScaleKey( spep_4 + 126, kamae, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kamae, 0 );
setEffRotateKey( spep_4 + 126, kamae, 0 );
setEffAlphaKey( spep_4 + 0, kamae, 255 );
setEffAlphaKey( spep_4 + 126, kamae, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 126, 0, 0, 0, 0, 255 ); --黒　背景

-- ** 音 ** --
playSe( spep_4 + 16, 1036 );
setSeVolume( spep_4 + 16, 1036, 71 );
playSe( spep_4 + 22, 1020 );
playSe( spep_4 + 40, 1036 );
setSeVolume( spep_4 + 40, 1036, 71 );
playSe( spep_4 + 52, 1020 );
playSe( spep_4 + 63, 1036 );
setSeVolume( spep_4 + 63, 1036, 71 );
playSe( spep_4 + 87, 1022 );
setSeVolume( spep_4 + 87, 1022, 112 );
stopSe( spep_4 + 87, se_1176, 0 );
stopSe( spep_4 + 90, se_1037, 0 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 126;

------------------------------------------------------
-- 敵に向かって飛んでいく
------------------------------------------------------
-- ** エフェクト等 ** --
hassha_f = entryEffect( spep_5 + 0, SP_07r, 0x100, -1, 0, 0, 0 );  --敵に向かって飛んでいく(ef_007)
setEffMoveKey( spep_5 + 0, hassha_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 56, hassha_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hassha_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 56, hassha_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hassha_f, 0 );
setEffRotateKey( spep_5 + 56, hassha_f, 0 );
setEffAlphaKey( spep_5 + 0, hassha_f, 255 );
setEffAlphaKey( spep_5 + 56, hassha_f, 255 );

hassha_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --敵に向かって飛んでいく(ef_008)
setEffMoveKey( spep_5 + 0, hassha_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 56, hassha_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hassha_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, hassha_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hassha_b, 0 );
setEffRotateKey( spep_5 + 56, hassha_b, 0 );
setEffAlphaKey( spep_5 + 0, hassha_b, 255 );
setEffAlphaKey( spep_5 + 56, hassha_b, 255 );

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_5 -3 + 3, 921, 55, 0x80, -1, 0, -64.9, 2.1 );

setEffMoveKey( spep_5 -3 + 3, ryusen2, -64.9, 2.1 , 0 );
setEffMoveKey( spep_5 -3 + 58, ryusen2, -64.9, 2.1 , 0 );

setEffScaleKey( spep_5 -3 + 0, ryusen2, 1.5, 1.5 );
setEffScaleKey( spep_5 -3 + 58, ryusen2, 1.5, 1.5 );

setEffRotateKey( spep_5 -3 + 0, ryusen2, -18 );
setEffRotateKey( spep_5 -3 + 58, ryusen2, -18 );

setEffAlphaKey( spep_5 -3 + 0, ryusen2, 255 );
setEffAlphaKey( spep_5 -3 + 58, ryusen2, 255 );

-- ** 敵の動き ** --
setDisp( spep_5 -3 + 22, 1, 1 );
setDisp( spep_5 -3 + 60, 1, 0 );
changeAnime( spep_5 -3 + 22, 1, 106 );

setMoveKey( spep_5 -3 + 22, 1, 389.8, 141.4 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 387.5, 147.3 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 369.1, 141.3 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 366.3, 147.1 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 351.4, 144.1 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 336.2, 141 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 332.7, 146.9 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 313, 140.8 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 309, 146.8 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 279.2, 133.7 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 264.6, 132.4 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 237, 121.8 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 208.7, 110.9 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 191.4, 108.7 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 157.4, 94.3 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 138.4, 91.5 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 102.5, 76.5 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 81.9, 73.3 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 44.8, 57.6 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 44.8, 57.6 , 0 );

setScaleKey( spep_5 -3 + 22, 1, 0.29, 0.29 );
setScaleKey( spep_5 -3 + 24, 1, 0.31, 0.31 );
setScaleKey( spep_5 -3 + 26, 1, 0.34, 0.34 );
setScaleKey( spep_5 -3 + 28, 1, 0.36, 0.36 );
setScaleKey( spep_5 -3 + 30, 1, 0.39, 0.39 );
setScaleKey( spep_5 -3 + 32, 1, 0.42, 0.42 );
setScaleKey( spep_5 -3 + 34, 1, 0.44, 0.44 );
setScaleKey( spep_5 -3 + 36, 1, 0.47, 0.47 );
setScaleKey( spep_5 -3 + 38, 1, 0.5, 0.5 );
setScaleKey( spep_5 -3 + 40, 1, 0.61, 0.61 );
setScaleKey( spep_5 -3 + 42, 1, 0.73, 0.73 );
setScaleKey( spep_5 -3 + 44, 1, 0.84, 0.84 );
setScaleKey( spep_5 -3 + 46, 1, 0.97, 0.97 );
setScaleKey( spep_5 -3 + 48, 1, 1.09, 1.09 );
setScaleKey( spep_5 -3 + 50, 1, 1.22, 1.22 );
setScaleKey( spep_5 -3 + 52, 1, 1.36, 1.36 );
setScaleKey( spep_5 -3 + 54, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 56, 1, 1.64, 1.64 );
setScaleKey( spep_5 -3 + 58, 1, 1.79, 1.79 );
setScaleKey( spep_5 -3 + 60, 1, 1.79, 1.79 );

setRotateKey( spep_5 -3 + 22, 1, 0 );
setRotateKey( spep_5 -3 + 58, 1, 0 );
setRotateKey( spep_5 -3 + 60, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 56, 0, 0, 0, 0, 255 ); --黒　背景

-- ** 音 ** --
playSe( spep_5 + 52, 1023 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;

------------------------------------------------------
-- ギャン
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_6 + 0, SP_09, 0x100, -1, 0, 0, 0 );  --ギャン(ef_009)
setEffMoveKey( spep_6 + 0, hit, 0, 0, 0 );
setEffMoveKey( spep_6 + 56, hit, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_6 + 56, hit, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit, 0 );
setEffRotateKey( spep_6 + 56, hit, 0 );
setEffAlphaKey( spep_6 + 0, hit, 255 );
setEffAlphaKey( spep_6 + 56, hit, 255 );

-- ** 書き文字エントリー ** --
ctGyan = entryEffectLife( spep_6 -3 + 3, 10006, 55, 0x100, -1, 0, 7.1, 306.8 ); --ギャンッ
setEffMoveKey( spep_6 -3 + 3, ctGyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_6 -3 + 58, ctGyan, 7.1, 306.8 , 0 );

a = 3.5;

setEffScaleKey( spep_6 -3 + 3, ctGyan, 0.6 * a, 0.6 * a );
--setEffScaleKey( spep_6 -3 + 2, ctGyan, 0.7, 0.7 );
setEffScaleKey( spep_6 -3 + 4, ctGyan, 0.8 * a, 0.8 * a );
setEffScaleKey( spep_6 -3 + 6, ctGyan, 0.9 * a, 0.9 * a );
setEffScaleKey( spep_6 -3 + 8, ctGyan, 1 * a, 1 * a );
setEffScaleKey( spep_6 -3 + 10, ctGyan, 1.01 * a, 1.01 * a );
setEffScaleKey( spep_6 -3 + 12, ctGyan, 1.02 * a, 1.02 * a );
setEffScaleKey( spep_6 -3 + 14, ctGyan, 1.02 * a, 1.02 * a );
setEffScaleKey( spep_6 -3 + 16, ctGyan, 1.03 * a, 1.03 * a );
setEffScaleKey( spep_6 -3 + 18, ctGyan, 1.04 * a, 1.04 * a );
setEffScaleKey( spep_6 -3 + 20, ctGyan, 1.05 * a, 1.05 * a );
setEffScaleKey( spep_6 -3 + 22, ctGyan, 1.06 * a, 1.06 * a );
setEffScaleKey( spep_6 -3 + 24, ctGyan, 1.06 * a, 1.06 * a );
setEffScaleKey( spep_6 -3 + 26, ctGyan, 1.07 * a, 1.07 * a );
setEffScaleKey( spep_6 -3 + 28, ctGyan, 1.08 * a, 1.08 * a );
setEffScaleKey( spep_6 -3 + 30, ctGyan, 1.09 * a, 1.09 * a );
setEffScaleKey( spep_6 -3 + 32, ctGyan, 1.1 * a, 1.1 * a );
setEffScaleKey( spep_6 -3 + 34, ctGyan, 1.1 * a, 1.1 * a );
setEffScaleKey( spep_6 -3 + 36, ctGyan, 1.11 * a, 1.11 * a );
setEffScaleKey( spep_6 -3 + 38, ctGyan, 1.12 * a, 1.12 * a );
setEffScaleKey( spep_6 -3 + 40, ctGyan, 1.13 * a, 1.13 * a );
setEffScaleKey( spep_6 -3 + 42, ctGyan, 1.13 * a, 1.13 * a );
setEffScaleKey( spep_6 -3 + 44, ctGyan, 1.14 * a, 1.14 * a );
setEffScaleKey( spep_6 -3 + 46, ctGyan, 1.15 * a, 1.15 * a );
setEffScaleKey( spep_6 -3 + 48, ctGyan, 1.16 * a, 1.16 * a );
setEffScaleKey( spep_6 -3 + 50, ctGyan, 1.17 * a, 1.17 * a );
setEffScaleKey( spep_6 -3 + 52, ctGyan, 1.17 * a, 1.17 * a );
setEffScaleKey( spep_6 -3 + 54, ctGyan, 1.18 * a, 1.18 * a );
setEffScaleKey( spep_6 -3 + 56, ctGyan, 1.19 * a, 1.19 * a );
setEffScaleKey( spep_6 -3 + 58, ctGyan, 1.2 * a, 1.2 * a );

setEffRotateKey( spep_6 -3 + 3, ctGyan, -5 );
setEffRotateKey( spep_6 -3 + 58, ctGyan, -5 );

setEffAlphaKey( spep_6 -3 + 3, ctGyan, 255 );
setEffAlphaKey( spep_6 -3 + 58, ctGyan, 255 );

-- ** 白フェード ** --
entryFade( spep_6 + 16, 38, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 56, 0, 0, 0, 0, 255 ); --黒　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 56;

------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_7 + 0, SP_10r, 0x100, -1, 0, 0, 0 );  --爆発(ef_010)
setEffMoveKey( spep_7 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_7 + 176, finish, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_7 + 176, finish, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish, 0 );
setEffRotateKey( spep_7 + 176, finish, 0 );
setEffAlphaKey( spep_7 + 0, finish, 255 );
setEffAlphaKey( spep_7 + 176, finish, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_7 -3 + 3, 906, 175, 0x100, -1, 0, 900.2 - 250, 63 );
setEffShake( spep_7 -3 + 3, shuchusen2, 175, 20 );

b = -250;

setEffMoveKey( spep_7 -3 + 3, shuchusen2, 900.2 + b, 63 , 0 );
--setEffMoveKey( spep_7 -3 + 2, shuchusen2, 900.7, 74.4 , 0 );
setEffMoveKey( spep_7 -3 + 4, shuchusen2, 906.3 + b, 72 , 0 );
setEffMoveKey( spep_7 -3 + 6, shuchusen2, 911.9 + b, 69.8 , 0 );
setEffMoveKey( spep_7 -3 + 8, shuchusen2, 917.5 + b, 67.6 , 0 );
setEffMoveKey( spep_7 -3 + 10, shuchusen2, 923 + b, 65.2 , 0 );
setEffMoveKey( spep_7 -3 + 12, shuchusen2, 924.7 + b, 69.7 , 0 );
setEffMoveKey( spep_7 -3 + 14, shuchusen2, 926.5 + b, 74.1 , 0 );
setEffMoveKey( spep_7 -3 + 16, shuchusen2, 928.2 + b, 78.6 , 0 );
setEffMoveKey( spep_7 -3 + 18, shuchusen2, 933.2 + b, 77.7 , 0 );
setEffMoveKey( spep_7 -3 + 20, shuchusen2, 938 + b, 76.9 , 0 );
setEffMoveKey( spep_7 -3 + 22, shuchusen2, 834.8 + b, 50.6 , 0 );
setEffMoveKey( spep_7 -3 + 24, shuchusen2, 731.5 + b, 24.3 , 0 );
setEffMoveKey( spep_7 -3 + 26, shuchusen2, 628.2 + b, -2 , 0 );
setEffMoveKey( spep_7 -3 + 28, shuchusen2, 518.5 + b, 14.7 , 0 );
setEffMoveKey( spep_7 -3 + 30, shuchusen2, 415.3 + b, -21 , 0 );
setEffMoveKey( spep_7 -3 + 32, shuchusen2, 414.7 + b, -19.7 , 0 );
setEffMoveKey( spep_7 -3 + 34, shuchusen2, 414.1 + b, -18.3 , 0 );
setEffMoveKey( spep_7 -3 + 36, shuchusen2, 413.5 + b, -16.9 , 0 );
setEffMoveKey( spep_7 -3 + 38, shuchusen2, 413.8 + b, -17.7 , 0 );
setEffMoveKey( spep_7 -3 + 40, shuchusen2, 414 + b, -18.4 , 0 );
setEffMoveKey( spep_7 -3 + 42, shuchusen2, 414.2 + b, -19.2 , 0 );
setEffMoveKey( spep_7 -3 + 44, shuchusen2, 414.4 + b, -19.9 , 0 );
setEffMoveKey( spep_7 -3 + 46, shuchusen2, 414.6 + b, -20.7 , 0 );
setEffMoveKey( spep_7 -3 + 48, shuchusen2, 414.9 + b, -21.4 , 0 );
setEffMoveKey( spep_7 -3 + 50, shuchusen2, 415.1 + b, -22.1 , 0 );
setEffMoveKey( spep_7 -3 + 52, shuchusen2, 415.3 + b, -22.9 , 0 );
setEffMoveKey( spep_7 -3 + 54, shuchusen2, 415 + b, -22.3 , 0 );
setEffMoveKey( spep_7 -3 + 56, shuchusen2, 414.7 + b, -21.8 , 0 );
setEffMoveKey( spep_7 -3 + 58, shuchusen2, 414.4 + b, -21.3 , 0 );
setEffMoveKey( spep_7 -3 + 60, shuchusen2, 414.1 + b, -20.8 , 0 );
setEffMoveKey( spep_7 -3 + 62, shuchusen2, 413.8 + b, -20.3 , 0 );
setEffMoveKey( spep_7 -3 + 64, shuchusen2, 414.2 + b, -21 , 0 );
setEffMoveKey( spep_7 -3 + 66, shuchusen2, 414.7 + b, -21.7 , 0 );
setEffMoveKey( spep_7 -3 + 68, shuchusen2, 415.1 + b, -22.5 , 0 );
setEffMoveKey( spep_7 -3 + 70, shuchusen2, 415.5 + b, -23.3 , 0 );
setEffMoveKey( spep_7 -3 + 72, shuchusen2, 415.4 + b, -23 , 0 );
setEffMoveKey( spep_7 -3 + 74, shuchusen2, 415.3 + b, -22.8 , 0 );
setEffMoveKey( spep_7 -3 + 76, shuchusen2, 415.1 + b, -22.5 , 0 );
setEffMoveKey( spep_7 -3 + 78, shuchusen2, 415 + b, -22.3 , 0 );
setEffMoveKey( spep_7 -3 + 80, shuchusen2, 414.9 + b, -22 , 0 );
setEffMoveKey( spep_7 -3 + 82, shuchusen2, 414.7 + b, -21.8 , 0 );
setEffMoveKey( spep_7 -3 + 84, shuchusen2, 414.6 + b, -21.5 , 0 );
setEffMoveKey( spep_7 -3 + 118, shuchusen2, 414.6 + b, -21.5 , 0 );
setEffMoveKey( spep_7 -3 + 120, shuchusen2, 414.6 + b, -21.6 , 0 );
setEffMoveKey( spep_7 -3 + 122, shuchusen2, 414.6 + b, -21.2 , 0 );
setEffMoveKey( spep_7 -3 + 178, shuchusen2, 414.6 + b, -21.2 , 0 );

c = 1.5;

setEffScaleKey( spep_7 -3 + 3, shuchusen2, 4.52 * c, 4.72 * c );
--setEffScaleKey( spep_7 -3 + 2, shuchusen2, 4.55, 4.75 );
setEffScaleKey( spep_7 -3 + 4, shuchusen2, 4.58 * c, 4.78 * c );
setEffScaleKey( spep_7 -3 + 6, shuchusen2, 4.61 * c, 4.81 * c );
setEffScaleKey( spep_7 -3 + 8, shuchusen2, 4.64 * c, 4.84 * c );
setEffScaleKey( spep_7 -3 + 10, shuchusen2, 4.67 * c, 4.87 * c );
setEffScaleKey( spep_7 -3 + 12, shuchusen2, 4.7 * c, 4.9 * c );
setEffScaleKey( spep_7 -3 + 14, shuchusen2, 4.73 * c, 4.93 * c );
setEffScaleKey( spep_7 -3 + 16, shuchusen2, 4.75 * c, 4.96 * c );
setEffScaleKey( spep_7 -3 + 18, shuchusen2, 4.78 * c, 4.99 * c );
setEffScaleKey( spep_7 -3 + 20, shuchusen2, 4.81 * c, 5.02 * c );
setEffScaleKey( spep_7 -3 + 22, shuchusen2, 4.14 * c, 4.31 * c );
setEffScaleKey( spep_7 -3 + 24, shuchusen2, 3.46 * c, 3.61 * c );
setEffScaleKey( spep_7 -3 + 26, shuchusen2, 2.79 * c, 2.91 * c );
setEffScaleKey( spep_7 -3 + 28, shuchusen2, 2.11 * c, 2.2 * c );
setEffScaleKey( spep_7 -3 + 30, shuchusen2, 1.44 * c, 1.5 * c );
setEffScaleKey( spep_7 -3 + 178, shuchusen2, 1.44 * c, 1.5 * c );

setEffRotateKey( spep_7 -3 + 3, shuchusen2, 0 );
setEffRotateKey( spep_7 -3 + 178, shuchusen2, 0 );

setEffAlphaKey( spep_7 -3 + 3, shuchusen2, 255 );
setEffAlphaKey( spep_7 -3 + 178, shuchusen2, 255 );

-- ** 白フェード ** --
entryFade( spep_7 + 0, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 175, 0, 0, 0, 0, 255 ); --黒　背景

-- ** 音 ** --
playSe( spep_7 + 4, 1159 );
setSeVolume( spep_7 + 4, 1159, 56 );
playSe( spep_7 + 4, 1024 );
playSe( spep_7 + 55, 1044 );
setSeVolume( spep_7 + 55, 1044, 56 );
setSeVolume( spep_7 + 120, 1044, 56.00 );
setSeVolume( spep_7 + 121, 1044, 55.24 );
setSeVolume( spep_7 + 122, 1044, 54.48 );
setSeVolume( spep_7 + 123, 1044, 53.72 );
setSeVolume( spep_7 + 124, 1044, 52.96 );
setSeVolume( spep_7 + 125, 1044, 52.20 );
setSeVolume( spep_7 + 126, 1044, 51.44 );
setSeVolume( spep_7 + 127, 1044, 50.68 );
setSeVolume( spep_7 + 128, 1044, 49.92 );
setSeVolume( spep_7 + 129, 1044, 49.16 );
setSeVolume( spep_7 + 130, 1044, 48.40 );
setSeVolume( spep_7 + 131, 1044, 47.64 );
setSeVolume( spep_7 + 132, 1044, 46.88 );
setSeVolume( spep_7 + 133, 1044, 46.12 );
setSeVolume( spep_7 + 134, 1044, 45.36 );
setSeVolume( spep_7 + 135, 1044, 44.60 );
setSeVolume( spep_7 + 136, 1044, 43.84 );
setSeVolume( spep_7 + 137, 1044, 43.08 );
setSeVolume( spep_7 + 138, 1044, 42.32 );
setSeVolume( spep_7 + 139, 1044, 41.56 );
setSeVolume( spep_7 + 140, 1044, 40.80 );
setSeVolume( spep_7 + 141, 1044, 40.04 );
setSeVolume( spep_7 + 142, 1044, 39.28 );
setSeVolume( spep_7 + 143, 1044, 38.52 );
setSeVolume( spep_7 + 144, 1044, 37.76 );
setSeVolume( spep_7 + 145, 1044, 37.00 );
setSeVolume( spep_7 + 146, 1044, 36.24 );
setSeVolume( spep_7 + 147, 1044, 35.48 );
setSeVolume( spep_7 + 148, 1044, 34.72 );
setSeVolume( spep_7 + 149, 1044, 33.96 );
setSeVolume( spep_7 + 150, 1044, 33.20 );
setSeVolume( spep_7 + 151, 1044, 32.44 );
setSeVolume( spep_7 + 152, 1044, 31.68 );
setSeVolume( spep_7 + 153, 1044, 30.92 );
setSeVolume( spep_7 + 154, 1044, 30.16 );
setSeVolume( spep_7 + 155, 1044, 29.40 );
setSeVolume( spep_7 + 156, 1044, 28.64 );
setSeVolume( spep_7 + 157, 1044, 27.88 );
setSeVolume( spep_7 + 158, 1044, 27.12 );
setSeVolume( spep_7 + 159, 1044, 26.36 );
setSeVolume( spep_7 + 160, 1044, 25.60 );
setSeVolume( spep_7 + 161, 1044, 24.84 );
setSeVolume( spep_7 + 162, 1044, 24.08 );
setSeVolume( spep_7 + 163, 1044, 23.32 );
setSeVolume( spep_7 + 164, 1044, 22.56 );
setSeVolume( spep_7 + 165, 1044, 21.80 );
setSeVolume( spep_7 + 166, 1044, 21.04 );
setSeVolume( spep_7 + 167, 1044, 20.28 );
setSeVolume( spep_7 + 168, 1044, 19.52 );
setSeVolume( spep_7 + 169, 1044, 18.76 );
setSeVolume( spep_7 + 170, 1044, 18.00 );

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 20 );
endPhase( spep_7 + 170 );

end

