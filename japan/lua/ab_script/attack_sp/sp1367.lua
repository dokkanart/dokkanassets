--1017050:ケール_レジストブラスト
--sp_effect_b4_00125

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
SE_12 = 9;

--味方側
SP_01=	154525	;--	アイドリング
SP_02=	154527	;--	気溜め
SP_03=	154529	;--	突進
SP_04=	154531	;--	敵に迫る　前面
SP_05=	154533	;--	敵に迫る　背景
SP_06=	154534	;--	構え～殴る　前面
SP_07=	154536	;--	構え～殴る　背景
SP_08=	154537	;--	敵吹き飛び　前面
SP_09=	154539	;--	敵吹き飛び　背景
SP_10=	154540	;--	構え
SP_11=	154542	;--	放つ～敵に迫る　前面
SP_12=	154544	;--	放つ～敵に迫る　背景
SP_13=	154545	;--	爆発　前面
SP_14=	154546	;--	爆発　背景

--敵側
SP_01x=	154526	;--	アイドリング	(敵)
SP_02x=	154528	;--	気溜め	(敵)
SP_03x=	154530	;--	突進	(敵)
SP_04x=	154532	;--	敵に迫る　前面	(敵)
SP_05x=	154533	;--	敵に迫る　背景	
SP_06x=	154535	;--	構え～殴る　前面	(敵)
SP_07x=	154536	;--	構え～殴る　背景	
SP_08x=	154538	;--	敵吹き飛び　前面	(敵)
SP_09x=	154539	;--	敵吹き飛び　背景	
SP_10x=	154541	;--	構え	(敵)
SP_11x=	154543	;--	放つ～敵に迫る　前面	(敵)
SP_12x=	154544	;--	放つ～敵に迫る　背景	
SP_13x=	154545	;--	爆発　前面	
SP_14x=	154546	;--	爆発　背景	

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
-- アイドリング
------------------------------------------------------
--最初の準備
spep_0 = 0;

-- ** エフェクト等 ** --
idling = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); --構え(ef_001)
setEffMoveKey( spep_0 + 0, idling, 0, 0, 0 );
setEffMoveKey( spep_0 + 24, idling, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, idling, 1.0, 1.0 );
setEffScaleKey( spep_0 + 24, idling, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, idling, 0 );
setEffRotateKey( spep_0 + 24, idling, 0 );
setEffAlphaKey( spep_0 + 0, idling, 255 );
setEffAlphaKey( spep_0 + 24, idling, 255 );
setEffAlphaKey( spep_0 + 25, idling, 0 );
setEffAlphaKey( spep_0 + 26, idling, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_1 = spep_0 +24;

------------------------------------------------------
-- 気溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); --構え(ef_001)
setEffMoveKey( spep_1 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_1 + 48, tame, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_1 + 48, tame, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 48, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 48, tame, 255 );

--文字エントリー
ctzuzun = entryEffectLife( spep_1 + 0,  10013, 44, 0x100, -1, 0, 22, 191.9 );--ズズズンッ

setEffShake( spep_1 + 0, ctzuzun, 44, 20 );

setEffMoveKey( spep_1 + 0, ctzuzun, 22, 191.9 , 0 );
--setEffMoveKey( spep_1-3 + 2, ctzuzun, 29.8, 246.6 , 0 );
setEffMoveKey( spep_1-3 + 4, ctzuzun, 49.5, 310.9 , 0 );
setEffMoveKey( spep_1-3 + 6, ctzuzun, 46.2, 332.2 , 0 );
setEffMoveKey( spep_1-3 + 8, ctzuzun, 51.1, 326.2 , 0 );
setEffMoveKey( spep_1-3 + 10, ctzuzun, 36.4, 301.1 , 0 );
setEffMoveKey( spep_1-3 + 12, ctzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_1-3 + 14, ctzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_1-3 + 16, ctzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_1-3 + 18, ctzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_1-3 + 20, ctzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_1-3 + 22, ctzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_1-3 + 24, ctzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_1-3 + 26, ctzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_1-3 + 28, ctzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_1-3 + 30, ctzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_1-3 + 32, ctzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_1-3 + 34, ctzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_1-3 + 36, ctzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_1-3 + 38, ctzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_1-3 + 40, ctzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_1-3 + 42, ctzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_1 + 44, ctzuzun, 46, 309.9 , 0 );

setEffScaleKey( spep_1 + 0, ctzuzun, 1.18, 1.18 );
--setEffScaleKey( spep_1-3 + 2, ctzuzun, 0.62, 0.62 );
setEffScaleKey( spep_1-3 + 4, ctzuzun, 1.85, 1.85 );
setEffScaleKey( spep_1-3 + 6, ctzuzun, 2.8, 2.8 );
setEffScaleKey( spep_1 + 44, ctzuzun, 2.8, 2.8 );

setEffRotateKey( spep_1 + 0, ctzuzun, 0 );
setEffRotateKey( spep_1 + 44, ctzuzun, 0 );

setEffAlphaKey( spep_1 + 0, ctzuzun, 255 );
setEffAlphaKey( spep_1 + 44, ctzuzun, 255 );

--SE
playSe( spep_1 + 4, 1035 );

-- ** 白フェード ** --
entryFade( spep_1 + 40, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );--white fade

--次の準備
spep_2 = spep_1 +48;

------------------------------------------------------
-- 突進
------------------------------------------------------
-- ** エフェクト等 ** --
tossin = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); --構え(ef_001)
setEffMoveKey( spep_2 + 0, tossin, 0, 0, 0 );
setEffMoveKey( spep_2 + 50, tossin, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tossin, 1.0, 1.0 );
setEffScaleKey( spep_2 + 50, tossin, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tossin, 0 );
setEffRotateKey( spep_2 + 50, tossin, 0 );
setEffAlphaKey( spep_2 + 0, tossin, 255 );
setEffAlphaKey( spep_2 + 50, tossin, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_2 + 0,  906, 48, 0x100, -1, 0, 0, 0 );

setEffShake( spep_2 + 0, shuchusen1, 48, 20 );

setEffMoveKey( spep_2 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 48, shuchusen1, 0, 0 , 0 );

setEffRotateKey( spep_2 + 0, shuchusen1, 180 );
setEffRotateKey( spep_2 + 48, shuchusen1, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 84, shuchusen1, 255 );

--SE
SE0=playSe( spep_2 + 8, 9 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge -12, SE0, 0 );

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

-- ** 白フェード ** --
entryFade( spep_2 + 42, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );--white fade

--次の準備
spep_3 = spep_2 +50;

------------------------------------------------------
-- 敵に迫る
------------------------------------------------------
-- ** エフェクト等 ** --
semaru_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); --構え(ef_001)
setEffMoveKey( spep_3 + 0, semaru_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 60, semaru_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, semaru_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 60, semaru_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, semaru_f, 0 );
setEffRotateKey( spep_3 + 60, semaru_f, 0 );
setEffAlphaKey( spep_3 + 0, semaru_f, 255 );
setEffAlphaKey( spep_3 + 52, semaru_f, 255 );
setEffAlphaKey( spep_3 + 53, semaru_f, 255 );
setEffAlphaKey( spep_3 + 54, semaru_f, 0 );

--流線
ryusen1 = entryEffectLife( spep_3 + 2,  914, 54, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 2, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_3 + 2, ryusen1, 4.3, 1.13 );
setEffScaleKey( spep_3 + 56, ryusen1, 4.3, 1.13 );

setEffRotateKey( spep_3 + 2, ryusen1, 0 );
setEffRotateKey( spep_3 + 56, ryusen1, 0 );

setEffAlphaKey( spep_3 + 2, ryusen1, 64 );
setEffAlphaKey( spep_3 + 4, ryusen1, 128 );
setEffAlphaKey( spep_3 + 6, ryusen1, 191 );
setEffAlphaKey( spep_3 + 8, ryusen1, 255 );
setEffAlphaKey( spep_3 + 56, ryusen1, 255 );

-- ** エフェクト等 ** --
semaru_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 ); --構え(ef_001)
setEffMoveKey( spep_3 + 0, semaru_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 60, semaru_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, semaru_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 60, semaru_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, semaru_b, 0 );
setEffRotateKey( spep_3 + 60, semaru_b, 0 );
setEffAlphaKey( spep_3 + 0, semaru_b, 255 );
setEffAlphaKey( spep_3 + 52, semaru_b, 255 );
setEffAlphaKey( spep_3 + 53, semaru_b, 255 );
setEffAlphaKey( spep_3 + 54, semaru_b, 0 );


--敵機の動き
setDisp( spep_3  + 0, 1, 1 );

changeAnime( spep_3  + 0, 1, 101 );
changeAnime( spep_3 -3 + 30, 1, 111 );
changeAnime( spep_3 -3 + 31, 1, 111 );
changeAnime( spep_3 -3 + 32, 1, 111 );
changeAnime( spep_3 -3 + 33, 1, 111 );
changeAnime( spep_3 -3 + 34, 1, 110 );

setMoveKey( spep_3 + 0, 1, 404.8, -69 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, 363.1, -69 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 321.5, -69 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 279.9, -69 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 238.2, -69 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 196.5, -69 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 184, -69 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 171.6, -69 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 159, -69 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 146.6, -69 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 134, -69 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 121.6, -69 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 109.1, -69 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 96.6, -69 , 0 );
setMoveKey( spep_3 -3 + 29, 1, 84.1, -69 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 71.7, -69 , 0 );
setMoveKey( spep_3 -3 + 33, 1, 70.2, -69 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 68.8, -69 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 67.4, -69 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 66, -68.9 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 64.5, -68.9 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 63.2, -68.9 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 61.7, -68.9 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 60.4, -68.8 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 58.9, -68.8 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 57.5, -68.8 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 56.1, -68.8 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 54.7, -68.8 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 53.3, -68.8 , 0 );
--setMoveKey( spep_3 -3 + 58, 1, 51.9, -69 , 0 );

setScaleKey( spep_3  + 0, 1, 1.04, 1.04 );
setScaleKey( spep_3 -3 + 56, 1, 1.04, 1.04 );

setRotateKey( spep_3  + 0, 1, -0.2 );
setRotateKey( spep_3 -3 + 29, 1, -0.2 );
setRotateKey( spep_3 -3 + 30, 1, 2.8 );
setRotateKey( spep_3 -3 + 33, 1, 2.8 );
setRotateKey( spep_3 -3 + 34, 1, 25.4 );
setRotateKey( spep_3 -3 + 56, 1, 25.4 );

--SE
se_0008 = playSe( spep_3 + 13, 8 );
playSe( spep_3 + 51, 1048 );

