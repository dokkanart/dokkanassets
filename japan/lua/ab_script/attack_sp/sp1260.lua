--1011330:ベジータJr._ビクトリーラッシュ
--sp_effect_b1_00064

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--***SE***
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

--味方
SP_01=  152943  ;-- 待機
SP_02=  152944  ;-- 気為め
SP_03=  152945  ;-- 一撃目：登場からキック
SP_04=  152946  ;-- 二撃目：両手殴り
SP_05=  152947  ;-- 二撃目：両手殴りエフェクト
SP_06=  152948  ;-- 三撃目：キック
SP_07=  152950  ;-- 四撃目：キック
SP_08=  152952  ;-- 四撃目：キックエフェクト

--敵
SP_01x= 152943  ;-- 待機  
SP_02x= 152944  ;-- 気為め 
SP_03x= 152945  ;-- 一撃目：登場からキック 
SP_04x= 152946  ;-- 二撃目：両手殴り    
SP_05x= 152947  ;-- 二撃目：両手殴りエフェクト   
SP_06x= 152949  ;-- 三撃目：キック (敵)
SP_07x= 152951  ;-- 四撃目：キック (敵)
SP_08x= 152952  ;-- 四撃目：キックエフェクト    

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI(0, 0);

changeAnime( 0, 0, 1);                       -- 立ち
changeAnime( 0, 1, 101);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);


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
setMoveKey(   0,   1,    -5000,  -5000,  0);
setMoveKey(   1,   1,    -5000,  -5000,  0);
setMoveKey(   2,   1,    -5000,  -5000,  0);
setMoveKey(   3,   1,    -5000,  -5000,  0);
setMoveKey(   4,   1,    -5000,  -5000,  0);
setMoveKey(   5,   1,    -5000,  -5000,  0);
setMoveKey(   6,   1,    -5000,  -5000,  0);
setScaleKey(   1,   1, 0.39, 0.39);
setScaleKey(   2,   1, 0.39, 0.39);
setScaleKey(   3,   1, 0.39, 0.39);
setScaleKey(   4,   1, 0.39, 0.39);
setScaleKey(   5,   1, 0.39, 0.39);
setScaleKey(   6,   1, 0.39, 0.39);


kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 待機
------------------------------------------------------

spep_0=0;

-- ** エフェクト等 (前)
taiki = entryEffectLife( spep_0 + 0, SP_01, 30, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, taiki, 0, 0 , 0 );
setEffMoveKey( spep_0 + 30, taiki, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, taiki, 1.0, 1.0 );
setEffScaleKey( spep_0 + 30, taiki, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, taiki, 255 );
setEffAlphaKey( spep_0 + 28, taiki, 255 );
setEffAlphaKey( spep_0 + 29, taiki, 255 );
setEffAlphaKey( spep_0 + 30, taiki, 0 );
setEffRotateKey( spep_0 + 0, taiki, 0 );
setEffRotateKey( spep_0 + 30, taiki, 0 );

