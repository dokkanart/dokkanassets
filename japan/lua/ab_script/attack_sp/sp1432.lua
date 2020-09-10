--1019590:魔人ブウ(善)/魔人ブウ(純粋悪)_かめはめ波
--sp_effect_a1_00235

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
SP_01=	155373	;--	導入〜スローイング
SP_02=	155374	;--	敵に肉が巻きつく・手前
SP_03=	155375	;--	敵に肉が巻きつく・奥
SP_04=	155376	;--	煙〜構え
SP_05=	155377	;--	発射・手前
SP_06=	155378	;--	発射・奥
SP_07=	155379	;--	締め背景

--エフェクト(てき)
SP_01x=	155373	;--	導入〜スローイング	
SP_02x=	155374	;--	敵に肉が巻きつく・手前	
SP_03x=	155375	;--	敵に肉が巻きつく・奥	
SP_04x=	155380	;--	煙〜構え	(敵)
SP_05x=	155381	;--	発射・手前	(敵)
SP_06x=	155378	;--	発射・奥	
SP_07x=	155379	;--	締め背景	

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

if( _IS_EXTRA_ATTACK_ == 0 ) then
 adjustAttackerLabel( 0, 205);
end

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
-- 導入〜スローイング
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, start, 0, 0, 0 );
setEffMoveKey( spep_0 + 246, start, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0 );
setEffScaleKey( spep_0 + 246, start, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, start, 0 );
setEffRotateKey( spep_0 + 246, start, 0 );
setEffAlphaKey( spep_0 + 0, start, 255 );
setEffAlphaKey( spep_0 + 246, start, 255 );

--流線
shuchusen1 = entryEffectLife( spep_0 -3 + 60,  906, 30, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 60, shuchusen1, 30, 20 );
setEffMoveKey( spep_0 -3 + 60, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 90, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 60, shuchusen1, 1.15, 1.5 );
setEffScaleKey( spep_0 -3 + 90, shuchusen1, 1.15, 1.5 );

setEffRotateKey( spep_0 -3 + 60, shuchusen1, 0 );
setEffRotateKey( spep_0 -3 + 90, shuchusen1, 0 );

setEffAlphaKey( spep_0 -3 + 60, shuchusen1, 64 );
setEffAlphaKey( spep_0 -3 + 62, shuchusen1, 128 );
setEffAlphaKey( spep_0 -3 + 64, shuchusen1, 191 );
setEffAlphaKey( spep_0 -3 + 84, shuchusen1, 191 );
setEffAlphaKey( spep_0 -3 + 86, shuchusen1, 128 );
setEffAlphaKey( spep_0 -3 + 88, shuchusen1, 64 );
setEffAlphaKey( spep_0 -3 + 90, shuchusen1, 0 );

--SE
SE0=playSe( spep_0 + 0, 8 );

playSe( spep_0 + 60, 1151 );
setSeVolume( spep_0 + 60, 1112, 112 );
se_1112 = playSe( spep_0 + 60, 1112 );


se_1039 = playSe( spep_0 + 90, 1039 );
se_1113 = playSe( spep_0 + 90, 1113 );
se_1039_1 = playSe( spep_0 + 100, 1039 );
setSeVolume( spep_0 + 100, 1039, 76 );
se_1113_1 = playSe( spep_0 + 100, 1113 );
setSeVolume( spep_0 + 100, 1113, 76 );
se_1039_2 = playSe( spep_0 + 112, 1039 );
se_1113_2 = playSe( spep_0 + 112, 1113 );


se_1184 = playSe( spep_0 + 130, 1184 );
se_1112_1 = playSe( spep_0 + 136, 1112 );
playSe( spep_0 + 170, 4 );
SE001 = playSe( spep_0 + 200, 1003 );
SE002 = playSe( spep_0 + 204, 1117 );

stopSe( spep_0 + 76, se_1112, 17 );
stopSe( spep_0 + 100, se_1039, 5 );
stopSe( spep_0 + 96, se_1113, 5 );
stopSe( spep_0 + 110, se_1039_1, 5 );
stopSe( spep_0 + 106, se_1113_1, 5 );
stopSe( spep_0 + 122, se_1039_2, 5 );
stopSe( spep_0 + 118, se_1113_2, 5 );
stopSe( spep_0 + 140, se_1184, 28 );
stopSe( spep_0 + 150, se_1112_1, 17 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 250, 0, 0, 0, 0, 255 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 216; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );


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

-- ** 次の準備 ** --
spep_1=spep_0+246;

------------------------------------------------------
-- 敵に肉が巻きつく
------------------------------------------------------
-- ** エフェクト等 ** --
wind_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, wind_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 76, wind_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, wind_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76, wind_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, wind_f, 0 );
setEffRotateKey( spep_1 + 76, wind_f, 0 );
setEffAlphaKey( spep_1 + 0, wind_f, 255 );
setEffAlphaKey( spep_1 + 76, wind_f, 255 );

-- ** エフェクト等 ** --
wind_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, wind_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 76, wind_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, wind_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76, wind_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, wind_b, 0 );
setEffRotateKey( spep_1 + 76, wind_b, 0 );
setEffAlphaKey( spep_1 + 0, wind_b, 255 );
setEffAlphaKey( spep_1 + 76, wind_b, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1);
setDisp( spep_1 + 76, 1, 0);
changeAnime( spep_1 + 0, 1, 104);
changeAnime( spep_1 -3 + 20, 1, 106);

setMoveKey( spep_1 + 0, 1, 492.1, 386.9 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 436.4, 345.6 , 0 );
setMoveKey( spep_1-3 + 4, 1, 380.6, 304.3 , 0 );
setMoveKey( spep_1-3 + 6, 1, 324.9, 263 , 0 );
setMoveKey( spep_1-3 + 8, 1, 269.3, 221.7 , 0 );
setMoveKey( spep_1-3 + 10, 1, 213.5, 180.4 , 0 );
setMoveKey( spep_1-3 + 12, 1, 157.8, 139.1 , 0 );
setMoveKey( spep_1-3 + 14, 1, 102.1, 97.8 , 0 );
setMoveKey( spep_1-3 + 16, 1, 46.3, 56.5 , 0 );
setMoveKey( spep_1-3 + 18, 1, 45.1, 54.3 , 0 );
setMoveKey( spep_1-3 + 19, 1, 45.1, 54.3 , 0 );

b=30;
setMoveKey( spep_1-3 + 20, 1, 3.9+b, 95.5-b , 0 );
setMoveKey( spep_1-3 + 22, 1, 2.5+b, 94.1-b , 0 );
setMoveKey( spep_1-3 + 24, 1, 1+b, 92.7-b , 0 );
setMoveKey( spep_1-3 + 26, 1, -0.5+b, 91.4-b , 0 );
setMoveKey( spep_1-3 + 28, 1, -1.9+b, 90.1-b , 0 );
setMoveKey( spep_1-3 + 30, 1, -3.4+b, 88.7-b , 0 );
setMoveKey( spep_1-3 + 32, 1, -4.8+b, 87.4-b , 0 );
setMoveKey( spep_1-3 + 34, 1, -6.2+b, 86.1-b , 0 );
setMoveKey( spep_1-3 + 36, 1, -7.7+b, 84.8-b , 0 );
setMoveKey( spep_1-3 + 38, 1, -9.1+b, 83.5-b , 0 );
setMoveKey( spep_1-3 + 40, 1, -10.6+b, 82.2-b , 0 );
setMoveKey( spep_1-3 + 42, 1, -11.9+b, 81-b , 0 );
setMoveKey( spep_1-3 + 44, 1, -13.4+b, 79.7-b , 0 );
setMoveKey( spep_1-3 + 46, 1, -14.8+b, 78.4-b , 0 );
setMoveKey( spep_1-3 + 48, 1, -16.2+b, 77.2-b , 0 );
setMoveKey( spep_1-3 + 50, 1, -17.6+b, 75.9-b , 0 );
setMoveKey( spep_1-3 + 52, 1, -19+b, 74.7-b , 0 );
setMoveKey( spep_1-3 + 54, 1, -20.4+b, 73.5-b , 0 );
setMoveKey( spep_1-3 + 56, 1, -21.8+b, 72.3-b , 0 );
setMoveKey( spep_1-3 + 58, 1, -23.2+b, 71.1-b , 0 );
setMoveKey( spep_1-3 + 60, 1, -24.6+b, 69.9-b , 0 );
setMoveKey( spep_1-3 + 62, 1, -26+b, 68.7-b , 0 );
setMoveKey( spep_1-3 + 64, 1, -27.4+b, 67.5-b , 0 );
setMoveKey( spep_1-3 + 66, 1, -28.8+b, 66.3-b , 0 );
setMoveKey( spep_1-3 + 68, 1, -30.1+b, 65.2-b , 0 );
setMoveKey( spep_1 + 76, 1, -30.1+b, 65.2-b , 0 );

