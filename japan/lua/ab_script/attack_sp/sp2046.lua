--1020130:界王神＆キビト_神縛掌
--sp_effect_a1_00247

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
SP_01=	155706	;--	溜め
SP_02=	155708	;--	格闘　前
SP_03=	155710	;--	格闘　中
SP_04=	155712	;--	格闘　後
SP_05=	155713	;--	追い打ち
SP_06=	155715	;--	追い打ち　敵側
SP_07=	155716	;--	気溜め
SP_08=	155718	;--	発射
SP_09=	155720	;--	発射
SP_10=	155721	;--	爆発

--エフェクト(てき)
SP_01x=	155707	;--	溜め	(敵)
SP_02x=	155709	;--	格闘　前	(敵)
SP_03x=	155711	;--	格闘　中	(敵)
SP_04x=	155712	;--	格闘　後	
SP_05x=	155714	;--	追い打ち	(敵)
SP_06x=	155715	;--	追い打ち　敵側	
SP_07x=	155717	;--	気溜め	(敵)
SP_08x=	155719	;--	発射	
SP_09x=	155720	;--	発射	
SP_10x=	155721	;--	爆発	
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
-- 溜め
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 90, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 90, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 90, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 90, tame, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 8,  906, 80, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0-3 + 8, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 88, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 8, shuchusen1, 1.53, 1.53 );
setEffScaleKey( spep_0-3 + 88, shuchusen1, 1.53, 1.53 );

setEffRotateKey( spep_0-3 + 8, shuchusen1, 0 );
setEffRotateKey( spep_0-3 + 88, shuchusen1, 0 );

setEffAlphaKey( spep_0-3 + 8, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 88, shuchusen1, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0+2  , 1504, 0x101, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0+2  , 1505, 0x101, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +14, 190006, 72, 0x102, -1, 0, 100, 510, 1200);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +14,  ctgogo,  100,  510);
setEffMoveKey(  spep_0 +86,  ctgogo,  100,  510);

setEffAlphaKey( spep_0 +14, ctgogo, 0 );
setEffAlphaKey( spep_0 + 15, ctgogo, 255 );
setEffAlphaKey( spep_0 + 16, ctgogo, 255 );
setEffAlphaKey( spep_0 + 80, ctgogo, 255 );
setEffAlphaKey( spep_0 + 82, ctgogo, 191 );
setEffAlphaKey( spep_0 + 84, ctgogo, 112 );
setEffAlphaKey( spep_0 + 86, ctgogo, 64 );

setEffRotateKey(  spep_0 +14,  ctgogo,  0);
setEffRotateKey(  spep_0 +86,  ctgogo,  0);

setEffScaleKey(  spep_0 +14,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +76,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +86,  ctgogo, 1.07, 1.07 );

--SE
playSe( spep_0 + 10, 1035 );--気ダメ
playSe( spep_0 + 14, 1018 );--顔カットイン

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 92, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_0 + 82, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 90;
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
-- 格闘
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 156, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 156, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_f, 0 );
setEffRotateKey( spep_2 + 156, fighting_f, 0 );
setEffAlphaKey( spep_2 + 0, fighting_f, 255 );
setEffAlphaKey( spep_2 + 154, fighting_f, 255 );
setEffAlphaKey( spep_2 + 155, fighting_f,255 );
setEffAlphaKey( spep_2 + 156, fighting_f, 0 );

-- ** エフェクト等 ** --
fighting_n = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fighting_n, 0, 0, 0 );
setEffMoveKey( spep_2 + 156, fighting_n, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fighting_n, 1.0, 1.0 );
setEffScaleKey( spep_2 + 156, fighting_n, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_n, 0 );
setEffRotateKey( spep_2 + 156, fighting_n, 0 );
setEffAlphaKey( spep_2 + 0, fighting_n, 255 );
setEffAlphaKey( spep_2 + 154, fighting_n, 255 );
setEffAlphaKey( spep_2 + 155, fighting_n, 255 );
setEffAlphaKey( spep_2 + 156, fighting_n, 0 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 156, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 156, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_b, 0 );
setEffRotateKey( spep_2 + 156, fighting_b, 0 );
setEffAlphaKey( spep_2 + 0, fighting_b, 255 );
setEffAlphaKey( spep_2 + 156, fighting_b, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 103 );

setMoveKey( spep_2 + 0, 1, 0.5, -2.1 , 0 );
--setMoveKey( spep_2-3 + 2, 1, 16.1, -2.1 , 0 );
setMoveKey( spep_2-3 + 4, 1, 31.7, -2.1 , 0 );
setMoveKey( spep_2-3 + 6, 1, 47.3, -2.1 , 0 );
setMoveKey( spep_2-3 + 8, 1, 62.9, -2.1 , 0 );
setMoveKey( spep_2-3 + 10, 1, 78.5, -2.1 , 0 );
setMoveKey( spep_2-3 + 12, 1, 94.1, -2.1 , 0 );
setMoveKey( spep_2-3 + 14, 1, 109.7, -2.1 , 0 );
setMoveKey( spep_2-3 + 16, 1, 125.3, -2.1 , 0 );
setMoveKey( spep_2-3 + 18, 1, 140.9, -2.1 , 0 );
setMoveKey( spep_2-3 + 20, 1, 257.6, -2.1 , 0 );
setMoveKey( spep_2-3 + 22, 1, 374.3, -2.1 , 0 );
setMoveKey( spep_2-3 + 24, 1, 491, -2.1 , 0 );
setMoveKey( spep_2-3 + 26, 1, 607.7, -2.1 , 0 );
setMoveKey( spep_2-3 + 28, 1, 724.4, -2.1 , 0 );
setMoveKey( spep_2-3 + 30, 1, 841.1, -2.1 , 0 );
setMoveKey( spep_2-3 + 32, 1, 957.8, -2.1 , 0 );

setScaleKey( spep_2 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 30, 1, 1.5, 1.5 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 30, 1, 0 );

--SE
SE0=playSe( spep_2 + 2, 44 );--敵向かってくる

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 160, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );

    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
     
    --敵の固定
    setDisp( SP_dodge+ 9, 1, 0 );
    setMoveKey( SP_dodge+ 9, 1, 957.8, -2.1 , 0 );    
    setScaleKey( SP_dodge+ 9, 1, 1.5, 1.5 );
    setRotateKey( SP_dodge+ 9, 1, 0 );

    
    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------


setDisp( spep_2-1 + 128, 1, 0 );

changeAnime( spep_2-3 + 58, 1, 106 );
changeAnime( spep_2-3 + 114, 1, 107 );


