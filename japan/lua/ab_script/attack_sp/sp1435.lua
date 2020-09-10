--1019280:超サイヤ人トランクス(未来)_マイ(未来)_アクティブスキル魔封波
--sp_effect_a1_00214

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
SP_01=	154899	;--	導入、トランクス気だめ
SP_02=	154900	;--	魔封波発射
SP_03=	154901	;--	敵に向かってエフェクト迫る
SP_04=	154902	;--	敵に向かってエフェクト迫る
SP_05=	154903	;--	魔封波ぐるぐる背景
SP_06=	154904	;--	追撃光線発射
SP_07=	154905	;--	壺に封印中
SP_08=	154906	;--	壺に封印アップ
SP_09=	154907	;--	トランクス憔悴、マイ見守る


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

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

setDisp( 0, 1, 0);
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
setRotateKey( 6,   1,  0 );

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 導入、トランクス気だめ
------------------------------------------------------
-- ** はじめの準備 ** --
spep_0 = 0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 86, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 86, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 86, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 86, tame, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0 -3 + 72,  906, 16, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 -3 + 72, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 88, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 72, shuchusen1, 1.1, 1.36 );
setEffScaleKey( spep_0 -3 + 88, shuchusen1, 1.1, 1.36 );

setEffRotateKey( spep_0 -3 + 72, shuchusen1, 180 );
setEffRotateKey( spep_0 -3 + 88, shuchusen1, 180 );

setEffAlphaKey( spep_0 -3 + 72, shuchusen1, 255 );
setEffAlphaKey( spep_0 -3 + 88, shuchusen1, 255 );

--SE
playSe( spep_0 + 22, 1035 );
playSe( spep_0 + 43, 1056 );
setSeVolume( spep_0 + 43, 1056, 50 );
playSe( spep_0 + 58, 1072 );
SE0=playSe( spep_0 + 64, 1213 );
setSeVolume( spep_0 + 64, 1213, 0 );

--次の準備
spep_1 = spep_0+86;

------------------------------------------------------
-- 魔封波発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, beam, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, beam, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, beam, 0 );
setEffRotateKey( spep_1 + 56, beam, 0 );
setEffAlphaKey( spep_1 + 0, beam, 255 );
setEffAlphaKey( spep_1 + 56, beam, 255 );

ctzuo = entryEffectLife( spep_1 + 0,  10012, 32, 0x100, -1, 0, 18.4, 333.8 );--ズオッ

setEffMoveKey( spep_1 + 0, ctzuo, 18.4, 333.8 , 0 );
setEffMoveKey( spep_1 + 2, ctzuo, 47.4, 374.8 , 0 );
setEffMoveKey( spep_1 + 4, ctzuo, 58.4, 433.8 , 0 );
setEffMoveKey( spep_1 + 6, ctzuo, 74.4, 417.8 , 0 );
setEffMoveKey( spep_1 + 8, ctzuo, 58.4, 433.8 , 0 );
setEffMoveKey( spep_1 + 10, ctzuo, 74.4, 417.8 , 0 );
setEffMoveKey( spep_1 + 12, ctzuo, 58.4, 433.8 , 0 );
setEffMoveKey( spep_1 + 14, ctzuo, 74.4, 417.8 , 0 );
setEffMoveKey( spep_1 + 16, ctzuo, 58.4, 433.8 , 0 );
setEffMoveKey( spep_1 + 18, ctzuo, 74.4, 417.8 , 0 );
setEffMoveKey( spep_1 + 20, ctzuo, 58.4, 433.8 , 0 );
setEffMoveKey( spep_1 + 22, ctzuo, 74.4, 417.8 , 0 );
setEffMoveKey( spep_1 + 24, ctzuo, 66.4, 433.8 , 0 );
setEffMoveKey( spep_1 + 26, ctzuo, 100, 408.2 , 0 );
setEffMoveKey( spep_1 + 28, ctzuo, 82.4, 433.8 , 0 );
setEffMoveKey( spep_1 + 30, ctzuo, 125.6, 398.6 , 0 );
setEffMoveKey( spep_1 + 32, ctzuo, 138.4, 393.8 , 0 );

a=2.2;

setEffScaleKey( spep_1 + 0, ctzuo, 0.1, 0.1 );
--setEffScaleKey( spep_1 + 2, ctzuo, 0.45, 0.45 );
setEffScaleKey( spep_1 + 4, ctzuo, 0.8+a, 0.8+a );
setEffScaleKey( spep_1 + 22, ctzuo, 0.8+a, 0.8+a );
setEffScaleKey( spep_1 + 24, ctzuo, 1.04+a, 1.04+a );
setEffScaleKey( spep_1 + 26, ctzuo, 1.28+a, 1.28+a );
setEffScaleKey( spep_1 + 28, ctzuo, 1.52+a, 1.52+a );
--setEffScaleKey( spep_1 + 30, ctzuo, 1.76+a, 1.76+a );
setEffScaleKey( spep_1 + 32, ctzuo, 5+a, 5+a );

setEffRotateKey( spep_1 + 0, ctzuo, 30 );
setEffRotateKey( spep_1 + 32, ctzuo, 30 );

setEffAlphaKey( spep_1 + 0, ctzuo, 23 );
setEffAlphaKey( spep_1 + 2, ctzuo, 44 );
setEffAlphaKey( spep_1 + 4, ctzuo, 65 );
setEffAlphaKey( spep_1 + 6, ctzuo, 86 );
setEffAlphaKey( spep_1 + 8, ctzuo, 107 );
setEffAlphaKey( spep_1 + 10, ctzuo, 128 );
setEffAlphaKey( spep_1 + 12, ctzuo, 150 );
setEffAlphaKey( spep_1 + 14, ctzuo, 171 );
setEffAlphaKey( spep_1 + 16, ctzuo, 192 );
setEffAlphaKey( spep_1 + 18, ctzuo, 213 );
setEffAlphaKey( spep_1 + 20, ctzuo, 234 );
setEffAlphaKey( spep_1 + 22, ctzuo, 255 );
setEffAlphaKey( spep_1 + 24, ctzuo, 204 );
setEffAlphaKey( spep_1 + 26, ctzuo, 153 );
setEffAlphaKey( spep_1 + 28, ctzuo, 102 );
setEffAlphaKey( spep_1 + 30, ctzuo, 51 );
setEffAlphaKey( spep_1 + 32, ctzuo, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_1 + 0,  906, 14, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 14, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen2, 1.54, 3.5 );
setEffScaleKey( spep_1 + 2, shuchusen2, 1.7, 3.68 );
setEffScaleKey( spep_1 + 4, shuchusen2, 1.86, 3.85 );
setEffScaleKey( spep_1 + 6, shuchusen2, 2.02, 4.03 );
setEffScaleKey( spep_1 + 8, shuchusen2, 2.18, 4.2 );
setEffScaleKey( spep_1 + 10, shuchusen2, 2.34, 4.38 );
setEffScaleKey( spep_1 + 12, shuchusen2, 2.5, 4.56 );
setEffScaleKey( spep_1 + 14, shuchusen2, 2.66, 4.73 );