setScaleKey( spep_1 + 0, 1, 1.91, 1.91 );
--setScaleKey( spep_1-3 + 2, 1, 1.85, 1.85 );
setScaleKey( spep_1-3 + 4, 1, 1.8, 1.8 );
setScaleKey( spep_1-3 + 6, 1, 1.74, 1.74 );
setScaleKey( spep_1-3 + 8, 1, 1.68, 1.68 );
setScaleKey( spep_1-3 + 10, 1, 1.62, 1.62 );
setScaleKey( spep_1-3 + 12, 1, 1.56, 1.56 );
setScaleKey( spep_1-3 + 14, 1, 1.51, 1.51 );
setScaleKey( spep_1-3 + 16, 1, 1.45, 1.45 );
setScaleKey( spep_1-3 + 18, 1, 1.46, 1.46 );
setScaleKey( spep_1-3 + 19, 1, 1.46, 1.46 );

setScaleKey( spep_1-3 + 20, 1, 1.39, 1.39 );
setScaleKey( spep_1-3 + 22, 1, 1.41, 1.41 );
setScaleKey( spep_1-3 + 24, 1, 1.42, 1.42 );
setScaleKey( spep_1-3 + 26, 1, 1.44, 1.44 );
setScaleKey( spep_1-3 + 28, 1, 1.45, 1.45 );
setScaleKey( spep_1-3 + 30, 1, 1.46, 1.46 );
setScaleKey( spep_1-3 + 32, 1, 1.48, 1.48 );
setScaleKey( spep_1-3 + 34, 1, 1.49, 1.49 );
setScaleKey( spep_1-3 + 36, 1, 1.51, 1.51 );
setScaleKey( spep_1-3 + 38, 1, 1.52, 1.52 );
setScaleKey( spep_1-3 + 40, 1, 1.54, 1.54 );
setScaleKey( spep_1-3 + 42, 1, 1.55, 1.55 );
setScaleKey( spep_1-3 + 44, 1, 1.56, 1.56 );
setScaleKey( spep_1-3 + 46, 1, 1.58, 1.58 );
setScaleKey( spep_1-3 + 48, 1, 1.59, 1.59 );
setScaleKey( spep_1-3 + 50, 1, 1.61, 1.61 );
setScaleKey( spep_1-3 + 52, 1, 1.62, 1.62 );
setScaleKey( spep_1-3 + 54, 1, 1.63, 1.63 );
setScaleKey( spep_1-3 + 56, 1, 1.65, 1.65 );
setScaleKey( spep_1-3 + 58, 1, 1.66, 1.66 );
setScaleKey( spep_1-3 + 60, 1, 1.68, 1.68 );
setScaleKey( spep_1-3 + 62, 1, 1.69, 1.69 );
setScaleKey( spep_1-3 + 64, 1, 1.7, 1.7 );
setScaleKey( spep_1-3 + 66, 1, 1.72, 1.72 );
setScaleKey( spep_1-3 + 68, 1, 1.73, 1.73 );
setScaleKey( spep_1 + 76, 1, 1.73, 1.73 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 19, 1, 0 );
a=5;

setRotateKey( spep_1-3 + 20, 1, -50.5 -a );
setRotateKey( spep_1-3 + 22, 1, -50.5 -a);
setRotateKey( spep_1-3 + 24, 1, -50.4 -a);
setRotateKey( spep_1-3 + 26, 1, -50.4 -a);
setRotateKey( spep_1-3 + 28, 1, -50.3 -a);
setRotateKey( spep_1-3 + 30, 1, -50.3 -a);
setRotateKey( spep_1-3 + 32, 1, -50.2 -a);
setRotateKey( spep_1-3 + 34, 1, -50.2 -a);
setRotateKey( spep_1-3 + 36, 1, -50.1 -a);
setRotateKey( spep_1-3 + 38, 1, -50.1 -a);
setRotateKey( spep_1-3 + 40, 1, -50 -a);
setRotateKey( spep_1-3 + 42, 1, -50 -a);
setRotateKey( spep_1-3 + 44, 1, -49.9 -a);
setRotateKey( spep_1-3 + 46, 1, -49.9 -a);
setRotateKey( spep_1-3 + 48, 1, -49.8 -a);
setRotateKey( spep_1-3 + 50, 1, -49.8 -a);
setRotateKey( spep_1-3 + 52, 1, -49.7 -a);
setRotateKey( spep_1-3 + 54, 1, -49.7 -a);
setRotateKey( spep_1-3 + 56, 1, -49.6 -a);
setRotateKey( spep_1-3 + 58, 1, -49.6 -a);
setRotateKey( spep_1-3 + 60, 1, -49.5 -a);
setRotateKey( spep_1-3 + 62, 1, -49.5 -a);
setRotateKey( spep_1-3 + 64, 1, -49.4 -a);
setRotateKey( spep_1-3 + 66, 1, -49.4 -a);
setRotateKey( spep_1-3 + 68, 1, -49.3 -a);
setRotateKey( spep_1 + 76, 1, -49.3 -a);

--SE
se_1113 = playSe( spep_1 + 10, 1113 );
setSeVolume( spep_1 + 10, 1113, 0 );
setSeVolume( spep_1 + 15, 1113, 0 );
setSeVolume( spep_1 + 16, 1113, 562 );
se_1186 = playSe( spep_1 + 16, 1186 );
setSeVolume( spep_1 + 16, 1186, 114 );
se_11131 = playSe( spep_1 + 22, 1113 );
se_11132 = playSe( spep_1 + 28, 1113 );
setSeVolume( spep_1 + 28, 1113, 158 );
se_11133 = playSe( spep_1 + 34, 1113 );
se_11134 = playSe( spep_1 + 40, 1113 );
setSeVolume( spep_1 + 40, 1113, 216 );

stopSe( spep_1 + 26, se_1113, 5 );
stopSe( spep_1 + 52, se_1186, 5 );
stopSe( spep_1 + 28, se_11131, 5 );
stopSe( spep_1 + 34, se_11132, 5 );
stopSe( spep_1 + 40, se_11133, 5 );
stopSe( spep_1 + 46, se_11134, 5 );

-- ** 背景 ** --
entryFadeBg( spep_1 + 0, 0, 80, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_2=spep_1+76;
------------------------------------------------------
-- 煙〜構え
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_2 + 146, tame, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 146, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 146, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 146, tame, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_2 + 2,  906, 144, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2 + 2, shuchusen2, 144, 20 );
setEffMoveKey( spep_2 + 2, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 146, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 2, shuchusen2, 1.15, 1.21 );
setEffScaleKey( spep_2 + 146, shuchusen2, 1.15, 1.21 );

setEffRotateKey( spep_2 + 2, shuchusen2, 0 );
setEffRotateKey( spep_2 + 146, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 2, shuchusen2, 48 );
setEffAlphaKey( spep_2 + 4, shuchusen2, 96 );
setEffAlphaKey( spep_2 + 6, shuchusen2, 143 );
setEffAlphaKey( spep_2 + 8, shuchusen2, 191 );
setEffAlphaKey( spep_2 + 146, shuchusen2, 191 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_2+46  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_2+46  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_2 +58, 190006, 72, 0x102, -1, 0, -50, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_2 +58,  ctgogo,  -50,  510);
setEffMoveKey(  spep_2 +130,  ctgogo,  -50,  510);

setEffAlphaKey( spep_2 +58, ctgogo, 0 );
setEffAlphaKey( spep_2 + 59, ctgogo, 255 );
setEffAlphaKey( spep_2 + 60, ctgogo, 255 );
setEffAlphaKey( spep_2 + 124, ctgogo, 255 );
setEffAlphaKey( spep_2 + 126, ctgogo, 191 );
setEffAlphaKey( spep_2 + 128, ctgogo, 112 );
setEffAlphaKey( spep_2 + 130, ctgogo, 64 );

setEffRotateKey(  spep_2 +58,  ctgogo,  0);
setEffRotateKey(  spep_2 +130,  ctgogo,  0);