stopSe( spep_3 + 48, se_0008, 20 );

--次の準備
spep_4 = spep_3 +54;
------------------------------------------------------
-- 構え～殴る
------------------------------------------------------
-- ** エフェクト等 ** --
punch_f = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 ); --構え(ef_001)
setEffMoveKey( spep_4 + 0, punch_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 40, punch_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 40, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, punch_f, 0 );
setEffRotateKey( spep_4 + 40, punch_f, 0 );
setEffAlphaKey( spep_4 + 0, punch_f, 255 );
setEffAlphaKey( spep_4 + 36, punch_f, 255 );
setEffAlphaKey( spep_4 + 37, punch_f, 255 );
setEffAlphaKey( spep_4 + 38, punch_f, 0 );

-- ** エフェクト等 ** --
punch_b = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0 ); --構え(ef_001)
setEffMoveKey( spep_4 + 0, punch_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 40, punch_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 40, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, punch_b, 0 );
setEffRotateKey( spep_4 + 40, punch_b, 0 );
setEffAlphaKey( spep_4 + 0, punch_b, 255 );
setEffAlphaKey( spep_4 + 36, punch_b, 255 );
setEffAlphaKey( spep_4 + 37, punch_b, 255 );
setEffAlphaKey( spep_4 + 38, punch_b, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_4 + 0,  906, 40, 0x100, -1, 0, 0, 0 );

setEffShake( spep_4 + 0, shuchusen2, 42, 20 );

setEffMoveKey( spep_4 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 40, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen2, 1.1, 1.1 );
setEffScaleKey( spep_4 + 40, shuchusen2, 1.1, 1.1 );

setEffRotateKey( spep_4 + 0, shuchusen2, 180 );
setEffRotateKey( spep_4 + 40, shuchusen2, 180 );

setEffAlphaKey( spep_4 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 38, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 39, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 40, shuchusen2, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_4-3 + 8,  10020, 18, 0x100, -1, 0, 176.5, 322.8 );--バキッ

setEffMoveKey( spep_4-3 + 8, ctbaki, 176.5, 322.8 , 0 );
setEffMoveKey( spep_4-3 + 10, ctbaki, 174.9, 337.3 , 0 );
setEffMoveKey( spep_4-3 + 12, ctbaki, 177, 337 , 0 );
setEffMoveKey( spep_4-3 + 14, ctbaki, 175.2, 348.8 , 0 );
setEffMoveKey( spep_4-3 + 16, ctbaki, 177.4, 342 , 0 );
setEffMoveKey( spep_4-3 + 18, ctbaki, 173.1, 361.1 , 0 );
setEffMoveKey( spep_4-3 + 20, ctbaki, 184.6, 357.5 , 0 );
setEffMoveKey( spep_4-3 + 22, ctbaki, 177.7, 358.4 , 0 );
setEffMoveKey( spep_4-3 + 24, ctbaki, 188.5, 367.8 , 0 );
setEffMoveKey( spep_4-3 + 26, ctbaki, 192.9, 369.4 , 0 );

setEffScaleKey( spep_4-3 + 8, ctbaki, 1.58, 1.58 );
setEffScaleKey( spep_4-3 + 10, ctbaki, 1.67, 1.67 );
setEffScaleKey( spep_4-3 + 12, ctbaki, 1.7, 1.7 );
setEffScaleKey( spep_4-3 + 14, ctbaki, 1.77, 1.77 );
setEffScaleKey( spep_4-3 + 16, ctbaki, 1.82, 1.82 );
setEffScaleKey( spep_4-3 + 18, ctbaki, 1.86, 1.86 );
setEffScaleKey( spep_4-3 + 20, ctbaki, 1.88, 1.88 );
setEffScaleKey( spep_4-3 + 22, ctbaki, 1.89, 1.89 );
setEffScaleKey( spep_4-3 + 24, ctbaki, 2.14, 2.14 );
setEffScaleKey( spep_4-3 + 26, ctbaki, 2.22, 2.22 );

setEffRotateKey( spep_4-3 + 8, ctbaki, 35.2 );
setEffRotateKey( spep_4-3 + 26, ctbaki, 35.2 );

setEffAlphaKey( spep_4-3 + 8, ctbaki, 255 );
setEffAlphaKey( spep_4-3 + 22, ctbaki, 255 );
setEffAlphaKey( spep_4-3 + 24, ctbaki, 64 );
setEffAlphaKey( spep_4-3 + 26, ctbaki, 0 );

--敵の動き
--setDisp( spep_4 + 0, 1, 1 );

changeAnime( spep_4 + 0, 1, 100 );
changeAnime( spep_4-3 + 8, 1, 106 );

setMoveKey( spep_4 + 0, 1, 43.4, -46.6 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 43.4, -46.5 , 0 );
setMoveKey( spep_4-3 + 7, 1, 43.4, -46.5 , 0 );
setMoveKey( spep_4-3 + 8, 1, -39.2, -60.5 , 0 );
setMoveKey( spep_4-3 + 10, 1, 6.2, 6 , 0 );
setMoveKey( spep_4-3 + 12, 1, -72.2, -24 , 0 );
setMoveKey( spep_4-3 + 14, 1, 4.2, 24.6 , 0 );
setMoveKey( spep_4-3 + 16, 1, -18.2, 15.3 , 0 );
setMoveKey( spep_4-3 + 18, 1, -6.5, 40 , 0 );
setMoveKey( spep_4-3 + 20, 1, -10.3, 32.8 , 0 );
setMoveKey( spep_4-3 + 22, 1, -7.9, 40.4 , 0 );
setMoveKey( spep_4-3 + 24, 1, -7, 44.3 , 0 );
setMoveKey( spep_4-3 + 26, 1, -6, 48.4 , 0 );
setMoveKey( spep_4-3 + 28, 1, -4.9, 52.2 , 0 );
setMoveKey( spep_4-3 + 30, 1, -3.8, 56.3 , 0 );
setMoveKey( spep_4-3 + 32, 1, -2.5, 60.2 , 0 );
setMoveKey( spep_4-3 + 34, 1, -1.2, 64.3 , 0 );
setMoveKey( spep_4-3 + 36, 1, 0.1, 68.1 , 0 );
setMoveKey( spep_4-3 + 38, 1, 1.6, 72.2 , 0 );
setMoveKey( spep_4-3 + 40, 1, 2.8, 76.1 , 0 );
--setMoveKey( spep_4 -3+ 42, 1, 4.3, 80.1 , 0 );

setScaleKey( spep_4 + 0, 1, 2.15, 2.15 );
setScaleKey( spep_4-3 + 7, 1, 2.15, 2.15 );
setScaleKey( spep_4-3 + 8, 1, 2.32, 2.32 );
setScaleKey( spep_4-3 + 10, 1, 2.23, 2.23 );
setScaleKey( spep_4-3 + 12, 1, 2.13, 2.13 );
setScaleKey( spep_4-3 + 14, 1, 2.04, 2.04 );
setScaleKey( spep_4-3 + 16, 1, 1.95, 1.95 );
setScaleKey( spep_4-3 + 18, 1, 1.92, 1.92 );
setScaleKey( spep_4-3 + 20, 1, 1.9, 1.9 );
setScaleKey( spep_4-3 + 22, 1, 1.88, 1.88 );
setScaleKey( spep_4-3 + 24, 1, 1.85, 1.85 );
setScaleKey( spep_4-3 + 26, 1, 1.83, 1.83 );
setScaleKey( spep_4-3 + 28, 1, 1.81, 1.81 );
setScaleKey( spep_4-3 + 30, 1, 1.79, 1.79 );
setScaleKey( spep_4-3 + 32, 1, 1.76, 1.76 );
setScaleKey( spep_4-3 + 34, 1, 1.74, 1.74 );
setScaleKey( spep_4-3 + 36, 1, 1.72, 1.72 );
setScaleKey( spep_4-3 + 38, 1, 1.69, 1.69 );
setScaleKey( spep_4-3 + 40, 1, 1.67, 1.67 );
--setScaleKey( spep_4-3 + 42, 1, 1.65, 1.65 );

setRotateKey( spep_4 + 0, 1, -0.2 );
setRotateKey( spep_4-3 + 7, 1, -0.2 );
setRotateKey( spep_4-3 + 8, 1, -51.9 );
setRotateKey( spep_4-3 + 10, 1, -50.6 );
setRotateKey( spep_4-3 + 12, 1, -49.3 );
setRotateKey( spep_4-3 + 14, 1, -47.9 );
setRotateKey( spep_4-3 + 16, 1, -46.6 );
setRotateKey( spep_4-3 + 18, 1, -46.1 );
setRotateKey( spep_4-3 + 20, 1, -45.6 );
setRotateKey( spep_4-3 + 22, 1, -45.1 );
setRotateKey( spep_4-3 + 24, 1, -44.6 );
setRotateKey( spep_4-3 + 26, 1, -44.1 );
setRotateKey( spep_4-3 + 28, 1, -43.6 );
setRotateKey( spep_4-3 + 30, 1, -43.1 );
setRotateKey( spep_4-3 + 32, 1, -42.6 );
setRotateKey( spep_4-3 + 34, 1, -42.1 );
setRotateKey( spep_4-3 + 36, 1, -41.6 );
setRotateKey( spep_4-3 + 38, 1, -41.1 );
setRotateKey( spep_4-3 + 40, 1, -40.7 );
--setRotateKey( spep_4-3 + 42, 1, -40.2 );

--SE
playSe( spep_4 + 8, 1189 );
playSe( spep_4 + 14, 1009 );
playSe( spep_4 + 14, 1000 );
playSe( spep_4 + 28, 1072 );
setSeVolume( spep_4 + 28, 1072, 0 );


--次の準備
spep_5 = spep_4 +38;
------------------------------------------------------
-- 敵吹き飛び
------------------------------------------------------

-- ** エフェクト等 ** --
tondeiku_f = entryEffect( spep_5 + 0, SP_08, 0x100, -1, 0, 0, 0 ); --構え(ef_001)
setEffMoveKey( spep_5 + 0, tondeiku_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 32, tondeiku_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, tondeiku_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 32, tondeiku_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tondeiku_f, 0 );
setEffRotateKey( spep_5 + 32, tondeiku_f, 0 );
setEffAlphaKey( spep_5 + 0, tondeiku_f, 255 );
setEffAlphaKey( spep_5 + 32, tondeiku_f, 255 );

