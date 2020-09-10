--1015000:孫悟飯(幼年期)_魔閃光
--sp_effect_a1_00191

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
SP_01=	154232	;--	導入、悟飯叫び
SP_02=	154233	;--	突進、蹴り：キャラ＆背景
SP_03=	154234	;--	瞬間移動、殴り：キャラ
SP_04=	154235	;--	瞬間移動、殴り：エフェクト
SP_05=	154236	;--	瞬間移動、殴り：背景
SP_06=	154237	;--	敵地面激突
SP_07=	154238	;--	気弾発射：キャラ
SP_08=	154239	;--	気弾発射：背景
SP_09=	154240	;--	気弾着弾
SP_10=	154241	;--	突進、蹴り：エフェクト

--敵側
SP_01x=	154232	;--	導入、悟飯叫び	
SP_02x=	154233	;--	突進、蹴り：キャラ＆背景	
SP_03x=	154242	;--	瞬間移動、殴り：キャラ	(敵)
SP_04x=	154235	;--	瞬間移動、殴り：エフェクト	
SP_05x=	154236	;--	瞬間移動、殴り：背景	
SP_06x=	154237	;--	敵地面激突	
SP_07x=	154238	;--	気弾発射：キャラ	
SP_08x=	154239	;--	気弾発射：背景	
SP_09x=	154243	;--	気弾着弾	
SP_10x=	154241	;--	突進、蹴り：エフェクト	(敵)
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

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
--導入、悟飯叫び
------------------------------------------------------
spep_0 = 0;
-- ** エフェクト等 ** --
roar = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_0 + 0, roar, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, roar, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, roar, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, roar, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, roar, 0 );
setEffRotateKey( spep_0 + 96, roar, 0 );
setEffAlphaKey( spep_0 + 0, roar, 255 );
setEffAlphaKey( spep_0 + 96, roar, 255 );

spep_x = spep_0 + 2;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 120.9, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, 120.9, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 120.9, 515.5 , 0 );

setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );

setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 音 ** --
playSe( spep_0 + 0, 8 );  --登場
playSe( spep_x + 16, 1018 );  --ごごご

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
entryFade( spep_0 + 92, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 96;

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

--白フェード
entryFade( spep_1 + 82, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
--突進、蹴り：キャラ＆背景
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_2 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 80, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 80, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_f, 0 );
setEffRotateKey( spep_2 + 80, kick_f, 0 );
setEffAlphaKey( spep_2 + 0, kick_f, 255 );
setEffAlphaKey( spep_2 + 80, kick_f, 255 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 80, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 80, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_b, 0 );
setEffRotateKey( spep_2 + 80, kick_b, 0 );
setEffAlphaKey( spep_2 + 0, kick_b, 255 );
setEffAlphaKey( spep_2 + 80, kick_b, 255 );

--敵の動き
setDisp( spep_2  + 0, 1, 1 );

changeAnime( spep_2  + 0, 1, 102 );

setMoveKey( spep_2  + 0, 1, 349.3, -353.6 , 0 );
--setMoveKey( spep_2 -3 + 2, 1, 315.1, -303.6 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 287.1, -262.6 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 264.6, -229.9 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 247.2, -204.3 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 234, -185.1 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 224.6, -171.4 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 218.3, -162.2 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 214.5, -156.6 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 212.5, -153.7 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 211.8, -152.6 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 211.7, -152.5 , 0 );
setMoveKey( spep_2  + 20, 1, 211.7, -152.5 , 0 );


setScaleKey( spep_2  + 0, 1, 4.27, 4.27 );
--setScaleKey( spep_2 -3 + 2, 1, 4.23, 4.23 );
setScaleKey( spep_2 -3 + 4, 1, 4.19, 4.19 );
setScaleKey( spep_2 -3 + 6, 1, 4.17, 4.17 );
setScaleKey( spep_2 -3 + 8, 1, 4.14, 4.14 );
setScaleKey( spep_2 -3 + 10, 1, 4.13, 4.13 );
setScaleKey( spep_2 -3 + 12, 1, 4.12, 4.12 );
setScaleKey( spep_2 -3 + 14, 1, 4.11, 4.11 );
setScaleKey( spep_2 -3 + 16, 1, 4.1, 4.1 );
setScaleKey( spep_2  + 20, 1, 4.1, 4.1 );

setRotateKey( spep_2 -3 + 0, 1, 0 );
setRotateKey( spep_2  + 20, 1, 0 );

-- ** 音 ** --
SE0 = playSe( spep_2 + 0 -20, 1072 );  --迫る
setSeVolume( spep_2 + 0, 1072, 140 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 20; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    
    pauseAll( SP_dodge, 67 );
    
    --敵の固定
    setMoveKey( SP_dodge+ 10, 1, 211.7, -152.5 , 0 );
    setScaleKey( SP_dodge+ 10, 1, 4.1, 4.1 );
    setRotateKey( SP_dodge+ 10, 1, 0 );

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

--続きの動き
setDisp( spep_2  + 60, 1, 0 );

changeAnime( spep_2 -3 + 32, 1, 107 );

setMoveKey( spep_2 -3 + 31, 1, 211.7, -152.5 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 117.8, -246.4 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 323, -414 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 348.7, -691 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 550.4, -913.2 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 653.3, -951.3 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 690.3, -1089 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 806.8, -1154.5 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 868.3, -1196.7 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 899.8, -1271.2 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 928.4, -1307 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 947.6, -1331.1 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 959.2, -1345.7 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 965.1, -1353.1 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 967.3, -1355.9 , 0 );
setMoveKey( spep_2  + 60, 1, 967.7, -1356.3 , 0 );

setScaleKey( spep_2 -3 + 31, 1, 4.1, 4.1 );
setScaleKey( spep_2 -3 + 32, 1, 1.42, 1.42 );
setScaleKey( spep_2 -3 + 34, 1, 1.64, 1.64 );
setScaleKey( spep_2 -3 + 36, 1, 1.82, 1.82 );
setScaleKey( spep_2 -3 + 38, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 40, 1, 2.11, 2.11 );
setScaleKey( spep_2 -3 + 42, 1, 2.21, 2.21 );
setScaleKey( spep_2 -3 + 44, 1, 2.3, 2.3 );
setScaleKey( spep_2 -3 + 46, 1, 2.37, 2.37 );
setScaleKey( spep_2 -3 + 48, 1, 2.41, 2.41 );
setScaleKey( spep_2 -3 + 50, 1, 2.45, 2.45 );
setScaleKey( spep_2 -3 + 52, 1, 2.47, 2.47 );
setScaleKey( spep_2 -3 + 54, 1, 2.49, 2.49 );
setScaleKey( spep_2 -3 + 56, 1, 2.5, 2.5 );
setScaleKey( spep_2  + 60, 1, 2.5, 2.5 );

setRotateKey( spep_2 -3 + 31, 1, 0 );
setRotateKey( spep_2 -3 + 32, 1, 4.8 );
setRotateKey( spep_2  + 60, 1, 4.8 );

--集中線
shuchusen1 = entryEffectLife( spep_2 -3 + 32,  906, 46, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 -3 + 32, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 -3 + 78, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 -3 + 32, shuchusen1, 1.58, 1.55 );
setEffScaleKey( spep_2 -3 + 78, shuchusen1, 1.58, 1.55 );

setEffRotateKey( spep_2 -3 + 32, shuchusen1, 180 );
setEffRotateKey( spep_2 -3 + 78, shuchusen1, 180 );

setEffAlphaKey( spep_2 -3 + 32, shuchusen1, 255 );
setEffAlphaKey( spep_2 -3 + 78, shuchusen1, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_2 -3 + 32,  10020, 22, 0x100, -1, 0, 111.7, 366.7 );--バキッ

setEffMoveKey( spep_2 -3 + 32, ctbaki, 111.7, 366.7 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctbaki, 134.5, 396.8 , 0 );
setEffMoveKey( spep_2 -3 + 36, ctbaki, 153.1, 419 , 0 );
setEffMoveKey( spep_2 -3 + 38, ctbaki, 139.8, 415.1 , 0 );
setEffMoveKey( spep_2 -3 + 40, ctbaki, 134.5, 396.8 , 0 );
setEffMoveKey( spep_2 -3 + 42, ctbaki, 153.1, 419 , 0 );
setEffMoveKey( spep_2 -3 + 44, ctbaki, 139.8, 415.1 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctbaki, 134.5, 396.8 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctbaki, 153.1, 419 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctbaki, 165.6, 444 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctbaki, 152.3, 440.1 , 0 );

setEffScaleKey( spep_2 -3 + 32, ctbaki, 1.34, 1.34 );
setEffScaleKey( spep_2 -3 + 34, ctbaki, 1.93, 1.93 );
setEffScaleKey( spep_2 -3 + 54, ctbaki, 1.93, 1.93 );

setEffRotateKey( spep_2 -3 + 32, ctbaki, 40 );
setEffRotateKey( spep_2 -3 + 54, ctbaki, 40 );

setEffAlphaKey( spep_2 -3 + 32, ctbaki, 128 );
setEffAlphaKey( spep_2 -3 + 34, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 50, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 52, ctbaki, 128 );
setEffAlphaKey( spep_2 -3 + 54, ctbaki, 0 );

-- ** 音 ** --
playSe( spep_2 -3 + 32, 1010 );  --殴る

--白フェード
entryFade( spep_2 + 72, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 80;

------------------------------------------------------
--瞬間移動、殴り
------------------------------------------------------

-- ** エフェクト等 ** --
panting_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, panting_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 144, panting_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, panting_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 144, panting_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, panting_f, 0 );
setEffRotateKey( spep_3 + 144, panting_f, 0 );
setEffAlphaKey( spep_3 + 0, panting_f, 255 );
setEffAlphaKey( spep_3 + 142, panting_f, 255 );
setEffAlphaKey( spep_3 + 143, panting_f, 255 );
setEffAlphaKey( spep_3 + 144, panting_f, 0 )

-- ** エフェクト等 ** --
panting_n = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, panting_n, 0, 0 , 0 );
setEffMoveKey( spep_3 + 144, panting_n, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, panting_n, 1.0, 1.0 );
setEffScaleKey( spep_3 + 144, panting_n, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, panting_n, 0 );
setEffRotateKey( spep_3 + 144, panting_n, 0 );
setEffAlphaKey( spep_3 + 0, panting_n, 255 );
setEffAlphaKey( spep_3 + 144, panting_n, 255 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, panting_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 144, panting_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, panting_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 144, panting_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, panting_b, 0 );
setEffRotateKey( spep_3 + 144, panting_b, 0 );
setEffAlphaKey( spep_3 + 0, panting_b, 255 );
setEffAlphaKey( spep_3 + 144, panting_b, 255 );

--流線
ryusen1 = entryEffectLife( spep_3  + 0,  914, 26-3, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_3  + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 -3 + 26, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_3  + 0, ryusen1, 4.19, 1.49 );
setEffScaleKey( spep_3 -3 + 26, ryusen1, 4.19, 1.49 );

setEffRotateKey( spep_3  + 0, ryusen1, 214.6 );
setEffRotateKey( spep_3 -3 + 26, ryusen1, 214.6 );

setEffAlphaKey( spep_3  + 0, ryusen1, 154 );
setEffAlphaKey( spep_3 -3 + 26, ryusen1, 154 );

--集中線
shuchusen2 = entryEffectLife( spep_3 -3 + 40,  906, 38, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 -3 + 40, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 -3 + 78, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 -3 + 40, shuchusen2, 1.35, 1.32 );
setEffScaleKey( spep_3 -3 + 78, shuchusen2, 1.35, 1.32 );

setEffRotateKey( spep_3 -3 + 40, shuchusen2, 180 );
setEffRotateKey( spep_3 -3 + 78, shuchusen2, 180 );

setEffAlphaKey( spep_3 -3 + 40, shuchusen2, 255 );
setEffAlphaKey( spep_3 -3 + 78, shuchusen2, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_3 -3 + 118,  906, 28, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 -3 + 118, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 -3 + 146, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 -3 + 118, shuchusen3, 1.58, 1.55 );
setEffScaleKey( spep_3 -3 + 146, shuchusen3, 1.58, 1.55 );

setEffRotateKey( spep_3 -3 + 118, shuchusen3, 180 );
setEffRotateKey( spep_3 -3 + 146, shuchusen3, 180 );

setEffAlphaKey( spep_3 -3 + 118, shuchusen3, 255 );
setEffAlphaKey( spep_3 -3 + 146, shuchusen3, 255 );

--敵の動き
setDisp( spep_3  + 0, 1, 1 );
setDisp( spep_3 -3 + 74, 1, 0 );
setDisp( spep_3 -3 + 110, 1, 1 );
setDisp( spep_3 -3 + 132, 1, 0 );

changeAnime( spep_3  + 0, 1, 106 );
changeAnime( spep_3 -3 + 26, 1, 104 );
changeAnime( spep_3 -3 + 110, 1, 107 );

setMoveKey( spep_3  + 0, 1, -636.9, 619.3 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, -629.5, 613.9 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -620.1, 607.2 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -607.9, 598.2 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -591.8, 586.5 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -569.8, 570.5 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -539.7, 548.5 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -498.1, 518.3 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -441, 476.7 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -364.3, 420.5 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -264.9, 347.8 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -142.9, 258.4 , 0 );
setMoveKey( spep_3 -3 + 25, 1, -1.6, 154.6 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 65.2, 57.4 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 68.6, 47.6 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 71.2, 40 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 73, 34.4 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 74.3, 30.7 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 75, 28.4 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 75.4, 27.2 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 75.5, 26.7 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 75.5, 26.6 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 75.5, 26.6 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 75.9, 26.5 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 76.2, 26.3 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 76.5, 26.2 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 76.8, 26 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 77.1, 25.9 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 77.5, 25.7 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 77.8, 25.6 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 78.1, 25.4 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 78.4, 25.3 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 78.7, 25.1 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 79, 25 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 79.4, 24.8 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 79.7, 24.7 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 80, 24.5 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 74.2, 18.7 , 0 );

setMoveKey( spep_3-3 + 110, 1, -67.4, -414.7 , 0 );
setMoveKey( spep_3-3 + 112, 1, 2.3, -514.2 , 0 );
setMoveKey( spep_3-3 + 114, 1, 61.6, -624.1 , 0 );
setMoveKey( spep_3-3 + 116, 1, 131.3, -723.6 , 0 );
setMoveKey( spep_3-3 + 118, 1, 190.6, -833.4 , 0 );
setMoveKey( spep_3-3 + 120, 1, 260.3, -932.9 , 0 );
setMoveKey( spep_3-3 + 122, 1, 319.5, -1048 , 0 );
setMoveKey( spep_3-3 + 124, 1, 389.2, -1142.3 , 0 );
setMoveKey( spep_3-3 + 126, 1, 448.5, -1252.2 , 0 );
setMoveKey( spep_3-3 + 128, 1, 453.7, -1247 , 0 );
setMoveKey( spep_3-3 + 130, 1, 448.5, -1252.2 , 0 );
setMoveKey( spep_3-3 + 132, 1, 453.7, -1247 , 0 );

setScaleKey( spep_3  + 0, 1, 2.01, 2.01 );
setScaleKey( spep_3 -3 + 44, 1, 2.01, 2.01 );
setScaleKey( spep_3 -3 + 46, 1, 2.02, 2.02 );
setScaleKey( spep_3 -3 + 48, 1, 2.02, 2.02 );
setScaleKey( spep_3 -3 + 50, 1, 2.03, 2.03 );
setScaleKey( spep_3 -3 + 52, 1, 2.03, 2.03 );
setScaleKey( spep_3 -3 + 54, 1, 2.04, 2.04 );
setScaleKey( spep_3 -3 + 56, 1, 2.04, 2.04 );
setScaleKey( spep_3 -3 + 58, 1, 2.05, 2.05 );
setScaleKey( spep_3 -3 + 60, 1, 2.05, 2.05 );
setScaleKey( spep_3 -3 + 62, 1, 2.06, 2.06 );
setScaleKey( spep_3 -3 + 64, 1, 2.06, 2.06 );
setScaleKey( spep_3 -3 + 66, 1, 2.07, 2.07 );
setScaleKey( spep_3 -3 + 68, 1, 2.07, 2.07 );
setScaleKey( spep_3 -3 + 70, 1, 2.08, 2.08 );
setScaleKey( spep_3 -3 + 74, 1, 2.08, 2.08 );

setScaleKey( spep_3-3 + 110, 1, 1.95, 1.95 );
setScaleKey( spep_3-3 + 112, 1, 2, 2 );
setScaleKey( spep_3-3 + 114, 1, 2.05, 2.05 );
setScaleKey( spep_3-3 + 116, 1, 2.11, 2.11 );
setScaleKey( spep_3-3 + 118, 1, 2.16, 2.16 );
setScaleKey( spep_3-3 + 120, 1, 2.21, 2.21 );
setScaleKey( spep_3-3 + 122, 1, 2.26, 2.26 );
setScaleKey( spep_3-3 + 124, 1, 2.31, 2.31 );
setScaleKey( spep_3-3 + 126, 1, 2.37, 2.37 );
setScaleKey( spep_3-3 + 132, 1, 2.37, 2.37 );

setRotateKey( spep_3 + 0, 1, 5 );
--setRotateKey( spep_3 -3 + 2, 1, 4.9 );
setRotateKey( spep_3 -3 + 4, 1, 4.8 );
setRotateKey( spep_3 -3 + 6, 1, 4.7 );
setRotateKey( spep_3 -3 + 8, 1, 4.5 );
setRotateKey( spep_3 -3 + 10, 1, 4.2 );
setRotateKey( spep_3 -3 + 12, 1, 3.9 );
setRotateKey( spep_3 -3 + 14, 1, 3.4 );
setRotateKey( spep_3 -3 + 16, 1, 2.8 );
setRotateKey( spep_3 -3 + 18, 1, 1.9 );
setRotateKey( spep_3 -3 + 20, 1, 0.8 );
setRotateKey( spep_3 -3 + 22, 1, -0.6 );
setRotateKey( spep_3 -3 + 25, 1, -2.2 );
setRotateKey( spep_3 -3 + 26, 1, 10.3 );
setRotateKey( spep_3 -3 + 28, 1, 8.3 );
setRotateKey( spep_3 -3 + 30, 1, 6.8 );
setRotateKey( spep_3 -3 + 32, 1, 5.8 );
setRotateKey( spep_3 -3 + 34, 1, 5.1 );
setRotateKey( spep_3 -3 + 36, 1, 4.6 );
setRotateKey( spep_3 -3 + 38, 1, 4.4 );
setRotateKey( spep_3 -3 + 40, 1, 4.3 );
setRotateKey( spep_3 -3 + 74, 1, 4.3 );

setRotateKey( spep_3-3 + 110, 1, 4.8 );
setRotateKey( spep_3-3 + 132, 1, 4.8 );

-- ** 音 ** --
playSe( spep_3 + 32, 43 );  --現れる
playSe( spep_3 + 72, 1011 );  --殴る

-- ** 次の準備 ** --
spep_4 = spep_3 + 144;

------------------------------------------------------
--衝突
------------------------------------------------------
-- ** エフェクト等 ** --
collision = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, collision, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, collision, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, collision, 1.0, 1.0 );
setEffScaleKey( spep_4 + 90, collision, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, collision, 0 );
setEffRotateKey( spep_4 + 90, collision, 0 );
setEffAlphaKey( spep_4 + 0, collision, 255 );
setEffAlphaKey( spep_4 + 90, collision, 255 );

