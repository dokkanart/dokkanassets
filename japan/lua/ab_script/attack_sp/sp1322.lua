--1005950:スーパーΣI_スーパーΣI・ワイヤー・アーム
--sp_effect_b1_00081

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
SP_01=	153741	;--	アイドリング
SP_02=	153742	;--	気溜め
SP_03=	153743	;--	気溜めカットイン
SP_04=	153744	;--	"必殺技_腕が伸びる
SP_05=	153745	;--	被弾

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
-- アイドリング
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
idling = entryEffect( spep_0 + 0, SP_01,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, idling, 0, 0 , 0 );
setEffMoveKey( spep_0 + 36, idling, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, idling, 1.0, 1.0 );
setEffScaleKey( spep_0 + 36, idling, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, idling, 0 );
setEffRotateKey( spep_0 + 36, idling, 0 );
setEffAlphaKey( spep_0 + 0, idling, 255 );
setEffAlphaKey( spep_0 + 34, idling, 255 );
setEffAlphaKey( spep_0 + 35, idling, 255 );
setEffAlphaKey( spep_0 + 36, idling, 0 );

--次の準備
spep_1 = spep_0+36;
------------------------------------------------------
-- 貯め始め
------------------------------------------------------
-- ** エフェクト等 ** --
tame1 = entryEffect( spep_1 + 0, SP_02,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 40, tame1, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tame1, 1.0, 1.0 );
setEffScaleKey( spep_1 + 40, tame1, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame1, 0 );
setEffRotateKey( spep_1 + 40, tame1, 0 );
setEffAlphaKey( spep_1 + 0, tame1, 255 );
setEffAlphaKey( spep_1 + 40, tame1, 255 );

--文字エントリー
ctzuzuzun = entryEffectLife( spep_1 + 0,  10013, 36, 0x100, -1, 0, 20.1, 189.8 );--ズズズンッ

setEffMoveKey( spep_1 + 0, ctzuzuzun, 20.1, 189.8 , 0 );
setEffMoveKey( spep_1 + 2, ctzuzuzun, 26.7, 243 , 0 );
setEffMoveKey( spep_1 + 4, ctzuzuzun, 45, 305.1 , 0 );
setEffMoveKey( spep_1 + 6, ctzuzuzun, 41.6, 327.7 , 0 );
setEffMoveKey( spep_1 + 8, ctzuzuzun, 46.7, 322.4 , 0 );
setEffMoveKey( spep_1 + 10, ctzuzuzun, 32.2, 298.1 , 0 );
setEffMoveKey( spep_1 + 12, ctzuzuzun, 41.1, 304.5 , 0 );
setEffMoveKey( spep_1 + 14, ctzuzuzun, 31.1, 294.5 , 0 );
setEffMoveKey( spep_1 + 16, ctzuzuzun, 41.1, 304.5 , 0 );
setEffMoveKey( spep_1 + 18, ctzuzuzun, 31.1, 294.5 , 0 );
setEffMoveKey( spep_1 + 20, ctzuzuzun, 41.1, 304.5 , 0 );
setEffMoveKey( spep_1 + 22, ctzuzuzun, 31.1, 294.5 , 0 );
setEffMoveKey( spep_1 + 24, ctzuzuzun, 41.1, 304.5 , 0 );
setEffMoveKey( spep_1 + 26, ctzuzuzun, 31.1, 294.5 , 0 );
setEffMoveKey( spep_1 + 28, ctzuzuzun, 41.1, 304.5 , 0 );
setEffMoveKey( spep_1 + 30, ctzuzuzun, 31.1, 294.5 , 0 );
setEffMoveKey( spep_1 + 32, ctzuzuzun, 41.1, 304.5 , 0 );
setEffMoveKey( spep_1 + 34, ctzuzuzun, 31.1, 294.5 , 0 );
setEffMoveKey( spep_1 + 36, ctzuzuzun, 41.1, 304.5 , 0 );

setEffScaleKey( spep_1 + 0, ctzuzuzun, 1.11, 1.11 );
setEffScaleKey( spep_1 + 2, ctzuzuzun, 1.81, 1.81 );
setEffScaleKey( spep_1 + 4, ctzuzuzun, 2.48, 2.48 );
setEffScaleKey( spep_1 + 6, ctzuzuzun, 2.92, 2.92 );
setEffScaleKey( spep_1 + 36, ctzuzuzun, 2.92, 2.92 );

setEffRotateKey( spep_1 + 0, ctzuzuzun, -5 );
setEffRotateKey( spep_1 + 36, ctzuzuzun, -5 );

setEffAlphaKey( spep_1 + 0, ctzuzuzun, 255 );
setEffAlphaKey( spep_1 + 36, ctzuzuzun, 255 );

