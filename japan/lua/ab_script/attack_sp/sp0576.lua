--1017630:超サイヤ人孫悟飯(少年期)_激烈魔閃光
--sp_effect_a1_00183

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
SP_01=	154029	;--	登場して移動
SP_02=	154031	;--	移動から現れて3発気弾
SP_03=	154032	;--	地上に3回着弾(前面)
SP_04=	154033	;--	地上に3回着弾(背面)
SP_05=	154034	;--	溜め
SP_06=	154035	;--	正面斜め下へ激烈魔閃光
SP_07=	154036	;--	遠方で爆発

--エフェクト(敵)
SP_01x=	154030	;--	登場して移動	(敵)
SP_02x=	154031	;--	移動から現れて3発気弾	
SP_03x=	154032	;--	地上に3回着弾(前面)	
SP_04x=	154033	;--	地上に3回着弾(背面)	
SP_05x=	154034	;--	溜め	(敵)
SP_06x=	154035	;--	正面斜め下へ激烈魔閃光	
SP_07x=	154037	;--	遠方で爆発	

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
-- 登場して移動
------------------------------------------------------
spep_0 = 0;


-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 124, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 124, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 124, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 124, tame, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0 -3 + 36,  906, 90, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 -3 + 36, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 126, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 36, shuchusen1, 1, 1 );
setEffScaleKey( spep_0 -3 + 110, shuchusen1, 1, 1 );
setEffScaleKey( spep_0 -3 + 112, shuchusen1, 1.03, 1.03 );
setEffScaleKey( spep_0 -3 + 114, shuchusen1, 1.21, 1.21 );
setEffScaleKey( spep_0 -3 + 116, shuchusen1, 1.72, 1.72 );
setEffScaleKey( spep_0 -3 + 126, shuchusen1, 2.7, 2.7 );

setEffRotateKey( spep_0 -3 + 36, shuchusen1, 0 );
setEffRotateKey( spep_0 -3 + 126, shuchusen1, 0 );

setEffAlphaKey( spep_0 -3 + 36, shuchusen1, 255 );
setEffAlphaKey( spep_0 -3 + 126, shuchusen1, 255 );

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_0 -3  +36, 190006, 68, 0x100, -1, 0, 0, 390);    -- ゴゴゴゴ

setEffMoveKey(  spep_0 -3  +36,  ctgogo,  -50,  410);
setEffMoveKey(  spep_0 -3  +104,  ctgogo,  -50,  410);

setEffAlphaKey( spep_0 -3   + 36, ctgogo, 255 );
setEffAlphaKey( spep_0 -3   + 104, ctgogo, 255 );

setEffRotateKey(  spep_0 -3  +36,  ctgogo,   -5);
setEffRotateKey(  spep_0 -3  +104,  ctgogo,  -5);

setEffScaleKey(  spep_0 -3  +36,  ctgogo,  0.8,  0.8);
setEffScaleKey(  spep_0 -3  +104,  ctgogo,  0.8,  0.8);

-- 書き文字エントリー --
ctsyun = entryEffectLife( spep_0 - 3 + 108,  10011, 16, 0x100, -1, 0, -23.9, 249.9 );--シュンッ

setEffMoveKey( spep_0 - 3 + 108, ctsyun, -23.9, 249.9 , 0 );
setEffMoveKey( spep_0 - 3 + 110, ctsyun, -15.6, 245.5 , 0 );
setEffMoveKey( spep_0 - 3 + 112, ctsyun, -10.6, 242.8 , 0 );
setEffMoveKey( spep_0 - 3 + 114, ctsyun, -8.9, 241.9 , 0 );
setEffMoveKey( spep_0 - 3 + 124, ctsyun, -8.9, 241.9 , 0 );

setEffScaleKey( spep_0 - 3 + 108, ctsyun, 0.56, 0.56 );
setEffScaleKey( spep_0 - 3 + 110, ctsyun, 0.98, 0.98 );
setEffScaleKey( spep_0 - 3 + 112, ctsyun, 1.23, 1.23 );
setEffScaleKey( spep_0 - 3 + 114, ctsyun, 1.31, 1.31 );
setEffScaleKey( spep_0 - 3 + 116, ctsyun, 1.35, 1.35 );
setEffScaleKey( spep_0 - 3 + 118, ctsyun, 1.38, 1.38 );
setEffScaleKey( spep_0 - 3 + 120, ctsyun, 1.42, 1.42 );
setEffScaleKey( spep_0 - 3 + 122, ctsyun, 1.45, 1.45 );
setEffScaleKey( spep_0 - 3 + 124, ctsyun, 1.49, 1.49 );

setEffRotateKey( spep_0 - 3 + 108, ctsyun, 0 );
setEffRotateKey( spep_0 - 3 + 124, ctsyun, 0 );

setEffAlphaKey( spep_0 - 3 + 108, ctsyun, 255 );
setEffAlphaKey( spep_0 - 3 + 114, ctsyun, 255 );
setEffAlphaKey( spep_0 - 3 + 116, ctsyun, 204 );
setEffAlphaKey( spep_0 - 3 + 118, ctsyun, 153 );
setEffAlphaKey( spep_0 - 3 + 120, ctsyun, 102 );
setEffAlphaKey( spep_0 - 3 + 122, ctsyun, 51 );
setEffAlphaKey( spep_0 - 3 + 124, ctsyun, 0 );

--SE
playSe( spep_0+34, 50);--気を放つ
playSe( spep_0+110, 1109);--瞬間移動

--次の準備
spep_1 = spep_0+124;


------------------------------------------------------
-- 気弾を投げる
------------------------------------------------------

-- ** エフェクト等 ** --
attack = entryEffect( spep_1 + 0, SP_02,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, attack, 0, 0 , 0 );
setEffMoveKey( spep_1 + 282, attack, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, attack, 1.0, 1.0 );
setEffScaleKey( spep_1 + 282, attack, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, attack, 0 );
setEffRotateKey( spep_1 + 282, attack, 0 );
setEffAlphaKey( spep_1 + 0, attack, 255 );
setEffAlphaKey( spep_1 + 282, attack, 255 );

--敵の動き
setDisp( spep_1  + 0, 1, 1 );
setDisp( spep_1  + 12, 1, 0 );
changeAnime( spep_1  + 0, 1, 102 );

setMoveKey( spep_1  + 0, 1, 220.5, 267.1 , 0 );
setMoveKey( spep_1  + 2, 1, 220.8, 254.8 , 0 );
setMoveKey( spep_1  + 4, 1, 221.9, 217.8 , 0 );
setMoveKey( spep_1  + 6, 1, 223.8, 153.3 , 0 );
setMoveKey( spep_1  + 8, 1, 226.9, 51.7 , 0 );
setMoveKey( spep_1  + 10, 1, 231.8, -111.1 , 0 );
setMoveKey( spep_1  + 12, 1, 245.9, -578.4 , 0 );

setScaleKey( spep_1  + 0, 1, 2.58, 2.58 );
setScaleKey( spep_1  + 2, 1, 2.62, 2.62 );
setScaleKey( spep_1  + 4, 1, 2.66, 2.66 );
setScaleKey( spep_1  + 6, 1, 2.62, 2.62 );
setScaleKey( spep_1  + 8, 1, 2.58, 2.58 );
setScaleKey( spep_1  + 12, 1, 2.58, 2.58 );

setRotateKey( spep_1  + 0, 1, 0 );
setRotateKey( spep_1  + 12, 1, 0 );

-- 書き文字エントリー --
ctsyun2 = entryEffectLife( spep_1 -3 + 4,  10011, 14, 0x100, -1, 0, -73.9, 340 );--シュンッ

setEffMoveKey( spep_1 -3 + 4, ctsyun2, -73.9, 340 , 0 );
setEffMoveKey( spep_1 -3 + 6, ctsyun2, -74, 340 , 0 );
setEffMoveKey( spep_1 -3 + 8, ctsyun2, -74.1, 340.1 , 0 );
setEffMoveKey( spep_1 -3 + 10, ctsyun2, -73.8, 340.1 , 0 );
setEffMoveKey( spep_1 -3 + 12, ctsyun2, -73.7, 340.1 , 0 );
setEffMoveKey( spep_1 -3 + 14, ctsyun2, -73.7, 340.2 , 0 );
setEffMoveKey( spep_1 -3 + 16, ctsyun2, -73.7, 340.3 , 0 );
setEffMoveKey( spep_1 -3 + 18, ctsyun2, -73.6, 340.1 , 0 );

setEffScaleKey( spep_1 -3 + 4, ctsyun2, 0.56, 0.56 );
setEffScaleKey( spep_1 -3 + 6, ctsyun2, 0.8, 0.8 );
setEffScaleKey( spep_1 -3 + 8, ctsyun2, 1.02, 1.02 );
setEffScaleKey( spep_1 -3 + 10, ctsyun2, 1.2, 1.2 );
setEffScaleKey( spep_1 -3 + 12, ctsyun2, 1.22, 1.22 );
setEffScaleKey( spep_1 -3 + 14, ctsyun2, 1.23, 1.23 );
setEffScaleKey( spep_1 -3 + 16, ctsyun2, 1.24, 1.24 );
setEffScaleKey( spep_1 -3 + 18, ctsyun2, 1.25, 1.25 );

setEffRotateKey( spep_1 -3 + 4, ctsyun2, -35 );
setEffRotateKey( spep_1 -3 + 18, ctsyun2, -35 );

setEffAlphaKey( spep_1 -3 + 4, ctsyun2, 255 );
setEffAlphaKey( spep_1 -3 + 18, ctsyun2, 255 );

--SE
SE0=playSe( spep_1, 1047);--瞬間移動
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    
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

-- 書き文字エントリー --
ctzuo1 = entryEffectLife( spep_1 -3 + 54,  10012, 24, 0x100, -1, 0, 132.1, 419.9 );--ズオッ

setEffMoveKey( spep_1 -3 + 54, ctzuo1, 132.1, 419.9 , 0 );
setEffMoveKey( spep_1 -3 + 56, ctzuo1, 132, 419.9 , 0 );
setEffMoveKey( spep_1 -3 + 58, ctzuo1, 132, 419.8 , 0 );
setEffMoveKey( spep_1 -3 + 78, ctzuo1, 132, 419.8 , 0 );

a = 1.7;

setEffScaleKey( spep_1 -3 + 54, ctzuo1, 0.25  , 0.25   );
setEffScaleKey( spep_1 -3 + 56, ctzuo1, 0.45 , 0.45   );
--setEffScaleKey( spep_1 -3 + 58, ctzuo1, 0.58 + a, 0.58 + a  );
--setEffScaleKey( spep_1 -3 + 60, ctzuo1, 0.62 + a, 0.62 + a );
setEffScaleKey( spep_1 -3 + 62, ctzuo1, 0.63 + a, 0.63 + a );
setEffScaleKey( spep_1 -3 + 64, ctzuo1, 0.65 + a, 0.65 + a );
setEffScaleKey( spep_1 -3 + 66, ctzuo1, 0.66 + a, 0.66 + a );
setEffScaleKey( spep_1 -3 + 68, ctzuo1, 0.68 + a, 0.68 + a );
setEffScaleKey( spep_1 -3 + 70, ctzuo1, 0.69 + a, 0.69 + a );
setEffScaleKey( spep_1 -3 + 72, ctzuo1, 0.71 + a, 0.71 + a );
setEffScaleKey( spep_1 -3 + 74, ctzuo1, 0.72 + a, 0.72 + a );
setEffScaleKey( spep_1 -3 + 76, ctzuo1, 0.74 + a, 0.74 + a );
setEffScaleKey( spep_1 -3 + 78, ctzuo1, 0.75 + a, 0.75 + a );

setEffRotateKey( spep_1 -3 + 54, ctzuo1, 20 );
setEffRotateKey( spep_1 -3 + 78, ctzuo1, 20 );

setEffAlphaKey( spep_1 - 3 + 54, ctzuo1, 255 );
setEffAlphaKey( spep_1 - 3 + 60, ctzuo1, 255 );
setEffAlphaKey( spep_1 - 3 + 62, ctzuo1, 227 );
setEffAlphaKey( spep_1 - 3 + 64, ctzuo1, 198 );
setEffAlphaKey( spep_1 - 3 + 66, ctzuo1, 170 );
setEffAlphaKey( spep_1 - 3 + 68, ctzuo1, 142 );
setEffAlphaKey( spep_1 - 3 + 70, ctzuo1, 113 );
setEffAlphaKey( spep_1 - 3 + 72, ctzuo1, 85 );
setEffAlphaKey( spep_1 - 3 + 74, ctzuo1, 57 );
setEffAlphaKey( spep_1 - 3 + 76, ctzuo1, 28 );
setEffAlphaKey( spep_1 - 3 + 78, ctzuo1, 0 );

-- 書き文字エントリー --
ctzuo2 = entryEffectLife( spep_1 -3 + 96,  10012, 24, 0x100, -1, 0, -88, 279.8 );
setEffMoveKey( spep_1 -3 + 96, ctzuo2, -88, 279.8 , 0 );
setEffMoveKey( spep_1 -3 + 98, ctzuo2, -132.4, 335.4 , 0 );
setEffMoveKey( spep_1 -3 + 100, ctzuo2, -159.1, 368.7 , 0 );
setEffMoveKey( spep_1 -3 + 102, ctzuo2, -168, 379.8 , 0 );
setEffMoveKey( spep_1 -3 + 104, ctzuo2, -168, 384.3 , 0 );
setEffMoveKey( spep_1 -3 + 106, ctzuo2, -168, 388.7 , 0 );
setEffMoveKey( spep_1 -3 + 108, ctzuo2, -168, 393.2 , 0 );
setEffMoveKey( spep_1 -3 + 110, ctzuo2, -168, 397.6 , 0 );
setEffMoveKey( spep_1 -3 + 112, ctzuo2, -168, 402.1 , 0 );
setEffMoveKey( spep_1 -3 + 114, ctzuo2, -168, 406.5 , 0 );
setEffMoveKey( spep_1 -3 + 116, ctzuo2, -168, 411 , 0 );
setEffMoveKey( spep_1 -3 + 118, ctzuo2, -167.9, 415.4 , 0 );
setEffMoveKey( spep_1 -3 + 120, ctzuo2, -167.9, 419.9 , 0 );

setEffScaleKey( spep_1 -3 + 96, ctzuo2, 0.25, 0.25 );
setEffScaleKey( spep_1 -3 + 98, ctzuo2, 0.45, 0.45 );
--setEffScaleKey( spep_1 -3 + 100, ctzuo2, 0.58, 0.58 );
--setEffScaleKey( spep_1 -3 + 102, ctzuo2, 0.62, 0.62 );
setEffScaleKey( spep_1 -3 + 104, ctzuo2, 0.63 + a, 0.63 + a );
setEffScaleKey( spep_1 -3 + 106, ctzuo2, 0.64 + a, 0.64 + a );
setEffScaleKey( spep_1 -3 + 108, ctzuo2, 0.65 + a, 0.65 + a );
setEffScaleKey( spep_1 -3 + 110, ctzuo2, 0.66 + a, 0.66 + a );
setEffScaleKey( spep_1 -3 + 112, ctzuo2, 0.66 + a, 0.66 + a );
setEffScaleKey( spep_1 -3 + 114, ctzuo2, 0.67 + a, 0.67 + a );
setEffScaleKey( spep_1 -3 + 116, ctzuo2, 0.68 + a, 0.68 + a );
setEffScaleKey( spep_1 -3 + 118, ctzuo2, 0.69 + a, 0.69 + a );
setEffScaleKey( spep_1 -3 + 120, ctzuo2, 0.7 + a, 0.7 + a );

setEffRotateKey( spep_1 -3 + 96, ctzuo2, 11.2 );
setEffRotateKey( spep_1 -3 + 98, ctzuo2, 6.9 );
setEffRotateKey( spep_1 -3 + 100, ctzuo2, 4.4 );
setEffRotateKey( spep_1 -3 + 102, ctzuo2, 3.5 );
setEffRotateKey( spep_1 -3 + 120, ctzuo2, 3.5 );

setEffAlphaKey( spep_1 -3 + 96, ctzuo2, 255 );
setEffAlphaKey( spep_1 -3 + 102, ctzuo2, 255 );
setEffAlphaKey( spep_1 -3 + 104, ctzuo2, 227 );
setEffAlphaKey( spep_1 -3 + 106, ctzuo2, 198 );
setEffAlphaKey( spep_1 -3 + 108, ctzuo2, 170 );
setEffAlphaKey( spep_1 -3 + 110, ctzuo2, 142 );
setEffAlphaKey( spep_1 -3 + 112, ctzuo2, 113 );
setEffAlphaKey( spep_1 -3 + 114, ctzuo2, 85 );
setEffAlphaKey( spep_1 -3 + 116, ctzuo2, 57 );
setEffAlphaKey( spep_1 -3 + 118, ctzuo2, 28 );
setEffAlphaKey( spep_1 -3 + 120, ctzuo2, 0 );

--文字エントリー
ctzuo3 = entryEffectLife( spep_1 -3 + 132,  10012, 24, 0x100, -1, 0, 172.1, 199.9 );