setEffScaleKey(  spep_2 +58,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 +120,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 +130,  ctgogo, 1.07, 1.07 );

-- ** 音 ** --
playSe( spep_2 + 58, 1018 );

se_1247 = playSe( spep_2 + 2, 1247 );
setSeVolume( spep_2 + 2, 1247, 60 );
playSe( spep_2 + 53, 1131 );
setSeVolume( spep_2 + 53, 1131, 79 );
se_1132 = playSe( spep_2 + 53, 1132 );

stopSe( spep_2 + 35, se_1247, 44 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 150, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_3=spep_2+146 -2;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 84, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 84, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 84, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 84, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 84, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 84, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );
stopSe( spep_3 + 8, se_1132, 0 );

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 90, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 84;

------------------------------------------------------
-- 発射・手前
------------------------------------------------------
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 160, beam_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 160, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam_f, 0 );
setEffRotateKey( spep_4 + 160, beam_f, 0 );
setEffAlphaKey( spep_4 + 0, beam_f, 255 );
setEffAlphaKey( spep_4 + 160, beam_f, 255 );
setEffAlphaKey( spep_4 + 161, beam_f, 0 );
setEffAlphaKey( spep_4 + 162, beam_f, 0 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 160, beam_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 160, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam_b, 0 );
setEffRotateKey( spep_4 + 160, beam_b, 0 );
setEffAlphaKey( spep_4 + 0, beam_b, 255 );
setEffAlphaKey( spep_4 + 160, beam_b, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_4 + 0,  906, 96 , 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 0, shuchusen3, 96, 20 );
setEffMoveKey( spep_4 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 96, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen3, 1.1, 1.42 );
setEffScaleKey( spep_4 + 96, shuchusen3, 1.1, 1.42 );

setEffRotateKey( spep_4 + 0, shuchusen3, 0.3 );
setEffRotateKey( spep_4 + 96, shuchusen3, 0.3 );

setEffAlphaKey( spep_4 + 0, shuchusen3, 204 );
setEffAlphaKey( spep_4 + 96, shuchusen3, 204 );

--文字エントリー

ctzuo = entryEffectLife( spep_4-3 + 104,  10012, 54, 0x100, -1, 0, -23, 243.1 );--ズオッ
setEffShake( spep_4-3 + 104, ctzuo, 54, 10 );
setEffMoveKey( spep_4-3 + 104, ctzuo, -23, 243.1 , 0 );
setEffMoveKey( spep_4-3 + 106, ctzuo, -31.8, 284.5 , 0 );
setEffMoveKey( spep_4-3 + 108, ctzuo, -23, 311.2 , 0 );
setEffMoveKey( spep_4-3 + 110, ctzuo, -39.9, 320.9 , 0 );
setEffMoveKey( spep_4-3 + 112, ctzuo, -23.4, 307 , 0 );
setEffMoveKey( spep_4-3 + 114, ctzuo, -37, 314.5 , 0 );
setEffMoveKey( spep_4-3 + 116, ctzuo, -23.7, 305.4 , 0 );
setEffMoveKey( spep_4-3 + 118, ctzuo, -37.3, 315.5 , 0 );
setEffMoveKey( spep_4-3 + 120, ctzuo, -23.7, 306.2 , 0 );
setEffMoveKey( spep_4-3 + 122, ctzuo, -37.6, 316.5 , 0 );
setEffMoveKey( spep_4-3 + 124, ctzuo, -23.8, 307 , 0 );
setEffMoveKey( spep_4-3 + 126, ctzuo, -37.9, 317.6 , 0 );
setEffMoveKey( spep_4-3 + 128, ctzuo, -23.9, 307.9 , 0 );
setEffMoveKey( spep_4-3 + 130, ctzuo, -38.1, 318.7 , 0 );
setEffMoveKey( spep_4-3 + 132, ctzuo, -23.8, 308.7 , 0 );
setEffMoveKey( spep_4-3 + 134, ctzuo, -38.4, 319.7 , 0 );
setEffMoveKey( spep_4-3 + 136, ctzuo, -23.9, 309.5 , 0 );
setEffMoveKey( spep_4-3 + 138, ctzuo, -38.7, 320.7 , 0 );
setEffMoveKey( spep_4-3 + 140, ctzuo, -23.9, 310.3 , 0 );
setEffMoveKey( spep_4-3 + 142, ctzuo, -38.9, 321.8 , 0 );
setEffMoveKey( spep_4-3 + 144, ctzuo, -23.9, 311.2 , 0 );
setEffMoveKey( spep_4-3 + 146, ctzuo, -39.2, 322.8 , 0 );
setEffMoveKey( spep_4-3 + 148, ctzuo, -24, 312 , 0 );
setEffMoveKey( spep_4-3 + 150, ctzuo, -39.4, 323.9 , 0 );
setEffMoveKey( spep_4-3 + 152, ctzuo, -24.1, 312.8 , 0 );
setEffMoveKey( spep_4-3 + 154, ctzuo, -39.7, 324.9 , 0 );
setEffMoveKey( spep_4-3 + 156, ctzuo, -24.1, 313.6 , 0 );
setEffMoveKey( spep_4-3 + 158, ctzuo, -40, 326 , 0 );

setEffScaleKey( spep_4-3 + 104, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_4-3 + 106, ctzuo, 1.82, 1.82 );
setEffScaleKey( spep_4-3 + 108, ctzuo, 3.31, 3.31 );
setEffScaleKey( spep_4-3 + 110, ctzuo, 3.01, 3.01 );
setEffScaleKey( spep_4-3 + 112, ctzuo, 2.71, 2.71 );
setEffScaleKey( spep_4-3 + 114, ctzuo, 2.41, 2.41 );
setEffScaleKey( spep_4-3 + 116, ctzuo, 2.44, 2.44 );
setEffScaleKey( spep_4-3 + 118, ctzuo, 2.46, 2.46 );
setEffScaleKey( spep_4-3 + 120, ctzuo, 2.48, 2.48 );
setEffScaleKey( spep_4-3 + 122, ctzuo, 2.5, 2.5 );
setEffScaleKey( spep_4-3 + 124, ctzuo, 2.53, 2.53 );
setEffScaleKey( spep_4-3 + 126, ctzuo, 2.55, 2.55 );
setEffScaleKey( spep_4-3 + 128, ctzuo, 2.57, 2.57 );
setEffScaleKey( spep_4-3 + 130, ctzuo, 2.6, 2.6 );
setEffScaleKey( spep_4-3 + 132, ctzuo, 2.62, 2.62 );
setEffScaleKey( spep_4-3 + 134, ctzuo, 2.64, 2.64 );
setEffScaleKey( spep_4-3 + 136, ctzuo, 2.66, 2.66 );
setEffScaleKey( spep_4-3 + 138, ctzuo, 2.69, 2.69 );
setEffScaleKey( spep_4-3 + 140, ctzuo, 2.71, 2.71 );
setEffScaleKey( spep_4-3 + 142, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_4-3 + 144, ctzuo, 2.76, 2.76 );
setEffScaleKey( spep_4-3 + 146, ctzuo, 2.78, 2.78 );
setEffScaleKey( spep_4-3 + 148, ctzuo, 2.8, 2.8 );
setEffScaleKey( spep_4-3 + 150, ctzuo, 2.82, 2.82 );
setEffScaleKey( spep_4-3 + 152, ctzuo, 2.85, 2.85 );
setEffScaleKey( spep_4-3 + 154, ctzuo, 2.87, 2.87 );
setEffScaleKey( spep_4-3 + 156, ctzuo, 2.89, 2.89 );
setEffScaleKey( spep_4-3 + 158, ctzuo, 2.92, 2.92 );

