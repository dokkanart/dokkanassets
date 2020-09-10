--1019070:ザマス(孫悟空)_神裂斬
--sp_effect_a3_00065

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
SP_01=	154908	;--	導入
SP_02=	154909	;--	敵刺し→敵投げ：キャラ
SP_03=	154910	;--	敵刺し→敵投げ：背景
SP_04=	154911	;--	敵刺し→敵投げ：投げ時エフェクト
SP_05=	154912	;--	ラスト爆発

--エフェクト(てき)
SP_01x=	154908	;--	導入	
SP_02x=	154913	;--	敵刺し→敵投げ：キャラ	(敵)
SP_03x=	154910	;--	敵刺し→敵投げ：背景	
SP_04x=	154911	;--	敵刺し→敵投げ：投げ時エフェクト	
SP_05x=	154912	;--	ラスト爆発	

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
-- 気溜め〜突進
------------------------------------------------------
-- ** はじめの準備 ** --
spep_0 = 0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 130, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 130, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 130, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 130, tame, 255 );

--SE
SE0=playSe( spep_0 + 0, 8 );
setSeVolume( spep_0 + 0, 8, 79 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 134, 0,  0, 0, 0, 255 ); --黒 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
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

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 16  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 16  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +28, 190006, 72, 0x100, -1, 0, 70, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +28,  ctgogo,  70,  510);
setEffMoveKey(  spep_0 +100,  ctgogo,  70,  510);

setEffAlphaKey( spep_0 +28, ctgogo, 0 );
setEffAlphaKey( spep_0 + 29, ctgogo, 255 );
setEffAlphaKey( spep_0 + 30, ctgogo, 255 );
setEffAlphaKey( spep_0 + 95, ctgogo, 255 );
setEffAlphaKey( spep_0 + 96, ctgogo, 191 );
setEffAlphaKey( spep_0 + 98, ctgogo, 112 );
setEffAlphaKey( spep_0 + 100, ctgogo, 64 );

setEffRotateKey(  spep_0 +28,  ctgogo,  0);
setEffRotateKey(  spep_0 +100,  ctgogo,  0);

setEffScaleKey(  spep_0 +28,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +90,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +100,  ctgogo, 1.07, 1.07 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 18,  906, 110, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 18, shuchusen1, 110, 20 );
setEffMoveKey( spep_0-3 + 18, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 128, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 18, shuchusen1, 1, 1 );
setEffScaleKey( spep_0-3 + 128, shuchusen1, 1, 1 );

setEffRotateKey( spep_0-3 + 18, shuchusen1, 180 );
setEffRotateKey( spep_0-3 + 128, shuchusen1, 180 );

setEffAlphaKey( spep_0-3 + 18, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 128, shuchusen1, 255 );

--白フェード
entryFade( spep_0+68, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0+122, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_0 + 28, 1018 );

se_1225 = playSe( spep_0 + 26, 1225 );
setSeVolume( spep_0 + 26, 1225, 0 );
setSeVolume( spep_0 + 59, 1225, 18 );
setSeVolume( spep_0 + 60, 1225, 36 );
setSeVolume( spep_0 + 61, 1225, 54 );
setSeVolume( spep_0 + 62, 1225, 72 );
setSeVolume( spep_0 + 63, 1225, 90 );
setSeVolume( spep_0 + 64, 1225, 100 );
se_1173 = playSe( spep_0 + 30, 1173 );
setSeVolume( spep_0 + 30, 1173, 0 );
setSeVolume( spep_0 + 64, 1173, 20 );
setSeVolume( spep_0 + 65, 1173, 40 );
setSeVolume( spep_0 + 66, 1173, 60 );
setSeVolume( spep_0 + 67, 1173, 80 );
setSeVolume( spep_0 + 68, 1173, 100 );
se_1154 = playSe( spep_0 + 51, 1154 );
setSeVolume( spep_0 + 51, 1154, 0 );
setSeVolume( spep_0 + 61, 1154, 10 );
setSeVolume( spep_0 + 62, 1154, 20 );
setSeVolume( spep_0 + 63, 1154, 30 );
setSeVolume( spep_0 + 64, 1154, 40 );
se_1221 = playSe( spep_0 + 59, 1221 );
setSeVolume( spep_0 + 59, 1221, 178 );

stopSe( spep_0 + 102, se_1173, 19 );
stopSe( spep_0 + 85, se_1154, 34 );

--次の準備
spep_1 = spep_0+130;

------------------------------------------------------
-- カード(90F)
------------------------------------------------------

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_1, SE_05);
    speff = entryEffect( spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
    setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end
    
    
    --[[speff = entryEffect(  spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
    setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え]]
    
    shuchusen = entryEffectLife( spep_1, 906, 90, 0x100,  -1, 0,  0,  0);
    
    setEffMoveKey(  spep_1,  shuchusen,  0,  0);
    setEffMoveKey(  spep_1+90,  shuchusen,  0,  0);
    setEffScaleKey(  spep_1,  shuchusen,  1.6,  1.6);
    setEffScaleKey(  spep_1+90,  shuchusen,  1.6,  1.6);
    setEffRotateKey(  spep_1,  shuchusen,  0);
    setEffRotateKey(  spep_1+90,  shuchusen,  0);
    setEffAlphaKey(  spep_1,  shuchusen,  255);
    setEffAlphaKey(  spep_1+90,  shuchusen,  255);
    
    spep_2 = spep_1+90;

-- ** 音 ** --
--playSe( spep_1 + 0, SE_05 );
stopSe( spep_1 + 6, se_1225, 0 );
stopSe( spep_1 + 6, se_1221, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 98, 0,  0, 0, 0, 255 ); --黒 背景

--白フェード
entryFade( spep_1 + 80, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 敵刺し→敵投げ
------------------------------------------------------
-- ** エフェクト等 ** --
punching_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, punching_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 336, punching_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, punching_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 336, punching_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punching_f, 0 );
setEffRotateKey( spep_2 + 336, punching_f, 0 );
setEffAlphaKey( spep_2 + 0, punching_f, 255 );
setEffAlphaKey( spep_2 + 158, punching_f, 255 );
setEffAlphaKey( spep_2 + 159, punching_f, 0 );
setEffAlphaKey( spep_2 + 336, punching_f, 0 );

-- ** エフェクト等 ** --
punching_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, punching_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 260, punching_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, punching_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 260, punching_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punching_b, 0 );
setEffRotateKey( spep_2 + 260, punching_b, 0 );
setEffAlphaKey( spep_2 + 0, punching_b, 255 );
setEffAlphaKey( spep_2 + 260, punching_b, 255 );

-- ** エフェクト等 ** --
punching_bg = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, punching_bg, 0, 0, 0 );
setEffMoveKey( spep_2 + 206, punching_bg, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, punching_bg, 1.0, 1.0 );
setEffScaleKey( spep_2 + 206, punching_bg, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punching_bg, 0 );
setEffRotateKey( spep_2 + 206, punching_bg, 0 );
setEffAlphaKey( spep_2 + 0, punching_bg, 255 );
setEffAlphaKey( spep_2 + 206, punching_bg, 255 );

