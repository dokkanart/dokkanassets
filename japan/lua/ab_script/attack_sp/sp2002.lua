--1019840:ヴァドス_破壊の指揮者
--sp_effect_a2_00133

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

--エフェクト(味方)
SP_01=	155511	;--	セリフカットイン→瞬間移動
SP_02=	155512	;--	杖ラッシュ→上に飛ばす
SP_03=	155513	;--	杖ラッシュ→上に飛ばす
SP_04=	155514	;--	気弾生成→連弾攻撃→爆発
SP_05=	155515	;--	気弾生成→連弾攻撃→爆発

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);

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


setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

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
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- セリフカットイン→瞬間移動
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
move = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, move, 0, 0, 0 );
setEffMoveKey( spep_0 + 172, move, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, move, 1.0, 1.0 );
setEffScaleKey( spep_0 + 172, move, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, move, 0 );
setEffRotateKey( spep_0 + 172, move, 0 );
setEffAlphaKey( spep_0 + 0, move, 255 );
setEffAlphaKey( spep_0 + 172, move, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 172, 0,  0, 0, 0, 200 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );


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
--集中線
shuchusen1 = entryEffectLife( spep_0,  906, 170 -3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0, shuchusen1, 170-3, 20 );
setEffMoveKey( spep_0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 170, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0, shuchusen1, 1.5, 1.5 );
setEffScaleKey( spep_0-3 + 170, shuchusen1, 1.5, 1.5 );

setEffRotateKey( spep_0, shuchusen1, 180 );
setEffRotateKey( spep_0-3 + 170, shuchusen1, 180 );

setEffAlphaKey( spep_0, shuchusen1, 0 );
setEffAlphaKey( spep_0-3 + 115, shuchusen1, 0 );
setEffAlphaKey( spep_0-3 + 116, shuchusen1, 26 );
setEffAlphaKey( spep_0-3 + 118, shuchusen1, 102 );
setEffAlphaKey( spep_0-3 + 120, shuchusen1, 179 );
setEffAlphaKey( spep_0-3 + 122, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 166, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 168, shuchusen1, 140 );
setEffAlphaKey( spep_0-3 + 170, shuchusen1, 26 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0+36  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0+36  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +48, 190006, 72, 0x100, -1, 0, -50, 518);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +48,  ctgogo,  50,  518);
setEffMoveKey(  spep_0 +120,  ctgogo,  50,  518);

setEffAlphaKey( spep_0 +48, ctgogo, 0 );
setEffAlphaKey( spep_0 + 49, ctgogo, 255 );
setEffAlphaKey( spep_0 + 50, ctgogo, 255 );
setEffAlphaKey( spep_0 + 106, ctgogo, 255 );
setEffAlphaKey( spep_0 + 108, ctgogo, 191 );
setEffAlphaKey( spep_0 + 110, ctgogo, 112 );
setEffAlphaKey( spep_0 + 120, ctgogo, 64 );

setEffRotateKey(  spep_0 +48,  ctgogo,  0);
setEffRotateKey(  spep_0 +120,  ctgogo,  0);

setEffScaleKey(  spep_0 +48,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +110,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +120,  ctgogo, 1.07, 1.07 );

--SE
playSe( spep_0 + 48, 1018 );
se_1115 = playSe( spep_0 + 118, 1115 );
playSe( spep_0 + 120, 1042 );
playSe( spep_0 + 154, 1109 );

stopSe( spep_0 + 153, se_1115, 12 );

--白フェード
entryFade( spep_0+164 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade



-- ** 次の準備 ** --
spep_1=spep_0+172;

------------------------------------------------------
-- 杖ラッシュ→上に飛ばす
------------------------------------------------------
-- ** エフェクト等 ** --
rush_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, rush_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 160, rush_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 160, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_f, 0 );
setEffRotateKey( spep_1 + 160, rush_f, 0 );
setEffAlphaKey( spep_1 + 0, rush_f, 255 );
setEffAlphaKey( spep_1 + 160, rush_f, 255 );

-- ** エフェクト等 ** --
rush_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, rush_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 160, rush_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 160, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_b, 0 );
setEffRotateKey( spep_1 + 160, rush_b, 0 );
setEffAlphaKey( spep_1 + 0, rush_b, 255 );
setEffAlphaKey( spep_1 + 160, rush_b, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-4 + 156, 1, 0 );

changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1-4 + 45, 1, 108 );
changeAnime( spep_1-4 + 47, 1, 106 );
changeAnime( spep_1-4 + 48, 1, 108 );
changeAnime( spep_1-4 + 59, 1, 106 );
changeAnime( spep_1-4 + 60, 1, 108 );
changeAnime( spep_1-4 + 73, 1, 106 );
changeAnime( spep_1-4 + 75, 1, 108 );
changeAnime( spep_1-4 + 76, 1, 106 );
changeAnime( spep_1-4 + 91, 1, 108 );
changeAnime( spep_1-4 + 92, 1, 106 );
changeAnime( spep_1-4 + 116, 1, 108 );

setMoveKey( spep_1 + 0, 1, 163.8, -107 , 0 );
setMoveKey( spep_1-4 + 44, 1, 163.8, -107 , 0 );
setMoveKey( spep_1-4 + 45, 1, 245.2, -75 , 0 );
setMoveKey( spep_1-4 + 47, 1, 207, -55.4 , 0 );
setMoveKey( spep_1-4 + 48, 1, 245.2, -75 , 0 );
setMoveKey( spep_1-4 + 50, 1, 250.3, -79.9 , 0 );
setMoveKey( spep_1-4 + 52, 1, 253, -82.6 , 0 );
setMoveKey( spep_1-4 + 54, 1, 254.5, -84.1 , 0 );
setMoveKey( spep_1-4 + 57, 1, 255.4, -85 , 0 );
setMoveKey( spep_1-4 + 59, 1, 207, -55.4 , 0 );
setMoveKey( spep_1-4 + 60, 1, 255.4, -85 , 0 );
setMoveKey( spep_1-4 + 62, 1, 259, -85.8 , 0 );
setMoveKey( spep_1-4 + 64, 1, 262.9, -86.7 , 0 );
setMoveKey( spep_1-4 + 66, 1, 267.1, -87.7 , 0 );
setMoveKey( spep_1-4 + 68, 1, 271.7, -88.8 , 0 );
setMoveKey( spep_1-4 + 71, 1, 276.6, -90 , 0 );
setMoveKey( spep_1-4 + 73, 1, 171, -45 , 0 );
setMoveKey( spep_1-4 + 75, 1, 257.6, -85 , 0 );
setMoveKey( spep_1-4 + 76, 1, 211.8, -1 , 0 );
setMoveKey( spep_1-4 + 78, 1, 213.4, 2.5 , 0 );
setMoveKey( spep_1-4 + 80, 1, 215, 6 , 0 );
setMoveKey( spep_1-4 + 82, 1, 216.6, 9.6 , 0 );
setMoveKey( spep_1-4 + 84, 1, 218.2, 13.1 , 0 );
setMoveKey( spep_1-4 + 86, 1, 219.8, 16.6 , 0 );
setMoveKey( spep_1-4 + 89, 1, 219.8, 16.6 , 0 );
setMoveKey( spep_1-4 + 91, 1, 227.7, 17 , 0 );
setMoveKey( spep_1-4 + 92, 1, 197.8, -10.3 , 0 );
setMoveKey( spep_1-4 + 94, 1, 176.7, -82.5 , 0 );
setMoveKey( spep_1-4 + 96, 1, 159.5, -141.5 , 0 );
setMoveKey( spep_1-4 + 98, 1, 145.4, -190.2 , 0 );
setMoveKey( spep_1-4 + 100, 1, 133.5, -230.7 , 0 );
setMoveKey( spep_1-4 + 102, 1, 125.4, -258.4 , 0 );
setMoveKey( spep_1-4 + 104, 1, 118.6, -282.4 , 0 );
setMoveKey( spep_1-4 + 115, 1, 118.6, -282.4 , 0 );
setMoveKey( spep_1-4 + 116, 1, 142.7, -138.9 , 0 );
setMoveKey( spep_1-4 + 118, 1, 165.7, -121.1 , 0 );
setMoveKey( spep_1-4 + 120, 1, 142.1, -144.4 , 0 );
setMoveKey( spep_1-4 + 122, 1, 162.2, -153.7 , 0 );
setMoveKey( spep_1-4 + 124, 1, 142.7, -138.9 , 0 );
setMoveKey( spep_1-4 + 126, 1, 151.5, 58 , 0 );
setMoveKey( spep_1-4 + 128, 1, 158.9, 221.3 , 0 );
setMoveKey( spep_1-4 + 130, 1, 164.9, 355 , 0 );
setMoveKey( spep_1-4 + 132, 1, 169.8, 462.9 , 0 );
setMoveKey( spep_1-4 + 134, 1, 173.7, 548.6 , 0 );
setMoveKey( spep_1-4 + 136, 1, 176.7, 615.4 , 0 );
setMoveKey( spep_1-4 + 138, 1, 179, 666.2 , 0 );
setMoveKey( spep_1-4 + 140, 1, 180.7, 703.9 , 0 );
setMoveKey( spep_1-4 + 142, 1, 181.9, 730.8 , 0 );
setMoveKey( spep_1-4 + 144, 1, 182.7, 749.4 , 0 );
setMoveKey( spep_1-4 + 146, 1, 183.3, 761.5 , 0 );
setMoveKey( spep_1-4 + 148, 1, 183.6, 768.9 , 0 );
setMoveKey( spep_1-4 + 150, 1, 183.8, 772.9 , 0 );
setMoveKey( spep_1-4 + 152, 1, 183.9, 774.8 , 0 );
setMoveKey( spep_1-4 + 154, 1, 183.9, 775.5 , 0 );
setMoveKey( spep_1-4 + 156, 1, 183.9, 775.7 , 0 );

setScaleKey( spep_1 + 0, 1, 1.46, 1.46 );
setScaleKey( spep_1-4 + 44, 1, 1.46, 1.46 );
setScaleKey( spep_1-4 + 45, 1, 1.32, 1.32 );
setScaleKey( spep_1-4 + 96, 1, 1.32, 1.32 );
setScaleKey( spep_1-4 + 98, 1, 1.31, 1.31 );
setScaleKey( spep_1-4 + 100, 1, 1.31, 1.31 );
setScaleKey( spep_1-4 + 102, 1, 1.32, 1.32 );
setScaleKey( spep_1-4 + 124, 1, 1.32, 1.32 );
setScaleKey( spep_1-4 + 126, 1, 1.29, 1.29 );
setScaleKey( spep_1-4 + 128, 1, 1.26, 1.26 );
setScaleKey( spep_1-4 + 130, 1, 1.24, 1.24 );
setScaleKey( spep_1-4 + 132, 1, 1.22, 1.22 );
setScaleKey( spep_1-4 + 134, 1, 1.21, 1.21 );
setScaleKey( spep_1-4 + 136, 1, 1.2, 1.2 );
setScaleKey( spep_1-4 + 138, 1, 1.19, 1.19 );
setScaleKey( spep_1-4 + 140, 1, 1.18, 1.18 );
setScaleKey( spep_1-4 + 144, 1, 1.18, 1.18 );
setScaleKey( spep_1-4 + 146, 1, 1.17, 1.17 );
setScaleKey( spep_1-4 + 156, 1, 1.17, 1.17 );

