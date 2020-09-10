--1016250:ランチ_はっくしょん！
--sp_effect_a8_00042

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
SP_01=	155643	;--	待機＆カットイン
SP_02=	155645	;--	ランチ変身→マシンガンをうつ
SP_03=	155647	;--	くしゃみカットイン
SP_04=	155648	;--	弾丸が敵にあたる：敵前
SP_05=	155649	;--	弾丸が敵にあたる：敵後

--エフェクト(てき)
SP_01x=	155644	;--	待機＆カットイン	(敵)
SP_02x=	155646	;--	ランチ変身→マシンガンをうつ	(敵)
SP_03x=	155647	;--	くしゃみカットイン	
SP_04x=	155648	;--	弾丸が敵にあたる：敵前	
SP_05x=	155649	;--	弾丸が敵にあたる：敵後	

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);

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
setAlphaKey( 0, 1, 255 );

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
-- 待機＆カットイン
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 90, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 90, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 90, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 90, tame, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0+4  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0+4  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +16, 190006, 72, 0x102, -1, 0, 100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +16,  ctgogo,  100,  510);
setEffMoveKey(  spep_0 +88,  ctgogo,  100,  510);

setEffAlphaKey( spep_0 +16, ctgogo, 0 );
setEffAlphaKey( spep_0 + 17, ctgogo, 255 );
setEffAlphaKey( spep_0 + 18, ctgogo, 255 );
setEffAlphaKey( spep_0 + 82, ctgogo, 255 );
setEffAlphaKey( spep_0 + 84, ctgogo, 191 );
setEffAlphaKey( spep_0 + 86, ctgogo, 112 );
setEffAlphaKey( spep_0 + 88, ctgogo, 64 );

setEffRotateKey(  spep_0 +16,  ctgogo,  0);
setEffRotateKey(  spep_0 +88,  ctgogo,  0);

setEffScaleKey(  spep_0 +16,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +78,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +88,  ctgogo, 1.07, 1.07 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_0+82 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--SE
playSe( spep_0 + 16, 1018 );--顔カットイン

-- ** 次の準備 ** --
spep_1=spep_0+90;
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
entryFade( spep_1 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- ランチ変身→マシンガンをうつ
------------------------------------------------------
-- ** エフェクト等 ** --
sneeze = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, sneeze, 0, 0, 0 );
setEffMoveKey( spep_2 + 160, sneeze, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, sneeze, 1.0, 1.0 );
setEffScaleKey( spep_2 + 160, sneeze, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, sneeze, 0 );
setEffRotateKey( spep_2 + 160, sneeze, 0 );
setEffAlphaKey( spep_2 + 0, sneeze, 255 );
setEffAlphaKey( spep_2 + 160, sneeze, 255 );

-- ** エフェクト等 ** --
evolution = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, evolution, 0, 0, 0 );
setEffMoveKey( spep_2 + 160, evolution, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, evolution, 1.0, 1.0 );
setEffScaleKey( spep_2 + 160, evolution, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, evolution, 0 );
setEffRotateKey( spep_2 + 160, evolution, 0 );
setEffAlphaKey( spep_2 + 0, evolution, 255 );
setEffAlphaKey( spep_2 + 160, evolution, 255 );
setEffAlphaKey( spep_2 + 161, evolution, 0 );
setEffAlphaKey( spep_2 + 162, evolution, 0 );

--文字エントリー
ctzuo = entryEffectLife( spep_2-3 + 92,  10012, 44, 0x100, -1, 0, 76, 259.9 );

setEffMoveKey( spep_2-3 + 92, ctzuo, 76, 259.9 , 0 );
setEffMoveKey( spep_2-3 + 94, ctzuo, 105, 300.9 , 0 );
setEffMoveKey( spep_2-3 + 96, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2-3 + 98, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2-3 + 100, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2-3 + 102, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2-3 + 104, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2-3 + 106, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2-3 + 108, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2-3 + 110, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2-3 + 112, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2-3 + 114, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2-3 + 116, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2-3 + 118, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2-3 + 120, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2-3 + 122, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2-3 + 124, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2-3 + 126, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2-3 + 128, ctzuo, 124, 359.9 , 0 );
setEffMoveKey( spep_2-3 + 130, ctzuo, 157.5, 334.3 , 0 );
setEffMoveKey( spep_2-3 + 132, ctzuo, 140, 359.9 , 0 );
setEffMoveKey( spep_2-3 + 134, ctzuo, 183.2, 324.7 , 0 );
setEffMoveKey( spep_2-3 + 136, ctzuo, 196, 319.9 , 0 );

setEffScaleKey( spep_2-3 + 92, ctzuo, 0.4, 0.4 );
--setEffScaleKey( spep_2-3 + 94, ctzuo, 0.45, 0.45 );
setEffScaleKey( spep_2-3 + 96, ctzuo, 2.6, 2.6 );
setEffScaleKey( spep_2-3 + 126, ctzuo, 2.6, 2.6 );
--setEffScaleKey( spep_2-3 + 128, ctzuo, 1.04, 1.04 );
--setEffScaleKey( spep_2-3 + 130, ctzuo, 1.28, 1.28 );
--setEffScaleKey( spep_2-3 + 132, ctzuo, 1.52, 1.52 );
--setEffScaleKey( spep_2-3 + 134, ctzuo, 1.76, 1.76 );
setEffScaleKey( spep_2-3 + 136, ctzuo, 6, 6 );

setEffRotateKey( spep_2-3 + 92, ctzuo, 20 );
setEffRotateKey( spep_2-3 + 136, ctzuo, 20 );

setEffAlphaKey( spep_2-3 + 92, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 126, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 128, ctzuo, 204 );
setEffAlphaKey( spep_2-3 + 130, ctzuo, 153 );
setEffAlphaKey( spep_2-3 + 132, ctzuo, 102 );
setEffAlphaKey( spep_2-3 + 134, ctzuo, 51 );
setEffAlphaKey( spep_2-3 + 136, ctzuo, 0 );

