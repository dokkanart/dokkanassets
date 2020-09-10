--1018170:スケさん_未定
--sp_effect_b1_00085

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

--エフェクト
SP_01 = 154135; --セリフカットイン
SP_02 = 154136; --敵登場～敵の反撃
SP_03 = 154137; --敵登場～敵の反撃(背景)
SP_04 = 154138; --とどめ連撃
SP_05 = 154139; --とどめ連撃(背景)
SP_06 = 154140; --ラスト

--エフェクト_敵側
SP_02r = 154143; --敵登場～敵の反撃

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

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- セリフカットイン
------------------------------------------------------
--はじめの準備
spep_0 = 0;

-- ** エフェクト等 ** --
cutin = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, cutin, 0, 0 , 0 );
setEffMoveKey( spep_0 + 118, cutin, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, cutin, 1.0, 1.0 );
setEffScaleKey( spep_0 + 118, cutin, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, cutin, 0 );
setEffRotateKey( spep_0 + 118, cutin, 0 );
setEffAlphaKey( spep_0 + 0, cutin, 255 );
setEffAlphaKey( spep_0 + 118, cutin, 255 );

shuchusen1 = entryEffectLife( spep_0  , 906, 116, 0x100, -1, 0, 255.6, 0 );

setEffShake(spep_0,shuchusen1,116,10);

setEffMoveKey( spep_0 , shuchusen1, 0, 0, 0 );
setEffMoveKey( spep_0 + 116, shuchusen1, 0, 0, 0 );

setEffScaleKey( spep_0 , shuchusen1, 2, 2 );
setEffScaleKey( spep_0 + 116, shuchusen1, 2, 2 );

setEffRotateKey( spep_0 , shuchusen1, 180 )
setEffRotateKey( spep_0 + 116, shuchusen1, 180 );

setEffRotateKey( spep_0 , shuchusen1, 0 );
setEffRotateKey( spep_0 + 116, shuchusen1, 0 );

setEffAlphaKey( spep_0 , shuchusen1, 0 );
setEffAlphaKey( spep_0 +50, shuchusen1, 0 );
setEffAlphaKey( spep_0 +51, shuchusen1, 255 );
setEffAlphaKey( spep_0 +52, shuchusen1, 255 );
setEffAlphaKey( spep_0 +114, shuchusen1, 255 );
setEffAlphaKey( spep_0 +115, shuchusen1, 255 );
setEffAlphaKey( spep_0 +116, shuchusen1, 0 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 34, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 34, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 + 12 + 34, 190006, 72, 0x100, -1, 0, -40, 540);    -- ゴゴゴゴ

setEffShake(spep_0 + 12 + 34,ctgogo,72,10);

setEffMoveKey(  spep_0 +12 + 34,  ctgogo,  -40,  540);
setEffMoveKey(  spep_0 +84 + 34,  ctgogo,  -40,  540);

setEffAlphaKey( spep_0 +12 + 34, ctgogo, 0 );
setEffAlphaKey( spep_0 + 13 + 34, ctgogo, 255 );
setEffAlphaKey( spep_0 + 14 + 34, ctgogo, 255 );
setEffAlphaKey( spep_0 + 76 + 34, ctgogo, 255 );
setEffAlphaKey( spep_0 + 78 + 34, ctgogo, 255 );
setEffAlphaKey( spep_0 + 80 + 34, ctgogo, 191 );
setEffAlphaKey( spep_0 + 82 + 34, ctgogo, 128 );
setEffAlphaKey( spep_0 + 84 + 34, ctgogo, 64 );

setEffRotateKey(  spep_0 +12 + 34,  ctgogo,  0);
setEffRotateKey(  spep_0 +84 + 34,  ctgogo,  0);

setEffScaleKey(  spep_0 +12 + 34,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +74 + 34,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +84 + 34,  ctgogo, 1.07, 1.07 );

--音
playSe( spep_0 + 12 + 34, 1018 );  --ごごご

--白フェード
entryFade( spep_0 + 112, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1 = spep_0 + 118;

------------------------------------------------------
-- 敵登場～敵の反撃
------------------------------------------------------

-- ** エフェクト等 ** --
tojof = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); --敵登場～敵の反撃
setEffMoveKey( spep_1 + 0, tojof, 0, 0 , 0 );
setEffMoveKey( spep_1 + 312, tojof, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tojof, 1.0, 1.0 );
setEffScaleKey( spep_1 + 312, tojof, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tojof, 0 );
setEffRotateKey( spep_1 + 312, tojof, 0 );
setEffAlphaKey( spep_1 + 0, tojof, 255 );
setEffAlphaKey( spep_1 + 312, tojof, 255 );

-- ** エフェクト等 ** --
tojob = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); --背景
setEffMoveKey( spep_1 + 0, tojob, 0, 0 , 0 );
setEffMoveKey( spep_1 + 312, tojob, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tojob, 1.0, 1.0 );
setEffScaleKey( spep_1 + 312, tojob, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tojob, 0 );
setEffRotateKey( spep_1 + 312, tojob, 0 );
setEffAlphaKey( spep_1 + 0, tojob, 255 );
setEffAlphaKey( spep_1 + 312, tojob, 255 );

-- ** 敵の動き ** --
setDisp( spep_1  + 0, 1, 1 );
changeAnime( spep_1  + 0, 1, 101 );

setMoveKey( spep_1  + 0, 1, 335.1, -213 , 0 );
--setMoveKey( spep_1 -3 + 2, 1, 312.8, -213 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 290.7, -213 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 268.4, -213 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 246.3, -213 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 224.2, -213 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 201.9, -213 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 179.7, -213 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 157.6, -213 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 135.5, -213 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 113.2, -213 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 91.1, -213 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 68.8, -213 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 46.6, -213 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 45.8, -213 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 44.9, -213 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 44.1, -213 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 43.2, -213 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 42.4, -213 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 41.5, -213 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 40.6, -213 , 0 );

setScaleKey( spep_1  + 0, 1, 1.72, 1.72 );
setScaleKey( spep_1 -3 + 50, 1, 1.72, 1.72 );

setRotateKey( spep_1  + 0, 1, 0 );
setRotateKey( spep_1 -3 + 50, 1, 0 );


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 -3 + 50; --エンドフェイズのフレーム数を置き換える
    
    -- ** 敵の動き ** --
    setMoveKey( SP_dodge + 10 , 1, 40.6, -213 , 0 );
    setScaleKey( SP_dodge + 10 , 1, 1.72, 1.72 );
    setRotateKey( SP_dodge + 10 , 1, 0 );

    playSe( SP_dodge - 12, 1042 );
--    stopSe( SP_dodge - 12, SE0, 0 );
--    stopSe( SP_dodge - 12, SE1, 0 );
--    stopSe( SP_dodge - 12, SE2, 0 );
    
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

-- ** 敵の動き ** --
setDisp( spep_1 -3 + 312, 1, 0 );

changeAnime( spep_1 -3 + 96, 1, 106 );
changeAnime( spep_1 -3 + 112, 1,108);
changeAnime( spep_1 -3 + 132, 1, 104 );
changeAnime( spep_1 -3 + 156, 1, 1 );
changeAnime( spep_1 -3 + 172, 1, 101 );
changeAnime( spep_1 -3 + 228, 1, 11 );
--changeAnime( spep_1 -3 + 232, 1, 9 );
--changeAnime( spep_1 -3 + 240, 1, 9 );
changeAnime( spep_1 -3 + 274, 1, 17 );