setMoveKey( spep_2-3 + 34, 1, 1074.5, -2.1 , 0 );
setMoveKey( spep_2-3 + 36, 1, 1191.2, -2.1 , 0 );
setMoveKey( spep_2-3 + 38, 1, 1191.2, -2.1 , 0 );
setMoveKey( spep_2-3 + 40, 1, 1077.1, -2.1 , 0 );
setMoveKey( spep_2-3 + 42, 1, 963.1, -2.1 , 0 );
setMoveKey( spep_2-3 + 44, 1, 849.1, -2.1 , 0 );
setMoveKey( spep_2-3 + 46, 1, 735.1, -2.1 , 0 );
setMoveKey( spep_2-3 + 48, 1, 621, -2.1 , 0 );
setMoveKey( spep_2-3 + 50, 1, 507, -2.1 , 0 );
setMoveKey( spep_2-3 + 52, 1, 393, -2.1 , 0 );
setMoveKey( spep_2-3 + 54, 1, 279, -2.1 , 0 );
setMoveKey( spep_2-3 + 57, 1, 165, -2.1 , 0 );
setMoveKey( spep_2-3 + 58, 1, 135.4, 48.8 , 0 );
setMoveKey( spep_2-3 + 60, 1, 134.9, 45.8 , 0 );
setMoveKey( spep_2-3 + 62, 1, 142.8, 42.9 , 0 );
setMoveKey( spep_2-3 + 64, 1, 142.2, 48.4 , 0 );
setMoveKey( spep_2-3 + 66, 1, 148.5, 52.4 , 0 );
setMoveKey( spep_2-3 + 68, 1, 149.4, 52.8 , 0 );
setMoveKey( spep_2-3 + 70, 1, 152.4, 52.4 , 0 );
setMoveKey( spep_2-3 + 72, 1, 157.2, 50.3 , 0 );
setMoveKey( spep_2-3 + 74, 1, 153.2, 57.4 , 0 );
setMoveKey( spep_2-3 + 76, 1, 157.5, 57.2 , 0 );
setMoveKey( spep_2-3 + 78, 1, 156.6, 55.2 , 0 );
setMoveKey( spep_2-3 + 80, 1, 155.2, 60.4 , 0 );
setMoveKey( spep_2-3 + 82, 1, 157.7, 57.5 , 0 );
setMoveKey( spep_2-3 + 84, 1, 158.7, 60.8 , 0 );
setMoveKey( spep_2-3 + 86, 1, 157.1, 59 , 0 );
setMoveKey( spep_2-3 + 88, 1, 159.8, 64.8 , 0 );
setMoveKey( spep_2-3 + 90, 1, 159.5, 66.3 , 0 );
setMoveKey( spep_2-3 + 92, 1, 157.9, 64.8 , 0 );
setMoveKey( spep_2-3 + 94, 1, 161.1, 68.7 , 0 );
setMoveKey( spep_2-3 + 96, 1, 159.1, 69 , 0 );
setMoveKey( spep_2-3 + 98, 1, 161.8, 74.1 , 0 );
setMoveKey( spep_2-3 + 100, 1, 160.4, 70.5 , 0 );
setMoveKey( spep_2-3 + 102, 1, 160.8, 73 , 0 );
setMoveKey( spep_2-3 + 104, 1, 162.5, 70.7 , 0 );
setMoveKey( spep_2-3 + 106, 1, 161.8, 71.9 , 0 );
setMoveKey( spep_2-3 + 108, 1, 159.2, 73.7 , 0 );
setMoveKey( spep_2-3 + 110, 1, 152.9, 65.6 , 0 );
setMoveKey( spep_2-3 + 112, 1, 143.1, 65.5 , 0 );
setMoveKey( spep_2-3 + 113, 1, 143.1, 65.5 , 0 );

setMoveKey( spep_2-3 + 114, 1, 29.2, 19 , 0 );
setMoveKey( spep_2-3 + 116, 1, 93.1, 27.6 , 0 );
setMoveKey( spep_2-3 + 118, 1, 127.3, -20.3 , 0 );
setMoveKey( spep_2-3 + 120, 1, 116.4, -2.2 , 0 );
setMoveKey( spep_2-3 + 122, 1, 159.4, -25.1 , 0 );
setMoveKey( spep_2-3 + 124, 1, 199.7, -38.6 , 0 );
setMoveKey( spep_2-3 + 126, 1, 215.2, -69.2 , 0 );
setMoveKey( spep_2-1 + 128, 1, 243, -76.4 , 0 );


setScaleKey( spep_2-3 + 58, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 60, 1, 1.53, 1.53 );
setScaleKey( spep_2-3 + 62, 1, 1.56, 1.56 );
setScaleKey( spep_2-3 + 64, 1, 1.59, 1.59 );
setScaleKey( spep_2-3 + 66, 1, 1.62, 1.62 );
setScaleKey( spep_2-3 + 68, 1, 1.65, 1.65 );
setScaleKey( spep_2-3 + 70, 1, 1.65, 1.65 );
setScaleKey( spep_2-3 + 72, 1, 1.66, 1.66 );
setScaleKey( spep_2-3 + 76, 1, 1.66, 1.66 );
setScaleKey( spep_2-3 + 78, 1, 1.67, 1.67 );
setScaleKey( spep_2-3 + 80, 1, 1.67, 1.67 );
setScaleKey( spep_2-3 + 82, 1, 1.68, 1.68 );
setScaleKey( spep_2-3 + 86, 1, 1.68, 1.68 );
setScaleKey( spep_2-3 + 88, 1, 1.69, 1.69 );
setScaleKey( spep_2-3 + 92, 1, 1.69, 1.69 );
setScaleKey( spep_2-3 + 94, 1, 1.7, 1.7 );
setScaleKey( spep_2-3 + 96, 1, 1.7, 1.7 );
setScaleKey( spep_2-3 + 98, 1, 1.71, 1.71 );
setScaleKey( spep_2-3 + 102, 1, 1.71, 1.71 );
setScaleKey( spep_2-3 + 104, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 108, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 110, 1, 1.64, 1.64 );
setScaleKey( spep_2-3 + 112, 1, 1.55, 1.55 );
setScaleKey( spep_2-3 + 113, 1, 1.55, 1.55 );

setScaleKey( spep_2-3 + 114, 1, 0.71, 0.71 );
setScaleKey( spep_2-3 + 116, 1, 0.9, 0.9 );
setScaleKey( spep_2-3 + 118, 1, 1.05, 1.05 );
setScaleKey( spep_2-3 + 120, 1, 1.18, 1.18 );
setScaleKey( spep_2-3 + 122, 1, 1.28, 1.28 );
setScaleKey( spep_2-3 + 124, 1, 1.46, 1.46 );
setScaleKey( spep_2-3 + 126, 1, 1.64, 1.64 );
setScaleKey( spep_2-1 + 128, 1, 1.83, 1.83 );

setRotateKey( spep_2-3 + 57, 1, 0 );
setRotateKey( spep_2-3 + 58, 1, -44 );
setRotateKey( spep_2-3 + 60, 1, -43.8 );
setRotateKey( spep_2-3 + 62, 1, -43.6 );
setRotateKey( spep_2-3 + 64, 1, -43.3 );
setRotateKey( spep_2-3 + 66, 1, -43.1 );
setRotateKey( spep_2-3 + 68, 1, -42.9 );
setRotateKey( spep_2-3 + 70, 1, -42.7 );
setRotateKey( spep_2-3 + 72, 1, -42.4 );
setRotateKey( spep_2-3 + 74, 1, -42.2 );
setRotateKey( spep_2-3 + 76, 1, -42 );
setRotateKey( spep_2-3 + 78, 1, -41.8 );
setRotateKey( spep_2-3 + 80, 1, -41.6 );
setRotateKey( spep_2-3 + 82, 1, -41.3 );
setRotateKey( spep_2-3 + 84, 1, -41.1 );
setRotateKey( spep_2-3 + 86, 1, -40.9 );
setRotateKey( spep_2-3 + 88, 1, -40.7 );
setRotateKey( spep_2-3 + 90, 1, -40.4 );
setRotateKey( spep_2-3 + 92, 1, -40.2 );
setRotateKey( spep_2-3 + 94, 1, -40 );
setRotateKey( spep_2-3 + 96, 1, -39.8 );
setRotateKey( spep_2-3 + 98, 1, -39.6 );
setRotateKey( spep_2-3 + 100, 1, -39.3 );
setRotateKey( spep_2-3 + 102, 1, -39.1 );
setRotateKey( spep_2-3 + 104, 1, -38.9 );
setRotateKey( spep_2-3 + 106, 1, -38.7 );
setRotateKey( spep_2-3 + 108, 1, -38.4 );
setRotateKey( spep_2-3 + 110, 1, -38.2 );
setRotateKey( spep_2-3 + 112, 1, -38 );
setRotateKey( spep_2-3 + 113, 1, -38 );