--SE
playSe( spep_2 + 12, 4 );--はっ
setSeVolume( spep_2 + 12, 4, 126 );
playSe( spep_2 + 12, 1048 );--はっ
setSeVolume( spep_2 + 12, 1048, 41 );
playSe( spep_2 + 38, 43 );--くしょん！
setSeVolume( spep_2 + 38, 43, 74 );
playSe( spep_2 + 38, 43 );--くしょん！
setSeVolume( spep_2 + 38, 43, 71 );
SE0=playSe( spep_2 + 90, 1149 );--マシンガン

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 160, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 130; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );

    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------


--白フェード
entryFade( spep_2+152 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 160;
------------------------------------------------------
-- 弾丸が敵にあたる
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 80, hit_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 80, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 80, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 80, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 80, hit_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 80, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 80, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 80, hit_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-3 + 68, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3-3 + 14, 1, 106 );

setMoveKey( spep_3 + 0, 1, 11.6, 20.9 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 26.9, 31.4 , 0 );
setMoveKey( spep_3-3 + 4, 1, 24.2, 25.9 , 0 );
setMoveKey( spep_3-3 + 6, 1, 37.5, 32.3 , 0 );
setMoveKey( spep_3-3 + 8, 1, 34.8, 26.8 , 0 );
setMoveKey( spep_3-3 + 10, 1, 48.1, 33.3 , 0 );
setMoveKey( spep_3-3 + 13, 1, 45.4, 27.7 , 0 );
setMoveKey( spep_3-3 + 14, 1, 24.8, 45 , 0 );
setMoveKey( spep_3-3 + 16, 1, 17.6, 39 , 0 );
setMoveKey( spep_3-3 + 18, 1, 27.7, 44.8 , 0 );
setMoveKey( spep_3-3 + 20, 1, 23.3, 38.5 , 0 );
setMoveKey( spep_3-3 + 22, 1, 36.4, 44.2 , 0 );
setMoveKey( spep_3-3 + 24, 1, 34.9, 37.7 , 0 );
setMoveKey( spep_3-3 + 26, 1, 50.9, 43 , 0 );
setMoveKey( spep_3-3 + 28, 1, 52.3, 36.3 , 0 );
setMoveKey( spep_3-3 + 30, 1, 71.1, 41.5 , 0 );
setMoveKey( spep_3-3 + 32, 1, 75.4, 34.6 , 0 );
setMoveKey( spep_3-3 + 34, 1, 97.1, 39.5 , 0 );
setMoveKey( spep_3-3 + 36, 1, 104.3, 32.3 , 0 );
setMoveKey( spep_3-3 + 38, 1, 128.9, 37.1 , 0 );
setMoveKey( spep_3-3 + 40, 1, 139, 29.7 , 0 );
setMoveKey( spep_3-3 + 42, 1, 166.5, 34.2 , 0 );
setMoveKey( spep_3-3 + 44, 1, 179.4, 26.6 , 0 );
setMoveKey( spep_3-3 + 46, 1, 209.9, 30.8 , 0 );
setMoveKey( spep_3-3 + 48, 1, 225.7, 23 , 0 );
setMoveKey( spep_3-3 + 50, 1, 259, 27 , 0 );
setMoveKey( spep_3-3 + 52, 1, 277.8, 19 , 0 );
setMoveKey( spep_3-3 + 54, 1, 313.9, 22.8 , 0 );
setMoveKey( spep_3-3 + 56, 1, 335.6, 14.5 , 0 );
setMoveKey( spep_3-3 + 58, 1, 374.7, 18.1 , 0 );
setMoveKey( spep_3-3 + 60, 1, 399.2, 9.6 , 0 );
setMoveKey( spep_3-3 + 62, 1, 441.2, 13 , 0 );
setMoveKey( spep_3-3 + 64, 1, 468.6, 4.2 , 0 );
setMoveKey( spep_3-3 + 66, 1, 513.5, 7.4 , 0 );
setMoveKey( spep_3-3 + 68, 1, 543.5, -1.3 , 0 );
--setMoveKey( spep_3-3 + 70, 1, 551.5, 4.7 , 0 );
--setMoveKey( spep_3-3 + 72, 1, 543.5, -1.3 , 0 );
--setMoveKey( spep_3-3 + 74, 1, 551.5, 4.7 , 0 );
--setMoveKey( spep_3-3 + 76, 1, 543.5, -1.3 , 0 );
--setMoveKey( spep_3-3 + 78, 1, 551.5, 4.7 , 0 );