-- ** エフェクト等 ** --
punching_f2 = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, punching_f2, 0, 0, 0 );
setEffMoveKey( spep_2 + 336, punching_f2, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, punching_f2, 1.0, 1.0 );
setEffScaleKey( spep_2 + 336, punching_f2, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punching_f2, 0 );
setEffRotateKey( spep_2 + 336, punching_f2, 0 );
setEffAlphaKey( spep_2 + 0, punching_f2, 0 );
setEffAlphaKey( spep_2 + 158, punching_f2, 0 );
setEffAlphaKey( spep_2 + 159, punching_f2, 255 );
setEffAlphaKey( spep_2 + 336, punching_f2, 255 );

--敵の動き
setDisp( spep_2-3 + 24, 1, 1 );
setDisp( spep_2-3 + 58, 1, 0 );

changeAnime( spep_2-3 + 24, 1, 100 );

setMoveKey( spep_2-3 + 24, 1, 723.7, 66.1 , 0 );
setMoveKey( spep_2-3 + 26, 1, 694.4, 65.2 , 0 );
setMoveKey( spep_2-3 + 28, 1, 662.2, 64.4 , 0 );
setMoveKey( spep_2-3 + 30, 1, 627, 63.5 , 0 );
setMoveKey( spep_2-3 + 32, 1, 589, 62.7 , 0 );
setMoveKey( spep_2-3 + 34, 1, 548.1, 61.8 , 0 );
setMoveKey( spep_2-3 + 36, 1, 504.5, 61 , 0 );
setMoveKey( spep_2-3 + 38, 1, 458.3, 60.1 , 0 );
setMoveKey( spep_2-3 + 40, 1, 409.6, 59.3 , 0 );
setMoveKey( spep_2-3 + 42, 1, 393.5, 60.8 , 0 );
setMoveKey( spep_2-3 + 44, 1, 373, 62.3 , 0 );
setMoveKey( spep_2-3 + 46, 1, 348, 63.9 , 0 );
setMoveKey( spep_2-3 + 48, 1, 318.2, 65.4 , 0 );
setMoveKey( spep_2-3 + 50, 1, 283.7, 67 , 0 );
setMoveKey( spep_2-3 + 52, 1, 244, 68.5 , 0 );
setMoveKey( spep_2-3 + 54, 1, 199.2, 70 , 0 );
setMoveKey( spep_2-3 + 58, 1, 149, 71.6 , 0 );
--seMoveKey( spep_2-3 + 58, 1, 109.8, 58.2 , 0 );

setScaleKey( spep_2-3 + 24, 1, 1.52, 1.52 );
setScaleKey( spep_2-3 + 26, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 28, 1, 1.49, 1.49 );
setScaleKey( spep_2-3 + 30, 1, 1.48, 1.48 );
setScaleKey( spep_2-3 + 32, 1, 1.47, 1.47 );
setScaleKey( spep_2-3 + 34, 1, 1.45, 1.45 );
setScaleKey( spep_2-3 + 36, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 38, 1, 1.43, 1.43 );
setScaleKey( spep_2-3 + 40, 1, 1.42, 1.42 );
setScaleKey( spep_2-3 + 42, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 44, 1, 1.47, 1.47 );
setScaleKey( spep_2-3 + 46, 1, 1.49, 1.49 );
setScaleKey( spep_2-3 + 48, 1, 1.52, 1.52 );
setScaleKey( spep_2-3 + 50, 1, 1.54, 1.54 );
setScaleKey( spep_2-3 + 52, 1, 1.57, 1.57 );
setScaleKey( spep_2-3 + 54, 1, 1.59, 1.59 );
setScaleKey( spep_2-3 + 58, 1, 1.62, 1.62 );
--seScaleKey( spep_2-3 + 58, 1, 1.35, 1.35 );

setRotateKey( spep_2-3 + 24, 1, 0 );
setRotateKey( spep_2-3 + 58, 1, 0 );

--敵の動き
setDisp( spep_2-3 + 76, 1, 1 );
setDisp( spep_2-3 + 176, 1, 0 );

changeAnime( spep_2-3 + 76, 1, 106 );
changeAnime( spep_2-3 + 78, 1, 108 );
changeAnime( spep_2-3 + 162, 1, 7 );

setMoveKey( spep_2-3 + 76,1, 218.2, 128.2 , 0 );
setMoveKey( spep_2-3 + 77,1, 218.2, 128.2 , 0 );

setMoveKey( spep_2-3 + 78, 1, 196.6, 99.1 , 0 );
setMoveKey( spep_2-3 + 80, 1, 210.3, 98.2 , 0 );
setMoveKey( spep_2-3 + 82, 1, 32.5, 17.1 , 0 );
setMoveKey( spep_2-3 + 84, 1, 5.7, -13.2 , 0 );
setMoveKey( spep_2-3 + 85, 1, 5.7, -13.2 , 0 );
setMoveKey( spep_2-3 + 86, 1, 126.7, 75.1 , 0 );
setMoveKey( spep_2-3 + 87, 1, 126.7, 75.1 , 0 );
setMoveKey( spep_2-3 + 88, 1, 133.5, 15 , 0 );
setMoveKey( spep_2-3 + 89, 1, 133.5, 15 , 0 );
setMoveKey( spep_2-3 + 90, 1, 113.9, 57.2 , 0 );
setMoveKey( spep_2-3 + 92, 1, 127.8, 58.6 , 0 );
setMoveKey( spep_2-3 + 94, 1, 134.7, 68.1 , 0 );
setMoveKey( spep_2-3 + 96, 1, 129.7, 65.7 , 0 );
setMoveKey( spep_2-3 + 98, 1, 140.6, 71.2 , 0 );
setMoveKey( spep_2-3 + 100, 1, 139.6, 60.8 , 0 );
setMoveKey( spep_2-3 + 102, 1, 146.5, 74.4 , 0 );
setMoveKey( spep_2-3 + 104, 1, 149.5, 75.9 , 0 );
setMoveKey( spep_2-3 + 124, 1, 149.5, 75.9 , 0 );
setMoveKey( spep_2-3 + 126, 1, 151.2, 76.2 , 0 );
setMoveKey( spep_2-3 + 128, 1, 149, 68.4 , 0 );
setMoveKey( spep_2-3 + 130, 1, 154.7, 76.8 , 0 );
setMoveKey( spep_2-3 + 132, 1, 152.4, 68.9 , 0 );
setMoveKey( spep_2-3 + 134, 1, 158.2, 77.4 , 0 );
setMoveKey( spep_2-3 + 136, 1, 155.9, 69.4 , 0 );
setMoveKey( spep_2-3 + 138, 1, 162, 78 , 0 );
setMoveKey( spep_2-3 + 140, 1, 158.2, 60.6 , 0 );
setMoveKey( spep_2-3 + 142, 1, 162.7, 59.7 , 0 );
setMoveKey( spep_2-3 + 144, 1, 158.8, 41.4 , 0 );
setMoveKey( spep_2-3 + 146, 1, 164.3, 47.2 , 0 );
setMoveKey( spep_2-3 + 148, 1, 161.4, 35.7 , 0 );
setMoveKey( spep_2-3 + 150, 1, 167, 41.4 , 0 );
setMoveKey( spep_2-3 + 152, 1, 164, 29.6 , 0 );
setMoveKey( spep_2-3 + 154, 1, 169.6, 35.2 , 0 );
setMoveKey( spep_2-3 + 156, 1, 165.4, 24 , 0 );
setMoveKey( spep_2-3 + 158, 1, 169.9, 30.3 , 0 );
setMoveKey( spep_2-3 + 160, 1, 165.7, 19 , 0 );
setMoveKey( spep_2-3 + 161, 1, 165.7, 19 , 0 );