setRotateKey( spep_2-3 + 114, 1, -52 );
setRotateKey( spep_2-3 + 116, 1, -50.9 );
setRotateKey( spep_2-3 + 118, 1, -49.7 );
setRotateKey( spep_2-3 + 120, 1, -48.6 );
setRotateKey( spep_2-3 + 122, 1, -47.4 );
setRotateKey( spep_2-3 + 124, 1, -46.3 );
setRotateKey( spep_2-3 + 126, 1, -45.1 );
setRotateKey( spep_2-1 + 128, 1, -44 );

--SE
se_1200 = playSe( spep_2 + 32, 1200 );--敵拘束する
setSeVolume( spep_2 + 32, 1200, 0 );
setSeVolume( spep_2 + 51, 1200, 0 );
setSeVolume( spep_2 + 52, 1200, 12.71 );
setSeVolume( spep_2 + 53, 1200, 25.43 );
setSeVolume( spep_2 + 54, 1200, 38.14 );
setSeVolume( spep_2 + 55, 1200, 50.86 );
setSeVolume( spep_2 + 56, 1200, 63.57 );
setSeVolume( spep_2 + 57, 1200, 76.29 );
setSeVolume( spep_2 + 58, 1200, 89 );
setSeVolume( spep_2 + 59, 1200, 101.71 );
setSeVolume( spep_2 + 60, 1200, 114.43 );
setSeVolume( spep_2 + 61, 1200, 127.14 );
setSeVolume( spep_2 + 62, 1200, 139.86 );
setSeVolume( spep_2 + 63, 1200, 152.57 );
setSeVolume( spep_2 + 64, 1200, 165.29 );
setSeVolume( spep_2 + 65, 1200, 178 );
playSe( spep_2 + 46, 43 );--瞬間移動
se_1147 = playSe( spep_2 + 54, 1147 );--敵拘束する
setSeVolume( spep_2 + 54, 1147, 48 );
playSe( spep_2 + 112, 1003 );--敵ふっとばす
setSeVolume( spep_2 + 112, 1003, 83 );
playSe( spep_2 + 114, 1027 );--敵ふっとばす


stopSe( spep_2 + 110, se_1200, 0 );
stopSe( spep_2 + 120, se_1147, 0 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 156;
------------------------------------------------------
-- 追い打ち
------------------------------------------------------
-- ** エフェクト等 ** --
pursuit_f = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, pursuit_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 76, pursuit_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, pursuit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, pursuit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, pursuit_f, 0 );
setEffRotateKey( spep_3 + 76, pursuit_f, 0 );
setEffAlphaKey( spep_3 + 0, pursuit_f, 255 );
setEffAlphaKey( spep_3 + 76, pursuit_f, 255 );

-- ** エフェクト等 ** --
pursuit_b = entryEffect( spep_3 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, pursuit_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 76, pursuit_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, pursuit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, pursuit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, pursuit_b, 0 );
setEffRotateKey( spep_3 + 76, pursuit_b, 0 );
setEffAlphaKey( spep_3 + 0, pursuit_b, 255 );
setEffAlphaKey( spep_3 + 76, pursuit_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 76, 1, 0 );

changeAnime( spep_3 + 0, 1, 106 );
changeAnime( spep_3-3 + 32, 1, 104 );

setMoveKey( spep_3 + 0, 1, -779.7, 1.3 , 0 );
--setMoveKey( spep_3-3 + 2, 1, -723.2, 1.6 , 0 );
setMoveKey( spep_3-3 + 4, 1, -666.7, 1.9 , 0 );
setMoveKey( spep_3-3 + 6, 1, -610.2, 2.3 , 0 );
setMoveKey( spep_3-3 + 8, 1, -553.8, 2.6 , 0 );
setMoveKey( spep_3-3 + 10, 1, -497.3, 2.9 , 0 );
setMoveKey( spep_3-3 + 12, 1, -440.8, 3.2 , 0 );
setMoveKey( spep_3-3 + 14, 1, -384.3, 3.5 , 0 );
setMoveKey( spep_3-3 + 16, 1, -327.9, 3.8 , 0 );
setMoveKey( spep_3-3 + 18, 1, -271.4, 4.2 , 0 );
setMoveKey( spep_3-3 + 20, 1, -214.9, 4.5 , 0 );
setMoveKey( spep_3-3 + 22, 1, -158.4, 4.8 , 0 );
setMoveKey( spep_3-3 + 24, 1, -102, 5.1 , 0 );
setMoveKey( spep_3-3 + 26, 1, -45.5, 5.4 , 0 );
setMoveKey( spep_3-3 + 28, 1, 11, 5.7 , 0 );
setMoveKey( spep_3-3 + 31, 1, 67.4, 6 , 0 );
setMoveKey( spep_3-3 + 32, 1, 84.7, 5.8 , 0 );
setMoveKey( spep_3-3 + 34, 1, 98.3, 5.8 , 0 );
setMoveKey( spep_3-3 + 36, 1, 106.4, 5.8 , 0 );
setMoveKey( spep_3-3 + 38, 1, 111.1, 5.8 , 0 );
setMoveKey( spep_3-3 + 40, 1, 113.6, 5.8 , 0 );
setMoveKey( spep_3-3 + 42, 1, 114.9, 5.8 , 0 );
setMoveKey( spep_3 + 76, 1, 114.9, 5.8 , 0 );

setScaleKey( spep_3 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 76, 1, 1.5, 1.5 );

setRotateKey( spep_3 + 0, 1, 30 );
--setRotateKey( spep_3-3 + 2, 1, 29.3 );
setRotateKey( spep_3-3 + 4, 1, 28.7 );
setRotateKey( spep_3-3 + 6, 1, 28 );
setRotateKey( spep_3-3 + 8, 1, 27.3 );
setRotateKey( spep_3-3 + 10, 1, 26.7 );
setRotateKey( spep_3-3 + 12, 1, 26 );
setRotateKey( spep_3-3 + 14, 1, 25.3 );
setRotateKey( spep_3-3 + 16, 1, 24.7 );
setRotateKey( spep_3-3 + 18, 1, 24 );
setRotateKey( spep_3-3 + 20, 1, 23.3 );
setRotateKey( spep_3-3 + 22, 1, 22.7 );
setRotateKey( spep_3-3 + 24, 1, 22 );
setRotateKey( spep_3-3 + 26, 1, 21.3 );
setRotateKey( spep_3-3 + 28, 1, 20.7 );
setRotateKey( spep_3-3 + 31, 1, 20 );
setRotateKey( spep_3-3 + 32, 1, 0 );
setRotateKey( spep_3 + 76, 1, 0 );