setMoveKey( spep_1 -3 + 95, 1, 40.6, -213 , 0 );
setMoveKey( spep_1 -3 + 96, 1, -3.8, -163.4 , 0 );
setMoveKey( spep_1 -3 + 98, 1, -3.3, -163.4 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 47.7, -147.7 , 0 );
setMoveKey( spep_1 -3 + 102, 1, -2.7, -161.3 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 36.5, -147.4 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 30.3, -147.6 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 50.2, -142.1 , 0 );
setMoveKey( spep_1 -3 + 111, 1, 55.2, -143.3 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 160.5, -165 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 143.4, -196.7 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 204.5, -159.1 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 162.6, -190.7 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 196.8, -178 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 183, -192.7 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 204.1, -187.5 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 196.9, -197.5 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 212.1, -194.3 , 0 );
setMoveKey( spep_1 -3 + 131, 1, 212.5, -201 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 216.6, -208.9 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 217.3, -209.1 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 218, -209.2 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 218.7, -209.4 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 219.3, -209.6 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 220, -209.7 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 220.5, -209.9 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 221.2, -210.1 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 221.9, -210.3 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 222.6, -210.4 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 223.3, -210.6 , 0 );
setMoveKey( spep_1 -3 + 155, 1, 224, -210.6 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 118.3, -210.6 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 111.3, -210.4 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 104.4, -210.1 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 97.4, -209.7 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 90.6, -209.4 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 83.5, -209.1 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 76.7, -208.7 , 0 );
setMoveKey( spep_1 -3 + 171, 1, 69.6, -208.4 , 0 );
setMoveKey( spep_1 -3 + 172, 1, -47.8, -212.1 , 0 );
setMoveKey( spep_1 -3 + 174, 1, -53.3, -212 , 0 );
setMoveKey( spep_1 -3 + 176, 1, -58.8, -212 , 0 );
setMoveKey( spep_1 -3 + 178, 1, -64.3, -212 , 0 );
setMoveKey( spep_1 -3 + 180, 1, -69.8, -212 , 0 );
setMoveKey( spep_1 -3 + 182, 1, -75.3, -212 , 0 );
setMoveKey( spep_1 -3 + 184, 1, -80.8, -211.8 , 0 );
setMoveKey( spep_1 -3 + 186, 1, -86.3, -211.8 , 0 );
setMoveKey( spep_1 -3 + 188, 1, -91.8, -211.8 , 0 );
setMoveKey( spep_1 -3 + 190, 1, -97.2, -211.8 , 0 );
setMoveKey( spep_1 -3 + 192, 1, -102.7, -211.8 , 0 );
setMoveKey( spep_1 -3 + 194, 1, -108.2, -211.8 , 0 );
setMoveKey( spep_1 -3 + 196, 1, -108.4, -211.6 , 0 );
setMoveKey( spep_1 -3 + 198, 1, -108.6, -211.6 , 0 );
setMoveKey( spep_1 -3 + 200, 1, -108.7, -211.6 , 0 );
setMoveKey( spep_1 -3 + 202, 1, -108.9, -211.6 , 0 );
setMoveKey( spep_1 -3 + 204, 1, -109.1, -211.6 , 0 );
setMoveKey( spep_1 -3 + 206, 1, -109.2, -211.6 , 0 );
setMoveKey( spep_1 -3 + 208, 1, -109.4, -211.6 , 0 );
setMoveKey( spep_1 -3 + 210, 1, -109.6, -211.6 , 0 );
setMoveKey( spep_1 -3 + 212, 1, -109.6, -216.3 , 0 );
setMoveKey( spep_1 -3 + 214, 1, -109.6, -221.1 , 0 );
setMoveKey( spep_1 -3 + 216, 1, -109.6, -178.7 , 0 );
setMoveKey( spep_1 -3 + 218, 1, -109.6, -184.4 , 0 );
setMoveKey( spep_1 -3 + 220, 1, -109.6, -189.9 , 0 );
setMoveKey( spep_1 -3 + 222, 1, -109.6, -195.3 , 0 );
setMoveKey( spep_1 -3 + 224, 1, -109.6, -201 , 0 );
setMoveKey( spep_1 -3 + 227, 1, -109.6, -206.5 , 0 );
setMoveKey( spep_1 -3 + 228, 1, -55.9, -213.9 , 0 );
setMoveKey( spep_1 -3 + 231, 1, 10.8, -208.5 , 0 );
setMoveKey( spep_1 -3 + 232, 1, 23.8, -207 , 0 );
setMoveKey( spep_1 -3 + 234, 1, 37, -205.3 , 0 );
setMoveKey( spep_1 -3 + 236, 1, 38.6, -205.6 , 0 );
setMoveKey( spep_1 -3 + 239, 1, 40, -205.8 , 0 );
setMoveKey( spep_1 -3 + 240, 1, 41.5, -206 , 0 );
setMoveKey( spep_1 -3 + 242, 1, 43, -206.1 , 0 );
setMoveKey( spep_1 -3 + 244, 1, 44.4, -206.3 , 0 );
setMoveKey( spep_1 -3 + 246, 1, 46, -206.5 , 0 );
setMoveKey( spep_1 -3 + 248, 1, 47.3, -206.7 , 0 );
setMoveKey( spep_1 -3 + 250, 1, 48.9, -206.8 , 0 );
setMoveKey( spep_1 -3 + 252, 1, 50.2, -207 , 0 );
setMoveKey( spep_1 -3 + 254, 1, 51.8, -207.2 , 0 );
setMoveKey( spep_1 -3 + 256, 1, 53.3, -207.3 , 0 );
setMoveKey( spep_1 -3 + 258, 1, 54.7, -207.5 , 0 );
setMoveKey( spep_1 -3 + 260, 1, 56.3, -207.7 , 0 );
setMoveKey( spep_1 -3 + 262, 1, 57.6, -207.9 , 0 );
setMoveKey( spep_1 -3 + 264, 1, 59.2, -208 , 0 );
setMoveKey( spep_1 -3 + 266, 1, 60.7, -208.2 , 0 );
setMoveKey( spep_1 -3 + 268, 1, 62.1, -208.4 , 0 );
setMoveKey( spep_1 -3 + 270, 1, 63.6, -208.5 , 0 );
setMoveKey( spep_1 -3 + 273, 1, 65, -208.7 , 0 );
setMoveKey( spep_1 -3 + 274, 1, 90.7, -227.9 , 0 );
setMoveKey( spep_1 -3 + 276, 1, 91.9, -228.3 , 0 );
setMoveKey( spep_1 -3 + 278, 1, 93, -228.6 , 0 );
setMoveKey( spep_1 -3 + 280, 1, 94.2, -229 , 0 );
setMoveKey( spep_1 -3 + 282, 1, 95.2, -229.3 , 0 );
setMoveKey( spep_1 -3 + 284, 1, 96.4, -229.6 , 0 );
setMoveKey( spep_1 -3 + 286, 1, 97.6, -230 , 0 );
setMoveKey( spep_1 -3 + 288, 1, 98.6, -230.3 , 0 );
setMoveKey( spep_1 -3 + 290, 1, 99.8, -230.7 , 0 );
setMoveKey( spep_1 -3 + 292, 1, 100.8, -230.8 , 0 );
setMoveKey( spep_1 -3 + 294, 1, 100.8, -231 , 0 );
setMoveKey( spep_1 -3 + 296, 1, 100.8, -231.2 , 0 );
setMoveKey( spep_1 -3 + 298, 1, 100.8, -231.2 , 0 );
setMoveKey( spep_1 -3 + 300, 1, 100.8, -231.4 , 0 );
setMoveKey( spep_1 -3 + 302, 1, 100.8, -231.5 , 0 );
setMoveKey( spep_1 -3 + 304, 1, 100.8, -231.5 , 0 );
setMoveKey( spep_1 -3 + 306, 1, 100.8, -231.7 , 0 );
setMoveKey( spep_1 -3 + 308, 1, 100.8, -231.9 , 0 );
setMoveKey( spep_1 -3 + 310, 1, 100.8, -231.9 , 0 );
setMoveKey( spep_1 -3 + 312, 1, 100.8, -232 , 0 );

setScaleKey( spep_1 -3 + 51, 1, 1.72, 1.72 );
setScaleKey( spep_1 -3 + 312, 1, 1.72, 1.72 );

setRotateKey( spep_1 -3 + 51, 1, 0 );
setRotateKey( spep_1 -3 + 95, 1, 0 );
setRotateKey( spep_1 -3 + 96, 1, -37.2 );
setRotateKey( spep_1 -3 + 111, 1, -37.2 );
setRotateKey( spep_1 -3 + 112, 1, 0 );
setRotateKey( spep_1 -3 + 227, 1, 0 );
setRotateKey( spep_1 -3 + 228, 1, -0.4 );
setRotateKey( spep_1 -3 + 231, 1, 2.5 );
setRotateKey( spep_1 -3 + 232, 1, 0 );
setRotateKey( spep_1 -3 + 312, 1, 0 );

-- ** エフェクト等 ** --
hatena = entryEffect( spep_1 -3 + 38, 150063, 0x100, -1, 0, 0, -30 );
setEffMoveKey( spep_1 -3 + 38, hatena, 0, 0, 0 );
setEffMoveKey( spep_1 -3 + 86, hatena, 0, 0, 0 );

setEffScaleKey( spep_1 -3 + 38, hatena, 1.47, 1.47 );
setEffScaleKey( spep_1 -3 + 86, hatena, 1.47, 1.47 );

setEffRotateKey( spep_1 -3 + 38, hatena, 0 );
setEffRotateKey( spep_1 -3 + 86, hatena, 0 );

setEffAlphaKey( spep_1 -3 + 38, hatena, 255 );
setEffAlphaKey( spep_1 -3 + 86, hatena, 255 );

hatena2 = entryEffect( spep_1 -3 + 270, 150063, 0x100, -1, 0, 0, -30 );
setEffMoveKey( spep_1 -3 + 270, hatena2, 100, 0, 0 );
setEffMoveKey( spep_1 -3 + 306, hatena2, 100, 0, 0 );

setEffScaleKey( spep_1 -3 + 270, hatena2, 1.47, 1.47 );
setEffScaleKey( spep_1 -3 + 306, hatena2, 1.47, 1.47 );

setEffRotateKey( spep_1 -3 + 270, hatena2, 0 );
setEffRotateKey( spep_1 -3 + 306, hatena2, 0 );

setEffAlphaKey( spep_1 -3 + 270, hatena2, 255 );
setEffAlphaKey( spep_1 -3 + 306, hatena2, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_1 -3 + 230, 914, 30, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 -3 + 230, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 260, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 230, ryusen1, 4.3, 1.62 );
setEffScaleKey( spep_1 -3 + 260, ryusen1, 4.3, 1.62 );

setEffRotateKey( spep_1 -3 + 230, ryusen1, 0 );
setEffRotateKey( spep_1 -3 + 260, ryusen1, 0 );

setEffAlphaKey( spep_1 -3 + 230, ryusen1, 55 );
setEffAlphaKey( spep_1 -3 + 232, ryusen1, 82 );
setEffAlphaKey( spep_1 -3 + 234, ryusen1, 110 );
setEffAlphaKey( spep_1 -3 + 236, ryusen1, 200 );
setEffAlphaKey( spep_1 -3 + 252, ryusen1, 200 );
setEffAlphaKey( spep_1 -3 + 254, ryusen1, 110 );
setEffAlphaKey( spep_1 -3 + 256, ryusen1, 82 );
setEffAlphaKey( spep_1 -3 + 258, ryusen1, 55 );
setEffAlphaKey( spep_1 -3 + 260, ryusen1, 0 );

--[[
ryusen1a = entryEffectLife( spep_1 -3 + 230, 914, 30, 0x80, -1, 0, 495.4, 10.2 );
setEffMoveKey( spep_1 -3 + 230, ryusen1a, 495.4, 10.2 , 0 );
setEffMoveKey( spep_1 -3 + 232, ryusen1a, 18.7, 10.2 , 0 );
setEffMoveKey( spep_1 -3 + 234, ryusen1a, -458, 10.2 , 0 );
setEffMoveKey( spep_1 -3 + 236, ryusen1a, 972.1, 10.2 , 0 );
setEffMoveKey( spep_1 -3 + 238, ryusen1a, 495.4, 10.2 , 0 );
setEffMoveKey( spep_1 -3 + 240, ryusen1a, 18.7, 10.2 , 0 );
setEffMoveKey( spep_1 -3 + 242, ryusen1a, -458, 10.2 , 0 );
setEffMoveKey( spep_1 -3 + 244, ryusen1a, 1925.5, 10.2 , 0 );
setEffMoveKey( spep_1 -3 + 246, ryusen1a, 1448.8, 10.2 , 0 );
setEffMoveKey( spep_1 -3 + 248, ryusen1a, 972.1, 10.2 , 0 );
setEffMoveKey( spep_1 -3 + 250, ryusen1a, 495.4, 10.2 , 0 );
setEffMoveKey( spep_1 -3 + 252, ryusen1a, 972.1, 10.2 , 0 );
setEffMoveKey( spep_1 -3 + 254, ryusen1a, 495.4, 10.2 , 0 );
setEffMoveKey( spep_1 -3 + 256, ryusen1a, 18.7, 10.2 , 0 );
setEffMoveKey( spep_1 -3 + 260, ryusen1a, -458, 10.2 , 0 );

setEffScaleKey( spep_1 -3 + 230, ryusen1a, 4.3, 1.62 );
setEffScaleKey( spep_1 -3 + 260, ryusen1a, 4.3, 1.62 );

setEffRotateKey( spep_1 -3 + 230, ryusen1a, 0 );
setEffRotateKey( spep_1 -3 + 260, ryusen1a, 0 );

setEffAlphaKey( spep_1 -3 + 230, ryusen1a, 55 );
setEffAlphaKey( spep_1 -3 + 232, ryusen1a, 82 );
setEffAlphaKey( spep_1 -3 + 234, ryusen1a, 110 );
setEffAlphaKey( spep_1 -3 + 236, ryusen1a, 200 );
setEffAlphaKey( spep_1 -3 + 252, ryusen1a, 200 );
setEffAlphaKey( spep_1 -3 + 254, ryusen1a, 110 );
setEffAlphaKey( spep_1 -3 + 256, ryusen1a, 82 );
setEffAlphaKey( spep_1 -3 + 258, ryusen1a, 55 );
setEffAlphaKey( spep_1 -3 + 260, ryusen1a, 0 );
]]--