setEffMoveKey( spep_1 -3 + 132, ctzuo3, 172.1, 199.9 , 0 );
setEffMoveKey( spep_1 -3 + 134, ctzuo3, 180.2, 225.8 , 0 );
setEffMoveKey( spep_1 -3 + 136, ctzuo3, 188.4, 251.6 , 0 );
setEffMoveKey( spep_1 -3 + 138, ctzuo3, 196.1, 275.8 , 0 );
setEffMoveKey( spep_1 -3 + 140, ctzuo3, 196.1, 280.1 , 0 );
setEffMoveKey( spep_1 -3 + 142, ctzuo3, 196.1, 283.8 , 0 );
setEffMoveKey( spep_1 -3 + 144, ctzuo3, 196.1, 286.9 , 0 );
setEffMoveKey( spep_1 -3 + 146, ctzuo3, 196.1, 289.4 , 0 );
setEffMoveKey( spep_1 -3 + 148, ctzuo3, 196.1, 291.4 , 0 );
setEffMoveKey( spep_1 -3 + 150, ctzuo3, 196.1, 293 , 0 );
setEffMoveKey( spep_1 -3 + 152, ctzuo3, 196.1, 294.3 , 0 );
setEffMoveKey( spep_1 -3 + 154, ctzuo3, 196.1, 295.2 , 0 );
setEffMoveKey( spep_1 -3 + 156, ctzuo3, 196.1, 295.8 , 0 );

b=1.2;

setEffScaleKey( spep_1 -3 + 132, ctzuo3, 0.25, 0.25 );
setEffScaleKey( spep_1 -3 + 134, ctzuo3, 0.3, 0.3 );
--setEffScaleKey( spep_1 -3 + 136, ctzuo3, 0.35, 0.35 );
--setEffScaleKey( spep_1 -3 + 138, ctzuo3, 0.4, 0.4 );
setEffScaleKey( spep_1 -3 + 140, ctzuo3, 0.42 + b, 0.42 + b );
setEffScaleKey( spep_1 -3 + 142, ctzuo3, 0.43 + b, 0.43 + b );
setEffScaleKey( spep_1 -3 + 144, ctzuo3, 0.44 + b, 0.44 + b );
setEffScaleKey( spep_1 -3 + 146, ctzuo3, 0.45 + b, 0.45 + b );
setEffScaleKey( spep_1 -3 + 148, ctzuo3, 0.46 + b, 0.46 + b );
setEffScaleKey( spep_1 -3 + 150, ctzuo3, 0.47 + b, 0.47 + b );
setEffScaleKey( spep_1 -3 + 152, ctzuo3, 0.47 + b, 0.47 + b );
setEffScaleKey( spep_1 -3 + 154, ctzuo3, 0.48 + b, 0.48 + b );
setEffScaleKey( spep_1 -3 + 156, ctzuo3, 0.48 + b, 0.48 + b );

setEffRotateKey( spep_1 -3 + 132, ctzuo3, 30 );
setEffRotateKey( spep_1 -3 + 156, ctzuo3, 30 );

setEffAlphaKey( spep_1 -3 + 132, ctzuo3, 255 );
setEffAlphaKey( spep_1 -3 + 138, ctzuo3, 255 );
setEffAlphaKey( spep_1 -3 + 140, ctzuo3, 201 );
setEffAlphaKey( spep_1 -3 + 142, ctzuo3, 154 );
setEffAlphaKey( spep_1 -3 + 144, ctzuo3, 115 );
setEffAlphaKey( spep_1 -3 + 146, ctzuo3, 82 );
setEffAlphaKey( spep_1 -3 + 148, ctzuo3, 56 );
setEffAlphaKey( spep_1 -3 + 150, ctzuo3, 36 );
setEffAlphaKey( spep_1 -3 + 152, ctzuo3, 20 );
setEffAlphaKey( spep_1 -3 + 154, ctzuo3, 8 );
setEffAlphaKey( spep_1 -3 + 156, ctzuo3, 0 );

--SE
playSe( spep_1+46, 1004);--手を振り落とす
playSe( spep_1+52, 1049);--気弾をうつ
playSe( spep_1+86, 1004);--手を振り落とす
playSe( spep_1+94, 1049);--気弾をうつ
playSe( spep_1+128, 1004);--手を振り落とす
playSe( spep_1+130, 1049);--気弾をうつ

--次の準備
spep_2 = spep_1+156;

------------------------------------------------------
--地上に3回着弾
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_2 + 0, SP_03,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 124, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 124, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hit_f, 0 );
setEffRotateKey( spep_2 + 124, hit_f, 0 );
setEffAlphaKey( spep_2 + 0, hit_f, 255 );
setEffAlphaKey( spep_2 + 124, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_2 + 0, SP_04,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 124, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hit_b, 1.1, 1.1 );
setEffScaleKey( spep_2 + 124, hit_b, 1.1, 1.1 );
setEffRotateKey( spep_2 + 0, hit_b, 0 );
setEffRotateKey( spep_2 + 124, hit_b, 0 );
setEffAlphaKey( spep_2 + 0, hit_b, 255 );
setEffAlphaKey( spep_2 + 124, hit_b, 255 );

--文字エントリー
ctdon = entryEffectLife( spep_2 + 0, 10019, 36, 0x100, -1, 0, 216, -164.1 );--ドンッ
setEffMoveKey( spep_2 + 0, ctdon, 216, -164.1 , 0 );
setEffMoveKey( spep_2 + 2, ctdon, 206.5, -139.6 , 0 );
setEffMoveKey( spep_2 + 4, ctdon, 197, -115.1 , 0 );
setEffMoveKey( spep_2 + 6, ctdon, 187.5, -90.6 , 0 );
setEffMoveKey( spep_2 + 8, ctdon, 178, -66.1 , 0 );
setEffMoveKey( spep_2 + 10, ctdon, 176.6, -64.5 , 0 );
setEffMoveKey( spep_2 + 12, ctdon, 175.1, -62.8 , 0 );
setEffMoveKey( spep_2 + 14, ctdon, 173.7, -61.2 , 0 );
setEffMoveKey( spep_2 + 16, ctdon, 172.3, -59.5 , 0 );
setEffMoveKey( spep_2 + 18, ctdon, 170.9, -57.9 , 0 );
setEffMoveKey( spep_2 + 20, ctdon, 169.4, -56.2 , 0 );
setEffMoveKey( spep_2 + 22, ctdon, 168, -54.6 , 0 );
setEffMoveKey( spep_2 + 24, ctdon, 166.6, -53 , 0 );
setEffMoveKey( spep_2 + 26, ctdon, 165.1, -51.3 , 0 );
setEffMoveKey( spep_2 + 28, ctdon, 163.7, -49.7 , 0 );
setEffMoveKey( spep_2 + 30, ctdon, 162.3, -48 , 0 );
setEffMoveKey( spep_2 + 32, ctdon, 160.9, -46.4 , 0 );
setEffMoveKey( spep_2 + 34, ctdon, 159.4, -44.7 , 0 );
setEffMoveKey( spep_2 + 36, ctdon, 158, -43.1 , 0 );

setEffScaleKey( spep_2 + 0, ctdon, 0.68, 0.68 );
setEffScaleKey( spep_2 + 2, ctdon, 0.89, 0.89 );
setEffScaleKey( spep_2 + 4, ctdon, 1.09, 1.09 );
setEffScaleKey( spep_2 + 6, ctdon, 1.29, 1.29 );
setEffScaleKey( spep_2 + 8, ctdon, 1.49, 1.49 );
setEffScaleKey( spep_2 + 10, ctdon, 1.53, 1.53 );
setEffScaleKey( spep_2 + 12, ctdon, 1.57, 1.57 );
setEffScaleKey( spep_2 + 14, ctdon, 1.61, 1.61 );
setEffScaleKey( spep_2 + 16, ctdon, 1.65, 1.65 );
setEffScaleKey( spep_2 + 18, ctdon, 1.69, 1.69 );
setEffScaleKey( spep_2 + 20, ctdon, 1.73, 1.73 );
setEffScaleKey( spep_2 + 22, ctdon, 1.77, 1.77 );
setEffScaleKey( spep_2 + 24, ctdon, 1.8, 1.8 );
setEffScaleKey( spep_2 + 26, ctdon, 1.84, 1.84 );
setEffScaleKey( spep_2 + 28, ctdon, 1.88, 1.88 );
setEffScaleKey( spep_2 + 30, ctdon, 1.92, 1.92 );
setEffScaleKey( spep_2 + 32, ctdon, 1.96, 1.96 );
setEffScaleKey( spep_2 + 34, ctdon, 2, 2 );
setEffScaleKey( spep_2 + 36, ctdon, 2.04, 2.04 );

setEffRotateKey( spep_2 + 0, ctdon, 0 );
setEffRotateKey( spep_2 + 36, ctdon, 0 );

setEffAlphaKey( spep_2 + 0, ctdon, 255 );
setEffAlphaKey( spep_2 + 8, ctdon, 255 );
setEffAlphaKey( spep_2 + 10, ctdon, 237 );
setEffAlphaKey( spep_2 + 12, ctdon, 219 );
setEffAlphaKey( spep_2 + 14, ctdon, 200 );
setEffAlphaKey( spep_2 + 16, ctdon, 182 );
setEffAlphaKey( spep_2 + 18, ctdon, 164 );
setEffAlphaKey( spep_2 + 20, ctdon, 146 );
setEffAlphaKey( spep_2 + 22, ctdon, 128 );
setEffAlphaKey( spep_2 + 24, ctdon, 109 );
setEffAlphaKey( spep_2 + 26, ctdon, 91 );
setEffAlphaKey( spep_2 + 28, ctdon, 73 );
setEffAlphaKey( spep_2 + 30, ctdon, 55 );
setEffAlphaKey( spep_2 + 32, ctdon, 36 );
setEffAlphaKey( spep_2 + 34, ctdon, 18 );
setEffAlphaKey( spep_2 + 36, ctdon, 0 );

--文字エントリー
ctdon2 = entryEffectLife( spep_2 -3 + 52,  10019, 30, 0x100, -1, 0, -25.9, -111.1 );--ドンッ
setEffMoveKey( spep_2 -3 + 52, ctdon2, -25.9, -111.1 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctdon2, -26.5, -76.7 , 0 );
setEffMoveKey( spep_2 -3 + 56, ctdon2, -27, -42.2 , 0 );
setEffMoveKey( spep_2 -3 + 58, ctdon2, -27.5, -7.7 , 0 );
setEffMoveKey( spep_2 -3 + 60, ctdon2, -28, 26.8 , 0 );
setEffMoveKey( spep_2 -3 + 62, ctdon2, -28, 31.6 , 0 );
setEffMoveKey( spep_2 -3 + 64, ctdon2, -27.9, 36.3 , 0 );
setEffMoveKey( spep_2 -3 + 66, ctdon2, -27.9, 41 , 0 );
setEffMoveKey( spep_2 -3 + 68, ctdon2, -27.9, 45.7 , 0 );
setEffMoveKey( spep_2 -3 + 70, ctdon2, -27.9, 50.5 , 0 );
setEffMoveKey( spep_2 -3 + 72, ctdon2, -27.9, 55.2 , 0 );
setEffMoveKey( spep_2 -3 + 74, ctdon2, -27.9, 59.9 , 0 );
setEffMoveKey( spep_2 -3 + 76, ctdon2, -27.9, 64.6 , 0 );
setEffMoveKey( spep_2 -3 + 78, ctdon2, -27.8, 69.4 , 0 );
setEffMoveKey( spep_2 -3 + 80, ctdon2, -27.8, 74.1 , 0 );
setEffMoveKey( spep_2 -3 + 82, ctdon2, -27.8, 78.8 , 0 );

setEffScaleKey( spep_2 -3 + 52, ctdon2, 0.46, 0.46 );
setEffScaleKey( spep_2 -3 + 54, ctdon2, 0.91, 0.91 );
setEffScaleKey( spep_2 -3 + 56, ctdon2, 1.36, 1.36 );
setEffScaleKey( spep_2 -3 + 58, ctdon2, 1.82, 1.82 );
setEffScaleKey( spep_2 -3 + 60, ctdon2, 2.27, 2.27 );
setEffScaleKey( spep_2 -3 + 62, ctdon2, 2.33, 2.33 );
setEffScaleKey( spep_2 -3 + 64, ctdon2, 2.39, 2.39 );
setEffScaleKey( spep_2 -3 + 66, ctdon2, 2.46, 2.46 );
setEffScaleKey( spep_2 -3 + 68, ctdon2, 2.52, 2.52 );
setEffScaleKey( spep_2 -3 + 70, ctdon2, 2.58, 2.58 );
setEffScaleKey( spep_2 -3 + 72, ctdon2, 2.64, 2.64 );
setEffScaleKey( spep_2 -3 + 74, ctdon2, 2.7, 2.7 );
setEffScaleKey( spep_2 -3 + 76, ctdon2, 2.76, 2.76 );
setEffScaleKey( spep_2 -3 + 78, ctdon2, 2.83, 2.83 );
setEffScaleKey( spep_2 -3 + 80, ctdon2, 2.89, 2.89 );
setEffScaleKey( spep_2 -3 + 82, ctdon2, 2.95, 2.95 );

setEffRotateKey( spep_2 -3 + 52, ctdon2, 0 );
setEffRotateKey( spep_2 -3 + 82, ctdon2, 0 );

setEffAlphaKey( spep_2 -3 + 52, ctdon2, 255 );
setEffAlphaKey( spep_2 -3 + 60, ctdon2, 255 );
setEffAlphaKey( spep_2 -3 + 62, ctdon2, 232 );
setEffAlphaKey( spep_2 -3 + 64, ctdon2, 209 );
setEffAlphaKey( spep_2 -3 + 66, ctdon2, 185 );
setEffAlphaKey( spep_2 -3 + 68, ctdon2, 162 );
setEffAlphaKey( spep_2 -3 + 70, ctdon2, 139 );
setEffAlphaKey( spep_2 -3 + 72, ctdon2, 116 );
setEffAlphaKey( spep_2 -3 + 74, ctdon2, 93 );
setEffAlphaKey( spep_2 -3 + 76, ctdon2, 70 );
setEffAlphaKey( spep_2 -3 + 78, ctdon2, 46 );
setEffAlphaKey( spep_2 -3 + 80, ctdon2, 23 );
setEffAlphaKey( spep_2 -3 + 82, ctdon2, 0 );

--文字エントリー
ctdon3 = entryEffectLife( spep_2 -3 + 86,  10019, 28, 0x100, -1, 0, -139.9, 5.9 );--ドンッ
setEffMoveKey( spep_2 -3 + 86, ctdon3, -139.9, 5.9 , 0 );
setEffMoveKey( spep_2 -3 + 88, ctdon3, -112.4, 45.4 , 0 );
setEffMoveKey( spep_2 -3 + 90, ctdon3, -84.9, 84.9 , 0 );
setEffMoveKey( spep_2 -3 + 92, ctdon3, -57.3, 124.4 , 0 );
setEffMoveKey( spep_2 -3 + 94, ctdon3, -29.8, 163.8 , 0 );
setEffMoveKey( spep_2 -3 + 96, ctdon3, -29.8, 170.4 , 0 );
setEffMoveKey( spep_2 -3 + 98, ctdon3, -29.8, 177 , 0 );
setEffMoveKey( spep_2 -3 + 100, ctdon3, -29.8, 183.6 , 0 );
setEffMoveKey( spep_2 -3 + 102, ctdon3, -29.8, 190.2 , 0 );
setEffMoveKey( spep_2 -3 + 104, ctdon3, -29.8, 196.8 , 0 );
setEffMoveKey( spep_2 -3 + 106, ctdon3, -29.8, 203.4 , 0 );
setEffMoveKey( spep_2 -3 + 108, ctdon3, -29.8, 210 , 0 );
setEffMoveKey( spep_2 -3 + 110, ctdon3, -29.8, 216.6 , 0 );
setEffMoveKey( spep_2 -3 + 112, ctdon3, -29.8, 223.2 , 0 );
setEffMoveKey( spep_2 -3 + 114, ctdon3, -29.9, 229.8 , 0 );

setEffScaleKey( spep_2 -3 + 86, ctdon3, 1, 1 );
setEffScaleKey( spep_2 -3 + 88, ctdon3, 1.55, 1.55 );
setEffScaleKey( spep_2 -3 + 90, ctdon3, 2.09, 2.09 );
setEffScaleKey( spep_2 -3 + 92, ctdon3, 2.64, 2.64 );
setEffScaleKey( spep_2 -3 + 94, ctdon3, 3.18, 3.18 );
setEffScaleKey( spep_2 -3 + 96, ctdon3, 3.25, 3.25 );
setEffScaleKey( spep_2 -3 + 98, ctdon3, 3.33, 3.33 );
setEffScaleKey( spep_2 -3 + 100, ctdon3, 3.4, 3.4 );
setEffScaleKey( spep_2 -3 + 102, ctdon3, 3.47, 3.47 );
setEffScaleKey( spep_2 -3 + 104, ctdon3, 3.55, 3.55 );
setEffScaleKey( spep_2 -3 + 106, ctdon3, 3.62, 3.62 );
setEffScaleKey( spep_2 -3 + 108, ctdon3, 3.69, 3.69 );
setEffScaleKey( spep_2 -3 + 110, ctdon3, 3.76, 3.76 );
setEffScaleKey( spep_2 -3 + 112, ctdon3, 3.84, 3.84 );
setEffScaleKey( spep_2 -3 + 114, ctdon3, 3.91, 3.91 );

