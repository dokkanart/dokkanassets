--1017680:人造人間18号_サディスティック18
--sp_effect_b1_00080

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
SP_01=	153746	;--	アイドリング→気溜め
SP_02=	153748	;--	ラッシュ
SP_03=	153750	;--	手前ジャンプ
SP_04=	153751	;--	蹴りフィニッシュ

--てき
SP_01x=	153747	;--	アイドリング→気溜め	(敵)
SP_02x=	153749	;--	ラッシュ	(敵)
SP_03x=	153750	;--	手前ジャンプ	
SP_04x=	153752	;--	蹴りフィニッシュ	(敵)

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
-- ため
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_0 + 0, SP_01, 80, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 80, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 80, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 80, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 80, tame, 255 );

--文字エントリー
ctzuzuzun = entryEffectLife( spep_0 -3 + 22,  10013, 56, 0x100, -1, 0, 20.1, 249.8 );--ズズズンッ

setEffMoveKey( spep_0 -3 + 22, ctzuzuzun, 20.1, 249.8 , 0 );
setEffMoveKey( spep_0 -3 + 24, ctzuzuzun, 29.4, 317.8 , 0 );
setEffMoveKey( spep_0 -3 + 26, ctzuzuzun, 51.9, 397 , 0 );
setEffMoveKey( spep_0 -3 + 28, ctzuzuzun, 38, 376.5 , 0 );
setEffMoveKey( spep_0 -3 + 30, ctzuzuzun, 42.8, 369.9 , 0 );
setEffMoveKey( spep_0 -3 + 32, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 -3 + 34, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 -3 + 36, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 -3 + 38, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 -3 + 40, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 -3 + 42, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 -3 + 44, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 -3 + 46, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 -3 + 48, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 -3 + 50, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 -3 + 52, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 -3 + 54, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 -3 + 56, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 -3 + 58, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 -3 + 60, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 -3 + 62, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 -3 + 64, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 -3 + 66, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 -3 + 68, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 -3 + 70, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 -3 + 72, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 -3 + 74, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 -3 + 78, ctzuzuzun, 31.1, 354.5 , 0 );

setEffScaleKey( spep_0 -3 + 22, ctzuzuzun, 1.11, 1.11 );
setEffScaleKey( spep_0 -3 + 24, ctzuzuzun, 2.01, 2.01 );
setEffScaleKey( spep_0 -3 + 26, ctzuzuzun, 2.86, 2.86 );
setEffScaleKey( spep_0 -3 + 28, ctzuzuzun, 2.92, 2.92 );
setEffScaleKey( spep_0 -3 + 78, ctzuzuzun, 2.92, 2.92 );

setEffRotateKey( spep_0 -3 + 22, ctzuzuzun, -5 );
setEffRotateKey( spep_0 -3 + 78, ctzuzuzun, -5 );

setEffAlphaKey( spep_0 -3 + 22, ctzuzuzun, 255 );
setEffAlphaKey( spep_0 -3 + 56, ctzuzuzun, 255 );
setEffAlphaKey( spep_0 -3 + 58, ctzuzuzun, 228 );
setEffAlphaKey( spep_0 -3 + 60, ctzuzuzun, 184 );
setEffAlphaKey( spep_0 -3 + 62, ctzuzuzun, 146 );
setEffAlphaKey( spep_0 -3 + 64, ctzuzuzun, 112 );
setEffAlphaKey( spep_0 -3 + 66, ctzuzuzun, 82 );
setEffAlphaKey( spep_0 -3 + 68, ctzuzuzun, 57 );
setEffAlphaKey( spep_0 -3 + 70, ctzuzuzun, 36 );
setEffAlphaKey( spep_0 -3 + 72, ctzuzuzun, 21 );
setEffAlphaKey( spep_0 -3 + 74, ctzuzuzun, 9 );
setEffAlphaKey( spep_0 -3 + 76, ctzuzuzun, 2 );
setEffAlphaKey( spep_0 -3 + 78, ctzuzuzun, 0 );


--SE
playSe( spep_0+16, 50);--気溜め

--背景黒
entryFadeBg( spep_0+16, 0, 62, 0, 0, 0, 0, 130);       -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 16, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 72, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_1 =spep_0 + 80

------------------------------------------------------
-- ラッシュ
------------------------------------------------------

-- ** エフェクト等 ** --
rush = entryEffect( spep_1 + 0, SP_02,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, rush, 0, 0 , 0 );
setEffMoveKey( spep_1 + 280, rush, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_1 + 280, rush, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush, 0 );
setEffRotateKey( spep_1 + 280, rush, 0 );
setEffAlphaKey( spep_1 + 0, rush, 255 );
setEffAlphaKey( spep_1 + 280, rush, 255 );
setEffAlphaKey( spep_1 + 281, rush, 0 );
setEffAlphaKey( spep_1 + 282, rush, 0 );

--流線
ryusen1 = entryEffectLife( spep_1 + 0,  914, 280, 0x80, -1, 0, 136.3, -13.8 );

setEffMoveKey( spep_1 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 280, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, ryusen1, 5.84, 1.23 );
setEffScaleKey( spep_1 + 280, ryusen1, 5.84, 1.23 );

setEffRotateKey( spep_1 + 0, ryusen1, 0 );
setEffRotateKey( spep_1 + 280, ryusen1, 0 );

setEffAlphaKey( spep_1 + 0, ryusen1, 38 );
setEffAlphaKey( spep_1 + 2, ryusen1, 60 );
setEffAlphaKey( spep_1 + 4, ryusen1, 82 );
setEffAlphaKey( spep_1 + 6, ryusen1, 104 );
setEffAlphaKey( spep_1 + 8, ryusen1, 125 );
setEffAlphaKey( spep_1 + 10, ryusen1, 147 );
setEffAlphaKey( spep_1 + 12, ryusen1, 169 );
setEffAlphaKey( spep_1 + 14, ryusen1, 191 );
setEffAlphaKey( spep_1 + 280, ryusen1, 191 );

--SE
SE0=playSe( spep_1, 44);--移動

--背景黒
entryFadeBg( spep_1 , 0,280, 0, 0, 0, 0, 200);       -- ベース暗め　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 30; --エンドフェイズのフレーム数を置き換える
    
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

--てき
setDisp( spep_1  + 54, 1, 1 );
setDisp( spep_1  + 252, 1, 0 );

changeAnime( spep_1  + 54, 1, 111 );
changeAnime( spep_1  + 55, 1, 111 );
changeAnime( spep_1  + 56, 1, 111 );
changeAnime( spep_1  + 57, 1, 111 );
changeAnime( spep_1  + 58, 1, 111 );
changeAnime( spep_1  + 59, 1, 111 );
changeAnime( spep_1  + 60, 1, 111 );
changeAnime( spep_1  + 61, 1, 111 );
changeAnime( spep_1  + 62, 1, 111 );
changeAnime( spep_1  + 63, 1, 111 );
changeAnime( spep_1  + 64, 1, 111 );
changeAnime( spep_1  + 65, 1, 111 );
changeAnime( spep_1  + 66, 1, 111 );
changeAnime( spep_1  + 67, 1, 111 );
changeAnime( spep_1  + 68, 1, 111 );
changeAnime( spep_1  + 69, 1, 111 );
changeAnime( spep_1  + 70, 1, 111 );
changeAnime( spep_1  + 71, 1, 111 );
changeAnime( spep_1  + 72, 1, 111 );
changeAnime( spep_1  + 73, 1, 111 );
changeAnime( spep_1  + 74, 1, 111 );
changeAnime( spep_1  + 75, 1, 111 );
changeAnime( spep_1  + 76, 1, 111 );
changeAnime( spep_1 -3 + 80, 1, 106 );
changeAnime( spep_1 -3 + 88, 1, 108 );
changeAnime( spep_1 -3 + 96, 1, 106 );
changeAnime( spep_1 -3 + 104, 1, 108 );
changeAnime( spep_1 -3 + 112, 1, 106 );
changeAnime( spep_1 -3 + 120, 1, 108 );
changeAnime( spep_1 -3 + 128, 1, 106 );
changeAnime( spep_1 -3 + 136, 1, 108 );
changeAnime( spep_1 -3 + 144, 1, 106 );
changeAnime( spep_1 -3 + 176, 1, 108 );
changeAnime( spep_1 -3 + 230, 1, 106 );

--setMoveKey( spep_1  + 0, 1, 841.7, 0 , 0 );
--setMoveKey( spep_1 -3 + 28, 1, 841.7, 0 , 0 );
--setMoveKey( spep_1 -3 + 30, 1, 837.8, 0.1 , 0 );
--setMoveKey( spep_1 -3 + 32, 1, 833.4, 0.1 , 0 );
--setMoveKey( spep_1 -3 + 34, 1, 828, -0.1 , 0 );
--setMoveKey( spep_1 -3 + 36, 1, 822.2, 0 , 0 );
--setMoveKey( spep_1 -3 + 38, 1, 815.2, -0.1 , 0 );
--setMoveKey( spep_1 -3 + 40, 1, 807.3, 0 , 0 );
--setMoveKey( spep_1 -3 + 42, 1, 797.5, -0.1 , 0 );
--setMoveKey( spep_1 -3 + 44, 1, 786.2, 0.1 , 0 );
--setMoveKey( spep_1 -3 + 46, 1, 771.8, 0.1 , 0 );
--setMoveKey( spep_1 -3 + 48, 1, 754.1, 0 , 0 );
--setMoveKey( spep_1 -3 + 50, 1, 731, -0.1 , 0 );
--setMoveKey( spep_1 -3 + 52, 1, 701.3, 0.1 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 660, 0 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 601.4, 0 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 514.5, 0.1 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 387.7, 0 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 274.2, -0.1 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 197.8, 0.1 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 140.3, -0.1 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 95.5, 0 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 59.9, 0.2 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 31.7, 0 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 10.8, 0.1 , 0 );
setMoveKey( spep_1 -3 + 76, 1, -1, 0 , 0 );
setMoveKey( spep_1 -3 + 79, 1, -5, 0 , 0 );
setMoveKey( spep_1 -3 + 80, 1, -16.7, 8 , 0 );
setMoveKey( spep_1 -3 + 82, 1, -3.2, 8 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 1, 8 , 0 );
setMoveKey( spep_1 -3 + 87, 1, 5, 8 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 17.5, 8 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 35.5, -10 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 38.9, -10 , 0 );
setMoveKey( spep_1 -3 + 95, 1, 42.2, -10 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 13.1, 8 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 25.3, 8 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 28.2, 8 , 0 );
setMoveKey( spep_1 -3 + 103, 1, 30.9, 8 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 42.3, 8 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 59.2, -10 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 61.6, -10 , 0 );
setMoveKey( spep_1 -3 + 111, 1, 63.9, -10 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 33.8, 8 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 45.1, 8 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 47.1, 8 , 0 );
setMoveKey( spep_1 -3 + 119, 1, 49, 8 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 59.5, 8 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 75.7, -10 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 77.3, -10 , 0 );
setMoveKey( spep_1 -3 + 127, 1, 78.9, -10 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 48.2, 8 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 58.8, 8 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 60.2, 8 , 0 );
setMoveKey( spep_1 -3 + 135, 1, 61.5, 8 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 71.5, 8 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 87.1, -10 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 88.2, -10 , 0 );
setMoveKey( spep_1 -3 + 143, 1, 89.3, -10 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 58, 8 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 68.2, 8 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 69.1, 8 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 70, 8 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 70.1, 8 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 70.2, 8 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 70.3, 8 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 70.3, 8 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 70.4, 8 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 70.5, 8 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 70.6, 8 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 70.7, 8 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 70.8, 8 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 70.9, 8 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 71, 8 , 0 );
setMoveKey( spep_1 -3 + 175, 1, 73.5, 10 , 0 );
setMoveKey( spep_1 -3 + 176, 1, 84.8, 3 , 0 );
setMoveKey( spep_1 -3 + 178, 1, 94.6, 12.6 , 0 );
setMoveKey( spep_1 -3 + 180, 1, 97.8, 14.5 , 0 );
setMoveKey( spep_1 -3 + 182, 1, 108.1, 20.6 , 0 );
setMoveKey( spep_1 -3 + 184, 1, 137.8, 38.3 , 0 );
setMoveKey( spep_1 -3 + 186, 1, 146, 43.1 , 0 );
setMoveKey( spep_1 -3 + 188, 1, 150.7, 45.9 , 0 );
setMoveKey( spep_1 -3 + 190, 1, 154, 47.9 , 0 );
setMoveKey( spep_1 -3 + 192, 1, 156.5, 49.4 , 0 );
setMoveKey( spep_1 -3 + 194, 1, 158.5, 50.6 , 0 );
setMoveKey( spep_1 -3 + 196, 1, 160.1, 51.5 , 0 );
setMoveKey( spep_1 -3 + 198, 1, 161.5, 52.4 , 0 );
setMoveKey( spep_1 -3 + 200, 1, 162.6, 53 , 0 );
setMoveKey( spep_1 -3 + 202, 1, 163.6, 53.6 , 0 );
setMoveKey( spep_1 -3 + 204, 1, 164.4, 54.1 , 0 );
setMoveKey( spep_1 -3 + 206, 1, 165, 54.5 , 0 );
setMoveKey( spep_1 -3 + 208, 1, 165.6, 54.8 , 0 );
setMoveKey( spep_1 -3 + 210, 1, 166.1, 55.1 , 0 );
setMoveKey( spep_1 -3 + 212, 1, 166.5, 55.3 , 0 );
setMoveKey( spep_1 -3 + 214, 1, 166.8, 55.5 , 0 );
setMoveKey( spep_1 -3 + 216, 1, 167.1, 55.7 , 0 );
setMoveKey( spep_1 -3 + 218, 1, 167.3, 55.8 , 0 );
setMoveKey( spep_1 -3 + 220, 1, 167.5, 55.9 , 0 );
setMoveKey( spep_1 -3 + 222, 1, 167.6, 56 , 0 );
setMoveKey( spep_1 -3 + 224, 1, 167.7, 56 , 0 );
setMoveKey( spep_1 -3 + 226, 1, 167.8, 56.1 , 0 );
setMoveKey( spep_1 -3 + 229, 1, 167.8, 56.1 , 0 );
setMoveKey( spep_1 -3 + 230, 1, 114, 20 , 0 );
setMoveKey( spep_1 -3 + 232, 1, 125.1, 29.4 , 0 );
setMoveKey( spep_1 -3 + 234, 1, 137.6, 31.6 , 0 );
setMoveKey( spep_1 -3 + 236, 1, 226.4, 47.5 , 0 );
setMoveKey( spep_1 -3 + 238, 1, 534.5, 102.9 , 0 );
setMoveKey( spep_1 -3 + 240, 1, 587.1, 112.2 , 0 );
setMoveKey( spep_1 -3 + 242, 1, 606.6, 115.8 , 0 );
setMoveKey( spep_1 -3 + 244, 1, 625.7, 117.4 , 0 );
setMoveKey( spep_1 -3 + 246, 1, 650, 118.3 , 0 );
setMoveKey( spep_1 -3 + 248, 1, 652, 118.5 , 0 );
setMoveKey( spep_1 -3 + 250, 1, 672.9, 118.6 , 0 );
setMoveKey( spep_1  + 252, 1, 663, 118.7 , 0 );