setEffRotateKey( spep_1 + 0, shuchusen2, 0 );
setEffRotateKey( spep_1 + 14, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 14, shuchusen2, 255 );

--SE
setSeVolume( spep_1 + 18, 1213, 0 );
setSeVolume( spep_1 + 19, 1213, 5 );
setSeVolume( spep_1 + 20, 1213, 10 );
setSeVolume( spep_1 + 21, 1213, 15 );
setSeVolume( spep_1 + 22, 1213, 20 );
setSeVolume( spep_1 + 23, 1213, 25 );
setSeVolume( spep_1 + 24, 1213, 30 );
setSeVolume( spep_1 + 25, 1213, 35 );
setSeVolume( spep_1 + 26, 1213, 40 );
setSeVolume( spep_1 + 27, 1213, 45 );
setSeVolume( spep_1 + 28, 1213, 50 );

SE1=playSe( spep_1 + 13, 1022 );
setSeVolume( spep_1 + 13, 1022, 126 );
SE2=playSe( spep_1 + 13, 1027 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
    stopSe( SP_dodge - 12, SE2, 0 );
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

--次の準備
spep_2 = spep_1+56;

------------------------------------------------------
-- 敵に向かってエフェクト迫る
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 70, hit_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 70, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hit_f, 0 );
setEffRotateKey( spep_2 + 70, hit_f, 0 );
setEffAlphaKey( spep_2 + 0, hit_f, 255 );
setEffAlphaKey( spep_2 + 70, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 70, hit_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 70, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hit_b, 0 );
setEffRotateKey( spep_2 + 70, hit_b, 0 );
setEffAlphaKey( spep_2 + 0, hit_b, 255 );
setEffAlphaKey( spep_2 + 70, hit_b, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 33, 1, 0 );

changeAnime( spep_2 + 0, 1, 4 );

setMoveKey( spep_2 + 0, 1, -230.4, 137.9 , 0 );
setMoveKey( spep_2 + 2, 1, -225.8, 130.6 , 0 );
setMoveKey( spep_2 + 4, 1, -221.1, 133.2 , 0 );
setMoveKey( spep_2 + 6, 1, -216.4, 123.8 , 0 );
setMoveKey( spep_2 + 8, 1, -211.8, 126.5 , 0 );
setMoveKey( spep_2 + 10, 1, -207.1, 117.1 , 0 );
setMoveKey( spep_2 + 12, 1, -202.5, 119.7 , 0 );
setMoveKey( spep_2 + 14, 1, -197.8, 110.4 , 0 );
setMoveKey( spep_2 + 16, 1, -193.2, 113 , 0 );
setMoveKey( spep_2 + 18, 1, -188.5, 103.6 , 0 );
setMoveKey( spep_2 + 20, 1, -183.8, 106.2 , 0 );
setMoveKey( spep_2 + 22, 1, -179.2, 96.9 , 0 );
setMoveKey( spep_2 + 24, 1, -174.5, 99.5 , 0 );
setMoveKey( spep_2 + 26, 1, -169.8, 90.1 , 0 );
setMoveKey( spep_2 + 28, 1, -165.2, 92.7 , 0 );
setMoveKey( spep_2 + 30, 1, -160.5, 83.3 , 0 );
setMoveKey( spep_2 + 33, 1, -155.9, 85.9 , 0 );
--setMoveKey( spep_2 + 35, 1, -151.2, 76.5 , 0 );

setScaleKey( spep_2 + 0, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 2, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 4, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 6, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 8, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 10, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 12, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 14, 1, 1, 1 );
setScaleKey( spep_2 + 16, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 18, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 20, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 22, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 24, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 26, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 28, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 30, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 32, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 33, 1, 1.58, 1.58 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 33, 1, 0 );

--文字エントリー
ctzuo2 = entryEffectLife( spep_2-3 + 30,  10012, 20, 0x100, -1, 0, 26, 195 );--ズオッ

setEffMoveKey( spep_2-3 + 30, ctzuo2, 26, 195 , 0 );
setEffMoveKey( spep_2-3 + 32, ctzuo2, 42.8, 226 , 0 );
setEffMoveKey( spep_2-3 + 34, ctzuo2, 46.2, 270.3 , 0 );
setEffMoveKey( spep_2-3 + 36, ctzuo2, 72.3, 291.9 , 0 );
setEffMoveKey( spep_2-3 + 38, ctzuo2, 84.5, 327.5 , 0 );
setEffMoveKey( spep_2-3 + 40, ctzuo2, 128.6, 331 , 0 );
setEffMoveKey( spep_2-3 + 42, ctzuo2, 123.9, 350.6 , 0 );
setEffMoveKey( spep_2-3 + 44, ctzuo2, 160.7, 328.5 , 0 );
setEffMoveKey( spep_2-3 + 46, ctzuo2, 146.4, 357.7 , 0 );
setEffMoveKey( spep_2-3 + 48, ctzuo2, 192.9, 326.1 , 0 );
setEffMoveKey( spep_2-3 + 50, ctzuo2, 209, 324.9 , 0 );

b=2.2;

setEffScaleKey( spep_2-3 + 30, ctzuo2, 0.3, 0.3 );
--setEffScaleKey( spep_2-3 + 32, ctzuo2, 0.33+b, 0.33+b );
--setEffScaleKey( spep_2-3 + 34, ctzuo2, 0.57+b, 0.57+b );
setEffScaleKey( spep_2-3 + 36, ctzuo2, 0.8+b, 0.8+b );
setEffScaleKey( spep_2-3 + 40, ctzuo2, 0.8+b, 0.8+b );
--setEffScaleKey( spep_2-3 + 42, ctzuo2, 1.04+b, 1.04+b );
--setEffScaleKey( spep_2-3 + 44, ctzuo2, 1.28+b, 1.28+b );
--setEffScaleKey( spep_2-3 + 46, ctzuo2, 1.52+b, 1.52+b );
--setEffScaleKey( spep_2-3 + 48, ctzuo2, 1.76+b, 1.76+b );
setEffScaleKey( spep_2-3 + 50, ctzuo2, 5+b, 5+b );