setEffRotateKey( spep_2 -3 + 86, ctdon3, 18.4 );
setEffRotateKey( spep_2 -3 + 114, ctdon3, 18.4 );

setEffAlphaKey( spep_2 -3 + 86, ctdon3, 255 );
setEffAlphaKey( spep_2 -3 + 94, ctdon3, 255 );
setEffAlphaKey( spep_2 -3 + 96, ctdon3, 230 );
setEffAlphaKey( spep_2 -3 + 98, ctdon3, 204 );
setEffAlphaKey( spep_2 -3 + 100, ctdon3, 179 );
setEffAlphaKey( spep_2 -3 + 102, ctdon3, 153 );
setEffAlphaKey( spep_2 -3 + 104, ctdon3, 128 );
setEffAlphaKey( spep_2 -3 + 106, ctdon3, 102 );
setEffAlphaKey( spep_2 -3 + 108, ctdon3, 77 );
setEffAlphaKey( spep_2 -3 + 110, ctdon3, 51 );
setEffAlphaKey( spep_2 -3 + 112, ctdon3, 25 );
setEffAlphaKey( spep_2 -3 + 114, ctdon3, 0 );

--敵の動き
setDisp( spep_2  + 0, 1, 1 );
setDisp( spep_2  + 70, 1, 0 );

changeAnime( spep_2  + 0, 1, 104 );
changeAnime( spep_2 -3 + 18, 1, 102 );
changeAnime( spep_2 -3 + 46, 1, 106 );

setMoveKey( spep_2  + 0, 1, -215.4, -67.4 , 0 );
--setMoveKey( spep_2 -3 + 2, 1, -95.3, -169.1 , 0 );
setMoveKey( spep_2 -3 + 4, 1, -9.5, -241.8 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 41.9, -285.4 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 59.1, -299.9 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 72.6, -297.5 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 77.3, -296.7 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 80.3, -296.1 , 0 );
setMoveKey( spep_2 -3 + 17, 1, 82.2, -295.8 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 83.2, -295.6 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 83.6, -295.6 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 82.6, -295.3 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 81.4, -295 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 79.6, -294.6 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 77.2, -294.1 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 74.1, -293.4 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 70.4, -292.6 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 65.6, -291.5 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 59.8, -290.2 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 53, -288.7 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 45.6, -287.1 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 37.9, -285.3 , 0 );
setMoveKey( spep_2 -3 + 45, 1, 37.9, -285.3 , 0 );

setMoveKey( spep_2 -3 + 46, 1, 17.8, -278.9 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 15.3, -271.1 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 12.8, -263.2 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 10.3, -255.3 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 7.8, -247.4 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 5.3, -239.6 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 2.8, -231.7 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 0.3, -223.8 , 0 );
setMoveKey( spep_2 -3 + 62, 1, -2.2, -215.9 , 0 );
setMoveKey( spep_2 -3 + 64, 1, -4.7, -208.1 , 0 );
setMoveKey( spep_2 -3 + 66, 1, -7.2, -200.2 , 0 );
setMoveKey( spep_2 -3 + 68, 1, -9.7, -192.3 , 0 );
setMoveKey( spep_2  + 70, 1, -12.2, -184.4 , 0 );

setScaleKey( spep_2  + 0, 1, 0.42, 0.42 );
--setScaleKey( spep_2 -3 + 2, 1, 0.4, 0.4 );
setScaleKey( spep_2 -3 + 4, 1, 0.38, 0.38 );
setScaleKey( spep_2 -3 + 6, 1, 0.36, 0.36 );
setScaleKey( spep_2 -3 + 8, 1, 0.36, 0.36 );
setScaleKey( spep_2 -3 + 10, 1, 0.37, 0.37 );
setScaleKey( spep_2 -3 + 22, 1, 0.37, 0.37 );
setScaleKey( spep_2 -3 + 24, 1, 0.38, 0.38 );
setScaleKey( spep_2 -3 + 26, 1, 0.38, 0.38 );
setScaleKey( spep_2 -3 + 28, 1, 0.39, 0.39 );
setScaleKey( spep_2 -3 + 30, 1, 0.4, 0.4 );
setScaleKey( spep_2 -3 + 32, 1, 0.42, 0.42 );
setScaleKey( spep_2 -3 + 34, 1, 0.44, 0.44 );
setScaleKey( spep_2 -3 + 36, 1, 0.46, 0.46 );
setScaleKey( spep_2 -3 + 38, 1, 0.48, 0.48 );
setScaleKey( spep_2 -3 + 40, 1, 0.51, 0.51 );
setScaleKey( spep_2 -3 + 42, 1, 0.54, 0.54 );
setScaleKey( spep_2 -3 + 45, 1, 0.54, 0.54 );

setScaleKey( spep_2 -3 + 46, 1, 0.6, 0.6 );
setScaleKey( spep_2  + 70, 1, 0.6, 0.6 );

setRotateKey( spep_2  + 0, 1, 0 );
setRotateKey( spep_2 -3 + 45, 1, 0 );
setRotateKey( spep_2 -3 + 46, 1, 16.5 );
setRotateKey( spep_2 -3 + 48, 1, 15.9 );
setRotateKey( spep_2 -3 + 50, 1, 15.3 );
setRotateKey( spep_2 -3 + 52, 1, 14.7 );
setRotateKey( spep_2 -3 + 54, 1, 14.1 );
setRotateKey( spep_2 -3 + 56, 1, 13.5 );
setRotateKey( spep_2 -3 + 58, 1, 13 );
setRotateKey( spep_2 -3 + 60, 1, 12.4 );
setRotateKey( spep_2 -3 + 62, 1, 11.8 );
setRotateKey( spep_2 -3 + 64, 1, 11.2 );
setRotateKey( spep_2 -3 + 66, 1, 10.6 );
setRotateKey( spep_2 -3 + 68, 1, 10 );
setRotateKey( spep_2  + 70, 1, 9.4 );

--SE
playSe( spep_2, 1068);--爆発
playSe( spep_2+44, 1068);--爆発
playSe( spep_2+78, 1068);--爆発