setEffRotateKey( spep_4-3 + 104, ctzuo, -9.4 );
setEffRotateKey( spep_4-3 + 106, ctzuo, -13.8 );
setEffRotateKey( spep_4-3 + 108, ctzuo, -18.1 );
setEffRotateKey( spep_4-3 + 110, ctzuo, -18 );
setEffRotateKey( spep_4-3 + 112, ctzuo, -17.9 );
setEffRotateKey( spep_4-3 + 114, ctzuo, -17.8 );
setEffRotateKey( spep_4-3 + 116, ctzuo, -17.8 );
setEffRotateKey( spep_4-3 + 118, ctzuo, -17.7 );
setEffRotateKey( spep_4-3 + 120, ctzuo, -17.7 );
setEffRotateKey( spep_4-3 + 122, ctzuo, -17.6 );
setEffRotateKey( spep_4-3 + 124, ctzuo, -17.5 );
setEffRotateKey( spep_4-3 + 126, ctzuo, -17.5 );
setEffRotateKey( spep_4-3 + 128, ctzuo, -17.4 );
setEffRotateKey( spep_4-3 + 130, ctzuo, -17.4 );
setEffRotateKey( spep_4-3 + 132, ctzuo, -17.3 );
setEffRotateKey( spep_4-3 + 134, ctzuo, -17.2 );
setEffRotateKey( spep_4-3 + 136, ctzuo, -17.2 );
setEffRotateKey( spep_4-3 + 138, ctzuo, -17.1 );
setEffRotateKey( spep_4-3 + 140, ctzuo, -17.1 );
setEffRotateKey( spep_4-3 + 142, ctzuo, -17 );
setEffRotateKey( spep_4-3 + 144, ctzuo, -16.9 );
setEffRotateKey( spep_4-3 + 146, ctzuo, -16.9 );
setEffRotateKey( spep_4-3 + 148, ctzuo, -16.8 );
setEffRotateKey( spep_4-3 + 150, ctzuo, -16.7 );
setEffRotateKey( spep_4-3 + 152, ctzuo, -16.7 );
setEffRotateKey( spep_4-3 + 154, ctzuo, -16.6 );
setEffRotateKey( spep_4-3 + 156, ctzuo, -16.6 );
setEffRotateKey( spep_4-3 + 158, ctzuo, -16.5 );

setEffAlphaKey( spep_4-3 + 104, ctzuo, 255 );
setEffAlphaKey( spep_4-3 + 158, ctzuo, 255 );

--敵の動き
setDisp( spep_4-3 + 100, 1, 1);
setDisp( spep_4-3 + 160, 1, 0);
changeAnime( spep_4-3 + 100, 1, 106);

setMoveKey( spep_4-3 + 100, 1, 224.9, 239.5 , 0 );
setMoveKey( spep_4-3 + 160, 1, 224.9, 239.5 , 0 );

setScaleKey( spep_4-3 + 100, 1, 0.14, 0.14 );
setScaleKey( spep_4-3 + 160, 1, 0.14, 0.14 );

setRotateKey( spep_4-3 + 100, 1, -49.1 );
setRotateKey( spep_4-3 + 160, 1, -49.1 );

--SE
playSe( spep_4 + 2, 1223 );
playSe( spep_4 + 2, 1027 );
playSe( spep_4 + 2, 1022 );
playSe( spep_4 + 2, 1146 );
se_1211 = playSe( spep_4 + 24, 1211 );
playSe( spep_4 + 100, 1021 );

stopSe( spep_4 + 118, se_1211, 48 );

--白フェード
entryFade( spep_4 + 152, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 背景 ** --
entryFadeBg( spep_4 + 0, 0, 162, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 160;

--------------------------------------
--ギャン
--------------------------------------

--エフェクトの再生
gyan = entryEffectLife(  spep_5,  190000,  60,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_5,  gyan,  1.0,  1.0);
setEffScaleKey(  spep_5+60,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_5,  gyan,  255);
setEffAlphaKey(  spep_5+60,  gyan,  255);


-- 書き文字エントリー --
ctgayn = entryEffectLife( spep_5, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン
setEffScaleKey( spep_5, ctgayn, 3.0, 3.0);
setEffScaleKey( spep_5+60, ctgayn, 4.0, 4.0);
setEffAlphaKey( spep_5, ctgayn, 255);
setEffAlphaKey( spep_5+60, ctgayn, 0);
setEffShake( spep_5, ctgayn, 60, 10);

playSe(spep_5,SE_09);

-- ** 背景 ** --
entryFadeBg( spep_5 + 0, 0, 64, 0, 0, 0, 0, 255 );

entryFade( spep_5+48, 2,  10, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_6 = spep_5+60;
------------------------------------------------------
-- ガ
------------------------------------------------------
--敵の動き
setDisp( spep_6 + 0, 1, 1 );
changeAnime( spep_6 + 0, 1, 107 );
setMoveKey( spep_6 + 0, 1, -3.8, -32.1 , 0 );
setMoveKey( spep_6 + 2, 1, -3.7, -56.6 , 0 );
setMoveKey( spep_6 + 4, 1, -3.4, -88.1 , 0 );
setMoveKey( spep_6 + 6, 1, -3.1, -126.6 , 0 );
setMoveKey( spep_6 + 8, 1, -2.8, -172.1 , 0 );
setMoveKey( spep_6 + 10, 1, -2.4, -224.6 , 0 );
setMoveKey( spep_6 + 12, 1, -1.9, -284.1 , 0 );
setMoveKey( spep_6 + 110, 1, -1.9, -284.1 , 0 );

y=0.4;

setScaleKey( spep_6 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_6 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_6 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_6 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_6 + 8, 1, 0.93, 0.93 );
--setScaleKey( spep_6 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 12, 1, 1.5-y, 1.5-y );
setScaleKey( spep_6 + 14, 1, 1.6-y, 1.6-y );
setScaleKey( spep_6 + 16, 1, 1.5-y, 1.5-y );
setScaleKey( spep_6 + 18, 1, 1.6-y, 1.6-y );
setScaleKey( spep_6 + 20, 1, 1.5-y, 1.5-y );
setScaleKey( spep_6 + 22, 1, 1.6-y, 1.6-y );
setScaleKey( spep_6 + 24, 1, 1.5-y, 1.5-y );
setScaleKey( spep_6 + 26, 1, 1.6-y, 1.6-y );
setScaleKey( spep_6 + 110, 1, 1.6-y, 1.6-y );

z=30;
setRotateKey( spep_6 + 0, 1, 0-z );
setRotateKey( spep_6 + 2, 1, 105-z );
setRotateKey( spep_6 + 4, 1, 240-z );
setRotateKey( spep_6 + 6, 1, 405-z );
setRotateKey( spep_6 + 8, 1, 600-z );
setRotateKey( spep_6 + 10, 1, 825-z );
setRotateKey( spep_6 + 12, 1, 1080-z );
setRotateKey( spep_6 + 110, 1, 1080-z );

-- ** エフェクト等 ** --
bg = entryEffect( spep_6 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_6 + 100, bg, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, bg, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, bg, 0 );
setEffRotateKey( spep_6 + 100, bg, 0 );
setEffAlphaKey( spep_6 + 0, bg, 255 );
setEffAlphaKey( spep_6 + 100, bg, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_6 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_6 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_6 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_6 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_6 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_6 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_6 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_6 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_6 + 112, bakuhatsu, 255 );


-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_6 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_6 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_6 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen4, 0 );
setEffRotateKey( spep_6 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_6 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_6 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_6 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_6 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_6 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_6 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_6 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_6 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_6 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_6 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_6 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_6 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_6 + 100, shuchusen5, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen5, 0 );
setEffRotateKey( spep_6 + 100, shuchusen5, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_6 + 100, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_6 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_6 + 14, ctga, 14, 20 );

setEffMoveKey( spep_6 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_6 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_6 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_6 + 14, ctga, -10.9 );
setEffRotateKey( spep_6 + 15, ctga, -10.9 );
setEffRotateKey( spep_6 + 16, ctga, -14.9 );
setEffRotateKey( spep_6 + 17, ctga, -14.9 );
setEffRotateKey( spep_6 + 18, ctga, -10.9 );
setEffRotateKey( spep_6 + 19, ctga, -10.9 );
setEffRotateKey( spep_6 + 20, ctga, -14.9 );
setEffRotateKey( spep_6 + 21, ctga, -14.9 );
setEffRotateKey( spep_6 + 22, ctga, -10.9 );
setEffRotateKey( spep_6 + 23, ctga, -10.9 );
setEffRotateKey( spep_6 + 24, ctga, -14.9 );
setEffRotateKey( spep_6 + 25, ctga, -14.9 );
setEffRotateKey( spep_6 + 26, ctga, -10.9 );
setEffRotateKey( spep_6 + 27, ctga, -10.9 );
setEffRotateKey( spep_6 + 28, ctga, -14.9 );
setEffRotateKey( spep_6 + 100, ctga, -14.9 );

setEffAlphaKey( spep_6 + 14, ctga, 255 );
setEffAlphaKey( spep_6 + 100, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_6 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_6 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_6 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_6 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_6 + 2, hibiware, 0 );
setEffRotateKey( spep_6 + 100, hibiware, 0 );

setEffAlphaKey( spep_6 + 2, hibiware, 0 );
setEffAlphaKey( spep_6 + 13, hibiware, 0 );
setEffAlphaKey( spep_6 + 14, hibiware, 255 );
setEffAlphaKey( spep_6 + 100, hibiware, 255 );

--SE
playSe( spep_6 + 0, 1014 );
playSe( spep_6 + 14, 1054 );

--終わり
dealDamage( spep_6 +10 );
endPhase( spep_6 + 98 );

else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 導入〜スローイング
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, start, 0, 0, 0 );
setEffMoveKey( spep_0 + 246, start, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0 );
setEffScaleKey( spep_0 + 246, start, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, start, 0 );
setEffRotateKey( spep_0 + 246, start, 0 );
setEffAlphaKey( spep_0 + 0, start, 255 );
setEffAlphaKey( spep_0 + 246, start, 255 );

--流線
shuchusen1 = entryEffectLife( spep_0 -3 + 60,  906, 30, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 60, shuchusen1, 30, 20 );
setEffMoveKey( spep_0 -3 + 60, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 90, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 60, shuchusen1, 1.15, 1.5 );
setEffScaleKey( spep_0 -3 + 90, shuchusen1, 1.15, 1.5 );

setEffRotateKey( spep_0 -3 + 60, shuchusen1, 0 );
setEffRotateKey( spep_0 -3 + 90, shuchusen1, 0 );

setEffAlphaKey( spep_0 -3 + 60, shuchusen1, 64 );
setEffAlphaKey( spep_0 -3 + 62, shuchusen1, 128 );
setEffAlphaKey( spep_0 -3 + 64, shuchusen1, 191 );
setEffAlphaKey( spep_0 -3 + 84, shuchusen1, 191 );
setEffAlphaKey( spep_0 -3 + 86, shuchusen1, 128 );
setEffAlphaKey( spep_0 -3 + 88, shuchusen1, 64 );
setEffAlphaKey( spep_0 -3 + 90, shuchusen1, 0 );

--SE
SE0=playSe( spep_0 + 0, 8 );

playSe( spep_0 + 61, 1151 );
setSeVolume( spep_0 + 61, 1112, 112 );
se_1112 = playSe( spep_0 + 61, 1112 );
se_1039 = playSe( spep_0 + 91, 1039 );
se_1113 = playSe( spep_0 + 91, 1113 );
se_1039_1 = playSe( spep_0 + 101, 1039 );
setSeVolume( spep_0 + 101, 1039, 76 );
se_1113_1 = playSe( spep_0 + 101, 1113 );
setSeVolume( spep_0 + 101, 1113, 76 );
se_1039_2 = playSe( spep_0 + 112, 1039 );
se_1113_2 = playSe( spep_0 + 112, 1113 );
se_1184 = playSe( spep_0 + 130, 1184 );
se_1112_1 = playSe( spep_0 + 136, 1112 );
playSe( spep_0 + 171, 4 );
SE001 = playSe( spep_0 + 200, 1003 );
SE002 = playSe( spep_0 + 204, 1117 );

stopSe( spep_0 + 76, se_1112, 17 );
stopSe( spep_0 + 101, se_1039, 5 );
stopSe( spep_0 + 97, se_1113, 5 );
stopSe( spep_0 + 111, se_1039_1, 5 );
stopSe( spep_0 + 107, se_1113_1, 5 );
stopSe( spep_0 + 122, se_1039_2, 5 );
stopSe( spep_0 + 118, se_1113_2, 5 );
stopSe( spep_0 + 140, se_1184, 28 );
stopSe( spep_0 + 151, se_1112_1, 17 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 250, 0, 0, 0, 0, 255 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 216; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );


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

-- ** 次の準備 ** --
spep_1=spep_0+246;

------------------------------------------------------
-- 敵に肉が巻きつく
------------------------------------------------------
-- ** エフェクト等 ** --
wind_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, wind_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 76, wind_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, wind_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76, wind_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, wind_f, 0 );
setEffRotateKey( spep_1 + 76, wind_f, 0 );
setEffAlphaKey( spep_1 + 0, wind_f, 255 );
setEffAlphaKey( spep_1 + 76, wind_f, 255 );

-- ** エフェクト等 ** --
wind_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, wind_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 76, wind_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, wind_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76, wind_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, wind_b, 0 );
setEffRotateKey( spep_1 + 76, wind_b, 0 );
setEffAlphaKey( spep_1 + 0, wind_b, 255 );
setEffAlphaKey( spep_1 + 76, wind_b, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1);
setDisp( spep_1 + 76, 1, 0);
changeAnime( spep_1 + 0, 1, 104);
changeAnime( spep_1 -3 + 20, 1, 106);