--SE
playSe( spep_1, 50);--気溜め

--白フェード
entryFade( spep_1+ 32, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_2 = spep_1+40;
------------------------------------------------------
-- 貯め
------------------------------------------------------
-- ** エフェクト等 ** --
tame2 = entryEffect( spep_2 + 0, SP_03,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 100, tame2, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame2, 1.0, 1.0 );
setEffScaleKey( spep_2 + 100, tame2, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame2, 0 );
setEffRotateKey( spep_2 + 100, tame2, 0 );
setEffAlphaKey( spep_2 + 0, tame2, 255 );
setEffAlphaKey( spep_2 + 100, tame2, 255 );

--***カットイン***
speff = entryEffect(  spep_2 - 4 +14,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff3 = entryEffect(  spep_2 - 4 +14,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff3, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_2 - 4 +26, 190006, 72, 0x100, -1, 0, 0, 540);    -- ゴゴゴゴ

setEffMoveKey(  spep_2 - 4 +26,  ctgogo,  0,  540);
setEffMoveKey(  spep_2 - 4 +98,  ctgogo,  0,  540);

setEffAlphaKey( spep_2 - 4  + 26, ctgogo, 0 );
setEffAlphaKey( spep_2 - 4  + 27, ctgogo, 255 );
setEffAlphaKey( spep_2 - 4  + 28, ctgogo, 255 );
setEffAlphaKey( spep_2 - 4  + 88, ctgogo, 255 );
setEffAlphaKey( spep_2 - 4  + 90, ctgogo, 255 );
setEffAlphaKey( spep_2 - 4  + 92, ctgogo, 191 );
setEffAlphaKey( spep_2 - 4  + 94, ctgogo, 128 );
setEffAlphaKey( spep_2 - 4  + 96, ctgogo, 64 );
setEffAlphaKey( spep_2 - 4  + 98, ctgogo, 0 );

setEffRotateKey(  spep_2 - 4 +26,  ctgogo,  0);
setEffRotateKey(  spep_2 - 4 +98,  ctgogo,  0);

setEffScaleKey(  spep_2 - 4 +26,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 - 4 +90,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 - 4 +98,  ctgogo, 1.07, 1.07 );

--SE
--playSe( spep_2, 1036);--溜め
playSe( spep_2+22, 1018);--ごごご

--白フェード
entryFade( spep_2+ 92, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_3 = spep_2+100;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

--白フェード
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
-- 手が伸びる
------------------------------------------------------
-- ** エフェクト等 ** --
extend = entryEffect( spep_4 + 0, SP_04,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, extend, 0, 0 , 0 );
setEffMoveKey( spep_4 + 60, extend, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, extend, 1.0, 1.0 );
setEffScaleKey( spep_4 + 60, extend, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, extend, 0 );
setEffRotateKey( spep_4 + 60, extend, 0 );
setEffAlphaKey( spep_4 + 0, extend, 255 );
setEffAlphaKey( spep_4 + 60, extend, 255 );


--流線
ryusen1 = entryEffectLife( spep_4 -3 + 18,  914, 40, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 -3 + 18, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_4 -3 + 58, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_4 -3 + 18, ryusen1, 2, 1 );
setEffScaleKey( spep_4 -3 + 58, ryusen1, 2, 1 );

setEffRotateKey( spep_4 -3 + 18, ryusen1, 0 );
setEffRotateKey( spep_4 -3 + 58, ryusen1, 0 );

setEffAlphaKey( spep_4 -3 + 18, ryusen1, 43 );
setEffAlphaKey( spep_4 -3 + 20, ryusen1, 85 );
setEffAlphaKey( spep_4 -3 + 22, ryusen1, 128 );
setEffAlphaKey( spep_4 -3 + 24, ryusen1, 170 );
setEffAlphaKey( spep_4 -3 + 26, ryusen1, 213 );
setEffAlphaKey( spep_4 -3 + 28, ryusen1, 255 );
setEffAlphaKey( spep_4 -3 + 58, ryusen1, 255 );

--SE
--playSe( spep_4+10, 1007);--バッ
playSe( spep_4+14, 44);--手が伸びる

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 16, 10, 34 , 0, 0, 0, 0, 200 );  --黒　背景

--白フェード
entryFade( spep_4 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_5 = spep_4+60;

------------------------------------------------------
--  敵に当たる
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_5 + 0, SP_05,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, hit, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, hit, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit, 0 );
setEffRotateKey( spep_5 + 100, hit, 0 );
setEffAlphaKey( spep_5 + 0, hit, 255 );
setEffAlphaKey( spep_5 + 100, hit, 255 );

--流線
ryusen2 = entryEffectLife( spep_5 + 0,  914, 98, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 98, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, ryusen2, 2, 1 );
setEffScaleKey( spep_5 + 98, ryusen2, 2, 1 );

setEffRotateKey( spep_5 + 0, ryusen2, 0 );
setEffRotateKey( spep_5 + 98, ryusen2, 0 );

setEffAlphaKey( spep_5 + 0, ryusen2, 255 );
setEffAlphaKey( spep_5 + 98, ryusen2, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 98 , 0, 0, 0, 0, 200 );  --黒　背景

--SE
SE0=playSe( spep_5, 1018);--手が伸びる


--敵の動き
setDisp( spep_5  + 0, 1, 1 );
setDisp( spep_5  + 98, 1, 0 );

changeAnime( spep_5  + 0, 1, 104 );
changeAnime( spep_5 -3 + 50, 1, 108 );

setMoveKey( spep_5  + 0, 1, 491.2, 29.4 , 0 );
--setMoveKey( spep_5 -3 + 2, 1, 433.2, 29.4 , 0 );
setMoveKey( spep_5 -3 + 4, 1, 375.2, 29.4 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 317.2, 29.4 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 259.2, 29.4 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 201.2, 29.4 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 111.1, 29.4 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 107.4, 33.4 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 99.6, 25.4 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 91.8, 33.4 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 76, 25.3 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 76.3, 33.3 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 60.5, 25.3 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 52.7, 33.3 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 52.9, 25.3 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 37.1, 33.3 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 33.6, 25.3 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 30, 33.3 , 0 );

setScaleKey( spep_5  + 0, 1, 1.4, 1.4 );
--setScaleKey( spep_5 -3 + 2, 1, 1.42, 1.42 );
setScaleKey( spep_5 -3 + 4, 1, 1.43, 1.43 );
setScaleKey( spep_5 -3 + 6, 1, 1.45, 1.45 );
setScaleKey( spep_5 -3 + 8, 1, 1.47, 1.47 );
setScaleKey( spep_5 -3 + 10, 1, 1.48, 1.48 );
setScaleKey( spep_5 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5  + 30, 1, 1.5, 1.5 );

setRotateKey( spep_5  + 0, 1, 0 );
setRotateKey( spep_5  + 30, 1, 0 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_5 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    
    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
     --敵の情報
     setMoveKey( SP_dodge, 1, 30, 33.3 , 0 );
     setScaleKey( SP_dodge, 1, 1.5, 1.5 );
     setRotateKey( SP_dodge, 1, 0 );

     setMoveKey( SP_dodge + 9, 1, 30, 33.3 , 0 );
     setScaleKey( SP_dodge + 9, 1, 1.5, 1.5 );
     setRotateKey( SP_dodge + 9, 1, 0 );



    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
    ------------------------------------------------------
    -- 回避しなかった場合
    ------------------------------------------------------



setMoveKey( spep_5 -3 + 36, 1, 34.5, 25.3 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 26.9, 29.3 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 27.4, 33.2 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 19.8, 29.2 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 16.3, 29.2 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 16.7, 33.2 , 0 );
setMoveKey( spep_5 -3 + 49, 1, 13.1, 25.2 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 41.9, 15.6 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 75.6, 40.1 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 152.4, 12.6 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 199.2, 33.9 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 259.4, 37.4 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 307.7, 31.7 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 372, 42.1 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 421.6, 34.1 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 479.2, 42.1 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 544.8, 34.1 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 594.4, 42.1 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 599.8, 34.1 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 605.1, 42.1 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 618.4, 34.1 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 623.8, 34.1 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 629.1, 42.1 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 626.4, 34.1 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 639.8, 42.1 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 637.1, 34.1 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 642.4, 42.1 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 655.8, 34.1 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 653.1, 42.1 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 658.4, 34.1 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 663.8, 42.1 , 0 );
setMoveKey( spep_5  + 98, 1, 677.1, 34.1 , 0 );


setScaleKey( spep_5 -3 + 49, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 50, 1, 1.23, 1.23 );
setScaleKey( spep_5  + 98, 1, 1.23, 1.23 );


setRotateKey( spep_5  + 98, 1, 0 );

--SE
playSe( spep_5+48, 1010);--敵に当たる

--白フェード
entryFade( spep_5 + 92, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_6 = spep_5+100;

------------------------------------------------------
--  ガッ
------------------------------------------------------

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_6 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_6 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_6 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_6 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_6 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_6 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_6 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_6 + 100, bakuhatsu, 255 );



-- ** ひび割れ ** --
hibiware = entryEffect( spep_6 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_6 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_6 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_6 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_6 + 2, hibiware, 0 );
setEffRotateKey( spep_6 + 100, hibiware, 0 );

setEffAlphaKey( spep_6 + 2, hibiware, 0 );
setEffAlphaKey( spep_6 + 13, hibiware, 0 );
setEffAlphaKey( spep_6 + 14, hibiware, 255 );
setEffAlphaKey( spep_6 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen_g = entryEffectLife( spep_6 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 14, shuchusen_g, 32, 25 );

setEffMoveKey( spep_6 + 14, shuchusen_g, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, shuchusen_g, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen_g, 1, 1 );
setEffScaleKey( spep_6 + 46, shuchusen_g, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen_g, 0 );
setEffRotateKey( spep_6 + 46, shuchusen_g, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen_g, 255 );
setEffAlphaKey( spep_6 + 28, shuchusen_g, 255 );
setEffAlphaKey( spep_6 + 30, shuchusen_g, 252 );
setEffAlphaKey( spep_6 + 32, shuchusen_g, 242 );
setEffAlphaKey( spep_6 + 34, shuchusen_g, 227 );
setEffAlphaKey( spep_6 + 36, shuchusen_g, 205 );
setEffAlphaKey( spep_6 + 38, shuchusen_g, 176 );
setEffAlphaKey( spep_6 + 40, shuchusen_g, 142 );
setEffAlphaKey( spep_6 + 42, shuchusen_g, 101 );
setEffAlphaKey( spep_6 + 44, shuchusen_g, 54 );
setEffAlphaKey( spep_6 + 46, shuchusen_g, 0 );

kuroshuchusen_g = entryEffectLife( spep_6 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_6 + 14, kuroshuchusen_g, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, kuroshuchusen_g, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, kuroshuchusen_g, 1, 1 );
setEffScaleKey( spep_6 + 100, kuroshuchusen_g, 1, 1 );

setEffRotateKey( spep_6 + 14, kuroshuchusen_g, 0 );
setEffRotateKey( spep_6 + 100, kuroshuchusen_g, 0 );

setEffAlphaKey( spep_6 + 14, kuroshuchusen_g, 255 );
setEffAlphaKey( spep_6 + 100, kuroshuchusen_g, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_6 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_6 + 14, ctga, 14, 20 );

setEffMoveKey( spep_6 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_6 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_6 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_6 + 14, ctga, -10.9 );
setEffRotateKey( spep_6 + 15, ctga, -10.9 );
setEffRotateKey( spep_6 + 16, ctga, -14.9 );
setEffRotateKey( spep_6 + 17, ctga, -14.9 );
setEffRotateKey( spep_6 + 18, ctga, -10.9 );
setEffRotateKey( spep_6 + 19, ctga, -10.9 );
setEffRotateKey( spep_6 + 20, ctga, -14.9 );
setEffRotateKey( spep_6 + 21, ctga, -14.9 );
setEffRotateKey( spep_6 + 22, ctga, -10.9 );
setEffRotateKey( spep_6 + 23, ctga, -10.9 );
setEffRotateKey( spep_6 + 24, ctga, -14.9 );
setEffRotateKey( spep_6 + 25, ctga, -14.9 );
setEffRotateKey( spep_6 + 26, ctga, -10.9 );
setEffRotateKey( spep_6 + 27, ctga, -10.9 );
setEffRotateKey( spep_6 + 28, ctga, -14.9 );
setEffRotateKey( spep_6 + 100, ctga, -14.9 );

setEffAlphaKey( spep_6 + 14, ctga, 255 );
setEffAlphaKey( spep_6 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
changeAnime( spep_6 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_6 + 0, 1, 31, -3.9 , 0 );
--setMoveKey( spep_6 + 0, 1, 36.2, 7.9 , 0 );
--setMoveKey( spep_6 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_6 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_6 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_6 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_6 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_6 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_6 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_6 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_6 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_6 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_6 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_6 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_6 + 100, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_6 + 0, 1, 0.3, 0.3 );
--setScaleKey( spep_6 + 2, 1, 0.35, 0.35 );
--setScaleKey( spep_6 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_6 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_6 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_6 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 110, 1, 1.6, 1.6 );


setRotateKey( spep_6 + 0, 1, -40 );
setRotateKey( spep_6 + 1, 1, -40 );
setRotateKey( spep_6 + 2, 1, 80 );
setRotateKey( spep_6 + 3, 1, 80 );
setRotateKey( spep_6 + 4, 1, 200 );
setRotateKey( spep_6 + 5, 1, 200 );
setRotateKey( spep_6 + 6, 1, 360 );
setRotateKey( spep_6 + 7, 1, 360 );
setRotateKey( spep_6 + 8, 1, 558 );
setRotateKey( spep_6 + 9, 1, 558 );
setRotateKey( spep_6 + 10, 1, 425 );
setRotateKey( spep_6 + 11, 1, 425 );
setRotateKey( spep_6 + 12, 1, -40 );
setRotateKey( spep_6 + 100, 1, -40 );

-- ** 音 ** --
playSe( spep_6 + 0, 1023 );  --爆発音
playSe( spep_6 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 14 );
endPhase( spep_6 + 100 );
else 
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- アイドリング
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
idling = entryEffect( spep_0 + 0, SP_01,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, idling, 0, 0 , 0 );
setEffMoveKey( spep_0 + 36, idling, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, idling, 1.0, 1.0 );
setEffScaleKey( spep_0 + 36, idling, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, idling, 0 );
setEffRotateKey( spep_0 + 36, idling, 0 );
setEffAlphaKey( spep_0 + 0, idling, 255 );
setEffAlphaKey( spep_0 + 34, idling, 255 );
setEffAlphaKey( spep_0 + 35, idling, 255 );
setEffAlphaKey( spep_0 + 36, idling, 0 );

--次の準備
spep_1 = spep_0+36;
------------------------------------------------------
-- 貯め始め
------------------------------------------------------
-- ** エフェクト等 ** --
tame1 = entryEffect( spep_1 + 0, SP_02,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 40, tame1, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tame1, 1.0, 1.0 );
setEffScaleKey( spep_1 + 40, tame1, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame1, 0 );
setEffRotateKey( spep_1 + 40, tame1, 0 );
setEffAlphaKey( spep_1 + 0, tame1, 255 );
setEffAlphaKey( spep_1 + 40, tame1, 255 );

--文字エントリー
ctzuzuzun = entryEffectLife( spep_1 + 0,  10013, 36, 0x100, -1, 0, 20.1, 189.8 );--ズズズンッ

setEffMoveKey( spep_1 + 0, ctzuzuzun, 20.1, 189.8 , 0 );
setEffMoveKey( spep_1 + 2, ctzuzuzun, 26.7, 243 , 0 );
setEffMoveKey( spep_1 + 4, ctzuzuzun, 45, 305.1 , 0 );
setEffMoveKey( spep_1 + 6, ctzuzuzun, 41.6, 327.7 , 0 );
setEffMoveKey( spep_1 + 8, ctzuzuzun, 46.7, 322.4 , 0 );
setEffMoveKey( spep_1 + 10, ctzuzuzun, 32.2, 298.1 , 0 );
setEffMoveKey( spep_1 + 12, ctzuzuzun, 41.1, 304.5 , 0 );
setEffMoveKey( spep_1 + 14, ctzuzuzun, 31.1, 294.5 , 0 );
setEffMoveKey( spep_1 + 16, ctzuzuzun, 41.1, 304.5 , 0 );
setEffMoveKey( spep_1 + 18, ctzuzuzun, 31.1, 294.5 , 0 );
setEffMoveKey( spep_1 + 20, ctzuzuzun, 41.1, 304.5 , 0 );
setEffMoveKey( spep_1 + 22, ctzuzuzun, 31.1, 294.5 , 0 );
setEffMoveKey( spep_1 + 24, ctzuzuzun, 41.1, 304.5 , 0 );
setEffMoveKey( spep_1 + 26, ctzuzuzun, 31.1, 294.5 , 0 );
setEffMoveKey( spep_1 + 28, ctzuzuzun, 41.1, 304.5 , 0 );
setEffMoveKey( spep_1 + 30, ctzuzuzun, 31.1, 294.5 , 0 );
setEffMoveKey( spep_1 + 32, ctzuzuzun, 41.1, 304.5 , 0 );
setEffMoveKey( spep_1 + 34, ctzuzuzun, 31.1, 294.5 , 0 );
setEffMoveKey( spep_1 + 36, ctzuzuzun, 41.1, 304.5 , 0 );

setEffScaleKey( spep_1 + 0, ctzuzuzun, 1.11, 1.11 );
setEffScaleKey( spep_1 + 2, ctzuzuzun, 1.81, 1.81 );
setEffScaleKey( spep_1 + 4, ctzuzuzun, 2.48, 2.48 );
setEffScaleKey( spep_1 + 6, ctzuzuzun, 2.92, 2.92 );
setEffScaleKey( spep_1 + 36, ctzuzuzun, 2.92, 2.92 );

setEffRotateKey( spep_1 + 0, ctzuzuzun, 5 );
setEffRotateKey( spep_1 + 36, ctzuzuzun, 5 );

setEffAlphaKey( spep_1 + 0, ctzuzuzun, 255 );
setEffAlphaKey( spep_1 + 36, ctzuzuzun, 255 );

--SE
playSe( spep_1, 50);--気溜め

--白フェード
entryFade( spep_1+ 32, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_2 = spep_1+40;
------------------------------------------------------
-- 貯め
------------------------------------------------------
-- ** エフェクト等 ** --
tame2 = entryEffect( spep_2 + 0, SP_03,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 100, tame2, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame2, 1.0, 1.0 );
setEffScaleKey( spep_2 + 100, tame2, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame2, 0 );
setEffRotateKey( spep_2 + 100, tame2, 0 );
setEffAlphaKey( spep_2 + 0, tame2, 255 );
setEffAlphaKey( spep_2 + 100, tame2, 255 );

--***カットイン***
--speff = entryEffect(  spep_2 - 4 +14,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff3 = entryEffect(  spep_2 - 4 +14,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff3, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_2 - 4 +26, 190006, 72, 0x100, -1, 0, 0, 540);    -- ゴゴゴゴ

setEffMoveKey(  spep_2 - 4 +26,  ctgogo,  0,  540);
setEffMoveKey(  spep_2 - 4 +98,  ctgogo,  0,  540);

setEffAlphaKey( spep_2 - 4  + 26, ctgogo, 0 );
setEffAlphaKey( spep_2 - 4  + 27, ctgogo, 255 );
setEffAlphaKey( spep_2 - 4  + 28, ctgogo, 255 );
setEffAlphaKey( spep_2 - 4  + 88, ctgogo, 255 );
setEffAlphaKey( spep_2 - 4  + 90, ctgogo, 255 );
setEffAlphaKey( spep_2 - 4  + 92, ctgogo, 191 );
setEffAlphaKey( spep_2 - 4  + 94, ctgogo, 128 );
setEffAlphaKey( spep_2 - 4  + 96, ctgogo, 64 );
setEffAlphaKey( spep_2 - 4  + 98, ctgogo, 0 );

setEffRotateKey(  spep_2 - 4 +26,  ctgogo,  0);
setEffRotateKey(  spep_2 - 4 +98,  ctgogo,  0);

setEffScaleKey(  spep_2 - 4 +26,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 - 4 +90,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 - 4 +98,  ctgogo, -1.07, 1.07 );

--SE
--playSe( spep_2, 1036);--溜め
playSe( spep_2+22, 1018);--ごごご

--白フェード
entryFade( spep_2+ 92, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_3 = spep_2+100;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

--白フェード
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
-- 手が伸びる
------------------------------------------------------
-- ** エフェクト等 ** --
extend = entryEffect( spep_4 + 0, SP_04,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, extend, 0, 0 , 0 );
setEffMoveKey( spep_4 + 60, extend, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, extend, 1.0, 1.0 );
setEffScaleKey( spep_4 + 60, extend, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, extend, 0 );
setEffRotateKey( spep_4 + 60, extend, 0 );
setEffAlphaKey( spep_4 + 0, extend, 255 );
setEffAlphaKey( spep_4 + 60, extend, 255 );


--流線
ryusen1 = entryEffectLife( spep_4 -3 + 18,  914, 40, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 -3 + 18, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_4 -3 + 58, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_4 -3 + 18, ryusen1, 2, 1 );
setEffScaleKey( spep_4 -3 + 58, ryusen1, 2, 1 );

setEffRotateKey( spep_4 -3 + 18, ryusen1, 0 );
setEffRotateKey( spep_4 -3 + 58, ryusen1, 0 );

setEffAlphaKey( spep_4 -3 + 18, ryusen1, 43 );
setEffAlphaKey( spep_4 -3 + 20, ryusen1, 85 );
setEffAlphaKey( spep_4 -3 + 22, ryusen1, 128 );
setEffAlphaKey( spep_4 -3 + 24, ryusen1, 170 );
setEffAlphaKey( spep_4 -3 + 26, ryusen1, 213 );
setEffAlphaKey( spep_4 -3 + 28, ryusen1, 255 );
setEffAlphaKey( spep_4 -3 + 58, ryusen1, 255 );

--SE
--playSe( spep_4+10, 1007);--バッ
playSe( spep_4+14, 44);--手が伸びる

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 16, 10, 34 , 0, 0, 0, 0, 200 );  --黒　背景

--白フェード
entryFade( spep_4 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_5 = spep_4+60;

------------------------------------------------------
--  敵に当たる
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_5 + 0, SP_05,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, hit, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, hit, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit, 0 );
setEffRotateKey( spep_5 + 100, hit, 0 );
setEffAlphaKey( spep_5 + 0, hit, 255 );
setEffAlphaKey( spep_5 + 100, hit, 255 );

--流線
ryusen2 = entryEffectLife( spep_5 + 0,  914, 98, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 98, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, ryusen2, 2, 1 );
setEffScaleKey( spep_5 + 98, ryusen2, 2, 1 );

setEffRotateKey( spep_5 + 0, ryusen2, 0 );
setEffRotateKey( spep_5 + 98, ryusen2, 0 );

setEffAlphaKey( spep_5 + 0, ryusen2, 255 );
setEffAlphaKey( spep_5 + 98, ryusen2, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 98 , 0, 0, 0, 0, 200 );  --黒　背景

--SE
SE0=playSe( spep_5, 1018);--手が伸びる


--敵の動き
setDisp( spep_5  + 0, 1, 1 );
setDisp( spep_5  + 98, 1, 0 );

changeAnime( spep_5  + 0, 1, 104 );
changeAnime( spep_5 -3 + 50, 1, 108 );

setMoveKey( spep_5  + 0, 1, 491.2, 29.4 , 0 );
--setMoveKey( spep_5 -3 + 2, 1, 433.2, 29.4 , 0 );
setMoveKey( spep_5 -3 + 4, 1, 375.2, 29.4 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 317.2, 29.4 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 259.2, 29.4 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 201.2, 29.4 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 111.1, 29.4 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 107.4, 33.4 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 99.6, 25.4 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 91.8, 33.4 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 76, 25.3 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 76.3, 33.3 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 60.5, 25.3 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 52.7, 33.3 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 52.9, 25.3 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 37.1, 33.3 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 33.6, 25.3 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 30, 33.3 , 0 );

setScaleKey( spep_5  + 0, 1, 1.4, 1.4 );
--setScaleKey( spep_5 -3 + 2, 1, 1.42, 1.42 );
setScaleKey( spep_5 -3 + 4, 1, 1.43, 1.43 );
setScaleKey( spep_5 -3 + 6, 1, 1.45, 1.45 );
setScaleKey( spep_5 -3 + 8, 1, 1.47, 1.47 );
setScaleKey( spep_5 -3 + 10, 1, 1.48, 1.48 );
setScaleKey( spep_5 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5  + 30, 1, 1.5, 1.5 );

setRotateKey( spep_5  + 0, 1, 0 );
setRotateKey( spep_5  + 30, 1, 0 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_5 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    
    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
     --敵の情報
     setMoveKey( SP_dodge, 1, 30, 33.3 , 0 );
     setScaleKey( SP_dodge, 1, 1.5, 1.5 );
     setRotateKey( SP_dodge, 1, 0 );

     setMoveKey( SP_dodge + 9, 1, 30, 33.3 , 0 );
     setScaleKey( SP_dodge + 9, 1, 1.5, 1.5 );
     setRotateKey( SP_dodge + 9, 1, 0 );



    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
    ------------------------------------------------------
    -- 回避しなかった場合
    ------------------------------------------------------



setMoveKey( spep_5 -3 + 36, 1, 34.5, 25.3 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 26.9, 29.3 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 27.4, 33.2 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 19.8, 29.2 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 16.3, 29.2 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 16.7, 33.2 , 0 );
setMoveKey( spep_5 -3 + 49, 1, 13.1, 25.2 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 41.9, 15.6 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 75.6, 40.1 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 152.4, 12.6 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 199.2, 33.9 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 259.4, 37.4 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 307.7, 31.7 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 372, 42.1 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 421.6, 34.1 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 479.2, 42.1 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 544.8, 34.1 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 594.4, 42.1 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 599.8, 34.1 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 605.1, 42.1 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 618.4, 34.1 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 623.8, 34.1 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 629.1, 42.1 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 626.4, 34.1 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 639.8, 42.1 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 637.1, 34.1 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 642.4, 42.1 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 655.8, 34.1 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 653.1, 42.1 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 658.4, 34.1 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 663.8, 42.1 , 0 );
setMoveKey( spep_5  + 98, 1, 677.1, 34.1 , 0 );


setScaleKey( spep_5 -3 + 49, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 50, 1, 1.23, 1.23 );
setScaleKey( spep_5  + 98, 1, 1.23, 1.23 );


setRotateKey( spep_5  + 98, 1, 0 );

--SE
playSe( spep_5+48, 1010);--敵に当たる

--白フェード
entryFade( spep_5 + 92, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_6 = spep_5+100;

------------------------------------------------------
--  ガッ
------------------------------------------------------

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_6 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_6 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_6 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_6 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_6 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_6 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_6 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_6 + 100, bakuhatsu, 255 );



-- ** ひび割れ ** --
hibiware = entryEffect( spep_6 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_6 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_6 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_6 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_6 + 2, hibiware, 0 );
setEffRotateKey( spep_6 + 100, hibiware, 0 );

setEffAlphaKey( spep_6 + 2, hibiware, 0 );
setEffAlphaKey( spep_6 + 13, hibiware, 0 );
setEffAlphaKey( spep_6 + 14, hibiware, 255 );
setEffAlphaKey( spep_6 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen_g = entryEffectLife( spep_6 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 14, shuchusen_g, 32, 25 );

setEffMoveKey( spep_6 + 14, shuchusen_g, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, shuchusen_g, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen_g, 1, 1 );
setEffScaleKey( spep_6 + 46, shuchusen_g, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen_g, 0 );
setEffRotateKey( spep_6 + 46, shuchusen_g, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen_g, 255 );
setEffAlphaKey( spep_6 + 28, shuchusen_g, 255 );
setEffAlphaKey( spep_6 + 30, shuchusen_g, 252 );
setEffAlphaKey( spep_6 + 32, shuchusen_g, 242 );
setEffAlphaKey( spep_6 + 34, shuchusen_g, 227 );
setEffAlphaKey( spep_6 + 36, shuchusen_g, 205 );
setEffAlphaKey( spep_6 + 38, shuchusen_g, 176 );
setEffAlphaKey( spep_6 + 40, shuchusen_g, 142 );
setEffAlphaKey( spep_6 + 42, shuchusen_g, 101 );
setEffAlphaKey( spep_6 + 44, shuchusen_g, 54 );
setEffAlphaKey( spep_6 + 46, shuchusen_g, 0 );

kuroshuchusen_g = entryEffectLife( spep_6 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_6 + 14, kuroshuchusen_g, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, kuroshuchusen_g, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, kuroshuchusen_g, 1, 1 );
setEffScaleKey( spep_6 + 100, kuroshuchusen_g, 1, 1 );

setEffRotateKey( spep_6 + 14, kuroshuchusen_g, 0 );
setEffRotateKey( spep_6 + 100, kuroshuchusen_g, 0 );

setEffAlphaKey( spep_6 + 14, kuroshuchusen_g, 255 );
setEffAlphaKey( spep_6 + 100, kuroshuchusen_g, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_6 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_6 + 14, ctga, 14, 20 );

setEffMoveKey( spep_6 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_6 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_6 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_6 + 14, ctga, -10.9 );
setEffRotateKey( spep_6 + 15, ctga, -10.9 );
setEffRotateKey( spep_6 + 16, ctga, -14.9 );
setEffRotateKey( spep_6 + 17, ctga, -14.9 );
setEffRotateKey( spep_6 + 18, ctga, -10.9 );
setEffRotateKey( spep_6 + 19, ctga, -10.9 );
setEffRotateKey( spep_6 + 20, ctga, -14.9 );
setEffRotateKey( spep_6 + 21, ctga, -14.9 );
setEffRotateKey( spep_6 + 22, ctga, -10.9 );
setEffRotateKey( spep_6 + 23, ctga, -10.9 );
setEffRotateKey( spep_6 + 24, ctga, -14.9 );
setEffRotateKey( spep_6 + 25, ctga, -14.9 );
setEffRotateKey( spep_6 + 26, ctga, -10.9 );
setEffRotateKey( spep_6 + 27, ctga, -10.9 );
setEffRotateKey( spep_6 + 28, ctga, -14.9 );
setEffRotateKey( spep_6 + 100, ctga, -14.9 );

setEffAlphaKey( spep_6 + 14, ctga, 255 );
setEffAlphaKey( spep_6 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
changeAnime( spep_6 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_6 + 0, 1, 31, -3.9 , 0 );
--setMoveKey( spep_6 + 0, 1, 36.2, 7.9 , 0 );
--setMoveKey( spep_6 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_6 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_6 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_6 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_6 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_6 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_6 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_6 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_6 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_6 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_6 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_6 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_6 + 100, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_6 + 0, 1, 0.3, 0.3 );
--setScaleKey( spep_6 + 2, 1, 0.35, 0.35 );
--setScaleKey( spep_6 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_6 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_6 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_6 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 110, 1, 1.6, 1.6 );


setRotateKey( spep_6 + 0, 1, -40 );
setRotateKey( spep_6 + 1, 1, -40 );
setRotateKey( spep_6 + 2, 1, 80 );
setRotateKey( spep_6 + 3, 1, 80 );
setRotateKey( spep_6 + 4, 1, 200 );
setRotateKey( spep_6 + 5, 1, 200 );
setRotateKey( spep_6 + 6, 1, 360 );
setRotateKey( spep_6 + 7, 1, 360 );
setRotateKey( spep_6 + 8, 1, 558 );
setRotateKey( spep_6 + 9, 1, 558 );
setRotateKey( spep_6 + 10, 1, 425 );
setRotateKey( spep_6 + 11, 1, 425 );
setRotateKey( spep_6 + 12, 1, -40 );
setRotateKey( spep_6 + 100, 1, -40 );

-- ** 音 ** --
playSe( spep_6 + 0, 1023 );  --爆発音
playSe( spep_6 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 14 );
endPhase( spep_6 + 100 );
end