-- ** エフェクト等 ** --
tondeiku_b = entryEffect( spep_5 + 0, SP_09, 0x80, -1, 0, 0, 0 ); --構え(ef_001)
setEffMoveKey( spep_5 + 0, tondeiku_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 32, tondeiku_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, tondeiku_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 32, tondeiku_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tondeiku_b, 0 );
setEffRotateKey( spep_5 + 32, tondeiku_b, 0 );
setEffAlphaKey( spep_5 + 0, tondeiku_b, 255 );
setEffAlphaKey( spep_5 + 32, tondeiku_b, 255 );

--流線
ryusen2 = entryEffectLife( spep_5 + 0,  914, 32, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 32, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, ryusen2, 4.98, 1.31 );
setEffScaleKey( spep_5 + 32, ryusen2, 4.98, 1.31 );

setEffRotateKey( spep_5 + 0, ryusen2, -37 );
setEffRotateKey( spep_5 + 32, ryusen2, -37 );

setEffAlphaKey( spep_5 + 0, ryusen2, 255 );
setEffAlphaKey( spep_5 + 32, ryusen2, 255 );

--敵の動き
setDisp( spep_5 + 30, 1, 0 );

changeAnime( spep_5 + 0, 1, 106 );

setMoveKey( spep_5 + 0, 1, 138.9, 76 , 0 );
setMoveKey( spep_5 + 2, 1, 203.2, 116.5 , 0 );
setMoveKey( spep_5 + 4, 1, 267.8, 156.9 , 0 );
setMoveKey( spep_5 + 6, 1, 332.5, 197.1 , 0 );
setMoveKey( spep_5 + 8, 1, 397.5, 237.2 , 0 );
setMoveKey( spep_5 + 10, 1, 462.6, 277 , 0 );
setMoveKey( spep_5 + 12, 1, 492.4, 295.5 , 0 );
setMoveKey( spep_5 + 14, 1, 522.2, 313.8 , 0 );
setMoveKey( spep_5 + 16, 1, 552, 332.2 , 0 );
setMoveKey( spep_5 + 18, 1, 581.8, 350.7 , 0 );
setMoveKey( spep_5 + 20, 1, 611.6, 369 , 0 );
setMoveKey( spep_5 + 22, 1, 641.5, 387.3 , 0 );
setMoveKey( spep_5 + 24, 1, 671.2, 405.7 , 0 );
setMoveKey( spep_5 + 26, 1, 701.1, 424 , 0 );
setMoveKey( spep_5 + 28, 1, 731, 442.3 , 0 );
setMoveKey( spep_5 + 30, 1, 760.7, 460.6 , 0 );

setScaleKey( spep_5 + 0, 1, 1.16, 1.16 );
setScaleKey( spep_5 + 2, 1, 1.16, 1.17 );
setScaleKey( spep_5 + 30, 1, 1.16, 1.17 );

setRotateKey( spep_5 + 0, 1, -28.4 );
setRotateKey( spep_5 + 2, 1, -22 );
setRotateKey( spep_5 + 4, 1, -15.7 );
setRotateKey( spep_5 + 6, 1, -9.3 );
setRotateKey( spep_5 + 8, 1, -3 );
setRotateKey( spep_5 + 10, 1, 3.3 );
setRotateKey( spep_5 + 12, 1, 4.8 );
setRotateKey( spep_5 + 14, 1, 6.3 );
setRotateKey( spep_5 + 16, 1, 7.7 );
setRotateKey( spep_5 + 18, 1, 9.2 );
setRotateKey( spep_5 + 20, 1, 10.7 );
setRotateKey( spep_5 + 22, 1, 12.1 );
setRotateKey( spep_5 + 24, 1, 13.6 );
setRotateKey( spep_5 + 26, 1, 15.1 );
setRotateKey( spep_5 + 28, 1, 16.5 );
setRotateKey( spep_5 + 30, 1, 18 );

--SE
setSeVolume( spep_5 + 10, 1072, 8 );
setSeVolume( spep_5 + 11, 1072, 16 );
setSeVolume( spep_5 + 12, 1072, 24 );
setSeVolume( spep_5 + 13, 1072, 32 );
setSeVolume( spep_5 + 14, 1072, 40 );
setSeVolume( spep_5 + 15, 1072, 48 );
setSeVolume( spep_5 + 16, 1072, 56 );
setSeVolume( spep_5 + 17, 1072, 64 );
setSeVolume( spep_5 + 18, 1072, 79 );

-- ** 白フェード ** --
entryFade( spep_5 + 24, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );--white fade

--次の準備
spep_6 = spep_5 +32;

------------------------------------------------------
-- 構え
------------------------------------------------------

-- ** エフェクト等 ** --
tame2 = entryEffect( spep_6 + 0, SP_10, 0x100, -1, 0, 0, 0 ); --構え(ef_001)
setEffMoveKey( spep_6 + 0, tame2, 0, 0, 0 );
setEffMoveKey( spep_6 + 110, tame2, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, tame2, 1.0, 1.0 );
setEffScaleKey( spep_6 + 110, tame2, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, tame2, 0 );
setEffRotateKey( spep_6 + 110, tame2, 0 );
setEffAlphaKey( spep_6 + 0, tame2, 255 );
setEffAlphaKey( spep_6 + 110, tame2, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_6 + 0,  906, 110, 0x100, -1, 0, 0, 0 );

setEffShake( spep_6 + 0, shuchusen3, 110, 20 );

setEffMoveKey( spep_6 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_6 + 110, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen3, 1.1, 1.1 );
setEffScaleKey( spep_6 + 110, shuchusen3, 1.1, 1.1 );

setEffRotateKey( spep_6 + 0, shuchusen3, 180 );
setEffRotateKey( spep_6 + 110, shuchusen3, 180 );

setEffAlphaKey( spep_6 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_6 + 110, shuchusen3, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_6 + 22, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_6 + 22, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_6 +34, 190006, 72, 0x106, -1, 0, 150, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_6 +34,  ctgogo,  150,  510);
setEffMoveKey(  spep_6 +106,  ctgogo,  150,  510);

setEffAlphaKey( spep_6 +34, ctgogo, 0 );
setEffAlphaKey( spep_6 + 35, ctgogo, 255 );
setEffAlphaKey( spep_6 + 36, ctgogo, 255 );
setEffAlphaKey( spep_6 + 100, ctgogo, 255 );
setEffAlphaKey( spep_6 + 102, ctgogo, 191 );
setEffAlphaKey( spep_6 + 104, ctgogo, 112 );
setEffAlphaKey( spep_6 + 106, ctgogo, 64 );

setEffRotateKey(  spep_6 +34,  ctgogo,  0);
setEffRotateKey(  spep_6 +106,  ctgogo,  0);

setEffScaleKey(  spep_6 +34,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_6 +96,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_6 +106,  ctgogo, 1.07, 1.07 );

--おと
playSe( spep_6 + 16, 1020 );
playSe( spep_6 + 39, 1020 );
playSe( spep_6 + 62, 1020 );
se_1020 = playSe( spep_6 + 85, 1020 );
playSe(spep_6+34, 1018);

-- ** 白フェード ** --
entryFade( spep_6 + 102, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );--white fade

--次の準備
spep_7 = spep_6 +110;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_7 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_7 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_7 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_7 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_7 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_7 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_7 + 0, shuchusen, 0 );
setEffRotateKey( spep_7 + 90, shuchusen, 0 );

setEffAlphaKey( spep_7 + 0, shuchusen, 255 );
setEffAlphaKey( spep_7 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_7 + 0, SE_05 );
stopSe( spep_7 + 5, se_1020, 0 );