setScaleKey( spep_3 + 0, 1, 2.02, 2.02 );
--setScaleKey( spep_3-3 + 2, 1, 1.99, 1.99 );
setScaleKey( spep_3-3 + 4, 1, 1.96, 1.96 );
setScaleKey( spep_3-3 + 6, 1, 1.93, 1.93 );
setScaleKey( spep_3-3 + 8, 1, 1.9, 1.9 );
setScaleKey( spep_3-3 + 10, 1, 1.87, 1.87 );
setScaleKey( spep_3-3 + 13, 1, 1.84, 1.84 );
setScaleKey( spep_3-3 + 14, 1, 1.7, 1.7 );
setScaleKey( spep_3-3 + 16, 1, 1.7, 1.7 );
setScaleKey( spep_3-3 + 18, 1, 1.69, 1.69 );
setScaleKey( spep_3-3 + 20, 1, 1.68, 1.68 );
setScaleKey( spep_3-3 + 22, 1, 1.68, 1.68 );
setScaleKey( spep_3-3 + 24, 1, 1.66, 1.66 );
setScaleKey( spep_3-3 + 26, 1, 1.65, 1.65 );
setScaleKey( spep_3-3 + 28, 1, 1.63, 1.63 );
setScaleKey( spep_3-3 + 30, 1, 1.61, 1.61 );
setScaleKey( spep_3-3 + 32, 1, 1.59, 1.59 );
setScaleKey( spep_3-3 + 34, 1, 1.56, 1.56 );
setScaleKey( spep_3-3 + 36, 1, 1.53, 1.53 );
setScaleKey( spep_3-3 + 38, 1, 1.5, 1.5 );
setScaleKey( spep_3-3 + 40, 1, 1.47, 1.47 );
setScaleKey( spep_3-3 + 42, 1, 1.43, 1.43 );
setScaleKey( spep_3-3 + 44, 1, 1.39, 1.39 );
setScaleKey( spep_3-3 + 46, 1, 1.35, 1.35 );
setScaleKey( spep_3-3 + 48, 1, 1.31, 1.31 );
setScaleKey( spep_3-3 + 50, 1, 1.26, 1.26 );
setScaleKey( spep_3-3 + 52, 1, 1.21, 1.21 );
setScaleKey( spep_3-3 + 54, 1, 1.16, 1.16 );
setScaleKey( spep_3-3 + 56, 1, 1.1, 1.1 );
setScaleKey( spep_3-3 + 58, 1, 1.04, 1.04 );
setScaleKey( spep_3-3 + 60, 1, 0.98, 0.98 );
setScaleKey( spep_3-3 + 62, 1, 0.92, 0.92 );
setScaleKey( spep_3-3 + 64, 1, 0.85, 0.85 );
setScaleKey( spep_3-3 + 66, 1, 0.78, 0.78 );
setScaleKey( spep_3-3 + 68, 1, 0.71, 0.71 );
setScaleKey( spep_3-3 + 68, 1, 0.71, 0.71 );

setRotateKey( spep_3 + 0, 1, -4.3 );
--setRotateKey( spep_3-3 + 2, 1, -3.3 );
setRotateKey( spep_3-3 + 4, 1, -2.3 );
setRotateKey( spep_3-3 + 6, 1, -1.4 );
setRotateKey( spep_3-3 + 8, 1, -0.4 );
setRotateKey( spep_3-3 + 10, 1, 0.6 );
setRotateKey( spep_3-3 + 13, 1, 1.5 );
setRotateKey( spep_3-3 + 14, 1, -49.9 );
setRotateKey( spep_3-3 + 16, 1, -49.8 );
setRotateKey( spep_3-3 + 18, 1, -49.6 );
setRotateKey( spep_3-3 + 20, 1, -49.2 );
setRotateKey( spep_3-3 + 22, 1, -48.7 );
setRotateKey( spep_3-3 + 24, 1, -48 );
setRotateKey( spep_3-3 + 26, 1, -47.1 );
setRotateKey( spep_3-3 + 28, 1, -46.1 );
setRotateKey( spep_3-3 + 30, 1, -45 );
setRotateKey( spep_3-3 + 32, 1, -43.7 );
setRotateKey( spep_3-3 + 34, 1, -42.2 );
setRotateKey( spep_3-3 + 36, 1, -40.6 );
setRotateKey( spep_3-3 + 38, 1, -38.8 );
setRotateKey( spep_3-3 + 40, 1, -36.9 );
setRotateKey( spep_3-3 + 42, 1, -34.8 );
setRotateKey( spep_3-3 + 44, 1, -32.6 );
setRotateKey( spep_3-3 + 46, 1, -30.2 );
setRotateKey( spep_3-3 + 48, 1, -27.7 );
setRotateKey( spep_3-3 + 50, 1, -25 );
setRotateKey( spep_3-3 + 52, 1, -22.1 );
setRotateKey( spep_3-3 + 54, 1, -19.1 );
setRotateKey( spep_3-3 + 56, 1, -16 );
setRotateKey( spep_3-3 + 58, 1, -12.7 );
setRotateKey( spep_3-3 + 60, 1, -9.2 );
setRotateKey( spep_3-3 + 62, 1, -5.6 );
setRotateKey( spep_3-3 + 64, 1, -1.8 );
setRotateKey( spep_3-3 + 66, 1, 2.1 );
setRotateKey( spep_3-3 + 68, 1, 6.2 );