z=0.4;

--setScaleKey( spep_1  + 0, 1, 1.6, 1.6 );
--setScaleKey( spep_1 -3 + 32, 1, 1.6, 1.6 );
--setScaleKey( spep_1 -3 + 34, 1, 1.59, 1.59 );
--setScaleKey( spep_1 -3 + 36, 1, 1.59, 1.59 );
--setScaleKey( spep_1 -3 + 38, 1, 1.58, 1.58 );
--setScaleKey( spep_1 -3 + 40, 1, 1.58, 1.58 );
--setScaleKey( spep_1 -3 + 42, 1, 1.57, 1.57 );
--setScaleKey( spep_1 -3 + 44, 1, 1.57, 1.57 );
--setScaleKey( spep_1 -3 + 46, 1, 1.56, 1.56 );
--setScaleKey( spep_1 -3 + 48, 1, 1.55, 1.55 );
--setScaleKey( spep_1 -3 + 50, 1, 1.53, 1.53 );
--setScaleKey( spep_1 -3 + 52, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 54, 1, 1.49 + z, 1.49 + z );
setScaleKey( spep_1 -3 + 56, 1, 1.46 + z, 1.46 + z );
setScaleKey( spep_1 -3 + 58, 1, 1.41 + z, 1.41 + z );
setScaleKey( spep_1 -3 + 60, 1, 1.33 + z, 1.33 + z );
setScaleKey( spep_1 -3 + 62, 1, 1.26 + z, 1.26 + z );
setScaleKey( spep_1 -3 + 64, 1, 1.22 + z, 1.22 + z );
setScaleKey( spep_1 -3 + 66, 1, 1.18 + z, 1.18 + z );
setScaleKey( spep_1 -3 + 68, 1, 1.16 + z, 1.16 + z );
setScaleKey( spep_1 -3 + 70, 1, 1.14 + z, 1.14 + z );
setScaleKey( spep_1 -3 + 72, 1, 1.12 + z, 1.12 + z );
setScaleKey( spep_1 -3 + 74, 1, 1.11 + z, 1.11 + z );
setScaleKey( spep_1 -3 + 76, 1, 1.1 + z, 1.1 + z );
setScaleKey( spep_1 -3 + 79, 1, 1.1 + z, 1.1 + z );
setScaleKey( spep_1 -3 + 80, 1, 1.16 + z, 1.16 + z );
setScaleKey( spep_1  + 173, 1, 1.16 + z, 1.16 + z );
--setScaleKey( spep_1  + 173, 1, 1.26, 1.26 );
--setScaleKey( spep_1  + 175, 1, 1.46, 1.46 );
setScaleKey( spep_1  + 176, 1, 1.76 + z, 1.76 + z );
setScaleKey( spep_1  + 177, 1, 1.76 + z, 1.76 + z );
setScaleKey( spep_1  + 180, 1, 1.16 + z, 1.16 + z );
setScaleKey( spep_1  + 226, 1, 1.16 + z, 1.16 + z );
setScaleKey( spep_1  + 227, 1, 1.46 + z, 1.46 + z );
setScaleKey( spep_1  + 229, 1, 2.26 + z, 2.26 + z );
setScaleKey( spep_1  + 230, 1, 2.26 + z, 2.26 + z );
setScaleKey( spep_1  + 231, 1, 2.26 + z, 2.26 + z );
setScaleKey( spep_1  + 234, 1, 1.46 + z, 1.46 + z );
setScaleKey( spep_1  + 252, 1, 1.46 + z, 1.46 + z );


setRotateKey( spep_1  + 54, 1, 0 );
setRotateKey( spep_1 -3 + 79, 1, 0 );
setRotateKey( spep_1 -3 + 80, 1, -45 );
setRotateKey( spep_1 -3 + 82, 1, -40.8 );
setRotateKey( spep_1 -3 + 87, 1, -40.8 );
setRotateKey( spep_1 -3 + 88, 1, -10 );
setRotateKey( spep_1 -3 + 90, 1, -2.5 );
setRotateKey( spep_1 -3 + 95, 1, -2.5 );
setRotateKey( spep_1 -3 + 96, 1, -45 );
setRotateKey( spep_1 -3 + 98, 1, -40.8 );
setRotateKey( spep_1 -3 + 103, 1, -40.8 );
setRotateKey( spep_1 -3 + 104, 1, -10 );
setRotateKey( spep_1 -3 + 106, 1, -2.5 );
setRotateKey( spep_1 -3 + 111, 1, -2.5 );
setRotateKey( spep_1 -3 + 112, 1, -45 );
setRotateKey( spep_1 -3 + 114, 1, -40.8 );
setRotateKey( spep_1 -3 + 119, 1, -40.8 );
setRotateKey( spep_1 -3 + 120, 1, -10 );
setRotateKey( spep_1 -3 + 122, 1, -2.5 );
setRotateKey( spep_1 -3 + 127, 1, -2.5 );
setRotateKey( spep_1 -3 + 128, 1, -45 );
setRotateKey( spep_1 -3 + 130, 1, -40.8 );
setRotateKey( spep_1 -3 + 135, 1, -40.8 );
setRotateKey( spep_1 -3 + 136, 1, -10 );
setRotateKey( spep_1 -3 + 138, 1, -2.5 );
setRotateKey( spep_1 -3 + 143, 1, -2.5 );
setRotateKey( spep_1 -3 + 144, 1, -45 );
setRotateKey( spep_1 -3 + 146, 1, -40.8 );
setRotateKey( spep_1 -3 + 175, 1, -40.8 );
setRotateKey( spep_1 -3 + 176, 1, -10 );
setRotateKey( spep_1 -3 + 178, 1, -13 );
setRotateKey( spep_1 -3 + 229, 1, -13 );
setRotateKey( spep_1 -3 + 230, 1, -45 );
setRotateKey( spep_1 -3 + 232, 1, -39.5 );
setRotateKey( spep_1 -3 + 234, 1, -38.7 );
setRotateKey( spep_1 -3 + 236, 1, -33.3 );
setRotateKey( spep_1 -3 + 238, 1, -14.9 );
setRotateKey( spep_1 -3 + 240, 1, -11.7 );
setRotateKey( spep_1 -3 + 242, 1, -10.6 );
setRotateKey( spep_1 -3 + 244, 1, -10 );
setRotateKey( spep_1 -3 + 246, 1, -9.8 );
setRotateKey( spep_1 -3 + 248, 1, -9.7 );
setRotateKey( spep_1  + 252, 1, -9.6 );

--集中線
shuchusen1 = entryEffectLife( spep_1 -3 + 80,  906, 72, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 80, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 152, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 80, shuchusen1, 1.05, 1.05 );
setEffScaleKey( spep_1 -3 + 152, shuchusen1, 1.05, 1.05 );

setEffRotateKey( spep_1 -3 + 80, shuchusen1, 0 );
setEffRotateKey( spep_1 -3 + 152, shuchusen1, 0 );

setEffAlphaKey( spep_1 -3 + 80, shuchusen1, 255 );
setEffAlphaKey( spep_1 -3 + 152, shuchusen1, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_1 -3 + 176,  906, 18, 0x100, -1, 0, 190.1, 8.1 );

setEffMoveKey( spep_1 -3 + 176, shuchusen2, 190.1, 8.1 , 0 );
setEffMoveKey( spep_1 -3 + 194, shuchusen2, 190.1, 8.1 , 0 );

setEffScaleKey( spep_1 -3 + 176, shuchusen2, 1.32, 1.33 );
setEffScaleKey( spep_1 -3 + 194, shuchusen2, 1.32, 1.33 );

setEffRotateKey( spep_1 -3 + 176, shuchusen2, 0 );
setEffRotateKey( spep_1 -3 + 194, shuchusen2, 0 );

setEffAlphaKey( spep_1 -3 + 176, shuchusen2, 255 );
setEffAlphaKey( spep_1 -3 + 194, shuchusen2, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_1 -3 + 230,  906, 16, 0x100, -1, 0, 157.3, 8.1 );

setEffMoveKey( spep_1 -3 + 230, shuchusen3, 157.3, 8.1 , 0 );
setEffMoveKey( spep_1 -3 + 246, shuchusen3, 157.3, 8.1 , 0 );

setEffScaleKey( spep_1 -3 + 230, shuchusen3, 1.42, 1.44 );
setEffScaleKey( spep_1 -3 + 246, shuchusen3, 1.42, 1.44 );

setEffRotateKey( spep_1 -3 + 230, shuchusen3, 0 )
setEffRotateKey( spep_1 -3 + 246, shuchusen3, 0 )

setEffAlphaKey( spep_1 -3 + 230, shuchusen3, 255 );
setEffAlphaKey( spep_1 -3 + 246, shuchusen3, 255 );

--文字エントリ-
ctdogagaga = entryEffectLife( spep_1 -3 + 80,  10017, 72, 0x100, -1, 0, 23.3, 359.6 );--ドガガガッ

setEffMoveKey( spep_1 -3 + 80, ctdogagaga, 23.3, 359.6 , 0 );
setEffMoveKey( spep_1 -3 + 82, ctdogagaga, 17.6, 370.9 , 0 );
setEffMoveKey( spep_1 -3 + 84, ctdogagaga, 21.2, 363.7 , 0 );
setEffMoveKey( spep_1 -3 + 86, ctdogagaga, 13.9, 365.7 , 0 );
setEffMoveKey( spep_1 -3 + 88, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_1 -3 + 90, ctdogagaga, 16.4, 365.7 , 0 );
setEffMoveKey( spep_1 -3 + 92, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_1 -3 + 94, ctdogagaga, 13.4, 364.7 , 0 );
setEffMoveKey( spep_1 -3 + 96, ctdogagaga, 21.2, 363.7 , 0 );
setEffMoveKey( spep_1 -3 + 98, ctdogagaga, 13.4, 364.7 , 0 );
setEffMoveKey( spep_1 -3 + 100, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_1 -3 + 102, ctdogagaga, 13.4, 364.7 , 0 );
setEffMoveKey( spep_1 -3 + 104, ctdogagaga, 21.2, 363.7 , 0 );
setEffMoveKey( spep_1 -3 + 106, ctdogagaga, 13.9, 365.7 , 0 );
setEffMoveKey( spep_1 -3 + 108, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_1 -3 + 110, ctdogagaga, 13.4, 364.7 , 0 );
setEffMoveKey( spep_1 -3 + 112, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_1 -3 + 114, ctdogagaga, 13.4, 364.7 , 0 );
setEffMoveKey( spep_1 -3 + 116, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_1 -3 + 118, ctdogagaga, 13.4, 364.7 , 0 );
setEffMoveKey( spep_1 -3 + 120, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_1 -3 + 122, ctdogagaga, 13.4, 366.7 , 0 );
setEffMoveKey( spep_1 -3 + 124, ctdogagaga, 21.2, 363.7 , 0 );
setEffMoveKey( spep_1 -3 + 126, ctdogagaga, 13.9, 365.7 , 0 );
setEffMoveKey( spep_1 -3 + 128, ctdogagaga, 18.4, 354.2 , 0 );
setEffMoveKey( spep_1 -3 + 130, ctdogagaga, 11.4, 360.7 , 0 );
setEffMoveKey( spep_1 -3 + 132, ctdogagaga, 19.2, 357.7 , 0 );
setEffMoveKey( spep_1 -3 + 134, ctdogagaga, 15.4, 372.7 , 0 );
setEffMoveKey( spep_1 -3 + 136, ctdogagaga, 19.7, 356.7 , 0 );
setEffMoveKey( spep_1 -3 + 138, ctdogagaga, 11.4, 360.7 , 0 );
setEffMoveKey( spep_1 -3 + 140, ctdogagaga, 19.2, 357.7 , 0 );
setEffMoveKey( spep_1 -3 + 142, ctdogagaga, 15.4, 372.7 , 0 );
setEffMoveKey( spep_1 -3 + 144, ctdogagaga, 19.7, 356.7 , 0 );
setEffMoveKey( spep_1 -3 + 146, ctdogagaga, 12.6, 363.2 , 0 );
setEffMoveKey( spep_1 -3 + 148, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_1 -3 + 150, ctdogagaga, 13.4, 366.7 , 0 );
setEffMoveKey( spep_1 -3 + 152, ctdogagaga, 21.2, 363.7 , 0 );