setEffRotateKey( spep_2-3 + 30, ctzuo2, 30 );
setEffRotateKey( spep_2-3 + 50, ctzuo2, 30 );

setEffAlphaKey( spep_2-3 + 30, ctzuo2, 255 );
setEffAlphaKey( spep_2-3 + 40, ctzuo2, 255 );
setEffAlphaKey( spep_2-3 + 42, ctzuo2, 204 );
setEffAlphaKey( spep_2-3 + 44, ctzuo2, 153 );
setEffAlphaKey( spep_2-3 + 46, ctzuo2, 102 );
setEffAlphaKey( spep_2-3 + 48, ctzuo2, 51 );
setEffAlphaKey( spep_2-3 + 50, ctzuo2, 0 );

--SE
playSe( spep_2 + 40, 1021 );
--次の準備
spep_3 = spep_2+66;

------------------------------------------------------
-- 魔封波ぐるぐる背景
------------------------------------------------------
-- ** エフェクト等 ** --
guruguru = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, guruguru, 0, 0, 0 );
setEffMoveKey( spep_3 + 96, guruguru, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, guruguru, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, guruguru, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, guruguru, 0 );
setEffRotateKey( spep_3 + 96, guruguru, 0 );
setEffAlphaKey( spep_3 + 0, guruguru, 255 );
setEffAlphaKey( spep_3 + 96, guruguru, 255 );

--文字エントリー
ctzudododo = entryEffectLife( spep_3-3 + 6,  10014, 92, 0x100, -1, 0, 39.5, 341.9 );

setEffMoveKey( spep_3-3 + 6, ctzudododo, 39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 8, ctzudododo, 58, 364 , 0 );
setEffMoveKey( spep_3-3 + 10, ctzudododo, 39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 12, ctzudododo, 58, 364 , 0 );
setEffMoveKey( spep_3-3 + 14, ctzudododo, 39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 16, ctzudododo, 58, 364 , 0 );
setEffMoveKey( spep_3-3 + 18, ctzudododo, 39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 20, ctzudododo, 58, 364 , 0 );
setEffMoveKey( spep_3-3 + 22, ctzudododo, 39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 24, ctzudododo, 58, 364 , 0 );
setEffMoveKey( spep_3-3 + 26, ctzudododo, 39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 28, ctzudododo, 58, 364 , 0 );
setEffMoveKey( spep_3-3 + 30, ctzudododo, 39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 32, ctzudododo, 58, 364 , 0 );
setEffMoveKey( spep_3-3 + 34, ctzudododo, 39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 36, ctzudododo, 58, 364 , 0 );
setEffMoveKey( spep_3-3 + 38, ctzudododo, 39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 40, ctzudododo, 58, 364 , 0 );
setEffMoveKey( spep_3-3 + 42, ctzudododo, 39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 44, ctzudododo, 58, 364 , 0 );
setEffMoveKey( spep_3-3 + 46, ctzudododo, 39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 48, ctzudododo, 58, 364 , 0 );
setEffMoveKey( spep_3-3 + 50, ctzudododo, 39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 52, ctzudododo, 58, 364 , 0 );
setEffMoveKey( spep_3-3 + 54, ctzudododo, 39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 56, ctzudododo, 58, 364 , 0 );
setEffMoveKey( spep_3-3 + 58, ctzudododo, 39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 60, ctzudododo, 58, 364 , 0 );
setEffMoveKey( spep_3-3 + 62, ctzudododo, 39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 64, ctzudododo, 58, 364 , 0 );
setEffMoveKey( spep_3-3 + 66, ctzudododo, 39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 68, ctzudododo, 58, 364 , 0 );
setEffMoveKey( spep_3-3 + 70, ctzudododo, 39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 72, ctzudododo, 58, 364 , 0 );
setEffMoveKey( spep_3-3 + 74, ctzudododo, 39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 76, ctzudododo, 58, 364 , 0 );
setEffMoveKey( spep_3-3 + 78, ctzudododo, 39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 80, ctzudododo, 58, 364 , 0 );
setEffMoveKey( spep_3-3 + 82, ctzudododo, 39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 84, ctzudododo, 58, 364 , 0 );
setEffMoveKey( spep_3-3 + 86, ctzudododo, 39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 88, ctzudododo, 58, 364 , 0 );
setEffMoveKey( spep_3-3 + 90, ctzudododo, 39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 92, ctzudododo, 58, 364 , 0 );
setEffMoveKey( spep_3-3 + 94, ctzudododo, 39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 98, ctzudododo, 58, 364 , 0 );

setEffScaleKey( spep_3-3 + 6, ctzudododo, 3, 3 );
setEffScaleKey( spep_3-3 + 98, ctzudododo, 3, 3 );

setEffRotateKey( spep_3-3 + 6, ctzudododo, 60 );
setEffRotateKey( spep_3-3 + 98, ctzudododo, 60 );

setEffAlphaKey( spep_3-3 + 6, ctzudododo, 128 );
setEffAlphaKey( spep_3-3 + 8, ctzudododo, 255 );
setEffAlphaKey( spep_3-3 + 88, ctzudododo, 255 );
setEffAlphaKey( spep_3-3 + 90, ctzudododo, 204 );
setEffAlphaKey( spep_3-3 + 92, ctzudododo, 153 );
setEffAlphaKey( spep_3-3 + 94, ctzudododo, 102 );
setEffAlphaKey( spep_3-3 + 96, ctzudododo, 51 );
setEffAlphaKey( spep_3-3 + 98, ctzudododo, 0 );

--SE
se_1128 = playSe( spep_3 , 1128 );
setSeVolume( spep_3 , 1128, 63 );
playSe( spep_3 + 18, 1161 );
setSeVolume( spep_3 + 9, 1161, 63 );
playSe( spep_3 + 9, 1214 );

stopSe( spep_3 + 92, se_1128, 55 );

--次の準備
spep_4 = spep_3+96;

