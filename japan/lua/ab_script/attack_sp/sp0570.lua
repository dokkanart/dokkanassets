--1017320  メカフリーザ&コルド大王_フルパワーデスビーム
--sp_effect_a3_00062

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
SP_01=	153690	;--	登場からデスビーム溜め
SP_02=	153691	;--	デスビーム発射
SP_03=	153692	;--	デスビーム着弾、敵より描画優先手前
SP_04=	153693	;--	デスビーム着弾、敵より描画優先後ろ
SP_05=	153694	;--	敵吹っ飛びシーンの背景

--敵側
SP_01x=	153695	;--	登場からデスビーム溜め	(敵)
SP_02x=	153696	;--	デスビーム発射	(敵)
SP_03x=	153692	;--	デスビーム着弾、敵より描画優先手前	
SP_04x=	153693	;--	デスビーム着弾、敵より描画優先後ろ	
SP_05x=	153694	;--	敵吹っ飛びシーンの背景	

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
-- 登場からデスビーム溜め
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01,  0x80, -1, 0, 0, 0 );  --導入(ef_001)
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 240, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 240, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 240, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 240, tame, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 +148, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 +148, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0  + 160,  190006, 72, 0x100, -1, 0, 50.9, 522.8 ); --ゴゴゴ
setEffShake( spep_0  + 160, ctgogo, 72, 10 );
 
setEffMoveKey( spep_0  + 160, ctgogo, 50.9, 522.8 , 0 );
setEffMoveKey( spep_0  + 232, ctgogo, 50.9, 525.5 , 0 );

setEffScaleKey( spep_0  + 160, ctgogo, 0.84, 0.84 );
setEffScaleKey( spep_0  + 224, ctgogo, 0.84, 0.84 );
setEffScaleKey( spep_0  + 226, ctgogo, 1.2, 1.2 );
setEffScaleKey( spep_0  + 228, ctgogo, 1.3, 1.3 );
setEffScaleKey( spep_0  + 230, ctgogo, 1.66, 1.66 );
setEffScaleKey( spep_0  + 232, ctgogo, 2.02, 2.02 );
 
setEffRotateKey( spep_0  + 160, ctgogo, 0 );
setEffRotateKey( spep_0  + 232, ctgogo, 0 );

setEffAlphaKey( spep_0  + 160, ctgogo, 0 );
setEffAlphaKey( spep_0  + 161, ctgogo, 255 );
setEffAlphaKey( spep_0  + 162, ctgogo, 255 );
setEffAlphaKey( spep_0  + 232, ctgogo, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 64,  906, 176, 0x100, -1, 0, 0,0 );

setEffMoveKey( spep_0 + 64, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 240, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 64, shuchusen1, 1.15, 1.15 );
setEffScaleKey( spep_0 + 240, shuchusen1, 1.15, 1.15 );

setEffRotateKey( spep_0 + 64, shuchusen1, 180 );
setEffRotateKey( spep_0 + 240, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 64, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 65, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 66, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 240, shuchusen1, 255 );

--SE
SE1=playSe( spep_0 + 66, 55 );  --ため
stopSe( spep_0 + 158, SE1, 0 );
playSe( spep_0 + 160, SE_04 );  --ゴゴゴ

