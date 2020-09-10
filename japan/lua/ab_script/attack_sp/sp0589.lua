--4018280：合体13号_S.Sデッドリィハンマー
--sp_effect_b4_00119

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
SP_01=	154569	;--	気弾発射
SP_02=	154570	;--	気弾着弾・手前
SP_03=	154571	;--	気弾着弾・手前
SP_04=	154572	;--	連撃・手前
SP_05=	154573	;--	連撃・奥
SP_06=	154574	;--	敵が飛び出す・手前
SP_07=	154575	;--	敵が飛び出す・奥
SP_08=	154576	;--	溜め
SP_09=	154577	;--	発射
SP_10=	154578	;--	爆発・手前
SP_11=	154579	;--	爆発・奥

--敵側
SP_01x=	154569	;--	気弾発射	
SP_02x=	154570	;--	気弾着弾・手前	
SP_03x=	154571	;--	気弾着弾・手前	
SP_04x=	154580	;--	連撃・手前	
SP_05x=	154581	;--	連撃・奥	
SP_06x=	154574	;--	敵が飛び出す・手前	(敵)
SP_07x=	154575	;--	敵が飛び出す・奥	(敵)
SP_08x=	154582	;--	溜め	(敵)
SP_09x=	154577	;--	発射	
SP_10x=	154578	;--	爆発・手前	
SP_11x=	154579	;--	爆発・奥	
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI(0, 0);

changeAnime( 0, 0, 1);                       -- 立ち

setDisp( 0, 0, 0);


setMoveKey(   0,   0,    -5000,  -5000,  0);
setMoveKey(   1,   0,    -5000,  -5000,  0);
setMoveKey(   2,   0,    -5000,  -5000,  0);
setMoveKey(   3,   0,    -5000,  -5000,  0);
setMoveKey(   4,   0,    -5000,  -5000,  0);
setMoveKey(   5,   0,    -5000,  -5000,  0);
setMoveKey(   6,   0,    -5000,  -5000,  0);
setScaleKey(  0,  0,  1.5,  1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   6,   0, 1.5, 1.5);

-- 敵
setDisp( 0, 1, 0);
changeAnime( 0, 1, 101);                       -- 立ち

setMoveKey(   0,   1,    -5000,  -5000,  0);
setMoveKey(   1,   1,    -5000,  -5000,  0);
setMoveKey(   2,   1,    -5000,  -5000,  0);
setMoveKey(   3,   1,    -5000,  -5000,  0);
setMoveKey(   4,   1,    -5000,  -5000,  0);
setMoveKey(   5,   1,    -5000,  -5000,  0);
setMoveKey(   6,   1,    -5000,  -5000,  0);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
setScaleKey(   6,   1, 1.5, 1.5);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--導入
------------------------------------------------------
--最初の準備
spep_0= 0;


-- ** エフェクト等 ** --
hassya = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_0 + 0, hassya, 0, 0 , 0 );
setEffMoveKey( spep_0 + 66, hassya, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, hassya, 1.0, 1.0 );
setEffScaleKey( spep_0 + 66, hassya, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, hassya, 0 );
setEffRotateKey( spep_0 + 66, hassya, 0 );
setEffAlphaKey( spep_0 + 0, hassya, 255 );
setEffAlphaKey( spep_0 + 66, hassya, 255 );


--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 68 -3, 0x100, -1, 0, 0, 0 );

setEffShake( spep_0 , shuchusen1, 68-3, 20 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 68 -3, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.07, 1.4 );
setEffScaleKey( spep_0 + 68 -3, shuchusen1, 1.07, 1.4 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 68-3, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 128 );
setEffAlphaKey( spep_0 + 68-3, shuchusen1, 128 );