------------------------------------------------------
-- 追撃光線発射
------------------------------------------------------
-- ** エフェクト等 ** --
hand_up = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hand_up, 0, 0, 0 );
setEffMoveKey( spep_4 + 156, hand_up, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hand_up, 1.0, 1.0 );
setEffScaleKey( spep_4 + 156, hand_up, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hand_up, 0 );
setEffRotateKey( spep_4 + 156, hand_up, 0 );
setEffAlphaKey( spep_4 + 0, hand_up, 255 );
setEffAlphaKey( spep_4 + 156, hand_up, 255 );

--文字エントリー
ctba = entryEffectLife( spep_4-3 + 132,  10022, 22, 0x100, -1, 0, -37.7, 340.4 );--バッ

setEffMoveKey( spep_4-3 + 132, ctba, -37.7, 340.4 , 0 );
setEffMoveKey( spep_4-3 + 134, ctba, -127.3, 258.2 , 0 );
setEffMoveKey( spep_4-3 + 136, ctba, -114, 221.1 , 0 );
setEffMoveKey( spep_4-3 + 138, ctba, -115.3, 235.9 , 0 );
setEffMoveKey( spep_4-3 + 140, ctba, -133.3, 243.9 , 0 );
setEffMoveKey( spep_4-3 + 142, ctba, -121.9, 226.5 , 0 );
setEffMoveKey( spep_4-3 + 144, ctba, -120.6, 247.8 , 0 );
setEffMoveKey( spep_4-3 + 146, ctba, -137.7, 238.1 , 0 );
setEffMoveKey( spep_4-3 + 148, ctba, -121.1, 229.9 , 0 );
setEffMoveKey( spep_4-3 + 150, ctba, -110.2, 239.5 , 0 );
setEffMoveKey( spep_4-3 + 152, ctba, -113.5, 249.8 , 0 );
setEffMoveKey( spep_4-3 + 154, ctba, -113.4, 249.8 , 0 );

setEffScaleKey( spep_4-3 + 132, ctba, 1.66, 1.66 );
setEffScaleKey( spep_4-3 + 134, ctba, 2.53, 2.53 );
setEffScaleKey( spep_4-3 + 136, ctba, 2.53, 2.53 );
setEffScaleKey( spep_4-3 + 138, ctba, 2.54, 2.54 );
setEffScaleKey( spep_4-3 + 140, ctba, 2.53, 2.53 );
setEffScaleKey( spep_4-3 + 154, ctba, 2.53, 2.53 );

setEffRotateKey( spep_4-3 + 132, ctba, -20.6 );
setEffRotateKey( spep_4-3 + 146, ctba, -20.6 );
setEffRotateKey( spep_4-3 + 148, ctba, -20.5 );
setEffRotateKey( spep_4-3 + 150, ctba, -20.6 );
setEffRotateKey( spep_4-3 + 154, ctba, -20.6 );

setEffAlphaKey( spep_4-3 + 132, ctba, 128 );
setEffAlphaKey( spep_4-3 + 134, ctba, 255 );
setEffAlphaKey( spep_4-3 + 148, ctba, 255 );
setEffAlphaKey( spep_4-3 + 150, ctba, 170 );
setEffAlphaKey( spep_4-3 + 152, ctba, 85 );
setEffAlphaKey( spep_4-3 + 154, ctba, 0 );

--SE
playSe( spep_4 + 0, 1072 );
setSeVolume( spep_4 + 0, 1072, 141 );
playSe( spep_4 + 54, 1026 );
setSeVolume( spep_4 + 54, 1026, 79 );
playSe( spep_4 + 54, 1145 );
setSeVolume( spep_4 + 54, 1145, 40 );
se_1116 = playSe( spep_4 + 54, 1116 );
playSe( spep_4 + 110, 1161 );
setSeVolume( spep_4 + 110, 1161, 63 );
playSe( spep_4 + 119, 1158 );
playSe( spep_4 + 130, 1004 );
setSeVolume( spep_4 + 130, 1004, 112 );
playSe( spep_4 + 133, 1003 );
setSeVolume( spep_4 + 133, 1003, 141 );

stopSe( spep_4 + 82, se_1116, 41 );

--次の準備
spep_5 = spep_4+156;

------------------------------------------------------
-- 壺に封印中
------------------------------------------------------
-- ** エフェクト等 ** --
huuin = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, huuin, 0, 0, 0 );
setEffMoveKey( spep_5 + 126, huuin, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, huuin, 1.0, 1.0 );
setEffScaleKey( spep_5 + 126, huuin, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, huuin, 0 );
setEffRotateKey( spep_5 + 126, huuin, 0 );
setEffAlphaKey( spep_5 + 0, huuin, 255 );
setEffAlphaKey( spep_5 + 126, huuin, 255 );

--SE
se_1144 = playSe( spep_5 + 94, 1144 );
setSeVolume( spep_5 + 94, 1144, 0 );


--次の準備
spep_6 = spep_5+126;

------------------------------------------------------
-- 壺に封印アップ
------------------------------------------------------
-- ** エフェクト等 ** --
huuin_up = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, huuin_up, 0, 0, 0 );
setEffMoveKey( spep_6 + 86, huuin_up, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, huuin_up, 1.0, 1.0 );
setEffScaleKey( spep_6 + 86, huuin_up, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, huuin_up, 0 );
setEffRotateKey( spep_6 + 86, huuin_up, 0 );
setEffAlphaKey( spep_6 + 0, huuin_up, 255 );
setEffAlphaKey( spep_6 + 86, huuin_up, 255 );

--SE
setSeVolume( spep_6 + 14, 1144, 7 );
setSeVolume( spep_6 + 15, 1144, 14 );
setSeVolume( spep_6 + 16, 1144, 21 );
setSeVolume( spep_6 + 17, 1144, 28 );
setSeVolume( spep_6 + 18, 1144, 35 );
setSeVolume( spep_6 + 19, 1144, 42 );
setSeVolume( spep_6 + 20, 1144, 50 );
se_1118 = playSe( spep_6 + 9, 1118 );
setSeVolume( spep_6 + 9, 1118, 40 );
playSe( spep_6 + 60, 1220 );

stopSe( spep_6 + 82, se_1144, 0 );
stopSe( spep_6 + 82, se_1118, 0 );

--次の準備
spep_7 = spep_6+86;

------------------------------------------------------
-- トランクス憔悴、マイ見守る
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_7 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_7 + 180, finish, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_7 + 180, finish, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish, 0 );
setEffRotateKey( spep_7 + 180, finish, 0 );
setEffAlphaKey( spep_7 + 0, finish, 255 );
setEffAlphaKey( spep_7 + 180, finish, 255 );