--SE
se_1183 = playSe( spep_3 + 4, 1183 );--敵飛んでいく
playSe( spep_3 + 40, 43 );--瞬間移動

stopSe( spep_3 + 44, se_1183, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 76;
------------------------------------------------------
-- 気溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame2 = entryEffect( spep_4 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, tame2, 0, 0, 0 );
setEffMoveKey( spep_4 + 116, tame2, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, tame2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, tame2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame2, 0 );
setEffRotateKey( spep_4 + 116, tame2, 0 );
setEffAlphaKey( spep_4 + 0, tame2, 255 );
setEffAlphaKey( spep_4 + 114, tame2, 255 );
setEffAlphaKey( spep_4 + 115, tame2, 255 );
setEffAlphaKey( spep_4 + 116, tame2, 0 );

--SE
playSe( spep_4 + 12, 1004 );--腕を前に
setSeVolume( spep_4 + 12, 1004, 73 );
se_1012 = playSe( spep_4 + 24, 1012 );--腕を前に
playSe( spep_4 + 26, 1006 );--腕を前に
setSeVolume( spep_4 + 26, 1006, 82 );
se_1191 = playSe( spep_4 + 52, 1191 );--気弾溜め
setSeVolume( spep_4 + 52, 1191, 141 );
se_1204 = playSe( spep_4 + 52, 1204 );--気弾溜め
se_1262 = playSe( spep_4 + 52, 1262 );--気弾溜め
se_1252 = playSe( spep_4 + 52, 1252 );--気弾溜め
setSeVolume( spep_4 + 52, 1252, 68 );

stopSe( spep_4 + 34, se_1012, 0 );
stopSe( spep_4 + 88, se_1191, 27 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 116;
------------------------------------------------------
-- 気溜め
------------------------------------------------------
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_5 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 80, beam_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 80, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam_f, 0 );
setEffRotateKey( spep_5 + 80, beam_f, 0 );
setEffAlphaKey( spep_5 + 0, beam_f, 255 );
setEffAlphaKey( spep_5 + 80, beam_f, 255 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_5 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 80, beam_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 80, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam_b, 0 );
setEffRotateKey( spep_5 + 80, beam_b, 0 );
setEffAlphaKey( spep_5 + 0, beam_b, 255 );
setEffAlphaKey( spep_5 + 80, beam_b, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5-1 + 78, 1, 0 );

changeAnime( spep_5 + 0, 1, 104 );
changeAnime( spep_5-3 + 16, 1, 108 );

setMoveKey( spep_5 + 0, 1, 143.7, 79 , 0 );
--setMoveKey( spep_5-3 + 2, 1, 143.7, 79.1 , 0 );
setMoveKey( spep_5-3 + 15, 1, 143.7, 79.1 , 0 );
setMoveKey( spep_5-3 + 16, 1, 205.3, 173.5 , 0 );
setMoveKey( spep_5-3 + 18, 1, 185.5, 161.3 , 0 );
setMoveKey( spep_5-3 + 20, 1, 173.2, 155.3 , 0 );
setMoveKey( spep_5-3 + 22, 1, 136.8, 133.3 , 0 );
setMoveKey( spep_5-3 + 24, 1, 134.4, 129.9 , 0 );
setMoveKey( spep_5-3 + 26, 1, 117.2, 123.3 , 0 );
setMoveKey( spep_5-3 + 28, 1, 132.1, 129.7 , 0 );
setMoveKey( spep_5-3 + 30, 1, 122.9, 123.8 , 0 );
setMoveKey( spep_5-3 + 32, 1, 129.6, 128.4 , 0 );
setMoveKey( spep_5-3 + 34, 1, 123.1, 124.8 , 0 );
setMoveKey( spep_5-3 + 36, 1, 128.6, 127.5 , 0 );
setMoveKey( spep_5-3 + 38, 1, 127.3, 126.8 , 0 );
setMoveKey( spep_5-3 + 40, 1, 126.1, 126.1 , 0 );
setMoveKey( spep_5-3 + 42, 1, 124.8, 125.5 , 0 );
setMoveKey( spep_5-3 + 44, 1, 126.1, 126.2 , 0 );
setMoveKey( spep_5-3 + 46, 1, 127.3, 127 , 0 );
setMoveKey( spep_5-3 + 48, 1, 126.1, 126.2 , 0 );
setMoveKey( spep_5-3 + 50, 1, 124.9, 125.3 , 0 );
setMoveKey( spep_5-3 + 52, 1, 125.5, 125.7 , 0 );
setMoveKey( spep_5-3 + 54, 1, 126, 126.2 , 0 );
setMoveKey( spep_5-3 + 56, 1, 126.6, 126.6 , 0 );
setMoveKey( spep_5-3 + 58, 1, 127.2, 127 , 0 );
setMoveKey( spep_5-3 + 60, 1, 125.7, 126.5 , 0 );
setMoveKey( spep_5-3 + 62, 1, 124.1, 126 , 0 );
setMoveKey( spep_5-3 + 64, 1, 124.9, 126.3 , 0 );
setMoveKey( spep_5-3 + 66, 1, 125.7, 126.7 , 0 );
setMoveKey( spep_5-3 + 68, 1, 126.4, 127 , 0 );
setMoveKey( spep_5-3 + 70, 1, 125.8, 126.6 , 0 );
setMoveKey( spep_5-3 + 72, 1, 125.1, 126.2 , 0 );
setMoveKey( spep_5-3 + 74, 1, 124.4, 125.7 , 0 );
setMoveKey( spep_5-3 + 76, 1, 125.3, 126 , 0 );
setMoveKey( spep_5-1 + 78, 1, 126.2, 126.2 , 0 );

setScaleKey( spep_5 + 0, 1, 1.89, 1.89 );
setScaleKey( spep_5-3 + 15, 1, 1.89, 1.89 );
setScaleKey( spep_5-3 + 16, 1, 1.81, 1.81 );
setScaleKey( spep_5-3 + 18, 1, 1.74, 1.74 );
setScaleKey( spep_5-3 + 20, 1, 1.66, 1.66 );
setScaleKey( spep_5-3 + 22, 1, 1.59, 1.59 );
setScaleKey( spep_5-3 + 24, 1, 1.51, 1.51 );
setScaleKey( spep_5-1 + 78, 1, 1.51, 1.51 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5-1 + 78, 1, 0 );


--SE
playSe( spep_5 + 10, 1145 );--気弾発射
setSeVolume( spep_5 + 10, 1145, 91 );
playSe( spep_5 + 10, 1027 );--気弾発射
setSeVolume( spep_5 + 10, 1027, 76 );
playSe( spep_5 + 10, 1022 );--気弾発射
se_1241 = playSe( spep_5 + 78, 1241 );--爆発予兆

stopSe( spep_5 + 22, se_1204, 0 );
stopSe( spep_5 + 22, se_1262, 0 );
stopSe( spep_5 + 22, se_1252, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 82, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_5 + 72, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 80;
------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_6 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, explosion, 0, 0, 0 );
setEffMoveKey( spep_6 + 180, explosion, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, explosion, 1.1, 1.1 );
setEffScaleKey( spep_6 + 180, explosion, 1.1, 1.1 );
setEffRotateKey( spep_6 + 0, explosion, 0 );
setEffRotateKey( spep_6 + 180, explosion, 0 );
setEffAlphaKey( spep_6 + 0, explosion, 255 );
setEffAlphaKey( spep_6 + 180, explosion, 255 );


--SE
playSe( spep_6 + 22, 1069 );--爆発
setSeVolume( spep_6 + 22, 1069, 88 );
playSe( spep_6 + 38, 1159 );--爆発
setSeVolume( spep_6 + 38, 1159, 71 );
playSe( spep_6 + 38, 1023 );--爆発

stopSe( spep_6 + 46, se_1241, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 180, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_6 +20 );
endPhase( spep_6 + 170 );
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 溜め
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 90, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 90, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 90, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 90, tame, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 8,  906, 80, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0-3 + 8, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 88, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 8, shuchusen1, 1.53, 1.53 );
setEffScaleKey( spep_0-3 + 88, shuchusen1, 1.53, 1.53 );