--文字エントリー
ctzudodo = entryEffectLife( spep_3 + 0,  10014, 78, 0x100, -1, 0, 58.1, 392.5 );
setEffShake( spep_3 + 0, ctzudodo, 78, 10 );
setEffMoveKey( spep_3 + 0, ctzudodo, 58.1, 392.5 , 0 );
setEffMoveKey( spep_3 + 2, ctzudodo, 38.8, 379.7 , 0 );
setEffMoveKey( spep_3 + 4, ctzudodo, 58.1, 392.5 , 0 );
setEffMoveKey( spep_3 + 6, ctzudodo, 38.8, 379.7 , 0 );
setEffMoveKey( spep_3 + 8, ctzudodo, 58.1, 392.5 , 0 );
setEffMoveKey( spep_3 + 10, ctzudodo, 38.8, 379.7 , 0 );
setEffMoveKey( spep_3 + 12, ctzudodo, 58.1, 392.5 , 0 );
setEffMoveKey( spep_3 + 14, ctzudodo, 38.8, 379.7 , 0 );
setEffMoveKey( spep_3 + 16, ctzudodo, 58.1, 392.5 , 0 );
setEffMoveKey( spep_3 + 18, ctzudodo, 38.8, 379.7 , 0 );
setEffMoveKey( spep_3 + 20, ctzudodo, 58.1, 392.5 , 0 );
setEffMoveKey( spep_3 + 22, ctzudodo, 38.8, 379.7 , 0 );
setEffMoveKey( spep_3 + 24, ctzudodo, 58.1, 392.5 , 0 );
setEffMoveKey( spep_3 + 26, ctzudodo, 38.8, 379.7 , 0 );
setEffMoveKey( spep_3 + 28, ctzudodo, 58.1, 392.5 , 0 );
setEffMoveKey( spep_3 + 30, ctzudodo, 38.8, 379.7 , 0 );
setEffMoveKey( spep_3 + 32, ctzudodo, 58.1, 392.5 , 0 );
setEffMoveKey( spep_3 + 34, ctzudodo, 38.8, 379.7 , 0 );
setEffMoveKey( spep_3 + 36, ctzudodo, 58.1, 392.5 , 0 );
setEffMoveKey( spep_3 + 38, ctzudodo, 38.8, 379.7 , 0 );
setEffMoveKey( spep_3 + 40, ctzudodo, 58.1, 392.5 , 0 );
setEffMoveKey( spep_3 + 42, ctzudodo, 38.8, 379.7 , 0 );
setEffMoveKey( spep_3 + 44, ctzudodo, 58.1, 392.5 , 0 );
setEffMoveKey( spep_3 + 46, ctzudodo, 38.8, 379.7 , 0 );
setEffMoveKey( spep_3 + 48, ctzudodo, 58.1, 392.5 , 0 );
setEffMoveKey( spep_3 + 50, ctzudodo, 38.8, 379.7 , 0 );
setEffMoveKey( spep_3 + 52, ctzudodo, 58.1, 392.5 , 0 );
setEffMoveKey( spep_3 + 54, ctzudodo, 38.8, 379.7 , 0 );
setEffMoveKey( spep_3 + 56, ctzudodo, 58.1, 392.5 , 0 );
setEffMoveKey( spep_3 + 58, ctzudodo, 38.8, 379.7 , 0 );
setEffMoveKey( spep_3 + 60, ctzudodo, 58.1, 392.5 , 0 );
setEffMoveKey( spep_3 + 62, ctzudodo, 38.8, 379.7 , 0 );
setEffMoveKey( spep_3 + 64, ctzudodo, 58.1, 392.5 , 0 );
setEffMoveKey( spep_3 + 66, ctzudodo, 38.8, 379.7 , 0 );
setEffMoveKey( spep_3 + 68, ctzudodo, 58.1, 392.5 , 0 );
setEffMoveKey( spep_3 + 70, ctzudodo, 38.8, 379.7 , 0 );
setEffMoveKey( spep_3 + 72, ctzudodo, 58.1, 392.5 , 0 );
setEffMoveKey( spep_3 + 74, ctzudodo, 38.8, 379.7 , 0 );
setEffMoveKey( spep_3 + 76, ctzudodo, 58.1, 392.5 , 0 );
setEffMoveKey( spep_3 + 78, ctzudodo, 38.8, 379.7 , 0 );

setEffScaleKey( spep_3 + 0, ctzudodo, 2.8, 2.8 );
setEffScaleKey( spep_3 + 78, ctzudodo, 2.8, 2.8 );

setEffRotateKey( spep_3 + 0, ctzudodo, 65 );
setEffRotateKey( spep_3 + 78, ctzudodo, 65 );

setEffAlphaKey( spep_3 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_3 + 78, ctzudodo, 255 );

--SE
playSe( spep_3 + 12, 1002 );--ヒット
playSe( spep_3 + 32, 1011 );--ヒット
setSeVolume( spep_3 + 32, 1011, 79 );
playSe( spep_3 + 48, 1002 );--ヒット
setSeVolume( spep_3 + 48, 1002, 71 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_3+72 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 80;
------------------------------------------------------
-- ガ
------------------------------------------------------
--敵の動き
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );
setMoveKey( spep_4 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_4 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_4 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_4 + 0, 1, 105 );
setRotateKey( spep_4 -3 + 4, 1, 240 );
setRotateKey( spep_4 -3 + 6, 1, 405 );
setRotateKey( spep_4 -3 + 8, 1, 600 );
setRotateKey( spep_4 -3 + 10, 1, 825 );
setRotateKey( spep_4 -3 + 12, 1, 1080 );
setRotateKey( spep_4 + 100, 1, 1080 );

-- ** エフェクト等 ** --
bg = entryEffect( spep_4 + 0, 153873, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_4 + 100, bg, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, bg, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, bg, 0 );
setEffRotateKey( spep_4 + 100, bg, 0 );
setEffAlphaKey( spep_4 + 0, bg, 255 );
setEffAlphaKey( spep_4 + 100, bg, 255 );
--[[
-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_4 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_4 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_4 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 112, bakuhatsu, 255 );
]]

-- ** 集中線 ** --
shuchusenga = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusenga, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusenga, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusenga, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusenga, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusenga, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusenga, 0 );
setEffRotateKey( spep_4 + 46, shuchusenga, 0 );

setEffAlphaKey( spep_4 + 14, shuchusenga, 255 );
setEffAlphaKey( spep_4 + 28, shuchusenga, 255 );
setEffAlphaKey( spep_4 + 30, shuchusenga, 252 );
setEffAlphaKey( spep_4 + 32, shuchusenga, 242 );
setEffAlphaKey( spep_4 + 34, shuchusenga, 227 );
setEffAlphaKey( spep_4 + 36, shuchusenga, 205 );
setEffAlphaKey( spep_4 + 38, shuchusenga, 176 );
setEffAlphaKey( spep_4 + 40, shuchusenga, 142 );
setEffAlphaKey( spep_4 + 42, shuchusenga, 101 );
setEffAlphaKey( spep_4 + 44, shuchusenga, 54 );
setEffAlphaKey( spep_4 + 46, shuchusenga, 0 );

shuchusenga2 = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusenga2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shuchusenga2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusenga2, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusenga2, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusenga2, 0 );
setEffRotateKey( spep_4 + 100, shuchusenga2, 0 );