setMoveKey( spep_2-3 + 162, 1, 26.9, -191.1 , 0 );
setMoveKey( spep_2-3 + 164, 1, -19.2, -268.4 , 0 );
setMoveKey( spep_2-3 + 166, 1, 100.7, -216.9 , 0 );
setMoveKey( spep_2-3 + 168, 1, 99.6, -318.4 , 0 );
setMoveKey( spep_2-3 + 170, 1, 72.2, -313.8 , 0 );
setMoveKey( spep_2-3 + 172, 1, 78.5, -349.1 , 0 );
setMoveKey( spep_2-3 + 174, 1, 92.2, -367.4 , 0 );
setMoveKey( spep_2-3 + 176, 1, 97.8, -399.8 , 0 );

setScaleKey( spep_2-3 + 76,1, 1.51, 1.51 );
setScaleKey( spep_2-3 + 77,1, 1.51, 1.51 );

setScaleKey( spep_2-3 + 78, 1, 1.67, 1.67 );
setScaleKey( spep_2-3 + 80, 1, 1.69, 1.69 );
setScaleKey( spep_2-3 + 82, 1, 1.41, 1.41 );
setScaleKey( spep_2-3 + 84, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 86, 1, 1.47, 1.47 );
setScaleKey( spep_2-3 + 88, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 90, 1, 1.52, 1.52 );
setScaleKey( spep_2-3 + 92, 1, 1.55, 1.55 );
setScaleKey( spep_2-3 + 94, 1, 1.56, 1.56 );
setScaleKey( spep_2-3 + 96, 1, 1.56, 1.56 );
setScaleKey( spep_2-3 + 98, 1, 1.57, 1.57 );
setScaleKey( spep_2-3 + 100, 1, 1.57, 1.57 );
setScaleKey( spep_2-3 + 102, 1, 1.58, 1.58 );
setScaleKey( spep_2-3 + 124, 1, 1.58, 1.58 );
setScaleKey( spep_2-3 + 126, 1, 1.62, 1.62 );
setScaleKey( spep_2-3 + 128, 1, 1.66, 1.66 );
setScaleKey( spep_2-3 + 130, 1, 1.69, 1.69 );
setScaleKey( spep_2-3 + 132, 1, 1.73, 1.73 );
setScaleKey( spep_2-3 + 134, 1, 1.77, 1.77 );
setScaleKey( spep_2-3 + 136, 1, 1.81, 1.81 );
setScaleKey( spep_2-3 + 138, 1, 1.85, 1.85 );
setScaleKey( spep_2-3 + 140, 1, 1.89, 1.89 );
setScaleKey( spep_2-3 + 142, 1, 1.93, 1.93 );
setScaleKey( spep_2-3 + 144, 1, 1.97, 1.97 );
setScaleKey( spep_2-3 + 146, 1, 2.01, 2.01 );
setScaleKey( spep_2-3 + 148, 1, 2.05, 2.05 );
setScaleKey( spep_2-3 + 150, 1, 2.09, 2.09 );
setScaleKey( spep_2-3 + 152, 1, 2.13, 2.13 );
setScaleKey( spep_2-3 + 154, 1, 2.17, 2.17 );
setScaleKey( spep_2-3 + 156, 1, 2.18, 2.18 );
setScaleKey( spep_2-3 + 158, 1, 2.19, 2.19 );
setScaleKey( spep_2-3 + 161, 1, 2.19, 2.19 );

setScaleKey( spep_2-3 + 162, 1, 0.99, 0.99 );
setScaleKey( spep_2-3 + 164, 1, 1.16, 1.16 );
setScaleKey( spep_2-3 + 166, 1, 1.32, 1.32 );
setScaleKey( spep_2-3 + 168, 1, 1.47, 1.47 );
setScaleKey( spep_2-3 + 170, 1, 1.62, 1.62 );
setScaleKey( spep_2-3 + 172, 1, 1.76, 1.76 );
setScaleKey( spep_2-3 + 174, 1, 1.9, 1.9 );
setScaleKey( spep_2-3 + 176, 1, 2.03, 2.03 );

setRotateKey( spep_2-3 + 76,1, -39.1 );
setRotateKey( spep_2-3 + 77,1, -39.1 );

setRotateKey( spep_2-3 + 78, 1, -0.2 );
setRotateKey( spep_2-3 + 136, 1, -0.2 );
setRotateKey( spep_2-3 + 138, 1, 0 );
setRotateKey( spep_2-3 + 161, 1, 0 );

setRotateKey( spep_2-3 + 162, 1, 0 );
setRotateKey( spep_2-3 + 176, 1, 0 );

--文字エントリー
ctzun = entryEffectLife( spep_2-3 + 86,  10016, 10, 0x100, -1, 0, 143.6, 293.9 );--ズンッ

setEffMoveKey( spep_2-3 + 86, ctzun, 143.6, 293.9 , 0 );
setEffMoveKey( spep_2-3 + 88, ctzun, 158.4, 303.3 , 0 );
setEffMoveKey( spep_2-3 + 90, ctzun, 173.2, 312.6 , 0 );
setEffMoveKey( spep_2-3 + 92, ctzun, 188.1, 322 , 0 );
setEffMoveKey( spep_2-3 + 94, ctzun, 202.8, 331.2 , 0 );
setEffMoveKey( spep_2-3 + 96, ctzun, 217.6, 340.5 , 0 );

setEffScaleKey( spep_2-3 + 86, ctzun, 2.36, 2.36 );
setEffScaleKey( spep_2-3 + 88, ctzun, 2.44, 2.44 );
setEffScaleKey( spep_2-3 + 90, ctzun, 2.52, 2.52 );
setEffScaleKey( spep_2-3 + 92, ctzun, 2.61, 2.61 );
setEffScaleKey( spep_2-3 + 94, ctzun, 2.7, 2.7 );
setEffScaleKey( spep_2-3 + 96, ctzun, 2.79, 2.79 );

setEffRotateKey( spep_2-3 + 86, ctzun, 30 );
setEffRotateKey( spep_2-3 + 88, ctzun, 30 );
setEffRotateKey( spep_2-3 + 90, ctzun, 29.9 );
setEffRotateKey( spep_2-3 + 94, ctzun, 29.9 );
setEffRotateKey( spep_2-3 + 96, ctzun, 30 );

setEffAlphaKey( spep_2-3 + 86, ctzun, 255 );
setEffAlphaKey( spep_2-3 + 92, ctzun, 255 );
setEffAlphaKey( spep_2-3 + 94, ctzun, 128 );
setEffAlphaKey( spep_2-3 + 96, ctzun, 0 );

--文字エントリー
ctzuo = entryEffectLife( spep_2-3 + 168,  10012, 16,0x100, -1, 0, -112.8, 285.7 );

setEffMoveKey( spep_2-3 + 168, ctzuo, -112.8, 285.7 , 0 );
setEffMoveKey( spep_2-3 + 170, ctzuo, -113.1, 287.2 , 0 );
setEffMoveKey( spep_2-3 + 172, ctzuo, -107.7, 298.4 , 0 );
setEffMoveKey( spep_2-3 + 174, ctzuo, -108.9, 298.2 , 0 );
setEffMoveKey( spep_2-3 + 176, ctzuo, -102.5, 311.1 , 0 );
setEffMoveKey( spep_2-3 + 178, ctzuo, -105.4, 303.2 , 0 );
setEffMoveKey( spep_2-3 + 180, ctzuo, -99.3, 310.7 , 0 );
setEffMoveKey( spep_2-3 + 182, ctzuo, -102.4, 302.4 , 0 );
setEffMoveKey( spep_2-3 + 184, ctzuo, -100.9, 302 , 0 );