setEffRotateKey( spep_0-3 + 8, shuchusen1, 0 );
setEffRotateKey( spep_0-3 + 88, shuchusen1, 0 );

setEffAlphaKey( spep_0-3 + 8, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 88, shuchusen1, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+2  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0+2  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +14, 190006, 72, 0x102, -1, 0, 100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +14,  ctgogo,  100,  510);
setEffMoveKey(  spep_0 +86,  ctgogo,  100,  510);

setEffAlphaKey( spep_0 +14, ctgogo, 0 );
setEffAlphaKey( spep_0 + 15, ctgogo, 255 );
setEffAlphaKey( spep_0 + 16, ctgogo, 255 );
setEffAlphaKey( spep_0 + 80, ctgogo, 255 );
setEffAlphaKey( spep_0 + 82, ctgogo, 191 );
setEffAlphaKey( spep_0 + 84, ctgogo, 112 );
setEffAlphaKey( spep_0 + 86, ctgogo, 64 );

setEffRotateKey(  spep_0 +14,  ctgogo,  0);
setEffRotateKey(  spep_0 +86,  ctgogo,  0);

setEffScaleKey(  spep_0 +14,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +76,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +86,  ctgogo, -1.07, 1.07 );

--SE
playSe( spep_0 + 10, 1035 );--気ダメ
playSe( spep_0 + 14, 1018 );--顔カットイン

--白フェード
entryFade( spep_0 + 82, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 92, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 90;
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
-- 格闘
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 156, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fighting_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 156, fighting_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_f, 0 );
setEffRotateKey( spep_2 + 156, fighting_f, 0 );
setEffAlphaKey( spep_2 + 154, fighting_f, 255 );
setEffAlphaKey( spep_2 + 155, fighting_f,255 );
setEffAlphaKey( spep_2 + 156, fighting_f, 0 );


-- ** エフェクト等 ** --
fighting_n = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fighting_n, 0, 0, 0 );
setEffMoveKey( spep_2 + 156, fighting_n, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fighting_n, -1.0, 1.0 );
setEffScaleKey( spep_2 + 156, fighting_n, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_n, 0 );
setEffRotateKey( spep_2 + 156, fighting_n, 0 );
setEffAlphaKey( spep_2 + 0, fighting_n, 255 );
setEffAlphaKey( spep_2 + 154, fighting_n, 255 );
setEffAlphaKey( spep_2 + 155, fighting_n, 255 );
setEffAlphaKey( spep_2 + 156, fighting_n, 0 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_2 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 156, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 156, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_b, 0 );
setEffRotateKey( spep_2 + 156, fighting_b, 0 );
setEffAlphaKey( spep_2 + 0, fighting_b, 255 );
setEffAlphaKey( spep_2 + 156, fighting_b, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 103 );

setMoveKey( spep_2 + 0, 1, 0.5, -2.1 , 0 );
--setMoveKey( spep_2-3 + 2, 1, 16.1, -2.1 , 0 );
setMoveKey( spep_2-3 + 4, 1, 31.7, -2.1 , 0 );
setMoveKey( spep_2-3 + 6, 1, 47.3, -2.1 , 0 );
setMoveKey( spep_2-3 + 8, 1, 62.9, -2.1 , 0 );
setMoveKey( spep_2-3 + 10, 1, 78.5, -2.1 , 0 );
setMoveKey( spep_2-3 + 12, 1, 94.1, -2.1 , 0 );
setMoveKey( spep_2-3 + 14, 1, 109.7, -2.1 , 0 );
setMoveKey( spep_2-3 + 16, 1, 125.3, -2.1 , 0 );
setMoveKey( spep_2-3 + 18, 1, 140.9, -2.1 , 0 );
setMoveKey( spep_2-3 + 20, 1, 257.6, -2.1 , 0 );
setMoveKey( spep_2-3 + 22, 1, 374.3, -2.1 , 0 );
setMoveKey( spep_2-3 + 24, 1, 491, -2.1 , 0 );
setMoveKey( spep_2-3 + 26, 1, 607.7, -2.1 , 0 );
setMoveKey( spep_2-3 + 28, 1, 724.4, -2.1 , 0 );
setMoveKey( spep_2-3 + 30, 1, 841.1, -2.1 , 0 );
setMoveKey( spep_2-3 + 32, 1, 957.8, -2.1 , 0 );

setScaleKey( spep_2 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 30, 1, 1.5, 1.5 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 30, 1, 0 );

--SE
SE0=playSe( spep_2 + 2, 44 );--敵向かってくる

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 160, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );

    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
     
    --敵の固定
    setDisp( SP_dodge+ 9, 1, 0 );
    setMoveKey( SP_dodge+ 9, 1, 957.8, -2.1 , 0 );    
    setScaleKey( SP_dodge+ 9, 1, 1.5, 1.5 );
    setRotateKey( SP_dodge+ 9, 1, 0 );

    
    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------


setDisp( spep_2-1 + 128, 1, 0 );

changeAnime( spep_2-3 + 58, 1, 106 );
changeAnime( spep_2-3 + 114, 1, 107 );


