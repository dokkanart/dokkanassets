--1011340:超サイヤ人ベジータjr._ビクトリーラッシュ
--sp_effect_b1_00065

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
SP_01=  152953  ;-- 待機
SP_02=  152954  ;-- 気為め
SP_03=  152955  ;-- 一撃目：登場からキック
SP_04=  152956  ;-- 二撃目：両手殴り
SP_05=  152957  ;-- 二撃目：両手殴りエフェクト
SP_06=  152958  ;-- 三撃目：キック→技溜め
SP_07=  152960  ;-- 技発射

--敵
SP_01x= 152953  ;-- 待機  
SP_02x= 152954  ;-- 気為め 
SP_03x= 152955  ;-- 一撃目：登場からキック 
SP_04x= 152956  ;-- 二撃目：両手殴り    
SP_05x= 152957  ;-- 二撃目：両手殴りエフェクト   
SP_06x= 152959  ;-- 三撃目：キック→技溜め (敵)
SP_07x= 152981  ;-- 技発射 (敵)

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
shuchusen1 = entryEffectLife( spep_1 + 0,  906, 74, 0x100, -1, 0, 0, 0 );

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

-- ** 気(前)
ki_f = entryEffectLife( spep_1 + 0, 1502, 72, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 0, ki_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 72, ki_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, ki_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 72, ki_f, 1.0, 1.0 );
setEffAlphaKey( spep_1 + 0, ki_f, 255 );
setEffAlphaKey( spep_1 + 72, ki_f, 255 );
setEffRotateKey( spep_1 + 0, ki_f, 0 );
setEffRotateKey( spep_1 + 72, ki_f, 0 );

-- ** 気(後)
ki_b = entryEffectLife( spep_1 + 0, 1503, 72, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 0, ki_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 72, ki_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, ki_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 72, ki_b, 1.0, 1.0 );
setEffAlphaKey( spep_1 + 0, ki_b, 255 );
setEffAlphaKey( spep_1 + 72, ki_b, 255 );
setEffRotateKey( spep_1 + 0, ki_b, 0 );
setEffRotateKey( spep_1 + 72, ki_b, 0 );

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

--文字エントリー
ctzuzuzun = entryEffectLife( spep_1 -3 + 26,  10013, 36, 0x100, -1, 0, 22, 191.9 );--ズズズンッ

setEffMoveKey( spep_1 -3 + 26, ctzuzuzun, 22, 191.9 , 0 );
setEffMoveKey( spep_1 -3 + 28, ctzuzuzun, 29.8, 246.3 , 0 );
setEffMoveKey( spep_1 -3 + 30, ctzuzuzun, 49.2, 309.6 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctzuzuzun, 46.8, 334 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctzuzuzun, 52.9, 331.8 , 0 );
setEffMoveKey( spep_1 -3 + 36, ctzuzuzun, 39.3, 310.4 , 0 );
setEffMoveKey( spep_1 -3 + 38, ctzuzuzun, 36, 299.9 , 0 );

a=1.5;

setEffScaleKey( spep_1 -3 + 26, ctzuzuzun, 0.38+a, 0.38+a );
setEffScaleKey( spep_1 -3 + 28, ctzuzuzun, 0.62+a, 0.62+a );
setEffScaleKey( spep_1 -3 + 30, ctzuzuzun, 0.85+a, 0.85+a );
setEffScaleKey( spep_1 -3 + 32, ctzuzuzun, 1+a, 1+a );
setEffScaleKey( spep_1 -3 + 38, ctzuzuzun, 1+a, 1+a );

setEffRotateKey( spep_1 -3 + 26, ctzuzuzun, 0 );
setEffRotateKey( spep_1 -3 + 38, ctzuzuzun, 0 );

setEffAlphaKey( spep_1 -3 + 26, ctzuzuzun, 255 );
setEffAlphaKey( spep_1 -3 + 28, ctzuzuzun, 206 );
setEffAlphaKey( spep_1 -3 + 30, ctzuzuzun, 159 );
setEffAlphaKey( spep_1 -3 + 32, ctzuzuzun, 115 );
setEffAlphaKey( spep_1 -3 + 34, ctzuzuzun, 74 );
setEffAlphaKey( spep_1 -3 + 36, ctzuzuzun, 35 );
setEffAlphaKey( spep_1 -3 + 38, ctzuzuzun, 0 );

--SE
playSe( spep_1, 1035); --気ダメ
playSe( spep_1+26, 1036); --気ダメ
playSe( spep_1+46, 1036); --気ダメ
playSe( spep_1+66, 1036); --気ダメ
playSe( spep_1+74, 44); --移動
--黒背景
entryFadeBg(spep_1, 20,82, 0, 0, 0, 0, 160);  -- 黒　背