setRotateKey( spep_1 + 0, 1, -0.2 );
setRotateKey( spep_1-4 + 44, 1, -0.2 );
setRotateKey( spep_1-4 + 45, 1, 0 );
setRotateKey( spep_1-4 + 46, 1, 0 );
setRotateKey( spep_1-4 + 47, 1, -54 );
setRotateKey( spep_1-4 + 48, 1, 0 );
setRotateKey( spep_1-4 + 58, 1, 0 );
setRotateKey( spep_1-4 + 59, 1, -54 );
setRotateKey( spep_1-4 + 60, 1, 0 );
setRotateKey( spep_1-4 + 72, 1, 0 );
setRotateKey( spep_1-4 + 73, 1, -54 );
setRotateKey( spep_1-4 + 74, 1, -54 );
setRotateKey( spep_1-4 + 75, 1, 0 );
setRotateKey( spep_1-4 + 76, 1, -54 );
setRotateKey( spep_1-4 + 77, 1, -54 );
setRotateKey( spep_1-4 + 78, 1, -53.4 );
setRotateKey( spep_1-4 + 79, 1, -53.4 );
setRotateKey( spep_1-4 + 80, 1, -52.8 );
setRotateKey( spep_1-4 + 81, 1, -52.8 );
setRotateKey( spep_1-4 + 82, 1, -52.2 );
setRotateKey( spep_1-4 + 84, 1, -51.6 );
setRotateKey( spep_1-4 + 85, 1, -51.6 );
setRotateKey( spep_1-4 + 86, 1, -51 );
setRotateKey( spep_1-4 + 89, 1, -51 );
setRotateKey( spep_1-4 + 90, 1, -51 );
setRotateKey( spep_1-4 + 91, 1, -37.4 );
setRotateKey( spep_1-4 + 92, 1, -80.1 );
setRotateKey( spep_1-4 + 94, 1, -99.2 );
setRotateKey( spep_1-4 + 96, 1, -114.8 );
setRotateKey( spep_1-4 + 98, 1, -127.7 );
setRotateKey( spep_1-4 + 100, 1, -138.4 );
setRotateKey( spep_1-4 + 102, 1, -145.7 );
setRotateKey( spep_1-4 + 104, 1, -152.1 );
setRotateKey( spep_1-4 + 115, 1, -152.1 );
setRotateKey( spep_1-4 + 116, 1, -81.7 );
setRotateKey( spep_1-4 + 156, 1, -81.7 );

--集中線
shuchusen2 = entryEffectLife( spep_1-3 + 44,  906, 6, 0x100, -1, 0, 0, 0.7 );
setEffShake( spep_1-3 + 44, shuchusen2, 6, 20 );
setEffMoveKey( spep_1-3 + 44, shuchusen2, 0, 0.7 , 0 );
setEffMoveKey( spep_1-3 + 50, shuchusen2, 0, 0.7 , 0 );

setEffScaleKey( spep_1-3 + 44, shuchusen2, 1.3, 1.3 );
setEffScaleKey( spep_1-3 + 50, shuchusen2, 1.3, 1.3 );

setEffRotateKey( spep_1-3 + 44, shuchusen2, 180 );
setEffRotateKey( spep_1-3 + 50, shuchusen2, 180 );

setEffAlphaKey( spep_1-3 + 44, shuchusen2, 255 );
setEffAlphaKey( spep_1-3 + 50, shuchusen2, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_1-3 + 58,  906, 6, 0x100, -1, 0, 0, 0.7 );
setEffShake( spep_1-3 + 58, shuchusen3, 6, 20 );
setEffMoveKey( spep_1-3 + 58,shuchusen3, 0, 0.7 , 0 );
setEffMoveKey( spep_1-3 + 64,shuchusen3, 0, 0.7 , 0 );

setEffScaleKey( spep_1-3 + 58,shuchusen3, 1.3, 1.3 );
setEffScaleKey( spep_1-3 + 64,shuchusen3, 1.3, 1.3 );

setEffRotateKey( spep_1-3 + 58,shuchusen3, 180 );
setEffRotateKey( spep_1-3 + 64,shuchusen3, 180 );

setEffAlphaKey( spep_1-3 + 58,shuchusen3, 255 );
setEffAlphaKey( spep_1-3 + 64,shuchusen3, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_1-3 + 72,  906, 6, 0x100, -1, 0, 0, -13.3 );
setEffShake( spep_1-3 + 72, shuchusen4, 6, 20 );
setEffMoveKey( spep_1-3 + 72, shuchusen4, 0, -13.3 , 0 );
setEffMoveKey( spep_1-3 + 78, shuchusen4, 0, -13.3 , 0 );

setEffScaleKey( spep_1-3 + 72, shuchusen4, 1.3, 1.5 );
setEffScaleKey( spep_1-3 + 78, shuchusen4, 1.3, 1.5 );

setEffRotateKey( spep_1-3 + 72, shuchusen4, 180 );
setEffRotateKey( spep_1-3 + 78, shuchusen4, 180 );

setEffAlphaKey( spep_1-3 + 72, shuchusen4, 255 );
setEffAlphaKey( spep_1-3 + 78, shuchusen4, 255 );

--集中線
shuchusen5 = entryEffectLife( spep_1-3 + 96,  906, 6, 0x100, -1, 0, 0, -13.3 );
setEffShake( spep_1-3 + 96, shuchusen5, 6, 20 );
setEffMoveKey( spep_1-3 + 96, shuchusen5, 0, -13.3 , 0 );
setEffMoveKey( spep_1-3 + 102, shuchusen5, 0, -13.3 , 0 );

setEffScaleKey( spep_1-3 + 96, shuchusen5, 1.3, 1.5 );
setEffScaleKey( spep_1-3 + 102, shuchusen5, 1.3, 1.5 );

setEffRotateKey( spep_1-3 + 96, shuchusen5, 180 );
setEffRotateKey( spep_1-3 + 102, shuchusen5, 180 );

setEffAlphaKey( spep_1-3 + 96, shuchusen5, 255 );
setEffAlphaKey( spep_1-3 + 102, shuchusen5, 255 );

--集中線
shuchusen6 = entryEffectLife( spep_1-3 + 116,  906, 16, 0x100, -1, 0, 0, -110.4 );
setEffShake( spep_1-3 + 116, shuchusen6, 16, 20 );
setEffMoveKey( spep_1-3 + 116, shuchusen6, 0, -110.4 , 0 );
setEffMoveKey( spep_1-3 + 132, shuchusen6, 0, -110.4 , 0 );

setEffScaleKey( spep_1-3 + 116, shuchusen6, 1.2, 1.6 );
setEffScaleKey( spep_1-3 + 132, shuchusen6, 1.2, 1.6 );

setEffRotateKey( spep_1-3 + 116, shuchusen6, 180 );
setEffRotateKey( spep_1-3 + 132, shuchusen6, 180 );

setEffAlphaKey( spep_1-3 + 116, shuchusen6, 255 );
setEffAlphaKey( spep_1-3 + 132, shuchusen6, 255 );

--文字エントリー
ctga = entryEffectLife( spep_1 + 41,  10005, 6, 0x100, -1, 0, 80.1, -276.7 );

setEffMoveKey( spep_1  + 41, ctga, 80.1, -276.7 , 0 );
setEffMoveKey( spep_1  + 43, ctga, 74.6, -305 , 0 );
setEffMoveKey( spep_1  + 45, ctga, 69, -333.4 , 0 );
setEffMoveKey( spep_1  + 47, ctga, 63.5, -361.7 , 0 );

setEffScaleKey( spep_1  + 41, ctga, 1.35, 1.35 );
--setEffScaleKey( spep_1  + 45, ctga, 1.42, 1.42 );
setEffScaleKey( spep_1  + 47, ctga, 1.65, 1.65);

setEffRotateKey( spep_1  + 41, ctga, 15.1 );
setEffRotateKey( spep_1  + 45, ctga, 15.1 );
setEffRotateKey( spep_1  + 47, ctga, 15 );

setEffAlphaKey( spep_1  + 41, ctga, 255 );
setEffAlphaKey( spep_1  + 47, ctga, 255 );

--文字エントリー
ctga2 = entryEffectLife( spep_1 -3 + 58,  10005, 6, 0x100, -1, 0, 139.4, 189.9 );

setEffMoveKey( spep_1 -3 + 58, ctga2, 139.4, 189.9 , 0 );
setEffMoveKey( spep_1 -3 + 60, ctga2, 137.5, 195.1 , 0 );
setEffMoveKey( spep_1 -3 + 62, ctga2, 135.7, 200.3 , 0 );
setEffMoveKey( spep_1 -3 + 64, ctga2, 133.8, 205.5 , 0 );

setEffScaleKey( spep_1 -3 + 58, ctga2, 1.27, 1.27 );
setEffScaleKey( spep_1 -3 + 60, ctga2, 1.35, 1.35 );
setEffScaleKey( spep_1 -3 + 62, ctga2, 1.42, 1.42 );
setEffScaleKey( spep_1 -3 + 64, ctga2, 1.65, 1.65 );

setEffRotateKey( spep_1 -3 + 58, ctga2, -12.3 );
setEffRotateKey( spep_1 -3 + 64, ctga2, -12.3 );

setEffAlphaKey( spep_1 -3 + 58, ctga2, 255 );
setEffAlphaKey( spep_1 -3 + 64, ctga2, 255 );

--文字エントリー
ctga3 = entryEffectLife( spep_1 -3 + 72,  10005, 6, 0x100, -1, 0, 90.3, -291.9 );

setEffMoveKey( spep_1 -3 + 72, ctga3, 90.3, -291.9 , 0 );
setEffMoveKey( spep_1 -3 + 74, ctga3, 85, -311.5 , 0 );
setEffMoveKey( spep_1 -3 + 76, ctga3, 79.7, -331.1 , 0 );
setEffMoveKey( spep_1 -3 + 78, ctga3, 74.3, -350.8 , 0 );

setEffScaleKey( spep_1 -3 + 72, ctga3, 1.27, 1.27 );
setEffScaleKey( spep_1 -3 + 74, ctga3, 1.35, 1.35 );
setEffScaleKey( spep_1 -3 + 76, ctga3, 1.42, 1.42 );
setEffScaleKey( spep_1 -3 + 78, ctga3, 1.65, 1.65 );