setMoveKey( spep_1 + 0, 1, 492.1, 386.9 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 436.4, 345.6 , 0 );
setMoveKey( spep_1-3 + 4, 1, 380.6, 304.3 , 0 );
setMoveKey( spep_1-3 + 6, 1, 324.9, 263 , 0 );
setMoveKey( spep_1-3 + 8, 1, 269.3, 221.7 , 0 );
setMoveKey( spep_1-3 + 10, 1, 213.5, 180.4 , 0 );
setMoveKey( spep_1-3 + 12, 1, 157.8, 139.1 , 0 );
setMoveKey( spep_1-3 + 14, 1, 102.1, 97.8 , 0 );
setMoveKey( spep_1-3 + 16, 1, 46.3, 56.5 , 0 );
setMoveKey( spep_1-3 + 18, 1, 45.1, 54.3 , 0 );
setMoveKey( spep_1-3 + 19, 1, 45.1, 54.3 , 0 );

b=30;
setMoveKey( spep_1-3 + 20, 1, 3.9+b, 95.5-b , 0 );
setMoveKey( spep_1-3 + 22, 1, 2.5+b, 94.1-b , 0 );
setMoveKey( spep_1-3 + 24, 1, 1+b, 92.7-b , 0 );
setMoveKey( spep_1-3 + 26, 1, -0.5+b, 91.4-b , 0 );
setMoveKey( spep_1-3 + 28, 1, -1.9+b, 90.1-b , 0 );
setMoveKey( spep_1-3 + 30, 1, -3.4+b, 88.7-b , 0 );
setMoveKey( spep_1-3 + 32, 1, -4.8+b, 87.4-b , 0 );
setMoveKey( spep_1-3 + 34, 1, -6.2+b, 86.1-b , 0 );
setMoveKey( spep_1-3 + 36, 1, -7.7+b, 84.8-b , 0 );
setMoveKey( spep_1-3 + 38, 1, -9.1+b, 83.5-b , 0 );
setMoveKey( spep_1-3 + 40, 1, -10.6+b, 82.2-b , 0 );
setMoveKey( spep_1-3 + 42, 1, -11.9+b, 81-b , 0 );
setMoveKey( spep_1-3 + 44, 1, -13.4+b, 79.7-b , 0 );
setMoveKey( spep_1-3 + 46, 1, -14.8+b, 78.4-b , 0 );
setMoveKey( spep_1-3 + 48, 1, -16.2+b, 77.2-b , 0 );
setMoveKey( spep_1-3 + 50, 1, -17.6+b, 75.9-b , 0 );
setMoveKey( spep_1-3 + 52, 1, -19+b, 74.7-b , 0 );
setMoveKey( spep_1-3 + 54, 1, -20.4+b, 73.5-b , 0 );
setMoveKey( spep_1-3 + 56, 1, -21.8+b, 72.3-b , 0 );
setMoveKey( spep_1-3 + 58, 1, -23.2+b, 71.1-b , 0 );
setMoveKey( spep_1-3 + 60, 1, -24.6+b, 69.9-b , 0 );
setMoveKey( spep_1-3 + 62, 1, -26+b, 68.7-b , 0 );
setMoveKey( spep_1-3 + 64, 1, -27.4+b, 67.5-b , 0 );
setMoveKey( spep_1-3 + 66, 1, -28.8+b, 66.3-b , 0 );
setMoveKey( spep_1-3 + 68, 1, -30.1+b, 65.2-b , 0 );
setMoveKey( spep_1 + 76, 1, -30.1+b, 65.2-b , 0 );