--文字エントリー
ctdogon = entryEffectLife( spep_4-3 + 28,  10018, 48, 0x100, -1, 0, -87.8, 234.3 );--ドゴォンッ

setEffMoveKey( spep_4-3 + 28, ctdogon, -87.8, 234.3 , 0 );
setEffMoveKey( spep_4-3 + 30, ctdogon, -87, 232.4 , 0 );
setEffMoveKey( spep_4-3 + 32, ctdogon, -84.9, 231.1 , 0 );
setEffMoveKey( spep_4-3 + 34, ctdogon, -88.8, 230.9 , 0 );
setEffMoveKey( spep_4-3 + 36, ctdogon, -85.7, 231.2 , 0 );
setEffMoveKey( spep_4-3 + 38, ctdogon, -87.2, 231.9 , 0 );
setEffMoveKey( spep_4-3 + 40, ctdogon, -86, 231.7 , 0 );
setEffMoveKey( spep_4-3 + 42, ctdogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_4-3 + 44, ctdogon, -86, 231.7 , 0 );
setEffMoveKey( spep_4-3 + 46, ctdogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_4-3 + 48, ctdogon, -86, 231.7 , 0 );
setEffMoveKey( spep_4-3 + 50, ctdogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_4-3 + 52, ctdogon, -86, 231.7 , 0 );
setEffMoveKey( spep_4-3 + 54, ctdogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_4-3 + 56, ctdogon, -86, 231.7 , 0 );
setEffMoveKey( spep_4-3 + 58, ctdogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_4-3 + 60, ctdogon, -86, 231.7 , 0 );
setEffMoveKey( spep_4-3 + 62, ctdogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_4-3 + 64, ctdogon, -86, 231.7 , 0 );
setEffMoveKey( spep_4-3 + 66, ctdogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_4-3 + 68, ctdogon, -86, 231.7 , 0 );
setEffMoveKey( spep_4-3 + 70, ctdogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_4-3 + 72, ctdogon, -86, 231.7 , 0 );
setEffMoveKey( spep_4-3 + 74, ctdogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_4-3 + 76, ctdogon, -86, 231.7 , 0 );

setEffScaleKey( spep_4-3 + 28, ctdogon, 1.06, 1.06 );
setEffScaleKey( spep_4-3 + 30, ctdogon, 2.28, 2.28 );
setEffScaleKey( spep_4-3 + 32, ctdogon, 2.89, 2.89 );
setEffScaleKey( spep_4-3 + 34, ctdogon, 2.75, 2.75 );
setEffScaleKey( spep_4-3 + 36, ctdogon, 2.61, 2.61 );
setEffScaleKey( spep_4-3 + 38, ctdogon, 2.47, 2.47 );
setEffScaleKey( spep_4-3 + 40, ctdogon, 2.34, 2.34 );
setEffScaleKey( spep_4-3 + 76, ctdogon, 2.34, 2.34 );

setEffRotateKey( spep_4-3 + 28, ctdogon, -32.7 );
setEffRotateKey( spep_4-3 + 30, ctdogon, -46.1 );
setEffRotateKey( spep_4-3 + 32, ctdogon, -38.7 );
setEffRotateKey( spep_4-3 + 34, ctdogon, -24.2 );
setEffRotateKey( spep_4-3 + 36, ctdogon, -32.9 );
setEffRotateKey( spep_4-3 + 38, ctdogon, -43.6 );
setEffRotateKey( spep_4-3 + 40, ctdogon, -32.7 );
setEffRotateKey( spep_4-3 + 76, ctdogon, -32.7 );

setEffAlphaKey( spep_4-3 + 28, ctdogon, 255 );
setEffAlphaKey( spep_4-3 + 62, ctdogon, 255 );
setEffAlphaKey( spep_4-3 + 64, ctdogon, 219 );
setEffAlphaKey( spep_4-3 + 66, ctdogon, 182 );
setEffAlphaKey( spep_4-3 + 68, ctdogon, 146 );
setEffAlphaKey( spep_4-3 + 70, ctdogon, 109 );
setEffAlphaKey( spep_4-3 + 72, ctdogon, 73 );
setEffAlphaKey( spep_4-3 + 74, ctdogon, 36 );
setEffAlphaKey( spep_4-3 + 76, ctdogon, 0 );

shuchusen4 = entryEffectLife( spep_4-3 + 28,  906, 10, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4-3 + 28, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4-3 + 38, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4-3 + 28, shuchusen4, 1, 1 );
setEffScaleKey( spep_4-3 + 38, shuchusen4, 1, 1 );

setEffRotateKey( spep_4-3 + 28, shuchusen4, 0 );
setEffRotateKey( spep_4-3 + 38, shuchusen4, 0 );

setEffAlphaKey( spep_4-3 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_4-3 + 38, shuchusen4, 255 );

--敵の動き
setDisp( spep_4  + 0, 1, 1 );
setDisp( spep_4 -1  + 26, 1, 0 );

changeAnime( spep_4  + 0, 1, 105 );

setMoveKey( spep_4  + 0, 1, 69.4, -57.9 , 0 );
--setMoveKey( spep_4 -3 + 2, 1, 58.6, -54.7 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 49.1, -52 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 40.8, -49.6 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 33.6, -47.5 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 27.5, -45.7 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 22.5, -44.2 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 18.6, -43.1 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 15.5, -42.2 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 13, -41.5 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 10.9, -40.9 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 9.4, -40.4 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 8.4, -40.1 , 0 );
setMoveKey( spep_4 -1 + 26, 1, 8.1, -40 , 0 );

setScaleKey( spep_4  + 0, 1, 5.21, 5.21 );
--setScaleKey( spep_4 -3 + 2, 1, 4.37, 4.37 );
setScaleKey( spep_4 -3 + 4, 1, 3.63, 3.63 );
setScaleKey( spep_4 -3 + 6, 1, 2.99, 2.99 );
setScaleKey( spep_4 -3 + 8, 1, 2.43, 2.43 );
setScaleKey( spep_4 -3 + 10, 1, 1.96, 1.96 );
setScaleKey( spep_4 -3 + 12, 1, 1.57, 1.57 );
setScaleKey( spep_4 -3 + 14, 1, 1.27, 1.27 );
setScaleKey( spep_4 -3 + 16, 1, 1.03, 1.03 );
setScaleKey( spep_4 -3 + 18, 1, 0.83, 0.83 );
setScaleKey( spep_4 -3 + 20, 1, 0.68, 0.68 );
setScaleKey( spep_4 -3 + 22, 1, 0.56, 0.56 );
setScaleKey( spep_4 -3 + 24, 1, 0.48, 0.48 );
setScaleKey( spep_4 -1 + 26, 1, 0.45, 0.45 );