--SE
playSe( spep_7 + 26, 8 );
setSeVolume( spep_7 + 26, 8, 71 );
playSe( spep_7 + 88, 1003 );
setSeVolume( spep_7 + 88, 1003, 79 );
playSe( spep_7 + 104, 1108 );

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 50 );
endPhase( spep_7 + 170 );

else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 導入、トランクス気だめ
------------------------------------------------------
-- ** はじめの準備 ** --
spep_0 = 0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 86, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 86, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 86, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 86, tame, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0 -3 + 72,  906, 16, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 -3 + 72, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 88, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 72, shuchusen1, 1.1, 1.36 );
setEffScaleKey( spep_0 -3 + 88, shuchusen1, 1.1, 1.36 );

setEffRotateKey( spep_0 -3 + 72, shuchusen1, 180 );
setEffRotateKey( spep_0 -3 + 88, shuchusen1, 180 );

setEffAlphaKey( spep_0 -3 + 72, shuchusen1, 255 );
setEffAlphaKey( spep_0 -3 + 88, shuchusen1, 255 );

--SE
playSe( spep_0 + 22, 1035 );
playSe( spep_0 + 43, 1056 );
setSeVolume( spep_0 + 43, 1056, 50 );
playSe( spep_0 + 58, 1072 );
SE0=playSe( spep_0 + 64, 1213 );
setSeVolume( spep_0 + 64, 1213, 0 );

--次の準備
spep_1 = spep_0+86;

------------------------------------------------------
-- 魔封波発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, beam, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, beam, -1.0, 1.0 );
setEffScaleKey( spep_1 + 56, beam, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, beam, 0 );
setEffRotateKey( spep_1 + 56, beam, 0 );
setEffAlphaKey( spep_1 + 0, beam, 255 );
setEffAlphaKey( spep_1 + 56, beam, 255 );

ctzuo = entryEffectLife( spep_1 + 0,  10012, 32, 0x100, -1, 0, -18.4, 333.8 );--ズオッ

setEffMoveKey( spep_1 + 0, ctzuo, -18.4, 333.8 , 0 );
setEffMoveKey( spep_1 + 2, ctzuo, -47.4, 374.8 , 0 );
setEffMoveKey( spep_1 + 4, ctzuo, -58.4, 433.8 , 0 );
setEffMoveKey( spep_1 + 6, ctzuo, -74.4, 417.8 , 0 );
setEffMoveKey( spep_1 + 8, ctzuo, -58.4, 433.8 , 0 );
setEffMoveKey( spep_1 + 10, ctzuo, -74.4, 417.8 , 0 );
setEffMoveKey( spep_1 + 12, ctzuo, -58.4, 433.8 , 0 );
setEffMoveKey( spep_1 + 14, ctzuo, -74.4, 417.8 , 0 );
setEffMoveKey( spep_1 + 16, ctzuo, -58.4, 433.8 , 0 );
setEffMoveKey( spep_1 + 18, ctzuo, -74.4, 417.8 , 0 );
setEffMoveKey( spep_1 + 20, ctzuo, -58.4, 433.8 , 0 );
setEffMoveKey( spep_1 + 22, ctzuo, -74.4, 417.8 , 0 );
setEffMoveKey( spep_1 + 24, ctzuo, -66.4, 433.8 , 0 );
setEffMoveKey( spep_1 + 26, ctzuo, -100, 408.2 , 0 );
setEffMoveKey( spep_1 + 28, ctzuo, -82.4, 433.8 , 0 );
setEffMoveKey( spep_1 + 30, ctzuo, -125.6, 398.6 , 0 );
setEffMoveKey( spep_1 + 32, ctzuo, -138.4, 393.8 , 0 );

a=2.2;

setEffScaleKey( spep_1 + 0, ctzuo, 0.1, 0.1 );
--setEffScaleKey( spep_1 + 2, ctzuo, 0.45, 0.45 );
setEffScaleKey( spep_1 + 4, ctzuo, 0.8+a, 0.8+a );
setEffScaleKey( spep_1 + 22, ctzuo, 0.8+a, 0.8+a );
setEffScaleKey( spep_1 + 24, ctzuo, 1.04+a, 1.04+a );
setEffScaleKey( spep_1 + 26, ctzuo, 1.28+a, 1.28+a );
setEffScaleKey( spep_1 + 28, ctzuo, 1.52+a, 1.52+a );
--setEffScaleKey( spep_1 + 30, ctzuo, 1.76+a, 1.76+a );
setEffScaleKey( spep_1 + 32, ctzuo, 5+a, 5+a );

setEffRotateKey( spep_1 + 0, ctzuo, -30 );
setEffRotateKey( spep_1 + 32, ctzuo, -30 );

setEffAlphaKey( spep_1 + 0, ctzuo, 23 );
setEffAlphaKey( spep_1 + 2, ctzuo, 44 );
setEffAlphaKey( spep_1 + 4, ctzuo, 65 );
setEffAlphaKey( spep_1 + 6, ctzuo, 86 );
setEffAlphaKey( spep_1 + 8, ctzuo, 107 );
setEffAlphaKey( spep_1 + 10, ctzuo, 128 );
setEffAlphaKey( spep_1 + 12, ctzuo, 150 );
setEffAlphaKey( spep_1 + 14, ctzuo, 171 );
setEffAlphaKey( spep_1 + 16, ctzuo, 192 );
setEffAlphaKey( spep_1 + 18, ctzuo, 213 );
setEffAlphaKey( spep_1 + 20, ctzuo, 234 );
setEffAlphaKey( spep_1 + 22, ctzuo, 255 );
setEffAlphaKey( spep_1 + 24, ctzuo, 204 );
setEffAlphaKey( spep_1 + 26, ctzuo, 153 );
setEffAlphaKey( spep_1 + 28, ctzuo, 102 );
setEffAlphaKey( spep_1 + 30, ctzuo, 51 );
setEffAlphaKey( spep_1 + 32, ctzuo, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_1 + 0,  906, 14, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 14, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen2, 1.54, 3.5 );
setEffScaleKey( spep_1 + 2, shuchusen2, 1.7, 3.68 );
setEffScaleKey( spep_1 + 4, shuchusen2, 1.86, 3.85 );
setEffScaleKey( spep_1 + 6, shuchusen2, 2.02, 4.03 );
setEffScaleKey( spep_1 + 8, shuchusen2, 2.18, 4.2 );
setEffScaleKey( spep_1 + 10, shuchusen2, 2.34, 4.38 );
setEffScaleKey( spep_1 + 12, shuchusen2, 2.5, 4.56 );
setEffScaleKey( spep_1 + 14, shuchusen2, 2.66, 4.73 );

