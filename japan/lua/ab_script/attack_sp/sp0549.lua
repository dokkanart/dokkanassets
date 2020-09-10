--4016880:伝説の超サイヤ人ブロリー_ギガンティックミーティア
--sp_effect_a2_00110

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
SP_01=	153505	;--	ため
SP_02=	153506	;--	発射
SP_03=	153507	;--	被弾　奥
SP_04=	153508	;--	被弾　前
SP_05=	153509	;--	被弾２
SP_06=	153510	;--	ダメージ

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
--崖の上に飛び乗る
------------------------------------------------------
spep_0=0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 300, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 300, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 300, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 300, tame, 255 );
setEffAlphaKey( spep_0 + 301, tame, 0 );
setEffAlphaKey( spep_0 + 302, tame, 0 );

--セリフカットイン
speff1 = entryEffect( spep_0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
--playSe( spep_0, 1018);
playSe( spep_0+60, 9);
playSe( spep_0+64, 44);
setSeVolume(spep_0+64,44,80);
playSe( spep_0+204, 63);


-- ** 白フェード** --
entryFade(spep_0+292,4,10,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

spep_1=spep_0+300;

--------------------------------------
--カードカットイン
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え



-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** エフェクト等 ** --
entryFade(spep_1+82,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2 = spep_1 + 92;

------------------------------------------------------
--気弾を投げる
------------------------------------------------------
-- ** エフェクト等 ** --
kidan = entryEffect( spep_2 + 0, SP_02,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, kidan, 0, 0 , 0 );
setEffMoveKey( spep_2 + 330, kidan, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kidan, 1.0, 1.0 );
setEffScaleKey( spep_2 + 330, kidan, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kidan, 0 );
setEffRotateKey( spep_2 + 330, kidan, 0 );
setEffAlphaKey( spep_2 + 0, kidan, 255 );
setEffAlphaKey( spep_2 + 330, kidan, 255 );
setEffAlphaKey( spep_2 + 331, kidan, 0 );
setEffAlphaKey( spep_2 + 332, kidan, 0 );

--SE
SE1=playSe( spep_2, 15);
stopSe( spep_2+76, SE1, 0 );
playSe( spep_2+82, 1034);

SE0=playSe( spep_2+140, 1018);
setSeVolume(spep_2+140,1018,80);
SE2=playSe( spep_2+148, 1019);
setSeVolume(spep_2+148,1019,200);
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 200; --エンドフェイズのフレーム数を置き換える

    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE2, 0 );

    playSe( SP_dodge - 12, 1042 );
    
    pauseAll( SP_dodge, 67 );
    
    --[[
    -- ** 敵キャラクター ** --
    changeAnime( SP_dodge + 0, 1, 100 );  --待機正面向き
    
    setMoveKey( SP_dodge + 0, 1, 104, -6 , 0 );
    setMoveKey( SP_dodge + 2, 1, 84, 2.5 , 0 );
    setMoveKey( SP_dodge + 4, 1, 64, 11.1 , 0 );
    setMoveKey( SP_dodge + 6, 1, 44, 19.6 , 0 );
    setMoveKey( SP_dodge + 8, 1, 24, 28.1 , 0 );
    setMoveKey( SP_dodge + 10, 1, 13, 34.5 , 0 );
    
    setScaleKey( SP_dodge + 0, 1, 1.25, 1.25 );
    setScaleKey( SP_dodge + 2, 1, 1.31, 1.31 );
    setScaleKey( SP_dodge + 4, 1, 1.36, 1.36 );
    setScaleKey( SP_dodge + 6, 1, 1.42, 1.42 );
    setScaleKey( SP_dodge + 8, 1, 1.48, 1.48 );
    setScaleKey( SP_dodge + 10, 1, 1.49, 1.49 );
    
    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );
    ]]
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
stopSe( spep_2+236, SE2, 0 );
playSe( spep_2+238, 1068);
playSe( spep_2+272,44);

--次の準備
spep_3 = spep_2 + 330;

------------------------------------------------------
--気弾が当たる
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3 + 0, SP_04,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 88, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 88, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 88, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 88, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_3 + 0, SP_03,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 88, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 88, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 88, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 88, hit_b, 255 );