--白フェード
entryFade( spep_0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
--SE
SE0=playSe( spep_0 + 0, 8 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
    stopSe( SP_dodge - 12, SE0, 0 );
    playSe( SP_dodge - 12, 1042 );
    
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

--SE
playSe( spep_0 + 22, 1154 );
playSe( spep_0 + 63, 1021 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 66;

------------------------------------------------------
--気弾着弾
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_1 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 76, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hit_f, 0 );
setEffRotateKey( spep_1 + 76, hit_f, 0 );
setEffAlphaKey( spep_1 + 0, hit_f, 255 );
setEffAlphaKey( spep_1 + 76, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_1 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 76, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hit_b, 0 );
setEffRotateKey( spep_1 + 76, hit_b, 0 );
setEffAlphaKey( spep_1 + 0, hit_b, 255 );
setEffAlphaKey( spep_1 + 76, hit_b, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_1-3 + 40,  906, 38, 0x100, -1, 0, 0, 0 );

setEffShake( spep_1-3 + 40 , shuchusen2, 38, 20 );
setEffMoveKey( spep_1-3 + 40, shuchusen2, 100, 50 , 0 );
setEffMoveKey( spep_1-3 + 78, shuchusen2, 100, 50 , 0 );

setEffScaleKey( spep_1-3 + 40, shuchusen2, 1.62, 1.61 );
setEffScaleKey( spep_1-3 + 78, shuchusen2, 1.62, 1.61 );

setEffRotateKey( spep_1-3 + 40, shuchusen2, 180 );
setEffRotateKey( spep_1-3 + 78, shuchusen2, 180 );

setEffAlphaKey( spep_1-3 + 40, shuchusen2, 206 );
setEffAlphaKey( spep_1-3 + 78, shuchusen2, 206 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-2 + 78, 1, 0 );

changeAnime( spep_1 + 0, 1, 100 );
changeAnime( spep_1-3 + 40, 1, 105 );

setMoveKey( spep_1 + 0, 1, -105.8, -99.5 , 0 );
--setMoveKey( spep_1-3 + 2, 1, -89.7, -86.8 , 0 );
setMoveKey( spep_1-3 + 4, 1, -73.6, -74 , 0 );
setMoveKey( spep_1-3 + 6, 1, -57.4, -61.3 , 0 );
setMoveKey( spep_1-3 + 8, 1, -41.4, -48.6 , 0 );
setMoveKey( spep_1-3 + 10, 1, -25.2, -35.8 , 0 );
setMoveKey( spep_1-3 + 12, 1, -9.2, -23.1 , 0 );
setMoveKey( spep_1-3 + 14, 1, 6.9, -10.1 , 0 );
setMoveKey( spep_1-3 + 16, 1, 23, 2.5 , 0 );
setMoveKey( spep_1-3 + 18, 1, 26.9, 4.7 , 0 );
setMoveKey( spep_1-3 + 20, 1, 30.8, 6.8 , 0 );
setMoveKey( spep_1-3 + 22, 1, 34.7, 9.1 , 0 );
setMoveKey( spep_1-3 + 24, 1, 38.5, 11.4 , 0 );
setMoveKey( spep_1-3 + 26, 1, 42.3, 13.6 , 0 );
setMoveKey( spep_1-3 + 28, 1, 46.2, 15.7 , 0 );
setMoveKey( spep_1-3 + 30, 1, 50.1, 18 , 0 );
setMoveKey( spep_1-3 + 32, 1, 54, 20.3 , 0 );
setMoveKey( spep_1-3 + 34, 1, 57.8, 22.4 , 0 );
setMoveKey( spep_1-3 + 36, 1, 61.7, 24.6 , 0 );
setMoveKey( spep_1-3 + 39, 1, 65.6, 26.9 , 0 );
setMoveKey( spep_1-3 + 40, 1, 83.6, 125.5 , 0 );
setMoveKey( spep_1-3 + 42, 1, 96.2, 144.1 , 0 );
setMoveKey( spep_1-3 + 44, 1, 100.1, 151 , 0 );
setMoveKey( spep_1-3 + 46, 1, 116.5, 163.4 , 0 );
setMoveKey( spep_1-3 + 48, 1, 125, 169.7 , 0 );
setMoveKey( spep_1-3 + 50, 1, 128.5, 173 , 0 );
setMoveKey( spep_1-3 + 52, 1, 124.9, 168.5 , 0 );
setMoveKey( spep_1-3 + 54, 1, 130.3, 169.8 , 0 );
setMoveKey( spep_1-3 + 56, 1, 127.7, 167.2 , 0 );
setMoveKey( spep_1-3 + 58, 1, 133.1, 168.5 , 0 );
setMoveKey( spep_1-3 + 60, 1, 131.5, 161.9 , 0 );
setMoveKey( spep_1-3 + 62, 1, 135, 165.3 , 0 );
setMoveKey( spep_1-3 + 64, 1, 134.3, 162.7 , 0 );
setMoveKey( spep_1-3 + 66, 1, 137.7, 164.1 , 0 );
setMoveKey( spep_1-3 + 68, 1, 133.9, 159.6 , 0 );
setMoveKey( spep_1-3 + 70, 1, 139.4, 161 , 0 );
setMoveKey( spep_1-3 + 72, 1, 140.8, 160.4 , 0 );
setMoveKey( spep_1-3 + 74, 1, 142.2, 159.7 , 0 );
setMoveKey( spep_1-3 + 76, 1, 142.3, 157.3 , 0 );
setMoveKey( spep_1-2 + 78, 1, 143.7, 156.7 , 0 );

setScaleKey( spep_1 + 0, 1, 5.62, 5.62 );
--setScaleKey( spep_1-3 + 2, 1, 5.19, 5.19 );
setScaleKey( spep_1-3 + 4, 1, 4.74, 4.74 );
setScaleKey( spep_1-3 + 6, 1, 4.31, 4.31 );
setScaleKey( spep_1-3 + 8, 1, 3.89, 3.89 );
setScaleKey( spep_1-3 + 10, 1, 3.44, 3.44 );
setScaleKey( spep_1-3 + 12, 1, 3.01, 3.01 );
setScaleKey( spep_1-3 + 14, 1, 2.56, 2.56 );
setScaleKey( spep_1-3 + 16, 1, 2.13, 2.13 );
setScaleKey( spep_1-3 + 18, 1, 2.07, 2.07 );
setScaleKey( spep_1-3 + 20, 1, 2.02, 2.02 );
setScaleKey( spep_1-3 + 22, 1, 1.95, 1.95 );
setScaleKey( spep_1-3 + 24, 1, 1.89, 1.89 );
setScaleKey( spep_1-3 + 26, 1, 1.82, 1.82 );
setScaleKey( spep_1-3 + 28, 1, 1.78, 1.78 );
setScaleKey( spep_1-3 + 30, 1, 1.71, 1.71 );
setScaleKey( spep_1-3 + 32, 1, 1.64, 1.64 );
setScaleKey( spep_1-3 + 34, 1, 1.6, 1.6 );
setScaleKey( spep_1-3 + 36, 1, 1.53, 1.53 );
setScaleKey( spep_1-3 + 39, 1, 1.46, 1.46 );
setScaleKey( spep_1-3 + 40, 1, 1.12, 1.12 );
setScaleKey( spep_1-3 + 42, 1, 1.01, 1.01 );
setScaleKey( spep_1-3 + 44, 1, 0.89, 0.89 );
setScaleKey( spep_1-3 + 46, 1, 0.79, 0.79 );
setScaleKey( spep_1-3 + 48, 1, 0.69, 0.69 );
setScaleKey( spep_1-3 + 50, 1, 0.66, 0.66 );
setScaleKey( spep_1-3 + 52, 1, 0.62, 0.62 );
setScaleKey( spep_1-3 + 54, 1, 0.59, 0.59 );
setScaleKey( spep_1-3 + 56, 1, 0.56, 0.56 );
setScaleKey( spep_1-3 + 58, 1, 0.53, 0.53 );
setScaleKey( spep_1-3 + 60, 1, 0.49, 0.49 );
setScaleKey( spep_1-3 + 62, 1, 0.46, 0.46 );
setScaleKey( spep_1-3 + 64, 1, 0.43, 0.43 );
setScaleKey( spep_1-3 + 66, 1, 0.41, 0.41 );
setScaleKey( spep_1-3 + 68, 1, 0.37, 0.37 );
setScaleKey( spep_1-3 + 70, 1, 0.34, 0.34 );
setScaleKey( spep_1-3 + 72, 1, 0.31, 0.31 );
setScaleKey( spep_1-3 + 74, 1, 0.28, 0.28 );
setScaleKey( spep_1-3 + 76, 1, 0.25, 0.25 );
setScaleKey( spep_1-2 + 78, 1, 0.22, 0.22 );

setRotateKey( spep_1 + 0, 1, -2 );
setRotateKey( spep_1-3 + 39, 1, -2 );
setRotateKey( spep_1-3 + 40, 1, 0.7 );
setRotateKey( spep_1-3 + 42, 1, 2.1 );
setRotateKey( spep_1-3 + 44, 1, 3.5 );
setRotateKey( spep_1-3 + 46, 1, 4.9 );
setRotateKey( spep_1-3 + 48, 1, 6.3 );
setRotateKey( spep_1-3 + 50, 1, 6.3 );
setRotateKey( spep_1-3 + 52, 1, 6.4 );
setRotateKey( spep_1-3 + 58, 1, 6.4 );
setRotateKey( spep_1-3 + 60, 1, 6.5 );
setRotateKey( spep_1-3 + 66, 1, 6.5 );
setRotateKey( spep_1-3 + 68, 1, 6.6 );
setRotateKey( spep_1-3 + 74, 1, 6.6 );
setRotateKey( spep_1-3 + 76, 1, 6.7 );
setRotateKey( spep_1-2 + 78, 1, 6.7 );

--SE
playSe( spep_1 + 43, 1002 );
playSe( spep_1 + 43, 1023 );

setSeVolume( spep_1 + 43, 1023, 71 );

--白フェード
entryFade( spep_1+37, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 180 );     -- white fade
entryFade( spep_1+72, 0, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 76;

------------------------------------------------------
--連撃
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_2 + 0, fighting_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 266, fighting_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 266, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_f, 0 );
setEffRotateKey( spep_2 + 266, fighting_f, 0 );
setEffAlphaKey( spep_2 + 0, fighting_f, 255 );
setEffAlphaKey( spep_2 + 266, fighting_f, 255 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_2 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_2 + 0, fighting_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 266, fighting_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 266, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_b, 0 );
setEffRotateKey( spep_2 + 266, fighting_b, 0 );
setEffAlphaKey( spep_2 + 0, fighting_b, 255 );
setEffAlphaKey( spep_2 + 266, fighting_b, 255 );

--文字エントリー
ctga = entryEffectLife( spep_2-3 + 78,  10005, 10, 0x100, -1, 0, 168.2, 180.1 );--ガッ

setEffMoveKey( spep_2-3 + 78, ctga, 168.2, 180.1 , 0 );
setEffMoveKey( spep_2-3 + 80, ctga, 168.2, 179.9 , 0 );
setEffMoveKey( spep_2-3 + 82, ctga, 168.2, 180.2 , 0 );
setEffMoveKey( spep_2-3 + 84, ctga, 168.3, 180 , 0 );
setEffMoveKey( spep_2-3 + 86, ctga, 168.2, 180.1 , 0 );
setEffMoveKey( spep_2-3 + 88, ctga, 168.2, 180.1 , 0 );

setEffScaleKey( spep_2-3 + 78, ctga, 0.8, 0.8 );
setEffScaleKey( spep_2-3 + 80, ctga, 2.11, 2.11 );
setEffScaleKey( spep_2-3 + 82, ctga, 2.17, 2.17 );
setEffScaleKey( spep_2-3 + 84, ctga, 1.75, 1.75 );
setEffScaleKey( spep_2-3 + 86, ctga, 1.73, 1.73 );
setEffScaleKey( spep_2-3 + 88, ctga, 1.7, 1.7 );

setEffRotateKey( spep_2-3 + 78, ctga, 16.8 );
setEffRotateKey( spep_2-3 + 80, ctga, 3.4 );
setEffRotateKey( spep_2-3 + 82, ctga, 16.8 );
setEffRotateKey( spep_2-3 + 84, ctga, 16.6 );
setEffRotateKey( spep_2-3 + 86, ctga, 16.7 );
setEffRotateKey( spep_2-3 + 88, ctga, 16.8 );

setEffAlphaKey( spep_2-3 + 78, ctga, 255 );
setEffAlphaKey( spep_2-3 + 84, ctga, 255 );
setEffAlphaKey( spep_2-3 + 86, ctga, 128 );
setEffAlphaKey( spep_2-3 + 88, ctga, 0 );

--文字エントリー
ctzun = entryEffectLife( spep_2-3 + 88,  10016, 12, 0x100, -1, 0, 91.8, 366 );--ズンッ

setEffMoveKey( spep_2-3 + 88, ctzun, 91.8, 366 , 0 );
setEffMoveKey( spep_2-3 + 90, ctzun, 92, 366 , 0 );
setEffMoveKey( spep_2-3 + 92, ctzun, 85.2, 369.2 , 0 );
setEffMoveKey( spep_2-3 + 94, ctzun, 92, 365.9 , 0 );
setEffMoveKey( spep_2-3 + 96, ctzun, 85.9, 368.6 , 0 );
setEffMoveKey( spep_2-3 + 98, ctzun, 92, 365.8 , 0 );
setEffMoveKey( spep_2-3 + 100, ctzun, 91.9, 365.9 , 0 );

setEffScaleKey( spep_2-3 + 88, ctzun, 1.14, 1.14 );
setEffScaleKey( spep_2-3 + 90, ctzun, 2.77, 2.77 );
setEffScaleKey( spep_2-3 + 92, ctzun, 2.55, 2.55 );
setEffScaleKey( spep_2-3 + 94, ctzun, 2.34, 2.34 );
setEffScaleKey( spep_2-3 + 96, ctzun, 2.32, 2.32 );
setEffScaleKey( spep_2-3 + 98, ctzun, 2.15, 2.15 );
setEffScaleKey( spep_2-3 + 100, ctzun, 1.99, 1.99 );

setEffRotateKey( spep_2-3 + 88, ctzun, -16.5 );
setEffRotateKey( spep_2-3 + 94, ctzun, -16.5 );
setEffRotateKey( spep_2-3 + 96, ctzun, -16.6 );
setEffRotateKey( spep_2-3 + 98, ctzun, -16.5 );
setEffRotateKey( spep_2-3 + 100, ctzun, -16.5 );

setEffAlphaKey( spep_2-3 + 88, ctzun, 255 );
setEffAlphaKey( spep_2-3 + 94, ctzun, 255 );
setEffAlphaKey( spep_2-3 + 96, ctzun, 191 );
setEffAlphaKey( spep_2-3 + 98, ctzun, 102 );
setEffAlphaKey( spep_2-3 + 100, ctzun, 13 );

--文字エントリー
ctga2 = entryEffectLife( spep_2-3 + 110,  10005, 10, 0x100, -1, 0, 138.1, 190 );--ガッ

setEffMoveKey( spep_2-3 + 110, ctga2, 138.1, 190 , 0 );
setEffMoveKey( spep_2-3 + 112, ctga2, 138.4, 189.9 , 0 );
setEffMoveKey( spep_2-3 + 114, ctga2, 138.2, 190.2 , 0 );
setEffMoveKey( spep_2-3 + 116, ctga2, 138.3, 190.1 , 0 );
setEffMoveKey( spep_2-3 + 120, ctga2, 138.3, 190.1 , 0 );

setEffScaleKey( spep_2-3 + 110, ctga2, 0.8, 0.8 );
setEffScaleKey( spep_2-3 + 112, ctga2, 2.11, 2.11 );
setEffScaleKey( spep_2-3 + 114, ctga2, 2.17, 2.17 );
setEffScaleKey( spep_2-3 + 116, ctga2, 1.75, 1.75 );
setEffScaleKey( spep_2-3 + 118, ctga2, 1.73, 1.73 );
setEffScaleKey( spep_2-3 + 120, ctga2, 1.7, 1.7 );

setEffRotateKey( spep_2-3 + 110, ctga2, -4.1 );
setEffRotateKey( spep_2-3 + 112, ctga2, -17.5 );
setEffRotateKey( spep_2-3 + 114, ctga2, -4.1 );
setEffRotateKey( spep_2-3 + 116, ctga2, -4.3 );
setEffRotateKey( spep_2-3 + 118, ctga2, -4.2 );
setEffRotateKey( spep_2-3 + 120, ctga2, -4.1 );

setEffAlphaKey( spep_2-3 + 110, ctga2, 255 );
setEffAlphaKey( spep_2-3 + 116, ctga2, 255 );
setEffAlphaKey( spep_2-3 + 118, ctga2, 128 );
setEffAlphaKey( spep_2-3 + 120, ctga2, 0 );

--文字エントリー
ctzun2 = entryEffectLife( spep_2-3 + 120,  10016, 12, 0x100, -1, 0, 111.9, 386 );--ズンッ

setEffMoveKey( spep_2-3 + 120, ctzun2, 111.9, 386 , 0 );
setEffMoveKey( spep_2-3 + 122, ctzun2, 112, 386 , 0 );
setEffMoveKey( spep_2-3 + 124, ctzun2, 106.5, 391.1 , 0 );
setEffMoveKey( spep_2-3 + 126, ctzun2, 112.1, 385.9 , 0 );
setEffMoveKey( spep_2-3 + 128, ctzun2, 107, 390.3 , 0 );
setEffMoveKey( spep_2-3 + 130, ctzun2, 112, 385.8 , 0 );
setEffMoveKey( spep_2-3 + 132, ctzun2, 111.9, 386 , 0 );

setEffScaleKey( spep_2-3 + 120, ctzun2, 1.14, 1.14 );
setEffScaleKey( spep_2-3 + 122, ctzun2, 2.77, 2.77 );
setEffScaleKey( spep_2-3 + 124, ctzun2, 2.55, 2.55 );
setEffScaleKey( spep_2-3 + 126, ctzun2, 2.34, 2.34 );
setEffScaleKey( spep_2-3 + 128, ctzun2, 2.32, 2.32 );
setEffScaleKey( spep_2-3 + 130, ctzun2, 2.15, 2.15 );
setEffScaleKey( spep_2-3 + 132, ctzun2, 1.99, 1.99 );

setEffRotateKey( spep_2-3 + 120, ctzun2, 1 );
setEffRotateKey( spep_2-3 + 126, ctzun2, 1 );
setEffRotateKey( spep_2-3 + 128, ctzun2, 0.9 );
setEffRotateKey( spep_2-3 + 130, ctzun2, 1 );
setEffRotateKey( spep_2-3 + 132, ctzun2, 1 );

setEffAlphaKey( spep_2-3 + 120, ctzun2, 255 );
setEffAlphaKey( spep_2-3 + 126, ctzun2, 255 );
setEffAlphaKey( spep_2-3 + 128, ctzun2, 191 );
setEffAlphaKey( spep_2-3 + 130, ctzun2, 102 );
setEffAlphaKey( spep_2-3 + 132, ctzun2, 13 );

--文字エントリー
ctga3 = entryEffectLife( spep_2-3 + 142,  10005, 10, 0x100, -1, 0, 138.1, 190 );--ガッ

setEffMoveKey( spep_2-3 + 142, ctga3, 138.1, 190 , 0 );
setEffMoveKey( spep_2-3 + 144, ctga3, 138.4, 189.9 , 0 );
setEffMoveKey( spep_2-3 + 146, ctga3, 138.2, 190.2 , 0 );
setEffMoveKey( spep_2-3 + 148, ctga3, 138.3, 190.1 , 0 );
setEffMoveKey( spep_2-3 + 152, ctga3, 138.3, 190.1 , 0 );

setEffScaleKey( spep_2-3 + 142, ctga3, 0.8, 0.8 );
setEffScaleKey( spep_2-3 + 144, ctga3, 2.11, 2.11 );
setEffScaleKey( spep_2-3 + 146, ctga3, 2.17, 2.17 );
setEffScaleKey( spep_2-3 + 148, ctga3, 1.75, 1.75 );
setEffScaleKey( spep_2-3 + 150, ctga3, 1.73, 1.73 );
setEffScaleKey( spep_2-3 + 152, ctga3, 1.7, 1.7 );

setEffRotateKey( spep_2-3 + 142, ctga3, -4.1 );
setEffRotateKey( spep_2-3 + 144, ctga3, -17.5 );
setEffRotateKey( spep_2-3 + 146, ctga3, -4.1 );
setEffRotateKey( spep_2-3 + 148, ctga3, -4.3 );
setEffRotateKey( spep_2-3 + 150, ctga3, -4.2 );
setEffRotateKey( spep_2-3 + 152, ctga3, -4.1 );

setEffAlphaKey( spep_2-3 + 142, ctga3, 255 );
setEffAlphaKey( spep_2-3 + 148, ctga3, 255 );
setEffAlphaKey( spep_2-3 + 150, ctga3, 128 );
setEffAlphaKey( spep_2-3 + 152, ctga3, 128 );

--文字エントリー
ctzun3 = entryEffectLife( spep_2-3 + 152,  10016, 10, 0x100, -1, 0, 157.9, 334 );--ズンッ

setEffMoveKey( spep_2-3 + 152, ctzun3, 157.9, 334 , 0 );
setEffMoveKey( spep_2-3 + 154, ctzun3, 158, 334 , 0 );
setEffMoveKey( spep_2-3 + 156, ctzun3, 152.7, 339.3 , 0 );
setEffMoveKey( spep_2-3 + 158, ctzun3, 158.1, 333.9 , 0 );
setEffMoveKey( spep_2-3 + 160, ctzun3, 153.1, 338.5 , 0 );
setEffMoveKey( spep_2-3 + 162, ctzun3, 157.9, 334 , 0 );

setEffScaleKey( spep_2-3 + 152, ctzun3, 1.14, 1.14 );
setEffScaleKey( spep_2-3 + 154, ctzun3, 2.77, 2.77 );
setEffScaleKey( spep_2-3 + 156, ctzun3, 2.55, 2.55 );
setEffScaleKey( spep_2-3 + 158, ctzun3, 2.34, 2.34 );
setEffScaleKey( spep_2-3 + 160, ctzun3, 2.32, 2.32 );
setEffScaleKey( spep_2-3 + 162, ctzun3, 1.99, 1.99 );

setEffRotateKey( spep_2-3 + 152, ctzun3, 3 );
setEffRotateKey( spep_2-3 + 158, ctzun3, 3 );
setEffRotateKey( spep_2-3 + 160, ctzun3, 2.9 );
setEffRotateKey( spep_2-3 + 162, ctzun3, 3 );

setEffAlphaKey( spep_2-3 + 152, ctzun3, 255 );
setEffAlphaKey( spep_2-3 + 158, ctzun3, 255 );
setEffAlphaKey( spep_2-3 + 160, ctzun3, 191 );
setEffAlphaKey( spep_2-3 + 162, ctzun3, 13 );

--文字エントリー
ctbaki = entryEffectLife( spep_2-3 + 160,  10020, 10, 0x100, -1, 0, 137.4, 334.4 );--バキッ

setEffMoveKey( spep_2-3 + 160, ctbaki, 137.4, 334.4 , 0 );
setEffMoveKey( spep_2-3 + 162, ctbaki, 120.3, 352 , 0 );
setEffMoveKey( spep_2-3 + 164, ctbaki, 137.5, 334.3 , 0 );
setEffMoveKey( spep_2-3 + 166, ctbaki, 137.6, 334.4 , 0 );
setEffMoveKey( spep_2-3 + 168, ctbaki, 127.2, 345 , 0 );
setEffMoveKey( spep_2-3 + 170, ctbaki, 137.5, 334.4 , 0 );

setEffScaleKey( spep_2-3 + 160, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_2-3 + 162, ctbaki, 2.88, 2.88 );
setEffScaleKey( spep_2-3 + 164, ctbaki, 1.94, 1.94 );
setEffScaleKey( spep_2-3 + 166, ctbaki, 1.73, 1.73 );
setEffScaleKey( spep_2-3 + 168, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_2-3 + 170, ctbaki, 1.76, 1.76 );

setEffRotateKey( spep_2-3 + 160, ctbaki, 0.8 );
setEffRotateKey( spep_2-3 + 170, ctbaki, 0.8 );

setEffAlphaKey( spep_2-3 + 160, ctbaki, 255 );
setEffAlphaKey( spep_2-3 + 166, ctbaki, 255 );
setEffAlphaKey( spep_2-3 + 168, ctbaki, 134 );
setEffAlphaKey( spep_2-3 + 170, ctbaki, 13 );

--文字エントリー
ctga4 = entryEffectLife( spep_2-3 + 170,  10005, 10, 0x100, -1, 0, 168.2, 180.1 );--ガッ

setEffMoveKey( spep_2-3 + 170, ctga4, 168.2, 180.1 , 0 );
setEffMoveKey( spep_2-3 + 172, ctga4, 168.2, 179.9 , 0 );
setEffMoveKey( spep_2-3 + 174, ctga4, 168.2, 180.2 , 0 );
setEffMoveKey( spep_2-3 + 176, ctga4, 168.3, 180 , 0 );
setEffMoveKey( spep_2-3 + 178, ctga4, 168.2, 180.1 , 0 );
setEffMoveKey( spep_2-3 + 180, ctga4, 168.2, 180.1 , 0 );

setEffScaleKey( spep_2-3 + 170, ctga4, 0.8, 0.8 );
setEffScaleKey( spep_2-3 + 172, ctga4, 2.11, 2.11 );
setEffScaleKey( spep_2-3 + 174, ctga4, 2.17, 2.17 );
setEffScaleKey( spep_2-3 + 176, ctga4, 1.75, 1.75 );
setEffScaleKey( spep_2-3 + 178, ctga4, 1.73, 1.73 );
setEffScaleKey( spep_2-3 + 180, ctga4, 1.7, 1.7 );

setEffRotateKey( spep_2-3 + 170, ctga4, 16.8 );
setEffRotateKey( spep_2-3 + 172, ctga4, 3.4 );
setEffRotateKey( spep_2-3 + 174, ctga4, 16.8 );
setEffRotateKey( spep_2-3 + 176, ctga4, 16.6 );
setEffRotateKey( spep_2-3 + 178, ctga4, 16.7 );
setEffRotateKey( spep_2-3 + 180, ctga4, 16.8 );

setEffAlphaKey( spep_2-3 + 170, ctga4, 255 );
setEffAlphaKey( spep_2-3 + 176, ctga4, 255 );
setEffAlphaKey( spep_2-3 + 178, ctga4, 128 );
setEffAlphaKey( spep_2-3 + 180, ctga4, 0 );

--文字エントリー
ctzun4 = entryEffectLife( spep_2-3 + 180,  10016, 12, 0x100, -1, 0, 91.8, 366 );--ズンッ

setEffMoveKey( spep_2-3 + 180, ctzun4, 91.8, 366 , 0 );
setEffMoveKey( spep_2-3 + 182, ctzun4, 92, 366 , 0 );
setEffMoveKey( spep_2-3 + 184, ctzun4, 85.2, 369.2 , 0 );
setEffMoveKey( spep_2-3 + 186, ctzun4, 92, 365.9 , 0 );
setEffMoveKey( spep_2-3 + 188, ctzun4, 85.9, 368.6 , 0 );
setEffMoveKey( spep_2-3 + 190, ctzun4, 92, 365.8 , 0 );
setEffMoveKey( spep_2-3 + 192, ctzun4, 91.9, 365.9 , 0 );

setEffScaleKey( spep_2-3 + 180, ctzun4, 1.14, 1.14 );
setEffScaleKey( spep_2-3 + 182, ctzun4, 2.77, 2.77 );
setEffScaleKey( spep_2-3 + 184, ctzun4, 2.55, 2.55 );
setEffScaleKey( spep_2-3 + 186, ctzun4, 2.34, 2.34 );
setEffScaleKey( spep_2-3 + 188, ctzun4, 2.32, 2.32 );
setEffScaleKey( spep_2-3 + 190, ctzun4, 2.15, 2.15 );
setEffScaleKey( spep_2-3 + 192, ctzun4, 1.99, 1.99 );

setEffRotateKey( spep_2-3 + 180, ctzun4, -16.5 );
setEffRotateKey( spep_2-3 + 186, ctzun4, -16.5 );
setEffRotateKey( spep_2-3 + 188, ctzun4, -16.6 );
setEffRotateKey( spep_2-3 + 190, ctzun4, -16.5 );
setEffRotateKey( spep_2-3 + 192, ctzun4, -16.5 );

setEffAlphaKey( spep_2-3 + 180, ctzun4, 255 );
setEffAlphaKey( spep_2-3 + 186, ctzun4, 255 );
setEffAlphaKey( spep_2-3 + 188, ctzun4, 191 );
setEffAlphaKey( spep_2-3 + 190, ctzun4, 102 );
setEffAlphaKey( spep_2-3 + 192, ctzun4, 13 );

--文字エントリー
ctga5 = entryEffectLife( spep_2-3 + 188,  10005, 12, 0x100, -1, 0, 108.1, 396 );--ガッ

setEffMoveKey( spep_2-3 + 188, ctga5, 108.1, 396 , 0 );
setEffMoveKey( spep_2-3 + 190, ctga5, 108.4, 396 , 0 );
setEffMoveKey( spep_2-3 + 192, ctga5, 108.2, 396.2 , 0 );
setEffMoveKey( spep_2-3 + 194, ctga5, 108.2, 396.1 , 0 );
setEffMoveKey( spep_2-3 + 196, ctga5, 108.2, 396.1 , 0 );
setEffMoveKey( spep_2-3 + 200, ctga5, 108.3, 396.1 , 0 );

setEffScaleKey( spep_2-3 + 188, ctga5, 0.9, 0.9 );
setEffScaleKey( spep_2-3 + 190, ctga5, 2.37, 2.37 );
setEffScaleKey( spep_2-3 + 192, ctga5, 2.44, 2.44 );
setEffScaleKey( spep_2-3 + 194, ctga5, 2.21, 2.21 );
setEffScaleKey( spep_2-3 + 196, ctga5, 1.97, 1.97 );
setEffScaleKey( spep_2-3 + 198, ctga5, 1.94, 1.94 );
setEffScaleKey( spep_2-3 + 200, ctga5, 1.91, 1.91 );

setEffRotateKey( spep_2-3 + 188, ctga5, -4.4 );
setEffRotateKey( spep_2-3 + 190, ctga5, -17.8 );
setEffRotateKey( spep_2-3 + 192, ctga5, -4.4 );
setEffRotateKey( spep_2-3 + 194, ctga5, -4.5 );
setEffRotateKey( spep_2-3 + 196, ctga5, -4.6 );
setEffRotateKey( spep_2-3 + 198, ctga5, -4.5 );
setEffRotateKey( spep_2-3 + 200, ctga5, -4.4 );

setEffAlphaKey( spep_2-3 + 188, ctga5, 255 );
setEffAlphaKey( spep_2-3 + 196, ctga5, 255 );
setEffAlphaKey( spep_2-3 + 198, ctga5, 128 );
setEffAlphaKey( spep_2-3 + 200, ctga5, 0 );


--文字エントリー
ctbagolo = entryEffectLife( spep_2-7 + 228,  10021, 28, 0x100, -1, 0, 53.1, 361.8 );--バゴォッ

setEffMoveKey( spep_2-7 + 228, ctbagolo, 53.1, 361.8 , 0 );
setEffMoveKey( spep_2-7 + 230, ctbagolo, 52.6, 361.1 , 0 );
setEffMoveKey( spep_2-7 + 232, ctbagolo, 53.1, 361.7 , 0 );
setEffMoveKey( spep_2-7 + 234, ctbagolo, 38.5, 384.7 , 0 );
setEffMoveKey( spep_2-7 + 236, ctbagolo, 53.1, 361.8 , 0 );
setEffMoveKey( spep_2-7 + 238, ctbagolo, 38.9, 384.1 , 0 );
setEffMoveKey( spep_2-7 + 240, ctbagolo, 53.2, 361.9 , 0 );
setEffMoveKey( spep_2-7 + 242, ctbagolo, 39.4, 383.5 , 0 );
setEffMoveKey( spep_2-7 + 244, ctbagolo, 53.2, 361.9 , 0 );
setEffMoveKey( spep_2-7 + 246, ctbagolo, 39.8, 382.9 , 0 );
setEffMoveKey( spep_2-7 + 248, ctbagolo, 53.3, 362 , 0 );
setEffMoveKey( spep_2-7 + 250, ctbagolo, 40.8, 381.6 , 0 );
setEffMoveKey( spep_2-7 + 252, ctbagolo, 53.3, 362.1 , 0 );
setEffMoveKey( spep_2-7 + 254, ctbagolo, 42.3, 379.4 , 0 );
setEffMoveKey( spep_2-7 + 256, ctbagolo, 43.1, 378.3 , 0 );

setEffScaleKey( spep_2-7 + 228, ctbagolo, 1.55, 1.55 );
setEffScaleKey( spep_2-7 + 230, ctbagolo, 4.28, 4.28 );
setEffScaleKey( spep_2-7 + 232, ctbagolo, 3.21, 3.21 );
setEffScaleKey( spep_2-7 + 234, ctbagolo, 3.17, 3.17 );
setEffScaleKey( spep_2-7 + 236, ctbagolo, 3.12, 3.12 );
setEffScaleKey( spep_2-7 + 238, ctbagolo, 3.08, 3.08 );
setEffScaleKey( spep_2-7 + 240, ctbagolo, 3.03, 3.03 );
setEffScaleKey( spep_2-7 + 242, ctbagolo, 2.99, 2.99 );
setEffScaleKey( spep_2-7 + 244, ctbagolo, 2.94, 2.94 );
setEffScaleKey( spep_2-7 + 246, ctbagolo, 2.9, 2.9 );
setEffScaleKey( spep_2-7 + 248, ctbagolo, 2.85, 2.85 );
setEffScaleKey( spep_2-7 + 250, ctbagolo, 2.69, 2.69 );
setEffScaleKey( spep_2-7 + 252, ctbagolo, 2.53, 2.53 );
setEffScaleKey( spep_2-7 + 254, ctbagolo, 2.37, 2.37 );
setEffScaleKey( spep_2-7 + 256, ctbagolo, 2.21, 2.21 );

setEffRotateKey( spep_2-7 + 228, ctbagolo, 3 );
setEffRotateKey( spep_2-7 + 256, ctbagolo, 3 );

setEffAlphaKey( spep_2-7 + 228, ctbagolo, 255 );
setEffAlphaKey( spep_2-7 + 248, ctbagolo, 255 );
setEffAlphaKey( spep_2-7 + 250, ctbagolo, 191 );
setEffAlphaKey( spep_2-7 + 252, ctbagolo, 128 );
setEffAlphaKey( spep_2-7 + 254, ctbagolo, 64 );
setEffAlphaKey( spep_2-7 + 256, ctbagolo, 0 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2-3 + 251, 1, 0 );

changeAnime( spep_2 + 0, 1, 106 );
changeAnime( spep_2-3 + 78, 1, 108 );
changeAnime( spep_2-3 + 88, 1, 106 );
changeAnime( spep_2-3 + 110, 1, 108 );
changeAnime( spep_2-3 + 120, 1, 106 );
changeAnime( spep_2-3 + 142, 1, 108 );
changeAnime( spep_2-3 + 152, 1, 106 );
changeAnime( spep_2-3 + 162, 1, 108 );
changeAnime( spep_2-3 + 180, 1, 106 );
changeAnime( spep_2-3 + 190, 1, 108 );
changeAnime( spep_2-3 + 198, 1, 106 );
changeAnime( spep_2-3 + 226, 1, 108 );

setMoveKey( spep_2 + 0, 1, -1203.7, 73.6 , 0 );
--setMoveKey( spep_2-3 + 2, 1, -1042.5, 76.2 , 0 );
setMoveKey( spep_2-3 + 4, 1, -895.5, 78.5 , 0 );
setMoveKey( spep_2-3 + 6, 1, -742.3, 80.9 , 0 );
setMoveKey( spep_2-3 + 8, 1, -593.6, 83.2 , 0 );
setMoveKey( spep_2-3 + 10, 1, -455.9, 85.3 , 0 );
setMoveKey( spep_2-3 + 12, 1, -315.4, 87.5 , 0 );
setMoveKey( spep_2-3 + 14, 1, -179.4, 89.5 , 0 );
setMoveKey( spep_2-3 + 16, 1, -50.9, 91.3 , 0 );
setMoveKey( spep_2-3 + 18, 1, -42.9, 89.5 , 0 );
setMoveKey( spep_2-3 + 20, 1, -35.1, 87.6 , 0 );
setMoveKey( spep_2-3 + 22, 1, -30.3, 85.6 , 0 );
setMoveKey( spep_2-3 + 24, 1, -23, 83.8 , 0 );
setMoveKey( spep_2-3 + 26, 1, -16.3, 82.9 , 0 );
setMoveKey( spep_2-3 + 28, 1, -9.6, 82.1 , 0 );
setMoveKey( spep_2-3 + 30, 1, -3.1, 81.2 , 0 );
setMoveKey( spep_2-3 + 32, 1, 3.6, 80.4 , 0 );
setMoveKey( spep_2-3 + 34, 1, 10.2, 79.5 , 0 );
setMoveKey( spep_2-3 + 36, 1, 16.9, 78.6 , 0 );
setMoveKey( spep_2-3 + 38, 1, 21.4, 77.7 , 0 );
setMoveKey( spep_2-3 + 40, 1, 28.1, 76.8 , 0 );
setMoveKey( spep_2-3 + 42, 1, 34.8, 76 , 0 );
setMoveKey( spep_2-3 + 44, 1, 41.5, 75.1 , 0 );
setMoveKey( spep_2-3 + 46, 1, 48.2, 74.2 , 0 );
setMoveKey( spep_2-3 + 48, 1, 55, 73.4 , 0 );
setMoveKey( spep_2-3 + 50, 1, 61.6, 72.5 , 0 );
setMoveKey( spep_2-3 + 52, 1, 68.3, 71.7 , 0 );
setMoveKey( spep_2-3 + 54, 1, 75, 70.8 , 0 );
setMoveKey( spep_2-3 + 56, 1, 81.7, 69.9 , 0 );
setMoveKey( spep_2-3 + 58, 1, 88.4, 69.1 , 0 );
setMoveKey( spep_2-3 + 60, 1, 95.1, 68.2 , 0 );
setMoveKey( spep_2-3 + 62, 1, 101.9, 67.4 , 0 );
setMoveKey( spep_2-3 + 64, 1, 108.5, 66.5 , 0 );
setMoveKey( spep_2-3 + 66, 1, 115.2, 65.6 , 0 );
setMoveKey( spep_2-3 + 68, 1, 122, 64.8 , 0 );
setMoveKey( spep_2-3 + 70, 1, 127.5, 63.7 , 0 );
setMoveKey( spep_2-3 + 72, 1, 134.3, 62.9 , 0 );
setMoveKey( spep_2-3 + 74, 1, 141, 62 , 0 );
setMoveKey( spep_2-3 + 77, 1, 147.8, 61.1 , 0 );
setMoveKey( spep_2-3 + 78, 1, 176.4, -55.3 , 0 );
setMoveKey( spep_2-3 + 80, 1, 175.3, -78.1 , 0 );
setMoveKey( spep_2-3 + 82, 1, 182.2, -68.8 , 0 );
setMoveKey( spep_2-3 + 84, 1, 171.1, -74.7 , 0 );
setMoveKey( spep_2-3 + 87, 1, 184.1, -72.5 , 0 );
setMoveKey( spep_2-3 + 88, 1, 135, 105 , 0 );
setMoveKey( spep_2-3 + 90, 1, 145.4, 141.4 , 0 );
setMoveKey( spep_2-3 + 92, 1, 139.9, 162 , 0 );
setMoveKey( spep_2-3 + 94, 1, 158.3, 190.5 , 0 );
setMoveKey( spep_2-3 + 96, 1, 158, 194.3 , 0 );
setMoveKey( spep_2-3 + 98, 1, 165.7, 214.3 , 0 );
setMoveKey( spep_2-3 + 100, 1, 164.6, 223.5 , 0 );
setMoveKey( spep_2-3 + 102, 1, 172.2, 239.6 , 0 );
setMoveKey( spep_2-3 + 104, 1, 176, 251.5 , 0 );
setMoveKey( spep_2-3 + 106, 1, 179.8, 263.5 , 0 );
setMoveKey( spep_2-3 + 109, 1, 183.4, 275.6 , 0 );
setMoveKey( spep_2-3 + 110, 1, 175.8, -75.3 , 0 );
setMoveKey( spep_2-3 + 112, 1, 182.7, -66 , 0 );
setMoveKey( spep_2-3 + 114, 1, 173.7, -76.8 , 0 );
setMoveKey( spep_2-3 + 116, 1, 186.7, -74.7 , 0 );
setMoveKey( spep_2-3 + 119, 1, 183.6, -88.5 , 0 );
setMoveKey( spep_2-3 + 120, 1, 142.1, 114.7 , 0 );
setMoveKey( spep_2-3 + 122, 1, 140.5, 135.5 , 0 );
setMoveKey( spep_2-3 + 124, 1, 155, 164.2 , 0 );
setMoveKey( spep_2-3 + 126, 1, 157.6, 180.9 , 0 );
setMoveKey( spep_2-3 + 128, 1, 165.3, 200.9 , 0 );
setMoveKey( spep_2-3 + 130, 1, 156.2, 210.1 , 0 );
setMoveKey( spep_2-3 + 132, 1, 171.9, 226.3 , 0 );
setMoveKey( spep_2-3 + 134, 1, 175.7, 238.4 , 0 );
setMoveKey( spep_2-3 + 136, 1, 179.5, 250.6 , 0 );
setMoveKey( spep_2-3 + 138, 1, 183.2, 262.8 , 0 );
setMoveKey( spep_2-3 + 141, 1, 187, 274.9 , 0 );
setMoveKey( spep_2-3 + 142, 1, 183.3, -63.1 , 0 );
setMoveKey( spep_2-3 + 144, 1, 182.2, -89.9 , 0 );
setMoveKey( spep_2-3 + 146, 1, 189.2, -76.8 , 0 );
setMoveKey( spep_2-3 + 148, 1, 182.1, -82.6 , 0 );
setMoveKey( spep_2-3 + 151, 1, 191.1, -80.5 , 0 );
setMoveKey( spep_2-3 + 152, 1, 160.7, 120.1 , 0 );
setMoveKey( spep_2-3 + 154, 1, 168.1, 142.3 , 0 );
setMoveKey( spep_2-3 + 156, 1, 163.4, 148.4 , 0 );
setMoveKey( spep_2-3 + 158, 1, 178.5, 159.1 , 0 );
setMoveKey( spep_2-3 + 161, 1, 181, 150.6 , 0 );
setMoveKey( spep_2-3 + 162, 1, 229.5, 128.7 , 0 );
setMoveKey( spep_2-3 + 164, 1, 225.8, 126.4 , 0 );
setMoveKey( spep_2-3 + 166, 1, 246.2, 140 , 0 );
setMoveKey( spep_2-3 + 168, 1, 250.5, 137.7 , 0 );
setMoveKey( spep_2-3 + 170, 1, 186.2, -66.6 , 0 );
setMoveKey( spep_2-3 + 172, 1, 185.1, -77.6 , 0 );
setMoveKey( spep_2-3 + 174, 1, 192.2, -80.5 , 0 );
setMoveKey( spep_2-3 + 176, 1, 185.2, -86.4 , 0 );
setMoveKey( spep_2-3 + 179, 1, 199.2, -83.8 , 0 );
setMoveKey( spep_2-3 + 180, 1, 172.8, 123.6 , 0 );
setMoveKey( spep_2-3 + 182, 1, 185.2, 142.4 , 0 );
setMoveKey( spep_2-3 + 184, 1, 189.7, 145.2 , 0 );
setMoveKey( spep_2-3 + 186, 1, 205.2, 161.2 , 0 );
setMoveKey( spep_2-3 + 189, 1, 213.6, 164.4 , 0 );
setMoveKey( spep_2-3 + 190, 1, 186, 170 , 0 );
setMoveKey( spep_2-3 + 192, 1, 194.4, 166.6 , 0 );
setMoveKey( spep_2-3 + 194, 1, 210.9, 187.2 , 0 );
setMoveKey( spep_2-3 + 197, 1, 214.5, 192.7 , 0 );
setMoveKey( spep_2-3 + 198, 1, 160.6, 185.9 , 0 );
setMoveKey( spep_2-3 + 200, 1, 164.7, 181.3 , 0 );
setMoveKey( spep_2-3 + 202, 1, 175.4, 193.5 , 0 );
setMoveKey( spep_2-3 + 204, 1, 183.5, 196.9 , 0 );
setMoveKey( spep_2-3 + 206, 1, 198.3, 201.9 , 0 );
setMoveKey( spep_2-3 + 208, 1, 213.1, 207 , 0 );
setMoveKey( spep_2-3 + 210, 1, 228.1, 212.2 , 0 );
setMoveKey( spep_2-3 + 212, 1, 244.3, 216.6 , 0 );
setMoveKey( spep_2-3 + 214, 1, 259.4, 221.9 , 0 );
setMoveKey( spep_2-3 + 216, 1, 274.6, 227.4 , 0 );
setMoveKey( spep_2-3 + 218, 1, 289.9, 233.1 , 0 );
setMoveKey( spep_2-3 + 220, 1, 305.3, 238.9 , 0 );
setMoveKey( spep_2-3 + 222, 1, 321.9, 243.5 , 0 );
setMoveKey( spep_2-3 + 225, 1, 337.5, 249.4 , 0 );
setMoveKey( spep_2-3 + 226, 1, 327.7, 102.1 , 0 );
setMoveKey( spep_2-3 + 228, 1, 238.3, 97.1 , 0 );
setMoveKey( spep_2-3 + 230, 1, 274.8, 141.9 , 0 );
setMoveKey( spep_2-3 + 232, 1, 284.1, 151.1 , 0 );
setMoveKey( spep_2-3 + 234, 1, 296.7, 161.5 , 0 );
setMoveKey( spep_2-3 + 236, 1, 285.4, 149.6 , 0 );
setMoveKey( spep_2-3 + 238, 1, 298.6, 169.9 , 0 );
setMoveKey( spep_2-3 + 240, 1, 299.8, 161.5 , 0 );
setMoveKey( spep_2-3 + 242, 1, 617, 231.5 , 0 );
setMoveKey( spep_2-3 + 244, 1, 904.1, 279 , 0 );
setMoveKey( spep_2-3 + 246, 1, 1212.3, 342.5 , 0 );
setMoveKey( spep_2-3 + 248, 1, 1489.1, 382.7 , 0 );
setMoveKey( spep_2-3 + 251, 1, 1776.2, 447.8 , 0 );

setScaleKey( spep_2 + 0, 1, 1.87, 1.87 );
--setScaleKey( spep_2-3 + 2, 1, 1.85, 1.85 );
setScaleKey( spep_2-3 + 4, 1, 1.84, 1.84 );
setScaleKey( spep_2-3 + 6, 1, 1.81, 1.81 );
setScaleKey( spep_2-3 + 8, 1, 1.79, 1.79 );
setScaleKey( spep_2-3 + 10, 1, 1.78, 1.78 );
setScaleKey( spep_2-3 + 12, 1, 1.75, 1.75 );
setScaleKey( spep_2-3 + 14, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 16, 1, 1.71, 1.71 );
setScaleKey( spep_2-3 + 18, 1, 1.68, 1.68 );
setScaleKey( spep_2-3 + 20, 1, 1.65, 1.65 );
setScaleKey( spep_2-3 + 22, 1, 1.64, 1.64 );
setScaleKey( spep_2-3 + 24, 1, 1.61, 1.61 );
setScaleKey( spep_2-3 + 36, 1, 1.61, 1.61 );
setScaleKey( spep_2-3 + 38, 1, 1.63, 1.63 );
setScaleKey( spep_2-3 + 52, 1, 1.63, 1.63 );
setScaleKey( spep_2-3 + 54, 1, 1.64, 1.64 );
setScaleKey( spep_2-3 + 68, 1, 1.64, 1.64 );
setScaleKey( spep_2-3 + 70, 1, 1.66, 1.66 );
setScaleKey( spep_2-3 + 98, 1, 1.66, 1.66 );
setScaleKey( spep_2-3 + 100, 1, 1.67, 1.67 );
setScaleKey( spep_2-3 + 128, 1, 1.67, 1.67 );
setScaleKey( spep_2-3 + 130, 1, 1.69, 1.69 );
setScaleKey( spep_2-3 + 158, 1, 1.69, 1.69 );
setScaleKey( spep_2-3 + 161, 1, 1.71, 1.71 );
setScaleKey( spep_2-3 + 162, 1, 1.7, 1.7 );
setScaleKey( spep_2-3 + 179, 1, 1.7, 1.7 );
setScaleKey( spep_2-3 + 180, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 184, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 186, 1, 1.74, 1.74 );
setScaleKey( spep_2-3 + 189, 1, 1.74, 1.74 );
setScaleKey( spep_2-3 + 190, 1, 1.75, 1.75 );
setScaleKey( spep_2-3 + 194, 1, 1.75, 1.75 );
setScaleKey( spep_2-3 + 197, 1, 1.76, 1.76 );
setScaleKey( spep_2-3 + 200, 1, 1.76, 1.76 );
setScaleKey( spep_2-3 + 202, 1, 1.78, 1.78 );
setScaleKey( spep_2-3 + 204, 1, 1.78, 1.78 );
setScaleKey( spep_2-3 + 206, 1, 1.81, 1.81 );
setScaleKey( spep_2-3 + 208, 1, 1.84, 1.84 );
setScaleKey( spep_2-3 + 210, 1, 1.87, 1.87 );
setScaleKey( spep_2-3 + 212, 1, 1.89, 1.89 );
setScaleKey( spep_2-3 + 214, 1, 1.92, 1.92 );
setScaleKey( spep_2-3 + 216, 1, 1.95, 1.95 );
setScaleKey( spep_2-3 + 218, 1, 1.98, 1.98 );
setScaleKey( spep_2-3 + 220, 1, 2.01, 2.01 );
setScaleKey( spep_2-3 + 222, 1, 2.03, 2.03 );
setScaleKey( spep_2-3 + 225, 1, 2.06, 2.06 );
setScaleKey( spep_2-3 + 226, 1, 2.09, 2.09 );
setScaleKey( spep_2-3 + 228, 1, 3.87, 3.87 );
setScaleKey( spep_2-3 + 230, 1, 3.39, 3.39 );
setScaleKey( spep_2-3 + 232, 1, 2.91, 2.91 );
setScaleKey( spep_2-3 + 234, 1, 2.41, 2.41 );
setScaleKey( spep_2-3 + 236, 1, 1.94, 1.94 );
setScaleKey( spep_2-3 + 238, 1, 1.92, 1.92 );
setScaleKey( spep_2-3 + 240, 1, 1.89, 1.89 );
setScaleKey( spep_2-3 + 242, 1, 1.88, 1.88 );
setScaleKey( spep_2-3 + 244, 1, 1.84, 1.84 );
setScaleKey( spep_2-3 + 246, 1, 1.83, 1.83 );
setScaleKey( spep_2-3 + 248, 1, 1.8, 1.8 );
setScaleKey( spep_2-3 + 251, 1, 1.78, 1.78 );

setRotateKey( spep_2 + 0, 1, 17.6 );
setRotateKey( spep_2-3 + 8, 1, 17.6 );
setRotateKey( spep_2-3 + 10, 1, 17.5 );
setRotateKey( spep_2-3 + 16, 1, 17.5 );
setRotateKey( spep_2-3 + 18, 1, 17.6 );
setRotateKey( spep_2-3 + 20, 1, 17.8 );
setRotateKey( spep_2-3 + 22, 1, 17.9 );
setRotateKey( spep_2-3 + 24, 1, 18.1 );
setRotateKey( spep_2-3 + 26, 1, 18.2 );
setRotateKey( spep_2-3 + 28, 1, 18.4 );
setRotateKey( spep_2-3 + 30, 1, 18.5 );
setRotateKey( spep_2-3 + 32, 1, 18.6 );
setRotateKey( spep_2-3 + 34, 1, 18.8 );
setRotateKey( spep_2-3 + 36, 1, 18.9 );
setRotateKey( spep_2-3 + 38, 1, 19.1 );
setRotateKey( spep_2-3 + 40, 1, 19.2 );
setRotateKey( spep_2-3 + 42, 1, 19.4 );
setRotateKey( spep_2-3 + 44, 1, 19.5 );
setRotateKey( spep_2-3 + 46, 1, 19.7 );
setRotateKey( spep_2-3 + 48, 1, 19.8 );
setRotateKey( spep_2-3 + 50, 1, 19.9 );
setRotateKey( spep_2-3 + 52, 1, 20.1 );
setRotateKey( spep_2-3 + 54, 1, 20.2 );
setRotateKey( spep_2-3 + 56, 1, 20.4 );
setRotateKey( spep_2-3 + 58, 1, 20.5 );
setRotateKey( spep_2-3 + 60, 1, 20.7 );
setRotateKey( spep_2-3 + 62, 1, 20.8 );
setRotateKey( spep_2-3 + 64, 1, 20.9 );
setRotateKey( spep_2-3 + 66, 1, 21.1 );
setRotateKey( spep_2-3 + 68, 1, 21.2 );
setRotateKey( spep_2-3 + 70, 1, 21.4 );
setRotateKey( spep_2-3 + 72, 1, 21.5 );
setRotateKey( spep_2-3 + 74, 1, 21.7 );
setRotateKey( spep_2-3 + 77, 1, 21.8 );
setRotateKey( spep_2-3 + 78, 1, 56.2 );
setRotateKey( spep_2-3 + 87, 1, 56.2 );
setRotateKey( spep_2-3 + 88, 1, 5.3 );
setRotateKey( spep_2-3 + 90, 1, 7.2 );
setRotateKey( spep_2-3 + 92, 1, 9.2 );
setRotateKey( spep_2-3 + 94, 1, 11.1 );
setRotateKey( spep_2-3 + 96, 1, 12.2 );
setRotateKey( spep_2-3 + 98, 1, 13.2 );
setRotateKey( spep_2-3 + 100, 1, 14.3 );
setRotateKey( spep_2-3 + 102, 1, 15.4 );
setRotateKey( spep_2-3 + 104, 1, 16.5 );
setRotateKey( spep_2-3 + 106, 1, 17.5 );
setRotateKey( spep_2-3 + 109, 1, 18.6 );
setRotateKey( spep_2-3 + 110, 1, 56.2 );
setRotateKey( spep_2-3 + 119, 1, 56.2 );
setRotateKey( spep_2-3 + 120, 1, 5.3 );
setRotateKey( spep_2-3 + 122, 1, 7.2 );
setRotateKey( spep_2-3 + 124, 1, 9.2 );
setRotateKey( spep_2-3 + 126, 1, 11.1 );
setRotateKey( spep_2-3 + 128, 1, 12.2 );
setRotateKey( spep_2-3 + 130, 1, 13.2 );
setRotateKey( spep_2-3 + 132, 1, 14.3 );
setRotateKey( spep_2-3 + 134, 1, 15.4 );
setRotateKey( spep_2-3 + 136, 1, 16.5 );
setRotateKey( spep_2-3 + 138, 1, 17.5 );
setRotateKey( spep_2-3 + 141, 1, 18.6 );
setRotateKey( spep_2-3 + 142, 1, 56.2 );
setRotateKey( spep_2-3 + 151, 1, 56.2 );
setRotateKey( spep_2-3 + 152, 1, 21.6 );
setRotateKey( spep_2-3 + 154, 1, 24.5 );
setRotateKey( spep_2-3 + 156, 1, 27.3 );
setRotateKey( spep_2-3 + 161, 1, 27.3 );
setRotateKey( spep_2-3 + 162, 1, -8.1 );
setRotateKey( spep_2-3 + 168, 1, -8.1 );
setRotateKey( spep_2-3 + 170, 1, 56.2 );
setRotateKey( spep_2-3 + 179, 1, 56.2 );
setRotateKey( spep_2-3 + 180, 1, 21.6 );
setRotateKey( spep_2-3 + 182, 1, 24.5 );
setRotateKey( spep_2-3 + 184, 1, 27.3 );
setRotateKey( spep_2-3 + 189, 1, 27.3 );
setRotateKey( spep_2-3 + 190, 1, -15.5 );
setRotateKey( spep_2-3 + 192, 1, -11.8 );
setRotateKey( spep_2-3 + 194, 1, -8 );
setRotateKey( spep_2-3 + 197, 1, -4.3 );
setRotateKey( spep_2-3 + 198, 1, -38.6 );
setRotateKey( spep_2-3 + 200, 1, -37.9 );
setRotateKey( spep_2-3 + 202, 1, -37.1 );
setRotateKey( spep_2-3 + 204, 1, -36.4 );
setRotateKey( spep_2-3 + 206, 1, -35.6 );
setRotateKey( spep_2-3 + 208, 1, -34.9 );
setRotateKey( spep_2-3 + 210, 1, -34.2 );
setRotateKey( spep_2-3 + 212, 1, -33.4 );
setRotateKey( spep_2-3 + 214, 1, -32.7 );
setRotateKey( spep_2-3 + 216, 1, -32 );
setRotateKey( spep_2-3 + 218, 1, -31.2 );
setRotateKey( spep_2-3 + 220, 1, -30.5 );
setRotateKey( spep_2-3 + 222, 1, -29.7 );
setRotateKey( spep_2-3 + 225, 1, -29 );
setRotateKey( spep_2-3 + 226, 1, -3.7 );
setRotateKey( spep_2-3 + 228, 1, -4.5 );
setRotateKey( spep_2-3 + 230, 1, -5.2 );
setRotateKey( spep_2-3 + 232, 1, -6 );
setRotateKey( spep_2-3 + 234, 1, -6.6 );
setRotateKey( spep_2-3 + 236, 1, -7.2 );
setRotateKey( spep_2-3 + 238, 1, -7.9 );
setRotateKey( spep_2-3 + 240, 1, -8.5 );
setRotateKey( spep_2-3 + 242, 1, -7.1 );
setRotateKey( spep_2-3 + 244, 1, -5.7 );
setRotateKey( spep_2-3 + 246, 1, -4.3 );
setRotateKey( spep_2-3 + 248, 1, -2.9 );
setRotateKey( spep_2-3 + 251, 1, -1.5 );

--SE
playSe( spep_2 + 40, 8 );
playSe( spep_2 + 52, 1003 );
playSe( spep_2 + 52, 1111 );
playSe( spep_2 + 69, 1189 );
playSe( spep_2 + 75, 1000 );
playSe( spep_2 + 77, 1006 );
playSe( spep_2 + 86, 1001 );
playSe( spep_2 + 104, 1189 );
playSe( spep_2 + 108, 1009 );
playSe( spep_2 + 121, 1001 );
playSe( spep_2 + 140, 1009 );
playSe( spep_2 + 149, 1189 );
playSe( spep_2 + 153, 1001 );
playSe( spep_2 + 157, 1189 );
playSe( spep_2 + 161, 1010 );
playSe( spep_2 + 180, 1007 );
playSe( spep_2 + 184, 1001 );
playSe( spep_2 + 192, 1009 );
playSe( spep_2 + 223, 1123 );

setSeVolume( spep_2 + 52, 1111, 316 );
setSeVolume( spep_2 + 86, 1001, 79 );
setSeVolume( spep_2 + 104, 1189, 50 );
setSeVolume( spep_2 + 121, 1001, 79 );
setSeVolume( spep_2 + 153, 1001, 79 );
setSeVolume( spep_2 + 184, 1001, 79 );

--白フェード
entryFade( spep_2+260, 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 266;

------------------------------------------------------
--連撃
------------------------------------------------------
-- ** エフェクト等 ** --
fry_f = entryEffect( spep_3 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_3 + 0, fry_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 70, fry_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, fry_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 70, fry_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fry_f, 0 );
setEffRotateKey( spep_3 + 70, fry_f, 0 );
setEffAlphaKey( spep_3 + 0, fry_f, 255 );
setEffAlphaKey( spep_3 + 70, fry_f, 255 );

-- ** エフェクト等 ** --
fry_b = entryEffect( spep_3 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_3 + 0, fry_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 70, fry_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, fry_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 70, fry_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fry_b, 0 );
setEffRotateKey( spep_3 + 70, fry_b, 0 );
setEffAlphaKey( spep_3 + 0, fry_b, 255 );
setEffAlphaKey( spep_3 + 70, fry_b, 255 );

--敵の動き
setDisp( spep_3-3 + 8, 1, 1 );
setDisp( spep_3-3 +46, 1, 0 );

changeAnime( spep_3 + 0, 1, 108 );

setMoveKey( spep_3 -3 + 8, 1, -476.7, -75.8 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -375.9, -33.5 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -267, 12.3 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -159.7, 57.4 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -49.2, 103.7 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 65.5, 152.1 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 195.2, 207.9 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 263, 237.2 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 331.4, 266.9 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 400.9, 297.1 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 471.7, 327.7 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 542.7, 358.3 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 616.1, 390.1 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 688.5, 421.4 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 764.2, 454.2 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 838.1, 486.2 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 916.2, 519.9 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 991.4, 552.5 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 1071.8, 587.2 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 1148.3, 620.4 , 0 );

setScaleKey( spep_3 -3 + 8, 1, 0.66, 0.66 );
setScaleKey( spep_3 -3 + 10, 1, 0.65, 0.65 );
setScaleKey( spep_3 -3 + 12, 1, 0.64, 0.64 );
setScaleKey( spep_3 -3 + 14, 1, 0.63, 0.63 );
setScaleKey( spep_3 -3 + 16, 1, 0.62, 0.62 );
setScaleKey( spep_3 -3 + 18, 1, 0.6, 0.6 );
setScaleKey( spep_3 -3 + 24, 1, 0.6, 0.6 );
setScaleKey( spep_3 -3 + 26, 1, 0.59, 0.59 );
setScaleKey( spep_3 -3 + 36, 1, 0.59, 0.59 );
setScaleKey( spep_3 -3 + 38, 1, 0.58, 0.58 );
setScaleKey( spep_3 -3 + 46, 1, 0.58, 0.58 );

setRotateKey( spep_3 -3 + 8, 1, -11 );
setRotateKey( spep_3 -3 + 10, 1, -11 );
setRotateKey( spep_3 -3 + 12, 1, -10.9 );
setRotateKey( spep_3 -3 + 18, 1, -10.9 );
setRotateKey( spep_3 -3 + 20, 1, -10.8 );
setRotateKey( spep_3 -3 + 24, 1, -10.8 );
setRotateKey( spep_3 -3 + 26, 1, -10.9 );
setRotateKey( spep_3 -3 + 38, 1, -10.9 );
setRotateKey( spep_3 -3 + 46, 1, -11 );

--SE
se_1159 = playSe( spep_3 + 17, 1159 );
se_1044 = playSe( spep_3 + 17, 1044 );
setSeVolume( spep_3 + 17, 1044, 50 );

--白フェード
entryFade( spep_3+64, 0, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 70;
------------------------------------------------------
--溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_4 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_4 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_4 + 150, tame, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_4 + 150, tame, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame, 0 );
setEffRotateKey( spep_4 + 150, tame, 0 );
setEffAlphaKey( spep_4 + 0, tame, 255 );
setEffAlphaKey( spep_4 + 150, tame, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_4 + 27,  906, 123, 0x100, -1, 0, 0, 0 );

setEffShake( spep_4+27 , shuchusen3, 123, 20 );

setEffMoveKey( spep_4 + 27, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 150, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 27, shuchusen3, 1.09, 1.32 );
setEffScaleKey( spep_4 + 150, shuchusen3, 1.09, 1.32 );

setEffRotateKey( spep_4 + 27, shuchusen3, 180 );
setEffRotateKey( spep_4 + 150, shuchusen3, 180 );

setEffAlphaKey( spep_4 + 27, shuchusen3, 206 );
setEffAlphaKey( spep_4 + 150, shuchusen3, 206 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_4 + 30, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_4 + 30, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_4 +42, 190006, 72, 0x100, -1, 0, 155, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_4 +42,  ctgogo,  155,  510);
setEffMoveKey(  spep_4 +114,  ctgogo,  155,  510);

setEffAlphaKey( spep_4 +42, ctgogo, 0 );
setEffAlphaKey( spep_4 + 43, ctgogo, 255 );
setEffAlphaKey( spep_4 + 44, ctgogo, 255 );
setEffAlphaKey( spep_4 + 106, ctgogo, 255 );
setEffAlphaKey( spep_4 + 108, ctgogo, 255 );
setEffAlphaKey( spep_4 + 110, ctgogo, 191 );
setEffAlphaKey( spep_4 + 112, ctgogo, 112 );
setEffAlphaKey( spep_4 + 114, ctgogo, 64 );

setEffRotateKey(  spep_4 +42,  ctgogo,  0);
setEffRotateKey(  spep_4 +114,  ctgogo,  0);

setEffScaleKey(  spep_4 +42,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_4 +104,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_4 +114,  ctgogo, 1.07, 1.07 );

--SE
playSe( spep_4 + 40, 1035 );
playSe( spep_4 + 42, 1018 );
playSe( spep_4 + 66, 1036 );
playSe( spep_4 + 90, 1036 );
playSe( spep_4 + 114, 1036 );
se_1036 = playSe( spep_4 + 138, 1036 );

setSeVolume( spep_4 + 66, 1036, 63 );
setSeVolume( spep_4 + 90, 1036, 63 );
setSeVolume( spep_4 + 114, 1036, 63 );
setSeVolume( spep_4 + 138, 1036, 63 );

stopSe( spep_4 + 41, se_1159, 13 );
stopSe( spep_4 + 28, se_1044, 31 );
stopSe( spep_4 + 148, se_1036, 0 );

--白フェード
entryFade( spep_4+27, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 200 );     -- white fade
entryFade( spep_4+142, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 150;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_5 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_5 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_5 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_5 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_5 + 0, shuchusen, 0 );
setEffRotateKey( spep_5 + 90, shuchusen, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen, 255 );
setEffAlphaKey( spep_5 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_5 + 0, SE_05 );

--白フェード
entryFade( spep_5 + 82, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 94;

------------------------------------------------------
-- 発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_6 + 0, SP_09, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_6 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_6 + 110, beam, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_6 + 110, beam, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, beam, 0 );
setEffRotateKey( spep_6 + 110, beam, 0 );
setEffAlphaKey( spep_6 + 0, beam, 255 );
setEffAlphaKey( spep_6 + 110, beam, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_6 + 0,  906, 108, 0x100, -1, 0, 0, 0 );

setEffShake( spep_6 , shuchusen4, 108, 20 );

setEffMoveKey( spep_6 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_6 + 108, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen4, 1.07, 1.53 );
setEffScaleKey( spep_6 + 108, shuchusen4, 1.07, 1.53 );

setEffRotateKey( spep_6 + 0, shuchusen4, 180 );
setEffRotateKey( spep_6 + 108, shuchusen4, 180 );

setEffAlphaKey( spep_6 + 0, shuchusen4, 128 );
setEffAlphaKey( spep_6-3 + 27, shuchusen4, 128 );
setEffAlphaKey( spep_6-3 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_6 + 108, shuchusen4, 255 );

--SE
se_1200 = playSe( spep_6 + 0, 1200 );
se_1199 = playSe( spep_6 + 3, 1199 );
playSe( spep_6 + 29, 1198 );
se_0040 = playSe( spep_6 + 31, 40 );
playSe( spep_6 + 77, 1201 );
playSe( spep_6 + 77, 1202 );
playSe( spep_6 + 80, 1027 );

setSeVolume( spep_6 + 3, 1199, 141 );
setSeVolume( spep_6 + 31, 40, 56 );

stopSe( spep_6 + 73, se_1200, 33 );
stopSe( spep_6 + 60, se_1199, 0 );
stopSe( spep_6 + 59, se_0040, 19 );

--白フェード
entryFade( spep_6+25, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 180 );     -- white fade
entryFade( spep_6+102, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 110;

------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_7 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 190, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 190, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_f, 0 );
setEffRotateKey( spep_7 + 190, finish_f, 0 );
setEffAlphaKey( spep_7 + 0, finish_f, 255 );
setEffAlphaKey( spep_7 + 190, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_7 + 0, SP_11, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_7 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 190, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 190, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_b, 0 );
setEffRotateKey( spep_7 + 190, finish_b, 0 );
setEffAlphaKey( spep_7 + 0, finish_b, 255 );
setEffAlphaKey( spep_7 + 190, finish_b, 255 );

--集中線
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 -3 + 78, 1, 0 );

changeAnime( spep_7 + 0, 1, 105 );

setMoveKey( spep_7 + 0, 1, -923.7, -737.4 , 0 );
--setMoveKey( spep_7-3 + 2, 1, -812.7, -643.1 , 0 );
setMoveKey( spep_7-3 + 4, 1, -701.7, -548.8 , 0 );
setMoveKey( spep_7-3 + 6, 1, -590.7, -454.6 , 0 );
setMoveKey( spep_7-3 + 8, 1, -479.7, -360.4 , 0 );
setMoveKey( spep_7-3 + 10, 1, -368.7, -266.2 , 0 );
setMoveKey( spep_7-3 + 12, 1, -257.8, -172 , 0 );
setMoveKey( spep_7-3 + 14, 1, -146.8, -77.8 , 0 );
setMoveKey( spep_7-3 + 16, 1, -35.8, 16.4 , 0 );
setMoveKey( spep_7-3 + 18, 1, -24.2, 27.4 , 0 );
setMoveKey( spep_7-3 + 20, 1, -12.5, 38.5 , 0 );
setMoveKey( spep_7-3 + 22, 1, -0.8, 49.5 , 0 );
setMoveKey( spep_7-3 + 24, 1, 10.9, 60.6 , 0 );
setMoveKey( spep_7-3 + 26, 1, 22.6, 71.7 , 0 );
setMoveKey( spep_7-3 + 28, 1, 34.3, 82.8 , 0 );
setMoveKey( spep_7-3 + 30, 1, 46, 93.9 , 0 );
setMoveKey( spep_7-3 + 32, 1, 47.5, 95.3 , 0 );
setMoveKey( spep_7-3 + 34, 1, 49, 96.7 , 0 );
setMoveKey( spep_7-3 + 36, 1, 50.5, 98.1 , 0 );
setMoveKey( spep_7-3 + 38, 1, 52, 99.5 , 0 );
setMoveKey( spep_7-3 + 40, 1, 53.6, 100.9 , 0 );
setMoveKey( spep_7-3 + 42, 1, 55.1, 102.4 , 0 );
setMoveKey( spep_7-3 + 44, 1, 56.6, 103.8 , 0 );
setMoveKey( spep_7-3 + 46, 1, 58.1, 105.2 , 0 );
setMoveKey( spep_7-3 + 48, 1, 59.6, 106.6 , 0 );
setMoveKey( spep_7-3 + 50, 1, 61.1, 108 , 0 );
setMoveKey( spep_7-3 + 52, 1, 62.6, 109.5 , 0 );
setMoveKey( spep_7-3 + 54, 1, 64.1, 110.9 , 0 );
setMoveKey( spep_7-3 + 56, 1, 65.6, 112.3 , 0 );
setMoveKey( spep_7-3 + 58, 1, 67.1, 113.7 , 0 );
setMoveKey( spep_7-3 + 60, 1, 68.6, 115.1 , 0 );
setMoveKey( spep_7-3 + 62, 1, 70.1, 116.6 , 0 );
setMoveKey( spep_7-3 + 64, 1, 71.6, 118 , 0 );
setMoveKey( spep_7-3 + 66, 1, 73.1, 119.4 , 0 );
setMoveKey( spep_7-3 + 68, 1, 74.7, 120.8 , 0 );
setMoveKey( spep_7-3 + 70, 1, 76.2, 122.3 , 0 );
setMoveKey( spep_7-3 + 72, 1, 77.7, 123.7 , 0 );
setMoveKey( spep_7-3 + 74, 1, 79.2, 125.1 , 0 );
setMoveKey( spep_7-3 + 76, 1, 80.7, 126.5 , 0 );
setMoveKey( spep_7-3 + 78, 1, 82.2, 128 , 0 );

setScaleKey( spep_7 + 0, 1, 6.57, 6.57 );
--setScaleKey( spep_7-3 + 2, 1, 5.85, 5.85 );
setScaleKey( spep_7-3 + 4, 1, 5.13, 5.13 );
setScaleKey( spep_7-3 + 6, 1, 4.41, 4.41 );
setScaleKey( spep_7-3 + 8, 1, 3.7, 3.7 );
setScaleKey( spep_7-3 + 10, 1, 2.98, 2.98 );
setScaleKey( spep_7-3 + 12, 1, 2.26, 2.26 );
setScaleKey( spep_7-3 + 14, 1, 1.54, 1.54 );
setScaleKey( spep_7-3 + 16, 1, 0.82, 0.82 );
setScaleKey( spep_7-3 + 18, 1, 0.75, 0.75 );
setScaleKey( spep_7-3 + 20, 1, 0.68, 0.68 );
setScaleKey( spep_7-3 + 22, 1, 0.61, 0.61 );
setScaleKey( spep_7-3 + 24, 1, 0.53, 0.53 );
setScaleKey( spep_7-3 + 26, 1, 0.46, 0.46 );
setScaleKey( spep_7-3 + 28, 1, 0.39, 0.39 );
setScaleKey( spep_7-3 + 30, 1, 0.32, 0.32 );
setScaleKey( spep_7-3 + 32, 1, 0.31, 0.31 );
setScaleKey( spep_7-3 + 34, 1, 0.3, 0.3 );
setScaleKey( spep_7-3 + 36, 1, 0.29, 0.29 );
setScaleKey( spep_7-3 + 38, 1, 0.28, 0.28 );
setScaleKey( spep_7-3 + 40, 1, 0.27, 0.27 );
setScaleKey( spep_7-3 + 42, 1, 0.26, 0.26 );
setScaleKey( spep_7-3 + 44, 1, 0.25, 0.25 );
setScaleKey( spep_7-3 + 46, 1, 0.24, 0.24 );
setScaleKey( spep_7-3 + 48, 1, 0.23, 0.23 );
setScaleKey( spep_7-3 + 50, 1, 0.22, 0.22 );
setScaleKey( spep_7-3 + 52, 1, 0.21, 0.21 );
setScaleKey( spep_7-3 + 54, 1, 0.21, 0.21 );
setScaleKey( spep_7-3 + 56, 1, 0.2, 0.2 );
setScaleKey( spep_7-3 + 58, 1, 0.19, 0.19 );
setScaleKey( spep_7-3 + 60, 1, 0.18, 0.18 );
setScaleKey( spep_7-3 + 62, 1, 0.17, 0.17 );
setScaleKey( spep_7-3 + 64, 1, 0.16, 0.16 );
setScaleKey( spep_7-3 + 66, 1, 0.15, 0.15 );
setScaleKey( spep_7-3 + 68, 1, 0.14, 0.14 );
setScaleKey( spep_7-3 + 70, 1, 0.13, 0.13 );
setScaleKey( spep_7-3 + 72, 1, 0.12, 0.12 );
setScaleKey( spep_7-3 + 74, 1, 0.11, 0.11 );
setScaleKey( spep_7-3 + 76, 1, 0.1, 0.1 );
setScaleKey( spep_7-3 + 78, 1, 0.09, 0.09 );

setRotateKey( spep_7 + 0, 1, 17.7 );
--setRotateKey( spep_7-3 + 4, 1, 17.7 );
setRotateKey( spep_7-3 + 6, 1, 17.6 );
setRotateKey( spep_7-3 + 12, 1, 17.6 );
setRotateKey( spep_7-3 + 14, 1, 17.5 );
setRotateKey( spep_7-3 + 40, 1, 17.5 );
setRotateKey( spep_7-3 + 42, 1, 17.6 );
setRotateKey( spep_7-3 + 64, 1, 17.6 );
setRotateKey( spep_7-3 + 66, 1, 17.7 );
setRotateKey( spep_7-3 + 78, 1, 17.7 );

--集中線
shuchusen5 = entryEffectLife( spep_7-3 + 88,  906, 102, 0x100, -1, 0, 0, 0 );

setEffShake( spep_7-3 + 88 , shuchusen5, 102, 20 );

setEffMoveKey( spep_7-3 + 88, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_7-3 + 190, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_7-3 + 88, shuchusen5, 1.2, 1.23 );
setEffScaleKey( spep_7-3 + 190, shuchusen5, 1.2, 1.23 );

setEffRotateKey( spep_7-3 + 88, shuchusen5, 180 );
setEffRotateKey( spep_7-3 + 190, shuchusen5, 180 );

setEffAlphaKey( spep_7-3 + 88, shuchusen5, 141 );
setEffAlphaKey( spep_7-3 + 190, shuchusen5, 141 );

--SE
playSe( spep_7 + 10, 1022 );
setSeVolume( spep_7 + 10, 1022, 0 );
setSeVolume( spep_7 + 19, 1022, 6 );
setSeVolume( spep_7 + 20, 1022, 12 );
setSeVolume( spep_7 + 21, 1022, 18 );
setSeVolume( spep_7 + 22, 1022, 24 );
setSeVolume( spep_7 + 23, 1022, 30 );
setSeVolume( spep_7 + 24, 1022, 36 );
setSeVolume( spep_7 + 25, 1022, 42 );
setSeVolume( spep_7 + 26, 1022, 48 );
setSeVolume( spep_7 + 27, 1022, 54 );
setSeVolume( spep_7 + 28, 1022, 60 );
setSeVolume( spep_7 + 29, 1022, 66 );
setSeVolume( spep_7 + 30, 1022, 72 );
setSeVolume( spep_7 + 31, 1022, 78 );
setSeVolume( spep_7 + 32, 1022, 84 );
setSeVolume( spep_7 + 33, 1022, 90 );
setSeVolume( spep_7 + 34, 1022, 100 );
playSe( spep_7 + 10, 1035 );
setSeVolume( spep_7 + 10, 1035, 0 );
setSeVolume( spep_7 + 15, 1035, 7 );
setSeVolume( spep_7 + 16, 1035, 14 );
setSeVolume( spep_7 + 17, 1035, 21 );
setSeVolume( spep_7 + 18, 1035, 28 );
setSeVolume( spep_7 + 19, 1035, 35 );
setSeVolume( spep_7 + 20, 1035, 42 );
setSeVolume( spep_7 + 21, 1035, 49 );
setSeVolume( spep_7 + 22, 1035, 56 );
setSeVolume( spep_7 + 23, 1035, 63 );
setSeVolume( spep_7 + 24, 1035, 70 );
setSeVolume( spep_7 + 25, 1035, 77 );
setSeVolume( spep_7 + 26, 1035, 84 );
setSeVolume( spep_7 + 27, 1035, 91 );
setSeVolume( spep_7 + 28, 1035, 100 );
playSe( spep_7 + 87, 1023 );
playSe( spep_7 + 91, 1159 );
setSeVolume( spep_7 + 91, 1159, 63 );



--白フェード
entryFade( spep_7 + 84, 0, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 90 );

endPhase( spep_7 + 180 );

else

------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--導入
------------------------------------------------------
--最初の準備
spep_0= 0;

-- ** エフェクト等 ** --
hassya = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_0 + 0, hassya, 0, 0 , 0 );
setEffMoveKey( spep_0 + 66, hassya, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, hassya, -1.0, 1.0 );
setEffScaleKey( spep_0 + 66, hassya, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, hassya, 0 );
setEffRotateKey( spep_0 + 66, hassya, 0 );
setEffAlphaKey( spep_0 + 0, hassya, 255 );
setEffAlphaKey( spep_0 + 66, hassya, 255 );


--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 68 -3, 0x100, -1, 0, 0, 0 );