setEffScaleKey( spep_1 -3 + 80, ctdogagaga, 1.88, 1.88 );
setEffScaleKey( spep_1 -3 + 82, ctdogagaga, 3.07, 3.07 );
setEffScaleKey( spep_1 -3 + 84, ctdogagaga, 2.75, 2.75 );
setEffScaleKey( spep_1 -3 + 152, ctdogagaga, 2.75, 2.75 );

setEffRotateKey( spep_1 -3 + 80, ctdogagaga, 22.3 );
setEffRotateKey( spep_1 -3 + 84, ctdogagaga, 22.3 );
setEffRotateKey( spep_1 -3 + 86, ctdogagaga, 22.5 );
setEffRotateKey( spep_1 -3 + 152, ctdogagaga, 22.5 );

setEffAlphaKey( spep_1 -3 + 80, ctdogagaga, 255 );
setEffAlphaKey( spep_1 -3 + 152, ctdogagaga, 255 );

--文字エントリ-
ctbaki = entryEffectLife( spep_1 -3 + 178,  10020, 14, 0x100, -1, 0, -124.6, 277.5 );

setEffMoveKey( spep_1 -3 + 178, ctbaki, -124.6, 277.5 , 0 );
setEffMoveKey( spep_1 -3 + 180, ctbaki, -127.9, 293.1 , 0 );
setEffMoveKey( spep_1 -3 + 182, ctbaki, -126.2, 306.6 , 0 );
setEffMoveKey( spep_1 -3 + 184, ctbaki, -126.3, 307.3 , 0 );
setEffMoveKey( spep_1 -3 + 186, ctbaki, -126.5, 307.9 , 0 );
setEffMoveKey( spep_1 -3 + 188, ctbaki, -127.4, 311.6 , 0 );
setEffMoveKey( spep_1 -3 + 190, ctbaki, -128.2, 315.3 , 0 );
setEffMoveKey( spep_1 -3 + 192, ctbaki, -129.1, 318.9 , 0 );

setEffScaleKey( spep_1 -3 + 178, ctbaki, 0.7, 0.7 );
setEffScaleKey( spep_1 -3 + 180, ctbaki, 1.55, 1.55 );
setEffScaleKey( spep_1 -3 + 182, ctbaki, 2.05, 2.05 );
setEffScaleKey( spep_1 -3 + 184, ctbaki, 2.03, 2.03 );
setEffScaleKey( spep_1 -3 + 186, ctbaki, 2, 2 );
setEffScaleKey( spep_1 -3 + 188, ctbaki, 1.87, 1.87 );
setEffScaleKey( spep_1 -3 + 190, ctbaki, 1.73, 1.73 );
setEffScaleKey( spep_1 -3 + 192, ctbaki, 1.6, 1.6 );

setEffRotateKey( spep_1 -3 + 178, ctbaki, -18.8 );
setEffRotateKey( spep_1 -3 + 180, ctbaki, -13.9 );
setEffRotateKey( spep_1 -3 + 182, ctbaki, -13 );
setEffRotateKey( spep_1 -3 + 192, ctbaki, -13 );

setEffAlphaKey( spep_1 -3 + 178, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 186, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 188, ctbaki, 170 );
setEffAlphaKey( spep_1 -3 + 190, ctbaki, 85 );
setEffAlphaKey( spep_1 -3 + 192, ctbaki, 0 );

--文字エントリ-

ctga = entryEffectLife( spep_1 -3 + 230,  10005, 16, 0x100, -1, 0, 158.1, 359.5 );--ガッ
setEffMoveKey( spep_1 -3 + 230, ctga, 158.1, 359.5 , 0 );
setEffMoveKey( spep_1 -3 + 232, ctga, 158.2, 359.5 , 0 );
setEffMoveKey( spep_1 -3 + 234, ctga, 158.2, 359.5 , 0 );
setEffMoveKey( spep_1 -3 + 236, ctga, 158.1, 359.6 , 0 );
setEffMoveKey( spep_1 -3 + 238, ctga, 158.2, 359.5 , 0 );
setEffMoveKey( spep_1 -3 + 240, ctga, 158.1, 359.5 , 0 );
setEffMoveKey( spep_1 -3 + 246, ctga, 158.1, 359.5 , 0 );

a=0.9;

setEffScaleKey( spep_1 -3 + 230, ctga, 0.77 , 0.77  );
setEffScaleKey( spep_1 -3 + 232, ctga, 1.25 + a, 1.25 + a );
setEffScaleKey( spep_1 -3 + 246, ctga, 1.25 + a, 1.25 + a );

setEffRotateKey( spep_1 -3 + 230, ctga, 9.2 );
setEffRotateKey( spep_1 -3 + 232, ctga, 9.2 );
setEffRotateKey( spep_1 -3 + 234, ctga, 4.9 );
setEffRotateKey( spep_1 -3 + 236, ctga, 14.4 );
setEffRotateKey( spep_1 -3 + 238, ctga, 6.5 );
setEffRotateKey( spep_1 -3 + 240, ctga, 12.2 );
setEffRotateKey( spep_1 -3 + 246, ctga, 12.2 );

setEffAlphaKey( spep_1 -3 + 230, ctga, 255 );
setEffAlphaKey( spep_1 -3 + 240, ctga, 255 );
setEffAlphaKey( spep_1 -3 + 242, ctga, 170 );
setEffAlphaKey( spep_1 -3 + 244, ctga, 85 );
setEffAlphaKey( spep_1 -3 + 246, ctga, 0 );

--SE
playSe( spep_1+78, 1001);--けり
playSe( spep_1+86, 1000);--パンチ
playSe( spep_1+94, 1000);--パンチ
playSe( spep_1+102, 1001);--けり
playSe( spep_1+110, 1001);--けり
playSe( spep_1+118, 1000);--パンチ
playSe( spep_1+126, 1000);--パンチ
playSe( spep_1+134, 1001);--けり
playSe( spep_1+142, 1001);--けり
playSe( spep_1+174, 1009);--膝
playSe( spep_1+226, 1010);--強パンチ