--敵の動き
setDisp( spep_3  + 0, 1, 1 );
setDisp( spep_3 + 88, 1, 0 );

changeAnime( spep_3  + 0, 1, 118 );


setMoveKey( spep_3  + 0, 1, 11.8, -83 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, 12.1, -83 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 12.3, -83 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 12.6, -83 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 12.9, -83 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 13.1, -83 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 13.4, -83 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 13.6, -83 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 13.9, -83 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 14.1, -83 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 14.4, -83 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 14.6, -83 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 14.9, -83 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 15.1, -83 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 15.4, -83 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 15.6, -83.1 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 15.9, -83.1 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 16.1, -83.1 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 16.4, -83.1 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 16.6, -83.1 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 16.9, -83.1 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 17.1, -83.1 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 17.4, -83.1 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 17.6, -83.1 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 17.9, -83.1 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 21.9, -83 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 22.5, -83.1 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 23.8, -83.5 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 26.2, -84.2 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 29.8, -85.1 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 34.2, -86.3 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 38.4, -87.4 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 42.1, -88.4 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 45.1, -89.2 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 47.5, -89.8 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 49.5, -90.4 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 51, -90.8 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 52.3, -91.1 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 53.4, -91.4 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 54.2, -91.6 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 54.8, -91.8 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 55.3, -91.9 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 55.7, -92 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 55.9, -92.1 , 0 );
setMoveKey( spep_3  + 88, 1, 56, -92.1 , 0 );


setScaleKey( spep_3  + 0, 1, 0.34, 0.34 );
--setScaleKey( spep_3 -3 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_3 -3 + 20, 1, 0.35, 0.35 );
setScaleKey( spep_3 -3 + 22, 1, 0.36, 0.36 );
setScaleKey( spep_3 -3 + 38, 1, 0.36, 0.36 );
setScaleKey( spep_3 -3 + 40, 1, 0.37, 0.37 );
setScaleKey( spep_3 -3 + 48, 1, 0.37, 0.37 );
setScaleKey( spep_3 -3 + 50, 1, 0.37, 0.37 );
setScaleKey( spep_3 -3 + 52, 1, 0.37, 0.37 );
setScaleKey( spep_3 -3 + 54, 1, 0.38, 0.38 );
setScaleKey( spep_3 -3 + 56, 1, 0.39, 0.39 );
setScaleKey( spep_3 -3 + 58, 1, 0.4, 0.4 );
setScaleKey( spep_3 -3 + 60, 1, 0.41, 0.41 );
setScaleKey( spep_3 -3 + 62, 1, 0.42, 0.42 );
setScaleKey( spep_3 -3 + 64, 1, 0.44, 0.44 );
setScaleKey( spep_3 -3 + 66, 1, 0.45, 0.45 );
setScaleKey( spep_3 -3 + 68, 1, 0.45, 0.45 );
setScaleKey( spep_3 -3 + 70, 1, 0.46, 0.46 );
setScaleKey( spep_3 -3 + 72, 1, 0.47, 0.47 );
setScaleKey( spep_3 -3 + 74, 1, 0.47, 0.47 );
setScaleKey( spep_3 -3 + 76, 1, 0.48, 0.48 );
setScaleKey( spep_3 -3 + 84, 1, 0.48, 0.48 );
setScaleKey( spep_3 + 88, 1, 0.49, 0.49 );