setMoveKey( spep_2-3 + 34, 1, 1074.5, -2.1 , 0 );
setMoveKey( spep_2-3 + 36, 1, 1191.2, -2.1 , 0 );
setMoveKey( spep_2-3 + 38, 1, 1191.2, -2.1 , 0 );
setMoveKey( spep_2-3 + 40, 1, 1077.1, -2.1 , 0 );
setMoveKey( spep_2-3 + 42, 1, 963.1, -2.1 , 0 );
setMoveKey( spep_2-3 + 44, 1, 849.1, -2.1 , 0 );
setMoveKey( spep_2-3 + 46, 1, 735.1, -2.1 , 0 );
setMoveKey( spep_2-3 + 48, 1, 621, -2.1 , 0 );
setMoveKey( spep_2-3 + 50, 1, 507, -2.1 , 0 );
setMoveKey( spep_2-3 + 52, 1, 393, -2.1 , 0 );
setMoveKey( spep_2-3 + 54, 1, 279, -2.1 , 0 );
setMoveKey( spep_2-3 + 57, 1, 165, -2.1 , 0 );
setMoveKey( spep_2-3 + 58, 1, 135.4, 48.8 , 0 );
setMoveKey( spep_2-3 + 60, 1, 134.9, 45.8 , 0 );
setMoveKey( spep_2-3 + 62, 1, 142.8, 42.9 , 0 );
setMoveKey( spep_2-3 + 64, 1, 142.2, 48.4 , 0 );
setMoveKey( spep_2-3 + 66, 1, 148.5, 52.4 , 0 );
setMoveKey( spep_2-3 + 68, 1, 149.4, 52.8 , 0 );
setMoveKey( spep_2-3 + 70, 1, 152.4, 52.4 , 0 );
setMoveKey( spep_2-3 + 72, 1, 157.2, 50.3 , 0 );
setMoveKey( spep_2-3 + 74, 1, 153.2, 57.4 , 0 );
setMoveKey( spep_2-3 + 76, 1, 157.5, 57.2 , 0 );
setMoveKey( spep_2-3 + 78, 1, 156.6, 55.2 , 0 );
setMoveKey( spep_2-3 + 80, 1, 155.2, 60.4 , 0 );
setMoveKey( spep_2-3 + 82, 1, 157.7, 57.5 , 0 );
setMoveKey( spep_2-3 + 84, 1, 158.7, 60.8 , 0 );
setMoveKey( spep_2-3 + 86, 1, 157.1, 59 , 0 );
setMoveKey( spep_2-3 + 88, 1, 159.8, 64.8 , 0 );
setMoveKey( spep_2-3 + 90, 1, 159.5, 66.3 , 0 );
setMoveKey( spep_2-3 + 92, 1, 157.9, 64.8 , 0 );
setMoveKey( spep_2-3 + 94, 1, 161.1, 68.7 , 0 );
setMoveKey( spep_2-3 + 96, 1, 159.1, 69 , 0 );
setMoveKey( spep_2-3 + 98, 1, 161.8, 74.1 , 0 );
setMoveKey( spep_2-3 + 100, 1, 160.4, 70.5 , 0 );
setMoveKey( spep_2-3 + 102, 1, 160.8, 73 , 0 );
setMoveKey( spep_2-3 + 104, 1, 162.5, 70.7 , 0 );
setMoveKey( spep_2-3 + 106, 1, 161.8, 71.9 , 0 );
setMoveKey( spep_2-3 + 108, 1, 159.2, 73.7 , 0 );
setMoveKey( spep_2-3 + 110, 1, 152.9, 65.6 , 0 );
setMoveKey( spep_2-3 + 112, 1, 143.1, 65.5 , 0 );
setMoveKey( spep_2-3 + 113, 1, 143.1, 65.5 , 0 );

setMoveKey( spep_2-3 + 114, 1, 29.2, 19 , 0 );
setMoveKey( spep_2-3 + 116, 1, 93.1, 27.6 , 0 );
setMoveKey( spep_2-3 + 118, 1, 127.3, -20.3 , 0 );
setMoveKey( spep_2-3 + 120, 1, 116.4, -2.2 , 0 );
setMoveKey( spep_2-3 + 122, 1, 159.4, -25.1 , 0 );
setMoveKey( spep_2-3 + 124, 1, 199.7, -38.6 , 0 );
setMoveKey( spep_2-3 + 126, 1, 215.2, -69.2 , 0 );
setMoveKey( spep_2-1 + 128, 1, 243, -76.4 , 0 );


setScaleKey( spep_2-3 + 58, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 60, 1, 1.53, 1.53 );
setScaleKey( spep_2-3 + 62, 1, 1.56, 1.56 );
setScaleKey( spep_2-3 + 64, 1, 1.59, 1.59 );
setScaleKey( spep_2-3 + 66, 1, 1.62, 1.62 );
setScaleKey( spep_2-3 + 68, 1, 1.65, 1.65 );
setScaleKey( spep_2-3 + 70, 1, 1.65, 1.65 );
setScaleKey( spep_2-3 + 72, 1, 1.66, 1.66 );
setScaleKey( spep_2-3 + 76, 1, 1.66, 1.66 );
setScaleKey( spep_2-3 + 78, 1, 1.67, 1.67 );
setScaleKey( spep_2-3 + 80, 1, 1.67, 1.67 );
setScaleKey( spep_2-3 + 82, 1, 1.68, 1.68 );
setScaleKey( spep_2-3 + 86, 1, 1.68, 1.68 );
setScaleKey( spep_2-3 + 88, 1, 1.69, 1.69 );
setScaleKey( spep_2-3 + 92, 1, 1.69, 1.69 );
setScaleKey( spep_2-3 + 94, 1, 1.7, 1.7 );
setScaleKey( spep_2-3 + 96, 1, 1.7, 1.7 );
setScaleKey( spep_2-3 + 98, 1, 1.71, 1.71 );
setScaleKey( spep_2-3 + 102, 1, 1.71, 1.71 );
setScaleKey( spep_2-3 + 104, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 108, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 110, 1, 1.64, 1.64 );
setScaleKey( spep_2-3 + 112, 1, 1.55, 1.55 );
setScaleKey( spep_2-3 + 113, 1, 1.55, 1.55 );

setScaleKey( spep_2-3 + 114, 1, 0.71, 0.71 );
setScaleKey( spep_2-3 + 116, 1, 0.9, 0.9 );
setScaleKey( spep_2-3 + 118, 1, 1.05, 1.05 );
setScaleKey( spep_2-3 + 120, 1, 1.18, 1.18 );
setScaleKey( spep_2-3 + 122, 1, 1.28, 1.28 );
setScaleKey( spep_2-3 + 124, 1, 1.46, 1.46 );
setScaleKey( spep_2-3 + 126, 1, 1.64, 1.64 );
setScaleKey( spep_2-1 + 128, 1, 1.83, 1.83 );

setRotateKey( spep_2-3 + 57, 1, 0 );
setRotateKey( spep_2-3 + 58, 1, -44 );
setRotateKey( spep_2-3 + 60, 1, -43.8 );
setRotateKey( spep_2-3 + 62, 1, -43.6 );
setRotateKey( spep_2-3 + 64, 1, -43.3 );
setRotateKey( spep_2-3 + 66, 1, -43.1 );
setRotateKey( spep_2-3 + 68, 1, -42.9 );
setRotateKey( spep_2-3 + 70, 1, -42.7 );
setRotateKey( spep_2-3 + 72, 1, -42.4 );
setRotateKey( spep_2-3 + 74, 1, -42.2 );
setRotateKey( spep_2-3 + 76, 1, -42 );
setRotateKey( spep_2-3 + 78, 1, -41.8 );
setRotateKey( spep_2-3 + 80, 1, -41.6 );
setRotateKey( spep_2-3 + 82, 1, -41.3 );
setRotateKey( spep_2-3 + 84, 1, -41.1 );
setRotateKey( spep_2-3 + 86, 1, -40.9 );
setRotateKey( spep_2-3 + 88, 1, -40.7 );
setRotateKey( spep_2-3 + 90, 1, -40.4 );
setRotateKey( spep_2-3 + 92, 1, -40.2 );
setRotateKey( spep_2-3 + 94, 1, -40 );
setRotateKey( spep_2-3 + 96, 1, -39.8 );
setRotateKey( spep_2-3 + 98, 1, -39.6 );
setRotateKey( spep_2-3 + 100, 1, -39.3 );
setRotateKey( spep_2-3 + 102, 1, -39.1 );
setRotateKey( spep_2-3 + 104, 1, -38.9 );
setRotateKey( spep_2-3 + 106, 1, -38.7 );
setRotateKey( spep_2-3 + 108, 1, -38.4 );
setRotateKey( spep_2-3 + 110, 1, -38.2 );
setRotateKey( spep_2-3 + 112, 1, -38 );
setRotateKey( spep_2-3 + 113, 1, -38 );