-- ** 集中線 **` --
shuchusen2 = entryEffectLife( spep_1 -3 + 96, 906, 32, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_1 -3 + 96, shuchusen2, 0, 0, 0 );
setEffMoveKey( spep_1 -3 + 128, shuchusen2, 0, 0, 0 );

setEffScaleKey( spep_1 -3 + 96, shuchusen2, 2, 2 );
setEffScaleKey( spep_1 -3 + 128, shuchusen2, 2, 2 );

setEffRotateKey( spep_1 -3 + 96, shuchusen2, 0 );
setEffRotateKey( spep_1 -3 + 98, shuchusen2, 180 );
setEffRotateKey( spep_1 -3 + 100, shuchusen2, 0 );
setEffRotateKey( spep_1 -3 + 102, shuchusen2, 180 );
setEffRotateKey( spep_1 -3 + 104, shuchusen2, 0 );
setEffRotateKey( spep_1 -3 + 106, shuchusen2, 180 );
setEffRotateKey( spep_1 -3 + 108, shuchusen2, 0 );
setEffRotateKey( spep_1 -3 + 110, shuchusen2, 180 );
setEffRotateKey( spep_1 -3 + 112, shuchusen2, 0 );
setEffRotateKey( spep_1 -3 + 114, shuchusen2, 180 );
setEffRotateKey( spep_1 -3 + 116, shuchusen2, 0 );
setEffRotateKey( spep_1 -3 + 118, shuchusen2, 180 );
setEffRotateKey( spep_1 -3 + 120, shuchusen2, 0 );
setEffRotateKey( spep_1 -3 + 122, shuchusen2, 180 );
setEffRotateKey( spep_1 -3 + 124, shuchusen2, 0 );
setEffRotateKey( spep_1 -3 + 126, shuchusen2, 180 );
setEffRotateKey( spep_1 -3 + 128, shuchusen2, 0 );

setEffAlphaKey( spep_1 -3 + 96, shuchusen2, 255 );
setEffAlphaKey( spep_1 -3 + 128, shuchusen2, 255 );

-- ** 書き文字エントリー ** --
ctBaki = entryEffectLife( spep_1 -3 + 96, 10020, 16, 0x100, -1, 0, -50.1, 55.2 ); --バキッ
setEffMoveKey( spep_1 -3 + 96, ctBaki, -50.1, 55.2 , 0 );
setEffMoveKey( spep_1 -3 + 98, ctBaki, -53.1, 56.8 , 0 );
setEffMoveKey( spep_1 -3 + 100, ctBaki, -46.8, 50.3 , 0 );
setEffMoveKey( spep_1 -3 + 102, ctBaki, -55.1, 57 , 0 );
setEffMoveKey( spep_1 -3 + 104, ctBaki, -46.3, 58 , 0 );
setEffMoveKey( spep_1 -3 + 106, ctBaki, -50.5, 50 , 0 );
setEffMoveKey( spep_1 -3 + 112, ctBaki, -50.5, 50 , 0 );

setEffScaleKey( spep_1 -3 + 96, ctBaki, 1.27, 1.27 );
setEffScaleKey( spep_1 -3 + 112, ctBaki, 1.27, 1.27 );

setEffRotateKey( spep_1 -3 + 96, ctBaki, 0 );
setEffRotateKey( spep_1 -3 + 112, ctBaki, 0 );

setEffAlphaKey( spep_1 -3 + 96, ctBaki, 255 );
setEffAlphaKey( spep_1 -3 + 112, ctBaki, 255 );

ctZun = entryEffectLife( spep_1 -3 + 114, 10016, 16, 0x100, -1, 0, 107.2, 42.3 ); --ズンッ
setEffMoveKey( spep_1 -3 + 114, ctZun, 107.2, 42.3 , 0 );
setEffMoveKey( spep_1 -3 + 116, ctZun, 103.4, 44.3 , 0 );
setEffMoveKey( spep_1 -3 + 118, ctZun, 111.5, 35.9 , 0 );
setEffMoveKey( spep_1 -3 + 120, ctZun, 100.8, 44.5 , 0 );
setEffMoveKey( spep_1 -3 + 122, ctZun, 112.1, 45.8 , 0 );
setEffMoveKey( spep_1 -3 + 124, ctZun, 106.7, 35.5 , 0 );
setEffMoveKey( spep_1 -3 + 130, ctZun, 106.7, 35.5 , 0 );

setEffScaleKey( spep_1 -3 + 114, ctZun, 1.65, 1.65 );
setEffScaleKey( spep_1 -3 + 130, ctZun, 1.65, 1.65 );

setEffRotateKey( spep_1 -3 + 114, ctZun, 0 );
setEffRotateKey( spep_1 -3 + 130, ctZun, 0 );

setEffAlphaKey( spep_1 -3 + 114, ctZun, 255 );
setEffAlphaKey( spep_1 -3 + 130, ctZun, 255 );

ctKantanhu = entryEffectLife( spep_1 -3 + 216, 10000, 10, 0x100, -1, 0, -12.4, 4.3 ); --!!
setEffMoveKey( spep_1 -3 + 216, ctKantanhu, -12.4, 4.3 , 0 );
setEffMoveKey( spep_1 -3 + 218, ctKantanhu, -10.2, 7.8 , 0 );
setEffMoveKey( spep_1 -3 + 220, ctKantanhu, -4.5, 0.2 , 0 );
setEffMoveKey( spep_1 -3 + 222, ctKantanhu, -11.8, 4.8 , 0 );
setEffMoveKey( spep_1 -3 + 224, ctKantanhu, -12.4, 4.3 , 0 );
setEffMoveKey( spep_1 -3 + 226, ctKantanhu, -10.2, 7.8 , 0 );

setEffScaleKey( spep_1 -3 + 216, ctKantanhu, 1.53, 1.53 );
setEffScaleKey( spep_1 -3 + 218, ctKantanhu, 1.83, 1.83 );
setEffScaleKey( spep_1 -3 + 220, ctKantanhu, 1.48, 1.48 );
setEffScaleKey( spep_1 -3 + 222, ctKantanhu, 1.83, 1.83 );
setEffScaleKey( spep_1 -3 + 224, ctKantanhu, 1.53, 1.53 );
setEffScaleKey( spep_1 -3 + 226, ctKantanhu, 1.83, 1.83 );

setEffRotateKey( spep_1 -3 + 216, ctKantanhu, 0 );
setEffRotateKey( spep_1 -3 + 226, ctKantanhu, 0 );

setEffAlphaKey( spep_1 -3 + 216, ctKantanhu, 255 );
setEffAlphaKey( spep_1 -3 + 226, ctKantanhu, 255 );

-- ** 白フェード ** --
entryFade( spep_1 + 304, 6, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_1 -3 + 38, 1113 );  --？
--playSe( spep_1 -3 + 38, 35 );  --？
playSe( spep_1 -3 + 96, 1009 );  --バキッ
playSe( spep_1 -3 + 114, 1010 );  --ズンッ
playSe( spep_1 + 200 -3, 4 );  --ささっ
playSe( spep_1 + 206 -3, 4 );  --ささっ
playSe( spep_1 -3 + 216, 2 );  --!!
playSe( spep_1 -3 + 232, 1003 );  --空振り
playSe( spep_1 -3 + 270, 1113 );  --？
--playSe( spep_1 -3 + 270, 35 );  --？

-- ** 次の準備 ** --
spep_2 = spep_1 + 312;

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
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

--------------------------------------
--とどめ連撃
--------------------------------------

-- ** エフェクト等 ** --
todomeb = entryEffectLife( spep_3 + 0, SP_05, 48, 0x80, -1, 0, 0, 0 ); --背景
setEffMoveKey( spep_3 + 0, todomeb, 0, 0 , 0 );
setEffMoveKey( spep_3 + 48, todomeb, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, todomeb, 1.0, 1.0 );
setEffScaleKey( spep_3 + 48, todomeb, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, todomeb, 0 );
setEffRotateKey( spep_3 + 48, todomeb, 0 );
setEffAlphaKey( spep_3 + 0, todomeb, 255 );
setEffAlphaKey( spep_3 + 48, todomeb, 255 );

todomef = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); --とどめ連撃
setEffMoveKey( spep_3 + 0, todomef, 0, 0 , 0 );
setEffMoveKey( spep_3 + 48, todomef, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, todomef, 1.0, 1.0 );
setEffScaleKey( spep_3 + 48, todomef, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, todomef, 0 );
setEffRotateKey( spep_3 + 48, todomef, 0 );
setEffAlphaKey( spep_3 + 0, todomef, 255 );
setEffAlphaKey( spep_3 + 48, todomef, 255 );

-- ** 敵の動き ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 6 );

setMoveKey( spep_3, 1, 54.4, -213.2 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, 73.5, -207.9 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 86.7, -213.4 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 116.6, -198.5 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 119, -213.4 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 154.9, -204.7 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 151.2, -213.9 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 197.4, -212.9 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 183.4, -214 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 226.4, -198.4 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 215.5, -214.2 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 262.8, -205.3 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 247.7, -214.5 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 279.5, -206.2 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 280.1, -214.7 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 331.7, -210.3 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 352.4, -215.4 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 428.9, -211.3 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 464.8, -216.4 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 554.6, -214 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 577.4, -217.4 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 649.4, -224.3 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 689.7, -218.4 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 771.7, -197.5 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 802, -219.1 , 0 );

setScaleKey( spep_3 + 0, 1, 1.68, 1.68 );
setScaleKey( spep_3 -3 + 48, 1, 1.68, 1.68 );

setRotateKey( spep_3+ 0, 1, 39.9 );
--setRotateKey( spep_3 -3 + 2, 1, 42.9 );
setRotateKey( spep_3 -3 + 4, 1, 40.6 );
setRotateKey( spep_3 -3 + 6, 1, 42.1 );
setRotateKey( spep_3 -3 + 8, 1, 41.4 );
setRotateKey( spep_3 -3 + 10, 1, 43.2 );
setRotateKey( spep_3 -3 + 12, 1, 42.2 );
setRotateKey( spep_3 -3 + 14, 1, 44.8 );
setRotateKey( spep_3 -3 + 16, 1, 43.1 );
setRotateKey( spep_3 -3 + 18, 1, 43.9 );
setRotateKey( spep_3 -3 + 20, 1, 43.9 );
setRotateKey( spep_3 -3 + 22, 1, 44.9 );
setRotateKey( spep_3 -3 + 24, 1, 44.7 );
setRotateKey( spep_3 -3 + 26, 1, 47.1 );
setRotateKey( spep_3 -3 + 28, 1, 45.6 );
setRotateKey( spep_3 -3 + 30, 1, 46.4 );
setRotateKey( spep_3 -3 + 32, 1, 48.4 );
setRotateKey( spep_3 -3 + 34, 1, 52.5 );
setRotateKey( spep_3 -3 + 36, 1, 53.1 );
setRotateKey( spep_3 -3 + 38, 1, 56.2 );
setRotateKey( spep_3 -3 + 40, 1, 57.8 );
setRotateKey( spep_3 -3 + 42, 1, 61.9 );
setRotateKey( spep_3 -3 + 44, 1, 62.5 );
setRotateKey( spep_3 -3 + 46, 1, 65.4 );
setRotateKey( spep_3 -3 + 48, 1, 67.2 );

-- ** 流線 ** --
ryusen3 = entryEffectLife( spep_3 -3 + 4, 914, 45, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 -3 + 4, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_3  + 46, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 1, ryusen3, 4.3, 1.62 );
setEffScaleKey( spep_3  + 46, ryusen3, 4.3, 1.62 );

setEffRotateKey( spep_3 -3 + 4, ryusen3, 0 );
setEffRotateKey( spep_3  + 46, ryusen3, 0 );

--setEffAlphaKey( spep_3 -3 + 2, ryusen3, 55 );
setEffAlphaKey( spep_3 -3 + 4, ryusen3, 82 );
setEffAlphaKey( spep_3 -3 + 6, ryusen3, 110 );
setEffAlphaKey( spep_3 -3 + 8, ryusen3, 200 );
setEffAlphaKey( spep_3 -3 + 40, ryusen3, 200 );
setEffAlphaKey( spep_3 -3 + 42, ryusen3, 110 );
setEffAlphaKey( spep_3 -3 + 44, ryusen3, 82 );
setEffAlphaKey( spep_3  + 46, ryusen3, 55 );
--setEffAlphaKey( spep_3 -3 + 48, ryusen3, 27 );

--[[
ryusen3a = entryEffectLife( spep_3 -3 + 4, 914, 46, 0x80, -1, 0, 495.4, 10.2 );
--setEffMoveKey( spep_3 -3 + 2, ryusen3a, 495.4, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 4, ryusen3a, 18.7, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 6, ryusen3a, -458, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 8, ryusen3a, 972.1, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 10, ryusen3a, 495.4, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 12, ryusen3a, 18.7, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 14, ryusen3a, -458, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 16, ryusen3a, 1925.5, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 18, ryusen3a, 1448.8, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 20, ryusen3a, 972.1, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 22, ryusen3a, 495.4, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 24, ryusen3a, 18.7, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 26, ryusen3a, -458, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 28, ryusen3a, 1925.5, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 30, ryusen3a, 1448.8, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 32, ryusen3a, 972.1, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 34, ryusen3a, 495.4, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 36, ryusen3a, 18.7, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 38, ryusen3a, -458, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 40, ryusen3a, 972.1, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 42, ryusen3a, 495.4, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 44, ryusen3a, 18.7, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 46, ryusen3a, -458, 10.2 , 0 );

setEffScaleKey( spep_3 -3 + 4, ryusen3a, 4.3, 1.62 );
setEffScaleKey( spep_3 -3 + 46, ryusen3a, 4.3, 1.62 );

setEffRotateKey( spep_3 -3 + 4, ryusen3a, 0 );
setEffRotateKey( spep_3 -3 + 46, ryusen3a, 0 );

--setEffAlphaKey( spep_3 -3 + 2, ryusen3a, 55 );
setEffAlphaKey( spep_3 -3 + 4, ryusen3a, 82 );
setEffAlphaKey( spep_3 -3 + 6, ryusen3a, 110 );
setEffAlphaKey( spep_3 -3 + 8, ryusen3a, 200 );
setEffAlphaKey( spep_3 -3 + 40, ryusen3a, 200 );
setEffAlphaKey( spep_3 -3 + 42, ryusen3a, 110 );
setEffAlphaKey( spep_3 -3 + 44, ryusen3a, 82 );
setEffAlphaKey( spep_3 -3 + 46, ryusen3a, 55 );
--setEffAlphaKey( spep_3 -3 + 48, ryusen3, 27 );
]]--

-- ** 書き文字エントリー ** -
ctZudodo = entryEffectLife( spep_3 -3 + 4, 10014, 44, 0x100, -1, 0, -0.3, 129.1 ); --ズドドドッ
--setEffMoveKey( spep_3 -3 + 2, ctZudodo, -0.3, 129.1 , 0 );
setEffMoveKey( spep_3 -3 + 4, ctZudodo, 2.5, 135 , 0 );
setEffMoveKey( spep_3 -3 + 6, ctZudodo, 4.5, 128.9 , 0 );
setEffMoveKey( spep_3 -3 + 8, ctZudodo, 1, 135.1 , 0 );
setEffMoveKey( spep_3 -3 + 10, ctZudodo, 1.3, 127.7 , 0 );
setEffMoveKey( spep_3 -3 + 12, ctZudodo, 1.1, 135.8 , 0 );
setEffMoveKey( spep_3 -3 + 14, ctZudodo, 7.3, 129.8 , 0 );
setEffMoveKey( spep_3 -3 + 16, ctZudodo, -1.9, 134.1 , 0 );
setEffMoveKey( spep_3 -3 + 18, ctZudodo, 7, 127.5 , 0 );
setEffMoveKey( spep_3 -3 + 20, ctZudodo, 0.1, 135.5 , 0 );
setEffMoveKey( spep_3 -3 + 22, ctZudodo, -0.2, 125.2 , 0 );
setEffMoveKey( spep_3 -3 + 24, ctZudodo, 2.2, 135.8 , 0 );
setEffMoveKey( spep_3 -3 + 26, ctZudodo, 4.5, 127.3 , 0 );
setEffMoveKey( spep_3 -3 + 28, ctZudodo, 5.1, 138.3 , 0 );
setEffMoveKey( spep_3 -3 + 30, ctZudodo, 5.9, 124.6 , 0 );
setEffMoveKey( spep_3 -3 + 32, ctZudodo, 2.4, 137.2 , 0 );
setEffMoveKey( spep_3 -3 + 34, ctZudodo, 4.6, 125.9 , 0 );
setEffMoveKey( spep_3 -3 + 36, ctZudodo, -3.9, 135.7 , 0 );
setEffMoveKey( spep_3 -3 + 38, ctZudodo, 8.9, 132.7 , 0 );
setEffMoveKey( spep_3 -3 + 40, ctZudodo, 18.4, 135.6 , 0 );
setEffMoveKey( spep_3 -3 + 42, ctZudodo, 7.3, 130.6 , 0 );
setEffMoveKey( spep_3 -3 + 44, ctZudodo, 12.4, 142.6 , 0 );
setEffMoveKey( spep_3 -3 + 46, ctZudodo, 8.1, 128.4 , 0 );
setEffMoveKey( spep_3 -3 + 48, ctZudodo, 8.1, 128.4 , 0 );

setEffScaleKey( spep_3 -3 + 4, ctZudodo, 2.22, 2.22 );
setEffScaleKey( spep_3 -3 + 36, ctZudodo, 2.22, 2.22 );
setEffScaleKey( spep_3 -3 + 48, ctZudodo, 2.23, 2.23 );

setEffRotateKey( spep_3 -3 + 4, ctZudodo, 28.2 );
setEffRotateKey( spep_3 -3 + 48, ctZudodo, 28.2 );

--setEffAlphaKey( spep_3 -3 + 2, ctZudodo, 64 );
setEffAlphaKey( spep_3 -3 + 4, ctZudodo, 128 );
setEffAlphaKey( spep_3 -3 + 6, ctZudodo, 191 );
setEffAlphaKey( spep_3 -3 + 8, ctZudodo, 255 );
setEffAlphaKey( spep_3 -3 + 38, ctZudodo, 255 );
setEffAlphaKey( spep_3 -3 + 40, ctZudodo, 204 );
setEffAlphaKey( spep_3 -3 + 42, ctZudodo, 153 );
setEffAlphaKey( spep_3 -3 + 44, ctZudodo, 102 );
setEffAlphaKey( spep_3 -3 + 46, ctZudodo, 51 );
setEffAlphaKey( spep_3 -3 + 48, ctZudodo, 0 );

--白フェード
entryFade( spep_3 + 40, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--ラッシュ音
playSe( spep_3 -3 + 4, 1009);
playSe( spep_3 -3 + 6, 1010);
playSe( spep_3 -3 + 12, 1010);
playSe( spep_3 -3 + 18, 1009);
playSe( spep_3 -3 + 24, 1010);
playSe( spep_3 -3 + 36, 1009);
playSe( spep_3 -3 + 46, 1010);

-- ** 次の準備 ** --
spep_4 = spep_3 + 48;


------------------------------------------------------
-- 敵吹っ飛びシーン(112F)
------------------------------------------------------

haikei = entryEffectLife( spep_4 + 0, SP_06, 112, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, haikei, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 112, haikei, 0, 0, 0 ); 

setEffScaleKey( spep_4 + 0, haikei, 1.0, 1.0 );
setEffScaleKey( spep_4 + 112, haikei, 1.0, 1.0 );

setEffRotateKey( spep_4 + 0, haikei, 0 );
setEffRotateKey( spep_4 + 112, haikei, 0 );

setEffAlphaKey( spep_4 + 0, haikei, 255 );
setEffAlphaKey( spep_4 + 112, haikei, 255 );

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
shuchusen6 = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen6, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen6, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen6, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen6, 0 );
setEffRotateKey( spep_4 + 46, shuchusen6, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen6, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen6, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen6, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen6, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen6, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen6, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen6, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen6, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen6, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen6, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen6, 0 );

shuchusen7 = entryEffectLife( spep_4 + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusen7, 0, 0 , 0 );
setEffMoveKey( spep_4 + 112, shuchusen7, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen7, 1, 1 );
setEffScaleKey( spep_4 + 112, shuchusen7, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen7, 0 );
setEffRotateKey( spep_4 + 112, shuchusen7, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen7, 255 );
setEffAlphaKey( spep_4 + 112, shuchusen7, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 112, ctga, 3.2, 3.2 );

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

setScaleKey( spep_4 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_4 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_4 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_4 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 122, 1, 1.6, 1.6 );

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
playSe( spep_4 + 14, SE_11 );  --割れる音


-- ** ダメージ表示 ** --
dealDamage( spep_4 + 10 );
endPhase( spep_4 + 112 );

else 

    ------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- セリフカットイン
------------------------------------------------------
--はじめの準備
spep_0 = 0;

-- ** エフェクト等 ** --
cutin = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, cutin, 0, 0 , 0 );
setEffMoveKey( spep_0 + 118, cutin, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, cutin, 1.0, 1.0 );
setEffScaleKey( spep_0 + 118, cutin, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, cutin, 0 );
setEffRotateKey( spep_0 + 118, cutin, 0 );
setEffAlphaKey( spep_0 + 0, cutin, 255 );
setEffAlphaKey( spep_0 + 118, cutin, 255 );

shuchusen1 = entryEffectLife( spep_0  , 906, 116, 0x100, -1, 0, 255.6, 0 );

setEffShake(spep_0,shuchusen1,116,10);


setEffMoveKey( spep_0 , shuchusen1, 0, 0, 0 );
setEffMoveKey( spep_0 + 116, shuchusen1, 0, 0, 0 );

setEffScaleKey( spep_0 , shuchusen1, 2, 2 );
setEffScaleKey( spep_0 + 116, shuchusen1, 2, 2 );

setEffRotateKey( spep_0 , shuchusen1, 180 )
setEffRotateKey( spep_0 + 116, shuchusen1, 180 );

setEffRotateKey( spep_0 , shuchusen1, 0 );
setEffRotateKey( spep_0 + 116, shuchusen1, 0 );

setEffAlphaKey( spep_0 , shuchusen1, 0 );
setEffAlphaKey( spep_0 +50, shuchusen1, 0 );
setEffAlphaKey( spep_0 +51, shuchusen1, 255 );
setEffAlphaKey( spep_0 +52, shuchusen1, 255 );
setEffAlphaKey( spep_0 +114, shuchusen1, 255 );
setEffAlphaKey( spep_0 +115, shuchusen1, 255 );
setEffAlphaKey( spep_0 +116, shuchusen1, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 34, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 34, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 + 12 + 34, 190006, 72, 0x100, -1, 0, 0, 540);    -- ゴゴゴゴ

setEffShake(spep_0 + 12 + 34,ctgogo,72,10);

setEffMoveKey(  spep_0 +12 + 34,  ctgogo,  0,  540);
setEffMoveKey(  spep_0 +84 + 34,  ctgogo,  0,  540);

setEffAlphaKey( spep_0 +12 + 34, ctgogo, 0 );
setEffAlphaKey( spep_0 + 13 + 34, ctgogo, 255 );
setEffAlphaKey( spep_0 + 14 + 34, ctgogo, 255 );
setEffAlphaKey( spep_0 + 76 + 34, ctgogo, 255 );
setEffAlphaKey( spep_0 + 78 + 34, ctgogo, 255 );
setEffAlphaKey( spep_0 + 80 + 34, ctgogo, 191 );
setEffAlphaKey( spep_0 + 82 + 34, ctgogo, 128 );
setEffAlphaKey( spep_0 + 84 + 34, ctgogo, 64 );

setEffRotateKey(  spep_0 +12 + 34,  ctgogo,  0);
setEffRotateKey(  spep_0 +84 + 34,  ctgogo,  0);

setEffScaleKey(  spep_0 +12 + 34,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +74 + 34,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +84 + 34,  ctgogo, -1.07, 1.07 );

--音
playSe( spep_0 + 12 + 34, 1018 );  --ごごご

--白フェード
entryFade( spep_0 + 112, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1 = spep_0 + 118;

------------------------------------------------------
-- 敵登場～敵の反撃
------------------------------------------------------

-- ** エフェクト等 ** --
tojof = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0 ); --敵登場～敵の反撃
setEffMoveKey( spep_1 + 0, tojof, 0, 0 , 0 );
setEffMoveKey( spep_1 + 312, tojof, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tojof, 1.0, 1.0 );
setEffScaleKey( spep_1 + 312, tojof, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tojof, 0 );
setEffRotateKey( spep_1 + 312, tojof, 0 );
setEffAlphaKey( spep_1 + 0, tojof, 255 );
setEffAlphaKey( spep_1 + 312, tojof, 255 );

-- ** エフェクト等 ** --
tojob = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); --背景
setEffMoveKey( spep_1 + 0, tojob, 0, 0 , 0 );
setEffMoveKey( spep_1 + 312, tojob, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tojob, 1.0, 1.0 );
setEffScaleKey( spep_1 + 312, tojob, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tojob, 0 );
setEffRotateKey( spep_1 + 312, tojob, 0 );
setEffAlphaKey( spep_1 + 0, tojob, 255 );
setEffAlphaKey( spep_1 + 312, tojob, 255 );

-- ** 敵の動き ** --
setDisp( spep_1  + 0, 1, 1 );
changeAnime( spep_1  + 0, 1, 101 );

setMoveKey( spep_1  + 0, 1, 335.1, -213 , 0 );
--setMoveKey( spep_1 -3 + 2, 1, 312.8, -213 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 290.7, -213 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 268.4, -213 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 246.3, -213 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 224.2, -213 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 201.9, -213 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 179.7, -213 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 157.6, -213 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 135.5, -213 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 113.2, -213 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 91.1, -213 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 68.8, -213 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 46.6, -213 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 45.8, -213 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 44.9, -213 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 44.1, -213 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 43.2, -213 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 42.4, -213 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 41.5, -213 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 40.6, -213 , 0 );

setScaleKey( spep_1  + 0, 1, 1.72, 1.72 );
setScaleKey( spep_1 -3 + 50, 1, 1.72, 1.72 );

setRotateKey( spep_1  + 0, 1, 0 );
setRotateKey( spep_1 -3 + 50, 1, 0 );


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 -3 + 50; --エンドフェイズのフレーム数を置き換える
    
    -- ** 敵の動き ** --
    setMoveKey( SP_dodge + 10 , 1, 40.6, -213 , 0 );
    setScaleKey( SP_dodge + 10 , 1, 1.72, 1.72 );
    setRotateKey( SP_dodge + 10 , 1, 0 );

    playSe( SP_dodge - 12, 1042 );
--    stopSe( SP_dodge - 12, SE0, 0 );
--    stopSe( SP_dodge - 12, SE1, 0 );
--    stopSe( SP_dodge - 12, SE2, 0 );
    
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

-- ** 敵の動き ** --
setDisp( spep_1 -3 + 312, 1, 0 );

changeAnime( spep_1 -3 + 96, 1, 106 );
changeAnime( spep_1 -3 + 112, 1,108);
changeAnime( spep_1 -3 + 132, 1, 104 );
changeAnime( spep_1 -3 + 156, 1, 1 );
changeAnime( spep_1 -3 + 172, 1, 101 );
changeAnime( spep_1 -3 + 228, 1, 11 );
--changeAnime( spep_1 -3 + 232, 1, 9 );
--changeAnime( spep_1 -3 + 240, 1, 9 );
changeAnime( spep_1 -3 + 274, 1, 17 );

setMoveKey( spep_1 -3 + 95, 1, 40.6, -213 , 0 );
setMoveKey( spep_1 -3 + 96, 1, -3.8, -163.4 , 0 );
setMoveKey( spep_1 -3 + 98, 1, -3.3, -163.4 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 47.7, -147.7 , 0 );
setMoveKey( spep_1 -3 + 102, 1, -2.7, -161.3 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 36.5, -147.4 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 30.3, -147.6 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 50.2, -142.1 , 0 );
setMoveKey( spep_1 -3 + 111, 1, 55.2, -143.3 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 160.5, -165 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 143.4, -196.7 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 204.5, -159.1 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 162.6, -190.7 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 196.8, -178 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 183, -192.7 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 204.1, -187.5 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 196.9, -197.5 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 212.1, -194.3 , 0 );
setMoveKey( spep_1 -3 + 131, 1, 212.5, -201 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 216.6, -208.9 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 217.3, -209.1 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 218, -209.2 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 218.7, -209.4 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 219.3, -209.6 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 220, -209.7 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 220.5, -209.9 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 221.2, -210.1 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 221.9, -210.3 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 222.6, -210.4 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 223.3, -210.6 , 0 );
setMoveKey( spep_1 -3 + 155, 1, 224, -210.6 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 118.3, -210.6 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 111.3, -210.4 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 104.4, -210.1 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 97.4, -209.7 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 90.6, -209.4 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 83.5, -209.1 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 76.7, -208.7 , 0 );
setMoveKey( spep_1 -3 + 171, 1, 69.6, -208.4 , 0 );
setMoveKey( spep_1 -3 + 172, 1, -47.8, -212.1 , 0 );
setMoveKey( spep_1 -3 + 174, 1, -53.3, -212 , 0 );
setMoveKey( spep_1 -3 + 176, 1, -58.8, -212 , 0 );
setMoveKey( spep_1 -3 + 178, 1, -64.3, -212 , 0 );
setMoveKey( spep_1 -3 + 180, 1, -69.8, -212 , 0 );
setMoveKey( spep_1 -3 + 182, 1, -75.3, -212 , 0 );
setMoveKey( spep_1 -3 + 184, 1, -80.8, -211.8 , 0 );
setMoveKey( spep_1 -3 + 186, 1, -86.3, -211.8 , 0 );
setMoveKey( spep_1 -3 + 188, 1, -91.8, -211.8 , 0 );
setMoveKey( spep_1 -3 + 190, 1, -97.2, -211.8 , 0 );
setMoveKey( spep_1 -3 + 192, 1, -102.7, -211.8 , 0 );
setMoveKey( spep_1 -3 + 194, 1, -108.2, -211.8 , 0 );
setMoveKey( spep_1 -3 + 196, 1, -108.4, -211.6 , 0 );
setMoveKey( spep_1 -3 + 198, 1, -108.6, -211.6 , 0 );
setMoveKey( spep_1 -3 + 200, 1, -108.7, -211.6 , 0 );
setMoveKey( spep_1 -3 + 202, 1, -108.9, -211.6 , 0 );
setMoveKey( spep_1 -3 + 204, 1, -109.1, -211.6 , 0 );
setMoveKey( spep_1 -3 + 206, 1, -109.2, -211.6 , 0 );
setMoveKey( spep_1 -3 + 208, 1, -109.4, -211.6 , 0 );
setMoveKey( spep_1 -3 + 210, 1, -109.6, -211.6 , 0 );
setMoveKey( spep_1 -3 + 212, 1, -109.6, -216.3 , 0 );
setMoveKey( spep_1 -3 + 214, 1, -109.6, -221.1 , 0 );
setMoveKey( spep_1 -3 + 216, 1, -109.6, -178.7 , 0 );
setMoveKey( spep_1 -3 + 218, 1, -109.6, -184.4 , 0 );
setMoveKey( spep_1 -3 + 220, 1, -109.6, -189.9 , 0 );
setMoveKey( spep_1 -3 + 222, 1, -109.6, -195.3 , 0 );
setMoveKey( spep_1 -3 + 224, 1, -109.6, -201 , 0 );
setMoveKey( spep_1 -3 + 227, 1, -109.6, -206.5 , 0 );
setMoveKey( spep_1 -3 + 228, 1, -55.9, -213.9 , 0 );
setMoveKey( spep_1 -3 + 231, 1, 10.8, -208.5 , 0 );
setMoveKey( spep_1 -3 + 232, 1, 23.8, -207 , 0 );
setMoveKey( spep_1 -3 + 234, 1, 37, -205.3 , 0 );
setMoveKey( spep_1 -3 + 236, 1, 38.6, -205.6 , 0 );
setMoveKey( spep_1 -3 + 239, 1, 40, -205.8 , 0 );
setMoveKey( spep_1 -3 + 240, 1, 41.5, -206 , 0 );
setMoveKey( spep_1 -3 + 242, 1, 43, -206.1 , 0 );
setMoveKey( spep_1 -3 + 244, 1, 44.4, -206.3 , 0 );
setMoveKey( spep_1 -3 + 246, 1, 46, -206.5 , 0 );
setMoveKey( spep_1 -3 + 248, 1, 47.3, -206.7 , 0 );
setMoveKey( spep_1 -3 + 250, 1, 48.9, -206.8 , 0 );
setMoveKey( spep_1 -3 + 252, 1, 50.2, -207 , 0 );
setMoveKey( spep_1 -3 + 254, 1, 51.8, -207.2 , 0 );
setMoveKey( spep_1 -3 + 256, 1, 53.3, -207.3 , 0 );
setMoveKey( spep_1 -3 + 258, 1, 54.7, -207.5 , 0 );
setMoveKey( spep_1 -3 + 260, 1, 56.3, -207.7 , 0 );
setMoveKey( spep_1 -3 + 262, 1, 57.6, -207.9 , 0 );
setMoveKey( spep_1 -3 + 264, 1, 59.2, -208 , 0 );
setMoveKey( spep_1 -3 + 266, 1, 60.7, -208.2 , 0 );
setMoveKey( spep_1 -3 + 268, 1, 62.1, -208.4 , 0 );
setMoveKey( spep_1 -3 + 270, 1, 63.6, -208.5 , 0 );
setMoveKey( spep_1 -3 + 273, 1, 65, -208.7 , 0 );
setMoveKey( spep_1 -3 + 274, 1, 90.7, -227.9 , 0 );
setMoveKey( spep_1 -3 + 276, 1, 91.9, -228.3 , 0 );
setMoveKey( spep_1 -3 + 278, 1, 93, -228.6 , 0 );
setMoveKey( spep_1 -3 + 280, 1, 94.2, -229 , 0 );
setMoveKey( spep_1 -3 + 282, 1, 95.2, -229.3 , 0 );
setMoveKey( spep_1 -3 + 284, 1, 96.4, -229.6 , 0 );
setMoveKey( spep_1 -3 + 286, 1, 97.6, -230 , 0 );
setMoveKey( spep_1 -3 + 288, 1, 98.6, -230.3 , 0 );
setMoveKey( spep_1 -3 + 290, 1, 99.8, -230.7 , 0 );
setMoveKey( spep_1 -3 + 292, 1, 100.8, -230.8 , 0 );
setMoveKey( spep_1 -3 + 294, 1, 100.8, -231 , 0 );
setMoveKey( spep_1 -3 + 296, 1, 100.8, -231.2 , 0 );
setMoveKey( spep_1 -3 + 298, 1, 100.8, -231.2 , 0 );
setMoveKey( spep_1 -3 + 300, 1, 100.8, -231.4 , 0 );
setMoveKey( spep_1 -3 + 302, 1, 100.8, -231.5 , 0 );
setMoveKey( spep_1 -3 + 304, 1, 100.8, -231.5 , 0 );
setMoveKey( spep_1 -3 + 306, 1, 100.8, -231.7 , 0 );
setMoveKey( spep_1 -3 + 308, 1, 100.8, -231.9 , 0 );
setMoveKey( spep_1 -3 + 310, 1, 100.8, -231.9 , 0 );
setMoveKey( spep_1 -3 + 312, 1, 100.8, -232 , 0 );

setScaleKey( spep_1 -3 + 51, 1, 1.72, 1.72 );
setScaleKey( spep_1 -3 + 312, 1, 1.72, 1.72 );

setRotateKey( spep_1 -3 + 51, 1, 0 );
setRotateKey( spep_1 -3 + 95, 1, 0 );
setRotateKey( spep_1 -3 + 96, 1, -37.2 );
setRotateKey( spep_1 -3 + 111, 1, -37.2 );
setRotateKey( spep_1 -3 + 112, 1, 0 );
setRotateKey( spep_1 -3 + 227, 1, 0 );
setRotateKey( spep_1 -3 + 228, 1, -0.4 );
setRotateKey( spep_1 -3 + 231, 1, 2.5 );
setRotateKey( spep_1 -3 + 232, 1, 0 );
setRotateKey( spep_1 -3 + 312, 1, 0 );

-- ** エフェクト等 ** --
hatena = entryEffect( spep_1 -3 + 38, 150063, 0x100, -1, 0, 0, -30 );
setEffMoveKey( spep_1 -3 + 38, hatena, 0, 0, 0 );
setEffMoveKey( spep_1 -3 + 86, hatena, 0, 0, 0 );

setEffScaleKey( spep_1 -3 + 38, hatena, -1.47, 1.47 );
setEffScaleKey( spep_1 -3 + 86, hatena, -1.47, 1.47 );

setEffRotateKey( spep_1 -3 + 38, hatena, 0 );
setEffRotateKey( spep_1 -3 + 86, hatena, 0 );

setEffAlphaKey( spep_1 -3 + 38, hatena, 255 );
setEffAlphaKey( spep_1 -3 + 86, hatena, 255 );

hatena2 = entryEffect( spep_1 -3 + 270, 150063, 0x100, -1, 0, 0, -30 );
setEffMoveKey( spep_1 -3 + 270, hatena2, 100, 0, 0 );
setEffMoveKey( spep_1 -3 + 306, hatena2, 100, 0, 0 );

setEffScaleKey( spep_1 -3 + 270, hatena2, -1.47, 1.47 );
setEffScaleKey( spep_1 -3 + 306, hatena2, -1.47, 1.47 );

setEffRotateKey( spep_1 -3 + 270, hatena2, 0 );
setEffRotateKey( spep_1 -3 + 306, hatena2, 0 );

setEffAlphaKey( spep_1 -3 + 270, hatena2, 255 );
setEffAlphaKey( spep_1 -3 + 306, hatena2, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_1 -3 + 230, 914, 30, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 -3 + 230, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 260, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 230, ryusen1, 4.3, 1.62 );
setEffScaleKey( spep_1 -3 + 260, ryusen1, 4.3, 1.62 );

setEffRotateKey( spep_1 -3 + 230, ryusen1, 0 );
setEffRotateKey( spep_1 -3 + 260, ryusen1, 0 );

setEffAlphaKey( spep_1 -3 + 230, ryusen1, 55 );
setEffAlphaKey( spep_1 -3 + 232, ryusen1, 82 );
setEffAlphaKey( spep_1 -3 + 234, ryusen1, 110 );
setEffAlphaKey( spep_1 -3 + 236, ryusen1, 200 );
setEffAlphaKey( spep_1 -3 + 252, ryusen1, 200 );
setEffAlphaKey( spep_1 -3 + 254, ryusen1, 110 );
setEffAlphaKey( spep_1 -3 + 256, ryusen1, 82 );
setEffAlphaKey( spep_1 -3 + 258, ryusen1, 55 );
setEffAlphaKey( spep_1 -3 + 260, ryusen1, 0 );

--[[
ryusen1a = entryEffectLife( spep_1 -3 + 230, 914, 30, 0x80, -1, 0, 495.4, 10.2 );
setEffMoveKey( spep_1 -3 + 230, ryusen1a, 495.4, 10.2 , 0 );
setEffMoveKey( spep_1 -3 + 232, ryusen1a, 18.7, 10.2 , 0 );
setEffMoveKey( spep_1 -3 + 234, ryusen1a, -458, 10.2 , 0 );
setEffMoveKey( spep_1 -3 + 236, ryusen1a, 972.1, 10.2 , 0 );
setEffMoveKey( spep_1 -3 + 238, ryusen1a, 495.4, 10.2 , 0 );
setEffMoveKey( spep_1 -3 + 240, ryusen1a, 18.7, 10.2 , 0 );
setEffMoveKey( spep_1 -3 + 242, ryusen1a, -458, 10.2 , 0 );
setEffMoveKey( spep_1 -3 + 244, ryusen1a, 1925.5, 10.2 , 0 );
setEffMoveKey( spep_1 -3 + 246, ryusen1a, 1448.8, 10.2 , 0 );
setEffMoveKey( spep_1 -3 + 248, ryusen1a, 972.1, 10.2 , 0 );
setEffMoveKey( spep_1 -3 + 250, ryusen1a, 495.4, 10.2 , 0 );
setEffMoveKey( spep_1 -3 + 252, ryusen1a, 972.1, 10.2 , 0 );
setEffMoveKey( spep_1 -3 + 254, ryusen1a, 495.4, 10.2 , 0 );
setEffMoveKey( spep_1 -3 + 256, ryusen1a, 18.7, 10.2 , 0 );
setEffMoveKey( spep_1 -3 + 260, ryusen1a, -458, 10.2 , 0 );

setEffScaleKey( spep_1 -3 + 230, ryusen1a, 4.3, 1.62 );
setEffScaleKey( spep_1 -3 + 260, ryusen1a, 4.3, 1.62 );

setEffRotateKey( spep_1 -3 + 230, ryusen1a, 0 );
setEffRotateKey( spep_1 -3 + 260, ryusen1a, 0 );

setEffAlphaKey( spep_1 -3 + 230, ryusen1a, 55 );
setEffAlphaKey( spep_1 -3 + 232, ryusen1a, 82 );
setEffAlphaKey( spep_1 -3 + 234, ryusen1a, 110 );
setEffAlphaKey( spep_1 -3 + 236, ryusen1a, 200 );
setEffAlphaKey( spep_1 -3 + 252, ryusen1a, 200 );
setEffAlphaKey( spep_1 -3 + 254, ryusen1a, 110 );
setEffAlphaKey( spep_1 -3 + 256, ryusen1a, 82 );
setEffAlphaKey( spep_1 -3 + 258, ryusen1a, 55 );
setEffAlphaKey( spep_1 -3 + 260, ryusen1a, 0 );
]]--

-- ** 集中線 **` --
shuchusen2 = entryEffectLife( spep_1 -3 + 96, 906, 32, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_1 -3 + 96, shuchusen2, 0, 0, 0 );
setEffMoveKey( spep_1 -3 + 128, shuchusen2, 0, 0, 0 );