-- ** ホワイトフェード ** --
entryFade( spep_1 + 272, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_2 =spep_1 + 280;

------------------------------------------------------
-- 手前ジャンプ
------------------------------------------------------
-- ** エフェクト等 ** --
jump = entryEffect( spep_2 + 0, SP_03,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, jump, 0, 0 , 0 );
setEffMoveKey( spep_2 + 130, jump, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, jump, 1.0, 1.0 );
setEffScaleKey( spep_2 + 130, jump, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, jump, 0 );
setEffRotateKey( spep_2 + 130, jump, 0 );
setEffAlphaKey( spep_2 + 0, jump, 255 );
setEffAlphaKey( spep_2 + 130, jump, 255 );
setEffAlphaKey( spep_2 + 131, jump, 0 );
setEffAlphaKey( spep_2 + 132, jump, 0 );

--集中線
shuchusen4 = entryEffectLife( spep_2 ,  906, 130, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 , shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_2 +130, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_2 , shuchusen4, 1.37, 1.37 );
setEffScaleKey( spep_2 + 130, shuchusen4, 1.37, 1.37 );

setEffRotateKey( spep_2 , shuchusen4, 0 );
setEffRotateKey( spep_2 + 130, shuchusen4, 0 );

setEffAlphaKey( spep_2 , shuchusen4, 255 );
setEffAlphaKey( spep_2 + 130, shuchusen4, 255 );

--***カットイン***
speff = entryEffect(  spep_2 + 10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff3 = entryEffect(  spep_2 + 10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff3, 4, 5);   

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_2 + 22, 190006, 74, 0x100, -1, 0, 50, 540);    -- ゴゴゴゴ

setEffMoveKey(  spep_2 + 22,  ctgogo,  50,  540);
setEffMoveKey(  spep_2 + 96,  ctgogo,  50,  540);

setEffAlphaKey( spep_2 + 22, ctgogo, 0 );
setEffAlphaKey( spep_2 + 23, ctgogo, 255 );
setEffAlphaKey( spep_2 + 24, ctgogo, 255 );
setEffAlphaKey( spep_2 + 82, ctgogo, 255 );
setEffAlphaKey( spep_2 + 84, ctgogo, 255 );
setEffAlphaKey( spep_2 + 86, ctgogo, 255 );
setEffAlphaKey( spep_2 + 88, ctgogo, 255 );
setEffAlphaKey( spep_2 + 90, ctgogo, 191 );
setEffAlphaKey( spep_2 + 92, ctgogo, 128 );
setEffAlphaKey( spep_2 + 94, ctgogo, 64 );
setEffAlphaKey( spep_2 + 95, ctgogo, 0 );

setEffRotateKey(  spep_2 + 22,  ctgogo,  0);
setEffRotateKey(  spep_2 + 96,  ctgogo,  0);

setEffScaleKey(  spep_2 + 22,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 + 88,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 + 96,  ctgogo, 1.07, 1.07 );

--SE
playSe( spep_2, 9);--ジャンプ
playSe( spep_2+22, 1018);--カットイン

--背景黒
entryFadeBg( spep_2 , 0,130, 0, 0, 0, 0, 130);       -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 122, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_3 =spep_2 + 130;

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


entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

--------------------------------------
--キック
--------------------------------------

-- ** エフェクト等 ** --
kick = entryEffect( spep_4 + 0, SP_04,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kick, 0, 0 , 0 );
setEffMoveKey( spep_4 + 118, kick, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kick, 1.0, 1.0 );
setEffScaleKey( spep_4 + 118, kick, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick, 0 );
setEffRotateKey( spep_4 + 118, kick, 0 );
setEffAlphaKey( spep_4 + 0, kick, 255 );
setEffAlphaKey( spep_4 + 116, kick, 255 );
setEffAlphaKey( spep_4 + 117, kick, 255 );
setEffAlphaKey( spep_4 + 118, kick, 0 );

--てき
setDisp( spep_4 + 0, 1, 1 );
--setDisp( spep_4 + 176, 1, 1 );

setShakeChara(spep_4  + 34, 1,82,10);

changeAnime( spep_4 + 0, 1, 118 );
changeAnime( spep_4 -3 + 38, 1, 106 );

setMoveKey( spep_4  + 0, 1, 1143, -9.3 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 1143, -9.3 , 0 );
setMoveKey( spep_4 -3 + 17, 1, 1143, -9.3 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 106.8, -9.3 , 0 );
setMoveKey( spep_4 -3 + 37, 1, 106.8, -9.3 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 47, 9.5 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 47.1, 9.5 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 47.2, 9.4 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 47.3, 9.4 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 47.4, 9.4 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 47.6, 9.3 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 47.7, 9.3 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 47.9, 9.2 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 48, 9.2 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 48.2, 9.2 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 48.4, 9.1 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 48.5, 9.1 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 48.7, 9 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 48.9, 9 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 49.1, 8.9 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 49.4, 8.8 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 49.6, 8.8 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 49.9, 8.7 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 50.1, 8.6 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 50.5, 8.6 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 50.8, 8.5 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 51.1, 8.4 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 51.6, 8.3 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 52, 8.2 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 52.5, 8 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 53, 7.9 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 53.6, 7.7 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 54.3, 7.5 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 55.1, 7.4 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 56, 7.1 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 57.1, 6.7 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 58.6, 6.4 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 60.5, 5.8 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 64.9, 4.8 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 98.4, -0.4 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 316, -34.4 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 603, -80.1 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 669.5, -90.9 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 690.6, -94.3 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 695, -94.9 , 0 );
setMoveKey( spep_4  + 117, 1, 695, -94.9 , 0 );
--setMoveKey( spep_4  + 176, 1, 737.4, -141.1 , 0 );

setScaleKey( spep_4  + 0, 1, 2.0 + z, 2.0 + z );
setScaleKey( spep_4  + 36, 1, 2.0 + z, 2.0 + z );
setScaleKey( spep_4  + 37, 1, 2.5 + z, 2.5 + z );
setScaleKey( spep_4  + 45, 1, 2.5 + z, 2.5 + z );
setScaleKey( spep_4  + 52, 1, 2.0 + z, 2.0 + z );
setScaleKey( spep_4  + 117, 1, 2.0 + z, 2.0 + z );

setRotateKey( spep_4  + 0, 1, 0 );
setRotateKey( spep_4 -3 + 37, 1, 0 );
setRotateKey( spep_4 -3 + 38, 1, -45 );
setRotateKey( spep_4 -3 + 40, 1, -45 );
setRotateKey( spep_4 -3 + 42, 1, -44.9 );
setRotateKey( spep_4 -3 + 46, 1, -44.9 );
setRotateKey( spep_4 -3 + 48, 1, -44.8 );
setRotateKey( spep_4 -3 + 50, 1, -44.8 );
setRotateKey( spep_4 -3 + 52, 1, -44.7 );
setRotateKey( spep_4 -3 + 56, 1, -44.7 );
setRotateKey( spep_4 -3 + 58, 1, -44.6 );
setRotateKey( spep_4 -3 + 60, 1, -44.6 );
setRotateKey( spep_4 -3 + 62, 1, -44.5 );
setRotateKey( spep_4 -3 + 64, 1, -44.4 );
setRotateKey( spep_4 -3 + 66, 1, -44.4 );
setRotateKey( spep_4 -3 + 68, 1, -44.3 );
setRotateKey( spep_4 -3 + 70, 1, -44.3 );
setRotateKey( spep_4 -3 + 72, 1, -44.2 );
setRotateKey( spep_4 -3 + 74, 1, -44.1 );
setRotateKey( spep_4 -3 + 76, 1, -44 );
setRotateKey( spep_4 -3 + 78, 1, -43.9 );
setRotateKey( spep_4 -3 + 80, 1, -43.8 );
setRotateKey( spep_4 -3 + 82, 1, -43.7 );
setRotateKey( spep_4 -3 + 84, 1, -43.6 );
setRotateKey( spep_4 -3 + 86, 1, -43.5 );
setRotateKey( spep_4 -3 + 88, 1, -43.3 );
setRotateKey( spep_4 -3 + 90, 1, -43.1 );
setRotateKey( spep_4 -3 + 92, 1, -42.9 );
setRotateKey( spep_4 -3 + 94, 1, -42.7 );
setRotateKey( spep_4 -3 + 96, 1, -42.5 );
setRotateKey( spep_4 -3 + 98, 1, -42.2 );
setRotateKey( spep_4 -3 + 100, 1, -41.8 );
setRotateKey( spep_4 -3 + 102, 1, -41.2 );
setRotateKey( spep_4 -3 + 104, 1, -40 );
setRotateKey( spep_4 -3 + 106, 1, -38.7 );
setRotateKey( spep_4 -3 + 108, 1, -30 );
setRotateKey( spep_4 -3 + 110, 1, -18.6 );
setRotateKey( spep_4 -3 + 112, 1, -16 );
setRotateKey( spep_4 -3 + 114, 1, -15.2 );
setRotateKey( spep_4 -3 + 116, 1, -15 );
setRotateKey( spep_4  + 117, 1, -15 );
--setRotateKey( spep_4  + 176, 1, 30 );

--集中線
shuchusen5 = entryEffectLife( spep_4 -3 + 38,  906, 84, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 -3 + 38, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_4  + 118, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_4 -3 + 38, shuchusen5, 1.05, 1.05 );
setEffScaleKey( spep_4  + 118, shuchusen5, 1.05, 1.05 );


setEffRotateKey( spep_4 -3 + 38, shuchusen5, 0 );
setEffRotateKey( spep_4  + 118, shuchusen5, 0 );

setEffAlphaKey( spep_4 -3 + 38, shuchusen5, 255 );
setEffAlphaKey( spep_4 -3 + 116, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 117, shuchusen5, 255 );
setEffAlphaKey( spep_4  + 118, shuchusen5, 0 );
setEffAlphaKey( spep_4  + 119, shuchusen5, 0 );

--文字エントリー
ctbaki2 = entryEffectLife( spep_4 -3 + 38,  10020, 26, 0x100, -1, 0, 16.8, 320.6 );--バキッ

setEffMoveKey( spep_4 -3 + 38, ctbaki2, 16.8, 320.6 , 0 );
setEffMoveKey( spep_4 -3 + 40, ctbaki2, 9.9, 377.6 , 0 );
setEffMoveKey( spep_4 -3 + 42, ctbaki2, -10.5, 411.4 , 0 );
setEffMoveKey( spep_4 -3 + 44, ctbaki2, 10.9, 431.5 , 0 );
setEffMoveKey( spep_4 -3 + 46, ctbaki2, 2.1, 420.1 , 0 );
setEffMoveKey( spep_4 -3 + 48, ctbaki2, 12.2, 431.4 , 0 );
setEffMoveKey( spep_4 -3 + 50, ctbaki2, 2.1, 420.1 , 0 );
setEffMoveKey( spep_4 -3 + 52, ctbaki2, 12.2, 417.4 , 0 );
setEffMoveKey( spep_4 -3 + 54, ctbaki2, 1.5, 402 , 0 );
setEffMoveKey( spep_4 -3 + 56, ctbaki2, 7.2, 410.2 , 0 );
setEffMoveKey( spep_4 -3 + 58, ctbaki2, 3.5, 395.9 , 0 );
setEffMoveKey( spep_4 -3 + 60, ctbaki2, 7.7, 403.9 , 0 );
setEffMoveKey( spep_4 -3 + 62, ctbaki2, 4.9, 390.4 , 0 );
setEffMoveKey( spep_4 -3 + 64, ctbaki2, 7.8, 398.1 , 0 );

setEffScaleKey( spep_4 -3 + 38, ctbaki2, 0.91, 0.91 );
setEffScaleKey( spep_4 -3 + 40, ctbaki2, 1.95, 1.95 );
setEffScaleKey( spep_4 -3 + 42, ctbaki2, 2.7, 2.7 );
setEffScaleKey( spep_4 -3 + 44, ctbaki2, 2.36, 2.36 );
setEffScaleKey( spep_4 -3 + 46, ctbaki2, 2.24, 2.24 );
setEffScaleKey( spep_4 -3 + 48, ctbaki2, 2.12, 2.12 );
setEffScaleKey( spep_4 -3 + 50, ctbaki2, 2.24, 2.24 );
setEffScaleKey( spep_4 -3 + 52, ctbaki2, 2.12, 2.12 );
setEffScaleKey( spep_4 -3 + 54, ctbaki2, 2.12, 2.12 );
setEffScaleKey( spep_4 -3 + 56, ctbaki2, 2.05, 2.05 );
setEffScaleKey( spep_4 -3 + 58, ctbaki2, 1.98, 1.98 );
setEffScaleKey( spep_4 -3 + 60, ctbaki2, 1.9, 1.9 );
setEffScaleKey( spep_4 -3 + 62, ctbaki2, 1.83, 1.83 );
setEffScaleKey( spep_4 -3 + 64, ctbaki2, 1.76, 1.76 );

setEffRotateKey( spep_4 -3 + 38, ctbaki2, 22.9 );
setEffRotateKey( spep_4 -3 + 40, ctbaki2, 22.9 );
setEffRotateKey( spep_4 -3 + 42, ctbaki2, 28.9 );
setEffRotateKey( spep_4 -3 + 44, ctbaki2, 17.9 );
setEffRotateKey( spep_4 -3 + 46, ctbaki2, 25.9 );
setEffRotateKey( spep_4 -3 + 48, ctbaki2, 17.9 );
setEffRotateKey( spep_4 -3 + 50, ctbaki2, 25.9 );
setEffRotateKey( spep_4 -3 + 52, ctbaki2, 17.9 );
setEffRotateKey( spep_4 -3 + 54, ctbaki2, 24.9 );
setEffRotateKey( spep_4 -3 + 56, ctbaki2, 22.5 );
setEffRotateKey( spep_4 -3 + 58, ctbaki2, 20.1 );
setEffRotateKey( spep_4 -3 + 60, ctbaki2, 17.7 );
setEffRotateKey( spep_4 -3 + 62, ctbaki2, 15.3 );
setEffRotateKey( spep_4 -3 + 64, ctbaki2, 12.9 );

setEffAlphaKey( spep_4 -3 + 38, ctbaki2, 255 );
setEffAlphaKey( spep_4 -3 + 54, ctbaki2, 255 );
setEffAlphaKey( spep_4 -3 + 56, ctbaki2, 204 );
setEffAlphaKey( spep_4 -3 + 58, ctbaki2, 153 );
setEffAlphaKey( spep_4 -3 + 60, ctbaki2, 102 );
setEffAlphaKey( spep_4 -3 + 62, ctbaki2, 51 );
setEffAlphaKey( spep_4 -3 + 64, ctbaki2, 0 );

--SE
playSe( spep_4, 1018);--蹴りの途中
playSe( spep_4 + 36, 1011);--蹴り
--playSe( spep_4 + 103,44);--飛ぶ

--背景黒
entryFadeBg( spep_4 , 0,118, 0, 0, 0, 0, 130);       -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_4 + 38, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_5 =spep_4 + 118;
------------------------------------------------------
--  ガッ
------------------------------------------------------

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_5 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_5 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_5 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_5 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_5 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_5 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_5 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_5 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_5 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_5 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_5 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_5 + 100, bakuhatsu, 255 );



-- ** ひび割れ ** --
hibiware = entryEffect( spep_5 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_5 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_5 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_5 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_5 + 2, hibiware, 0 );
setEffRotateKey( spep_5 + 100, hibiware, 0 );

setEffAlphaKey( spep_5 + 2, hibiware, 0 );
setEffAlphaKey( spep_5 + 13, hibiware, 0 );
setEffAlphaKey( spep_5 + 14, hibiware, 255 );
setEffAlphaKey( spep_5 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen_g = entryEffectLife( spep_5 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 14, shuchusen_g, 32, 25 );

setEffMoveKey( spep_5 + 14, shuchusen_g, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen_g, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen_g, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusen_g, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen_g, 0 );
setEffRotateKey( spep_5 + 46, shuchusen_g, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen_g, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen_g, 255 );
setEffAlphaKey( spep_5 + 30, shuchusen_g, 252 );
setEffAlphaKey( spep_5 + 32, shuchusen_g, 242 );
setEffAlphaKey( spep_5 + 34, shuchusen_g, 227 );
setEffAlphaKey( spep_5 + 36, shuchusen_g, 205 );
setEffAlphaKey( spep_5 + 38, shuchusen_g, 176 );
setEffAlphaKey( spep_5 + 40, shuchusen_g, 142 );
setEffAlphaKey( spep_5 + 42, shuchusen_g, 101 );
setEffAlphaKey( spep_5 + 44, shuchusen_g, 54 );
setEffAlphaKey( spep_5 + 46, shuchusen_g, 0 );

kuroshuchusen_g = entryEffectLife( spep_5 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_5 + 14, kuroshuchusen_g, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, kuroshuchusen_g, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, kuroshuchusen_g, 1, 1 );
setEffScaleKey( spep_5 + 100, kuroshuchusen_g, 1, 1 );

setEffRotateKey( spep_5 + 14, kuroshuchusen_g, 0 );
setEffRotateKey( spep_5 + 100, kuroshuchusen_g, 0 );

setEffAlphaKey( spep_5 + 14, kuroshuchusen_g, 255 );
setEffAlphaKey( spep_5 + 100, kuroshuchusen_g, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 14, ctga, 14, 20 );

setEffMoveKey( spep_5 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_5 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_5 + 14, ctga, -10.9 );
setEffRotateKey( spep_5 + 15, ctga, -10.9 );
setEffRotateKey( spep_5 + 16, ctga, -14.9 );
setEffRotateKey( spep_5 + 17, ctga, -14.9 );
setEffRotateKey( spep_5 + 18, ctga, -10.9 );
setEffRotateKey( spep_5 + 19, ctga, -10.9 );
setEffRotateKey( spep_5 + 20, ctga, -14.9 );
setEffRotateKey( spep_5 + 21, ctga, -14.9 );
setEffRotateKey( spep_5 + 22, ctga, -10.9 );
setEffRotateKey( spep_5 + 23, ctga, -10.9 );
setEffRotateKey( spep_5 + 24, ctga, -14.9 );
setEffRotateKey( spep_5 + 25, ctga, -14.9 );
setEffRotateKey( spep_5 + 26, ctga, -10.9 );
setEffRotateKey( spep_5 + 27, ctga, -10.9 );
setEffRotateKey( spep_5 + 28, ctga, -14.9 );
setEffRotateKey( spep_5 + 100, ctga, -14.9 );

setEffAlphaKey( spep_5 + 14, ctga, 255 );
setEffAlphaKey( spep_5 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_5 + 0, 1, 31, -3.9 , 0 );
--setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0 );
--setMoveKey( spep_5 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_5 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_5 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_5 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_5 + 100, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.3, 0.3 );
--setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
--setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 110, 1, 1.6, 1.6 );


setRotateKey( spep_5 + 0, 1, -40 );
setRotateKey( spep_5 + 1, 1, -40 );
setRotateKey( spep_5 + 2, 1, 80 );
setRotateKey( spep_5 + 3, 1, 80 );
setRotateKey( spep_5 + 4, 1, 200 );
setRotateKey( spep_5 + 5, 1, 200 );
setRotateKey( spep_5 + 6, 1, 360 );
setRotateKey( spep_5 + 7, 1, 360 );
setRotateKey( spep_5 + 8, 1, 558 );
setRotateKey( spep_5 + 9, 1, 558 );
setRotateKey( spep_5 + 10, 1, 425 );
setRotateKey( spep_5 + 11, 1, 425 );
setRotateKey( spep_5 + 12, 1, -40 );
setRotateKey( spep_5 + 100, 1, -40 );

