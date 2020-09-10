-- 伝説降臨LRフリーザ　デススライサー

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

-- エフェクトセットアップ
ef_001 = 153279;    -- ダブルデススライサー構え
ef_001r = 153280;    -- ダブルデススライサー構え（敵）
ef_003 = 153281;    -- 放つ
ef_004a = 153282;  -- デススライサー&ナビ
ef_004b = 153283;    -- デススライサー&ナビ の背景
ef_005 = 153284;	-- デススライサー軌道変更
ef_006 = 153285;	-- 敵に迫る
ef_007 = 153286;	-- 斬撃
ef_008 = 153287;	-- 爆発

kaki_001 = 10012; -- ズオッ

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

------------------------------------------------------
-- 味方側
------------------------------------------------------

------------------------------------------------------
-- 構え	
------------------------------------------------------

spep_0 = 0 ;

-- 敵の動き
setDisp( spep_0, 1, 0 );

-- 構え エフェクト
kamae = entryEffectLife( spep_0,  ef_001, 126, 0x80, -1, 0, 0, 0); --エフェクトの最後に無駄フレームがあるので尺を短くしてます
setEffMoveKey( spep_0,kamae,  0,  0);
setEffMoveKey( spep_0 + 126,kamae,  0,  0);

setEffScaleKey( spep_0, kamae, 1.0, 1.0);
setEffScaleKey( spep_0 + 126, kamae, 1.0, 1.0);

setEffAlphaKey( spep_0, kamae, 255);
setEffAlphaKey( spep_0 + 126, kamae, 255);

setEffRotateKey( spep_0, kamae, 0);
setEffRotateKey( spep_0 + 126, kamae, 0);

--デススライサー待機 SE
--[[
playSe( spep_0 + 5 , 1034 );  
playSe( spep_0 + 20 , 1034 );  
playSe( spep_0 + 35 , 1034 );  
]]
--v4.11調整
SE001 = playSe( spep_0 + 5 , 1034 ); 
stopSe(spep_0+23,SE001,6); 
SE002 = playSe( spep_0 + 20 , 1034 ); 
stopSe(spep_0+37,SE002,6); 
SE003 = playSe( spep_0 + 35 , 1034 );  

-- 集中線
shuchusen = entryEffectLife( spep_0 + 42,  906, 84, 0x80, -1, 0, 0, 0 ); 
setEffShake( spep_0 + 42, shuchusen, 84, 25 );

setEffMoveKey( spep_0 + 42, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 126, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_0 + 42, shuchusen, 1.4, 1.4 );
setEffScaleKey( spep_0 + 126, shuchusen, 1.4, 1.4 );

setEffRotateKey( spep_0 + 42, shuchusen, 0 );
setEffRotateKey( spep_0 + 126, shuchusen, 0 );

setEffAlphaKey( spep_0 + 42, shuchusen, 255 );
setEffAlphaKey( spep_0 + 126, shuchusen, 255 );

-- **  顔カットイン　** --
speff = entryEffect( spep_0 + 42, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 42, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 54,  190006, 72, 0x100, -1, 0, 70.9, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 54, ctgogo, 72, 10 );

setEffMoveKey( spep_0 + 54, ctgogo, 0,  520, 0  );
setEffMoveKey( spep_0 + 54 + 72, ctgogo, 0,  520, 0  );	

setEffScaleKey( spep_0 + 54, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 54 + 64, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 54 + 66, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_0 + 54 + 68, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_0 + 54 + 70, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_0 + 54 + 72, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_0 + 54, ctgogo, 0 );
setEffRotateKey( spep_0 + 54 + 72, ctgogo, 0 );

setEffAlphaKey( spep_0 + 54, ctgogo, 0 );
setEffAlphaKey( spep_0 + 54 + 1, ctgogo, 255 );
setEffAlphaKey( spep_0 + 54 + 2, ctgogo, 255 );
setEffAlphaKey( spep_0 + 54 + 72, ctgogo, 255 );

--SE
playSe( spep_0 + 54 , SE_04 );  --ゴゴゴ

-----------------------------------------------s-------
-- カードカットイン
------------------------------------------------------

spep_1 = spep_0 + 126 ;

--白フラッシュ
entryFade( spep_1-6, 6, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255);