setEffScaleKey( spep_1 -3 + 96, shuchusen2, 2, 2 );
setEffScaleKey( spep_1 -3 + 128, shuchusen2, 2, 2 );

setEffRotateKey( spep_1 -3 + 96, shuchusen2, 0 );
setEffRotateKey( spep_1 -3 + 98, shuchusen2, 180 );
setEffRotateKey( spep_1 -3 + 100, shuchusen2, 0 );
setEffRotateKey( spep_1 -3 + 102, shuchusen2, 180 );
setEffRotateKey( spep_1 -3 + 104, shuchusen2, 0 );
setEffRotateKey( spep_1 -3 + 106, shuchusen2, 180 );
setEffRotateKey( spep_1 -3 + 108, shuchusen2, 0 );
setEffRotateKey( spep_1 -3 + 110, shuchusen2, 180 );
setEffRotateKey( spep_1 -3 + 112, shuchusen2, 0 );
setEffRotateKey( spep_1 -3 + 114, shuchusen2, 180 );
setEffRotateKey( spep_1 -3 + 116, shuchusen2, 0 );
setEffRotateKey( spep_1 -3 + 118, shuchusen2, 180 );
setEffRotateKey( spep_1 -3 + 120, shuchusen2, 0 );
setEffRotateKey( spep_1 -3 + 122, shuchusen2, 180 );
setEffRotateKey( spep_1 -3 + 124, shuchusen2, 0 );
setEffRotateKey( spep_1 -3 + 126, shuchusen2, 180 );
setEffRotateKey( spep_1 -3 + 128, shuchusen2, 0 );

