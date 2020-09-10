--1018370:ゴハンクス(ゼノ)_爆裂砲火斬
--sp_effect_b4_00116

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
SP_01=	154356	;--	気溜め
SP_02=	154358	;--	気弾連射
SP_03=	154360	;--	集中線
SP_04=	154361	;--	剣構え
SP_05=	154362	;--	斬撃

--エフェクト(敵)
SP_01x=	154357	;--	気溜め	(敵)
SP_02x=	154359	;--	気弾連射	(敵)
SP_03x=	154360	;--	集中線	
SP_04x=	154361	;--	剣構え	
SP_05x=	154362	;--	斬撃	

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
-- 気溜め　
------------------------------------------------------
--はじめの準備
spep_0 = 0;

-- ** エフェクト等 ** --
tame_a = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_0 + 0, tame_a, 0, 0 , 0 );
setEffMoveKey( spep_0 + 80, tame_a, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame_a, 1.0, 1.0 );
setEffScaleKey( spep_0 + 80, tame_a, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_a, 0 );
setEffRotateKey( spep_0 + 80, tame_a, 0 );
setEffAlphaKey( spep_0 + 0, tame_a, 255 );
setEffAlphaKey( spep_0 + 80, tame_a, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 78, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 + 0, shuchusen1, 78, 20 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 78, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.1, 1.1 );
setEffScaleKey( spep_0 + 78, shuchusen1, 1.1, 1.1 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 78, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 78, shuchusen1, 255 );

--黒い
entryFadeBg( spep_0, 0, 80, 0, 0, 0, 0, 200 );

--音
playSe( spep_0 +0, 1151 );  --気溜め

SE0 = playSe( spep_0 +2, 1186 );  --気溜め
setSeVolume( spep_0 +2, 1186, 30);
setSeVolume( spep_0 +12, 1186, 50);
setSeVolume( spep_0 +22, 1186, 70);
setSeVolume( spep_0 +82, 1186, 40);
setSeVolume( spep_0 +90, 1186, 30);
setSeVolume( spep_0 +96, 1186, 0);
stopSe( spep_0 +96, SE0, 0 );

playSe( spep_0 +6, 1020 );  --気溜め
setSeVolume( spep_0 +6, 1020, 75);

SE1 = playSe( spep_0 +10, 1175 );  --気溜め
setSeVolume( spep_0 +10, 1175, 30);
setSeVolume( spep_0 +88, 1186, 20);
setSeVolume( spep_0 +102, 1186, 0);
stopSe( spep_0 +102, SE1, 0 );

playSe( spep_0 +24, 1020 );  --気溜め
setSeVolume( spep_0 +24, 1020, 75);

SE2 = playSe( spep_0 +34, 1003 );  --腕を振り下ろす

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
    stopSe( SP_dodge - 12, SE2, 0 );
    
    pauseAll( SP_dodge, 67 );


    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,-1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );   -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100, -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    
    
    
    
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    setMoveKey( SP_dodge + 10,   0,-2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 白フェード ** --
entryFade( spep_0 + 72, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--音
playSe( spep_0 +46, 1020 );  --気溜め
setSeVolume( spep_0 +46, 1020, 75);

playSe( spep_0 +68, 1020 );  --気溜め
setSeVolume( spep_0 +68, 1020, 75);

--次の準備
spep_1 = spep_0+80;

------------------------------------------------------
-- 気弾連射
------------------------------------------------------
-- ** エフェクト等 ** --
kidan_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_1 + 0, kidan_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 100, kidan_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kidan_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 100, kidan_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kidan_f, 0 );
setEffRotateKey( spep_1 + 100, kidan_f, 0 );
setEffAlphaKey( spep_1 + 0, kidan_f, 255 );
setEffAlphaKey( spep_1 + 100, kidan_f, 255 );

-- ** エフェクト等 ** --
kidan_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_1 + 0, kidan_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 100, kidan_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kidan_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 100, kidan_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kidan_b, 0 );
setEffRotateKey( spep_1 + 100, kidan_b, 0 );
setEffAlphaKey( spep_1 + 0, kidan_b, 255 );
setEffAlphaKey( spep_1 + 100, kidan_b, 255 );

--敵の動き
setDisp( spep_1  + 0, 1, 1 );
setDisp( spep_1 -3 + 64, 1, 0 );

changeAnime( spep_1  + 0, 1, 100 );
changeAnime( spep_1 -3 + 36, 1, 108 );

setMoveKey( spep_1  + 0, 1, 188.4, 216.4 , 0 );
--setMoveKey( spep_1 -3 + 2, 1, 188.4, 216.4 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 188.5, 216.5 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 188.7, 216.7 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 188.8, 216.8 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 189.1, 217.1 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 189.2, 217.2 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 189.4, 217.4 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 189.5, 217.5 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 189.6, 217.6 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 189.8, 217.8 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 189.9, 217.9 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 190.1, 218.1 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 190.2, 218.2 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 190.3, 218.3 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 190.6, 218.6 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 190.8, 218.8 , 0 );
setMoveKey( spep_1 -3 + 35, 1, 190.9, 218.9 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 191, 219 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 191.2, 219.2 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 188.2, 216.2 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 189.8, 217.8 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 191.2, 219.2 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 188.2, 214.8 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 191.2, 219.2 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 188.2, 216.2 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 191.2, 219.2 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 188.2, 214.8 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 189.8, 216.9 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 191.2, 219.2 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 188.2, 216.2 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 191.2, 219.2 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 188.2, 214.8 , 0 );

setScaleKey( spep_1  + 0, 1, 0.79, 0.79 );
setScaleKey( spep_1 -3 + 64, 1, 0.79, 0.79 );

setRotateKey( spep_1  + 0, 1, -0.2 );
setRotateKey( spep_1 -3 + 64, 1, -0.2 );

--文字エントリー
ctzuo = entryEffectLife( spep_1 -3 + 4,  10012, 32, 0x100, -1, 0, 76, 399.9 );--ズオッ

