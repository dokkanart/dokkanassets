--1018250:超サイヤ人ゴッド孫悟空_限界突破かめはめ波
--sp_effect_a1_00192

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
SP_01=	154290	;--	導入、かめはめ波構え正面
SP_02=	154291	;--	かめはめ波構え横〜アップ
SP_03=	154292	;--	かめはめ波発射〜敵に命中〜爆発
SP_04=	154293	;--	かめはめ波発射〜敵に命中〜爆発

--エフェクト(てき)
SP_01x=	154290	;--	導入、かめはめ波構え正面	
SP_02x=	154291	;--	かめはめ波構え横〜アップ	
SP_03x=	154294	;--	かめはめ波発射〜敵に命中〜爆発	(敵)
SP_04x=	154295	;--	かめはめ波発射〜敵に命中〜爆発	(敵)

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
-- 導入、かめはめ波構え正面
------------------------------------------------------
--はじめの準備
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 200, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 200, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 200, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 200, tame, 255 );

--白フェード
entryFade( spep_0, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 192, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_0 + 28, 1035 );  --気溜め

SE0 = playSe( spep_0 + 38, 55 );  --気溜め
setSeVolume( spep_0 +38, 55, 60 );

playSe( spep_0 + 96, 1003 );  --バッ
setSeVolume( spep_0 +96, 1003, 60 );

playSe( spep_0 + 178, 1006 );  --手をバッ
setSeVolume( spep_0 +178, 1003, 50 );

SE1 = playSe( spep_0 + 196, 1116 );  --溜め
stopSe( spep_0 + 238, SE1, 24 );

--次の準備
spep_1 = spep_0+200;

------------------------------------------------------
-- かめはめ波構え横〜アップ
------------------------------------------------------
-- ** エフェクト等 ** --
tame_up = entryEffect( spep_1 + 0, SP_02,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame_up, 0, 0 , 0 );
setEffMoveKey( spep_1 + 200, tame_up, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tame_up, 1.0, 1.0 );
setEffScaleKey( spep_1 + 200, tame_up, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame_up, 0 );
setEffRotateKey( spep_1 + 200, tame_up, 0 );
setEffAlphaKey( spep_1 + 0, tame_up, 255 );
setEffAlphaKey( spep_1 + 200, tame_up, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_1+100  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_1+100  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_1 +112, 190006, 72, 0x100, -1, 0, -90, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_1 +112,  ctgogo,  -90,  510);
setEffMoveKey(  spep_1 +184,  ctgogo,  -90,  510);

setEffAlphaKey( spep_1 +112, ctgogo, 0 );
setEffAlphaKey( spep_1 + 113, ctgogo, 255 );
setEffAlphaKey( spep_1 + 114, ctgogo, 255 );
setEffAlphaKey( spep_1 + 176, ctgogo, 255 );
setEffAlphaKey( spep_1 + 178, ctgogo, 255 );
setEffAlphaKey( spep_1 + 180, ctgogo, 191 );
setEffAlphaKey( spep_1 + 182, ctgogo, 112 );
setEffAlphaKey( spep_1 + 184, ctgogo, 64 );

setEffRotateKey(  spep_1 +112,  ctgogo,  0);
setEffRotateKey(  spep_1 +184,  ctgogo,  0);

setEffScaleKey(  spep_1 +112,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_1 +174,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_1 +184,  ctgogo, 1.07, 1.07 );

--SE
SE2 = playSe( spep_1 +44, 1037 );  --溜め
setSeVolume( spep_1 +44, 1037, 70 );
stopSe( spep_1 + 206, SE2, 0 );

playSe( spep_1 +44, 1132 );  --溜め
setSeVolume( spep_1 +44, 1132, 60 );

SE3 = playSe( spep_1 +90, 1132 );  --溜め
setSeVolume( spep_1 +90, 1132, 60 );
stopSe( spep_1 + 206, SE3, 0 );

SE4 = playSe( spep_1 +160, 1037 );  --溜め
setSeVolume( spep_1 +160, 1037, 80 );
stopSe( spep_1 + 206, SE4, 0 );

playSe( spep_1 +112, 1018 );  --ゴゴゴ

stopSe( spep_1 + 200, SE0, 0 );