--白フェード
entryFade( spep_7 + 82, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_8 = spep_7 + 94;

------------------------------------------------------
-- 放つ～敵に迫る
-------------------------------------------------------- ** エフェクト等 ** --
beam_f = entryEffect( spep_8 + 0, SP_11, 0x100, -1, 0, 0, 0 ); --構え(ef_001)
setEffMoveKey( spep_8 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 104, beam_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 104, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, beam_f, 0 );
setEffRotateKey( spep_8 + 104, beam_f, 0 );
setEffAlphaKey( spep_8 + 0, beam_f, 255 );
setEffAlphaKey( spep_8 + 104, beam_f, 255 );


-- ** エフェクト等 ** --
beam_b = entryEffect( spep_8 + 0, SP_12, 0x80, -1, 0, 0, 0 ); --構え(ef_001)
setEffMoveKey( spep_8 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 104, beam_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 104, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, beam_b, 0 );
setEffRotateKey( spep_8 + 104, beam_b, 0 );
setEffAlphaKey( spep_8 + 0, beam_b, 255 );
setEffAlphaKey( spep_8 + 104, beam_b, 255 );

--流線
ryusen3 = entryEffectLife( spep_8+0,  921, 102-3, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_8 + 0, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_8-3 + 50, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_8-3 + 51, ryusen3, 4.6, 2.3 , 0 );
setEffMoveKey( spep_8-3 + 102, ryusen3, 4.6, 2.3 , 0 );

setEffScaleKey( spep_8 + 0, ryusen3, 1, 1 );
setEffScaleKey( spep_8-3 + 50, ryusen3, 1, 1 );
setEffScaleKey( spep_8-3 + 51, ryusen3, 1.43, 1.43 );
setEffScaleKey( spep_8-3 + 102, ryusen3, 1.43, 1.43 );

setEffRotateKey( spep_8 + 0, ryusen3, 180 );
setEffRotateKey( spep_8-3 + 50, ryusen3,180 );
setEffRotateKey( spep_8-3 + 51, ryusen3, -11.4 );
setEffRotateKey( spep_8-3 + 102, ryusen3, -11.4 );

setEffAlphaKey( spep_8+0, ryusen3, 0 );
setEffAlphaKey( spep_8-3 + 13, ryusen3, 0 );
setEffAlphaKey( spep_8-3 + 14, ryusen3, 64 );
setEffAlphaKey( spep_8-3 + 16, ryusen3, 128 );
setEffAlphaKey( spep_8-3 + 18, ryusen3, 191 );
setEffAlphaKey( spep_8-3 + 20, ryusen3, 255 );
setEffAlphaKey( spep_8-3 + 102, ryusen3, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_8 + 0,  906, 20 -3, 0x100, -1, 0, 0, 0 );

setEffShake( spep_8 + 0, shuchusen4, 20-3, 20 );

setEffMoveKey( spep_8  + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_8 -3 + 20, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_8  + 0, shuchusen4, 1.1, 1.1 );
setEffScaleKey( spep_8 -3 + 20, shuchusen4, 1.1, 1.1 );

setEffRotateKey( spep_8  + 0, shuchusen4, 180 );
setEffRotateKey( spep_8 -3 + 20, shuchusen4, 180 );

setEffAlphaKey( spep_8  + 0, shuchusen4, 255 );
setEffAlphaKey( spep_8 -3 + 12, shuchusen4, 255 );
setEffAlphaKey( spep_8 -3 + 14, shuchusen4, 191 );
setEffAlphaKey( spep_8 -3 + 16, shuchusen4, 128 );
setEffAlphaKey( spep_8 -3 + 18, shuchusen4, 64 );
setEffAlphaKey( spep_8 -3 + 20, shuchusen4, 0 );

--集中線
shuchusen5 = entryEffectLife( spep_8 -3 + 80,  906, 22, 0x100, -1, 0, 0, 0 );

setEffShake( spep_8 -3 + 80, shuchusen5, 22, 20 );

setEffMoveKey( spep_8 -3 + 80, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_8 -3 + 102, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_8 -3 + 80, shuchusen5, 1.1, 1.1 );
setEffScaleKey( spep_8 -3 + 102, shuchusen5, 1.1, 1.1 );

setEffRotateKey( spep_8 -3 + 80, shuchusen5, 0 );
setEffRotateKey( spep_8 -3 + 102, shuchusen5, 0 );

setEffAlphaKey( spep_8 -3 + 80, shuchusen5, 255 );
setEffAlphaKey( spep_8 -3 + 102, shuchusen5, 255 );

--敵の動き
setDisp( spep_8-3 + 52, 1, 1 );
setDisp( spep_8-3 + 102, 1, 0 );

changeAnime( spep_8-3 + 52, 1, 106 );
changeAnime( spep_8-3 + 80, 1, 108 );

setMoveKey( spep_8-3+52 + 0, 1, 336.8, 101.9 , 0 );
setMoveKey( spep_8-3+52 + 2, 1, 327.9, 101.4 , 0 );
setMoveKey( spep_8-3+52 + 4, 1, 319.2, 101.1 , 0 );
setMoveKey( spep_8-3+52 + 6, 1, 310.2, 100.7 , 0 );
setMoveKey( spep_8-3+52 + 8, 1, 301.4, 100.2 , 0 );
setMoveKey( spep_8-3+52 + 10, 1, 292.5, 99.9 , 0 );
setMoveKey( spep_8-3+52 + 12, 1, 283.7, 99.5 , 0 );
setMoveKey( spep_8-3+52 + 14, 1, 274.9, 99.1 , 0 );
setMoveKey( spep_8-3+52 + 16, 1, 266, 98.7 , 0 );
setMoveKey( spep_8-3+52 + 18, 1, 257.2, 98.4 , 0 );
setMoveKey( spep_8-3+52 + 20, 1, 248.3, 98 , 0 );
setMoveKey( spep_8-3+52 + 22, 1, 239.5, 97.6 , 0 );
setMoveKey( spep_8-3+52 + 24, 1, 230.7, 97.2 , 0 );
setMoveKey( spep_8-3+52 + 27, 1, 221.8, 96.9 , 0 );
setMoveKey( spep_8-3+52 + 28, 1, 225.5, 75.9 , 0 );
setMoveKey( spep_8-3+52 + 30, 1, 223.7, 83 , 0 );
setMoveKey( spep_8-3+52 + 32, 1, 235.9, 71.8 , 0 );
setMoveKey( spep_8-3+52 + 34, 1, 254.1, 70.1 , 0 );
setMoveKey( spep_8-3+52 + 36, 1, 272.2, 68.3 , 0 );
setMoveKey( spep_8-3+52 + 38, 1, 290.3, 66.6 , 0 );
setMoveKey( spep_8-3+52 + 40, 1, 308.5, 64.8 , 0 );
setMoveKey( spep_8-3+52 + 42, 1, 317.1, 65.3 , 0 );
setMoveKey( spep_8-3+52 + 44, 1, 325.7, 65.8 , 0 );
setMoveKey( spep_8-3+52 + 46, 1, 334.3, 66.4 , 0 );
setMoveKey( spep_8-3+52 + 48, 1, 343, 66.8 , 0 );
setMoveKey( spep_8-3+52 + 50, 1, 351.6, 67.3 , 0 );


setScaleKey( spep_8-3+52 + 0, 1, 0.65, 0.65 );
setScaleKey( spep_8-3+52 + 2, 1, 0.69, 0.69 );
setScaleKey( spep_8-3+52 + 4, 1, 0.72, 0.72 );
setScaleKey( spep_8-3+52 + 6, 1, 0.76, 0.76 );
setScaleKey( spep_8-3+52 + 8, 1, 0.79, 0.79 );
setScaleKey( spep_8-3+52 + 10, 1, 0.83, 0.83 );
setScaleKey( spep_8-3+52 + 12, 1, 0.86, 0.86 );
setScaleKey( spep_8-3+52 + 14, 1, 0.9, 0.9 );
setScaleKey( spep_8-3+52 + 16, 1, 0.93, 0.93 );
setScaleKey( spep_8-3+52 + 18, 1, 0.97, 0.97 );
setScaleKey( spep_8-3+52 + 20, 1, 1, 1 );
setScaleKey( spep_8-3+52 + 22, 1, 1.04, 1.04 );
setScaleKey( spep_8-3+52 + 24, 1, 1.07, 1.07 );
setScaleKey( spep_8-3+52 + 27, 1, 1.11, 1.11 );
setScaleKey( spep_8-3+52 + 28, 1, 1.14, 1.14 );
setScaleKey( spep_8-3+52 + 30, 1, 1.05, 1.05 );
setScaleKey( spep_8-3+52 + 32, 1, 0.95, 0.96 );
setScaleKey( spep_8-3+52 + 34, 1, 0.86, 0.86 );
setScaleKey( spep_8-3+52 + 36, 1, 0.78, 0.78 );
setScaleKey( spep_8-3+52 + 38, 1, 0.69, 0.69 );
setScaleKey( spep_8-3+52 + 40, 1, 0.59, 0.59 );
setScaleKey( spep_8-3+52 + 42, 1, 0.52, 0.52 );
setScaleKey( spep_8-3+52 + 44, 1, 0.47, 0.47 );
setScaleKey( spep_8-3+52 + 46, 1, 0.41, 0.41 );
setScaleKey( spep_8-3+52 + 48, 1, 0.34, 0.34 );
setScaleKey( spep_8-3+52 + 50, 1, 0.28, 0.28 );

setRotateKey( spep_8-3+52 + 0, 1, -28.4 );
setRotateKey( spep_8-3+52 + 2, 1, -28.2 );
setRotateKey( spep_8-3+52 + 4, 1, -28 );
setRotateKey( spep_8-3+52 + 6, 1, -27.8 );
setRotateKey( spep_8-3+52 + 8, 1, -27.7 );
setRotateKey( spep_8-3+52 + 10, 1, -27.5 );
setRotateKey( spep_8-3+52 + 12, 1, -27.3 );
setRotateKey( spep_8-3+52 + 14, 1, -27.2 );
setRotateKey( spep_8-3+52 + 16, 1, -27 );
setRotateKey( spep_8-3+52 + 18, 1, -26.8 );
setRotateKey( spep_8-3+52 + 20, 1, -26.7 );
setRotateKey( spep_8-3+52 + 22, 1, -26.5 );
setRotateKey( spep_8-3+52 + 24, 1, -26.3 );
setRotateKey( spep_8-3+52 + 27, 1, -26.2 );
setRotateKey( spep_8-3+52 + 28, 1, 4.5 );
setRotateKey( spep_8-3+52 + 30, 1, 4.7 );
setRotateKey( spep_8-3+52 + 32, 1, 4.9 );
setRotateKey( spep_8-3+52 + 34, 1, 5 );
setRotateKey( spep_8-3+52 + 36, 1, 5.2 );
setRotateKey( spep_8-3+52 + 38, 1, 5.4 );
setRotateKey( spep_8-3+52 + 40, 1, 5.5 );
setRotateKey( spep_8-3+52 + 42, 1, 5.7 );
setRotateKey( spep_8-3+52 + 44, 1, 5.9 );
setRotateKey( spep_8-3+52 + 46, 1, 6 );
setRotateKey( spep_8-3+52 + 48, 1, 6.2 );
setRotateKey( spep_8-3+52 + 50, 1, 6.4 );

--SE
playSe( spep_8 + 16, 1021 );
se_1022 = playSe( spep_8 + 35, 1022 );
setSeVolume( spep_8 + 35, 1022, 0 );
setSeVolume( spep_8 +55, 1022,6.25);
setSeVolume( spep_8 +56, 1022,12.5);
setSeVolume( spep_8 +57, 1022,18.75);
setSeVolume( spep_8 +58, 1022,25);
setSeVolume( spep_8 +59, 1022,31.25);
setSeVolume( spep_8 +60, 1022,37.5);
setSeVolume( spep_8 +61, 1022,43.75);
setSeVolume( spep_8 +62, 1022,50);
setSeVolume( spep_8 +63, 1022,56.25);
setSeVolume( spep_8 +64, 1022,62.5);
setSeVolume( spep_8 +65, 1022,68.75);
setSeVolume( spep_8 +66, 1022,75);
setSeVolume( spep_8 +67, 1022,81.25);
setSeVolume( spep_8 +68, 1022,87.5);
setSeVolume( spep_8 +69, 1022,93.75);
setSeVolume( spep_8 +70, 1022,100);
playSe( spep_8 + 58, 1202 );

--白フェード
entryFade( spep_8 + 42, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_8 + 96, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_9 = spep_8 + 104;

------------------------------------------------------
-- 終わり
------------------------------------------------------

finish_f = entryEffect( spep_9 + 0, SP_13, 0x100, -1, 0, 0, 0 ); --構え(ef_001)
setEffMoveKey( spep_9 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_9 + 116, finish_f, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_9 + 116, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish_f, 0 );
setEffRotateKey( spep_9 + 116, finish_f, 0 );
setEffAlphaKey( spep_9 + 0, finish_f, 255 );
setEffAlphaKey( spep_9 + 116, finish_f, 255 );


-- ** エフェクト等 ** --
finish_b = entryEffect( spep_9 + 0, SP_14, 0x80, -1, 0, 0, 0 ); --構え(ef_001)
setEffMoveKey( spep_9 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_9 + 116, finish_b, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_9 + 116, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish_b, 0 );
setEffRotateKey( spep_9 + 116, finish_b, 0 );
setEffAlphaKey( spep_9 + 0, finish_b, 255 );
setEffAlphaKey( spep_9 + 116, finish_b, 255 );


--集中線
shuchusen6 = entryEffectLife( spep_9 ,  906, 136, 0x100, -1, 0, 0, 0 );

setEffShake( spep_9 , shuchusen6, 136, 20 );

setEffMoveKey( spep_9 , shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_9 +136, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_9 , shuchusen6, 1.1, 1.1 );
setEffScaleKey( spep_9 +136, shuchusen6, 1.1, 1.1 );

setEffRotateKey( spep_9 , shuchusen6, 0 );
setEffRotateKey( spep_9 +136, shuchusen6, 0 );

setEffAlphaKey( spep_9 , shuchusen6, 255 );
setEffAlphaKey( spep_9 +136, shuchusen6, 255 );

--SE
playSe( spep_9 + 37, 1023 );
playSe( spep_9 + 37, 1159 );
setSeVolume( spep_9 + 37, 1159, 56 );

stopSe( spep_9 + 42, se_1022, 0 );

-- ** ダメージ表示 ** --
dealDamage( spep_9+ 38 );
endPhase( spep_9 + 136 );

else 

    ------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- アイドリング
------------------------------------------------------
--最初の準備
spep_0 = 0;

-- ** エフェクト等 ** --
idling = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); --構え(ef_001)
setEffMoveKey( spep_0 + 0, idling, 0, 0, 0 );
setEffMoveKey( spep_0 + 24, idling, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, idling, 1.0, 1.0 );
setEffScaleKey( spep_0 + 24, idling, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, idling, 0 );
setEffRotateKey( spep_0 + 24, idling, 0 );
setEffAlphaKey( spep_0 + 0, idling, 255 );
setEffAlphaKey( spep_0 + 24, idling, 255 );
setEffAlphaKey( spep_0 + 25, idling, 0 );
setEffAlphaKey( spep_0 + 26, idling, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_1 = spep_0 +24;

------------------------------------------------------
-- 気溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); --構え(ef_001)
setEffMoveKey( spep_1 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_1 + 48, tame, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_1 + 48, tame, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 48, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 48, tame, 255 );

--文字エントリー
ctzuzun = entryEffectLife( spep_1 + 0,  10013, 44, 0x100, -1, 0, 22, 191.9 );--ズズズンッ

setEffShake( spep_1 + 0, ctzuzun, 44, 20 );

setEffMoveKey( spep_1 + 0, ctzuzun, 22, 191.9 , 0 );
--setEffMoveKey( spep_1-3 + 2, ctzuzun, 29.8, 246.6 , 0 );
setEffMoveKey( spep_1-3 + 4, ctzuzun, 49.5, 310.9 , 0 );
setEffMoveKey( spep_1-3 + 6, ctzuzun, 46.2, 332.2 , 0 );
setEffMoveKey( spep_1-3 + 8, ctzuzun, 51.1, 326.2 , 0 );
setEffMoveKey( spep_1-3 + 10, ctzuzun, 36.4, 301.1 , 0 );
setEffMoveKey( spep_1-3 + 12, ctzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_1-3 + 14, ctzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_1-3 + 16, ctzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_1-3 + 18, ctzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_1-3 + 20, ctzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_1-3 + 22, ctzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_1-3 + 24, ctzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_1-3 + 26, ctzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_1-3 + 28, ctzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_1-3 + 30, ctzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_1-3 + 32, ctzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_1-3 + 34, ctzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_1-3 + 36, ctzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_1-3 + 38, ctzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_1-3 + 40, ctzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_1-3 + 42, ctzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_1 + 44, ctzuzun, 46, 309.9 , 0 );

setEffScaleKey( spep_1 + 0, ctzuzun, 1.18, 1.18 );
--setEffScaleKey( spep_1-3 + 2, ctzuzun, 0.62, 0.62 );
setEffScaleKey( spep_1-3 + 4, ctzuzun, 1.85, 1.85 );
setEffScaleKey( spep_1-3 + 6, ctzuzun, 2.8, 2.8 );
setEffScaleKey( spep_1 + 44, ctzuzun, 2.8, 2.8 );

setEffRotateKey( spep_1 + 0, ctzuzun, 0 );
setEffRotateKey( spep_1 + 44, ctzuzun, 0 );

setEffAlphaKey( spep_1 + 0, ctzuzun, 255 );
setEffAlphaKey( spep_1 + 44, ctzuzun, 255 );

--SE
playSe( spep_1 + 4, 1035 );

-- ** 白フェード ** --
entryFade( spep_1 + 40, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );--white fade

--次の準備
spep_2 = spep_1 +48;

------------------------------------------------------
-- 突進
------------------------------------------------------
-- ** エフェクト等 ** --
tossin = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); --構え(ef_001)
setEffMoveKey( spep_2 + 0, tossin, 0, 0, 0 );
setEffMoveKey( spep_2 + 50, tossin, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tossin, 1.0, 1.0 );
setEffScaleKey( spep_2 + 50, tossin, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tossin, 0 );
setEffRotateKey( spep_2 + 50, tossin, 0 );
setEffAlphaKey( spep_2 + 0, tossin, 255 );
setEffAlphaKey( spep_2 + 50, tossin, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_2 + 0,  906, 48, 0x100, -1, 0, 0, 0 );