-- ** ホワイトフェード ** --
entryFade( spep_2 + 40, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 48, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 76, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 82, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_3 = spep_2+118;

------------------------------------------------------
--溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame2 = entryEffect( spep_3 + 0, SP_05,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tame2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, tame2, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame2, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, tame2, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame2, 0 );
setEffRotateKey( spep_3 + 100, tame2, 0 );
setEffAlphaKey( spep_3 + 0, tame2, 255 );
setEffAlphaKey( spep_3 + 100, tame2, 255 );

--***カットイン***
speff = entryEffect(  spep_3 - 14 +14,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff3 = entryEffect(  spep_3 - 14 +14,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff3, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo2 = entryEffectLife( spep_3 - 14 +26, 190006, 72, 0x100, -1, 0, 0, 540);    -- ゴゴゴゴ

setEffMoveKey(  spep_3 - 14 +26,  ctgogo2,  0,  540);
setEffMoveKey(  spep_3 - 14 +98,  ctgogo2,  0,  540);

setEffAlphaKey( spep_3 - 14  + 26, ctgogo2, 0 );
setEffAlphaKey( spep_3 - 14  + 27, ctgogo2, 255 );
setEffAlphaKey( spep_3 - 14  + 28, ctgogo2, 255 );
setEffAlphaKey( spep_3 - 14  + 88, ctgogo2, 255 );
setEffAlphaKey( spep_3 - 14  + 90, ctgogo2, 255 );
setEffAlphaKey( spep_3 - 14  + 92, ctgogo2, 191 );
setEffAlphaKey( spep_3 - 14  + 94, ctgogo2, 128 );
setEffAlphaKey( spep_3 - 14  + 96, ctgogo2, 64 );
setEffAlphaKey( spep_3 - 14  + 98, ctgogo2, 0 );

setEffRotateKey(  spep_3 - 14 +26,  ctgogo2,  0);
setEffRotateKey(  spep_3 - 14 +98,  ctgogo2,  0);

setEffScaleKey(  spep_3 - 14 +26,  ctgogo2,  0.7,  0.7);
setEffScaleKey(  spep_3 - 14 +90,  ctgogo2,  0.7,  0.7);
setEffScaleKey(  spep_3 - 14 +98,  ctgogo2, 1.07, 1.07 );

--SE
playSe( spep_3, 43);--瞬間移動
playSe( spep_3+12, 1018);--ごごご

--白フェード
entryFade( spep_3+ 82, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_4 = spep_3+90;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );

--白フェード
entryFade( spep_4 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;


------------------------------------------------------
-- ビームを撃つ
------------------------------------------------------
-- ** エフェクト等 ** --
bime = entryEffect( spep_5 -10 + 0, SP_06,  0x80, -1, 0, 100, 0 ); 
setEffMoveKey( spep_5 -10 + 0, bime, 0, 100 , 0 );
setEffMoveKey( spep_5 -10 + 70, bime, 0, 100 , 0 );
setEffScaleKey( spep_5 -10 + 0, bime, 1.0, 1.0 );
setEffScaleKey( spep_5 -10 + 70, bime, 1.0, 1.0 );
setEffRotateKey( spep_5 -10 + 0, bime, 0 );
setEffRotateKey( spep_5 -10 + 70, bime, 0 );
setEffAlphaKey( spep_5 -10 + 0, bime, 0 );
setEffAlphaKey( spep_5 -1 + 0, bime, 0 );
setEffAlphaKey( spep_5  + 0, bime, 255 );
setEffAlphaKey( spep_5 -10 + 70, bime, 255 );

--文字エントリー
ctzuo4 = entryEffectLife( spep_5 -10 +5  + 8,  10012, 16, 0x100, -1, 0, -95.8, 264.2 );--ズオッ

setEffMoveKey( spep_5 -10 +5  + 8, ctzuo4, -95.8, 264.2 , 0 );
setEffMoveKey( spep_5 -10 +5  + 10, ctzuo4, -94.4, 271 , 0 );
setEffMoveKey( spep_5 -10 +5  + 12, ctzuo4, -128.2, 278 , 0 );
setEffMoveKey( spep_5 -10 +5  + 14, ctzuo4, -106.5, 279.6 , 0 );
setEffMoveKey( spep_5 -10 +5  + 16, ctzuo4, -139.1, 282.5 , 0 );
setEffMoveKey( spep_5 -10 +5  + 18, ctzuo4, -108, 280.6 , 0 );
setEffMoveKey( spep_5 -10 +5  + 20, ctzuo4, -139.1, 282.5 , 0 );
setEffMoveKey( spep_5 -10 +5  + 22, ctzuo4, -108, 280.6 , 0 );
setEffMoveKey( spep_5 -10 +5  + 24, ctzuo4, -108, 280.6 , 0 );

setEffScaleKey( spep_5 -10 +5  + 8, ctzuo4, 0.42 , 0.42  );
--setEffScaleKey( spep_5 -10 +5  + 10, ctzuo4, 0.72 + a, 0.72 + a );
--setEffScaleKey( spep_5 -10 +5  + 12, ctzuo4, 0.93 + a, 0.93 + a );
setEffScaleKey( spep_5 -10 +5  + 14, ctzuo4, 1.06 + a, 1.06 + a );
setEffScaleKey( spep_5 -10 +5  + 16, ctzuo4, 2.1 + a, 2.1 + a );
setEffScaleKey( spep_5 -10 +5  + 24, ctzuo4, 2.1 + a, 2.1 + a );

setEffRotateKey( spep_5 -10 +5  + 8, ctzuo4, -11.5 );
setEffRotateKey( spep_5 -10 +5  + 24, ctzuo4, -11.5 );

setEffAlphaKey( spep_5 -10 +5  + 8, ctzuo4, 255 );
setEffAlphaKey( spep_5 -10 +5  + 16, ctzuo4, 255 );
setEffAlphaKey( spep_5 -10 +5  + 18, ctzuo4, 191 );
setEffAlphaKey( spep_5 -10 +5  + 20, ctzuo4, 128 );
setEffAlphaKey( spep_5 -10 +5  + 22, ctzuo4, 64 );
setEffAlphaKey( spep_5 -10 +5  + 24, ctzuo4, 0 );

--SE
SE1=playSe( spep_5 -10+22, 1022);--ビームを放つ
stopSe( spep_5 -10+100, SE1, 30 );

-- ** ホワイトフェード ** --
entryFade( spep_5 -10 + 18, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_5 -10 + 60, 4, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_6 = spep_5 -10 + 66;

------------------------------------------------------
-- ギャン
-----------------------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffect( spep_6 + 0, 190003,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_6 + 60, gyan, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_6 + 60, gyan, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, gyan, 0 );
setEffRotateKey( spep_6 + 60, gyan, 0 );
setEffAlphaKey( spep_6 + 0, gyan, 255 );
setEffAlphaKey( spep_6 + 60, gyan, 255 );

ctgyan = entryEffectLife( spep_6 + 0,  10006, 58, 0x100, -1, 0, 7.1, 306.8 );--ギャンッ

setEffMoveKey( spep_6 + 0, ctgyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_6 + 58, ctgyan, 7.1, 306.8 , 0 );

a=2.7;

setEffScaleKey( spep_6 + 0, ctgyan, 0.6 + a, 0.6 + a );
setEffScaleKey( spep_6 + 2, ctgyan, 0.7 + a, 0.7 + a );
setEffScaleKey( spep_6 + 4, ctgyan, 0.8 + a, 0.8 + a );
setEffScaleKey( spep_6 + 6, ctgyan, 0.9 + a, 0.9 + a );
setEffScaleKey( spep_6 + 8, ctgyan, 1 + a, 1 + a );
setEffScaleKey( spep_6 + 10, ctgyan, 1.01 + a, 1.01 + a );
setEffScaleKey( spep_6 + 12, ctgyan, 1.02 + a, 1.02 + a );
setEffScaleKey( spep_6 + 14, ctgyan, 1.02 + a, 1.02 + a );
setEffScaleKey( spep_6 + 16, ctgyan, 1.03 + a, 1.03 + a );
setEffScaleKey( spep_6 + 18, ctgyan, 1.04 + a, 1.04 + a );
setEffScaleKey( spep_6 + 20, ctgyan, 1.05 + a, 1.05 + a );
setEffScaleKey( spep_6 + 22, ctgyan, 1.06 + a, 1.06 + a );
setEffScaleKey( spep_6 + 24, ctgyan, 1.06 + a, 1.06 + a );
setEffScaleKey( spep_6 + 26, ctgyan, 1.07 + a, 1.07 + a );
setEffScaleKey( spep_6 + 28, ctgyan, 1.08 + a, 1.08 + a );
setEffScaleKey( spep_6 + 30, ctgyan, 1.09 + a, 1.09 + a );
setEffScaleKey( spep_6 + 32, ctgyan, 1.1 + a, 1.1 + a );
setEffScaleKey( spep_6 + 34, ctgyan, 1.1 + a, 1.1 + a );
setEffScaleKey( spep_6 + 36, ctgyan, 1.11 + a, 1.11 + a );
setEffScaleKey( spep_6 + 38, ctgyan, 1.12 + a, 1.12 + a );
setEffScaleKey( spep_6 + 40, ctgyan, 1.13 + a, 1.13 + a );
setEffScaleKey( spep_6 + 42, ctgyan, 1.14 + a, 1.14 + a );
setEffScaleKey( spep_6 + 44, ctgyan, 1.14 + a, 1.14 + a );
setEffScaleKey( spep_6 + 46, ctgyan, 1.15 + a, 1.15 + a );
setEffScaleKey( spep_6 + 48, ctgyan, 1.16 + a, 1.16 + a );
setEffScaleKey( spep_6 + 50, ctgyan, 1.17 + a, 1.17 + a );
setEffScaleKey( spep_6 + 52, ctgyan, 1.17 + a, 1.17 + a );
setEffScaleKey( spep_6 + 54, ctgyan, 1.18 + a, 1.18 + a );
setEffScaleKey( spep_6 + 56, ctgyan, 1.19 + a, 1.19 + a );
setEffScaleKey( spep_6 + 58, ctgyan, 1.2 + a, 1.2 + a );

setEffRotateKey( spep_6 + 0, ctgyan, 0 );
setEffRotateKey( spep_6 + 58, ctgyan, 0 );

setEffAlphaKey( spep_6 + 0, ctgyan, 255 );
setEffAlphaKey( spep_6 + 58, ctgyan, 255 );

--白フェード
entryFade( spep_6 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_6 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_6, 1023 ); --爆発

--次の準備
spep_7 =spep_6+60;

------------------------------------------------------
-- 終わり
-----------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_7 + 0, SP_07,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_7 + 180, finish, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_7 + 180, finish, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish, 0 );
setEffRotateKey( spep_7 + 180, finish, 0 );
setEffAlphaKey( spep_7 + 0, finish, 255 );
setEffAlphaKey( spep_7 + 180, finish, 255 );

ctzudododo = entryEffectLife( spep_7 + 0,  10014, 160, 0x100, -1, 0, 151.8, 28.1 );--ズドドド

setEffMoveKey( spep_7 + 0, ctzudododo, 151.8, 28.1 , 0 );
setEffMoveKey( spep_7 + 2, ctzudododo, 152.7, 29.1 , 0 );
setEffMoveKey( spep_7 + 4, ctzudododo, 153.5, 30.1 , 0 );
setEffMoveKey( spep_7 + 6, ctzudododo, 154.4, 31.1 , 0 );
setEffMoveKey( spep_7 + 8, ctzudododo, 155.2, 32 , 0 );
setEffMoveKey( spep_7 + 10, ctzudododo, 156.1, 33 , 0 );
setEffMoveKey( spep_7 + 12, ctzudododo, 156.9, 34 , 0 );
setEffMoveKey( spep_7 + 14, ctzudododo, 157.8, 35 , 0 );
setEffMoveKey( spep_7 + 16, ctzudododo, 158.6, 35.9 , 0 );
setEffMoveKey( spep_7 + 18, ctzudododo, 159.5, 36.9 , 0 );
setEffMoveKey( spep_7 + 20, ctzudododo, 160.3, 37.9 , 0 );
setEffMoveKey( spep_7 + 22, ctzudododo, 161.2, 38.9 , 0 );
setEffMoveKey( spep_7 + 24, ctzudododo, 162.1, 39.8 , 0 );
setEffMoveKey( spep_7 + 26, ctzudododo, 162.9, 40.8 , 0 );
setEffMoveKey( spep_7 + 28, ctzudododo, 163.8, 41.8 , 0 );
setEffMoveKey( spep_7 + 30, ctzudododo, 164.6, 42.7 , 0 );
setEffMoveKey( spep_7 + 32, ctzudododo, 165.5, 43.7 , 0 );
setEffMoveKey( spep_7 + 34, ctzudododo, 166.3, 44.7 , 0 );
setEffMoveKey( spep_7 + 36, ctzudododo, 167.2, 45.7 , 0 );
setEffMoveKey( spep_7 + 38, ctzudododo, 168, 46.6 , 0 );
setEffMoveKey( spep_7 + 40, ctzudododo, 168.9, 47.6 , 0 );
setEffMoveKey( spep_7 + 42, ctzudododo, 169.7, 48.6 , 0 );
setEffMoveKey( spep_7 + 44, ctzudododo, 170.6, 49.6 , 0 );
setEffMoveKey( spep_7 + 46, ctzudododo, 171.5, 50.5 , 0 );
setEffMoveKey( spep_7 + 48, ctzudododo, 172.3, 51.5 , 0 );
setEffMoveKey( spep_7 + 50, ctzudododo, 173.2, 52.5 , 0 );
setEffMoveKey( spep_7 + 52, ctzudododo, 174, 53.5 , 0 );
setEffMoveKey( spep_7 + 54, ctzudododo, 174.9, 54.4 , 0 );
setEffMoveKey( spep_7 + 56, ctzudododo, 175.7, 55.4 , 0 );
setEffMoveKey( spep_7 + 58, ctzudododo, 176.6, 56.4 , 0 );
setEffMoveKey( spep_7 + 60, ctzudododo, 177.4, 57.4 , 0 );
setEffMoveKey( spep_7 + 62, ctzudododo, 178.3, 58.3 , 0 );
setEffMoveKey( spep_7 + 64, ctzudododo, 179.1, 59.3 , 0 );
setEffMoveKey( spep_7 + 66, ctzudododo, 180, 60.3 , 0 );
setEffMoveKey( spep_7 + 68, ctzudododo, 180.9, 61.2 , 0 );
setEffMoveKey( spep_7 + 70, ctzudododo, 181.7, 62.2 , 0 );
setEffMoveKey( spep_7 + 72, ctzudododo, 182.6, 63.2 , 0 );
setEffMoveKey( spep_7 + 74, ctzudododo, 183.4, 64.2 , 0 );
setEffMoveKey( spep_7 + 76, ctzudododo, 184.3, 65.1 , 0 );
setEffMoveKey( spep_7 + 78, ctzudododo, 185.1, 66.1 , 0 );
setEffMoveKey( spep_7 + 80, ctzudododo, 186, 67.1 , 0 );
setEffMoveKey( spep_7 + 82, ctzudododo, 186.8, 68.1 , 0 );
setEffMoveKey( spep_7 + 84, ctzudododo, 187.7, 69 , 0 );
setEffMoveKey( spep_7 + 86, ctzudododo, 188.5, 70 , 0 );
setEffMoveKey( spep_7 + 88, ctzudododo, 189.4, 71 , 0 );
setEffMoveKey( spep_7 + 90, ctzudododo, 190.3, 72 , 0 );
setEffMoveKey( spep_7 + 92, ctzudododo, 191.1, 72.9 , 0 );
setEffMoveKey( spep_7 + 94, ctzudododo, 192, 73.9 , 0 );
setEffMoveKey( spep_7 + 96, ctzudododo, 192.8, 74.9 , 0 );
setEffMoveKey( spep_7 + 98, ctzudododo, 193.7, 75.9 , 0 );
setEffMoveKey( spep_7 + 100, ctzudododo, 194.5, 76.8 , 0 );
setEffMoveKey( spep_7 + 102, ctzudododo, 195.4, 77.8 , 0 );
setEffMoveKey( spep_7 + 104, ctzudododo, 196.2, 78.8 , 0 );
setEffMoveKey( spep_7 + 106, ctzudododo, 197.1, 79.7 , 0 );
setEffMoveKey( spep_7 + 108, ctzudododo, 197.9, 80.7 , 0 );
setEffMoveKey( spep_7 + 110, ctzudododo, 198.8, 81.7 , 0 );
setEffMoveKey( spep_7 + 112, ctzudododo, 199.7, 82.7 , 0 );
setEffMoveKey( spep_7 + 114, ctzudododo, 200.5, 83.6 , 0 );
setEffMoveKey( spep_7 + 116, ctzudododo, 201.4, 84.6 , 0 );
setEffMoveKey( spep_7 + 118, ctzudododo, 202.2, 85.6 , 0 );
setEffMoveKey( spep_7 + 120, ctzudododo, 203.1, 86.6 , 0 );
setEffMoveKey( spep_7 + 122, ctzudododo, 203.9, 87.5 , 0 );
setEffMoveKey( spep_7 + 124, ctzudododo, 204.8, 88.5 , 0 );
setEffMoveKey( spep_7 + 126, ctzudododo, 205.6, 89.5 , 0 );
setEffMoveKey( spep_7 + 128, ctzudododo, 206.5, 90.5 , 0 );
setEffMoveKey( spep_7 + 130, ctzudododo, 207.3, 91.4 , 0 );
setEffMoveKey( spep_7 + 132, ctzudododo, 208.2, 92.4 , 0 );
setEffMoveKey( spep_7 + 134, ctzudododo, 209.1, 93.4 , 0 );
setEffMoveKey( spep_7 + 136, ctzudododo, 209.9, 94.4 , 0 );
setEffMoveKey( spep_7 + 138, ctzudododo, 210.8, 95.3 , 0 );
setEffMoveKey( spep_7 + 140, ctzudododo, 211.6, 96.3 , 0 );
setEffMoveKey( spep_7 + 142, ctzudododo, 212.5, 97.3 , 0 );
setEffMoveKey( spep_7 + 144, ctzudododo, 213.3, 98.3 , 0 );
setEffMoveKey( spep_7 + 146, ctzudododo, 214.2, 99.2 , 0 );
setEffMoveKey( spep_7 + 148, ctzudododo, 215.3, 99.6 , 0 );
setEffMoveKey( spep_7 + 150, ctzudododo, 216.4, 100 , 0 );
setEffMoveKey( spep_7 + 152, ctzudododo, 217.5, 100.4 , 0 );
setEffMoveKey( spep_7 + 154, ctzudododo, 218.6, 100.7 , 0 );
setEffMoveKey( spep_7 + 156, ctzudododo, 219.7, 101.1 , 0 );
setEffMoveKey( spep_7 + 158, ctzudododo, 220.8, 101.5 , 0 );
setEffMoveKey( spep_7 + 160, ctzudododo, 221.9, 101.9 , 0 );

setEffScaleKey( spep_7 + 0, ctzudododo, 2.35, 2.35 );
setEffScaleKey( spep_7 + 2, ctzudododo, 2.34, 2.34 );
setEffScaleKey( spep_7 + 4, ctzudododo, 2.34, 2.34 );
setEffScaleKey( spep_7 + 6, ctzudododo, 2.33, 2.33 );
setEffScaleKey( spep_7 + 8, ctzudododo, 2.32, 2.32 );
setEffScaleKey( spep_7 + 10, ctzudododo, 2.32, 2.32 );
setEffScaleKey( spep_7 + 12, ctzudododo, 2.31, 2.31 );
setEffScaleKey( spep_7 + 14, ctzudododo, 2.3, 2.3 );
setEffScaleKey( spep_7 + 16, ctzudododo, 2.3, 2.3 );
setEffScaleKey( spep_7 + 18, ctzudododo, 2.29, 2.29 );
setEffScaleKey( spep_7 + 20, ctzudododo, 2.28, 2.28 );
setEffScaleKey( spep_7 + 22, ctzudododo, 2.28, 2.28 );
setEffScaleKey( spep_7 + 24, ctzudododo, 2.27, 2.27 );
setEffScaleKey( spep_7 + 26, ctzudododo, 2.27, 2.27 );
setEffScaleKey( spep_7 + 28, ctzudododo, 2.26, 2.26 );
setEffScaleKey( spep_7 + 30, ctzudododo, 2.25, 2.25 );
setEffScaleKey( spep_7 + 32, ctzudododo, 2.25, 2.25 );
setEffScaleKey( spep_7 + 34, ctzudododo, 2.24, 2.24 );
setEffScaleKey( spep_7 + 36, ctzudododo, 2.23, 2.23 );
setEffScaleKey( spep_7 + 38, ctzudododo, 2.23, 2.23 );
setEffScaleKey( spep_7 + 40, ctzudododo, 2.22, 2.22 );
setEffScaleKey( spep_7 + 42, ctzudododo, 2.21, 2.21 );
setEffScaleKey( spep_7 + 44, ctzudododo, 2.21, 2.21 );
setEffScaleKey( spep_7 + 46, ctzudododo, 2.2, 2.2 );
setEffScaleKey( spep_7 + 48, ctzudododo, 2.19, 2.19 );
setEffScaleKey( spep_7 + 50, ctzudododo, 2.19, 2.19 );
setEffScaleKey( spep_7 + 52, ctzudododo, 2.18, 2.18 );
setEffScaleKey( spep_7 + 54, ctzudododo, 2.17, 2.17 );
setEffScaleKey( spep_7 + 56, ctzudododo, 2.17, 2.17 );
setEffScaleKey( spep_7 + 58, ctzudododo, 2.16, 2.16 );
setEffScaleKey( spep_7 + 60, ctzudododo, 2.15, 2.15 );
setEffScaleKey( spep_7 + 62, ctzudododo, 2.15, 2.15 );
setEffScaleKey( spep_7 + 64, ctzudododo, 2.14, 2.14 );
setEffScaleKey( spep_7 + 66, ctzudododo, 2.13, 2.13 );
setEffScaleKey( spep_7 + 68, ctzudododo, 2.13, 2.13 );
setEffScaleKey( spep_7 + 70, ctzudododo, 2.12, 2.12 );
setEffScaleKey( spep_7 + 72, ctzudododo, 2.12, 2.12 );
setEffScaleKey( spep_7 + 74, ctzudododo, 2.11, 2.11 );
setEffScaleKey( spep_7 + 76, ctzudododo, 2.1, 2.1 );
setEffScaleKey( spep_7 + 78, ctzudododo, 2.1, 2.1 );
setEffScaleKey( spep_7 + 80, ctzudododo, 2.09, 2.09 );
setEffScaleKey( spep_7 + 82, ctzudododo, 2.08, 2.08 );
setEffScaleKey( spep_7 + 84, ctzudododo, 2.08, 2.08 );
setEffScaleKey( spep_7 + 86, ctzudododo, 2.07, 2.07 );
setEffScaleKey( spep_7 + 88, ctzudododo, 2.06, 2.06 );
setEffScaleKey( spep_7 + 90, ctzudododo, 2.06, 2.06 );
setEffScaleKey( spep_7 + 92, ctzudododo, 2.05, 2.05 );
setEffScaleKey( spep_7 + 94, ctzudododo, 2.04, 2.04 );
setEffScaleKey( spep_7 + 96, ctzudododo, 2.04, 2.04 );
setEffScaleKey( spep_7 + 98, ctzudododo, 2.03, 2.03 );
setEffScaleKey( spep_7 + 100, ctzudododo, 2.02, 2.02 );
setEffScaleKey( spep_7 + 102, ctzudododo, 2.02, 2.02 );
setEffScaleKey( spep_7 + 104, ctzudododo, 2.01, 2.01 );
setEffScaleKey( spep_7 + 106, ctzudododo, 2, 2 );
setEffScaleKey( spep_7 + 108, ctzudododo, 2, 2 );
setEffScaleKey( spep_7 + 110, ctzudododo, 1.99, 1.99 );
setEffScaleKey( spep_7 + 112, ctzudododo, 1.99, 1.99 );
setEffScaleKey( spep_7 + 114, ctzudododo, 1.98, 1.98 );
setEffScaleKey( spep_7 + 116, ctzudododo, 1.97, 1.97 );
setEffScaleKey( spep_7 + 118, ctzudododo, 1.97, 1.97 );
setEffScaleKey( spep_7 + 120, ctzudododo, 1.96, 1.96 );
setEffScaleKey( spep_7 + 122, ctzudododo, 1.95, 1.95 );
setEffScaleKey( spep_7 + 124, ctzudododo, 1.95, 1.95 );
setEffScaleKey( spep_7 + 126, ctzudododo, 1.94, 1.94 );
setEffScaleKey( spep_7 + 128, ctzudododo, 1.93, 1.93 );
setEffScaleKey( spep_7 + 130, ctzudododo, 1.93, 1.93 );
setEffScaleKey( spep_7 + 132, ctzudododo, 1.92, 1.92 );
setEffScaleKey( spep_7 + 134, ctzudododo, 1.91, 1.91 );
setEffScaleKey( spep_7 + 136, ctzudododo, 1.91, 1.91 );
setEffScaleKey( spep_7 + 138, ctzudododo, 1.9, 1.9 );
setEffScaleKey( spep_7 + 140, ctzudododo, 1.89, 1.89 );
setEffScaleKey( spep_7 + 142, ctzudododo, 1.89, 1.89 );
setEffScaleKey( spep_7 + 144, ctzudododo, 1.88, 1.88 );
setEffScaleKey( spep_7 + 146, ctzudododo, 1.87, 1.87 );
setEffScaleKey( spep_7 + 148, ctzudododo, 1.86, 1.86 );
setEffScaleKey( spep_7 + 150, ctzudododo, 1.85, 1.85 );
setEffScaleKey( spep_7 + 152, ctzudododo, 1.83, 1.83 );
setEffScaleKey( spep_7 + 154, ctzudododo, 1.82, 1.82 );
setEffScaleKey( spep_7 + 156, ctzudododo, 1.81, 1.81 );
setEffScaleKey( spep_7 + 158, ctzudododo, 1.79, 1.79 );
setEffScaleKey( spep_7 + 160, ctzudododo, 1.78, 1.78 );

setEffRotateKey( spep_7 + 0, ctzudododo, 44.9 );
setEffRotateKey( spep_7 + 36, ctzudododo, 44.9 );
setEffRotateKey( spep_7 + 38, ctzudododo, 45 );
setEffRotateKey( spep_7 + 108, ctzudododo, 45 );
setEffRotateKey( spep_7 + 110, ctzudododo, 45.1 );
setEffRotateKey( spep_7 + 148, ctzudododo, 45.1 );
setEffRotateKey( spep_7 + 150, ctzudododo, 45 );
setEffRotateKey( spep_7 + 156, ctzudododo, 45 );
setEffRotateKey( spep_7 + 158, ctzudododo, 44.9 );
setEffRotateKey( spep_7 + 160, ctzudododo, 44.9 );

setEffAlphaKey( spep_7 + 0, ctzudododo, 255 );
setEffAlphaKey( spep_7 + 146, ctzudododo, 255 );
setEffAlphaKey( spep_7 + 148, ctzudododo, 219 );
setEffAlphaKey( spep_7 + 150, ctzudododo, 182 );
setEffAlphaKey( spep_7 + 152, ctzudododo, 146 );
setEffAlphaKey( spep_7 + 154, ctzudododo, 109 );
setEffAlphaKey( spep_7 + 156, ctzudododo, 73 );
setEffAlphaKey( spep_7 + 158, ctzudododo, 36 );
setEffAlphaKey( spep_7 + 160, ctzudododo, 0 );

-- ** 音 ** --
playSe( spep_7, 1024 ); --爆発
SE_1044 = playSe( spep_7, 1044 );
stopSe( spep_7 + 100, SE_1044, 50)

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 10 );
endPhase( spep_7 + 170 );

else 

    ------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 登場して移動
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 124, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 124, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 124, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 124, tame, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0 -3 + 36,  906, 90, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 -3 + 36, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 126, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 36, shuchusen1, 1, 1 );
setEffScaleKey( spep_0 -3 + 110, shuchusen1, 1, 1 );
setEffScaleKey( spep_0 -3 + 112, shuchusen1, 1.03, 1.03 );
setEffScaleKey( spep_0 -3 + 114, shuchusen1, 1.21, 1.21 );
setEffScaleKey( spep_0 -3 + 116, shuchusen1, 1.72, 1.72 );
setEffScaleKey( spep_0 -3 + 126, shuchusen1, 2.7, 2.7 );

setEffRotateKey( spep_0 -3 + 36, shuchusen1, 0 );
setEffRotateKey( spep_0 -3 + 126, shuchusen1, 0 );

setEffAlphaKey( spep_0 -3 + 36, shuchusen1, 255 );
setEffAlphaKey( spep_0 -3 + 126, shuchusen1, 255 );

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_0 -3  +36, 190006, 68, 0x100, -1, 0, 0, 390);    -- ゴゴゴゴ

setEffMoveKey(  spep_0 -3  +36,  ctgogo,  -50,  410);
setEffMoveKey(  spep_0 -3  +104,  ctgogo,  -50,  410);

setEffAlphaKey( spep_0 -3   + 36, ctgogo, 255 );
setEffAlphaKey( spep_0 -3   + 104, ctgogo, 255 );

setEffRotateKey(  spep_0 -3  +36,  ctgogo,   -5);
setEffRotateKey(  spep_0 -3  +104,  ctgogo,  -5);

setEffScaleKey(  spep_0 -3  +36,  ctgogo,  -0.8,  0.8);
setEffScaleKey(  spep_0 -3  +104,  ctgogo,  -0.8,  0.8);

-- 書き文字エントリー --
ctsyun = entryEffectLife( spep_0 - 3 + 108,  10011, 16, 0x100, -1, 0, -23.9, 249.9 );--シュンッ

setEffMoveKey( spep_0 - 3 + 108, ctsyun, -23.9, 249.9 , 0 );
setEffMoveKey( spep_0 - 3 + 110, ctsyun, -15.6, 245.5 , 0 );
setEffMoveKey( spep_0 - 3 + 112, ctsyun, -10.6, 242.8 , 0 );
setEffMoveKey( spep_0 - 3 + 114, ctsyun, -8.9, 241.9 , 0 );
setEffMoveKey( spep_0 - 3 + 124, ctsyun, -8.9, 241.9 , 0 );

setEffScaleKey( spep_0 - 3 + 108, ctsyun, 0.56, 0.56 );
setEffScaleKey( spep_0 - 3 + 110, ctsyun, 0.98, 0.98 );
setEffScaleKey( spep_0 - 3 + 112, ctsyun, 1.23, 1.23 );
setEffScaleKey( spep_0 - 3 + 114, ctsyun, 1.31, 1.31 );
setEffScaleKey( spep_0 - 3 + 116, ctsyun, 1.35, 1.35 );
setEffScaleKey( spep_0 - 3 + 118, ctsyun, 1.38, 1.38 );
setEffScaleKey( spep_0 - 3 + 120, ctsyun, 1.42, 1.42 );
setEffScaleKey( spep_0 - 3 + 122, ctsyun, 1.45, 1.45 );
setEffScaleKey( spep_0 - 3 + 124, ctsyun, 1.49, 1.49 );

setEffRotateKey( spep_0 - 3 + 108, ctsyun, 0 );
setEffRotateKey( spep_0 - 3 + 124, ctsyun, 0 );

setEffAlphaKey( spep_0 - 3 + 108, ctsyun, 255 );
setEffAlphaKey( spep_0 - 3 + 114, ctsyun, 255 );
setEffAlphaKey( spep_0 - 3 + 116, ctsyun, 204 );
setEffAlphaKey( spep_0 - 3 + 118, ctsyun, 153 );
setEffAlphaKey( spep_0 - 3 + 120, ctsyun, 102 );
setEffAlphaKey( spep_0 - 3 + 122, ctsyun, 51 );
setEffAlphaKey( spep_0 - 3 + 124, ctsyun, 0 );

--SE
playSe( spep_0+34, 50);--気を放つ
playSe( spep_0+110, 1109);--瞬間移動

--次の準備
spep_1 = spep_0+124;



------------------------------------------------------
-- 気弾を投げる
------------------------------------------------------

-- ** エフェクト等 ** --
attack = entryEffect( spep_1 + 0, SP_02,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, attack, 0, 0 , 0 );
setEffMoveKey( spep_1 + 282, attack, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, attack, -1.0, 1.0 );
setEffScaleKey( spep_1 + 282, attack, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, attack, 0 );
setEffRotateKey( spep_1 + 282, attack, 0 );
setEffAlphaKey( spep_1 + 0, attack, 255 );
setEffAlphaKey( spep_1 + 282, attack, 255 );

--敵の動き
setDisp( spep_1  + 0, 1, 1 );
setDisp( spep_1  + 12, 1, 0 );
changeAnime( spep_1  + 0, 1, 102 );

setMoveKey( spep_1  + 0, 1, 220.5, 267.1 , 0 );
setMoveKey( spep_1  + 2, 1, 220.8, 254.8 , 0 );
setMoveKey( spep_1  + 4, 1, 221.9, 217.8 , 0 );
setMoveKey( spep_1  + 6, 1, 223.8, 153.3 , 0 );
setMoveKey( spep_1  + 8, 1, 226.9, 51.7 , 0 );
setMoveKey( spep_1  + 10, 1, 231.8, -111.1 , 0 );
setMoveKey( spep_1  + 12, 1, 245.9, -578.4 , 0 );

setScaleKey( spep_1  + 0, 1, 2.58, 2.58 );
setScaleKey( spep_1  + 2, 1, 2.62, 2.62 );
setScaleKey( spep_1  + 4, 1, 2.66, 2.66 );
setScaleKey( spep_1  + 6, 1, 2.62, 2.62 );
setScaleKey( spep_1  + 8, 1, 2.58, 2.58 );
setScaleKey( spep_1  + 12, 1, 2.58, 2.58 );

setRotateKey( spep_1  + 0, 1, 0 );
setRotateKey( spep_1  + 12, 1, 0 );

-- 書き文字エントリー --
ctsyun2 = entryEffectLife( spep_1 -3 + 4,  10011, 14, 0x100, -1, 0, -73.9, 340 );--シュンッ

setEffMoveKey( spep_1 -3 + 4, ctsyun2, -73.9, 340 , 0 );
setEffMoveKey( spep_1 -3 + 6, ctsyun2, -74, 340 , 0 );
setEffMoveKey( spep_1 -3 + 8, ctsyun2, -74.1, 340.1 , 0 );
setEffMoveKey( spep_1 -3 + 10, ctsyun2, -73.8, 340.1 , 0 );
setEffMoveKey( spep_1 -3 + 12, ctsyun2, -73.7, 340.1 , 0 );
setEffMoveKey( spep_1 -3 + 14, ctsyun2, -73.7, 340.2 , 0 );
setEffMoveKey( spep_1 -3 + 16, ctsyun2, -73.7, 340.3 , 0 );
setEffMoveKey( spep_1 -3 + 18, ctsyun2, -73.6, 340.1 , 0 );

setEffScaleKey( spep_1 -3 + 4, ctsyun2, 0.56, 0.56 );
setEffScaleKey( spep_1 -3 + 6, ctsyun2, 0.8, 0.8 );
setEffScaleKey( spep_1 -3 + 8, ctsyun2, 1.02, 1.02 );
setEffScaleKey( spep_1 -3 + 10, ctsyun2, 1.2, 1.2 );
setEffScaleKey( spep_1 -3 + 12, ctsyun2, 1.22, 1.22 );
setEffScaleKey( spep_1 -3 + 14, ctsyun2, 1.23, 1.23 );
setEffScaleKey( spep_1 -3 + 16, ctsyun2, 1.24, 1.24 );
setEffScaleKey( spep_1 -3 + 18, ctsyun2, 1.25, 1.25 );

setEffRotateKey( spep_1 -3 + 4, ctsyun2, -35 );
setEffRotateKey( spep_1 -3 + 18, ctsyun2, -35 );

setEffAlphaKey( spep_1 -3 + 4, ctsyun2, 255 );
setEffAlphaKey( spep_1 -3 + 18, ctsyun2, 255 );

--SE
SE0=playSe( spep_1, 1047);--瞬間移動
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    
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

-- 書き文字エントリー --
ctzuo1 = entryEffectLife( spep_1 -3 + 54,  10012, 24, 0x100, -1, 0, 132.1, 419.9 );--ズオッ

setEffMoveKey( spep_1 -3 + 54, ctzuo1, -132.1, 419.9 , 0 );
setEffMoveKey( spep_1 -3 + 56, ctzuo1, -132, 419.9 , 0 );
setEffMoveKey( spep_1 -3 + 58, ctzuo1, -132, 419.8 , 0 );
setEffMoveKey( spep_1 -3 + 78, ctzuo1, -132, 419.8 , 0 );

a = 1.7;

setEffScaleKey( spep_1 -3 + 54, ctzuo1, 0.25  , 0.25   );
setEffScaleKey( spep_1 -3 + 56, ctzuo1, 0.45 , 0.45   );
--setEffScaleKey( spep_1 -3 + 58, ctzuo1, 0.58 + a, 0.58 + a  );
--setEffScaleKey( spep_1 -3 + 60, ctzuo1, 0.62 + a, 0.62 + a );
setEffScaleKey( spep_1 -3 + 62, ctzuo1, 0.63 + a, 0.63 + a );
setEffScaleKey( spep_1 -3 + 64, ctzuo1, 0.65 + a, 0.65 + a );
setEffScaleKey( spep_1 -3 + 66, ctzuo1, 0.66 + a, 0.66 + a );
setEffScaleKey( spep_1 -3 + 68, ctzuo1, 0.68 + a, 0.68 + a );
setEffScaleKey( spep_1 -3 + 70, ctzuo1, 0.69 + a, 0.69 + a );
setEffScaleKey( spep_1 -3 + 72, ctzuo1, 0.71 + a, 0.71 + a );
setEffScaleKey( spep_1 -3 + 74, ctzuo1, 0.72 + a, 0.72 + a );
setEffScaleKey( spep_1 -3 + 76, ctzuo1, 0.74 + a, 0.74 + a );
setEffScaleKey( spep_1 -3 + 78, ctzuo1, 0.75 + a, 0.75 + a );

setEffRotateKey( spep_1 -3 + -54, ctzuo1, -20 );
setEffRotateKey( spep_1 -3 + -78, ctzuo1, -20 );

setEffAlphaKey( spep_1 - 3 + 54, ctzuo1, 255 );
setEffAlphaKey( spep_1 - 3 + 60, ctzuo1, 255 );
setEffAlphaKey( spep_1 - 3 + 62, ctzuo1, 227 );
setEffAlphaKey( spep_1 - 3 + 64, ctzuo1, 198 );
setEffAlphaKey( spep_1 - 3 + 66, ctzuo1, 170 );
setEffAlphaKey( spep_1 - 3 + 68, ctzuo1, 142 );
setEffAlphaKey( spep_1 - 3 + 70, ctzuo1, 113 );
setEffAlphaKey( spep_1 - 3 + 72, ctzuo1, 85 );
setEffAlphaKey( spep_1 - 3 + 74, ctzuo1, 57 );
setEffAlphaKey( spep_1 - 3 + 76, ctzuo1, 28 );
setEffAlphaKey( spep_1 - 3 + 78, ctzuo1, 0 );

-- 書き文字エントリー --
ctzuo2 = entryEffectLife( spep_1 -3 + 96,  10012, 24, 0x100, -1, 0, 88, 279.8 );
setEffMoveKey( spep_1 -3 + 96, ctzuo2, 88, 279.8 , 0 );
setEffMoveKey( spep_1 -3 + 98, ctzuo2, 132.4, 335.4 , 0 );
setEffMoveKey( spep_1 -3 + 100, ctzuo2, 159.1, 368.7 , 0 );
setEffMoveKey( spep_1 -3 + 102, ctzuo2, 168, 379.8 , 0 );
setEffMoveKey( spep_1 -3 + 104, ctzuo2, 168, 384.3 , 0 );
setEffMoveKey( spep_1 -3 + 106, ctzuo2, 168, 388.7 , 0 );
setEffMoveKey( spep_1 -3 + 108, ctzuo2, 168, 393.2 , 0 );
setEffMoveKey( spep_1 -3 + 110, ctzuo2, 168, 397.6 , 0 );
setEffMoveKey( spep_1 -3 + 112, ctzuo2, 168, 402.1 , 0 );
setEffMoveKey( spep_1 -3 + 114, ctzuo2, 168, 406.5 , 0 );
setEffMoveKey( spep_1 -3 + 116, ctzuo2, 168, 411 , 0 );
setEffMoveKey( spep_1 -3 + 118, ctzuo2, 167.9, 415.4 , 0 );
setEffMoveKey( spep_1 -3 + 120, ctzuo2, 167.9, 419.9 , 0 );

setEffScaleKey( spep_1 -3 + 96, ctzuo2, -0.25, 0.25 );
setEffScaleKey( spep_1 -3 + 98, ctzuo2, -0.45, 0.45 );
--setEffScaleKey( spep_1 -3 + 100, ctzuo2, 0.58, 0.58 );
--setEffScaleKey( spep_1 -3 + 102, ctzuo2, 0.62, 0.62 );
setEffScaleKey( spep_1 -3 + 104, ctzuo2, 0.63 + a, 0.63 + a );
setEffScaleKey( spep_1 -3 + 106, ctzuo2, 0.64 + a, 0.64 + a );
setEffScaleKey( spep_1 -3 + 108, ctzuo2, 0.65 + a, 0.65 + a );
setEffScaleKey( spep_1 -3 + 110, ctzuo2, 0.66 + a, 0.66 + a );
setEffScaleKey( spep_1 -3 + 112, ctzuo2, 0.66 + a, 0.66 + a );
setEffScaleKey( spep_1 -3 + 114, ctzuo2, 0.67 + a, 0.67 + a );
setEffScaleKey( spep_1 -3 + 116, ctzuo2, 0.68 + a, 0.68 + a );
setEffScaleKey( spep_1 -3 + 118, ctzuo2, 0.69 + a, 0.69 + a );
setEffScaleKey( spep_1 -3 + 120, ctzuo2, 0.7 + a, 0.7 + a );

setEffRotateKey( spep_1 -3 + 96, ctzuo2, -11.2 );
setEffRotateKey( spep_1 -3 + 98, ctzuo2, -6.9 );
setEffRotateKey( spep_1 -3 + 100, ctzuo2, -4.4 );
setEffRotateKey( spep_1 -3 + 102, ctzuo2, -3.5 );
setEffRotateKey( spep_1 -3 + 120, ctzuo2, -3.5 );

setEffAlphaKey( spep_1 -3 + 96, ctzuo2, 255 );
setEffAlphaKey( spep_1 -3 + 102, ctzuo2, 255 );
setEffAlphaKey( spep_1 -3 + 104, ctzuo2, 227 );
setEffAlphaKey( spep_1 -3 + 106, ctzuo2, 198 );
setEffAlphaKey( spep_1 -3 + 108, ctzuo2, 170 );
setEffAlphaKey( spep_1 -3 + 110, ctzuo2, 142 );
setEffAlphaKey( spep_1 -3 + 112, ctzuo2, 113 );
setEffAlphaKey( spep_1 -3 + 114, ctzuo2, 85 );
setEffAlphaKey( spep_1 -3 + 116, ctzuo2, 57 );
setEffAlphaKey( spep_1 -3 + 118, ctzuo2, 28 );
setEffAlphaKey( spep_1 -3 + 120, ctzuo2, 0 );

--文字エントリー
ctzuo3 = entryEffectLife( spep_1 -3 + 132,  10012, 24, 0x100, -1, 0, 172.1, 199.9 );

setEffMoveKey( spep_1 -3 + 132, ctzuo3, -172.1, 199.9 , 0 );
setEffMoveKey( spep_1 -3 + 134, ctzuo3, -180.2, 225.8 , 0 );
setEffMoveKey( spep_1 -3 + 136, ctzuo3, -188.4, 251.6 , 0 );
setEffMoveKey( spep_1 -3 + 138, ctzuo3, -196.1, 275.8 , 0 );
setEffMoveKey( spep_1 -3 + 140, ctzuo3, -196.1, 280.1 , 0 );
setEffMoveKey( spep_1 -3 + 142, ctzuo3, -196.1, 283.8 , 0 );
setEffMoveKey( spep_1 -3 + 144, ctzuo3, -196.1, 286.9 , 0 );
setEffMoveKey( spep_1 -3 + 146, ctzuo3, -196.1, 289.4 , 0 );
setEffMoveKey( spep_1 -3 + 148, ctzuo3, -196.1, 291.4 , 0 );
setEffMoveKey( spep_1 -3 + 150, ctzuo3, -196.1, 293 , 0 );
setEffMoveKey( spep_1 -3 + 152, ctzuo3, -196.1, 294.3 , 0 );
setEffMoveKey( spep_1 -3 + 154, ctzuo3, -196.1, 295.2 , 0 );
setEffMoveKey( spep_1 -3 + 156, ctzuo3, -196.1, 295.8 , 0 );

b=1.2;

setEffScaleKey( spep_1 -3 + 132, ctzuo3, 0.25, 0.25 );
setEffScaleKey( spep_1 -3 + 134, ctzuo3, 0.3, 0.3 );
--setEffScaleKey( spep_1 -3 + 136, ctzuo3, 0.35, 0.35 );
--setEffScaleKey( spep_1 -3 + 138, ctzuo3, 0.4, 0.4 );
setEffScaleKey( spep_1 -3 + 140, ctzuo3, 0.42 + b, 0.42 + b );
setEffScaleKey( spep_1 -3 + 142, ctzuo3, 0.43 + b, 0.43 + b );
setEffScaleKey( spep_1 -3 + 144, ctzuo3, 0.44 + b, 0.44 + b );
setEffScaleKey( spep_1 -3 + 146, ctzuo3, 0.45 + b, 0.45 + b );
setEffScaleKey( spep_1 -3 + 148, ctzuo3, 0.46 + b, 0.46 + b );
setEffScaleKey( spep_1 -3 + 150, ctzuo3, 0.47 + b, 0.47 + b );
setEffScaleKey( spep_1 -3 + 152, ctzuo3, 0.47 + b, 0.47 + b );
setEffScaleKey( spep_1 -3 + 154, ctzuo3, 0.48 + b, 0.48 + b );
setEffScaleKey( spep_1 -3 + 156, ctzuo3, 0.48 + b, 0.48 + b );

setEffRotateKey( spep_1 -3 + 132, ctzuo3, -30 );
setEffRotateKey( spep_1 -3 + 156, ctzuo3, -30 );

setEffAlphaKey( spep_1 -3 + 132, ctzuo3, 255 );
setEffAlphaKey( spep_1 -3 + 138, ctzuo3, 255 );
setEffAlphaKey( spep_1 -3 + 140, ctzuo3, 201 );
setEffAlphaKey( spep_1 -3 + 142, ctzuo3, 154 );
setEffAlphaKey( spep_1 -3 + 144, ctzuo3, 115 );
setEffAlphaKey( spep_1 -3 + 146, ctzuo3, 82 );
setEffAlphaKey( spep_1 -3 + 148, ctzuo3, 56 );
setEffAlphaKey( spep_1 -3 + 150, ctzuo3, 36 );
setEffAlphaKey( spep_1 -3 + 152, ctzuo3, 20 );
setEffAlphaKey( spep_1 -3 + 154, ctzuo3, 8 );
setEffAlphaKey( spep_1 -3 + 156, ctzuo3, 0 );

--SE
playSe( spep_1+46, 1004);--手を振り落とす
playSe( spep_1+52, 1049);--気弾をうつ
playSe( spep_1+86, 1004);--手を振り落とす
playSe( spep_1+94, 1049);--気弾をうつ
playSe( spep_1+128, 1004);--手を振り落とす
playSe( spep_1+130, 1049);--気弾をうつ


--次の準備
spep_2 = spep_1+156;

------------------------------------------------------
--地上に3回着弾
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_2 + 0, SP_03,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 124, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 124, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hit_f, 0 );
setEffRotateKey( spep_2 + 124, hit_f, 0 );
setEffAlphaKey( spep_2 + 0, hit_f, 255 );
setEffAlphaKey( spep_2 + 124, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_2 + 0, SP_04,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 124, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hit_b, 1.1, 1.1 );
setEffScaleKey( spep_2 + 124, hit_b, 1.1, 1.1 );
setEffRotateKey( spep_2 + 0, hit_b, 0 );
setEffRotateKey( spep_2 + 124, hit_b, 0 );
setEffAlphaKey( spep_2 + 0, hit_b, 255 );
setEffAlphaKey( spep_2 + 124, hit_b, 255 );