-- ** 音 ** --
playSe( spep_5 + 0, 1023 );  --爆発音
playSe( spep_5 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 14 );
endPhase( spep_5 + 100 );

else 
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- ため
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_0 + 0, SP_01x, 80, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 80, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 80, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 80, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 80, tame, 255 );

--文字エントリー
ctzuzuzun = entryEffectLife( spep_0 -3 + 22,  10013, 56, 0x100, -1, 0, 20.1, 249.8 );--ズズズンッ

setEffMoveKey( spep_0 -3 + 22, ctzuzuzun, 20.1, 249.8 , 0 );
setEffMoveKey( spep_0 -3 + 24, ctzuzuzun, 29.4, 317.8 , 0 );
setEffMoveKey( spep_0 -3 + 26, ctzuzuzun, 51.9, 397 , 0 );
setEffMoveKey( spep_0 -3 + 28, ctzuzuzun, 38, 376.5 , 0 );
setEffMoveKey( spep_0 -3 + 30, ctzuzuzun, 42.8, 369.9 , 0 );
setEffMoveKey( spep_0 -3 + 32, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 -3 + 34, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 -3 + 36, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 -3 + 38, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 -3 + 40, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 -3 + 42, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 -3 + 44, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 -3 + 46, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 -3 + 48, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 -3 + 50, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 -3 + 52, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 -3 + 54, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 -3 + 56, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 -3 + 58, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 -3 + 60, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 -3 + 62, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 -3 + 64, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 -3 + 66, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 -3 + 68, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 -3 + 70, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 -3 + 72, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 -3 + 74, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 -3 + 78, ctzuzuzun, 31.1, 354.5 , 0 );

setEffScaleKey( spep_0 -3 + 22, ctzuzuzun, 1.11, 1.11 );
setEffScaleKey( spep_0 -3 + 24, ctzuzuzun, 2.01, 2.01 );
setEffScaleKey( spep_0 -3 + 26, ctzuzuzun, 2.86, 2.86 );
setEffScaleKey( spep_0 -3 + 28, ctzuzuzun, 2.92, 2.92 );
setEffScaleKey( spep_0 -3 + 78, ctzuzuzun, 2.92, 2.92 );

setEffRotateKey( spep_0 -3 + 22, ctzuzuzun, -5 );
setEffRotateKey( spep_0 -3 + 78, ctzuzuzun, -5 );

setEffAlphaKey( spep_0 -3 + 22, ctzuzuzun, 255 );
setEffAlphaKey( spep_0 -3 + 56, ctzuzuzun, 255 );
setEffAlphaKey( spep_0 -3 + 58, ctzuzuzun, 228 );
setEffAlphaKey( spep_0 -3 + 60, ctzuzuzun, 184 );
setEffAlphaKey( spep_0 -3 + 62, ctzuzuzun, 146 );
setEffAlphaKey( spep_0 -3 + 64, ctzuzuzun, 112 );
setEffAlphaKey( spep_0 -3 + 66, ctzuzuzun, 82 );
setEffAlphaKey( spep_0 -3 + 68, ctzuzuzun, 57 );
setEffAlphaKey( spep_0 -3 + 70, ctzuzuzun, 36 );
setEffAlphaKey( spep_0 -3 + 72, ctzuzuzun, 21 );
setEffAlphaKey( spep_0 -3 + 74, ctzuzuzun, 9 );
setEffAlphaKey( spep_0 -3 + 76, ctzuzuzun, 2 );
setEffAlphaKey( spep_0 -3 + 78, ctzuzuzun, 0 );


--SE
playSe( spep_0+16, 50);--気溜め

--背景黒
entryFadeBg( spep_0+16, 0, 62, 0, 0, 0, 0, 130);       -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 16, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 72, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_1 =spep_0 + 80

------------------------------------------------------
-- ラッシュ
------------------------------------------------------

-- ** エフェクト等 ** --
rush = entryEffect( spep_1 + 0, SP_02x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, rush, 0, 0 , 0 );
setEffMoveKey( spep_1 + 280, rush, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_1 + 280, rush, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush, 0 );
setEffRotateKey( spep_1 + 280, rush, 0 );
setEffAlphaKey( spep_1 + 0, rush, 255 );
setEffAlphaKey( spep_1 + 280, rush, 255 );
setEffAlphaKey( spep_1 + 281, rush, 0 );
setEffAlphaKey( spep_1 + 282, rush, 0 );

--流線
ryusen1 = entryEffectLife( spep_1 + 0,  914, 280, 0x80, -1, 0, 136.3, -13.8 );

setEffMoveKey( spep_1 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 280, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, ryusen1, 5.84, 1.23 );
setEffScaleKey( spep_1 + 280, ryusen1, 5.84, 1.23 );

setEffRotateKey( spep_1 + 0, ryusen1, 0 );
setEffRotateKey( spep_1 + 280, ryusen1, 0 );

setEffAlphaKey( spep_1 + 0, ryusen1, 38 );
setEffAlphaKey( spep_1 + 2, ryusen1, 60 );
setEffAlphaKey( spep_1 + 4, ryusen1, 82 );
setEffAlphaKey( spep_1 + 6, ryusen1, 104 );
setEffAlphaKey( spep_1 + 8, ryusen1, 125 );
setEffAlphaKey( spep_1 + 10, ryusen1, 147 );
setEffAlphaKey( spep_1 + 12, ryusen1, 169 );
setEffAlphaKey( spep_1 + 14, ryusen1, 191 );
setEffAlphaKey( spep_1 + 280, ryusen1, 191 );

--SE
SE0=playSe( spep_1, 44);--移動

--背景黒
entryFadeBg( spep_1 , 0,280, 0, 0, 0, 0, 200);       -- ベース暗め　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 30; --エンドフェイズのフレーム数を置き換える
    
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

--てき
setDisp( spep_1  + 54, 1, 1 );
setDisp( spep_1  + 252, 1, 0 );

changeAnime( spep_1  + 54, 1, 111 );
changeAnime( spep_1  + 55, 1, 111 );
changeAnime( spep_1  + 56, 1, 111 );
changeAnime( spep_1  + 57, 1, 111 );
changeAnime( spep_1  + 58, 1, 111 );
changeAnime( spep_1  + 59, 1, 111 );
changeAnime( spep_1  + 60, 1, 111 );
changeAnime( spep_1  + 61, 1, 111 );
changeAnime( spep_1  + 62, 1, 111 );
changeAnime( spep_1  + 63, 1, 111 );
changeAnime( spep_1  + 64, 1, 111 );
changeAnime( spep_1  + 65, 1, 111 );
changeAnime( spep_1  + 66, 1, 111 );
changeAnime( spep_1  + 67, 1, 111 );
changeAnime( spep_1  + 68, 1, 111 );
changeAnime( spep_1  + 69, 1, 111 );
changeAnime( spep_1  + 70, 1, 111 );
changeAnime( spep_1  + 71, 1, 111 );
changeAnime( spep_1  + 72, 1, 111 );
changeAnime( spep_1  + 73, 1, 111 );
changeAnime( spep_1  + 74, 1, 111 );
changeAnime( spep_1  + 75, 1, 111 );
changeAnime( spep_1  + 76, 1, 111 );
changeAnime( spep_1 -3 + 80, 1, 106 );
changeAnime( spep_1 -3 + 88, 1, 108 );
changeAnime( spep_1 -3 + 96, 1, 106 );
changeAnime( spep_1 -3 + 104, 1, 108 );
changeAnime( spep_1 -3 + 112, 1, 106 );
changeAnime( spep_1 -3 + 120, 1, 108 );
changeAnime( spep_1 -3 + 128, 1, 106 );
changeAnime( spep_1 -3 + 136, 1, 108 );
changeAnime( spep_1 -3 + 144, 1, 106 );
changeAnime( spep_1 -3 + 176, 1, 108 );
changeAnime( spep_1 -3 + 230, 1, 106 );

--setMoveKey( spep_1  + 0, 1, 841.7, 0 , 0 );
--setMoveKey( spep_1 -3 + 28, 1, 841.7, 0 , 0 );
--setMoveKey( spep_1 -3 + 30, 1, 837.8, 0.1 , 0 );
--setMoveKey( spep_1 -3 + 32, 1, 833.4, 0.1 , 0 );
--setMoveKey( spep_1 -3 + 34, 1, 828, -0.1 , 0 );
--setMoveKey( spep_1 -3 + 36, 1, 822.2, 0 , 0 );
--setMoveKey( spep_1 -3 + 38, 1, 815.2, -0.1 , 0 );
--setMoveKey( spep_1 -3 + 40, 1, 807.3, 0 , 0 );
--setMoveKey( spep_1 -3 + 42, 1, 797.5, -0.1 , 0 );
--setMoveKey( spep_1 -3 + 44, 1, 786.2, 0.1 , 0 );
--setMoveKey( spep_1 -3 + 46, 1, 771.8, 0.1 , 0 );
--setMoveKey( spep_1 -3 + 48, 1, 754.1, 0 , 0 );
--setMoveKey( spep_1 -3 + 50, 1, 731, -0.1 , 0 );
--setMoveKey( spep_1 -3 + 52, 1, 701.3, 0.1 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 660, 0 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 601.4, 0 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 514.5, 0.1 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 387.7, 0 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 274.2, -0.1 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 197.8, 0.1 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 140.3, -0.1 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 95.5, 0 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 59.9, 0.2 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 31.7, 0 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 10.8, 0.1 , 0 );
setMoveKey( spep_1 -3 + 76, 1, -1, 0 , 0 );
setMoveKey( spep_1 -3 + 79, 1, -5, 0 , 0 );
setMoveKey( spep_1 -3 + 80, 1, -16.7, 8 , 0 );
setMoveKey( spep_1 -3 + 82, 1, -3.2, 8 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 1, 8 , 0 );
setMoveKey( spep_1 -3 + 87, 1, 5, 8 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 17.5, 8 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 35.5, -10 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 38.9, -10 , 0 );
setMoveKey( spep_1 -3 + 95, 1, 42.2, -10 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 13.1, 8 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 25.3, 8 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 28.2, 8 , 0 );
setMoveKey( spep_1 -3 + 103, 1, 30.9, 8 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 42.3, 8 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 59.2, -10 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 61.6, -10 , 0 );
setMoveKey( spep_1 -3 + 111, 1, 63.9, -10 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 33.8, 8 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 45.1, 8 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 47.1, 8 , 0 );
setMoveKey( spep_1 -3 + 119, 1, 49, 8 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 59.5, 8 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 75.7, -10 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 77.3, -10 , 0 );
setMoveKey( spep_1 -3 + 127, 1, 78.9, -10 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 48.2, 8 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 58.8, 8 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 60.2, 8 , 0 );
setMoveKey( spep_1 -3 + 135, 1, 61.5, 8 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 71.5, 8 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 87.1, -10 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 88.2, -10 , 0 );
setMoveKey( spep_1 -3 + 143, 1, 89.3, -10 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 58, 8 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 68.2, 8 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 69.1, 8 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 70, 8 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 70.1, 8 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 70.2, 8 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 70.3, 8 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 70.3, 8 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 70.4, 8 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 70.5, 8 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 70.6, 8 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 70.7, 8 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 70.8, 8 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 70.9, 8 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 71, 8 , 0 );
setMoveKey( spep_1 -3 + 175, 1, 73.5, 10 , 0 );
setMoveKey( spep_1 -3 + 176, 1, 84.8, 3 , 0 );
setMoveKey( spep_1 -3 + 178, 1, 94.6, 12.6 , 0 );
setMoveKey( spep_1 -3 + 180, 1, 97.8, 14.5 , 0 );
setMoveKey( spep_1 -3 + 182, 1, 108.1, 20.6 , 0 );
setMoveKey( spep_1 -3 + 184, 1, 137.8, 38.3 , 0 );
setMoveKey( spep_1 -3 + 186, 1, 146, 43.1 , 0 );
setMoveKey( spep_1 -3 + 188, 1, 150.7, 45.9 , 0 );
setMoveKey( spep_1 -3 + 190, 1, 154, 47.9 , 0 );
setMoveKey( spep_1 -3 + 192, 1, 156.5, 49.4 , 0 );
setMoveKey( spep_1 -3 + 194, 1, 158.5, 50.6 , 0 );
setMoveKey( spep_1 -3 + 196, 1, 160.1, 51.5 , 0 );
setMoveKey( spep_1 -3 + 198, 1, 161.5, 52.4 , 0 );
setMoveKey( spep_1 -3 + 200, 1, 162.6, 53 , 0 );
setMoveKey( spep_1 -3 + 202, 1, 163.6, 53.6 , 0 );
setMoveKey( spep_1 -3 + 204, 1, 164.4, 54.1 , 0 );
setMoveKey( spep_1 -3 + 206, 1, 165, 54.5 , 0 );
setMoveKey( spep_1 -3 + 208, 1, 165.6, 54.8 , 0 );
setMoveKey( spep_1 -3 + 210, 1, 166.1, 55.1 , 0 );
setMoveKey( spep_1 -3 + 212, 1, 166.5, 55.3 , 0 );
setMoveKey( spep_1 -3 + 214, 1, 166.8, 55.5 , 0 );
setMoveKey( spep_1 -3 + 216, 1, 167.1, 55.7 , 0 );
setMoveKey( spep_1 -3 + 218, 1, 167.3, 55.8 , 0 );
setMoveKey( spep_1 -3 + 220, 1, 167.5, 55.9 , 0 );
setMoveKey( spep_1 -3 + 222, 1, 167.6, 56 , 0 );
setMoveKey( spep_1 -3 + 224, 1, 167.7, 56 , 0 );
setMoveKey( spep_1 -3 + 226, 1, 167.8, 56.1 , 0 );
setMoveKey( spep_1 -3 + 229, 1, 167.8, 56.1 , 0 );
setMoveKey( spep_1 -3 + 230, 1, 114, 20 , 0 );
setMoveKey( spep_1 -3 + 232, 1, 125.1, 29.4 , 0 );
setMoveKey( spep_1 -3 + 234, 1, 137.6, 31.6 , 0 );
setMoveKey( spep_1 -3 + 236, 1, 226.4, 47.5 , 0 );
setMoveKey( spep_1 -3 + 238, 1, 534.5, 102.9 , 0 );
setMoveKey( spep_1 -3 + 240, 1, 587.1, 112.2 , 0 );
setMoveKey( spep_1 -3 + 242, 1, 606.6, 115.8 , 0 );
setMoveKey( spep_1 -3 + 244, 1, 625.7, 117.4 , 0 );
setMoveKey( spep_1 -3 + 246, 1, 650, 118.3 , 0 );
setMoveKey( spep_1 -3 + 248, 1, 652, 118.5 , 0 );
setMoveKey( spep_1 -3 + 250, 1, 672.9, 118.6 , 0 );
setMoveKey( spep_1  + 252, 1, 663, 118.7 , 0 );