setRotateKey( spep_2-3 + 114, 1, -52 );
setRotateKey( spep_2-3 + 116, 1, -50.9 );
setRotateKey( spep_2-3 + 118, 1, -49.7 );
setRotateKey( spep_2-3 + 120, 1, -48.6 );
setRotateKey( spep_2-3 + 122, 1, -47.4 );
setRotateKey( spep_2-3 + 124, 1, -46.3 );
setRotateKey( spep_2-3 + 126, 1, -45.1 );
setRotateKey( spep_2-1 + 128, 1, -44 );

--SE
se_1200 = playSe( spep_2 + 32, 1200 );--敵拘束する
setSeVolume( spep_2 + 32, 1200, 0 );
setSeVolume( spep_2 + 51, 1200, 0 );
setSeVolume( spep_2 + 52, 1200, 12.71 );
setSeVolume( spep_2 + 53, 1200, 25.43 );
setSeVolume( spep_2 + 54, 1200, 38.14 );
setSeVolume( spep_2 + 55, 1200, 50.86 );
setSeVolume( spep_2 + 56, 1200, 63.57 );
setSeVolume( spep_2 + 57, 1200, 76.29 );
setSeVolume( spep_2 + 58, 1200, 89 );
setSeVolume( spep_2 + 59, 1200, 101.71 );
setSeVolume( spep_2 + 60, 1200, 114.43 );
setSeVolume( spep_2 + 61, 1200, 127.14 );
setSeVolume( spep_2 + 62, 1200, 139.86 );
setSeVolume( spep_2 + 63, 1200, 152.57 );
setSeVolume( spep_2 + 64, 1200, 165.29 );
setSeVolume( spep_2 + 65, 1200, 178 );
playSe( spep_2 + 46, 43 );--瞬間移動
se_1147 = playSe( spep_2 + 54, 1147 );--敵拘束する
setSeVolume( spep_2 + 54, 1147, 48 );
playSe( spep_2 + 112, 1003 );--敵ふっとばす
setSeVolume( spep_2 + 112, 1003, 83 );
playSe( spep_2 + 114, 1027 );--敵ふっとばす