setEffRotateKey( spep_1 -3 + 72, ctga3, -12.3 );
setEffRotateKey( spep_1 -3 + 78, ctga3, -12.3 );

setEffAlphaKey( spep_1 -3 + 72, ctga3, 255 );
setEffAlphaKey( spep_1 -3 + 78, ctga3, 255 );

--文字エントリー
ctdon = entryEffectLife( spep_1-3 + 88, 10019, 16, 0x100, -1, 0, 188, 209.9 );

setEffMoveKey( spep_1-3 + 88, ctdon, 188, 209.9 , 0 );
setEffMoveKey( spep_1-3 + 90, ctdon, 179.5, 172.4 , 0 );
setEffMoveKey( spep_1-3 + 92, ctdon, 180.8, 167.2 , 0 );
setEffMoveKey( spep_1-3 + 94, ctdon, 183.5, 172.2 , 0 );
setEffMoveKey( spep_1-3 + 96, ctdon, 180.1, 166.5 , 0 );
setEffMoveKey( spep_1-3 + 98, ctdon, 180.4, 174.5 , 0 );
setEffMoveKey( spep_1-3 + 100, ctdon, 178.7, 172.9 , 0 );
setEffMoveKey( spep_1-3 + 102, ctdon, 180.5, 166.2 , 0 );
setEffMoveKey( spep_1-3 + 104, ctdon, 178.7, 172.9 , 0 );

setEffScaleKey( spep_1-3 + 88, ctdon, 0.84, 0.84 );
setEffScaleKey( spep_1-3 + 90, ctdon, 1.5, 1.5 );
setEffScaleKey( spep_1-3 + 92, ctdon, 1.6, 1.6 );
setEffScaleKey( spep_1-3 + 94, ctdon, 1.7, 1.7 );
setEffScaleKey( spep_1-3 + 96, ctdon, 1.8, 1.8 );
setEffScaleKey( spep_1-3 + 98, ctdon, 1.9, 1.9 );
setEffScaleKey( spep_1-3 + 100, ctdon, 2, 2 );
setEffScaleKey( spep_1-3 + 104, ctdon, 2, 2 );

setEffRotateKey( spep_1-3 + 88, ctdon, 24.6 );
setEffRotateKey( spep_1-3 + 90, ctdon, 24.7 );
setEffRotateKey( spep_1-3 + 92, ctdon, 24.7 );
setEffRotateKey( spep_1-3 + 94, ctdon, 24.6 );
setEffRotateKey( spep_1-3 + 104, ctdon, 24.6 );

setEffAlphaKey( spep_1-3 + 88, ctdon, 26 );
setEffAlphaKey( spep_1-3 + 90, ctdon, 255 );
setEffAlphaKey( spep_1-3 + 100, ctdon, 255 );
setEffAlphaKey( spep_1-3 + 102, ctdon, 134 );
setEffAlphaKey( spep_1-3 + 104, ctdon, 13 );

--文字エントリー
ctzuo = entryEffectLife( spep_1-3 + 122,  10012, 22, 0x100, -1, 0, 136, 0.3 );
setEffShake( spep_1-3 + 122, ctzuo, 22, 10 );
setEffMoveKey( spep_1-3 + 122, ctzuo, 136, 0.3 , 0 );
setEffMoveKey( spep_1-3 + 124, ctzuo, 144.9, 56.7 , 0 );
setEffMoveKey( spep_1-3 + 126, ctzuo, 130.3, 136.8 , 0 );
setEffMoveKey( spep_1-3 + 128, ctzuo, 153.6, 135.3 , 0 );
setEffMoveKey( spep_1-3 + 130, ctzuo, 144.9, 165.8 , 0 );
setEffMoveKey( spep_1-3 + 132, ctzuo, 168.3, 164.3 , 0 );
setEffMoveKey( spep_1-3 + 134, ctzuo, 159.6, 194.8 , 0 );
setEffMoveKey( spep_1-3 + 136, ctzuo, 182.9, 193.3 , 0 );
setEffMoveKey( spep_1-3 + 138, ctzuo, 174.3, 223.8 , 0 );
setEffMoveKey( spep_1-3 + 140, ctzuo, 190.3, 207.8 , 0 );
setEffMoveKey( spep_1-3 + 142, ctzuo, 174.3, 223.8 , 0 );
setEffMoveKey( spep_1-3 + 144, ctzuo, 174.3, 223.8 , 0 );

setEffScaleKey( spep_1-3 + 122, ctzuo, 1.08, 1.08 );
--setEffScaleKey( spep_1-3 + 124, ctzuo, 1.29, 1.29 );
setEffScaleKey( spep_1-3 + 126, ctzuo, 2.5, 2.5 );
setEffScaleKey( spep_1-3 + 144, ctzuo, 2.5, 2.5 );

setEffRotateKey( spep_1-3 + 122, ctzuo, 20 );
setEffRotateKey( spep_1-3 + 144, ctzuo, 20 );

setEffAlphaKey( spep_1-3 + 122, ctzuo, 26 );
setEffAlphaKey( spep_1-3 + 124, ctzuo, 140 );
setEffAlphaKey( spep_1-3 + 126, ctzuo, 255 );
setEffAlphaKey( spep_1-3 + 138, ctzuo, 255 );
setEffAlphaKey( spep_1-3 + 140, ctzuo, 174 );
setEffAlphaKey( spep_1-3 + 142, ctzuo, 94 );
setEffAlphaKey( spep_1-3 + 144, ctzuo, 13 );

--SE
playSe( spep_1 + 24, 1109 );
playSe( spep_1 + 48, 1189 );
playSe( spep_1 + 52, 1000 );
playSe( spep_1 + 52, 1006 );
playSe( spep_1 + 52, 1110 );
setSeVolume( spep_1 + 52, 1110, 79 );
playSe( spep_1 + 68, 1006 );
playSe( spep_1 + 68, 1000 );
setSeVolume( spep_1 + 68, 1000, 78 );
playSe( spep_1 + 68, 1110 );
playSe( spep_1 + 84, 1006 );
setSeVolume( spep_1 + 84, 1006, 71 );
playSe( spep_1 + 84, 1000 );
playSe( spep_1 + 84, 1110 );
setSeVolume( spep_1 + 84, 1110, 79 );
playSe( spep_1 + 102, 1009 );
playSe( spep_1 + 102, 1110 );
playSe( spep_1 + 128, 19 );
playSe( spep_1 + 128, 1061 );
setSeVolume( spep_1 + 128, 1061, 78 );
playSe( spep_1 + 128, 1047 );
setSeVolume( spep_1 + 128, 1047, 76 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 160, 0,  0, 0, 0, 200 ); --くろ 背景

--白フェード
entryFade( spep_1 + 152, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2=spep_1+160;

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

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );


--白フェード
entryFade( spep_2 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
------------------------------------------------------
-- 気弾生成→連弾攻撃→爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 270, finish_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 270, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 270, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 270, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 270, finish_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 270, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 270, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 270, finish_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-4 + 138, 1, 0 );

changeAnime( spep_3 + 0, 1, 108 );
changeAnime( spep_3-4 + 117, 1, 106 );
changeAnime( spep_3-4 + 119, 1, 108 );
changeAnime( spep_3-4 + 121, 1, 106 );
changeAnime( spep_3-4 + 122, 1, 108 );

setMoveKey( spep_3 + 0, 1, 101, -906.1 , 0 );
--setMoveKey( spep_3-4 + 2, 1, 97.7, -696.3 , 0 );
--setMoveKey( spep_3-4 + 4, 1, 95.6, -555.5 , 0 );
setMoveKey( spep_3-4 + 6, 1, 94.1, -451.4 , 0 );
setMoveKey( spep_3-4 + 8, 1, 93, -371.7 , 0 );
setMoveKey( spep_3-4 + 10, 1, 92.1, -309.3 , 0 );
setMoveKey( spep_3-4 + 12, 1, 91.3, -259.4 , 0 );
setMoveKey( spep_3-4 + 14, 1, 90.6, -218.8 , 0 );
setMoveKey( spep_3-4 + 16, 1, 90, -184.8 , 0 );
setMoveKey( spep_3-4 + 18, 1, 89.4, -155.5 , 0 );
setMoveKey( spep_3-4 + 20, 1, 88.8, -129.2 , 0 );
setMoveKey( spep_3-4 + 22, 1, 88.3, -104.7 , 0 );
setMoveKey( spep_3-4 + 24, 1, 87.8, -81.8 , 0 );
setMoveKey( spep_3-4 + 26, 1, 87.3, -60.2 , 0 );
setMoveKey( spep_3-4 + 28, 1, 86.9, -39.9 , 0 );
setMoveKey( spep_3-4 + 30, 1, 86.5, -20.6 , 0 );
setMoveKey( spep_3-4 + 32, 1, 86.1, -2.3 , 0 );
setMoveKey( spep_3-4 + 34, 1, 85.8, 15.1 , 0 );
setMoveKey( spep_3-4 + 36, 1, 85.4, 31.7 , 0 );
setMoveKey( spep_3-4 + 38, 1, 85.1, 47.5 , 0 );
setMoveKey( spep_3-4 + 40, 1, 84.8, 62.5 , 0 );
setMoveKey( spep_3-4 + 42, 1, 84.5, 76.9 , 0 );
setMoveKey( spep_3-4 + 44, 1, 84.3, 90.7 , 0 );
setMoveKey( spep_3-4 + 46, 1, 84, 103.8 , 0 );
setMoveKey( spep_3-4 + 48, 1, 83.7, 116.4 , 0 );
setMoveKey( spep_3-4 + 50, 1, 83.8, 130 , 0 );
setMoveKey( spep_3-4 + 52, 1, 83.8, 143.1 , 0 );
setMoveKey( spep_3-4 + 54, 1, 83.9, 155.7 , 0 );
setMoveKey( spep_3-4 + 56, 1, 83.9, 167.8 , 0 );
setMoveKey( spep_3-4 + 58, 1, 84, 179.4 , 0 );
setMoveKey( spep_3-4 + 60, 1, 84.1, 190.6 , 0 );
setMoveKey( spep_3-4 + 62, 1, 84.1, 201.4 , 0 );
setMoveKey( spep_3-4 + 64, 1, 84.2, 211.8 , 0 );
setMoveKey( spep_3-4 + 66, 1, 84.3, 221.8 , 0 );
setMoveKey( spep_3-4 + 68, 1, 84.4, 231.3 , 0 );
setMoveKey( spep_3-4 + 70, 1, 84.5, 240.5 , 0 );
setMoveKey( spep_3-4 + 72, 1, 84.6, 249.3 , 0 );
setMoveKey( spep_3-4 + 74, 1, 84.7, 257.8 , 0 );
setMoveKey( spep_3-4 + 76, 1, 84.9, 265.9 , 0 );
setMoveKey( spep_3-4 + 78, 1, 85, 273.5 , 0 );
setMoveKey( spep_3-4 + 80, 1, 85.1, 280.9 , 0 );
setMoveKey( spep_3-4 + 82, 1, 85.3, 287.8 , 0 );
setMoveKey( spep_3-4 + 84, 1, 85.4, 294.4 , 0 );
setMoveKey( spep_3-4 + 86, 1, 85.6, 300.5 , 0 );
setMoveKey( spep_3-4 + 88, 1, 85.7, 306.3 , 0 );
setMoveKey( spep_3-4 + 90, 1, 85.9, 311.6 , 0 );
setMoveKey( spep_3-4 + 92, 1, 86, 316.4 , 0 );
setMoveKey( spep_3-4 + 94, 1, 86.2, 320.7 , 0 );
setMoveKey( spep_3-4 + 96, 1, 86.3, 324.4 , 0 );
setMoveKey( spep_3-4 + 98, 1, 86.5, 327.4 , 0 );
setMoveKey( spep_3-4 + 100, 1, 86.7, 329.4 , 0 );
setMoveKey( spep_3-4 + 102, 1, 86.9, 330.8 , 0 );
setMoveKey( spep_3-4 + 104, 1, 87, 332.2 , 0 );
setMoveKey( spep_3-4 + 106, 1, 87.4, 334.2 , 0 );
setMoveKey( spep_3-4 + 108, 1, 87.7, 336.2 , 0 );
setMoveKey( spep_3-4 + 110, 1, 88, 338.2 , 0 );
setMoveKey( spep_3-4 + 112, 1, 88.4, 340.2 , 0 );
setMoveKey( spep_3-4 + 115, 1, 88.7, 342.2 , 0 );
setMoveKey( spep_3-4 + 117, 1, 79.9, 358.7 , 0 );
setMoveKey( spep_3-4 + 119, 1, 92.7, 349 , 0 );
setMoveKey( spep_3-4 + 121, 1, 80.3, 361.3 , 0 );
setMoveKey( spep_3-4 + 122, 1, 89.1, 355.6 , 0 );
setMoveKey( spep_3-4 + 124, 1, 96, 355.3 , 0 );
setMoveKey( spep_3-4 + 126, 1, 97.5, 353.8 , 0 );
setMoveKey( spep_3-4 + 128, 1, 91, 352.3 , 0 );
setMoveKey( spep_3-4 + 130, 1, 89.9, 360.3 , 0 );
setMoveKey( spep_3-4 + 132, 1, 96.9, 360.2 , 0 );
setMoveKey( spep_3-4 + 134, 1, 96.3, 352.7 , 0 );
setMoveKey( spep_3-4 + 136, 1, 89.6, 350 , 0 );
setMoveKey( spep_3-4 + 138, 1, 88.3, 356.7 , 0 );