setEffMoveKey( spep_1 -3 + 4, ctzuo, 76, 399.9 , 0 );
setEffMoveKey( spep_1 -3 + 6, ctzuo, 102.2, 443.7 , 0 );
setEffMoveKey( spep_1 -3 + 8, ctzuo, 116, 499.9 , 0 );
setEffMoveKey( spep_1 -3 + 10, ctzuo, 126.4, 489.4 , 0 );
setEffMoveKey( spep_1 -3 + 12, ctzuo, 115.9, 499.9 , 0 );
setEffMoveKey( spep_1 -3 + 14, ctzuo, 126.6, 489.3 , 0 );
setEffMoveKey( spep_1 -3 + 16, ctzuo, 116, 499.8 , 0 );
setEffMoveKey( spep_1 -3 + 18, ctzuo, 126.7, 489.1 , 0 );
setEffMoveKey( spep_1 -3 + 20, ctzuo, 116, 499.9 , 0 );
setEffMoveKey( spep_1 -3 + 22, ctzuo, 126.8, 489 , 0 );
setEffMoveKey( spep_1 -3 + 24, ctzuo, 115.9, 499.9 , 0 );
setEffMoveKey( spep_1 -3 + 26, ctzuo, 127, 488.9 , 0 );
setEffMoveKey( spep_1 -3 + 28, ctzuo, 124, 499.9 , 0 );
setEffMoveKey( spep_1 -3 + 30, ctzuo, 154.6, 477.3 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctzuo, 139.9, 499.9 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctzuo, 182.2, 465.7 , 0 );
setEffMoveKey( spep_1 -3 + 36, ctzuo, 196, 459.9 , 0 );

a=1.3;
b=3;

setEffScaleKey( spep_1 -3 + 4, ctzuo, 0.1 , 0.1  );
--setEffScaleKey( spep_1 -3 + 6, ctzuo, 0.31 +a, 0.31 +a );
setEffScaleKey( spep_1 -3 + 8, ctzuo, 0.52 +a, 0.52 +a );
setEffScaleKey( spep_1 -3 + 10, ctzuo, 0.52 +a, 0.52 +a );
setEffScaleKey( spep_1 -3 + 12, ctzuo, 0.53 +a, 0.53 +a );
setEffScaleKey( spep_1 -3 + 16, ctzuo, 0.53 +a, 0.53 +a );
setEffScaleKey( spep_1 -3 + 18, ctzuo, 0.54 +a, 0.54 +a );
setEffScaleKey( spep_1 -3 + 22, ctzuo, 0.54 +a, 0.54 +a );
setEffScaleKey( spep_1 -3 + 24, ctzuo, 0.55 +a, 0.55 +a );
setEffScaleKey( spep_1 -3 + 26, ctzuo, 0.55 +a, 0.55 +a );
setEffScaleKey( spep_1 -3 + 28, ctzuo, 0.84 +a, 0.84 +a );
--setEffScaleKey( spep_1 -3 + 30, ctzuo, 1.13 +b, 1.13 +a );
--setEffScaleKey( spep_1 -3 + 32, ctzuo, 1.42 +b, 1.42 +b );
--setEffScaleKey( spep_1 -3 + 34, ctzuo, 1.71 +b, 1.71 +b);
setEffScaleKey( spep_1 -3 + 36, ctzuo, 2 +b, 2 +b );

setEffRotateKey( spep_1 -3 + 4, ctzuo, 30 );
setEffRotateKey( spep_1 -3 + 36, ctzuo, 30 );

setEffAlphaKey( spep_1 -3 + 4, ctzuo, 255 );
setEffAlphaKey( spep_1 -3 + 26, ctzuo, 255 );
setEffAlphaKey( spep_1 -3 + 28, ctzuo, 204 );
setEffAlphaKey( spep_1 -3 + 30, ctzuo, 153 );
setEffAlphaKey( spep_1 -3 + 32, ctzuo, 102 );
setEffAlphaKey( spep_1 -3 + 34, ctzuo, 51 );
setEffAlphaKey( spep_1 -3 + 36, ctzuo, 0 );

-- ** 白フェード ** --
entryFade( spep_1 + 92, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--黒い
entryFadeBg( spep_1, 0, 100, 0, 0, 0, 0, 200 );

--音
SE5 = playSe( spep_1 +0, 1072 );  --気弾３連
setSeVolume( spep_1 +0, 1072, 0);
setSeVolume( spep_1 +22, 1072, 50);
setSeVolume( spep_1 +28, 1072, 70);
setSeVolume( spep_1 +38, 1072, 50);
setSeVolume( spep_1 +54, 1072, 0);
stopSe( spep_1 +54, SE5, 0 );

SE6 = playSe( spep_1 +22, 1116 );  --気弾３連
setSeVolume( spep_1 +22, 1116, 60);
setSeVolume( spep_1 +58, 1116, 50);
setSeVolume( spep_1 +70, 1116, 30);
setSeVolume( spep_1 +80, 1116, 0);
stopSe( spep_1 +80, SE6, 0 );

playSe( spep_1 +34, 1002 );  --気弾３連
playSe( spep_1 +50, 1002 );  --気弾３連
playSe( spep_1 +64, 1002 );  --気弾３連

--次の準備
spep_2 = spep_1+100;

------------------------------------------------------
-- 剣構え
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_2 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 100, tame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 100, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 100, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 100, tame, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_2 -3 + 8,  906, 90, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2 -3 + 8, shuchusen2, 90, 20 );

setEffMoveKey( spep_2 -3 + 8, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 -3 + 98, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 -3 + 8, shuchusen2, 1.1, 1.1 );
setEffScaleKey( spep_2 -3 + 98, shuchusen2, 1.1, 1.1 );

setEffRotateKey( spep_2 -3 + 8, shuchusen2, 0 );
setEffRotateKey( spep_2 -3 + 98, shuchusen2, 0 );