setScaleKey( spep_1 + 0, 1, 1.91, 1.91 );
--setScaleKey( spep_1-3 + 2, 1, 1.85, 1.85 );
setScaleKey( spep_1-3 + 4, 1, 1.8, 1.8 );
setScaleKey( spep_1-3 + 6, 1, 1.74, 1.74 );
setScaleKey( spep_1-3 + 8, 1, 1.68, 1.68 );
setScaleKey( spep_1-3 + 10, 1, 1.62, 1.62 );
setScaleKey( spep_1-3 + 12, 1, 1.56, 1.56 );
setScaleKey( spep_1-3 + 14, 1, 1.51, 1.51 );
setScaleKey( spep_1-3 + 16, 1, 1.45, 1.45 );
setScaleKey( spep_1-3 + 18, 1, 1.46, 1.46 );
setScaleKey( spep_1-3 + 19, 1, 1.46, 1.46 );

setScaleKey( spep_1-3 + 20, 1, 1.39, 1.39 );
setScaleKey( spep_1-3 + 22, 1, 1.41, 1.41 );
setScaleKey( spep_1-3 + 24, 1, 1.42, 1.42 );
setScaleKey( spep_1-3 + 26, 1, 1.44, 1.44 );
setScaleKey( spep_1-3 + 28, 1, 1.45, 1.45 );
setScaleKey( spep_1-3 + 30, 1, 1.46, 1.46 );
setScaleKey( spep_1-3 + 32, 1, 1.48, 1.48 );
setScaleKey( spep_1-3 + 34, 1, 1.49, 1.49 );
setScaleKey( spep_1-3 + 36, 1, 1.51, 1.51 );
setScaleKey( spep_1-3 + 38, 1, 1.52, 1.52 );
setScaleKey( spep_1-3 + 40, 1, 1.54, 1.54 );
setScaleKey( spep_1-3 + 42, 1, 1.55, 1.55 );
setScaleKey( spep_1-3 + 44, 1, 1.56, 1.56 );
setScaleKey( spep_1-3 + 46, 1, 1.58, 1.58 );
setScaleKey( spep_1-3 + 48, 1, 1.59, 1.59 );
setScaleKey( spep_1-3 + 50, 1, 1.61, 1.61 );
setScaleKey( spep_1-3 + 52, 1, 1.62, 1.62 );
setScaleKey( spep_1-3 + 54, 1, 1.63, 1.63 );
setScaleKey( spep_1-3 + 56, 1, 1.65, 1.65 );
setScaleKey( spep_1-3 + 58, 1, 1.66, 1.66 );
setScaleKey( spep_1-3 + 60, 1, 1.68, 1.68 );
setScaleKey( spep_1-3 + 62, 1, 1.69, 1.69 );
setScaleKey( spep_1-3 + 64, 1, 1.7, 1.7 );
setScaleKey( spep_1-3 + 66, 1, 1.72, 1.72 );
setScaleKey( spep_1-3 + 68, 1, 1.73, 1.73 );
setScaleKey( spep_1 + 76, 1, 1.73, 1.73 );

a=5;

setRotateKey( spep_1-3 + 20, 1, -50.5 -a );
setRotateKey( spep_1-3 + 22, 1, -50.5 -a);
setRotateKey( spep_1-3 + 24, 1, -50.4 -a);
setRotateKey( spep_1-3 + 26, 1, -50.4 -a);
setRotateKey( spep_1-3 + 28, 1, -50.3 -a);
setRotateKey( spep_1-3 + 30, 1, -50.3 -a);
setRotateKey( spep_1-3 + 32, 1, -50.2 -a);
setRotateKey( spep_1-3 + 34, 1, -50.2 -a);
setRotateKey( spep_1-3 + 36, 1, -50.1 -a);
setRotateKey( spep_1-3 + 38, 1, -50.1 -a);
setRotateKey( spep_1-3 + 40, 1, -50 -a);
setRotateKey( spep_1-3 + 42, 1, -50 -a);
setRotateKey( spep_1-3 + 44, 1, -49.9 -a);
setRotateKey( spep_1-3 + 46, 1, -49.9 -a);
setRotateKey( spep_1-3 + 48, 1, -49.8 -a);
setRotateKey( spep_1-3 + 50, 1, -49.8 -a);
setRotateKey( spep_1-3 + 52, 1, -49.7 -a);
setRotateKey( spep_1-3 + 54, 1, -49.7 -a);
setRotateKey( spep_1-3 + 56, 1, -49.6 -a);
setRotateKey( spep_1-3 + 58, 1, -49.6 -a);
setRotateKey( spep_1-3 + 60, 1, -49.5 -a);
setRotateKey( spep_1-3 + 62, 1, -49.5 -a);
setRotateKey( spep_1-3 + 64, 1, -49.4 -a);
setRotateKey( spep_1-3 + 66, 1, -49.4 -a);
setRotateKey( spep_1-3 + 68, 1, -49.3 -a);
setRotateKey( spep_1 + 76, 1, -49.3 -a);

--SE
se_1113 = playSe( spep_1 + 10, 1113 );
setSeVolume( spep_1 + 10, 1113, 0 );
setSeVolume( spep_1 + 15, 1113, 0 );
setSeVolume( spep_1 + 16, 1113, 562 );
se_1186 = playSe( spep_1 + 16, 1186 );
setSeVolume( spep_1 + 16, 1186, 114 );
se_11131 = playSe( spep_1 + 22, 1113 );
se_11132 = playSe( spep_1 + 28, 1113 );
setSeVolume( spep_1 + 28, 1113, 158 );
se_11133 = playSe( spep_1 + 34, 1113 );
se_11134 = playSe( spep_1 + 40, 1113 );
setSeVolume( spep_1 + 40, 1113, 216 );

stopSe( spep_1 + 26, se_1113, 5 );
stopSe( spep_1 + 52, se_1186, 5 );
stopSe( spep_1 + 28, se_11131, 5 );
stopSe( spep_1 + 34, se_11132, 5 );
stopSe( spep_1 + 40, se_11133, 5 );
stopSe( spep_1 + 46, se_11134, 5 );

-- ** 背景 ** --
entryFadeBg( spep_1 + 0, 0, 80, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_2=spep_1+76;
------------------------------------------------------
-- 煙〜構え
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_2 + 146, tame, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 146, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 146, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 146, tame, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_2 + 2,  906, 144, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2 + 2, shuchusen2, 144, 20 );
setEffMoveKey( spep_2 + 2, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 146, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 2, shuchusen2, 1.15, 1.21 );
setEffScaleKey( spep_2 + 146, shuchusen2, 1.15, 1.21 );

setEffRotateKey( spep_2 + 2, shuchusen2, 0 );
setEffRotateKey( spep_2 + 146, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 2, shuchusen2, 48 );
setEffAlphaKey( spep_2 + 4, shuchusen2, 96 );
setEffAlphaKey( spep_2 + 6, shuchusen2, 143 );
setEffAlphaKey( spep_2 + 8, shuchusen2, 191 );
setEffAlphaKey( spep_2 + 146, shuchusen2, 191 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_2+46  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_2+46  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_2 +58, 190006, 72, 0x102, -1, 0, 100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_2 +58,  ctgogo,  100,  510);
setEffMoveKey(  spep_2 +130,  ctgogo,  100,  510);

setEffAlphaKey( spep_2 +58, ctgogo, 0 );
setEffAlphaKey( spep_2 + 59, ctgogo, 255 );
setEffAlphaKey( spep_2 + 60, ctgogo, 255 );
setEffAlphaKey( spep_2 + 124, ctgogo, 255 );
setEffAlphaKey( spep_2 + 126, ctgogo, 191 );
setEffAlphaKey( spep_2 + 128, ctgogo, 112 );
setEffAlphaKey( spep_2 + 130, ctgogo, 64 );

setEffRotateKey(  spep_2 +58,  ctgogo,  0);
setEffRotateKey(  spep_2 +130,  ctgogo,  0);

setEffScaleKey(  spep_2 +58,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 +120,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 +130,  ctgogo, -1.07, 1.07 );

-- ** 音 ** --
playSe( spep_2 + 58, 1018 );

se_1247 = playSe( spep_2 + 2, 1247 );
setSeVolume( spep_2 + 2, 1247, 60 );
playSe( spep_2 + 53, 1131 );
setSeVolume( spep_2 + 53, 1131, 79 );
se_1132 = playSe( spep_2 + 53, 1132 );