setEffShake( spep_2 + 0, shuchusen1, 48, 20 );

setEffMoveKey( spep_2 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 48, shuchusen1, 0, 0 , 0 );

setEffRotateKey( spep_2 + 0, shuchusen1, 180 );
setEffRotateKey( spep_2 + 48, shuchusen1, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 84, shuchusen1, 255 );

--SE
SE0=playSe( spep_2 + 8, 9 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge -12, SE0, 0 );

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

-- ** 白フェード ** --
entryFade( spep_2 + 42, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );--white fade

--次の準備
spep_3 = spep_2 +50;

------------------------------------------------------
-- 敵に迫る
------------------------------------------------------
-- ** エフェクト等 ** --
semaru_f = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); --構え(ef_001)
setEffMoveKey( spep_3 + 0, semaru_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 60, semaru_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, semaru_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 60, semaru_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, semaru_f, 0 );
setEffRotateKey( spep_3 + 60, semaru_f, 0 );
setEffAlphaKey( spep_3 + 0, semaru_f, 255 );
setEffAlphaKey( spep_3 + 52, semaru_f, 255 );
setEffAlphaKey( spep_3 + 53, semaru_f, 255 );
setEffAlphaKey( spep_3 + 54, semaru_f, 0 );

--流線
ryusen1 = entryEffectLife( spep_3 + 2,  914, 54, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 2, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_3 + 2, ryusen1, 4.3, 1.13 );
setEffScaleKey( spep_3 + 56, ryusen1, 4.3, 1.13 );

setEffRotateKey( spep_3 + 2, ryusen1, 0 );
setEffRotateKey( spep_3 + 56, ryusen1, 0 );

setEffAlphaKey( spep_3 + 2, ryusen1, 64 );
setEffAlphaKey( spep_3 + 4, ryusen1, 128 );
setEffAlphaKey( spep_3 + 6, ryusen1, 191 );
setEffAlphaKey( spep_3 + 8, ryusen1, 255 );
setEffAlphaKey( spep_3 + 56, ryusen1, 255 );

-- ** エフェクト等 ** --
semaru_b = entryEffect( spep_3 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); --構え(ef_001)
setEffMoveKey( spep_3 + 0, semaru_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 60, semaru_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, semaru_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 60, semaru_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, semaru_b, 0 );
setEffRotateKey( spep_3 + 60, semaru_b, 0 );
setEffAlphaKey( spep_3 + 0, semaru_b, 255 );
setEffAlphaKey( spep_3 + 52, semaru_b, 255 );
setEffAlphaKey( spep_3 + 53, semaru_b, 255 );
setEffAlphaKey( spep_3 + 54, semaru_b, 0 );

--敵機の動き
setDisp( spep_3  + 0, 1, 1 );

changeAnime( spep_3  + 0, 1, 101 );
changeAnime( spep_3 -3 + 30, 1, 111 );
changeAnime( spep_3 -3 + 31, 1, 111 );
changeAnime( spep_3 -3 + 32, 1, 111 );
changeAnime( spep_3 -3 + 33, 1, 111 );
changeAnime( spep_3 -3 + 34, 1, 110 );

setMoveKey( spep_3 + 0, 1, 404.8, -69 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, 363.1, -69 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 321.5, -69 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 279.9, -69 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 238.2, -69 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 196.5, -69 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 184, -69 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 171.6, -69 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 159, -69 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 146.6, -69 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 134, -69 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 121.6, -69 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 109.1, -69 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 96.6, -69 , 0 );
setMoveKey( spep_3 -3 + 29, 1, 84.1, -69 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 71.7, -69 , 0 );
setMoveKey( spep_3 -3 + 33, 1, 70.2, -69 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 68.8, -69 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 67.4, -69 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 66, -68.9 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 64.5, -68.9 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 63.2, -68.9 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 61.7, -68.9 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 60.4, -68.8 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 58.9, -68.8 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 57.5, -68.8 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 56.1, -68.8 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 54.7, -68.8 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 53.3, -68.8 , 0 );
--setMoveKey( spep_3 -3 + 58, 1, 51.9, -69 , 0 );

setScaleKey( spep_3  + 0, 1, 1.04, 1.04 );
setScaleKey( spep_3 -3 + 56, 1, 1.04, 1.04 );

setRotateKey( spep_3  + 0, 1, -0.2 );
setRotateKey( spep_3 -3 + 29, 1, -0.2 );
setRotateKey( spep_3 -3 + 30, 1, 2.8 );
setRotateKey( spep_3 -3 + 33, 1, 2.8 );
setRotateKey( spep_3 -3 + 34, 1, 25.4 );
setRotateKey( spep_3 -3 + 56, 1, 25.4 );

--SE
se_0008 = playSe( spep_3 + 13, 8 );
playSe( spep_3 + 51, 1048 );

stopSe( spep_3 + 48, se_0008, 20 );

--次の準備
spep_4 = spep_3 +54;
------------------------------------------------------
-- 構え～殴る
------------------------------------------------------
-- ** エフェクト等 ** --
punch_f = entryEffect( spep_4 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); --構え(ef_001)
setEffMoveKey( spep_4 + 0, punch_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 40, punch_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 40, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, punch_f, 0 );
setEffRotateKey( spep_4 + 40, punch_f, 0 );
setEffAlphaKey( spep_4 + 0, punch_f, 255 );
setEffAlphaKey( spep_4 + 36, punch_f, 255 );
setEffAlphaKey( spep_4 + 37, punch_f, 255 );
setEffAlphaKey( spep_4 + 38, punch_f, 0 );

