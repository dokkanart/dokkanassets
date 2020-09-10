--1017270:グレートサイヤマン3号_ジャスティススラッシュ
--sp_effect_b2_00022

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
SP_01=	153641	;--	導入、剣回し
SP_02=	153642	;--	セリフカットイン
SP_03=	153643	;--	ジャンプ接近、切りつけ
SP_04=	153644	;--	ラストカット
SP_05=	153645	;--	ラストカット背景

--敵側
SP_01x=	153641	;--	導入、剣回し	
SP_02x=	153646	;--	セリフカットイン	(敵)
SP_03x=	153643	;--	ジャンプ接近、切りつけ	
SP_04x=	153644	;--	ラストカット	
SP_05x=	153645	;--	ラストカット背景	


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
-- 剣を回す
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
rotation = entryEffectLife( spep_0 + 0, SP_01,  120 ,0x80, -1, 0, 0, 0 );  
setEffMoveKey( spep_0 + 0, rotation, 0, 0 , 0 );
setEffMoveKey( spep_0 + 120, rotation, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, rotation, 1.0, 1.0 );
setEffScaleKey( spep_0 + 120, rotation, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, rotation, 0 );
setEffRotateKey( spep_0 + 120, rotation, 0 );
setEffAlphaKey( spep_0 + 0, rotation, 255 );
setEffAlphaKey( spep_0 + 120, rotation, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0 -3 + 20,  906, 98 + 3, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 -3 + 20, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0  + 118, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 20, shuchusen1, 1.1, 1.1 );
setEffScaleKey( spep_0  + 118, shuchusen1, 1.1, 1.1 );

setEffRotateKey( spep_0 -3 + 20, shuchusen1, 180 );
setEffRotateKey( spep_0  + 118, shuchusen1, 180 );

setEffAlphaKey( spep_0 -3 + 20, shuchusen1, 255 );
setEffAlphaKey( spep_0  + 118, shuchusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 , 0, 120, 0, 0, 0, 0, 130 );  --薄い黒　背景

-- ** 音 ** --
playSe( spep_0 + 24, 1042 );  --目が光る
playSe( spep_0 + 60, 1003 );  --剣を回す
playSe( spep_0 + 80, 1003 );  --剣を回す
playSe( spep_0 + 100, 1003 );  --剣を回す


-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 112, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--はじめの準備
spep_1=spep_0 +120;

------------------------------------------------------
-- ため
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffectLife( spep_1 + 0, SP_02,  100 ,0x80, -1, 0, 0, 0 );  
setEffMoveKey( spep_1 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_1 + 100, tame, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_1 + 100, tame, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 100, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 100, tame, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_1 +8, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_1 +8, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_1  + 20,  190006, 72, 0x100, -1, 0, 100.9, 512.8 ); --ゴゴゴ
setEffShake( spep_1  + 20, ctgogo, 72, 10 );
 
setEffMoveKey( spep_1  + 20, ctgogo, 100.9, 512.8 , 0 );
setEffMoveKey( spep_1  + 92, ctgogo, 100.9, 515.5 , 0 );

setEffScaleKey( spep_1  + 20, ctgogo, 0.84, 0.84 );
setEffScaleKey( spep_1  + 84, ctgogo, 0.84, 0.84 );
setEffScaleKey( spep_1  + 86, ctgogo, 1.2, 1.2 );
setEffScaleKey( spep_1  + 88, ctgogo, 1.3, 1.3 );
setEffScaleKey( spep_1  + 90, ctgogo, 1.66, 1.66 );
setEffScaleKey( spep_1  + 92, ctgogo, 2.02, 2.02 );
 
setEffRotateKey( spep_1  + 20, ctgogo, 0 );
setEffRotateKey( spep_1  + 92, ctgogo, 0 );

setEffAlphaKey( spep_1  + 20, ctgogo, 0 );
setEffAlphaKey( spep_1  + 21, ctgogo, 255 );
setEffAlphaKey( spep_1  + 22, ctgogo, 255 );
setEffAlphaKey( spep_1  + 92, ctgogo, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_1 + 0,  906, 98, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 98, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen2, 1.1, 1.1 );
setEffScaleKey( spep_1 + 98, shuchusen2, 1.1, 1.1 );