setRotateKey( spep_4  + 0, 1, -7.5 );
setRotateKey( spep_4 -1 + 26, 1, -7.5 );

--白フェード
entryFade( spep_4 + 82, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
SE1 = playSe( spep_4 + 0, 1118 );  --落ちる
stopSe( spep_4 + 20, SE1, 10);
setSeVolume( spep_4 + 0, 1118, 80 );
setSeVolume( spep_4 + 10, 1118, 60 );
setSeVolume( spep_4 + 16, 1118, 30 );
playSe( spep_4 + 28, 1023 );  --地面に追突

-- ** 次の準備 ** --
spep_5 = spep_4 + 90;

------------------------------------------------------
--気弾発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 186, beam_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 186, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam_f, 0 );
setEffRotateKey( spep_5 + 186, beam_f, 0 );
setEffAlphaKey( spep_5 + 0, beam_f, 255 );
setEffAlphaKey( spep_5 + 186, beam_f, 255 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 186, beam_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 186, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam_b, 0 );
setEffRotateKey( spep_5 + 186, beam_b, 0 );
setEffAlphaKey( spep_5 + 0, beam_b, 255 );
setEffAlphaKey( spep_5 + 186, beam_b, 255 );

--流線
ryusen2 = entryEffectLife( spep_5-3 + 34,  921, 150, 0x80, -1, 50, 0, 0 );

setEffMoveKey( spep_5-3 + 34, ryusen2, 50, 0 , 0 );
setEffMoveKey( spep_5-3 + 184, ryusen2, 50, 0 , 0 );

setEffScaleKey( spep_5-3 + 34, ryusen2, 1.63, 1.61 );
setEffScaleKey( spep_5-3 + 184, ryusen2, 1.63, 1.61 );

setEffRotateKey( spep_5-3 + 34, ryusen2, -135.8 );
setEffRotateKey( spep_5-3 + 184, ryusen2, -135.8 );

setEffRotateKey( spep_5-3 + 34, ryusen2, -135.8 );
setEffRotateKey( spep_5-3 + 184, ryusen2, -135.8 );

ctzuo = entryEffectLife( spep_5-3 + 76,  10012, 58, 0x100, -1, 0, 113.7, -349.1 );--ズオッ

setEffMoveKey( spep_5-3 + 76, ctzuo, 113.7, -349.1 , 0 );
setEffMoveKey( spep_5-3 + 78, ctzuo, 87.8, -321.7 , 0 );
setEffMoveKey( spep_5-3 + 80, ctzuo, 59.9, -302.1 , 0 );
setEffMoveKey( spep_5-3 + 82, ctzuo, 34.8, -271.7 , 0 );
setEffMoveKey( spep_5-3 + 84, ctzuo, -24.7, -248 , 0 );
setEffMoveKey( spep_5-3 + 86, ctzuo, -80.7, -210.6 , 0 );
setEffMoveKey( spep_5-3 + 88, ctzuo, -140.3, -186.9 , 0 );
setEffMoveKey( spep_5-3 + 90, ctzuo, -139.3, -180 , 0 );
setEffMoveKey( spep_5-3 + 92, ctzuo, -141.9, -186.9 , 0 );
setEffMoveKey( spep_5-3 + 94, ctzuo, -140.9, -180.1 , 0 );
setEffMoveKey( spep_5-3 + 96, ctzuo, -143.5, -187 , 0 );
setEffMoveKey( spep_5-3 + 98, ctzuo, -142.5, -180.1 , 0 );
setEffMoveKey( spep_5-3 + 100, ctzuo, -145.1, -187 , 0 );
setEffMoveKey( spep_5-3 + 102, ctzuo, -144.1, -180.1 , 0 );
setEffMoveKey( spep_5-3 + 104, ctzuo, -146.7, -187.1 , 0 );
setEffMoveKey( spep_5-3 + 106, ctzuo, -145.7, -180.2 , 0 );
setEffMoveKey( spep_5-3 + 108, ctzuo, -148.3, -187.1 , 0 );
setEffMoveKey( spep_5-3 + 110, ctzuo, -147.3, -180.2 , 0 );
setEffMoveKey( spep_5-3 + 112, ctzuo, -150, -187.1 , 0 );
setEffMoveKey( spep_5-3 + 114, ctzuo, -149, -180.3 , 0 );
setEffMoveKey( spep_5-3 + 116, ctzuo, -151.6, -187.2 , 0 );
setEffMoveKey( spep_5-3 + 118, ctzuo, -150.6, -180.3 , 0 );
setEffMoveKey( spep_5-3 + 120, ctzuo, -153.2, -187.2 , 0 );
setEffMoveKey( spep_5-3 + 122, ctzuo, -152.2, -180.4 , 0 );
setEffMoveKey( spep_5-3 + 124, ctzuo, -168.3, -188 , 0 );
setEffMoveKey( spep_5-3 + 126, ctzuo, -179.5, -176.9 , 0 );
setEffMoveKey( spep_5-3 + 128, ctzuo, -196.9, -189.4 , 0 );
setEffMoveKey( spep_5-3 + 130, ctzuo, -206.8, -173.6 , 0 );
setEffMoveKey( spep_5-3 + 132, ctzuo, -225.4, -190.9 , 0 );
setEffMoveKey( spep_5-3 + 134, ctzuo, -239.7, -191.6 , 0 );

a=0.5;
b=0.3;
c=2.3;
d=2.0;
e=6.4;
f=4.2;

setEffScaleKey( spep_5-3 + 76, ctzuo, 0.28+a, 0.28+b );
--setEffScaleKey( spep_5-3 + 78, ctzuo, 0.45+a, 0.45+b );
--setEffScaleKey( spep_5-3 + 80, ctzuo, 0.63+a, 0.63+b );
setEffScaleKey( spep_5-3 + 82, ctzuo, 0.8 +c, 0.8 +d );
setEffScaleKey( spep_5-3 + 122, ctzuo, 0.8 +c, 0.8 +d );
--setEffScaleKey( spep_5-3 + 124, ctzuo, 1.08, 1.08 );
--setEffScaleKey( spep_5-3 + 126, ctzuo, 1.37, 1.37 );
--setEffScaleKey( spep_5-3 + 128, ctzuo, 1.65, 1.65 );
--setEffScaleKey( spep_5-3 + 130, ctzuo, 1.93, 1.93 );
--setEffScaleKey( spep_5-3 + 132, ctzuo, 2.22, 2.22 );
setEffScaleKey( spep_5-3 + 134, ctzuo, 2.5 +e, 2.5 +f );

setEffRotateKey( spep_5-3 + 76, ctzuo, -10 );
setEffRotateKey( spep_5-3 + 134, ctzuo, -10 );

setEffAlphaKey( spep_5-3 + 76, ctzuo, 85 );
setEffAlphaKey( spep_5-3 + 78, ctzuo, 170 );
setEffAlphaKey( spep_5-3 + 80, ctzuo, 255 );
setEffAlphaKey( spep_5-3 + 122, ctzuo, 255 );
setEffAlphaKey( spep_5-3 + 124, ctzuo, 212 );
setEffAlphaKey( spep_5-3 + 126, ctzuo, 170 );
setEffAlphaKey( spep_5-3 + 128, ctzuo, 128 );
setEffAlphaKey( spep_5-3 + 130, ctzuo, 85 );
setEffAlphaKey( spep_5-3 + 132, ctzuo, 43 );
setEffAlphaKey( spep_5-3 + 134, ctzuo, 0 );

--白フェード
entryFade( spep_5 + 68, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 178, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_5 + 0, 17 );  --溜める
playSe( spep_5 + 74, 1022 );  --発射

-- ** 次の準備 ** --
spep_6 = spep_5 + 186;

------------------------------------------------------
--気弾着弾
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_09, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_6 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_6 + 150, finish, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish, 1.1, 1.1 );
setEffScaleKey( spep_6 + 150, finish, 1.1, 1.1 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 150, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 150, finish, 255 );

--集中線
shuchusen5= entryEffectLife( spep_6-3 + 38,  906, 110, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_6-3 + 38, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_6-3 + 148, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_6-3 + 38, shuchusen5, 1, 1 );
setEffScaleKey( spep_6-3 + 148, shuchusen5, 1, 1 );