setEffShake( spep_0 , shuchusen1, 68-3, 20 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 68 -3, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.07, 1.4 );
setEffScaleKey( spep_0 + 68 -3, shuchusen1, 1.07, 1.4 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 68-3, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 128 );
setEffAlphaKey( spep_0 + 68-3, shuchusen1, 128 );

--白フェード
entryFade( spep_0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
--SE
SE0=playSe( spep_0 + 0, 8 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
    stopSe( SP_dodge - 12, SE0, 0 );
    playSe( SP_dodge - 12, 1042 );
    
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

--SE
playSe( spep_0 + 22, 1154 );
playSe( spep_0 + 63, 1021 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 66;

------------------------------------------------------
--気弾着弾
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_1 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 76, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hit_f, 0 );
setEffRotateKey( spep_1 + 76, hit_f, 0 );
setEffAlphaKey( spep_1 + 0, hit_f, 255 );
setEffAlphaKey( spep_1 + 76, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_1 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 76, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hit_b, 0 );
setEffRotateKey( spep_1 + 76, hit_b, 0 );
setEffAlphaKey( spep_1 + 0, hit_b, 255 );
setEffAlphaKey( spep_1 + 76, hit_b, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_1-3 + 40,  906, 38, 0x100, -1, 0, 0, 0 );

setEffShake( spep_1-3 + 40 , shuchusen2, 38, 20 );
setEffMoveKey( spep_1-3 + 40, shuchusen2, 100, 50 , 0 );
setEffMoveKey( spep_1-3 + 78, shuchusen2, 100, 50 , 0 );

setEffScaleKey( spep_1-3 + 40, shuchusen2, 1.62, 1.61 );
setEffScaleKey( spep_1-3 + 78, shuchusen2, 1.62, 1.61 );

setEffRotateKey( spep_1-3 + 40, shuchusen2, 180 );
setEffRotateKey( spep_1-3 + 78, shuchusen2, 180 );

setEffAlphaKey( spep_1-3 + 40, shuchusen2, 206 );
setEffAlphaKey( spep_1-3 + 78, shuchusen2, 206 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-2 + 78, 1, 0 );

changeAnime( spep_1 + 0, 1, 100 );
changeAnime( spep_1-3 + 40, 1, 105 );

setMoveKey( spep_1 + 0, 1, -105.8, -99.5 , 0 );
--setMoveKey( spep_1-3 + 2, 1, -89.7, -86.8 , 0 );
setMoveKey( spep_1-3 + 4, 1, -73.6, -74 , 0 );
setMoveKey( spep_1-3 + 6, 1, -57.4, -61.3 , 0 );
setMoveKey( spep_1-3 + 8, 1, -41.4, -48.6 , 0 );
setMoveKey( spep_1-3 + 10, 1, -25.2, -35.8 , 0 );
setMoveKey( spep_1-3 + 12, 1, -9.2, -23.1 , 0 );
setMoveKey( spep_1-3 + 14, 1, 6.9, -10.1 , 0 );
setMoveKey( spep_1-3 + 16, 1, 23, 2.5 , 0 );
setMoveKey( spep_1-3 + 18, 1, 26.9, 4.7 , 0 );
setMoveKey( spep_1-3 + 20, 1, 30.8, 6.8 , 0 );
setMoveKey( spep_1-3 + 22, 1, 34.7, 9.1 , 0 );
setMoveKey( spep_1-3 + 24, 1, 38.5, 11.4 , 0 );
setMoveKey( spep_1-3 + 26, 1, 42.3, 13.6 , 0 );
setMoveKey( spep_1-3 + 28, 1, 46.2, 15.7 , 0 );
setMoveKey( spep_1-3 + 30, 1, 50.1, 18 , 0 );
setMoveKey( spep_1-3 + 32, 1, 54, 20.3 , 0 );
setMoveKey( spep_1-3 + 34, 1, 57.8, 22.4 , 0 );
setMoveKey( spep_1-3 + 36, 1, 61.7, 24.6 , 0 );
setMoveKey( spep_1-3 + 39, 1, 65.6, 26.9 , 0 );
setMoveKey( spep_1-3 + 40, 1, 83.6, 125.5 , 0 );
setMoveKey( spep_1-3 + 42, 1, 96.2, 144.1 , 0 );
setMoveKey( spep_1-3 + 44, 1, 100.1, 151 , 0 );
setMoveKey( spep_1-3 + 46, 1, 116.5, 163.4 , 0 );
setMoveKey( spep_1-3 + 48, 1, 125, 169.7 , 0 );
setMoveKey( spep_1-3 + 50, 1, 128.5, 173 , 0 );
setMoveKey( spep_1-3 + 52, 1, 124.9, 168.5 , 0 );
setMoveKey( spep_1-3 + 54, 1, 130.3, 169.8 , 0 );
setMoveKey( spep_1-3 + 56, 1, 127.7, 167.2 , 0 );
setMoveKey( spep_1-3 + 58, 1, 133.1, 168.5 , 0 );
setMoveKey( spep_1-3 + 60, 1, 131.5, 161.9 , 0 );
setMoveKey( spep_1-3 + 62, 1, 135, 165.3 , 0 );
setMoveKey( spep_1-3 + 64, 1, 134.3, 162.7 , 0 );
setMoveKey( spep_1-3 + 66, 1, 137.7, 164.1 , 0 );
setMoveKey( spep_1-3 + 68, 1, 133.9, 159.6 , 0 );
setMoveKey( spep_1-3 + 70, 1, 139.4, 161 , 0 );
setMoveKey( spep_1-3 + 72, 1, 140.8, 160.4 , 0 );
setMoveKey( spep_1-3 + 74, 1, 142.2, 159.7 , 0 );
setMoveKey( spep_1-3 + 76, 1, 142.3, 157.3 , 0 );
setMoveKey( spep_1-2 + 78, 1, 143.7, 156.7 , 0 );

setScaleKey( spep_1 + 0, 1, 5.62, 5.62 );
--setScaleKey( spep_1-3 + 2, 1, 5.19, 5.19 );
setScaleKey( spep_1-3 + 4, 1, 4.74, 4.74 );
setScaleKey( spep_1-3 + 6, 1, 4.31, 4.31 );
setScaleKey( spep_1-3 + 8, 1, 3.89, 3.89 );
setScaleKey( spep_1-3 + 10, 1, 3.44, 3.44 );
setScaleKey( spep_1-3 + 12, 1, 3.01, 3.01 );
setScaleKey( spep_1-3 + 14, 1, 2.56, 2.56 );
setScaleKey( spep_1-3 + 16, 1, 2.13, 2.13 );
setScaleKey( spep_1-3 + 18, 1, 2.07, 2.07 );
setScaleKey( spep_1-3 + 20, 1, 2.02, 2.02 );
setScaleKey( spep_1-3 + 22, 1, 1.95, 1.95 );
setScaleKey( spep_1-3 + 24, 1, 1.89, 1.89 );
setScaleKey( spep_1-3 + 26, 1, 1.82, 1.82 );
setScaleKey( spep_1-3 + 28, 1, 1.78, 1.78 );
setScaleKey( spep_1-3 + 30, 1, 1.71, 1.71 );
setScaleKey( spep_1-3 + 32, 1, 1.64, 1.64 );
setScaleKey( spep_1-3 + 34, 1, 1.6, 1.6 );
setScaleKey( spep_1-3 + 36, 1, 1.53, 1.53 );
setScaleKey( spep_1-3 + 39, 1, 1.46, 1.46 );
setScaleKey( spep_1-3 + 40, 1, 1.12, 1.12 );
setScaleKey( spep_1-3 + 42, 1, 1.01, 1.01 );
setScaleKey( spep_1-3 + 44, 1, 0.89, 0.89 );
setScaleKey( spep_1-3 + 46, 1, 0.79, 0.79 );
setScaleKey( spep_1-3 + 48, 1, 0.69, 0.69 );
setScaleKey( spep_1-3 + 50, 1, 0.66, 0.66 );
setScaleKey( spep_1-3 + 52, 1, 0.62, 0.62 );
setScaleKey( spep_1-3 + 54, 1, 0.59, 0.59 );
setScaleKey( spep_1-3 + 56, 1, 0.56, 0.56 );
setScaleKey( spep_1-3 + 58, 1, 0.53, 0.53 );
setScaleKey( spep_1-3 + 60, 1, 0.49, 0.49 );
setScaleKey( spep_1-3 + 62, 1, 0.46, 0.46 );
setScaleKey( spep_1-3 + 64, 1, 0.43, 0.43 );
setScaleKey( spep_1-3 + 66, 1, 0.41, 0.41 );
setScaleKey( spep_1-3 + 68, 1, 0.37, 0.37 );
setScaleKey( spep_1-3 + 70, 1, 0.34, 0.34 );
setScaleKey( spep_1-3 + 72, 1, 0.31, 0.31 );
setScaleKey( spep_1-3 + 74, 1, 0.28, 0.28 );
setScaleKey( spep_1-3 + 76, 1, 0.25, 0.25 );
setScaleKey( spep_1-2 + 78, 1, 0.22, 0.22 );

setRotateKey( spep_1 + 0, 1, -2 );
setRotateKey( spep_1-3 + 39, 1, -2 );
setRotateKey( spep_1-3 + 40, 1, 0.7 );
setRotateKey( spep_1-3 + 42, 1, 2.1 );
setRotateKey( spep_1-3 + 44, 1, 3.5 );
setRotateKey( spep_1-3 + 46, 1, 4.9 );
setRotateKey( spep_1-3 + 48, 1, 6.3 );
setRotateKey( spep_1-3 + 50, 1, 6.3 );
setRotateKey( spep_1-3 + 52, 1, 6.4 );
setRotateKey( spep_1-3 + 58, 1, 6.4 );
setRotateKey( spep_1-3 + 60, 1, 6.5 );
setRotateKey( spep_1-3 + 66, 1, 6.5 );
setRotateKey( spep_1-3 + 68, 1, 6.6 );
setRotateKey( spep_1-3 + 74, 1, 6.6 );
setRotateKey( spep_1-3 + 76, 1, 6.7 );
setRotateKey( spep_1-2 + 78, 1, 6.7 );

--SE
playSe( spep_1 + 43, 1002 );
playSe( spep_1 + 43, 1023 );

setSeVolume( spep_1 + 43, 1023, 71 );

--白フェード
entryFade( spep_1+37, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 180 );     -- white fade
entryFade( spep_1+72, 0, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 76;

------------------------------------------------------
--連撃
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_2 + 0, SP_04x, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_2 + 0, fighting_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 266, fighting_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 266, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_f, 0 );
setEffRotateKey( spep_2 + 266, fighting_f, 0 );
setEffAlphaKey( spep_2 + 0, fighting_f, 255 );
setEffAlphaKey( spep_2 + 266, fighting_f, 255 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_2 + 0, SP_05x, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_2 + 0, fighting_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 266, fighting_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 266, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_b, 0 );
setEffRotateKey( spep_2 + 266, fighting_b, 0 );
setEffAlphaKey( spep_2 + 0, fighting_b, 255 );
setEffAlphaKey( spep_2 + 266, fighting_b, 255 );

--文字エントリー
ctga = entryEffectLife( spep_2-3 + 78,  10005, 10, 0x100, -1, 0, 168.2, 180.1 );--ガッ

setEffMoveKey( spep_2-3 + 78, ctga, 168.2, 180.1 , 0 );
setEffMoveKey( spep_2-3 + 80, ctga, 168.2, 179.9 , 0 );
setEffMoveKey( spep_2-3 + 82, ctga, 168.2, 180.2 , 0 );
setEffMoveKey( spep_2-3 + 84, ctga, 168.3, 180 , 0 );
setEffMoveKey( spep_2-3 + 86, ctga, 168.2, 180.1 , 0 );
setEffMoveKey( spep_2-3 + 88, ctga, 168.2, 180.1 , 0 );

setEffScaleKey( spep_2-3 + 78, ctga, 0.8, 0.8 );
setEffScaleKey( spep_2-3 + 80, ctga, 2.11, 2.11 );
setEffScaleKey( spep_2-3 + 82, ctga, 2.17, 2.17 );
setEffScaleKey( spep_2-3 + 84, ctga, 1.75, 1.75 );
setEffScaleKey( spep_2-3 + 86, ctga, 1.73, 1.73 );
setEffScaleKey( spep_2-3 + 88, ctga, 1.7, 1.7 );

setEffRotateKey( spep_2-3 + 78, ctga, 16.8 );
setEffRotateKey( spep_2-3 + 80, ctga, 3.4 );
setEffRotateKey( spep_2-3 + 82, ctga, 16.8 );
setEffRotateKey( spep_2-3 + 84, ctga, 16.6 );
setEffRotateKey( spep_2-3 + 86, ctga, 16.7 );
setEffRotateKey( spep_2-3 + 88, ctga, 16.8 );

setEffAlphaKey( spep_2-3 + 78, ctga, 255 );
setEffAlphaKey( spep_2-3 + 84, ctga, 255 );
setEffAlphaKey( spep_2-3 + 86, ctga, 128 );
setEffAlphaKey( spep_2-3 + 88, ctga, 0 );

--文字エントリー
ctzun = entryEffectLife( spep_2-3 + 88,  10016, 12, 0x100, -1, 0, 91.8, 366 );--ズンッ

setEffMoveKey( spep_2-3 + 88, ctzun, 91.8, 366 , 0 );
setEffMoveKey( spep_2-3 + 90, ctzun, 92, 366 , 0 );
setEffMoveKey( spep_2-3 + 92, ctzun, 85.2, 369.2 , 0 );
setEffMoveKey( spep_2-3 + 94, ctzun, 92, 365.9 , 0 );
setEffMoveKey( spep_2-3 + 96, ctzun, 85.9, 368.6 , 0 );
setEffMoveKey( spep_2-3 + 98, ctzun, 92, 365.8 , 0 );
setEffMoveKey( spep_2-3 + 100, ctzun, 91.9, 365.9 , 0 );

setEffScaleKey( spep_2-3 + 88, ctzun, 1.14, 1.14 );
setEffScaleKey( spep_2-3 + 90, ctzun, 2.77, 2.77 );
setEffScaleKey( spep_2-3 + 92, ctzun, 2.55, 2.55 );
setEffScaleKey( spep_2-3 + 94, ctzun, 2.34, 2.34 );
setEffScaleKey( spep_2-3 + 96, ctzun, 2.32, 2.32 );
setEffScaleKey( spep_2-3 + 98, ctzun, 2.15, 2.15 );
setEffScaleKey( spep_2-3 + 100, ctzun, 1.99, 1.99 );

setEffRotateKey( spep_2-3 + 88, ctzun, -16.5 );
setEffRotateKey( spep_2-3 + 94, ctzun, -16.5 );
setEffRotateKey( spep_2-3 + 96, ctzun, -16.6 );
setEffRotateKey( spep_2-3 + 98, ctzun, -16.5 );
setEffRotateKey( spep_2-3 + 100, ctzun, -16.5 );

setEffAlphaKey( spep_2-3 + 88, ctzun, 255 );
setEffAlphaKey( spep_2-3 + 94, ctzun, 255 );
setEffAlphaKey( spep_2-3 + 96, ctzun, 191 );
setEffAlphaKey( spep_2-3 + 98, ctzun, 102 );
setEffAlphaKey( spep_2-3 + 100, ctzun, 13 );

--文字エントリー
ctga2 = entryEffectLife( spep_2-3 + 110,  10005, 10, 0x100, -1, 0, 138.1, 190 );--ガッ

setEffMoveKey( spep_2-3 + 110, ctga2, 138.1, 190 , 0 );
setEffMoveKey( spep_2-3 + 112, ctga2, 138.4, 189.9 , 0 );
setEffMoveKey( spep_2-3 + 114, ctga2, 138.2, 190.2 , 0 );
setEffMoveKey( spep_2-3 + 116, ctga2, 138.3, 190.1 , 0 );
setEffMoveKey( spep_2-3 + 120, ctga2, 138.3, 190.1 , 0 );

setEffScaleKey( spep_2-3 + 110, ctga2, 0.8, 0.8 );
setEffScaleKey( spep_2-3 + 112, ctga2, 2.11, 2.11 );
setEffScaleKey( spep_2-3 + 114, ctga2, 2.17, 2.17 );
setEffScaleKey( spep_2-3 + 116, ctga2, 1.75, 1.75 );
setEffScaleKey( spep_2-3 + 118, ctga2, 1.73, 1.73 );
setEffScaleKey( spep_2-3 + 120, ctga2, 1.7, 1.7 );

setEffRotateKey( spep_2-3 + 110, ctga2, -4.1 );
setEffRotateKey( spep_2-3 + 112, ctga2, -17.5 );
setEffRotateKey( spep_2-3 + 114, ctga2, -4.1 );
setEffRotateKey( spep_2-3 + 116, ctga2, -4.3 );
setEffRotateKey( spep_2-3 + 118, ctga2, -4.2 );
setEffRotateKey( spep_2-3 + 120, ctga2, -4.1 );

setEffAlphaKey( spep_2-3 + 110, ctga2, 255 );
setEffAlphaKey( spep_2-3 + 116, ctga2, 255 );
setEffAlphaKey( spep_2-3 + 118, ctga2, 128 );
setEffAlphaKey( spep_2-3 + 120, ctga2, 0 );

--文字エントリー
ctzun2 = entryEffectLife( spep_2-3 + 120,  10016, 12, 0x100, -1, 0, 111.9, 386 );--ズンッ

setEffMoveKey( spep_2-3 + 120, ctzun2, 111.9, 386 , 0 );
setEffMoveKey( spep_2-3 + 122, ctzun2, 112, 386 , 0 );
setEffMoveKey( spep_2-3 + 124, ctzun2, 106.5, 391.1 , 0 );
setEffMoveKey( spep_2-3 + 126, ctzun2, 112.1, 385.9 , 0 );
setEffMoveKey( spep_2-3 + 128, ctzun2, 107, 390.3 , 0 );
setEffMoveKey( spep_2-3 + 130, ctzun2, 112, 385.8 , 0 );
setEffMoveKey( spep_2-3 + 132, ctzun2, 111.9, 386 , 0 );

setEffScaleKey( spep_2-3 + 120, ctzun2, 1.14, 1.14 );
setEffScaleKey( spep_2-3 + 122, ctzun2, 2.77, 2.77 );
setEffScaleKey( spep_2-3 + 124, ctzun2, 2.55, 2.55 );
setEffScaleKey( spep_2-3 + 126, ctzun2, 2.34, 2.34 );
setEffScaleKey( spep_2-3 + 128, ctzun2, 2.32, 2.32 );
setEffScaleKey( spep_2-3 + 130, ctzun2, 2.15, 2.15 );
setEffScaleKey( spep_2-3 + 132, ctzun2, 1.99, 1.99 );

setEffRotateKey( spep_2-3 + 120, ctzun2, 1 );
setEffRotateKey( spep_2-3 + 126, ctzun2, 1 );
setEffRotateKey( spep_2-3 + 128, ctzun2, 0.9 );
setEffRotateKey( spep_2-3 + 130, ctzun2, 1 );
setEffRotateKey( spep_2-3 + 132, ctzun2, 1 );

setEffAlphaKey( spep_2-3 + 120, ctzun2, 255 );
setEffAlphaKey( spep_2-3 + 126, ctzun2, 255 );
setEffAlphaKey( spep_2-3 + 128, ctzun2, 191 );
setEffAlphaKey( spep_2-3 + 130, ctzun2, 102 );
setEffAlphaKey( spep_2-3 + 132, ctzun2, 13 );

--文字エントリー
ctga3 = entryEffectLife( spep_2-3 + 142,  10005, 10, 0x100, -1, 0, 138.1, 190 );--ガッ

setEffMoveKey( spep_2-3 + 142, ctga3, 138.1, 190 , 0 );
setEffMoveKey( spep_2-3 + 144, ctga3, 138.4, 189.9 , 0 );
setEffMoveKey( spep_2-3 + 146, ctga3, 138.2, 190.2 , 0 );
setEffMoveKey( spep_2-3 + 148, ctga3, 138.3, 190.1 , 0 );
setEffMoveKey( spep_2-3 + 152, ctga3, 138.3, 190.1 , 0 );

setEffScaleKey( spep_2-3 + 142, ctga3, 0.8, 0.8 );
setEffScaleKey( spep_2-3 + 144, ctga3, 2.11, 2.11 );
setEffScaleKey( spep_2-3 + 146, ctga3, 2.17, 2.17 );
setEffScaleKey( spep_2-3 + 148, ctga3, 1.75, 1.75 );
setEffScaleKey( spep_2-3 + 150, ctga3, 1.73, 1.73 );
setEffScaleKey( spep_2-3 + 152, ctga3, 1.7, 1.7 );

setEffRotateKey( spep_2-3 + 142, ctga3, -4.1 );
setEffRotateKey( spep_2-3 + 144, ctga3, -17.5 );
setEffRotateKey( spep_2-3 + 146, ctga3, -4.1 );
setEffRotateKey( spep_2-3 + 148, ctga3, -4.3 );
setEffRotateKey( spep_2-3 + 150, ctga3, -4.2 );
setEffRotateKey( spep_2-3 + 152, ctga3, -4.1 );

setEffAlphaKey( spep_2-3 + 142, ctga3, 255 );
setEffAlphaKey( spep_2-3 + 148, ctga3, 255 );
setEffAlphaKey( spep_2-3 + 150, ctga3, 128 );
setEffAlphaKey( spep_2-3 + 152, ctga3, 128 );

--文字エントリー
ctzun3 = entryEffectLife( spep_2-3 + 152,  10016, 10, 0x100, -1, 0, 157.9, 334 );--ズンッ

setEffMoveKey( spep_2-3 + 152, ctzun3, 157.9, 334 , 0 );
setEffMoveKey( spep_2-3 + 154, ctzun3, 158, 334 , 0 );
setEffMoveKey( spep_2-3 + 156, ctzun3, 152.7, 339.3 , 0 );
setEffMoveKey( spep_2-3 + 158, ctzun3, 158.1, 333.9 , 0 );
setEffMoveKey( spep_2-3 + 160, ctzun3, 153.1, 338.5 , 0 );
setEffMoveKey( spep_2-3 + 162, ctzun3, 157.9, 334 , 0 );

setEffScaleKey( spep_2-3 + 152, ctzun3, 1.14, 1.14 );
setEffScaleKey( spep_2-3 + 154, ctzun3, 2.77, 2.77 );
setEffScaleKey( spep_2-3 + 156, ctzun3, 2.55, 2.55 );
setEffScaleKey( spep_2-3 + 158, ctzun3, 2.34, 2.34 );
setEffScaleKey( spep_2-3 + 160, ctzun3, 2.32, 2.32 );
setEffScaleKey( spep_2-3 + 162, ctzun3, 1.99, 1.99 );

setEffRotateKey( spep_2-3 + 152, ctzun3, 3 );
setEffRotateKey( spep_2-3 + 158, ctzun3, 3 );
setEffRotateKey( spep_2-3 + 160, ctzun3, 2.9 );
setEffRotateKey( spep_2-3 + 162, ctzun3, 3 );

setEffAlphaKey( spep_2-3 + 152, ctzun3, 255 );
setEffAlphaKey( spep_2-3 + 158, ctzun3, 255 );
setEffAlphaKey( spep_2-3 + 160, ctzun3, 191 );
setEffAlphaKey( spep_2-3 + 162, ctzun3, 13 );

--文字エントリー
ctbaki = entryEffectLife( spep_2-3 + 160,  10020, 10, 0x100, -1, 0, 137.4, 334.4 );--バキッ

setEffMoveKey( spep_2-3 + 160, ctbaki, 137.4, 334.4 , 0 );
setEffMoveKey( spep_2-3 + 162, ctbaki, 120.3, 352 , 0 );
setEffMoveKey( spep_2-3 + 164, ctbaki, 137.5, 334.3 , 0 );
setEffMoveKey( spep_2-3 + 166, ctbaki, 137.6, 334.4 , 0 );
setEffMoveKey( spep_2-3 + 168, ctbaki, 127.2, 345 , 0 );
setEffMoveKey( spep_2-3 + 170, ctbaki, 137.5, 334.4 , 0 );

setEffScaleKey( spep_2-3 + 160, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_2-3 + 162, ctbaki, 2.88, 2.88 );
setEffScaleKey( spep_2-3 + 164, ctbaki, 1.94, 1.94 );
setEffScaleKey( spep_2-3 + 166, ctbaki, 1.73, 1.73 );
setEffScaleKey( spep_2-3 + 168, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_2-3 + 170, ctbaki, 1.76, 1.76 );

setEffRotateKey( spep_2-3 + 160, ctbaki, 0.8 );
setEffRotateKey( spep_2-3 + 170, ctbaki, 0.8 );

setEffAlphaKey( spep_2-3 + 160, ctbaki, 255 );
setEffAlphaKey( spep_2-3 + 166, ctbaki, 255 );
setEffAlphaKey( spep_2-3 + 168, ctbaki, 134 );
setEffAlphaKey( spep_2-3 + 170, ctbaki, 13 );

--文字エントリー
ctga4 = entryEffectLife( spep_2-3 + 170,  10005, 10, 0x100, -1, 0, 168.2, 180.1 );--ガッ

setEffMoveKey( spep_2-3 + 170, ctga4, 168.2, 180.1 , 0 );
setEffMoveKey( spep_2-3 + 172, ctga4, 168.2, 179.9 , 0 );
setEffMoveKey( spep_2-3 + 174, ctga4, 168.2, 180.2 , 0 );
setEffMoveKey( spep_2-3 + 176, ctga4, 168.3, 180 , 0 );
setEffMoveKey( spep_2-3 + 178, ctga4, 168.2, 180.1 , 0 );
setEffMoveKey( spep_2-3 + 180, ctga4, 168.2, 180.1 , 0 );

setEffScaleKey( spep_2-3 + 170, ctga4, 0.8, 0.8 );
setEffScaleKey( spep_2-3 + 172, ctga4, 2.11, 2.11 );
setEffScaleKey( spep_2-3 + 174, ctga4, 2.17, 2.17 );
setEffScaleKey( spep_2-3 + 176, ctga4, 1.75, 1.75 );
setEffScaleKey( spep_2-3 + 178, ctga4, 1.73, 1.73 );
setEffScaleKey( spep_2-3 + 180, ctga4, 1.7, 1.7 );

setEffRotateKey( spep_2-3 + 170, ctga4, 16.8 );
setEffRotateKey( spep_2-3 + 172, ctga4, 3.4 );
setEffRotateKey( spep_2-3 + 174, ctga4, 16.8 );
setEffRotateKey( spep_2-3 + 176, ctga4, 16.6 );
setEffRotateKey( spep_2-3 + 178, ctga4, 16.7 );
setEffRotateKey( spep_2-3 + 180, ctga4, 16.8 );

setEffAlphaKey( spep_2-3 + 170, ctga4, 255 );
setEffAlphaKey( spep_2-3 + 176, ctga4, 255 );
setEffAlphaKey( spep_2-3 + 178, ctga4, 128 );
setEffAlphaKey( spep_2-3 + 180, ctga4, 0 );

--文字エントリー
ctzun4 = entryEffectLife( spep_2-3 + 180,  10016, 12, 0x100, -1, 0, 91.8, 366 );--ズンッ

setEffMoveKey( spep_2-3 + 180, ctzun4, 91.8, 366 , 0 );
setEffMoveKey( spep_2-3 + 182, ctzun4, 92, 366 , 0 );
setEffMoveKey( spep_2-3 + 184, ctzun4, 85.2, 369.2 , 0 );
setEffMoveKey( spep_2-3 + 186, ctzun4, 92, 365.9 , 0 );
setEffMoveKey( spep_2-3 + 188, ctzun4, 85.9, 368.6 , 0 );
setEffMoveKey( spep_2-3 + 190, ctzun4, 92, 365.8 , 0 );
setEffMoveKey( spep_2-3 + 192, ctzun4, 91.9, 365.9 , 0 );

setEffScaleKey( spep_2-3 + 180, ctzun4, 1.14, 1.14 );
setEffScaleKey( spep_2-3 + 182, ctzun4, 2.77, 2.77 );
setEffScaleKey( spep_2-3 + 184, ctzun4, 2.55, 2.55 );
setEffScaleKey( spep_2-3 + 186, ctzun4, 2.34, 2.34 );
setEffScaleKey( spep_2-3 + 188, ctzun4, 2.32, 2.32 );
setEffScaleKey( spep_2-3 + 190, ctzun4, 2.15, 2.15 );
setEffScaleKey( spep_2-3 + 192, ctzun4, 1.99, 1.99 );

setEffRotateKey( spep_2-3 + 180, ctzun4, -16.5 );
setEffRotateKey( spep_2-3 + 186, ctzun4, -16.5 );
setEffRotateKey( spep_2-3 + 188, ctzun4, -16.6 );
setEffRotateKey( spep_2-3 + 190, ctzun4, -16.5 );
setEffRotateKey( spep_2-3 + 192, ctzun4, -16.5 );

setEffAlphaKey( spep_2-3 + 180, ctzun4, 255 );
setEffAlphaKey( spep_2-3 + 186, ctzun4, 255 );
setEffAlphaKey( spep_2-3 + 188, ctzun4, 191 );
setEffAlphaKey( spep_2-3 + 190, ctzun4, 102 );
setEffAlphaKey( spep_2-3 + 192, ctzun4, 13 );

--文字エントリー
ctga5 = entryEffectLife( spep_2-3 + 188,  10005, 12, 0x100, -1, 0, 108.1, 396 );--ガッ

setEffMoveKey( spep_2-3 + 188, ctga5, 108.1, 396 , 0 );
setEffMoveKey( spep_2-3 + 190, ctga5, 108.4, 396 , 0 );
setEffMoveKey( spep_2-3 + 192, ctga5, 108.2, 396.2 , 0 );
setEffMoveKey( spep_2-3 + 194, ctga5, 108.2, 396.1 , 0 );
setEffMoveKey( spep_2-3 + 196, ctga5, 108.2, 396.1 , 0 );
setEffMoveKey( spep_2-3 + 200, ctga5, 108.3, 396.1 , 0 );

setEffScaleKey( spep_2-3 + 188, ctga5, 0.9, 0.9 );
setEffScaleKey( spep_2-3 + 190, ctga5, 2.37, 2.37 );
setEffScaleKey( spep_2-3 + 192, ctga5, 2.44, 2.44 );
setEffScaleKey( spep_2-3 + 194, ctga5, 2.21, 2.21 );
setEffScaleKey( spep_2-3 + 196, ctga5, 1.97, 1.97 );
setEffScaleKey( spep_2-3 + 198, ctga5, 1.94, 1.94 );
setEffScaleKey( spep_2-3 + 200, ctga5, 1.91, 1.91 );

setEffRotateKey( spep_2-3 + 188, ctga5, -4.4 );
setEffRotateKey( spep_2-3 + 190, ctga5, -17.8 );
setEffRotateKey( spep_2-3 + 192, ctga5, -4.4 );
setEffRotateKey( spep_2-3 + 194, ctga5, -4.5 );
setEffRotateKey( spep_2-3 + 196, ctga5, -4.6 );
setEffRotateKey( spep_2-3 + 198, ctga5, -4.5 );
setEffRotateKey( spep_2-3 + 200, ctga5, -4.4 );

setEffAlphaKey( spep_2-3 + 188, ctga5, 255 );
setEffAlphaKey( spep_2-3 + 196, ctga5, 255 );
setEffAlphaKey( spep_2-3 + 198, ctga5, 128 );
setEffAlphaKey( spep_2-3 + 200, ctga5, 0 );


--文字エントリー
ctbagolo = entryEffectLife( spep_2-7 + 228,  10021, 28, 0x100, -1, 0, 53.1, 361.8 );--バゴォッ

setEffMoveKey( spep_2-7 + 228, ctbagolo, 53.1, 361.8 , 0 );
setEffMoveKey( spep_2-7 + 230, ctbagolo, 52.6, 361.1 , 0 );
setEffMoveKey( spep_2-7 + 232, ctbagolo, 53.1, 361.7 , 0 );
setEffMoveKey( spep_2-7 + 234, ctbagolo, 38.5, 384.7 , 0 );
setEffMoveKey( spep_2-7 + 236, ctbagolo, 53.1, 361.8 , 0 );
setEffMoveKey( spep_2-7 + 238, ctbagolo, 38.9, 384.1 , 0 );
setEffMoveKey( spep_2-7 + 240, ctbagolo, 53.2, 361.9 , 0 );
setEffMoveKey( spep_2-7 + 242, ctbagolo, 39.4, 383.5 , 0 );
setEffMoveKey( spep_2-7 + 244, ctbagolo, 53.2, 361.9 , 0 );
setEffMoveKey( spep_2-7 + 246, ctbagolo, 39.8, 382.9 , 0 );
setEffMoveKey( spep_2-7 + 248, ctbagolo, 53.3, 362 , 0 );
setEffMoveKey( spep_2-7 + 250, ctbagolo, 40.8, 381.6 , 0 );
setEffMoveKey( spep_2-7 + 252, ctbagolo, 53.3, 362.1 , 0 );
setEffMoveKey( spep_2-7 + 254, ctbagolo, 42.3, 379.4 , 0 );
setEffMoveKey( spep_2-7 + 256, ctbagolo, 43.1, 378.3 , 0 );

setEffScaleKey( spep_2-7 + 228, ctbagolo, 1.55, 1.55 );
setEffScaleKey( spep_2-7 + 230, ctbagolo, 4.28, 4.28 );
setEffScaleKey( spep_2-7 + 232, ctbagolo, 3.21, 3.21 );
setEffScaleKey( spep_2-7 + 234, ctbagolo, 3.17, 3.17 );
setEffScaleKey( spep_2-7 + 236, ctbagolo, 3.12, 3.12 );
setEffScaleKey( spep_2-7 + 238, ctbagolo, 3.08, 3.08 );
setEffScaleKey( spep_2-7 + 240, ctbagolo, 3.03, 3.03 );
setEffScaleKey( spep_2-7 + 242, ctbagolo, 2.99, 2.99 );
setEffScaleKey( spep_2-7 + 244, ctbagolo, 2.94, 2.94 );
setEffScaleKey( spep_2-7 + 246, ctbagolo, 2.9, 2.9 );
setEffScaleKey( spep_2-7 + 248, ctbagolo, 2.85, 2.85 );
setEffScaleKey( spep_2-7 + 250, ctbagolo, 2.69, 2.69 );
setEffScaleKey( spep_2-7 + 252, ctbagolo, 2.53, 2.53 );
setEffScaleKey( spep_2-7 + 254, ctbagolo, 2.37, 2.37 );
setEffScaleKey( spep_2-7 + 256, ctbagolo, 2.21, 2.21 );

setEffRotateKey( spep_2-7 + 228, ctbagolo, 3 );
setEffRotateKey( spep_2-7 + 256, ctbagolo, 3 );

setEffAlphaKey( spep_2-7 + 228, ctbagolo, 255 );
setEffAlphaKey( spep_2-7 + 248, ctbagolo, 255 );
setEffAlphaKey( spep_2-7 + 250, ctbagolo, 191 );
setEffAlphaKey( spep_2-7 + 252, ctbagolo, 128 );
setEffAlphaKey( spep_2-7 + 254, ctbagolo, 64 );
setEffAlphaKey( spep_2-7 + 256, ctbagolo, 0 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2-3 + 251, 1, 0 );

changeAnime( spep_2 + 0, 1, 106 );
changeAnime( spep_2-3 + 78, 1, 108 );
changeAnime( spep_2-3 + 88, 1, 106 );
changeAnime( spep_2-3 + 110, 1, 108 );
changeAnime( spep_2-3 + 120, 1, 106 );
changeAnime( spep_2-3 + 142, 1, 108 );
changeAnime( spep_2-3 + 152, 1, 106 );
changeAnime( spep_2-3 + 162, 1, 108 );
changeAnime( spep_2-3 + 180, 1, 106 );
changeAnime( spep_2-3 + 190, 1, 108 );
changeAnime( spep_2-3 + 198, 1, 106 );
changeAnime( spep_2-3 + 226, 1, 108 );

setMoveKey( spep_2 + 0, 1, -1203.7, 73.6 , 0 );
--setMoveKey( spep_2-3 + 2, 1, -1042.5, 76.2 , 0 );
setMoveKey( spep_2-3 + 4, 1, -895.5, 78.5 , 0 );
setMoveKey( spep_2-3 + 6, 1, -742.3, 80.9 , 0 );
setMoveKey( spep_2-3 + 8, 1, -593.6, 83.2 , 0 );
setMoveKey( spep_2-3 + 10, 1, -455.9, 85.3 , 0 );
setMoveKey( spep_2-3 + 12, 1, -315.4, 87.5 , 0 );
setMoveKey( spep_2-3 + 14, 1, -179.4, 89.5 , 0 );
setMoveKey( spep_2-3 + 16, 1, -50.9, 91.3 , 0 );
setMoveKey( spep_2-3 + 18, 1, -42.9, 89.5 , 0 );
setMoveKey( spep_2-3 + 20, 1, -35.1, 87.6 , 0 );
setMoveKey( spep_2-3 + 22, 1, -30.3, 85.6 , 0 );
setMoveKey( spep_2-3 + 24, 1, -23, 83.8 , 0 );
setMoveKey( spep_2-3 + 26, 1, -16.3, 82.9 , 0 );
setMoveKey( spep_2-3 + 28, 1, -9.6, 82.1 , 0 );
setMoveKey( spep_2-3 + 30, 1, -3.1, 81.2 , 0 );
setMoveKey( spep_2-3 + 32, 1, 3.6, 80.4 , 0 );
setMoveKey( spep_2-3 + 34, 1, 10.2, 79.5 , 0 );
setMoveKey( spep_2-3 + 36, 1, 16.9, 78.6 , 0 );
setMoveKey( spep_2-3 + 38, 1, 21.4, 77.7 , 0 );
setMoveKey( spep_2-3 + 40, 1, 28.1, 76.8 , 0 );
setMoveKey( spep_2-3 + 42, 1, 34.8, 76 , 0 );
setMoveKey( spep_2-3 + 44, 1, 41.5, 75.1 , 0 );
setMoveKey( spep_2-3 + 46, 1, 48.2, 74.2 , 0 );
setMoveKey( spep_2-3 + 48, 1, 55, 73.4 , 0 );
setMoveKey( spep_2-3 + 50, 1, 61.6, 72.5 , 0 );
setMoveKey( spep_2-3 + 52, 1, 68.3, 71.7 , 0 );
setMoveKey( spep_2-3 + 54, 1, 75, 70.8 , 0 );
setMoveKey( spep_2-3 + 56, 1, 81.7, 69.9 , 0 );
setMoveKey( spep_2-3 + 58, 1, 88.4, 69.1 , 0 );
setMoveKey( spep_2-3 + 60, 1, 95.1, 68.2 , 0 );
setMoveKey( spep_2-3 + 62, 1, 101.9, 67.4 , 0 );
setMoveKey( spep_2-3 + 64, 1, 108.5, 66.5 , 0 );
setMoveKey( spep_2-3 + 66, 1, 115.2, 65.6 , 0 );
setMoveKey( spep_2-3 + 68, 1, 122, 64.8 , 0 );
setMoveKey( spep_2-3 + 70, 1, 127.5, 63.7 , 0 );
setMoveKey( spep_2-3 + 72, 1, 134.3, 62.9 , 0 );
setMoveKey( spep_2-3 + 74, 1, 141, 62 , 0 );
setMoveKey( spep_2-3 + 77, 1, 147.8, 61.1 , 0 );
setMoveKey( spep_2-3 + 78, 1, 176.4, -55.3 , 0 );
setMoveKey( spep_2-3 + 80, 1, 175.3, -78.1 , 0 );
setMoveKey( spep_2-3 + 82, 1, 182.2, -68.8 , 0 );
setMoveKey( spep_2-3 + 84, 1, 171.1, -74.7 , 0 );
setMoveKey( spep_2-3 + 87, 1, 184.1, -72.5 , 0 );
setMoveKey( spep_2-3 + 88, 1, 135, 105 , 0 );
setMoveKey( spep_2-3 + 90, 1, 145.4, 141.4 , 0 );
setMoveKey( spep_2-3 + 92, 1, 139.9, 162 , 0 );
setMoveKey( spep_2-3 + 94, 1, 158.3, 190.5 , 0 );
setMoveKey( spep_2-3 + 96, 1, 158, 194.3 , 0 );
setMoveKey( spep_2-3 + 98, 1, 165.7, 214.3 , 0 );
setMoveKey( spep_2-3 + 100, 1, 164.6, 223.5 , 0 );
setMoveKey( spep_2-3 + 102, 1, 172.2, 239.6 , 0 );
setMoveKey( spep_2-3 + 104, 1, 176, 251.5 , 0 );
setMoveKey( spep_2-3 + 106, 1, 179.8, 263.5 , 0 );
setMoveKey( spep_2-3 + 109, 1, 183.4, 275.6 , 0 );
setMoveKey( spep_2-3 + 110, 1, 175.8, -75.3 , 0 );
setMoveKey( spep_2-3 + 112, 1, 182.7, -66 , 0 );
setMoveKey( spep_2-3 + 114, 1, 173.7, -76.8 , 0 );
setMoveKey( spep_2-3 + 116, 1, 186.7, -74.7 , 0 );
setMoveKey( spep_2-3 + 119, 1, 183.6, -88.5 , 0 );
setMoveKey( spep_2-3 + 120, 1, 142.1, 114.7 , 0 );
setMoveKey( spep_2-3 + 122, 1, 140.5, 135.5 , 0 );
setMoveKey( spep_2-3 + 124, 1, 155, 164.2 , 0 );
setMoveKey( spep_2-3 + 126, 1, 157.6, 180.9 , 0 );
setMoveKey( spep_2-3 + 128, 1, 165.3, 200.9 , 0 );
setMoveKey( spep_2-3 + 130, 1, 156.2, 210.1 , 0 );
setMoveKey( spep_2-3 + 132, 1, 171.9, 226.3 , 0 );
setMoveKey( spep_2-3 + 134, 1, 175.7, 238.4 , 0 );
setMoveKey( spep_2-3 + 136, 1, 179.5, 250.6 , 0 );
setMoveKey( spep_2-3 + 138, 1, 183.2, 262.8 , 0 );
setMoveKey( spep_2-3 + 141, 1, 187, 274.9 , 0 );
setMoveKey( spep_2-3 + 142, 1, 183.3, -63.1 , 0 );
setMoveKey( spep_2-3 + 144, 1, 182.2, -89.9 , 0 );
setMoveKey( spep_2-3 + 146, 1, 189.2, -76.8 , 0 );
setMoveKey( spep_2-3 + 148, 1, 182.1, -82.6 , 0 );
setMoveKey( spep_2-3 + 151, 1, 191.1, -80.5 , 0 );
setMoveKey( spep_2-3 + 152, 1, 160.7, 120.1 , 0 );
setMoveKey( spep_2-3 + 154, 1, 168.1, 142.3 , 0 );
setMoveKey( spep_2-3 + 156, 1, 163.4, 148.4 , 0 );
setMoveKey( spep_2-3 + 158, 1, 178.5, 159.1 , 0 );
setMoveKey( spep_2-3 + 161, 1, 181, 150.6 , 0 );
setMoveKey( spep_2-3 + 162, 1, 229.5, 128.7 , 0 );
setMoveKey( spep_2-3 + 164, 1, 225.8, 126.4 , 0 );
setMoveKey( spep_2-3 + 166, 1, 246.2, 140 , 0 );
setMoveKey( spep_2-3 + 168, 1, 250.5, 137.7 , 0 );
setMoveKey( spep_2-3 + 170, 1, 186.2, -66.6 , 0 );
setMoveKey( spep_2-3 + 172, 1, 185.1, -77.6 , 0 );
setMoveKey( spep_2-3 + 174, 1, 192.2, -80.5 , 0 );
setMoveKey( spep_2-3 + 176, 1, 185.2, -86.4 , 0 );
setMoveKey( spep_2-3 + 179, 1, 199.2, -83.8 , 0 );
setMoveKey( spep_2-3 + 180, 1, 172.8, 123.6 , 0 );
setMoveKey( spep_2-3 + 182, 1, 185.2, 142.4 , 0 );
setMoveKey( spep_2-3 + 184, 1, 189.7, 145.2 , 0 );
setMoveKey( spep_2-3 + 186, 1, 205.2, 161.2 , 0 );
setMoveKey( spep_2-3 + 189, 1, 213.6, 164.4 , 0 );
setMoveKey( spep_2-3 + 190, 1, 186, 170 , 0 );
setMoveKey( spep_2-3 + 192, 1, 194.4, 166.6 , 0 );
setMoveKey( spep_2-3 + 194, 1, 210.9, 187.2 , 0 );
setMoveKey( spep_2-3 + 197, 1, 214.5, 192.7 , 0 );
setMoveKey( spep_2-3 + 198, 1, 160.6, 185.9 , 0 );
setMoveKey( spep_2-3 + 200, 1, 164.7, 181.3 , 0 );
setMoveKey( spep_2-3 + 202, 1, 175.4, 193.5 , 0 );
setMoveKey( spep_2-3 + 204, 1, 183.5, 196.9 , 0 );
setMoveKey( spep_2-3 + 206, 1, 198.3, 201.9 , 0 );
setMoveKey( spep_2-3 + 208, 1, 213.1, 207 , 0 );
setMoveKey( spep_2-3 + 210, 1, 228.1, 212.2 , 0 );
setMoveKey( spep_2-3 + 212, 1, 244.3, 216.6 , 0 );
setMoveKey( spep_2-3 + 214, 1, 259.4, 221.9 , 0 );
setMoveKey( spep_2-3 + 216, 1, 274.6, 227.4 , 0 );
setMoveKey( spep_2-3 + 218, 1, 289.9, 233.1 , 0 );
setMoveKey( spep_2-3 + 220, 1, 305.3, 238.9 , 0 );
setMoveKey( spep_2-3 + 222, 1, 321.9, 243.5 , 0 );
setMoveKey( spep_2-3 + 225, 1, 337.5, 249.4 , 0 );
setMoveKey( spep_2-3 + 226, 1, 327.7, 102.1 , 0 );
setMoveKey( spep_2-3 + 228, 1, 238.3, 97.1 , 0 );
setMoveKey( spep_2-3 + 230, 1, 274.8, 141.9 , 0 );
setMoveKey( spep_2-3 + 232, 1, 284.1, 151.1 , 0 );
setMoveKey( spep_2-3 + 234, 1, 296.7, 161.5 , 0 );
setMoveKey( spep_2-3 + 236, 1, 285.4, 149.6 , 0 );
setMoveKey( spep_2-3 + 238, 1, 298.6, 169.9 , 0 );
setMoveKey( spep_2-3 + 240, 1, 299.8, 161.5 , 0 );
setMoveKey( spep_2-3 + 242, 1, 617, 231.5 , 0 );
setMoveKey( spep_2-3 + 244, 1, 904.1, 279 , 0 );
setMoveKey( spep_2-3 + 246, 1, 1212.3, 342.5 , 0 );
setMoveKey( spep_2-3 + 248, 1, 1489.1, 382.7 , 0 );
setMoveKey( spep_2-3 + 251, 1, 1776.2, 447.8 , 0 );

setScaleKey( spep_2 + 0, 1, 1.87, 1.87 );
--setScaleKey( spep_2-3 + 2, 1, 1.85, 1.85 );
setScaleKey( spep_2-3 + 4, 1, 1.84, 1.84 );
setScaleKey( spep_2-3 + 6, 1, 1.81, 1.81 );
setScaleKey( spep_2-3 + 8, 1, 1.79, 1.79 );
setScaleKey( spep_2-3 + 10, 1, 1.78, 1.78 );
setScaleKey( spep_2-3 + 12, 1, 1.75, 1.75 );
setScaleKey( spep_2-3 + 14, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 16, 1, 1.71, 1.71 );
setScaleKey( spep_2-3 + 18, 1, 1.68, 1.68 );
setScaleKey( spep_2-3 + 20, 1, 1.65, 1.65 );
setScaleKey( spep_2-3 + 22, 1, 1.64, 1.64 );
setScaleKey( spep_2-3 + 24, 1, 1.61, 1.61 );
setScaleKey( spep_2-3 + 36, 1, 1.61, 1.61 );
setScaleKey( spep_2-3 + 38, 1, 1.63, 1.63 );
setScaleKey( spep_2-3 + 52, 1, 1.63, 1.63 );
setScaleKey( spep_2-3 + 54, 1, 1.64, 1.64 );
setScaleKey( spep_2-3 + 68, 1, 1.64, 1.64 );
setScaleKey( spep_2-3 + 70, 1, 1.66, 1.66 );
setScaleKey( spep_2-3 + 98, 1, 1.66, 1.66 );
setScaleKey( spep_2-3 + 100, 1, 1.67, 1.67 );
setScaleKey( spep_2-3 + 128, 1, 1.67, 1.67 );
setScaleKey( spep_2-3 + 130, 1, 1.69, 1.69 );
setScaleKey( spep_2-3 + 158, 1, 1.69, 1.69 );
setScaleKey( spep_2-3 + 161, 1, 1.71, 1.71 );
setScaleKey( spep_2-3 + 162, 1, 1.7, 1.7 );
setScaleKey( spep_2-3 + 179, 1, 1.7, 1.7 );
setScaleKey( spep_2-3 + 180, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 184, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 186, 1, 1.74, 1.74 );
setScaleKey( spep_2-3 + 189, 1, 1.74, 1.74 );
setScaleKey( spep_2-3 + 190, 1, 1.75, 1.75 );
setScaleKey( spep_2-3 + 194, 1, 1.75, 1.75 );
setScaleKey( spep_2-3 + 197, 1, 1.76, 1.76 );
setScaleKey( spep_2-3 + 200, 1, 1.76, 1.76 );
setScaleKey( spep_2-3 + 202, 1, 1.78, 1.78 );
setScaleKey( spep_2-3 + 204, 1, 1.78, 1.78 );
setScaleKey( spep_2-3 + 206, 1, 1.81, 1.81 );
setScaleKey( spep_2-3 + 208, 1, 1.84, 1.84 );
setScaleKey( spep_2-3 + 210, 1, 1.87, 1.87 );
setScaleKey( spep_2-3 + 212, 1, 1.89, 1.89 );
setScaleKey( spep_2-3 + 214, 1, 1.92, 1.92 );
setScaleKey( spep_2-3 + 216, 1, 1.95, 1.95 );
setScaleKey( spep_2-3 + 218, 1, 1.98, 1.98 );
setScaleKey( spep_2-3 + 220, 1, 2.01, 2.01 );
setScaleKey( spep_2-3 + 222, 1, 2.03, 2.03 );
setScaleKey( spep_2-3 + 225, 1, 2.06, 2.06 );
setScaleKey( spep_2-3 + 226, 1, 2.09, 2.09 );
setScaleKey( spep_2-3 + 228, 1, 3.87, 3.87 );
setScaleKey( spep_2-3 + 230, 1, 3.39, 3.39 );
setScaleKey( spep_2-3 + 232, 1, 2.91, 2.91 );
setScaleKey( spep_2-3 + 234, 1, 2.41, 2.41 );
setScaleKey( spep_2-3 + 236, 1, 1.94, 1.94 );
setScaleKey( spep_2-3 + 238, 1, 1.92, 1.92 );
setScaleKey( spep_2-3 + 240, 1, 1.89, 1.89 );
setScaleKey( spep_2-3 + 242, 1, 1.88, 1.88 );
setScaleKey( spep_2-3 + 244, 1, 1.84, 1.84 );
setScaleKey( spep_2-3 + 246, 1, 1.83, 1.83 );
setScaleKey( spep_2-3 + 248, 1, 1.8, 1.8 );
setScaleKey( spep_2-3 + 251, 1, 1.78, 1.78 );

setRotateKey( spep_2 + 0, 1, 17.6 );
setRotateKey( spep_2-3 + 8, 1, 17.6 );
setRotateKey( spep_2-3 + 10, 1, 17.5 );
setRotateKey( spep_2-3 + 16, 1, 17.5 );
setRotateKey( spep_2-3 + 18, 1, 17.6 );
setRotateKey( spep_2-3 + 20, 1, 17.8 );
setRotateKey( spep_2-3 + 22, 1, 17.9 );
setRotateKey( spep_2-3 + 24, 1, 18.1 );
setRotateKey( spep_2-3 + 26, 1, 18.2 );
setRotateKey( spep_2-3 + 28, 1, 18.4 );
setRotateKey( spep_2-3 + 30, 1, 18.5 );
setRotateKey( spep_2-3 + 32, 1, 18.6 );
setRotateKey( spep_2-3 + 34, 1, 18.8 );
setRotateKey( spep_2-3 + 36, 1, 18.9 );
setRotateKey( spep_2-3 + 38, 1, 19.1 );
setRotateKey( spep_2-3 + 40, 1, 19.2 );
setRotateKey( spep_2-3 + 42, 1, 19.4 );
setRotateKey( spep_2-3 + 44, 1, 19.5 );
setRotateKey( spep_2-3 + 46, 1, 19.7 );
setRotateKey( spep_2-3 + 48, 1, 19.8 );
setRotateKey( spep_2-3 + 50, 1, 19.9 );
setRotateKey( spep_2-3 + 52, 1, 20.1 );
setRotateKey( spep_2-3 + 54, 1, 20.2 );
setRotateKey( spep_2-3 + 56, 1, 20.4 );
setRotateKey( spep_2-3 + 58, 1, 20.5 );
setRotateKey( spep_2-3 + 60, 1, 20.7 );
setRotateKey( spep_2-3 + 62, 1, 20.8 );
setRotateKey( spep_2-3 + 64, 1, 20.9 );
setRotateKey( spep_2-3 + 66, 1, 21.1 );
setRotateKey( spep_2-3 + 68, 1, 21.2 );
setRotateKey( spep_2-3 + 70, 1, 21.4 );
setRotateKey( spep_2-3 + 72, 1, 21.5 );
setRotateKey( spep_2-3 + 74, 1, 21.7 );
setRotateKey( spep_2-3 + 77, 1, 21.8 );
setRotateKey( spep_2-3 + 78, 1, 56.2 );
setRotateKey( spep_2-3 + 87, 1, 56.2 );
setRotateKey( spep_2-3 + 88, 1, 5.3 );
setRotateKey( spep_2-3 + 90, 1, 7.2 );
setRotateKey( spep_2-3 + 92, 1, 9.2 );
setRotateKey( spep_2-3 + 94, 1, 11.1 );
setRotateKey( spep_2-3 + 96, 1, 12.2 );
setRotateKey( spep_2-3 + 98, 1, 13.2 );
setRotateKey( spep_2-3 + 100, 1, 14.3 );
setRotateKey( spep_2-3 + 102, 1, 15.4 );
setRotateKey( spep_2-3 + 104, 1, 16.5 );
setRotateKey( spep_2-3 + 106, 1, 17.5 );
setRotateKey( spep_2-3 + 109, 1, 18.6 );
setRotateKey( spep_2-3 + 110, 1, 56.2 );
setRotateKey( spep_2-3 + 119, 1, 56.2 );
setRotateKey( spep_2-3 + 120, 1, 5.3 );
setRotateKey( spep_2-3 + 122, 1, 7.2 );
setRotateKey( spep_2-3 + 124, 1, 9.2 );
setRotateKey( spep_2-3 + 126, 1, 11.1 );
setRotateKey( spep_2-3 + 128, 1, 12.2 );
setRotateKey( spep_2-3 + 130, 1, 13.2 );
setRotateKey( spep_2-3 + 132, 1, 14.3 );
setRotateKey( spep_2-3 + 134, 1, 15.4 );
setRotateKey( spep_2-3 + 136, 1, 16.5 );
setRotateKey( spep_2-3 + 138, 1, 17.5 );
setRotateKey( spep_2-3 + 141, 1, 18.6 );
setRotateKey( spep_2-3 + 142, 1, 56.2 );
setRotateKey( spep_2-3 + 151, 1, 56.2 );
setRotateKey( spep_2-3 + 152, 1, 21.6 );
setRotateKey( spep_2-3 + 154, 1, 24.5 );
setRotateKey( spep_2-3 + 156, 1, 27.3 );
setRotateKey( spep_2-3 + 161, 1, 27.3 );
setRotateKey( spep_2-3 + 162, 1, -8.1 );
setRotateKey( spep_2-3 + 168, 1, -8.1 );
setRotateKey( spep_2-3 + 170, 1, 56.2 );
setRotateKey( spep_2-3 + 179, 1, 56.2 );
setRotateKey( spep_2-3 + 180, 1, 21.6 );
setRotateKey( spep_2-3 + 182, 1, 24.5 );
setRotateKey( spep_2-3 + 184, 1, 27.3 );
setRotateKey( spep_2-3 + 189, 1, 27.3 );
setRotateKey( spep_2-3 + 190, 1, -15.5 );
setRotateKey( spep_2-3 + 192, 1, -11.8 );
setRotateKey( spep_2-3 + 194, 1, -8 );
setRotateKey( spep_2-3 + 197, 1, -4.3 );
setRotateKey( spep_2-3 + 198, 1, -38.6 );
setRotateKey( spep_2-3 + 200, 1, -37.9 );
setRotateKey( spep_2-3 + 202, 1, -37.1 );
setRotateKey( spep_2-3 + 204, 1, -36.4 );
setRotateKey( spep_2-3 + 206, 1, -35.6 );
setRotateKey( spep_2-3 + 208, 1, -34.9 );
setRotateKey( spep_2-3 + 210, 1, -34.2 );
setRotateKey( spep_2-3 + 212, 1, -33.4 );
setRotateKey( spep_2-3 + 214, 1, -32.7 );
setRotateKey( spep_2-3 + 216, 1, -32 );
setRotateKey( spep_2-3 + 218, 1, -31.2 );
setRotateKey( spep_2-3 + 220, 1, -30.5 );
setRotateKey( spep_2-3 + 222, 1, -29.7 );
setRotateKey( spep_2-3 + 225, 1, -29 );
setRotateKey( spep_2-3 + 226, 1, -3.7 );
setRotateKey( spep_2-3 + 228, 1, -4.5 );
setRotateKey( spep_2-3 + 230, 1, -5.2 );
setRotateKey( spep_2-3 + 232, 1, -6 );
setRotateKey( spep_2-3 + 234, 1, -6.6 );
setRotateKey( spep_2-3 + 236, 1, -7.2 );
setRotateKey( spep_2-3 + 238, 1, -7.9 );
setRotateKey( spep_2-3 + 240, 1, -8.5 );
setRotateKey( spep_2-3 + 242, 1, -7.1 );
setRotateKey( spep_2-3 + 244, 1, -5.7 );
setRotateKey( spep_2-3 + 246, 1, -4.3 );
setRotateKey( spep_2-3 + 248, 1, -2.9 );
setRotateKey( spep_2-3 + 251, 1, -1.5 );

--SE
playSe( spep_2 + 40, 8 );
playSe( spep_2 + 52, 1003 );
playSe( spep_2 + 52, 1111 );
playSe( spep_2 + 69, 1189 );
playSe( spep_2 + 75, 1000 );
playSe( spep_2 + 77, 1006 );
playSe( spep_2 + 86, 1001 );
playSe( spep_2 + 104, 1189 );
playSe( spep_2 + 108, 1009 );
playSe( spep_2 + 121, 1001 );
playSe( spep_2 + 140, 1009 );
playSe( spep_2 + 149, 1189 );
playSe( spep_2 + 153, 1001 );
playSe( spep_2 + 157, 1189 );
playSe( spep_2 + 161, 1010 );
playSe( spep_2 + 180, 1007 );
playSe( spep_2 + 184, 1001 );
playSe( spep_2 + 192, 1009 );
playSe( spep_2 + 223, 1123 );

setSeVolume( spep_2 + 52, 1111, 316 );
setSeVolume( spep_2 + 86, 1001, 79 );
setSeVolume( spep_2 + 104, 1189, 50 );
setSeVolume( spep_2 + 121, 1001, 79 );
setSeVolume( spep_2 + 153, 1001, 79 );
setSeVolume( spep_2 + 184, 1001, 79 );

--白フェード
entryFade( spep_2+260, 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 266;

------------------------------------------------------
--連撃
------------------------------------------------------
-- ** エフェクト等 ** --
fry_f = entryEffect( spep_3 + 0, SP_06x, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_3 + 0, fry_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 70, fry_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, fry_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 70, fry_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fry_f, 0 );
setEffRotateKey( spep_3 + 70, fry_f, 0 );
setEffAlphaKey( spep_3 + 0, fry_f, 255 );
setEffAlphaKey( spep_3 + 70, fry_f, 255 );

-- ** エフェクト等 ** --
fry_b = entryEffect( spep_3 + 0, SP_07x, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_3 + 0, fry_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 70, fry_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, fry_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 70, fry_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fry_b, 0 );
setEffRotateKey( spep_3 + 70, fry_b, 0 );
setEffAlphaKey( spep_3 + 0, fry_b, 255 );
setEffAlphaKey( spep_3 + 70, fry_b, 255 );

--敵の動き
setDisp( spep_3-3 + 8, 1, 1 );
setDisp( spep_3-3 +46, 1, 0 );

changeAnime( spep_3 + 0, 1, 108 );

setMoveKey( spep_3 -3 + 8, 1, -476.7, -75.8 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -375.9, -33.5 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -267, 12.3 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -159.7, 57.4 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -49.2, 103.7 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 65.5, 152.1 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 195.2, 207.9 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 263, 237.2 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 331.4, 266.9 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 400.9, 297.1 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 471.7, 327.7 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 542.7, 358.3 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 616.1, 390.1 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 688.5, 421.4 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 764.2, 454.2 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 838.1, 486.2 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 916.2, 519.9 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 991.4, 552.5 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 1071.8, 587.2 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 1148.3, 620.4 , 0 );

setScaleKey( spep_3 -3 + 8, 1, 0.66, 0.66 );
setScaleKey( spep_3 -3 + 10, 1, 0.65, 0.65 );
setScaleKey( spep_3 -3 + 12, 1, 0.64, 0.64 );
setScaleKey( spep_3 -3 + 14, 1, 0.63, 0.63 );
setScaleKey( spep_3 -3 + 16, 1, 0.62, 0.62 );
setScaleKey( spep_3 -3 + 18, 1, 0.6, 0.6 );
setScaleKey( spep_3 -3 + 24, 1, 0.6, 0.6 );
setScaleKey( spep_3 -3 + 26, 1, 0.59, 0.59 );
setScaleKey( spep_3 -3 + 36, 1, 0.59, 0.59 );
setScaleKey( spep_3 -3 + 38, 1, 0.58, 0.58 );
setScaleKey( spep_3 -3 + 46, 1, 0.58, 0.58 );

setRotateKey( spep_3 -3 + 8, 1, -11 );
setRotateKey( spep_3 -3 + 10, 1, -11 );
setRotateKey( spep_3 -3 + 12, 1, -10.9 );
setRotateKey( spep_3 -3 + 18, 1, -10.9 );
setRotateKey( spep_3 -3 + 20, 1, -10.8 );
setRotateKey( spep_3 -3 + 24, 1, -10.8 );
setRotateKey( spep_3 -3 + 26, 1, -10.9 );
setRotateKey( spep_3 -3 + 38, 1, -10.9 );
setRotateKey( spep_3 -3 + 46, 1, -11 );

--SE
se_1159 = playSe( spep_3 + 17, 1159 );
se_1044 = playSe( spep_3 + 17, 1044 );
setSeVolume( spep_3 + 17, 1044, 50 );

--白フェード
entryFade( spep_3+64, 0, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 70;

------------------------------------------------------
--溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_4 + 0, SP_08x, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_4 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_4 + 150, tame, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_4 + 150, tame, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame, 0 );
setEffRotateKey( spep_4 + 150, tame, 0 );
setEffAlphaKey( spep_4 + 0, tame, 255 );
setEffAlphaKey( spep_4 + 150, tame, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_4 + 27,  906, 123, 0x100, -1, 0, 0, 0 );

setEffShake( spep_4+27 , shuchusen3, 123, 20 );

setEffMoveKey( spep_4 + 27, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 150, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 27, shuchusen3, 1.09, 1.32 );
setEffScaleKey( spep_4 + 150, shuchusen3, 1.09, 1.32 );

setEffRotateKey( spep_4 + 27, shuchusen3, 180 );
setEffRotateKey( spep_4 + 150, shuchusen3, 180 );

setEffAlphaKey( spep_4 + 27, shuchusen3, 206 );
setEffAlphaKey( spep_4 + 150, shuchusen3, 206 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_4 + 30, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_4 + 30, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_4 +42, 190006, 72, 0x100, -1, 0, 120, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_4 +42,  ctgogo,  120,  510);
setEffMoveKey(  spep_4 +114,  ctgogo,  120,  510);

setEffAlphaKey( spep_4 +42, ctgogo, 0 );
setEffAlphaKey( spep_4 + 43, ctgogo, 255 );
setEffAlphaKey( spep_4 + 44, ctgogo, 255 );
setEffAlphaKey( spep_4 + 106, ctgogo, 255 );
setEffAlphaKey( spep_4 + 108, ctgogo, 255 );
setEffAlphaKey( spep_4 + 110, ctgogo, 191 );
setEffAlphaKey( spep_4 + 112, ctgogo, 112 );
setEffAlphaKey( spep_4 + 114, ctgogo, 64 );

setEffRotateKey(  spep_4 +42,  ctgogo,  0);
setEffRotateKey(  spep_4 +114,  ctgogo,  0);

setEffScaleKey(  spep_4 +42,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_4 +104,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_4 +114,  ctgogo, -1.07, 1.07 );

--SE
playSe( spep_4 + 40, 1035 );
playSe( spep_4 + 42, 1018 );
playSe( spep_4 + 66, 1036 );
playSe( spep_4 + 90, 1036 );
playSe( spep_4 + 114, 1036 );
se_1036 = playSe( spep_4 + 138, 1036 );

setSeVolume( spep_4 + 66, 1036, 63 );
setSeVolume( spep_4 + 90, 1036, 63 );
setSeVolume( spep_4 + 114, 1036, 63 );
setSeVolume( spep_4 + 138, 1036, 63 );

stopSe( spep_4 + 41, se_1159, 13 );
stopSe( spep_4 + 28, se_1044, 31 );
stopSe( spep_4 + 148, se_1036, 0 );

--白フェード
entryFade( spep_4+27, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 200 );     -- white fade
entryFade( spep_4+142, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 150;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_5 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_5 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_5 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_5 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_5 + 0, shuchusen, 0 );
setEffRotateKey( spep_5 + 90, shuchusen, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen, 255 );
setEffAlphaKey( spep_5 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_5 + 0, SE_05 );

--白フェード
entryFade( spep_5 + 82, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 94;

------------------------------------------------------
-- 発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_6 + 0, SP_09x, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_6 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_6 + 110, beam, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, beam, -1.0, 1.0 );
setEffScaleKey( spep_6 + 110, beam, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, beam, 0 );
setEffRotateKey( spep_6 + 110, beam, 0 );
setEffAlphaKey( spep_6 + 0, beam, 255 );
setEffAlphaKey( spep_6 + 110, beam, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_6 + 0,  906, 108, 0x100, -1, 0, 0, 0 );

setEffShake( spep_6 , shuchusen4, 108, 20 );

setEffMoveKey( spep_6 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_6 + 108, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen4, 1.07, 1.53 );
setEffScaleKey( spep_6 + 108, shuchusen4, 1.07, 1.53 );

setEffRotateKey( spep_6 + 0, shuchusen4, 180 );
setEffRotateKey( spep_6 + 108, shuchusen4, 180 );

setEffAlphaKey( spep_6 + 0, shuchusen4, 128 );
setEffAlphaKey( spep_6-3 + 27, shuchusen4, 128 );
setEffAlphaKey( spep_6-3 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_6 + 108, shuchusen4, 255 );

--SE
se_1200 = playSe( spep_6 + 0, 1200 );
se_1199 = playSe( spep_6 + 3, 1199 );
playSe( spep_6 + 29, 1198 );
se_0040 = playSe( spep_6 + 31, 40 );
playSe( spep_6 + 77, 1201 );
playSe( spep_6 + 77, 1202 );
playSe( spep_6 + 80, 1027 );

setSeVolume( spep_6 + 3, 1199, 141 );
setSeVolume( spep_6 + 31, 40, 56 );

stopSe( spep_6 + 73, se_1200, 33 );
stopSe( spep_6 + 60, se_1199, 0 );
stopSe( spep_6 + 59, se_0040, 19 );

--白フェード
entryFade( spep_6+25, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 180 );     -- white fade
entryFade( spep_6+102, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 110;

------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_7 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 190, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 190, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_f, 0 );
setEffRotateKey( spep_7 + 190, finish_f, 0 );
setEffAlphaKey( spep_7 + 0, finish_f, 255 );
setEffAlphaKey( spep_7 + 190, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_7 + 0, SP_11, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_7 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 190, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 190, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_b, 0 );
setEffRotateKey( spep_7 + 190, finish_b, 0 );
setEffAlphaKey( spep_7 + 0, finish_b, 255 );
setEffAlphaKey( spep_7 + 190, finish_b, 255 );

--集中線
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 -3 + 78, 1, 0 );

changeAnime( spep_7 + 0, 1, 105 );

setMoveKey( spep_7 + 0, 1, -923.7, -737.4 , 0 );
--setMoveKey( spep_7-3 + 2, 1, -812.7, -643.1 , 0 );
setMoveKey( spep_7-3 + 4, 1, -701.7, -548.8 , 0 );
setMoveKey( spep_7-3 + 6, 1, -590.7, -454.6 , 0 );
setMoveKey( spep_7-3 + 8, 1, -479.7, -360.4 , 0 );
setMoveKey( spep_7-3 + 10, 1, -368.7, -266.2 , 0 );
setMoveKey( spep_7-3 + 12, 1, -257.8, -172 , 0 );
setMoveKey( spep_7-3 + 14, 1, -146.8, -77.8 , 0 );
setMoveKey( spep_7-3 + 16, 1, -35.8, 16.4 , 0 );
setMoveKey( spep_7-3 + 18, 1, -24.2, 27.4 , 0 );
setMoveKey( spep_7-3 + 20, 1, -12.5, 38.5 , 0 );
setMoveKey( spep_7-3 + 22, 1, -0.8, 49.5 , 0 );
setMoveKey( spep_7-3 + 24, 1, 10.9, 60.6 , 0 );
setMoveKey( spep_7-3 + 26, 1, 22.6, 71.7 , 0 );
setMoveKey( spep_7-3 + 28, 1, 34.3, 82.8 , 0 );
setMoveKey( spep_7-3 + 30, 1, 46, 93.9 , 0 );
setMoveKey( spep_7-3 + 32, 1, 47.5, 95.3 , 0 );
setMoveKey( spep_7-3 + 34, 1, 49, 96.7 , 0 );
setMoveKey( spep_7-3 + 36, 1, 50.5, 98.1 , 0 );
setMoveKey( spep_7-3 + 38, 1, 52, 99.5 , 0 );
setMoveKey( spep_7-3 + 40, 1, 53.6, 100.9 , 0 );
setMoveKey( spep_7-3 + 42, 1, 55.1, 102.4 , 0 );
setMoveKey( spep_7-3 + 44, 1, 56.6, 103.8 , 0 );
setMoveKey( spep_7-3 + 46, 1, 58.1, 105.2 , 0 );
setMoveKey( spep_7-3 + 48, 1, 59.6, 106.6 , 0 );
setMoveKey( spep_7-3 + 50, 1, 61.1, 108 , 0 );
setMoveKey( spep_7-3 + 52, 1, 62.6, 109.5 , 0 );
setMoveKey( spep_7-3 + 54, 1, 64.1, 110.9 , 0 );
setMoveKey( spep_7-3 + 56, 1, 65.6, 112.3 , 0 );
setMoveKey( spep_7-3 + 58, 1, 67.1, 113.7 , 0 );
setMoveKey( spep_7-3 + 60, 1, 68.6, 115.1 , 0 );
setMoveKey( spep_7-3 + 62, 1, 70.1, 116.6 , 0 );
setMoveKey( spep_7-3 + 64, 1, 71.6, 118 , 0 );
setMoveKey( spep_7-3 + 66, 1, 73.1, 119.4 , 0 );
setMoveKey( spep_7-3 + 68, 1, 74.7, 120.8 , 0 );
setMoveKey( spep_7-3 + 70, 1, 76.2, 122.3 , 0 );
setMoveKey( spep_7-3 + 72, 1, 77.7, 123.7 , 0 );
setMoveKey( spep_7-3 + 74, 1, 79.2, 125.1 , 0 );
setMoveKey( spep_7-3 + 76, 1, 80.7, 126.5 , 0 );
setMoveKey( spep_7-3 + 78, 1, 82.2, 128 , 0 );

setScaleKey( spep_7 + 0, 1, 6.57, 6.57 );
--setScaleKey( spep_7-3 + 2, 1, 5.85, 5.85 );
setScaleKey( spep_7-3 + 4, 1, 5.13, 5.13 );
setScaleKey( spep_7-3 + 6, 1, 4.41, 4.41 );
setScaleKey( spep_7-3 + 8, 1, 3.7, 3.7 );
setScaleKey( spep_7-3 + 10, 1, 2.98, 2.98 );
setScaleKey( spep_7-3 + 12, 1, 2.26, 2.26 );
setScaleKey( spep_7-3 + 14, 1, 1.54, 1.54 );
setScaleKey( spep_7-3 + 16, 1, 0.82, 0.82 );
setScaleKey( spep_7-3 + 18, 1, 0.75, 0.75 );
setScaleKey( spep_7-3 + 20, 1, 0.68, 0.68 );
setScaleKey( spep_7-3 + 22, 1, 0.61, 0.61 );
setScaleKey( spep_7-3 + 24, 1, 0.53, 0.53 );
setScaleKey( spep_7-3 + 26, 1, 0.46, 0.46 );
setScaleKey( spep_7-3 + 28, 1, 0.39, 0.39 );
setScaleKey( spep_7-3 + 30, 1, 0.32, 0.32 );
setScaleKey( spep_7-3 + 32, 1, 0.31, 0.31 );
setScaleKey( spep_7-3 + 34, 1, 0.3, 0.3 );
setScaleKey( spep_7-3 + 36, 1, 0.29, 0.29 );
setScaleKey( spep_7-3 + 38, 1, 0.28, 0.28 );
setScaleKey( spep_7-3 + 40, 1, 0.27, 0.27 );
setScaleKey( spep_7-3 + 42, 1, 0.26, 0.26 );
setScaleKey( spep_7-3 + 44, 1, 0.25, 0.25 );
setScaleKey( spep_7-3 + 46, 1, 0.24, 0.24 );
setScaleKey( spep_7-3 + 48, 1, 0.23, 0.23 );
setScaleKey( spep_7-3 + 50, 1, 0.22, 0.22 );
setScaleKey( spep_7-3 + 52, 1, 0.21, 0.21 );
setScaleKey( spep_7-3 + 54, 1, 0.21, 0.21 );
setScaleKey( spep_7-3 + 56, 1, 0.2, 0.2 );
setScaleKey( spep_7-3 + 58, 1, 0.19, 0.19 );
setScaleKey( spep_7-3 + 60, 1, 0.18, 0.18 );
setScaleKey( spep_7-3 + 62, 1, 0.17, 0.17 );
setScaleKey( spep_7-3 + 64, 1, 0.16, 0.16 );
setScaleKey( spep_7-3 + 66, 1, 0.15, 0.15 );
setScaleKey( spep_7-3 + 68, 1, 0.14, 0.14 );
setScaleKey( spep_7-3 + 70, 1, 0.13, 0.13 );
setScaleKey( spep_7-3 + 72, 1, 0.12, 0.12 );
setScaleKey( spep_7-3 + 74, 1, 0.11, 0.11 );
setScaleKey( spep_7-3 + 76, 1, 0.1, 0.1 );
setScaleKey( spep_7-3 + 78, 1, 0.09, 0.09 );

setRotateKey( spep_7 + 0, 1, 17.7 );
--setRotateKey( spep_7-3 + 4, 1, 17.7 );
setRotateKey( spep_7-3 + 6, 1, 17.6 );
setRotateKey( spep_7-3 + 12, 1, 17.6 );
setRotateKey( spep_7-3 + 14, 1, 17.5 );
setRotateKey( spep_7-3 + 40, 1, 17.5 );
setRotateKey( spep_7-3 + 42, 1, 17.6 );
setRotateKey( spep_7-3 + 64, 1, 17.6 );
setRotateKey( spep_7-3 + 66, 1, 17.7 );
setRotateKey( spep_7-3 + 78, 1, 17.7 );

--集中線
shuchusen5 = entryEffectLife( spep_7-3 + 88,  906, 102, 0x100, -1, 0, 0, 0 );

setEffShake( spep_7-3 + 88 , shuchusen5, 102, 20 );

setEffMoveKey( spep_7-3 + 88, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_7-3 + 190, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_7-3 + 88, shuchusen5, 1.2, 1.23 );
setEffScaleKey( spep_7-3 + 190, shuchusen5, 1.2, 1.23 );

setEffRotateKey( spep_7-3 + 88, shuchusen5, 180 );
setEffRotateKey( spep_7-3 + 190, shuchusen5, 180 );

setEffAlphaKey( spep_7-3 + 88, shuchusen5, 141 );
setEffAlphaKey( spep_7-3 + 190, shuchusen5, 141 );

--SE
playSe( spep_7 + 10, 1022 );
setSeVolume( spep_7 + 10, 1022, 0 );
setSeVolume( spep_7 + 19, 1022, 6 );
setSeVolume( spep_7 + 20, 1022, 12 );
setSeVolume( spep_7 + 21, 1022, 18 );
setSeVolume( spep_7 + 22, 1022, 24 );
setSeVolume( spep_7 + 23, 1022, 30 );
setSeVolume( spep_7 + 24, 1022, 36 );
setSeVolume( spep_7 + 25, 1022, 42 );
setSeVolume( spep_7 + 26, 1022, 48 );
setSeVolume( spep_7 + 27, 1022, 54 );
setSeVolume( spep_7 + 28, 1022, 60 );
setSeVolume( spep_7 + 29, 1022, 66 );
setSeVolume( spep_7 + 30, 1022, 72 );
setSeVolume( spep_7 + 31, 1022, 78 );
setSeVolume( spep_7 + 32, 1022, 84 );
setSeVolume( spep_7 + 33, 1022, 90 );
setSeVolume( spep_7 + 34, 1022, 100 );
playSe( spep_7 + 10, 1035 );
setSeVolume( spep_7 + 10, 1035, 0 );
setSeVolume( spep_7 + 15, 1035, 7 );
setSeVolume( spep_7 + 16, 1035, 14 );
setSeVolume( spep_7 + 17, 1035, 21 );
setSeVolume( spep_7 + 18, 1035, 28 );
setSeVolume( spep_7 + 19, 1035, 35 );
setSeVolume( spep_7 + 20, 1035, 42 );
setSeVolume( spep_7 + 21, 1035, 49 );
setSeVolume( spep_7 + 22, 1035, 56 );
setSeVolume( spep_7 + 23, 1035, 63 );
setSeVolume( spep_7 + 24, 1035, 70 );
setSeVolume( spep_7 + 25, 1035, 77 );
setSeVolume( spep_7 + 26, 1035, 84 );
setSeVolume( spep_7 + 27, 1035, 91 );
setSeVolume( spep_7 + 28, 1035, 100 );
playSe( spep_7 + 87, 1023 );
playSe( spep_7 + 91, 1159 );
setSeVolume( spep_7 + 91, 1159, 63 );



--白フェード
entryFade( spep_7 + 84, 0, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 90 );

endPhase( spep_7 + 180 );

end