setEffRotateKey( spep_1 + 0, shuchusen2, 180 );
setEffRotateKey( spep_1 + 98, shuchusen2, 180 );

setEffAlphaKey( spep_1 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 98, shuchusen2, 255 );

-- ** 白フェード** --
entryFade(spep_1+90,4,12,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 , 0, 100, 0, 0, 0, 0, 130 );  --薄い黒　背景

--SE
playSe( spep_1 + 0, 1062 );  --剣を構える
playSe( spep_1 + 20, SE_04 );  --ゴゴゴ

--次の準備
spep_2=spep_1+100;


--------------------------------------
--カードカットイン
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

-- ** エフェクト等 ** --
entryFade(spep_2+84,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 斬撃
------------------------------------------------------
-- ** エフェクト等 ** --
slashing = entryEffectLife( spep_3 + 0, SP_03,  108 ,0x80, -1, 0, 0, 0 );  
setEffMoveKey( spep_3 + 0, slashing, 0, 0 , 0 );
setEffMoveKey( spep_3 + 108, slashing, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, slashing, 1.0, 1.0 );
setEffScaleKey( spep_3 + 108, slashing, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, slashing, 0 );
setEffRotateKey( spep_3 + 108, slashing, 0 );
setEffAlphaKey( spep_3 + 0, slashing, 255 );
setEffAlphaKey( spep_3 + 108, slashing, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_3 + 0,  906, 106, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 106, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen3, 1.1, 1.1 );
setEffScaleKey( spep_3 + 106, shuchusen3, 1.1, 1.1 );

setEffRotateKey( spep_3 + 0, shuchusen3, 180 );
setEffRotateKey( spep_3 + 106, shuchusen3, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 106, shuchusen3, 255 );

--文字エントリー
ctba = entryEffectLife( spep_3  + 0,  10022, 38 -3, 0x100, -1, 0, -134.6, 104.4 );--バッ

setEffMoveKey( spep_3  + 0, ctba, -134.6, 104.4 , 0 );
--setEffMoveKey( spep_3 -3 + 2, ctba, -148.5, 153.4 , 0 );
setEffMoveKey( spep_3 -3 + 4, ctba, -153.4, 197.4 , 0 );
setEffMoveKey( spep_3 -3 + 6, ctba, -170.6, 242.6 , 0 );
setEffMoveKey( spep_3 -3 + 8, ctba, -177.9, 295 , 0 );
setEffMoveKey( spep_3 -3 + 10, ctba, -176.8, 285.9 , 0 );
setEffMoveKey( spep_3 -3 + 12, ctba, -180.8, 295.4 , 0 );
setEffMoveKey( spep_3 -3 + 14, ctba, -176.4, 289.1 , 0 );
setEffMoveKey( spep_3 -3 + 16, ctba, -181.6, 291.3 , 0 );
setEffMoveKey( spep_3 -3 + 18, ctba, -177.9, 287.7 , 0 );
setEffMoveKey( spep_3 -3 + 20, ctba, -178.1, 293 , 0 );
setEffMoveKey( spep_3 -3 + 22, ctba, -178.3, 287.2 , 0 );
setEffMoveKey( spep_3 -3 + 24, ctba, -181.3, 293.1 , 0 );
setEffMoveKey( spep_3 -3 + 26, ctba, -179.2, 288.8 , 0 );
setEffMoveKey( spep_3 -3 + 28, ctba, -177.9, 295 , 0 );
setEffMoveKey( spep_3 -3 + 30, ctba, -197.4, 313.6 , 0 );
setEffMoveKey( spep_3 -3 + 32, ctba, -223.5, 354.7 , 0 );
setEffMoveKey( spep_3 -3 + 34, ctba, -237.8, 374.2 , 0 );
setEffMoveKey( spep_3 -3 + 36, ctba, -267.7, 406.4 , 0 );
setEffMoveKey( spep_3 -3 + 38, ctba, -289.2, 435.2 , 0 );

setEffScaleKey( spep_3  + 0, ctba, 0.5, 0.5 );
--setEffScaleKey( spep_3 -3 + 2, ctba, 0.75, 0.75 );
setEffScaleKey( spep_3 -3 + 4, ctba, 1, 1 );
setEffScaleKey( spep_3 -3 + 6, ctba, 1.25, 1.25 );
setEffScaleKey( spep_3 -3 + 8, ctba, 1.5, 1.5 );
setEffScaleKey( spep_3 -3 + 28, ctba, 1.5, 1.5 );
setEffScaleKey( spep_3 -3 + 30, ctba, 1.8, 1.8 );
setEffScaleKey( spep_3 -3 + 32, ctba, 2.1, 2.1 );
setEffScaleKey( spep_3 -3 + 34, ctba, 2.4, 2.4 );
setEffScaleKey( spep_3 -3 + 36, ctba, 2.7, 2.7 );
setEffScaleKey( spep_3 -3 + 38, ctba, 3, 3 );

setEffRotateKey( spep_3  + 0, ctba, -6.1 );
--setEffRotateKey( spep_3 -3 + 2, ctba, -6.1 );
setEffRotateKey( spep_3 -3 + 4, ctba, -6 );
setEffRotateKey( spep_3 -3 + 38, ctba, -6 );

setEffAlphaKey( spep_3  + 0, ctba, 255 );
setEffAlphaKey( spep_3 -3 + 28, ctba, 255 );
setEffAlphaKey( spep_3 -3 + 30, ctba, 204 );
setEffAlphaKey( spep_3 -3 + 32, ctba, 153 );
setEffAlphaKey( spep_3 -3 + 34, ctba, 102 );
setEffAlphaKey( spep_3 -3 + 36, ctba, 51 );
setEffAlphaKey( spep_3 -3 + 38, ctba, 0 );

--SE
SE0=playSe( spep_3 + 0, 1007 );  --飛びかかる

-- ** 黒背景 ** --
entryFadeBg( spep_3 , 0, 108, 0, 0, 0, 0, 130 );  --薄い黒　背景

---------------------------------------------------------------------------
-- 回避
---------------------------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 30; --エンドフェイズのフレーム数を置き換える

    stopSe( SP_dodge - 12, SE0, 0 );

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
--stopSe( spep_3 + 52 , SE0, 0 );
playSe( spep_3 + 54, 1032 );  --飛びかかる



-- ** エフェクト等 ** --
entryFade(spep_3+100,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_4 = spep_3 + 108;

------------------------------------------------------
-- 終わり
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_04,  0x100, -1, 0, 0, 0 );  
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 216, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 216, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 216, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 216, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_4 + 0, SP_05,  0x80, -1, 0, 0, 0 );  
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 216, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 216, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 216, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 216, finish_b, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 92, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );

setMoveKey( spep_4 + 0, 1, 712.9, 815.8 , 0 );
--setMoveKey( spep_4 + 2, 1, 599, 722.7 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 464.8, 540.5 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 350.6, 429 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 219.6, 258.3 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 225.9, 283.3 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 220, 258 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 225.9, 283.3 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 220, 258 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 225.9, 283.3 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 220, 258 , 0 );
setMoveKey( spep_4  + 92, 1, 220, 258 , 0 );

setScaleKey( spep_4 + 0, 1, 2.43, 2.43 );
--setScaleKey( spep_4 + 2, 1, 2.34, 2.34 );
setScaleKey( spep_4 -3 + 4, 1, 2.19, 2.19 );
setScaleKey( spep_4 -3 + 6, 1, 1.52, 1.52 );
setScaleKey( spep_4 -3 + 8, 1, 1.26, 1.26 );
setScaleKey( spep_4 -3 + 10, 1, 1.22, 1.22 );
setScaleKey( spep_4 + 92, 1, 1.22, 1.22 );

setRotateKey( spep_4 + 0, 1, -50 );
setRotateKey( spep_4 + 92, 1, -50 );

--集中線
shuchusen3 = entryEffectLife( spep_4 + 94,  906, 120, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 94, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 214, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 94, shuchusen3, 1.1, 1.1 );
setEffScaleKey( spep_4 + 214, shuchusen3, 1.1, 1.1 );

setEffRotateKey( spep_4 + 94, shuchusen3, 180 );
setEffRotateKey( spep_4 + 214, shuchusen3, 180 );

setEffAlphaKey( spep_4 + 94, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 214, shuchusen3, 255 );