stopSe( spep_2 + 35, se_1247, 44 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 150, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_3=spep_2+146 -2;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 84, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 84, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 84, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 84, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 84, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 84, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );
stopSe( spep_3 + 8, se_1132, 0 );

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 90, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 84;

------------------------------------------------------
-- 発射・手前
------------------------------------------------------
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 160, beam_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 160, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam_f, 0 );
setEffRotateKey( spep_4 + 160, beam_f, 0 );
setEffAlphaKey( spep_4 + 0, beam_f, 255 );
setEffAlphaKey( spep_4 + 160, beam_f, 255 );
setEffAlphaKey( spep_4 + 161, beam_f, 0 );
setEffAlphaKey( spep_4 + 162, beam_f, 0 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_4 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 160, beam_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 160, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam_b, 0 );
setEffRotateKey( spep_4 + 160, beam_b, 0 );
setEffAlphaKey( spep_4 + 0, beam_b, 255 );
setEffAlphaKey( spep_4 + 160, beam_b, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_4 + 0,  906, 96 , 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 0, shuchusen3, 96, 20 );
setEffMoveKey( spep_4 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 96, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen3, 1.1, 1.42 );
setEffScaleKey( spep_4 + 96, shuchusen3, 1.1, 1.42 );

setEffRotateKey( spep_4 + 0, shuchusen3, 0.3 );
setEffRotateKey( spep_4 + 96, shuchusen3, 0.3 );

setEffAlphaKey( spep_4 + 0, shuchusen3, 204 );
setEffAlphaKey( spep_4 + 96, shuchusen3, 204 );

--文字エントリー

ctzuo = entryEffectLife( spep_4-3 + 104,  10012, 54, 0x100, -1, 0, -23, 243.1 );--ズオッ
setEffShake( spep_4-3 + 104, ctzuo, 54, 10 );
setEffMoveKey( spep_4-3 + 104, ctzuo, -23, 243.1 , 0 );
setEffMoveKey( spep_4-3 + 106, ctzuo, -31.8, 284.5 , 0 );
setEffMoveKey( spep_4-3 + 108, ctzuo, -23, 311.2 , 0 );
setEffMoveKey( spep_4-3 + 110, ctzuo, -39.9, 320.9 , 0 );
setEffMoveKey( spep_4-3 + 112, ctzuo, -23.4, 307 , 0 );
setEffMoveKey( spep_4-3 + 114, ctzuo, -37, 314.5 , 0 );
setEffMoveKey( spep_4-3 + 116, ctzuo, -23.7, 305.4 , 0 );
setEffMoveKey( spep_4-3 + 118, ctzuo, -37.3, 315.5 , 0 );
setEffMoveKey( spep_4-3 + 120, ctzuo, -23.7, 306.2 , 0 );
setEffMoveKey( spep_4-3 + 122, ctzuo, -37.6, 316.5 , 0 );
setEffMoveKey( spep_4-3 + 124, ctzuo, -23.8, 307 , 0 );
setEffMoveKey( spep_4-3 + 126, ctzuo, -37.9, 317.6 , 0 );
setEffMoveKey( spep_4-3 + 128, ctzuo, -23.9, 307.9 , 0 );
setEffMoveKey( spep_4-3 + 130, ctzuo, -38.1, 318.7 , 0 );
setEffMoveKey( spep_4-3 + 132, ctzuo, -23.8, 308.7 , 0 );
setEffMoveKey( spep_4-3 + 134, ctzuo, -38.4, 319.7 , 0 );
setEffMoveKey( spep_4-3 + 136, ctzuo, -23.9, 309.5 , 0 );
setEffMoveKey( spep_4-3 + 138, ctzuo, -38.7, 320.7 , 0 );
setEffMoveKey( spep_4-3 + 140, ctzuo, -23.9, 310.3 , 0 );
setEffMoveKey( spep_4-3 + 142, ctzuo, -38.9, 321.8 , 0 );
setEffMoveKey( spep_4-3 + 144, ctzuo, -23.9, 311.2 , 0 );
setEffMoveKey( spep_4-3 + 146, ctzuo, -39.2, 322.8 , 0 );
setEffMoveKey( spep_4-3 + 148, ctzuo, -24, 312 , 0 );
setEffMoveKey( spep_4-3 + 150, ctzuo, -39.4, 323.9 , 0 );
setEffMoveKey( spep_4-3 + 152, ctzuo, -24.1, 312.8 , 0 );
setEffMoveKey( spep_4-3 + 154, ctzuo, -39.7, 324.9 , 0 );
setEffMoveKey( spep_4-3 + 156, ctzuo, -24.1, 313.6 , 0 );
setEffMoveKey( spep_4-3 + 158, ctzuo, -40, 326 , 0 );

setEffScaleKey( spep_4-3 + 104, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_4-3 + 106, ctzuo, 1.82, 1.82 );
setEffScaleKey( spep_4-3 + 108, ctzuo, 3.31, 3.31 );
setEffScaleKey( spep_4-3 + 110, ctzuo, 3.01, 3.01 );
setEffScaleKey( spep_4-3 + 112, ctzuo, 2.71, 2.71 );
setEffScaleKey( spep_4-3 + 114, ctzuo, 2.41, 2.41 );
setEffScaleKey( spep_4-3 + 116, ctzuo, 2.44, 2.44 );
setEffScaleKey( spep_4-3 + 118, ctzuo, 2.46, 2.46 );
setEffScaleKey( spep_4-3 + 120, ctzuo, 2.48, 2.48 );
setEffScaleKey( spep_4-3 + 122, ctzuo, 2.5, 2.5 );
setEffScaleKey( spep_4-3 + 124, ctzuo, 2.53, 2.53 );
setEffScaleKey( spep_4-3 + 126, ctzuo, 2.55, 2.55 );
setEffScaleKey( spep_4-3 + 128, ctzuo, 2.57, 2.57 );
setEffScaleKey( spep_4-3 + 130, ctzuo, 2.6, 2.6 );
setEffScaleKey( spep_4-3 + 132, ctzuo, 2.62, 2.62 );
setEffScaleKey( spep_4-3 + 134, ctzuo, 2.64, 2.64 );
setEffScaleKey( spep_4-3 + 136, ctzuo, 2.66, 2.66 );
setEffScaleKey( spep_4-3 + 138, ctzuo, 2.69, 2.69 );
setEffScaleKey( spep_4-3 + 140, ctzuo, 2.71, 2.71 );
setEffScaleKey( spep_4-3 + 142, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_4-3 + 144, ctzuo, 2.76, 2.76 );
setEffScaleKey( spep_4-3 + 146, ctzuo, 2.78, 2.78 );
setEffScaleKey( spep_4-3 + 148, ctzuo, 2.8, 2.8 );
setEffScaleKey( spep_4-3 + 150, ctzuo, 2.82, 2.82 );
setEffScaleKey( spep_4-3 + 152, ctzuo, 2.85, 2.85 );
setEffScaleKey( spep_4-3 + 154, ctzuo, 2.87, 2.87 );
setEffScaleKey( spep_4-3 + 156, ctzuo, 2.89, 2.89 );
setEffScaleKey( spep_4-3 + 158, ctzuo, 2.92, 2.92 );

setEffRotateKey( spep_4-3 + 104, ctzuo, -19.4 );
setEffRotateKey( spep_4-3 + 106, ctzuo, -23.8 );
setEffRotateKey( spep_4-3 + 108, ctzuo, -28.1 );
setEffRotateKey( spep_4-3 + 110, ctzuo, -28 );
setEffRotateKey( spep_4-3 + 112, ctzuo, -27.9 );
setEffRotateKey( spep_4-3 + 114, ctzuo, -27.8 );
setEffRotateKey( spep_4-3 + 116, ctzuo, -27.8 );
setEffRotateKey( spep_4-3 + 118, ctzuo, -27.7 );
setEffRotateKey( spep_4-3 + 120, ctzuo, -27.7 );
setEffRotateKey( spep_4-3 + 122, ctzuo, -27.6 );
setEffRotateKey( spep_4-3 + 124, ctzuo, -27.5 );
setEffRotateKey( spep_4-3 + 126, ctzuo, -27.5 );
setEffRotateKey( spep_4-3 + 128, ctzuo, -27.4 );
setEffRotateKey( spep_4-3 + 130, ctzuo, -27.4 );
setEffRotateKey( spep_4-3 + 132, ctzuo, -27.3 );
setEffRotateKey( spep_4-3 + 134, ctzuo, -27.2 );
setEffRotateKey( spep_4-3 + 136, ctzuo, -27.2 );
setEffRotateKey( spep_4-3 + 138, ctzuo, -27.1 );
setEffRotateKey( spep_4-3 + 140, ctzuo, -27.1 );
setEffRotateKey( spep_4-3 + 142, ctzuo, -27 );
setEffRotateKey( spep_4-3 + 144, ctzuo, -26.9 );
setEffRotateKey( spep_4-3 + 146, ctzuo, -26.9 );
setEffRotateKey( spep_4-3 + 148, ctzuo, -26.8 );
setEffRotateKey( spep_4-3 + 150, ctzuo, -26.7 );
setEffRotateKey( spep_4-3 + 152, ctzuo, -26.7 );
setEffRotateKey( spep_4-3 + 154, ctzuo, -26.6 );
setEffRotateKey( spep_4-3 + 156, ctzuo, -26.6 );
setEffRotateKey( spep_4-3 + 158, ctzuo, -26.5 );