-- ** エフェクト等 ** --
punch_b = entryEffect( spep_4 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); --構え(ef_001)
setEffMoveKey( spep_4 + 0, punch_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 40, punch_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 40, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, punch_b, 0 );
setEffRotateKey( spep_4 + 40, punch_b, 0 );
setEffAlphaKey( spep_4 + 0, punch_b, 255 );
setEffAlphaKey( spep_4 + 36, punch_b, 255 );
setEffAlphaKey( spep_4 + 37, punch_b, 255 );
setEffAlphaKey( spep_4 + 38, punch_b, 0 );


--集中線
shuchusen2 = entryEffectLife( spep_4 + 0,  906, 40, 0x100, -1, 0, 0, 0 );

setEffShake( spep_4 + 0, shuchusen2, 42, 20 );

setEffMoveKey( spep_4 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 40, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen2, 1.1, 1.1 );
setEffScaleKey( spep_4 + 40, shuchusen2, 1.1, 1.1 );

setEffRotateKey( spep_4 + 0, shuchusen2, 180 );
setEffRotateKey( spep_4 + 40, shuchusen2, 180 );

setEffAlphaKey( spep_4 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 38, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 39, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 40, shuchusen2, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_4-3 + 8,  10020, 18, 0x100, -1, 0, 176.5, 322.8 );--バキッ

setEffMoveKey( spep_4-3 + 8, ctbaki, 176.5, 322.8 , 0 );
setEffMoveKey( spep_4-3 + 10, ctbaki, 174.9, 337.3 , 0 );
setEffMoveKey( spep_4-3 + 12, ctbaki, 177, 337 , 0 );
setEffMoveKey( spep_4-3 + 14, ctbaki, 175.2, 348.8 , 0 );
setEffMoveKey( spep_4-3 + 16, ctbaki, 177.4, 342 , 0 );
setEffMoveKey( spep_4-3 + 18, ctbaki, 173.1, 361.1 , 0 );
setEffMoveKey( spep_4-3 + 20, ctbaki, 184.6, 357.5 , 0 );
setEffMoveKey( spep_4-3 + 22, ctbaki, 177.7, 358.4 , 0 );
setEffMoveKey( spep_4-3 + 24, ctbaki, 188.5, 367.8 , 0 );
setEffMoveKey( spep_4-3 + 26, ctbaki, 192.9, 369.4 , 0 );

setEffScaleKey( spep_4-3 + 8, ctbaki, 1.58, 1.58 );
setEffScaleKey( spep_4-3 + 10, ctbaki, 1.67, 1.67 );
setEffScaleKey( spep_4-3 + 12, ctbaki, 1.7, 1.7 );
setEffScaleKey( spep_4-3 + 14, ctbaki, 1.77, 1.77 );
setEffScaleKey( spep_4-3 + 16, ctbaki, 1.82, 1.82 );
setEffScaleKey( spep_4-3 + 18, ctbaki, 1.86, 1.86 );
setEffScaleKey( spep_4-3 + 20, ctbaki, 1.88, 1.88 );
setEffScaleKey( spep_4-3 + 22, ctbaki, 1.89, 1.89 );
setEffScaleKey( spep_4-3 + 24, ctbaki, 2.14, 2.14 );
setEffScaleKey( spep_4-3 + 26, ctbaki, 2.22, 2.22 );

setEffRotateKey( spep_4-3 + 8, ctbaki, 35.2 );
setEffRotateKey( spep_4-3 + 26, ctbaki, 35.2 );

setEffAlphaKey( spep_4-3 + 8, ctbaki, 255 );
setEffAlphaKey( spep_4-3 + 22, ctbaki, 255 );
setEffAlphaKey( spep_4-3 + 24, ctbaki, 64 );
setEffAlphaKey( spep_4-3 + 26, ctbaki, 0 );

--敵の動き
--setDisp( spep_4 + 0, 1, 1 );

changeAnime( spep_4 + 0, 1, 100 );
changeAnime( spep_4-3 + 8, 1, 106 );

setMoveKey( spep_4 + 0, 1, 43.4, -46.6 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 43.4, -46.5 , 0 );
setMoveKey( spep_4-3 + 7, 1, 43.4, -46.5 , 0 );
setMoveKey( spep_4-3 + 8, 1, -39.2, -60.5 , 0 );
setMoveKey( spep_4-3 + 10, 1, 6.2, 6 , 0 );
setMoveKey( spep_4-3 + 12, 1, -72.2, -24 , 0 );
setMoveKey( spep_4-3 + 14, 1, 4.2, 24.6 , 0 );
setMoveKey( spep_4-3 + 16, 1, -18.2, 15.3 , 0 );
setMoveKey( spep_4-3 + 18, 1, -6.5, 40 , 0 );
setMoveKey( spep_4-3 + 20, 1, -10.3, 32.8 , 0 );
setMoveKey( spep_4-3 + 22, 1, -7.9, 40.4 , 0 );
setMoveKey( spep_4-3 + 24, 1, -7, 44.3 , 0 );
setMoveKey( spep_4-3 + 26, 1, -6, 48.4 , 0 );
setMoveKey( spep_4-3 + 28, 1, -4.9, 52.2 , 0 );
setMoveKey( spep_4-3 + 30, 1, -3.8, 56.3 , 0 );
setMoveKey( spep_4-3 + 32, 1, -2.5, 60.2 , 0 );
setMoveKey( spep_4-3 + 34, 1, -1.2, 64.3 , 0 );
setMoveKey( spep_4-3 + 36, 1, 0.1, 68.1 , 0 );
setMoveKey( spep_4-3 + 38, 1, 1.6, 72.2 , 0 );
setMoveKey( spep_4-3 + 40, 1, 2.8, 76.1 , 0 );
setMoveKey( spep_4 -3+ 42, 1, 4.3, 80.1 , 0 );

setScaleKey( spep_4 + 0, 1, 2.15, 2.15 );
setScaleKey( spep_4-3 + 7, 1, 2.15, 2.15 );
setScaleKey( spep_4-3 + 8, 1, 2.32, 2.32 );
setScaleKey( spep_4-3 + 10, 1, 2.23, 2.23 );
setScaleKey( spep_4-3 + 12, 1, 2.13, 2.13 );
setScaleKey( spep_4-3 + 14, 1, 2.04, 2.04 );
setScaleKey( spep_4-3 + 16, 1, 1.95, 1.95 );
setScaleKey( spep_4-3 + 18, 1, 1.92, 1.92 );
setScaleKey( spep_4-3 + 20, 1, 1.9, 1.9 );
setScaleKey( spep_4-3 + 22, 1, 1.88, 1.88 );
setScaleKey( spep_4-3 + 24, 1, 1.85, 1.85 );
setScaleKey( spep_4-3 + 26, 1, 1.83, 1.83 );
setScaleKey( spep_4-3 + 28, 1, 1.81, 1.81 );
setScaleKey( spep_4-3 + 30, 1, 1.79, 1.79 );
setScaleKey( spep_4-3 + 32, 1, 1.76, 1.76 );
setScaleKey( spep_4-3 + 34, 1, 1.74, 1.74 );
setScaleKey( spep_4-3 + 36, 1, 1.72, 1.72 );
setScaleKey( spep_4-3 + 38, 1, 1.69, 1.69 );
setScaleKey( spep_4-3 + 40, 1, 1.67, 1.67 );
setScaleKey( spep_4-3 + 42, 1, 1.65, 1.65 );

setRotateKey( spep_4 + 0, 1, -0.2 );
setRotateKey( spep_4-3 + 7, 1, -0.2 );
setRotateKey( spep_4-3 + 8, 1, -51.9 );
setRotateKey( spep_4-3 + 10, 1, -50.6 );
setRotateKey( spep_4-3 + 12, 1, -49.3 );
setRotateKey( spep_4-3 + 14, 1, -47.9 );
setRotateKey( spep_4-3 + 16, 1, -46.6 );
setRotateKey( spep_4-3 + 18, 1, -46.1 );
setRotateKey( spep_4-3 + 20, 1, -45.6 );
setRotateKey( spep_4-3 + 22, 1, -45.1 );
setRotateKey( spep_4-3 + 24, 1, -44.6 );
setRotateKey( spep_4-3 + 26, 1, -44.1 );
setRotateKey( spep_4-3 + 28, 1, -43.6 );
setRotateKey( spep_4-3 + 30, 1, -43.1 );
setRotateKey( spep_4-3 + 32, 1, -42.6 );
setRotateKey( spep_4-3 + 34, 1, -42.1 );
setRotateKey( spep_4-3 + 36, 1, -41.6 );
setRotateKey( spep_4-3 + 38, 1, -41.1 );
setRotateKey( spep_4-3 + 40, 1, -40.7 );
setRotateKey( spep_4-3 + 42, 1, -40.2 );

--SE
playSe( spep_4 + 8, 1189 );
playSe( spep_4 + 14, 1009 );
playSe( spep_4 + 14, 1000 );
playSe( spep_4 + 28, 1072 );
setSeVolume( spep_4 + 28, 1072, 0 );


--次の準備
spep_5 = spep_4 +38;
------------------------------------------------------
-- 敵吹き飛び
------------------------------------------------------

-- ** エフェクト等 ** --
tondeiku_f = entryEffect( spep_5 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); --構え(ef_001)
setEffMoveKey( spep_5 + 0, tondeiku_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 32, tondeiku_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, tondeiku_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 32, tondeiku_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tondeiku_f, 0 );
setEffRotateKey( spep_5 + 32, tondeiku_f, 0 );
setEffAlphaKey( spep_5 + 0, tondeiku_f, 255 );
setEffAlphaKey( spep_5 + 32, tondeiku_f, 255 );

-- ** エフェクト等 ** --
tondeiku_b = entryEffect( spep_5 + 0, SP_09x, 0x80, -1, 0, 0, 0 ); --構え(ef_001)
setEffMoveKey( spep_5 + 0, tondeiku_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 32, tondeiku_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, tondeiku_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 32, tondeiku_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tondeiku_b, 0 );
setEffRotateKey( spep_5 + 32, tondeiku_b, 0 );
setEffAlphaKey( spep_5 + 0, tondeiku_b, 255 );
setEffAlphaKey( spep_5 + 32, tondeiku_b, 255 );

--流線
ryusen2 = entryEffectLife( spep_5 + 0,  914, 32, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 32, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, ryusen2, 4.98, 1.31 );
setEffScaleKey( spep_5 + 32, ryusen2, 4.98, 1.31 );

setEffRotateKey( spep_5 + 0, ryusen2, -37 );
setEffRotateKey( spep_5 + 32, ryusen2, -37 );

setEffAlphaKey( spep_5 + 0, ryusen2, 255 );
setEffAlphaKey( spep_5 + 32, ryusen2, 255 );