setEffRotateKey( spep_1 + 0, shuchusen2, 0 );
setEffRotateKey( spep_1 + 14, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 14, shuchusen2, 255 );

--SE
setSeVolume( spep_1 + 18, 1213, 0 );
setSeVolume( spep_1 + 19, 1213, 5 );
setSeVolume( spep_1 + 20, 1213, 10 );
setSeVolume( spep_1 + 21, 1213, 15 );
setSeVolume( spep_1 + 22, 1213, 20 );
setSeVolume( spep_1 + 23, 1213, 25 );
setSeVolume( spep_1 + 24, 1213, 30 );
setSeVolume( spep_1 + 25, 1213, 35 );
setSeVolume( spep_1 + 26, 1213, 40 );
setSeVolume( spep_1 + 27, 1213, 45 );
setSeVolume( spep_1 + 28, 1213, 50 );

SE1=playSe( spep_1 + 13, 1022 );
setSeVolume( spep_1 + 13, 1022, 126 );
SE2=playSe( spep_1 + 13, 1027 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
    stopSe( SP_dodge - 12, SE2, 0 );
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

--次の準備
spep_2 = spep_1+56;

------------------------------------------------------
-- 敵に向かってエフェクト迫る
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 70, hit_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, hit_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 70, hit_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hit_f, 0 );
setEffRotateKey( spep_2 + 70, hit_f, 0 );
setEffAlphaKey( spep_2 + 0, hit_f, 255 );
setEffAlphaKey( spep_2 + 70, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 70, hit_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, hit_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 70, hit_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hit_b, 0 );
setEffRotateKey( spep_2 + 70, hit_b, 0 );
setEffAlphaKey( spep_2 + 0, hit_b, 255 );
setEffAlphaKey( spep_2 + 70, hit_b, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 33, 1, 0 );

changeAnime( spep_2 + 0, 1, 104 );

setMoveKey( spep_2 + 0, 1, 230.4, 137.9 , 0 );
setMoveKey( spep_2 + 2, 1, 225.8, 130.6 , 0 );
setMoveKey( spep_2 + 4, 1, 221.1, 133.2 , 0 );
setMoveKey( spep_2 + 6, 1, 216.4, 123.8 , 0 );
setMoveKey( spep_2 + 8, 1, 211.8, 126.5 , 0 );
setMoveKey( spep_2 + 10, 1, 207.1, 117.1 , 0 );
setMoveKey( spep_2 + 12, 1, 202.5, 119.7 , 0 );
setMoveKey( spep_2 + 14, 1, 197.8, 110.4 , 0 );
setMoveKey( spep_2 + 16, 1, 193.2, 113 , 0 );
setMoveKey( spep_2 + 18, 1, 188.5, 103.6 , 0 );
setMoveKey( spep_2 + 20, 1, 183.8, 106.2 , 0 );
setMoveKey( spep_2 + 22, 1, 179.2, 96.9 , 0 );
setMoveKey( spep_2 + 24, 1, 174.5, 99.5 , 0 );
setMoveKey( spep_2 + 26, 1, 169.8, 90.1 , 0 );
setMoveKey( spep_2 + 28, 1, 165.2, 92.7 , 0 );
setMoveKey( spep_2 + 30, 1, 160.5, 83.3 , 0 );
setMoveKey( spep_2 + 33, 1, 155.9, 85.9 , 0 );
--setMoveKey( spep_2 + 35, 1, -151.2, 76.5 , 0 );

setScaleKey( spep_2 + 0, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 2, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 4, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 6, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 8, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 10, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 12, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 14, 1, 1, 1 );
setScaleKey( spep_2 + 16, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 18, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 20, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 22, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 24, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 26, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 28, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 30, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 32, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 33, 1, 1.58, 1.58 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 33, 1, 0 );

--文字エントリー
ctzuo2 = entryEffectLife( spep_2-3 + 30,  10012, 20, 0x100, -1, 0, -26, 195 );--ズオッ

setEffMoveKey( spep_2-3 + 30, ctzuo2, -26, 195 , 0 );
setEffMoveKey( spep_2-3 + 32, ctzuo2, -42.8, 226 , 0 );
setEffMoveKey( spep_2-3 + 34, ctzuo2, -46.2, 270.3 , 0 );
setEffMoveKey( spep_2-3 + 36, ctzuo2, -72.3, 291.9 , 0 );
setEffMoveKey( spep_2-3 + 38, ctzuo2, -84.5, 327.5 , 0 );
setEffMoveKey( spep_2-3 + 40, ctzuo2, -128.6, 331 , 0 );
setEffMoveKey( spep_2-3 + 42, ctzuo2, -123.9, 350.6 , 0 );
setEffMoveKey( spep_2-3 + 44, ctzuo2, -160.7, 328.5 , 0 );
setEffMoveKey( spep_2-3 + 46, ctzuo2, -146.4, 357.7 , 0 );
setEffMoveKey( spep_2-3 + 48, ctzuo2, -192.9, 326.1 , 0 );
setEffMoveKey( spep_2-3 + 50, ctzuo2, -209, 324.9 , 0 );

b=2.2;

setEffScaleKey( spep_2-3 + 30, ctzuo2, 0.3, 0.3 );
--setEffScaleKey( spep_2-3 + 32, ctzuo2, 0.33+b, 0.33+b );
--setEffScaleKey( spep_2-3 + 34, ctzuo2, 0.57+b, 0.57+b );
setEffScaleKey( spep_2-3 + 36, ctzuo2, 0.8+b, 0.8+b );
setEffScaleKey( spep_2-3 + 40, ctzuo2, 0.8+b, 0.8+b );
--setEffScaleKey( spep_2-3 + 42, ctzuo2, 1.04+b, 1.04+b );
--setEffScaleKey( spep_2-3 + 44, ctzuo2, 1.28+b, 1.28+b );
--setEffScaleKey( spep_2-3 + 46, ctzuo2, 1.52+b, 1.52+b );
--setEffScaleKey( spep_2-3 + 48, ctzuo2, 1.76+b, 1.76+b );
setEffScaleKey( spep_2-3 + 50, ctzuo2, 5+b, 5+b );

setEffRotateKey( spep_2-3 + 30, ctzuo2, -30 );
setEffRotateKey( spep_2-3 + 50, ctzuo2, -30 );