setEffAlphaKey( spep_4-3 + 104, ctzuo, 255 );
setEffAlphaKey( spep_4-3 + 158, ctzuo, 255 );

--敵の動き
setDisp( spep_4-3 + 100, 1, 1);
setDisp( spep_4-3 + 160, 1, 0);
changeAnime( spep_4-3 + 100, 1, 106);

setMoveKey( spep_4-3 + 100, 1, 224.9, 239.5 , 0 );
setMoveKey( spep_4-3 + 160, 1, 224.9, 239.5 , 0 );

setScaleKey( spep_4-3 + 100, 1, 0.14, 0.14 );
setScaleKey( spep_4-3 + 160, 1, 0.14, 0.14 );

setRotateKey( spep_4-3 + 100, 1, -49.1 );
setRotateKey( spep_4-3 + 160, 1, -49.1 );

--SE
playSe( spep_4 + 2, 1223 );
playSe( spep_4 + 2, 1027 );
playSe( spep_4 + 2, 1022 );
playSe( spep_4 + 2, 1146 );
se_1211 = playSe( spep_4 + 24, 1211 );
playSe( spep_4 + 100, 1021 );

stopSe( spep_4 + 118, se_1211, 48 );

--白フェード
entryFade( spep_4 + 152, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 背景 ** --
entryFadeBg( spep_4 + 0, 0, 162, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 160;

--------------------------------------
--ギャン
--------------------------------------

--エフェクトの再生
gyan = entryEffectLife(  spep_5,  190000,  60,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_5,  gyan,  1.0,  1.0);
setEffScaleKey(  spep_5+60,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_5,  gyan,  255);
setEffAlphaKey(  spep_5+60,  gyan,  255);


-- 書き文字エントリー --
ctgayn = entryEffectLife( spep_5, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン
setEffScaleKey( spep_5, ctgayn, 3.0, 3.0);
setEffScaleKey( spep_5+60, ctgayn, 4.0, 4.0);
setEffAlphaKey( spep_5, ctgayn, 255);
setEffAlphaKey( spep_5+60, ctgayn, 0);
setEffShake( spep_5, ctgayn, 60, 10);

playSe(spep_5,SE_09);

-- ** 背景 ** --
entryFadeBg( spep_5 + 0, 0, 64, 0, 0, 0, 0, 255 );

entryFade( spep_5+48, 2,  10, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_6 = spep_5+60;
------------------------------------------------------
-- ガ
------------------------------------------------------
--敵の動き
setDisp( spep_6 + 0, 1, 1 );
changeAnime( spep_6 + 0, 1, 107 );
setMoveKey( spep_6 + 0, 1, -3.8, -32.1 , 0 );
setMoveKey( spep_6 + 2, 1, -3.7, -56.6 , 0 );
setMoveKey( spep_6 + 4, 1, -3.4, -88.1 , 0 );
setMoveKey( spep_6 + 6, 1, -3.1, -126.6 , 0 );
setMoveKey( spep_6 + 8, 1, -2.8, -172.1 , 0 );
setMoveKey( spep_6 + 10, 1, -2.4, -224.6 , 0 );
setMoveKey( spep_6 + 12, 1, -1.9, -284.1 , 0 );
setMoveKey( spep_6 + 110, 1, -1.9, -284.1 , 0 );

y=0.4;

setScaleKey( spep_6 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_6 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_6 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_6 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_6 + 8, 1, 0.93, 0.93 );
--setScaleKey( spep_6 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 12, 1, 1.5-y, 1.5-y );
setScaleKey( spep_6 + 14, 1, 1.6-y, 1.6-y );
setScaleKey( spep_6 + 16, 1, 1.5-y, 1.5-y );
setScaleKey( spep_6 + 18, 1, 1.6-y, 1.6-y );
setScaleKey( spep_6 + 20, 1, 1.5-y, 1.5-y );
setScaleKey( spep_6 + 22, 1, 1.6-y, 1.6-y );
setScaleKey( spep_6 + 24, 1, 1.5-y, 1.5-y );
setScaleKey( spep_6 + 26, 1, 1.6-y, 1.6-y );
setScaleKey( spep_6 + 110, 1, 1.6-y, 1.6-y );

z=30;
setRotateKey( spep_6 + 0, 1, 0-z );
setRotateKey( spep_6 + 2, 1, 105-z );
setRotateKey( spep_6 + 4, 1, 240-z );
setRotateKey( spep_6 + 6, 1, 405-z );
setRotateKey( spep_6 + 8, 1, 600-z );
setRotateKey( spep_6 + 10, 1, 825-z );
setRotateKey( spep_6 + 12, 1, 1080-z );
setRotateKey( spep_6 + 110, 1, 1080-z );

-- ** エフェクト等 ** --
bg = entryEffect( spep_6 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_6 + 100, bg, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, bg, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, bg, 0 );
setEffRotateKey( spep_6 + 100, bg, 0 );
setEffAlphaKey( spep_6 + 0, bg, 255 );
setEffAlphaKey( spep_6 + 100, bg, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_6 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_6 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_6 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_6 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_6 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_6 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_6 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_6 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_6 + 112, bakuhatsu, 255 );


-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_6 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_6 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_6 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen4, 0 );
setEffRotateKey( spep_6 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_6 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_6 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_6 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_6 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_6 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_6 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_6 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_6 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_6 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_6 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_6 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_6 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_6 + 100, shuchusen5, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen5, 0 );
setEffRotateKey( spep_6 + 100, shuchusen5, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_6 + 100, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_6 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_6 + 14, ctga, 14, 20 );

setEffMoveKey( spep_6 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_6 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_6 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_6 + 14, ctga, -10.9 );
setEffRotateKey( spep_6 + 15, ctga, -10.9 );
setEffRotateKey( spep_6 + 16, ctga, -14.9 );
setEffRotateKey( spep_6 + 17, ctga, -14.9 );
setEffRotateKey( spep_6 + 18, ctga, -10.9 );
setEffRotateKey( spep_6 + 19, ctga, -10.9 );
setEffRotateKey( spep_6 + 20, ctga, -14.9 );
setEffRotateKey( spep_6 + 21, ctga, -14.9 );
setEffRotateKey( spep_6 + 22, ctga, -10.9 );
setEffRotateKey( spep_6 + 23, ctga, -10.9 );
setEffRotateKey( spep_6 + 24, ctga, -14.9 );
setEffRotateKey( spep_6 + 25, ctga, -14.9 );
setEffRotateKey( spep_6 + 26, ctga, -10.9 );
setEffRotateKey( spep_6 + 27, ctga, -10.9 );
setEffRotateKey( spep_6 + 28, ctga, -14.9 );
setEffRotateKey( spep_6 + 100, ctga, -14.9 );

setEffAlphaKey( spep_6 + 14, ctga, 255 );
setEffAlphaKey( spep_6 + 100, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_6 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_6 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_6 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_6 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_6 + 2, hibiware, 0 );
setEffRotateKey( spep_6 + 100, hibiware, 0 );

setEffAlphaKey( spep_6 + 2, hibiware, 0 );
setEffAlphaKey( spep_6 + 13, hibiware, 0 );
setEffAlphaKey( spep_6 + 14, hibiware, 255 );
setEffAlphaKey( spep_6 + 100, hibiware, 255 );

--SE
playSe( spep_6 + 0, 1014 );
playSe( spep_6 + 14, 1054 );

--終わり
dealDamage( spep_6 +10 );
endPhase( spep_6 + 98 );
end