z=0.4;

--setScaleKey( spep_1  + 0, 1, 1.6, 1.6 );
--setScaleKey( spep_1 -3 + 32, 1, 1.6, 1.6 );
--setScaleKey( spep_1 -3 + 34, 1, 1.59, 1.59 );
--setScaleKey( spep_1 -3 + 36, 1, 1.59, 1.59 );
--setScaleKey( spep_1 -3 + 38, 1, 1.58, 1.58 );
--setScaleKey( spep_1 -3 + 40, 1, 1.58, 1.58 );
--setScaleKey( spep_1 -3 + 42, 1, 1.57, 1.57 );
--setScaleKey( spep_1 -3 + 44, 1, 1.57, 1.57 );
--setScaleKey( spep_1 -3 + 46, 1, 1.56, 1.56 );
--setScaleKey( spep_1 -3 + 48, 1, 1.55, 1.55 );
--setScaleKey( spep_1 -3 + 50, 1, 1.53, 1.53 );
--setScaleKey( spep_1 -3 + 52, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 54, 1, 1.49 + z, 1.49 + z );
setScaleKey( spep_1 -3 + 56, 1, 1.46 + z, 1.46 + z );
setScaleKey( spep_1 -3 + 58, 1, 1.41 + z, 1.41 + z );
setScaleKey( spep_1 -3 + 60, 1, 1.33 + z, 1.33 + z );
setScaleKey( spep_1 -3 + 62, 1, 1.26 + z, 1.26 + z );
setScaleKey( spep_1 -3 + 64, 1, 1.22 + z, 1.22 + z );
setScaleKey( spep_1 -3 + 66, 1, 1.18 + z, 1.18 + z );
setScaleKey( spep_1 -3 + 68, 1, 1.16 + z, 1.16 + z );
setScaleKey( spep_1 -3 + 70, 1, 1.14 + z, 1.14 + z );
setScaleKey( spep_1 -3 + 72, 1, 1.12 + z, 1.12 + z );
setScaleKey( spep_1 -3 + 74, 1, 1.11 + z, 1.11 + z );
setScaleKey( spep_1 -3 + 76, 1, 1.1 + z, 1.1 + z );
setScaleKey( spep_1 -3 + 79, 1, 1.1 + z, 1.1 + z );
setScaleKey( spep_1 -3 + 80, 1, 1.16 + z, 1.16 + z );
setScaleKey( spep_1  + 173, 1, 1.16 + z, 1.16 + z );
--setScaleKey( spep_1  + 173, 1, 1.26, 1.26 );
--setScaleKey( spep_1  + 175, 1, 1.46, 1.46 );
setScaleKey( spep_1  + 176, 1, 1.76 + z, 1.76 + z );
setScaleKey( spep_1  + 177, 1, 1.76 + z, 1.76 + z );
setScaleKey( spep_1  + 180, 1, 1.16 + z, 1.16 + z );
setScaleKey( spep_1  + 226, 1, 1.16 + z, 1.16 + z );
setScaleKey( spep_1  + 227, 1, 1.46 + z, 1.46 + z );
setScaleKey( spep_1  + 229, 1, 2.26 + z, 2.26 + z );
setScaleKey( spep_1  + 230, 1, 2.26 + z, 2.26 + z );
setScaleKey( spep_1  + 231, 1, 2.26 + z, 2.26 + z );
setScaleKey( spep_1  + 234, 1, 1.46 + z, 1.46 + z );
setScaleKey( spep_1  + 252, 1, 1.46 + z, 1.46 + z );

setRotateKey( spep_1  + 54, 1, 0 );
setRotateKey( spep_1 -3 + 79, 1, 0 );
setRotateKey( spep_1 -3 + 80, 1, -45 );
setRotateKey( spep_1 -3 + 82, 1, -40.8 );
setRotateKey( spep_1 -3 + 87, 1, -40.8 );
setRotateKey( spep_1 -3 + 88, 1, -10 );
setRotateKey( spep_1 -3 + 90, 1, -2.5 );
setRotateKey( spep_1 -3 + 95, 1, -2.5 );
setRotateKey( spep_1 -3 + 96, 1, -45 );
setRotateKey( spep_1 -3 + 98, 1, -40.8 );
setRotateKey( spep_1 -3 + 103, 1, -40.8 );
setRotateKey( spep_1 -3 + 104, 1, -10 );
setRotateKey( spep_1 -3 + 106, 1, -2.5 );
setRotateKey( spep_1 -3 + 111, 1, -2.5 );
setRotateKey( spep_1 -3 + 112, 1, -45 );
setRotateKey( spep_1 -3 + 114, 1, -40.8 );
setRotateKey( spep_1 -3 + 119, 1, -40.8 );
setRotateKey( spep_1 -3 + 120, 1, -10 );
setRotateKey( spep_1 -3 + 122, 1, -2.5 );
setRotateKey( spep_1 -3 + 127, 1, -2.5 );
setRotateKey( spep_1 -3 + 128, 1, -45 );
setRotateKey( spep_1 -3 + 130, 1, -40.8 );
setRotateKey( spep_1 -3 + 135, 1, -40.8 );
setRotateKey( spep_1 -3 + 136, 1, -10 );
setRotateKey( spep_1 -3 + 138, 1, -2.5 );
setRotateKey( spep_1 -3 + 143, 1, -2.5 );
setRotateKey( spep_1 -3 + 144, 1, -45 );
setRotateKey( spep_1 -3 + 146, 1, -40.8 );
setRotateKey( spep_1 -3 + 175, 1, -40.8 );
setRotateKey( spep_1 -3 + 176, 1, -10 );
setRotateKey( spep_1 -3 + 178, 1, -13 );
setRotateKey( spep_1 -3 + 229, 1, -13 );
setRotateKey( spep_1 -3 + 230, 1, -45 );
setRotateKey( spep_1 -3 + 232, 1, -39.5 );
setRotateKey( spep_1 -3 + 234, 1, -38.7 );
setRotateKey( spep_1 -3 + 236, 1, -33.3 );
setRotateKey( spep_1 -3 + 238, 1, -14.9 );
setRotateKey( spep_1 -3 + 240, 1, -11.7 );
setRotateKey( spep_1 -3 + 242, 1, -10.6 );
setRotateKey( spep_1 -3 + 244, 1, -10 );
setRotateKey( spep_1 -3 + 246, 1, -9.8 );
setRotateKey( spep_1 -3 + 248, 1, -9.7 );
setRotateKey( spep_1  + 252, 1, -9.6 );

--集中線
shuchusen1 = entryEffectLife( spep_1 -3 + 80,  906, 72, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 80, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 152, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 80, shuchusen1, 1.05, 1.05 );
setEffScaleKey( spep_1 -3 + 152, shuchusen1, 1.05, 1.05 );

setEffRotateKey( spep_1 -3 + 80, shuchusen1, 0 );
setEffRotateKey( spep_1 -3 + 152, shuchusen1, 0 );

setEffAlphaKey( spep_1 -3 + 80, shuchusen1, 255 );
setEffAlphaKey( spep_1 -3 + 152, shuchusen1, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_1 -3 + 176,  906, 18, 0x100, -1, 0, 190.1, 8.1 );

setEffMoveKey( spep_1 -3 + 176, shuchusen2, 190.1, 8.1 , 0 );
setEffMoveKey( spep_1 -3 + 194, shuchusen2, 190.1, 8.1 , 0 );

setEffScaleKey( spep_1 -3 + 176, shuchusen2, 1.32, 1.33 );
setEffScaleKey( spep_1 -3 + 194, shuchusen2, 1.32, 1.33 );

setEffRotateKey( spep_1 -3 + 176, shuchusen2, 0 );
setEffRotateKey( spep_1 -3 + 194, shuchusen2, 0 );

setEffAlphaKey( spep_1 -3 + 176, shuchusen2, 255 );
setEffAlphaKey( spep_1 -3 + 194, shuchusen2, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_1 -3 + 230,  906, 16, 0x100, -1, 0, 157.3, 8.1 );

setEffMoveKey( spep_1 -3 + 230, shuchusen3, 157.3, 8.1 , 0 );
setEffMoveKey( spep_1 -3 + 246, shuchusen3, 157.3, 8.1 , 0 );

setEffScaleKey( spep_1 -3 + 230, shuchusen3, 1.42, 1.44 );
setEffScaleKey( spep_1 -3 + 246, shuchusen3, 1.42, 1.44 );

setEffRotateKey( spep_1 -3 + 230, shuchusen3, 0 )
setEffRotateKey( spep_1 -3 + 246, shuchusen3, 0 )

setEffAlphaKey( spep_1 -3 + 230, shuchusen3, 255 );
setEffAlphaKey( spep_1 -3 + 246, shuchusen3, 255 );

--文字エントリ-
ctdogagaga = entryEffectLife( spep_1 -3 + 80,  10017, 72, 0x100, -1, 0, 23.3, 359.6 );--ドガガガッ

setEffMoveKey( spep_1 -3 + 80, ctdogagaga, 23.3, 359.6 , 0 );
setEffMoveKey( spep_1 -3 + 82, ctdogagaga, 17.6, 370.9 , 0 );
setEffMoveKey( spep_1 -3 + 84, ctdogagaga, 21.2, 363.7 , 0 );
setEffMoveKey( spep_1 -3 + 86, ctdogagaga, 13.9, 365.7 , 0 );
setEffMoveKey( spep_1 -3 + 88, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_1 -3 + 90, ctdogagaga, 16.4, 365.7 , 0 );
setEffMoveKey( spep_1 -3 + 92, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_1 -3 + 94, ctdogagaga, 13.4, 364.7 , 0 );
setEffMoveKey( spep_1 -3 + 96, ctdogagaga, 21.2, 363.7 , 0 );
setEffMoveKey( spep_1 -3 + 98, ctdogagaga, 13.4, 364.7 , 0 );
setEffMoveKey( spep_1 -3 + 100, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_1 -3 + 102, ctdogagaga, 13.4, 364.7 , 0 );
setEffMoveKey( spep_1 -3 + 104, ctdogagaga, 21.2, 363.7 , 0 );
setEffMoveKey( spep_1 -3 + 106, ctdogagaga, 13.9, 365.7 , 0 );
setEffMoveKey( spep_1 -3 + 108, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_1 -3 + 110, ctdogagaga, 13.4, 364.7 , 0 );
setEffMoveKey( spep_1 -3 + 112, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_1 -3 + 114, ctdogagaga, 13.4, 364.7 , 0 );
setEffMoveKey( spep_1 -3 + 116, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_1 -3 + 118, ctdogagaga, 13.4, 364.7 , 0 );
setEffMoveKey( spep_1 -3 + 120, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_1 -3 + 122, ctdogagaga, 13.4, 366.7 , 0 );
setEffMoveKey( spep_1 -3 + 124, ctdogagaga, 21.2, 363.7 , 0 );
setEffMoveKey( spep_1 -3 + 126, ctdogagaga, 13.9, 365.7 , 0 );
setEffMoveKey( spep_1 -3 + 128, ctdogagaga, 18.4, 354.2 , 0 );
setEffMoveKey( spep_1 -3 + 130, ctdogagaga, 11.4, 360.7 , 0 );
setEffMoveKey( spep_1 -3 + 132, ctdogagaga, 19.2, 357.7 , 0 );
setEffMoveKey( spep_1 -3 + 134, ctdogagaga, 15.4, 372.7 , 0 );
setEffMoveKey( spep_1 -3 + 136, ctdogagaga, 19.7, 356.7 , 0 );
setEffMoveKey( spep_1 -3 + 138, ctdogagaga, 11.4, 360.7 , 0 );
setEffMoveKey( spep_1 -3 + 140, ctdogagaga, 19.2, 357.7 , 0 );
setEffMoveKey( spep_1 -3 + 142, ctdogagaga, 15.4, 372.7 , 0 );
setEffMoveKey( spep_1 -3 + 144, ctdogagaga, 19.7, 356.7 , 0 );
setEffMoveKey( spep_1 -3 + 146, ctdogagaga, 12.6, 363.2 , 0 );
setEffMoveKey( spep_1 -3 + 148, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_1 -3 + 150, ctdogagaga, 13.4, 366.7 , 0 );
setEffMoveKey( spep_1 -3 + 152, ctdogagaga, 21.2, 363.7 , 0 );