a=2.1;

setEffScaleKey( spep_2-3 + 168, ctzuo, 0.52 +1.3, 0.52 +1.3 );
--setEffScaleKey( spep_2-3 + 170, ctzuo, 0.64 +a, 0.64 +a );
--setEffScaleKey( spep_2-3 + 172, ctzuo, 0.75 +a, 0.75 +a );
--setEffScaleKey( spep_2-3 + 174, ctzuo, 0.86 +a, 0.86 +a );
--setEffScaleKey( spep_2-3 + 176, ctzuo, 0.97 +a, 0.97 +a );
setEffScaleKey( spep_2-3 + 178, ctzuo, 1 +a, 1 +a );
setEffScaleKey( spep_2-3 + 180, ctzuo, 1.03 +a, 1.03 +a );
setEffScaleKey( spep_2-3 + 182, ctzuo, 1.06 +a, 1.06 +a );
setEffScaleKey( spep_2-3 + 184, ctzuo, 1.09 +a, 1.09 +a );

setEffRotateKey( spep_2-3 + 168, ctzuo, 15 );
setEffRotateKey( spep_2-3 + 170, ctzuo, 15 );
setEffRotateKey( spep_2-3 + 172, ctzuo, 14.9 );
setEffRotateKey( spep_2-3 + 174, ctzuo, 14.9 );
setEffRotateKey( spep_2-3 + 176, ctzuo, 14.8 );
setEffRotateKey( spep_2-3 + 178, ctzuo, 14.9 );
setEffRotateKey( spep_2-3 + 180, ctzuo, 14.9 );
setEffRotateKey( spep_2-3 + 182, ctzuo, 15 );
setEffRotateKey( spep_2-3 + 184, ctzuo, 15 );

setEffAlphaKey( spep_2-3 + 168, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 176, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 178, ctzuo, 191 );
setEffAlphaKey( spep_2-3 + 180, ctzuo, 128 );
setEffAlphaKey( spep_2-3 + 182, ctzuo, 64 );
setEffAlphaKey( spep_2-3 + 184, ctzuo, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_2-3 + 58,  906, 23, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 58, shuchusen2, 23, 20 );
setEffMoveKey( spep_2-3 + 58, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2-2 + 80, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 58, shuchusen2, 1, 1 );
setEffScaleKey( spep_2-2 + 80, shuchusen2, 1, 1 );

setEffRotateKey( spep_2-3 + 58, shuchusen2, 180 );
setEffRotateKey( spep_2-2 + 80, shuchusen2, 180 );

setEffAlphaKey( spep_2-3 + 58, shuchusen2, 255 );
setEffAlphaKey( spep_2-2 + 80, shuchusen2, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_2-3 + 166,  906, 18, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 166, shuchusen3, 18, 20 );
setEffMoveKey( spep_2-3 + 166, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 184, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 166, shuchusen3, 1, 1 );
setEffScaleKey( spep_2-3 + 184, shuchusen3, 1, 1 );

setEffRotateKey( spep_2-3 + 166, shuchusen3, 180 );
setEffRotateKey( spep_2-3 + 184, shuchusen3, 180 );

setEffAlphaKey( spep_2-3 + 166, shuchusen3, 255 );
setEffAlphaKey( spep_2-3 + 184, shuchusen3, 255 );

--SE
se_0009 = playSe( spep_2 + 0, 9 );
se_1183 = playSe( spep_2 + 0, 1183 );
playSe( spep_2 + 39, 1072 );
setSeVolume( spep_2 + 39, 1072, 0 );
setSeVolume( spep_2 + 55, 1072, 12 );
setSeVolume( spep_2 + 56, 1072, 24 );
setSeVolume( spep_2 + 57, 1072, 36 );
setSeVolume( spep_2 + 58, 1072, 48 );
setSeVolume( spep_2 + 59, 1072, 60 );
setSeVolume( spep_2 + 60, 1072, 72 );
setSeVolume( spep_2 + 61, 1072, 84 );
setSeVolume( spep_2 + 62, 1072, 100 );
playSe( spep_2 + 87, 1153 );
setSeVolume( spep_2 + 87, 1153, 79 );
playSe( spep_2 + 87, 1015 );
setSeVolume( spep_2 + 87, 1015, 71 );
playSe( spep_2 + 94, 1032 );
se_1146 = playSe( spep_2 + 146, 1146 );
setSeVolume( spep_2 + 146, 1146, 0 );
setSeVolume( spep_2 + 162, 1146, 8 );
setSeVolume( spep_2 + 163, 1146, 16 );
setSeVolume( spep_2 + 164, 1146, 24 );
setSeVolume( spep_2 + 165, 1146, 32 );
setSeVolume( spep_2 + 166, 1146, 40 );
setSeVolume( spep_2 + 167, 1146, 48 );
setSeVolume( spep_2 + 168, 1146, 56 );
setSeVolume( spep_2 + 169, 1146, 63 );
playSe( spep_2 + 156, 1061 );
playSe( spep_2 + 158, 1003 );
setSeVolume( spep_2 + 158, 1003, 71 );
playSe( spep_2 + 164, 1032 );
playSe( spep_2 + 170, 1004 );
setSeVolume( spep_2 + 170, 1004, 71 );
playSe( spep_2 + 202, 1003 );
se_0009 = playSe( spep_2 + 229, 9 );
se_1182 = playSe( spep_2 + 229, 1182 );
playSe( spep_2 + 251, 1142 );
playSe( spep_2 + 252, 1047 );
setSeVolume( spep_2 + 252, 1047, 71 );
playSe( spep_2 + 253, 1032 );
se_1172 = playSe( spep_2 + 253, 1172 );
setSeVolume( spep_2 + 253, 1172, 50 );
playSe( spep_2 + 255, 1046 );
playSe( spep_2 + 258, 1179 );
setSeVolume( spep_2 + 258, 1179, 79 );
playSe( spep_2 + 263, 1031 );
setSeVolume( spep_2 + 263, 1031, 79 );

stopSe( spep_2 + 67, se_0009, 0 );
stopSe( spep_2 + 67, se_1183, 0 );
stopSe( spep_2 + 169, se_1146, 29 );
stopSe( spep_2 + 260, se_0009, 0 );
stopSe( spep_2 + 260, se_1182, 0 );
stopSe( spep_2 + 275, se_1172, 96 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 338, 0,  0, 0, 0, 255 ); --黒 背景

--白フェード
entryFade( spep_2+157, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 332;

------------------------------------------------------
-- ラスト爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_3 + 140, finish, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_3 + 140, finish, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish, 0 );
setEffRotateKey( spep_3 + 140, finish, 0 );
setEffAlphaKey( spep_3 + 0, finish, 255 );
setEffAlphaKey( spep_3 + 140, finish, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_3+5,  906, 135, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 5, shuchusen4, 135, 20 );
setEffMoveKey( spep_3+5, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_3 + 140, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_3+5, shuchusen4, 1, 1 );
setEffScaleKey( spep_3 + 140, shuchusen4, 1, 1 );

setEffRotateKey( spep_3+5, shuchusen4, 180 );
setEffRotateKey( spep_3 + 140, shuchusen4, 180 );

setEffAlphaKey( spep_3+5, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 140, shuchusen4, 255 );