--敵の動き
setDisp( spep_5 + 30, 1, 0 );

changeAnime( spep_5 + 0, 1, 106 );

setMoveKey( spep_5 + 0, 1, 138.9, 76 , 0 );
setMoveKey( spep_5 + 2, 1, 203.2, 116.5 , 0 );
setMoveKey( spep_5 + 4, 1, 267.8, 156.9 , 0 );
setMoveKey( spep_5 + 6, 1, 332.5, 197.1 , 0 );
setMoveKey( spep_5 + 8, 1, 397.5, 237.2 , 0 );
setMoveKey( spep_5 + 10, 1, 462.6, 277 , 0 );
setMoveKey( spep_5 + 12, 1, 492.4, 295.5 , 0 );
setMoveKey( spep_5 + 14, 1, 522.2, 313.8 , 0 );
setMoveKey( spep_5 + 16, 1, 552, 332.2 , 0 );
setMoveKey( spep_5 + 18, 1, 581.8, 350.7 , 0 );
setMoveKey( spep_5 + 20, 1, 611.6, 369 , 0 );
setMoveKey( spep_5 + 22, 1, 641.5, 387.3 , 0 );
setMoveKey( spep_5 + 24, 1, 671.2, 405.7 , 0 );
setMoveKey( spep_5 + 26, 1, 701.1, 424 , 0 );
setMoveKey( spep_5 + 28, 1, 731, 442.3 , 0 );
setMoveKey( spep_5 + 30, 1, 760.7, 460.6 , 0 );

setScaleKey( spep_5 + 0, 1, 1.16, 1.16 );
setScaleKey( spep_5 + 2, 1, 1.16, 1.17 );
setScaleKey( spep_5 + 30, 1, 1.16, 1.17 );

setRotateKey( spep_5 + 0, 1, -28.4 );
setRotateKey( spep_5 + 2, 1, -22 );
setRotateKey( spep_5 + 4, 1, -15.7 );
setRotateKey( spep_5 + 6, 1, -9.3 );
setRotateKey( spep_5 + 8, 1, -3 );
setRotateKey( spep_5 + 10, 1, 3.3 );
setRotateKey( spep_5 + 12, 1, 4.8 );
setRotateKey( spep_5 + 14, 1, 6.3 );
setRotateKey( spep_5 + 16, 1, 7.7 );
setRotateKey( spep_5 + 18, 1, 9.2 );
setRotateKey( spep_5 + 20, 1, 10.7 );
setRotateKey( spep_5 + 22, 1, 12.1 );
setRotateKey( spep_5 + 24, 1, 13.6 );
setRotateKey( spep_5 + 26, 1, 15.1 );
setRotateKey( spep_5 + 28, 1, 16.5 );
setRotateKey( spep_5 + 30, 1, 18 );

--SE
setSeVolume( spep_5 + 10, 1072, 8 );
setSeVolume( spep_5 + 11, 1072, 16 );
setSeVolume( spep_5 + 12, 1072, 24 );
setSeVolume( spep_5 + 13, 1072, 32 );
setSeVolume( spep_5 + 14, 1072, 40 );
setSeVolume( spep_5 + 15, 1072, 48 );
setSeVolume( spep_5 + 16, 1072, 56 );
setSeVolume( spep_5 + 17, 1072, 64 );
setSeVolume( spep_5 + 18, 1072, 79 );

-- ** 白フェード ** --
entryFade( spep_5 + 24, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );--white fade

--次の準備
spep_6 = spep_5 +32;

------------------------------------------------------
-- 構え
------------------------------------------------------

-- ** エフェクト等 ** --
tame2 = entryEffect( spep_6 + 0, SP_10x, 0x100, -1, 0, 0, 0 ); --構え(ef_001)
setEffMoveKey( spep_6 + 0, tame2, 0, 0, 0 );
setEffMoveKey( spep_6 + 110, tame2, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, tame2, 1.0, 1.0 );
setEffScaleKey( spep_6 + 110, tame2, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, tame2, 0 );
setEffRotateKey( spep_6 + 110, tame2, 0 );
setEffAlphaKey( spep_6 + 0, tame2, 255 );
setEffAlphaKey( spep_6 + 110, tame2, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_6 + 0,  906, 110, 0x100, -1, 0, 0, 0 );

setEffShake( spep_6 + 0, shuchusen3, 110, 20 );

setEffMoveKey( spep_6 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_6 + 110, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen3, 1.1, 1.1 );
setEffScaleKey( spep_6 + 110, shuchusen3, 1.1, 1.1 );

setEffRotateKey( spep_6 + 0, shuchusen3, 180 );
setEffRotateKey( spep_6 + 110, shuchusen3, 180 );

setEffAlphaKey( spep_6 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_6 + 110, shuchusen3, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_6 + 22, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_6 + 22, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_6 +34, 190006, 72, 0x106, -1, 0, 120, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_6 +34,  ctgogo,  120,  510);
setEffMoveKey(  spep_6 +106,  ctgogo,  120,  510);

setEffAlphaKey( spep_6 +34, ctgogo, 0 );
setEffAlphaKey( spep_6 + 35, ctgogo, 255 );
setEffAlphaKey( spep_6 + 36, ctgogo, 255 );
setEffAlphaKey( spep_6 + 100, ctgogo, 255 );
setEffAlphaKey( spep_6 + 102, ctgogo, 191 );
setEffAlphaKey( spep_6 + 104, ctgogo, 112 );
setEffAlphaKey( spep_6 + 106, ctgogo, 64 );

setEffRotateKey(  spep_6 +34,  ctgogo,  0);
setEffRotateKey(  spep_6 +106,  ctgogo,  0);

setEffScaleKey(  spep_6 +34,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_6 +96,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_6 +106,  ctgogo, -1.07, 1.07 );

--おと
playSe( spep_6 + 16, 1020 );
playSe( spep_6 + 39, 1020 );
playSe( spep_6 + 62, 1020 );
se_1020 = playSe( spep_6 + 85, 1020 );
playSe(spep_6+34, 1018);

-- ** 白フェード ** --
entryFade( spep_6 + 102, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );--white fade

--次の準備
spep_7 = spep_6 +110;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_7 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_7 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_7 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_7 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_7 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_7 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_7 + 0, shuchusen, 0 );
setEffRotateKey( spep_7 + 90, shuchusen, 0 );

setEffAlphaKey( spep_7 + 0, shuchusen, 255 );
setEffAlphaKey( spep_7 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_7 + 0, SE_05 );
stopSe( spep_7 + 5, se_1020, 0 );