setRotateKey( spep_3  + 0, 1, 18.5 );
setRotateKey( spep_3 -3 + 48, 1, 18.5 );
setRotateKey( spep_3 -3 + 50, 1, 20.4 );
setRotateKey( spep_3 -3 + 52, 1, 20.4 );
setRotateKey( spep_3 -3 + 54, 1, 20.5 );
setRotateKey( spep_3 -3 + 56, 1, 20.6 );
setRotateKey( spep_3 -3 + 58, 1, 20.7 );
setRotateKey( spep_3 -3 + 60, 1, 20.8 );
setRotateKey( spep_3 -3 + 62, 1, 21 );
setRotateKey( spep_3 -3 + 64, 1, 21.1 );
setRotateKey( spep_3 -3 + 66, 1, 21.2 );
setRotateKey( spep_3 -3 + 68, 1, 21.3 );
setRotateKey( spep_3 -3 + 70, 1, 21.4 );
setRotateKey( spep_3 -3 + 72, 1, 21.5 );
setRotateKey( spep_3 -3 + 76, 1, 21.5 );
setRotateKey( spep_3  + 88, 1, 21.6 );

--SE
playSe( spep_3+10, 1021);

--次の準備
spep_4 = spep_3 + 88;


------------------------------------------------------
--着弾
------------------------------------------------------
-- ** エフェクト等 ** --
landing = entryEffect( spep_4 + 0, SP_05,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, landing, 0, 0 , 0 );
setEffMoveKey( spep_4 + 170, landing, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, landing, 1.1, 1.1 );
setEffScaleKey( spep_4 + 170, landing, 1.1, 1.1 );
setEffRotateKey( spep_4 + 0, landing, 0 );
setEffRotateKey( spep_4 + 170, landing, 0 );
setEffAlphaKey( spep_4 + 0, landing, 255 );
setEffAlphaKey( spep_4 + 170, landing, 255 );
setEffAlphaKey( spep_4 + 171, landing, 0);
setEffAlphaKey( spep_4 + 172, landing, 0 );

--SE
SE3=playSe( spep_4+2, 1044);
stopSe(spep_4+160,SE3,10);
playSe( spep_4+32, 1068);
playSe( spep_4+100, 1023);


--次の準備
spep_5 = spep_4 + 170;


------------------------------------------------------
--フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_5 + 0, SP_06,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_5 + 130, finish, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_5 + 130, finish, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish, 0 );
setEffRotateKey( spep_5 + 130, finish, 0 );
setEffAlphaKey( spep_5 + 0, finish, 255 );
setEffAlphaKey( spep_5 + 130, finish, 255 );

--SE
playSe( spep_5+14, 1024);

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 14 );
entryFade( spep_5 + 114, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_5 + 120 );


else 


------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--崖の上に飛び乗る
------------------------------------------------------
spep_0=0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 300, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 300, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 300, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 300, tame, 255 );
setEffAlphaKey( spep_0 + 301, tame, 0 );
setEffAlphaKey( spep_0 + 302, tame, 0 );


--SE
--playSe( spep_0, 1018);
playSe( spep_0+60, 9);
playSe( spep_0+64, 44);
setSeVolume(spep_0+64,44,80);
playSe( spep_0+204, 63);