setEffScaleKey( spep_1 -3 + 80, ctdogagaga, 1.88, 1.88 );
setEffScaleKey( spep_1 -3 + 82, ctdogagaga, 3.07, 3.07 );
setEffScaleKey( spep_1 -3 + 84, ctdogagaga, 2.75, 2.75 );
setEffScaleKey( spep_1 -3 + 152, ctdogagaga, 2.75, 2.75 );

setEffRotateKey( spep_1 -3 + 80, ctdogagaga, -2.3 );
setEffRotateKey( spep_1 -3 + 84, ctdogagaga, -2.3 );
setEffRotateKey( spep_1 -3 + 86, ctdogagaga, -2.5 );
setEffRotateKey( spep_1 -3 + 152, ctdogagaga, -2.5 );

setEffAlphaKey( spep_1 -3 + 80, ctdogagaga, 255 );
setEffAlphaKey( spep_1 -3 + 152, ctdogagaga, 255 );

--文字エントリ-
ctbaki = entryEffectLife( spep_1 -3 + 178,  10020, 14, 0x100, -1, 0, -124.6, 277.5 );

setEffMoveKey( spep_1 -3 + 178, ctbaki, -124.6, 277.5 , 0 );
setEffMoveKey( spep_1 -3 + 180, ctbaki, -127.9, 293.1 , 0 );
setEffMoveKey( spep_1 -3 + 182, ctbaki, -126.2, 306.6 , 0 );
setEffMoveKey( spep_1 -3 + 184, ctbaki, -126.3, 307.3 , 0 );
setEffMoveKey( spep_1 -3 + 186, ctbaki, -126.5, 307.9 , 0 );
setEffMoveKey( spep_1 -3 + 188, ctbaki, -127.4, 311.6 , 0 );
setEffMoveKey( spep_1 -3 + 190, ctbaki, -128.2, 315.3 , 0 );
setEffMoveKey( spep_1 -3 + 192, ctbaki, -129.1, 318.9 , 0 );

setEffScaleKey( spep_1 -3 + 178, ctbaki, 0.7, 0.7 );
setEffScaleKey( spep_1 -3 + 180, ctbaki, 1.55, 1.55 );
setEffScaleKey( spep_1 -3 + 182, ctbaki, 2.05, 2.05 );
setEffScaleKey( spep_1 -3 + 184, ctbaki, 2.03, 2.03 );
setEffScaleKey( spep_1 -3 + 186, ctbaki, 2, 2 );
setEffScaleKey( spep_1 -3 + 188, ctbaki, 1.87, 1.87 );
setEffScaleKey( spep_1 -3 + 190, ctbaki, 1.73, 1.73 );
setEffScaleKey( spep_1 -3 + 192, ctbaki, 1.6, 1.6 );

setEffRotateKey( spep_1 -3 + 178, ctbaki, -18.8 );
setEffRotateKey( spep_1 -3 + 180, ctbaki, -13.9 );
setEffRotateKey( spep_1 -3 + 182, ctbaki, -13 );
setEffRotateKey( spep_1 -3 + 192, ctbaki, -13 );

setEffAlphaKey( spep_1 -3 + 178, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 186, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 188, ctbaki, 170 );
setEffAlphaKey( spep_1 -3 + 190, ctbaki, 85 );
setEffAlphaKey( spep_1 -3 + 192, ctbaki, 0 );

--文字エントリ-

ctga = entryEffectLife( spep_1 -3 + 230,  10005, 16, 0x100, -1, 0, 158.1, 359.5 );--ガッ
setEffMoveKey( spep_1 -3 + 230, ctga, 158.1, 359.5 , 0 );
setEffMoveKey( spep_1 -3 + 232, ctga, 158.2, 359.5 , 0 );
setEffMoveKey( spep_1 -3 + 234, ctga, 158.2, 359.5 , 0 );
setEffMoveKey( spep_1 -3 + 236, ctga, 158.1, 359.6 , 0 );
setEffMoveKey( spep_1 -3 + 238, ctga, 158.2, 359.5 , 0 );
setEffMoveKey( spep_1 -3 + 240, ctga, 158.1, 359.5 , 0 );
setEffMoveKey( spep_1 -3 + 246, ctga, 158.1, 359.5 , 0 );

a=0.9;

setEffScaleKey( spep_1 -3 + 230, ctga, 0.77 , 0.77  );
setEffScaleKey( spep_1 -3 + 232, ctga, 1.25 + a, 1.25 + a );
setEffScaleKey( spep_1 -3 + 246, ctga, 1.25 + a, 1.25 + a );

setEffRotateKey( spep_1 -3 + 230, ctga, 9.2 );
setEffRotateKey( spep_1 -3 + 232, ctga, 9.2 );
setEffRotateKey( spep_1 -3 + 234, ctga, 4.9 );
setEffRotateKey( spep_1 -3 + 236, ctga, 14.4 );
setEffRotateKey( spep_1 -3 + 238, ctga, 6.5 );
setEffRotateKey( spep_1 -3 + 240, ctga, 12.2 );
setEffRotateKey( spep_1 -3 + 246, ctga, 12.2 );

setEffAlphaKey( spep_1 -3 + 230, ctga, 255 );
setEffAlphaKey( spep_1 -3 + 240, ctga, 255 );
setEffAlphaKey( spep_1 -3 + 242, ctga, 170 );
setEffAlphaKey( spep_1 -3 + 244, ctga, 85 );
setEffAlphaKey( spep_1 -3 + 246, ctga, 0 );

--SE
playSe( spep_1+78, 1001);--けり
playSe( spep_1+86, 1000);--パンチ
playSe( spep_1+94, 1000);--パンチ
playSe( spep_1+102, 1001);--けり
playSe( spep_1+110, 1001);--けり
playSe( spep_1+118, 1000);--パンチ
playSe( spep_1+126, 1000);--パンチ
playSe( spep_1+134, 1001);--けり
playSe( spep_1+142, 1001);--けり
playSe( spep_1+174, 1009);--膝
playSe( spep_1+226, 1010);--強パンチ