setScaleKey( spep_3 + 0, 1, 0.99, 0.99 );
--setScaleKey( spep_3-4 + 2, 1, 0.92, 0.92 );
--setScaleKey( spep_3-4 + 4, 1, 0.87, 0.87 );
setScaleKey( spep_3-4 + 6, 1, 0.83, 0.83 );
setScaleKey( spep_3-4 + 8, 1, 0.8, 0.8 );
setScaleKey( spep_3-4 + 10, 1, 0.78, 0.78 );
setScaleKey( spep_3-4 + 12, 1, 0.76, 0.76 );
setScaleKey( spep_3-4 + 14, 1, 0.75, 0.75 );
setScaleKey( spep_3-4 + 138, 1, 0.75, 0.75 );

setRotateKey( spep_3 + 0, 1, -70 );
--setRotateKey( spep_3 + 2, 1, -71.7 );
--setRotateKey( spep_3-4 + 4, 1, -72.9 );
setRotateKey( spep_3-4 + 6, 1, -73.8 );
setRotateKey( spep_3-4 + 8, 1, -74.5 );
setRotateKey( spep_3-4 + 10, 1, -75.2 );
setRotateKey( spep_3-4 + 12, 1, -75.7 );
setRotateKey( spep_3-4 + 14, 1, -76.2 );
setRotateKey( spep_3-4 + 16, 1, -76.7 );
setRotateKey( spep_3-4 + 18, 1, -77.1 );
setRotateKey( spep_3-4 + 20, 1, -77.5 );
setRotateKey( spep_3-4 + 22, 1, -77.8 );
setRotateKey( spep_3-4 + 24, 1, -78.1 );
setRotateKey( spep_3-4 + 26, 1, -78.4 );
setRotateKey( spep_3-4 + 28, 1, -78.6 );
setRotateKey( spep_3-4 + 30, 1, -78.9 );
setRotateKey( spep_3-4 + 32, 1, -79.1 );
setRotateKey( spep_3-4 + 34, 1, -79.3 );
setRotateKey( spep_3-4 + 36, 1, -79.5 );
setRotateKey( spep_3-4 + 38, 1, -79.7 );
setRotateKey( spep_3-4 + 40, 1, -79.9 );
setRotateKey( spep_3-4 + 42, 1, -80 );
setRotateKey( spep_3-4 + 44, 1, -80.2 );
setRotateKey( spep_3-4 + 46, 1, -80.3 );
setRotateKey( spep_3-4 + 48, 1, -80.5 );
setRotateKey( spep_3-4 + 50, 1, -80.6 );
setRotateKey( spep_3-4 + 52, 1, -80.7 );
setRotateKey( spep_3-4 + 54, 1, -80.8 );
setRotateKey( spep_3-4 + 56, 1, -80.9 );
setRotateKey( spep_3-4 + 58, 1, -81 );
setRotateKey( spep_3-4 + 60, 1, -81.1 );
setRotateKey( spep_3-4 + 62, 1, -81.2 );
setRotateKey( spep_3-4 + 64, 1, -81.3 );
setRotateKey( spep_3-4 + 66, 1, -81.4 );
setRotateKey( spep_3-4 + 68, 1, -81.5 );
setRotateKey( spep_3-4 + 70, 1, -81.6 );
setRotateKey( spep_3-4 + 72, 1, -81.7 );
setRotateKey( spep_3-4 + 74, 1, -81.7 );
setRotateKey( spep_3-4 + 76, 1, -81.8 );
setRotateKey( spep_3-4 + 78, 1, -81.9 );
setRotateKey( spep_3-4 + 80, 1, -82 );
setRotateKey( spep_3-4 + 82, 1, -82 );
setRotateKey( spep_3-4 + 84, 1, -82.1 );
setRotateKey( spep_3-4 + 86, 1, -82.2 );
setRotateKey( spep_3-4 + 88, 1, -82.2 );
setRotateKey( spep_3-4 + 90, 1, -82.3 );
setRotateKey( spep_3-4 + 92, 1, -82.4 );
setRotateKey( spep_3-4 + 94, 1, -82.5 );
setRotateKey( spep_3-4 + 96, 1, -82.6 );
setRotateKey( spep_3-4 + 98, 1, -82.7 );
setRotateKey( spep_3-4 + 100, 1, -82.8 );
setRotateKey( spep_3-4 + 102, 1, -82.9 );
setRotateKey( spep_3-4 + 104, 1, -83 );
setRotateKey( spep_3-4 + 106, 1, -83.2 );
setRotateKey( spep_3-4 + 108, 1, -83.3 );
setRotateKey( spep_3-4 + 110, 1, -83.5 );
setRotateKey( spep_3-4 + 112, 1, -83.7 );
setRotateKey( spep_3-4 + 115, 1, -84 );
setRotateKey( spep_3-4 + 117, 1, -85.1 );
setRotateKey( spep_3-4 + 119, 1, -70 );
setRotateKey( spep_3-4 + 121, 1, -85.1 );
setRotateKey( spep_3-4 + 122, 1, -70 );
setRotateKey( spep_3-4 + 138, 1, -70 );

--流線
ryusen1 = entryEffectLife( spep_3 ,  914, 116-1, 0x80, -1, 0, 1, 0 );

setEffMoveKey( spep_3 , ryusen1, 1, 0 , 0 )
setEffMoveKey( spep_3-3 + 118, ryusen1, 1, 0 , 0 )

setEffScaleKey( spep_3 , ryusen1, 6, 1.5 );
setEffScaleKey( spep_3-3 + 118, ryusen1, 6, 1.5 );

setEffRotateKey( spep_3 , ryusen1, 90 );
setEffRotateKey( spep_3-3 + 118, ryusen1, 90 );

setEffAlphaKey( spep_3-3 , ryusen1, 0 );
--setEffAlphaKey( spep_3-3 + 4, ryusen1, 3 );
setEffAlphaKey( spep_3-3 + 6, ryusen1, 24 );
setEffAlphaKey( spep_3-3 + 8, ryusen1, 102 );
setEffAlphaKey( spep_3-3 + 88, ryusen1, 102 );
setEffAlphaKey( spep_3-3 + 90, ryusen1, 102 );
setEffAlphaKey( spep_3-3 + 92, ryusen1, 101 );
setEffAlphaKey( spep_3-3 + 94, ryusen1, 101 );
setEffAlphaKey( spep_3-3 + 96, ryusen1, 100 );
setEffAlphaKey( spep_3-3 + 98, ryusen1, 98 );
setEffAlphaKey( spep_3-3 + 100, ryusen1, 96 );
setEffAlphaKey( spep_3-3 + 102, ryusen1, 93 );
setEffAlphaKey( spep_3-3 + 104, ryusen1, 88 );
setEffAlphaKey( spep_3-3 + 106, ryusen1, 82 );
setEffAlphaKey( spep_3-3 + 108, ryusen1, 75 );
setEffAlphaKey( spep_3-3 + 110, ryusen1, 67 );
setEffAlphaKey( spep_3-3 + 112, ryusen1, 56 );
setEffAlphaKey( spep_3-3 + 114, ryusen1, 44 );
setEffAlphaKey( spep_3-3 + 116, ryusen1, 30 );
setEffAlphaKey( spep_3-3 + 118, ryusen1, 13 );

--SE
playSe( spep_3 + 10, 1042 );
playSe( spep_3 + 10, 1179 );
playSe( spep_3 + 34, 1225 );
setSeVolume( spep_3 + 34, 1225, 158 );
se_1184 = playSe( spep_3 + 58, 1184 );
setSeVolume( spep_3 + 58, 1184, 89 );
se_1200 = playSe( spep_3 + 58, 1200 );
setSeVolume( spep_3 + 58, 1200, 141 );
se_1204 = playSe( spep_3 + 58, 1204 );
setSeVolume( spep_3 + 58, 1204, 79 );
se_1239 = playSe( spep_3 + 58, 1239 );
playSe( spep_3 + 116, 1023 );
playSe( spep_3 + 128, 1011 );
playSe( spep_3 + 128, 1067 );
setSeVolume( spep_3 + 128, 1067, 79 );