setEffAlphaKey( spep_4 + 14, shuchusenga2, 255 );
setEffAlphaKey( spep_4 + 100, shuchusenga2, 255 );

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

--SE
--playSe( spep_4 + 0, 1023 );--爆発
playSe( spep_4 + 14, 1054 );--ガッ

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_4 +10 );
endPhase( spep_4 + 98 );

else
------------------------------------------------------------------------------------------------------------
-- 敵側側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 待機＆カットイン
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 90, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 90, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 90, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 90, tame, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+4  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0+4  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +16, 190006, 72, 0x102, -1, 0, 100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +16,  ctgogo,  100,  510);
setEffMoveKey(  spep_0 +88,  ctgogo,  100,  510);

setEffAlphaKey( spep_0 +16, ctgogo, 0 );
setEffAlphaKey( spep_0 + 17, ctgogo, 255 );
setEffAlphaKey( spep_0 + 18, ctgogo, 255 );
setEffAlphaKey( spep_0 + 82, ctgogo, 255 );
setEffAlphaKey( spep_0 + 84, ctgogo, 191 );
setEffAlphaKey( spep_0 + 86, ctgogo, 112 );
setEffAlphaKey( spep_0 + 88, ctgogo, 64 );

setEffRotateKey(  spep_0 +16,  ctgogo,  0);
setEffRotateKey(  spep_0 +88,  ctgogo,  0);

setEffScaleKey(  spep_0 +16,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +78,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +88,  ctgogo, -1.07, 1.07 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_0+82 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--SE
playSe( spep_0 + 16, 1018 );--顔カットイン

-- ** 次の準備 ** --
spep_1=spep_0+90;
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
entryFade( spep_1 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- ランチ変身→マシンガンをうつ
------------------------------------------------------
-- ** エフェクト等 ** --
sneeze = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, sneeze, 0, 0, 0 );
setEffMoveKey( spep_2 + 160, sneeze, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, sneeze, -1.0, 1.0 );
setEffScaleKey( spep_2 + 160, sneeze, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, sneeze, 0 );
setEffRotateKey( spep_2 + 160, sneeze, 0 );
setEffAlphaKey( spep_2 + 0, sneeze, 255 );
setEffAlphaKey( spep_2 + 160, sneeze, 255 );

-- ** エフェクト等 ** --
evolution = entryEffect( spep_2 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, evolution, 0, 0, 0 );
setEffMoveKey( spep_2 + 160, evolution, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, evolution, -1.0, 1.0 );
setEffScaleKey( spep_2 + 160, evolution, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, evolution, 0 );
setEffRotateKey( spep_2 + 160, evolution, 0 );
setEffAlphaKey( spep_2 + 0, evolution, 255 );
setEffAlphaKey( spep_2 + 160, evolution, 255 );
setEffAlphaKey( spep_2 + 161, evolution, 0 );
setEffAlphaKey( spep_2 + 162, evolution, 0 );

--文字エントリー
ctzuo = entryEffectLife( spep_2-3 + 92,  10012, 44, 0x100, -1, 0, 76, 259.9 );

setEffMoveKey( spep_2-3 + 92, ctzuo, 76, 259.9 , 0 );
setEffMoveKey( spep_2-3 + 94, ctzuo, 105, 300.9 , 0 );
setEffMoveKey( spep_2-3 + 96, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2-3 + 98, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2-3 + 100, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2-3 + 102, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2-3 + 104, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2-3 + 106, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2-3 + 108, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2-3 + 110, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2-3 + 112, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2-3 + 114, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2-3 + 116, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2-3 + 118, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2-3 + 120, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2-3 + 122, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2-3 + 124, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_2-3 + 126, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_2-3 + 128, ctzuo, 124, 359.9 , 0 );
setEffMoveKey( spep_2-3 + 130, ctzuo, 157.5, 334.3 , 0 );
setEffMoveKey( spep_2-3 + 132, ctzuo, 140, 359.9 , 0 );
setEffMoveKey( spep_2-3 + 134, ctzuo, 183.2, 324.7 , 0 );
setEffMoveKey( spep_2-3 + 136, ctzuo, 196, 319.9 , 0 );

setEffScaleKey( spep_2-3 + 92, ctzuo, 0.4, 0.4 );
--setEffScaleKey( spep_2-3 + 94, ctzuo, 0.45, 0.45 );
setEffScaleKey( spep_2-3 + 96, ctzuo, 2.6, 2.6 );
setEffScaleKey( spep_2-3 + 126, ctzuo, 2.6, 2.6 );
--setEffScaleKey( spep_2-3 + 128, ctzuo, 1.04, 1.04 );
--setEffScaleKey( spep_2-3 + 130, ctzuo, 1.28, 1.28 );
--setEffScaleKey( spep_2-3 + 132, ctzuo, 1.52, 1.52 );
--setEffScaleKey( spep_2-3 + 134, ctzuo, 1.76, 1.76 );
setEffScaleKey( spep_2-3 + 136, ctzuo, 6, 6 );

setEffRotateKey( spep_2-3 + 92, ctzuo, 20 );
setEffRotateKey( spep_2-3 + 136, ctzuo, 20 );

setEffAlphaKey( spep_2-3 + 92, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 126, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 128, ctzuo, 204 );
setEffAlphaKey( spep_2-3 + 130, ctzuo, 153 );
setEffAlphaKey( spep_2-3 + 132, ctzuo, 102 );
setEffAlphaKey( spep_2-3 + 134, ctzuo, 51 );
setEffAlphaKey( spep_2-3 + 136, ctzuo, 0 );

--SE
playSe( spep_2 + 12, 4 );--はっ
setSeVolume( spep_2 + 12, 4, 126 );
playSe( spep_2 + 12, 1048 );--はっ
setSeVolume( spep_2 + 12, 1048, 41 );
playSe( spep_2 + 38, 43 );--くしょん！
setSeVolume( spep_2 + 38, 43, 74 );
playSe( spep_2 + 38, 43 );--くしょん！
setSeVolume( spep_2 + 38, 43, 71 );
SE0=playSe( spep_2 + 90, 1149 );--マシンガン

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 160, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 130; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );

    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------


