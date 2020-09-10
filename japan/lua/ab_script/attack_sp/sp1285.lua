--4017100:トランクス(青年期)(未来)_ファイナルホープスラッシュ
--sp_effect_b2_00021

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
--SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

SE_12 = 09;

--味方側
SP_01=	153424	;--	対峙
SP_02=	153425	;--	対峙　背景
SP_03=	153426	;--	突っ込み
SP_04=	153427	;--	突っ込み　背景
SP_05=	153428	;--	3段切り　上
SP_06=	153429	;--	3段切り　中
SP_07=	153430	;--	3段切り　下
SP_08=	153431	;--	突き
SP_09=	153432	;--	突きつっこみ
SP_10=	153433	;--	突きつっこみ　背景
SP_11=	153434	;--	切り上げ
SP_12=	153435	;--	フィニッシュ
SP_13=	153436	;--	フィニッシュ　背景
SP_14=	153437	;--	KO演出

--敵側
SP_01x=	153438	;--	対峙	(敵)
SP_02x=	153425	;--	対峙　背景	
SP_03x=	153439	;--	突っ込み	(敵)
SP_04x=	153427	;--	突っ込み　背景	
SP_05x=	153428	;--	3段切り　上	
SP_06x=	153440	;--	3段切り　中	(敵)
SP_07x=	153430	;--	3段切り　下	
SP_08x=	153431	;--	突き	
SP_09x=	153441	;--	突きつっこみ	(敵)
SP_10x=	153433	;--	突きつっこみ　背景	
SP_11x=	153474	;--	切り上げ	
SP_12x=	153442	;--	フィニッシュ	(敵)
SP_13x=	153436	;--	フィニッシュ　背景	

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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
--[[
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
]]
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 溜める
------------------------------------------------------
spep_0=0;


-- ** エフェクト等 ** --
tame_f = entryEffect( spep_0 + 0, SP_01,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 60, tame_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 60, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_f, 0 );
setEffRotateKey( spep_0 + 60, tame_f, 0 );
setEffAlphaKey( spep_0 + 0, tame_f, 255 );
setEffAlphaKey( spep_0 + 60, tame_f, 255 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_0 + 0, SP_02,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 60, tame_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 60, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_b, 0 );
setEffRotateKey( spep_0 + 60, tame_b, 0 );
setEffAlphaKey( spep_0 + 0, tame_b, 255 );
setEffAlphaKey( spep_0 + 60, tame_b, 255 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 58, 1, 0 );

changeAnime( spep_0 + 0, 1, 101 );

setMoveKey( spep_0 + 0, 1, 138.1, 186 , 0 );
setMoveKey( spep_0 + 2, 1, 138, 185.4 , 0 );
setMoveKey( spep_0 + 4, 1, 138, 184.7 , 0 );
setMoveKey( spep_0 + 6, 1, 138, 184 , 0 );
setMoveKey( spep_0 + 8, 1, 138, 183.3 , 0 );
setMoveKey( spep_0 + 10, 1, 138, 182.6 , 0 );
setMoveKey( spep_0 + 12, 1, 138, 181.9 , 0 );
setMoveKey( spep_0 + 14, 1, 138, 181.2 , 0 );
setMoveKey( spep_0 + 16, 1, 138, 180.5 , 0 );
setMoveKey( spep_0 + 18, 1, 138, 179.8 , 0 );
setMoveKey( spep_0 + 20, 1, 138, 179.2 , 0 );
setMoveKey( spep_0 + 22, 1, 138, 178.5 , 0 );
setMoveKey( spep_0 + 24, 1, 138, 177.8 , 0 );
setMoveKey( spep_0 + 26, 1, 138, 177.1 , 0 );
setMoveKey( spep_0 + 28, 1, 138, 176.4 , 0 );
setMoveKey( spep_0 + 30, 1, 138, 175.7 , 0 );
setMoveKey( spep_0 + 32, 1, 138, 175 , 0 );
setMoveKey( spep_0 + 34, 1, 138, 174.3 , 0 );
setMoveKey( spep_0 + 36, 1, 138, 173.6 , 0 );
setMoveKey( spep_0 + 38, 1, 138, 172.9 , 0 );
setMoveKey( spep_0 + 40, 1, 138, 172.3 , 0 );
setMoveKey( spep_0 + 42, 1, 138, 171.6 , 0 );
setMoveKey( spep_0 + 44, 1, 138, 170.9 , 0 );
setMoveKey( spep_0 + 46, 1, 138, 170.2 , 0 );
setMoveKey( spep_0 + 48, 1, 138, 169.5 , 0 );
setMoveKey( spep_0 + 50, 1, 138, 168.8 , 0 );
setMoveKey( spep_0 + 52, 1, 138, 168.1 , 0 );
setMoveKey( spep_0 + 54, 1, 138, 167.4 , 0 );
setMoveKey( spep_0 + 56, 1, 138, 166.7 , 0 );
setMoveKey( spep_0 + 58, 1, 138, 166 , 0 );

setScaleKey( spep_0 + 0, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 1, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 2, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 3, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 4, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 5, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 6, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 58, 1, 0.5, 0.5 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 58, 1, 0 );

--SE
SE1=playSe(spep_0,55);
stopSe( spep_0+58, SE1, 0 );

-- ** ホワイトフェード ** --
entryFade( spep_0 + 52, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 60;

--------------------------------------
--カードカットイン(94F)
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


entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 突進
------------------------------------------------------
-- ** エフェクト等 ** --
rush_f = entryEffect( spep_2 + 0, SP_03,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, rush_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 70, rush_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 70, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rush_f, 0 );
setEffRotateKey( spep_2 + 70, rush_f, 0 );
setEffAlphaKey( spep_2 + 0, rush_f, 255 );
setEffAlphaKey( spep_2 + 70, rush_f, 255 );

-- ** エフェクト等 ** --
rush_b = entryEffect( spep_2 + 0, SP_04,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, rush_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 70, rush_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 70, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rush_b, 0 );
setEffRotateKey( spep_2 + 70, rush_b, 0 );
setEffAlphaKey( spep_2 + 0, rush_b, 255 );
setEffAlphaKey( spep_2 + 70, rush_b, 255 );

--敵の動き
setDisp( spep_2  + 0, 1, 1 );
setDisp( spep_2  + 66, 1, 0 );

changeAnime( spep_2 -3 + 0, 1, 101 );

setMoveKey( spep_2  + 0, 1, 138.2, 166 , 0 );
--setMoveKey( spep_2 -3 + 4, 1, 138.2, 166 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 144.2, 172 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 132.3, 160 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 144.4, 160 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 132.5, 172 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 144.7, 172 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 132.8, 160 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 144.9, 160 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 133.1, 172 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 145.2, 172 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 133.3, 160 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 145.3, 160 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 133.4, 172 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 145.4, 172 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 133.4, 160 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 145.4, 160 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 133.5, 172 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 145.5, 172 , 0 );


setScaleKey( spep_2  + 0, 1, 0.3, 0.3 );
--setScaleKey( spep_2 -3 + 6, 1, 0.3, 0.3 );
setScaleKey( spep_2 -3 + 8, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 10, 1, 0.32, 0.32 );
setScaleKey( spep_2 -3 + 12, 1, 0.33, 0.33 );
setScaleKey( spep_2 -3 + 14, 1, 0.34, 0.34 );
setScaleKey( spep_2 -3 + 16, 1, 0.36, 0.36 );
setScaleKey( spep_2 -3 + 18, 1, 0.37, 0.37 );
setScaleKey( spep_2 -3 + 20, 1, 0.38, 0.38 );
setScaleKey( spep_2 -3 + 22, 1, 0.39, 0.39 );
setScaleKey( spep_2 -3 + 24, 1, 0.4, 0.4 );
setScaleKey( spep_2 -3 + 26, 1, 0.41, 0.41 );
setScaleKey( spep_2 -3 + 30, 1, 0.41, 0.41 );
setScaleKey( spep_2 -3 + 32, 1, 0.42, 0.42 );
setScaleKey( spep_2 -3 + 34, 1, 0.42, 0.42 );
setScaleKey( spep_2 -3 + 36, 1, 0.43, 0.43 );
setScaleKey( spep_2 -3 + 38, 1, 0.43, 0.43 );

setRotateKey( spep_2  + 0, 1, 0 );
setRotateKey( spep_2  + 36, 1, 0 );

--SE
SE0=playSe(spep_2,9);

---------------------------------------------------------------------------
-- 回避
---------------------------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 36; --エンドフェイズのフレーム数を置き換える

    stopSe( SP_dodge - 12, SE0, 0 );

    playSe( SP_dodge - 12, 1042 );
    
    pauseAll( SP_dodge, 67 );
    
    -- ** 敵キャラクター ** --
    
    setMoveKey( SP_dodge + 8, 1, 145.5, 172 , 0 );
    setMoveKey( SP_dodge + 9, 1, 145.5, 172 , 0 );
    setMoveKey( SP_dodge + 10, 1, 145.5, 172 , 0 );
    
    setScaleKey( SP_dodge + 8, 1, 0.43, 0.43  );
    setScaleKey( SP_dodge + 9, 1, 0.43, 0.43 );
    setScaleKey( SP_dodge + 10, 1, 0.43, 0.43 );
    
    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );

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
    
    
---------------------------------------------------------------------------
-- 回避しなかった場合
---------------------------------------------------------------------------
setMoveKey( spep_2 -3 + 40, 1, 133.5, 160 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 145.5, 160 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 133.5, 172 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 145.6, 172 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 133.6, 160 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 145.6, 160 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 133.6, 172 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 145.7, 172 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 133.7, 160 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 145.7, 160 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 133.7, 172 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 145.8, 172 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 133.8, 160 , 0 );
setMoveKey( spep_2  + 66, 1, 145.8, 160 , 0 );

setScaleKey( spep_2 -3 + 40, 1, 0.44, 0.44 );
setScaleKey( spep_2 -3 + 42, 1, 0.44, 0.44 );
setScaleKey( spep_2 -3 + 44, 1, 0.45, 0.45 );
setScaleKey( spep_2 -3 + 46, 1, 0.45, 0.45 );
setScaleKey( spep_2 -3 + 48, 1, 0.46, 0.46 );
setScaleKey( spep_2 -3 + 52, 1, 0.46, 0.46 );
setScaleKey( spep_2 -3 + 54, 1, 0.47, 0.47 );
setScaleKey( spep_2 -3 + 56, 1, 0.47, 0.47 );
setScaleKey( spep_2 -3 + 58, 1, 0.48, 0.48 );
setScaleKey( spep_2 -3 + 60, 1, 0.48, 0.48 );
setScaleKey( spep_2 -3 + 62, 1, 0.49, 0.49 );
setScaleKey( spep_2 -3 + 64, 1, 0.49, 0.49 );
setScaleKey( spep_2  + 66, 1, 0.5, 0.5 );

setRotateKey( spep_2  + 66, 1, 0 );