stopSe( spep_3 + 117, se_1184, 17 );
stopSe( spep_3 + 134, se_1200, 0 );
stopSe( spep_3 + 134, se_1204, 0 );
stopSe( spep_3 + 134, se_1239, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 270, 0,  0, 0, 0, 200 ); --くろ 背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 132 );
endPhase( spep_3 + 260 );
else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- セリフカットイン→瞬間移動
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
move = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, move, 0, 0, 0 );
setEffMoveKey( spep_0 + 172, move, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, move, 1.0, 1.0 );
setEffScaleKey( spep_0 + 172, move, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, move, 0 );
setEffRotateKey( spep_0 + 172, move, 0 );
setEffAlphaKey( spep_0 + 0, move, 255 );
setEffAlphaKey( spep_0 + 172, move, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 172, 0,  0, 0, 0, 200 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );


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
--集中線
shuchusen1 = entryEffectLife( spep_0,  906, 170 -3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0, shuchusen1, 170-3, 20 );
setEffMoveKey( spep_0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 170, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0, shuchusen1, 1.5, 1.5 );
setEffScaleKey( spep_0-3 + 170, shuchusen1, 1.5, 1.5 );

setEffRotateKey( spep_0, shuchusen1, 180 );
setEffRotateKey( spep_0-3 + 170, shuchusen1, 180 );

setEffAlphaKey( spep_0, shuchusen1, 0 );
setEffAlphaKey( spep_0-3 + 115, shuchusen1, 0 );
setEffAlphaKey( spep_0-3 + 116, shuchusen1, 26 );
setEffAlphaKey( spep_0-3 + 118, shuchusen1, 102 );
setEffAlphaKey( spep_0-3 + 120, shuchusen1, 179 );
setEffAlphaKey( spep_0-3 + 122, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 166, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 168, shuchusen1, 140 );
setEffAlphaKey( spep_0-3 + 170, shuchusen1, 26 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+36  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0+36  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +48, 190006, 72, 0x102, -1, 0, 100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +48,  ctgogo,  100,  510);
setEffMoveKey(  spep_0 +120,  ctgogo,  100,  510);

setEffAlphaKey( spep_0 +48, ctgogo, 0 );
setEffAlphaKey( spep_0 + 49, ctgogo, 255 );
setEffAlphaKey( spep_0 + 50, ctgogo, 255 );
setEffAlphaKey( spep_0 + 106, ctgogo, 255 );
setEffAlphaKey( spep_0 + 108, ctgogo, 191 );
setEffAlphaKey( spep_0 + 110, ctgogo, 112 );
setEffAlphaKey( spep_0 + 120, ctgogo, 64 );

setEffRotateKey(  spep_0 +48,  ctgogo,  0);
setEffRotateKey(  spep_0 +120,  ctgogo,  0);

setEffScaleKey(  spep_0 +48,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +110,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +120,  ctgogo, -1.07, 1.07 );

--SE
playSe( spep_0 + 48, 1018 );
se_1115 = playSe( spep_0 + 118, 1115 );
playSe( spep_0 + 120, 1042 );
playSe( spep_0 + 154, 1109 );

stopSe( spep_0 + 153, se_1115, 12 );

--白フェード
entryFade( spep_0+164 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade



-- ** 次の準備 ** --
spep_1=spep_0+172;

------------------------------------------------------
-- 杖ラッシュ→上に飛ばす
------------------------------------------------------
-- ** エフェクト等 ** --
rush_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, rush_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 160, rush_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 160, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_f, 0 );
setEffRotateKey( spep_1 + 160, rush_f, 0 );
setEffAlphaKey( spep_1 + 0, rush_f, 255 );
setEffAlphaKey( spep_1 + 160, rush_f, 255 );

-- ** エフェクト等 ** --
rush_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, rush_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 160, rush_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 160, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_b, 0 );
setEffRotateKey( spep_1 + 160, rush_b, 0 );
setEffAlphaKey( spep_1 + 0, rush_b, 255 );
setEffAlphaKey( spep_1 + 160, rush_b, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-4 + 156, 1, 0 );

changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1-4 + 45, 1, 108 );
changeAnime( spep_1-4 + 47, 1, 106 );
changeAnime( spep_1-4 + 48, 1, 108 );
changeAnime( spep_1-4 + 59, 1, 106 );
changeAnime( spep_1-4 + 60, 1, 108 );
changeAnime( spep_1-4 + 73, 1, 106 );
changeAnime( spep_1-4 + 75, 1, 108 );
changeAnime( spep_1-4 + 76, 1, 106 );
changeAnime( spep_1-4 + 91, 1, 108 );
changeAnime( spep_1-4 + 92, 1, 106 );
changeAnime( spep_1-4 + 116, 1, 108 );

setMoveKey( spep_1 + 0, 1, 163.8, -107 , 0 );
setMoveKey( spep_1-4 + 44, 1, 163.8, -107 , 0 );
setMoveKey( spep_1-4 + 45, 1, 245.2, -75 , 0 );
setMoveKey( spep_1-4 + 47, 1, 207, -55.4 , 0 );
setMoveKey( spep_1-4 + 48, 1, 245.2, -75 , 0 );
setMoveKey( spep_1-4 + 50, 1, 250.3, -79.9 , 0 );
setMoveKey( spep_1-4 + 52, 1, 253, -82.6 , 0 );
setMoveKey( spep_1-4 + 54, 1, 254.5, -84.1 , 0 );
setMoveKey( spep_1-4 + 57, 1, 255.4, -85 , 0 );
setMoveKey( spep_1-4 + 59, 1, 207, -55.4 , 0 );
setMoveKey( spep_1-4 + 60, 1, 255.4, -85 , 0 );
setMoveKey( spep_1-4 + 62, 1, 259, -85.8 , 0 );
setMoveKey( spep_1-4 + 64, 1, 262.9, -86.7 , 0 );
setMoveKey( spep_1-4 + 66, 1, 267.1, -87.7 , 0 );
setMoveKey( spep_1-4 + 68, 1, 271.7, -88.8 , 0 );
setMoveKey( spep_1-4 + 71, 1, 276.6, -90 , 0 );
setMoveKey( spep_1-4 + 73, 1, 171, -45 , 0 );
setMoveKey( spep_1-4 + 75, 1, 257.6, -85 , 0 );
setMoveKey( spep_1-4 + 76, 1, 211.8, -1 , 0 );
setMoveKey( spep_1-4 + 78, 1, 213.4, 2.5 , 0 );
setMoveKey( spep_1-4 + 80, 1, 215, 6 , 0 );
setMoveKey( spep_1-4 + 82, 1, 216.6, 9.6 , 0 );
setMoveKey( spep_1-4 + 84, 1, 218.2, 13.1 , 0 );
setMoveKey( spep_1-4 + 86, 1, 219.8, 16.6 , 0 );
setMoveKey( spep_1-4 + 89, 1, 219.8, 16.6 , 0 );
setMoveKey( spep_1-4 + 91, 1, 227.7, 17 , 0 );
setMoveKey( spep_1-4 + 92, 1, 197.8, -10.3 , 0 );
setMoveKey( spep_1-4 + 94, 1, 176.7, -82.5 , 0 );
setMoveKey( spep_1-4 + 96, 1, 159.5, -141.5 , 0 );
setMoveKey( spep_1-4 + 98, 1, 145.4, -190.2 , 0 );
setMoveKey( spep_1-4 + 100, 1, 133.5, -230.7 , 0 );
setMoveKey( spep_1-4 + 102, 1, 125.4, -258.4 , 0 );
setMoveKey( spep_1-4 + 104, 1, 118.6, -282.4 , 0 );
setMoveKey( spep_1-4 + 115, 1, 118.6, -282.4 , 0 );
setMoveKey( spep_1-4 + 116, 1, 142.7, -138.9 , 0 );
setMoveKey( spep_1-4 + 118, 1, 165.7, -121.1 , 0 );
setMoveKey( spep_1-4 + 120, 1, 142.1, -144.4 , 0 );
setMoveKey( spep_1-4 + 122, 1, 162.2, -153.7 , 0 );
setMoveKey( spep_1-4 + 124, 1, 142.7, -138.9 , 0 );
setMoveKey( spep_1-4 + 126, 1, 151.5, 58 , 0 );
setMoveKey( spep_1-4 + 128, 1, 158.9, 221.3 , 0 );
setMoveKey( spep_1-4 + 130, 1, 164.9, 355 , 0 );
setMoveKey( spep_1-4 + 132, 1, 169.8, 462.9 , 0 );
setMoveKey( spep_1-4 + 134, 1, 173.7, 548.6 , 0 );
setMoveKey( spep_1-4 + 136, 1, 176.7, 615.4 , 0 );
setMoveKey( spep_1-4 + 138, 1, 179, 666.2 , 0 );
setMoveKey( spep_1-4 + 140, 1, 180.7, 703.9 , 0 );
setMoveKey( spep_1-4 + 142, 1, 181.9, 730.8 , 0 );
setMoveKey( spep_1-4 + 144, 1, 182.7, 749.4 , 0 );
setMoveKey( spep_1-4 + 146, 1, 183.3, 761.5 , 0 );
setMoveKey( spep_1-4 + 148, 1, 183.6, 768.9 , 0 );
setMoveKey( spep_1-4 + 150, 1, 183.8, 772.9 , 0 );
setMoveKey( spep_1-4 + 152, 1, 183.9, 774.8 , 0 );
setMoveKey( spep_1-4 + 154, 1, 183.9, 775.5 , 0 );
setMoveKey( spep_1-4 + 156, 1, 183.9, 775.7 , 0 );

setScaleKey( spep_1 + 0, 1, 1.46, 1.46 );
setScaleKey( spep_1-4 + 44, 1, 1.46, 1.46 );
setScaleKey( spep_1-4 + 45, 1, 1.32, 1.32 );
setScaleKey( spep_1-4 + 96, 1, 1.32, 1.32 );
setScaleKey( spep_1-4 + 98, 1, 1.31, 1.31 );
setScaleKey( spep_1-4 + 100, 1, 1.31, 1.31 );
setScaleKey( spep_1-4 + 102, 1, 1.32, 1.32 );
setScaleKey( spep_1-4 + 124, 1, 1.32, 1.32 );
setScaleKey( spep_1-4 + 126, 1, 1.29, 1.29 );
setScaleKey( spep_1-4 + 128, 1, 1.26, 1.26 );
setScaleKey( spep_1-4 + 130, 1, 1.24, 1.24 );
setScaleKey( spep_1-4 + 132, 1, 1.22, 1.22 );
setScaleKey( spep_1-4 + 134, 1, 1.21, 1.21 );
setScaleKey( spep_1-4 + 136, 1, 1.2, 1.2 );
setScaleKey( spep_1-4 + 138, 1, 1.19, 1.19 );
setScaleKey( spep_1-4 + 140, 1, 1.18, 1.18 );
setScaleKey( spep_1-4 + 144, 1, 1.18, 1.18 );
setScaleKey( spep_1-4 + 146, 1, 1.17, 1.17 );
setScaleKey( spep_1-4 + 156, 1, 1.17, 1.17 );