setEffAlphaKey( spep_1 -3 + 96, shuchusen2, 255 );
setEffAlphaKey( spep_1 -3 + 128, shuchusen2, 255 );

-- ** 書き文字エントリー ** --
ctBaki = entryEffectLife( spep_1 -3 + 96, 10020, 16, 0x100, -1, 0, -50.1, 55.2 ); --バキッ
setEffMoveKey( spep_1 -3 + 96, ctBaki, -50.1, 55.2 , 0 );
setEffMoveKey( spep_1 -3 + 98, ctBaki, -53.1, 56.8 , 0 );
setEffMoveKey( spep_1 -3 + 100, ctBaki, -46.8, 50.3 , 0 );
setEffMoveKey( spep_1 -3 + 102, ctBaki, -55.1, 57 , 0 );
setEffMoveKey( spep_1 -3 + 104, ctBaki, -46.3, 58 , 0 );
setEffMoveKey( spep_1 -3 + 106, ctBaki, -50.5, 50 , 0 );
setEffMoveKey( spep_1 -3 + 112, ctBaki, -50.5, 50 , 0 );

setEffScaleKey( spep_1 -3 + 96, ctBaki, 1.27, 1.27 );
setEffScaleKey( spep_1 -3 + 112, ctBaki, 1.27, 1.27 );