--白フェード
entryFade( spep_1 +94 , 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+102;


------------------------------------------------------
-- 一撃目：登場からキック
------------------------------------------------------
-- ** エフェクト等 (前)
kick = entryEffectLife( spep_2 + 0, SP_03, 92, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, kick, 0, 0 , 0 );
setEffMoveKey( spep_2 + 92, kick, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kick, 1.0, 1.0 );
setEffScaleKey( spep_2 + 92, kick, 1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, kick, 255 );
setEffAlphaKey( spep_2 + 92, kick, 255 );
setEffRotateKey( spep_2 + 0, kick, 0 );
setEffRotateKey( spep_2 + 92, kick, 0 );

--流線
ryusen2 = entryEffectLife( spep_2  + 2,  914, 29, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_2  + 2, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_2  + 31, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_2  + 2, ryusen2, 3, 1.5 );
setEffScaleKey( spep_2  + 31, ryusen2, 3, 1.5 );

setEffRotateKey( spep_2 + 2, ryusen2, 0 );
setEffRotateKey( spep_2  + 31, ryusen2, 0 );

setEffAlphaKey( spep_2  + 2, ryusen2, 255 );
setEffAlphaKey( spep_2  + 31, ryusen2, 255 );

--敵の動き
setDisp( spep_2  + 0, 1, 1 );

changeAnime( spep_2  + 0, 1, 101 );

setMoveKey( spep_2  + 0, 1, 540.1, 20.5 , 0 );
--setMoveKey( spep_2 -3 + 2, 1, 434.4, 20.5 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 342.3, 20.5 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 261, 20.5 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 189.7, 20.5 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 128.1, 20.5 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 76.7, 20.5 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 36.7, 20.5 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 10, 20.5 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 0, 20.6 , 0 );
setMoveKey( spep_2  + 18, 1, 0, 20.6 , 0 );

setScaleKey( spep_2  + 0, 1, 2, 2 );
--setScaleKey( spep_2 -3 + 2, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 4, 1, 1.82, 1.82 );
setScaleKey( spep_2 -3 + 6, 1, 1.74, 1.74 );
setScaleKey( spep_2 -3 + 8, 1, 1.68, 1.68 );
setScaleKey( spep_2 -3 + 10, 1, 1.62, 1.62 );
setScaleKey( spep_2 -3 + 12, 1, 1.57, 1.57 );
setScaleKey( spep_2 -3 + 14, 1, 1.53, 1.53 );
setScaleKey( spep_2 -3 + 16, 1, 1.51, 1.51 );
setScaleKey( spep_2 -3 + 18, 1, 1.5, 1.5 );
setScaleKey( spep_2  + 18, 1, 1.5, 1.5 );

setRotateKey( spep_2  + 0, 1, 0 );
setRotateKey( spep_2  + 18, 1, 0 );

--黒背景
entryFadeBg(spep_2, 0, 92, 0, 0, 0, 0, 160);  -- 黒　背


--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2+18 ; --エンドフェイズのフレーム数を置き換える
    
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
setDisp( spep_2  + 90, 1, 0 );

changeAnime( spep_2 -3 + 40, 1, 108 );

setMoveKey( spep_2 -3 + 39, 1, 0, 20.6 , 0 );
setMoveKey( spep_2 -3 + 41, 1, 29.9, 59.9 , 0 );
setMoveKey( spep_2 -3 + 43, 1, 171.2, 179.9 , 0 );
setMoveKey( spep_2 -3 + 45, 1, 36.9, 55.2 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 138.1, 85.5 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 77.5, 67.2 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 31.8, 56.6 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 53.8, 75 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 65.1, 84.8 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 45.6, 65.7 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 30.2, 55.7 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 44.1, 67.5 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 60.1, 70.4 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 51.3, 62.8 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 31.1, 54 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 25.3, 52.9 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 29.9, 59.9 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 41.8, 68.2 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 71.1, 98.3 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 108.1, 151 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 160.5, 222.8 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 235.3, 312.6 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 313.9, 407.6 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 379.9, 491.1 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 435.2, 561.1 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 477.2, 617.8 , 0 );
setMoveKey( spep_2  + 90, 1, 500.5, 643.3 , 0 );

setScaleKey( spep_2 -3 + 40, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 42, 1, 1.8, 1.8 );
setScaleKey( spep_2 -3 + 44, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 46, 1, 1.72, 1.72 );
setScaleKey( spep_2 -3 + 48, 1, 1.62, 1.62 );
setScaleKey( spep_2 -3 + 50, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 52, 1, 1.57, 1.57 );
setScaleKey( spep_2 -3 + 54, 1, 1.65, 1.65 );
setScaleKey( spep_2 -3 + 56, 1, 1.57, 1.57 );
setScaleKey( spep_2 -3 + 58, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 60, 1, 1.53, 1.53 );
setScaleKey( spep_2 -3 + 62, 1, 1.57, 1.57 );
setScaleKey( spep_2 -3 + 64, 1, 1.53, 1.53 );
setScaleKey( spep_2 -3 + 66, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 70, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 72, 1, 1.49, 1.49 );
setScaleKey( spep_2 -3 + 74, 1, 1.48, 1.48 );
setScaleKey( spep_2 -3 + 76, 1, 1.45, 1.45 );
setScaleKey( spep_2 -3 + 78, 1, 1.41, 1.41 );
setScaleKey( spep_2 -3 + 80, 1, 1.37, 1.37 );
setScaleKey( spep_2 -3 + 82, 1, 1.32, 1.32 );
setScaleKey( spep_2 -3 + 84, 1, 1.28, 1.28 );
setScaleKey( spep_2 -3 + 86, 1, 1.24, 1.24 );
setScaleKey( spep_2 -3 + 88, 1, 1.21, 1.21 );
setScaleKey( spep_2  + 90, 1, 1.2, 1.2 );

setRotateKey( spep_2 -3 + 39, 1, 0 );
setRotateKey( spep_2 -3 + 40, 1, -30 );
setRotateKey( spep_2 -3 + 78, 1, -30 );
setRotateKey( spep_2 -3 + 80, 1, -29.9 );
setRotateKey( spep_2  + 90, 1, -29.9 );


--文字エントリー
ctbaki = entryEffectLife( spep_2 -3 + 42,  10020, 20, 0x100, -1, 0, 75, 46.9 );--バキッ

setEffMoveKey( spep_2 -3 + 42, ctbaki, 75, 46.9 , 0 );
setEffMoveKey( spep_2 -3 + 44, ctbaki, 108.7, 18.1 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctbaki, 154.6, -12.7 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctbaki, 157.6, -10.7 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctbaki, 177.5, -21.1 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctbaki, 177.6, -26 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctbaki, 186.9, -21.7 , 0 );
setEffMoveKey( spep_2 -3 + 56, ctbaki, 191.1, -34.5 , 0 );
setEffMoveKey( spep_2 -3 + 58, ctbaki, 191.6, -25.2 , 0 );
setEffMoveKey( spep_2 -3 + 60, ctbaki, 200.1, -35.4 , 0 );
setEffMoveKey( spep_2 -3 + 62, ctbaki, 204.2, -37.6 , 0 );

setEffScaleKey( spep_2 -3 + 42, ctbaki, 0.25, 0.25 );
setEffScaleKey( spep_2 -3 + 44, ctbaki, 0.88, 0.88 );
setEffScaleKey( spep_2 -3 + 46, ctbaki, 1.5, 1.5 );
setEffScaleKey( spep_2 -3 + 48, ctbaki, 1.57, 1.57 );
setEffScaleKey( spep_2 -3 + 50, ctbaki, 1.63, 1.63 );
setEffScaleKey( spep_2 -3 + 52, ctbaki, 1.7, 1.7 );
setEffScaleKey( spep_2 -3 + 54, ctbaki, 1.72, 1.72 );
setEffScaleKey( spep_2 -3 + 56, ctbaki, 1.74, 1.74 );
setEffScaleKey( spep_2 -3 + 58, ctbaki, 1.76, 1.76 );
setEffScaleKey( spep_2 -3 + 60, ctbaki, 1.78, 1.78 );
setEffScaleKey( spep_2 -3 + 62, ctbaki, 1.8, 1.8 );

setEffRotateKey( spep_2 -3 + 42, ctbaki, 0 );
setEffRotateKey( spep_2 -3 + 62, ctbaki, 0 );

setEffAlphaKey( spep_2 -3 + 42, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 52, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 54, ctbaki, 204 );
setEffAlphaKey( spep_2 -3 + 56, ctbaki, 153 );
setEffAlphaKey( spep_2 -3 + 58, ctbaki, 102 );
setEffAlphaKey( spep_2 -3 + 60, ctbaki, 51 );
setEffAlphaKey( spep_2 -3 + 62, ctbaki, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_2  + 37,  906, 34, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2  + 37, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2  + 71, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 37, shuchusen2, 1.1, 1.1 );
setEffScaleKey( spep_2 + 71, shuchusen2, 1.1, 1.1 );

setEffRotateKey( spep_2  + 37, shuchusen2, 180 );
setEffRotateKey( spep_2  + 71, shuchusen2, 180 );

setEffAlphaKey( spep_2  + 37, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 70, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 71, shuchusen2, 0 );

--流線
ryusen3 = entryEffectLife( spep_2  + 71,  914,21, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_2  + 71, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 92, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_2  + 71, ryusen3, 3.6, 1.8 );
setEffScaleKey( spep_2  + 92, ryusen3, 3.6, 1.8 );

setEffRotateKey( spep_2 + 71, ryusen3, 130.1 );
setEffRotateKey( spep_2  + 92, ryusen3, 130.1 );

setEffAlphaKey( spep_2 + 71, ryusen3, 154 );
setEffAlphaKey( spep_2  + 91, ryusen3, 154 );
setEffAlphaKey( spep_2  + 92, ryusen3, 0 );

--SE
playSe( spep_2, 44); --移動
playSe( spep_2+38, 1009); --キック
playSe( spep_2+78, 43); --瞬間移動

--白フェード
entryFade( spep_2 +32 , 0, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3=spep_2+92;

------------------------------------------------------
-- 二撃目：両手殴り
------------------------------------------------------
--流線
ryusen4 = entryEffectLife( spep_3 + 0,  914, 25, 0x80, -1, 00,0 , 0 );

setEffMoveKey( spep_3 + 0, ryusen4, 0,0 , 0 );
setEffMoveKey( spep_3 + 25, ryusen4, 0,0 , 0 );

setEffScaleKey( spep_3 + 0, ryusen4, 3.59, 1.8 );
--setEffScaleKey( spep_3 + 2, ryusen4, 3.48, 1.74 );
setEffScaleKey( spep_3 + 1, ryusen4, 3.36, 1.68 );
setEffScaleKey( spep_3 + 3, ryusen4, 3.24, 1.62 );
setEffScaleKey( spep_3 + 5, ryusen4, 3.12, 1.56 );
setEffScaleKey( spep_3 + 7, ryusen4, 3, 1.5 );
setEffScaleKey( spep_3 + 25, ryusen4, 3, 1.5 );

setEffRotateKey( spep_3 + 0, ryusen4, 130.1 );
--setEffRotateKey( spep_3 + 2, ryusen4, 140.1 );
setEffRotateKey( spep_3 + 1, ryusen4, 150.1 );
setEffRotateKey( spep_3 + 3, ryusen4, 160 );
setEffRotateKey( spep_3 + 5, ryusen4, 170 );
setEffRotateKey( spep_3 + 7, ryusen4, 180 );
setEffRotateKey( spep_3 + 25, ryusen4, 180 );

setEffAlphaKey( spep_3 + 0, ryusen4, 154 );
setEffAlphaKey( spep_3 + 25, ryusen4, 154 );

--流線
ryusen5 = entryEffectLife( spep_3 ,  914, 86, 0x80, -1, 0, 0, 0);

setEffMoveKey( spep_3 , ryusen5, 0, 0 , 0 );
setEffMoveKey( spep_3 + 86, ryusen5, 0, 0 , 0 );

setEffScaleKey( spep_3 , ryusen5, 2.7, 1.35 );
setEffScaleKey( spep_3 + 86, ryusen5, 2.7, 1.35 );

setEffRotateKey( spep_3 , ryusen5, 90 );
setEffRotateKey( spep_3 + 8868, ryusen5, 90 );

setEffAlphaKey( spep_3 , ryusen5, 0 );
setEffAlphaKey( spep_3 + 70, ryusen5, 0 );
setEffAlphaKey( spep_3 + 71, ryusen5, 154 );
setEffAlphaKey( spep_3 + 84, ryusen5, 154 );
setEffAlphaKey( spep_3 + 85, ryusen5, 154 );
setEffAlphaKey( spep_3 + 86, ryusen5, 0 );

-- ** エフェクト等 (前)
punch_f = entryEffectLife( spep_3 + 0, SP_04, 84, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 84, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 84, punch_f, 1.0, 1.0 );
setEffAlphaKey( spep_3 + 0, punch_f, 255 );
setEffAlphaKey( spep_3 + 81, punch_f, 255 );
setEffAlphaKey( spep_3 + 82, punch_f, 255 );
setEffAlphaKey( spep_3 + 83, punch_f, 0 );
setEffAlphaKey( spep_3 + 84, punch_f, 0 );
setEffRotateKey( spep_3 + 0, punch_f, 0 );
setEffRotateKey( spep_3 + 84, punch_f, 0 );

-- ** エフェクト等 (後)
punch_b = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 84, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 84, punch_b, 1.0, 1.0 );
setEffAlphaKey( spep_3 + 0, punch_b, 255 );
setEffAlphaKey( spep_3 + 81, punch_b, 255 );
setEffAlphaKey( spep_3 + 82, punch_b, 255 );
setEffAlphaKey( spep_3 + 83, punch_b, 0 );
setEffAlphaKey( spep_3 + 84, punch_b, 0 );
setEffRotateKey( spep_3 + 0, punch_b, 0 );
setEffRotateKey( spep_3 + 84, punch_b, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_3  + 30,  906, 40, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3  + 30, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3  + 70, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 30, shuchusen3, 1.1, 1.1 );
setEffScaleKey( spep_3 + 70, shuchusen3, 1.1, 1.1 );

setEffRotateKey( spep_3 + 30, shuchusen3, 180 );
setEffRotateKey( spep_3 + 70, shuchusen3, 180 );

setEffAlphaKey( spep_3 + 30, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 70, shuchusen3, 255 );

--文字エントリー
ctdon = entryEffectLife( spep_3-3 + 34,  10019, 20, 0x100, -1, 0, 0, -0.1 );--ドンッ

setEffMoveKey( spep_3-3 + 34, ctdon, 0, -0.1 , 0 );
setEffMoveKey( spep_3-3 + 36, ctdon, -53.8, 18.1 , 0 );
setEffMoveKey( spep_3-3 + 38, ctdon, -95.4, 34.3 , 0 );
setEffMoveKey( spep_3-3 + 40, ctdon, -109, 43.7 , 0 );
setEffMoveKey( spep_3-3 + 42, ctdon, -105.7, 40.7 , 0 );
setEffMoveKey( spep_3-3 + 44, ctdon, -122.2, 43.2 , 0 );
setEffMoveKey( spep_3-3 + 46, ctdon, -118.9, 50.7 , 0 );
setEffMoveKey( spep_3-3 + 48, ctdon, -120.7, 41.2 , 0 );
setEffMoveKey( spep_3-3 + 50, ctdon, -126.2, 53.7 , 0 );
setEffMoveKey( spep_3-3 + 52, ctdon, -123.8, 46.8 , 0 );
setEffMoveKey( spep_3-3 + 54, ctdon, -125.8, 47.8 , 0 );

setEffScaleKey( spep_3-3 + 34, ctdon, 0.25, 0.25 );
setEffScaleKey( spep_3-3 + 36, ctdon, 0.88, 0.88 );
setEffScaleKey( spep_3-3 + 38, ctdon, 1.5, 1.5 );
setEffScaleKey( spep_3-3 + 40, ctdon, 1.57, 1.57 );
setEffScaleKey( spep_3-3 + 42, ctdon, 1.63, 1.63 );
setEffScaleKey( spep_3-3 + 44, ctdon, 1.7, 1.7 );
setEffScaleKey( spep_3-3 + 46, ctdon, 1.72, 1.72 );
setEffScaleKey( spep_3-3 + 48, ctdon, 1.74, 1.74 );
setEffScaleKey( spep_3-3 + 50, ctdon, 1.76, 1.76 );
setEffScaleKey( spep_3-3 + 52, ctdon, 1.78, 1.78 );
setEffScaleKey( spep_3-3 + 54, ctdon, 1.8, 1.8 );

setEffRotateKey( spep_3-3 + 34, ctdon, 0 );
setEffRotateKey( spep_3-3 + 54, ctdon, 0 );

setEffAlphaKey( spep_3-3 + 34, ctdon, 255 );
setEffAlphaKey( spep_3-3 + 44, ctdon, 255 );
setEffAlphaKey( spep_3-3 + 46, ctdon, 204 );
setEffAlphaKey( spep_3-3 + 48, ctdon, 153 );
setEffAlphaKey( spep_3-3 + 50, ctdon, 102 );
setEffAlphaKey( spep_3-3 + 52, ctdon, 51 );
setEffAlphaKey( spep_3-3 + 54, ctdon, 0 );

--敵の動き
setDisp( spep_3  + 0, 1, 1 );
setDisp( spep_3  + 84, 1, 0 );

changeAnime( spep_3 + 0, 1, 106 );

setMoveKey( spep_3  + 0, 1, -443.5, -302.3 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, -357.6, -222.5 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -289.4, -166.4 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -235.4, -122.5 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -197.7, -93.8 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -166.6, -70.3 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -138.7, -42.1 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -115.7, -18.3 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -95, -7 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -79.1, 0.6 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -74.3, 10.3 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -75, 14.9 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -68.2, 19.7 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -61.4, 24.5 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -60.6, 23.2 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -59.8, 22 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -57.1, 28.8 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -24.3, -115.5 , 0 );
setMoveKey( spep_3 -3 + 37, 1, -159.3, -158.9 , 0 );
setMoveKey( spep_3 -3 + 38, 1, -44.7, 33.1 , 0 );
setMoveKey( spep_3 -3 + 40, 1, -5, -55.8 , 0 );
setMoveKey( spep_3 -3 + 41, 1, -5, -55.8 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 26.8, -118 , 0 );
setMoveKey( spep_3 -3 + 44, 1, -1.2, -60.6 , 0 );
setMoveKey( spep_3 -3 + 46, 1, -16.4, -85 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -26.5, -116.6 , 0 );
setMoveKey( spep_3 -3 + 51, 1, -8.9, -90.6 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 0.7, -61 , 0 );
setMoveKey( spep_3 -3 + 54, 1, -1.4, -77.1 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 6.1, -87 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 7.4, -74.5 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 2.6, -61.4 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 0, -65 , 0 );
setMoveKey( spep_3 -3 + 64, 1, -1.3, -60.7 , 0 );
setMoveKey( spep_3 -3 + 66, 1, -2.5, -56.4 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 1.1, -59.1 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 4.6, -61.7 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 0.7, -61 , 0 );
setMoveKey( spep_3 -3 + 74, 1, -3.2, -60.4 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 1, -59.1 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 0, -65 , 0 );
setMoveKey( spep_3 -3 + 80, 1, -1.3, -83.4 , 0 );
setMoveKey( spep_3 -3 + 82, 1, -2.8, -147.4 , 0 );
setMoveKey( spep_3  + 84, 1, 1.3, -1068.4 , 0 );

setScaleKey( spep_3  + 0, 1, 2.5, 2.5 );
--setScaleKey( spep_3 -3 + 2, 1, 2.28, 2.28 );
setScaleKey( spep_3 -3 + 4, 1, 2.13, 2.13 );
setScaleKey( spep_3 -3 + 6, 1, 2.01, 2.01 );
setScaleKey( spep_3 -3 + 8, 1, 1.91, 1.91 );
setScaleKey( spep_3 -3 + 10, 1, 1.83, 1.83 );
setScaleKey( spep_3 -3 + 12, 1, 1.76, 1.76 );
setScaleKey( spep_3 -3 + 14, 1, 1.71, 1.71 );
setScaleKey( spep_3 -3 + 16, 1, 1.66, 1.66 );
setScaleKey( spep_3 -3 + 18, 1, 1.63, 1.63 );
setScaleKey( spep_3 -3 + 20, 1, 1.61, 1.61 );
setScaleKey( spep_3 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 34, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 36, 1, 1.92, 1.92 );
setScaleKey( spep_3 -3 + 38, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 40, 1, 1.84, 1.84 );
setScaleKey( spep_3 -3 + 42, 1, 1.73, 1.73 );
setScaleKey( spep_3 -3 + 44, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 46, 1, 1.68, 1.68 );
setScaleKey( spep_3 -3 + 48, 1, 1.76, 1.76 );
setScaleKey( spep_3 -3 + 50, 1, 1.68, 1.68 );
setScaleKey( spep_3 -3 + 52, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 54, 1, 1.63, 1.63 );
setScaleKey( spep_3 -3 + 56, 1, 1.68, 1.68 );
setScaleKey( spep_3 -3 + 58, 1, 1.63, 1.63 );
setScaleKey( spep_3 -3 + 60, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 78, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 80, 1, 1.65, 1.65 );
setScaleKey( spep_3 -3 + 82, 1, 1.79, 1.79 );
setScaleKey( spep_3  + 84, 1, 2.03, 2.03 );

setRotateKey( spep_3  + 0, 1, -96.5 );
--setRotateKey( spep_3 -3 + 2, 1, -94.9 );
setRotateKey( spep_3 -3 + 4, 1, -93.8 );
setRotateKey( spep_3 -3 + 6, 1, -93 );
setRotateKey( spep_3 -3 + 8, 1, -92.2 );
setRotateKey( spep_3 -3 + 10, 1, -91.7 );
setRotateKey( spep_3 -3 + 12, 1, -91.2 );
setRotateKey( spep_3 -3 + 14, 1, -90.8 );
setRotateKey( spep_3 -3 + 16, 1, -90.5 );
setRotateKey( spep_3 -3 + 18, 1, -90.2 );
setRotateKey( spep_3 -3 + 20, 1, -90.1 );
setRotateKey( spep_3 -3 + 22, 1, -90 );
setRotateKey( spep_3 -3 + 30, 1, -90 );
setRotateKey( spep_3 -3 + 31, 1, -90 );
setRotateKey( spep_3 -3 + 32, 1, -170 );
setRotateKey( spep_3  + 84, 1, -170 );

--白フェード
entryFade( spep_3 +24 , 0, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--SE
playSe( spep_3, 43); --瞬間移動
playSe( spep_3+32, 1011); --キック
playSe( spep_3+72, 43); --瞬間移動

--黒背景
entryFadeBg(spep_3, 0, 86, 0, 0, 0, 0, 160);  -- 黒　背

--次の準備
spep_4=spep_3+86;
------------------------------------------------------
-- 三撃目：キック→技溜め
------------------------------------------------------
--集中線
shuchusen5 = entryEffectLife( spep_4 ,  906, 158, 0x100, -1, 0, 196.9, -135.1 );

setEffMoveKey( spep_4 , shuchusen5, -126.9, -135.1 , 0 );
setEffMoveKey( spep_4 + 158, shuchusen5, -126.9, -135.1 , 0 );

setEffScaleKey( spep_4 , shuchusen5, 1.5, 1.5 );
setEffScaleKey( spep_4 + 158, shuchusen5, 1.5, 1.5 );

setEffRotateKey( spep_4 , shuchusen5, 180 );
setEffRotateKey( spep_4 + 158, shuchusen5, 180 );

setEffAlphaKey( spep_4 , shuchusen5, 0 );
setEffAlphaKey( spep_4 + 74, shuchusen5, 0 );
setEffAlphaKey( spep_4 + 75, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 186, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 187, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 158, shuchusen5, 0 );

-- ** エフェクト等 (前)
kick2 = entryEffectLife( spep_4 + 0, SP_06, 158, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, kick2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 158, kick2, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kick2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 158, kick2, 1.0, 1.0 );
setEffAlphaKey( spep_4 + 0, kick2, 255 );
setEffAlphaKey( spep_4 + 158, kick2, 255 );
setEffRotateKey( spep_4 + 0, kick2, 0 );
setEffRotateKey( spep_4 + 158, kick2, 0 );

--流線
ryusen6 = entryEffectLife( spep_4 + 0,  914, 14, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, ryusen6, 0, 0 , 0 );
setEffMoveKey( spep_4 + 14, ryusen6, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, ryusen6, 2.7, 1.35 );
setEffScaleKey( spep_4 + 14, ryusen6, 2.7, 1.35 );

setEffRotateKey( spep_4 + 0, ryusen6, 90 );
setEffRotateKey( spep_4 + 14, ryusen6, 90 );

setEffAlphaKey( spep_4 + 0, ryusen6, 154 );
setEffAlphaKey( spep_4 + 14, ryusen6, 154 );

--流線
ryusen7 = entryEffectLife( spep_4 ,  921, 76, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 , ryusen7, 0, 0 , 0 );
setEffMoveKey( spep_4 + 76, ryusen7, 0, 0 , 0 );

setEffScaleKey( spep_4 , ryusen7, 1.4, 1.23 );
setEffScaleKey( spep_4 + 76, ryusen7, 1.4, 1.23 );

setEffRotateKey( spep_4 , ryusen7, 90 );
setEffRotateKey( spep_4 + 76, ryusen7, 90 );

setEffAlphaKey( spep_4 , ryusen7, 0 );
setEffAlphaKey( spep_4 + 48, ryusen7, 0 );
setEffAlphaKey( spep_4 + 49, ryusen7, 255 );
setEffAlphaKey( spep_4 + 50, ryusen7, 255 );
setEffAlphaKey( spep_4 + 74, ryusen7, 255 );
setEffAlphaKey( spep_4 + 75, ryusen7, 0 );
setEffAlphaKey( spep_4 + 76, ryusen7, 0 );

--集中線
shuchusen4 = entryEffectLife( spep_4 + 17,  906, 33, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 17, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 50, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 17, shuchusen4, 1.1, 1.1 );
setEffScaleKey( spep_4 + 50, shuchusen4, 1.1, 1.1 );

setEffRotateKey( spep_4 + 17, shuchusen4, 180 );
setEffRotateKey( spep_4 + 50, shuchusen4, 180 );

setEffAlphaKey( spep_4 + 17, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 48, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 49, shuchusen4, 0 );
setEffAlphaKey( spep_4 + 50, shuchusen4, 0 );


--文字エントリー
ctbaki2 = entryEffectLife( spep_4 -3 + 20,  10020, 20, 0x100, -1, 0, 20, -28.1 );--バキッ

setEffMoveKey( spep_4 -3 + 20, ctbaki2, 20, -28.1 , 0 );
setEffMoveKey( spep_4 -3 + 22, ctbaki2, 81.2, 5.6 , 0 );
setEffMoveKey( spep_4 -3 + 24, ctbaki2, 154.6, 37.3 , 0 );
setEffMoveKey( spep_4 -3 + 26, ctbaki2, 157.6, 45.9 , 0 );
setEffMoveKey( spep_4 -3 + 28, ctbaki2, 177.5, 42.1 , 0 );
setEffMoveKey( spep_4 -3 + 30, ctbaki2, 177.6, 43.9 , 0 );
setEffMoveKey( spep_4 -3 + 32, ctbaki2, 186.9, 52.2 , 0 );
setEffMoveKey( spep_4 -3 + 34, ctbaki2, 191.1, 43.4 , 0 );
setEffMoveKey( spep_4 -3 + 36, ctbaki2, 191.6, 56.7 , 0 );
setEffMoveKey( spep_4 -3 + 38, ctbaki2, 200.1, 50.5 , 0 );
setEffMoveKey( spep_4 -3 + 40, ctbaki2, 204.2, 52.3 , 0 );

setEffScaleKey( spep_4 -3 + 20, ctbaki2, 0.25, 0.25 );
setEffScaleKey( spep_4 -3 + 22, ctbaki2, 0.88, 0.88 );
setEffScaleKey( spep_4 -3 + 24, ctbaki2, 1.5, 1.5 );
setEffScaleKey( spep_4 -3 + 26, ctbaki2, 1.57, 1.57 );
setEffScaleKey( spep_4 -3 + 28, ctbaki2, 1.63, 1.63 );
setEffScaleKey( spep_4 -3 + 30, ctbaki2, 1.7, 1.7 );
setEffScaleKey( spep_4 -3 + 32, ctbaki2, 1.72, 1.72 );
setEffScaleKey( spep_4 -3 + 34, ctbaki2, 1.74, 1.74 );
setEffScaleKey( spep_4 -3 + 36, ctbaki2, 1.76, 1.76 );
setEffScaleKey( spep_4 -3 + 38, ctbaki2, 1.78, 1.78 );
setEffScaleKey( spep_4 -3 + 40, ctbaki2, 1.8, 1.8 );

setEffRotateKey( spep_4 -3 + 20, ctbaki2, 0 );
setEffRotateKey( spep_4 -3 + 40, ctbaki2, 0 );

setEffAlphaKey( spep_4 -3 + 20, ctbaki2, 255 );
setEffAlphaKey( spep_4 -3 + 30, ctbaki2, 255 );
setEffAlphaKey( spep_4 -3 + 32, ctbaki2, 204 );
setEffAlphaKey( spep_4 -3 + 34, ctbaki2, 153 );
setEffAlphaKey( spep_4 -3 + 36, ctbaki2, 102 );
setEffAlphaKey( spep_4 -3 + 38, ctbaki2, 51 );
setEffAlphaKey( spep_4 -3 + 40, ctbaki2, 0 );

--敵の動き
setDisp( spep_4+8   + 0, 1, 1 );
setDisp( spep_4   + 60, 1, 0 );

changeAnime( spep_4   + 0, 1, 106 );
changeAnime( spep_4 -3  + 20, 1, 108 );

setMoveKey( spep_4  + 8, 1, 0, 649.9 , 0 );
setMoveKey( spep_4  + 10, 1, -1.3, 286.7 , 0 );
setMoveKey( spep_4  + 12, 1, -2.6, 100.1 , 0 );
--setMoveKey( spep_4 -3 + 14, 1, 1.2, -29.1 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 5.2, -116.4 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 0, -170 , 0 );
setMoveKey( spep_4 -3 + 19, 1, 0, -170 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -64.9, -165 , 0 );
setMoveKey( spep_4 -3 + 23, 1, -106.4, 7.8 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -106.4, 7.8 , 0 );
setMoveKey( spep_4 -3 + 25, 1, -62.6, -155.2 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -45.3, -87.2 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -48.3, -133.4 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -62, -161.6 , 0 );
setMoveKey( spep_4 -3 + 32, 1, -76.2, -139.5 , 0 );
setMoveKey( spep_4 -3 + 34, 1, -76.2, -125.9 , 0 );
setMoveKey( spep_4 -3 + 36, 1, -62.3, -145 , 0 );
setMoveKey( spep_4 -3 + 38, 1, -60.4, -163 , 0 );
setMoveKey( spep_4 -3 + 40, 1, -63.8, -154.1 , 0 );
setMoveKey( spep_4 -3 + 42, 1, -62, -143.3 , 0 );
setMoveKey( spep_4 -3 + 44, 1, -61.4, -144.1 , 0 );
setMoveKey( spep_4 -3 + 46, 1, -58.9, -161.3 , 0 );
setMoveKey( spep_4 -3 + 48, 1, -63.4, -192.6 , 0 );
setMoveKey( spep_4 -3 + 50, 1, -84.4, -214.6 , 0 );
setMoveKey( spep_4 -3 + 52, 1, -87.6, -116.7 , 0 );
setMoveKey( spep_4 -3 + 54, 1, -78.7, 265.9 , 0 );
setMoveKey( spep_4 -3 + 56, 1, -55.2, 845 , 0 );
setMoveKey( spep_4 -3 + 58, 1, -32.7, 1363.9 , 0 );
setMoveKey( spep_4 -3 + 60, 1, -51.1, 1640 , 0 );

setScaleKey( spep_4 -3 + 8, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 10, 1, 1.63, 1.63 );
setScaleKey( spep_4 -3 + 12, 1, 1.7, 1.7 );
setScaleKey( spep_4 -3 + 14, 1, 1.75, 1.75 );
setScaleKey( spep_4 -3 + 16, 1, 1.78, 1.78 );
setScaleKey( spep_4 -3 + 18, 1, 1.8, 1.8 );
setScaleKey( spep_4 -3 + 22, 1, 1.8, 1.8 );
setScaleKey( spep_4 -3 + 23, 1, 2.16, 2.16 );
setScaleKey( spep_4 -3 + 24, 1, 1.8, 1.8 );
setScaleKey( spep_4 -3 + 26, 1, 2.07, 2.07 );
setScaleKey( spep_4 -3 + 28, 1, 1.94, 1.94 );
setScaleKey( spep_4 -3 + 30, 1, 1.8, 1.8 );
setScaleKey( spep_4 -3 + 32, 1, 1.89, 1.89 );
setScaleKey( spep_4 -3 + 34, 1, 1.98, 1.98 );
setScaleKey( spep_4 -3 + 36, 1, 1.89, 1.89 );
setScaleKey( spep_4 -3 + 38, 1, 1.8, 1.8 );
setScaleKey( spep_4 -3 + 40, 1, 1.84, 1.84 );
setScaleKey( spep_4 -3 + 42, 1, 1.89, 1.89 );
setScaleKey( spep_4 -3 + 44, 1, 1.84, 1.84 );
setScaleKey( spep_4 -3 + 46, 1, 1.8, 1.8 );
setScaleKey( spep_4 -3 + 48, 1, 2.07, 2.07 );
setScaleKey( spep_4 -3 + 50, 1, 2.34, 2.34 );
setScaleKey( spep_4 -3 + 52, 1, 2.64, 2.64 );
setScaleKey( spep_4 -3 + 54, 1, 2.99, 2.99 );
setScaleKey( spep_4 -3 + 56, 1, 3.38, 3.38 );
setScaleKey( spep_4 -3 + 58, 1, 3.76, 3.76 );
setScaleKey( spep_4 -3 + 60, 1, 4.1, 4.1 );

setRotateKey( spep_4 -3 + 8, 1, -170 );
setRotateKey( spep_4 -3 + 19, 1, -170 );
setRotateKey( spep_4 -3 + 20, 1, -140 );
setRotateKey( spep_4 -3 + 60, 1, -140 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_4 +70, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_4 +70, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--文字エントリー
ctgogo = entryEffectLife( spep_4 +82,  190006, 72, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ

setEffShake( spep_4 +82, ctgogo, 72, 10 );

setEffMoveKey( spep_4 +82, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_4 +154, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_4 +82, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_4 +146, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_4 +148, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_4 +150, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_4 +152, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_4 +154, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_4 +82, ctgogo, 0 );
setEffRotateKey( spep_4 +154, ctgogo, 0 );

setEffAlphaKey( spep_4 +82, ctgogo, 0 );
setEffAlphaKey( spep_4 +83, ctgogo, 255 );
setEffAlphaKey( spep_4 +84, ctgogo, 255 );
setEffAlphaKey( spep_4 +154, ctgogo, 255 );

--SE
playSe( spep_4, 43); --瞬間移動
playSe( spep_4+18, 1010); --キック
playSe( spep_4+82, SE_04); --ゴゴゴ


--白フェード
entryFade( spep_4 +14 , 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--黒背景
entryFadeBg(spep_4, 0, 158, 0, 0, 0, 0, 160);  -- 黒　背
entryFadeBg(spep_4+76, 6, 76, 0, 0, 0, 0, 255);  -- 黒　背

--白フェード
entryFade( spep_4 +150 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
--次の準備
spep_5=spep_4+158;
--------------------------------------
--カードカットイン(90F)
--------------------------------------


if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_5, SE_05);
    speff = entryEffect( spep_5,   1507,   0,  -1,  0,  0,  0);   -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
    setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_5, SE_05);
    speff = entryEffect( spep_5, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_5, SE_05);
    speff = entryEffect( spep_5, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end
    
    
    --[[speff = entryEffect(  spep_5,   1507,   0,  -1,  0,  0,  0);   -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
    setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え]]
    
    shuchusen = entryEffectLife( spep_5, 906, 90, 0x100,  -1, 0,  0,  0);
    
    setEffMoveKey(  spep_5,  shuchusen,  0,  0);
    setEffMoveKey(  spep_5+90,  shuchusen,  0,  0);
    setEffScaleKey(  spep_5,  shuchusen,  1.6,  1.6);
    setEffScaleKey(  spep_5+90,  shuchusen,  1.6,  1.6);
    setEffRotateKey(  spep_5,  shuchusen,  0);
    setEffRotateKey(  spep_5+90,  shuchusen,  0);
    setEffAlphaKey(  spep_5,  shuchusen,  255);
    setEffAlphaKey(  spep_5+90,  shuchusen,  255);
-- ** エフェクト等 ** --
entryFade(spep_5+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_6=spep_5+90;
------------------------------------------------------
-- 技発射
------------------------------------------------------
-- ** エフェクト等 (前)
beam = entryEffectLife( spep_6 + 0, SP_07, 140, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_6 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_6 + 140, beam, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_6 + 140, beam, 1.0, 1.0 );
setEffAlphaKey( spep_6 + 0, beam, 255 );
setEffAlphaKey( spep_6 + 140, beam, 255 );
setEffRotateKey( spep_6 + 0, beam, 0 );
setEffRotateKey( spep_6 + 140, beam, 0 );

--敵の動き
setDisp( spep_6   + 3, 1, 1 );
setDisp( spep_6   + 28, 1, 0 );

changeAnime( spep_6   + 0, 1, 106 );
changeAnime( spep_6 -3  + 20, 1, 108 );

setMoveKey( spep_6 -3 + 6, 1, -34.9, 874.9 , 0 );
setMoveKey( spep_6 -3 + 8, 1, -17.4, 512.4 , 0 );
setMoveKey( spep_6 -3 + 10, 1, -8, 349.6 , 0 );
setMoveKey( spep_6 -3 + 12, 1, -1.1, 214.2 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 4.6, 130.3 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 3.8, 84.1 , 0 );
setMoveKey( spep_6 -3 + 18, 1, -0.1, 60 , 0 );
setMoveKey( spep_6 -3 + 19, 1, -0.1, 60 , 0 );
setMoveKey( spep_6 -3 + 21, 1, 120, 143.9 , 0 );
setMoveKey( spep_6 -3 + 23, 1, 101.9, 116.2 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 116.3, 131.1 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 122.1, 151.8 , 0 );
setMoveKey( spep_6  + 28, 1, 103.9, 135.2 , 0 );

setScaleKey( spep_6 -3 + 6, 1, 2.5, 2.5 );
setScaleKey( spep_6 -3 + 8, 1, 2, 2 );
setScaleKey( spep_6 -3 + 12, 1, 2, 2 );
setScaleKey( spep_6 -3 + 14, 1, 2.2, 2.2 );
setScaleKey( spep_6 -3 + 16, 1, 2.4, 2.4 );
setScaleKey( spep_6 -3 + 19, 1, 2.4, 2.4 );
setScaleKey( spep_6 -3 + 20, 1, 1.8, 1.8 );
setScaleKey( spep_6 -3 + 22, 1, 1.5, 1.5 );
setScaleKey( spep_6 -3 + 24, 1, 1.65, 1.65 );
setScaleKey( spep_6 -3 + 26, 1, 1.8, 1.8 );
setScaleKey( spep_6  + 28, 1, 1.65, 1.65 );

setRotateKey( spep_6 -3 + 6, 1, -130 );
setRotateKey( spep_6 -3 + 19, 1, -130 );
setRotateKey( spep_6 -3 + 20, 1, 0 );
setRotateKey( spep_6  + 28, 1, 0 );

--流線
ryusen8 = entryEffectLife( spep_6,  921, 138, 0x80, -1, 0, 20, -35 );

setEffMoveKey( spep_6 , ryusen8, 20, -30 , 0 );
setEffMoveKey( spep_6 + 138, ryusen8, 20, -30 , 0 );

setEffScaleKey( spep_6 , ryusen8, 1.6, 1.2 );
setEffScaleKey( spep_6 + 138, ryusen8, 1.6, 1.2 );

setEffRotateKey( spep_6 , ryusen8, -40 );--155
setEffRotateKey( spep_6 + 138, ryusen8, -40 );

setEffAlphaKey( spep_6, ryusen8, 255 );
setEffAlphaKey( spep_6 + 138, ryusen8, 255 );

--集中線
shuchusen6 = entryEffectLife( spep_6  ,  906, 138, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_6  , shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_6  + 138, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_6  , shuchusen6, 1.1, 1.1 );
setEffScaleKey( spep_6  + 138, shuchusen6, 1.1, 1.1 );

setEffRotateKey( spep_6  , shuchusen6, 0 );
setEffRotateKey( spep_6  + 138, shuchusen6, 0 );

setEffAlphaKey( spep_6  , shuchusen6, 255 );
setEffAlphaKey( spep_6  + 138, shuchusen6, 255 );

--SE
playSe( spep_6, 1036); --気ダメ
playSe( spep_6+18, 1022); --うつ


--黒背景
entryFadeBg(spep_6, 0, 140, 0, 0, 0, 0, 255);  -- 黒　背

--白フェード
entryFade( spep_6 +12 , 0, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_6 +130 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
--次の準備
spep_7=spep_6+144;
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
endPhase(spep_7 + 110);

else 
------------------------------------------------------------------------------------------------------------
-- 待機
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 待機
------------------------------------------------------
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
shuchusen1 = entryEffectLife( spep_1 + 0,  906, 74, 0x100, -1, 0, 0, 0 );

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

-- ** 気(前)
ki_f = entryEffectLife( spep_1 + 0, 1502, 72, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 0, ki_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 72, ki_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, ki_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 72, ki_f, 1.0, 1.0 );
setEffAlphaKey( spep_1 + 0, ki_f, 255 );
setEffAlphaKey( spep_1 + 72, ki_f, 255 );
setEffRotateKey( spep_1 + 0, ki_f, 0 );
setEffRotateKey( spep_1 + 72, ki_f, 0 );

-- ** 気(後)
ki_b = entryEffectLife( spep_1 + 0, 1503, 72, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 0, ki_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 72, ki_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, ki_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 72, ki_b, 1.0, 1.0 );
setEffAlphaKey( spep_1 + 0, ki_b, 255 );
setEffAlphaKey( spep_1 + 72, ki_b, 255 );
setEffRotateKey( spep_1 + 0, ki_b, 0 );
setEffRotateKey( spep_1 + 72, ki_b, 0 );

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

--文字エントリー
ctzuzuzun = entryEffectLife( spep_1 -3 + 26,  10013, 36, 0x100, -1, 0, 22, 191.9 );--ズズズンッ

setEffMoveKey( spep_1 -3 + 26, ctzuzuzun, 22, 191.9 , 0 );
setEffMoveKey( spep_1 -3 + 28, ctzuzuzun, 29.8, 246.3 , 0 );
setEffMoveKey( spep_1 -3 + 30, ctzuzuzun, 49.2, 309.6 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctzuzuzun, 46.8, 334 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctzuzuzun, 52.9, 331.8 , 0 );
setEffMoveKey( spep_1 -3 + 36, ctzuzuzun, 39.3, 310.4 , 0 );
setEffMoveKey( spep_1 -3 + 38, ctzuzuzun, 36, 299.9 , 0 );

a=1.5;

setEffScaleKey( spep_1 -3 + 26, ctzuzuzun, 0.38+a, 0.38+a );
setEffScaleKey( spep_1 -3 + 28, ctzuzuzun, 0.62+a, 0.62+a );
setEffScaleKey( spep_1 -3 + 30, ctzuzuzun, 0.85+a, 0.85+a );
setEffScaleKey( spep_1 -3 + 32, ctzuzuzun, 1+a, 1+a );
setEffScaleKey( spep_1 -3 + 38, ctzuzuzun, 1+a, 1+a );

setEffRotateKey( spep_1 -3 + 26, ctzuzuzun, 0 );
setEffRotateKey( spep_1 -3 + 38, ctzuzuzun, 0 );

setEffAlphaKey( spep_1 -3 + 26, ctzuzuzun, 255 );
setEffAlphaKey( spep_1 -3 + 28, ctzuzuzun, 206 );
setEffAlphaKey( spep_1 -3 + 30, ctzuzuzun, 159 );
setEffAlphaKey( spep_1 -3 + 32, ctzuzuzun, 115 );
setEffAlphaKey( spep_1 -3 + 34, ctzuzuzun, 74 );
setEffAlphaKey( spep_1 -3 + 36, ctzuzuzun, 35 );
setEffAlphaKey( spep_1 -3 + 38, ctzuzuzun, 0 );

--SE
playSe( spep_1, 1035); --気ダメ
playSe( spep_1+26, 1036); --気ダメ
playSe( spep_1+46, 1036); --気ダメ
playSe( spep_1+66, 1036); --気ダメ
playSe( spep_1+74, 44); --移動
--黒背景
entryFadeBg(spep_1, 20,82, 0, 0, 0, 0, 160);  -- 黒　背

--白フェード
entryFade( spep_1 +94 , 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+102;


------------------------------------------------------
-- 一撃目：登場からキック
------------------------------------------------------
-- ** エフェクト等 (前)
kick = entryEffectLife( spep_2 + 0, SP_03x, 92, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, kick, 0, 0 , 0 );
setEffMoveKey( spep_2 + 92, kick, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kick, 1.0, 1.0 );
setEffScaleKey( spep_2 + 92, kick, 1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, kick, 255 );
setEffAlphaKey( spep_2 + 92, kick, 255 );
setEffRotateKey( spep_2 + 0, kick, 0 );
setEffRotateKey( spep_2 + 92, kick, 0 );

--流線
ryusen2 = entryEffectLife( spep_2  + 2,  914, 29, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_2  + 2, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_2  + 31, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_2  + 2, ryusen2, 3, 1.5 );
setEffScaleKey( spep_2  + 31, ryusen2, 3, 1.5 );

setEffRotateKey( spep_2 + 2, ryusen2, 0 );
setEffRotateKey( spep_2  + 31, ryusen2, 0 );

setEffAlphaKey( spep_2  + 2, ryusen2, 255 );
setEffAlphaKey( spep_2  + 31, ryusen2, 255 );

--敵の動き
setDisp( spep_2  + 0, 1, 1 );

changeAnime( spep_2  + 0, 1, 101 );

setMoveKey( spep_2  + 0, 1, 540.1, 20.5 , 0 );
--setMoveKey( spep_2 -3 + 2, 1, 434.4, 20.5 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 342.3, 20.5 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 261, 20.5 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 189.7, 20.5 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 128.1, 20.5 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 76.7, 20.5 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 36.7, 20.5 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 10, 20.5 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 0, 20.6 , 0 );
setMoveKey( spep_2  + 18, 1, 0, 20.6 , 0 );

setScaleKey( spep_2  + 0, 1, 2, 2 );
--setScaleKey( spep_2 -3 + 2, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 4, 1, 1.82, 1.82 );
setScaleKey( spep_2 -3 + 6, 1, 1.74, 1.74 );
setScaleKey( spep_2 -3 + 8, 1, 1.68, 1.68 );
setScaleKey( spep_2 -3 + 10, 1, 1.62, 1.62 );
setScaleKey( spep_2 -3 + 12, 1, 1.57, 1.57 );
setScaleKey( spep_2 -3 + 14, 1, 1.53, 1.53 );
setScaleKey( spep_2 -3 + 16, 1, 1.51, 1.51 );
setScaleKey( spep_2 -3 + 18, 1, 1.5, 1.5 );
setScaleKey( spep_2  + 18, 1, 1.5, 1.5 );

setRotateKey( spep_2  + 0, 1, 0 );
setRotateKey( spep_2  + 18, 1, 0 );

--黒背景
entryFadeBg(spep_2, 0, 92, 0, 0, 0, 0, 160);  -- 黒　背


--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2+18 ; --エンドフェイズのフレーム数を置き換える
    
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
setDisp( spep_2  + 90, 1, 0 );

changeAnime( spep_2 -3 + 40, 1, 108 );

setMoveKey( spep_2 -3 + 39, 1, 0, 20.6 , 0 );
setMoveKey( spep_2 -3 + 41, 1, 29.9, 59.9 , 0 );
setMoveKey( spep_2 -3 + 43, 1, 171.2, 179.9 , 0 );
setMoveKey( spep_2 -3 + 45, 1, 36.9, 55.2 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 138.1, 85.5 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 77.5, 67.2 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 31.8, 56.6 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 53.8, 75 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 65.1, 84.8 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 45.6, 65.7 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 30.2, 55.7 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 44.1, 67.5 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 60.1, 70.4 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 51.3, 62.8 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 31.1, 54 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 25.3, 52.9 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 29.9, 59.9 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 41.8, 68.2 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 71.1, 98.3 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 108.1, 151 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 160.5, 222.8 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 235.3, 312.6 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 313.9, 407.6 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 379.9, 491.1 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 435.2, 561.1 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 477.2, 617.8 , 0 );
setMoveKey( spep_2  + 90, 1, 500.5, 643.3 , 0 );

setScaleKey( spep_2 -3 + 40, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 42, 1, 1.8, 1.8 );
setScaleKey( spep_2 -3 + 44, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 46, 1, 1.72, 1.72 );
setScaleKey( spep_2 -3 + 48, 1, 1.62, 1.62 );
setScaleKey( spep_2 -3 + 50, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 52, 1, 1.57, 1.57 );
setScaleKey( spep_2 -3 + 54, 1, 1.65, 1.65 );
setScaleKey( spep_2 -3 + 56, 1, 1.57, 1.57 );
setScaleKey( spep_2 -3 + 58, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 60, 1, 1.53, 1.53 );
setScaleKey( spep_2 -3 + 62, 1, 1.57, 1.57 );
setScaleKey( spep_2 -3 + 64, 1, 1.53, 1.53 );
setScaleKey( spep_2 -3 + 66, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 70, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 72, 1, 1.49, 1.49 );
setScaleKey( spep_2 -3 + 74, 1, 1.48, 1.48 );
setScaleKey( spep_2 -3 + 76, 1, 1.45, 1.45 );
setScaleKey( spep_2 -3 + 78, 1, 1.41, 1.41 );
setScaleKey( spep_2 -3 + 80, 1, 1.37, 1.37 );
setScaleKey( spep_2 -3 + 82, 1, 1.32, 1.32 );
setScaleKey( spep_2 -3 + 84, 1, 1.28, 1.28 );
setScaleKey( spep_2 -3 + 86, 1, 1.24, 1.24 );
setScaleKey( spep_2 -3 + 88, 1, 1.21, 1.21 );
setScaleKey( spep_2  + 90, 1, 1.2, 1.2 );

setRotateKey( spep_2 -3 + 39, 1, 0 );
setRotateKey( spep_2 -3 + 40, 1, -30 );
setRotateKey( spep_2 -3 + 78, 1, -30 );
setRotateKey( spep_2 -3 + 80, 1, -29.9 );
setRotateKey( spep_2  + 90, 1, -29.9 );


--文字エントリー
ctbaki = entryEffectLife( spep_2 -3 + 42,  10020, 20, 0x100, -1, 0, 75, 46.9 );--バキッ

setEffMoveKey( spep_2 -3 + 42, ctbaki, 75, 46.9 , 0 );
setEffMoveKey( spep_2 -3 + 44, ctbaki, 108.7, 18.1 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctbaki, 154.6, -12.7 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctbaki, 157.6, -10.7 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctbaki, 177.5, -21.1 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctbaki, 177.6, -26 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctbaki, 186.9, -21.7 , 0 );
setEffMoveKey( spep_2 -3 + 56, ctbaki, 191.1, -34.5 , 0 );
setEffMoveKey( spep_2 -3 + 58, ctbaki, 191.6, -25.2 , 0 );
setEffMoveKey( spep_2 -3 + 60, ctbaki, 200.1, -35.4 , 0 );
setEffMoveKey( spep_2 -3 + 62, ctbaki, 204.2, -37.6 , 0 );

setEffScaleKey( spep_2 -3 + 42, ctbaki, 0.25, 0.25 );
setEffScaleKey( spep_2 -3 + 44, ctbaki, 0.88, 0.88 );
setEffScaleKey( spep_2 -3 + 46, ctbaki, 1.5, 1.5 );
setEffScaleKey( spep_2 -3 + 48, ctbaki, 1.57, 1.57 );
setEffScaleKey( spep_2 -3 + 50, ctbaki, 1.63, 1.63 );
setEffScaleKey( spep_2 -3 + 52, ctbaki, 1.7, 1.7 );
setEffScaleKey( spep_2 -3 + 54, ctbaki, 1.72, 1.72 );
setEffScaleKey( spep_2 -3 + 56, ctbaki, 1.74, 1.74 );
setEffScaleKey( spep_2 -3 + 58, ctbaki, 1.76, 1.76 );
setEffScaleKey( spep_2 -3 + 60, ctbaki, 1.78, 1.78 );
setEffScaleKey( spep_2 -3 + 62, ctbaki, 1.8, 1.8 );

setEffRotateKey( spep_2 -3 + 42, ctbaki, 0 );
setEffRotateKey( spep_2 -3 + 62, ctbaki, 0 );

setEffAlphaKey( spep_2 -3 + 42, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 52, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 54, ctbaki, 204 );
setEffAlphaKey( spep_2 -3 + 56, ctbaki, 153 );
setEffAlphaKey( spep_2 -3 + 58, ctbaki, 102 );
setEffAlphaKey( spep_2 -3 + 60, ctbaki, 51 );
setEffAlphaKey( spep_2 -3 + 62, ctbaki, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_2  + 37,  906, 34, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2  + 37, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2  + 71, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 37, shuchusen2, 1.1, 1.1 );
setEffScaleKey( spep_2 + 71, shuchusen2, 1.1, 1.1 );

setEffRotateKey( spep_2  + 37, shuchusen2, 180 );
setEffRotateKey( spep_2  + 71, shuchusen2, 180 );

setEffAlphaKey( spep_2  + 37, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 70, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 71, shuchusen2, 0 );

--流線
ryusen3 = entryEffectLife( spep_2  + 71,  914,21, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_2  + 71, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 92, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_2  + 71, ryusen3, 3.6, 1.8 );
setEffScaleKey( spep_2  + 92, ryusen3, 3.6, 1.8 );

setEffRotateKey( spep_2 + 71, ryusen3, 130.1 );
setEffRotateKey( spep_2  + 92, ryusen3, 130.1 );

setEffAlphaKey( spep_2 + 71, ryusen3, 154 );
setEffAlphaKey( spep_2  + 91, ryusen3, 154 );
setEffAlphaKey( spep_2  + 92, ryusen3, 0 );

--SE
playSe( spep_2, 44); --移動
playSe( spep_2+38, 1009); --キック
playSe( spep_2+78, 43); --瞬間移動

--白フェード
entryFade( spep_2 +32 , 0, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3=spep_2+92;

------------------------------------------------------
-- 二撃目：両手殴り
------------------------------------------------------
--流線
ryusen4 = entryEffectLife( spep_3 + 0,  914, 25, 0x80, -1, 00,0 , 0 );

setEffMoveKey( spep_3 + 0, ryusen4, 0,0 , 0 );
setEffMoveKey( spep_3 + 25, ryusen4, 0,0 , 0 );

setEffScaleKey( spep_3 + 0, ryusen4, 3.59, 1.8 );
--setEffScaleKey( spep_3 + 2, ryusen4, 3.48, 1.74 );
setEffScaleKey( spep_3 + 1, ryusen4, 3.36, 1.68 );
setEffScaleKey( spep_3 + 3, ryusen4, 3.24, 1.62 );
setEffScaleKey( spep_3 + 5, ryusen4, 3.12, 1.56 );
setEffScaleKey( spep_3 + 7, ryusen4, 3, 1.5 );
setEffScaleKey( spep_3 + 25, ryusen4, 3, 1.5 );

setEffRotateKey( spep_3 + 0, ryusen4, 130.1 );
--setEffRotateKey( spep_3 + 2, ryusen4, 140.1 );
setEffRotateKey( spep_3 + 1, ryusen4, 150.1 );
setEffRotateKey( spep_3 + 3, ryusen4, 160 );
setEffRotateKey( spep_3 + 5, ryusen4, 170 );
setEffRotateKey( spep_3 + 7, ryusen4, 180 );
setEffRotateKey( spep_3 + 25, ryusen4, 180 );

setEffAlphaKey( spep_3 + 0, ryusen4, 154 );
setEffAlphaKey( spep_3 + 25, ryusen4, 154 );

--流線
ryusen5 = entryEffectLife( spep_3 ,  914, 86, 0x80, -1, 0, 0, 0);

setEffMoveKey( spep_3 , ryusen5, 0, 0 , 0 );
setEffMoveKey( spep_3 + 86, ryusen5, 0, 0 , 0 );

setEffScaleKey( spep_3 , ryusen5, 2.7, 1.35 );
setEffScaleKey( spep_3 + 86, ryusen5, 2.7, 1.35 );

setEffRotateKey( spep_3 , ryusen5, 90 );
setEffRotateKey( spep_3 + 8868, ryusen5, 90 );

setEffAlphaKey( spep_3 , ryusen5, 0 );
setEffAlphaKey( spep_3 + 70, ryusen5, 0 );
setEffAlphaKey( spep_3 + 71, ryusen5, 154 );
setEffAlphaKey( spep_3 + 84, ryusen5, 154 );
setEffAlphaKey( spep_3 + 85, ryusen5, 154 );
setEffAlphaKey( spep_3 + 86, ryusen5, 0 );

-- ** エフェクト等 (前)
punch_f = entryEffectLife( spep_3 + 0, SP_04x, 84, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 84, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 84, punch_f, 1.0, 1.0 );
setEffAlphaKey( spep_3 + 0, punch_f, 255 );
setEffAlphaKey( spep_3 + 81, punch_f, 255 );
setEffAlphaKey( spep_3 + 82, punch_f, 255 );
setEffAlphaKey( spep_3 + 83, punch_f, 0 );
setEffAlphaKey( spep_3 + 84, punch_f, 0 );
setEffRotateKey( spep_3 + 0, punch_f, 0 );
setEffRotateKey( spep_3 + 84, punch_f, 0 );

-- ** エフェクト等 (後)
punch_b = entryEffect( spep_3 + 0, SP_05x, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 84, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 84, punch_b, 1.0, 1.0 );
setEffAlphaKey( spep_3 + 0, punch_b, 255 );
setEffAlphaKey( spep_3 + 81, punch_b, 255 );
setEffAlphaKey( spep_3 + 82, punch_b, 255 );
setEffAlphaKey( spep_3 + 83, punch_b, 0 );
setEffAlphaKey( spep_3 + 84, punch_b, 0 );
setEffRotateKey( spep_3 + 0, punch_b, 0 );
setEffRotateKey( spep_3 + 84, punch_b, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_3  + 30,  906, 40, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3  + 30, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3  + 70, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 30, shuchusen3, 1.1, 1.1 );
setEffScaleKey( spep_3 + 70, shuchusen3, 1.1, 1.1 );

setEffRotateKey( spep_3 + 30, shuchusen3, 180 );
setEffRotateKey( spep_3 + 70, shuchusen3, 180 );

setEffAlphaKey( spep_3 + 30, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 70, shuchusen3, 255 );

--文字エントリー
ctdon = entryEffectLife( spep_3-3 + 34,  10019, 20, 0x100, -1, 0, 0, -0.1 );--ドンッ

setEffMoveKey( spep_3-3 + 34, ctdon, 0, -0.1 , 0 );
setEffMoveKey( spep_3-3 + 36, ctdon, -53.8, 18.1 , 0 );
setEffMoveKey( spep_3-3 + 38, ctdon, -95.4, 34.3 , 0 );
setEffMoveKey( spep_3-3 + 40, ctdon, -109, 43.7 , 0 );
setEffMoveKey( spep_3-3 + 42, ctdon, -105.7, 40.7 , 0 );
setEffMoveKey( spep_3-3 + 44, ctdon, -122.2, 43.2 , 0 );
setEffMoveKey( spep_3-3 + 46, ctdon, -118.9, 50.7 , 0 );
setEffMoveKey( spep_3-3 + 48, ctdon, -120.7, 41.2 , 0 );
setEffMoveKey( spep_3-3 + 50, ctdon, -126.2, 53.7 , 0 );
setEffMoveKey( spep_3-3 + 52, ctdon, -123.8, 46.8 , 0 );
setEffMoveKey( spep_3-3 + 54, ctdon, -125.8, 47.8 , 0 );

setEffScaleKey( spep_3-3 + 34, ctdon, 0.25, 0.25 );
setEffScaleKey( spep_3-3 + 36, ctdon, 0.88, 0.88 );
setEffScaleKey( spep_3-3 + 38, ctdon, 1.5, 1.5 );
setEffScaleKey( spep_3-3 + 40, ctdon, 1.57, 1.57 );
setEffScaleKey( spep_3-3 + 42, ctdon, 1.63, 1.63 );
setEffScaleKey( spep_3-3 + 44, ctdon, 1.7, 1.7 );
setEffScaleKey( spep_3-3 + 46, ctdon, 1.72, 1.72 );
setEffScaleKey( spep_3-3 + 48, ctdon, 1.74, 1.74 );
setEffScaleKey( spep_3-3 + 50, ctdon, 1.76, 1.76 );
setEffScaleKey( spep_3-3 + 52, ctdon, 1.78, 1.78 );
setEffScaleKey( spep_3-3 + 54, ctdon, 1.8, 1.8 );

setEffRotateKey( spep_3-3 + 34, ctdon, 0 );
setEffRotateKey( spep_3-3 + 54, ctdon, 0 );

setEffAlphaKey( spep_3-3 + 34, ctdon, 255 );
setEffAlphaKey( spep_3-3 + 44, ctdon, 255 );
setEffAlphaKey( spep_3-3 + 46, ctdon, 204 );
setEffAlphaKey( spep_3-3 + 48, ctdon, 153 );
setEffAlphaKey( spep_3-3 + 50, ctdon, 102 );
setEffAlphaKey( spep_3-3 + 52, ctdon, 51 );
setEffAlphaKey( spep_3-3 + 54, ctdon, 0 );

--敵の動き
setDisp( spep_3  + 0, 1, 1 );
setDisp( spep_3  + 84, 1, 0 );

changeAnime( spep_3 + 0, 1, 106 );

setMoveKey( spep_3  + 0, 1, -443.5, -302.3 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, -357.6, -222.5 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -289.4, -166.4 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -235.4, -122.5 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -197.7, -93.8 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -166.6, -70.3 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -138.7, -42.1 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -115.7, -18.3 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -95, -7 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -79.1, 0.6 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -74.3, 10.3 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -75, 14.9 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -68.2, 19.7 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -61.4, 24.5 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -60.6, 23.2 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -59.8, 22 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -57.1, 28.8 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -24.3, -115.5 , 0 );
setMoveKey( spep_3 -3 + 37, 1, -159.3, -158.9 , 0 );
setMoveKey( spep_3 -3 + 38, 1, -44.7, 33.1 , 0 );
setMoveKey( spep_3 -3 + 40, 1, -5, -55.8 , 0 );
setMoveKey( spep_3 -3 + 41, 1, -5, -55.8 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 26.8, -118 , 0 );
setMoveKey( spep_3 -3 + 44, 1, -1.2, -60.6 , 0 );
setMoveKey( spep_3 -3 + 46, 1, -16.4, -85 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -26.5, -116.6 , 0 );
setMoveKey( spep_3 -3 + 51, 1, -8.9, -90.6 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 0.7, -61 , 0 );
setMoveKey( spep_3 -3 + 54, 1, -1.4, -77.1 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 6.1, -87 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 7.4, -74.5 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 2.6, -61.4 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 0, -65 , 0 );
setMoveKey( spep_3 -3 + 64, 1, -1.3, -60.7 , 0 );
setMoveKey( spep_3 -3 + 66, 1, -2.5, -56.4 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 1.1, -59.1 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 4.6, -61.7 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 0.7, -61 , 0 );
setMoveKey( spep_3 -3 + 74, 1, -3.2, -60.4 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 1, -59.1 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 0, -65 , 0 );
setMoveKey( spep_3 -3 + 80, 1, -1.3, -83.4 , 0 );
setMoveKey( spep_3 -3 + 82, 1, -2.8, -147.4 , 0 );
setMoveKey( spep_3  + 84, 1, 1.3, -1068.4 , 0 );

setScaleKey( spep_3  + 0, 1, 2.5, 2.5 );
--setScaleKey( spep_3 -3 + 2, 1, 2.28, 2.28 );
setScaleKey( spep_3 -3 + 4, 1, 2.13, 2.13 );
setScaleKey( spep_3 -3 + 6, 1, 2.01, 2.01 );
setScaleKey( spep_3 -3 + 8, 1, 1.91, 1.91 );
setScaleKey( spep_3 -3 + 10, 1, 1.83, 1.83 );
setScaleKey( spep_3 -3 + 12, 1, 1.76, 1.76 );
setScaleKey( spep_3 -3 + 14, 1, 1.71, 1.71 );
setScaleKey( spep_3 -3 + 16, 1, 1.66, 1.66 );
setScaleKey( spep_3 -3 + 18, 1, 1.63, 1.63 );
setScaleKey( spep_3 -3 + 20, 1, 1.61, 1.61 );
setScaleKey( spep_3 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 34, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 36, 1, 1.92, 1.92 );
setScaleKey( spep_3 -3 + 38, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 40, 1, 1.84, 1.84 );
setScaleKey( spep_3 -3 + 42, 1, 1.73, 1.73 );
setScaleKey( spep_3 -3 + 44, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 46, 1, 1.68, 1.68 );
setScaleKey( spep_3 -3 + 48, 1, 1.76, 1.76 );
setScaleKey( spep_3 -3 + 50, 1, 1.68, 1.68 );
setScaleKey( spep_3 -3 + 52, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 54, 1, 1.63, 1.63 );
setScaleKey( spep_3 -3 + 56, 1, 1.68, 1.68 );
setScaleKey( spep_3 -3 + 58, 1, 1.63, 1.63 );
setScaleKey( spep_3 -3 + 60, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 78, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 80, 1, 1.65, 1.65 );
setScaleKey( spep_3 -3 + 82, 1, 1.79, 1.79 );
setScaleKey( spep_3  + 84, 1, 2.03, 2.03 );

setRotateKey( spep_3  + 0, 1, -96.5 );
--setRotateKey( spep_3 -3 + 2, 1, -94.9 );
setRotateKey( spep_3 -3 + 4, 1, -93.8 );
setRotateKey( spep_3 -3 + 6, 1, -93 );
setRotateKey( spep_3 -3 + 8, 1, -92.2 );
setRotateKey( spep_3 -3 + 10, 1, -91.7 );
setRotateKey( spep_3 -3 + 12, 1, -91.2 );
setRotateKey( spep_3 -3 + 14, 1, -90.8 );
setRotateKey( spep_3 -3 + 16, 1, -90.5 );
setRotateKey( spep_3 -3 + 18, 1, -90.2 );
setRotateKey( spep_3 -3 + 20, 1, -90.1 );
setRotateKey( spep_3 -3 + 22, 1, -90 );
setRotateKey( spep_3 -3 + 30, 1, -90 );
setRotateKey( spep_3 -3 + 31, 1, -90 );
setRotateKey( spep_3 -3 + 32, 1, -170 );
setRotateKey( spep_3  + 84, 1, -170 );

--白フェード
entryFade( spep_3 +24 , 0, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--SE
playSe( spep_3, 43); --瞬間移動
playSe( spep_3+32, 1011); --キック
playSe( spep_3+72, 43); --瞬間移動

--黒背景
entryFadeBg(spep_3, 0, 86, 0, 0, 0, 0, 160);  -- 黒　背

--次の準備
spep_4=spep_3+86;
------------------------------------------------------
-- 三撃目：キック→技溜め
------------------------------------------------------
--集中線
shuchusen5 = entryEffectLife( spep_4 ,  906, 158, 0x100, -1, 0, 196.9, -135.1 );

setEffMoveKey( spep_4 , shuchusen5, -126.9, -135.1 , 0 );
setEffMoveKey( spep_4 + 158, shuchusen5, -126.9, -135.1 , 0 );

setEffScaleKey( spep_4 , shuchusen5, 1.5, 1.5 );
setEffScaleKey( spep_4 + 158, shuchusen5, 1.5, 1.5 );

setEffRotateKey( spep_4 , shuchusen5, 180 );
setEffRotateKey( spep_4 + 158, shuchusen5, 180 );

setEffAlphaKey( spep_4 , shuchusen5, 0 );
setEffAlphaKey( spep_4 + 74, shuchusen5, 0 );
setEffAlphaKey( spep_4 + 75, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 186, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 187, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 158, shuchusen5, 0 );

-- ** エフェクト等 (前)
kick2 = entryEffectLife( spep_4 + 0, SP_06x, 158, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, kick2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 158, kick2, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kick2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 158, kick2, 1.0, 1.0 );
setEffAlphaKey( spep_4 + 0, kick2, 255 );
setEffAlphaKey( spep_4 + 158, kick2, 255 );
setEffRotateKey( spep_4 + 0, kick2, 0 );
setEffRotateKey( spep_4 + 158, kick2, 0 );

--流線
ryusen6 = entryEffectLife( spep_4 + 0,  914, 14, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, ryusen6, 0, 0 , 0 );
setEffMoveKey( spep_4 + 14, ryusen6, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, ryusen6, 2.7, 1.35 );
setEffScaleKey( spep_4 + 14, ryusen6, 2.7, 1.35 );

setEffRotateKey( spep_4 + 0, ryusen6, 90 );
setEffRotateKey( spep_4 + 14, ryusen6, 90 );

setEffAlphaKey( spep_4 + 0, ryusen6, 154 );
setEffAlphaKey( spep_4 + 14, ryusen6, 154 );

--流線
ryusen7 = entryEffectLife( spep_4 ,  921, 76, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 , ryusen7, 0, 0 , 0 );
setEffMoveKey( spep_4 + 76, ryusen7, 0, 0 , 0 );

setEffScaleKey( spep_4 , ryusen7, 1.4, 1.23 );
setEffScaleKey( spep_4 + 76, ryusen7, 1.4, 1.23 );

setEffRotateKey( spep_4 , ryusen7, 90 );
setEffRotateKey( spep_4 + 76, ryusen7, 90 );

setEffAlphaKey( spep_4 , ryusen7, 0 );
setEffAlphaKey( spep_4 + 48, ryusen7, 0 );
setEffAlphaKey( spep_4 + 49, ryusen7, 255 );
setEffAlphaKey( spep_4 + 50, ryusen7, 255 );
setEffAlphaKey( spep_4 + 74, ryusen7, 255 );
setEffAlphaKey( spep_4 + 75, ryusen7, 0 );
setEffAlphaKey( spep_4 + 76, ryusen7, 0 );

--集中線
shuchusen4 = entryEffectLife( spep_4 + 17,  906, 33, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 17, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 50, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 17, shuchusen4, 1.1, 1.1 );
setEffScaleKey( spep_4 + 50, shuchusen4, 1.1, 1.1 );

setEffRotateKey( spep_4 + 17, shuchusen4, 180 );
setEffRotateKey( spep_4 + 50, shuchusen4, 180 );

setEffAlphaKey( spep_4 + 17, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 48, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 49, shuchusen4, 0 );
setEffAlphaKey( spep_4 + 50, shuchusen4, 0 );


--文字エントリー
ctbaki2 = entryEffectLife( spep_4 -3 + 20,  10020, 20, 0x100, -1, 0, 20, -28.1 );--バキッ

setEffMoveKey( spep_4 -3 + 20, ctbaki2, 20, -28.1 , 0 );
setEffMoveKey( spep_4 -3 + 22, ctbaki2, 81.2, 5.6 , 0 );
setEffMoveKey( spep_4 -3 + 24, ctbaki2, 154.6, 37.3 , 0 );
setEffMoveKey( spep_4 -3 + 26, ctbaki2, 157.6, 45.9 , 0 );
setEffMoveKey( spep_4 -3 + 28, ctbaki2, 177.5, 42.1 , 0 );
setEffMoveKey( spep_4 -3 + 30, ctbaki2, 177.6, 43.9 , 0 );
setEffMoveKey( spep_4 -3 + 32, ctbaki2, 186.9, 52.2 , 0 );
setEffMoveKey( spep_4 -3 + 34, ctbaki2, 191.1, 43.4 , 0 );
setEffMoveKey( spep_4 -3 + 36, ctbaki2, 191.6, 56.7 , 0 );
setEffMoveKey( spep_4 -3 + 38, ctbaki2, 200.1, 50.5 , 0 );
setEffMoveKey( spep_4 -3 + 40, ctbaki2, 204.2, 52.3 , 0 );

setEffScaleKey( spep_4 -3 + 20, ctbaki2, 0.25, 0.25 );
setEffScaleKey( spep_4 -3 + 22, ctbaki2, 0.88, 0.88 );
setEffScaleKey( spep_4 -3 + 24, ctbaki2, 1.5, 1.5 );
setEffScaleKey( spep_4 -3 + 26, ctbaki2, 1.57, 1.57 );
setEffScaleKey( spep_4 -3 + 28, ctbaki2, 1.63, 1.63 );
setEffScaleKey( spep_4 -3 + 30, ctbaki2, 1.7, 1.7 );
setEffScaleKey( spep_4 -3 + 32, ctbaki2, 1.72, 1.72 );
setEffScaleKey( spep_4 -3 + 34, ctbaki2, 1.74, 1.74 );
setEffScaleKey( spep_4 -3 + 36, ctbaki2, 1.76, 1.76 );
setEffScaleKey( spep_4 -3 + 38, ctbaki2, 1.78, 1.78 );
setEffScaleKey( spep_4 -3 + 40, ctbaki2, 1.8, 1.8 );

setEffRotateKey( spep_4 -3 + 20, ctbaki2, 0 );
setEffRotateKey( spep_4 -3 + 40, ctbaki2, 0 );

setEffAlphaKey( spep_4 -3 + 20, ctbaki2, 255 );
setEffAlphaKey( spep_4 -3 + 30, ctbaki2, 255 );
setEffAlphaKey( spep_4 -3 + 32, ctbaki2, 204 );
setEffAlphaKey( spep_4 -3 + 34, ctbaki2, 153 );
setEffAlphaKey( spep_4 -3 + 36, ctbaki2, 102 );
setEffAlphaKey( spep_4 -3 + 38, ctbaki2, 51 );
setEffAlphaKey( spep_4 -3 + 40, ctbaki2, 0 );

--敵の動き
setDisp( spep_4+8   + 0, 1, 1 );
setDisp( spep_4   + 60, 1, 0 );

changeAnime( spep_4   + 0, 1, 106 );
changeAnime( spep_4 -3  + 20, 1, 108 );

setMoveKey( spep_4  + 8, 1, 0, 649.9 , 0 );
setMoveKey( spep_4  + 10, 1, -1.3, 286.7 , 0 );
setMoveKey( spep_4  + 12, 1, -2.6, 100.1 , 0 );
--setMoveKey( spep_4 -3 + 14, 1, 1.2, -29.1 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 5.2, -116.4 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 0, -170 , 0 );
setMoveKey( spep_4 -3 + 19, 1, 0, -170 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -64.9, -165 , 0 );
setMoveKey( spep_4 -3 + 23, 1, -106.4, 7.8 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -106.4, 7.8 , 0 );
setMoveKey( spep_4 -3 + 25, 1, -62.6, -155.2 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -45.3, -87.2 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -48.3, -133.4 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -62, -161.6 , 0 );
setMoveKey( spep_4 -3 + 32, 1, -76.2, -139.5 , 0 );
setMoveKey( spep_4 -3 + 34, 1, -76.2, -125.9 , 0 );
setMoveKey( spep_4 -3 + 36, 1, -62.3, -145 , 0 );
setMoveKey( spep_4 -3 + 38, 1, -60.4, -163 , 0 );
setMoveKey( spep_4 -3 + 40, 1, -63.8, -154.1 , 0 );
setMoveKey( spep_4 -3 + 42, 1, -62, -143.3 , 0 );
setMoveKey( spep_4 -3 + 44, 1, -61.4, -144.1 , 0 );
setMoveKey( spep_4 -3 + 46, 1, -58.9, -161.3 , 0 );
setMoveKey( spep_4 -3 + 48, 1, -63.4, -192.6 , 0 );
setMoveKey( spep_4 -3 + 50, 1, -84.4, -214.6 , 0 );
setMoveKey( spep_4 -3 + 52, 1, -87.6, -116.7 , 0 );
setMoveKey( spep_4 -3 + 54, 1, -78.7, 265.9 , 0 );
setMoveKey( spep_4 -3 + 56, 1, -55.2, 845 , 0 );
setMoveKey( spep_4 -3 + 58, 1, -32.7, 1363.9 , 0 );
setMoveKey( spep_4 -3 + 60, 1, -51.1, 1640 , 0 );

setScaleKey( spep_4 -3 + 8, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 10, 1, 1.63, 1.63 );
setScaleKey( spep_4 -3 + 12, 1, 1.7, 1.7 );
setScaleKey( spep_4 -3 + 14, 1, 1.75, 1.75 );
setScaleKey( spep_4 -3 + 16, 1, 1.78, 1.78 );
setScaleKey( spep_4 -3 + 18, 1, 1.8, 1.8 );
setScaleKey( spep_4 -3 + 22, 1, 1.8, 1.8 );
setScaleKey( spep_4 -3 + 23, 1, 2.16, 2.16 );
setScaleKey( spep_4 -3 + 24, 1, 1.8, 1.8 );
setScaleKey( spep_4 -3 + 26, 1, 2.07, 2.07 );
setScaleKey( spep_4 -3 + 28, 1, 1.94, 1.94 );
setScaleKey( spep_4 -3 + 30, 1, 1.8, 1.8 );
setScaleKey( spep_4 -3 + 32, 1, 1.89, 1.89 );
setScaleKey( spep_4 -3 + 34, 1, 1.98, 1.98 );
setScaleKey( spep_4 -3 + 36, 1, 1.89, 1.89 );
setScaleKey( spep_4 -3 + 38, 1, 1.8, 1.8 );
setScaleKey( spep_4 -3 + 40, 1, 1.84, 1.84 );
setScaleKey( spep_4 -3 + 42, 1, 1.89, 1.89 );
setScaleKey( spep_4 -3 + 44, 1, 1.84, 1.84 );
setScaleKey( spep_4 -3 + 46, 1, 1.8, 1.8 );
setScaleKey( spep_4 -3 + 48, 1, 2.07, 2.07 );
setScaleKey( spep_4 -3 + 50, 1, 2.34, 2.34 );
setScaleKey( spep_4 -3 + 52, 1, 2.64, 2.64 );
setScaleKey( spep_4 -3 + 54, 1, 2.99, 2.99 );
setScaleKey( spep_4 -3 + 56, 1, 3.38, 3.38 );
setScaleKey( spep_4 -3 + 58, 1, 3.76, 3.76 );
setScaleKey( spep_4 -3 + 60, 1, 4.1, 4.1 );

setRotateKey( spep_4 -3 + 8, 1, -170 );
setRotateKey( spep_4 -3 + 19, 1, -170 );
setRotateKey( spep_4 -3 + 20, 1, -140 );
setRotateKey( spep_4 -3 + 60, 1, -140 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_4 +70, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_4 +70, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--文字エントリー
ctgogo = entryEffectLife( spep_4 +82,  190006, 72, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ

setEffShake( spep_4 +82, ctgogo, 72, 10 );

setEffMoveKey( spep_4 +82, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_4 +154, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_4 +82, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_4 +146, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_4 +148, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_4 +150, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_4 +152, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_4 +154, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_4 +82, ctgogo, 0 );
setEffRotateKey( spep_4 +154, ctgogo, 0 );

setEffAlphaKey( spep_4 +82, ctgogo, 0 );
setEffAlphaKey( spep_4 +83, ctgogo, 255 );
setEffAlphaKey( spep_4 +84, ctgogo, 255 );
setEffAlphaKey( spep_4 +154, ctgogo, 255 );

--SE
playSe( spep_4, 43); --瞬間移動
playSe( spep_4+18, 1010); --キック
playSe( spep_4+82, SE_04); --ゴゴゴ


--白フェード
entryFade( spep_4 +14 , 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--黒背景
entryFadeBg(spep_4, 0, 158, 0, 0, 0, 0, 160);  -- 黒　背
entryFadeBg(spep_4+76, 6, 76, 0, 0, 0, 0, 255);  -- 黒　背

--白フェード
entryFade( spep_4 +150 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
--次の準備
spep_5=spep_4+158;
--------------------------------------
--カードカットイン(90F)
--------------------------------------


if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_5, SE_05);
    speff = entryEffect( spep_5,   1507,   0,  -1,  0,  0,  0);   -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
    setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_5, SE_05);
    speff = entryEffect( spep_5, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_5, SE_05);
    speff = entryEffect( spep_5, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end
    
    
    --[[speff = entryEffect(  spep_5,   1507,   0,  -1,  0,  0,  0);   -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
    setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え]]
    
    shuchusen = entryEffectLife( spep_5, 906, 90, 0x100,  -1, 0,  0,  0);
    
    setEffMoveKey(  spep_5,  shuchusen,  0,  0);
    setEffMoveKey(  spep_5+90,  shuchusen,  0,  0);
    setEffScaleKey(  spep_5,  shuchusen,  1.6,  1.6);
    setEffScaleKey(  spep_5+90,  shuchusen,  1.6,  1.6);
    setEffRotateKey(  spep_5,  shuchusen,  0);
    setEffRotateKey(  spep_5+90,  shuchusen,  0);
    setEffAlphaKey(  spep_5,  shuchusen,  255);
    setEffAlphaKey(  spep_5+90,  shuchusen,  255);

-- ** エフェクト等 ** --
entryFade(spep_5+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_6=spep_5+90;
------------------------------------------------------
-- 技発射
------------------------------------------------------
-- ** エフェクト等 (前)
beam = entryEffectLife( spep_6 + 0, SP_07x, 140, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_6 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_6 + 140, beam, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_6 + 140, beam, 1.0, 1.0 );
setEffAlphaKey( spep_6 + 0, beam, 255 );
setEffAlphaKey( spep_6 + 140, beam, 255 );
setEffRotateKey( spep_6 + 0, beam, 0 );
setEffRotateKey( spep_6 + 140, beam, 0 );

--敵の動き
setDisp( spep_6   + 3, 1, 1 );
setDisp( spep_6   + 28, 1, 0 );

changeAnime( spep_6   + 0, 1, 106 );
changeAnime( spep_6 -3  + 20, 1, 108 );

setMoveKey( spep_6 -3 + 6, 1, -34.9, 874.9 , 0 );
setMoveKey( spep_6 -3 + 8, 1, -17.4, 512.4 , 0 );
setMoveKey( spep_6 -3 + 10, 1, -8, 349.6 , 0 );
setMoveKey( spep_6 -3 + 12, 1, -1.1, 214.2 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 4.6, 130.3 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 3.8, 84.1 , 0 );
setMoveKey( spep_6 -3 + 18, 1, -0.1, 60 , 0 );
setMoveKey( spep_6 -3 + 19, 1, -0.1, 60 , 0 );
setMoveKey( spep_6 -3 + 21, 1, 120, 143.9 , 0 );
setMoveKey( spep_6 -3 + 23, 1, 101.9, 116.2 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 116.3, 131.1 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 122.1, 151.8 , 0 );
setMoveKey( spep_6  + 28, 1, 103.9, 135.2 , 0 );

setScaleKey( spep_6 -3 + 6, 1, 2.5, 2.5 );
setScaleKey( spep_6 -3 + 8, 1, 2, 2 );
setScaleKey( spep_6 -3 + 12, 1, 2, 2 );
setScaleKey( spep_6 -3 + 14, 1, 2.2, 2.2 );
setScaleKey( spep_6 -3 + 16, 1, 2.4, 2.4 );
setScaleKey( spep_6 -3 + 19, 1, 2.4, 2.4 );
setScaleKey( spep_6 -3 + 20, 1, 1.8, 1.8 );
setScaleKey( spep_6 -3 + 22, 1, 1.5, 1.5 );
setScaleKey( spep_6 -3 + 24, 1, 1.65, 1.65 );
setScaleKey( spep_6 -3 + 26, 1, 1.8, 1.8 );
setScaleKey( spep_6  + 28, 1, 1.65, 1.65 );

setRotateKey( spep_6 -3 + 6, 1, -130 );
setRotateKey( spep_6 -3 + 19, 1, -130 );
setRotateKey( spep_6 -3 + 20, 1, 0 );
setRotateKey( spep_6  + 28, 1, 0 );

--流線
ryusen8 = entryEffectLife( spep_6,  921, 138, 0x80, -1, 0, 20, -35 );

setEffMoveKey( spep_6 , ryusen8, 20, -30 , 0 );
setEffMoveKey( spep_6 + 138, ryusen8, 20, -30 , 0 );

setEffScaleKey( spep_6 , ryusen8, 1.6, 1.2 );
setEffScaleKey( spep_6 + 138, ryusen8, 1.6, 1.2 );

setEffRotateKey( spep_6 , ryusen8, -40 );--155
setEffRotateKey( spep_6 + 138, ryusen8, -40 );

setEffAlphaKey( spep_6, ryusen8, 255 );
setEffAlphaKey( spep_6 + 138, ryusen8, 255 );

--集中線
shuchusen6 = entryEffectLife( spep_6  ,  906, 138, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_6  , shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_6  + 138, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_6  , shuchusen6, 1.1, 1.1 );
setEffScaleKey( spep_6  + 138, shuchusen6, 1.1, 1.1 );

setEffRotateKey( spep_6  , shuchusen6, 0 );
setEffRotateKey( spep_6  + 138, shuchusen6, 0 );

setEffAlphaKey( spep_6  , shuchusen6, 255 );
setEffAlphaKey( spep_6  + 138, shuchusen6, 255 );

--SE
playSe( spep_6, 1036); --気ダメ
playSe( spep_6+18, 1022); --うつ


--黒背景
entryFadeBg(spep_6, 0, 140, 0, 0, 0, 0, 255);  -- 黒　背

--白フェード
entryFade( spep_6 +12 , 0, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_6 +130 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
--次の準備
spep_7=spep_6+144;
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
endPhase(spep_7 + 110);
end