--SE
playSe( spep_3 + 22, 1024 );
playSe( spep_3 + 22, 1159 );

setSeVolume( spep_3 + 22, 1159, 79 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 140, 0,  0, 0, 0, 255 ); --黒 背景

--白フェード
entryFade( spep_3+14, 0, 3, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ダメージ表示
dealDamage(spep_3+20);
endPhase( spep_3 + 120 );
else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 気溜め〜突進
------------------------------------------------------
-- ** はじめの準備 ** --
spep_0 = 0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 130, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 130, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 130, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 130, tame, 255 );

--SE
SE0=playSe( spep_0 + 0, 8 );
setSeVolume( spep_0 + 0, 8, 79 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 134, 0,  0, 0, 0, 255 ); --黒 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
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

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 16  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 16  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +28, 190006, 72, 0x100, -1, 0, 20, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +28,  ctgogo,  20,  510);
setEffMoveKey(  spep_0 +100,  ctgogo,  20,  510);

setEffAlphaKey( spep_0 +28, ctgogo, 0 );
setEffAlphaKey( spep_0 + 29, ctgogo, 255 );
setEffAlphaKey( spep_0 + 30, ctgogo, 255 );
setEffAlphaKey( spep_0 + 95, ctgogo, 255 );
setEffAlphaKey( spep_0 + 96, ctgogo, 191 );
setEffAlphaKey( spep_0 + 98, ctgogo, 112 );
setEffAlphaKey( spep_0 + 100, ctgogo, 64 );

setEffRotateKey(  spep_0 +28,  ctgogo,  0);
setEffRotateKey(  spep_0 +100,  ctgogo,  0);

setEffScaleKey(  spep_0 +28,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +90,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +100,  ctgogo, -1.07, 1.07 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 18,  906, 110, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 18, shuchusen1, 110, 20 );
setEffMoveKey( spep_0-3 + 18, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 128, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 18, shuchusen1, 1, 1 );
setEffScaleKey( spep_0-3 + 128, shuchusen1, 1, 1 );

setEffRotateKey( spep_0-3 + 18, shuchusen1, 180 );
setEffRotateKey( spep_0-3 + 128, shuchusen1, 180 );

setEffAlphaKey( spep_0-3 + 18, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 128, shuchusen1, 255 );

--白フェード
entryFade( spep_0+68, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0+122, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_0 + 28, 1018 );

se_1225 = playSe( spep_0 + 26, 1225 );
setSeVolume( spep_0 + 26, 1225, 0 );
setSeVolume( spep_0 + 59, 1225, 18 );
setSeVolume( spep_0 + 60, 1225, 36 );
setSeVolume( spep_0 + 61, 1225, 54 );
setSeVolume( spep_0 + 62, 1225, 72 );
setSeVolume( spep_0 + 63, 1225, 90 );
setSeVolume( spep_0 + 64, 1225, 100 );
se_1173 = playSe( spep_0 + 30, 1173 );
setSeVolume( spep_0 + 30, 1173, 0 );
setSeVolume( spep_0 + 64, 1173, 20 );
setSeVolume( spep_0 + 65, 1173, 40 );
setSeVolume( spep_0 + 66, 1173, 60 );
setSeVolume( spep_0 + 67, 1173, 80 );
setSeVolume( spep_0 + 68, 1173, 100 );
se_1154 = playSe( spep_0 + 51, 1154 );
setSeVolume( spep_0 + 51, 1154, 0 );
setSeVolume( spep_0 + 61, 1154, 10 );
setSeVolume( spep_0 + 62, 1154, 20 );
setSeVolume( spep_0 + 63, 1154, 30 );
setSeVolume( spep_0 + 64, 1154, 40 );
se_1221 = playSe( spep_0 + 59, 1221 );
setSeVolume( spep_0 + 59, 1221, 178 );

stopSe( spep_0 + 102, se_1173, 19 );
stopSe( spep_0 + 85, se_1154, 34 );

--次の準備
spep_1 = spep_0+130;