-- ** ホワイトフェード ** --
entryFade( spep_1 + 272, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_2 =spep_1 + 280;

------------------------------------------------------
-- 手前ジャンプ
------------------------------------------------------
-- ** エフェクト等 ** --
jump = entryEffect( spep_2 + 0, SP_03x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, jump, 0, 0 , 0 );
setEffMoveKey( spep_2 + 130, jump, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, jump, -1.0, 1.0 );
setEffScaleKey( spep_2 + 130, jump, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, jump, 0 );
setEffRotateKey( spep_2 + 130, jump, 0 );
setEffAlphaKey( spep_2 + 0, jump, 255 );
setEffAlphaKey( spep_2 + 130, jump, 255 );
setEffAlphaKey( spep_2 + 131, jump, 0 );
setEffAlphaKey( spep_2 + 132, jump, 0 );

--集中線
shuchusen4 = entryEffectLife( spep_2 ,  906, 130, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 , shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_2 +130, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_2 , shuchusen4, 1.37, 1.37 );
setEffScaleKey( spep_2 + 130, shuchusen4, 1.37, 1.37 );

setEffRotateKey( spep_2 , shuchusen4, 0 );
setEffRotateKey( spep_2 + 130, shuchusen4, 0 );

setEffAlphaKey( spep_2 , shuchusen4, 255 );
setEffAlphaKey( spep_2 + 130, shuchusen4, 255 );

--***カットイン***
--speff = entryEffect(  spep_2 + 10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff3 = entryEffect(  spep_2 + 10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff3, 4, 5);   

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_2 + 22, 190006, 74, 0x100, -1, 0, 0, 540);    -- ゴゴゴゴ

setEffMoveKey(  spep_2 + 22,  ctgogo,  0,  540);
setEffMoveKey(  spep_2 + 96,  ctgogo,  0,  540);

setEffAlphaKey( spep_2 + 22, ctgogo, 0 );
setEffAlphaKey( spep_2 + 23, ctgogo, 255 );
setEffAlphaKey( spep_2 + 24, ctgogo, 255 );
setEffAlphaKey( spep_2 + 82, ctgogo, 255 );
setEffAlphaKey( spep_2 + 84, ctgogo, 255 );
setEffAlphaKey( spep_2 + 86, ctgogo, 255 );
setEffAlphaKey( spep_2 + 88, ctgogo, 255 );
setEffAlphaKey( spep_2 + 90, ctgogo, 191 );
setEffAlphaKey( spep_2 + 92, ctgogo, 128 );
setEffAlphaKey( spep_2 + 94, ctgogo, 64 );
setEffAlphaKey( spep_2 + 95, ctgogo, 0 );

setEffRotateKey(  spep_2 + 22,  ctgogo,  0);
setEffRotateKey(  spep_2 + 96,  ctgogo,  0);

setEffScaleKey(  spep_2 + 22,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 + 88,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 + 96,  ctgogo, -1.07, 1.07 );

--SE
playSe( spep_2, 9);--ジャンプ
playSe( spep_2+22, 1018);--カットイン

--背景黒
entryFadeBg( spep_2 , 0,130, 0, 0, 0, 0, 130);       -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 122, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_3 =spep_2 + 130;

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


entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

--------------------------------------
--キック
--------------------------------------

-- ** エフェクト等 ** --
kick = entryEffect( spep_4 + 0, SP_04x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kick, 0, 0 , 0 );
setEffMoveKey( spep_4 + 118, kick, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kick, 1.0, 1.0 );
setEffScaleKey( spep_4 + 118, kick, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick, 0 );
setEffRotateKey( spep_4 + 118, kick, 0 );
setEffAlphaKey( spep_4 + 0, kick, 255 );
setEffAlphaKey( spep_4 + 116, kick, 255 );
setEffAlphaKey( spep_4 + 117, kick, 255 );
setEffAlphaKey( spep_4 + 118, kick, 0 );

--てき
setDisp( spep_4 + 0, 1, 1 );
--setDisp( spep_4 + 176, 1, 1 );

setShakeChara(spep_4  + 34, 1,82,10);

changeAnime( spep_4 + 0, 1, 118 );
changeAnime( spep_4 -3 + 38, 1, 106 );

setMoveKey( spep_4  + 0, 1, 1143, -9.3 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 1143, -9.3 , 0 );
setMoveKey( spep_4 -3 + 17, 1, 1143, -9.3 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 106.8, -9.3 , 0 );
setMoveKey( spep_4 -3 + 37, 1, 106.8, -9.3 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 47, 9.5 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 47.1, 9.5 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 47.2, 9.4 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 47.3, 9.4 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 47.4, 9.4 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 47.6, 9.3 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 47.7, 9.3 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 47.9, 9.2 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 48, 9.2 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 48.2, 9.2 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 48.4, 9.1 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 48.5, 9.1 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 48.7, 9 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 48.9, 9 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 49.1, 8.9 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 49.4, 8.8 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 49.6, 8.8 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 49.9, 8.7 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 50.1, 8.6 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 50.5, 8.6 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 50.8, 8.5 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 51.1, 8.4 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 51.6, 8.3 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 52, 8.2 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 52.5, 8 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 53, 7.9 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 53.6, 7.7 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 54.3, 7.5 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 55.1, 7.4 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 56, 7.1 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 57.1, 6.7 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 58.6, 6.4 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 60.5, 5.8 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 64.9, 4.8 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 98.4, -0.4 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 316, -34.4 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 603, -80.1 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 669.5, -90.9 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 690.6, -94.3 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 695, -94.9 , 0 );
setMoveKey( spep_4  + 117, 1, 695, -94.9 , 0 );
--setMoveKey( spep_4  + 176, 1, 737.4, -141.1 , 0 );

setScaleKey( spep_4  + 0, 1, 2.0 + z, 2.0 + z );
setScaleKey( spep_4  + 36, 1, 2.0 + z, 2.0 + z );
setScaleKey( spep_4  + 37, 1, 2.5 + z, 2.5 + z );
setScaleKey( spep_4  + 45, 1, 2.5 + z, 2.5 + z );
setScaleKey( spep_4  + 52, 1, 2.0 + z, 2.0 + z );
setScaleKey( spep_4  + 117, 1, 2.0 + z, 2.0 + z );

setRotateKey( spep_4  + 0, 1, 0 );
setRotateKey( spep_4 -3 + 37, 1, 0 );
setRotateKey( spep_4 -3 + 38, 1, -45 );
setRotateKey( spep_4 -3 + 40, 1, -45 );
setRotateKey( spep_4 -3 + 42, 1, -44.9 );
setRotateKey( spep_4 -3 + 46, 1, -44.9 );
setRotateKey( spep_4 -3 + 48, 1, -44.8 );
setRotateKey( spep_4 -3 + 50, 1, -44.8 );
setRotateKey( spep_4 -3 + 52, 1, -44.7 );
setRotateKey( spep_4 -3 + 56, 1, -44.7 );
setRotateKey( spep_4 -3 + 58, 1, -44.6 );
setRotateKey( spep_4 -3 + 60, 1, -44.6 );
setRotateKey( spep_4 -3 + 62, 1, -44.5 );
setRotateKey( spep_4 -3 + 64, 1, -44.4 );
setRotateKey( spep_4 -3 + 66, 1, -44.4 );
setRotateKey( spep_4 -3 + 68, 1, -44.3 );
setRotateKey( spep_4 -3 + 70, 1, -44.3 );
setRotateKey( spep_4 -3 + 72, 1, -44.2 );
setRotateKey( spep_4 -3 + 74, 1, -44.1 );
setRotateKey( spep_4 -3 + 76, 1, -44 );
setRotateKey( spep_4 -3 + 78, 1, -43.9 );
setRotateKey( spep_4 -3 + 80, 1, -43.8 );
setRotateKey( spep_4 -3 + 82, 1, -43.7 );
setRotateKey( spep_4 -3 + 84, 1, -43.6 );
setRotateKey( spep_4 -3 + 86, 1, -43.5 );
setRotateKey( spep_4 -3 + 88, 1, -43.3 );
setRotateKey( spep_4 -3 + 90, 1, -43.1 );
setRotateKey( spep_4 -3 + 92, 1, -42.9 );
setRotateKey( spep_4 -3 + 94, 1, -42.7 );
setRotateKey( spep_4 -3 + 96, 1, -42.5 );
setRotateKey( spep_4 -3 + 98, 1, -42.2 );
setRotateKey( spep_4 -3 + 100, 1, -41.8 );
setRotateKey( spep_4 -3 + 102, 1, -41.2 );
setRotateKey( spep_4 -3 + 104, 1, -40 );
setRotateKey( spep_4 -3 + 106, 1, -38.7 );
setRotateKey( spep_4 -3 + 108, 1, -30 );
setRotateKey( spep_4 -3 + 110, 1, -18.6 );
setRotateKey( spep_4 -3 + 112, 1, -16 );
setRotateKey( spep_4 -3 + 114, 1, -15.2 );
setRotateKey( spep_4 -3 + 116, 1, -15 );
setRotateKey( spep_4  + 117, 1, -15 );
--setRotateKey( spep_4  + 176, 1, 30 );

--集中線
shuchusen5 = entryEffectLife( spep_4 -3 + 38,  906, 84, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 -3 + 38, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_4  + 118, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_4 -3 + 38, shuchusen5, 1.05, 1.05 );
setEffScaleKey( spep_4  + 118, shuchusen5, 1.05, 1.05 );


setEffRotateKey( spep_4 -3 + 38, shuchusen5, 0 );
setEffRotateKey( spep_4  + 118, shuchusen5, 0 );

setEffAlphaKey( spep_4 -3 + 38, shuchusen5, 255 );
setEffAlphaKey( spep_4 -3 + 116, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 117, shuchusen5, 255 );
setEffAlphaKey( spep_4  + 118, shuchusen5, 0 );
setEffAlphaKey( spep_4  + 119, shuchusen5, 0 );

--文字エントリー
ctbaki2 = entryEffectLife( spep_4 -3 + 38,  10020, 26, 0x100, -1, 0, 16.8, 320.6 );--バキッ

setEffMoveKey( spep_4 -3 + 38, ctbaki2, 16.8, 320.6 , 0 );
setEffMoveKey( spep_4 -3 + 40, ctbaki2, 9.9, 377.6 , 0 );
setEffMoveKey( spep_4 -3 + 42, ctbaki2, -10.5, 411.4 , 0 );
setEffMoveKey( spep_4 -3 + 44, ctbaki2, 10.9, 431.5 , 0 );
setEffMoveKey( spep_4 -3 + 46, ctbaki2, 2.1, 420.1 , 0 );
setEffMoveKey( spep_4 -3 + 48, ctbaki2, 12.2, 431.4 , 0 );
setEffMoveKey( spep_4 -3 + 50, ctbaki2, 2.1, 420.1 , 0 );
setEffMoveKey( spep_4 -3 + 52, ctbaki2, 12.2, 417.4 , 0 );
setEffMoveKey( spep_4 -3 + 54, ctbaki2, 1.5, 402 , 0 );
setEffMoveKey( spep_4 -3 + 56, ctbaki2, 7.2, 410.2 , 0 );
setEffMoveKey( spep_4 -3 + 58, ctbaki2, 3.5, 395.9 , 0 );
setEffMoveKey( spep_4 -3 + 60, ctbaki2, 7.7, 403.9 , 0 );
setEffMoveKey( spep_4 -3 + 62, ctbaki2, 4.9, 390.4 , 0 );
setEffMoveKey( spep_4 -3 + 64, ctbaki2, 7.8, 398.1 , 0 );

setEffScaleKey( spep_4 -3 + 38, ctbaki2, 0.91, 0.91 );
setEffScaleKey( spep_4 -3 + 40, ctbaki2, 1.95, 1.95 );
setEffScaleKey( spep_4 -3 + 42, ctbaki2, 2.7, 2.7 );
setEffScaleKey( spep_4 -3 + 44, ctbaki2, 2.36, 2.36 );
setEffScaleKey( spep_4 -3 + 46, ctbaki2, 2.24, 2.24 );
setEffScaleKey( spep_4 -3 + 48, ctbaki2, 2.12, 2.12 );
setEffScaleKey( spep_4 -3 + 50, ctbaki2, 2.24, 2.24 );
setEffScaleKey( spep_4 -3 + 52, ctbaki2, 2.12, 2.12 );
setEffScaleKey( spep_4 -3 + 54, ctbaki2, 2.12, 2.12 );
setEffScaleKey( spep_4 -3 + 56, ctbaki2, 2.05, 2.05 );
setEffScaleKey( spep_4 -3 + 58, ctbaki2, 1.98, 1.98 );
setEffScaleKey( spep_4 -3 + 60, ctbaki2, 1.9, 1.9 );
setEffScaleKey( spep_4 -3 + 62, ctbaki2, 1.83, 1.83 );
setEffScaleKey( spep_4 -3 + 64, ctbaki2, 1.76, 1.76 );

setEffRotateKey( spep_4 -3 + 38, ctbaki2, -22.9 );
setEffRotateKey( spep_4 -3 + 40, ctbaki2, -22.9 );
setEffRotateKey( spep_4 -3 + 42, ctbaki2, -28.9 );
setEffRotateKey( spep_4 -3 + 44, ctbaki2, -17.9 );
setEffRotateKey( spep_4 -3 + 46, ctbaki2, -25.9 );
setEffRotateKey( spep_4 -3 + 48, ctbaki2, -17.9 );
setEffRotateKey( spep_4 -3 + 50, ctbaki2, -25.9 );
setEffRotateKey( spep_4 -3 + 52, ctbaki2, -17.9 );
setEffRotateKey( spep_4 -3 + 54, ctbaki2, -24.9 );
setEffRotateKey( spep_4 -3 + 56, ctbaki2, -22.5 );
setEffRotateKey( spep_4 -3 + 58, ctbaki2, -20.1 );
setEffRotateKey( spep_4 -3 + 60, ctbaki2, -17.7 );
setEffRotateKey( spep_4 -3 + 62, ctbaki2, -15.3 );
setEffRotateKey( spep_4 -3 + 64, ctbaki2, -12.9 );

setEffAlphaKey( spep_4 -3 + 38, ctbaki2, 255 );
setEffAlphaKey( spep_4 -3 + 54, ctbaki2, 255 );
setEffAlphaKey( spep_4 -3 + 56, ctbaki2, 204 );
setEffAlphaKey( spep_4 -3 + 58, ctbaki2, 153 );
setEffAlphaKey( spep_4 -3 + 60, ctbaki2, 102 );
setEffAlphaKey( spep_4 -3 + 62, ctbaki2, 51 );
setEffAlphaKey( spep_4 -3 + 64, ctbaki2, 0 );

--SE
playSe( spep_4, 1018);--蹴りの途中
playSe( spep_4 + 36, 1011);--蹴り
--playSe( spep_4 + 103,44);--飛ぶ

--背景黒
entryFadeBg( spep_4 , 0,118, 0, 0, 0, 0, 130);       -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_4 + 38, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_5 =spep_4 + 118;
------------------------------------------------------
--  ガッ
------------------------------------------------------

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_5 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_5 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_5 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_5 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_5 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_5 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_5 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_5 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_5 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_5 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_5 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_5 + 100, bakuhatsu, 255 );



-- ** ひび割れ ** --
hibiware = entryEffect( spep_5 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_5 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_5 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_5 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_5 + 2, hibiware, 0 );
setEffRotateKey( spep_5 + 100, hibiware, 0 );

setEffAlphaKey( spep_5 + 2, hibiware, 0 );
setEffAlphaKey( spep_5 + 13, hibiware, 0 );
setEffAlphaKey( spep_5 + 14, hibiware, 255 );
setEffAlphaKey( spep_5 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen_g = entryEffectLife( spep_5 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 14, shuchusen_g, 32, 25 );

setEffMoveKey( spep_5 + 14, shuchusen_g, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen_g, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen_g, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusen_g, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen_g, 0 );
setEffRotateKey( spep_5 + 46, shuchusen_g, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen_g, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen_g, 255 );
setEffAlphaKey( spep_5 + 30, shuchusen_g, 252 );
setEffAlphaKey( spep_5 + 32, shuchusen_g, 242 );
setEffAlphaKey( spep_5 + 34, shuchusen_g, 227 );
setEffAlphaKey( spep_5 + 36, shuchusen_g, 205 );
setEffAlphaKey( spep_5 + 38, shuchusen_g, 176 );
setEffAlphaKey( spep_5 + 40, shuchusen_g, 142 );
setEffAlphaKey( spep_5 + 42, shuchusen_g, 101 );
setEffAlphaKey( spep_5 + 44, shuchusen_g, 54 );
setEffAlphaKey( spep_5 + 46, shuchusen_g, 0 );

kuroshuchusen_g = entryEffectLife( spep_5 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_5 + 14, kuroshuchusen_g, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, kuroshuchusen_g, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, kuroshuchusen_g, 1, 1 );
setEffScaleKey( spep_5 + 100, kuroshuchusen_g, 1, 1 );

setEffRotateKey( spep_5 + 14, kuroshuchusen_g, 0 );
setEffRotateKey( spep_5 + 100, kuroshuchusen_g, 0 );

setEffAlphaKey( spep_5 + 14, kuroshuchusen_g, 255 );
setEffAlphaKey( spep_5 + 100, kuroshuchusen_g, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 14, ctga, 14, 20 );

setEffMoveKey( spep_5 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_5 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_5 + 14, ctga, -10.9 );
setEffRotateKey( spep_5 + 15, ctga, -10.9 );
setEffRotateKey( spep_5 + 16, ctga, -14.9 );
setEffRotateKey( spep_5 + 17, ctga, -14.9 );
setEffRotateKey( spep_5 + 18, ctga, -10.9 );
setEffRotateKey( spep_5 + 19, ctga, -10.9 );
setEffRotateKey( spep_5 + 20, ctga, -14.9 );
setEffRotateKey( spep_5 + 21, ctga, -14.9 );
setEffRotateKey( spep_5 + 22, ctga, -10.9 );
setEffRotateKey( spep_5 + 23, ctga, -10.9 );
setEffRotateKey( spep_5 + 24, ctga, -14.9 );
setEffRotateKey( spep_5 + 25, ctga, -14.9 );
setEffRotateKey( spep_5 + 26, ctga, -10.9 );
setEffRotateKey( spep_5 + 27, ctga, -10.9 );
setEffRotateKey( spep_5 + 28, ctga, -14.9 );
setEffRotateKey( spep_5 + 100, ctga, -14.9 );

setEffAlphaKey( spep_5 + 14, ctga, 255 );
setEffAlphaKey( spep_5 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_5 + 0, 1, 31, -3.9 , 0 );
--setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0 );
--setMoveKey( spep_5 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_5 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_5 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_5 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_5 + 100, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.3, 0.3 );
--setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
--setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 110, 1, 1.6, 1.6 );


setRotateKey( spep_5 + 0, 1, -40 );
setRotateKey( spep_5 + 1, 1, -40 );
setRotateKey( spep_5 + 2, 1, 80 );
setRotateKey( spep_5 + 3, 1, 80 );
setRotateKey( spep_5 + 4, 1, 200 );
setRotateKey( spep_5 + 5, 1, 200 );
setRotateKey( spep_5 + 6, 1, 360 );
setRotateKey( spep_5 + 7, 1, 360 );
setRotateKey( spep_5 + 8, 1, 558 );
setRotateKey( spep_5 + 9, 1, 558 );
setRotateKey( spep_5 + 10, 1, 425 );
setRotateKey( spep_5 + 11, 1, 425 );
setRotateKey( spep_5 + 12, 1, -40 );
setRotateKey( spep_5 + 100, 1, -40 );

-- ** 音 ** --
playSe( spep_5 + 0, 1023 );  --爆発音
playSe( spep_5 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 14 );
endPhase( spep_5 + 100 );
end