--白フェード
entryFade( spep_7 + 82, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_8 = spep_7 + 94;

------------------------------------------------------
-- 放つ～敵に迫る
-------------------------------------------------------- ** エフェクト等 ** --
beam_f = entryEffect( spep_8 + 0, SP_11x, 0x100, -1, 0, 0, 0 ); --構え(ef_001)
setEffMoveKey( spep_8 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 104, beam_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 104, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, beam_f, 0 );
setEffRotateKey( spep_8 + 104, beam_f, 0 );
setEffAlphaKey( spep_8 + 0, beam_f, 255 );
setEffAlphaKey( spep_8 + 104, beam_f, 255 );


-- ** エフェクト等 ** --
beam_b = entryEffect( spep_8 + 0, SP_12x, 0x80, -1, 0, 0, 0 ); --構え(ef_001)
setEffMoveKey( spep_8 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 104, beam_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 104, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, beam_b, 0 );
setEffRotateKey( spep_8 + 104, beam_b, 0 );
setEffAlphaKey( spep_8 + 0, beam_b, 255 );
setEffAlphaKey( spep_8 + 104, beam_b, 255 );

--流線
ryusen3 = entryEffectLife( spep_8+0,  921, 102-3, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_8 + 0, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_8-3 + 50, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_8-3 + 51, ryusen3, 4.6, 2.3 , 0 );
setEffMoveKey( spep_8-3 + 102, ryusen3, 4.6, 2.3 , 0 );

setEffScaleKey( spep_8 + 0, ryusen3, 1, 1 );
setEffScaleKey( spep_8-3 + 50, ryusen3, 1, 1 );
setEffScaleKey( spep_8-3 + 51, ryusen3, 1.43, 1.43 );
setEffScaleKey( spep_8-3 + 102, ryusen3, 1.43, 1.43 );

setEffRotateKey( spep_8 + 0, ryusen3, 180 );
setEffRotateKey( spep_8-3 + 50, ryusen3,180 );
setEffRotateKey( spep_8-3 + 51, ryusen3, -11.4 );
setEffRotateKey( spep_8-3 + 102, ryusen3, -11.4 );

setEffAlphaKey( spep_8+0, ryusen3, 0 );
setEffAlphaKey( spep_8-3 + 13, ryusen3, 0 );
setEffAlphaKey( spep_8-3 + 14, ryusen3, 64 );
setEffAlphaKey( spep_8-3 + 16, ryusen3, 128 );
setEffAlphaKey( spep_8-3 + 18, ryusen3, 191 );
setEffAlphaKey( spep_8-3 + 20, ryusen3, 255 );
setEffAlphaKey( spep_8-3 + 102, ryusen3, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_8 + 0,  906, 20 -3, 0x100, -1, 0, 0, 0 );

setEffShake( spep_8 + 0, shuchusen4, 20-3, 20 );

setEffMoveKey( spep_8  + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_8 -3 + 20, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_8  + 0, shuchusen4, 1.1, 1.1 );
setEffScaleKey( spep_8 -3 + 20, shuchusen4, 1.1, 1.1 );

setEffRotateKey( spep_8  + 0, shuchusen4, 180 );
setEffRotateKey( spep_8 -3 + 20, shuchusen4, 180 );

setEffAlphaKey( spep_8  + 0, shuchusen4, 255 );
setEffAlphaKey( spep_8 -3 + 12, shuchusen4, 255 );
setEffAlphaKey( spep_8 -3 + 14, shuchusen4, 191 );
setEffAlphaKey( spep_8 -3 + 16, shuchusen4, 128 );
setEffAlphaKey( spep_8 -3 + 18, shuchusen4, 64 );
setEffAlphaKey( spep_8 -3 + 20, shuchusen4, 0 );

--集中線
shuchusen5 = entryEffectLife( spep_8 -3 + 80,  906, 22, 0x100, -1, 0, 0, 0 );

setEffShake( spep_8 -3 + 80, shuchusen5, 22, 20 );

setEffMoveKey( spep_8 -3 + 80, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_8 -3 + 102, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_8 -3 + 80, shuchusen5, 1.1, 1.1 );
setEffScaleKey( spep_8 -3 + 102, shuchusen5, 1.1, 1.1 );

setEffRotateKey( spep_8 -3 + 80, shuchusen5, 0 );
setEffRotateKey( spep_8 -3 + 102, shuchusen5, 0 );

setEffAlphaKey( spep_8 -3 + 80, shuchusen5, 255 );
setEffAlphaKey( spep_8 -3 + 102, shuchusen5, 255 );

--敵の動き
setDisp( spep_8-3 + 52, 1, 1 );
setDisp( spep_8-3 + 102, 1, 0 );

changeAnime( spep_8-3 + 52, 1, 106 );
changeAnime( spep_8-3 + 80, 1, 108 );

setMoveKey( spep_8-3+52 + 0, 1, 336.8, 101.9 , 0 );
setMoveKey( spep_8-3+52 + 2, 1, 327.9, 101.4 , 0 );
setMoveKey( spep_8-3+52 + 4, 1, 319.2, 101.1 , 0 );
setMoveKey( spep_8-3+52 + 6, 1, 310.2, 100.7 , 0 );
setMoveKey( spep_8-3+52 + 8, 1, 301.4, 100.2 , 0 );
setMoveKey( spep_8-3+52 + 10, 1, 292.5, 99.9 , 0 );
setMoveKey( spep_8-3+52 + 12, 1, 283.7, 99.5 , 0 );
setMoveKey( spep_8-3+52 + 14, 1, 274.9, 99.1 , 0 );
setMoveKey( spep_8-3+52 + 16, 1, 266, 98.7 , 0 );
setMoveKey( spep_8-3+52 + 18, 1, 257.2, 98.4 , 0 );
setMoveKey( spep_8-3+52 + 20, 1, 248.3, 98 , 0 );
setMoveKey( spep_8-3+52 + 22, 1, 239.5, 97.6 , 0 );
setMoveKey( spep_8-3+52 + 24, 1, 230.7, 97.2 , 0 );
setMoveKey( spep_8-3+52 + 27, 1, 221.8, 96.9 , 0 );
setMoveKey( spep_8-3+52 + 28, 1, 225.5, 75.9 , 0 );
setMoveKey( spep_8-3+52 + 30, 1, 223.7, 83 , 0 );
setMoveKey( spep_8-3+52 + 32, 1, 235.9, 71.8 , 0 );
setMoveKey( spep_8-3+52 + 34, 1, 254.1, 70.1 , 0 );
setMoveKey( spep_8-3+52 + 36, 1, 272.2, 68.3 , 0 );
setMoveKey( spep_8-3+52 + 38, 1, 290.3, 66.6 , 0 );
setMoveKey( spep_8-3+52 + 40, 1, 308.5, 64.8 , 0 );
setMoveKey( spep_8-3+52 + 42, 1, 317.1, 65.3 , 0 );
setMoveKey( spep_8-3+52 + 44, 1, 325.7, 65.8 , 0 );
setMoveKey( spep_8-3+52 + 46, 1, 334.3, 66.4 , 0 );
setMoveKey( spep_8-3+52 + 48, 1, 343, 66.8 , 0 );
setMoveKey( spep_8-3+52 + 50, 1, 351.6, 67.3 , 0 );


setScaleKey( spep_8-3+52 + 0, 1, 0.65, 0.65 );
setScaleKey( spep_8-3+52 + 2, 1, 0.69, 0.69 );
setScaleKey( spep_8-3+52 + 4, 1, 0.72, 0.72 );
setScaleKey( spep_8-3+52 + 6, 1, 0.76, 0.76 );
setScaleKey( spep_8-3+52 + 8, 1, 0.79, 0.79 );
setScaleKey( spep_8-3+52 + 10, 1, 0.83, 0.83 );
setScaleKey( spep_8-3+52 + 12, 1, 0.86, 0.86 );
setScaleKey( spep_8-3+52 + 14, 1, 0.9, 0.9 );
setScaleKey( spep_8-3+52 + 16, 1, 0.93, 0.93 );
setScaleKey( spep_8-3+52 + 18, 1, 0.97, 0.97 );
setScaleKey( spep_8-3+52 + 20, 1, 1, 1 );
setScaleKey( spep_8-3+52 + 22, 1, 1.04, 1.04 );
setScaleKey( spep_8-3+52 + 24, 1, 1.07, 1.07 );
setScaleKey( spep_8-3+52 + 27, 1, 1.11, 1.11 );
setScaleKey( spep_8-3+52 + 28, 1, 1.14, 1.14 );
setScaleKey( spep_8-3+52 + 30, 1, 1.05, 1.05 );
setScaleKey( spep_8-3+52 + 32, 1, 0.95, 0.96 );
setScaleKey( spep_8-3+52 + 34, 1, 0.86, 0.86 );
setScaleKey( spep_8-3+52 + 36, 1, 0.78, 0.78 );
setScaleKey( spep_8-3+52 + 38, 1, 0.69, 0.69 );
setScaleKey( spep_8-3+52 + 40, 1, 0.59, 0.59 );
setScaleKey( spep_8-3+52 + 42, 1, 0.52, 0.52 );
setScaleKey( spep_8-3+52 + 44, 1, 0.47, 0.47 );
setScaleKey( spep_8-3+52 + 46, 1, 0.41, 0.41 );
setScaleKey( spep_8-3+52 + 48, 1, 0.34, 0.34 );
setScaleKey( spep_8-3+52 + 50, 1, 0.28, 0.28 );

setRotateKey( spep_8-3+52 + 0, 1, -28.4 );
setRotateKey( spep_8-3+52 + 2, 1, -28.2 );
setRotateKey( spep_8-3+52 + 4, 1, -28 );
setRotateKey( spep_8-3+52 + 6, 1, -27.8 );
setRotateKey( spep_8-3+52 + 8, 1, -27.7 );
setRotateKey( spep_8-3+52 + 10, 1, -27.5 );
setRotateKey( spep_8-3+52 + 12, 1, -27.3 );
setRotateKey( spep_8-3+52 + 14, 1, -27.2 );
setRotateKey( spep_8-3+52 + 16, 1, -27 );
setRotateKey( spep_8-3+52 + 18, 1, -26.8 );
setRotateKey( spep_8-3+52 + 20, 1, -26.7 );
setRotateKey( spep_8-3+52 + 22, 1, -26.5 );
setRotateKey( spep_8-3+52 + 24, 1, -26.3 );
setRotateKey( spep_8-3+52 + 27, 1, -26.2 );
setRotateKey( spep_8-3+52 + 28, 1, 4.5 );
setRotateKey( spep_8-3+52 + 30, 1, 4.7 );
setRotateKey( spep_8-3+52 + 32, 1, 4.9 );
setRotateKey( spep_8-3+52 + 34, 1, 5 );
setRotateKey( spep_8-3+52 + 36, 1, 5.2 );
setRotateKey( spep_8-3+52 + 38, 1, 5.4 );
setRotateKey( spep_8-3+52 + 40, 1, 5.5 );
setRotateKey( spep_8-3+52 + 42, 1, 5.7 );
setRotateKey( spep_8-3+52 + 44, 1, 5.9 );
setRotateKey( spep_8-3+52 + 46, 1, 6 );
setRotateKey( spep_8-3+52 + 48, 1, 6.2 );
setRotateKey( spep_8-3+52 + 50, 1, 6.4 );

--SE
playSe( spep_8 + 16, 1021 );
se_1022 = playSe( spep_8 + 35, 1022 );
setSeVolume( spep_8 + 35, 1022, 0 );
setSeVolume( spep_8 +55, 1022,6.25);
setSeVolume( spep_8 +56, 1022,12.5);
setSeVolume( spep_8 +57, 1022,18.75);
setSeVolume( spep_8 +58, 1022,25);
setSeVolume( spep_8 +59, 1022,31.25);
setSeVolume( spep_8 +60, 1022,37.5);
setSeVolume( spep_8 +61, 1022,43.75);
setSeVolume( spep_8 +62, 1022,50);
setSeVolume( spep_8 +63, 1022,56.25);
setSeVolume( spep_8 +64, 1022,62.5);
setSeVolume( spep_8 +65, 1022,68.75);
setSeVolume( spep_8 +66, 1022,75);
setSeVolume( spep_8 +67, 1022,81.25);
setSeVolume( spep_8 +68, 1022,87.5);
setSeVolume( spep_8 +69, 1022,93.75);
setSeVolume( spep_8 +70, 1022,100);
playSe( spep_8 + 58, 1202 );

--白フェード
entryFade( spep_8 + 42, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_8 + 96, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_9 = spep_8 + 104;

------------------------------------------------------
-- 終わり
------------------------------------------------------

finish_f = entryEffect( spep_9 + 0, SP_13x, 0x100, -1, 0, 0, 0 ); --構え(ef_001)
setEffMoveKey( spep_9 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_9 + 116, finish_f, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_9 + 116, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish_f, 0 );
setEffRotateKey( spep_9 + 116, finish_f, 0 );
setEffAlphaKey( spep_9 + 0, finish_f, 255 );
setEffAlphaKey( spep_9 + 116, finish_f, 255 );


-- ** エフェクト等 ** --
finish_b = entryEffect( spep_9 + 0, SP_14x, 0x80, -1, 0, 0, 0 ); --構え(ef_001)
setEffMoveKey( spep_9 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_9 + 116, finish_b, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_9 + 116, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish_b, 0 );
setEffRotateKey( spep_9 + 116, finish_b, 0 );
setEffAlphaKey( spep_9 + 0, finish_b, 255 );
setEffAlphaKey( spep_9 + 116, finish_b, 255 );


--集中線
shuchusen6 = entryEffectLife( spep_9 ,  906, 136, 0x100, -1, 0, 0, 0 );

setEffShake( spep_9 , shuchusen6, 136, 20 );

setEffMoveKey( spep_9 , shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_9 +136, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_9 , shuchusen6, 1.1, 1.1 );
setEffScaleKey( spep_9 +136, shuchusen6, 1.1, 1.1 );

setEffRotateKey( spep_9 , shuchusen6, 0 );
setEffRotateKey( spep_9 +136, shuchusen6, 0 );

setEffAlphaKey( spep_9 , shuchusen6, 255 );
setEffAlphaKey( spep_9 +136, shuchusen6, 255 );

--SE
playSe( spep_9 + 37, 1023 );
playSe( spep_9 + 37, 1159 );
setSeVolume( spep_9 + 37, 1159, 56 );

stopSe( spep_9 + 42, se_1022, 0 );

-- ** ダメージ表示 ** --
dealDamage( spep_9+ 38 );
endPhase( spep_9 + 136 );

end