--文字エントリー
ctdon = entryEffectLife( spep_2 + 0, 10019, 36, 0x100, -1, 0, 216, -164.1 );--ドンッ
setEffMoveKey( spep_2 + 0, ctdon, 216, -164.1 , 0 );
setEffMoveKey( spep_2 + 2, ctdon, 206.5, -139.6 , 0 );
setEffMoveKey( spep_2 + 4, ctdon, 197, -115.1 , 0 );
setEffMoveKey( spep_2 + 6, ctdon, 187.5, -90.6 , 0 );
setEffMoveKey( spep_2 + 8, ctdon, 178, -66.1 , 0 );
setEffMoveKey( spep_2 + 10, ctdon, 176.6, -64.5 , 0 );
setEffMoveKey( spep_2 + 12, ctdon, 175.1, -62.8 , 0 );
setEffMoveKey( spep_2 + 14, ctdon, 173.7, -61.2 , 0 );
setEffMoveKey( spep_2 + 16, ctdon, 172.3, -59.5 , 0 );
setEffMoveKey( spep_2 + 18, ctdon, 170.9, -57.9 , 0 );
setEffMoveKey( spep_2 + 20, ctdon, 169.4, -56.2 , 0 );
setEffMoveKey( spep_2 + 22, ctdon, 168, -54.6 , 0 );
setEffMoveKey( spep_2 + 24, ctdon, 166.6, -53 , 0 );
setEffMoveKey( spep_2 + 26, ctdon, 165.1, -51.3 , 0 );
setEffMoveKey( spep_2 + 28, ctdon, 163.7, -49.7 , 0 );
setEffMoveKey( spep_2 + 30, ctdon, 162.3, -48 , 0 );
setEffMoveKey( spep_2 + 32, ctdon, 160.9, -46.4 , 0 );
setEffMoveKey( spep_2 + 34, ctdon, 159.4, -44.7 , 0 );
setEffMoveKey( spep_2 + 36, ctdon, 158, -43.1 , 0 );