------------------------------------------------------
-- カード(90F)
------------------------------------------------------

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_1, SE_05);
    speff = entryEffect( spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
    setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end
    
    
    --[[speff = entryEffect(  spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
    setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え]]
    
    shuchusen = entryEffectLife( spep_1, 906, 90, 0x100,  -1, 0,  0,  0);
    
    setEffMoveKey(  spep_1,  shuchusen,  0,  0);
    setEffMoveKey(  spep_1+90,  shuchusen,  0,  0);
    setEffScaleKey(  spep_1,  shuchusen,  1.6,  1.6);
    setEffScaleKey(  spep_1+90,  shuchusen,  1.6,  1.6);
    setEffRotateKey(  spep_1,  shuchusen,  0);
    setEffRotateKey(  spep_1+90,  shuchusen,  0);
    setEffAlphaKey(  spep_1,  shuchusen,  255);
    setEffAlphaKey(  spep_1+90,  shuchusen,  255);
    
    spep_2 = spep_1+90;

-- ** 音 ** --
--playSe( spep_1 + 0, SE_05 );
stopSe( spep_1 + 6, se_1225, 0 );
stopSe( spep_1 + 6, se_1221, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 98, 0,  0, 0, 0, 255 ); --黒 背景

--白フェード
entryFade( spep_1 + 80, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 敵刺し→敵投げ
------------------------------------------------------
-- ** エフェクト等 ** --
punching_f = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, punching_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 336, punching_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, punching_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 336, punching_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punching_f, 0 );
setEffRotateKey( spep_2 + 336, punching_f, 0 );
setEffAlphaKey( spep_2 + 0, punching_f, 255 );
setEffAlphaKey( spep_2 + 158, punching_f, 255 );
setEffAlphaKey( spep_2 + 159, punching_f, 0 );
setEffAlphaKey( spep_2 + 336, punching_f, 0 );

-- ** エフェクト等 ** --
punching_b = entryEffect( spep_2 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, punching_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 260, punching_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, punching_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 260, punching_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punching_b, 0 );
setEffRotateKey( spep_2 + 260, punching_b, 0 );
setEffAlphaKey( spep_2 + 0, punching_b, 255 );
setEffAlphaKey( spep_2 + 260, punching_b, 255 );

-- ** エフェクト等 ** --
punching_bg = entryEffect( spep_2 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, punching_bg, 0, 0, 0 );
setEffMoveKey( spep_2 + 206, punching_bg, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, punching_bg, 1.0, 1.0 );
setEffScaleKey( spep_2 + 206, punching_bg, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punching_bg, 0 );
setEffRotateKey( spep_2 + 206, punching_bg, 0 );
setEffAlphaKey( spep_2 + 0, punching_bg, 255 );
setEffAlphaKey( spep_2 + 206, punching_bg, 255 );

-- ** エフェクト等 ** --
punching_f2 = entryEffect( spep_2 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, punching_f2, 0, 0, 0 );
setEffMoveKey( spep_2 + 336, punching_f2, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, punching_f2, 1.0, 1.0 );
setEffScaleKey( spep_2 + 336, punching_f2, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punching_f2, 0 );
setEffRotateKey( spep_2 + 336, punching_f2, 0 );
setEffAlphaKey( spep_2 + 0, punching_f2, 0 );
setEffAlphaKey( spep_2 + 158, punching_f2, 0 );
setEffAlphaKey( spep_2 + 159, punching_f2, 255 );
setEffAlphaKey( spep_2 + 336, punching_f2, 255 );

--敵の動き
setDisp( spep_2-3 + 24, 1, 1 );
setDisp( spep_2-3 + 58, 1, 0 );

changeAnime( spep_2-3 + 24, 1, 100 );

setMoveKey( spep_2-3 + 24, 1, 723.7, 66.1 , 0 );
setMoveKey( spep_2-3 + 26, 1, 694.4, 65.2 , 0 );
setMoveKey( spep_2-3 + 28, 1, 662.2, 64.4 , 0 );
setMoveKey( spep_2-3 + 30, 1, 627, 63.5 , 0 );
setMoveKey( spep_2-3 + 32, 1, 589, 62.7 , 0 );
setMoveKey( spep_2-3 + 34, 1, 548.1, 61.8 , 0 );
setMoveKey( spep_2-3 + 36, 1, 504.5, 61 , 0 );
setMoveKey( spep_2-3 + 38, 1, 458.3, 60.1 , 0 );
setMoveKey( spep_2-3 + 40, 1, 409.6, 59.3 , 0 );
setMoveKey( spep_2-3 + 42, 1, 393.5, 60.8 , 0 );
setMoveKey( spep_2-3 + 44, 1, 373, 62.3 , 0 );
setMoveKey( spep_2-3 + 46, 1, 348, 63.9 , 0 );
setMoveKey( spep_2-3 + 48, 1, 318.2, 65.4 , 0 );
setMoveKey( spep_2-3 + 50, 1, 283.7, 67 , 0 );
setMoveKey( spep_2-3 + 52, 1, 244, 68.5 , 0 );
setMoveKey( spep_2-3 + 54, 1, 199.2, 70 , 0 );
setMoveKey( spep_2-3 + 58, 1, 149, 71.6 , 0 );
--seMoveKey( spep_2-3 + 58, 1, 109.8, 58.2 , 0 );

setScaleKey( spep_2-3 + 24, 1, 1.52, 1.52 );
setScaleKey( spep_2-3 + 26, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 28, 1, 1.49, 1.49 );
setScaleKey( spep_2-3 + 30, 1, 1.48, 1.48 );
setScaleKey( spep_2-3 + 32, 1, 1.47, 1.47 );
setScaleKey( spep_2-3 + 34, 1, 1.45, 1.45 );
setScaleKey( spep_2-3 + 36, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 38, 1, 1.43, 1.43 );
setScaleKey( spep_2-3 + 40, 1, 1.42, 1.42 );
setScaleKey( spep_2-3 + 42, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 44, 1, 1.47, 1.47 );
setScaleKey( spep_2-3 + 46, 1, 1.49, 1.49 );
setScaleKey( spep_2-3 + 48, 1, 1.52, 1.52 );
setScaleKey( spep_2-3 + 50, 1, 1.54, 1.54 );
setScaleKey( spep_2-3 + 52, 1, 1.57, 1.57 );
setScaleKey( spep_2-3 + 54, 1, 1.59, 1.59 );
setScaleKey( spep_2-3 + 58, 1, 1.62, 1.62 );
--seScaleKey( spep_2-3 + 58, 1, 1.35, 1.35 );

setRotateKey( spep_2-3 + 24, 1, 0 );
setRotateKey( spep_2-3 + 58, 1, 0 );

--敵の動き
setDisp( spep_2-3 + 76, 1, 1 );
setDisp( spep_2-3 + 176, 1, 0 );

changeAnime( spep_2-3 + 76, 1, 106 );
changeAnime( spep_2-3 + 78, 1, 108 );
changeAnime( spep_2-3 + 162, 1, 7 );

setMoveKey( spep_2-3 + 76,1, 218.2, 128.2 , 0 );
setMoveKey( spep_2-3 + 77,1, 218.2, 128.2 , 0 );

setMoveKey( spep_2-3 + 78, 1, 196.6, 99.1 , 0 );
setMoveKey( spep_2-3 + 80, 1, 210.3, 98.2 , 0 );
setMoveKey( spep_2-3 + 82, 1, 32.5, 17.1 , 0 );
setMoveKey( spep_2-3 + 84, 1, 5.7, -13.2 , 0 );
setMoveKey( spep_2-3 + 85, 1, 5.7, -13.2 , 0 );
setMoveKey( spep_2-3 + 86, 1, 126.7, 75.1 , 0 );
setMoveKey( spep_2-3 + 87, 1, 126.7, 75.1 , 0 );
setMoveKey( spep_2-3 + 88, 1, 133.5, 15 , 0 );
setMoveKey( spep_2-3 + 90, 1, 113.9, 57.2 , 0 );
setMoveKey( spep_2-3 + 92, 1, 127.8, 58.6 , 0 );
setMoveKey( spep_2-3 + 94, 1, 134.7, 68.1 , 0 );
setMoveKey( spep_2-3 + 96, 1, 129.7, 65.7 , 0 );
setMoveKey( spep_2-3 + 98, 1, 140.6, 71.2 , 0 );
setMoveKey( spep_2-3 + 100, 1, 139.6, 60.8 , 0 );
setMoveKey( spep_2-3 + 102, 1, 146.5, 74.4 , 0 );
setMoveKey( spep_2-3 + 104, 1, 149.5, 75.9 , 0 );
setMoveKey( spep_2-3 + 124, 1, 149.5, 75.9 , 0 );
setMoveKey( spep_2-3 + 126, 1, 151.2, 76.2 , 0 );
setMoveKey( spep_2-3 + 128, 1, 149, 68.4 , 0 );
setMoveKey( spep_2-3 + 130, 1, 154.7, 76.8 , 0 );
setMoveKey( spep_2-3 + 132, 1, 152.4, 68.9 , 0 );
setMoveKey( spep_2-3 + 134, 1, 158.2, 77.4 , 0 );
setMoveKey( spep_2-3 + 136, 1, 155.9, 69.4 , 0 );
setMoveKey( spep_2-3 + 138, 1, 162, 78 , 0 );
setMoveKey( spep_2-3 + 140, 1, 158.2, 60.6 , 0 );
setMoveKey( spep_2-3 + 142, 1, 162.7, 59.7 , 0 );
setMoveKey( spep_2-3 + 144, 1, 158.8, 41.4 , 0 );
setMoveKey( spep_2-3 + 146, 1, 164.3, 47.2 , 0 );
setMoveKey( spep_2-3 + 148, 1, 161.4, 35.7 , 0 );
setMoveKey( spep_2-3 + 150, 1, 167, 41.4 , 0 );
setMoveKey( spep_2-3 + 152, 1, 164, 29.6 , 0 );
setMoveKey( spep_2-3 + 154, 1, 169.6, 35.2 , 0 );
setMoveKey( spep_2-3 + 156, 1, 165.4, 24 , 0 );
setMoveKey( spep_2-3 + 158, 1, 169.9, 30.3 , 0 );
setMoveKey( spep_2-3 + 160, 1, 165.7, 19 , 0 );
setMoveKey( spep_2-3 + 161, 1, 165.7, 19 , 0 );

setMoveKey( spep_2-3 + 162, 1, 26.9, -191.1 , 0 );
setMoveKey( spep_2-3 + 164, 1, -19.2, -268.4 , 0 );
setMoveKey( spep_2-3 + 166, 1, 100.7, -216.9 , 0 );
setMoveKey( spep_2-3 + 168, 1, 99.6, -318.4 , 0 );
setMoveKey( spep_2-3 + 170, 1, 72.2, -313.8 , 0 );
setMoveKey( spep_2-3 + 172, 1, 78.5, -349.1 , 0 );
setMoveKey( spep_2-3 + 174, 1, 92.2, -367.4 , 0 );
setMoveKey( spep_2-3 + 176, 1, 97.8, -399.8 , 0 );

setScaleKey( spep_2-3 + 76,1, 1.51, 1.51 );
setScaleKey( spep_2-3 + 77,1, 1.51, 1.51 );

setScaleKey( spep_2-3 + 78, 1, 1.67, 1.67 );
setScaleKey( spep_2-3 + 80, 1, 1.69, 1.69 );
setScaleKey( spep_2-3 + 82, 1, 1.41, 1.41 );
setScaleKey( spep_2-3 + 84, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 86, 1, 1.47, 1.47 );
setScaleKey( spep_2-3 + 88, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 90, 1, 1.52, 1.52 );
setScaleKey( spep_2-3 + 92, 1, 1.55, 1.55 );
setScaleKey( spep_2-3 + 94, 1, 1.56, 1.56 );
setScaleKey( spep_2-3 + 96, 1, 1.56, 1.56 );
setScaleKey( spep_2-3 + 98, 1, 1.57, 1.57 );
setScaleKey( spep_2-3 + 100, 1, 1.57, 1.57 );
setScaleKey( spep_2-3 + 102, 1, 1.58, 1.58 );
setScaleKey( spep_2-3 + 124, 1, 1.58, 1.58 );
setScaleKey( spep_2-3 + 126, 1, 1.62, 1.62 );
setScaleKey( spep_2-3 + 128, 1, 1.66, 1.66 );
setScaleKey( spep_2-3 + 130, 1, 1.69, 1.69 );
setScaleKey( spep_2-3 + 132, 1, 1.73, 1.73 );
setScaleKey( spep_2-3 + 134, 1, 1.77, 1.77 );
setScaleKey( spep_2-3 + 136, 1, 1.81, 1.81 );
setScaleKey( spep_2-3 + 138, 1, 1.85, 1.85 );
setScaleKey( spep_2-3 + 140, 1, 1.89, 1.89 );
setScaleKey( spep_2-3 + 142, 1, 1.93, 1.93 );
setScaleKey( spep_2-3 + 144, 1, 1.97, 1.97 );
setScaleKey( spep_2-3 + 146, 1, 2.01, 2.01 );
setScaleKey( spep_2-3 + 148, 1, 2.05, 2.05 );
setScaleKey( spep_2-3 + 150, 1, 2.09, 2.09 );
setScaleKey( spep_2-3 + 152, 1, 2.13, 2.13 );
setScaleKey( spep_2-3 + 154, 1, 2.17, 2.17 );
setScaleKey( spep_2-3 + 156, 1, 2.18, 2.18 );
setScaleKey( spep_2-3 + 158, 1, 2.19, 2.19 );
setScaleKey( spep_2-3 + 161, 1, 2.19, 2.19 );

setScaleKey( spep_2-3 + 162, 1, 0.99, 0.99 );
setScaleKey( spep_2-3 + 164, 1, 1.16, 1.16 );
setScaleKey( spep_2-3 + 166, 1, 1.32, 1.32 );
setScaleKey( spep_2-3 + 168, 1, 1.47, 1.47 );
setScaleKey( spep_2-3 + 170, 1, 1.62, 1.62 );
setScaleKey( spep_2-3 + 172, 1, 1.76, 1.76 );
setScaleKey( spep_2-3 + 174, 1, 1.9, 1.9 );
setScaleKey( spep_2-3 + 176, 1, 2.03, 2.03 );

setRotateKey( spep_2-3 + 76,1, -39.1 );
setRotateKey( spep_2-3 + 77,1, -39.1 );

setRotateKey( spep_2-3 + 78, 1, -0.2 );
setRotateKey( spep_2-3 + 136, 1, -0.2 );
setRotateKey( spep_2-3 + 138, 1, 0 );
setRotateKey( spep_2-3 + 161, 1, 0 );

setRotateKey( spep_2-3 + 162, 1, 0 );
setRotateKey( spep_2-3 + 176, 1, 0 );

--文字エントリー
ctzun = entryEffectLife( spep_2-3 + 86,  10016, 10, 0x100, -1, 0, 143.6, 293.9 );--ズンッ

setEffMoveKey( spep_2-3 + 86, ctzun, 143.6, 293.9 , 0 );
setEffMoveKey( spep_2-3 + 88, ctzun, 158.4, 303.3 , 0 );
setEffMoveKey( spep_2-3 + 90, ctzun, 173.2, 312.6 , 0 );
setEffMoveKey( spep_2-3 + 92, ctzun, 188.1, 322 , 0 );
setEffMoveKey( spep_2-3 + 94, ctzun, 202.8, 331.2 , 0 );
setEffMoveKey( spep_2-3 + 96, ctzun, 217.6, 340.5 , 0 );

setEffScaleKey( spep_2-3 + 86, ctzun, 2.36, 2.36 );
setEffScaleKey( spep_2-3 + 88, ctzun, 2.44, 2.44 );
setEffScaleKey( spep_2-3 + 90, ctzun, 2.52, 2.52 );
setEffScaleKey( spep_2-3 + 92, ctzun, 2.61, 2.61 );
setEffScaleKey( spep_2-3 + 94, ctzun, 2.7, 2.7 );
setEffScaleKey( spep_2-3 + 96, ctzun, 2.79, 2.79 );

setEffRotateKey( spep_2-3 + 86, ctzun, 30 );
setEffRotateKey( spep_2-3 + 88, ctzun, 30 );
setEffRotateKey( spep_2-3 + 90, ctzun, 29.9 );
setEffRotateKey( spep_2-3 + 94, ctzun, 29.9 );
setEffRotateKey( spep_2-3 + 96, ctzun, 30 );

setEffAlphaKey( spep_2-3 + 86, ctzun, 255 );
setEffAlphaKey( spep_2-3 + 92, ctzun, 255 );
setEffAlphaKey( spep_2-3 + 94, ctzun, 128 );
setEffAlphaKey( spep_2-3 + 96, ctzun, 0 );

--文字エントリー
ctzuo = entryEffectLife( spep_2-3 + 168,  10012, 16,0x100, -1, 0, -112.8, 285.7 );

setEffMoveKey( spep_2-3 + 168, ctzuo, -112.8, 285.7 , 0 );
setEffMoveKey( spep_2-3 + 170, ctzuo, -113.1, 287.2 , 0 );
setEffMoveKey( spep_2-3 + 172, ctzuo, -107.7, 298.4 , 0 );
setEffMoveKey( spep_2-3 + 174, ctzuo, -108.9, 298.2 , 0 );
setEffMoveKey( spep_2-3 + 176, ctzuo, -102.5, 311.1 , 0 );
setEffMoveKey( spep_2-3 + 178, ctzuo, -105.4, 303.2 , 0 );
setEffMoveKey( spep_2-3 + 180, ctzuo, -99.3, 310.7 , 0 );
setEffMoveKey( spep_2-3 + 182, ctzuo, -102.4, 302.4 , 0 );
setEffMoveKey( spep_2-3 + 184, ctzuo, -100.9, 302 , 0 );

a=2.1;

setEffScaleKey( spep_2-3 + 168, ctzuo, 0.52 +1.3, 0.52 +1.3 );
--setEffScaleKey( spep_2-3 + 170, ctzuo, 0.64 +a, 0.64 +a );
--setEffScaleKey( spep_2-3 + 172, ctzuo, 0.75 +a, 0.75 +a );
--setEffScaleKey( spep_2-3 + 174, ctzuo, 0.86 +a, 0.86 +a );
--setEffScaleKey( spep_2-3 + 176, ctzuo, 0.97 +a, 0.97 +a );
setEffScaleKey( spep_2-3 + 178, ctzuo, 1 +a, 1 +a );
setEffScaleKey( spep_2-3 + 180, ctzuo, 1.03 +a, 1.03 +a );
setEffScaleKey( spep_2-3 + 182, ctzuo, 1.06 +a, 1.06 +a );
setEffScaleKey( spep_2-3 + 184, ctzuo, 1.09 +a, 1.09 +a );

setEffRotateKey( spep_2-3 + 168, ctzuo, 15 );
setEffRotateKey( spep_2-3 + 170, ctzuo, 15 );
setEffRotateKey( spep_2-3 + 172, ctzuo, 14.9 );
setEffRotateKey( spep_2-3 + 174, ctzuo, 14.9 );
setEffRotateKey( spep_2-3 + 176, ctzuo, 14.8 );
setEffRotateKey( spep_2-3 + 178, ctzuo, 14.9 );
setEffRotateKey( spep_2-3 + 180, ctzuo, 14.9 );
setEffRotateKey( spep_2-3 + 182, ctzuo, 15 );
setEffRotateKey( spep_2-3 + 184, ctzuo, 15 );

setEffAlphaKey( spep_2-3 + 168, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 176, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 178, ctzuo, 191 );
setEffAlphaKey( spep_2-3 + 180, ctzuo, 128 );
setEffAlphaKey( spep_2-3 + 182, ctzuo, 64 );
setEffAlphaKey( spep_2-3 + 184, ctzuo, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_2-3 + 58,  906, 23, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 58, shuchusen2, 23, 20 );
setEffMoveKey( spep_2-3 + 58, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2-2 + 80, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 58, shuchusen2, 1, 1 );
setEffScaleKey( spep_2-2 + 80, shuchusen2, 1, 1 );

setEffRotateKey( spep_2-3 + 58, shuchusen2, 180 );
setEffRotateKey( spep_2-2 + 80, shuchusen2, 180 );

setEffAlphaKey( spep_2-3 + 58, shuchusen2, 255 );
setEffAlphaKey( spep_2-2 + 80, shuchusen2, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_2-3 + 166,  906, 18, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 166, shuchusen3, 18, 20 );
setEffMoveKey( spep_2-3 + 166, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 184, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 166, shuchusen3, 1, 1 );
setEffScaleKey( spep_2-3 + 184, shuchusen3, 1, 1 );

setEffRotateKey( spep_2-3 + 166, shuchusen3, 180 );
setEffRotateKey( spep_2-3 + 184, shuchusen3, 180 );

setEffAlphaKey( spep_2-3 + 166, shuchusen3, 255 );
setEffAlphaKey( spep_2-3 + 184, shuchusen3, 255 );

--SE
se_0009 = playSe( spep_2 + 0, 9 );
se_1183 = playSe( spep_2 + 0, 1183 );
playSe( spep_2 + 39, 1072 );
setSeVolume( spep_2 + 39, 1072, 0 );
setSeVolume( spep_2 + 55, 1072, 12 );
setSeVolume( spep_2 + 56, 1072, 24 );
setSeVolume( spep_2 + 57, 1072, 36 );
setSeVolume( spep_2 + 58, 1072, 48 );
setSeVolume( spep_2 + 59, 1072, 60 );
setSeVolume( spep_2 + 60, 1072, 72 );
setSeVolume( spep_2 + 61, 1072, 84 );
setSeVolume( spep_2 + 62, 1072, 100 );
playSe( spep_2 + 87, 1153 );
setSeVolume( spep_2 + 87, 1153, 79 );
playSe( spep_2 + 87, 1015 );
setSeVolume( spep_2 + 87, 1015, 71 );
playSe( spep_2 + 94, 1032 );
se_1146 = playSe( spep_2 + 146, 1146 );
setSeVolume( spep_2 + 146, 1146, 0 );
setSeVolume( spep_2 + 162, 1146, 8 );
setSeVolume( spep_2 + 163, 1146, 16 );
setSeVolume( spep_2 + 164, 1146, 24 );
setSeVolume( spep_2 + 165, 1146, 32 );
setSeVolume( spep_2 + 166, 1146, 40 );
setSeVolume( spep_2 + 167, 1146, 48 );
setSeVolume( spep_2 + 168, 1146, 56 );
setSeVolume( spep_2 + 169, 1146, 63 );
playSe( spep_2 + 156, 1061 );
playSe( spep_2 + 158, 1003 );
setSeVolume( spep_2 + 158, 1003, 71 );
playSe( spep_2 + 164, 1032 );
playSe( spep_2 + 170, 1004 );
setSeVolume( spep_2 + 170, 1004, 71 );
playSe( spep_2 + 202, 1003 );
se_0009 = playSe( spep_2 + 229, 9 );
se_1182 = playSe( spep_2 + 229, 1182 );
playSe( spep_2 + 251, 1142 );
playSe( spep_2 + 252, 1047 );
setSeVolume( spep_2 + 252, 1047, 71 );
playSe( spep_2 + 253, 1032 );
se_1172 = playSe( spep_2 + 253, 1172 );
setSeVolume( spep_2 + 253, 1172, 50 );
playSe( spep_2 + 255, 1046 );
playSe( spep_2 + 258, 1179 );
setSeVolume( spep_2 + 258, 1179, 79 );
playSe( spep_2 + 263, 1031 );
setSeVolume( spep_2 + 263, 1031, 79 );

stopSe( spep_2 + 67, se_0009, 0 );
stopSe( spep_2 + 67, se_1183, 0 );
stopSe( spep_2 + 169, se_1146, 29 );
stopSe( spep_2 + 260, se_0009, 0 );
stopSe( spep_2 + 260, se_1182, 0 );
stopSe( spep_2 + 275, se_1172, 96 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 338, 0,  0, 0, 0, 255 ); --黒 背景

--白フェード
entryFade( spep_2+157, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 332;

------------------------------------------------------
-- ラスト爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_3 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_3 + 140, finish, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_3 + 140, finish, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish, 0 );
setEffRotateKey( spep_3 + 140, finish, 0 );
setEffAlphaKey( spep_3 + 0, finish, 255 );
setEffAlphaKey( spep_3 + 140, finish, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_3+5,  906, 135, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 5, shuchusen4, 135, 20 );
setEffMoveKey( spep_3+5, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_3 + 140, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_3+5, shuchusen4, 1, 1 );
setEffScaleKey( spep_3 + 140, shuchusen4, 1, 1 );

setEffRotateKey( spep_3+5, shuchusen4, 180 );
setEffRotateKey( spep_3 + 140, shuchusen4, 180 );

setEffAlphaKey( spep_3+5, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 140, shuchusen4, 255 );

--SE
playSe( spep_3 + 22, 1024 );
playSe( spep_3 + 22, 1159 );

setSeVolume( spep_3 + 22, 1159, 79 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 140, 0,  0, 0, 0, 255 ); --黒 背景

--白フェード
entryFade( spep_3+14, 0, 3, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ダメージ表示
dealDamage(spep_3+20);
endPhase( spep_3 + 120 );
end