--SE
SE1=playSe( spep_4 + 0, 1072 );  --飛びかかる
--stopSe( spep_4 +80, SE1, 0 );
playSe( spep_4+56, 1040); --剣をしまう
playSe( spep_4 + 92, 1067 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 , 0, 216, 0, 0, 0, 0, 130 );  --薄い黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 92 );
endPhase( spep_4 + 200 );


else
------------------------------------------------------------------------------------------------------------
-- 敵
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 剣を回す
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
rotation = entryEffectLife( spep_0 + 0, SP_01x,  120 ,0x80, -1, 0, 0, 0 );  
setEffMoveKey( spep_0 + 0, rotation, 0, 0 , 0 );
setEffMoveKey( spep_0 + 120, rotation, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, rotation, -1.0, 1.0 );
setEffScaleKey( spep_0 + 120, rotation, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, rotation, 0 );
setEffRotateKey( spep_0 + 120, rotation, 0 );
setEffAlphaKey( spep_0 + 0, rotation, 255 );
setEffAlphaKey( spep_0 + 120, rotation, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0 -3 + 20,  906, 98 + 3, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 -3 + 20, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0  + 118, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 20, shuchusen1, 1.1, 1.1 );
setEffScaleKey( spep_0  + 118, shuchusen1, 1.1, 1.1 );

setEffRotateKey( spep_0 -3 + 20, shuchusen1, 180 );
setEffRotateKey( spep_0  + 118, shuchusen1, 180 );

setEffAlphaKey( spep_0 -3 + 20, shuchusen1, 255 );
setEffAlphaKey( spep_0  + 118, shuchusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 , 0, 120, 0, 0, 0, 0, 130 );  --薄い黒　背景

-- ** 音 ** --
playSe( spep_0 + 24, 1042 );  --目が光る
playSe( spep_0 + 60, 1003 );  --剣を回す
playSe( spep_0 + 80, 1003 );  --剣を回す
playSe( spep_0 + 100, 1003 );  --剣を回す


-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 112, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--はじめの準備
spep_1=spep_0 +120;

------------------------------------------------------
-- ため
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffectLife( spep_1 + 0, SP_02x,  100 ,0x80, -1, 0, 0, 0 );  
setEffMoveKey( spep_1 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_1 + 100, tame, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_1 + 100, tame, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 100, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 100, tame, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_1 +8, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_1 +8, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_1  + 20,  190006, 72, 0x100, -1, 0, 100.9, 512.8 ); --ゴゴゴ
setEffShake( spep_1  + 20, ctgogo, 72, 10 );
 
setEffMoveKey( spep_1  + 20, ctgogo, 100.9, 512.8 , 0 );
setEffMoveKey( spep_1  + 92, ctgogo, 100.9, 515.5 , 0 );

setEffScaleKey( spep_1  + 20, ctgogo, -0.84, 0.84 );
setEffScaleKey( spep_1  + 84, ctgogo, -0.84, 0.84 );
setEffScaleKey( spep_1  + 86, ctgogo, -1.2, 1.2 );
setEffScaleKey( spep_1  + 88, ctgogo, -1.3, 1.3 );
setEffScaleKey( spep_1  + 90, ctgogo, -1.66, 1.66 );
setEffScaleKey( spep_1  + 92, ctgogo, -2.02, 2.02 );
 
setEffRotateKey( spep_1  + 20, ctgogo, 0 );
setEffRotateKey( spep_1  + 92, ctgogo, 0 );

setEffAlphaKey( spep_1  + 20, ctgogo, 0 );
setEffAlphaKey( spep_1  + 21, ctgogo, 255 );
setEffAlphaKey( spep_1  + 22, ctgogo, 255 );
setEffAlphaKey( spep_1  + 92, ctgogo, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_1 + 0,  906, 98, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 98, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen2, 1.1, 1.1 );
setEffScaleKey( spep_1 + 98, shuchusen2, 1.1, 1.1 );

setEffRotateKey( spep_1 + 0, shuchusen2, 180 );
setEffRotateKey( spep_1 + 98, shuchusen2, 180 );

setEffAlphaKey( spep_1 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 98, shuchusen2, 255 );

-- ** 白フェード** --
entryFade(spep_1+90,4,12,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 , 0, 100, 0, 0, 0, 0, 130 );  --薄い黒　背景