setRotateKey( spep_1 + 0, 1, -0.2 );
setRotateKey( spep_1-4 + 44, 1, -0.2 );
setRotateKey( spep_1-4 + 45, 1, 0 );
setRotateKey( spep_1-4 + 46, 1, 0 );
setRotateKey( spep_1-4 + 47, 1, -54 );
setRotateKey( spep_1-4 + 48, 1, 0 );
setRotateKey( spep_1-4 + 58, 1, 0 );
setRotateKey( spep_1-4 + 59, 1, -54 );
setRotateKey( spep_1-4 + 60, 1, 0 );
setRotateKey( spep_1-4 + 72, 1, 0 );
setRotateKey( spep_1-4 + 73, 1, -54 );
setRotateKey( spep_1-4 + 74, 1, -54 );
setRotateKey( spep_1-4 + 75, 1, 0 );
setRotateKey( spep_1-4 + 76, 1, -54 );
setRotateKey( spep_1-4 + 77, 1, -54 );
setRotateKey( spep_1-4 + 78, 1, -53.4 );
setRotateKey( spep_1-4 + 79, 1, -53.4 );
setRotateKey( spep_1-4 + 80, 1, -52.8 );
setRotateKey( spep_1-4 + 81, 1, -52.8 );
setRotateKey( spep_1-4 + 82, 1, -52.2 );
setRotateKey( spep_1-4 + 84, 1, -51.6 );
setRotateKey( spep_1-4 + 85, 1, -51.6 );
setRotateKey( spep_1-4 + 86, 1, -51 );
setRotateKey( spep_1-4 + 89, 1, -51 );
setRotateKey( spep_1-4 + 90, 1, -51 );
setRotateKey( spep_1-4 + 91, 1, -37.4 );
setRotateKey( spep_1-4 + 92, 1, -80.1 );
setRotateKey( spep_1-4 + 94, 1, -99.2 );
setRotateKey( spep_1-4 + 96, 1, -114.8 );
setRotateKey( spep_1-4 + 98, 1, -127.7 );
setRotateKey( spep_1-4 + 100, 1, -138.4 );
setRotateKey( spep_1-4 + 102, 1, -145.7 );
setRotateKey( spep_1-4 + 104, 1, -152.1 );
setRotateKey( spep_1-4 + 115, 1, -152.1 );
setRotateKey( spep_1-4 + 116, 1, -81.7 );
setRotateKey( spep_1-4 + 156, 1, -81.7 );

--集中線
shuchusen2 = entryEffectLife( spep_1-3 + 44,  906, 6, 0x100, -1, 0, 0, 0.7 );
setEffShake( spep_1-3 + 44, shuchusen2, 6, 20 );
setEffMoveKey( spep_1-3 + 44, shuchusen2, 0, 0.7 , 0 );
setEffMoveKey( spep_1-3 + 50, shuchusen2, 0, 0.7 , 0 );

setEffScaleKey( spep_1-3 + 44, shuchusen2, 1.3, 1.3 );
setEffScaleKey( spep_1-3 + 50, shuchusen2, 1.3, 1.3 );

setEffRotateKey( spep_1-3 + 44, shuchusen2, 180 );
setEffRotateKey( spep_1-3 + 50, shuchusen2, 180 );

setEffAlphaKey( spep_1-3 + 44, shuchusen2, 255 );
setEffAlphaKey( spep_1-3 + 50, shuchusen2, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_1-3 + 58,  906, 6, 0x100, -1, 0, 0, 0.7 );
setEffShake( spep_1-3 + 58, shuchusen3, 6, 20 );
setEffMoveKey( spep_1-3 + 58,shuchusen3, 0, 0.7 , 0 );
setEffMoveKey( spep_1-3 + 64,shuchusen3, 0, 0.7 , 0 );

setEffScaleKey( spep_1-3 + 58,shuchusen3, 1.3, 1.3 );
setEffScaleKey( spep_1-3 + 64,shuchusen3, 1.3, 1.3 );

setEffRotateKey( spep_1-3 + 58,shuchusen3, 180 );
setEffRotateKey( spep_1-3 + 64,shuchusen3, 180 );

setEffAlphaKey( spep_1-3 + 58,shuchusen3, 255 );
setEffAlphaKey( spep_1-3 + 64,shuchusen3, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_1-3 + 72,  906, 6, 0x100, -1, 0, 0, -13.3 );
setEffShake( spep_1-3 + 72, shuchusen4, 6, 20 );
setEffMoveKey( spep_1-3 + 72, shuchusen4, 0, -13.3 , 0 );
setEffMoveKey( spep_1-3 + 78, shuchusen4, 0, -13.3 , 0 );

setEffScaleKey( spep_1-3 + 72, shuchusen4, 1.3, 1.5 );
setEffScaleKey( spep_1-3 + 78, shuchusen4, 1.3, 1.5 );

setEffRotateKey( spep_1-3 + 72, shuchusen4, 180 );
setEffRotateKey( spep_1-3 + 78, shuchusen4, 180 );

setEffAlphaKey( spep_1-3 + 72, shuchusen4, 255 );
setEffAlphaKey( spep_1-3 + 78, shuchusen4, 255 );

--集中線
shuchusen5 = entryEffectLife( spep_1-3 + 96,  906, 6, 0x100, -1, 0, 0, -13.3 );
setEffShake( spep_1-3 + 96, shuchusen5, 6, 20 );
setEffMoveKey( spep_1-3 + 96, shuchusen5, 0, -13.3 , 0 );
setEffMoveKey( spep_1-3 + 102, shuchusen5, 0, -13.3 , 0 );

setEffScaleKey( spep_1-3 + 96, shuchusen5, 1.3, 1.5 );
setEffScaleKey( spep_1-3 + 102, shuchusen5, 1.3, 1.5 );

setEffRotateKey( spep_1-3 + 96, shuchusen5, 180 );
setEffRotateKey( spep_1-3 + 102, shuchusen5, 180 );

setEffAlphaKey( spep_1-3 + 96, shuchusen5, 255 );
setEffAlphaKey( spep_1-3 + 102, shuchusen5, 255 );

--集中線
shuchusen6 = entryEffectLife( spep_1-3 + 116,  906, 16, 0x100, -1, 0, 0, -110.4 );
setEffShake( spep_1-3 + 116, shuchusen6, 16, 20 );
setEffMoveKey( spep_1-3 + 116, shuchusen6, 0, -110.4 , 0 );
setEffMoveKey( spep_1-3 + 132, shuchusen6, 0, -110.4 , 0 );

setEffScaleKey( spep_1-3 + 116, shuchusen6, 1.2, 1.6 );
setEffScaleKey( spep_1-3 + 132, shuchusen6, 1.2, 1.6 );

setEffRotateKey( spep_1-3 + 116, shuchusen6, 180 );
setEffRotateKey( spep_1-3 + 132, shuchusen6, 180 );

setEffAlphaKey( spep_1-3 + 116, shuchusen6, 255 );
setEffAlphaKey( spep_1-3 + 132, shuchusen6, 255 );

--文字エントリー
ctga = entryEffectLife( spep_1 + 41,  10005, 6, 0x100, -1, 0, 80.1, -276.7 );

setEffMoveKey( spep_1  + 41, ctga, 80.1, -276.7 , 0 );
setEffMoveKey( spep_1  + 43, ctga, 74.6, -305 , 0 );
setEffMoveKey( spep_1  + 45, ctga, 69, -333.4 , 0 );
setEffMoveKey( spep_1  + 47, ctga, 63.5, -361.7 , 0 );

setEffScaleKey( spep_1  + 41, ctga, 1.35, 1.35 );
--setEffScaleKey( spep_1  + 45, ctga, 1.42, 1.42 );
setEffScaleKey( spep_1  + 47, ctga, 1.65, 1.65);

setEffRotateKey( spep_1  + 41, ctga, 15.1 );
setEffRotateKey( spep_1  + 45, ctga, 15.1 );
setEffRotateKey( spep_1  + 47, ctga, 15 );

setEffAlphaKey( spep_1  + 41, ctga, 255 );
setEffAlphaKey( spep_1  + 47, ctga, 255 );

--文字エントリー
ctga2 = entryEffectLife( spep_1 -3 + 58,  10005, 6, 0x100, -1, 0, 139.4, 189.9 );

setEffMoveKey( spep_1 -3 + 58, ctga2, 139.4, 189.9 , 0 );
setEffMoveKey( spep_1 -3 + 60, ctga2, 137.5, 195.1 , 0 );
setEffMoveKey( spep_1 -3 + 62, ctga2, 135.7, 200.3 , 0 );
setEffMoveKey( spep_1 -3 + 64, ctga2, 133.8, 205.5 , 0 );

setEffScaleKey( spep_1 -3 + 58, ctga2, 1.27, 1.27 );
setEffScaleKey( spep_1 -3 + 60, ctga2, 1.35, 1.35 );
setEffScaleKey( spep_1 -3 + 62, ctga2, 1.42, 1.42 );
setEffScaleKey( spep_1 -3 + 64, ctga2, 1.65, 1.65 );

setEffRotateKey( spep_1 -3 + 58, ctga2, -12.3 );
setEffRotateKey( spep_1 -3 + 64, ctga2, -12.3 );

setEffAlphaKey( spep_1 -3 + 58, ctga2, 255 );
setEffAlphaKey( spep_1 -3 + 64, ctga2, 255 );

--文字エントリー
ctga3 = entryEffectLife( spep_1 -3 + 72,  10005, 6, 0x100, -1, 0, 90.3, -291.9 );

setEffMoveKey( spep_1 -3 + 72, ctga3, 90.3, -291.9 , 0 );
setEffMoveKey( spep_1 -3 + 74, ctga3, 85, -311.5 , 0 );
setEffMoveKey( spep_1 -3 + 76, ctga3, 79.7, -331.1 , 0 );
setEffMoveKey( spep_1 -3 + 78, ctga3, 74.3, -350.8 , 0 );

setEffScaleKey( spep_1 -3 + 72, ctga3, 1.27, 1.27 );
setEffScaleKey( spep_1 -3 + 74, ctga3, 1.35, 1.35 );
setEffScaleKey( spep_1 -3 + 76, ctga3, 1.42, 1.42 );
setEffScaleKey( spep_1 -3 + 78, ctga3, 1.65, 1.65 );

setEffRotateKey( spep_1 -3 + 72, ctga3, -12.3 );
setEffRotateKey( spep_1 -3 + 78, ctga3, -12.3 );

setEffAlphaKey( spep_1 -3 + 72, ctga3, 255 );
setEffAlphaKey( spep_1 -3 + 78, ctga3, 255 );