setEffAlphaKey( spep_2 -3 + 8, shuchusen2, 51 );
setEffAlphaKey( spep_2 -3 + 10, shuchusen2, 102 );
setEffAlphaKey( spep_2 -3 + 12, shuchusen2, 153 );
setEffAlphaKey( spep_2 -3 + 14, shuchusen2, 204 );
setEffAlphaKey( spep_2 -3 + 16, shuchusen2, 255 );
setEffAlphaKey( spep_2 -3 + 98, shuchusen2, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_2 +10 , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_2 +10 , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_2 + 22 , 190006, 72, 0x100, -1, 0, -40, 540);    -- ゴゴゴゴ

setEffShake(spep_2 + 22 ,ctgogo,72,10);

setEffMoveKey(  spep_2 +22 ,  ctgogo,  -40,  540);
setEffMoveKey(  spep_2 +94 ,  ctgogo,  -40,  540);

setEffAlphaKey( spep_2 +22 , ctgogo, 0 );
setEffAlphaKey( spep_2 + 23 , ctgogo, 255 );
setEffAlphaKey( spep_2 + 24 , ctgogo, 255 );
setEffAlphaKey( spep_2 + 86 , ctgogo, 255 );
setEffAlphaKey( spep_2 + 88 , ctgogo, 255 );
setEffAlphaKey( spep_2 + 90 , ctgogo, 191 );
setEffAlphaKey( spep_2 + 92 , ctgogo, 128 );
setEffAlphaKey( spep_2 + 94 , ctgogo, 64 );

setEffRotateKey(  spep_2 +22 ,  ctgogo,  0);
setEffRotateKey(  spep_2 +94 ,  ctgogo,  0);

setEffScaleKey(  spep_2 +22 ,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 +84 ,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 +94 ,  ctgogo, 1.07, 1.07 );

--音
playSe( spep_2 +22, 1018 );  --ごごご

--黒い
entryFadeBg( spep_2, 0, 100, 0, 0, 0, 0, 200 );

-- ** 白フェード ** --
entryFade( spep_2 + 92, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3 = spep_2+100;

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

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

--白フェード
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
-- 斬撃
------------------------------------------------------
-- ** エフェクト等 ** --
zangeki = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_4 + 0, zangeki, 0, 0 , 0 );
setEffMoveKey( spep_4 + 120, zangeki, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, zangeki, 1.0, 1.0 );
setEffScaleKey( spep_4 + 120, zangeki, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, zangeki, 0 );
setEffRotateKey( spep_4 + 120, zangeki, 0 );
setEffAlphaKey( spep_4 + 0, zangeki, 255 );
setEffAlphaKey( spep_4 + 120, zangeki, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_4 + 0,  906, 56 -2, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 0, shuchusen3, 56 -2, 20 );

setEffMoveKey( spep_4 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56 -2, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen3, 1.1, 1.1 );
setEffScaleKey( spep_4 + 56 -2, shuchusen3, 1.1, 1.1 );

setEffRotateKey( spep_4 + 0, shuchusen3, 180 );
setEffRotateKey( spep_4 + 56 -2, shuchusen3, 180 );

setEffAlphaKey( spep_4 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 56 -2, shuchusen3, 255 );

--敵の動き
setDisp( spep_4 -3 + 84, 1, 1 );
setDisp( spep_4 -3 + 118, 1, 0 );

changeAnime( spep_4 -3 + 0, 1, 107 );

setMoveKey( spep_4 -3 + 84, 1, 116.1, -170.4 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 174.9, -142.7 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 132.6, -174 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 233.2, -230 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 243.7, -349.9 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 372.1, -425.9 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 443.1, -595.9 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 573.4, -671.8 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 605.2, -715.4 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 636.8, -767.3 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 668.8, -819.3 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 700.4, -871 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 732.2, -923 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 764, -974.7 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 795.8, -1026.6 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 827.6, -1078.6 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 859.4, -1130.3 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 891.4, -1182.3 , 0 );

setScaleKey( spep_4 -3 + 84, 1, 1.03, 1.03 );
setScaleKey( spep_4 -3 + 86, 1, 1.1, 1.1 );
setScaleKey( spep_4 -3 + 88, 1, 1.15, 1.15 );
setScaleKey( spep_4 -3 + 90, 1, 1.22, 1.22 );
setScaleKey( spep_4 -3 + 92, 1, 1.27, 1.27 );
setScaleKey( spep_4 -3 + 94, 1, 1.34, 1.34 );
setScaleKey( spep_4 -3 + 96, 1, 1.4, 1.4 );
setScaleKey( spep_4 -3 + 98, 1, 1.45, 1.45 );
setScaleKey( spep_4 -3 + 100, 1, 1.52, 1.52 );
setScaleKey( spep_4 -3 + 102, 1, 1.54, 1.54 );
setScaleKey( spep_4 -3 + 104, 1, 1.54, 1.54 );
setScaleKey( spep_4 -3 + 106, 1, 1.56, 1.56 );
setScaleKey( spep_4 -3 + 108, 1, 1.57, 1.57 );
setScaleKey( spep_4 -3 + 110, 1, 1.59, 1.59 );
setScaleKey( spep_4 -3 + 112, 1, 1.61, 1.61 );
setScaleKey( spep_4 -3 + 114, 1, 1.61, 1.61 );
setScaleKey( spep_4 -3 + 116, 1, 1.62, 1.62 );
setScaleKey( spep_4 -3 + 118, 1, 1.64, 1.64 );

setRotateKey( spep_4 -3 + 84, 1, -0.2 );
setRotateKey( spep_4 -3 + 118, 1, -0.2 );

--黒い
entryFadeBg( spep_4, 0, 120, 0, 0, 0, 0, 140 );