playSe( spep_1, SE_05);
speff = entryEffect(  spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen2 = entryEffectLife( spep_1, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_1,  shuchusen2,  0,  0);
setEffMoveKey(  spep_1+90,  shuchusen2,  0,  0);
setEffScaleKey(  spep_1,  shuchusen2,  1.6,  1.6);
setEffScaleKey(  spep_1+90,  shuchusen2,  1.6,  1.6);
setEffRotateKey(  spep_1,  shuchusen2,  0);
setEffRotateKey(  spep_1+90,  shuchusen2,  0);
setEffAlphaKey(  spep_1,  shuchusen2,  255);
setEffAlphaKey(  spep_1+90,  shuchusen2,  255);

entryFade(  spep_1 + 78,  10,  2,  8,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade


------------------------------------------------------
-- 放つ	
------------------------------------------------------

spep_2 = spep_1 + 90 ;

-- 放つ エフェクト
hanatsu = entryEffectLife( spep_2,  ef_003, 86, 0x100, -1, 0, 0, 0); --エフェクトの最後に無駄フレームがあるので尺を短くしてます
setEffMoveKey( spep_2,hanatsu,  0,  0);
setEffMoveKey( spep_2 + 86,hanatsu,  0,  0);

setEffScaleKey( spep_2, hanatsu, 1.0, 1.0);
setEffScaleKey( spep_2 + 86, hanatsu, 1.0, 1.0);

setEffAlphaKey( spep_2, hanatsu, 255);
setEffAlphaKey( spep_2 + 86, hanatsu, 255);

setEffRotateKey( spep_2, hanatsu, 0);
setEffRotateKey( spep_2 + 86, hanatsu, 0);

-- 集中線
shuchusen5 = entryEffectLife( spep_2 + 44,  906, 8, 0x100, -1, 0, 0, 0 ); 
setEffShake( spep_2 + 44, shuchusen5, 8, 25 );

setEffMoveKey( spep_2 + 44, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_2 + 52, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_2 + 44, shuchusen5, 1.2, 1.2 );
setEffScaleKey( spep_2 + 52, shuchusen5, 1.2, 1.2 );

setEffRotateKey( spep_2 + 44, shuchusen5, 0 );
setEffRotateKey( spep_2 + 52, shuchusen5, 0 );

setEffAlphaKey( spep_2 + 44, shuchusen5, 255 );
setEffAlphaKey( spep_2 + 52, shuchusen5, 255 );

--デススライサー待機 SE
--playSe( spep_2 + 5 , 1034 );  
--playSe( spep_2 + 20 , 1034 );  
--playSe( spep_2 + 35 , 1034 );  

seID0 = playSe( spep_2 + 48,  1007); -- 発射SE
seID00 = playSe( spep_2 + 60,  63);  --飛んでく音

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 74; --エンドフェイズのフレーム数を置き換える

    stopSe( SP_dodge - 12, seID0, 0 );
    stopSe( SP_dodge - 12, seID00, 0 );

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


------------------------------------------------------
-- デススライサー&ナビ
------------------------------------------------------

spep_3 = spep_2 + 86 ;

entryFade(  spep_3 - 8,  8,  2,  2,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --flaは0fでホワイトアウトが明けてますがチラつくので2fにしてます

-- デススライサー&ナビ エフェクト
hanatsu = entryEffectLife( spep_3,  ef_004a, 256, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_3,hanatsu,  0,  0);
setEffMoveKey( spep_3 + 256,hanatsu,  0,  0);

setEffScaleKey( spep_3, hanatsu, 1.0, 1.0);
setEffScaleKey( spep_3 + 256, hanatsu, 1.0, 1.0);

setEffAlphaKey( spep_3, hanatsu, 255);
setEffAlphaKey( spep_3 + 254, hanatsu, 255);
setEffAlphaKey( spep_3 + 255, hanatsu, 0); --次カットでエフェクト被せてるので保険でアルファ0に
setEffAlphaKey( spep_3 + 256, hanatsu, 0); --次カットでエフェクト被せてるので保険でアルファ0に

setEffRotateKey( spep_3, hanatsu, 0);
setEffRotateKey( spep_3 + 256, hanatsu, 0);

-- デススライサー&ナビ の背景 エフェクト
hanatsu_haikei = entryEffectLife( spep_3,  ef_004b, 188, 0x80, -1, 0, 0, 0);
setEffMoveKey( spep_3,hanatsu_haikei,  0,  0);
setEffMoveKey( spep_3 + 188,hanatsu_haikei,  0,  0);

setEffScaleKey( spep_3, hanatsu_haikei, 1.0, 1.0);
setEffScaleKey( spep_3 + 188, hanatsu_haikei, 1.0, 1.0);

setEffAlphaKey( spep_3, hanatsu_haikei, 255);
setEffAlphaKey( spep_3 + 188, hanatsu_haikei, 255);

setEffRotateKey( spep_3 , hanatsu_haikei, 0);
setEffRotateKey( spep_3 + 188, hanatsu_haikei, 0);

-- 集中線
shuchusen3 = entryEffectLife( spep_3 ,  906, 52, 0x80, -1, 0, 0, 0 ); 
setEffShake( spep_3, shuchusen3, 52, 25 );

setEffMoveKey( spep_3, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 52, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3, shuchusen3, 1.2, 1.2 );
setEffScaleKey( spep_3 + 52, shuchusen3, 1.2, 1.2 );

setEffRotateKey( spep_3, shuchusen3, 0 );
setEffRotateKey( spep_3 + 52, shuchusen3, 0 );

setEffAlphaKey( spep_3, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 52, shuchusen3, 255 );

-- 集中線
shuchusen4 = entryEffectLife( spep_3 + 74,  906, 180, 0x100, -1, 0, 0, 0 ); 
setEffShake( spep_3 + 74, shuchusen4, 180, 25 );

setEffMoveKey( spep_3 + 74, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_3 + 254, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_3 + 74, shuchusen4, 1.2, 1.2 );
setEffScaleKey( spep_3 + 254, shuchusen4, 1.2, 1.2 );

setEffRotateKey( spep_3 + 74, shuchusen4, 0 );
setEffRotateKey( spep_3 + 254, shuchusen4, 0 );

setEffAlphaKey( spep_3 + 74, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 254, shuchusen4, 255 );

-- 敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 - 2 + 60, 1, 0 );
changeAnime( spep_3 - 2 + 0, 1, 100 );
changeAnime( spep_3 - 2 + 30, 1, 117 );
changeAnime( spep_3 - 2 + 34, 1, 116 );

setMoveKey( spep_3 - 2 + 0, 1, 0, -0.1 , 0 );
setMoveKey( spep_3 - 2 + 2, 1, 0, -11 , 0 );
setMoveKey( spep_3 - 2 + 4, 1, 0, -20.8 , 0 );
setMoveKey( spep_3 - 2 + 6, 1, 0, -29.7 , 0 );
setMoveKey( spep_3 - 2 + 8, 1, 0, -37.6 , 0 );
setMoveKey( spep_3 - 2 + 10, 1, 0, -44.5 , 0 );
setMoveKey( spep_3 - 2 + 12, 1, 0, -50.5 , 0 );
setMoveKey( spep_3 - 2 + 14, 1, 0.1, -55.8 , 0 );
setMoveKey( spep_3 - 2 + 16, 1, 0, -60.6 , 0 );
setMoveKey( spep_3 - 2 + 18, 1, 0.1, -64.6 , 0 );
setMoveKey( spep_3 - 2 + 20, 1, 0, -68.4 , 0 );
setMoveKey( spep_3 - 2 + 22, 1, 0.1, -71.6 , 0 );
setMoveKey( spep_3 - 2 + 24, 1, 0, -74.3 , 0 );
setMoveKey( spep_3 - 2 + 26, 1, 0, -76.7 , 0 );
setMoveKey( spep_3 - 2 + 29, 1, 2.4, -78.5 , 0 );
setMoveKey( spep_3 - 2 + 30, 1, 0, -104.1 , 0 );
setMoveKey( spep_3 - 2 + 33, 1, -0.2, -114.1 , 0 );
setMoveKey( spep_3 - 2 + 34, 1, -2.1, -117.6 , 0 );
setMoveKey( spep_3 - 2 + 36, 1, -2.2, -121.1 , 0 );
setMoveKey( spep_3 - 2 + 38, 1, -2, -124 , 0 );
setMoveKey( spep_3 - 2 + 40, 1, -2.1, -127.8 , 0 );
setMoveKey( spep_3 - 2 + 42, 1, -2.2, -133 , 0 );
setMoveKey( spep_3 - 2 + 44, 1, -2.3, -139.8 , 0 );
setMoveKey( spep_3 - 2 + 46, 1, -3, -148.5 , 0 );
setMoveKey( spep_3 - 2 + 48, 1, -2.8, -95 , 0 );
setMoveKey( spep_3 - 2 + 50, 1, -3, -29.6 , 0 );
setMoveKey( spep_3 - 2 + 52, 1, -3.4, 50.8 , 0 );
setMoveKey( spep_3 - 2 + 54, 1, -3.8, 152.6 , 0 );
setMoveKey( spep_3 - 2 + 56, 1, -4.5, 290.7 , 0 );
setMoveKey( spep_3 - 2 + 58, 1, -6.1, 529.9 , 0 );
setMoveKey( spep_3 - 2 + 60, 1, -6.1, 529.9 , 0 );

setScaleKey( spep_3 - 2 + 0, 1, 0.4, 0.4 );
setScaleKey( spep_3 - 2 + 2, 1, 0.47, 0.47 );
setScaleKey( spep_3 - 2 + 4, 1, 0.54, 0.54 );
setScaleKey( spep_3 - 2 + 6, 1, 0.6, 0.6 );
setScaleKey( spep_3 - 2 + 8, 1, 0.65, 0.65 );
setScaleKey( spep_3 - 2 + 10, 1, 0.7, 0.7 );
setScaleKey( spep_3 - 2 + 12, 1, 0.74, 0.74 );
setScaleKey( spep_3 - 2 + 14, 1, 0.78, 0.78 );
setScaleKey( spep_3 - 2 + 16, 1, 0.81, 0.81 );
setScaleKey( spep_3 - 2 + 18, 1, 0.84, 0.84 );
setScaleKey( spep_3 - 2 + 20, 1, 0.86, 0.86 );
setScaleKey( spep_3 - 2 + 22, 1, 0.88, 0.88 );
setScaleKey( spep_3 - 2 + 24, 1, 0.9, 0.9 );
setScaleKey( spep_3 - 2 + 26, 1, 0.92, 0.92 );
setScaleKey( spep_3 - 2 + 29, 1, 0.93, 0.93 );
setScaleKey( spep_3 - 2 + 30, 1, 0.95, 0.95 );
setScaleKey( spep_3 - 2 + 33, 1, 0.97, 0.97 );
setScaleKey( spep_3 - 2 + 34, 1, 1.17, 1.17 );
setScaleKey( spep_3 - 2 + 36, 1, 1.19, 1.19 );
setScaleKey( spep_3 - 2 + 38, 1, 1.2, 1.2 );
setScaleKey( spep_3 - 2 + 40, 1, 1.26, 1.26 );
setScaleKey( spep_3 - 2 + 42, 1, 1.34, 1.34 );
setScaleKey( spep_3 - 2 + 44, 1, 1.44, 1.44 );
setScaleKey( spep_3 - 2 + 46, 1, 1.57, 1.57 );
setScaleKey( spep_3 - 2 + 48, 1, 1.73, 1.73 );
setScaleKey( spep_3 - 2 + 50, 1, 1.93, 1.93 );
setScaleKey( spep_3 - 2 + 52, 1, 2.17, 2.17 );
setScaleKey( spep_3 - 2 + 54, 1, 2.47, 2.47 );
setScaleKey( spep_3 - 2 + 56, 1, 2.88, 2.88 );
setScaleKey( spep_3 - 2 + 58, 1, 3.59, 3.59 );
setScaleKey( spep_3 - 2 + 60, 1, 3.59, 3.59 );

setRotateKey( spep_3 - 2 + 0, 1, 0 );
setRotateKey( spep_3 - 2 + 33, 1, 0 );
setRotateKey( spep_3 - 2 + 34, 1, -45 );
setRotateKey( spep_3 - 2 + 36, 1, -43.2 );
setRotateKey( spep_3 - 2 + 38, 1, -40.7 );
setRotateKey( spep_3 - 2 + 40, 1, -37.3 );
setRotateKey( spep_3 - 2 + 42, 1, -32.8 );
setRotateKey( spep_3 - 2 + 44, 1, -26.1 );
setRotateKey( spep_3 - 2 + 46, 1, -10 );
setRotateKey( spep_3 - 2 + 48, 1, -12 );
setRotateKey( spep_3 - 2 + 50, 1, -15.1 );
setRotateKey( spep_3 - 2 + 52, 1, -19.1 );
setRotateKey( spep_3 - 2 + 54, 1, -24.4 );
setRotateKey( spep_3 - 2 + 56, 1, -31.6 );
setRotateKey( spep_3 - 2 + 58, 1, -45 );
setRotateKey( spep_3 - 2 + 60, 1, -45 );

-- SE
stopSe( spep_3, seID0, 4 );
--seID1 = playSe( spep_3 ,  63);	--飛んでいく音

--stopSe( spep_3 + 60, seID1, 0 );
playSe( spep_3 + 60 , SE_04 );	--カットイン
playSe( spep_3 + 134 , 44 );  --カットイン後
playSe( spep_3 + 180, 9 ); 	--ナビ


------------------------------------------------------
-- デススライサー軌道変更
------------------------------------------------------

spep_4 = spep_3 + 254 ;

-- ホワイトフェード無し

-- デススライサー軌道変更 エフェクト
kidouhenkou = entryEffectLife( spep_4,  ef_005, 30, 0x100, -1, 0, 0, 0);	 --エフェクトの最後に無駄フレームがあるので尺を短くしてます
setEffMoveKey( spep_4,kidouhenkou,  0,  0);
setEffMoveKey( spep_4 + 30,kidouhenkou,  0,  0);

setEffScaleKey( spep_4, kidouhenkou, 1.0, 1.0);
setEffScaleKey( spep_4 + 30, kidouhenkou, 1.0, 1.0);

setEffAlphaKey( spep_4, kidouhenkou, 255);
setEffAlphaKey( spep_4 + 30, kidouhenkou, 255);

setEffRotateKey( spep_4, kidouhenkou, 0);
setEffRotateKey( spep_4 + 30, kidouhenkou, 0);

seID3 = playSe( spep_4 ,  8); -- 発射SE


------------------------------------------------------
-- 敵に迫る
------------------------------------------------------

spep_5 = spep_4 + 30 ;

entryFade(  spep_5 - 8,  8,  2,  8,  fcolor_r,  fcolor_g,  fcolor_b,  255);

-- 敵に迫る エフェクト
tekinisemaru = entryEffectLife( spep_5,  ef_006, 50, 0x80, -1, 0, 0, 0);	--エフェクトの最後に無駄フレームがあるので尺を短くしてます
setEffMoveKey( spep_5,tekinisemaru,  0,  0);
setEffMoveKey( spep_5 + 50,tekinisemaru,  0,  0);

setEffScaleKey( spep_5, tekinisemaru, 1.0, 1.0);
setEffScaleKey( spep_5 + 50, tekinisemaru, 1.0, 1.0);

setEffAlphaKey( spep_5, tekinisemaru, 255);
setEffAlphaKey( spep_5 + 50, tekinisemaru, 255);

setEffRotateKey( spep_5, tekinisemaru, 0);
setEffRotateKey( spep_5 + 50, tekinisemaru, 0);

-- 敵の動き
setDisp( spep_5 - 2 + 0, 1, 1 );
changeAnime( spep_5 - 2 + 0, 1, 3 );

setMoveKey( spep_5 - 2 + 0, 1, -409.8, -545.8 , 0 );
setMoveKey( spep_5 - 2 + 2, 1, -392.8, -524.4 , 0 );
setMoveKey( spep_5 - 2 + 4, 1, -375.7, -502.9 , 0 );
setMoveKey( spep_5 - 2 + 6, 1, -358.7, -481.5 , 0 );
setMoveKey( spep_5 - 2 + 8, 1, -341.7, -460.1 , 0 );
setMoveKey( spep_5 - 2 + 10, 1, -324.6, -438.6 , 0 );
setMoveKey( spep_5 - 2 + 12, 1, -307.6, -417.2 , 0 );
setMoveKey( spep_5 - 2 + 14, 1, -290.6, -395.7 , 0 );
setMoveKey( spep_5 - 2 + 16, 1, -273.5, -374.3 , 0 );
setMoveKey( spep_5 - 2 + 18, 1, -256.5, -352.9 , 0 );
setMoveKey( spep_5 - 2 + 20, 1, -239.5, -331.4 , 0 );
setMoveKey( spep_5 - 2 + 22, 1, -222.4, -310 , 0 );
setMoveKey( spep_5 - 2 + 24, 1, -205.4, -288.6 , 0 );
setMoveKey( spep_5 - 2 + 26, 1, -188.4, -267.1 , 0 );
setMoveKey( spep_5 - 2 + 28, 1, -171.4, -245.7 , 0 );
setMoveKey( spep_5 - 2 + 30, 1, -154.3, -224.3 , 0 );
setMoveKey( spep_5 - 2 + 32, 1, -137.8, -202.9 , 0 );
setMoveKey( spep_5 - 2 + 34, 1, -120.7, -179.9 , 0 );
setMoveKey( spep_5 - 2 + 36, 1, -101.6, -153.4 , 0 );
setMoveKey( spep_5 - 2 + 38, 1, -79.2, -121.9 , 0 );
setMoveKey( spep_5 - 2 + 40, 1, -52, -83.4 , 0 );
setMoveKey( spep_5 - 2 + 42, 1, -18.3, -35.6 , 0 );
setMoveKey( spep_5 - 2 + 44, 1, 23.9, 23.5 , 0 );
setMoveKey( spep_5 - 2 + 46, 1, 77.4, 98.6 , 0 );
setMoveKey( spep_5 - 2 + 48, 1, 148.4, 197.9 , 0 );
setMoveKey( spep_5 - 2 + 50, 1, 272, 373.3 , 0 );

setScaleKey( spep_5 - 2 + 0, 1, 0.6, 0.6 );
setScaleKey( spep_5 - 2 + 2, 1, 0.64, 0.64 );
setScaleKey( spep_5 - 2 + 4, 1, 0.67, 0.67 );
setScaleKey( spep_5 - 2 + 6, 1, 0.71, 0.71 );
setScaleKey( spep_5 - 2 + 8, 1, 0.74, 0.74 );
setScaleKey( spep_5 - 2 + 10, 1, 0.78, 0.78 );
setScaleKey( spep_5 - 2 + 12, 1, 0.82, 0.82 );
setScaleKey( spep_5 - 2 + 14, 1, 0.85, 0.85 );
setScaleKey( spep_5 - 2 + 16, 1, 0.89, 0.89 );
setScaleKey( spep_5 - 2 + 18, 1, 0.92, 0.92 );
setScaleKey( spep_5 - 2 + 20, 1, 0.96, 0.96 );
setScaleKey( spep_5 - 2 + 22, 1, 1, 1 );
setScaleKey( spep_5 - 2 + 24, 1, 1.03, 1.03 );
setScaleKey( spep_5 - 2 + 26, 1, 1.07, 1.07 );
setScaleKey( spep_5 - 2 + 28, 1, 1.1, 1.1 );
setScaleKey( spep_5 - 2 + 30, 1, 1.14, 1.14 );
setScaleKey( spep_5 - 2 + 32, 1, 1.2, 1.2 );
setScaleKey( spep_5 - 2 + 34, 1, 1.3, 1.3 );
setScaleKey( spep_5 - 2 + 36, 1, 1.43, 1.43 );
setScaleKey( spep_5 - 2 + 38, 1, 1.62, 1.62 );
setScaleKey( spep_5 - 2 + 40, 1, 1.85, 1.85 );
setScaleKey( spep_5 - 2 + 42, 1, 2.13, 2.13 );
setScaleKey( spep_5 - 2 + 44, 1, 2.46, 2.46 );
setScaleKey( spep_5 - 2 + 46, 1, 2.88, 2.88 );
setScaleKey( spep_5 - 2 + 48, 1, 3.44, 3.44 );
setScaleKey( spep_5 - 2 + 50, 1, 4.5, 4.5 );

setRotateKey( spep_5 - 2 + 0, 1, -35.1 );
setRotateKey( spep_5 - 2 + 50, 1, -35.1 );

-- SE
--stopSe( spep_5, seID3, 4 );
--seID4 = playSe( spep_5 ,  SE_07);	--飛んでいく音

------------------------------------------------------
-- 斬撃
------------------------------------------------------

spep_6 = spep_5 + 50 ;

entryFade(  spep_6 - 10,  8,  6,  8,  8,  8,  8,  255);

-- 敵の動き
setDisp( spep_6, 1, 0 );

-- 斬撃 エフェクト
zangeki = entryEffectLife( spep_6,  ef_007, 138, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_6,zangeki,  0,  0);
setEffMoveKey( spep_6 + 138,zangeki,  0,  0);

setEffScaleKey( spep_6, zangeki, 1.0, 1.0);
setEffScaleKey( spep_6 + 138, zangeki, 1.0, 1.0);

setEffAlphaKey( spep_6, zangeki, 255);
setEffAlphaKey( spep_6 + 138, zangeki, 255);

setEffRotateKey( spep_6, zangeki, 0);
setEffRotateKey( spep_6 + 138, zangeki, 0);

-- SE
--stopSe( spep_6, seID4, 30 );

playSe( spep_6 + 38 , 1032);  --斬撃音
--playSe( spep_6 + 46 , 1032);  --斬撃音
--playSe( spep_6 + 54 , 1032);  --斬撃音
--playSe( spep_6 + 62 , 1032);  --斬撃音
playSe( spep_6 + 70 , 1032);  --斬撃音
--playSe( spep_6 + 78 , 1032);  --斬撃音
--playSe( spep_6 + 86 , 1032);  --斬撃音
--playSe( spep_6 + 94 , 1032);  --斬撃音
--seID5 = playSe( spep_6 + 94 , 1032);  --斬撃音
--stopSe( spep_6 + 94, seID5, 2 );

playSe( spep_6 + 94 , 44);  --フィニッシュ音

------------------------------------------------------
-- 爆発
------------------------------------------------------

spep_7 = spep_6 + 138 ;

entryFade(  spep_7 - 8,  8,  2,  8,  fcolor_r,  fcolor_g,  fcolor_b,  255);

-- 爆発 エフェクト
bakuhatsu = entryEffect( spep_7,  ef_008, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_7,bakuhatsu,  0,  0);
setEffMoveKey( spep_7 + 116,bakuhatsu,  0,  0);

setEffScaleKey( spep_7, bakuhatsu, 1.0, 1.0);
setEffScaleKey( spep_7 + 116, bakuhatsu, 1.0, 1.0);

setEffAlphaKey( spep_7, bakuhatsu, 255);
setEffAlphaKey( spep_7 + 116, bakuhatsu, 255);

setEffRotateKey( spep_7, bakuhatsu, 0);
setEffRotateKey( spep_7 + 116, bakuhatsu, 0);

--SE
playSe( spep_7, SE_10);  --フィニッシュ音

-- 終始黒背景
entryFadeBg( spep_0, 0, spep_0 + spep_1 + spep_2 + spep_3 + spep_4 + spep_5 + spep_6 + spep_7 + 116, 0, 0, 0, 0, 255);

-- 黒フェード
dealDamage( spep_7 + 20);
entryFade( spep_7 + 106, 9, 10, 1, 8, 8, 8, 255);
endPhase(spep_7 + 116 );
else


---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------


--敵側の攻撃     --敵側の攻撃     --敵側の攻撃     --敵側の攻撃     --敵側の攻撃     --敵側の攻撃     


---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------


------------------------------------------------------
-- 構え  
------------------------------------------------------

spep_0 = 0 ;

-- 敵の動き
setDisp( spep_0, 1, 0 );

-- 構え エフェクト
kamae = entryEffectLife( spep_0,  ef_001r, 126, 0x80, -1, 0, 0, 0); --エフェクトの最後に無駄フレームがあるので尺を短くしてます
setEffMoveKey( spep_0,kamae,  0,  0);
setEffMoveKey( spep_0 + 126,kamae,  0,  0);

setEffScaleKey( spep_0, kamae, 1.0, 1.0);
setEffScaleKey( spep_0 + 126, kamae, 1.0, 1.0);

setEffAlphaKey( spep_0, kamae, 255);
setEffAlphaKey( spep_0 + 126, kamae, 255);

setEffRotateKey( spep_0, kamae, 0);
setEffRotateKey( spep_0 + 126, kamae, 0);

--デススライサー待機 SE
--[[
playSe( spep_0 + 5 , 1034 );  
playSe( spep_0 + 20 , 1034 );  
playSe( spep_0 + 35 , 1034 );  
]]
--v4.11調整
SE001 = playSe( spep_0 + 5 , 1034 ); 
stopSe(spep_0+23,SE001,6); 
SE002 = playSe( spep_0 + 20 , 1034 ); 
stopSe(spep_0+37,SE002,6); 
SE003 = playSe( spep_0 + 35 , 1034 );  

-- 集中線
shuchusen = entryEffectLife( spep_0 + 42,  906, 84, 0x80, -1, 0, 0, 0 ); 
setEffShake( spep_0 + 42, shuchusen, 84, 25 );

setEffMoveKey( spep_0 + 42, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 126, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_0 + 42, shuchusen, 1.4, 1.4 );
setEffScaleKey( spep_0 + 126, shuchusen, 1.4, 1.4 );

setEffRotateKey( spep_0 + 42, shuchusen, 0 );
setEffRotateKey( spep_0 + 126, shuchusen, 0 );

setEffAlphaKey( spep_0 + 42, shuchusen, 255 );
setEffAlphaKey( spep_0 + 126, shuchusen, 255 );

--[[

-- **  顔カットイン　** --
speff = entryEffect( spep_0 + 42, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 42, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

]]

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 54,  190006, 72, 0x100, -1, 0, 70.9, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 54, ctgogo, 72, 10 );

setEffMoveKey( spep_0 + 54, ctgogo, 0,  520, 0  );
setEffMoveKey( spep_0 + 54 + 72, ctgogo, 0,  520, 0  );

setEffScaleKey( spep_0 + 54, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 54 + 64, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 54 + 66, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_0 + 54 + 68, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_0 + 54 + 70, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_0 + 54 + 72, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_0 + 54, ctgogo, 0 );
setEffRotateKey( spep_0 + 54 + 72, ctgogo, 0 );

setEffAlphaKey( spep_0 + 54, ctgogo, 0 );
setEffAlphaKey( spep_0 + 54 + 1, ctgogo, 255 );
setEffAlphaKey( spep_0 + 54 + 2, ctgogo, 255 );
setEffAlphaKey( spep_0 + 54 + 72, ctgogo, 255 );

--SE
playSe( spep_0 + 54 , SE_04 );  --ゴゴゴ

-----------------------------------------------s-------
-- カードカットイン
------------------------------------------------------

spep_1 = spep_0 + 126 ;

--白フラッシュ
entryFade( spep_1-6, 6, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255);

playSe( spep_1, SE_05);
speff = entryEffect(  spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen2 = entryEffectLife( spep_1, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_1,  shuchusen2,  0,  0);
setEffMoveKey(  spep_1+90,  shuchusen2,  0,  0);
setEffScaleKey(  spep_1,  shuchusen2,  1.6,  1.6);
setEffScaleKey(  spep_1+90,  shuchusen2,  1.6,  1.6);
setEffRotateKey(  spep_1,  shuchusen2,  0);
setEffRotateKey(  spep_1+90,  shuchusen2,  0);
setEffAlphaKey(  spep_1,  shuchusen2,  255);
setEffAlphaKey(  spep_1+90,  shuchusen2,  255);

entryFade(  spep_1 + 78,  10,  2,  8,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade


------------------------------------------------------
-- 放つ	
------------------------------------------------------

spep_2 = spep_1 + 90 ;

-- 放つ エフェクト
hanatsu = entryEffectLife( spep_2,  ef_003, 86, 0x100, -1, 0, 0, 0); --エフェクトの最後に無駄フレームがあるので尺を短くしてます
setEffMoveKey( spep_2,hanatsu,  0,  0);
setEffMoveKey( spep_2 + 86,hanatsu,  0,  0);

setEffScaleKey( spep_2, hanatsu, 1.0, 1.0);
setEffScaleKey( spep_2 + 86, hanatsu, 1.0, 1.0);

setEffAlphaKey( spep_2, hanatsu, 255);
setEffAlphaKey( spep_2 + 86, hanatsu, 255);

setEffRotateKey( spep_2, hanatsu, 0);
setEffRotateKey( spep_2 + 86, hanatsu, 0);

-- 集中線
shuchusen5 = entryEffectLife( spep_2 + 44,  906, 8, 0x100, -1, 0, 0, 0 ); 
setEffShake( spep_2 + 44, shuchusen5, 8, 25 );

setEffMoveKey( spep_2 + 44, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_2 + 52, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_2 + 44, shuchusen5, 1.2, 1.2 );
setEffScaleKey( spep_2 + 52, shuchusen5, 1.2, 1.2 );

setEffRotateKey( spep_2 + 44, shuchusen5, 0 );
setEffRotateKey( spep_2 + 52, shuchusen5, 0 );

setEffAlphaKey( spep_2 + 44, shuchusen5, 255 );
setEffAlphaKey( spep_2 + 52, shuchusen5, 255 );

--デススライサー待機 SE
--playSe( spep_2 + 5 , 1034 );  
--playSe( spep_2 + 20 , 1034 );  
--playSe( spep_2 + 35 , 1034 );  

seID0 = playSe( spep_2 + 48, 1007); -- 発射SE
seID00 = playSe( spep_2 + 60, 63); --飛んでく音

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 74; --エンドフェイズのフレーム数を置き換える

    stopSe( SP_dodge - 12, seID0, 0 );
    stopSe( SP_dodge - 12, seID00, 0 );

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


------------------------------------------------------
-- デススライサー&ナビ
------------------------------------------------------

spep_3 = spep_2 + 86 ;

entryFade(  spep_3 - 8,  8,  2,  2,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --flaは0fでホワイトアウトが明けてますがチラつくので2fにしてます

-- デススライサー&ナビ エフェクト
hanatsu = entryEffectLife( spep_3,  ef_004a, 256, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_3,hanatsu,  0,  0);
setEffMoveKey( spep_3 + 256,hanatsu,  0,  0);

setEffScaleKey( spep_3, hanatsu, -1.0, 1.0);
setEffScaleKey( spep_3 + 256, hanatsu, -1.0, 1.0);

setEffAlphaKey( spep_3, hanatsu, 255);
setEffAlphaKey( spep_3 + 254, hanatsu, 255);
setEffAlphaKey( spep_3 + 255, hanatsu, 0); --次カットでエフェクト被せてるので保険でアルファ0に
setEffAlphaKey( spep_3 + 256, hanatsu, 0); --次カットでエフェクト被せてるので保険でアルファ0に

setEffRotateKey( spep_3, hanatsu, 0);
setEffRotateKey( spep_3 + 256, hanatsu, 0);

-- デススライサー&ナビ の背景 エフェクト
hanatsu_haikei = entryEffectLife( spep_3,  ef_004b, 188, 0x80, -1, 0, 0, 0);
setEffMoveKey( spep_3,hanatsu_haikei,  0,  0);
setEffMoveKey( spep_3 + 188,hanatsu_haikei,  0,  0);

setEffScaleKey( spep_3, hanatsu_haikei, -1.0, 1.0);
setEffScaleKey( spep_3 + 188, hanatsu_haikei, -1.0, 1.0);

setEffAlphaKey( spep_3, hanatsu_haikei, 255);
setEffAlphaKey( spep_3 + 188, hanatsu_haikei, 255);

setEffRotateKey( spep_3 , hanatsu_haikei, 0);
setEffRotateKey( spep_3 + 188, hanatsu_haikei, 0);

-- 集中線
shuchusen3 = entryEffectLife( spep_3 ,  906, 52, 0x80, -1, 0, 0, 0 ); 
setEffShake( spep_3, shuchusen3, 52, 25 );

setEffMoveKey( spep_3, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 52, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3, shuchusen3, 1.2, 1.2 );
setEffScaleKey( spep_3 + 52, shuchusen3, 1.2, 1.2 );

setEffRotateKey( spep_3, shuchusen3, 0 );
setEffRotateKey( spep_3 + 52, shuchusen3, 0 );

setEffAlphaKey( spep_3, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 52, shuchusen3, 255 );

-- 集中線
shuchusen4 = entryEffectLife( spep_3 + 74,  906, 180, 0x100, -1, 0, 0, 0 ); 
setEffShake( spep_3 + 74, shuchusen4, 180, 25 );

setEffMoveKey( spep_3 + 74, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_3 + 254, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_3 + 74, shuchusen4, 1.2, 1.2 );
setEffScaleKey( spep_3 + 254, shuchusen4, 1.2, 1.2 );

setEffRotateKey( spep_3 + 74, shuchusen4, 0 );
setEffRotateKey( spep_3 + 254, shuchusen4, 0 );

setEffAlphaKey( spep_3 + 74, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 254, shuchusen4, 255 );

-- 敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 - 2 + 60, 1, 0 );
changeAnime( spep_3 - 2 + 0, 1, 100 );
changeAnime( spep_3 - 2 + 30, 1, 117 );
changeAnime( spep_3 - 2 + 34, 1, 116 );

setMoveKey( spep_3 - 2 + 0, 1, 0, -0.1 , 0 );
setMoveKey( spep_3 - 2 + 2, 1, 0, -11 , 0 );
setMoveKey( spep_3 - 2 + 4, 1, 0, -20.8 , 0 );
setMoveKey( spep_3 - 2 + 6, 1, 0, -29.7 , 0 );
setMoveKey( spep_3 - 2 + 8, 1, 0, -37.6 , 0 );
setMoveKey( spep_3 - 2 + 10, 1, 0, -44.5 , 0 );
setMoveKey( spep_3 - 2 + 12, 1, 0, -50.5 , 0 );
setMoveKey( spep_3 - 2 + 14, 1, 0.1, -55.8 , 0 );
setMoveKey( spep_3 - 2 + 16, 1, 0, -60.6 , 0 );
setMoveKey( spep_3 - 2 + 18, 1, 0.1, -64.6 , 0 );
setMoveKey( spep_3 - 2 + 20, 1, 0, -68.4 , 0 );
setMoveKey( spep_3 - 2 + 22, 1, 0.1, -71.6 , 0 );
setMoveKey( spep_3 - 2 + 24, 1, 0, -74.3 , 0 );
setMoveKey( spep_3 - 2 + 26, 1, 0, -76.7 , 0 );
setMoveKey( spep_3 - 2 + 29, 1, 2.4, -78.5 , 0 );
setMoveKey( spep_3 - 2 + 30, 1, 0, -104.1 , 0 );
setMoveKey( spep_3 - 2 + 33, 1, -0.2, -114.1 , 0 );
setMoveKey( spep_3 - 2 + 34, 1, -2.1, -117.6 , 0 );
setMoveKey( spep_3 - 2 + 36, 1, -2.2, -121.1 , 0 );
setMoveKey( spep_3 - 2 + 38, 1, -2, -124 , 0 );
setMoveKey( spep_3 - 2 + 40, 1, -2.1, -127.8 , 0 );
setMoveKey( spep_3 - 2 + 42, 1, -2.2, -133 , 0 );
setMoveKey( spep_3 - 2 + 44, 1, -2.3, -139.8 , 0 );
setMoveKey( spep_3 - 2 + 46, 1, -3, -148.5 , 0 );
setMoveKey( spep_3 - 2 + 48, 1, -2.8, -95 , 0 );
setMoveKey( spep_3 - 2 + 50, 1, -3, -29.6 , 0 );
setMoveKey( spep_3 - 2 + 52, 1, -3.4, 50.8 , 0 );
setMoveKey( spep_3 - 2 + 54, 1, -3.8, 152.6 , 0 );
setMoveKey( spep_3 - 2 + 56, 1, -4.5, 290.7 , 0 );
setMoveKey( spep_3 - 2 + 58, 1, -6.1, 529.9 , 0 );
setMoveKey( spep_3 - 2 + 60, 1, -6.1, 529.9 , 0 );

setScaleKey( spep_3 - 2 + 0, 1, 0.4, 0.4 );
setScaleKey( spep_3 - 2 + 2, 1, 0.47, 0.47 );
setScaleKey( spep_3 - 2 + 4, 1, 0.54, 0.54 );
setScaleKey( spep_3 - 2 + 6, 1, 0.6, 0.6 );
setScaleKey( spep_3 - 2 + 8, 1, 0.65, 0.65 );
setScaleKey( spep_3 - 2 + 10, 1, 0.7, 0.7 );
setScaleKey( spep_3 - 2 + 12, 1, 0.74, 0.74 );
setScaleKey( spep_3 - 2 + 14, 1, 0.78, 0.78 );
setScaleKey( spep_3 - 2 + 16, 1, 0.81, 0.81 );
setScaleKey( spep_3 - 2 + 18, 1, 0.84, 0.84 );
setScaleKey( spep_3 - 2 + 20, 1, 0.86, 0.86 );
setScaleKey( spep_3 - 2 + 22, 1, 0.88, 0.88 );
setScaleKey( spep_3 - 2 + 24, 1, 0.9, 0.9 );
setScaleKey( spep_3 - 2 + 26, 1, 0.92, 0.92 );
setScaleKey( spep_3 - 2 + 29, 1, 0.93, 0.93 );
setScaleKey( spep_3 - 2 + 30, 1, 0.95, 0.95 );
setScaleKey( spep_3 - 2 + 33, 1, 0.97, 0.97 );
setScaleKey( spep_3 - 2 + 34, 1, 1.17, 1.17 );
setScaleKey( spep_3 - 2 + 36, 1, 1.19, 1.19 );
setScaleKey( spep_3 - 2 + 38, 1, 1.2, 1.2 );
setScaleKey( spep_3 - 2 + 40, 1, 1.26, 1.26 );
setScaleKey( spep_3 - 2 + 42, 1, 1.34, 1.34 );
setScaleKey( spep_3 - 2 + 44, 1, 1.44, 1.44 );
setScaleKey( spep_3 - 2 + 46, 1, 1.57, 1.57 );
setScaleKey( spep_3 - 2 + 48, 1, 1.73, 1.73 );
setScaleKey( spep_3 - 2 + 50, 1, 1.93, 1.93 );
setScaleKey( spep_3 - 2 + 52, 1, 2.17, 2.17 );
setScaleKey( spep_3 - 2 + 54, 1, 2.47, 2.47 );
setScaleKey( spep_3 - 2 + 56, 1, 2.88, 2.88 );
setScaleKey( spep_3 - 2 + 58, 1, 3.59, 3.59 );
setScaleKey( spep_3 - 2 + 60, 1, 3.59, 3.59 );

setRotateKey( spep_3 - 2 + 0, 1, 0 );
setRotateKey( spep_3 - 2 + 33, 1, 0 );
setRotateKey( spep_3 - 2 + 34, 1, -45 );
setRotateKey( spep_3 - 2 + 36, 1, -43.2 );
setRotateKey( spep_3 - 2 + 38, 1, -40.7 );
setRotateKey( spep_3 - 2 + 40, 1, -37.3 );
setRotateKey( spep_3 - 2 + 42, 1, -32.8 );
setRotateKey( spep_3 - 2 + 44, 1, -26.1 );
setRotateKey( spep_3 - 2 + 46, 1, -10 );
setRotateKey( spep_3 - 2 + 48, 1, -12 );
setRotateKey( spep_3 - 2 + 50, 1, -15.1 );
setRotateKey( spep_3 - 2 + 52, 1, -19.1 );
setRotateKey( spep_3 - 2 + 54, 1, -24.4 );
setRotateKey( spep_3 - 2 + 56, 1, -31.6 );
setRotateKey( spep_3 - 2 + 58, 1, -45 );
setRotateKey( spep_3 - 2 + 60, 1, -45 );

-- SE
stopSe( spep_3, seID0, 4 );
--seID1 = playSe( spep_3 , 63); --飛んでいく音

--stopSe( spep_3 + 60, seID1, 0 );
playSe( spep_3 + 60 , SE_04 );	--カットイン
playSe( spep_3 + 134 , 44 ); --カットイン後
playSe( spep_3 + 180, 9 ); 	--ナビ


------------------------------------------------------
-- デススライサー軌道変更
------------------------------------------------------

spep_4 = spep_3 + 254 ;

-- ホワイトフェード無し

-- デススライサー軌道変更 エフェクト
kidouhenkou = entryEffectLife( spep_4,  ef_005, 30, 0x100, -1, 0, 0, 0);	 --エフェクトの最後に無駄フレームがあるので尺を短くしてます
setEffMoveKey( spep_4,kidouhenkou,  0,  0);
setEffMoveKey( spep_4 + 30,kidouhenkou,  0,  0);

setEffScaleKey( spep_4, kidouhenkou, 1.0, 1.0);
setEffScaleKey( spep_4 + 30, kidouhenkou, 1.0, 1.0);

setEffAlphaKey( spep_4, kidouhenkou, 255);
setEffAlphaKey( spep_4 + 30, kidouhenkou, 255);

setEffRotateKey( spep_4, kidouhenkou, 0);
setEffRotateKey( spep_4 + 30, kidouhenkou, 0);

seID3 = playSe( spep_4 ,  8); -- 発射SE


------------------------------------------------------
-- 敵に迫る
------------------------------------------------------

spep_5 = spep_4 + 30 ;

entryFade(  spep_5 - 8,  8,  2,  8,  fcolor_r,  fcolor_g,  fcolor_b,  255);

-- 敵に迫る エフェクト
tekinisemaru = entryEffectLife( spep_5,  ef_006, 50, 0x80, -1, 0, 0, 0);	--エフェクトの最後に無駄フレームがあるので尺を短くしてます
setEffMoveKey( spep_5,tekinisemaru,  0,  0);
setEffMoveKey( spep_5 + 50,tekinisemaru,  0,  0);

setEffScaleKey( spep_5, tekinisemaru, 1.0, 1.0);
setEffScaleKey( spep_5 + 50, tekinisemaru, 1.0, 1.0);

setEffAlphaKey( spep_5, tekinisemaru, 255);
setEffAlphaKey( spep_5 + 50, tekinisemaru, 255);

setEffRotateKey( spep_5, tekinisemaru, 0);
setEffRotateKey( spep_5 + 50, tekinisemaru, 0);

-- 敵の動き
setDisp( spep_5 - 2 + 0, 1, 1 );
changeAnime( spep_5 - 2 + 0, 1, 3 );

setMoveKey( spep_5 - 2 + 0, 1, -409.8, -545.8 , 0 );
setMoveKey( spep_5 - 2 + 2, 1, -392.8, -524.4 , 0 );
setMoveKey( spep_5 - 2 + 4, 1, -375.7, -502.9 , 0 );
setMoveKey( spep_5 - 2 + 6, 1, -358.7, -481.5 , 0 );
setMoveKey( spep_5 - 2 + 8, 1, -341.7, -460.1 , 0 );
setMoveKey( spep_5 - 2 + 10, 1, -324.6, -438.6 , 0 );
setMoveKey( spep_5 - 2 + 12, 1, -307.6, -417.2 , 0 );
setMoveKey( spep_5 - 2 + 14, 1, -290.6, -395.7 , 0 );
setMoveKey( spep_5 - 2 + 16, 1, -273.5, -374.3 , 0 );
setMoveKey( spep_5 - 2 + 18, 1, -256.5, -352.9 , 0 );
setMoveKey( spep_5 - 2 + 20, 1, -239.5, -331.4 , 0 );
setMoveKey( spep_5 - 2 + 22, 1, -222.4, -310 , 0 );
setMoveKey( spep_5 - 2 + 24, 1, -205.4, -288.6 , 0 );
setMoveKey( spep_5 - 2 + 26, 1, -188.4, -267.1 , 0 );
setMoveKey( spep_5 - 2 + 28, 1, -171.4, -245.7 , 0 );
setMoveKey( spep_5 - 2 + 30, 1, -154.3, -224.3 , 0 );
setMoveKey( spep_5 - 2 + 32, 1, -137.8, -202.9 , 0 );
setMoveKey( spep_5 - 2 + 34, 1, -120.7, -179.9 , 0 );
setMoveKey( spep_5 - 2 + 36, 1, -101.6, -153.4 , 0 );
setMoveKey( spep_5 - 2 + 38, 1, -79.2, -121.9 , 0 );
setMoveKey( spep_5 - 2 + 40, 1, -52, -83.4 , 0 );
setMoveKey( spep_5 - 2 + 42, 1, -18.3, -35.6 , 0 );
setMoveKey( spep_5 - 2 + 44, 1, 23.9, 23.5 , 0 );
setMoveKey( spep_5 - 2 + 46, 1, 77.4, 98.6 , 0 );
setMoveKey( spep_5 - 2 + 48, 1, 148.4, 197.9 , 0 );
setMoveKey( spep_5 - 2 + 50, 1, 272, 373.3 , 0 );

setScaleKey( spep_5 - 2 + 0, 1, 0.6, 0.6 );
setScaleKey( spep_5 - 2 + 2, 1, 0.64, 0.64 );
setScaleKey( spep_5 - 2 + 4, 1, 0.67, 0.67 );
setScaleKey( spep_5 - 2 + 6, 1, 0.71, 0.71 );
setScaleKey( spep_5 - 2 + 8, 1, 0.74, 0.74 );
setScaleKey( spep_5 - 2 + 10, 1, 0.78, 0.78 );
setScaleKey( spep_5 - 2 + 12, 1, 0.82, 0.82 );
setScaleKey( spep_5 - 2 + 14, 1, 0.85, 0.85 );
setScaleKey( spep_5 - 2 + 16, 1, 0.89, 0.89 );
setScaleKey( spep_5 - 2 + 18, 1, 0.92, 0.92 );
setScaleKey( spep_5 - 2 + 20, 1, 0.96, 0.96 );
setScaleKey( spep_5 - 2 + 22, 1, 1, 1 );
setScaleKey( spep_5 - 2 + 24, 1, 1.03, 1.03 );
setScaleKey( spep_5 - 2 + 26, 1, 1.07, 1.07 );
setScaleKey( spep_5 - 2 + 28, 1, 1.1, 1.1 );
setScaleKey( spep_5 - 2 + 30, 1, 1.14, 1.14 );
setScaleKey( spep_5 - 2 + 32, 1, 1.2, 1.2 );
setScaleKey( spep_5 - 2 + 34, 1, 1.3, 1.3 );
setScaleKey( spep_5 - 2 + 36, 1, 1.43, 1.43 );
setScaleKey( spep_5 - 2 + 38, 1, 1.62, 1.62 );
setScaleKey( spep_5 - 2 + 40, 1, 1.85, 1.85 );
setScaleKey( spep_5 - 2 + 42, 1, 2.13, 2.13 );
setScaleKey( spep_5 - 2 + 44, 1, 2.46, 2.46 );
setScaleKey( spep_5 - 2 + 46, 1, 2.88, 2.88 );
setScaleKey( spep_5 - 2 + 48, 1, 3.44, 3.44 );
setScaleKey( spep_5 - 2 + 50, 1, 4.5, 4.5 );

setRotateKey( spep_5 - 2 + 0, 1, -35.1 );
setRotateKey( spep_5 - 2 + 50, 1, -35.1 );

-- SE
stopSe( spep_5, seID3, 4 );
seID4 = playSe( spep_5 ,  SE_07);	--飛んでいく音

------------------------------------------------------
-- 斬撃
------------------------------------------------------

spep_6 = spep_5 + 50 ;

entryFade(  spep_6 - 10,  8,  6,  8,  8,  8,  8,  255);

-- 敵の動き
setDisp( spep_6, 1, 0 );

-- 斬撃 エフェクト
zangeki = entryEffectLife( spep_6,  ef_007, 138, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_6,zangeki,  0,  0);
setEffMoveKey( spep_6 + 138,zangeki,  0,  0);

setEffScaleKey( spep_6, zangeki, 1.0, 1.0);
setEffScaleKey( spep_6 + 138, zangeki, 1.0, 1.0);

setEffAlphaKey( spep_6, zangeki, 255);
setEffAlphaKey( spep_6 + 138, zangeki, 255);

setEffRotateKey( spep_6, zangeki, 0);
setEffRotateKey( spep_6 + 138, zangeki, 0);

-- SE
--stopSe( spep_6, seID4, 30 );

playSe( spep_6 + 38 , 1032);  --斬撃音
--playSe( spep_6 + 46 , 1032);  --斬撃音
--playSe( spep_6 + 54 , 1032);  --斬撃音
--playSe( spep_6 + 62 , 1032);  --斬撃音
playSe( spep_6 + 70 , 1032);  --斬撃音
--playSe( spep_6 + 78 , 1032);  --斬撃音
--playSe( spep_6 + 86 , 1032);  --斬撃音
--playSe( spep_6 + 94 , 1032);  --斬撃音
--seID5 = playSe( spep_6 + 94 , 1032);  --斬撃音
--stopSe( spep_6 + 94, seID5, 2 );

playSe( spep_6 + 94 , 44);  --フィニッシュ音

------------------------------------------------------
-- 爆発
------------------------------------------------------

spep_7 = spep_6 + 138 ;

entryFade(  spep_7 - 8,  8,  2,  8,  fcolor_r,  fcolor_g,  fcolor_b,  255);

-- 爆発 エフェクト
bakuhatsu = entryEffect( spep_7,  ef_008, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_7,bakuhatsu,  0,  0);
setEffMoveKey( spep_7 + 116,bakuhatsu,  0,  0);

setEffScaleKey( spep_7, bakuhatsu, 1.0, 1.0);
setEffScaleKey( spep_7 + 116, bakuhatsu, 1.0, 1.0);

setEffAlphaKey( spep_7, bakuhatsu, 255);
setEffAlphaKey( spep_7 + 116, bakuhatsu, 255);

setEffRotateKey( spep_7, bakuhatsu, 0);
setEffRotateKey( spep_7 + 116, bakuhatsu, 0);

--SE
playSe( spep_7, SE_10);  --フィニッシュ音

-- 終始黒背景
entryFadeBg( spep_0, 0, spep_0 + spep_1 + spep_2 + spep_3 + spep_4 + spep_5 + spep_6 + spep_7 + 116, 0, 0, 0, 0, 255);

-- 黒フェード
dealDamage( spep_7 + 20);
entryFade( spep_7 + 106, 9, 10, 1, 8, 8, 8, 255);
endPhase(spep_7 + 116 );
end