-- ** ホワイトフェード ** --
entryFade( spep_2 + 62, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 70;


------------------------------------------------------
-- たくさん切る
------------------------------------------------------
-- ** エフェクト等 ** --
zangeki_f = entryEffect( spep_3 + 0, SP_05,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, zangeki_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 166, zangeki_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, zangeki_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 166, zangeki_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, zangeki_f, 0 );
setEffRotateKey( spep_3 + 166, zangeki_f, 0 );
setEffAlphaKey( spep_3 + 0, zangeki_f, 255 );
setEffAlphaKey( spep_3 + 166, zangeki_f, 255 );

--流線
ryusen1 = entryEffectLife( spep_3 + 0,  914, 110, 0x80, -1, 0, 1574.5, -794.1 );

setEffMoveKey( spep_3 + 0, ryusen1, 1574.5, -794.1 , 0 );
setEffMoveKey( spep_3 + 110, ryusen1, 326.9, -132.1 , 0 );

setEffScaleKey( spep_3 + 0, ryusen1, 31.26, 2.94 );
setEffScaleKey( spep_3 + 2, ryusen1, 31.32, 2.95 );
setEffScaleKey( spep_3 + 28, ryusen1, 31.32, 2.95 );
setEffScaleKey( spep_3 + 58, ryusen1, 31.32, 2.95 );
setEffScaleKey( spep_3 + 59, ryusen1, 31.32, 2.95 );
setEffScaleKey( spep_3 + 60, ryusen1, 31.2, 2.95 );
setEffScaleKey( spep_3 + 62, ryusen1, 31.32, 2.95 );
setEffScaleKey( spep_3 + 72, ryusen1, 31.32, 2.95 );
setEffScaleKey( spep_3 + 96, ryusen1, 31.32, 2.95 );
setEffScaleKey( spep_3 + 97, ryusen1, 31.32, 2.95 );
setEffScaleKey( spep_3 + 98, ryusen1, 31.2, 3.35 );
setEffScaleKey( spep_3 + 100, ryusen1, 31.32, 3.35 );
setEffScaleKey( spep_3 + 110, ryusen1, 31.32, 3.35 );

setEffRotateKey( spep_3 + 0, ryusen1, 27.9 );
setEffRotateKey( spep_3 + 2, ryusen1, 28 );
setEffRotateKey( spep_3 + 28, ryusen1, 28 );
setEffRotateKey( spep_3 + 58, ryusen1, 28 );
setEffRotateKey( spep_3 + 59, ryusen1, 28 );
setEffRotateKey( spep_3 + 60, ryusen1, 23.6 );
setEffRotateKey( spep_3 + 72, ryusen1, 23.6 );
setEffRotateKey( spep_3 + 96, ryusen1, 23.6 );
setEffRotateKey( spep_3 + 97, ryusen1, 23.6 );
setEffRotateKey( spep_3 + 98, ryusen1, -121.6 );
setEffRotateKey( spep_3 + 100, ryusen1, -121.7 );
setEffRotateKey( spep_3 + 110, ryusen1, -121.7 );

setEffAlphaKey( spep_3 + 0, ryusen1, 255 );
setEffAlphaKey( spep_3 + 18, ryusen1, 255 );
setEffAlphaKey( spep_3 + 20, ryusen1, 209 );
setEffAlphaKey( spep_3 + 22, ryusen1, 163 );
setEffAlphaKey( spep_3 + 24, ryusen1, 117 );
setEffAlphaKey( spep_3 + 26, ryusen1, 71 );
setEffAlphaKey( spep_3 + 28, ryusen1, 26 );
setEffAlphaKey( spep_3 + 29, ryusen1, 0 );
setEffAlphaKey( spep_3 + 30, ryusen1, 0 );
setEffAlphaKey( spep_3 + 58, ryusen1, 0 );
setEffAlphaKey( spep_3 + 59, ryusen1, 0 );
setEffAlphaKey( spep_3 + 60, ryusen1, 255 );
setEffAlphaKey( spep_3 + 62, ryusen1, 212 );
setEffAlphaKey( spep_3 + 64, ryusen1, 170 );
setEffAlphaKey( spep_3 + 66, ryusen1, 128 );
setEffAlphaKey( spep_3 + 68, ryusen1, 85 );
setEffAlphaKey( spep_3 + 70, ryusen1, 43 );
setEffAlphaKey( spep_3 + 72, ryusen1, 0 );
setEffAlphaKey( spep_3 + 96, ryusen1, 0 );
setEffAlphaKey( spep_3 + 97, ryusen1, 0 );
setEffAlphaKey( spep_3 + 98, ryusen1, 255 );
setEffAlphaKey( spep_3 + 100, ryusen1, 212 );
setEffAlphaKey( spep_3 + 102, ryusen1, 170 );
setEffAlphaKey( spep_3 + 104, ryusen1, 128 );
setEffAlphaKey( spep_3 + 106, ryusen1, 85 );
setEffAlphaKey( spep_3 + 108, ryusen1, 43 );
setEffAlphaKey( spep_3 + 110, ryusen1, 0 );

-- ** エフェクト等 ** --
zangeki_b = entryEffect( spep_3 + 0, SP_07,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, zangeki_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 166, zangeki_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, zangeki_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 166, zangeki_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, zangeki_b, 0 );
setEffRotateKey( spep_3 + 166, zangeki_b, 0 );
setEffAlphaKey( spep_3 + 0, zangeki_b, 255 );
setEffAlphaKey( spep_3 + 166, zangeki_b, 255 );

-- ** エフェクト等 ** --
zangeki = entryEffect( spep_3 + 0, SP_06,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, zangeki, 0, 0 , 0 );
setEffMoveKey( spep_3 + 166, zangeki, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, zangeki, 1.1, 1.1 );
setEffScaleKey( spep_3 + 166, zangeki, 1.1, 1.1 );
setEffRotateKey( spep_3 + 0, zangeki, 0 );
setEffRotateKey( spep_3 + 166, zangeki, 0 );
setEffAlphaKey( spep_3 + 0, zangeki, 255 );
setEffAlphaKey( spep_3 + 166, zangeki, 255 );


setDisp( spep_3  + 0, 1, 1 );
setDisp( spep_3 -3 + 130, 1, 0 );

changeAnime( spep_3  + 0, 1, 104 );
changeAnime( spep_3 -3 + 20, 1, 108 );
changeAnime( spep_3 -3 + 60, 1, 106 );
changeAnime( spep_3 -3 + 98, 1, 107 );

setMoveKey( spep_3  + 0, 1, 229.9, -34.6 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, 213.6, -28.6 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 197.4, -22.6 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 181.2, -16.8 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 164.9, -10.7 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 148.8, -4.8 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 132.6, 1.1 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 116.3, 7.1 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 100.1, 13.1 , 0 );
setMoveKey( spep_3 -3 + 19, 1, 83.8, 19 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -67.9, 141.4 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -90.8, 114.2 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -63.4, 112.4 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -86.4, 135.9 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -58.9, 134 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -81.9, 106.9 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -60.5, 108.3 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -76.9, 122.3 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -80.8, 123.7 , 0 );
setMoveKey( spep_3 -3 + 38, 1, -84.6, 125 , 0 );
setMoveKey( spep_3 -3 + 40, 1, -86.8, 125.6 , 0 );
setMoveKey( spep_3 -3 + 42, 1, -88.9, 126.2 , 0 );
setMoveKey( spep_3 -3 + 44, 1, -90.9, 126.6 , 0 );
setMoveKey( spep_3 -3 + 46, 1, -93.2, 127.3 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -95.3, 127.9 , 0 );
setMoveKey( spep_3 -3 + 50, 1, -97.4, 128.4 , 0 );
setMoveKey( spep_3 -3 + 52, 1, -99.5, 128.9 , 0 );
setMoveKey( spep_3 -3 + 54, 1, -101.8, 129.6 , 0 );
setMoveKey( spep_3 -3 + 56, 1, -103.9, 130.2 , 0 );
setMoveKey( spep_3 -3 + 59, 1, -106, 130.7 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 6.8, 145.7 , 0 );
setMoveKey( spep_3 -3 + 62, 1, -15.6, 96 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 21.1, 76.8 , 0 );
setMoveKey( spep_3 -3 + 66, 1, -5.6, 109.5 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 18.2, 117.1 , 0 );
setMoveKey( spep_3 -3 + 70, 1, -8.5, 99.5 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 2.7, 119.7 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 3.5, 121.1 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 4.4, 122.6 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 5.3, 124.1 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 6.3, 125.5 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 7.1, 127 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 7.1, 122.2 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 7.1, 117.6 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 7.1, 112.8 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 7.1, 108.1 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 7, 103.3 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 7, 98.7 , 0 );
setMoveKey( spep_3 -3 + 97, 1, 7, 93.9 , 0 );
setMoveKey( spep_3 -3 + 98, 1, -16.3, -86.6 , 0 );
setMoveKey( spep_3 -3 + 100, 1, -11.7, -130 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 34.5, -157.2 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 37.3, -169.8 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 70.9, -192.3 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 57.4, -242.8 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 88.9, -262.5 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 77.1, -265.5 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 94.6, -294.5 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 105.7, -319.6 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 109.3, -333.4 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 119.6, -356.8 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 122.9, -369.3 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 132.4, -390.9 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 134, -401.1 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 142.6, -421.1 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 143.4, -428.9 , 0 );

a=0.3;

setScaleKey( spep_3  + 0, 1, 1.3, 1.3 );
setScaleKey( spep_3 -3 + 59, 1, 1.3, 1.3 );
setScaleKey( spep_3 -3 + 60, 1, 1.68, 1.68 );
setScaleKey( spep_3 -3 + 62, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 64, 1, 1.3, 1.3 );
setScaleKey( spep_3 -3 + 97, 1, 1.3, 1.3 );
setScaleKey( spep_3 -3 + 98, 1, 0.7 -a, 0.7-a ); --ここから吹き飛ばされる
setScaleKey( spep_3 -3 + 100, 1, 1-a, 1-a );
setScaleKey( spep_3 -3 + 102, 1, 1.29-a, 1.29-a );
setScaleKey( spep_3 -3 + 104, 1, 1.62-a, 1.62-a );
setScaleKey( spep_3 -3 + 106, 1, 1.72-a, 1.72-a );
setScaleKey( spep_3 -3 + 108, 1, 1.89-a, 1.89-a );
setScaleKey( spep_3 -3 + 110, 1, 1.96-a, 1.96-a );
setScaleKey( spep_3 -3 + 112, 1, 2.11-a, 2.11-a );
setScaleKey( spep_3 -3 + 114, 1, 2.17-a, 2.17-a );
setScaleKey( spep_3 -3 + 116, 1, 2.31-a, 2.31-a );
setScaleKey( spep_3 -3 + 118, 1, 2.38-a, 2.38-a );
setScaleKey( spep_3 -3 + 120, 1, 2.51-a, 2.51-a );
setScaleKey( spep_3 -3 + 122, 1, 2.54-a, 2.54-a );
setScaleKey( spep_3 -3 + 124, 1, 2.65-a, 2.65-a );
setScaleKey( spep_3 -3 + 126, 1, 2.7-a, 2.7-a );
setScaleKey( spep_3 -3 + 128, 1, 2.81-a, 2.81-a );
setScaleKey( spep_3 -3 + 130, 1, 2.81-a, 2.81-a );

setRotateKey( spep_3  + 0, 1, 27.6 );
setRotateKey( spep_3 -3 + 19, 1, 27.6 );
setRotateKey( spep_3 -3 + 20, 1, 0 );
setRotateKey( spep_3 -3 + 59, 1, 0 );
setRotateKey( spep_3 -3 + 60, 1, -49.6 );
setRotateKey( spep_3 -3 + 62, 1, -49.7 );
setRotateKey( spep_3 -3 + 97, 1, -49.7 );
setRotateKey( spep_3 -3 + 98, 1, 0 );
setRotateKey( spep_3 -3 + 130, 1, 0 );



--集中線
shuchusen1 = entryEffectLife( spep_3 -3 + 138,  906, 26, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 -3 + 138, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 -3 + 164, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_3 -3 + 138, shuchusen1, 1.47, 1.47 );
setEffScaleKey( spep_3 -3 + 164, shuchusen1, 1.47, 1.47 );

setEffRotateKey( spep_3 -3 + 138, shuchusen1, 180 );
setEffRotateKey( spep_3 -3 + 164, shuchusen1, 180 );

setEffAlphaKey( spep_3 -3 + 138, shuchusen1, 255 );
setEffAlphaKey( spep_3 -3 + 164, shuchusen1, 255 );

--SE
playSe(spep_3+18,1032);
playSe(spep_3+58,1031);
playSe(spep_3+96,1032);
playSe(spep_3+136,1018);

-- ** ホワイトフェード ** --
entryFade( spep_3 +158 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 166;

------------------------------------------------------
-- 斬撃エフェクト
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_4 + 0, SP_08,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_4 + 50, hit, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_4 + 50, hit, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit, 0 );
setEffRotateKey( spep_4 + 50, hit, 0 );
setEffAlphaKey( spep_4 + 0, hit, 255 );
setEffAlphaKey( spep_4 + 50, hit, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_4 + 0,  906, 48, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 48, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen2, 1, 1 );
setEffScaleKey( spep_4 + 48, shuchusen2, 1, 1 );

setEffRotateKey( spep_4 + 0, shuchusen2, 180 );
setEffRotateKey( spep_4 + 48, shuchusen2, 180 );

setEffAlphaKey( spep_4 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 48, shuchusen2, 255 );

-- ** ホワイトフェード ** --
entryFade( spep_4 +42 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--SE
--playSe(spep_4,1067);
playSe(spep_4,1026);

-- ** 次の準備 ** --
spep_5 = spep_4 + 50;

------------------------------------------------------
-- 突き
------------------------------------------------------
-- ** エフェクト等 ** --
thrust_f = entryEffect( spep_5 + 0, SP_09,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, thrust_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 128, thrust_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, thrust_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 128, thrust_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, thrust_f, 0 );
setEffRotateKey( spep_5 + 128, thrust_f, 0 );
setEffAlphaKey( spep_5 + 0, thrust_f, 255 );
setEffAlphaKey( spep_5 + 128, thrust_f, 255 );

-- ** エフェクト等 ** --
thrust_b = entryEffect( spep_5 + 0, SP_10,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, thrust_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 128, thrust_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, thrust_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 128, thrust_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, thrust_b, 0 );
setEffRotateKey( spep_5 + 128, thrust_b, 0 );
setEffAlphaKey( spep_5 + 0, thrust_b, 255 );
setEffAlphaKey( spep_5 + 128, thrust_b, 255 );

--敵の動き
setDisp( spep_5  + 0, 1, 1 );
setDisp( spep_5  + 126, 1, 0 );

changeAnime( spep_5  + 0, 1, 108 );
changeAnime( spep_5 -3 + 102, 1, 106 );

setMoveKey( spep_5  + 0, 1, -160.3, -114.9 , 0 );
--setMoveKey( spep_5 -3 + 2, 1, -127.7, -96.5 , 0 );
setMoveKey( spep_5 -3 + 4, 1, -72.9, -66.2 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -40.2, -26.3 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 9.4, 0.9 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 40.1, 19.2 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 87.8, 46.9 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 81.3, 55.6 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 90.5, 56.7 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 84, 49.7 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 93.1, 50.5 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 86.7, 59.3 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 95.7, 60.2 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 89.1, 53.2 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 98.3, 54.1 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 91.7, 62.9 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 94.7, 63.7 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 97.4, 64.5 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 100.1, 65.5 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 103, 66.2 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 104.2, 66 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 99.2, 60.3 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 109.5, 61.8 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 104.6, 71 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 114.6, 72.6 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 109.8, 66.8 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 119.9, 68.5 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 112.2, 75.9 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 112.7, 76 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 113.1, 76 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 113.4, 76 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 113.7, 76 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 114.3, 76.1 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 114.3, 76 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 114.8, 76.1 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 115.2, 76.1 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 115.3, 76 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 115.8, 76.1 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 116.2, 76.1 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 116.6, 76.1 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 116.7, 76.1 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 117.1, 76.2 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 117.5, 76.1 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 117.7, 76.1 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 110.5, 69 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 114.7, 67.1 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 104.4, 72.4 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 108.4, 70.4 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 98.5, 61.7 , 0 );
setMoveKey( spep_5 -3 + 98, 1, 95.4, 60 , 0 );
setMoveKey( spep_5 -3 + 101, 1, 92.5, 58.1 , 0 );
setMoveKey( spep_5 -3 + 102, 1, 75.7, 67.4 , 0 );
setMoveKey( spep_5 -3 + 104, 1, 76.7, 68.1 , 0 );
setMoveKey( spep_5 -3 + 106, 1, 77.7, 68.7 , 0 );
setMoveKey( spep_5 -3 + 108, 1, 78.7, 69.3 , 0 );
setMoveKey( spep_5 -3 + 110, 1, 79.6, 69.9 , 0 );
setMoveKey( spep_5 -3 + 112, 1, 80.6, 70.5 , 0 );
setMoveKey( spep_5 -3 + 114, 1, 81.5, 71.1 , 0 );
setMoveKey( spep_5 -3 + 116, 1, 82.5, 71.7 , 0 );
setMoveKey( spep_5 -3 + 118, 1, 83.4, 72.2 , 0 );
setMoveKey( spep_5 -3 + 120, 1, 84.4, 72.8 , 0 );
setMoveKey( spep_5 -3 + 122, 1, 85.4, 73.3 , 0 );
setMoveKey( spep_5 -3 + 124, 1, 86.2, 73.9 , 0 );
setMoveKey( spep_5  + 126, 1, 87.1, 74.4 , 0 );

setScaleKey( spep_5  + 0, 1, 1.7, 1.7 );
--setScaleKey( spep_5 -3 + 2, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 4, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 6, 1, 1.4, 1.4 );
setScaleKey( spep_5 -3 + 8, 1, 1.3, 1.3 );
setScaleKey( spep_5 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 -3 + 12, 1, 1.1, 1.1 );
setScaleKey( spep_5 -3 + 14, 1, 1.1, 1.1 );
setScaleKey( spep_5 -3 + 16, 1, 1.09, 1.09 );
setScaleKey( spep_5 -3 + 20, 1, 1.09, 1.09 );
setScaleKey( spep_5 -3 + 22, 1, 1.08, 1.08 );
setScaleKey( spep_5 -3 + 28, 1, 1.08, 1.08 );
setScaleKey( spep_5 -3 + 30, 1, 1.07, 1.07 );
setScaleKey( spep_5 -3 + 34, 1, 1.07, 1.07 );
setScaleKey( spep_5 -3 + 36, 1, 1.06, 1.06 );
setScaleKey( spep_5 -3 + 40, 1, 1.06, 1.06 );
setScaleKey( spep_5 -3 + 42, 1, 1.05, 1.05 );
setScaleKey( spep_5 -3 + 46, 1, 1.05, 1.05 );
setScaleKey( spep_5 -3 + 48, 1, 1.04, 1.04 );
setScaleKey( spep_5 -3 + 52, 1, 1.04, 1.04 );
setScaleKey( spep_5 -3 + 54, 1, 1.03, 1.03 );
setScaleKey( spep_5 -3 + 58, 1, 1.03, 1.03 );
setScaleKey( spep_5 -3 + 60, 1, 1.02, 1.02 );
setScaleKey( spep_5 -3 + 64, 1, 1.02, 1.02 );
setScaleKey( spep_5 -3 + 66, 1, 1.01, 1.01 );
setScaleKey( spep_5 -3 + 70, 1, 1.01, 1.01 );
setScaleKey( spep_5 -3 + 72, 1, 1, 1 );
setScaleKey( spep_5 -3 + 78, 1, 1, 1 );
setScaleKey( spep_5 -3 + 80, 1, 0.99, 0.99 );
setScaleKey( spep_5 -3 + 84, 1, 0.99, 0.99 );
setScaleKey( spep_5 -3 + 86, 1, 0.98, 0.98 );
setScaleKey( spep_5 -3 + 90, 1, 0.98, 0.98 );
setScaleKey( spep_5 -3 + 92, 1, 0.97, 0.97 );
setScaleKey( spep_5 -3 + 96, 1, 0.97, 0.97 );
setScaleKey( spep_5 -3 + 98, 1, 0.96, 0.96 );
setScaleKey( spep_5 -3 + 101, 1, 0.96, 0.96 );
setScaleKey( spep_5 -3 + 102, 1, 0.95, 0.95 );
setScaleKey( spep_5 -3 + 104, 1, 0.94, 0.94 );
setScaleKey( spep_5 -3 + 106, 1, 0.93, 0.93 );
setScaleKey( spep_5 -3 + 108, 1, 0.92, 0.92 );
setScaleKey( spep_5 -3 + 110, 1, 0.9, 0.9 );
setScaleKey( spep_5 -3 + 112, 1, 0.9, 0.9 );
setScaleKey( spep_5 -3 + 114, 1, 0.89, 0.89 );
setScaleKey( spep_5 -3 + 116, 1, 0.88, 0.88 );
setScaleKey( spep_5 -3 + 118, 1, 0.87, 0.87 );
setScaleKey( spep_5 -3 + 120, 1, 0.86, 0.86 );
setScaleKey( spep_5 -3 + 122, 1, 0.86, 0.86 );
setScaleKey( spep_5  + 124, 1, 0.84, 0.84 );

setRotateKey( spep_5  + 0, 1, 0 );
--setRotateKey( spep_5 -3 + 2, 1, -1.5 );
setRotateKey( spep_5 -3 + 4, 1, 0 );
setRotateKey( spep_5 -3 + 6, 1, -1.5 );
setRotateKey( spep_5 -3 + 8, 1, 0 );
setRotateKey( spep_5 -3 + 10, 1, -1.5 );
setRotateKey( spep_5 -3 + 12, 1, 0 );
setRotateKey( spep_5 -3 + 14, 1, -1.5 );
setRotateKey( spep_5 -3 + 16, 1, 0 );
setRotateKey( spep_5 -3 + 18, 1, -1.5 );
setRotateKey( spep_5 -3 + 20, 1, 0 );
setRotateKey( spep_5 -3 + 22, 1, -1.5 );
setRotateKey( spep_5 -3 + 24, 1, 0 );
setRotateKey( spep_5 -3 + 26, 1, -1.5 );
setRotateKey( spep_5 -3 + 28, 1, 0 );
setRotateKey( spep_5 -3 + 30, 1, -1.5 );
setRotateKey( spep_5 -3 + 32, 1, 0 );
setRotateKey( spep_5 -3 + 34, 1, -1.5 );
setRotateKey( spep_5 -3 + 36, 1, 0 );
setRotateKey( spep_5 -3 + 38, 1, -1.5 );
setRotateKey( spep_5 -3 + 40, 1, 0 );
setRotateKey( spep_5 -3 + 42, 1, -1.5 );
setRotateKey( spep_5 -3 + 44, 1, 0 );
setRotateKey( spep_5 -3 + 46, 1, -1.5 );
setRotateKey( spep_5 -3 + 48, 1, 0 );
setRotateKey( spep_5 -3 + 50, 1, -1.5 );
setRotateKey( spep_5 -3 + 52, 1, 0 );
setRotateKey( spep_5 -3 + 54, 1, -1.5 );
setRotateKey( spep_5 -3 + 56, 1, 0 );
setRotateKey( spep_5 -3 + 58, 1, -1.5 );
setRotateKey( spep_5 -3 + 60, 1, 0 );
setRotateKey( spep_5 -3 + 62, 1, -1.5 );
setRotateKey( spep_5 -3 + 64, 1, 0 );
setRotateKey( spep_5 -3 + 66, 1, -1.5 );
setRotateKey( spep_5 -3 + 68, 1, 0 );
setRotateKey( spep_5 -3 + 70, 1, -1.5 );
setRotateKey( spep_5 -3 + 72, 1, 0 );
setRotateKey( spep_5 -3 + 74, 1, -1.5 );
setRotateKey( spep_5 -3 + 76, 1, 0 );
setRotateKey( spep_5 -3 + 78, 1, -1.5 );
setRotateKey( spep_5 -3 + 80, 1, 0 );
setRotateKey( spep_5 -3 + 82, 1, -1.5 );
setRotateKey( spep_5 -3 + 84, 1, 0 );
setRotateKey( spep_5 -3 + 86, 1, -1.5 );
setRotateKey( spep_5 -3 + 88, 1, 0 );
setRotateKey( spep_5 -3 + 90, 1, -1.5 );
setRotateKey( spep_5 -3 + 92, 1, 0 );
setRotateKey( spep_5 -3 + 94, 1, -1.5 );
setRotateKey( spep_5 -3 + 96, 1, 0 );
setRotateKey( spep_5 -3 + 98, 1, -1.5 );
setRotateKey( spep_5 -3 + 101, 1, 0 );
setRotateKey( spep_5 -3 + 102, 1, -52.4 );
setRotateKey( spep_5 -3 + 104, 1, -50.5 );
setRotateKey( spep_5 -3 + 106, 1, -52.5 );
setRotateKey( spep_5 -3 + 108, 1, -50.5 );
setRotateKey( spep_5 -3 + 110, 1, -52.5 );
setRotateKey( spep_5 -3 + 112, 1, -50.5 );
setRotateKey( spep_5 -3 + 114, 1, -52.5 );
setRotateKey( spep_5 -3 + 116, 1, -50.5 );
setRotateKey( spep_5 -3 + 118, 1, -52.5 );
setRotateKey( spep_5 -3 + 120, 1, -50.5 );
setRotateKey( spep_5 -3 + 122, 1, -52.5 );
setRotateKey( spep_5 -3 + 124, 1, -50.5 );
setRotateKey( spep_5  + 126, 1, -52.5 );

--集中線
shuchusen3 = entryEffectLife( spep_5  + 0,  906, 126, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5  + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_5  + 126, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_5  + 0, shuchusen3, 1.38, 1.38 );
setEffScaleKey( spep_5  + 126, shuchusen3, 1.38, 1.38 );

setEffRotateKey( spep_5  + 0, shuchusen3, 180 );
setEffRotateKey( spep_5  + 126, shuchusen3, 180 );

setEffAlphaKey( spep_5  + 0, shuchusen3, 255 );
setEffAlphaKey( spep_5 -3 + 26, shuchusen3, 255 );
setEffAlphaKey( spep_5 -3 + 27, shuchusen3, 0 );
setEffAlphaKey( spep_5 -3 + 28, shuchusen3, 0 );
setEffAlphaKey( spep_5 -3 + 46, shuchusen3, 0 );
setEffAlphaKey( spep_5 -3 + 47, shuchusen3, 0 );
setEffAlphaKey( spep_5 -3 + 48, shuchusen3, 255 );
setEffAlphaKey( spep_5 -3 + 68, shuchusen3, 255 );
setEffAlphaKey( spep_5 -3 + 69, shuchusen3, 0 );
setEffAlphaKey( spep_5 -3 + 70, shuchusen3, 0 );
setEffAlphaKey( spep_5 -3 + 104, shuchusen3, 0 );
setEffAlphaKey( spep_5 -3 + 105, shuchusen3, 0 );
setEffAlphaKey( spep_5 -3 + 106, shuchusen3, 255 );
setEffAlphaKey( spep_5  + 126, shuchusen3, 255 );

-- ** ホワイトフェード ** --
entryFade( spep_5 +120 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--SE
playSe(spep_5,44);
playSe(spep_5+94,1047);


-- ** 次の準備 ** --
spep_6 = spep_5 + 128;

------------------------------------------------------
-- 突進2
------------------------------------------------------

-- ** エフェクト等 ** --
rush2 = entryEffect( spep_6 + 0, SP_11,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, rush2, 0, 0 , 0 );
setEffMoveKey( spep_6 + 170, rush2, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, rush2, 1.0, 1.0 );
setEffScaleKey( spep_6 + 170, rush2, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, rush2, 0 );
setEffRotateKey( spep_6 + 170, rush2, 0 );
setEffAlphaKey( spep_6 + 0, rush2, 255 );
setEffAlphaKey( spep_6 + 170, rush2, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_6  + 0,  906, 168, 0x100, -1, 0, 213, 0 );

setEffMoveKey( spep_6  + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_6  + 168, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_6  + 0, shuchusen4, 1, 1 );
setEffScaleKey( spep_6 -3 + 86, shuchusen4, 1, 1 );
setEffScaleKey( spep_6 -3 + 136, shuchusen4, 1, 1 );
setEffScaleKey( spep_6 -3 + 137, shuchusen4, 1, 1 );
setEffScaleKey( spep_6 -3 + 138, shuchusen4, 1.36, 1.36 );
setEffScaleKey( spep_6  + 168, shuchusen4, 1.36, 1.36 );

setEffRotateKey( spep_6  + 0, shuchusen4, 180 );
setEffRotateKey( spep_6  + 168, shuchusen4, 180 );

setEffAlphaKey( spep_6  + 0, shuchusen4, 255 );
setEffAlphaKey( spep_6 -3 + 86, shuchusen4, 255 );
setEffAlphaKey( spep_6 -3 + 87, shuchusen4, 0 );
setEffAlphaKey( spep_6 -3 + 88, shuchusen4, 0 );
setEffAlphaKey( spep_6 -3 + 136, shuchusen4, 0 );
setEffAlphaKey( spep_6 -3 + 137, shuchusen4, 0 );
setEffAlphaKey( spep_6 -3 + 138, shuchusen4, 255 );
setEffAlphaKey( spep_6  + 168, shuchusen4, 255 );

--***カットイン***
speff = entryEffect(  spep_6+14,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_6+14,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_6+26, 190006, 72, 0x100, -1, 0, 60, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_6+26,  ctgogo,  60,  510);
setEffMoveKey(  spep_6+98,  ctgogo,  60,  510);

setEffAlphaKey( spep_6 + 26, ctgogo, 255 );
setEffAlphaKey( spep_6 + 27, ctgogo, 255 );
setEffAlphaKey( spep_6 + 28, ctgogo, 255 );
setEffAlphaKey( spep_6 + 88, ctgogo, 255 );
setEffAlphaKey( spep_6 + 90, ctgogo, 255 );
setEffAlphaKey( spep_6 + 92, ctgogo, 191 );
setEffAlphaKey( spep_6 + 94, ctgogo, 128 );
setEffAlphaKey( spep_6 + 96, ctgogo, 64 );
setEffAlphaKey( spep_6 + 98, ctgogo, 0 );

setEffRotateKey(  spep_6+26,  ctgogo,  0);
setEffRotateKey(  spep_6+98,  ctgogo,  0);

setEffScaleKey(  spep_6+26,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_6+90,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_6+98,  ctgogo, 1.07, 1.07 );



--SE
playSe(spep_6+14,1018);--ごごご
playSe(spep_6+128,9);

-- ** ホワイトフェード ** --
entryFade( spep_6 +160 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 170;


------------------------------------------------------
-- 終わり
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_7 + 0, SP_12,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 186, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 186, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_f, 0 );
setEffRotateKey( spep_7 + 186, finish_f, 0 );
setEffAlphaKey( spep_7 + 0, finish_f, 255 );
setEffAlphaKey( spep_7 + 186, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_7 + 0, SP_13,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 186, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 186, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_b, 0 );
setEffRotateKey( spep_7 + 186, finish_b, 0 );
setEffAlphaKey( spep_7 + 0, finish_b, 255 );
setEffAlphaKey( spep_7 + 186, finish_b, 255 );

-- ** エフェクト等 ** --
ef_KO = entryEffect( spep_7 + 162, SP_14,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 162, ef_KO, 0, 0 , 0 );
setEffMoveKey( spep_7 + 282, ef_KO, 0, 0 , 0 );
setEffScaleKey( spep_7 + 162, ef_KO, 1.0, 1.0 );
setEffScaleKey( spep_7 + 282, ef_KO, 1.0, 1.0 );
setEffRotateKey( spep_7 + 162, ef_KO, 0 );
setEffRotateKey( spep_7 + 282, ef_KO, 0 );
setEffAlphaKey( spep_7 + 162, ef_KO, 255 );
setEffAlphaKey( spep_7 + 282, ef_KO, 255 );


--敵の動き
setDisp( spep_7  + 0, 1, 1 );
setDisp( spep_7  + 60, 1, 0 );

changeAnime( spep_7  + 0, 1, 106 );

setMoveKey( spep_7  + 0, 1, -36.4, -1468.7 , 0 );
--setMoveKey( spep_7 -3 + 2, 1, -26.5, -1287.4 , 0 );
setMoveKey( spep_7 -3 + 4, 1, -36.3, -1095.9 , 0 );
setMoveKey( spep_7 -3 + 6, 1, -26.5, -894.4 , 0 );
setMoveKey( spep_7 -3 + 8, 1, -36.3, -702.7 , 0 );
setMoveKey( spep_7 -3 + 10, 1, -26.5, -521.5 , 0 );
setMoveKey( spep_7 -3 + 12, 1, -36.3, -330.2 , 0 );
setMoveKey( spep_7 -3 + 14, 1, -26.5, -128.4 , 0 );
setMoveKey( spep_7 -3 + 16, 1, -36.3, -126.6 , 0 );
setMoveKey( spep_7 -3 + 18, 1, -26.5, -135 , 0 );
setMoveKey( spep_7 -3 + 20, 1, -36.3, -133.2 , 0 );
setMoveKey( spep_7 -3 + 22, 1, -26.5, -121.3 , 0 );
setMoveKey( spep_7 -3 + 24, 1, -36.3, -119.5 , 0 );
setMoveKey( spep_7 -3 + 26, 1, -26.5, -127.9 , 0 );
setMoveKey( spep_7 -3 + 28, 1, -36.3, -126.1 , 0 );
setMoveKey( spep_7 -3 + 30, 1, -26.5, -114.2 , 0 );
setMoveKey( spep_7 -3 + 32, 1, -36.3, -112.4 , 0 );
setMoveKey( spep_7 -3 + 34, 1, -26.5, -120.8 , 0 );
setMoveKey( spep_7 -3 + 36, 1, -36.3, -119 , 0 );
setMoveKey( spep_7 -3 + 38, 1, -26.5, -107.1 , 0 );
setMoveKey( spep_7 -3 + 40, 1, -36.3, -105.3 , 0 );
setMoveKey( spep_7 -3 + 42, 1, -26.5, -113.7 , 0 );
setMoveKey( spep_7 -3 + 44, 1, -36.3, -111.9 , 0 );
setMoveKey( spep_7 -3 + 46, 1, -26.5, -100 , 0 );
setMoveKey( spep_7 -3 + 48, 1, -36.3, -98.2 , 0 );
setMoveKey( spep_7 -3 + 50, 1, -26.5, -106.6 , 0 );
setMoveKey( spep_7 -3 + 52, 1, -36.1, -113.4 , 0 );
setMoveKey( spep_7 -3 + 54, 1, -26, -108.7 , 0 );
setMoveKey( spep_7 -3 + 56, 1, -35.1, -113.1 , 0 );
setMoveKey( spep_7 -3 + 58, 1, -25.1, -126.5 , 0 );
setMoveKey( spep_7 -3 + 60, 1, -33.6, -129.6 , 0 );
setMoveKey( spep_7 -3 + 62, 1, -23.8, -123.2 , 0 );
setMoveKey( spep_7 -3 + 64, 1, -31.7, -125.8 , 0 );

setScaleKey( spep_7  + 0, 1, 1.62, 1.62 );
setScaleKey( spep_7 -3 + 50, 1, 1.62, 1.62 );
setScaleKey( spep_7 -3 + 52, 1, 1.62, 1.61 );
setScaleKey( spep_7 -3 + 54, 1, 1.59, 1.59 );
setScaleKey( spep_7 -3 + 56, 1, 1.57, 1.57 );
setScaleKey( spep_7 -3 + 58, 1, 1.54, 1.53 );
setScaleKey( spep_7 -3 + 60, 1, 1.5, 1.5 );
setScaleKey( spep_7 -3 + 62, 1, 1.46, 1.46 );
setScaleKey( spep_7 -3 + 64, 1, 1.42, 1.42 );

setRotateKey( spep_7  + 0, 1, -54.7 );
--setRotateKey( spep_7 -3 + 2, 1, -52.7 );
setRotateKey( spep_7 -3 + 4, 1, -54.7 );
setRotateKey( spep_7 -3 + 6, 1, -52.7 );
setRotateKey( spep_7 -3 + 8, 1, -54.7 );
setRotateKey( spep_7 -3 + 10, 1, -52.7 );
setRotateKey( spep_7 -3 + 12, 1, -54.7 );
setRotateKey( spep_7 -3 + 14, 1, -52.7 );
setRotateKey( spep_7 -3 + 16, 1, -54.7 );
setRotateKey( spep_7 -3 + 18, 1, -52.7 );
setRotateKey( spep_7 -3 + 20, 1, -54.7 );
setRotateKey( spep_7 -3 + 22, 1, -52.7 );
setRotateKey( spep_7 -3 + 24, 1, -54.7 );
setRotateKey( spep_7 -3 + 26, 1, -52.7 );
setRotateKey( spep_7 -3 + 28, 1, -54.7 );
setRotateKey( spep_7 -3 + 30, 1, -52.7 );
setRotateKey( spep_7 -3 + 32, 1, -54.7 );
setRotateKey( spep_7 -3 + 34, 1, -52.7 );
setRotateKey( spep_7 -3 + 36, 1, -54.7 );
setRotateKey( spep_7 -3 + 38, 1, -52.7 );
setRotateKey( spep_7 -3 + 40, 1, -54.7 );
setRotateKey( spep_7 -3 + 42, 1, -52.7 );
setRotateKey( spep_7 -3 + 44, 1, -54.7 );
setRotateKey( spep_7 -3 + 46, 1, -52.7 );
setRotateKey( spep_7 -3 + 48, 1, -54.7 );
setRotateKey( spep_7 -3 + 50, 1, -52.7 );
setRotateKey( spep_7 -3 + 52, 1, -54.7 );
setRotateKey( spep_7 -3 + 54, 1, -52.7 );
setRotateKey( spep_7 -3 + 56, 1, -54.7 );
setRotateKey( spep_7 -3 + 58, 1, -52.7 );
setRotateKey( spep_7 -3 + 60, 1, -54.7 );
setRotateKey( spep_7 -3 + 62, 1, -52.7 );
setRotateKey( spep_7 -3 + 64, 1, -54.7 );

--集中線
shuchusen5 = entryEffectLife( spep_7 -3 + 64,  906, 120, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_7 -3 + 64, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_7 -3 + 184, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_7 -3 + 64, shuchusen5, 1.13, 1.32 );
setEffScaleKey( spep_7 -3 + 184, shuchusen5, 1.13, 1.32 );

setEffRotateKey( spep_7 -3 + 64, shuchusen5, 180 );
setEffRotateKey( spep_7 -3 + 184, shuchusen5, 180 );

setEffAlphaKey( spep_7 -3 + 64, shuchusen5, 255 );
setEffAlphaKey( spep_7 -3 + 184, shuchusen5, 255 );

--SE
playSe(spep_7,1021);
playSe(spep_7,1067);
playSe(spep_7+60,1024);


-- ダメージ表示
hideKoScreen();  --黒フィルター削除
dealDamage(spep_7+62);
entryFade( spep_7 +156, 4,  16, 10, fcolor_r, fcolor_g, fcolor_b, 255);             -- black fade
endPhase(spep_7+170);

else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 溜める
------------------------------------------------------
spep_0=0;

-- ** エフェクト等 ** --
tame_f = entryEffect( spep_0 + 0, SP_01x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 60, tame_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 60, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_f, 0 );
setEffRotateKey( spep_0 + 60, tame_f, 0 );
setEffAlphaKey( spep_0 + 0, tame_f, 255 );
setEffAlphaKey( spep_0 + 60, tame_f, 255 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_0 + 0, SP_02x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 60, tame_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 60, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_b, 0 );
setEffRotateKey( spep_0 + 60, tame_b, 0 );
setEffAlphaKey( spep_0 + 0, tame_b, 255 );
setEffAlphaKey( spep_0 + 60, tame_b, 255 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 58, 1, 0 );

changeAnime( spep_0 + 0, 1, 101 );

setMoveKey( spep_0 + 0, 1, 138.1, 186 , 0 );
setMoveKey( spep_0 + 2, 1, 138, 185.4 , 0 );
setMoveKey( spep_0 + 4, 1, 138, 184.7 , 0 );
setMoveKey( spep_0 + 6, 1, 138, 184 , 0 );
setMoveKey( spep_0 + 8, 1, 138, 183.3 , 0 );
setMoveKey( spep_0 + 10, 1, 138, 182.6 , 0 );
setMoveKey( spep_0 + 12, 1, 138, 181.9 , 0 );
setMoveKey( spep_0 + 14, 1, 138, 181.2 , 0 );
setMoveKey( spep_0 + 16, 1, 138, 180.5 , 0 );
setMoveKey( spep_0 + 18, 1, 138, 179.8 , 0 );
setMoveKey( spep_0 + 20, 1, 138, 179.2 , 0 );
setMoveKey( spep_0 + 22, 1, 138, 178.5 , 0 );
setMoveKey( spep_0 + 24, 1, 138, 177.8 , 0 );
setMoveKey( spep_0 + 26, 1, 138, 177.1 , 0 );
setMoveKey( spep_0 + 28, 1, 138, 176.4 , 0 );
setMoveKey( spep_0 + 30, 1, 138, 175.7 , 0 );
setMoveKey( spep_0 + 32, 1, 138, 175 , 0 );
setMoveKey( spep_0 + 34, 1, 138, 174.3 , 0 );
setMoveKey( spep_0 + 36, 1, 138, 173.6 , 0 );
setMoveKey( spep_0 + 38, 1, 138, 172.9 , 0 );
setMoveKey( spep_0 + 40, 1, 138, 172.3 , 0 );
setMoveKey( spep_0 + 42, 1, 138, 171.6 , 0 );
setMoveKey( spep_0 + 44, 1, 138, 170.9 , 0 );
setMoveKey( spep_0 + 46, 1, 138, 170.2 , 0 );
setMoveKey( spep_0 + 48, 1, 138, 169.5 , 0 );
setMoveKey( spep_0 + 50, 1, 138, 168.8 , 0 );
setMoveKey( spep_0 + 52, 1, 138, 168.1 , 0 );
setMoveKey( spep_0 + 54, 1, 138, 167.4 , 0 );
setMoveKey( spep_0 + 56, 1, 138, 166.7 , 0 );
setMoveKey( spep_0 + 58, 1, 138, 166 , 0 );

setScaleKey( spep_0 + 0, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 1, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 2, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 3, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 4, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 5, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 6, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 58, 1, 0.5, 0.5 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 58, 1, 0 );

--SE
SE1=playSe(spep_0,55);
stopSe( spep_0+58, SE1, 0 );

-- ** ホワイトフェード ** --
entryFade( spep_0 + 52, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 60;

--------------------------------------
--カードカットイン(94F)
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


entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 突進
------------------------------------------------------
-- ** エフェクト等 ** --
rush_f = entryEffect( spep_2 + 0, SP_03x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, rush_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 70, rush_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 70, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rush_f, 0 );
setEffRotateKey( spep_2 + 70, rush_f, 0 );
setEffAlphaKey( spep_2 + 0, rush_f, 255 );
setEffAlphaKey( spep_2 + 70, rush_f, 255 );

-- ** エフェクト等 ** --
rush_b = entryEffect( spep_2 + 0, SP_04x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, rush_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 70, rush_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 70, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rush_b, 0 );
setEffRotateKey( spep_2 + 70, rush_b, 0 );
setEffAlphaKey( spep_2 + 0, rush_b, 255 );
setEffAlphaKey( spep_2 + 70, rush_b, 255 );

--敵の動き
setDisp( spep_2  + 0, 1, 1 );
setDisp( spep_2  + 66, 1, 0 );

changeAnime( spep_2 -3 + 0, 1, 101 );

setMoveKey( spep_2  + 0, 1, 138.2, 166 , 0 );
--setMoveKey( spep_2 -3 + 4, 1, 138.2, 166 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 144.2, 172 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 132.3, 160 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 144.4, 160 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 132.5, 172 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 144.7, 172 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 132.8, 160 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 144.9, 160 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 133.1, 172 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 145.2, 172 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 133.3, 160 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 145.3, 160 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 133.4, 172 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 145.4, 172 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 133.4, 160 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 145.4, 160 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 133.5, 172 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 145.5, 172 , 0 );


setScaleKey( spep_2  + 0, 1, 0.3, 0.3 );
--setScaleKey( spep_2 -3 + 6, 1, 0.3, 0.3 );
setScaleKey( spep_2 -3 + 8, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 10, 1, 0.32, 0.32 );
setScaleKey( spep_2 -3 + 12, 1, 0.33, 0.33 );
setScaleKey( spep_2 -3 + 14, 1, 0.34, 0.34 );
setScaleKey( spep_2 -3 + 16, 1, 0.36, 0.36 );
setScaleKey( spep_2 -3 + 18, 1, 0.37, 0.37 );
setScaleKey( spep_2 -3 + 20, 1, 0.38, 0.38 );
setScaleKey( spep_2 -3 + 22, 1, 0.39, 0.39 );
setScaleKey( spep_2 -3 + 24, 1, 0.4, 0.4 );
setScaleKey( spep_2 -3 + 26, 1, 0.41, 0.41 );
setScaleKey( spep_2 -3 + 30, 1, 0.41, 0.41 );
setScaleKey( spep_2 -3 + 32, 1, 0.42, 0.42 );
setScaleKey( spep_2 -3 + 34, 1, 0.42, 0.42 );
setScaleKey( spep_2 -3 + 36, 1, 0.43, 0.43 );
setScaleKey( spep_2 -3 + 38, 1, 0.43, 0.43 );

setRotateKey( spep_2  + 0, 1, 0 );
setRotateKey( spep_2  + 36, 1, 0 );

--SE
SE0=playSe(spep_2,9);

---------------------------------------------------------------------------
-- 回避
---------------------------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 36; --エンドフェイズのフレーム数を置き換える

    stopSe( SP_dodge - 12, SE0, 0 );

    playSe( SP_dodge - 12, 1042 );
    
    pauseAll( SP_dodge, 67 );
    
    -- ** 敵キャラクター ** --
    
    setMoveKey( SP_dodge + 8, 1, 145.5, 172 , 0 );
    setMoveKey( SP_dodge + 9, 1, 145.5, 172 , 0 );
    setMoveKey( SP_dodge + 10, 1, 145.5, 172 , 0 );
    
    setScaleKey( SP_dodge + 8, 1, 0.43, 0.43  );
    setScaleKey( SP_dodge + 9, 1, 0.43, 0.43 );
    setScaleKey( SP_dodge + 10, 1, 0.43, 0.43 );
    
    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );

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
    
    
---------------------------------------------------------------------------
-- 回避しなかった場合
---------------------------------------------------------------------------
setMoveKey( spep_2 -3 + 40, 1, 133.5, 160 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 145.5, 160 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 133.5, 172 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 145.6, 172 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 133.6, 160 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 145.6, 160 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 133.6, 172 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 145.7, 172 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 133.7, 160 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 145.7, 160 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 133.7, 172 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 145.8, 172 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 133.8, 160 , 0 );
setMoveKey( spep_2  + 66, 1, 145.8, 160 , 0 );

setScaleKey( spep_2 -3 + 40, 1, 0.44, 0.44 );
setScaleKey( spep_2 -3 + 42, 1, 0.44, 0.44 );
setScaleKey( spep_2 -3 + 44, 1, 0.45, 0.45 );
setScaleKey( spep_2 -3 + 46, 1, 0.45, 0.45 );
setScaleKey( spep_2 -3 + 48, 1, 0.46, 0.46 );
setScaleKey( spep_2 -3 + 52, 1, 0.46, 0.46 );
setScaleKey( spep_2 -3 + 54, 1, 0.47, 0.47 );
setScaleKey( spep_2 -3 + 56, 1, 0.47, 0.47 );
setScaleKey( spep_2 -3 + 58, 1, 0.48, 0.48 );
setScaleKey( spep_2 -3 + 60, 1, 0.48, 0.48 );
setScaleKey( spep_2 -3 + 62, 1, 0.49, 0.49 );
setScaleKey( spep_2 -3 + 64, 1, 0.49, 0.49 );
setScaleKey( spep_2  + 66, 1, 0.5, 0.5 );

setRotateKey( spep_2  + 66, 1, 0 );

-- ** ホワイトフェード ** --
entryFade( spep_2 + 62, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 70;


------------------------------------------------------
-- たくさん切る
------------------------------------------------------
-- ** エフェクト等 ** --
zangeki_f = entryEffect( spep_3 + 0, SP_05x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, zangeki_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 166, zangeki_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, zangeki_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 166, zangeki_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, zangeki_f, 0 );
setEffRotateKey( spep_3 + 166, zangeki_f, 0 );
setEffAlphaKey( spep_3 + 0, zangeki_f, 255 );
setEffAlphaKey( spep_3 + 166, zangeki_f, 255 );

--流線
ryusen1 = entryEffectLife( spep_3 + 0,  914, 110, 0x80, -1, 0, 1574.5, -794.1 );

setEffMoveKey( spep_3 + 0, ryusen1, 1574.5, -794.1 , 0 );
setEffMoveKey( spep_3 + 110, ryusen1, 326.9, -132.1 , 0 );

setEffScaleKey( spep_3 + 0, ryusen1, 31.26, 2.94 );
setEffScaleKey( spep_3 + 2, ryusen1, 31.32, 2.95 );
setEffScaleKey( spep_3 + 28, ryusen1, 31.32, 2.95 );
setEffScaleKey( spep_3 + 58, ryusen1, 31.32, 2.95 );
setEffScaleKey( spep_3 + 59, ryusen1, 31.32, 2.95 );
setEffScaleKey( spep_3 + 60, ryusen1, 31.2, 2.95 );
setEffScaleKey( spep_3 + 62, ryusen1, 31.32, 2.95 );
setEffScaleKey( spep_3 + 72, ryusen1, 31.32, 2.95 );
setEffScaleKey( spep_3 + 96, ryusen1, 31.32, 2.95 );
setEffScaleKey( spep_3 + 97, ryusen1, 31.32, 2.95 );
setEffScaleKey( spep_3 + 98, ryusen1, 31.2, 3.35 );
setEffScaleKey( spep_3 + 100, ryusen1, 31.32, 3.35 );
setEffScaleKey( spep_3 + 110, ryusen1, 31.32, 3.35 );

setEffRotateKey( spep_3 + 0, ryusen1, 27.9 );
setEffRotateKey( spep_3 + 2, ryusen1, 28 );
setEffRotateKey( spep_3 + 28, ryusen1, 28 );
setEffRotateKey( spep_3 + 58, ryusen1, 28 );
setEffRotateKey( spep_3 + 59, ryusen1, 28 );
setEffRotateKey( spep_3 + 60, ryusen1, 23.6 );
setEffRotateKey( spep_3 + 72, ryusen1, 23.6 );
setEffRotateKey( spep_3 + 96, ryusen1, 23.6 );
setEffRotateKey( spep_3 + 97, ryusen1, 23.6 );
setEffRotateKey( spep_3 + 98, ryusen1, -121.6 );
setEffRotateKey( spep_3 + 100, ryusen1, -121.7 );
setEffRotateKey( spep_3 + 110, ryusen1, -121.7 );

setEffAlphaKey( spep_3 + 0, ryusen1, 255 );
setEffAlphaKey( spep_3 + 18, ryusen1, 255 );
setEffAlphaKey( spep_3 + 20, ryusen1, 209 );
setEffAlphaKey( spep_3 + 22, ryusen1, 163 );
setEffAlphaKey( spep_3 + 24, ryusen1, 117 );
setEffAlphaKey( spep_3 + 26, ryusen1, 71 );
setEffAlphaKey( spep_3 + 28, ryusen1, 26 );
setEffAlphaKey( spep_3 + 29, ryusen1, 0 );
setEffAlphaKey( spep_3 + 30, ryusen1, 0 );
setEffAlphaKey( spep_3 + 58, ryusen1, 0 );
setEffAlphaKey( spep_3 + 59, ryusen1, 0 );
setEffAlphaKey( spep_3 + 60, ryusen1, 255 );
setEffAlphaKey( spep_3 + 62, ryusen1, 212 );
setEffAlphaKey( spep_3 + 64, ryusen1, 170 );
setEffAlphaKey( spep_3 + 66, ryusen1, 128 );
setEffAlphaKey( spep_3 + 68, ryusen1, 85 );
setEffAlphaKey( spep_3 + 70, ryusen1, 43 );
setEffAlphaKey( spep_3 + 72, ryusen1, 0 );
setEffAlphaKey( spep_3 + 96, ryusen1, 0 );
setEffAlphaKey( spep_3 + 97, ryusen1, 0 );
setEffAlphaKey( spep_3 + 98, ryusen1, 255 );
setEffAlphaKey( spep_3 + 100, ryusen1, 212 );
setEffAlphaKey( spep_3 + 102, ryusen1, 170 );
setEffAlphaKey( spep_3 + 104, ryusen1, 128 );
setEffAlphaKey( spep_3 + 106, ryusen1, 85 );
setEffAlphaKey( spep_3 + 108, ryusen1, 43 );
setEffAlphaKey( spep_3 + 110, ryusen1, 0 );

-- ** エフェクト等 ** --
zangeki_b = entryEffect( spep_3 + 0, SP_07x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, zangeki_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 166, zangeki_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, zangeki_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 166, zangeki_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, zangeki_b, 0 );
setEffRotateKey( spep_3 + 166, zangeki_b, 0 );
setEffAlphaKey( spep_3 + 0, zangeki_b, 255 );
setEffAlphaKey( spep_3 + 166, zangeki_b, 255 );

-- ** エフェクト等 ** --
zangeki = entryEffect( spep_3 + 0, SP_06x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, zangeki, 0, 0 , 0 );
setEffMoveKey( spep_3 + 166, zangeki, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, zangeki, 1.1, 1.1 );
setEffScaleKey( spep_3 + 166, zangeki, 1.1, 1.1 );
setEffRotateKey( spep_3 + 0, zangeki, 0 );
setEffRotateKey( spep_3 + 166, zangeki, 0 );
setEffAlphaKey( spep_3 + 0, zangeki, 255 );
setEffAlphaKey( spep_3 + 166, zangeki, 255 );


setDisp( spep_3  + 0, 1, 1 );
setDisp( spep_3 -3 + 130, 1, 0 );

changeAnime( spep_3  + 0, 1, 104 );
changeAnime( spep_3 -3 + 20, 1, 108 );
changeAnime( spep_3 -3 + 60, 1, 106 );
changeAnime( spep_3 -3 + 98, 1, 107 );

setMoveKey( spep_3  + 0, 1, 229.9, -34.6 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, 213.6, -28.6 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 197.4, -22.6 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 181.2, -16.8 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 164.9, -10.7 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 148.8, -4.8 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 132.6, 1.1 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 116.3, 7.1 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 100.1, 13.1 , 0 );
setMoveKey( spep_3 -3 + 19, 1, 83.8, 19 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -67.9, 141.4 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -90.8, 114.2 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -63.4, 112.4 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -86.4, 135.9 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -58.9, 134 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -81.9, 106.9 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -60.5, 108.3 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -76.9, 122.3 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -80.8, 123.7 , 0 );
setMoveKey( spep_3 -3 + 38, 1, -84.6, 125 , 0 );
setMoveKey( spep_3 -3 + 40, 1, -86.8, 125.6 , 0 );
setMoveKey( spep_3 -3 + 42, 1, -88.9, 126.2 , 0 );
setMoveKey( spep_3 -3 + 44, 1, -90.9, 126.6 , 0 );
setMoveKey( spep_3 -3 + 46, 1, -93.2, 127.3 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -95.3, 127.9 , 0 );
setMoveKey( spep_3 -3 + 50, 1, -97.4, 128.4 , 0 );
setMoveKey( spep_3 -3 + 52, 1, -99.5, 128.9 , 0 );
setMoveKey( spep_3 -3 + 54, 1, -101.8, 129.6 , 0 );
setMoveKey( spep_3 -3 + 56, 1, -103.9, 130.2 , 0 );
setMoveKey( spep_3 -3 + 59, 1, -106, 130.7 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 6.8, 145.7 , 0 );
setMoveKey( spep_3 -3 + 62, 1, -15.6, 96 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 21.1, 76.8 , 0 );
setMoveKey( spep_3 -3 + 66, 1, -5.6, 109.5 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 18.2, 117.1 , 0 );
setMoveKey( spep_3 -3 + 70, 1, -8.5, 99.5 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 2.7, 119.7 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 3.5, 121.1 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 4.4, 122.6 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 5.3, 124.1 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 6.3, 125.5 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 7.1, 127 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 7.1, 122.2 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 7.1, 117.6 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 7.1, 112.8 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 7.1, 108.1 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 7, 103.3 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 7, 98.7 , 0 );
setMoveKey( spep_3 -3 + 97, 1, 7, 93.9 , 0 );
setMoveKey( spep_3 -3 + 98, 1, -16.3, -86.6 , 0 );
setMoveKey( spep_3 -3 + 100, 1, -11.7, -130 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 34.5, -157.2 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 37.3, -169.8 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 70.9, -192.3 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 57.4, -242.8 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 88.9, -262.5 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 77.1, -265.5 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 94.6, -294.5 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 105.7, -319.6 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 109.3, -333.4 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 119.6, -356.8 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 122.9, -369.3 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 132.4, -390.9 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 134, -401.1 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 142.6, -421.1 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 143.4, -428.9 , 0 );

a=0.3;

setScaleKey( spep_3  + 0, 1, 1.3, 1.3 );
setScaleKey( spep_3 -3 + 59, 1, 1.3, 1.3 );
setScaleKey( spep_3 -3 + 60, 1, 1.68, 1.68 );
setScaleKey( spep_3 -3 + 62, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 64, 1, 1.3, 1.3 );
setScaleKey( spep_3 -3 + 97, 1, 1.3, 1.3 );
setScaleKey( spep_3 -3 + 98, 1, 0.7 -a, 0.7-a ); --ここから吹き飛ばされる
setScaleKey( spep_3 -3 + 100, 1, 1-a, 1-a );
setScaleKey( spep_3 -3 + 102, 1, 1.29-a, 1.29-a );
setScaleKey( spep_3 -3 + 104, 1, 1.62-a, 1.62-a );
setScaleKey( spep_3 -3 + 106, 1, 1.72-a, 1.72-a );
setScaleKey( spep_3 -3 + 108, 1, 1.89-a, 1.89-a );
setScaleKey( spep_3 -3 + 110, 1, 1.96-a, 1.96-a );
setScaleKey( spep_3 -3 + 112, 1, 2.11-a, 2.11-a );
setScaleKey( spep_3 -3 + 114, 1, 2.17-a, 2.17-a );
setScaleKey( spep_3 -3 + 116, 1, 2.31-a, 2.31-a );
setScaleKey( spep_3 -3 + 118, 1, 2.38-a, 2.38-a );
setScaleKey( spep_3 -3 + 120, 1, 2.51-a, 2.51-a );
setScaleKey( spep_3 -3 + 122, 1, 2.54-a, 2.54-a );
setScaleKey( spep_3 -3 + 124, 1, 2.65-a, 2.65-a );
setScaleKey( spep_3 -3 + 126, 1, 2.7-a, 2.7-a );
setScaleKey( spep_3 -3 + 128, 1, 2.81-a, 2.81-a );
setScaleKey( spep_3 -3 + 130, 1, 2.81-a, 2.81-a );

setRotateKey( spep_3  + 0, 1, 27.6 );
setRotateKey( spep_3 -3 + 19, 1, 27.6 );
setRotateKey( spep_3 -3 + 20, 1, 0 );
setRotateKey( spep_3 -3 + 59, 1, 0 );
setRotateKey( spep_3 -3 + 60, 1, -49.6 );
setRotateKey( spep_3 -3 + 62, 1, -49.7 );
setRotateKey( spep_3 -3 + 97, 1, -49.7 );
setRotateKey( spep_3 -3 + 98, 1, 0 );
setRotateKey( spep_3 -3 + 130, 1, 0 );



--集中線
shuchusen1 = entryEffectLife( spep_3 -3 + 138,  906, 26, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 -3 + 138, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 -3 + 164, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_3 -3 + 138, shuchusen1, 1.47, 1.47 );
setEffScaleKey( spep_3 -3 + 164, shuchusen1, 1.47, 1.47 );

setEffRotateKey( spep_3 -3 + 138, shuchusen1, 180 );
setEffRotateKey( spep_3 -3 + 164, shuchusen1, 180 );

setEffAlphaKey( spep_3 -3 + 138, shuchusen1, 255 );
setEffAlphaKey( spep_3 -3 + 164, shuchusen1, 255 );

--SE
playSe(spep_3+18,1032);
playSe(spep_3+58,1031);
playSe(spep_3+96,1032);
playSe(spep_3+136,1018);


-- ** ホワイトフェード ** --
entryFade( spep_3 +158 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 166;

------------------------------------------------------
-- 斬撃エフェクト
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_4 + 0, SP_08x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_4 + 50, hit, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_4 + 50, hit, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit, 0 );
setEffRotateKey( spep_4 + 50, hit, 0 );
setEffAlphaKey( spep_4 + 0, hit, 255 );
setEffAlphaKey( spep_4 + 50, hit, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_4 + 0,  906, 48, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 48, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen2, 1, 1 );
setEffScaleKey( spep_4 + 48, shuchusen2, 1, 1 );

setEffRotateKey( spep_4 + 0, shuchusen2, 180 );
setEffRotateKey( spep_4 + 48, shuchusen2, 180 );

setEffAlphaKey( spep_4 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 48, shuchusen2, 255 );

-- ** ホワイトフェード ** --
entryFade( spep_4 +42 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--SE
playSe(spep_4,1026);

-- ** 次の準備 ** --
spep_5 = spep_4 + 50;

------------------------------------------------------
-- 突き
------------------------------------------------------
-- ** エフェクト等 ** --
thrust_f = entryEffect( spep_5 + 0, SP_09x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, thrust_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 128, thrust_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, thrust_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 128, thrust_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, thrust_f, 0 );
setEffRotateKey( spep_5 + 128, thrust_f, 0 );
setEffAlphaKey( spep_5 + 0, thrust_f, 255 );
setEffAlphaKey( spep_5 + 128, thrust_f, 255 );

-- ** エフェクト等 ** --
thrust_b = entryEffect( spep_5 + 0, SP_10x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, thrust_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 128, thrust_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, thrust_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 128, thrust_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, thrust_b, 0 );
setEffRotateKey( spep_5 + 128, thrust_b, 0 );
setEffAlphaKey( spep_5 + 0, thrust_b, 255 );
setEffAlphaKey( spep_5 + 128, thrust_b, 255 );

--敵の動き
setDisp( spep_5  + 0, 1, 1 );
setDisp( spep_5  + 126, 1, 0 );

changeAnime( spep_5  + 0, 1, 108 );
changeAnime( spep_5 -3 + 102, 1, 106 );

setMoveKey( spep_5  + 0, 1, -160.3, -114.9 , 0 );
--setMoveKey( spep_5 -3 + 2, 1, -127.7, -96.5 , 0 );
setMoveKey( spep_5 -3 + 4, 1, -72.9, -66.2 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -40.2, -26.3 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 9.4, 0.9 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 40.1, 19.2 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 87.8, 46.9 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 81.3, 55.6 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 90.5, 56.7 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 84, 49.7 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 93.1, 50.5 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 86.7, 59.3 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 95.7, 60.2 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 89.1, 53.2 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 98.3, 54.1 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 91.7, 62.9 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 94.7, 63.7 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 97.4, 64.5 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 100.1, 65.5 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 103, 66.2 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 104.2, 66 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 99.2, 60.3 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 109.5, 61.8 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 104.6, 71 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 114.6, 72.6 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 109.8, 66.8 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 119.9, 68.5 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 112.2, 75.9 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 112.7, 76 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 113.1, 76 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 113.4, 76 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 113.7, 76 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 114.3, 76.1 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 114.3, 76 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 114.8, 76.1 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 115.2, 76.1 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 115.3, 76 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 115.8, 76.1 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 116.2, 76.1 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 116.6, 76.1 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 116.7, 76.1 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 117.1, 76.2 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 117.5, 76.1 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 117.7, 76.1 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 110.5, 69 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 114.7, 67.1 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 104.4, 72.4 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 108.4, 70.4 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 98.5, 61.7 , 0 );
setMoveKey( spep_5 -3 + 98, 1, 95.4, 60 , 0 );
setMoveKey( spep_5 -3 + 101, 1, 92.5, 58.1 , 0 );
setMoveKey( spep_5 -3 + 102, 1, 75.7, 67.4 , 0 );
setMoveKey( spep_5 -3 + 104, 1, 76.7, 68.1 , 0 );
setMoveKey( spep_5 -3 + 106, 1, 77.7, 68.7 , 0 );
setMoveKey( spep_5 -3 + 108, 1, 78.7, 69.3 , 0 );
setMoveKey( spep_5 -3 + 110, 1, 79.6, 69.9 , 0 );
setMoveKey( spep_5 -3 + 112, 1, 80.6, 70.5 , 0 );
setMoveKey( spep_5 -3 + 114, 1, 81.5, 71.1 , 0 );
setMoveKey( spep_5 -3 + 116, 1, 82.5, 71.7 , 0 );
setMoveKey( spep_5 -3 + 118, 1, 83.4, 72.2 , 0 );
setMoveKey( spep_5 -3 + 120, 1, 84.4, 72.8 , 0 );
setMoveKey( spep_5 -3 + 122, 1, 85.4, 73.3 , 0 );
setMoveKey( spep_5 -3 + 124, 1, 86.2, 73.9 , 0 );
setMoveKey( spep_5  + 126, 1, 87.1, 74.4 , 0 );

setScaleKey( spep_5  + 0, 1, 1.7, 1.7 );
--setScaleKey( spep_5 -3 + 2, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 4, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 6, 1, 1.4, 1.4 );
setScaleKey( spep_5 -3 + 8, 1, 1.3, 1.3 );
setScaleKey( spep_5 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 -3 + 12, 1, 1.1, 1.1 );
setScaleKey( spep_5 -3 + 14, 1, 1.1, 1.1 );
setScaleKey( spep_5 -3 + 16, 1, 1.09, 1.09 );
setScaleKey( spep_5 -3 + 20, 1, 1.09, 1.09 );
setScaleKey( spep_5 -3 + 22, 1, 1.08, 1.08 );
setScaleKey( spep_5 -3 + 28, 1, 1.08, 1.08 );
setScaleKey( spep_5 -3 + 30, 1, 1.07, 1.07 );
setScaleKey( spep_5 -3 + 34, 1, 1.07, 1.07 );
setScaleKey( spep_5 -3 + 36, 1, 1.06, 1.06 );
setScaleKey( spep_5 -3 + 40, 1, 1.06, 1.06 );
setScaleKey( spep_5 -3 + 42, 1, 1.05, 1.05 );
setScaleKey( spep_5 -3 + 46, 1, 1.05, 1.05 );
setScaleKey( spep_5 -3 + 48, 1, 1.04, 1.04 );
setScaleKey( spep_5 -3 + 52, 1, 1.04, 1.04 );
setScaleKey( spep_5 -3 + 54, 1, 1.03, 1.03 );
setScaleKey( spep_5 -3 + 58, 1, 1.03, 1.03 );
setScaleKey( spep_5 -3 + 60, 1, 1.02, 1.02 );
setScaleKey( spep_5 -3 + 64, 1, 1.02, 1.02 );
setScaleKey( spep_5 -3 + 66, 1, 1.01, 1.01 );
setScaleKey( spep_5 -3 + 70, 1, 1.01, 1.01 );
setScaleKey( spep_5 -3 + 72, 1, 1, 1 );
setScaleKey( spep_5 -3 + 78, 1, 1, 1 );
setScaleKey( spep_5 -3 + 80, 1, 0.99, 0.99 );
setScaleKey( spep_5 -3 + 84, 1, 0.99, 0.99 );
setScaleKey( spep_5 -3 + 86, 1, 0.98, 0.98 );
setScaleKey( spep_5 -3 + 90, 1, 0.98, 0.98 );
setScaleKey( spep_5 -3 + 92, 1, 0.97, 0.97 );
setScaleKey( spep_5 -3 + 96, 1, 0.97, 0.97 );
setScaleKey( spep_5 -3 + 98, 1, 0.96, 0.96 );
setScaleKey( spep_5 -3 + 101, 1, 0.96, 0.96 );
setScaleKey( spep_5 -3 + 102, 1, 0.95, 0.95 );
setScaleKey( spep_5 -3 + 104, 1, 0.94, 0.94 );
setScaleKey( spep_5 -3 + 106, 1, 0.93, 0.93 );
setScaleKey( spep_5 -3 + 108, 1, 0.92, 0.92 );
setScaleKey( spep_5 -3 + 110, 1, 0.9, 0.9 );
setScaleKey( spep_5 -3 + 112, 1, 0.9, 0.9 );
setScaleKey( spep_5 -3 + 114, 1, 0.89, 0.89 );
setScaleKey( spep_5 -3 + 116, 1, 0.88, 0.88 );
setScaleKey( spep_5 -3 + 118, 1, 0.87, 0.87 );
setScaleKey( spep_5 -3 + 120, 1, 0.86, 0.86 );
setScaleKey( spep_5 -3 + 122, 1, 0.86, 0.86 );
setScaleKey( spep_5  + 124, 1, 0.84, 0.84 );

setRotateKey( spep_5  + 0, 1, 0 );
--setRotateKey( spep_5 -3 + 2, 1, -1.5 );
setRotateKey( spep_5 -3 + 4, 1, 0 );
setRotateKey( spep_5 -3 + 6, 1, -1.5 );
setRotateKey( spep_5 -3 + 8, 1, 0 );
setRotateKey( spep_5 -3 + 10, 1, -1.5 );
setRotateKey( spep_5 -3 + 12, 1, 0 );
setRotateKey( spep_5 -3 + 14, 1, -1.5 );
setRotateKey( spep_5 -3 + 16, 1, 0 );
setRotateKey( spep_5 -3 + 18, 1, -1.5 );
setRotateKey( spep_5 -3 + 20, 1, 0 );
setRotateKey( spep_5 -3 + 22, 1, -1.5 );
setRotateKey( spep_5 -3 + 24, 1, 0 );
setRotateKey( spep_5 -3 + 26, 1, -1.5 );
setRotateKey( spep_5 -3 + 28, 1, 0 );
setRotateKey( spep_5 -3 + 30, 1, -1.5 );
setRotateKey( spep_5 -3 + 32, 1, 0 );
setRotateKey( spep_5 -3 + 34, 1, -1.5 );
setRotateKey( spep_5 -3 + 36, 1, 0 );
setRotateKey( spep_5 -3 + 38, 1, -1.5 );
setRotateKey( spep_5 -3 + 40, 1, 0 );
setRotateKey( spep_5 -3 + 42, 1, -1.5 );
setRotateKey( spep_5 -3 + 44, 1, 0 );
setRotateKey( spep_5 -3 + 46, 1, -1.5 );
setRotateKey( spep_5 -3 + 48, 1, 0 );
setRotateKey( spep_5 -3 + 50, 1, -1.5 );
setRotateKey( spep_5 -3 + 52, 1, 0 );
setRotateKey( spep_5 -3 + 54, 1, -1.5 );
setRotateKey( spep_5 -3 + 56, 1, 0 );
setRotateKey( spep_5 -3 + 58, 1, -1.5 );
setRotateKey( spep_5 -3 + 60, 1, 0 );
setRotateKey( spep_5 -3 + 62, 1, -1.5 );
setRotateKey( spep_5 -3 + 64, 1, 0 );
setRotateKey( spep_5 -3 + 66, 1, -1.5 );
setRotateKey( spep_5 -3 + 68, 1, 0 );
setRotateKey( spep_5 -3 + 70, 1, -1.5 );
setRotateKey( spep_5 -3 + 72, 1, 0 );
setRotateKey( spep_5 -3 + 74, 1, -1.5 );
setRotateKey( spep_5 -3 + 76, 1, 0 );
setRotateKey( spep_5 -3 + 78, 1, -1.5 );
setRotateKey( spep_5 -3 + 80, 1, 0 );
setRotateKey( spep_5 -3 + 82, 1, -1.5 );
setRotateKey( spep_5 -3 + 84, 1, 0 );
setRotateKey( spep_5 -3 + 86, 1, -1.5 );
setRotateKey( spep_5 -3 + 88, 1, 0 );
setRotateKey( spep_5 -3 + 90, 1, -1.5 );
setRotateKey( spep_5 -3 + 92, 1, 0 );
setRotateKey( spep_5 -3 + 94, 1, -1.5 );
setRotateKey( spep_5 -3 + 96, 1, 0 );
setRotateKey( spep_5 -3 + 98, 1, -1.5 );
setRotateKey( spep_5 -3 + 101, 1, 0 );
setRotateKey( spep_5 -3 + 102, 1, -52.4 );
setRotateKey( spep_5 -3 + 104, 1, -50.5 );
setRotateKey( spep_5 -3 + 106, 1, -52.5 );
setRotateKey( spep_5 -3 + 108, 1, -50.5 );
setRotateKey( spep_5 -3 + 110, 1, -52.5 );
setRotateKey( spep_5 -3 + 112, 1, -50.5 );
setRotateKey( spep_5 -3 + 114, 1, -52.5 );
setRotateKey( spep_5 -3 + 116, 1, -50.5 );
setRotateKey( spep_5 -3 + 118, 1, -52.5 );
setRotateKey( spep_5 -3 + 120, 1, -50.5 );
setRotateKey( spep_5 -3 + 122, 1, -52.5 );
setRotateKey( spep_5 -3 + 124, 1, -50.5 );
setRotateKey( spep_5  + 126, 1, -52.5 );

--集中線
shuchusen3 = entryEffectLife( spep_5  + 0,  906, 126, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5  + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_5  + 126, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_5  + 0, shuchusen3, 1.38, 1.38 );
setEffScaleKey( spep_5  + 126, shuchusen3, 1.38, 1.38 );

setEffRotateKey( spep_5  + 0, shuchusen3, 180 );
setEffRotateKey( spep_5  + 126, shuchusen3, 180 );

setEffAlphaKey( spep_5  + 0, shuchusen3, 255 );
setEffAlphaKey( spep_5 -3 + 26, shuchusen3, 255 );
setEffAlphaKey( spep_5 -3 + 27, shuchusen3, 0 );
setEffAlphaKey( spep_5 -3 + 28, shuchusen3, 0 );
setEffAlphaKey( spep_5 -3 + 46, shuchusen3, 0 );
setEffAlphaKey( spep_5 -3 + 47, shuchusen3, 0 );
setEffAlphaKey( spep_5 -3 + 48, shuchusen3, 255 );
setEffAlphaKey( spep_5 -3 + 68, shuchusen3, 255 );
setEffAlphaKey( spep_5 -3 + 69, shuchusen3, 0 );
setEffAlphaKey( spep_5 -3 + 70, shuchusen3, 0 );
setEffAlphaKey( spep_5 -3 + 104, shuchusen3, 0 );
setEffAlphaKey( spep_5 -3 + 105, shuchusen3, 0 );
setEffAlphaKey( spep_5 -3 + 106, shuchusen3, 255 );
setEffAlphaKey( spep_5  + 126, shuchusen3, 255 );

-- ** ホワイトフェード ** --
entryFade( spep_5 +120 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--SE
playSe(spep_5,44);
playSe(spep_5+94,1047);


-- ** 次の準備 ** --
spep_6 = spep_5 + 128;

------------------------------------------------------
-- 突進2
------------------------------------------------------

-- ** エフェクト等 ** --
rush2 = entryEffect( spep_6 + 0, SP_11x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, rush2, 0, 0 , 0 );
setEffMoveKey( spep_6 + 170, rush2, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, rush2, 1.0, 1.0 );
setEffScaleKey( spep_6 + 170, rush2, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, rush2, 0 );
setEffRotateKey( spep_6 + 170, rush2, 0 );
setEffAlphaKey( spep_6 + 0, rush2, 255 );
setEffAlphaKey( spep_6 + 170, rush2, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_6  + 0,  906, 168, 0x100, -1, 0, 213, 0 );

setEffMoveKey( spep_6  + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_6  + 168, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_6  + 0, shuchusen4, 1, 1 );
setEffScaleKey( spep_6 -3 + 86, shuchusen4, 1, 1 );
setEffScaleKey( spep_6 -3 + 136, shuchusen4, 1, 1 );
setEffScaleKey( spep_6 -3 + 137, shuchusen4, 1, 1 );
setEffScaleKey( spep_6 -3 + 138, shuchusen4, 1.36, 1.36 );
setEffScaleKey( spep_6  + 168, shuchusen4, 1.36, 1.36 );

setEffRotateKey( spep_6  + 0, shuchusen4, 180 );
setEffRotateKey( spep_6  + 168, shuchusen4, 180 );

setEffAlphaKey( spep_6  + 0, shuchusen4, 255 );
setEffAlphaKey( spep_6 -3 + 86, shuchusen4, 255 );
setEffAlphaKey( spep_6 -3 + 87, shuchusen4, 0 );
setEffAlphaKey( spep_6 -3 + 88, shuchusen4, 0 );
setEffAlphaKey( spep_6 -3 + 136, shuchusen4, 0 );
setEffAlphaKey( spep_6 -3 + 137, shuchusen4, 0 );
setEffAlphaKey( spep_6 -3 + 138, shuchusen4, 255 );
setEffAlphaKey( spep_6  + 168, shuchusen4, 255 );

--***カットイン***
--speff = entryEffect(  spep_6+14,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_6+14,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_6+26, 190006, 72, 0x100, -1, 0, 60, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_6+26,  ctgogo,  60,  510);
setEffMoveKey(  spep_6+98,  ctgogo,  60,  510);

setEffAlphaKey( spep_6 + 26, ctgogo, 255 );
setEffAlphaKey( spep_6 + 27, ctgogo, 255 );
setEffAlphaKey( spep_6 + 28, ctgogo, 255 );
setEffAlphaKey( spep_6 + 88, ctgogo, 255 );
setEffAlphaKey( spep_6 + 90, ctgogo, 255 );
setEffAlphaKey( spep_6 + 92, ctgogo, 191 );
setEffAlphaKey( spep_6 + 94, ctgogo, 128 );
setEffAlphaKey( spep_6 + 96, ctgogo, 64 );
setEffAlphaKey( spep_6 + 98, ctgogo, 0 );

setEffRotateKey(  spep_6+26,  ctgogo,  0);
setEffRotateKey(  spep_6+98,  ctgogo,  0);

setEffScaleKey(  spep_6+26,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_6+90,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_6+98,  ctgogo, -1.07, 1.07 );

--SE
playSe(spep_6+14,1018);--ごごご
playSe(spep_6+128,9);

-- ** ホワイトフェード ** --
entryFade( spep_6 +160 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 170;

------------------------------------------------------
-- 終わり
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_7 + 0, SP_12x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 186, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 186, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_f, 0 );
setEffRotateKey( spep_7 + 186, finish_f, 0 );
setEffAlphaKey( spep_7 + 0, finish_f, 255 );
setEffAlphaKey( spep_7 + 186, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_7 + 0, SP_13x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 186, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 186, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_b, 0 );
setEffRotateKey( spep_7 + 186, finish_b, 0 );
setEffAlphaKey( spep_7 + 0, finish_b, 255 );
setEffAlphaKey( spep_7 + 186, finish_b, 255 );

--敵の動き
setDisp( spep_7  + 0, 1, 1 );
setDisp( spep_7  + 60, 1, 0 );

changeAnime( spep_7  + 0, 1, 106 );

setMoveKey( spep_7  + 0, 1, -36.4, -1468.7 , 0 );
--setMoveKey( spep_7 -3 + 2, 1, -26.5, -1287.4 , 0 );
setMoveKey( spep_7 -3 + 4, 1, -36.3, -1095.9 , 0 );
setMoveKey( spep_7 -3 + 6, 1, -26.5, -894.4 , 0 );
setMoveKey( spep_7 -3 + 8, 1, -36.3, -702.7 , 0 );
setMoveKey( spep_7 -3 + 10, 1, -26.5, -521.5 , 0 );
setMoveKey( spep_7 -3 + 12, 1, -36.3, -330.2 , 0 );
setMoveKey( spep_7 -3 + 14, 1, -26.5, -128.4 , 0 );
setMoveKey( spep_7 -3 + 16, 1, -36.3, -126.6 , 0 );
setMoveKey( spep_7 -3 + 18, 1, -26.5, -135 , 0 );
setMoveKey( spep_7 -3 + 20, 1, -36.3, -133.2 , 0 );
setMoveKey( spep_7 -3 + 22, 1, -26.5, -121.3 , 0 );
setMoveKey( spep_7 -3 + 24, 1, -36.3, -119.5 , 0 );
setMoveKey( spep_7 -3 + 26, 1, -26.5, -127.9 , 0 );
setMoveKey( spep_7 -3 + 28, 1, -36.3, -126.1 , 0 );
setMoveKey( spep_7 -3 + 30, 1, -26.5, -114.2 , 0 );
setMoveKey( spep_7 -3 + 32, 1, -36.3, -112.4 , 0 );
setMoveKey( spep_7 -3 + 34, 1, -26.5, -120.8 , 0 );
setMoveKey( spep_7 -3 + 36, 1, -36.3, -119 , 0 );
setMoveKey( spep_7 -3 + 38, 1, -26.5, -107.1 , 0 );
setMoveKey( spep_7 -3 + 40, 1, -36.3, -105.3 , 0 );
setMoveKey( spep_7 -3 + 42, 1, -26.5, -113.7 , 0 );
setMoveKey( spep_7 -3 + 44, 1, -36.3, -111.9 , 0 );
setMoveKey( spep_7 -3 + 46, 1, -26.5, -100 , 0 );
setMoveKey( spep_7 -3 + 48, 1, -36.3, -98.2 , 0 );
setMoveKey( spep_7 -3 + 50, 1, -26.5, -106.6 , 0 );
setMoveKey( spep_7 -3 + 52, 1, -36.1, -113.4 , 0 );
setMoveKey( spep_7 -3 + 54, 1, -26, -108.7 , 0 );
setMoveKey( spep_7 -3 + 56, 1, -35.1, -113.1 , 0 );
setMoveKey( spep_7 -3 + 58, 1, -25.1, -126.5 , 0 );
setMoveKey( spep_7 -3 + 60, 1, -33.6, -129.6 , 0 );
setMoveKey( spep_7 -3 + 62, 1, -23.8, -123.2 , 0 );
setMoveKey( spep_7 -3 + 64, 1, -31.7, -125.8 , 0 );

setScaleKey( spep_7  + 0, 1, 1.62, 1.62 );
setScaleKey( spep_7 -3 + 50, 1, 1.62, 1.62 );
setScaleKey( spep_7 -3 + 52, 1, 1.62, 1.61 );
setScaleKey( spep_7 -3 + 54, 1, 1.59, 1.59 );
setScaleKey( spep_7 -3 + 56, 1, 1.57, 1.57 );
setScaleKey( spep_7 -3 + 58, 1, 1.54, 1.53 );
setScaleKey( spep_7 -3 + 60, 1, 1.5, 1.5 );
setScaleKey( spep_7 -3 + 62, 1, 1.46, 1.46 );
setScaleKey( spep_7 -3 + 64, 1, 1.42, 1.42 );

setRotateKey( spep_7  + 0, 1, -54.7 );
--setRotateKey( spep_7 -3 + 2, 1, -52.7 );
setRotateKey( spep_7 -3 + 4, 1, -54.7 );
setRotateKey( spep_7 -3 + 6, 1, -52.7 );
setRotateKey( spep_7 -3 + 8, 1, -54.7 );
setRotateKey( spep_7 -3 + 10, 1, -52.7 );
setRotateKey( spep_7 -3 + 12, 1, -54.7 );
setRotateKey( spep_7 -3 + 14, 1, -52.7 );
setRotateKey( spep_7 -3 + 16, 1, -54.7 );
setRotateKey( spep_7 -3 + 18, 1, -52.7 );
setRotateKey( spep_7 -3 + 20, 1, -54.7 );
setRotateKey( spep_7 -3 + 22, 1, -52.7 );
setRotateKey( spep_7 -3 + 24, 1, -54.7 );
setRotateKey( spep_7 -3 + 26, 1, -52.7 );
setRotateKey( spep_7 -3 + 28, 1, -54.7 );
setRotateKey( spep_7 -3 + 30, 1, -52.7 );
setRotateKey( spep_7 -3 + 32, 1, -54.7 );
setRotateKey( spep_7 -3 + 34, 1, -52.7 );
setRotateKey( spep_7 -3 + 36, 1, -54.7 );
setRotateKey( spep_7 -3 + 38, 1, -52.7 );
setRotateKey( spep_7 -3 + 40, 1, -54.7 );
setRotateKey( spep_7 -3 + 42, 1, -52.7 );
setRotateKey( spep_7 -3 + 44, 1, -54.7 );
setRotateKey( spep_7 -3 + 46, 1, -52.7 );
setRotateKey( spep_7 -3 + 48, 1, -54.7 );
setRotateKey( spep_7 -3 + 50, 1, -52.7 );
setRotateKey( spep_7 -3 + 52, 1, -54.7 );
setRotateKey( spep_7 -3 + 54, 1, -52.7 );
setRotateKey( spep_7 -3 + 56, 1, -54.7 );
setRotateKey( spep_7 -3 + 58, 1, -52.7 );
setRotateKey( spep_7 -3 + 60, 1, -54.7 );
setRotateKey( spep_7 -3 + 62, 1, -52.7 );
setRotateKey( spep_7 -3 + 64, 1, -54.7 );

--集中線
shuchusen5 = entryEffectLife( spep_7 -3 + 64,  906, 120, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_7 -3 + 64, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_7 -3 + 184, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_7 -3 + 64, shuchusen5, 1.13, 1.32 );
setEffScaleKey( spep_7 -3 + 184, shuchusen5, 1.13, 1.32 );

setEffRotateKey( spep_7 -3 + 64, shuchusen5, 180 );
setEffRotateKey( spep_7 -3 + 184, shuchusen5, 180 );

setEffAlphaKey( spep_7 -3 + 64, shuchusen5, 255 );
setEffAlphaKey( spep_7 -3 + 184, shuchusen5, 255 );

--SE
playSe(spep_7,1021);
playSe(spep_7,1067);
playSe(spep_7+60,1024);


-- ダメージ表示
hideKoScreen();  --黒フィルター削除
dealDamage(spep_7+62);
entryFade( spep_7 +170, 8,  10, 2, fcolor_r, fcolor_g, fcolor_b, 255);             -- black fade
endPhase(spep_7+180);
end