-- ** 白フェード** --
entryFade(spep_0+292,4,10,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

spep_1=spep_0+300;

--------------------------------------
--カードカットイン
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え



-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** エフェクト等 ** --
entryFade(spep_1+82,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2 = spep_1 + 92;

------------------------------------------------------
--気弾を投げる
------------------------------------------------------
-- ** エフェクト等 ** --
kidan = entryEffect( spep_2 + 0, SP_02,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, kidan, 0, 0 , 0 );
setEffMoveKey( spep_2 + 330, kidan, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kidan, -1.0, 1.0 );
setEffScaleKey( spep_2 + 330, kidan, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kidan, 0 );
setEffRotateKey( spep_2 + 330, kidan, 0 );
setEffAlphaKey( spep_2 + 0, kidan, 255 );
setEffAlphaKey( spep_2 + 330, kidan, 255 );
setEffAlphaKey( spep_2 + 331, kidan, 0 );
setEffAlphaKey( spep_2 + 332, kidan, 0 );

--SE
SE1=playSe( spep_2, 15);
stopSe( spep_2+76, SE1, 0 );
playSe( spep_2+82, 1034);

SE0=playSe( spep_2+140, 1018);
setSeVolume(spep_2+140,1018,80);
SE2=playSe( spep_2+148, 1019);
setSeVolume(spep_2+148,1019,200);
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 200; --エンドフェイズのフレーム数を置き換える

    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE2, 0 );


    playSe( SP_dodge - 12, 1042 );
    
    pauseAll( SP_dodge, 67 );
    
    --[[
    -- ** 敵キャラクター ** --
    changeAnime( SP_dodge + 0, 1, 100 );  --待機正面向き
    
    setMoveKey( SP_dodge + 0, 1, 104, -6 , 0 );
    setMoveKey( SP_dodge + 2, 1, 84, 2.5 , 0 );
    setMoveKey( SP_dodge + 4, 1, 64, 11.1 , 0 );
    setMoveKey( SP_dodge + 6, 1, 44, 19.6 , 0 );
    setMoveKey( SP_dodge + 8, 1, 24, 28.1 , 0 );
    setMoveKey( SP_dodge + 10, 1, 13, 34.5 , 0 );
    
    setScaleKey( SP_dodge + 0, 1, 1.25, 1.25 );
    setScaleKey( SP_dodge + 2, 1, 1.31, 1.31 );
    setScaleKey( SP_dodge + 4, 1, 1.36, 1.36 );
    setScaleKey( SP_dodge + 6, 1, 1.42, 1.42 );
    setScaleKey( SP_dodge + 8, 1, 1.48, 1.48 );
    setScaleKey( SP_dodge + 10, 1, 1.49, 1.49 );
    
    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );
    ]]
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

stopSe( spep_2+236, SE2, 0 );
playSe( spep_2+238, 1068);
playSe( spep_2+272,44);

--次の準備
spep_3 = spep_2 + 330;

------------------------------------------------------
--気弾が当たる
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3 + 0, SP_04,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 88, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 88, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 88, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 88, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_3 + 0, SP_03,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 88, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 88, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 88, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 88, hit_b, 255 );


--敵の動き
setDisp( spep_3  + 0, 1, 1 );
setDisp( spep_3 + 88, 1, 0 );

changeAnime( spep_3  + 0, 1, 118 );


setMoveKey( spep_3  + 0, 1, 11.8, -83 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, 12.1, -83 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 12.3, -83 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 12.6, -83 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 12.9, -83 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 13.1, -83 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 13.4, -83 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 13.6, -83 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 13.9, -83 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 14.1, -83 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 14.4, -83 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 14.6, -83 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 14.9, -83 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 15.1, -83 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 15.4, -83 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 15.6, -83.1 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 15.9, -83.1 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 16.1, -83.1 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 16.4, -83.1 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 16.6, -83.1 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 16.9, -83.1 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 17.1, -83.1 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 17.4, -83.1 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 17.6, -83.1 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 17.9, -83.1 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 21.9, -83 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 22.5, -83.1 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 23.8, -83.5 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 26.2, -84.2 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 29.8, -85.1 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 34.2, -86.3 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 38.4, -87.4 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 42.1, -88.4 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 45.1, -89.2 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 47.5, -89.8 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 49.5, -90.4 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 51, -90.8 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 52.3, -91.1 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 53.4, -91.4 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 54.2, -91.6 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 54.8, -91.8 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 55.3, -91.9 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 55.7, -92 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 55.9, -92.1 , 0 );
setMoveKey( spep_3  + 88, 1, 56, -92.1 , 0 );