setEffRotateKey( spep_6-3 + 38, shuchusen5, 180 );
setEffRotateKey( spep_6-3 + 148, shuchusen5, 180 );

setEffAlphaKey( spep_6-3 + 38, shuchusen5, 255 );
setEffAlphaKey( spep_6-3 + 148, shuchusen5, 255 );

--白フェード
entryFade( spep_6 + 30, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_6 + 0, 1021 );  --迫る
playSe( spep_6 + 34, 1024 );  --爆発

-- ** ダメージ表示 ** --
dealDamage(spep_6 +36 );
endPhase( spep_6 + 138 );
else 
------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
--導入、悟飯叫び
------------------------------------------------------
spep_0 = 0;
-- ** エフェクト等 ** --
roar = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_0 + 0, roar, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, roar, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, roar, -1.0, 1.0 );
setEffScaleKey( spep_0 + 96, roar, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, roar, 0 );
setEffRotateKey( spep_0 + 96, roar, 0 );
setEffAlphaKey( spep_0 + 0, roar, 255 );
setEffAlphaKey( spep_0 + 96, roar, 255 );

spep_x = spep_0 + 2;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );

setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 音 ** --
playSe( spep_0 + 0, 8 );  --登場
playSe( spep_x + 16, 1018 );  --ごごご