--SE
playSe( spep_1 + 0, 1062 );  --剣を構える
playSe( spep_1 + 20, SE_04 );  --ゴゴゴ

--次の準備
spep_2=spep_1+100;


--------------------------------------
--カードカットイン
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

-- ** エフェクト等 ** --
entryFade(spep_2+84,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 斬撃
------------------------------------------------------
-- ** エフェクト等 ** --
slashing = entryEffectLife( spep_3 + 0, SP_03x,  108 ,0x80, -1, 0, 0, 0 );  
setEffMoveKey( spep_3 + 0, slashing, 0, 0 , 0 );
setEffMoveKey( spep_3 + 108, slashing, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, slashing, -1.0, 1.0 );
setEffScaleKey( spep_3 + 108, slashing, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, slashing, 0 );
setEffRotateKey( spep_3 + 108, slashing, 0 );
setEffAlphaKey( spep_3 + 0, slashing, 255 );
setEffAlphaKey( spep_3 + 108, slashing, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_3 + 0,  906, 106, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 106, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen3, 1.1, 1.1 );
setEffScaleKey( spep_3 + 106, shuchusen3, 1.1, 1.1 );

setEffRotateKey( spep_3 + 0, shuchusen3, 180 );
setEffRotateKey( spep_3 + 106, shuchusen3, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 106, shuchusen3, 255 );

--文字エントリー
ctba = entryEffectLife( spep_3  + 0,  10022, 38 -3, 0x100, -1, 0, -134.6, 104.4 );--バッ

setEffMoveKey( spep_3  + 0, ctba, -134.6, 104.4 , 0 );
--setEffMoveKey( spep_3 -3 + 2, ctba, -148.5, 153.4 , 0 );
setEffMoveKey( spep_3 -3 + 4, ctba, -153.4, 197.4 , 0 );
setEffMoveKey( spep_3 -3 + 6, ctba, -170.6, 242.6 , 0 );
setEffMoveKey( spep_3 -3 + 8, ctba, -177.9, 295 , 0 );
setEffMoveKey( spep_3 -3 + 10, ctba, -176.8, 285.9 , 0 );
setEffMoveKey( spep_3 -3 + 12, ctba, -180.8, 295.4 , 0 );
setEffMoveKey( spep_3 -3 + 14, ctba, -176.4, 289.1 , 0 );
setEffMoveKey( spep_3 -3 + 16, ctba, -181.6, 291.3 , 0 );
setEffMoveKey( spep_3 -3 + 18, ctba, -177.9, 287.7 , 0 );
setEffMoveKey( spep_3 -3 + 20, ctba, -178.1, 293 , 0 );
setEffMoveKey( spep_3 -3 + 22, ctba, -178.3, 287.2 , 0 );
setEffMoveKey( spep_3 -3 + 24, ctba, -181.3, 293.1 , 0 );
setEffMoveKey( spep_3 -3 + 26, ctba, -179.2, 288.8 , 0 );
setEffMoveKey( spep_3 -3 + 28, ctba, -177.9, 295 , 0 );
setEffMoveKey( spep_3 -3 + 30, ctba, -197.4, 313.6 , 0 );
setEffMoveKey( spep_3 -3 + 32, ctba, -223.5, 354.7 , 0 );
setEffMoveKey( spep_3 -3 + 34, ctba, -237.8, 374.2 , 0 );
setEffMoveKey( spep_3 -3 + 36, ctba, -267.7, 406.4 , 0 );
setEffMoveKey( spep_3 -3 + 38, ctba, -289.2, 435.2 , 0 );

setEffScaleKey( spep_3  + 0, ctba, 0.5, 0.5 );
--setEffScaleKey( spep_3 -3 + 2, ctba, 0.75, 0.75 );
setEffScaleKey( spep_3 -3 + 4, ctba, 1, 1 );
setEffScaleKey( spep_3 -3 + 6, ctba, 1.25, 1.25 );
setEffScaleKey( spep_3 -3 + 8, ctba, 1.5, 1.5 );
setEffScaleKey( spep_3 -3 + 28, ctba, 1.5, 1.5 );
setEffScaleKey( spep_3 -3 + 30, ctba, 1.8, 1.8 );
setEffScaleKey( spep_3 -3 + 32, ctba, 2.1, 2.1 );
setEffScaleKey( spep_3 -3 + 34, ctba, 2.4, 2.4 );
setEffScaleKey( spep_3 -3 + 36, ctba, 2.7, 2.7 );
setEffScaleKey( spep_3 -3 + 38, ctba, 3, 3 );

setEffRotateKey( spep_3  + 0, ctba, -6.1 );
--setEffRotateKey( spep_3 -3 + 2, ctba, -6.1 );
setEffRotateKey( spep_3 -3 + 4, ctba, -6 );
setEffRotateKey( spep_3 -3 + 38, ctba, -6 );

setEffAlphaKey( spep_3  + 0, ctba, 255 );
setEffAlphaKey( spep_3 -3 + 28, ctba, 255 );
setEffAlphaKey( spep_3 -3 + 30, ctba, 204 );
setEffAlphaKey( spep_3 -3 + 32, ctba, 153 );
setEffAlphaKey( spep_3 -3 + 34, ctba, 102 );
setEffAlphaKey( spep_3 -3 + 36, ctba, 51 );
setEffAlphaKey( spep_3 -3 + 38, ctba, 0 );

--SE
SE0=playSe( spep_3 + 0, 1007 );  --飛びかかる

-- ** 黒背景 ** --
entryFadeBg( spep_3 , 0, 108, 0, 0, 0, 0, 130 );  --薄い黒　背景

---------------------------------------------------------------------------
-- 回避
---------------------------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 30; --エンドフェイズのフレーム数を置き換える

    stopSe( SP_dodge - 12, SE0, 0 );

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

playSe( spep_3 + 54, 1032 );  --飛びかかる



-- ** エフェクト等 ** --
entryFade(spep_3+100,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_4 = spep_3 + 108;

------------------------------------------------------
-- 終わり
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_04x,  0x100, -1, 0, 0, 0 );  
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 216, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 216, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 216, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 216, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_4 + 0, SP_05x,  0x80, -1, 0, 0, 0 );  
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 216, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 216, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 216, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 216, finish_b, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 92, 1, 0 );