--文字エントリー
ctdon = entryEffectLife( spep_1-3 + 88, 10019, 16, 0x100, -1, 0, 188, 209.9 );

setEffMoveKey( spep_1-3 + 88, ctdon, 188, 209.9 , 0 );
setEffMoveKey( spep_1-3 + 90, ctdon, 179.5, 172.4 , 0 );
setEffMoveKey( spep_1-3 + 92, ctdon, 180.8, 167.2 , 0 );
setEffMoveKey( spep_1-3 + 94, ctdon, 183.5, 172.2 , 0 );
setEffMoveKey( spep_1-3 + 96, ctdon, 180.1, 166.5 , 0 );
setEffMoveKey( spep_1-3 + 98, ctdon, 180.4, 174.5 , 0 );
setEffMoveKey( spep_1-3 + 100, ctdon, 178.7, 172.9 , 0 );
setEffMoveKey( spep_1-3 + 102, ctdon, 180.5, 166.2 , 0 );
setEffMoveKey( spep_1-3 + 104, ctdon, 178.7, 172.9 , 0 );

setEffScaleKey( spep_1-3 + 88, ctdon, 0.84, 0.84 );
setEffScaleKey( spep_1-3 + 90, ctdon, 1.5, 1.5 );
setEffScaleKey( spep_1-3 + 92, ctdon, 1.6, 1.6 );
setEffScaleKey( spep_1-3 + 94, ctdon, 1.7, 1.7 );
setEffScaleKey( spep_1-3 + 96, ctdon, 1.8, 1.8 );
setEffScaleKey( spep_1-3 + 98, ctdon, 1.9, 1.9 );
setEffScaleKey( spep_1-3 + 100, ctdon, 2, 2 );
setEffScaleKey( spep_1-3 + 104, ctdon, 2, 2 );

setEffRotateKey( spep_1-3 + 88, ctdon, 24.6 );
setEffRotateKey( spep_1-3 + 90, ctdon, 24.7 );
setEffRotateKey( spep_1-3 + 92, ctdon, 24.7 );
setEffRotateKey( spep_1-3 + 94, ctdon, 24.6 );
setEffRotateKey( spep_1-3 + 104, ctdon, 24.6 );

setEffAlphaKey( spep_1-3 + 88, ctdon, 26 );
setEffAlphaKey( spep_1-3 + 90, ctdon, 255 );
setEffAlphaKey( spep_1-3 + 100, ctdon, 255 );
setEffAlphaKey( spep_1-3 + 102, ctdon, 134 );
setEffAlphaKey( spep_1-3 + 104, ctdon, 13 );

--文字エントリー
ctzuo = entryEffectLife( spep_1-3 + 122,  10012, 22, 0x100, -1, 0, 136, 0.3 );
setEffShake( spep_1-3 + 122, ctzuo, 22, 10 );
setEffMoveKey( spep_1-3 + 122, ctzuo, 136, 0.3 , 0 );
setEffMoveKey( spep_1-3 + 124, ctzuo, 144.9, 56.7 , 0 );
setEffMoveKey( spep_1-3 + 126, ctzuo, 130.3, 136.8 , 0 );
setEffMoveKey( spep_1-3 + 128, ctzuo, 153.6, 135.3 , 0 );
setEffMoveKey( spep_1-3 + 130, ctzuo, 144.9, 165.8 , 0 );
setEffMoveKey( spep_1-3 + 132, ctzuo, 168.3, 164.3 , 0 );
setEffMoveKey( spep_1-3 + 134, ctzuo, 159.6, 194.8 , 0 );
setEffMoveKey( spep_1-3 + 136, ctzuo, 182.9, 193.3 , 0 );
setEffMoveKey( spep_1-3 + 138, ctzuo, 174.3, 223.8 , 0 );
setEffMoveKey( spep_1-3 + 140, ctzuo, 190.3, 207.8 , 0 );
setEffMoveKey( spep_1-3 + 142, ctzuo, 174.3, 223.8 , 0 );
setEffMoveKey( spep_1-3 + 144, ctzuo, 174.3, 223.8 , 0 );

setEffScaleKey( spep_1-3 + 122, ctzuo, 1.08, 1.08 );
--setEffScaleKey( spep_1-3 + 124, ctzuo, 1.29, 1.29 );
setEffScaleKey( spep_1-3 + 126, ctzuo, 2.5, 2.5 );
setEffScaleKey( spep_1-3 + 144, ctzuo, 2.5, 2.5 );

setEffRotateKey( spep_1-3 + 122, ctzuo, 20 );
setEffRotateKey( spep_1-3 + 144, ctzuo, 20 );

setEffAlphaKey( spep_1-3 + 122, ctzuo, 26 );
setEffAlphaKey( spep_1-3 + 124, ctzuo, 140 );
setEffAlphaKey( spep_1-3 + 126, ctzuo, 255 );
setEffAlphaKey( spep_1-3 + 138, ctzuo, 255 );
setEffAlphaKey( spep_1-3 + 140, ctzuo, 174 );
setEffAlphaKey( spep_1-3 + 142, ctzuo, 94 );
setEffAlphaKey( spep_1-3 + 144, ctzuo, 13 );

--SE
playSe( spep_1 + 24, 1109 );
playSe( spep_1 + 48, 1189 );
playSe( spep_1 + 52, 1000 );
playSe( spep_1 + 52, 1006 );
playSe( spep_1 + 52, 1110 );
setSeVolume( spep_1 + 52, 1110, 79 );
playSe( spep_1 + 68, 1006 );
playSe( spep_1 + 68, 1000 );
setSeVolume( spep_1 + 68, 1000, 78 );
playSe( spep_1 + 68, 1110 );
playSe( spep_1 + 84, 1006 );
setSeVolume( spep_1 + 84, 1006, 71 );
playSe( spep_1 + 84, 1000 );
playSe( spep_1 + 84, 1110 );
setSeVolume( spep_1 + 84, 1110, 79 );
playSe( spep_1 + 102, 1009 );
playSe( spep_1 + 102, 1110 );
playSe( spep_1 + 128, 19 );
playSe( spep_1 + 128, 1061 );
setSeVolume( spep_1 + 128, 1061, 78 );
playSe( spep_1 + 128, 1047 );
setSeVolume( spep_1 + 128, 1047, 76 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 160, 0,  0, 0, 0, 200 ); --くろ 背景

--白フェード
entryFade( spep_1 + 152, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2=spep_1+160;

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

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );


--白フェード
entryFade( spep_2 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
------------------------------------------------------
-- 気弾生成→連弾攻撃→爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 270, finish_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 270, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 270, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 270, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 270, finish_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 270, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 270, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 270, finish_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-4 + 138, 1, 0 );

changeAnime( spep_3 + 0, 1, 108 );
changeAnime( spep_3-4 + 117, 1, 106 );
changeAnime( spep_3-4 + 119, 1, 108 );
changeAnime( spep_3-4 + 121, 1, 106 );
changeAnime( spep_3-4 + 122, 1, 108 );

setMoveKey( spep_3 + 0, 1, 101, -906.1 , 0 );
--setMoveKey( spep_3-4 + 2, 1, 97.7, -696.3 , 0 );
--setMoveKey( spep_3-4 + 4, 1, 95.6, -555.5 , 0 );
setMoveKey( spep_3-4 + 6, 1, 94.1, -451.4 , 0 );
setMoveKey( spep_3-4 + 8, 1, 93, -371.7 , 0 );
setMoveKey( spep_3-4 + 10, 1, 92.1, -309.3 , 0 );
setMoveKey( spep_3-4 + 12, 1, 91.3, -259.4 , 0 );
setMoveKey( spep_3-4 + 14, 1, 90.6, -218.8 , 0 );
setMoveKey( spep_3-4 + 16, 1, 90, -184.8 , 0 );
setMoveKey( spep_3-4 + 18, 1, 89.4, -155.5 , 0 );
setMoveKey( spep_3-4 + 20, 1, 88.8, -129.2 , 0 );
setMoveKey( spep_3-4 + 22, 1, 88.3, -104.7 , 0 );
setMoveKey( spep_3-4 + 24, 1, 87.8, -81.8 , 0 );
setMoveKey( spep_3-4 + 26, 1, 87.3, -60.2 , 0 );
setMoveKey( spep_3-4 + 28, 1, 86.9, -39.9 , 0 );
setMoveKey( spep_3-4 + 30, 1, 86.5, -20.6 , 0 );
setMoveKey( spep_3-4 + 32, 1, 86.1, -2.3 , 0 );
setMoveKey( spep_3-4 + 34, 1, 85.8, 15.1 , 0 );
setMoveKey( spep_3-4 + 36, 1, 85.4, 31.7 , 0 );
setMoveKey( spep_3-4 + 38, 1, 85.1, 47.5 , 0 );
setMoveKey( spep_3-4 + 40, 1, 84.8, 62.5 , 0 );
setMoveKey( spep_3-4 + 42, 1, 84.5, 76.9 , 0 );
setMoveKey( spep_3-4 + 44, 1, 84.3, 90.7 , 0 );
setMoveKey( spep_3-4 + 46, 1, 84, 103.8 , 0 );
setMoveKey( spep_3-4 + 48, 1, 83.7, 116.4 , 0 );
setMoveKey( spep_3-4 + 50, 1, 83.8, 130 , 0 );
setMoveKey( spep_3-4 + 52, 1, 83.8, 143.1 , 0 );
setMoveKey( spep_3-4 + 54, 1, 83.9, 155.7 , 0 );
setMoveKey( spep_3-4 + 56, 1, 83.9, 167.8 , 0 );
setMoveKey( spep_3-4 + 58, 1, 84, 179.4 , 0 );
setMoveKey( spep_3-4 + 60, 1, 84.1, 190.6 , 0 );
setMoveKey( spep_3-4 + 62, 1, 84.1, 201.4 , 0 );
setMoveKey( spep_3-4 + 64, 1, 84.2, 211.8 , 0 );
setMoveKey( spep_3-4 + 66, 1, 84.3, 221.8 , 0 );
setMoveKey( spep_3-4 + 68, 1, 84.4, 231.3 , 0 );
setMoveKey( spep_3-4 + 70, 1, 84.5, 240.5 , 0 );
setMoveKey( spep_3-4 + 72, 1, 84.6, 249.3 , 0 );
setMoveKey( spep_3-4 + 74, 1, 84.7, 257.8 , 0 );
setMoveKey( spep_3-4 + 76, 1, 84.9, 265.9 , 0 );
setMoveKey( spep_3-4 + 78, 1, 85, 273.5 , 0 );
setMoveKey( spep_3-4 + 80, 1, 85.1, 280.9 , 0 );
setMoveKey( spep_3-4 + 82, 1, 85.3, 287.8 , 0 );
setMoveKey( spep_3-4 + 84, 1, 85.4, 294.4 , 0 );
setMoveKey( spep_3-4 + 86, 1, 85.6, 300.5 , 0 );
setMoveKey( spep_3-4 + 88, 1, 85.7, 306.3 , 0 );
setMoveKey( spep_3-4 + 90, 1, 85.9, 311.6 , 0 );
setMoveKey( spep_3-4 + 92, 1, 86, 316.4 , 0 );
setMoveKey( spep_3-4 + 94, 1, 86.2, 320.7 , 0 );
setMoveKey( spep_3-4 + 96, 1, 86.3, 324.4 , 0 );
setMoveKey( spep_3-4 + 98, 1, 86.5, 327.4 , 0 );
setMoveKey( spep_3-4 + 100, 1, 86.7, 329.4 , 0 );
setMoveKey( spep_3-4 + 102, 1, 86.9, 330.8 , 0 );
setMoveKey( spep_3-4 + 104, 1, 87, 332.2 , 0 );
setMoveKey( spep_3-4 + 106, 1, 87.4, 334.2 , 0 );
setMoveKey( spep_3-4 + 108, 1, 87.7, 336.2 , 0 );
setMoveKey( spep_3-4 + 110, 1, 88, 338.2 , 0 );
setMoveKey( spep_3-4 + 112, 1, 88.4, 340.2 , 0 );
setMoveKey( spep_3-4 + 115, 1, 88.7, 342.2 , 0 );
setMoveKey( spep_3-4 + 117, 1, 79.9, 358.7 , 0 );
setMoveKey( spep_3-4 + 119, 1, 92.7, 349 , 0 );
setMoveKey( spep_3-4 + 121, 1, 80.3, 361.3 , 0 );
setMoveKey( spep_3-4 + 122, 1, 89.1, 355.6 , 0 );
setMoveKey( spep_3-4 + 124, 1, 96, 355.3 , 0 );
setMoveKey( spep_3-4 + 126, 1, 97.5, 353.8 , 0 );
setMoveKey( spep_3-4 + 128, 1, 91, 352.3 , 0 );
setMoveKey( spep_3-4 + 130, 1, 89.9, 360.3 , 0 );
setMoveKey( spep_3-4 + 132, 1, 96.9, 360.2 , 0 );
setMoveKey( spep_3-4 + 134, 1, 96.3, 352.7 , 0 );
setMoveKey( spep_3-4 + 136, 1, 89.6, 350 , 0 );
setMoveKey( spep_3-4 + 138, 1, 88.3, 356.7 , 0 );