setEffAlphaKey( spep_2-3 + 30, ctzuo2, 255 );
setEffAlphaKey( spep_2-3 + 40, ctzuo2, 255 );
setEffAlphaKey( spep_2-3 + 42, ctzuo2, 204 );
setEffAlphaKey( spep_2-3 + 44, ctzuo2, 153 );
setEffAlphaKey( spep_2-3 + 46, ctzuo2, 102 );
setEffAlphaKey( spep_2-3 + 48, ctzuo2, 51 );
setEffAlphaKey( spep_2-3 + 50, ctzuo2, 0 );

--SE
playSe( spep_2 + 40, 1021 );
--次の準備
spep_3 = spep_2+66;

------------------------------------------------------
-- 魔封波ぐるぐる背景
------------------------------------------------------
-- ** エフェクト等 ** --
guruguru = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, guruguru, 0, 0, 0 );
setEffMoveKey( spep_3 + 96, guruguru, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, guruguru, -1.0, 1.0 );
setEffScaleKey( spep_3 + 96, guruguru, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, guruguru, 0 );
setEffRotateKey( spep_3 + 96, guruguru, 0 );
setEffAlphaKey( spep_3 + 0, guruguru, 255 );
setEffAlphaKey( spep_3 + 96, guruguru, 255 );

--文字エントリー
ctzudododo = entryEffectLife( spep_3-3 + 6,  10014, 92, 0x100, -1, 0, -39.5, 341.9 );

setEffMoveKey( spep_3-3 + 6, ctzudododo, -39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 8, ctzudododo, -58, 364 , 0 );
setEffMoveKey( spep_3-3 + 10, ctzudododo, -39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 12, ctzudododo, -58, 364 , 0 );
setEffMoveKey( spep_3-3 + 14, ctzudododo, -39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 16, ctzudododo, -58, 364 , 0 );
setEffMoveKey( spep_3-3 + 18, ctzudododo, -39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 20, ctzudododo, -58, 364 , 0 );
setEffMoveKey( spep_3-3 + 22, ctzudododo, -39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 24, ctzudododo, -58, 364 , 0 );
setEffMoveKey( spep_3-3 + 26, ctzudododo, -39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 28, ctzudododo, -58, 364 , 0 );
setEffMoveKey( spep_3-3 + 30, ctzudododo, -39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 32, ctzudododo, -58, 364 , 0 );
setEffMoveKey( spep_3-3 + 34, ctzudododo, -39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 36, ctzudododo, -58, 364 , 0 );
setEffMoveKey( spep_3-3 + 38, ctzudododo, -39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 40, ctzudododo, -58, 364 , 0 );
setEffMoveKey( spep_3-3 + 42, ctzudododo, -39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 44, ctzudododo, -58, 364 , 0 );
setEffMoveKey( spep_3-3 + 46, ctzudododo, -39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 48, ctzudododo, -58, 364 , 0 );
setEffMoveKey( spep_3-3 + 50, ctzudododo, -39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 52, ctzudododo, -58, 364 , 0 );
setEffMoveKey( spep_3-3 + 54, ctzudododo, -39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 56, ctzudododo, -58, 364 , 0 );
setEffMoveKey( spep_3-3 + 58, ctzudododo, -39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 60, ctzudododo, -58, 364 , 0 );
setEffMoveKey( spep_3-3 + 62, ctzudododo, -39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 64, ctzudododo, -58, 364 , 0 );
setEffMoveKey( spep_3-3 + 66, ctzudododo, -39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 68, ctzudododo, -58, 364 , 0 );
setEffMoveKey( spep_3-3 + 70, ctzudododo, -39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 72, ctzudododo, -58, 364 , 0 );
setEffMoveKey( spep_3-3 + 74, ctzudododo, -39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 76, ctzudododo, -58, 364 , 0 );
setEffMoveKey( spep_3-3 + 78, ctzudododo, -39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 80, ctzudododo, -58, 364 , 0 );
setEffMoveKey( spep_3-3 + 82, ctzudododo, -39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 84, ctzudododo, -58, 364 , 0 );
setEffMoveKey( spep_3-3 + 86, ctzudododo, -39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 88, ctzudododo, -58, 364 , 0 );
setEffMoveKey( spep_3-3 + 90, ctzudododo, -39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 92, ctzudododo, -58, 364 , 0 );
setEffMoveKey( spep_3-3 + 94, ctzudododo, -39.5, 341.9 , 0 );
setEffMoveKey( spep_3-3 + 98, ctzudododo, -58, 364 , 0 );

setEffScaleKey( spep_3-3 + 6, ctzudododo, 3, 3 );
setEffScaleKey( spep_3-3 + 98, ctzudododo, 3, 3 );

setEffRotateKey( spep_3-3 + 6, ctzudododo, -60 );
setEffRotateKey( spep_3-3 + 98, ctzudododo, -60 );

setEffAlphaKey( spep_3-3 + 6, ctzudododo, 128 );
setEffAlphaKey( spep_3-3 + 8, ctzudododo, 255 );
setEffAlphaKey( spep_3-3 + 88, ctzudododo, 255 );
setEffAlphaKey( spep_3-3 + 90, ctzudododo, 204 );
setEffAlphaKey( spep_3-3 + 92, ctzudododo, 153 );
setEffAlphaKey( spep_3-3 + 94, ctzudododo, 102 );
setEffAlphaKey( spep_3-3 + 96, ctzudododo, 51 );
setEffAlphaKey( spep_3-3 + 98, ctzudododo, 0 );

--SE
se_1128 = playSe( spep_3 , 1128 );
setSeVolume( spep_3 , 1128, 63 );
playSe( spep_3 + 18, 1161 );
setSeVolume( spep_3 + 9, 1161, 63 );
playSe( spep_3 + 9, 1214 );

stopSe( spep_3 + 92, se_1128, 55 );

--次の準備
spep_4 = spep_3+96;

------------------------------------------------------
-- 追撃光線発射
------------------------------------------------------
-- ** エフェクト等 ** --
hand_up = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hand_up, 0, 0, 0 );
setEffMoveKey( spep_4 + 156, hand_up, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hand_up, -1.0, 1.0 );
setEffScaleKey( spep_4 + 156, hand_up, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hand_up, 0 );
setEffRotateKey( spep_4 + 156, hand_up, 0 );
setEffAlphaKey( spep_4 + 0, hand_up, 255 );
setEffAlphaKey( spep_4 + 156, hand_up, 255 );