setEffScaleKey( spep_2 + 0, ctdon, 0.68, 0.68 );
setEffScaleKey( spep_2 + 2, ctdon, 0.89, 0.89 );
setEffScaleKey( spep_2 + 4, ctdon, 1.09, 1.09 );
setEffScaleKey( spep_2 + 6, ctdon, 1.29, 1.29 );
setEffScaleKey( spep_2 + 8, ctdon, 1.49, 1.49 );
setEffScaleKey( spep_2 + 10, ctdon, 1.53, 1.53 );
setEffScaleKey( spep_2 + 12, ctdon, 1.57, 1.57 );
setEffScaleKey( spep_2 + 14, ctdon, 1.61, 1.61 );
setEffScaleKey( spep_2 + 16, ctdon, 1.65, 1.65 );
setEffScaleKey( spep_2 + 18, ctdon, 1.69, 1.69 );
setEffScaleKey( spep_2 + 20, ctdon, 1.73, 1.73 );
setEffScaleKey( spep_2 + 22, ctdon, 1.77, 1.77 );
setEffScaleKey( spep_2 + 24, ctdon, 1.8, 1.8 );
setEffScaleKey( spep_2 + 26, ctdon, 1.84, 1.84 );
setEffScaleKey( spep_2 + 28, ctdon, 1.88, 1.88 );
setEffScaleKey( spep_2 + 30, ctdon, 1.92, 1.92 );
setEffScaleKey( spep_2 + 32, ctdon, 1.96, 1.96 );
setEffScaleKey( spep_2 + 34, ctdon, 2, 2 );
setEffScaleKey( spep_2 + 36, ctdon, 2.04, 2.04 );

setEffRotateKey( spep_2 + 0, ctdon, 0 );
setEffRotateKey( spep_2 + 36, ctdon, 0 );

setEffAlphaKey( spep_2 + 0, ctdon, 255 );
setEffAlphaKey( spep_2 + 8, ctdon, 255 );
setEffAlphaKey( spep_2 + 10, ctdon, 237 );
setEffAlphaKey( spep_2 + 12, ctdon, 219 );
setEffAlphaKey( spep_2 + 14, ctdon, 200 );
setEffAlphaKey( spep_2 + 16, ctdon, 182 );
setEffAlphaKey( spep_2 + 18, ctdon, 164 );
setEffAlphaKey( spep_2 + 20, ctdon, 146 );
setEffAlphaKey( spep_2 + 22, ctdon, 128 );
setEffAlphaKey( spep_2 + 24, ctdon, 109 );
setEffAlphaKey( spep_2 + 26, ctdon, 91 );
setEffAlphaKey( spep_2 + 28, ctdon, 73 );
setEffAlphaKey( spep_2 + 30, ctdon, 55 );
setEffAlphaKey( spep_2 + 32, ctdon, 36 );
setEffAlphaKey( spep_2 + 34, ctdon, 18 );
setEffAlphaKey( spep_2 + 36, ctdon, 0 );

--文字エントリー
ctdon2 = entryEffectLife( spep_2 -3 + 52,  10019, 30, 0x100, -1, 0, 25.9, -111.1 );--ドンッ
setEffMoveKey( spep_2 -3 + 52, ctdon2, -25.9, -111.1 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctdon2, -26.5, -76.7 , 0 );
setEffMoveKey( spep_2 -3 + 56, ctdon2, -27, -42.2 , 0 );
setEffMoveKey( spep_2 -3 + 58, ctdon2, -27.5, -7.7 , 0 );
setEffMoveKey( spep_2 -3 + 60, ctdon2, -28, 26.8 , 0 );
setEffMoveKey( spep_2 -3 + 62, ctdon2, -28, 31.6 , 0 );
setEffMoveKey( spep_2 -3 + 64, ctdon2, -27.9, 36.3 , 0 );
setEffMoveKey( spep_2 -3 + 66, ctdon2, -27.9, 41 , 0 );
setEffMoveKey( spep_2 -3 + 68, ctdon2, -27.9, 45.7 , 0 );
setEffMoveKey( spep_2 -3 + 70, ctdon2, -27.9, 50.5 , 0 );
setEffMoveKey( spep_2 -3 + 72, ctdon2, -27.9, 55.2 , 0 );
setEffMoveKey( spep_2 -3 + 74, ctdon2, -27.9, 59.9 , 0 );
setEffMoveKey( spep_2 -3 + 76, ctdon2, -27.9, 64.6 , 0 );
setEffMoveKey( spep_2 -3 + 78, ctdon2, -27.8, 69.4 , 0 );
setEffMoveKey( spep_2 -3 + 80, ctdon2, -27.8, 74.1 , 0 );
setEffMoveKey( spep_2 -3 + 82, ctdon2, -27.8, 78.8 , 0 );

setEffScaleKey( spep_2 -3 + 52, ctdon2, 0.46, 0.46 );
setEffScaleKey( spep_2 -3 + 54, ctdon2, 0.91, 0.91 );
setEffScaleKey( spep_2 -3 + 56, ctdon2, 1.36, 1.36 );
setEffScaleKey( spep_2 -3 + 58, ctdon2, 1.82, 1.82 );
setEffScaleKey( spep_2 -3 + 60, ctdon2, 2.27, 2.27 );
setEffScaleKey( spep_2 -3 + 62, ctdon2, 2.33, 2.33 );
setEffScaleKey( spep_2 -3 + 64, ctdon2, 2.39, 2.39 );
setEffScaleKey( spep_2 -3 + 66, ctdon2, 2.46, 2.46 );
setEffScaleKey( spep_2 -3 + 68, ctdon2, 2.52, 2.52 );
setEffScaleKey( spep_2 -3 + 70, ctdon2, 2.58, 2.58 );
setEffScaleKey( spep_2 -3 + 72, ctdon2, 2.64, 2.64 );
setEffScaleKey( spep_2 -3 + 74, ctdon2, 2.7, 2.7 );
setEffScaleKey( spep_2 -3 + 76, ctdon2, 2.76, 2.76 );
setEffScaleKey( spep_2 -3 + 78, ctdon2, 2.83, 2.83 );
setEffScaleKey( spep_2 -3 + 80, ctdon2, 2.89, 2.89 );
setEffScaleKey( spep_2 -3 + 82, ctdon2, 2.95, 2.95 );

setEffRotateKey( spep_2 -3 + 52, ctdon2, 0 );
setEffRotateKey( spep_2 -3 + 82, ctdon2, 0 );

setEffAlphaKey( spep_2 -3 + 52, ctdon2, 255 );
setEffAlphaKey( spep_2 -3 + 60, ctdon2, 255 );
setEffAlphaKey( spep_2 -3 + 62, ctdon2, 232 );
setEffAlphaKey( spep_2 -3 + 64, ctdon2, 209 );
setEffAlphaKey( spep_2 -3 + 66, ctdon2, 185 );
setEffAlphaKey( spep_2 -3 + 68, ctdon2, 162 );
setEffAlphaKey( spep_2 -3 + 70, ctdon2, 139 );
setEffAlphaKey( spep_2 -3 + 72, ctdon2, 116 );
setEffAlphaKey( spep_2 -3 + 74, ctdon2, 93 );
setEffAlphaKey( spep_2 -3 + 76, ctdon2, 70 );
setEffAlphaKey( spep_2 -3 + 78, ctdon2, 46 );
setEffAlphaKey( spep_2 -3 + 80, ctdon2, 23 );
setEffAlphaKey( spep_2 -3 + 82, ctdon2, 0 );

--文字エントリー
ctdon3 = entryEffectLife( spep_2 -3 + 86,  10019, 28, 0x100, -1, 0, 139.9, 5.9 );--ドンッ
setEffMoveKey( spep_2 -3 + 86, ctdon3, -139.9, 5.9 , 0 );
setEffMoveKey( spep_2 -3 + 88, ctdon3, -112.4, 45.4 , 0 );
setEffMoveKey( spep_2 -3 + 90, ctdon3, -84.9, 84.9 , 0 );
setEffMoveKey( spep_2 -3 + 92, ctdon3, -57.3, 124.4 , 0 );
setEffMoveKey( spep_2 -3 + 94, ctdon3, -29.8, 163.8 , 0 );
setEffMoveKey( spep_2 -3 + 96, ctdon3, -29.8, 170.4 , 0 );
setEffMoveKey( spep_2 -3 + 98, ctdon3, -29.8, 177 , 0 );
setEffMoveKey( spep_2 -3 + 100, ctdon3, -29.8, 183.6 , 0 );
setEffMoveKey( spep_2 -3 + 102, ctdon3, -29.8, 190.2 , 0 );
setEffMoveKey( spep_2 -3 + 104, ctdon3, -29.8, 196.8 , 0 );
setEffMoveKey( spep_2 -3 + 106, ctdon3, -29.8, 203.4 , 0 );
setEffMoveKey( spep_2 -3 + 108, ctdon3, -29.8, 210 , 0 );
setEffMoveKey( spep_2 -3 + 110, ctdon3, -29.8, 216.6 , 0 );
setEffMoveKey( spep_2 -3 + 112, ctdon3, -29.8, 223.2 , 0 );
setEffMoveKey( spep_2 -3 + 114, ctdon3, -29.9, 229.8 , 0 );

setEffScaleKey( spep_2 -3 + 86, ctdon3, 1, 1 );
setEffScaleKey( spep_2 -3 + 88, ctdon3, 1.55, 1.55 );
setEffScaleKey( spep_2 -3 + 90, ctdon3, 2.09, 2.09 );
setEffScaleKey( spep_2 -3 + 92, ctdon3, 2.64, 2.64 );
setEffScaleKey( spep_2 -3 + 94, ctdon3, 3.18, 3.18 );
setEffScaleKey( spep_2 -3 + 96, ctdon3, 3.25, 3.25 );
setEffScaleKey( spep_2 -3 + 98, ctdon3, 3.33, 3.33 );
setEffScaleKey( spep_2 -3 + 100, ctdon3, 3.4, 3.4 );
setEffScaleKey( spep_2 -3 + 102, ctdon3, 3.47, 3.47 );
setEffScaleKey( spep_2 -3 + 104, ctdon3, 3.55, 3.55 );
setEffScaleKey( spep_2 -3 + 106, ctdon3, 3.62, 3.62 );
setEffScaleKey( spep_2 -3 + 108, ctdon3, 3.69, 3.69 );
setEffScaleKey( spep_2 -3 + 110, ctdon3, 3.76, 3.76 );
setEffScaleKey( spep_2 -3 + 112, ctdon3, 3.84, 3.84 );
setEffScaleKey( spep_2 -3 + 114, ctdon3, 3.91, 3.91 );

setEffRotateKey( spep_2 -3 + 86, ctdon3, 18.4 );
setEffRotateKey( spep_2 -3 + 114, ctdon3, 18.4 );