setScaleKey( spep_3 + 0, 1, 0.99, 0.99 );
--setScaleKey( spep_3-4 + 2, 1, 0.92, 0.92 );
--setScaleKey( spep_3-4 + 4, 1, 0.87, 0.87 );
setScaleKey( spep_3-4 + 6, 1, 0.83, 0.83 );
setScaleKey( spep_3-4 + 8, 1, 0.8, 0.8 );
setScaleKey( spep_3-4 + 10, 1, 0.78, 0.78 );
setScaleKey( spep_3-4 + 12, 1, 0.76, 0.76 );
setScaleKey( spep_3-4 + 14, 1, 0.75, 0.75 );
setScaleKey( spep_3-4 + 138, 1, 0.75, 0.75 );

setRotateKey( spep_3 + 0, 1, -70 );
--setRotateKey( spep_3 + 2, 1, -71.7 );
--setRotateKey( spep_3-4 + 4, 1, -72.9 );
setRotateKey( spep_3-4 + 6, 1, -73.8 );
setRotateKey( spep_3-4 + 8, 1, -74.5 );
setRotateKey( spep_3-4 + 10, 1, -75.2 );
setRotateKey( spep_3-4 + 12, 1, -75.7 );
setRotateKey( spep_3-4 + 14, 1, -76.2 );
setRotateKey( spep_3-4 + 16, 1, -76.7 );
setRotateKey( spep_3-4 + 18, 1, -77.1 );
setRotateKey( spep_3-4 + 20, 1, -77.5 );
setRotateKey( spep_3-4 + 22, 1, -77.8 );
setRotateKey( spep_3-4 + 24, 1, -78.1 );
setRotateKey( spep_3-4 + 26, 1, -78.4 );
setRotateKey( spep_3-4 + 28, 1, -78.6 );
setRotateKey( spep_3-4 + 30, 1, -78.9 );
setRotateKey( spep_3-4 + 32, 1, -79.1 );
setRotateKey( spep_3-4 + 34, 1, -79.3 );
setRotateKey( spep_3-4 + 36, 1, -79.5 );
setRotateKey( spep_3-4 + 38, 1, -79.7 );
setRotateKey( spep_3-4 + 40, 1, -79.9 );
setRotateKey( spep_3-4 + 42, 1, -80 );
setRotateKey( spep_3-4 + 44, 1, -80.2 );
setRotateKey( spep_3-4 + 46, 1, -80.3 );
setRotateKey( spep_3-4 + 48, 1, -80.5 );
setRotateKey( spep_3-4 + 50, 1, -80.6 );
setRotateKey( spep_3-4 + 52, 1, -80.7 );
setRotateKey( spep_3-4 + 54, 1, -80.8 );
setRotateKey( spep_3-4 + 56, 1, -80.9 );
setRotateKey( spep_3-4 + 58, 1, -81 );
setRotateKey( spep_3-4 + 60, 1, -81.1 );
setRotateKey( spep_3-4 + 62, 1, -81.2 );
setRotateKey( spep_3-4 + 64, 1, -81.3 );
setRotateKey( spep_3-4 + 66, 1, -81.4 );
setRotateKey( spep_3-4 + 68, 1, -81.5 );
setRotateKey( spep_3-4 + 70, 1, -81.6 );
setRotateKey( spep_3-4 + 72, 1, -81.7 );
setRotateKey( spep_3-4 + 74, 1, -81.7 );
setRotateKey( spep_3-4 + 76, 1, -81.8 );
setRotateKey( spep_3-4 + 78, 1, -81.9 );
setRotateKey( spep_3-4 + 80, 1, -82 );
setRotateKey( spep_3-4 + 82, 1, -82 );
setRotateKey( spep_3-4 + 84, 1, -82.1 );
setRotateKey( spep_3-4 + 86, 1, -82.2 );
setRotateKey( spep_3-4 + 88, 1, -82.2 );
setRotateKey( spep_3-4 + 90, 1, -82.3 );
setRotateKey( spep_3-4 + 92, 1, -82.4 );
setRotateKey( spep_3-4 + 94, 1, -82.5 );
setRotateKey( spep_3-4 + 96, 1, -82.6 );
setRotateKey( spep_3-4 + 98, 1, -82.7 );
setRotateKey( spep_3-4 + 100, 1, -82.8 );
setRotateKey( spep_3-4 + 102, 1, -82.9 );
setRotateKey( spep_3-4 + 104, 1, -83 );
setRotateKey( spep_3-4 + 106, 1, -83.2 );
setRotateKey( spep_3-4 + 108, 1, -83.3 );
setRotateKey( spep_3-4 + 110, 1, -83.5 );
setRotateKey( spep_3-4 + 112, 1, -83.7 );
setRotateKey( spep_3-4 + 115, 1, -84 );
setRotateKey( spep_3-4 + 117, 1, -85.1 );
setRotateKey( spep_3-4 + 119, 1, -70 );
setRotateKey( spep_3-4 + 121, 1, -85.1 );
setRotateKey( spep_3-4 + 122, 1, -70 );
setRotateKey( spep_3-4 + 138, 1, -70 );

--流線
ryusen1 = entryEffectLife( spep_3 ,  914, 116-1, 0x80, -1, 0, 1, 0 );

setEffMoveKey( spep_3 , ryusen1, 1, 0 , 0 )
setEffMoveKey( spep_3-3 + 118, ryusen1, 1, 0 , 0 )

setEffScaleKey( spep_3 , ryusen1, 6, 1.5 );
setEffScaleKey( spep_3-3 + 118, ryusen1, 6, 1.5 );

setEffRotateKey( spep_3 , ryusen1, 90 );
setEffRotateKey( spep_3-3 + 118, ryusen1, 90 );

setEffAlphaKey( spep_3-3 , ryusen1, 0 );
--setEffAlphaKey( spep_3-3 + 4, ryusen1, 3 );
setEffAlphaKey( spep_3-3 + 6, ryusen1, 24 );
setEffAlphaKey( spep_3-3 + 8, ryusen1, 102 );
setEffAlphaKey( spep_3-3 + 88, ryusen1, 102 );
setEffAlphaKey( spep_3-3 + 90, ryusen1, 102 );
setEffAlphaKey( spep_3-3 + 92, ryusen1, 101 );
setEffAlphaKey( spep_3-3 + 94, ryusen1, 101 );
setEffAlphaKey( spep_3-3 + 96, ryusen1, 100 );
setEffAlphaKey( spep_3-3 + 98, ryusen1, 98 );
setEffAlphaKey( spep_3-3 + 100, ryusen1, 96 );
setEffAlphaKey( spep_3-3 + 102, ryusen1, 93 );
setEffAlphaKey( spep_3-3 + 104, ryusen1, 88 );
setEffAlphaKey( spep_3-3 + 106, ryusen1, 82 );
setEffAlphaKey( spep_3-3 + 108, ryusen1, 75 );
setEffAlphaKey( spep_3-3 + 110, ryusen1, 67 );
setEffAlphaKey( spep_3-3 + 112, ryusen1, 56 );
setEffAlphaKey( spep_3-3 + 114, ryusen1, 44 );
setEffAlphaKey( spep_3-3 + 116, ryusen1, 30 );
setEffAlphaKey( spep_3-3 + 118, ryusen1, 13 );

--SE
playSe( spep_3 + 10, 1042 );
playSe( spep_3 + 10, 1179 );
playSe( spep_3 + 34, 1225 );
setSeVolume( spep_3 + 34, 1225, 158 );
se_1184 = playSe( spep_3 + 58, 1184 );
setSeVolume( spep_3 + 58, 1184, 89 );
se_1200 = playSe( spep_3 + 58, 1200 );
setSeVolume( spep_3 + 58, 1200, 141 );
se_1204 = playSe( spep_3 + 58, 1204 );
setSeVolume( spep_3 + 58, 1204, 79 );
se_1239 = playSe( spep_3 + 58, 1239 );
playSe( spep_3 + 116, 1023 );
playSe( spep_3 + 128, 1011 );
playSe( spep_3 + 128, 1067 );
setSeVolume( spep_3 + 128, 1067, 79 );

stopSe( spep_3 + 117, se_1184, 17 );
stopSe( spep_3 + 134, se_1200, 0 );
stopSe( spep_3 + 134, se_1204, 0 );
stopSe( spep_3 + 134, se_1239, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 270, 0,  0, 0, 0, 200 ); --くろ 背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 132 );
endPhase( spep_3 + 260 );
end