changeAnime( spep_4 + 0, 1, 6 );

setMoveKey( spep_4 + 0, 1, -712.9, 815.8 , 0 );
--setMoveKey( spep_4 + 2, 1, 599, 722.7 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -464.8, 540.5 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -350.6, 429 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -219.6, 258.3 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -225.9, 283.3 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -220, 258 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -225.9, 283.3 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -220, 258 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -225.9, 283.3 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -220, 258 , 0 );
setMoveKey( spep_4  + 92, 1, -220, 258 , 0 );

setScaleKey( spep_4 + 0, 1, 2.43, 2.43 );
--setScaleKey( spep_4 + 2, 1, 2.34, 2.34 );
setScaleKey( spep_4 -3 + 4, 1, 2.19, 2.19 );
setScaleKey( spep_4 -3 + 6, 1, 1.52, 1.52 );
setScaleKey( spep_4 -3 + 8, 1, 1.26, 1.26 );
setScaleKey( spep_4 -3 + 10, 1, 1.22, 1.22 );
setScaleKey( spep_4 + 92, 1, 1.22, 1.22 );

setRotateKey( spep_4 + 0, 1, 50 );
setRotateKey( spep_4 + 92, 1, 50 );

--集中線
shuchusen3 = entryEffectLife( spep_4 + 94,  906, 120, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 94, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 214, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 94, shuchusen3, 1.1, 1.1 );
setEffScaleKey( spep_4 + 214, shuchusen3, 1.1, 1.1 );

setEffRotateKey( spep_4 + 94, shuchusen3, 180 );
setEffRotateKey( spep_4 + 214, shuchusen3, 180 );

setEffAlphaKey( spep_4 + 94, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 214, shuchusen3, 255 );

--SE
SE1=playSe( spep_4 + 0, 1072 );  --飛びかかる
stopSe( spep_4 +80, SE1, 0 );
playSe( spep_4+56, 1040); --剣をしまう
playSe( spep_4 + 92, 1067 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 , 0, 216, 0, 0, 0, 0, 130 );  --薄い黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 92 );
endPhase( spep_4 + 200 );
end