-- ** エフェクト等 ** --
entryFade(spep_0+232,4,10,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

spep_1 =spep_0 + 240;

------------------------------------------------------
--カードカットイン
------------------------------------------------------

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
entryFade(spep_1+84,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2 = spep_1 + 94;

------------------------------------------------------
-- デスビーム発射
------------------------------------------------------

-- ** エフェクト等 ** --
beam = entryEffect( spep_2 + 0, SP_02,  0x80, -1, 0, 0, 0 );  --導入(ef_001)
setEffMoveKey( spep_2 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_2 + 150, beam, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_2 + 150, beam, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam, 0 );
setEffRotateKey( spep_2 + 150, beam, 0 );
setEffAlphaKey( spep_2 + 0, beam, 255 );
setEffAlphaKey( spep_2 + 150, beam, 255 );

--流線
shuchusen2 = entryEffectLife( spep_2 + 24,  906, 12, 0x100, -1, 0, 0,0 );

setEffMoveKey( spep_2 + 24, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 36, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 24, shuchusen2, 1.15, 1.15 );
setEffScaleKey( spep_2 + 36, shuchusen2, 1.15, 1.15 );

setEffRotateKey( spep_2 + 24, shuchusen2, 180 );
setEffRotateKey( spep_2 + 36, shuchusen2, 180 );

setEffAlphaKey( spep_2 + 24, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 36, shuchusen2, 255 );

-- ** エフェクト等 ** --
entryFade(spep_2+22,2,4,2,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_2+42,2,4,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
SE0=playSe( spep_2 +30, 1021 );  --発射音
SEx=playSe( spep_2 +36, 1021 );  --発射音
---------------------------------------------------------------------------
-- 回避
---------------------------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 60; --エンドフェイズのフレーム数を置き換える

    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SEx, 0 );
    playSe( SP_dodge - 12, 1042 );
    
    pauseAll( SP_dodge, 67 );
    
    -- ** 敵キャラクター ** --
    
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

-- ** エフェクト等 ** --
entryFade(spep_2+94,2,4,2,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_2+142,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_2 +100, 1022 );  --発射音

--次の準備
spep_3 = spep_2 + 150;

------------------------------------------------------
-- デスビーム着弾
------------------------------------------------------
-- ** エフェクト等(前) ** --
hit_f = entryEffect( spep_3 + 0, SP_03,  0x100, -1, 0, 0, 0 );  --導入(ef_001)
setEffMoveKey( spep_3 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 78, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 78, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 78, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 78, hit_f, 255 );

-- ** エフェクト等(後) ** --
hit_b = entryEffect( spep_3 + 0, SP_04,  0x80, -1, 0, 0, 0 );  --導入(ef_001)
setEffMoveKey( spep_3 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 78, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 78, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 78, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 78, hit_b, 255 );

--敵の動き
setDisp( spep_3  + 0, 1, 1 );
setDisp( spep_3  + 76, 1, 0 );
changeAnime( spep_3  + 0, 1, 104 );
changeAnime( spep_3 -3 + 15, 1, 106 );
changeAnime( spep_3 -3 + 16, 1, 108 );

a=-50;
setMoveKey( spep_3  + 0, 1, -20.1, 50.2 +a , 0 );
--setMoveKey( spep_3 -3 + 2, 1, -16, 50.1 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -11.1, 49.1 +a, 0 );
setMoveKey( spep_3 -3 + 6, 1, -3.8, 44.5 +a, 0 );
setMoveKey( spep_3 -3 + 8, 1, 4.4, 46.9 +a, 0 );
setMoveKey( spep_3 -3 + 10, 1, 2.4, 44.4 +a, 0 );
setMoveKey( spep_3 -3 + 13, 1, 11.1, 47.5 +a, 0 );
setMoveKey( spep_3 -3 + 15, 1, 48.8, 44.7 +a, 0 );
setMoveKey( spep_3 -3 + 16, 1, 61.3, 39.4 +a, 0 );
setMoveKey( spep_3 -3 + 18, 1, 68.5, 46.7 +a, 0 );
setMoveKey( spep_3 -3 + 20, 1, 75.1, 38.5 +a, 0 );
setMoveKey( spep_3 -3 + 22, 1, 83.4, 36.3 +a, 0 );
setMoveKey( spep_3 -3 + 24, 1, 99, 37.3 +a, 0 );
setMoveKey( spep_3 -3 + 26, 1, 102.3, 42.3 +a, 0 );
setMoveKey( spep_3 -3 + 28, 1, 110.5, 33.7 +a, 0 );
setMoveKey( spep_3 -3 + 30, 1, 120.3, 36.8 +a, 0 );
setMoveKey( spep_3 -3 + 32, 1, 117.3, 35.2 +a, 0 );
setMoveKey( spep_3 -3 + 34, 1, 131.1, 42.3 +a, 0 );
setMoveKey( spep_3 -3 + 36, 1, 135.3, 42.1 +a, 0 );
setMoveKey( spep_3 -3 + 38, 1, 132.4, 33.7 +a, 0 );
setMoveKey( spep_3 -3 + 40, 1, 156.6, 27.6 +a, 0 );
setMoveKey( spep_3 -3 + 42, 1, 177.8, 33.5 +a, 0 );
setMoveKey( spep_3 -3 + 44, 1, 179.6, 33.6 +a, 0 );
setMoveKey( spep_3 -3 + 46, 1, 193, 26.6 +a, 0 );
setMoveKey( spep_3 -3 + 48, 1, 212.5, 20.5 +a, 0 );
setMoveKey( spep_3 -3 + 50, 1, 203.5, 36.1 +a, 0 );
setMoveKey( spep_3 -3 + 52, 1, 220, 24.9 +a, 0 );
setMoveKey( spep_3 -3 + 54, 1, 205, 31.8 +a, 0 );
setMoveKey( spep_3 -3 + 56, 1, 205.9, 27.3 +a, 0 );
setMoveKey( spep_3 -3 + 58, 1, 220.1, 39.6 +a, 0 );
setMoveKey( spep_3 -3 + 60, 1, 221.3, 22.1 +a, 0 );
setMoveKey( spep_3 -3 + 62, 1, 226.5, 35.1 +a, 0 );
setMoveKey( spep_3 -3 + 64, 1, 215.8, 21.7 +a, 0 );
setMoveKey( spep_3 -3 + 66, 1, 226.9, 22.5 +a, 0 );
setMoveKey( spep_3 -3 + 68, 1, 214.5, 29.3 +a, 0 );
setMoveKey( spep_3 -3 + 70, 1, 232.2, 24.7 +a, 0 );
setMoveKey( spep_3 -3 + 72, 1, 222.6, 33.7 +a, 0 );
setMoveKey( spep_3 -3 + 74, 1, 219.2, 27.1 +a, 0 );
setMoveKey( spep_3  + 76, 1, 239.6, 33.9 +a, 0 );

setScaleKey( spep_3  + 0, 1, 2.63, 2.63 );
--setScaleKey( spep_3 -3 + 2, 1, 2.61, 2.61 );
setScaleKey( spep_3 -3 + 4, 1, 2.59, 2.59 );
setScaleKey( spep_3 -3 + 6, 1, 2.58, 2.58 );
setScaleKey( spep_3 -3 + 8, 1, 2.56, 2.56 );
setScaleKey( spep_3 -3 + 10, 1, 2.55, 2.55 );
setScaleKey( spep_3 -3 + 13, 1, 2.53, 2.53 );
setScaleKey( spep_3 -3 + 15, 1, 2.53, 2.53 );
setScaleKey( spep_3 -3 + 16, 1, 2.47, 2.47 );
setScaleKey( spep_3 -3 + 18, 1, 2.42, 2.42 );
setScaleKey( spep_3 -3 + 20, 1, 2.37, 2.37 );
setScaleKey( spep_3 -3 + 22, 1, 2.33, 2.33 );
setScaleKey( spep_3 -3 + 24, 1, 2.29, 2.29 );
setScaleKey( spep_3 -3 + 26, 1, 2.25, 2.25 );
setScaleKey( spep_3 -3 + 28, 1, 2.21, 2.21 );
setScaleKey( spep_3 -3 + 30, 1, 2.17, 2.17 );
setScaleKey( spep_3 -3 + 32, 1, 2.14, 2.14 );
setScaleKey( spep_3 -3 + 34, 1, 2.11, 2.11 );
setScaleKey( spep_3 -3 + 36, 1, 2.09, 2.09 );
setScaleKey( spep_3 -3 + 38, 1, 2.06, 2.06 );
setScaleKey( spep_3 -3 + 40, 1, 1.91, 1.91 );
setScaleKey( spep_3 -3 + 42, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 44, 1, 1.66, 1.66 );
setScaleKey( spep_3 -3 + 46, 1, 1.56, 1.56 );
setScaleKey( spep_3 -3 + 48, 1, 1.48, 1.48 );
setScaleKey( spep_3 -3 + 50, 1, 1.48, 1.48 );
setScaleKey( spep_3 -3 + 52, 1, 1.47, 1.47 );
setScaleKey( spep_3 -3 + 56, 1, 1.47, 1.47 );
setScaleKey( spep_3 -3 + 58, 1, 1.46, 1.46 );
setScaleKey( spep_3 -3 + 60, 1, 1.46, 1.46 );
setScaleKey( spep_3 -3 + 62, 1, 1.45, 1.45 );
setScaleKey( spep_3 -3 + 66, 1, 1.45, 1.45 );
setScaleKey( spep_3 -3 + 68, 1, 1.44, 1.44 );
setScaleKey( spep_3 -3 + 72, 1, 1.44, 1.44 );
setScaleKey( spep_3 -3 + 74, 1, 1.43, 1.43 );
setScaleKey( spep_3  + 76, 1, 1.43, 1.43 );

setRotateKey( spep_3  + 0, 1, -10 );
setRotateKey( spep_3 -3 + 13, 1, -10 );
setRotateKey( spep_3 -3 + 14, 1, -10 );
setRotateKey( spep_3 -3 + 15, 1, -50 );
setRotateKey( spep_3 -3 + 16, 1, -4 );
setRotateKey( spep_3  + 76, 1, -4 );

--SE
playSe( spep_3 +12, 1033 );  --発射音
playSe( spep_3 +30, 1025 );  --発射音

-- ** エフェクト等 ** --
entryFade(spep_3+70,4,10,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_4 = spep_3 + 78;


------------------------------------------------------
-- 敵吹っ飛びシーン(100F)
------------------------------------------------------
-- ** エフェクト等 ** --
ga_bg = entryEffect( spep_4 + 0, SP_05,  0x80, -1, 0, 0, 0 );  --導入(ef_001)
setEffMoveKey( spep_4 + 0, ga_bg, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, ga_bg, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, ga_bg, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, ga_bg, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, ga_bg, 0 );
setEffRotateKey( spep_4 + 100, ga_bg, 0 );
setEffAlphaKey( spep_4 + 0, ga_bg, 255 );
setEffAlphaKey( spep_4 + 100, ga_bg, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_4 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_4 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_4 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 100, bakuhatsu, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_4 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_4 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_4 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 100, hibiware, 0 );

setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen_g = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen_g, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen_g, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen_g, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen_g, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen_g, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen_g, 0 );
setEffRotateKey( spep_4 + 46, shuchusen_g, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen_g, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen_g, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen_g, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen_g, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen_g, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen_g, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen_g, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen_g, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen_g, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen_g, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen_g, 0 );

kuroshuchusen_g = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, kuroshuchusen_g, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, kuroshuchusen_g, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, kuroshuchusen_g, 1, 1 );
setEffScaleKey( spep_4 + 100, kuroshuchusen_g, 1, 1 );

setEffRotateKey( spep_4 + 14, kuroshuchusen_g, 0 );
setEffRotateKey( spep_4 + 100, kuroshuchusen_g, 0 );

setEffAlphaKey( spep_4 + 14, kuroshuchusen_g, 255 );
setEffAlphaKey( spep_4 + 100, kuroshuchusen_g, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_4 + 14, ctga, -10.9 );
setEffRotateKey( spep_4 + 15, ctga, -10.9 );
setEffRotateKey( spep_4 + 16, ctga, -14.9 );
setEffRotateKey( spep_4 + 17, ctga, -14.9 );
setEffRotateKey( spep_4 + 18, ctga, -10.9 );
setEffRotateKey( spep_4 + 19, ctga, -10.9 );
setEffRotateKey( spep_4 + 20, ctga, -14.9 );
setEffRotateKey( spep_4 + 21, ctga, -14.9 );
setEffRotateKey( spep_4 + 22, ctga, -10.9 );
setEffRotateKey( spep_4 + 23, ctga, -10.9 );
setEffRotateKey( spep_4 + 24, ctga, -14.9 );
setEffRotateKey( spep_4 + 25, ctga, -14.9 );
setEffRotateKey( spep_4 + 26, ctga, -10.9 );
setEffRotateKey( spep_4 + 27, ctga, -10.9 );
setEffRotateKey( spep_4 + 28, ctga, -14.9 );
setEffRotateKey( spep_4 + 100, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_4 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_4 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_4 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_4 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_4 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_4 + 100, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_4 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_4 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_4 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 110, 1, 1.6, 1.6 );


setRotateKey( spep_4 + 0, 1, -40 );
setRotateKey( spep_4 + 1, 1, -40 );
setRotateKey( spep_4 + 2, 1, 80 );
setRotateKey( spep_4 + 3, 1, 80 );
setRotateKey( spep_4 + 4, 1, 200 );
setRotateKey( spep_4 + 5, 1, 200 );
setRotateKey( spep_4 + 6, 1, 360 );
setRotateKey( spep_4 + 7, 1, 360 );
setRotateKey( spep_4 + 8, 1, 558 );
setRotateKey( spep_4 + 9, 1, 558 );
setRotateKey( spep_4 + 10, 1, 425 );
setRotateKey( spep_4 + 11, 1, 425 );
setRotateKey( spep_4 + 12, 1, -40 );
setRotateKey( spep_4 + 100, 1, -40 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_10 );  --爆発音
playSe( spep_4 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 10 );
entryFade( spep_4 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_4 + 100 );


else 

------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 登場からデスビーム溜め
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x,  0x80, -1, 0, 0, 0 );  --導入(ef_001)
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 240, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 240, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 240, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 240, tame, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 +148, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 +148, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0  + 160,  190006, 72, 0x100, -1, 0, 100.9, 512.8 ); --ゴゴゴ
setEffShake( spep_0  + 160, ctgogo, 72, 10 );
 