--白フェード
entryFade( spep_1 + 192, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2 = spep_1+200;

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
entryFade( spep_2 + 82, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- かめはめ波発射〜敵に命中〜爆発
------------------------------------------------------
-- ** エフェクト等 ** --
bime_f = entryEffect( spep_3 + 0, SP_03,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, bime_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 480, bime_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, bime_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 480, bime_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, bime_f, 0 );
setEffRotateKey( spep_3 + 480, bime_f, 0 );
setEffAlphaKey( spep_3 + 0, bime_f, 255 );
setEffAlphaKey( spep_3 + 480, bime_f, 255 );

-- ** エフェクト等 ** --
bime_b = entryEffect( spep_3 + 0, SP_04,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, bime_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 480, bime_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, bime_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 480, bime_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, bime_b, 0 );
setEffRotateKey( spep_3 + 480, bime_b, 0 );
setEffAlphaKey( spep_3 + 0, bime_b, 255 );
setEffAlphaKey( spep_3 + 480, bime_b, 255 );

-- ** 音 ** --
playSe( spep_3 + 4, 1022 );  --発射
playSe( spep_3 + 4, 1133 );  --発射
setSeVolume( spep_3 +4, 1133, 60 );

SE5 = playSe( spep_3 + 50, 1146 );  --発射
setSeVolume( spep_3 +50, 1146, 0 );
setSeVolume( spep_3 +106, 1146, 40 );
setSeVolume( spep_3 +116, 1146, 80 );
setSeVolume( spep_3 +126, 1146, 100 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 200; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
--   stopSe( SP_dodge - 12, SE0, 0 );
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

--敵の動き
setDisp(spep_3-3  + 240,1,1);
setDisp(spep_3-3  + 294,1,0);

setShakeChara(spep_3-3  + 240,1,54,15);

changeAnime(spep_3-3  + 240,1,118);

setMoveKey( spep_3-3  + 240, 1, 141.4, 64.3 , 0 );
setMoveKey( spep_3-3  + 294, 1, 141.4, 64.3 , 0 );

setScaleKey( spep_3-3  + 240, 1, 1, 1 );
setScaleKey( spep_3-3  + 294, 1, 1, 1 );

setRotateKey( spep_3-3  + 240, 1, 0 );
setRotateKey( spep_3-3  + 294, 1, 0 );

--白フェード
entryFade( spep_3+290, 4, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
stopSe( spep_3 + 200, SE5, 0 );
SE6 = playSe( spep_3 + 200, 1146 );  --発射
setSeVolume( spep_3 +200, 1146, 80 );
stopSe( spep_3 + 292, SE6, 0 );

SE7 = playSe( spep_3 + 200, 1044 );  --地鳴り
setSeVolume( spep_3 +200, 1044, 80 );
stopSe( spep_3 + 432, SE7, 0 );

playSe( spep_3 + 360, 1159 );  --爆発
setSeVolume( spep_3 +360, 1159, 70 );
playSe( spep_3 + 360, 1024 );  --爆発
setSeVolume( spep_3 +360, 1024, 70 );
playSe( spep_3 + 360, 1049 );  --爆発
setSeVolume( spep_3 +360, 1049, 70 );

-- ** ダメージ表示 ** --
dealDamage(spep_3 +360 );
endPhase( spep_3 + 464 );

else 

------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 導入、かめはめ波構え正面
------------------------------------------------------
--はじめの準備
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 200, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 200, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 200, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 200, tame, 255 );

--白フェード
entryFade( spep_0, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 192, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_0 + 28, 1035 );  --気溜め

SE0 = playSe( spep_0 + 38, 55 );  --気溜め
setSeVolume( spep_0 +38, 55, 60 );

playSe( spep_0 + 96, 1003 );  --バッ
setSeVolume( spep_0 +96, 1003, 60 );

playSe( spep_0 + 178, 1006 );  --手をバッ
setSeVolume( spep_0 +178, 1003, 50 );

SE1 = playSe( spep_0 + 196, 1116 );  --溜め
stopSe( spep_0 + 238, SE1, 24 );

--次の準備
spep_1 = spep_0+200;

------------------------------------------------------
-- かめはめ波構え横〜アップ
------------------------------------------------------
-- ** エフェクト等 ** --
tame_up = entryEffect( spep_1 + 0, SP_02,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame_up, 0, 0 , 0 );
setEffMoveKey( spep_1 + 200, tame_up, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tame_up, -1.0, 1.0 );
setEffScaleKey( spep_1 + 200, tame_up, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame_up, 0 );
setEffRotateKey( spep_1 + 200, tame_up, 0 );
setEffAlphaKey( spep_1 + 0, tame_up, 255 );
setEffAlphaKey( spep_1 + 200, tame_up, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_1+100  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_1+100  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_1 +112, 190006, 72, 0x100, -1, 0, 70, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_1 +112,  ctgogo,  70,  510);
setEffMoveKey(  spep_1 +184,  ctgogo,  70,  510);

setEffAlphaKey( spep_1 +112, ctgogo, 0 );
setEffAlphaKey( spep_1 + 113, ctgogo, 255 );
setEffAlphaKey( spep_1 + 114, ctgogo, 255 );
setEffAlphaKey( spep_1 + 176, ctgogo, 255 );
setEffAlphaKey( spep_1 + 178, ctgogo, 255 );
setEffAlphaKey( spep_1 + 180, ctgogo, 191 );
setEffAlphaKey( spep_1 + 182, ctgogo, 112 );
setEffAlphaKey( spep_1 + 184, ctgogo, 64 );

setEffRotateKey(  spep_1 +112,  ctgogo,  0);
setEffRotateKey(  spep_1 +184,  ctgogo,  0);

setEffScaleKey(  spep_1 +112,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_1 +174,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_1 +184,  ctgogo, -1.07, 1.07 );

--SE
SE2 = playSe( spep_1 +44, 1037 );  --溜め
setSeVolume( spep_1 +44, 1037, 70 );
stopSe( spep_1 + 206, SE2, 0 );

playSe( spep_1 +44, 1132 );  --溜め
setSeVolume( spep_1 +44, 1132, 60 );

SE3 = playSe( spep_1 +90, 1132 );  --溜め
setSeVolume( spep_1 +90, 1132, 60 );
stopSe( spep_1 + 206, SE3, 0 );

SE4 = playSe( spep_1 +160, 1037 );  --溜め
setSeVolume( spep_1 +160, 1037, 80 );
stopSe( spep_1 + 206, SE4, 0 );

playSe( spep_1 +112, 1018 );  --ゴゴゴ

stopSe( spep_1 + 200, SE0, 0 );

--白フェード
entryFade( spep_1 + 192, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2 = spep_1+200;

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
entryFade( spep_2 + 82, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- かめはめ波発射〜敵に命中〜爆発
------------------------------------------------------
-- ** エフェクト等 ** --
bime_f = entryEffect( spep_3 + 0, SP_03x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, bime_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 480, bime_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, bime_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 480, bime_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, bime_f, 0 );
setEffRotateKey( spep_3 + 480, bime_f, 0 );
setEffAlphaKey( spep_3 + 0, bime_f, 255 );
setEffAlphaKey( spep_3 + 480, bime_f, 255 );

-- ** エフェクト等 ** --
bime_b = entryEffect( spep_3 + 0, SP_04x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, bime_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 480, bime_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, bime_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 480, bime_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, bime_b, 0 );
setEffRotateKey( spep_3 + 480, bime_b, 0 );
setEffAlphaKey( spep_3 + 0, bime_b, 255 );
setEffAlphaKey( spep_3 + 480, bime_b, 255 );

-- ** 音 ** --
playSe( spep_3 + 4, 1022 );  --発射
playSe( spep_3 + 4, 1133 );  --発射
setSeVolume( spep_3 +4, 1133, 60 );

SE5 = playSe( spep_3 + 50, 1146 );  --発射
setSeVolume( spep_3 +50, 1146, 0 );
setSeVolume( spep_3 +106, 1146, 40 );
setSeVolume( spep_3 +116, 1146, 80 );
setSeVolume( spep_3 +126, 1146, 100 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 200; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
--   stopSe( SP_dodge - 12, SE0, 0 );
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

--敵の動き
setDisp(spep_3-3  + 240,1,1);
setDisp(spep_3-3  + 294,1,0);

setShakeChara(spep_3-3  + 240,1,54,15);

changeAnime(spep_3-3  + 240,1,118);

setMoveKey( spep_3-3  + 240, 1, 141.4, 64.3 , 0 );
setMoveKey( spep_3-3  + 294, 1, 141.4, 64.3 , 0 );

setScaleKey( spep_3-3  + 240, 1, 1, 1 );
setScaleKey( spep_3-3  + 294, 1, 1, 1 );

setRotateKey( spep_3-3  + 240, 1, 0 );
setRotateKey( spep_3-3  + 294, 1, 0 );

--白フェード
entryFade( spep_3+290, 4, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
stopSe( spep_3 + 200, SE5, 0 );
SE6 = playSe( spep_3 + 200, 1146 );  --発射
setSeVolume( spep_3 +200, 1146, 80 );
stopSe( spep_3 + 292, SE6, 0 );

SE7 = playSe( spep_3 + 200, 1044 );  --地鳴り
setSeVolume( spep_3 +200, 1044, 80 );
stopSe( spep_3 + 432, SE7, 0 );

playSe( spep_3 + 360, 1159 );  --爆発
setSeVolume( spep_3 +360, 1159, 70 );
playSe( spep_3 + 360, 1024 );  --爆発
setSeVolume( spep_3 +360, 1024, 70 );
playSe( spep_3 + 360, 1049 );  --爆発
setSeVolume( spep_3 +360, 1049, 70 );

-- ** ダメージ表示 ** --
dealDamage(spep_3 +360 );
endPhase( spep_3 + 464 );
end