setEffAlphaKey( spep_2 -3 + 86, ctdon3, 255 );
setEffAlphaKey( spep_2 -3 + 94, ctdon3, 255 );
setEffAlphaKey( spep_2 -3 + 96, ctdon3, 230 );
setEffAlphaKey( spep_2 -3 + 98, ctdon3, 204 );
setEffAlphaKey( spep_2 -3 + 100, ctdon3, 179 );
setEffAlphaKey( spep_2 -3 + 102, ctdon3, 153 );
setEffAlphaKey( spep_2 -3 + 104, ctdon3, 128 );
setEffAlphaKey( spep_2 -3 + 106, ctdon3, 102 );
setEffAlphaKey( spep_2 -3 + 108, ctdon3, 77 );
setEffAlphaKey( spep_2 -3 + 110, ctdon3, 51 );
setEffAlphaKey( spep_2 -3 + 112, ctdon3, 25 );
setEffAlphaKey( spep_2 -3 + 114, ctdon3, 0 );

--敵の動き
setDisp( spep_2  + 0, 1, 1 );
setDisp( spep_2  + 70, 1, 0 );

changeAnime( spep_2  + 0, 1, 104 );
changeAnime( spep_2 -3 + 18, 1, 102 );
changeAnime( spep_2 -3 + 46, 1, 106 );

setMoveKey( spep_2  + 0, 1, 215.4, -67.4 , 0 );
--setMoveKey( spep_2 -3 + 2, 1, -95.3, -169.1 , 0 );
setMoveKey( spep_2 -3 + 4, 1, -9.5, -241.8 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 41.9, -285.4 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 59.1, -299.9 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 72.6, -297.5 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 77.3, -296.7 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 80.3, -296.1 , 0 );
setMoveKey( spep_2 -3 + 17, 1, 82.2, -295.8 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 83.2, -295.6 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 83.6, -295.6 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 82.6, -295.3 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 81.4, -295 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 79.6, -294.6 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 77.2, -294.1 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 74.1, -293.4 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 70.4, -292.6 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 65.6, -291.5 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 59.8, -290.2 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 53, -288.7 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 45.6, -287.1 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 37.9, -285.3 , 0 );
setMoveKey( spep_2 -3 + 45, 1, 37.9, -285.3 , 0 );

setMoveKey( spep_2 -3 + 46, 1, 17.8, -278.9 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 15.3, -271.1 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 12.8, -263.2 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 10.3, -255.3 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 7.8, -247.4 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 5.3, -239.6 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 2.8, -231.7 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 0.3, -223.8 , 0 );
setMoveKey( spep_2 -3 + 62, 1, -2.2, -215.9 , 0 );
setMoveKey( spep_2 -3 + 64, 1, -4.7, -208.1 , 0 );
setMoveKey( spep_2 -3 + 66, 1, -7.2, -200.2 , 0 );
setMoveKey( spep_2 -3 + 68, 1, -9.7, -192.3 , 0 );
setMoveKey( spep_2  + 70, 1, -12.2, -184.4 , 0 );

setScaleKey( spep_2  + 0, 1, 0.42, 0.42 );
--setScaleKey( spep_2 -3 + 2, 1, 0.4, 0.4 );
setScaleKey( spep_2 -3 + 4, 1, 0.38, 0.38 );
setScaleKey( spep_2 -3 + 6, 1, 0.36, 0.36 );
setScaleKey( spep_2 -3 + 8, 1, 0.36, 0.36 );
setScaleKey( spep_2 -3 + 10, 1, 0.37, 0.37 );
setScaleKey( spep_2 -3 + 22, 1, 0.37, 0.37 );
setScaleKey( spep_2 -3 + 24, 1, 0.38, 0.38 );
setScaleKey( spep_2 -3 + 26, 1, 0.38, 0.38 );
setScaleKey( spep_2 -3 + 28, 1, 0.39, 0.39 );
setScaleKey( spep_2 -3 + 30, 1, 0.4, 0.4 );
setScaleKey( spep_2 -3 + 32, 1, 0.42, 0.42 );
setScaleKey( spep_2 -3 + 34, 1, 0.44, 0.44 );
setScaleKey( spep_2 -3 + 36, 1, 0.46, 0.46 );
setScaleKey( spep_2 -3 + 38, 1, 0.48, 0.48 );
setScaleKey( spep_2 -3 + 40, 1, 0.51, 0.51 );
setScaleKey( spep_2 -3 + 42, 1, 0.54, 0.54 );
setScaleKey( spep_2 -3 + 45, 1, 0.54, 0.54 );

setScaleKey( spep_2 -3 + 46, 1, 0.6, 0.6 );
setScaleKey( spep_2  + 70, 1, 0.6, 0.6 );

setRotateKey( spep_2  + 0, 1, 0 );
setRotateKey( spep_2 -3 + 45, 1, 0 );
setRotateKey( spep_2 -3 + 46, 1, -16.5 );
setRotateKey( spep_2 -3 + 48, 1, -15.9 );
setRotateKey( spep_2 -3 + 50, 1, -15.3 );
setRotateKey( spep_2 -3 + 52, 1, -14.7 );
setRotateKey( spep_2 -3 + 54, 1, -14.1 );
setRotateKey( spep_2 -3 + 56, 1, -13.5 );
setRotateKey( spep_2 -3 + 58, 1, -13 );
setRotateKey( spep_2 -3 + 60, 1, -12.4 );
setRotateKey( spep_2 -3 + 62, 1, -11.8 );
setRotateKey( spep_2 -3 + 64, 1, -11.2 );
setRotateKey( spep_2 -3 + 66, 1, -10.6 );
setRotateKey( spep_2 -3 + 68, 1, -10 );
setRotateKey( spep_2  + 70, 1, -9.4 );

--SE
playSe( spep_2, 1068);--爆発
playSe( spep_2+44, 1068);--爆発
playSe( spep_2+78, 1068);--爆発