stopSe( spep_2 + 110, se_1200, 0 );
stopSe( spep_2 + 120, se_1147, 0 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 156;
------------------------------------------------------
-- 追い打ち
------------------------------------------------------
-- ** エフェクト等 ** --
pursuit_f = entryEffect( spep_3 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, pursuit_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 76, pursuit_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, pursuit_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 76, pursuit_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, pursuit_f, 0 );
setEffRotateKey( spep_3 + 76, pursuit_f, 0 );
setEffAlphaKey( spep_3 + 0, pursuit_f, 255 );
setEffAlphaKey( spep_3 + 76, pursuit_f, 255 );

-- ** エフェクト等 ** --
pursuit_b = entryEffect( spep_3 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, pursuit_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 76, pursuit_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, pursuit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, pursuit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, pursuit_b, 0 );
setEffRotateKey( spep_3 + 76, pursuit_b, 0 );
setEffAlphaKey( spep_3 + 0, pursuit_b, 255 );
setEffAlphaKey( spep_3 + 76, pursuit_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 76, 1, 0 );

changeAnime( spep_3 + 0, 1, 106 );
changeAnime( spep_3-3 + 32, 1, 104 );

setMoveKey( spep_3 + 0, 1, -779.7, 1.3 , 0 );
--setMoveKey( spep_3-3 + 2, 1, -723.2, 1.6 , 0 );
setMoveKey( spep_3-3 + 4, 1, -666.7, 1.9 , 0 );
setMoveKey( spep_3-3 + 6, 1, -610.2, 2.3 , 0 );
setMoveKey( spep_3-3 + 8, 1, -553.8, 2.6 , 0 );
setMoveKey( spep_3-3 + 10, 1, -497.3, 2.9 , 0 );
setMoveKey( spep_3-3 + 12, 1, -440.8, 3.2 , 0 );
setMoveKey( spep_3-3 + 14, 1, -384.3, 3.5 , 0 );
setMoveKey( spep_3-3 + 16, 1, -327.9, 3.8 , 0 );
setMoveKey( spep_3-3 + 18, 1, -271.4, 4.2 , 0 );
setMoveKey( spep_3-3 + 20, 1, -214.9, 4.5 , 0 );
setMoveKey( spep_3-3 + 22, 1, -158.4, 4.8 , 0 );
setMoveKey( spep_3-3 + 24, 1, -102, 5.1 , 0 );
setMoveKey( spep_3-3 + 26, 1, -45.5, 5.4 , 0 );
setMoveKey( spep_3-3 + 28, 1, 11, 5.7 , 0 );
setMoveKey( spep_3-3 + 31, 1, 67.4, 6 , 0 );
setMoveKey( spep_3-3 + 32, 1, 84.7, 5.8 , 0 );
setMoveKey( spep_3-3 + 34, 1, 98.3, 5.8 , 0 );
setMoveKey( spep_3-3 + 36, 1, 106.4, 5.8 , 0 );
setMoveKey( spep_3-3 + 38, 1, 111.1, 5.8 , 0 );
setMoveKey( spep_3-3 + 40, 1, 113.6, 5.8 , 0 );
setMoveKey( spep_3-3 + 42, 1, 114.9, 5.8 , 0 );
setMoveKey( spep_3 + 76, 1, 114.9, 5.8 , 0 );

setScaleKey( spep_3 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 76, 1, 1.5, 1.5 );

setRotateKey( spep_3 + 0, 1, 30 );
--setRotateKey( spep_3-3 + 2, 1, 29.3 );
setRotateKey( spep_3-3 + 4, 1, 28.7 );
setRotateKey( spep_3-3 + 6, 1, 28 );
setRotateKey( spep_3-3 + 8, 1, 27.3 );
setRotateKey( spep_3-3 + 10, 1, 26.7 );
setRotateKey( spep_3-3 + 12, 1, 26 );
setRotateKey( spep_3-3 + 14, 1, 25.3 );
setRotateKey( spep_3-3 + 16, 1, 24.7 );
setRotateKey( spep_3-3 + 18, 1, 24 );
setRotateKey( spep_3-3 + 20, 1, 23.3 );
setRotateKey( spep_3-3 + 22, 1, 22.7 );
setRotateKey( spep_3-3 + 24, 1, 22 );
setRotateKey( spep_3-3 + 26, 1, 21.3 );
setRotateKey( spep_3-3 + 28, 1, 20.7 );
setRotateKey( spep_3-3 + 31, 1, 20 );
setRotateKey( spep_3-3 + 32, 1, 0 );
setRotateKey( spep_3 + 76, 1, 0 );

--SE
se_1183 = playSe( spep_3 + 4, 1183 );--敵飛んでいく
playSe( spep_3 + 40, 43 );--瞬間移動

stopSe( spep_3 + 44, se_1183, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 76;
------------------------------------------------------
-- 気溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame2 = entryEffect( spep_4 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, tame2, 0, 0, 0 );
setEffMoveKey( spep_4 + 116, tame2, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, tame2, -1.0, 1.0 );
setEffScaleKey( spep_4 + 116, tame2, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame2, 0 );
setEffRotateKey( spep_4 + 116, tame2, 0 );
setEffAlphaKey( spep_4 + 0, tame2, 255 );
setEffAlphaKey( spep_4 + 114, tame2, 255 );
setEffAlphaKey( spep_4 + 115, tame2, 255 );
setEffAlphaKey( spep_4 + 116, tame2, 0 );

--SE
playSe( spep_4 + 12, 1004 );--腕を前に
setSeVolume( spep_4 + 12, 1004, 73 );
se_1012 = playSe( spep_4 + 24, 1012 );--腕を前に
playSe( spep_4 + 26, 1006 );--腕を前に
setSeVolume( spep_4 + 26, 1006, 82 );
se_1191 = playSe( spep_4 + 52, 1191 );--気弾溜め
setSeVolume( spep_4 + 52, 1191, 141 );
se_1204 = playSe( spep_4 + 52, 1204 );--気弾溜め
se_1262 = playSe( spep_4 + 52, 1262 );--気弾溜め
se_1252 = playSe( spep_4 + 52, 1252 );--気弾溜め
setSeVolume( spep_4 + 52, 1252, 68 );

stopSe( spep_4 + 34, se_1012, 0 );
stopSe( spep_4 + 88, se_1191, 27 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 116;
------------------------------------------------------
-- 気溜め
------------------------------------------------------
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_5 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 80, beam_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, beam_f, -1.0, 1.0 );

setEffScaleKey( spep_5 + 80, beam_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam_f, 0 );
setEffRotateKey( spep_5 + 80, beam_f, 0 );
setEffAlphaKey( spep_5 + 0, beam_f, 255 );
setEffAlphaKey( spep_5 + 80, beam_f, 255 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_5 + 0, SP_09x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 80, beam_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 80, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam_b, 0 );
setEffRotateKey( spep_5 + 80, beam_b, 0 );
setEffAlphaKey( spep_5 + 0, beam_b, 255 );
setEffAlphaKey( spep_5 + 80, beam_b, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5-1 + 78, 1, 0 );

changeAnime( spep_5 + 0, 1, 104 );
changeAnime( spep_5-3 + 16, 1, 108 );

setMoveKey( spep_5 + 0, 1, 143.7, 79 , 0 );
--setMoveKey( spep_5-3 + 2, 1, 143.7, 79.1 , 0 );
setMoveKey( spep_5-3 + 15, 1, 143.7, 79.1 , 0 );
setMoveKey( spep_5-3 + 16, 1, 205.3, 173.5 , 0 );
setMoveKey( spep_5-3 + 18, 1, 185.5, 161.3 , 0 );
setMoveKey( spep_5-3 + 20, 1, 173.2, 155.3 , 0 );
setMoveKey( spep_5-3 + 22, 1, 136.8, 133.3 , 0 );
setMoveKey( spep_5-3 + 24, 1, 134.4, 129.9 , 0 );
setMoveKey( spep_5-3 + 26, 1, 117.2, 123.3 , 0 );
setMoveKey( spep_5-3 + 28, 1, 132.1, 129.7 , 0 );
setMoveKey( spep_5-3 + 30, 1, 122.9, 123.8 , 0 );
setMoveKey( spep_5-3 + 32, 1, 129.6, 128.4 , 0 );
setMoveKey( spep_5-3 + 34, 1, 123.1, 124.8 , 0 );
setMoveKey( spep_5-3 + 36, 1, 128.6, 127.5 , 0 );
setMoveKey( spep_5-3 + 38, 1, 127.3, 126.8 , 0 );
setMoveKey( spep_5-3 + 40, 1, 126.1, 126.1 , 0 );
setMoveKey( spep_5-3 + 42, 1, 124.8, 125.5 , 0 );
setMoveKey( spep_5-3 + 44, 1, 126.1, 126.2 , 0 );
setMoveKey( spep_5-3 + 46, 1, 127.3, 127 , 0 );
setMoveKey( spep_5-3 + 48, 1, 126.1, 126.2 , 0 );
setMoveKey( spep_5-3 + 50, 1, 124.9, 125.3 , 0 );
setMoveKey( spep_5-3 + 52, 1, 125.5, 125.7 , 0 );
setMoveKey( spep_5-3 + 54, 1, 126, 126.2 , 0 );
setMoveKey( spep_5-3 + 56, 1, 126.6, 126.6 , 0 );
setMoveKey( spep_5-3 + 58, 1, 127.2, 127 , 0 );
setMoveKey( spep_5-3 + 60, 1, 125.7, 126.5 , 0 );
setMoveKey( spep_5-3 + 62, 1, 124.1, 126 , 0 );
setMoveKey( spep_5-3 + 64, 1, 124.9, 126.3 , 0 );
setMoveKey( spep_5-3 + 66, 1, 125.7, 126.7 , 0 );
setMoveKey( spep_5-3 + 68, 1, 126.4, 127 , 0 );
setMoveKey( spep_5-3 + 70, 1, 125.8, 126.6 , 0 );
setMoveKey( spep_5-3 + 72, 1, 125.1, 126.2 , 0 );
setMoveKey( spep_5-3 + 74, 1, 124.4, 125.7 , 0 );
setMoveKey( spep_5-3 + 76, 1, 125.3, 126 , 0 );
setMoveKey( spep_5-1 + 78, 1, 126.2, 126.2 , 0 );

setScaleKey( spep_5 + 0, 1, 1.89, 1.89 );
setScaleKey( spep_5-3 + 15, 1, 1.89, 1.89 );
setScaleKey( spep_5-3 + 16, 1, 1.81, 1.81 );
setScaleKey( spep_5-3 + 18, 1, 1.74, 1.74 );
setScaleKey( spep_5-3 + 20, 1, 1.66, 1.66 );
setScaleKey( spep_5-3 + 22, 1, 1.59, 1.59 );
setScaleKey( spep_5-3 + 24, 1, 1.51, 1.51 );
setScaleKey( spep_5-1 + 78, 1, 1.51, 1.51 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5-1 + 78, 1, 0 );


--SE
playSe( spep_5 + 10, 1145 );--気弾発射
setSeVolume( spep_5 + 10, 1145, 91 );
playSe( spep_5 + 10, 1027 );--気弾発射
setSeVolume( spep_5 + 10, 1027, 76 );
playSe( spep_5 + 10, 1022 );--気弾発射
se_1241 = playSe( spep_5 + 78, 1241 );--爆発予兆

stopSe( spep_5 + 22, se_1204, 0 );
stopSe( spep_5 + 22, se_1262, 0 );
stopSe( spep_5 + 22, se_1252, 0 );

-- ** くろ背景 ** --
--entryFadeBg( spep_5 , 0, 82, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_5 + 72, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 80;
------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_6 + 0, SP_10x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, explosion, 0, 0, 0 );
setEffMoveKey( spep_6 + 180, explosion, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, explosion, 1.1, 1.1 );
setEffScaleKey( spep_6 + 180, explosion, 1.1, 1.1 );
setEffRotateKey( spep_6 + 0, explosion, 0 );
setEffRotateKey( spep_6 + 180, explosion, 0 );
setEffAlphaKey( spep_6 + 0, explosion, 255 );
setEffAlphaKey( spep_6 + 180, explosion, 255 );


--SE
playSe( spep_6 + 22, 1069 );--爆発
setSeVolume( spep_6 + 22, 1069, 88 );
playSe( spep_6 + 38, 1159 );--爆発
setSeVolume( spep_6 + 38, 1159, 71 );
playSe( spep_6 + 38, 1023 );--爆発

stopSe( spep_6 + 46, se_1241, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 180, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_6 +20 );
endPhase( spep_6 + 170 );
end