setEffRotateKey( spep_1 -3 + 96, ctBaki, -20 );
setEffRotateKey( spep_1 -3 + 112, ctBaki, -20 );

setEffAlphaKey( spep_1 -3 + 96, ctBaki, 255 );
setEffAlphaKey( spep_1 -3 + 112, ctBaki, 255 );

ctZun = entryEffectLife( spep_1 -3 + 114, 10016, 16, 0x100, -1, 0, 107.2, 42.3 ); --ズンッ
setEffMoveKey( spep_1 -3 + 114, ctZun, 107.2, 42.3 , 0 );
setEffMoveKey( spep_1 -3 + 116, ctZun, 103.4, 44.3 , 0 );
setEffMoveKey( spep_1 -3 + 118, ctZun, 111.5, 35.9 , 0 );
setEffMoveKey( spep_1 -3 + 120, ctZun, 100.8, 44.5 , 0 );
setEffMoveKey( spep_1 -3 + 122, ctZun, 112.1, 45.8 , 0 );
setEffMoveKey( spep_1 -3 + 124, ctZun, 106.7, 35.5 , 0 );
setEffMoveKey( spep_1 -3 + 130, ctZun, 106.7, 35.5 , 0 );

setEffScaleKey( spep_1 -3 + 114, ctZun, 1.65, 1.65 );
setEffScaleKey( spep_1 -3 + 130, ctZun, 1.65, 1.65 );