-- ** ホワイトフェード ** --
entryFade( spep_2 + 40, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 48, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 76, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 82, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_3 = spep_2+118;

------------------------------------------------------
--溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame2 = entryEffect( spep_3 + 0, SP_05,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tame2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, tame2, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame2, -1.0, 1.0 );
setEffScaleKey( spep_3 + 100, tame2, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame2, 0 );
setEffRotateKey( spep_3 + 100, tame2, 0 );
setEffAlphaKey( spep_3 + 0, tame2, 255 );
setEffAlphaKey( spep_3 + 100, tame2, 255 );

--***カットイン***
--speff = entryEffect(  spep_3 - 14 +14,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff3 = entryEffect(  spep_3 - 14 +14,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff3, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo2 = entryEffectLife( spep_3 - 14 +26, 190006, 72, 0x100, -1, 0, 0, 540);    -- ゴゴゴゴ

setEffMoveKey(  spep_3 - 14 +26,  ctgogo2,  0,  540);
setEffMoveKey(  spep_3 - 14 +98,  ctgogo2,  0,  540);

setEffAlphaKey( spep_3 - 14  + 26, ctgogo2, 0 );
setEffAlphaKey( spep_3 - 14  + 27, ctgogo2, 255 );
setEffAlphaKey( spep_3 - 14  + 28, ctgogo2, 255 );
setEffAlphaKey( spep_3 - 14  + 88, ctgogo2, 255 );
setEffAlphaKey( spep_3 - 14  + 90, ctgogo2, 255 );
setEffAlphaKey( spep_3 - 14  + 92, ctgogo2, 191 );
setEffAlphaKey( spep_3 - 14  + 94, ctgogo2, 128 );
setEffAlphaKey( spep_3 - 14  + 96, ctgogo2, 64 );
setEffAlphaKey( spep_3 - 14  + 98, ctgogo2, 0 );

setEffRotateKey(  spep_3 - 14 +26,  ctgogo2,  0);
setEffRotateKey(  spep_3 - 14 +98,  ctgogo2,  0);

setEffScaleKey(  spep_3 - 14 +26,  ctgogo2,  -0.7,  0.7);
setEffScaleKey(  spep_3 - 14 +90,  ctgogo2,  -0.7,  0.7);
setEffScaleKey(  spep_3 - 14 +98,  ctgogo2, -1.07, 1.07 );

--SE
playSe( spep_3, 43);--瞬間移動
playSe( spep_3+12, 1018);--ごごご

--白フェード
entryFade( spep_3+ 82, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_4 = spep_3+90;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );

--白フェード
entryFade( spep_4 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;


------------------------------------------------------
-- ビームを撃つ
------------------------------------------------------
-- ** エフェクト等 ** --
bime = entryEffect( spep_5 -10 + 0, SP_06,  0x80, -1, 0, 100, 0 ); 
setEffMoveKey( spep_5 -10 + 0, bime, 0, 100 , 0 );
setEffMoveKey( spep_5 -10 + 70, bime, 0, 100 , 0 );
setEffScaleKey( spep_5 -10 + 0, bime, -1.0, 1.0 );
setEffScaleKey( spep_5 -10 + 70, bime, -1.0, 1.0 );
setEffRotateKey( spep_5 -10 + 0, bime, 0 );
setEffRotateKey( spep_5 -10 + 70, bime, 0 );
setEffAlphaKey( spep_5 -10 + 0, bime, 0 );
setEffAlphaKey( spep_5 -1 + 0, bime, 0 );
setEffAlphaKey( spep_5  + 0, bime, 255 );
setEffAlphaKey( spep_5 -10 + 70, bime, 255 );


--文字エントリー
ctzuo4 = entryEffectLife( spep_5 -10 +5  + 8,  10012, 16, 0x100, -1, 0, -95.8, 264.2 );--ズオッ

setEffMoveKey( spep_5 -10 +5  + 8, ctzuo4, -95.8, 264.2 , 0 );
setEffMoveKey( spep_5 -10 +5  + 10, ctzuo4, -94.4, 271 , 0 );
setEffMoveKey( spep_5 -10 +5  + 12, ctzuo4, -128.2, 278 , 0 );
setEffMoveKey( spep_5 -10 +5  + 14, ctzuo4, -106.5, 279.6 , 0 );
setEffMoveKey( spep_5 -10 +5  + 16, ctzuo4, -139.1, 282.5 , 0 );
setEffMoveKey( spep_5 -10 +5  + 18, ctzuo4, -108, 280.6 , 0 );
setEffMoveKey( spep_5 -10 +5  + 20, ctzuo4, -139.1, 282.5 , 0 );
setEffMoveKey( spep_5 -10 +5  + 22, ctzuo4, -108, 280.6 , 0 );
setEffMoveKey( spep_5 -10 +5  + 24, ctzuo4, -108, 280.6 , 0 );

setEffScaleKey( spep_5 -10 +5  + 8, ctzuo4, 0.42 , 0.42  );
--setEffScaleKey( spep_5 -10 +5  + 10, ctzuo4, 0.72 + a, 0.72 + a );
--setEffScaleKey( spep_5 -10 +5  + 12, ctzuo4, 0.93 + a, 0.93 + a );
setEffScaleKey( spep_5 -10 +5  + 14, ctzuo4, 1.06 + a, 1.06 + a );
setEffScaleKey( spep_5 -10 +5  + 16, ctzuo4, 2.1 + a, 2.1 + a );
setEffScaleKey( spep_5 -10 +5  + 24, ctzuo4, 2.1 + a, 2.1 + a );

setEffRotateKey( spep_5 -10 +5  + 8, ctzuo4, -11.5 );
setEffRotateKey( spep_5 -10 +5  + 24, ctzuo4, -11.5 );

setEffAlphaKey( spep_5 -10 +5  + 8, ctzuo4, 255 );
setEffAlphaKey( spep_5 -10 +5  + 16, ctzuo4, 255 );
setEffAlphaKey( spep_5 -10 +5  + 18, ctzuo4, 191 );
setEffAlphaKey( spep_5 -10 +5  + 20, ctzuo4, 128 );
setEffAlphaKey( spep_5 -10 +5  + 22, ctzuo4, 64 );
setEffAlphaKey( spep_5 -10 +5  + 24, ctzuo4, 0 );

--SE
SE1=playSe( spep_5 -10+22, 1022);--ビームを放つ
stopSe( spep_5 -10+100, SE1, 30 );

-- ** ホワイトフェード ** --
entryFade( spep_5 -10 + 18, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_5 -10 + 60, 4, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_6 = spep_5 -10 + 66;


------------------------------------------------------
-- ギャン
-----------------------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffect( spep_6 + 0, 190003,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_6 + 60, gyan, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, gyan, -1.0, 1.0 );
setEffScaleKey( spep_6 + 60, gyan, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, gyan, 0 );
setEffRotateKey( spep_6 + 60, gyan, 0 );
setEffAlphaKey( spep_6 + 0, gyan, 255 );
setEffAlphaKey( spep_6 + 60, gyan, 255 );

ctgyan = entryEffectLife( spep_6 + 0,  10006, 58, 0x100, -1, 0, 7.1, 306.8 );--ギャンッ

setEffMoveKey( spep_6 + 0, ctgyan, -7.1, 306.8 , 0 );
setEffMoveKey( spep_6 + 58, ctgyan, -7.1, 306.8 , 0 );

a=2.7;

setEffScaleKey( spep_6 + 0, ctgyan, 0.6 + a, 0.6 + a );
setEffScaleKey( spep_6 + 2, ctgyan, 0.7 + a, 0.7 + a );
setEffScaleKey( spep_6 + 4, ctgyan, 0.8 + a, 0.8 + a );
setEffScaleKey( spep_6 + 6, ctgyan, 0.9 + a, 0.9 + a );
setEffScaleKey( spep_6 + 8, ctgyan, 1 + a, 1 + a );
setEffScaleKey( spep_6 + 10, ctgyan, 1.01 + a, 1.01 + a );
setEffScaleKey( spep_6 + 12, ctgyan, 1.02 + a, 1.02 + a );
setEffScaleKey( spep_6 + 14, ctgyan, 1.02 + a, 1.02 + a );
setEffScaleKey( spep_6 + 16, ctgyan, 1.03 + a, 1.03 + a );
setEffScaleKey( spep_6 + 18, ctgyan, 1.04 + a, 1.04 + a );
setEffScaleKey( spep_6 + 20, ctgyan, 1.05 + a, 1.05 + a );
setEffScaleKey( spep_6 + 22, ctgyan, 1.06 + a, 1.06 + a );
setEffScaleKey( spep_6 + 24, ctgyan, 1.06 + a, 1.06 + a );
setEffScaleKey( spep_6 + 26, ctgyan, 1.07 + a, 1.07 + a );
setEffScaleKey( spep_6 + 28, ctgyan, 1.08 + a, 1.08 + a );
setEffScaleKey( spep_6 + 30, ctgyan, 1.09 + a, 1.09 + a );
setEffScaleKey( spep_6 + 32, ctgyan, 1.1 + a, 1.1 + a );
setEffScaleKey( spep_6 + 34, ctgyan, 1.1 + a, 1.1 + a );
setEffScaleKey( spep_6 + 36, ctgyan, 1.11 + a, 1.11 + a );
setEffScaleKey( spep_6 + 38, ctgyan, 1.12 + a, 1.12 + a );
setEffScaleKey( spep_6 + 40, ctgyan, 1.13 + a, 1.13 + a );
setEffScaleKey( spep_6 + 42, ctgyan, 1.14 + a, 1.14 + a );
setEffScaleKey( spep_6 + 44, ctgyan, 1.14 + a, 1.14 + a );
setEffScaleKey( spep_6 + 46, ctgyan, 1.15 + a, 1.15 + a );
setEffScaleKey( spep_6 + 48, ctgyan, 1.16 + a, 1.16 + a );
setEffScaleKey( spep_6 + 50, ctgyan, 1.17 + a, 1.17 + a );
setEffScaleKey( spep_6 + 52, ctgyan, 1.17 + a, 1.17 + a );
setEffScaleKey( spep_6 + 54, ctgyan, 1.18 + a, 1.18 + a );
setEffScaleKey( spep_6 + 56, ctgyan, 1.19 + a, 1.19 + a );
setEffScaleKey( spep_6 + 58, ctgyan, 1.2 + a, 1.2 + a );

setEffRotateKey( spep_6 + 0, ctgyan, 0 );
setEffRotateKey( spep_6 + 58, ctgyan, 0 );

setEffAlphaKey( spep_6 + 0, ctgyan, 255 );
setEffAlphaKey( spep_6 + 58, ctgyan, 255 );

--白フェード
entryFade( spep_6 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_6 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 音 ** --
playSe( spep_6, 1023 ); --爆発

--次の準備
spep_7 =spep_6+60;

------------------------------------------------------
-- 終わり
-----------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_7 + 0, SP_07x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_7 + 180, finish, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_7 + 180, finish, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish, 0 );
setEffRotateKey( spep_7 + 180, finish, 0 );
setEffAlphaKey( spep_7 + 0, finish, 255 );
setEffAlphaKey( spep_7 + 180, finish, 255 );


c =50;

ctzudododo = entryEffectLife( spep_7 + 0,  10014, 160, 0x100, -1, 0, 151.8 - c, 28.1 );--ズドドド

setEffMoveKey( spep_7 + 0, ctzudododo, 151.8 - c, 28.1 , 0 );
setEffMoveKey( spep_7 + 2, ctzudododo, 152.7 - c, 29.1 , 0 );
setEffMoveKey( spep_7 + 4, ctzudododo, 153.5 - c, 30.1 , 0 );
setEffMoveKey( spep_7 + 6, ctzudododo, 154.4 - c, 31.1 , 0 );
setEffMoveKey( spep_7 + 8, ctzudododo, 155.2 - c, 32 , 0 );
setEffMoveKey( spep_7 + 10, ctzudododo, 156.1 - c, 33 , 0 );
setEffMoveKey( spep_7 + 12, ctzudododo, 156.9 - c, 34 , 0 );
setEffMoveKey( spep_7 + 14, ctzudododo, 157.8 - c, 35 , 0 );
setEffMoveKey( spep_7 + 16, ctzudododo, 158.6 - c, 35.9 , 0 );
setEffMoveKey( spep_7 + 18, ctzudododo, 159.5 - c, 36.9 , 0 );
setEffMoveKey( spep_7 + 20, ctzudododo, 160.3 - c, 37.9 , 0 );
setEffMoveKey( spep_7 + 22, ctzudododo, 161.2 - c, 38.9 , 0 );
setEffMoveKey( spep_7 + 24, ctzudododo, 162.1 - c, 39.8 , 0 );
setEffMoveKey( spep_7 + 26, ctzudododo, 162.9 - c, 40.8 , 0 );
setEffMoveKey( spep_7 + 28, ctzudododo, 163.8 - c, 41.8 , 0 );
setEffMoveKey( spep_7 + 30, ctzudododo, 164.6 - c, 42.7 , 0 );
setEffMoveKey( spep_7 + 32, ctzudododo, 165.5 - c, 43.7 , 0 );
setEffMoveKey( spep_7 + 34, ctzudododo, 166.3 - c, 44.7 , 0 );
setEffMoveKey( spep_7 + 36, ctzudododo, 167.2 - c, 45.7 , 0 );
setEffMoveKey( spep_7 + 38, ctzudododo, 168 - c, 46.6 , 0 );
setEffMoveKey( spep_7 + 40, ctzudododo, 168.9 - c, 47.6 , 0 );
setEffMoveKey( spep_7 + 42, ctzudododo, 169.7 - c, 48.6 , 0 );
setEffMoveKey( spep_7 + 44, ctzudododo, 170.6 - c, 49.6 , 0 );
setEffMoveKey( spep_7 + 46, ctzudododo, 171.5 - c, 50.5 , 0 );
setEffMoveKey( spep_7 + 48, ctzudododo, 172.3 - c, 51.5 , 0 );
setEffMoveKey( spep_7 + 50, ctzudododo, 173.2 - c, 52.5 , 0 );
setEffMoveKey( spep_7 + 52, ctzudododo, 174 - c, 53.5 , 0 );
setEffMoveKey( spep_7 + 54, ctzudododo, 174.9 - c, 54.4 , 0 );
setEffMoveKey( spep_7 + 56, ctzudododo, 175.7 - c, 55.4 , 0 );
setEffMoveKey( spep_7 + 58, ctzudododo, 176.6 - c, 56.4 , 0 );
setEffMoveKey( spep_7 + 60, ctzudododo, 177.4 - c, 57.4 , 0 );
setEffMoveKey( spep_7 + 62, ctzudododo, 178.3 - c, 58.3 , 0 );
setEffMoveKey( spep_7 + 64, ctzudododo, 179.1 - c, 59.3 , 0 );
setEffMoveKey( spep_7 + 66, ctzudododo, 180 - c, 60.3 , 0 );
setEffMoveKey( spep_7 + 68, ctzudododo, 180.9 - c, 61.2 , 0 );
setEffMoveKey( spep_7 + 70, ctzudododo, 181.7 - c, 62.2 , 0 );
setEffMoveKey( spep_7 + 72, ctzudododo, 182.6 - c, 63.2 , 0 );
setEffMoveKey( spep_7 + 74, ctzudododo, 183.4 - c, 64.2 , 0 );
setEffMoveKey( spep_7 + 76, ctzudododo, 184.3 - c, 65.1 , 0 );
setEffMoveKey( spep_7 + 78, ctzudododo, 185.1 - c, 66.1 , 0 );
setEffMoveKey( spep_7 + 80, ctzudododo, 186 - c, 67.1 , 0 );
setEffMoveKey( spep_7 + 82, ctzudododo, 186.8 - c, 68.1 , 0 );
setEffMoveKey( spep_7 + 84, ctzudododo, 187.7 - c, 69 , 0 );
setEffMoveKey( spep_7 + 86, ctzudododo, 188.5 - c, 70 , 0 );
setEffMoveKey( spep_7 + 88, ctzudododo, 189.4 - c, 71 , 0 );
setEffMoveKey( spep_7 + 90, ctzudododo, 190.3 - c, 72 , 0 );
setEffMoveKey( spep_7 + 92, ctzudododo, 191.1 - c, 72.9 , 0 );
setEffMoveKey( spep_7 + 94, ctzudododo, 192 - c, 73.9 , 0 );
setEffMoveKey( spep_7 + 96, ctzudododo, 192.8 - c, 74.9 , 0 );
setEffMoveKey( spep_7 + 98, ctzudododo, 193.7 - c, 75.9 , 0 );
setEffMoveKey( spep_7 + 100, ctzudododo, 194.5 - c, 76.8 , 0 );
setEffMoveKey( spep_7 + 102, ctzudododo, 195.4 - c, 77.8 , 0 );
setEffMoveKey( spep_7 + 104, ctzudododo, 196.2 - c, 78.8 , 0 );
setEffMoveKey( spep_7 + 106, ctzudododo, 197.1 - c, 79.7 , 0 );
setEffMoveKey( spep_7 + 108, ctzudododo, 197.9 - c, 80.7 , 0 );
setEffMoveKey( spep_7 + 110, ctzudododo, 198.8 - c, 81.7 , 0 );
setEffMoveKey( spep_7 + 112, ctzudododo, 199.7 - c, 82.7 , 0 );
setEffMoveKey( spep_7 + 114, ctzudododo, 200.5 - c, 83.6 , 0 );
setEffMoveKey( spep_7 + 116, ctzudododo, 201.4 - c, 84.6 , 0 );
setEffMoveKey( spep_7 + 118, ctzudododo, 202.2 - c, 85.6 , 0 );
setEffMoveKey( spep_7 + 120, ctzudododo, 203.1 - c, 86.6 , 0 );
setEffMoveKey( spep_7 + 122, ctzudododo, 203.9 - c, 87.5 , 0 );
setEffMoveKey( spep_7 + 124, ctzudododo, 204.8 - c, 88.5 , 0 );
setEffMoveKey( spep_7 + 126, ctzudododo, 205.6 - c, 89.5 , 0 );
setEffMoveKey( spep_7 + 128, ctzudododo, 206.5 - c, 90.5 , 0 );
setEffMoveKey( spep_7 + 130, ctzudododo, 207.3 - c, 91.4 , 0 );
setEffMoveKey( spep_7 + 132, ctzudododo, 208.2 - c, 92.4 , 0 );
setEffMoveKey( spep_7 + 134, ctzudododo, 209.1 - c, 93.4 , 0 );
setEffMoveKey( spep_7 + 136, ctzudododo, 209.9 - c, 94.4 , 0 );
setEffMoveKey( spep_7 + 138, ctzudododo, 210.8 - c, 95.3 , 0 );
setEffMoveKey( spep_7 + 140, ctzudododo, 211.6 - c, 96.3 , 0 );
setEffMoveKey( spep_7 + 142, ctzudododo, 212.5 - c, 97.3 , 0 );
setEffMoveKey( spep_7 + 144, ctzudododo, 213.3 - c, 98.3 , 0 );
setEffMoveKey( spep_7 + 146, ctzudododo, 214.2 - c, 99.2 , 0 );
setEffMoveKey( spep_7 + 148, ctzudododo, 215.3 - c, 99.6 , 0 );
setEffMoveKey( spep_7 + 150, ctzudododo, 216.4 - c, 100 , 0 );
setEffMoveKey( spep_7 + 152, ctzudododo, 217.5 - c, 100.4 , 0 );
setEffMoveKey( spep_7 + 154, ctzudododo, 218.6 - c, 100.7 , 0 );
setEffMoveKey( spep_7 + 156, ctzudododo, 219.7 - c, 101.1 , 0 );
setEffMoveKey( spep_7 + 158, ctzudododo, 220.8 - c, 101.5 , 0 );
setEffMoveKey( spep_7 + 160, ctzudododo, 221.9 - c, 101.9 , 0 );

setEffScaleKey( spep_7 + 0, ctzudododo, 2.35, 2.35 );
setEffScaleKey( spep_7 + 2, ctzudododo, 2.34, 2.34 );
setEffScaleKey( spep_7 + 4, ctzudododo, 2.34, 2.34 );
setEffScaleKey( spep_7 + 6, ctzudododo, 2.33, 2.33 );
setEffScaleKey( spep_7 + 8, ctzudododo, 2.32, 2.32 );
setEffScaleKey( spep_7 + 10, ctzudododo, 2.32, 2.32 );
setEffScaleKey( spep_7 + 12, ctzudododo, 2.31, 2.31 );
setEffScaleKey( spep_7 + 14, ctzudododo, 2.3, 2.3 );
setEffScaleKey( spep_7 + 16, ctzudododo, 2.3, 2.3 );
setEffScaleKey( spep_7 + 18, ctzudododo, 2.29, 2.29 );
setEffScaleKey( spep_7 + 20, ctzudododo, 2.28, 2.28 );
setEffScaleKey( spep_7 + 22, ctzudododo, 2.28, 2.28 );
setEffScaleKey( spep_7 + 24, ctzudododo, 2.27, 2.27 );
setEffScaleKey( spep_7 + 26, ctzudododo, 2.27, 2.27 );
setEffScaleKey( spep_7 + 28, ctzudododo, 2.26, 2.26 );
setEffScaleKey( spep_7 + 30, ctzudododo, 2.25, 2.25 );
setEffScaleKey( spep_7 + 32, ctzudododo, 2.25, 2.25 );
setEffScaleKey( spep_7 + 34, ctzudododo, 2.24, 2.24 );
setEffScaleKey( spep_7 + 36, ctzudododo, 2.23, 2.23 );
setEffScaleKey( spep_7 + 38, ctzudododo, 2.23, 2.23 );
setEffScaleKey( spep_7 + 40, ctzudododo, 2.22, 2.22 );
setEffScaleKey( spep_7 + 42, ctzudododo, 2.21, 2.21 );
setEffScaleKey( spep_7 + 44, ctzudododo, 2.21, 2.21 );
setEffScaleKey( spep_7 + 46, ctzudododo, 2.2, 2.2 );
setEffScaleKey( spep_7 + 48, ctzudododo, 2.19, 2.19 );
setEffScaleKey( spep_7 + 50, ctzudododo, 2.19, 2.19 );
setEffScaleKey( spep_7 + 52, ctzudododo, 2.18, 2.18 );
setEffScaleKey( spep_7 + 54, ctzudododo, 2.17, 2.17 );
setEffScaleKey( spep_7 + 56, ctzudododo, 2.17, 2.17 );
setEffScaleKey( spep_7 + 58, ctzudododo, 2.16, 2.16 );
setEffScaleKey( spep_7 + 60, ctzudododo, 2.15, 2.15 );
setEffScaleKey( spep_7 + 62, ctzudododo, 2.15, 2.15 );
setEffScaleKey( spep_7 + 64, ctzudododo, 2.14, 2.14 );
setEffScaleKey( spep_7 + 66, ctzudododo, 2.13, 2.13 );
setEffScaleKey( spep_7 + 68, ctzudododo, 2.13, 2.13 );
setEffScaleKey( spep_7 + 70, ctzudododo, 2.12, 2.12 );
setEffScaleKey( spep_7 + 72, ctzudododo, 2.12, 2.12 );
setEffScaleKey( spep_7 + 74, ctzudododo, 2.11, 2.11 );
setEffScaleKey( spep_7 + 76, ctzudododo, 2.1, 2.1 );
setEffScaleKey( spep_7 + 78, ctzudododo, 2.1, 2.1 );
setEffScaleKey( spep_7 + 80, ctzudododo, 2.09, 2.09 );
setEffScaleKey( spep_7 + 82, ctzudododo, 2.08, 2.08 );
setEffScaleKey( spep_7 + 84, ctzudododo, 2.08, 2.08 );
setEffScaleKey( spep_7 + 86, ctzudododo, 2.07, 2.07 );
setEffScaleKey( spep_7 + 88, ctzudododo, 2.06, 2.06 );
setEffScaleKey( spep_7 + 90, ctzudododo, 2.06, 2.06 );
setEffScaleKey( spep_7 + 92, ctzudododo, 2.05, 2.05 );
setEffScaleKey( spep_7 + 94, ctzudododo, 2.04, 2.04 );
setEffScaleKey( spep_7 + 96, ctzudododo, 2.04, 2.04 );
setEffScaleKey( spep_7 + 98, ctzudododo, 2.03, 2.03 );
setEffScaleKey( spep_7 + 100, ctzudododo, 2.02, 2.02 );
setEffScaleKey( spep_7 + 102, ctzudododo, 2.02, 2.02 );
setEffScaleKey( spep_7 + 104, ctzudododo, 2.01, 2.01 );
setEffScaleKey( spep_7 + 106, ctzudododo, 2, 2 );
setEffScaleKey( spep_7 + 108, ctzudododo, 2, 2 );
setEffScaleKey( spep_7 + 110, ctzudododo, 1.99, 1.99 );
setEffScaleKey( spep_7 + 112, ctzudododo, 1.99, 1.99 );
setEffScaleKey( spep_7 + 114, ctzudododo, 1.98, 1.98 );
setEffScaleKey( spep_7 + 116, ctzudododo, 1.97, 1.97 );
setEffScaleKey( spep_7 + 118, ctzudododo, 1.97, 1.97 );
setEffScaleKey( spep_7 + 120, ctzudododo, 1.96, 1.96 );
setEffScaleKey( spep_7 + 122, ctzudododo, 1.95, 1.95 );
setEffScaleKey( spep_7 + 124, ctzudododo, 1.95, 1.95 );
setEffScaleKey( spep_7 + 126, ctzudododo, 1.94, 1.94 );
setEffScaleKey( spep_7 + 128, ctzudododo, 1.93, 1.93 );
setEffScaleKey( spep_7 + 130, ctzudododo, 1.93, 1.93 );
setEffScaleKey( spep_7 + 132, ctzudododo, 1.92, 1.92 );
setEffScaleKey( spep_7 + 134, ctzudododo, 1.91, 1.91 );
setEffScaleKey( spep_7 + 136, ctzudododo, 1.91, 1.91 );
setEffScaleKey( spep_7 + 138, ctzudododo, 1.9, 1.9 );
setEffScaleKey( spep_7 + 140, ctzudododo, 1.89, 1.89 );
setEffScaleKey( spep_7 + 142, ctzudododo, 1.89, 1.89 );
setEffScaleKey( spep_7 + 144, ctzudododo, 1.88, 1.88 );
setEffScaleKey( spep_7 + 146, ctzudododo, 1.87, 1.87 );
setEffScaleKey( spep_7 + 148, ctzudododo, 1.86, 1.86 );
setEffScaleKey( spep_7 + 150, ctzudododo, 1.85, 1.85 );
setEffScaleKey( spep_7 + 152, ctzudododo, 1.83, 1.83 );
setEffScaleKey( spep_7 + 154, ctzudododo, 1.82, 1.82 );
setEffScaleKey( spep_7 + 156, ctzudododo, 1.81, 1.81 );
setEffScaleKey( spep_7 + 158, ctzudododo, 1.79, 1.79 );
setEffScaleKey( spep_7 + 160, ctzudododo, 1.78, 1.78 );

setEffRotateKey( spep_7 + 0, ctzudododo, -10.9 );
setEffRotateKey( spep_7 + 36, ctzudododo, -10.9 );
setEffRotateKey( spep_7 + 38, ctzudododo, -11 );
setEffRotateKey( spep_7 + 108, ctzudododo, -11 );
setEffRotateKey( spep_7 + 110, ctzudododo, -11.1 );
setEffRotateKey( spep_7 + 148, ctzudododo, -11.1 );
setEffRotateKey( spep_7 + 150, ctzudododo, -11 );
setEffRotateKey( spep_7 + 156, ctzudododo, -11 );
setEffRotateKey( spep_7 + 158, ctzudododo, -10.9 );
setEffRotateKey( spep_7 + 160, ctzudododo, -10.9 );

setEffAlphaKey( spep_7 + 0, ctzudododo, 255 );
setEffAlphaKey( spep_7 + 146, ctzudododo, 255 );
setEffAlphaKey( spep_7 + 148, ctzudododo, 219 );
setEffAlphaKey( spep_7 + 150, ctzudododo, 182 );
setEffAlphaKey( spep_7 + 152, ctzudododo, 146 );
setEffAlphaKey( spep_7 + 154, ctzudododo, 109 );
setEffAlphaKey( spep_7 + 156, ctzudododo, 73 );
setEffAlphaKey( spep_7 + 158, ctzudododo, 36 );
setEffAlphaKey( spep_7 + 160, ctzudododo, 0 );

-- ** 音 ** --
playSe( spep_7, 1024 ); --爆発
SE_1044 = playSe( spep_7, 1044 );
stopSe( spep_7 + 100, SE_1044, 50)

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 10 );
endPhase( spep_7 + 170 );

end