--白フェード
--entryFade( spep_0 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+30;
------------------------------------------------------
-- ため
------------------------------------------------------
-- ** エフェクト等 (前)
tame = entryEffectLife( spep_1 + 0, SP_02, 102, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_1 + 102, tame, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_1 + 102, tame, 1.0, 1.0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 102, tame, 255 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 102, tame, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_1 + 0,  906, 74, 0x100, -1, 0, 235.3, 0 );

setEffMoveKey( spep_1  + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1  + 74, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1  + 0, shuchusen1, 1.1, 1.1 );
setEffScaleKey( spep_1  + 74, shuchusen1, 1.1, 1.1 );

setEffRotateKey( spep_1  + 0, shuchusen1, 180 );
setEffRotateKey( spep_1  + 74, shuchusen1, 180 );

setEffAlphaKey( spep_1  + 0, shuchusen1, 255 );
setEffAlphaKey( spep_1  + 72, shuchusen1, 255 );
setEffAlphaKey( spep_1  + 73, shuchusen1, 255 );
setEffAlphaKey( spep_1  + 74, shuchusen1, 0 );


--集中線
ryusen1 = entryEffectLife( spep_1  + 75,  914, 25, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 75, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1  + 100, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 75, ryusen1, 2, 1 );
setEffScaleKey( spep_1  + 100, ryusen1, 2, 1 );

setEffRotateKey( spep_1  + 75, ryusen1, 0 );
setEffRotateKey( spep_1  + 100, ryusen1, 0 );

setEffAlphaKey( spep_1  + 75, ryusen1, 255 );
setEffAlphaKey( spep_1  + 100, ryusen1, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_1 +4+10, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_1 +4+10, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--文字エントリー
ctgogo = entryEffectLife( spep_1 +4+22,  190006, 72, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ

setEffShake( spep_1 +4+22, ctgogo, 72, 10 );

setEffMoveKey( spep_1 +4+22, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_1 +4+94, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_1 +4+22, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_1 +4 + 86, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_1 +4 + 88, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_1 +4 +90, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_1 +4 + 93, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_1 +4+94, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_1 +4+22, ctgogo, 0 );
setEffRotateKey( spep_1 +4+94, ctgogo, 0 );

setEffAlphaKey( spep_1 +4+22, ctgogo, 0 );
setEffAlphaKey( spep_1 +4 + 23, ctgogo, 255 );
setEffAlphaKey( spep_1 +4 + 24, ctgogo, 255 );
setEffAlphaKey( spep_1 +4+94, ctgogo, 255 );

--SE
playSe( spep_1+26, SE_04); --ゴゴゴ

--黒背景
entryFadeBg(spep_1, 20,82, 0, 0, 0, 0, 160);  -- 黒　背

--白フェード
entryFade( spep_1 +94 , 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+102;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_2,SE_05);
shuchusen=entryEffectLife(spep_2,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_2,shuchusen,1.6,1.6);

speff2=entryEffect(spep_2,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_2+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2+90;


------------------------------------------------------
-- 一撃目：登場からキック
------------------------------------------------------

-- ** エフェクト等 (前)
kick = entryEffectLife( spep_3 + 0, SP_03, 92, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, kick, 0, 0 , 0 );
setEffMoveKey( spep_3 + 92, kick, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kick, 1.0, 1.0 );
setEffScaleKey( spep_3 + 92, kick, 1.0, 1.0 );
setEffAlphaKey( spep_3 + 0, kick, 255 );
setEffAlphaKey( spep_3 + 92, kick, 255 );
setEffRotateKey( spep_3 + 0, kick, 0 );
setEffRotateKey( spep_3 + 92, kick, 0 );

--流線
ryusen2 = entryEffectLife( spep_3  + 2,  914, 29, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_3  + 2, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_3  + 31, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_3  + 2, ryusen2, 3, 1.5 );
setEffScaleKey( spep_3  + 31, ryusen2, 3, 1.5 );

setEffRotateKey( spep_3 + 2, ryusen2, 0 );
setEffRotateKey( spep_3  + 31, ryusen2, 0 );

setEffAlphaKey( spep_3  + 2, ryusen2, 255 );
setEffAlphaKey( spep_3  + 31, ryusen2, 255 );

--敵の動き
setDisp( spep_3  + 0, 1, 1 );

changeAnime( spep_3  + 0, 1, 100 );

setMoveKey( spep_3  + 0, 1, 540.1, 20.5 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, 434.4, 20.5 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 342.3, 20.5 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 261, 20.5 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 189.7, 20.5 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 128.1, 20.5 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 76.7, 20.5 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 36.7, 20.5 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 10, 20.5 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 0, 20.6 , 0 );
setMoveKey( spep_3  + 18, 1, 0, 20.6 , 0 );

setScaleKey( spep_3  + 0, 1, 2, 2 );
--setScaleKey( spep_3 -3 + 2, 1, 1.9, 1.9 );
setScaleKey( spep_3 -3 + 4, 1, 1.82, 1.82 );
setScaleKey( spep_3 -3 + 6, 1, 1.74, 1.74 );
setScaleKey( spep_3 -3 + 8, 1, 1.68, 1.68 );
setScaleKey( spep_3 -3 + 10, 1, 1.62, 1.62 );
setScaleKey( spep_3 -3 + 12, 1, 1.57, 1.57 );
setScaleKey( spep_3 -3 + 14, 1, 1.53, 1.53 );
setScaleKey( spep_3 -3 + 16, 1, 1.51, 1.51 );
setScaleKey( spep_3 -3 + 18, 1, 1.5, 1.5 );
setScaleKey( spep_3  + 18, 1, 1.5, 1.5 );

setRotateKey( spep_3  + 0, 1, 0 );
setRotateKey( spep_3  + 18, 1, 0 );

--黒背景
entryFadeBg(spep_3, 0, 92, 0, 0, 0, 0, 160);  -- 黒　背


--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3+18 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    
   
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    
    setMoveKey(SP_dodge, 1, 0, 20.6, 0);
    setScaleKey(SP_dodge , 1 ,1.5, 1.5 );
    setRotateKey(SP_dodge,   1, 0);
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, 0, 20.6, 0);
    setScaleKey(SP_dodge+10 , 1 ,1.5, 1.5 );
    setRotateKey(SP_dodge+10,   1, 0);
    
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
    
    --------------------------------------
    --回避しなかった場合
    --------------------------------------
--敵の動き
setDisp( spep_3  + 90, 1, 0 );

changeAnime( spep_3 -3 + 40, 1, 108 );

a=20;

setMoveKey( spep_3 -3 + 39, 1, 0, 20.6 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 29.9, 59.9 , 0 );
--setMoveKey( spep_3 -3 + 41, 1, 171.2, 179.9 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 36.9, 55.2 , 0 );
setMoveKey( spep_3 -3 + 41, 1, 36.9, 55.2 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 171.2, 179.9  , 0 );
setMoveKey( spep_3 -3 + 43, 1, 171.2, 179.9  , 0 );
--setMoveKey( spep_3 -3 + 44, 1, 138.1, 85.5 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 77.5, 67.2 , 0 );
setMoveKey( spep_3 -3 + 47, 1, 138.1, 85.5 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 31.8, 56.6 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 53.8, 75 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 65.1, 84.8 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 45.6, 65.7 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 30.2, 55.7 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 44.1, 67.5 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 60.1, 70.4 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 51.3+a, 62.8 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 31.1+a, 54 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 25.3+a, 52.9 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 29.9+a, 59.9 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 41.8+a, 68.2 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 71.1+a, 98.3 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 108.1, 151 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 160.5, 222.8 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 235.3, 312.6 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 313.9, 407.6 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 379.9, 491.1 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 435.2, 561.1 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 477.2, 617.8 , 0 );
setMoveKey( spep_3  + 90, 1, 500.5, 643.3 , 0 );


setScaleKey( spep_3 -3 + 40, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 42, 1, 1.8, 1.8 );
setScaleKey( spep_3 -3 + 44, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 46, 1, 1.72, 1.72 );
setScaleKey( spep_3 -3 + 48, 1, 1.62, 1.62 );
setScaleKey( spep_3 -3 + 50, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 52, 1, 1.57, 1.57 );
setScaleKey( spep_3 -3 + 54, 1, 1.65, 1.65 );
setScaleKey( spep_3 -3 + 56, 1, 1.57, 1.57 );
setScaleKey( spep_3 -3 + 58, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 60, 1, 1.53, 1.53 );
setScaleKey( spep_3 -3 + 62, 1, 1.57, 1.57 );
setScaleKey( spep_3 -3 + 64, 1, 1.53, 1.53 );
setScaleKey( spep_3 -3 + 66, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 70, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 72, 1, 1.49, 1.49 );
setScaleKey( spep_3 -3 + 74, 1, 1.48, 1.48 );
setScaleKey( spep_3 -3 + 76, 1, 1.45, 1.45 );
setScaleKey( spep_3 -3 + 78, 1, 1.41, 1.41 );
setScaleKey( spep_3 -3 + 80, 1, 1.37, 1.37 );
setScaleKey( spep_3 -3 + 82, 1, 1.32, 1.32 );
setScaleKey( spep_3 -3 + 84, 1, 1.28, 1.28 );
setScaleKey( spep_3 -3 + 86, 1, 1.24, 1.24 );
setScaleKey( spep_3 -3 + 88, 1, 1.21, 1.21 );
setScaleKey( spep_3  + 90, 1, 1.2, 1.2 );

setRotateKey( spep_3 -3 + 39, 1, 0 );
setRotateKey( spep_3 -3 + 40, 1, -30 );
setRotateKey( spep_3 -3 + 78, 1, -30 );
setRotateKey( spep_3 -3 + 80, 1, -29.9 );
setRotateKey( spep_3  + 90, 1, -29.9 );


--文字エントリー
ctbaki = entryEffectLife( spep_3 -3 + 42,  10020, 20, 0x100, -1, 0, 75, 46.9 );--バキッ

setEffMoveKey( spep_3 -3 + 42, ctbaki, 75, 46.9 , 0 );
setEffMoveKey( spep_3 -3 + 44, ctbaki, 108.7, 18.1 , 0 );
setEffMoveKey( spep_3 -3 + 46, ctbaki, 154.6, -12.7 , 0 );
setEffMoveKey( spep_3 -3 + 48, ctbaki, 157.6, -10.7 , 0 );
setEffMoveKey( spep_3 -3 + 50, ctbaki, 177.5, -21.1 , 0 );
setEffMoveKey( spep_3 -3 + 52, ctbaki, 177.6, -26 , 0 );
setEffMoveKey( spep_3 -3 + 54, ctbaki, 186.9, -21.7 , 0 );
setEffMoveKey( spep_3 -3 + 56, ctbaki, 191.1, -34.5 , 0 );
setEffMoveKey( spep_3 -3 + 58, ctbaki, 191.6, -25.2 , 0 );
setEffMoveKey( spep_3 -3 + 60, ctbaki, 200.1, -35.4 , 0 );
setEffMoveKey( spep_3 -3 + 62, ctbaki, 204.2, -37.6 , 0 );

setEffScaleKey( spep_3 -3 + 42, ctbaki, 0.25, 0.25 );
setEffScaleKey( spep_3 -3 + 44, ctbaki, 0.88, 0.88 );
setEffScaleKey( spep_3 -3 + 46, ctbaki, 1.5, 1.5 );
setEffScaleKey( spep_3 -3 + 48, ctbaki, 1.57, 1.57 );
setEffScaleKey( spep_3 -3 + 50, ctbaki, 1.63, 1.63 );
setEffScaleKey( spep_3 -3 + 52, ctbaki, 1.7, 1.7 );
setEffScaleKey( spep_3 -3 + 54, ctbaki, 1.72, 1.72 );
setEffScaleKey( spep_3 -3 + 56, ctbaki, 1.74, 1.74 );
setEffScaleKey( spep_3 -3 + 58, ctbaki, 1.76, 1.76 );
setEffScaleKey( spep_3 -3 + 60, ctbaki, 1.78, 1.78 );
setEffScaleKey( spep_3 -3 + 62, ctbaki, 1.8, 1.8 );

setEffRotateKey( spep_3 -3 + 42, ctbaki, 0 );
setEffRotateKey( spep_3 -3 + 62, ctbaki, 0 );

setEffAlphaKey( spep_3 -3 + 42, ctbaki, 255 );
setEffAlphaKey( spep_3 -3 + 52, ctbaki, 255 );
setEffAlphaKey( spep_3 -3 + 54, ctbaki, 204 );
setEffAlphaKey( spep_3 -3 + 56, ctbaki, 153 );
setEffAlphaKey( spep_3 -3 + 58, ctbaki, 102 );
setEffAlphaKey( spep_3 -3 + 60, ctbaki, 51 );
setEffAlphaKey( spep_3 -3 + 62, ctbaki, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_3  + 37,  906, 34, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3  + 37, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3  + 71, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 37, shuchusen2, 1.1, 1.1 );
setEffScaleKey( spep_3 + 71, shuchusen2, 1.1, 1.1 );

setEffRotateKey( spep_3  + 37, shuchusen2, 180 );
setEffRotateKey( spep_3  + 71, shuchusen2, 180 );

setEffAlphaKey( spep_3  + 37, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 70, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 71, shuchusen2, 0 );

--流線
ryusen3 = entryEffectLife( spep_3  + 71,  914,21, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_3  + 71, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 92, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_3  + 71, ryusen3, 3.6, 1.8 );
setEffScaleKey( spep_3  + 92, ryusen3, 3.6, 1.8 );

setEffRotateKey( spep_3 + 71, ryusen3, 130.1 );
setEffRotateKey( spep_3  + 92, ryusen3, 130.1 );

setEffAlphaKey( spep_3 + 71, ryusen3, 154 );
setEffAlphaKey( spep_3  + 91, ryusen3, 154 );
setEffAlphaKey( spep_3  + 92, ryusen3, 0 );

--SE
playSe( spep_3, 44); --移動
playSe( spep_3+38, 1009); --キック
playSe( spep_3+78, 43); --瞬間移動

--白フェード
entryFade( spep_3 +32 , 0, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_4=spep_3+92;

------------------------------------------------------
-- 二撃目：両手殴り
------------------------------------------------------
--流線
ryusen4 = entryEffectLife( spep_4  + 0,  914, 34, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4  + 0, ryusen4, 0, 0 , 0 );
setEffMoveKey( spep_4  + 34, ryusen4, 0, 0 , 0 );

setEffScaleKey( spep_4  + 0, ryusen4, 3.59, 1.8 );
setEffScaleKey( spep_4  + 5, ryusen4, 3.59, 1.8 );
setEffScaleKey( spep_4  + 7, ryusen4, 3.48, 1.74 );
setEffScaleKey( spep_4  + 9, ryusen4, 3.36, 1.68 );
setEffScaleKey( spep_4  + 11, ryusen4, 3.24, 1.62 );
setEffScaleKey( spep_4  + 13, ryusen4, 3.12, 1.56 );
setEffScaleKey( spep_4  + 15, ryusen4, 3, 1.5 );
setEffScaleKey( spep_4  + 34, ryusen4, 3, 1.5 );

setEffRotateKey( spep_4  + 0, ryusen4, 130.1 );
setEffRotateKey( spep_4  + 5, ryusen4, 130.1 );
setEffRotateKey( spep_4  + 7, ryusen4, 140.1 );
setEffRotateKey( spep_4  + 8, ryusen4, 150.1 );
setEffRotateKey( spep_4  + 11, ryusen4, 160 );
setEffRotateKey( spep_4  + 13, ryusen4, 170 );
setEffRotateKey( spep_4  + 15, ryusen4, 180 );
setEffRotateKey( spep_4  + 34, ryusen4, 180 );

setEffAlphaKey( spep_4  + 0, ryusen4, 154 );
setEffAlphaKey( spep_4  + 32, ryusen4, 154 );
setEffAlphaKey( spep_4  + 33, ryusen4, 154 );
setEffAlphaKey( spep_4  + 34, ryusen4, 0 );

--流線
ryusen5 = entryEffectLife( spep_4 ,  914, 88, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 , ryusen5, 0, 0 , 0 );
setEffMoveKey( spep_4  + 88, ryusen5, 0, 0 , 0 );

setEffScaleKey( spep_4, ryusen5, 2.7, 1.35 );
setEffScaleKey( spep_4  + 88, ryusen5, 2.7, 1.35 );

setEffRotateKey( spep_4, ryusen5, 90 );
setEffRotateKey( spep_4  + 88, ryusen5, 90 );

setEffAlphaKey( spep_4, ryusen5, 0 );
setEffAlphaKey( spep_4 +78, ryusen5, 0 );
setEffAlphaKey( spep_4 +79, ryusen5, 154 );
setEffAlphaKey( spep_4 +80, ryusen5, 154 );
setEffAlphaKey( spep_4  + 87, ryusen5, 154 );
setEffAlphaKey( spep_4  + 88, ryusen5, 0 );

-- ** エフェクト等 (前)
punch_f = entryEffectLife( spep_4 + 0, SP_04, 90, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 90, punch_f, 1.0, 1.0 );
setEffAlphaKey( spep_4 + 0, punch_f, 255 );
setEffAlphaKey( spep_4 + 90, punch_f, 255 );
setEffRotateKey( spep_4 + 0, punch_f, 0 );
setEffRotateKey( spep_4 + 90, punch_f, 0 );

-- ** エフェクト等 (後)
punch_b = entryEffectLife( spep_4 + 0, SP_05, 90, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 90, punch_b, 1.0, 1.0 );
setEffAlphaKey( spep_4 + 0, punch_b, 255 );
setEffAlphaKey( spep_4 + 90, punch_b, 255 );
setEffRotateKey( spep_4 + 0, punch_b, 0 );
setEffRotateKey( spep_4 + 90, punch_b, 0 );

--文字エントリー
ctdon = entryEffectLife( spep_4 -3 + 42,  10019, 20, 0x100, -1, 0, 0, -0.1 );
setEffMoveKey( spep_4 -3 + 42, ctdon, 0, -0.1 , 0 );
setEffMoveKey( spep_4 -3 + 44, ctdon, -53.8, 18.1 , 0 );
setEffMoveKey( spep_4 -3 + 46, ctdon, -95.4, 34.3 , 0 );
setEffMoveKey( spep_4 -3 + 48, ctdon, -109, 43.7 , 0 );
setEffMoveKey( spep_4 -3 + 50, ctdon, -105.7, 40.7 , 0 );
setEffMoveKey( spep_4 -3 + 52, ctdon, -122.2, 43.2 , 0 );
setEffMoveKey( spep_4 -3 + 54, ctdon, -118.9, 50.7 , 0 );
setEffMoveKey( spep_4 -3 + 56, ctdon, -120.7, 41.2 , 0 );
setEffMoveKey( spep_4 -3 + 58, ctdon, -126.2, 53.7 , 0 );
setEffMoveKey( spep_4 -3 + 60, ctdon, -123.8, 46.8 , 0 );
setEffMoveKey( spep_4 -3 + 62, ctdon, -125.8, 47.8 , 0 );

setEffScaleKey( spep_4 -3 + 42, ctdon, 0.25, 0.25 );
setEffScaleKey( spep_4 -3 + 44, ctdon, 0.88, 0.88 );
setEffScaleKey( spep_4 -3 + 46, ctdon, 1.5, 1.5 );
setEffScaleKey( spep_4 -3 + 48, ctdon, 1.57, 1.57 );
setEffScaleKey( spep_4 -3 + 50, ctdon, 1.63, 1.63 );
setEffScaleKey( spep_4 -3 + 52, ctdon, 1.7, 1.7 );
setEffScaleKey( spep_4 -3 + 54, ctdon, 1.72, 1.72 );
setEffScaleKey( spep_4 -3 + 56, ctdon, 1.74, 1.74 );
setEffScaleKey( spep_4 -3 + 58, ctdon, 1.76, 1.76 );
setEffScaleKey( spep_4 -3 + 60, ctdon, 1.78, 1.78 );
setEffScaleKey( spep_4 -3 + 62, ctdon, 1.8, 1.8 );

setEffRotateKey( spep_4 -3 + 42, ctdon, 0 );
setEffRotateKey( spep_4 -3 + 62, ctdon, 0 );

setEffAlphaKey( spep_4 -3 + 42, ctdon, 255 );
setEffAlphaKey( spep_4 -3 + 52, ctdon, 255 );
setEffAlphaKey( spep_4 -3 + 54, ctdon, 204 );
setEffAlphaKey( spep_4 -3 + 56, ctdon, 153 );
setEffAlphaKey( spep_4 -3 + 58, ctdon, 102 );
setEffAlphaKey( spep_4 -3 + 60, ctdon, 51 );
setEffAlphaKey( spep_4 -3 + 62, ctdon, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_4 + 39,  906, 40, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4  + 39, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4  + 79, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 39, shuchusen3, 1.1, 1.1 );
setEffScaleKey( spep_4  + 79, shuchusen3, 1.1, 1.1 );

setEffRotateKey( spep_4 + 39, shuchusen3, 180 );
setEffRotateKey( spep_4  + 79, shuchusen3, 180 );

setEffAlphaKey( spep_4 + 39, shuchusen3, 255 )
setEffAlphaKey( spep_4  + 78, shuchusen3, 255 )
setEffAlphaKey( spep_4  + 79, shuchusen3, 0 )

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
--setDisp( spep_4  + 88, 1, 0 );

changeAnime( spep_4  + 0, 1, 106 );

b=60;


setMoveKey( spep_4  + 0, 1, -444.7, -302.3 , 0 );
--setMoveKey( spep_4 -3 + 2, 1, -358.8, -222.5 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -290.6, -166.4 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -236.6, -122.5 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -198.9, -93.8 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -167.8, -70.3 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -139.9, -42.1 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -116.9, -18.3 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -96.2, -7 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -80.3, 0.6 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -75.5, 10.3 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -76.2, 14.9 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -69.4, 19.7 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -62.6, 24.5 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -61.8, 23.2 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -61, 22 , 0 );
setMoveKey( spep_4 -3 + 32, 1, -58.3, 28.8 , 0 );
setMoveKey( spep_4 -3 + 34, 1, -55.5, 35.5 , 0 );
setMoveKey( spep_4 -3 + 36, 1, -50.7, 34.3 , 0 );
setMoveKey( spep_4 -3 + 38, 1, -45.9, 33.1 , 0 );
setMoveKey( spep_4 -3 + 40, 1, -51.1, 39.8 , 0 );
setMoveKey( spep_4 -3 + 43, 1, -1.1+b, -64.9 , 0 );
setMoveKey( spep_4 -3 + 44, 1, -102.8+b, -272.8 , 0 );
setMoveKey( spep_4 -3 + 45, 1, -102.8+b, -272.8 , 0 );
setMoveKey( spep_4 -3 + 46, 1, -3.7+b, -56.4 , 0 );
setMoveKey( spep_4 -3 + 47, 1, -3.7+b, -56.4 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 52.2+b, -169.5 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 30.5+b, -114.5 , 0 );
setMoveKey( spep_4 -3 + 52, 1, -0.5+b, -61 , 0 );
setMoveKey( spep_4 -3 + 54, 1, -18.5+b, -89.1 , 0 );
setMoveKey( spep_4 -3 + 56, 1, -27.8+b, -116.6 , 0 );
setMoveKey( spep_4 -3 + 58, 1, -9.5+b, -86.5 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 1.4+b, -61.4 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 0.6+b, -81.8 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 2.5+b, -88.7 , 0 );
setMoveKey( spep_4 -3 + 66, 1, -2+b, -73.1 , 0 );
setMoveKey( spep_4 -3 + 68, 1, -0.1+b, -59.1 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 3.4+b, -61.7 , 0 );
setMoveKey( spep_4 -3 + 72, 1, -0.5+b, -61 , 0 );
setMoveKey( spep_4 -3 + 74, 1, -4.4+b, -60.4 , 0 );
setMoveKey( spep_4 -3 + 76, 1, -0.2+b, -59.1 , 0 );
setMoveKey( spep_4 -3 + 78, 1, -1.2+b, -65 , 0 );
setMoveKey( spep_4 -3 + 80, 1, -2.5+b, -83.4 , 0 );
--setMoveKey( spep_4 -3 + 82, 1, -4, -147.4 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 0.1+b, -268.4 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 5.8+b, -452.1 , 0 );
setMoveKey( spep_4  + 87, 1, -1.1+b, -950.1 , 0 );
--setMoveKey( spep_4  + 88, 1, -1.1, -950.1 , 0 );

setScaleKey( spep_4  + 0, 1, 2.5, 2.5 );
--setScaleKey( spep_4 -3 + 2, 1, 2.28, 2.28 );
setScaleKey( spep_4 -3 + 4, 1, 2.13, 2.13 );
setScaleKey( spep_4 -3 + 6, 1, 2.01, 2.01 );
setScaleKey( spep_4 -3 + 8, 1, 1.91, 1.91 );
setScaleKey( spep_4 -3 + 10, 1, 1.83, 1.83 );
setScaleKey( spep_4 -3 + 12, 1, 1.76, 1.76 );
setScaleKey( spep_4 -3 + 14, 1, 1.71, 1.71 );
setScaleKey( spep_4 -3 + 16, 1, 1.66, 1.66 );
setScaleKey( spep_4 -3 + 18, 1, 1.63, 1.63 );
setScaleKey( spep_4 -3 + 20, 1, 1.61, 1.61 );
setScaleKey( spep_4 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 42, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 44, 1, 1.92, 1.92 );
setScaleKey( spep_4 -3 + 46, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 48, 1, 1.84, 1.84 );
setScaleKey( spep_4 -3 + 50, 1, 1.73, 1.73 );
setScaleKey( spep_4 -3 + 52, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 54, 1, 1.68, 1.68 );
setScaleKey( spep_4 -3 + 56, 1, 1.76, 1.76 );
setScaleKey( spep_4 -3 + 58, 1, 1.68, 1.68 );
setScaleKey( spep_4 -3 + 60, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 62, 1, 1.63, 1.63 );
setScaleKey( spep_4 -3 + 64, 1, 1.68, 1.68 );
setScaleKey( spep_4 -3 + 66, 1, 1.63, 1.63 );
setScaleKey( spep_4 -3 + 68, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 78, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 80, 1, 1.65, 1.65 );
setScaleKey( spep_4 -3 + 82, 1, 1.79, 1.79 );
setScaleKey( spep_4 -3 + 84, 1, 2.03, 2.03 );
setScaleKey( spep_4 -3 + 86, 1, 2.4, 2.4 );
setScaleKey( spep_4  + 87, 1, 3, 3 );

setRotateKey( spep_4  + 0, 1, -96.5 );
--setRotateKey( spep_4 -3 + 2, 1, -94.9 );
setRotateKey( spep_4 -3 + 4, 1, -93.8 );
setRotateKey( spep_4 -3 + 6, 1, -93 );
setRotateKey( spep_4 -3 + 8, 1, -92.3 );
setRotateKey( spep_4 -3 + 10, 1, -91.7 );
setRotateKey( spep_4 -3 + 12, 1, -91.2 );
setRotateKey( spep_4 -3 + 14, 1, -90.8 );
setRotateKey( spep_4 -3 + 16, 1, -90.5 );
setRotateKey( spep_4 -3 + 18, 1, -90.2 );
setRotateKey( spep_4 -3 + 20, 1, -90.1 );
setRotateKey( spep_4 -3 + 22, 1, -90 );
setRotateKey( spep_4 -3 + 40, 1, -90 );
setRotateKey( spep_4 -3 + 41, 1, -170 );
setRotateKey( spep_4 -3 + 42, 1, -170 );
setRotateKey( spep_4  + 87, 1, -170 );

--SE
playSe( spep_4+6, 43); --瞬間移動
playSe( spep_4+40, 1010); --叩き落し
playSe( spep_4+76, 43); --瞬間移動

--黒背景
entryFadeBg(spep_4, 0,88, 0, 0, 0, 0, 160);  -- 黒　背

--白フェード
entryFade( spep_4 +34 , 0, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_5=spep_4+88;

------------------------------------------------------
-- 三撃目：キック
------------------------------------------------------
-- ** エフェクト等 (前)
kick2 = entryEffectLife( spep_5 + 0, SP_06, 86, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, kick2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 86, kick2, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, kick2, 1.0, 1.0 );
setEffScaleKey( spep_5 + 86, kick2, 1.0, 1.0 );
setEffAlphaKey( spep_5 + 0, kick2, 255 );
setEffAlphaKey( spep_5 + 86, kick2, 255 );
setEffRotateKey( spep_5 + 0, kick2, 0 );
setEffRotateKey( spep_5 + 86, kick2, 0 );

--敵の動き
--setDisp( spep_5  + 0, 1, 1 );
--setDisp( spep_5  +88, 1, 0 );

changeAnime( spep_5  + 0, 1, 106 );
changeAnime( spep_5 -3 + 28, 1, 108 );
changeAnime( spep_5 -3 + 82, 1, 106 );

setMoveKey( spep_5  + 0, 1, -2.3, 651.2 , 0 );
setMoveKey( spep_5+ 2, 1, -3.5, 469.4 , 0 );
setMoveKey( spep_5  + 4, 1, -4.9, 351.6 , 0 );
setMoveKey( spep_5  + 6, 1, -1.2, 254.1 , 0 );
setMoveKey( spep_5  + 8, 1, 2.6, 173.5 , 0 );
setMoveKey( spep_5  + 10, 1, -1.5, 108.5 , 0 );
setMoveKey( spep_5  + 12, 1, -5.7, 52.9 , 0 );
setMoveKey( spep_5  + 14, 1, -1.1, 5.9 , 0 );
setMoveKey( spep_5  + 16, 1, 3.6, -34.4 , 0 );
setMoveKey( spep_5  + 18, 1, 0.6, -73.9 , 0 );
setMoveKey( spep_5  + 20, 1, -2.3, -108.1 , 0 );
--setMoveKey( spep_5 -3 + 22, 1, -3.7, -128.3 , 0 );
setMoveKey( spep_5 -3 + 24, 1, -5.1, -143.7 , 0 );
setMoveKey( spep_5 -3 + 27, 1, -2.3, -168.7 , 0 );
setMoveKey( spep_5 -3 + 28, 1, -67.2, -163.7 , 0 );
setMoveKey( spep_5 -3 + 30, 1, -66, -158.8 , 0 );
setMoveKey( spep_5 -3 + 31, 1, -66, -158.8 , 0 );
setMoveKey( spep_5 -3 + 32, 1, -107.8, 15.3 , 0 );
setMoveKey( spep_5 -3 + 33, 1, -107.8, 15.3 , 0 );
setMoveKey( spep_5 -3 + 34, 1, -61.1, -160 , 0 );
setMoveKey( spep_5 -3 + 36, 1, -43.7, -92.7 , 0 );
setMoveKey( spep_5 -3 + 38, 1, -58.2, -124.6 , 0 );
setMoveKey( spep_5 -3 + 40, 1, -71.2, -154.5 , 0 );
setMoveKey( spep_5 -3 + 42, 1, -71.6, -140.8 , 0 );
setMoveKey( spep_5 -3 + 44, 1, -71.4, -127.4 , 0 );
setMoveKey( spep_5 -3 + 46, 1, -69.6, -145.6 , 0 );
setMoveKey( spep_5 -3 + 48, 1, -67.2, -163.7 , 0 );
setMoveKey( spep_5 -3 + 50, 1, -65, -148.8 , 0 );
setMoveKey( spep_5 -3 + 52, 1, -63.1, -136.7 , 0 );
setMoveKey( spep_5 -3 + 54, 1, -60, -150 , 0 );
setMoveKey( spep_5 -3 + 56, 1, -57.4, -166.1 , 0 );
setMoveKey( spep_5 -3 + 58, 1, -64.3, -160.3 , 0 );
setMoveKey( spep_5 -3 + 60, 1, -71.2, -154.5 , 0 );
setMoveKey( spep_5 -3 + 62, 1, -64.6, -157.2 , 0 );
setMoveKey( spep_5 -3 + 64, 1, -58, -159.8 , 0 );
setMoveKey( spep_5 -3 + 66, 1, -67.2, -163.8 , 0 );
setMoveKey( spep_5 -3 + 68, 1, -64.4, -139.5 , 0 );
setMoveKey( spep_5 -3 + 70, 1, -58, -74.4 , 0 );
setMoveKey( spep_5 -3 + 72, 1, -45.7, 16.4 , 0 );
setMoveKey( spep_5 -3 + 74, 1, -31.8, 122.5 , 0 );
setMoveKey( spep_5 -3 + 76, 1, -30.7, 225.6 , 0 );
setMoveKey( spep_5 -3 + 78, 1, -33.1, 292.2 , 0 );
setMoveKey( spep_5 -3 + 81, 1, -27.2, 301.3 , 0 );
setMoveKey( spep_5 -3 + 82, 1, -30.3, 301.3 , 0 );
setMoveKey( spep_5 -3 + 84, 1, -29.3, 303.1 , 0 );
setMoveKey( spep_5  + 86, 1, -27.5, 296.5 , 0 );
--setMoveKey( spep_5  + 88, 1, -19.1, 251.3 , 0 );

setScaleKey( spep_5  + 0, 1, 1.5, 1.5 );
--setScaleKey( spep_5 -3 + 2, 1, 1.57, 1.57 );
setScaleKey( spep_5 -3 + 4, 1, 1.61, 1.61 );
setScaleKey( spep_5 -3 + 6, 1, 1.65, 1.65 );
setScaleKey( spep_5 -3 + 8, 1, 1.68, 1.68 );
setScaleKey( spep_5 -3 + 10, 1, 1.7, 1.7 );
setScaleKey( spep_5 -3 + 12, 1, 1.72, 1.72 );
setScaleKey( spep_5 -3 + 14, 1, 1.74, 1.74 );
setScaleKey( spep_5 -3 + 16, 1, 1.75, 1.75 );
setScaleKey( spep_5 -3 + 18, 1, 1.77, 1.77 );
setScaleKey( spep_5 -3 + 20, 1, 1.78, 1.78 );
setScaleKey( spep_5 -3 + 22, 1, 1.79, 1.79 );
setScaleKey( spep_5 -3 + 24, 1, 1.79, 1.79 );
setScaleKey( spep_5 -3 + 27, 1, 1.8, 1.8 );
setScaleKey( spep_5 -3 + 30, 1, 1.8, 1.8 );
setScaleKey( spep_5 -3 + 32, 1, 2.16, 2.16 );
setScaleKey( spep_5 -3 + 34, 1, 1.8, 1.8 );
setScaleKey( spep_5 -3 + 36, 1, 2.07, 2.07 );
setScaleKey( spep_5 -3 + 38, 1, 1.94, 1.94 );
setScaleKey( spep_5 -3 + 40, 1, 1.8, 1.8 );
setScaleKey( spep_5 -3 + 42, 1, 1.89, 1.89 );
setScaleKey( spep_5 -3 + 44, 1, 1.98, 1.98 );
setScaleKey( spep_5 -3 + 46, 1, 1.89, 1.89 );
setScaleKey( spep_5 -3 + 48, 1, 1.8, 1.8 );
setScaleKey( spep_5 -3 + 50, 1, 1.84, 1.84 );
setScaleKey( spep_5 -3 + 52, 1, 1.89, 1.89 );
setScaleKey( spep_5 -3 + 54, 1, 1.84, 1.84 );
setScaleKey( spep_5 -3 + 56, 1, 1.8, 1.8 );
setScaleKey( spep_5 -3 + 66, 1, 1.8, 1.8 );
setScaleKey( spep_5 -3 + 68, 1, 1.81, 1.81 );
setScaleKey( spep_5 -3 + 70, 1, 1.83, 1.83 );
setScaleKey( spep_5 -3 + 72, 1, 1.88, 1.88 );
setScaleKey( spep_5 -3 + 74, 1, 1.92, 1.92 );
setScaleKey( spep_5 -3 + 76, 1, 1.97, 1.97 );
setScaleKey( spep_5 -3 + 78, 1, 1.99, 1.99 );
setScaleKey( spep_5 -3 + 81, 1, 2, 2 );
setScaleKey( spep_5  + 86, 1, 2, 2 );

setRotateKey( spep_5  + 0, 1, -170 );
setRotateKey( spep_5 -3 + 27, 1, -170 );
setRotateKey( spep_5 -3 + 28, 1, -140 );
setRotateKey( spep_5 -3 + 81, 1, -140 );
setRotateKey( spep_5 -3 + 82, 1, -150.1 );
setRotateKey( spep_5 -3 + 84, 1, -151.9 );
setRotateKey( spep_5 -3 + 86, 1, -157.7 );
setRotateKey( spep_5  + 86, 1, -174 );

--流線
ryusen6 = entryEffectLife( spep_5  + 0,  914, 20, 0x80, -1, 0, 0, 0.3 );

setEffMoveKey( spep_5  + 0, ryusen6, 0, 0 , 0 );
setEffMoveKey( spep_5  + 20, ryusen6, 0, 0 , 0 );

setEffScaleKey( spep_5  + 0, ryusen6, 2.7, 1.35 );
setEffScaleKey( spep_5  + 20, ryusen6, 2.7, 1.35 );

setEffRotateKey( spep_5  + 0, ryusen6, 90 );
setEffRotateKey( spep_5  + 20, ryusen6, 90 );

setEffAlphaKey( spep_5  + 0, ryusen6, 154 );
setEffAlphaKey( spep_5  + 19, ryusen6, 154 );
setEffAlphaKey( spep_5  + 20, ryusen6, 0 );

--集中線
shuchusen4 = entryEffectLife( spep_5   + 25,  906, 40, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5   + 25, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5   + 65, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_5   + 25, shuchusen4, 1.1, 1.1 );
setEffScaleKey( spep_5   + 65, shuchusen4, 1.1, 1.1 );

setEffRotateKey( spep_5  + 25, shuchusen4, 180 );
setEffRotateKey( spep_5  + 65, shuchusen4, 180 );

setEffAlphaKey( spep_5  + 25, shuchusen4, 255 );
setEffAlphaKey( spep_5  + 64, shuchusen4, 255 );
setEffAlphaKey( spep_5  + 65, shuchusen4, 0 );

--文字エントリー
ctbaki2 = entryEffectLife( spep_5 + 28,  10020, 20, 0x100, -1, 0, 20, -28.1 );

setEffMoveKey( spep_5 + 28, ctbaki2, 20, -28.1 , 0 );
setEffMoveKey( spep_5 + 30, ctbaki2, 81.2, 5.6 , 0 );
setEffMoveKey( spep_5 + 32, ctbaki2, 154.6, 37.3 , 0 );
setEffMoveKey( spep_5 + 34, ctbaki2, 157.6, 45.9 , 0 );
setEffMoveKey( spep_5 + 36, ctbaki2, 177.5, 42.1 , 0 );
setEffMoveKey( spep_5 + 38, ctbaki2, 177.6, 43.9 , 0 );
setEffMoveKey( spep_5 + 40, ctbaki2, 186.9, 52.2 , 0 );
setEffMoveKey( spep_5 + 42, ctbaki2, 191.1, 43.4 , 0 );
setEffMoveKey( spep_5 + 44, ctbaki2, 191.6, 56.7 , 0 );
setEffMoveKey( spep_5 + 46, ctbaki2, 200.1, 50.5 , 0 );
setEffMoveKey( spep_5 + 48, ctbaki2, 204.2, 52.3 , 0 );

setEffScaleKey( spep_5 + 28, ctbaki2, 0.25, 0.25 );
setEffScaleKey( spep_5 + 30, ctbaki2, 0.88, 0.88 );
setEffScaleKey( spep_5 + 32, ctbaki2, 1.5, 1.5 );
setEffScaleKey( spep_5 + 34, ctbaki2, 1.57, 1.57 );
setEffScaleKey( spep_5 + 36, ctbaki2, 1.63, 1.63 );
setEffScaleKey( spep_5 + 38, ctbaki2, 1.7, 1.7 );
setEffScaleKey( spep_5 + 40, ctbaki2, 1.72, 1.72 );
setEffScaleKey( spep_5 + 42, ctbaki2, 1.74, 1.74 );
setEffScaleKey( spep_5 + 44, ctbaki2, 1.76, 1.76 );
setEffScaleKey( spep_5 + 46, ctbaki2, 1.78, 1.78 );
setEffScaleKey( spep_5 + 48, ctbaki2, 1.8, 1.8 );

setEffRotateKey( spep_5 + 28, ctbaki2, 0 );
setEffRotateKey( spep_5 + 48, ctbaki2, 0 );

--流線
ryusen7 = entryEffectLife( spep_5 + 65,  921, 21, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 65, ryusen7, 0, 0 , 0 );
setEffMoveKey( spep_5  + 86, ryusen7, 0, 0 , 0 );

setEffScaleKey( spep_5 + 65, ryusen7, 1.4, 1.23 );
setEffScaleKey( spep_5  + 86, ryusen7, 1.4, 1.23 );

setEffRotateKey( spep_5  + 65, ryusen7, 90 );
setEffRotateKey( spep_5  + 86, ryusen7, 90 );

setEffAlphaKey( spep_5 + 65, ryusen7, 255 );
setEffAlphaKey( spep_5  + 85, ryusen7, 255 );
setEffAlphaKey( spep_5  + 86, ryusen7, 0 );

--SE
playSe( spep_5+4, 43); --瞬間移動
playSe( spep_5+26, 1009); --瞬間移動

--黒背景
entryFadeBg(spep_5, 0,86, 0, 0, 0, 0, 160);  -- 黒　背

--白フェード
entryFade( spep_5 +20 , 0, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_6=spep_5+86;

------------------------------------------------------
-- 四撃目：キック
------------------------------------------------------
--流線
ryusen8 = entryEffectLife( spep_6  + 0,  921, 30, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_6  + 0, ryusen8, 0, 0 , 0 );
setEffMoveKey( spep_6 +30, ryusen8, 0, 0 , 0 );

setEffScaleKey( spep_6  + 0, ryusen8, 1.4, 1.23 );
setEffScaleKey( spep_6 +30, ryusen8, 1.4, 1.23 );

setEffRotateKey( spep_6  + 0, ryusen8, 90 );
setEffRotateKey( spep_6 +30, ryusen8, 90 );

setEffAlphaKey( spep_6  + 0, ryusen8, 255 );
setEffAlphaKey( spep_6 +29, ryusen8, 255 );
setEffAlphaKey( spep_6 + 30, ryusen8, 0 );

--流線
ryusen9 = entryEffectLife( spep_6,  921, 98, 0x80, -1, 0, 20, -35 );

setEffMoveKey( spep_6 , ryusen9, 20, -30 , 0 );
setEffMoveKey( spep_6 + 98, ryusen9, 20, -30 , 0 );

setEffScaleKey( spep_6 , ryusen9, 1.6, 1.2 );
setEffScaleKey( spep_6 + 98, ryusen9, 1.6, 1.2 );

setEffRotateKey( spep_6 , ryusen9, 150 );--155
setEffRotateKey( spep_6 + 98, ryusen9, 150 );

setEffAlphaKey( spep_6, ryusen9, 0 );
setEffAlphaKey( spep_6+ 74, ryusen9, 0 );
setEffAlphaKey( spep_6+ 75, ryusen9, 255 );
setEffAlphaKey( spep_6+ 76, ryusen9, 255 );
setEffAlphaKey( spep_6 + 98, ryusen9, 255 );

-- ** エフェクト等 (前)
kick3_f = entryEffectLife( spep_6 + 0, SP_07, 98, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_6 + 0, kick3_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 98, kick3_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, kick3_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 98, kick3_f, 1.0, 1.0 );
setEffAlphaKey( spep_6 + 0, kick3_f, 255 );
setEffAlphaKey( spep_6 + 98, kick3_f, 255 );
setEffRotateKey( spep_6 + 0, kick3_f, 0 );
setEffRotateKey( spep_6 + 98, kick3_f, 0 );

-- ** エフェクト等 (裏)
kick3_b = entryEffectLife( spep_6 + 0, SP_08, 98, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_6 + 0, kick3_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 98, kick3_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, kick3_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 98, kick3_b, 1.0, 1.0 );
setEffAlphaKey( spep_6 + 0, kick3_b, 255 );
setEffAlphaKey( spep_6 + 98, kick3_b, 255 );
setEffRotateKey( spep_6 + 0, kick3_b, 0 );
setEffRotateKey( spep_6 + 98, kick3_b, 0 );

--文字エントリー
ctdogon = entryEffectLife( spep_6 -4 + 38,  10018, 18, 0x100, -1, 0, 30, 93.3 );--ドゴォンッ

setEffMoveKey( spep_6 -4 + 38, ctdogon, 30, 93.3 , 0 );
setEffMoveKey( spep_6 -4 + 40, ctdogon, -1.5, 154.1 , 0 );
setEffMoveKey( spep_6 -4 + 42, ctdogon, -20, 212.7 , 0 );
setEffMoveKey( spep_6 -4 + 44, ctdogon, -35.8, 226.7 , 0 );
setEffMoveKey( spep_6 -4 + 46, ctdogon, -33.6, 227.6 , 0 );
setEffMoveKey( spep_6 -4 + 48, ctdogon, -52.5, 234.4 , 0 );
setEffMoveKey( spep_6 -4 + 50, ctdogon, -49.3, 244.1 , 0 );
setEffMoveKey( spep_6 -4 + 52, ctdogon, -51.6, 235.8 , 0 );
setEffMoveKey( spep_6 -4 + 54, ctdogon, -57.8, 250.9 , 0 );
setEffMoveKey( spep_6 -4 + 56, ctdogon, -60.3, 253.8 , 0 );

setEffScaleKey( spep_6 -4 + 38, ctdogon, 0.33, 0.33 );
setEffScaleKey( spep_6 -4 + 40, ctdogon, 1.2, 1.2 );
setEffScaleKey( spep_6 -4 + 42, ctdogon, 2.08, 2.08 );
setEffScaleKey( spep_6 -4 + 44, ctdogon, 2.17, 2.17 );
setEffScaleKey( spep_6 -4 + 46, ctdogon, 2.25, 2.25 );
setEffScaleKey( spep_6 -4 + 48, ctdogon, 2.34, 2.34 );
setEffScaleKey( spep_6 -4 + 50, ctdogon, 2.37, 2.37 );
setEffScaleKey( spep_6 -4 + 52, ctdogon, 2.41, 2.41 );
setEffScaleKey( spep_6 -4 + 54, ctdogon, 2.44, 2.44 );
setEffScaleKey( spep_6 -4 + 56, ctdogon, 2.47, 2.47 );

setEffRotateKey( spep_6 -4 + 38, ctdogon, -27 );
setEffRotateKey( spep_6 -4 + 56, ctdogon, -27 );

setEffAlphaKey( spep_6 -4 + 38, ctdogon, 255 );
setEffAlphaKey( spep_6 -4 + 48, ctdogon, 255 );
setEffAlphaKey( spep_6 -4 + 50, ctdogon, 191 );
setEffAlphaKey( spep_6 -4 + 52, ctdogon, 128 );
setEffAlphaKey( spep_6 -4 + 54, ctdogon, 64 );
setEffAlphaKey( spep_6 -4 + 56, ctdogon, 0 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 96, 1, 0 );

changeAnime( spep_6+ 0, 1, 106 );

setMoveKey( spep_6 + 0, 1, -19.1, 265 , 0 );
--setMoveKey( spep_6-3 + 2, 1, -19.8, 277.8 , 0 );
setMoveKey( spep_6-3 + 4, 1, -12.6, 284 , 0 );
setMoveKey( spep_6-3 + 6, 1, -5, 291.3 , 0 );
setMoveKey( spep_6-3 + 8, 1, -7.4, 297.9 , 0 );
setMoveKey( spep_6-3 + 10, 1, -2.6, 301.6 , 0 );
setMoveKey( spep_6-3 + 12, 1, -3.6, 300.8 , 0 );
setMoveKey( spep_6-3 + 14, 1, 2.5, 291.9 , 0 );
setMoveKey( spep_6-3 + 16, 1, 25.8, 274 , 0 );
setMoveKey( spep_6-3 + 18, 1, 52.8, 252.8 , 0 );
setMoveKey( spep_6-3 + 20, 1, 71, 226.9 , 0 );
setMoveKey( spep_6-3 + 22, 1, 84.1, 206.3 , 0 );
setMoveKey( spep_6-3 + 24, 1, 95.6, 208.2 , 0 );
setMoveKey( spep_6-3 + 26, 1, 93.1, 188.9 , 0 );
setMoveKey( spep_6-3 + 28, 1, 90.6, 169.6 , 0 );
setMoveKey( spep_6-3 + 30, 1, 90.9, 160.2 , 0 );
setMoveKey( spep_6-3 + 32, 1, 91.2, 150.7 , 0 );
setMoveKey( spep_6-3 + 34, 1, 90.9, 130.2 , 0 );
setMoveKey( spep_6-3 + 36, 1, 88.5, 133.2 , 0 );
setMoveKey( spep_6-3 + 38, 1, 92.9, 129.8 , 0 );
setMoveKey( spep_6-3 + 39, 1, 92.9, 129.8 , 0 );
setMoveKey( spep_6-3 + 40, 1, 336.4, 377.2 , 0 );
setMoveKey( spep_6-3 + 41, 1, 336.4, 377.2 , 0 );
setMoveKey( spep_6-3 + 42, 1, 92.1, 125 , 0 );
setMoveKey( spep_6-3 + 43, 1, 92.1, 125 , 0 );
setMoveKey( spep_6-3 + 44, 1, 312.7, 178.9 , 0 );
setMoveKey( spep_6-3 + 45, 1, 312.7, 178.9 , 0 );
setMoveKey( spep_6-3 + 46, 1, 90, 127.9 , 0 );
setMoveKey( spep_6-3 + 47, 1, 90, 127.9 , 0 );
setMoveKey( spep_6-3 + 48, 1, 152.7, 170.5 , 0 );
setMoveKey( spep_6-3 + 49, 1, 152.7, 170.5 , 0 );
setMoveKey( spep_6-3 + 50, 1, 211, 202.9 , 0 );
setMoveKey( spep_6-3 + 51, 1, 211, 202.9 , 0 );
setMoveKey( spep_6-3 + 52, 1, 150.8, 159.7 , 0 );
setMoveKey( spep_6-3 + 53, 1, 150.8, 159.7 , 0 );
setMoveKey( spep_6-3 + 54, 1, 90, 127.9 , 0 );
setMoveKey( spep_6-3 + 55, 1, 90, 127.9 , 0 );
setMoveKey( spep_6-3 + 56, 1, 130.8, 141.2 , 0 );
setMoveKey( spep_6-3 + 57, 1, 130.8, 141.2 , 0 );
setMoveKey( spep_6-3 + 58, 1, 184.1, 147.5 , 0 );
setMoveKey( spep_6-3 + 59, 1, 184.1, 147.5 , 0 );
setMoveKey( spep_6-3 + 60, 1, 140.5, 134 , 0 );
setMoveKey( spep_6-3 + 61, 1, 140.5, 134 , 0 );
setMoveKey( spep_6-3 + 62, 1, 92.1, 125 , 0 );
setMoveKey( spep_6-3 + 64, 1, 117.2, 138.7 , 0 );
setMoveKey( spep_6-3 + 66, 1, 151.3, 159 , 0 );
setMoveKey( spep_6-3 + 68, 1, 124.2, 148.1 , 0 );
setMoveKey( spep_6-3 + 70, 1, 92.5, 127.4 , 0 );
setMoveKey( spep_6-3 + 72, 1, 104.4, 125.7 , 0 );
setMoveKey( spep_6-3 + 74, 1, 115.6, 134.3 , 0 );
setMoveKey( spep_6-3 + 76, 1, 101.3, 136.4 , 0 );
setMoveKey( spep_6-3 + 78, 1, 97.4, 126.6 , 0 );
setMoveKey( spep_6-3 + 80, 1, 124.7, 133.5 , 0 );
setMoveKey( spep_6-3 + 82, 1, 151, 140.9 , 0 );
setMoveKey( spep_6-3 + 84, 1, 197.1, 151.5 , 0 );
setMoveKey( spep_6-3 + 86, 1, 281.2, 183.9 , 0 );
setMoveKey( spep_6-3 + 88, 1, 363.9, 216.1 , 0 );
setMoveKey( spep_6-3 + 90, 1, 460.8, 255.5 , 0 );
setMoveKey( spep_6-3 + 92, 1, 558.7, 295.9 , 0 );
setMoveKey( spep_6-3 + 94, 1, 646.8, 321.3 , 0 );
setMoveKey( spep_6 + 96, 1, 747.3, 351.4 , 0 );

setScaleKey( spep_6 + 0, 1, 2, 2 );
--setScaleKey( spep_6-3 + 20, 1, 2, 2 );
setScaleKey( spep_6-3 + 22, 1, 1.99, 1.99 );
setScaleKey( spep_6-3 + 38, 1, 1.99, 1.99 );
setScaleKey( spep_6-3 + 40, 1, 2.79, 2.79 );
setScaleKey( spep_6-3 + 42, 1, 1.99, 1.99 );
setScaleKey( spep_6-3 + 44, 1, 2.59, 2.59 );
setScaleKey( spep_6-3 + 46, 1, 1.99, 1.99 );
setScaleKey( spep_6-3 + 48, 1, 2.19, 2.19 );
setScaleKey( spep_6-3 + 50, 1, 2.39, 2.39 );
setScaleKey( spep_6-3 + 52, 1, 2.19, 2.19 );
setScaleKey( spep_6-3 + 54, 1, 1.99, 1.99 );
setScaleKey( spep_6-3 + 56, 1, 2.15, 2.15 );
setScaleKey( spep_6-3 + 58, 1, 2.29, 2.29 );
setScaleKey( spep_6-3 + 60, 1, 2.15, 2.15 );
setScaleKey( spep_6-3 + 62, 1, 1.99, 1.99 );
setScaleKey( spep_6-3 + 64, 1, 2.09, 2.09 );
setScaleKey( spep_6-3 + 66, 1, 2.19, 2.19 );
setScaleKey( spep_6-3 + 68, 1, 2.09, 2.09 );
setScaleKey( spep_6-3 + 70, 1, 1.99, 1.99 );
setScaleKey( spep_6-3 + 76, 1, 1.99, 1.99 );
setScaleKey( spep_6-3 + 78, 1, 2, 2 );
setScaleKey( spep_6-3 + 80, 1, 2.17, 2.17 );
setScaleKey( spep_6-3 + 82, 1, 2.33, 2.33 );
setScaleKey( spep_6-3 + 84, 1, 2.5, 2.5 );
setScaleKey( spep_6-3 + 86, 1, 2.75, 2.75 );
setScaleKey( spep_6-3 + 88, 1, 3, 3 );
setScaleKey( spep_6-3 + 90, 1, 3.25, 3.25 );
setScaleKey( spep_6-3 + 92, 1, 3.49, 3.49 );
setScaleKey( spep_6-3 + 94, 1, 3.74, 3.74 );
setScaleKey( spep_6 + 96, 1, 3.99, 3.99 );

setRotateKey( spep_6 + 0, 1, -180 );
--setRotateKey( spep_6-3 + 2, 1, -186 );
setRotateKey( spep_6-3 + 4, 1, -192 );
setRotateKey( spep_6-3 + 6, 1, -198 );
setRotateKey( spep_6-3 + 8, 1, -204 );
setRotateKey( spep_6-3 + 10, 1, -210 );
setRotateKey( spep_6-3 + 12, 1, -211.2 );
setRotateKey( spep_6-3 + 14, 1, -214.6 );
setRotateKey( spep_6-3 + 16, 1, -220 );
setRotateKey( spep_6-3 + 18, 1, -226.7 );
setRotateKey( spep_6-3 + 20, 1, -233.3 );
setRotateKey( spep_6-3 + 22, 1, -238.1 );
setRotateKey( spep_6-3 + 24, 1, -240 );
setRotateKey( spep_6-3 + 34, 1, -240 );
setRotateKey( spep_6-3 + 36, 1, -260 );
setRotateKey( spep_6-3 + 78, 1, -260 );
setRotateKey( spep_6-3 + 80, 1, -256.7 );
setRotateKey( spep_6-3 + 82, 1, -253.5 );
setRotateKey( spep_6-3 + 84, 1, -250.2 );
setRotateKey( spep_6-3 + 86, 1, -250.2 );
setRotateKey( spep_6-3 + 88, 1, -250.1 );
setRotateKey( spep_6-3 + 92, 1, -250.1 );
setRotateKey( spep_6-3 + 94, 1, -250 );
setRotateKey( spep_6 + 96, 1, -250 );



--集中線
shuchusen8 = entryEffectLife( spep_6  + 34,  906, 40, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_6  + 34, shuchusen8, 0, 0 , 0 );
setEffMoveKey( spep_6  + 74, shuchusen8, 0, 0 , 0 );

setEffScaleKey( spep_6  + 34, shuchusen8, 1.1, 1.1 );
setEffScaleKey( spep_6  + 74, shuchusen8, 1.1, 1.1 );

setEffRotateKey( spep_6  + 34, shuchusen8, 180 );
setEffRotateKey( spep_6  + 74, shuchusen8, 180 );

setEffAlphaKey( spep_6  + 34, shuchusen8, 255 );
setEffAlphaKey( spep_6  + 74, shuchusen8, 255 )

--SE
playSe( spep_6, SE_04); --移動
playSe( spep_6+34, 1011); --けり

--黒背景
entryFadeBg(spep_6, 0,98, 0, 0, 0, 0, 169);  -- 黒　背

--白フェード
entryFade( spep_6 +30 , 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_6 +90 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
--次の準備
spep_7=spep_6+98;

------------------------------------------------------
-- ガッ
------------------------------------------------------


--***敵の動き***--
setDisp( spep_7 + 0, 1, 1 );
changeAnime( spep_7 + 0, 1, 107 );

setMoveKey( spep_7 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_7 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_7 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_7 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_7 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_7 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_7 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_7 + 120, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_7 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_7 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_7 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_7 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_7 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_7 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_7 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_7 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_7 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_7 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_7 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_7 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_7 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_7 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_7 + 120, 1, 1.6, 1.6 );

setRotateKey( spep_7 + 0, 1, 0 );
setRotateKey( spep_7 + 2, 1, 105 );
setRotateKey( spep_7 + 4, 1, 240 );
setRotateKey( spep_7 + 6, 1, 405 );
setRotateKey( spep_7 + 8, 1, 600 );
setRotateKey( spep_7 + 10, 1, 825 );
setRotateKey( spep_7 + 12, 1, 1080 );
setRotateKey( spep_7 + 120, 1, 1080 );

--爆発エフェクト
entryEffect( spep_7, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_7, SE_10);

setDamage( spep_7 +16, 1, 0);  -- ダメージ振動等
setShake(spep_7+8,6,15);
setShake(spep_7+14,15,10);

--書き文字--
ctGa = entryEffectLife( spep_7 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_7 + 14, ctGa, 30, 10);

setEffMoveKey( spep_7 + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_7 + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_7 + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_7 + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_7 + 30, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_7 + 14, ctGa, 2, 2 );
setEffScaleKey( spep_7+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_7+17, cGa, 2.6, 2.6);
setEffScaleKey( spep_7+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_7+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_7+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_7+112, ctGa, 3.8, 3.8);

setEffRotateKey( spep_7 + 14, ctGa, -40 );
setEffRotateKey( spep_7 + 16, ctGa, -31 );
setEffRotateKey( spep_7 + 18, ctGa, -40 );
setEffRotateKey( spep_7 + 20, ctGa, -31 );
setEffRotateKey( spep_7 + 22, ctGa, -40 );
setEffRotateKey( spep_7 + 24, ctGa, -31);
setEffRotateKey( spep_7 + 26, ctGa, -40 );
setEffRotateKey( spep_7 + 28, ctGa, -31);
setEffRotateKey( spep_7 + 30, ctGa, -40 );

setEffAlphaKey( spep_7 + 14, ctGa, 255 );

--entryFadeBg( spep_7,  0,  120,  0,  21,  36,  51, 200);  -- ネイビー


--集中線（白）
shuchusen = entryEffectLife( spep_7+2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_7+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--ひび割れ
hibi = entryEffect( spep_7+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
playSe(  spep_7+2,  SE_11);  --ひび割れ


-- ダメージ表示
dealDamage(spep_7+16);
entryFade( spep_7+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(spep_7 + 110 -10);

else 
------------------------------------------------------------------------------------------------------------
-- 敵
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 待機
------------------------------------------------------
spep_0=0;

-- ** エフェクト等 (前)
taiki = entryEffectLife( spep_0 + 0, SP_01x, 30, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, taiki, 0, 0 , 0 );
setEffMoveKey( spep_0 + 30, taiki, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, taiki, 1.0, 1.0 );
setEffScaleKey( spep_0 + 30, taiki, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, taiki, 255 );
setEffAlphaKey( spep_0 + 28, taiki, 255 );
setEffAlphaKey( spep_0 + 29, taiki, 255 );
setEffAlphaKey( spep_0 + 30, taiki, 0 );
setEffRotateKey( spep_0 + 0, taiki, 0 );
setEffRotateKey( spep_0 + 30, taiki, 0 );

--白フェード
--entryFade( spep_0 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+30;
------------------------------------------------------
-- ため
------------------------------------------------------
-- ** エフェクト等 (前)
tame = entryEffectLife( spep_1 + 0, SP_02x, 102, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_1 + 102, tame, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_1 + 102, tame, 1.0, 1.0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 102, tame, 255 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 102, tame, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_1 + 0,  906, 74, 0x100, -1, 0, 235.3, 0 );

setEffMoveKey( spep_1  + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1  + 74, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1  + 0, shuchusen1, 1.1, 1.1 );
setEffScaleKey( spep_1  + 74, shuchusen1, 1.1, 1.1 );

setEffRotateKey( spep_1  + 0, shuchusen1, 180 );
setEffRotateKey( spep_1  + 74, shuchusen1, 180 );

setEffAlphaKey( spep_1  + 0, shuchusen1, 255 );
setEffAlphaKey( spep_1  + 72, shuchusen1, 255 );
setEffAlphaKey( spep_1  + 73, shuchusen1, 255 );
setEffAlphaKey( spep_1  + 74, shuchusen1, 0 );


--集中線
ryusen1 = entryEffectLife( spep_1  + 75,  914, 25, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 75, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1  + 100, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 75, ryusen1, 2, 1 );
setEffScaleKey( spep_1  + 100, ryusen1, 2, 1 );

setEffRotateKey( spep_1  + 75, ryusen1, 0 );
setEffRotateKey( spep_1  + 100, ryusen1, 0 );

setEffAlphaKey( spep_1  + 75, ryusen1, 255 );
setEffAlphaKey( spep_1  + 100, ryusen1, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_1 +4+10, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_1 +4+10, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--文字エントリー
ctgogo = entryEffectLife( spep_1 +4+22,  190006, 72, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ

setEffShake( spep_1 +4+22, ctgogo, 72, 10 );

setEffMoveKey( spep_1 +4+22, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_1 +4+94, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_1 +4+22, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_1 +4 + 86, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_1 +4 + 88, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_1 +4 +90, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_1 +4 + 93, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_1 +4+94, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_1 +4+22, ctgogo, 0 );
setEffRotateKey( spep_1 +4+94, ctgogo, 0 );

setEffAlphaKey( spep_1 +4+22, ctgogo, 0 );
setEffAlphaKey( spep_1 +4 + 23, ctgogo, 255 );
setEffAlphaKey( spep_1 +4 + 24, ctgogo, 255 );
setEffAlphaKey( spep_1 +4+94, ctgogo, 255 );

--SE
playSe( spep_1+26, SE_04); --ゴゴゴ

--黒背景
entryFadeBg(spep_1, 20,82, 0, 0, 0, 0, 160);  -- 黒　背

--白フェード
entryFade( spep_1 +94 , 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+102;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_2,SE_05);
shuchusen=entryEffectLife(spep_2,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_2,shuchusen,1.6,1.6);

speff2=entryEffect(spep_2,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_2+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2+90;


------------------------------------------------------
-- 一撃目：登場からキック
------------------------------------------------------

-- ** エフェクト等 (前)
kick = entryEffectLife( spep_3 + 0, SP_03x, 92, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, kick, 0, 0 , 0 );
setEffMoveKey( spep_3 + 92, kick, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kick, 1.0, 1.0 );
setEffScaleKey( spep_3 + 92, kick, 1.0, 1.0 );
setEffAlphaKey( spep_3 + 0, kick, 255 );
setEffAlphaKey( spep_3 + 92, kick, 255 );
setEffRotateKey( spep_3 + 0, kick, 0 );
setEffRotateKey( spep_3 + 92, kick, 0 );

--流線
ryusen2 = entryEffectLife( spep_3  + 2,  914, 29, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_3  + 2, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_3  + 31, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_3  + 2, ryusen2, 3, 1.5 );
setEffScaleKey( spep_3  + 31, ryusen2, 3, 1.5 );

setEffRotateKey( spep_3 + 2, ryusen2, 0 );
setEffRotateKey( spep_3  + 31, ryusen2, 0 );

setEffAlphaKey( spep_3  + 2, ryusen2, 255 );
setEffAlphaKey( spep_3  + 31, ryusen2, 255 );

--敵の動き
setDisp( spep_3  + 0, 1, 1 );

changeAnime( spep_3  + 0, 1, 100 );

setMoveKey( spep_3  + 0, 1, 540.1, 20.5 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, 434.4, 20.5 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 342.3, 20.5 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 261, 20.5 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 189.7, 20.5 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 128.1, 20.5 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 76.7, 20.5 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 36.7, 20.5 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 10, 20.5 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 0, 20.6 , 0 );
setMoveKey( spep_3  + 18, 1, 0, 20.6 , 0 );

setScaleKey( spep_3  + 0, 1, 2, 2 );
--setScaleKey( spep_3 -3 + 2, 1, 1.9, 1.9 );
setScaleKey( spep_3 -3 + 4, 1, 1.82, 1.82 );
setScaleKey( spep_3 -3 + 6, 1, 1.74, 1.74 );
setScaleKey( spep_3 -3 + 8, 1, 1.68, 1.68 );
setScaleKey( spep_3 -3 + 10, 1, 1.62, 1.62 );
setScaleKey( spep_3 -3 + 12, 1, 1.57, 1.57 );
setScaleKey( spep_3 -3 + 14, 1, 1.53, 1.53 );
setScaleKey( spep_3 -3 + 16, 1, 1.51, 1.51 );
setScaleKey( spep_3 -3 + 18, 1, 1.5, 1.5 );
setScaleKey( spep_3  + 18, 1, 1.5, 1.5 );

setRotateKey( spep_3  + 0, 1, 0 );
setRotateKey( spep_3  + 18, 1, 0 );

--黒背景
entryFadeBg(spep_3, 0, 92, 0, 0, 0, 0, 160);  -- 黒　背


--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3+18 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    
   
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    
    setMoveKey(SP_dodge, 1, 0, 20.6, 0);
    setScaleKey(SP_dodge , 1 ,1.5, 1.5 );
    setRotateKey(SP_dodge,   1, 0);
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, 0, 20.6, 0);
    setScaleKey(SP_dodge+10 , 1 ,1.5, 1.5 );
    setRotateKey(SP_dodge+10,   1, 0);
    
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
    
    --------------------------------------
    --回避しなかった場合
    --------------------------------------
--敵の動き
setDisp( spep_3  + 90, 1, 0 );

changeAnime( spep_3 -3 + 40, 1, 108 );

a=20;

setMoveKey( spep_3 -3 + 39, 1, 0, 20.6 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 29.9, 59.9 , 0 );
--setMoveKey( spep_3 -3 + 41, 1, 171.2, 179.9 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 36.9, 55.2 , 0 );
setMoveKey( spep_3 -3 + 41, 1, 36.9, 55.2 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 171.2, 179.9  , 0 );
setMoveKey( spep_3 -3 + 43, 1, 171.2, 179.9  , 0 );
--setMoveKey( spep_3 -3 + 44, 1, 138.1, 85.5 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 77.5, 67.2 , 0 );
setMoveKey( spep_3 -3 + 47, 1, 138.1, 85.5 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 31.8, 56.6 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 53.8, 75 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 65.1, 84.8 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 45.6, 65.7 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 30.2, 55.7 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 44.1, 67.5 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 60.1, 70.4 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 51.3+a, 62.8 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 31.1+a, 54 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 25.3+a, 52.9 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 29.9+a, 59.9 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 41.8+a, 68.2 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 71.1+a, 98.3 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 108.1, 151 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 160.5, 222.8 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 235.3, 312.6 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 313.9, 407.6 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 379.9, 491.1 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 435.2, 561.1 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 477.2, 617.8 , 0 );
setMoveKey( spep_3  + 90, 1, 500.5, 643.3 , 0 );


setScaleKey( spep_3 -3 + 40, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 42, 1, 1.8, 1.8 );
setScaleKey( spep_3 -3 + 44, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 46, 1, 1.72, 1.72 );
setScaleKey( spep_3 -3 + 48, 1, 1.62, 1.62 );
setScaleKey( spep_3 -3 + 50, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 52, 1, 1.57, 1.57 );
setScaleKey( spep_3 -3 + 54, 1, 1.65, 1.65 );
setScaleKey( spep_3 -3 + 56, 1, 1.57, 1.57 );
setScaleKey( spep_3 -3 + 58, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 60, 1, 1.53, 1.53 );
setScaleKey( spep_3 -3 + 62, 1, 1.57, 1.57 );
setScaleKey( spep_3 -3 + 64, 1, 1.53, 1.53 );
setScaleKey( spep_3 -3 + 66, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 70, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 72, 1, 1.49, 1.49 );
setScaleKey( spep_3 -3 + 74, 1, 1.48, 1.48 );
setScaleKey( spep_3 -3 + 76, 1, 1.45, 1.45 );
setScaleKey( spep_3 -3 + 78, 1, 1.41, 1.41 );
setScaleKey( spep_3 -3 + 80, 1, 1.37, 1.37 );
setScaleKey( spep_3 -3 + 82, 1, 1.32, 1.32 );
setScaleKey( spep_3 -3 + 84, 1, 1.28, 1.28 );
setScaleKey( spep_3 -3 + 86, 1, 1.24, 1.24 );
setScaleKey( spep_3 -3 + 88, 1, 1.21, 1.21 );
setScaleKey( spep_3  + 90, 1, 1.2, 1.2 );

setRotateKey( spep_3 -3 + 39, 1, 0 );
setRotateKey( spep_3 -3 + 40, 1, -30 );
setRotateKey( spep_3 -3 + 78, 1, -30 );
setRotateKey( spep_3 -3 + 80, 1, -29.9 );
setRotateKey( spep_3  + 90, 1, -29.9 );


--文字エントリー
ctbaki = entryEffectLife( spep_3 -3 + 42,  10020, 20, 0x100, -1, 0, 75, 46.9 );--バキッ

setEffMoveKey( spep_3 -3 + 42, ctbaki, 75, 46.9 , 0 );
setEffMoveKey( spep_3 -3 + 44, ctbaki, 108.7, 18.1 , 0 );
setEffMoveKey( spep_3 -3 + 46, ctbaki, 154.6, -12.7 , 0 );
setEffMoveKey( spep_3 -3 + 48, ctbaki, 157.6, -10.7 , 0 );
setEffMoveKey( spep_3 -3 + 50, ctbaki, 177.5, -21.1 , 0 );
setEffMoveKey( spep_3 -3 + 52, ctbaki, 177.6, -26 , 0 );
setEffMoveKey( spep_3 -3 + 54, ctbaki, 186.9, -21.7 , 0 );
setEffMoveKey( spep_3 -3 + 56, ctbaki, 191.1, -34.5 , 0 );
setEffMoveKey( spep_3 -3 + 58, ctbaki, 191.6, -25.2 , 0 );
setEffMoveKey( spep_3 -3 + 60, ctbaki, 200.1, -35.4 , 0 );
setEffMoveKey( spep_3 -3 + 62, ctbaki, 204.2, -37.6 , 0 );

setEffScaleKey( spep_3 -3 + 42, ctbaki, 0.25, 0.25 );
setEffScaleKey( spep_3 -3 + 44, ctbaki, 0.88, 0.88 );
setEffScaleKey( spep_3 -3 + 46, ctbaki, 1.5, 1.5 );
setEffScaleKey( spep_3 -3 + 48, ctbaki, 1.57, 1.57 );
setEffScaleKey( spep_3 -3 + 50, ctbaki, 1.63, 1.63 );
setEffScaleKey( spep_3 -3 + 52, ctbaki, 1.7, 1.7 );
setEffScaleKey( spep_3 -3 + 54, ctbaki, 1.72, 1.72 );
setEffScaleKey( spep_3 -3 + 56, ctbaki, 1.74, 1.74 );
setEffScaleKey( spep_3 -3 + 58, ctbaki, 1.76, 1.76 );
setEffScaleKey( spep_3 -3 + 60, ctbaki, 1.78, 1.78 );
setEffScaleKey( spep_3 -3 + 62, ctbaki, 1.8, 1.8 );

setEffRotateKey( spep_3 -3 + 42, ctbaki, 0 );
setEffRotateKey( spep_3 -3 + 62, ctbaki, 0 );

setEffAlphaKey( spep_3 -3 + 42, ctbaki, 255 );
setEffAlphaKey( spep_3 -3 + 52, ctbaki, 255 );
setEffAlphaKey( spep_3 -3 + 54, ctbaki, 204 );
setEffAlphaKey( spep_3 -3 + 56, ctbaki, 153 );
setEffAlphaKey( spep_3 -3 + 58, ctbaki, 102 );
setEffAlphaKey( spep_3 -3 + 60, ctbaki, 51 );
setEffAlphaKey( spep_3 -3 + 62, ctbaki, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_3  + 37,  906, 34, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3  + 37, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3  + 71, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 37, shuchusen2, 1.1, 1.1 );
setEffScaleKey( spep_3 + 71, shuchusen2, 1.1, 1.1 );

setEffRotateKey( spep_3  + 37, shuchusen2, 180 );
setEffRotateKey( spep_3  + 71, shuchusen2, 180 );

setEffAlphaKey( spep_3  + 37, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 70, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 71, shuchusen2, 0 );

--流線
ryusen3 = entryEffectLife( spep_3  + 71,  914,21, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_3  + 71, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 92, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_3  + 71, ryusen3, 3.6, 1.8 );
setEffScaleKey( spep_3  + 92, ryusen3, 3.6, 1.8 );

setEffRotateKey( spep_3 + 71, ryusen3, 130.1 );
setEffRotateKey( spep_3  + 92, ryusen3, 130.1 );

setEffAlphaKey( spep_3 + 71, ryusen3, 154 );
setEffAlphaKey( spep_3  + 91, ryusen3, 154 );
setEffAlphaKey( spep_3  + 92, ryusen3, 0 );

--SE
playSe( spep_3, 44); --移動
playSe( spep_3+38, 1009); --キック
playSe( spep_3+78, 43); --瞬間移動

--白フェード
entryFade( spep_3 +32 , 0, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_4=spep_3+92;

------------------------------------------------------
-- 二撃目：両手殴り
------------------------------------------------------
--流線
ryusen4 = entryEffectLife( spep_4  + 0,  914, 34, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4  + 0, ryusen4, 0, 0 , 0 );
setEffMoveKey( spep_4  + 34, ryusen4, 0, 0 , 0 );

setEffScaleKey( spep_4  + 0, ryusen4, 3.59, 1.8 );
setEffScaleKey( spep_4  + 5, ryusen4, 3.59, 1.8 );
setEffScaleKey( spep_4  + 7, ryusen4, 3.48, 1.74 );
setEffScaleKey( spep_4  + 9, ryusen4, 3.36, 1.68 );
setEffScaleKey( spep_4  + 11, ryusen4, 3.24, 1.62 );
setEffScaleKey( spep_4  + 13, ryusen4, 3.12, 1.56 );
setEffScaleKey( spep_4  + 15, ryusen4, 3, 1.5 );
setEffScaleKey( spep_4  + 34, ryusen4, 3, 1.5 );

setEffRotateKey( spep_4  + 0, ryusen4, 130.1 );
setEffRotateKey( spep_4  + 5, ryusen4, 130.1 );
setEffRotateKey( spep_4  + 7, ryusen4, 140.1 );
setEffRotateKey( spep_4  + 8, ryusen4, 150.1 );
setEffRotateKey( spep_4  + 11, ryusen4, 160 );
setEffRotateKey( spep_4  + 13, ryusen4, 170 );
setEffRotateKey( spep_4  + 15, ryusen4, 180 );
setEffRotateKey( spep_4  + 34, ryusen4, 180 );

setEffAlphaKey( spep_4  + 0, ryusen4, 154 );
setEffAlphaKey( spep_4  + 32, ryusen4, 154 );
setEffAlphaKey( spep_4  + 33, ryusen4, 154 );
setEffAlphaKey( spep_4  + 34, ryusen4, 0 );

--流線
ryusen5 = entryEffectLife( spep_4 ,  914, 88, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 , ryusen5, 0, 0 , 0 );
setEffMoveKey( spep_4  + 88, ryusen5, 0, 0 , 0 );

setEffScaleKey( spep_4, ryusen5, 2.7, 1.35 );
setEffScaleKey( spep_4  + 88, ryusen5, 2.7, 1.35 );

setEffRotateKey( spep_4, ryusen5, 90 );
setEffRotateKey( spep_4  + 88, ryusen5, 90 );

setEffAlphaKey( spep_4, ryusen5, 0 );
setEffAlphaKey( spep_4 +78, ryusen5, 0 );
setEffAlphaKey( spep_4 +79, ryusen5, 154 );
setEffAlphaKey( spep_4 +80, ryusen5, 154 );
setEffAlphaKey( spep_4  + 87, ryusen5, 154 );
setEffAlphaKey( spep_4  + 88, ryusen5, 0 );

-- ** エフェクト等 (前)
punch_f = entryEffectLife( spep_4 + 0, SP_04x, 90, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 90, punch_f, 1.0, 1.0 );
setEffAlphaKey( spep_4 + 0, punch_f, 255 );
setEffAlphaKey( spep_4 + 90, punch_f, 255 );
setEffRotateKey( spep_4 + 0, punch_f, 0 );
setEffRotateKey( spep_4 + 90, punch_f, 0 );

-- ** エフェクト等 (後)
punch_b = entryEffectLife( spep_4 + 0, SP_05x, 90, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 90, punch_b, 1.0, 1.0 );
setEffAlphaKey( spep_4 + 0, punch_b, 255 );
setEffAlphaKey( spep_4 + 90, punch_b, 255 );
setEffRotateKey( spep_4 + 0, punch_b, 0 );
setEffRotateKey( spep_4 + 90, punch_b, 0 );

--文字エントリー
ctdon = entryEffectLife( spep_4 -3 + 42,  10019, 20, 0x100, -1, 0, 0, -0.1 );
setEffMoveKey( spep_4 -3 + 42, ctdon, 0, -0.1 , 0 );
setEffMoveKey( spep_4 -3 + 44, ctdon, -53.8, 18.1 , 0 );
setEffMoveKey( spep_4 -3 + 46, ctdon, -95.4, 34.3 , 0 );
setEffMoveKey( spep_4 -3 + 48, ctdon, -109, 43.7 , 0 );
setEffMoveKey( spep_4 -3 + 50, ctdon, -105.7, 40.7 , 0 );
setEffMoveKey( spep_4 -3 + 52, ctdon, -122.2, 43.2 , 0 );
setEffMoveKey( spep_4 -3 + 54, ctdon, -118.9, 50.7 , 0 );
setEffMoveKey( spep_4 -3 + 56, ctdon, -120.7, 41.2 , 0 );
setEffMoveKey( spep_4 -3 + 58, ctdon, -126.2, 53.7 , 0 );
setEffMoveKey( spep_4 -3 + 60, ctdon, -123.8, 46.8 , 0 );
setEffMoveKey( spep_4 -3 + 62, ctdon, -125.8, 47.8 , 0 );

setEffScaleKey( spep_4 -3 + 42, ctdon, 0.25, 0.25 );
setEffScaleKey( spep_4 -3 + 44, ctdon, 0.88, 0.88 );
setEffScaleKey( spep_4 -3 + 46, ctdon, 1.5, 1.5 );
setEffScaleKey( spep_4 -3 + 48, ctdon, 1.57, 1.57 );
setEffScaleKey( spep_4 -3 + 50, ctdon, 1.63, 1.63 );
setEffScaleKey( spep_4 -3 + 52, ctdon, 1.7, 1.7 );
setEffScaleKey( spep_4 -3 + 54, ctdon, 1.72, 1.72 );
setEffScaleKey( spep_4 -3 + 56, ctdon, 1.74, 1.74 );
setEffScaleKey( spep_4 -3 + 58, ctdon, 1.76, 1.76 );
setEffScaleKey( spep_4 -3 + 60, ctdon, 1.78, 1.78 );
setEffScaleKey( spep_4 -3 + 62, ctdon, 1.8, 1.8 );

setEffRotateKey( spep_4 -3 + 42, ctdon, 0 );
setEffRotateKey( spep_4 -3 + 62, ctdon, 0 );

setEffAlphaKey( spep_4 -3 + 42, ctdon, 255 );
setEffAlphaKey( spep_4 -3 + 52, ctdon, 255 );
setEffAlphaKey( spep_4 -3 + 54, ctdon, 204 );
setEffAlphaKey( spep_4 -3 + 56, ctdon, 153 );
setEffAlphaKey( spep_4 -3 + 58, ctdon, 102 );
setEffAlphaKey( spep_4 -3 + 60, ctdon, 51 );
setEffAlphaKey( spep_4 -3 + 62, ctdon, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_4 + 39,  906, 40, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4  + 39, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4  + 79, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 39, shuchusen3, 1.1, 1.1 );
setEffScaleKey( spep_4  + 79, shuchusen3, 1.1, 1.1 );

setEffRotateKey( spep_4 + 39, shuchusen3, 180 );
setEffRotateKey( spep_4  + 79, shuchusen3, 180 );

setEffAlphaKey( spep_4 + 39, shuchusen3, 255 )
setEffAlphaKey( spep_4  + 78, shuchusen3, 255 )
setEffAlphaKey( spep_4  + 79, shuchusen3, 0 )

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
--setDisp( spep_4  + 88, 1, 0 );

changeAnime( spep_4  + 0, 1, 106 );

b=60;

setMoveKey( spep_4  + 0, 1, -444.7, -302.3 , 0 );
--setMoveKey( spep_4 -3 + 2, 1, -358.8, -222.5 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -290.6, -166.4 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -236.6, -122.5 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -198.9, -93.8 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -167.8, -70.3 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -139.9, -42.1 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -116.9, -18.3 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -96.2, -7 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -80.3, 0.6 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -75.5, 10.3 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -76.2, 14.9 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -69.4, 19.7 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -62.6, 24.5 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -61.8, 23.2 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -61, 22 , 0 );
setMoveKey( spep_4 -3 + 32, 1, -58.3, 28.8 , 0 );
setMoveKey( spep_4 -3 + 34, 1, -55.5, 35.5 , 0 );
setMoveKey( spep_4 -3 + 36, 1, -50.7, 34.3 , 0 );
setMoveKey( spep_4 -3 + 38, 1, -45.9, 33.1 , 0 );
setMoveKey( spep_4 -3 + 40, 1, -51.1, 39.8 , 0 );
setMoveKey( spep_4 -3 + 43, 1, -1.1+b, -64.9 , 0 );
setMoveKey( spep_4 -3 + 44, 1, -102.8+b, -272.8 , 0 );
setMoveKey( spep_4 -3 + 45, 1, -102.8+b, -272.8 , 0 );
setMoveKey( spep_4 -3 + 46, 1, -3.7+b, -56.4 , 0 );
setMoveKey( spep_4 -3 + 47, 1, -3.7+b, -56.4 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 52.2+b, -169.5 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 30.5+b, -114.5 , 0 );
setMoveKey( spep_4 -3 + 52, 1, -0.5+b, -61 , 0 );
setMoveKey( spep_4 -3 + 54, 1, -18.5+b, -89.1 , 0 );
setMoveKey( spep_4 -3 + 56, 1, -27.8+b, -116.6 , 0 );
setMoveKey( spep_4 -3 + 58, 1, -9.5+b, -86.5 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 1.4+b, -61.4 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 0.6+b, -81.8 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 2.5+b, -88.7 , 0 );
setMoveKey( spep_4 -3 + 66, 1, -2+b, -73.1 , 0 );
setMoveKey( spep_4 -3 + 68, 1, -0.1+b, -59.1 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 3.4+b, -61.7 , 0 );
setMoveKey( spep_4 -3 + 72, 1, -0.5+b, -61 , 0 );
setMoveKey( spep_4 -3 + 74, 1, -4.4+b, -60.4 , 0 );
setMoveKey( spep_4 -3 + 76, 1, -0.2+b, -59.1 , 0 );
setMoveKey( spep_4 -3 + 78, 1, -1.2+b, -65 , 0 );
setMoveKey( spep_4 -3 + 80, 1, -2.5+b, -83.4 , 0 );
--setMoveKey( spep_4 -3 + 82, 1, -4, -147.4 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 0.1+b, -268.4 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 5.8+b, -452.1 , 0 );
setMoveKey( spep_4  + 87, 1, -1.1+b, -950.1 , 0 );
--setMoveKey( spep_4  + 88, 1, -1.1, -950.1 , 0 );

setScaleKey( spep_4  + 0, 1, 2.5, 2.5 );
--setScaleKey( spep_4 -3 + 2, 1, 2.28, 2.28 );
setScaleKey( spep_4 -3 + 4, 1, 2.13, 2.13 );
setScaleKey( spep_4 -3 + 6, 1, 2.01, 2.01 );
setScaleKey( spep_4 -3 + 8, 1, 1.91, 1.91 );
setScaleKey( spep_4 -3 + 10, 1, 1.83, 1.83 );
setScaleKey( spep_4 -3 + 12, 1, 1.76, 1.76 );
setScaleKey( spep_4 -3 + 14, 1, 1.71, 1.71 );
setScaleKey( spep_4 -3 + 16, 1, 1.66, 1.66 );
setScaleKey( spep_4 -3 + 18, 1, 1.63, 1.63 );
setScaleKey( spep_4 -3 + 20, 1, 1.61, 1.61 );
setScaleKey( spep_4 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 42, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 44, 1, 1.92, 1.92 );
setScaleKey( spep_4 -3 + 46, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 48, 1, 1.84, 1.84 );
setScaleKey( spep_4 -3 + 50, 1, 1.73, 1.73 );
setScaleKey( spep_4 -3 + 52, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 54, 1, 1.68, 1.68 );
setScaleKey( spep_4 -3 + 56, 1, 1.76, 1.76 );
setScaleKey( spep_4 -3 + 58, 1, 1.68, 1.68 );
setScaleKey( spep_4 -3 + 60, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 62, 1, 1.63, 1.63 );
setScaleKey( spep_4 -3 + 64, 1, 1.68, 1.68 );
setScaleKey( spep_4 -3 + 66, 1, 1.63, 1.63 );
setScaleKey( spep_4 -3 + 68, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 78, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 80, 1, 1.65, 1.65 );
setScaleKey( spep_4 -3 + 82, 1, 1.79, 1.79 );
setScaleKey( spep_4 -3 + 84, 1, 2.03, 2.03 );
setScaleKey( spep_4 -3 + 86, 1, 2.4, 2.4 );
setScaleKey( spep_4  + 87, 1, 3, 3 );

setRotateKey( spep_4  + 0, 1, -96.5 );
--setRotateKey( spep_4 -3 + 2, 1, -94.9 );
setRotateKey( spep_4 -3 + 4, 1, -93.8 );
setRotateKey( spep_4 -3 + 6, 1, -93 );
setRotateKey( spep_4 -3 + 8, 1, -92.3 );
setRotateKey( spep_4 -3 + 10, 1, -91.7 );
setRotateKey( spep_4 -3 + 12, 1, -91.2 );
setRotateKey( spep_4 -3 + 14, 1, -90.8 );
setRotateKey( spep_4 -3 + 16, 1, -90.5 );
setRotateKey( spep_4 -3 + 18, 1, -90.2 );
setRotateKey( spep_4 -3 + 20, 1, -90.1 );
setRotateKey( spep_4 -3 + 22, 1, -90 );
setRotateKey( spep_4 -3 + 40, 1, -90 );
setRotateKey( spep_4 -3 + 41, 1, -170 );
setRotateKey( spep_4 -3 + 42, 1, -170 );
setRotateKey( spep_4  + 87, 1, -170 );

--SE
playSe( spep_4+6, 43); --瞬間移動
playSe( spep_4+40, 1010); --叩き落し
playSe( spep_4+76, 43); --瞬間移動

--黒背景
entryFadeBg(spep_4, 0,88, 0, 0, 0, 0, 160);  -- 黒　背

--白フェード
entryFade( spep_4 +34 , 0, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_5=spep_4+88;

------------------------------------------------------
-- 三撃目：キック
------------------------------------------------------
-- ** エフェクト等 (前)
kick2 = entryEffectLife( spep_5 + 0, SP_06x, 86, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, kick2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 86, kick2, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, kick2, 1.0, 1.0 );
setEffScaleKey( spep_5 + 86, kick2, 1.0, 1.0 );
setEffAlphaKey( spep_5 + 0, kick2, 255 );
setEffAlphaKey( spep_5 + 86, kick2, 255 );
setEffRotateKey( spep_5 + 0, kick2, 0 );
setEffRotateKey( spep_5 + 86, kick2, 0 );

--敵の動き
--setDisp( spep_5  + 0, 1, 1 );
--setDisp( spep_5  +88, 1, 0 );

changeAnime( spep_5  + 0, 1, 106 );
changeAnime( spep_5 -3 + 28, 1, 108 );
changeAnime( spep_5 -3 + 82, 1, 106 );

setMoveKey( spep_5  + 0, 1, -2.3, 651.2 , 0 );
setMoveKey( spep_5+ 2, 1, -3.5, 469.4 , 0 );
setMoveKey( spep_5  + 4, 1, -4.9, 351.6 , 0 );
setMoveKey( spep_5  + 6, 1, -1.2, 254.1 , 0 );
setMoveKey( spep_5  + 8, 1, 2.6, 173.5 , 0 );
setMoveKey( spep_5  + 10, 1, -1.5, 108.5 , 0 );
setMoveKey( spep_5  + 12, 1, -5.7, 52.9 , 0 );
setMoveKey( spep_5  + 14, 1, -1.1, 5.9 , 0 );
setMoveKey( spep_5  + 16, 1, 3.6, -34.4 , 0 );
setMoveKey( spep_5  + 18, 1, 0.6, -73.9 , 0 );
setMoveKey( spep_5  + 20, 1, -2.3, -108.1 , 0 );
--setMoveKey( spep_5 -3 + 22, 1, -3.7, -128.3 , 0 );
setMoveKey( spep_5 -3 + 24, 1, -5.1, -143.7 , 0 );
setMoveKey( spep_5 -3 + 27, 1, -2.3, -168.7 , 0 );
setMoveKey( spep_5 -3 + 28, 1, -67.2, -163.7 , 0 );
setMoveKey( spep_5 -3 + 30, 1, -66, -158.8 , 0 );
setMoveKey( spep_5 -3 + 31, 1, -66, -158.8 , 0 );
setMoveKey( spep_5 -3 + 32, 1, -107.8, 15.3 , 0 );
setMoveKey( spep_5 -3 + 33, 1, -107.8, 15.3 , 0 );
setMoveKey( spep_5 -3 + 34, 1, -61.1, -160 , 0 );
setMoveKey( spep_5 -3 + 36, 1, -43.7, -92.7 , 0 );
setMoveKey( spep_5 -3 + 38, 1, -58.2, -124.6 , 0 );
setMoveKey( spep_5 -3 + 40, 1, -71.2, -154.5 , 0 );
setMoveKey( spep_5 -3 + 42, 1, -71.6, -140.8 , 0 );
setMoveKey( spep_5 -3 + 44, 1, -71.4, -127.4 , 0 );
setMoveKey( spep_5 -3 + 46, 1, -69.6, -145.6 , 0 );
setMoveKey( spep_5 -3 + 48, 1, -67.2, -163.7 , 0 );
setMoveKey( spep_5 -3 + 50, 1, -65, -148.8 , 0 );
setMoveKey( spep_5 -3 + 52, 1, -63.1, -136.7 , 0 );
setMoveKey( spep_5 -3 + 54, 1, -60, -150 , 0 );
setMoveKey( spep_5 -3 + 56, 1, -57.4, -166.1 , 0 );
setMoveKey( spep_5 -3 + 58, 1, -64.3, -160.3 , 0 );
setMoveKey( spep_5 -3 + 60, 1, -71.2, -154.5 , 0 );
setMoveKey( spep_5 -3 + 62, 1, -64.6, -157.2 , 0 );
setMoveKey( spep_5 -3 + 64, 1, -58, -159.8 , 0 );
setMoveKey( spep_5 -3 + 66, 1, -67.2, -163.8 , 0 );
setMoveKey( spep_5 -3 + 68, 1, -64.4, -139.5 , 0 );
setMoveKey( spep_5 -3 + 70, 1, -58, -74.4 , 0 );
setMoveKey( spep_5 -3 + 72, 1, -45.7, 16.4 , 0 );
setMoveKey( spep_5 -3 + 74, 1, -31.8, 122.5 , 0 );
setMoveKey( spep_5 -3 + 76, 1, -30.7, 225.6 , 0 );
setMoveKey( spep_5 -3 + 78, 1, -33.1, 292.2 , 0 );
setMoveKey( spep_5 -3 + 81, 1, -27.2, 301.3 , 0 );
setMoveKey( spep_5 -3 + 82, 1, -30.3, 301.3 , 0 );
setMoveKey( spep_5 -3 + 84, 1, -29.3, 303.1 , 0 );
setMoveKey( spep_5  + 86, 1, -27.5, 296.5 , 0 );
--setMoveKey( spep_5  + 88, 1, -19.1, 251.3 , 0 );

setScaleKey( spep_5  + 0, 1, 1.5, 1.5 );
--setScaleKey( spep_5 -3 + 2, 1, 1.57, 1.57 );
setScaleKey( spep_5 -3 + 4, 1, 1.61, 1.61 );
setScaleKey( spep_5 -3 + 6, 1, 1.65, 1.65 );
setScaleKey( spep_5 -3 + 8, 1, 1.68, 1.68 );
setScaleKey( spep_5 -3 + 10, 1, 1.7, 1.7 );
setScaleKey( spep_5 -3 + 12, 1, 1.72, 1.72 );
setScaleKey( spep_5 -3 + 14, 1, 1.74, 1.74 );
setScaleKey( spep_5 -3 + 16, 1, 1.75, 1.75 );
setScaleKey( spep_5 -3 + 18, 1, 1.77, 1.77 );
setScaleKey( spep_5 -3 + 20, 1, 1.78, 1.78 );
setScaleKey( spep_5 -3 + 22, 1, 1.79, 1.79 );
setScaleKey( spep_5 -3 + 24, 1, 1.79, 1.79 );
setScaleKey( spep_5 -3 + 27, 1, 1.8, 1.8 );
setScaleKey( spep_5 -3 + 30, 1, 1.8, 1.8 );
setScaleKey( spep_5 -3 + 32, 1, 2.16, 2.16 );
setScaleKey( spep_5 -3 + 34, 1, 1.8, 1.8 );
setScaleKey( spep_5 -3 + 36, 1, 2.07, 2.07 );
setScaleKey( spep_5 -3 + 38, 1, 1.94, 1.94 );
setScaleKey( spep_5 -3 + 40, 1, 1.8, 1.8 );
setScaleKey( spep_5 -3 + 42, 1, 1.89, 1.89 );
setScaleKey( spep_5 -3 + 44, 1, 1.98, 1.98 );
setScaleKey( spep_5 -3 + 46, 1, 1.89, 1.89 );
setScaleKey( spep_5 -3 + 48, 1, 1.8, 1.8 );
setScaleKey( spep_5 -3 + 50, 1, 1.84, 1.84 );
setScaleKey( spep_5 -3 + 52, 1, 1.89, 1.89 );
setScaleKey( spep_5 -3 + 54, 1, 1.84, 1.84 );
setScaleKey( spep_5 -3 + 56, 1, 1.8, 1.8 );
setScaleKey( spep_5 -3 + 66, 1, 1.8, 1.8 );
setScaleKey( spep_5 -3 + 68, 1, 1.81, 1.81 );
setScaleKey( spep_5 -3 + 70, 1, 1.83, 1.83 );
setScaleKey( spep_5 -3 + 72, 1, 1.88, 1.88 );
setScaleKey( spep_5 -3 + 74, 1, 1.92, 1.92 );
setScaleKey( spep_5 -3 + 76, 1, 1.97, 1.97 );
setScaleKey( spep_5 -3 + 78, 1, 1.99, 1.99 );
setScaleKey( spep_5 -3 + 81, 1, 2, 2 );
setScaleKey( spep_5  + 86, 1, 2, 2 );

setRotateKey( spep_5  + 0, 1, -170 );
setRotateKey( spep_5 -3 + 27, 1, -170 );
setRotateKey( spep_5 -3 + 28, 1, -140 );
setRotateKey( spep_5 -3 + 81, 1, -140 );
setRotateKey( spep_5 -3 + 82, 1, -150.1 );
setRotateKey( spep_5 -3 + 84, 1, -151.9 );
setRotateKey( spep_5 -3 + 86, 1, -157.7 );
setRotateKey( spep_5  + 86, 1, -174 );

--流線
ryusen6 = entryEffectLife( spep_5  + 0,  914, 20, 0x80, -1, 0, 0, 0.3 );

setEffMoveKey( spep_5  + 0, ryusen6, 0, 0 , 0 );
setEffMoveKey( spep_5  + 20, ryusen6, 0, 0 , 0 );

setEffScaleKey( spep_5  + 0, ryusen6, 2.7, 1.35 );
setEffScaleKey( spep_5  + 20, ryusen6, 2.7, 1.35 );

setEffRotateKey( spep_5  + 0, ryusen6, 90 );
setEffRotateKey( spep_5  + 20, ryusen6, 90 );

setEffAlphaKey( spep_5  + 0, ryusen6, 154 );
setEffAlphaKey( spep_5  + 19, ryusen6, 154 );
setEffAlphaKey( spep_5  + 20, ryusen6, 0 );

--集中線
shuchusen4 = entryEffectLife( spep_5   + 25,  906, 40, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5   + 25, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5   + 65, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_5   + 25, shuchusen4, 1.1, 1.1 );
setEffScaleKey( spep_5   + 65, shuchusen4, 1.1, 1.1 );

setEffRotateKey( spep_5  + 25, shuchusen4, 180 );
setEffRotateKey( spep_5  + 65, shuchusen4, 180 );

setEffAlphaKey( spep_5  + 25, shuchusen4, 255 );
setEffAlphaKey( spep_5  + 64, shuchusen4, 255 );
setEffAlphaKey( spep_5  + 65, shuchusen4, 0 );

--文字エントリー
ctbaki2 = entryEffectLife( spep_5 + 28,  10020, 20, 0x100, -1, 0, 20, -28.1 );

setEffMoveKey( spep_5 + 28, ctbaki2, 20, -28.1 , 0 );
setEffMoveKey( spep_5 + 30, ctbaki2, 81.2, 5.6 , 0 );
setEffMoveKey( spep_5 + 32, ctbaki2, 154.6, 37.3 , 0 );
setEffMoveKey( spep_5 + 34, ctbaki2, 157.6, 45.9 , 0 );
setEffMoveKey( spep_5 + 36, ctbaki2, 177.5, 42.1 , 0 );
setEffMoveKey( spep_5 + 38, ctbaki2, 177.6, 43.9 , 0 );
setEffMoveKey( spep_5 + 40, ctbaki2, 186.9, 52.2 , 0 );
setEffMoveKey( spep_5 + 42, ctbaki2, 191.1, 43.4 , 0 );
setEffMoveKey( spep_5 + 44, ctbaki2, 191.6, 56.7 , 0 );
setEffMoveKey( spep_5 + 46, ctbaki2, 200.1, 50.5 , 0 );
setEffMoveKey( spep_5 + 48, ctbaki2, 204.2, 52.3 , 0 );

setEffScaleKey( spep_5 + 28, ctbaki2, 0.25, 0.25 );
setEffScaleKey( spep_5 + 30, ctbaki2, 0.88, 0.88 );
setEffScaleKey( spep_5 + 32, ctbaki2, 1.5, 1.5 );
setEffScaleKey( spep_5 + 34, ctbaki2, 1.57, 1.57 );
setEffScaleKey( spep_5 + 36, ctbaki2, 1.63, 1.63 );
setEffScaleKey( spep_5 + 38, ctbaki2, 1.7, 1.7 );
setEffScaleKey( spep_5 + 40, ctbaki2, 1.72, 1.72 );
setEffScaleKey( spep_5 + 42, ctbaki2, 1.74, 1.74 );
setEffScaleKey( spep_5 + 44, ctbaki2, 1.76, 1.76 );
setEffScaleKey( spep_5 + 46, ctbaki2, 1.78, 1.78 );
setEffScaleKey( spep_5 + 48, ctbaki2, 1.8, 1.8 );

setEffRotateKey( spep_5 + 28, ctbaki2, 0 );
setEffRotateKey( spep_5 + 48, ctbaki2, 0 );

--流線
ryusen7 = entryEffectLife( spep_5 + 65,  921, 21, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 65, ryusen7, 0, 0 , 0 );
setEffMoveKey( spep_5  + 86, ryusen7, 0, 0 , 0 );

setEffScaleKey( spep_5 + 65, ryusen7, 1.4, 1.23 );
setEffScaleKey( spep_5  + 86, ryusen7, 1.4, 1.23 );

setEffRotateKey( spep_5  + 65, ryusen7, 90 );
setEffRotateKey( spep_5  + 86, ryusen7, 90 );

setEffAlphaKey( spep_5 + 65, ryusen7, 255 );
setEffAlphaKey( spep_5  + 85, ryusen7, 255 );
setEffAlphaKey( spep_5  + 86, ryusen7, 0 );

--SE
playSe( spep_5+4, 43); --瞬間移動
playSe( spep_5+26, 1009); --瞬間移動

--黒背景
entryFadeBg(spep_5, 0,86, 0, 0, 0, 0, 160);  -- 黒　背

--白フェード
entryFade( spep_5 +20 , 0, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_6=spep_5+86;

------------------------------------------------------
-- 四撃目：キック
------------------------------------------------------
--流線
ryusen8 = entryEffectLife( spep_6  + 0,  921, 30, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_6  + 0, ryusen8, 0, 0 , 0 );
setEffMoveKey( spep_6 +30, ryusen8, 0, 0 , 0 );

setEffScaleKey( spep_6  + 0, ryusen8, 1.4, 1.23 );
setEffScaleKey( spep_6 +30, ryusen8, 1.4, 1.23 );

setEffRotateKey( spep_6  + 0, ryusen8, 90 );
setEffRotateKey( spep_6 +30, ryusen8, 90 );

setEffAlphaKey( spep_6  + 0, ryusen8, 255 );
setEffAlphaKey( spep_6 +29, ryusen8, 255 );
setEffAlphaKey( spep_6 + 30, ryusen8, 0 );

--流線
ryusen9 = entryEffectLife( spep_6,  921, 98, 0x80, -1, 0, 20, -35 );

setEffMoveKey( spep_6 , ryusen9, 20, -30 , 0 );
setEffMoveKey( spep_6 + 98, ryusen9, 20, -30 , 0 );

setEffScaleKey( spep_6 , ryusen9, 1.6, 1.2 );
setEffScaleKey( spep_6 + 98, ryusen9, 1.6, 1.2 );

setEffRotateKey( spep_6 , ryusen9, 150 );--155
setEffRotateKey( spep_6 + 98, ryusen9, 150 );

setEffAlphaKey( spep_6, ryusen9, 0 );
setEffAlphaKey( spep_6+ 74, ryusen9, 0 );
setEffAlphaKey( spep_6+ 75, ryusen9, 255 );
setEffAlphaKey( spep_6+ 76, ryusen9, 255 );
setEffAlphaKey( spep_6 + 98, ryusen9, 255 );

-- ** エフェクト等 (前)
kick3_f = entryEffectLife( spep_6 + 0, SP_07x, 98, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_6 + 0, kick3_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 98, kick3_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, kick3_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 98, kick3_f, 1.0, 1.0 );
setEffAlphaKey( spep_6 + 0, kick3_f, 255 );
setEffAlphaKey( spep_6 + 98, kick3_f, 255 );
setEffRotateKey( spep_6 + 0, kick3_f, 0 );
setEffRotateKey( spep_6 + 98, kick3_f, 0 );

-- ** エフェクト等 (裏)
kick3_b = entryEffectLife( spep_6 + 0, SP_08x, 98, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_6 + 0, kick3_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 98, kick3_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, kick3_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 98, kick3_b, 1.0, 1.0 );
setEffAlphaKey( spep_6 + 0, kick3_b, 255 );
setEffAlphaKey( spep_6 + 98, kick3_b, 255 );
setEffRotateKey( spep_6 + 0, kick3_b, 0 );
setEffRotateKey( spep_6 + 98, kick3_b, 0 );

--文字エントリー
ctdogon = entryEffectLife( spep_6 -4 + 38,  10018, 18, 0x100, -1, 0, 30, 93.3 );--ドゴォンッ

setEffMoveKey( spep_6 -4 + 38, ctdogon, 30, 93.3 , 0 );
setEffMoveKey( spep_6 -4 + 40, ctdogon, -1.5, 154.1 , 0 );
setEffMoveKey( spep_6 -4 + 42, ctdogon, -20, 212.7 , 0 );
setEffMoveKey( spep_6 -4 + 44, ctdogon, -35.8, 226.7 , 0 );
setEffMoveKey( spep_6 -4 + 46, ctdogon, -33.6, 227.6 , 0 );
setEffMoveKey( spep_6 -4 + 48, ctdogon, -52.5, 234.4 , 0 );
setEffMoveKey( spep_6 -4 + 50, ctdogon, -49.3, 244.1 , 0 );
setEffMoveKey( spep_6 -4 + 52, ctdogon, -51.6, 235.8 , 0 );
setEffMoveKey( spep_6 -4 + 54, ctdogon, -57.8, 250.9 , 0 );
setEffMoveKey( spep_6 -4 + 56, ctdogon, -60.3, 253.8 , 0 );

setEffScaleKey( spep_6 -4 + 38, ctdogon, 0.33, 0.33 );
setEffScaleKey( spep_6 -4 + 40, ctdogon, 1.2, 1.2 );
setEffScaleKey( spep_6 -4 + 42, ctdogon, 2.08, 2.08 );
setEffScaleKey( spep_6 -4 + 44, ctdogon, 2.17, 2.17 );
setEffScaleKey( spep_6 -4 + 46, ctdogon, 2.25, 2.25 );
setEffScaleKey( spep_6 -4 + 48, ctdogon, 2.34, 2.34 );
setEffScaleKey( spep_6 -4 + 50, ctdogon, 2.37, 2.37 );
setEffScaleKey( spep_6 -4 + 52, ctdogon, 2.41, 2.41 );
setEffScaleKey( spep_6 -4 + 54, ctdogon, 2.44, 2.44 );
setEffScaleKey( spep_6 -4 + 56, ctdogon, 2.47, 2.47 );

setEffRotateKey( spep_6 -4 + 38, ctdogon, -27 );
setEffRotateKey( spep_6 -4 + 56, ctdogon, -27 );

setEffAlphaKey( spep_6 -4 + 38, ctdogon, 255 );
setEffAlphaKey( spep_6 -4 + 48, ctdogon, 255 );
setEffAlphaKey( spep_6 -4 + 50, ctdogon, 191 );
setEffAlphaKey( spep_6 -4 + 52, ctdogon, 128 );
setEffAlphaKey( spep_6 -4 + 54, ctdogon, 64 );
setEffAlphaKey( spep_6 -4 + 56, ctdogon, 0 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 96, 1, 0 );

changeAnime( spep_6+ 0, 1, 106 );

setMoveKey( spep_6 + 0, 1, -19.1, 265 , 0 );
--setMoveKey( spep_6-3 + 2, 1, -19.8, 277.8 , 0 );
setMoveKey( spep_6-3 + 4, 1, -12.6, 284 , 0 );
setMoveKey( spep_6-3 + 6, 1, -5, 291.3 , 0 );
setMoveKey( spep_6-3 + 8, 1, -7.4, 297.9 , 0 );
setMoveKey( spep_6-3 + 10, 1, -2.6, 301.6 , 0 );
setMoveKey( spep_6-3 + 12, 1, -3.6, 300.8 , 0 );
setMoveKey( spep_6-3 + 14, 1, 2.5, 291.9 , 0 );
setMoveKey( spep_6-3 + 16, 1, 25.8, 274 , 0 );
setMoveKey( spep_6-3 + 18, 1, 52.8, 252.8 , 0 );
setMoveKey( spep_6-3 + 20, 1, 71, 226.9 , 0 );
setMoveKey( spep_6-3 + 22, 1, 84.1, 206.3 , 0 );
setMoveKey( spep_6-3 + 24, 1, 95.6, 208.2 , 0 );
setMoveKey( spep_6-3 + 26, 1, 93.1, 188.9 , 0 );
setMoveKey( spep_6-3 + 28, 1, 90.6, 169.6 , 0 );
setMoveKey( spep_6-3 + 30, 1, 90.9, 160.2 , 0 );
setMoveKey( spep_6-3 + 32, 1, 91.2, 150.7 , 0 );
setMoveKey( spep_6-3 + 34, 1, 90.9, 130.2 , 0 );
setMoveKey( spep_6-3 + 36, 1, 88.5, 133.2 , 0 );
setMoveKey( spep_6-3 + 38, 1, 92.9, 129.8 , 0 );
setMoveKey( spep_6-3 + 39, 1, 92.9, 129.8 , 0 );
setMoveKey( spep_6-3 + 40, 1, 336.4, 377.2 , 0 );
setMoveKey( spep_6-3 + 41, 1, 336.4, 377.2 , 0 );
setMoveKey( spep_6-3 + 42, 1, 92.1, 125 , 0 );
setMoveKey( spep_6-3 + 43, 1, 92.1, 125 , 0 );
setMoveKey( spep_6-3 + 44, 1, 312.7, 178.9 , 0 );
setMoveKey( spep_6-3 + 45, 1, 312.7, 178.9 , 0 );
setMoveKey( spep_6-3 + 46, 1, 90, 127.9 , 0 );
setMoveKey( spep_6-3 + 47, 1, 90, 127.9 , 0 );
setMoveKey( spep_6-3 + 48, 1, 152.7, 170.5 , 0 );
setMoveKey( spep_6-3 + 49, 1, 152.7, 170.5 , 0 );
setMoveKey( spep_6-3 + 50, 1, 211, 202.9 , 0 );
setMoveKey( spep_6-3 + 51, 1, 211, 202.9 , 0 );
setMoveKey( spep_6-3 + 52, 1, 150.8, 159.7 , 0 );
setMoveKey( spep_6-3 + 53, 1, 150.8, 159.7 , 0 );
setMoveKey( spep_6-3 + 54, 1, 90, 127.9 , 0 );
setMoveKey( spep_6-3 + 55, 1, 90, 127.9 , 0 );
setMoveKey( spep_6-3 + 56, 1, 130.8, 141.2 , 0 );
setMoveKey( spep_6-3 + 57, 1, 130.8, 141.2 , 0 );
setMoveKey( spep_6-3 + 58, 1, 184.1, 147.5 , 0 );
setMoveKey( spep_6-3 + 59, 1, 184.1, 147.5 , 0 );
setMoveKey( spep_6-3 + 60, 1, 140.5, 134 , 0 );
setMoveKey( spep_6-3 + 61, 1, 140.5, 134 , 0 );
setMoveKey( spep_6-3 + 62, 1, 92.1, 125 , 0 );
setMoveKey( spep_6-3 + 64, 1, 117.2, 138.7 , 0 );
setMoveKey( spep_6-3 + 66, 1, 151.3, 159 , 0 );
setMoveKey( spep_6-3 + 68, 1, 124.2, 148.1 , 0 );
setMoveKey( spep_6-3 + 70, 1, 92.5, 127.4 , 0 );
setMoveKey( spep_6-3 + 72, 1, 104.4, 125.7 , 0 );
setMoveKey( spep_6-3 + 74, 1, 115.6, 134.3 , 0 );
setMoveKey( spep_6-3 + 76, 1, 101.3, 136.4 , 0 );
setMoveKey( spep_6-3 + 78, 1, 97.4, 126.6 , 0 );
setMoveKey( spep_6-3 + 80, 1, 124.7, 133.5 , 0 );
setMoveKey( spep_6-3 + 82, 1, 151, 140.9 , 0 );
setMoveKey( spep_6-3 + 84, 1, 197.1, 151.5 , 0 );
setMoveKey( spep_6-3 + 86, 1, 281.2, 183.9 , 0 );
setMoveKey( spep_6-3 + 88, 1, 363.9, 216.1 , 0 );
setMoveKey( spep_6-3 + 90, 1, 460.8, 255.5 , 0 );
setMoveKey( spep_6-3 + 92, 1, 558.7, 295.9 , 0 );
setMoveKey( spep_6-3 + 94, 1, 646.8, 321.3 , 0 );
setMoveKey( spep_6 + 96, 1, 747.3, 351.4 , 0 );

setScaleKey( spep_6 + 0, 1, 2, 2 );
--setScaleKey( spep_6-3 + 20, 1, 2, 2 );
setScaleKey( spep_6-3 + 22, 1, 1.99, 1.99 );
setScaleKey( spep_6-3 + 38, 1, 1.99, 1.99 );
setScaleKey( spep_6-3 + 40, 1, 2.79, 2.79 );
setScaleKey( spep_6-3 + 42, 1, 1.99, 1.99 );
setScaleKey( spep_6-3 + 44, 1, 2.59, 2.59 );
setScaleKey( spep_6-3 + 46, 1, 1.99, 1.99 );
setScaleKey( spep_6-3 + 48, 1, 2.19, 2.19 );
setScaleKey( spep_6-3 + 50, 1, 2.39, 2.39 );
setScaleKey( spep_6-3 + 52, 1, 2.19, 2.19 );
setScaleKey( spep_6-3 + 54, 1, 1.99, 1.99 );
setScaleKey( spep_6-3 + 56, 1, 2.15, 2.15 );
setScaleKey( spep_6-3 + 58, 1, 2.29, 2.29 );
setScaleKey( spep_6-3 + 60, 1, 2.15, 2.15 );
setScaleKey( spep_6-3 + 62, 1, 1.99, 1.99 );
setScaleKey( spep_6-3 + 64, 1, 2.09, 2.09 );
setScaleKey( spep_6-3 + 66, 1, 2.19, 2.19 );
setScaleKey( spep_6-3 + 68, 1, 2.09, 2.09 );
setScaleKey( spep_6-3 + 70, 1, 1.99, 1.99 );
setScaleKey( spep_6-3 + 76, 1, 1.99, 1.99 );
setScaleKey( spep_6-3 + 78, 1, 2, 2 );
setScaleKey( spep_6-3 + 80, 1, 2.17, 2.17 );
setScaleKey( spep_6-3 + 82, 1, 2.33, 2.33 );
setScaleKey( spep_6-3 + 84, 1, 2.5, 2.5 );
setScaleKey( spep_6-3 + 86, 1, 2.75, 2.75 );
setScaleKey( spep_6-3 + 88, 1, 3, 3 );
setScaleKey( spep_6-3 + 90, 1, 3.25, 3.25 );
setScaleKey( spep_6-3 + 92, 1, 3.49, 3.49 );
setScaleKey( spep_6-3 + 94, 1, 3.74, 3.74 );
setScaleKey( spep_6 + 96, 1, 3.99, 3.99 );

setRotateKey( spep_6 + 0, 1, -180 );
--setRotateKey( spep_6-3 + 2, 1, -186 );
setRotateKey( spep_6-3 + 4, 1, -192 );
setRotateKey( spep_6-3 + 6, 1, -198 );
setRotateKey( spep_6-3 + 8, 1, -204 );
setRotateKey( spep_6-3 + 10, 1, -210 );
setRotateKey( spep_6-3 + 12, 1, -211.2 );
setRotateKey( spep_6-3 + 14, 1, -214.6 );
setRotateKey( spep_6-3 + 16, 1, -220 );
setRotateKey( spep_6-3 + 18, 1, -226.7 );
setRotateKey( spep_6-3 + 20, 1, -233.3 );
setRotateKey( spep_6-3 + 22, 1, -238.1 );
setRotateKey( spep_6-3 + 24, 1, -240 );
setRotateKey( spep_6-3 + 34, 1, -240 );
setRotateKey( spep_6-3 + 36, 1, -260 );
setRotateKey( spep_6-3 + 78, 1, -260 );
setRotateKey( spep_6-3 + 80, 1, -256.7 );
setRotateKey( spep_6-3 + 82, 1, -253.5 );
setRotateKey( spep_6-3 + 84, 1, -250.2 );
setRotateKey( spep_6-3 + 86, 1, -250.2 );
setRotateKey( spep_6-3 + 88, 1, -250.1 );
setRotateKey( spep_6-3 + 92, 1, -250.1 );
setRotateKey( spep_6-3 + 94, 1, -250 );
setRotateKey( spep_6 + 96, 1, -250 );



--集中線
shuchusen8 = entryEffectLife( spep_6  + 34,  906, 40, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_6  + 34, shuchusen8, 0, 0 , 0 );
setEffMoveKey( spep_6  + 74, shuchusen8, 0, 0 , 0 );

setEffScaleKey( spep_6  + 34, shuchusen8, 1.1, 1.1 );
setEffScaleKey( spep_6  + 74, shuchusen8, 1.1, 1.1 );

setEffRotateKey( spep_6  + 34, shuchusen8, 180 );
setEffRotateKey( spep_6  + 74, shuchusen8, 180 );

setEffAlphaKey( spep_6  + 34, shuchusen8, 255 );
setEffAlphaKey( spep_6  + 74, shuchusen8, 255 )

--SE
playSe( spep_6, SE_04); --移動
playSe( spep_6+34, 1011); --けり

--黒背景
entryFadeBg(spep_6, 0,98, 0, 0, 0, 0, 169);  -- 黒　背

--白フェード
entryFade( spep_6 +30 , 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_6 +90 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
--次の準備
spep_7=spep_6+98;

------------------------------------------------------
-- ガッ
------------------------------------------------------


--***敵の動き***--
setDisp( spep_7 + 0, 1, 1 );
changeAnime( spep_7 + 0, 1, 107 );

setMoveKey( spep_7 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_7 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_7 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_7 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_7 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_7 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_7 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_7 + 120, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_7 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_7 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_7 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_7 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_7 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_7 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_7 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_7 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_7 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_7 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_7 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_7 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_7 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_7 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_7 + 120, 1, 1.6, 1.6 );

setRotateKey( spep_7 + 0, 1, 0 );
setRotateKey( spep_7 + 2, 1, 105 );
setRotateKey( spep_7 + 4, 1, 240 );
setRotateKey( spep_7 + 6, 1, 405 );
setRotateKey( spep_7 + 8, 1, 600 );
setRotateKey( spep_7 + 10, 1, 825 );
setRotateKey( spep_7 + 12, 1, 1080 );
setRotateKey( spep_7 + 120, 1, 1080 );

--爆発エフェクト
entryEffect( spep_7, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_7, SE_10);

setDamage( spep_7 +16, 1, 0);  -- ダメージ振動等
setShake(spep_7+8,6,15);
setShake(spep_7+14,15,10);

--書き文字--
ctGa = entryEffectLife( spep_7 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_7 + 14, ctGa, 30, 10);

setEffMoveKey( spep_7 + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_7 + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_7 + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_7 + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_7 + 30, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_7 + 14, ctGa, 2, 2 );
setEffScaleKey( spep_7+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_7+17, cGa, 2.6, 2.6);
setEffScaleKey( spep_7+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_7+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_7+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_7+112, ctGa, 3.8, 3.8);

setEffRotateKey( spep_7 + 14, ctGa, -40 );
setEffRotateKey( spep_7 + 16, ctGa, -31 );
setEffRotateKey( spep_7 + 18, ctGa, -40 );
setEffRotateKey( spep_7 + 20, ctGa, -31 );
setEffRotateKey( spep_7 + 22, ctGa, -40 );
setEffRotateKey( spep_7 + 24, ctGa, -31);
setEffRotateKey( spep_7 + 26, ctGa, -40 );
setEffRotateKey( spep_7 + 28, ctGa, -31);
setEffRotateKey( spep_7 + 30, ctGa, -40 );

setEffAlphaKey( spep_7 + 14, ctGa, 255 );

--entryFadeBg( spep_7,  0,  120,  0,  21,  36,  51, 200);  -- ネイビー


--集中線（白）
shuchusen = entryEffectLife( spep_7+2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_7+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--ひび割れ
hibi = entryEffect( spep_7+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
playSe(  spep_7+2,  SE_11);  --ひび割れ


-- ダメージ表示
dealDamage(spep_7+16);
entryFade( spep_7+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(spep_7 + 110 -10);
end