--白フェード
entryFade( spep_2+152 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 160;
------------------------------------------------------
-- 弾丸が敵にあたる
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 80, hit_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 80, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 80, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 80, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_3 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 80, hit_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 80, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 80, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 80, hit_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-3 + 68, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3-3 + 14, 1, 106 );

setMoveKey( spep_3 + 0, 1, 11.6, 20.9 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 26.9, 31.4 , 0 );
setMoveKey( spep_3-3 + 4, 1, 24.2, 25.9 , 0 );
setMoveKey( spep_3-3 + 6, 1, 37.5, 32.3 , 0 );
setMoveKey( spep_3-3 + 8, 1, 34.8, 26.8 , 0 );
setMoveKey( spep_3-3 + 10, 1, 48.1, 33.3 , 0 );
setMoveKey( spep_3-3 + 13, 1, 45.4, 27.7 , 0 );
setMoveKey( spep_3-3 + 14, 1, 24.8, 45 , 0 );
setMoveKey( spep_3-3 + 16, 1, 17.6, 39 , 0 );
setMoveKey( spep_3-3 + 18, 1, 27.7, 44.8 , 0 );
setMoveKey( spep_3-3 + 20, 1, 23.3, 38.5 , 0 );
setMoveKey( spep_3-3 + 22, 1, 36.4, 44.2 , 0 );
setMoveKey( spep_3-3 + 24, 1, 34.9, 37.7 , 0 );
setMoveKey( spep_3-3 + 26, 1, 50.9, 43 , 0 );
setMoveKey( spep_3-3 + 28, 1, 52.3, 36.3 , 0 );
setMoveKey( spep_3-3 + 30, 1, 71.1, 41.5 , 0 );
setMoveKey( spep_3-3 + 32, 1, 75.4, 34.6 , 0 );
setMoveKey( spep_3-3 + 34, 1, 97.1, 39.5 , 0 );
setMoveKey( spep_3-3 + 36, 1, 104.3, 32.3 , 0 );
setMoveKey( spep_3-3 + 38, 1, 128.9, 37.1 , 0 );
setMoveKey( spep_3-3 + 40, 1, 139, 29.7 , 0 );
setMoveKey( spep_3-3 + 42, 1, 166.5, 34.2 , 0 );
setMoveKey( spep_3-3 + 44, 1, 179.4, 26.6 , 0 );
setMoveKey( spep_3-3 + 46, 1, 209.9, 30.8 , 0 );
setMoveKey( spep_3-3 + 48, 1, 225.7, 23 , 0 );
setMoveKey( spep_3-3 + 50, 1, 259, 27 , 0 );
setMoveKey( spep_3-3 + 52, 1, 277.8, 19 , 0 );
setMoveKey( spep_3-3 + 54, 1, 313.9, 22.8 , 0 );
setMoveKey( spep_3-3 + 56, 1, 335.6, 14.5 , 0 );
setMoveKey( spep_3-3 + 58, 1, 374.7, 18.1 , 0 );
setMoveKey( spep_3-3 + 60, 1, 399.2, 9.6 , 0 );
setMoveKey( spep_3-3 + 62, 1, 441.2, 13 , 0 );
setMoveKey( spep_3-3 + 64, 1, 468.6, 4.2 , 0 );
setMoveKey( spep_3-3 + 66, 1, 513.5, 7.4 , 0 );
setMoveKey( spep_3-3 + 68, 1, 543.5, -1.3 , 0 );
--setMoveKey( spep_3-3 + 70, 1, 551.5, 4.7 , 0 );
--setMoveKey( spep_3-3 + 72, 1, 543.5, -1.3 , 0 );
--setMoveKey( spep_3-3 + 74, 1, 551.5, 4.7 , 0 );
--setMoveKey( spep_3-3 + 76, 1, 543.5, -1.3 , 0 );
--setMoveKey( spep_3-3 + 78, 1, 551.5, 4.7 , 0 );

setScaleKey( spep_3 + 0, 1, 2.02, 2.02 );
--setScaleKey( spep_3-3 + 2, 1, 1.99, 1.99 );
setScaleKey( spep_3-3 + 4, 1, 1.96, 1.96 );
setScaleKey( spep_3-3 + 6, 1, 1.93, 1.93 );
setScaleKey( spep_3-3 + 8, 1, 1.9, 1.9 );
setScaleKey( spep_3-3 + 10, 1, 1.87, 1.87 );
setScaleKey( spep_3-3 + 13, 1, 1.84, 1.84 );
setScaleKey( spep_3-3 + 14, 1, 1.7, 1.7 );
setScaleKey( spep_3-3 + 16, 1, 1.7, 1.7 );
setScaleKey( spep_3-3 + 18, 1, 1.69, 1.69 );
setScaleKey( spep_3-3 + 20, 1, 1.68, 1.68 );
setScaleKey( spep_3-3 + 22, 1, 1.68, 1.68 );
setScaleKey( spep_3-3 + 24, 1, 1.66, 1.66 );
setScaleKey( spep_3-3 + 26, 1, 1.65, 1.65 );
setScaleKey( spep_3-3 + 28, 1, 1.63, 1.63 );
setScaleKey( spep_3-3 + 30, 1, 1.61, 1.61 );
setScaleKey( spep_3-3 + 32, 1, 1.59, 1.59 );
setScaleKey( spep_3-3 + 34, 1, 1.56, 1.56 );
setScaleKey( spep_3-3 + 36, 1, 1.53, 1.53 );
setScaleKey( spep_3-3 + 38, 1, 1.5, 1.5 );
setScaleKey( spep_3-3 + 40, 1, 1.47, 1.47 );
setScaleKey( spep_3-3 + 42, 1, 1.43, 1.43 );
setScaleKey( spep_3-3 + 44, 1, 1.39, 1.39 );
setScaleKey( spep_3-3 + 46, 1, 1.35, 1.35 );
setScaleKey( spep_3-3 + 48, 1, 1.31, 1.31 );
setScaleKey( spep_3-3 + 50, 1, 1.26, 1.26 );
setScaleKey( spep_3-3 + 52, 1, 1.21, 1.21 );
setScaleKey( spep_3-3 + 54, 1, 1.16, 1.16 );
setScaleKey( spep_3-3 + 56, 1, 1.1, 1.1 );
setScaleKey( spep_3-3 + 58, 1, 1.04, 1.04 );
setScaleKey( spep_3-3 + 60, 1, 0.98, 0.98 );
setScaleKey( spep_3-3 + 62, 1, 0.92, 0.92 );
setScaleKey( spep_3-3 + 64, 1, 0.85, 0.85 );
setScaleKey( spep_3-3 + 66, 1, 0.78, 0.78 );
setScaleKey( spep_3-3 + 68, 1, 0.71, 0.71 );
setScaleKey( spep_3-3 + 68, 1, 0.71, 0.71 );