setEffMoveKey( spep_0  + 160, ctgogo, 100.9, 512.8 , 0 );
setEffMoveKey( spep_0  + 232, ctgogo, 100.9, 515.5 , 0 );

setEffScaleKey( spep_0  + 160, ctgogo, -0.84, 0.84 );
setEffScaleKey( spep_0  + 224, ctgogo, -0.84, 0.84 );
setEffScaleKey( spep_0  + 226, ctgogo, -1.2, 1.2 );
setEffScaleKey( spep_0  + 228, ctgogo, -1.3, 1.3 );
setEffScaleKey( spep_0  + 230, ctgogo, -1.66, 1.66 );
setEffScaleKey( spep_0  + 232, ctgogo, -2.02, 2.02 );
 
setEffRotateKey( spep_0  + 160, ctgogo, 0 );
setEffRotateKey( spep_0  + 232, ctgogo, 0 );

setEffAlphaKey( spep_0  + 160, ctgogo, 0 );
setEffAlphaKey( spep_0  + 161, ctgogo, 255 );
setEffAlphaKey( spep_0  + 162, ctgogo, 255 );
setEffAlphaKey( spep_0  + 232, ctgogo, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 64,  906, 176, 0x100, -1, 0, 0,0 );

setEffMoveKey( spep_0 + 64, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 240, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 64, shuchusen1, 1.15, 1.15 );
setEffScaleKey( spep_0 + 240, shuchusen1, 1.15, 1.15 );