-- ** 白フェード ** --
entryFade( spep_4 + 112, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--音
SE3 = playSe( spep_4 +0, 8 );  --ダッシュ
stopSe( spep_4 +56, SE3, 0 );

SE4 = playSe( spep_4 +12, 44 );  --ダッシュ
stopSe( spep_4 +56, SE4, 0 );

playSe( spep_4 +56, 1032 );  --剣攻撃
setSeVolume( spep_4 +56, 1032, 65 );

playSe( spep_4 +56, 1061 );  --剣攻撃
setSeVolume( spep_4 +56, 1061, 85 );

playSe( spep_4 +70, 1141 );  --剣攻撃
setSeVolume( spep_4 +70, 1141, 50 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 120;

------------------------------------------------------
-- 敵吹っ飛びシーン(100F)
------------------------------------------------------

--ひび割れエフェクト
hibiware = entryEffect( spep_5+1 ,  1600,  0x100, -1, 0, 60, -92 );

setEffMoveKey( spep_5+1 , hibiware, 60, -92 , 0 );
setEffMoveKey( spep_5 + 100, hibiware, 60, -92 , 0 );

setEffScaleKey( spep_5+1 , hibiware, 1, 1 );
setEffScaleKey( spep_5 + 100, hibiware, 1, 1 );

setEffRotateKey( spep_5+1 , hibiware, 0 );
setEffRotateKey( spep_5 + 100, hibiware, 0 );

setEffAlphaKey( spep_5+1 , hibiware, 255 );
setEffAlphaKey( spep_5 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen_ga = entryEffectLife( spep_5 + 12,  906, 34, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 12, shuchusen_ga, 32, 25 );

setEffMoveKey( spep_5 + 12, shuchusen_ga, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen_ga, 0, 0 , 0 );

setEffScaleKey( spep_5 + 12, shuchusen_ga, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusen_ga, 1, 1 );

setEffRotateKey( spep_5 + 12, shuchusen_ga, 0 );
setEffRotateKey( spep_5 + 46, shuchusen_ga, 0 );

setEffAlphaKey( spep_5 + 12, shuchusen_ga, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen_ga, 255 );
setEffAlphaKey( spep_5 + 30, shuchusen_ga, 252 );
setEffAlphaKey( spep_5 + 32, shuchusen_ga, 242 );
setEffAlphaKey( spep_5 + 34, shuchusen_ga, 227 );
setEffAlphaKey( spep_5 + 36, shuchusen_ga, 205 );
setEffAlphaKey( spep_5 + 38, shuchusen_ga, 176 );
setEffAlphaKey( spep_5 + 40, shuchusen_ga, 142 );
setEffAlphaKey( spep_5 + 42, shuchusen_ga, 101 );
setEffAlphaKey( spep_5 + 44, shuchusen_ga, 54 );
setEffAlphaKey( spep_5 + 46, shuchusen_ga, 0 );

--黒集中線
bkshuchusen_ga= entryEffectLife( spep_5 + 12,  1657, 98, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 12, bkshuchusen_ga, 0, 0 , 0 );
setEffMoveKey( spep_5 + 110, bkshuchusen_ga, 0, 0 , 0 );

setEffScaleKey( spep_5 + 12, bkshuchusen_ga, 1, 1 );
setEffScaleKey( spep_5 + 110, bkshuchusen_ga, 1, 1 );

setEffRotateKey( spep_5 + 12, bkshuchusen_ga, 0 );
setEffRotateKey( spep_5 + 110, bkshuchusen_ga, 0 );

setEffAlphaKey( spep_5 + 12, bkshuchusen_ga, 255 );
setEffAlphaKey( spep_5 + 110, bkshuchusen_ga, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 0,  10005, 110, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 0, ctga, 28, 20 );

setEffMoveKey( spep_5 + 0, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 110, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 0, ctga, 3.2, 3.2 );
setEffScaleKey( spep_5 + 110, ctga, 3.2, 3.2 );

setEffRotateKey( spep_5 + 0, ctga, -10.9 );
setEffRotateKey( spep_5 + 12, ctga, -10.9 );
setEffRotateKey( spep_5 + 16, ctga, -14.9 );
setEffRotateKey( spep_5 + 17, ctga, -14.9 );
setEffRotateKey( spep_5 + 18, ctga, -10.9 );
setEffRotateKey( spep_5 + 19, ctga, -10.9 );
setEffRotateKey( spep_5 + 20, ctga, -14.9 );
setEffRotateKey( spep_5 + 21, ctga, -14.9 );
setEffRotateKey( spep_5 + 22, ctga, -10.9 );
setEffRotateKey( spep_5 + 23, ctga, -10.9 );
setEffRotateKey( spep_5 + 24, ctga, -14.9 );
setEffRotateKey( spep_5 + 25, ctga, -14.9 );
setEffRotateKey( spep_5 + 26, ctga, -10.9 );
setEffRotateKey( spep_5 + 27, ctga, -10.9 );
setEffRotateKey( spep_5 + 28, ctga, -14.9 );
setEffRotateKey( spep_5 + 110, ctga, -14.9 );

setEffAlphaKey( spep_5 + 0, ctga, 0 );
setEffAlphaKey( spep_5 + 10, ctga, 0 );
setEffAlphaKey( spep_5 + 11, ctga, 0 );
setEffAlphaKey( spep_5 + 12, ctga, 255 );
setEffAlphaKey( spep_5 + 110, ctga, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_5 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_5 + 110, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 10, 1, 1.1, 1.1 );
setScaleKey( spep_5 + 12, 1, 1.2, 1.2);
setScaleKey( spep_5 + 14, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 16, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 18, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 20, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 22, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 24, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 26, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 28, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 110, 1, 1.2, 1.2 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 2, 1, 105 );
setRotateKey( spep_5 + 4, 1, 240 );
setRotateKey( spep_5 + 6, 1, 405 );
setRotateKey( spep_5 + 8, 1, 600 );
setRotateKey( spep_5 + 10, 1, 825 );
setRotateKey( spep_5 + 12, 1, 1050 );
setRotateKey( spep_5 + 110, 1, 1050 );

-- ** 音 ** --
--playSe( spep_5 + 0, SE_10 );  --爆発音
playSe( spep_5 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 10 );
--entryFade( spep_5 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_5 + 100 );

else 
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 気溜め　
------------------------------------------------------
--はじめの準備
spep_0 = 0;

-- ** エフェクト等 ** --
tame_a = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_0 + 0, tame_a, 0, 0 , 0 );
setEffMoveKey( spep_0 + 80, tame_a, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame_a, 1.0, 1.0 );
setEffScaleKey( spep_0 + 80, tame_a, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_a, 0 );
setEffRotateKey( spep_0 + 80, tame_a, 0 );
setEffAlphaKey( spep_0 + 0, tame_a, 255 );
setEffAlphaKey( spep_0 + 80, tame_a, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 78, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 + 0, shuchusen1, 78, 20 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 78, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.1, 1.1 );
setEffScaleKey( spep_0 + 78, shuchusen1, 1.1, 1.1 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 78, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 78, shuchusen1, 255 );

--黒い
entryFadeBg( spep_0, 0, 80, 0, 0, 0, 0, 200 );

--音
playSe( spep_0 +0, 1151 ); --気溜め	

SE0 = playSe( spep_0 +2, 1186 ); --気溜め	
setSeVolume( spep_0 +2, 1186, 30);	
setSeVolume( spep_0 +12, 1186, 50);	
setSeVolume( spep_0 +22, 1186, 70);	
setSeVolume( spep_0 +82, 1186, 40);	
setSeVolume( spep_0 +90, 1186, 30);	
setSeVolume( spep_0 +96, 1186, 0);	
stopSe( spep_0 +96, SE0, 0 );	

playSe( spep_0 +6, 1020 ); --気溜め	
setSeVolume( spep_0 +6, 1020, 75);	

SE1 = playSe( spep_0 +10, 1175 ); --気溜め	
setSeVolume( spep_0 +10, 1175, 30);	
setSeVolume( spep_0 +88, 1186, 20);	
setSeVolume( spep_0 +102, 1186, 0);	
stopSe( spep_0 +102, SE1, 0 );	

playSe( spep_0 +24, 1020 ); --気溜め	
setSeVolume( spep_0 +24, 1020, 75);	

SE2 = playSe( spep_0 +34, 1003 ); --腕を振り下ろす

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
    stopSe( SP_dodge - 12, SE2, 0 );
    
    pauseAll( SP_dodge, 67 );


    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,-1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );   -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100, -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    
    
    
    
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    setMoveKey( SP_dodge + 10,   0,-2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 白フェード ** --
entryFade( spep_0 + 72, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--音
playSe( spep_0 +46, 1020 ); --気溜め	
setSeVolume( spep_0 +46, 1020, 75);	

playSe( spep_0 +68, 1020 ); --気溜め	
setSeVolume( spep_0 +68, 1020, 75);

--次の準備
spep_1 = spep_0+80;

------------------------------------------------------
-- 気弾連射
------------------------------------------------------
-- ** エフェクト等 ** --
kidan_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_1 + 0, kidan_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 100, kidan_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kidan_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 100, kidan_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kidan_f, 0 );
setEffRotateKey( spep_1 + 100, kidan_f, 0 );
setEffAlphaKey( spep_1 + 0, kidan_f, 255 );
setEffAlphaKey( spep_1 + 100, kidan_f, 255 );

-- ** エフェクト等 ** --
kidan_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_1 + 0, kidan_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 100, kidan_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kidan_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 100, kidan_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kidan_b, 0 );
setEffRotateKey( spep_1 + 100, kidan_b, 0 );
setEffAlphaKey( spep_1 + 0, kidan_b, 255 );
setEffAlphaKey( spep_1 + 100, kidan_b, 255 );

--敵の動き
setDisp( spep_1  + 0, 1, 1 );
setDisp( spep_1 -3 + 64, 1, 0 );

changeAnime( spep_1  + 0, 1, 100 );
changeAnime( spep_1 -3 + 36, 1, 108 );

setMoveKey( spep_1  + 0, 1, 188.4, 216.4 , 0 );
--setMoveKey( spep_1 -3 + 2, 1, 188.4, 216.4 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 188.5, 216.5 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 188.7, 216.7 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 188.8, 216.8 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 189.1, 217.1 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 189.2, 217.2 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 189.4, 217.4 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 189.5, 217.5 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 189.6, 217.6 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 189.8, 217.8 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 189.9, 217.9 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 190.1, 218.1 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 190.2, 218.2 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 190.3, 218.3 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 190.6, 218.6 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 190.8, 218.8 , 0 );
setMoveKey( spep_1 -3 + 35, 1, 190.9, 218.9 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 191, 219 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 191.2, 219.2 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 188.2, 216.2 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 189.8, 217.8 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 191.2, 219.2 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 188.2, 214.8 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 191.2, 219.2 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 188.2, 216.2 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 191.2, 219.2 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 188.2, 214.8 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 189.8, 216.9 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 191.2, 219.2 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 188.2, 216.2 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 191.2, 219.2 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 188.2, 214.8 , 0 );

setScaleKey( spep_1  + 0, 1, 0.79, 0.79 );
setScaleKey( spep_1 -3 + 64, 1, 0.79, 0.79 );

setRotateKey( spep_1  + 0, 1, -0.2 );
setRotateKey( spep_1 -3 + 64, 1, -0.2 );

--文字エントリー
ctzuo = entryEffectLife( spep_1 -3 + 4,  10012, 32, 0x100, -1, 0, 76, 399.9 );--ズオッ

setEffMoveKey( spep_1 -3 + 4, ctzuo, 76, 399.9 , 0 );
setEffMoveKey( spep_1 -3 + 6, ctzuo, 102.2, 443.7 , 0 );
setEffMoveKey( spep_1 -3 + 8, ctzuo, 116, 499.9 , 0 );
setEffMoveKey( spep_1 -3 + 10, ctzuo, 126.4, 489.4 , 0 );
setEffMoveKey( spep_1 -3 + 12, ctzuo, 115.9, 499.9 , 0 );
setEffMoveKey( spep_1 -3 + 14, ctzuo, 126.6, 489.3 , 0 );
setEffMoveKey( spep_1 -3 + 16, ctzuo, 116, 499.8 , 0 );
setEffMoveKey( spep_1 -3 + 18, ctzuo, 126.7, 489.1 , 0 );
setEffMoveKey( spep_1 -3 + 20, ctzuo, 116, 499.9 , 0 );
setEffMoveKey( spep_1 -3 + 22, ctzuo, 126.8, 489 , 0 );
setEffMoveKey( spep_1 -3 + 24, ctzuo, 115.9, 499.9 , 0 );
setEffMoveKey( spep_1 -3 + 26, ctzuo, 127, 488.9 , 0 );
setEffMoveKey( spep_1 -3 + 28, ctzuo, 124, 499.9 , 0 );
setEffMoveKey( spep_1 -3 + 30, ctzuo, 154.6, 477.3 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctzuo, 139.9, 499.9 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctzuo, 182.2, 465.7 , 0 );
setEffMoveKey( spep_1 -3 + 36, ctzuo, 196, 459.9 , 0 );

a=1.3;
b=3;

setEffScaleKey( spep_1 -3 + 4, ctzuo, 0.1 , 0.1  );
--setEffScaleKey( spep_1 -3 + 6, ctzuo, 0.31 +a, 0.31 +a );
setEffScaleKey( spep_1 -3 + 8, ctzuo, 0.52 +a, 0.52 +a );
setEffScaleKey( spep_1 -3 + 10, ctzuo, 0.52 +a, 0.52 +a );
setEffScaleKey( spep_1 -3 + 12, ctzuo, 0.53 +a, 0.53 +a );
setEffScaleKey( spep_1 -3 + 16, ctzuo, 0.53 +a, 0.53 +a );
setEffScaleKey( spep_1 -3 + 18, ctzuo, 0.54 +a, 0.54 +a );
setEffScaleKey( spep_1 -3 + 22, ctzuo, 0.54 +a, 0.54 +a );
setEffScaleKey( spep_1 -3 + 24, ctzuo, 0.55 +a, 0.55 +a );
setEffScaleKey( spep_1 -3 + 26, ctzuo, 0.55 +a, 0.55 +a );
setEffScaleKey( spep_1 -3 + 28, ctzuo, 0.84 +a, 0.84 +a );
--setEffScaleKey( spep_1 -3 + 30, ctzuo, 1.13 +b, 1.13 +a );
--setEffScaleKey( spep_1 -3 + 32, ctzuo, 1.42 +b, 1.42 +b );
--setEffScaleKey( spep_1 -3 + 34, ctzuo, 1.71 +b, 1.71 +b);
setEffScaleKey( spep_1 -3 + 36, ctzuo, 2 +b, 2 +b );

setEffRotateKey( spep_1 -3 + 4, ctzuo, 30 );
setEffRotateKey( spep_1 -3 + 36, ctzuo, 30 );

setEffAlphaKey( spep_1 -3 + 4, ctzuo, 255 );
setEffAlphaKey( spep_1 -3 + 26, ctzuo, 255 );
setEffAlphaKey( spep_1 -3 + 28, ctzuo, 204 );
setEffAlphaKey( spep_1 -3 + 30, ctzuo, 153 );
setEffAlphaKey( spep_1 -3 + 32, ctzuo, 102 );
setEffAlphaKey( spep_1 -3 + 34, ctzuo, 51 );
setEffAlphaKey( spep_1 -3 + 36, ctzuo, 0 );

-- ** 白フェード ** --
entryFade( spep_1 + 92, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--黒い
entryFadeBg( spep_1, 0, 100, 0, 0, 0, 0, 200 );

--音
SE5 = playSe( spep_1 +0, 1072 ); --気弾３連	
setSeVolume( spep_1 +0, 1072, 0);	
setSeVolume( spep_1 +22, 1072, 50);	
setSeVolume( spep_1 +28, 1072, 70);	
setSeVolume( spep_1 +38, 1072, 50);	
setSeVolume( spep_1 +54, 1072, 0);	
stopSe( spep_1 +54, SE5, 0 );	

SE6 = playSe( spep_1 +22, 1116 ); --気弾３連	
setSeVolume( spep_1 +22, 1116, 60);	
setSeVolume( spep_1 +58, 1116, 50);	
setSeVolume( spep_1 +70, 1116, 30);	
setSeVolume( spep_1 +80, 1116, 0);	
stopSe( spep_1 +80, SE6, 0 );	

playSe( spep_1 +34, 1002 ); --気弾３連	
playSe( spep_1 +50, 1002 ); --気弾３連	
playSe( spep_1 +64, 1002 ); --気弾３連	

--次の準備
spep_2 = spep_1+100;

------------------------------------------------------
-- 剣構え
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_04x, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_2 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 100, tame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_2 + 100, tame, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 100, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 100, tame, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_2 -3 + 8,  906, 90, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2 -3 + 8, shuchusen2, 90, 20 );

setEffMoveKey( spep_2 -3 + 8, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 -3 + 98, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 -3 + 8, shuchusen2, 1.1, 1.1 );
setEffScaleKey( spep_2 -3 + 98, shuchusen2, 1.1, 1.1 );

setEffRotateKey( spep_2 -3 + 8, shuchusen2, 0 );
setEffRotateKey( spep_2 -3 + 98, shuchusen2, 0 );

setEffAlphaKey( spep_2 -3 + 8, shuchusen2, 51 );
setEffAlphaKey( spep_2 -3 + 10, shuchusen2, 102 );
setEffAlphaKey( spep_2 -3 + 12, shuchusen2, 153 );
setEffAlphaKey( spep_2 -3 + 14, shuchusen2, 204 );
setEffAlphaKey( spep_2 -3 + 16, shuchusen2, 255 );
setEffAlphaKey( spep_2 -3 + 98, shuchusen2, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_2 +10 , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_2 +10 , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_2 + 22 , 190006, 72, 0x100, -1, 0, -40, 540);    -- ゴゴゴゴ

setEffShake(spep_2 + 22 ,ctgogo,72,10);

setEffMoveKey(  spep_2 +22 ,  ctgogo,  -40,  540);
setEffMoveKey(  spep_2 +94 ,  ctgogo,  -40,  540);

setEffAlphaKey( spep_2 +22 , ctgogo, 0 );
setEffAlphaKey( spep_2 + 23 , ctgogo, 255 );
setEffAlphaKey( spep_2 + 24 , ctgogo, 255 );
setEffAlphaKey( spep_2 + 86 , ctgogo, 255 );
setEffAlphaKey( spep_2 + 88 , ctgogo, 255 );
setEffAlphaKey( spep_2 + 90 , ctgogo, 191 );
setEffAlphaKey( spep_2 + 92 , ctgogo, 128 );
setEffAlphaKey( spep_2 + 94 , ctgogo, 64 );

setEffRotateKey(  spep_2 +22 ,  ctgogo,  0);
setEffRotateKey(  spep_2 +94 ,  ctgogo,  0);

setEffScaleKey(  spep_2 +22 ,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 +84 ,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 +94 ,  ctgogo, -1.07, 1.07 );

--音
playSe( spep_2 +22, 1018 );  --ごごご

--黒い
entryFadeBg( spep_2, 0, 100, 0, 0, 0, 0, 200 );

-- ** 白フェード ** --
entryFade( spep_2 + 92, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3 = spep_2+100;

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

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

--白フェード
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
-- 斬撃
------------------------------------------------------
-- ** エフェクト等 ** --
zangeki = entryEffect( spep_4 + 0, SP_05x, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_4 + 0, zangeki, 0, 0 , 0 );
setEffMoveKey( spep_4 + 120, zangeki, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, zangeki, -1.0, 1.0 );
setEffScaleKey( spep_4 + 120, zangeki, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, zangeki, 0 );
setEffRotateKey( spep_4 + 120, zangeki, 0 );
setEffAlphaKey( spep_4 + 0, zangeki, 255 );
setEffAlphaKey( spep_4 + 120, zangeki, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_4 + 0,  906, 56 -2, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 0, shuchusen3, 56 -2, 20 );

setEffMoveKey( spep_4 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56 -2, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen3, 1.1, 1.1 );
setEffScaleKey( spep_4 + 56 -2, shuchusen3, 1.1, 1.1 );

setEffRotateKey( spep_4 + 0, shuchusen3, 180 );
setEffRotateKey( spep_4 + 56 -2, shuchusen3, 180 );

setEffAlphaKey( spep_4 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 56 -2, shuchusen3, 255 );

--敵の動き
setDisp( spep_4 -3 + 84, 1, 1 );
setDisp( spep_4 -3 + 118, 1, 0 );

changeAnime( spep_4 -3 + 0, 1, 7 );

setMoveKey( spep_4 -3 + 84, 1, -116.1, -170.4 , 0 );
setMoveKey( spep_4 -3 + 86, 1, -174.9, -142.7 , 0 );
setMoveKey( spep_4 -3 + 88, 1, -132.6, -174 , 0 );
setMoveKey( spep_4 -3 + 90, 1, -233.2, -230 , 0 );
setMoveKey( spep_4 -3 + 92, 1, -243.7, -349.9 , 0 );
setMoveKey( spep_4 -3 + 94, 1, -372.1, -425.9 , 0 );
setMoveKey( spep_4 -3 + 96, 1, -443.1, -595.9 , 0 );
setMoveKey( spep_4 -3 + 98, 1, -573.4, -671.8 , 0 );
setMoveKey( spep_4 -3 + 100, 1, -605.2, -715.4 , 0 );
setMoveKey( spep_4 -3 + 102, 1, -636.8, -767.3 , 0 );
setMoveKey( spep_4 -3 + 104, 1, -668.8, -819.3 , 0 );
setMoveKey( spep_4 -3 + 106, 1, -700.4, -871 , 0 );
setMoveKey( spep_4 -3 + 108, 1, -732.2, -923 , 0 );
setMoveKey( spep_4 -3 + 110, 1, -764, -974.7 , 0 );
setMoveKey( spep_4 -3 + 112, 1, -795.8, -1026.6 , 0 );
setMoveKey( spep_4 -3 + 114, 1, -827.6, -1078.6 , 0 );
setMoveKey( spep_4 -3 + 116, 1, -859.4, -1130.3 , 0 );
setMoveKey( spep_4 -3 + 118, 1, -891.4, -1182.3 , 0 );

setScaleKey( spep_4 -3 + 84, 1, 1.03, 1.03 );
setScaleKey( spep_4 -3 + 86, 1, 1.1, 1.1 );
setScaleKey( spep_4 -3 + 88, 1, 1.15, 1.15 );
setScaleKey( spep_4 -3 + 90, 1, 1.22, 1.22 );
setScaleKey( spep_4 -3 + 92, 1, 1.27, 1.27 );
setScaleKey( spep_4 -3 + 94, 1, 1.34, 1.34 );
setScaleKey( spep_4 -3 + 96, 1, 1.4, 1.4 );
setScaleKey( spep_4 -3 + 98, 1, 1.45, 1.45 );
setScaleKey( spep_4 -3 + 100, 1, 1.52, 1.52 );
setScaleKey( spep_4 -3 + 102, 1, 1.54, 1.54 );
setScaleKey( spep_4 -3 + 104, 1, 1.54, 1.54 );
setScaleKey( spep_4 -3 + 106, 1, 1.56, 1.56 );
setScaleKey( spep_4 -3 + 108, 1, 1.57, 1.57 );
setScaleKey( spep_4 -3 + 110, 1, 1.59, 1.59 );
setScaleKey( spep_4 -3 + 112, 1, 1.61, 1.61 );
setScaleKey( spep_4 -3 + 114, 1, 1.61, 1.61 );
setScaleKey( spep_4 -3 + 116, 1, 1.62, 1.62 );
setScaleKey( spep_4 -3 + 118, 1, 1.64, 1.64 );

setRotateKey( spep_4 -3 + 84, 1, -0.2 );
setRotateKey( spep_4 -3 + 118, 1, -0.2 );

--黒い
entryFadeBg( spep_4, 0, 120, 0, 0, 0, 0, 140 );

-- ** 白フェード ** --
entryFade( spep_4 + 112, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--音
SE3 = playSe( spep_4 +0, 8 ); --ダッシュ	
stopSe( spep_4 +56, SE3, 0 );	

SE4 = playSe( spep_4 +12, 44 ); --ダッシュ	
stopSe( spep_4 +56, SE4, 0 );	

playSe( spep_4 +56, 1032 ); --剣攻撃	
setSeVolume( spep_4 +56, 1032, 65 );	

playSe( spep_4 +56, 1061 ); --剣攻撃	
setSeVolume( spep_4 +56, 1061, 85 );	

playSe( spep_4 +70, 1141 ); --剣攻撃	
setSeVolume( spep_4 +70, 1141, 50 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 120;

------------------------------------------------------
-- 敵吹っ飛びシーン(100F)
------------------------------------------------------

--ひび割れエフェクト
hibiware = entryEffect( spep_5+1 ,  1600,  0x100, -1, 0, 60, -92 );

setEffMoveKey( spep_5+1 , hibiware, 60, -92 , 0 );
setEffMoveKey( spep_5 + 100, hibiware, 60, -92 , 0 );

setEffScaleKey( spep_5+1 , hibiware, 1, 1 );
setEffScaleKey( spep_5 + 100, hibiware, 1, 1 );

setEffRotateKey( spep_5+1 , hibiware, 0 );
setEffRotateKey( spep_5 + 100, hibiware, 0 );

setEffAlphaKey( spep_5+1 , hibiware, 255 );
setEffAlphaKey( spep_5 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen_ga = entryEffectLife( spep_5 + 12,  906, 34, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 12, shuchusen_ga, 32, 25 );

setEffMoveKey( spep_5 + 12, shuchusen_ga, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen_ga, 0, 0 , 0 );

setEffScaleKey( spep_5 + 12, shuchusen_ga, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusen_ga, 1, 1 );

setEffRotateKey( spep_5 + 12, shuchusen_ga, 0 );
setEffRotateKey( spep_5 + 46, shuchusen_ga, 0 );

setEffAlphaKey( spep_5 + 12, shuchusen_ga, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen_ga, 255 );
setEffAlphaKey( spep_5 + 30, shuchusen_ga, 252 );
setEffAlphaKey( spep_5 + 32, shuchusen_ga, 242 );
setEffAlphaKey( spep_5 + 34, shuchusen_ga, 227 );
setEffAlphaKey( spep_5 + 36, shuchusen_ga, 205 );
setEffAlphaKey( spep_5 + 38, shuchusen_ga, 176 );
setEffAlphaKey( spep_5 + 40, shuchusen_ga, 142 );
setEffAlphaKey( spep_5 + 42, shuchusen_ga, 101 );
setEffAlphaKey( spep_5 + 44, shuchusen_ga, 54 );
setEffAlphaKey( spep_5 + 46, shuchusen_ga, 0 );

--黒集中線
bkshuchusen_ga= entryEffectLife( spep_5 + 12,  1657, 88, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 12, bkshuchusen_ga, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, bkshuchusen_ga, 0, 0 , 0 );

setEffScaleKey( spep_5 + 12, bkshuchusen_ga, 1, 1 );
setEffScaleKey( spep_5 + 100, bkshuchusen_ga, 1, 1 );

setEffRotateKey( spep_5 + 12, bkshuchusen_ga, 0 );
setEffRotateKey( spep_5 + 100, bkshuchusen_ga, 0 );

setEffAlphaKey( spep_5 + 12, bkshuchusen_ga, 255 );
setEffAlphaKey( spep_5 + 100, bkshuchusen_ga, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 0,  10005, 100, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 0, ctga, 28, 20 );

setEffMoveKey( spep_5 + 0, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 0, ctga, 3.2, 3.2 );
setEffScaleKey( spep_5 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_5 + 0, ctga, -10.9 );
setEffRotateKey( spep_5 + 12, ctga, -10.9 );
setEffRotateKey( spep_5 + 16, ctga, -14.9 );
setEffRotateKey( spep_5 + 17, ctga, -14.9 );
setEffRotateKey( spep_5 + 18, ctga, -10.9 );
setEffRotateKey( spep_5 + 19, ctga, -10.9 );
setEffRotateKey( spep_5 + 20, ctga, -14.9 );
setEffRotateKey( spep_5 + 21, ctga, -14.9 );
setEffRotateKey( spep_5 + 22, ctga, -10.9 );
setEffRotateKey( spep_5 + 23, ctga, -10.9 );
setEffRotateKey( spep_5 + 24, ctga, -14.9 );
setEffRotateKey( spep_5 + 25, ctga, -14.9 );
setEffRotateKey( spep_5 + 26, ctga, -10.9 );
setEffRotateKey( spep_5 + 27, ctga, -10.9 );
setEffRotateKey( spep_5 + 28, ctga, -14.9 );
setEffRotateKey( spep_5 + 100, ctga, -14.9 );

setEffAlphaKey( spep_5 + 0, ctga, 0 );
setEffAlphaKey( spep_5 + 10, ctga, 0 );
setEffAlphaKey( spep_5 + 11, ctga, 0 );
setEffAlphaKey( spep_5 + 12, ctga, 255 );
setEffAlphaKey( spep_5 + 100, ctga, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_5 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_5 + 110, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 10, 1, 1.1, 1.1 );
setScaleKey( spep_5 + 12, 1, 1.2, 1.2);
setScaleKey( spep_5 + 14, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 16, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 18, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 20, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 22, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 24, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 26, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 28, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 110, 1, 1.2, 1.2 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 2, 1, 105 );
setRotateKey( spep_5 + 4, 1, 240 );
setRotateKey( spep_5 + 6, 1, 405 );
setRotateKey( spep_5 + 8, 1, 600 );
setRotateKey( spep_5 + 10, 1, 825 );
setRotateKey( spep_5 + 12, 1, 1050 );
setRotateKey( spep_5 + 110, 1, 1050 );

-- ** 音 ** --
--playSe( spep_5 + 0, SE_10 );  --爆発音
playSe( spep_5 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 10 );
--entryFade( spep_5 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_5 + 100 );


end