setEffRotateKey( spep_1 -3 + 114, ctZun, 0 );
setEffRotateKey( spep_1 -3 + 130, ctZun, 0 );

setEffAlphaKey( spep_1 -3 + 114, ctZun, 255 );
setEffAlphaKey( spep_1 -3 + 130, ctZun, 255 );

ctKantanhu = entryEffectLife( spep_1 -3 + 216, 10000, 10, 0x100, -1, 0, -12.4, 4.3 ); --!!
setEffMoveKey( spep_1 -3 + 216, ctKantanhu, -12.4, 4.3 , 0 );
setEffMoveKey( spep_1 -3 + 218, ctKantanhu, -10.2, 7.8 , 0 );
setEffMoveKey( spep_1 -3 + 220, ctKantanhu, -4.5, 0.2 , 0 );
setEffMoveKey( spep_1 -3 + 222, ctKantanhu, -11.8, 4.8 , 0 );
setEffMoveKey( spep_1 -3 + 224, ctKantanhu, -12.4, 4.3 , 0 );
setEffMoveKey( spep_1 -3 + 226, ctKantanhu, -10.2, 7.8 , 0 );

setEffScaleKey( spep_1 -3 + 216, ctKantanhu, 1.53, 1.53 );
setEffScaleKey( spep_1 -3 + 218, ctKantanhu, 1.83, 1.83 );
setEffScaleKey( spep_1 -3 + 220, ctKantanhu, 1.48, 1.48 );
setEffScaleKey( spep_1 -3 + 222, ctKantanhu, 1.83, 1.83 );
setEffScaleKey( spep_1 -3 + 224, ctKantanhu, 1.53, 1.53 );
setEffScaleKey( spep_1 -3 + 226, ctKantanhu, 1.83, 1.83 );

setEffRotateKey( spep_1 -3 + 216, ctKantanhu, 0 );
setEffRotateKey( spep_1 -3 + 226, ctKantanhu, 0 );

setEffAlphaKey( spep_1 -3 + 216, ctKantanhu, 255 );
setEffAlphaKey( spep_1 -3 + 226, ctKantanhu, 255 );

-- ** 白フェード ** --
entryFade( spep_1 + 304, 6, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_1 -3 + 38, 1113 );  --？
--playSe( spep_1 -3 + 38, 35 );  --？
playSe( spep_1 -3 + 96, 1009 );  --バキッ
playSe( spep_1 -3 + 114, 1010 );  --ズンッ
playSe( spep_1 + 200 -3, 4 );  --ささっ
playSe( spep_1 + 206 -3, 4 );  --ささっ
playSe( spep_1 -3 + 216, 2 );  --!!
playSe( spep_1 -3 + 232, 1003 );  --空振り
playSe( spep_1 -3 + 270, 1113 );  --？
--playSe( spep_1 -3 + 270, 35 );  --？

-- ** 次の準備 ** --
spep_2 = spep_1 + 312;

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
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

--------------------------------------
--とどめ連撃
--------------------------------------

-- ** エフェクト等 ** --
todomeb = entryEffectLife( spep_3 + 0, SP_05, 48, 0x80, -1, 0, 0, 0 ); --背景
setEffMoveKey( spep_3 + 0, todomeb, 0, 0 , 0 );
setEffMoveKey( spep_3 + 48, todomeb, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, todomeb, 1.0, 1.0 );
setEffScaleKey( spep_3 + 48, todomeb, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, todomeb, 0 );
setEffRotateKey( spep_3 + 48, todomeb, 0 );
setEffAlphaKey( spep_3 + 0, todomeb, 255 );
setEffAlphaKey( spep_3 + 48, todomeb, 255 );

todomef = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); --とどめ連撃
setEffMoveKey( spep_3 + 0, todomef, 0, 0 , 0 );
setEffMoveKey( spep_3 + 48, todomef, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, todomef, 1.0, 1.0 );
setEffScaleKey( spep_3 + 48, todomef, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, todomef, 0 );
setEffRotateKey( spep_3 + 48, todomef, 0 );
setEffAlphaKey( spep_3 + 0, todomef, 255 );
setEffAlphaKey( spep_3 + 48, todomef, 255 );

-- ** 敵の動き ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 6 );

setMoveKey( spep_3, 1, 54.4, -213.2 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, 73.5, -207.9 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 86.7, -213.4 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 116.6, -198.5 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 119, -213.4 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 154.9, -204.7 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 151.2, -213.9 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 197.4, -212.9 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 183.4, -214 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 226.4, -198.4 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 215.5, -214.2 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 262.8, -205.3 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 247.7, -214.5 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 279.5, -206.2 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 280.1, -214.7 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 331.7, -210.3 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 352.4, -215.4 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 428.9, -211.3 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 464.8, -216.4 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 554.6, -214 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 577.4, -217.4 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 649.4, -224.3 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 689.7, -218.4 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 771.7, -197.5 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 802, -219.1 , 0 );

setScaleKey( spep_3 + 0, 1, 1.68, 1.68 );
setScaleKey( spep_3 -3 + 48, 1, 1.68, 1.68 );

setRotateKey( spep_3+ 0, 1, 39.9 );
--setRotateKey( spep_3 -3 + 2, 1, 42.9 );
setRotateKey( spep_3 -3 + 4, 1, 40.6 );
setRotateKey( spep_3 -3 + 6, 1, 42.1 );
setRotateKey( spep_3 -3 + 8, 1, 41.4 );
setRotateKey( spep_3 -3 + 10, 1, 43.2 );
setRotateKey( spep_3 -3 + 12, 1, 42.2 );
setRotateKey( spep_3 -3 + 14, 1, 44.8 );
setRotateKey( spep_3 -3 + 16, 1, 43.1 );
setRotateKey( spep_3 -3 + 18, 1, 43.9 );
setRotateKey( spep_3 -3 + 20, 1, 43.9 );
setRotateKey( spep_3 -3 + 22, 1, 44.9 );
setRotateKey( spep_3 -3 + 24, 1, 44.7 );
setRotateKey( spep_3 -3 + 26, 1, 47.1 );
setRotateKey( spep_3 -3 + 28, 1, 45.6 );
setRotateKey( spep_3 -3 + 30, 1, 46.4 );
setRotateKey( spep_3 -3 + 32, 1, 48.4 );
setRotateKey( spep_3 -3 + 34, 1, 52.5 );
setRotateKey( spep_3 -3 + 36, 1, 53.1 );
setRotateKey( spep_3 -3 + 38, 1, 56.2 );
setRotateKey( spep_3 -3 + 40, 1, 57.8 );
setRotateKey( spep_3 -3 + 42, 1, 61.9 );
setRotateKey( spep_3 -3 + 44, 1, 62.5 );
setRotateKey( spep_3 -3 + 46, 1, 65.4 );
setRotateKey( spep_3 -3 + 48, 1, 67.2 );