-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
entryFade( spep_0 + 92, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 96;

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

--白フェード
entryFade( spep_1 + 82, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
--突進、蹴り：キャラ＆背景
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_2 + 0, SP_10x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 80, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 80, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_f, 0 );
setEffRotateKey( spep_2 + 80, kick_f, 0 );
setEffAlphaKey( spep_2 + 0, kick_f, 255 );
setEffAlphaKey( spep_2 + 80, kick_f, 255 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_2 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 80, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 80, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_b, 0 );
setEffRotateKey( spep_2 + 80, kick_b, 0 );
setEffAlphaKey( spep_2 + 0, kick_b, 255 );
setEffAlphaKey( spep_2 + 80, kick_b, 255 );

--敵の動き
setDisp( spep_2  + 0, 1, 1 );

changeAnime( spep_2  + 0, 1, 102 );

setMoveKey( spep_2  + 0, 1, 349.3, -353.6 , 0 );
--setMoveKey( spep_2 -3 + 2, 1, 315.1, -303.6 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 287.1, -262.6 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 264.6, -229.9 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 247.2, -204.3 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 234, -185.1 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 224.6, -171.4 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 218.3, -162.2 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 214.5, -156.6 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 212.5, -153.7 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 211.8, -152.6 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 211.7, -152.5 , 0 );
setMoveKey( spep_2  + 20, 1, 211.7, -152.5 , 0 );


setScaleKey( spep_2  + 0, 1, 4.27, 4.27 );
--setScaleKey( spep_2 -3 + 2, 1, 4.23, 4.23 );
setScaleKey( spep_2 -3 + 4, 1, 4.19, 4.19 );
setScaleKey( spep_2 -3 + 6, 1, 4.17, 4.17 );
setScaleKey( spep_2 -3 + 8, 1, 4.14, 4.14 );
setScaleKey( spep_2 -3 + 10, 1, 4.13, 4.13 );
setScaleKey( spep_2 -3 + 12, 1, 4.12, 4.12 );
setScaleKey( spep_2 -3 + 14, 1, 4.11, 4.11 );
setScaleKey( spep_2 -3 + 16, 1, 4.1, 4.1 );
setScaleKey( spep_2  + 20, 1, 4.1, 4.1 );

setRotateKey( spep_2 -3 + 0, 1, 0 );
setRotateKey( spep_2  + 20, 1, 0 );

-- ** 音 ** --
SE0 = playSe( spep_2 + 0 -20, 1072 );  --迫る
setSeVolume( spep_2 + 0, 1072, 140 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 20; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    --stopSe( SP_dodge - 12, SE1, 0 );
    --stopSe( SP_dodge - 12, SE2, 0 );
    
    pauseAll( SP_dodge, 67 );
    
    --敵の固定
    setMoveKey( SP_dodge+ 10, 1, 211.7, -152.5 , 0 );
    setScaleKey( SP_dodge+ 10, 1, 4.1, 4.1 );
    setRotateKey( SP_dodge+ 10, 1, 0 );

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

--続きの動き
setDisp( spep_2  + 60, 1, 0 );

changeAnime( spep_2 -3 + 32, 1, 107 );

setMoveKey( spep_2 -3 + 31, 1, 211.7, -152.5 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 117.8, -246.4 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 323, -414 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 348.7, -691 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 550.4, -913.2 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 653.3, -951.3 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 690.3, -1089 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 806.8, -1154.5 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 868.3, -1196.7 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 899.8, -1271.2 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 928.4, -1307 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 947.6, -1331.1 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 959.2, -1345.7 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 965.1, -1353.1 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 967.3, -1355.9 , 0 );
setMoveKey( spep_2  + 60, 1, 967.7, -1356.3 , 0 );

setScaleKey( spep_2 -3 + 31, 1, 4.1, 4.1 );
setScaleKey( spep_2 -3 + 32, 1, 1.42, 1.42 );
setScaleKey( spep_2 -3 + 34, 1, 1.64, 1.64 );
setScaleKey( spep_2 -3 + 36, 1, 1.82, 1.82 );
setScaleKey( spep_2 -3 + 38, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 40, 1, 2.11, 2.11 );
setScaleKey( spep_2 -3 + 42, 1, 2.21, 2.21 );
setScaleKey( spep_2 -3 + 44, 1, 2.3, 2.3 );
setScaleKey( spep_2 -3 + 46, 1, 2.37, 2.37 );
setScaleKey( spep_2 -3 + 48, 1, 2.41, 2.41 );
setScaleKey( spep_2 -3 + 50, 1, 2.45, 2.45 );
setScaleKey( spep_2 -3 + 52, 1, 2.47, 2.47 );
setScaleKey( spep_2 -3 + 54, 1, 2.49, 2.49 );
setScaleKey( spep_2 -3 + 56, 1, 2.5, 2.5 );
setScaleKey( spep_2  + 60, 1, 2.5, 2.5 );

setRotateKey( spep_2 -3 + 31, 1, 0 );
setRotateKey( spep_2 -3 + 32, 1, 4.8 );
setRotateKey( spep_2  + 60, 1, 4.8 );

--集中線
shuchusen1 = entryEffectLife( spep_2 -3 + 32,  906, 46, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 -3 + 32, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 -3 + 78, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 -3 + 32, shuchusen1, 1.58, 1.55 );
setEffScaleKey( spep_2 -3 + 78, shuchusen1, 1.58, 1.55 );

setEffRotateKey( spep_2 -3 + 32, shuchusen1, 180 );
setEffRotateKey( spep_2 -3 + 78, shuchusen1, 180 );

setEffAlphaKey( spep_2 -3 + 32, shuchusen1, 255 );
setEffAlphaKey( spep_2 -3 + 78, shuchusen1, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_2 -3 + 32,  10020, 22, 0x100, -1, 0, 111.7, 366.7 );--バキッ

setEffMoveKey( spep_2 -3 + 32, ctbaki, 111.7, 366.7 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctbaki, 134.5, 396.8 , 0 );
setEffMoveKey( spep_2 -3 + 36, ctbaki, 153.1, 419 , 0 );
setEffMoveKey( spep_2 -3 + 38, ctbaki, 139.8, 415.1 , 0 );
setEffMoveKey( spep_2 -3 + 40, ctbaki, 134.5, 396.8 , 0 );
setEffMoveKey( spep_2 -3 + 42, ctbaki, 153.1, 419 , 0 );
setEffMoveKey( spep_2 -3 + 44, ctbaki, 139.8, 415.1 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctbaki, 134.5, 396.8 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctbaki, 153.1, 419 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctbaki, 165.6, 444 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctbaki, 152.3, 440.1 , 0 );

setEffScaleKey( spep_2 -3 + 32, ctbaki, 1.34, 1.34 );
setEffScaleKey( spep_2 -3 + 34, ctbaki, 1.93, 1.93 );
setEffScaleKey( spep_2 -3 + 54, ctbaki, 1.93, 1.93 );

setEffRotateKey( spep_2 -3 + 32, ctbaki, -30 );
setEffRotateKey( spep_2 -3 + 54, ctbaki, -30 );

setEffAlphaKey( spep_2 -3 + 32, ctbaki, 128 );
setEffAlphaKey( spep_2 -3 + 34, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 50, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 52, ctbaki, 128 );
setEffAlphaKey( spep_2 -3 + 54, ctbaki, 0 );

-- ** 音 ** --
playSe( spep_2 -3 + 32, 1010 );  --殴る

--白フェード
entryFade( spep_2 + 72, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 80;

------------------------------------------------------
--瞬間移動、殴り
------------------------------------------------------

-- ** エフェクト等 ** --
panting_f = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, panting_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 144, panting_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, panting_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 144, panting_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, panting_f, 0 );
setEffRotateKey( spep_3 + 144, panting_f, 0 );
setEffAlphaKey( spep_3 + 0, panting_f, 255 );
setEffAlphaKey( spep_3 + 142, panting_f, 255 );
setEffAlphaKey( spep_3 + 143, panting_f, 255 );
setEffAlphaKey( spep_3 + 144, panting_f, 0 )

-- ** エフェクト等 ** --
panting_n = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, panting_n, 0, 0 , 0 );
setEffMoveKey( spep_3 + 144, panting_n, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, panting_n, 1.0, 1.0 );
setEffScaleKey( spep_3 + 144, panting_n, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, panting_n, 0 );
setEffRotateKey( spep_3 + 144, panting_n, 0 );
setEffAlphaKey( spep_3 + 0, panting_n, 255 );
setEffAlphaKey( spep_3 + 144, panting_n, 255 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_3 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, panting_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 144, panting_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, panting_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 144, panting_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, panting_b, 0 );
setEffRotateKey( spep_3 + 144, panting_b, 0 );
setEffAlphaKey( spep_3 + 0, panting_b, 255 );
setEffAlphaKey( spep_3 + 144, panting_b, 255 );

--流線
ryusen1 = entryEffectLife( spep_3  + 0,  914, 26-3, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_3  + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 -3 + 26, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_3  + 0, ryusen1, 4.19, 1.49 );
setEffScaleKey( spep_3 -3 + 26, ryusen1, 4.19, 1.49 );

setEffRotateKey( spep_3  + 0, ryusen1, 214.6 );
setEffRotateKey( spep_3 -3 + 26, ryusen1, 214.6 );

setEffAlphaKey( spep_3  + 0, ryusen1, 154 );
setEffAlphaKey( spep_3 -3 + 26, ryusen1, 154 );

--集中線
shuchusen2 = entryEffectLife( spep_3 -3 + 40,  906, 38, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 -3 + 40, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 -3 + 78, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 -3 + 40, shuchusen2, 1.35, 1.32 );
setEffScaleKey( spep_3 -3 + 78, shuchusen2, 1.35, 1.32 );

setEffRotateKey( spep_3 -3 + 40, shuchusen2, 180 );
setEffRotateKey( spep_3 -3 + 78, shuchusen2, 180 );

setEffAlphaKey( spep_3 -3 + 40, shuchusen2, 255 );
setEffAlphaKey( spep_3 -3 + 78, shuchusen2, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_3 -3 + 118,  906, 28, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 -3 + 118, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 -3 + 146, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 -3 + 118, shuchusen3, 1.58, 1.55 );
setEffScaleKey( spep_3 -3 + 146, shuchusen3, 1.58, 1.55 );

setEffRotateKey( spep_3 -3 + 118, shuchusen3, 180 );
setEffRotateKey( spep_3 -3 + 146, shuchusen3, 180 );

setEffAlphaKey( spep_3 -3 + 118, shuchusen3, 255 );
setEffAlphaKey( spep_3 -3 + 146, shuchusen3, 255 );

--敵の動き
setDisp( spep_3  + 0, 1, 1 );
setDisp( spep_3 -3 + 74, 1, 0 );
setDisp( spep_3 -3 + 110, 1, 1 );
setDisp( spep_3 -3 + 132, 1, 0 );

changeAnime( spep_3  + 0, 1, 106 );
changeAnime( spep_3 -3 + 26, 1, 104 );
changeAnime( spep_3 -3 + 110, 1, 107 );

setMoveKey( spep_3  + 0, 1, -636.9, 619.3 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, -629.5, 613.9 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -620.1, 607.2 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -607.9, 598.2 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -591.8, 586.5 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -569.8, 570.5 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -539.7, 548.5 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -498.1, 518.3 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -441, 476.7 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -364.3, 420.5 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -264.9, 347.8 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -142.9, 258.4 , 0 );
setMoveKey( spep_3 -3 + 25, 1, -1.6, 154.6 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 65.2, 57.4 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 68.6, 47.6 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 71.2, 40 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 73, 34.4 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 74.3, 30.7 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 75, 28.4 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 75.4, 27.2 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 75.5, 26.7 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 75.5, 26.6 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 75.5, 26.6 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 75.9, 26.5 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 76.2, 26.3 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 76.5, 26.2 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 76.8, 26 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 77.1, 25.9 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 77.5, 25.7 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 77.8, 25.6 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 78.1, 25.4 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 78.4, 25.3 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 78.7, 25.1 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 79, 25 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 79.4, 24.8 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 79.7, 24.7 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 80, 24.5 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 74.2, 18.7 , 0 );

setMoveKey( spep_3-3 + 110, 1, -67.4, -414.7 , 0 );
setMoveKey( spep_3-3 + 112, 1, 2.3, -514.2 , 0 );
setMoveKey( spep_3-3 + 114, 1, 61.6, -624.1 , 0 );
setMoveKey( spep_3-3 + 116, 1, 131.3, -723.6 , 0 );
setMoveKey( spep_3-3 + 118, 1, 190.6, -833.4 , 0 );
setMoveKey( spep_3-3 + 120, 1, 260.3, -932.9 , 0 );
setMoveKey( spep_3-3 + 122, 1, 319.5, -1048 , 0 );
setMoveKey( spep_3-3 + 124, 1, 389.2, -1142.3 , 0 );
setMoveKey( spep_3-3 + 126, 1, 448.5, -1252.2 , 0 );
setMoveKey( spep_3-3 + 128, 1, 453.7, -1247 , 0 );
setMoveKey( spep_3-3 + 130, 1, 448.5, -1252.2 , 0 );
setMoveKey( spep_3-3 + 132, 1, 453.7, -1247 , 0 );

setScaleKey( spep_3  + 0, 1, 2.01, 2.01 );
setScaleKey( spep_3 -3 + 44, 1, 2.01, 2.01 );
setScaleKey( spep_3 -3 + 46, 1, 2.02, 2.02 );
setScaleKey( spep_3 -3 + 48, 1, 2.02, 2.02 );
setScaleKey( spep_3 -3 + 50, 1, 2.03, 2.03 );
setScaleKey( spep_3 -3 + 52, 1, 2.03, 2.03 );
setScaleKey( spep_3 -3 + 54, 1, 2.04, 2.04 );
setScaleKey( spep_3 -3 + 56, 1, 2.04, 2.04 );
setScaleKey( spep_3 -3 + 58, 1, 2.05, 2.05 );
setScaleKey( spep_3 -3 + 60, 1, 2.05, 2.05 );
setScaleKey( spep_3 -3 + 62, 1, 2.06, 2.06 );
setScaleKey( spep_3 -3 + 64, 1, 2.06, 2.06 );
setScaleKey( spep_3 -3 + 66, 1, 2.07, 2.07 );
setScaleKey( spep_3 -3 + 68, 1, 2.07, 2.07 );
setScaleKey( spep_3 -3 + 70, 1, 2.08, 2.08 );
setScaleKey( spep_3 -3 + 74, 1, 2.08, 2.08 );

setScaleKey( spep_3-3 + 110, 1, 1.95, 1.95 );
setScaleKey( spep_3-3 + 112, 1, 2, 2 );
setScaleKey( spep_3-3 + 114, 1, 2.05, 2.05 );
setScaleKey( spep_3-3 + 116, 1, 2.11, 2.11 );
setScaleKey( spep_3-3 + 118, 1, 2.16, 2.16 );
setScaleKey( spep_3-3 + 120, 1, 2.21, 2.21 );
setScaleKey( spep_3-3 + 122, 1, 2.26, 2.26 );
setScaleKey( spep_3-3 + 124, 1, 2.31, 2.31 );
setScaleKey( spep_3-3 + 126, 1, 2.37, 2.37 );
setScaleKey( spep_3-3 + 132, 1, 2.37, 2.37 );

setRotateKey( spep_3 + 0, 1, 5 );
--setRotateKey( spep_3 -3 + 2, 1, 4.9 );
setRotateKey( spep_3 -3 + 4, 1, 4.8 );
setRotateKey( spep_3 -3 + 6, 1, 4.7 );
setRotateKey( spep_3 -3 + 8, 1, 4.5 );
setRotateKey( spep_3 -3 + 10, 1, 4.2 );
setRotateKey( spep_3 -3 + 12, 1, 3.9 );
setRotateKey( spep_3 -3 + 14, 1, 3.4 );
setRotateKey( spep_3 -3 + 16, 1, 2.8 );
setRotateKey( spep_3 -3 + 18, 1, 1.9 );
setRotateKey( spep_3 -3 + 20, 1, 0.8 );
setRotateKey( spep_3 -3 + 22, 1, -0.6 );
setRotateKey( spep_3 -3 + 25, 1, -2.2 );
setRotateKey( spep_3 -3 + 26, 1, 10.3 );
setRotateKey( spep_3 -3 + 28, 1, 8.3 );
setRotateKey( spep_3 -3 + 30, 1, 6.8 );
setRotateKey( spep_3 -3 + 32, 1, 5.8 );
setRotateKey( spep_3 -3 + 34, 1, 5.1 );
setRotateKey( spep_3 -3 + 36, 1, 4.6 );
setRotateKey( spep_3 -3 + 38, 1, 4.4 );
setRotateKey( spep_3 -3 + 40, 1, 4.3 );
setRotateKey( spep_3 -3 + 74, 1, 4.3 );

setRotateKey( spep_3-3 + 110, 1, 4.8 );
setRotateKey( spep_3-3 + 132, 1, 4.8 );

-- ** 音 ** --
playSe( spep_3 + 32, 43 );  --現れる
playSe( spep_3 + 72, 1011 );  --殴る

-- ** 次の準備 ** --
spep_4 = spep_3 + 144;

------------------------------------------------------
--衝突
------------------------------------------------------
-- ** エフェクト等 ** --
collision = entryEffect( spep_4 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, collision, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, collision, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, collision, 1.0, 1.0 );
setEffScaleKey( spep_4 + 90, collision, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, collision, 0 );
setEffRotateKey( spep_4 + 90, collision, 0 );
setEffAlphaKey( spep_4 + 0, collision, 255 );
setEffAlphaKey( spep_4 + 90, collision, 255 );

--文字エントリー
ctdogon = entryEffectLife( spep_4-3 + 28,  10018, 48, 0x100, -1, 0, -87.8, 234.3 );--ドゴォンッ

setEffMoveKey( spep_4-3 + 28, ctdogon, -87.8, 234.3 , 0 );
setEffMoveKey( spep_4-3 + 30, ctdogon, -87, 232.4 , 0 );
setEffMoveKey( spep_4-3 + 32, ctdogon, -84.9, 231.1 , 0 );
setEffMoveKey( spep_4-3 + 34, ctdogon, -88.8, 230.9 , 0 );
setEffMoveKey( spep_4-3 + 36, ctdogon, -85.7, 231.2 , 0 );
setEffMoveKey( spep_4-3 + 38, ctdogon, -87.2, 231.9 , 0 );
setEffMoveKey( spep_4-3 + 40, ctdogon, -86, 231.7 , 0 );
setEffMoveKey( spep_4-3 + 42, ctdogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_4-3 + 44, ctdogon, -86, 231.7 , 0 );
setEffMoveKey( spep_4-3 + 46, ctdogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_4-3 + 48, ctdogon, -86, 231.7 , 0 );
setEffMoveKey( spep_4-3 + 50, ctdogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_4-3 + 52, ctdogon, -86, 231.7 , 0 );
setEffMoveKey( spep_4-3 + 54, ctdogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_4-3 + 56, ctdogon, -86, 231.7 , 0 );
setEffMoveKey( spep_4-3 + 58, ctdogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_4-3 + 60, ctdogon, -86, 231.7 , 0 );
setEffMoveKey( spep_4-3 + 62, ctdogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_4-3 + 64, ctdogon, -86, 231.7 , 0 );
setEffMoveKey( spep_4-3 + 66, ctdogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_4-3 + 68, ctdogon, -86, 231.7 , 0 );
setEffMoveKey( spep_4-3 + 70, ctdogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_4-3 + 72, ctdogon, -86, 231.7 , 0 );
setEffMoveKey( spep_4-3 + 74, ctdogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_4-3 + 76, ctdogon, -86, 231.7 , 0 );

setEffScaleKey( spep_4-3 + 28, ctdogon, 1.06, 1.06 );
setEffScaleKey( spep_4-3 + 30, ctdogon, 2.28, 2.28 );
setEffScaleKey( spep_4-3 + 32, ctdogon, 2.89, 2.89 );
setEffScaleKey( spep_4-3 + 34, ctdogon, 2.75, 2.75 );
setEffScaleKey( spep_4-3 + 36, ctdogon, 2.61, 2.61 );
setEffScaleKey( spep_4-3 + 38, ctdogon, 2.47, 2.47 );
setEffScaleKey( spep_4-3 + 40, ctdogon, 2.34, 2.34 );
setEffScaleKey( spep_4-3 + 76, ctdogon, 2.34, 2.34 );

setEffRotateKey( spep_4-3 + 28, ctdogon, -32.7 );
setEffRotateKey( spep_4-3 + 30, ctdogon, -46.1 );
setEffRotateKey( spep_4-3 + 32, ctdogon, -38.7 );
setEffRotateKey( spep_4-3 + 34, ctdogon, -24.2 );
setEffRotateKey( spep_4-3 + 36, ctdogon, -32.9 );
setEffRotateKey( spep_4-3 + 38, ctdogon, -43.6 );
setEffRotateKey( spep_4-3 + 40, ctdogon, -32.7 );
setEffRotateKey( spep_4-3 + 76, ctdogon, -32.7 );

setEffAlphaKey( spep_4-3 + 28, ctdogon, 255 );
setEffAlphaKey( spep_4-3 + 62, ctdogon, 255 );
setEffAlphaKey( spep_4-3 + 64, ctdogon, 219 );
setEffAlphaKey( spep_4-3 + 66, ctdogon, 182 );
setEffAlphaKey( spep_4-3 + 68, ctdogon, 146 );
setEffAlphaKey( spep_4-3 + 70, ctdogon, 109 );
setEffAlphaKey( spep_4-3 + 72, ctdogon, 73 );
setEffAlphaKey( spep_4-3 + 74, ctdogon, 36 );
setEffAlphaKey( spep_4-3 + 76, ctdogon, 0 );

shuchusen4 = entryEffectLife( spep_4-3 + 28,  906, 10, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4-3 + 28, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4-3 + 38, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4-3 + 28, shuchusen4, 1, 1 );
setEffScaleKey( spep_4-3 + 38, shuchusen4, 1, 1 );

setEffRotateKey( spep_4-3 + 28, shuchusen4, 0 );
setEffRotateKey( spep_4-3 + 38, shuchusen4, 0 );

setEffAlphaKey( spep_4-3 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_4-3 + 38, shuchusen4, 255 );

--敵の動き
setDisp( spep_4  + 0, 1, 1 );
setDisp( spep_4 -1  + 26, 1, 0 );

changeAnime( spep_4  + 0, 1, 105 );

setMoveKey( spep_4  + 0, 1, 69.4, -57.9 , 0 );
--setMoveKey( spep_4 -3 + 2, 1, 58.6, -54.7 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 49.1, -52 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 40.8, -49.6 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 33.6, -47.5 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 27.5, -45.7 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 22.5, -44.2 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 18.6, -43.1 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 15.5, -42.2 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 13, -41.5 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 10.9, -40.9 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 9.4, -40.4 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 8.4, -40.1 , 0 );
setMoveKey( spep_4 -1 + 26, 1, 8.1, -40 , 0 );

setScaleKey( spep_4  + 0, 1, 5.21, 5.21 );
--setScaleKey( spep_4 -3 + 2, 1, 4.37, 4.37 );
setScaleKey( spep_4 -3 + 4, 1, 3.63, 3.63 );
setScaleKey( spep_4 -3 + 6, 1, 2.99, 2.99 );
setScaleKey( spep_4 -3 + 8, 1, 2.43, 2.43 );
setScaleKey( spep_4 -3 + 10, 1, 1.96, 1.96 );
setScaleKey( spep_4 -3 + 12, 1, 1.57, 1.57 );
setScaleKey( spep_4 -3 + 14, 1, 1.27, 1.27 );
setScaleKey( spep_4 -3 + 16, 1, 1.03, 1.03 );
setScaleKey( spep_4 -3 + 18, 1, 0.83, 0.83 );
setScaleKey( spep_4 -3 + 20, 1, 0.68, 0.68 );
setScaleKey( spep_4 -3 + 22, 1, 0.56, 0.56 );
setScaleKey( spep_4 -3 + 24, 1, 0.48, 0.48 );
setScaleKey( spep_4 -1 + 26, 1, 0.45, 0.45 );

setRotateKey( spep_4  + 0, 1, -7.5 );
setRotateKey( spep_4 -1 + 26, 1, -7.5 );

-- ** 音 ** --
SE1 = playSe( spep_4 + 0, 1118 );  --落ちる
stopSe( spep_4 + 20, SE1, 10);
setSeVolume( spep_4 + 0, 1118, 80 );
setSeVolume( spep_4 + 10, 1118, 60 );
setSeVolume( spep_4 + 16, 1118, 30 );
playSe( spep_4 + 28, 1023 );  --地面に追突

--白フェード
entryFade( spep_4 + 82, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 90;

------------------------------------------------------
--気弾発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_5 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 186, beam_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 186, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam_f, 0 );
setEffRotateKey( spep_5 + 186, beam_f, 0 );
setEffAlphaKey( spep_5 + 0, beam_f, 255 );
setEffAlphaKey( spep_5 + 186, beam_f, 255 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_5 + 0, SP_08x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 186, beam_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 186, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam_b, 0 );
setEffRotateKey( spep_5 + 186, beam_b, 0 );
setEffAlphaKey( spep_5 + 0, beam_b, 255 );
setEffAlphaKey( spep_5 + 186, beam_b, 255 );

--流線
ryusen2 = entryEffectLife( spep_5-3 + 34,  921, 150, 0x80, -1, 50, 0, 0 );

setEffMoveKey( spep_5-3 + 34, ryusen2, 50, 0 , 0 );
setEffMoveKey( spep_5-3 + 184, ryusen2, 50, 0 , 0 );

setEffScaleKey( spep_5-3 + 34, ryusen2, 1.63, 1.61 );
setEffScaleKey( spep_5-3 + 184, ryusen2, 1.63, 1.61 );

setEffRotateKey( spep_5-3 + 34, ryusen2, -135.8 );
setEffRotateKey( spep_5-3 + 184, ryusen2, -135.8 );

setEffRotateKey( spep_5-3 + 34, ryusen2, -135.8 );
setEffRotateKey( spep_5-3 + 184, ryusen2, -135.8 );

ctzuo = entryEffectLife( spep_5-3 + 76,  10012, 58, 0x100, -1, 0, 113.7, -349.1 );--ズオッ

setEffMoveKey( spep_5-3 + 76, ctzuo, 113.7, -349.1 , 0 );
setEffMoveKey( spep_5-3 + 78, ctzuo, 87.8, -321.7 , 0 );
setEffMoveKey( spep_5-3 + 80, ctzuo, 59.9, -302.1 , 0 );
setEffMoveKey( spep_5-3 + 82, ctzuo, 34.8, -271.7 , 0 );
setEffMoveKey( spep_5-3 + 84, ctzuo, -24.7, -248 , 0 );
setEffMoveKey( spep_5-3 + 86, ctzuo, -80.7, -210.6 , 0 );
setEffMoveKey( spep_5-3 + 88, ctzuo, -140.3, -186.9 , 0 );
setEffMoveKey( spep_5-3 + 90, ctzuo, -139.3, -180 , 0 );
setEffMoveKey( spep_5-3 + 92, ctzuo, -141.9, -186.9 , 0 );
setEffMoveKey( spep_5-3 + 94, ctzuo, -140.9, -180.1 , 0 );
setEffMoveKey( spep_5-3 + 96, ctzuo, -143.5, -187 , 0 );
setEffMoveKey( spep_5-3 + 98, ctzuo, -142.5, -180.1 , 0 );
setEffMoveKey( spep_5-3 + 100, ctzuo, -145.1, -187 , 0 );
setEffMoveKey( spep_5-3 + 102, ctzuo, -144.1, -180.1 , 0 );
setEffMoveKey( spep_5-3 + 104, ctzuo, -146.7, -187.1 , 0 );
setEffMoveKey( spep_5-3 + 106, ctzuo, -145.7, -180.2 , 0 );
setEffMoveKey( spep_5-3 + 108, ctzuo, -148.3, -187.1 , 0 );
setEffMoveKey( spep_5-3 + 110, ctzuo, -147.3, -180.2 , 0 );
setEffMoveKey( spep_5-3 + 112, ctzuo, -150, -187.1 , 0 );
setEffMoveKey( spep_5-3 + 114, ctzuo, -149, -180.3 , 0 );
setEffMoveKey( spep_5-3 + 116, ctzuo, -151.6, -187.2 , 0 );
setEffMoveKey( spep_5-3 + 118, ctzuo, -150.6, -180.3 , 0 );
setEffMoveKey( spep_5-3 + 120, ctzuo, -153.2, -187.2 , 0 );
setEffMoveKey( spep_5-3 + 122, ctzuo, -152.2, -180.4 , 0 );
setEffMoveKey( spep_5-3 + 124, ctzuo, -168.3, -188 , 0 );
setEffMoveKey( spep_5-3 + 126, ctzuo, -179.5, -176.9 , 0 );
setEffMoveKey( spep_5-3 + 128, ctzuo, -196.9, -189.4 , 0 );
setEffMoveKey( spep_5-3 + 130, ctzuo, -206.8, -173.6 , 0 );
setEffMoveKey( spep_5-3 + 132, ctzuo, -225.4, -190.9 , 0 );
setEffMoveKey( spep_5-3 + 134, ctzuo, -239.7, -191.6 , 0 );

a=0.5;
b=0.3;
c=2.3;
d=2.0;
e=6.4;
f=4.2;

setEffScaleKey( spep_5-3 + 76, ctzuo, 0.28+a, 0.28+b );
--setEffScaleKey( spep_5-3 + 78, ctzuo, 0.45+a, 0.45+b );
--setEffScaleKey( spep_5-3 + 80, ctzuo, 0.63+a, 0.63+b );
setEffScaleKey( spep_5-3 + 82, ctzuo, 0.8 +c, 0.8 +d );
setEffScaleKey( spep_5-3 + 122, ctzuo, 0.8 +c, 0.8 +d );
--setEffScaleKey( spep_5-3 + 124, ctzuo, 1.08, 1.08 );
--setEffScaleKey( spep_5-3 + 126, ctzuo, 1.37, 1.37 );
--setEffScaleKey( spep_5-3 + 128, ctzuo, 1.65, 1.65 );
--setEffScaleKey( spep_5-3 + 130, ctzuo, 1.93, 1.93 );
--setEffScaleKey( spep_5-3 + 132, ctzuo, 2.22, 2.22 );
setEffScaleKey( spep_5-3 + 134, ctzuo, 2.5 +e, 2.5 +f );

setEffRotateKey( spep_5-3 + 76, ctzuo, -10 );
setEffRotateKey( spep_5-3 + 134, ctzuo, -10 );

setEffAlphaKey( spep_5-3 + 76, ctzuo, 85 );
setEffAlphaKey( spep_5-3 + 78, ctzuo, 170 );
setEffAlphaKey( spep_5-3 + 80, ctzuo, 255 );
setEffAlphaKey( spep_5-3 + 122, ctzuo, 255 );
setEffAlphaKey( spep_5-3 + 124, ctzuo, 212 );
setEffAlphaKey( spep_5-3 + 126, ctzuo, 170 );
setEffAlphaKey( spep_5-3 + 128, ctzuo, 128 );
setEffAlphaKey( spep_5-3 + 130, ctzuo, 85 );
setEffAlphaKey( spep_5-3 + 132, ctzuo, 43 );
setEffAlphaKey( spep_5-3 + 134, ctzuo, 0 );

--白フェード
entryFade( spep_5 + 68, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 178, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_5 + 0, 17 );  --溜める
playSe( spep_5 + 74, 1022 );  --発射

-- ** 次の準備 ** --
spep_6 = spep_5 + 186;

------------------------------------------------------
--気弾着弾
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_09x, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_6 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_6 + 150, finish, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish, 1.1, 1.1 );
setEffScaleKey( spep_6 + 150, finish, 1.1, 1.1 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 150, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 150, finish, 255 );

--集中線
shuchusen5= entryEffectLife( spep_6-3 + 38,  906, 110, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_6-3 + 38, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_6-3 + 148, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_6-3 + 38, shuchusen5, 1, 1 );
setEffScaleKey( spep_6-3 + 148, shuchusen5, 1, 1 );

setEffRotateKey( spep_6-3 + 38, shuchusen5, 180 );
setEffRotateKey( spep_6-3 + 148, shuchusen5, 180 );

setEffAlphaKey( spep_6-3 + 38, shuchusen5, 255 );
setEffAlphaKey( spep_6-3 + 148, shuchusen5, 255 );

-- ** 音 ** --
playSe( spep_6 + 0, 1021 );  --迫る
playSe( spep_6 + 34, 1024 );  --爆発

--白フェード
entryFade( spep_6 + 30, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** ダメージ表示 ** --
dealDamage(spep_6 +36 );
endPhase( spep_6 + 138 );

end