setScaleKey( spep_3  + 0, 1, 0.34, 0.34 );
--setScaleKey( spep_3 -3 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_3 -3 + 20, 1, 0.35, 0.35 );
setScaleKey( spep_3 -3 + 22, 1, 0.36, 0.36 );
setScaleKey( spep_3 -3 + 38, 1, 0.36, 0.36 );
setScaleKey( spep_3 -3 + 40, 1, 0.37, 0.37 );
setScaleKey( spep_3 -3 + 48, 1, 0.37, 0.37 );
setScaleKey( spep_3 -3 + 50, 1, 0.37, 0.37 );
setScaleKey( spep_3 -3 + 52, 1, 0.37, 0.37 );
setScaleKey( spep_3 -3 + 54, 1, 0.38, 0.38 );
setScaleKey( spep_3 -3 + 56, 1, 0.39, 0.39 );
setScaleKey( spep_3 -3 + 58, 1, 0.4, 0.4 );
setScaleKey( spep_3 -3 + 60, 1, 0.41, 0.41 );
setScaleKey( spep_3 -3 + 62, 1, 0.42, 0.42 );
setScaleKey( spep_3 -3 + 64, 1, 0.44, 0.44 );
setScaleKey( spep_3 -3 + 66, 1, 0.45, 0.45 );
setScaleKey( spep_3 -3 + 68, 1, 0.45, 0.45 );
setScaleKey( spep_3 -3 + 70, 1, 0.46, 0.46 );
setScaleKey( spep_3 -3 + 72, 1, 0.47, 0.47 );
setScaleKey( spep_3 -3 + 74, 1, 0.47, 0.47 );
setScaleKey( spep_3 -3 + 76, 1, 0.48, 0.48 );
setScaleKey( spep_3 -3 + 84, 1, 0.48, 0.48 );
setScaleKey( spep_3 + 88, 1, 0.49, 0.49 );

setRotateKey( spep_3  + 0, 1, 18.5 );
setRotateKey( spep_3 -3 + 48, 1, 18.5 );
setRotateKey( spep_3 -3 + 50, 1, 20.4 );
setRotateKey( spep_3 -3 + 52, 1, 20.4 );
setRotateKey( spep_3 -3 + 54, 1, 20.5 );
setRotateKey( spep_3 -3 + 56, 1, 20.6 );
setRotateKey( spep_3 -3 + 58, 1, 20.7 );
setRotateKey( spep_3 -3 + 60, 1, 20.8 );
setRotateKey( spep_3 -3 + 62, 1, 21 );
setRotateKey( spep_3 -3 + 64, 1, 21.1 );
setRotateKey( spep_3 -3 + 66, 1, 21.2 );
setRotateKey( spep_3 -3 + 68, 1, 21.3 );
setRotateKey( spep_3 -3 + 70, 1, 21.4 );
setRotateKey( spep_3 -3 + 72, 1, 21.5 );
setRotateKey( spep_3 -3 + 76, 1, 21.5 );
setRotateKey( spep_3  + 88, 1, 21.6 );

--SE
playSe( spep_3+10, 1021);

--次の準備
spep_4 = spep_3 + 88;

------------------------------------------------------
--着弾
------------------------------------------------------
-- ** エフェクト等 ** --
landing = entryEffect( spep_4 + 0, SP_05,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, landing, 0, 0 , 0 );
setEffMoveKey( spep_4 + 170, landing, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, landing, 1.1, 1.1 );
setEffScaleKey( spep_4 + 170, landing, 1.1, 1.1 );
setEffRotateKey( spep_4 + 0, landing, 0 );
setEffRotateKey( spep_4 + 170, landing, 0 );
setEffAlphaKey( spep_4 + 0, landing, 255 );
setEffAlphaKey( spep_4 + 170, landing, 255 );
setEffAlphaKey( spep_4 + 171, landing, 0);
setEffAlphaKey( spep_4 + 172, landing, 0 );

--SE
SE3=playSe( spep_4+2, 1044);
stopSe(spep_4+160,SE3,10);
playSe( spep_4+32, 1068);
playSe( spep_4+100, 1023);

--次の準備
spep_5 = spep_4 + 170;


------------------------------------------------------
--フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_5 + 0, SP_06,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_5 + 130, finish, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_5 + 130, finish, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish, 0 );
setEffRotateKey( spep_5 + 130, finish, 0 );
setEffAlphaKey( spep_5 + 0, finish, 255 );
setEffAlphaKey( spep_5 + 130, finish, 255 );

--SE
playSe( spep_5+14, 1024);

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 14 );
entryFade( spep_5 + 114, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_5 + 120 );



end