setRotateKey( spep_3 + 0, 1, -4.3 );
--setRotateKey( spep_3-3 + 2, 1, -3.3 );
setRotateKey( spep_3-3 + 4, 1, -2.3 );
setRotateKey( spep_3-3 + 6, 1, -1.4 );
setRotateKey( spep_3-3 + 8, 1, -0.4 );
setRotateKey( spep_3-3 + 10, 1, 0.6 );
setRotateKey( spep_3-3 + 13, 1, 1.5 );
setRotateKey( spep_3-3 + 14, 1, -49.9 );
setRotateKey( spep_3-3 + 16, 1, -49.8 );
setRotateKey( spep_3-3 + 18, 1, -49.6 );
setRotateKey( spep_3-3 + 20, 1, -49.2 );
setRotateKey( spep_3-3 + 22, 1, -48.7 );
setRotateKey( spep_3-3 + 24, 1, -48 );
setRotateKey( spep_3-3 + 26, 1, -47.1 );
setRotateKey( spep_3-3 + 28, 1, -46.1 );
setRotateKey( spep_3-3 + 30, 1, -45 );
setRotateKey( spep_3-3 + 32, 1, -43.7 );
setRotateKey( spep_3-3 + 34, 1, -42.2 );
setRotateKey( spep_3-3 + 36, 1, -40.6 );
setRotateKey( spep_3-3 + 38, 1, -38.8 );
setRotateKey( spep_3-3 + 40, 1, -36.9 );
setRotateKey( spep_3-3 + 42, 1, -34.8 );
setRotateKey( spep_3-3 + 44, 1, -32.6 );
setRotateKey( spep_3-3 + 46, 1, -30.2 );
setRotateKey( spep_3-3 + 48, 1, -27.7 );
setRotateKey( spep_3-3 + 50, 1, -25 );
setRotateKey( spep_3-3 + 52, 1, -22.1 );
setRotateKey( spep_3-3 + 54, 1, -19.1 );
setRotateKey( spep_3-3 + 56, 1, -16 );
setRotateKey( spep_3-3 + 58, 1, -12.7 );
setRotateKey( spep_3-3 + 60, 1, -9.2 );
setRotateKey( spep_3-3 + 62, 1, -5.6 );
setRotateKey( spep_3-3 + 64, 1, -1.8 );
setRotateKey( spep_3-3 + 66, 1, 2.1 );
setRotateKey( spep_3-3 + 68, 1, 6.2 );