-- ** 流線 ** --
ryusen3 = entryEffectLife( spep_3 -3 + 4, 914, 45, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 -3 + 4, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_3  + 46, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 1, ryusen3, 4.3, 1.62 );
setEffScaleKey( spep_3  + 46, ryusen3, 4.3, 1.62 );

setEffRotateKey( spep_3 -3 + 4, ryusen3, 0 );
setEffRotateKey( spep_3  + 46, ryusen3, 0 );

--setEffAlphaKey( spep_3 -3 + 2, ryusen3, 55 );
setEffAlphaKey( spep_3 -3 + 4, ryusen3, 82 );
setEffAlphaKey( spep_3 -3 + 6, ryusen3, 110 );
setEffAlphaKey( spep_3 -3 + 8, ryusen3, 200 );
setEffAlphaKey( spep_3 -3 + 40, ryusen3, 200 );
setEffAlphaKey( spep_3 -3 + 42, ryusen3, 110 );
setEffAlphaKey( spep_3 -3 + 44, ryusen3, 82 );
setEffAlphaKey( spep_3  + 46, ryusen3, 55 );
--setEffAlphaKey( spep_3 -3 + 48, ryusen3, 27 );

--[[
ryusen3a = entryEffectLife( spep_3 -3 + 4, 914, 46, 0x80, -1, 0, 495.4, 10.2 );
--setEffMoveKey( spep_3 -3 + 2, ryusen3a, 495.4, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 4, ryusen3a, 18.7, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 6, ryusen3a, -458, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 8, ryusen3a, 972.1, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 10, ryusen3a, 495.4, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 12, ryusen3a, 18.7, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 14, ryusen3a, -458, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 16, ryusen3a, 1925.5, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 18, ryusen3a, 1448.8, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 20, ryusen3a, 972.1, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 22, ryusen3a, 495.4, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 24, ryusen3a, 18.7, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 26, ryusen3a, -458, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 28, ryusen3a, 1925.5, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 30, ryusen3a, 1448.8, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 32, ryusen3a, 972.1, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 34, ryusen3a, 495.4, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 36, ryusen3a, 18.7, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 38, ryusen3a, -458, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 40, ryusen3a, 972.1, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 42, ryusen3a, 495.4, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 44, ryusen3a, 18.7, 10.2 , 0 );
setEffMoveKey( spep_3 -3 + 46, ryusen3a, -458, 10.2 , 0 );

setEffScaleKey( spep_3 -3 + 4, ryusen3a, 4.3, 1.62 );
setEffScaleKey( spep_3 -3 + 46, ryusen3a, 4.3, 1.62 );

setEffRotateKey( spep_3 -3 + 4, ryusen3a, 0 );
setEffRotateKey( spep_3 -3 + 46, ryusen3a, 0 );

--setEffAlphaKey( spep_3 -3 + 2, ryusen3a, 55 );
setEffAlphaKey( spep_3 -3 + 4, ryusen3a, 82 );
setEffAlphaKey( spep_3 -3 + 6, ryusen3a, 110 );
setEffAlphaKey( spep_3 -3 + 8, ryusen3a, 200 );
setEffAlphaKey( spep_3 -3 + 40, ryusen3a, 200 );
setEffAlphaKey( spep_3 -3 + 42, ryusen3a, 110 );
setEffAlphaKey( spep_3 -3 + 44, ryusen3a, 82 );
setEffAlphaKey( spep_3 -3 + 46, ryusen3a, 55 );
--setEffAlphaKey( spep_3 -3 + 48, ryusen3, 27 );
]]--
-- ** 書き文字エントリー ** -
ctZudodo = entryEffectLife( spep_3 -3 + 4, 10014, 44, 0x100, -1, 0, -0.3, 129.1 ); --ズドドドッ
--setEffMoveKey( spep_3 -3 + 2, ctZudodo, -0.3, 129.1 , 0 );
setEffMoveKey( spep_3 -3 + 4, ctZudodo, 2.5, 135 , 0 );
setEffMoveKey( spep_3 -3 + 6, ctZudodo, 4.5, 128.9 , 0 );
setEffMoveKey( spep_3 -3 + 8, ctZudodo, 1, 135.1 , 0 );
setEffMoveKey( spep_3 -3 + 10, ctZudodo, 1.3, 127.7 , 0 );
setEffMoveKey( spep_3 -3 + 12, ctZudodo, 1.1, 135.8 , 0 );
setEffMoveKey( spep_3 -3 + 14, ctZudodo, 7.3, 129.8 , 0 );
setEffMoveKey( spep_3 -3 + 16, ctZudodo, -1.9, 134.1 , 0 );
setEffMoveKey( spep_3 -3 + 18, ctZudodo, 7, 127.5 , 0 );
setEffMoveKey( spep_3 -3 + 20, ctZudodo, 0.1, 135.5 , 0 );
setEffMoveKey( spep_3 -3 + 22, ctZudodo, -0.2, 125.2 , 0 );
setEffMoveKey( spep_3 -3 + 24, ctZudodo, 2.2, 135.8 , 0 );
setEffMoveKey( spep_3 -3 + 26, ctZudodo, 4.5, 127.3 , 0 );
setEffMoveKey( spep_3 -3 + 28, ctZudodo, 5.1, 138.3 , 0 );
setEffMoveKey( spep_3 -3 + 30, ctZudodo, 5.9, 124.6 , 0 );
setEffMoveKey( spep_3 -3 + 32, ctZudodo, 2.4, 137.2 , 0 );
setEffMoveKey( spep_3 -3 + 34, ctZudodo, 4.6, 125.9 , 0 );
setEffMoveKey( spep_3 -3 + 36, ctZudodo, -3.9, 135.7 , 0 );
setEffMoveKey( spep_3 -3 + 38, ctZudodo, 8.9, 132.7 , 0 );
setEffMoveKey( spep_3 -3 + 40, ctZudodo, 18.4, 135.6 , 0 );
setEffMoveKey( spep_3 -3 + 42, ctZudodo, 7.3, 130.6 , 0 );
setEffMoveKey( spep_3 -3 + 44, ctZudodo, 12.4, 142.6 , 0 );
setEffMoveKey( spep_3 -3 + 46, ctZudodo, 8.1, 128.4 , 0 );
setEffMoveKey( spep_3 -3 + 48, ctZudodo, 8.1, 128.4 , 0 );

setEffScaleKey( spep_3 -3 + 4, ctZudodo, 2.22, 2.22 );
setEffScaleKey( spep_3 -3 + 36, ctZudodo, 2.22, 2.22 );
setEffScaleKey( spep_3 -3 + 48, ctZudodo, 2.23, 2.23 );

setEffRotateKey( spep_3 -3 + 4, ctZudodo, -28.2 );
setEffRotateKey( spep_3 -3 + 48, ctZudodo, -28.2 );

--setEffAlphaKey( spep_3 -3 + 2, ctZudodo, 64 );
setEffAlphaKey( spep_3 -3 + 4, ctZudodo, 128 );
setEffAlphaKey( spep_3 -3 + 6, ctZudodo, 191 );
setEffAlphaKey( spep_3 -3 + 8, ctZudodo, 255 );
setEffAlphaKey( spep_3 -3 + 38, ctZudodo, 255 );
setEffAlphaKey( spep_3 -3 + 40, ctZudodo, 204 );
setEffAlphaKey( spep_3 -3 + 42, ctZudodo, 153 );
setEffAlphaKey( spep_3 -3 + 44, ctZudodo, 102 );
setEffAlphaKey( spep_3 -3 + 46, ctZudodo, 51 );
setEffAlphaKey( spep_3 -3 + 48, ctZudodo, 0 );

--白フェード
entryFade( spep_3 + 40, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--ラッシュ音
playSe( spep_3 -3 + 4, 1009);
playSe( spep_3 -3 + 6, 1010);
playSe( spep_3 -3 + 12, 1010);
playSe( spep_3 -3 + 18, 1009);
playSe( spep_3 -3 + 24, 1010);
playSe( spep_3 -3 + 36, 1009);
playSe( spep_3 -3 + 46, 1010);


-- ** 次の準備 ** --
spep_4 = spep_3 + 48;


------------------------------------------------------
-- 敵吹っ飛びシーン(112F)
------------------------------------------------------

haikei = entryEffectLife( spep_4 + 0, SP_06, 112, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, haikei, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 112, haikei, 0, 0, 0 ); 

setEffScaleKey( spep_4 + 0, haikei, 1.0, 1.0 );
setEffScaleKey( spep_4 + 112, haikei, 1.0, 1.0 );

setEffRotateKey( spep_4 + 0, haikei, 0 );
setEffRotateKey( spep_4 + 112, haikei, 0 );

setEffAlphaKey( spep_4 + 0, haikei, 255 );
setEffAlphaKey( spep_4 + 112, haikei, 255 );

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
shuchusen6 = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen6, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen6, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen6, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen6, 0 );
setEffRotateKey( spep_4 + 46, shuchusen6, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen6, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen6, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen6, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen6, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen6, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen6, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen6, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen6, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen6, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen6, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen6, 0 );

shuchusen7 = entryEffectLife( spep_4 + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusen7, 0, 0 , 0 );
setEffMoveKey( spep_4 + 112, shuchusen7, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen7, 1, 1 );
setEffScaleKey( spep_4 + 112, shuchusen7, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen7, 0 );
setEffRotateKey( spep_4 + 112, shuchusen7, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen7, 255 );
setEffAlphaKey( spep_4 + 112, shuchusen7, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 112, ctga, 3.2, 3.2 );

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

setScaleKey( spep_4 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_4 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_4 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_4 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 122, 1, 1.6, 1.6 );

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
playSe( spep_4 + 14, SE_11 );  --割れる音


-- ** ダメージ表示 ** --
dealDamage( spep_4 + 10 );
endPhase( spep_4 + 112 );

end