setEffRotateKey( spep_0 + 64, shuchusen1, 180 );
setEffRotateKey( spep_0 + 240, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 64, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 65, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 66, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 240, shuchusen1, 255 );

--SE
SE1=playSe( spep_0 + 66, 55 );  --ため
stopSe( spep_0 + 158, SE1, 0 );
playSe( spep_0 + 160, SE_04 );  --ゴゴゴ

-- ** エフェクト等 ** --
entryFade(spep_0+232,4,10,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

spep_1 =spep_0 + 240;

------------------------------------------------------
--カードカットイン
------------------------------------------------------

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
entryFade(spep_1+84,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2 = spep_1 + 94;

------------------------------------------------------
-- デスビーム発射
------------------------------------------------------

-- ** エフェクト等 ** --
beam = entryEffect( spep_2 + 0, SP_02x,  0x80, -1, 0, 0, 0 );  --導入(ef_001)
setEffMoveKey( spep_2 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_2 + 150, beam, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_2 + 150, beam, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam, 0 );
setEffRotateKey( spep_2 + 150, beam, 0 );
setEffAlphaKey( spep_2 + 0, beam, 255 );
setEffAlphaKey( spep_2 + 150, beam, 255 );

--流線
shuchusen2 = entryEffectLife( spep_2 + 24,  906, 12, 0x100, -1, 0, 0,0 );

setEffMoveKey( spep_2 + 24, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 36, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 24, shuchusen2, 1.15, 1.15 );
setEffScaleKey( spep_2 + 36, shuchusen2, 1.15, 1.15 );

setEffRotateKey( spep_2 + 24, shuchusen2, 180 );
setEffRotateKey( spep_2 + 36, shuchusen2, 180 );

setEffAlphaKey( spep_2 + 24, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 36, shuchusen2, 255 );

-- ** エフェクト等 ** --
entryFade(spep_2+22,2,4,2,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_2+42,2,4,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
SE0=playSe( spep_2 +30, 1021 );  --発射音
SEx=playSe( spep_2 +36, 1021 );  --発射音
---------------------------------------------------------------------------
-- 回避
---------------------------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 60; --エンドフェイズのフレーム数を置き換える

    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SEx, 0 );

    playSe( SP_dodge - 12, 1042 );
    
    pauseAll( SP_dodge, 67 );
    
    -- ** 敵キャラクター ** --
    
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

-- ** エフェクト等 ** --
entryFade(spep_2+94,2,4,2,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_2+142,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_2 +100, 1022 );  --発射音

--次の準備
spep_3 = spep_2 + 150;

------------------------------------------------------
-- デスビーム着弾
------------------------------------------------------
-- ** エフェクト等(前) ** --
hit_f = entryEffect( spep_3 + 0, SP_03x,  0x100, -1, 0, 0, 0 );  --導入(ef_001)
setEffMoveKey( spep_3 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 78, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 78, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 78, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 78, hit_f, 255 );

-- ** エフェクト等(後) ** --
hit_b = entryEffect( spep_3 + 0, SP_04x,  0x80, -1, 0, 0, 0 );  --導入(ef_001)
setEffMoveKey( spep_3 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 78, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 78, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 78, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 78, hit_b, 255 );

--敵の動き
setDisp( spep_3  + 0, 1, 1 );
setDisp( spep_3  + 76, 1, 0 );
changeAnime( spep_3  + 0, 1, 104 );
changeAnime( spep_3 -3 + 15, 1, 106 );
changeAnime( spep_3 -3 + 16, 1, 108 );

a=-50;
setMoveKey( spep_3  + 0, 1, -20.1, 50.2 +a , 0 );
--setMoveKey( spep_3 -3 + 2, 1, -16, 50.1 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -11.1, 49.1 +a, 0 );
setMoveKey( spep_3 -3 + 6, 1, -3.8, 44.5 +a, 0 );
setMoveKey( spep_3 -3 + 8, 1, 4.4, 46.9 +a, 0 );
setMoveKey( spep_3 -3 + 10, 1, 2.4, 44.4 +a, 0 );
setMoveKey( spep_3 -3 + 13, 1, 11.1, 47.5 +a, 0 );
setMoveKey( spep_3 -3 + 15, 1, 48.8, 44.7 +a, 0 );
setMoveKey( spep_3 -3 + 16, 1, 61.3, 39.4 +a, 0 );
setMoveKey( spep_3 -3 + 18, 1, 68.5, 46.7 +a, 0 );
setMoveKey( spep_3 -3 + 20, 1, 75.1, 38.5 +a, 0 );
setMoveKey( spep_3 -3 + 22, 1, 83.4, 36.3 +a, 0 );
setMoveKey( spep_3 -3 + 24, 1, 99, 37.3 +a, 0 );
setMoveKey( spep_3 -3 + 26, 1, 102.3, 42.3 +a, 0 );
setMoveKey( spep_3 -3 + 28, 1, 110.5, 33.7 +a, 0 );
setMoveKey( spep_3 -3 + 30, 1, 120.3, 36.8 +a, 0 );
setMoveKey( spep_3 -3 + 32, 1, 117.3, 35.2 +a, 0 );
setMoveKey( spep_3 -3 + 34, 1, 131.1, 42.3 +a, 0 );
setMoveKey( spep_3 -3 + 36, 1, 135.3, 42.1 +a, 0 );
setMoveKey( spep_3 -3 + 38, 1, 132.4, 33.7 +a, 0 );
setMoveKey( spep_3 -3 + 40, 1, 156.6, 27.6 +a, 0 );
setMoveKey( spep_3 -3 + 42, 1, 177.8, 33.5 +a, 0 );
setMoveKey( spep_3 -3 + 44, 1, 179.6, 33.6 +a, 0 );
setMoveKey( spep_3 -3 + 46, 1, 193, 26.6 +a, 0 );
setMoveKey( spep_3 -3 + 48, 1, 212.5, 20.5 +a, 0 );
setMoveKey( spep_3 -3 + 50, 1, 203.5, 36.1 +a, 0 );
setMoveKey( spep_3 -3 + 52, 1, 220, 24.9 +a, 0 );
setMoveKey( spep_3 -3 + 54, 1, 205, 31.8 +a, 0 );
setMoveKey( spep_3 -3 + 56, 1, 205.9, 27.3 +a, 0 );
setMoveKey( spep_3 -3 + 58, 1, 220.1, 39.6 +a, 0 );
setMoveKey( spep_3 -3 + 60, 1, 221.3, 22.1 +a, 0 );
setMoveKey( spep_3 -3 + 62, 1, 226.5, 35.1 +a, 0 );
setMoveKey( spep_3 -3 + 64, 1, 215.8, 21.7 +a, 0 );
setMoveKey( spep_3 -3 + 66, 1, 226.9, 22.5 +a, 0 );
setMoveKey( spep_3 -3 + 68, 1, 214.5, 29.3 +a, 0 );
setMoveKey( spep_3 -3 + 70, 1, 232.2, 24.7 +a, 0 );
setMoveKey( spep_3 -3 + 72, 1, 222.6, 33.7 +a, 0 );
setMoveKey( spep_3 -3 + 74, 1, 219.2, 27.1 +a, 0 );
setMoveKey( spep_3  + 76, 1, 239.6, 33.9 +a, 0 );


setScaleKey( spep_3  + 0, 1, 2.63, 2.63 );
--setScaleKey( spep_3 -3 + 2, 1, 2.61, 2.61 );
setScaleKey( spep_3 -3 + 4, 1, 2.59, 2.59 );
setScaleKey( spep_3 -3 + 6, 1, 2.58, 2.58 );
setScaleKey( spep_3 -3 + 8, 1, 2.56, 2.56 );
setScaleKey( spep_3 -3 + 10, 1, 2.55, 2.55 );
setScaleKey( spep_3 -3 + 13, 1, 2.53, 2.53 );
setScaleKey( spep_3 -3 + 15, 1, 2.53, 2.53 );
setScaleKey( spep_3 -3 + 16, 1, 2.47, 2.47 );
setScaleKey( spep_3 -3 + 18, 1, 2.42, 2.42 );
setScaleKey( spep_3 -3 + 20, 1, 2.37, 2.37 );
setScaleKey( spep_3 -3 + 22, 1, 2.33, 2.33 );
setScaleKey( spep_3 -3 + 24, 1, 2.29, 2.29 );
setScaleKey( spep_3 -3 + 26, 1, 2.25, 2.25 );
setScaleKey( spep_3 -3 + 28, 1, 2.21, 2.21 );
setScaleKey( spep_3 -3 + 30, 1, 2.17, 2.17 );
setScaleKey( spep_3 -3 + 32, 1, 2.14, 2.14 );
setScaleKey( spep_3 -3 + 34, 1, 2.11, 2.11 );
setScaleKey( spep_3 -3 + 36, 1, 2.09, 2.09 );
setScaleKey( spep_3 -3 + 38, 1, 2.06, 2.06 );
setScaleKey( spep_3 -3 + 40, 1, 1.91, 1.91 );
setScaleKey( spep_3 -3 + 42, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 44, 1, 1.66, 1.66 );
setScaleKey( spep_3 -3 + 46, 1, 1.56, 1.56 );
setScaleKey( spep_3 -3 + 48, 1, 1.48, 1.48 );
setScaleKey( spep_3 -3 + 50, 1, 1.48, 1.48 );
setScaleKey( spep_3 -3 + 52, 1, 1.47, 1.47 );
setScaleKey( spep_3 -3 + 56, 1, 1.47, 1.47 );
setScaleKey( spep_3 -3 + 58, 1, 1.46, 1.46 );
setScaleKey( spep_3 -3 + 60, 1, 1.46, 1.46 );
setScaleKey( spep_3 -3 + 62, 1, 1.45, 1.45 );
setScaleKey( spep_3 -3 + 66, 1, 1.45, 1.45 );
setScaleKey( spep_3 -3 + 68, 1, 1.44, 1.44 );
setScaleKey( spep_3 -3 + 72, 1, 1.44, 1.44 );
setScaleKey( spep_3 -3 + 74, 1, 1.43, 1.43 );
setScaleKey( spep_3  + 76, 1, 1.43, 1.43 );

setRotateKey( spep_3  + 0, 1, -10 );
setRotateKey( spep_3 -3 + 13, 1, -10 );
setRotateKey( spep_3 -3 + 14, 1, -10 );
setRotateKey( spep_3 -3 + 15, 1, -50 );
setRotateKey( spep_3 -3 + 16, 1, -4 );
setRotateKey( spep_3  + 76, 1, -4 );

--SE
playSe( spep_3 +12, 1033 );  --発射音
playSe( spep_3 +30, 1025 );  --発射音

-- ** エフェクト等 ** --
entryFade(spep_3+70,4,10,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_4 = spep_3 + 78;


------------------------------------------------------
-- 敵吹っ飛びシーン(100F)
------------------------------------------------------
-- ** エフェクト等 ** --
ga_bg = entryEffect( spep_4 + 0, SP_05x,  0x80, -1, 0, 0, 0 );  --導入(ef_001)
setEffMoveKey( spep_4 + 0, ga_bg, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, ga_bg, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, ga_bg, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, ga_bg, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, ga_bg, 0 );
setEffRotateKey( spep_4 + 100, ga_bg, 0 );
setEffAlphaKey( spep_4 + 0, ga_bg, 255 );
setEffAlphaKey( spep_4 + 100, ga_bg, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_4 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_4 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_4 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 100, bakuhatsu, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_4 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_4 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_4 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 100, hibiware, 0 );

setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen_g = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen_g, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen_g, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen_g, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen_g, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen_g, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen_g, 0 );
setEffRotateKey( spep_4 + 46, shuchusen_g, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen_g, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen_g, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen_g, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen_g, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen_g, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen_g, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen_g, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen_g, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen_g, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen_g, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen_g, 0 );

kuroshuchusen_g = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, kuroshuchusen_g, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, kuroshuchusen_g, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, kuroshuchusen_g, 1, 1 );
setEffScaleKey( spep_4 + 100, kuroshuchusen_g, 1, 1 );

setEffRotateKey( spep_4 + 14, kuroshuchusen_g, 0 );
setEffRotateKey( spep_4 + 100, kuroshuchusen_g, 0 );

setEffAlphaKey( spep_4 + 14, kuroshuchusen_g, 255 );
setEffAlphaKey( spep_4 + 100, kuroshuchusen_g, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_4 + 14, ctga, -10.9 );
setEffRotateKey( spep_4 + 15, ctga, -10.9 );
setEffRotateKey( spep_4 + 16, ctga, -14.9 );
setEffRotateKey( spep_4 + 17, ctga, -14.9 );
setEffRotateKey( spep_4 + 18, ctga, -10.9 );
setEffRotateKey( spep_4 + 19, ctga, -10.9 );
setEffRotateKey( spep_4 + 20, ctga, -14.9 );
setEffRotateKey( spep_4 + 21, ctga, -14.9 );
setEffRotateKey( spep_4 + 22, ctga, -10.9 );
setEffRotateKey( spep_4 + 23, ctga, -10.9 );
setEffRotateKey( spep_4 + 24, ctga, -14.9 );
setEffRotateKey( spep_4 + 25, ctga, -14.9 );
setEffRotateKey( spep_4 + 26, ctga, -10.9 );
setEffRotateKey( spep_4 + 27, ctga, -10.9 );
setEffRotateKey( spep_4 + 28, ctga, -14.9 );
setEffRotateKey( spep_4 + 100, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_4 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_4 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_4 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_4 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_4 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_4 + 100, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_4 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_4 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_4 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 110, 1, 1.6, 1.6 );


setRotateKey( spep_4 + 0, 1, -40 );
setRotateKey( spep_4 + 1, 1, -40 );
setRotateKey( spep_4 + 2, 1, 80 );
setRotateKey( spep_4 + 3, 1, 80 );
setRotateKey( spep_4 + 4, 1, 200 );
setRotateKey( spep_4 + 5, 1, 200 );
setRotateKey( spep_4 + 6, 1, 360 );
setRotateKey( spep_4 + 7, 1, 360 );
setRotateKey( spep_4 + 8, 1, 558 );
setRotateKey( spep_4 + 9, 1, 558 );
setRotateKey( spep_4 + 10, 1, 425 );
setRotateKey( spep_4 + 11, 1, 425 );
setRotateKey( spep_4 + 12, 1, -40 );
setRotateKey( spep_4 + 100, 1, -40 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_10 );  --爆発音
playSe( spep_4 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 10 );
entryFade( spep_4 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_4 + 100 );


end