--文字エントリー
ctzudodo = entryEffectLife( spep_3 + 0,  10014, 78, 0x100, -1, 0, 58.1, 392.5 );
setEffShake( spep_3 + 0, ctzudodo, 78, 10 );
setEffMoveKey( spep_3 + 0, ctzudodo, 58.1, 392.5 , 0 );
setEffMoveKey( spep_3 + 2, ctzudodo, 38.8, 379.7 , 0 );
setEffMoveKey( spep_3 + 4, ctzudodo, 58.1, 392.5 , 0 );
setEffMoveKey( spep_3 + 6, ctzudodo, 38.8, 379.7 , 0 );
setEffMoveKey( spep_3 + 8, ctzudodo, 58.1, 392.5 , 0 );
setEffMoveKey( spep_3 + 10, ctzudodo, 38.8, 379.7 , 0 );
setEffMoveKey( spep_3 + 12, ctzudodo, 58.1, 392.5 , 0 );
setEffMoveKey( spep_3 + 14, ctzudodo, 38.8, 379.7 , 0 );
setEffMoveKey( spep_3 + 16, ctzudodo, 58.1, 392.5 , 0 );
setEffMoveKey( spep_3 + 18, ctzudodo, 38.8, 379.7 , 0 );
setEffMoveKey( spep_3 + 20, ctzudodo, 58.1, 392.5 , 0 );
setEffMoveKey( spep_3 + 22, ctzudodo, 38.8, 379.7 , 0 );
setEffMoveKey( spep_3 + 24, ctzudodo, 58.1, 392.5 , 0 );
setEffMoveKey( spep_3 + 26, ctzudodo, 38.8, 379.7 , 0 );
setEffMoveKey( spep_3 + 28, ctzudodo, 58.1, 392.5 , 0 );
setEffMoveKey( spep_3 + 30, ctzudodo, 38.8, 379.7 , 0 );
setEffMoveKey( spep_3 + 32, ctzudodo, 58.1, 392.5 , 0 );
setEffMoveKey( spep_3 + 34, ctzudodo, 38.8, 379.7 , 0 );
setEffMoveKey( spep_3 + 36, ctzudodo, 58.1, 392.5 , 0 );
setEffMoveKey( spep_3 + 38, ctzudodo, 38.8, 379.7 , 0 );
setEffMoveKey( spep_3 + 40, ctzudodo, 58.1, 392.5 , 0 );
setEffMoveKey( spep_3 + 42, ctzudodo, 38.8, 379.7 , 0 );
setEffMoveKey( spep_3 + 44, ctzudodo, 58.1, 392.5 , 0 );
setEffMoveKey( spep_3 + 46, ctzudodo, 38.8, 379.7 , 0 );
setEffMoveKey( spep_3 + 48, ctzudodo, 58.1, 392.5 , 0 );
setEffMoveKey( spep_3 + 50, ctzudodo, 38.8, 379.7 , 0 );
setEffMoveKey( spep_3 + 52, ctzudodo, 58.1, 392.5 , 0 );
setEffMoveKey( spep_3 + 54, ctzudodo, 38.8, 379.7 , 0 );
setEffMoveKey( spep_3 + 56, ctzudodo, 58.1, 392.5 , 0 );
setEffMoveKey( spep_3 + 58, ctzudodo, 38.8, 379.7 , 0 );
setEffMoveKey( spep_3 + 60, ctzudodo, 58.1, 392.5 , 0 );
setEffMoveKey( spep_3 + 62, ctzudodo, 38.8, 379.7 , 0 );
setEffMoveKey( spep_3 + 64, ctzudodo, 58.1, 392.5 , 0 );
setEffMoveKey( spep_3 + 66, ctzudodo, 38.8, 379.7 , 0 );
setEffMoveKey( spep_3 + 68, ctzudodo, 58.1, 392.5 , 0 );
setEffMoveKey( spep_3 + 70, ctzudodo, 38.8, 379.7 , 0 );
setEffMoveKey( spep_3 + 72, ctzudodo, 58.1, 392.5 , 0 );
setEffMoveKey( spep_3 + 74, ctzudodo, 38.8, 379.7 , 0 );
setEffMoveKey( spep_3 + 76, ctzudodo, 58.1, 392.5 , 0 );
setEffMoveKey( spep_3 + 78, ctzudodo, 38.8, 379.7 , 0 );

setEffScaleKey( spep_3 + 0, ctzudodo, 2.8, 2.8 );
setEffScaleKey( spep_3 + 78, ctzudodo, 2.8, 2.8 );

setEffRotateKey( spep_3 + 0, ctzudodo, 5 );
setEffRotateKey( spep_3 + 78, ctzudodo, 5 );

setEffAlphaKey( spep_3 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_3 + 78, ctzudodo, 255 );

--SE
playSe( spep_3 + 12, 1002 );--ヒット
playSe( spep_3 + 32, 1011 );--ヒット
setSeVolume( spep_3 + 32, 1011, 79 );
playSe( spep_3 + 48, 1002 );--ヒット
setSeVolume( spep_3 + 48, 1002, 71 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_3+72 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 80;
------------------------------------------------------
-- ガ
------------------------------------------------------
--敵の動き
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );
setMoveKey( spep_4 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_4 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_4 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_4 + 0, 1, 105 );
setRotateKey( spep_4 -3 + 4, 1, 240 );
setRotateKey( spep_4 -3 + 6, 1, 405 );
setRotateKey( spep_4 -3 + 8, 1, 600 );
setRotateKey( spep_4 -3 + 10, 1, 825 );
setRotateKey( spep_4 -3 + 12, 1, 1080 );
setRotateKey( spep_4 + 100, 1, 1080 );

-- ** エフェクト等 ** --
bg = entryEffect( spep_4 + 0, 153873, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_4 + 100, bg, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, bg, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, bg, 0 );
setEffRotateKey( spep_4 + 100, bg, 0 );
setEffAlphaKey( spep_4 + 0, bg, 255 );
setEffAlphaKey( spep_4 + 100, bg, 255 );
--[[
-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_4 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_4 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_4 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 112, bakuhatsu, 255 );
]]

-- ** 集中線 ** --
shuchusenga = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusenga, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusenga, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusenga, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusenga, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusenga, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusenga, 0 );
setEffRotateKey( spep_4 + 46, shuchusenga, 0 );

setEffAlphaKey( spep_4 + 14, shuchusenga, 255 );
setEffAlphaKey( spep_4 + 28, shuchusenga, 255 );
setEffAlphaKey( spep_4 + 30, shuchusenga, 252 );
setEffAlphaKey( spep_4 + 32, shuchusenga, 242 );
setEffAlphaKey( spep_4 + 34, shuchusenga, 227 );
setEffAlphaKey( spep_4 + 36, shuchusenga, 205 );
setEffAlphaKey( spep_4 + 38, shuchusenga, 176 );
setEffAlphaKey( spep_4 + 40, shuchusenga, 142 );
setEffAlphaKey( spep_4 + 42, shuchusenga, 101 );
setEffAlphaKey( spep_4 + 44, shuchusenga, 54 );
setEffAlphaKey( spep_4 + 46, shuchusenga, 0 );

shuchusenga2 = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusenga2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shuchusenga2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusenga2, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusenga2, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusenga2, 0 );
setEffRotateKey( spep_4 + 100, shuchusenga2, 0 );

setEffAlphaKey( spep_4 + 14, shuchusenga2, 255 );
setEffAlphaKey( spep_4 + 100, shuchusenga2, 255 );

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

--SE
--playSe( spep_4 + 0, 1023 );--爆発
playSe( spep_4 + 14, 1054 );--ガッ

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_4 +10 );
endPhase( spep_4 + 98 );
end