--文字エントリー
ctba = entryEffectLife( spep_4-3 + 132,  10022, 22, 0x100, -1, 0, 37.7, 340.4 );--バッ

setEffMoveKey( spep_4-3 + 132, ctba, 37.7, 340.4 , 0 );
setEffMoveKey( spep_4-3 + 134, ctba, 127.3, 258.2 , 0 );
setEffMoveKey( spep_4-3 + 136, ctba, 114, 221.1 , 0 );
setEffMoveKey( spep_4-3 + 138, ctba, 115.3, 235.9 , 0 );
setEffMoveKey( spep_4-3 + 140, ctba, 133.3, 243.9 , 0 );
setEffMoveKey( spep_4-3 + 142, ctba, 121.9, 226.5 , 0 );
setEffMoveKey( spep_4-3 + 144, ctba, 120.6, 247.8 , 0 );
setEffMoveKey( spep_4-3 + 146, ctba, 137.7, 238.1 , 0 );
setEffMoveKey( spep_4-3 + 148, ctba, 121.1, 229.9 , 0 );
setEffMoveKey( spep_4-3 + 150, ctba, 110.2, 239.5 , 0 );
setEffMoveKey( spep_4-3 + 152, ctba, 113.5, 249.8 , 0 );
setEffMoveKey( spep_4-3 + 154, ctba, 113.4, 249.8 , 0 );

setEffScaleKey( spep_4-3 + 132, ctba, 1.66, 1.66 );
setEffScaleKey( spep_4-3 + 134, ctba, 2.53, 2.53 );
setEffScaleKey( spep_4-3 + 136, ctba, 2.53, 2.53 );
setEffScaleKey( spep_4-3 + 138, ctba, 2.54, 2.54 );
setEffScaleKey( spep_4-3 + 140, ctba, 2.53, 2.53 );
setEffScaleKey( spep_4-3 + 154, ctba, 2.53, 2.53 );

setEffRotateKey( spep_4-3 + 132, ctba, 20.6 );
setEffRotateKey( spep_4-3 + 146, ctba, 20.6 );
setEffRotateKey( spep_4-3 + 148, ctba, 20.5 );
setEffRotateKey( spep_4-3 + 150, ctba, 20.6 );
setEffRotateKey( spep_4-3 + 154, ctba, 20.6 );

setEffAlphaKey( spep_4-3 + 132, ctba, 128 );
setEffAlphaKey( spep_4-3 + 134, ctba, 255 );
setEffAlphaKey( spep_4-3 + 148, ctba, 255 );
setEffAlphaKey( spep_4-3 + 150, ctba, 170 );
setEffAlphaKey( spep_4-3 + 152, ctba, 85 );
setEffAlphaKey( spep_4-3 + 154, ctba, 0 );

--SE
playSe( spep_4 + 0, 1072 );
setSeVolume( spep_4 + 0, 1072, 141 );
playSe( spep_4 + 54, 1026 );
setSeVolume( spep_4 + 54, 1026, 79 );
playSe( spep_4 + 54, 1145 );
setSeVolume( spep_4 + 54, 1145, 40 );
se_1116 = playSe( spep_4 + 54, 1116 );
playSe( spep_4 + 110, 1161 );
setSeVolume( spep_4 + 110, 1161, 63 );
playSe( spep_4 + 119, 1158 );
playSe( spep_4 + 130, 1004 );
setSeVolume( spep_4 + 130, 1004, 112 );
playSe( spep_4 + 133, 1003 );
setSeVolume( spep_4 + 133, 1003, 141 );

stopSe( spep_4 + 82, se_1116, 41 );

--次の準備
spep_5 = spep_4+156;

------------------------------------------------------
-- 壺に封印中
------------------------------------------------------
-- ** エフェクト等 ** --
huuin = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, huuin, 0, 0, 0 );
setEffMoveKey( spep_5 + 126, huuin, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, huuin, -1.0, 1.0 );
setEffScaleKey( spep_5 + 126, huuin, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, huuin, 0 );
setEffRotateKey( spep_5 + 126, huuin, 0 );
setEffAlphaKey( spep_5 + 0, huuin, 255 );
setEffAlphaKey( spep_5 + 126, huuin, 255 );

--SE
se_1144 = playSe( spep_5 + 94, 1144 );
setSeVolume( spep_5 + 94, 1144, 0 );


--次の準備
spep_6 = spep_5+126;

------------------------------------------------------
-- 壺に封印アップ
------------------------------------------------------
-- ** エフェクト等 ** --
huuin_up = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, huuin_up, 0, 0, 0 );
setEffMoveKey( spep_6 + 86, huuin_up, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, huuin_up, -1.0, 1.0 );
setEffScaleKey( spep_6 + 86, huuin_up, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, huuin_up, 0 );
setEffRotateKey( spep_6 + 86, huuin_up, 0 );
setEffAlphaKey( spep_6 + 0, huuin_up, 255 );
setEffAlphaKey( spep_6 + 86, huuin_up, 255 );

--SE
setSeVolume( spep_6 + 14, 1144, 7 );
setSeVolume( spep_6 + 15, 1144, 14 );
setSeVolume( spep_6 + 16, 1144, 21 );
setSeVolume( spep_6 + 17, 1144, 28 );
setSeVolume( spep_6 + 18, 1144, 35 );
setSeVolume( spep_6 + 19, 1144, 42 );
setSeVolume( spep_6 + 20, 1144, 50 );
se_1118 = playSe( spep_6 + 9, 1118 );
setSeVolume( spep_6 + 9, 1118, 40 );
playSe( spep_6 + 60, 1220 );

stopSe( spep_6 + 82, se_1144, 0 );
stopSe( spep_6 + 82, se_1118, 0 );

--次の準備
spep_7 = spep_6+86;

------------------------------------------------------
-- トランクス憔悴、マイ見守る
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_7 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_7 + 180, finish, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_7 + 180, finish, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish, 0 );
setEffRotateKey( spep_7 + 180, finish, 0 );
setEffAlphaKey( spep_7 + 0, finish, 255 );
setEffAlphaKey( spep_7 + 180, finish, 255 );

--SE
playSe( spep_7 + 26, 8 );
setSeVolume( spep_7 + 26, 8, 71 );
playSe( spep_7 + 88, 1003 );
setSeVolume( spep_7 + 88, 1003, 79 );
playSe( spep_7 + 104, 1108 );

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 50 );
endPhase( spep_7 + 170 );
end